; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255606 () Bool)

(assert start!255606)

(declare-fun b!2628215 () Bool)

(declare-fun b_free!73933 () Bool)

(declare-fun b_next!74637 () Bool)

(assert (=> b!2628215 (= b_free!73933 (not b_next!74637))))

(declare-fun tp!833248 () Bool)

(declare-fun b_and!192491 () Bool)

(assert (=> b!2628215 (= tp!833248 b_and!192491)))

(declare-fun b_free!73935 () Bool)

(declare-fun b_next!74639 () Bool)

(assert (=> b!2628215 (= b_free!73935 (not b_next!74639))))

(declare-fun tp!833247 () Bool)

(declare-fun b_and!192493 () Bool)

(assert (=> b!2628215 (= tp!833247 b_and!192493)))

(declare-fun b!2628209 () Bool)

(declare-fun b_free!73937 () Bool)

(declare-fun b_next!74641 () Bool)

(assert (=> b!2628209 (= b_free!73937 (not b_next!74641))))

(declare-fun tp!833243 () Bool)

(declare-fun b_and!192495 () Bool)

(assert (=> b!2628209 (= tp!833243 b_and!192495)))

(declare-fun b_free!73939 () Bool)

(declare-fun b_next!74643 () Bool)

(assert (=> b!2628209 (= b_free!73939 (not b_next!74643))))

(declare-fun tp!833246 () Bool)

(declare-fun b_and!192497 () Bool)

(assert (=> b!2628209 (= tp!833246 b_and!192497)))

(declare-fun bs!475653 () Bool)

(declare-fun b!2628210 () Bool)

(declare-fun b!2628199 () Bool)

(assert (= bs!475653 (and b!2628210 b!2628199)))

(declare-fun lambda!98446 () Int)

(declare-fun lambda!98445 () Int)

(assert (=> bs!475653 (not (= lambda!98446 lambda!98445))))

(declare-fun b!2628226 () Bool)

(declare-fun e!1658084 () Bool)

(assert (=> b!2628226 (= e!1658084 true)))

(declare-fun b!2628225 () Bool)

(declare-fun e!1658083 () Bool)

(assert (=> b!2628225 (= e!1658083 e!1658084)))

(declare-fun b!2628224 () Bool)

(declare-fun e!1658082 () Bool)

(assert (=> b!2628224 (= e!1658082 e!1658083)))

(assert (=> b!2628210 e!1658082))

(assert (= b!2628225 b!2628226))

(assert (= b!2628224 b!2628225))

(declare-datatypes ((C!15656 0))(
  ( (C!15657 (val!9762 Int)) )
))
(declare-datatypes ((Regex!7749 0))(
  ( (ElementMatch!7749 (c!422766 C!15656)) (Concat!12576 (regOne!16010 Regex!7749) (regTwo!16010 Regex!7749)) (EmptyExpr!7749) (Star!7749 (reg!8078 Regex!7749)) (EmptyLang!7749) (Union!7749 (regOne!16011 Regex!7749) (regTwo!16011 Regex!7749)) )
))
(declare-datatypes ((List!30457 0))(
  ( (Nil!30357) (Cons!30357 (h!35777 (_ BitVec 16)) (t!216114 List!30457)) )
))
(declare-datatypes ((TokenValue!4827 0))(
  ( (FloatLiteralValue!9654 (text!34234 List!30457)) (TokenValueExt!4826 (__x!19487 Int)) (Broken!24135 (value!148821 List!30457)) (Object!4926) (End!4827) (Def!4827) (Underscore!4827) (Match!4827) (Else!4827) (Error!4827) (Case!4827) (If!4827) (Extends!4827) (Abstract!4827) (Class!4827) (Val!4827) (DelimiterValue!9654 (del!4887 List!30457)) (KeywordValue!4833 (value!148822 List!30457)) (CommentValue!9654 (value!148823 List!30457)) (WhitespaceValue!9654 (value!148824 List!30457)) (IndentationValue!4827 (value!148825 List!30457)) (String!34018) (Int32!4827) (Broken!24136 (value!148826 List!30457)) (Boolean!4828) (Unit!44400) (OperatorValue!4830 (op!4887 List!30457)) (IdentifierValue!9654 (value!148827 List!30457)) (IdentifierValue!9655 (value!148828 List!30457)) (WhitespaceValue!9655 (value!148829 List!30457)) (True!9654) (False!9654) (Broken!24137 (value!148830 List!30457)) (Broken!24138 (value!148831 List!30457)) (True!9655) (RightBrace!4827) (RightBracket!4827) (Colon!4827) (Null!4827) (Comma!4827) (LeftBracket!4827) (False!9655) (LeftBrace!4827) (ImaginaryLiteralValue!4827 (text!34235 List!30457)) (StringLiteralValue!14481 (value!148832 List!30457)) (EOFValue!4827 (value!148833 List!30457)) (IdentValue!4827 (value!148834 List!30457)) (DelimiterValue!9655 (value!148835 List!30457)) (DedentValue!4827 (value!148836 List!30457)) (NewLineValue!4827 (value!148837 List!30457)) (IntegerValue!14481 (value!148838 (_ BitVec 32)) (text!34236 List!30457)) (IntegerValue!14482 (value!148839 Int) (text!34237 List!30457)) (Times!4827) (Or!4827) (Equal!4827) (Minus!4827) (Broken!24139 (value!148840 List!30457)) (And!4827) (Div!4827) (LessEqual!4827) (Mod!4827) (Concat!12577) (Not!4827) (Plus!4827) (SpaceValue!4827 (value!148841 List!30457)) (IntegerValue!14483 (value!148842 Int) (text!34238 List!30457)) (StringLiteralValue!14482 (text!34239 List!30457)) (FloatLiteralValue!9655 (text!34240 List!30457)) (BytesLiteralValue!4827 (value!148843 List!30457)) (CommentValue!9655 (value!148844 List!30457)) (StringLiteralValue!14483 (value!148845 List!30457)) (ErrorTokenValue!4827 (msg!4888 List!30457)) )
))
(declare-datatypes ((List!30458 0))(
  ( (Nil!30358) (Cons!30358 (h!35778 C!15656) (t!216115 List!30458)) )
))
(declare-datatypes ((IArray!18909 0))(
  ( (IArray!18910 (innerList!9512 List!30458)) )
))
(declare-datatypes ((Conc!9452 0))(
  ( (Node!9452 (left!23410 Conc!9452) (right!23740 Conc!9452) (csize!19134 Int) (cheight!9663 Int)) (Leaf!14495 (xs!12452 IArray!18909) (csize!19135 Int)) (Empty!9452) )
))
(declare-datatypes ((BalanceConc!18518 0))(
  ( (BalanceConc!18519 (c!422767 Conc!9452)) )
))
(declare-datatypes ((TokenValueInjection!9094 0))(
  ( (TokenValueInjection!9095 (toValue!6519 Int) (toChars!6378 Int)) )
))
(declare-datatypes ((String!34019 0))(
  ( (String!34020 (value!148846 String)) )
))
(declare-datatypes ((Rule!9010 0))(
  ( (Rule!9011 (regex!4605 Regex!7749) (tag!5099 String!34019) (isSeparator!4605 Bool) (transformation!4605 TokenValueInjection!9094)) )
))
(declare-datatypes ((List!30459 0))(
  ( (Nil!30359) (Cons!30359 (h!35779 Rule!9010) (t!216116 List!30459)) )
))
(declare-fun rules!1726 () List!30459)

(get-info :version)

(assert (= (and b!2628210 ((_ is Cons!30359) rules!1726)) b!2628224))

(declare-fun order!16331 () Int)

(declare-fun order!16333 () Int)

(declare-fun dynLambda!12957 (Int Int) Int)

(declare-fun dynLambda!12958 (Int Int) Int)

(assert (=> b!2628226 (< (dynLambda!12957 order!16331 (toValue!6519 (transformation!4605 (h!35779 rules!1726)))) (dynLambda!12958 order!16333 lambda!98446))))

(declare-fun order!16335 () Int)

(declare-fun dynLambda!12959 (Int Int) Int)

(assert (=> b!2628226 (< (dynLambda!12959 order!16335 (toChars!6378 (transformation!4605 (h!35779 rules!1726)))) (dynLambda!12958 order!16333 lambda!98446))))

(assert (=> b!2628210 true))

(declare-fun b!2628196 () Bool)

(declare-fun res!1106273 () Bool)

(declare-fun e!1658066 () Bool)

(assert (=> b!2628196 (=> (not res!1106273) (not e!1658066))))

(declare-datatypes ((Token!8680 0))(
  ( (Token!8681 (value!148847 TokenValue!4827) (rule!6987 Rule!9010) (size!23492 Int) (originalCharacters!5371 List!30458)) )
))
(declare-fun separatorToken!156 () Token!8680)

(assert (=> b!2628196 (= res!1106273 (isSeparator!4605 (rule!6987 separatorToken!156)))))

(declare-fun b!2628197 () Bool)

(declare-fun e!1658069 () Bool)

(assert (=> b!2628197 (= e!1658069 true)))

(declare-datatypes ((LexerInterface!4202 0))(
  ( (LexerInterfaceExt!4199 (__x!19488 Int)) (Lexer!4200) )
))
(declare-fun thiss!14197 () LexerInterface!4202)

(declare-datatypes ((List!30460 0))(
  ( (Nil!30360) (Cons!30360 (h!35780 Token!8680) (t!216117 List!30460)) )
))
(declare-datatypes ((IArray!18911 0))(
  ( (IArray!18912 (innerList!9513 List!30460)) )
))
(declare-datatypes ((Conc!9453 0))(
  ( (Node!9453 (left!23411 Conc!9453) (right!23741 Conc!9453) (csize!19136 Int) (cheight!9664 Int)) (Leaf!14496 (xs!12453 IArray!18911) (csize!19137 Int)) (Empty!9453) )
))
(declare-datatypes ((BalanceConc!18520 0))(
  ( (BalanceConc!18521 (c!422768 Conc!9453)) )
))
(declare-fun lt!924409 () BalanceConc!18520)

(declare-fun print!1612 (LexerInterface!4202 BalanceConc!18520) BalanceConc!18518)

(declare-fun printTailRec!1101 (LexerInterface!4202 BalanceConc!18520 Int BalanceConc!18518) BalanceConc!18518)

(assert (=> b!2628197 (= (print!1612 thiss!14197 lt!924409) (printTailRec!1101 thiss!14197 lt!924409 0 (BalanceConc!18519 Empty!9452)))))

(declare-fun lt!924407 () Token!8680)

(declare-fun singletonSeq!2031 (Token!8680) BalanceConc!18520)

(assert (=> b!2628197 (= lt!924409 (singletonSeq!2031 lt!924407))))

(declare-fun b!2628198 () Bool)

(declare-fun res!1106268 () Bool)

(assert (=> b!2628198 (=> (not res!1106268) (not e!1658066))))

(declare-fun v!6381 () BalanceConc!18520)

(declare-fun rulesProduceEachTokenIndividually!1022 (LexerInterface!4202 List!30459 BalanceConc!18520) Bool)

(assert (=> b!2628198 (= res!1106268 (rulesProduceEachTokenIndividually!1022 thiss!14197 rules!1726 v!6381))))

(declare-fun res!1106276 () Bool)

(assert (=> b!2628199 (=> (not res!1106276) (not e!1658066))))

(declare-fun forall!6337 (BalanceConc!18520 Int) Bool)

(assert (=> b!2628199 (= res!1106276 (forall!6337 v!6381 lambda!98445))))

(declare-fun b!2628200 () Bool)

(declare-fun res!1106274 () Bool)

(assert (=> b!2628200 (=> (not res!1106274) (not e!1658066))))

(declare-fun isEmpty!17338 (List!30459) Bool)

(assert (=> b!2628200 (= res!1106274 (not (isEmpty!17338 rules!1726)))))

(declare-fun e!1658061 () Bool)

(declare-fun tp!833245 () Bool)

(declare-fun b!2628201 () Bool)

(declare-fun e!1658068 () Bool)

(declare-fun inv!41137 (String!34019) Bool)

(declare-fun inv!41142 (TokenValueInjection!9094) Bool)

(assert (=> b!2628201 (= e!1658061 (and tp!833245 (inv!41137 (tag!5099 (h!35779 rules!1726))) (inv!41142 (transformation!4605 (h!35779 rules!1726))) e!1658068))))

(declare-fun e!1658065 () Bool)

(declare-fun e!1658064 () Bool)

(declare-fun b!2628202 () Bool)

(declare-fun tp!833242 () Bool)

(declare-fun inv!21 (TokenValue!4827) Bool)

(assert (=> b!2628202 (= e!1658064 (and (inv!21 (value!148847 separatorToken!156)) e!1658065 tp!833242))))

(declare-fun b!2628203 () Bool)

(declare-fun res!1106275 () Bool)

(assert (=> b!2628203 (=> (not res!1106275) (not e!1658066))))

(declare-fun rulesProduceIndividualToken!1914 (LexerInterface!4202 List!30459 Token!8680) Bool)

(assert (=> b!2628203 (= res!1106275 (rulesProduceIndividualToken!1914 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2628204 () Bool)

(declare-fun res!1106270 () Bool)

(declare-fun e!1658071 () Bool)

(assert (=> b!2628204 (=> res!1106270 e!1658071)))

(declare-fun lt!924403 () List!30460)

(declare-fun contains!5712 (List!30460 Token!8680) Bool)

(assert (=> b!2628204 (= res!1106270 (not (contains!5712 lt!924403 lt!924407)))))

(declare-fun res!1106267 () Bool)

(declare-fun e!1658075 () Bool)

(assert (=> start!255606 (=> (not res!1106267) (not e!1658075))))

(declare-fun from!862 () Int)

(assert (=> start!255606 (= res!1106267 (and ((_ is Lexer!4200) thiss!14197) (>= from!862 0)))))

(assert (=> start!255606 e!1658075))

(assert (=> start!255606 true))

(declare-fun e!1658062 () Bool)

(assert (=> start!255606 e!1658062))

(declare-fun inv!41143 (Token!8680) Bool)

(assert (=> start!255606 (and (inv!41143 separatorToken!156) e!1658064)))

(declare-fun e!1658067 () Bool)

(declare-fun inv!41144 (BalanceConc!18520) Bool)

(assert (=> start!255606 (and (inv!41144 v!6381) e!1658067)))

(declare-fun b!2628205 () Bool)

(declare-fun tp!833240 () Bool)

(declare-fun inv!41145 (Conc!9453) Bool)

(assert (=> b!2628205 (= e!1658067 (and (inv!41145 (c!422768 v!6381)) tp!833240))))

(declare-fun b!2628206 () Bool)

(declare-fun res!1106272 () Bool)

(assert (=> b!2628206 (=> (not res!1106272) (not e!1658066))))

(declare-fun sepAndNonSepRulesDisjointChars!1178 (List!30459 List!30459) Bool)

(assert (=> b!2628206 (= res!1106272 (sepAndNonSepRulesDisjointChars!1178 rules!1726 rules!1726))))

(declare-fun b!2628207 () Bool)

(declare-fun res!1106279 () Bool)

(assert (=> b!2628207 (=> (not res!1106279) (not e!1658066))))

(declare-fun rulesInvariant!3702 (LexerInterface!4202 List!30459) Bool)

(assert (=> b!2628207 (= res!1106279 (rulesInvariant!3702 thiss!14197 rules!1726))))

(declare-fun b!2628208 () Bool)

(declare-fun e!1658074 () Bool)

(assert (=> b!2628208 (= e!1658066 e!1658074)))

(declare-fun res!1106271 () Bool)

(assert (=> b!2628208 (=> (not res!1106271) (not e!1658074))))

(declare-fun lt!924400 () Int)

(assert (=> b!2628208 (= res!1106271 (< from!862 lt!924400))))

(declare-datatypes ((Unit!44401 0))(
  ( (Unit!44402) )
))
(declare-fun lt!924405 () Unit!44401)

(declare-fun lemmaContentSubsetPreservesForall!274 (List!30460 List!30460 Int) Unit!44401)

(declare-fun dropList!908 (BalanceConc!18520 Int) List!30460)

(assert (=> b!2628208 (= lt!924405 (lemmaContentSubsetPreservesForall!274 lt!924403 (dropList!908 v!6381 from!862) lambda!98445))))

(declare-fun list!11403 (BalanceConc!18520) List!30460)

(assert (=> b!2628208 (= lt!924403 (list!11403 v!6381))))

(declare-fun e!1658072 () Bool)

(assert (=> b!2628209 (= e!1658072 (and tp!833243 tp!833246))))

(assert (=> b!2628210 (= e!1658071 e!1658069)))

(declare-fun res!1106278 () Bool)

(assert (=> b!2628210 (=> res!1106278 e!1658069)))

(declare-fun lt!924402 () Bool)

(declare-datatypes ((tuple2!29904 0))(
  ( (tuple2!29905 (_1!17494 Token!8680) (_2!17494 BalanceConc!18518)) )
))
(declare-datatypes ((Option!5996 0))(
  ( (None!5995) (Some!5995 (v!32382 tuple2!29904)) )
))
(declare-fun lt!924399 () Option!5996)

(assert (=> b!2628210 (= res!1106278 (or (and (not lt!924402) (= (_1!17494 (v!32382 lt!924399)) lt!924407)) (and (not lt!924402) (not (= (_1!17494 (v!32382 lt!924399)) lt!924407))) (not ((_ is None!5995) lt!924399))))))

(assert (=> b!2628210 (= lt!924402 (not ((_ is Some!5995) lt!924399)))))

(declare-fun maxPrefixZipperSequence!932 (LexerInterface!4202 List!30459 BalanceConc!18518) Option!5996)

(declare-fun ++!7391 (BalanceConc!18518 BalanceConc!18518) BalanceConc!18518)

(declare-fun charsOf!2896 (Token!8680) BalanceConc!18518)

(declare-fun printWithSeparatorTokenWhenNeededRec!480 (LexerInterface!4202 List!30459 BalanceConc!18520 Token!8680 Int) BalanceConc!18518)

(assert (=> b!2628210 (= lt!924399 (maxPrefixZipperSequence!932 thiss!14197 rules!1726 (++!7391 (charsOf!2896 lt!924407) (printWithSeparatorTokenWhenNeededRec!480 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun lt!924404 () Unit!44401)

(declare-fun forallContained!961 (List!30460 Int Token!8680) Unit!44401)

(assert (=> b!2628210 (= lt!924404 (forallContained!961 lt!924403 lambda!98446 lt!924407))))

(declare-fun b!2628211 () Bool)

(assert (=> b!2628211 (= e!1658074 (not e!1658071))))

(declare-fun res!1106269 () Bool)

(assert (=> b!2628211 (=> res!1106269 e!1658071)))

(declare-fun contains!5713 (BalanceConc!18520 Token!8680) Bool)

(assert (=> b!2628211 (= res!1106269 (not (contains!5713 v!6381 lt!924407)))))

(declare-fun apply!7192 (BalanceConc!18520 Int) Token!8680)

(assert (=> b!2628211 (= lt!924407 (apply!7192 v!6381 from!862))))

(declare-fun lt!924408 () List!30460)

(declare-fun tail!4242 (List!30460) List!30460)

(declare-fun drop!1601 (List!30460 Int) List!30460)

(assert (=> b!2628211 (= (tail!4242 lt!924408) (drop!1601 lt!924403 (+ 1 from!862)))))

(declare-fun lt!924406 () Unit!44401)

(declare-fun lemmaDropTail!790 (List!30460 Int) Unit!44401)

(assert (=> b!2628211 (= lt!924406 (lemmaDropTail!790 lt!924403 from!862))))

(declare-fun head!6004 (List!30460) Token!8680)

(declare-fun apply!7193 (List!30460 Int) Token!8680)

(assert (=> b!2628211 (= (head!6004 lt!924408) (apply!7193 lt!924403 from!862))))

(assert (=> b!2628211 (= lt!924408 (drop!1601 lt!924403 from!862))))

(declare-fun lt!924401 () Unit!44401)

(declare-fun lemmaDropApply!816 (List!30460 Int) Unit!44401)

(assert (=> b!2628211 (= lt!924401 (lemmaDropApply!816 lt!924403 from!862))))

(declare-fun tp!833244 () Bool)

(declare-fun b!2628212 () Bool)

(assert (=> b!2628212 (= e!1658065 (and tp!833244 (inv!41137 (tag!5099 (rule!6987 separatorToken!156))) (inv!41142 (transformation!4605 (rule!6987 separatorToken!156))) e!1658072))))

(declare-fun b!2628213 () Bool)

(declare-fun tp!833241 () Bool)

(assert (=> b!2628213 (= e!1658062 (and e!1658061 tp!833241))))

(declare-fun b!2628214 () Bool)

(assert (=> b!2628214 (= e!1658075 e!1658066)))

(declare-fun res!1106277 () Bool)

(assert (=> b!2628214 (=> (not res!1106277) (not e!1658066))))

(assert (=> b!2628214 (= res!1106277 (<= from!862 lt!924400))))

(declare-fun size!23493 (BalanceConc!18520) Int)

(assert (=> b!2628214 (= lt!924400 (size!23493 v!6381))))

(assert (=> b!2628215 (= e!1658068 (and tp!833248 tp!833247))))

(assert (= (and start!255606 res!1106267) b!2628214))

(assert (= (and b!2628214 res!1106277) b!2628200))

(assert (= (and b!2628200 res!1106274) b!2628207))

(assert (= (and b!2628207 res!1106279) b!2628198))

(assert (= (and b!2628198 res!1106268) b!2628203))

(assert (= (and b!2628203 res!1106275) b!2628196))

(assert (= (and b!2628196 res!1106273) b!2628199))

(assert (= (and b!2628199 res!1106276) b!2628206))

(assert (= (and b!2628206 res!1106272) b!2628208))

(assert (= (and b!2628208 res!1106271) b!2628211))

(assert (= (and b!2628211 (not res!1106269)) b!2628204))

(assert (= (and b!2628204 (not res!1106270)) b!2628210))

(assert (= (and b!2628210 (not res!1106278)) b!2628197))

(assert (= b!2628201 b!2628215))

(assert (= b!2628213 b!2628201))

(assert (= (and start!255606 ((_ is Cons!30359) rules!1726)) b!2628213))

(assert (= b!2628212 b!2628209))

(assert (= b!2628202 b!2628212))

(assert (= start!255606 b!2628202))

(assert (= start!255606 b!2628205))

(declare-fun m!2971277 () Bool)

(assert (=> b!2628208 m!2971277))

(assert (=> b!2628208 m!2971277))

(declare-fun m!2971279 () Bool)

(assert (=> b!2628208 m!2971279))

(declare-fun m!2971281 () Bool)

(assert (=> b!2628208 m!2971281))

(declare-fun m!2971283 () Bool)

(assert (=> b!2628211 m!2971283))

(declare-fun m!2971285 () Bool)

(assert (=> b!2628211 m!2971285))

(declare-fun m!2971287 () Bool)

(assert (=> b!2628211 m!2971287))

(declare-fun m!2971289 () Bool)

(assert (=> b!2628211 m!2971289))

(declare-fun m!2971291 () Bool)

(assert (=> b!2628211 m!2971291))

(declare-fun m!2971293 () Bool)

(assert (=> b!2628211 m!2971293))

(declare-fun m!2971295 () Bool)

(assert (=> b!2628211 m!2971295))

(declare-fun m!2971297 () Bool)

(assert (=> b!2628211 m!2971297))

(declare-fun m!2971299 () Bool)

(assert (=> b!2628211 m!2971299))

(declare-fun m!2971301 () Bool)

(assert (=> b!2628199 m!2971301))

(declare-fun m!2971303 () Bool)

(assert (=> b!2628200 m!2971303))

(declare-fun m!2971305 () Bool)

(assert (=> b!2628204 m!2971305))

(declare-fun m!2971307 () Bool)

(assert (=> b!2628202 m!2971307))

(declare-fun m!2971309 () Bool)

(assert (=> b!2628206 m!2971309))

(declare-fun m!2971311 () Bool)

(assert (=> b!2628207 m!2971311))

(declare-fun m!2971313 () Bool)

(assert (=> b!2628205 m!2971313))

(declare-fun m!2971315 () Bool)

(assert (=> b!2628201 m!2971315))

(declare-fun m!2971317 () Bool)

(assert (=> b!2628201 m!2971317))

(declare-fun m!2971319 () Bool)

(assert (=> b!2628214 m!2971319))

(declare-fun m!2971321 () Bool)

(assert (=> b!2628210 m!2971321))

(declare-fun m!2971323 () Bool)

(assert (=> b!2628210 m!2971323))

(declare-fun m!2971325 () Bool)

(assert (=> b!2628210 m!2971325))

(declare-fun m!2971327 () Bool)

(assert (=> b!2628210 m!2971327))

(declare-fun m!2971329 () Bool)

(assert (=> b!2628210 m!2971329))

(assert (=> b!2628210 m!2971329))

(assert (=> b!2628210 m!2971325))

(assert (=> b!2628210 m!2971321))

(declare-fun m!2971331 () Bool)

(assert (=> b!2628212 m!2971331))

(declare-fun m!2971333 () Bool)

(assert (=> b!2628212 m!2971333))

(declare-fun m!2971335 () Bool)

(assert (=> b!2628203 m!2971335))

(declare-fun m!2971337 () Bool)

(assert (=> b!2628198 m!2971337))

(declare-fun m!2971339 () Bool)

(assert (=> b!2628197 m!2971339))

(declare-fun m!2971341 () Bool)

(assert (=> b!2628197 m!2971341))

(declare-fun m!2971343 () Bool)

(assert (=> b!2628197 m!2971343))

(declare-fun m!2971345 () Bool)

(assert (=> start!255606 m!2971345))

(declare-fun m!2971347 () Bool)

(assert (=> start!255606 m!2971347))

(check-sat (not b!2628200) b_and!192493 (not b!2628202) (not b!2628224) (not b!2628205) (not b!2628212) (not start!255606) (not b_next!74639) (not b!2628206) (not b!2628208) (not b_next!74641) (not b!2628201) (not b!2628204) (not b!2628210) (not b!2628199) (not b_next!74643) b_and!192495 (not b!2628207) b_and!192497 (not b!2628214) (not b!2628197) (not b!2628203) (not b!2628213) (not b!2628198) b_and!192491 (not b!2628211) (not b_next!74637))
(check-sat b_and!192493 (not b_next!74639) b_and!192497 (not b_next!74641) b_and!192491 (not b_next!74643) (not b_next!74637) b_and!192495)
