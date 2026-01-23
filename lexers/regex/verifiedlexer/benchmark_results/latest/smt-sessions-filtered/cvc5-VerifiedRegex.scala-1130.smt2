; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!59038 () Bool)

(assert start!59038)

(declare-fun b!616172 () Bool)

(declare-fun b_free!17637 () Bool)

(declare-fun b_next!17653 () Bool)

(assert (=> b!616172 (= b_free!17637 (not b_next!17653))))

(declare-fun tp!190409 () Bool)

(declare-fun b_and!61135 () Bool)

(assert (=> b!616172 (= tp!190409 b_and!61135)))

(declare-fun b_free!17639 () Bool)

(declare-fun b_next!17655 () Bool)

(assert (=> b!616172 (= b_free!17639 (not b_next!17655))))

(declare-fun tp!190414 () Bool)

(declare-fun b_and!61137 () Bool)

(assert (=> b!616172 (= tp!190414 b_and!61137)))

(declare-fun b!616181 () Bool)

(declare-fun b_free!17641 () Bool)

(declare-fun b_next!17657 () Bool)

(assert (=> b!616181 (= b_free!17641 (not b_next!17657))))

(declare-fun tp!190417 () Bool)

(declare-fun b_and!61139 () Bool)

(assert (=> b!616181 (= tp!190417 b_and!61139)))

(declare-fun b_free!17643 () Bool)

(declare-fun b_next!17659 () Bool)

(assert (=> b!616181 (= b_free!17643 (not b_next!17659))))

(declare-fun tp!190413 () Bool)

(declare-fun b_and!61141 () Bool)

(assert (=> b!616181 (= tp!190413 b_and!61141)))

(declare-fun e!373629 () Bool)

(assert (=> b!616172 (= e!373629 (and tp!190409 tp!190414))))

(declare-fun b!616173 () Bool)

(declare-fun e!373625 () Bool)

(declare-fun e!373622 () Bool)

(declare-fun tp!190418 () Bool)

(assert (=> b!616173 (= e!373625 (and e!373622 tp!190418))))

(declare-fun e!373621 () Bool)

(declare-fun tp!190410 () Bool)

(declare-datatypes ((C!4082 0))(
  ( (C!4083 (val!2267 Int)) )
))
(declare-datatypes ((Regex!1580 0))(
  ( (ElementMatch!1580 (c!113696 C!4082)) (Concat!2850 (regOne!3672 Regex!1580) (regTwo!3672 Regex!1580)) (EmptyExpr!1580) (Star!1580 (reg!1909 Regex!1580)) (EmptyLang!1580) (Union!1580 (regOne!3673 Regex!1580) (regTwo!3673 Regex!1580)) )
))
(declare-datatypes ((List!6196 0))(
  ( (Nil!6186) (Cons!6186 (h!11587 (_ BitVec 16)) (t!81423 List!6196)) )
))
(declare-datatypes ((String!8095 0))(
  ( (String!8096 (value!40353 String)) )
))
(declare-datatypes ((TokenValue!1270 0))(
  ( (FloatLiteralValue!2540 (text!9335 List!6196)) (TokenValueExt!1269 (__x!4438 Int)) (Broken!6350 (value!40354 List!6196)) (Object!1279) (End!1270) (Def!1270) (Underscore!1270) (Match!1270) (Else!1270) (Error!1270) (Case!1270) (If!1270) (Extends!1270) (Abstract!1270) (Class!1270) (Val!1270) (DelimiterValue!2540 (del!1330 List!6196)) (KeywordValue!1276 (value!40355 List!6196)) (CommentValue!2540 (value!40356 List!6196)) (WhitespaceValue!2540 (value!40357 List!6196)) (IndentationValue!1270 (value!40358 List!6196)) (String!8097) (Int32!1270) (Broken!6351 (value!40359 List!6196)) (Boolean!1271) (Unit!11356) (OperatorValue!1273 (op!1330 List!6196)) (IdentifierValue!2540 (value!40360 List!6196)) (IdentifierValue!2541 (value!40361 List!6196)) (WhitespaceValue!2541 (value!40362 List!6196)) (True!2540) (False!2540) (Broken!6352 (value!40363 List!6196)) (Broken!6353 (value!40364 List!6196)) (True!2541) (RightBrace!1270) (RightBracket!1270) (Colon!1270) (Null!1270) (Comma!1270) (LeftBracket!1270) (False!2541) (LeftBrace!1270) (ImaginaryLiteralValue!1270 (text!9336 List!6196)) (StringLiteralValue!3810 (value!40365 List!6196)) (EOFValue!1270 (value!40366 List!6196)) (IdentValue!1270 (value!40367 List!6196)) (DelimiterValue!2541 (value!40368 List!6196)) (DedentValue!1270 (value!40369 List!6196)) (NewLineValue!1270 (value!40370 List!6196)) (IntegerValue!3810 (value!40371 (_ BitVec 32)) (text!9337 List!6196)) (IntegerValue!3811 (value!40372 Int) (text!9338 List!6196)) (Times!1270) (Or!1270) (Equal!1270) (Minus!1270) (Broken!6354 (value!40373 List!6196)) (And!1270) (Div!1270) (LessEqual!1270) (Mod!1270) (Concat!2851) (Not!1270) (Plus!1270) (SpaceValue!1270 (value!40374 List!6196)) (IntegerValue!3812 (value!40375 Int) (text!9339 List!6196)) (StringLiteralValue!3811 (text!9340 List!6196)) (FloatLiteralValue!2541 (text!9341 List!6196)) (BytesLiteralValue!1270 (value!40376 List!6196)) (CommentValue!2541 (value!40377 List!6196)) (StringLiteralValue!3812 (value!40378 List!6196)) (ErrorTokenValue!1270 (msg!1331 List!6196)) )
))
(declare-datatypes ((List!6197 0))(
  ( (Nil!6187) (Cons!6187 (h!11588 C!4082) (t!81424 List!6197)) )
))
(declare-datatypes ((IArray!3927 0))(
  ( (IArray!3928 (innerList!2021 List!6197)) )
))
(declare-datatypes ((Conc!1963 0))(
  ( (Node!1963 (left!4935 Conc!1963) (right!5265 Conc!1963) (csize!4156 Int) (cheight!2174 Int)) (Leaf!3094 (xs!4600 IArray!3927) (csize!4157 Int)) (Empty!1963) )
))
(declare-datatypes ((BalanceConc!3934 0))(
  ( (BalanceConc!3935 (c!113697 Conc!1963)) )
))
(declare-datatypes ((TokenValueInjection!2308 0))(
  ( (TokenValueInjection!2309 (toValue!2157 Int) (toChars!2016 Int)) )
))
(declare-datatypes ((Rule!2292 0))(
  ( (Rule!2293 (regex!1246 Regex!1580) (tag!1508 String!8095) (isSeparator!1246 Bool) (transformation!1246 TokenValueInjection!2308)) )
))
(declare-datatypes ((Token!2228 0))(
  ( (Token!2229 (value!40379 TokenValue!1270) (rule!2040 Rule!2292) (size!4853 Int) (originalCharacters!1285 List!6197)) )
))
(declare-fun token!491 () Token!2228)

(declare-fun b!616174 () Bool)

(declare-fun e!373626 () Bool)

(declare-fun inv!7876 (String!8095) Bool)

(declare-fun inv!7879 (TokenValueInjection!2308) Bool)

(assert (=> b!616174 (= e!373626 (and tp!190410 (inv!7876 (tag!1508 (rule!2040 token!491))) (inv!7879 (transformation!1246 (rule!2040 token!491))) e!373621))))

(declare-fun b!616175 () Bool)

(declare-fun res!268239 () Bool)

(declare-fun e!373623 () Bool)

(assert (=> b!616175 (=> (not res!268239) (not e!373623))))

(declare-datatypes ((LexerInterface!1132 0))(
  ( (LexerInterfaceExt!1129 (__x!4439 Int)) (Lexer!1130) )
))
(declare-fun thiss!22590 () LexerInterface!1132)

(declare-datatypes ((List!6198 0))(
  ( (Nil!6188) (Cons!6188 (h!11589 Rule!2292) (t!81425 List!6198)) )
))
(declare-fun rules!3103 () List!6198)

(declare-fun rulesInvariant!1095 (LexerInterface!1132 List!6198) Bool)

(assert (=> b!616175 (= res!268239 (rulesInvariant!1095 thiss!22590 rules!3103))))

(declare-fun b!616176 () Bool)

(declare-fun res!268238 () Bool)

(assert (=> b!616176 (=> (not res!268238) (not e!373623))))

(declare-fun input!2705 () List!6197)

(declare-fun list!2605 (BalanceConc!3934) List!6197)

(declare-fun charsOf!875 (Token!2228) BalanceConc!3934)

(assert (=> b!616176 (= res!268238 (= (list!2605 (charsOf!875 token!491)) input!2705))))

(declare-fun b!616177 () Bool)

(declare-fun e!373633 () Bool)

(declare-fun tp_is_empty!3515 () Bool)

(declare-fun tp!190415 () Bool)

(assert (=> b!616177 (= e!373633 (and tp_is_empty!3515 tp!190415))))

(declare-fun b!616178 () Bool)

(declare-fun res!268237 () Bool)

(assert (=> b!616178 (=> (not res!268237) (not e!373623))))

(declare-fun isEmpty!4465 (List!6198) Bool)

(assert (=> b!616178 (= res!268237 (not (isEmpty!4465 rules!3103)))))

(declare-fun b!616179 () Bool)

(declare-fun res!268235 () Bool)

(declare-fun e!373632 () Bool)

(assert (=> b!616179 (=> (not res!268235) (not e!373632))))

(declare-datatypes ((tuple2!7032 0))(
  ( (tuple2!7033 (_1!3780 Token!2228) (_2!3780 List!6197)) )
))
(declare-datatypes ((Option!1597 0))(
  ( (None!1596) (Some!1596 (v!16513 tuple2!7032)) )
))
(declare-fun maxPrefix!830 (LexerInterface!1132 List!6198 List!6197) Option!1597)

(assert (=> b!616179 (= res!268235 (not (is-Some!1596 (maxPrefix!830 thiss!22590 rules!3103 input!2705))))))

(declare-fun b!616180 () Bool)

(declare-fun e!373630 () Bool)

(assert (=> b!616180 (= e!373623 e!373630)))

(declare-fun res!268233 () Bool)

(assert (=> b!616180 (=> (not res!268233) (not e!373630))))

(declare-fun lt!264341 () Option!1597)

(declare-fun isDefined!1408 (Option!1597) Bool)

(assert (=> b!616180 (= res!268233 (isDefined!1408 lt!264341))))

(declare-fun suffix!1342 () List!6197)

(declare-fun ++!1734 (List!6197 List!6197) List!6197)

(assert (=> b!616180 (= lt!264341 (maxPrefix!830 thiss!22590 rules!3103 (++!1734 input!2705 suffix!1342)))))

(assert (=> b!616181 (= e!373621 (and tp!190417 tp!190413))))

(declare-fun b!616182 () Bool)

(assert (=> b!616182 (= e!373632 (not false))))

(declare-fun matchR!681 (Regex!1580 List!6197) Bool)

(assert (=> b!616182 (not (matchR!681 (regex!1246 (rule!2040 token!491)) input!2705))))

(declare-datatypes ((Unit!11357 0))(
  ( (Unit!11358) )
))
(declare-fun lt!264343 () Unit!11357)

(declare-fun lemmaMaxPrefNoneThenNoRuleMatches!3 (LexerInterface!1132 List!6198 Rule!2292 List!6197 List!6197) Unit!11357)

(assert (=> b!616182 (= lt!264343 (lemmaMaxPrefNoneThenNoRuleMatches!3 thiss!22590 rules!3103 (rule!2040 token!491) input!2705 input!2705))))

(declare-fun b!616183 () Bool)

(declare-fun e!373628 () Bool)

(declare-fun tp!190416 () Bool)

(assert (=> b!616183 (= e!373628 (and tp_is_empty!3515 tp!190416))))

(declare-fun res!268236 () Bool)

(assert (=> start!59038 (=> (not res!268236) (not e!373623))))

(assert (=> start!59038 (= res!268236 (is-Lexer!1130 thiss!22590))))

(assert (=> start!59038 e!373623))

(assert (=> start!59038 e!373633))

(assert (=> start!59038 e!373625))

(declare-fun e!373624 () Bool)

(declare-fun inv!7880 (Token!2228) Bool)

(assert (=> start!59038 (and (inv!7880 token!491) e!373624)))

(assert (=> start!59038 true))

(assert (=> start!59038 e!373628))

(declare-fun b!616184 () Bool)

(declare-fun tp!190412 () Bool)

(declare-fun inv!21 (TokenValue!1270) Bool)

(assert (=> b!616184 (= e!373624 (and (inv!21 (value!40379 token!491)) e!373626 tp!190412))))

(declare-fun b!616185 () Bool)

(declare-fun res!268232 () Bool)

(assert (=> b!616185 (=> (not res!268232) (not e!373623))))

(declare-fun isEmpty!4466 (List!6197) Bool)

(assert (=> b!616185 (= res!268232 (not (isEmpty!4466 input!2705)))))

(declare-fun tp!190411 () Bool)

(declare-fun b!616186 () Bool)

(assert (=> b!616186 (= e!373622 (and tp!190411 (inv!7876 (tag!1508 (h!11589 rules!3103))) (inv!7879 (transformation!1246 (h!11589 rules!3103))) e!373629))))

(declare-fun b!616187 () Bool)

(assert (=> b!616187 (= e!373630 e!373632)))

(declare-fun res!268234 () Bool)

(assert (=> b!616187 (=> (not res!268234) (not e!373632))))

(declare-fun lt!264342 () tuple2!7032)

(assert (=> b!616187 (= res!268234 (and (= (_1!3780 lt!264342) token!491) (= (_2!3780 lt!264342) suffix!1342)))))

(declare-fun get!2384 (Option!1597) tuple2!7032)

(assert (=> b!616187 (= lt!264342 (get!2384 lt!264341))))

(assert (= (and start!59038 res!268236) b!616178))

(assert (= (and b!616178 res!268237) b!616175))

(assert (= (and b!616175 res!268239) b!616185))

(assert (= (and b!616185 res!268232) b!616176))

(assert (= (and b!616176 res!268238) b!616180))

(assert (= (and b!616180 res!268233) b!616187))

(assert (= (and b!616187 res!268234) b!616179))

(assert (= (and b!616179 res!268235) b!616182))

(assert (= (and start!59038 (is-Cons!6187 suffix!1342)) b!616177))

(assert (= b!616186 b!616172))

(assert (= b!616173 b!616186))

(assert (= (and start!59038 (is-Cons!6188 rules!3103)) b!616173))

(assert (= b!616174 b!616181))

(assert (= b!616184 b!616174))

(assert (= start!59038 b!616184))

(assert (= (and start!59038 (is-Cons!6187 input!2705)) b!616183))

(declare-fun m!884881 () Bool)

(assert (=> b!616179 m!884881))

(declare-fun m!884883 () Bool)

(assert (=> b!616178 m!884883))

(declare-fun m!884885 () Bool)

(assert (=> start!59038 m!884885))

(declare-fun m!884887 () Bool)

(assert (=> b!616174 m!884887))

(declare-fun m!884889 () Bool)

(assert (=> b!616174 m!884889))

(declare-fun m!884891 () Bool)

(assert (=> b!616185 m!884891))

(declare-fun m!884893 () Bool)

(assert (=> b!616187 m!884893))

(declare-fun m!884895 () Bool)

(assert (=> b!616176 m!884895))

(assert (=> b!616176 m!884895))

(declare-fun m!884897 () Bool)

(assert (=> b!616176 m!884897))

(declare-fun m!884899 () Bool)

(assert (=> b!616182 m!884899))

(declare-fun m!884901 () Bool)

(assert (=> b!616182 m!884901))

(declare-fun m!884903 () Bool)

(assert (=> b!616175 m!884903))

(declare-fun m!884905 () Bool)

(assert (=> b!616184 m!884905))

(declare-fun m!884907 () Bool)

(assert (=> b!616180 m!884907))

(declare-fun m!884909 () Bool)

(assert (=> b!616180 m!884909))

(assert (=> b!616180 m!884909))

(declare-fun m!884911 () Bool)

(assert (=> b!616180 m!884911))

(declare-fun m!884913 () Bool)

(assert (=> b!616186 m!884913))

(declare-fun m!884915 () Bool)

(assert (=> b!616186 m!884915))

(push 1)

(assert (not b!616182))

(assert (not b!616187))

(assert (not b!616173))

(assert (not b_next!17659))

(assert (not b_next!17657))

(assert b_and!61137)

(assert (not b!616184))

(assert tp_is_empty!3515)

(assert (not b!616175))

(assert (not b!616183))

(assert (not b!616186))

(assert (not b!616178))

(assert (not b!616174))

(assert (not b!616180))

(assert (not b!616185))

(assert (not b!616176))

(assert (not b_next!17655))

(assert b_and!61141)

(assert (not b_next!17653))

(assert (not start!59038))

(assert (not b!616177))

(assert b_and!61135)

(assert b_and!61139)

(assert (not b!616179))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!17659))

(assert (not b_next!17657))

(assert b_and!61137)

(assert (not b_next!17655))

(assert b_and!61135)

(assert b_and!61139)

(assert b_and!61141)

(assert (not b_next!17653))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!616267 () Bool)

(declare-fun res!268290 () Bool)

(declare-fun e!373695 () Bool)

(assert (=> b!616267 (=> (not res!268290) (not e!373695))))

(declare-fun call!41040 () Bool)

(assert (=> b!616267 (= res!268290 (not call!41040))))

(declare-fun b!616268 () Bool)

(declare-fun res!268292 () Bool)

(declare-fun e!373699 () Bool)

(assert (=> b!616268 (=> res!268292 e!373699)))

(declare-fun tail!830 (List!6197) List!6197)

(assert (=> b!616268 (= res!268292 (not (isEmpty!4466 (tail!830 input!2705))))))

(declare-fun b!616269 () Bool)

(declare-fun e!373693 () Bool)

(declare-fun nullable!454 (Regex!1580) Bool)

(assert (=> b!616269 (= e!373693 (nullable!454 (regex!1246 (rule!2040 token!491))))))

(declare-fun d!216527 () Bool)

(declare-fun e!373696 () Bool)

(assert (=> d!216527 e!373696))

(declare-fun c!113707 () Bool)

(assert (=> d!216527 (= c!113707 (is-EmptyExpr!1580 (regex!1246 (rule!2040 token!491))))))

(declare-fun lt!264355 () Bool)

(assert (=> d!216527 (= lt!264355 e!373693)))

(declare-fun c!113708 () Bool)

(assert (=> d!216527 (= c!113708 (isEmpty!4466 input!2705))))

(declare-fun validRegex!549 (Regex!1580) Bool)

(assert (=> d!216527 (validRegex!549 (regex!1246 (rule!2040 token!491)))))

(assert (=> d!216527 (= (matchR!681 (regex!1246 (rule!2040 token!491)) input!2705) lt!264355)))

(declare-fun b!616270 () Bool)

(declare-fun res!268295 () Bool)

(declare-fun e!373697 () Bool)

(assert (=> b!616270 (=> res!268295 e!373697)))

(assert (=> b!616270 (= res!268295 e!373695)))

(declare-fun res!268293 () Bool)

(assert (=> b!616270 (=> (not res!268293) (not e!373695))))

(assert (=> b!616270 (= res!268293 lt!264355)))

(declare-fun b!616271 () Bool)

(assert (=> b!616271 (= e!373696 (= lt!264355 call!41040))))

(declare-fun b!616272 () Bool)

(declare-fun res!268296 () Bool)

(assert (=> b!616272 (=> res!268296 e!373697)))

(assert (=> b!616272 (= res!268296 (not (is-ElementMatch!1580 (regex!1246 (rule!2040 token!491)))))))

(declare-fun e!373694 () Bool)

(assert (=> b!616272 (= e!373694 e!373697)))

(declare-fun b!616273 () Bool)

(declare-fun e!373698 () Bool)

(assert (=> b!616273 (= e!373697 e!373698)))

(declare-fun res!268294 () Bool)

(assert (=> b!616273 (=> (not res!268294) (not e!373698))))

(assert (=> b!616273 (= res!268294 (not lt!264355))))

(declare-fun b!616274 () Bool)

(assert (=> b!616274 (= e!373694 (not lt!264355))))

(declare-fun b!616275 () Bool)

(declare-fun head!1301 (List!6197) C!4082)

(assert (=> b!616275 (= e!373695 (= (head!1301 input!2705) (c!113696 (regex!1246 (rule!2040 token!491)))))))

(declare-fun b!616276 () Bool)

(assert (=> b!616276 (= e!373699 (not (= (head!1301 input!2705) (c!113696 (regex!1246 (rule!2040 token!491))))))))

(declare-fun bm!41035 () Bool)

(assert (=> bm!41035 (= call!41040 (isEmpty!4466 input!2705))))

(declare-fun b!616277 () Bool)

(declare-fun derivativeStep!339 (Regex!1580 C!4082) Regex!1580)

(assert (=> b!616277 (= e!373693 (matchR!681 (derivativeStep!339 (regex!1246 (rule!2040 token!491)) (head!1301 input!2705)) (tail!830 input!2705)))))

(declare-fun b!616278 () Bool)

(assert (=> b!616278 (= e!373696 e!373694)))

(declare-fun c!113709 () Bool)

(assert (=> b!616278 (= c!113709 (is-EmptyLang!1580 (regex!1246 (rule!2040 token!491))))))

(declare-fun b!616279 () Bool)

(assert (=> b!616279 (= e!373698 e!373699)))

(declare-fun res!268297 () Bool)

(assert (=> b!616279 (=> res!268297 e!373699)))

(assert (=> b!616279 (= res!268297 call!41040)))

(declare-fun b!616280 () Bool)

(declare-fun res!268291 () Bool)

(assert (=> b!616280 (=> (not res!268291) (not e!373695))))

(assert (=> b!616280 (= res!268291 (isEmpty!4466 (tail!830 input!2705)))))

(assert (= (and d!216527 c!113708) b!616269))

(assert (= (and d!216527 (not c!113708)) b!616277))

(assert (= (and d!216527 c!113707) b!616271))

(assert (= (and d!216527 (not c!113707)) b!616278))

(assert (= (and b!616278 c!113709) b!616274))

(assert (= (and b!616278 (not c!113709)) b!616272))

(assert (= (and b!616272 (not res!268296)) b!616270))

(assert (= (and b!616270 res!268293) b!616267))

(assert (= (and b!616267 res!268290) b!616280))

(assert (= (and b!616280 res!268291) b!616275))

(assert (= (and b!616270 (not res!268295)) b!616273))

(assert (= (and b!616273 res!268294) b!616279))

(assert (= (and b!616279 (not res!268297)) b!616268))

(assert (= (and b!616268 (not res!268292)) b!616276))

(assert (= (or b!616271 b!616267 b!616279) bm!41035))

(assert (=> d!216527 m!884891))

(declare-fun m!884957 () Bool)

(assert (=> d!216527 m!884957))

(declare-fun m!884959 () Bool)

(assert (=> b!616269 m!884959))

(assert (=> bm!41035 m!884891))

(declare-fun m!884961 () Bool)

(assert (=> b!616275 m!884961))

(assert (=> b!616277 m!884961))

(assert (=> b!616277 m!884961))

(declare-fun m!884963 () Bool)

(assert (=> b!616277 m!884963))

(declare-fun m!884965 () Bool)

(assert (=> b!616277 m!884965))

(assert (=> b!616277 m!884963))

(assert (=> b!616277 m!884965))

(declare-fun m!884967 () Bool)

(assert (=> b!616277 m!884967))

(assert (=> b!616280 m!884965))

(assert (=> b!616280 m!884965))

(declare-fun m!884969 () Bool)

(assert (=> b!616280 m!884969))

(assert (=> b!616276 m!884961))

(assert (=> b!616268 m!884965))

(assert (=> b!616268 m!884965))

(assert (=> b!616268 m!884969))

(assert (=> b!616182 d!216527))

(declare-fun d!216533 () Bool)

(assert (=> d!216533 (not (matchR!681 (regex!1246 (rule!2040 token!491)) input!2705))))

(declare-fun lt!264360 () Unit!11357)

(declare-fun choose!4525 (LexerInterface!1132 List!6198 Rule!2292 List!6197 List!6197) Unit!11357)

(assert (=> d!216533 (= lt!264360 (choose!4525 thiss!22590 rules!3103 (rule!2040 token!491) input!2705 input!2705))))

(declare-fun isPrefix!874 (List!6197 List!6197) Bool)

(assert (=> d!216533 (isPrefix!874 input!2705 input!2705)))

(assert (=> d!216533 (= (lemmaMaxPrefNoneThenNoRuleMatches!3 thiss!22590 rules!3103 (rule!2040 token!491) input!2705 input!2705) lt!264360)))

(declare-fun bs!71820 () Bool)

(assert (= bs!71820 d!216533))

(assert (=> bs!71820 m!884899))

(declare-fun m!884971 () Bool)

(assert (=> bs!71820 m!884971))

(declare-fun m!884973 () Bool)

(assert (=> bs!71820 m!884973))

(assert (=> b!616182 d!216533))

(declare-fun d!216535 () Bool)

(declare-fun res!268318 () Bool)

(declare-fun e!373716 () Bool)

(assert (=> d!216535 (=> (not res!268318) (not e!373716))))

(assert (=> d!216535 (= res!268318 (not (isEmpty!4466 (originalCharacters!1285 token!491))))))

(assert (=> d!216535 (= (inv!7880 token!491) e!373716)))

(declare-fun b!616313 () Bool)

(declare-fun res!268319 () Bool)

(assert (=> b!616313 (=> (not res!268319) (not e!373716))))

(declare-fun dynLambda!3577 (Int TokenValue!1270) BalanceConc!3934)

(assert (=> b!616313 (= res!268319 (= (originalCharacters!1285 token!491) (list!2605 (dynLambda!3577 (toChars!2016 (transformation!1246 (rule!2040 token!491))) (value!40379 token!491)))))))

(declare-fun b!616314 () Bool)

(declare-fun size!4855 (List!6197) Int)

(assert (=> b!616314 (= e!373716 (= (size!4853 token!491) (size!4855 (originalCharacters!1285 token!491))))))

(assert (= (and d!216535 res!268318) b!616313))

(assert (= (and b!616313 res!268319) b!616314))

(declare-fun b_lambda!24501 () Bool)

(assert (=> (not b_lambda!24501) (not b!616313)))

(declare-fun tb!53755 () Bool)

(declare-fun t!81430 () Bool)

(assert (=> (and b!616172 (= (toChars!2016 (transformation!1246 (h!11589 rules!3103))) (toChars!2016 (transformation!1246 (rule!2040 token!491)))) t!81430) tb!53755))

(declare-fun b!616319 () Bool)

(declare-fun e!373719 () Bool)

(declare-fun tp!190451 () Bool)

(declare-fun inv!7883 (Conc!1963) Bool)

(assert (=> b!616319 (= e!373719 (and (inv!7883 (c!113697 (dynLambda!3577 (toChars!2016 (transformation!1246 (rule!2040 token!491))) (value!40379 token!491)))) tp!190451))))

(declare-fun result!60566 () Bool)

(declare-fun inv!7884 (BalanceConc!3934) Bool)

(assert (=> tb!53755 (= result!60566 (and (inv!7884 (dynLambda!3577 (toChars!2016 (transformation!1246 (rule!2040 token!491))) (value!40379 token!491))) e!373719))))

(assert (= tb!53755 b!616319))

(declare-fun m!884975 () Bool)

(assert (=> b!616319 m!884975))

(declare-fun m!884977 () Bool)

(assert (=> tb!53755 m!884977))

(assert (=> b!616313 t!81430))

(declare-fun b_and!61151 () Bool)

(assert (= b_and!61137 (and (=> t!81430 result!60566) b_and!61151)))

(declare-fun t!81432 () Bool)

(declare-fun tb!53757 () Bool)

(assert (=> (and b!616181 (= (toChars!2016 (transformation!1246 (rule!2040 token!491))) (toChars!2016 (transformation!1246 (rule!2040 token!491)))) t!81432) tb!53757))

(declare-fun result!60570 () Bool)

(assert (= result!60570 result!60566))

(assert (=> b!616313 t!81432))

(declare-fun b_and!61153 () Bool)

(assert (= b_and!61141 (and (=> t!81432 result!60570) b_and!61153)))

(declare-fun m!884979 () Bool)

(assert (=> d!216535 m!884979))

(declare-fun m!884981 () Bool)

(assert (=> b!616313 m!884981))

(assert (=> b!616313 m!884981))

(declare-fun m!884983 () Bool)

(assert (=> b!616313 m!884983))

(declare-fun m!884985 () Bool)

(assert (=> b!616314 m!884985))

(assert (=> start!59038 d!216535))

(declare-fun d!216537 () Bool)

(declare-fun isEmpty!4469 (Option!1597) Bool)

(assert (=> d!216537 (= (isDefined!1408 lt!264341) (not (isEmpty!4469 lt!264341)))))

(declare-fun bs!71821 () Bool)

(assert (= bs!71821 d!216537))

(declare-fun m!884987 () Bool)

(assert (=> bs!71821 m!884987))

(assert (=> b!616180 d!216537))

(declare-fun call!41046 () Option!1597)

(declare-fun bm!41041 () Bool)

(declare-fun maxPrefixOneRule!491 (LexerInterface!1132 Rule!2292 List!6197) Option!1597)

(assert (=> bm!41041 (= call!41046 (maxPrefixOneRule!491 thiss!22590 (h!11589 rules!3103) (++!1734 input!2705 suffix!1342)))))

(declare-fun b!616352 () Bool)

(declare-fun e!373734 () Bool)

(declare-fun lt!264376 () Option!1597)

(declare-fun contains!1462 (List!6198 Rule!2292) Bool)

(assert (=> b!616352 (= e!373734 (contains!1462 rules!3103 (rule!2040 (_1!3780 (get!2384 lt!264376)))))))

(declare-fun b!616353 () Bool)

(declare-fun res!268347 () Bool)

(assert (=> b!616353 (=> (not res!268347) (not e!373734))))

(assert (=> b!616353 (= res!268347 (< (size!4855 (_2!3780 (get!2384 lt!264376))) (size!4855 (++!1734 input!2705 suffix!1342))))))

(declare-fun b!616354 () Bool)

(declare-fun e!373735 () Option!1597)

(assert (=> b!616354 (= e!373735 call!41046)))

(declare-fun b!616355 () Bool)

(declare-fun res!268348 () Bool)

(assert (=> b!616355 (=> (not res!268348) (not e!373734))))

(assert (=> b!616355 (= res!268348 (= (++!1734 (list!2605 (charsOf!875 (_1!3780 (get!2384 lt!264376)))) (_2!3780 (get!2384 lt!264376))) (++!1734 input!2705 suffix!1342)))))

(declare-fun b!616357 () Bool)

(declare-fun res!268346 () Bool)

(assert (=> b!616357 (=> (not res!268346) (not e!373734))))

(assert (=> b!616357 (= res!268346 (= (list!2605 (charsOf!875 (_1!3780 (get!2384 lt!264376)))) (originalCharacters!1285 (_1!3780 (get!2384 lt!264376)))))))

(declare-fun b!616358 () Bool)

(declare-fun res!268343 () Bool)

(assert (=> b!616358 (=> (not res!268343) (not e!373734))))

(declare-fun apply!1497 (TokenValueInjection!2308 BalanceConc!3934) TokenValue!1270)

(declare-fun seqFromList!1420 (List!6197) BalanceConc!3934)

(assert (=> b!616358 (= res!268343 (= (value!40379 (_1!3780 (get!2384 lt!264376))) (apply!1497 (transformation!1246 (rule!2040 (_1!3780 (get!2384 lt!264376)))) (seqFromList!1420 (originalCharacters!1285 (_1!3780 (get!2384 lt!264376)))))))))

(declare-fun b!616359 () Bool)

(declare-fun lt!264377 () Option!1597)

(declare-fun lt!264378 () Option!1597)

(assert (=> b!616359 (= e!373735 (ite (and (is-None!1596 lt!264377) (is-None!1596 lt!264378)) None!1596 (ite (is-None!1596 lt!264378) lt!264377 (ite (is-None!1596 lt!264377) lt!264378 (ite (>= (size!4853 (_1!3780 (v!16513 lt!264377))) (size!4853 (_1!3780 (v!16513 lt!264378)))) lt!264377 lt!264378)))))))

(assert (=> b!616359 (= lt!264377 call!41046)))

(assert (=> b!616359 (= lt!264378 (maxPrefix!830 thiss!22590 (t!81425 rules!3103) (++!1734 input!2705 suffix!1342)))))

(declare-fun b!616360 () Bool)

(declare-fun res!268345 () Bool)

(assert (=> b!616360 (=> (not res!268345) (not e!373734))))

(assert (=> b!616360 (= res!268345 (matchR!681 (regex!1246 (rule!2040 (_1!3780 (get!2384 lt!264376)))) (list!2605 (charsOf!875 (_1!3780 (get!2384 lt!264376))))))))

(declare-fun d!216539 () Bool)

(declare-fun e!373733 () Bool)

(assert (=> d!216539 e!373733))

(declare-fun res!268344 () Bool)

(assert (=> d!216539 (=> res!268344 e!373733)))

(assert (=> d!216539 (= res!268344 (isEmpty!4469 lt!264376))))

(assert (=> d!216539 (= lt!264376 e!373735)))

(declare-fun c!113721 () Bool)

(assert (=> d!216539 (= c!113721 (and (is-Cons!6188 rules!3103) (is-Nil!6188 (t!81425 rules!3103))))))

(declare-fun lt!264375 () Unit!11357)

(declare-fun lt!264379 () Unit!11357)

(assert (=> d!216539 (= lt!264375 lt!264379)))

(assert (=> d!216539 (isPrefix!874 (++!1734 input!2705 suffix!1342) (++!1734 input!2705 suffix!1342))))

(declare-fun lemmaIsPrefixRefl!608 (List!6197 List!6197) Unit!11357)

(assert (=> d!216539 (= lt!264379 (lemmaIsPrefixRefl!608 (++!1734 input!2705 suffix!1342) (++!1734 input!2705 suffix!1342)))))

(declare-fun rulesValidInductive!471 (LexerInterface!1132 List!6198) Bool)

(assert (=> d!216539 (rulesValidInductive!471 thiss!22590 rules!3103)))

(assert (=> d!216539 (= (maxPrefix!830 thiss!22590 rules!3103 (++!1734 input!2705 suffix!1342)) lt!264376)))

(declare-fun b!616356 () Bool)

(assert (=> b!616356 (= e!373733 e!373734)))

(declare-fun res!268342 () Bool)

(assert (=> b!616356 (=> (not res!268342) (not e!373734))))

(assert (=> b!616356 (= res!268342 (isDefined!1408 lt!264376))))

(assert (= (and d!216539 c!113721) b!616354))

(assert (= (and d!216539 (not c!113721)) b!616359))

(assert (= (or b!616354 b!616359) bm!41041))

(assert (= (and d!216539 (not res!268344)) b!616356))

(assert (= (and b!616356 res!268342) b!616357))

(assert (= (and b!616357 res!268346) b!616353))

(assert (= (and b!616353 res!268347) b!616355))

(assert (= (and b!616355 res!268348) b!616358))

(assert (= (and b!616358 res!268343) b!616360))

(assert (= (and b!616360 res!268345) b!616352))

(declare-fun m!885007 () Bool)

(assert (=> b!616355 m!885007))

(declare-fun m!885009 () Bool)

(assert (=> b!616355 m!885009))

(assert (=> b!616355 m!885009))

(declare-fun m!885011 () Bool)

(assert (=> b!616355 m!885011))

(assert (=> b!616355 m!885011))

(declare-fun m!885013 () Bool)

(assert (=> b!616355 m!885013))

(assert (=> b!616360 m!885007))

(assert (=> b!616360 m!885009))

(assert (=> b!616360 m!885009))

(assert (=> b!616360 m!885011))

(assert (=> b!616360 m!885011))

(declare-fun m!885015 () Bool)

(assert (=> b!616360 m!885015))

(assert (=> b!616359 m!884909))

(declare-fun m!885017 () Bool)

(assert (=> b!616359 m!885017))

(assert (=> bm!41041 m!884909))

(declare-fun m!885019 () Bool)

(assert (=> bm!41041 m!885019))

(declare-fun m!885021 () Bool)

(assert (=> d!216539 m!885021))

(assert (=> d!216539 m!884909))

(assert (=> d!216539 m!884909))

(declare-fun m!885023 () Bool)

(assert (=> d!216539 m!885023))

(assert (=> d!216539 m!884909))

(assert (=> d!216539 m!884909))

(declare-fun m!885025 () Bool)

(assert (=> d!216539 m!885025))

(declare-fun m!885027 () Bool)

(assert (=> d!216539 m!885027))

(assert (=> b!616352 m!885007))

(declare-fun m!885029 () Bool)

(assert (=> b!616352 m!885029))

(declare-fun m!885031 () Bool)

(assert (=> b!616356 m!885031))

(assert (=> b!616353 m!885007))

(declare-fun m!885033 () Bool)

(assert (=> b!616353 m!885033))

(assert (=> b!616353 m!884909))

(declare-fun m!885035 () Bool)

(assert (=> b!616353 m!885035))

(assert (=> b!616358 m!885007))

(declare-fun m!885037 () Bool)

(assert (=> b!616358 m!885037))

(assert (=> b!616358 m!885037))

(declare-fun m!885039 () Bool)

(assert (=> b!616358 m!885039))

(assert (=> b!616357 m!885007))

(assert (=> b!616357 m!885009))

(assert (=> b!616357 m!885009))

(assert (=> b!616357 m!885011))

(assert (=> b!616180 d!216539))

(declare-fun d!216547 () Bool)

(declare-fun e!373741 () Bool)

(assert (=> d!216547 e!373741))

(declare-fun res!268353 () Bool)

(assert (=> d!216547 (=> (not res!268353) (not e!373741))))

(declare-fun lt!264382 () List!6197)

(declare-fun content!1133 (List!6197) (Set C!4082))

(assert (=> d!216547 (= res!268353 (= (content!1133 lt!264382) (set.union (content!1133 input!2705) (content!1133 suffix!1342))))))

(declare-fun e!373740 () List!6197)

(assert (=> d!216547 (= lt!264382 e!373740)))

(declare-fun c!113724 () Bool)

(assert (=> d!216547 (= c!113724 (is-Nil!6187 input!2705))))

(assert (=> d!216547 (= (++!1734 input!2705 suffix!1342) lt!264382)))

(declare-fun b!616372 () Bool)

(assert (=> b!616372 (= e!373741 (or (not (= suffix!1342 Nil!6187)) (= lt!264382 input!2705)))))

(declare-fun b!616370 () Bool)

(assert (=> b!616370 (= e!373740 (Cons!6187 (h!11588 input!2705) (++!1734 (t!81424 input!2705) suffix!1342)))))

(declare-fun b!616371 () Bool)

(declare-fun res!268354 () Bool)

(assert (=> b!616371 (=> (not res!268354) (not e!373741))))

(assert (=> b!616371 (= res!268354 (= (size!4855 lt!264382) (+ (size!4855 input!2705) (size!4855 suffix!1342))))))

(declare-fun b!616369 () Bool)

(assert (=> b!616369 (= e!373740 suffix!1342)))

(assert (= (and d!216547 c!113724) b!616369))

(assert (= (and d!216547 (not c!113724)) b!616370))

(assert (= (and d!216547 res!268353) b!616371))

(assert (= (and b!616371 res!268354) b!616372))

(declare-fun m!885041 () Bool)

(assert (=> d!216547 m!885041))

(declare-fun m!885043 () Bool)

(assert (=> d!216547 m!885043))

(declare-fun m!885045 () Bool)

(assert (=> d!216547 m!885045))

(declare-fun m!885047 () Bool)

(assert (=> b!616370 m!885047))

(declare-fun m!885049 () Bool)

(assert (=> b!616371 m!885049))

(declare-fun m!885051 () Bool)

(assert (=> b!616371 m!885051))

(declare-fun m!885053 () Bool)

(assert (=> b!616371 m!885053))

(assert (=> b!616180 d!216547))

(declare-fun bm!41042 () Bool)

(declare-fun call!41047 () Option!1597)

(assert (=> bm!41042 (= call!41047 (maxPrefixOneRule!491 thiss!22590 (h!11589 rules!3103) input!2705))))

(declare-fun b!616373 () Bool)

(declare-fun e!373743 () Bool)

(declare-fun lt!264384 () Option!1597)

(assert (=> b!616373 (= e!373743 (contains!1462 rules!3103 (rule!2040 (_1!3780 (get!2384 lt!264384)))))))

(declare-fun b!616374 () Bool)

(declare-fun res!268360 () Bool)

(assert (=> b!616374 (=> (not res!268360) (not e!373743))))

(assert (=> b!616374 (= res!268360 (< (size!4855 (_2!3780 (get!2384 lt!264384))) (size!4855 input!2705)))))

(declare-fun b!616375 () Bool)

(declare-fun e!373744 () Option!1597)

(assert (=> b!616375 (= e!373744 call!41047)))

(declare-fun b!616376 () Bool)

(declare-fun res!268361 () Bool)

(assert (=> b!616376 (=> (not res!268361) (not e!373743))))

(assert (=> b!616376 (= res!268361 (= (++!1734 (list!2605 (charsOf!875 (_1!3780 (get!2384 lt!264384)))) (_2!3780 (get!2384 lt!264384))) input!2705))))

(declare-fun b!616378 () Bool)

(declare-fun res!268359 () Bool)

(assert (=> b!616378 (=> (not res!268359) (not e!373743))))

(assert (=> b!616378 (= res!268359 (= (list!2605 (charsOf!875 (_1!3780 (get!2384 lt!264384)))) (originalCharacters!1285 (_1!3780 (get!2384 lt!264384)))))))

(declare-fun b!616379 () Bool)

(declare-fun res!268356 () Bool)

(assert (=> b!616379 (=> (not res!268356) (not e!373743))))

(assert (=> b!616379 (= res!268356 (= (value!40379 (_1!3780 (get!2384 lt!264384))) (apply!1497 (transformation!1246 (rule!2040 (_1!3780 (get!2384 lt!264384)))) (seqFromList!1420 (originalCharacters!1285 (_1!3780 (get!2384 lt!264384)))))))))

(declare-fun b!616380 () Bool)

(declare-fun lt!264385 () Option!1597)

(declare-fun lt!264386 () Option!1597)

(assert (=> b!616380 (= e!373744 (ite (and (is-None!1596 lt!264385) (is-None!1596 lt!264386)) None!1596 (ite (is-None!1596 lt!264386) lt!264385 (ite (is-None!1596 lt!264385) lt!264386 (ite (>= (size!4853 (_1!3780 (v!16513 lt!264385))) (size!4853 (_1!3780 (v!16513 lt!264386)))) lt!264385 lt!264386)))))))

(assert (=> b!616380 (= lt!264385 call!41047)))

(assert (=> b!616380 (= lt!264386 (maxPrefix!830 thiss!22590 (t!81425 rules!3103) input!2705))))

(declare-fun b!616381 () Bool)

(declare-fun res!268358 () Bool)

(assert (=> b!616381 (=> (not res!268358) (not e!373743))))

(assert (=> b!616381 (= res!268358 (matchR!681 (regex!1246 (rule!2040 (_1!3780 (get!2384 lt!264384)))) (list!2605 (charsOf!875 (_1!3780 (get!2384 lt!264384))))))))

(declare-fun d!216549 () Bool)

(declare-fun e!373742 () Bool)

(assert (=> d!216549 e!373742))

(declare-fun res!268357 () Bool)

(assert (=> d!216549 (=> res!268357 e!373742)))

(assert (=> d!216549 (= res!268357 (isEmpty!4469 lt!264384))))

(assert (=> d!216549 (= lt!264384 e!373744)))

(declare-fun c!113725 () Bool)

(assert (=> d!216549 (= c!113725 (and (is-Cons!6188 rules!3103) (is-Nil!6188 (t!81425 rules!3103))))))

(declare-fun lt!264383 () Unit!11357)

(declare-fun lt!264387 () Unit!11357)

(assert (=> d!216549 (= lt!264383 lt!264387)))

(assert (=> d!216549 (isPrefix!874 input!2705 input!2705)))

(assert (=> d!216549 (= lt!264387 (lemmaIsPrefixRefl!608 input!2705 input!2705))))

(assert (=> d!216549 (rulesValidInductive!471 thiss!22590 rules!3103)))

(assert (=> d!216549 (= (maxPrefix!830 thiss!22590 rules!3103 input!2705) lt!264384)))

(declare-fun b!616377 () Bool)

(assert (=> b!616377 (= e!373742 e!373743)))

(declare-fun res!268355 () Bool)

(assert (=> b!616377 (=> (not res!268355) (not e!373743))))

(assert (=> b!616377 (= res!268355 (isDefined!1408 lt!264384))))

(assert (= (and d!216549 c!113725) b!616375))

(assert (= (and d!216549 (not c!113725)) b!616380))

(assert (= (or b!616375 b!616380) bm!41042))

(assert (= (and d!216549 (not res!268357)) b!616377))

(assert (= (and b!616377 res!268355) b!616378))

(assert (= (and b!616378 res!268359) b!616374))

(assert (= (and b!616374 res!268360) b!616376))

(assert (= (and b!616376 res!268361) b!616379))

(assert (= (and b!616379 res!268356) b!616381))

(assert (= (and b!616381 res!268358) b!616373))

(declare-fun m!885055 () Bool)

(assert (=> b!616376 m!885055))

(declare-fun m!885057 () Bool)

(assert (=> b!616376 m!885057))

(assert (=> b!616376 m!885057))

(declare-fun m!885059 () Bool)

(assert (=> b!616376 m!885059))

(assert (=> b!616376 m!885059))

(declare-fun m!885061 () Bool)

(assert (=> b!616376 m!885061))

(assert (=> b!616381 m!885055))

(assert (=> b!616381 m!885057))

(assert (=> b!616381 m!885057))

(assert (=> b!616381 m!885059))

(assert (=> b!616381 m!885059))

(declare-fun m!885063 () Bool)

(assert (=> b!616381 m!885063))

(declare-fun m!885065 () Bool)

(assert (=> b!616380 m!885065))

(declare-fun m!885067 () Bool)

(assert (=> bm!41042 m!885067))

(declare-fun m!885069 () Bool)

(assert (=> d!216549 m!885069))

(assert (=> d!216549 m!884973))

(declare-fun m!885071 () Bool)

(assert (=> d!216549 m!885071))

(assert (=> d!216549 m!885027))

(assert (=> b!616373 m!885055))

(declare-fun m!885073 () Bool)

(assert (=> b!616373 m!885073))

(declare-fun m!885075 () Bool)

(assert (=> b!616377 m!885075))

(assert (=> b!616374 m!885055))

(declare-fun m!885077 () Bool)

(assert (=> b!616374 m!885077))

(assert (=> b!616374 m!885051))

(assert (=> b!616379 m!885055))

(declare-fun m!885079 () Bool)

(assert (=> b!616379 m!885079))

(assert (=> b!616379 m!885079))

(declare-fun m!885081 () Bool)

(assert (=> b!616379 m!885081))

(assert (=> b!616378 m!885055))

(assert (=> b!616378 m!885057))

(assert (=> b!616378 m!885057))

(assert (=> b!616378 m!885059))

(assert (=> b!616179 d!216549))

(declare-fun d!216551 () Bool)

(assert (=> d!216551 (= (isEmpty!4465 rules!3103) (is-Nil!6188 rules!3103))))

(assert (=> b!616178 d!216551))

(declare-fun d!216553 () Bool)

(assert (=> d!216553 (= (get!2384 lt!264341) (v!16513 lt!264341))))

(assert (=> b!616187 d!216553))

(declare-fun d!216555 () Bool)

(declare-fun list!2607 (Conc!1963) List!6197)

(assert (=> d!216555 (= (list!2605 (charsOf!875 token!491)) (list!2607 (c!113697 (charsOf!875 token!491))))))

(declare-fun bs!71823 () Bool)

(assert (= bs!71823 d!216555))

(declare-fun m!885083 () Bool)

(assert (=> bs!71823 m!885083))

(assert (=> b!616176 d!216555))

(declare-fun d!216557 () Bool)

(declare-fun lt!264390 () BalanceConc!3934)

(assert (=> d!216557 (= (list!2605 lt!264390) (originalCharacters!1285 token!491))))

(assert (=> d!216557 (= lt!264390 (dynLambda!3577 (toChars!2016 (transformation!1246 (rule!2040 token!491))) (value!40379 token!491)))))

(assert (=> d!216557 (= (charsOf!875 token!491) lt!264390)))

(declare-fun b_lambda!24503 () Bool)

(assert (=> (not b_lambda!24503) (not d!216557)))

(assert (=> d!216557 t!81430))

(declare-fun b_and!61155 () Bool)

(assert (= b_and!61151 (and (=> t!81430 result!60566) b_and!61155)))

(assert (=> d!216557 t!81432))

(declare-fun b_and!61157 () Bool)

(assert (= b_and!61153 (and (=> t!81432 result!60570) b_and!61157)))

(declare-fun m!885085 () Bool)

(assert (=> d!216557 m!885085))

(assert (=> d!216557 m!884981))

(assert (=> b!616176 d!216557))

(declare-fun d!216559 () Bool)

(assert (=> d!216559 (= (inv!7876 (tag!1508 (h!11589 rules!3103))) (= (mod (str.len (value!40353 (tag!1508 (h!11589 rules!3103)))) 2) 0))))

(assert (=> b!616186 d!216559))

(declare-fun d!216561 () Bool)

(declare-fun res!268364 () Bool)

(declare-fun e!373747 () Bool)

(assert (=> d!216561 (=> (not res!268364) (not e!373747))))

(declare-fun semiInverseModEq!502 (Int Int) Bool)

(assert (=> d!216561 (= res!268364 (semiInverseModEq!502 (toChars!2016 (transformation!1246 (h!11589 rules!3103))) (toValue!2157 (transformation!1246 (h!11589 rules!3103)))))))

(assert (=> d!216561 (= (inv!7879 (transformation!1246 (h!11589 rules!3103))) e!373747)))

(declare-fun b!616384 () Bool)

(declare-fun equivClasses!485 (Int Int) Bool)

(assert (=> b!616384 (= e!373747 (equivClasses!485 (toChars!2016 (transformation!1246 (h!11589 rules!3103))) (toValue!2157 (transformation!1246 (h!11589 rules!3103)))))))

(assert (= (and d!216561 res!268364) b!616384))

(declare-fun m!885087 () Bool)

(assert (=> d!216561 m!885087))

(declare-fun m!885089 () Bool)

(assert (=> b!616384 m!885089))

(assert (=> b!616186 d!216561))

(declare-fun d!216563 () Bool)

(declare-fun res!268367 () Bool)

(declare-fun e!373752 () Bool)

(assert (=> d!216563 (=> (not res!268367) (not e!373752))))

(declare-fun rulesValid!466 (LexerInterface!1132 List!6198) Bool)

(assert (=> d!216563 (= res!268367 (rulesValid!466 thiss!22590 rules!3103))))

(assert (=> d!216563 (= (rulesInvariant!1095 thiss!22590 rules!3103) e!373752)))

(declare-fun b!616391 () Bool)

(declare-datatypes ((List!6203 0))(
  ( (Nil!6193) (Cons!6193 (h!11594 String!8095) (t!81442 List!6203)) )
))
(declare-fun noDuplicateTag!466 (LexerInterface!1132 List!6198 List!6203) Bool)

(assert (=> b!616391 (= e!373752 (noDuplicateTag!466 thiss!22590 rules!3103 Nil!6193))))

(assert (= (and d!216563 res!268367) b!616391))

(declare-fun m!885091 () Bool)

(assert (=> d!216563 m!885091))

(declare-fun m!885093 () Bool)

(assert (=> b!616391 m!885093))

(assert (=> b!616175 d!216563))

(declare-fun d!216565 () Bool)

(assert (=> d!216565 (= (isEmpty!4466 input!2705) (is-Nil!6187 input!2705))))

(assert (=> b!616185 d!216565))

(declare-fun d!216567 () Bool)

(assert (=> d!216567 (= (inv!7876 (tag!1508 (rule!2040 token!491))) (= (mod (str.len (value!40353 (tag!1508 (rule!2040 token!491)))) 2) 0))))

(assert (=> b!616174 d!216567))

(declare-fun d!216569 () Bool)

(declare-fun res!268370 () Bool)

(declare-fun e!373755 () Bool)

(assert (=> d!216569 (=> (not res!268370) (not e!373755))))

(assert (=> d!216569 (= res!268370 (semiInverseModEq!502 (toChars!2016 (transformation!1246 (rule!2040 token!491))) (toValue!2157 (transformation!1246 (rule!2040 token!491)))))))

(assert (=> d!216569 (= (inv!7879 (transformation!1246 (rule!2040 token!491))) e!373755)))

(declare-fun b!616394 () Bool)

(assert (=> b!616394 (= e!373755 (equivClasses!485 (toChars!2016 (transformation!1246 (rule!2040 token!491))) (toValue!2157 (transformation!1246 (rule!2040 token!491)))))))

(assert (= (and d!216569 res!268370) b!616394))

(declare-fun m!885095 () Bool)

(assert (=> d!216569 m!885095))

(declare-fun m!885097 () Bool)

(assert (=> b!616394 m!885097))

(assert (=> b!616174 d!216569))

(declare-fun b!616417 () Bool)

(declare-fun e!373765 () Bool)

(declare-fun e!373764 () Bool)

(assert (=> b!616417 (= e!373765 e!373764)))

(declare-fun c!113733 () Bool)

(assert (=> b!616417 (= c!113733 (is-IntegerValue!3811 (value!40379 token!491)))))

(declare-fun b!616418 () Bool)

(declare-fun res!268385 () Bool)

(declare-fun e!373766 () Bool)

(assert (=> b!616418 (=> res!268385 e!373766)))

(assert (=> b!616418 (= res!268385 (not (is-IntegerValue!3812 (value!40379 token!491))))))

(assert (=> b!616418 (= e!373764 e!373766)))

(declare-fun b!616419 () Bool)

(declare-fun inv!16 (TokenValue!1270) Bool)

(assert (=> b!616419 (= e!373765 (inv!16 (value!40379 token!491)))))

(declare-fun d!216571 () Bool)

(declare-fun c!113732 () Bool)

(assert (=> d!216571 (= c!113732 (is-IntegerValue!3810 (value!40379 token!491)))))

(assert (=> d!216571 (= (inv!21 (value!40379 token!491)) e!373765)))

(declare-fun b!616420 () Bool)

(declare-fun inv!15 (TokenValue!1270) Bool)

(assert (=> b!616420 (= e!373766 (inv!15 (value!40379 token!491)))))

(declare-fun b!616421 () Bool)

(declare-fun inv!17 (TokenValue!1270) Bool)

(assert (=> b!616421 (= e!373764 (inv!17 (value!40379 token!491)))))

(assert (= (and d!216571 c!113732) b!616419))

(assert (= (and d!216571 (not c!113732)) b!616417))

(assert (= (and b!616417 c!113733) b!616421))

(assert (= (and b!616417 (not c!113733)) b!616418))

(assert (= (and b!616418 (not res!268385)) b!616420))

(declare-fun m!885099 () Bool)

(assert (=> b!616419 m!885099))

(declare-fun m!885101 () Bool)

(assert (=> b!616420 m!885101))

(declare-fun m!885103 () Bool)

(assert (=> b!616421 m!885103))

(assert (=> b!616184 d!216571))

(declare-fun b!616426 () Bool)

(declare-fun e!373769 () Bool)

(declare-fun tp!190454 () Bool)

(assert (=> b!616426 (= e!373769 (and tp_is_empty!3515 tp!190454))))

(assert (=> b!616183 (= tp!190416 e!373769)))

(assert (= (and b!616183 (is-Cons!6187 (t!81424 input!2705))) b!616426))

(declare-fun b!616427 () Bool)

(declare-fun e!373770 () Bool)

(declare-fun tp!190455 () Bool)

(assert (=> b!616427 (= e!373770 (and tp_is_empty!3515 tp!190455))))

(assert (=> b!616177 (= tp!190415 e!373770)))

(assert (= (and b!616177 (is-Cons!6187 (t!81424 suffix!1342))) b!616427))

(declare-fun b!616439 () Bool)

(declare-fun e!373773 () Bool)

(declare-fun tp!190468 () Bool)

(declare-fun tp!190467 () Bool)

(assert (=> b!616439 (= e!373773 (and tp!190468 tp!190467))))

(declare-fun b!616440 () Bool)

(declare-fun tp!190470 () Bool)

(assert (=> b!616440 (= e!373773 tp!190470)))

(declare-fun b!616441 () Bool)

(declare-fun tp!190466 () Bool)

(declare-fun tp!190469 () Bool)

(assert (=> b!616441 (= e!373773 (and tp!190466 tp!190469))))

(assert (=> b!616186 (= tp!190411 e!373773)))

(declare-fun b!616438 () Bool)

(assert (=> b!616438 (= e!373773 tp_is_empty!3515)))

(assert (= (and b!616186 (is-ElementMatch!1580 (regex!1246 (h!11589 rules!3103)))) b!616438))

(assert (= (and b!616186 (is-Concat!2850 (regex!1246 (h!11589 rules!3103)))) b!616439))

(assert (= (and b!616186 (is-Star!1580 (regex!1246 (h!11589 rules!3103)))) b!616440))

(assert (= (and b!616186 (is-Union!1580 (regex!1246 (h!11589 rules!3103)))) b!616441))

(declare-fun b!616443 () Bool)

(declare-fun e!373774 () Bool)

(declare-fun tp!190473 () Bool)

(declare-fun tp!190472 () Bool)

(assert (=> b!616443 (= e!373774 (and tp!190473 tp!190472))))

(declare-fun b!616444 () Bool)

(declare-fun tp!190475 () Bool)

(assert (=> b!616444 (= e!373774 tp!190475)))

(declare-fun b!616445 () Bool)

(declare-fun tp!190471 () Bool)

(declare-fun tp!190474 () Bool)

(assert (=> b!616445 (= e!373774 (and tp!190471 tp!190474))))

(assert (=> b!616174 (= tp!190410 e!373774)))

(declare-fun b!616442 () Bool)

(assert (=> b!616442 (= e!373774 tp_is_empty!3515)))

(assert (= (and b!616174 (is-ElementMatch!1580 (regex!1246 (rule!2040 token!491)))) b!616442))

(assert (= (and b!616174 (is-Concat!2850 (regex!1246 (rule!2040 token!491)))) b!616443))

(assert (= (and b!616174 (is-Star!1580 (regex!1246 (rule!2040 token!491)))) b!616444))

(assert (= (and b!616174 (is-Union!1580 (regex!1246 (rule!2040 token!491)))) b!616445))

(declare-fun b!616446 () Bool)

(declare-fun e!373775 () Bool)

(declare-fun tp!190476 () Bool)

(assert (=> b!616446 (= e!373775 (and tp_is_empty!3515 tp!190476))))

(assert (=> b!616184 (= tp!190412 e!373775)))

(assert (= (and b!616184 (is-Cons!6187 (originalCharacters!1285 token!491))) b!616446))

(declare-fun b!616457 () Bool)

(declare-fun b_free!17653 () Bool)

(declare-fun b_next!17669 () Bool)

(assert (=> b!616457 (= b_free!17653 (not b_next!17669))))

(declare-fun tp!190488 () Bool)

(declare-fun b_and!61159 () Bool)

(assert (=> b!616457 (= tp!190488 b_and!61159)))

(declare-fun b_free!17655 () Bool)

(declare-fun b_next!17671 () Bool)

(assert (=> b!616457 (= b_free!17655 (not b_next!17671))))

(declare-fun tb!53759 () Bool)

(declare-fun t!81434 () Bool)

(assert (=> (and b!616457 (= (toChars!2016 (transformation!1246 (h!11589 (t!81425 rules!3103)))) (toChars!2016 (transformation!1246 (rule!2040 token!491)))) t!81434) tb!53759))

(declare-fun result!60578 () Bool)

(assert (= result!60578 result!60566))

(assert (=> b!616313 t!81434))

(assert (=> d!216557 t!81434))

(declare-fun tp!190487 () Bool)

(declare-fun b_and!61161 () Bool)

(assert (=> b!616457 (= tp!190487 (and (=> t!81434 result!60578) b_and!61161))))

(declare-fun e!373785 () Bool)

(assert (=> b!616457 (= e!373785 (and tp!190488 tp!190487))))

(declare-fun b!616456 () Bool)

(declare-fun tp!190486 () Bool)

(declare-fun e!373787 () Bool)

(assert (=> b!616456 (= e!373787 (and tp!190486 (inv!7876 (tag!1508 (h!11589 (t!81425 rules!3103)))) (inv!7879 (transformation!1246 (h!11589 (t!81425 rules!3103)))) e!373785))))

(declare-fun b!616455 () Bool)

(declare-fun e!373784 () Bool)

(declare-fun tp!190485 () Bool)

(assert (=> b!616455 (= e!373784 (and e!373787 tp!190485))))

(assert (=> b!616173 (= tp!190418 e!373784)))

(assert (= b!616456 b!616457))

(assert (= b!616455 b!616456))

(assert (= (and b!616173 (is-Cons!6188 (t!81425 rules!3103))) b!616455))

(declare-fun m!885105 () Bool)

(assert (=> b!616456 m!885105))

(declare-fun m!885107 () Bool)

(assert (=> b!616456 m!885107))

(declare-fun b_lambda!24505 () Bool)

(assert (= b_lambda!24503 (or (and b!616172 b_free!17639 (= (toChars!2016 (transformation!1246 (h!11589 rules!3103))) (toChars!2016 (transformation!1246 (rule!2040 token!491))))) (and b!616181 b_free!17643) (and b!616457 b_free!17655 (= (toChars!2016 (transformation!1246 (h!11589 (t!81425 rules!3103)))) (toChars!2016 (transformation!1246 (rule!2040 token!491))))) b_lambda!24505)))

(declare-fun b_lambda!24507 () Bool)

(assert (= b_lambda!24501 (or (and b!616172 b_free!17639 (= (toChars!2016 (transformation!1246 (h!11589 rules!3103))) (toChars!2016 (transformation!1246 (rule!2040 token!491))))) (and b!616181 b_free!17643) (and b!616457 b_free!17655 (= (toChars!2016 (transformation!1246 (h!11589 (t!81425 rules!3103)))) (toChars!2016 (transformation!1246 (rule!2040 token!491))))) b_lambda!24507)))

(push 1)

(assert (not b!616384))

(assert (not b!616419))

(assert (not d!216537))

(assert (not b!616373))

(assert (not b!616446))

(assert (not b!616420))

(assert (not b!616313))

(assert (not b!616357))

(assert (not b!616440))

(assert (not b!616269))

(assert b_and!61157)

(assert (not b!616374))

(assert (not b!616427))

(assert (not b_lambda!24507))

(assert (not b!616355))

(assert b_and!61159)

(assert (not b_next!17659))

(assert (not b!616391))

(assert (not d!216563))

(assert (not b_next!17657))

(assert (not d!216539))

(assert (not d!216533))

(assert (not b!616275))

(assert (not b!616376))

(assert (not b!616444))

(assert (not b!616443))

(assert (not d!216535))

(assert (not d!216549))

(assert (not b!616394))

(assert (not b_lambda!24505))

(assert (not bm!41042))

(assert (not d!216555))

(assert (not b!616455))

(assert (not b!616268))

(assert (not d!216547))

(assert (not d!216527))

(assert (not b!616277))

(assert (not b!616360))

(assert (not b!616377))

(assert (not d!216569))

(assert (not b!616276))

(assert tp_is_empty!3515)

(assert (not b!616352))

(assert (not b!616378))

(assert (not b!616379))

(assert b_and!61161)

(assert (not b_next!17655))

(assert (not d!216561))

(assert (not bm!41041))

(assert (not b!616371))

(assert (not d!216557))

(assert (not b!616358))

(assert (not b!616441))

(assert (not b_next!17653))

(assert (not b!616359))

(assert (not bm!41035))

(assert (not b!616456))

(assert b_and!61135)

(assert (not tb!53755))

(assert (not b_next!17671))

(assert (not b!616381))

(assert b_and!61155)

(assert b_and!61139)

(assert (not b!616319))

(assert (not b!616426))

(assert (not b!616370))

(assert (not b!616439))

(assert (not b!616280))

(assert (not b!616421))

(assert (not b!616380))

(assert (not b_next!17669))

(assert (not b!616356))

(assert (not b!616314))

(assert (not b!616445))

(assert (not b!616353))

(check-sat)

(pop 1)

(push 1)

(assert b_and!61157)

(assert b_and!61159)

(assert (not b_next!17659))

(assert (not b_next!17657))

(assert (not b_next!17653))

(assert b_and!61135)

(assert (not b_next!17671))

(assert (not b_next!17669))

(assert b_and!61161)

(assert (not b_next!17655))

(assert b_and!61155)

(assert b_and!61139)

(check-sat)

(pop 1)

