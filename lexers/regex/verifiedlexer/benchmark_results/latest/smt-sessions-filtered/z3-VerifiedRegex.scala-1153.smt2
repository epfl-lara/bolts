; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59784 () Bool)

(assert start!59784)

(declare-fun b!621291 () Bool)

(declare-fun b_free!18129 () Bool)

(declare-fun b_next!18145 () Bool)

(assert (=> b!621291 (= b_free!18129 (not b_next!18145))))

(declare-fun tp!192896 () Bool)

(declare-fun b_and!61731 () Bool)

(assert (=> b!621291 (= tp!192896 b_and!61731)))

(declare-fun b_free!18131 () Bool)

(declare-fun b_next!18147 () Bool)

(assert (=> b!621291 (= b_free!18131 (not b_next!18147))))

(declare-fun tp!192897 () Bool)

(declare-fun b_and!61733 () Bool)

(assert (=> b!621291 (= tp!192897 b_and!61733)))

(declare-fun b!621289 () Bool)

(declare-fun b_free!18133 () Bool)

(declare-fun b_next!18149 () Bool)

(assert (=> b!621289 (= b_free!18133 (not b_next!18149))))

(declare-fun tp!192895 () Bool)

(declare-fun b_and!61735 () Bool)

(assert (=> b!621289 (= tp!192895 b_and!61735)))

(declare-fun b_free!18135 () Bool)

(declare-fun b_next!18151 () Bool)

(assert (=> b!621289 (= b_free!18135 (not b_next!18151))))

(declare-fun tp!192898 () Bool)

(declare-fun b_and!61737 () Bool)

(assert (=> b!621289 (= tp!192898 b_and!61737)))

(declare-fun e!377126 () Bool)

(declare-fun tp!192899 () Bool)

(declare-datatypes ((List!6367 0))(
  ( (Nil!6357) (Cons!6357 (h!11758 (_ BitVec 16)) (t!81774 List!6367)) )
))
(declare-datatypes ((TokenValue!1315 0))(
  ( (FloatLiteralValue!2630 (text!9650 List!6367)) (TokenValueExt!1314 (__x!4530 Int)) (Broken!6575 (value!41631 List!6367)) (Object!1324) (End!1315) (Def!1315) (Underscore!1315) (Match!1315) (Else!1315) (Error!1315) (Case!1315) (If!1315) (Extends!1315) (Abstract!1315) (Class!1315) (Val!1315) (DelimiterValue!2630 (del!1375 List!6367)) (KeywordValue!1321 (value!41632 List!6367)) (CommentValue!2630 (value!41633 List!6367)) (WhitespaceValue!2630 (value!41634 List!6367)) (IndentationValue!1315 (value!41635 List!6367)) (String!8322) (Int32!1315) (Broken!6576 (value!41636 List!6367)) (Boolean!1316) (Unit!11451) (OperatorValue!1318 (op!1375 List!6367)) (IdentifierValue!2630 (value!41637 List!6367)) (IdentifierValue!2631 (value!41638 List!6367)) (WhitespaceValue!2631 (value!41639 List!6367)) (True!2630) (False!2630) (Broken!6577 (value!41640 List!6367)) (Broken!6578 (value!41641 List!6367)) (True!2631) (RightBrace!1315) (RightBracket!1315) (Colon!1315) (Null!1315) (Comma!1315) (LeftBracket!1315) (False!2631) (LeftBrace!1315) (ImaginaryLiteralValue!1315 (text!9651 List!6367)) (StringLiteralValue!3945 (value!41642 List!6367)) (EOFValue!1315 (value!41643 List!6367)) (IdentValue!1315 (value!41644 List!6367)) (DelimiterValue!2631 (value!41645 List!6367)) (DedentValue!1315 (value!41646 List!6367)) (NewLineValue!1315 (value!41647 List!6367)) (IntegerValue!3945 (value!41648 (_ BitVec 32)) (text!9652 List!6367)) (IntegerValue!3946 (value!41649 Int) (text!9653 List!6367)) (Times!1315) (Or!1315) (Equal!1315) (Minus!1315) (Broken!6579 (value!41650 List!6367)) (And!1315) (Div!1315) (LessEqual!1315) (Mod!1315) (Concat!2940) (Not!1315) (Plus!1315) (SpaceValue!1315 (value!41651 List!6367)) (IntegerValue!3947 (value!41652 Int) (text!9654 List!6367)) (StringLiteralValue!3946 (text!9655 List!6367)) (FloatLiteralValue!2631 (text!9656 List!6367)) (BytesLiteralValue!1315 (value!41653 List!6367)) (CommentValue!2631 (value!41654 List!6367)) (StringLiteralValue!3947 (value!41655 List!6367)) (ErrorTokenValue!1315 (msg!1376 List!6367)) )
))
(declare-datatypes ((C!4176 0))(
  ( (C!4177 (val!2314 Int)) )
))
(declare-datatypes ((Regex!1625 0))(
  ( (ElementMatch!1625 (c!114227 C!4176)) (Concat!2941 (regOne!3762 Regex!1625) (regTwo!3762 Regex!1625)) (EmptyExpr!1625) (Star!1625 (reg!1954 Regex!1625)) (EmptyLang!1625) (Union!1625 (regOne!3763 Regex!1625) (regTwo!3763 Regex!1625)) )
))
(declare-datatypes ((String!8323 0))(
  ( (String!8324 (value!41656 String)) )
))
(declare-datatypes ((List!6368 0))(
  ( (Nil!6358) (Cons!6358 (h!11759 C!4176) (t!81775 List!6368)) )
))
(declare-datatypes ((IArray!4047 0))(
  ( (IArray!4048 (innerList!2081 List!6368)) )
))
(declare-datatypes ((Conc!2023 0))(
  ( (Node!2023 (left!5038 Conc!2023) (right!5368 Conc!2023) (csize!4276 Int) (cheight!2234 Int)) (Leaf!3177 (xs!4660 IArray!4047) (csize!4277 Int)) (Empty!2023) )
))
(declare-datatypes ((BalanceConc!4054 0))(
  ( (BalanceConc!4055 (c!114228 Conc!2023)) )
))
(declare-datatypes ((TokenValueInjection!2398 0))(
  ( (TokenValueInjection!2399 (toValue!2212 Int) (toChars!2071 Int)) )
))
(declare-datatypes ((Rule!2382 0))(
  ( (Rule!2383 (regex!1291 Regex!1625) (tag!1553 String!8323) (isSeparator!1291 Bool) (transformation!1291 TokenValueInjection!2398)) )
))
(declare-datatypes ((Token!2306 0))(
  ( (Token!2307 (value!41657 TokenValue!1315) (rule!2085 Rule!2382) (size!4950 Int) (originalCharacters!1324 List!6368)) )
))
(declare-datatypes ((List!6369 0))(
  ( (Nil!6359) (Cons!6359 (h!11760 Token!2306) (t!81776 List!6369)) )
))
(declare-fun producedTokens!8 () List!6369)

(declare-fun e!377113 () Bool)

(declare-fun b!621287 () Bool)

(declare-fun inv!21 (TokenValue!1315) Bool)

(assert (=> b!621287 (= e!377113 (and (inv!21 (value!41657 (h!11760 producedTokens!8))) e!377126 tp!192899))))

(declare-fun e!377118 () Bool)

(declare-fun tp!192903 () Bool)

(declare-fun b!621288 () Bool)

(declare-fun inv!8039 (Token!2306) Bool)

(assert (=> b!621288 (= e!377118 (and (inv!8039 (h!11760 producedTokens!8)) e!377113 tp!192903))))

(declare-fun e!377123 () Bool)

(assert (=> b!621289 (= e!377123 (and tp!192895 tp!192898))))

(declare-fun b!621290 () Bool)

(declare-fun e!377116 () Bool)

(declare-fun e!377119 () Bool)

(assert (=> b!621290 (= e!377116 e!377119)))

(declare-fun res!270428 () Bool)

(assert (=> b!621290 (=> (not res!270428) (not e!377119))))

(declare-datatypes ((IArray!4049 0))(
  ( (IArray!4050 (innerList!2082 List!6369)) )
))
(declare-datatypes ((Conc!2024 0))(
  ( (Node!2024 (left!5039 Conc!2024) (right!5369 Conc!2024) (csize!4278 Int) (cheight!2235 Int)) (Leaf!3178 (xs!4661 IArray!4049) (csize!4279 Int)) (Empty!2024) )
))
(declare-datatypes ((BalanceConc!4056 0))(
  ( (BalanceConc!4057 (c!114229 Conc!2024)) )
))
(declare-datatypes ((tuple2!7158 0))(
  ( (tuple2!7159 (_1!3843 BalanceConc!4056) (_2!3843 BalanceConc!4054)) )
))
(declare-fun lt!265657 () tuple2!7158)

(declare-fun list!2664 (BalanceConc!4056) List!6369)

(assert (=> b!621290 (= res!270428 (= (list!2664 (_1!3843 lt!265657)) producedTokens!8))))

(declare-datatypes ((LexerInterface!1179 0))(
  ( (LexerInterfaceExt!1176 (__x!4531 Int)) (Lexer!1177) )
))
(declare-fun thiss!25571 () LexerInterface!1179)

(declare-fun input!3206 () List!6368)

(declare-datatypes ((List!6370 0))(
  ( (Nil!6360) (Cons!6360 (h!11761 Rule!2382) (t!81777 List!6370)) )
))
(declare-fun rules!3735 () List!6370)

(declare-fun lex!574 (LexerInterface!1179 List!6370 BalanceConc!4054) tuple2!7158)

(declare-fun seqFromList!1446 (List!6368) BalanceConc!4054)

(assert (=> b!621290 (= lt!265657 (lex!574 thiss!25571 rules!3735 (seqFromList!1446 input!3206)))))

(declare-fun e!377125 () Bool)

(assert (=> b!621291 (= e!377125 (and tp!192896 tp!192897))))

(declare-fun b!621292 () Bool)

(declare-fun e!377120 () Bool)

(declare-fun e!377117 () Bool)

(declare-fun tp!192894 () Bool)

(assert (=> b!621292 (= e!377120 (and e!377117 tp!192894))))

(declare-fun b!621293 () Bool)

(declare-fun res!270429 () Bool)

(assert (=> b!621293 (=> (not res!270429) (not e!377116))))

(declare-fun isEmpty!4560 (List!6370) Bool)

(assert (=> b!621293 (= res!270429 (not (isEmpty!4560 rules!3735)))))

(declare-fun b!621294 () Bool)

(declare-fun res!270424 () Bool)

(assert (=> b!621294 (=> (not res!270424) (not e!377116))))

(declare-fun rulesInvariant!1140 (LexerInterface!1179 List!6370) Bool)

(assert (=> b!621294 (= res!270424 (rulesInvariant!1140 thiss!25571 rules!3735))))

(declare-fun b!621295 () Bool)

(declare-fun res!270425 () Bool)

(assert (=> b!621295 (=> (not res!270425) (not e!377119))))

(declare-fun suffix!1461 () List!6368)

(declare-fun list!2665 (BalanceConc!4054) List!6368)

(assert (=> b!621295 (= res!270425 (= (list!2665 (_2!3843 lt!265657)) suffix!1461))))

(declare-fun b!621296 () Bool)

(declare-fun e!377124 () Bool)

(declare-fun tp_is_empty!3609 () Bool)

(declare-fun tp!192893 () Bool)

(assert (=> b!621296 (= e!377124 (and tp_is_empty!3609 tp!192893))))

(declare-fun lt!265658 () tuple2!7158)

(declare-fun b!621297 () Bool)

(declare-datatypes ((tuple2!7160 0))(
  ( (tuple2!7161 (_1!3844 List!6369) (_2!3844 List!6368)) )
))
(declare-fun tail!844 (List!6369) List!6369)

(assert (=> b!621297 (= e!377119 (not (= (tuple2!7161 (list!2664 (_1!3843 lt!265658)) (list!2665 (_2!3843 lt!265658))) (tuple2!7161 (tail!844 producedTokens!8) suffix!1461))))))

(declare-datatypes ((tuple2!7162 0))(
  ( (tuple2!7163 (_1!3845 Token!2306) (_2!3845 List!6368)) )
))
(declare-datatypes ((Option!1631 0))(
  ( (None!1630) (Some!1630 (v!16559 tuple2!7162)) )
))
(declare-fun get!2423 (Option!1631) tuple2!7162)

(declare-fun maxPrefix!861 (LexerInterface!1179 List!6370 List!6368) Option!1631)

(assert (=> b!621297 (= lt!265658 (lex!574 thiss!25571 rules!3735 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206))))))))

(declare-fun b!621298 () Bool)

(declare-fun res!270427 () Bool)

(assert (=> b!621298 (=> (not res!270427) (not e!377116))))

(declare-fun size!4951 (List!6369) Int)

(assert (=> b!621298 (= res!270427 (> (size!4951 producedTokens!8) 0))))

(declare-fun b!621300 () Bool)

(declare-fun tp!192902 () Bool)

(declare-fun inv!8036 (String!8323) Bool)

(declare-fun inv!8040 (TokenValueInjection!2398) Bool)

(assert (=> b!621300 (= e!377117 (and tp!192902 (inv!8036 (tag!1553 (h!11761 rules!3735))) (inv!8040 (transformation!1291 (h!11761 rules!3735))) e!377125))))

(declare-fun tp!192901 () Bool)

(declare-fun b!621301 () Bool)

(assert (=> b!621301 (= e!377126 (and tp!192901 (inv!8036 (tag!1553 (rule!2085 (h!11760 producedTokens!8)))) (inv!8040 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) e!377123))))

(declare-fun b!621299 () Bool)

(declare-fun e!377114 () Bool)

(declare-fun tp!192900 () Bool)

(assert (=> b!621299 (= e!377114 (and tp_is_empty!3609 tp!192900))))

(declare-fun res!270426 () Bool)

(assert (=> start!59784 (=> (not res!270426) (not e!377116))))

(get-info :version)

(assert (=> start!59784 (= res!270426 ((_ is Lexer!1177) thiss!25571))))

(assert (=> start!59784 e!377116))

(assert (=> start!59784 e!377118))

(assert (=> start!59784 true))

(assert (=> start!59784 e!377114))

(assert (=> start!59784 e!377124))

(assert (=> start!59784 e!377120))

(assert (= (and start!59784 res!270426) b!621294))

(assert (= (and b!621294 res!270424) b!621293))

(assert (= (and b!621293 res!270429) b!621298))

(assert (= (and b!621298 res!270427) b!621290))

(assert (= (and b!621290 res!270428) b!621295))

(assert (= (and b!621295 res!270425) b!621297))

(assert (= b!621301 b!621289))

(assert (= b!621287 b!621301))

(assert (= b!621288 b!621287))

(assert (= (and start!59784 ((_ is Cons!6359) producedTokens!8)) b!621288))

(assert (= (and start!59784 ((_ is Cons!6358) suffix!1461)) b!621299))

(assert (= (and start!59784 ((_ is Cons!6358) input!3206)) b!621296))

(assert (= b!621300 b!621291))

(assert (= b!621292 b!621300))

(assert (= (and start!59784 ((_ is Cons!6360) rules!3735)) b!621292))

(declare-fun m!889083 () Bool)

(assert (=> b!621301 m!889083))

(declare-fun m!889085 () Bool)

(assert (=> b!621301 m!889085))

(declare-fun m!889087 () Bool)

(assert (=> b!621287 m!889087))

(declare-fun m!889089 () Bool)

(assert (=> b!621288 m!889089))

(declare-fun m!889091 () Bool)

(assert (=> b!621294 m!889091))

(declare-fun m!889093 () Bool)

(assert (=> b!621300 m!889093))

(declare-fun m!889095 () Bool)

(assert (=> b!621300 m!889095))

(declare-fun m!889097 () Bool)

(assert (=> b!621297 m!889097))

(declare-fun m!889099 () Bool)

(assert (=> b!621297 m!889099))

(declare-fun m!889101 () Bool)

(assert (=> b!621297 m!889101))

(declare-fun m!889103 () Bool)

(assert (=> b!621297 m!889103))

(assert (=> b!621297 m!889097))

(declare-fun m!889105 () Bool)

(assert (=> b!621297 m!889105))

(declare-fun m!889107 () Bool)

(assert (=> b!621297 m!889107))

(declare-fun m!889109 () Bool)

(assert (=> b!621297 m!889109))

(assert (=> b!621297 m!889101))

(declare-fun m!889111 () Bool)

(assert (=> b!621295 m!889111))

(declare-fun m!889113 () Bool)

(assert (=> b!621298 m!889113))

(declare-fun m!889115 () Bool)

(assert (=> b!621293 m!889115))

(declare-fun m!889117 () Bool)

(assert (=> b!621290 m!889117))

(declare-fun m!889119 () Bool)

(assert (=> b!621290 m!889119))

(assert (=> b!621290 m!889119))

(declare-fun m!889121 () Bool)

(assert (=> b!621290 m!889121))

(check-sat (not b_next!18151) b_and!61733 b_and!61735 (not b!621288) (not b!621299) (not b!621301) (not b!621295) (not b_next!18149) (not b!621297) (not b!621290) tp_is_empty!3609 (not b!621294) b_and!61737 (not b!621300) (not b_next!18145) (not b!621287) b_and!61731 (not b!621298) (not b_next!18147) (not b!621292) (not b!621296) (not b!621293))
(check-sat b_and!61737 (not b_next!18151) b_and!61733 b_and!61735 (not b_next!18145) b_and!61731 (not b_next!18147) (not b_next!18149))
(get-model)

(declare-fun d!217464 () Bool)

(declare-fun list!2668 (Conc!2024) List!6369)

(assert (=> d!217464 (= (list!2664 (_1!3843 lt!265657)) (list!2668 (c!114229 (_1!3843 lt!265657))))))

(declare-fun bs!72011 () Bool)

(assert (= bs!72011 d!217464))

(declare-fun m!889123 () Bool)

(assert (=> bs!72011 m!889123))

(assert (=> b!621290 d!217464))

(declare-fun b!621371 () Bool)

(declare-fun e!377171 () Bool)

(declare-fun lt!265668 () tuple2!7158)

(assert (=> b!621371 (= e!377171 (= (_2!3843 lt!265668) (seqFromList!1446 input!3206)))))

(declare-fun d!217466 () Bool)

(declare-fun e!377170 () Bool)

(assert (=> d!217466 e!377170))

(declare-fun res!270465 () Bool)

(assert (=> d!217466 (=> (not res!270465) (not e!377170))))

(assert (=> d!217466 (= res!270465 e!377171)))

(declare-fun c!114245 () Bool)

(declare-fun size!4955 (BalanceConc!4056) Int)

(assert (=> d!217466 (= c!114245 (> (size!4955 (_1!3843 lt!265668)) 0))))

(declare-fun lexTailRecV2!275 (LexerInterface!1179 List!6370 BalanceConc!4054 BalanceConc!4054 BalanceConc!4054 BalanceConc!4056) tuple2!7158)

(assert (=> d!217466 (= lt!265668 (lexTailRecV2!275 thiss!25571 rules!3735 (seqFromList!1446 input!3206) (BalanceConc!4055 Empty!2023) (seqFromList!1446 input!3206) (BalanceConc!4057 Empty!2024)))))

(assert (=> d!217466 (= (lex!574 thiss!25571 rules!3735 (seqFromList!1446 input!3206)) lt!265668)))

(declare-fun b!621372 () Bool)

(declare-fun res!270464 () Bool)

(assert (=> b!621372 (=> (not res!270464) (not e!377170))))

(declare-fun lexList!313 (LexerInterface!1179 List!6370 List!6368) tuple2!7160)

(assert (=> b!621372 (= res!270464 (= (list!2664 (_1!3843 lt!265668)) (_1!3844 (lexList!313 thiss!25571 rules!3735 (list!2665 (seqFromList!1446 input!3206))))))))

(declare-fun b!621373 () Bool)

(declare-fun e!377172 () Bool)

(declare-fun isEmpty!4564 (BalanceConc!4056) Bool)

(assert (=> b!621373 (= e!377172 (not (isEmpty!4564 (_1!3843 lt!265668))))))

(declare-fun b!621374 () Bool)

(assert (=> b!621374 (= e!377171 e!377172)))

(declare-fun res!270466 () Bool)

(declare-fun size!4956 (BalanceConc!4054) Int)

(assert (=> b!621374 (= res!270466 (< (size!4956 (_2!3843 lt!265668)) (size!4956 (seqFromList!1446 input!3206))))))

(assert (=> b!621374 (=> (not res!270466) (not e!377172))))

(declare-fun b!621375 () Bool)

(assert (=> b!621375 (= e!377170 (= (list!2665 (_2!3843 lt!265668)) (_2!3844 (lexList!313 thiss!25571 rules!3735 (list!2665 (seqFromList!1446 input!3206))))))))

(assert (= (and d!217466 c!114245) b!621374))

(assert (= (and d!217466 (not c!114245)) b!621371))

(assert (= (and b!621374 res!270466) b!621373))

(assert (= (and d!217466 res!270465) b!621372))

(assert (= (and b!621372 res!270464) b!621375))

(declare-fun m!889201 () Bool)

(assert (=> b!621374 m!889201))

(assert (=> b!621374 m!889119))

(declare-fun m!889203 () Bool)

(assert (=> b!621374 m!889203))

(declare-fun m!889205 () Bool)

(assert (=> b!621375 m!889205))

(assert (=> b!621375 m!889119))

(declare-fun m!889207 () Bool)

(assert (=> b!621375 m!889207))

(assert (=> b!621375 m!889207))

(declare-fun m!889209 () Bool)

(assert (=> b!621375 m!889209))

(declare-fun m!889211 () Bool)

(assert (=> b!621372 m!889211))

(assert (=> b!621372 m!889119))

(assert (=> b!621372 m!889207))

(assert (=> b!621372 m!889207))

(assert (=> b!621372 m!889209))

(declare-fun m!889213 () Bool)

(assert (=> d!217466 m!889213))

(assert (=> d!217466 m!889119))

(assert (=> d!217466 m!889119))

(declare-fun m!889215 () Bool)

(assert (=> d!217466 m!889215))

(declare-fun m!889217 () Bool)

(assert (=> b!621373 m!889217))

(assert (=> b!621290 d!217466))

(declare-fun d!217504 () Bool)

(declare-fun fromListB!630 (List!6368) BalanceConc!4054)

(assert (=> d!217504 (= (seqFromList!1446 input!3206) (fromListB!630 input!3206))))

(declare-fun bs!72016 () Bool)

(assert (= bs!72016 d!217504))

(declare-fun m!889219 () Bool)

(assert (=> bs!72016 m!889219))

(assert (=> b!621290 d!217504))

(declare-fun d!217506 () Bool)

(declare-fun list!2669 (Conc!2023) List!6368)

(assert (=> d!217506 (= (list!2665 (_2!3843 lt!265657)) (list!2669 (c!114228 (_2!3843 lt!265657))))))

(declare-fun bs!72017 () Bool)

(assert (= bs!72017 d!217506))

(declare-fun m!889221 () Bool)

(assert (=> bs!72017 m!889221))

(assert (=> b!621295 d!217506))

(declare-fun d!217508 () Bool)

(assert (=> d!217508 (= (inv!8036 (tag!1553 (rule!2085 (h!11760 producedTokens!8)))) (= (mod (str.len (value!41656 (tag!1553 (rule!2085 (h!11760 producedTokens!8))))) 2) 0))))

(assert (=> b!621301 d!217508))

(declare-fun d!217510 () Bool)

(declare-fun res!270483 () Bool)

(declare-fun e!377181 () Bool)

(assert (=> d!217510 (=> (not res!270483) (not e!377181))))

(declare-fun semiInverseModEq!521 (Int Int) Bool)

(assert (=> d!217510 (= res!270483 (semiInverseModEq!521 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (toValue!2212 (transformation!1291 (rule!2085 (h!11760 producedTokens!8))))))))

(assert (=> d!217510 (= (inv!8040 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) e!377181)))

(declare-fun b!621396 () Bool)

(declare-fun equivClasses!504 (Int Int) Bool)

(assert (=> b!621396 (= e!377181 (equivClasses!504 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (toValue!2212 (transformation!1291 (rule!2085 (h!11760 producedTokens!8))))))))

(assert (= (and d!217510 res!270483) b!621396))

(declare-fun m!889223 () Bool)

(assert (=> d!217510 m!889223))

(declare-fun m!889225 () Bool)

(assert (=> b!621396 m!889225))

(assert (=> b!621301 d!217510))

(declare-fun d!217512 () Bool)

(declare-fun res!270493 () Bool)

(declare-fun e!377187 () Bool)

(assert (=> d!217512 (=> (not res!270493) (not e!377187))))

(declare-fun rulesValid!483 (LexerInterface!1179 List!6370) Bool)

(assert (=> d!217512 (= res!270493 (rulesValid!483 thiss!25571 rules!3735))))

(assert (=> d!217512 (= (rulesInvariant!1140 thiss!25571 rules!3735) e!377187)))

(declare-fun b!621408 () Bool)

(declare-datatypes ((List!6372 0))(
  ( (Nil!6362) (Cons!6362 (h!11763 String!8323) (t!81795 List!6372)) )
))
(declare-fun noDuplicateTag!483 (LexerInterface!1179 List!6370 List!6372) Bool)

(assert (=> b!621408 (= e!377187 (noDuplicateTag!483 thiss!25571 rules!3735 Nil!6362))))

(assert (= (and d!217512 res!270493) b!621408))

(declare-fun m!889227 () Bool)

(assert (=> d!217512 m!889227))

(declare-fun m!889229 () Bool)

(assert (=> b!621408 m!889229))

(assert (=> b!621294 d!217512))

(declare-fun d!217514 () Bool)

(assert (=> d!217514 (= (inv!8036 (tag!1553 (h!11761 rules!3735))) (= (mod (str.len (value!41656 (tag!1553 (h!11761 rules!3735)))) 2) 0))))

(assert (=> b!621300 d!217514))

(declare-fun d!217516 () Bool)

(declare-fun res!270494 () Bool)

(declare-fun e!377188 () Bool)

(assert (=> d!217516 (=> (not res!270494) (not e!377188))))

(assert (=> d!217516 (= res!270494 (semiInverseModEq!521 (toChars!2071 (transformation!1291 (h!11761 rules!3735))) (toValue!2212 (transformation!1291 (h!11761 rules!3735)))))))

(assert (=> d!217516 (= (inv!8040 (transformation!1291 (h!11761 rules!3735))) e!377188)))

(declare-fun b!621409 () Bool)

(assert (=> b!621409 (= e!377188 (equivClasses!504 (toChars!2071 (transformation!1291 (h!11761 rules!3735))) (toValue!2212 (transformation!1291 (h!11761 rules!3735)))))))

(assert (= (and d!217516 res!270494) b!621409))

(declare-fun m!889231 () Bool)

(assert (=> d!217516 m!889231))

(declare-fun m!889233 () Bool)

(assert (=> b!621409 m!889233))

(assert (=> b!621300 d!217516))

(declare-fun d!217518 () Bool)

(declare-fun lt!265686 () Int)

(assert (=> d!217518 (>= lt!265686 0)))

(declare-fun e!377203 () Int)

(assert (=> d!217518 (= lt!265686 e!377203)))

(declare-fun c!114251 () Bool)

(assert (=> d!217518 (= c!114251 ((_ is Nil!6359) producedTokens!8))))

(assert (=> d!217518 (= (size!4951 producedTokens!8) lt!265686)))

(declare-fun b!621424 () Bool)

(assert (=> b!621424 (= e!377203 0)))

(declare-fun b!621425 () Bool)

(assert (=> b!621425 (= e!377203 (+ 1 (size!4951 (t!81776 producedTokens!8))))))

(assert (= (and d!217518 c!114251) b!621424))

(assert (= (and d!217518 (not c!114251)) b!621425))

(declare-fun m!889273 () Bool)

(assert (=> b!621425 m!889273))

(assert (=> b!621298 d!217518))

(declare-fun b!621476 () Bool)

(declare-fun e!377237 () Bool)

(declare-fun e!377239 () Bool)

(assert (=> b!621476 (= e!377237 e!377239)))

(declare-fun c!114256 () Bool)

(assert (=> b!621476 (= c!114256 ((_ is IntegerValue!3946) (value!41657 (h!11760 producedTokens!8))))))

(declare-fun b!621477 () Bool)

(declare-fun inv!16 (TokenValue!1315) Bool)

(assert (=> b!621477 (= e!377237 (inv!16 (value!41657 (h!11760 producedTokens!8))))))

(declare-fun d!217524 () Bool)

(declare-fun c!114257 () Bool)

(assert (=> d!217524 (= c!114257 ((_ is IntegerValue!3945) (value!41657 (h!11760 producedTokens!8))))))

(assert (=> d!217524 (= (inv!21 (value!41657 (h!11760 producedTokens!8))) e!377237)))

(declare-fun b!621478 () Bool)

(declare-fun res!270497 () Bool)

(declare-fun e!377238 () Bool)

(assert (=> b!621478 (=> res!270497 e!377238)))

(assert (=> b!621478 (= res!270497 (not ((_ is IntegerValue!3947) (value!41657 (h!11760 producedTokens!8)))))))

(assert (=> b!621478 (= e!377239 e!377238)))

(declare-fun b!621479 () Bool)

(declare-fun inv!17 (TokenValue!1315) Bool)

(assert (=> b!621479 (= e!377239 (inv!17 (value!41657 (h!11760 producedTokens!8))))))

(declare-fun b!621480 () Bool)

(declare-fun inv!15 (TokenValue!1315) Bool)

(assert (=> b!621480 (= e!377238 (inv!15 (value!41657 (h!11760 producedTokens!8))))))

(assert (= (and d!217524 c!114257) b!621477))

(assert (= (and d!217524 (not c!114257)) b!621476))

(assert (= (and b!621476 c!114256) b!621479))

(assert (= (and b!621476 (not c!114256)) b!621478))

(assert (= (and b!621478 (not res!270497)) b!621480))

(declare-fun m!889287 () Bool)

(assert (=> b!621477 m!889287))

(declare-fun m!889289 () Bool)

(assert (=> b!621479 m!889289))

(declare-fun m!889291 () Bool)

(assert (=> b!621480 m!889291))

(assert (=> b!621287 d!217524))

(declare-fun d!217526 () Bool)

(declare-fun res!270502 () Bool)

(declare-fun e!377242 () Bool)

(assert (=> d!217526 (=> (not res!270502) (not e!377242))))

(declare-fun isEmpty!4565 (List!6368) Bool)

(assert (=> d!217526 (= res!270502 (not (isEmpty!4565 (originalCharacters!1324 (h!11760 producedTokens!8)))))))

(assert (=> d!217526 (= (inv!8039 (h!11760 producedTokens!8)) e!377242)))

(declare-fun b!621485 () Bool)

(declare-fun res!270503 () Bool)

(assert (=> b!621485 (=> (not res!270503) (not e!377242))))

(declare-fun dynLambda!3611 (Int TokenValue!1315) BalanceConc!4054)

(assert (=> b!621485 (= res!270503 (= (originalCharacters!1324 (h!11760 producedTokens!8)) (list!2665 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8))))))))

(declare-fun b!621486 () Bool)

(declare-fun size!4957 (List!6368) Int)

(assert (=> b!621486 (= e!377242 (= (size!4950 (h!11760 producedTokens!8)) (size!4957 (originalCharacters!1324 (h!11760 producedTokens!8)))))))

(assert (= (and d!217526 res!270502) b!621485))

(assert (= (and b!621485 res!270503) b!621486))

(declare-fun b_lambda!24581 () Bool)

(assert (=> (not b_lambda!24581) (not b!621485)))

(declare-fun t!81787 () Bool)

(declare-fun tb!53935 () Bool)

(assert (=> (and b!621291 (= (toChars!2071 (transformation!1291 (h!11761 rules!3735))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8))))) t!81787) tb!53935))

(declare-fun b!621491 () Bool)

(declare-fun e!377245 () Bool)

(declare-fun tp!192961 () Bool)

(declare-fun inv!8043 (Conc!2023) Bool)

(assert (=> b!621491 (= e!377245 (and (inv!8043 (c!114228 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8))))) tp!192961))))

(declare-fun result!60904 () Bool)

(declare-fun inv!8044 (BalanceConc!4054) Bool)

(assert (=> tb!53935 (= result!60904 (and (inv!8044 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8)))) e!377245))))

(assert (= tb!53935 b!621491))

(declare-fun m!889293 () Bool)

(assert (=> b!621491 m!889293))

(declare-fun m!889295 () Bool)

(assert (=> tb!53935 m!889295))

(assert (=> b!621485 t!81787))

(declare-fun b_and!61751 () Bool)

(assert (= b_and!61733 (and (=> t!81787 result!60904) b_and!61751)))

(declare-fun t!81789 () Bool)

(declare-fun tb!53937 () Bool)

(assert (=> (and b!621289 (= (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8))))) t!81789) tb!53937))

(declare-fun result!60908 () Bool)

(assert (= result!60908 result!60904))

(assert (=> b!621485 t!81789))

(declare-fun b_and!61753 () Bool)

(assert (= b_and!61737 (and (=> t!81789 result!60908) b_and!61753)))

(declare-fun m!889297 () Bool)

(assert (=> d!217526 m!889297))

(declare-fun m!889299 () Bool)

(assert (=> b!621485 m!889299))

(assert (=> b!621485 m!889299))

(declare-fun m!889301 () Bool)

(assert (=> b!621485 m!889301))

(declare-fun m!889303 () Bool)

(assert (=> b!621486 m!889303))

(assert (=> b!621288 d!217526))

(declare-fun d!217528 () Bool)

(assert (=> d!217528 (= (isEmpty!4560 rules!3735) ((_ is Nil!6360) rules!3735))))

(assert (=> b!621293 d!217528))

(declare-fun e!377247 () Bool)

(declare-fun lt!265687 () tuple2!7158)

(declare-fun b!621492 () Bool)

(assert (=> b!621492 (= e!377247 (= (_2!3843 lt!265687) (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206))))))))

(declare-fun d!217530 () Bool)

(declare-fun e!377246 () Bool)

(assert (=> d!217530 e!377246))

(declare-fun res!270505 () Bool)

(assert (=> d!217530 (=> (not res!270505) (not e!377246))))

(assert (=> d!217530 (= res!270505 e!377247)))

(declare-fun c!114258 () Bool)

(assert (=> d!217530 (= c!114258 (> (size!4955 (_1!3843 lt!265687)) 0))))

(assert (=> d!217530 (= lt!265687 (lexTailRecV2!275 thiss!25571 rules!3735 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))) (BalanceConc!4055 Empty!2023) (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))) (BalanceConc!4057 Empty!2024)))))

(assert (=> d!217530 (= (lex!574 thiss!25571 rules!3735 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206))))) lt!265687)))

(declare-fun b!621493 () Bool)

(declare-fun res!270504 () Bool)

(assert (=> b!621493 (=> (not res!270504) (not e!377246))))

(assert (=> b!621493 (= res!270504 (= (list!2664 (_1!3843 lt!265687)) (_1!3844 (lexList!313 thiss!25571 rules!3735 (list!2665 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))))))))))

(declare-fun b!621494 () Bool)

(declare-fun e!377248 () Bool)

(assert (=> b!621494 (= e!377248 (not (isEmpty!4564 (_1!3843 lt!265687))))))

(declare-fun b!621495 () Bool)

(assert (=> b!621495 (= e!377247 e!377248)))

(declare-fun res!270506 () Bool)

(assert (=> b!621495 (= res!270506 (< (size!4956 (_2!3843 lt!265687)) (size!4956 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))))))))

(assert (=> b!621495 (=> (not res!270506) (not e!377248))))

(declare-fun b!621496 () Bool)

(assert (=> b!621496 (= e!377246 (= (list!2665 (_2!3843 lt!265687)) (_2!3844 (lexList!313 thiss!25571 rules!3735 (list!2665 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))))))))))

(assert (= (and d!217530 c!114258) b!621495))

(assert (= (and d!217530 (not c!114258)) b!621492))

(assert (= (and b!621495 res!270506) b!621494))

(assert (= (and d!217530 res!270505) b!621493))

(assert (= (and b!621493 res!270504) b!621496))

(declare-fun m!889305 () Bool)

(assert (=> b!621495 m!889305))

(assert (=> b!621495 m!889097))

(declare-fun m!889307 () Bool)

(assert (=> b!621495 m!889307))

(declare-fun m!889309 () Bool)

(assert (=> b!621496 m!889309))

(assert (=> b!621496 m!889097))

(declare-fun m!889311 () Bool)

(assert (=> b!621496 m!889311))

(assert (=> b!621496 m!889311))

(declare-fun m!889313 () Bool)

(assert (=> b!621496 m!889313))

(declare-fun m!889315 () Bool)

(assert (=> b!621493 m!889315))

(assert (=> b!621493 m!889097))

(assert (=> b!621493 m!889311))

(assert (=> b!621493 m!889311))

(assert (=> b!621493 m!889313))

(declare-fun m!889317 () Bool)

(assert (=> d!217530 m!889317))

(assert (=> d!217530 m!889097))

(assert (=> d!217530 m!889097))

(declare-fun m!889319 () Bool)

(assert (=> d!217530 m!889319))

(declare-fun m!889321 () Bool)

(assert (=> b!621494 m!889321))

(assert (=> b!621297 d!217530))

(declare-fun d!217532 () Bool)

(assert (=> d!217532 (= (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)) (v!16559 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))))

(assert (=> b!621297 d!217532))

(declare-fun d!217534 () Bool)

(assert (=> d!217534 (= (list!2665 (_2!3843 lt!265658)) (list!2669 (c!114228 (_2!3843 lt!265658))))))

(declare-fun bs!72020 () Bool)

(assert (= bs!72020 d!217534))

(declare-fun m!889323 () Bool)

(assert (=> bs!72020 m!889323))

(assert (=> b!621297 d!217534))

(declare-fun d!217536 () Bool)

(assert (=> d!217536 (= (tail!844 producedTokens!8) (t!81776 producedTokens!8))))

(assert (=> b!621297 d!217536))

(declare-fun call!41125 () Option!1631)

(declare-fun bm!41120 () Bool)

(declare-fun maxPrefixOneRule!509 (LexerInterface!1179 Rule!2382 List!6368) Option!1631)

(assert (=> bm!41120 (= call!41125 (maxPrefixOneRule!509 thiss!25571 (h!11761 rules!3735) input!3206))))

(declare-fun b!621515 () Bool)

(declare-fun e!377256 () Bool)

(declare-fun e!377255 () Bool)

(assert (=> b!621515 (= e!377256 e!377255)))

(declare-fun res!270524 () Bool)

(assert (=> b!621515 (=> (not res!270524) (not e!377255))))

(declare-fun lt!265702 () Option!1631)

(declare-fun isDefined!1422 (Option!1631) Bool)

(assert (=> b!621515 (= res!270524 (isDefined!1422 lt!265702))))

(declare-fun b!621516 () Bool)

(declare-fun res!270523 () Bool)

(assert (=> b!621516 (=> (not res!270523) (not e!377255))))

(assert (=> b!621516 (= res!270523 (< (size!4957 (_2!3845 (get!2423 lt!265702))) (size!4957 input!3206)))))

(declare-fun b!621517 () Bool)

(declare-fun e!377257 () Option!1631)

(declare-fun lt!265698 () Option!1631)

(declare-fun lt!265699 () Option!1631)

(assert (=> b!621517 (= e!377257 (ite (and ((_ is None!1630) lt!265698) ((_ is None!1630) lt!265699)) None!1630 (ite ((_ is None!1630) lt!265699) lt!265698 (ite ((_ is None!1630) lt!265698) lt!265699 (ite (>= (size!4950 (_1!3845 (v!16559 lt!265698))) (size!4950 (_1!3845 (v!16559 lt!265699)))) lt!265698 lt!265699)))))))

(assert (=> b!621517 (= lt!265698 call!41125)))

(assert (=> b!621517 (= lt!265699 (maxPrefix!861 thiss!25571 (t!81777 rules!3735) input!3206))))

(declare-fun b!621518 () Bool)

(declare-fun res!270521 () Bool)

(assert (=> b!621518 (=> (not res!270521) (not e!377255))))

(declare-fun ++!1757 (List!6368 List!6368) List!6368)

(declare-fun charsOf!890 (Token!2306) BalanceConc!4054)

(assert (=> b!621518 (= res!270521 (= (++!1757 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702)))) (_2!3845 (get!2423 lt!265702))) input!3206))))

(declare-fun b!621519 () Bool)

(declare-fun contains!1500 (List!6370 Rule!2382) Bool)

(assert (=> b!621519 (= e!377255 (contains!1500 rules!3735 (rule!2085 (_1!3845 (get!2423 lt!265702)))))))

(declare-fun d!217538 () Bool)

(assert (=> d!217538 e!377256))

(declare-fun res!270525 () Bool)

(assert (=> d!217538 (=> res!270525 e!377256)))

(declare-fun isEmpty!4566 (Option!1631) Bool)

(assert (=> d!217538 (= res!270525 (isEmpty!4566 lt!265702))))

(assert (=> d!217538 (= lt!265702 e!377257)))

(declare-fun c!114261 () Bool)

(assert (=> d!217538 (= c!114261 (and ((_ is Cons!6360) rules!3735) ((_ is Nil!6360) (t!81777 rules!3735))))))

(declare-datatypes ((Unit!11454 0))(
  ( (Unit!11455) )
))
(declare-fun lt!265701 () Unit!11454)

(declare-fun lt!265700 () Unit!11454)

(assert (=> d!217538 (= lt!265701 lt!265700)))

(declare-fun isPrefix!909 (List!6368 List!6368) Bool)

(assert (=> d!217538 (isPrefix!909 input!3206 input!3206)))

(declare-fun lemmaIsPrefixRefl!622 (List!6368 List!6368) Unit!11454)

(assert (=> d!217538 (= lt!265700 (lemmaIsPrefixRefl!622 input!3206 input!3206))))

(declare-fun rulesValidInductive!498 (LexerInterface!1179 List!6370) Bool)

(assert (=> d!217538 (rulesValidInductive!498 thiss!25571 rules!3735)))

(assert (=> d!217538 (= (maxPrefix!861 thiss!25571 rules!3735 input!3206) lt!265702)))

(declare-fun b!621520 () Bool)

(assert (=> b!621520 (= e!377257 call!41125)))

(declare-fun b!621521 () Bool)

(declare-fun res!270527 () Bool)

(assert (=> b!621521 (=> (not res!270527) (not e!377255))))

(declare-fun apply!1511 (TokenValueInjection!2398 BalanceConc!4054) TokenValue!1315)

(assert (=> b!621521 (= res!270527 (= (value!41657 (_1!3845 (get!2423 lt!265702))) (apply!1511 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))) (seqFromList!1446 (originalCharacters!1324 (_1!3845 (get!2423 lt!265702)))))))))

(declare-fun b!621522 () Bool)

(declare-fun res!270526 () Bool)

(assert (=> b!621522 (=> (not res!270526) (not e!377255))))

(declare-fun matchR!697 (Regex!1625 List!6368) Bool)

(assert (=> b!621522 (= res!270526 (matchR!697 (regex!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))) (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702))))))))

(declare-fun b!621523 () Bool)

(declare-fun res!270522 () Bool)

(assert (=> b!621523 (=> (not res!270522) (not e!377255))))

(assert (=> b!621523 (= res!270522 (= (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702)))) (originalCharacters!1324 (_1!3845 (get!2423 lt!265702)))))))

(assert (= (and d!217538 c!114261) b!621520))

(assert (= (and d!217538 (not c!114261)) b!621517))

(assert (= (or b!621520 b!621517) bm!41120))

(assert (= (and d!217538 (not res!270525)) b!621515))

(assert (= (and b!621515 res!270524) b!621523))

(assert (= (and b!621523 res!270522) b!621516))

(assert (= (and b!621516 res!270523) b!621518))

(assert (= (and b!621518 res!270521) b!621521))

(assert (= (and b!621521 res!270527) b!621522))

(assert (= (and b!621522 res!270526) b!621519))

(declare-fun m!889325 () Bool)

(assert (=> b!621516 m!889325))

(declare-fun m!889327 () Bool)

(assert (=> b!621516 m!889327))

(declare-fun m!889329 () Bool)

(assert (=> b!621516 m!889329))

(assert (=> b!621519 m!889325))

(declare-fun m!889331 () Bool)

(assert (=> b!621519 m!889331))

(declare-fun m!889333 () Bool)

(assert (=> bm!41120 m!889333))

(declare-fun m!889335 () Bool)

(assert (=> b!621515 m!889335))

(assert (=> b!621522 m!889325))

(declare-fun m!889337 () Bool)

(assert (=> b!621522 m!889337))

(assert (=> b!621522 m!889337))

(declare-fun m!889339 () Bool)

(assert (=> b!621522 m!889339))

(assert (=> b!621522 m!889339))

(declare-fun m!889341 () Bool)

(assert (=> b!621522 m!889341))

(declare-fun m!889343 () Bool)

(assert (=> b!621517 m!889343))

(assert (=> b!621521 m!889325))

(declare-fun m!889345 () Bool)

(assert (=> b!621521 m!889345))

(assert (=> b!621521 m!889345))

(declare-fun m!889347 () Bool)

(assert (=> b!621521 m!889347))

(assert (=> b!621523 m!889325))

(assert (=> b!621523 m!889337))

(assert (=> b!621523 m!889337))

(assert (=> b!621523 m!889339))

(assert (=> b!621518 m!889325))

(assert (=> b!621518 m!889337))

(assert (=> b!621518 m!889337))

(assert (=> b!621518 m!889339))

(assert (=> b!621518 m!889339))

(declare-fun m!889349 () Bool)

(assert (=> b!621518 m!889349))

(declare-fun m!889351 () Bool)

(assert (=> d!217538 m!889351))

(declare-fun m!889353 () Bool)

(assert (=> d!217538 m!889353))

(declare-fun m!889355 () Bool)

(assert (=> d!217538 m!889355))

(declare-fun m!889357 () Bool)

(assert (=> d!217538 m!889357))

(assert (=> b!621297 d!217538))

(declare-fun d!217540 () Bool)

(assert (=> d!217540 (= (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))) (fromListB!630 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))))))

(declare-fun bs!72021 () Bool)

(assert (= bs!72021 d!217540))

(declare-fun m!889359 () Bool)

(assert (=> bs!72021 m!889359))

(assert (=> b!621297 d!217540))

(declare-fun d!217542 () Bool)

(assert (=> d!217542 (= (list!2664 (_1!3843 lt!265658)) (list!2668 (c!114229 (_1!3843 lt!265658))))))

(declare-fun bs!72022 () Bool)

(assert (= bs!72022 d!217542))

(declare-fun m!889361 () Bool)

(assert (=> bs!72022 m!889361))

(assert (=> b!621297 d!217542))

(declare-fun b!621528 () Bool)

(declare-fun e!377260 () Bool)

(declare-fun tp!192964 () Bool)

(assert (=> b!621528 (= e!377260 (and tp_is_empty!3609 tp!192964))))

(assert (=> b!621296 (= tp!192893 e!377260)))

(assert (= (and b!621296 ((_ is Cons!6358) (t!81775 input!3206))) b!621528))

(declare-fun b!621542 () Bool)

(declare-fun e!377263 () Bool)

(declare-fun tp!192976 () Bool)

(declare-fun tp!192978 () Bool)

(assert (=> b!621542 (= e!377263 (and tp!192976 tp!192978))))

(declare-fun b!621540 () Bool)

(declare-fun tp!192975 () Bool)

(declare-fun tp!192979 () Bool)

(assert (=> b!621540 (= e!377263 (and tp!192975 tp!192979))))

(declare-fun b!621539 () Bool)

(assert (=> b!621539 (= e!377263 tp_is_empty!3609)))

(declare-fun b!621541 () Bool)

(declare-fun tp!192977 () Bool)

(assert (=> b!621541 (= e!377263 tp!192977)))

(assert (=> b!621301 (= tp!192901 e!377263)))

(assert (= (and b!621301 ((_ is ElementMatch!1625) (regex!1291 (rule!2085 (h!11760 producedTokens!8))))) b!621539))

(assert (= (and b!621301 ((_ is Concat!2941) (regex!1291 (rule!2085 (h!11760 producedTokens!8))))) b!621540))

(assert (= (and b!621301 ((_ is Star!1625) (regex!1291 (rule!2085 (h!11760 producedTokens!8))))) b!621541))

(assert (= (and b!621301 ((_ is Union!1625) (regex!1291 (rule!2085 (h!11760 producedTokens!8))))) b!621542))

(declare-fun b!621543 () Bool)

(declare-fun e!377264 () Bool)

(declare-fun tp!192980 () Bool)

(assert (=> b!621543 (= e!377264 (and tp_is_empty!3609 tp!192980))))

(assert (=> b!621299 (= tp!192900 e!377264)))

(assert (= (and b!621299 ((_ is Cons!6358) (t!81775 suffix!1461))) b!621543))

(declare-fun b!621547 () Bool)

(declare-fun e!377265 () Bool)

(declare-fun tp!192982 () Bool)

(declare-fun tp!192984 () Bool)

(assert (=> b!621547 (= e!377265 (and tp!192982 tp!192984))))

(declare-fun b!621545 () Bool)

(declare-fun tp!192981 () Bool)

(declare-fun tp!192985 () Bool)

(assert (=> b!621545 (= e!377265 (and tp!192981 tp!192985))))

(declare-fun b!621544 () Bool)

(assert (=> b!621544 (= e!377265 tp_is_empty!3609)))

(declare-fun b!621546 () Bool)

(declare-fun tp!192983 () Bool)

(assert (=> b!621546 (= e!377265 tp!192983)))

(assert (=> b!621300 (= tp!192902 e!377265)))

(assert (= (and b!621300 ((_ is ElementMatch!1625) (regex!1291 (h!11761 rules!3735)))) b!621544))

(assert (= (and b!621300 ((_ is Concat!2941) (regex!1291 (h!11761 rules!3735)))) b!621545))

(assert (= (and b!621300 ((_ is Star!1625) (regex!1291 (h!11761 rules!3735)))) b!621546))

(assert (= (and b!621300 ((_ is Union!1625) (regex!1291 (h!11761 rules!3735)))) b!621547))

(declare-fun b!621548 () Bool)

(declare-fun e!377266 () Bool)

(declare-fun tp!192986 () Bool)

(assert (=> b!621548 (= e!377266 (and tp_is_empty!3609 tp!192986))))

(assert (=> b!621287 (= tp!192899 e!377266)))

(assert (= (and b!621287 ((_ is Cons!6358) (originalCharacters!1324 (h!11760 producedTokens!8)))) b!621548))

(declare-fun b!621562 () Bool)

(declare-fun b_free!18145 () Bool)

(declare-fun b_next!18161 () Bool)

(assert (=> b!621562 (= b_free!18145 (not b_next!18161))))

(declare-fun tp!192998 () Bool)

(declare-fun b_and!61755 () Bool)

(assert (=> b!621562 (= tp!192998 b_and!61755)))

(declare-fun b_free!18147 () Bool)

(declare-fun b_next!18163 () Bool)

(assert (=> b!621562 (= b_free!18147 (not b_next!18163))))

(declare-fun t!81792 () Bool)

(declare-fun tb!53939 () Bool)

(assert (=> (and b!621562 (= (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8))))) t!81792) tb!53939))

(declare-fun result!60916 () Bool)

(assert (= result!60916 result!60904))

(assert (=> b!621485 t!81792))

(declare-fun b_and!61757 () Bool)

(declare-fun tp!192997 () Bool)

(assert (=> b!621562 (= tp!192997 (and (=> t!81792 result!60916) b_and!61757))))

(declare-fun e!377281 () Bool)

(assert (=> b!621562 (= e!377281 (and tp!192998 tp!192997))))

(declare-fun e!377284 () Bool)

(assert (=> b!621288 (= tp!192903 e!377284)))

(declare-fun e!377283 () Bool)

(declare-fun b!621561 () Bool)

(declare-fun tp!193001 () Bool)

(assert (=> b!621561 (= e!377283 (and tp!193001 (inv!8036 (tag!1553 (rule!2085 (h!11760 (t!81776 producedTokens!8))))) (inv!8040 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))) e!377281))))

(declare-fun b!621560 () Bool)

(declare-fun tp!193000 () Bool)

(declare-fun e!377282 () Bool)

(assert (=> b!621560 (= e!377282 (and (inv!21 (value!41657 (h!11760 (t!81776 producedTokens!8)))) e!377283 tp!193000))))

(declare-fun b!621559 () Bool)

(declare-fun tp!192999 () Bool)

(assert (=> b!621559 (= e!377284 (and (inv!8039 (h!11760 (t!81776 producedTokens!8))) e!377282 tp!192999))))

(assert (= b!621561 b!621562))

(assert (= b!621560 b!621561))

(assert (= b!621559 b!621560))

(assert (= (and b!621288 ((_ is Cons!6359) (t!81776 producedTokens!8))) b!621559))

(declare-fun m!889363 () Bool)

(assert (=> b!621561 m!889363))

(declare-fun m!889365 () Bool)

(assert (=> b!621561 m!889365))

(declare-fun m!889367 () Bool)

(assert (=> b!621560 m!889367))

(declare-fun m!889369 () Bool)

(assert (=> b!621559 m!889369))

(declare-fun b!621573 () Bool)

(declare-fun b_free!18149 () Bool)

(declare-fun b_next!18165 () Bool)

(assert (=> b!621573 (= b_free!18149 (not b_next!18165))))

(declare-fun tp!193011 () Bool)

(declare-fun b_and!61759 () Bool)

(assert (=> b!621573 (= tp!193011 b_and!61759)))

(declare-fun b_free!18151 () Bool)

(declare-fun b_next!18167 () Bool)

(assert (=> b!621573 (= b_free!18151 (not b_next!18167))))

(declare-fun t!81794 () Bool)

(declare-fun tb!53941 () Bool)

(assert (=> (and b!621573 (= (toChars!2071 (transformation!1291 (h!11761 (t!81777 rules!3735)))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8))))) t!81794) tb!53941))

(declare-fun result!60920 () Bool)

(assert (= result!60920 result!60904))

(assert (=> b!621485 t!81794))

(declare-fun tp!193012 () Bool)

(declare-fun b_and!61761 () Bool)

(assert (=> b!621573 (= tp!193012 (and (=> t!81794 result!60920) b_and!61761))))

(declare-fun e!377294 () Bool)

(assert (=> b!621573 (= e!377294 (and tp!193011 tp!193012))))

(declare-fun tp!193010 () Bool)

(declare-fun e!377293 () Bool)

(declare-fun b!621572 () Bool)

(assert (=> b!621572 (= e!377293 (and tp!193010 (inv!8036 (tag!1553 (h!11761 (t!81777 rules!3735)))) (inv!8040 (transformation!1291 (h!11761 (t!81777 rules!3735)))) e!377294))))

(declare-fun b!621571 () Bool)

(declare-fun e!377295 () Bool)

(declare-fun tp!193013 () Bool)

(assert (=> b!621571 (= e!377295 (and e!377293 tp!193013))))

(assert (=> b!621292 (= tp!192894 e!377295)))

(assert (= b!621572 b!621573))

(assert (= b!621571 b!621572))

(assert (= (and b!621292 ((_ is Cons!6360) (t!81777 rules!3735))) b!621571))

(declare-fun m!889371 () Bool)

(assert (=> b!621572 m!889371))

(declare-fun m!889373 () Bool)

(assert (=> b!621572 m!889373))

(declare-fun b_lambda!24583 () Bool)

(assert (= b_lambda!24581 (or (and b!621291 b_free!18131 (= (toChars!2071 (transformation!1291 (h!11761 rules!3735))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))))) (and b!621289 b_free!18135) (and b!621562 b_free!18147 (= (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))))) (and b!621573 b_free!18151 (= (toChars!2071 (transformation!1291 (h!11761 (t!81777 rules!3735)))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))))) b_lambda!24583)))

(check-sat (not b_next!18151) b_and!61751 (not bm!41120) (not b!621545) (not b!621479) (not b!621372) (not b_next!18163) (not b!621373) (not b!621523) (not d!217540) tp_is_empty!3609 (not b_next!18161) (not b!621519) (not b!621541) (not b!621561) (not d!217534) (not d!217542) (not b!621374) (not b_lambda!24583) (not d!217538) (not d!217464) b_and!61735 b_and!61759 (not d!217530) b_and!61755 (not b!621409) (not b!621548) (not b_next!18167) b_and!61753 (not b!621477) (not b!621493) (not b!621546) (not b_next!18145) (not d!217526) (not b!621522) (not b!621517) b_and!61757 (not b!621560) b_and!61731 b_and!61761 (not b!621571) (not b_next!18147) (not b!621485) (not tb!53935) (not b!621518) (not b!621528) (not b!621491) (not b!621408) (not b!621516) (not d!217510) (not d!217466) (not b!621559) (not d!217516) (not b!621494) (not b!621486) (not b!621543) (not b!621515) (not b!621521) (not b!621540) (not b!621425) (not b!621375) (not b_next!18149) (not b!621542) (not d!217504) (not b!621572) (not b_next!18165) (not b!621496) (not d!217512) (not b!621480) (not b!621495) (not b!621547) (not b!621396) (not d!217506))
(check-sat (not b_next!18161) (not b_next!18151) b_and!61751 b_and!61735 (not b_next!18145) b_and!61757 (not b_next!18147) (not b_next!18149) (not b_next!18165) (not b_next!18163) b_and!61759 b_and!61755 (not b_next!18167) b_and!61753 b_and!61731 b_and!61761)
(get-model)

(declare-fun d!217548 () Bool)

(declare-fun charsToInt!0 (List!6367) (_ BitVec 32))

(assert (=> d!217548 (= (inv!16 (value!41657 (h!11760 producedTokens!8))) (= (charsToInt!0 (text!9652 (value!41657 (h!11760 producedTokens!8)))) (value!41648 (value!41657 (h!11760 producedTokens!8)))))))

(declare-fun bs!72023 () Bool)

(assert (= bs!72023 d!217548))

(declare-fun m!889387 () Bool)

(assert (=> bs!72023 m!889387))

(assert (=> b!621477 d!217548))

(declare-fun b!621577 () Bool)

(declare-fun e!377299 () Bool)

(declare-fun e!377301 () Bool)

(assert (=> b!621577 (= e!377299 e!377301)))

(declare-fun c!114262 () Bool)

(assert (=> b!621577 (= c!114262 ((_ is IntegerValue!3946) (value!41657 (h!11760 (t!81776 producedTokens!8)))))))

(declare-fun b!621578 () Bool)

(assert (=> b!621578 (= e!377299 (inv!16 (value!41657 (h!11760 (t!81776 producedTokens!8)))))))

(declare-fun d!217550 () Bool)

(declare-fun c!114263 () Bool)

(assert (=> d!217550 (= c!114263 ((_ is IntegerValue!3945) (value!41657 (h!11760 (t!81776 producedTokens!8)))))))

(assert (=> d!217550 (= (inv!21 (value!41657 (h!11760 (t!81776 producedTokens!8)))) e!377299)))

(declare-fun b!621579 () Bool)

(declare-fun res!270536 () Bool)

(declare-fun e!377300 () Bool)

(assert (=> b!621579 (=> res!270536 e!377300)))

(assert (=> b!621579 (= res!270536 (not ((_ is IntegerValue!3947) (value!41657 (h!11760 (t!81776 producedTokens!8))))))))

(assert (=> b!621579 (= e!377301 e!377300)))

(declare-fun b!621580 () Bool)

(assert (=> b!621580 (= e!377301 (inv!17 (value!41657 (h!11760 (t!81776 producedTokens!8)))))))

(declare-fun b!621581 () Bool)

(assert (=> b!621581 (= e!377300 (inv!15 (value!41657 (h!11760 (t!81776 producedTokens!8)))))))

(assert (= (and d!217550 c!114263) b!621578))

(assert (= (and d!217550 (not c!114263)) b!621577))

(assert (= (and b!621577 c!114262) b!621580))

(assert (= (and b!621577 (not c!114262)) b!621579))

(assert (= (and b!621579 (not res!270536)) b!621581))

(declare-fun m!889389 () Bool)

(assert (=> b!621578 m!889389))

(declare-fun m!889391 () Bool)

(assert (=> b!621580 m!889391))

(declare-fun m!889393 () Bool)

(assert (=> b!621581 m!889393))

(assert (=> b!621560 d!217550))

(declare-fun b!621593 () Bool)

(declare-fun e!377307 () Bool)

(declare-fun lt!265705 () List!6368)

(assert (=> b!621593 (= e!377307 (or (not (= (_2!3845 (get!2423 lt!265702)) Nil!6358)) (= lt!265705 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702)))))))))

(declare-fun b!621592 () Bool)

(declare-fun res!270542 () Bool)

(assert (=> b!621592 (=> (not res!270542) (not e!377307))))

(assert (=> b!621592 (= res!270542 (= (size!4957 lt!265705) (+ (size!4957 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702))))) (size!4957 (_2!3845 (get!2423 lt!265702))))))))

(declare-fun b!621590 () Bool)

(declare-fun e!377306 () List!6368)

(assert (=> b!621590 (= e!377306 (_2!3845 (get!2423 lt!265702)))))

(declare-fun b!621591 () Bool)

(assert (=> b!621591 (= e!377306 (Cons!6358 (h!11759 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702))))) (++!1757 (t!81775 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702))))) (_2!3845 (get!2423 lt!265702)))))))

(declare-fun d!217552 () Bool)

(assert (=> d!217552 e!377307))

(declare-fun res!270541 () Bool)

(assert (=> d!217552 (=> (not res!270541) (not e!377307))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1148 (List!6368) (InoxSet C!4176))

(assert (=> d!217552 (= res!270541 (= (content!1148 lt!265705) ((_ map or) (content!1148 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702))))) (content!1148 (_2!3845 (get!2423 lt!265702))))))))

(assert (=> d!217552 (= lt!265705 e!377306)))

(declare-fun c!114266 () Bool)

(assert (=> d!217552 (= c!114266 ((_ is Nil!6358) (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702))))))))

(assert (=> d!217552 (= (++!1757 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702)))) (_2!3845 (get!2423 lt!265702))) lt!265705)))

(assert (= (and d!217552 c!114266) b!621590))

(assert (= (and d!217552 (not c!114266)) b!621591))

(assert (= (and d!217552 res!270541) b!621592))

(assert (= (and b!621592 res!270542) b!621593))

(declare-fun m!889395 () Bool)

(assert (=> b!621592 m!889395))

(assert (=> b!621592 m!889339))

(declare-fun m!889397 () Bool)

(assert (=> b!621592 m!889397))

(assert (=> b!621592 m!889327))

(declare-fun m!889399 () Bool)

(assert (=> b!621591 m!889399))

(declare-fun m!889401 () Bool)

(assert (=> d!217552 m!889401))

(assert (=> d!217552 m!889339))

(declare-fun m!889403 () Bool)

(assert (=> d!217552 m!889403))

(declare-fun m!889405 () Bool)

(assert (=> d!217552 m!889405))

(assert (=> b!621518 d!217552))

(declare-fun d!217554 () Bool)

(assert (=> d!217554 (= (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702)))) (list!2669 (c!114228 (charsOf!890 (_1!3845 (get!2423 lt!265702))))))))

(declare-fun bs!72024 () Bool)

(assert (= bs!72024 d!217554))

(declare-fun m!889407 () Bool)

(assert (=> bs!72024 m!889407))

(assert (=> b!621518 d!217554))

(declare-fun d!217556 () Bool)

(declare-fun lt!265708 () BalanceConc!4054)

(assert (=> d!217556 (= (list!2665 lt!265708) (originalCharacters!1324 (_1!3845 (get!2423 lt!265702))))))

(assert (=> d!217556 (= lt!265708 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702))))) (value!41657 (_1!3845 (get!2423 lt!265702)))))))

(assert (=> d!217556 (= (charsOf!890 (_1!3845 (get!2423 lt!265702))) lt!265708)))

(declare-fun b_lambda!24587 () Bool)

(assert (=> (not b_lambda!24587) (not d!217556)))

(declare-fun tb!53951 () Bool)

(declare-fun t!81805 () Bool)

(assert (=> (and b!621291 (= (toChars!2071 (transformation!1291 (h!11761 rules!3735))) (toChars!2071 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))))) t!81805) tb!53951))

(declare-fun b!621594 () Bool)

(declare-fun e!377308 () Bool)

(declare-fun tp!193015 () Bool)

(assert (=> b!621594 (= e!377308 (and (inv!8043 (c!114228 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702))))) (value!41657 (_1!3845 (get!2423 lt!265702)))))) tp!193015))))

(declare-fun result!60930 () Bool)

(assert (=> tb!53951 (= result!60930 (and (inv!8044 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702))))) (value!41657 (_1!3845 (get!2423 lt!265702))))) e!377308))))

(assert (= tb!53951 b!621594))

(declare-fun m!889409 () Bool)

(assert (=> b!621594 m!889409))

(declare-fun m!889411 () Bool)

(assert (=> tb!53951 m!889411))

(assert (=> d!217556 t!81805))

(declare-fun b_and!61771 () Bool)

(assert (= b_and!61751 (and (=> t!81805 result!60930) b_and!61771)))

(declare-fun t!81807 () Bool)

(declare-fun tb!53953 () Bool)

(assert (=> (and b!621289 (= (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (toChars!2071 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))))) t!81807) tb!53953))

(declare-fun result!60932 () Bool)

(assert (= result!60932 result!60930))

(assert (=> d!217556 t!81807))

(declare-fun b_and!61773 () Bool)

(assert (= b_and!61753 (and (=> t!81807 result!60932) b_and!61773)))

(declare-fun tb!53955 () Bool)

(declare-fun t!81809 () Bool)

(assert (=> (and b!621562 (= (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))) (toChars!2071 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))))) t!81809) tb!53955))

(declare-fun result!60934 () Bool)

(assert (= result!60934 result!60930))

(assert (=> d!217556 t!81809))

(declare-fun b_and!61775 () Bool)

(assert (= b_and!61757 (and (=> t!81809 result!60934) b_and!61775)))

(declare-fun tb!53957 () Bool)

(declare-fun t!81811 () Bool)

(assert (=> (and b!621573 (= (toChars!2071 (transformation!1291 (h!11761 (t!81777 rules!3735)))) (toChars!2071 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))))) t!81811) tb!53957))

(declare-fun result!60936 () Bool)

(assert (= result!60936 result!60930))

(assert (=> d!217556 t!81811))

(declare-fun b_and!61777 () Bool)

(assert (= b_and!61761 (and (=> t!81811 result!60936) b_and!61777)))

(declare-fun m!889413 () Bool)

(assert (=> d!217556 m!889413))

(declare-fun m!889415 () Bool)

(assert (=> d!217556 m!889415))

(assert (=> b!621518 d!217556))

(declare-fun d!217558 () Bool)

(assert (=> d!217558 (= (get!2423 lt!265702) (v!16559 lt!265702))))

(assert (=> b!621518 d!217558))

(declare-fun d!217560 () Bool)

(declare-fun lt!265711 () Int)

(assert (=> d!217560 (= lt!265711 (size!4951 (list!2664 (_1!3843 lt!265687))))))

(declare-fun size!4959 (Conc!2024) Int)

(assert (=> d!217560 (= lt!265711 (size!4959 (c!114229 (_1!3843 lt!265687))))))

(assert (=> d!217560 (= (size!4955 (_1!3843 lt!265687)) lt!265711)))

(declare-fun bs!72025 () Bool)

(assert (= bs!72025 d!217560))

(assert (=> bs!72025 m!889315))

(assert (=> bs!72025 m!889315))

(declare-fun m!889417 () Bool)

(assert (=> bs!72025 m!889417))

(declare-fun m!889419 () Bool)

(assert (=> bs!72025 m!889419))

(assert (=> d!217530 d!217560))

(declare-fun d!217562 () Bool)

(declare-fun e!377319 () Bool)

(assert (=> d!217562 e!377319))

(declare-fun res!270545 () Bool)

(assert (=> d!217562 (=> (not res!270545) (not e!377319))))

(declare-fun lt!265793 () tuple2!7158)

(declare-fun lexRec!148 (LexerInterface!1179 List!6370 BalanceConc!4054) tuple2!7158)

(assert (=> d!217562 (= res!270545 (= (list!2664 (_1!3843 lt!265793)) (list!2664 (_1!3843 (lexRec!148 thiss!25571 rules!3735 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))))))))))

(declare-fun e!377320 () tuple2!7158)

(assert (=> d!217562 (= lt!265793 e!377320)))

(declare-fun c!114275 () Bool)

(declare-datatypes ((tuple2!7166 0))(
  ( (tuple2!7167 (_1!3847 Token!2306) (_2!3847 BalanceConc!4054)) )
))
(declare-datatypes ((Option!1633 0))(
  ( (None!1632) (Some!1632 (v!16563 tuple2!7166)) )
))
(declare-fun lt!265785 () Option!1633)

(assert (=> d!217562 (= c!114275 ((_ is Some!1632) lt!265785))))

(declare-fun maxPrefixZipperSequenceV2!125 (LexerInterface!1179 List!6370 BalanceConc!4054 BalanceConc!4054) Option!1633)

(assert (=> d!217562 (= lt!265785 (maxPrefixZipperSequenceV2!125 thiss!25571 rules!3735 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))) (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206))))))))

(declare-fun lt!265783 () Unit!11454)

(declare-fun lt!265781 () Unit!11454)

(assert (=> d!217562 (= lt!265783 lt!265781)))

(declare-fun lt!265801 () List!6368)

(declare-fun lt!265786 () List!6368)

(declare-fun isSuffix!125 (List!6368 List!6368) Bool)

(assert (=> d!217562 (isSuffix!125 lt!265801 (++!1757 lt!265786 lt!265801))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!125 (List!6368 List!6368) Unit!11454)

(assert (=> d!217562 (= lt!265781 (lemmaConcatTwoListThenFSndIsSuffix!125 lt!265786 lt!265801))))

(assert (=> d!217562 (= lt!265801 (list!2665 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206))))))))

(assert (=> d!217562 (= lt!265786 (list!2665 (BalanceConc!4055 Empty!2023)))))

(assert (=> d!217562 (= (lexTailRecV2!275 thiss!25571 rules!3735 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))) (BalanceConc!4055 Empty!2023) (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))) (BalanceConc!4057 Empty!2024)) lt!265793)))

(declare-fun b!621609 () Bool)

(assert (=> b!621609 (= e!377319 (= (list!2665 (_2!3843 lt!265793)) (list!2665 (_2!3843 (lexRec!148 thiss!25571 rules!3735 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))))))))))

(declare-fun b!621610 () Bool)

(declare-fun e!377317 () tuple2!7158)

(declare-fun lt!265791 () BalanceConc!4054)

(assert (=> b!621610 (= e!377317 (tuple2!7159 (BalanceConc!4057 Empty!2024) lt!265791))))

(declare-fun lt!265790 () Option!1633)

(declare-fun lt!265787 () tuple2!7158)

(declare-fun b!621611 () Bool)

(assert (=> b!621611 (= lt!265787 (lexRec!148 thiss!25571 rules!3735 (_2!3847 (v!16563 lt!265790))))))

(declare-fun e!377318 () tuple2!7158)

(declare-fun prepend!248 (BalanceConc!4056 Token!2306) BalanceConc!4056)

(assert (=> b!621611 (= e!377318 (tuple2!7159 (prepend!248 (_1!3843 lt!265787) (_1!3847 (v!16563 lt!265790))) (_2!3843 lt!265787)))))

(declare-fun b!621612 () Bool)

(declare-fun lt!265792 () BalanceConc!4054)

(declare-fun append!164 (BalanceConc!4056 Token!2306) BalanceConc!4056)

(assert (=> b!621612 (= e!377320 (lexTailRecV2!275 thiss!25571 rules!3735 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))) lt!265792 (_2!3847 (v!16563 lt!265785)) (append!164 (BalanceConc!4057 Empty!2024) (_1!3847 (v!16563 lt!265785)))))))

(declare-fun lt!265806 () tuple2!7158)

(assert (=> b!621612 (= lt!265806 (lexRec!148 thiss!25571 rules!3735 (_2!3847 (v!16563 lt!265785))))))

(declare-fun lt!265797 () List!6368)

(assert (=> b!621612 (= lt!265797 (list!2665 (BalanceConc!4055 Empty!2023)))))

(declare-fun lt!265808 () List!6368)

(assert (=> b!621612 (= lt!265808 (list!2665 (charsOf!890 (_1!3847 (v!16563 lt!265785)))))))

(declare-fun lt!265794 () List!6368)

(assert (=> b!621612 (= lt!265794 (list!2665 (_2!3847 (v!16563 lt!265785))))))

(declare-fun lt!265809 () Unit!11454)

(declare-fun lemmaConcatAssociativity!629 (List!6368 List!6368 List!6368) Unit!11454)

(assert (=> b!621612 (= lt!265809 (lemmaConcatAssociativity!629 lt!265797 lt!265808 lt!265794))))

(assert (=> b!621612 (= (++!1757 (++!1757 lt!265797 lt!265808) lt!265794) (++!1757 lt!265797 (++!1757 lt!265808 lt!265794)))))

(declare-fun lt!265807 () Unit!11454)

(assert (=> b!621612 (= lt!265807 lt!265809)))

(declare-fun maxPrefixZipperSequence!451 (LexerInterface!1179 List!6370 BalanceConc!4054) Option!1633)

(assert (=> b!621612 (= lt!265790 (maxPrefixZipperSequence!451 thiss!25571 rules!3735 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206))))))))

(declare-fun c!114274 () Bool)

(assert (=> b!621612 (= c!114274 ((_ is Some!1632) lt!265790))))

(assert (=> b!621612 (= (lexRec!148 thiss!25571 rules!3735 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206))))) e!377318)))

(declare-fun lt!265784 () Unit!11454)

(declare-fun Unit!11458 () Unit!11454)

(assert (=> b!621612 (= lt!265784 Unit!11458)))

(declare-fun lt!265804 () List!6369)

(assert (=> b!621612 (= lt!265804 (list!2664 (BalanceConc!4057 Empty!2024)))))

(declare-fun lt!265802 () List!6369)

(assert (=> b!621612 (= lt!265802 (Cons!6359 (_1!3847 (v!16563 lt!265785)) Nil!6359))))

(declare-fun lt!265800 () List!6369)

(assert (=> b!621612 (= lt!265800 (list!2664 (_1!3843 lt!265806)))))

(declare-fun lt!265788 () Unit!11454)

(declare-fun lemmaConcatAssociativity!630 (List!6369 List!6369 List!6369) Unit!11454)

(assert (=> b!621612 (= lt!265788 (lemmaConcatAssociativity!630 lt!265804 lt!265802 lt!265800))))

(declare-fun ++!1760 (List!6369 List!6369) List!6369)

(assert (=> b!621612 (= (++!1760 (++!1760 lt!265804 lt!265802) lt!265800) (++!1760 lt!265804 (++!1760 lt!265802 lt!265800)))))

(declare-fun lt!265810 () Unit!11454)

(assert (=> b!621612 (= lt!265810 lt!265788)))

(declare-fun lt!265811 () List!6368)

(assert (=> b!621612 (= lt!265811 (++!1757 (list!2665 (BalanceConc!4055 Empty!2023)) (list!2665 (charsOf!890 (_1!3847 (v!16563 lt!265785))))))))

(declare-fun lt!265805 () List!6368)

(assert (=> b!621612 (= lt!265805 (list!2665 (_2!3847 (v!16563 lt!265785))))))

(declare-fun lt!265798 () List!6369)

(assert (=> b!621612 (= lt!265798 (list!2664 (append!164 (BalanceConc!4057 Empty!2024) (_1!3847 (v!16563 lt!265785)))))))

(declare-fun lt!265780 () Unit!11454)

(declare-fun lemmaLexThenLexPrefix!127 (LexerInterface!1179 List!6370 List!6368 List!6368 List!6369 List!6369 List!6368) Unit!11454)

(assert (=> b!621612 (= lt!265780 (lemmaLexThenLexPrefix!127 thiss!25571 rules!3735 lt!265811 lt!265805 lt!265798 (list!2664 (_1!3843 lt!265806)) (list!2665 (_2!3843 lt!265806))))))

(assert (=> b!621612 (= (lexList!313 thiss!25571 rules!3735 lt!265811) (tuple2!7161 lt!265798 Nil!6358))))

(declare-fun lt!265812 () Unit!11454)

(assert (=> b!621612 (= lt!265812 lt!265780)))

(declare-fun ++!1761 (BalanceConc!4054 BalanceConc!4054) BalanceConc!4054)

(assert (=> b!621612 (= lt!265791 (++!1761 (BalanceConc!4055 Empty!2023) (charsOf!890 (_1!3847 (v!16563 lt!265785)))))))

(declare-fun lt!265813 () Option!1633)

(assert (=> b!621612 (= lt!265813 (maxPrefixZipperSequence!451 thiss!25571 rules!3735 lt!265791))))

(declare-fun c!114273 () Bool)

(assert (=> b!621612 (= c!114273 ((_ is Some!1632) lt!265813))))

(assert (=> b!621612 (= (lexRec!148 thiss!25571 rules!3735 (++!1761 (BalanceConc!4055 Empty!2023) (charsOf!890 (_1!3847 (v!16563 lt!265785))))) e!377317)))

(declare-fun lt!265795 () Unit!11454)

(declare-fun Unit!11459 () Unit!11454)

(assert (=> b!621612 (= lt!265795 Unit!11459)))

(assert (=> b!621612 (= lt!265792 (++!1761 (BalanceConc!4055 Empty!2023) (charsOf!890 (_1!3847 (v!16563 lt!265785)))))))

(declare-fun lt!265799 () List!6368)

(assert (=> b!621612 (= lt!265799 (list!2665 lt!265792))))

(declare-fun lt!265796 () List!6368)

(assert (=> b!621612 (= lt!265796 (list!2665 (_2!3847 (v!16563 lt!265785))))))

(declare-fun lt!265789 () Unit!11454)

(assert (=> b!621612 (= lt!265789 (lemmaConcatTwoListThenFSndIsSuffix!125 lt!265799 lt!265796))))

(assert (=> b!621612 (isSuffix!125 lt!265796 (++!1757 lt!265799 lt!265796))))

(declare-fun lt!265803 () Unit!11454)

(assert (=> b!621612 (= lt!265803 lt!265789)))

(declare-fun b!621613 () Bool)

(assert (=> b!621613 (= e!377318 (tuple2!7159 (BalanceConc!4057 Empty!2024) (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206))))))))

(declare-fun lt!265782 () tuple2!7158)

(declare-fun b!621614 () Bool)

(assert (=> b!621614 (= lt!265782 (lexRec!148 thiss!25571 rules!3735 (_2!3847 (v!16563 lt!265813))))))

(assert (=> b!621614 (= e!377317 (tuple2!7159 (prepend!248 (_1!3843 lt!265782) (_1!3847 (v!16563 lt!265813))) (_2!3843 lt!265782)))))

(declare-fun b!621615 () Bool)

(assert (=> b!621615 (= e!377320 (tuple2!7159 (BalanceConc!4057 Empty!2024) (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206))))))))

(assert (= (and d!217562 c!114275) b!621612))

(assert (= (and d!217562 (not c!114275)) b!621615))

(assert (= (and b!621612 c!114274) b!621611))

(assert (= (and b!621612 (not c!114274)) b!621613))

(assert (= (and b!621612 c!114273) b!621614))

(assert (= (and b!621612 (not c!114273)) b!621610))

(assert (= (and d!217562 res!270545) b!621609))

(declare-fun m!889421 () Bool)

(assert (=> b!621609 m!889421))

(assert (=> b!621609 m!889097))

(declare-fun m!889423 () Bool)

(assert (=> b!621609 m!889423))

(declare-fun m!889425 () Bool)

(assert (=> b!621609 m!889425))

(declare-fun m!889427 () Bool)

(assert (=> b!621614 m!889427))

(declare-fun m!889429 () Bool)

(assert (=> b!621614 m!889429))

(declare-fun m!889431 () Bool)

(assert (=> b!621611 m!889431))

(declare-fun m!889433 () Bool)

(assert (=> b!621611 m!889433))

(assert (=> d!217562 m!889097))

(assert (=> d!217562 m!889311))

(declare-fun m!889435 () Bool)

(assert (=> d!217562 m!889435))

(declare-fun m!889437 () Bool)

(assert (=> d!217562 m!889437))

(declare-fun m!889439 () Bool)

(assert (=> d!217562 m!889439))

(declare-fun m!889441 () Bool)

(assert (=> d!217562 m!889441))

(declare-fun m!889443 () Bool)

(assert (=> d!217562 m!889443))

(assert (=> d!217562 m!889097))

(assert (=> d!217562 m!889097))

(declare-fun m!889445 () Bool)

(assert (=> d!217562 m!889445))

(assert (=> d!217562 m!889097))

(assert (=> d!217562 m!889423))

(assert (=> d!217562 m!889441))

(declare-fun m!889447 () Bool)

(assert (=> d!217562 m!889447))

(declare-fun m!889449 () Bool)

(assert (=> b!621612 m!889449))

(declare-fun m!889451 () Bool)

(assert (=> b!621612 m!889451))

(declare-fun m!889453 () Bool)

(assert (=> b!621612 m!889453))

(declare-fun m!889455 () Bool)

(assert (=> b!621612 m!889455))

(declare-fun m!889457 () Bool)

(assert (=> b!621612 m!889457))

(declare-fun m!889459 () Bool)

(assert (=> b!621612 m!889459))

(assert (=> b!621612 m!889455))

(declare-fun m!889461 () Bool)

(assert (=> b!621612 m!889461))

(declare-fun m!889463 () Bool)

(assert (=> b!621612 m!889463))

(assert (=> b!621612 m!889437))

(declare-fun m!889465 () Bool)

(assert (=> b!621612 m!889465))

(declare-fun m!889467 () Bool)

(assert (=> b!621612 m!889467))

(declare-fun m!889469 () Bool)

(assert (=> b!621612 m!889469))

(declare-fun m!889471 () Bool)

(assert (=> b!621612 m!889471))

(declare-fun m!889473 () Bool)

(assert (=> b!621612 m!889473))

(declare-fun m!889475 () Bool)

(assert (=> b!621612 m!889475))

(declare-fun m!889477 () Bool)

(assert (=> b!621612 m!889477))

(assert (=> b!621612 m!889453))

(declare-fun m!889479 () Bool)

(assert (=> b!621612 m!889479))

(assert (=> b!621612 m!889449))

(declare-fun m!889481 () Bool)

(assert (=> b!621612 m!889481))

(declare-fun m!889483 () Bool)

(assert (=> b!621612 m!889483))

(declare-fun m!889485 () Bool)

(assert (=> b!621612 m!889485))

(assert (=> b!621612 m!889463))

(declare-fun m!889487 () Bool)

(assert (=> b!621612 m!889487))

(declare-fun m!889489 () Bool)

(assert (=> b!621612 m!889489))

(assert (=> b!621612 m!889483))

(declare-fun m!889491 () Bool)

(assert (=> b!621612 m!889491))

(assert (=> b!621612 m!889097))

(assert (=> b!621612 m!889423))

(assert (=> b!621612 m!889473))

(assert (=> b!621612 m!889437))

(assert (=> b!621612 m!889459))

(assert (=> b!621612 m!889465))

(declare-fun m!889493 () Bool)

(assert (=> b!621612 m!889493))

(assert (=> b!621612 m!889097))

(assert (=> b!621612 m!889449))

(declare-fun m!889495 () Bool)

(assert (=> b!621612 m!889495))

(assert (=> b!621612 m!889097))

(declare-fun m!889497 () Bool)

(assert (=> b!621612 m!889497))

(assert (=> b!621612 m!889459))

(declare-fun m!889499 () Bool)

(assert (=> b!621612 m!889499))

(assert (=> b!621612 m!889469))

(declare-fun m!889501 () Bool)

(assert (=> b!621612 m!889501))

(declare-fun m!889503 () Bool)

(assert (=> b!621612 m!889503))

(declare-fun m!889505 () Bool)

(assert (=> b!621612 m!889505))

(assert (=> b!621612 m!889475))

(assert (=> b!621612 m!889505))

(declare-fun m!889507 () Bool)

(assert (=> b!621612 m!889507))

(declare-fun m!889509 () Bool)

(assert (=> b!621612 m!889509))

(assert (=> d!217530 d!217562))

(declare-fun d!217564 () Bool)

(declare-fun res!270546 () Bool)

(declare-fun e!377321 () Bool)

(assert (=> d!217564 (=> (not res!270546) (not e!377321))))

(assert (=> d!217564 (= res!270546 (not (isEmpty!4565 (originalCharacters!1324 (h!11760 (t!81776 producedTokens!8))))))))

(assert (=> d!217564 (= (inv!8039 (h!11760 (t!81776 producedTokens!8))) e!377321)))

(declare-fun b!621616 () Bool)

(declare-fun res!270547 () Bool)

(assert (=> b!621616 (=> (not res!270547) (not e!377321))))

(assert (=> b!621616 (= res!270547 (= (originalCharacters!1324 (h!11760 (t!81776 producedTokens!8))) (list!2665 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))) (value!41657 (h!11760 (t!81776 producedTokens!8)))))))))

(declare-fun b!621617 () Bool)

(assert (=> b!621617 (= e!377321 (= (size!4950 (h!11760 (t!81776 producedTokens!8))) (size!4957 (originalCharacters!1324 (h!11760 (t!81776 producedTokens!8))))))))

(assert (= (and d!217564 res!270546) b!621616))

(assert (= (and b!621616 res!270547) b!621617))

(declare-fun b_lambda!24589 () Bool)

(assert (=> (not b_lambda!24589) (not b!621616)))

(declare-fun tb!53959 () Bool)

(declare-fun t!81813 () Bool)

(assert (=> (and b!621291 (= (toChars!2071 (transformation!1291 (h!11761 rules!3735))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8)))))) t!81813) tb!53959))

(declare-fun b!621618 () Bool)

(declare-fun e!377322 () Bool)

(declare-fun tp!193016 () Bool)

(assert (=> b!621618 (= e!377322 (and (inv!8043 (c!114228 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))) (value!41657 (h!11760 (t!81776 producedTokens!8)))))) tp!193016))))

(declare-fun result!60938 () Bool)

(assert (=> tb!53959 (= result!60938 (and (inv!8044 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))) (value!41657 (h!11760 (t!81776 producedTokens!8))))) e!377322))))

(assert (= tb!53959 b!621618))

(declare-fun m!889511 () Bool)

(assert (=> b!621618 m!889511))

(declare-fun m!889513 () Bool)

(assert (=> tb!53959 m!889513))

(assert (=> b!621616 t!81813))

(declare-fun b_and!61779 () Bool)

(assert (= b_and!61771 (and (=> t!81813 result!60938) b_and!61779)))

(declare-fun t!81815 () Bool)

(declare-fun tb!53961 () Bool)

(assert (=> (and b!621289 (= (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8)))))) t!81815) tb!53961))

(declare-fun result!60940 () Bool)

(assert (= result!60940 result!60938))

(assert (=> b!621616 t!81815))

(declare-fun b_and!61781 () Bool)

(assert (= b_and!61773 (and (=> t!81815 result!60940) b_and!61781)))

(declare-fun t!81817 () Bool)

(declare-fun tb!53963 () Bool)

(assert (=> (and b!621562 (= (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8)))))) t!81817) tb!53963))

(declare-fun result!60942 () Bool)

(assert (= result!60942 result!60938))

(assert (=> b!621616 t!81817))

(declare-fun b_and!61783 () Bool)

(assert (= b_and!61775 (and (=> t!81817 result!60942) b_and!61783)))

(declare-fun tb!53965 () Bool)

(declare-fun t!81819 () Bool)

(assert (=> (and b!621573 (= (toChars!2071 (transformation!1291 (h!11761 (t!81777 rules!3735)))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8)))))) t!81819) tb!53965))

(declare-fun result!60944 () Bool)

(assert (= result!60944 result!60938))

(assert (=> b!621616 t!81819))

(declare-fun b_and!61785 () Bool)

(assert (= b_and!61777 (and (=> t!81819 result!60944) b_and!61785)))

(declare-fun m!889515 () Bool)

(assert (=> d!217564 m!889515))

(declare-fun m!889517 () Bool)

(assert (=> b!621616 m!889517))

(assert (=> b!621616 m!889517))

(declare-fun m!889519 () Bool)

(assert (=> b!621616 m!889519))

(declare-fun m!889521 () Bool)

(assert (=> b!621617 m!889521))

(assert (=> b!621559 d!217564))

(declare-fun d!217566 () Bool)

(assert (=> d!217566 (= (inv!8036 (tag!1553 (rule!2085 (h!11760 (t!81776 producedTokens!8))))) (= (mod (str.len (value!41656 (tag!1553 (rule!2085 (h!11760 (t!81776 producedTokens!8)))))) 2) 0))))

(assert (=> b!621561 d!217566))

(declare-fun d!217568 () Bool)

(declare-fun res!270548 () Bool)

(declare-fun e!377323 () Bool)

(assert (=> d!217568 (=> (not res!270548) (not e!377323))))

(assert (=> d!217568 (= res!270548 (semiInverseModEq!521 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))) (toValue!2212 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8)))))))))

(assert (=> d!217568 (= (inv!8040 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))) e!377323)))

(declare-fun b!621619 () Bool)

(assert (=> b!621619 (= e!377323 (equivClasses!504 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))) (toValue!2212 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8)))))))))

(assert (= (and d!217568 res!270548) b!621619))

(declare-fun m!889523 () Bool)

(assert (=> d!217568 m!889523))

(declare-fun m!889525 () Bool)

(assert (=> b!621619 m!889525))

(assert (=> b!621561 d!217568))

(declare-fun call!41126 () Option!1631)

(declare-fun bm!41121 () Bool)

(assert (=> bm!41121 (= call!41126 (maxPrefixOneRule!509 thiss!25571 (h!11761 (t!81777 rules!3735)) input!3206))))

(declare-fun b!621620 () Bool)

(declare-fun e!377325 () Bool)

(declare-fun e!377324 () Bool)

(assert (=> b!621620 (= e!377325 e!377324)))

(declare-fun res!270552 () Bool)

(assert (=> b!621620 (=> (not res!270552) (not e!377324))))

(declare-fun lt!265818 () Option!1631)

(assert (=> b!621620 (= res!270552 (isDefined!1422 lt!265818))))

(declare-fun b!621621 () Bool)

(declare-fun res!270551 () Bool)

(assert (=> b!621621 (=> (not res!270551) (not e!377324))))

(assert (=> b!621621 (= res!270551 (< (size!4957 (_2!3845 (get!2423 lt!265818))) (size!4957 input!3206)))))

(declare-fun b!621622 () Bool)

(declare-fun e!377326 () Option!1631)

(declare-fun lt!265814 () Option!1631)

(declare-fun lt!265815 () Option!1631)

(assert (=> b!621622 (= e!377326 (ite (and ((_ is None!1630) lt!265814) ((_ is None!1630) lt!265815)) None!1630 (ite ((_ is None!1630) lt!265815) lt!265814 (ite ((_ is None!1630) lt!265814) lt!265815 (ite (>= (size!4950 (_1!3845 (v!16559 lt!265814))) (size!4950 (_1!3845 (v!16559 lt!265815)))) lt!265814 lt!265815)))))))

(assert (=> b!621622 (= lt!265814 call!41126)))

(assert (=> b!621622 (= lt!265815 (maxPrefix!861 thiss!25571 (t!81777 (t!81777 rules!3735)) input!3206))))

(declare-fun b!621623 () Bool)

(declare-fun res!270549 () Bool)

(assert (=> b!621623 (=> (not res!270549) (not e!377324))))

(assert (=> b!621623 (= res!270549 (= (++!1757 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265818)))) (_2!3845 (get!2423 lt!265818))) input!3206))))

(declare-fun b!621624 () Bool)

(assert (=> b!621624 (= e!377324 (contains!1500 (t!81777 rules!3735) (rule!2085 (_1!3845 (get!2423 lt!265818)))))))

(declare-fun d!217570 () Bool)

(assert (=> d!217570 e!377325))

(declare-fun res!270553 () Bool)

(assert (=> d!217570 (=> res!270553 e!377325)))

(assert (=> d!217570 (= res!270553 (isEmpty!4566 lt!265818))))

(assert (=> d!217570 (= lt!265818 e!377326)))

(declare-fun c!114276 () Bool)

(assert (=> d!217570 (= c!114276 (and ((_ is Cons!6360) (t!81777 rules!3735)) ((_ is Nil!6360) (t!81777 (t!81777 rules!3735)))))))

(declare-fun lt!265817 () Unit!11454)

(declare-fun lt!265816 () Unit!11454)

(assert (=> d!217570 (= lt!265817 lt!265816)))

(assert (=> d!217570 (isPrefix!909 input!3206 input!3206)))

(assert (=> d!217570 (= lt!265816 (lemmaIsPrefixRefl!622 input!3206 input!3206))))

(assert (=> d!217570 (rulesValidInductive!498 thiss!25571 (t!81777 rules!3735))))

(assert (=> d!217570 (= (maxPrefix!861 thiss!25571 (t!81777 rules!3735) input!3206) lt!265818)))

(declare-fun b!621625 () Bool)

(assert (=> b!621625 (= e!377326 call!41126)))

(declare-fun b!621626 () Bool)

(declare-fun res!270555 () Bool)

(assert (=> b!621626 (=> (not res!270555) (not e!377324))))

(assert (=> b!621626 (= res!270555 (= (value!41657 (_1!3845 (get!2423 lt!265818))) (apply!1511 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265818)))) (seqFromList!1446 (originalCharacters!1324 (_1!3845 (get!2423 lt!265818)))))))))

(declare-fun b!621627 () Bool)

(declare-fun res!270554 () Bool)

(assert (=> b!621627 (=> (not res!270554) (not e!377324))))

(assert (=> b!621627 (= res!270554 (matchR!697 (regex!1291 (rule!2085 (_1!3845 (get!2423 lt!265818)))) (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265818))))))))

(declare-fun b!621628 () Bool)

(declare-fun res!270550 () Bool)

(assert (=> b!621628 (=> (not res!270550) (not e!377324))))

(assert (=> b!621628 (= res!270550 (= (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265818)))) (originalCharacters!1324 (_1!3845 (get!2423 lt!265818)))))))

(assert (= (and d!217570 c!114276) b!621625))

(assert (= (and d!217570 (not c!114276)) b!621622))

(assert (= (or b!621625 b!621622) bm!41121))

(assert (= (and d!217570 (not res!270553)) b!621620))

(assert (= (and b!621620 res!270552) b!621628))

(assert (= (and b!621628 res!270550) b!621621))

(assert (= (and b!621621 res!270551) b!621623))

(assert (= (and b!621623 res!270549) b!621626))

(assert (= (and b!621626 res!270555) b!621627))

(assert (= (and b!621627 res!270554) b!621624))

(declare-fun m!889527 () Bool)

(assert (=> b!621621 m!889527))

(declare-fun m!889529 () Bool)

(assert (=> b!621621 m!889529))

(assert (=> b!621621 m!889329))

(assert (=> b!621624 m!889527))

(declare-fun m!889531 () Bool)

(assert (=> b!621624 m!889531))

(declare-fun m!889533 () Bool)

(assert (=> bm!41121 m!889533))

(declare-fun m!889535 () Bool)

(assert (=> b!621620 m!889535))

(assert (=> b!621627 m!889527))

(declare-fun m!889537 () Bool)

(assert (=> b!621627 m!889537))

(assert (=> b!621627 m!889537))

(declare-fun m!889539 () Bool)

(assert (=> b!621627 m!889539))

(assert (=> b!621627 m!889539))

(declare-fun m!889541 () Bool)

(assert (=> b!621627 m!889541))

(declare-fun m!889543 () Bool)

(assert (=> b!621622 m!889543))

(assert (=> b!621626 m!889527))

(declare-fun m!889545 () Bool)

(assert (=> b!621626 m!889545))

(assert (=> b!621626 m!889545))

(declare-fun m!889547 () Bool)

(assert (=> b!621626 m!889547))

(assert (=> b!621628 m!889527))

(assert (=> b!621628 m!889537))

(assert (=> b!621628 m!889537))

(assert (=> b!621628 m!889539))

(assert (=> b!621623 m!889527))

(assert (=> b!621623 m!889537))

(assert (=> b!621623 m!889537))

(assert (=> b!621623 m!889539))

(assert (=> b!621623 m!889539))

(declare-fun m!889549 () Bool)

(assert (=> b!621623 m!889549))

(declare-fun m!889551 () Bool)

(assert (=> d!217570 m!889551))

(assert (=> d!217570 m!889353))

(assert (=> d!217570 m!889355))

(declare-fun m!889553 () Bool)

(assert (=> d!217570 m!889553))

(assert (=> b!621517 d!217570))

(declare-fun d!217572 () Bool)

(declare-fun e!377329 () Bool)

(assert (=> d!217572 e!377329))

(declare-fun res!270558 () Bool)

(assert (=> d!217572 (=> (not res!270558) (not e!377329))))

(declare-fun lt!265821 () BalanceConc!4054)

(assert (=> d!217572 (= res!270558 (= (list!2665 lt!265821) (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))))))

(declare-fun fromList!290 (List!6368) Conc!2023)

(assert (=> d!217572 (= lt!265821 (BalanceConc!4055 (fromList!290 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206))))))))

(assert (=> d!217572 (= (fromListB!630 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))) lt!265821)))

(declare-fun b!621631 () Bool)

(declare-fun isBalanced!540 (Conc!2023) Bool)

(assert (=> b!621631 (= e!377329 (isBalanced!540 (fromList!290 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206))))))))

(assert (= (and d!217572 res!270558) b!621631))

(declare-fun m!889555 () Bool)

(assert (=> d!217572 m!889555))

(declare-fun m!889557 () Bool)

(assert (=> d!217572 m!889557))

(assert (=> b!621631 m!889557))

(assert (=> b!621631 m!889557))

(declare-fun m!889559 () Bool)

(assert (=> b!621631 m!889559))

(assert (=> d!217540 d!217572))

(declare-fun d!217574 () Bool)

(assert (=> d!217574 true))

(declare-fun lt!265942 () Bool)

(assert (=> d!217574 (= lt!265942 (rulesValidInductive!498 thiss!25571 rules!3735))))

(declare-fun lambda!16315 () Int)

(declare-fun forall!1575 (List!6370 Int) Bool)

(assert (=> d!217574 (= lt!265942 (forall!1575 rules!3735 lambda!16315))))

(assert (=> d!217574 (= (rulesValid!483 thiss!25571 rules!3735) lt!265942)))

(declare-fun bs!72033 () Bool)

(assert (= bs!72033 d!217574))

(assert (=> bs!72033 m!889357))

(declare-fun m!889731 () Bool)

(assert (=> bs!72033 m!889731))

(assert (=> d!217512 d!217574))

(declare-fun d!217616 () Bool)

(assert (=> d!217616 (= (isDefined!1422 lt!265702) (not (isEmpty!4566 lt!265702)))))

(declare-fun bs!72035 () Bool)

(assert (= bs!72035 d!217616))

(assert (=> bs!72035 m!889351))

(assert (=> b!621515 d!217616))

(declare-fun b!621771 () Bool)

(declare-fun e!377402 () List!6368)

(assert (=> b!621771 (= e!377402 (++!1757 (list!2669 (left!5038 (c!114228 (_2!3843 lt!265658)))) (list!2669 (right!5368 (c!114228 (_2!3843 lt!265658))))))))

(declare-fun d!217618 () Bool)

(declare-fun c!114323 () Bool)

(assert (=> d!217618 (= c!114323 ((_ is Empty!2023) (c!114228 (_2!3843 lt!265658))))))

(declare-fun e!377401 () List!6368)

(assert (=> d!217618 (= (list!2669 (c!114228 (_2!3843 lt!265658))) e!377401)))

(declare-fun b!621769 () Bool)

(assert (=> b!621769 (= e!377401 e!377402)))

(declare-fun c!114324 () Bool)

(assert (=> b!621769 (= c!114324 ((_ is Leaf!3177) (c!114228 (_2!3843 lt!265658))))))

(declare-fun b!621770 () Bool)

(declare-fun list!2672 (IArray!4047) List!6368)

(assert (=> b!621770 (= e!377402 (list!2672 (xs!4660 (c!114228 (_2!3843 lt!265658)))))))

(declare-fun b!621768 () Bool)

(assert (=> b!621768 (= e!377401 Nil!6358)))

(assert (= (and d!217618 c!114323) b!621768))

(assert (= (and d!217618 (not c!114323)) b!621769))

(assert (= (and b!621769 c!114324) b!621770))

(assert (= (and b!621769 (not c!114324)) b!621771))

(declare-fun m!889741 () Bool)

(assert (=> b!621771 m!889741))

(declare-fun m!889743 () Bool)

(assert (=> b!621771 m!889743))

(assert (=> b!621771 m!889741))

(assert (=> b!621771 m!889743))

(declare-fun m!889745 () Bool)

(assert (=> b!621771 m!889745))

(declare-fun m!889747 () Bool)

(assert (=> b!621770 m!889747))

(assert (=> d!217534 d!217618))

(declare-fun d!217624 () Bool)

(declare-fun lt!265948 () Int)

(assert (=> d!217624 (>= lt!265948 0)))

(declare-fun e!377407 () Int)

(assert (=> d!217624 (= lt!265948 e!377407)))

(declare-fun c!114327 () Bool)

(assert (=> d!217624 (= c!114327 ((_ is Nil!6358) (_2!3845 (get!2423 lt!265702))))))

(assert (=> d!217624 (= (size!4957 (_2!3845 (get!2423 lt!265702))) lt!265948)))

(declare-fun b!621778 () Bool)

(assert (=> b!621778 (= e!377407 0)))

(declare-fun b!621779 () Bool)

(assert (=> b!621779 (= e!377407 (+ 1 (size!4957 (t!81775 (_2!3845 (get!2423 lt!265702))))))))

(assert (= (and d!217624 c!114327) b!621778))

(assert (= (and d!217624 (not c!114327)) b!621779))

(declare-fun m!889749 () Bool)

(assert (=> b!621779 m!889749))

(assert (=> b!621516 d!217624))

(assert (=> b!621516 d!217558))

(declare-fun d!217626 () Bool)

(declare-fun lt!265949 () Int)

(assert (=> d!217626 (>= lt!265949 0)))

(declare-fun e!377408 () Int)

(assert (=> d!217626 (= lt!265949 e!377408)))

(declare-fun c!114328 () Bool)

(assert (=> d!217626 (= c!114328 ((_ is Nil!6358) input!3206))))

(assert (=> d!217626 (= (size!4957 input!3206) lt!265949)))

(declare-fun b!621782 () Bool)

(assert (=> b!621782 (= e!377408 0)))

(declare-fun b!621783 () Bool)

(assert (=> b!621783 (= e!377408 (+ 1 (size!4957 (t!81775 input!3206))))))

(assert (= (and d!217626 c!114328) b!621782))

(assert (= (and d!217626 (not c!114328)) b!621783))

(declare-fun m!889751 () Bool)

(assert (=> b!621783 m!889751))

(assert (=> b!621516 d!217626))

(declare-fun b!621864 () Bool)

(declare-fun res!270640 () Bool)

(declare-fun e!377457 () Bool)

(assert (=> b!621864 (=> (not res!270640) (not e!377457))))

(declare-fun lt!265998 () Option!1631)

(assert (=> b!621864 (= res!270640 (= (++!1757 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265998)))) (_2!3845 (get!2423 lt!265998))) input!3206))))

(declare-fun b!621865 () Bool)

(declare-fun res!270646 () Bool)

(assert (=> b!621865 (=> (not res!270646) (not e!377457))))

(assert (=> b!621865 (= res!270646 (< (size!4957 (_2!3845 (get!2423 lt!265998))) (size!4957 input!3206)))))

(declare-fun b!621866 () Bool)

(declare-fun e!377456 () Bool)

(declare-datatypes ((tuple2!7168 0))(
  ( (tuple2!7169 (_1!3848 List!6368) (_2!3848 List!6368)) )
))
(declare-fun findLongestMatchInner!219 (Regex!1625 List!6368 Int List!6368 List!6368 Int) tuple2!7168)

(assert (=> b!621866 (= e!377456 (matchR!697 (regex!1291 (h!11761 rules!3735)) (_1!3848 (findLongestMatchInner!219 (regex!1291 (h!11761 rules!3735)) Nil!6358 (size!4957 Nil!6358) input!3206 input!3206 (size!4957 input!3206)))))))

(declare-fun b!621867 () Bool)

(assert (=> b!621867 (= e!377457 (= (size!4950 (_1!3845 (get!2423 lt!265998))) (size!4957 (originalCharacters!1324 (_1!3845 (get!2423 lt!265998))))))))

(declare-fun d!217628 () Bool)

(declare-fun e!377459 () Bool)

(assert (=> d!217628 e!377459))

(declare-fun res!270641 () Bool)

(assert (=> d!217628 (=> res!270641 e!377459)))

(assert (=> d!217628 (= res!270641 (isEmpty!4566 lt!265998))))

(declare-fun e!377458 () Option!1631)

(assert (=> d!217628 (= lt!265998 e!377458)))

(declare-fun c!114348 () Bool)

(declare-fun lt!266000 () tuple2!7168)

(assert (=> d!217628 (= c!114348 (isEmpty!4565 (_1!3848 lt!266000)))))

(declare-fun findLongestMatch!198 (Regex!1625 List!6368) tuple2!7168)

(assert (=> d!217628 (= lt!266000 (findLongestMatch!198 (regex!1291 (h!11761 rules!3735)) input!3206))))

(declare-fun ruleValid!457 (LexerInterface!1179 Rule!2382) Bool)

(assert (=> d!217628 (ruleValid!457 thiss!25571 (h!11761 rules!3735))))

(assert (=> d!217628 (= (maxPrefixOneRule!509 thiss!25571 (h!11761 rules!3735) input!3206) lt!265998)))

(declare-fun b!621868 () Bool)

(declare-fun res!270643 () Bool)

(assert (=> b!621868 (=> (not res!270643) (not e!377457))))

(assert (=> b!621868 (= res!270643 (= (rule!2085 (_1!3845 (get!2423 lt!265998))) (h!11761 rules!3735)))))

(declare-fun b!621869 () Bool)

(assert (=> b!621869 (= e!377458 None!1630)))

(declare-fun b!621870 () Bool)

(assert (=> b!621870 (= e!377458 (Some!1630 (tuple2!7163 (Token!2307 (apply!1511 (transformation!1291 (h!11761 rules!3735)) (seqFromList!1446 (_1!3848 lt!266000))) (h!11761 rules!3735) (size!4956 (seqFromList!1446 (_1!3848 lt!266000))) (_1!3848 lt!266000)) (_2!3848 lt!266000))))))

(declare-fun lt!265996 () Unit!11454)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!203 (Regex!1625 List!6368) Unit!11454)

(assert (=> b!621870 (= lt!265996 (longestMatchIsAcceptedByMatchOrIsEmpty!203 (regex!1291 (h!11761 rules!3735)) input!3206))))

(declare-fun res!270645 () Bool)

(assert (=> b!621870 (= res!270645 (isEmpty!4565 (_1!3848 (findLongestMatchInner!219 (regex!1291 (h!11761 rules!3735)) Nil!6358 (size!4957 Nil!6358) input!3206 input!3206 (size!4957 input!3206)))))))

(assert (=> b!621870 (=> res!270645 e!377456)))

(assert (=> b!621870 e!377456))

(declare-fun lt!265997 () Unit!11454)

(assert (=> b!621870 (= lt!265997 lt!265996)))

(declare-fun lt!265999 () Unit!11454)

(declare-fun lemmaSemiInverse!274 (TokenValueInjection!2398 BalanceConc!4054) Unit!11454)

(assert (=> b!621870 (= lt!265999 (lemmaSemiInverse!274 (transformation!1291 (h!11761 rules!3735)) (seqFromList!1446 (_1!3848 lt!266000))))))

(declare-fun b!621871 () Bool)

(declare-fun res!270642 () Bool)

(assert (=> b!621871 (=> (not res!270642) (not e!377457))))

(assert (=> b!621871 (= res!270642 (= (value!41657 (_1!3845 (get!2423 lt!265998))) (apply!1511 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265998)))) (seqFromList!1446 (originalCharacters!1324 (_1!3845 (get!2423 lt!265998)))))))))

(declare-fun b!621872 () Bool)

(assert (=> b!621872 (= e!377459 e!377457)))

(declare-fun res!270644 () Bool)

(assert (=> b!621872 (=> (not res!270644) (not e!377457))))

(assert (=> b!621872 (= res!270644 (matchR!697 (regex!1291 (h!11761 rules!3735)) (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265998))))))))

(assert (= (and d!217628 c!114348) b!621869))

(assert (= (and d!217628 (not c!114348)) b!621870))

(assert (= (and b!621870 (not res!270645)) b!621866))

(assert (= (and d!217628 (not res!270641)) b!621872))

(assert (= (and b!621872 res!270644) b!621864))

(assert (= (and b!621864 res!270640) b!621865))

(assert (= (and b!621865 res!270646) b!621868))

(assert (= (and b!621868 res!270643) b!621871))

(assert (= (and b!621871 res!270642) b!621867))

(declare-fun m!889891 () Bool)

(assert (=> b!621866 m!889891))

(assert (=> b!621866 m!889329))

(assert (=> b!621866 m!889891))

(assert (=> b!621866 m!889329))

(declare-fun m!889893 () Bool)

(assert (=> b!621866 m!889893))

(declare-fun m!889895 () Bool)

(assert (=> b!621866 m!889895))

(declare-fun m!889897 () Bool)

(assert (=> b!621864 m!889897))

(declare-fun m!889899 () Bool)

(assert (=> b!621864 m!889899))

(assert (=> b!621864 m!889899))

(declare-fun m!889901 () Bool)

(assert (=> b!621864 m!889901))

(assert (=> b!621864 m!889901))

(declare-fun m!889903 () Bool)

(assert (=> b!621864 m!889903))

(assert (=> b!621867 m!889897))

(declare-fun m!889905 () Bool)

(assert (=> b!621867 m!889905))

(assert (=> b!621872 m!889897))

(assert (=> b!621872 m!889899))

(assert (=> b!621872 m!889899))

(assert (=> b!621872 m!889901))

(assert (=> b!621872 m!889901))

(declare-fun m!889907 () Bool)

(assert (=> b!621872 m!889907))

(assert (=> b!621871 m!889897))

(declare-fun m!889909 () Bool)

(assert (=> b!621871 m!889909))

(assert (=> b!621871 m!889909))

(declare-fun m!889911 () Bool)

(assert (=> b!621871 m!889911))

(declare-fun m!889913 () Bool)

(assert (=> d!217628 m!889913))

(declare-fun m!889915 () Bool)

(assert (=> d!217628 m!889915))

(declare-fun m!889917 () Bool)

(assert (=> d!217628 m!889917))

(declare-fun m!889919 () Bool)

(assert (=> d!217628 m!889919))

(assert (=> b!621868 m!889897))

(declare-fun m!889921 () Bool)

(assert (=> b!621870 m!889921))

(assert (=> b!621870 m!889921))

(declare-fun m!889923 () Bool)

(assert (=> b!621870 m!889923))

(assert (=> b!621870 m!889921))

(declare-fun m!889925 () Bool)

(assert (=> b!621870 m!889925))

(assert (=> b!621870 m!889891))

(assert (=> b!621870 m!889891))

(assert (=> b!621870 m!889329))

(assert (=> b!621870 m!889893))

(assert (=> b!621870 m!889329))

(assert (=> b!621870 m!889921))

(declare-fun m!889927 () Bool)

(assert (=> b!621870 m!889927))

(declare-fun m!889929 () Bool)

(assert (=> b!621870 m!889929))

(declare-fun m!889931 () Bool)

(assert (=> b!621870 m!889931))

(assert (=> b!621865 m!889897))

(declare-fun m!889933 () Bool)

(assert (=> b!621865 m!889933))

(assert (=> b!621865 m!889329))

(assert (=> bm!41120 d!217628))

(declare-fun d!217688 () Bool)

(assert (=> d!217688 (= (inv!8044 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8)))) (isBalanced!540 (c!114228 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8))))))))

(declare-fun bs!72054 () Bool)

(assert (= bs!72054 d!217688))

(declare-fun m!889935 () Bool)

(assert (=> bs!72054 m!889935))

(assert (=> tb!53935 d!217688))

(declare-fun d!217690 () Bool)

(declare-fun res!270651 () Bool)

(declare-fun e!377464 () Bool)

(assert (=> d!217690 (=> res!270651 e!377464)))

(assert (=> d!217690 (= res!270651 ((_ is Nil!6360) rules!3735))))

(assert (=> d!217690 (= (noDuplicateTag!483 thiss!25571 rules!3735 Nil!6362) e!377464)))

(declare-fun b!621877 () Bool)

(declare-fun e!377465 () Bool)

(assert (=> b!621877 (= e!377464 e!377465)))

(declare-fun res!270652 () Bool)

(assert (=> b!621877 (=> (not res!270652) (not e!377465))))

(declare-fun contains!1501 (List!6372 String!8323) Bool)

(assert (=> b!621877 (= res!270652 (not (contains!1501 Nil!6362 (tag!1553 (h!11761 rules!3735)))))))

(declare-fun b!621878 () Bool)

(assert (=> b!621878 (= e!377465 (noDuplicateTag!483 thiss!25571 (t!81777 rules!3735) (Cons!6362 (tag!1553 (h!11761 rules!3735)) Nil!6362)))))

(assert (= (and d!217690 (not res!270651)) b!621877))

(assert (= (and b!621877 res!270652) b!621878))

(declare-fun m!889937 () Bool)

(assert (=> b!621877 m!889937))

(declare-fun m!889939 () Bool)

(assert (=> b!621878 m!889939))

(assert (=> b!621408 d!217690))

(declare-fun b!621882 () Bool)

(declare-fun e!377467 () List!6368)

(assert (=> b!621882 (= e!377467 (++!1757 (list!2669 (left!5038 (c!114228 (_2!3843 lt!265657)))) (list!2669 (right!5368 (c!114228 (_2!3843 lt!265657))))))))

(declare-fun d!217692 () Bool)

(declare-fun c!114349 () Bool)

(assert (=> d!217692 (= c!114349 ((_ is Empty!2023) (c!114228 (_2!3843 lt!265657))))))

(declare-fun e!377466 () List!6368)

(assert (=> d!217692 (= (list!2669 (c!114228 (_2!3843 lt!265657))) e!377466)))

(declare-fun b!621880 () Bool)

(assert (=> b!621880 (= e!377466 e!377467)))

(declare-fun c!114350 () Bool)

(assert (=> b!621880 (= c!114350 ((_ is Leaf!3177) (c!114228 (_2!3843 lt!265657))))))

(declare-fun b!621881 () Bool)

(assert (=> b!621881 (= e!377467 (list!2672 (xs!4660 (c!114228 (_2!3843 lt!265657)))))))

(declare-fun b!621879 () Bool)

(assert (=> b!621879 (= e!377466 Nil!6358)))

(assert (= (and d!217692 c!114349) b!621879))

(assert (= (and d!217692 (not c!114349)) b!621880))

(assert (= (and b!621880 c!114350) b!621881))

(assert (= (and b!621880 (not c!114350)) b!621882))

(declare-fun m!889941 () Bool)

(assert (=> b!621882 m!889941))

(declare-fun m!889943 () Bool)

(assert (=> b!621882 m!889943))

(assert (=> b!621882 m!889941))

(assert (=> b!621882 m!889943))

(declare-fun m!889945 () Bool)

(assert (=> b!621882 m!889945))

(declare-fun m!889947 () Bool)

(assert (=> b!621881 m!889947))

(assert (=> d!217506 d!217692))

(declare-fun d!217694 () Bool)

(declare-fun lt!266001 () Int)

(assert (=> d!217694 (= lt!266001 (size!4951 (list!2664 (_1!3843 lt!265668))))))

(assert (=> d!217694 (= lt!266001 (size!4959 (c!114229 (_1!3843 lt!265668))))))

(assert (=> d!217694 (= (size!4955 (_1!3843 lt!265668)) lt!266001)))

(declare-fun bs!72055 () Bool)

(assert (= bs!72055 d!217694))

(assert (=> bs!72055 m!889211))

(assert (=> bs!72055 m!889211))

(declare-fun m!889949 () Bool)

(assert (=> bs!72055 m!889949))

(declare-fun m!889951 () Bool)

(assert (=> bs!72055 m!889951))

(assert (=> d!217466 d!217694))

(declare-fun d!217696 () Bool)

(declare-fun e!377470 () Bool)

(assert (=> d!217696 e!377470))

(declare-fun res!270653 () Bool)

(assert (=> d!217696 (=> (not res!270653) (not e!377470))))

(declare-fun lt!266015 () tuple2!7158)

(assert (=> d!217696 (= res!270653 (= (list!2664 (_1!3843 lt!266015)) (list!2664 (_1!3843 (lexRec!148 thiss!25571 rules!3735 (seqFromList!1446 input!3206))))))))

(declare-fun e!377471 () tuple2!7158)

(assert (=> d!217696 (= lt!266015 e!377471)))

(declare-fun c!114353 () Bool)

(declare-fun lt!266007 () Option!1633)

(assert (=> d!217696 (= c!114353 ((_ is Some!1632) lt!266007))))

(assert (=> d!217696 (= lt!266007 (maxPrefixZipperSequenceV2!125 thiss!25571 rules!3735 (seqFromList!1446 input!3206) (seqFromList!1446 input!3206)))))

(declare-fun lt!266005 () Unit!11454)

(declare-fun lt!266003 () Unit!11454)

(assert (=> d!217696 (= lt!266005 lt!266003)))

(declare-fun lt!266023 () List!6368)

(declare-fun lt!266008 () List!6368)

(assert (=> d!217696 (isSuffix!125 lt!266023 (++!1757 lt!266008 lt!266023))))

(assert (=> d!217696 (= lt!266003 (lemmaConcatTwoListThenFSndIsSuffix!125 lt!266008 lt!266023))))

(assert (=> d!217696 (= lt!266023 (list!2665 (seqFromList!1446 input!3206)))))

(assert (=> d!217696 (= lt!266008 (list!2665 (BalanceConc!4055 Empty!2023)))))

(assert (=> d!217696 (= (lexTailRecV2!275 thiss!25571 rules!3735 (seqFromList!1446 input!3206) (BalanceConc!4055 Empty!2023) (seqFromList!1446 input!3206) (BalanceConc!4057 Empty!2024)) lt!266015)))

(declare-fun b!621883 () Bool)

(assert (=> b!621883 (= e!377470 (= (list!2665 (_2!3843 lt!266015)) (list!2665 (_2!3843 (lexRec!148 thiss!25571 rules!3735 (seqFromList!1446 input!3206))))))))

(declare-fun b!621884 () Bool)

(declare-fun e!377468 () tuple2!7158)

(declare-fun lt!266013 () BalanceConc!4054)

(assert (=> b!621884 (= e!377468 (tuple2!7159 (BalanceConc!4057 Empty!2024) lt!266013))))

(declare-fun lt!266009 () tuple2!7158)

(declare-fun b!621885 () Bool)

(declare-fun lt!266012 () Option!1633)

(assert (=> b!621885 (= lt!266009 (lexRec!148 thiss!25571 rules!3735 (_2!3847 (v!16563 lt!266012))))))

(declare-fun e!377469 () tuple2!7158)

(assert (=> b!621885 (= e!377469 (tuple2!7159 (prepend!248 (_1!3843 lt!266009) (_1!3847 (v!16563 lt!266012))) (_2!3843 lt!266009)))))

(declare-fun lt!266014 () BalanceConc!4054)

(declare-fun b!621886 () Bool)

(assert (=> b!621886 (= e!377471 (lexTailRecV2!275 thiss!25571 rules!3735 (seqFromList!1446 input!3206) lt!266014 (_2!3847 (v!16563 lt!266007)) (append!164 (BalanceConc!4057 Empty!2024) (_1!3847 (v!16563 lt!266007)))))))

(declare-fun lt!266028 () tuple2!7158)

(assert (=> b!621886 (= lt!266028 (lexRec!148 thiss!25571 rules!3735 (_2!3847 (v!16563 lt!266007))))))

(declare-fun lt!266019 () List!6368)

(assert (=> b!621886 (= lt!266019 (list!2665 (BalanceConc!4055 Empty!2023)))))

(declare-fun lt!266030 () List!6368)

(assert (=> b!621886 (= lt!266030 (list!2665 (charsOf!890 (_1!3847 (v!16563 lt!266007)))))))

(declare-fun lt!266016 () List!6368)

(assert (=> b!621886 (= lt!266016 (list!2665 (_2!3847 (v!16563 lt!266007))))))

(declare-fun lt!266031 () Unit!11454)

(assert (=> b!621886 (= lt!266031 (lemmaConcatAssociativity!629 lt!266019 lt!266030 lt!266016))))

(assert (=> b!621886 (= (++!1757 (++!1757 lt!266019 lt!266030) lt!266016) (++!1757 lt!266019 (++!1757 lt!266030 lt!266016)))))

(declare-fun lt!266029 () Unit!11454)

(assert (=> b!621886 (= lt!266029 lt!266031)))

(assert (=> b!621886 (= lt!266012 (maxPrefixZipperSequence!451 thiss!25571 rules!3735 (seqFromList!1446 input!3206)))))

(declare-fun c!114352 () Bool)

(assert (=> b!621886 (= c!114352 ((_ is Some!1632) lt!266012))))

(assert (=> b!621886 (= (lexRec!148 thiss!25571 rules!3735 (seqFromList!1446 input!3206)) e!377469)))

(declare-fun lt!266006 () Unit!11454)

(declare-fun Unit!11460 () Unit!11454)

(assert (=> b!621886 (= lt!266006 Unit!11460)))

(declare-fun lt!266026 () List!6369)

(assert (=> b!621886 (= lt!266026 (list!2664 (BalanceConc!4057 Empty!2024)))))

(declare-fun lt!266024 () List!6369)

(assert (=> b!621886 (= lt!266024 (Cons!6359 (_1!3847 (v!16563 lt!266007)) Nil!6359))))

(declare-fun lt!266022 () List!6369)

(assert (=> b!621886 (= lt!266022 (list!2664 (_1!3843 lt!266028)))))

(declare-fun lt!266010 () Unit!11454)

(assert (=> b!621886 (= lt!266010 (lemmaConcatAssociativity!630 lt!266026 lt!266024 lt!266022))))

(assert (=> b!621886 (= (++!1760 (++!1760 lt!266026 lt!266024) lt!266022) (++!1760 lt!266026 (++!1760 lt!266024 lt!266022)))))

(declare-fun lt!266032 () Unit!11454)

(assert (=> b!621886 (= lt!266032 lt!266010)))

(declare-fun lt!266033 () List!6368)

(assert (=> b!621886 (= lt!266033 (++!1757 (list!2665 (BalanceConc!4055 Empty!2023)) (list!2665 (charsOf!890 (_1!3847 (v!16563 lt!266007))))))))

(declare-fun lt!266027 () List!6368)

(assert (=> b!621886 (= lt!266027 (list!2665 (_2!3847 (v!16563 lt!266007))))))

(declare-fun lt!266020 () List!6369)

(assert (=> b!621886 (= lt!266020 (list!2664 (append!164 (BalanceConc!4057 Empty!2024) (_1!3847 (v!16563 lt!266007)))))))

(declare-fun lt!266002 () Unit!11454)

(assert (=> b!621886 (= lt!266002 (lemmaLexThenLexPrefix!127 thiss!25571 rules!3735 lt!266033 lt!266027 lt!266020 (list!2664 (_1!3843 lt!266028)) (list!2665 (_2!3843 lt!266028))))))

(assert (=> b!621886 (= (lexList!313 thiss!25571 rules!3735 lt!266033) (tuple2!7161 lt!266020 Nil!6358))))

(declare-fun lt!266034 () Unit!11454)

(assert (=> b!621886 (= lt!266034 lt!266002)))

(assert (=> b!621886 (= lt!266013 (++!1761 (BalanceConc!4055 Empty!2023) (charsOf!890 (_1!3847 (v!16563 lt!266007)))))))

(declare-fun lt!266035 () Option!1633)

(assert (=> b!621886 (= lt!266035 (maxPrefixZipperSequence!451 thiss!25571 rules!3735 lt!266013))))

(declare-fun c!114351 () Bool)

(assert (=> b!621886 (= c!114351 ((_ is Some!1632) lt!266035))))

(assert (=> b!621886 (= (lexRec!148 thiss!25571 rules!3735 (++!1761 (BalanceConc!4055 Empty!2023) (charsOf!890 (_1!3847 (v!16563 lt!266007))))) e!377468)))

(declare-fun lt!266017 () Unit!11454)

(declare-fun Unit!11461 () Unit!11454)

(assert (=> b!621886 (= lt!266017 Unit!11461)))

(assert (=> b!621886 (= lt!266014 (++!1761 (BalanceConc!4055 Empty!2023) (charsOf!890 (_1!3847 (v!16563 lt!266007)))))))

(declare-fun lt!266021 () List!6368)

(assert (=> b!621886 (= lt!266021 (list!2665 lt!266014))))

(declare-fun lt!266018 () List!6368)

(assert (=> b!621886 (= lt!266018 (list!2665 (_2!3847 (v!16563 lt!266007))))))

(declare-fun lt!266011 () Unit!11454)

(assert (=> b!621886 (= lt!266011 (lemmaConcatTwoListThenFSndIsSuffix!125 lt!266021 lt!266018))))

(assert (=> b!621886 (isSuffix!125 lt!266018 (++!1757 lt!266021 lt!266018))))

(declare-fun lt!266025 () Unit!11454)

(assert (=> b!621886 (= lt!266025 lt!266011)))

(declare-fun b!621887 () Bool)

(assert (=> b!621887 (= e!377469 (tuple2!7159 (BalanceConc!4057 Empty!2024) (seqFromList!1446 input!3206)))))

(declare-fun b!621888 () Bool)

(declare-fun lt!266004 () tuple2!7158)

(assert (=> b!621888 (= lt!266004 (lexRec!148 thiss!25571 rules!3735 (_2!3847 (v!16563 lt!266035))))))

(assert (=> b!621888 (= e!377468 (tuple2!7159 (prepend!248 (_1!3843 lt!266004) (_1!3847 (v!16563 lt!266035))) (_2!3843 lt!266004)))))

(declare-fun b!621889 () Bool)

(assert (=> b!621889 (= e!377471 (tuple2!7159 (BalanceConc!4057 Empty!2024) (seqFromList!1446 input!3206)))))

(assert (= (and d!217696 c!114353) b!621886))

(assert (= (and d!217696 (not c!114353)) b!621889))

(assert (= (and b!621886 c!114352) b!621885))

(assert (= (and b!621886 (not c!114352)) b!621887))

(assert (= (and b!621886 c!114351) b!621888))

(assert (= (and b!621886 (not c!114351)) b!621884))

(assert (= (and d!217696 res!270653) b!621883))

(declare-fun m!889953 () Bool)

(assert (=> b!621883 m!889953))

(assert (=> b!621883 m!889119))

(declare-fun m!889955 () Bool)

(assert (=> b!621883 m!889955))

(declare-fun m!889957 () Bool)

(assert (=> b!621883 m!889957))

(declare-fun m!889959 () Bool)

(assert (=> b!621888 m!889959))

(declare-fun m!889961 () Bool)

(assert (=> b!621888 m!889961))

(declare-fun m!889963 () Bool)

(assert (=> b!621885 m!889963))

(declare-fun m!889965 () Bool)

(assert (=> b!621885 m!889965))

(assert (=> d!217696 m!889119))

(assert (=> d!217696 m!889207))

(declare-fun m!889967 () Bool)

(assert (=> d!217696 m!889967))

(assert (=> d!217696 m!889437))

(declare-fun m!889969 () Bool)

(assert (=> d!217696 m!889969))

(declare-fun m!889971 () Bool)

(assert (=> d!217696 m!889971))

(declare-fun m!889973 () Bool)

(assert (=> d!217696 m!889973))

(assert (=> d!217696 m!889119))

(assert (=> d!217696 m!889119))

(declare-fun m!889975 () Bool)

(assert (=> d!217696 m!889975))

(assert (=> d!217696 m!889119))

(assert (=> d!217696 m!889955))

(assert (=> d!217696 m!889971))

(declare-fun m!889977 () Bool)

(assert (=> d!217696 m!889977))

(declare-fun m!889979 () Bool)

(assert (=> b!621886 m!889979))

(declare-fun m!889981 () Bool)

(assert (=> b!621886 m!889981))

(declare-fun m!889983 () Bool)

(assert (=> b!621886 m!889983))

(declare-fun m!889985 () Bool)

(assert (=> b!621886 m!889985))

(declare-fun m!889987 () Bool)

(assert (=> b!621886 m!889987))

(declare-fun m!889989 () Bool)

(assert (=> b!621886 m!889989))

(assert (=> b!621886 m!889985))

(declare-fun m!889991 () Bool)

(assert (=> b!621886 m!889991))

(declare-fun m!889993 () Bool)

(assert (=> b!621886 m!889993))

(assert (=> b!621886 m!889437))

(declare-fun m!889995 () Bool)

(assert (=> b!621886 m!889995))

(declare-fun m!889997 () Bool)

(assert (=> b!621886 m!889997))

(declare-fun m!889999 () Bool)

(assert (=> b!621886 m!889999))

(declare-fun m!890001 () Bool)

(assert (=> b!621886 m!890001))

(declare-fun m!890003 () Bool)

(assert (=> b!621886 m!890003))

(declare-fun m!890005 () Bool)

(assert (=> b!621886 m!890005))

(declare-fun m!890007 () Bool)

(assert (=> b!621886 m!890007))

(assert (=> b!621886 m!889983))

(declare-fun m!890009 () Bool)

(assert (=> b!621886 m!890009))

(assert (=> b!621886 m!889979))

(declare-fun m!890011 () Bool)

(assert (=> b!621886 m!890011))

(declare-fun m!890013 () Bool)

(assert (=> b!621886 m!890013))

(declare-fun m!890015 () Bool)

(assert (=> b!621886 m!890015))

(assert (=> b!621886 m!889993))

(declare-fun m!890017 () Bool)

(assert (=> b!621886 m!890017))

(declare-fun m!890019 () Bool)

(assert (=> b!621886 m!890019))

(assert (=> b!621886 m!890013))

(declare-fun m!890021 () Bool)

(assert (=> b!621886 m!890021))

(assert (=> b!621886 m!889119))

(assert (=> b!621886 m!889955))

(assert (=> b!621886 m!890003))

(assert (=> b!621886 m!889437))

(assert (=> b!621886 m!889989))

(assert (=> b!621886 m!889995))

(declare-fun m!890023 () Bool)

(assert (=> b!621886 m!890023))

(assert (=> b!621886 m!889119))

(assert (=> b!621886 m!889979))

(declare-fun m!890025 () Bool)

(assert (=> b!621886 m!890025))

(assert (=> b!621886 m!889119))

(declare-fun m!890027 () Bool)

(assert (=> b!621886 m!890027))

(assert (=> b!621886 m!889989))

(assert (=> b!621886 m!889499))

(assert (=> b!621886 m!889999))

(declare-fun m!890029 () Bool)

(assert (=> b!621886 m!890029))

(declare-fun m!890031 () Bool)

(assert (=> b!621886 m!890031))

(declare-fun m!890033 () Bool)

(assert (=> b!621886 m!890033))

(assert (=> b!621886 m!890005))

(assert (=> b!621886 m!890033))

(declare-fun m!890035 () Bool)

(assert (=> b!621886 m!890035))

(declare-fun m!890037 () Bool)

(assert (=> b!621886 m!890037))

(assert (=> d!217466 d!217696))

(declare-fun d!217698 () Bool)

(assert (=> d!217698 true))

(declare-fun lambda!16322 () Int)

(declare-fun order!4949 () Int)

(declare-fun order!4947 () Int)

(declare-fun dynLambda!3617 (Int Int) Int)

(declare-fun dynLambda!3618 (Int Int) Int)

(assert (=> d!217698 (< (dynLambda!3617 order!4947 (toValue!2212 (transformation!1291 (rule!2085 (h!11760 producedTokens!8))))) (dynLambda!3618 order!4949 lambda!16322))))

(declare-fun Forall2!241 (Int) Bool)

(assert (=> d!217698 (= (equivClasses!504 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (toValue!2212 (transformation!1291 (rule!2085 (h!11760 producedTokens!8))))) (Forall2!241 lambda!16322))))

(declare-fun bs!72056 () Bool)

(assert (= bs!72056 d!217698))

(declare-fun m!890039 () Bool)

(assert (=> bs!72056 m!890039))

(assert (=> b!621396 d!217698))

(declare-fun d!217700 () Bool)

(assert (=> d!217700 (= (list!2665 (_2!3843 lt!265687)) (list!2669 (c!114228 (_2!3843 lt!265687))))))

(declare-fun bs!72057 () Bool)

(assert (= bs!72057 d!217700))

(declare-fun m!890041 () Bool)

(assert (=> bs!72057 m!890041))

(assert (=> b!621496 d!217700))

(declare-fun d!217702 () Bool)

(declare-fun e!377484 () Bool)

(assert (=> d!217702 e!377484))

(declare-fun c!114361 () Bool)

(declare-fun lt!266052 () tuple2!7160)

(assert (=> d!217702 (= c!114361 (> (size!4951 (_1!3844 lt!266052)) 0))))

(declare-fun e!377486 () tuple2!7160)

(assert (=> d!217702 (= lt!266052 e!377486)))

(declare-fun c!114360 () Bool)

(declare-fun lt!266050 () Option!1631)

(assert (=> d!217702 (= c!114360 ((_ is Some!1630) lt!266050))))

(assert (=> d!217702 (= lt!266050 (maxPrefix!861 thiss!25571 rules!3735 (list!2665 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))))))))

(assert (=> d!217702 (= (lexList!313 thiss!25571 rules!3735 (list!2665 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))))) lt!266052)))

(declare-fun b!621910 () Bool)

(declare-fun e!377485 () Bool)

(declare-fun isEmpty!4569 (List!6369) Bool)

(assert (=> b!621910 (= e!377485 (not (isEmpty!4569 (_1!3844 lt!266052))))))

(declare-fun b!621911 () Bool)

(declare-fun lt!266051 () tuple2!7160)

(assert (=> b!621911 (= e!377486 (tuple2!7161 (Cons!6359 (_1!3845 (v!16559 lt!266050)) (_1!3844 lt!266051)) (_2!3844 lt!266051)))))

(assert (=> b!621911 (= lt!266051 (lexList!313 thiss!25571 rules!3735 (_2!3845 (v!16559 lt!266050))))))

(declare-fun b!621912 () Bool)

(assert (=> b!621912 (= e!377484 (= (_2!3844 lt!266052) (list!2665 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))))))))

(declare-fun b!621913 () Bool)

(assert (=> b!621913 (= e!377486 (tuple2!7161 Nil!6359 (list!2665 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))))))))

(declare-fun b!621914 () Bool)

(assert (=> b!621914 (= e!377484 e!377485)))

(declare-fun res!270660 () Bool)

(assert (=> b!621914 (= res!270660 (< (size!4957 (_2!3844 lt!266052)) (size!4957 (list!2665 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206))))))))))

(assert (=> b!621914 (=> (not res!270660) (not e!377485))))

(assert (= (and d!217702 c!114360) b!621911))

(assert (= (and d!217702 (not c!114360)) b!621913))

(assert (= (and d!217702 c!114361) b!621914))

(assert (= (and d!217702 (not c!114361)) b!621912))

(assert (= (and b!621914 res!270660) b!621910))

(declare-fun m!890043 () Bool)

(assert (=> d!217702 m!890043))

(assert (=> d!217702 m!889311))

(declare-fun m!890045 () Bool)

(assert (=> d!217702 m!890045))

(declare-fun m!890047 () Bool)

(assert (=> b!621910 m!890047))

(declare-fun m!890049 () Bool)

(assert (=> b!621911 m!890049))

(declare-fun m!890051 () Bool)

(assert (=> b!621914 m!890051))

(assert (=> b!621914 m!889311))

(declare-fun m!890053 () Bool)

(assert (=> b!621914 m!890053))

(assert (=> b!621496 d!217702))

(declare-fun d!217704 () Bool)

(assert (=> d!217704 (= (list!2665 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206))))) (list!2669 (c!114228 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))))))))

(declare-fun bs!72058 () Bool)

(assert (= bs!72058 d!217704))

(declare-fun m!890055 () Bool)

(assert (=> bs!72058 m!890055))

(assert (=> b!621496 d!217704))

(declare-fun d!217706 () Bool)

(declare-fun c!114364 () Bool)

(assert (=> d!217706 (= c!114364 ((_ is Node!2023) (c!114228 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8))))))))

(declare-fun e!377495 () Bool)

(assert (=> d!217706 (= (inv!8043 (c!114228 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8))))) e!377495)))

(declare-fun b!621933 () Bool)

(declare-fun inv!8047 (Conc!2023) Bool)

(assert (=> b!621933 (= e!377495 (inv!8047 (c!114228 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8))))))))

(declare-fun b!621934 () Bool)

(declare-fun e!377496 () Bool)

(assert (=> b!621934 (= e!377495 e!377496)))

(declare-fun res!270675 () Bool)

(assert (=> b!621934 (= res!270675 (not ((_ is Leaf!3177) (c!114228 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8)))))))))

(assert (=> b!621934 (=> res!270675 e!377496)))

(declare-fun b!621935 () Bool)

(declare-fun inv!8048 (Conc!2023) Bool)

(assert (=> b!621935 (= e!377496 (inv!8048 (c!114228 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8))))))))

(assert (= (and d!217706 c!114364) b!621933))

(assert (= (and d!217706 (not c!114364)) b!621934))

(assert (= (and b!621934 (not res!270675)) b!621935))

(declare-fun m!890057 () Bool)

(assert (=> b!621933 m!890057))

(declare-fun m!890059 () Bool)

(assert (=> b!621935 m!890059))

(assert (=> b!621491 d!217706))

(declare-fun d!217708 () Bool)

(declare-fun lt!266057 () Int)

(assert (=> d!217708 (= lt!266057 (size!4957 (list!2665 (_2!3843 lt!265687))))))

(declare-fun size!4961 (Conc!2023) Int)

(assert (=> d!217708 (= lt!266057 (size!4961 (c!114228 (_2!3843 lt!265687))))))

(assert (=> d!217708 (= (size!4956 (_2!3843 lt!265687)) lt!266057)))

(declare-fun bs!72059 () Bool)

(assert (= bs!72059 d!217708))

(assert (=> bs!72059 m!889309))

(assert (=> bs!72059 m!889309))

(declare-fun m!890061 () Bool)

(assert (=> bs!72059 m!890061))

(declare-fun m!890063 () Bool)

(assert (=> bs!72059 m!890063))

(assert (=> b!621495 d!217708))

(declare-fun lt!266058 () Int)

(declare-fun d!217710 () Bool)

(assert (=> d!217710 (= lt!266058 (size!4957 (list!2665 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))))))))

(assert (=> d!217710 (= lt!266058 (size!4961 (c!114228 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206)))))))))

(assert (=> d!217710 (= (size!4956 (seqFromList!1446 (_2!3845 (get!2423 (maxPrefix!861 thiss!25571 rules!3735 input!3206))))) lt!266058)))

(declare-fun bs!72060 () Bool)

(assert (= bs!72060 d!217710))

(assert (=> bs!72060 m!889097))

(assert (=> bs!72060 m!889311))

(assert (=> bs!72060 m!889311))

(assert (=> bs!72060 m!890053))

(declare-fun m!890065 () Bool)

(assert (=> bs!72060 m!890065))

(assert (=> b!621495 d!217710))

(declare-fun d!217712 () Bool)

(assert (=> d!217712 (= (list!2664 (_1!3843 lt!265687)) (list!2668 (c!114229 (_1!3843 lt!265687))))))

(declare-fun bs!72061 () Bool)

(assert (= bs!72061 d!217712))

(declare-fun m!890067 () Bool)

(assert (=> bs!72061 m!890067))

(assert (=> b!621493 d!217712))

(assert (=> b!621493 d!217702))

(assert (=> b!621493 d!217704))

(declare-fun d!217714 () Bool)

(declare-fun lt!266059 () Int)

(assert (=> d!217714 (>= lt!266059 0)))

(declare-fun e!377497 () Int)

(assert (=> d!217714 (= lt!266059 e!377497)))

(declare-fun c!114365 () Bool)

(assert (=> d!217714 (= c!114365 ((_ is Nil!6358) (originalCharacters!1324 (h!11760 producedTokens!8))))))

(assert (=> d!217714 (= (size!4957 (originalCharacters!1324 (h!11760 producedTokens!8))) lt!266059)))

(declare-fun b!621936 () Bool)

(assert (=> b!621936 (= e!377497 0)))

(declare-fun b!621937 () Bool)

(assert (=> b!621937 (= e!377497 (+ 1 (size!4957 (t!81775 (originalCharacters!1324 (h!11760 producedTokens!8))))))))

(assert (= (and d!217714 c!114365) b!621936))

(assert (= (and d!217714 (not c!114365)) b!621937))

(declare-fun m!890069 () Bool)

(assert (=> b!621937 m!890069))

(assert (=> b!621486 d!217714))

(declare-fun d!217716 () Bool)

(assert (=> d!217716 (= (isEmpty!4565 (originalCharacters!1324 (h!11760 producedTokens!8))) ((_ is Nil!6358) (originalCharacters!1324 (h!11760 producedTokens!8))))))

(assert (=> d!217526 d!217716))

(declare-fun d!217718 () Bool)

(declare-fun lt!266067 () Bool)

(assert (=> d!217718 (= lt!266067 (isEmpty!4569 (list!2664 (_1!3843 lt!265687))))))

(declare-fun isEmpty!4570 (Conc!2024) Bool)

(assert (=> d!217718 (= lt!266067 (isEmpty!4570 (c!114229 (_1!3843 lt!265687))))))

(assert (=> d!217718 (= (isEmpty!4564 (_1!3843 lt!265687)) lt!266067)))

(declare-fun bs!72062 () Bool)

(assert (= bs!72062 d!217718))

(assert (=> bs!72062 m!889315))

(assert (=> bs!72062 m!889315))

(declare-fun m!890091 () Bool)

(assert (=> bs!72062 m!890091))

(declare-fun m!890093 () Bool)

(assert (=> bs!72062 m!890093))

(assert (=> b!621494 d!217718))

(declare-fun d!217720 () Bool)

(assert (=> d!217720 (= (list!2665 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8)))) (list!2669 (c!114228 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8))))))))

(declare-fun bs!72063 () Bool)

(assert (= bs!72063 d!217720))

(declare-fun m!890099 () Bool)

(assert (=> bs!72063 m!890099))

(assert (=> b!621485 d!217720))

(declare-fun d!217722 () Bool)

(assert (=> d!217722 (= (list!2665 (_2!3843 lt!265668)) (list!2669 (c!114228 (_2!3843 lt!265668))))))

(declare-fun bs!72064 () Bool)

(assert (= bs!72064 d!217722))

(declare-fun m!890105 () Bool)

(assert (=> bs!72064 m!890105))

(assert (=> b!621375 d!217722))

(declare-fun d!217724 () Bool)

(declare-fun e!377502 () Bool)

(assert (=> d!217724 e!377502))

(declare-fun c!114368 () Bool)

(declare-fun lt!266070 () tuple2!7160)

(assert (=> d!217724 (= c!114368 (> (size!4951 (_1!3844 lt!266070)) 0))))

(declare-fun e!377504 () tuple2!7160)

(assert (=> d!217724 (= lt!266070 e!377504)))

(declare-fun c!114367 () Bool)

(declare-fun lt!266068 () Option!1631)

(assert (=> d!217724 (= c!114367 ((_ is Some!1630) lt!266068))))

(assert (=> d!217724 (= lt!266068 (maxPrefix!861 thiss!25571 rules!3735 (list!2665 (seqFromList!1446 input!3206))))))

(assert (=> d!217724 (= (lexList!313 thiss!25571 rules!3735 (list!2665 (seqFromList!1446 input!3206))) lt!266070)))

(declare-fun b!621947 () Bool)

(declare-fun e!377503 () Bool)

(assert (=> b!621947 (= e!377503 (not (isEmpty!4569 (_1!3844 lt!266070))))))

(declare-fun b!621948 () Bool)

(declare-fun lt!266069 () tuple2!7160)

(assert (=> b!621948 (= e!377504 (tuple2!7161 (Cons!6359 (_1!3845 (v!16559 lt!266068)) (_1!3844 lt!266069)) (_2!3844 lt!266069)))))

(assert (=> b!621948 (= lt!266069 (lexList!313 thiss!25571 rules!3735 (_2!3845 (v!16559 lt!266068))))))

(declare-fun b!621949 () Bool)

(assert (=> b!621949 (= e!377502 (= (_2!3844 lt!266070) (list!2665 (seqFromList!1446 input!3206))))))

(declare-fun b!621950 () Bool)

(assert (=> b!621950 (= e!377504 (tuple2!7161 Nil!6359 (list!2665 (seqFromList!1446 input!3206))))))

(declare-fun b!621951 () Bool)

(assert (=> b!621951 (= e!377502 e!377503)))

(declare-fun res!270683 () Bool)

(assert (=> b!621951 (= res!270683 (< (size!4957 (_2!3844 lt!266070)) (size!4957 (list!2665 (seqFromList!1446 input!3206)))))))

(assert (=> b!621951 (=> (not res!270683) (not e!377503))))

(assert (= (and d!217724 c!114367) b!621948))

(assert (= (and d!217724 (not c!114367)) b!621950))

(assert (= (and d!217724 c!114368) b!621951))

(assert (= (and d!217724 (not c!114368)) b!621949))

(assert (= (and b!621951 res!270683) b!621947))

(declare-fun m!890121 () Bool)

(assert (=> d!217724 m!890121))

(assert (=> d!217724 m!889207))

(declare-fun m!890125 () Bool)

(assert (=> d!217724 m!890125))

(declare-fun m!890127 () Bool)

(assert (=> b!621947 m!890127))

(declare-fun m!890129 () Bool)

(assert (=> b!621948 m!890129))

(declare-fun m!890131 () Bool)

(assert (=> b!621951 m!890131))

(assert (=> b!621951 m!889207))

(declare-fun m!890133 () Bool)

(assert (=> b!621951 m!890133))

(assert (=> b!621375 d!217724))

(declare-fun d!217728 () Bool)

(assert (=> d!217728 (= (list!2665 (seqFromList!1446 input!3206)) (list!2669 (c!114228 (seqFromList!1446 input!3206))))))

(declare-fun bs!72065 () Bool)

(assert (= bs!72065 d!217728))

(declare-fun m!890135 () Bool)

(assert (=> bs!72065 m!890135))

(assert (=> b!621375 d!217728))

(declare-fun bs!72067 () Bool)

(declare-fun d!217730 () Bool)

(assert (= bs!72067 (and d!217730 d!217698)))

(declare-fun lambda!16324 () Int)

(assert (=> bs!72067 (= (= (toValue!2212 (transformation!1291 (h!11761 rules!3735))) (toValue!2212 (transformation!1291 (rule!2085 (h!11760 producedTokens!8))))) (= lambda!16324 lambda!16322))))

(assert (=> d!217730 true))

(assert (=> d!217730 (< (dynLambda!3617 order!4947 (toValue!2212 (transformation!1291 (h!11761 rules!3735)))) (dynLambda!3618 order!4949 lambda!16324))))

(assert (=> d!217730 (= (equivClasses!504 (toChars!2071 (transformation!1291 (h!11761 rules!3735))) (toValue!2212 (transformation!1291 (h!11761 rules!3735)))) (Forall2!241 lambda!16324))))

(declare-fun bs!72069 () Bool)

(assert (= bs!72069 d!217730))

(declare-fun m!890139 () Bool)

(assert (=> bs!72069 m!890139))

(assert (=> b!621409 d!217730))

(declare-fun d!217734 () Bool)

(assert (=> d!217734 true))

(declare-fun order!4953 () Int)

(declare-fun order!4951 () Int)

(declare-fun lambda!16327 () Int)

(declare-fun dynLambda!3619 (Int Int) Int)

(declare-fun dynLambda!3620 (Int Int) Int)

(assert (=> d!217734 (< (dynLambda!3619 order!4951 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8))))) (dynLambda!3620 order!4953 lambda!16327))))

(assert (=> d!217734 true))

(assert (=> d!217734 (< (dynLambda!3617 order!4947 (toValue!2212 (transformation!1291 (rule!2085 (h!11760 producedTokens!8))))) (dynLambda!3620 order!4953 lambda!16327))))

(declare-fun Forall!315 (Int) Bool)

(assert (=> d!217734 (= (semiInverseModEq!521 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (toValue!2212 (transformation!1291 (rule!2085 (h!11760 producedTokens!8))))) (Forall!315 lambda!16327))))

(declare-fun bs!72071 () Bool)

(assert (= bs!72071 d!217734))

(declare-fun m!890159 () Bool)

(assert (=> bs!72071 m!890159))

(assert (=> d!217510 d!217734))

(declare-fun d!217738 () Bool)

(declare-fun e!377509 () Bool)

(assert (=> d!217738 e!377509))

(declare-fun res!270685 () Bool)

(assert (=> d!217738 (=> (not res!270685) (not e!377509))))

(declare-fun lt!266106 () BalanceConc!4054)

(assert (=> d!217738 (= res!270685 (= (list!2665 lt!266106) input!3206))))

(assert (=> d!217738 (= lt!266106 (BalanceConc!4055 (fromList!290 input!3206)))))

(assert (=> d!217738 (= (fromListB!630 input!3206) lt!266106)))

(declare-fun b!621963 () Bool)

(assert (=> b!621963 (= e!377509 (isBalanced!540 (fromList!290 input!3206)))))

(assert (= (and d!217738 res!270685) b!621963))

(declare-fun m!890177 () Bool)

(assert (=> d!217738 m!890177))

(declare-fun m!890181 () Bool)

(assert (=> d!217738 m!890181))

(assert (=> b!621963 m!890181))

(assert (=> b!621963 m!890181))

(declare-fun m!890185 () Bool)

(assert (=> b!621963 m!890185))

(assert (=> d!217504 d!217738))

(declare-fun d!217740 () Bool)

(declare-fun lt!266107 () Int)

(assert (=> d!217740 (= lt!266107 (size!4957 (list!2665 (_2!3843 lt!265668))))))

(assert (=> d!217740 (= lt!266107 (size!4961 (c!114228 (_2!3843 lt!265668))))))

(assert (=> d!217740 (= (size!4956 (_2!3843 lt!265668)) lt!266107)))

(declare-fun bs!72072 () Bool)

(assert (= bs!72072 d!217740))

(assert (=> bs!72072 m!889205))

(assert (=> bs!72072 m!889205))

(declare-fun m!890201 () Bool)

(assert (=> bs!72072 m!890201))

(declare-fun m!890205 () Bool)

(assert (=> bs!72072 m!890205))

(assert (=> b!621374 d!217740))

(declare-fun d!217742 () Bool)

(declare-fun lt!266108 () Int)

(assert (=> d!217742 (= lt!266108 (size!4957 (list!2665 (seqFromList!1446 input!3206))))))

(assert (=> d!217742 (= lt!266108 (size!4961 (c!114228 (seqFromList!1446 input!3206))))))

(assert (=> d!217742 (= (size!4956 (seqFromList!1446 input!3206)) lt!266108)))

(declare-fun bs!72073 () Bool)

(assert (= bs!72073 d!217742))

(assert (=> bs!72073 m!889119))

(assert (=> bs!72073 m!889207))

(assert (=> bs!72073 m!889207))

(assert (=> bs!72073 m!890133))

(declare-fun m!890213 () Bool)

(assert (=> bs!72073 m!890213))

(assert (=> b!621374 d!217742))

(declare-fun d!217744 () Bool)

(assert (=> d!217744 (= (isEmpty!4566 lt!265702) (not ((_ is Some!1630) lt!265702)))))

(assert (=> d!217538 d!217744))

(declare-fun b!621982 () Bool)

(declare-fun e!377523 () Bool)

(declare-fun tail!846 (List!6368) List!6368)

(assert (=> b!621982 (= e!377523 (isPrefix!909 (tail!846 input!3206) (tail!846 input!3206)))))

(declare-fun b!621980 () Bool)

(declare-fun e!377524 () Bool)

(assert (=> b!621980 (= e!377524 e!377523)))

(declare-fun res!270702 () Bool)

(assert (=> b!621980 (=> (not res!270702) (not e!377523))))

(assert (=> b!621980 (= res!270702 (not ((_ is Nil!6358) input!3206)))))

(declare-fun d!217746 () Bool)

(declare-fun e!377522 () Bool)

(assert (=> d!217746 e!377522))

(declare-fun res!270704 () Bool)

(assert (=> d!217746 (=> res!270704 e!377522)))

(declare-fun lt!266113 () Bool)

(assert (=> d!217746 (= res!270704 (not lt!266113))))

(assert (=> d!217746 (= lt!266113 e!377524)))

(declare-fun res!270705 () Bool)

(assert (=> d!217746 (=> res!270705 e!377524)))

(assert (=> d!217746 (= res!270705 ((_ is Nil!6358) input!3206))))

(assert (=> d!217746 (= (isPrefix!909 input!3206 input!3206) lt!266113)))

(declare-fun b!621981 () Bool)

(declare-fun res!270703 () Bool)

(assert (=> b!621981 (=> (not res!270703) (not e!377523))))

(declare-fun head!1315 (List!6368) C!4176)

(assert (=> b!621981 (= res!270703 (= (head!1315 input!3206) (head!1315 input!3206)))))

(declare-fun b!621983 () Bool)

(assert (=> b!621983 (= e!377522 (>= (size!4957 input!3206) (size!4957 input!3206)))))

(assert (= (and d!217746 (not res!270705)) b!621980))

(assert (= (and b!621980 res!270702) b!621981))

(assert (= (and b!621981 res!270703) b!621982))

(assert (= (and d!217746 (not res!270704)) b!621983))

(declare-fun m!890245 () Bool)

(assert (=> b!621982 m!890245))

(assert (=> b!621982 m!890245))

(assert (=> b!621982 m!890245))

(assert (=> b!621982 m!890245))

(declare-fun m!890247 () Bool)

(assert (=> b!621982 m!890247))

(declare-fun m!890249 () Bool)

(assert (=> b!621981 m!890249))

(assert (=> b!621981 m!890249))

(assert (=> b!621983 m!889329))

(assert (=> b!621983 m!889329))

(assert (=> d!217538 d!217746))

(declare-fun d!217752 () Bool)

(assert (=> d!217752 (isPrefix!909 input!3206 input!3206)))

(declare-fun lt!266117 () Unit!11454)

(declare-fun choose!4541 (List!6368 List!6368) Unit!11454)

(assert (=> d!217752 (= lt!266117 (choose!4541 input!3206 input!3206))))

(assert (=> d!217752 (= (lemmaIsPrefixRefl!622 input!3206 input!3206) lt!266117)))

(declare-fun bs!72074 () Bool)

(assert (= bs!72074 d!217752))

(assert (=> bs!72074 m!889353))

(declare-fun m!890257 () Bool)

(assert (=> bs!72074 m!890257))

(assert (=> d!217538 d!217752))

(declare-fun bs!72076 () Bool)

(declare-fun d!217756 () Bool)

(assert (= bs!72076 (and d!217756 d!217574)))

(declare-fun lambda!16332 () Int)

(assert (=> bs!72076 (= lambda!16332 lambda!16315)))

(assert (=> d!217756 true))

(declare-fun lt!266125 () Bool)

(assert (=> d!217756 (= lt!266125 (forall!1575 rules!3735 lambda!16332))))

(declare-fun e!377537 () Bool)

(assert (=> d!217756 (= lt!266125 e!377537)))

(declare-fun res!270718 () Bool)

(assert (=> d!217756 (=> res!270718 e!377537)))

(assert (=> d!217756 (= res!270718 (not ((_ is Cons!6360) rules!3735)))))

(assert (=> d!217756 (= (rulesValidInductive!498 thiss!25571 rules!3735) lt!266125)))

(declare-fun b!621996 () Bool)

(declare-fun e!377536 () Bool)

(assert (=> b!621996 (= e!377537 e!377536)))

(declare-fun res!270719 () Bool)

(assert (=> b!621996 (=> (not res!270719) (not e!377536))))

(assert (=> b!621996 (= res!270719 (ruleValid!457 thiss!25571 (h!11761 rules!3735)))))

(declare-fun b!621997 () Bool)

(assert (=> b!621997 (= e!377536 (rulesValidInductive!498 thiss!25571 (t!81777 rules!3735)))))

(assert (= (and d!217756 (not res!270718)) b!621996))

(assert (= (and b!621996 res!270719) b!621997))

(declare-fun m!890261 () Bool)

(assert (=> d!217756 m!890261))

(assert (=> b!621996 m!889919))

(assert (=> b!621997 m!889553))

(assert (=> d!217538 d!217756))

(declare-fun d!217760 () Bool)

(assert (=> d!217760 (= (inv!8036 (tag!1553 (h!11761 (t!81777 rules!3735)))) (= (mod (str.len (value!41656 (tag!1553 (h!11761 (t!81777 rules!3735))))) 2) 0))))

(assert (=> b!621572 d!217760))

(declare-fun d!217762 () Bool)

(declare-fun res!270720 () Bool)

(declare-fun e!377538 () Bool)

(assert (=> d!217762 (=> (not res!270720) (not e!377538))))

(assert (=> d!217762 (= res!270720 (semiInverseModEq!521 (toChars!2071 (transformation!1291 (h!11761 (t!81777 rules!3735)))) (toValue!2212 (transformation!1291 (h!11761 (t!81777 rules!3735))))))))

(assert (=> d!217762 (= (inv!8040 (transformation!1291 (h!11761 (t!81777 rules!3735)))) e!377538)))

(declare-fun b!621998 () Bool)

(assert (=> b!621998 (= e!377538 (equivClasses!504 (toChars!2071 (transformation!1291 (h!11761 (t!81777 rules!3735)))) (toValue!2212 (transformation!1291 (h!11761 (t!81777 rules!3735))))))))

(assert (= (and d!217762 res!270720) b!621998))

(declare-fun m!890263 () Bool)

(assert (=> d!217762 m!890263))

(declare-fun m!890265 () Bool)

(assert (=> b!621998 m!890265))

(assert (=> b!621572 d!217762))

(declare-fun d!217764 () Bool)

(assert (=> d!217764 (= (list!2664 (_1!3843 lt!265668)) (list!2668 (c!114229 (_1!3843 lt!265668))))))

(declare-fun bs!72077 () Bool)

(assert (= bs!72077 d!217764))

(declare-fun m!890267 () Bool)

(assert (=> bs!72077 m!890267))

(assert (=> b!621372 d!217764))

(assert (=> b!621372 d!217724))

(assert (=> b!621372 d!217728))

(declare-fun d!217766 () Bool)

(declare-fun c!114376 () Bool)

(assert (=> d!217766 (= c!114376 ((_ is Empty!2024) (c!114229 (_1!3843 lt!265657))))))

(declare-fun e!377554 () List!6369)

(assert (=> d!217766 (= (list!2668 (c!114229 (_1!3843 lt!265657))) e!377554)))

(declare-fun b!622024 () Bool)

(declare-fun e!377555 () List!6369)

(declare-fun list!2673 (IArray!4049) List!6369)

(assert (=> b!622024 (= e!377555 (list!2673 (xs!4661 (c!114229 (_1!3843 lt!265657)))))))

(declare-fun b!622025 () Bool)

(assert (=> b!622025 (= e!377555 (++!1760 (list!2668 (left!5039 (c!114229 (_1!3843 lt!265657)))) (list!2668 (right!5369 (c!114229 (_1!3843 lt!265657))))))))

(declare-fun b!622023 () Bool)

(assert (=> b!622023 (= e!377554 e!377555)))

(declare-fun c!114377 () Bool)

(assert (=> b!622023 (= c!114377 ((_ is Leaf!3178) (c!114229 (_1!3843 lt!265657))))))

(declare-fun b!622022 () Bool)

(assert (=> b!622022 (= e!377554 Nil!6359)))

(assert (= (and d!217766 c!114376) b!622022))

(assert (= (and d!217766 (not c!114376)) b!622023))

(assert (= (and b!622023 c!114377) b!622024))

(assert (= (and b!622023 (not c!114377)) b!622025))

(declare-fun m!890283 () Bool)

(assert (=> b!622024 m!890283))

(declare-fun m!890285 () Bool)

(assert (=> b!622025 m!890285))

(declare-fun m!890287 () Bool)

(assert (=> b!622025 m!890287))

(assert (=> b!622025 m!890285))

(assert (=> b!622025 m!890287))

(declare-fun m!890289 () Bool)

(assert (=> b!622025 m!890289))

(assert (=> d!217464 d!217766))

(declare-fun d!217772 () Bool)

(declare-fun lt!266127 () Bool)

(assert (=> d!217772 (= lt!266127 (isEmpty!4569 (list!2664 (_1!3843 lt!265668))))))

(assert (=> d!217772 (= lt!266127 (isEmpty!4570 (c!114229 (_1!3843 lt!265668))))))

(assert (=> d!217772 (= (isEmpty!4564 (_1!3843 lt!265668)) lt!266127)))

(declare-fun bs!72079 () Bool)

(assert (= bs!72079 d!217772))

(assert (=> bs!72079 m!889211))

(assert (=> bs!72079 m!889211))

(declare-fun m!890291 () Bool)

(assert (=> bs!72079 m!890291))

(declare-fun m!890293 () Bool)

(assert (=> bs!72079 m!890293))

(assert (=> b!621373 d!217772))

(assert (=> b!621523 d!217554))

(assert (=> b!621523 d!217556))

(assert (=> b!621523 d!217558))

(declare-fun b!622112 () Bool)

(declare-fun e!377597 () Bool)

(declare-fun derivativeStep!346 (Regex!1625 C!4176) Regex!1625)

(assert (=> b!622112 (= e!377597 (matchR!697 (derivativeStep!346 (regex!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))) (head!1315 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702)))))) (tail!846 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702)))))))))

(declare-fun b!622113 () Bool)

(declare-fun e!377599 () Bool)

(declare-fun lt!266130 () Bool)

(assert (=> b!622113 (= e!377599 (not lt!266130))))

(declare-fun b!622114 () Bool)

(declare-fun res!270744 () Bool)

(declare-fun e!377600 () Bool)

(assert (=> b!622114 (=> res!270744 e!377600)))

(assert (=> b!622114 (= res!270744 (not (isEmpty!4565 (tail!846 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702))))))))))

(declare-fun b!622115 () Bool)

(declare-fun e!377598 () Bool)

(declare-fun e!377595 () Bool)

(assert (=> b!622115 (= e!377598 e!377595)))

(declare-fun res!270741 () Bool)

(assert (=> b!622115 (=> (not res!270741) (not e!377595))))

(assert (=> b!622115 (= res!270741 (not lt!266130))))

(declare-fun b!622116 () Bool)

(declare-fun res!270745 () Bool)

(assert (=> b!622116 (=> res!270745 e!377598)))

(assert (=> b!622116 (= res!270745 (not ((_ is ElementMatch!1625) (regex!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))))))))

(assert (=> b!622116 (= e!377599 e!377598)))

(declare-fun b!622117 () Bool)

(declare-fun res!270740 () Bool)

(declare-fun e!377596 () Bool)

(assert (=> b!622117 (=> (not res!270740) (not e!377596))))

(declare-fun call!41133 () Bool)

(assert (=> b!622117 (= res!270740 (not call!41133))))

(declare-fun b!622118 () Bool)

(assert (=> b!622118 (= e!377596 (= (head!1315 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702))))) (c!114227 (regex!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))))))))

(declare-fun b!622119 () Bool)

(declare-fun res!270746 () Bool)

(assert (=> b!622119 (=> res!270746 e!377598)))

(assert (=> b!622119 (= res!270746 e!377596)))

(declare-fun res!270743 () Bool)

(assert (=> b!622119 (=> (not res!270743) (not e!377596))))

(assert (=> b!622119 (= res!270743 lt!266130)))

(declare-fun b!622120 () Bool)

(declare-fun e!377594 () Bool)

(assert (=> b!622120 (= e!377594 (= lt!266130 call!41133))))

(declare-fun d!217774 () Bool)

(assert (=> d!217774 e!377594))

(declare-fun c!114386 () Bool)

(assert (=> d!217774 (= c!114386 ((_ is EmptyExpr!1625) (regex!1291 (rule!2085 (_1!3845 (get!2423 lt!265702))))))))

(assert (=> d!217774 (= lt!266130 e!377597)))

(declare-fun c!114384 () Bool)

(assert (=> d!217774 (= c!114384 (isEmpty!4565 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702))))))))

(declare-fun validRegex!563 (Regex!1625) Bool)

(assert (=> d!217774 (validRegex!563 (regex!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))))))

(assert (=> d!217774 (= (matchR!697 (regex!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))) (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702))))) lt!266130)))

(declare-fun b!622121 () Bool)

(assert (=> b!622121 (= e!377595 e!377600)))

(declare-fun res!270742 () Bool)

(assert (=> b!622121 (=> res!270742 e!377600)))

(assert (=> b!622121 (= res!270742 call!41133)))

(declare-fun b!622122 () Bool)

(assert (=> b!622122 (= e!377600 (not (= (head!1315 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702))))) (c!114227 (regex!1291 (rule!2085 (_1!3845 (get!2423 lt!265702))))))))))

(declare-fun b!622123 () Bool)

(declare-fun nullable!468 (Regex!1625) Bool)

(assert (=> b!622123 (= e!377597 (nullable!468 (regex!1291 (rule!2085 (_1!3845 (get!2423 lt!265702))))))))

(declare-fun b!622124 () Bool)

(declare-fun res!270747 () Bool)

(assert (=> b!622124 (=> (not res!270747) (not e!377596))))

(assert (=> b!622124 (= res!270747 (isEmpty!4565 (tail!846 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702)))))))))

(declare-fun bm!41128 () Bool)

(assert (=> bm!41128 (= call!41133 (isEmpty!4565 (list!2665 (charsOf!890 (_1!3845 (get!2423 lt!265702))))))))

(declare-fun b!622125 () Bool)

(assert (=> b!622125 (= e!377594 e!377599)))

(declare-fun c!114385 () Bool)

(assert (=> b!622125 (= c!114385 ((_ is EmptyLang!1625) (regex!1291 (rule!2085 (_1!3845 (get!2423 lt!265702))))))))

(assert (= (and d!217774 c!114384) b!622123))

(assert (= (and d!217774 (not c!114384)) b!622112))

(assert (= (and d!217774 c!114386) b!622120))

(assert (= (and d!217774 (not c!114386)) b!622125))

(assert (= (and b!622125 c!114385) b!622113))

(assert (= (and b!622125 (not c!114385)) b!622116))

(assert (= (and b!622116 (not res!270745)) b!622119))

(assert (= (and b!622119 res!270743) b!622117))

(assert (= (and b!622117 res!270740) b!622124))

(assert (= (and b!622124 res!270747) b!622118))

(assert (= (and b!622119 (not res!270746)) b!622115))

(assert (= (and b!622115 res!270741) b!622121))

(assert (= (and b!622121 (not res!270742)) b!622114))

(assert (= (and b!622114 (not res!270744)) b!622122))

(assert (= (or b!622120 b!622117 b!622121) bm!41128))

(assert (=> d!217774 m!889339))

(declare-fun m!890305 () Bool)

(assert (=> d!217774 m!890305))

(declare-fun m!890307 () Bool)

(assert (=> d!217774 m!890307))

(assert (=> b!622118 m!889339))

(declare-fun m!890309 () Bool)

(assert (=> b!622118 m!890309))

(assert (=> b!622114 m!889339))

(declare-fun m!890311 () Bool)

(assert (=> b!622114 m!890311))

(assert (=> b!622114 m!890311))

(declare-fun m!890313 () Bool)

(assert (=> b!622114 m!890313))

(assert (=> b!622124 m!889339))

(assert (=> b!622124 m!890311))

(assert (=> b!622124 m!890311))

(assert (=> b!622124 m!890313))

(declare-fun m!890315 () Bool)

(assert (=> b!622123 m!890315))

(assert (=> bm!41128 m!889339))

(assert (=> bm!41128 m!890305))

(assert (=> b!622112 m!889339))

(assert (=> b!622112 m!890309))

(assert (=> b!622112 m!890309))

(declare-fun m!890317 () Bool)

(assert (=> b!622112 m!890317))

(assert (=> b!622112 m!889339))

(assert (=> b!622112 m!890311))

(assert (=> b!622112 m!890317))

(assert (=> b!622112 m!890311))

(declare-fun m!890319 () Bool)

(assert (=> b!622112 m!890319))

(assert (=> b!622122 m!889339))

(assert (=> b!622122 m!890309))

(assert (=> b!621522 d!217774))

(assert (=> b!621522 d!217558))

(assert (=> b!621522 d!217554))

(assert (=> b!621522 d!217556))

(declare-fun d!217776 () Bool)

(declare-fun c!114387 () Bool)

(assert (=> d!217776 (= c!114387 ((_ is Empty!2024) (c!114229 (_1!3843 lt!265658))))))

(declare-fun e!377601 () List!6369)

(assert (=> d!217776 (= (list!2668 (c!114229 (_1!3843 lt!265658))) e!377601)))

(declare-fun b!622128 () Bool)

(declare-fun e!377602 () List!6369)

(assert (=> b!622128 (= e!377602 (list!2673 (xs!4661 (c!114229 (_1!3843 lt!265658)))))))

(declare-fun b!622129 () Bool)

(assert (=> b!622129 (= e!377602 (++!1760 (list!2668 (left!5039 (c!114229 (_1!3843 lt!265658)))) (list!2668 (right!5369 (c!114229 (_1!3843 lt!265658))))))))

(declare-fun b!622127 () Bool)

(assert (=> b!622127 (= e!377601 e!377602)))

(declare-fun c!114388 () Bool)

(assert (=> b!622127 (= c!114388 ((_ is Leaf!3178) (c!114229 (_1!3843 lt!265658))))))

(declare-fun b!622126 () Bool)

(assert (=> b!622126 (= e!377601 Nil!6359)))

(assert (= (and d!217776 c!114387) b!622126))

(assert (= (and d!217776 (not c!114387)) b!622127))

(assert (= (and b!622127 c!114388) b!622128))

(assert (= (and b!622127 (not c!114388)) b!622129))

(declare-fun m!890321 () Bool)

(assert (=> b!622128 m!890321))

(declare-fun m!890323 () Bool)

(assert (=> b!622129 m!890323))

(declare-fun m!890325 () Bool)

(assert (=> b!622129 m!890325))

(assert (=> b!622129 m!890323))

(assert (=> b!622129 m!890325))

(declare-fun m!890327 () Bool)

(assert (=> b!622129 m!890327))

(assert (=> d!217542 d!217776))

(declare-fun bs!72080 () Bool)

(declare-fun d!217778 () Bool)

(assert (= bs!72080 (and d!217778 d!217734)))

(declare-fun lambda!16334 () Int)

(assert (=> bs!72080 (= (and (= (toChars!2071 (transformation!1291 (h!11761 rules!3735))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8))))) (= (toValue!2212 (transformation!1291 (h!11761 rules!3735))) (toValue!2212 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))))) (= lambda!16334 lambda!16327))))

(assert (=> d!217778 true))

(assert (=> d!217778 (< (dynLambda!3619 order!4951 (toChars!2071 (transformation!1291 (h!11761 rules!3735)))) (dynLambda!3620 order!4953 lambda!16334))))

(assert (=> d!217778 true))

(assert (=> d!217778 (< (dynLambda!3617 order!4947 (toValue!2212 (transformation!1291 (h!11761 rules!3735)))) (dynLambda!3620 order!4953 lambda!16334))))

(assert (=> d!217778 (= (semiInverseModEq!521 (toChars!2071 (transformation!1291 (h!11761 rules!3735))) (toValue!2212 (transformation!1291 (h!11761 rules!3735)))) (Forall!315 lambda!16334))))

(declare-fun bs!72081 () Bool)

(assert (= bs!72081 d!217778))

(declare-fun m!890329 () Bool)

(assert (=> bs!72081 m!890329))

(assert (=> d!217516 d!217778))

(declare-fun d!217780 () Bool)

(declare-fun charsToBigInt!0 (List!6367 Int) Int)

(assert (=> d!217780 (= (inv!15 (value!41657 (h!11760 producedTokens!8))) (= (charsToBigInt!0 (text!9654 (value!41657 (h!11760 producedTokens!8))) 0) (value!41652 (value!41657 (h!11760 producedTokens!8)))))))

(declare-fun bs!72082 () Bool)

(assert (= bs!72082 d!217780))

(declare-fun m!890331 () Bool)

(assert (=> bs!72082 m!890331))

(assert (=> b!621480 d!217780))

(assert (=> b!621521 d!217558))

(declare-fun d!217782 () Bool)

(declare-fun dynLambda!3621 (Int BalanceConc!4054) TokenValue!1315)

(assert (=> d!217782 (= (apply!1511 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))) (seqFromList!1446 (originalCharacters!1324 (_1!3845 (get!2423 lt!265702))))) (dynLambda!3621 (toValue!2212 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702))))) (seqFromList!1446 (originalCharacters!1324 (_1!3845 (get!2423 lt!265702))))))))

(declare-fun b_lambda!24597 () Bool)

(assert (=> (not b_lambda!24597) (not d!217782)))

(declare-fun tb!53999 () Bool)

(declare-fun t!81857 () Bool)

(assert (=> (and b!621291 (= (toValue!2212 (transformation!1291 (h!11761 rules!3735))) (toValue!2212 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))))) t!81857) tb!53999))

(declare-fun result!60982 () Bool)

(assert (=> tb!53999 (= result!60982 (inv!21 (dynLambda!3621 (toValue!2212 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702))))) (seqFromList!1446 (originalCharacters!1324 (_1!3845 (get!2423 lt!265702)))))))))

(declare-fun m!890333 () Bool)

(assert (=> tb!53999 m!890333))

(assert (=> d!217782 t!81857))

(declare-fun b_and!61811 () Bool)

(assert (= b_and!61731 (and (=> t!81857 result!60982) b_and!61811)))

(declare-fun t!81859 () Bool)

(declare-fun tb!54001 () Bool)

(assert (=> (and b!621289 (= (toValue!2212 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (toValue!2212 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))))) t!81859) tb!54001))

(declare-fun result!60986 () Bool)

(assert (= result!60986 result!60982))

(assert (=> d!217782 t!81859))

(declare-fun b_and!61813 () Bool)

(assert (= b_and!61735 (and (=> t!81859 result!60986) b_and!61813)))

(declare-fun t!81861 () Bool)

(declare-fun tb!54003 () Bool)

(assert (=> (and b!621562 (= (toValue!2212 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))) (toValue!2212 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))))) t!81861) tb!54003))

(declare-fun result!60988 () Bool)

(assert (= result!60988 result!60982))

(assert (=> d!217782 t!81861))

(declare-fun b_and!61815 () Bool)

(assert (= b_and!61755 (and (=> t!81861 result!60988) b_and!61815)))

(declare-fun tb!54005 () Bool)

(declare-fun t!81863 () Bool)

(assert (=> (and b!621573 (= (toValue!2212 (transformation!1291 (h!11761 (t!81777 rules!3735)))) (toValue!2212 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))))) t!81863) tb!54005))

(declare-fun result!60990 () Bool)

(assert (= result!60990 result!60982))

(assert (=> d!217782 t!81863))

(declare-fun b_and!61817 () Bool)

(assert (= b_and!61759 (and (=> t!81863 result!60990) b_and!61817)))

(assert (=> d!217782 m!889345))

(declare-fun m!890335 () Bool)

(assert (=> d!217782 m!890335))

(assert (=> b!621521 d!217782))

(declare-fun d!217784 () Bool)

(assert (=> d!217784 (= (seqFromList!1446 (originalCharacters!1324 (_1!3845 (get!2423 lt!265702)))) (fromListB!630 (originalCharacters!1324 (_1!3845 (get!2423 lt!265702)))))))

(declare-fun bs!72083 () Bool)

(assert (= bs!72083 d!217784))

(declare-fun m!890337 () Bool)

(assert (=> bs!72083 m!890337))

(assert (=> b!621521 d!217784))

(declare-fun d!217786 () Bool)

(declare-fun lt!266133 () Bool)

(declare-fun content!1151 (List!6370) (InoxSet Rule!2382))

(assert (=> d!217786 (= lt!266133 (select (content!1151 rules!3735) (rule!2085 (_1!3845 (get!2423 lt!265702)))))))

(declare-fun e!377610 () Bool)

(assert (=> d!217786 (= lt!266133 e!377610)))

(declare-fun res!270753 () Bool)

(assert (=> d!217786 (=> (not res!270753) (not e!377610))))

(assert (=> d!217786 (= res!270753 ((_ is Cons!6360) rules!3735))))

(assert (=> d!217786 (= (contains!1500 rules!3735 (rule!2085 (_1!3845 (get!2423 lt!265702)))) lt!266133)))

(declare-fun b!622136 () Bool)

(declare-fun e!377611 () Bool)

(assert (=> b!622136 (= e!377610 e!377611)))

(declare-fun res!270752 () Bool)

(assert (=> b!622136 (=> res!270752 e!377611)))

(assert (=> b!622136 (= res!270752 (= (h!11761 rules!3735) (rule!2085 (_1!3845 (get!2423 lt!265702)))))))

(declare-fun b!622137 () Bool)

(assert (=> b!622137 (= e!377611 (contains!1500 (t!81777 rules!3735) (rule!2085 (_1!3845 (get!2423 lt!265702)))))))

(assert (= (and d!217786 res!270753) b!622136))

(assert (= (and b!622136 (not res!270752)) b!622137))

(declare-fun m!890339 () Bool)

(assert (=> d!217786 m!890339))

(declare-fun m!890341 () Bool)

(assert (=> d!217786 m!890341))

(declare-fun m!890343 () Bool)

(assert (=> b!622137 m!890343))

(assert (=> b!621519 d!217786))

(assert (=> b!621519 d!217558))

(declare-fun d!217788 () Bool)

(declare-fun lt!266134 () Int)

(assert (=> d!217788 (>= lt!266134 0)))

(declare-fun e!377612 () Int)

(assert (=> d!217788 (= lt!266134 e!377612)))

(declare-fun c!114389 () Bool)

(assert (=> d!217788 (= c!114389 ((_ is Nil!6359) (t!81776 producedTokens!8)))))

(assert (=> d!217788 (= (size!4951 (t!81776 producedTokens!8)) lt!266134)))

(declare-fun b!622138 () Bool)

(assert (=> b!622138 (= e!377612 0)))

(declare-fun b!622139 () Bool)

(assert (=> b!622139 (= e!377612 (+ 1 (size!4951 (t!81776 (t!81776 producedTokens!8)))))))

(assert (= (and d!217788 c!114389) b!622138))

(assert (= (and d!217788 (not c!114389)) b!622139))

(declare-fun m!890345 () Bool)

(assert (=> b!622139 m!890345))

(assert (=> b!621425 d!217788))

(declare-fun d!217790 () Bool)

(declare-fun charsToBigInt!1 (List!6367) Int)

(assert (=> d!217790 (= (inv!17 (value!41657 (h!11760 producedTokens!8))) (= (charsToBigInt!1 (text!9653 (value!41657 (h!11760 producedTokens!8)))) (value!41649 (value!41657 (h!11760 producedTokens!8)))))))

(declare-fun bs!72084 () Bool)

(assert (= bs!72084 d!217790))

(declare-fun m!890347 () Bool)

(assert (=> bs!72084 m!890347))

(assert (=> b!621479 d!217790))

(declare-fun b!622140 () Bool)

(declare-fun e!377613 () Bool)

(declare-fun tp!193100 () Bool)

(assert (=> b!622140 (= e!377613 (and tp_is_empty!3609 tp!193100))))

(assert (=> b!621560 (= tp!193000 e!377613)))

(assert (= (and b!621560 ((_ is Cons!6358) (originalCharacters!1324 (h!11760 (t!81776 producedTokens!8))))) b!622140))

(declare-fun b!622141 () Bool)

(declare-fun e!377614 () Bool)

(declare-fun tp!193101 () Bool)

(assert (=> b!622141 (= e!377614 (and tp_is_empty!3609 tp!193101))))

(assert (=> b!621548 (= tp!192986 e!377614)))

(assert (= (and b!621548 ((_ is Cons!6358) (t!81775 (originalCharacters!1324 (h!11760 producedTokens!8))))) b!622141))

(declare-fun b!622145 () Bool)

(declare-fun b_free!18161 () Bool)

(declare-fun b_next!18177 () Bool)

(assert (=> b!622145 (= b_free!18161 (not b_next!18177))))

(declare-fun tb!54007 () Bool)

(declare-fun t!81865 () Bool)

(assert (=> (and b!622145 (= (toValue!2212 (transformation!1291 (rule!2085 (h!11760 (t!81776 (t!81776 producedTokens!8)))))) (toValue!2212 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))))) t!81865) tb!54007))

(declare-fun result!60992 () Bool)

(assert (= result!60992 result!60982))

(assert (=> d!217782 t!81865))

(declare-fun b_and!61819 () Bool)

(declare-fun tp!193103 () Bool)

(assert (=> b!622145 (= tp!193103 (and (=> t!81865 result!60992) b_and!61819))))

(declare-fun b_free!18163 () Bool)

(declare-fun b_next!18179 () Bool)

(assert (=> b!622145 (= b_free!18163 (not b_next!18179))))

(declare-fun t!81867 () Bool)

(declare-fun tb!54009 () Bool)

(assert (=> (and b!622145 (= (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 (t!81776 producedTokens!8)))))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8))))) t!81867) tb!54009))

(declare-fun result!60994 () Bool)

(assert (= result!60994 result!60904))

(assert (=> b!621485 t!81867))

(declare-fun tb!54011 () Bool)

(declare-fun t!81869 () Bool)

(assert (=> (and b!622145 (= (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 (t!81776 producedTokens!8)))))) (toChars!2071 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))))) t!81869) tb!54011))

(declare-fun result!60996 () Bool)

(assert (= result!60996 result!60930))

(assert (=> d!217556 t!81869))

(declare-fun t!81871 () Bool)

(declare-fun tb!54013 () Bool)

(assert (=> (and b!622145 (= (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 (t!81776 producedTokens!8)))))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8)))))) t!81871) tb!54013))

(declare-fun result!60998 () Bool)

(assert (= result!60998 result!60938))

(assert (=> b!621616 t!81871))

(declare-fun tp!193102 () Bool)

(declare-fun b_and!61821 () Bool)

(assert (=> b!622145 (= tp!193102 (and (=> t!81867 result!60994) (=> t!81869 result!60996) (=> t!81871 result!60998) b_and!61821))))

(declare-fun e!377617 () Bool)

(assert (=> b!622145 (= e!377617 (and tp!193103 tp!193102))))

(declare-fun e!377620 () Bool)

(assert (=> b!621559 (= tp!192999 e!377620)))

(declare-fun tp!193106 () Bool)

(declare-fun b!622144 () Bool)

(declare-fun e!377619 () Bool)

(assert (=> b!622144 (= e!377619 (and tp!193106 (inv!8036 (tag!1553 (rule!2085 (h!11760 (t!81776 (t!81776 producedTokens!8)))))) (inv!8040 (transformation!1291 (rule!2085 (h!11760 (t!81776 (t!81776 producedTokens!8)))))) e!377617))))

(declare-fun e!377618 () Bool)

(declare-fun tp!193105 () Bool)

(declare-fun b!622143 () Bool)

(assert (=> b!622143 (= e!377618 (and (inv!21 (value!41657 (h!11760 (t!81776 (t!81776 producedTokens!8))))) e!377619 tp!193105))))

(declare-fun b!622142 () Bool)

(declare-fun tp!193104 () Bool)

(assert (=> b!622142 (= e!377620 (and (inv!8039 (h!11760 (t!81776 (t!81776 producedTokens!8)))) e!377618 tp!193104))))

(assert (= b!622144 b!622145))

(assert (= b!622143 b!622144))

(assert (= b!622142 b!622143))

(assert (= (and b!621559 ((_ is Cons!6359) (t!81776 (t!81776 producedTokens!8)))) b!622142))

(declare-fun m!890349 () Bool)

(assert (=> b!622144 m!890349))

(declare-fun m!890351 () Bool)

(assert (=> b!622144 m!890351))

(declare-fun m!890353 () Bool)

(assert (=> b!622143 m!890353))

(declare-fun m!890355 () Bool)

(assert (=> b!622142 m!890355))

(declare-fun b!622146 () Bool)

(declare-fun e!377621 () Bool)

(declare-fun tp!193107 () Bool)

(assert (=> b!622146 (= e!377621 (and tp_is_empty!3609 tp!193107))))

(assert (=> b!621543 (= tp!192980 e!377621)))

(assert (= (and b!621543 ((_ is Cons!6358) (t!81775 (t!81775 suffix!1461)))) b!622146))

(declare-fun b!622150 () Bool)

(declare-fun e!377622 () Bool)

(declare-fun tp!193109 () Bool)

(declare-fun tp!193111 () Bool)

(assert (=> b!622150 (= e!377622 (and tp!193109 tp!193111))))

(declare-fun b!622148 () Bool)

(declare-fun tp!193108 () Bool)

(declare-fun tp!193112 () Bool)

(assert (=> b!622148 (= e!377622 (and tp!193108 tp!193112))))

(declare-fun b!622147 () Bool)

(assert (=> b!622147 (= e!377622 tp_is_empty!3609)))

(declare-fun b!622149 () Bool)

(declare-fun tp!193110 () Bool)

(assert (=> b!622149 (= e!377622 tp!193110)))

(assert (=> b!621561 (= tp!193001 e!377622)))

(assert (= (and b!621561 ((_ is ElementMatch!1625) (regex!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8)))))) b!622147))

(assert (= (and b!621561 ((_ is Concat!2941) (regex!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8)))))) b!622148))

(assert (= (and b!621561 ((_ is Star!1625) (regex!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8)))))) b!622149))

(assert (= (and b!621561 ((_ is Union!1625) (regex!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8)))))) b!622150))

(declare-fun b!622154 () Bool)

(declare-fun e!377623 () Bool)

(declare-fun tp!193114 () Bool)

(declare-fun tp!193116 () Bool)

(assert (=> b!622154 (= e!377623 (and tp!193114 tp!193116))))

(declare-fun b!622152 () Bool)

(declare-fun tp!193113 () Bool)

(declare-fun tp!193117 () Bool)

(assert (=> b!622152 (= e!377623 (and tp!193113 tp!193117))))

(declare-fun b!622151 () Bool)

(assert (=> b!622151 (= e!377623 tp_is_empty!3609)))

(declare-fun b!622153 () Bool)

(declare-fun tp!193115 () Bool)

(assert (=> b!622153 (= e!377623 tp!193115)))

(assert (=> b!621547 (= tp!192982 e!377623)))

(assert (= (and b!621547 ((_ is ElementMatch!1625) (regOne!3763 (regex!1291 (h!11761 rules!3735))))) b!622151))

(assert (= (and b!621547 ((_ is Concat!2941) (regOne!3763 (regex!1291 (h!11761 rules!3735))))) b!622152))

(assert (= (and b!621547 ((_ is Star!1625) (regOne!3763 (regex!1291 (h!11761 rules!3735))))) b!622153))

(assert (= (and b!621547 ((_ is Union!1625) (regOne!3763 (regex!1291 (h!11761 rules!3735))))) b!622154))

(declare-fun b!622158 () Bool)

(declare-fun e!377624 () Bool)

(declare-fun tp!193119 () Bool)

(declare-fun tp!193121 () Bool)

(assert (=> b!622158 (= e!377624 (and tp!193119 tp!193121))))

(declare-fun b!622156 () Bool)

(declare-fun tp!193118 () Bool)

(declare-fun tp!193122 () Bool)

(assert (=> b!622156 (= e!377624 (and tp!193118 tp!193122))))

(declare-fun b!622155 () Bool)

(assert (=> b!622155 (= e!377624 tp_is_empty!3609)))

(declare-fun b!622157 () Bool)

(declare-fun tp!193120 () Bool)

(assert (=> b!622157 (= e!377624 tp!193120)))

(assert (=> b!621547 (= tp!192984 e!377624)))

(assert (= (and b!621547 ((_ is ElementMatch!1625) (regTwo!3763 (regex!1291 (h!11761 rules!3735))))) b!622155))

(assert (= (and b!621547 ((_ is Concat!2941) (regTwo!3763 (regex!1291 (h!11761 rules!3735))))) b!622156))

(assert (= (and b!621547 ((_ is Star!1625) (regTwo!3763 (regex!1291 (h!11761 rules!3735))))) b!622157))

(assert (= (and b!621547 ((_ is Union!1625) (regTwo!3763 (regex!1291 (h!11761 rules!3735))))) b!622158))

(declare-fun b!622162 () Bool)

(declare-fun e!377625 () Bool)

(declare-fun tp!193124 () Bool)

(declare-fun tp!193126 () Bool)

(assert (=> b!622162 (= e!377625 (and tp!193124 tp!193126))))

(declare-fun b!622160 () Bool)

(declare-fun tp!193123 () Bool)

(declare-fun tp!193127 () Bool)

(assert (=> b!622160 (= e!377625 (and tp!193123 tp!193127))))

(declare-fun b!622159 () Bool)

(assert (=> b!622159 (= e!377625 tp_is_empty!3609)))

(declare-fun b!622161 () Bool)

(declare-fun tp!193125 () Bool)

(assert (=> b!622161 (= e!377625 tp!193125)))

(assert (=> b!621572 (= tp!193010 e!377625)))

(assert (= (and b!621572 ((_ is ElementMatch!1625) (regex!1291 (h!11761 (t!81777 rules!3735))))) b!622159))

(assert (= (and b!621572 ((_ is Concat!2941) (regex!1291 (h!11761 (t!81777 rules!3735))))) b!622160))

(assert (= (and b!621572 ((_ is Star!1625) (regex!1291 (h!11761 (t!81777 rules!3735))))) b!622161))

(assert (= (and b!621572 ((_ is Union!1625) (regex!1291 (h!11761 (t!81777 rules!3735))))) b!622162))

(declare-fun b!622166 () Bool)

(declare-fun e!377626 () Bool)

(declare-fun tp!193129 () Bool)

(declare-fun tp!193131 () Bool)

(assert (=> b!622166 (= e!377626 (and tp!193129 tp!193131))))

(declare-fun b!622164 () Bool)

(declare-fun tp!193128 () Bool)

(declare-fun tp!193132 () Bool)

(assert (=> b!622164 (= e!377626 (and tp!193128 tp!193132))))

(declare-fun b!622163 () Bool)

(assert (=> b!622163 (= e!377626 tp_is_empty!3609)))

(declare-fun b!622165 () Bool)

(declare-fun tp!193130 () Bool)

(assert (=> b!622165 (= e!377626 tp!193130)))

(assert (=> b!621545 (= tp!192981 e!377626)))

(assert (= (and b!621545 ((_ is ElementMatch!1625) (regOne!3762 (regex!1291 (h!11761 rules!3735))))) b!622163))

(assert (= (and b!621545 ((_ is Concat!2941) (regOne!3762 (regex!1291 (h!11761 rules!3735))))) b!622164))

(assert (= (and b!621545 ((_ is Star!1625) (regOne!3762 (regex!1291 (h!11761 rules!3735))))) b!622165))

(assert (= (and b!621545 ((_ is Union!1625) (regOne!3762 (regex!1291 (h!11761 rules!3735))))) b!622166))

(declare-fun b!622170 () Bool)

(declare-fun e!377627 () Bool)

(declare-fun tp!193134 () Bool)

(declare-fun tp!193136 () Bool)

(assert (=> b!622170 (= e!377627 (and tp!193134 tp!193136))))

(declare-fun b!622168 () Bool)

(declare-fun tp!193133 () Bool)

(declare-fun tp!193137 () Bool)

(assert (=> b!622168 (= e!377627 (and tp!193133 tp!193137))))

(declare-fun b!622167 () Bool)

(assert (=> b!622167 (= e!377627 tp_is_empty!3609)))

(declare-fun b!622169 () Bool)

(declare-fun tp!193135 () Bool)

(assert (=> b!622169 (= e!377627 tp!193135)))

(assert (=> b!621545 (= tp!192985 e!377627)))

(assert (= (and b!621545 ((_ is ElementMatch!1625) (regTwo!3762 (regex!1291 (h!11761 rules!3735))))) b!622167))

(assert (= (and b!621545 ((_ is Concat!2941) (regTwo!3762 (regex!1291 (h!11761 rules!3735))))) b!622168))

(assert (= (and b!621545 ((_ is Star!1625) (regTwo!3762 (regex!1291 (h!11761 rules!3735))))) b!622169))

(assert (= (and b!621545 ((_ is Union!1625) (regTwo!3762 (regex!1291 (h!11761 rules!3735))))) b!622170))

(declare-fun b!622174 () Bool)

(declare-fun e!377628 () Bool)

(declare-fun tp!193139 () Bool)

(declare-fun tp!193141 () Bool)

(assert (=> b!622174 (= e!377628 (and tp!193139 tp!193141))))

(declare-fun b!622172 () Bool)

(declare-fun tp!193138 () Bool)

(declare-fun tp!193142 () Bool)

(assert (=> b!622172 (= e!377628 (and tp!193138 tp!193142))))

(declare-fun b!622171 () Bool)

(assert (=> b!622171 (= e!377628 tp_is_empty!3609)))

(declare-fun b!622173 () Bool)

(declare-fun tp!193140 () Bool)

(assert (=> b!622173 (= e!377628 tp!193140)))

(assert (=> b!621546 (= tp!192983 e!377628)))

(assert (= (and b!621546 ((_ is ElementMatch!1625) (reg!1954 (regex!1291 (h!11761 rules!3735))))) b!622171))

(assert (= (and b!621546 ((_ is Concat!2941) (reg!1954 (regex!1291 (h!11761 rules!3735))))) b!622172))

(assert (= (and b!621546 ((_ is Star!1625) (reg!1954 (regex!1291 (h!11761 rules!3735))))) b!622173))

(assert (= (and b!621546 ((_ is Union!1625) (reg!1954 (regex!1291 (h!11761 rules!3735))))) b!622174))

(declare-fun b!622178 () Bool)

(declare-fun e!377629 () Bool)

(declare-fun tp!193144 () Bool)

(declare-fun tp!193146 () Bool)

(assert (=> b!622178 (= e!377629 (and tp!193144 tp!193146))))

(declare-fun b!622176 () Bool)

(declare-fun tp!193143 () Bool)

(declare-fun tp!193147 () Bool)

(assert (=> b!622176 (= e!377629 (and tp!193143 tp!193147))))

(declare-fun b!622175 () Bool)

(assert (=> b!622175 (= e!377629 tp_is_empty!3609)))

(declare-fun b!622177 () Bool)

(declare-fun tp!193145 () Bool)

(assert (=> b!622177 (= e!377629 tp!193145)))

(assert (=> b!621541 (= tp!192977 e!377629)))

(assert (= (and b!621541 ((_ is ElementMatch!1625) (reg!1954 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622175))

(assert (= (and b!621541 ((_ is Concat!2941) (reg!1954 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622176))

(assert (= (and b!621541 ((_ is Star!1625) (reg!1954 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622177))

(assert (= (and b!621541 ((_ is Union!1625) (reg!1954 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622178))

(declare-fun b!622182 () Bool)

(declare-fun e!377630 () Bool)

(declare-fun tp!193149 () Bool)

(declare-fun tp!193151 () Bool)

(assert (=> b!622182 (= e!377630 (and tp!193149 tp!193151))))

(declare-fun b!622180 () Bool)

(declare-fun tp!193148 () Bool)

(declare-fun tp!193152 () Bool)

(assert (=> b!622180 (= e!377630 (and tp!193148 tp!193152))))

(declare-fun b!622179 () Bool)

(assert (=> b!622179 (= e!377630 tp_is_empty!3609)))

(declare-fun b!622181 () Bool)

(declare-fun tp!193150 () Bool)

(assert (=> b!622181 (= e!377630 tp!193150)))

(assert (=> b!621542 (= tp!192976 e!377630)))

(assert (= (and b!621542 ((_ is ElementMatch!1625) (regOne!3763 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622179))

(assert (= (and b!621542 ((_ is Concat!2941) (regOne!3763 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622180))

(assert (= (and b!621542 ((_ is Star!1625) (regOne!3763 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622181))

(assert (= (and b!621542 ((_ is Union!1625) (regOne!3763 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622182))

(declare-fun b!622186 () Bool)

(declare-fun e!377631 () Bool)

(declare-fun tp!193154 () Bool)

(declare-fun tp!193156 () Bool)

(assert (=> b!622186 (= e!377631 (and tp!193154 tp!193156))))

(declare-fun b!622184 () Bool)

(declare-fun tp!193153 () Bool)

(declare-fun tp!193157 () Bool)

(assert (=> b!622184 (= e!377631 (and tp!193153 tp!193157))))

(declare-fun b!622183 () Bool)

(assert (=> b!622183 (= e!377631 tp_is_empty!3609)))

(declare-fun b!622185 () Bool)

(declare-fun tp!193155 () Bool)

(assert (=> b!622185 (= e!377631 tp!193155)))

(assert (=> b!621542 (= tp!192978 e!377631)))

(assert (= (and b!621542 ((_ is ElementMatch!1625) (regTwo!3763 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622183))

(assert (= (and b!621542 ((_ is Concat!2941) (regTwo!3763 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622184))

(assert (= (and b!621542 ((_ is Star!1625) (regTwo!3763 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622185))

(assert (= (and b!621542 ((_ is Union!1625) (regTwo!3763 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622186))

(declare-fun b!622190 () Bool)

(declare-fun e!377632 () Bool)

(declare-fun tp!193159 () Bool)

(declare-fun tp!193161 () Bool)

(assert (=> b!622190 (= e!377632 (and tp!193159 tp!193161))))

(declare-fun b!622188 () Bool)

(declare-fun tp!193158 () Bool)

(declare-fun tp!193162 () Bool)

(assert (=> b!622188 (= e!377632 (and tp!193158 tp!193162))))

(declare-fun b!622187 () Bool)

(assert (=> b!622187 (= e!377632 tp_is_empty!3609)))

(declare-fun b!622189 () Bool)

(declare-fun tp!193160 () Bool)

(assert (=> b!622189 (= e!377632 tp!193160)))

(assert (=> b!621540 (= tp!192975 e!377632)))

(assert (= (and b!621540 ((_ is ElementMatch!1625) (regOne!3762 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622187))

(assert (= (and b!621540 ((_ is Concat!2941) (regOne!3762 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622188))

(assert (= (and b!621540 ((_ is Star!1625) (regOne!3762 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622189))

(assert (= (and b!621540 ((_ is Union!1625) (regOne!3762 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622190))

(declare-fun b!622194 () Bool)

(declare-fun e!377633 () Bool)

(declare-fun tp!193164 () Bool)

(declare-fun tp!193166 () Bool)

(assert (=> b!622194 (= e!377633 (and tp!193164 tp!193166))))

(declare-fun b!622192 () Bool)

(declare-fun tp!193163 () Bool)

(declare-fun tp!193167 () Bool)

(assert (=> b!622192 (= e!377633 (and tp!193163 tp!193167))))

(declare-fun b!622191 () Bool)

(assert (=> b!622191 (= e!377633 tp_is_empty!3609)))

(declare-fun b!622193 () Bool)

(declare-fun tp!193165 () Bool)

(assert (=> b!622193 (= e!377633 tp!193165)))

(assert (=> b!621540 (= tp!192979 e!377633)))

(assert (= (and b!621540 ((_ is ElementMatch!1625) (regTwo!3762 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622191))

(assert (= (and b!621540 ((_ is Concat!2941) (regTwo!3762 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622192))

(assert (= (and b!621540 ((_ is Star!1625) (regTwo!3762 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622193))

(assert (= (and b!621540 ((_ is Union!1625) (regTwo!3762 (regex!1291 (rule!2085 (h!11760 producedTokens!8)))))) b!622194))

(declare-fun b!622197 () Bool)

(declare-fun b_free!18165 () Bool)

(declare-fun b_next!18181 () Bool)

(assert (=> b!622197 (= b_free!18165 (not b_next!18181))))

(declare-fun t!81873 () Bool)

(declare-fun tb!54015 () Bool)

(assert (=> (and b!622197 (= (toValue!2212 (transformation!1291 (h!11761 (t!81777 (t!81777 rules!3735))))) (toValue!2212 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))))) t!81873) tb!54015))

(declare-fun result!61000 () Bool)

(assert (= result!61000 result!60982))

(assert (=> d!217782 t!81873))

(declare-fun b_and!61823 () Bool)

(declare-fun tp!193169 () Bool)

(assert (=> b!622197 (= tp!193169 (and (=> t!81873 result!61000) b_and!61823))))

(declare-fun b_free!18167 () Bool)

(declare-fun b_next!18183 () Bool)

(assert (=> b!622197 (= b_free!18167 (not b_next!18183))))

(declare-fun t!81875 () Bool)

(declare-fun tb!54017 () Bool)

(assert (=> (and b!622197 (= (toChars!2071 (transformation!1291 (h!11761 (t!81777 (t!81777 rules!3735))))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8))))) t!81875) tb!54017))

(declare-fun result!61002 () Bool)

(assert (= result!61002 result!60904))

(assert (=> b!621485 t!81875))

(declare-fun t!81877 () Bool)

(declare-fun tb!54019 () Bool)

(assert (=> (and b!622197 (= (toChars!2071 (transformation!1291 (h!11761 (t!81777 (t!81777 rules!3735))))) (toChars!2071 (transformation!1291 (rule!2085 (_1!3845 (get!2423 lt!265702)))))) t!81877) tb!54019))

(declare-fun result!61004 () Bool)

(assert (= result!61004 result!60930))

(assert (=> d!217556 t!81877))

(declare-fun t!81879 () Bool)

(declare-fun tb!54021 () Bool)

(assert (=> (and b!622197 (= (toChars!2071 (transformation!1291 (h!11761 (t!81777 (t!81777 rules!3735))))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8)))))) t!81879) tb!54021))

(declare-fun result!61006 () Bool)

(assert (= result!61006 result!60938))

(assert (=> b!621616 t!81879))

(declare-fun tp!193170 () Bool)

(declare-fun b_and!61825 () Bool)

(assert (=> b!622197 (= tp!193170 (and (=> t!81875 result!61002) (=> t!81877 result!61004) (=> t!81879 result!61006) b_and!61825))))

(declare-fun e!377635 () Bool)

(assert (=> b!622197 (= e!377635 (and tp!193169 tp!193170))))

(declare-fun tp!193168 () Bool)

(declare-fun e!377634 () Bool)

(declare-fun b!622196 () Bool)

(assert (=> b!622196 (= e!377634 (and tp!193168 (inv!8036 (tag!1553 (h!11761 (t!81777 (t!81777 rules!3735))))) (inv!8040 (transformation!1291 (h!11761 (t!81777 (t!81777 rules!3735))))) e!377635))))

(declare-fun b!622195 () Bool)

(declare-fun e!377636 () Bool)

(declare-fun tp!193171 () Bool)

(assert (=> b!622195 (= e!377636 (and e!377634 tp!193171))))

(assert (=> b!621571 (= tp!193013 e!377636)))

(assert (= b!622196 b!622197))

(assert (= b!622195 b!622196))

(assert (= (and b!621571 ((_ is Cons!6360) (t!81777 (t!81777 rules!3735)))) b!622195))

(declare-fun m!890357 () Bool)

(assert (=> b!622196 m!890357))

(declare-fun m!890359 () Bool)

(assert (=> b!622196 m!890359))

(declare-fun b!622206 () Bool)

(declare-fun tp!193178 () Bool)

(declare-fun e!377642 () Bool)

(declare-fun tp!193179 () Bool)

(assert (=> b!622206 (= e!377642 (and (inv!8043 (left!5038 (c!114228 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8)))))) tp!193179 (inv!8043 (right!5368 (c!114228 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8)))))) tp!193178))))

(declare-fun b!622208 () Bool)

(declare-fun e!377643 () Bool)

(declare-fun tp!193180 () Bool)

(assert (=> b!622208 (= e!377643 tp!193180)))

(declare-fun b!622207 () Bool)

(declare-fun inv!8050 (IArray!4047) Bool)

(assert (=> b!622207 (= e!377642 (and (inv!8050 (xs!4660 (c!114228 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8)))))) e!377643))))

(assert (=> b!621491 (= tp!192961 (and (inv!8043 (c!114228 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8))))) e!377642))))

(assert (= (and b!621491 ((_ is Node!2023) (c!114228 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8)))))) b!622206))

(assert (= b!622207 b!622208))

(assert (= (and b!621491 ((_ is Leaf!3177) (c!114228 (dynLambda!3611 (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (value!41657 (h!11760 producedTokens!8)))))) b!622207))

(declare-fun m!890361 () Bool)

(assert (=> b!622206 m!890361))

(declare-fun m!890363 () Bool)

(assert (=> b!622206 m!890363))

(declare-fun m!890365 () Bool)

(assert (=> b!622207 m!890365))

(assert (=> b!621491 m!889293))

(declare-fun b!622209 () Bool)

(declare-fun e!377644 () Bool)

(declare-fun tp!193181 () Bool)

(assert (=> b!622209 (= e!377644 (and tp_is_empty!3609 tp!193181))))

(assert (=> b!621528 (= tp!192964 e!377644)))

(assert (= (and b!621528 ((_ is Cons!6358) (t!81775 (t!81775 input!3206)))) b!622209))

(declare-fun b_lambda!24599 () Bool)

(assert (= b_lambda!24589 (or (and b!621291 b_free!18131 (= (toChars!2071 (transformation!1291 (h!11761 rules!3735))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))))) (and b!622197 b_free!18167 (= (toChars!2071 (transformation!1291 (h!11761 (t!81777 (t!81777 rules!3735))))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))))) (and b!621562 b_free!18147) (and b!622145 b_free!18163 (= (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 (t!81776 producedTokens!8)))))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))))) (and b!621573 b_free!18151 (= (toChars!2071 (transformation!1291 (h!11761 (t!81777 rules!3735)))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))))) (and b!621289 b_free!18135 (= (toChars!2071 (transformation!1291 (rule!2085 (h!11760 producedTokens!8)))) (toChars!2071 (transformation!1291 (rule!2085 (h!11760 (t!81776 producedTokens!8))))))) b_lambda!24599)))

(check-sat (not b!621911) (not b!621933) (not b!622124) (not b!621591) (not b!622164) (not b!621868) (not b!621594) (not b!622177) (not b!621618) (not b!621783) (not b!622174) (not b_next!18161) (not b!621865) (not b_next!18183) tp_is_empty!3609 (not d!217700) (not b!621622) (not d!217696) (not bm!41128) (not tb!53959) (not b!622128) (not b!621947) (not b!622162) (not d!217734) (not b!622194) (not d!217554) (not d!217628) (not b!621996) (not b!622139) (not b!622207) (not b!622154) (not b!622173) b_and!61817 (not b!621619) (not b_lambda!24599) (not d!217702) (not b_next!18151) (not b!622193) b_and!61819 (not d!217718) (not d!217570) (not b!622196) (not b!621578) (not b!622152) (not b!622189) (not b_lambda!24583) (not d!217552) (not b!622158) (not b!621770) (not b!621866) (not b!622144) (not b!622165) (not b!621937) (not b!621877) b_and!61781 (not d!217712) (not b!621881) (not d!217548) (not d!217738) (not b!622178) (not tb!53951) (not b!621623) (not b!621882) (not b!621871) (not b!621951) (not b!621779) (not b!622180) (not d!217562) (not d!217740) (not b!621948) (not b!622137) (not d!217694) (not b!622157) (not b!621982) (not d!217780) (not b!621935) (not b_next!18167) (not b!622192) (not d!217784) (not b!622161) b_and!61783 (not b!622112) (not d!217728) (not b_next!18145) (not b!622140) (not b!622141) (not b!622172) (not b!622184) b_and!61785 b_and!61811 (not b!622190) (not d!217568) (not b!621872) (not d!217742) (not d!217698) (not b!621864) (not b!621626) (not b!621621) (not b!622129) b_and!61825 (not b!621963) (not b_next!18147) (not b!622142) (not d!217616) (not tb!53999) (not b!622024) (not b!621998) (not b!622166) (not b!621614) (not b!621883) (not b!621612) (not bm!41121) (not b!621491) (not b!622195) (not b!621886) (not d!217564) (not b!621997) (not b!621581) (not b!621771) (not b!621627) (not d!217572) (not d!217720) (not b!621609) (not b!621983) (not b!622160) (not b!622118) (not b!621867) (not b!622150) (not b!621631) (not b!622181) (not b_next!18181) (not b_next!18179) (not d!217560) (not b!622208) (not d!217556) (not b!622146) (not d!217772) (not b!622169) (not d!217790) (not d!217574) (not b!621617) (not b!622123) (not b!622153) b_and!61779 b_and!61821 (not d!217774) (not d!217688) (not b!621616) (not d!217730) (not d!217710) (not b!621611) (not b_next!18149) (not d!217704) (not b!621628) (not b!621981) (not b!622149) (not b_next!18177) (not b_lambda!24587) (not d!217708) (not b!622188) (not d!217778) (not d!217786) (not b!622114) b_and!61815 (not b_next!18165) (not b!621592) (not b!621878) (not b!621910) (not b!622122) (not d!217756) (not b!622143) (not b!622148) (not b_next!18163) (not b!622025) (not d!217724) (not b!621870) (not b!621888) (not b!621914) (not b!622170) (not b!622156) (not d!217764) (not b_lambda!24597) b_and!61823 (not b!621620) (not b!622206) (not b!622168) b_and!61813 (not d!217762) (not b!621624) (not b!622209) (not b!621885) (not b!621580) (not b!622182) (not b!622186) (not d!217752) (not b!622185) (not b!622176) (not d!217722))
(check-sat b_and!61781 (not b_next!18167) (not b_next!18149) (not b_next!18177) (not b_next!18163) b_and!61823 b_and!61813 (not b_next!18183) (not b_next!18161) b_and!61817 (not b_next!18151) b_and!61819 b_and!61783 (not b_next!18145) b_and!61785 b_and!61811 b_and!61825 (not b_next!18147) (not b_next!18181) (not b_next!18179) b_and!61779 b_and!61821 b_and!61815 (not b_next!18165))
