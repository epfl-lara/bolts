; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!360420 () Bool)

(assert start!360420)

(declare-fun b!3848393 () Bool)

(declare-fun b_free!103093 () Bool)

(declare-fun b_next!103797 () Bool)

(assert (=> b!3848393 (= b_free!103093 (not b_next!103797))))

(declare-fun tp!1166508 () Bool)

(declare-fun b_and!287187 () Bool)

(assert (=> b!3848393 (= tp!1166508 b_and!287187)))

(declare-fun b_free!103095 () Bool)

(declare-fun b_next!103799 () Bool)

(assert (=> b!3848393 (= b_free!103095 (not b_next!103799))))

(declare-fun tp!1166511 () Bool)

(declare-fun b_and!287189 () Bool)

(assert (=> b!3848393 (= tp!1166511 b_and!287189)))

(declare-fun b!3848385 () Bool)

(declare-fun b_free!103097 () Bool)

(declare-fun b_next!103801 () Bool)

(assert (=> b!3848385 (= b_free!103097 (not b_next!103801))))

(declare-fun tp!1166501 () Bool)

(declare-fun b_and!287191 () Bool)

(assert (=> b!3848385 (= tp!1166501 b_and!287191)))

(declare-fun b_free!103099 () Bool)

(declare-fun b_next!103803 () Bool)

(assert (=> b!3848385 (= b_free!103099 (not b_next!103803))))

(declare-fun tp!1166510 () Bool)

(declare-fun b_and!287193 () Bool)

(assert (=> b!3848385 (= tp!1166510 b_and!287193)))

(declare-fun b!3848390 () Bool)

(declare-fun b_free!103101 () Bool)

(declare-fun b_next!103805 () Bool)

(assert (=> b!3848390 (= b_free!103101 (not b_next!103805))))

(declare-fun tp!1166507 () Bool)

(declare-fun b_and!287195 () Bool)

(assert (=> b!3848390 (= tp!1166507 b_and!287195)))

(declare-fun b_free!103103 () Bool)

(declare-fun b_next!103807 () Bool)

(assert (=> b!3848390 (= b_free!103103 (not b_next!103807))))

(declare-fun tp!1166503 () Bool)

(declare-fun b_and!287197 () Bool)

(assert (=> b!3848390 (= tp!1166503 b_and!287197)))

(declare-fun b!3848365 () Bool)

(declare-fun e!2378609 () Bool)

(declare-fun e!2378615 () Bool)

(assert (=> b!3848365 (= e!2378609 e!2378615)))

(declare-fun res!1557944 () Bool)

(assert (=> b!3848365 (=> (not res!1557944) (not e!2378615))))

(declare-datatypes ((List!40904 0))(
  ( (Nil!40780) (Cons!40780 (h!46200 (_ BitVec 16)) (t!311325 List!40904)) )
))
(declare-datatypes ((TokenValue!6532 0))(
  ( (FloatLiteralValue!13064 (text!46169 List!40904)) (TokenValueExt!6531 (__x!25281 Int)) (Broken!32660 (value!200215 List!40904)) (Object!6655) (End!6532) (Def!6532) (Underscore!6532) (Match!6532) (Else!6532) (Error!6532) (Case!6532) (If!6532) (Extends!6532) (Abstract!6532) (Class!6532) (Val!6532) (DelimiterValue!13064 (del!6592 List!40904)) (KeywordValue!6538 (value!200216 List!40904)) (CommentValue!13064 (value!200217 List!40904)) (WhitespaceValue!13064 (value!200218 List!40904)) (IndentationValue!6532 (value!200219 List!40904)) (String!46377) (Int32!6532) (Broken!32661 (value!200220 List!40904)) (Boolean!6533) (Unit!58453) (OperatorValue!6535 (op!6592 List!40904)) (IdentifierValue!13064 (value!200221 List!40904)) (IdentifierValue!13065 (value!200222 List!40904)) (WhitespaceValue!13065 (value!200223 List!40904)) (True!13064) (False!13064) (Broken!32662 (value!200224 List!40904)) (Broken!32663 (value!200225 List!40904)) (True!13065) (RightBrace!6532) (RightBracket!6532) (Colon!6532) (Null!6532) (Comma!6532) (LeftBracket!6532) (False!13065) (LeftBrace!6532) (ImaginaryLiteralValue!6532 (text!46170 List!40904)) (StringLiteralValue!19596 (value!200226 List!40904)) (EOFValue!6532 (value!200227 List!40904)) (IdentValue!6532 (value!200228 List!40904)) (DelimiterValue!13065 (value!200229 List!40904)) (DedentValue!6532 (value!200230 List!40904)) (NewLineValue!6532 (value!200231 List!40904)) (IntegerValue!19596 (value!200232 (_ BitVec 32)) (text!46171 List!40904)) (IntegerValue!19597 (value!200233 Int) (text!46172 List!40904)) (Times!6532) (Or!6532) (Equal!6532) (Minus!6532) (Broken!32664 (value!200234 List!40904)) (And!6532) (Div!6532) (LessEqual!6532) (Mod!6532) (Concat!17739) (Not!6532) (Plus!6532) (SpaceValue!6532 (value!200235 List!40904)) (IntegerValue!19598 (value!200236 Int) (text!46173 List!40904)) (StringLiteralValue!19597 (text!46174 List!40904)) (FloatLiteralValue!13065 (text!46175 List!40904)) (BytesLiteralValue!6532 (value!200237 List!40904)) (CommentValue!13065 (value!200238 List!40904)) (StringLiteralValue!19598 (value!200239 List!40904)) (ErrorTokenValue!6532 (msg!6593 List!40904)) )
))
(declare-datatypes ((C!22600 0))(
  ( (C!22601 (val!13394 Int)) )
))
(declare-datatypes ((Regex!11207 0))(
  ( (ElementMatch!11207 (c!670240 C!22600)) (Concat!17740 (regOne!22926 Regex!11207) (regTwo!22926 Regex!11207)) (EmptyExpr!11207) (Star!11207 (reg!11536 Regex!11207)) (EmptyLang!11207) (Union!11207 (regOne!22927 Regex!11207) (regTwo!22927 Regex!11207)) )
))
(declare-datatypes ((String!46378 0))(
  ( (String!46379 (value!200240 String)) )
))
(declare-datatypes ((List!40905 0))(
  ( (Nil!40781) (Cons!40781 (h!46201 C!22600) (t!311326 List!40905)) )
))
(declare-datatypes ((IArray!25031 0))(
  ( (IArray!25032 (innerList!12573 List!40905)) )
))
(declare-datatypes ((Conc!12513 0))(
  ( (Node!12513 (left!31458 Conc!12513) (right!31788 Conc!12513) (csize!25256 Int) (cheight!12724 Int)) (Leaf!19371 (xs!15819 IArray!25031) (csize!25257 Int)) (Empty!12513) )
))
(declare-datatypes ((BalanceConc!24620 0))(
  ( (BalanceConc!24621 (c!670241 Conc!12513)) )
))
(declare-datatypes ((TokenValueInjection!12492 0))(
  ( (TokenValueInjection!12493 (toValue!8718 Int) (toChars!8577 Int)) )
))
(declare-datatypes ((Rule!12404 0))(
  ( (Rule!12405 (regex!6302 Regex!11207) (tag!7162 String!46378) (isSeparator!6302 Bool) (transformation!6302 TokenValueInjection!12492)) )
))
(declare-datatypes ((Token!11742 0))(
  ( (Token!11743 (value!200241 TokenValue!6532) (rule!9152 Rule!12404) (size!30675 Int) (originalCharacters!6902 List!40905)) )
))
(declare-datatypes ((tuple2!39966 0))(
  ( (tuple2!39967 (_1!23117 Token!11742) (_2!23117 List!40905)) )
))
(declare-datatypes ((Option!8720 0))(
  ( (None!8719) (Some!8719 (v!39011 tuple2!39966)) )
))
(declare-fun lt!1336481 () Option!8720)

(get-info :version)

(assert (=> b!3848365 (= res!1557944 ((_ is Some!8719) lt!1336481))))

(declare-datatypes ((LexerInterface!5891 0))(
  ( (LexerInterfaceExt!5888 (__x!25282 Int)) (Lexer!5889) )
))
(declare-fun thiss!20629 () LexerInterface!5891)

(declare-datatypes ((List!40906 0))(
  ( (Nil!40782) (Cons!40782 (h!46202 Rule!12404) (t!311327 List!40906)) )
))
(declare-fun rules!2768 () List!40906)

(declare-fun lt!1336480 () List!40905)

(declare-fun maxPrefix!3195 (LexerInterface!5891 List!40906 List!40905) Option!8720)

(assert (=> b!3848365 (= lt!1336481 (maxPrefix!3195 thiss!20629 rules!2768 lt!1336480))))

(declare-fun b!3848366 () Bool)

(declare-fun e!2378624 () Bool)

(declare-fun tp_is_empty!19385 () Bool)

(declare-fun tp!1166513 () Bool)

(assert (=> b!3848366 (= e!2378624 (and tp_is_empty!19385 tp!1166513))))

(declare-fun b!3848367 () Bool)

(declare-fun res!1557950 () Bool)

(declare-fun e!2378613 () Bool)

(assert (=> b!3848367 (=> (not res!1557950) (not e!2378613))))

(declare-fun prefix!426 () List!40905)

(declare-fun isEmpty!24130 (List!40905) Bool)

(assert (=> b!3848367 (= res!1557950 (not (isEmpty!24130 prefix!426)))))

(declare-fun b!3848368 () Bool)

(declare-fun res!1557939 () Bool)

(declare-fun e!2378625 () Bool)

(assert (=> b!3848368 (=> res!1557939 e!2378625)))

(declare-fun suffix!1176 () List!40905)

(declare-datatypes ((List!40907 0))(
  ( (Nil!40783) (Cons!40783 (h!46203 Token!11742) (t!311328 List!40907)) )
))
(declare-datatypes ((tuple2!39968 0))(
  ( (tuple2!39969 (_1!23118 List!40907) (_2!23118 List!40905)) )
))
(declare-fun lt!1336493 () tuple2!39968)

(assert (=> b!3848368 (= res!1557939 (or (not (= lt!1336493 (tuple2!39969 (_1!23118 lt!1336493) (_2!23118 lt!1336493)))) (= (_2!23117 (v!39011 lt!1336481)) suffix!1176)))))

(declare-fun b!3848369 () Bool)

(declare-fun suffixTokens!72 () List!40907)

(declare-fun e!2378608 () Bool)

(declare-fun e!2378610 () Bool)

(declare-fun tp!1166506 () Bool)

(declare-fun inv!54924 (Token!11742) Bool)

(assert (=> b!3848369 (= e!2378608 (and (inv!54924 (h!46203 suffixTokens!72)) e!2378610 tp!1166506))))

(declare-fun res!1557948 () Bool)

(assert (=> start!360420 (=> (not res!1557948) (not e!2378613))))

(assert (=> start!360420 (= res!1557948 ((_ is Lexer!5889) thiss!20629))))

(assert (=> start!360420 e!2378613))

(declare-fun e!2378634 () Bool)

(assert (=> start!360420 e!2378634))

(assert (=> start!360420 true))

(declare-fun e!2378621 () Bool)

(assert (=> start!360420 e!2378621))

(declare-fun e!2378623 () Bool)

(assert (=> start!360420 e!2378623))

(declare-fun e!2378611 () Bool)

(assert (=> start!360420 e!2378611))

(assert (=> start!360420 e!2378608))

(assert (=> start!360420 e!2378624))

(declare-fun b!3848370 () Bool)

(declare-fun tp!1166499 () Bool)

(assert (=> b!3848370 (= e!2378621 (and tp_is_empty!19385 tp!1166499))))

(declare-fun b!3848371 () Bool)

(declare-fun res!1557945 () Bool)

(assert (=> b!3848371 (=> res!1557945 e!2378625)))

(declare-fun lt!1336483 () tuple2!39968)

(declare-fun ++!10361 (List!40907 List!40907) List!40907)

(assert (=> b!3848371 (= res!1557945 (not (= lt!1336483 (tuple2!39969 (++!10361 (Cons!40783 (_1!23117 (v!39011 lt!1336481)) Nil!40783) (_1!23118 lt!1336493)) (_2!23118 lt!1336493)))))))

(declare-fun b!3848372 () Bool)

(assert (=> b!3848372 (= e!2378615 (not e!2378625))))

(declare-fun res!1557941 () Bool)

(assert (=> b!3848372 (=> res!1557941 e!2378625)))

(declare-fun lt!1336482 () List!40905)

(assert (=> b!3848372 (= res!1557941 (not (= lt!1336482 lt!1336480)))))

(declare-fun lexList!1659 (LexerInterface!5891 List!40906 List!40905) tuple2!39968)

(assert (=> b!3848372 (= lt!1336493 (lexList!1659 thiss!20629 rules!2768 (_2!23117 (v!39011 lt!1336481))))))

(declare-fun lt!1336478 () TokenValue!6532)

(declare-fun lt!1336484 () Int)

(declare-fun lt!1336474 () List!40905)

(declare-fun lt!1336479 () List!40905)

(assert (=> b!3848372 (and (= (size!30675 (_1!23117 (v!39011 lt!1336481))) lt!1336484) (= (originalCharacters!6902 (_1!23117 (v!39011 lt!1336481))) lt!1336479) (= (v!39011 lt!1336481) (tuple2!39967 (Token!11743 lt!1336478 (rule!9152 (_1!23117 (v!39011 lt!1336481))) lt!1336484 lt!1336479) lt!1336474)))))

(declare-fun size!30676 (List!40905) Int)

(assert (=> b!3848372 (= lt!1336484 (size!30676 lt!1336479))))

(declare-fun e!2378616 () Bool)

(assert (=> b!3848372 e!2378616))

(declare-fun res!1557943 () Bool)

(assert (=> b!3848372 (=> (not res!1557943) (not e!2378616))))

(assert (=> b!3848372 (= res!1557943 (= (value!200241 (_1!23117 (v!39011 lt!1336481))) lt!1336478))))

(declare-fun apply!9545 (TokenValueInjection!12492 BalanceConc!24620) TokenValue!6532)

(declare-fun seqFromList!4573 (List!40905) BalanceConc!24620)

(assert (=> b!3848372 (= lt!1336478 (apply!9545 (transformation!6302 (rule!9152 (_1!23117 (v!39011 lt!1336481)))) (seqFromList!4573 lt!1336479)))))

(assert (=> b!3848372 (= (_2!23117 (v!39011 lt!1336481)) lt!1336474)))

(declare-datatypes ((Unit!58454 0))(
  ( (Unit!58455) )
))
(declare-fun lt!1336476 () Unit!58454)

(declare-fun lemmaSamePrefixThenSameSuffix!1622 (List!40905 List!40905 List!40905 List!40905 List!40905) Unit!58454)

(assert (=> b!3848372 (= lt!1336476 (lemmaSamePrefixThenSameSuffix!1622 lt!1336479 (_2!23117 (v!39011 lt!1336481)) lt!1336479 lt!1336474 lt!1336480))))

(declare-fun getSuffix!1856 (List!40905 List!40905) List!40905)

(assert (=> b!3848372 (= lt!1336474 (getSuffix!1856 lt!1336480 lt!1336479))))

(declare-fun isPrefix!3401 (List!40905 List!40905) Bool)

(assert (=> b!3848372 (isPrefix!3401 lt!1336479 lt!1336482)))

(declare-fun ++!10362 (List!40905 List!40905) List!40905)

(assert (=> b!3848372 (= lt!1336482 (++!10362 lt!1336479 (_2!23117 (v!39011 lt!1336481))))))

(declare-fun lt!1336491 () Unit!58454)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2264 (List!40905 List!40905) Unit!58454)

(assert (=> b!3848372 (= lt!1336491 (lemmaConcatTwoListThenFirstIsPrefix!2264 lt!1336479 (_2!23117 (v!39011 lt!1336481))))))

(declare-fun list!15178 (BalanceConc!24620) List!40905)

(declare-fun charsOf!4130 (Token!11742) BalanceConc!24620)

(assert (=> b!3848372 (= lt!1336479 (list!15178 (charsOf!4130 (_1!23117 (v!39011 lt!1336481)))))))

(declare-fun ruleValid!2254 (LexerInterface!5891 Rule!12404) Bool)

(assert (=> b!3848372 (ruleValid!2254 thiss!20629 (rule!9152 (_1!23117 (v!39011 lt!1336481))))))

(declare-fun lt!1336475 () Unit!58454)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1334 (LexerInterface!5891 Rule!12404 List!40906) Unit!58454)

(assert (=> b!3848372 (= lt!1336475 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1334 thiss!20629 (rule!9152 (_1!23117 (v!39011 lt!1336481))) rules!2768))))

(declare-fun lt!1336492 () Unit!58454)

(declare-fun lemmaCharactersSize!963 (Token!11742) Unit!58454)

(assert (=> b!3848372 (= lt!1336492 (lemmaCharactersSize!963 (_1!23117 (v!39011 lt!1336481))))))

(declare-fun b!3848373 () Bool)

(assert (=> b!3848373 (= e!2378613 e!2378609)))

(declare-fun res!1557952 () Bool)

(assert (=> b!3848373 (=> (not res!1557952) (not e!2378609))))

(declare-fun suffixResult!91 () List!40905)

(declare-fun lt!1336485 () List!40907)

(assert (=> b!3848373 (= res!1557952 (= lt!1336483 (tuple2!39969 lt!1336485 suffixResult!91)))))

(assert (=> b!3848373 (= lt!1336483 (lexList!1659 thiss!20629 rules!2768 lt!1336480))))

(declare-fun prefixTokens!80 () List!40907)

(assert (=> b!3848373 (= lt!1336485 (++!10361 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3848373 (= lt!1336480 (++!10362 prefix!426 suffix!1176))))

(declare-fun tp!1166509 () Bool)

(declare-fun e!2378622 () Bool)

(declare-fun b!3848374 () Bool)

(assert (=> b!3848374 (= e!2378611 (and (inv!54924 (h!46203 prefixTokens!80)) e!2378622 tp!1166509))))

(declare-fun b!3848375 () Bool)

(declare-fun res!1557938 () Bool)

(assert (=> b!3848375 (=> (not res!1557938) (not e!2378613))))

(declare-fun isEmpty!24131 (List!40907) Bool)

(assert (=> b!3848375 (= res!1557938 (not (isEmpty!24131 prefixTokens!80)))))

(declare-fun b!3848376 () Bool)

(declare-fun e!2378628 () Bool)

(declare-fun tp!1166512 () Bool)

(assert (=> b!3848376 (= e!2378623 (and e!2378628 tp!1166512))))

(declare-fun b!3848377 () Bool)

(declare-fun res!1557942 () Bool)

(assert (=> b!3848377 (=> (not res!1557942) (not e!2378613))))

(declare-fun rulesInvariant!5234 (LexerInterface!5891 List!40906) Bool)

(assert (=> b!3848377 (= res!1557942 (rulesInvariant!5234 thiss!20629 rules!2768))))

(declare-fun e!2378618 () Bool)

(declare-fun e!2378617 () Bool)

(declare-fun tp!1166514 () Bool)

(declare-fun b!3848378 () Bool)

(declare-fun inv!54921 (String!46378) Bool)

(declare-fun inv!54925 (TokenValueInjection!12492) Bool)

(assert (=> b!3848378 (= e!2378618 (and tp!1166514 (inv!54921 (tag!7162 (rule!9152 (h!46203 suffixTokens!72)))) (inv!54925 (transformation!6302 (rule!9152 (h!46203 suffixTokens!72)))) e!2378617))))

(declare-fun b!3848379 () Bool)

(declare-fun res!1557951 () Bool)

(assert (=> b!3848379 (=> (not res!1557951) (not e!2378613))))

(declare-fun isEmpty!24132 (List!40906) Bool)

(assert (=> b!3848379 (= res!1557951 (not (isEmpty!24132 rules!2768)))))

(declare-fun b!3848380 () Bool)

(declare-fun e!2378630 () Bool)

(assert (=> b!3848380 (= e!2378630 true)))

(declare-fun lt!1336488 () Bool)

(declare-fun rulesValidInductive!2236 (LexerInterface!5891 List!40906) Bool)

(assert (=> b!3848380 (= lt!1336488 (rulesValidInductive!2236 thiss!20629 rules!2768))))

(declare-fun tp!1166500 () Bool)

(declare-fun b!3848381 () Bool)

(declare-fun inv!21 (TokenValue!6532) Bool)

(assert (=> b!3848381 (= e!2378610 (and (inv!21 (value!200241 (h!46203 suffixTokens!72))) e!2378618 tp!1166500))))

(declare-fun b!3848382 () Bool)

(declare-fun e!2378607 () Bool)

(assert (=> b!3848382 (= e!2378607 e!2378630)))

(declare-fun res!1557946 () Bool)

(assert (=> b!3848382 (=> res!1557946 e!2378630)))

(declare-fun matchR!5354 (Regex!11207 List!40905) Bool)

(assert (=> b!3848382 (= res!1557946 (not (matchR!5354 (regex!6302 (rule!9152 (_1!23117 (v!39011 lt!1336481)))) lt!1336479)))))

(declare-fun maxPrefixOneRule!2277 (LexerInterface!5891 Rule!12404 List!40905) Option!8720)

(assert (=> b!3848382 (= (maxPrefixOneRule!2277 thiss!20629 (rule!9152 (_1!23117 (v!39011 lt!1336481))) lt!1336480) (Some!8719 (tuple2!39967 (Token!11743 lt!1336478 (rule!9152 (_1!23117 (v!39011 lt!1336481))) lt!1336484 lt!1336479) (_2!23117 (v!39011 lt!1336481)))))))

(declare-fun lt!1336487 () Unit!58454)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1175 (LexerInterface!5891 List!40906 List!40905 List!40905 List!40905 Rule!12404) Unit!58454)

(assert (=> b!3848382 (= lt!1336487 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1175 thiss!20629 rules!2768 lt!1336479 lt!1336480 (_2!23117 (v!39011 lt!1336481)) (rule!9152 (_1!23117 (v!39011 lt!1336481)))))))

(declare-fun e!2378619 () Bool)

(declare-fun tp!1166502 () Bool)

(declare-fun b!3848383 () Bool)

(assert (=> b!3848383 (= e!2378622 (and (inv!21 (value!200241 (h!46203 prefixTokens!80))) e!2378619 tp!1166502))))

(declare-fun b!3848384 () Bool)

(assert (=> b!3848384 (= e!2378616 (= (size!30675 (_1!23117 (v!39011 lt!1336481))) (size!30676 (originalCharacters!6902 (_1!23117 (v!39011 lt!1336481))))))))

(declare-fun e!2378631 () Bool)

(assert (=> b!3848385 (= e!2378631 (and tp!1166501 tp!1166510))))

(declare-fun e!2378629 () Bool)

(declare-fun b!3848386 () Bool)

(declare-fun tp!1166498 () Bool)

(assert (=> b!3848386 (= e!2378619 (and tp!1166498 (inv!54921 (tag!7162 (rule!9152 (h!46203 prefixTokens!80)))) (inv!54925 (transformation!6302 (rule!9152 (h!46203 prefixTokens!80)))) e!2378629))))

(declare-fun b!3848387 () Bool)

(declare-fun e!2378627 () Bool)

(declare-fun e!2378620 () Bool)

(assert (=> b!3848387 (= e!2378627 e!2378620)))

(declare-fun res!1557949 () Bool)

(assert (=> b!3848387 (=> res!1557949 e!2378620)))

(declare-fun lt!1336477 () Int)

(declare-fun lt!1336490 () Int)

(assert (=> b!3848387 (= res!1557949 (not (= (+ lt!1336484 lt!1336477) lt!1336490)))))

(assert (=> b!3848387 (= lt!1336490 (size!30676 lt!1336480))))

(declare-fun b!3848388 () Bool)

(declare-fun tp!1166505 () Bool)

(assert (=> b!3848388 (= e!2378634 (and tp_is_empty!19385 tp!1166505))))

(declare-fun tp!1166504 () Bool)

(declare-fun b!3848389 () Bool)

(assert (=> b!3848389 (= e!2378628 (and tp!1166504 (inv!54921 (tag!7162 (h!46202 rules!2768))) (inv!54925 (transformation!6302 (h!46202 rules!2768))) e!2378631))))

(assert (=> b!3848390 (= e!2378629 (and tp!1166507 tp!1166503))))

(declare-fun b!3848391 () Bool)

(assert (=> b!3848391 (= e!2378620 e!2378607)))

(declare-fun res!1557940 () Bool)

(assert (=> b!3848391 (=> res!1557940 e!2378607)))

(declare-fun lt!1336489 () Int)

(declare-fun lt!1336486 () Int)

(assert (=> b!3848391 (= res!1557940 (or (not (= (+ lt!1336486 lt!1336489) lt!1336490)) (<= lt!1336484 lt!1336486)))))

(assert (=> b!3848391 (= lt!1336486 (size!30676 prefix!426))))

(declare-fun b!3848392 () Bool)

(assert (=> b!3848392 (= e!2378625 e!2378627)))

(declare-fun res!1557947 () Bool)

(assert (=> b!3848392 (=> res!1557947 e!2378627)))

(assert (=> b!3848392 (= res!1557947 (>= lt!1336477 lt!1336489))))

(assert (=> b!3848392 (= lt!1336489 (size!30676 suffix!1176))))

(assert (=> b!3848392 (= lt!1336477 (size!30676 (_2!23117 (v!39011 lt!1336481))))))

(assert (=> b!3848393 (= e!2378617 (and tp!1166508 tp!1166511))))

(declare-fun b!3848394 () Bool)

(declare-fun res!1557937 () Bool)

(assert (=> b!3848394 (=> (not res!1557937) (not e!2378609))))

(assert (=> b!3848394 (= res!1557937 (= (lexList!1659 thiss!20629 rules!2768 suffix!1176) (tuple2!39969 suffixTokens!72 suffixResult!91)))))

(assert (= (and start!360420 res!1557948) b!3848379))

(assert (= (and b!3848379 res!1557951) b!3848377))

(assert (= (and b!3848377 res!1557942) b!3848375))

(assert (= (and b!3848375 res!1557938) b!3848367))

(assert (= (and b!3848367 res!1557950) b!3848373))

(assert (= (and b!3848373 res!1557952) b!3848394))

(assert (= (and b!3848394 res!1557937) b!3848365))

(assert (= (and b!3848365 res!1557944) b!3848372))

(assert (= (and b!3848372 res!1557943) b!3848384))

(assert (= (and b!3848372 (not res!1557941)) b!3848371))

(assert (= (and b!3848371 (not res!1557945)) b!3848368))

(assert (= (and b!3848368 (not res!1557939)) b!3848392))

(assert (= (and b!3848392 (not res!1557947)) b!3848387))

(assert (= (and b!3848387 (not res!1557949)) b!3848391))

(assert (= (and b!3848391 (not res!1557940)) b!3848382))

(assert (= (and b!3848382 (not res!1557946)) b!3848380))

(assert (= (and start!360420 ((_ is Cons!40781) suffixResult!91)) b!3848388))

(assert (= (and start!360420 ((_ is Cons!40781) suffix!1176)) b!3848370))

(assert (= b!3848389 b!3848385))

(assert (= b!3848376 b!3848389))

(assert (= (and start!360420 ((_ is Cons!40782) rules!2768)) b!3848376))

(assert (= b!3848386 b!3848390))

(assert (= b!3848383 b!3848386))

(assert (= b!3848374 b!3848383))

(assert (= (and start!360420 ((_ is Cons!40783) prefixTokens!80)) b!3848374))

(assert (= b!3848378 b!3848393))

(assert (= b!3848381 b!3848378))

(assert (= b!3848369 b!3848381))

(assert (= (and start!360420 ((_ is Cons!40783) suffixTokens!72)) b!3848369))

(assert (= (and start!360420 ((_ is Cons!40781) prefix!426)) b!3848366))

(declare-fun m!4403047 () Bool)

(assert (=> b!3848384 m!4403047))

(declare-fun m!4403049 () Bool)

(assert (=> b!3848367 m!4403049))

(declare-fun m!4403051 () Bool)

(assert (=> b!3848386 m!4403051))

(declare-fun m!4403053 () Bool)

(assert (=> b!3848386 m!4403053))

(declare-fun m!4403055 () Bool)

(assert (=> b!3848369 m!4403055))

(declare-fun m!4403057 () Bool)

(assert (=> b!3848389 m!4403057))

(declare-fun m!4403059 () Bool)

(assert (=> b!3848389 m!4403059))

(declare-fun m!4403061 () Bool)

(assert (=> b!3848375 m!4403061))

(declare-fun m!4403063 () Bool)

(assert (=> b!3848392 m!4403063))

(declare-fun m!4403065 () Bool)

(assert (=> b!3848392 m!4403065))

(declare-fun m!4403067 () Bool)

(assert (=> b!3848377 m!4403067))

(declare-fun m!4403069 () Bool)

(assert (=> b!3848387 m!4403069))

(declare-fun m!4403071 () Bool)

(assert (=> b!3848378 m!4403071))

(declare-fun m!4403073 () Bool)

(assert (=> b!3848378 m!4403073))

(declare-fun m!4403075 () Bool)

(assert (=> b!3848371 m!4403075))

(declare-fun m!4403077 () Bool)

(assert (=> b!3848372 m!4403077))

(declare-fun m!4403079 () Bool)

(assert (=> b!3848372 m!4403079))

(declare-fun m!4403081 () Bool)

(assert (=> b!3848372 m!4403081))

(declare-fun m!4403083 () Bool)

(assert (=> b!3848372 m!4403083))

(declare-fun m!4403085 () Bool)

(assert (=> b!3848372 m!4403085))

(declare-fun m!4403087 () Bool)

(assert (=> b!3848372 m!4403087))

(declare-fun m!4403089 () Bool)

(assert (=> b!3848372 m!4403089))

(declare-fun m!4403091 () Bool)

(assert (=> b!3848372 m!4403091))

(declare-fun m!4403093 () Bool)

(assert (=> b!3848372 m!4403093))

(declare-fun m!4403095 () Bool)

(assert (=> b!3848372 m!4403095))

(declare-fun m!4403097 () Bool)

(assert (=> b!3848372 m!4403097))

(declare-fun m!4403099 () Bool)

(assert (=> b!3848372 m!4403099))

(declare-fun m!4403101 () Bool)

(assert (=> b!3848372 m!4403101))

(assert (=> b!3848372 m!4403077))

(declare-fun m!4403103 () Bool)

(assert (=> b!3848372 m!4403103))

(assert (=> b!3848372 m!4403091))

(declare-fun m!4403105 () Bool)

(assert (=> b!3848365 m!4403105))

(declare-fun m!4403107 () Bool)

(assert (=> b!3848394 m!4403107))

(declare-fun m!4403109 () Bool)

(assert (=> b!3848380 m!4403109))

(declare-fun m!4403111 () Bool)

(assert (=> b!3848382 m!4403111))

(declare-fun m!4403113 () Bool)

(assert (=> b!3848382 m!4403113))

(declare-fun m!4403115 () Bool)

(assert (=> b!3848382 m!4403115))

(declare-fun m!4403117 () Bool)

(assert (=> b!3848373 m!4403117))

(declare-fun m!4403119 () Bool)

(assert (=> b!3848373 m!4403119))

(declare-fun m!4403121 () Bool)

(assert (=> b!3848373 m!4403121))

(declare-fun m!4403123 () Bool)

(assert (=> b!3848381 m!4403123))

(declare-fun m!4403125 () Bool)

(assert (=> b!3848391 m!4403125))

(declare-fun m!4403127 () Bool)

(assert (=> b!3848379 m!4403127))

(declare-fun m!4403129 () Bool)

(assert (=> b!3848383 m!4403129))

(declare-fun m!4403131 () Bool)

(assert (=> b!3848374 m!4403131))

(check-sat (not b!3848388) b_and!287197 (not b!3848375) (not b!3848391) (not b!3848369) (not b_next!103807) (not b!3848370) (not b!3848372) b_and!287189 (not b!3848377) (not b!3848381) (not b!3848386) (not b!3848367) b_and!287195 (not b!3848380) (not b!3848371) (not b_next!103805) (not b!3848379) b_and!287193 (not b_next!103803) (not b!3848383) (not b!3848392) (not b!3848373) tp_is_empty!19385 (not b!3848394) (not b!3848378) (not b!3848365) (not b!3848382) (not b!3848389) (not b!3848376) (not b_next!103801) (not b_next!103799) (not b!3848366) b_and!287191 (not b!3848374) b_and!287187 (not b!3848387) (not b!3848384) (not b_next!103797))
(check-sat (not b_next!103805) b_and!287197 (not b_next!103807) b_and!287189 (not b_next!103801) (not b_next!103799) b_and!287195 (not b_next!103797) b_and!287193 (not b_next!103803) b_and!287191 b_and!287187)
