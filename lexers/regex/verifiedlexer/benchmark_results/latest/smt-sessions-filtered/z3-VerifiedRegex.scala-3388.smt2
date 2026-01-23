; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!191828 () Bool)

(assert start!191828)

(declare-fun b!1912920 () Bool)

(declare-fun b_free!54089 () Bool)

(declare-fun b_next!54793 () Bool)

(assert (=> b!1912920 (= b_free!54089 (not b_next!54793))))

(declare-fun tp!546047 () Bool)

(declare-fun b_and!149103 () Bool)

(assert (=> b!1912920 (= tp!546047 b_and!149103)))

(declare-fun b_free!54091 () Bool)

(declare-fun b_next!54795 () Bool)

(assert (=> b!1912920 (= b_free!54091 (not b_next!54795))))

(declare-fun tp!546039 () Bool)

(declare-fun b_and!149105 () Bool)

(assert (=> b!1912920 (= tp!546039 b_and!149105)))

(declare-fun b!1912922 () Bool)

(declare-fun b_free!54093 () Bool)

(declare-fun b_next!54797 () Bool)

(assert (=> b!1912922 (= b_free!54093 (not b_next!54797))))

(declare-fun tp!546045 () Bool)

(declare-fun b_and!149107 () Bool)

(assert (=> b!1912922 (= tp!546045 b_and!149107)))

(declare-fun b_free!54095 () Bool)

(declare-fun b_next!54799 () Bool)

(assert (=> b!1912922 (= b_free!54095 (not b_next!54799))))

(declare-fun tp!546043 () Bool)

(declare-fun b_and!149109 () Bool)

(assert (=> b!1912922 (= tp!546043 b_and!149109)))

(declare-fun b!1912937 () Bool)

(declare-fun b_free!54097 () Bool)

(declare-fun b_next!54801 () Bool)

(assert (=> b!1912937 (= b_free!54097 (not b_next!54801))))

(declare-fun tp!546044 () Bool)

(declare-fun b_and!149111 () Bool)

(assert (=> b!1912937 (= tp!546044 b_and!149111)))

(declare-fun b_free!54099 () Bool)

(declare-fun b_next!54803 () Bool)

(assert (=> b!1912937 (= b_free!54099 (not b_next!54803))))

(declare-fun tp!546040 () Bool)

(declare-fun b_and!149113 () Bool)

(assert (=> b!1912937 (= tp!546040 b_and!149113)))

(declare-fun b!1912912 () Bool)

(declare-datatypes ((Unit!35965 0))(
  ( (Unit!35966) )
))
(declare-fun e!1222048 () Unit!35965)

(declare-fun Unit!35967 () Unit!35965)

(assert (=> b!1912912 (= e!1222048 Unit!35967)))

(declare-fun b!1912913 () Bool)

(declare-fun res!854531 () Bool)

(declare-fun e!1222050 () Bool)

(assert (=> b!1912913 (=> (not res!854531) (not e!1222050))))

(declare-datatypes ((LexerInterface!3465 0))(
  ( (LexerInterfaceExt!3462 (__x!13474 Int)) (Lexer!3463) )
))
(declare-fun thiss!23328 () LexerInterface!3465)

(declare-datatypes ((List!21672 0))(
  ( (Nil!21590) (Cons!21590 (h!26991 (_ BitVec 16)) (t!178241 List!21672)) )
))
(declare-datatypes ((TokenValue!3988 0))(
  ( (FloatLiteralValue!7976 (text!28361 List!21672)) (TokenValueExt!3987 (__x!13475 Int)) (Broken!19940 (value!121347 List!21672)) (Object!4069) (End!3988) (Def!3988) (Underscore!3988) (Match!3988) (Else!3988) (Error!3988) (Case!3988) (If!3988) (Extends!3988) (Abstract!3988) (Class!3988) (Val!3988) (DelimiterValue!7976 (del!4048 List!21672)) (KeywordValue!3994 (value!121348 List!21672)) (CommentValue!7976 (value!121349 List!21672)) (WhitespaceValue!7976 (value!121350 List!21672)) (IndentationValue!3988 (value!121351 List!21672)) (String!25057) (Int32!3988) (Broken!19941 (value!121352 List!21672)) (Boolean!3989) (Unit!35968) (OperatorValue!3991 (op!4048 List!21672)) (IdentifierValue!7976 (value!121353 List!21672)) (IdentifierValue!7977 (value!121354 List!21672)) (WhitespaceValue!7977 (value!121355 List!21672)) (True!7976) (False!7976) (Broken!19942 (value!121356 List!21672)) (Broken!19943 (value!121357 List!21672)) (True!7977) (RightBrace!3988) (RightBracket!3988) (Colon!3988) (Null!3988) (Comma!3988) (LeftBracket!3988) (False!7977) (LeftBrace!3988) (ImaginaryLiteralValue!3988 (text!28362 List!21672)) (StringLiteralValue!11964 (value!121358 List!21672)) (EOFValue!3988 (value!121359 List!21672)) (IdentValue!3988 (value!121360 List!21672)) (DelimiterValue!7977 (value!121361 List!21672)) (DedentValue!3988 (value!121362 List!21672)) (NewLineValue!3988 (value!121363 List!21672)) (IntegerValue!11964 (value!121364 (_ BitVec 32)) (text!28363 List!21672)) (IntegerValue!11965 (value!121365 Int) (text!28364 List!21672)) (Times!3988) (Or!3988) (Equal!3988) (Minus!3988) (Broken!19944 (value!121366 List!21672)) (And!3988) (Div!3988) (LessEqual!3988) (Mod!3988) (Concat!9265) (Not!3988) (Plus!3988) (SpaceValue!3988 (value!121367 List!21672)) (IntegerValue!11966 (value!121368 Int) (text!28365 List!21672)) (StringLiteralValue!11965 (text!28366 List!21672)) (FloatLiteralValue!7977 (text!28367 List!21672)) (BytesLiteralValue!3988 (value!121369 List!21672)) (CommentValue!7977 (value!121370 List!21672)) (StringLiteralValue!11966 (value!121371 List!21672)) (ErrorTokenValue!3988 (msg!4049 List!21672)) )
))
(declare-datatypes ((C!10700 0))(
  ( (C!10701 (val!6302 Int)) )
))
(declare-datatypes ((List!21673 0))(
  ( (Nil!21591) (Cons!21591 (h!26992 C!10700) (t!178242 List!21673)) )
))
(declare-datatypes ((IArray!14397 0))(
  ( (IArray!14398 (innerList!7256 List!21673)) )
))
(declare-datatypes ((Conc!7196 0))(
  ( (Node!7196 (left!17248 Conc!7196) (right!17578 Conc!7196) (csize!14622 Int) (cheight!7407 Int)) (Leaf!10585 (xs!10090 IArray!14397) (csize!14623 Int)) (Empty!7196) )
))
(declare-datatypes ((BalanceConc!14208 0))(
  ( (BalanceConc!14209 (c!311542 Conc!7196)) )
))
(declare-datatypes ((TokenValueInjection!7560 0))(
  ( (TokenValueInjection!7561 (toValue!5481 Int) (toChars!5340 Int)) )
))
(declare-datatypes ((Regex!5277 0))(
  ( (ElementMatch!5277 (c!311543 C!10700)) (Concat!9266 (regOne!11066 Regex!5277) (regTwo!11066 Regex!5277)) (EmptyExpr!5277) (Star!5277 (reg!5606 Regex!5277)) (EmptyLang!5277) (Union!5277 (regOne!11067 Regex!5277) (regTwo!11067 Regex!5277)) )
))
(declare-datatypes ((String!25058 0))(
  ( (String!25059 (value!121372 String)) )
))
(declare-datatypes ((Rule!7504 0))(
  ( (Rule!7505 (regex!3852 Regex!5277) (tag!4288 String!25058) (isSeparator!3852 Bool) (transformation!3852 TokenValueInjection!7560)) )
))
(declare-datatypes ((List!21674 0))(
  ( (Nil!21592) (Cons!21592 (h!26993 Rule!7504) (t!178243 List!21674)) )
))
(declare-fun rules!3198 () List!21674)

(declare-fun rulesInvariant!3072 (LexerInterface!3465 List!21674) Bool)

(assert (=> b!1912913 (= res!854531 (rulesInvariant!3072 thiss!23328 rules!3198))))

(declare-fun b!1912914 () Bool)

(declare-fun res!854510 () Bool)

(declare-fun e!1222049 () Bool)

(assert (=> b!1912914 (=> res!854510 e!1222049)))

(declare-fun lt!732331 () List!21673)

(declare-fun lt!732354 () C!10700)

(declare-fun contains!3908 (List!21673 C!10700) Bool)

(assert (=> b!1912914 (= res!854510 (not (contains!3908 lt!732331 lt!732354)))))

(declare-fun b!1912915 () Bool)

(declare-fun res!854526 () Bool)

(declare-fun e!1222051 () Bool)

(assert (=> b!1912915 (=> res!854526 e!1222051)))

(declare-fun lt!732351 () List!21673)

(declare-datatypes ((Token!7256 0))(
  ( (Token!7257 (value!121373 TokenValue!3988) (rule!6051 Rule!7504) (size!16986 Int) (originalCharacters!4659 List!21673)) )
))
(declare-datatypes ((List!21675 0))(
  ( (Nil!21593) (Cons!21593 (h!26994 Token!7256) (t!178244 List!21675)) )
))
(declare-datatypes ((IArray!14399 0))(
  ( (IArray!14400 (innerList!7257 List!21675)) )
))
(declare-datatypes ((Conc!7197 0))(
  ( (Node!7197 (left!17249 Conc!7197) (right!17579 Conc!7197) (csize!14624 Int) (cheight!7408 Int)) (Leaf!10586 (xs!10091 IArray!14399) (csize!14625 Int)) (Empty!7197) )
))
(declare-datatypes ((BalanceConc!14210 0))(
  ( (BalanceConc!14211 (c!311544 Conc!7197)) )
))
(declare-fun isEmpty!13269 (BalanceConc!14210) Bool)

(declare-datatypes ((tuple2!20318 0))(
  ( (tuple2!20319 (_1!11628 BalanceConc!14210) (_2!11628 BalanceConc!14208)) )
))
(declare-fun lex!1540 (LexerInterface!3465 List!21674 BalanceConc!14208) tuple2!20318)

(declare-fun seqFromList!2724 (List!21673) BalanceConc!14208)

(assert (=> b!1912915 (= res!854526 (isEmpty!13269 (_1!11628 (lex!1540 thiss!23328 rules!3198 (seqFromList!2724 lt!732351)))))))

(declare-fun e!1222043 () Bool)

(declare-fun e!1222060 () Bool)

(declare-fun tp!546050 () Bool)

(declare-fun b!1912916 () Bool)

(declare-fun tokens!598 () List!21675)

(declare-fun inv!28689 (String!25058) Bool)

(declare-fun inv!28692 (TokenValueInjection!7560) Bool)

(assert (=> b!1912916 (= e!1222043 (and tp!546050 (inv!28689 (tag!4288 (rule!6051 (h!26994 tokens!598)))) (inv!28692 (transformation!3852 (rule!6051 (h!26994 tokens!598)))) e!1222060))))

(declare-fun separatorToken!354 () Token!7256)

(declare-fun b!1912917 () Bool)

(declare-fun tp!546038 () Bool)

(declare-fun e!1222044 () Bool)

(declare-fun e!1222038 () Bool)

(assert (=> b!1912917 (= e!1222038 (and tp!546038 (inv!28689 (tag!4288 (rule!6051 separatorToken!354))) (inv!28692 (transformation!3852 (rule!6051 separatorToken!354))) e!1222044))))

(declare-fun b!1912918 () Bool)

(declare-fun res!854513 () Bool)

(declare-fun e!1222052 () Bool)

(assert (=> b!1912918 (=> res!854513 e!1222052)))

(declare-fun lt!732342 () List!21673)

(declare-fun isEmpty!13270 (List!21673) Bool)

(assert (=> b!1912918 (= res!854513 (isEmpty!13270 lt!732342))))

(declare-fun tp!546048 () Bool)

(declare-fun b!1912919 () Bool)

(declare-fun e!1222039 () Bool)

(declare-fun inv!21 (TokenValue!3988) Bool)

(assert (=> b!1912919 (= e!1222039 (and (inv!21 (value!121373 (h!26994 tokens!598))) e!1222043 tp!546048))))

(declare-fun e!1222053 () Bool)

(assert (=> b!1912920 (= e!1222053 (and tp!546047 tp!546039))))

(declare-fun b!1912921 () Bool)

(declare-fun res!854525 () Bool)

(assert (=> b!1912921 (=> (not res!854525) (not e!1222050))))

(declare-fun rulesProduceEachTokenIndividuallyList!1196 (LexerInterface!3465 List!21674 List!21675) Bool)

(assert (=> b!1912921 (= res!854525 (rulesProduceEachTokenIndividuallyList!1196 thiss!23328 rules!3198 tokens!598))))

(assert (=> b!1912922 (= e!1222060 (and tp!546045 tp!546043))))

(declare-fun b!1912923 () Bool)

(declare-fun e!1222057 () Bool)

(declare-fun tp!546042 () Bool)

(assert (=> b!1912923 (= e!1222057 (and (inv!21 (value!121373 separatorToken!354)) e!1222038 tp!546042))))

(declare-fun b!1912924 () Bool)

(declare-fun e!1222036 () Bool)

(assert (=> b!1912924 (= e!1222049 e!1222036)))

(declare-fun res!854529 () Bool)

(assert (=> b!1912924 (=> res!854529 e!1222036)))

(declare-fun isEmpty!13271 (List!21675) Bool)

(assert (=> b!1912924 (= res!854529 (isEmpty!13271 tokens!598))))

(declare-fun lt!732360 () List!21673)

(declare-datatypes ((tuple2!20320 0))(
  ( (tuple2!20321 (_1!11629 Token!7256) (_2!11629 List!21673)) )
))
(declare-datatypes ((Option!4409 0))(
  ( (None!4408) (Some!4408 (v!26465 tuple2!20320)) )
))
(declare-fun maxPrefix!1911 (LexerInterface!3465 List!21674 List!21673) Option!4409)

(assert (=> b!1912924 (= (maxPrefix!1911 thiss!23328 rules!3198 lt!732360) (Some!4408 (tuple2!20321 (h!26994 tokens!598) lt!732342)))))

(declare-fun lt!732343 () Unit!35965)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!88 (LexerInterface!3465 List!21674 Token!7256 Rule!7504 List!21673 Rule!7504) Unit!35965)

(assert (=> b!1912924 (= lt!732343 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!88 thiss!23328 rules!3198 (h!26994 tokens!598) (rule!6051 (h!26994 tokens!598)) lt!732342 (rule!6051 separatorToken!354)))))

(declare-fun b!1912925 () Bool)

(declare-fun res!854511 () Bool)

(assert (=> b!1912925 (=> res!854511 e!1222051)))

(declare-fun lt!732345 () tuple2!20320)

(assert (=> b!1912925 (= res!854511 (not (isEmpty!13270 (_2!11629 lt!732345))))))

(declare-fun b!1912926 () Bool)

(declare-fun res!854514 () Bool)

(assert (=> b!1912926 (=> (not res!854514) (not e!1222050))))

(declare-fun lambda!74687 () Int)

(declare-fun forall!4544 (List!21675 Int) Bool)

(assert (=> b!1912926 (= res!854514 (forall!4544 tokens!598 lambda!74687))))

(declare-fun b!1912927 () Bool)

(assert (=> b!1912927 (= e!1222051 e!1222052)))

(declare-fun res!854521 () Bool)

(assert (=> b!1912927 (=> res!854521 e!1222052)))

(declare-fun matchR!2563 (Regex!5277 List!21673) Bool)

(assert (=> b!1912927 (= res!854521 (not (matchR!2563 (regex!3852 (rule!6051 (h!26994 tokens!598))) lt!732351)))))

(declare-fun ruleValid!1171 (LexerInterface!3465 Rule!7504) Bool)

(assert (=> b!1912927 (ruleValid!1171 thiss!23328 (rule!6051 (h!26994 tokens!598)))))

(declare-fun lt!732353 () Unit!35965)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!668 (LexerInterface!3465 Rule!7504 List!21674) Unit!35965)

(assert (=> b!1912927 (= lt!732353 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!668 thiss!23328 (rule!6051 (h!26994 tokens!598)) rules!3198))))

(declare-fun b!1912928 () Bool)

(assert (=> b!1912928 (= e!1222036 true)))

(declare-fun lt!732337 () List!21673)

(declare-fun printWithSeparatorTokenWhenNeededList!508 (LexerInterface!3465 List!21674 List!21675 Token!7256) List!21673)

(assert (=> b!1912928 (= lt!732337 (printWithSeparatorTokenWhenNeededList!508 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun tp!546046 () Bool)

(declare-fun e!1222054 () Bool)

(declare-fun b!1912929 () Bool)

(assert (=> b!1912929 (= e!1222054 (and tp!546046 (inv!28689 (tag!4288 (h!26993 rules!3198))) (inv!28692 (transformation!3852 (h!26993 rules!3198))) e!1222053))))

(declare-fun b!1912930 () Bool)

(declare-fun e!1222046 () Bool)

(declare-fun lt!732347 () Rule!7504)

(assert (=> b!1912930 (= e!1222046 (= (rule!6051 (h!26994 tokens!598)) lt!732347))))

(declare-fun b!1912931 () Bool)

(declare-fun e!1222040 () Bool)

(declare-fun tp!546049 () Bool)

(assert (=> b!1912931 (= e!1222040 (and e!1222054 tp!546049))))

(declare-fun tp!546041 () Bool)

(declare-fun e!1222037 () Bool)

(declare-fun b!1912932 () Bool)

(declare-fun inv!28693 (Token!7256) Bool)

(assert (=> b!1912932 (= e!1222037 (and (inv!28693 (h!26994 tokens!598)) e!1222039 tp!546041))))

(declare-fun res!854507 () Bool)

(assert (=> start!191828 (=> (not res!854507) (not e!1222050))))

(get-info :version)

(assert (=> start!191828 (= res!854507 ((_ is Lexer!3463) thiss!23328))))

(assert (=> start!191828 e!1222050))

(assert (=> start!191828 true))

(assert (=> start!191828 e!1222040))

(assert (=> start!191828 e!1222037))

(assert (=> start!191828 (and (inv!28693 separatorToken!354) e!1222057)))

(declare-fun b!1912933 () Bool)

(declare-fun e!1222034 () Bool)

(assert (=> b!1912933 (= e!1222050 (not e!1222034))))

(declare-fun res!854509 () Bool)

(assert (=> b!1912933 (=> res!854509 e!1222034)))

(declare-fun lt!732358 () Option!4409)

(declare-fun lt!732355 () Bool)

(assert (=> b!1912933 (= res!854509 (or (and (not lt!732355) (= (_1!11629 (v!26465 lt!732358)) (h!26994 tokens!598))) lt!732355 (= (_1!11629 (v!26465 lt!732358)) (h!26994 tokens!598))))))

(assert (=> b!1912933 (= lt!732355 (not ((_ is Some!4408) lt!732358)))))

(declare-fun lt!732333 () List!21673)

(declare-fun ++!5803 (List!21673 List!21673) List!21673)

(assert (=> b!1912933 (= lt!732358 (maxPrefix!1911 thiss!23328 rules!3198 (++!5803 lt!732351 lt!732333)))))

(assert (=> b!1912933 (= lt!732333 (printWithSeparatorTokenWhenNeededList!508 thiss!23328 rules!3198 (t!178244 tokens!598) separatorToken!354))))

(declare-fun e!1222059 () Bool)

(assert (=> b!1912933 e!1222059))

(declare-fun res!854519 () Bool)

(assert (=> b!1912933 (=> (not res!854519) (not e!1222059))))

(declare-datatypes ((Option!4410 0))(
  ( (None!4409) (Some!4409 (v!26466 Rule!7504)) )
))
(declare-fun lt!732363 () Option!4410)

(declare-fun isDefined!3707 (Option!4410) Bool)

(assert (=> b!1912933 (= res!854519 (isDefined!3707 lt!732363))))

(declare-fun getRuleFromTag!695 (LexerInterface!3465 List!21674 String!25058) Option!4410)

(assert (=> b!1912933 (= lt!732363 (getRuleFromTag!695 thiss!23328 rules!3198 (tag!4288 (rule!6051 (h!26994 tokens!598)))))))

(declare-fun lt!732348 () Unit!35965)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!695 (LexerInterface!3465 List!21674 List!21673 Token!7256) Unit!35965)

(assert (=> b!1912933 (= lt!732348 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!695 thiss!23328 rules!3198 lt!732351 (h!26994 tokens!598)))))

(assert (=> b!1912933 (= (_1!11629 lt!732345) (h!26994 tokens!598))))

(declare-fun lt!732341 () Option!4409)

(declare-fun get!6742 (Option!4409) tuple2!20320)

(assert (=> b!1912933 (= lt!732345 (get!6742 lt!732341))))

(declare-fun isDefined!3708 (Option!4409) Bool)

(assert (=> b!1912933 (isDefined!3708 lt!732341)))

(assert (=> b!1912933 (= lt!732341 (maxPrefix!1911 thiss!23328 rules!3198 lt!732351))))

(declare-fun lt!732364 () BalanceConc!14208)

(declare-fun list!8776 (BalanceConc!14208) List!21673)

(assert (=> b!1912933 (= lt!732351 (list!8776 lt!732364))))

(declare-fun e!1222041 () Bool)

(assert (=> b!1912933 e!1222041))

(declare-fun res!854532 () Bool)

(assert (=> b!1912933 (=> (not res!854532) (not e!1222041))))

(declare-fun lt!732352 () Option!4410)

(assert (=> b!1912933 (= res!854532 (isDefined!3707 lt!732352))))

(assert (=> b!1912933 (= lt!732352 (getRuleFromTag!695 thiss!23328 rules!3198 (tag!4288 (rule!6051 separatorToken!354))))))

(declare-fun lt!732340 () List!21673)

(declare-fun lt!732336 () Unit!35965)

(assert (=> b!1912933 (= lt!732336 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!695 thiss!23328 rules!3198 lt!732340 separatorToken!354))))

(declare-fun charsOf!2408 (Token!7256) BalanceConc!14208)

(assert (=> b!1912933 (= lt!732340 (list!8776 (charsOf!2408 separatorToken!354)))))

(declare-fun lt!732344 () Unit!35965)

(declare-fun lemmaEqSameImage!560 (TokenValueInjection!7560 BalanceConc!14208 BalanceConc!14208) Unit!35965)

(assert (=> b!1912933 (= lt!732344 (lemmaEqSameImage!560 (transformation!3852 (rule!6051 (h!26994 tokens!598))) lt!732364 (seqFromList!2724 (originalCharacters!4659 (h!26994 tokens!598)))))))

(declare-fun lt!732332 () Unit!35965)

(declare-fun lemmaSemiInverse!831 (TokenValueInjection!7560 BalanceConc!14208) Unit!35965)

(assert (=> b!1912933 (= lt!732332 (lemmaSemiInverse!831 (transformation!3852 (rule!6051 (h!26994 tokens!598))) lt!732364))))

(assert (=> b!1912933 (= lt!732364 (charsOf!2408 (h!26994 tokens!598)))))

(declare-fun b!1912934 () Bool)

(declare-fun res!854508 () Bool)

(assert (=> b!1912934 (=> (not res!854508) (not e!1222050))))

(assert (=> b!1912934 (= res!854508 ((_ is Cons!21593) tokens!598))))

(declare-fun b!1912935 () Bool)

(declare-fun res!854516 () Bool)

(assert (=> b!1912935 (=> (not res!854516) (not e!1222050))))

(assert (=> b!1912935 (= res!854516 (isSeparator!3852 (rule!6051 separatorToken!354)))))

(declare-fun b!1912936 () Bool)

(assert (=> b!1912936 (= e!1222034 e!1222051)))

(declare-fun res!854515 () Bool)

(assert (=> b!1912936 (=> res!854515 e!1222051)))

(declare-fun lt!732349 () List!21673)

(declare-fun lt!732339 () List!21673)

(assert (=> b!1912936 (= res!854515 (or (not (= lt!732339 lt!732349)) (not (= lt!732349 lt!732351)) (not (= lt!732339 lt!732351))))))

(declare-fun printList!1048 (LexerInterface!3465 List!21675) List!21673)

(assert (=> b!1912936 (= lt!732349 (printList!1048 thiss!23328 (Cons!21593 (h!26994 tokens!598) Nil!21593)))))

(declare-fun lt!732362 () BalanceConc!14208)

(assert (=> b!1912936 (= lt!732339 (list!8776 lt!732362))))

(declare-fun lt!732350 () BalanceConc!14210)

(declare-fun printTailRec!982 (LexerInterface!3465 BalanceConc!14210 Int BalanceConc!14208) BalanceConc!14208)

(assert (=> b!1912936 (= lt!732362 (printTailRec!982 thiss!23328 lt!732350 0 (BalanceConc!14209 Empty!7196)))))

(declare-fun print!1475 (LexerInterface!3465 BalanceConc!14210) BalanceConc!14208)

(assert (=> b!1912936 (= lt!732362 (print!1475 thiss!23328 lt!732350))))

(declare-fun singletonSeq!1875 (Token!7256) BalanceConc!14210)

(assert (=> b!1912936 (= lt!732350 (singletonSeq!1875 (h!26994 tokens!598)))))

(declare-fun lt!732338 () List!21673)

(declare-fun lt!732359 () C!10700)

(assert (=> b!1912936 (not (contains!3908 lt!732338 lt!732359))))

(declare-fun usedCharacters!360 (Regex!5277) List!21673)

(assert (=> b!1912936 (= lt!732338 (usedCharacters!360 (regex!3852 (rule!6051 (h!26994 tokens!598)))))))

(declare-fun lt!732334 () Unit!35965)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!56 (LexerInterface!3465 List!21674 List!21674 Rule!7504 Rule!7504 C!10700) Unit!35965)

(assert (=> b!1912936 (= lt!732334 (lemmaNonSepRuleNotContainsCharContainedInASepRule!56 thiss!23328 rules!3198 rules!3198 (rule!6051 (h!26994 tokens!598)) (rule!6051 separatorToken!354) lt!732359))))

(declare-fun lt!732346 () Unit!35965)

(assert (=> b!1912936 (= lt!732346 e!1222048)))

(declare-fun c!311541 () Bool)

(assert (=> b!1912936 (= c!311541 (not (contains!3908 lt!732331 lt!732359)))))

(declare-fun head!4458 (List!21673) C!10700)

(assert (=> b!1912936 (= lt!732359 (head!4458 lt!732340))))

(assert (=> b!1912936 (= lt!732331 (usedCharacters!360 (regex!3852 (rule!6051 separatorToken!354))))))

(declare-fun lt!732356 () List!21673)

(assert (=> b!1912936 (= lt!732356 lt!732360)))

(assert (=> b!1912936 (= lt!732360 (++!5803 lt!732351 lt!732342))))

(declare-fun lt!732361 () List!21673)

(assert (=> b!1912936 (= lt!732356 (++!5803 lt!732361 lt!732333))))

(assert (=> b!1912936 (= lt!732342 (++!5803 lt!732340 lt!732333))))

(assert (=> b!1912936 (= lt!732361 (++!5803 lt!732351 lt!732340))))

(declare-fun lt!732335 () Unit!35965)

(declare-fun lemmaConcatAssociativity!1167 (List!21673 List!21673 List!21673) Unit!35965)

(assert (=> b!1912936 (= lt!732335 (lemmaConcatAssociativity!1167 lt!732351 lt!732340 lt!732333))))

(assert (=> b!1912937 (= e!1222044 (and tp!546044 tp!546040))))

(declare-fun b!1912938 () Bool)

(declare-fun res!854517 () Bool)

(assert (=> b!1912938 (=> res!854517 e!1222051)))

(declare-fun rulesProduceIndividualToken!1637 (LexerInterface!3465 List!21674 Token!7256) Bool)

(assert (=> b!1912938 (= res!854517 (not (rulesProduceIndividualToken!1637 thiss!23328 rules!3198 (h!26994 tokens!598))))))

(declare-fun b!1912939 () Bool)

(declare-fun res!854512 () Bool)

(assert (=> b!1912939 (=> res!854512 e!1222051)))

(declare-fun contains!3909 (List!21674 Rule!7504) Bool)

(assert (=> b!1912939 (= res!854512 (not (contains!3909 rules!3198 (rule!6051 (h!26994 tokens!598)))))))

(declare-fun b!1912940 () Bool)

(declare-fun e!1222056 () Bool)

(assert (=> b!1912940 (= e!1222041 e!1222056)))

(declare-fun res!854506 () Bool)

(assert (=> b!1912940 (=> (not res!854506) (not e!1222056))))

(declare-fun lt!732357 () Rule!7504)

(assert (=> b!1912940 (= res!854506 (matchR!2563 (regex!3852 lt!732357) lt!732340))))

(declare-fun get!6743 (Option!4410) Rule!7504)

(assert (=> b!1912940 (= lt!732357 (get!6743 lt!732352))))

(declare-fun b!1912941 () Bool)

(declare-fun Unit!35969 () Unit!35965)

(assert (=> b!1912941 (= e!1222048 Unit!35969)))

(declare-fun lt!732330 () Unit!35965)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!260 (Regex!5277 List!21673 C!10700) Unit!35965)

(assert (=> b!1912941 (= lt!732330 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!260 (regex!3852 (rule!6051 separatorToken!354)) lt!732340 lt!732359))))

(declare-fun res!854528 () Bool)

(assert (=> b!1912941 (= res!854528 (not (matchR!2563 (regex!3852 (rule!6051 separatorToken!354)) lt!732340)))))

(declare-fun e!1222035 () Bool)

(assert (=> b!1912941 (=> (not res!854528) (not e!1222035))))

(assert (=> b!1912941 e!1222035))

(declare-fun b!1912942 () Bool)

(declare-fun res!854530 () Bool)

(assert (=> b!1912942 (=> (not res!854530) (not e!1222050))))

(declare-fun isEmpty!13272 (List!21674) Bool)

(assert (=> b!1912942 (= res!854530 (not (isEmpty!13272 rules!3198)))))

(declare-fun b!1912943 () Bool)

(assert (=> b!1912943 (= e!1222035 false)))

(declare-fun b!1912944 () Bool)

(assert (=> b!1912944 (= e!1222059 e!1222046)))

(declare-fun res!854523 () Bool)

(assert (=> b!1912944 (=> (not res!854523) (not e!1222046))))

(assert (=> b!1912944 (= res!854523 (matchR!2563 (regex!3852 lt!732347) lt!732351))))

(assert (=> b!1912944 (= lt!732347 (get!6743 lt!732363))))

(declare-fun b!1912945 () Bool)

(declare-fun res!854518 () Bool)

(assert (=> b!1912945 (=> (not res!854518) (not e!1222050))))

(assert (=> b!1912945 (= res!854518 (rulesProduceIndividualToken!1637 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1912946 () Bool)

(declare-fun res!854524 () Bool)

(assert (=> b!1912946 (=> res!854524 e!1222051)))

(assert (=> b!1912946 (= res!854524 (not (contains!3909 rules!3198 (rule!6051 separatorToken!354))))))

(declare-fun b!1912947 () Bool)

(assert (=> b!1912947 (= e!1222052 e!1222049)))

(declare-fun res!854522 () Bool)

(assert (=> b!1912947 (=> res!854522 e!1222049)))

(assert (=> b!1912947 (= res!854522 (contains!3908 lt!732338 lt!732354))))

(assert (=> b!1912947 (= lt!732354 (head!4458 lt!732342))))

(declare-fun b!1912948 () Bool)

(declare-fun res!854520 () Bool)

(assert (=> b!1912948 (=> (not res!854520) (not e!1222050))))

(declare-fun sepAndNonSepRulesDisjointChars!950 (List!21674 List!21674) Bool)

(assert (=> b!1912948 (= res!854520 (sepAndNonSepRulesDisjointChars!950 rules!3198 rules!3198))))

(declare-fun b!1912949 () Bool)

(declare-fun res!854527 () Bool)

(assert (=> b!1912949 (=> res!854527 e!1222051)))

(assert (=> b!1912949 (= res!854527 (isSeparator!3852 (rule!6051 (h!26994 tokens!598))))))

(declare-fun b!1912950 () Bool)

(assert (=> b!1912950 (= e!1222056 (= (rule!6051 separatorToken!354) lt!732357))))

(assert (= (and start!191828 res!854507) b!1912942))

(assert (= (and b!1912942 res!854530) b!1912913))

(assert (= (and b!1912913 res!854531) b!1912921))

(assert (= (and b!1912921 res!854525) b!1912945))

(assert (= (and b!1912945 res!854518) b!1912935))

(assert (= (and b!1912935 res!854516) b!1912926))

(assert (= (and b!1912926 res!854514) b!1912948))

(assert (= (and b!1912948 res!854520) b!1912934))

(assert (= (and b!1912934 res!854508) b!1912933))

(assert (= (and b!1912933 res!854532) b!1912940))

(assert (= (and b!1912940 res!854506) b!1912950))

(assert (= (and b!1912933 res!854519) b!1912944))

(assert (= (and b!1912944 res!854523) b!1912930))

(assert (= (and b!1912933 (not res!854509)) b!1912936))

(assert (= (and b!1912936 c!311541) b!1912941))

(assert (= (and b!1912936 (not c!311541)) b!1912912))

(assert (= (and b!1912941 res!854528) b!1912943))

(assert (= (and b!1912936 (not res!854515)) b!1912938))

(assert (= (and b!1912938 (not res!854517)) b!1912915))

(assert (= (and b!1912915 (not res!854526)) b!1912939))

(assert (= (and b!1912939 (not res!854512)) b!1912946))

(assert (= (and b!1912946 (not res!854524)) b!1912949))

(assert (= (and b!1912949 (not res!854527)) b!1912925))

(assert (= (and b!1912925 (not res!854511)) b!1912927))

(assert (= (and b!1912927 (not res!854521)) b!1912918))

(assert (= (and b!1912918 (not res!854513)) b!1912947))

(assert (= (and b!1912947 (not res!854522)) b!1912914))

(assert (= (and b!1912914 (not res!854510)) b!1912924))

(assert (= (and b!1912924 (not res!854529)) b!1912928))

(assert (= b!1912929 b!1912920))

(assert (= b!1912931 b!1912929))

(assert (= (and start!191828 ((_ is Cons!21592) rules!3198)) b!1912931))

(assert (= b!1912916 b!1912922))

(assert (= b!1912919 b!1912916))

(assert (= b!1912932 b!1912919))

(assert (= (and start!191828 ((_ is Cons!21593) tokens!598)) b!1912932))

(assert (= b!1912917 b!1912937))

(assert (= b!1912923 b!1912917))

(assert (= start!191828 b!1912923))

(declare-fun m!2347089 () Bool)

(assert (=> b!1912916 m!2347089))

(declare-fun m!2347091 () Bool)

(assert (=> b!1912916 m!2347091))

(declare-fun m!2347093 () Bool)

(assert (=> b!1912945 m!2347093))

(declare-fun m!2347095 () Bool)

(assert (=> b!1912923 m!2347095))

(declare-fun m!2347097 () Bool)

(assert (=> b!1912944 m!2347097))

(declare-fun m!2347099 () Bool)

(assert (=> b!1912944 m!2347099))

(declare-fun m!2347101 () Bool)

(assert (=> start!191828 m!2347101))

(declare-fun m!2347103 () Bool)

(assert (=> b!1912929 m!2347103))

(declare-fun m!2347105 () Bool)

(assert (=> b!1912929 m!2347105))

(declare-fun m!2347107 () Bool)

(assert (=> b!1912915 m!2347107))

(assert (=> b!1912915 m!2347107))

(declare-fun m!2347109 () Bool)

(assert (=> b!1912915 m!2347109))

(declare-fun m!2347111 () Bool)

(assert (=> b!1912915 m!2347111))

(declare-fun m!2347113 () Bool)

(assert (=> b!1912918 m!2347113))

(declare-fun m!2347115 () Bool)

(assert (=> b!1912947 m!2347115))

(declare-fun m!2347117 () Bool)

(assert (=> b!1912947 m!2347117))

(declare-fun m!2347119 () Bool)

(assert (=> b!1912919 m!2347119))

(declare-fun m!2347121 () Bool)

(assert (=> b!1912941 m!2347121))

(declare-fun m!2347123 () Bool)

(assert (=> b!1912941 m!2347123))

(declare-fun m!2347125 () Bool)

(assert (=> b!1912940 m!2347125))

(declare-fun m!2347127 () Bool)

(assert (=> b!1912940 m!2347127))

(declare-fun m!2347129 () Bool)

(assert (=> b!1912914 m!2347129))

(declare-fun m!2347131 () Bool)

(assert (=> b!1912925 m!2347131))

(declare-fun m!2347133 () Bool)

(assert (=> b!1912917 m!2347133))

(declare-fun m!2347135 () Bool)

(assert (=> b!1912917 m!2347135))

(declare-fun m!2347137 () Bool)

(assert (=> b!1912928 m!2347137))

(declare-fun m!2347139 () Bool)

(assert (=> b!1912924 m!2347139))

(declare-fun m!2347141 () Bool)

(assert (=> b!1912924 m!2347141))

(declare-fun m!2347143 () Bool)

(assert (=> b!1912924 m!2347143))

(declare-fun m!2347145 () Bool)

(assert (=> b!1912927 m!2347145))

(declare-fun m!2347147 () Bool)

(assert (=> b!1912927 m!2347147))

(declare-fun m!2347149 () Bool)

(assert (=> b!1912927 m!2347149))

(declare-fun m!2347151 () Bool)

(assert (=> b!1912946 m!2347151))

(declare-fun m!2347153 () Bool)

(assert (=> b!1912933 m!2347153))

(declare-fun m!2347155 () Bool)

(assert (=> b!1912933 m!2347155))

(declare-fun m!2347157 () Bool)

(assert (=> b!1912933 m!2347157))

(declare-fun m!2347159 () Bool)

(assert (=> b!1912933 m!2347159))

(declare-fun m!2347161 () Bool)

(assert (=> b!1912933 m!2347161))

(declare-fun m!2347163 () Bool)

(assert (=> b!1912933 m!2347163))

(declare-fun m!2347165 () Bool)

(assert (=> b!1912933 m!2347165))

(declare-fun m!2347167 () Bool)

(assert (=> b!1912933 m!2347167))

(declare-fun m!2347169 () Bool)

(assert (=> b!1912933 m!2347169))

(declare-fun m!2347171 () Bool)

(assert (=> b!1912933 m!2347171))

(declare-fun m!2347173 () Bool)

(assert (=> b!1912933 m!2347173))

(declare-fun m!2347175 () Bool)

(assert (=> b!1912933 m!2347175))

(assert (=> b!1912933 m!2347155))

(declare-fun m!2347177 () Bool)

(assert (=> b!1912933 m!2347177))

(declare-fun m!2347179 () Bool)

(assert (=> b!1912933 m!2347179))

(declare-fun m!2347181 () Bool)

(assert (=> b!1912933 m!2347181))

(declare-fun m!2347183 () Bool)

(assert (=> b!1912933 m!2347183))

(assert (=> b!1912933 m!2347163))

(declare-fun m!2347185 () Bool)

(assert (=> b!1912933 m!2347185))

(declare-fun m!2347187 () Bool)

(assert (=> b!1912933 m!2347187))

(assert (=> b!1912933 m!2347169))

(declare-fun m!2347189 () Bool)

(assert (=> b!1912933 m!2347189))

(declare-fun m!2347191 () Bool)

(assert (=> b!1912921 m!2347191))

(declare-fun m!2347193 () Bool)

(assert (=> b!1912913 m!2347193))

(declare-fun m!2347195 () Bool)

(assert (=> b!1912948 m!2347195))

(declare-fun m!2347197 () Bool)

(assert (=> b!1912936 m!2347197))

(declare-fun m!2347199 () Bool)

(assert (=> b!1912936 m!2347199))

(declare-fun m!2347201 () Bool)

(assert (=> b!1912936 m!2347201))

(declare-fun m!2347203 () Bool)

(assert (=> b!1912936 m!2347203))

(declare-fun m!2347205 () Bool)

(assert (=> b!1912936 m!2347205))

(declare-fun m!2347207 () Bool)

(assert (=> b!1912936 m!2347207))

(declare-fun m!2347209 () Bool)

(assert (=> b!1912936 m!2347209))

(declare-fun m!2347211 () Bool)

(assert (=> b!1912936 m!2347211))

(declare-fun m!2347213 () Bool)

(assert (=> b!1912936 m!2347213))

(declare-fun m!2347215 () Bool)

(assert (=> b!1912936 m!2347215))

(declare-fun m!2347217 () Bool)

(assert (=> b!1912936 m!2347217))

(declare-fun m!2347219 () Bool)

(assert (=> b!1912936 m!2347219))

(declare-fun m!2347221 () Bool)

(assert (=> b!1912936 m!2347221))

(declare-fun m!2347223 () Bool)

(assert (=> b!1912936 m!2347223))

(declare-fun m!2347225 () Bool)

(assert (=> b!1912936 m!2347225))

(declare-fun m!2347227 () Bool)

(assert (=> b!1912936 m!2347227))

(declare-fun m!2347229 () Bool)

(assert (=> b!1912942 m!2347229))

(declare-fun m!2347231 () Bool)

(assert (=> b!1912938 m!2347231))

(declare-fun m!2347233 () Bool)

(assert (=> b!1912932 m!2347233))

(declare-fun m!2347235 () Bool)

(assert (=> b!1912939 m!2347235))

(declare-fun m!2347237 () Bool)

(assert (=> b!1912926 m!2347237))

(check-sat (not b!1912916) (not b!1912940) (not b!1912945) (not b!1912927) (not b!1912936) (not b!1912915) (not b!1912914) (not b!1912946) (not b!1912926) (not b!1912942) (not b!1912931) b_and!149103 (not b!1912939) b_and!149107 (not b!1912932) (not b!1912924) (not b!1912913) (not b!1912929) b_and!149111 (not b!1912918) (not b_next!54801) (not b!1912948) (not b!1912947) (not b_next!54803) (not b!1912925) b_and!149105 (not b!1912923) (not b!1912944) (not b!1912917) (not b!1912933) (not b_next!54797) (not b!1912941) b_and!149113 (not b_next!54795) (not b!1912921) (not start!191828) (not b_next!54799) (not b!1912919) (not b!1912928) (not b!1912938) b_and!149109 (not b_next!54793))
(check-sat b_and!149107 (not b_next!54803) b_and!149105 (not b_next!54797) b_and!149113 (not b_next!54795) (not b_next!54799) b_and!149103 b_and!149111 (not b_next!54801) b_and!149109 (not b_next!54793))
