; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!348082 () Bool)

(assert start!348082)

(declare-fun b!3696460 () Bool)

(declare-fun b_free!98337 () Bool)

(declare-fun b_next!99041 () Bool)

(assert (=> b!3696460 (= b_free!98337 (not b_next!99041))))

(declare-fun tp!1123500 () Bool)

(declare-fun b_and!276275 () Bool)

(assert (=> b!3696460 (= tp!1123500 b_and!276275)))

(declare-fun b_free!98339 () Bool)

(declare-fun b_next!99043 () Bool)

(assert (=> b!3696460 (= b_free!98339 (not b_next!99043))))

(declare-fun tp!1123506 () Bool)

(declare-fun b_and!276277 () Bool)

(assert (=> b!3696460 (= tp!1123506 b_and!276277)))

(declare-fun b!3696454 () Bool)

(declare-fun b_free!98341 () Bool)

(declare-fun b_next!99045 () Bool)

(assert (=> b!3696454 (= b_free!98341 (not b_next!99045))))

(declare-fun tp!1123505 () Bool)

(declare-fun b_and!276279 () Bool)

(assert (=> b!3696454 (= tp!1123505 b_and!276279)))

(declare-fun b_free!98343 () Bool)

(declare-fun b_next!99047 () Bool)

(assert (=> b!3696454 (= b_free!98343 (not b_next!99047))))

(declare-fun tp!1123501 () Bool)

(declare-fun b_and!276281 () Bool)

(assert (=> b!3696454 (= tp!1123501 b_and!276281)))

(declare-fun b!3696452 () Bool)

(declare-fun res!1503204 () Bool)

(declare-fun e!2289151 () Bool)

(assert (=> b!3696452 (=> (not res!1503204) (not e!2289151))))

(declare-datatypes ((List!39356 0))(
  ( (Nil!39232) (Cons!39232 (h!44652 (_ BitVec 16)) (t!301703 List!39356)) )
))
(declare-datatypes ((TokenValue!6180 0))(
  ( (FloatLiteralValue!12360 (text!43705 List!39356)) (TokenValueExt!6179 (__x!24577 Int)) (Broken!30900 (value!190003 List!39356)) (Object!6303) (End!6180) (Def!6180) (Underscore!6180) (Match!6180) (Else!6180) (Error!6180) (Case!6180) (If!6180) (Extends!6180) (Abstract!6180) (Class!6180) (Val!6180) (DelimiterValue!12360 (del!6240 List!39356)) (KeywordValue!6186 (value!190004 List!39356)) (CommentValue!12360 (value!190005 List!39356)) (WhitespaceValue!12360 (value!190006 List!39356)) (IndentationValue!6180 (value!190007 List!39356)) (String!44233) (Int32!6180) (Broken!30901 (value!190008 List!39356)) (Boolean!6181) (Unit!57219) (OperatorValue!6183 (op!6240 List!39356)) (IdentifierValue!12360 (value!190009 List!39356)) (IdentifierValue!12361 (value!190010 List!39356)) (WhitespaceValue!12361 (value!190011 List!39356)) (True!12360) (False!12360) (Broken!30902 (value!190012 List!39356)) (Broken!30903 (value!190013 List!39356)) (True!12361) (RightBrace!6180) (RightBracket!6180) (Colon!6180) (Null!6180) (Comma!6180) (LeftBracket!6180) (False!12361) (LeftBrace!6180) (ImaginaryLiteralValue!6180 (text!43706 List!39356)) (StringLiteralValue!18540 (value!190014 List!39356)) (EOFValue!6180 (value!190015 List!39356)) (IdentValue!6180 (value!190016 List!39356)) (DelimiterValue!12361 (value!190017 List!39356)) (DedentValue!6180 (value!190018 List!39356)) (NewLineValue!6180 (value!190019 List!39356)) (IntegerValue!18540 (value!190020 (_ BitVec 32)) (text!43707 List!39356)) (IntegerValue!18541 (value!190021 Int) (text!43708 List!39356)) (Times!6180) (Or!6180) (Equal!6180) (Minus!6180) (Broken!30904 (value!190022 List!39356)) (And!6180) (Div!6180) (LessEqual!6180) (Mod!6180) (Concat!16889) (Not!6180) (Plus!6180) (SpaceValue!6180 (value!190023 List!39356)) (IntegerValue!18542 (value!190024 Int) (text!43709 List!39356)) (StringLiteralValue!18541 (text!43710 List!39356)) (FloatLiteralValue!12361 (text!43711 List!39356)) (BytesLiteralValue!6180 (value!190025 List!39356)) (CommentValue!12361 (value!190026 List!39356)) (StringLiteralValue!18542 (value!190027 List!39356)) (ErrorTokenValue!6180 (msg!6241 List!39356)) )
))
(declare-datatypes ((C!21604 0))(
  ( (C!21605 (val!12850 Int)) )
))
(declare-datatypes ((Regex!10709 0))(
  ( (ElementMatch!10709 (c!638932 C!21604)) (Concat!16890 (regOne!21930 Regex!10709) (regTwo!21930 Regex!10709)) (EmptyExpr!10709) (Star!10709 (reg!11038 Regex!10709)) (EmptyLang!10709) (Union!10709 (regOne!21931 Regex!10709) (regTwo!21931 Regex!10709)) )
))
(declare-datatypes ((String!44234 0))(
  ( (String!44235 (value!190028 String)) )
))
(declare-datatypes ((List!39357 0))(
  ( (Nil!39233) (Cons!39233 (h!44653 C!21604) (t!301704 List!39357)) )
))
(declare-datatypes ((IArray!24099 0))(
  ( (IArray!24100 (innerList!12107 List!39357)) )
))
(declare-datatypes ((Conc!12047 0))(
  ( (Node!12047 (left!30568 Conc!12047) (right!30898 Conc!12047) (csize!24324 Int) (cheight!12258 Int)) (Leaf!18633 (xs!15249 IArray!24099) (csize!24325 Int)) (Empty!12047) )
))
(declare-datatypes ((BalanceConc!23708 0))(
  ( (BalanceConc!23709 (c!638933 Conc!12047)) )
))
(declare-datatypes ((TokenValueInjection!11788 0))(
  ( (TokenValueInjection!11789 (toValue!8282 Int) (toChars!8141 Int)) )
))
(declare-datatypes ((Rule!11700 0))(
  ( (Rule!11701 (regex!5950 Regex!10709) (tag!6778 String!44234) (isSeparator!5950 Bool) (transformation!5950 TokenValueInjection!11788)) )
))
(declare-datatypes ((List!39358 0))(
  ( (Nil!39234) (Cons!39234 (h!44654 Rule!11700) (t!301705 List!39358)) )
))
(declare-fun rules!3598 () List!39358)

(get-info :version)

(assert (=> b!3696452 (= res!1503204 (not ((_ is Cons!39234) rules!3598)))))

(declare-fun b!3696453 () Bool)

(declare-datatypes ((Token!11254 0))(
  ( (Token!11255 (value!190029 TokenValue!6180) (rule!8806 Rule!11700) (size!29932 Int) (originalCharacters!6658 List!39357)) )
))
(declare-fun token!544 () Token!11254)

(declare-fun e!2289158 () Bool)

(declare-fun tp!1123508 () Bool)

(declare-fun e!2289150 () Bool)

(declare-fun inv!52722 (String!44234) Bool)

(declare-fun inv!52725 (TokenValueInjection!11788) Bool)

(assert (=> b!3696453 (= e!2289150 (and tp!1123508 (inv!52722 (tag!6778 (rule!8806 token!544))) (inv!52725 (transformation!5950 (rule!8806 token!544))) e!2289158))))

(declare-fun e!2289153 () Bool)

(assert (=> b!3696454 (= e!2289153 (and tp!1123505 tp!1123501))))

(declare-fun b!3696455 () Bool)

(declare-fun e!2289155 () Bool)

(declare-fun tp_is_empty!18493 () Bool)

(declare-fun tp!1123503 () Bool)

(assert (=> b!3696455 (= e!2289155 (and tp_is_empty!18493 tp!1123503))))

(declare-fun b!3696456 () Bool)

(declare-fun e!2289154 () Bool)

(declare-fun e!2289156 () Bool)

(declare-fun tp!1123504 () Bool)

(assert (=> b!3696456 (= e!2289154 (and e!2289156 tp!1123504))))

(declare-fun tp!1123502 () Bool)

(declare-fun b!3696457 () Bool)

(assert (=> b!3696457 (= e!2289156 (and tp!1123502 (inv!52722 (tag!6778 (h!44654 rules!3598))) (inv!52725 (transformation!5950 (h!44654 rules!3598))) e!2289153))))

(declare-fun b!3696458 () Bool)

(declare-fun res!1503200 () Bool)

(declare-fun e!2289157 () Bool)

(assert (=> b!3696458 (=> (not res!1503200) (not e!2289157))))

(declare-fun isEmpty!23376 (List!39358) Bool)

(assert (=> b!3696458 (= res!1503200 (not (isEmpty!23376 rules!3598)))))

(declare-fun b!3696459 () Bool)

(assert (=> b!3696459 (= e!2289151 false)))

(declare-datatypes ((Option!8479 0))(
  ( (None!8478) (Some!8478 (v!38436 Rule!11700)) )
))
(declare-fun lt!1293878 () Option!8479)

(declare-datatypes ((LexerInterface!5539 0))(
  ( (LexerInterfaceExt!5536 (__x!24578 Int)) (Lexer!5537) )
))
(declare-fun thiss!25322 () LexerInterface!5539)

(declare-fun getRuleFromTag!1506 (LexerInterface!5539 List!39358 String!44234) Option!8479)

(assert (=> b!3696459 (= lt!1293878 (getRuleFromTag!1506 thiss!25322 rules!3598 (tag!6778 (rule!8806 token!544))))))

(declare-fun res!1503205 () Bool)

(assert (=> start!348082 (=> (not res!1503205) (not e!2289157))))

(assert (=> start!348082 (= res!1503205 ((_ is Lexer!5537) thiss!25322))))

(assert (=> start!348082 e!2289157))

(assert (=> start!348082 true))

(assert (=> start!348082 e!2289154))

(declare-fun e!2289152 () Bool)

(declare-fun inv!52726 (Token!11254) Bool)

(assert (=> start!348082 (and (inv!52726 token!544) e!2289152)))

(assert (=> start!348082 e!2289155))

(assert (=> b!3696460 (= e!2289158 (and tp!1123500 tp!1123506))))

(declare-fun b!3696461 () Bool)

(declare-fun res!1503202 () Bool)

(assert (=> b!3696461 (=> (not res!1503202) (not e!2289151))))

(declare-datatypes ((tuple2!39112 0))(
  ( (tuple2!39113 (_1!22690 Token!11254) (_2!22690 List!39357)) )
))
(declare-datatypes ((Option!8480 0))(
  ( (None!8479) (Some!8479 (v!38437 tuple2!39112)) )
))
(declare-fun lt!1293877 () Option!8480)

(declare-fun get!13042 (Option!8480) tuple2!39112)

(assert (=> b!3696461 (= res!1503202 (= (_1!22690 (get!13042 lt!1293877)) token!544))))

(declare-fun tp!1123507 () Bool)

(declare-fun b!3696462 () Bool)

(declare-fun inv!21 (TokenValue!6180) Bool)

(assert (=> b!3696462 (= e!2289152 (and (inv!21 (value!190029 token!544)) e!2289150 tp!1123507))))

(declare-fun b!3696463 () Bool)

(assert (=> b!3696463 (= e!2289157 e!2289151)))

(declare-fun res!1503203 () Bool)

(assert (=> b!3696463 (=> (not res!1503203) (not e!2289151))))

(declare-fun isDefined!6669 (Option!8480) Bool)

(assert (=> b!3696463 (= res!1503203 (isDefined!6669 lt!1293877))))

(declare-fun input!3172 () List!39357)

(declare-fun maxPrefix!3061 (LexerInterface!5539 List!39358 List!39357) Option!8480)

(assert (=> b!3696463 (= lt!1293877 (maxPrefix!3061 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3696464 () Bool)

(declare-fun res!1503201 () Bool)

(assert (=> b!3696464 (=> (not res!1503201) (not e!2289157))))

(declare-fun rulesInvariant!4936 (LexerInterface!5539 List!39358) Bool)

(assert (=> b!3696464 (= res!1503201 (rulesInvariant!4936 thiss!25322 rules!3598))))

(assert (= (and start!348082 res!1503205) b!3696464))

(assert (= (and b!3696464 res!1503201) b!3696458))

(assert (= (and b!3696458 res!1503200) b!3696463))

(assert (= (and b!3696463 res!1503203) b!3696461))

(assert (= (and b!3696461 res!1503202) b!3696452))

(assert (= (and b!3696452 res!1503204) b!3696459))

(assert (= b!3696457 b!3696454))

(assert (= b!3696456 b!3696457))

(assert (= (and start!348082 ((_ is Cons!39234) rules!3598)) b!3696456))

(assert (= b!3696453 b!3696460))

(assert (= b!3696462 b!3696453))

(assert (= start!348082 b!3696462))

(assert (= (and start!348082 ((_ is Cons!39233) input!3172)) b!3696455))

(declare-fun m!4208149 () Bool)

(assert (=> b!3696461 m!4208149))

(declare-fun m!4208151 () Bool)

(assert (=> b!3696464 m!4208151))

(declare-fun m!4208153 () Bool)

(assert (=> b!3696457 m!4208153))

(declare-fun m!4208155 () Bool)

(assert (=> b!3696457 m!4208155))

(declare-fun m!4208157 () Bool)

(assert (=> b!3696463 m!4208157))

(declare-fun m!4208159 () Bool)

(assert (=> b!3696463 m!4208159))

(declare-fun m!4208161 () Bool)

(assert (=> b!3696459 m!4208161))

(declare-fun m!4208163 () Bool)

(assert (=> start!348082 m!4208163))

(declare-fun m!4208165 () Bool)

(assert (=> b!3696462 m!4208165))

(declare-fun m!4208167 () Bool)

(assert (=> b!3696453 m!4208167))

(declare-fun m!4208169 () Bool)

(assert (=> b!3696453 m!4208169))

(declare-fun m!4208171 () Bool)

(assert (=> b!3696458 m!4208171))

(check-sat (not b_next!99043) (not start!348082) b_and!276277 (not b_next!99047) b_and!276281 tp_is_empty!18493 b_and!276275 (not b_next!99045) (not b!3696463) (not b!3696458) (not b_next!99041) (not b!3696457) (not b!3696455) (not b!3696462) b_and!276279 (not b!3696461) (not b!3696453) (not b!3696459) (not b!3696456) (not b!3696464))
(check-sat (not b_next!99043) b_and!276277 (not b_next!99047) b_and!276281 (not b_next!99041) b_and!276275 b_and!276279 (not b_next!99045))
