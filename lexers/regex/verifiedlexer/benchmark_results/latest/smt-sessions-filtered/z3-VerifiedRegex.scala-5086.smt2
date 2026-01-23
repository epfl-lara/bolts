; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!259910 () Bool)

(assert start!259910)

(declare-fun b!2672212 () Bool)

(declare-fun b_free!75209 () Bool)

(declare-fun b_next!75913 () Bool)

(assert (=> b!2672212 (= b_free!75209 (not b_next!75913))))

(declare-fun tp!844975 () Bool)

(declare-fun b_and!197337 () Bool)

(assert (=> b!2672212 (= tp!844975 b_and!197337)))

(declare-fun b_free!75211 () Bool)

(declare-fun b_next!75915 () Bool)

(assert (=> b!2672212 (= b_free!75211 (not b_next!75915))))

(declare-fun tp!844974 () Bool)

(declare-fun b_and!197339 () Bool)

(assert (=> b!2672212 (= tp!844974 b_and!197339)))

(declare-fun b!2672193 () Bool)

(declare-fun b_free!75213 () Bool)

(declare-fun b_next!75917 () Bool)

(assert (=> b!2672193 (= b_free!75213 (not b_next!75917))))

(declare-fun tp!844973 () Bool)

(declare-fun b_and!197341 () Bool)

(assert (=> b!2672193 (= tp!844973 b_and!197341)))

(declare-fun b_free!75215 () Bool)

(declare-fun b_next!75919 () Bool)

(assert (=> b!2672193 (= b_free!75215 (not b_next!75919))))

(declare-fun tp!844978 () Bool)

(declare-fun b_and!197343 () Bool)

(assert (=> b!2672193 (= tp!844978 b_and!197343)))

(declare-fun b!2672208 () Bool)

(declare-fun b_free!75217 () Bool)

(declare-fun b_next!75921 () Bool)

(assert (=> b!2672208 (= b_free!75217 (not b_next!75921))))

(declare-fun tp!844970 () Bool)

(declare-fun b_and!197345 () Bool)

(assert (=> b!2672208 (= tp!844970 b_and!197345)))

(declare-fun b_free!75219 () Bool)

(declare-fun b_next!75923 () Bool)

(assert (=> b!2672208 (= b_free!75219 (not b_next!75923))))

(declare-fun tp!844972 () Bool)

(declare-fun b_and!197347 () Bool)

(assert (=> b!2672208 (= tp!844972 b_and!197347)))

(declare-fun bs!479562 () Bool)

(declare-fun b!2672194 () Bool)

(declare-fun b!2672207 () Bool)

(assert (= bs!479562 (and b!2672194 b!2672207)))

(declare-fun lambda!99818 () Int)

(declare-fun lambda!99817 () Int)

(assert (=> bs!479562 (not (= lambda!99818 lambda!99817))))

(declare-fun b!2672225 () Bool)

(declare-fun e!1684268 () Bool)

(assert (=> b!2672225 (= e!1684268 true)))

(declare-fun b!2672224 () Bool)

(declare-fun e!1684267 () Bool)

(assert (=> b!2672224 (= e!1684267 e!1684268)))

(declare-fun b!2672223 () Bool)

(declare-fun e!1684266 () Bool)

(assert (=> b!2672223 (= e!1684266 e!1684267)))

(assert (=> b!2672194 e!1684266))

(assert (= b!2672224 b!2672225))

(assert (= b!2672223 b!2672224))

(declare-datatypes ((List!30841 0))(
  ( (Nil!30741) (Cons!30741 (h!36161 (_ BitVec 16)) (t!223356 List!30841)) )
))
(declare-datatypes ((TokenValue!4915 0))(
  ( (FloatLiteralValue!9830 (text!34850 List!30841)) (TokenValueExt!4914 (__x!19663 Int)) (Broken!24575 (value!151329 List!30841)) (Object!5014) (End!4915) (Def!4915) (Underscore!4915) (Match!4915) (Else!4915) (Error!4915) (Case!4915) (If!4915) (Extends!4915) (Abstract!4915) (Class!4915) (Val!4915) (DelimiterValue!9830 (del!4975 List!30841)) (KeywordValue!4921 (value!151330 List!30841)) (CommentValue!9830 (value!151331 List!30841)) (WhitespaceValue!9830 (value!151332 List!30841)) (IndentationValue!4915 (value!151333 List!30841)) (String!34458) (Int32!4915) (Broken!24576 (value!151334 List!30841)) (Boolean!4916) (Unit!44958) (OperatorValue!4918 (op!4975 List!30841)) (IdentifierValue!9830 (value!151335 List!30841)) (IdentifierValue!9831 (value!151336 List!30841)) (WhitespaceValue!9831 (value!151337 List!30841)) (True!9830) (False!9830) (Broken!24577 (value!151338 List!30841)) (Broken!24578 (value!151339 List!30841)) (True!9831) (RightBrace!4915) (RightBracket!4915) (Colon!4915) (Null!4915) (Comma!4915) (LeftBracket!4915) (False!9831) (LeftBrace!4915) (ImaginaryLiteralValue!4915 (text!34851 List!30841)) (StringLiteralValue!14745 (value!151340 List!30841)) (EOFValue!4915 (value!151341 List!30841)) (IdentValue!4915 (value!151342 List!30841)) (DelimiterValue!9831 (value!151343 List!30841)) (DedentValue!4915 (value!151344 List!30841)) (NewLineValue!4915 (value!151345 List!30841)) (IntegerValue!14745 (value!151346 (_ BitVec 32)) (text!34852 List!30841)) (IntegerValue!14746 (value!151347 Int) (text!34853 List!30841)) (Times!4915) (Or!4915) (Equal!4915) (Minus!4915) (Broken!24579 (value!151348 List!30841)) (And!4915) (Div!4915) (LessEqual!4915) (Mod!4915) (Concat!12752) (Not!4915) (Plus!4915) (SpaceValue!4915 (value!151349 List!30841)) (IntegerValue!14747 (value!151350 Int) (text!34854 List!30841)) (StringLiteralValue!14746 (text!34855 List!30841)) (FloatLiteralValue!9831 (text!34856 List!30841)) (BytesLiteralValue!4915 (value!151351 List!30841)) (CommentValue!9831 (value!151352 List!30841)) (StringLiteralValue!14747 (value!151353 List!30841)) (ErrorTokenValue!4915 (msg!4976 List!30841)) )
))
(declare-datatypes ((C!15832 0))(
  ( (C!15833 (val!9850 Int)) )
))
(declare-datatypes ((List!30842 0))(
  ( (Nil!30742) (Cons!30742 (h!36162 C!15832) (t!223357 List!30842)) )
))
(declare-datatypes ((IArray!19237 0))(
  ( (IArray!19238 (innerList!9676 List!30842)) )
))
(declare-datatypes ((Conc!9616 0))(
  ( (Node!9616 (left!23786 Conc!9616) (right!24116 Conc!9616) (csize!19462 Int) (cheight!9827 Int)) (Leaf!14703 (xs!12646 IArray!19237) (csize!19463 Int)) (Empty!9616) )
))
(declare-datatypes ((BalanceConc!18846 0))(
  ( (BalanceConc!18847 (c!430646 Conc!9616)) )
))
(declare-datatypes ((Regex!7837 0))(
  ( (ElementMatch!7837 (c!430647 C!15832)) (Concat!12753 (regOne!16186 Regex!7837) (regTwo!16186 Regex!7837)) (EmptyExpr!7837) (Star!7837 (reg!8166 Regex!7837)) (EmptyLang!7837) (Union!7837 (regOne!16187 Regex!7837) (regTwo!16187 Regex!7837)) )
))
(declare-datatypes ((TokenValueInjection!9270 0))(
  ( (TokenValueInjection!9271 (toValue!6635 Int) (toChars!6494 Int)) )
))
(declare-datatypes ((String!34459 0))(
  ( (String!34460 (value!151354 String)) )
))
(declare-datatypes ((Rule!9186 0))(
  ( (Rule!9187 (regex!4693 Regex!7837) (tag!5195 String!34459) (isSeparator!4693 Bool) (transformation!4693 TokenValueInjection!9270)) )
))
(declare-datatypes ((List!30843 0))(
  ( (Nil!30743) (Cons!30743 (h!36163 Rule!9186) (t!223358 List!30843)) )
))
(declare-fun rules!1712 () List!30843)

(get-info :version)

(assert (= (and b!2672194 ((_ is Cons!30743) rules!1712)) b!2672223))

(declare-fun order!16909 () Int)

(declare-fun order!16907 () Int)

(declare-fun dynLambda!13324 (Int Int) Int)

(declare-fun dynLambda!13325 (Int Int) Int)

(assert (=> b!2672225 (< (dynLambda!13324 order!16907 (toValue!6635 (transformation!4693 (h!36163 rules!1712)))) (dynLambda!13325 order!16909 lambda!99818))))

(declare-fun order!16911 () Int)

(declare-fun dynLambda!13326 (Int Int) Int)

(assert (=> b!2672225 (< (dynLambda!13326 order!16911 (toChars!6494 (transformation!4693 (h!36163 rules!1712)))) (dynLambda!13325 order!16909 lambda!99818))))

(assert (=> b!2672194 true))

(declare-fun b!2672192 () Bool)

(declare-fun e!1684247 () Bool)

(assert (=> b!2672192 (= e!1684247 true)))

(declare-fun lt!941014 () BalanceConc!18846)

(declare-fun lt!941007 () List!30842)

(declare-fun seqFromList!3197 (List!30842) BalanceConc!18846)

(assert (=> b!2672192 (= lt!941014 (seqFromList!3197 lt!941007))))

(declare-fun e!1684245 () Bool)

(assert (=> b!2672193 (= e!1684245 (and tp!844973 tp!844978))))

(declare-fun e!1684256 () Bool)

(declare-fun e!1684243 () Bool)

(assert (=> b!2672194 (= e!1684256 e!1684243)))

(declare-fun res!1123453 () Bool)

(assert (=> b!2672194 (=> (not res!1123453) (not e!1684243))))

(declare-datatypes ((Token!8856 0))(
  ( (Token!8857 (value!151355 TokenValue!4915) (rule!7099 Rule!9186) (size!23765 Int) (originalCharacters!5459 List!30842)) )
))
(declare-datatypes ((List!30844 0))(
  ( (Nil!30744) (Cons!30744 (h!36164 Token!8856) (t!223359 List!30844)) )
))
(declare-fun l!4335 () List!30844)

(declare-datatypes ((tuple2!30202 0))(
  ( (tuple2!30203 (_1!17643 Token!8856) (_2!17643 List!30842)) )
))
(declare-datatypes ((Option!6084 0))(
  ( (None!6083) (Some!6083 (v!32618 tuple2!30202)) )
))
(declare-fun lt!941010 () Option!6084)

(declare-fun lt!941008 () Bool)

(assert (=> b!2672194 (= res!1123453 (and (or lt!941008 (not (= (_1!17643 (v!32618 lt!941010)) (h!36164 l!4335)))) (or lt!941008 (= (_1!17643 (v!32618 lt!941010)) (h!36164 l!4335))) ((_ is None!6083) lt!941010)))))

(assert (=> b!2672194 (= lt!941008 (not ((_ is Some!6083) lt!941010)))))

(declare-fun lt!941009 () List!30842)

(declare-datatypes ((LexerInterface!4290 0))(
  ( (LexerInterfaceExt!4287 (__x!19664 Int)) (Lexer!4288) )
))
(declare-fun thiss!14116 () LexerInterface!4290)

(declare-fun maxPrefix!2330 (LexerInterface!4290 List!30843 List!30842) Option!6084)

(declare-fun ++!7499 (List!30842 List!30842) List!30842)

(assert (=> b!2672194 (= lt!941010 (maxPrefix!2330 thiss!14116 rules!1712 (++!7499 lt!941007 lt!941009)))))

(declare-fun list!11605 (BalanceConc!18846) List!30842)

(declare-fun charsOf!2958 (Token!8856) BalanceConc!18846)

(assert (=> b!2672194 (= lt!941007 (list!11605 (charsOf!2958 (h!36164 l!4335))))))

(declare-fun separatorToken!152 () Token!8856)

(declare-fun printWithSeparatorTokenWhenNeededList!686 (LexerInterface!4290 List!30843 List!30844 Token!8856) List!30842)

(assert (=> b!2672194 (= lt!941009 (printWithSeparatorTokenWhenNeededList!686 thiss!14116 rules!1712 (t!223359 l!4335) separatorToken!152))))

(declare-datatypes ((Unit!44959 0))(
  ( (Unit!44960) )
))
(declare-fun lt!941013 () Unit!44959)

(declare-fun forallContained!1035 (List!30844 Int Token!8856) Unit!44959)

(assert (=> b!2672194 (= lt!941013 (forallContained!1035 l!4335 lambda!99818 (h!36164 l!4335)))))

(declare-fun b!2672195 () Bool)

(assert (=> b!2672195 (= e!1684243 (not e!1684247))))

(declare-fun res!1123443 () Bool)

(assert (=> b!2672195 (=> res!1123443 e!1684247)))

(declare-fun lt!941011 () List!30842)

(declare-fun lt!941005 () List!30842)

(assert (=> b!2672195 (= res!1123443 (or (not (= lt!941005 lt!941011)) (not (= lt!941011 lt!941007))))))

(declare-fun printList!1184 (LexerInterface!4290 List!30844) List!30842)

(assert (=> b!2672195 (= lt!941011 (printList!1184 thiss!14116 (Cons!30744 (h!36164 l!4335) Nil!30744)))))

(declare-fun lt!941012 () BalanceConc!18846)

(assert (=> b!2672195 (= lt!941005 (list!11605 lt!941012))))

(declare-datatypes ((IArray!19239 0))(
  ( (IArray!19240 (innerList!9677 List!30844)) )
))
(declare-datatypes ((Conc!9617 0))(
  ( (Node!9617 (left!23787 Conc!9617) (right!24117 Conc!9617) (csize!19464 Int) (cheight!9828 Int)) (Leaf!14704 (xs!12647 IArray!19239) (csize!19465 Int)) (Empty!9617) )
))
(declare-datatypes ((BalanceConc!18848 0))(
  ( (BalanceConc!18849 (c!430648 Conc!9617)) )
))
(declare-fun lt!941006 () BalanceConc!18848)

(declare-fun printTailRec!1145 (LexerInterface!4290 BalanceConc!18848 Int BalanceConc!18846) BalanceConc!18846)

(assert (=> b!2672195 (= lt!941012 (printTailRec!1145 thiss!14116 lt!941006 0 (BalanceConc!18847 Empty!9616)))))

(declare-fun print!1669 (LexerInterface!4290 BalanceConc!18848) BalanceConc!18846)

(assert (=> b!2672195 (= lt!941012 (print!1669 thiss!14116 lt!941006))))

(declare-fun singletonSeq!2090 (Token!8856) BalanceConc!18848)

(assert (=> b!2672195 (= lt!941006 (singletonSeq!2090 (h!36164 l!4335)))))

(declare-fun b!2672196 () Bool)

(declare-fun res!1123449 () Bool)

(assert (=> b!2672196 (=> res!1123449 e!1684247)))

(declare-fun rulesProduceIndividualToken!2002 (LexerInterface!4290 List!30843 Token!8856) Bool)

(assert (=> b!2672196 (= res!1123449 (not (rulesProduceIndividualToken!2002 thiss!14116 rules!1712 (h!36164 l!4335))))))

(declare-fun b!2672197 () Bool)

(declare-fun tp!844968 () Bool)

(declare-fun e!1684251 () Bool)

(declare-fun e!1684252 () Bool)

(declare-fun inv!41749 (Token!8856) Bool)

(assert (=> b!2672197 (= e!1684251 (and (inv!41749 (h!36164 l!4335)) e!1684252 tp!844968))))

(declare-fun res!1123448 () Bool)

(assert (=> start!259910 (=> (not res!1123448) (not e!1684256))))

(assert (=> start!259910 (= res!1123448 ((_ is Lexer!4288) thiss!14116))))

(assert (=> start!259910 e!1684256))

(assert (=> start!259910 true))

(declare-fun e!1684250 () Bool)

(assert (=> start!259910 e!1684250))

(assert (=> start!259910 e!1684251))

(declare-fun e!1684242 () Bool)

(assert (=> start!259910 (and (inv!41749 separatorToken!152) e!1684242)))

(declare-fun tp!844971 () Bool)

(declare-fun e!1684258 () Bool)

(declare-fun b!2672198 () Bool)

(declare-fun inv!41746 (String!34459) Bool)

(declare-fun inv!41750 (TokenValueInjection!9270) Bool)

(assert (=> b!2672198 (= e!1684258 (and tp!844971 (inv!41746 (tag!5195 (rule!7099 (h!36164 l!4335)))) (inv!41750 (transformation!4693 (rule!7099 (h!36164 l!4335)))) e!1684245))))

(declare-fun b!2672199 () Bool)

(declare-fun res!1123454 () Bool)

(assert (=> b!2672199 (=> (not res!1123454) (not e!1684256))))

(declare-fun contains!5905 (List!30844 Token!8856) Bool)

(assert (=> b!2672199 (= res!1123454 (contains!5905 l!4335 (h!36164 l!4335)))))

(declare-fun b!2672200 () Bool)

(declare-fun res!1123455 () Bool)

(assert (=> b!2672200 (=> (not res!1123455) (not e!1684256))))

(assert (=> b!2672200 (= res!1123455 ((_ is Cons!30744) l!4335))))

(declare-fun b!2672201 () Bool)

(declare-fun e!1684257 () Bool)

(declare-fun tp!844977 () Bool)

(assert (=> b!2672201 (= e!1684250 (and e!1684257 tp!844977))))

(declare-fun b!2672202 () Bool)

(declare-fun res!1123445 () Bool)

(assert (=> b!2672202 (=> (not res!1123445) (not e!1684256))))

(declare-fun rulesProduceEachTokenIndividuallyList!1512 (LexerInterface!4290 List!30843 List!30844) Bool)

(assert (=> b!2672202 (= res!1123445 (rulesProduceEachTokenIndividuallyList!1512 thiss!14116 rules!1712 l!4335))))

(declare-fun b!2672203 () Bool)

(declare-fun res!1123452 () Bool)

(assert (=> b!2672203 (=> (not res!1123452) (not e!1684256))))

(assert (=> b!2672203 (= res!1123452 (isSeparator!4693 (rule!7099 separatorToken!152)))))

(declare-fun b!2672204 () Bool)

(declare-fun tp!844967 () Bool)

(declare-fun e!1684244 () Bool)

(assert (=> b!2672204 (= e!1684257 (and tp!844967 (inv!41746 (tag!5195 (h!36163 rules!1712))) (inv!41750 (transformation!4693 (h!36163 rules!1712))) e!1684244))))

(declare-fun tp!844969 () Bool)

(declare-fun b!2672205 () Bool)

(declare-fun inv!21 (TokenValue!4915) Bool)

(assert (=> b!2672205 (= e!1684252 (and (inv!21 (value!151355 (h!36164 l!4335))) e!1684258 tp!844969))))

(declare-fun b!2672206 () Bool)

(declare-fun res!1123446 () Bool)

(assert (=> b!2672206 (=> (not res!1123446) (not e!1684256))))

(declare-fun sepAndNonSepRulesDisjointChars!1266 (List!30843 List!30843) Bool)

(assert (=> b!2672206 (= res!1123446 (sepAndNonSepRulesDisjointChars!1266 rules!1712 rules!1712))))

(declare-fun res!1123451 () Bool)

(assert (=> b!2672207 (=> (not res!1123451) (not e!1684256))))

(declare-fun forall!6508 (List!30844 Int) Bool)

(assert (=> b!2672207 (= res!1123451 (forall!6508 l!4335 lambda!99817))))

(assert (=> b!2672208 (= e!1684244 (and tp!844970 tp!844972))))

(declare-fun b!2672209 () Bool)

(declare-fun res!1123447 () Bool)

(assert (=> b!2672209 (=> (not res!1123447) (not e!1684256))))

(assert (=> b!2672209 (= res!1123447 (rulesProduceIndividualToken!2002 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun e!1684248 () Bool)

(declare-fun b!2672210 () Bool)

(declare-fun e!1684259 () Bool)

(declare-fun tp!844966 () Bool)

(assert (=> b!2672210 (= e!1684248 (and tp!844966 (inv!41746 (tag!5195 (rule!7099 separatorToken!152))) (inv!41750 (transformation!4693 (rule!7099 separatorToken!152))) e!1684259))))

(declare-fun tp!844976 () Bool)

(declare-fun b!2672211 () Bool)

(assert (=> b!2672211 (= e!1684242 (and (inv!21 (value!151355 separatorToken!152)) e!1684248 tp!844976))))

(assert (=> b!2672212 (= e!1684259 (and tp!844975 tp!844974))))

(declare-fun b!2672213 () Bool)

(declare-fun res!1123450 () Bool)

(assert (=> b!2672213 (=> (not res!1123450) (not e!1684256))))

(declare-fun isEmpty!17579 (List!30843) Bool)

(assert (=> b!2672213 (= res!1123450 (not (isEmpty!17579 rules!1712)))))

(declare-fun b!2672214 () Bool)

(declare-fun res!1123444 () Bool)

(assert (=> b!2672214 (=> (not res!1123444) (not e!1684256))))

(declare-fun rulesInvariant!3790 (LexerInterface!4290 List!30843) Bool)

(assert (=> b!2672214 (= res!1123444 (rulesInvariant!3790 thiss!14116 rules!1712))))

(assert (= (and start!259910 res!1123448) b!2672213))

(assert (= (and b!2672213 res!1123450) b!2672214))

(assert (= (and b!2672214 res!1123444) b!2672202))

(assert (= (and b!2672202 res!1123445) b!2672209))

(assert (= (and b!2672209 res!1123447) b!2672203))

(assert (= (and b!2672203 res!1123452) b!2672207))

(assert (= (and b!2672207 res!1123451) b!2672206))

(assert (= (and b!2672206 res!1123446) b!2672200))

(assert (= (and b!2672200 res!1123455) b!2672199))

(assert (= (and b!2672199 res!1123454) b!2672194))

(assert (= (and b!2672194 res!1123453) b!2672195))

(assert (= (and b!2672195 (not res!1123443)) b!2672196))

(assert (= (and b!2672196 (not res!1123449)) b!2672192))

(assert (= b!2672204 b!2672208))

(assert (= b!2672201 b!2672204))

(assert (= (and start!259910 ((_ is Cons!30743) rules!1712)) b!2672201))

(assert (= b!2672198 b!2672193))

(assert (= b!2672205 b!2672198))

(assert (= b!2672197 b!2672205))

(assert (= (and start!259910 ((_ is Cons!30744) l!4335)) b!2672197))

(assert (= b!2672210 b!2672212))

(assert (= b!2672211 b!2672210))

(assert (= start!259910 b!2672211))

(declare-fun m!3038295 () Bool)

(assert (=> b!2672202 m!3038295))

(declare-fun m!3038297 () Bool)

(assert (=> b!2672194 m!3038297))

(declare-fun m!3038299 () Bool)

(assert (=> b!2672194 m!3038299))

(assert (=> b!2672194 m!3038297))

(declare-fun m!3038301 () Bool)

(assert (=> b!2672194 m!3038301))

(declare-fun m!3038303 () Bool)

(assert (=> b!2672194 m!3038303))

(declare-fun m!3038305 () Bool)

(assert (=> b!2672194 m!3038305))

(declare-fun m!3038307 () Bool)

(assert (=> b!2672194 m!3038307))

(assert (=> b!2672194 m!3038301))

(declare-fun m!3038309 () Bool)

(assert (=> b!2672198 m!3038309))

(declare-fun m!3038311 () Bool)

(assert (=> b!2672198 m!3038311))

(declare-fun m!3038313 () Bool)

(assert (=> start!259910 m!3038313))

(declare-fun m!3038315 () Bool)

(assert (=> b!2672213 m!3038315))

(declare-fun m!3038317 () Bool)

(assert (=> b!2672214 m!3038317))

(declare-fun m!3038319 () Bool)

(assert (=> b!2672192 m!3038319))

(declare-fun m!3038321 () Bool)

(assert (=> b!2672204 m!3038321))

(declare-fun m!3038323 () Bool)

(assert (=> b!2672204 m!3038323))

(declare-fun m!3038325 () Bool)

(assert (=> b!2672197 m!3038325))

(declare-fun m!3038327 () Bool)

(assert (=> b!2672206 m!3038327))

(declare-fun m!3038329 () Bool)

(assert (=> b!2672211 m!3038329))

(declare-fun m!3038331 () Bool)

(assert (=> b!2672209 m!3038331))

(declare-fun m!3038333 () Bool)

(assert (=> b!2672199 m!3038333))

(declare-fun m!3038335 () Bool)

(assert (=> b!2672210 m!3038335))

(declare-fun m!3038337 () Bool)

(assert (=> b!2672210 m!3038337))

(declare-fun m!3038339 () Bool)

(assert (=> b!2672207 m!3038339))

(declare-fun m!3038341 () Bool)

(assert (=> b!2672196 m!3038341))

(declare-fun m!3038343 () Bool)

(assert (=> b!2672205 m!3038343))

(declare-fun m!3038345 () Bool)

(assert (=> b!2672195 m!3038345))

(declare-fun m!3038347 () Bool)

(assert (=> b!2672195 m!3038347))

(declare-fun m!3038349 () Bool)

(assert (=> b!2672195 m!3038349))

(declare-fun m!3038351 () Bool)

(assert (=> b!2672195 m!3038351))

(declare-fun m!3038353 () Bool)

(assert (=> b!2672195 m!3038353))

(check-sat (not b!2672197) (not b!2672204) (not b!2672211) (not b!2672210) (not b_next!75921) b_and!197345 b_and!197337 b_and!197341 (not b!2672202) (not b!2672223) (not start!259910) (not b!2672205) (not b!2672213) (not b!2672199) b_and!197339 (not b!2672214) (not b_next!75917) (not b!2672207) (not b!2672196) (not b_next!75919) (not b!2672195) (not b_next!75923) (not b_next!75915) (not b_next!75913) b_and!197347 (not b!2672192) (not b!2672201) (not b!2672209) b_and!197343 (not b!2672194) (not b!2672206) (not b!2672198))
(check-sat b_and!197339 (not b_next!75917) (not b_next!75919) (not b_next!75921) b_and!197345 b_and!197337 b_and!197341 b_and!197343 (not b_next!75923) (not b_next!75915) (not b_next!75913) b_and!197347)
