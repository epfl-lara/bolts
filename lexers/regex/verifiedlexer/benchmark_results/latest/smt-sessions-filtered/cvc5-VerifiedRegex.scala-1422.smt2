; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!74372 () Bool)

(assert start!74372)

(declare-fun b!838166 () Bool)

(declare-fun b_free!24781 () Bool)

(declare-fun b_next!24845 () Bool)

(assert (=> b!838166 (= b_free!24781 (not b_next!24845))))

(declare-fun tp!263187 () Bool)

(declare-fun b_and!72261 () Bool)

(assert (=> b!838166 (= tp!263187 b_and!72261)))

(declare-fun b_free!24783 () Bool)

(declare-fun b_next!24847 () Bool)

(assert (=> b!838166 (= b_free!24783 (not b_next!24847))))

(declare-fun tp!263191 () Bool)

(declare-fun b_and!72263 () Bool)

(assert (=> b!838166 (= tp!263191 b_and!72263)))

(declare-fun b!838170 () Bool)

(declare-fun b_free!24785 () Bool)

(declare-fun b_next!24849 () Bool)

(assert (=> b!838170 (= b_free!24785 (not b_next!24849))))

(declare-fun tp!263197 () Bool)

(declare-fun b_and!72265 () Bool)

(assert (=> b!838170 (= tp!263197 b_and!72265)))

(declare-fun b_free!24787 () Bool)

(declare-fun b_next!24851 () Bool)

(assert (=> b!838170 (= b_free!24787 (not b_next!24851))))

(declare-fun tp!263192 () Bool)

(declare-fun b_and!72267 () Bool)

(assert (=> b!838170 (= tp!263192 b_and!72267)))

(declare-fun b!838165 () Bool)

(declare-fun b_free!24789 () Bool)

(declare-fun b_next!24853 () Bool)

(assert (=> b!838165 (= b_free!24789 (not b_next!24853))))

(declare-fun tp!263199 () Bool)

(declare-fun b_and!72269 () Bool)

(assert (=> b!838165 (= tp!263199 b_and!72269)))

(declare-fun b_free!24791 () Bool)

(declare-fun b_next!24855 () Bool)

(assert (=> b!838165 (= b_free!24791 (not b_next!24855))))

(declare-fun tp!263189 () Bool)

(declare-fun b_and!72271 () Bool)

(assert (=> b!838165 (= tp!263189 b_and!72271)))

(declare-fun b!838164 () Bool)

(declare-fun e!550985 () Bool)

(declare-fun e!550978 () Bool)

(declare-datatypes ((List!8940 0))(
  ( (Nil!8924) (Cons!8924 (h!14325 (_ BitVec 16)) (t!93232 List!8940)) )
))
(declare-datatypes ((TokenValue!1735 0))(
  ( (FloatLiteralValue!3470 (text!12590 List!8940)) (TokenValueExt!1734 (__x!7201 Int)) (Broken!8675 (value!54241 List!8940)) (Object!1750) (End!1735) (Def!1735) (Underscore!1735) (Match!1735) (Else!1735) (Error!1735) (Case!1735) (If!1735) (Extends!1735) (Abstract!1735) (Class!1735) (Val!1735) (DelimiterValue!3470 (del!1795 List!8940)) (KeywordValue!1741 (value!54242 List!8940)) (CommentValue!3470 (value!54243 List!8940)) (WhitespaceValue!3470 (value!54244 List!8940)) (IndentationValue!1735 (value!54245 List!8940)) (String!10574) (Int32!1735) (Broken!8676 (value!54246 List!8940)) (Boolean!1736) (Unit!13397) (OperatorValue!1738 (op!1795 List!8940)) (IdentifierValue!3470 (value!54247 List!8940)) (IdentifierValue!3471 (value!54248 List!8940)) (WhitespaceValue!3471 (value!54249 List!8940)) (True!3470) (False!3470) (Broken!8677 (value!54250 List!8940)) (Broken!8678 (value!54251 List!8940)) (True!3471) (RightBrace!1735) (RightBracket!1735) (Colon!1735) (Null!1735) (Comma!1735) (LeftBracket!1735) (False!3471) (LeftBrace!1735) (ImaginaryLiteralValue!1735 (text!12591 List!8940)) (StringLiteralValue!5205 (value!54252 List!8940)) (EOFValue!1735 (value!54253 List!8940)) (IdentValue!1735 (value!54254 List!8940)) (DelimiterValue!3471 (value!54255 List!8940)) (DedentValue!1735 (value!54256 List!8940)) (NewLineValue!1735 (value!54257 List!8940)) (IntegerValue!5205 (value!54258 (_ BitVec 32)) (text!12592 List!8940)) (IntegerValue!5206 (value!54259 Int) (text!12593 List!8940)) (Times!1735) (Or!1735) (Equal!1735) (Minus!1735) (Broken!8679 (value!54260 List!8940)) (And!1735) (Div!1735) (LessEqual!1735) (Mod!1735) (Concat!3837) (Not!1735) (Plus!1735) (SpaceValue!1735 (value!54261 List!8940)) (IntegerValue!5207 (value!54262 Int) (text!12594 List!8940)) (StringLiteralValue!5206 (text!12595 List!8940)) (FloatLiteralValue!3471 (text!12596 List!8940)) (BytesLiteralValue!1735 (value!54263 List!8940)) (CommentValue!3471 (value!54264 List!8940)) (StringLiteralValue!5207 (value!54265 List!8940)) (ErrorTokenValue!1735 (msg!1796 List!8940)) )
))
(declare-datatypes ((C!4774 0))(
  ( (C!4775 (val!2635 Int)) )
))
(declare-datatypes ((Regex!2102 0))(
  ( (ElementMatch!2102 (c!136903 C!4774)) (Concat!3838 (regOne!4716 Regex!2102) (regTwo!4716 Regex!2102)) (EmptyExpr!2102) (Star!2102 (reg!2431 Regex!2102)) (EmptyLang!2102) (Union!2102 (regOne!4717 Regex!2102) (regTwo!4717 Regex!2102)) )
))
(declare-datatypes ((String!10575 0))(
  ( (String!10576 (value!54266 String)) )
))
(declare-datatypes ((List!8941 0))(
  ( (Nil!8925) (Cons!8925 (h!14326 C!4774) (t!93233 List!8941)) )
))
(declare-datatypes ((IArray!5929 0))(
  ( (IArray!5930 (innerList!3022 List!8941)) )
))
(declare-datatypes ((Conc!2962 0))(
  ( (Node!2962 (left!6634 Conc!2962) (right!6964 Conc!2962) (csize!6154 Int) (cheight!3173 Int)) (Leaf!4385 (xs!5651 IArray!5929) (csize!6155 Int)) (Empty!2962) )
))
(declare-datatypes ((BalanceConc!5938 0))(
  ( (BalanceConc!5939 (c!136904 Conc!2962)) )
))
(declare-datatypes ((TokenValueInjection!3170 0))(
  ( (TokenValueInjection!3171 (toValue!2686 Int) (toChars!2545 Int)) )
))
(declare-datatypes ((Rule!3138 0))(
  ( (Rule!3139 (regex!1669 Regex!2102) (tag!1931 String!10575) (isSeparator!1669 Bool) (transformation!1669 TokenValueInjection!3170)) )
))
(declare-datatypes ((List!8942 0))(
  ( (Nil!8926) (Cons!8926 (h!14327 Rule!3138) (t!93234 List!8942)) )
))
(declare-fun rules!2621 () List!8942)

(declare-fun tp!263188 () Bool)

(declare-fun inv!11399 (String!10575) Bool)

(declare-fun inv!11402 (TokenValueInjection!3170) Bool)

(assert (=> b!838164 (= e!550985 (and tp!263188 (inv!11399 (tag!1931 (h!14327 rules!2621))) (inv!11402 (transformation!1669 (h!14327 rules!2621))) e!550978))))

(declare-fun e!550972 () Bool)

(assert (=> b!838165 (= e!550972 (and tp!263199 tp!263189))))

(declare-fun e!550971 () Bool)

(assert (=> b!838166 (= e!550971 (and tp!263187 tp!263191))))

(declare-fun tp!263195 () Bool)

(declare-fun b!838167 () Bool)

(declare-datatypes ((Token!3004 0))(
  ( (Token!3005 (value!54267 TokenValue!1735) (rule!3092 Rule!3138) (size!7496 Int) (originalCharacters!2225 List!8941)) )
))
(declare-datatypes ((List!8943 0))(
  ( (Nil!8927) (Cons!8927 (h!14328 Token!3004) (t!93235 List!8943)) )
))
(declare-fun l!5107 () List!8943)

(declare-fun e!550980 () Bool)

(assert (=> b!838167 (= e!550980 (and tp!263195 (inv!11399 (tag!1931 (rule!3092 (h!14328 l!5107)))) (inv!11402 (transformation!1669 (rule!3092 (h!14328 l!5107)))) e!550972))))

(declare-fun b!838168 () Bool)

(declare-fun res!383130 () Bool)

(declare-fun e!550984 () Bool)

(assert (=> b!838168 (=> (not res!383130) (not e!550984))))

(declare-datatypes ((LexerInterface!1471 0))(
  ( (LexerInterfaceExt!1468 (__x!7202 Int)) (Lexer!1469) )
))
(declare-fun thiss!20117 () LexerInterface!1471)

(declare-fun rulesInvariant!1347 (LexerInterface!1471 List!8942) Bool)

(assert (=> b!838168 (= res!383130 (rulesInvariant!1347 thiss!20117 rules!2621))))

(declare-fun b!838169 () Bool)

(declare-fun res!383135 () Bool)

(assert (=> b!838169 (=> (not res!383135) (not e!550984))))

(declare-fun separatorToken!297 () Token!3004)

(assert (=> b!838169 (= res!383135 (isSeparator!1669 (rule!3092 separatorToken!297)))))

(assert (=> b!838170 (= e!550978 (and tp!263197 tp!263192))))

(declare-fun b!838171 () Bool)

(declare-fun res!383129 () Bool)

(assert (=> b!838171 (=> (not res!383129) (not e!550984))))

(declare-fun isEmpty!5274 (List!8942) Bool)

(assert (=> b!838171 (= res!383129 (not (isEmpty!5274 rules!2621)))))

(declare-fun b!838172 () Bool)

(declare-fun tp!263198 () Bool)

(declare-fun e!550981 () Bool)

(declare-fun inv!21 (TokenValue!1735) Bool)

(assert (=> b!838172 (= e!550981 (and (inv!21 (value!54267 (h!14328 l!5107))) e!550980 tp!263198))))

(declare-fun b!838173 () Bool)

(declare-fun e!550982 () Bool)

(declare-fun tp!263196 () Bool)

(assert (=> b!838173 (= e!550982 (and e!550985 tp!263196))))

(declare-fun b!838174 () Bool)

(declare-fun e!550983 () Bool)

(declare-fun tp!263194 () Bool)

(assert (=> b!838174 (= e!550983 (and tp!263194 (inv!11399 (tag!1931 (rule!3092 separatorToken!297))) (inv!11402 (transformation!1669 (rule!3092 separatorToken!297))) e!550971))))

(declare-fun b!838175 () Bool)

(declare-fun res!383134 () Bool)

(assert (=> b!838175 (=> (not res!383134) (not e!550984))))

(declare-fun rulesProduceEachTokenIndividuallyList!359 (LexerInterface!1471 List!8942 List!8943) Bool)

(assert (=> b!838175 (= res!383134 (rulesProduceEachTokenIndividuallyList!359 thiss!20117 rules!2621 l!5107))))

(declare-fun b!838176 () Bool)

(declare-fun e!550974 () Bool)

(declare-fun tp!263190 () Bool)

(assert (=> b!838176 (= e!550974 (and (inv!21 (value!54267 separatorToken!297)) e!550983 tp!263190))))

(declare-fun b!838177 () Bool)

(declare-fun res!383133 () Bool)

(assert (=> b!838177 (=> (not res!383133) (not e!550984))))

(declare-fun lambda!24875 () Int)

(declare-fun forall!2084 (List!8943 Int) Bool)

(assert (=> b!838177 (= res!383133 (forall!2084 l!5107 lambda!24875))))

(declare-fun b!838178 () Bool)

(declare-fun res!383132 () Bool)

(assert (=> b!838178 (=> (not res!383132) (not e!550984))))

(declare-fun sepAndNonSepRulesDisjointChars!469 (List!8942 List!8942) Bool)

(assert (=> b!838178 (= res!383132 (sepAndNonSepRulesDisjointChars!469 rules!2621 rules!2621))))

(declare-fun tp!263193 () Bool)

(declare-fun e!550975 () Bool)

(declare-fun b!838179 () Bool)

(declare-fun inv!11403 (Token!3004) Bool)

(assert (=> b!838179 (= e!550975 (and (inv!11403 (h!14328 l!5107)) e!550981 tp!263193))))

(declare-fun res!383128 () Bool)

(assert (=> start!74372 (=> (not res!383128) (not e!550984))))

(assert (=> start!74372 (= res!383128 (is-Lexer!1469 thiss!20117))))

(assert (=> start!74372 e!550984))

(assert (=> start!74372 true))

(assert (=> start!74372 e!550982))

(assert (=> start!74372 e!550975))

(assert (=> start!74372 (and (inv!11403 separatorToken!297) e!550974)))

(declare-fun b!838180 () Bool)

(assert (=> b!838180 (= e!550984 (not true))))

(declare-fun withSeparatorTokenList!1 (LexerInterface!1471 List!8943 Token!3004) List!8943)

(assert (=> b!838180 (rulesProduceEachTokenIndividuallyList!359 thiss!20117 rules!2621 (withSeparatorTokenList!1 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13398 0))(
  ( (Unit!13399) )
))
(declare-fun lt!318016 () Unit!13398)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!1 (LexerInterface!1471 List!8942 List!8943 Token!3004) Unit!13398)

(assert (=> b!838180 (= lt!318016 (withSeparatorTokenListPreservesRulesProduceTokens!1 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!838181 () Bool)

(declare-fun res!383131 () Bool)

(assert (=> b!838181 (=> (not res!383131) (not e!550984))))

(declare-fun rulesProduceIndividualToken!535 (LexerInterface!1471 List!8942 Token!3004) Bool)

(assert (=> b!838181 (= res!383131 (rulesProduceIndividualToken!535 thiss!20117 rules!2621 separatorToken!297))))

(assert (= (and start!74372 res!383128) b!838171))

(assert (= (and b!838171 res!383129) b!838168))

(assert (= (and b!838168 res!383130) b!838175))

(assert (= (and b!838175 res!383134) b!838181))

(assert (= (and b!838181 res!383131) b!838169))

(assert (= (and b!838169 res!383135) b!838177))

(assert (= (and b!838177 res!383133) b!838178))

(assert (= (and b!838178 res!383132) b!838180))

(assert (= b!838164 b!838170))

(assert (= b!838173 b!838164))

(assert (= (and start!74372 (is-Cons!8926 rules!2621)) b!838173))

(assert (= b!838167 b!838165))

(assert (= b!838172 b!838167))

(assert (= b!838179 b!838172))

(assert (= (and start!74372 (is-Cons!8927 l!5107)) b!838179))

(assert (= b!838174 b!838166))

(assert (= b!838176 b!838174))

(assert (= start!74372 b!838176))

(declare-fun m!1071241 () Bool)

(assert (=> b!838168 m!1071241))

(declare-fun m!1071243 () Bool)

(assert (=> b!838164 m!1071243))

(declare-fun m!1071245 () Bool)

(assert (=> b!838164 m!1071245))

(declare-fun m!1071247 () Bool)

(assert (=> b!838167 m!1071247))

(declare-fun m!1071249 () Bool)

(assert (=> b!838167 m!1071249))

(declare-fun m!1071251 () Bool)

(assert (=> start!74372 m!1071251))

(declare-fun m!1071253 () Bool)

(assert (=> b!838172 m!1071253))

(declare-fun m!1071255 () Bool)

(assert (=> b!838181 m!1071255))

(declare-fun m!1071257 () Bool)

(assert (=> b!838177 m!1071257))

(declare-fun m!1071259 () Bool)

(assert (=> b!838176 m!1071259))

(declare-fun m!1071261 () Bool)

(assert (=> b!838178 m!1071261))

(declare-fun m!1071263 () Bool)

(assert (=> b!838179 m!1071263))

(declare-fun m!1071265 () Bool)

(assert (=> b!838180 m!1071265))

(assert (=> b!838180 m!1071265))

(declare-fun m!1071267 () Bool)

(assert (=> b!838180 m!1071267))

(declare-fun m!1071269 () Bool)

(assert (=> b!838180 m!1071269))

(declare-fun m!1071271 () Bool)

(assert (=> b!838174 m!1071271))

(declare-fun m!1071273 () Bool)

(assert (=> b!838174 m!1071273))

(declare-fun m!1071275 () Bool)

(assert (=> b!838175 m!1071275))

(declare-fun m!1071277 () Bool)

(assert (=> b!838171 m!1071277))

(push 1)

(assert (not b!838178))

(assert b_and!72267)

(assert (not b_next!24853))

(assert (not b!838164))

(assert (not b!838171))

(assert (not b_next!24849))

(assert b_and!72263)

(assert (not b!838172))

(assert (not b!838179))

(assert (not b!838174))

(assert (not b!838168))

(assert (not b!838176))

(assert (not b_next!24851))

(assert b_and!72269)

(assert (not b!838180))

(assert b_and!72265)

(assert (not b!838167))

(assert (not b!838175))

(assert (not b_next!24855))

(assert (not b!838181))

(assert (not b!838177))

(assert (not start!74372))

(assert (not b!838173))

(assert (not b_next!24847))

(assert (not b_next!24845))

(assert b_and!72261)

(assert b_and!72271)

(check-sat)

(pop 1)

(push 1)

(assert b_and!72267)

(assert b_and!72265)

(assert (not b_next!24853))

(assert (not b_next!24855))

(assert (not b_next!24849))

(assert b_and!72263)

(assert (not b_next!24851))

(assert b_and!72269)

(assert (not b_next!24847))

(assert (not b_next!24845))

(assert b_and!72261)

(assert b_and!72271)

(check-sat)

(pop 1)

