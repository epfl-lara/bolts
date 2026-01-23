; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!241000 () Bool)

(assert start!241000)

(declare-fun b!2471133 () Bool)

(declare-fun b_free!71333 () Bool)

(declare-fun b_next!72037 () Bool)

(assert (=> b!2471133 (= b_free!71333 (not b_next!72037))))

(declare-fun tp!789470 () Bool)

(declare-fun b_and!187173 () Bool)

(assert (=> b!2471133 (= tp!789470 b_and!187173)))

(declare-fun b_free!71335 () Bool)

(declare-fun b_next!72039 () Bool)

(assert (=> b!2471133 (= b_free!71335 (not b_next!72039))))

(declare-fun tp!789460 () Bool)

(declare-fun b_and!187175 () Bool)

(assert (=> b!2471133 (= tp!789460 b_and!187175)))

(declare-fun b!2471116 () Bool)

(declare-fun b_free!71337 () Bool)

(declare-fun b_next!72041 () Bool)

(assert (=> b!2471116 (= b_free!71337 (not b_next!72041))))

(declare-fun tp!789458 () Bool)

(declare-fun b_and!187177 () Bool)

(assert (=> b!2471116 (= tp!789458 b_and!187177)))

(declare-fun b_free!71339 () Bool)

(declare-fun b_next!72043 () Bool)

(assert (=> b!2471116 (= b_free!71339 (not b_next!72043))))

(declare-fun tp!789465 () Bool)

(declare-fun b_and!187179 () Bool)

(assert (=> b!2471116 (= tp!789465 b_and!187179)))

(declare-fun b!2471122 () Bool)

(declare-fun b_free!71341 () Bool)

(declare-fun b_next!72045 () Bool)

(assert (=> b!2471122 (= b_free!71341 (not b_next!72045))))

(declare-fun tp!789456 () Bool)

(declare-fun b_and!187181 () Bool)

(assert (=> b!2471122 (= tp!789456 b_and!187181)))

(declare-fun b_free!71343 () Bool)

(declare-fun b_next!72047 () Bool)

(assert (=> b!2471122 (= b_free!71343 (not b_next!72047))))

(declare-fun tp!789461 () Bool)

(declare-fun b_and!187183 () Bool)

(assert (=> b!2471122 (= tp!789461 b_and!187183)))

(declare-fun b!2471121 () Bool)

(declare-fun b_free!71345 () Bool)

(declare-fun b_next!72049 () Bool)

(assert (=> b!2471121 (= b_free!71345 (not b_next!72049))))

(declare-fun tp!789469 () Bool)

(declare-fun b_and!187185 () Bool)

(assert (=> b!2471121 (= tp!789469 b_and!187185)))

(declare-fun b_free!71347 () Bool)

(declare-fun b_next!72051 () Bool)

(assert (=> b!2471121 (= b_free!71347 (not b_next!72051))))

(declare-fun tp!789468 () Bool)

(declare-fun b_and!187187 () Bool)

(assert (=> b!2471121 (= tp!789468 b_and!187187)))

(declare-fun b!2471111 () Bool)

(declare-fun res!1046300 () Bool)

(declare-fun e!1567154 () Bool)

(assert (=> b!2471111 (=> (not res!1046300) (not e!1567154))))

(declare-datatypes ((List!28898 0))(
  ( (Nil!28798) (Cons!28798 (h!34199 (_ BitVec 16)) (t!209909 List!28898)) )
))
(declare-datatypes ((TokenValue!4672 0))(
  ( (FloatLiteralValue!9344 (text!33149 List!28898)) (TokenValueExt!4671 (__x!18599 Int)) (Broken!23360 (value!143232 List!28898)) (Object!4771) (End!4672) (Def!4672) (Underscore!4672) (Match!4672) (Else!4672) (Error!4672) (Case!4672) (If!4672) (Extends!4672) (Abstract!4672) (Class!4672) (Val!4672) (DelimiterValue!9344 (del!4732 List!28898)) (KeywordValue!4678 (value!143233 List!28898)) (CommentValue!9344 (value!143234 List!28898)) (WhitespaceValue!9344 (value!143235 List!28898)) (IndentationValue!4672 (value!143236 List!28898)) (String!31657) (Int32!4672) (Broken!23361 (value!143237 List!28898)) (Boolean!4673) (Unit!42144) (OperatorValue!4675 (op!4732 List!28898)) (IdentifierValue!9344 (value!143238 List!28898)) (IdentifierValue!9345 (value!143239 List!28898)) (WhitespaceValue!9345 (value!143240 List!28898)) (True!9344) (False!9344) (Broken!23362 (value!143241 List!28898)) (Broken!23363 (value!143242 List!28898)) (True!9345) (RightBrace!4672) (RightBracket!4672) (Colon!4672) (Null!4672) (Comma!4672) (LeftBracket!4672) (False!9345) (LeftBrace!4672) (ImaginaryLiteralValue!4672 (text!33150 List!28898)) (StringLiteralValue!14016 (value!143243 List!28898)) (EOFValue!4672 (value!143244 List!28898)) (IdentValue!4672 (value!143245 List!28898)) (DelimiterValue!9345 (value!143246 List!28898)) (DedentValue!4672 (value!143247 List!28898)) (NewLineValue!4672 (value!143248 List!28898)) (IntegerValue!14016 (value!143249 (_ BitVec 32)) (text!33151 List!28898)) (IntegerValue!14017 (value!143250 Int) (text!33152 List!28898)) (Times!4672) (Or!4672) (Equal!4672) (Minus!4672) (Broken!23364 (value!143251 List!28898)) (And!4672) (Div!4672) (LessEqual!4672) (Mod!4672) (Concat!11946) (Not!4672) (Plus!4672) (SpaceValue!4672 (value!143252 List!28898)) (IntegerValue!14018 (value!143253 Int) (text!33153 List!28898)) (StringLiteralValue!14017 (text!33154 List!28898)) (FloatLiteralValue!9345 (text!33155 List!28898)) (BytesLiteralValue!4672 (value!143254 List!28898)) (CommentValue!9345 (value!143255 List!28898)) (StringLiteralValue!14018 (value!143256 List!28898)) (ErrorTokenValue!4672 (msg!4733 List!28898)) )
))
(declare-datatypes ((C!14706 0))(
  ( (C!14707 (val!8613 Int)) )
))
(declare-datatypes ((List!28899 0))(
  ( (Nil!28799) (Cons!28799 (h!34200 C!14706) (t!209910 List!28899)) )
))
(declare-datatypes ((IArray!18409 0))(
  ( (IArray!18410 (innerList!9262 List!28899)) )
))
(declare-datatypes ((Conc!9202 0))(
  ( (Node!9202 (left!22096 Conc!9202) (right!22426 Conc!9202) (csize!18634 Int) (cheight!9413 Int)) (Leaf!13753 (xs!12186 IArray!18409) (csize!18635 Int)) (Empty!9202) )
))
(declare-datatypes ((BalanceConc!18018 0))(
  ( (BalanceConc!18019 (c!393690 Conc!9202)) )
))
(declare-datatypes ((Regex!7274 0))(
  ( (ElementMatch!7274 (c!393691 C!14706)) (Concat!11947 (regOne!15060 Regex!7274) (regTwo!15060 Regex!7274)) (EmptyExpr!7274) (Star!7274 (reg!7603 Regex!7274)) (EmptyLang!7274) (Union!7274 (regOne!15061 Regex!7274) (regTwo!15061 Regex!7274)) )
))
(declare-datatypes ((String!31658 0))(
  ( (String!31659 (value!143257 String)) )
))
(declare-datatypes ((TokenValueInjection!8844 0))(
  ( (TokenValueInjection!8845 (toValue!6350 Int) (toChars!6209 Int)) )
))
(declare-datatypes ((Rule!8772 0))(
  ( (Rule!8773 (regex!4486 Regex!7274) (tag!4976 String!31658) (isSeparator!4486 Bool) (transformation!4486 TokenValueInjection!8844)) )
))
(declare-datatypes ((Token!8442 0))(
  ( (Token!8443 (value!143258 TokenValue!4672) (rule!6844 Rule!8772) (size!22413 Int) (originalCharacters!5252 List!28899)) )
))
(declare-datatypes ((List!28900 0))(
  ( (Nil!28800) (Cons!28800 (h!34201 Token!8442) (t!209911 List!28900)) )
))
(declare-fun l!6611 () List!28900)

(declare-fun i!1803 () Int)

(declare-fun t1!67 () Token!8442)

(declare-fun apply!6789 (List!28900 Int) Token!8442)

(assert (=> b!2471111 (= res!1046300 (= (apply!6789 l!6611 i!1803) t1!67))))

(declare-fun b!2471112 () Bool)

(declare-fun res!1046303 () Bool)

(assert (=> b!2471112 (=> (not res!1046303) (not e!1567154))))

(declare-datatypes ((LexerInterface!4083 0))(
  ( (LexerInterfaceExt!4080 (__x!18600 Int)) (Lexer!4081) )
))
(declare-fun thiss!27932 () LexerInterface!4083)

(declare-datatypes ((List!28901 0))(
  ( (Nil!28801) (Cons!28801 (h!34202 Rule!8772) (t!209912 List!28901)) )
))
(declare-fun rules!4472 () List!28901)

(declare-fun rulesInvariant!3583 (LexerInterface!4083 List!28901) Bool)

(assert (=> b!2471112 (= res!1046303 (rulesInvariant!3583 thiss!27932 rules!4472))))

(declare-fun b!2471113 () Bool)

(declare-fun res!1046295 () Bool)

(assert (=> b!2471113 (=> (not res!1046295) (not e!1567154))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!622 (LexerInterface!4083 List!28900 List!28901) Bool)

(assert (=> b!2471113 (= res!1046295 (tokensListTwoByTwoPredicateSeparableList!622 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2471114 () Bool)

(declare-fun res!1046298 () Bool)

(assert (=> b!2471114 (=> (not res!1046298) (not e!1567154))))

(assert (=> b!2471114 (= res!1046298 (>= i!1803 0))))

(declare-fun b!2471115 () Bool)

(declare-fun res!1046301 () Bool)

(assert (=> b!2471115 (=> (not res!1046301) (not e!1567154))))

(declare-fun size!22414 (List!28900) Int)

(assert (=> b!2471115 (= res!1046301 (< (+ 1 i!1803) (size!22414 l!6611)))))

(declare-fun e!1567158 () Bool)

(assert (=> b!2471116 (= e!1567158 (and tp!789458 tp!789465))))

(declare-fun tp!789467 () Bool)

(declare-fun e!1567155 () Bool)

(declare-fun b!2471117 () Bool)

(declare-fun inv!38887 (String!31658) Bool)

(declare-fun inv!38890 (TokenValueInjection!8844) Bool)

(assert (=> b!2471117 (= e!1567155 (and tp!789467 (inv!38887 (tag!4976 (rule!6844 t1!67))) (inv!38890 (transformation!4486 (rule!6844 t1!67))) e!1567158))))

(declare-fun b!2471118 () Bool)

(declare-fun res!1046304 () Bool)

(assert (=> b!2471118 (=> (not res!1046304) (not e!1567154))))

(declare-fun isEmpty!16731 (List!28901) Bool)

(assert (=> b!2471118 (= res!1046304 (not (isEmpty!16731 rules!4472)))))

(declare-fun e!1567162 () Bool)

(declare-fun tp!789464 () Bool)

(declare-fun e!1567152 () Bool)

(declare-fun t2!67 () Token!8442)

(declare-fun b!2471119 () Bool)

(assert (=> b!2471119 (= e!1567162 (and tp!789464 (inv!38887 (tag!4976 (rule!6844 t2!67))) (inv!38890 (transformation!4486 (rule!6844 t2!67))) e!1567152))))

(declare-fun res!1046299 () Bool)

(assert (=> start!241000 (=> (not res!1046299) (not e!1567154))))

(assert (=> start!241000 (= res!1046299 (is-Lexer!4081 thiss!27932))))

(assert (=> start!241000 e!1567154))

(assert (=> start!241000 true))

(declare-fun e!1567169 () Bool)

(assert (=> start!241000 e!1567169))

(declare-fun e!1567157 () Bool)

(declare-fun inv!38891 (Token!8442) Bool)

(assert (=> start!241000 (and (inv!38891 t2!67) e!1567157)))

(declare-fun e!1567160 () Bool)

(assert (=> start!241000 e!1567160))

(declare-fun e!1567150 () Bool)

(assert (=> start!241000 (and (inv!38891 t1!67) e!1567150)))

(declare-fun tp!789472 () Bool)

(declare-fun b!2471120 () Bool)

(declare-fun inv!21 (TokenValue!4672) Bool)

(assert (=> b!2471120 (= e!1567157 (and (inv!21 (value!143258 t2!67)) e!1567162 tp!789472))))

(declare-fun e!1567167 () Bool)

(assert (=> b!2471121 (= e!1567167 (and tp!789469 tp!789468))))

(declare-fun e!1567159 () Bool)

(assert (=> b!2471122 (= e!1567159 (and tp!789456 tp!789461))))

(declare-fun b!2471123 () Bool)

(declare-fun res!1046297 () Bool)

(assert (=> b!2471123 (=> (not res!1046297) (not e!1567154))))

(declare-fun separableTokensPredicate!860 (LexerInterface!4083 Token!8442 Token!8442 List!28901) Bool)

(assert (=> b!2471123 (= res!1046297 (separableTokensPredicate!860 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun b!2471124 () Bool)

(declare-fun e!1567149 () Bool)

(declare-fun tp!789457 () Bool)

(assert (=> b!2471124 (= e!1567169 (and e!1567149 tp!789457))))

(declare-fun tp!789459 () Bool)

(declare-fun b!2471125 () Bool)

(declare-fun e!1567165 () Bool)

(assert (=> b!2471125 (= e!1567160 (and (inv!38891 (h!34201 l!6611)) e!1567165 tp!789459))))

(declare-fun b!2471126 () Bool)

(declare-fun res!1046302 () Bool)

(assert (=> b!2471126 (=> (not res!1046302) (not e!1567154))))

(assert (=> b!2471126 (= res!1046302 (= i!1803 0))))

(declare-fun b!2471127 () Bool)

(declare-fun res!1046296 () Bool)

(assert (=> b!2471127 (=> (not res!1046296) (not e!1567154))))

(declare-fun rulesProduceEachTokenIndividuallyList!1399 (LexerInterface!4083 List!28901 List!28900) Bool)

(assert (=> b!2471127 (= res!1046296 (rulesProduceEachTokenIndividuallyList!1399 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2471128 () Bool)

(declare-fun res!1046294 () Bool)

(assert (=> b!2471128 (=> (not res!1046294) (not e!1567154))))

(assert (=> b!2471128 (= res!1046294 (= (apply!6789 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun tp!789466 () Bool)

(declare-fun e!1567161 () Bool)

(declare-fun b!2471129 () Bool)

(assert (=> b!2471129 (= e!1567161 (and tp!789466 (inv!38887 (tag!4976 (rule!6844 (h!34201 l!6611)))) (inv!38890 (transformation!4486 (rule!6844 (h!34201 l!6611)))) e!1567159))))

(declare-fun b!2471130 () Bool)

(declare-fun contains!4918 (List!28900 Token!8442) Bool)

(assert (=> b!2471130 (= e!1567154 (not (contains!4918 l!6611 t1!67)))))

(declare-fun b!2471131 () Bool)

(declare-fun tp!789463 () Bool)

(assert (=> b!2471131 (= e!1567149 (and tp!789463 (inv!38887 (tag!4976 (h!34202 rules!4472))) (inv!38890 (transformation!4486 (h!34202 rules!4472))) e!1567167))))

(declare-fun tp!789462 () Bool)

(declare-fun b!2471132 () Bool)

(assert (=> b!2471132 (= e!1567165 (and (inv!21 (value!143258 (h!34201 l!6611))) e!1567161 tp!789462))))

(assert (=> b!2471133 (= e!1567152 (and tp!789470 tp!789460))))

(declare-fun b!2471134 () Bool)

(declare-fun tp!789471 () Bool)

(assert (=> b!2471134 (= e!1567150 (and (inv!21 (value!143258 t1!67)) e!1567155 tp!789471))))

(assert (= (and start!241000 res!1046299) b!2471118))

(assert (= (and b!2471118 res!1046304) b!2471112))

(assert (= (and b!2471112 res!1046303) b!2471127))

(assert (= (and b!2471127 res!1046296) b!2471113))

(assert (= (and b!2471113 res!1046295) b!2471114))

(assert (= (and b!2471114 res!1046298) b!2471115))

(assert (= (and b!2471115 res!1046301) b!2471111))

(assert (= (and b!2471111 res!1046300) b!2471128))

(assert (= (and b!2471128 res!1046294) b!2471126))

(assert (= (and b!2471126 res!1046302) b!2471123))

(assert (= (and b!2471123 res!1046297) b!2471130))

(assert (= b!2471131 b!2471121))

(assert (= b!2471124 b!2471131))

(assert (= (and start!241000 (is-Cons!28801 rules!4472)) b!2471124))

(assert (= b!2471119 b!2471133))

(assert (= b!2471120 b!2471119))

(assert (= start!241000 b!2471120))

(assert (= b!2471129 b!2471122))

(assert (= b!2471132 b!2471129))

(assert (= b!2471125 b!2471132))

(assert (= (and start!241000 (is-Cons!28800 l!6611)) b!2471125))

(assert (= b!2471117 b!2471116))

(assert (= b!2471134 b!2471117))

(assert (= start!241000 b!2471134))

(declare-fun m!2840071 () Bool)

(assert (=> b!2471131 m!2840071))

(declare-fun m!2840073 () Bool)

(assert (=> b!2471131 m!2840073))

(declare-fun m!2840075 () Bool)

(assert (=> b!2471111 m!2840075))

(declare-fun m!2840077 () Bool)

(assert (=> b!2471128 m!2840077))

(declare-fun m!2840079 () Bool)

(assert (=> b!2471134 m!2840079))

(declare-fun m!2840081 () Bool)

(assert (=> b!2471115 m!2840081))

(declare-fun m!2840083 () Bool)

(assert (=> b!2471132 m!2840083))

(declare-fun m!2840085 () Bool)

(assert (=> b!2471129 m!2840085))

(declare-fun m!2840087 () Bool)

(assert (=> b!2471129 m!2840087))

(declare-fun m!2840089 () Bool)

(assert (=> b!2471123 m!2840089))

(declare-fun m!2840091 () Bool)

(assert (=> b!2471127 m!2840091))

(declare-fun m!2840093 () Bool)

(assert (=> b!2471125 m!2840093))

(declare-fun m!2840095 () Bool)

(assert (=> b!2471120 m!2840095))

(declare-fun m!2840097 () Bool)

(assert (=> start!241000 m!2840097))

(declare-fun m!2840099 () Bool)

(assert (=> start!241000 m!2840099))

(declare-fun m!2840101 () Bool)

(assert (=> b!2471118 m!2840101))

(declare-fun m!2840103 () Bool)

(assert (=> b!2471130 m!2840103))

(declare-fun m!2840105 () Bool)

(assert (=> b!2471113 m!2840105))

(declare-fun m!2840107 () Bool)

(assert (=> b!2471117 m!2840107))

(declare-fun m!2840109 () Bool)

(assert (=> b!2471117 m!2840109))

(declare-fun m!2840111 () Bool)

(assert (=> b!2471112 m!2840111))

(declare-fun m!2840113 () Bool)

(assert (=> b!2471119 m!2840113))

(declare-fun m!2840115 () Bool)

(assert (=> b!2471119 m!2840115))

(push 1)

(assert b_and!187175)

(assert (not b_next!72049))

(assert (not b_next!72045))

(assert (not b!2471129))

(assert (not b_next!72041))

(assert (not b_next!72039))

(assert b_and!187183)

(assert (not b!2471113))

(assert (not b_next!72047))

(assert (not b!2471115))

(assert (not start!241000))

(assert (not b!2471128))

(assert b_and!187177)

(assert (not b!2471125))

(assert b_and!187179)

(assert (not b!2471118))

(assert (not b!2471119))

(assert (not b!2471117))

(assert (not b!2471124))

(assert b_and!187173)

(assert (not b!2471134))

(assert (not b!2471111))

(assert (not b!2471120))

(assert (not b!2471132))

(assert (not b_next!72043))

(assert (not b!2471123))

(assert (not b_next!72051))

(assert (not b!2471130))

(assert (not b!2471131))

(assert (not b_next!72037))

(assert (not b!2471112))

(assert b_and!187185)

(assert (not b!2471127))

(assert b_and!187181)

(assert b_and!187187)

(check-sat)

(pop 1)

(push 1)

(assert b_and!187179)

(assert b_and!187175)

(assert (not b_next!72049))

(assert (not b_next!72045))

(assert (not b_next!72041))

(assert b_and!187173)

(assert (not b_next!72039))

(assert b_and!187183)

(assert (not b_next!72037))

(assert (not b_next!72047))

(assert b_and!187185)

(assert b_and!187177)

(assert (not b_next!72051))

(assert (not b_next!72043))

(assert b_and!187181)

(assert b_and!187187)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!711335 () Bool)

(declare-fun lt!883203 () Token!8442)

(assert (=> d!711335 (contains!4918 l!6611 lt!883203)))

(declare-fun e!1567241 () Token!8442)

(assert (=> d!711335 (= lt!883203 e!1567241)))

(declare-fun c!393696 () Bool)

(assert (=> d!711335 (= c!393696 (= (+ 1 i!1803) 0))))

(declare-fun e!1567240 () Bool)

(assert (=> d!711335 e!1567240))

(declare-fun res!1046351 () Bool)

(assert (=> d!711335 (=> (not res!1046351) (not e!1567240))))

(assert (=> d!711335 (= res!1046351 (<= 0 (+ 1 i!1803)))))

(assert (=> d!711335 (= (apply!6789 l!6611 (+ 1 i!1803)) lt!883203)))

(declare-fun b!2471216 () Bool)

(assert (=> b!2471216 (= e!1567240 (< (+ 1 i!1803) (size!22414 l!6611)))))

(declare-fun b!2471217 () Bool)

(declare-fun head!5640 (List!28900) Token!8442)

(assert (=> b!2471217 (= e!1567241 (head!5640 l!6611))))

(declare-fun b!2471218 () Bool)

(declare-fun tail!3921 (List!28900) List!28900)

(assert (=> b!2471218 (= e!1567241 (apply!6789 (tail!3921 l!6611) (- (+ 1 i!1803) 1)))))

(assert (= (and d!711335 res!1046351) b!2471216))

(assert (= (and d!711335 c!393696) b!2471217))

(assert (= (and d!711335 (not c!393696)) b!2471218))

(declare-fun m!2840167 () Bool)

(assert (=> d!711335 m!2840167))

(assert (=> b!2471216 m!2840081))

(declare-fun m!2840169 () Bool)

(assert (=> b!2471217 m!2840169))

(declare-fun m!2840171 () Bool)

(assert (=> b!2471218 m!2840171))

(assert (=> b!2471218 m!2840171))

(declare-fun m!2840173 () Bool)

(assert (=> b!2471218 m!2840173))

(assert (=> b!2471128 d!711335))

(declare-fun d!711339 () Bool)

(declare-fun res!1046356 () Bool)

(declare-fun e!1567244 () Bool)

(assert (=> d!711339 (=> (not res!1046356) (not e!1567244))))

(declare-fun isEmpty!16733 (List!28899) Bool)

(assert (=> d!711339 (= res!1046356 (not (isEmpty!16733 (originalCharacters!5252 t2!67))))))

(assert (=> d!711339 (= (inv!38891 t2!67) e!1567244)))

(declare-fun b!2471223 () Bool)

(declare-fun res!1046357 () Bool)

(assert (=> b!2471223 (=> (not res!1046357) (not e!1567244))))

(declare-fun list!11140 (BalanceConc!18018) List!28899)

(declare-fun dynLambda!12366 (Int TokenValue!4672) BalanceConc!18018)

(assert (=> b!2471223 (= res!1046357 (= (originalCharacters!5252 t2!67) (list!11140 (dynLambda!12366 (toChars!6209 (transformation!4486 (rule!6844 t2!67))) (value!143258 t2!67)))))))

(declare-fun b!2471224 () Bool)

(declare-fun size!22417 (List!28899) Int)

(assert (=> b!2471224 (= e!1567244 (= (size!22413 t2!67) (size!22417 (originalCharacters!5252 t2!67))))))

(assert (= (and d!711339 res!1046356) b!2471223))

(assert (= (and b!2471223 res!1046357) b!2471224))

(declare-fun b_lambda!75791 () Bool)

(assert (=> (not b_lambda!75791) (not b!2471223)))

(declare-fun t!209918 () Bool)

(declare-fun tb!139777 () Bool)

(assert (=> (and b!2471133 (= (toChars!6209 (transformation!4486 (rule!6844 t2!67))) (toChars!6209 (transformation!4486 (rule!6844 t2!67)))) t!209918) tb!139777))

(declare-fun b!2471229 () Bool)

(declare-fun e!1567247 () Bool)

(declare-fun tp!789526 () Bool)

(declare-fun inv!38894 (Conc!9202) Bool)

(assert (=> b!2471229 (= e!1567247 (and (inv!38894 (c!393690 (dynLambda!12366 (toChars!6209 (transformation!4486 (rule!6844 t2!67))) (value!143258 t2!67)))) tp!789526))))

(declare-fun result!172488 () Bool)

(declare-fun inv!38895 (BalanceConc!18018) Bool)

(assert (=> tb!139777 (= result!172488 (and (inv!38895 (dynLambda!12366 (toChars!6209 (transformation!4486 (rule!6844 t2!67))) (value!143258 t2!67))) e!1567247))))

(assert (= tb!139777 b!2471229))

(declare-fun m!2840175 () Bool)

(assert (=> b!2471229 m!2840175))

(declare-fun m!2840177 () Bool)

(assert (=> tb!139777 m!2840177))

(assert (=> b!2471223 t!209918))

(declare-fun b_and!187205 () Bool)

(assert (= b_and!187175 (and (=> t!209918 result!172488) b_and!187205)))

(declare-fun t!209920 () Bool)

(declare-fun tb!139779 () Bool)

(assert (=> (and b!2471116 (= (toChars!6209 (transformation!4486 (rule!6844 t1!67))) (toChars!6209 (transformation!4486 (rule!6844 t2!67)))) t!209920) tb!139779))

(declare-fun result!172492 () Bool)

(assert (= result!172492 result!172488))

(assert (=> b!2471223 t!209920))

(declare-fun b_and!187207 () Bool)

(assert (= b_and!187179 (and (=> t!209920 result!172492) b_and!187207)))

(declare-fun t!209922 () Bool)

(declare-fun tb!139781 () Bool)

(assert (=> (and b!2471122 (= (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611)))) (toChars!6209 (transformation!4486 (rule!6844 t2!67)))) t!209922) tb!139781))

(declare-fun result!172494 () Bool)

(assert (= result!172494 result!172488))

(assert (=> b!2471223 t!209922))

(declare-fun b_and!187209 () Bool)

(assert (= b_and!187183 (and (=> t!209922 result!172494) b_and!187209)))

(declare-fun tb!139783 () Bool)

(declare-fun t!209924 () Bool)

(assert (=> (and b!2471121 (= (toChars!6209 (transformation!4486 (h!34202 rules!4472))) (toChars!6209 (transformation!4486 (rule!6844 t2!67)))) t!209924) tb!139783))

(declare-fun result!172496 () Bool)

(assert (= result!172496 result!172488))

(assert (=> b!2471223 t!209924))

(declare-fun b_and!187211 () Bool)

(assert (= b_and!187187 (and (=> t!209924 result!172496) b_and!187211)))

(declare-fun m!2840179 () Bool)

(assert (=> d!711339 m!2840179))

(declare-fun m!2840181 () Bool)

(assert (=> b!2471223 m!2840181))

(assert (=> b!2471223 m!2840181))

(declare-fun m!2840183 () Bool)

(assert (=> b!2471223 m!2840183))

(declare-fun m!2840185 () Bool)

(assert (=> b!2471224 m!2840185))

(assert (=> start!241000 d!711339))

(declare-fun d!711341 () Bool)

(declare-fun res!1046360 () Bool)

(declare-fun e!1567252 () Bool)

(assert (=> d!711341 (=> (not res!1046360) (not e!1567252))))

(assert (=> d!711341 (= res!1046360 (not (isEmpty!16733 (originalCharacters!5252 t1!67))))))

(assert (=> d!711341 (= (inv!38891 t1!67) e!1567252)))

(declare-fun b!2471236 () Bool)

(declare-fun res!1046361 () Bool)

(assert (=> b!2471236 (=> (not res!1046361) (not e!1567252))))

(assert (=> b!2471236 (= res!1046361 (= (originalCharacters!5252 t1!67) (list!11140 (dynLambda!12366 (toChars!6209 (transformation!4486 (rule!6844 t1!67))) (value!143258 t1!67)))))))

(declare-fun b!2471237 () Bool)

(assert (=> b!2471237 (= e!1567252 (= (size!22413 t1!67) (size!22417 (originalCharacters!5252 t1!67))))))

(assert (= (and d!711341 res!1046360) b!2471236))

(assert (= (and b!2471236 res!1046361) b!2471237))

(declare-fun b_lambda!75793 () Bool)

(assert (=> (not b_lambda!75793) (not b!2471236)))

(declare-fun tb!139785 () Bool)

(declare-fun t!209926 () Bool)

(assert (=> (and b!2471133 (= (toChars!6209 (transformation!4486 (rule!6844 t2!67))) (toChars!6209 (transformation!4486 (rule!6844 t1!67)))) t!209926) tb!139785))

(declare-fun b!2471238 () Bool)

(declare-fun e!1567253 () Bool)

(declare-fun tp!789527 () Bool)

(assert (=> b!2471238 (= e!1567253 (and (inv!38894 (c!393690 (dynLambda!12366 (toChars!6209 (transformation!4486 (rule!6844 t1!67))) (value!143258 t1!67)))) tp!789527))))

(declare-fun result!172498 () Bool)

(assert (=> tb!139785 (= result!172498 (and (inv!38895 (dynLambda!12366 (toChars!6209 (transformation!4486 (rule!6844 t1!67))) (value!143258 t1!67))) e!1567253))))

(assert (= tb!139785 b!2471238))

(declare-fun m!2840187 () Bool)

(assert (=> b!2471238 m!2840187))

(declare-fun m!2840189 () Bool)

(assert (=> tb!139785 m!2840189))

(assert (=> b!2471236 t!209926))

(declare-fun b_and!187213 () Bool)

(assert (= b_and!187205 (and (=> t!209926 result!172498) b_and!187213)))

(declare-fun t!209928 () Bool)

(declare-fun tb!139787 () Bool)

(assert (=> (and b!2471116 (= (toChars!6209 (transformation!4486 (rule!6844 t1!67))) (toChars!6209 (transformation!4486 (rule!6844 t1!67)))) t!209928) tb!139787))

(declare-fun result!172500 () Bool)

(assert (= result!172500 result!172498))

(assert (=> b!2471236 t!209928))

(declare-fun b_and!187215 () Bool)

(assert (= b_and!187207 (and (=> t!209928 result!172500) b_and!187215)))

(declare-fun t!209930 () Bool)

(declare-fun tb!139789 () Bool)

(assert (=> (and b!2471122 (= (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611)))) (toChars!6209 (transformation!4486 (rule!6844 t1!67)))) t!209930) tb!139789))

(declare-fun result!172502 () Bool)

(assert (= result!172502 result!172498))

(assert (=> b!2471236 t!209930))

(declare-fun b_and!187217 () Bool)

(assert (= b_and!187209 (and (=> t!209930 result!172502) b_and!187217)))

(declare-fun t!209932 () Bool)

(declare-fun tb!139791 () Bool)

(assert (=> (and b!2471121 (= (toChars!6209 (transformation!4486 (h!34202 rules!4472))) (toChars!6209 (transformation!4486 (rule!6844 t1!67)))) t!209932) tb!139791))

(declare-fun result!172504 () Bool)

(assert (= result!172504 result!172498))

(assert (=> b!2471236 t!209932))

(declare-fun b_and!187219 () Bool)

(assert (= b_and!187211 (and (=> t!209932 result!172504) b_and!187219)))

(declare-fun m!2840191 () Bool)

(assert (=> d!711341 m!2840191))

(declare-fun m!2840193 () Bool)

(assert (=> b!2471236 m!2840193))

(assert (=> b!2471236 m!2840193))

(declare-fun m!2840195 () Bool)

(assert (=> b!2471236 m!2840195))

(declare-fun m!2840197 () Bool)

(assert (=> b!2471237 m!2840197))

(assert (=> start!241000 d!711341))

(declare-fun d!711343 () Bool)

(assert (=> d!711343 (= (isEmpty!16731 rules!4472) (is-Nil!28801 rules!4472))))

(assert (=> b!2471118 d!711343))

(declare-fun d!711345 () Bool)

(assert (=> d!711345 (= (inv!38887 (tag!4976 (rule!6844 (h!34201 l!6611)))) (= (mod (str.len (value!143257 (tag!4976 (rule!6844 (h!34201 l!6611))))) 2) 0))))

(assert (=> b!2471129 d!711345))

(declare-fun d!711347 () Bool)

(declare-fun res!1046365 () Bool)

(declare-fun e!1567258 () Bool)

(assert (=> d!711347 (=> (not res!1046365) (not e!1567258))))

(declare-fun semiInverseModEq!1845 (Int Int) Bool)

(assert (=> d!711347 (= res!1046365 (semiInverseModEq!1845 (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611)))) (toValue!6350 (transformation!4486 (rule!6844 (h!34201 l!6611))))))))

(assert (=> d!711347 (= (inv!38890 (transformation!4486 (rule!6844 (h!34201 l!6611)))) e!1567258)))

(declare-fun b!2471244 () Bool)

(declare-fun equivClasses!1756 (Int Int) Bool)

(assert (=> b!2471244 (= e!1567258 (equivClasses!1756 (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611)))) (toValue!6350 (transformation!4486 (rule!6844 (h!34201 l!6611))))))))

(assert (= (and d!711347 res!1046365) b!2471244))

(declare-fun m!2840207 () Bool)

(assert (=> d!711347 m!2840207))

(declare-fun m!2840209 () Bool)

(assert (=> b!2471244 m!2840209))

(assert (=> b!2471129 d!711347))

(declare-fun b!2471285 () Bool)

(declare-fun e!1567289 () Bool)

(assert (=> b!2471285 (= e!1567289 true)))

(declare-fun b!2471284 () Bool)

(declare-fun e!1567288 () Bool)

(assert (=> b!2471284 (= e!1567288 e!1567289)))

(declare-fun b!2471283 () Bool)

(declare-fun e!1567287 () Bool)

(assert (=> b!2471283 (= e!1567287 e!1567288)))

(declare-fun d!711351 () Bool)

(assert (=> d!711351 e!1567287))

(assert (= b!2471284 b!2471285))

(assert (= b!2471283 b!2471284))

(assert (= (and d!711351 (is-Cons!28801 rules!4472)) b!2471283))

(declare-fun order!15607 () Int)

(declare-fun order!15605 () Int)

(declare-fun lambda!93330 () Int)

(declare-fun dynLambda!12367 (Int Int) Int)

(declare-fun dynLambda!12368 (Int Int) Int)

(assert (=> b!2471285 (< (dynLambda!12367 order!15605 (toValue!6350 (transformation!4486 (h!34202 rules!4472)))) (dynLambda!12368 order!15607 lambda!93330))))

(declare-fun order!15609 () Int)

(declare-fun dynLambda!12369 (Int Int) Int)

(assert (=> b!2471285 (< (dynLambda!12369 order!15609 (toChars!6209 (transformation!4486 (h!34202 rules!4472)))) (dynLambda!12368 order!15607 lambda!93330))))

(assert (=> d!711351 true))

(declare-fun lt!883211 () Bool)

(declare-fun forall!5905 (List!28900 Int) Bool)

(assert (=> d!711351 (= lt!883211 (forall!5905 l!6611 lambda!93330))))

(declare-fun e!1567280 () Bool)

(assert (=> d!711351 (= lt!883211 e!1567280)))

(declare-fun res!1046379 () Bool)

(assert (=> d!711351 (=> res!1046379 e!1567280)))

(assert (=> d!711351 (= res!1046379 (not (is-Cons!28800 l!6611)))))

(assert (=> d!711351 (not (isEmpty!16731 rules!4472))))

(assert (=> d!711351 (= (rulesProduceEachTokenIndividuallyList!1399 thiss!27932 rules!4472 l!6611) lt!883211)))

(declare-fun b!2471273 () Bool)

(declare-fun e!1567279 () Bool)

(assert (=> b!2471273 (= e!1567280 e!1567279)))

(declare-fun res!1046378 () Bool)

(assert (=> b!2471273 (=> (not res!1046378) (not e!1567279))))

(declare-fun rulesProduceIndividualToken!1813 (LexerInterface!4083 List!28901 Token!8442) Bool)

(assert (=> b!2471273 (= res!1046378 (rulesProduceIndividualToken!1813 thiss!27932 rules!4472 (h!34201 l!6611)))))

(declare-fun b!2471274 () Bool)

(assert (=> b!2471274 (= e!1567279 (rulesProduceEachTokenIndividuallyList!1399 thiss!27932 rules!4472 (t!209911 l!6611)))))

(assert (= (and d!711351 (not res!1046379)) b!2471273))

(assert (= (and b!2471273 res!1046378) b!2471274))

(declare-fun m!2840223 () Bool)

(assert (=> d!711351 m!2840223))

(assert (=> d!711351 m!2840101))

(declare-fun m!2840225 () Bool)

(assert (=> b!2471273 m!2840225))

(declare-fun m!2840227 () Bool)

(assert (=> b!2471274 m!2840227))

(assert (=> b!2471127 d!711351))

(declare-fun d!711357 () Bool)

(assert (=> d!711357 (= (inv!38887 (tag!4976 (rule!6844 t1!67))) (= (mod (str.len (value!143257 (tag!4976 (rule!6844 t1!67)))) 2) 0))))

(assert (=> b!2471117 d!711357))

(declare-fun d!711359 () Bool)

(declare-fun res!1046380 () Bool)

(declare-fun e!1567290 () Bool)

(assert (=> d!711359 (=> (not res!1046380) (not e!1567290))))

(assert (=> d!711359 (= res!1046380 (semiInverseModEq!1845 (toChars!6209 (transformation!4486 (rule!6844 t1!67))) (toValue!6350 (transformation!4486 (rule!6844 t1!67)))))))

(assert (=> d!711359 (= (inv!38890 (transformation!4486 (rule!6844 t1!67))) e!1567290)))

(declare-fun b!2471288 () Bool)

(assert (=> b!2471288 (= e!1567290 (equivClasses!1756 (toChars!6209 (transformation!4486 (rule!6844 t1!67))) (toValue!6350 (transformation!4486 (rule!6844 t1!67)))))))

(assert (= (and d!711359 res!1046380) b!2471288))

(declare-fun m!2840229 () Bool)

(assert (=> d!711359 m!2840229))

(declare-fun m!2840231 () Bool)

(assert (=> b!2471288 m!2840231))

(assert (=> b!2471117 d!711359))

(declare-fun d!711361 () Bool)

(declare-fun lt!883214 () Int)

(assert (=> d!711361 (>= lt!883214 0)))

(declare-fun e!1567293 () Int)

(assert (=> d!711361 (= lt!883214 e!1567293)))

(declare-fun c!393710 () Bool)

(assert (=> d!711361 (= c!393710 (is-Nil!28800 l!6611))))

(assert (=> d!711361 (= (size!22414 l!6611) lt!883214)))

(declare-fun b!2471293 () Bool)

(assert (=> b!2471293 (= e!1567293 0)))

(declare-fun b!2471294 () Bool)

(assert (=> b!2471294 (= e!1567293 (+ 1 (size!22414 (t!209911 l!6611))))))

(assert (= (and d!711361 c!393710) b!2471293))

(assert (= (and d!711361 (not c!393710)) b!2471294))

(declare-fun m!2840233 () Bool)

(assert (=> b!2471294 m!2840233))

(assert (=> b!2471115 d!711361))

(declare-fun d!711363 () Bool)

(declare-fun res!1046381 () Bool)

(declare-fun e!1567294 () Bool)

(assert (=> d!711363 (=> (not res!1046381) (not e!1567294))))

(assert (=> d!711363 (= res!1046381 (not (isEmpty!16733 (originalCharacters!5252 (h!34201 l!6611)))))))

(assert (=> d!711363 (= (inv!38891 (h!34201 l!6611)) e!1567294)))

(declare-fun b!2471295 () Bool)

(declare-fun res!1046382 () Bool)

(assert (=> b!2471295 (=> (not res!1046382) (not e!1567294))))

(assert (=> b!2471295 (= res!1046382 (= (originalCharacters!5252 (h!34201 l!6611)) (list!11140 (dynLambda!12366 (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611)))) (value!143258 (h!34201 l!6611))))))))

(declare-fun b!2471296 () Bool)

(assert (=> b!2471296 (= e!1567294 (= (size!22413 (h!34201 l!6611)) (size!22417 (originalCharacters!5252 (h!34201 l!6611)))))))

(assert (= (and d!711363 res!1046381) b!2471295))

(assert (= (and b!2471295 res!1046382) b!2471296))

(declare-fun b_lambda!75795 () Bool)

(assert (=> (not b_lambda!75795) (not b!2471295)))

(declare-fun tb!139793 () Bool)

(declare-fun t!209938 () Bool)

(assert (=> (and b!2471133 (= (toChars!6209 (transformation!4486 (rule!6844 t2!67))) (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611))))) t!209938) tb!139793))

(declare-fun b!2471297 () Bool)

(declare-fun e!1567295 () Bool)

(declare-fun tp!789528 () Bool)

(assert (=> b!2471297 (= e!1567295 (and (inv!38894 (c!393690 (dynLambda!12366 (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611)))) (value!143258 (h!34201 l!6611))))) tp!789528))))

(declare-fun result!172506 () Bool)

(assert (=> tb!139793 (= result!172506 (and (inv!38895 (dynLambda!12366 (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611)))) (value!143258 (h!34201 l!6611)))) e!1567295))))

(assert (= tb!139793 b!2471297))

(declare-fun m!2840235 () Bool)

(assert (=> b!2471297 m!2840235))

(declare-fun m!2840237 () Bool)

(assert (=> tb!139793 m!2840237))

(assert (=> b!2471295 t!209938))

(declare-fun b_and!187221 () Bool)

(assert (= b_and!187213 (and (=> t!209938 result!172506) b_and!187221)))

(declare-fun tb!139795 () Bool)

(declare-fun t!209940 () Bool)

(assert (=> (and b!2471116 (= (toChars!6209 (transformation!4486 (rule!6844 t1!67))) (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611))))) t!209940) tb!139795))

(declare-fun result!172508 () Bool)

(assert (= result!172508 result!172506))

(assert (=> b!2471295 t!209940))

(declare-fun b_and!187223 () Bool)

(assert (= b_and!187215 (and (=> t!209940 result!172508) b_and!187223)))

(declare-fun t!209942 () Bool)

(declare-fun tb!139797 () Bool)

(assert (=> (and b!2471122 (= (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611)))) (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611))))) t!209942) tb!139797))

(declare-fun result!172510 () Bool)

(assert (= result!172510 result!172506))

(assert (=> b!2471295 t!209942))

(declare-fun b_and!187225 () Bool)

(assert (= b_and!187217 (and (=> t!209942 result!172510) b_and!187225)))

(declare-fun t!209944 () Bool)

(declare-fun tb!139799 () Bool)

(assert (=> (and b!2471121 (= (toChars!6209 (transformation!4486 (h!34202 rules!4472))) (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611))))) t!209944) tb!139799))

(declare-fun result!172512 () Bool)

(assert (= result!172512 result!172506))

(assert (=> b!2471295 t!209944))

(declare-fun b_and!187227 () Bool)

(assert (= b_and!187219 (and (=> t!209944 result!172512) b_and!187227)))

(declare-fun m!2840239 () Bool)

(assert (=> d!711363 m!2840239))

(declare-fun m!2840241 () Bool)

(assert (=> b!2471295 m!2840241))

(assert (=> b!2471295 m!2840241))

(declare-fun m!2840243 () Bool)

(assert (=> b!2471295 m!2840243))

(declare-fun m!2840245 () Bool)

(assert (=> b!2471296 m!2840245))

(assert (=> b!2471125 d!711363))

(declare-fun d!711365 () Bool)

(declare-fun res!1046385 () Bool)

(declare-fun e!1567298 () Bool)

(assert (=> d!711365 (=> (not res!1046385) (not e!1567298))))

(declare-fun rulesValid!1668 (LexerInterface!4083 List!28901) Bool)

(assert (=> d!711365 (= res!1046385 (rulesValid!1668 thiss!27932 rules!4472))))

(assert (=> d!711365 (= (rulesInvariant!3583 thiss!27932 rules!4472) e!1567298)))

(declare-fun b!2471300 () Bool)

(declare-datatypes ((List!28906 0))(
  ( (Nil!28806) (Cons!28806 (h!34207 String!31658) (t!209973 List!28906)) )
))
(declare-fun noDuplicateTag!1666 (LexerInterface!4083 List!28901 List!28906) Bool)

(assert (=> b!2471300 (= e!1567298 (noDuplicateTag!1666 thiss!27932 rules!4472 Nil!28806))))

(assert (= (and d!711365 res!1046385) b!2471300))

(declare-fun m!2840247 () Bool)

(assert (=> d!711365 m!2840247))

(declare-fun m!2840249 () Bool)

(assert (=> b!2471300 m!2840249))

(assert (=> b!2471112 d!711365))

(declare-fun d!711367 () Bool)

(declare-fun prefixMatchZipperSequence!724 (Regex!7274 BalanceConc!18018) Bool)

(declare-fun rulesRegex!980 (LexerInterface!4083 List!28901) Regex!7274)

(declare-fun ++!7144 (BalanceConc!18018 BalanceConc!18018) BalanceConc!18018)

(declare-fun charsOf!2823 (Token!8442) BalanceConc!18018)

(declare-fun singletonSeq!1993 (C!14706) BalanceConc!18018)

(declare-fun apply!6791 (BalanceConc!18018 Int) C!14706)

(assert (=> d!711367 (= (separableTokensPredicate!860 thiss!27932 t1!67 t2!67 rules!4472) (not (prefixMatchZipperSequence!724 (rulesRegex!980 thiss!27932 rules!4472) (++!7144 (charsOf!2823 t1!67) (singletonSeq!1993 (apply!6791 (charsOf!2823 t2!67) 0))))))))

(declare-fun bs!466954 () Bool)

(assert (= bs!466954 d!711367))

(declare-fun m!2840251 () Bool)

(assert (=> bs!466954 m!2840251))

(declare-fun m!2840253 () Bool)

(assert (=> bs!466954 m!2840253))

(declare-fun m!2840255 () Bool)

(assert (=> bs!466954 m!2840255))

(declare-fun m!2840257 () Bool)

(assert (=> bs!466954 m!2840257))

(assert (=> bs!466954 m!2840251))

(declare-fun m!2840259 () Bool)

(assert (=> bs!466954 m!2840259))

(declare-fun m!2840261 () Bool)

(assert (=> bs!466954 m!2840261))

(assert (=> bs!466954 m!2840253))

(assert (=> bs!466954 m!2840257))

(assert (=> bs!466954 m!2840259))

(declare-fun m!2840263 () Bool)

(assert (=> bs!466954 m!2840263))

(assert (=> bs!466954 m!2840263))

(assert (=> bs!466954 m!2840255))

(assert (=> b!2471123 d!711367))

(declare-fun b!2471311 () Bool)

(declare-fun e!1567306 () Bool)

(declare-fun e!1567307 () Bool)

(assert (=> b!2471311 (= e!1567306 e!1567307)))

(declare-fun c!393716 () Bool)

(assert (=> b!2471311 (= c!393716 (is-IntegerValue!14017 (value!143258 t1!67)))))

(declare-fun b!2471312 () Bool)

(declare-fun inv!17 (TokenValue!4672) Bool)

(assert (=> b!2471312 (= e!1567307 (inv!17 (value!143258 t1!67)))))

(declare-fun d!711369 () Bool)

(declare-fun c!393715 () Bool)

(assert (=> d!711369 (= c!393715 (is-IntegerValue!14016 (value!143258 t1!67)))))

(assert (=> d!711369 (= (inv!21 (value!143258 t1!67)) e!1567306)))

(declare-fun b!2471313 () Bool)

(declare-fun inv!16 (TokenValue!4672) Bool)

(assert (=> b!2471313 (= e!1567306 (inv!16 (value!143258 t1!67)))))

(declare-fun b!2471314 () Bool)

(declare-fun e!1567305 () Bool)

(declare-fun inv!15 (TokenValue!4672) Bool)

(assert (=> b!2471314 (= e!1567305 (inv!15 (value!143258 t1!67)))))

(declare-fun b!2471315 () Bool)

(declare-fun res!1046388 () Bool)

(assert (=> b!2471315 (=> res!1046388 e!1567305)))

(assert (=> b!2471315 (= res!1046388 (not (is-IntegerValue!14018 (value!143258 t1!67))))))

(assert (=> b!2471315 (= e!1567307 e!1567305)))

(assert (= (and d!711369 c!393715) b!2471313))

(assert (= (and d!711369 (not c!393715)) b!2471311))

(assert (= (and b!2471311 c!393716) b!2471312))

(assert (= (and b!2471311 (not c!393716)) b!2471315))

(assert (= (and b!2471315 (not res!1046388)) b!2471314))

(declare-fun m!2840265 () Bool)

(assert (=> b!2471312 m!2840265))

(declare-fun m!2840267 () Bool)

(assert (=> b!2471313 m!2840267))

(declare-fun m!2840269 () Bool)

(assert (=> b!2471314 m!2840269))

(assert (=> b!2471134 d!711369))

(declare-fun d!711371 () Bool)

(declare-fun res!1046396 () Bool)

(declare-fun e!1567323 () Bool)

(assert (=> d!711371 (=> res!1046396 e!1567323)))

(assert (=> d!711371 (= res!1046396 (or (not (is-Cons!28800 l!6611)) (not (is-Cons!28800 (t!209911 l!6611)))))))

(assert (=> d!711371 (= (tokensListTwoByTwoPredicateSeparableList!622 thiss!27932 l!6611 rules!4472) e!1567323)))

(declare-fun b!2471335 () Bool)

(declare-fun e!1567324 () Bool)

(assert (=> b!2471335 (= e!1567323 e!1567324)))

(declare-fun res!1046395 () Bool)

(assert (=> b!2471335 (=> (not res!1046395) (not e!1567324))))

(assert (=> b!2471335 (= res!1046395 (separableTokensPredicate!860 thiss!27932 (h!34201 l!6611) (h!34201 (t!209911 l!6611)) rules!4472))))

(declare-datatypes ((Unit!42146 0))(
  ( (Unit!42147) )
))
(declare-fun lt!883231 () Unit!42146)

(declare-fun Unit!42148 () Unit!42146)

(assert (=> b!2471335 (= lt!883231 Unit!42148)))

(declare-fun size!22418 (BalanceConc!18018) Int)

(assert (=> b!2471335 (> (size!22418 (charsOf!2823 (h!34201 (t!209911 l!6611)))) 0)))

(declare-fun lt!883235 () Unit!42146)

(declare-fun Unit!42149 () Unit!42146)

(assert (=> b!2471335 (= lt!883235 Unit!42149)))

(assert (=> b!2471335 (rulesProduceIndividualToken!1813 thiss!27932 rules!4472 (h!34201 (t!209911 l!6611)))))

(declare-fun lt!883234 () Unit!42146)

(declare-fun Unit!42150 () Unit!42146)

(assert (=> b!2471335 (= lt!883234 Unit!42150)))

(assert (=> b!2471335 (rulesProduceIndividualToken!1813 thiss!27932 rules!4472 (h!34201 l!6611))))

(declare-fun lt!883232 () Unit!42146)

(declare-fun lt!883236 () Unit!42146)

(assert (=> b!2471335 (= lt!883232 lt!883236)))

(assert (=> b!2471335 (rulesProduceIndividualToken!1813 thiss!27932 rules!4472 (h!34201 (t!209911 l!6611)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!674 (LexerInterface!4083 List!28901 List!28900 Token!8442) Unit!42146)

(assert (=> b!2471335 (= lt!883236 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!674 thiss!27932 rules!4472 l!6611 (h!34201 (t!209911 l!6611))))))

(declare-fun lt!883230 () Unit!42146)

(declare-fun lt!883233 () Unit!42146)

(assert (=> b!2471335 (= lt!883230 lt!883233)))

(assert (=> b!2471335 (rulesProduceIndividualToken!1813 thiss!27932 rules!4472 (h!34201 l!6611))))

(assert (=> b!2471335 (= lt!883233 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!674 thiss!27932 rules!4472 l!6611 (h!34201 l!6611)))))

(declare-fun b!2471336 () Bool)

(assert (=> b!2471336 (= e!1567324 (tokensListTwoByTwoPredicateSeparableList!622 thiss!27932 (Cons!28800 (h!34201 (t!209911 l!6611)) (t!209911 (t!209911 l!6611))) rules!4472))))

(assert (= (and d!711371 (not res!1046396)) b!2471335))

(assert (= (and b!2471335 res!1046395) b!2471336))

(declare-fun m!2840277 () Bool)

(assert (=> b!2471335 m!2840277))

(declare-fun m!2840279 () Bool)

(assert (=> b!2471335 m!2840279))

(declare-fun m!2840281 () Bool)

(assert (=> b!2471335 m!2840281))

(declare-fun m!2840283 () Bool)

(assert (=> b!2471335 m!2840283))

(declare-fun m!2840285 () Bool)

(assert (=> b!2471335 m!2840285))

(assert (=> b!2471335 m!2840279))

(declare-fun m!2840287 () Bool)

(assert (=> b!2471335 m!2840287))

(assert (=> b!2471335 m!2840225))

(declare-fun m!2840289 () Bool)

(assert (=> b!2471336 m!2840289))

(assert (=> b!2471113 d!711371))

(declare-fun b!2471337 () Bool)

(declare-fun e!1567326 () Bool)

(declare-fun e!1567327 () Bool)

(assert (=> b!2471337 (= e!1567326 e!1567327)))

(declare-fun c!393718 () Bool)

(assert (=> b!2471337 (= c!393718 (is-IntegerValue!14017 (value!143258 (h!34201 l!6611))))))

(declare-fun b!2471338 () Bool)

(assert (=> b!2471338 (= e!1567327 (inv!17 (value!143258 (h!34201 l!6611))))))

(declare-fun d!711377 () Bool)

(declare-fun c!393717 () Bool)

(assert (=> d!711377 (= c!393717 (is-IntegerValue!14016 (value!143258 (h!34201 l!6611))))))

(assert (=> d!711377 (= (inv!21 (value!143258 (h!34201 l!6611))) e!1567326)))

(declare-fun b!2471339 () Bool)

(assert (=> b!2471339 (= e!1567326 (inv!16 (value!143258 (h!34201 l!6611))))))

(declare-fun b!2471340 () Bool)

(declare-fun e!1567325 () Bool)

(assert (=> b!2471340 (= e!1567325 (inv!15 (value!143258 (h!34201 l!6611))))))

(declare-fun b!2471341 () Bool)

(declare-fun res!1046397 () Bool)

(assert (=> b!2471341 (=> res!1046397 e!1567325)))

(assert (=> b!2471341 (= res!1046397 (not (is-IntegerValue!14018 (value!143258 (h!34201 l!6611)))))))

(assert (=> b!2471341 (= e!1567327 e!1567325)))

(assert (= (and d!711377 c!393717) b!2471339))

(assert (= (and d!711377 (not c!393717)) b!2471337))

(assert (= (and b!2471337 c!393718) b!2471338))

(assert (= (and b!2471337 (not c!393718)) b!2471341))

(assert (= (and b!2471341 (not res!1046397)) b!2471340))

(declare-fun m!2840291 () Bool)

(assert (=> b!2471338 m!2840291))

(declare-fun m!2840293 () Bool)

(assert (=> b!2471339 m!2840293))

(declare-fun m!2840295 () Bool)

(assert (=> b!2471340 m!2840295))

(assert (=> b!2471132 d!711377))

(declare-fun d!711379 () Bool)

(declare-fun lt!883237 () Token!8442)

(assert (=> d!711379 (contains!4918 l!6611 lt!883237)))

(declare-fun e!1567329 () Token!8442)

(assert (=> d!711379 (= lt!883237 e!1567329)))

(declare-fun c!393719 () Bool)

(assert (=> d!711379 (= c!393719 (= i!1803 0))))

(declare-fun e!1567328 () Bool)

(assert (=> d!711379 e!1567328))

(declare-fun res!1046398 () Bool)

(assert (=> d!711379 (=> (not res!1046398) (not e!1567328))))

(assert (=> d!711379 (= res!1046398 (<= 0 i!1803))))

(assert (=> d!711379 (= (apply!6789 l!6611 i!1803) lt!883237)))

(declare-fun b!2471342 () Bool)

(assert (=> b!2471342 (= e!1567328 (< i!1803 (size!22414 l!6611)))))

(declare-fun b!2471343 () Bool)

(assert (=> b!2471343 (= e!1567329 (head!5640 l!6611))))

(declare-fun b!2471344 () Bool)

(assert (=> b!2471344 (= e!1567329 (apply!6789 (tail!3921 l!6611) (- i!1803 1)))))

(assert (= (and d!711379 res!1046398) b!2471342))

(assert (= (and d!711379 c!393719) b!2471343))

(assert (= (and d!711379 (not c!393719)) b!2471344))

(declare-fun m!2840297 () Bool)

(assert (=> d!711379 m!2840297))

(assert (=> b!2471342 m!2840081))

(assert (=> b!2471343 m!2840169))

(assert (=> b!2471344 m!2840171))

(assert (=> b!2471344 m!2840171))

(declare-fun m!2840299 () Bool)

(assert (=> b!2471344 m!2840299))

(assert (=> b!2471111 d!711379))

(declare-fun b!2471345 () Bool)

(declare-fun e!1567331 () Bool)

(declare-fun e!1567332 () Bool)

(assert (=> b!2471345 (= e!1567331 e!1567332)))

(declare-fun c!393721 () Bool)

(assert (=> b!2471345 (= c!393721 (is-IntegerValue!14017 (value!143258 t2!67)))))

(declare-fun b!2471346 () Bool)

(assert (=> b!2471346 (= e!1567332 (inv!17 (value!143258 t2!67)))))

(declare-fun d!711381 () Bool)

(declare-fun c!393720 () Bool)

(assert (=> d!711381 (= c!393720 (is-IntegerValue!14016 (value!143258 t2!67)))))

(assert (=> d!711381 (= (inv!21 (value!143258 t2!67)) e!1567331)))

(declare-fun b!2471347 () Bool)

(assert (=> b!2471347 (= e!1567331 (inv!16 (value!143258 t2!67)))))

(declare-fun b!2471348 () Bool)

(declare-fun e!1567330 () Bool)

(assert (=> b!2471348 (= e!1567330 (inv!15 (value!143258 t2!67)))))

(declare-fun b!2471349 () Bool)

(declare-fun res!1046399 () Bool)

(assert (=> b!2471349 (=> res!1046399 e!1567330)))

(assert (=> b!2471349 (= res!1046399 (not (is-IntegerValue!14018 (value!143258 t2!67))))))

(assert (=> b!2471349 (= e!1567332 e!1567330)))

(assert (= (and d!711381 c!393720) b!2471347))

(assert (= (and d!711381 (not c!393720)) b!2471345))

(assert (= (and b!2471345 c!393721) b!2471346))

(assert (= (and b!2471345 (not c!393721)) b!2471349))

(assert (= (and b!2471349 (not res!1046399)) b!2471348))

(declare-fun m!2840301 () Bool)

(assert (=> b!2471346 m!2840301))

(declare-fun m!2840303 () Bool)

(assert (=> b!2471347 m!2840303))

(declare-fun m!2840305 () Bool)

(assert (=> b!2471348 m!2840305))

(assert (=> b!2471120 d!711381))

(declare-fun d!711383 () Bool)

(assert (=> d!711383 (= (inv!38887 (tag!4976 (h!34202 rules!4472))) (= (mod (str.len (value!143257 (tag!4976 (h!34202 rules!4472)))) 2) 0))))

(assert (=> b!2471131 d!711383))

(declare-fun d!711385 () Bool)

(declare-fun res!1046402 () Bool)

(declare-fun e!1567335 () Bool)

(assert (=> d!711385 (=> (not res!1046402) (not e!1567335))))

(assert (=> d!711385 (= res!1046402 (semiInverseModEq!1845 (toChars!6209 (transformation!4486 (h!34202 rules!4472))) (toValue!6350 (transformation!4486 (h!34202 rules!4472)))))))

(assert (=> d!711385 (= (inv!38890 (transformation!4486 (h!34202 rules!4472))) e!1567335)))

(declare-fun b!2471352 () Bool)

(assert (=> b!2471352 (= e!1567335 (equivClasses!1756 (toChars!6209 (transformation!4486 (h!34202 rules!4472))) (toValue!6350 (transformation!4486 (h!34202 rules!4472)))))))

(assert (= (and d!711385 res!1046402) b!2471352))

(declare-fun m!2840307 () Bool)

(assert (=> d!711385 m!2840307))

(declare-fun m!2840309 () Bool)

(assert (=> b!2471352 m!2840309))

(assert (=> b!2471131 d!711385))

(declare-fun d!711387 () Bool)

(assert (=> d!711387 (= (inv!38887 (tag!4976 (rule!6844 t2!67))) (= (mod (str.len (value!143257 (tag!4976 (rule!6844 t2!67)))) 2) 0))))

(assert (=> b!2471119 d!711387))

(declare-fun d!711389 () Bool)

(declare-fun res!1046403 () Bool)

(declare-fun e!1567336 () Bool)

(assert (=> d!711389 (=> (not res!1046403) (not e!1567336))))

(assert (=> d!711389 (= res!1046403 (semiInverseModEq!1845 (toChars!6209 (transformation!4486 (rule!6844 t2!67))) (toValue!6350 (transformation!4486 (rule!6844 t2!67)))))))

(assert (=> d!711389 (= (inv!38890 (transformation!4486 (rule!6844 t2!67))) e!1567336)))

(declare-fun b!2471353 () Bool)

(assert (=> b!2471353 (= e!1567336 (equivClasses!1756 (toChars!6209 (transformation!4486 (rule!6844 t2!67))) (toValue!6350 (transformation!4486 (rule!6844 t2!67)))))))

(assert (= (and d!711389 res!1046403) b!2471353))

(declare-fun m!2840311 () Bool)

(assert (=> d!711389 m!2840311))

(declare-fun m!2840313 () Bool)

(assert (=> b!2471353 m!2840313))

(assert (=> b!2471119 d!711389))

(declare-fun d!711391 () Bool)

(declare-fun lt!883240 () Bool)

(declare-fun content!3961 (List!28900) (Set Token!8442))

(assert (=> d!711391 (= lt!883240 (set.member t1!67 (content!3961 l!6611)))))

(declare-fun e!1567344 () Bool)

(assert (=> d!711391 (= lt!883240 e!1567344)))

(declare-fun res!1046413 () Bool)

(assert (=> d!711391 (=> (not res!1046413) (not e!1567344))))

(assert (=> d!711391 (= res!1046413 (is-Cons!28800 l!6611))))

(assert (=> d!711391 (= (contains!4918 l!6611 t1!67) lt!883240)))

(declare-fun b!2471363 () Bool)

(declare-fun e!1567345 () Bool)

(assert (=> b!2471363 (= e!1567344 e!1567345)))

(declare-fun res!1046414 () Bool)

(assert (=> b!2471363 (=> res!1046414 e!1567345)))

(assert (=> b!2471363 (= res!1046414 (= (h!34201 l!6611) t1!67))))

(declare-fun b!2471364 () Bool)

(assert (=> b!2471364 (= e!1567345 (contains!4918 (t!209911 l!6611) t1!67))))

(assert (= (and d!711391 res!1046413) b!2471363))

(assert (= (and b!2471363 (not res!1046414)) b!2471364))

(declare-fun m!2840319 () Bool)

(assert (=> d!711391 m!2840319))

(declare-fun m!2840321 () Bool)

(assert (=> d!711391 m!2840321))

(declare-fun m!2840323 () Bool)

(assert (=> b!2471364 m!2840323))

(assert (=> b!2471130 d!711391))

(declare-fun b!2471381 () Bool)

(declare-fun e!1567351 () Bool)

(declare-fun tp_is_empty!11953 () Bool)

(assert (=> b!2471381 (= e!1567351 tp_is_empty!11953)))

(declare-fun b!2471382 () Bool)

(declare-fun tp!789545 () Bool)

(declare-fun tp!789541 () Bool)

(assert (=> b!2471382 (= e!1567351 (and tp!789545 tp!789541))))

(declare-fun b!2471384 () Bool)

(declare-fun tp!789542 () Bool)

(declare-fun tp!789544 () Bool)

(assert (=> b!2471384 (= e!1567351 (and tp!789542 tp!789544))))

(assert (=> b!2471129 (= tp!789466 e!1567351)))

(declare-fun b!2471383 () Bool)

(declare-fun tp!789543 () Bool)

(assert (=> b!2471383 (= e!1567351 tp!789543)))

(assert (= (and b!2471129 (is-ElementMatch!7274 (regex!4486 (rule!6844 (h!34201 l!6611))))) b!2471381))

(assert (= (and b!2471129 (is-Concat!11947 (regex!4486 (rule!6844 (h!34201 l!6611))))) b!2471382))

(assert (= (and b!2471129 (is-Star!7274 (regex!4486 (rule!6844 (h!34201 l!6611))))) b!2471383))

(assert (= (and b!2471129 (is-Union!7274 (regex!4486 (rule!6844 (h!34201 l!6611))))) b!2471384))

(declare-fun b!2471386 () Bool)

(declare-fun e!1567353 () Bool)

(assert (=> b!2471386 (= e!1567353 tp_is_empty!11953)))

(declare-fun b!2471387 () Bool)

(declare-fun tp!789551 () Bool)

(declare-fun tp!789547 () Bool)

(assert (=> b!2471387 (= e!1567353 (and tp!789551 tp!789547))))

(declare-fun b!2471389 () Bool)

(declare-fun tp!789548 () Bool)

(declare-fun tp!789550 () Bool)

(assert (=> b!2471389 (= e!1567353 (and tp!789548 tp!789550))))

(assert (=> b!2471117 (= tp!789467 e!1567353)))

(declare-fun b!2471388 () Bool)

(declare-fun tp!789549 () Bool)

(assert (=> b!2471388 (= e!1567353 tp!789549)))

(assert (= (and b!2471117 (is-ElementMatch!7274 (regex!4486 (rule!6844 t1!67)))) b!2471386))

(assert (= (and b!2471117 (is-Concat!11947 (regex!4486 (rule!6844 t1!67)))) b!2471387))

(assert (= (and b!2471117 (is-Star!7274 (regex!4486 (rule!6844 t1!67)))) b!2471388))

(assert (= (and b!2471117 (is-Union!7274 (regex!4486 (rule!6844 t1!67)))) b!2471389))

(declare-fun b!2471404 () Bool)

(declare-fun b_free!71365 () Bool)

(declare-fun b_next!72069 () Bool)

(assert (=> b!2471404 (= b_free!71365 (not b_next!72069))))

(declare-fun tp!789563 () Bool)

(declare-fun b_and!187245 () Bool)

(assert (=> b!2471404 (= tp!789563 b_and!187245)))

(declare-fun b_free!71367 () Bool)

(declare-fun b_next!72071 () Bool)

(assert (=> b!2471404 (= b_free!71367 (not b_next!72071))))

(declare-fun t!209962 () Bool)

(declare-fun tb!139817 () Bool)

(assert (=> (and b!2471404 (= (toChars!6209 (transformation!4486 (h!34202 (t!209912 rules!4472)))) (toChars!6209 (transformation!4486 (rule!6844 t2!67)))) t!209962) tb!139817))

(declare-fun result!172536 () Bool)

(assert (= result!172536 result!172488))

(assert (=> b!2471223 t!209962))

(declare-fun t!209964 () Bool)

(declare-fun tb!139819 () Bool)

(assert (=> (and b!2471404 (= (toChars!6209 (transformation!4486 (h!34202 (t!209912 rules!4472)))) (toChars!6209 (transformation!4486 (rule!6844 t1!67)))) t!209964) tb!139819))

(declare-fun result!172538 () Bool)

(assert (= result!172538 result!172498))

(assert (=> b!2471236 t!209964))

(declare-fun tb!139821 () Bool)

(declare-fun t!209966 () Bool)

(assert (=> (and b!2471404 (= (toChars!6209 (transformation!4486 (h!34202 (t!209912 rules!4472)))) (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611))))) t!209966) tb!139821))

(declare-fun result!172540 () Bool)

(assert (= result!172540 result!172506))

(assert (=> b!2471295 t!209966))

(declare-fun b_and!187247 () Bool)

(declare-fun tp!789561 () Bool)

(assert (=> b!2471404 (= tp!789561 (and (=> t!209962 result!172536) (=> t!209964 result!172538) (=> t!209966 result!172540) b_and!187247))))

(declare-fun e!1567368 () Bool)

(assert (=> b!2471404 (= e!1567368 (and tp!789563 tp!789561))))

(declare-fun tp!789564 () Bool)

(declare-fun e!1567367 () Bool)

(declare-fun b!2471403 () Bool)

(assert (=> b!2471403 (= e!1567367 (and tp!789564 (inv!38887 (tag!4976 (h!34202 (t!209912 rules!4472)))) (inv!38890 (transformation!4486 (h!34202 (t!209912 rules!4472)))) e!1567368))))

(declare-fun b!2471402 () Bool)

(declare-fun e!1567365 () Bool)

(declare-fun tp!789562 () Bool)

(assert (=> b!2471402 (= e!1567365 (and e!1567367 tp!789562))))

(assert (=> b!2471124 (= tp!789457 e!1567365)))

(assert (= b!2471403 b!2471404))

(assert (= b!2471402 b!2471403))

(assert (= (and b!2471124 (is-Cons!28801 (t!209912 rules!4472))) b!2471402))

(declare-fun m!2840353 () Bool)

(assert (=> b!2471403 m!2840353))

(declare-fun m!2840355 () Bool)

(assert (=> b!2471403 m!2840355))

(declare-fun b!2471418 () Bool)

(declare-fun b_free!71369 () Bool)

(declare-fun b_next!72073 () Bool)

(assert (=> b!2471418 (= b_free!71369 (not b_next!72073))))

(declare-fun tp!789577 () Bool)

(declare-fun b_and!187249 () Bool)

(assert (=> b!2471418 (= tp!789577 b_and!187249)))

(declare-fun b_free!71371 () Bool)

(declare-fun b_next!72075 () Bool)

(assert (=> b!2471418 (= b_free!71371 (not b_next!72075))))

(declare-fun t!209968 () Bool)

(declare-fun tb!139823 () Bool)

(assert (=> (and b!2471418 (= (toChars!6209 (transformation!4486 (rule!6844 (h!34201 (t!209911 l!6611))))) (toChars!6209 (transformation!4486 (rule!6844 t2!67)))) t!209968) tb!139823))

(declare-fun result!172544 () Bool)

(assert (= result!172544 result!172488))

(assert (=> b!2471223 t!209968))

(declare-fun t!209970 () Bool)

(declare-fun tb!139825 () Bool)

(assert (=> (and b!2471418 (= (toChars!6209 (transformation!4486 (rule!6844 (h!34201 (t!209911 l!6611))))) (toChars!6209 (transformation!4486 (rule!6844 t1!67)))) t!209970) tb!139825))

(declare-fun result!172546 () Bool)

(assert (= result!172546 result!172498))

(assert (=> b!2471236 t!209970))

(declare-fun t!209972 () Bool)

(declare-fun tb!139827 () Bool)

(assert (=> (and b!2471418 (= (toChars!6209 (transformation!4486 (rule!6844 (h!34201 (t!209911 l!6611))))) (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611))))) t!209972) tb!139827))

(declare-fun result!172548 () Bool)

(assert (= result!172548 result!172506))

(assert (=> b!2471295 t!209972))

(declare-fun tp!789579 () Bool)

(declare-fun b_and!187251 () Bool)

(assert (=> b!2471418 (= tp!789579 (and (=> t!209968 result!172544) (=> t!209970 result!172546) (=> t!209972 result!172548) b_and!187251))))

(declare-fun e!1567384 () Bool)

(declare-fun e!1567381 () Bool)

(declare-fun b!2471416 () Bool)

(declare-fun tp!789576 () Bool)

(assert (=> b!2471416 (= e!1567384 (and (inv!21 (value!143258 (h!34201 (t!209911 l!6611)))) e!1567381 tp!789576))))

(declare-fun tp!789578 () Bool)

(declare-fun e!1567382 () Bool)

(declare-fun b!2471415 () Bool)

(assert (=> b!2471415 (= e!1567382 (and (inv!38891 (h!34201 (t!209911 l!6611))) e!1567384 tp!789578))))

(declare-fun e!1567385 () Bool)

(assert (=> b!2471418 (= e!1567385 (and tp!789577 tp!789579))))

(declare-fun tp!789575 () Bool)

(declare-fun b!2471417 () Bool)

(assert (=> b!2471417 (= e!1567381 (and tp!789575 (inv!38887 (tag!4976 (rule!6844 (h!34201 (t!209911 l!6611))))) (inv!38890 (transformation!4486 (rule!6844 (h!34201 (t!209911 l!6611))))) e!1567385))))

(assert (=> b!2471125 (= tp!789459 e!1567382)))

(assert (= b!2471417 b!2471418))

(assert (= b!2471416 b!2471417))

(assert (= b!2471415 b!2471416))

(assert (= (and b!2471125 (is-Cons!28800 (t!209911 l!6611))) b!2471415))

(declare-fun m!2840357 () Bool)

(assert (=> b!2471416 m!2840357))

(declare-fun m!2840359 () Bool)

(assert (=> b!2471415 m!2840359))

(declare-fun m!2840361 () Bool)

(assert (=> b!2471417 m!2840361))

(declare-fun m!2840363 () Bool)

(assert (=> b!2471417 m!2840363))

(declare-fun b!2471423 () Bool)

(declare-fun e!1567389 () Bool)

(declare-fun tp!789582 () Bool)

(assert (=> b!2471423 (= e!1567389 (and tp_is_empty!11953 tp!789582))))

(assert (=> b!2471134 (= tp!789471 e!1567389)))

(assert (= (and b!2471134 (is-Cons!28799 (originalCharacters!5252 t1!67))) b!2471423))

(declare-fun b!2471424 () Bool)

(declare-fun e!1567390 () Bool)

(declare-fun tp!789583 () Bool)

(assert (=> b!2471424 (= e!1567390 (and tp_is_empty!11953 tp!789583))))

(assert (=> b!2471132 (= tp!789462 e!1567390)))

(assert (= (and b!2471132 (is-Cons!28799 (originalCharacters!5252 (h!34201 l!6611)))) b!2471424))

(declare-fun b!2471425 () Bool)

(declare-fun e!1567391 () Bool)

(declare-fun tp!789584 () Bool)

(assert (=> b!2471425 (= e!1567391 (and tp_is_empty!11953 tp!789584))))

(assert (=> b!2471120 (= tp!789472 e!1567391)))

(assert (= (and b!2471120 (is-Cons!28799 (originalCharacters!5252 t2!67))) b!2471425))

(declare-fun b!2471426 () Bool)

(declare-fun e!1567392 () Bool)

(assert (=> b!2471426 (= e!1567392 tp_is_empty!11953)))

(declare-fun b!2471427 () Bool)

(declare-fun tp!789589 () Bool)

(declare-fun tp!789585 () Bool)

(assert (=> b!2471427 (= e!1567392 (and tp!789589 tp!789585))))

(declare-fun b!2471429 () Bool)

(declare-fun tp!789586 () Bool)

(declare-fun tp!789588 () Bool)

(assert (=> b!2471429 (= e!1567392 (and tp!789586 tp!789588))))

(assert (=> b!2471131 (= tp!789463 e!1567392)))

(declare-fun b!2471428 () Bool)

(declare-fun tp!789587 () Bool)

(assert (=> b!2471428 (= e!1567392 tp!789587)))

(assert (= (and b!2471131 (is-ElementMatch!7274 (regex!4486 (h!34202 rules!4472)))) b!2471426))

(assert (= (and b!2471131 (is-Concat!11947 (regex!4486 (h!34202 rules!4472)))) b!2471427))

(assert (= (and b!2471131 (is-Star!7274 (regex!4486 (h!34202 rules!4472)))) b!2471428))

(assert (= (and b!2471131 (is-Union!7274 (regex!4486 (h!34202 rules!4472)))) b!2471429))

(declare-fun b!2471430 () Bool)

(declare-fun e!1567393 () Bool)

(assert (=> b!2471430 (= e!1567393 tp_is_empty!11953)))

(declare-fun b!2471431 () Bool)

(declare-fun tp!789594 () Bool)

(declare-fun tp!789590 () Bool)

(assert (=> b!2471431 (= e!1567393 (and tp!789594 tp!789590))))

(declare-fun b!2471433 () Bool)

(declare-fun tp!789591 () Bool)

(declare-fun tp!789593 () Bool)

(assert (=> b!2471433 (= e!1567393 (and tp!789591 tp!789593))))

(assert (=> b!2471119 (= tp!789464 e!1567393)))

(declare-fun b!2471432 () Bool)

(declare-fun tp!789592 () Bool)

(assert (=> b!2471432 (= e!1567393 tp!789592)))

(assert (= (and b!2471119 (is-ElementMatch!7274 (regex!4486 (rule!6844 t2!67)))) b!2471430))

(assert (= (and b!2471119 (is-Concat!11947 (regex!4486 (rule!6844 t2!67)))) b!2471431))

(assert (= (and b!2471119 (is-Star!7274 (regex!4486 (rule!6844 t2!67)))) b!2471432))

(assert (= (and b!2471119 (is-Union!7274 (regex!4486 (rule!6844 t2!67)))) b!2471433))

(declare-fun b_lambda!75801 () Bool)

(assert (= b_lambda!75791 (or (and b!2471121 b_free!71347 (= (toChars!6209 (transformation!4486 (h!34202 rules!4472))) (toChars!6209 (transformation!4486 (rule!6844 t2!67))))) (and b!2471122 b_free!71343 (= (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611)))) (toChars!6209 (transformation!4486 (rule!6844 t2!67))))) (and b!2471116 b_free!71339 (= (toChars!6209 (transformation!4486 (rule!6844 t1!67))) (toChars!6209 (transformation!4486 (rule!6844 t2!67))))) (and b!2471418 b_free!71371 (= (toChars!6209 (transformation!4486 (rule!6844 (h!34201 (t!209911 l!6611))))) (toChars!6209 (transformation!4486 (rule!6844 t2!67))))) (and b!2471133 b_free!71335) (and b!2471404 b_free!71367 (= (toChars!6209 (transformation!4486 (h!34202 (t!209912 rules!4472)))) (toChars!6209 (transformation!4486 (rule!6844 t2!67))))) b_lambda!75801)))

(declare-fun b_lambda!75803 () Bool)

(assert (= b_lambda!75795 (or (and b!2471116 b_free!71339 (= (toChars!6209 (transformation!4486 (rule!6844 t1!67))) (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611)))))) (and b!2471121 b_free!71347 (= (toChars!6209 (transformation!4486 (h!34202 rules!4472))) (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611)))))) (and b!2471133 b_free!71335 (= (toChars!6209 (transformation!4486 (rule!6844 t2!67))) (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611)))))) (and b!2471404 b_free!71367 (= (toChars!6209 (transformation!4486 (h!34202 (t!209912 rules!4472)))) (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611)))))) (and b!2471122 b_free!71343) (and b!2471418 b_free!71371 (= (toChars!6209 (transformation!4486 (rule!6844 (h!34201 (t!209911 l!6611))))) (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611)))))) b_lambda!75803)))

(declare-fun b_lambda!75805 () Bool)

(assert (= b_lambda!75793 (or (and b!2471121 b_free!71347 (= (toChars!6209 (transformation!4486 (h!34202 rules!4472))) (toChars!6209 (transformation!4486 (rule!6844 t1!67))))) (and b!2471418 b_free!71371 (= (toChars!6209 (transformation!4486 (rule!6844 (h!34201 (t!209911 l!6611))))) (toChars!6209 (transformation!4486 (rule!6844 t1!67))))) (and b!2471133 b_free!71335 (= (toChars!6209 (transformation!4486 (rule!6844 t2!67))) (toChars!6209 (transformation!4486 (rule!6844 t1!67))))) (and b!2471116 b_free!71339) (and b!2471122 b_free!71343 (= (toChars!6209 (transformation!4486 (rule!6844 (h!34201 l!6611)))) (toChars!6209 (transformation!4486 (rule!6844 t1!67))))) (and b!2471404 b_free!71367 (= (toChars!6209 (transformation!4486 (h!34202 (t!209912 rules!4472)))) (toChars!6209 (transformation!4486 (rule!6844 t1!67))))) b_lambda!75805)))

(push 1)

(assert (not b!2471218))

(assert (not b!2471389))

(assert (not b!2471224))

(assert (not b_next!72073))

(assert (not b!2471216))

(assert b_and!187221)

(assert (not d!711367))

(assert (not b_next!72071))

(assert (not b_lambda!75805))

(assert (not d!711391))

(assert b_and!187223)

(assert (not b_next!72049))

(assert (not b!2471340))

(assert (not b!2471424))

(assert (not d!711379))

(assert (not tb!139777))

(assert (not d!711359))

(assert (not b!2471296))

(assert (not b_next!72045))

(assert (not d!711351))

(assert (not b!2471336))

(assert (not b_next!72075))

(assert (not b!2471344))

(assert (not b!2471283))

(assert (not b!2471273))

(assert (not b_next!72041))

(assert (not b!2471236))

(assert b_and!187173)

(assert (not b!2471223))

(assert (not b!2471431))

(assert (not b!2471335))

(assert (not b!2471429))

(assert b_and!187225)

(assert (not b!2471274))

(assert b_and!187245)

(assert (not b!2471387))

(assert (not b!2471384))

(assert (not b_lambda!75803))

(assert (not b_next!72039))

(assert (not b!2471343))

(assert (not b!2471425))

(assert (not d!711335))

(assert (not b_next!72051))

(assert (not b_next!72043))

(assert (not b!2471346))

(assert (not b!2471353))

(assert (not d!711341))

(assert (not b!2471342))

(assert b_and!187249)

(assert (not b!2471238))

(assert (not b!2471217))

(assert (not b!2471313))

(assert b_and!187251)

(assert (not b!2471382))

(assert (not b!2471415))

(assert (not b!2471427))

(assert (not b_next!72037))

(assert (not d!711365))

(assert (not b!2471383))

(assert (not b!2471314))

(assert (not b_next!72047))

(assert (not b!2471297))

(assert (not b!2471347))

(assert (not b!2471433))

(assert (not tb!139793))

(assert (not b!2471432))

(assert (not d!711389))

(assert (not b!2471388))

(assert b_and!187185)

(assert (not d!711385))

(assert (not b!2471352))

(assert (not d!711339))

(assert (not b!2471403))

(assert (not b!2471338))

(assert (not b!2471417))

(assert b_and!187227)

(assert (not b!2471416))

(assert (not b_lambda!75801))

(assert (not b!2471348))

(assert (not d!711347))

(assert (not b!2471229))

(assert (not b!2471294))

(assert (not b!2471402))

(assert (not tb!139785))

(assert (not b!2471428))

(assert (not b!2471237))

(assert tp_is_empty!11953)

(assert (not b!2471300))

(assert (not b!2471312))

(assert (not d!711363))

(assert (not b!2471364))

(assert (not b!2471339))

(assert (not b!2471244))

(assert (not b_next!72069))

(assert b_and!187177)

(assert (not b!2471423))

(assert b_and!187247)

(assert (not b!2471295))

(assert (not b!2471288))

(assert b_and!187181)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!72071))

(assert b_and!187223)

(assert (not b_next!72049))

(assert (not b_next!72045))

(assert (not b_next!72075))

(assert (not b_next!72041))

(assert b_and!187173)

(assert (not b_next!72039))

(assert b_and!187249)

(assert (not b_next!72047))

(assert b_and!187185)

(assert b_and!187227)

(assert (not b_next!72073))

(assert b_and!187221)

(assert b_and!187225)

(assert b_and!187245)

(assert (not b_next!72051))

(assert (not b_next!72043))

(assert b_and!187251)

(assert (not b_next!72037))

(assert (not b_next!72069))

(assert b_and!187177)

(assert b_and!187181)

(assert b_and!187247)

(check-sat)

(pop 1)

