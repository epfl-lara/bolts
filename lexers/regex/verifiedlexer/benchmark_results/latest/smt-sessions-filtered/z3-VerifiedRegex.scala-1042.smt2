; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52080 () Bool)

(assert start!52080)

(declare-fun b!565519 () Bool)

(declare-fun b_free!15749 () Bool)

(declare-fun b_next!15765 () Bool)

(assert (=> b!565519 (= b_free!15749 (not b_next!15765))))

(declare-fun tp!178417 () Bool)

(declare-fun b_and!55123 () Bool)

(assert (=> b!565519 (= tp!178417 b_and!55123)))

(declare-fun b_free!15751 () Bool)

(declare-fun b_next!15767 () Bool)

(assert (=> b!565519 (= b_free!15751 (not b_next!15767))))

(declare-fun tp!178419 () Bool)

(declare-fun b_and!55125 () Bool)

(assert (=> b!565519 (= tp!178419 b_and!55125)))

(declare-fun b!565499 () Bool)

(declare-fun b_free!15753 () Bool)

(declare-fun b_next!15769 () Bool)

(assert (=> b!565499 (= b_free!15753 (not b_next!15769))))

(declare-fun tp!178420 () Bool)

(declare-fun b_and!55127 () Bool)

(assert (=> b!565499 (= tp!178420 b_and!55127)))

(declare-fun b_free!15755 () Bool)

(declare-fun b_next!15771 () Bool)

(assert (=> b!565499 (= b_free!15755 (not b_next!15771))))

(declare-fun tp!178422 () Bool)

(declare-fun b_and!55129 () Bool)

(assert (=> b!565499 (= tp!178422 b_and!55129)))

(declare-fun b!565486 () Bool)

(declare-fun res!242284 () Bool)

(declare-fun e!341723 () Bool)

(assert (=> b!565486 (=> (not res!242284) (not e!341723))))

(declare-datatypes ((C!3732 0))(
  ( (C!3733 (val!2092 Int)) )
))
(declare-datatypes ((Regex!1405 0))(
  ( (ElementMatch!1405 (c!106189 C!3732)) (Concat!2500 (regOne!3322 Regex!1405) (regTwo!3322 Regex!1405)) (EmptyExpr!1405) (Star!1405 (reg!1734 Regex!1405)) (EmptyLang!1405) (Union!1405 (regOne!3323 Regex!1405) (regTwo!3323 Regex!1405)) )
))
(declare-datatypes ((String!7218 0))(
  ( (String!7219 (value!35364 String)) )
))
(declare-datatypes ((List!5580 0))(
  ( (Nil!5570) (Cons!5570 (h!10971 (_ BitVec 16)) (t!76263 List!5580)) )
))
(declare-datatypes ((TokenValue!1095 0))(
  ( (FloatLiteralValue!2190 (text!8110 List!5580)) (TokenValueExt!1094 (__x!4088 Int)) (Broken!5475 (value!35365 List!5580)) (Object!1104) (End!1095) (Def!1095) (Underscore!1095) (Match!1095) (Else!1095) (Error!1095) (Case!1095) (If!1095) (Extends!1095) (Abstract!1095) (Class!1095) (Val!1095) (DelimiterValue!2190 (del!1155 List!5580)) (KeywordValue!1101 (value!35366 List!5580)) (CommentValue!2190 (value!35367 List!5580)) (WhitespaceValue!2190 (value!35368 List!5580)) (IndentationValue!1095 (value!35369 List!5580)) (String!7220) (Int32!1095) (Broken!5476 (value!35370 List!5580)) (Boolean!1096) (Unit!9958) (OperatorValue!1098 (op!1155 List!5580)) (IdentifierValue!2190 (value!35371 List!5580)) (IdentifierValue!2191 (value!35372 List!5580)) (WhitespaceValue!2191 (value!35373 List!5580)) (True!2190) (False!2190) (Broken!5477 (value!35374 List!5580)) (Broken!5478 (value!35375 List!5580)) (True!2191) (RightBrace!1095) (RightBracket!1095) (Colon!1095) (Null!1095) (Comma!1095) (LeftBracket!1095) (False!2191) (LeftBrace!1095) (ImaginaryLiteralValue!1095 (text!8111 List!5580)) (StringLiteralValue!3285 (value!35376 List!5580)) (EOFValue!1095 (value!35377 List!5580)) (IdentValue!1095 (value!35378 List!5580)) (DelimiterValue!2191 (value!35379 List!5580)) (DedentValue!1095 (value!35380 List!5580)) (NewLineValue!1095 (value!35381 List!5580)) (IntegerValue!3285 (value!35382 (_ BitVec 32)) (text!8112 List!5580)) (IntegerValue!3286 (value!35383 Int) (text!8113 List!5580)) (Times!1095) (Or!1095) (Equal!1095) (Minus!1095) (Broken!5479 (value!35384 List!5580)) (And!1095) (Div!1095) (LessEqual!1095) (Mod!1095) (Concat!2501) (Not!1095) (Plus!1095) (SpaceValue!1095 (value!35385 List!5580)) (IntegerValue!3287 (value!35386 Int) (text!8114 List!5580)) (StringLiteralValue!3286 (text!8115 List!5580)) (FloatLiteralValue!2191 (text!8116 List!5580)) (BytesLiteralValue!1095 (value!35387 List!5580)) (CommentValue!2191 (value!35388 List!5580)) (StringLiteralValue!3287 (value!35389 List!5580)) (ErrorTokenValue!1095 (msg!1156 List!5580)) )
))
(declare-datatypes ((List!5581 0))(
  ( (Nil!5571) (Cons!5571 (h!10972 C!3732) (t!76264 List!5581)) )
))
(declare-datatypes ((IArray!3577 0))(
  ( (IArray!3578 (innerList!1846 List!5581)) )
))
(declare-datatypes ((Conc!1788 0))(
  ( (Node!1788 (left!4568 Conc!1788) (right!4898 Conc!1788) (csize!3806 Int) (cheight!1999 Int)) (Leaf!2831 (xs!4425 IArray!3577) (csize!3807 Int)) (Empty!1788) )
))
(declare-datatypes ((BalanceConc!3584 0))(
  ( (BalanceConc!3585 (c!106190 Conc!1788)) )
))
(declare-datatypes ((TokenValueInjection!1958 0))(
  ( (TokenValueInjection!1959 (toValue!1926 Int) (toChars!1785 Int)) )
))
(declare-datatypes ((Rule!1942 0))(
  ( (Rule!1943 (regex!1071 Regex!1405) (tag!1333 String!7218) (isSeparator!1071 Bool) (transformation!1071 TokenValueInjection!1958)) )
))
(declare-datatypes ((List!5582 0))(
  ( (Nil!5572) (Cons!5572 (h!10973 Rule!1942) (t!76265 List!5582)) )
))
(declare-fun rules!3103 () List!5582)

(declare-fun isEmpty!4021 (List!5582) Bool)

(assert (=> b!565486 (= res!242284 (not (isEmpty!4021 rules!3103)))))

(declare-fun b!565487 () Bool)

(declare-fun res!242267 () Bool)

(declare-fun e!341708 () Bool)

(assert (=> b!565487 (=> (not res!242267) (not e!341708))))

(declare-datatypes ((Token!1878 0))(
  ( (Token!1879 (value!35390 TokenValue!1095) (rule!1807 Rule!1942) (size!4440 Int) (originalCharacters!1110 List!5581)) )
))
(declare-datatypes ((tuple2!6568 0))(
  ( (tuple2!6569 (_1!3548 Token!1878) (_2!3548 List!5581)) )
))
(declare-datatypes ((Option!1422 0))(
  ( (None!1421) (Some!1421 (v!16266 tuple2!6568)) )
))
(declare-fun lt!238204 () Option!1422)

(declare-fun size!4441 (List!5581) Int)

(assert (=> b!565487 (= res!242267 (= (size!4440 (_1!3548 (v!16266 lt!238204))) (size!4441 (originalCharacters!1110 (_1!3548 (v!16266 lt!238204))))))))

(declare-fun b!565488 () Bool)

(declare-fun res!242283 () Bool)

(declare-fun e!341705 () Bool)

(assert (=> b!565488 (=> (not res!242283) (not e!341705))))

(declare-fun token!491 () Token!1878)

(assert (=> b!565488 (= res!242283 (= (size!4440 token!491) (size!4441 (originalCharacters!1110 token!491))))))

(declare-fun suffix!1342 () List!5581)

(declare-fun lt!238202 () List!5581)

(declare-fun lt!238208 () List!5581)

(declare-fun b!565489 () Bool)

(declare-fun lt!238198 () Int)

(declare-fun lt!238203 () TokenValue!1095)

(assert (=> b!565489 (= e!341705 (and (= (size!4440 token!491) lt!238198) (= (originalCharacters!1110 token!491) lt!238202) (= (tuple2!6569 token!491 suffix!1342) (tuple2!6569 (Token!1879 lt!238203 (rule!1807 token!491) lt!238198 lt!238202) lt!238208))))))

(declare-fun b!565490 () Bool)

(declare-fun e!341721 () Bool)

(declare-fun e!341707 () Bool)

(assert (=> b!565490 (= e!341721 e!341707)))

(declare-fun res!242288 () Bool)

(assert (=> b!565490 (=> (not res!242288) (not e!341707))))

(declare-fun lt!238209 () List!5581)

(declare-fun lt!238189 () List!5581)

(assert (=> b!565490 (= res!242288 (= lt!238209 lt!238189))))

(declare-fun ++!1559 (List!5581 List!5581) List!5581)

(assert (=> b!565490 (= lt!238209 (++!1559 lt!238202 suffix!1342))))

(declare-fun b!565491 () Bool)

(declare-fun res!242287 () Bool)

(declare-fun e!341699 () Bool)

(assert (=> b!565491 (=> res!242287 e!341699)))

(declare-fun input!2705 () List!5581)

(declare-fun matchR!552 (Regex!1405 List!5581) Bool)

(assert (=> b!565491 (= res!242287 (not (matchR!552 (regex!1071 (rule!1807 token!491)) input!2705)))))

(declare-fun b!565492 () Bool)

(declare-fun e!341714 () Bool)

(declare-fun e!341702 () Bool)

(assert (=> b!565492 (= e!341714 e!341702)))

(declare-fun res!242272 () Bool)

(assert (=> b!565492 (=> (not res!242272) (not e!341702))))

(declare-fun lt!238190 () tuple2!6568)

(assert (=> b!565492 (= res!242272 (and (= (_1!3548 lt!238190) token!491) (= (_2!3548 lt!238190) suffix!1342)))))

(declare-fun lt!238197 () Option!1422)

(declare-fun get!2121 (Option!1422) tuple2!6568)

(assert (=> b!565492 (= lt!238190 (get!2121 lt!238197))))

(declare-fun b!565493 () Bool)

(declare-fun e!341703 () Bool)

(assert (=> b!565493 (= e!341703 (= (_1!3548 (get!2121 lt!238204)) (_1!3548 (v!16266 lt!238204))))))

(declare-fun e!341704 () Bool)

(declare-fun e!341709 () Bool)

(declare-fun tp!178418 () Bool)

(declare-fun b!565494 () Bool)

(declare-fun inv!21 (TokenValue!1095) Bool)

(assert (=> b!565494 (= e!341704 (and (inv!21 (value!35390 token!491)) e!341709 tp!178418))))

(declare-fun b!565495 () Bool)

(declare-fun e!341722 () Bool)

(declare-fun e!341716 () Bool)

(declare-fun tp!178421 () Bool)

(assert (=> b!565495 (= e!341722 (and e!341716 tp!178421))))

(declare-fun b!565496 () Bool)

(declare-fun e!341700 () Bool)

(assert (=> b!565496 (= e!341707 (not e!341700))))

(declare-fun res!242285 () Bool)

(assert (=> b!565496 (=> res!242285 e!341700)))

(declare-fun isPrefix!705 (List!5581 List!5581) Bool)

(assert (=> b!565496 (= res!242285 (not (isPrefix!705 input!2705 lt!238209)))))

(assert (=> b!565496 (isPrefix!705 lt!238202 lt!238209)))

(declare-datatypes ((Unit!9959 0))(
  ( (Unit!9960) )
))
(declare-fun lt!238200 () Unit!9959)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!552 (List!5581 List!5581) Unit!9959)

(assert (=> b!565496 (= lt!238200 (lemmaConcatTwoListThenFirstIsPrefix!552 lt!238202 suffix!1342))))

(assert (=> b!565496 (isPrefix!705 input!2705 lt!238189)))

(declare-fun lt!238205 () Unit!9959)

(assert (=> b!565496 (= lt!238205 (lemmaConcatTwoListThenFirstIsPrefix!552 input!2705 suffix!1342))))

(assert (=> b!565496 e!341708))

(declare-fun res!242276 () Bool)

(assert (=> b!565496 (=> (not res!242276) (not e!341708))))

(declare-fun lt!238199 () TokenValue!1095)

(assert (=> b!565496 (= res!242276 (= (value!35390 (_1!3548 (v!16266 lt!238204))) lt!238199))))

(declare-fun lt!238211 () List!5581)

(declare-fun apply!1336 (TokenValueInjection!1958 BalanceConc!3584) TokenValue!1095)

(declare-fun seqFromList!1259 (List!5581) BalanceConc!3584)

(assert (=> b!565496 (= lt!238199 (apply!1336 (transformation!1071 (rule!1807 (_1!3548 (v!16266 lt!238204)))) (seqFromList!1259 lt!238211)))))

(declare-fun lt!238210 () Unit!9959)

(declare-fun lemmaInv!207 (TokenValueInjection!1958) Unit!9959)

(assert (=> b!565496 (= lt!238210 (lemmaInv!207 (transformation!1071 (rule!1807 token!491))))))

(declare-fun lt!238212 () Unit!9959)

(assert (=> b!565496 (= lt!238212 (lemmaInv!207 (transformation!1071 (rule!1807 (_1!3548 (v!16266 lt!238204))))))))

(declare-datatypes ((LexerInterface!957 0))(
  ( (LexerInterfaceExt!954 (__x!4089 Int)) (Lexer!955) )
))
(declare-fun thiss!22590 () LexerInterface!957)

(declare-fun ruleValid!281 (LexerInterface!957 Rule!1942) Bool)

(assert (=> b!565496 (ruleValid!281 thiss!22590 (rule!1807 token!491))))

(declare-fun lt!238195 () Unit!9959)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!138 (LexerInterface!957 Rule!1942 List!5582) Unit!9959)

(assert (=> b!565496 (= lt!238195 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!138 thiss!22590 (rule!1807 token!491) rules!3103))))

(assert (=> b!565496 (ruleValid!281 thiss!22590 (rule!1807 (_1!3548 (v!16266 lt!238204))))))

(declare-fun lt!238193 () Unit!9959)

(assert (=> b!565496 (= lt!238193 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!138 thiss!22590 (rule!1807 (_1!3548 (v!16266 lt!238204))) rules!3103))))

(assert (=> b!565496 (isPrefix!705 input!2705 input!2705)))

(declare-fun lt!238206 () Unit!9959)

(declare-fun lemmaIsPrefixRefl!443 (List!5581 List!5581) Unit!9959)

(assert (=> b!565496 (= lt!238206 (lemmaIsPrefixRefl!443 input!2705 input!2705))))

(declare-fun lt!238194 () List!5581)

(assert (=> b!565496 (= (_2!3548 (v!16266 lt!238204)) lt!238194)))

(declare-fun lt!238192 () Unit!9959)

(declare-fun lemmaSamePrefixThenSameSuffix!428 (List!5581 List!5581 List!5581 List!5581 List!5581) Unit!9959)

(assert (=> b!565496 (= lt!238192 (lemmaSamePrefixThenSameSuffix!428 lt!238211 (_2!3548 (v!16266 lt!238204)) lt!238211 lt!238194 input!2705))))

(declare-fun getSuffix!224 (List!5581 List!5581) List!5581)

(assert (=> b!565496 (= lt!238194 (getSuffix!224 input!2705 lt!238211))))

(declare-fun lt!238191 () List!5581)

(assert (=> b!565496 (isPrefix!705 lt!238211 lt!238191)))

(assert (=> b!565496 (= lt!238191 (++!1559 lt!238211 (_2!3548 (v!16266 lt!238204))))))

(declare-fun lt!238188 () Unit!9959)

(assert (=> b!565496 (= lt!238188 (lemmaConcatTwoListThenFirstIsPrefix!552 lt!238211 (_2!3548 (v!16266 lt!238204))))))

(declare-fun lt!238215 () Unit!9959)

(declare-fun lemmaCharactersSize!138 (Token!1878) Unit!9959)

(assert (=> b!565496 (= lt!238215 (lemmaCharactersSize!138 token!491))))

(declare-fun lt!238187 () Unit!9959)

(assert (=> b!565496 (= lt!238187 (lemmaCharactersSize!138 (_1!3548 (v!16266 lt!238204))))))

(declare-fun lt!238186 () Unit!9959)

(declare-fun e!341717 () Unit!9959)

(assert (=> b!565496 (= lt!238186 e!341717)))

(declare-fun c!106188 () Bool)

(declare-fun lt!238201 () Int)

(assert (=> b!565496 (= c!106188 (> lt!238201 lt!238198))))

(assert (=> b!565496 (= lt!238198 (size!4441 lt!238202))))

(assert (=> b!565496 (= lt!238201 (size!4441 lt!238211))))

(declare-fun list!2311 (BalanceConc!3584) List!5581)

(declare-fun charsOf!700 (Token!1878) BalanceConc!3584)

(assert (=> b!565496 (= lt!238211 (list!2311 (charsOf!700 (_1!3548 (v!16266 lt!238204)))))))

(declare-fun lt!238213 () tuple2!6568)

(assert (=> b!565496 (= lt!238204 (Some!1421 lt!238213))))

(assert (=> b!565496 (= lt!238213 (tuple2!6569 (_1!3548 (v!16266 lt!238204)) (_2!3548 (v!16266 lt!238204))))))

(declare-fun lt!238214 () Unit!9959)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!148 (List!5581 List!5581 List!5581 List!5581) Unit!9959)

(assert (=> b!565496 (= lt!238214 (lemmaConcatSameAndSameSizesThenSameLists!148 lt!238202 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!565497 () Bool)

(assert (=> b!565497 (= e!341708 (and (= (size!4440 (_1!3548 (v!16266 lt!238204))) lt!238201) (= (originalCharacters!1110 (_1!3548 (v!16266 lt!238204))) lt!238211) (= lt!238213 (tuple2!6569 (Token!1879 lt!238199 (rule!1807 (_1!3548 (v!16266 lt!238204))) lt!238201 lt!238211) lt!238194))))))

(declare-fun b!565498 () Bool)

(declare-fun e!341715 () Bool)

(declare-fun e!341711 () Bool)

(assert (=> b!565498 (= e!341715 e!341711)))

(declare-fun res!242277 () Bool)

(assert (=> b!565498 (=> res!242277 e!341711)))

(assert (=> b!565498 (= res!242277 (>= lt!238201 lt!238198))))

(declare-fun e!341712 () Bool)

(assert (=> b!565499 (= e!341712 (and tp!178420 tp!178422))))

(declare-fun b!565500 () Bool)

(assert (=> b!565500 (= e!341700 e!341699)))

(declare-fun res!242274 () Bool)

(assert (=> b!565500 (=> res!242274 e!341699)))

(assert (=> b!565500 (= res!242274 (>= lt!238201 lt!238198))))

(assert (=> b!565500 e!341715))

(declare-fun res!242278 () Bool)

(assert (=> b!565500 (=> (not res!242278) (not e!341715))))

(declare-fun maxPrefixOneRule!356 (LexerInterface!957 Rule!1942 List!5581) Option!1422)

(assert (=> b!565500 (= res!242278 (= (maxPrefixOneRule!356 thiss!22590 (rule!1807 token!491) lt!238189) (Some!1421 (tuple2!6569 (Token!1879 lt!238203 (rule!1807 token!491) lt!238198 lt!238202) suffix!1342))))))

(declare-fun lt!238196 () Unit!9959)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!106 (LexerInterface!957 List!5582 List!5581 List!5581 List!5581 Rule!1942) Unit!9959)

(assert (=> b!565500 (= lt!238196 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!106 thiss!22590 rules!3103 lt!238202 lt!238189 suffix!1342 (rule!1807 token!491)))))

(assert (=> b!565500 (= (maxPrefixOneRule!356 thiss!22590 (rule!1807 (_1!3548 (v!16266 lt!238204))) input!2705) (Some!1421 (tuple2!6569 (Token!1879 lt!238199 (rule!1807 (_1!3548 (v!16266 lt!238204))) lt!238201 lt!238211) (_2!3548 (v!16266 lt!238204)))))))

(declare-fun lt!238207 () Unit!9959)

(assert (=> b!565500 (= lt!238207 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!106 thiss!22590 rules!3103 lt!238211 input!2705 (_2!3548 (v!16266 lt!238204)) (rule!1807 (_1!3548 (v!16266 lt!238204)))))))

(assert (=> b!565500 e!341705))

(declare-fun res!242271 () Bool)

(assert (=> b!565500 (=> (not res!242271) (not e!341705))))

(assert (=> b!565500 (= res!242271 (= (value!35390 token!491) lt!238203))))

(assert (=> b!565500 (= lt!238203 (apply!1336 (transformation!1071 (rule!1807 token!491)) (seqFromList!1259 lt!238202)))))

(assert (=> b!565500 (= suffix!1342 lt!238208)))

(declare-fun lt!238185 () Unit!9959)

(assert (=> b!565500 (= lt!238185 (lemmaSamePrefixThenSameSuffix!428 lt!238202 suffix!1342 lt!238202 lt!238208 lt!238189))))

(assert (=> b!565500 (= lt!238208 (getSuffix!224 lt!238189 lt!238202))))

(declare-fun b!565501 () Bool)

(declare-fun res!242286 () Bool)

(assert (=> b!565501 (=> (not res!242286) (not e!341723))))

(declare-fun isEmpty!4022 (List!5581) Bool)

(assert (=> b!565501 (= res!242286 (not (isEmpty!4022 input!2705)))))

(declare-fun b!565502 () Bool)

(declare-fun e!341718 () Bool)

(declare-fun tp_is_empty!3165 () Bool)

(declare-fun tp!178415 () Bool)

(assert (=> b!565502 (= e!341718 (and tp_is_empty!3165 tp!178415))))

(declare-fun b!565503 () Bool)

(declare-fun e!341719 () Bool)

(assert (=> b!565503 (= e!341719 e!341714)))

(declare-fun res!242268 () Bool)

(assert (=> b!565503 (=> (not res!242268) (not e!341714))))

(declare-fun isDefined!1233 (Option!1422) Bool)

(assert (=> b!565503 (= res!242268 (isDefined!1233 lt!238197))))

(declare-fun maxPrefix!655 (LexerInterface!957 List!5582 List!5581) Option!1422)

(assert (=> b!565503 (= lt!238197 (maxPrefix!655 thiss!22590 rules!3103 lt!238189))))

(assert (=> b!565503 (= lt!238189 (++!1559 input!2705 suffix!1342))))

(declare-fun b!565504 () Bool)

(declare-fun res!242289 () Bool)

(assert (=> b!565504 (=> res!242289 e!341699)))

(assert (=> b!565504 (= res!242289 (not (isPrefix!705 lt!238211 input!2705)))))

(declare-fun b!565505 () Bool)

(assert (=> b!565505 (= e!341702 e!341721)))

(declare-fun res!242280 () Bool)

(assert (=> b!565505 (=> (not res!242280) (not e!341721))))

(get-info :version)

(assert (=> b!565505 (= res!242280 ((_ is Some!1421) lt!238204))))

(assert (=> b!565505 (= lt!238204 (maxPrefix!655 thiss!22590 rules!3103 input!2705))))

(declare-fun b!565506 () Bool)

(declare-fun tp!178424 () Bool)

(declare-fun inv!6997 (String!7218) Bool)

(declare-fun inv!7000 (TokenValueInjection!1958) Bool)

(assert (=> b!565506 (= e!341709 (and tp!178424 (inv!6997 (tag!1333 (rule!1807 token!491))) (inv!7000 (transformation!1071 (rule!1807 token!491))) e!341712))))

(declare-fun b!565507 () Bool)

(declare-fun Unit!9961 () Unit!9959)

(assert (=> b!565507 (= e!341717 Unit!9961)))

(assert (=> b!565507 false))

(declare-fun b!565508 () Bool)

(declare-fun res!242273 () Bool)

(assert (=> b!565508 (=> (not res!242273) (not e!341723))))

(declare-fun rulesInvariant!920 (LexerInterface!957 List!5582) Bool)

(assert (=> b!565508 (= res!242273 (rulesInvariant!920 thiss!22590 rules!3103))))

(declare-fun b!565509 () Bool)

(declare-fun res!242270 () Bool)

(assert (=> b!565509 (=> res!242270 e!341699)))

(declare-fun contains!1305 (List!5582 Rule!1942) Bool)

(assert (=> b!565509 (= res!242270 (not (contains!1305 rules!3103 (rule!1807 token!491))))))

(declare-fun res!242290 () Bool)

(assert (=> start!52080 (=> (not res!242290) (not e!341723))))

(assert (=> start!52080 (= res!242290 ((_ is Lexer!955) thiss!22590))))

(assert (=> start!52080 e!341723))

(assert (=> start!52080 e!341718))

(assert (=> start!52080 e!341722))

(declare-fun inv!7001 (Token!1878) Bool)

(assert (=> start!52080 (and (inv!7001 token!491) e!341704)))

(assert (=> start!52080 true))

(declare-fun e!341713 () Bool)

(assert (=> start!52080 e!341713))

(declare-fun b!565510 () Bool)

(assert (=> b!565510 (= e!341699 true)))

(declare-fun lt!238216 () List!5581)

(assert (=> b!565510 (= lt!238216 (++!1559 lt!238211 lt!238194))))

(declare-fun b!565511 () Bool)

(declare-fun res!242281 () Bool)

(assert (=> b!565511 (=> res!242281 e!341699)))

(assert (=> b!565511 (= res!242281 (not (= (getSuffix!224 input!2705 input!2705) Nil!5571)))))

(declare-fun b!565512 () Bool)

(declare-fun Unit!9962 () Unit!9959)

(assert (=> b!565512 (= e!341717 Unit!9962)))

(declare-fun b!565513 () Bool)

(declare-fun tp!178416 () Bool)

(assert (=> b!565513 (= e!341713 (and tp_is_empty!3165 tp!178416))))

(declare-fun b!565514 () Bool)

(declare-fun res!242269 () Bool)

(assert (=> b!565514 (=> res!242269 e!341699)))

(assert (=> b!565514 (= res!242269 (not (isPrefix!705 lt!238202 input!2705)))))

(declare-fun b!565515 () Bool)

(assert (=> b!565515 (= e!341711 e!341703)))

(declare-fun res!242279 () Bool)

(assert (=> b!565515 (=> (not res!242279) (not e!341703))))

(assert (=> b!565515 (= res!242279 (isDefined!1233 lt!238204))))

(declare-fun b!565516 () Bool)

(declare-fun e!341701 () Bool)

(declare-fun tp!178423 () Bool)

(assert (=> b!565516 (= e!341716 (and tp!178423 (inv!6997 (tag!1333 (h!10973 rules!3103))) (inv!7000 (transformation!1071 (h!10973 rules!3103))) e!341701))))

(declare-fun b!565517 () Bool)

(declare-fun res!242282 () Bool)

(assert (=> b!565517 (=> res!242282 e!341699)))

(assert (=> b!565517 (= res!242282 (not (= lt!238191 input!2705)))))

(declare-fun b!565518 () Bool)

(assert (=> b!565518 (= e!341723 e!341719)))

(declare-fun res!242275 () Bool)

(assert (=> b!565518 (=> (not res!242275) (not e!341719))))

(assert (=> b!565518 (= res!242275 (= lt!238202 input!2705))))

(assert (=> b!565518 (= lt!238202 (list!2311 (charsOf!700 token!491)))))

(assert (=> b!565519 (= e!341701 (and tp!178417 tp!178419))))

(assert (= (and start!52080 res!242290) b!565486))

(assert (= (and b!565486 res!242284) b!565508))

(assert (= (and b!565508 res!242273) b!565501))

(assert (= (and b!565501 res!242286) b!565518))

(assert (= (and b!565518 res!242275) b!565503))

(assert (= (and b!565503 res!242268) b!565492))

(assert (= (and b!565492 res!242272) b!565505))

(assert (= (and b!565505 res!242280) b!565490))

(assert (= (and b!565490 res!242288) b!565496))

(assert (= (and b!565496 c!106188) b!565507))

(assert (= (and b!565496 (not c!106188)) b!565512))

(assert (= (and b!565496 res!242276) b!565487))

(assert (= (and b!565487 res!242267) b!565497))

(assert (= (and b!565496 (not res!242285)) b!565500))

(assert (= (and b!565500 res!242271) b!565488))

(assert (= (and b!565488 res!242283) b!565489))

(assert (= (and b!565500 res!242278) b!565498))

(assert (= (and b!565498 (not res!242277)) b!565515))

(assert (= (and b!565515 res!242279) b!565493))

(assert (= (and b!565500 (not res!242274)) b!565509))

(assert (= (and b!565509 (not res!242270)) b!565491))

(assert (= (and b!565491 (not res!242287)) b!565514))

(assert (= (and b!565514 (not res!242269)) b!565511))

(assert (= (and b!565511 (not res!242281)) b!565517))

(assert (= (and b!565517 (not res!242282)) b!565504))

(assert (= (and b!565504 (not res!242289)) b!565510))

(assert (= (and start!52080 ((_ is Cons!5571) suffix!1342)) b!565502))

(assert (= b!565516 b!565519))

(assert (= b!565495 b!565516))

(assert (= (and start!52080 ((_ is Cons!5572) rules!3103)) b!565495))

(assert (= b!565506 b!565499))

(assert (= b!565494 b!565506))

(assert (= start!52080 b!565494))

(assert (= (and start!52080 ((_ is Cons!5571) input!2705)) b!565513))

(declare-fun m!818917 () Bool)

(assert (=> b!565488 m!818917))

(declare-fun m!818919 () Bool)

(assert (=> b!565490 m!818919))

(declare-fun m!818921 () Bool)

(assert (=> b!565500 m!818921))

(declare-fun m!818923 () Bool)

(assert (=> b!565500 m!818923))

(declare-fun m!818925 () Bool)

(assert (=> b!565500 m!818925))

(declare-fun m!818927 () Bool)

(assert (=> b!565500 m!818927))

(declare-fun m!818929 () Bool)

(assert (=> b!565500 m!818929))

(declare-fun m!818931 () Bool)

(assert (=> b!565500 m!818931))

(declare-fun m!818933 () Bool)

(assert (=> b!565500 m!818933))

(assert (=> b!565500 m!818923))

(declare-fun m!818935 () Bool)

(assert (=> b!565500 m!818935))

(declare-fun m!818937 () Bool)

(assert (=> b!565492 m!818937))

(declare-fun m!818939 () Bool)

(assert (=> b!565491 m!818939))

(declare-fun m!818941 () Bool)

(assert (=> b!565516 m!818941))

(declare-fun m!818943 () Bool)

(assert (=> b!565516 m!818943))

(declare-fun m!818945 () Bool)

(assert (=> b!565514 m!818945))

(declare-fun m!818947 () Bool)

(assert (=> b!565511 m!818947))

(declare-fun m!818949 () Bool)

(assert (=> start!52080 m!818949))

(declare-fun m!818951 () Bool)

(assert (=> b!565486 m!818951))

(declare-fun m!818953 () Bool)

(assert (=> b!565496 m!818953))

(declare-fun m!818955 () Bool)

(assert (=> b!565496 m!818955))

(declare-fun m!818957 () Bool)

(assert (=> b!565496 m!818957))

(declare-fun m!818959 () Bool)

(assert (=> b!565496 m!818959))

(declare-fun m!818961 () Bool)

(assert (=> b!565496 m!818961))

(declare-fun m!818963 () Bool)

(assert (=> b!565496 m!818963))

(declare-fun m!818965 () Bool)

(assert (=> b!565496 m!818965))

(declare-fun m!818967 () Bool)

(assert (=> b!565496 m!818967))

(declare-fun m!818969 () Bool)

(assert (=> b!565496 m!818969))

(declare-fun m!818971 () Bool)

(assert (=> b!565496 m!818971))

(declare-fun m!818973 () Bool)

(assert (=> b!565496 m!818973))

(declare-fun m!818975 () Bool)

(assert (=> b!565496 m!818975))

(declare-fun m!818977 () Bool)

(assert (=> b!565496 m!818977))

(declare-fun m!818979 () Bool)

(assert (=> b!565496 m!818979))

(declare-fun m!818981 () Bool)

(assert (=> b!565496 m!818981))

(declare-fun m!818983 () Bool)

(assert (=> b!565496 m!818983))

(declare-fun m!818985 () Bool)

(assert (=> b!565496 m!818985))

(assert (=> b!565496 m!818961))

(declare-fun m!818987 () Bool)

(assert (=> b!565496 m!818987))

(declare-fun m!818989 () Bool)

(assert (=> b!565496 m!818989))

(declare-fun m!818991 () Bool)

(assert (=> b!565496 m!818991))

(declare-fun m!818993 () Bool)

(assert (=> b!565496 m!818993))

(declare-fun m!818995 () Bool)

(assert (=> b!565496 m!818995))

(declare-fun m!818997 () Bool)

(assert (=> b!565496 m!818997))

(declare-fun m!818999 () Bool)

(assert (=> b!565496 m!818999))

(assert (=> b!565496 m!818975))

(declare-fun m!819001 () Bool)

(assert (=> b!565496 m!819001))

(declare-fun m!819003 () Bool)

(assert (=> b!565496 m!819003))

(declare-fun m!819005 () Bool)

(assert (=> b!565496 m!819005))

(declare-fun m!819007 () Bool)

(assert (=> b!565506 m!819007))

(declare-fun m!819009 () Bool)

(assert (=> b!565506 m!819009))

(declare-fun m!819011 () Bool)

(assert (=> b!565503 m!819011))

(declare-fun m!819013 () Bool)

(assert (=> b!565503 m!819013))

(declare-fun m!819015 () Bool)

(assert (=> b!565503 m!819015))

(declare-fun m!819017 () Bool)

(assert (=> b!565501 m!819017))

(declare-fun m!819019 () Bool)

(assert (=> b!565505 m!819019))

(declare-fun m!819021 () Bool)

(assert (=> b!565493 m!819021))

(declare-fun m!819023 () Bool)

(assert (=> b!565494 m!819023))

(declare-fun m!819025 () Bool)

(assert (=> b!565504 m!819025))

(declare-fun m!819027 () Bool)

(assert (=> b!565508 m!819027))

(declare-fun m!819029 () Bool)

(assert (=> b!565518 m!819029))

(assert (=> b!565518 m!819029))

(declare-fun m!819031 () Bool)

(assert (=> b!565518 m!819031))

(declare-fun m!819033 () Bool)

(assert (=> b!565515 m!819033))

(declare-fun m!819035 () Bool)

(assert (=> b!565510 m!819035))

(declare-fun m!819037 () Bool)

(assert (=> b!565487 m!819037))

(declare-fun m!819039 () Bool)

(assert (=> b!565509 m!819039))

(check-sat (not b!565508) (not b!565493) (not b!565513) (not b!565515) (not b!565487) (not b!565502) (not b!565511) b_and!55129 (not b!565503) (not b!565486) (not b!565490) (not b!565516) b_and!55127 (not b_next!15765) (not b_next!15771) (not b!565510) (not b!565518) (not b!565494) (not b_next!15769) (not b!565505) (not b!565501) (not b!565495) (not b!565504) (not b!565491) (not b!565514) (not start!52080) tp_is_empty!3165 b_and!55125 b_and!55123 (not b_next!15767) (not b!565496) (not b!565500) (not b!565488) (not b!565509) (not b!565492) (not b!565506))
(check-sat (not b_next!15771) (not b_next!15769) b_and!55129 b_and!55127 (not b_next!15765) b_and!55125 b_and!55123 (not b_next!15767))
