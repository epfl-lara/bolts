; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108090 () Bool)

(assert start!108090)

(declare-fun b!1211438 () Bool)

(declare-fun b_free!28801 () Bool)

(declare-fun b_next!29505 () Bool)

(assert (=> b!1211438 (= b_free!28801 (not b_next!29505))))

(declare-fun tp!343064 () Bool)

(declare-fun b_and!82001 () Bool)

(assert (=> b!1211438 (= tp!343064 b_and!82001)))

(declare-fun b_free!28803 () Bool)

(declare-fun b_next!29507 () Bool)

(assert (=> b!1211438 (= b_free!28803 (not b_next!29507))))

(declare-fun tp!343065 () Bool)

(declare-fun b_and!82003 () Bool)

(assert (=> b!1211438 (= tp!343065 b_and!82003)))

(declare-fun b!1211440 () Bool)

(declare-fun b_free!28805 () Bool)

(declare-fun b_next!29509 () Bool)

(assert (=> b!1211440 (= b_free!28805 (not b_next!29509))))

(declare-fun tp!343071 () Bool)

(declare-fun b_and!82005 () Bool)

(assert (=> b!1211440 (= tp!343071 b_and!82005)))

(declare-fun b_free!28807 () Bool)

(declare-fun b_next!29511 () Bool)

(assert (=> b!1211440 (= b_free!28807 (not b_next!29511))))

(declare-fun tp!343063 () Bool)

(declare-fun b_and!82007 () Bool)

(assert (=> b!1211440 (= tp!343063 b_and!82007)))

(declare-fun b!1211431 () Bool)

(declare-fun res!544882 () Bool)

(declare-fun e!777217 () Bool)

(assert (=> b!1211431 (=> (not res!544882) (not e!777217))))

(declare-datatypes ((List!12308 0))(
  ( (Nil!12250) (Cons!12250 (h!17651 (_ BitVec 16)) (t!112692 List!12308)) )
))
(declare-datatypes ((TokenValue!2167 0))(
  ( (FloatLiteralValue!4334 (text!15614 List!12308)) (TokenValueExt!2166 (__x!8049 Int)) (Broken!10835 (value!68392 List!12308)) (Object!2224) (End!2167) (Def!2167) (Underscore!2167) (Match!2167) (Else!2167) (Error!2167) (Case!2167) (If!2167) (Extends!2167) (Abstract!2167) (Class!2167) (Val!2167) (DelimiterValue!4334 (del!2227 List!12308)) (KeywordValue!2173 (value!68393 List!12308)) (CommentValue!4334 (value!68394 List!12308)) (WhitespaceValue!4334 (value!68395 List!12308)) (IndentationValue!2167 (value!68396 List!12308)) (String!14966) (Int32!2167) (Broken!10836 (value!68397 List!12308)) (Boolean!2168) (Unit!18607) (OperatorValue!2170 (op!2227 List!12308)) (IdentifierValue!4334 (value!68398 List!12308)) (IdentifierValue!4335 (value!68399 List!12308)) (WhitespaceValue!4335 (value!68400 List!12308)) (True!4334) (False!4334) (Broken!10837 (value!68401 List!12308)) (Broken!10838 (value!68402 List!12308)) (True!4335) (RightBrace!2167) (RightBracket!2167) (Colon!2167) (Null!2167) (Comma!2167) (LeftBracket!2167) (False!4335) (LeftBrace!2167) (ImaginaryLiteralValue!2167 (text!15615 List!12308)) (StringLiteralValue!6501 (value!68403 List!12308)) (EOFValue!2167 (value!68404 List!12308)) (IdentValue!2167 (value!68405 List!12308)) (DelimiterValue!4335 (value!68406 List!12308)) (DedentValue!2167 (value!68407 List!12308)) (NewLineValue!2167 (value!68408 List!12308)) (IntegerValue!6501 (value!68409 (_ BitVec 32)) (text!15616 List!12308)) (IntegerValue!6502 (value!68410 Int) (text!15617 List!12308)) (Times!2167) (Or!2167) (Equal!2167) (Minus!2167) (Broken!10839 (value!68411 List!12308)) (And!2167) (Div!2167) (LessEqual!2167) (Mod!2167) (Concat!5536) (Not!2167) (Plus!2167) (SpaceValue!2167 (value!68412 List!12308)) (IntegerValue!6503 (value!68413 Int) (text!15618 List!12308)) (StringLiteralValue!6502 (text!15619 List!12308)) (FloatLiteralValue!4335 (text!15620 List!12308)) (BytesLiteralValue!2167 (value!68414 List!12308)) (CommentValue!4335 (value!68415 List!12308)) (StringLiteralValue!6503 (value!68416 List!12308)) (ErrorTokenValue!2167 (msg!2228 List!12308)) )
))
(declare-datatypes ((C!7056 0))(
  ( (C!7057 (val!4058 Int)) )
))
(declare-datatypes ((List!12309 0))(
  ( (Nil!12251) (Cons!12251 (h!17652 C!7056) (t!112693 List!12309)) )
))
(declare-datatypes ((IArray!8051 0))(
  ( (IArray!8052 (innerList!4083 List!12309)) )
))
(declare-datatypes ((Conc!4023 0))(
  ( (Node!4023 (left!10644 Conc!4023) (right!10974 Conc!4023) (csize!8276 Int) (cheight!4234 Int)) (Leaf!6221 (xs!6734 IArray!8051) (csize!8277 Int)) (Empty!4023) )
))
(declare-datatypes ((BalanceConc!7978 0))(
  ( (BalanceConc!7979 (c!202899 Conc!4023)) )
))
(declare-datatypes ((Regex!3369 0))(
  ( (ElementMatch!3369 (c!202900 C!7056)) (Concat!5537 (regOne!7250 Regex!3369) (regTwo!7250 Regex!3369)) (EmptyExpr!3369) (Star!3369 (reg!3698 Regex!3369)) (EmptyLang!3369) (Union!3369 (regOne!7251 Regex!3369) (regTwo!7251 Regex!3369)) )
))
(declare-datatypes ((String!14967 0))(
  ( (String!14968 (value!68417 String)) )
))
(declare-datatypes ((TokenValueInjection!4030 0))(
  ( (TokenValueInjection!4031 (toValue!3216 Int) (toChars!3075 Int)) )
))
(declare-datatypes ((Rule!3998 0))(
  ( (Rule!3999 (regex!2099 Regex!3369) (tag!2361 String!14967) (isSeparator!2099 Bool) (transformation!2099 TokenValueInjection!4030)) )
))
(declare-datatypes ((Token!3860 0))(
  ( (Token!3861 (value!68418 TokenValue!2167) (rule!3520 Rule!3998) (size!9755 Int) (originalCharacters!2653 List!12309)) )
))
(declare-datatypes ((List!12310 0))(
  ( (Nil!12252) (Cons!12252 (h!17653 Token!3860) (t!112694 List!12310)) )
))
(declare-fun tokens!556 () List!12310)

(get-info :version)

(assert (=> b!1211431 (= res!544882 ((_ is Nil!12252) tokens!556))))

(declare-fun tp!343067 () Bool)

(declare-fun e!777221 () Bool)

(declare-fun e!777219 () Bool)

(declare-fun b!1211432 () Bool)

(declare-fun inv!16438 (Token!3860) Bool)

(assert (=> b!1211432 (= e!777221 (and (inv!16438 (h!17653 tokens!556)) e!777219 tp!343067))))

(declare-fun e!777223 () Bool)

(declare-fun tp!343066 () Bool)

(declare-fun b!1211433 () Bool)

(declare-fun e!777224 () Bool)

(declare-fun inv!16435 (String!14967) Bool)

(declare-fun inv!16439 (TokenValueInjection!4030) Bool)

(assert (=> b!1211433 (= e!777224 (and tp!343066 (inv!16435 (tag!2361 (rule!3520 (h!17653 tokens!556)))) (inv!16439 (transformation!2099 (rule!3520 (h!17653 tokens!556)))) e!777223))))

(declare-fun res!544885 () Bool)

(assert (=> start!108090 (=> (not res!544885) (not e!777217))))

(declare-datatypes ((LexerInterface!1794 0))(
  ( (LexerInterfaceExt!1791 (__x!8050 Int)) (Lexer!1792) )
))
(declare-fun thiss!20528 () LexerInterface!1794)

(assert (=> start!108090 (= res!544885 ((_ is Lexer!1792) thiss!20528))))

(assert (=> start!108090 e!777217))

(assert (=> start!108090 true))

(declare-fun e!777226 () Bool)

(assert (=> start!108090 e!777226))

(declare-fun e!777227 () Bool)

(assert (=> start!108090 e!777227))

(assert (=> start!108090 e!777221))

(declare-fun b!1211434 () Bool)

(declare-fun tp_is_empty!6259 () Bool)

(declare-fun tp!343069 () Bool)

(assert (=> b!1211434 (= e!777227 (and tp_is_empty!6259 tp!343069))))

(declare-fun b!1211435 () Bool)

(declare-fun res!544884 () Bool)

(assert (=> b!1211435 (=> (not res!544884) (not e!777217))))

(declare-datatypes ((List!12311 0))(
  ( (Nil!12253) (Cons!12253 (h!17654 Rule!3998) (t!112695 List!12311)) )
))
(declare-fun rules!2728 () List!12311)

(declare-fun input!2346 () List!12309)

(declare-datatypes ((tuple2!12134 0))(
  ( (tuple2!12135 (_1!6914 List!12310) (_2!6914 List!12309)) )
))
(declare-fun lexList!424 (LexerInterface!1794 List!12311 List!12309) tuple2!12134)

(assert (=> b!1211435 (= res!544884 (= (_1!6914 (lexList!424 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun b!1211436 () Bool)

(assert (=> b!1211436 (= e!777217 false)))

(declare-datatypes ((IArray!8053 0))(
  ( (IArray!8054 (innerList!4084 List!12310)) )
))
(declare-datatypes ((Conc!4024 0))(
  ( (Node!4024 (left!10645 Conc!4024) (right!10975 Conc!4024) (csize!8278 Int) (cheight!4235 Int)) (Leaf!6222 (xs!6735 IArray!8053) (csize!8279 Int)) (Empty!4024) )
))
(declare-datatypes ((BalanceConc!7980 0))(
  ( (BalanceConc!7981 (c!202901 Conc!4024)) )
))
(declare-fun lt!414603 () BalanceConc!7980)

(declare-fun seqFromList!1538 (List!12310) BalanceConc!7980)

(assert (=> b!1211436 (= lt!414603 (seqFromList!1538 tokens!556))))

(declare-fun b!1211437 () Bool)

(declare-fun tp!343070 () Bool)

(declare-fun inv!21 (TokenValue!2167) Bool)

(assert (=> b!1211437 (= e!777219 (and (inv!21 (value!68418 (h!17653 tokens!556))) e!777224 tp!343070))))

(declare-fun e!777228 () Bool)

(assert (=> b!1211438 (= e!777228 (and tp!343064 tp!343065))))

(declare-fun e!777225 () Bool)

(declare-fun tp!343062 () Bool)

(declare-fun b!1211439 () Bool)

(assert (=> b!1211439 (= e!777225 (and tp!343062 (inv!16435 (tag!2361 (h!17654 rules!2728))) (inv!16439 (transformation!2099 (h!17654 rules!2728))) e!777228))))

(assert (=> b!1211440 (= e!777223 (and tp!343071 tp!343063))))

(declare-fun b!1211441 () Bool)

(declare-fun res!544881 () Bool)

(assert (=> b!1211441 (=> (not res!544881) (not e!777217))))

(declare-fun rulesInvariant!1668 (LexerInterface!1794 List!12311) Bool)

(assert (=> b!1211441 (= res!544881 (rulesInvariant!1668 thiss!20528 rules!2728))))

(declare-fun b!1211442 () Bool)

(declare-fun tp!343068 () Bool)

(assert (=> b!1211442 (= e!777226 (and e!777225 tp!343068))))

(declare-fun b!1211443 () Bool)

(declare-fun res!544883 () Bool)

(assert (=> b!1211443 (=> (not res!544883) (not e!777217))))

(declare-fun isEmpty!7307 (List!12311) Bool)

(assert (=> b!1211443 (= res!544883 (not (isEmpty!7307 rules!2728)))))

(assert (= (and start!108090 res!544885) b!1211443))

(assert (= (and b!1211443 res!544883) b!1211441))

(assert (= (and b!1211441 res!544881) b!1211435))

(assert (= (and b!1211435 res!544884) b!1211431))

(assert (= (and b!1211431 res!544882) b!1211436))

(assert (= b!1211439 b!1211438))

(assert (= b!1211442 b!1211439))

(assert (= (and start!108090 ((_ is Cons!12253) rules!2728)) b!1211442))

(assert (= (and start!108090 ((_ is Cons!12251) input!2346)) b!1211434))

(assert (= b!1211433 b!1211440))

(assert (= b!1211437 b!1211433))

(assert (= b!1211432 b!1211437))

(assert (= (and start!108090 ((_ is Cons!12252) tokens!556)) b!1211432))

(declare-fun m!1387063 () Bool)

(assert (=> b!1211443 m!1387063))

(declare-fun m!1387065 () Bool)

(assert (=> b!1211432 m!1387065))

(declare-fun m!1387067 () Bool)

(assert (=> b!1211436 m!1387067))

(declare-fun m!1387069 () Bool)

(assert (=> b!1211439 m!1387069))

(declare-fun m!1387071 () Bool)

(assert (=> b!1211439 m!1387071))

(declare-fun m!1387073 () Bool)

(assert (=> b!1211437 m!1387073))

(declare-fun m!1387075 () Bool)

(assert (=> b!1211435 m!1387075))

(declare-fun m!1387077 () Bool)

(assert (=> b!1211433 m!1387077))

(declare-fun m!1387079 () Bool)

(assert (=> b!1211433 m!1387079))

(declare-fun m!1387081 () Bool)

(assert (=> b!1211441 m!1387081))

(check-sat (not b!1211432) b_and!82005 (not b!1211442) (not b!1211433) (not b!1211435) b_and!82001 (not b_next!29511) (not b!1211443) (not b!1211436) (not b_next!29509) b_and!82007 tp_is_empty!6259 b_and!82003 (not b!1211441) (not b!1211434) (not b!1211437) (not b_next!29507) (not b!1211439) (not b_next!29505))
(check-sat b_and!82005 b_and!82001 b_and!82007 b_and!82003 (not b_next!29511) (not b_next!29507) (not b_next!29505) (not b_next!29509))
