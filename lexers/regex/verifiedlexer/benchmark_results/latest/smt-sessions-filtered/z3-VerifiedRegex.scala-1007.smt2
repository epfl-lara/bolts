; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50100 () Bool)

(assert start!50100)

(declare-fun b!543260 () Bool)

(declare-fun b_free!15065 () Bool)

(declare-fun b_next!15081 () Bool)

(assert (=> b!543260 (= b_free!15065 (not b_next!15081))))

(declare-fun tp!172830 () Bool)

(declare-fun b_and!53035 () Bool)

(assert (=> b!543260 (= tp!172830 b_and!53035)))

(declare-fun b_free!15067 () Bool)

(declare-fun b_next!15083 () Bool)

(assert (=> b!543260 (= b_free!15067 (not b_next!15083))))

(declare-fun tp!172824 () Bool)

(declare-fun b_and!53037 () Bool)

(assert (=> b!543260 (= tp!172824 b_and!53037)))

(declare-fun b!543238 () Bool)

(declare-fun b_free!15069 () Bool)

(declare-fun b_next!15085 () Bool)

(assert (=> b!543238 (= b_free!15069 (not b_next!15085))))

(declare-fun tp!172829 () Bool)

(declare-fun b_and!53039 () Bool)

(assert (=> b!543238 (= tp!172829 b_and!53039)))

(declare-fun b_free!15071 () Bool)

(declare-fun b_next!15087 () Bool)

(assert (=> b!543238 (= b_free!15071 (not b_next!15087))))

(declare-fun tp!172821 () Bool)

(declare-fun b_and!53041 () Bool)

(assert (=> b!543238 (= tp!172821 b_and!53041)))

(declare-fun b!543225 () Bool)

(declare-fun e!328244 () Bool)

(declare-fun e!328239 () Bool)

(assert (=> b!543225 (= e!328244 e!328239)))

(declare-fun res!231541 () Bool)

(assert (=> b!543225 (=> (not res!231541) (not e!328239))))

(declare-datatypes ((C!3592 0))(
  ( (C!3593 (val!2022 Int)) )
))
(declare-datatypes ((Regex!1335 0))(
  ( (ElementMatch!1335 (c!102616 C!3592)) (Concat!2360 (regOne!3182 Regex!1335) (regTwo!3182 Regex!1335)) (EmptyExpr!1335) (Star!1335 (reg!1664 Regex!1335)) (EmptyLang!1335) (Union!1335 (regOne!3183 Regex!1335) (regTwo!3183 Regex!1335)) )
))
(declare-datatypes ((List!5347 0))(
  ( (Nil!5337) (Cons!5337 (h!10738 (_ BitVec 16)) (t!74504 List!5347)) )
))
(declare-datatypes ((List!5348 0))(
  ( (Nil!5338) (Cons!5338 (h!10739 C!3592) (t!74505 List!5348)) )
))
(declare-datatypes ((IArray!3437 0))(
  ( (IArray!3438 (innerList!1776 List!5348)) )
))
(declare-datatypes ((Conc!1718 0))(
  ( (Node!1718 (left!4427 Conc!1718) (right!4757 Conc!1718) (csize!3666 Int) (cheight!1929 Int)) (Leaf!2726 (xs!4355 IArray!3437) (csize!3667 Int)) (Empty!1718) )
))
(declare-datatypes ((BalanceConc!3444 0))(
  ( (BalanceConc!3445 (c!102617 Conc!1718)) )
))
(declare-datatypes ((TokenValue!1025 0))(
  ( (FloatLiteralValue!2050 (text!7620 List!5347)) (TokenValueExt!1024 (__x!3948 Int)) (Broken!5125 (value!33369 List!5347)) (Object!1034) (End!1025) (Def!1025) (Underscore!1025) (Match!1025) (Else!1025) (Error!1025) (Case!1025) (If!1025) (Extends!1025) (Abstract!1025) (Class!1025) (Val!1025) (DelimiterValue!2050 (del!1085 List!5347)) (KeywordValue!1031 (value!33370 List!5347)) (CommentValue!2050 (value!33371 List!5347)) (WhitespaceValue!2050 (value!33372 List!5347)) (IndentationValue!1025 (value!33373 List!5347)) (String!6868) (Int32!1025) (Broken!5126 (value!33374 List!5347)) (Boolean!1026) (Unit!9338) (OperatorValue!1028 (op!1085 List!5347)) (IdentifierValue!2050 (value!33375 List!5347)) (IdentifierValue!2051 (value!33376 List!5347)) (WhitespaceValue!2051 (value!33377 List!5347)) (True!2050) (False!2050) (Broken!5127 (value!33378 List!5347)) (Broken!5128 (value!33379 List!5347)) (True!2051) (RightBrace!1025) (RightBracket!1025) (Colon!1025) (Null!1025) (Comma!1025) (LeftBracket!1025) (False!2051) (LeftBrace!1025) (ImaginaryLiteralValue!1025 (text!7621 List!5347)) (StringLiteralValue!3075 (value!33380 List!5347)) (EOFValue!1025 (value!33381 List!5347)) (IdentValue!1025 (value!33382 List!5347)) (DelimiterValue!2051 (value!33383 List!5347)) (DedentValue!1025 (value!33384 List!5347)) (NewLineValue!1025 (value!33385 List!5347)) (IntegerValue!3075 (value!33386 (_ BitVec 32)) (text!7622 List!5347)) (IntegerValue!3076 (value!33387 Int) (text!7623 List!5347)) (Times!1025) (Or!1025) (Equal!1025) (Minus!1025) (Broken!5129 (value!33388 List!5347)) (And!1025) (Div!1025) (LessEqual!1025) (Mod!1025) (Concat!2361) (Not!1025) (Plus!1025) (SpaceValue!1025 (value!33389 List!5347)) (IntegerValue!3077 (value!33390 Int) (text!7624 List!5347)) (StringLiteralValue!3076 (text!7625 List!5347)) (FloatLiteralValue!2051 (text!7626 List!5347)) (BytesLiteralValue!1025 (value!33391 List!5347)) (CommentValue!2051 (value!33392 List!5347)) (StringLiteralValue!3077 (value!33393 List!5347)) (ErrorTokenValue!1025 (msg!1086 List!5347)) )
))
(declare-datatypes ((String!6869 0))(
  ( (String!6870 (value!33394 String)) )
))
(declare-datatypes ((TokenValueInjection!1818 0))(
  ( (TokenValueInjection!1819 (toValue!1848 Int) (toChars!1707 Int)) )
))
(declare-datatypes ((Rule!1802 0))(
  ( (Rule!1803 (regex!1001 Regex!1335) (tag!1263 String!6869) (isSeparator!1001 Bool) (transformation!1001 TokenValueInjection!1818)) )
))
(declare-datatypes ((Token!1738 0))(
  ( (Token!1739 (value!33395 TokenValue!1025) (rule!1713 Rule!1802) (size!4282 Int) (originalCharacters!1040 List!5348)) )
))
(declare-datatypes ((tuple2!6380 0))(
  ( (tuple2!6381 (_1!3454 Token!1738) (_2!3454 List!5348)) )
))
(declare-datatypes ((Option!1351 0))(
  ( (None!1350) (Some!1350 (v!16163 tuple2!6380)) )
))
(declare-fun lt!227076 () Option!1351)

(declare-fun isDefined!1163 (Option!1351) Bool)

(assert (=> b!543225 (= res!231541 (isDefined!1163 lt!227076))))

(declare-fun b!543226 () Bool)

(declare-fun e!328237 () Bool)

(declare-fun e!328242 () Bool)

(assert (=> b!543226 (= e!328237 e!328242)))

(declare-fun res!231550 () Bool)

(assert (=> b!543226 (=> (not res!231550) (not e!328242))))

(declare-fun lt!227089 () tuple2!6380)

(declare-fun suffix!1342 () List!5348)

(declare-fun token!491 () Token!1738)

(assert (=> b!543226 (= res!231550 (and (= (_1!3454 lt!227089) token!491) (= (_2!3454 lt!227089) suffix!1342)))))

(declare-fun lt!227086 () Option!1351)

(declare-fun get!2016 (Option!1351) tuple2!6380)

(assert (=> b!543226 (= lt!227089 (get!2016 lt!227086))))

(declare-fun b!543227 () Bool)

(declare-fun e!328218 () Bool)

(declare-fun e!328231 () Bool)

(assert (=> b!543227 (= e!328218 e!328231)))

(declare-fun res!231545 () Bool)

(assert (=> b!543227 (=> (not res!231545) (not e!328231))))

(declare-fun lt!227069 () List!5348)

(declare-fun lt!227098 () List!5348)

(assert (=> b!543227 (= res!231545 (= lt!227069 lt!227098))))

(declare-fun lt!227068 () List!5348)

(declare-fun ++!1489 (List!5348 List!5348) List!5348)

(assert (=> b!543227 (= lt!227069 (++!1489 lt!227068 suffix!1342))))

(declare-fun b!543228 () Bool)

(declare-fun e!328240 () Bool)

(declare-fun tp!172828 () Bool)

(declare-fun e!328234 () Bool)

(declare-fun inv!21 (TokenValue!1025) Bool)

(assert (=> b!543228 (= e!328234 (and (inv!21 (value!33395 token!491)) e!328240 tp!172828))))

(declare-fun b!543229 () Bool)

(declare-fun e!328222 () Bool)

(assert (=> b!543229 (= e!328222 false)))

(declare-fun e!328221 () Bool)

(declare-fun lt!227093 () Int)

(declare-fun lt!227070 () TokenValue!1025)

(declare-fun b!543230 () Bool)

(declare-fun lt!227081 () List!5348)

(assert (=> b!543230 (= e!328221 (and (= (size!4282 token!491) lt!227093) (= (originalCharacters!1040 token!491) lt!227068) (= (tuple2!6381 token!491 suffix!1342) (tuple2!6381 (Token!1739 lt!227070 (rule!1713 token!491) lt!227093 lt!227068) lt!227081))))))

(declare-fun b!543231 () Bool)

(declare-fun res!231557 () Bool)

(declare-fun e!328243 () Bool)

(assert (=> b!543231 (=> (not res!231557) (not e!328243))))

(declare-datatypes ((List!5349 0))(
  ( (Nil!5339) (Cons!5339 (h!10740 Rule!1802) (t!74506 List!5349)) )
))
(declare-fun rules!3103 () List!5349)

(declare-fun isEmpty!3854 (List!5349) Bool)

(assert (=> b!543231 (= res!231557 (not (isEmpty!3854 rules!3103)))))

(declare-fun b!543232 () Bool)

(declare-fun res!231549 () Bool)

(assert (=> b!543232 (=> (not res!231549) (not e!328243))))

(declare-fun input!2705 () List!5348)

(declare-fun isEmpty!3855 (List!5348) Bool)

(assert (=> b!543232 (= res!231549 (not (isEmpty!3855 input!2705)))))

(declare-fun b!543234 () Bool)

(declare-fun e!328233 () Bool)

(assert (=> b!543234 (= e!328233 e!328244)))

(declare-fun res!231542 () Bool)

(assert (=> b!543234 (=> res!231542 e!328244)))

(declare-fun lt!227101 () Int)

(assert (=> b!543234 (= res!231542 (>= lt!227101 lt!227093))))

(declare-fun lt!227082 () List!5348)

(declare-fun lt!227097 () TokenValue!1025)

(declare-fun b!543235 () Bool)

(declare-fun lt!227080 () List!5348)

(declare-fun e!328236 () Bool)

(declare-fun lt!227099 () tuple2!6380)

(assert (=> b!543235 (= e!328236 (and (= (size!4282 (_1!3454 (v!16163 lt!227076))) lt!227101) (= (originalCharacters!1040 (_1!3454 (v!16163 lt!227076))) lt!227082) (= lt!227099 (tuple2!6381 (Token!1739 lt!227097 (rule!1713 (_1!3454 (v!16163 lt!227076))) lt!227101 lt!227082) lt!227080))))))

(declare-fun b!543236 () Bool)

(declare-datatypes ((Unit!9339 0))(
  ( (Unit!9340) )
))
(declare-fun e!328238 () Unit!9339)

(declare-fun Unit!9341 () Unit!9339)

(assert (=> b!543236 (= e!328238 Unit!9341)))

(declare-fun lt!227100 () Unit!9339)

(declare-fun lt!227095 () BalanceConc!3444)

(declare-fun lemmaSemiInverse!130 (TokenValueInjection!1818 BalanceConc!3444) Unit!9339)

(assert (=> b!543236 (= lt!227100 (lemmaSemiInverse!130 (transformation!1001 (rule!1713 (_1!3454 (v!16163 lt!227076)))) lt!227095))))

(declare-datatypes ((LexerInterface!887 0))(
  ( (LexerInterfaceExt!884 (__x!3949 Int)) (Lexer!885) )
))
(declare-fun thiss!22590 () LexerInterface!887)

(declare-fun lt!227078 () Unit!9339)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!6 (LexerInterface!887 List!5349 Rule!1802 List!5348 List!5348 List!5348 Rule!1802) Unit!9339)

(assert (=> b!543236 (= lt!227078 (lemmaMaxPrefixOutputsMaxPrefix!6 thiss!22590 rules!3103 (rule!1713 (_1!3454 (v!16163 lt!227076))) lt!227082 input!2705 input!2705 (rule!1713 token!491)))))

(declare-fun res!231555 () Bool)

(declare-fun matchR!494 (Regex!1335 List!5348) Bool)

(assert (=> b!543236 (= res!231555 (not (matchR!494 (regex!1001 (rule!1713 token!491)) input!2705)))))

(assert (=> b!543236 (=> (not res!231555) (not e!328222))))

(assert (=> b!543236 e!328222))

(declare-fun b!543237 () Bool)

(declare-fun e!328228 () Unit!9339)

(declare-fun Unit!9342 () Unit!9339)

(assert (=> b!543237 (= e!328228 Unit!9342)))

(assert (=> b!543237 false))

(declare-fun e!328219 () Bool)

(assert (=> b!543238 (= e!328219 (and tp!172829 tp!172821))))

(declare-fun b!543239 () Bool)

(declare-fun res!231543 () Bool)

(declare-fun e!328223 () Bool)

(assert (=> b!543239 (=> res!231543 e!328223)))

(assert (=> b!543239 (= res!231543 (not (isEmpty!3855 (_2!3454 (v!16163 lt!227076)))))))

(declare-fun b!543240 () Bool)

(assert (=> b!543240 (= e!328239 (= lt!227080 (_2!3454 (v!16163 lt!227076))))))

(declare-fun b!543241 () Bool)

(declare-fun res!231559 () Bool)

(assert (=> b!543241 (=> (not res!231559) (not e!328221))))

(declare-fun size!4283 (List!5348) Int)

(assert (=> b!543241 (= res!231559 (= (size!4282 token!491) (size!4283 (originalCharacters!1040 token!491))))))

(declare-fun b!543242 () Bool)

(declare-fun e!328229 () Bool)

(declare-fun tp_is_empty!3025 () Bool)

(declare-fun tp!172826 () Bool)

(assert (=> b!543242 (= e!328229 (and tp_is_empty!3025 tp!172826))))

(declare-fun tp!172822 () Bool)

(declare-fun b!543243 () Bool)

(declare-fun inv!6692 (String!6869) Bool)

(declare-fun inv!6695 (TokenValueInjection!1818) Bool)

(assert (=> b!543243 (= e!328240 (and tp!172822 (inv!6692 (tag!1263 (rule!1713 token!491))) (inv!6695 (transformation!1001 (rule!1713 token!491))) e!328219))))

(declare-fun b!543244 () Bool)

(declare-fun e!328235 () Bool)

(assert (=> b!543244 (= e!328235 e!328237)))

(declare-fun res!231552 () Bool)

(assert (=> b!543244 (=> (not res!231552) (not e!328237))))

(assert (=> b!543244 (= res!231552 (isDefined!1163 lt!227086))))

(declare-fun maxPrefix!585 (LexerInterface!887 List!5349 List!5348) Option!1351)

(assert (=> b!543244 (= lt!227086 (maxPrefix!585 thiss!22590 rules!3103 lt!227098))))

(assert (=> b!543244 (= lt!227098 (++!1489 input!2705 suffix!1342))))

(declare-fun b!543245 () Bool)

(assert (=> b!543245 (= e!328243 e!328235)))

(declare-fun res!231560 () Bool)

(assert (=> b!543245 (=> (not res!231560) (not e!328235))))

(assert (=> b!543245 (= res!231560 (= lt!227068 input!2705))))

(declare-fun list!2213 (BalanceConc!3444) List!5348)

(declare-fun charsOf!630 (Token!1738) BalanceConc!3444)

(assert (=> b!543245 (= lt!227068 (list!2213 (charsOf!630 token!491)))))

(declare-fun b!543246 () Bool)

(assert (=> b!543246 (= e!328223 true)))

(declare-fun lt!227075 () Int)

(declare-fun getIndex!2 (List!5349 Rule!1802) Int)

(assert (=> b!543246 (= lt!227075 (getIndex!2 rules!3103 (rule!1713 token!491)))))

(declare-fun lt!227079 () Int)

(assert (=> b!543246 (= lt!227079 (getIndex!2 rules!3103 (rule!1713 (_1!3454 (v!16163 lt!227076)))))))

(declare-fun b!543247 () Bool)

(declare-fun res!231544 () Bool)

(assert (=> b!543247 (=> (not res!231544) (not e!328239))))

(assert (=> b!543247 (= res!231544 (= (_1!3454 (get!2016 lt!227076)) (_1!3454 (v!16163 lt!227076))))))

(declare-fun b!543248 () Bool)

(declare-fun res!231556 () Bool)

(assert (=> b!543248 (=> res!231556 e!328223)))

(assert (=> b!543248 (= res!231556 (or (not (= lt!227082 lt!227068)) (not (= (originalCharacters!1040 (_1!3454 (v!16163 lt!227076))) (originalCharacters!1040 token!491)))))))

(declare-fun b!543249 () Bool)

(declare-fun Unit!9343 () Unit!9339)

(assert (=> b!543249 (= e!328228 Unit!9343)))

(declare-fun b!543250 () Bool)

(declare-fun e!328225 () Bool)

(declare-fun tp!172825 () Bool)

(assert (=> b!543250 (= e!328225 (and tp_is_empty!3025 tp!172825))))

(declare-fun b!543251 () Bool)

(declare-fun res!231553 () Bool)

(assert (=> b!543251 (=> res!231553 e!328223)))

(declare-fun contains!1243 (List!5349 Rule!1802) Bool)

(assert (=> b!543251 (= res!231553 (not (contains!1243 rules!3103 (rule!1713 token!491))))))

(declare-fun b!543252 () Bool)

(assert (=> b!543252 (= e!328242 e!328218)))

(declare-fun res!231564 () Bool)

(assert (=> b!543252 (=> (not res!231564) (not e!328218))))

(get-info :version)

(assert (=> b!543252 (= res!231564 ((_ is Some!1350) lt!227076))))

(assert (=> b!543252 (= lt!227076 (maxPrefix!585 thiss!22590 rules!3103 input!2705))))

(declare-fun b!543253 () Bool)

(declare-fun e!328232 () Bool)

(assert (=> b!543253 (= e!328231 (not e!328232))))

(declare-fun res!231540 () Bool)

(assert (=> b!543253 (=> res!231540 e!328232)))

(declare-fun isPrefix!643 (List!5348 List!5348) Bool)

(assert (=> b!543253 (= res!231540 (not (isPrefix!643 input!2705 lt!227069)))))

(assert (=> b!543253 (isPrefix!643 lt!227068 lt!227069)))

(declare-fun lt!227083 () Unit!9339)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!494 (List!5348 List!5348) Unit!9339)

(assert (=> b!543253 (= lt!227083 (lemmaConcatTwoListThenFirstIsPrefix!494 lt!227068 suffix!1342))))

(assert (=> b!543253 (isPrefix!643 input!2705 lt!227098)))

(declare-fun lt!227071 () Unit!9339)

(assert (=> b!543253 (= lt!227071 (lemmaConcatTwoListThenFirstIsPrefix!494 input!2705 suffix!1342))))

(assert (=> b!543253 e!328236))

(declare-fun res!231563 () Bool)

(assert (=> b!543253 (=> (not res!231563) (not e!328236))))

(assert (=> b!543253 (= res!231563 (= (value!33395 (_1!3454 (v!16163 lt!227076))) lt!227097))))

(declare-fun apply!1276 (TokenValueInjection!1818 BalanceConc!3444) TokenValue!1025)

(assert (=> b!543253 (= lt!227097 (apply!1276 (transformation!1001 (rule!1713 (_1!3454 (v!16163 lt!227076)))) lt!227095))))

(declare-fun seqFromList!1199 (List!5348) BalanceConc!3444)

(assert (=> b!543253 (= lt!227095 (seqFromList!1199 lt!227082))))

(declare-fun lt!227092 () Unit!9339)

(declare-fun lemmaInv!149 (TokenValueInjection!1818) Unit!9339)

(assert (=> b!543253 (= lt!227092 (lemmaInv!149 (transformation!1001 (rule!1713 token!491))))))

(declare-fun lt!227085 () Unit!9339)

(assert (=> b!543253 (= lt!227085 (lemmaInv!149 (transformation!1001 (rule!1713 (_1!3454 (v!16163 lt!227076))))))))

(declare-fun ruleValid!221 (LexerInterface!887 Rule!1802) Bool)

(assert (=> b!543253 (ruleValid!221 thiss!22590 (rule!1713 token!491))))

(declare-fun lt!227066 () Unit!9339)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!80 (LexerInterface!887 Rule!1802 List!5349) Unit!9339)

(assert (=> b!543253 (= lt!227066 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!80 thiss!22590 (rule!1713 token!491) rules!3103))))

(assert (=> b!543253 (ruleValid!221 thiss!22590 (rule!1713 (_1!3454 (v!16163 lt!227076))))))

(declare-fun lt!227094 () Unit!9339)

(assert (=> b!543253 (= lt!227094 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!80 thiss!22590 (rule!1713 (_1!3454 (v!16163 lt!227076))) rules!3103))))

(assert (=> b!543253 (isPrefix!643 input!2705 input!2705)))

(declare-fun lt!227065 () Unit!9339)

(declare-fun lemmaIsPrefixRefl!383 (List!5348 List!5348) Unit!9339)

(assert (=> b!543253 (= lt!227065 (lemmaIsPrefixRefl!383 input!2705 input!2705))))

(assert (=> b!543253 (= (_2!3454 (v!16163 lt!227076)) lt!227080)))

(declare-fun lt!227064 () Unit!9339)

(declare-fun lemmaSamePrefixThenSameSuffix!370 (List!5348 List!5348 List!5348 List!5348 List!5348) Unit!9339)

(assert (=> b!543253 (= lt!227064 (lemmaSamePrefixThenSameSuffix!370 lt!227082 (_2!3454 (v!16163 lt!227076)) lt!227082 lt!227080 input!2705))))

(declare-fun getSuffix!166 (List!5348 List!5348) List!5348)

(assert (=> b!543253 (= lt!227080 (getSuffix!166 input!2705 lt!227082))))

(declare-fun lt!227067 () List!5348)

(assert (=> b!543253 (isPrefix!643 lt!227082 lt!227067)))

(assert (=> b!543253 (= lt!227067 (++!1489 lt!227082 (_2!3454 (v!16163 lt!227076))))))

(declare-fun lt!227088 () Unit!9339)

(assert (=> b!543253 (= lt!227088 (lemmaConcatTwoListThenFirstIsPrefix!494 lt!227082 (_2!3454 (v!16163 lt!227076))))))

(declare-fun lt!227073 () Unit!9339)

(declare-fun lemmaCharactersSize!80 (Token!1738) Unit!9339)

(assert (=> b!543253 (= lt!227073 (lemmaCharactersSize!80 token!491))))

(declare-fun lt!227077 () Unit!9339)

(assert (=> b!543253 (= lt!227077 (lemmaCharactersSize!80 (_1!3454 (v!16163 lt!227076))))))

(declare-fun lt!227087 () Unit!9339)

(assert (=> b!543253 (= lt!227087 e!328228)))

(declare-fun c!102615 () Bool)

(assert (=> b!543253 (= c!102615 (> lt!227101 lt!227093))))

(assert (=> b!543253 (= lt!227093 (size!4283 lt!227068))))

(assert (=> b!543253 (= lt!227101 (size!4283 lt!227082))))

(assert (=> b!543253 (= lt!227082 (list!2213 (charsOf!630 (_1!3454 (v!16163 lt!227076)))))))

(assert (=> b!543253 (= lt!227076 (Some!1350 lt!227099))))

(assert (=> b!543253 (= lt!227099 (tuple2!6381 (_1!3454 (v!16163 lt!227076)) (_2!3454 (v!16163 lt!227076))))))

(declare-fun lt!227072 () Unit!9339)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!86 (List!5348 List!5348 List!5348 List!5348) Unit!9339)

(assert (=> b!543253 (= lt!227072 (lemmaConcatSameAndSameSizesThenSameLists!86 lt!227068 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!543254 () Bool)

(declare-fun e!328230 () Bool)

(declare-fun e!328220 () Bool)

(declare-fun tp!172827 () Bool)

(assert (=> b!543254 (= e!328230 (and e!328220 tp!172827))))

(declare-fun res!231546 () Bool)

(assert (=> start!50100 (=> (not res!231546) (not e!328243))))

(assert (=> start!50100 (= res!231546 ((_ is Lexer!885) thiss!22590))))

(assert (=> start!50100 e!328243))

(assert (=> start!50100 e!328229))

(assert (=> start!50100 e!328230))

(declare-fun inv!6696 (Token!1738) Bool)

(assert (=> start!50100 (and (inv!6696 token!491) e!328234)))

(assert (=> start!50100 true))

(assert (=> start!50100 e!328225))

(declare-fun b!543233 () Bool)

(declare-fun res!231551 () Bool)

(assert (=> b!543233 (=> res!231551 e!328223)))

(assert (=> b!543233 (= res!231551 (= (rule!1713 (_1!3454 (v!16163 lt!227076))) (rule!1713 token!491)))))

(declare-fun tp!172823 () Bool)

(declare-fun b!543255 () Bool)

(declare-fun e!328226 () Bool)

(assert (=> b!543255 (= e!328220 (and tp!172823 (inv!6692 (tag!1263 (h!10740 rules!3103))) (inv!6695 (transformation!1001 (h!10740 rules!3103))) e!328226))))

(declare-fun b!543256 () Bool)

(assert (=> b!543256 (= e!328232 e!328223)))

(declare-fun res!231561 () Bool)

(assert (=> b!543256 (=> res!231561 e!328223)))

(assert (=> b!543256 (= res!231561 (or (not (= lt!227101 lt!227093)) (not (= lt!227067 input!2705)) (not (= lt!227067 lt!227068))))))

(declare-fun lt!227091 () Unit!9339)

(declare-fun lt!227090 () BalanceConc!3444)

(assert (=> b!543256 (= lt!227091 (lemmaSemiInverse!130 (transformation!1001 (rule!1713 token!491)) lt!227090))))

(declare-fun lt!227103 () Unit!9339)

(assert (=> b!543256 (= lt!227103 (lemmaSemiInverse!130 (transformation!1001 (rule!1713 (_1!3454 (v!16163 lt!227076)))) lt!227095))))

(declare-fun lt!227096 () Unit!9339)

(assert (=> b!543256 (= lt!227096 e!328238)))

(declare-fun c!102614 () Bool)

(assert (=> b!543256 (= c!102614 (< lt!227101 lt!227093))))

(assert (=> b!543256 e!328233))

(declare-fun res!231562 () Bool)

(assert (=> b!543256 (=> (not res!231562) (not e!328233))))

(declare-fun maxPrefixOneRule!300 (LexerInterface!887 Rule!1802 List!5348) Option!1351)

(assert (=> b!543256 (= res!231562 (= (maxPrefixOneRule!300 thiss!22590 (rule!1713 token!491) lt!227098) (Some!1350 (tuple2!6381 (Token!1739 lt!227070 (rule!1713 token!491) lt!227093 lt!227068) suffix!1342))))))

(declare-fun lt!227102 () Unit!9339)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!52 (LexerInterface!887 List!5349 List!5348 List!5348 List!5348 Rule!1802) Unit!9339)

(assert (=> b!543256 (= lt!227102 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!52 thiss!22590 rules!3103 lt!227068 lt!227098 suffix!1342 (rule!1713 token!491)))))

(assert (=> b!543256 (= (maxPrefixOneRule!300 thiss!22590 (rule!1713 (_1!3454 (v!16163 lt!227076))) input!2705) (Some!1350 (tuple2!6381 (Token!1739 lt!227097 (rule!1713 (_1!3454 (v!16163 lt!227076))) lt!227101 lt!227082) (_2!3454 (v!16163 lt!227076)))))))

(declare-fun lt!227074 () Unit!9339)

(assert (=> b!543256 (= lt!227074 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!52 thiss!22590 rules!3103 lt!227082 input!2705 (_2!3454 (v!16163 lt!227076)) (rule!1713 (_1!3454 (v!16163 lt!227076)))))))

(assert (=> b!543256 e!328221))

(declare-fun res!231547 () Bool)

(assert (=> b!543256 (=> (not res!231547) (not e!328221))))

(assert (=> b!543256 (= res!231547 (= (value!33395 token!491) lt!227070))))

(assert (=> b!543256 (= lt!227070 (apply!1276 (transformation!1001 (rule!1713 token!491)) lt!227090))))

(assert (=> b!543256 (= lt!227090 (seqFromList!1199 lt!227068))))

(assert (=> b!543256 (= suffix!1342 lt!227081)))

(declare-fun lt!227084 () Unit!9339)

(assert (=> b!543256 (= lt!227084 (lemmaSamePrefixThenSameSuffix!370 lt!227068 suffix!1342 lt!227068 lt!227081 lt!227098))))

(assert (=> b!543256 (= lt!227081 (getSuffix!166 lt!227098 lt!227068))))

(declare-fun b!543257 () Bool)

(declare-fun res!231558 () Bool)

(assert (=> b!543257 (=> res!231558 e!328223)))

(assert (=> b!543257 (= res!231558 (not (contains!1243 rules!3103 (rule!1713 (_1!3454 (v!16163 lt!227076))))))))

(declare-fun b!543258 () Bool)

(declare-fun res!231548 () Bool)

(assert (=> b!543258 (=> (not res!231548) (not e!328243))))

(declare-fun rulesInvariant!850 (LexerInterface!887 List!5349) Bool)

(assert (=> b!543258 (= res!231548 (rulesInvariant!850 thiss!22590 rules!3103))))

(declare-fun b!543259 () Bool)

(declare-fun Unit!9344 () Unit!9339)

(assert (=> b!543259 (= e!328238 Unit!9344)))

(assert (=> b!543260 (= e!328226 (and tp!172830 tp!172824))))

(declare-fun b!543261 () Bool)

(declare-fun res!231554 () Bool)

(assert (=> b!543261 (=> (not res!231554) (not e!328236))))

(assert (=> b!543261 (= res!231554 (= (size!4282 (_1!3454 (v!16163 lt!227076))) (size!4283 (originalCharacters!1040 (_1!3454 (v!16163 lt!227076))))))))

(assert (= (and start!50100 res!231546) b!543231))

(assert (= (and b!543231 res!231557) b!543258))

(assert (= (and b!543258 res!231548) b!543232))

(assert (= (and b!543232 res!231549) b!543245))

(assert (= (and b!543245 res!231560) b!543244))

(assert (= (and b!543244 res!231552) b!543226))

(assert (= (and b!543226 res!231550) b!543252))

(assert (= (and b!543252 res!231564) b!543227))

(assert (= (and b!543227 res!231545) b!543253))

(assert (= (and b!543253 c!102615) b!543237))

(assert (= (and b!543253 (not c!102615)) b!543249))

(assert (= (and b!543253 res!231563) b!543261))

(assert (= (and b!543261 res!231554) b!543235))

(assert (= (and b!543253 (not res!231540)) b!543256))

(assert (= (and b!543256 res!231547) b!543241))

(assert (= (and b!543241 res!231559) b!543230))

(assert (= (and b!543256 res!231562) b!543234))

(assert (= (and b!543234 (not res!231542)) b!543225))

(assert (= (and b!543225 res!231541) b!543247))

(assert (= (and b!543247 res!231544) b!543240))

(assert (= (and b!543256 c!102614) b!543236))

(assert (= (and b!543256 (not c!102614)) b!543259))

(assert (= (and b!543236 res!231555) b!543229))

(assert (= (and b!543256 (not res!231561)) b!543239))

(assert (= (and b!543239 (not res!231543)) b!543248))

(assert (= (and b!543248 (not res!231556)) b!543257))

(assert (= (and b!543257 (not res!231558)) b!543251))

(assert (= (and b!543251 (not res!231553)) b!543233))

(assert (= (and b!543233 (not res!231551)) b!543246))

(assert (= (and start!50100 ((_ is Cons!5338) suffix!1342)) b!543242))

(assert (= b!543255 b!543260))

(assert (= b!543254 b!543255))

(assert (= (and start!50100 ((_ is Cons!5339) rules!3103)) b!543254))

(assert (= b!543243 b!543238))

(assert (= b!543228 b!543243))

(assert (= start!50100 b!543228))

(assert (= (and start!50100 ((_ is Cons!5338) input!2705)) b!543250))

(declare-fun m!791289 () Bool)

(assert (=> b!543251 m!791289))

(declare-fun m!791291 () Bool)

(assert (=> b!543246 m!791291))

(declare-fun m!791293 () Bool)

(assert (=> b!543246 m!791293))

(declare-fun m!791295 () Bool)

(assert (=> b!543261 m!791295))

(declare-fun m!791297 () Bool)

(assert (=> b!543258 m!791297))

(declare-fun m!791299 () Bool)

(assert (=> b!543232 m!791299))

(declare-fun m!791301 () Bool)

(assert (=> b!543253 m!791301))

(declare-fun m!791303 () Bool)

(assert (=> b!543253 m!791303))

(declare-fun m!791305 () Bool)

(assert (=> b!543253 m!791305))

(declare-fun m!791307 () Bool)

(assert (=> b!543253 m!791307))

(declare-fun m!791309 () Bool)

(assert (=> b!543253 m!791309))

(declare-fun m!791311 () Bool)

(assert (=> b!543253 m!791311))

(declare-fun m!791313 () Bool)

(assert (=> b!543253 m!791313))

(declare-fun m!791315 () Bool)

(assert (=> b!543253 m!791315))

(declare-fun m!791317 () Bool)

(assert (=> b!543253 m!791317))

(declare-fun m!791319 () Bool)

(assert (=> b!543253 m!791319))

(declare-fun m!791321 () Bool)

(assert (=> b!543253 m!791321))

(declare-fun m!791323 () Bool)

(assert (=> b!543253 m!791323))

(declare-fun m!791325 () Bool)

(assert (=> b!543253 m!791325))

(declare-fun m!791327 () Bool)

(assert (=> b!543253 m!791327))

(declare-fun m!791329 () Bool)

(assert (=> b!543253 m!791329))

(declare-fun m!791331 () Bool)

(assert (=> b!543253 m!791331))

(declare-fun m!791333 () Bool)

(assert (=> b!543253 m!791333))

(declare-fun m!791335 () Bool)

(assert (=> b!543253 m!791335))

(declare-fun m!791337 () Bool)

(assert (=> b!543253 m!791337))

(declare-fun m!791339 () Bool)

(assert (=> b!543253 m!791339))

(declare-fun m!791341 () Bool)

(assert (=> b!543253 m!791341))

(declare-fun m!791343 () Bool)

(assert (=> b!543253 m!791343))

(assert (=> b!543253 m!791309))

(declare-fun m!791345 () Bool)

(assert (=> b!543253 m!791345))

(declare-fun m!791347 () Bool)

(assert (=> b!543253 m!791347))

(declare-fun m!791349 () Bool)

(assert (=> b!543253 m!791349))

(declare-fun m!791351 () Bool)

(assert (=> b!543253 m!791351))

(declare-fun m!791353 () Bool)

(assert (=> b!543253 m!791353))

(declare-fun m!791355 () Bool)

(assert (=> b!543245 m!791355))

(assert (=> b!543245 m!791355))

(declare-fun m!791357 () Bool)

(assert (=> b!543245 m!791357))

(declare-fun m!791359 () Bool)

(assert (=> b!543226 m!791359))

(declare-fun m!791361 () Bool)

(assert (=> start!50100 m!791361))

(declare-fun m!791363 () Bool)

(assert (=> b!543244 m!791363))

(declare-fun m!791365 () Bool)

(assert (=> b!543244 m!791365))

(declare-fun m!791367 () Bool)

(assert (=> b!543244 m!791367))

(declare-fun m!791369 () Bool)

(assert (=> b!543243 m!791369))

(declare-fun m!791371 () Bool)

(assert (=> b!543243 m!791371))

(declare-fun m!791373 () Bool)

(assert (=> b!543227 m!791373))

(declare-fun m!791375 () Bool)

(assert (=> b!543256 m!791375))

(declare-fun m!791377 () Bool)

(assert (=> b!543256 m!791377))

(declare-fun m!791379 () Bool)

(assert (=> b!543256 m!791379))

(declare-fun m!791381 () Bool)

(assert (=> b!543256 m!791381))

(declare-fun m!791383 () Bool)

(assert (=> b!543256 m!791383))

(declare-fun m!791385 () Bool)

(assert (=> b!543256 m!791385))

(declare-fun m!791387 () Bool)

(assert (=> b!543256 m!791387))

(declare-fun m!791389 () Bool)

(assert (=> b!543256 m!791389))

(declare-fun m!791391 () Bool)

(assert (=> b!543256 m!791391))

(declare-fun m!791393 () Bool)

(assert (=> b!543256 m!791393))

(declare-fun m!791395 () Bool)

(assert (=> b!543239 m!791395))

(declare-fun m!791397 () Bool)

(assert (=> b!543225 m!791397))

(declare-fun m!791399 () Bool)

(assert (=> b!543252 m!791399))

(declare-fun m!791401 () Bool)

(assert (=> b!543247 m!791401))

(declare-fun m!791403 () Bool)

(assert (=> b!543257 m!791403))

(declare-fun m!791405 () Bool)

(assert (=> b!543228 m!791405))

(declare-fun m!791407 () Bool)

(assert (=> b!543231 m!791407))

(declare-fun m!791409 () Bool)

(assert (=> b!543241 m!791409))

(assert (=> b!543236 m!791393))

(declare-fun m!791411 () Bool)

(assert (=> b!543236 m!791411))

(declare-fun m!791413 () Bool)

(assert (=> b!543236 m!791413))

(declare-fun m!791415 () Bool)

(assert (=> b!543255 m!791415))

(declare-fun m!791417 () Bool)

(assert (=> b!543255 m!791417))

(check-sat (not b!543244) (not b!543225) (not b!543227) (not b_next!15083) b_and!53039 (not b!543239) (not b!543246) (not b!543245) tp_is_empty!3025 (not b!543261) (not b!543254) (not b!543231) (not b!543247) (not start!50100) (not b!543228) (not b_next!15081) (not b!543236) b_and!53037 (not b!543251) (not b!543232) (not b!543256) b_and!53041 (not b!543258) (not b!543255) (not b!543243) (not b!543257) (not b!543252) (not b!543226) (not b!543242) (not b_next!15087) (not b_next!15085) (not b!543250) b_and!53035 (not b!543253) (not b!543241))
(check-sat b_and!53041 (not b_next!15083) b_and!53035 b_and!53039 (not b_next!15081) b_and!53037 (not b_next!15087) (not b_next!15085))
