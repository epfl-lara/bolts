; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!271406 () Bool)

(assert start!271406)

(declare-fun b!2806206 () Bool)

(declare-fun b_free!79877 () Bool)

(declare-fun b_next!80581 () Bool)

(assert (=> b!2806206 (= b_free!79877 (not b_next!80581))))

(declare-fun tp!895426 () Bool)

(declare-fun b_and!204711 () Bool)

(assert (=> b!2806206 (= tp!895426 b_and!204711)))

(declare-fun b_free!79879 () Bool)

(declare-fun b_next!80583 () Bool)

(assert (=> b!2806206 (= b_free!79879 (not b_next!80583))))

(declare-fun tp!895422 () Bool)

(declare-fun b_and!204713 () Bool)

(assert (=> b!2806206 (= tp!895422 b_and!204713)))

(declare-fun b!2806205 () Bool)

(declare-fun b_free!79881 () Bool)

(declare-fun b_next!80585 () Bool)

(assert (=> b!2806205 (= b_free!79881 (not b_next!80585))))

(declare-fun tp!895431 () Bool)

(declare-fun b_and!204715 () Bool)

(assert (=> b!2806205 (= tp!895431 b_and!204715)))

(declare-fun b_free!79883 () Bool)

(declare-fun b_next!80587 () Bool)

(assert (=> b!2806205 (= b_free!79883 (not b_next!80587))))

(declare-fun tp!895423 () Bool)

(declare-fun b_and!204717 () Bool)

(assert (=> b!2806205 (= tp!895423 b_and!204717)))

(declare-fun b!2806190 () Bool)

(declare-fun b_free!79885 () Bool)

(declare-fun b_next!80589 () Bool)

(assert (=> b!2806190 (= b_free!79885 (not b_next!80589))))

(declare-fun tp!895429 () Bool)

(declare-fun b_and!204719 () Bool)

(assert (=> b!2806190 (= tp!895429 b_and!204719)))

(declare-fun b_free!79887 () Bool)

(declare-fun b_next!80591 () Bool)

(assert (=> b!2806190 (= b_free!79887 (not b_next!80591))))

(declare-fun tp!895424 () Bool)

(declare-fun b_and!204721 () Bool)

(assert (=> b!2806190 (= tp!895424 b_and!204721)))

(declare-fun b!2806217 () Bool)

(declare-fun e!1774128 () Bool)

(assert (=> b!2806217 (= e!1774128 true)))

(declare-fun b!2806216 () Bool)

(declare-fun e!1774127 () Bool)

(assert (=> b!2806216 (= e!1774127 e!1774128)))

(declare-fun b!2806215 () Bool)

(declare-fun e!1774126 () Bool)

(assert (=> b!2806215 (= e!1774126 e!1774127)))

(declare-fun b!2806192 () Bool)

(assert (=> b!2806192 e!1774126))

(assert (= b!2806216 b!2806217))

(assert (= b!2806215 b!2806216))

(declare-datatypes ((List!32814 0))(
  ( (Nil!32714) (Cons!32714 (h!38134 (_ BitVec 16)) (t!229190 List!32814)) )
))
(declare-datatypes ((TokenValue!5112 0))(
  ( (FloatLiteralValue!10224 (text!36229 List!32814)) (TokenValueExt!5111 (__x!21881 Int)) (Broken!25560 (value!157250 List!32814)) (Object!5211) (End!5112) (Def!5112) (Underscore!5112) (Match!5112) (Else!5112) (Error!5112) (Case!5112) (If!5112) (Extends!5112) (Abstract!5112) (Class!5112) (Val!5112) (DelimiterValue!10224 (del!5172 List!32814)) (KeywordValue!5118 (value!157251 List!32814)) (CommentValue!10224 (value!157252 List!32814)) (WhitespaceValue!10224 (value!157253 List!32814)) (IndentationValue!5112 (value!157254 List!32814)) (String!35897) (Int32!5112) (Broken!25561 (value!157255 List!32814)) (Boolean!5113) (Unit!46774) (OperatorValue!5115 (op!5172 List!32814)) (IdentifierValue!10224 (value!157256 List!32814)) (IdentifierValue!10225 (value!157257 List!32814)) (WhitespaceValue!10225 (value!157258 List!32814)) (True!10224) (False!10224) (Broken!25562 (value!157259 List!32814)) (Broken!25563 (value!157260 List!32814)) (True!10225) (RightBrace!5112) (RightBracket!5112) (Colon!5112) (Null!5112) (Comma!5112) (LeftBracket!5112) (False!10225) (LeftBrace!5112) (ImaginaryLiteralValue!5112 (text!36230 List!32814)) (StringLiteralValue!15336 (value!157261 List!32814)) (EOFValue!5112 (value!157262 List!32814)) (IdentValue!5112 (value!157263 List!32814)) (DelimiterValue!10225 (value!157264 List!32814)) (DedentValue!5112 (value!157265 List!32814)) (NewLineValue!5112 (value!157266 List!32814)) (IntegerValue!15336 (value!157267 (_ BitVec 32)) (text!36231 List!32814)) (IntegerValue!15337 (value!157268 Int) (text!36232 List!32814)) (Times!5112) (Or!5112) (Equal!5112) (Minus!5112) (Broken!25564 (value!157269 List!32814)) (And!5112) (Div!5112) (LessEqual!5112) (Mod!5112) (Concat!13372) (Not!5112) (Plus!5112) (SpaceValue!5112 (value!157270 List!32814)) (IntegerValue!15338 (value!157271 Int) (text!36233 List!32814)) (StringLiteralValue!15337 (text!36234 List!32814)) (FloatLiteralValue!10225 (text!36235 List!32814)) (BytesLiteralValue!5112 (value!157272 List!32814)) (CommentValue!10225 (value!157273 List!32814)) (StringLiteralValue!15338 (value!157274 List!32814)) (ErrorTokenValue!5112 (msg!5173 List!32814)) )
))
(declare-datatypes ((C!16678 0))(
  ( (C!16679 (val!10273 Int)) )
))
(declare-datatypes ((List!32815 0))(
  ( (Nil!32715) (Cons!32715 (h!38135 C!16678) (t!229191 List!32815)) )
))
(declare-datatypes ((IArray!20251 0))(
  ( (IArray!20252 (innerList!10183 List!32815)) )
))
(declare-datatypes ((Conc!10123 0))(
  ( (Node!10123 (left!24693 Conc!10123) (right!25023 Conc!10123) (csize!20476 Int) (cheight!10334 Int)) (Leaf!15422 (xs!13235 IArray!20251) (csize!20477 Int)) (Empty!10123) )
))
(declare-datatypes ((BalanceConc!19860 0))(
  ( (BalanceConc!19861 (c!454654 Conc!10123)) )
))
(declare-datatypes ((TokenValueInjection!9664 0))(
  ( (TokenValueInjection!9665 (toValue!6888 Int) (toChars!6747 Int)) )
))
(declare-datatypes ((Regex!8260 0))(
  ( (ElementMatch!8260 (c!454655 C!16678)) (Concat!13373 (regOne!17032 Regex!8260) (regTwo!17032 Regex!8260)) (EmptyExpr!8260) (Star!8260 (reg!8589 Regex!8260)) (EmptyLang!8260) (Union!8260 (regOne!17033 Regex!8260) (regTwo!17033 Regex!8260)) )
))
(declare-datatypes ((String!35898 0))(
  ( (String!35899 (value!157275 String)) )
))
(declare-datatypes ((Rule!9580 0))(
  ( (Rule!9581 (regex!4890 Regex!8260) (tag!5394 String!35898) (isSeparator!4890 Bool) (transformation!4890 TokenValueInjection!9664)) )
))
(declare-datatypes ((List!32816 0))(
  ( (Nil!32716) (Cons!32716 (h!38136 Rule!9580) (t!229192 List!32816)) )
))
(declare-fun rules!2540 () List!32816)

(assert (= (and b!2806192 (is-Cons!32716 rules!2540)) b!2806215))

(declare-fun order!17363 () Int)

(declare-fun order!17361 () Int)

(declare-fun lambda!103080 () Int)

(declare-fun dynLambda!13688 (Int Int) Int)

(declare-fun dynLambda!13689 (Int Int) Int)

(assert (=> b!2806217 (< (dynLambda!13688 order!17361 (toValue!6888 (transformation!4890 (h!38136 rules!2540)))) (dynLambda!13689 order!17363 lambda!103080))))

(declare-fun order!17365 () Int)

(declare-fun dynLambda!13690 (Int Int) Int)

(assert (=> b!2806217 (< (dynLambda!13690 order!17365 (toChars!6747 (transformation!4890 (h!38136 rules!2540)))) (dynLambda!13689 order!17363 lambda!103080))))

(assert (=> b!2806192 true))

(declare-fun b!2806189 () Bool)

(declare-fun res!1169016 () Bool)

(declare-fun e!1774111 () Bool)

(assert (=> b!2806189 (=> (not res!1169016) (not e!1774111))))

(declare-datatypes ((LexerInterface!4481 0))(
  ( (LexerInterfaceExt!4478 (__x!21882 Int)) (Lexer!4479) )
))
(declare-fun thiss!19710 () LexerInterface!4481)

(declare-fun rulesInvariant!3921 (LexerInterface!4481 List!32816) Bool)

(assert (=> b!2806189 (= res!1169016 (rulesInvariant!3921 thiss!19710 rules!2540))))

(declare-fun e!1774108 () Bool)

(assert (=> b!2806190 (= e!1774108 (and tp!895429 tp!895424))))

(declare-fun e!1774116 () Bool)

(assert (=> b!2806192 (= e!1774111 e!1774116)))

(declare-fun res!1169022 () Bool)

(assert (=> b!2806192 (=> (not res!1169022) (not e!1774116))))

(declare-datatypes ((Token!9182 0))(
  ( (Token!9183 (value!157276 TokenValue!5112) (rule!7318 Rule!9580) (size!25515 Int) (originalCharacters!5622 List!32815)) )
))
(declare-datatypes ((List!32817 0))(
  ( (Nil!32717) (Cons!32717 (h!38137 Token!9182) (t!229193 List!32817)) )
))
(declare-fun l!5055 () List!32817)

(declare-fun rulesProduceEachTokenIndividuallyList!1555 (LexerInterface!4481 List!32816 List!32817) Bool)

(assert (=> b!2806192 (= res!1169022 (rulesProduceEachTokenIndividuallyList!1555 thiss!19710 rules!2540 (t!229193 l!5055)))))

(declare-fun lt!1003041 () Bool)

(declare-fun rulesProduceIndividualToken!2045 (LexerInterface!4481 List!32816 Token!9182) Bool)

(assert (=> b!2806192 (= lt!1003041 (rulesProduceIndividualToken!2045 thiss!19710 rules!2540 (h!38137 l!5055)))))

(declare-datatypes ((Unit!46775 0))(
  ( (Unit!46776) )
))
(declare-fun lt!1003042 () Unit!46775)

(declare-fun forallContained!1064 (List!32817 Int Token!9182) Unit!46775)

(assert (=> b!2806192 (= lt!1003042 (forallContained!1064 l!5055 lambda!103080 (h!38137 l!5055)))))

(declare-fun b!2806193 () Bool)

(declare-fun res!1169015 () Bool)

(assert (=> b!2806193 (=> (not res!1169015) (not e!1774111))))

(declare-fun separatorToken!283 () Token!9182)

(assert (=> b!2806193 (= res!1169015 (rulesProduceIndividualToken!2045 thiss!19710 rules!2540 separatorToken!283))))

(declare-fun b!2806194 () Bool)

(declare-fun res!1169021 () Bool)

(assert (=> b!2806194 (=> (not res!1169021) (not e!1774111))))

(assert (=> b!2806194 (= res!1169021 (and (isSeparator!4890 (rule!7318 separatorToken!283)) (is-Cons!32717 l!5055)))))

(declare-fun tp!895427 () Bool)

(declare-fun e!1774112 () Bool)

(declare-fun b!2806195 () Bool)

(declare-fun e!1774109 () Bool)

(declare-fun inv!21 (TokenValue!5112) Bool)

(assert (=> b!2806195 (= e!1774109 (and (inv!21 (value!157276 (h!38137 l!5055))) e!1774112 tp!895427))))

(declare-fun e!1774118 () Bool)

(declare-fun tp!895433 () Bool)

(declare-fun b!2806196 () Bool)

(declare-fun inv!44392 (Token!9182) Bool)

(assert (=> b!2806196 (= e!1774118 (and (inv!44392 (h!38137 l!5055)) e!1774109 tp!895433))))

(declare-fun b!2806197 () Bool)

(declare-fun res!1169019 () Bool)

(assert (=> b!2806197 (=> (not res!1169019) (not e!1774111))))

(declare-fun isEmpty!18181 (List!32816) Bool)

(assert (=> b!2806197 (= res!1169019 (not (isEmpty!18181 rules!2540)))))

(declare-fun b!2806198 () Bool)

(declare-fun e!1774106 () Bool)

(declare-fun tp!895425 () Bool)

(declare-fun inv!44389 (String!35898) Bool)

(declare-fun inv!44393 (TokenValueInjection!9664) Bool)

(assert (=> b!2806198 (= e!1774106 (and tp!895425 (inv!44389 (tag!5394 (h!38136 rules!2540))) (inv!44393 (transformation!4890 (h!38136 rules!2540))) e!1774108))))

(declare-fun e!1774119 () Bool)

(declare-fun e!1774114 () Bool)

(declare-fun tp!895432 () Bool)

(declare-fun b!2806199 () Bool)

(assert (=> b!2806199 (= e!1774119 (and (inv!21 (value!157276 separatorToken!283)) e!1774114 tp!895432))))

(declare-fun b!2806200 () Bool)

(declare-fun res!1169018 () Bool)

(assert (=> b!2806200 (=> (not res!1169018) (not e!1774111))))

(assert (=> b!2806200 (= res!1169018 (rulesProduceEachTokenIndividuallyList!1555 thiss!19710 rules!2540 l!5055))))

(declare-fun res!1169017 () Bool)

(assert (=> start!271406 (=> (not res!1169017) (not e!1774111))))

(assert (=> start!271406 (= res!1169017 (is-Lexer!4479 thiss!19710))))

(assert (=> start!271406 e!1774111))

(assert (=> start!271406 true))

(declare-fun e!1774103 () Bool)

(assert (=> start!271406 e!1774103))

(assert (=> start!271406 e!1774118))

(assert (=> start!271406 (and (inv!44392 separatorToken!283) e!1774119)))

(declare-fun e!1774104 () Bool)

(declare-fun tp!895430 () Bool)

(declare-fun b!2806191 () Bool)

(assert (=> b!2806191 (= e!1774114 (and tp!895430 (inv!44389 (tag!5394 (rule!7318 separatorToken!283))) (inv!44393 (transformation!4890 (rule!7318 separatorToken!283))) e!1774104))))

(declare-fun b!2806201 () Bool)

(declare-fun e!1774105 () Bool)

(declare-fun tp!895421 () Bool)

(assert (=> b!2806201 (= e!1774112 (and tp!895421 (inv!44389 (tag!5394 (rule!7318 (h!38137 l!5055)))) (inv!44393 (transformation!4890 (rule!7318 (h!38137 l!5055)))) e!1774105))))

(declare-fun b!2806202 () Bool)

(declare-fun tp!895428 () Bool)

(assert (=> b!2806202 (= e!1774103 (and e!1774106 tp!895428))))

(declare-fun b!2806203 () Bool)

(declare-fun res!1169020 () Bool)

(assert (=> b!2806203 (=> (not res!1169020) (not e!1774111))))

(declare-fun contains!6040 (List!32817 Token!9182) Bool)

(assert (=> b!2806203 (= res!1169020 (contains!6040 l!5055 (h!38137 l!5055)))))

(declare-fun b!2806204 () Bool)

(declare-fun ListPrimitiveSize!202 (List!32817) Int)

(assert (=> b!2806204 (= e!1774116 (>= (ListPrimitiveSize!202 (t!229193 l!5055)) (ListPrimitiveSize!202 l!5055)))))

(assert (=> b!2806205 (= e!1774104 (and tp!895431 tp!895423))))

(assert (=> b!2806206 (= e!1774105 (and tp!895426 tp!895422))))

(assert (= (and start!271406 res!1169017) b!2806197))

(assert (= (and b!2806197 res!1169019) b!2806189))

(assert (= (and b!2806189 res!1169016) b!2806200))

(assert (= (and b!2806200 res!1169018) b!2806193))

(assert (= (and b!2806193 res!1169015) b!2806194))

(assert (= (and b!2806194 res!1169021) b!2806203))

(assert (= (and b!2806203 res!1169020) b!2806192))

(assert (= (and b!2806192 res!1169022) b!2806204))

(assert (= b!2806198 b!2806190))

(assert (= b!2806202 b!2806198))

(assert (= (and start!271406 (is-Cons!32716 rules!2540)) b!2806202))

(assert (= b!2806201 b!2806206))

(assert (= b!2806195 b!2806201))

(assert (= b!2806196 b!2806195))

(assert (= (and start!271406 (is-Cons!32717 l!5055)) b!2806196))

(assert (= b!2806191 b!2806205))

(assert (= b!2806199 b!2806191))

(assert (= start!271406 b!2806199))

(declare-fun m!3235125 () Bool)

(assert (=> b!2806198 m!3235125))

(declare-fun m!3235127 () Bool)

(assert (=> b!2806198 m!3235127))

(declare-fun m!3235129 () Bool)

(assert (=> b!2806196 m!3235129))

(declare-fun m!3235131 () Bool)

(assert (=> b!2806197 m!3235131))

(declare-fun m!3235133 () Bool)

(assert (=> start!271406 m!3235133))

(declare-fun m!3235135 () Bool)

(assert (=> b!2806203 m!3235135))

(declare-fun m!3235137 () Bool)

(assert (=> b!2806200 m!3235137))

(declare-fun m!3235139 () Bool)

(assert (=> b!2806193 m!3235139))

(declare-fun m!3235141 () Bool)

(assert (=> b!2806189 m!3235141))

(declare-fun m!3235143 () Bool)

(assert (=> b!2806199 m!3235143))

(declare-fun m!3235145 () Bool)

(assert (=> b!2806191 m!3235145))

(declare-fun m!3235147 () Bool)

(assert (=> b!2806191 m!3235147))

(declare-fun m!3235149 () Bool)

(assert (=> b!2806192 m!3235149))

(declare-fun m!3235151 () Bool)

(assert (=> b!2806192 m!3235151))

(declare-fun m!3235153 () Bool)

(assert (=> b!2806192 m!3235153))

(declare-fun m!3235155 () Bool)

(assert (=> b!2806195 m!3235155))

(declare-fun m!3235157 () Bool)

(assert (=> b!2806204 m!3235157))

(declare-fun m!3235159 () Bool)

(assert (=> b!2806204 m!3235159))

(declare-fun m!3235161 () Bool)

(assert (=> b!2806201 m!3235161))

(declare-fun m!3235163 () Bool)

(assert (=> b!2806201 m!3235163))

(push 1)

(assert (not b_next!80585))

(assert b_and!204715)

(assert (not b!2806193))

(assert (not b_next!80583))

(assert (not b!2806201))

(assert b_and!204719)

(assert (not b!2806192))

(assert (not b!2806199))

(assert (not b_next!80589))

(assert (not b!2806200))

(assert (not b!2806197))

(assert (not b!2806204))

(assert (not b_next!80587))

(assert (not start!271406))

(assert b_and!204717)

(assert (not b_next!80591))

(assert b_and!204721)

(assert (not b!2806195))

(assert (not b!2806196))

(assert (not b!2806198))

(assert b_and!204711)

(assert (not b!2806215))

(assert (not b_next!80581))

(assert (not b!2806189))

(assert (not b!2806203))

(assert b_and!204713)

(assert (not b!2806202))

(assert (not b!2806191))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!80585))

(assert b_and!204715)

(assert (not b_next!80587))

(assert (not b_next!80583))

(assert b_and!204721)

(assert b_and!204711)

(assert (not b_next!80581))

(assert b_and!204719)

(assert (not b_next!80589))

(assert b_and!204713)

(assert b_and!204717)

(assert (not b_next!80591))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!814547 () Bool)

(declare-fun res!1169057 () Bool)

(declare-fun e!1774191 () Bool)

(assert (=> d!814547 (=> (not res!1169057) (not e!1774191))))

(declare-fun rulesValid!1805 (LexerInterface!4481 List!32816) Bool)

(assert (=> d!814547 (= res!1169057 (rulesValid!1805 thiss!19710 rules!2540))))

(assert (=> d!814547 (= (rulesInvariant!3921 thiss!19710 rules!2540) e!1774191)))

(declare-fun b!2806289 () Bool)

(declare-datatypes ((List!32822 0))(
  ( (Nil!32722) (Cons!32722 (h!38142 String!35898) (t!229242 List!32822)) )
))
(declare-fun noDuplicateTag!1801 (LexerInterface!4481 List!32816 List!32822) Bool)

(assert (=> b!2806289 (= e!1774191 (noDuplicateTag!1801 thiss!19710 rules!2540 Nil!32722))))

(assert (= (and d!814547 res!1169057) b!2806289))

(declare-fun m!3235205 () Bool)

(assert (=> d!814547 m!3235205))

(declare-fun m!3235207 () Bool)

(assert (=> b!2806289 m!3235207))

(assert (=> b!2806189 d!814547))

(declare-fun bs!516121 () Bool)

(declare-fun d!814549 () Bool)

(assert (= bs!516121 (and d!814549 b!2806192)))

(declare-fun lambda!103086 () Int)

(assert (=> bs!516121 (= lambda!103086 lambda!103080)))

(declare-fun b!2806307 () Bool)

(declare-fun e!1774209 () Bool)

(assert (=> b!2806307 (= e!1774209 true)))

(declare-fun b!2806306 () Bool)

(declare-fun e!1774208 () Bool)

(assert (=> b!2806306 (= e!1774208 e!1774209)))

(declare-fun b!2806305 () Bool)

(declare-fun e!1774207 () Bool)

(assert (=> b!2806305 (= e!1774207 e!1774208)))

(assert (=> d!814549 e!1774207))

(assert (= b!2806306 b!2806307))

(assert (= b!2806305 b!2806306))

(assert (= (and d!814549 (is-Cons!32716 rules!2540)) b!2806305))

(assert (=> b!2806307 (< (dynLambda!13688 order!17361 (toValue!6888 (transformation!4890 (h!38136 rules!2540)))) (dynLambda!13689 order!17363 lambda!103086))))

(assert (=> b!2806307 (< (dynLambda!13690 order!17365 (toChars!6747 (transformation!4890 (h!38136 rules!2540)))) (dynLambda!13689 order!17363 lambda!103086))))

(assert (=> d!814549 true))

(declare-fun lt!1003054 () Bool)

(declare-fun forall!6727 (List!32817 Int) Bool)

(assert (=> d!814549 (= lt!1003054 (forall!6727 l!5055 lambda!103086))))

(declare-fun e!1774206 () Bool)

(assert (=> d!814549 (= lt!1003054 e!1774206)))

(declare-fun res!1169071 () Bool)

(assert (=> d!814549 (=> res!1169071 e!1774206)))

(assert (=> d!814549 (= res!1169071 (not (is-Cons!32717 l!5055)))))

(assert (=> d!814549 (not (isEmpty!18181 rules!2540))))

(assert (=> d!814549 (= (rulesProduceEachTokenIndividuallyList!1555 thiss!19710 rules!2540 l!5055) lt!1003054)))

(declare-fun b!2806303 () Bool)

(declare-fun e!1774205 () Bool)

(assert (=> b!2806303 (= e!1774206 e!1774205)))

(declare-fun res!1169072 () Bool)

(assert (=> b!2806303 (=> (not res!1169072) (not e!1774205))))

(assert (=> b!2806303 (= res!1169072 (rulesProduceIndividualToken!2045 thiss!19710 rules!2540 (h!38137 l!5055)))))

(declare-fun b!2806304 () Bool)

(assert (=> b!2806304 (= e!1774205 (rulesProduceEachTokenIndividuallyList!1555 thiss!19710 rules!2540 (t!229193 l!5055)))))

(assert (= (and d!814549 (not res!1169071)) b!2806303))

(assert (= (and b!2806303 res!1169072) b!2806304))

(declare-fun m!3235219 () Bool)

(assert (=> d!814549 m!3235219))

(assert (=> d!814549 m!3235131))

(assert (=> b!2806303 m!3235151))

(assert (=> b!2806304 m!3235149))

(assert (=> b!2806200 d!814549))

(declare-fun d!814561 () Bool)

(assert (=> d!814561 (= (inv!44389 (tag!5394 (rule!7318 (h!38137 l!5055)))) (= (mod (str.len (value!157275 (tag!5394 (rule!7318 (h!38137 l!5055))))) 2) 0))))

(assert (=> b!2806201 d!814561))

(declare-fun d!814563 () Bool)

(declare-fun res!1169075 () Bool)

(declare-fun e!1774212 () Bool)

(assert (=> d!814563 (=> (not res!1169075) (not e!1774212))))

(declare-fun semiInverseModEq!2018 (Int Int) Bool)

(assert (=> d!814563 (= res!1169075 (semiInverseModEq!2018 (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055)))) (toValue!6888 (transformation!4890 (rule!7318 (h!38137 l!5055))))))))

(assert (=> d!814563 (= (inv!44393 (transformation!4890 (rule!7318 (h!38137 l!5055)))) e!1774212)))

(declare-fun b!2806310 () Bool)

(declare-fun equivClasses!1919 (Int Int) Bool)

(assert (=> b!2806310 (= e!1774212 (equivClasses!1919 (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055)))) (toValue!6888 (transformation!4890 (rule!7318 (h!38137 l!5055))))))))

(assert (= (and d!814563 res!1169075) b!2806310))

(declare-fun m!3235221 () Bool)

(assert (=> d!814563 m!3235221))

(declare-fun m!3235223 () Bool)

(assert (=> b!2806310 m!3235223))

(assert (=> b!2806201 d!814563))

(declare-fun d!814565 () Bool)

(assert (=> d!814565 (= (inv!44389 (tag!5394 (rule!7318 separatorToken!283))) (= (mod (str.len (value!157275 (tag!5394 (rule!7318 separatorToken!283)))) 2) 0))))

(assert (=> b!2806191 d!814565))

(declare-fun d!814567 () Bool)

(declare-fun res!1169076 () Bool)

(declare-fun e!1774213 () Bool)

(assert (=> d!814567 (=> (not res!1169076) (not e!1774213))))

(assert (=> d!814567 (= res!1169076 (semiInverseModEq!2018 (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283))) (toValue!6888 (transformation!4890 (rule!7318 separatorToken!283)))))))

(assert (=> d!814567 (= (inv!44393 (transformation!4890 (rule!7318 separatorToken!283))) e!1774213)))

(declare-fun b!2806311 () Bool)

(assert (=> b!2806311 (= e!1774213 (equivClasses!1919 (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283))) (toValue!6888 (transformation!4890 (rule!7318 separatorToken!283)))))))

(assert (= (and d!814567 res!1169076) b!2806311))

(declare-fun m!3235225 () Bool)

(assert (=> d!814567 m!3235225))

(declare-fun m!3235227 () Bool)

(assert (=> b!2806311 m!3235227))

(assert (=> b!2806191 d!814567))

(declare-fun d!814569 () Bool)

(declare-fun lt!1003061 () Bool)

(declare-fun content!4555 (List!32817) (Set Token!9182))

(assert (=> d!814569 (= lt!1003061 (set.member (h!38137 l!5055) (content!4555 l!5055)))))

(declare-fun e!1774223 () Bool)

(assert (=> d!814569 (= lt!1003061 e!1774223)))

(declare-fun res!1169087 () Bool)

(assert (=> d!814569 (=> (not res!1169087) (not e!1774223))))

(assert (=> d!814569 (= res!1169087 (is-Cons!32717 l!5055))))

(assert (=> d!814569 (= (contains!6040 l!5055 (h!38137 l!5055)) lt!1003061)))

(declare-fun b!2806322 () Bool)

(declare-fun e!1774222 () Bool)

(assert (=> b!2806322 (= e!1774223 e!1774222)))

(declare-fun res!1169088 () Bool)

(assert (=> b!2806322 (=> res!1169088 e!1774222)))

(assert (=> b!2806322 (= res!1169088 (= (h!38137 l!5055) (h!38137 l!5055)))))

(declare-fun b!2806323 () Bool)

(assert (=> b!2806323 (= e!1774222 (contains!6040 (t!229193 l!5055) (h!38137 l!5055)))))

(assert (= (and d!814569 res!1169087) b!2806322))

(assert (= (and b!2806322 (not res!1169088)) b!2806323))

(declare-fun m!3235229 () Bool)

(assert (=> d!814569 m!3235229))

(declare-fun m!3235231 () Bool)

(assert (=> d!814569 m!3235231))

(declare-fun m!3235233 () Bool)

(assert (=> b!2806323 m!3235233))

(assert (=> b!2806203 d!814569))

(declare-fun bs!516122 () Bool)

(declare-fun d!814571 () Bool)

(assert (= bs!516122 (and d!814571 b!2806192)))

(declare-fun lambda!103087 () Int)

(assert (=> bs!516122 (= lambda!103087 lambda!103080)))

(declare-fun bs!516123 () Bool)

(assert (= bs!516123 (and d!814571 d!814549)))

(assert (=> bs!516123 (= lambda!103087 lambda!103086)))

(declare-fun b!2806328 () Bool)

(declare-fun e!1774228 () Bool)

(assert (=> b!2806328 (= e!1774228 true)))

(declare-fun b!2806327 () Bool)

(declare-fun e!1774227 () Bool)

(assert (=> b!2806327 (= e!1774227 e!1774228)))

(declare-fun b!2806326 () Bool)

(declare-fun e!1774226 () Bool)

(assert (=> b!2806326 (= e!1774226 e!1774227)))

(assert (=> d!814571 e!1774226))

(assert (= b!2806327 b!2806328))

(assert (= b!2806326 b!2806327))

(assert (= (and d!814571 (is-Cons!32716 rules!2540)) b!2806326))

(assert (=> b!2806328 (< (dynLambda!13688 order!17361 (toValue!6888 (transformation!4890 (h!38136 rules!2540)))) (dynLambda!13689 order!17363 lambda!103087))))

(assert (=> b!2806328 (< (dynLambda!13690 order!17365 (toChars!6747 (transformation!4890 (h!38136 rules!2540)))) (dynLambda!13689 order!17363 lambda!103087))))

(assert (=> d!814571 true))

(declare-fun lt!1003062 () Bool)

(assert (=> d!814571 (= lt!1003062 (forall!6727 (t!229193 l!5055) lambda!103087))))

(declare-fun e!1774225 () Bool)

(assert (=> d!814571 (= lt!1003062 e!1774225)))

(declare-fun res!1169089 () Bool)

(assert (=> d!814571 (=> res!1169089 e!1774225)))

(assert (=> d!814571 (= res!1169089 (not (is-Cons!32717 (t!229193 l!5055))))))

(assert (=> d!814571 (not (isEmpty!18181 rules!2540))))

(assert (=> d!814571 (= (rulesProduceEachTokenIndividuallyList!1555 thiss!19710 rules!2540 (t!229193 l!5055)) lt!1003062)))

(declare-fun b!2806324 () Bool)

(declare-fun e!1774224 () Bool)

(assert (=> b!2806324 (= e!1774225 e!1774224)))

(declare-fun res!1169090 () Bool)

(assert (=> b!2806324 (=> (not res!1169090) (not e!1774224))))

(assert (=> b!2806324 (= res!1169090 (rulesProduceIndividualToken!2045 thiss!19710 rules!2540 (h!38137 (t!229193 l!5055))))))

(declare-fun b!2806325 () Bool)

(assert (=> b!2806325 (= e!1774224 (rulesProduceEachTokenIndividuallyList!1555 thiss!19710 rules!2540 (t!229193 (t!229193 l!5055))))))

(assert (= (and d!814571 (not res!1169089)) b!2806324))

(assert (= (and b!2806324 res!1169090) b!2806325))

(declare-fun m!3235235 () Bool)

(assert (=> d!814571 m!3235235))

(assert (=> d!814571 m!3235131))

(declare-fun m!3235237 () Bool)

(assert (=> b!2806324 m!3235237))

(declare-fun m!3235239 () Bool)

(assert (=> b!2806325 m!3235239))

(assert (=> b!2806192 d!814571))

(declare-fun d!814573 () Bool)

(declare-fun lt!1003071 () Bool)

(declare-fun e!1774239 () Bool)

(assert (=> d!814573 (= lt!1003071 e!1774239)))

(declare-fun res!1169105 () Bool)

(assert (=> d!814573 (=> (not res!1169105) (not e!1774239))))

(declare-datatypes ((IArray!20257 0))(
  ( (IArray!20258 (innerList!10186 List!32817)) )
))
(declare-datatypes ((Conc!10126 0))(
  ( (Node!10126 (left!24698 Conc!10126) (right!25028 Conc!10126) (csize!20482 Int) (cheight!10337 Int)) (Leaf!15425 (xs!13238 IArray!20257) (csize!20483 Int)) (Empty!10126) )
))
(declare-datatypes ((BalanceConc!19866 0))(
  ( (BalanceConc!19867 (c!454683 Conc!10126)) )
))
(declare-fun list!12247 (BalanceConc!19866) List!32817)

(declare-datatypes ((tuple2!33308 0))(
  ( (tuple2!33309 (_1!19747 BalanceConc!19866) (_2!19747 BalanceConc!19860)) )
))
(declare-fun lex!1974 (LexerInterface!4481 List!32816 BalanceConc!19860) tuple2!33308)

(declare-fun print!1693 (LexerInterface!4481 BalanceConc!19866) BalanceConc!19860)

(declare-fun singletonSeq!2114 (Token!9182) BalanceConc!19866)

(assert (=> d!814573 (= res!1169105 (= (list!12247 (_1!19747 (lex!1974 thiss!19710 rules!2540 (print!1693 thiss!19710 (singletonSeq!2114 (h!38137 l!5055)))))) (list!12247 (singletonSeq!2114 (h!38137 l!5055)))))))

(declare-fun e!1774240 () Bool)

(assert (=> d!814573 (= lt!1003071 e!1774240)))

(declare-fun res!1169106 () Bool)

(assert (=> d!814573 (=> (not res!1169106) (not e!1774240))))

(declare-fun lt!1003072 () tuple2!33308)

(declare-fun size!25518 (BalanceConc!19866) Int)

(assert (=> d!814573 (= res!1169106 (= (size!25518 (_1!19747 lt!1003072)) 1))))

(assert (=> d!814573 (= lt!1003072 (lex!1974 thiss!19710 rules!2540 (print!1693 thiss!19710 (singletonSeq!2114 (h!38137 l!5055)))))))

(assert (=> d!814573 (not (isEmpty!18181 rules!2540))))

(assert (=> d!814573 (= (rulesProduceIndividualToken!2045 thiss!19710 rules!2540 (h!38137 l!5055)) lt!1003071)))

(declare-fun b!2806342 () Bool)

(declare-fun res!1169104 () Bool)

(assert (=> b!2806342 (=> (not res!1169104) (not e!1774240))))

(declare-fun apply!7641 (BalanceConc!19866 Int) Token!9182)

(assert (=> b!2806342 (= res!1169104 (= (apply!7641 (_1!19747 lt!1003072) 0) (h!38137 l!5055)))))

(declare-fun b!2806343 () Bool)

(declare-fun isEmpty!18184 (BalanceConc!19860) Bool)

(assert (=> b!2806343 (= e!1774240 (isEmpty!18184 (_2!19747 lt!1003072)))))

(declare-fun b!2806344 () Bool)

(assert (=> b!2806344 (= e!1774239 (isEmpty!18184 (_2!19747 (lex!1974 thiss!19710 rules!2540 (print!1693 thiss!19710 (singletonSeq!2114 (h!38137 l!5055)))))))))

(assert (= (and d!814573 res!1169106) b!2806342))

(assert (= (and b!2806342 res!1169104) b!2806343))

(assert (= (and d!814573 res!1169105) b!2806344))

(declare-fun m!3235259 () Bool)

(assert (=> d!814573 m!3235259))

(assert (=> d!814573 m!3235259))

(declare-fun m!3235261 () Bool)

(assert (=> d!814573 m!3235261))

(assert (=> d!814573 m!3235131))

(declare-fun m!3235263 () Bool)

(assert (=> d!814573 m!3235263))

(declare-fun m!3235265 () Bool)

(assert (=> d!814573 m!3235265))

(declare-fun m!3235267 () Bool)

(assert (=> d!814573 m!3235267))

(assert (=> d!814573 m!3235259))

(assert (=> d!814573 m!3235263))

(declare-fun m!3235269 () Bool)

(assert (=> d!814573 m!3235269))

(declare-fun m!3235271 () Bool)

(assert (=> b!2806342 m!3235271))

(declare-fun m!3235273 () Bool)

(assert (=> b!2806343 m!3235273))

(assert (=> b!2806344 m!3235259))

(assert (=> b!2806344 m!3235259))

(assert (=> b!2806344 m!3235263))

(assert (=> b!2806344 m!3235263))

(assert (=> b!2806344 m!3235265))

(declare-fun m!3235275 () Bool)

(assert (=> b!2806344 m!3235275))

(assert (=> b!2806192 d!814573))

(declare-fun d!814577 () Bool)

(declare-fun dynLambda!13694 (Int Token!9182) Bool)

(assert (=> d!814577 (dynLambda!13694 lambda!103080 (h!38137 l!5055))))

(declare-fun lt!1003076 () Unit!46775)

(declare-fun choose!16546 (List!32817 Int Token!9182) Unit!46775)

(assert (=> d!814577 (= lt!1003076 (choose!16546 l!5055 lambda!103080 (h!38137 l!5055)))))

(declare-fun e!1774248 () Bool)

(assert (=> d!814577 e!1774248))

(declare-fun res!1169111 () Bool)

(assert (=> d!814577 (=> (not res!1169111) (not e!1774248))))

(assert (=> d!814577 (= res!1169111 (forall!6727 l!5055 lambda!103080))))

(assert (=> d!814577 (= (forallContained!1064 l!5055 lambda!103080 (h!38137 l!5055)) lt!1003076)))

(declare-fun b!2806352 () Bool)

(assert (=> b!2806352 (= e!1774248 (contains!6040 l!5055 (h!38137 l!5055)))))

(assert (= (and d!814577 res!1169111) b!2806352))

(declare-fun b_lambda!83835 () Bool)

(assert (=> (not b_lambda!83835) (not d!814577)))

(declare-fun m!3235277 () Bool)

(assert (=> d!814577 m!3235277))

(declare-fun m!3235281 () Bool)

(assert (=> d!814577 m!3235281))

(declare-fun m!3235283 () Bool)

(assert (=> d!814577 m!3235283))

(assert (=> b!2806352 m!3235135))

(assert (=> b!2806192 d!814577))

(declare-fun d!814579 () Bool)

(declare-fun lt!1003077 () Bool)

(declare-fun e!1774249 () Bool)

(assert (=> d!814579 (= lt!1003077 e!1774249)))

(declare-fun res!1169113 () Bool)

(assert (=> d!814579 (=> (not res!1169113) (not e!1774249))))

(assert (=> d!814579 (= res!1169113 (= (list!12247 (_1!19747 (lex!1974 thiss!19710 rules!2540 (print!1693 thiss!19710 (singletonSeq!2114 separatorToken!283))))) (list!12247 (singletonSeq!2114 separatorToken!283))))))

(declare-fun e!1774250 () Bool)

(assert (=> d!814579 (= lt!1003077 e!1774250)))

(declare-fun res!1169114 () Bool)

(assert (=> d!814579 (=> (not res!1169114) (not e!1774250))))

(declare-fun lt!1003078 () tuple2!33308)

(assert (=> d!814579 (= res!1169114 (= (size!25518 (_1!19747 lt!1003078)) 1))))

(assert (=> d!814579 (= lt!1003078 (lex!1974 thiss!19710 rules!2540 (print!1693 thiss!19710 (singletonSeq!2114 separatorToken!283))))))

(assert (=> d!814579 (not (isEmpty!18181 rules!2540))))

(assert (=> d!814579 (= (rulesProduceIndividualToken!2045 thiss!19710 rules!2540 separatorToken!283) lt!1003077)))

(declare-fun b!2806353 () Bool)

(declare-fun res!1169112 () Bool)

(assert (=> b!2806353 (=> (not res!1169112) (not e!1774250))))

(assert (=> b!2806353 (= res!1169112 (= (apply!7641 (_1!19747 lt!1003078) 0) separatorToken!283))))

(declare-fun b!2806354 () Bool)

(assert (=> b!2806354 (= e!1774250 (isEmpty!18184 (_2!19747 lt!1003078)))))

(declare-fun b!2806355 () Bool)

(assert (=> b!2806355 (= e!1774249 (isEmpty!18184 (_2!19747 (lex!1974 thiss!19710 rules!2540 (print!1693 thiss!19710 (singletonSeq!2114 separatorToken!283))))))))

(assert (= (and d!814579 res!1169114) b!2806353))

(assert (= (and b!2806353 res!1169112) b!2806354))

(assert (= (and d!814579 res!1169113) b!2806355))

(declare-fun m!3235285 () Bool)

(assert (=> d!814579 m!3235285))

(assert (=> d!814579 m!3235285))

(declare-fun m!3235287 () Bool)

(assert (=> d!814579 m!3235287))

(assert (=> d!814579 m!3235131))

(declare-fun m!3235289 () Bool)

(assert (=> d!814579 m!3235289))

(declare-fun m!3235291 () Bool)

(assert (=> d!814579 m!3235291))

(declare-fun m!3235293 () Bool)

(assert (=> d!814579 m!3235293))

(assert (=> d!814579 m!3235285))

(assert (=> d!814579 m!3235289))

(declare-fun m!3235295 () Bool)

(assert (=> d!814579 m!3235295))

(declare-fun m!3235297 () Bool)

(assert (=> b!2806353 m!3235297))

(declare-fun m!3235299 () Bool)

(assert (=> b!2806354 m!3235299))

(assert (=> b!2806355 m!3235285))

(assert (=> b!2806355 m!3235285))

(assert (=> b!2806355 m!3235289))

(assert (=> b!2806355 m!3235289))

(assert (=> b!2806355 m!3235291))

(declare-fun m!3235301 () Bool)

(assert (=> b!2806355 m!3235301))

(assert (=> b!2806193 d!814579))

(declare-fun d!814583 () Bool)

(declare-fun res!1169123 () Bool)

(declare-fun e!1774263 () Bool)

(assert (=> d!814583 (=> (not res!1169123) (not e!1774263))))

(declare-fun isEmpty!18185 (List!32815) Bool)

(assert (=> d!814583 (= res!1169123 (not (isEmpty!18185 (originalCharacters!5622 separatorToken!283))))))

(assert (=> d!814583 (= (inv!44392 separatorToken!283) e!1774263)))

(declare-fun b!2806376 () Bool)

(declare-fun res!1169124 () Bool)

(assert (=> b!2806376 (=> (not res!1169124) (not e!1774263))))

(declare-fun list!12248 (BalanceConc!19860) List!32815)

(declare-fun dynLambda!13695 (Int TokenValue!5112) BalanceConc!19860)

(assert (=> b!2806376 (= res!1169124 (= (originalCharacters!5622 separatorToken!283) (list!12248 (dynLambda!13695 (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283))) (value!157276 separatorToken!283)))))))

(declare-fun b!2806377 () Bool)

(declare-fun size!25519 (List!32815) Int)

(assert (=> b!2806377 (= e!1774263 (= (size!25515 separatorToken!283) (size!25519 (originalCharacters!5622 separatorToken!283))))))

(assert (= (and d!814583 res!1169123) b!2806376))

(assert (= (and b!2806376 res!1169124) b!2806377))

(declare-fun b_lambda!83837 () Bool)

(assert (=> (not b_lambda!83837) (not b!2806376)))

(declare-fun tb!153133 () Bool)

(declare-fun t!229207 () Bool)

(assert (=> (and b!2806206 (= (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055)))) (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283)))) t!229207) tb!153133))

(declare-fun b!2806392 () Bool)

(declare-fun e!1774274 () Bool)

(declare-fun tp!895475 () Bool)

(declare-fun inv!44396 (Conc!10123) Bool)

(assert (=> b!2806392 (= e!1774274 (and (inv!44396 (c!454654 (dynLambda!13695 (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283))) (value!157276 separatorToken!283)))) tp!895475))))

(declare-fun result!190308 () Bool)

(declare-fun inv!44397 (BalanceConc!19860) Bool)

(assert (=> tb!153133 (= result!190308 (and (inv!44397 (dynLambda!13695 (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283))) (value!157276 separatorToken!283))) e!1774274))))

(assert (= tb!153133 b!2806392))

(declare-fun m!3235325 () Bool)

(assert (=> b!2806392 m!3235325))

(declare-fun m!3235327 () Bool)

(assert (=> tb!153133 m!3235327))

(assert (=> b!2806376 t!229207))

(declare-fun b_and!204735 () Bool)

(assert (= b_and!204713 (and (=> t!229207 result!190308) b_and!204735)))

(declare-fun t!229209 () Bool)

(declare-fun tb!153135 () Bool)

(assert (=> (and b!2806205 (= (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283))) (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283)))) t!229209) tb!153135))

(declare-fun result!190312 () Bool)

(assert (= result!190312 result!190308))

(assert (=> b!2806376 t!229209))

(declare-fun b_and!204737 () Bool)

(assert (= b_and!204717 (and (=> t!229209 result!190312) b_and!204737)))

(declare-fun t!229211 () Bool)

(declare-fun tb!153137 () Bool)

(assert (=> (and b!2806190 (= (toChars!6747 (transformation!4890 (h!38136 rules!2540))) (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283)))) t!229211) tb!153137))

(declare-fun result!190314 () Bool)

(assert (= result!190314 result!190308))

(assert (=> b!2806376 t!229211))

(declare-fun b_and!204739 () Bool)

(assert (= b_and!204721 (and (=> t!229211 result!190314) b_and!204739)))

(declare-fun m!3235329 () Bool)

(assert (=> d!814583 m!3235329))

(declare-fun m!3235331 () Bool)

(assert (=> b!2806376 m!3235331))

(assert (=> b!2806376 m!3235331))

(declare-fun m!3235333 () Bool)

(assert (=> b!2806376 m!3235333))

(declare-fun m!3235335 () Bool)

(assert (=> b!2806377 m!3235335))

(assert (=> start!271406 d!814583))

(declare-fun d!814595 () Bool)

(declare-fun lt!1003084 () Int)

(assert (=> d!814595 (>= lt!1003084 0)))

(declare-fun e!1774279 () Int)

(assert (=> d!814595 (= lt!1003084 e!1774279)))

(declare-fun c!454668 () Bool)

(assert (=> d!814595 (= c!454668 (is-Nil!32717 (t!229193 l!5055)))))

(assert (=> d!814595 (= (ListPrimitiveSize!202 (t!229193 l!5055)) lt!1003084)))

(declare-fun b!2806400 () Bool)

(assert (=> b!2806400 (= e!1774279 0)))

(declare-fun b!2806401 () Bool)

(assert (=> b!2806401 (= e!1774279 (+ 1 (ListPrimitiveSize!202 (t!229193 (t!229193 l!5055)))))))

(assert (= (and d!814595 c!454668) b!2806400))

(assert (= (and d!814595 (not c!454668)) b!2806401))

(declare-fun m!3235355 () Bool)

(assert (=> b!2806401 m!3235355))

(assert (=> b!2806204 d!814595))

(declare-fun d!814599 () Bool)

(declare-fun lt!1003085 () Int)

(assert (=> d!814599 (>= lt!1003085 0)))

(declare-fun e!1774280 () Int)

(assert (=> d!814599 (= lt!1003085 e!1774280)))

(declare-fun c!454669 () Bool)

(assert (=> d!814599 (= c!454669 (is-Nil!32717 l!5055))))

(assert (=> d!814599 (= (ListPrimitiveSize!202 l!5055) lt!1003085)))

(declare-fun b!2806402 () Bool)

(assert (=> b!2806402 (= e!1774280 0)))

(declare-fun b!2806403 () Bool)

(assert (=> b!2806403 (= e!1774280 (+ 1 (ListPrimitiveSize!202 (t!229193 l!5055))))))

(assert (= (and d!814599 c!454669) b!2806402))

(assert (= (and d!814599 (not c!454669)) b!2806403))

(assert (=> b!2806403 m!3235157))

(assert (=> b!2806204 d!814599))

(declare-fun b!2806423 () Bool)

(declare-fun e!1774294 () Bool)

(declare-fun inv!17 (TokenValue!5112) Bool)

(assert (=> b!2806423 (= e!1774294 (inv!17 (value!157276 (h!38137 l!5055))))))

(declare-fun b!2806424 () Bool)

(declare-fun e!1774295 () Bool)

(declare-fun inv!16 (TokenValue!5112) Bool)

(assert (=> b!2806424 (= e!1774295 (inv!16 (value!157276 (h!38137 l!5055))))))

(declare-fun b!2806425 () Bool)

(assert (=> b!2806425 (= e!1774295 e!1774294)))

(declare-fun c!454678 () Bool)

(assert (=> b!2806425 (= c!454678 (is-IntegerValue!15337 (value!157276 (h!38137 l!5055))))))

(declare-fun b!2806426 () Bool)

(declare-fun e!1774293 () Bool)

(declare-fun inv!15 (TokenValue!5112) Bool)

(assert (=> b!2806426 (= e!1774293 (inv!15 (value!157276 (h!38137 l!5055))))))

(declare-fun b!2806427 () Bool)

(declare-fun res!1169136 () Bool)

(assert (=> b!2806427 (=> res!1169136 e!1774293)))

(assert (=> b!2806427 (= res!1169136 (not (is-IntegerValue!15338 (value!157276 (h!38137 l!5055)))))))

(assert (=> b!2806427 (= e!1774294 e!1774293)))

(declare-fun d!814601 () Bool)

(declare-fun c!454677 () Bool)

(assert (=> d!814601 (= c!454677 (is-IntegerValue!15336 (value!157276 (h!38137 l!5055))))))

(assert (=> d!814601 (= (inv!21 (value!157276 (h!38137 l!5055))) e!1774295)))

(assert (= (and d!814601 c!454677) b!2806424))

(assert (= (and d!814601 (not c!454677)) b!2806425))

(assert (= (and b!2806425 c!454678) b!2806423))

(assert (= (and b!2806425 (not c!454678)) b!2806427))

(assert (= (and b!2806427 (not res!1169136)) b!2806426))

(declare-fun m!3235365 () Bool)

(assert (=> b!2806423 m!3235365))

(declare-fun m!3235367 () Bool)

(assert (=> b!2806424 m!3235367))

(declare-fun m!3235369 () Bool)

(assert (=> b!2806426 m!3235369))

(assert (=> b!2806195 d!814601))

(declare-fun d!814611 () Bool)

(declare-fun res!1169138 () Bool)

(declare-fun e!1774298 () Bool)

(assert (=> d!814611 (=> (not res!1169138) (not e!1774298))))

(assert (=> d!814611 (= res!1169138 (not (isEmpty!18185 (originalCharacters!5622 (h!38137 l!5055)))))))

(assert (=> d!814611 (= (inv!44392 (h!38137 l!5055)) e!1774298)))

(declare-fun b!2806431 () Bool)

(declare-fun res!1169139 () Bool)

(assert (=> b!2806431 (=> (not res!1169139) (not e!1774298))))

(assert (=> b!2806431 (= res!1169139 (= (originalCharacters!5622 (h!38137 l!5055)) (list!12248 (dynLambda!13695 (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055)))) (value!157276 (h!38137 l!5055))))))))

(declare-fun b!2806432 () Bool)

(assert (=> b!2806432 (= e!1774298 (= (size!25515 (h!38137 l!5055)) (size!25519 (originalCharacters!5622 (h!38137 l!5055)))))))

(assert (= (and d!814611 res!1169138) b!2806431))

(assert (= (and b!2806431 res!1169139) b!2806432))

(declare-fun b_lambda!83841 () Bool)

(assert (=> (not b_lambda!83841) (not b!2806431)))

(declare-fun t!229213 () Bool)

(declare-fun tb!153139 () Bool)

(assert (=> (and b!2806206 (= (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055)))) (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055))))) t!229213) tb!153139))

(declare-fun b!2806433 () Bool)

(declare-fun e!1774299 () Bool)

(declare-fun tp!895476 () Bool)

(assert (=> b!2806433 (= e!1774299 (and (inv!44396 (c!454654 (dynLambda!13695 (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055)))) (value!157276 (h!38137 l!5055))))) tp!895476))))

(declare-fun result!190316 () Bool)

(assert (=> tb!153139 (= result!190316 (and (inv!44397 (dynLambda!13695 (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055)))) (value!157276 (h!38137 l!5055)))) e!1774299))))

(assert (= tb!153139 b!2806433))

(declare-fun m!3235375 () Bool)

(assert (=> b!2806433 m!3235375))

(declare-fun m!3235377 () Bool)

(assert (=> tb!153139 m!3235377))

(assert (=> b!2806431 t!229213))

(declare-fun b_and!204741 () Bool)

(assert (= b_and!204735 (and (=> t!229213 result!190316) b_and!204741)))

(declare-fun t!229215 () Bool)

(declare-fun tb!153141 () Bool)

(assert (=> (and b!2806205 (= (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283))) (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055))))) t!229215) tb!153141))

(declare-fun result!190318 () Bool)

(assert (= result!190318 result!190316))

(assert (=> b!2806431 t!229215))

(declare-fun b_and!204743 () Bool)

(assert (= b_and!204737 (and (=> t!229215 result!190318) b_and!204743)))

(declare-fun t!229217 () Bool)

(declare-fun tb!153143 () Bool)

(assert (=> (and b!2806190 (= (toChars!6747 (transformation!4890 (h!38136 rules!2540))) (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055))))) t!229217) tb!153143))

(declare-fun result!190320 () Bool)

(assert (= result!190320 result!190316))

(assert (=> b!2806431 t!229217))

(declare-fun b_and!204745 () Bool)

(assert (= b_and!204739 (and (=> t!229217 result!190320) b_and!204745)))

(declare-fun m!3235379 () Bool)

(assert (=> d!814611 m!3235379))

(declare-fun m!3235381 () Bool)

(assert (=> b!2806431 m!3235381))

(assert (=> b!2806431 m!3235381))

(declare-fun m!3235383 () Bool)

(assert (=> b!2806431 m!3235383))

(declare-fun m!3235385 () Bool)

(assert (=> b!2806432 m!3235385))

(assert (=> b!2806196 d!814611))

(declare-fun d!814615 () Bool)

(assert (=> d!814615 (= (isEmpty!18181 rules!2540) (is-Nil!32716 rules!2540))))

(assert (=> b!2806197 d!814615))

(declare-fun d!814617 () Bool)

(assert (=> d!814617 (= (inv!44389 (tag!5394 (h!38136 rules!2540))) (= (mod (str.len (value!157275 (tag!5394 (h!38136 rules!2540)))) 2) 0))))

(assert (=> b!2806198 d!814617))

(declare-fun d!814619 () Bool)

(declare-fun res!1169140 () Bool)

(declare-fun e!1774300 () Bool)

(assert (=> d!814619 (=> (not res!1169140) (not e!1774300))))

(assert (=> d!814619 (= res!1169140 (semiInverseModEq!2018 (toChars!6747 (transformation!4890 (h!38136 rules!2540))) (toValue!6888 (transformation!4890 (h!38136 rules!2540)))))))

(assert (=> d!814619 (= (inv!44393 (transformation!4890 (h!38136 rules!2540))) e!1774300)))

(declare-fun b!2806434 () Bool)

(assert (=> b!2806434 (= e!1774300 (equivClasses!1919 (toChars!6747 (transformation!4890 (h!38136 rules!2540))) (toValue!6888 (transformation!4890 (h!38136 rules!2540)))))))

(assert (= (and d!814619 res!1169140) b!2806434))

(declare-fun m!3235387 () Bool)

(assert (=> d!814619 m!3235387))

(declare-fun m!3235389 () Bool)

(assert (=> b!2806434 m!3235389))

(assert (=> b!2806198 d!814619))

(declare-fun b!2806435 () Bool)

(declare-fun e!1774302 () Bool)

(assert (=> b!2806435 (= e!1774302 (inv!17 (value!157276 separatorToken!283)))))

(declare-fun b!2806436 () Bool)

(declare-fun e!1774303 () Bool)

(assert (=> b!2806436 (= e!1774303 (inv!16 (value!157276 separatorToken!283)))))

(declare-fun b!2806437 () Bool)

(assert (=> b!2806437 (= e!1774303 e!1774302)))

(declare-fun c!454681 () Bool)

(assert (=> b!2806437 (= c!454681 (is-IntegerValue!15337 (value!157276 separatorToken!283)))))

(declare-fun b!2806438 () Bool)

(declare-fun e!1774301 () Bool)

(assert (=> b!2806438 (= e!1774301 (inv!15 (value!157276 separatorToken!283)))))

(declare-fun b!2806439 () Bool)

(declare-fun res!1169141 () Bool)

(assert (=> b!2806439 (=> res!1169141 e!1774301)))

(assert (=> b!2806439 (= res!1169141 (not (is-IntegerValue!15338 (value!157276 separatorToken!283))))))

(assert (=> b!2806439 (= e!1774302 e!1774301)))

(declare-fun d!814621 () Bool)

(declare-fun c!454680 () Bool)

(assert (=> d!814621 (= c!454680 (is-IntegerValue!15336 (value!157276 separatorToken!283)))))

(assert (=> d!814621 (= (inv!21 (value!157276 separatorToken!283)) e!1774303)))

(assert (= (and d!814621 c!454680) b!2806436))

(assert (= (and d!814621 (not c!454680)) b!2806437))

(assert (= (and b!2806437 c!454681) b!2806435))

(assert (= (and b!2806437 (not c!454681)) b!2806439))

(assert (= (and b!2806439 (not res!1169141)) b!2806438))

(declare-fun m!3235391 () Bool)

(assert (=> b!2806435 m!3235391))

(declare-fun m!3235393 () Bool)

(assert (=> b!2806436 m!3235393))

(declare-fun m!3235395 () Bool)

(assert (=> b!2806438 m!3235395))

(assert (=> b!2806199 d!814621))

(declare-fun b!2806456 () Bool)

(declare-fun e!1774309 () Bool)

(declare-fun tp_is_empty!14301 () Bool)

(assert (=> b!2806456 (= e!1774309 tp_is_empty!14301)))

(declare-fun b!2806457 () Bool)

(declare-fun tp!895490 () Bool)

(declare-fun tp!895487 () Bool)

(assert (=> b!2806457 (= e!1774309 (and tp!895490 tp!895487))))

(declare-fun b!2806458 () Bool)

(declare-fun tp!895488 () Bool)

(assert (=> b!2806458 (= e!1774309 tp!895488)))

(declare-fun b!2806459 () Bool)

(declare-fun tp!895489 () Bool)

(declare-fun tp!895491 () Bool)

(assert (=> b!2806459 (= e!1774309 (and tp!895489 tp!895491))))

(assert (=> b!2806201 (= tp!895421 e!1774309)))

(assert (= (and b!2806201 (is-ElementMatch!8260 (regex!4890 (rule!7318 (h!38137 l!5055))))) b!2806456))

(assert (= (and b!2806201 (is-Concat!13373 (regex!4890 (rule!7318 (h!38137 l!5055))))) b!2806457))

(assert (= (and b!2806201 (is-Star!8260 (regex!4890 (rule!7318 (h!38137 l!5055))))) b!2806458))

(assert (= (and b!2806201 (is-Union!8260 (regex!4890 (rule!7318 (h!38137 l!5055))))) b!2806459))

(declare-fun b!2806460 () Bool)

(declare-fun e!1774310 () Bool)

(assert (=> b!2806460 (= e!1774310 tp_is_empty!14301)))

(declare-fun b!2806461 () Bool)

(declare-fun tp!895495 () Bool)

(declare-fun tp!895492 () Bool)

(assert (=> b!2806461 (= e!1774310 (and tp!895495 tp!895492))))

(declare-fun b!2806462 () Bool)

(declare-fun tp!895493 () Bool)

(assert (=> b!2806462 (= e!1774310 tp!895493)))

(declare-fun b!2806463 () Bool)

(declare-fun tp!895494 () Bool)

(declare-fun tp!895496 () Bool)

(assert (=> b!2806463 (= e!1774310 (and tp!895494 tp!895496))))

(assert (=> b!2806191 (= tp!895430 e!1774310)))

(assert (= (and b!2806191 (is-ElementMatch!8260 (regex!4890 (rule!7318 separatorToken!283)))) b!2806460))

(assert (= (and b!2806191 (is-Concat!13373 (regex!4890 (rule!7318 separatorToken!283)))) b!2806461))

(assert (= (and b!2806191 (is-Star!8260 (regex!4890 (rule!7318 separatorToken!283)))) b!2806462))

(assert (= (and b!2806191 (is-Union!8260 (regex!4890 (rule!7318 separatorToken!283)))) b!2806463))

(declare-fun b!2806482 () Bool)

(declare-fun b_free!79901 () Bool)

(declare-fun b_next!80605 () Bool)

(assert (=> b!2806482 (= b_free!79901 (not b_next!80605))))

(declare-fun tp!895511 () Bool)

(declare-fun b_and!204755 () Bool)

(assert (=> b!2806482 (= tp!895511 b_and!204755)))

(declare-fun b_free!79903 () Bool)

(declare-fun b_next!80607 () Bool)

(assert (=> b!2806482 (= b_free!79903 (not b_next!80607))))

(declare-fun tb!153157 () Bool)

(declare-fun t!229231 () Bool)

(assert (=> (and b!2806482 (= (toChars!6747 (transformation!4890 (h!38136 (t!229192 rules!2540)))) (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283)))) t!229231) tb!153157))

(declare-fun result!190340 () Bool)

(assert (= result!190340 result!190308))

(assert (=> b!2806376 t!229231))

(declare-fun tb!153159 () Bool)

(declare-fun t!229233 () Bool)

(assert (=> (and b!2806482 (= (toChars!6747 (transformation!4890 (h!38136 (t!229192 rules!2540)))) (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055))))) t!229233) tb!153159))

(declare-fun result!190342 () Bool)

(assert (= result!190342 result!190316))

(assert (=> b!2806431 t!229233))

(declare-fun b_and!204757 () Bool)

(declare-fun tp!895512 () Bool)

(assert (=> b!2806482 (= tp!895512 (and (=> t!229231 result!190340) (=> t!229233 result!190342) b_and!204757))))

(declare-fun e!1774326 () Bool)

(assert (=> b!2806482 (= e!1774326 (and tp!895511 tp!895512))))

(declare-fun tp!895509 () Bool)

(declare-fun e!1774327 () Bool)

(declare-fun b!2806481 () Bool)

(assert (=> b!2806481 (= e!1774327 (and tp!895509 (inv!44389 (tag!5394 (h!38136 (t!229192 rules!2540)))) (inv!44393 (transformation!4890 (h!38136 (t!229192 rules!2540)))) e!1774326))))

(declare-fun b!2806480 () Bool)

(declare-fun e!1774324 () Bool)

(declare-fun tp!895510 () Bool)

(assert (=> b!2806480 (= e!1774324 (and e!1774327 tp!895510))))

(assert (=> b!2806202 (= tp!895428 e!1774324)))

(assert (= b!2806481 b!2806482))

(assert (= b!2806480 b!2806481))

(assert (= (and b!2806202 (is-Cons!32716 (t!229192 rules!2540))) b!2806480))

(declare-fun m!3235421 () Bool)

(assert (=> b!2806481 m!3235421))

(declare-fun m!3235423 () Bool)

(assert (=> b!2806481 m!3235423))

(declare-fun b!2806487 () Bool)

(declare-fun e!1774330 () Bool)

(declare-fun tp!895515 () Bool)

(assert (=> b!2806487 (= e!1774330 (and tp_is_empty!14301 tp!895515))))

(assert (=> b!2806195 (= tp!895427 e!1774330)))

(assert (= (and b!2806195 (is-Cons!32715 (originalCharacters!5622 (h!38137 l!5055)))) b!2806487))

(declare-fun b!2806490 () Bool)

(declare-fun e!1774333 () Bool)

(assert (=> b!2806490 (= e!1774333 true)))

(declare-fun b!2806489 () Bool)

(declare-fun e!1774332 () Bool)

(assert (=> b!2806489 (= e!1774332 e!1774333)))

(declare-fun b!2806488 () Bool)

(declare-fun e!1774331 () Bool)

(assert (=> b!2806488 (= e!1774331 e!1774332)))

(assert (=> b!2806215 e!1774331))

(assert (= b!2806489 b!2806490))

(assert (= b!2806488 b!2806489))

(assert (= (and b!2806215 (is-Cons!32716 (t!229192 rules!2540))) b!2806488))

(assert (=> b!2806490 (< (dynLambda!13688 order!17361 (toValue!6888 (transformation!4890 (h!38136 (t!229192 rules!2540))))) (dynLambda!13689 order!17363 lambda!103080))))

(assert (=> b!2806490 (< (dynLambda!13690 order!17365 (toChars!6747 (transformation!4890 (h!38136 (t!229192 rules!2540))))) (dynLambda!13689 order!17363 lambda!103080))))

(declare-fun b!2806521 () Bool)

(declare-fun b_free!79905 () Bool)

(declare-fun b_next!80609 () Bool)

(assert (=> b!2806521 (= b_free!79905 (not b_next!80609))))

(declare-fun tp!895542 () Bool)

(declare-fun b_and!204763 () Bool)

(assert (=> b!2806521 (= tp!895542 b_and!204763)))

(declare-fun b_free!79907 () Bool)

(declare-fun b_next!80611 () Bool)

(assert (=> b!2806521 (= b_free!79907 (not b_next!80611))))

(declare-fun t!229235 () Bool)

(declare-fun tb!153161 () Bool)

(assert (=> (and b!2806521 (= (toChars!6747 (transformation!4890 (rule!7318 (h!38137 (t!229193 l!5055))))) (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283)))) t!229235) tb!153161))

(declare-fun result!190352 () Bool)

(assert (= result!190352 result!190308))

(assert (=> b!2806376 t!229235))

(declare-fun t!229237 () Bool)

(declare-fun tb!153163 () Bool)

(assert (=> (and b!2806521 (= (toChars!6747 (transformation!4890 (rule!7318 (h!38137 (t!229193 l!5055))))) (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055))))) t!229237) tb!153163))

(declare-fun result!190354 () Bool)

(assert (= result!190354 result!190316))

(assert (=> b!2806431 t!229237))

(declare-fun b_and!204765 () Bool)

(declare-fun tp!895544 () Bool)

(assert (=> b!2806521 (= tp!895544 (and (=> t!229235 result!190352) (=> t!229237 result!190354) b_and!204765))))

(declare-fun e!1774354 () Bool)

(declare-fun tp!895541 () Bool)

(declare-fun e!1774355 () Bool)

(declare-fun b!2806519 () Bool)

(assert (=> b!2806519 (= e!1774354 (and (inv!21 (value!157276 (h!38137 (t!229193 l!5055)))) e!1774355 tp!895541))))

(declare-fun e!1774356 () Bool)

(declare-fun tp!895545 () Bool)

(declare-fun b!2806520 () Bool)

(assert (=> b!2806520 (= e!1774355 (and tp!895545 (inv!44389 (tag!5394 (rule!7318 (h!38137 (t!229193 l!5055))))) (inv!44393 (transformation!4890 (rule!7318 (h!38137 (t!229193 l!5055))))) e!1774356))))

(assert (=> b!2806521 (= e!1774356 (and tp!895542 tp!895544))))

(declare-fun e!1774352 () Bool)

(assert (=> b!2806196 (= tp!895433 e!1774352)))

(declare-fun tp!895543 () Bool)

(declare-fun b!2806518 () Bool)

(assert (=> b!2806518 (= e!1774352 (and (inv!44392 (h!38137 (t!229193 l!5055))) e!1774354 tp!895543))))

(assert (= b!2806520 b!2806521))

(assert (= b!2806519 b!2806520))

(assert (= b!2806518 b!2806519))

(assert (= (and b!2806196 (is-Cons!32717 (t!229193 l!5055))) b!2806518))

(declare-fun m!3235429 () Bool)

(assert (=> b!2806519 m!3235429))

(declare-fun m!3235431 () Bool)

(assert (=> b!2806520 m!3235431))

(declare-fun m!3235433 () Bool)

(assert (=> b!2806520 m!3235433))

(declare-fun m!3235435 () Bool)

(assert (=> b!2806518 m!3235435))

(declare-fun b!2806530 () Bool)

(declare-fun e!1774366 () Bool)

(assert (=> b!2806530 (= e!1774366 tp_is_empty!14301)))

(declare-fun b!2806531 () Bool)

(declare-fun tp!895555 () Bool)

(declare-fun tp!895550 () Bool)

(assert (=> b!2806531 (= e!1774366 (and tp!895555 tp!895550))))

(declare-fun b!2806532 () Bool)

(declare-fun tp!895552 () Bool)

(assert (=> b!2806532 (= e!1774366 tp!895552)))

(declare-fun b!2806533 () Bool)

(declare-fun tp!895554 () Bool)

(declare-fun tp!895556 () Bool)

(assert (=> b!2806533 (= e!1774366 (and tp!895554 tp!895556))))

(assert (=> b!2806198 (= tp!895425 e!1774366)))

(assert (= (and b!2806198 (is-ElementMatch!8260 (regex!4890 (h!38136 rules!2540)))) b!2806530))

(assert (= (and b!2806198 (is-Concat!13373 (regex!4890 (h!38136 rules!2540)))) b!2806531))

(assert (= (and b!2806198 (is-Star!8260 (regex!4890 (h!38136 rules!2540)))) b!2806532))

(assert (= (and b!2806198 (is-Union!8260 (regex!4890 (h!38136 rules!2540)))) b!2806533))

(declare-fun b!2806534 () Bool)

(declare-fun e!1774367 () Bool)

(declare-fun tp!895559 () Bool)

(assert (=> b!2806534 (= e!1774367 (and tp_is_empty!14301 tp!895559))))

(assert (=> b!2806199 (= tp!895432 e!1774367)))

(assert (= (and b!2806199 (is-Cons!32715 (originalCharacters!5622 separatorToken!283))) b!2806534))

(declare-fun b_lambda!83847 () Bool)

(assert (= b_lambda!83841 (or (and b!2806190 b_free!79887 (= (toChars!6747 (transformation!4890 (h!38136 rules!2540))) (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055)))))) (and b!2806205 b_free!79883 (= (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283))) (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055)))))) (and b!2806521 b_free!79907 (= (toChars!6747 (transformation!4890 (rule!7318 (h!38137 (t!229193 l!5055))))) (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055)))))) (and b!2806482 b_free!79903 (= (toChars!6747 (transformation!4890 (h!38136 (t!229192 rules!2540)))) (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055)))))) (and b!2806206 b_free!79879) b_lambda!83847)))

(declare-fun b_lambda!83849 () Bool)

(assert (= b_lambda!83837 (or (and b!2806205 b_free!79883) (and b!2806521 b_free!79907 (= (toChars!6747 (transformation!4890 (rule!7318 (h!38137 (t!229193 l!5055))))) (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283))))) (and b!2806206 b_free!79879 (= (toChars!6747 (transformation!4890 (rule!7318 (h!38137 l!5055)))) (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283))))) (and b!2806482 b_free!79903 (= (toChars!6747 (transformation!4890 (h!38136 (t!229192 rules!2540)))) (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283))))) (and b!2806190 b_free!79887 (= (toChars!6747 (transformation!4890 (h!38136 rules!2540))) (toChars!6747 (transformation!4890 (rule!7318 separatorToken!283))))) b_lambda!83849)))

(declare-fun b_lambda!83851 () Bool)

(assert (= b_lambda!83835 (or b!2806192 b_lambda!83851)))

(declare-fun bs!516127 () Bool)

(declare-fun d!814627 () Bool)

(assert (= bs!516127 (and d!814627 b!2806192)))

(assert (=> bs!516127 (= (dynLambda!13694 lambda!103080 (h!38137 l!5055)) (rulesProduceIndividualToken!2045 thiss!19710 rules!2540 (h!38137 l!5055)))))

(assert (=> bs!516127 m!3235151))

(assert (=> d!814577 d!814627))

(push 1)

(assert (not b!2806480))

(assert (not b_next!80607))

(assert (not b!2806461))

(assert (not b!2806376))

(assert (not b!2806433))

(assert (not b_next!80585))

(assert (not b!2806462))

(assert (not b!2806423))

(assert (not b!2806353))

(assert (not b!2806304))

(assert b_and!204715)

(assert (not b!2806311))

(assert (not b!2806481))

(assert (not b!2806532))

(assert (not b_lambda!83849))

(assert (not b!2806434))

(assert (not tb!153139))

(assert (not b!2806401))

(assert (not d!814549))

(assert (not d!814619))

(assert (not b!2806424))

(assert (not b_next!80605))

(assert (not d!814577))

(assert (not b!2806325))

(assert (not b_lambda!83847))

(assert (not d!814571))

(assert (not tb!153133))

(assert (not b_lambda!83851))

(assert (not b!2806377))

(assert (not b!2806432))

(assert b_and!204745)

(assert (not b!2806438))

(assert (not b_next!80587))

(assert (not b!2806519))

(assert (not b_next!80591))

(assert (not b!2806326))

(assert (not b!2806436))

(assert (not b_next!80583))

(assert (not b!2806431))

(assert (not d!814611))

(assert b_and!204765)

(assert (not b!2806520))

(assert b_and!204711)

(assert (not b_next!80581))

(assert (not b!2806531))

(assert b_and!204743)

(assert (not b!2806352))

(assert (not bs!516127))

(assert (not b!2806426))

(assert (not b!2806403))

(assert (not b!2806354))

(assert b_and!204719)

(assert (not d!814563))

(assert (not b_next!80609))

(assert (not b_next!80611))

(assert b_and!204755)

(assert (not d!814569))

(assert (not b!2806488))

(assert (not b!2806534))

(assert (not b!2806355))

(assert tp_is_empty!14301)

(assert (not d!814583))

(assert (not b!2806458))

(assert (not b!2806463))

(assert (not b!2806457))

(assert (not b!2806289))

(assert (not b!2806305))

(assert b_and!204757)

(assert (not b!2806487))

(assert (not b!2806310))

(assert (not b!2806342))

(assert (not d!814567))

(assert (not d!814573))

(assert (not b!2806533))

(assert (not d!814547))

(assert (not b!2806392))

(assert (not b!2806343))

(assert (not b!2806344))

(assert (not d!814579))

(assert (not b!2806435))

(assert (not b!2806518))

(assert (not b_next!80589))

(assert (not b!2806303))

(assert (not b!2806459))

(assert b_and!204741)

(assert b_and!204763)

(assert (not b!2806323))

(assert (not b!2806324))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!80585))

(assert b_and!204715)

(assert (not b_next!80605))

(assert (not b_next!80591))

(assert (not b_next!80583))

(assert b_and!204765)

(assert b_and!204711)

(assert (not b_next!80607))

(assert b_and!204757)

(assert (not b_next!80589))

(assert b_and!204745)

(assert (not b_next!80587))

(assert (not b_next!80581))

(assert b_and!204743)

(assert b_and!204719)

(assert (not b_next!80609))

(assert (not b_next!80611))

(assert b_and!204755)

(assert b_and!204741)

(assert b_and!204763)

(check-sat)

(pop 1)

