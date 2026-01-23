; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!172530 () Bool)

(assert start!172530)

(declare-fun b!1748964 () Bool)

(declare-fun b_free!48139 () Bool)

(declare-fun b_next!48843 () Bool)

(assert (=> b!1748964 (= b_free!48139 (not b_next!48843))))

(declare-fun tp!497474 () Bool)

(declare-fun b_and!130507 () Bool)

(assert (=> b!1748964 (= tp!497474 b_and!130507)))

(declare-fun b_free!48141 () Bool)

(declare-fun b_next!48845 () Bool)

(assert (=> b!1748964 (= b_free!48141 (not b_next!48845))))

(declare-fun tp!497471 () Bool)

(declare-fun b_and!130509 () Bool)

(assert (=> b!1748964 (= tp!497471 b_and!130509)))

(declare-fun b!1748959 () Bool)

(declare-fun b_free!48143 () Bool)

(declare-fun b_next!48847 () Bool)

(assert (=> b!1748959 (= b_free!48143 (not b_next!48847))))

(declare-fun tp!497468 () Bool)

(declare-fun b_and!130511 () Bool)

(assert (=> b!1748959 (= tp!497468 b_and!130511)))

(declare-fun b_free!48145 () Bool)

(declare-fun b_next!48849 () Bool)

(assert (=> b!1748959 (= b_free!48145 (not b_next!48849))))

(declare-fun tp!497465 () Bool)

(declare-fun b_and!130513 () Bool)

(assert (=> b!1748959 (= tp!497465 b_and!130513)))

(declare-fun b!1748956 () Bool)

(declare-fun b_free!48147 () Bool)

(declare-fun b_next!48851 () Bool)

(assert (=> b!1748956 (= b_free!48147 (not b_next!48851))))

(declare-fun tp!497469 () Bool)

(declare-fun b_and!130515 () Bool)

(assert (=> b!1748956 (= tp!497469 b_and!130515)))

(declare-fun b_free!48149 () Bool)

(declare-fun b_next!48853 () Bool)

(assert (=> b!1748956 (= b_free!48149 (not b_next!48853))))

(declare-fun tp!497466 () Bool)

(declare-fun b_and!130517 () Bool)

(assert (=> b!1748956 (= tp!497466 b_and!130517)))

(declare-fun b!1748978 () Bool)

(declare-fun e!1119189 () Bool)

(assert (=> b!1748978 (= e!1119189 true)))

(declare-fun b!1748977 () Bool)

(declare-fun e!1119188 () Bool)

(assert (=> b!1748977 (= e!1119188 e!1119189)))

(declare-fun b!1748976 () Bool)

(declare-fun e!1119187 () Bool)

(assert (=> b!1748976 (= e!1119187 e!1119188)))

(declare-fun b!1748958 () Bool)

(assert (=> b!1748958 e!1119187))

(assert (= b!1748977 b!1748978))

(assert (= b!1748976 b!1748977))

(assert (= b!1748958 b!1748976))

(declare-fun order!12037 () Int)

(declare-datatypes ((List!19288 0))(
  ( (Nil!19218) (Cons!19218 (h!24619 (_ BitVec 16)) (t!162631 List!19288)) )
))
(declare-datatypes ((TokenValue!3515 0))(
  ( (FloatLiteralValue!7030 (text!25050 List!19288)) (TokenValueExt!3514 (__x!12332 Int)) (Broken!17575 (value!107259 List!19288)) (Object!3584) (End!3515) (Def!3515) (Underscore!3515) (Match!3515) (Else!3515) (Error!3515) (Case!3515) (If!3515) (Extends!3515) (Abstract!3515) (Class!3515) (Val!3515) (DelimiterValue!7030 (del!3575 List!19288)) (KeywordValue!3521 (value!107260 List!19288)) (CommentValue!7030 (value!107261 List!19288)) (WhitespaceValue!7030 (value!107262 List!19288)) (IndentationValue!3515 (value!107263 List!19288)) (String!21906) (Int32!3515) (Broken!17576 (value!107264 List!19288)) (Boolean!3516) (Unit!33298) (OperatorValue!3518 (op!3575 List!19288)) (IdentifierValue!7030 (value!107265 List!19288)) (IdentifierValue!7031 (value!107266 List!19288)) (WhitespaceValue!7031 (value!107267 List!19288)) (True!7030) (False!7030) (Broken!17577 (value!107268 List!19288)) (Broken!17578 (value!107269 List!19288)) (True!7031) (RightBrace!3515) (RightBracket!3515) (Colon!3515) (Null!3515) (Comma!3515) (LeftBracket!3515) (False!7031) (LeftBrace!3515) (ImaginaryLiteralValue!3515 (text!25051 List!19288)) (StringLiteralValue!10545 (value!107270 List!19288)) (EOFValue!3515 (value!107271 List!19288)) (IdentValue!3515 (value!107272 List!19288)) (DelimiterValue!7031 (value!107273 List!19288)) (DedentValue!3515 (value!107274 List!19288)) (NewLineValue!3515 (value!107275 List!19288)) (IntegerValue!10545 (value!107276 (_ BitVec 32)) (text!25052 List!19288)) (IntegerValue!10546 (value!107277 Int) (text!25053 List!19288)) (Times!3515) (Or!3515) (Equal!3515) (Minus!3515) (Broken!17579 (value!107278 List!19288)) (And!3515) (Div!3515) (LessEqual!3515) (Mod!3515) (Concat!8268) (Not!3515) (Plus!3515) (SpaceValue!3515 (value!107279 List!19288)) (IntegerValue!10547 (value!107280 Int) (text!25054 List!19288)) (StringLiteralValue!10546 (text!25055 List!19288)) (FloatLiteralValue!7031 (text!25056 List!19288)) (BytesLiteralValue!3515 (value!107281 List!19288)) (CommentValue!7031 (value!107282 List!19288)) (StringLiteralValue!10547 (value!107283 List!19288)) (ErrorTokenValue!3515 (msg!3576 List!19288)) )
))
(declare-datatypes ((C!9680 0))(
  ( (C!9681 (val!5436 Int)) )
))
(declare-datatypes ((List!19289 0))(
  ( (Nil!19219) (Cons!19219 (h!24620 C!9680) (t!162632 List!19289)) )
))
(declare-datatypes ((String!21907 0))(
  ( (String!21908 (value!107284 String)) )
))
(declare-datatypes ((Regex!4753 0))(
  ( (ElementMatch!4753 (c!285310 C!9680)) (Concat!8269 (regOne!10018 Regex!4753) (regTwo!10018 Regex!4753)) (EmptyExpr!4753) (Star!4753 (reg!5082 Regex!4753)) (EmptyLang!4753) (Union!4753 (regOne!10019 Regex!4753) (regTwo!10019 Regex!4753)) )
))
(declare-datatypes ((IArray!12791 0))(
  ( (IArray!12792 (innerList!6453 List!19289)) )
))
(declare-datatypes ((Conc!6393 0))(
  ( (Node!6393 (left!15367 Conc!6393) (right!15697 Conc!6393) (csize!13016 Int) (cheight!6604 Int)) (Leaf!9326 (xs!9269 IArray!12791) (csize!13017 Int)) (Empty!6393) )
))
(declare-datatypes ((BalanceConc!12730 0))(
  ( (BalanceConc!12731 (c!285311 Conc!6393)) )
))
(declare-datatypes ((TokenValueInjection!6690 0))(
  ( (TokenValueInjection!6691 (toValue!4940 Int) (toChars!4799 Int)) )
))
(declare-datatypes ((Rule!6650 0))(
  ( (Rule!6651 (regex!3425 Regex!4753) (tag!3775 String!21907) (isSeparator!3425 Bool) (transformation!3425 TokenValueInjection!6690)) )
))
(declare-datatypes ((Token!6416 0))(
  ( (Token!6417 (value!107285 TokenValue!3515) (rule!5433 Rule!6650) (size!15262 Int) (originalCharacters!4239 List!19289)) )
))
(declare-datatypes ((tuple2!18862 0))(
  ( (tuple2!18863 (_1!10833 Token!6416) (_2!10833 List!19289)) )
))
(declare-fun lt!674412 () tuple2!18862)

(declare-fun lambda!69818 () Int)

(declare-fun order!12035 () Int)

(declare-fun dynLambda!9126 (Int Int) Int)

(declare-fun dynLambda!9127 (Int Int) Int)

(assert (=> b!1748978 (< (dynLambda!9126 order!12035 (toValue!4940 (transformation!3425 (rule!5433 (_1!10833 lt!674412))))) (dynLambda!9127 order!12037 lambda!69818))))

(declare-fun order!12039 () Int)

(declare-fun dynLambda!9128 (Int Int) Int)

(assert (=> b!1748978 (< (dynLambda!9128 order!12039 (toChars!4799 (transformation!3425 (rule!5433 (_1!10833 lt!674412))))) (dynLambda!9127 order!12037 lambda!69818))))

(declare-fun b!1748938 () Bool)

(declare-fun e!1119171 () Bool)

(declare-fun e!1119179 () Bool)

(assert (=> b!1748938 (= e!1119171 e!1119179)))

(declare-fun res!786544 () Bool)

(assert (=> b!1748938 (=> res!786544 e!1119179)))

(declare-fun lt!674400 () List!19289)

(declare-fun lt!674410 () List!19289)

(declare-fun isPrefix!1666 (List!19289 List!19289) Bool)

(assert (=> b!1748938 (= res!786544 (not (isPrefix!1666 lt!674400 lt!674410)))))

(declare-fun ++!5250 (List!19289 List!19289) List!19289)

(assert (=> b!1748938 (isPrefix!1666 lt!674400 (++!5250 lt!674400 (_2!10833 lt!674412)))))

(declare-datatypes ((Unit!33299 0))(
  ( (Unit!33300) )
))
(declare-fun lt!674428 () Unit!33299)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1176 (List!19289 List!19289) Unit!33299)

(assert (=> b!1748938 (= lt!674428 (lemmaConcatTwoListThenFirstIsPrefix!1176 lt!674400 (_2!10833 lt!674412)))))

(declare-fun lt!674417 () BalanceConc!12730)

(declare-fun list!7786 (BalanceConc!12730) List!19289)

(assert (=> b!1748938 (= lt!674400 (list!7786 lt!674417))))

(declare-fun charsOf!2074 (Token!6416) BalanceConc!12730)

(assert (=> b!1748938 (= lt!674417 (charsOf!2074 (_1!10833 lt!674412)))))

(declare-fun e!1119158 () Bool)

(assert (=> b!1748938 e!1119158))

(declare-fun res!786550 () Bool)

(assert (=> b!1748938 (=> (not res!786550) (not e!1119158))))

(declare-datatypes ((Option!3874 0))(
  ( (None!3873) (Some!3873 (v!25316 Rule!6650)) )
))
(declare-fun lt!674408 () Option!3874)

(declare-fun isDefined!3217 (Option!3874) Bool)

(assert (=> b!1748938 (= res!786550 (isDefined!3217 lt!674408))))

(declare-datatypes ((LexerInterface!3054 0))(
  ( (LexerInterfaceExt!3051 (__x!12333 Int)) (Lexer!3052) )
))
(declare-fun thiss!24550 () LexerInterface!3054)

(declare-datatypes ((List!19290 0))(
  ( (Nil!19220) (Cons!19220 (h!24621 Rule!6650) (t!162633 List!19290)) )
))
(declare-fun rules!3447 () List!19290)

(declare-fun getRuleFromTag!475 (LexerInterface!3054 List!19290 String!21907) Option!3874)

(assert (=> b!1748938 (= lt!674408 (getRuleFromTag!475 thiss!24550 rules!3447 (tag!3775 (rule!5433 (_1!10833 lt!674412)))))))

(declare-fun lt!674420 () Unit!33299)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!475 (LexerInterface!3054 List!19290 List!19289 Token!6416) Unit!33299)

(assert (=> b!1748938 (= lt!674420 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!475 thiss!24550 rules!3447 lt!674410 (_1!10833 lt!674412)))))

(declare-datatypes ((Option!3875 0))(
  ( (None!3874) (Some!3874 (v!25317 tuple2!18862)) )
))
(declare-fun lt!674404 () Option!3875)

(declare-fun get!5804 (Option!3875) tuple2!18862)

(assert (=> b!1748938 (= lt!674412 (get!5804 lt!674404))))

(declare-fun lt!674398 () Unit!33299)

(declare-fun suffix!1421 () List!19289)

(declare-fun lt!674409 () List!19289)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!578 (LexerInterface!3054 List!19290 List!19289 List!19289) Unit!33299)

(assert (=> b!1748938 (= lt!674398 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!578 thiss!24550 rules!3447 lt!674409 suffix!1421))))

(declare-fun maxPrefix!1608 (LexerInterface!3054 List!19290 List!19289) Option!3875)

(assert (=> b!1748938 (= lt!674404 (maxPrefix!1608 thiss!24550 rules!3447 lt!674410))))

(assert (=> b!1748938 (isPrefix!1666 lt!674409 lt!674410)))

(declare-fun lt!674401 () Unit!33299)

(assert (=> b!1748938 (= lt!674401 (lemmaConcatTwoListThenFirstIsPrefix!1176 lt!674409 suffix!1421))))

(assert (=> b!1748938 (= lt!674410 (++!5250 lt!674409 suffix!1421))))

(declare-fun b!1748939 () Bool)

(declare-fun e!1119162 () Bool)

(declare-fun e!1119176 () Bool)

(assert (=> b!1748939 (= e!1119162 e!1119176)))

(declare-fun res!786546 () Bool)

(assert (=> b!1748939 (=> res!786546 e!1119176)))

(declare-fun lt!674424 () Int)

(declare-fun lt!674411 () BalanceConc!12730)

(declare-fun size!15263 (BalanceConc!12730) Int)

(assert (=> b!1748939 (= res!786546 (<= lt!674424 (size!15263 lt!674411)))))

(declare-fun lt!674405 () Regex!4753)

(declare-fun matchR!2227 (Regex!4753 List!19289) Bool)

(assert (=> b!1748939 (matchR!2227 lt!674405 lt!674409)))

(declare-fun rule!422 () Rule!6650)

(declare-fun token!523 () Token!6416)

(declare-fun lt!674396 () Unit!33299)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!156 (LexerInterface!3054 List!19290 List!19289 Token!6416 Rule!6650 List!19289) Unit!33299)

(assert (=> b!1748939 (= lt!674396 (lemmaMaxPrefixThenMatchesRulesRegex!156 thiss!24550 rules!3447 lt!674409 token!523 rule!422 Nil!19219))))

(declare-fun b!1748940 () Bool)

(declare-fun e!1119173 () Bool)

(assert (=> b!1748940 (= e!1119158 e!1119173)))

(declare-fun res!786532 () Bool)

(assert (=> b!1748940 (=> (not res!786532) (not e!1119173))))

(declare-fun lt!674414 () Rule!6650)

(assert (=> b!1748940 (= res!786532 (matchR!2227 (regex!3425 lt!674414) (list!7786 (charsOf!2074 (_1!10833 lt!674412)))))))

(declare-fun get!5805 (Option!3874) Rule!6650)

(assert (=> b!1748940 (= lt!674414 (get!5805 lt!674408))))

(declare-fun e!1119167 () Bool)

(declare-fun b!1748941 () Bool)

(declare-fun e!1119178 () Bool)

(declare-fun tp!497467 () Bool)

(declare-fun inv!24909 (String!21907) Bool)

(declare-fun inv!24914 (TokenValueInjection!6690) Bool)

(assert (=> b!1748941 (= e!1119167 (and tp!497467 (inv!24909 (tag!3775 rule!422)) (inv!24914 (transformation!3425 rule!422)) e!1119178))))

(declare-fun b!1748943 () Bool)

(declare-fun lt!674418 () List!19289)

(assert (=> b!1748943 (= e!1119176 (= lt!674418 suffix!1421))))

(assert (=> b!1748943 (= suffix!1421 lt!674418)))

(declare-fun lt!674423 () Unit!33299)

(declare-fun lemmaSamePrefixThenSameSuffix!796 (List!19289 List!19289 List!19289 List!19289 List!19289) Unit!33299)

(assert (=> b!1748943 (= lt!674423 (lemmaSamePrefixThenSameSuffix!796 lt!674409 suffix!1421 lt!674409 lt!674418 lt!674410))))

(declare-fun getSuffix!846 (List!19289 List!19289) List!19289)

(assert (=> b!1748943 (= lt!674418 (getSuffix!846 lt!674410 lt!674409))))

(assert (=> b!1748943 (matchR!2227 lt!674405 lt!674400)))

(declare-fun lt!674406 () Unit!33299)

(assert (=> b!1748943 (= lt!674406 (lemmaMaxPrefixThenMatchesRulesRegex!156 thiss!24550 rules!3447 lt!674410 (_1!10833 lt!674412) (rule!5433 (_1!10833 lt!674412)) (_2!10833 lt!674412)))))

(declare-fun b!1748944 () Bool)

(declare-fun res!786533 () Bool)

(declare-fun e!1119163 () Bool)

(assert (=> b!1748944 (=> (not res!786533) (not e!1119163))))

(declare-fun lt!674397 () tuple2!18862)

(declare-fun isEmpty!12111 (List!19289) Bool)

(assert (=> b!1748944 (= res!786533 (isEmpty!12111 (_2!10833 lt!674397)))))

(declare-fun b!1748945 () Bool)

(declare-fun res!786540 () Bool)

(assert (=> b!1748945 (=> res!786540 e!1119179)))

(assert (=> b!1748945 (= res!786540 (not (matchR!2227 (regex!3425 (rule!5433 (_1!10833 lt!674412))) lt!674400)))))

(declare-fun b!1748946 () Bool)

(declare-fun res!786548 () Bool)

(declare-fun e!1119168 () Bool)

(assert (=> b!1748946 (=> (not res!786548) (not e!1119168))))

(declare-fun rulesInvariant!2723 (LexerInterface!3054 List!19290) Bool)

(assert (=> b!1748946 (= res!786548 (rulesInvariant!2723 thiss!24550 rules!3447))))

(declare-fun b!1748947 () Bool)

(declare-fun e!1119155 () Bool)

(assert (=> b!1748947 (= e!1119155 e!1119171)))

(declare-fun res!786539 () Bool)

(assert (=> b!1748947 (=> res!786539 e!1119171)))

(declare-fun prefixMatch!638 (Regex!4753 List!19289) Bool)

(declare-fun head!4022 (List!19289) C!9680)

(assert (=> b!1748947 (= res!786539 (prefixMatch!638 lt!674405 (++!5250 lt!674409 (Cons!19219 (head!4022 suffix!1421) Nil!19219))))))

(declare-fun rulesRegex!783 (LexerInterface!3054 List!19290) Regex!4753)

(assert (=> b!1748947 (= lt!674405 (rulesRegex!783 thiss!24550 rules!3447))))

(declare-fun b!1748948 () Bool)

(declare-fun e!1119166 () Bool)

(assert (=> b!1748948 (= e!1119166 e!1119163)))

(declare-fun res!786541 () Bool)

(assert (=> b!1748948 (=> (not res!786541) (not e!1119163))))

(assert (=> b!1748948 (= res!786541 (= (_1!10833 lt!674397) token!523))))

(declare-fun lt!674413 () Option!3875)

(assert (=> b!1748948 (= lt!674397 (get!5804 lt!674413))))

(declare-fun b!1748949 () Bool)

(declare-fun e!1119180 () Bool)

(declare-fun e!1119165 () Bool)

(declare-fun tp!497472 () Bool)

(assert (=> b!1748949 (= e!1119180 (and e!1119165 tp!497472))))

(declare-fun b!1748950 () Bool)

(declare-fun e!1119160 () Bool)

(declare-fun e!1119175 () Bool)

(assert (=> b!1748950 (= e!1119160 e!1119175)))

(declare-fun res!786551 () Bool)

(assert (=> b!1748950 (=> res!786551 e!1119175)))

(declare-fun dynLambda!9129 (Int TokenValue!3515) BalanceConc!12730)

(declare-fun dynLambda!9130 (Int BalanceConc!12730) TokenValue!3515)

(assert (=> b!1748950 (= res!786551 (not (= (list!7786 (dynLambda!9129 (toChars!4799 (transformation!3425 (rule!5433 (_1!10833 lt!674412)))) (dynLambda!9130 (toValue!4940 (transformation!3425 (rule!5433 (_1!10833 lt!674412)))) lt!674417))) lt!674400)))))

(declare-fun lt!674419 () Unit!33299)

(declare-fun lemmaSemiInverse!565 (TokenValueInjection!6690 BalanceConc!12730) Unit!33299)

(assert (=> b!1748950 (= lt!674419 (lemmaSemiInverse!565 (transformation!3425 (rule!5433 (_1!10833 lt!674412))) lt!674417))))

(declare-fun tp!497473 () Bool)

(declare-fun b!1748951 () Bool)

(declare-fun e!1119159 () Bool)

(assert (=> b!1748951 (= e!1119165 (and tp!497473 (inv!24909 (tag!3775 (h!24621 rules!3447))) (inv!24914 (transformation!3425 (h!24621 rules!3447))) e!1119159))))

(declare-fun b!1748952 () Bool)

(declare-fun res!786545 () Bool)

(assert (=> b!1748952 (=> res!786545 e!1119155)))

(assert (=> b!1748952 (= res!786545 (isEmpty!12111 suffix!1421))))

(declare-fun b!1748953 () Bool)

(declare-fun tp!497470 () Bool)

(declare-fun e!1119161 () Bool)

(declare-fun e!1119169 () Bool)

(assert (=> b!1748953 (= e!1119169 (and tp!497470 (inv!24909 (tag!3775 (rule!5433 token!523))) (inv!24914 (transformation!3425 (rule!5433 token!523))) e!1119161))))

(declare-fun b!1748954 () Bool)

(declare-fun e!1119164 () Bool)

(assert (=> b!1748954 (= e!1119175 e!1119164)))

(declare-fun res!786552 () Bool)

(assert (=> b!1748954 (=> res!786552 e!1119164)))

(declare-fun lt!674425 () TokenValue!3515)

(assert (=> b!1748954 (= res!786552 (not (= lt!674404 (Some!3874 (tuple2!18863 (Token!6417 lt!674425 (rule!5433 (_1!10833 lt!674412)) lt!674424 lt!674400) (_2!10833 lt!674412))))))))

(assert (=> b!1748954 (= lt!674424 (size!15263 lt!674417))))

(declare-fun apply!5226 (TokenValueInjection!6690 BalanceConc!12730) TokenValue!3515)

(assert (=> b!1748954 (= lt!674425 (apply!5226 (transformation!3425 (rule!5433 (_1!10833 lt!674412))) lt!674417))))

(declare-fun lt!674416 () Unit!33299)

(declare-fun lemmaCharactersSize!485 (Token!6416) Unit!33299)

(assert (=> b!1748954 (= lt!674416 (lemmaCharactersSize!485 (_1!10833 lt!674412)))))

(declare-fun lt!674426 () Unit!33299)

(declare-fun lemmaEqSameImage!338 (TokenValueInjection!6690 BalanceConc!12730 BalanceConc!12730) Unit!33299)

(declare-fun seqFromList!2395 (List!19289) BalanceConc!12730)

(assert (=> b!1748954 (= lt!674426 (lemmaEqSameImage!338 (transformation!3425 (rule!5433 (_1!10833 lt!674412))) lt!674417 (seqFromList!2395 (originalCharacters!4239 (_1!10833 lt!674412)))))))

(declare-fun b!1748955 () Bool)

(assert (=> b!1748955 (= e!1119173 (= (rule!5433 (_1!10833 lt!674412)) lt!674414))))

(declare-fun b!1748942 () Bool)

(declare-fun e!1119174 () Bool)

(declare-fun tp!497476 () Bool)

(declare-fun inv!21 (TokenValue!3515) Bool)

(assert (=> b!1748942 (= e!1119174 (and (inv!21 (value!107285 token!523)) e!1119169 tp!497476))))

(declare-fun res!786536 () Bool)

(assert (=> start!172530 (=> (not res!786536) (not e!1119168))))

(get-info :version)

(assert (=> start!172530 (= res!786536 ((_ is Lexer!3052) thiss!24550))))

(assert (=> start!172530 e!1119168))

(declare-fun e!1119157 () Bool)

(assert (=> start!172530 e!1119157))

(assert (=> start!172530 e!1119167))

(assert (=> start!172530 true))

(declare-fun inv!24915 (Token!6416) Bool)

(assert (=> start!172530 (and (inv!24915 token!523) e!1119174)))

(assert (=> start!172530 e!1119180))

(assert (=> b!1748956 (= e!1119178 (and tp!497469 tp!497466))))

(declare-fun b!1748957 () Bool)

(declare-fun res!786542 () Bool)

(assert (=> b!1748957 (=> (not res!786542) (not e!1119168))))

(declare-fun isEmpty!12112 (List!19290) Bool)

(assert (=> b!1748957 (= res!786542 (not (isEmpty!12112 rules!3447)))))

(assert (=> b!1748958 (= e!1119179 e!1119160)))

(declare-fun res!786547 () Bool)

(assert (=> b!1748958 (=> res!786547 e!1119160)))

(declare-fun Forall!794 (Int) Bool)

(assert (=> b!1748958 (= res!786547 (not (Forall!794 lambda!69818)))))

(declare-fun lt!674399 () Unit!33299)

(declare-fun lemmaInv!626 (TokenValueInjection!6690) Unit!33299)

(assert (=> b!1748958 (= lt!674399 (lemmaInv!626 (transformation!3425 (rule!5433 (_1!10833 lt!674412)))))))

(assert (=> b!1748959 (= e!1119161 (and tp!497468 tp!497465))))

(declare-fun b!1748960 () Bool)

(declare-fun tp_is_empty!7749 () Bool)

(declare-fun tp!497475 () Bool)

(assert (=> b!1748960 (= e!1119157 (and tp_is_empty!7749 tp!497475))))

(declare-fun b!1748961 () Bool)

(assert (=> b!1748961 (= e!1119163 (not e!1119155))))

(declare-fun res!786537 () Bool)

(assert (=> b!1748961 (=> res!786537 e!1119155)))

(assert (=> b!1748961 (= res!786537 (not (matchR!2227 (regex!3425 rule!422) lt!674409)))))

(declare-fun ruleValid!924 (LexerInterface!3054 Rule!6650) Bool)

(assert (=> b!1748961 (ruleValid!924 thiss!24550 rule!422)))

(declare-fun lt!674403 () Unit!33299)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!448 (LexerInterface!3054 Rule!6650 List!19290) Unit!33299)

(assert (=> b!1748961 (= lt!674403 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!448 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1748962 () Bool)

(assert (=> b!1748962 (= e!1119164 e!1119162)))

(declare-fun res!786535 () Bool)

(assert (=> b!1748962 (=> res!786535 e!1119162)))

(declare-fun lt!674427 () Option!3875)

(declare-fun lt!674422 () List!19289)

(assert (=> b!1748962 (= res!786535 (or (not (= lt!674422 (_2!10833 lt!674412))) (not (= lt!674427 (Some!3874 (tuple2!18863 (_1!10833 lt!674412) lt!674422))))))))

(assert (=> b!1748962 (= (_2!10833 lt!674412) lt!674422)))

(declare-fun lt!674415 () Unit!33299)

(assert (=> b!1748962 (= lt!674415 (lemmaSamePrefixThenSameSuffix!796 lt!674400 (_2!10833 lt!674412) lt!674400 lt!674422 lt!674410))))

(assert (=> b!1748962 (= lt!674422 (getSuffix!846 lt!674410 lt!674400))))

(declare-fun lt!674407 () Int)

(declare-fun lt!674421 () TokenValue!3515)

(assert (=> b!1748962 (= lt!674427 (Some!3874 (tuple2!18863 (Token!6417 lt!674421 (rule!5433 (_1!10833 lt!674412)) lt!674407 lt!674400) (_2!10833 lt!674412))))))

(declare-fun maxPrefixOneRule!980 (LexerInterface!3054 Rule!6650 List!19289) Option!3875)

(assert (=> b!1748962 (= lt!674427 (maxPrefixOneRule!980 thiss!24550 (rule!5433 (_1!10833 lt!674412)) lt!674410))))

(declare-fun size!15264 (List!19289) Int)

(assert (=> b!1748962 (= lt!674407 (size!15264 lt!674400))))

(assert (=> b!1748962 (= lt!674421 (apply!5226 (transformation!3425 (rule!5433 (_1!10833 lt!674412))) (seqFromList!2395 lt!674400)))))

(declare-fun lt!674402 () Unit!33299)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!369 (LexerInterface!3054 List!19290 List!19289 List!19289 List!19289 Rule!6650) Unit!33299)

(assert (=> b!1748962 (= lt!674402 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!369 thiss!24550 rules!3447 lt!674400 lt!674410 (_2!10833 lt!674412) (rule!5433 (_1!10833 lt!674412))))))

(declare-fun b!1748963 () Bool)

(declare-fun res!786543 () Bool)

(assert (=> b!1748963 (=> res!786543 e!1119175)))

(assert (=> b!1748963 (= res!786543 (not (= lt!674417 (dynLambda!9129 (toChars!4799 (transformation!3425 (rule!5433 (_1!10833 lt!674412)))) (value!107285 (_1!10833 lt!674412))))))))

(assert (=> b!1748964 (= e!1119159 (and tp!497474 tp!497471))))

(declare-fun b!1748965 () Bool)

(assert (=> b!1748965 (= e!1119168 e!1119166)))

(declare-fun res!786534 () Bool)

(assert (=> b!1748965 (=> (not res!786534) (not e!1119166))))

(declare-fun isDefined!3218 (Option!3875) Bool)

(assert (=> b!1748965 (= res!786534 (isDefined!3218 lt!674413))))

(assert (=> b!1748965 (= lt!674413 (maxPrefix!1608 thiss!24550 rules!3447 lt!674409))))

(assert (=> b!1748965 (= lt!674409 (list!7786 lt!674411))))

(assert (=> b!1748965 (= lt!674411 (charsOf!2074 token!523))))

(declare-fun b!1748966 () Bool)

(declare-fun res!786538 () Bool)

(assert (=> b!1748966 (=> (not res!786538) (not e!1119163))))

(assert (=> b!1748966 (= res!786538 (= (rule!5433 token!523) rule!422))))

(declare-fun b!1748967 () Bool)

(declare-fun res!786549 () Bool)

(assert (=> b!1748967 (=> (not res!786549) (not e!1119168))))

(declare-fun contains!3451 (List!19290 Rule!6650) Bool)

(assert (=> b!1748967 (= res!786549 (contains!3451 rules!3447 rule!422))))

(assert (= (and start!172530 res!786536) b!1748957))

(assert (= (and b!1748957 res!786542) b!1748946))

(assert (= (and b!1748946 res!786548) b!1748967))

(assert (= (and b!1748967 res!786549) b!1748965))

(assert (= (and b!1748965 res!786534) b!1748948))

(assert (= (and b!1748948 res!786541) b!1748944))

(assert (= (and b!1748944 res!786533) b!1748966))

(assert (= (and b!1748966 res!786538) b!1748961))

(assert (= (and b!1748961 (not res!786537)) b!1748952))

(assert (= (and b!1748952 (not res!786545)) b!1748947))

(assert (= (and b!1748947 (not res!786539)) b!1748938))

(assert (= (and b!1748938 res!786550) b!1748940))

(assert (= (and b!1748940 res!786532) b!1748955))

(assert (= (and b!1748938 (not res!786544)) b!1748945))

(assert (= (and b!1748945 (not res!786540)) b!1748958))

(assert (= (and b!1748958 (not res!786547)) b!1748950))

(assert (= (and b!1748950 (not res!786551)) b!1748963))

(assert (= (and b!1748963 (not res!786543)) b!1748954))

(assert (= (and b!1748954 (not res!786552)) b!1748962))

(assert (= (and b!1748962 (not res!786535)) b!1748939))

(assert (= (and b!1748939 (not res!786546)) b!1748943))

(assert (= (and start!172530 ((_ is Cons!19219) suffix!1421)) b!1748960))

(assert (= b!1748941 b!1748956))

(assert (= start!172530 b!1748941))

(assert (= b!1748953 b!1748959))

(assert (= b!1748942 b!1748953))

(assert (= start!172530 b!1748942))

(assert (= b!1748951 b!1748964))

(assert (= b!1748949 b!1748951))

(assert (= (and start!172530 ((_ is Cons!19220) rules!3447)) b!1748949))

(declare-fun b_lambda!56179 () Bool)

(assert (=> (not b_lambda!56179) (not b!1748950)))

(declare-fun tb!104753 () Bool)

(declare-fun t!162614 () Bool)

(assert (=> (and b!1748964 (= (toChars!4799 (transformation!3425 (h!24621 rules!3447))) (toChars!4799 (transformation!3425 (rule!5433 (_1!10833 lt!674412))))) t!162614) tb!104753))

(declare-fun b!1748983 () Bool)

(declare-fun tp!497479 () Bool)

(declare-fun e!1119192 () Bool)

(declare-fun inv!24916 (Conc!6393) Bool)

(assert (=> b!1748983 (= e!1119192 (and (inv!24916 (c!285311 (dynLambda!9129 (toChars!4799 (transformation!3425 (rule!5433 (_1!10833 lt!674412)))) (dynLambda!9130 (toValue!4940 (transformation!3425 (rule!5433 (_1!10833 lt!674412)))) lt!674417)))) tp!497479))))

(declare-fun result!126004 () Bool)

(declare-fun inv!24917 (BalanceConc!12730) Bool)

(assert (=> tb!104753 (= result!126004 (and (inv!24917 (dynLambda!9129 (toChars!4799 (transformation!3425 (rule!5433 (_1!10833 lt!674412)))) (dynLambda!9130 (toValue!4940 (transformation!3425 (rule!5433 (_1!10833 lt!674412)))) lt!674417))) e!1119192))))

(assert (= tb!104753 b!1748983))

(declare-fun m!2161819 () Bool)

(assert (=> b!1748983 m!2161819))

(declare-fun m!2161821 () Bool)

(assert (=> tb!104753 m!2161821))

(assert (=> b!1748950 t!162614))

(declare-fun b_and!130519 () Bool)

(assert (= b_and!130509 (and (=> t!162614 result!126004) b_and!130519)))

(declare-fun t!162616 () Bool)

(declare-fun tb!104755 () Bool)

(assert (=> (and b!1748959 (= (toChars!4799 (transformation!3425 (rule!5433 token!523))) (toChars!4799 (transformation!3425 (rule!5433 (_1!10833 lt!674412))))) t!162616) tb!104755))

(declare-fun result!126008 () Bool)

(assert (= result!126008 result!126004))

(assert (=> b!1748950 t!162616))

(declare-fun b_and!130521 () Bool)

(assert (= b_and!130513 (and (=> t!162616 result!126008) b_and!130521)))

(declare-fun tb!104757 () Bool)

(declare-fun t!162618 () Bool)

(assert (=> (and b!1748956 (= (toChars!4799 (transformation!3425 rule!422)) (toChars!4799 (transformation!3425 (rule!5433 (_1!10833 lt!674412))))) t!162618) tb!104757))

(declare-fun result!126010 () Bool)

(assert (= result!126010 result!126004))

(assert (=> b!1748950 t!162618))

(declare-fun b_and!130523 () Bool)

(assert (= b_and!130517 (and (=> t!162618 result!126010) b_and!130523)))

(declare-fun b_lambda!56181 () Bool)

(assert (=> (not b_lambda!56181) (not b!1748950)))

(declare-fun t!162620 () Bool)

(declare-fun tb!104759 () Bool)

(assert (=> (and b!1748964 (= (toValue!4940 (transformation!3425 (h!24621 rules!3447))) (toValue!4940 (transformation!3425 (rule!5433 (_1!10833 lt!674412))))) t!162620) tb!104759))

(declare-fun result!126012 () Bool)

(assert (=> tb!104759 (= result!126012 (inv!21 (dynLambda!9130 (toValue!4940 (transformation!3425 (rule!5433 (_1!10833 lt!674412)))) lt!674417)))))

(declare-fun m!2161823 () Bool)

(assert (=> tb!104759 m!2161823))

(assert (=> b!1748950 t!162620))

(declare-fun b_and!130525 () Bool)

(assert (= b_and!130507 (and (=> t!162620 result!126012) b_and!130525)))

(declare-fun tb!104761 () Bool)

(declare-fun t!162622 () Bool)

(assert (=> (and b!1748959 (= (toValue!4940 (transformation!3425 (rule!5433 token!523))) (toValue!4940 (transformation!3425 (rule!5433 (_1!10833 lt!674412))))) t!162622) tb!104761))

(declare-fun result!126016 () Bool)

(assert (= result!126016 result!126012))

(assert (=> b!1748950 t!162622))

(declare-fun b_and!130527 () Bool)

(assert (= b_and!130511 (and (=> t!162622 result!126016) b_and!130527)))

(declare-fun t!162624 () Bool)

(declare-fun tb!104763 () Bool)

(assert (=> (and b!1748956 (= (toValue!4940 (transformation!3425 rule!422)) (toValue!4940 (transformation!3425 (rule!5433 (_1!10833 lt!674412))))) t!162624) tb!104763))

(declare-fun result!126018 () Bool)

(assert (= result!126018 result!126012))

(assert (=> b!1748950 t!162624))

(declare-fun b_and!130529 () Bool)

(assert (= b_and!130515 (and (=> t!162624 result!126018) b_and!130529)))

(declare-fun b_lambda!56183 () Bool)

(assert (=> (not b_lambda!56183) (not b!1748963)))

(declare-fun t!162626 () Bool)

(declare-fun tb!104765 () Bool)

(assert (=> (and b!1748964 (= (toChars!4799 (transformation!3425 (h!24621 rules!3447))) (toChars!4799 (transformation!3425 (rule!5433 (_1!10833 lt!674412))))) t!162626) tb!104765))

(declare-fun b!1748986 () Bool)

(declare-fun e!1119196 () Bool)

(declare-fun tp!497480 () Bool)

(assert (=> b!1748986 (= e!1119196 (and (inv!24916 (c!285311 (dynLambda!9129 (toChars!4799 (transformation!3425 (rule!5433 (_1!10833 lt!674412)))) (value!107285 (_1!10833 lt!674412))))) tp!497480))))

(declare-fun result!126020 () Bool)

(assert (=> tb!104765 (= result!126020 (and (inv!24917 (dynLambda!9129 (toChars!4799 (transformation!3425 (rule!5433 (_1!10833 lt!674412)))) (value!107285 (_1!10833 lt!674412)))) e!1119196))))

(assert (= tb!104765 b!1748986))

(declare-fun m!2161825 () Bool)

(assert (=> b!1748986 m!2161825))

(declare-fun m!2161827 () Bool)

(assert (=> tb!104765 m!2161827))

(assert (=> b!1748963 t!162626))

(declare-fun b_and!130531 () Bool)

(assert (= b_and!130519 (and (=> t!162626 result!126020) b_and!130531)))

(declare-fun t!162628 () Bool)

(declare-fun tb!104767 () Bool)

(assert (=> (and b!1748959 (= (toChars!4799 (transformation!3425 (rule!5433 token!523))) (toChars!4799 (transformation!3425 (rule!5433 (_1!10833 lt!674412))))) t!162628) tb!104767))

(declare-fun result!126022 () Bool)

(assert (= result!126022 result!126020))

(assert (=> b!1748963 t!162628))

(declare-fun b_and!130533 () Bool)

(assert (= b_and!130521 (and (=> t!162628 result!126022) b_and!130533)))

(declare-fun tb!104769 () Bool)

(declare-fun t!162630 () Bool)

(assert (=> (and b!1748956 (= (toChars!4799 (transformation!3425 rule!422)) (toChars!4799 (transformation!3425 (rule!5433 (_1!10833 lt!674412))))) t!162630) tb!104769))

(declare-fun result!126024 () Bool)

(assert (= result!126024 result!126020))

(assert (=> b!1748963 t!162630))

(declare-fun b_and!130535 () Bool)

(assert (= b_and!130523 (and (=> t!162630 result!126024) b_and!130535)))

(declare-fun m!2161829 () Bool)

(assert (=> b!1748940 m!2161829))

(assert (=> b!1748940 m!2161829))

(declare-fun m!2161831 () Bool)

(assert (=> b!1748940 m!2161831))

(assert (=> b!1748940 m!2161831))

(declare-fun m!2161833 () Bool)

(assert (=> b!1748940 m!2161833))

(declare-fun m!2161835 () Bool)

(assert (=> b!1748940 m!2161835))

(declare-fun m!2161837 () Bool)

(assert (=> b!1748953 m!2161837))

(declare-fun m!2161839 () Bool)

(assert (=> b!1748953 m!2161839))

(declare-fun m!2161841 () Bool)

(assert (=> b!1748939 m!2161841))

(declare-fun m!2161843 () Bool)

(assert (=> b!1748939 m!2161843))

(declare-fun m!2161845 () Bool)

(assert (=> b!1748939 m!2161845))

(declare-fun m!2161847 () Bool)

(assert (=> b!1748938 m!2161847))

(declare-fun m!2161849 () Bool)

(assert (=> b!1748938 m!2161849))

(declare-fun m!2161851 () Bool)

(assert (=> b!1748938 m!2161851))

(declare-fun m!2161853 () Bool)

(assert (=> b!1748938 m!2161853))

(declare-fun m!2161855 () Bool)

(assert (=> b!1748938 m!2161855))

(declare-fun m!2161857 () Bool)

(assert (=> b!1748938 m!2161857))

(assert (=> b!1748938 m!2161829))

(declare-fun m!2161859 () Bool)

(assert (=> b!1748938 m!2161859))

(declare-fun m!2161861 () Bool)

(assert (=> b!1748938 m!2161861))

(declare-fun m!2161863 () Bool)

(assert (=> b!1748938 m!2161863))

(assert (=> b!1748938 m!2161849))

(declare-fun m!2161865 () Bool)

(assert (=> b!1748938 m!2161865))

(declare-fun m!2161867 () Bool)

(assert (=> b!1748938 m!2161867))

(declare-fun m!2161869 () Bool)

(assert (=> b!1748938 m!2161869))

(declare-fun m!2161871 () Bool)

(assert (=> b!1748938 m!2161871))

(declare-fun m!2161873 () Bool)

(assert (=> b!1748938 m!2161873))

(declare-fun m!2161875 () Bool)

(assert (=> b!1748957 m!2161875))

(declare-fun m!2161877 () Bool)

(assert (=> b!1748947 m!2161877))

(declare-fun m!2161879 () Bool)

(assert (=> b!1748947 m!2161879))

(assert (=> b!1748947 m!2161879))

(declare-fun m!2161881 () Bool)

(assert (=> b!1748947 m!2161881))

(declare-fun m!2161883 () Bool)

(assert (=> b!1748947 m!2161883))

(declare-fun m!2161885 () Bool)

(assert (=> b!1748944 m!2161885))

(declare-fun m!2161887 () Bool)

(assert (=> b!1748942 m!2161887))

(declare-fun m!2161889 () Bool)

(assert (=> b!1748948 m!2161889))

(declare-fun m!2161891 () Bool)

(assert (=> b!1748950 m!2161891))

(assert (=> b!1748950 m!2161891))

(declare-fun m!2161893 () Bool)

(assert (=> b!1748950 m!2161893))

(assert (=> b!1748950 m!2161893))

(declare-fun m!2161895 () Bool)

(assert (=> b!1748950 m!2161895))

(declare-fun m!2161897 () Bool)

(assert (=> b!1748950 m!2161897))

(declare-fun m!2161899 () Bool)

(assert (=> b!1748965 m!2161899))

(declare-fun m!2161901 () Bool)

(assert (=> b!1748965 m!2161901))

(declare-fun m!2161903 () Bool)

(assert (=> b!1748965 m!2161903))

(declare-fun m!2161905 () Bool)

(assert (=> b!1748965 m!2161905))

(declare-fun m!2161907 () Bool)

(assert (=> b!1748951 m!2161907))

(declare-fun m!2161909 () Bool)

(assert (=> b!1748951 m!2161909))

(declare-fun m!2161911 () Bool)

(assert (=> start!172530 m!2161911))

(declare-fun m!2161913 () Bool)

(assert (=> b!1748945 m!2161913))

(declare-fun m!2161915 () Bool)

(assert (=> b!1748946 m!2161915))

(declare-fun m!2161917 () Bool)

(assert (=> b!1748962 m!2161917))

(declare-fun m!2161919 () Bool)

(assert (=> b!1748962 m!2161919))

(declare-fun m!2161921 () Bool)

(assert (=> b!1748962 m!2161921))

(declare-fun m!2161923 () Bool)

(assert (=> b!1748962 m!2161923))

(declare-fun m!2161925 () Bool)

(assert (=> b!1748962 m!2161925))

(declare-fun m!2161927 () Bool)

(assert (=> b!1748962 m!2161927))

(assert (=> b!1748962 m!2161923))

(declare-fun m!2161929 () Bool)

(assert (=> b!1748962 m!2161929))

(declare-fun m!2161931 () Bool)

(assert (=> b!1748961 m!2161931))

(declare-fun m!2161933 () Bool)

(assert (=> b!1748961 m!2161933))

(declare-fun m!2161935 () Bool)

(assert (=> b!1748961 m!2161935))

(declare-fun m!2161937 () Bool)

(assert (=> b!1748941 m!2161937))

(declare-fun m!2161939 () Bool)

(assert (=> b!1748941 m!2161939))

(declare-fun m!2161941 () Bool)

(assert (=> b!1748954 m!2161941))

(declare-fun m!2161943 () Bool)

(assert (=> b!1748954 m!2161943))

(declare-fun m!2161945 () Bool)

(assert (=> b!1748954 m!2161945))

(assert (=> b!1748954 m!2161943))

(declare-fun m!2161947 () Bool)

(assert (=> b!1748954 m!2161947))

(declare-fun m!2161949 () Bool)

(assert (=> b!1748954 m!2161949))

(declare-fun m!2161951 () Bool)

(assert (=> b!1748967 m!2161951))

(declare-fun m!2161953 () Bool)

(assert (=> b!1748952 m!2161953))

(declare-fun m!2161955 () Bool)

(assert (=> b!1748958 m!2161955))

(declare-fun m!2161957 () Bool)

(assert (=> b!1748958 m!2161957))

(declare-fun m!2161959 () Bool)

(assert (=> b!1748963 m!2161959))

(declare-fun m!2161961 () Bool)

(assert (=> b!1748943 m!2161961))

(declare-fun m!2161963 () Bool)

(assert (=> b!1748943 m!2161963))

(declare-fun m!2161965 () Bool)

(assert (=> b!1748943 m!2161965))

(declare-fun m!2161967 () Bool)

(assert (=> b!1748943 m!2161967))

(check-sat (not b_lambda!56183) (not b!1748983) (not b_next!48847) b_and!130531 (not b_lambda!56179) (not b!1748948) (not b!1748946) (not b!1748945) b_and!130529 b_and!130527 (not b_lambda!56181) (not b!1748967) (not b!1748947) (not tb!104753) (not b!1748942) b_and!130525 tp_is_empty!7749 (not b_next!48843) b_and!130535 (not b!1748953) (not b!1748949) (not b_next!48851) (not b_next!48845) b_and!130533 (not b!1748941) (not b!1748962) (not b!1748986) (not b!1748958) (not start!172530) (not b!1748957) (not tb!104765) (not b!1748940) (not b!1748960) (not b_next!48853) (not b!1748965) (not b!1748961) (not b!1748951) (not b_next!48849) (not b!1748952) (not b!1748950) (not b!1748943) (not tb!104759) (not b!1748938) (not b!1748944) (not b!1748939) (not b!1748954))
(check-sat (not b_next!48847) b_and!130531 (not b_next!48853) (not b_next!48849) b_and!130529 b_and!130527 b_and!130525 (not b_next!48843) b_and!130535 (not b_next!48851) (not b_next!48845) b_and!130533)
