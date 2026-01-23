; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!191328 () Bool)

(assert start!191328)

(declare-fun b!1907223 () Bool)

(declare-fun b_free!53705 () Bool)

(declare-fun b_next!54409 () Bool)

(assert (=> b!1907223 (= b_free!53705 (not b_next!54409))))

(declare-fun tp!544477 () Bool)

(declare-fun b_and!148275 () Bool)

(assert (=> b!1907223 (= tp!544477 b_and!148275)))

(declare-fun b_free!53707 () Bool)

(declare-fun b_next!54411 () Bool)

(assert (=> b!1907223 (= b_free!53707 (not b_next!54411))))

(declare-fun tp!544481 () Bool)

(declare-fun b_and!148277 () Bool)

(assert (=> b!1907223 (= tp!544481 b_and!148277)))

(declare-fun b!1907229 () Bool)

(declare-fun b_free!53709 () Bool)

(declare-fun b_next!54413 () Bool)

(assert (=> b!1907229 (= b_free!53709 (not b_next!54413))))

(declare-fun tp!544475 () Bool)

(declare-fun b_and!148279 () Bool)

(assert (=> b!1907229 (= tp!544475 b_and!148279)))

(declare-fun b_free!53711 () Bool)

(declare-fun b_next!54415 () Bool)

(assert (=> b!1907229 (= b_free!53711 (not b_next!54415))))

(declare-fun tp!544471 () Bool)

(declare-fun b_and!148281 () Bool)

(assert (=> b!1907229 (= tp!544471 b_and!148281)))

(declare-fun b!1907218 () Bool)

(declare-fun b_free!53713 () Bool)

(declare-fun b_next!54417 () Bool)

(assert (=> b!1907218 (= b_free!53713 (not b_next!54417))))

(declare-fun tp!544482 () Bool)

(declare-fun b_and!148283 () Bool)

(assert (=> b!1907218 (= tp!544482 b_and!148283)))

(declare-fun b_free!53715 () Bool)

(declare-fun b_next!54419 () Bool)

(assert (=> b!1907218 (= b_free!53715 (not b_next!54419))))

(declare-fun tp!544472 () Bool)

(declare-fun b_and!148285 () Bool)

(assert (=> b!1907218 (= tp!544472 b_and!148285)))

(declare-fun b!1907216 () Bool)

(declare-fun e!1218156 () Bool)

(declare-datatypes ((List!21556 0))(
  ( (Nil!21474) (Cons!21474 (h!26875 (_ BitVec 16)) (t!177691 List!21556)) )
))
(declare-datatypes ((TokenValue!3960 0))(
  ( (FloatLiteralValue!7920 (text!28165 List!21556)) (TokenValueExt!3959 (__x!13418 Int)) (Broken!19800 (value!120549 List!21556)) (Object!4041) (End!3960) (Def!3960) (Underscore!3960) (Match!3960) (Else!3960) (Error!3960) (Case!3960) (If!3960) (Extends!3960) (Abstract!3960) (Class!3960) (Val!3960) (DelimiterValue!7920 (del!4020 List!21556)) (KeywordValue!3966 (value!120550 List!21556)) (CommentValue!7920 (value!120551 List!21556)) (WhitespaceValue!7920 (value!120552 List!21556)) (IndentationValue!3960 (value!120553 List!21556)) (String!24917) (Int32!3960) (Broken!19801 (value!120554 List!21556)) (Boolean!3961) (Unit!35811) (OperatorValue!3963 (op!4020 List!21556)) (IdentifierValue!7920 (value!120555 List!21556)) (IdentifierValue!7921 (value!120556 List!21556)) (WhitespaceValue!7921 (value!120557 List!21556)) (True!7920) (False!7920) (Broken!19802 (value!120558 List!21556)) (Broken!19803 (value!120559 List!21556)) (True!7921) (RightBrace!3960) (RightBracket!3960) (Colon!3960) (Null!3960) (Comma!3960) (LeftBracket!3960) (False!7921) (LeftBrace!3960) (ImaginaryLiteralValue!3960 (text!28166 List!21556)) (StringLiteralValue!11880 (value!120560 List!21556)) (EOFValue!3960 (value!120561 List!21556)) (IdentValue!3960 (value!120562 List!21556)) (DelimiterValue!7921 (value!120563 List!21556)) (DedentValue!3960 (value!120564 List!21556)) (NewLineValue!3960 (value!120565 List!21556)) (IntegerValue!11880 (value!120566 (_ BitVec 32)) (text!28167 List!21556)) (IntegerValue!11881 (value!120567 Int) (text!28168 List!21556)) (Times!3960) (Or!3960) (Equal!3960) (Minus!3960) (Broken!19804 (value!120568 List!21556)) (And!3960) (Div!3960) (LessEqual!3960) (Mod!3960) (Concat!9209) (Not!3960) (Plus!3960) (SpaceValue!3960 (value!120569 List!21556)) (IntegerValue!11882 (value!120570 Int) (text!28169 List!21556)) (StringLiteralValue!11881 (text!28170 List!21556)) (FloatLiteralValue!7921 (text!28171 List!21556)) (BytesLiteralValue!3960 (value!120571 List!21556)) (CommentValue!7921 (value!120572 List!21556)) (StringLiteralValue!11882 (value!120573 List!21556)) (ErrorTokenValue!3960 (msg!4021 List!21556)) )
))
(declare-datatypes ((C!10644 0))(
  ( (C!10645 (val!6274 Int)) )
))
(declare-datatypes ((List!21557 0))(
  ( (Nil!21475) (Cons!21475 (h!26876 C!10644) (t!177692 List!21557)) )
))
(declare-datatypes ((Regex!5249 0))(
  ( (ElementMatch!5249 (c!310743 C!10644)) (Concat!9210 (regOne!11010 Regex!5249) (regTwo!11010 Regex!5249)) (EmptyExpr!5249) (Star!5249 (reg!5578 Regex!5249)) (EmptyLang!5249) (Union!5249 (regOne!11011 Regex!5249) (regTwo!11011 Regex!5249)) )
))
(declare-datatypes ((String!24918 0))(
  ( (String!24919 (value!120574 String)) )
))
(declare-datatypes ((IArray!14291 0))(
  ( (IArray!14292 (innerList!7203 List!21557)) )
))
(declare-datatypes ((Conc!7143 0))(
  ( (Node!7143 (left!17173 Conc!7143) (right!17503 Conc!7143) (csize!14516 Int) (cheight!7354 Int)) (Leaf!10518 (xs!10037 IArray!14291) (csize!14517 Int)) (Empty!7143) )
))
(declare-datatypes ((BalanceConc!14102 0))(
  ( (BalanceConc!14103 (c!310744 Conc!7143)) )
))
(declare-datatypes ((TokenValueInjection!7504 0))(
  ( (TokenValueInjection!7505 (toValue!5449 Int) (toChars!5308 Int)) )
))
(declare-datatypes ((Rule!7448 0))(
  ( (Rule!7449 (regex!3824 Regex!5249) (tag!4256 String!24918) (isSeparator!3824 Bool) (transformation!3824 TokenValueInjection!7504)) )
))
(declare-datatypes ((Token!7200 0))(
  ( (Token!7201 (value!120575 TokenValue!3960) (rule!6021 Rule!7448) (size!16942 Int) (originalCharacters!4631 List!21557)) )
))
(declare-datatypes ((List!21558 0))(
  ( (Nil!21476) (Cons!21476 (h!26877 Token!7200) (t!177693 List!21558)) )
))
(declare-fun tokens!598 () List!21558)

(declare-fun lt!729211 () Rule!7448)

(assert (=> b!1907216 (= e!1218156 (= (rule!6021 (h!26877 tokens!598)) lt!729211))))

(declare-fun b!1907217 () Bool)

(declare-fun e!1218176 () Bool)

(declare-fun e!1218173 () Bool)

(declare-fun tp!544476 () Bool)

(assert (=> b!1907217 (= e!1218176 (and e!1218173 tp!544476))))

(declare-fun e!1218167 () Bool)

(assert (=> b!1907218 (= e!1218167 (and tp!544482 tp!544472))))

(declare-fun b!1907219 () Bool)

(declare-fun e!1218158 () Bool)

(declare-fun e!1218169 () Bool)

(assert (=> b!1907219 (= e!1218158 (not e!1218169))))

(declare-fun res!851579 () Bool)

(assert (=> b!1907219 (=> res!851579 e!1218169)))

(declare-fun lt!729205 () Bool)

(declare-datatypes ((tuple2!20216 0))(
  ( (tuple2!20217 (_1!11577 Token!7200) (_2!11577 List!21557)) )
))
(declare-datatypes ((Option!4353 0))(
  ( (None!4352) (Some!4352 (v!26395 tuple2!20216)) )
))
(declare-fun lt!729220 () Option!4353)

(assert (=> b!1907219 (= res!851579 (or (and (not lt!729205) (= (_1!11577 (v!26395 lt!729220)) (h!26877 tokens!598))) lt!729205 (= (_1!11577 (v!26395 lt!729220)) (h!26877 tokens!598))))))

(get-info :version)

(assert (=> b!1907219 (= lt!729205 (not ((_ is Some!4352) lt!729220)))))

(declare-fun lt!729208 () List!21557)

(declare-datatypes ((LexerInterface!3437 0))(
  ( (LexerInterfaceExt!3434 (__x!13419 Int)) (Lexer!3435) )
))
(declare-fun thiss!23328 () LexerInterface!3437)

(declare-fun lt!729217 () List!21557)

(declare-datatypes ((List!21559 0))(
  ( (Nil!21477) (Cons!21477 (h!26878 Rule!7448) (t!177694 List!21559)) )
))
(declare-fun rules!3198 () List!21559)

(declare-fun maxPrefix!1883 (LexerInterface!3437 List!21559 List!21557) Option!4353)

(declare-fun ++!5771 (List!21557 List!21557) List!21557)

(assert (=> b!1907219 (= lt!729220 (maxPrefix!1883 thiss!23328 rules!3198 (++!5771 lt!729217 lt!729208)))))

(declare-fun separatorToken!354 () Token!7200)

(declare-fun printWithSeparatorTokenWhenNeededList!480 (LexerInterface!3437 List!21559 List!21558 Token!7200) List!21557)

(assert (=> b!1907219 (= lt!729208 (printWithSeparatorTokenWhenNeededList!480 thiss!23328 rules!3198 (t!177693 tokens!598) separatorToken!354))))

(declare-fun e!1218174 () Bool)

(assert (=> b!1907219 e!1218174))

(declare-fun res!851577 () Bool)

(assert (=> b!1907219 (=> (not res!851577) (not e!1218174))))

(declare-datatypes ((Option!4354 0))(
  ( (None!4353) (Some!4353 (v!26396 Rule!7448)) )
))
(declare-fun lt!729216 () Option!4354)

(declare-fun isDefined!3651 (Option!4354) Bool)

(assert (=> b!1907219 (= res!851577 (isDefined!3651 lt!729216))))

(declare-fun getRuleFromTag!667 (LexerInterface!3437 List!21559 String!24918) Option!4354)

(assert (=> b!1907219 (= lt!729216 (getRuleFromTag!667 thiss!23328 rules!3198 (tag!4256 (rule!6021 (h!26877 tokens!598)))))))

(declare-datatypes ((Unit!35812 0))(
  ( (Unit!35813) )
))
(declare-fun lt!729203 () Unit!35812)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!667 (LexerInterface!3437 List!21559 List!21557 Token!7200) Unit!35812)

(assert (=> b!1907219 (= lt!729203 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!667 thiss!23328 rules!3198 lt!729217 (h!26877 tokens!598)))))

(declare-fun e!1218160 () Bool)

(assert (=> b!1907219 e!1218160))

(declare-fun res!851590 () Bool)

(assert (=> b!1907219 (=> (not res!851590) (not e!1218160))))

(declare-fun lt!729215 () Option!4353)

(declare-fun isDefined!3652 (Option!4353) Bool)

(assert (=> b!1907219 (= res!851590 (isDefined!3652 lt!729215))))

(assert (=> b!1907219 (= lt!729215 (maxPrefix!1883 thiss!23328 rules!3198 lt!729217))))

(declare-fun lt!729219 () BalanceConc!14102)

(declare-fun list!8736 (BalanceConc!14102) List!21557)

(assert (=> b!1907219 (= lt!729217 (list!8736 lt!729219))))

(declare-fun e!1218177 () Bool)

(assert (=> b!1907219 e!1218177))

(declare-fun res!851584 () Bool)

(assert (=> b!1907219 (=> (not res!851584) (not e!1218177))))

(declare-fun lt!729212 () Option!4354)

(assert (=> b!1907219 (= res!851584 (isDefined!3651 lt!729212))))

(assert (=> b!1907219 (= lt!729212 (getRuleFromTag!667 thiss!23328 rules!3198 (tag!4256 (rule!6021 separatorToken!354))))))

(declare-fun lt!729209 () Unit!35812)

(declare-fun lt!729218 () List!21557)

(assert (=> b!1907219 (= lt!729209 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!667 thiss!23328 rules!3198 lt!729218 separatorToken!354))))

(declare-fun charsOf!2380 (Token!7200) BalanceConc!14102)

(assert (=> b!1907219 (= lt!729218 (list!8736 (charsOf!2380 separatorToken!354)))))

(declare-fun lt!729206 () Unit!35812)

(declare-fun lemmaEqSameImage!532 (TokenValueInjection!7504 BalanceConc!14102 BalanceConc!14102) Unit!35812)

(declare-fun seqFromList!2696 (List!21557) BalanceConc!14102)

(assert (=> b!1907219 (= lt!729206 (lemmaEqSameImage!532 (transformation!3824 (rule!6021 (h!26877 tokens!598))) lt!729219 (seqFromList!2696 (originalCharacters!4631 (h!26877 tokens!598)))))))

(declare-fun lt!729214 () Unit!35812)

(declare-fun lemmaSemiInverse!803 (TokenValueInjection!7504 BalanceConc!14102) Unit!35812)

(assert (=> b!1907219 (= lt!729214 (lemmaSemiInverse!803 (transformation!3824 (rule!6021 (h!26877 tokens!598))) lt!729219))))

(assert (=> b!1907219 (= lt!729219 (charsOf!2380 (h!26877 tokens!598)))))

(declare-fun b!1907220 () Bool)

(declare-fun e!1218178 () Bool)

(assert (=> b!1907220 (= e!1218177 e!1218178)))

(declare-fun res!851586 () Bool)

(assert (=> b!1907220 (=> (not res!851586) (not e!1218178))))

(declare-fun lt!729204 () Rule!7448)

(declare-fun matchR!2535 (Regex!5249 List!21557) Bool)

(assert (=> b!1907220 (= res!851586 (matchR!2535 (regex!3824 lt!729204) lt!729218))))

(declare-fun get!6672 (Option!4354) Rule!7448)

(assert (=> b!1907220 (= lt!729204 (get!6672 lt!729212))))

(declare-fun e!1218168 () Bool)

(declare-fun e!1218165 () Bool)

(declare-fun tp!544470 () Bool)

(declare-fun b!1907221 () Bool)

(declare-fun inv!28577 (String!24918) Bool)

(declare-fun inv!28580 (TokenValueInjection!7504) Bool)

(assert (=> b!1907221 (= e!1218165 (and tp!544470 (inv!28577 (tag!4256 (rule!6021 separatorToken!354))) (inv!28580 (transformation!3824 (rule!6021 separatorToken!354))) e!1218168))))

(declare-fun b!1907222 () Bool)

(declare-fun e!1218166 () Bool)

(assert (=> b!1907222 (= e!1218166 true)))

(declare-fun lt!729207 () Bool)

(declare-fun lt!729213 () C!10644)

(declare-fun contains!3861 (List!21557 C!10644) Bool)

(assert (=> b!1907222 (= lt!729207 (contains!3861 lt!729218 lt!729213))))

(declare-fun e!1218175 () Bool)

(assert (=> b!1907223 (= e!1218175 (and tp!544477 tp!544481))))

(declare-fun b!1907225 () Bool)

(declare-fun get!6673 (Option!4353) tuple2!20216)

(assert (=> b!1907225 (= e!1218160 (= (_1!11577 (get!6673 lt!729215)) (h!26877 tokens!598)))))

(declare-fun tp!544480 () Bool)

(declare-fun e!1218164 () Bool)

(declare-fun e!1218162 () Bool)

(declare-fun b!1907226 () Bool)

(declare-fun inv!28581 (Token!7200) Bool)

(assert (=> b!1907226 (= e!1218164 (and (inv!28581 (h!26877 tokens!598)) e!1218162 tp!544480))))

(declare-fun b!1907227 () Bool)

(declare-fun res!851580 () Bool)

(assert (=> b!1907227 (=> res!851580 e!1218166)))

(declare-fun validRegex!2119 (Regex!5249) Bool)

(assert (=> b!1907227 (= res!851580 (not (validRegex!2119 (regex!3824 (rule!6021 separatorToken!354)))))))

(declare-fun b!1907228 () Bool)

(declare-fun res!851588 () Bool)

(assert (=> b!1907228 (=> (not res!851588) (not e!1218158))))

(assert (=> b!1907228 (= res!851588 ((_ is Cons!21476) tokens!598))))

(assert (=> b!1907229 (= e!1218168 (and tp!544475 tp!544471))))

(declare-fun b!1907230 () Bool)

(declare-fun res!851578 () Bool)

(assert (=> b!1907230 (=> (not res!851578) (not e!1218158))))

(declare-fun rulesProduceEachTokenIndividuallyList!1168 (LexerInterface!3437 List!21559 List!21558) Bool)

(assert (=> b!1907230 (= res!851578 (rulesProduceEachTokenIndividuallyList!1168 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1907231 () Bool)

(assert (=> b!1907231 (= e!1218174 e!1218156)))

(declare-fun res!851576 () Bool)

(assert (=> b!1907231 (=> (not res!851576) (not e!1218156))))

(assert (=> b!1907231 (= res!851576 (matchR!2535 (regex!3824 lt!729211) lt!729217))))

(assert (=> b!1907231 (= lt!729211 (get!6672 lt!729216))))

(declare-fun b!1907232 () Bool)

(declare-fun res!851589 () Bool)

(assert (=> b!1907232 (=> (not res!851589) (not e!1218158))))

(declare-fun sepAndNonSepRulesDisjointChars!922 (List!21559 List!21559) Bool)

(assert (=> b!1907232 (= res!851589 (sepAndNonSepRulesDisjointChars!922 rules!3198 rules!3198))))

(declare-fun b!1907233 () Bool)

(declare-fun res!851591 () Bool)

(assert (=> b!1907233 (=> (not res!851591) (not e!1218158))))

(assert (=> b!1907233 (= res!851591 (isSeparator!3824 (rule!6021 separatorToken!354)))))

(declare-fun e!1218157 () Bool)

(declare-fun b!1907234 () Bool)

(declare-fun tp!544473 () Bool)

(assert (=> b!1907234 (= e!1218157 (and tp!544473 (inv!28577 (tag!4256 (rule!6021 (h!26877 tokens!598)))) (inv!28580 (transformation!3824 (rule!6021 (h!26877 tokens!598)))) e!1218167))))

(declare-fun b!1907235 () Bool)

(declare-fun res!851592 () Bool)

(assert (=> b!1907235 (=> (not res!851592) (not e!1218158))))

(declare-fun rulesInvariant!3044 (LexerInterface!3437 List!21559) Bool)

(assert (=> b!1907235 (= res!851592 (rulesInvariant!3044 thiss!23328 rules!3198))))

(declare-fun b!1907236 () Bool)

(declare-fun tp!544479 () Bool)

(declare-fun inv!21 (TokenValue!3960) Bool)

(assert (=> b!1907236 (= e!1218162 (and (inv!21 (value!120575 (h!26877 tokens!598))) e!1218157 tp!544479))))

(declare-fun b!1907237 () Bool)

(assert (=> b!1907237 (= e!1218178 (= (rule!6021 separatorToken!354) lt!729204))))

(declare-fun b!1907238 () Bool)

(declare-fun res!851587 () Bool)

(assert (=> b!1907238 (=> (not res!851587) (not e!1218158))))

(declare-fun isEmpty!13190 (List!21559) Bool)

(assert (=> b!1907238 (= res!851587 (not (isEmpty!13190 rules!3198)))))

(declare-fun res!851585 () Bool)

(assert (=> start!191328 (=> (not res!851585) (not e!1218158))))

(assert (=> start!191328 (= res!851585 ((_ is Lexer!3435) thiss!23328))))

(assert (=> start!191328 e!1218158))

(assert (=> start!191328 true))

(assert (=> start!191328 e!1218176))

(assert (=> start!191328 e!1218164))

(declare-fun e!1218161 () Bool)

(assert (=> start!191328 (and (inv!28581 separatorToken!354) e!1218161)))

(declare-fun tp!544478 () Bool)

(declare-fun b!1907224 () Bool)

(assert (=> b!1907224 (= e!1218161 (and (inv!21 (value!120575 separatorToken!354)) e!1218165 tp!544478))))

(declare-fun b!1907239 () Bool)

(assert (=> b!1907239 (= e!1218169 e!1218166)))

(declare-fun res!851581 () Bool)

(assert (=> b!1907239 (=> res!851581 e!1218166)))

(declare-fun usedCharacters!332 (Regex!5249) List!21557)

(assert (=> b!1907239 (= res!851581 (contains!3861 (usedCharacters!332 (regex!3824 (rule!6021 separatorToken!354))) lt!729213))))

(declare-fun head!4426 (List!21557) C!10644)

(assert (=> b!1907239 (= lt!729213 (head!4426 lt!729218))))

(assert (=> b!1907239 (= (++!5771 (++!5771 lt!729217 lt!729218) lt!729208) (++!5771 lt!729217 (++!5771 lt!729218 lt!729208)))))

(declare-fun lt!729210 () Unit!35812)

(declare-fun lemmaConcatAssociativity!1139 (List!21557 List!21557 List!21557) Unit!35812)

(assert (=> b!1907239 (= lt!729210 (lemmaConcatAssociativity!1139 lt!729217 lt!729218 lt!729208))))

(declare-fun b!1907240 () Bool)

(declare-fun res!851583 () Bool)

(assert (=> b!1907240 (=> (not res!851583) (not e!1218158))))

(declare-fun rulesProduceIndividualToken!1609 (LexerInterface!3437 List!21559 Token!7200) Bool)

(assert (=> b!1907240 (= res!851583 (rulesProduceIndividualToken!1609 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1907241 () Bool)

(declare-fun tp!544474 () Bool)

(assert (=> b!1907241 (= e!1218173 (and tp!544474 (inv!28577 (tag!4256 (h!26878 rules!3198))) (inv!28580 (transformation!3824 (h!26878 rules!3198))) e!1218175))))

(declare-fun b!1907242 () Bool)

(declare-fun res!851582 () Bool)

(assert (=> b!1907242 (=> (not res!851582) (not e!1218158))))

(declare-fun lambda!74509 () Int)

(declare-fun forall!4512 (List!21558 Int) Bool)

(assert (=> b!1907242 (= res!851582 (forall!4512 tokens!598 lambda!74509))))

(assert (= (and start!191328 res!851585) b!1907238))

(assert (= (and b!1907238 res!851587) b!1907235))

(assert (= (and b!1907235 res!851592) b!1907230))

(assert (= (and b!1907230 res!851578) b!1907240))

(assert (= (and b!1907240 res!851583) b!1907233))

(assert (= (and b!1907233 res!851591) b!1907242))

(assert (= (and b!1907242 res!851582) b!1907232))

(assert (= (and b!1907232 res!851589) b!1907228))

(assert (= (and b!1907228 res!851588) b!1907219))

(assert (= (and b!1907219 res!851584) b!1907220))

(assert (= (and b!1907220 res!851586) b!1907237))

(assert (= (and b!1907219 res!851590) b!1907225))

(assert (= (and b!1907219 res!851577) b!1907231))

(assert (= (and b!1907231 res!851576) b!1907216))

(assert (= (and b!1907219 (not res!851579)) b!1907239))

(assert (= (and b!1907239 (not res!851581)) b!1907227))

(assert (= (and b!1907227 (not res!851580)) b!1907222))

(assert (= b!1907241 b!1907223))

(assert (= b!1907217 b!1907241))

(assert (= (and start!191328 ((_ is Cons!21477) rules!3198)) b!1907217))

(assert (= b!1907234 b!1907218))

(assert (= b!1907236 b!1907234))

(assert (= b!1907226 b!1907236))

(assert (= (and start!191328 ((_ is Cons!21476) tokens!598)) b!1907226))

(assert (= b!1907221 b!1907229))

(assert (= b!1907224 b!1907221))

(assert (= start!191328 b!1907224))

(declare-fun m!2339901 () Bool)

(assert (=> b!1907230 m!2339901))

(declare-fun m!2339903 () Bool)

(assert (=> b!1907222 m!2339903))

(declare-fun m!2339905 () Bool)

(assert (=> b!1907235 m!2339905))

(declare-fun m!2339907 () Bool)

(assert (=> b!1907224 m!2339907))

(declare-fun m!2339909 () Bool)

(assert (=> b!1907239 m!2339909))

(declare-fun m!2339911 () Bool)

(assert (=> b!1907239 m!2339911))

(declare-fun m!2339913 () Bool)

(assert (=> b!1907239 m!2339913))

(declare-fun m!2339915 () Bool)

(assert (=> b!1907239 m!2339915))

(declare-fun m!2339917 () Bool)

(assert (=> b!1907239 m!2339917))

(declare-fun m!2339919 () Bool)

(assert (=> b!1907239 m!2339919))

(assert (=> b!1907239 m!2339913))

(assert (=> b!1907239 m!2339917))

(assert (=> b!1907239 m!2339911))

(declare-fun m!2339921 () Bool)

(assert (=> b!1907239 m!2339921))

(declare-fun m!2339923 () Bool)

(assert (=> b!1907239 m!2339923))

(declare-fun m!2339925 () Bool)

(assert (=> b!1907234 m!2339925))

(declare-fun m!2339927 () Bool)

(assert (=> b!1907234 m!2339927))

(declare-fun m!2339929 () Bool)

(assert (=> b!1907238 m!2339929))

(declare-fun m!2339931 () Bool)

(assert (=> b!1907219 m!2339931))

(declare-fun m!2339933 () Bool)

(assert (=> b!1907219 m!2339933))

(declare-fun m!2339935 () Bool)

(assert (=> b!1907219 m!2339935))

(declare-fun m!2339937 () Bool)

(assert (=> b!1907219 m!2339937))

(declare-fun m!2339939 () Bool)

(assert (=> b!1907219 m!2339939))

(declare-fun m!2339941 () Bool)

(assert (=> b!1907219 m!2339941))

(declare-fun m!2339943 () Bool)

(assert (=> b!1907219 m!2339943))

(declare-fun m!2339945 () Bool)

(assert (=> b!1907219 m!2339945))

(declare-fun m!2339947 () Bool)

(assert (=> b!1907219 m!2339947))

(declare-fun m!2339949 () Bool)

(assert (=> b!1907219 m!2339949))

(declare-fun m!2339951 () Bool)

(assert (=> b!1907219 m!2339951))

(declare-fun m!2339953 () Bool)

(assert (=> b!1907219 m!2339953))

(declare-fun m!2339955 () Bool)

(assert (=> b!1907219 m!2339955))

(assert (=> b!1907219 m!2339949))

(declare-fun m!2339957 () Bool)

(assert (=> b!1907219 m!2339957))

(assert (=> b!1907219 m!2339953))

(assert (=> b!1907219 m!2339939))

(declare-fun m!2339959 () Bool)

(assert (=> b!1907219 m!2339959))

(declare-fun m!2339961 () Bool)

(assert (=> b!1907219 m!2339961))

(declare-fun m!2339963 () Bool)

(assert (=> b!1907219 m!2339963))

(declare-fun m!2339965 () Bool)

(assert (=> b!1907219 m!2339965))

(declare-fun m!2339967 () Bool)

(assert (=> b!1907225 m!2339967))

(declare-fun m!2339969 () Bool)

(assert (=> b!1907236 m!2339969))

(declare-fun m!2339971 () Bool)

(assert (=> b!1907226 m!2339971))

(declare-fun m!2339973 () Bool)

(assert (=> b!1907242 m!2339973))

(declare-fun m!2339975 () Bool)

(assert (=> b!1907221 m!2339975))

(declare-fun m!2339977 () Bool)

(assert (=> b!1907221 m!2339977))

(declare-fun m!2339979 () Bool)

(assert (=> start!191328 m!2339979))

(declare-fun m!2339981 () Bool)

(assert (=> b!1907231 m!2339981))

(declare-fun m!2339983 () Bool)

(assert (=> b!1907231 m!2339983))

(declare-fun m!2339985 () Bool)

(assert (=> b!1907232 m!2339985))

(declare-fun m!2339987 () Bool)

(assert (=> b!1907227 m!2339987))

(declare-fun m!2339989 () Bool)

(assert (=> b!1907240 m!2339989))

(declare-fun m!2339991 () Bool)

(assert (=> b!1907241 m!2339991))

(declare-fun m!2339993 () Bool)

(assert (=> b!1907241 m!2339993))

(declare-fun m!2339995 () Bool)

(assert (=> b!1907220 m!2339995))

(declare-fun m!2339997 () Bool)

(assert (=> b!1907220 m!2339997))

(check-sat (not b!1907242) (not start!191328) b_and!148275 (not b!1907226) (not b_next!54413) (not b_next!54415) (not b_next!54419) (not b!1907241) (not b!1907231) b_and!148285 b_and!148279 b_and!148277 b_and!148283 (not b!1907232) (not b!1907230) (not b!1907240) (not b!1907234) (not b!1907219) (not b!1907217) b_and!148281 (not b_next!54411) (not b!1907238) (not b!1907227) (not b!1907220) (not b!1907224) (not b!1907236) (not b!1907235) (not b_next!54409) (not b!1907221) (not b_next!54417) (not b!1907222) (not b!1907239) (not b!1907225))
(check-sat b_and!148275 (not b_next!54413) (not b_next!54415) (not b_next!54419) (not b_next!54409) b_and!148285 b_and!148279 b_and!148277 b_and!148283 (not b_next!54417) b_and!148281 (not b_next!54411))
