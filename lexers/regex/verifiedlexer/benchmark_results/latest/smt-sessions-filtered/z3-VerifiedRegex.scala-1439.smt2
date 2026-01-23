; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75290 () Bool)

(assert start!75290)

(declare-fun b!845193 () Bool)

(declare-fun b_free!25361 () Bool)

(declare-fun b_next!25425 () Bool)

(assert (=> b!845193 (= b_free!25361 (not b_next!25425))))

(declare-fun tp!265990 () Bool)

(declare-fun b_and!73485 () Bool)

(assert (=> b!845193 (= tp!265990 b_and!73485)))

(declare-fun b_free!25363 () Bool)

(declare-fun b_next!25427 () Bool)

(assert (=> b!845193 (= b_free!25363 (not b_next!25427))))

(declare-fun tp!265995 () Bool)

(declare-fun b_and!73487 () Bool)

(assert (=> b!845193 (= tp!265995 b_and!73487)))

(declare-fun b!845212 () Bool)

(declare-fun b_free!25365 () Bool)

(declare-fun b_next!25429 () Bool)

(assert (=> b!845212 (= b_free!25365 (not b_next!25429))))

(declare-fun tp!265993 () Bool)

(declare-fun b_and!73489 () Bool)

(assert (=> b!845212 (= tp!265993 b_and!73489)))

(declare-fun b_free!25367 () Bool)

(declare-fun b_next!25431 () Bool)

(assert (=> b!845212 (= b_free!25367 (not b_next!25431))))

(declare-fun tp!265989 () Bool)

(declare-fun b_and!73491 () Bool)

(assert (=> b!845212 (= tp!265989 b_and!73491)))

(declare-fun b!845203 () Bool)

(declare-fun b_free!25369 () Bool)

(declare-fun b_next!25433 () Bool)

(assert (=> b!845203 (= b_free!25369 (not b_next!25433))))

(declare-fun tp!265988 () Bool)

(declare-fun b_and!73493 () Bool)

(assert (=> b!845203 (= tp!265988 b_and!73493)))

(declare-fun b_free!25371 () Bool)

(declare-fun b_next!25435 () Bool)

(assert (=> b!845203 (= b_free!25371 (not b_next!25435))))

(declare-fun tp!265996 () Bool)

(declare-fun b_and!73495 () Bool)

(assert (=> b!845203 (= tp!265996 b_and!73495)))

(declare-fun b!845189 () Bool)

(declare-fun e!556035 () Bool)

(declare-fun tp!265994 () Bool)

(declare-fun e!556048 () Bool)

(declare-datatypes ((List!9104 0))(
  ( (Nil!9088) (Cons!9088 (h!14489 (_ BitVec 16)) (t!94352 List!9104)) )
))
(declare-datatypes ((TokenValue!1770 0))(
  ( (FloatLiteralValue!3540 (text!12835 List!9104)) (TokenValueExt!1769 (__x!7271 Int)) (Broken!8850 (value!55237 List!9104)) (Object!1785) (End!1770) (Def!1770) (Underscore!1770) (Match!1770) (Else!1770) (Error!1770) (Case!1770) (If!1770) (Extends!1770) (Abstract!1770) (Class!1770) (Val!1770) (DelimiterValue!3540 (del!1830 List!9104)) (KeywordValue!1776 (value!55238 List!9104)) (CommentValue!3540 (value!55239 List!9104)) (WhitespaceValue!3540 (value!55240 List!9104)) (IndentationValue!1770 (value!55241 List!9104)) (String!10747) (Int32!1770) (Broken!8851 (value!55242 List!9104)) (Boolean!1771) (Unit!13556) (OperatorValue!1773 (op!1830 List!9104)) (IdentifierValue!3540 (value!55243 List!9104)) (IdentifierValue!3541 (value!55244 List!9104)) (WhitespaceValue!3541 (value!55245 List!9104)) (True!3540) (False!3540) (Broken!8852 (value!55246 List!9104)) (Broken!8853 (value!55247 List!9104)) (True!3541) (RightBrace!1770) (RightBracket!1770) (Colon!1770) (Null!1770) (Comma!1770) (LeftBracket!1770) (False!3541) (LeftBrace!1770) (ImaginaryLiteralValue!1770 (text!12836 List!9104)) (StringLiteralValue!5310 (value!55248 List!9104)) (EOFValue!1770 (value!55249 List!9104)) (IdentValue!1770 (value!55250 List!9104)) (DelimiterValue!3541 (value!55251 List!9104)) (DedentValue!1770 (value!55252 List!9104)) (NewLineValue!1770 (value!55253 List!9104)) (IntegerValue!5310 (value!55254 (_ BitVec 32)) (text!12837 List!9104)) (IntegerValue!5311 (value!55255 Int) (text!12838 List!9104)) (Times!1770) (Or!1770) (Equal!1770) (Minus!1770) (Broken!8854 (value!55256 List!9104)) (And!1770) (Div!1770) (LessEqual!1770) (Mod!1770) (Concat!3907) (Not!1770) (Plus!1770) (SpaceValue!1770 (value!55257 List!9104)) (IntegerValue!5312 (value!55258 Int) (text!12839 List!9104)) (StringLiteralValue!5311 (text!12840 List!9104)) (FloatLiteralValue!3541 (text!12841 List!9104)) (BytesLiteralValue!1770 (value!55259 List!9104)) (CommentValue!3541 (value!55260 List!9104)) (StringLiteralValue!5312 (value!55261 List!9104)) (ErrorTokenValue!1770 (msg!1831 List!9104)) )
))
(declare-datatypes ((C!4844 0))(
  ( (C!4845 (val!2670 Int)) )
))
(declare-datatypes ((Regex!2137 0))(
  ( (ElementMatch!2137 (c!137539 C!4844)) (Concat!3908 (regOne!4786 Regex!2137) (regTwo!4786 Regex!2137)) (EmptyExpr!2137) (Star!2137 (reg!2466 Regex!2137)) (EmptyLang!2137) (Union!2137 (regOne!4787 Regex!2137) (regTwo!4787 Regex!2137)) )
))
(declare-datatypes ((String!10748 0))(
  ( (String!10749 (value!55262 String)) )
))
(declare-datatypes ((List!9105 0))(
  ( (Nil!9089) (Cons!9089 (h!14490 C!4844) (t!94353 List!9105)) )
))
(declare-datatypes ((IArray!6031 0))(
  ( (IArray!6032 (innerList!3073 List!9105)) )
))
(declare-datatypes ((Conc!3013 0))(
  ( (Node!3013 (left!6734 Conc!3013) (right!7064 Conc!3013) (csize!6256 Int) (cheight!3224 Int)) (Leaf!4453 (xs!5702 IArray!6031) (csize!6257 Int)) (Empty!3013) )
))
(declare-datatypes ((BalanceConc!6040 0))(
  ( (BalanceConc!6041 (c!137540 Conc!3013)) )
))
(declare-datatypes ((TokenValueInjection!3240 0))(
  ( (TokenValueInjection!3241 (toValue!2729 Int) (toChars!2588 Int)) )
))
(declare-datatypes ((Rule!3208 0))(
  ( (Rule!3209 (regex!1704 Regex!2137) (tag!1966 String!10748) (isSeparator!1704 Bool) (transformation!1704 TokenValueInjection!3240)) )
))
(declare-datatypes ((List!9106 0))(
  ( (Nil!9090) (Cons!9090 (h!14491 Rule!3208) (t!94354 List!9106)) )
))
(declare-fun rules!2621 () List!9106)

(declare-fun inv!11564 (String!10748) Bool)

(declare-fun inv!11567 (TokenValueInjection!3240) Bool)

(assert (=> b!845189 (= e!556035 (and tp!265994 (inv!11564 (tag!1966 (h!14491 rules!2621))) (inv!11567 (transformation!1704 (h!14491 rules!2621))) e!556048))))

(declare-fun b!845190 () Bool)

(declare-fun res!386326 () Bool)

(declare-fun e!556051 () Bool)

(assert (=> b!845190 (=> (not res!386326) (not e!556051))))

(declare-datatypes ((Token!3074 0))(
  ( (Token!3075 (value!55263 TokenValue!1770) (rule!3127 Rule!3208) (size!7584 Int) (originalCharacters!2260 List!9105)) )
))
(declare-datatypes ((List!9107 0))(
  ( (Nil!9091) (Cons!9091 (h!14492 Token!3074) (t!94355 List!9107)) )
))
(declare-fun l!5107 () List!9107)

(declare-fun lambda!25170 () Int)

(declare-fun forall!2131 (List!9107 Int) Bool)

(assert (=> b!845190 (= res!386326 (forall!2131 l!5107 lambda!25170))))

(declare-fun b!845191 () Bool)

(declare-fun res!386325 () Bool)

(assert (=> b!845191 (=> (not res!386325) (not e!556051))))

(declare-datatypes ((LexerInterface!1506 0))(
  ( (LexerInterfaceExt!1503 (__x!7272 Int)) (Lexer!1504) )
))
(declare-fun thiss!20117 () LexerInterface!1506)

(declare-fun rulesInvariant!1382 (LexerInterface!1506 List!9106) Bool)

(assert (=> b!845191 (= res!386325 (rulesInvariant!1382 thiss!20117 rules!2621))))

(declare-fun res!386333 () Bool)

(assert (=> start!75290 (=> (not res!386333) (not e!556051))))

(get-info :version)

(assert (=> start!75290 (= res!386333 ((_ is Lexer!1504) thiss!20117))))

(assert (=> start!75290 e!556051))

(assert (=> start!75290 true))

(declare-fun e!556052 () Bool)

(assert (=> start!75290 e!556052))

(declare-fun e!556049 () Bool)

(assert (=> start!75290 e!556049))

(declare-fun separatorToken!297 () Token!3074)

(declare-fun e!556050 () Bool)

(declare-fun inv!11568 (Token!3074) Bool)

(assert (=> start!75290 (and (inv!11568 separatorToken!297) e!556050)))

(declare-fun b!845192 () Bool)

(declare-fun e!556046 () Bool)

(declare-fun e!556040 () Bool)

(assert (=> b!845192 (= e!556046 e!556040)))

(declare-fun res!386328 () Bool)

(assert (=> b!845192 (=> res!386328 e!556040)))

(declare-fun lt!320140 () List!9107)

(declare-fun lt!320146 () List!9107)

(assert (=> b!845192 (= res!386328 (not (= (t!94355 (t!94355 lt!320140)) lt!320146)))))

(declare-fun lt!320147 () List!9107)

(declare-fun withSeparatorTokenList!36 (LexerInterface!1506 List!9107 Token!3074) List!9107)

(assert (=> b!845192 (= lt!320146 (withSeparatorTokenList!36 thiss!20117 lt!320147 separatorToken!297))))

(declare-fun tail!1022 (List!9107) List!9107)

(assert (=> b!845192 (= lt!320147 (tail!1022 l!5107))))

(declare-fun e!556042 () Bool)

(assert (=> b!845193 (= e!556042 (and tp!265990 tp!265995))))

(declare-fun b!845194 () Bool)

(declare-fun e!556045 () Bool)

(declare-fun e!556054 () Bool)

(assert (=> b!845194 (= e!556045 e!556054)))

(declare-fun res!386331 () Bool)

(assert (=> b!845194 (=> res!386331 e!556054)))

(declare-fun rulesProduceIndividualToken!570 (LexerInterface!1506 List!9106 Token!3074) Bool)

(assert (=> b!845194 (= res!386331 (not (rulesProduceIndividualToken!570 thiss!20117 rules!2621 (h!14492 (t!94355 lt!320140)))))))

(declare-fun lt!320143 () Token!3074)

(declare-fun head!1464 (List!9107) Token!3074)

(assert (=> b!845194 (= lt!320143 (head!1464 (t!94355 (t!94355 lt!320140))))))

(declare-fun b!845195 () Bool)

(declare-fun res!386324 () Bool)

(assert (=> b!845195 (=> (not res!386324) (not e!556051))))

(declare-fun sepAndNonSepRulesDisjointChars!504 (List!9106 List!9106) Bool)

(assert (=> b!845195 (= res!386324 (sepAndNonSepRulesDisjointChars!504 rules!2621 rules!2621))))

(declare-fun e!556037 () Bool)

(declare-fun tp!265986 () Bool)

(declare-fun b!845196 () Bool)

(assert (=> b!845196 (= e!556049 (and (inv!11568 (h!14492 l!5107)) e!556037 tp!265986))))

(declare-fun e!556036 () Bool)

(declare-fun tp!265998 () Bool)

(declare-fun e!556047 () Bool)

(declare-fun b!845197 () Bool)

(assert (=> b!845197 (= e!556036 (and tp!265998 (inv!11564 (tag!1966 (rule!3127 (h!14492 l!5107)))) (inv!11567 (transformation!1704 (rule!3127 (h!14492 l!5107)))) e!556047))))

(declare-fun b!845198 () Bool)

(declare-fun res!386317 () Bool)

(assert (=> b!845198 (=> res!386317 e!556040)))

(assert (=> b!845198 (= res!386317 (not (= (h!14492 (t!94355 lt!320140)) separatorToken!297)))))

(declare-fun b!845199 () Bool)

(declare-fun res!386320 () Bool)

(assert (=> b!845199 (=> (not res!386320) (not e!556051))))

(assert (=> b!845199 (= res!386320 (rulesProduceIndividualToken!570 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun tp!265992 () Bool)

(declare-fun b!845200 () Bool)

(declare-fun inv!21 (TokenValue!1770) Bool)

(assert (=> b!845200 (= e!556037 (and (inv!21 (value!55263 (h!14492 l!5107))) e!556036 tp!265992))))

(declare-fun b!845201 () Bool)

(assert (=> b!845201 (= e!556040 e!556045)))

(declare-fun res!386332 () Bool)

(assert (=> b!845201 (=> res!386332 e!556045)))

(declare-fun isEmpty!5360 (List!9107) Bool)

(assert (=> b!845201 (= res!386332 (isEmpty!5360 (t!94355 (t!94355 lt!320140))))))

(declare-fun e!556055 () Bool)

(assert (=> b!845201 e!556055))

(declare-fun res!386319 () Bool)

(assert (=> b!845201 (=> (not res!386319) (not e!556055))))

(declare-fun rulesProduceEachTokenIndividuallyList!394 (LexerInterface!1506 List!9106 List!9107) Bool)

(assert (=> b!845201 (= res!386319 (rulesProduceEachTokenIndividuallyList!394 thiss!20117 rules!2621 lt!320146))))

(declare-datatypes ((Unit!13557 0))(
  ( (Unit!13558) )
))
(declare-fun lt!320144 () Unit!13557)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!36 (LexerInterface!1506 List!9106 List!9107 Token!3074) Unit!13557)

(assert (=> b!845201 (= lt!320144 (withSeparatorTokenListPreservesRulesProduceTokens!36 thiss!20117 rules!2621 lt!320147 separatorToken!297))))

(declare-fun lt!320139 () Unit!13557)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!12 (LexerInterface!1506 List!9106 List!9107 Token!3074) Unit!13557)

(assert (=> b!845201 (= lt!320139 (printWithSeparatorTokenImpliesSeparableTokensList!12 thiss!20117 rules!2621 lt!320147 separatorToken!297))))

(declare-fun separableTokensPredicate!46 (LexerInterface!1506 Token!3074 Token!3074 List!9106) Bool)

(assert (=> b!845201 (separableTokensPredicate!46 thiss!20117 (h!14492 lt!320140) (h!14492 (t!94355 lt!320140)) rules!2621)))

(declare-fun lt!320142 () Unit!13557)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!28 (LexerInterface!1506 Token!3074 Token!3074 List!9106) Unit!13557)

(assert (=> b!845201 (= lt!320142 (lemmaTokensOfDifferentKindsAreSeparable!28 thiss!20117 (h!14492 lt!320140) (h!14492 (t!94355 lt!320140)) rules!2621))))

(declare-fun b!845202 () Bool)

(assert (=> b!845202 (= e!556054 true)))

(declare-fun lt!320145 () Int)

(declare-fun size!7585 (BalanceConc!6040) Int)

(declare-fun charsOf!979 (Token!3074) BalanceConc!6040)

(assert (=> b!845202 (= lt!320145 (size!7585 (charsOf!979 lt!320143)))))

(assert (=> b!845203 (= e!556048 (and tp!265988 tp!265996))))

(declare-fun b!845204 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!28 (LexerInterface!1506 List!9107 List!9106) Bool)

(assert (=> b!845204 (= e!556055 (tokensListTwoByTwoPredicateSeparableList!28 thiss!20117 lt!320146 rules!2621))))

(declare-fun e!556041 () Bool)

(declare-fun b!845205 () Bool)

(declare-fun tp!265991 () Bool)

(assert (=> b!845205 (= e!556041 (and tp!265991 (inv!11564 (tag!1966 (rule!3127 separatorToken!297))) (inv!11567 (transformation!1704 (rule!3127 separatorToken!297))) e!556042))))

(declare-fun b!845206 () Bool)

(declare-fun res!386323 () Bool)

(assert (=> b!845206 (=> res!386323 e!556054)))

(assert (=> b!845206 (= res!386323 (not (rulesProduceIndividualToken!570 thiss!20117 rules!2621 lt!320143)))))

(declare-fun b!845207 () Bool)

(declare-fun res!386330 () Bool)

(assert (=> b!845207 (=> res!386330 e!556040)))

(assert (=> b!845207 (= res!386330 (not (= (head!1464 l!5107) (h!14492 lt!320140))))))

(declare-fun b!845208 () Bool)

(declare-fun tp!265987 () Bool)

(assert (=> b!845208 (= e!556050 (and (inv!21 (value!55263 separatorToken!297)) e!556041 tp!265987))))

(declare-fun b!845209 () Bool)

(declare-fun res!386327 () Bool)

(assert (=> b!845209 (=> (not res!386327) (not e!556051))))

(declare-fun isEmpty!5361 (List!9106) Bool)

(assert (=> b!845209 (= res!386327 (not (isEmpty!5361 rules!2621)))))

(declare-fun b!845210 () Bool)

(declare-fun res!386321 () Bool)

(assert (=> b!845210 (=> (not res!386321) (not e!556051))))

(assert (=> b!845210 (= res!386321 (isSeparator!1704 (rule!3127 separatorToken!297)))))

(declare-fun b!845211 () Bool)

(declare-fun tp!265997 () Bool)

(assert (=> b!845211 (= e!556052 (and e!556035 tp!265997))))

(assert (=> b!845212 (= e!556047 (and tp!265993 tp!265989))))

(declare-fun b!845213 () Bool)

(declare-fun res!386329 () Bool)

(assert (=> b!845213 (=> (not res!386329) (not e!556051))))

(assert (=> b!845213 (= res!386329 (rulesProduceEachTokenIndividuallyList!394 thiss!20117 rules!2621 l!5107))))

(declare-fun b!845214 () Bool)

(assert (=> b!845214 (= e!556051 (not e!556046))))

(declare-fun res!386318 () Bool)

(assert (=> b!845214 (=> res!386318 e!556046)))

(assert (=> b!845214 (= res!386318 (or (not ((_ is Cons!9091) lt!320140)) (not ((_ is Cons!9091) (t!94355 lt!320140)))))))

(assert (=> b!845214 (rulesProduceEachTokenIndividuallyList!394 thiss!20117 rules!2621 lt!320140)))

(assert (=> b!845214 (= lt!320140 (withSeparatorTokenList!36 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!320141 () Unit!13557)

(assert (=> b!845214 (= lt!320141 (withSeparatorTokenListPreservesRulesProduceTokens!36 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!845215 () Bool)

(declare-fun res!386322 () Bool)

(assert (=> b!845215 (=> res!386322 e!556054)))

(assert (=> b!845215 (= res!386322 (= (isSeparator!1704 (rule!3127 (h!14492 (t!94355 lt!320140)))) (isSeparator!1704 (rule!3127 lt!320143))))))

(assert (= (and start!75290 res!386333) b!845209))

(assert (= (and b!845209 res!386327) b!845191))

(assert (= (and b!845191 res!386325) b!845213))

(assert (= (and b!845213 res!386329) b!845199))

(assert (= (and b!845199 res!386320) b!845210))

(assert (= (and b!845210 res!386321) b!845190))

(assert (= (and b!845190 res!386326) b!845195))

(assert (= (and b!845195 res!386324) b!845214))

(assert (= (and b!845214 (not res!386318)) b!845192))

(assert (= (and b!845192 (not res!386328)) b!845207))

(assert (= (and b!845207 (not res!386330)) b!845198))

(assert (= (and b!845198 (not res!386317)) b!845201))

(assert (= (and b!845201 res!386319) b!845204))

(assert (= (and b!845201 (not res!386332)) b!845194))

(assert (= (and b!845194 (not res!386331)) b!845206))

(assert (= (and b!845206 (not res!386323)) b!845215))

(assert (= (and b!845215 (not res!386322)) b!845202))

(assert (= b!845189 b!845203))

(assert (= b!845211 b!845189))

(assert (= (and start!75290 ((_ is Cons!9090) rules!2621)) b!845211))

(assert (= b!845197 b!845212))

(assert (= b!845200 b!845197))

(assert (= b!845196 b!845200))

(assert (= (and start!75290 ((_ is Cons!9091) l!5107)) b!845196))

(assert (= b!845205 b!845193))

(assert (= b!845208 b!845205))

(assert (= start!75290 b!845208))

(declare-fun m!1080241 () Bool)

(assert (=> b!845204 m!1080241))

(declare-fun m!1080243 () Bool)

(assert (=> b!845192 m!1080243))

(declare-fun m!1080245 () Bool)

(assert (=> b!845192 m!1080245))

(declare-fun m!1080247 () Bool)

(assert (=> start!75290 m!1080247))

(declare-fun m!1080249 () Bool)

(assert (=> b!845199 m!1080249))

(declare-fun m!1080251 () Bool)

(assert (=> b!845195 m!1080251))

(declare-fun m!1080253 () Bool)

(assert (=> b!845214 m!1080253))

(declare-fun m!1080255 () Bool)

(assert (=> b!845214 m!1080255))

(declare-fun m!1080257 () Bool)

(assert (=> b!845214 m!1080257))

(declare-fun m!1080259 () Bool)

(assert (=> b!845196 m!1080259))

(declare-fun m!1080261 () Bool)

(assert (=> b!845202 m!1080261))

(assert (=> b!845202 m!1080261))

(declare-fun m!1080263 () Bool)

(assert (=> b!845202 m!1080263))

(declare-fun m!1080265 () Bool)

(assert (=> b!845197 m!1080265))

(declare-fun m!1080267 () Bool)

(assert (=> b!845197 m!1080267))

(declare-fun m!1080269 () Bool)

(assert (=> b!845213 m!1080269))

(declare-fun m!1080271 () Bool)

(assert (=> b!845208 m!1080271))

(declare-fun m!1080273 () Bool)

(assert (=> b!845200 m!1080273))

(declare-fun m!1080275 () Bool)

(assert (=> b!845191 m!1080275))

(declare-fun m!1080277 () Bool)

(assert (=> b!845201 m!1080277))

(declare-fun m!1080279 () Bool)

(assert (=> b!845201 m!1080279))

(declare-fun m!1080281 () Bool)

(assert (=> b!845201 m!1080281))

(declare-fun m!1080283 () Bool)

(assert (=> b!845201 m!1080283))

(declare-fun m!1080285 () Bool)

(assert (=> b!845201 m!1080285))

(declare-fun m!1080287 () Bool)

(assert (=> b!845201 m!1080287))

(declare-fun m!1080289 () Bool)

(assert (=> b!845209 m!1080289))

(declare-fun m!1080291 () Bool)

(assert (=> b!845207 m!1080291))

(declare-fun m!1080293 () Bool)

(assert (=> b!845194 m!1080293))

(declare-fun m!1080295 () Bool)

(assert (=> b!845194 m!1080295))

(declare-fun m!1080297 () Bool)

(assert (=> b!845189 m!1080297))

(declare-fun m!1080299 () Bool)

(assert (=> b!845189 m!1080299))

(declare-fun m!1080301 () Bool)

(assert (=> b!845205 m!1080301))

(declare-fun m!1080303 () Bool)

(assert (=> b!845205 m!1080303))

(declare-fun m!1080305 () Bool)

(assert (=> b!845190 m!1080305))

(declare-fun m!1080307 () Bool)

(assert (=> b!845206 m!1080307))

(check-sat (not b!845199) (not b!845209) (not b!845213) (not b!845207) (not b!845200) (not b!845208) (not b!845202) (not b!845196) b_and!73491 (not b!845190) b_and!73487 (not b!845205) b_and!73493 (not b_next!25435) (not b_next!25433) (not b!845195) (not b!845201) b_and!73489 (not b_next!25429) (not b_next!25431) (not b!845206) (not b!845214) (not b!845197) (not b!845204) (not b!845211) (not b!845194) (not b_next!25425) (not start!75290) b_and!73485 (not b!845192) (not b_next!25427) (not b!845191) (not b!845189) b_and!73495)
(check-sat b_and!73493 b_and!73489 b_and!73491 (not b_next!25425) b_and!73485 (not b_next!25427) b_and!73487 b_and!73495 (not b_next!25435) (not b_next!25433) (not b_next!25429) (not b_next!25431))
