; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351502 () Bool)

(assert start!351502)

(declare-fun b!3744351 () Bool)

(declare-fun b_free!99477 () Bool)

(declare-fun b_next!100181 () Bool)

(assert (=> b!3744351 (= b_free!99477 (not b_next!100181))))

(declare-fun tp!1141730 () Bool)

(declare-fun b_and!277711 () Bool)

(assert (=> b!3744351 (= tp!1141730 b_and!277711)))

(declare-fun b_free!99479 () Bool)

(declare-fun b_next!100183 () Bool)

(assert (=> b!3744351 (= b_free!99479 (not b_next!100183))))

(declare-fun tp!1141731 () Bool)

(declare-fun b_and!277713 () Bool)

(assert (=> b!3744351 (= tp!1141731 b_and!277713)))

(declare-fun b!3744360 () Bool)

(declare-fun b_free!99481 () Bool)

(declare-fun b_next!100185 () Bool)

(assert (=> b!3744360 (= b_free!99481 (not b_next!100185))))

(declare-fun tp!1141735 () Bool)

(declare-fun b_and!277715 () Bool)

(assert (=> b!3744360 (= tp!1141735 b_and!277715)))

(declare-fun b_free!99483 () Bool)

(declare-fun b_next!100187 () Bool)

(assert (=> b!3744360 (= b_free!99483 (not b_next!100187))))

(declare-fun tp!1141726 () Bool)

(declare-fun b_and!277717 () Bool)

(assert (=> b!3744360 (= tp!1141726 b_and!277717)))

(declare-fun b!3744352 () Bool)

(declare-fun b_free!99485 () Bool)

(declare-fun b_next!100189 () Bool)

(assert (=> b!3744352 (= b_free!99485 (not b_next!100189))))

(declare-fun tp!1141728 () Bool)

(declare-fun b_and!277719 () Bool)

(assert (=> b!3744352 (= tp!1141728 b_and!277719)))

(declare-fun b_free!99487 () Bool)

(declare-fun b_next!100191 () Bool)

(assert (=> b!3744352 (= b_free!99487 (not b_next!100191))))

(declare-fun tp!1141736 () Bool)

(declare-fun b_and!277721 () Bool)

(assert (=> b!3744352 (= tp!1141736 b_and!277721)))

(declare-fun b!3744356 () Bool)

(declare-fun b_free!99489 () Bool)

(declare-fun b_next!100193 () Bool)

(assert (=> b!3744356 (= b_free!99489 (not b_next!100193))))

(declare-fun tp!1141733 () Bool)

(declare-fun b_and!277723 () Bool)

(assert (=> b!3744356 (= tp!1141733 b_and!277723)))

(declare-fun b_free!99491 () Bool)

(declare-fun b_next!100195 () Bool)

(assert (=> b!3744356 (= b_free!99491 (not b_next!100195))))

(declare-fun tp!1141725 () Bool)

(declare-fun b_and!277725 () Bool)

(assert (=> b!3744356 (= tp!1141725 b_and!277725)))

(declare-fun b!3744346 () Bool)

(declare-fun res!1517758 () Bool)

(declare-fun e!2315206 () Bool)

(assert (=> b!3744346 (=> (not res!1517758) (not e!2315206))))

(declare-datatypes ((List!39884 0))(
  ( (Nil!39760) (Cons!39760 (h!45180 (_ BitVec 16)) (t!302567 List!39884)) )
))
(declare-datatypes ((TokenValue!6288 0))(
  ( (FloatLiteralValue!12576 (text!44461 List!39884)) (TokenValueExt!6287 (__x!24793 Int)) (Broken!31440 (value!193227 List!39884)) (Object!6411) (End!6288) (Def!6288) (Underscore!6288) (Match!6288) (Else!6288) (Error!6288) (Case!6288) (If!6288) (Extends!6288) (Abstract!6288) (Class!6288) (Val!6288) (DelimiterValue!12576 (del!6348 List!39884)) (KeywordValue!6294 (value!193228 List!39884)) (CommentValue!12576 (value!193229 List!39884)) (WhitespaceValue!12576 (value!193230 List!39884)) (IndentationValue!6288 (value!193231 List!39884)) (String!45065) (Int32!6288) (Broken!31441 (value!193232 List!39884)) (Boolean!6289) (Unit!57627) (OperatorValue!6291 (op!6348 List!39884)) (IdentifierValue!12576 (value!193233 List!39884)) (IdentifierValue!12577 (value!193234 List!39884)) (WhitespaceValue!12577 (value!193235 List!39884)) (True!12576) (False!12576) (Broken!31442 (value!193236 List!39884)) (Broken!31443 (value!193237 List!39884)) (True!12577) (RightBrace!6288) (RightBracket!6288) (Colon!6288) (Null!6288) (Comma!6288) (LeftBracket!6288) (False!12577) (LeftBrace!6288) (ImaginaryLiteralValue!6288 (text!44462 List!39884)) (StringLiteralValue!18864 (value!193238 List!39884)) (EOFValue!6288 (value!193239 List!39884)) (IdentValue!6288 (value!193240 List!39884)) (DelimiterValue!12577 (value!193241 List!39884)) (DedentValue!6288 (value!193242 List!39884)) (NewLineValue!6288 (value!193243 List!39884)) (IntegerValue!18864 (value!193244 (_ BitVec 32)) (text!44463 List!39884)) (IntegerValue!18865 (value!193245 Int) (text!44464 List!39884)) (Times!6288) (Or!6288) (Equal!6288) (Minus!6288) (Broken!31444 (value!193246 List!39884)) (And!6288) (Div!6288) (LessEqual!6288) (Mod!6288) (Concat!17251) (Not!6288) (Plus!6288) (SpaceValue!6288 (value!193247 List!39884)) (IntegerValue!18866 (value!193248 Int) (text!44465 List!39884)) (StringLiteralValue!18865 (text!44466 List!39884)) (FloatLiteralValue!12577 (text!44467 List!39884)) (BytesLiteralValue!6288 (value!193249 List!39884)) (CommentValue!12577 (value!193250 List!39884)) (StringLiteralValue!18866 (value!193251 List!39884)) (ErrorTokenValue!6288 (msg!6349 List!39884)) )
))
(declare-datatypes ((C!22112 0))(
  ( (C!22113 (val!13104 Int)) )
))
(declare-datatypes ((Regex!10963 0))(
  ( (ElementMatch!10963 (c!648590 C!22112)) (Concat!17252 (regOne!22438 Regex!10963) (regTwo!22438 Regex!10963)) (EmptyExpr!10963) (Star!10963 (reg!11292 Regex!10963)) (EmptyLang!10963) (Union!10963 (regOne!22439 Regex!10963) (regTwo!22439 Regex!10963)) )
))
(declare-datatypes ((String!45066 0))(
  ( (String!45067 (value!193252 String)) )
))
(declare-datatypes ((List!39885 0))(
  ( (Nil!39761) (Cons!39761 (h!45181 C!22112) (t!302568 List!39885)) )
))
(declare-datatypes ((IArray!24315 0))(
  ( (IArray!24316 (innerList!12215 List!39885)) )
))
(declare-datatypes ((Conc!12155 0))(
  ( (Node!12155 (left!30815 Conc!12155) (right!31145 Conc!12155) (csize!24540 Int) (cheight!12366 Int)) (Leaf!18868 (xs!15357 IArray!24315) (csize!24541 Int)) (Empty!12155) )
))
(declare-datatypes ((BalanceConc!23924 0))(
  ( (BalanceConc!23925 (c!648591 Conc!12155)) )
))
(declare-datatypes ((TokenValueInjection!12004 0))(
  ( (TokenValueInjection!12005 (toValue!8402 Int) (toChars!8261 Int)) )
))
(declare-datatypes ((Rule!11916 0))(
  ( (Rule!11917 (regex!6058 Regex!10963) (tag!6918 String!45066) (isSeparator!6058 Bool) (transformation!6058 TokenValueInjection!12004)) )
))
(declare-datatypes ((List!39886 0))(
  ( (Nil!39762) (Cons!39762 (h!45182 Rule!11916) (t!302569 List!39886)) )
))
(declare-fun rules!4189 () List!39886)

(declare-fun rNSep!159 () Rule!11916)

(declare-fun contains!8073 (List!39886 Rule!11916) Bool)

(assert (=> b!3744346 (= res!1517758 (contains!8073 rules!4189 rNSep!159))))

(declare-fun b!3744347 () Bool)

(declare-fun res!1517760 () Bool)

(assert (=> b!3744347 (=> (not res!1517760) (not e!2315206))))

(declare-fun rSep!159 () Rule!11916)

(assert (=> b!3744347 (= res!1517760 (contains!8073 rules!4189 rSep!159))))

(declare-fun b!3744348 () Bool)

(declare-fun res!1517755 () Bool)

(assert (=> b!3744348 (=> (not res!1517755) (not e!2315206))))

(declare-datatypes ((LexerInterface!5647 0))(
  ( (LexerInterfaceExt!5644 (__x!24794 Int)) (Lexer!5645) )
))
(declare-fun thiss!27143 () LexerInterface!5647)

(declare-fun rulesInvariant!5044 (LexerInterface!5647 List!39886) Bool)

(assert (=> b!3744348 (= res!1517755 (rulesInvariant!5044 thiss!27143 rules!4189))))

(declare-fun tp!1141729 () Bool)

(declare-fun e!2315201 () Bool)

(declare-fun b!3744349 () Bool)

(declare-fun e!2315194 () Bool)

(declare-fun inv!53302 (String!45066) Bool)

(declare-fun inv!53304 (TokenValueInjection!12004) Bool)

(assert (=> b!3744349 (= e!2315201 (and tp!1141729 (inv!53302 (tag!6918 rNSep!159)) (inv!53304 (transformation!6058 rNSep!159)) e!2315194))))

(declare-fun b!3744350 () Bool)

(declare-fun res!1517756 () Bool)

(assert (=> b!3744350 (=> (not res!1517756) (not e!2315206))))

(declare-fun rulesRec!198 () List!39886)

(get-info :version)

(assert (=> b!3744350 (= res!1517756 (and (or (not ((_ is Cons!39762) rulesRec!198)) (not (= (h!45182 rulesRec!198) rNSep!159))) ((_ is Cons!39762) rulesRec!198)))))

(declare-fun e!2315203 () Bool)

(assert (=> b!3744351 (= e!2315203 (and tp!1141730 tp!1141731))))

(declare-fun e!2315198 () Bool)

(assert (=> b!3744352 (= e!2315198 (and tp!1141728 tp!1141736))))

(declare-fun b!3744345 () Bool)

(declare-fun res!1517759 () Bool)

(assert (=> b!3744345 (=> (not res!1517759) (not e!2315206))))

(declare-fun sepAndNonSepRulesDisjointChars!2036 (List!39886 List!39886) Bool)

(assert (=> b!3744345 (= res!1517759 (sepAndNonSepRulesDisjointChars!2036 rules!4189 rulesRec!198))))

(declare-fun res!1517762 () Bool)

(assert (=> start!351502 (=> (not res!1517762) (not e!2315206))))

(assert (=> start!351502 (= res!1517762 ((_ is Lexer!5645) thiss!27143))))

(assert (=> start!351502 e!2315206))

(assert (=> start!351502 true))

(declare-fun e!2315199 () Bool)

(assert (=> start!351502 e!2315199))

(declare-fun e!2315205 () Bool)

(assert (=> start!351502 e!2315205))

(declare-fun e!2315195 () Bool)

(assert (=> start!351502 e!2315195))

(declare-fun tp_is_empty!18941 () Bool)

(assert (=> start!351502 tp_is_empty!18941))

(assert (=> start!351502 e!2315201))

(declare-fun b!3744353 () Bool)

(declare-fun res!1517757 () Bool)

(assert (=> b!3744353 (=> (not res!1517757) (not e!2315206))))

(assert (=> b!3744353 (= res!1517757 (and (not (isSeparator!6058 rNSep!159)) (isSeparator!6058 rSep!159)))))

(declare-fun b!3744354 () Bool)

(declare-fun tp!1141723 () Bool)

(declare-fun e!2315202 () Bool)

(assert (=> b!3744354 (= e!2315205 (and tp!1141723 (inv!53302 (tag!6918 rSep!159)) (inv!53304 (transformation!6058 rSep!159)) e!2315202))))

(declare-fun b!3744355 () Bool)

(declare-fun e!2315197 () Bool)

(declare-fun tp!1141732 () Bool)

(assert (=> b!3744355 (= e!2315199 (and e!2315197 tp!1141732))))

(assert (=> b!3744356 (= e!2315194 (and tp!1141733 tp!1141725))))

(declare-fun b!3744357 () Bool)

(declare-fun e!2315200 () Bool)

(declare-fun tp!1141724 () Bool)

(assert (=> b!3744357 (= e!2315200 (and tp!1141724 (inv!53302 (tag!6918 (h!45182 rulesRec!198))) (inv!53304 (transformation!6058 (h!45182 rulesRec!198))) e!2315203))))

(declare-fun b!3744358 () Bool)

(declare-fun res!1517754 () Bool)

(assert (=> b!3744358 (=> (not res!1517754) (not e!2315206))))

(assert (=> b!3744358 (= res!1517754 (contains!8073 rulesRec!198 rNSep!159))))

(declare-fun b!3744359 () Bool)

(declare-fun tp!1141727 () Bool)

(assert (=> b!3744359 (= e!2315195 (and e!2315200 tp!1141727))))

(assert (=> b!3744360 (= e!2315202 (and tp!1141735 tp!1141726))))

(declare-fun b!3744361 () Bool)

(declare-fun res!1517763 () Bool)

(assert (=> b!3744361 (=> (not res!1517763) (not e!2315206))))

(assert (=> b!3744361 (= res!1517763 (contains!8073 (t!302569 rulesRec!198) rNSep!159))))

(declare-fun b!3744362 () Bool)

(assert (=> b!3744362 (= e!2315206 (not (sepAndNonSepRulesDisjointChars!2036 rules!4189 (t!302569 rulesRec!198))))))

(declare-fun b!3744363 () Bool)

(declare-fun res!1517761 () Bool)

(assert (=> b!3744363 (=> (not res!1517761) (not e!2315206))))

(declare-fun c!6900 () C!22112)

(declare-fun contains!8074 (List!39885 C!22112) Bool)

(declare-fun usedCharacters!1226 (Regex!10963) List!39885)

(assert (=> b!3744363 (= res!1517761 (contains!8074 (usedCharacters!1226 (regex!6058 rNSep!159)) c!6900))))

(declare-fun b!3744364 () Bool)

(declare-fun tp!1141734 () Bool)

(assert (=> b!3744364 (= e!2315197 (and tp!1141734 (inv!53302 (tag!6918 (h!45182 rules!4189))) (inv!53304 (transformation!6058 (h!45182 rules!4189))) e!2315198))))

(assert (= (and start!351502 res!1517762) b!3744348))

(assert (= (and b!3744348 res!1517755) b!3744347))

(assert (= (and b!3744347 res!1517760) b!3744358))

(assert (= (and b!3744358 res!1517754) b!3744346))

(assert (= (and b!3744346 res!1517758) b!3744353))

(assert (= (and b!3744353 res!1517757) b!3744363))

(assert (= (and b!3744363 res!1517761) b!3744345))

(assert (= (and b!3744345 res!1517759) b!3744350))

(assert (= (and b!3744350 res!1517756) b!3744361))

(assert (= (and b!3744361 res!1517763) b!3744362))

(assert (= b!3744364 b!3744352))

(assert (= b!3744355 b!3744364))

(assert (= (and start!351502 ((_ is Cons!39762) rules!4189)) b!3744355))

(assert (= b!3744354 b!3744360))

(assert (= start!351502 b!3744354))

(assert (= b!3744357 b!3744351))

(assert (= b!3744359 b!3744357))

(assert (= (and start!351502 ((_ is Cons!39762) rulesRec!198)) b!3744359))

(assert (= b!3744349 b!3744356))

(assert (= start!351502 b!3744349))

(declare-fun m!4237719 () Bool)

(assert (=> b!3744349 m!4237719))

(declare-fun m!4237721 () Bool)

(assert (=> b!3744349 m!4237721))

(declare-fun m!4237723 () Bool)

(assert (=> b!3744363 m!4237723))

(assert (=> b!3744363 m!4237723))

(declare-fun m!4237725 () Bool)

(assert (=> b!3744363 m!4237725))

(declare-fun m!4237727 () Bool)

(assert (=> b!3744361 m!4237727))

(declare-fun m!4237729 () Bool)

(assert (=> b!3744346 m!4237729))

(declare-fun m!4237731 () Bool)

(assert (=> b!3744348 m!4237731))

(declare-fun m!4237733 () Bool)

(assert (=> b!3744354 m!4237733))

(declare-fun m!4237735 () Bool)

(assert (=> b!3744354 m!4237735))

(declare-fun m!4237737 () Bool)

(assert (=> b!3744358 m!4237737))

(declare-fun m!4237739 () Bool)

(assert (=> b!3744357 m!4237739))

(declare-fun m!4237741 () Bool)

(assert (=> b!3744357 m!4237741))

(declare-fun m!4237743 () Bool)

(assert (=> b!3744364 m!4237743))

(declare-fun m!4237745 () Bool)

(assert (=> b!3744364 m!4237745))

(declare-fun m!4237747 () Bool)

(assert (=> b!3744347 m!4237747))

(declare-fun m!4237749 () Bool)

(assert (=> b!3744345 m!4237749))

(declare-fun m!4237751 () Bool)

(assert (=> b!3744362 m!4237751))

(check-sat b_and!277717 b_and!277725 (not b!3744345) b_and!277711 (not b!3744357) b_and!277721 (not b!3744346) (not b!3744358) (not b_next!100189) b_and!277719 (not b_next!100195) (not b!3744361) (not b!3744355) (not b_next!100181) (not b_next!100185) (not b!3744363) (not b!3744348) b_and!277715 (not b!3744362) (not b_next!100187) (not b!3744364) b_and!277723 (not b!3744349) (not b_next!100193) (not b!3744347) tp_is_empty!18941 (not b!3744359) (not b!3744354) b_and!277713 (not b_next!100183) (not b_next!100191))
(check-sat b_and!277717 (not b_next!100195) (not b_next!100181) (not b_next!100185) b_and!277725 b_and!277715 (not b_next!100187) b_and!277711 b_and!277721 b_and!277723 (not b_next!100193) (not b_next!100189) b_and!277713 b_and!277719 (not b_next!100183) (not b_next!100191))
(get-model)

(declare-fun d!1093005 () Bool)

(declare-fun res!1517787 () Bool)

(declare-fun e!2315219 () Bool)

(assert (=> d!1093005 (=> res!1517787 e!2315219)))

(assert (=> d!1093005 (= res!1517787 (not ((_ is Cons!39762) (t!302569 rulesRec!198))))))

(assert (=> d!1093005 (= (sepAndNonSepRulesDisjointChars!2036 rules!4189 (t!302569 rulesRec!198)) e!2315219)))

(declare-fun b!3744377 () Bool)

(declare-fun e!2315220 () Bool)

(assert (=> b!3744377 (= e!2315219 e!2315220)))

(declare-fun res!1517788 () Bool)

(assert (=> b!3744377 (=> (not res!1517788) (not e!2315220))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!933 (Rule!11916 List!39886) Bool)

(assert (=> b!3744377 (= res!1517788 (ruleDisjointCharsFromAllFromOtherType!933 (h!45182 (t!302569 rulesRec!198)) rules!4189))))

(declare-fun b!3744378 () Bool)

(assert (=> b!3744378 (= e!2315220 (sepAndNonSepRulesDisjointChars!2036 rules!4189 (t!302569 (t!302569 rulesRec!198))))))

(assert (= (and d!1093005 (not res!1517787)) b!3744377))

(assert (= (and b!3744377 res!1517788) b!3744378))

(declare-fun m!4237759 () Bool)

(assert (=> b!3744377 m!4237759))

(declare-fun m!4237761 () Bool)

(assert (=> b!3744378 m!4237761))

(assert (=> b!3744362 d!1093005))

(declare-fun d!1093013 () Bool)

(declare-fun lt!1299359 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5816 (List!39886) (InoxSet Rule!11916))

(assert (=> d!1093013 (= lt!1299359 (select (content!5816 (t!302569 rulesRec!198)) rNSep!159))))

(declare-fun e!2315228 () Bool)

(assert (=> d!1093013 (= lt!1299359 e!2315228)))

(declare-fun res!1517797 () Bool)

(assert (=> d!1093013 (=> (not res!1517797) (not e!2315228))))

(assert (=> d!1093013 (= res!1517797 ((_ is Cons!39762) (t!302569 rulesRec!198)))))

(assert (=> d!1093013 (= (contains!8073 (t!302569 rulesRec!198) rNSep!159) lt!1299359)))

(declare-fun b!3744386 () Bool)

(declare-fun e!2315229 () Bool)

(assert (=> b!3744386 (= e!2315228 e!2315229)))

(declare-fun res!1517796 () Bool)

(assert (=> b!3744386 (=> res!1517796 e!2315229)))

(assert (=> b!3744386 (= res!1517796 (= (h!45182 (t!302569 rulesRec!198)) rNSep!159))))

(declare-fun b!3744387 () Bool)

(assert (=> b!3744387 (= e!2315229 (contains!8073 (t!302569 (t!302569 rulesRec!198)) rNSep!159))))

(assert (= (and d!1093013 res!1517797) b!3744386))

(assert (= (and b!3744386 (not res!1517796)) b!3744387))

(declare-fun m!4237767 () Bool)

(assert (=> d!1093013 m!4237767))

(declare-fun m!4237769 () Bool)

(assert (=> d!1093013 m!4237769))

(declare-fun m!4237771 () Bool)

(assert (=> b!3744387 m!4237771))

(assert (=> b!3744361 d!1093013))

(declare-fun d!1093017 () Bool)

(assert (=> d!1093017 (= (inv!53302 (tag!6918 rSep!159)) (= (mod (str.len (value!193252 (tag!6918 rSep!159))) 2) 0))))

(assert (=> b!3744354 d!1093017))

(declare-fun d!1093019 () Bool)

(declare-fun res!1517806 () Bool)

(declare-fun e!2315238 () Bool)

(assert (=> d!1093019 (=> (not res!1517806) (not e!2315238))))

(declare-fun semiInverseModEq!2591 (Int Int) Bool)

(assert (=> d!1093019 (= res!1517806 (semiInverseModEq!2591 (toChars!8261 (transformation!6058 rSep!159)) (toValue!8402 (transformation!6058 rSep!159))))))

(assert (=> d!1093019 (= (inv!53304 (transformation!6058 rSep!159)) e!2315238)))

(declare-fun b!3744396 () Bool)

(declare-fun equivClasses!2490 (Int Int) Bool)

(assert (=> b!3744396 (= e!2315238 (equivClasses!2490 (toChars!8261 (transformation!6058 rSep!159)) (toValue!8402 (transformation!6058 rSep!159))))))

(assert (= (and d!1093019 res!1517806) b!3744396))

(declare-fun m!4237779 () Bool)

(assert (=> d!1093019 m!4237779))

(declare-fun m!4237781 () Bool)

(assert (=> b!3744396 m!4237781))

(assert (=> b!3744354 d!1093019))

(declare-fun d!1093023 () Bool)

(assert (=> d!1093023 (= (inv!53302 (tag!6918 (h!45182 rules!4189))) (= (mod (str.len (value!193252 (tag!6918 (h!45182 rules!4189)))) 2) 0))))

(assert (=> b!3744364 d!1093023))

(declare-fun d!1093025 () Bool)

(declare-fun res!1517807 () Bool)

(declare-fun e!2315239 () Bool)

(assert (=> d!1093025 (=> (not res!1517807) (not e!2315239))))

(assert (=> d!1093025 (= res!1517807 (semiInverseModEq!2591 (toChars!8261 (transformation!6058 (h!45182 rules!4189))) (toValue!8402 (transformation!6058 (h!45182 rules!4189)))))))

(assert (=> d!1093025 (= (inv!53304 (transformation!6058 (h!45182 rules!4189))) e!2315239)))

(declare-fun b!3744397 () Bool)

(assert (=> b!3744397 (= e!2315239 (equivClasses!2490 (toChars!8261 (transformation!6058 (h!45182 rules!4189))) (toValue!8402 (transformation!6058 (h!45182 rules!4189)))))))

(assert (= (and d!1093025 res!1517807) b!3744397))

(declare-fun m!4237783 () Bool)

(assert (=> d!1093025 m!4237783))

(declare-fun m!4237785 () Bool)

(assert (=> b!3744397 m!4237785))

(assert (=> b!3744364 d!1093025))

(declare-fun d!1093027 () Bool)

(declare-fun lt!1299365 () Bool)

(declare-fun content!5817 (List!39885) (InoxSet C!22112))

(assert (=> d!1093027 (= lt!1299365 (select (content!5817 (usedCharacters!1226 (regex!6058 rNSep!159))) c!6900))))

(declare-fun e!2315253 () Bool)

(assert (=> d!1093027 (= lt!1299365 e!2315253)))

(declare-fun res!1517813 () Bool)

(assert (=> d!1093027 (=> (not res!1517813) (not e!2315253))))

(assert (=> d!1093027 (= res!1517813 ((_ is Cons!39761) (usedCharacters!1226 (regex!6058 rNSep!159))))))

(assert (=> d!1093027 (= (contains!8074 (usedCharacters!1226 (regex!6058 rNSep!159)) c!6900) lt!1299365)))

(declare-fun b!3744418 () Bool)

(declare-fun e!2315252 () Bool)

(assert (=> b!3744418 (= e!2315253 e!2315252)))

(declare-fun res!1517812 () Bool)

(assert (=> b!3744418 (=> res!1517812 e!2315252)))

(assert (=> b!3744418 (= res!1517812 (= (h!45181 (usedCharacters!1226 (regex!6058 rNSep!159))) c!6900))))

(declare-fun b!3744419 () Bool)

(assert (=> b!3744419 (= e!2315252 (contains!8074 (t!302568 (usedCharacters!1226 (regex!6058 rNSep!159))) c!6900))))

(assert (= (and d!1093027 res!1517813) b!3744418))

(assert (= (and b!3744418 (not res!1517812)) b!3744419))

(assert (=> d!1093027 m!4237723))

(declare-fun m!4237787 () Bool)

(assert (=> d!1093027 m!4237787))

(declare-fun m!4237789 () Bool)

(assert (=> d!1093027 m!4237789))

(declare-fun m!4237791 () Bool)

(assert (=> b!3744419 m!4237791))

(assert (=> b!3744363 d!1093027))

(declare-fun d!1093029 () Bool)

(declare-fun c!648613 () Bool)

(assert (=> d!1093029 (= c!648613 (or ((_ is EmptyExpr!10963) (regex!6058 rNSep!159)) ((_ is EmptyLang!10963) (regex!6058 rNSep!159))))))

(declare-fun e!2315277 () List!39885)

(assert (=> d!1093029 (= (usedCharacters!1226 (regex!6058 rNSep!159)) e!2315277)))

(declare-fun b!3744454 () Bool)

(declare-fun e!2315278 () List!39885)

(declare-fun call!274942 () List!39885)

(assert (=> b!3744454 (= e!2315278 call!274942)))

(declare-fun bm!274934 () Bool)

(declare-fun call!274941 () List!39885)

(declare-fun call!274940 () List!39885)

(declare-fun ++!9877 (List!39885 List!39885) List!39885)

(assert (=> bm!274934 (= call!274942 (++!9877 call!274941 call!274940))))

(declare-fun b!3744455 () Bool)

(declare-fun e!2315279 () List!39885)

(assert (=> b!3744455 (= e!2315279 e!2315278)))

(declare-fun c!648615 () Bool)

(assert (=> b!3744455 (= c!648615 ((_ is Union!10963) (regex!6058 rNSep!159)))))

(declare-fun bm!274935 () Bool)

(declare-fun c!648612 () Bool)

(declare-fun call!274939 () List!39885)

(assert (=> bm!274935 (= call!274939 (usedCharacters!1226 (ite c!648612 (reg!11292 (regex!6058 rNSep!159)) (ite c!648615 (regTwo!22439 (regex!6058 rNSep!159)) (regTwo!22438 (regex!6058 rNSep!159))))))))

(declare-fun b!3744456 () Bool)

(assert (=> b!3744456 (= e!2315278 call!274942)))

(declare-fun bm!274936 () Bool)

(assert (=> bm!274936 (= call!274941 (usedCharacters!1226 (ite c!648615 (regOne!22439 (regex!6058 rNSep!159)) (regOne!22438 (regex!6058 rNSep!159)))))))

(declare-fun b!3744457 () Bool)

(declare-fun e!2315276 () List!39885)

(assert (=> b!3744457 (= e!2315277 e!2315276)))

(declare-fun c!648614 () Bool)

(assert (=> b!3744457 (= c!648614 ((_ is ElementMatch!10963) (regex!6058 rNSep!159)))))

(declare-fun b!3744458 () Bool)

(assert (=> b!3744458 (= e!2315277 Nil!39761)))

(declare-fun b!3744459 () Bool)

(assert (=> b!3744459 (= e!2315276 (Cons!39761 (c!648590 (regex!6058 rNSep!159)) Nil!39761))))

(declare-fun bm!274937 () Bool)

(assert (=> bm!274937 (= call!274940 call!274939)))

(declare-fun b!3744460 () Bool)

(assert (=> b!3744460 (= c!648612 ((_ is Star!10963) (regex!6058 rNSep!159)))))

(assert (=> b!3744460 (= e!2315276 e!2315279)))

(declare-fun b!3744461 () Bool)

(assert (=> b!3744461 (= e!2315279 call!274939)))

(assert (= (and d!1093029 c!648613) b!3744458))

(assert (= (and d!1093029 (not c!648613)) b!3744457))

(assert (= (and b!3744457 c!648614) b!3744459))

(assert (= (and b!3744457 (not c!648614)) b!3744460))

(assert (= (and b!3744460 c!648612) b!3744461))

(assert (= (and b!3744460 (not c!648612)) b!3744455))

(assert (= (and b!3744455 c!648615) b!3744456))

(assert (= (and b!3744455 (not c!648615)) b!3744454))

(assert (= (or b!3744456 b!3744454) bm!274936))

(assert (= (or b!3744456 b!3744454) bm!274937))

(assert (= (or b!3744456 b!3744454) bm!274934))

(assert (= (or b!3744461 bm!274937) bm!274935))

(declare-fun m!4237817 () Bool)

(assert (=> bm!274934 m!4237817))

(declare-fun m!4237819 () Bool)

(assert (=> bm!274935 m!4237819))

(declare-fun m!4237821 () Bool)

(assert (=> bm!274936 m!4237821))

(assert (=> b!3744363 d!1093029))

(declare-fun d!1093045 () Bool)

(declare-fun lt!1299370 () Bool)

(assert (=> d!1093045 (= lt!1299370 (select (content!5816 rules!4189) rNSep!159))))

(declare-fun e!2315283 () Bool)

(assert (=> d!1093045 (= lt!1299370 e!2315283)))

(declare-fun res!1517828 () Bool)

(assert (=> d!1093045 (=> (not res!1517828) (not e!2315283))))

(assert (=> d!1093045 (= res!1517828 ((_ is Cons!39762) rules!4189))))

(assert (=> d!1093045 (= (contains!8073 rules!4189 rNSep!159) lt!1299370)))

(declare-fun b!3744465 () Bool)

(declare-fun e!2315284 () Bool)

(assert (=> b!3744465 (= e!2315283 e!2315284)))

(declare-fun res!1517827 () Bool)

(assert (=> b!3744465 (=> res!1517827 e!2315284)))

(assert (=> b!3744465 (= res!1517827 (= (h!45182 rules!4189) rNSep!159))))

(declare-fun b!3744466 () Bool)

(assert (=> b!3744466 (= e!2315284 (contains!8073 (t!302569 rules!4189) rNSep!159))))

(assert (= (and d!1093045 res!1517828) b!3744465))

(assert (= (and b!3744465 (not res!1517827)) b!3744466))

(declare-fun m!4237827 () Bool)

(assert (=> d!1093045 m!4237827))

(declare-fun m!4237831 () Bool)

(assert (=> d!1093045 m!4237831))

(declare-fun m!4237837 () Bool)

(assert (=> b!3744466 m!4237837))

(assert (=> b!3744346 d!1093045))

(declare-fun d!1093051 () Bool)

(assert (=> d!1093051 (= (inv!53302 (tag!6918 (h!45182 rulesRec!198))) (= (mod (str.len (value!193252 (tag!6918 (h!45182 rulesRec!198)))) 2) 0))))

(assert (=> b!3744357 d!1093051))

(declare-fun d!1093055 () Bool)

(declare-fun res!1517832 () Bool)

(declare-fun e!2315288 () Bool)

(assert (=> d!1093055 (=> (not res!1517832) (not e!2315288))))

(assert (=> d!1093055 (= res!1517832 (semiInverseModEq!2591 (toChars!8261 (transformation!6058 (h!45182 rulesRec!198))) (toValue!8402 (transformation!6058 (h!45182 rulesRec!198)))))))

(assert (=> d!1093055 (= (inv!53304 (transformation!6058 (h!45182 rulesRec!198))) e!2315288)))

(declare-fun b!3744470 () Bool)

(assert (=> b!3744470 (= e!2315288 (equivClasses!2490 (toChars!8261 (transformation!6058 (h!45182 rulesRec!198))) (toValue!8402 (transformation!6058 (h!45182 rulesRec!198)))))))

(assert (= (and d!1093055 res!1517832) b!3744470))

(declare-fun m!4237843 () Bool)

(assert (=> d!1093055 m!4237843))

(declare-fun m!4237845 () Bool)

(assert (=> b!3744470 m!4237845))

(assert (=> b!3744357 d!1093055))

(declare-fun d!1093059 () Bool)

(declare-fun res!1517835 () Bool)

(declare-fun e!2315291 () Bool)

(assert (=> d!1093059 (=> res!1517835 e!2315291)))

(assert (=> d!1093059 (= res!1517835 (not ((_ is Cons!39762) rulesRec!198)))))

(assert (=> d!1093059 (= (sepAndNonSepRulesDisjointChars!2036 rules!4189 rulesRec!198) e!2315291)))

(declare-fun b!3744473 () Bool)

(declare-fun e!2315292 () Bool)

(assert (=> b!3744473 (= e!2315291 e!2315292)))

(declare-fun res!1517836 () Bool)

(assert (=> b!3744473 (=> (not res!1517836) (not e!2315292))))

(assert (=> b!3744473 (= res!1517836 (ruleDisjointCharsFromAllFromOtherType!933 (h!45182 rulesRec!198) rules!4189))))

(declare-fun b!3744474 () Bool)

(assert (=> b!3744474 (= e!2315292 (sepAndNonSepRulesDisjointChars!2036 rules!4189 (t!302569 rulesRec!198)))))

(assert (= (and d!1093059 (not res!1517835)) b!3744473))

(assert (= (and b!3744473 res!1517836) b!3744474))

(declare-fun m!4237851 () Bool)

(assert (=> b!3744473 m!4237851))

(assert (=> b!3744474 m!4237751))

(assert (=> b!3744345 d!1093059))

(declare-fun d!1093061 () Bool)

(assert (=> d!1093061 (= (inv!53302 (tag!6918 rNSep!159)) (= (mod (str.len (value!193252 (tag!6918 rNSep!159))) 2) 0))))

(assert (=> b!3744349 d!1093061))

(declare-fun d!1093063 () Bool)

(declare-fun res!1517837 () Bool)

(declare-fun e!2315295 () Bool)

(assert (=> d!1093063 (=> (not res!1517837) (not e!2315295))))

(assert (=> d!1093063 (= res!1517837 (semiInverseModEq!2591 (toChars!8261 (transformation!6058 rNSep!159)) (toValue!8402 (transformation!6058 rNSep!159))))))

(assert (=> d!1093063 (= (inv!53304 (transformation!6058 rNSep!159)) e!2315295)))

(declare-fun b!3744485 () Bool)

(assert (=> b!3744485 (= e!2315295 (equivClasses!2490 (toChars!8261 (transformation!6058 rNSep!159)) (toValue!8402 (transformation!6058 rNSep!159))))))

(assert (= (and d!1093063 res!1517837) b!3744485))

(declare-fun m!4237853 () Bool)

(assert (=> d!1093063 m!4237853))

(declare-fun m!4237855 () Bool)

(assert (=> b!3744485 m!4237855))

(assert (=> b!3744349 d!1093063))

(declare-fun d!1093065 () Bool)

(declare-fun res!1517840 () Bool)

(declare-fun e!2315316 () Bool)

(assert (=> d!1093065 (=> (not res!1517840) (not e!2315316))))

(declare-fun rulesValid!2347 (LexerInterface!5647 List!39886) Bool)

(assert (=> d!1093065 (= res!1517840 (rulesValid!2347 thiss!27143 rules!4189))))

(assert (=> d!1093065 (= (rulesInvariant!5044 thiss!27143 rules!4189) e!2315316)))

(declare-fun b!3744510 () Bool)

(declare-datatypes ((List!39888 0))(
  ( (Nil!39764) (Cons!39764 (h!45184 String!45066) (t!302571 List!39888)) )
))
(declare-fun noDuplicateTag!2348 (LexerInterface!5647 List!39886 List!39888) Bool)

(assert (=> b!3744510 (= e!2315316 (noDuplicateTag!2348 thiss!27143 rules!4189 Nil!39764))))

(assert (= (and d!1093065 res!1517840) b!3744510))

(declare-fun m!4237865 () Bool)

(assert (=> d!1093065 m!4237865))

(declare-fun m!4237867 () Bool)

(assert (=> b!3744510 m!4237867))

(assert (=> b!3744348 d!1093065))

(declare-fun d!1093067 () Bool)

(declare-fun lt!1299373 () Bool)

(assert (=> d!1093067 (= lt!1299373 (select (content!5816 rulesRec!198) rNSep!159))))

(declare-fun e!2315319 () Bool)

(assert (=> d!1093067 (= lt!1299373 e!2315319)))

(declare-fun res!1517842 () Bool)

(assert (=> d!1093067 (=> (not res!1517842) (not e!2315319))))

(assert (=> d!1093067 (= res!1517842 ((_ is Cons!39762) rulesRec!198))))

(assert (=> d!1093067 (= (contains!8073 rulesRec!198 rNSep!159) lt!1299373)))

(declare-fun b!3744519 () Bool)

(declare-fun e!2315320 () Bool)

(assert (=> b!3744519 (= e!2315319 e!2315320)))

(declare-fun res!1517841 () Bool)

(assert (=> b!3744519 (=> res!1517841 e!2315320)))

(assert (=> b!3744519 (= res!1517841 (= (h!45182 rulesRec!198) rNSep!159))))

(declare-fun b!3744520 () Bool)

(assert (=> b!3744520 (= e!2315320 (contains!8073 (t!302569 rulesRec!198) rNSep!159))))

(assert (= (and d!1093067 res!1517842) b!3744519))

(assert (= (and b!3744519 (not res!1517841)) b!3744520))

(declare-fun m!4237869 () Bool)

(assert (=> d!1093067 m!4237869))

(declare-fun m!4237871 () Bool)

(assert (=> d!1093067 m!4237871))

(assert (=> b!3744520 m!4237727))

(assert (=> b!3744358 d!1093067))

(declare-fun d!1093069 () Bool)

(declare-fun lt!1299374 () Bool)

(assert (=> d!1093069 (= lt!1299374 (select (content!5816 rules!4189) rSep!159))))

(declare-fun e!2315321 () Bool)

(assert (=> d!1093069 (= lt!1299374 e!2315321)))

(declare-fun res!1517844 () Bool)

(assert (=> d!1093069 (=> (not res!1517844) (not e!2315321))))

(assert (=> d!1093069 (= res!1517844 ((_ is Cons!39762) rules!4189))))

(assert (=> d!1093069 (= (contains!8073 rules!4189 rSep!159) lt!1299374)))

(declare-fun b!3744521 () Bool)

(declare-fun e!2315322 () Bool)

(assert (=> b!3744521 (= e!2315321 e!2315322)))

(declare-fun res!1517843 () Bool)

(assert (=> b!3744521 (=> res!1517843 e!2315322)))

(assert (=> b!3744521 (= res!1517843 (= (h!45182 rules!4189) rSep!159))))

(declare-fun b!3744522 () Bool)

(assert (=> b!3744522 (= e!2315322 (contains!8073 (t!302569 rules!4189) rSep!159))))

(assert (= (and d!1093069 res!1517844) b!3744521))

(assert (= (and b!3744521 (not res!1517843)) b!3744522))

(assert (=> d!1093069 m!4237827))

(declare-fun m!4237873 () Bool)

(assert (=> d!1093069 m!4237873))

(declare-fun m!4237875 () Bool)

(assert (=> b!3744522 m!4237875))

(assert (=> b!3744347 d!1093069))

(declare-fun b!3744536 () Bool)

(declare-fun e!2315325 () Bool)

(declare-fun tp!1141794 () Bool)

(declare-fun tp!1141793 () Bool)

(assert (=> b!3744536 (= e!2315325 (and tp!1141794 tp!1141793))))

(declare-fun b!3744533 () Bool)

(assert (=> b!3744533 (= e!2315325 tp_is_empty!18941)))

(declare-fun b!3744534 () Bool)

(declare-fun tp!1141796 () Bool)

(declare-fun tp!1141795 () Bool)

(assert (=> b!3744534 (= e!2315325 (and tp!1141796 tp!1141795))))

(declare-fun b!3744535 () Bool)

(declare-fun tp!1141797 () Bool)

(assert (=> b!3744535 (= e!2315325 tp!1141797)))

(assert (=> b!3744357 (= tp!1141724 e!2315325)))

(assert (= (and b!3744357 ((_ is ElementMatch!10963) (regex!6058 (h!45182 rulesRec!198)))) b!3744533))

(assert (= (and b!3744357 ((_ is Concat!17252) (regex!6058 (h!45182 rulesRec!198)))) b!3744534))

(assert (= (and b!3744357 ((_ is Star!10963) (regex!6058 (h!45182 rulesRec!198)))) b!3744535))

(assert (= (and b!3744357 ((_ is Union!10963) (regex!6058 (h!45182 rulesRec!198)))) b!3744536))

(declare-fun b!3744547 () Bool)

(declare-fun b_free!99501 () Bool)

(declare-fun b_next!100205 () Bool)

(assert (=> b!3744547 (= b_free!99501 (not b_next!100205))))

(declare-fun tp!1141806 () Bool)

(declare-fun b_and!277735 () Bool)

(assert (=> b!3744547 (= tp!1141806 b_and!277735)))

(declare-fun b_free!99503 () Bool)

(declare-fun b_next!100207 () Bool)

(assert (=> b!3744547 (= b_free!99503 (not b_next!100207))))

(declare-fun tp!1141807 () Bool)

(declare-fun b_and!277737 () Bool)

(assert (=> b!3744547 (= tp!1141807 b_and!277737)))

(declare-fun e!2315337 () Bool)

(assert (=> b!3744547 (= e!2315337 (and tp!1141806 tp!1141807))))

(declare-fun e!2315336 () Bool)

(declare-fun b!3744546 () Bool)

(declare-fun tp!1141809 () Bool)

(assert (=> b!3744546 (= e!2315336 (and tp!1141809 (inv!53302 (tag!6918 (h!45182 (t!302569 rules!4189)))) (inv!53304 (transformation!6058 (h!45182 (t!302569 rules!4189)))) e!2315337))))

(declare-fun b!3744545 () Bool)

(declare-fun e!2315334 () Bool)

(declare-fun tp!1141808 () Bool)

(assert (=> b!3744545 (= e!2315334 (and e!2315336 tp!1141808))))

(assert (=> b!3744355 (= tp!1141732 e!2315334)))

(assert (= b!3744546 b!3744547))

(assert (= b!3744545 b!3744546))

(assert (= (and b!3744355 ((_ is Cons!39762) (t!302569 rules!4189))) b!3744545))

(declare-fun m!4237877 () Bool)

(assert (=> b!3744546 m!4237877))

(declare-fun m!4237879 () Bool)

(assert (=> b!3744546 m!4237879))

(declare-fun b!3744551 () Bool)

(declare-fun e!2315338 () Bool)

(declare-fun tp!1141811 () Bool)

(declare-fun tp!1141810 () Bool)

(assert (=> b!3744551 (= e!2315338 (and tp!1141811 tp!1141810))))

(declare-fun b!3744548 () Bool)

(assert (=> b!3744548 (= e!2315338 tp_is_empty!18941)))

(declare-fun b!3744549 () Bool)

(declare-fun tp!1141813 () Bool)

(declare-fun tp!1141812 () Bool)

(assert (=> b!3744549 (= e!2315338 (and tp!1141813 tp!1141812))))

(declare-fun b!3744550 () Bool)

(declare-fun tp!1141814 () Bool)

(assert (=> b!3744550 (= e!2315338 tp!1141814)))

(assert (=> b!3744354 (= tp!1141723 e!2315338)))

(assert (= (and b!3744354 ((_ is ElementMatch!10963) (regex!6058 rSep!159))) b!3744548))

(assert (= (and b!3744354 ((_ is Concat!17252) (regex!6058 rSep!159))) b!3744549))

(assert (= (and b!3744354 ((_ is Star!10963) (regex!6058 rSep!159))) b!3744550))

(assert (= (and b!3744354 ((_ is Union!10963) (regex!6058 rSep!159))) b!3744551))

(declare-fun b!3744555 () Bool)

(declare-fun e!2315339 () Bool)

(declare-fun tp!1141816 () Bool)

(declare-fun tp!1141815 () Bool)

(assert (=> b!3744555 (= e!2315339 (and tp!1141816 tp!1141815))))

(declare-fun b!3744552 () Bool)

(assert (=> b!3744552 (= e!2315339 tp_is_empty!18941)))

(declare-fun b!3744553 () Bool)

(declare-fun tp!1141818 () Bool)

(declare-fun tp!1141817 () Bool)

(assert (=> b!3744553 (= e!2315339 (and tp!1141818 tp!1141817))))

(declare-fun b!3744554 () Bool)

(declare-fun tp!1141819 () Bool)

(assert (=> b!3744554 (= e!2315339 tp!1141819)))

(assert (=> b!3744349 (= tp!1141729 e!2315339)))

(assert (= (and b!3744349 ((_ is ElementMatch!10963) (regex!6058 rNSep!159))) b!3744552))

(assert (= (and b!3744349 ((_ is Concat!17252) (regex!6058 rNSep!159))) b!3744553))

(assert (= (and b!3744349 ((_ is Star!10963) (regex!6058 rNSep!159))) b!3744554))

(assert (= (and b!3744349 ((_ is Union!10963) (regex!6058 rNSep!159))) b!3744555))

(declare-fun b!3744559 () Bool)

(declare-fun e!2315340 () Bool)

(declare-fun tp!1141821 () Bool)

(declare-fun tp!1141820 () Bool)

(assert (=> b!3744559 (= e!2315340 (and tp!1141821 tp!1141820))))

(declare-fun b!3744556 () Bool)

(assert (=> b!3744556 (= e!2315340 tp_is_empty!18941)))

(declare-fun b!3744557 () Bool)

(declare-fun tp!1141823 () Bool)

(declare-fun tp!1141822 () Bool)

(assert (=> b!3744557 (= e!2315340 (and tp!1141823 tp!1141822))))

(declare-fun b!3744558 () Bool)

(declare-fun tp!1141824 () Bool)

(assert (=> b!3744558 (= e!2315340 tp!1141824)))

(assert (=> b!3744364 (= tp!1141734 e!2315340)))

(assert (= (and b!3744364 ((_ is ElementMatch!10963) (regex!6058 (h!45182 rules!4189)))) b!3744556))

(assert (= (and b!3744364 ((_ is Concat!17252) (regex!6058 (h!45182 rules!4189)))) b!3744557))

(assert (= (and b!3744364 ((_ is Star!10963) (regex!6058 (h!45182 rules!4189)))) b!3744558))

(assert (= (and b!3744364 ((_ is Union!10963) (regex!6058 (h!45182 rules!4189)))) b!3744559))

(declare-fun b!3744562 () Bool)

(declare-fun b_free!99505 () Bool)

(declare-fun b_next!100209 () Bool)

(assert (=> b!3744562 (= b_free!99505 (not b_next!100209))))

(declare-fun tp!1141825 () Bool)

(declare-fun b_and!277739 () Bool)

(assert (=> b!3744562 (= tp!1141825 b_and!277739)))

(declare-fun b_free!99507 () Bool)

(declare-fun b_next!100211 () Bool)

(assert (=> b!3744562 (= b_free!99507 (not b_next!100211))))

(declare-fun tp!1141826 () Bool)

(declare-fun b_and!277741 () Bool)

(assert (=> b!3744562 (= tp!1141826 b_and!277741)))

(declare-fun e!2315344 () Bool)

(assert (=> b!3744562 (= e!2315344 (and tp!1141825 tp!1141826))))

(declare-fun tp!1141828 () Bool)

(declare-fun b!3744561 () Bool)

(declare-fun e!2315343 () Bool)

(assert (=> b!3744561 (= e!2315343 (and tp!1141828 (inv!53302 (tag!6918 (h!45182 (t!302569 rulesRec!198)))) (inv!53304 (transformation!6058 (h!45182 (t!302569 rulesRec!198)))) e!2315344))))

(declare-fun b!3744560 () Bool)

(declare-fun e!2315341 () Bool)

(declare-fun tp!1141827 () Bool)

(assert (=> b!3744560 (= e!2315341 (and e!2315343 tp!1141827))))

(assert (=> b!3744359 (= tp!1141727 e!2315341)))

(assert (= b!3744561 b!3744562))

(assert (= b!3744560 b!3744561))

(assert (= (and b!3744359 ((_ is Cons!39762) (t!302569 rulesRec!198))) b!3744560))

(declare-fun m!4237881 () Bool)

(assert (=> b!3744561 m!4237881))

(declare-fun m!4237883 () Bool)

(assert (=> b!3744561 m!4237883))

(check-sat b_and!277715 (not b_next!100187) (not b!3744557) (not d!1093065) (not b!3744378) (not b!3744396) (not b_next!100189) b_and!277713 (not b_next!100207) (not b!3744554) b_and!277737 (not d!1093019) (not b!3744520) (not b!3744546) (not b!3744559) (not b_next!100211) (not d!1093013) (not b!3744549) b_and!277717 (not b!3744534) (not b_next!100195) (not d!1093025) (not b!3744419) (not d!1093045) (not d!1093069) (not b!3744535) (not b_next!100181) (not b_next!100185) (not bm!274935) (not b!3744553) b_and!277725 (not b!3744473) (not d!1093027) (not b!3744555) (not d!1093063) (not b!3744558) (not b!3744510) (not b!3744470) b_and!277711 b_and!277739 (not b_next!100205) (not bm!274934) (not b!3744536) b_and!277721 (not b!3744485) (not b!3744561) (not d!1093067) b_and!277735 (not b!3744387) b_and!277741 b_and!277723 (not b!3744522) (not b!3744545) (not b_next!100193) (not b!3744466) tp_is_empty!18941 (not b!3744474) (not bm!274936) (not b!3744560) (not b!3744397) b_and!277719 (not b_next!100183) (not b!3744377) (not b_next!100191) (not b!3744551) (not d!1093055) (not b_next!100209) (not b!3744550))
(check-sat (not b_next!100195) (not b_next!100181) (not b_next!100185) b_and!277725 b_and!277715 (not b_next!100187) (not b_next!100205) b_and!277721 b_and!277735 (not b_next!100193) (not b_next!100189) b_and!277713 b_and!277719 (not b_next!100209) (not b_next!100207) b_and!277737 (not b_next!100211) b_and!277717 b_and!277711 b_and!277739 b_and!277741 b_and!277723 (not b_next!100183) (not b_next!100191))
