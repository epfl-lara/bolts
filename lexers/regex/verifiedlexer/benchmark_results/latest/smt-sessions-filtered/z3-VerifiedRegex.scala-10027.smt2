; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525078 () Bool)

(assert start!525078)

(declare-fun b!4976277 () Bool)

(declare-fun b_free!132923 () Bool)

(declare-fun b_next!133713 () Bool)

(assert (=> b!4976277 (= b_free!132923 (not b_next!133713))))

(declare-fun tp!1395316 () Bool)

(declare-fun b_and!349335 () Bool)

(assert (=> b!4976277 (= tp!1395316 b_and!349335)))

(declare-fun b_free!132925 () Bool)

(declare-fun b_next!133715 () Bool)

(assert (=> b!4976277 (= b_free!132925 (not b_next!133715))))

(declare-fun tp!1395315 () Bool)

(declare-fun b_and!349337 () Bool)

(assert (=> b!4976277 (= tp!1395315 b_and!349337)))

(declare-fun b!4976276 () Bool)

(declare-fun e!3110047 () Bool)

(declare-datatypes ((C!27528 0))(
  ( (C!27529 (val!23130 Int)) )
))
(declare-datatypes ((List!57608 0))(
  ( (Nil!57484) (Cons!57484 (h!63932 C!27528) (t!369620 List!57608)) )
))
(declare-datatypes ((IArray!30377 0))(
  ( (IArray!30378 (innerList!15246 List!57608)) )
))
(declare-datatypes ((Conc!15158 0))(
  ( (Node!15158 (left!41943 Conc!15158) (right!42273 Conc!15158) (csize!30546 Int) (cheight!15369 Int)) (Leaf!25186 (xs!18484 IArray!30377) (csize!30547 Int)) (Empty!15158) )
))
(declare-datatypes ((BalanceConc!29746 0))(
  ( (BalanceConc!29747 (c!849159 Conc!15158)) )
))
(declare-fun totalInput!520 () BalanceConc!29746)

(declare-fun tp!1395314 () Bool)

(declare-fun inv!75165 (Conc!15158) Bool)

(assert (=> b!4976276 (= e!3110047 (and (inv!75165 (c!849159 totalInput!520)) tp!1395314))))

(declare-fun e!3110050 () Bool)

(assert (=> b!4976277 (= e!3110050 (and tp!1395316 tp!1395315))))

(declare-fun b!4976278 () Bool)

(declare-fun tp!1395318 () Bool)

(declare-fun e!3110048 () Bool)

(declare-datatypes ((List!57609 0))(
  ( (Nil!57485) (Cons!57485 (h!63933 (_ BitVec 16)) (t!369621 List!57609)) )
))
(declare-datatypes ((Regex!13639 0))(
  ( (ElementMatch!13639 (c!849160 C!27528)) (Concat!22355 (regOne!27790 Regex!13639) (regTwo!27790 Regex!13639)) (EmptyExpr!13639) (Star!13639 (reg!13968 Regex!13639)) (EmptyLang!13639) (Union!13639 (regOne!27791 Regex!13639) (regTwo!27791 Regex!13639)) )
))
(declare-datatypes ((TokenValue!8716 0))(
  ( (FloatLiteralValue!17432 (text!61457 List!57609)) (TokenValueExt!8715 (__x!34725 Int)) (Broken!43580 (value!268982 List!57609)) (Object!8839) (End!8716) (Def!8716) (Underscore!8716) (Match!8716) (Else!8716) (Error!8716) (Case!8716) (If!8716) (Extends!8716) (Abstract!8716) (Class!8716) (Val!8716) (DelimiterValue!17432 (del!8776 List!57609)) (KeywordValue!8722 (value!268983 List!57609)) (CommentValue!17432 (value!268984 List!57609)) (WhitespaceValue!17432 (value!268985 List!57609)) (IndentationValue!8716 (value!268986 List!57609)) (String!65453) (Int32!8716) (Broken!43581 (value!268987 List!57609)) (Boolean!8717) (Unit!148479) (OperatorValue!8719 (op!8776 List!57609)) (IdentifierValue!17432 (value!268988 List!57609)) (IdentifierValue!17433 (value!268989 List!57609)) (WhitespaceValue!17433 (value!268990 List!57609)) (True!17432) (False!17432) (Broken!43582 (value!268991 List!57609)) (Broken!43583 (value!268992 List!57609)) (True!17433) (RightBrace!8716) (RightBracket!8716) (Colon!8716) (Null!8716) (Comma!8716) (LeftBracket!8716) (False!17433) (LeftBrace!8716) (ImaginaryLiteralValue!8716 (text!61458 List!57609)) (StringLiteralValue!26148 (value!268993 List!57609)) (EOFValue!8716 (value!268994 List!57609)) (IdentValue!8716 (value!268995 List!57609)) (DelimiterValue!17433 (value!268996 List!57609)) (DedentValue!8716 (value!268997 List!57609)) (NewLineValue!8716 (value!268998 List!57609)) (IntegerValue!26148 (value!268999 (_ BitVec 32)) (text!61459 List!57609)) (IntegerValue!26149 (value!269000 Int) (text!61460 List!57609)) (Times!8716) (Or!8716) (Equal!8716) (Minus!8716) (Broken!43584 (value!269001 List!57609)) (And!8716) (Div!8716) (LessEqual!8716) (Mod!8716) (Concat!22356) (Not!8716) (Plus!8716) (SpaceValue!8716 (value!269002 List!57609)) (IntegerValue!26150 (value!269003 Int) (text!61461 List!57609)) (StringLiteralValue!26149 (text!61462 List!57609)) (FloatLiteralValue!17433 (text!61463 List!57609)) (BytesLiteralValue!8716 (value!269004 List!57609)) (CommentValue!17433 (value!269005 List!57609)) (StringLiteralValue!26150 (value!269006 List!57609)) (ErrorTokenValue!8716 (msg!8777 List!57609)) )
))
(declare-datatypes ((TokenValueInjection!16740 0))(
  ( (TokenValueInjection!16741 (toValue!11381 Int) (toChars!11240 Int)) )
))
(declare-datatypes ((String!65454 0))(
  ( (String!65455 (value!269007 String)) )
))
(declare-datatypes ((Rule!16612 0))(
  ( (Rule!16613 (regex!8406 Regex!13639) (tag!9270 String!65454) (isSeparator!8406 Bool) (transformation!8406 TokenValueInjection!16740)) )
))
(declare-fun rule!200 () Rule!16612)

(declare-fun inv!75161 (String!65454) Bool)

(declare-fun inv!75166 (TokenValueInjection!16740) Bool)

(assert (=> b!4976278 (= e!3110048 (and tp!1395318 (inv!75161 (tag!9270 rule!200)) (inv!75166 (transformation!8406 rule!200)) e!3110050))))

(declare-fun b!4976279 () Bool)

(declare-fun e!3110051 () Bool)

(declare-fun input!1580 () BalanceConc!29746)

(declare-fun tp!1395317 () Bool)

(assert (=> b!4976279 (= e!3110051 (and (inv!75165 (c!849159 input!1580)) tp!1395317))))

(declare-fun res!2124159 () Bool)

(declare-fun e!3110049 () Bool)

(assert (=> start!525078 (=> (not res!2124159) (not e!3110049))))

(declare-datatypes ((LexerInterface!7998 0))(
  ( (LexerInterfaceExt!7995 (__x!34726 Int)) (Lexer!7996) )
))
(declare-fun thiss!16165 () LexerInterface!7998)

(get-info :version)

(assert (=> start!525078 (= res!2124159 ((_ is Lexer!7996) thiss!16165))))

(assert (=> start!525078 e!3110049))

(assert (=> start!525078 true))

(assert (=> start!525078 e!3110048))

(declare-fun inv!75167 (BalanceConc!29746) Bool)

(assert (=> start!525078 (and (inv!75167 input!1580) e!3110051)))

(assert (=> start!525078 (and (inv!75167 totalInput!520) e!3110047)))

(declare-fun b!4976280 () Bool)

(declare-fun res!2124157 () Bool)

(assert (=> b!4976280 (=> (not res!2124157) (not e!3110049))))

(declare-fun isSuffix!1205 (List!57608 List!57608) Bool)

(declare-fun list!18396 (BalanceConc!29746) List!57608)

(assert (=> b!4976280 (= res!2124157 (isSuffix!1205 (list!18396 input!1580) (list!18396 totalInput!520)))))

(declare-fun b!4976281 () Bool)

(declare-fun res!2124158 () Bool)

(assert (=> b!4976281 (=> (not res!2124158) (not e!3110049))))

(declare-fun ruleValid!3814 (LexerInterface!7998 Rule!16612) Bool)

(assert (=> b!4976281 (= res!2124158 (ruleValid!3814 thiss!16165 rule!200))))

(declare-fun b!4976282 () Bool)

(declare-fun validRegex!5978 (Regex!13639) Bool)

(assert (=> b!4976282 (= e!3110049 (not (validRegex!5978 (regex!8406 rule!200))))))

(assert (= (and start!525078 res!2124159) b!4976281))

(assert (= (and b!4976281 res!2124158) b!4976280))

(assert (= (and b!4976280 res!2124157) b!4976282))

(assert (= b!4976278 b!4976277))

(assert (= start!525078 b!4976278))

(assert (= start!525078 b!4976279))

(assert (= start!525078 b!4976276))

(declare-fun m!6006540 () Bool)

(assert (=> b!4976280 m!6006540))

(declare-fun m!6006542 () Bool)

(assert (=> b!4976280 m!6006542))

(assert (=> b!4976280 m!6006540))

(assert (=> b!4976280 m!6006542))

(declare-fun m!6006544 () Bool)

(assert (=> b!4976280 m!6006544))

(declare-fun m!6006546 () Bool)

(assert (=> b!4976281 m!6006546))

(declare-fun m!6006548 () Bool)

(assert (=> b!4976276 m!6006548))

(declare-fun m!6006550 () Bool)

(assert (=> b!4976282 m!6006550))

(declare-fun m!6006552 () Bool)

(assert (=> start!525078 m!6006552))

(declare-fun m!6006554 () Bool)

(assert (=> start!525078 m!6006554))

(declare-fun m!6006556 () Bool)

(assert (=> b!4976279 m!6006556))

(declare-fun m!6006558 () Bool)

(assert (=> b!4976278 m!6006558))

(declare-fun m!6006560 () Bool)

(assert (=> b!4976278 m!6006560))

(check-sat (not b!4976282) (not b!4976281) (not b!4976276) (not start!525078) (not b_next!133713) (not b_next!133715) b_and!349337 (not b!4976278) (not b!4976280) b_and!349335 (not b!4976279))
(check-sat b_and!349337 b_and!349335 (not b_next!133715) (not b_next!133713))
(get-model)

(declare-fun d!1602870 () Bool)

(declare-fun e!3110057 () Bool)

(assert (=> d!1602870 e!3110057))

(declare-fun res!2124169 () Bool)

(assert (=> d!1602870 (=> res!2124169 e!3110057)))

(declare-fun lt!2055169 () Bool)

(assert (=> d!1602870 (= res!2124169 (not lt!2055169))))

(declare-fun drop!2359 (List!57608 Int) List!57608)

(declare-fun size!38106 (List!57608) Int)

(assert (=> d!1602870 (= lt!2055169 (= (list!18396 input!1580) (drop!2359 (list!18396 totalInput!520) (- (size!38106 (list!18396 totalInput!520)) (size!38106 (list!18396 input!1580))))))))

(assert (=> d!1602870 (= (isSuffix!1205 (list!18396 input!1580) (list!18396 totalInput!520)) lt!2055169)))

(declare-fun b!4976288 () Bool)

(assert (=> b!4976288 (= e!3110057 (>= (size!38106 (list!18396 totalInput!520)) (size!38106 (list!18396 input!1580))))))

(assert (= (and d!1602870 (not res!2124169)) b!4976288))

(assert (=> d!1602870 m!6006542))

(declare-fun m!6006566 () Bool)

(assert (=> d!1602870 m!6006566))

(assert (=> d!1602870 m!6006540))

(declare-fun m!6006568 () Bool)

(assert (=> d!1602870 m!6006568))

(assert (=> d!1602870 m!6006542))

(declare-fun m!6006570 () Bool)

(assert (=> d!1602870 m!6006570))

(assert (=> b!4976288 m!6006542))

(assert (=> b!4976288 m!6006566))

(assert (=> b!4976288 m!6006540))

(assert (=> b!4976288 m!6006568))

(assert (=> b!4976280 d!1602870))

(declare-fun d!1602876 () Bool)

(declare-fun list!18397 (Conc!15158) List!57608)

(assert (=> d!1602876 (= (list!18396 input!1580) (list!18397 (c!849159 input!1580)))))

(declare-fun bs!1183975 () Bool)

(assert (= bs!1183975 d!1602876))

(declare-fun m!6006572 () Bool)

(assert (=> bs!1183975 m!6006572))

(assert (=> b!4976280 d!1602876))

(declare-fun d!1602878 () Bool)

(assert (=> d!1602878 (= (list!18396 totalInput!520) (list!18397 (c!849159 totalInput!520)))))

(declare-fun bs!1183976 () Bool)

(assert (= bs!1183976 d!1602878))

(declare-fun m!6006574 () Bool)

(assert (=> bs!1183976 m!6006574))

(assert (=> b!4976280 d!1602878))

(declare-fun d!1602880 () Bool)

(declare-fun c!849166 () Bool)

(assert (=> d!1602880 (= c!849166 ((_ is Node!15158) (c!849159 input!1580)))))

(declare-fun e!3110070 () Bool)

(assert (=> d!1602880 (= (inv!75165 (c!849159 input!1580)) e!3110070)))

(declare-fun b!4976306 () Bool)

(declare-fun inv!75169 (Conc!15158) Bool)

(assert (=> b!4976306 (= e!3110070 (inv!75169 (c!849159 input!1580)))))

(declare-fun b!4976307 () Bool)

(declare-fun e!3110071 () Bool)

(assert (=> b!4976307 (= e!3110070 e!3110071)))

(declare-fun res!2124177 () Bool)

(assert (=> b!4976307 (= res!2124177 (not ((_ is Leaf!25186) (c!849159 input!1580))))))

(assert (=> b!4976307 (=> res!2124177 e!3110071)))

(declare-fun b!4976308 () Bool)

(declare-fun inv!75171 (Conc!15158) Bool)

(assert (=> b!4976308 (= e!3110071 (inv!75171 (c!849159 input!1580)))))

(assert (= (and d!1602880 c!849166) b!4976306))

(assert (= (and d!1602880 (not c!849166)) b!4976307))

(assert (= (and b!4976307 (not res!2124177)) b!4976308))

(declare-fun m!6006580 () Bool)

(assert (=> b!4976306 m!6006580))

(declare-fun m!6006582 () Bool)

(assert (=> b!4976308 m!6006582))

(assert (=> b!4976279 d!1602880))

(declare-fun d!1602884 () Bool)

(declare-fun c!849167 () Bool)

(assert (=> d!1602884 (= c!849167 ((_ is Node!15158) (c!849159 totalInput!520)))))

(declare-fun e!3110072 () Bool)

(assert (=> d!1602884 (= (inv!75165 (c!849159 totalInput!520)) e!3110072)))

(declare-fun b!4976311 () Bool)

(assert (=> b!4976311 (= e!3110072 (inv!75169 (c!849159 totalInput!520)))))

(declare-fun b!4976312 () Bool)

(declare-fun e!3110073 () Bool)

(assert (=> b!4976312 (= e!3110072 e!3110073)))

(declare-fun res!2124180 () Bool)

(assert (=> b!4976312 (= res!2124180 (not ((_ is Leaf!25186) (c!849159 totalInput!520))))))

(assert (=> b!4976312 (=> res!2124180 e!3110073)))

(declare-fun b!4976313 () Bool)

(assert (=> b!4976313 (= e!3110073 (inv!75171 (c!849159 totalInput!520)))))

(assert (= (and d!1602884 c!849167) b!4976311))

(assert (= (and d!1602884 (not c!849167)) b!4976312))

(assert (= (and b!4976312 (not res!2124180)) b!4976313))

(declare-fun m!6006584 () Bool)

(assert (=> b!4976311 m!6006584))

(declare-fun m!6006586 () Bool)

(assert (=> b!4976313 m!6006586))

(assert (=> b!4976276 d!1602884))

(declare-fun d!1602886 () Bool)

(declare-fun res!2124187 () Bool)

(declare-fun e!3110077 () Bool)

(assert (=> d!1602886 (=> (not res!2124187) (not e!3110077))))

(assert (=> d!1602886 (= res!2124187 (validRegex!5978 (regex!8406 rule!200)))))

(assert (=> d!1602886 (= (ruleValid!3814 thiss!16165 rule!200) e!3110077)))

(declare-fun b!4976320 () Bool)

(declare-fun res!2124188 () Bool)

(assert (=> b!4976320 (=> (not res!2124188) (not e!3110077))))

(declare-fun nullable!4629 (Regex!13639) Bool)

(assert (=> b!4976320 (= res!2124188 (not (nullable!4629 (regex!8406 rule!200))))))

(declare-fun b!4976321 () Bool)

(assert (=> b!4976321 (= e!3110077 (not (= (tag!9270 rule!200) (String!65455 ""))))))

(assert (= (and d!1602886 res!2124187) b!4976320))

(assert (= (and b!4976320 res!2124188) b!4976321))

(assert (=> d!1602886 m!6006550))

(declare-fun m!6006590 () Bool)

(assert (=> b!4976320 m!6006590))

(assert (=> b!4976281 d!1602886))

(declare-fun bm!347067 () Bool)

(declare-fun call!347073 () Bool)

(declare-fun call!347074 () Bool)

(assert (=> bm!347067 (= call!347073 call!347074)))

(declare-fun b!4976343 () Bool)

(declare-fun e!3110099 () Bool)

(assert (=> b!4976343 (= e!3110099 call!347074)))

(declare-fun b!4976344 () Bool)

(declare-fun e!3110098 () Bool)

(assert (=> b!4976344 (= e!3110098 call!347073)))

(declare-fun b!4976345 () Bool)

(declare-fun e!3110096 () Bool)

(declare-fun e!3110101 () Bool)

(assert (=> b!4976345 (= e!3110096 e!3110101)))

(declare-fun c!849172 () Bool)

(assert (=> b!4976345 (= c!849172 ((_ is Star!13639) (regex!8406 rule!200)))))

(declare-fun b!4976346 () Bool)

(declare-fun e!3110097 () Bool)

(assert (=> b!4976346 (= e!3110101 e!3110097)))

(declare-fun c!849173 () Bool)

(assert (=> b!4976346 (= c!849173 ((_ is Union!13639) (regex!8406 rule!200)))))

(declare-fun b!4976347 () Bool)

(assert (=> b!4976347 (= e!3110101 e!3110099)))

(declare-fun res!2124203 () Bool)

(assert (=> b!4976347 (= res!2124203 (not (nullable!4629 (reg!13968 (regex!8406 rule!200)))))))

(assert (=> b!4976347 (=> (not res!2124203) (not e!3110099))))

(declare-fun b!4976348 () Bool)

(declare-fun res!2124206 () Bool)

(declare-fun e!3110100 () Bool)

(assert (=> b!4976348 (=> (not res!2124206) (not e!3110100))))

(declare-fun call!347072 () Bool)

(assert (=> b!4976348 (= res!2124206 call!347072)))

(assert (=> b!4976348 (= e!3110097 e!3110100)))

(declare-fun bm!347068 () Bool)

(assert (=> bm!347068 (= call!347072 (validRegex!5978 (ite c!849173 (regOne!27791 (regex!8406 rule!200)) (regOne!27790 (regex!8406 rule!200)))))))

(declare-fun bm!347069 () Bool)

(assert (=> bm!347069 (= call!347074 (validRegex!5978 (ite c!849172 (reg!13968 (regex!8406 rule!200)) (ite c!849173 (regTwo!27791 (regex!8406 rule!200)) (regTwo!27790 (regex!8406 rule!200))))))))

(declare-fun b!4976349 () Bool)

(assert (=> b!4976349 (= e!3110100 call!347073)))

(declare-fun b!4976350 () Bool)

(declare-fun e!3110095 () Bool)

(assert (=> b!4976350 (= e!3110095 e!3110098)))

(declare-fun res!2124204 () Bool)

(assert (=> b!4976350 (=> (not res!2124204) (not e!3110098))))

(assert (=> b!4976350 (= res!2124204 call!347072)))

(declare-fun b!4976351 () Bool)

(declare-fun res!2124205 () Bool)

(assert (=> b!4976351 (=> res!2124205 e!3110095)))

(assert (=> b!4976351 (= res!2124205 (not ((_ is Concat!22355) (regex!8406 rule!200))))))

(assert (=> b!4976351 (= e!3110097 e!3110095)))

(declare-fun d!1602890 () Bool)

(declare-fun res!2124202 () Bool)

(assert (=> d!1602890 (=> res!2124202 e!3110096)))

(assert (=> d!1602890 (= res!2124202 ((_ is ElementMatch!13639) (regex!8406 rule!200)))))

(assert (=> d!1602890 (= (validRegex!5978 (regex!8406 rule!200)) e!3110096)))

(assert (= (and d!1602890 (not res!2124202)) b!4976345))

(assert (= (and b!4976345 c!849172) b!4976347))

(assert (= (and b!4976345 (not c!849172)) b!4976346))

(assert (= (and b!4976347 res!2124203) b!4976343))

(assert (= (and b!4976346 c!849173) b!4976348))

(assert (= (and b!4976346 (not c!849173)) b!4976351))

(assert (= (and b!4976348 res!2124206) b!4976349))

(assert (= (and b!4976351 (not res!2124205)) b!4976350))

(assert (= (and b!4976350 res!2124204) b!4976344))

(assert (= (or b!4976348 b!4976350) bm!347068))

(assert (= (or b!4976349 b!4976344) bm!347067))

(assert (= (or b!4976343 bm!347067) bm!347069))

(declare-fun m!6006606 () Bool)

(assert (=> b!4976347 m!6006606))

(declare-fun m!6006608 () Bool)

(assert (=> bm!347068 m!6006608))

(declare-fun m!6006610 () Bool)

(assert (=> bm!347069 m!6006610))

(assert (=> b!4976282 d!1602890))

(declare-fun d!1602902 () Bool)

(assert (=> d!1602902 (= (inv!75161 (tag!9270 rule!200)) (= (mod (str.len (value!269007 (tag!9270 rule!200))) 2) 0))))

(assert (=> b!4976278 d!1602902))

(declare-fun d!1602904 () Bool)

(declare-fun res!2124219 () Bool)

(declare-fun e!3110118 () Bool)

(assert (=> d!1602904 (=> (not res!2124219) (not e!3110118))))

(declare-fun semiInverseModEq!3711 (Int Int) Bool)

(assert (=> d!1602904 (= res!2124219 (semiInverseModEq!3711 (toChars!11240 (transformation!8406 rule!200)) (toValue!11381 (transformation!8406 rule!200))))))

(assert (=> d!1602904 (= (inv!75166 (transformation!8406 rule!200)) e!3110118)))

(declare-fun b!4976372 () Bool)

(declare-fun equivClasses!3559 (Int Int) Bool)

(assert (=> b!4976372 (= e!3110118 (equivClasses!3559 (toChars!11240 (transformation!8406 rule!200)) (toValue!11381 (transformation!8406 rule!200))))))

(assert (= (and d!1602904 res!2124219) b!4976372))

(declare-fun m!6006612 () Bool)

(assert (=> d!1602904 m!6006612))

(declare-fun m!6006614 () Bool)

(assert (=> b!4976372 m!6006614))

(assert (=> b!4976278 d!1602904))

(declare-fun d!1602906 () Bool)

(declare-fun isBalanced!4214 (Conc!15158) Bool)

(assert (=> d!1602906 (= (inv!75167 input!1580) (isBalanced!4214 (c!849159 input!1580)))))

(declare-fun bs!1183981 () Bool)

(assert (= bs!1183981 d!1602906))

(declare-fun m!6006616 () Bool)

(assert (=> bs!1183981 m!6006616))

(assert (=> start!525078 d!1602906))

(declare-fun d!1602908 () Bool)

(assert (=> d!1602908 (= (inv!75167 totalInput!520) (isBalanced!4214 (c!849159 totalInput!520)))))

(declare-fun bs!1183982 () Bool)

(assert (= bs!1183982 d!1602908))

(declare-fun m!6006618 () Bool)

(assert (=> bs!1183982 m!6006618))

(assert (=> start!525078 d!1602908))

(declare-fun tp!1395334 () Bool)

(declare-fun tp!1395333 () Bool)

(declare-fun b!4976403 () Bool)

(declare-fun e!3110134 () Bool)

(assert (=> b!4976403 (= e!3110134 (and (inv!75165 (left!41943 (c!849159 input!1580))) tp!1395333 (inv!75165 (right!42273 (c!849159 input!1580))) tp!1395334))))

(declare-fun b!4976405 () Bool)

(declare-fun e!3110135 () Bool)

(declare-fun tp!1395335 () Bool)

(assert (=> b!4976405 (= e!3110135 tp!1395335)))

(declare-fun b!4976404 () Bool)

(declare-fun inv!75172 (IArray!30377) Bool)

(assert (=> b!4976404 (= e!3110134 (and (inv!75172 (xs!18484 (c!849159 input!1580))) e!3110135))))

(assert (=> b!4976279 (= tp!1395317 (and (inv!75165 (c!849159 input!1580)) e!3110134))))

(assert (= (and b!4976279 ((_ is Node!15158) (c!849159 input!1580))) b!4976403))

(assert (= b!4976404 b!4976405))

(assert (= (and b!4976279 ((_ is Leaf!25186) (c!849159 input!1580))) b!4976404))

(declare-fun m!6006630 () Bool)

(assert (=> b!4976403 m!6006630))

(declare-fun m!6006632 () Bool)

(assert (=> b!4976403 m!6006632))

(declare-fun m!6006634 () Bool)

(assert (=> b!4976404 m!6006634))

(assert (=> b!4976279 m!6006556))

(declare-fun tp!1395339 () Bool)

(declare-fun tp!1395338 () Bool)

(declare-fun e!3110136 () Bool)

(declare-fun b!4976406 () Bool)

(assert (=> b!4976406 (= e!3110136 (and (inv!75165 (left!41943 (c!849159 totalInput!520))) tp!1395338 (inv!75165 (right!42273 (c!849159 totalInput!520))) tp!1395339))))

(declare-fun b!4976408 () Bool)

(declare-fun e!3110137 () Bool)

(declare-fun tp!1395340 () Bool)

(assert (=> b!4976408 (= e!3110137 tp!1395340)))

(declare-fun b!4976407 () Bool)

(assert (=> b!4976407 (= e!3110136 (and (inv!75172 (xs!18484 (c!849159 totalInput!520))) e!3110137))))

(assert (=> b!4976276 (= tp!1395314 (and (inv!75165 (c!849159 totalInput!520)) e!3110136))))

(assert (= (and b!4976276 ((_ is Node!15158) (c!849159 totalInput!520))) b!4976406))

(assert (= b!4976407 b!4976408))

(assert (= (and b!4976276 ((_ is Leaf!25186) (c!849159 totalInput!520))) b!4976407))

(declare-fun m!6006636 () Bool)

(assert (=> b!4976406 m!6006636))

(declare-fun m!6006638 () Bool)

(assert (=> b!4976406 m!6006638))

(declare-fun m!6006640 () Bool)

(assert (=> b!4976407 m!6006640))

(assert (=> b!4976276 m!6006548))

(declare-fun b!4976433 () Bool)

(declare-fun e!3110145 () Bool)

(declare-fun tp!1395363 () Bool)

(assert (=> b!4976433 (= e!3110145 tp!1395363)))

(assert (=> b!4976278 (= tp!1395318 e!3110145)))

(declare-fun b!4976434 () Bool)

(declare-fun tp!1395364 () Bool)

(declare-fun tp!1395365 () Bool)

(assert (=> b!4976434 (= e!3110145 (and tp!1395364 tp!1395365))))

(declare-fun b!4976432 () Bool)

(declare-fun tp!1395362 () Bool)

(declare-fun tp!1395366 () Bool)

(assert (=> b!4976432 (= e!3110145 (and tp!1395362 tp!1395366))))

(declare-fun b!4976431 () Bool)

(declare-fun tp_is_empty!36359 () Bool)

(assert (=> b!4976431 (= e!3110145 tp_is_empty!36359)))

(assert (= (and b!4976278 ((_ is ElementMatch!13639) (regex!8406 rule!200))) b!4976431))

(assert (= (and b!4976278 ((_ is Concat!22355) (regex!8406 rule!200))) b!4976432))

(assert (= (and b!4976278 ((_ is Star!13639) (regex!8406 rule!200))) b!4976433))

(assert (= (and b!4976278 ((_ is Union!13639) (regex!8406 rule!200))) b!4976434))

(check-sat (not b!4976372) (not b!4976405) (not b!4976311) (not b!4976434) (not d!1602878) (not d!1602886) (not b!4976347) b_and!349337 (not b!4976433) (not b!4976288) (not b!4976308) (not b!4976432) (not b!4976313) (not b!4976408) (not b!4976320) b_and!349335 (not b!4976279) (not b!4976407) (not b!4976403) (not d!1602904) (not d!1602876) (not d!1602908) (not d!1602870) (not d!1602906) (not bm!347069) (not b!4976276) (not b!4976406) (not b!4976306) tp_is_empty!36359 (not b_next!133713) (not b!4976404) (not bm!347068) (not b_next!133715))
(check-sat b_and!349337 b_and!349335 (not b_next!133715) (not b_next!133713))
