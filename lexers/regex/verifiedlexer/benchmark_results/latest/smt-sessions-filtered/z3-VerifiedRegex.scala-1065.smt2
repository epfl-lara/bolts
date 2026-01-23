; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54068 () Bool)

(assert start!54068)

(declare-fun b!582996 () Bool)

(declare-fun b_free!16237 () Bool)

(declare-fun b_next!16253 () Bool)

(assert (=> b!582996 (= b_free!16237 (not b_next!16253))))

(declare-fun tp!181929 () Bool)

(declare-fun b_and!57419 () Bool)

(assert (=> b!582996 (= tp!181929 b_and!57419)))

(declare-fun b_free!16239 () Bool)

(declare-fun b_next!16255 () Bool)

(assert (=> b!582996 (= b_free!16239 (not b_next!16255))))

(declare-fun tp!181931 () Bool)

(declare-fun b_and!57421 () Bool)

(assert (=> b!582996 (= tp!181931 b_and!57421)))

(declare-fun b!582993 () Bool)

(declare-fun b_free!16241 () Bool)

(declare-fun b_next!16257 () Bool)

(assert (=> b!582993 (= b_free!16241 (not b_next!16257))))

(declare-fun tp!181935 () Bool)

(declare-fun b_and!57423 () Bool)

(assert (=> b!582993 (= tp!181935 b_and!57423)))

(declare-fun b_free!16243 () Bool)

(declare-fun b_next!16259 () Bool)

(assert (=> b!582993 (= b_free!16243 (not b_next!16259))))

(declare-fun tp!181930 () Bool)

(declare-fun b_and!57425 () Bool)

(assert (=> b!582993 (= tp!181930 b_and!57425)))

(declare-datatypes ((String!7448 0))(
  ( (String!7449 (value!36675 String)) )
))
(declare-datatypes ((C!3824 0))(
  ( (C!3825 (val!2138 Int)) )
))
(declare-datatypes ((Regex!1451 0))(
  ( (ElementMatch!1451 (c!109071 C!3824)) (Concat!2592 (regOne!3414 Regex!1451) (regTwo!3414 Regex!1451)) (EmptyExpr!1451) (Star!1451 (reg!1780 Regex!1451)) (EmptyLang!1451) (Union!1451 (regOne!3415 Regex!1451) (regTwo!3415 Regex!1451)) )
))
(declare-datatypes ((List!5740 0))(
  ( (Nil!5730) (Cons!5730 (h!11131 (_ BitVec 16)) (t!78253 List!5740)) )
))
(declare-datatypes ((TokenValue!1141 0))(
  ( (FloatLiteralValue!2282 (text!8432 List!5740)) (TokenValueExt!1140 (__x!4180 Int)) (Broken!5705 (value!36676 List!5740)) (Object!1150) (End!1141) (Def!1141) (Underscore!1141) (Match!1141) (Else!1141) (Error!1141) (Case!1141) (If!1141) (Extends!1141) (Abstract!1141) (Class!1141) (Val!1141) (DelimiterValue!2282 (del!1201 List!5740)) (KeywordValue!1147 (value!36677 List!5740)) (CommentValue!2282 (value!36678 List!5740)) (WhitespaceValue!2282 (value!36679 List!5740)) (IndentationValue!1141 (value!36680 List!5740)) (String!7450) (Int32!1141) (Broken!5706 (value!36681 List!5740)) (Boolean!1142) (Unit!10420) (OperatorValue!1144 (op!1201 List!5740)) (IdentifierValue!2282 (value!36682 List!5740)) (IdentifierValue!2283 (value!36683 List!5740)) (WhitespaceValue!2283 (value!36684 List!5740)) (True!2282) (False!2282) (Broken!5707 (value!36685 List!5740)) (Broken!5708 (value!36686 List!5740)) (True!2283) (RightBrace!1141) (RightBracket!1141) (Colon!1141) (Null!1141) (Comma!1141) (LeftBracket!1141) (False!2283) (LeftBrace!1141) (ImaginaryLiteralValue!1141 (text!8433 List!5740)) (StringLiteralValue!3423 (value!36687 List!5740)) (EOFValue!1141 (value!36688 List!5740)) (IdentValue!1141 (value!36689 List!5740)) (DelimiterValue!2283 (value!36690 List!5740)) (DedentValue!1141 (value!36691 List!5740)) (NewLineValue!1141 (value!36692 List!5740)) (IntegerValue!3423 (value!36693 (_ BitVec 32)) (text!8434 List!5740)) (IntegerValue!3424 (value!36694 Int) (text!8435 List!5740)) (Times!1141) (Or!1141) (Equal!1141) (Minus!1141) (Broken!5709 (value!36695 List!5740)) (And!1141) (Div!1141) (LessEqual!1141) (Mod!1141) (Concat!2593) (Not!1141) (Plus!1141) (SpaceValue!1141 (value!36696 List!5740)) (IntegerValue!3425 (value!36697 Int) (text!8436 List!5740)) (StringLiteralValue!3424 (text!8437 List!5740)) (FloatLiteralValue!2283 (text!8438 List!5740)) (BytesLiteralValue!1141 (value!36698 List!5740)) (CommentValue!2283 (value!36699 List!5740)) (StringLiteralValue!3425 (value!36700 List!5740)) (ErrorTokenValue!1141 (msg!1202 List!5740)) )
))
(declare-datatypes ((List!5741 0))(
  ( (Nil!5731) (Cons!5731 (h!11132 C!3824) (t!78254 List!5741)) )
))
(declare-datatypes ((IArray!3669 0))(
  ( (IArray!3670 (innerList!1892 List!5741)) )
))
(declare-datatypes ((Conc!1834 0))(
  ( (Node!1834 (left!4673 Conc!1834) (right!5003 Conc!1834) (csize!3898 Int) (cheight!2045 Int)) (Leaf!2900 (xs!4471 IArray!3669) (csize!3899 Int)) (Empty!1834) )
))
(declare-datatypes ((BalanceConc!3676 0))(
  ( (BalanceConc!3677 (c!109072 Conc!1834)) )
))
(declare-datatypes ((TokenValueInjection!2050 0))(
  ( (TokenValueInjection!2051 (toValue!1984 Int) (toChars!1843 Int)) )
))
(declare-datatypes ((Rule!2034 0))(
  ( (Rule!2035 (regex!1117 Regex!1451) (tag!1379 String!7448) (isSeparator!1117 Bool) (transformation!1117 TokenValueInjection!2050)) )
))
(declare-datatypes ((Token!1970 0))(
  ( (Token!1971 (value!36701 TokenValue!1141) (rule!1875 Rule!2034) (size!4557 Int) (originalCharacters!1156 List!5741)) )
))
(declare-fun token!491 () Token!1970)

(declare-fun b!582985 () Bool)

(declare-fun e!352427 () Bool)

(declare-fun e!352425 () Bool)

(declare-fun tp!181932 () Bool)

(declare-fun inv!21 (TokenValue!1141) Bool)

(assert (=> b!582985 (= e!352425 (and (inv!21 (value!36701 token!491)) e!352427 tp!181932))))

(declare-fun b!582986 () Bool)

(declare-fun e!352428 () Bool)

(declare-fun e!352420 () Bool)

(assert (=> b!582986 (= e!352428 e!352420)))

(declare-fun res!251110 () Bool)

(assert (=> b!582986 (=> (not res!251110) (not e!352420))))

(declare-datatypes ((tuple2!6704 0))(
  ( (tuple2!6705 (_1!3616 Token!1970) (_2!3616 List!5741)) )
))
(declare-datatypes ((Option!1468 0))(
  ( (None!1467) (Some!1467 (v!16336 tuple2!6704)) )
))
(declare-fun lt!247457 () Option!1468)

(get-info :version)

(assert (=> b!582986 (= res!251110 ((_ is Some!1467) lt!247457))))

(declare-datatypes ((List!5742 0))(
  ( (Nil!5732) (Cons!5732 (h!11133 Rule!2034) (t!78255 List!5742)) )
))
(declare-fun rules!3103 () List!5742)

(declare-datatypes ((LexerInterface!1003 0))(
  ( (LexerInterfaceExt!1000 (__x!4181 Int)) (Lexer!1001) )
))
(declare-fun thiss!22590 () LexerInterface!1003)

(declare-fun input!2705 () List!5741)

(declare-fun maxPrefix!701 (LexerInterface!1003 List!5742 List!5741) Option!1468)

(assert (=> b!582986 (= lt!247457 (maxPrefix!701 thiss!22590 rules!3103 input!2705))))

(declare-fun b!582987 () Bool)

(declare-fun tp!181934 () Bool)

(declare-fun e!352424 () Bool)

(declare-fun inv!7219 (String!7448) Bool)

(declare-fun inv!7222 (TokenValueInjection!2050) Bool)

(assert (=> b!582987 (= e!352427 (and tp!181934 (inv!7219 (tag!1379 (rule!1875 token!491))) (inv!7222 (transformation!1117 (rule!1875 token!491))) e!352424))))

(declare-fun b!582988 () Bool)

(declare-fun e!352419 () Bool)

(assert (=> b!582988 (= e!352419 e!352428)))

(declare-fun res!251112 () Bool)

(assert (=> b!582988 (=> (not res!251112) (not e!352428))))

(declare-fun suffix!1342 () List!5741)

(declare-fun lt!247459 () tuple2!6704)

(assert (=> b!582988 (= res!251112 (and (= (_1!3616 lt!247459) token!491) (= (_2!3616 lt!247459) suffix!1342)))))

(declare-fun lt!247461 () Option!1468)

(declare-fun get!2190 (Option!1468) tuple2!6704)

(assert (=> b!582988 (= lt!247459 (get!2190 lt!247461))))

(declare-fun b!582989 () Bool)

(declare-fun res!251116 () Bool)

(declare-fun e!352418 () Bool)

(assert (=> b!582989 (=> (not res!251116) (not e!352418))))

(declare-fun isEmpty!4137 (List!5742) Bool)

(assert (=> b!582989 (= res!251116 (not (isEmpty!4137 rules!3103)))))

(declare-fun res!251115 () Bool)

(assert (=> start!54068 (=> (not res!251115) (not e!352418))))

(assert (=> start!54068 (= res!251115 ((_ is Lexer!1001) thiss!22590))))

(assert (=> start!54068 e!352418))

(declare-fun e!352431 () Bool)

(assert (=> start!54068 e!352431))

(declare-fun e!352422 () Bool)

(assert (=> start!54068 e!352422))

(declare-fun inv!7223 (Token!1970) Bool)

(assert (=> start!54068 (and (inv!7223 token!491) e!352425)))

(assert (=> start!54068 true))

(declare-fun e!352430 () Bool)

(assert (=> start!54068 e!352430))

(declare-fun b!582990 () Bool)

(declare-fun tp_is_empty!3257 () Bool)

(declare-fun tp!181927 () Bool)

(assert (=> b!582990 (= e!352430 (and tp_is_empty!3257 tp!181927))))

(declare-fun b!582991 () Bool)

(declare-fun e!352426 () Bool)

(assert (=> b!582991 (= e!352426 e!352419)))

(declare-fun res!251114 () Bool)

(assert (=> b!582991 (=> (not res!251114) (not e!352419))))

(declare-fun isDefined!1279 (Option!1468) Bool)

(assert (=> b!582991 (= res!251114 (isDefined!1279 lt!247461))))

(declare-fun lt!247462 () List!5741)

(assert (=> b!582991 (= lt!247461 (maxPrefix!701 thiss!22590 rules!3103 lt!247462))))

(declare-fun ++!1605 (List!5741 List!5741) List!5741)

(assert (=> b!582991 (= lt!247462 (++!1605 input!2705 suffix!1342))))

(declare-fun b!582992 () Bool)

(declare-fun res!251113 () Bool)

(assert (=> b!582992 (=> (not res!251113) (not e!352418))))

(declare-fun isEmpty!4138 (List!5741) Bool)

(assert (=> b!582992 (= res!251113 (not (isEmpty!4138 input!2705)))))

(assert (=> b!582993 (= e!352424 (and tp!181935 tp!181930))))

(declare-fun b!582994 () Bool)

(declare-fun tp!181933 () Bool)

(assert (=> b!582994 (= e!352431 (and tp_is_empty!3257 tp!181933))))

(declare-fun b!582995 () Bool)

(declare-fun res!251108 () Bool)

(assert (=> b!582995 (=> (not res!251108) (not e!352420))))

(declare-fun lt!247460 () List!5741)

(assert (=> b!582995 (= res!251108 (= (++!1605 lt!247460 suffix!1342) lt!247462))))

(declare-fun e!352423 () Bool)

(assert (=> b!582996 (= e!352423 (and tp!181929 tp!181931))))

(declare-fun b!582997 () Bool)

(declare-fun e!352421 () Bool)

(declare-fun tp!181936 () Bool)

(assert (=> b!582997 (= e!352422 (and e!352421 tp!181936))))

(declare-fun b!582998 () Bool)

(declare-fun res!251111 () Bool)

(assert (=> b!582998 (=> (not res!251111) (not e!352418))))

(declare-fun rulesInvariant!966 (LexerInterface!1003 List!5742) Bool)

(assert (=> b!582998 (= res!251111 (rulesInvariant!966 thiss!22590 rules!3103))))

(declare-fun b!582999 () Bool)

(assert (=> b!582999 (= e!352418 e!352426)))

(declare-fun res!251109 () Bool)

(assert (=> b!582999 (=> (not res!251109) (not e!352426))))

(assert (=> b!582999 (= res!251109 (= lt!247460 input!2705))))

(declare-fun list!2384 (BalanceConc!3676) List!5741)

(declare-fun charsOf!746 (Token!1970) BalanceConc!3676)

(assert (=> b!582999 (= lt!247460 (list!2384 (charsOf!746 token!491)))))

(declare-fun b!583000 () Bool)

(assert (=> b!583000 (= e!352420 (not (= lt!247457 (Some!1467 (v!16336 lt!247457)))))))

(declare-datatypes ((Unit!10421 0))(
  ( (Unit!10422) )
))
(declare-fun lt!247458 () Unit!10421)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!190 (List!5741 List!5741 List!5741 List!5741) Unit!10421)

(assert (=> b!583000 (= lt!247458 (lemmaConcatSameAndSameSizesThenSameLists!190 lt!247460 suffix!1342 input!2705 suffix!1342))))

(declare-fun tp!181928 () Bool)

(declare-fun b!583001 () Bool)

(assert (=> b!583001 (= e!352421 (and tp!181928 (inv!7219 (tag!1379 (h!11133 rules!3103))) (inv!7222 (transformation!1117 (h!11133 rules!3103))) e!352423))))

(assert (= (and start!54068 res!251115) b!582989))

(assert (= (and b!582989 res!251116) b!582998))

(assert (= (and b!582998 res!251111) b!582992))

(assert (= (and b!582992 res!251113) b!582999))

(assert (= (and b!582999 res!251109) b!582991))

(assert (= (and b!582991 res!251114) b!582988))

(assert (= (and b!582988 res!251112) b!582986))

(assert (= (and b!582986 res!251110) b!582995))

(assert (= (and b!582995 res!251108) b!583000))

(assert (= (and start!54068 ((_ is Cons!5731) suffix!1342)) b!582994))

(assert (= b!583001 b!582996))

(assert (= b!582997 b!583001))

(assert (= (and start!54068 ((_ is Cons!5732) rules!3103)) b!582997))

(assert (= b!582987 b!582993))

(assert (= b!582985 b!582987))

(assert (= start!54068 b!582985))

(assert (= (and start!54068 ((_ is Cons!5731) input!2705)) b!582990))

(declare-fun m!842441 () Bool)

(assert (=> b!582989 m!842441))

(declare-fun m!842443 () Bool)

(assert (=> start!54068 m!842443))

(declare-fun m!842445 () Bool)

(assert (=> b!582986 m!842445))

(declare-fun m!842447 () Bool)

(assert (=> b!582995 m!842447))

(declare-fun m!842449 () Bool)

(assert (=> b!582999 m!842449))

(assert (=> b!582999 m!842449))

(declare-fun m!842451 () Bool)

(assert (=> b!582999 m!842451))

(declare-fun m!842453 () Bool)

(assert (=> b!582985 m!842453))

(declare-fun m!842455 () Bool)

(assert (=> b!583001 m!842455))

(declare-fun m!842457 () Bool)

(assert (=> b!583001 m!842457))

(declare-fun m!842459 () Bool)

(assert (=> b!583000 m!842459))

(declare-fun m!842461 () Bool)

(assert (=> b!582987 m!842461))

(declare-fun m!842463 () Bool)

(assert (=> b!582987 m!842463))

(declare-fun m!842465 () Bool)

(assert (=> b!582998 m!842465))

(declare-fun m!842467 () Bool)

(assert (=> b!582991 m!842467))

(declare-fun m!842469 () Bool)

(assert (=> b!582991 m!842469))

(declare-fun m!842471 () Bool)

(assert (=> b!582991 m!842471))

(declare-fun m!842473 () Bool)

(assert (=> b!582992 m!842473))

(declare-fun m!842475 () Bool)

(assert (=> b!582988 m!842475))

(check-sat (not start!54068) (not b!582995) b_and!57419 (not b_next!16253) (not b!582986) (not b!582992) (not b!582988) (not b_next!16259) (not b_next!16257) b_and!57423 (not b!582985) b_and!57421 (not b!582998) tp_is_empty!3257 (not b!582994) (not b_next!16255) (not b!583001) (not b!582987) (not b!583000) (not b!582999) (not b!582997) (not b!582991) (not b!582990) b_and!57425 (not b!582989))
(check-sat b_and!57423 b_and!57421 (not b_next!16255) b_and!57419 (not b_next!16253) (not b_next!16259) b_and!57425 (not b_next!16257))
