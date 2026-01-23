; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351570 () Bool)

(assert start!351570)

(declare-fun b!3745013 () Bool)

(declare-fun b_free!99573 () Bool)

(declare-fun b_next!100277 () Bool)

(assert (=> b!3745013 (= b_free!99573 (not b_next!100277))))

(declare-fun tp!1142079 () Bool)

(declare-fun b_and!277807 () Bool)

(assert (=> b!3745013 (= tp!1142079 b_and!277807)))

(declare-fun b_free!99575 () Bool)

(declare-fun b_next!100279 () Bool)

(assert (=> b!3745013 (= b_free!99575 (not b_next!100279))))

(declare-fun tp!1142087 () Bool)

(declare-fun b_and!277809 () Bool)

(assert (=> b!3745013 (= tp!1142087 b_and!277809)))

(declare-fun b!3745009 () Bool)

(declare-fun b_free!99577 () Bool)

(declare-fun b_next!100281 () Bool)

(assert (=> b!3745009 (= b_free!99577 (not b_next!100281))))

(declare-fun tp!1142082 () Bool)

(declare-fun b_and!277811 () Bool)

(assert (=> b!3745009 (= tp!1142082 b_and!277811)))

(declare-fun b_free!99579 () Bool)

(declare-fun b_next!100283 () Bool)

(assert (=> b!3745009 (= b_free!99579 (not b_next!100283))))

(declare-fun tp!1142080 () Bool)

(declare-fun b_and!277813 () Bool)

(assert (=> b!3745009 (= tp!1142080 b_and!277813)))

(declare-fun b!3745012 () Bool)

(declare-fun b_free!99581 () Bool)

(declare-fun b_next!100285 () Bool)

(assert (=> b!3745012 (= b_free!99581 (not b_next!100285))))

(declare-fun tp!1142076 () Bool)

(declare-fun b_and!277815 () Bool)

(assert (=> b!3745012 (= tp!1142076 b_and!277815)))

(declare-fun b_free!99583 () Bool)

(declare-fun b_next!100287 () Bool)

(assert (=> b!3745012 (= b_free!99583 (not b_next!100287))))

(declare-fun tp!1142075 () Bool)

(declare-fun b_and!277817 () Bool)

(assert (=> b!3745012 (= tp!1142075 b_and!277817)))

(declare-fun b!3745027 () Bool)

(declare-fun b_free!99585 () Bool)

(declare-fun b_next!100289 () Bool)

(assert (=> b!3745027 (= b_free!99585 (not b_next!100289))))

(declare-fun tp!1142081 () Bool)

(declare-fun b_and!277819 () Bool)

(assert (=> b!3745027 (= tp!1142081 b_and!277819)))

(declare-fun b_free!99587 () Bool)

(declare-fun b_next!100291 () Bool)

(assert (=> b!3745027 (= b_free!99587 (not b_next!100291))))

(declare-fun tp!1142083 () Bool)

(declare-fun b_and!277821 () Bool)

(assert (=> b!3745027 (= tp!1142083 b_and!277821)))

(declare-fun b!3745008 () Bool)

(declare-fun e!2315667 () Bool)

(declare-fun e!2315669 () Bool)

(declare-datatypes ((List!39900 0))(
  ( (Nil!39776) (Cons!39776 (h!45196 (_ BitVec 16)) (t!302583 List!39900)) )
))
(declare-datatypes ((TokenValue!6292 0))(
  ( (FloatLiteralValue!12584 (text!44489 List!39900)) (TokenValueExt!6291 (__x!24801 Int)) (Broken!31460 (value!193337 List!39900)) (Object!6415) (End!6292) (Def!6292) (Underscore!6292) (Match!6292) (Else!6292) (Error!6292) (Case!6292) (If!6292) (Extends!6292) (Abstract!6292) (Class!6292) (Val!6292) (DelimiterValue!12584 (del!6352 List!39900)) (KeywordValue!6298 (value!193338 List!39900)) (CommentValue!12584 (value!193339 List!39900)) (WhitespaceValue!12584 (value!193340 List!39900)) (IndentationValue!6292 (value!193341 List!39900)) (String!45085) (Int32!6292) (Broken!31461 (value!193342 List!39900)) (Boolean!6293) (Unit!57633) (OperatorValue!6295 (op!6352 List!39900)) (IdentifierValue!12584 (value!193343 List!39900)) (IdentifierValue!12585 (value!193344 List!39900)) (WhitespaceValue!12585 (value!193345 List!39900)) (True!12584) (False!12584) (Broken!31462 (value!193346 List!39900)) (Broken!31463 (value!193347 List!39900)) (True!12585) (RightBrace!6292) (RightBracket!6292) (Colon!6292) (Null!6292) (Comma!6292) (LeftBracket!6292) (False!12585) (LeftBrace!6292) (ImaginaryLiteralValue!6292 (text!44490 List!39900)) (StringLiteralValue!18876 (value!193348 List!39900)) (EOFValue!6292 (value!193349 List!39900)) (IdentValue!6292 (value!193350 List!39900)) (DelimiterValue!12585 (value!193351 List!39900)) (DedentValue!6292 (value!193352 List!39900)) (NewLineValue!6292 (value!193353 List!39900)) (IntegerValue!18876 (value!193354 (_ BitVec 32)) (text!44491 List!39900)) (IntegerValue!18877 (value!193355 Int) (text!44492 List!39900)) (Times!6292) (Or!6292) (Equal!6292) (Minus!6292) (Broken!31464 (value!193356 List!39900)) (And!6292) (Div!6292) (LessEqual!6292) (Mod!6292) (Concat!17259) (Not!6292) (Plus!6292) (SpaceValue!6292 (value!193357 List!39900)) (IntegerValue!18878 (value!193358 Int) (text!44493 List!39900)) (StringLiteralValue!18877 (text!44494 List!39900)) (FloatLiteralValue!12585 (text!44495 List!39900)) (BytesLiteralValue!6292 (value!193359 List!39900)) (CommentValue!12585 (value!193360 List!39900)) (StringLiteralValue!18878 (value!193361 List!39900)) (ErrorTokenValue!6292 (msg!6353 List!39900)) )
))
(declare-datatypes ((C!22120 0))(
  ( (C!22121 (val!13108 Int)) )
))
(declare-datatypes ((List!39901 0))(
  ( (Nil!39777) (Cons!39777 (h!45197 C!22120) (t!302584 List!39901)) )
))
(declare-datatypes ((IArray!24323 0))(
  ( (IArray!24324 (innerList!12219 List!39901)) )
))
(declare-datatypes ((Conc!12159 0))(
  ( (Node!12159 (left!30821 Conc!12159) (right!31151 Conc!12159) (csize!24548 Int) (cheight!12370 Int)) (Leaf!18874 (xs!15361 IArray!24323) (csize!24549 Int)) (Empty!12159) )
))
(declare-datatypes ((Regex!10967 0))(
  ( (ElementMatch!10967 (c!648654 C!22120)) (Concat!17260 (regOne!22446 Regex!10967) (regTwo!22446 Regex!10967)) (EmptyExpr!10967) (Star!10967 (reg!11296 Regex!10967)) (EmptyLang!10967) (Union!10967 (regOne!22447 Regex!10967) (regTwo!22447 Regex!10967)) )
))
(declare-datatypes ((String!45086 0))(
  ( (String!45087 (value!193362 String)) )
))
(declare-datatypes ((BalanceConc!23932 0))(
  ( (BalanceConc!23933 (c!648655 Conc!12159)) )
))
(declare-datatypes ((TokenValueInjection!12012 0))(
  ( (TokenValueInjection!12013 (toValue!8406 Int) (toChars!8265 Int)) )
))
(declare-datatypes ((Rule!11924 0))(
  ( (Rule!11925 (regex!6062 Regex!10967) (tag!6922 String!45086) (isSeparator!6062 Bool) (transformation!6062 TokenValueInjection!12012)) )
))
(declare-datatypes ((List!39902 0))(
  ( (Nil!39778) (Cons!39778 (h!45198 Rule!11924) (t!302585 List!39902)) )
))
(declare-fun rulesRec!198 () List!39902)

(declare-fun tp!1142077 () Bool)

(declare-fun inv!53312 (String!45086) Bool)

(declare-fun inv!53314 (TokenValueInjection!12012) Bool)

(assert (=> b!3745008 (= e!2315669 (and tp!1142077 (inv!53312 (tag!6922 (h!45198 rulesRec!198))) (inv!53314 (transformation!6062 (h!45198 rulesRec!198))) e!2315667))))

(declare-fun e!2315660 () Bool)

(assert (=> b!3745009 (= e!2315660 (and tp!1142082 tp!1142080))))

(declare-fun res!1518055 () Bool)

(declare-fun e!2315663 () Bool)

(assert (=> start!351570 (=> (not res!1518055) (not e!2315663))))

(declare-datatypes ((LexerInterface!5651 0))(
  ( (LexerInterfaceExt!5648 (__x!24802 Int)) (Lexer!5649) )
))
(declare-fun thiss!27143 () LexerInterface!5651)

(get-info :version)

(assert (=> start!351570 (= res!1518055 ((_ is Lexer!5649) thiss!27143))))

(assert (=> start!351570 e!2315663))

(assert (=> start!351570 true))

(declare-fun e!2315665 () Bool)

(assert (=> start!351570 e!2315665))

(declare-fun e!2315666 () Bool)

(assert (=> start!351570 e!2315666))

(declare-fun e!2315659 () Bool)

(assert (=> start!351570 e!2315659))

(declare-fun tp_is_empty!18949 () Bool)

(assert (=> start!351570 tp_is_empty!18949))

(declare-fun e!2315662 () Bool)

(assert (=> start!351570 e!2315662))

(declare-fun b!3745010 () Bool)

(declare-fun res!1518052 () Bool)

(assert (=> b!3745010 (=> (not res!1518052) (not e!2315663))))

(declare-fun rNSep!159 () Rule!11924)

(declare-fun rSep!159 () Rule!11924)

(assert (=> b!3745010 (= res!1518052 (and (not (isSeparator!6062 rNSep!159)) (isSeparator!6062 rSep!159)))))

(declare-fun rules!4189 () List!39902)

(declare-fun e!2315657 () Bool)

(declare-fun b!3745011 () Bool)

(declare-fun e!2315670 () Bool)

(declare-fun tp!1142078 () Bool)

(assert (=> b!3745011 (= e!2315670 (and tp!1142078 (inv!53312 (tag!6922 (h!45198 rules!4189))) (inv!53314 (transformation!6062 (h!45198 rules!4189))) e!2315657))))

(assert (=> b!3745012 (= e!2315657 (and tp!1142076 tp!1142075))))

(declare-fun e!2315668 () Bool)

(assert (=> b!3745013 (= e!2315668 (and tp!1142079 tp!1142087))))

(declare-fun b!3745014 () Bool)

(declare-fun res!1518053 () Bool)

(assert (=> b!3745014 (=> (not res!1518053) (not e!2315663))))

(declare-fun rulesInvariant!5048 (LexerInterface!5651 List!39902) Bool)

(assert (=> b!3745014 (= res!1518053 (rulesInvariant!5048 thiss!27143 rules!4189))))

(declare-fun b!3745015 () Bool)

(declare-fun res!1518050 () Bool)

(assert (=> b!3745015 (=> (not res!1518050) (not e!2315663))))

(declare-fun sepAndNonSepRulesDisjointChars!2040 (List!39902 List!39902) Bool)

(assert (=> b!3745015 (= res!1518050 (sepAndNonSepRulesDisjointChars!2040 rules!4189 (t!302585 rulesRec!198)))))

(declare-fun b!3745016 () Bool)

(declare-fun res!1518047 () Bool)

(assert (=> b!3745016 (=> (not res!1518047) (not e!2315663))))

(declare-fun contains!8081 (List!39902 Rule!11924) Bool)

(assert (=> b!3745016 (= res!1518047 (contains!8081 rules!4189 rSep!159))))

(declare-fun b!3745017 () Bool)

(declare-fun res!1518048 () Bool)

(assert (=> b!3745017 (=> (not res!1518048) (not e!2315663))))

(assert (=> b!3745017 (= res!1518048 (contains!8081 rulesRec!198 rNSep!159))))

(declare-fun b!3745018 () Bool)

(declare-fun res!1518049 () Bool)

(assert (=> b!3745018 (=> (not res!1518049) (not e!2315663))))

(assert (=> b!3745018 (= res!1518049 (and (or (not ((_ is Cons!39778) rulesRec!198)) (not (= (h!45198 rulesRec!198) rNSep!159))) ((_ is Cons!39778) rulesRec!198)))))

(declare-fun tp!1142084 () Bool)

(declare-fun b!3745019 () Bool)

(assert (=> b!3745019 (= e!2315662 (and tp!1142084 (inv!53312 (tag!6922 rNSep!159)) (inv!53314 (transformation!6062 rNSep!159)) e!2315668))))

(declare-fun b!3745020 () Bool)

(declare-fun tp!1142088 () Bool)

(assert (=> b!3745020 (= e!2315666 (and tp!1142088 (inv!53312 (tag!6922 rSep!159)) (inv!53314 (transformation!6062 rSep!159)) e!2315660))))

(declare-fun b!3745021 () Bool)

(declare-fun tp!1142086 () Bool)

(assert (=> b!3745021 (= e!2315665 (and e!2315670 tp!1142086))))

(declare-fun b!3745022 () Bool)

(declare-fun res!1518057 () Bool)

(assert (=> b!3745022 (=> (not res!1518057) (not e!2315663))))

(declare-fun c!6900 () C!22120)

(declare-fun contains!8082 (List!39901 C!22120) Bool)

(declare-fun usedCharacters!1230 (Regex!10967) List!39901)

(assert (=> b!3745022 (= res!1518057 (contains!8082 (usedCharacters!1230 (regex!6062 rNSep!159)) c!6900))))

(declare-fun b!3745023 () Bool)

(declare-fun res!1518051 () Bool)

(assert (=> b!3745023 (=> (not res!1518051) (not e!2315663))))

(assert (=> b!3745023 (= res!1518051 (sepAndNonSepRulesDisjointChars!2040 rules!4189 rulesRec!198))))

(declare-fun b!3745024 () Bool)

(declare-fun tp!1142085 () Bool)

(assert (=> b!3745024 (= e!2315659 (and e!2315669 tp!1142085))))

(declare-fun b!3745025 () Bool)

(declare-fun res!1518056 () Bool)

(assert (=> b!3745025 (=> (not res!1518056) (not e!2315663))))

(assert (=> b!3745025 (= res!1518056 (contains!8081 (t!302585 rulesRec!198) rNSep!159))))

(declare-fun b!3745026 () Bool)

(assert (=> b!3745026 (= e!2315663 (not true))))

(assert (=> b!3745026 (not (contains!8082 (usedCharacters!1230 (regex!6062 rSep!159)) c!6900))))

(declare-datatypes ((Unit!57634 0))(
  ( (Unit!57635) )
))
(declare-fun lt!1299406 () Unit!57634)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!380 (LexerInterface!5651 List!39902 List!39902 Rule!11924 Rule!11924 C!22120) Unit!57634)

(assert (=> b!3745026 (= lt!1299406 (lemmaSepRuleNotContainsCharContainedInANonSepRule!380 thiss!27143 rules!4189 (t!302585 rulesRec!198) rNSep!159 rSep!159 c!6900))))

(assert (=> b!3745027 (= e!2315667 (and tp!1142081 tp!1142083))))

(declare-fun b!3745028 () Bool)

(declare-fun res!1518054 () Bool)

(assert (=> b!3745028 (=> (not res!1518054) (not e!2315663))))

(assert (=> b!3745028 (= res!1518054 (contains!8081 rules!4189 rNSep!159))))

(assert (= (and start!351570 res!1518055) b!3745014))

(assert (= (and b!3745014 res!1518053) b!3745016))

(assert (= (and b!3745016 res!1518047) b!3745017))

(assert (= (and b!3745017 res!1518048) b!3745028))

(assert (= (and b!3745028 res!1518054) b!3745010))

(assert (= (and b!3745010 res!1518052) b!3745022))

(assert (= (and b!3745022 res!1518057) b!3745023))

(assert (= (and b!3745023 res!1518051) b!3745018))

(assert (= (and b!3745018 res!1518049) b!3745025))

(assert (= (and b!3745025 res!1518056) b!3745015))

(assert (= (and b!3745015 res!1518050) b!3745026))

(assert (= b!3745011 b!3745012))

(assert (= b!3745021 b!3745011))

(assert (= (and start!351570 ((_ is Cons!39778) rules!4189)) b!3745021))

(assert (= b!3745020 b!3745009))

(assert (= start!351570 b!3745020))

(assert (= b!3745008 b!3745027))

(assert (= b!3745024 b!3745008))

(assert (= (and start!351570 ((_ is Cons!39778) rulesRec!198)) b!3745024))

(assert (= b!3745019 b!3745013))

(assert (= start!351570 b!3745019))

(declare-fun m!4238137 () Bool)

(assert (=> b!3745008 m!4238137))

(declare-fun m!4238139 () Bool)

(assert (=> b!3745008 m!4238139))

(declare-fun m!4238141 () Bool)

(assert (=> b!3745016 m!4238141))

(declare-fun m!4238143 () Bool)

(assert (=> b!3745017 m!4238143))

(declare-fun m!4238145 () Bool)

(assert (=> b!3745025 m!4238145))

(declare-fun m!4238147 () Bool)

(assert (=> b!3745028 m!4238147))

(declare-fun m!4238149 () Bool)

(assert (=> b!3745023 m!4238149))

(declare-fun m!4238151 () Bool)

(assert (=> b!3745020 m!4238151))

(declare-fun m!4238153 () Bool)

(assert (=> b!3745020 m!4238153))

(declare-fun m!4238155 () Bool)

(assert (=> b!3745026 m!4238155))

(assert (=> b!3745026 m!4238155))

(declare-fun m!4238157 () Bool)

(assert (=> b!3745026 m!4238157))

(declare-fun m!4238159 () Bool)

(assert (=> b!3745026 m!4238159))

(declare-fun m!4238161 () Bool)

(assert (=> b!3745011 m!4238161))

(declare-fun m!4238163 () Bool)

(assert (=> b!3745011 m!4238163))

(declare-fun m!4238165 () Bool)

(assert (=> b!3745014 m!4238165))

(declare-fun m!4238167 () Bool)

(assert (=> b!3745022 m!4238167))

(assert (=> b!3745022 m!4238167))

(declare-fun m!4238169 () Bool)

(assert (=> b!3745022 m!4238169))

(declare-fun m!4238171 () Bool)

(assert (=> b!3745019 m!4238171))

(declare-fun m!4238173 () Bool)

(assert (=> b!3745019 m!4238173))

(declare-fun m!4238175 () Bool)

(assert (=> b!3745015 m!4238175))

(check-sat (not b_next!100291) (not b!3745025) (not b!3745016) b_and!277809 (not b!3745022) b_and!277817 (not b!3745023) (not b_next!100287) b_and!277819 (not b_next!100283) (not b!3745019) b_and!277813 (not b_next!100281) (not b_next!100285) (not b!3745021) (not b!3745028) (not b!3745026) (not b!3745008) (not b!3745017) (not b_next!100277) (not b_next!100289) (not b!3745015) (not b!3745014) b_and!277821 (not b!3745011) b_and!277807 b_and!277811 (not b!3745020) tp_is_empty!18949 b_and!277815 (not b!3745024) (not b_next!100279))
(check-sat (not b_next!100285) (not b_next!100291) b_and!277809 b_and!277817 (not b_next!100287) b_and!277819 (not b_next!100283) b_and!277821 b_and!277815 (not b_next!100279) b_and!277813 (not b_next!100281) (not b_next!100277) (not b_next!100289) b_and!277807 b_and!277811)
