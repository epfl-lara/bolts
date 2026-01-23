; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!172554 () Bool)

(assert start!172554)

(declare-fun b!1750373 () Bool)

(declare-fun b_free!48283 () Bool)

(declare-fun b_next!48987 () Bool)

(assert (=> b!1750373 (= b_free!48283 (not b_next!48987))))

(declare-fun tp!497949 () Bool)

(declare-fun b_and!130867 () Bool)

(assert (=> b!1750373 (= tp!497949 b_and!130867)))

(declare-fun b_free!48285 () Bool)

(declare-fun b_next!48989 () Bool)

(assert (=> b!1750373 (= b_free!48285 (not b_next!48989))))

(declare-fun tp!497956 () Bool)

(declare-fun b_and!130869 () Bool)

(assert (=> b!1750373 (= tp!497956 b_and!130869)))

(declare-fun b!1750343 () Bool)

(declare-fun b_free!48287 () Bool)

(declare-fun b_next!48991 () Bool)

(assert (=> b!1750343 (= b_free!48287 (not b_next!48991))))

(declare-fun tp!497946 () Bool)

(declare-fun b_and!130871 () Bool)

(assert (=> b!1750343 (= tp!497946 b_and!130871)))

(declare-fun b_free!48289 () Bool)

(declare-fun b_next!48993 () Bool)

(assert (=> b!1750343 (= b_free!48289 (not b_next!48993))))

(declare-fun tp!497951 () Bool)

(declare-fun b_and!130873 () Bool)

(assert (=> b!1750343 (= tp!497951 b_and!130873)))

(declare-fun b!1750352 () Bool)

(declare-fun b_free!48291 () Bool)

(declare-fun b_next!48995 () Bool)

(assert (=> b!1750352 (= b_free!48291 (not b_next!48995))))

(declare-fun tp!497955 () Bool)

(declare-fun b_and!130875 () Bool)

(assert (=> b!1750352 (= tp!497955 b_and!130875)))

(declare-fun b_free!48293 () Bool)

(declare-fun b_next!48997 () Bool)

(assert (=> b!1750352 (= b_free!48293 (not b_next!48997))))

(declare-fun tp!497954 () Bool)

(declare-fun b_and!130877 () Bool)

(assert (=> b!1750352 (= tp!497954 b_and!130877)))

(declare-fun b!1750388 () Bool)

(declare-fun e!1120377 () Bool)

(assert (=> b!1750388 (= e!1120377 true)))

(declare-fun b!1750387 () Bool)

(declare-fun e!1120376 () Bool)

(assert (=> b!1750387 (= e!1120376 e!1120377)))

(declare-fun b!1750386 () Bool)

(declare-fun e!1120375 () Bool)

(assert (=> b!1750386 (= e!1120375 e!1120376)))

(declare-fun b!1750351 () Bool)

(assert (=> b!1750351 e!1120375))

(assert (= b!1750387 b!1750388))

(assert (= b!1750386 b!1750387))

(assert (= b!1750351 b!1750386))

(declare-fun order!12109 () Int)

(declare-datatypes ((List!19324 0))(
  ( (Nil!19254) (Cons!19254 (h!24655 (_ BitVec 16)) (t!162883 List!19324)) )
))
(declare-datatypes ((TokenValue!3527 0))(
  ( (FloatLiteralValue!7054 (text!25134 List!19324)) (TokenValueExt!3526 (__x!12356 Int)) (Broken!17635 (value!107601 List!19324)) (Object!3596) (End!3527) (Def!3527) (Underscore!3527) (Match!3527) (Else!3527) (Error!3527) (Case!3527) (If!3527) (Extends!3527) (Abstract!3527) (Class!3527) (Val!3527) (DelimiterValue!7054 (del!3587 List!19324)) (KeywordValue!3533 (value!107602 List!19324)) (CommentValue!7054 (value!107603 List!19324)) (WhitespaceValue!7054 (value!107604 List!19324)) (IndentationValue!3527 (value!107605 List!19324)) (String!21966) (Int32!3527) (Broken!17636 (value!107606 List!19324)) (Boolean!3528) (Unit!33358) (OperatorValue!3530 (op!3587 List!19324)) (IdentifierValue!7054 (value!107607 List!19324)) (IdentifierValue!7055 (value!107608 List!19324)) (WhitespaceValue!7055 (value!107609 List!19324)) (True!7054) (False!7054) (Broken!17637 (value!107610 List!19324)) (Broken!17638 (value!107611 List!19324)) (True!7055) (RightBrace!3527) (RightBracket!3527) (Colon!3527) (Null!3527) (Comma!3527) (LeftBracket!3527) (False!7055) (LeftBrace!3527) (ImaginaryLiteralValue!3527 (text!25135 List!19324)) (StringLiteralValue!10581 (value!107612 List!19324)) (EOFValue!3527 (value!107613 List!19324)) (IdentValue!3527 (value!107614 List!19324)) (DelimiterValue!7055 (value!107615 List!19324)) (DedentValue!3527 (value!107616 List!19324)) (NewLineValue!3527 (value!107617 List!19324)) (IntegerValue!10581 (value!107618 (_ BitVec 32)) (text!25136 List!19324)) (IntegerValue!10582 (value!107619 Int) (text!25137 List!19324)) (Times!3527) (Or!3527) (Equal!3527) (Minus!3527) (Broken!17639 (value!107620 List!19324)) (And!3527) (Div!3527) (LessEqual!3527) (Mod!3527) (Concat!8292) (Not!3527) (Plus!3527) (SpaceValue!3527 (value!107621 List!19324)) (IntegerValue!10583 (value!107622 Int) (text!25138 List!19324)) (StringLiteralValue!10582 (text!25139 List!19324)) (FloatLiteralValue!7055 (text!25140 List!19324)) (BytesLiteralValue!3527 (value!107623 List!19324)) (CommentValue!7055 (value!107624 List!19324)) (StringLiteralValue!10583 (value!107625 List!19324)) (ErrorTokenValue!3527 (msg!3588 List!19324)) )
))
(declare-datatypes ((C!9704 0))(
  ( (C!9705 (val!5448 Int)) )
))
(declare-datatypes ((List!19325 0))(
  ( (Nil!19255) (Cons!19255 (h!24656 C!9704) (t!162884 List!19325)) )
))
(declare-datatypes ((Regex!4765 0))(
  ( (ElementMatch!4765 (c!285388 C!9704)) (Concat!8293 (regOne!10042 Regex!4765) (regTwo!10042 Regex!4765)) (EmptyExpr!4765) (Star!4765 (reg!5094 Regex!4765)) (EmptyLang!4765) (Union!4765 (regOne!10043 Regex!4765) (regTwo!10043 Regex!4765)) )
))
(declare-datatypes ((String!21967 0))(
  ( (String!21968 (value!107626 String)) )
))
(declare-datatypes ((IArray!12815 0))(
  ( (IArray!12816 (innerList!6465 List!19325)) )
))
(declare-datatypes ((Conc!6405 0))(
  ( (Node!6405 (left!15409 Conc!6405) (right!15739 Conc!6405) (csize!13040 Int) (cheight!6616 Int)) (Leaf!9344 (xs!9281 IArray!12815) (csize!13041 Int)) (Empty!6405) )
))
(declare-datatypes ((BalanceConc!12754 0))(
  ( (BalanceConc!12755 (c!285389 Conc!6405)) )
))
(declare-datatypes ((TokenValueInjection!6714 0))(
  ( (TokenValueInjection!6715 (toValue!4952 Int) (toChars!4811 Int)) )
))
(declare-datatypes ((Rule!6674 0))(
  ( (Rule!6675 (regex!3437 Regex!4765) (tag!3787 String!21967) (isSeparator!3437 Bool) (transformation!3437 TokenValueInjection!6714)) )
))
(declare-datatypes ((Token!6440 0))(
  ( (Token!6441 (value!107627 TokenValue!3527) (rule!5445 Rule!6674) (size!15298 Int) (originalCharacters!4251 List!19325)) )
))
(declare-datatypes ((tuple2!18886 0))(
  ( (tuple2!18887 (_1!10845 Token!6440) (_2!10845 List!19325)) )
))
(declare-fun lt!675830 () tuple2!18886)

(declare-fun lambda!69854 () Int)

(declare-fun order!12107 () Int)

(declare-fun dynLambda!9186 (Int Int) Int)

(declare-fun dynLambda!9187 (Int Int) Int)

(assert (=> b!1750388 (< (dynLambda!9186 order!12107 (toValue!4952 (transformation!3437 (rule!5445 (_1!10845 lt!675830))))) (dynLambda!9187 order!12109 lambda!69854))))

(declare-fun order!12111 () Int)

(declare-fun dynLambda!9188 (Int Int) Int)

(assert (=> b!1750388 (< (dynLambda!9188 order!12111 (toChars!4811 (transformation!3437 (rule!5445 (_1!10845 lt!675830))))) (dynLambda!9187 order!12109 lambda!69854))))

(declare-fun e!1120365 () Bool)

(assert (=> b!1750343 (= e!1120365 (and tp!497946 tp!497951))))

(declare-fun b!1750344 () Bool)

(declare-fun res!787309 () Bool)

(declare-fun e!1120345 () Bool)

(assert (=> b!1750344 (=> res!787309 e!1120345)))

(declare-fun lt!675819 () BalanceConc!12754)

(declare-fun dynLambda!9189 (Int TokenValue!3527) BalanceConc!12754)

(assert (=> b!1750344 (= res!787309 (not (= lt!675819 (dynLambda!9189 (toChars!4811 (transformation!3437 (rule!5445 (_1!10845 lt!675830)))) (value!107627 (_1!10845 lt!675830))))))))

(declare-fun b!1750345 () Bool)

(declare-datatypes ((Unit!33359 0))(
  ( (Unit!33360) )
))
(declare-fun e!1120366 () Unit!33359)

(declare-fun Unit!33361 () Unit!33359)

(assert (=> b!1750345 (= e!1120366 Unit!33361)))

(declare-fun b!1750346 () Bool)

(declare-fun e!1120368 () Bool)

(assert (=> b!1750346 (= e!1120345 e!1120368)))

(declare-fun res!787315 () Bool)

(assert (=> b!1750346 (=> res!787315 e!1120368)))

(declare-datatypes ((Option!3898 0))(
  ( (None!3897) (Some!3897 (v!25340 tuple2!18886)) )
))
(declare-fun lt!675834 () Option!3898)

(declare-fun lt!675856 () TokenValue!3527)

(declare-fun lt!675859 () Int)

(declare-fun lt!675821 () List!19325)

(assert (=> b!1750346 (= res!787315 (not (= lt!675834 (Some!3897 (tuple2!18887 (Token!6441 lt!675856 (rule!5445 (_1!10845 lt!675830)) lt!675859 lt!675821) (_2!10845 lt!675830))))))))

(declare-fun size!15299 (BalanceConc!12754) Int)

(assert (=> b!1750346 (= lt!675859 (size!15299 lt!675819))))

(declare-fun apply!5238 (TokenValueInjection!6714 BalanceConc!12754) TokenValue!3527)

(assert (=> b!1750346 (= lt!675856 (apply!5238 (transformation!3437 (rule!5445 (_1!10845 lt!675830))) lt!675819))))

(declare-fun lt!675825 () Unit!33359)

(declare-fun lemmaCharactersSize!497 (Token!6440) Unit!33359)

(assert (=> b!1750346 (= lt!675825 (lemmaCharactersSize!497 (_1!10845 lt!675830)))))

(declare-fun lt!675829 () Unit!33359)

(declare-fun lemmaEqSameImage!350 (TokenValueInjection!6714 BalanceConc!12754 BalanceConc!12754) Unit!33359)

(declare-fun seqFromList!2407 (List!19325) BalanceConc!12754)

(assert (=> b!1750346 (= lt!675829 (lemmaEqSameImage!350 (transformation!3437 (rule!5445 (_1!10845 lt!675830))) lt!675819 (seqFromList!2407 (originalCharacters!4251 (_1!10845 lt!675830)))))))

(declare-fun b!1750347 () Bool)

(declare-fun e!1120362 () Bool)

(declare-fun e!1120347 () Bool)

(assert (=> b!1750347 (= e!1120362 e!1120347)))

(declare-fun res!787316 () Bool)

(assert (=> b!1750347 (=> res!787316 e!1120347)))

(declare-fun lt!675857 () Regex!4765)

(declare-fun lt!675824 () List!19325)

(declare-fun prefixMatch!650 (Regex!4765 List!19325) Bool)

(assert (=> b!1750347 (= res!787316 (prefixMatch!650 lt!675857 lt!675824))))

(declare-fun lt!675822 () List!19325)

(declare-fun suffix!1421 () List!19325)

(declare-fun ++!5262 (List!19325 List!19325) List!19325)

(declare-fun head!4034 (List!19325) C!9704)

(assert (=> b!1750347 (= lt!675824 (++!5262 lt!675822 (Cons!19255 (head!4034 suffix!1421) Nil!19255)))))

(declare-datatypes ((LexerInterface!3066 0))(
  ( (LexerInterfaceExt!3063 (__x!12357 Int)) (Lexer!3064) )
))
(declare-fun thiss!24550 () LexerInterface!3066)

(declare-datatypes ((List!19326 0))(
  ( (Nil!19256) (Cons!19256 (h!24657 Rule!6674) (t!162885 List!19326)) )
))
(declare-fun rules!3447 () List!19326)

(declare-fun rulesRegex!795 (LexerInterface!3066 List!19326) Regex!4765)

(assert (=> b!1750347 (= lt!675857 (rulesRegex!795 thiss!24550 rules!3447))))

(declare-fun b!1750348 () Bool)

(declare-fun e!1120343 () Bool)

(assert (=> b!1750348 (= e!1120368 e!1120343)))

(declare-fun res!787308 () Bool)

(assert (=> b!1750348 (=> res!787308 e!1120343)))

(declare-fun lt!675852 () List!19325)

(declare-fun lt!675832 () Option!3898)

(assert (=> b!1750348 (= res!787308 (or (not (= lt!675852 (_2!10845 lt!675830))) (not (= lt!675832 (Some!3897 (tuple2!18887 (_1!10845 lt!675830) lt!675852))))))))

(assert (=> b!1750348 (= (_2!10845 lt!675830) lt!675852)))

(declare-fun lt!675850 () List!19325)

(declare-fun lt!675835 () Unit!33359)

(declare-fun lemmaSamePrefixThenSameSuffix!808 (List!19325 List!19325 List!19325 List!19325 List!19325) Unit!33359)

(assert (=> b!1750348 (= lt!675835 (lemmaSamePrefixThenSameSuffix!808 lt!675821 (_2!10845 lt!675830) lt!675821 lt!675852 lt!675850))))

(declare-fun getSuffix!858 (List!19325 List!19325) List!19325)

(assert (=> b!1750348 (= lt!675852 (getSuffix!858 lt!675850 lt!675821))))

(declare-fun lt!675827 () Int)

(declare-fun lt!675826 () TokenValue!3527)

(assert (=> b!1750348 (= lt!675832 (Some!3897 (tuple2!18887 (Token!6441 lt!675826 (rule!5445 (_1!10845 lt!675830)) lt!675827 lt!675821) (_2!10845 lt!675830))))))

(declare-fun maxPrefixOneRule!992 (LexerInterface!3066 Rule!6674 List!19325) Option!3898)

(assert (=> b!1750348 (= lt!675832 (maxPrefixOneRule!992 thiss!24550 (rule!5445 (_1!10845 lt!675830)) lt!675850))))

(declare-fun size!15300 (List!19325) Int)

(assert (=> b!1750348 (= lt!675827 (size!15300 lt!675821))))

(assert (=> b!1750348 (= lt!675826 (apply!5238 (transformation!3437 (rule!5445 (_1!10845 lt!675830))) (seqFromList!2407 lt!675821)))))

(declare-fun lt!675847 () Unit!33359)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!381 (LexerInterface!3066 List!19326 List!19325 List!19325 List!19325 Rule!6674) Unit!33359)

(assert (=> b!1750348 (= lt!675847 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!381 thiss!24550 rules!3447 lt!675821 lt!675850 (_2!10845 lt!675830) (rule!5445 (_1!10845 lt!675830))))))

(declare-fun b!1750349 () Bool)

(declare-fun e!1120348 () Bool)

(assert (=> b!1750349 (= e!1120348 e!1120345)))

(declare-fun res!787320 () Bool)

(assert (=> b!1750349 (=> res!787320 e!1120345)))

(declare-fun list!7798 (BalanceConc!12754) List!19325)

(declare-fun dynLambda!9190 (Int BalanceConc!12754) TokenValue!3527)

(assert (=> b!1750349 (= res!787320 (not (= (list!7798 (dynLambda!9189 (toChars!4811 (transformation!3437 (rule!5445 (_1!10845 lt!675830)))) (dynLambda!9190 (toValue!4952 (transformation!3437 (rule!5445 (_1!10845 lt!675830)))) lt!675819))) lt!675821)))))

(declare-fun lt!675855 () Unit!33359)

(declare-fun lemmaSemiInverse!577 (TokenValueInjection!6714 BalanceConc!12754) Unit!33359)

(assert (=> b!1750349 (= lt!675855 (lemmaSemiInverse!577 (transformation!3437 (rule!5445 (_1!10845 lt!675830))) lt!675819))))

(declare-fun b!1750350 () Bool)

(declare-fun Unit!33362 () Unit!33359)

(assert (=> b!1750350 (= e!1120366 Unit!33362)))

(declare-fun lt!675862 () Unit!33359)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!168 (LexerInterface!3066 List!19326 List!19325 Token!6440 Rule!6674 List!19325) Unit!33359)

(assert (=> b!1750350 (= lt!675862 (lemmaMaxPrefixThenMatchesRulesRegex!168 thiss!24550 rules!3447 lt!675850 (_1!10845 lt!675830) (rule!5445 (_1!10845 lt!675830)) (_2!10845 lt!675830)))))

(declare-fun matchR!2239 (Regex!4765 List!19325) Bool)

(assert (=> b!1750350 (matchR!2239 lt!675857 lt!675821)))

(declare-fun lt!675845 () List!19325)

(assert (=> b!1750350 (= lt!675845 (getSuffix!858 lt!675850 lt!675822))))

(declare-fun lt!675854 () Unit!33359)

(assert (=> b!1750350 (= lt!675854 (lemmaSamePrefixThenSameSuffix!808 lt!675822 suffix!1421 lt!675822 lt!675845 lt!675850))))

(assert (=> b!1750350 (= suffix!1421 lt!675845)))

(declare-fun lt!675833 () Unit!33359)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!253 (List!19325 List!19325) Unit!33359)

(assert (=> b!1750350 (= lt!675833 (lemmaAddHeadSuffixToPrefixStillPrefix!253 lt!675822 lt!675850))))

(declare-fun isPrefix!1678 (List!19325 List!19325) Bool)

(assert (=> b!1750350 (isPrefix!1678 (++!5262 lt!675822 (Cons!19255 (head!4034 lt!675845) Nil!19255)) lt!675850)))

(declare-fun lt!675839 () Unit!33359)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!129 (List!19325 List!19325 List!19325) Unit!33359)

(assert (=> b!1750350 (= lt!675839 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!129 lt!675821 lt!675824 lt!675850))))

(assert (=> b!1750350 (isPrefix!1678 lt!675824 lt!675821)))

(declare-fun lt!675848 () Unit!33359)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!122 (Regex!4765 List!19325 List!19325) Unit!33359)

(assert (=> b!1750350 (= lt!675848 (lemmaNotPrefixMatchThenCannotMatchLonger!122 lt!675857 lt!675824 lt!675821))))

(assert (=> b!1750350 false))

(declare-fun e!1120356 () Bool)

(assert (=> b!1750351 (= e!1120356 e!1120348)))

(declare-fun res!787322 () Bool)

(assert (=> b!1750351 (=> res!787322 e!1120348)))

(declare-fun Forall!806 (Int) Bool)

(assert (=> b!1750351 (= res!787322 (not (Forall!806 lambda!69854)))))

(declare-fun lt!675861 () Unit!33359)

(declare-fun lemmaInv!638 (TokenValueInjection!6714) Unit!33359)

(assert (=> b!1750351 (= lt!675861 (lemmaInv!638 (transformation!3437 (rule!5445 (_1!10845 lt!675830)))))))

(declare-fun e!1120357 () Bool)

(assert (=> b!1750352 (= e!1120357 (and tp!497955 tp!497954))))

(declare-fun b!1750353 () Bool)

(declare-fun res!787319 () Bool)

(assert (=> b!1750353 (=> res!787319 e!1120362)))

(declare-fun isEmpty!12135 (List!19325) Bool)

(assert (=> b!1750353 (= res!787319 (isEmpty!12135 suffix!1421))))

(declare-fun b!1750354 () Bool)

(declare-fun e!1120367 () Unit!33359)

(declare-fun Unit!33363 () Unit!33359)

(assert (=> b!1750354 (= e!1120367 Unit!33363)))

(declare-fun e!1120363 () Bool)

(declare-fun token!523 () Token!6440)

(declare-fun b!1750355 () Bool)

(declare-fun tp!497950 () Bool)

(declare-fun inv!24975 (String!21967) Bool)

(declare-fun inv!24980 (TokenValueInjection!6714) Bool)

(assert (=> b!1750355 (= e!1120363 (and tp!497950 (inv!24975 (tag!3787 (rule!5445 token!523))) (inv!24980 (transformation!3437 (rule!5445 token!523))) e!1120365))))

(declare-fun b!1750357 () Bool)

(declare-fun e!1120358 () Bool)

(declare-fun lt!675843 () Rule!6674)

(assert (=> b!1750357 (= e!1120358 (= (rule!5445 (_1!10845 lt!675830)) lt!675843))))

(declare-fun b!1750358 () Bool)

(assert (=> b!1750358 (= e!1120347 e!1120356)))

(declare-fun res!787311 () Bool)

(assert (=> b!1750358 (=> res!787311 e!1120356)))

(assert (=> b!1750358 (= res!787311 (not (isPrefix!1678 lt!675821 lt!675850)))))

(assert (=> b!1750358 (isPrefix!1678 lt!675821 (++!5262 lt!675821 (_2!10845 lt!675830)))))

(declare-fun lt!675831 () Unit!33359)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1188 (List!19325 List!19325) Unit!33359)

(assert (=> b!1750358 (= lt!675831 (lemmaConcatTwoListThenFirstIsPrefix!1188 lt!675821 (_2!10845 lt!675830)))))

(assert (=> b!1750358 (= lt!675821 (list!7798 lt!675819))))

(declare-fun charsOf!2086 (Token!6440) BalanceConc!12754)

(assert (=> b!1750358 (= lt!675819 (charsOf!2086 (_1!10845 lt!675830)))))

(declare-fun e!1120349 () Bool)

(assert (=> b!1750358 e!1120349))

(declare-fun res!787325 () Bool)

(assert (=> b!1750358 (=> (not res!787325) (not e!1120349))))

(declare-datatypes ((Option!3899 0))(
  ( (None!3898) (Some!3898 (v!25341 Rule!6674)) )
))
(declare-fun lt!675851 () Option!3899)

(declare-fun isDefined!3241 (Option!3899) Bool)

(assert (=> b!1750358 (= res!787325 (isDefined!3241 lt!675851))))

(declare-fun getRuleFromTag!487 (LexerInterface!3066 List!19326 String!21967) Option!3899)

(assert (=> b!1750358 (= lt!675851 (getRuleFromTag!487 thiss!24550 rules!3447 (tag!3787 (rule!5445 (_1!10845 lt!675830)))))))

(declare-fun lt!675828 () Unit!33359)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!487 (LexerInterface!3066 List!19326 List!19325 Token!6440) Unit!33359)

(assert (=> b!1750358 (= lt!675828 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!487 thiss!24550 rules!3447 lt!675850 (_1!10845 lt!675830)))))

(declare-fun get!5834 (Option!3898) tuple2!18886)

(assert (=> b!1750358 (= lt!675830 (get!5834 lt!675834))))

(declare-fun lt!675860 () Unit!33359)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!590 (LexerInterface!3066 List!19326 List!19325 List!19325) Unit!33359)

(assert (=> b!1750358 (= lt!675860 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!590 thiss!24550 rules!3447 lt!675822 suffix!1421))))

(declare-fun maxPrefix!1620 (LexerInterface!3066 List!19326 List!19325) Option!3898)

(assert (=> b!1750358 (= lt!675834 (maxPrefix!1620 thiss!24550 rules!3447 lt!675850))))

(assert (=> b!1750358 (isPrefix!1678 lt!675822 lt!675850)))

(declare-fun lt!675842 () Unit!33359)

(assert (=> b!1750358 (= lt!675842 (lemmaConcatTwoListThenFirstIsPrefix!1188 lt!675822 suffix!1421))))

(assert (=> b!1750358 (= lt!675850 (++!5262 lt!675822 suffix!1421))))

(declare-fun b!1750359 () Bool)

(declare-fun e!1120361 () Bool)

(declare-fun e!1120360 () Bool)

(assert (=> b!1750359 (= e!1120361 e!1120360)))

(declare-fun res!787310 () Bool)

(assert (=> b!1750359 (=> (not res!787310) (not e!1120360))))

(declare-fun lt!675841 () tuple2!18886)

(assert (=> b!1750359 (= res!787310 (= (_1!10845 lt!675841) token!523))))

(declare-fun lt!675853 () Option!3898)

(assert (=> b!1750359 (= lt!675841 (get!5834 lt!675853))))

(declare-fun b!1750360 () Bool)

(declare-fun e!1120340 () Bool)

(declare-fun tp_is_empty!7773 () Bool)

(declare-fun tp!497952 () Bool)

(assert (=> b!1750360 (= e!1120340 (and tp_is_empty!7773 tp!497952))))

(declare-fun b!1750361 () Bool)

(declare-fun Unit!33364 () Unit!33359)

(assert (=> b!1750361 (= e!1120367 Unit!33364)))

(declare-fun lt!675820 () Unit!33359)

(declare-fun rule!422 () Rule!6674)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!208 (LexerInterface!3066 List!19326 Rule!6674 List!19325 List!19325 List!19325 Rule!6674) Unit!33359)

(assert (=> b!1750361 (= lt!675820 (lemmaMaxPrefixOutputsMaxPrefix!208 thiss!24550 rules!3447 (rule!5445 (_1!10845 lt!675830)) lt!675821 lt!675850 lt!675822 rule!422))))

(assert (=> b!1750361 false))

(declare-fun b!1750362 () Bool)

(declare-fun e!1120352 () Bool)

(assert (=> b!1750362 (= e!1120343 e!1120352)))

(declare-fun res!787324 () Bool)

(assert (=> b!1750362 (=> res!787324 e!1120352)))

(declare-fun lt!675840 () Bool)

(assert (=> b!1750362 (= res!787324 lt!675840)))

(declare-fun lt!675836 () Unit!33359)

(assert (=> b!1750362 (= lt!675836 e!1120366)))

(declare-fun c!285387 () Bool)

(assert (=> b!1750362 (= c!285387 lt!675840)))

(declare-fun lt!675838 () Int)

(assert (=> b!1750362 (= lt!675840 (> lt!675859 lt!675838))))

(declare-fun lt!675858 () BalanceConc!12754)

(assert (=> b!1750362 (= lt!675838 (size!15299 lt!675858))))

(assert (=> b!1750362 (matchR!2239 lt!675857 lt!675822)))

(declare-fun lt!675837 () Unit!33359)

(assert (=> b!1750362 (= lt!675837 (lemmaMaxPrefixThenMatchesRulesRegex!168 thiss!24550 rules!3447 lt!675822 token!523 rule!422 Nil!19255))))

(declare-fun b!1750363 () Bool)

(declare-fun e!1120364 () Bool)

(assert (=> b!1750363 (= e!1120352 e!1120364)))

(declare-fun res!787312 () Bool)

(assert (=> b!1750363 (=> res!787312 e!1120364)))

(assert (=> b!1750363 (= res!787312 (not (= lt!675859 lt!675838)))))

(declare-fun lt!675844 () Unit!33359)

(assert (=> b!1750363 (= lt!675844 e!1120367)))

(declare-fun c!285386 () Bool)

(assert (=> b!1750363 (= c!285386 (< lt!675859 lt!675838))))

(declare-fun e!1120344 () Bool)

(declare-fun b!1750364 () Bool)

(declare-fun e!1120346 () Bool)

(declare-fun tp!497945 () Bool)

(assert (=> b!1750364 (= e!1120344 (and tp!497945 (inv!24975 (tag!3787 rule!422)) (inv!24980 (transformation!3437 rule!422)) e!1120346))))

(declare-fun b!1750365 () Bool)

(declare-fun res!787317 () Bool)

(assert (=> b!1750365 (=> res!787317 e!1120356)))

(assert (=> b!1750365 (= res!787317 (not (matchR!2239 (regex!3437 (rule!5445 (_1!10845 lt!675830))) lt!675821)))))

(declare-fun b!1750366 () Bool)

(declare-fun res!787323 () Bool)

(assert (=> b!1750366 (=> (not res!787323) (not e!1120360))))

(assert (=> b!1750366 (= res!787323 (isEmpty!12135 (_2!10845 lt!675841)))))

(declare-fun b!1750367 () Bool)

(assert (=> b!1750367 (= e!1120364 true)))

(assert (=> b!1750367 (= suffix!1421 (_2!10845 lt!675830))))

(declare-fun lt!675846 () Unit!33359)

(assert (=> b!1750367 (= lt!675846 (lemmaSamePrefixThenSameSuffix!808 lt!675822 suffix!1421 lt!675822 (_2!10845 lt!675830) lt!675850))))

(assert (=> b!1750367 (= lt!675821 lt!675822)))

(declare-fun lt!675849 () Unit!33359)

(declare-fun lemmaIsPrefixSameLengthThenSameList!237 (List!19325 List!19325 List!19325) Unit!33359)

(assert (=> b!1750367 (= lt!675849 (lemmaIsPrefixSameLengthThenSameList!237 lt!675821 lt!675822 lt!675850))))

(declare-fun e!1120342 () Bool)

(declare-fun b!1750368 () Bool)

(declare-fun tp!497947 () Bool)

(declare-fun inv!21 (TokenValue!3527) Bool)

(assert (=> b!1750368 (= e!1120342 (and (inv!21 (value!107627 token!523)) e!1120363 tp!497947))))

(declare-fun b!1750369 () Bool)

(declare-fun e!1120351 () Bool)

(assert (=> b!1750369 (= e!1120351 e!1120361)))

(declare-fun res!787305 () Bool)

(assert (=> b!1750369 (=> (not res!787305) (not e!1120361))))

(declare-fun isDefined!3242 (Option!3898) Bool)

(assert (=> b!1750369 (= res!787305 (isDefined!3242 lt!675853))))

(assert (=> b!1750369 (= lt!675853 (maxPrefix!1620 thiss!24550 rules!3447 lt!675822))))

(assert (=> b!1750369 (= lt!675822 (list!7798 lt!675858))))

(assert (=> b!1750369 (= lt!675858 (charsOf!2086 token!523))))

(declare-fun b!1750370 () Bool)

(declare-fun res!787314 () Bool)

(assert (=> b!1750370 (=> (not res!787314) (not e!1120351))))

(declare-fun contains!3463 (List!19326 Rule!6674) Bool)

(assert (=> b!1750370 (= res!787314 (contains!3463 rules!3447 rule!422))))

(declare-fun e!1120353 () Bool)

(declare-fun tp!497948 () Bool)

(declare-fun b!1750371 () Bool)

(assert (=> b!1750371 (= e!1120353 (and tp!497948 (inv!24975 (tag!3787 (h!24657 rules!3447))) (inv!24980 (transformation!3437 (h!24657 rules!3447))) e!1120357))))

(declare-fun b!1750372 () Bool)

(declare-fun res!787318 () Bool)

(assert (=> b!1750372 (=> (not res!787318) (not e!1120351))))

(declare-fun rulesInvariant!2735 (LexerInterface!3066 List!19326) Bool)

(assert (=> b!1750372 (= res!787318 (rulesInvariant!2735 thiss!24550 rules!3447))))

(assert (=> b!1750373 (= e!1120346 (and tp!497949 tp!497956))))

(declare-fun b!1750374 () Bool)

(declare-fun res!787326 () Bool)

(assert (=> b!1750374 (=> (not res!787326) (not e!1120360))))

(assert (=> b!1750374 (= res!787326 (= (rule!5445 token!523) rule!422))))

(declare-fun b!1750375 () Bool)

(assert (=> b!1750375 (= e!1120349 e!1120358)))

(declare-fun res!787313 () Bool)

(assert (=> b!1750375 (=> (not res!787313) (not e!1120358))))

(assert (=> b!1750375 (= res!787313 (matchR!2239 (regex!3437 lt!675843) (list!7798 (charsOf!2086 (_1!10845 lt!675830)))))))

(declare-fun get!5835 (Option!3899) Rule!6674)

(assert (=> b!1750375 (= lt!675843 (get!5835 lt!675851))))

(declare-fun res!787307 () Bool)

(assert (=> start!172554 (=> (not res!787307) (not e!1120351))))

(get-info :version)

(assert (=> start!172554 (= res!787307 ((_ is Lexer!3064) thiss!24550))))

(assert (=> start!172554 e!1120351))

(assert (=> start!172554 e!1120340))

(assert (=> start!172554 e!1120344))

(assert (=> start!172554 true))

(declare-fun inv!24981 (Token!6440) Bool)

(assert (=> start!172554 (and (inv!24981 token!523) e!1120342)))

(declare-fun e!1120355 () Bool)

(assert (=> start!172554 e!1120355))

(declare-fun b!1750356 () Bool)

(declare-fun res!787321 () Bool)

(assert (=> b!1750356 (=> (not res!787321) (not e!1120351))))

(declare-fun isEmpty!12136 (List!19326) Bool)

(assert (=> b!1750356 (= res!787321 (not (isEmpty!12136 rules!3447)))))

(declare-fun b!1750376 () Bool)

(assert (=> b!1750376 (= e!1120360 (not e!1120362))))

(declare-fun res!787306 () Bool)

(assert (=> b!1750376 (=> res!787306 e!1120362)))

(assert (=> b!1750376 (= res!787306 (not (matchR!2239 (regex!3437 rule!422) lt!675822)))))

(declare-fun ruleValid!936 (LexerInterface!3066 Rule!6674) Bool)

(assert (=> b!1750376 (ruleValid!936 thiss!24550 rule!422)))

(declare-fun lt!675823 () Unit!33359)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!460 (LexerInterface!3066 Rule!6674 List!19326) Unit!33359)

(assert (=> b!1750376 (= lt!675823 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!460 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1750377 () Bool)

(declare-fun tp!497953 () Bool)

(assert (=> b!1750377 (= e!1120355 (and e!1120353 tp!497953))))

(assert (= (and start!172554 res!787307) b!1750356))

(assert (= (and b!1750356 res!787321) b!1750372))

(assert (= (and b!1750372 res!787318) b!1750370))

(assert (= (and b!1750370 res!787314) b!1750369))

(assert (= (and b!1750369 res!787305) b!1750359))

(assert (= (and b!1750359 res!787310) b!1750366))

(assert (= (and b!1750366 res!787323) b!1750374))

(assert (= (and b!1750374 res!787326) b!1750376))

(assert (= (and b!1750376 (not res!787306)) b!1750353))

(assert (= (and b!1750353 (not res!787319)) b!1750347))

(assert (= (and b!1750347 (not res!787316)) b!1750358))

(assert (= (and b!1750358 res!787325) b!1750375))

(assert (= (and b!1750375 res!787313) b!1750357))

(assert (= (and b!1750358 (not res!787311)) b!1750365))

(assert (= (and b!1750365 (not res!787317)) b!1750351))

(assert (= (and b!1750351 (not res!787322)) b!1750349))

(assert (= (and b!1750349 (not res!787320)) b!1750344))

(assert (= (and b!1750344 (not res!787309)) b!1750346))

(assert (= (and b!1750346 (not res!787315)) b!1750348))

(assert (= (and b!1750348 (not res!787308)) b!1750362))

(assert (= (and b!1750362 c!285387) b!1750350))

(assert (= (and b!1750362 (not c!285387)) b!1750345))

(assert (= (and b!1750362 (not res!787324)) b!1750363))

(assert (= (and b!1750363 c!285386) b!1750361))

(assert (= (and b!1750363 (not c!285386)) b!1750354))

(assert (= (and b!1750363 (not res!787312)) b!1750367))

(assert (= (and start!172554 ((_ is Cons!19255) suffix!1421)) b!1750360))

(assert (= b!1750364 b!1750373))

(assert (= start!172554 b!1750364))

(assert (= b!1750355 b!1750343))

(assert (= b!1750368 b!1750355))

(assert (= start!172554 b!1750368))

(assert (= b!1750371 b!1750352))

(assert (= b!1750377 b!1750371))

(assert (= (and start!172554 ((_ is Cons!19256) rules!3447)) b!1750377))

(declare-fun b_lambda!56251 () Bool)

(assert (=> (not b_lambda!56251) (not b!1750344)))

(declare-fun tb!104969 () Bool)

(declare-fun t!162866 () Bool)

(assert (=> (and b!1750373 (= (toChars!4811 (transformation!3437 rule!422)) (toChars!4811 (transformation!3437 (rule!5445 (_1!10845 lt!675830))))) t!162866) tb!104969))

(declare-fun b!1750393 () Bool)

(declare-fun e!1120380 () Bool)

(declare-fun tp!497959 () Bool)

(declare-fun inv!24982 (Conc!6405) Bool)

(assert (=> b!1750393 (= e!1120380 (and (inv!24982 (c!285389 (dynLambda!9189 (toChars!4811 (transformation!3437 (rule!5445 (_1!10845 lt!675830)))) (value!107627 (_1!10845 lt!675830))))) tp!497959))))

(declare-fun result!126268 () Bool)

(declare-fun inv!24983 (BalanceConc!12754) Bool)

(assert (=> tb!104969 (= result!126268 (and (inv!24983 (dynLambda!9189 (toChars!4811 (transformation!3437 (rule!5445 (_1!10845 lt!675830)))) (value!107627 (_1!10845 lt!675830)))) e!1120380))))

(assert (= tb!104969 b!1750393))

(declare-fun m!2163775 () Bool)

(assert (=> b!1750393 m!2163775))

(declare-fun m!2163777 () Bool)

(assert (=> tb!104969 m!2163777))

(assert (=> b!1750344 t!162866))

(declare-fun b_and!130879 () Bool)

(assert (= b_and!130869 (and (=> t!162866 result!126268) b_and!130879)))

(declare-fun t!162868 () Bool)

(declare-fun tb!104971 () Bool)

(assert (=> (and b!1750343 (= (toChars!4811 (transformation!3437 (rule!5445 token!523))) (toChars!4811 (transformation!3437 (rule!5445 (_1!10845 lt!675830))))) t!162868) tb!104971))

(declare-fun result!126272 () Bool)

(assert (= result!126272 result!126268))

(assert (=> b!1750344 t!162868))

(declare-fun b_and!130881 () Bool)

(assert (= b_and!130873 (and (=> t!162868 result!126272) b_and!130881)))

(declare-fun t!162870 () Bool)

(declare-fun tb!104973 () Bool)

(assert (=> (and b!1750352 (= (toChars!4811 (transformation!3437 (h!24657 rules!3447))) (toChars!4811 (transformation!3437 (rule!5445 (_1!10845 lt!675830))))) t!162870) tb!104973))

(declare-fun result!126274 () Bool)

(assert (= result!126274 result!126268))

(assert (=> b!1750344 t!162870))

(declare-fun b_and!130883 () Bool)

(assert (= b_and!130877 (and (=> t!162870 result!126274) b_and!130883)))

(declare-fun b_lambda!56253 () Bool)

(assert (=> (not b_lambda!56253) (not b!1750349)))

(declare-fun t!162872 () Bool)

(declare-fun tb!104975 () Bool)

(assert (=> (and b!1750373 (= (toChars!4811 (transformation!3437 rule!422)) (toChars!4811 (transformation!3437 (rule!5445 (_1!10845 lt!675830))))) t!162872) tb!104975))

(declare-fun b!1750394 () Bool)

(declare-fun e!1120381 () Bool)

(declare-fun tp!497960 () Bool)

(assert (=> b!1750394 (= e!1120381 (and (inv!24982 (c!285389 (dynLambda!9189 (toChars!4811 (transformation!3437 (rule!5445 (_1!10845 lt!675830)))) (dynLambda!9190 (toValue!4952 (transformation!3437 (rule!5445 (_1!10845 lt!675830)))) lt!675819)))) tp!497960))))

(declare-fun result!126276 () Bool)

(assert (=> tb!104975 (= result!126276 (and (inv!24983 (dynLambda!9189 (toChars!4811 (transformation!3437 (rule!5445 (_1!10845 lt!675830)))) (dynLambda!9190 (toValue!4952 (transformation!3437 (rule!5445 (_1!10845 lt!675830)))) lt!675819))) e!1120381))))

(assert (= tb!104975 b!1750394))

(declare-fun m!2163779 () Bool)

(assert (=> b!1750394 m!2163779))

(declare-fun m!2163781 () Bool)

(assert (=> tb!104975 m!2163781))

(assert (=> b!1750349 t!162872))

(declare-fun b_and!130885 () Bool)

(assert (= b_and!130879 (and (=> t!162872 result!126276) b_and!130885)))

(declare-fun t!162874 () Bool)

(declare-fun tb!104977 () Bool)

(assert (=> (and b!1750343 (= (toChars!4811 (transformation!3437 (rule!5445 token!523))) (toChars!4811 (transformation!3437 (rule!5445 (_1!10845 lt!675830))))) t!162874) tb!104977))

(declare-fun result!126278 () Bool)

(assert (= result!126278 result!126276))

(assert (=> b!1750349 t!162874))

(declare-fun b_and!130887 () Bool)

(assert (= b_and!130881 (and (=> t!162874 result!126278) b_and!130887)))

(declare-fun t!162876 () Bool)

(declare-fun tb!104979 () Bool)

(assert (=> (and b!1750352 (= (toChars!4811 (transformation!3437 (h!24657 rules!3447))) (toChars!4811 (transformation!3437 (rule!5445 (_1!10845 lt!675830))))) t!162876) tb!104979))

(declare-fun result!126280 () Bool)

(assert (= result!126280 result!126276))

(assert (=> b!1750349 t!162876))

(declare-fun b_and!130889 () Bool)

(assert (= b_and!130883 (and (=> t!162876 result!126280) b_and!130889)))

(declare-fun b_lambda!56255 () Bool)

(assert (=> (not b_lambda!56255) (not b!1750349)))

(declare-fun tb!104981 () Bool)

(declare-fun t!162878 () Bool)

(assert (=> (and b!1750373 (= (toValue!4952 (transformation!3437 rule!422)) (toValue!4952 (transformation!3437 (rule!5445 (_1!10845 lt!675830))))) t!162878) tb!104981))

(declare-fun result!126282 () Bool)

(assert (=> tb!104981 (= result!126282 (inv!21 (dynLambda!9190 (toValue!4952 (transformation!3437 (rule!5445 (_1!10845 lt!675830)))) lt!675819)))))

(declare-fun m!2163783 () Bool)

(assert (=> tb!104981 m!2163783))

(assert (=> b!1750349 t!162878))

(declare-fun b_and!130891 () Bool)

(assert (= b_and!130867 (and (=> t!162878 result!126282) b_and!130891)))

(declare-fun t!162880 () Bool)

(declare-fun tb!104983 () Bool)

(assert (=> (and b!1750343 (= (toValue!4952 (transformation!3437 (rule!5445 token!523))) (toValue!4952 (transformation!3437 (rule!5445 (_1!10845 lt!675830))))) t!162880) tb!104983))

(declare-fun result!126286 () Bool)

(assert (= result!126286 result!126282))

(assert (=> b!1750349 t!162880))

(declare-fun b_and!130893 () Bool)

(assert (= b_and!130871 (and (=> t!162880 result!126286) b_and!130893)))

(declare-fun tb!104985 () Bool)

(declare-fun t!162882 () Bool)

(assert (=> (and b!1750352 (= (toValue!4952 (transformation!3437 (h!24657 rules!3447))) (toValue!4952 (transformation!3437 (rule!5445 (_1!10845 lt!675830))))) t!162882) tb!104985))

(declare-fun result!126288 () Bool)

(assert (= result!126288 result!126282))

(assert (=> b!1750349 t!162882))

(declare-fun b_and!130895 () Bool)

(assert (= b_and!130875 (and (=> t!162882 result!126288) b_and!130895)))

(declare-fun m!2163785 () Bool)

(assert (=> start!172554 m!2163785))

(declare-fun m!2163787 () Bool)

(assert (=> b!1750351 m!2163787))

(declare-fun m!2163789 () Bool)

(assert (=> b!1750351 m!2163789))

(declare-fun m!2163791 () Bool)

(assert (=> b!1750361 m!2163791))

(declare-fun m!2163793 () Bool)

(assert (=> b!1750375 m!2163793))

(assert (=> b!1750375 m!2163793))

(declare-fun m!2163795 () Bool)

(assert (=> b!1750375 m!2163795))

(assert (=> b!1750375 m!2163795))

(declare-fun m!2163797 () Bool)

(assert (=> b!1750375 m!2163797))

(declare-fun m!2163799 () Bool)

(assert (=> b!1750375 m!2163799))

(declare-fun m!2163801 () Bool)

(assert (=> b!1750368 m!2163801))

(declare-fun m!2163803 () Bool)

(assert (=> b!1750346 m!2163803))

(declare-fun m!2163805 () Bool)

(assert (=> b!1750346 m!2163805))

(declare-fun m!2163807 () Bool)

(assert (=> b!1750346 m!2163807))

(assert (=> b!1750346 m!2163805))

(declare-fun m!2163809 () Bool)

(assert (=> b!1750346 m!2163809))

(declare-fun m!2163811 () Bool)

(assert (=> b!1750346 m!2163811))

(declare-fun m!2163813 () Bool)

(assert (=> b!1750350 m!2163813))

(declare-fun m!2163815 () Bool)

(assert (=> b!1750350 m!2163815))

(declare-fun m!2163817 () Bool)

(assert (=> b!1750350 m!2163817))

(declare-fun m!2163819 () Bool)

(assert (=> b!1750350 m!2163819))

(declare-fun m!2163821 () Bool)

(assert (=> b!1750350 m!2163821))

(declare-fun m!2163823 () Bool)

(assert (=> b!1750350 m!2163823))

(declare-fun m!2163825 () Bool)

(assert (=> b!1750350 m!2163825))

(declare-fun m!2163827 () Bool)

(assert (=> b!1750350 m!2163827))

(declare-fun m!2163829 () Bool)

(assert (=> b!1750350 m!2163829))

(declare-fun m!2163831 () Bool)

(assert (=> b!1750350 m!2163831))

(declare-fun m!2163833 () Bool)

(assert (=> b!1750350 m!2163833))

(assert (=> b!1750350 m!2163825))

(declare-fun m!2163835 () Bool)

(assert (=> b!1750369 m!2163835))

(declare-fun m!2163837 () Bool)

(assert (=> b!1750369 m!2163837))

(declare-fun m!2163839 () Bool)

(assert (=> b!1750369 m!2163839))

(declare-fun m!2163841 () Bool)

(assert (=> b!1750369 m!2163841))

(declare-fun m!2163843 () Bool)

(assert (=> b!1750371 m!2163843))

(declare-fun m!2163845 () Bool)

(assert (=> b!1750371 m!2163845))

(declare-fun m!2163847 () Bool)

(assert (=> b!1750348 m!2163847))

(declare-fun m!2163849 () Bool)

(assert (=> b!1750348 m!2163849))

(declare-fun m!2163851 () Bool)

(assert (=> b!1750348 m!2163851))

(assert (=> b!1750348 m!2163849))

(declare-fun m!2163853 () Bool)

(assert (=> b!1750348 m!2163853))

(declare-fun m!2163855 () Bool)

(assert (=> b!1750348 m!2163855))

(declare-fun m!2163857 () Bool)

(assert (=> b!1750348 m!2163857))

(declare-fun m!2163859 () Bool)

(assert (=> b!1750348 m!2163859))

(declare-fun m!2163861 () Bool)

(assert (=> b!1750365 m!2163861))

(declare-fun m!2163863 () Bool)

(assert (=> b!1750355 m!2163863))

(declare-fun m!2163865 () Bool)

(assert (=> b!1750355 m!2163865))

(declare-fun m!2163867 () Bool)

(assert (=> b!1750347 m!2163867))

(declare-fun m!2163869 () Bool)

(assert (=> b!1750347 m!2163869))

(declare-fun m!2163871 () Bool)

(assert (=> b!1750347 m!2163871))

(declare-fun m!2163873 () Bool)

(assert (=> b!1750347 m!2163873))

(declare-fun m!2163875 () Bool)

(assert (=> b!1750362 m!2163875))

(declare-fun m!2163877 () Bool)

(assert (=> b!1750362 m!2163877))

(declare-fun m!2163879 () Bool)

(assert (=> b!1750362 m!2163879))

(declare-fun m!2163881 () Bool)

(assert (=> b!1750366 m!2163881))

(declare-fun m!2163883 () Bool)

(assert (=> b!1750359 m!2163883))

(declare-fun m!2163885 () Bool)

(assert (=> b!1750372 m!2163885))

(declare-fun m!2163887 () Bool)

(assert (=> b!1750367 m!2163887))

(declare-fun m!2163889 () Bool)

(assert (=> b!1750367 m!2163889))

(declare-fun m!2163891 () Bool)

(assert (=> b!1750370 m!2163891))

(declare-fun m!2163893 () Bool)

(assert (=> b!1750349 m!2163893))

(assert (=> b!1750349 m!2163893))

(declare-fun m!2163895 () Bool)

(assert (=> b!1750349 m!2163895))

(assert (=> b!1750349 m!2163895))

(declare-fun m!2163897 () Bool)

(assert (=> b!1750349 m!2163897))

(declare-fun m!2163899 () Bool)

(assert (=> b!1750349 m!2163899))

(declare-fun m!2163901 () Bool)

(assert (=> b!1750344 m!2163901))

(declare-fun m!2163903 () Bool)

(assert (=> b!1750358 m!2163903))

(declare-fun m!2163905 () Bool)

(assert (=> b!1750358 m!2163905))

(declare-fun m!2163907 () Bool)

(assert (=> b!1750358 m!2163907))

(declare-fun m!2163909 () Bool)

(assert (=> b!1750358 m!2163909))

(declare-fun m!2163911 () Bool)

(assert (=> b!1750358 m!2163911))

(assert (=> b!1750358 m!2163793))

(declare-fun m!2163913 () Bool)

(assert (=> b!1750358 m!2163913))

(declare-fun m!2163915 () Bool)

(assert (=> b!1750358 m!2163915))

(declare-fun m!2163917 () Bool)

(assert (=> b!1750358 m!2163917))

(declare-fun m!2163919 () Bool)

(assert (=> b!1750358 m!2163919))

(declare-fun m!2163921 () Bool)

(assert (=> b!1750358 m!2163921))

(declare-fun m!2163923 () Bool)

(assert (=> b!1750358 m!2163923))

(assert (=> b!1750358 m!2163911))

(declare-fun m!2163925 () Bool)

(assert (=> b!1750358 m!2163925))

(declare-fun m!2163927 () Bool)

(assert (=> b!1750358 m!2163927))

(declare-fun m!2163929 () Bool)

(assert (=> b!1750358 m!2163929))

(declare-fun m!2163931 () Bool)

(assert (=> b!1750353 m!2163931))

(declare-fun m!2163933 () Bool)

(assert (=> b!1750356 m!2163933))

(declare-fun m!2163935 () Bool)

(assert (=> b!1750376 m!2163935))

(declare-fun m!2163937 () Bool)

(assert (=> b!1750376 m!2163937))

(declare-fun m!2163939 () Bool)

(assert (=> b!1750376 m!2163939))

(declare-fun m!2163941 () Bool)

(assert (=> b!1750364 m!2163941))

(declare-fun m!2163943 () Bool)

(assert (=> b!1750364 m!2163943))

(check-sat (not b!1750351) (not b!1750365) b_and!130887 (not start!172554) (not tb!104975) (not b!1750376) (not b!1750359) (not b_next!48987) (not b!1750356) (not b!1750370) b_and!130891 (not b!1750377) tp_is_empty!7773 b_and!130889 (not b_next!48993) (not b_next!48997) (not b_next!48991) b_and!130893 (not b!1750348) (not b!1750360) (not b_next!48995) (not b!1750371) (not b_next!48989) (not b!1750366) (not b!1750367) (not b!1750353) (not b!1750358) (not b!1750364) (not tb!104981) (not b!1750393) (not b!1750394) (not b_lambda!56253) (not b!1750355) (not b!1750349) (not b!1750346) (not b!1750372) (not b!1750362) b_and!130885 (not tb!104969) (not b!1750368) (not b_lambda!56255) (not b!1750350) (not b!1750361) (not b_lambda!56251) b_and!130895 (not b!1750347) (not b!1750369) (not b!1750375))
(check-sat b_and!130887 b_and!130885 (not b_next!48987) b_and!130891 b_and!130895 b_and!130889 (not b_next!48993) (not b_next!48997) (not b_next!48991) b_and!130893 (not b_next!48995) (not b_next!48989))
