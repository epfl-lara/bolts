; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50988 () Bool)

(assert start!50988)

(declare-fun b!551010 () Bool)

(declare-fun b_free!15369 () Bool)

(declare-fun b_next!15385 () Bool)

(assert (=> b!551010 (= b_free!15369 (not b_next!15385))))

(declare-fun tp!174306 () Bool)

(declare-fun b_and!53779 () Bool)

(assert (=> b!551010 (= tp!174306 b_and!53779)))

(declare-fun b_free!15371 () Bool)

(declare-fun b_next!15387 () Bool)

(assert (=> b!551010 (= b_free!15371 (not b_next!15387))))

(declare-fun tp!174301 () Bool)

(declare-fun b_and!53781 () Bool)

(assert (=> b!551010 (= tp!174301 b_and!53781)))

(declare-fun b!551018 () Bool)

(declare-fun b_free!15373 () Bool)

(declare-fun b_next!15389 () Bool)

(assert (=> b!551018 (= b_free!15373 (not b_next!15389))))

(declare-fun tp!174300 () Bool)

(declare-fun b_and!53783 () Bool)

(assert (=> b!551018 (= tp!174300 b_and!53783)))

(declare-fun b_free!15375 () Bool)

(declare-fun b_next!15391 () Bool)

(assert (=> b!551018 (= b_free!15375 (not b_next!15391))))

(declare-fun tp!174305 () Bool)

(declare-fun b_and!53785 () Bool)

(assert (=> b!551018 (= tp!174305 b_and!53785)))

(declare-fun b!550975 () Bool)

(declare-fun res!236144 () Bool)

(declare-fun e!333241 () Bool)

(assert (=> b!550975 (=> (not res!236144) (not e!333241))))

(declare-datatypes ((C!3656 0))(
  ( (C!3657 (val!2054 Int)) )
))
(declare-datatypes ((List!5455 0))(
  ( (Nil!5445) (Cons!5445 (h!10846 C!3656) (t!75056 List!5455)) )
))
(declare-fun input!2705 () List!5455)

(declare-fun isEmpty!3930 (List!5455) Bool)

(assert (=> b!550975 (= res!236144 (not (isEmpty!3930 input!2705)))))

(declare-fun tp!174303 () Bool)

(declare-datatypes ((String!7028 0))(
  ( (String!7029 (value!34281 String)) )
))
(declare-datatypes ((Regex!1367 0))(
  ( (ElementMatch!1367 (c!103620 C!3656)) (Concat!2424 (regOne!3246 Regex!1367) (regTwo!3246 Regex!1367)) (EmptyExpr!1367) (Star!1367 (reg!1696 Regex!1367)) (EmptyLang!1367) (Union!1367 (regOne!3247 Regex!1367) (regTwo!3247 Regex!1367)) )
))
(declare-datatypes ((List!5456 0))(
  ( (Nil!5446) (Cons!5446 (h!10847 (_ BitVec 16)) (t!75057 List!5456)) )
))
(declare-datatypes ((TokenValue!1057 0))(
  ( (FloatLiteralValue!2114 (text!7844 List!5456)) (TokenValueExt!1056 (__x!4012 Int)) (Broken!5285 (value!34282 List!5456)) (Object!1066) (End!1057) (Def!1057) (Underscore!1057) (Match!1057) (Else!1057) (Error!1057) (Case!1057) (If!1057) (Extends!1057) (Abstract!1057) (Class!1057) (Val!1057) (DelimiterValue!2114 (del!1117 List!5456)) (KeywordValue!1063 (value!34283 List!5456)) (CommentValue!2114 (value!34284 List!5456)) (WhitespaceValue!2114 (value!34285 List!5456)) (IndentationValue!1057 (value!34286 List!5456)) (String!7030) (Int32!1057) (Broken!5286 (value!34287 List!5456)) (Boolean!1058) (Unit!9667) (OperatorValue!1060 (op!1117 List!5456)) (IdentifierValue!2114 (value!34288 List!5456)) (IdentifierValue!2115 (value!34289 List!5456)) (WhitespaceValue!2115 (value!34290 List!5456)) (True!2114) (False!2114) (Broken!5287 (value!34291 List!5456)) (Broken!5288 (value!34292 List!5456)) (True!2115) (RightBrace!1057) (RightBracket!1057) (Colon!1057) (Null!1057) (Comma!1057) (LeftBracket!1057) (False!2115) (LeftBrace!1057) (ImaginaryLiteralValue!1057 (text!7845 List!5456)) (StringLiteralValue!3171 (value!34293 List!5456)) (EOFValue!1057 (value!34294 List!5456)) (IdentValue!1057 (value!34295 List!5456)) (DelimiterValue!2115 (value!34296 List!5456)) (DedentValue!1057 (value!34297 List!5456)) (NewLineValue!1057 (value!34298 List!5456)) (IntegerValue!3171 (value!34299 (_ BitVec 32)) (text!7846 List!5456)) (IntegerValue!3172 (value!34300 Int) (text!7847 List!5456)) (Times!1057) (Or!1057) (Equal!1057) (Minus!1057) (Broken!5289 (value!34301 List!5456)) (And!1057) (Div!1057) (LessEqual!1057) (Mod!1057) (Concat!2425) (Not!1057) (Plus!1057) (SpaceValue!1057 (value!34302 List!5456)) (IntegerValue!3173 (value!34303 Int) (text!7848 List!5456)) (StringLiteralValue!3172 (text!7849 List!5456)) (FloatLiteralValue!2115 (text!7850 List!5456)) (BytesLiteralValue!1057 (value!34304 List!5456)) (CommentValue!2115 (value!34305 List!5456)) (StringLiteralValue!3173 (value!34306 List!5456)) (ErrorTokenValue!1057 (msg!1118 List!5456)) )
))
(declare-datatypes ((IArray!3501 0))(
  ( (IArray!3502 (innerList!1808 List!5455)) )
))
(declare-datatypes ((Conc!1750 0))(
  ( (Node!1750 (left!4499 Conc!1750) (right!4829 Conc!1750) (csize!3730 Int) (cheight!1961 Int)) (Leaf!2774 (xs!4387 IArray!3501) (csize!3731 Int)) (Empty!1750) )
))
(declare-datatypes ((BalanceConc!3508 0))(
  ( (BalanceConc!3509 (c!103621 Conc!1750)) )
))
(declare-datatypes ((TokenValueInjection!1882 0))(
  ( (TokenValueInjection!1883 (toValue!1880 Int) (toChars!1739 Int)) )
))
(declare-datatypes ((Rule!1866 0))(
  ( (Rule!1867 (regex!1033 Regex!1367) (tag!1295 String!7028) (isSeparator!1033 Bool) (transformation!1033 TokenValueInjection!1882)) )
))
(declare-datatypes ((Token!1802 0))(
  ( (Token!1803 (value!34307 TokenValue!1057) (rule!1757 Rule!1866) (size!4358 Int) (originalCharacters!1072 List!5455)) )
))
(declare-fun token!491 () Token!1802)

(declare-fun e!333213 () Bool)

(declare-fun e!333239 () Bool)

(declare-fun b!550976 () Bool)

(declare-fun inv!21 (TokenValue!1057) Bool)

(assert (=> b!550976 (= e!333239 (and (inv!21 (value!34307 token!491)) e!333213 tp!174303))))

(declare-fun b!550977 () Bool)

(declare-fun e!333236 () Bool)

(declare-fun e!333217 () Bool)

(assert (=> b!550977 (= e!333236 e!333217)))

(declare-fun res!236150 () Bool)

(assert (=> b!550977 (=> res!236150 e!333217)))

(declare-fun lt!232422 () Int)

(declare-fun lt!232405 () Int)

(declare-fun lt!232424 () List!5455)

(declare-fun lt!232427 () List!5455)

(assert (=> b!550977 (= res!236150 (or (not (= lt!232405 lt!232422)) (not (= lt!232427 input!2705)) (not (= lt!232427 lt!232424))))))

(declare-datatypes ((Unit!9668 0))(
  ( (Unit!9669) )
))
(declare-fun lt!232425 () Unit!9668)

(declare-fun lt!232403 () BalanceConc!3508)

(declare-fun lemmaSemiInverse!162 (TokenValueInjection!1882 BalanceConc!3508) Unit!9668)

(assert (=> b!550977 (= lt!232425 (lemmaSemiInverse!162 (transformation!1033 (rule!1757 token!491)) lt!232403))))

(declare-fun lt!232423 () Unit!9668)

(declare-datatypes ((tuple2!6468 0))(
  ( (tuple2!6469 (_1!3498 Token!1802) (_2!3498 List!5455)) )
))
(declare-datatypes ((Option!1383 0))(
  ( (None!1382) (Some!1382 (v!16207 tuple2!6468)) )
))
(declare-fun lt!232428 () Option!1383)

(declare-fun lt!232409 () BalanceConc!3508)

(assert (=> b!550977 (= lt!232423 (lemmaSemiInverse!162 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) lt!232409))))

(declare-fun lt!232412 () Unit!9668)

(declare-fun e!333242 () Unit!9668)

(assert (=> b!550977 (= lt!232412 e!333242)))

(declare-fun c!103619 () Bool)

(assert (=> b!550977 (= c!103619 (< lt!232405 lt!232422))))

(declare-fun e!333214 () Bool)

(assert (=> b!550977 e!333214))

(declare-fun res!236159 () Bool)

(assert (=> b!550977 (=> (not res!236159) (not e!333214))))

(declare-fun suffix!1342 () List!5455)

(declare-datatypes ((LexerInterface!919 0))(
  ( (LexerInterfaceExt!916 (__x!4013 Int)) (Lexer!917) )
))
(declare-fun thiss!22590 () LexerInterface!919)

(declare-fun lt!232418 () TokenValue!1057)

(declare-fun lt!232404 () List!5455)

(declare-fun maxPrefixOneRule!332 (LexerInterface!919 Rule!1866 List!5455) Option!1383)

(assert (=> b!550977 (= res!236159 (= (maxPrefixOneRule!332 thiss!22590 (rule!1757 token!491) lt!232404) (Some!1382 (tuple2!6469 (Token!1803 lt!232418 (rule!1757 token!491) lt!232422 lt!232424) suffix!1342))))))

(declare-fun lt!232397 () Unit!9668)

(declare-datatypes ((List!5457 0))(
  ( (Nil!5447) (Cons!5447 (h!10848 Rule!1866) (t!75058 List!5457)) )
))
(declare-fun rules!3103 () List!5457)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!84 (LexerInterface!919 List!5457 List!5455 List!5455 List!5455 Rule!1866) Unit!9668)

(assert (=> b!550977 (= lt!232397 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!84 thiss!22590 rules!3103 lt!232424 lt!232404 suffix!1342 (rule!1757 token!491)))))

(declare-fun lt!232395 () TokenValue!1057)

(declare-fun lt!232401 () List!5455)

(assert (=> b!550977 (= (maxPrefixOneRule!332 thiss!22590 (rule!1757 (_1!3498 (v!16207 lt!232428))) input!2705) (Some!1382 (tuple2!6469 (Token!1803 lt!232395 (rule!1757 (_1!3498 (v!16207 lt!232428))) lt!232405 lt!232401) (_2!3498 (v!16207 lt!232428)))))))

(declare-fun lt!232392 () Unit!9668)

(assert (=> b!550977 (= lt!232392 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!84 thiss!22590 rules!3103 lt!232401 input!2705 (_2!3498 (v!16207 lt!232428)) (rule!1757 (_1!3498 (v!16207 lt!232428)))))))

(declare-fun e!333219 () Bool)

(assert (=> b!550977 e!333219))

(declare-fun res!236161 () Bool)

(assert (=> b!550977 (=> (not res!236161) (not e!333219))))

(assert (=> b!550977 (= res!236161 (= (value!34307 token!491) lt!232418))))

(declare-fun apply!1308 (TokenValueInjection!1882 BalanceConc!3508) TokenValue!1057)

(assert (=> b!550977 (= lt!232418 (apply!1308 (transformation!1033 (rule!1757 token!491)) lt!232403))))

(declare-fun seqFromList!1231 (List!5455) BalanceConc!3508)

(assert (=> b!550977 (= lt!232403 (seqFromList!1231 lt!232424))))

(declare-fun lt!232402 () List!5455)

(assert (=> b!550977 (= suffix!1342 lt!232402)))

(declare-fun lt!232394 () Unit!9668)

(declare-fun lemmaSamePrefixThenSameSuffix!402 (List!5455 List!5455 List!5455 List!5455 List!5455) Unit!9668)

(assert (=> b!550977 (= lt!232394 (lemmaSamePrefixThenSameSuffix!402 lt!232424 suffix!1342 lt!232424 lt!232402 lt!232404))))

(declare-fun getSuffix!198 (List!5455 List!5455) List!5455)

(assert (=> b!550977 (= lt!232402 (getSuffix!198 lt!232404 lt!232424))))

(declare-fun b!550978 () Bool)

(declare-fun e!333244 () Bool)

(declare-fun e!333226 () Bool)

(assert (=> b!550978 (= e!333244 e!333226)))

(declare-fun res!236155 () Bool)

(assert (=> b!550978 (=> (not res!236155) (not e!333226))))

(declare-fun lt!232433 () List!5455)

(assert (=> b!550978 (= res!236155 (= lt!232433 lt!232404))))

(declare-fun ++!1521 (List!5455 List!5455) List!5455)

(assert (=> b!550978 (= lt!232433 (++!1521 lt!232424 suffix!1342))))

(declare-fun b!550979 () Bool)

(assert (=> b!550979 (= e!333226 (not e!333236))))

(declare-fun res!236157 () Bool)

(assert (=> b!550979 (=> res!236157 e!333236)))

(declare-fun isPrefix!675 (List!5455 List!5455) Bool)

(assert (=> b!550979 (= res!236157 (not (isPrefix!675 input!2705 lt!232433)))))

(assert (=> b!550979 (isPrefix!675 lt!232424 lt!232433)))

(declare-fun lt!232416 () Unit!9668)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!526 (List!5455 List!5455) Unit!9668)

(assert (=> b!550979 (= lt!232416 (lemmaConcatTwoListThenFirstIsPrefix!526 lt!232424 suffix!1342))))

(assert (=> b!550979 (isPrefix!675 input!2705 lt!232404)))

(declare-fun lt!232393 () Unit!9668)

(assert (=> b!550979 (= lt!232393 (lemmaConcatTwoListThenFirstIsPrefix!526 input!2705 suffix!1342))))

(declare-fun e!333225 () Bool)

(assert (=> b!550979 e!333225))

(declare-fun res!236147 () Bool)

(assert (=> b!550979 (=> (not res!236147) (not e!333225))))

(assert (=> b!550979 (= res!236147 (= (value!34307 (_1!3498 (v!16207 lt!232428))) lt!232395))))

(assert (=> b!550979 (= lt!232395 (apply!1308 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) lt!232409))))

(assert (=> b!550979 (= lt!232409 (seqFromList!1231 lt!232401))))

(declare-fun lt!232391 () Unit!9668)

(declare-fun lemmaInv!181 (TokenValueInjection!1882) Unit!9668)

(assert (=> b!550979 (= lt!232391 (lemmaInv!181 (transformation!1033 (rule!1757 token!491))))))

(declare-fun lt!232406 () Unit!9668)

(assert (=> b!550979 (= lt!232406 (lemmaInv!181 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))))))

(declare-fun ruleValid!253 (LexerInterface!919 Rule!1866) Bool)

(assert (=> b!550979 (ruleValid!253 thiss!22590 (rule!1757 token!491))))

(declare-fun lt!232426 () Unit!9668)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!112 (LexerInterface!919 Rule!1866 List!5457) Unit!9668)

(assert (=> b!550979 (= lt!232426 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!112 thiss!22590 (rule!1757 token!491) rules!3103))))

(assert (=> b!550979 (ruleValid!253 thiss!22590 (rule!1757 (_1!3498 (v!16207 lt!232428))))))

(declare-fun lt!232400 () Unit!9668)

(assert (=> b!550979 (= lt!232400 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!112 thiss!22590 (rule!1757 (_1!3498 (v!16207 lt!232428))) rules!3103))))

(assert (=> b!550979 (isPrefix!675 input!2705 input!2705)))

(declare-fun lt!232398 () Unit!9668)

(declare-fun lemmaIsPrefixRefl!415 (List!5455 List!5455) Unit!9668)

(assert (=> b!550979 (= lt!232398 (lemmaIsPrefixRefl!415 input!2705 input!2705))))

(declare-fun lt!232389 () List!5455)

(assert (=> b!550979 (= (_2!3498 (v!16207 lt!232428)) lt!232389)))

(declare-fun lt!232411 () Unit!9668)

(assert (=> b!550979 (= lt!232411 (lemmaSamePrefixThenSameSuffix!402 lt!232401 (_2!3498 (v!16207 lt!232428)) lt!232401 lt!232389 input!2705))))

(assert (=> b!550979 (= lt!232389 (getSuffix!198 input!2705 lt!232401))))

(assert (=> b!550979 (isPrefix!675 lt!232401 lt!232427)))

(assert (=> b!550979 (= lt!232427 (++!1521 lt!232401 (_2!3498 (v!16207 lt!232428))))))

(declare-fun lt!232431 () Unit!9668)

(assert (=> b!550979 (= lt!232431 (lemmaConcatTwoListThenFirstIsPrefix!526 lt!232401 (_2!3498 (v!16207 lt!232428))))))

(declare-fun lt!232413 () Unit!9668)

(declare-fun lemmaCharactersSize!112 (Token!1802) Unit!9668)

(assert (=> b!550979 (= lt!232413 (lemmaCharactersSize!112 token!491))))

(declare-fun lt!232390 () Unit!9668)

(assert (=> b!550979 (= lt!232390 (lemmaCharactersSize!112 (_1!3498 (v!16207 lt!232428))))))

(declare-fun lt!232399 () Unit!9668)

(declare-fun e!333243 () Unit!9668)

(assert (=> b!550979 (= lt!232399 e!333243)))

(declare-fun c!103618 () Bool)

(assert (=> b!550979 (= c!103618 (> lt!232405 lt!232422))))

(declare-fun size!4359 (List!5455) Int)

(assert (=> b!550979 (= lt!232422 (size!4359 lt!232424))))

(assert (=> b!550979 (= lt!232405 (size!4359 lt!232401))))

(declare-fun list!2257 (BalanceConc!3508) List!5455)

(declare-fun charsOf!662 (Token!1802) BalanceConc!3508)

(assert (=> b!550979 (= lt!232401 (list!2257 (charsOf!662 (_1!3498 (v!16207 lt!232428)))))))

(declare-fun lt!232414 () tuple2!6468)

(assert (=> b!550979 (= lt!232428 (Some!1382 lt!232414))))

(assert (=> b!550979 (= lt!232414 (tuple2!6469 (_1!3498 (v!16207 lt!232428)) (_2!3498 (v!16207 lt!232428))))))

(declare-fun lt!232430 () Unit!9668)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!118 (List!5455 List!5455 List!5455 List!5455) Unit!9668)

(assert (=> b!550979 (= lt!232430 (lemmaConcatSameAndSameSizesThenSameLists!118 lt!232424 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!550980 () Bool)

(declare-fun e!333227 () Unit!9668)

(declare-fun Unit!9670 () Unit!9668)

(assert (=> b!550980 (= e!333227 Unit!9670)))

(declare-fun b!550981 () Bool)

(declare-fun Unit!9671 () Unit!9668)

(assert (=> b!550981 (= e!333243 Unit!9671)))

(declare-fun b!550982 () Bool)

(assert (=> b!550982 (= e!333219 (and (= (size!4358 token!491) lt!232422) (= (originalCharacters!1072 token!491) lt!232424) (= (tuple2!6469 token!491 suffix!1342) (tuple2!6469 (Token!1803 lt!232418 (rule!1757 token!491) lt!232422 lt!232424) lt!232402))))))

(declare-fun b!550983 () Bool)

(declare-fun e!333235 () Bool)

(assert (=> b!550983 (= e!333235 (= lt!232389 (_2!3498 (v!16207 lt!232428))))))

(declare-fun b!550984 () Bool)

(declare-fun e!333220 () Bool)

(declare-fun e!333221 () Bool)

(declare-fun tp!174298 () Bool)

(assert (=> b!550984 (= e!333220 (and e!333221 tp!174298))))

(declare-fun b!550986 () Bool)

(declare-fun e!333212 () Bool)

(assert (=> b!550986 (= e!333241 e!333212)))

(declare-fun res!236170 () Bool)

(assert (=> b!550986 (=> (not res!236170) (not e!333212))))

(assert (=> b!550986 (= res!236170 (= lt!232424 input!2705))))

(assert (=> b!550986 (= lt!232424 (list!2257 (charsOf!662 token!491)))))

(declare-fun b!550987 () Bool)

(declare-fun e!333237 () Bool)

(assert (=> b!550987 (= e!333237 false)))

(declare-fun b!550988 () Bool)

(declare-fun e!333233 () Bool)

(assert (=> b!550988 (= e!333233 false)))

(declare-fun e!333230 () Bool)

(declare-fun tp!174302 () Bool)

(declare-fun b!550989 () Bool)

(declare-fun inv!6828 (String!7028) Bool)

(declare-fun inv!6831 (TokenValueInjection!1882) Bool)

(assert (=> b!550989 (= e!333213 (and tp!174302 (inv!6828 (tag!1295 (rule!1757 token!491))) (inv!6831 (transformation!1033 (rule!1757 token!491))) e!333230))))

(declare-fun b!550990 () Bool)

(declare-fun e!333228 () Bool)

(declare-fun tp_is_empty!3089 () Bool)

(declare-fun tp!174297 () Bool)

(assert (=> b!550990 (= e!333228 (and tp_is_empty!3089 tp!174297))))

(declare-fun b!550991 () Bool)

(declare-fun e!333232 () Bool)

(assert (=> b!550991 (= e!333232 e!333244)))

(declare-fun res!236154 () Bool)

(assert (=> b!550991 (=> (not res!236154) (not e!333244))))

(get-info :version)

(assert (=> b!550991 (= res!236154 ((_ is Some!1382) lt!232428))))

(declare-fun maxPrefix!617 (LexerInterface!919 List!5457 List!5455) Option!1383)

(assert (=> b!550991 (= lt!232428 (maxPrefix!617 thiss!22590 rules!3103 input!2705))))

(declare-fun b!550992 () Bool)

(declare-fun e!333216 () Unit!9668)

(declare-fun Unit!9672 () Unit!9668)

(assert (=> b!550992 (= e!333216 Unit!9672)))

(declare-fun b!550993 () Bool)

(assert (=> b!550993 e!333237))

(declare-fun res!236165 () Bool)

(assert (=> b!550993 (=> (not res!236165) (not e!333237))))

(declare-fun matchR!526 (Regex!1367 List!5455) Bool)

(assert (=> b!550993 (= res!236165 (not (matchR!526 (regex!1033 (rule!1757 token!491)) input!2705)))))

(declare-fun lt!232432 () Unit!9668)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!16 (LexerInterface!919 List!5457 Rule!1866 List!5455 List!5455 Rule!1866) Unit!9668)

(assert (=> b!550993 (= lt!232432 (lemmaMaxPrefNoSmallerRuleMatches!16 thiss!22590 rules!3103 (rule!1757 (_1!3498 (v!16207 lt!232428))) input!2705 input!2705 (rule!1757 token!491)))))

(declare-fun Unit!9673 () Unit!9668)

(assert (=> b!550993 (= e!333227 Unit!9673)))

(declare-fun b!550994 () Bool)

(declare-fun e!333229 () Unit!9668)

(assert (=> b!550994 (= e!333229 e!333227)))

(declare-fun lt!232429 () Int)

(declare-fun getIndex!34 (List!5457 Rule!1866) Int)

(assert (=> b!550994 (= lt!232429 (getIndex!34 rules!3103 (rule!1757 (_1!3498 (v!16207 lt!232428)))))))

(declare-fun lt!232396 () Int)

(assert (=> b!550994 (= lt!232396 (getIndex!34 rules!3103 (rule!1757 token!491)))))

(declare-fun c!103617 () Bool)

(assert (=> b!550994 (= c!103617 (< lt!232429 lt!232396))))

(declare-fun lt!232421 () Unit!9668)

(assert (=> b!550994 (= lt!232421 e!333216)))

(declare-fun c!103615 () Bool)

(assert (=> b!550994 (= c!103615 (> lt!232429 lt!232396))))

(declare-fun b!550995 () Bool)

(declare-fun e!333224 () Bool)

(assert (=> b!550995 (= e!333224 e!333235)))

(declare-fun res!236151 () Bool)

(assert (=> b!550995 (=> (not res!236151) (not e!333235))))

(declare-fun isDefined!1195 (Option!1383) Bool)

(assert (=> b!550995 (= res!236151 (isDefined!1195 lt!232428))))

(declare-fun b!550996 () Bool)

(declare-fun res!236148 () Bool)

(assert (=> b!550996 (=> (not res!236148) (not e!333235))))

(declare-fun get!2064 (Option!1383) tuple2!6468)

(assert (=> b!550996 (= res!236148 (= (_1!3498 (get!2064 lt!232428)) (_1!3498 (v!16207 lt!232428))))))

(declare-fun b!550997 () Bool)

(declare-fun res!236153 () Bool)

(assert (=> b!550997 (=> res!236153 e!333217)))

(declare-fun contains!1275 (List!5457 Rule!1866) Bool)

(assert (=> b!550997 (= res!236153 (not (contains!1275 rules!3103 (rule!1757 token!491))))))

(declare-fun b!550998 () Bool)

(declare-fun res!236158 () Bool)

(assert (=> b!550998 (=> res!236158 e!333217)))

(assert (=> b!550998 (= res!236158 (or (not (= lt!232401 lt!232424)) (not (= (originalCharacters!1072 (_1!3498 (v!16207 lt!232428))) (originalCharacters!1072 token!491)))))))

(declare-fun b!550999 () Bool)

(declare-fun e!333215 () Bool)

(assert (=> b!550999 (= e!333215 e!333232)))

(declare-fun res!236156 () Bool)

(assert (=> b!550999 (=> (not res!236156) (not e!333232))))

(declare-fun lt!232420 () tuple2!6468)

(assert (=> b!550999 (= res!236156 (and (= (_1!3498 lt!232420) token!491) (= (_2!3498 lt!232420) suffix!1342)))))

(declare-fun lt!232407 () Option!1383)

(assert (=> b!550999 (= lt!232420 (get!2064 lt!232407))))

(declare-fun b!551000 () Bool)

(assert (=> b!551000 (= e!333212 e!333215)))

(declare-fun res!236166 () Bool)

(assert (=> b!551000 (=> (not res!236166) (not e!333215))))

(assert (=> b!551000 (= res!236166 (isDefined!1195 lt!232407))))

(assert (=> b!551000 (= lt!232407 (maxPrefix!617 thiss!22590 rules!3103 lt!232404))))

(assert (=> b!551000 (= lt!232404 (++!1521 input!2705 suffix!1342))))

(declare-fun res!236149 () Bool)

(assert (=> start!50988 (=> (not res!236149) (not e!333241))))

(assert (=> start!50988 (= res!236149 ((_ is Lexer!917) thiss!22590))))

(assert (=> start!50988 e!333241))

(assert (=> start!50988 e!333228))

(assert (=> start!50988 e!333220))

(declare-fun inv!6832 (Token!1802) Bool)

(assert (=> start!50988 (and (inv!6832 token!491) e!333239)))

(assert (=> start!50988 true))

(declare-fun e!333234 () Bool)

(assert (=> start!50988 e!333234))

(declare-fun b!550985 () Bool)

(declare-fun e!333223 () Bool)

(declare-fun rulesValidInductive!366 (LexerInterface!919 List!5457) Bool)

(assert (=> b!550985 (= e!333223 (rulesValidInductive!366 thiss!22590 rules!3103))))

(declare-fun b!551001 () Bool)

(declare-fun res!236169 () Bool)

(assert (=> b!551001 (=> (not res!236169) (not e!333219))))

(assert (=> b!551001 (= res!236169 (= (size!4358 token!491) (size!4359 (originalCharacters!1072 token!491))))))

(declare-fun b!551002 () Bool)

(assert (=> b!551002 (= e!333217 e!333223)))

(declare-fun res!236162 () Bool)

(assert (=> b!551002 (=> res!236162 e!333223)))

(assert (=> b!551002 (= res!236162 (or (not (= (size!4358 (_1!3498 (v!16207 lt!232428))) (size!4358 token!491))) (not (= (_1!3498 (v!16207 lt!232428)) token!491)) (not (= lt!232428 (Some!1382 (tuple2!6469 token!491 Nil!5445))))))))

(assert (=> b!551002 (= (rule!1757 (_1!3498 (v!16207 lt!232428))) (rule!1757 token!491))))

(declare-fun lt!232410 () Unit!9668)

(declare-fun lemmaSameIndexThenSameElement!8 (List!5457 Rule!1866 Rule!1866) Unit!9668)

(assert (=> b!551002 (= lt!232410 (lemmaSameIndexThenSameElement!8 rules!3103 (rule!1757 (_1!3498 (v!16207 lt!232428))) (rule!1757 token!491)))))

(declare-fun lt!232419 () Unit!9668)

(assert (=> b!551002 (= lt!232419 e!333229)))

(declare-fun c!103616 () Bool)

(assert (=> b!551002 (= c!103616 (not (= (rule!1757 (_1!3498 (v!16207 lt!232428))) (rule!1757 token!491))))))

(declare-fun b!551003 () Bool)

(assert (=> b!551003 (= e!333225 (and (= (size!4358 (_1!3498 (v!16207 lt!232428))) lt!232405) (= (originalCharacters!1072 (_1!3498 (v!16207 lt!232428))) lt!232401) (= lt!232414 (tuple2!6469 (Token!1803 lt!232395 (rule!1757 (_1!3498 (v!16207 lt!232428))) lt!232405 lt!232401) lt!232389))))))

(declare-fun b!551004 () Bool)

(declare-fun e!333218 () Bool)

(assert (=> b!551004 (= e!333218 false)))

(declare-fun b!551005 () Bool)

(declare-fun res!236163 () Bool)

(assert (=> b!551005 (=> (not res!236163) (not e!333241))))

(declare-fun rulesInvariant!882 (LexerInterface!919 List!5457) Bool)

(assert (=> b!551005 (= res!236163 (rulesInvariant!882 thiss!22590 rules!3103))))

(declare-fun b!551006 () Bool)

(declare-fun tp!174304 () Bool)

(assert (=> b!551006 (= e!333234 (and tp_is_empty!3089 tp!174304))))

(declare-fun b!551007 () Bool)

(declare-fun res!236145 () Bool)

(assert (=> b!551007 (=> (not res!236145) (not e!333241))))

(declare-fun isEmpty!3931 (List!5457) Bool)

(assert (=> b!551007 (= res!236145 (not (isEmpty!3931 rules!3103)))))

(declare-fun b!551008 () Bool)

(declare-fun Unit!9674 () Unit!9668)

(assert (=> b!551008 (= e!333229 Unit!9674)))

(declare-fun b!551009 () Bool)

(declare-fun res!236168 () Bool)

(assert (=> b!551009 (=> (not res!236168) (not e!333225))))

(assert (=> b!551009 (= res!236168 (= (size!4358 (_1!3498 (v!16207 lt!232428))) (size!4359 (originalCharacters!1072 (_1!3498 (v!16207 lt!232428))))))))

(declare-fun e!333231 () Bool)

(assert (=> b!551010 (= e!333231 (and tp!174306 tp!174301))))

(declare-fun b!551011 () Bool)

(declare-fun res!236167 () Bool)

(assert (=> b!551011 (=> res!236167 e!333217)))

(assert (=> b!551011 (= res!236167 (not (contains!1275 rules!3103 (rule!1757 (_1!3498 (v!16207 lt!232428))))))))

(declare-fun tp!174299 () Bool)

(declare-fun b!551012 () Bool)

(assert (=> b!551012 (= e!333221 (and tp!174299 (inv!6828 (tag!1295 (h!10848 rules!3103))) (inv!6831 (transformation!1033 (h!10848 rules!3103))) e!333231))))

(declare-fun b!551013 () Bool)

(declare-fun res!236164 () Bool)

(assert (=> b!551013 (=> res!236164 e!333217)))

(assert (=> b!551013 (= res!236164 (not (isEmpty!3930 (_2!3498 (v!16207 lt!232428)))))))

(declare-fun b!551014 () Bool)

(assert (=> b!551014 (= e!333214 e!333224)))

(declare-fun res!236160 () Bool)

(assert (=> b!551014 (=> res!236160 e!333224)))

(assert (=> b!551014 (= res!236160 (>= lt!232405 lt!232422))))

(declare-fun b!551015 () Bool)

(declare-fun Unit!9675 () Unit!9668)

(assert (=> b!551015 (= e!333242 Unit!9675)))

(declare-fun lt!232417 () Unit!9668)

(assert (=> b!551015 (= lt!232417 (lemmaSemiInverse!162 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) lt!232409))))

(declare-fun lt!232408 () Unit!9668)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!38 (LexerInterface!919 List!5457 Rule!1866 List!5455 List!5455 List!5455 Rule!1866) Unit!9668)

(assert (=> b!551015 (= lt!232408 (lemmaMaxPrefixOutputsMaxPrefix!38 thiss!22590 rules!3103 (rule!1757 (_1!3498 (v!16207 lt!232428))) lt!232401 input!2705 input!2705 (rule!1757 token!491)))))

(declare-fun res!236146 () Bool)

(assert (=> b!551015 (= res!236146 (not (matchR!526 (regex!1033 (rule!1757 token!491)) input!2705)))))

(assert (=> b!551015 (=> (not res!236146) (not e!333233))))

(assert (=> b!551015 e!333233))

(declare-fun b!551016 () Bool)

(assert (=> b!551016 e!333218))

(declare-fun res!236152 () Bool)

(assert (=> b!551016 (=> (not res!236152) (not e!333218))))

(assert (=> b!551016 (= res!236152 (not (matchR!526 (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) input!2705)))))

(declare-fun lt!232415 () Unit!9668)

(assert (=> b!551016 (= lt!232415 (lemmaMaxPrefNoSmallerRuleMatches!16 thiss!22590 rules!3103 (rule!1757 token!491) input!2705 lt!232404 (rule!1757 (_1!3498 (v!16207 lt!232428)))))))

(declare-fun Unit!9676 () Unit!9668)

(assert (=> b!551016 (= e!333216 Unit!9676)))

(declare-fun b!551017 () Bool)

(declare-fun Unit!9677 () Unit!9668)

(assert (=> b!551017 (= e!333242 Unit!9677)))

(assert (=> b!551018 (= e!333230 (and tp!174300 tp!174305))))

(declare-fun b!551019 () Bool)

(declare-fun Unit!9678 () Unit!9668)

(assert (=> b!551019 (= e!333243 Unit!9678)))

(assert (=> b!551019 false))

(assert (= (and start!50988 res!236149) b!551007))

(assert (= (and b!551007 res!236145) b!551005))

(assert (= (and b!551005 res!236163) b!550975))

(assert (= (and b!550975 res!236144) b!550986))

(assert (= (and b!550986 res!236170) b!551000))

(assert (= (and b!551000 res!236166) b!550999))

(assert (= (and b!550999 res!236156) b!550991))

(assert (= (and b!550991 res!236154) b!550978))

(assert (= (and b!550978 res!236155) b!550979))

(assert (= (and b!550979 c!103618) b!551019))

(assert (= (and b!550979 (not c!103618)) b!550981))

(assert (= (and b!550979 res!236147) b!551009))

(assert (= (and b!551009 res!236168) b!551003))

(assert (= (and b!550979 (not res!236157)) b!550977))

(assert (= (and b!550977 res!236161) b!551001))

(assert (= (and b!551001 res!236169) b!550982))

(assert (= (and b!550977 res!236159) b!551014))

(assert (= (and b!551014 (not res!236160)) b!550995))

(assert (= (and b!550995 res!236151) b!550996))

(assert (= (and b!550996 res!236148) b!550983))

(assert (= (and b!550977 c!103619) b!551015))

(assert (= (and b!550977 (not c!103619)) b!551017))

(assert (= (and b!551015 res!236146) b!550988))

(assert (= (and b!550977 (not res!236150)) b!551013))

(assert (= (and b!551013 (not res!236164)) b!550998))

(assert (= (and b!550998 (not res!236158)) b!551011))

(assert (= (and b!551011 (not res!236167)) b!550997))

(assert (= (and b!550997 (not res!236153)) b!551002))

(assert (= (and b!551002 c!103616) b!550994))

(assert (= (and b!551002 (not c!103616)) b!551008))

(assert (= (and b!550994 c!103617) b!551016))

(assert (= (and b!550994 (not c!103617)) b!550992))

(assert (= (and b!551016 res!236152) b!551004))

(assert (= (and b!550994 c!103615) b!550993))

(assert (= (and b!550994 (not c!103615)) b!550980))

(assert (= (and b!550993 res!236165) b!550987))

(assert (= (and b!551002 (not res!236162)) b!550985))

(assert (= (and start!50988 ((_ is Cons!5445) suffix!1342)) b!550990))

(assert (= b!551012 b!551010))

(assert (= b!550984 b!551012))

(assert (= (and start!50988 ((_ is Cons!5447) rules!3103)) b!550984))

(assert (= b!550989 b!551018))

(assert (= b!550976 b!550989))

(assert (= start!50988 b!550976))

(assert (= (and start!50988 ((_ is Cons!5445) input!2705)) b!551006))

(declare-fun m!800371 () Bool)

(assert (=> b!551012 m!800371))

(declare-fun m!800373 () Bool)

(assert (=> b!551012 m!800373))

(declare-fun m!800375 () Bool)

(assert (=> b!551007 m!800375))

(declare-fun m!800377 () Bool)

(assert (=> b!550978 m!800377))

(declare-fun m!800379 () Bool)

(assert (=> b!550976 m!800379))

(declare-fun m!800381 () Bool)

(assert (=> b!551009 m!800381))

(declare-fun m!800383 () Bool)

(assert (=> b!550975 m!800383))

(declare-fun m!800385 () Bool)

(assert (=> b!550977 m!800385))

(declare-fun m!800387 () Bool)

(assert (=> b!550977 m!800387))

(declare-fun m!800389 () Bool)

(assert (=> b!550977 m!800389))

(declare-fun m!800391 () Bool)

(assert (=> b!550977 m!800391))

(declare-fun m!800393 () Bool)

(assert (=> b!550977 m!800393))

(declare-fun m!800395 () Bool)

(assert (=> b!550977 m!800395))

(declare-fun m!800397 () Bool)

(assert (=> b!550977 m!800397))

(declare-fun m!800399 () Bool)

(assert (=> b!550977 m!800399))

(declare-fun m!800401 () Bool)

(assert (=> b!550977 m!800401))

(declare-fun m!800403 () Bool)

(assert (=> b!550977 m!800403))

(declare-fun m!800405 () Bool)

(assert (=> b!550993 m!800405))

(declare-fun m!800407 () Bool)

(assert (=> b!550993 m!800407))

(declare-fun m!800409 () Bool)

(assert (=> b!551002 m!800409))

(declare-fun m!800411 () Bool)

(assert (=> b!550997 m!800411))

(declare-fun m!800413 () Bool)

(assert (=> b!550994 m!800413))

(declare-fun m!800415 () Bool)

(assert (=> b!550994 m!800415))

(declare-fun m!800417 () Bool)

(assert (=> b!550991 m!800417))

(declare-fun m!800419 () Bool)

(assert (=> b!550999 m!800419))

(declare-fun m!800421 () Bool)

(assert (=> b!550986 m!800421))

(assert (=> b!550986 m!800421))

(declare-fun m!800423 () Bool)

(assert (=> b!550986 m!800423))

(declare-fun m!800425 () Bool)

(assert (=> b!550979 m!800425))

(declare-fun m!800427 () Bool)

(assert (=> b!550979 m!800427))

(declare-fun m!800429 () Bool)

(assert (=> b!550979 m!800429))

(declare-fun m!800431 () Bool)

(assert (=> b!550979 m!800431))

(declare-fun m!800433 () Bool)

(assert (=> b!550979 m!800433))

(declare-fun m!800435 () Bool)

(assert (=> b!550979 m!800435))

(declare-fun m!800437 () Bool)

(assert (=> b!550979 m!800437))

(declare-fun m!800439 () Bool)

(assert (=> b!550979 m!800439))

(declare-fun m!800441 () Bool)

(assert (=> b!550979 m!800441))

(declare-fun m!800443 () Bool)

(assert (=> b!550979 m!800443))

(declare-fun m!800445 () Bool)

(assert (=> b!550979 m!800445))

(declare-fun m!800447 () Bool)

(assert (=> b!550979 m!800447))

(declare-fun m!800449 () Bool)

(assert (=> b!550979 m!800449))

(declare-fun m!800451 () Bool)

(assert (=> b!550979 m!800451))

(declare-fun m!800453 () Bool)

(assert (=> b!550979 m!800453))

(declare-fun m!800455 () Bool)

(assert (=> b!550979 m!800455))

(declare-fun m!800457 () Bool)

(assert (=> b!550979 m!800457))

(declare-fun m!800459 () Bool)

(assert (=> b!550979 m!800459))

(declare-fun m!800461 () Bool)

(assert (=> b!550979 m!800461))

(declare-fun m!800463 () Bool)

(assert (=> b!550979 m!800463))

(declare-fun m!800465 () Bool)

(assert (=> b!550979 m!800465))

(declare-fun m!800467 () Bool)

(assert (=> b!550979 m!800467))

(declare-fun m!800469 () Bool)

(assert (=> b!550979 m!800469))

(assert (=> b!550979 m!800457))

(declare-fun m!800471 () Bool)

(assert (=> b!550979 m!800471))

(declare-fun m!800473 () Bool)

(assert (=> b!550979 m!800473))

(declare-fun m!800475 () Bool)

(assert (=> b!550979 m!800475))

(declare-fun m!800477 () Bool)

(assert (=> b!550979 m!800477))

(assert (=> b!551015 m!800393))

(declare-fun m!800479 () Bool)

(assert (=> b!551015 m!800479))

(assert (=> b!551015 m!800405))

(declare-fun m!800481 () Bool)

(assert (=> b!551011 m!800481))

(declare-fun m!800483 () Bool)

(assert (=> start!50988 m!800483))

(declare-fun m!800485 () Bool)

(assert (=> b!551016 m!800485))

(declare-fun m!800487 () Bool)

(assert (=> b!551016 m!800487))

(declare-fun m!800489 () Bool)

(assert (=> b!550996 m!800489))

(declare-fun m!800491 () Bool)

(assert (=> b!551001 m!800491))

(declare-fun m!800493 () Bool)

(assert (=> b!550989 m!800493))

(declare-fun m!800495 () Bool)

(assert (=> b!550989 m!800495))

(declare-fun m!800497 () Bool)

(assert (=> b!551000 m!800497))

(declare-fun m!800499 () Bool)

(assert (=> b!551000 m!800499))

(declare-fun m!800501 () Bool)

(assert (=> b!551000 m!800501))

(declare-fun m!800503 () Bool)

(assert (=> b!550995 m!800503))

(declare-fun m!800505 () Bool)

(assert (=> b!551013 m!800505))

(declare-fun m!800507 () Bool)

(assert (=> b!551005 m!800507))

(declare-fun m!800509 () Bool)

(assert (=> b!550985 m!800509))

(check-sat (not b!551012) (not b!551005) (not b!551015) (not b!550984) (not b!551002) (not b!551001) (not b!551013) (not b!550993) tp_is_empty!3089 (not b!550977) (not b!550990) (not b!550995) (not b_next!15391) (not b!551007) (not b!550985) (not b!550991) (not b_next!15385) (not b_next!15387) (not b!551011) (not b!550975) (not b!550999) b_and!53779 (not start!50988) (not b!550997) (not b_next!15389) (not b!551006) (not b!550996) b_and!53783 b_and!53781 (not b!550978) (not b!551000) (not b!550979) (not b!551009) (not b!550976) (not b!551016) b_and!53785 (not b!550989) (not b!550994) (not b!550986))
(check-sat (not b_next!15391) b_and!53779 (not b_next!15389) b_and!53783 b_and!53781 b_and!53785 (not b_next!15385) (not b_next!15387))
(get-model)

(declare-fun d!192312 () Bool)

(declare-fun fromListB!534 (List!5455) BalanceConc!3508)

(assert (=> d!192312 (= (seqFromList!1231 lt!232424) (fromListB!534 lt!232424))))

(declare-fun bs!67852 () Bool)

(assert (= bs!67852 d!192312))

(declare-fun m!800511 () Bool)

(assert (=> bs!67852 m!800511))

(assert (=> b!550977 d!192312))

(declare-fun d!192314 () Bool)

(assert (=> d!192314 (= (maxPrefixOneRule!332 thiss!22590 (rule!1757 (_1!3498 (v!16207 lt!232428))) input!2705) (Some!1382 (tuple2!6469 (Token!1803 (apply!1308 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) (seqFromList!1231 lt!232401)) (rule!1757 (_1!3498 (v!16207 lt!232428))) (size!4359 lt!232401) lt!232401) (_2!3498 (v!16207 lt!232428)))))))

(declare-fun lt!232436 () Unit!9668)

(declare-fun choose!3924 (LexerInterface!919 List!5457 List!5455 List!5455 List!5455 Rule!1866) Unit!9668)

(assert (=> d!192314 (= lt!232436 (choose!3924 thiss!22590 rules!3103 lt!232401 input!2705 (_2!3498 (v!16207 lt!232428)) (rule!1757 (_1!3498 (v!16207 lt!232428)))))))

(assert (=> d!192314 (not (isEmpty!3931 rules!3103))))

(assert (=> d!192314 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!84 thiss!22590 rules!3103 lt!232401 input!2705 (_2!3498 (v!16207 lt!232428)) (rule!1757 (_1!3498 (v!16207 lt!232428)))) lt!232436)))

(declare-fun bs!67854 () Bool)

(assert (= bs!67854 d!192314))

(assert (=> bs!67854 m!800455))

(assert (=> bs!67854 m!800445))

(declare-fun m!800515 () Bool)

(assert (=> bs!67854 m!800515))

(declare-fun m!800517 () Bool)

(assert (=> bs!67854 m!800517))

(assert (=> bs!67854 m!800397))

(assert (=> bs!67854 m!800375))

(assert (=> bs!67854 m!800445))

(assert (=> b!550977 d!192314))

(declare-fun d!192320 () Bool)

(assert (=> d!192320 (= (maxPrefixOneRule!332 thiss!22590 (rule!1757 token!491) lt!232404) (Some!1382 (tuple2!6469 (Token!1803 (apply!1308 (transformation!1033 (rule!1757 token!491)) (seqFromList!1231 lt!232424)) (rule!1757 token!491) (size!4359 lt!232424) lt!232424) suffix!1342)))))

(declare-fun lt!232437 () Unit!9668)

(assert (=> d!192320 (= lt!232437 (choose!3924 thiss!22590 rules!3103 lt!232424 lt!232404 suffix!1342 (rule!1757 token!491)))))

(assert (=> d!192320 (not (isEmpty!3931 rules!3103))))

(assert (=> d!192320 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!84 thiss!22590 rules!3103 lt!232424 lt!232404 suffix!1342 (rule!1757 token!491)) lt!232437)))

(declare-fun bs!67855 () Bool)

(assert (= bs!67855 d!192320))

(assert (=> bs!67855 m!800463))

(assert (=> bs!67855 m!800401))

(declare-fun m!800519 () Bool)

(assert (=> bs!67855 m!800519))

(declare-fun m!800521 () Bool)

(assert (=> bs!67855 m!800521))

(assert (=> bs!67855 m!800403))

(assert (=> bs!67855 m!800375))

(assert (=> bs!67855 m!800401))

(assert (=> b!550977 d!192320))

(declare-fun d!192322 () Bool)

(declare-fun e!333273 () Bool)

(assert (=> d!192322 e!333273))

(declare-fun res!236220 () Bool)

(assert (=> d!192322 (=> res!236220 e!333273)))

(declare-fun lt!232469 () Option!1383)

(declare-fun isEmpty!3933 (Option!1383) Bool)

(assert (=> d!192322 (= res!236220 (isEmpty!3933 lt!232469))))

(declare-fun e!333275 () Option!1383)

(assert (=> d!192322 (= lt!232469 e!333275)))

(declare-fun c!103630 () Bool)

(declare-datatypes ((tuple2!6470 0))(
  ( (tuple2!6471 (_1!3499 List!5455) (_2!3499 List!5455)) )
))
(declare-fun lt!232472 () tuple2!6470)

(assert (=> d!192322 (= c!103630 (isEmpty!3930 (_1!3499 lt!232472)))))

(declare-fun findLongestMatch!123 (Regex!1367 List!5455) tuple2!6470)

(assert (=> d!192322 (= lt!232472 (findLongestMatch!123 (regex!1033 (rule!1757 token!491)) lt!232404))))

(assert (=> d!192322 (ruleValid!253 thiss!22590 (rule!1757 token!491))))

(assert (=> d!192322 (= (maxPrefixOneRule!332 thiss!22590 (rule!1757 token!491) lt!232404) lt!232469)))

(declare-fun b!551081 () Bool)

(declare-fun res!236225 () Bool)

(declare-fun e!333272 () Bool)

(assert (=> b!551081 (=> (not res!236225) (not e!333272))))

(assert (=> b!551081 (= res!236225 (< (size!4359 (_2!3498 (get!2064 lt!232469))) (size!4359 lt!232404)))))

(declare-fun b!551082 () Bool)

(declare-fun res!236226 () Bool)

(assert (=> b!551082 (=> (not res!236226) (not e!333272))))

(assert (=> b!551082 (= res!236226 (= (++!1521 (list!2257 (charsOf!662 (_1!3498 (get!2064 lt!232469)))) (_2!3498 (get!2064 lt!232469))) lt!232404))))

(declare-fun b!551083 () Bool)

(declare-fun res!236221 () Bool)

(assert (=> b!551083 (=> (not res!236221) (not e!333272))))

(assert (=> b!551083 (= res!236221 (= (value!34307 (_1!3498 (get!2064 lt!232469))) (apply!1308 (transformation!1033 (rule!1757 (_1!3498 (get!2064 lt!232469)))) (seqFromList!1231 (originalCharacters!1072 (_1!3498 (get!2064 lt!232469)))))))))

(declare-fun b!551084 () Bool)

(declare-fun size!4360 (BalanceConc!3508) Int)

(assert (=> b!551084 (= e!333275 (Some!1382 (tuple2!6469 (Token!1803 (apply!1308 (transformation!1033 (rule!1757 token!491)) (seqFromList!1231 (_1!3499 lt!232472))) (rule!1757 token!491) (size!4360 (seqFromList!1231 (_1!3499 lt!232472))) (_1!3499 lt!232472)) (_2!3499 lt!232472))))))

(declare-fun lt!232468 () Unit!9668)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!128 (Regex!1367 List!5455) Unit!9668)

(assert (=> b!551084 (= lt!232468 (longestMatchIsAcceptedByMatchOrIsEmpty!128 (regex!1033 (rule!1757 token!491)) lt!232404))))

(declare-fun res!236224 () Bool)

(declare-fun findLongestMatchInner!144 (Regex!1367 List!5455 Int List!5455 List!5455 Int) tuple2!6470)

(assert (=> b!551084 (= res!236224 (isEmpty!3930 (_1!3499 (findLongestMatchInner!144 (regex!1033 (rule!1757 token!491)) Nil!5445 (size!4359 Nil!5445) lt!232404 lt!232404 (size!4359 lt!232404)))))))

(declare-fun e!333274 () Bool)

(assert (=> b!551084 (=> res!236224 e!333274)))

(assert (=> b!551084 e!333274))

(declare-fun lt!232470 () Unit!9668)

(assert (=> b!551084 (= lt!232470 lt!232468)))

(declare-fun lt!232471 () Unit!9668)

(assert (=> b!551084 (= lt!232471 (lemmaSemiInverse!162 (transformation!1033 (rule!1757 token!491)) (seqFromList!1231 (_1!3499 lt!232472))))))

(declare-fun b!551085 () Bool)

(declare-fun res!236222 () Bool)

(assert (=> b!551085 (=> (not res!236222) (not e!333272))))

(assert (=> b!551085 (= res!236222 (= (rule!1757 (_1!3498 (get!2064 lt!232469))) (rule!1757 token!491)))))

(declare-fun b!551086 () Bool)

(assert (=> b!551086 (= e!333272 (= (size!4358 (_1!3498 (get!2064 lt!232469))) (size!4359 (originalCharacters!1072 (_1!3498 (get!2064 lt!232469))))))))

(declare-fun b!551087 () Bool)

(assert (=> b!551087 (= e!333273 e!333272)))

(declare-fun res!236223 () Bool)

(assert (=> b!551087 (=> (not res!236223) (not e!333272))))

(assert (=> b!551087 (= res!236223 (matchR!526 (regex!1033 (rule!1757 token!491)) (list!2257 (charsOf!662 (_1!3498 (get!2064 lt!232469))))))))

(declare-fun b!551088 () Bool)

(assert (=> b!551088 (= e!333275 None!1382)))

(declare-fun b!551089 () Bool)

(assert (=> b!551089 (= e!333274 (matchR!526 (regex!1033 (rule!1757 token!491)) (_1!3499 (findLongestMatchInner!144 (regex!1033 (rule!1757 token!491)) Nil!5445 (size!4359 Nil!5445) lt!232404 lt!232404 (size!4359 lt!232404)))))))

(assert (= (and d!192322 c!103630) b!551088))

(assert (= (and d!192322 (not c!103630)) b!551084))

(assert (= (and b!551084 (not res!236224)) b!551089))

(assert (= (and d!192322 (not res!236220)) b!551087))

(assert (= (and b!551087 res!236223) b!551082))

(assert (= (and b!551082 res!236226) b!551081))

(assert (= (and b!551081 res!236225) b!551085))

(assert (= (and b!551085 res!236222) b!551083))

(assert (= (and b!551083 res!236221) b!551086))

(declare-fun m!800569 () Bool)

(assert (=> d!192322 m!800569))

(declare-fun m!800571 () Bool)

(assert (=> d!192322 m!800571))

(declare-fun m!800573 () Bool)

(assert (=> d!192322 m!800573))

(assert (=> d!192322 m!800431))

(declare-fun m!800575 () Bool)

(assert (=> b!551086 m!800575))

(declare-fun m!800577 () Bool)

(assert (=> b!551086 m!800577))

(declare-fun m!800579 () Bool)

(assert (=> b!551089 m!800579))

(declare-fun m!800581 () Bool)

(assert (=> b!551089 m!800581))

(assert (=> b!551089 m!800579))

(assert (=> b!551089 m!800581))

(declare-fun m!800583 () Bool)

(assert (=> b!551089 m!800583))

(declare-fun m!800585 () Bool)

(assert (=> b!551089 m!800585))

(assert (=> b!551082 m!800575))

(declare-fun m!800587 () Bool)

(assert (=> b!551082 m!800587))

(assert (=> b!551082 m!800587))

(declare-fun m!800589 () Bool)

(assert (=> b!551082 m!800589))

(assert (=> b!551082 m!800589))

(declare-fun m!800591 () Bool)

(assert (=> b!551082 m!800591))

(assert (=> b!551087 m!800575))

(assert (=> b!551087 m!800587))

(assert (=> b!551087 m!800587))

(assert (=> b!551087 m!800589))

(assert (=> b!551087 m!800589))

(declare-fun m!800593 () Bool)

(assert (=> b!551087 m!800593))

(declare-fun m!800595 () Bool)

(assert (=> b!551084 m!800595))

(declare-fun m!800597 () Bool)

(assert (=> b!551084 m!800597))

(assert (=> b!551084 m!800579))

(assert (=> b!551084 m!800581))

(assert (=> b!551084 m!800583))

(assert (=> b!551084 m!800595))

(assert (=> b!551084 m!800581))

(assert (=> b!551084 m!800579))

(declare-fun m!800599 () Bool)

(assert (=> b!551084 m!800599))

(declare-fun m!800601 () Bool)

(assert (=> b!551084 m!800601))

(assert (=> b!551084 m!800595))

(declare-fun m!800603 () Bool)

(assert (=> b!551084 m!800603))

(assert (=> b!551084 m!800595))

(declare-fun m!800605 () Bool)

(assert (=> b!551084 m!800605))

(assert (=> b!551081 m!800575))

(declare-fun m!800607 () Bool)

(assert (=> b!551081 m!800607))

(assert (=> b!551081 m!800581))

(assert (=> b!551085 m!800575))

(assert (=> b!551083 m!800575))

(declare-fun m!800609 () Bool)

(assert (=> b!551083 m!800609))

(assert (=> b!551083 m!800609))

(declare-fun m!800611 () Bool)

(assert (=> b!551083 m!800611))

(assert (=> b!550977 d!192322))

(declare-fun b!551254 () Bool)

(declare-fun e!333374 () Bool)

(assert (=> b!551254 (= e!333374 true)))

(declare-fun d!192328 () Bool)

(assert (=> d!192328 e!333374))

(assert (= d!192328 b!551254))

(declare-fun lambda!15532 () Int)

(declare-fun order!4517 () Int)

(declare-fun order!4519 () Int)

(declare-fun dynLambda!3177 (Int Int) Int)

(declare-fun dynLambda!3178 (Int Int) Int)

(assert (=> b!551254 (< (dynLambda!3177 order!4517 (toValue!1880 (transformation!1033 (rule!1757 token!491)))) (dynLambda!3178 order!4519 lambda!15532))))

(declare-fun order!4521 () Int)

(declare-fun dynLambda!3179 (Int Int) Int)

(assert (=> b!551254 (< (dynLambda!3179 order!4521 (toChars!1739 (transformation!1033 (rule!1757 token!491)))) (dynLambda!3178 order!4519 lambda!15532))))

(declare-fun dynLambda!3180 (Int TokenValue!1057) BalanceConc!3508)

(declare-fun dynLambda!3181 (Int BalanceConc!3508) TokenValue!1057)

(assert (=> d!192328 (= (list!2257 (dynLambda!3180 (toChars!1739 (transformation!1033 (rule!1757 token!491))) (dynLambda!3181 (toValue!1880 (transformation!1033 (rule!1757 token!491))) lt!232403))) (list!2257 lt!232403))))

(declare-fun lt!232528 () Unit!9668)

(declare-fun ForallOf!94 (Int BalanceConc!3508) Unit!9668)

(assert (=> d!192328 (= lt!232528 (ForallOf!94 lambda!15532 lt!232403))))

(assert (=> d!192328 (= (lemmaSemiInverse!162 (transformation!1033 (rule!1757 token!491)) lt!232403) lt!232528)))

(declare-fun b_lambda!21203 () Bool)

(assert (=> (not b_lambda!21203) (not d!192328)))

(declare-fun tb!48187 () Bool)

(declare-fun t!75076 () Bool)

(assert (=> (and b!551010 (= (toChars!1739 (transformation!1033 (h!10848 rules!3103))) (toChars!1739 (transformation!1033 (rule!1757 token!491)))) t!75076) tb!48187))

(declare-fun tp!174314 () Bool)

(declare-fun e!333377 () Bool)

(declare-fun b!551259 () Bool)

(declare-fun inv!6835 (Conc!1750) Bool)

(assert (=> b!551259 (= e!333377 (and (inv!6835 (c!103621 (dynLambda!3180 (toChars!1739 (transformation!1033 (rule!1757 token!491))) (dynLambda!3181 (toValue!1880 (transformation!1033 (rule!1757 token!491))) lt!232403)))) tp!174314))))

(declare-fun result!53926 () Bool)

(declare-fun inv!6836 (BalanceConc!3508) Bool)

(assert (=> tb!48187 (= result!53926 (and (inv!6836 (dynLambda!3180 (toChars!1739 (transformation!1033 (rule!1757 token!491))) (dynLambda!3181 (toValue!1880 (transformation!1033 (rule!1757 token!491))) lt!232403))) e!333377))))

(assert (= tb!48187 b!551259))

(declare-fun m!800793 () Bool)

(assert (=> b!551259 m!800793))

(declare-fun m!800795 () Bool)

(assert (=> tb!48187 m!800795))

(assert (=> d!192328 t!75076))

(declare-fun b_and!53811 () Bool)

(assert (= b_and!53781 (and (=> t!75076 result!53926) b_and!53811)))

(declare-fun t!75078 () Bool)

(declare-fun tb!48189 () Bool)

(assert (=> (and b!551018 (= (toChars!1739 (transformation!1033 (rule!1757 token!491))) (toChars!1739 (transformation!1033 (rule!1757 token!491)))) t!75078) tb!48189))

(declare-fun result!53930 () Bool)

(assert (= result!53930 result!53926))

(assert (=> d!192328 t!75078))

(declare-fun b_and!53813 () Bool)

(assert (= b_and!53785 (and (=> t!75078 result!53930) b_and!53813)))

(declare-fun b_lambda!21205 () Bool)

(assert (=> (not b_lambda!21205) (not d!192328)))

(declare-fun t!75080 () Bool)

(declare-fun tb!48191 () Bool)

(assert (=> (and b!551010 (= (toValue!1880 (transformation!1033 (h!10848 rules!3103))) (toValue!1880 (transformation!1033 (rule!1757 token!491)))) t!75080) tb!48191))

(declare-fun result!53932 () Bool)

(assert (=> tb!48191 (= result!53932 (inv!21 (dynLambda!3181 (toValue!1880 (transformation!1033 (rule!1757 token!491))) lt!232403)))))

(declare-fun m!800797 () Bool)

(assert (=> tb!48191 m!800797))

(assert (=> d!192328 t!75080))

(declare-fun b_and!53815 () Bool)

(assert (= b_and!53779 (and (=> t!75080 result!53932) b_and!53815)))

(declare-fun t!75082 () Bool)

(declare-fun tb!48193 () Bool)

(assert (=> (and b!551018 (= (toValue!1880 (transformation!1033 (rule!1757 token!491))) (toValue!1880 (transformation!1033 (rule!1757 token!491)))) t!75082) tb!48193))

(declare-fun result!53936 () Bool)

(assert (= result!53936 result!53932))

(assert (=> d!192328 t!75082))

(declare-fun b_and!53817 () Bool)

(assert (= b_and!53783 (and (=> t!75082 result!53936) b_and!53817)))

(declare-fun m!800799 () Bool)

(assert (=> d!192328 m!800799))

(declare-fun m!800801 () Bool)

(assert (=> d!192328 m!800801))

(assert (=> d!192328 m!800801))

(declare-fun m!800803 () Bool)

(assert (=> d!192328 m!800803))

(declare-fun m!800805 () Bool)

(assert (=> d!192328 m!800805))

(assert (=> d!192328 m!800799))

(declare-fun m!800807 () Bool)

(assert (=> d!192328 m!800807))

(assert (=> b!550977 d!192328))

(declare-fun d!192416 () Bool)

(assert (=> d!192416 (= (apply!1308 (transformation!1033 (rule!1757 token!491)) lt!232403) (dynLambda!3181 (toValue!1880 (transformation!1033 (rule!1757 token!491))) lt!232403))))

(declare-fun b_lambda!21207 () Bool)

(assert (=> (not b_lambda!21207) (not d!192416)))

(assert (=> d!192416 t!75080))

(declare-fun b_and!53819 () Bool)

(assert (= b_and!53815 (and (=> t!75080 result!53932) b_and!53819)))

(assert (=> d!192416 t!75082))

(declare-fun b_and!53821 () Bool)

(assert (= b_and!53817 (and (=> t!75082 result!53936) b_and!53821)))

(assert (=> d!192416 m!800799))

(assert (=> b!550977 d!192416))

(declare-fun d!192418 () Bool)

(declare-fun e!333382 () Bool)

(assert (=> d!192418 e!333382))

(declare-fun res!236317 () Bool)

(assert (=> d!192418 (=> res!236317 e!333382)))

(declare-fun lt!232530 () Option!1383)

(assert (=> d!192418 (= res!236317 (isEmpty!3933 lt!232530))))

(declare-fun e!333384 () Option!1383)

(assert (=> d!192418 (= lt!232530 e!333384)))

(declare-fun c!103660 () Bool)

(declare-fun lt!232533 () tuple2!6470)

(assert (=> d!192418 (= c!103660 (isEmpty!3930 (_1!3499 lt!232533)))))

(assert (=> d!192418 (= lt!232533 (findLongestMatch!123 (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) input!2705))))

(assert (=> d!192418 (ruleValid!253 thiss!22590 (rule!1757 (_1!3498 (v!16207 lt!232428))))))

(assert (=> d!192418 (= (maxPrefixOneRule!332 thiss!22590 (rule!1757 (_1!3498 (v!16207 lt!232428))) input!2705) lt!232530)))

(declare-fun b!551262 () Bool)

(declare-fun res!236322 () Bool)

(declare-fun e!333381 () Bool)

(assert (=> b!551262 (=> (not res!236322) (not e!333381))))

(assert (=> b!551262 (= res!236322 (< (size!4359 (_2!3498 (get!2064 lt!232530))) (size!4359 input!2705)))))

(declare-fun b!551263 () Bool)

(declare-fun res!236323 () Bool)

(assert (=> b!551263 (=> (not res!236323) (not e!333381))))

(assert (=> b!551263 (= res!236323 (= (++!1521 (list!2257 (charsOf!662 (_1!3498 (get!2064 lt!232530)))) (_2!3498 (get!2064 lt!232530))) input!2705))))

(declare-fun b!551264 () Bool)

(declare-fun res!236318 () Bool)

(assert (=> b!551264 (=> (not res!236318) (not e!333381))))

(assert (=> b!551264 (= res!236318 (= (value!34307 (_1!3498 (get!2064 lt!232530))) (apply!1308 (transformation!1033 (rule!1757 (_1!3498 (get!2064 lt!232530)))) (seqFromList!1231 (originalCharacters!1072 (_1!3498 (get!2064 lt!232530)))))))))

(declare-fun b!551265 () Bool)

(assert (=> b!551265 (= e!333384 (Some!1382 (tuple2!6469 (Token!1803 (apply!1308 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) (seqFromList!1231 (_1!3499 lt!232533))) (rule!1757 (_1!3498 (v!16207 lt!232428))) (size!4360 (seqFromList!1231 (_1!3499 lt!232533))) (_1!3499 lt!232533)) (_2!3499 lt!232533))))))

(declare-fun lt!232529 () Unit!9668)

(assert (=> b!551265 (= lt!232529 (longestMatchIsAcceptedByMatchOrIsEmpty!128 (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) input!2705))))

(declare-fun res!236321 () Bool)

(assert (=> b!551265 (= res!236321 (isEmpty!3930 (_1!3499 (findLongestMatchInner!144 (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) Nil!5445 (size!4359 Nil!5445) input!2705 input!2705 (size!4359 input!2705)))))))

(declare-fun e!333383 () Bool)

(assert (=> b!551265 (=> res!236321 e!333383)))

(assert (=> b!551265 e!333383))

(declare-fun lt!232531 () Unit!9668)

(assert (=> b!551265 (= lt!232531 lt!232529)))

(declare-fun lt!232532 () Unit!9668)

(assert (=> b!551265 (= lt!232532 (lemmaSemiInverse!162 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) (seqFromList!1231 (_1!3499 lt!232533))))))

(declare-fun b!551266 () Bool)

(declare-fun res!236319 () Bool)

(assert (=> b!551266 (=> (not res!236319) (not e!333381))))

(assert (=> b!551266 (= res!236319 (= (rule!1757 (_1!3498 (get!2064 lt!232530))) (rule!1757 (_1!3498 (v!16207 lt!232428)))))))

(declare-fun b!551267 () Bool)

(assert (=> b!551267 (= e!333381 (= (size!4358 (_1!3498 (get!2064 lt!232530))) (size!4359 (originalCharacters!1072 (_1!3498 (get!2064 lt!232530))))))))

(declare-fun b!551268 () Bool)

(assert (=> b!551268 (= e!333382 e!333381)))

(declare-fun res!236320 () Bool)

(assert (=> b!551268 (=> (not res!236320) (not e!333381))))

(assert (=> b!551268 (= res!236320 (matchR!526 (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) (list!2257 (charsOf!662 (_1!3498 (get!2064 lt!232530))))))))

(declare-fun b!551269 () Bool)

(assert (=> b!551269 (= e!333384 None!1382)))

(declare-fun b!551270 () Bool)

(assert (=> b!551270 (= e!333383 (matchR!526 (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) (_1!3499 (findLongestMatchInner!144 (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) Nil!5445 (size!4359 Nil!5445) input!2705 input!2705 (size!4359 input!2705)))))))

(assert (= (and d!192418 c!103660) b!551269))

(assert (= (and d!192418 (not c!103660)) b!551265))

(assert (= (and b!551265 (not res!236321)) b!551270))

(assert (= (and d!192418 (not res!236317)) b!551268))

(assert (= (and b!551268 res!236320) b!551263))

(assert (= (and b!551263 res!236323) b!551262))

(assert (= (and b!551262 res!236322) b!551266))

(assert (= (and b!551266 res!236319) b!551264))

(assert (= (and b!551264 res!236318) b!551267))

(declare-fun m!800809 () Bool)

(assert (=> d!192418 m!800809))

(declare-fun m!800811 () Bool)

(assert (=> d!192418 m!800811))

(declare-fun m!800813 () Bool)

(assert (=> d!192418 m!800813))

(assert (=> d!192418 m!800467))

(declare-fun m!800815 () Bool)

(assert (=> b!551267 m!800815))

(declare-fun m!800817 () Bool)

(assert (=> b!551267 m!800817))

(assert (=> b!551270 m!800579))

(declare-fun m!800819 () Bool)

(assert (=> b!551270 m!800819))

(assert (=> b!551270 m!800579))

(assert (=> b!551270 m!800819))

(declare-fun m!800821 () Bool)

(assert (=> b!551270 m!800821))

(declare-fun m!800823 () Bool)

(assert (=> b!551270 m!800823))

(assert (=> b!551263 m!800815))

(declare-fun m!800825 () Bool)

(assert (=> b!551263 m!800825))

(assert (=> b!551263 m!800825))

(declare-fun m!800827 () Bool)

(assert (=> b!551263 m!800827))

(assert (=> b!551263 m!800827))

(declare-fun m!800829 () Bool)

(assert (=> b!551263 m!800829))

(assert (=> b!551268 m!800815))

(assert (=> b!551268 m!800825))

(assert (=> b!551268 m!800825))

(assert (=> b!551268 m!800827))

(assert (=> b!551268 m!800827))

(declare-fun m!800831 () Bool)

(assert (=> b!551268 m!800831))

(declare-fun m!800833 () Bool)

(assert (=> b!551265 m!800833))

(declare-fun m!800835 () Bool)

(assert (=> b!551265 m!800835))

(assert (=> b!551265 m!800579))

(assert (=> b!551265 m!800819))

(assert (=> b!551265 m!800821))

(assert (=> b!551265 m!800833))

(assert (=> b!551265 m!800819))

(assert (=> b!551265 m!800579))

(declare-fun m!800837 () Bool)

(assert (=> b!551265 m!800837))

(declare-fun m!800839 () Bool)

(assert (=> b!551265 m!800839))

(assert (=> b!551265 m!800833))

(declare-fun m!800841 () Bool)

(assert (=> b!551265 m!800841))

(assert (=> b!551265 m!800833))

(declare-fun m!800843 () Bool)

(assert (=> b!551265 m!800843))

(assert (=> b!551262 m!800815))

(declare-fun m!800845 () Bool)

(assert (=> b!551262 m!800845))

(assert (=> b!551262 m!800819))

(assert (=> b!551266 m!800815))

(assert (=> b!551264 m!800815))

(declare-fun m!800847 () Bool)

(assert (=> b!551264 m!800847))

(assert (=> b!551264 m!800847))

(declare-fun m!800849 () Bool)

(assert (=> b!551264 m!800849))

(assert (=> b!550977 d!192418))

(declare-fun d!192420 () Bool)

(assert (=> d!192420 (= suffix!1342 lt!232402)))

(declare-fun lt!232536 () Unit!9668)

(declare-fun choose!3928 (List!5455 List!5455 List!5455 List!5455 List!5455) Unit!9668)

(assert (=> d!192420 (= lt!232536 (choose!3928 lt!232424 suffix!1342 lt!232424 lt!232402 lt!232404))))

(assert (=> d!192420 (isPrefix!675 lt!232424 lt!232404)))

(assert (=> d!192420 (= (lemmaSamePrefixThenSameSuffix!402 lt!232424 suffix!1342 lt!232424 lt!232402 lt!232404) lt!232536)))

(declare-fun bs!67872 () Bool)

(assert (= bs!67872 d!192420))

(declare-fun m!800851 () Bool)

(assert (=> bs!67872 m!800851))

(declare-fun m!800853 () Bool)

(assert (=> bs!67872 m!800853))

(assert (=> b!550977 d!192420))

(declare-fun d!192422 () Bool)

(declare-fun lt!232539 () List!5455)

(assert (=> d!192422 (= (++!1521 lt!232424 lt!232539) lt!232404)))

(declare-fun e!333387 () List!5455)

(assert (=> d!192422 (= lt!232539 e!333387)))

(declare-fun c!103663 () Bool)

(assert (=> d!192422 (= c!103663 ((_ is Cons!5445) lt!232424))))

(assert (=> d!192422 (>= (size!4359 lt!232404) (size!4359 lt!232424))))

(assert (=> d!192422 (= (getSuffix!198 lt!232404 lt!232424) lt!232539)))

(declare-fun b!551275 () Bool)

(declare-fun tail!727 (List!5455) List!5455)

(assert (=> b!551275 (= e!333387 (getSuffix!198 (tail!727 lt!232404) (t!75056 lt!232424)))))

(declare-fun b!551276 () Bool)

(assert (=> b!551276 (= e!333387 lt!232404)))

(assert (= (and d!192422 c!103663) b!551275))

(assert (= (and d!192422 (not c!103663)) b!551276))

(declare-fun m!800855 () Bool)

(assert (=> d!192422 m!800855))

(assert (=> d!192422 m!800581))

(assert (=> d!192422 m!800463))

(declare-fun m!800857 () Bool)

(assert (=> b!551275 m!800857))

(assert (=> b!551275 m!800857))

(declare-fun m!800859 () Bool)

(assert (=> b!551275 m!800859))

(assert (=> b!550977 d!192422))

(declare-fun bs!67873 () Bool)

(declare-fun d!192424 () Bool)

(assert (= bs!67873 (and d!192424 d!192328)))

(declare-fun lambda!15533 () Int)

(assert (=> bs!67873 (= (and (= (toChars!1739 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))) (toChars!1739 (transformation!1033 (rule!1757 token!491)))) (= (toValue!1880 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))) (toValue!1880 (transformation!1033 (rule!1757 token!491))))) (= lambda!15533 lambda!15532))))

(declare-fun b!551277 () Bool)

(declare-fun e!333388 () Bool)

(assert (=> b!551277 (= e!333388 true)))

(assert (=> d!192424 e!333388))

(assert (= d!192424 b!551277))

(assert (=> b!551277 (< (dynLambda!3177 order!4517 (toValue!1880 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))) (dynLambda!3178 order!4519 lambda!15533))))

(assert (=> b!551277 (< (dynLambda!3179 order!4521 (toChars!1739 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))) (dynLambda!3178 order!4519 lambda!15533))))

(assert (=> d!192424 (= (list!2257 (dynLambda!3180 (toChars!1739 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))) (dynLambda!3181 (toValue!1880 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))) lt!232409))) (list!2257 lt!232409))))

(declare-fun lt!232540 () Unit!9668)

(assert (=> d!192424 (= lt!232540 (ForallOf!94 lambda!15533 lt!232409))))

(assert (=> d!192424 (= (lemmaSemiInverse!162 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) lt!232409) lt!232540)))

(declare-fun b_lambda!21209 () Bool)

(assert (=> (not b_lambda!21209) (not d!192424)))

(declare-fun tb!48195 () Bool)

(declare-fun t!75084 () Bool)

(assert (=> (and b!551010 (= (toChars!1739 (transformation!1033 (h!10848 rules!3103))) (toChars!1739 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))) t!75084) tb!48195))

(declare-fun b!551278 () Bool)

(declare-fun e!333389 () Bool)

(declare-fun tp!174315 () Bool)

(assert (=> b!551278 (= e!333389 (and (inv!6835 (c!103621 (dynLambda!3180 (toChars!1739 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))) (dynLambda!3181 (toValue!1880 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))) lt!232409)))) tp!174315))))

(declare-fun result!53938 () Bool)

(assert (=> tb!48195 (= result!53938 (and (inv!6836 (dynLambda!3180 (toChars!1739 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))) (dynLambda!3181 (toValue!1880 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))) lt!232409))) e!333389))))

(assert (= tb!48195 b!551278))

(declare-fun m!800861 () Bool)

(assert (=> b!551278 m!800861))

(declare-fun m!800863 () Bool)

(assert (=> tb!48195 m!800863))

(assert (=> d!192424 t!75084))

(declare-fun b_and!53823 () Bool)

(assert (= b_and!53811 (and (=> t!75084 result!53938) b_and!53823)))

(declare-fun t!75086 () Bool)

(declare-fun tb!48197 () Bool)

(assert (=> (and b!551018 (= (toChars!1739 (transformation!1033 (rule!1757 token!491))) (toChars!1739 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))) t!75086) tb!48197))

(declare-fun result!53940 () Bool)

(assert (= result!53940 result!53938))

(assert (=> d!192424 t!75086))

(declare-fun b_and!53825 () Bool)

(assert (= b_and!53813 (and (=> t!75086 result!53940) b_and!53825)))

(declare-fun b_lambda!21211 () Bool)

(assert (=> (not b_lambda!21211) (not d!192424)))

(declare-fun t!75088 () Bool)

(declare-fun tb!48199 () Bool)

(assert (=> (and b!551010 (= (toValue!1880 (transformation!1033 (h!10848 rules!3103))) (toValue!1880 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))) t!75088) tb!48199))

(declare-fun result!53942 () Bool)

(assert (=> tb!48199 (= result!53942 (inv!21 (dynLambda!3181 (toValue!1880 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))) lt!232409)))))

(declare-fun m!800865 () Bool)

(assert (=> tb!48199 m!800865))

(assert (=> d!192424 t!75088))

(declare-fun b_and!53827 () Bool)

(assert (= b_and!53819 (and (=> t!75088 result!53942) b_and!53827)))

(declare-fun tb!48201 () Bool)

(declare-fun t!75090 () Bool)

(assert (=> (and b!551018 (= (toValue!1880 (transformation!1033 (rule!1757 token!491))) (toValue!1880 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))) t!75090) tb!48201))

(declare-fun result!53944 () Bool)

(assert (= result!53944 result!53942))

(assert (=> d!192424 t!75090))

(declare-fun b_and!53829 () Bool)

(assert (= b_and!53821 (and (=> t!75090 result!53944) b_and!53829)))

(declare-fun m!800867 () Bool)

(assert (=> d!192424 m!800867))

(declare-fun m!800869 () Bool)

(assert (=> d!192424 m!800869))

(assert (=> d!192424 m!800869))

(declare-fun m!800871 () Bool)

(assert (=> d!192424 m!800871))

(declare-fun m!800873 () Bool)

(assert (=> d!192424 m!800873))

(assert (=> d!192424 m!800867))

(declare-fun m!800875 () Bool)

(assert (=> d!192424 m!800875))

(assert (=> b!550977 d!192424))

(declare-fun d!192426 () Bool)

(assert (=> d!192426 (= (isDefined!1195 lt!232407) (not (isEmpty!3933 lt!232407)))))

(declare-fun bs!67874 () Bool)

(assert (= bs!67874 d!192426))

(declare-fun m!800877 () Bool)

(assert (=> bs!67874 m!800877))

(assert (=> b!551000 d!192426))

(declare-fun b!551326 () Bool)

(declare-fun e!333414 () Bool)

(declare-fun e!333413 () Bool)

(assert (=> b!551326 (= e!333414 e!333413)))

(declare-fun res!236360 () Bool)

(assert (=> b!551326 (=> (not res!236360) (not e!333413))))

(declare-fun lt!232569 () Option!1383)

(assert (=> b!551326 (= res!236360 (isDefined!1195 lt!232569))))

(declare-fun call!38427 () Option!1383)

(declare-fun bm!38422 () Bool)

(assert (=> bm!38422 (= call!38427 (maxPrefixOneRule!332 thiss!22590 (h!10848 rules!3103) lt!232404))))

(declare-fun b!551327 () Bool)

(declare-fun res!236359 () Bool)

(assert (=> b!551327 (=> (not res!236359) (not e!333413))))

(assert (=> b!551327 (= res!236359 (matchR!526 (regex!1033 (rule!1757 (_1!3498 (get!2064 lt!232569)))) (list!2257 (charsOf!662 (_1!3498 (get!2064 lt!232569))))))))

(declare-fun b!551328 () Bool)

(assert (=> b!551328 (= e!333413 (contains!1275 rules!3103 (rule!1757 (_1!3498 (get!2064 lt!232569)))))))

(declare-fun d!192428 () Bool)

(assert (=> d!192428 e!333414))

(declare-fun res!236365 () Bool)

(assert (=> d!192428 (=> res!236365 e!333414)))

(assert (=> d!192428 (= res!236365 (isEmpty!3933 lt!232569))))

(declare-fun e!333412 () Option!1383)

(assert (=> d!192428 (= lt!232569 e!333412)))

(declare-fun c!103669 () Bool)

(assert (=> d!192428 (= c!103669 (and ((_ is Cons!5447) rules!3103) ((_ is Nil!5447) (t!75058 rules!3103))))))

(declare-fun lt!232571 () Unit!9668)

(declare-fun lt!232570 () Unit!9668)

(assert (=> d!192428 (= lt!232571 lt!232570)))

(assert (=> d!192428 (isPrefix!675 lt!232404 lt!232404)))

(assert (=> d!192428 (= lt!232570 (lemmaIsPrefixRefl!415 lt!232404 lt!232404))))

(assert (=> d!192428 (rulesValidInductive!366 thiss!22590 rules!3103)))

(assert (=> d!192428 (= (maxPrefix!617 thiss!22590 rules!3103 lt!232404) lt!232569)))

(declare-fun b!551329 () Bool)

(declare-fun res!236364 () Bool)

(assert (=> b!551329 (=> (not res!236364) (not e!333413))))

(assert (=> b!551329 (= res!236364 (= (++!1521 (list!2257 (charsOf!662 (_1!3498 (get!2064 lt!232569)))) (_2!3498 (get!2064 lt!232569))) lt!232404))))

(declare-fun b!551330 () Bool)

(declare-fun res!236361 () Bool)

(assert (=> b!551330 (=> (not res!236361) (not e!333413))))

(assert (=> b!551330 (= res!236361 (< (size!4359 (_2!3498 (get!2064 lt!232569))) (size!4359 lt!232404)))))

(declare-fun b!551331 () Bool)

(declare-fun res!236363 () Bool)

(assert (=> b!551331 (=> (not res!236363) (not e!333413))))

(assert (=> b!551331 (= res!236363 (= (list!2257 (charsOf!662 (_1!3498 (get!2064 lt!232569)))) (originalCharacters!1072 (_1!3498 (get!2064 lt!232569)))))))

(declare-fun b!551332 () Bool)

(declare-fun lt!232567 () Option!1383)

(declare-fun lt!232568 () Option!1383)

(assert (=> b!551332 (= e!333412 (ite (and ((_ is None!1382) lt!232567) ((_ is None!1382) lt!232568)) None!1382 (ite ((_ is None!1382) lt!232568) lt!232567 (ite ((_ is None!1382) lt!232567) lt!232568 (ite (>= (size!4358 (_1!3498 (v!16207 lt!232567))) (size!4358 (_1!3498 (v!16207 lt!232568)))) lt!232567 lt!232568)))))))

(assert (=> b!551332 (= lt!232567 call!38427)))

(assert (=> b!551332 (= lt!232568 (maxPrefix!617 thiss!22590 (t!75058 rules!3103) lt!232404))))

(declare-fun b!551333 () Bool)

(declare-fun res!236362 () Bool)

(assert (=> b!551333 (=> (not res!236362) (not e!333413))))

(assert (=> b!551333 (= res!236362 (= (value!34307 (_1!3498 (get!2064 lt!232569))) (apply!1308 (transformation!1033 (rule!1757 (_1!3498 (get!2064 lt!232569)))) (seqFromList!1231 (originalCharacters!1072 (_1!3498 (get!2064 lt!232569)))))))))

(declare-fun b!551334 () Bool)

(assert (=> b!551334 (= e!333412 call!38427)))

(assert (= (and d!192428 c!103669) b!551334))

(assert (= (and d!192428 (not c!103669)) b!551332))

(assert (= (or b!551334 b!551332) bm!38422))

(assert (= (and d!192428 (not res!236365)) b!551326))

(assert (= (and b!551326 res!236360) b!551331))

(assert (= (and b!551331 res!236363) b!551330))

(assert (= (and b!551330 res!236361) b!551329))

(assert (= (and b!551329 res!236364) b!551333))

(assert (= (and b!551333 res!236362) b!551327))

(assert (= (and b!551327 res!236359) b!551328))

(declare-fun m!800939 () Bool)

(assert (=> b!551328 m!800939))

(declare-fun m!800941 () Bool)

(assert (=> b!551328 m!800941))

(assert (=> b!551329 m!800939))

(declare-fun m!800943 () Bool)

(assert (=> b!551329 m!800943))

(assert (=> b!551329 m!800943))

(declare-fun m!800945 () Bool)

(assert (=> b!551329 m!800945))

(assert (=> b!551329 m!800945))

(declare-fun m!800947 () Bool)

(assert (=> b!551329 m!800947))

(declare-fun m!800949 () Bool)

(assert (=> b!551332 m!800949))

(assert (=> b!551331 m!800939))

(assert (=> b!551331 m!800943))

(assert (=> b!551331 m!800943))

(assert (=> b!551331 m!800945))

(assert (=> b!551327 m!800939))

(assert (=> b!551327 m!800943))

(assert (=> b!551327 m!800943))

(assert (=> b!551327 m!800945))

(assert (=> b!551327 m!800945))

(declare-fun m!800969 () Bool)

(assert (=> b!551327 m!800969))

(declare-fun m!800971 () Bool)

(assert (=> b!551326 m!800971))

(declare-fun m!800975 () Bool)

(assert (=> d!192428 m!800975))

(declare-fun m!800977 () Bool)

(assert (=> d!192428 m!800977))

(declare-fun m!800979 () Bool)

(assert (=> d!192428 m!800979))

(assert (=> d!192428 m!800509))

(assert (=> b!551330 m!800939))

(declare-fun m!800983 () Bool)

(assert (=> b!551330 m!800983))

(assert (=> b!551330 m!800581))

(assert (=> b!551333 m!800939))

(declare-fun m!800987 () Bool)

(assert (=> b!551333 m!800987))

(assert (=> b!551333 m!800987))

(declare-fun m!800989 () Bool)

(assert (=> b!551333 m!800989))

(declare-fun m!800993 () Bool)

(assert (=> bm!38422 m!800993))

(assert (=> b!551000 d!192428))

(declare-fun e!333424 () Bool)

(declare-fun b!551355 () Bool)

(declare-fun lt!232579 () List!5455)

(assert (=> b!551355 (= e!333424 (or (not (= suffix!1342 Nil!5445)) (= lt!232579 input!2705)))))

(declare-fun b!551352 () Bool)

(declare-fun e!333423 () List!5455)

(assert (=> b!551352 (= e!333423 suffix!1342)))

(declare-fun d!192436 () Bool)

(assert (=> d!192436 e!333424))

(declare-fun res!236378 () Bool)

(assert (=> d!192436 (=> (not res!236378) (not e!333424))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!952 (List!5455) (InoxSet C!3656))

(assert (=> d!192436 (= res!236378 (= (content!952 lt!232579) ((_ map or) (content!952 input!2705) (content!952 suffix!1342))))))

(assert (=> d!192436 (= lt!232579 e!333423)))

(declare-fun c!103673 () Bool)

(assert (=> d!192436 (= c!103673 ((_ is Nil!5445) input!2705))))

(assert (=> d!192436 (= (++!1521 input!2705 suffix!1342) lt!232579)))

(declare-fun b!551353 () Bool)

(assert (=> b!551353 (= e!333423 (Cons!5445 (h!10846 input!2705) (++!1521 (t!75056 input!2705) suffix!1342)))))

(declare-fun b!551354 () Bool)

(declare-fun res!236377 () Bool)

(assert (=> b!551354 (=> (not res!236377) (not e!333424))))

(assert (=> b!551354 (= res!236377 (= (size!4359 lt!232579) (+ (size!4359 input!2705) (size!4359 suffix!1342))))))

(assert (= (and d!192436 c!103673) b!551352))

(assert (= (and d!192436 (not c!103673)) b!551353))

(assert (= (and d!192436 res!236378) b!551354))

(assert (= (and b!551354 res!236377) b!551355))

(declare-fun m!801009 () Bool)

(assert (=> d!192436 m!801009))

(declare-fun m!801011 () Bool)

(assert (=> d!192436 m!801011))

(declare-fun m!801013 () Bool)

(assert (=> d!192436 m!801013))

(declare-fun m!801015 () Bool)

(assert (=> b!551353 m!801015))

(declare-fun m!801017 () Bool)

(assert (=> b!551354 m!801017))

(assert (=> b!551354 m!800819))

(declare-fun m!801019 () Bool)

(assert (=> b!551354 m!801019))

(assert (=> b!551000 d!192436))

(declare-fun lt!232580 () List!5455)

(declare-fun b!551359 () Bool)

(declare-fun e!333426 () Bool)

(assert (=> b!551359 (= e!333426 (or (not (= suffix!1342 Nil!5445)) (= lt!232580 lt!232424)))))

(declare-fun b!551356 () Bool)

(declare-fun e!333425 () List!5455)

(assert (=> b!551356 (= e!333425 suffix!1342)))

(declare-fun d!192440 () Bool)

(assert (=> d!192440 e!333426))

(declare-fun res!236380 () Bool)

(assert (=> d!192440 (=> (not res!236380) (not e!333426))))

(assert (=> d!192440 (= res!236380 (= (content!952 lt!232580) ((_ map or) (content!952 lt!232424) (content!952 suffix!1342))))))

(assert (=> d!192440 (= lt!232580 e!333425)))

(declare-fun c!103674 () Bool)

(assert (=> d!192440 (= c!103674 ((_ is Nil!5445) lt!232424))))

(assert (=> d!192440 (= (++!1521 lt!232424 suffix!1342) lt!232580)))

(declare-fun b!551357 () Bool)

(assert (=> b!551357 (= e!333425 (Cons!5445 (h!10846 lt!232424) (++!1521 (t!75056 lt!232424) suffix!1342)))))

(declare-fun b!551358 () Bool)

(declare-fun res!236379 () Bool)

(assert (=> b!551358 (=> (not res!236379) (not e!333426))))

(assert (=> b!551358 (= res!236379 (= (size!4359 lt!232580) (+ (size!4359 lt!232424) (size!4359 suffix!1342))))))

(assert (= (and d!192440 c!103674) b!551356))

(assert (= (and d!192440 (not c!103674)) b!551357))

(assert (= (and d!192440 res!236380) b!551358))

(assert (= (and b!551358 res!236379) b!551359))

(declare-fun m!801021 () Bool)

(assert (=> d!192440 m!801021))

(declare-fun m!801023 () Bool)

(assert (=> d!192440 m!801023))

(assert (=> d!192440 m!801013))

(declare-fun m!801025 () Bool)

(assert (=> b!551357 m!801025))

(declare-fun m!801027 () Bool)

(assert (=> b!551358 m!801027))

(assert (=> b!551358 m!800463))

(assert (=> b!551358 m!801019))

(assert (=> b!550978 d!192440))

(declare-fun d!192442 () Bool)

(assert (=> d!192442 (= (get!2064 lt!232407) (v!16207 lt!232407))))

(assert (=> b!550999 d!192442))

(declare-fun d!192444 () Bool)

(assert (=> d!192444 (= (get!2064 lt!232428) (v!16207 lt!232428))))

(assert (=> b!550996 d!192444))

(declare-fun d!192446 () Bool)

(assert (=> d!192446 (= (isDefined!1195 lt!232428) (not (isEmpty!3933 lt!232428)))))

(declare-fun bs!67877 () Bool)

(assert (= bs!67877 d!192446))

(declare-fun m!801029 () Bool)

(assert (=> bs!67877 m!801029))

(assert (=> b!550995 d!192446))

(declare-fun b!551370 () Bool)

(declare-fun e!333435 () Bool)

(declare-fun inv!17 (TokenValue!1057) Bool)

(assert (=> b!551370 (= e!333435 (inv!17 (value!34307 token!491)))))

(declare-fun d!192448 () Bool)

(declare-fun c!103680 () Bool)

(assert (=> d!192448 (= c!103680 ((_ is IntegerValue!3171) (value!34307 token!491)))))

(declare-fun e!333434 () Bool)

(assert (=> d!192448 (= (inv!21 (value!34307 token!491)) e!333434)))

(declare-fun b!551371 () Bool)

(declare-fun inv!16 (TokenValue!1057) Bool)

(assert (=> b!551371 (= e!333434 (inv!16 (value!34307 token!491)))))

(declare-fun b!551372 () Bool)

(declare-fun e!333433 () Bool)

(declare-fun inv!15 (TokenValue!1057) Bool)

(assert (=> b!551372 (= e!333433 (inv!15 (value!34307 token!491)))))

(declare-fun b!551373 () Bool)

(assert (=> b!551373 (= e!333434 e!333435)))

(declare-fun c!103679 () Bool)

(assert (=> b!551373 (= c!103679 ((_ is IntegerValue!3172) (value!34307 token!491)))))

(declare-fun b!551374 () Bool)

(declare-fun res!236383 () Bool)

(assert (=> b!551374 (=> res!236383 e!333433)))

(assert (=> b!551374 (= res!236383 (not ((_ is IntegerValue!3173) (value!34307 token!491))))))

(assert (=> b!551374 (= e!333435 e!333433)))

(assert (= (and d!192448 c!103680) b!551371))

(assert (= (and d!192448 (not c!103680)) b!551373))

(assert (= (and b!551373 c!103679) b!551370))

(assert (= (and b!551373 (not c!103679)) b!551374))

(assert (= (and b!551374 (not res!236383)) b!551372))

(declare-fun m!801031 () Bool)

(assert (=> b!551370 m!801031))

(declare-fun m!801033 () Bool)

(assert (=> b!551371 m!801033))

(declare-fun m!801035 () Bool)

(assert (=> b!551372 m!801035))

(assert (=> b!550976 d!192448))

(declare-fun d!192450 () Bool)

(declare-fun lt!232585 () Bool)

(declare-fun content!953 (List!5457) (InoxSet Rule!1866))

(assert (=> d!192450 (= lt!232585 (select (content!953 rules!3103) (rule!1757 token!491)))))

(declare-fun e!333440 () Bool)

(assert (=> d!192450 (= lt!232585 e!333440)))

(declare-fun res!236388 () Bool)

(assert (=> d!192450 (=> (not res!236388) (not e!333440))))

(assert (=> d!192450 (= res!236388 ((_ is Cons!5447) rules!3103))))

(assert (=> d!192450 (= (contains!1275 rules!3103 (rule!1757 token!491)) lt!232585)))

(declare-fun b!551379 () Bool)

(declare-fun e!333441 () Bool)

(assert (=> b!551379 (= e!333440 e!333441)))

(declare-fun res!236389 () Bool)

(assert (=> b!551379 (=> res!236389 e!333441)))

(assert (=> b!551379 (= res!236389 (= (h!10848 rules!3103) (rule!1757 token!491)))))

(declare-fun b!551380 () Bool)

(assert (=> b!551380 (= e!333441 (contains!1275 (t!75058 rules!3103) (rule!1757 token!491)))))

(assert (= (and d!192450 res!236388) b!551379))

(assert (= (and b!551379 (not res!236389)) b!551380))

(declare-fun m!801037 () Bool)

(assert (=> d!192450 m!801037))

(declare-fun m!801039 () Bool)

(assert (=> d!192450 m!801039))

(declare-fun m!801041 () Bool)

(assert (=> b!551380 m!801041))

(assert (=> b!550997 d!192450))

(declare-fun d!192452 () Bool)

(assert (=> d!192452 (= (isEmpty!3930 input!2705) ((_ is Nil!5445) input!2705))))

(assert (=> b!550975 d!192452))

(declare-fun b!551432 () Bool)

(declare-fun e!333475 () Bool)

(declare-fun lt!232603 () Bool)

(declare-fun call!38430 () Bool)

(assert (=> b!551432 (= e!333475 (= lt!232603 call!38430))))

(declare-fun b!551433 () Bool)

(declare-fun e!333474 () Bool)

(declare-fun head!1198 (List!5455) C!3656)

(assert (=> b!551433 (= e!333474 (not (= (head!1198 input!2705) (c!103620 (regex!1033 (rule!1757 token!491))))))))

(declare-fun b!551434 () Bool)

(declare-fun e!333478 () Bool)

(declare-fun derivativeStep!277 (Regex!1367 C!3656) Regex!1367)

(assert (=> b!551434 (= e!333478 (matchR!526 (derivativeStep!277 (regex!1033 (rule!1757 token!491)) (head!1198 input!2705)) (tail!727 input!2705)))))

(declare-fun b!551435 () Bool)

(declare-fun res!236419 () Bool)

(declare-fun e!333476 () Bool)

(assert (=> b!551435 (=> (not res!236419) (not e!333476))))

(assert (=> b!551435 (= res!236419 (isEmpty!3930 (tail!727 input!2705)))))

(declare-fun b!551436 () Bool)

(declare-fun nullable!361 (Regex!1367) Bool)

(assert (=> b!551436 (= e!333478 (nullable!361 (regex!1033 (rule!1757 token!491))))))

(declare-fun b!551437 () Bool)

(assert (=> b!551437 (= e!333476 (= (head!1198 input!2705) (c!103620 (regex!1033 (rule!1757 token!491)))))))

(declare-fun b!551438 () Bool)

(declare-fun res!236416 () Bool)

(assert (=> b!551438 (=> (not res!236416) (not e!333476))))

(assert (=> b!551438 (= res!236416 (not call!38430))))

(declare-fun b!551440 () Bool)

(declare-fun e!333477 () Bool)

(assert (=> b!551440 (= e!333477 e!333474)))

(declare-fun res!236415 () Bool)

(assert (=> b!551440 (=> res!236415 e!333474)))

(assert (=> b!551440 (= res!236415 call!38430)))

(declare-fun b!551441 () Bool)

(declare-fun res!236421 () Bool)

(declare-fun e!333473 () Bool)

(assert (=> b!551441 (=> res!236421 e!333473)))

(assert (=> b!551441 (= res!236421 e!333476)))

(declare-fun res!236417 () Bool)

(assert (=> b!551441 (=> (not res!236417) (not e!333476))))

(assert (=> b!551441 (= res!236417 lt!232603)))

(declare-fun b!551442 () Bool)

(declare-fun e!333479 () Bool)

(assert (=> b!551442 (= e!333479 (not lt!232603))))

(declare-fun bm!38425 () Bool)

(assert (=> bm!38425 (= call!38430 (isEmpty!3930 input!2705))))

(declare-fun b!551443 () Bool)

(assert (=> b!551443 (= e!333473 e!333477)))

(declare-fun res!236420 () Bool)

(assert (=> b!551443 (=> (not res!236420) (not e!333477))))

(assert (=> b!551443 (= res!236420 (not lt!232603))))

(declare-fun b!551444 () Bool)

(assert (=> b!551444 (= e!333475 e!333479)))

(declare-fun c!103696 () Bool)

(assert (=> b!551444 (= c!103696 ((_ is EmptyLang!1367) (regex!1033 (rule!1757 token!491))))))

(declare-fun b!551445 () Bool)

(declare-fun res!236422 () Bool)

(assert (=> b!551445 (=> res!236422 e!333473)))

(assert (=> b!551445 (= res!236422 (not ((_ is ElementMatch!1367) (regex!1033 (rule!1757 token!491)))))))

(assert (=> b!551445 (= e!333479 e!333473)))

(declare-fun d!192454 () Bool)

(assert (=> d!192454 e!333475))

(declare-fun c!103694 () Bool)

(assert (=> d!192454 (= c!103694 ((_ is EmptyExpr!1367) (regex!1033 (rule!1757 token!491))))))

(assert (=> d!192454 (= lt!232603 e!333478)))

(declare-fun c!103695 () Bool)

(assert (=> d!192454 (= c!103695 (isEmpty!3930 input!2705))))

(declare-fun validRegex!456 (Regex!1367) Bool)

(assert (=> d!192454 (validRegex!456 (regex!1033 (rule!1757 token!491)))))

(assert (=> d!192454 (= (matchR!526 (regex!1033 (rule!1757 token!491)) input!2705) lt!232603)))

(declare-fun b!551439 () Bool)

(declare-fun res!236418 () Bool)

(assert (=> b!551439 (=> res!236418 e!333474)))

(assert (=> b!551439 (= res!236418 (not (isEmpty!3930 (tail!727 input!2705))))))

(assert (= (and d!192454 c!103695) b!551436))

(assert (= (and d!192454 (not c!103695)) b!551434))

(assert (= (and d!192454 c!103694) b!551432))

(assert (= (and d!192454 (not c!103694)) b!551444))

(assert (= (and b!551444 c!103696) b!551442))

(assert (= (and b!551444 (not c!103696)) b!551445))

(assert (= (and b!551445 (not res!236422)) b!551441))

(assert (= (and b!551441 res!236417) b!551438))

(assert (= (and b!551438 res!236416) b!551435))

(assert (= (and b!551435 res!236419) b!551437))

(assert (= (and b!551441 (not res!236421)) b!551443))

(assert (= (and b!551443 res!236420) b!551440))

(assert (= (and b!551440 (not res!236415)) b!551439))

(assert (= (and b!551439 (not res!236418)) b!551433))

(assert (= (or b!551432 b!551438 b!551440) bm!38425))

(declare-fun m!801077 () Bool)

(assert (=> b!551436 m!801077))

(assert (=> bm!38425 m!800383))

(declare-fun m!801079 () Bool)

(assert (=> b!551434 m!801079))

(assert (=> b!551434 m!801079))

(declare-fun m!801081 () Bool)

(assert (=> b!551434 m!801081))

(declare-fun m!801083 () Bool)

(assert (=> b!551434 m!801083))

(assert (=> b!551434 m!801081))

(assert (=> b!551434 m!801083))

(declare-fun m!801085 () Bool)

(assert (=> b!551434 m!801085))

(assert (=> b!551435 m!801083))

(assert (=> b!551435 m!801083))

(declare-fun m!801087 () Bool)

(assert (=> b!551435 m!801087))

(assert (=> b!551433 m!801079))

(assert (=> d!192454 m!800383))

(declare-fun m!801089 () Bool)

(assert (=> d!192454 m!801089))

(assert (=> b!551437 m!801079))

(assert (=> b!551439 m!801083))

(assert (=> b!551439 m!801083))

(assert (=> b!551439 m!801087))

(assert (=> b!550993 d!192454))

(declare-fun d!192484 () Bool)

(assert (=> d!192484 (not (matchR!526 (regex!1033 (rule!1757 token!491)) input!2705))))

(declare-fun lt!232608 () Unit!9668)

(declare-fun choose!3932 (LexerInterface!919 List!5457 Rule!1866 List!5455 List!5455 Rule!1866) Unit!9668)

(assert (=> d!192484 (= lt!232608 (choose!3932 thiss!22590 rules!3103 (rule!1757 (_1!3498 (v!16207 lt!232428))) input!2705 input!2705 (rule!1757 token!491)))))

(assert (=> d!192484 (isPrefix!675 input!2705 input!2705)))

(assert (=> d!192484 (= (lemmaMaxPrefNoSmallerRuleMatches!16 thiss!22590 rules!3103 (rule!1757 (_1!3498 (v!16207 lt!232428))) input!2705 input!2705 (rule!1757 token!491)) lt!232608)))

(declare-fun bs!67883 () Bool)

(assert (= bs!67883 d!192484))

(assert (=> bs!67883 m!800405))

(declare-fun m!801099 () Bool)

(assert (=> bs!67883 m!801099))

(assert (=> bs!67883 m!800447))

(assert (=> b!550993 d!192484))

(declare-fun b!551466 () Bool)

(declare-fun e!333492 () Bool)

(declare-fun lt!232614 () Bool)

(declare-fun call!38432 () Bool)

(assert (=> b!551466 (= e!333492 (= lt!232614 call!38432))))

(declare-fun b!551467 () Bool)

(declare-fun e!333491 () Bool)

(assert (=> b!551467 (= e!333491 (not (= (head!1198 input!2705) (c!103620 (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))))))))

(declare-fun b!551468 () Bool)

(declare-fun e!333495 () Bool)

(assert (=> b!551468 (= e!333495 (matchR!526 (derivativeStep!277 (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) (head!1198 input!2705)) (tail!727 input!2705)))))

(declare-fun b!551469 () Bool)

(declare-fun res!236437 () Bool)

(declare-fun e!333493 () Bool)

(assert (=> b!551469 (=> (not res!236437) (not e!333493))))

(assert (=> b!551469 (= res!236437 (isEmpty!3930 (tail!727 input!2705)))))

(declare-fun b!551470 () Bool)

(assert (=> b!551470 (= e!333495 (nullable!361 (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))))))

(declare-fun b!551471 () Bool)

(assert (=> b!551471 (= e!333493 (= (head!1198 input!2705) (c!103620 (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))))))

(declare-fun b!551472 () Bool)

(declare-fun res!236434 () Bool)

(assert (=> b!551472 (=> (not res!236434) (not e!333493))))

(assert (=> b!551472 (= res!236434 (not call!38432))))

(declare-fun b!551474 () Bool)

(declare-fun e!333494 () Bool)

(assert (=> b!551474 (= e!333494 e!333491)))

(declare-fun res!236433 () Bool)

(assert (=> b!551474 (=> res!236433 e!333491)))

(assert (=> b!551474 (= res!236433 call!38432)))

(declare-fun b!551475 () Bool)

(declare-fun res!236439 () Bool)

(declare-fun e!333490 () Bool)

(assert (=> b!551475 (=> res!236439 e!333490)))

(assert (=> b!551475 (= res!236439 e!333493)))

(declare-fun res!236435 () Bool)

(assert (=> b!551475 (=> (not res!236435) (not e!333493))))

(assert (=> b!551475 (= res!236435 lt!232614)))

(declare-fun b!551476 () Bool)

(declare-fun e!333496 () Bool)

(assert (=> b!551476 (= e!333496 (not lt!232614))))

(declare-fun bm!38427 () Bool)

(assert (=> bm!38427 (= call!38432 (isEmpty!3930 input!2705))))

(declare-fun b!551477 () Bool)

(assert (=> b!551477 (= e!333490 e!333494)))

(declare-fun res!236438 () Bool)

(assert (=> b!551477 (=> (not res!236438) (not e!333494))))

(assert (=> b!551477 (= res!236438 (not lt!232614))))

(declare-fun b!551478 () Bool)

(assert (=> b!551478 (= e!333492 e!333496)))

(declare-fun c!103704 () Bool)

(assert (=> b!551478 (= c!103704 ((_ is EmptyLang!1367) (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))))))

(declare-fun b!551479 () Bool)

(declare-fun res!236440 () Bool)

(assert (=> b!551479 (=> res!236440 e!333490)))

(assert (=> b!551479 (= res!236440 (not ((_ is ElementMatch!1367) (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))))))

(assert (=> b!551479 (= e!333496 e!333490)))

(declare-fun d!192494 () Bool)

(assert (=> d!192494 e!333492))

(declare-fun c!103702 () Bool)

(assert (=> d!192494 (= c!103702 ((_ is EmptyExpr!1367) (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))))))

(assert (=> d!192494 (= lt!232614 e!333495)))

(declare-fun c!103703 () Bool)

(assert (=> d!192494 (= c!103703 (isEmpty!3930 input!2705))))

(assert (=> d!192494 (validRegex!456 (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))))

(assert (=> d!192494 (= (matchR!526 (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) input!2705) lt!232614)))

(declare-fun b!551473 () Bool)

(declare-fun res!236436 () Bool)

(assert (=> b!551473 (=> res!236436 e!333491)))

(assert (=> b!551473 (= res!236436 (not (isEmpty!3930 (tail!727 input!2705))))))

(assert (= (and d!192494 c!103703) b!551470))

(assert (= (and d!192494 (not c!103703)) b!551468))

(assert (= (and d!192494 c!103702) b!551466))

(assert (= (and d!192494 (not c!103702)) b!551478))

(assert (= (and b!551478 c!103704) b!551476))

(assert (= (and b!551478 (not c!103704)) b!551479))

(assert (= (and b!551479 (not res!236440)) b!551475))

(assert (= (and b!551475 res!236435) b!551472))

(assert (= (and b!551472 res!236434) b!551469))

(assert (= (and b!551469 res!236437) b!551471))

(assert (= (and b!551475 (not res!236439)) b!551477))

(assert (= (and b!551477 res!236438) b!551474))

(assert (= (and b!551474 (not res!236433)) b!551473))

(assert (= (and b!551473 (not res!236436)) b!551467))

(assert (= (or b!551466 b!551472 b!551474) bm!38427))

(declare-fun m!801101 () Bool)

(assert (=> b!551470 m!801101))

(assert (=> bm!38427 m!800383))

(assert (=> b!551468 m!801079))

(assert (=> b!551468 m!801079))

(declare-fun m!801103 () Bool)

(assert (=> b!551468 m!801103))

(assert (=> b!551468 m!801083))

(assert (=> b!551468 m!801103))

(assert (=> b!551468 m!801083))

(declare-fun m!801105 () Bool)

(assert (=> b!551468 m!801105))

(assert (=> b!551469 m!801083))

(assert (=> b!551469 m!801083))

(assert (=> b!551469 m!801087))

(assert (=> b!551467 m!801079))

(assert (=> d!192494 m!800383))

(declare-fun m!801107 () Bool)

(assert (=> d!192494 m!801107))

(assert (=> b!551471 m!801079))

(assert (=> b!551473 m!801083))

(assert (=> b!551473 m!801083))

(assert (=> b!551473 m!801087))

(assert (=> b!551016 d!192494))

(declare-fun d!192496 () Bool)

(assert (=> d!192496 (not (matchR!526 (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) input!2705))))

(declare-fun lt!232615 () Unit!9668)

(assert (=> d!192496 (= lt!232615 (choose!3932 thiss!22590 rules!3103 (rule!1757 token!491) input!2705 lt!232404 (rule!1757 (_1!3498 (v!16207 lt!232428)))))))

(assert (=> d!192496 (isPrefix!675 input!2705 lt!232404)))

(assert (=> d!192496 (= (lemmaMaxPrefNoSmallerRuleMatches!16 thiss!22590 rules!3103 (rule!1757 token!491) input!2705 lt!232404 (rule!1757 (_1!3498 (v!16207 lt!232428)))) lt!232615)))

(declare-fun bs!67884 () Bool)

(assert (= bs!67884 d!192496))

(assert (=> bs!67884 m!800485))

(declare-fun m!801111 () Bool)

(assert (=> bs!67884 m!801111))

(assert (=> bs!67884 m!800443))

(assert (=> b!551016 d!192496))

(assert (=> b!551015 d!192424))

(declare-fun d!192498 () Bool)

(assert (=> d!192498 (not (matchR!526 (regex!1033 (rule!1757 token!491)) input!2705))))

(declare-fun lt!232618 () Unit!9668)

(declare-fun choose!3933 (LexerInterface!919 List!5457 Rule!1866 List!5455 List!5455 List!5455 Rule!1866) Unit!9668)

(assert (=> d!192498 (= lt!232618 (choose!3933 thiss!22590 rules!3103 (rule!1757 (_1!3498 (v!16207 lt!232428))) lt!232401 input!2705 input!2705 (rule!1757 token!491)))))

(assert (=> d!192498 (isPrefix!675 lt!232401 input!2705)))

(assert (=> d!192498 (= (lemmaMaxPrefixOutputsMaxPrefix!38 thiss!22590 rules!3103 (rule!1757 (_1!3498 (v!16207 lt!232428))) lt!232401 input!2705 input!2705 (rule!1757 token!491)) lt!232618)))

(declare-fun bs!67885 () Bool)

(assert (= bs!67885 d!192498))

(assert (=> bs!67885 m!800405))

(declare-fun m!801137 () Bool)

(assert (=> bs!67885 m!801137))

(declare-fun m!801139 () Bool)

(assert (=> bs!67885 m!801139))

(assert (=> b!551015 d!192498))

(assert (=> b!551015 d!192454))

(declare-fun b!551524 () Bool)

(declare-fun e!333524 () Int)

(assert (=> b!551524 (= e!333524 0)))

(declare-fun b!551525 () Bool)

(declare-fun e!333523 () Int)

(assert (=> b!551525 (= e!333524 e!333523)))

(declare-fun c!103709 () Bool)

(assert (=> b!551525 (= c!103709 (and ((_ is Cons!5447) rules!3103) (not (= (h!10848 rules!3103) (rule!1757 (_1!3498 (v!16207 lt!232428)))))))))

(declare-fun b!551526 () Bool)

(assert (=> b!551526 (= e!333523 (+ 1 (getIndex!34 (t!75058 rules!3103) (rule!1757 (_1!3498 (v!16207 lt!232428))))))))

(declare-fun d!192502 () Bool)

(declare-fun lt!232621 () Int)

(assert (=> d!192502 (>= lt!232621 0)))

(assert (=> d!192502 (= lt!232621 e!333524)))

(declare-fun c!103710 () Bool)

(assert (=> d!192502 (= c!103710 (and ((_ is Cons!5447) rules!3103) (= (h!10848 rules!3103) (rule!1757 (_1!3498 (v!16207 lt!232428))))))))

(assert (=> d!192502 (contains!1275 rules!3103 (rule!1757 (_1!3498 (v!16207 lt!232428))))))

(assert (=> d!192502 (= (getIndex!34 rules!3103 (rule!1757 (_1!3498 (v!16207 lt!232428)))) lt!232621)))

(declare-fun b!551527 () Bool)

(assert (=> b!551527 (= e!333523 (- 1))))

(assert (= (and d!192502 c!103710) b!551524))

(assert (= (and d!192502 (not c!103710)) b!551525))

(assert (= (and b!551525 c!103709) b!551526))

(assert (= (and b!551525 (not c!103709)) b!551527))

(declare-fun m!801145 () Bool)

(assert (=> b!551526 m!801145))

(assert (=> d!192502 m!800481))

(assert (=> b!550994 d!192502))

(declare-fun b!551528 () Bool)

(declare-fun e!333526 () Int)

(assert (=> b!551528 (= e!333526 0)))

(declare-fun b!551529 () Bool)

(declare-fun e!333525 () Int)

(assert (=> b!551529 (= e!333526 e!333525)))

(declare-fun c!103711 () Bool)

(assert (=> b!551529 (= c!103711 (and ((_ is Cons!5447) rules!3103) (not (= (h!10848 rules!3103) (rule!1757 token!491)))))))

(declare-fun b!551530 () Bool)

(assert (=> b!551530 (= e!333525 (+ 1 (getIndex!34 (t!75058 rules!3103) (rule!1757 token!491))))))

(declare-fun d!192504 () Bool)

(declare-fun lt!232622 () Int)

(assert (=> d!192504 (>= lt!232622 0)))

(assert (=> d!192504 (= lt!232622 e!333526)))

(declare-fun c!103712 () Bool)

(assert (=> d!192504 (= c!103712 (and ((_ is Cons!5447) rules!3103) (= (h!10848 rules!3103) (rule!1757 token!491))))))

(assert (=> d!192504 (contains!1275 rules!3103 (rule!1757 token!491))))

(assert (=> d!192504 (= (getIndex!34 rules!3103 (rule!1757 token!491)) lt!232622)))

(declare-fun b!551531 () Bool)

(assert (=> b!551531 (= e!333525 (- 1))))

(assert (= (and d!192504 c!103712) b!551528))

(assert (= (and d!192504 (not c!103712)) b!551529))

(assert (= (and b!551529 c!103711) b!551530))

(assert (= (and b!551529 (not c!103711)) b!551531))

(declare-fun m!801147 () Bool)

(assert (=> b!551530 m!801147))

(assert (=> d!192504 m!800411))

(assert (=> b!550994 d!192504))

(declare-fun d!192506 () Bool)

(assert (=> d!192506 (= (inv!6828 (tag!1295 (h!10848 rules!3103))) (= (mod (str.len (value!34281 (tag!1295 (h!10848 rules!3103)))) 2) 0))))

(assert (=> b!551012 d!192506))

(declare-fun d!192508 () Bool)

(declare-fun res!236443 () Bool)

(declare-fun e!333529 () Bool)

(assert (=> d!192508 (=> (not res!236443) (not e!333529))))

(declare-fun semiInverseModEq!399 (Int Int) Bool)

(assert (=> d!192508 (= res!236443 (semiInverseModEq!399 (toChars!1739 (transformation!1033 (h!10848 rules!3103))) (toValue!1880 (transformation!1033 (h!10848 rules!3103)))))))

(assert (=> d!192508 (= (inv!6831 (transformation!1033 (h!10848 rules!3103))) e!333529)))

(declare-fun b!551534 () Bool)

(declare-fun equivClasses!382 (Int Int) Bool)

(assert (=> b!551534 (= e!333529 (equivClasses!382 (toChars!1739 (transformation!1033 (h!10848 rules!3103))) (toValue!1880 (transformation!1033 (h!10848 rules!3103)))))))

(assert (= (and d!192508 res!236443) b!551534))

(declare-fun m!801149 () Bool)

(assert (=> d!192508 m!801149))

(declare-fun m!801151 () Bool)

(assert (=> b!551534 m!801151))

(assert (=> b!551012 d!192508))

(declare-fun d!192510 () Bool)

(declare-fun lt!232623 () Bool)

(assert (=> d!192510 (= lt!232623 (select (content!953 rules!3103) (rule!1757 (_1!3498 (v!16207 lt!232428)))))))

(declare-fun e!333530 () Bool)

(assert (=> d!192510 (= lt!232623 e!333530)))

(declare-fun res!236444 () Bool)

(assert (=> d!192510 (=> (not res!236444) (not e!333530))))

(assert (=> d!192510 (= res!236444 ((_ is Cons!5447) rules!3103))))

(assert (=> d!192510 (= (contains!1275 rules!3103 (rule!1757 (_1!3498 (v!16207 lt!232428)))) lt!232623)))

(declare-fun b!551535 () Bool)

(declare-fun e!333531 () Bool)

(assert (=> b!551535 (= e!333530 e!333531)))

(declare-fun res!236445 () Bool)

(assert (=> b!551535 (=> res!236445 e!333531)))

(assert (=> b!551535 (= res!236445 (= (h!10848 rules!3103) (rule!1757 (_1!3498 (v!16207 lt!232428)))))))

(declare-fun b!551536 () Bool)

(assert (=> b!551536 (= e!333531 (contains!1275 (t!75058 rules!3103) (rule!1757 (_1!3498 (v!16207 lt!232428)))))))

(assert (= (and d!192510 res!236444) b!551535))

(assert (= (and b!551535 (not res!236445)) b!551536))

(assert (=> d!192510 m!801037))

(declare-fun m!801153 () Bool)

(assert (=> d!192510 m!801153))

(declare-fun m!801155 () Bool)

(assert (=> b!551536 m!801155))

(assert (=> b!551011 d!192510))

(declare-fun d!192512 () Bool)

(assert (=> d!192512 (= (isEmpty!3930 (_2!3498 (v!16207 lt!232428))) ((_ is Nil!5445) (_2!3498 (v!16207 lt!232428))))))

(assert (=> b!551013 d!192512))

(declare-fun b!551537 () Bool)

(declare-fun e!333534 () Bool)

(declare-fun e!333533 () Bool)

(assert (=> b!551537 (= e!333534 e!333533)))

(declare-fun res!236447 () Bool)

(assert (=> b!551537 (=> (not res!236447) (not e!333533))))

(declare-fun lt!232626 () Option!1383)

(assert (=> b!551537 (= res!236447 (isDefined!1195 lt!232626))))

(declare-fun bm!38428 () Bool)

(declare-fun call!38433 () Option!1383)

(assert (=> bm!38428 (= call!38433 (maxPrefixOneRule!332 thiss!22590 (h!10848 rules!3103) input!2705))))

(declare-fun b!551538 () Bool)

(declare-fun res!236446 () Bool)

(assert (=> b!551538 (=> (not res!236446) (not e!333533))))

(assert (=> b!551538 (= res!236446 (matchR!526 (regex!1033 (rule!1757 (_1!3498 (get!2064 lt!232626)))) (list!2257 (charsOf!662 (_1!3498 (get!2064 lt!232626))))))))

(declare-fun b!551539 () Bool)

(assert (=> b!551539 (= e!333533 (contains!1275 rules!3103 (rule!1757 (_1!3498 (get!2064 lt!232626)))))))

(declare-fun d!192514 () Bool)

(assert (=> d!192514 e!333534))

(declare-fun res!236452 () Bool)

(assert (=> d!192514 (=> res!236452 e!333534)))

(assert (=> d!192514 (= res!236452 (isEmpty!3933 lt!232626))))

(declare-fun e!333532 () Option!1383)

(assert (=> d!192514 (= lt!232626 e!333532)))

(declare-fun c!103713 () Bool)

(assert (=> d!192514 (= c!103713 (and ((_ is Cons!5447) rules!3103) ((_ is Nil!5447) (t!75058 rules!3103))))))

(declare-fun lt!232628 () Unit!9668)

(declare-fun lt!232627 () Unit!9668)

(assert (=> d!192514 (= lt!232628 lt!232627)))

(assert (=> d!192514 (isPrefix!675 input!2705 input!2705)))

(assert (=> d!192514 (= lt!232627 (lemmaIsPrefixRefl!415 input!2705 input!2705))))

(assert (=> d!192514 (rulesValidInductive!366 thiss!22590 rules!3103)))

(assert (=> d!192514 (= (maxPrefix!617 thiss!22590 rules!3103 input!2705) lt!232626)))

(declare-fun b!551540 () Bool)

(declare-fun res!236451 () Bool)

(assert (=> b!551540 (=> (not res!236451) (not e!333533))))

(assert (=> b!551540 (= res!236451 (= (++!1521 (list!2257 (charsOf!662 (_1!3498 (get!2064 lt!232626)))) (_2!3498 (get!2064 lt!232626))) input!2705))))

(declare-fun b!551541 () Bool)

(declare-fun res!236448 () Bool)

(assert (=> b!551541 (=> (not res!236448) (not e!333533))))

(assert (=> b!551541 (= res!236448 (< (size!4359 (_2!3498 (get!2064 lt!232626))) (size!4359 input!2705)))))

(declare-fun b!551542 () Bool)

(declare-fun res!236450 () Bool)

(assert (=> b!551542 (=> (not res!236450) (not e!333533))))

(assert (=> b!551542 (= res!236450 (= (list!2257 (charsOf!662 (_1!3498 (get!2064 lt!232626)))) (originalCharacters!1072 (_1!3498 (get!2064 lt!232626)))))))

(declare-fun b!551543 () Bool)

(declare-fun lt!232624 () Option!1383)

(declare-fun lt!232625 () Option!1383)

(assert (=> b!551543 (= e!333532 (ite (and ((_ is None!1382) lt!232624) ((_ is None!1382) lt!232625)) None!1382 (ite ((_ is None!1382) lt!232625) lt!232624 (ite ((_ is None!1382) lt!232624) lt!232625 (ite (>= (size!4358 (_1!3498 (v!16207 lt!232624))) (size!4358 (_1!3498 (v!16207 lt!232625)))) lt!232624 lt!232625)))))))

(assert (=> b!551543 (= lt!232624 call!38433)))

(assert (=> b!551543 (= lt!232625 (maxPrefix!617 thiss!22590 (t!75058 rules!3103) input!2705))))

(declare-fun b!551544 () Bool)

(declare-fun res!236449 () Bool)

(assert (=> b!551544 (=> (not res!236449) (not e!333533))))

(assert (=> b!551544 (= res!236449 (= (value!34307 (_1!3498 (get!2064 lt!232626))) (apply!1308 (transformation!1033 (rule!1757 (_1!3498 (get!2064 lt!232626)))) (seqFromList!1231 (originalCharacters!1072 (_1!3498 (get!2064 lt!232626)))))))))

(declare-fun b!551545 () Bool)

(assert (=> b!551545 (= e!333532 call!38433)))

(assert (= (and d!192514 c!103713) b!551545))

(assert (= (and d!192514 (not c!103713)) b!551543))

(assert (= (or b!551545 b!551543) bm!38428))

(assert (= (and d!192514 (not res!236452)) b!551537))

(assert (= (and b!551537 res!236447) b!551542))

(assert (= (and b!551542 res!236450) b!551541))

(assert (= (and b!551541 res!236448) b!551540))

(assert (= (and b!551540 res!236451) b!551544))

(assert (= (and b!551544 res!236449) b!551538))

(assert (= (and b!551538 res!236446) b!551539))

(declare-fun m!801157 () Bool)

(assert (=> b!551539 m!801157))

(declare-fun m!801159 () Bool)

(assert (=> b!551539 m!801159))

(assert (=> b!551540 m!801157))

(declare-fun m!801161 () Bool)

(assert (=> b!551540 m!801161))

(assert (=> b!551540 m!801161))

(declare-fun m!801163 () Bool)

(assert (=> b!551540 m!801163))

(assert (=> b!551540 m!801163))

(declare-fun m!801165 () Bool)

(assert (=> b!551540 m!801165))

(declare-fun m!801167 () Bool)

(assert (=> b!551543 m!801167))

(assert (=> b!551542 m!801157))

(assert (=> b!551542 m!801161))

(assert (=> b!551542 m!801161))

(assert (=> b!551542 m!801163))

(assert (=> b!551538 m!801157))

(assert (=> b!551538 m!801161))

(assert (=> b!551538 m!801161))

(assert (=> b!551538 m!801163))

(assert (=> b!551538 m!801163))

(declare-fun m!801169 () Bool)

(assert (=> b!551538 m!801169))

(declare-fun m!801171 () Bool)

(assert (=> b!551537 m!801171))

(declare-fun m!801173 () Bool)

(assert (=> d!192514 m!801173))

(assert (=> d!192514 m!800447))

(assert (=> d!192514 m!800473))

(assert (=> d!192514 m!800509))

(assert (=> b!551541 m!801157))

(declare-fun m!801175 () Bool)

(assert (=> b!551541 m!801175))

(assert (=> b!551541 m!800819))

(assert (=> b!551544 m!801157))

(declare-fun m!801177 () Bool)

(assert (=> b!551544 m!801177))

(assert (=> b!551544 m!801177))

(declare-fun m!801179 () Bool)

(assert (=> b!551544 m!801179))

(declare-fun m!801181 () Bool)

(assert (=> bm!38428 m!801181))

(assert (=> b!550991 d!192514))

(declare-fun d!192516 () Bool)

(declare-fun lt!232631 () Int)

(assert (=> d!192516 (>= lt!232631 0)))

(declare-fun e!333537 () Int)

(assert (=> d!192516 (= lt!232631 e!333537)))

(declare-fun c!103716 () Bool)

(assert (=> d!192516 (= c!103716 ((_ is Nil!5445) (originalCharacters!1072 (_1!3498 (v!16207 lt!232428)))))))

(assert (=> d!192516 (= (size!4359 (originalCharacters!1072 (_1!3498 (v!16207 lt!232428)))) lt!232631)))

(declare-fun b!551550 () Bool)

(assert (=> b!551550 (= e!333537 0)))

(declare-fun b!551551 () Bool)

(assert (=> b!551551 (= e!333537 (+ 1 (size!4359 (t!75056 (originalCharacters!1072 (_1!3498 (v!16207 lt!232428)))))))))

(assert (= (and d!192516 c!103716) b!551550))

(assert (= (and d!192516 (not c!103716)) b!551551))

(declare-fun m!801183 () Bool)

(assert (=> b!551551 m!801183))

(assert (=> b!551009 d!192516))

(declare-fun d!192518 () Bool)

(assert (=> d!192518 (= (inv!6828 (tag!1295 (rule!1757 token!491))) (= (mod (str.len (value!34281 (tag!1295 (rule!1757 token!491)))) 2) 0))))

(assert (=> b!550989 d!192518))

(declare-fun d!192520 () Bool)

(declare-fun res!236453 () Bool)

(declare-fun e!333538 () Bool)

(assert (=> d!192520 (=> (not res!236453) (not e!333538))))

(assert (=> d!192520 (= res!236453 (semiInverseModEq!399 (toChars!1739 (transformation!1033 (rule!1757 token!491))) (toValue!1880 (transformation!1033 (rule!1757 token!491)))))))

(assert (=> d!192520 (= (inv!6831 (transformation!1033 (rule!1757 token!491))) e!333538)))

(declare-fun b!551552 () Bool)

(assert (=> b!551552 (= e!333538 (equivClasses!382 (toChars!1739 (transformation!1033 (rule!1757 token!491))) (toValue!1880 (transformation!1033 (rule!1757 token!491)))))))

(assert (= (and d!192520 res!236453) b!551552))

(declare-fun m!801185 () Bool)

(assert (=> d!192520 m!801185))

(declare-fun m!801187 () Bool)

(assert (=> b!551552 m!801187))

(assert (=> b!550989 d!192520))

(declare-fun d!192522 () Bool)

(assert (=> d!192522 true))

(declare-fun lt!232634 () Bool)

(declare-fun lambda!15537 () Int)

(declare-fun forall!1528 (List!5457 Int) Bool)

(assert (=> d!192522 (= lt!232634 (forall!1528 rules!3103 lambda!15537))))

(declare-fun e!333544 () Bool)

(assert (=> d!192522 (= lt!232634 e!333544)))

(declare-fun res!236459 () Bool)

(assert (=> d!192522 (=> res!236459 e!333544)))

(assert (=> d!192522 (= res!236459 (not ((_ is Cons!5447) rules!3103)))))

(assert (=> d!192522 (= (rulesValidInductive!366 thiss!22590 rules!3103) lt!232634)))

(declare-fun b!551557 () Bool)

(declare-fun e!333543 () Bool)

(assert (=> b!551557 (= e!333544 e!333543)))

(declare-fun res!236458 () Bool)

(assert (=> b!551557 (=> (not res!236458) (not e!333543))))

(assert (=> b!551557 (= res!236458 (ruleValid!253 thiss!22590 (h!10848 rules!3103)))))

(declare-fun b!551558 () Bool)

(assert (=> b!551558 (= e!333543 (rulesValidInductive!366 thiss!22590 (t!75058 rules!3103)))))

(assert (= (and d!192522 (not res!236459)) b!551557))

(assert (= (and b!551557 res!236458) b!551558))

(declare-fun m!801189 () Bool)

(assert (=> d!192522 m!801189))

(declare-fun m!801191 () Bool)

(assert (=> b!551557 m!801191))

(declare-fun m!801193 () Bool)

(assert (=> b!551558 m!801193))

(assert (=> b!550985 d!192522))

(declare-fun d!192524 () Bool)

(declare-fun list!2259 (Conc!1750) List!5455)

(assert (=> d!192524 (= (list!2257 (charsOf!662 token!491)) (list!2259 (c!103621 (charsOf!662 token!491))))))

(declare-fun bs!67886 () Bool)

(assert (= bs!67886 d!192524))

(declare-fun m!801195 () Bool)

(assert (=> bs!67886 m!801195))

(assert (=> b!550986 d!192524))

(declare-fun d!192526 () Bool)

(declare-fun lt!232637 () BalanceConc!3508)

(assert (=> d!192526 (= (list!2257 lt!232637) (originalCharacters!1072 token!491))))

(assert (=> d!192526 (= lt!232637 (dynLambda!3180 (toChars!1739 (transformation!1033 (rule!1757 token!491))) (value!34307 token!491)))))

(assert (=> d!192526 (= (charsOf!662 token!491) lt!232637)))

(declare-fun b_lambda!21229 () Bool)

(assert (=> (not b_lambda!21229) (not d!192526)))

(declare-fun tb!48223 () Bool)

(declare-fun t!75112 () Bool)

(assert (=> (and b!551010 (= (toChars!1739 (transformation!1033 (h!10848 rules!3103))) (toChars!1739 (transformation!1033 (rule!1757 token!491)))) t!75112) tb!48223))

(declare-fun b!551561 () Bool)

(declare-fun e!333545 () Bool)

(declare-fun tp!174354 () Bool)

(assert (=> b!551561 (= e!333545 (and (inv!6835 (c!103621 (dynLambda!3180 (toChars!1739 (transformation!1033 (rule!1757 token!491))) (value!34307 token!491)))) tp!174354))))

(declare-fun result!53972 () Bool)

(assert (=> tb!48223 (= result!53972 (and (inv!6836 (dynLambda!3180 (toChars!1739 (transformation!1033 (rule!1757 token!491))) (value!34307 token!491))) e!333545))))

(assert (= tb!48223 b!551561))

(declare-fun m!801197 () Bool)

(assert (=> b!551561 m!801197))

(declare-fun m!801199 () Bool)

(assert (=> tb!48223 m!801199))

(assert (=> d!192526 t!75112))

(declare-fun b_and!53847 () Bool)

(assert (= b_and!53823 (and (=> t!75112 result!53972) b_and!53847)))

(declare-fun t!75114 () Bool)

(declare-fun tb!48225 () Bool)

(assert (=> (and b!551018 (= (toChars!1739 (transformation!1033 (rule!1757 token!491))) (toChars!1739 (transformation!1033 (rule!1757 token!491)))) t!75114) tb!48225))

(declare-fun result!53974 () Bool)

(assert (= result!53974 result!53972))

(assert (=> d!192526 t!75114))

(declare-fun b_and!53849 () Bool)

(assert (= b_and!53825 (and (=> t!75114 result!53974) b_and!53849)))

(declare-fun m!801201 () Bool)

(assert (=> d!192526 m!801201))

(declare-fun m!801203 () Bool)

(assert (=> d!192526 m!801203))

(assert (=> b!550986 d!192526))

(declare-fun d!192528 () Bool)

(assert (=> d!192528 (= (isEmpty!3931 rules!3103) ((_ is Nil!5447) rules!3103))))

(assert (=> b!551007 d!192528))

(declare-fun d!192530 () Bool)

(declare-fun res!236464 () Bool)

(declare-fun e!333548 () Bool)

(assert (=> d!192530 (=> (not res!236464) (not e!333548))))

(assert (=> d!192530 (= res!236464 (not (isEmpty!3930 (originalCharacters!1072 token!491))))))

(assert (=> d!192530 (= (inv!6832 token!491) e!333548)))

(declare-fun b!551566 () Bool)

(declare-fun res!236465 () Bool)

(assert (=> b!551566 (=> (not res!236465) (not e!333548))))

(assert (=> b!551566 (= res!236465 (= (originalCharacters!1072 token!491) (list!2257 (dynLambda!3180 (toChars!1739 (transformation!1033 (rule!1757 token!491))) (value!34307 token!491)))))))

(declare-fun b!551567 () Bool)

(assert (=> b!551567 (= e!333548 (= (size!4358 token!491) (size!4359 (originalCharacters!1072 token!491))))))

(assert (= (and d!192530 res!236464) b!551566))

(assert (= (and b!551566 res!236465) b!551567))

(declare-fun b_lambda!21231 () Bool)

(assert (=> (not b_lambda!21231) (not b!551566)))

(assert (=> b!551566 t!75112))

(declare-fun b_and!53851 () Bool)

(assert (= b_and!53847 (and (=> t!75112 result!53972) b_and!53851)))

(assert (=> b!551566 t!75114))

(declare-fun b_and!53853 () Bool)

(assert (= b_and!53849 (and (=> t!75114 result!53974) b_and!53853)))

(declare-fun m!801205 () Bool)

(assert (=> d!192530 m!801205))

(assert (=> b!551566 m!801203))

(assert (=> b!551566 m!801203))

(declare-fun m!801207 () Bool)

(assert (=> b!551566 m!801207))

(assert (=> b!551567 m!800491))

(assert (=> start!50988 d!192530))

(declare-fun d!192532 () Bool)

(declare-fun res!236468 () Bool)

(declare-fun e!333551 () Bool)

(assert (=> d!192532 (=> (not res!236468) (not e!333551))))

(declare-fun rulesValid!363 (LexerInterface!919 List!5457) Bool)

(assert (=> d!192532 (= res!236468 (rulesValid!363 thiss!22590 rules!3103))))

(assert (=> d!192532 (= (rulesInvariant!882 thiss!22590 rules!3103) e!333551)))

(declare-fun b!551570 () Bool)

(declare-datatypes ((List!5458 0))(
  ( (Nil!5448) (Cons!5448 (h!10849 String!7028) (t!75131 List!5458)) )
))
(declare-fun noDuplicateTag!363 (LexerInterface!919 List!5457 List!5458) Bool)

(assert (=> b!551570 (= e!333551 (noDuplicateTag!363 thiss!22590 rules!3103 Nil!5448))))

(assert (= (and d!192532 res!236468) b!551570))

(declare-fun m!801209 () Bool)

(assert (=> d!192532 m!801209))

(declare-fun m!801211 () Bool)

(assert (=> b!551570 m!801211))

(assert (=> b!551005 d!192532))

(declare-fun d!192534 () Bool)

(declare-fun lt!232638 () Int)

(assert (=> d!192534 (>= lt!232638 0)))

(declare-fun e!333552 () Int)

(assert (=> d!192534 (= lt!232638 e!333552)))

(declare-fun c!103717 () Bool)

(assert (=> d!192534 (= c!103717 ((_ is Nil!5445) (originalCharacters!1072 token!491)))))

(assert (=> d!192534 (= (size!4359 (originalCharacters!1072 token!491)) lt!232638)))

(declare-fun b!551571 () Bool)

(assert (=> b!551571 (= e!333552 0)))

(declare-fun b!551572 () Bool)

(assert (=> b!551572 (= e!333552 (+ 1 (size!4359 (t!75056 (originalCharacters!1072 token!491)))))))

(assert (= (and d!192534 c!103717) b!551571))

(assert (= (and d!192534 (not c!103717)) b!551572))

(declare-fun m!801213 () Bool)

(assert (=> b!551572 m!801213))

(assert (=> b!551001 d!192534))

(declare-fun d!192536 () Bool)

(assert (=> d!192536 (= (list!2257 (charsOf!662 (_1!3498 (v!16207 lt!232428)))) (list!2259 (c!103621 (charsOf!662 (_1!3498 (v!16207 lt!232428))))))))

(declare-fun bs!67887 () Bool)

(assert (= bs!67887 d!192536))

(declare-fun m!801215 () Bool)

(assert (=> bs!67887 m!801215))

(assert (=> b!550979 d!192536))

(declare-fun b!551581 () Bool)

(declare-fun e!333559 () Bool)

(declare-fun e!333560 () Bool)

(assert (=> b!551581 (= e!333559 e!333560)))

(declare-fun res!236478 () Bool)

(assert (=> b!551581 (=> (not res!236478) (not e!333560))))

(assert (=> b!551581 (= res!236478 (not ((_ is Nil!5445) lt!232433)))))

(declare-fun b!551582 () Bool)

(declare-fun res!236479 () Bool)

(assert (=> b!551582 (=> (not res!236479) (not e!333560))))

(assert (=> b!551582 (= res!236479 (= (head!1198 lt!232424) (head!1198 lt!232433)))))

(declare-fun b!551583 () Bool)

(assert (=> b!551583 (= e!333560 (isPrefix!675 (tail!727 lt!232424) (tail!727 lt!232433)))))

(declare-fun b!551584 () Bool)

(declare-fun e!333561 () Bool)

(assert (=> b!551584 (= e!333561 (>= (size!4359 lt!232433) (size!4359 lt!232424)))))

(declare-fun d!192538 () Bool)

(assert (=> d!192538 e!333561))

(declare-fun res!236480 () Bool)

(assert (=> d!192538 (=> res!236480 e!333561)))

(declare-fun lt!232641 () Bool)

(assert (=> d!192538 (= res!236480 (not lt!232641))))

(assert (=> d!192538 (= lt!232641 e!333559)))

(declare-fun res!236477 () Bool)

(assert (=> d!192538 (=> res!236477 e!333559)))

(assert (=> d!192538 (= res!236477 ((_ is Nil!5445) lt!232424))))

(assert (=> d!192538 (= (isPrefix!675 lt!232424 lt!232433) lt!232641)))

(assert (= (and d!192538 (not res!236477)) b!551581))

(assert (= (and b!551581 res!236478) b!551582))

(assert (= (and b!551582 res!236479) b!551583))

(assert (= (and d!192538 (not res!236480)) b!551584))

(declare-fun m!801217 () Bool)

(assert (=> b!551582 m!801217))

(declare-fun m!801219 () Bool)

(assert (=> b!551582 m!801219))

(declare-fun m!801221 () Bool)

(assert (=> b!551583 m!801221))

(declare-fun m!801223 () Bool)

(assert (=> b!551583 m!801223))

(assert (=> b!551583 m!801221))

(assert (=> b!551583 m!801223))

(declare-fun m!801225 () Bool)

(assert (=> b!551583 m!801225))

(declare-fun m!801227 () Bool)

(assert (=> b!551584 m!801227))

(assert (=> b!551584 m!800463))

(assert (=> b!550979 d!192538))

(declare-fun d!192540 () Bool)

(assert (=> d!192540 (= (size!4358 (_1!3498 (v!16207 lt!232428))) (size!4359 (originalCharacters!1072 (_1!3498 (v!16207 lt!232428)))))))

(declare-fun Unit!9683 () Unit!9668)

(assert (=> d!192540 (= (lemmaCharactersSize!112 (_1!3498 (v!16207 lt!232428))) Unit!9683)))

(declare-fun bs!67888 () Bool)

(assert (= bs!67888 d!192540))

(assert (=> bs!67888 m!800381))

(assert (=> b!550979 d!192540))

(declare-fun d!192542 () Bool)

(declare-fun res!236485 () Bool)

(declare-fun e!333564 () Bool)

(assert (=> d!192542 (=> (not res!236485) (not e!333564))))

(assert (=> d!192542 (= res!236485 (validRegex!456 (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))))))

(assert (=> d!192542 (= (ruleValid!253 thiss!22590 (rule!1757 (_1!3498 (v!16207 lt!232428)))) e!333564)))

(declare-fun b!551589 () Bool)

(declare-fun res!236486 () Bool)

(assert (=> b!551589 (=> (not res!236486) (not e!333564))))

(assert (=> b!551589 (= res!236486 (not (nullable!361 (regex!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))))))

(declare-fun b!551590 () Bool)

(assert (=> b!551590 (= e!333564 (not (= (tag!1295 (rule!1757 (_1!3498 (v!16207 lt!232428)))) (String!7029 ""))))))

(assert (= (and d!192542 res!236485) b!551589))

(assert (= (and b!551589 res!236486) b!551590))

(assert (=> d!192542 m!801107))

(assert (=> b!551589 m!801101))

(assert (=> b!550979 d!192542))

(declare-fun d!192544 () Bool)

(assert (=> d!192544 (= (seqFromList!1231 lt!232401) (fromListB!534 lt!232401))))

(declare-fun bs!67889 () Bool)

(assert (= bs!67889 d!192544))

(declare-fun m!801229 () Bool)

(assert (=> bs!67889 m!801229))

(assert (=> b!550979 d!192544))

(declare-fun b!551591 () Bool)

(declare-fun e!333565 () Bool)

(declare-fun e!333566 () Bool)

(assert (=> b!551591 (= e!333565 e!333566)))

(declare-fun res!236488 () Bool)

(assert (=> b!551591 (=> (not res!236488) (not e!333566))))

(assert (=> b!551591 (= res!236488 (not ((_ is Nil!5445) lt!232404)))))

(declare-fun b!551592 () Bool)

(declare-fun res!236489 () Bool)

(assert (=> b!551592 (=> (not res!236489) (not e!333566))))

(assert (=> b!551592 (= res!236489 (= (head!1198 input!2705) (head!1198 lt!232404)))))

(declare-fun b!551593 () Bool)

(assert (=> b!551593 (= e!333566 (isPrefix!675 (tail!727 input!2705) (tail!727 lt!232404)))))

(declare-fun b!551594 () Bool)

(declare-fun e!333567 () Bool)

(assert (=> b!551594 (= e!333567 (>= (size!4359 lt!232404) (size!4359 input!2705)))))

(declare-fun d!192546 () Bool)

(assert (=> d!192546 e!333567))

(declare-fun res!236490 () Bool)

(assert (=> d!192546 (=> res!236490 e!333567)))

(declare-fun lt!232642 () Bool)

(assert (=> d!192546 (= res!236490 (not lt!232642))))

(assert (=> d!192546 (= lt!232642 e!333565)))

(declare-fun res!236487 () Bool)

(assert (=> d!192546 (=> res!236487 e!333565)))

(assert (=> d!192546 (= res!236487 ((_ is Nil!5445) input!2705))))

(assert (=> d!192546 (= (isPrefix!675 input!2705 lt!232404) lt!232642)))

(assert (= (and d!192546 (not res!236487)) b!551591))

(assert (= (and b!551591 res!236488) b!551592))

(assert (= (and b!551592 res!236489) b!551593))

(assert (= (and d!192546 (not res!236490)) b!551594))

(assert (=> b!551592 m!801079))

(declare-fun m!801231 () Bool)

(assert (=> b!551592 m!801231))

(assert (=> b!551593 m!801083))

(assert (=> b!551593 m!800857))

(assert (=> b!551593 m!801083))

(assert (=> b!551593 m!800857))

(declare-fun m!801233 () Bool)

(assert (=> b!551593 m!801233))

(assert (=> b!551594 m!800581))

(assert (=> b!551594 m!800819))

(assert (=> b!550979 d!192546))

(declare-fun d!192548 () Bool)

(declare-fun lt!232643 () BalanceConc!3508)

(assert (=> d!192548 (= (list!2257 lt!232643) (originalCharacters!1072 (_1!3498 (v!16207 lt!232428))))))

(assert (=> d!192548 (= lt!232643 (dynLambda!3180 (toChars!1739 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))) (value!34307 (_1!3498 (v!16207 lt!232428)))))))

(assert (=> d!192548 (= (charsOf!662 (_1!3498 (v!16207 lt!232428))) lt!232643)))

(declare-fun b_lambda!21233 () Bool)

(assert (=> (not b_lambda!21233) (not d!192548)))

(declare-fun t!75116 () Bool)

(declare-fun tb!48227 () Bool)

(assert (=> (and b!551010 (= (toChars!1739 (transformation!1033 (h!10848 rules!3103))) (toChars!1739 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))) t!75116) tb!48227))

(declare-fun b!551595 () Bool)

(declare-fun e!333568 () Bool)

(declare-fun tp!174355 () Bool)

(assert (=> b!551595 (= e!333568 (and (inv!6835 (c!103621 (dynLambda!3180 (toChars!1739 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))) (value!34307 (_1!3498 (v!16207 lt!232428)))))) tp!174355))))

(declare-fun result!53976 () Bool)

(assert (=> tb!48227 (= result!53976 (and (inv!6836 (dynLambda!3180 (toChars!1739 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))) (value!34307 (_1!3498 (v!16207 lt!232428))))) e!333568))))

(assert (= tb!48227 b!551595))

(declare-fun m!801235 () Bool)

(assert (=> b!551595 m!801235))

(declare-fun m!801237 () Bool)

(assert (=> tb!48227 m!801237))

(assert (=> d!192548 t!75116))

(declare-fun b_and!53855 () Bool)

(assert (= b_and!53851 (and (=> t!75116 result!53976) b_and!53855)))

(declare-fun t!75118 () Bool)

(declare-fun tb!48229 () Bool)

(assert (=> (and b!551018 (= (toChars!1739 (transformation!1033 (rule!1757 token!491))) (toChars!1739 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))) t!75118) tb!48229))

(declare-fun result!53978 () Bool)

(assert (= result!53978 result!53976))

(assert (=> d!192548 t!75118))

(declare-fun b_and!53857 () Bool)

(assert (= b_and!53853 (and (=> t!75118 result!53978) b_and!53857)))

(declare-fun m!801239 () Bool)

(assert (=> d!192548 m!801239))

(declare-fun m!801241 () Bool)

(assert (=> d!192548 m!801241))

(assert (=> b!550979 d!192548))

(declare-fun d!192550 () Bool)

(assert (=> d!192550 (isPrefix!675 input!2705 input!2705)))

(declare-fun lt!232646 () Unit!9668)

(declare-fun choose!3936 (List!5455 List!5455) Unit!9668)

(assert (=> d!192550 (= lt!232646 (choose!3936 input!2705 input!2705))))

(assert (=> d!192550 (= (lemmaIsPrefixRefl!415 input!2705 input!2705) lt!232646)))

(declare-fun bs!67890 () Bool)

(assert (= bs!67890 d!192550))

(assert (=> bs!67890 m!800447))

(declare-fun m!801243 () Bool)

(assert (=> bs!67890 m!801243))

(assert (=> b!550979 d!192550))

(declare-fun d!192552 () Bool)

(declare-fun lt!232647 () List!5455)

(assert (=> d!192552 (= (++!1521 lt!232401 lt!232647) input!2705)))

(declare-fun e!333569 () List!5455)

(assert (=> d!192552 (= lt!232647 e!333569)))

(declare-fun c!103718 () Bool)

(assert (=> d!192552 (= c!103718 ((_ is Cons!5445) lt!232401))))

(assert (=> d!192552 (>= (size!4359 input!2705) (size!4359 lt!232401))))

(assert (=> d!192552 (= (getSuffix!198 input!2705 lt!232401) lt!232647)))

(declare-fun b!551596 () Bool)

(assert (=> b!551596 (= e!333569 (getSuffix!198 (tail!727 input!2705) (t!75056 lt!232401)))))

(declare-fun b!551597 () Bool)

(assert (=> b!551597 (= e!333569 input!2705)))

(assert (= (and d!192552 c!103718) b!551596))

(assert (= (and d!192552 (not c!103718)) b!551597))

(declare-fun m!801245 () Bool)

(assert (=> d!192552 m!801245))

(assert (=> d!192552 m!800819))

(assert (=> d!192552 m!800455))

(assert (=> b!551596 m!801083))

(assert (=> b!551596 m!801083))

(declare-fun m!801247 () Bool)

(assert (=> b!551596 m!801247))

(assert (=> b!550979 d!192552))

(declare-fun d!192554 () Bool)

(declare-fun e!333572 () Bool)

(assert (=> d!192554 e!333572))

(declare-fun res!236493 () Bool)

(assert (=> d!192554 (=> (not res!236493) (not e!333572))))

(assert (=> d!192554 (= res!236493 (semiInverseModEq!399 (toChars!1739 (transformation!1033 (rule!1757 token!491))) (toValue!1880 (transformation!1033 (rule!1757 token!491)))))))

(declare-fun Unit!9684 () Unit!9668)

(assert (=> d!192554 (= (lemmaInv!181 (transformation!1033 (rule!1757 token!491))) Unit!9684)))

(declare-fun b!551600 () Bool)

(assert (=> b!551600 (= e!333572 (equivClasses!382 (toChars!1739 (transformation!1033 (rule!1757 token!491))) (toValue!1880 (transformation!1033 (rule!1757 token!491)))))))

(assert (= (and d!192554 res!236493) b!551600))

(assert (=> d!192554 m!801185))

(assert (=> b!551600 m!801187))

(assert (=> b!550979 d!192554))

(declare-fun d!192556 () Bool)

(assert (=> d!192556 (= (size!4358 token!491) (size!4359 (originalCharacters!1072 token!491)))))

(declare-fun Unit!9685 () Unit!9668)

(assert (=> d!192556 (= (lemmaCharactersSize!112 token!491) Unit!9685)))

(declare-fun bs!67891 () Bool)

(assert (= bs!67891 d!192556))

(assert (=> bs!67891 m!800491))

(assert (=> b!550979 d!192556))

(declare-fun b!551604 () Bool)

(declare-fun e!333574 () Bool)

(declare-fun lt!232648 () List!5455)

(assert (=> b!551604 (= e!333574 (or (not (= (_2!3498 (v!16207 lt!232428)) Nil!5445)) (= lt!232648 lt!232401)))))

(declare-fun b!551601 () Bool)

(declare-fun e!333573 () List!5455)

(assert (=> b!551601 (= e!333573 (_2!3498 (v!16207 lt!232428)))))

(declare-fun d!192558 () Bool)

(assert (=> d!192558 e!333574))

(declare-fun res!236495 () Bool)

(assert (=> d!192558 (=> (not res!236495) (not e!333574))))

(assert (=> d!192558 (= res!236495 (= (content!952 lt!232648) ((_ map or) (content!952 lt!232401) (content!952 (_2!3498 (v!16207 lt!232428))))))))

(assert (=> d!192558 (= lt!232648 e!333573)))

(declare-fun c!103719 () Bool)

(assert (=> d!192558 (= c!103719 ((_ is Nil!5445) lt!232401))))

(assert (=> d!192558 (= (++!1521 lt!232401 (_2!3498 (v!16207 lt!232428))) lt!232648)))

(declare-fun b!551602 () Bool)

(assert (=> b!551602 (= e!333573 (Cons!5445 (h!10846 lt!232401) (++!1521 (t!75056 lt!232401) (_2!3498 (v!16207 lt!232428)))))))

(declare-fun b!551603 () Bool)

(declare-fun res!236494 () Bool)

(assert (=> b!551603 (=> (not res!236494) (not e!333574))))

(assert (=> b!551603 (= res!236494 (= (size!4359 lt!232648) (+ (size!4359 lt!232401) (size!4359 (_2!3498 (v!16207 lt!232428))))))))

(assert (= (and d!192558 c!103719) b!551601))

(assert (= (and d!192558 (not c!103719)) b!551602))

(assert (= (and d!192558 res!236495) b!551603))

(assert (= (and b!551603 res!236494) b!551604))

(declare-fun m!801249 () Bool)

(assert (=> d!192558 m!801249))

(declare-fun m!801251 () Bool)

(assert (=> d!192558 m!801251))

(declare-fun m!801253 () Bool)

(assert (=> d!192558 m!801253))

(declare-fun m!801255 () Bool)

(assert (=> b!551602 m!801255))

(declare-fun m!801257 () Bool)

(assert (=> b!551603 m!801257))

(assert (=> b!551603 m!800455))

(declare-fun m!801259 () Bool)

(assert (=> b!551603 m!801259))

(assert (=> b!550979 d!192558))

(declare-fun d!192560 () Bool)

(assert (=> d!192560 (isPrefix!675 lt!232424 (++!1521 lt!232424 suffix!1342))))

(declare-fun lt!232651 () Unit!9668)

(declare-fun choose!3937 (List!5455 List!5455) Unit!9668)

(assert (=> d!192560 (= lt!232651 (choose!3937 lt!232424 suffix!1342))))

(assert (=> d!192560 (= (lemmaConcatTwoListThenFirstIsPrefix!526 lt!232424 suffix!1342) lt!232651)))

(declare-fun bs!67892 () Bool)

(assert (= bs!67892 d!192560))

(assert (=> bs!67892 m!800377))

(assert (=> bs!67892 m!800377))

(declare-fun m!801261 () Bool)

(assert (=> bs!67892 m!801261))

(declare-fun m!801263 () Bool)

(assert (=> bs!67892 m!801263))

(assert (=> b!550979 d!192560))

(declare-fun d!192562 () Bool)

(declare-fun e!333575 () Bool)

(assert (=> d!192562 e!333575))

(declare-fun res!236496 () Bool)

(assert (=> d!192562 (=> (not res!236496) (not e!333575))))

(assert (=> d!192562 (= res!236496 (semiInverseModEq!399 (toChars!1739 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))) (toValue!1880 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))))))

(declare-fun Unit!9686 () Unit!9668)

(assert (=> d!192562 (= (lemmaInv!181 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))) Unit!9686)))

(declare-fun b!551605 () Bool)

(assert (=> b!551605 (= e!333575 (equivClasses!382 (toChars!1739 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))) (toValue!1880 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))))))

(assert (= (and d!192562 res!236496) b!551605))

(declare-fun m!801265 () Bool)

(assert (=> d!192562 m!801265))

(declare-fun m!801267 () Bool)

(assert (=> b!551605 m!801267))

(assert (=> b!550979 d!192562))

(declare-fun d!192564 () Bool)

(assert (=> d!192564 (= (apply!1308 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))) lt!232409) (dynLambda!3181 (toValue!1880 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428))))) lt!232409))))

(declare-fun b_lambda!21235 () Bool)

(assert (=> (not b_lambda!21235) (not d!192564)))

(assert (=> d!192564 t!75088))

(declare-fun b_and!53859 () Bool)

(assert (= b_and!53827 (and (=> t!75088 result!53942) b_and!53859)))

(assert (=> d!192564 t!75090))

(declare-fun b_and!53861 () Bool)

(assert (= b_and!53829 (and (=> t!75090 result!53944) b_and!53861)))

(assert (=> d!192564 m!800867))

(assert (=> b!550979 d!192564))

(declare-fun d!192566 () Bool)

(assert (=> d!192566 (and (= lt!232424 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!232654 () Unit!9668)

(declare-fun choose!3938 (List!5455 List!5455 List!5455 List!5455) Unit!9668)

(assert (=> d!192566 (= lt!232654 (choose!3938 lt!232424 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!192566 (= (++!1521 lt!232424 suffix!1342) (++!1521 input!2705 suffix!1342))))

(assert (=> d!192566 (= (lemmaConcatSameAndSameSizesThenSameLists!118 lt!232424 suffix!1342 input!2705 suffix!1342) lt!232654)))

(declare-fun bs!67893 () Bool)

(assert (= bs!67893 d!192566))

(declare-fun m!801269 () Bool)

(assert (=> bs!67893 m!801269))

(assert (=> bs!67893 m!800377))

(assert (=> bs!67893 m!800501))

(assert (=> b!550979 d!192566))

(declare-fun d!192568 () Bool)

(assert (=> d!192568 (isPrefix!675 lt!232401 (++!1521 lt!232401 (_2!3498 (v!16207 lt!232428))))))

(declare-fun lt!232655 () Unit!9668)

(assert (=> d!192568 (= lt!232655 (choose!3937 lt!232401 (_2!3498 (v!16207 lt!232428))))))

(assert (=> d!192568 (= (lemmaConcatTwoListThenFirstIsPrefix!526 lt!232401 (_2!3498 (v!16207 lt!232428))) lt!232655)))

(declare-fun bs!67894 () Bool)

(assert (= bs!67894 d!192568))

(assert (=> bs!67894 m!800439))

(assert (=> bs!67894 m!800439))

(declare-fun m!801271 () Bool)

(assert (=> bs!67894 m!801271))

(declare-fun m!801273 () Bool)

(assert (=> bs!67894 m!801273))

(assert (=> b!550979 d!192568))

(declare-fun b!551606 () Bool)

(declare-fun e!333576 () Bool)

(declare-fun e!333577 () Bool)

(assert (=> b!551606 (= e!333576 e!333577)))

(declare-fun res!236498 () Bool)

(assert (=> b!551606 (=> (not res!236498) (not e!333577))))

(assert (=> b!551606 (= res!236498 (not ((_ is Nil!5445) input!2705)))))

(declare-fun b!551607 () Bool)

(declare-fun res!236499 () Bool)

(assert (=> b!551607 (=> (not res!236499) (not e!333577))))

(assert (=> b!551607 (= res!236499 (= (head!1198 input!2705) (head!1198 input!2705)))))

(declare-fun b!551608 () Bool)

(assert (=> b!551608 (= e!333577 (isPrefix!675 (tail!727 input!2705) (tail!727 input!2705)))))

(declare-fun b!551609 () Bool)

(declare-fun e!333578 () Bool)

(assert (=> b!551609 (= e!333578 (>= (size!4359 input!2705) (size!4359 input!2705)))))

(declare-fun d!192570 () Bool)

(assert (=> d!192570 e!333578))

(declare-fun res!236500 () Bool)

(assert (=> d!192570 (=> res!236500 e!333578)))

(declare-fun lt!232656 () Bool)

(assert (=> d!192570 (= res!236500 (not lt!232656))))

(assert (=> d!192570 (= lt!232656 e!333576)))

(declare-fun res!236497 () Bool)

(assert (=> d!192570 (=> res!236497 e!333576)))

(assert (=> d!192570 (= res!236497 ((_ is Nil!5445) input!2705))))

(assert (=> d!192570 (= (isPrefix!675 input!2705 input!2705) lt!232656)))

(assert (= (and d!192570 (not res!236497)) b!551606))

(assert (= (and b!551606 res!236498) b!551607))

(assert (= (and b!551607 res!236499) b!551608))

(assert (= (and d!192570 (not res!236500)) b!551609))

(assert (=> b!551607 m!801079))

(assert (=> b!551607 m!801079))

(assert (=> b!551608 m!801083))

(assert (=> b!551608 m!801083))

(assert (=> b!551608 m!801083))

(assert (=> b!551608 m!801083))

(declare-fun m!801275 () Bool)

(assert (=> b!551608 m!801275))

(assert (=> b!551609 m!800819))

(assert (=> b!551609 m!800819))

(assert (=> b!550979 d!192570))

(declare-fun d!192572 () Bool)

(assert (=> d!192572 (ruleValid!253 thiss!22590 (rule!1757 token!491))))

(declare-fun lt!232659 () Unit!9668)

(declare-fun choose!3939 (LexerInterface!919 Rule!1866 List!5457) Unit!9668)

(assert (=> d!192572 (= lt!232659 (choose!3939 thiss!22590 (rule!1757 token!491) rules!3103))))

(assert (=> d!192572 (contains!1275 rules!3103 (rule!1757 token!491))))

(assert (=> d!192572 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!112 thiss!22590 (rule!1757 token!491) rules!3103) lt!232659)))

(declare-fun bs!67895 () Bool)

(assert (= bs!67895 d!192572))

(assert (=> bs!67895 m!800431))

(declare-fun m!801277 () Bool)

(assert (=> bs!67895 m!801277))

(assert (=> bs!67895 m!800411))

(assert (=> b!550979 d!192572))

(declare-fun d!192574 () Bool)

(assert (=> d!192574 (isPrefix!675 input!2705 (++!1521 input!2705 suffix!1342))))

(declare-fun lt!232660 () Unit!9668)

(assert (=> d!192574 (= lt!232660 (choose!3937 input!2705 suffix!1342))))

(assert (=> d!192574 (= (lemmaConcatTwoListThenFirstIsPrefix!526 input!2705 suffix!1342) lt!232660)))

(declare-fun bs!67896 () Bool)

(assert (= bs!67896 d!192574))

(assert (=> bs!67896 m!800501))

(assert (=> bs!67896 m!800501))

(declare-fun m!801279 () Bool)

(assert (=> bs!67896 m!801279))

(declare-fun m!801281 () Bool)

(assert (=> bs!67896 m!801281))

(assert (=> b!550979 d!192574))

(declare-fun d!192576 () Bool)

(declare-fun lt!232661 () Int)

(assert (=> d!192576 (>= lt!232661 0)))

(declare-fun e!333579 () Int)

(assert (=> d!192576 (= lt!232661 e!333579)))

(declare-fun c!103720 () Bool)

(assert (=> d!192576 (= c!103720 ((_ is Nil!5445) lt!232401))))

(assert (=> d!192576 (= (size!4359 lt!232401) lt!232661)))

(declare-fun b!551610 () Bool)

(assert (=> b!551610 (= e!333579 0)))

(declare-fun b!551611 () Bool)

(assert (=> b!551611 (= e!333579 (+ 1 (size!4359 (t!75056 lt!232401))))))

(assert (= (and d!192576 c!103720) b!551610))

(assert (= (and d!192576 (not c!103720)) b!551611))

(declare-fun m!801283 () Bool)

(assert (=> b!551611 m!801283))

(assert (=> b!550979 d!192576))

(declare-fun d!192578 () Bool)

(declare-fun res!236501 () Bool)

(declare-fun e!333580 () Bool)

(assert (=> d!192578 (=> (not res!236501) (not e!333580))))

(assert (=> d!192578 (= res!236501 (validRegex!456 (regex!1033 (rule!1757 token!491))))))

(assert (=> d!192578 (= (ruleValid!253 thiss!22590 (rule!1757 token!491)) e!333580)))

(declare-fun b!551612 () Bool)

(declare-fun res!236502 () Bool)

(assert (=> b!551612 (=> (not res!236502) (not e!333580))))

(assert (=> b!551612 (= res!236502 (not (nullable!361 (regex!1033 (rule!1757 token!491)))))))

(declare-fun b!551613 () Bool)

(assert (=> b!551613 (= e!333580 (not (= (tag!1295 (rule!1757 token!491)) (String!7029 ""))))))

(assert (= (and d!192578 res!236501) b!551612))

(assert (= (and b!551612 res!236502) b!551613))

(assert (=> d!192578 m!801089))

(assert (=> b!551612 m!801077))

(assert (=> b!550979 d!192578))

(declare-fun d!192580 () Bool)

(assert (=> d!192580 (= (_2!3498 (v!16207 lt!232428)) lt!232389)))

(declare-fun lt!232662 () Unit!9668)

(assert (=> d!192580 (= lt!232662 (choose!3928 lt!232401 (_2!3498 (v!16207 lt!232428)) lt!232401 lt!232389 input!2705))))

(assert (=> d!192580 (isPrefix!675 lt!232401 input!2705)))

(assert (=> d!192580 (= (lemmaSamePrefixThenSameSuffix!402 lt!232401 (_2!3498 (v!16207 lt!232428)) lt!232401 lt!232389 input!2705) lt!232662)))

(declare-fun bs!67897 () Bool)

(assert (= bs!67897 d!192580))

(declare-fun m!801285 () Bool)

(assert (=> bs!67897 m!801285))

(assert (=> bs!67897 m!801139))

(assert (=> b!550979 d!192580))

(declare-fun b!551614 () Bool)

(declare-fun e!333581 () Bool)

(declare-fun e!333582 () Bool)

(assert (=> b!551614 (= e!333581 e!333582)))

(declare-fun res!236504 () Bool)

(assert (=> b!551614 (=> (not res!236504) (not e!333582))))

(assert (=> b!551614 (= res!236504 (not ((_ is Nil!5445) lt!232427)))))

(declare-fun b!551615 () Bool)

(declare-fun res!236505 () Bool)

(assert (=> b!551615 (=> (not res!236505) (not e!333582))))

(assert (=> b!551615 (= res!236505 (= (head!1198 lt!232401) (head!1198 lt!232427)))))

(declare-fun b!551616 () Bool)

(assert (=> b!551616 (= e!333582 (isPrefix!675 (tail!727 lt!232401) (tail!727 lt!232427)))))

(declare-fun b!551617 () Bool)

(declare-fun e!333583 () Bool)

(assert (=> b!551617 (= e!333583 (>= (size!4359 lt!232427) (size!4359 lt!232401)))))

(declare-fun d!192582 () Bool)

(assert (=> d!192582 e!333583))

(declare-fun res!236506 () Bool)

(assert (=> d!192582 (=> res!236506 e!333583)))

(declare-fun lt!232663 () Bool)

(assert (=> d!192582 (= res!236506 (not lt!232663))))

(assert (=> d!192582 (= lt!232663 e!333581)))

(declare-fun res!236503 () Bool)

(assert (=> d!192582 (=> res!236503 e!333581)))

(assert (=> d!192582 (= res!236503 ((_ is Nil!5445) lt!232401))))

(assert (=> d!192582 (= (isPrefix!675 lt!232401 lt!232427) lt!232663)))

(assert (= (and d!192582 (not res!236503)) b!551614))

(assert (= (and b!551614 res!236504) b!551615))

(assert (= (and b!551615 res!236505) b!551616))

(assert (= (and d!192582 (not res!236506)) b!551617))

(declare-fun m!801287 () Bool)

(assert (=> b!551615 m!801287))

(declare-fun m!801289 () Bool)

(assert (=> b!551615 m!801289))

(declare-fun m!801291 () Bool)

(assert (=> b!551616 m!801291))

(declare-fun m!801293 () Bool)

(assert (=> b!551616 m!801293))

(assert (=> b!551616 m!801291))

(assert (=> b!551616 m!801293))

(declare-fun m!801295 () Bool)

(assert (=> b!551616 m!801295))

(declare-fun m!801297 () Bool)

(assert (=> b!551617 m!801297))

(assert (=> b!551617 m!800455))

(assert (=> b!550979 d!192582))

(declare-fun d!192584 () Bool)

(declare-fun lt!232664 () Int)

(assert (=> d!192584 (>= lt!232664 0)))

(declare-fun e!333584 () Int)

(assert (=> d!192584 (= lt!232664 e!333584)))

(declare-fun c!103721 () Bool)

(assert (=> d!192584 (= c!103721 ((_ is Nil!5445) lt!232424))))

(assert (=> d!192584 (= (size!4359 lt!232424) lt!232664)))

(declare-fun b!551618 () Bool)

(assert (=> b!551618 (= e!333584 0)))

(declare-fun b!551619 () Bool)

(assert (=> b!551619 (= e!333584 (+ 1 (size!4359 (t!75056 lt!232424))))))

(assert (= (and d!192584 c!103721) b!551618))

(assert (= (and d!192584 (not c!103721)) b!551619))

(declare-fun m!801299 () Bool)

(assert (=> b!551619 m!801299))

(assert (=> b!550979 d!192584))

(declare-fun d!192586 () Bool)

(assert (=> d!192586 (ruleValid!253 thiss!22590 (rule!1757 (_1!3498 (v!16207 lt!232428))))))

(declare-fun lt!232665 () Unit!9668)

(assert (=> d!192586 (= lt!232665 (choose!3939 thiss!22590 (rule!1757 (_1!3498 (v!16207 lt!232428))) rules!3103))))

(assert (=> d!192586 (contains!1275 rules!3103 (rule!1757 (_1!3498 (v!16207 lt!232428))))))

(assert (=> d!192586 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!112 thiss!22590 (rule!1757 (_1!3498 (v!16207 lt!232428))) rules!3103) lt!232665)))

(declare-fun bs!67898 () Bool)

(assert (= bs!67898 d!192586))

(assert (=> bs!67898 m!800467))

(declare-fun m!801301 () Bool)

(assert (=> bs!67898 m!801301))

(assert (=> bs!67898 m!800481))

(assert (=> b!550979 d!192586))

(declare-fun b!551620 () Bool)

(declare-fun e!333585 () Bool)

(declare-fun e!333586 () Bool)

(assert (=> b!551620 (= e!333585 e!333586)))

(declare-fun res!236508 () Bool)

(assert (=> b!551620 (=> (not res!236508) (not e!333586))))

(assert (=> b!551620 (= res!236508 (not ((_ is Nil!5445) lt!232433)))))

(declare-fun b!551621 () Bool)

(declare-fun res!236509 () Bool)

(assert (=> b!551621 (=> (not res!236509) (not e!333586))))

(assert (=> b!551621 (= res!236509 (= (head!1198 input!2705) (head!1198 lt!232433)))))

(declare-fun b!551622 () Bool)

(assert (=> b!551622 (= e!333586 (isPrefix!675 (tail!727 input!2705) (tail!727 lt!232433)))))

(declare-fun b!551623 () Bool)

(declare-fun e!333587 () Bool)

(assert (=> b!551623 (= e!333587 (>= (size!4359 lt!232433) (size!4359 input!2705)))))

(declare-fun d!192588 () Bool)

(assert (=> d!192588 e!333587))

(declare-fun res!236510 () Bool)

(assert (=> d!192588 (=> res!236510 e!333587)))

(declare-fun lt!232666 () Bool)

(assert (=> d!192588 (= res!236510 (not lt!232666))))

(assert (=> d!192588 (= lt!232666 e!333585)))

(declare-fun res!236507 () Bool)

(assert (=> d!192588 (=> res!236507 e!333585)))

(assert (=> d!192588 (= res!236507 ((_ is Nil!5445) input!2705))))

(assert (=> d!192588 (= (isPrefix!675 input!2705 lt!232433) lt!232666)))

(assert (= (and d!192588 (not res!236507)) b!551620))

(assert (= (and b!551620 res!236508) b!551621))

(assert (= (and b!551621 res!236509) b!551622))

(assert (= (and d!192588 (not res!236510)) b!551623))

(assert (=> b!551621 m!801079))

(assert (=> b!551621 m!801219))

(assert (=> b!551622 m!801083))

(assert (=> b!551622 m!801223))

(assert (=> b!551622 m!801083))

(assert (=> b!551622 m!801223))

(declare-fun m!801303 () Bool)

(assert (=> b!551622 m!801303))

(assert (=> b!551623 m!801227))

(assert (=> b!551623 m!800819))

(assert (=> b!550979 d!192588))

(declare-fun d!192590 () Bool)

(assert (=> d!192590 (= (rule!1757 (_1!3498 (v!16207 lt!232428))) (rule!1757 token!491))))

(declare-fun lt!232669 () Unit!9668)

(declare-fun choose!3940 (List!5457 Rule!1866 Rule!1866) Unit!9668)

(assert (=> d!192590 (= lt!232669 (choose!3940 rules!3103 (rule!1757 (_1!3498 (v!16207 lt!232428))) (rule!1757 token!491)))))

(assert (=> d!192590 (contains!1275 rules!3103 (rule!1757 (_1!3498 (v!16207 lt!232428))))))

(assert (=> d!192590 (= (lemmaSameIndexThenSameElement!8 rules!3103 (rule!1757 (_1!3498 (v!16207 lt!232428))) (rule!1757 token!491)) lt!232669)))

(declare-fun bs!67899 () Bool)

(assert (= bs!67899 d!192590))

(declare-fun m!801305 () Bool)

(assert (=> bs!67899 m!801305))

(assert (=> bs!67899 m!800481))

(assert (=> b!551002 d!192590))

(declare-fun b!551634 () Bool)

(declare-fun b_free!15381 () Bool)

(declare-fun b_next!15397 () Bool)

(assert (=> b!551634 (= b_free!15381 (not b_next!15397))))

(declare-fun t!75120 () Bool)

(declare-fun tb!48231 () Bool)

(assert (=> (and b!551634 (= (toValue!1880 (transformation!1033 (h!10848 (t!75058 rules!3103)))) (toValue!1880 (transformation!1033 (rule!1757 token!491)))) t!75120) tb!48231))

(declare-fun result!53982 () Bool)

(assert (= result!53982 result!53932))

(assert (=> d!192328 t!75120))

(assert (=> d!192416 t!75120))

(declare-fun t!75122 () Bool)

(declare-fun tb!48233 () Bool)

(assert (=> (and b!551634 (= (toValue!1880 (transformation!1033 (h!10848 (t!75058 rules!3103)))) (toValue!1880 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))) t!75122) tb!48233))

(declare-fun result!53984 () Bool)

(assert (= result!53984 result!53942))

(assert (=> d!192424 t!75122))

(assert (=> d!192564 t!75122))

(declare-fun b_and!53863 () Bool)

(declare-fun tp!174365 () Bool)

(assert (=> b!551634 (= tp!174365 (and (=> t!75120 result!53982) (=> t!75122 result!53984) b_and!53863))))

(declare-fun b_free!15383 () Bool)

(declare-fun b_next!15399 () Bool)

(assert (=> b!551634 (= b_free!15383 (not b_next!15399))))

(declare-fun tb!48235 () Bool)

(declare-fun t!75124 () Bool)

(assert (=> (and b!551634 (= (toChars!1739 (transformation!1033 (h!10848 (t!75058 rules!3103)))) (toChars!1739 (transformation!1033 (rule!1757 token!491)))) t!75124) tb!48235))

(declare-fun result!53986 () Bool)

(assert (= result!53986 result!53972))

(assert (=> d!192526 t!75124))

(assert (=> b!551566 t!75124))

(declare-fun tb!48237 () Bool)

(declare-fun t!75126 () Bool)

(assert (=> (and b!551634 (= (toChars!1739 (transformation!1033 (h!10848 (t!75058 rules!3103)))) (toChars!1739 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))) t!75126) tb!48237))

(declare-fun result!53988 () Bool)

(assert (= result!53988 result!53938))

(assert (=> d!192424 t!75126))

(declare-fun tb!48239 () Bool)

(declare-fun t!75128 () Bool)

(assert (=> (and b!551634 (= (toChars!1739 (transformation!1033 (h!10848 (t!75058 rules!3103)))) (toChars!1739 (transformation!1033 (rule!1757 (_1!3498 (v!16207 lt!232428)))))) t!75128) tb!48239))

(declare-fun result!53990 () Bool)

(assert (= result!53990 result!53976))

(assert (=> d!192548 t!75128))

(declare-fun t!75130 () Bool)

(declare-fun tb!48241 () Bool)

(assert (=> (and b!551634 (= (toChars!1739 (transformation!1033 (h!10848 (t!75058 rules!3103)))) (toChars!1739 (transformation!1033 (rule!1757 token!491)))) t!75130) tb!48241))

(declare-fun result!53992 () Bool)

(assert (= result!53992 result!53926))

(assert (=> d!192328 t!75130))

(declare-fun tp!174364 () Bool)

(declare-fun b_and!53865 () Bool)

(assert (=> b!551634 (= tp!174364 (and (=> t!75124 result!53986) (=> t!75128 result!53990) (=> t!75130 result!53992) (=> t!75126 result!53988) b_and!53865))))

(declare-fun e!333599 () Bool)

(assert (=> b!551634 (= e!333599 (and tp!174365 tp!174364))))

(declare-fun tp!174366 () Bool)

(declare-fun e!333598 () Bool)

(declare-fun b!551633 () Bool)

(assert (=> b!551633 (= e!333598 (and tp!174366 (inv!6828 (tag!1295 (h!10848 (t!75058 rules!3103)))) (inv!6831 (transformation!1033 (h!10848 (t!75058 rules!3103)))) e!333599))))

(declare-fun b!551632 () Bool)

(declare-fun e!333596 () Bool)

(declare-fun tp!174367 () Bool)

(assert (=> b!551632 (= e!333596 (and e!333598 tp!174367))))

(assert (=> b!550984 (= tp!174298 e!333596)))

(assert (= b!551633 b!551634))

(assert (= b!551632 b!551633))

(assert (= (and b!550984 ((_ is Cons!5447) (t!75058 rules!3103))) b!551632))

(declare-fun m!801307 () Bool)

(assert (=> b!551633 m!801307))

(declare-fun m!801309 () Bool)

(assert (=> b!551633 m!801309))

(declare-fun b!551647 () Bool)

(declare-fun e!333602 () Bool)

(declare-fun tp!174380 () Bool)

(assert (=> b!551647 (= e!333602 tp!174380)))

(assert (=> b!550989 (= tp!174302 e!333602)))

(declare-fun b!551648 () Bool)

(declare-fun tp!174378 () Bool)

(declare-fun tp!174381 () Bool)

(assert (=> b!551648 (= e!333602 (and tp!174378 tp!174381))))

(declare-fun b!551646 () Bool)

(declare-fun tp!174382 () Bool)

(declare-fun tp!174379 () Bool)

(assert (=> b!551646 (= e!333602 (and tp!174382 tp!174379))))

(declare-fun b!551645 () Bool)

(assert (=> b!551645 (= e!333602 tp_is_empty!3089)))

(assert (= (and b!550989 ((_ is ElementMatch!1367) (regex!1033 (rule!1757 token!491)))) b!551645))

(assert (= (and b!550989 ((_ is Concat!2424) (regex!1033 (rule!1757 token!491)))) b!551646))

(assert (= (and b!550989 ((_ is Star!1367) (regex!1033 (rule!1757 token!491)))) b!551647))

(assert (= (and b!550989 ((_ is Union!1367) (regex!1033 (rule!1757 token!491)))) b!551648))

(declare-fun b!551651 () Bool)

(declare-fun e!333603 () Bool)

(declare-fun tp!174385 () Bool)

(assert (=> b!551651 (= e!333603 tp!174385)))

(assert (=> b!551012 (= tp!174299 e!333603)))

(declare-fun b!551652 () Bool)

(declare-fun tp!174383 () Bool)

(declare-fun tp!174386 () Bool)

(assert (=> b!551652 (= e!333603 (and tp!174383 tp!174386))))

(declare-fun b!551650 () Bool)

(declare-fun tp!174387 () Bool)

(declare-fun tp!174384 () Bool)

(assert (=> b!551650 (= e!333603 (and tp!174387 tp!174384))))

(declare-fun b!551649 () Bool)

(assert (=> b!551649 (= e!333603 tp_is_empty!3089)))

(assert (= (and b!551012 ((_ is ElementMatch!1367) (regex!1033 (h!10848 rules!3103)))) b!551649))

(assert (= (and b!551012 ((_ is Concat!2424) (regex!1033 (h!10848 rules!3103)))) b!551650))

(assert (= (and b!551012 ((_ is Star!1367) (regex!1033 (h!10848 rules!3103)))) b!551651))

(assert (= (and b!551012 ((_ is Union!1367) (regex!1033 (h!10848 rules!3103)))) b!551652))

(declare-fun b!551657 () Bool)

(declare-fun e!333606 () Bool)

(declare-fun tp!174390 () Bool)

(assert (=> b!551657 (= e!333606 (and tp_is_empty!3089 tp!174390))))

(assert (=> b!550990 (= tp!174297 e!333606)))

(assert (= (and b!550990 ((_ is Cons!5445) (t!75056 suffix!1342))) b!551657))

(declare-fun b!551658 () Bool)

(declare-fun e!333607 () Bool)

(declare-fun tp!174391 () Bool)

(assert (=> b!551658 (= e!333607 (and tp_is_empty!3089 tp!174391))))

(assert (=> b!551006 (= tp!174304 e!333607)))

(assert (= (and b!551006 ((_ is Cons!5445) (t!75056 input!2705))) b!551658))

(declare-fun b!551659 () Bool)

(declare-fun e!333608 () Bool)

(declare-fun tp!174392 () Bool)

(assert (=> b!551659 (= e!333608 (and tp_is_empty!3089 tp!174392))))

(assert (=> b!550976 (= tp!174303 e!333608)))

(assert (= (and b!550976 ((_ is Cons!5445) (originalCharacters!1072 token!491))) b!551659))

(declare-fun b_lambda!21237 () Bool)

(assert (= b_lambda!21229 (or (and b!551010 b_free!15371 (= (toChars!1739 (transformation!1033 (h!10848 rules!3103))) (toChars!1739 (transformation!1033 (rule!1757 token!491))))) (and b!551018 b_free!15375) (and b!551634 b_free!15383 (= (toChars!1739 (transformation!1033 (h!10848 (t!75058 rules!3103)))) (toChars!1739 (transformation!1033 (rule!1757 token!491))))) b_lambda!21237)))

(declare-fun b_lambda!21239 () Bool)

(assert (= b_lambda!21203 (or (and b!551010 b_free!15371 (= (toChars!1739 (transformation!1033 (h!10848 rules!3103))) (toChars!1739 (transformation!1033 (rule!1757 token!491))))) (and b!551018 b_free!15375) (and b!551634 b_free!15383 (= (toChars!1739 (transformation!1033 (h!10848 (t!75058 rules!3103)))) (toChars!1739 (transformation!1033 (rule!1757 token!491))))) b_lambda!21239)))

(declare-fun b_lambda!21241 () Bool)

(assert (= b_lambda!21205 (or (and b!551010 b_free!15369 (= (toValue!1880 (transformation!1033 (h!10848 rules!3103))) (toValue!1880 (transformation!1033 (rule!1757 token!491))))) (and b!551018 b_free!15373) (and b!551634 b_free!15381 (= (toValue!1880 (transformation!1033 (h!10848 (t!75058 rules!3103)))) (toValue!1880 (transformation!1033 (rule!1757 token!491))))) b_lambda!21241)))

(declare-fun b_lambda!21243 () Bool)

(assert (= b_lambda!21207 (or (and b!551010 b_free!15369 (= (toValue!1880 (transformation!1033 (h!10848 rules!3103))) (toValue!1880 (transformation!1033 (rule!1757 token!491))))) (and b!551018 b_free!15373) (and b!551634 b_free!15381 (= (toValue!1880 (transformation!1033 (h!10848 (t!75058 rules!3103)))) (toValue!1880 (transformation!1033 (rule!1757 token!491))))) b_lambda!21243)))

(declare-fun b_lambda!21245 () Bool)

(assert (= b_lambda!21231 (or (and b!551010 b_free!15371 (= (toChars!1739 (transformation!1033 (h!10848 rules!3103))) (toChars!1739 (transformation!1033 (rule!1757 token!491))))) (and b!551018 b_free!15375) (and b!551634 b_free!15383 (= (toChars!1739 (transformation!1033 (h!10848 (t!75058 rules!3103)))) (toChars!1739 (transformation!1033 (rule!1757 token!491))))) b_lambda!21245)))

(check-sat (not d!192554) (not b!551608) (not d!192530) (not d!192524) b_and!53857 (not d!192418) (not d!192504) (not d!192586) (not d!192320) (not d!192322) (not b!551583) (not b_lambda!21243) (not d!192484) (not b!551540) (not b!551539) (not b_lambda!21241) (not b!551264) (not b!551332) (not d!192556) (not b!551266) (not b!551085) (not b!551602) b_and!53863 (not b!551536) (not b!551596) b_and!53855 (not b!551526) (not b_next!15391) (not b!551538) (not b!551650) (not b!551083) (not b!551082) (not b_next!15385) (not b!551267) (not b!551658) (not b!551439) (not d!192498) (not b_next!15387) (not b!551584) (not d!192532) (not b!551648) (not b!551468) (not b!551380) (not b!551326) (not b!551566) (not tb!48191) (not b!551087) (not b!551268) (not b!551544) (not b!551371) (not d!192496) (not b!551435) (not b_lambda!21237) (not b!551611) (not d!192542) (not b!551270) (not d!192568) (not d!192508) (not b!551570) (not b!551651) (not b!551473) (not d!192526) b_and!53859 (not b!551542) (not b!551469) (not tb!48195) (not b_lambda!21233) (not b!551541) (not d!192312) (not d!192562) (not b!551471) (not b!551086) (not b!551612) (not d!192328) (not d!192426) (not d!192450) (not b!551647) (not b!551622) (not b!551259) (not b_next!15389) (not d!192422) (not b!551089) (not b!551589) (not b!551652) (not d!192548) (not d!192440) (not b!551561) (not b!551358) (not b!551632) (not b_next!15399) (not b!551530) (not b_next!15397) (not d!192540) (not d!192536) (not b!551329) (not b!551354) (not b!551436) (not d!192436) (not b!551081) (not b!551275) (not d!192510) (not b!551633) (not b_lambda!21235) (not b_lambda!21239) (not b!551592) (not b!551433) (not b!551615) (not d!192578) (not b!551551) (not d!192494) (not d!192314) (not d!192502) (not b_lambda!21209) (not d!192580) (not d!192552) (not b!551619) (not tb!48227) (not b!551333) (not b!551353) (not b!551557) (not bm!38428) (not b!551372) (not b!551262) (not b!551593) tp_is_empty!3089 (not d!192420) (not b!551328) (not b!551437) (not b!551330) (not d!192572) (not d!192558) (not d!192424) (not d!192454) (not b!551265) (not b!551616) (not b!551357) (not b!551278) (not d!192514) (not b!551572) (not b!551603) (not b!551567) (not d!192566) (not b!551331) (not b!551327) (not b!551084) (not b!551434) (not b!551623) (not d!192550) (not b!551621) (not b!551659) (not b!551595) (not d!192520) (not b!551558) (not b!551582) (not d!192590) (not d!192522) b_and!53861 b_and!53865 (not b!551370) (not bm!38427) (not b!551263) (not b!551600) (not b!551470) (not b!551552) (not b!551657) (not b!551534) (not d!192574) (not b_lambda!21211) (not bm!38422) (not b_lambda!21245) (not tb!48199) (not tb!48187) (not b!551605) (not b!551467) (not b!551543) (not d!192544) (not d!192560) (not b!551537) (not b!551607) (not d!192428) (not b!551617) (not tb!48223) (not b!551609) (not b!551594) (not d!192446) (not bm!38425) (not b!551646))
(check-sat b_and!53857 b_and!53863 b_and!53859 (not b_next!15389) b_and!53861 b_and!53865 b_and!53855 (not b_next!15391) (not b_next!15385) (not b_next!15387) (not b_next!15399) (not b_next!15397))
