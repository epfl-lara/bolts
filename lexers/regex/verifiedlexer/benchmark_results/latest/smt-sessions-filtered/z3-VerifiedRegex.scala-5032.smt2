; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!254874 () Bool)

(assert start!254874)

(declare-fun b!2620314 () Bool)

(declare-fun b_free!73709 () Bool)

(declare-fun b_next!74413 () Bool)

(assert (=> b!2620314 (= b_free!73709 (not b_next!74413))))

(declare-fun tp!831621 () Bool)

(declare-fun b_and!191799 () Bool)

(assert (=> b!2620314 (= tp!831621 b_and!191799)))

(declare-fun b_free!73711 () Bool)

(declare-fun b_next!74415 () Bool)

(assert (=> b!2620314 (= b_free!73711 (not b_next!74415))))

(declare-fun tp!831614 () Bool)

(declare-fun b_and!191801 () Bool)

(assert (=> b!2620314 (= tp!831614 b_and!191801)))

(declare-fun b!2620321 () Bool)

(declare-fun b_free!73713 () Bool)

(declare-fun b_next!74417 () Bool)

(assert (=> b!2620321 (= b_free!73713 (not b_next!74417))))

(declare-fun tp!831615 () Bool)

(declare-fun b_and!191803 () Bool)

(assert (=> b!2620321 (= tp!831615 b_and!191803)))

(declare-fun b_free!73715 () Bool)

(declare-fun b_next!74419 () Bool)

(assert (=> b!2620321 (= b_free!73715 (not b_next!74419))))

(declare-fun tp!831616 () Bool)

(declare-fun b_and!191805 () Bool)

(assert (=> b!2620321 (= tp!831616 b_and!191805)))

(declare-fun bs!474861 () Bool)

(declare-fun b!2620324 () Bool)

(declare-fun b!2620315 () Bool)

(assert (= bs!474861 (and b!2620324 b!2620315)))

(declare-fun lambda!98136 () Int)

(declare-fun lambda!98135 () Int)

(assert (=> bs!474861 (not (= lambda!98136 lambda!98135))))

(declare-fun b!2620342 () Bool)

(declare-fun e!1653278 () Bool)

(assert (=> b!2620342 (= e!1653278 true)))

(declare-fun b!2620341 () Bool)

(declare-fun e!1653277 () Bool)

(assert (=> b!2620341 (= e!1653277 e!1653278)))

(declare-fun b!2620340 () Bool)

(declare-fun e!1653276 () Bool)

(assert (=> b!2620340 (= e!1653276 e!1653277)))

(assert (=> b!2620324 e!1653276))

(assert (= b!2620341 b!2620342))

(assert (= b!2620340 b!2620341))

(declare-datatypes ((List!30373 0))(
  ( (Nil!30273) (Cons!30273 (h!35693 (_ BitVec 16)) (t!215202 List!30373)) )
))
(declare-datatypes ((C!15616 0))(
  ( (C!15617 (val!9742 Int)) )
))
(declare-datatypes ((Regex!7729 0))(
  ( (ElementMatch!7729 (c!421308 C!15616)) (Concat!12536 (regOne!15970 Regex!7729) (regTwo!15970 Regex!7729)) (EmptyExpr!7729) (Star!7729 (reg!8058 Regex!7729)) (EmptyLang!7729) (Union!7729 (regOne!15971 Regex!7729) (regTwo!15971 Regex!7729)) )
))
(declare-datatypes ((TokenValue!4807 0))(
  ( (FloatLiteralValue!9614 (text!34094 List!30373)) (TokenValueExt!4806 (__x!19447 Int)) (Broken!24035 (value!148251 List!30373)) (Object!4906) (End!4807) (Def!4807) (Underscore!4807) (Match!4807) (Else!4807) (Error!4807) (Case!4807) (If!4807) (Extends!4807) (Abstract!4807) (Class!4807) (Val!4807) (DelimiterValue!9614 (del!4867 List!30373)) (KeywordValue!4813 (value!148252 List!30373)) (CommentValue!9614 (value!148253 List!30373)) (WhitespaceValue!9614 (value!148254 List!30373)) (IndentationValue!4807 (value!148255 List!30373)) (String!33918) (Int32!4807) (Broken!24036 (value!148256 List!30373)) (Boolean!4808) (Unit!44288) (OperatorValue!4810 (op!4867 List!30373)) (IdentifierValue!9614 (value!148257 List!30373)) (IdentifierValue!9615 (value!148258 List!30373)) (WhitespaceValue!9615 (value!148259 List!30373)) (True!9614) (False!9614) (Broken!24037 (value!148260 List!30373)) (Broken!24038 (value!148261 List!30373)) (True!9615) (RightBrace!4807) (RightBracket!4807) (Colon!4807) (Null!4807) (Comma!4807) (LeftBracket!4807) (False!9615) (LeftBrace!4807) (ImaginaryLiteralValue!4807 (text!34095 List!30373)) (StringLiteralValue!14421 (value!148262 List!30373)) (EOFValue!4807 (value!148263 List!30373)) (IdentValue!4807 (value!148264 List!30373)) (DelimiterValue!9615 (value!148265 List!30373)) (DedentValue!4807 (value!148266 List!30373)) (NewLineValue!4807 (value!148267 List!30373)) (IntegerValue!14421 (value!148268 (_ BitVec 32)) (text!34096 List!30373)) (IntegerValue!14422 (value!148269 Int) (text!34097 List!30373)) (Times!4807) (Or!4807) (Equal!4807) (Minus!4807) (Broken!24039 (value!148270 List!30373)) (And!4807) (Div!4807) (LessEqual!4807) (Mod!4807) (Concat!12537) (Not!4807) (Plus!4807) (SpaceValue!4807 (value!148271 List!30373)) (IntegerValue!14423 (value!148272 Int) (text!34098 List!30373)) (StringLiteralValue!14422 (text!34099 List!30373)) (FloatLiteralValue!9615 (text!34100 List!30373)) (BytesLiteralValue!4807 (value!148273 List!30373)) (CommentValue!9615 (value!148274 List!30373)) (StringLiteralValue!14423 (value!148275 List!30373)) (ErrorTokenValue!4807 (msg!4868 List!30373)) )
))
(declare-datatypes ((List!30374 0))(
  ( (Nil!30274) (Cons!30274 (h!35694 C!15616) (t!215203 List!30374)) )
))
(declare-datatypes ((IArray!18829 0))(
  ( (IArray!18830 (innerList!9472 List!30374)) )
))
(declare-datatypes ((Conc!9412 0))(
  ( (Node!9412 (left!23320 Conc!9412) (right!23650 Conc!9412) (csize!19054 Int) (cheight!9623 Int)) (Leaf!14445 (xs!12406 IArray!18829) (csize!19055 Int)) (Empty!9412) )
))
(declare-datatypes ((BalanceConc!18438 0))(
  ( (BalanceConc!18439 (c!421309 Conc!9412)) )
))
(declare-datatypes ((TokenValueInjection!9054 0))(
  ( (TokenValueInjection!9055 (toValue!6495 Int) (toChars!6354 Int)) )
))
(declare-datatypes ((String!33919 0))(
  ( (String!33920 (value!148276 String)) )
))
(declare-datatypes ((Rule!8970 0))(
  ( (Rule!8971 (regex!4585 Regex!7729) (tag!5077 String!33919) (isSeparator!4585 Bool) (transformation!4585 TokenValueInjection!9054)) )
))
(declare-datatypes ((List!30375 0))(
  ( (Nil!30275) (Cons!30275 (h!35695 Rule!8970) (t!215204 List!30375)) )
))
(declare-fun rules!1726 () List!30375)

(get-info :version)

(assert (= (and b!2620324 ((_ is Cons!30275) rules!1726)) b!2620340))

(declare-fun order!16199 () Int)

(declare-fun order!16201 () Int)

(declare-fun dynLambda!12877 (Int Int) Int)

(declare-fun dynLambda!12878 (Int Int) Int)

(assert (=> b!2620342 (< (dynLambda!12877 order!16199 (toValue!6495 (transformation!4585 (h!35695 rules!1726)))) (dynLambda!12878 order!16201 lambda!98136))))

(declare-fun order!16203 () Int)

(declare-fun dynLambda!12879 (Int Int) Int)

(assert (=> b!2620342 (< (dynLambda!12879 order!16203 (toChars!6354 (transformation!4585 (h!35695 rules!1726)))) (dynLambda!12878 order!16201 lambda!98136))))

(assert (=> b!2620324 true))

(declare-fun tp!831620 () Bool)

(declare-fun e!1653259 () Bool)

(declare-fun b!2620313 () Bool)

(declare-datatypes ((Token!8640 0))(
  ( (Token!8641 (value!148277 TokenValue!4807) (rule!6961 Rule!8970) (size!23434 Int) (originalCharacters!5351 List!30374)) )
))
(declare-fun separatorToken!156 () Token!8640)

(declare-fun e!1653265 () Bool)

(declare-fun inv!41001 (String!33919) Bool)

(declare-fun inv!41006 (TokenValueInjection!9054) Bool)

(assert (=> b!2620313 (= e!1653265 (and tp!831620 (inv!41001 (tag!5077 (rule!6961 separatorToken!156))) (inv!41006 (transformation!4585 (rule!6961 separatorToken!156))) e!1653259))))

(declare-fun res!1102960 () Bool)

(declare-fun e!1653264 () Bool)

(assert (=> start!254874 (=> (not res!1102960) (not e!1653264))))

(declare-datatypes ((LexerInterface!4182 0))(
  ( (LexerInterfaceExt!4179 (__x!19448 Int)) (Lexer!4180) )
))
(declare-fun thiss!14197 () LexerInterface!4182)

(declare-fun from!862 () Int)

(assert (=> start!254874 (= res!1102960 (and ((_ is Lexer!4180) thiss!14197) (>= from!862 0)))))

(assert (=> start!254874 e!1653264))

(assert (=> start!254874 true))

(declare-fun e!1653269 () Bool)

(assert (=> start!254874 e!1653269))

(declare-fun e!1653268 () Bool)

(declare-fun inv!41007 (Token!8640) Bool)

(assert (=> start!254874 (and (inv!41007 separatorToken!156) e!1653268)))

(declare-datatypes ((List!30376 0))(
  ( (Nil!30276) (Cons!30276 (h!35696 Token!8640) (t!215205 List!30376)) )
))
(declare-datatypes ((IArray!18831 0))(
  ( (IArray!18832 (innerList!9473 List!30376)) )
))
(declare-datatypes ((Conc!9413 0))(
  ( (Node!9413 (left!23321 Conc!9413) (right!23651 Conc!9413) (csize!19056 Int) (cheight!9624 Int)) (Leaf!14446 (xs!12407 IArray!18831) (csize!19057 Int)) (Empty!9413) )
))
(declare-datatypes ((BalanceConc!18440 0))(
  ( (BalanceConc!18441 (c!421310 Conc!9413)) )
))
(declare-fun v!6381 () BalanceConc!18440)

(declare-fun e!1653262 () Bool)

(declare-fun inv!41008 (BalanceConc!18440) Bool)

(assert (=> start!254874 (and (inv!41008 v!6381) e!1653262)))

(assert (=> b!2620314 (= e!1653259 (and tp!831621 tp!831614))))

(declare-fun res!1102965 () Bool)

(declare-fun e!1653261 () Bool)

(assert (=> b!2620315 (=> (not res!1102965) (not e!1653261))))

(declare-fun forall!6303 (BalanceConc!18440 Int) Bool)

(assert (=> b!2620315 (= res!1102965 (forall!6303 v!6381 lambda!98135))))

(declare-fun tp!831622 () Bool)

(declare-fun e!1653257 () Bool)

(declare-fun b!2620316 () Bool)

(declare-fun e!1653260 () Bool)

(assert (=> b!2620316 (= e!1653260 (and tp!831622 (inv!41001 (tag!5077 (h!35695 rules!1726))) (inv!41006 (transformation!4585 (h!35695 rules!1726))) e!1653257))))

(declare-fun b!2620317 () Bool)

(declare-fun res!1102961 () Bool)

(assert (=> b!2620317 (=> (not res!1102961) (not e!1653261))))

(declare-fun rulesInvariant!3682 (LexerInterface!4182 List!30375) Bool)

(assert (=> b!2620317 (= res!1102961 (rulesInvariant!3682 thiss!14197 rules!1726))))

(declare-fun b!2620318 () Bool)

(declare-fun tp!831617 () Bool)

(assert (=> b!2620318 (= e!1653269 (and e!1653260 tp!831617))))

(declare-fun b!2620319 () Bool)

(declare-fun res!1102964 () Bool)

(assert (=> b!2620319 (=> (not res!1102964) (not e!1653261))))

(declare-fun rulesProduceIndividualToken!1894 (LexerInterface!4182 List!30375 Token!8640) Bool)

(assert (=> b!2620319 (= res!1102964 (rulesProduceIndividualToken!1894 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2620320 () Bool)

(declare-fun res!1102959 () Bool)

(assert (=> b!2620320 (=> (not res!1102959) (not e!1653261))))

(declare-fun sepAndNonSepRulesDisjointChars!1158 (List!30375 List!30375) Bool)

(assert (=> b!2620320 (= res!1102959 (sepAndNonSepRulesDisjointChars!1158 rules!1726 rules!1726))))

(assert (=> b!2620321 (= e!1653257 (and tp!831615 tp!831616))))

(declare-fun b!2620322 () Bool)

(declare-fun res!1102962 () Bool)

(assert (=> b!2620322 (=> (not res!1102962) (not e!1653261))))

(declare-fun rulesProduceEachTokenIndividually!1002 (LexerInterface!4182 List!30375 BalanceConc!18440) Bool)

(assert (=> b!2620322 (= res!1102962 (rulesProduceEachTokenIndividually!1002 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2620323 () Bool)

(declare-fun tp!831619 () Bool)

(declare-fun inv!41009 (Conc!9413) Bool)

(assert (=> b!2620323 (= e!1653262 (and (inv!41009 (c!421310 v!6381)) tp!831619))))

(declare-fun e!1653263 () Bool)

(declare-datatypes ((tuple2!29836 0))(
  ( (tuple2!29837 (_1!17460 Token!8640) (_2!17460 BalanceConc!18438)) )
))
(declare-datatypes ((Option!5970 0))(
  ( (None!5969) (Some!5969 (v!32330 tuple2!29836)) )
))
(declare-fun lt!921175 () Option!5970)

(declare-fun lt!921181 () Token!8640)

(assert (=> b!2620324 (= e!1653263 (or (and ((_ is Some!5969) lt!921175) (= (_1!17460 (v!32330 lt!921175)) lt!921181)) (not ((_ is Some!5969) lt!921175)) (<= 0 from!862)))))

(declare-fun maxPrefixZipperSequence!912 (LexerInterface!4182 List!30375 BalanceConc!18438) Option!5970)

(declare-fun ++!7361 (BalanceConc!18438 BalanceConc!18438) BalanceConc!18438)

(declare-fun charsOf!2876 (Token!8640) BalanceConc!18438)

(declare-fun printWithSeparatorTokenWhenNeededRec!460 (LexerInterface!4182 List!30375 BalanceConc!18440 Token!8640 Int) BalanceConc!18438)

(assert (=> b!2620324 (= lt!921175 (maxPrefixZipperSequence!912 thiss!14197 rules!1726 (++!7361 (charsOf!2876 lt!921181) (printWithSeparatorTokenWhenNeededRec!460 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-datatypes ((Unit!44289 0))(
  ( (Unit!44290) )
))
(declare-fun lt!921176 () Unit!44289)

(declare-fun lt!921174 () List!30376)

(declare-fun forallContained!941 (List!30376 Int Token!8640) Unit!44289)

(assert (=> b!2620324 (= lt!921176 (forallContained!941 lt!921174 lambda!98136 lt!921181))))

(declare-fun b!2620325 () Bool)

(declare-fun res!1102968 () Bool)

(assert (=> b!2620325 (=> (not res!1102968) (not e!1653261))))

(assert (=> b!2620325 (= res!1102968 (isSeparator!4585 (rule!6961 separatorToken!156)))))

(declare-fun b!2620326 () Bool)

(declare-fun tp!831618 () Bool)

(declare-fun inv!21 (TokenValue!4807) Bool)

(assert (=> b!2620326 (= e!1653268 (and (inv!21 (value!148277 separatorToken!156)) e!1653265 tp!831618))))

(declare-fun b!2620327 () Bool)

(declare-fun res!1102970 () Bool)

(assert (=> b!2620327 (=> res!1102970 e!1653263)))

(declare-fun contains!5662 (List!30376 Token!8640) Bool)

(assert (=> b!2620327 (= res!1102970 (not (contains!5662 lt!921174 lt!921181)))))

(declare-fun b!2620328 () Bool)

(declare-fun res!1102969 () Bool)

(assert (=> b!2620328 (=> (not res!1102969) (not e!1653261))))

(declare-fun isEmpty!17296 (List!30375) Bool)

(assert (=> b!2620328 (= res!1102969 (not (isEmpty!17296 rules!1726)))))

(declare-fun b!2620329 () Bool)

(assert (=> b!2620329 (= e!1653264 e!1653261)))

(declare-fun res!1102963 () Bool)

(assert (=> b!2620329 (=> (not res!1102963) (not e!1653261))))

(declare-fun lt!921180 () Int)

(assert (=> b!2620329 (= res!1102963 (<= from!862 lt!921180))))

(declare-fun size!23435 (BalanceConc!18440) Int)

(assert (=> b!2620329 (= lt!921180 (size!23435 v!6381))))

(declare-fun b!2620330 () Bool)

(declare-fun e!1653256 () Bool)

(assert (=> b!2620330 (= e!1653256 (not e!1653263))))

(declare-fun res!1102967 () Bool)

(assert (=> b!2620330 (=> res!1102967 e!1653263)))

(declare-fun contains!5663 (BalanceConc!18440 Token!8640) Bool)

(assert (=> b!2620330 (= res!1102967 (not (contains!5663 v!6381 lt!921181)))))

(declare-fun apply!7144 (BalanceConc!18440 Int) Token!8640)

(assert (=> b!2620330 (= lt!921181 (apply!7144 v!6381 from!862))))

(declare-fun lt!921178 () List!30376)

(declare-fun tail!4220 (List!30376) List!30376)

(declare-fun drop!1581 (List!30376 Int) List!30376)

(assert (=> b!2620330 (= (tail!4220 lt!921178) (drop!1581 lt!921174 (+ 1 from!862)))))

(declare-fun lt!921173 () Unit!44289)

(declare-fun lemmaDropTail!770 (List!30376 Int) Unit!44289)

(assert (=> b!2620330 (= lt!921173 (lemmaDropTail!770 lt!921174 from!862))))

(declare-fun head!5982 (List!30376) Token!8640)

(declare-fun apply!7145 (List!30376 Int) Token!8640)

(assert (=> b!2620330 (= (head!5982 lt!921178) (apply!7145 lt!921174 from!862))))

(assert (=> b!2620330 (= lt!921178 (drop!1581 lt!921174 from!862))))

(declare-fun lt!921179 () Unit!44289)

(declare-fun lemmaDropApply!796 (List!30376 Int) Unit!44289)

(assert (=> b!2620330 (= lt!921179 (lemmaDropApply!796 lt!921174 from!862))))

(declare-fun b!2620331 () Bool)

(assert (=> b!2620331 (= e!1653261 e!1653256)))

(declare-fun res!1102966 () Bool)

(assert (=> b!2620331 (=> (not res!1102966) (not e!1653256))))

(assert (=> b!2620331 (= res!1102966 (< from!862 lt!921180))))

(declare-fun lt!921177 () Unit!44289)

(declare-fun lemmaContentSubsetPreservesForall!254 (List!30376 List!30376 Int) Unit!44289)

(declare-fun dropList!888 (BalanceConc!18440 Int) List!30376)

(assert (=> b!2620331 (= lt!921177 (lemmaContentSubsetPreservesForall!254 lt!921174 (dropList!888 v!6381 from!862) lambda!98135))))

(declare-fun list!11369 (BalanceConc!18440) List!30376)

(assert (=> b!2620331 (= lt!921174 (list!11369 v!6381))))

(assert (= (and start!254874 res!1102960) b!2620329))

(assert (= (and b!2620329 res!1102963) b!2620328))

(assert (= (and b!2620328 res!1102969) b!2620317))

(assert (= (and b!2620317 res!1102961) b!2620322))

(assert (= (and b!2620322 res!1102962) b!2620319))

(assert (= (and b!2620319 res!1102964) b!2620325))

(assert (= (and b!2620325 res!1102968) b!2620315))

(assert (= (and b!2620315 res!1102965) b!2620320))

(assert (= (and b!2620320 res!1102959) b!2620331))

(assert (= (and b!2620331 res!1102966) b!2620330))

(assert (= (and b!2620330 (not res!1102967)) b!2620327))

(assert (= (and b!2620327 (not res!1102970)) b!2620324))

(assert (= b!2620316 b!2620321))

(assert (= b!2620318 b!2620316))

(assert (= (and start!254874 ((_ is Cons!30275) rules!1726)) b!2620318))

(assert (= b!2620313 b!2620314))

(assert (= b!2620326 b!2620313))

(assert (= start!254874 b!2620326))

(assert (= start!254874 b!2620323))

(declare-fun m!2958807 () Bool)

(assert (=> b!2620324 m!2958807))

(declare-fun m!2958809 () Bool)

(assert (=> b!2620324 m!2958809))

(declare-fun m!2958811 () Bool)

(assert (=> b!2620324 m!2958811))

(declare-fun m!2958813 () Bool)

(assert (=> b!2620324 m!2958813))

(declare-fun m!2958815 () Bool)

(assert (=> b!2620324 m!2958815))

(assert (=> b!2620324 m!2958809))

(assert (=> b!2620324 m!2958807))

(assert (=> b!2620324 m!2958811))

(declare-fun m!2958817 () Bool)

(assert (=> b!2620317 m!2958817))

(declare-fun m!2958819 () Bool)

(assert (=> b!2620326 m!2958819))

(declare-fun m!2958821 () Bool)

(assert (=> b!2620322 m!2958821))

(declare-fun m!2958823 () Bool)

(assert (=> b!2620319 m!2958823))

(declare-fun m!2958825 () Bool)

(assert (=> b!2620320 m!2958825))

(declare-fun m!2958827 () Bool)

(assert (=> b!2620315 m!2958827))

(declare-fun m!2958829 () Bool)

(assert (=> b!2620327 m!2958829))

(declare-fun m!2958831 () Bool)

(assert (=> b!2620331 m!2958831))

(assert (=> b!2620331 m!2958831))

(declare-fun m!2958833 () Bool)

(assert (=> b!2620331 m!2958833))

(declare-fun m!2958835 () Bool)

(assert (=> b!2620331 m!2958835))

(declare-fun m!2958837 () Bool)

(assert (=> b!2620330 m!2958837))

(declare-fun m!2958839 () Bool)

(assert (=> b!2620330 m!2958839))

(declare-fun m!2958841 () Bool)

(assert (=> b!2620330 m!2958841))

(declare-fun m!2958843 () Bool)

(assert (=> b!2620330 m!2958843))

(declare-fun m!2958845 () Bool)

(assert (=> b!2620330 m!2958845))

(declare-fun m!2958847 () Bool)

(assert (=> b!2620330 m!2958847))

(declare-fun m!2958849 () Bool)

(assert (=> b!2620330 m!2958849))

(declare-fun m!2958851 () Bool)

(assert (=> b!2620330 m!2958851))

(declare-fun m!2958853 () Bool)

(assert (=> b!2620330 m!2958853))

(declare-fun m!2958855 () Bool)

(assert (=> b!2620329 m!2958855))

(declare-fun m!2958857 () Bool)

(assert (=> b!2620328 m!2958857))

(declare-fun m!2958859 () Bool)

(assert (=> start!254874 m!2958859))

(declare-fun m!2958861 () Bool)

(assert (=> start!254874 m!2958861))

(declare-fun m!2958863 () Bool)

(assert (=> b!2620316 m!2958863))

(declare-fun m!2958865 () Bool)

(assert (=> b!2620316 m!2958865))

(declare-fun m!2958867 () Bool)

(assert (=> b!2620313 m!2958867))

(declare-fun m!2958869 () Bool)

(assert (=> b!2620313 m!2958869))

(declare-fun m!2958871 () Bool)

(assert (=> b!2620323 m!2958871))

(check-sat (not b_next!74415) (not b!2620320) (not b!2620313) (not b!2620327) (not b!2620322) (not b_next!74413) (not b!2620329) b_and!191805 (not start!254874) (not b!2620331) (not b!2620319) (not b!2620326) (not b!2620328) (not b!2620315) (not b!2620318) (not b!2620324) (not b!2620330) b_and!191803 (not b_next!74417) (not b_next!74419) (not b!2620323) b_and!191799 b_and!191801 (not b!2620340) (not b!2620317) (not b!2620316))
(check-sat (not b_next!74415) b_and!191803 (not b_next!74413) b_and!191805 b_and!191799 b_and!191801 (not b_next!74417) (not b_next!74419))
