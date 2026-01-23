; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115454 () Bool)

(assert start!115454)

(declare-fun b!1307152 () Bool)

(declare-fun b_free!31363 () Bool)

(declare-fun b_next!32067 () Bool)

(assert (=> b!1307152 (= b_free!31363 (not b_next!32067))))

(declare-fun tp!381301 () Bool)

(declare-fun b_and!87263 () Bool)

(assert (=> b!1307152 (= tp!381301 b_and!87263)))

(declare-fun b_free!31365 () Bool)

(declare-fun b_next!32069 () Bool)

(assert (=> b!1307152 (= b_free!31365 (not b_next!32069))))

(declare-fun tp!381302 () Bool)

(declare-fun b_and!87265 () Bool)

(assert (=> b!1307152 (= tp!381302 b_and!87265)))

(declare-fun b!1307173 () Bool)

(declare-fun b_free!31367 () Bool)

(declare-fun b_next!32071 () Bool)

(assert (=> b!1307173 (= b_free!31367 (not b_next!32071))))

(declare-fun tp!381293 () Bool)

(declare-fun b_and!87267 () Bool)

(assert (=> b!1307173 (= tp!381293 b_and!87267)))

(declare-fun b_free!31369 () Bool)

(declare-fun b_next!32073 () Bool)

(assert (=> b!1307173 (= b_free!31369 (not b_next!32073))))

(declare-fun tp!381294 () Bool)

(declare-fun b_and!87269 () Bool)

(assert (=> b!1307173 (= tp!381294 b_and!87269)))

(declare-fun b!1307149 () Bool)

(declare-fun b_free!31371 () Bool)

(declare-fun b_next!32075 () Bool)

(assert (=> b!1307149 (= b_free!31371 (not b_next!32075))))

(declare-fun tp!381296 () Bool)

(declare-fun b_and!87271 () Bool)

(assert (=> b!1307149 (= tp!381296 b_and!87271)))

(declare-fun b_free!31373 () Bool)

(declare-fun b_next!32077 () Bool)

(assert (=> b!1307149 (= b_free!31373 (not b_next!32077))))

(declare-fun tp!381299 () Bool)

(declare-fun b_and!87273 () Bool)

(assert (=> b!1307149 (= tp!381299 b_and!87273)))

(declare-fun b!1307146 () Bool)

(assert (=> b!1307146 true))

(assert (=> b!1307146 true))

(declare-fun b!1307170 () Bool)

(assert (=> b!1307170 true))

(declare-fun b!1307168 () Bool)

(assert (=> b!1307168 true))

(declare-fun e!838250 () Bool)

(declare-fun e!838262 () Bool)

(declare-datatypes ((List!13266 0))(
  ( (Nil!13200) (Cons!13200 (h!18601 (_ BitVec 16)) (t!117889 List!13266)) )
))
(declare-datatypes ((TokenValue!2373 0))(
  ( (FloatLiteralValue!4746 (text!17056 List!13266)) (TokenValueExt!2372 (__x!8575 Int)) (Broken!11865 (value!74672 List!13266)) (Object!2438) (End!2373) (Def!2373) (Underscore!2373) (Match!2373) (Else!2373) (Error!2373) (Case!2373) (If!2373) (Extends!2373) (Abstract!2373) (Class!2373) (Val!2373) (DelimiterValue!4746 (del!2433 List!13266)) (KeywordValue!2379 (value!74673 List!13266)) (CommentValue!4746 (value!74674 List!13266)) (WhitespaceValue!4746 (value!74675 List!13266)) (IndentationValue!2373 (value!74676 List!13266)) (String!16100) (Int32!2373) (Broken!11866 (value!74677 List!13266)) (Boolean!2374) (Unit!19285) (OperatorValue!2376 (op!2433 List!13266)) (IdentifierValue!4746 (value!74678 List!13266)) (IdentifierValue!4747 (value!74679 List!13266)) (WhitespaceValue!4747 (value!74680 List!13266)) (True!4746) (False!4746) (Broken!11867 (value!74681 List!13266)) (Broken!11868 (value!74682 List!13266)) (True!4747) (RightBrace!2373) (RightBracket!2373) (Colon!2373) (Null!2373) (Comma!2373) (LeftBracket!2373) (False!4747) (LeftBrace!2373) (ImaginaryLiteralValue!2373 (text!17057 List!13266)) (StringLiteralValue!7119 (value!74683 List!13266)) (EOFValue!2373 (value!74684 List!13266)) (IdentValue!2373 (value!74685 List!13266)) (DelimiterValue!4747 (value!74686 List!13266)) (DedentValue!2373 (value!74687 List!13266)) (NewLineValue!2373 (value!74688 List!13266)) (IntegerValue!7119 (value!74689 (_ BitVec 32)) (text!17058 List!13266)) (IntegerValue!7120 (value!74690 Int) (text!17059 List!13266)) (Times!2373) (Or!2373) (Equal!2373) (Minus!2373) (Broken!11869 (value!74691 List!13266)) (And!2373) (Div!2373) (LessEqual!2373) (Mod!2373) (Concat!5970) (Not!2373) (Plus!2373) (SpaceValue!2373 (value!74692 List!13266)) (IntegerValue!7121 (value!74693 Int) (text!17060 List!13266)) (StringLiteralValue!7120 (text!17061 List!13266)) (FloatLiteralValue!4747 (text!17062 List!13266)) (BytesLiteralValue!2373 (value!74694 List!13266)) (CommentValue!4747 (value!74695 List!13266)) (StringLiteralValue!7121 (value!74696 List!13266)) (ErrorTokenValue!2373 (msg!2434 List!13266)) )
))
(declare-datatypes ((C!7484 0))(
  ( (C!7485 (val!4302 Int)) )
))
(declare-datatypes ((List!13267 0))(
  ( (Nil!13201) (Cons!13201 (h!18602 C!7484) (t!117890 List!13267)) )
))
(declare-datatypes ((IArray!8677 0))(
  ( (IArray!8678 (innerList!4396 List!13267)) )
))
(declare-datatypes ((String!16101 0))(
  ( (String!16102 (value!74697 String)) )
))
(declare-datatypes ((Conc!4336 0))(
  ( (Node!4336 (left!11351 Conc!4336) (right!11681 Conc!4336) (csize!8902 Int) (cheight!4547 Int)) (Leaf!6674 (xs!7051 IArray!8677) (csize!8903 Int)) (Empty!4336) )
))
(declare-datatypes ((BalanceConc!8612 0))(
  ( (BalanceConc!8613 (c!214756 Conc!4336)) )
))
(declare-datatypes ((Regex!3597 0))(
  ( (ElementMatch!3597 (c!214757 C!7484)) (Concat!5971 (regOne!7706 Regex!3597) (regTwo!7706 Regex!3597)) (EmptyExpr!3597) (Star!3597 (reg!3926 Regex!3597)) (EmptyLang!3597) (Union!3597 (regOne!7707 Regex!3597) (regTwo!7707 Regex!3597)) )
))
(declare-datatypes ((TokenValueInjection!4406 0))(
  ( (TokenValueInjection!4407 (toValue!3502 Int) (toChars!3361 Int)) )
))
(declare-datatypes ((Rule!4366 0))(
  ( (Rule!4367 (regex!2283 Regex!3597) (tag!2545 String!16101) (isSeparator!2283 Bool) (transformation!2283 TokenValueInjection!4406)) )
))
(declare-datatypes ((Token!4228 0))(
  ( (Token!4229 (value!74698 TokenValue!2373) (rule!4022 Rule!4366) (size!10746 Int) (originalCharacters!3145 List!13267)) )
))
(declare-fun t2!34 () Token!4228)

(declare-fun b!1307142 () Bool)

(declare-fun tp!381297 () Bool)

(declare-fun inv!17598 (String!16101) Bool)

(declare-fun inv!17601 (TokenValueInjection!4406) Bool)

(assert (=> b!1307142 (= e!838250 (and tp!381297 (inv!17598 (tag!2545 (rule!4022 t2!34))) (inv!17601 (transformation!2283 (rule!4022 t2!34))) e!838262))))

(declare-fun b!1307143 () Bool)

(declare-fun res!586200 () Bool)

(declare-fun e!838245 () Bool)

(assert (=> b!1307143 (=> (not res!586200) (not e!838245))))

(declare-datatypes ((List!13268 0))(
  ( (Nil!13202) (Cons!13202 (h!18603 Rule!4366) (t!117891 List!13268)) )
))
(declare-fun rules!2550 () List!13268)

(declare-fun isEmpty!7810 (List!13268) Bool)

(assert (=> b!1307143 (= res!586200 (not (isEmpty!7810 rules!2550)))))

(declare-fun b!1307144 () Bool)

(declare-fun res!586185 () Bool)

(assert (=> b!1307144 (=> (not res!586185) (not e!838245))))

(declare-datatypes ((LexerInterface!1978 0))(
  ( (LexerInterfaceExt!1975 (__x!8576 Int)) (Lexer!1976) )
))
(declare-fun thiss!19762 () LexerInterface!1978)

(declare-fun rulesProduceIndividualToken!947 (LexerInterface!1978 List!13268 Token!4228) Bool)

(assert (=> b!1307144 (= res!586185 (rulesProduceIndividualToken!947 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1307145 () Bool)

(declare-fun res!586187 () Bool)

(assert (=> b!1307145 (=> (not res!586187) (not e!838245))))

(declare-fun t1!34 () Token!4228)

(assert (=> b!1307145 (= res!586187 (not (= (isSeparator!2283 (rule!4022 t1!34)) (isSeparator!2283 (rule!4022 t2!34)))))))

(declare-fun e!838241 () Bool)

(declare-fun e!838255 () Bool)

(assert (=> b!1307146 (= e!838241 (not e!838255))))

(declare-fun res!586191 () Bool)

(assert (=> b!1307146 (=> res!586191 e!838255)))

(declare-fun lambda!52380 () Int)

(declare-fun Exists!755 (Int) Bool)

(assert (=> b!1307146 (= res!586191 (not (Exists!755 lambda!52380)))))

(assert (=> b!1307146 (Exists!755 lambda!52380)))

(declare-datatypes ((Unit!19286 0))(
  ( (Unit!19287) )
))
(declare-fun lt!430200 () Unit!19286)

(declare-fun lt!430197 () Regex!3597)

(declare-fun lt!430201 () List!13267)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!73 (Regex!3597 List!13267) Unit!19286)

(assert (=> b!1307146 (= lt!430200 (lemmaPrefixMatchThenExistsStringThatMatches!73 lt!430197 lt!430201))))

(declare-fun b!1307147 () Bool)

(declare-fun e!838253 () Bool)

(assert (=> b!1307147 (= e!838253 e!838241)))

(declare-fun res!586207 () Bool)

(assert (=> b!1307147 (=> (not res!586207) (not e!838241))))

(declare-fun prefixMatch!110 (Regex!3597 List!13267) Bool)

(assert (=> b!1307147 (= res!586207 (prefixMatch!110 lt!430197 lt!430201))))

(declare-fun rulesRegex!168 (LexerInterface!1978 List!13268) Regex!3597)

(assert (=> b!1307147 (= lt!430197 (rulesRegex!168 thiss!19762 rules!2550))))

(declare-fun lt!430205 () List!13267)

(declare-fun lt!430209 () C!7484)

(declare-fun ++!3360 (List!13267 List!13267) List!13267)

(assert (=> b!1307147 (= lt!430201 (++!3360 lt!430205 (Cons!13201 lt!430209 Nil!13201)))))

(declare-fun lt!430206 () BalanceConc!8612)

(declare-fun apply!2963 (BalanceConc!8612 Int) C!7484)

(assert (=> b!1307147 (= lt!430209 (apply!2963 lt!430206 0))))

(declare-fun lt!430214 () BalanceConc!8612)

(declare-fun list!4950 (BalanceConc!8612) List!13267)

(assert (=> b!1307147 (= lt!430205 (list!4950 lt!430214))))

(declare-fun charsOf!1255 (Token!4228) BalanceConc!8612)

(assert (=> b!1307147 (= lt!430214 (charsOf!1255 t1!34))))

(declare-fun b!1307148 () Bool)

(declare-fun res!586198 () Bool)

(declare-fun e!838244 () Bool)

(assert (=> b!1307148 (=> res!586198 e!838244)))

(declare-fun lt!430213 () BalanceConc!8612)

(declare-datatypes ((List!13269 0))(
  ( (Nil!13203) (Cons!13203 (h!18604 Token!4228) (t!117892 List!13269)) )
))
(declare-fun lt!430207 () List!13269)

(declare-datatypes ((tuple2!12794 0))(
  ( (tuple2!12795 (_1!7283 List!13269) (_2!7283 List!13267)) )
))
(declare-fun lexList!516 (LexerInterface!1978 List!13268 List!13267) tuple2!12794)

(assert (=> b!1307148 (= res!586198 (not (= (lexList!516 thiss!19762 rules!2550 (list!4950 lt!430213)) (tuple2!12795 lt!430207 Nil!13201))))))

(assert (=> b!1307149 (= e!838262 (and tp!381296 tp!381299))))

(declare-fun b!1307150 () Bool)

(declare-fun res!586196 () Bool)

(declare-fun e!838242 () Bool)

(assert (=> b!1307150 (=> res!586196 e!838242)))

(declare-fun lt!430204 () List!13267)

(declare-fun lt!430203 () C!7484)

(declare-fun contains!2259 (List!13267 C!7484) Bool)

(assert (=> b!1307150 (= res!586196 (not (contains!2259 lt!430204 lt!430203)))))

(declare-fun b!1307151 () Bool)

(declare-fun res!586189 () Bool)

(assert (=> b!1307151 (=> (not res!586189) (not e!838245))))

(assert (=> b!1307151 (= res!586189 (rulesProduceIndividualToken!947 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1307153 () Bool)

(declare-fun res!586190 () Bool)

(assert (=> b!1307153 (=> res!586190 e!838244)))

(declare-datatypes ((tuple2!12796 0))(
  ( (tuple2!12797 (_1!7284 Token!4228) (_2!7284 List!13267)) )
))
(declare-datatypes ((Option!2548 0))(
  ( (None!2547) (Some!2547 (v!21053 tuple2!12796)) )
))
(declare-fun maxPrefix!988 (LexerInterface!1978 List!13268 List!13267) Option!2548)

(assert (=> b!1307153 (= res!586190 (not (= (maxPrefix!988 thiss!19762 rules!2550 lt!430205) (Some!2547 (tuple2!12797 t1!34 Nil!13201)))))))

(declare-fun e!838264 () Bool)

(declare-fun tp!381292 () Bool)

(declare-fun b!1307154 () Bool)

(declare-fun inv!21 (TokenValue!2373) Bool)

(assert (=> b!1307154 (= e!838264 (and (inv!21 (value!74698 t2!34)) e!838250 tp!381292))))

(declare-fun b!1307155 () Bool)

(declare-fun res!586193 () Bool)

(assert (=> b!1307155 (=> res!586193 e!838242)))

(declare-fun matchR!1599 (Regex!3597 List!13267) Bool)

(assert (=> b!1307155 (= res!586193 (not (matchR!1599 lt!430197 lt!430204)))))

(declare-fun b!1307156 () Bool)

(declare-fun e!838254 () Bool)

(assert (=> b!1307156 (= e!838254 e!838244)))

(declare-fun res!586206 () Bool)

(assert (=> b!1307156 (=> res!586206 e!838244)))

(declare-datatypes ((IArray!8679 0))(
  ( (IArray!8680 (innerList!4397 List!13269)) )
))
(declare-datatypes ((Conc!4337 0))(
  ( (Node!4337 (left!11352 Conc!4337) (right!11682 Conc!4337) (csize!8904 Int) (cheight!4548 Int)) (Leaf!6675 (xs!7052 IArray!8679) (csize!8905 Int)) (Empty!4337) )
))
(declare-datatypes ((BalanceConc!8614 0))(
  ( (BalanceConc!8615 (c!214758 Conc!4337)) )
))
(declare-datatypes ((tuple2!12798 0))(
  ( (tuple2!12799 (_1!7285 BalanceConc!8614) (_2!7285 BalanceConc!8612)) )
))
(declare-fun lt!430199 () tuple2!12798)

(declare-fun list!4951 (BalanceConc!8614) List!13269)

(assert (=> b!1307156 (= res!586206 (not (= (list!4951 (_1!7285 lt!430199)) lt!430207)))))

(assert (=> b!1307156 (= lt!430207 (Cons!13203 t1!34 Nil!13203))))

(declare-fun lex!813 (LexerInterface!1978 List!13268 BalanceConc!8612) tuple2!12798)

(assert (=> b!1307156 (= lt!430199 (lex!813 thiss!19762 rules!2550 lt!430213))))

(declare-fun print!752 (LexerInterface!1978 BalanceConc!8614) BalanceConc!8612)

(declare-fun singletonSeq!854 (Token!4228) BalanceConc!8614)

(assert (=> b!1307156 (= lt!430213 (print!752 thiss!19762 (singletonSeq!854 t1!34)))))

(declare-fun lt!430202 () Rule!4366)

(declare-fun lambda!52383 () Int)

(declare-fun getWitness!160 (List!13268 Int) Rule!4366)

(assert (=> b!1307156 (= lt!430202 (getWitness!160 rules!2550 lambda!52383))))

(declare-fun b!1307157 () Bool)

(declare-fun res!586192 () Bool)

(assert (=> b!1307157 (=> (not res!586192) (not e!838253))))

(declare-fun separableTokensPredicate!261 (LexerInterface!1978 Token!4228 Token!4228 List!13268) Bool)

(assert (=> b!1307157 (= res!586192 (not (separableTokensPredicate!261 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1307158 () Bool)

(declare-fun res!586204 () Bool)

(assert (=> b!1307158 (=> (not res!586204) (not e!838245))))

(declare-fun rulesInvariant!1848 (LexerInterface!1978 List!13268) Bool)

(assert (=> b!1307158 (= res!586204 (rulesInvariant!1848 thiss!19762 rules!2550))))

(declare-fun b!1307159 () Bool)

(declare-fun e!838249 () Bool)

(declare-fun e!838251 () Bool)

(assert (=> b!1307159 (= e!838249 e!838251)))

(declare-fun res!586208 () Bool)

(assert (=> b!1307159 (=> res!586208 e!838251)))

(declare-fun lt!430210 () Regex!3597)

(declare-fun lambda!52381 () Int)

(declare-datatypes ((List!13270 0))(
  ( (Nil!13204) (Cons!13204 (h!18605 Regex!3597) (t!117893 List!13270)) )
))
(declare-fun contains!2260 (List!13270 Regex!3597) Bool)

(declare-fun map!2891 (List!13268 Int) List!13270)

(assert (=> b!1307159 (= res!586208 (not (contains!2260 (map!2891 rules!2550 lambda!52381) lt!430210)))))

(declare-fun lambda!52382 () Int)

(declare-fun getWitness!161 (List!13270 Int) Regex!3597)

(assert (=> b!1307159 (= lt!430210 (getWitness!161 (map!2891 rules!2550 lambda!52381) lambda!52382))))

(declare-fun b!1307160 () Bool)

(declare-fun res!586197 () Bool)

(assert (=> b!1307160 (=> res!586197 e!838244)))

(declare-fun isEmpty!7811 (BalanceConc!8612) Bool)

(assert (=> b!1307160 (= res!586197 (not (isEmpty!7811 (_2!7285 lt!430199))))))

(declare-fun b!1307161 () Bool)

(declare-fun e!838258 () Bool)

(assert (=> b!1307161 (= e!838258 e!838242)))

(declare-fun res!586186 () Bool)

(assert (=> b!1307161 (=> res!586186 e!838242)))

(assert (=> b!1307161 (= res!586186 (not (contains!2259 lt!430201 lt!430203)))))

(assert (=> b!1307161 (= lt!430203 (apply!2963 lt!430214 0))))

(declare-fun b!1307162 () Bool)

(assert (=> b!1307162 (= e!838245 e!838253)))

(declare-fun res!586201 () Bool)

(assert (=> b!1307162 (=> (not res!586201) (not e!838253))))

(declare-fun size!10747 (BalanceConc!8612) Int)

(assert (=> b!1307162 (= res!586201 (> (size!10747 lt!430206) 0))))

(assert (=> b!1307162 (= lt!430206 (charsOf!1255 t2!34))))

(declare-fun b!1307163 () Bool)

(declare-fun e!838260 () Bool)

(declare-fun e!838247 () Bool)

(declare-fun tp!381291 () Bool)

(assert (=> b!1307163 (= e!838260 (and e!838247 tp!381291))))

(declare-fun tp!381298 () Bool)

(declare-fun b!1307164 () Bool)

(declare-fun e!838257 () Bool)

(assert (=> b!1307164 (= e!838247 (and tp!381298 (inv!17598 (tag!2545 (h!18603 rules!2550))) (inv!17601 (transformation!2283 (h!18603 rules!2550))) e!838257))))

(declare-fun b!1307165 () Bool)

(declare-fun res!586205 () Bool)

(assert (=> b!1307165 (=> res!586205 e!838242)))

(assert (=> b!1307165 (= res!586205 (not (contains!2259 lt!430204 lt!430209)))))

(declare-fun b!1307166 () Bool)

(assert (=> b!1307166 (= e!838244 true)))

(declare-fun lt!430212 () BalanceConc!8612)

(assert (=> b!1307166 (= lt!430212 (print!752 thiss!19762 (singletonSeq!854 t2!34)))))

(declare-fun b!1307167 () Bool)

(assert (=> b!1307167 (= e!838255 e!838258)))

(declare-fun res!586188 () Bool)

(assert (=> b!1307167 (=> res!586188 e!838258)))

(declare-fun getSuffix!453 (List!13267 List!13267) List!13267)

(assert (=> b!1307167 (= res!586188 (not (= lt!430204 (++!3360 lt!430201 (getSuffix!453 lt!430204 lt!430201)))))))

(declare-fun pickWitness!60 (Int) List!13267)

(assert (=> b!1307167 (= lt!430204 (pickWitness!60 lambda!52380))))

(assert (=> b!1307168 (= e!838251 e!838254)))

(declare-fun res!586203 () Bool)

(assert (=> b!1307168 (=> res!586203 e!838254)))

(declare-fun exists!268 (List!13268 Int) Bool)

(assert (=> b!1307168 (= res!586203 (not (exists!268 rules!2550 lambda!52383)))))

(assert (=> b!1307168 (exists!268 rules!2550 lambda!52383)))

(declare-fun lt!430198 () Unit!19286)

(declare-fun lemmaMapContains!26 (List!13268 Int Regex!3597) Unit!19286)

(assert (=> b!1307168 (= lt!430198 (lemmaMapContains!26 rules!2550 lambda!52381 lt!430210))))

(declare-fun b!1307169 () Bool)

(declare-fun res!586199 () Bool)

(assert (=> b!1307169 (=> (not res!586199) (not e!838253))))

(declare-fun sepAndNonSepRulesDisjointChars!656 (List!13268 List!13268) Bool)

(assert (=> b!1307169 (= res!586199 (sepAndNonSepRulesDisjointChars!656 rules!2550 rules!2550))))

(assert (=> b!1307170 (= e!838242 e!838249)))

(declare-fun res!586202 () Bool)

(assert (=> b!1307170 (=> res!586202 e!838249)))

(declare-fun exists!269 (List!13270 Int) Bool)

(assert (=> b!1307170 (= res!586202 (not (exists!269 (map!2891 rules!2550 lambda!52381) lambda!52382)))))

(declare-fun lt!430211 () List!13270)

(assert (=> b!1307170 (exists!269 lt!430211 lambda!52382)))

(declare-fun lt!430208 () Unit!19286)

(declare-fun matchRGenUnionSpec!34 (Regex!3597 List!13270 List!13267) Unit!19286)

(assert (=> b!1307170 (= lt!430208 (matchRGenUnionSpec!34 lt!430197 lt!430211 lt!430204))))

(assert (=> b!1307170 (= lt!430211 (map!2891 rules!2550 lambda!52381))))

(declare-fun b!1307171 () Bool)

(declare-fun res!586184 () Bool)

(assert (=> b!1307171 (=> res!586184 e!838244)))

(declare-fun contains!2261 (List!13268 Rule!4366) Bool)

(assert (=> b!1307171 (= res!586184 (not (contains!2261 rules!2550 (rule!4022 t1!34))))))

(declare-fun e!838243 () Bool)

(declare-fun tp!381295 () Bool)

(declare-fun e!838246 () Bool)

(declare-fun b!1307172 () Bool)

(assert (=> b!1307172 (= e!838246 (and (inv!21 (value!74698 t1!34)) e!838243 tp!381295))))

(declare-fun e!838248 () Bool)

(assert (=> b!1307173 (= e!838248 (and tp!381293 tp!381294))))

(declare-fun b!1307174 () Bool)

(declare-fun res!586194 () Bool)

(assert (=> b!1307174 (=> res!586194 e!838242)))

(assert (=> b!1307174 (= res!586194 (not (contains!2259 lt!430201 lt!430209)))))

(declare-fun b!1307175 () Bool)

(declare-fun tp!381300 () Bool)

(assert (=> b!1307175 (= e!838243 (and tp!381300 (inv!17598 (tag!2545 (rule!4022 t1!34))) (inv!17601 (transformation!2283 (rule!4022 t1!34))) e!838248))))

(declare-fun res!586195 () Bool)

(assert (=> start!115454 (=> (not res!586195) (not e!838245))))

(get-info :version)

(assert (=> start!115454 (= res!586195 ((_ is Lexer!1976) thiss!19762))))

(assert (=> start!115454 e!838245))

(assert (=> start!115454 true))

(assert (=> start!115454 e!838260))

(declare-fun inv!17602 (Token!4228) Bool)

(assert (=> start!115454 (and (inv!17602 t1!34) e!838246)))

(assert (=> start!115454 (and (inv!17602 t2!34) e!838264)))

(assert (=> b!1307152 (= e!838257 (and tp!381301 tp!381302))))

(assert (= (and start!115454 res!586195) b!1307143))

(assert (= (and b!1307143 res!586200) b!1307158))

(assert (= (and b!1307158 res!586204) b!1307151))

(assert (= (and b!1307151 res!586189) b!1307144))

(assert (= (and b!1307144 res!586185) b!1307145))

(assert (= (and b!1307145 res!586187) b!1307162))

(assert (= (and b!1307162 res!586201) b!1307169))

(assert (= (and b!1307169 res!586199) b!1307157))

(assert (= (and b!1307157 res!586192) b!1307147))

(assert (= (and b!1307147 res!586207) b!1307146))

(assert (= (and b!1307146 (not res!586191)) b!1307167))

(assert (= (and b!1307167 (not res!586188)) b!1307161))

(assert (= (and b!1307161 (not res!586186)) b!1307150))

(assert (= (and b!1307150 (not res!586196)) b!1307174))

(assert (= (and b!1307174 (not res!586194)) b!1307165))

(assert (= (and b!1307165 (not res!586205)) b!1307155))

(assert (= (and b!1307155 (not res!586193)) b!1307170))

(assert (= (and b!1307170 (not res!586202)) b!1307159))

(assert (= (and b!1307159 (not res!586208)) b!1307168))

(assert (= (and b!1307168 (not res!586203)) b!1307156))

(assert (= (and b!1307156 (not res!586206)) b!1307160))

(assert (= (and b!1307160 (not res!586197)) b!1307148))

(assert (= (and b!1307148 (not res!586198)) b!1307153))

(assert (= (and b!1307153 (not res!586190)) b!1307171))

(assert (= (and b!1307171 (not res!586184)) b!1307166))

(assert (= b!1307164 b!1307152))

(assert (= b!1307163 b!1307164))

(assert (= (and start!115454 ((_ is Cons!13202) rules!2550)) b!1307163))

(assert (= b!1307175 b!1307173))

(assert (= b!1307172 b!1307175))

(assert (= start!115454 b!1307172))

(assert (= b!1307142 b!1307149))

(assert (= b!1307154 b!1307142))

(assert (= start!115454 b!1307154))

(declare-fun m!1458737 () Bool)

(assert (=> b!1307155 m!1458737))

(declare-fun m!1458739 () Bool)

(assert (=> b!1307150 m!1458739))

(declare-fun m!1458741 () Bool)

(assert (=> b!1307147 m!1458741))

(declare-fun m!1458743 () Bool)

(assert (=> b!1307147 m!1458743))

(declare-fun m!1458745 () Bool)

(assert (=> b!1307147 m!1458745))

(declare-fun m!1458747 () Bool)

(assert (=> b!1307147 m!1458747))

(declare-fun m!1458749 () Bool)

(assert (=> b!1307147 m!1458749))

(declare-fun m!1458751 () Bool)

(assert (=> b!1307147 m!1458751))

(declare-fun m!1458753 () Bool)

(assert (=> b!1307174 m!1458753))

(declare-fun m!1458755 () Bool)

(assert (=> b!1307168 m!1458755))

(assert (=> b!1307168 m!1458755))

(declare-fun m!1458757 () Bool)

(assert (=> b!1307168 m!1458757))

(declare-fun m!1458759 () Bool)

(assert (=> b!1307165 m!1458759))

(declare-fun m!1458761 () Bool)

(assert (=> b!1307160 m!1458761))

(declare-fun m!1458763 () Bool)

(assert (=> b!1307142 m!1458763))

(declare-fun m!1458765 () Bool)

(assert (=> b!1307142 m!1458765))

(declare-fun m!1458767 () Bool)

(assert (=> start!115454 m!1458767))

(declare-fun m!1458769 () Bool)

(assert (=> start!115454 m!1458769))

(declare-fun m!1458771 () Bool)

(assert (=> b!1307164 m!1458771))

(declare-fun m!1458773 () Bool)

(assert (=> b!1307164 m!1458773))

(declare-fun m!1458775 () Bool)

(assert (=> b!1307151 m!1458775))

(declare-fun m!1458777 () Bool)

(assert (=> b!1307146 m!1458777))

(assert (=> b!1307146 m!1458777))

(declare-fun m!1458779 () Bool)

(assert (=> b!1307146 m!1458779))

(declare-fun m!1458781 () Bool)

(assert (=> b!1307161 m!1458781))

(declare-fun m!1458783 () Bool)

(assert (=> b!1307161 m!1458783))

(declare-fun m!1458785 () Bool)

(assert (=> b!1307159 m!1458785))

(assert (=> b!1307159 m!1458785))

(declare-fun m!1458787 () Bool)

(assert (=> b!1307159 m!1458787))

(assert (=> b!1307159 m!1458785))

(assert (=> b!1307159 m!1458785))

(declare-fun m!1458789 () Bool)

(assert (=> b!1307159 m!1458789))

(declare-fun m!1458791 () Bool)

(assert (=> b!1307144 m!1458791))

(declare-fun m!1458793 () Bool)

(assert (=> b!1307169 m!1458793))

(declare-fun m!1458795 () Bool)

(assert (=> b!1307158 m!1458795))

(declare-fun m!1458797 () Bool)

(assert (=> b!1307153 m!1458797))

(declare-fun m!1458799 () Bool)

(assert (=> b!1307157 m!1458799))

(declare-fun m!1458801 () Bool)

(assert (=> b!1307148 m!1458801))

(assert (=> b!1307148 m!1458801))

(declare-fun m!1458803 () Bool)

(assert (=> b!1307148 m!1458803))

(declare-fun m!1458805 () Bool)

(assert (=> b!1307171 m!1458805))

(declare-fun m!1458807 () Bool)

(assert (=> b!1307175 m!1458807))

(declare-fun m!1458809 () Bool)

(assert (=> b!1307175 m!1458809))

(declare-fun m!1458811 () Bool)

(assert (=> b!1307167 m!1458811))

(assert (=> b!1307167 m!1458811))

(declare-fun m!1458813 () Bool)

(assert (=> b!1307167 m!1458813))

(declare-fun m!1458815 () Bool)

(assert (=> b!1307167 m!1458815))

(assert (=> b!1307170 m!1458785))

(declare-fun m!1458817 () Bool)

(assert (=> b!1307170 m!1458817))

(assert (=> b!1307170 m!1458785))

(assert (=> b!1307170 m!1458785))

(declare-fun m!1458819 () Bool)

(assert (=> b!1307170 m!1458819))

(declare-fun m!1458821 () Bool)

(assert (=> b!1307170 m!1458821))

(declare-fun m!1458823 () Bool)

(assert (=> b!1307162 m!1458823))

(declare-fun m!1458825 () Bool)

(assert (=> b!1307162 m!1458825))

(declare-fun m!1458827 () Bool)

(assert (=> b!1307143 m!1458827))

(declare-fun m!1458829 () Bool)

(assert (=> b!1307156 m!1458829))

(declare-fun m!1458831 () Bool)

(assert (=> b!1307156 m!1458831))

(declare-fun m!1458833 () Bool)

(assert (=> b!1307156 m!1458833))

(declare-fun m!1458835 () Bool)

(assert (=> b!1307156 m!1458835))

(assert (=> b!1307156 m!1458833))

(declare-fun m!1458837 () Bool)

(assert (=> b!1307156 m!1458837))

(declare-fun m!1458839 () Bool)

(assert (=> b!1307154 m!1458839))

(declare-fun m!1458841 () Bool)

(assert (=> b!1307166 m!1458841))

(assert (=> b!1307166 m!1458841))

(declare-fun m!1458843 () Bool)

(assert (=> b!1307166 m!1458843))

(declare-fun m!1458845 () Bool)

(assert (=> b!1307172 m!1458845))

(check-sat (not b!1307164) (not b!1307155) (not b!1307166) (not b!1307168) (not b_next!32071) (not b!1307162) (not b!1307158) (not b!1307151) (not b_next!32077) (not b!1307153) (not b!1307161) b_and!87263 (not b!1307156) (not b!1307143) (not b!1307171) (not b!1307165) (not b!1307167) b_and!87273 (not b_next!32073) b_and!87265 (not b_next!32075) (not b!1307159) (not b!1307169) (not b!1307172) (not b!1307160) (not start!115454) (not b!1307150) (not b!1307154) (not b!1307163) (not b_next!32067) (not b!1307147) (not b!1307175) b_and!87267 (not b!1307174) (not b_next!32069) b_and!87271 (not b!1307144) (not b!1307146) (not b!1307148) (not b!1307157) (not b!1307142) (not b!1307170) b_and!87269)
(check-sat b_and!87263 b_and!87273 (not b_next!32075) (not b_next!32071) (not b_next!32067) b_and!87267 (not b_next!32077) b_and!87269 (not b_next!32073) b_and!87265 (not b_next!32069) b_and!87271)
