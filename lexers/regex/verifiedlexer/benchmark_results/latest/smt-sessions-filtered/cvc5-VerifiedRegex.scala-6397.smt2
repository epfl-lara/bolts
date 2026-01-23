; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!333200 () Bool)

(assert start!333200)

(declare-fun b!3590390 () Bool)

(declare-fun b_free!92561 () Bool)

(declare-fun b_next!93265 () Bool)

(assert (=> b!3590390 (= b_free!92561 (not b_next!93265))))

(declare-fun tp!1099009 () Bool)

(declare-fun b_and!259587 () Bool)

(assert (=> b!3590390 (= tp!1099009 b_and!259587)))

(declare-fun b_free!92563 () Bool)

(declare-fun b_next!93267 () Bool)

(assert (=> b!3590390 (= b_free!92563 (not b_next!93267))))

(declare-fun tp!1099008 () Bool)

(declare-fun b_and!259589 () Bool)

(assert (=> b!3590390 (= tp!1099008 b_and!259589)))

(declare-fun b!3590408 () Bool)

(declare-fun b_free!92565 () Bool)

(declare-fun b_next!93269 () Bool)

(assert (=> b!3590408 (= b_free!92565 (not b_next!93269))))

(declare-fun tp!1098995 () Bool)

(declare-fun b_and!259591 () Bool)

(assert (=> b!3590408 (= tp!1098995 b_and!259591)))

(declare-fun b_free!92567 () Bool)

(declare-fun b_next!93271 () Bool)

(assert (=> b!3590408 (= b_free!92567 (not b_next!93271))))

(declare-fun tp!1099000 () Bool)

(declare-fun b_and!259593 () Bool)

(assert (=> b!3590408 (= tp!1099000 b_and!259593)))

(declare-fun b!3590405 () Bool)

(declare-fun b_free!92569 () Bool)

(declare-fun b_next!93273 () Bool)

(assert (=> b!3590405 (= b_free!92569 (not b_next!93273))))

(declare-fun tp!1099007 () Bool)

(declare-fun b_and!259595 () Bool)

(assert (=> b!3590405 (= tp!1099007 b_and!259595)))

(declare-fun b_free!92571 () Bool)

(declare-fun b_next!93275 () Bool)

(assert (=> b!3590405 (= b_free!92571 (not b_next!93275))))

(declare-fun tp!1098996 () Bool)

(declare-fun b_and!259597 () Bool)

(assert (=> b!3590405 (= tp!1098996 b_and!259597)))

(declare-fun b!3590406 () Bool)

(declare-fun b_free!92573 () Bool)

(declare-fun b_next!93277 () Bool)

(assert (=> b!3590406 (= b_free!92573 (not b_next!93277))))

(declare-fun tp!1098998 () Bool)

(declare-fun b_and!259599 () Bool)

(assert (=> b!3590406 (= tp!1098998 b_and!259599)))

(declare-fun b_free!92575 () Bool)

(declare-fun b_next!93279 () Bool)

(assert (=> b!3590406 (= b_free!92575 (not b_next!93279))))

(declare-fun tp!1099003 () Bool)

(declare-fun b_and!259601 () Bool)

(assert (=> b!3590406 (= tp!1099003 b_and!259601)))

(declare-fun b!3590379 () Bool)

(declare-fun e!2221541 () Bool)

(declare-datatypes ((C!20850 0))(
  ( (C!20851 (val!12473 Int)) )
))
(declare-datatypes ((List!37862 0))(
  ( (Nil!37738) (Cons!37738 (h!43158 C!20850) (t!290993 List!37862)) )
))
(declare-fun lt!1231628 () List!37862)

(declare-fun lt!1231624 () Int)

(declare-fun size!28743 (List!37862) Int)

(assert (=> b!3590379 (= e!2221541 (>= (size!28743 lt!1231628) lt!1231624))))

(declare-datatypes ((LexerInterface!5162 0))(
  ( (LexerInterfaceExt!5159 (__x!23823 Int)) (Lexer!5160) )
))
(declare-fun thiss!23823 () LexerInterface!5162)

(declare-datatypes ((List!37863 0))(
  ( (Nil!37739) (Cons!37739 (h!43159 (_ BitVec 16)) (t!290994 List!37863)) )
))
(declare-datatypes ((TokenValue!5803 0))(
  ( (FloatLiteralValue!11606 (text!41066 List!37863)) (TokenValueExt!5802 (__x!23824 Int)) (Broken!29015 (value!179266 List!37863)) (Object!5926) (End!5803) (Def!5803) (Underscore!5803) (Match!5803) (Else!5803) (Error!5803) (Case!5803) (If!5803) (Extends!5803) (Abstract!5803) (Class!5803) (Val!5803) (DelimiterValue!11606 (del!5863 List!37863)) (KeywordValue!5809 (value!179267 List!37863)) (CommentValue!11606 (value!179268 List!37863)) (WhitespaceValue!11606 (value!179269 List!37863)) (IndentationValue!5803 (value!179270 List!37863)) (String!42350) (Int32!5803) (Broken!29016 (value!179271 List!37863)) (Boolean!5804) (Unit!53737) (OperatorValue!5806 (op!5863 List!37863)) (IdentifierValue!11606 (value!179272 List!37863)) (IdentifierValue!11607 (value!179273 List!37863)) (WhitespaceValue!11607 (value!179274 List!37863)) (True!11606) (False!11606) (Broken!29017 (value!179275 List!37863)) (Broken!29018 (value!179276 List!37863)) (True!11607) (RightBrace!5803) (RightBracket!5803) (Colon!5803) (Null!5803) (Comma!5803) (LeftBracket!5803) (False!11607) (LeftBrace!5803) (ImaginaryLiteralValue!5803 (text!41067 List!37863)) (StringLiteralValue!17409 (value!179277 List!37863)) (EOFValue!5803 (value!179278 List!37863)) (IdentValue!5803 (value!179279 List!37863)) (DelimiterValue!11607 (value!179280 List!37863)) (DedentValue!5803 (value!179281 List!37863)) (NewLineValue!5803 (value!179282 List!37863)) (IntegerValue!17409 (value!179283 (_ BitVec 32)) (text!41068 List!37863)) (IntegerValue!17410 (value!179284 Int) (text!41069 List!37863)) (Times!5803) (Or!5803) (Equal!5803) (Minus!5803) (Broken!29019 (value!179285 List!37863)) (And!5803) (Div!5803) (LessEqual!5803) (Mod!5803) (Concat!16135) (Not!5803) (Plus!5803) (SpaceValue!5803 (value!179286 List!37863)) (IntegerValue!17411 (value!179287 Int) (text!41070 List!37863)) (StringLiteralValue!17410 (text!41071 List!37863)) (FloatLiteralValue!11607 (text!41072 List!37863)) (BytesLiteralValue!5803 (value!179288 List!37863)) (CommentValue!11607 (value!179289 List!37863)) (StringLiteralValue!17411 (value!179290 List!37863)) (ErrorTokenValue!5803 (msg!5864 List!37863)) )
))
(declare-datatypes ((Regex!10332 0))(
  ( (ElementMatch!10332 (c!621815 C!20850)) (Concat!16136 (regOne!21176 Regex!10332) (regTwo!21176 Regex!10332)) (EmptyExpr!10332) (Star!10332 (reg!10661 Regex!10332)) (EmptyLang!10332) (Union!10332 (regOne!21177 Regex!10332) (regTwo!21177 Regex!10332)) )
))
(declare-datatypes ((String!42351 0))(
  ( (String!42352 (value!179291 String)) )
))
(declare-datatypes ((IArray!22965 0))(
  ( (IArray!22966 (innerList!11540 List!37862)) )
))
(declare-datatypes ((Conc!11480 0))(
  ( (Node!11480 (left!29489 Conc!11480) (right!29819 Conc!11480) (csize!23190 Int) (cheight!11691 Int)) (Leaf!17878 (xs!14682 IArray!22965) (csize!23191 Int)) (Empty!11480) )
))
(declare-datatypes ((BalanceConc!22574 0))(
  ( (BalanceConc!22575 (c!621816 Conc!11480)) )
))
(declare-datatypes ((TokenValueInjection!11034 0))(
  ( (TokenValueInjection!11035 (toValue!7857 Int) (toChars!7716 Int)) )
))
(declare-datatypes ((Rule!10946 0))(
  ( (Rule!10947 (regex!5573 Regex!10332) (tag!6245 String!42351) (isSeparator!5573 Bool) (transformation!5573 TokenValueInjection!11034)) )
))
(declare-datatypes ((Token!10512 0))(
  ( (Token!10513 (value!179292 TokenValue!5803) (rule!8289 Rule!10946) (size!28744 Int) (originalCharacters!6287 List!37862)) )
))
(declare-datatypes ((tuple2!37626 0))(
  ( (tuple2!37627 (_1!21947 Token!10512) (_2!21947 List!37862)) )
))
(declare-fun lt!1231626 () tuple2!37626)

(declare-fun lt!1231621 () List!37862)

(declare-fun lt!1231623 () TokenValue!5803)

(declare-datatypes ((Option!7776 0))(
  ( (None!7775) (Some!7775 (v!37449 tuple2!37626)) )
))
(declare-fun maxPrefixOneRule!1840 (LexerInterface!5162 Rule!10946 List!37862) Option!7776)

(assert (=> b!3590379 (= (maxPrefixOneRule!1840 thiss!23823 (rule!8289 (_1!21947 lt!1231626)) lt!1231628) (Some!7775 (tuple2!37627 (Token!10513 lt!1231623 (rule!8289 (_1!21947 lt!1231626)) lt!1231624 lt!1231621) (_2!21947 lt!1231626))))))

(assert (=> b!3590379 (= lt!1231624 (size!28743 lt!1231621))))

(declare-fun apply!9079 (TokenValueInjection!11034 BalanceConc!22574) TokenValue!5803)

(declare-fun seqFromList!4126 (List!37862) BalanceConc!22574)

(assert (=> b!3590379 (= lt!1231623 (apply!9079 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))) (seqFromList!4126 lt!1231621)))))

(declare-datatypes ((Unit!53738 0))(
  ( (Unit!53739) )
))
(declare-fun lt!1231629 () Unit!53738)

(declare-datatypes ((List!37864 0))(
  ( (Nil!37740) (Cons!37740 (h!43160 Rule!10946) (t!290995 List!37864)) )
))
(declare-fun rules!3307 () List!37864)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!912 (LexerInterface!5162 List!37864 List!37862 List!37862 List!37862 Rule!10946) Unit!53738)

(assert (=> b!3590379 (= lt!1231629 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!912 thiss!23823 rules!3307 lt!1231621 lt!1231628 (_2!21947 lt!1231626) (rule!8289 (_1!21947 lt!1231626))))))

(declare-fun b!3590380 () Bool)

(declare-fun res!1449418 () Bool)

(declare-fun e!2221526 () Bool)

(assert (=> b!3590380 (=> res!1449418 e!2221526)))

(declare-fun suffix!1395 () List!37862)

(declare-fun isEmpty!22240 (List!37862) Bool)

(assert (=> b!3590380 (= res!1449418 (isEmpty!22240 suffix!1395))))

(declare-fun b!3590381 () Bool)

(declare-fun e!2221527 () Bool)

(assert (=> b!3590381 (= e!2221527 e!2221541)))

(declare-fun res!1449424 () Bool)

(assert (=> b!3590381 (=> res!1449424 e!2221541)))

(declare-fun lt!1231634 () BalanceConc!22574)

(declare-fun lt!1231625 () Option!7776)

(declare-fun size!28745 (BalanceConc!22574) Int)

(assert (=> b!3590381 (= res!1449424 (not (= lt!1231625 (Some!7775 (tuple2!37627 (Token!10513 (apply!9079 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))) lt!1231634) (rule!8289 (_1!21947 lt!1231626)) (size!28745 lt!1231634) lt!1231621) (_2!21947 lt!1231626))))))))

(declare-fun lt!1231615 () Unit!53738)

(declare-fun lemmaCharactersSize!626 (Token!10512) Unit!53738)

(assert (=> b!3590381 (= lt!1231615 (lemmaCharactersSize!626 (_1!21947 lt!1231626)))))

(declare-fun lt!1231632 () Unit!53738)

(declare-fun lemmaEqSameImage!764 (TokenValueInjection!11034 BalanceConc!22574 BalanceConc!22574) Unit!53738)

(assert (=> b!3590381 (= lt!1231632 (lemmaEqSameImage!764 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))) lt!1231634 (seqFromList!4126 (originalCharacters!6287 (_1!21947 lt!1231626)))))))

(declare-fun lt!1231618 () Unit!53738)

(declare-fun lemmaSemiInverse!1330 (TokenValueInjection!11034 BalanceConc!22574) Unit!53738)

(assert (=> b!3590381 (= lt!1231618 (lemmaSemiInverse!1330 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))) lt!1231634))))

(declare-fun b!3590382 () Bool)

(declare-fun res!1449422 () Bool)

(declare-fun e!2221528 () Bool)

(assert (=> b!3590382 (=> (not res!1449422) (not e!2221528))))

(declare-fun lt!1231631 () tuple2!37626)

(assert (=> b!3590382 (= res!1449422 (isEmpty!22240 (_2!21947 lt!1231631)))))

(declare-fun b!3590383 () Bool)

(declare-fun e!2221545 () Bool)

(declare-fun e!2221539 () Bool)

(assert (=> b!3590383 (= e!2221545 e!2221539)))

(declare-fun res!1449435 () Bool)

(assert (=> b!3590383 (=> (not res!1449435) (not e!2221539))))

(declare-fun lt!1231633 () Option!7776)

(declare-fun isDefined!6008 (Option!7776) Bool)

(assert (=> b!3590383 (= res!1449435 (isDefined!6008 lt!1231633))))

(declare-fun lt!1231613 () List!37862)

(declare-fun maxPrefix!2696 (LexerInterface!5162 List!37864 List!37862) Option!7776)

(assert (=> b!3590383 (= lt!1231633 (maxPrefix!2696 thiss!23823 rules!3307 lt!1231613))))

(declare-fun token!511 () Token!10512)

(declare-fun list!13881 (BalanceConc!22574) List!37862)

(declare-fun charsOf!3587 (Token!10512) BalanceConc!22574)

(assert (=> b!3590383 (= lt!1231613 (list!13881 (charsOf!3587 token!511)))))

(declare-fun b!3590384 () Bool)

(declare-fun e!2221529 () Bool)

(assert (=> b!3590384 (= e!2221526 e!2221529)))

(declare-fun res!1449416 () Bool)

(assert (=> b!3590384 (=> res!1449416 e!2221529)))

(declare-fun rule!403 () Rule!10946)

(declare-fun lt!1231622 () C!20850)

(declare-fun contains!7209 (List!37862 C!20850) Bool)

(declare-fun usedCharacters!787 (Regex!10332) List!37862)

(assert (=> b!3590384 (= res!1449416 (contains!7209 (usedCharacters!787 (regex!5573 rule!403)) lt!1231622))))

(declare-fun head!7497 (List!37862) C!20850)

(assert (=> b!3590384 (= lt!1231622 (head!7497 suffix!1395))))

(declare-fun b!3590385 () Bool)

(declare-fun res!1449420 () Bool)

(assert (=> b!3590385 (=> (not res!1449420) (not e!2221528))))

(assert (=> b!3590385 (= res!1449420 (= (rule!8289 token!511) rule!403))))

(declare-fun e!2221532 () Bool)

(declare-fun e!2221543 () Bool)

(declare-fun b!3590386 () Bool)

(declare-fun tp!1099005 () Bool)

(declare-fun inv!51077 (String!42351) Bool)

(declare-fun inv!51080 (TokenValueInjection!11034) Bool)

(assert (=> b!3590386 (= e!2221532 (and tp!1099005 (inv!51077 (tag!6245 (h!43160 rules!3307))) (inv!51080 (transformation!5573 (h!43160 rules!3307))) e!2221543))))

(declare-fun res!1449431 () Bool)

(assert (=> start!333200 (=> (not res!1449431) (not e!2221545))))

(assert (=> start!333200 (= res!1449431 (is-Lexer!5160 thiss!23823))))

(assert (=> start!333200 e!2221545))

(declare-fun e!2221538 () Bool)

(assert (=> start!333200 e!2221538))

(declare-fun e!2221546 () Bool)

(assert (=> start!333200 e!2221546))

(assert (=> start!333200 true))

(declare-fun e!2221535 () Bool)

(declare-fun inv!51081 (Token!10512) Bool)

(assert (=> start!333200 (and (inv!51081 token!511) e!2221535)))

(declare-fun e!2221540 () Bool)

(assert (=> start!333200 e!2221540))

(declare-fun e!2221525 () Bool)

(assert (=> start!333200 e!2221525))

(declare-fun b!3590387 () Bool)

(declare-fun tp_is_empty!17747 () Bool)

(declare-fun tp!1098997 () Bool)

(assert (=> b!3590387 (= e!2221546 (and tp_is_empty!17747 tp!1098997))))

(declare-fun b!3590388 () Bool)

(declare-fun res!1449429 () Bool)

(assert (=> b!3590388 (=> res!1449429 e!2221527)))

(declare-fun matchR!4901 (Regex!10332 List!37862) Bool)

(assert (=> b!3590388 (= res!1449429 (not (matchR!4901 (regex!5573 (rule!8289 (_1!21947 lt!1231626))) lt!1231621)))))

(declare-fun b!3590389 () Bool)

(declare-fun res!1449426 () Bool)

(assert (=> b!3590389 (=> res!1449426 e!2221529)))

(declare-fun anOtherTypeRule!33 () Rule!10946)

(assert (=> b!3590389 (= res!1449426 (not (contains!7209 (usedCharacters!787 (regex!5573 anOtherTypeRule!33)) lt!1231622)))))

(declare-fun e!2221537 () Bool)

(assert (=> b!3590390 (= e!2221537 (and tp!1099009 tp!1099008))))

(declare-fun b!3590391 () Bool)

(assert (=> b!3590391 (= e!2221529 e!2221527)))

(declare-fun res!1449428 () Bool)

(assert (=> b!3590391 (=> res!1449428 e!2221527)))

(declare-fun isPrefix!2936 (List!37862 List!37862) Bool)

(assert (=> b!3590391 (= res!1449428 (not (isPrefix!2936 lt!1231621 lt!1231628)))))

(declare-fun ++!9389 (List!37862 List!37862) List!37862)

(assert (=> b!3590391 (isPrefix!2936 lt!1231621 (++!9389 lt!1231621 (_2!21947 lt!1231626)))))

(declare-fun lt!1231616 () Unit!53738)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1857 (List!37862 List!37862) Unit!53738)

(assert (=> b!3590391 (= lt!1231616 (lemmaConcatTwoListThenFirstIsPrefix!1857 lt!1231621 (_2!21947 lt!1231626)))))

(assert (=> b!3590391 (= lt!1231621 (list!13881 lt!1231634))))

(assert (=> b!3590391 (= lt!1231634 (charsOf!3587 (_1!21947 lt!1231626)))))

(declare-fun e!2221536 () Bool)

(assert (=> b!3590391 e!2221536))

(declare-fun res!1449432 () Bool)

(assert (=> b!3590391 (=> (not res!1449432) (not e!2221536))))

(declare-datatypes ((Option!7777 0))(
  ( (None!7776) (Some!7776 (v!37450 Rule!10946)) )
))
(declare-fun lt!1231619 () Option!7777)

(declare-fun isDefined!6009 (Option!7777) Bool)

(assert (=> b!3590391 (= res!1449432 (isDefined!6009 lt!1231619))))

(declare-fun getRuleFromTag!1179 (LexerInterface!5162 List!37864 String!42351) Option!7777)

(assert (=> b!3590391 (= lt!1231619 (getRuleFromTag!1179 thiss!23823 rules!3307 (tag!6245 (rule!8289 (_1!21947 lt!1231626)))))))

(declare-fun lt!1231630 () Unit!53738)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1179 (LexerInterface!5162 List!37864 List!37862 Token!10512) Unit!53738)

(assert (=> b!3590391 (= lt!1231630 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1179 thiss!23823 rules!3307 lt!1231628 (_1!21947 lt!1231626)))))

(declare-fun get!12173 (Option!7776) tuple2!37626)

(assert (=> b!3590391 (= lt!1231626 (get!12173 lt!1231625))))

(declare-fun lt!1231617 () Unit!53738)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!842 (LexerInterface!5162 List!37864 List!37862 List!37862) Unit!53738)

(assert (=> b!3590391 (= lt!1231617 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!842 thiss!23823 rules!3307 lt!1231613 suffix!1395))))

(assert (=> b!3590391 (= lt!1231625 (maxPrefix!2696 thiss!23823 rules!3307 lt!1231628))))

(assert (=> b!3590391 (isPrefix!2936 lt!1231613 lt!1231628)))

(declare-fun lt!1231620 () Unit!53738)

(assert (=> b!3590391 (= lt!1231620 (lemmaConcatTwoListThenFirstIsPrefix!1857 lt!1231613 suffix!1395))))

(assert (=> b!3590391 (= lt!1231628 (++!9389 lt!1231613 suffix!1395))))

(declare-fun b!3590392 () Bool)

(declare-fun tp!1099006 () Bool)

(assert (=> b!3590392 (= e!2221540 (and tp!1099006 (inv!51077 (tag!6245 rule!403)) (inv!51080 (transformation!5573 rule!403)) e!2221537))))

(declare-fun b!3590393 () Bool)

(declare-fun res!1449419 () Bool)

(assert (=> b!3590393 (=> (not res!1449419) (not e!2221545))))

(declare-fun isEmpty!22241 (List!37864) Bool)

(assert (=> b!3590393 (= res!1449419 (not (isEmpty!22241 rules!3307)))))

(declare-fun b!3590394 () Bool)

(declare-fun res!1449434 () Bool)

(assert (=> b!3590394 (=> (not res!1449434) (not e!2221545))))

(declare-fun contains!7210 (List!37864 Rule!10946) Bool)

(assert (=> b!3590394 (= res!1449434 (contains!7210 rules!3307 rule!403))))

(declare-fun b!3590395 () Bool)

(declare-fun e!2221547 () Bool)

(declare-fun lt!1231614 () Rule!10946)

(assert (=> b!3590395 (= e!2221547 (= (rule!8289 (_1!21947 lt!1231626)) lt!1231614))))

(declare-fun e!2221534 () Bool)

(declare-fun tp!1098999 () Bool)

(declare-fun b!3590396 () Bool)

(declare-fun e!2221548 () Bool)

(assert (=> b!3590396 (= e!2221548 (and tp!1098999 (inv!51077 (tag!6245 (rule!8289 token!511))) (inv!51080 (transformation!5573 (rule!8289 token!511))) e!2221534))))

(declare-fun b!3590397 () Bool)

(declare-fun tp!1099002 () Bool)

(declare-fun inv!21 (TokenValue!5803) Bool)

(assert (=> b!3590397 (= e!2221535 (and (inv!21 (value!179292 token!511)) e!2221548 tp!1099002))))

(declare-fun b!3590398 () Bool)

(assert (=> b!3590398 (= e!2221539 e!2221528)))

(declare-fun res!1449417 () Bool)

(assert (=> b!3590398 (=> (not res!1449417) (not e!2221528))))

(assert (=> b!3590398 (= res!1449417 (= (_1!21947 lt!1231631) token!511))))

(assert (=> b!3590398 (= lt!1231631 (get!12173 lt!1231633))))

(declare-fun b!3590399 () Bool)

(declare-fun res!1449423 () Bool)

(assert (=> b!3590399 (=> (not res!1449423) (not e!2221545))))

(assert (=> b!3590399 (= res!1449423 (not (= (isSeparator!5573 anOtherTypeRule!33) (isSeparator!5573 rule!403))))))

(declare-fun b!3590400 () Bool)

(declare-fun res!1449421 () Bool)

(assert (=> b!3590400 (=> res!1449421 e!2221529)))

(declare-fun sepAndNonSepRulesDisjointChars!1743 (List!37864 List!37864) Bool)

(assert (=> b!3590400 (= res!1449421 (not (sepAndNonSepRulesDisjointChars!1743 rules!3307 rules!3307)))))

(declare-fun b!3590401 () Bool)

(assert (=> b!3590401 (= e!2221528 (not e!2221526))))

(declare-fun res!1449430 () Bool)

(assert (=> b!3590401 (=> res!1449430 e!2221526)))

(assert (=> b!3590401 (= res!1449430 (not (matchR!4901 (regex!5573 rule!403) lt!1231613)))))

(declare-fun ruleValid!1838 (LexerInterface!5162 Rule!10946) Bool)

(assert (=> b!3590401 (ruleValid!1838 thiss!23823 rule!403)))

(declare-fun lt!1231627 () Unit!53738)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!993 (LexerInterface!5162 Rule!10946 List!37864) Unit!53738)

(assert (=> b!3590401 (= lt!1231627 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!993 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3590402 () Bool)

(declare-fun res!1449427 () Bool)

(assert (=> b!3590402 (=> (not res!1449427) (not e!2221545))))

(assert (=> b!3590402 (= res!1449427 (contains!7210 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3590403 () Bool)

(declare-fun res!1449425 () Bool)

(assert (=> b!3590403 (=> (not res!1449425) (not e!2221545))))

(declare-fun rulesInvariant!4559 (LexerInterface!5162 List!37864) Bool)

(assert (=> b!3590403 (= res!1449425 (rulesInvariant!4559 thiss!23823 rules!3307))))

(declare-fun tp!1099004 () Bool)

(declare-fun e!2221544 () Bool)

(declare-fun b!3590404 () Bool)

(assert (=> b!3590404 (= e!2221525 (and tp!1099004 (inv!51077 (tag!6245 anOtherTypeRule!33)) (inv!51080 (transformation!5573 anOtherTypeRule!33)) e!2221544))))

(assert (=> b!3590405 (= e!2221543 (and tp!1099007 tp!1098996))))

(assert (=> b!3590406 (= e!2221544 (and tp!1098998 tp!1099003))))

(declare-fun b!3590407 () Bool)

(assert (=> b!3590407 (= e!2221536 e!2221547)))

(declare-fun res!1449433 () Bool)

(assert (=> b!3590407 (=> (not res!1449433) (not e!2221547))))

(assert (=> b!3590407 (= res!1449433 (matchR!4901 (regex!5573 lt!1231614) (list!13881 (charsOf!3587 (_1!21947 lt!1231626)))))))

(declare-fun get!12174 (Option!7777) Rule!10946)

(assert (=> b!3590407 (= lt!1231614 (get!12174 lt!1231619))))

(assert (=> b!3590408 (= e!2221534 (and tp!1098995 tp!1099000))))

(declare-fun b!3590409 () Bool)

(declare-fun tp!1099001 () Bool)

(assert (=> b!3590409 (= e!2221538 (and e!2221532 tp!1099001))))

(assert (= (and start!333200 res!1449431) b!3590393))

(assert (= (and b!3590393 res!1449419) b!3590403))

(assert (= (and b!3590403 res!1449425) b!3590394))

(assert (= (and b!3590394 res!1449434) b!3590402))

(assert (= (and b!3590402 res!1449427) b!3590399))

(assert (= (and b!3590399 res!1449423) b!3590383))

(assert (= (and b!3590383 res!1449435) b!3590398))

(assert (= (and b!3590398 res!1449417) b!3590382))

(assert (= (and b!3590382 res!1449422) b!3590385))

(assert (= (and b!3590385 res!1449420) b!3590401))

(assert (= (and b!3590401 (not res!1449430)) b!3590380))

(assert (= (and b!3590380 (not res!1449418)) b!3590384))

(assert (= (and b!3590384 (not res!1449416)) b!3590389))

(assert (= (and b!3590389 (not res!1449426)) b!3590400))

(assert (= (and b!3590400 (not res!1449421)) b!3590391))

(assert (= (and b!3590391 res!1449432) b!3590407))

(assert (= (and b!3590407 res!1449433) b!3590395))

(assert (= (and b!3590391 (not res!1449428)) b!3590388))

(assert (= (and b!3590388 (not res!1449429)) b!3590381))

(assert (= (and b!3590381 (not res!1449424)) b!3590379))

(assert (= b!3590386 b!3590405))

(assert (= b!3590409 b!3590386))

(assert (= (and start!333200 (is-Cons!37740 rules!3307)) b!3590409))

(assert (= (and start!333200 (is-Cons!37738 suffix!1395)) b!3590387))

(assert (= b!3590396 b!3590408))

(assert (= b!3590397 b!3590396))

(assert (= start!333200 b!3590397))

(assert (= b!3590392 b!3590390))

(assert (= start!333200 b!3590392))

(assert (= b!3590404 b!3590406))

(assert (= start!333200 b!3590404))

(declare-fun m!4084305 () Bool)

(assert (=> b!3590388 m!4084305))

(declare-fun m!4084307 () Bool)

(assert (=> b!3590381 m!4084307))

(declare-fun m!4084309 () Bool)

(assert (=> b!3590381 m!4084309))

(declare-fun m!4084311 () Bool)

(assert (=> b!3590381 m!4084311))

(declare-fun m!4084313 () Bool)

(assert (=> b!3590381 m!4084313))

(declare-fun m!4084315 () Bool)

(assert (=> b!3590381 m!4084315))

(declare-fun m!4084317 () Bool)

(assert (=> b!3590381 m!4084317))

(assert (=> b!3590381 m!4084307))

(declare-fun m!4084319 () Bool)

(assert (=> start!333200 m!4084319))

(declare-fun m!4084321 () Bool)

(assert (=> b!3590401 m!4084321))

(declare-fun m!4084323 () Bool)

(assert (=> b!3590401 m!4084323))

(declare-fun m!4084325 () Bool)

(assert (=> b!3590401 m!4084325))

(declare-fun m!4084327 () Bool)

(assert (=> b!3590404 m!4084327))

(declare-fun m!4084329 () Bool)

(assert (=> b!3590404 m!4084329))

(declare-fun m!4084331 () Bool)

(assert (=> b!3590407 m!4084331))

(assert (=> b!3590407 m!4084331))

(declare-fun m!4084333 () Bool)

(assert (=> b!3590407 m!4084333))

(assert (=> b!3590407 m!4084333))

(declare-fun m!4084335 () Bool)

(assert (=> b!3590407 m!4084335))

(declare-fun m!4084337 () Bool)

(assert (=> b!3590407 m!4084337))

(declare-fun m!4084339 () Bool)

(assert (=> b!3590383 m!4084339))

(declare-fun m!4084341 () Bool)

(assert (=> b!3590383 m!4084341))

(declare-fun m!4084343 () Bool)

(assert (=> b!3590383 m!4084343))

(assert (=> b!3590383 m!4084343))

(declare-fun m!4084345 () Bool)

(assert (=> b!3590383 m!4084345))

(declare-fun m!4084347 () Bool)

(assert (=> b!3590403 m!4084347))

(declare-fun m!4084349 () Bool)

(assert (=> b!3590398 m!4084349))

(declare-fun m!4084351 () Bool)

(assert (=> b!3590402 m!4084351))

(declare-fun m!4084353 () Bool)

(assert (=> b!3590392 m!4084353))

(declare-fun m!4084355 () Bool)

(assert (=> b!3590392 m!4084355))

(declare-fun m!4084357 () Bool)

(assert (=> b!3590394 m!4084357))

(declare-fun m!4084359 () Bool)

(assert (=> b!3590386 m!4084359))

(declare-fun m!4084361 () Bool)

(assert (=> b!3590386 m!4084361))

(declare-fun m!4084363 () Bool)

(assert (=> b!3590380 m!4084363))

(declare-fun m!4084365 () Bool)

(assert (=> b!3590393 m!4084365))

(declare-fun m!4084367 () Bool)

(assert (=> b!3590384 m!4084367))

(assert (=> b!3590384 m!4084367))

(declare-fun m!4084369 () Bool)

(assert (=> b!3590384 m!4084369))

(declare-fun m!4084371 () Bool)

(assert (=> b!3590384 m!4084371))

(declare-fun m!4084373 () Bool)

(assert (=> b!3590396 m!4084373))

(declare-fun m!4084375 () Bool)

(assert (=> b!3590396 m!4084375))

(declare-fun m!4084377 () Bool)

(assert (=> b!3590389 m!4084377))

(assert (=> b!3590389 m!4084377))

(declare-fun m!4084379 () Bool)

(assert (=> b!3590389 m!4084379))

(declare-fun m!4084381 () Bool)

(assert (=> b!3590382 m!4084381))

(declare-fun m!4084383 () Bool)

(assert (=> b!3590379 m!4084383))

(declare-fun m!4084385 () Bool)

(assert (=> b!3590379 m!4084385))

(declare-fun m!4084387 () Bool)

(assert (=> b!3590379 m!4084387))

(declare-fun m!4084389 () Bool)

(assert (=> b!3590379 m!4084389))

(declare-fun m!4084391 () Bool)

(assert (=> b!3590379 m!4084391))

(assert (=> b!3590379 m!4084385))

(declare-fun m!4084393 () Bool)

(assert (=> b!3590379 m!4084393))

(declare-fun m!4084395 () Bool)

(assert (=> b!3590391 m!4084395))

(declare-fun m!4084397 () Bool)

(assert (=> b!3590391 m!4084397))

(declare-fun m!4084399 () Bool)

(assert (=> b!3590391 m!4084399))

(assert (=> b!3590391 m!4084331))

(declare-fun m!4084401 () Bool)

(assert (=> b!3590391 m!4084401))

(declare-fun m!4084403 () Bool)

(assert (=> b!3590391 m!4084403))

(declare-fun m!4084405 () Bool)

(assert (=> b!3590391 m!4084405))

(declare-fun m!4084407 () Bool)

(assert (=> b!3590391 m!4084407))

(declare-fun m!4084409 () Bool)

(assert (=> b!3590391 m!4084409))

(declare-fun m!4084411 () Bool)

(assert (=> b!3590391 m!4084411))

(declare-fun m!4084413 () Bool)

(assert (=> b!3590391 m!4084413))

(assert (=> b!3590391 m!4084403))

(declare-fun m!4084415 () Bool)

(assert (=> b!3590391 m!4084415))

(declare-fun m!4084417 () Bool)

(assert (=> b!3590391 m!4084417))

(declare-fun m!4084419 () Bool)

(assert (=> b!3590391 m!4084419))

(declare-fun m!4084421 () Bool)

(assert (=> b!3590391 m!4084421))

(declare-fun m!4084423 () Bool)

(assert (=> b!3590400 m!4084423))

(declare-fun m!4084425 () Bool)

(assert (=> b!3590397 m!4084425))

(push 1)

(assert b_and!259591)

(assert (not b!3590404))

(assert (not b!3590394))

(assert (not b!3590384))

(assert (not b!3590380))

(assert (not b!3590386))

(assert (not b_next!93271))

(assert (not b!3590392))

(assert (not b_next!93269))

(assert (not b!3590382))

(assert (not b_next!93275))

(assert (not b!3590379))

(assert b_and!259589)

(assert (not b!3590381))

(assert (not b_next!93277))

(assert (not b!3590401))

(assert (not b_next!93279))

(assert (not b!3590393))

(assert (not b!3590407))

(assert (not b!3590389))

(assert (not b!3590403))

(assert b_and!259597)

(assert (not b!3590383))

(assert (not b!3590398))

(assert (not b!3590391))

(assert (not b!3590387))

(assert b_and!259593)

(assert b_and!259587)

(assert (not b!3590396))

(assert b_and!259601)

(assert (not b!3590402))

(assert (not b_next!93273))

(assert (not b!3590388))

(assert (not b_next!93265))

(assert (not start!333200))

(assert (not b!3590397))

(assert b_and!259595)

(assert b_and!259599)

(assert (not b!3590409))

(assert (not b!3590400))

(assert tp_is_empty!17747)

(assert (not b_next!93267))

(check-sat)

(pop 1)

(push 1)

(assert b_and!259591)

(assert b_and!259597)

(assert (not b_next!93271))

(assert (not b_next!93269))

(assert (not b_next!93275))

(assert b_and!259589)

(assert (not b_next!93277))

(assert (not b_next!93279))

(assert (not b_next!93267))

(assert b_and!259593)

(assert b_and!259587)

(assert b_and!259601)

(assert (not b_next!93273))

(assert (not b_next!93265))

(assert b_and!259595)

(assert b_and!259599)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1058516 () Bool)

(declare-fun res!1449511 () Bool)

(declare-fun e!2221627 () Bool)

(assert (=> d!1058516 (=> (not res!1449511) (not e!2221627))))

(assert (=> d!1058516 (= res!1449511 (not (isEmpty!22240 (originalCharacters!6287 token!511))))))

(assert (=> d!1058516 (= (inv!51081 token!511) e!2221627)))

(declare-fun b!3590507 () Bool)

(declare-fun res!1449512 () Bool)

(assert (=> b!3590507 (=> (not res!1449512) (not e!2221627))))

(declare-fun dynLambda!16231 (Int TokenValue!5803) BalanceConc!22574)

(assert (=> b!3590507 (= res!1449512 (= (originalCharacters!6287 token!511) (list!13881 (dynLambda!16231 (toChars!7716 (transformation!5573 (rule!8289 token!511))) (value!179292 token!511)))))))

(declare-fun b!3590508 () Bool)

(assert (=> b!3590508 (= e!2221627 (= (size!28744 token!511) (size!28743 (originalCharacters!6287 token!511))))))

(assert (= (and d!1058516 res!1449511) b!3590507))

(assert (= (and b!3590507 res!1449512) b!3590508))

(declare-fun b_lambda!106071 () Bool)

(assert (=> (not b_lambda!106071) (not b!3590507)))

(declare-fun t!291000 () Bool)

(declare-fun tb!204897 () Bool)

(assert (=> (and b!3590390 (= (toChars!7716 (transformation!5573 rule!403)) (toChars!7716 (transformation!5573 (rule!8289 token!511)))) t!291000) tb!204897))

(declare-fun b!3590513 () Bool)

(declare-fun e!2221630 () Bool)

(declare-fun tp!1099057 () Bool)

(declare-fun inv!51084 (Conc!11480) Bool)

(assert (=> b!3590513 (= e!2221630 (and (inv!51084 (c!621816 (dynLambda!16231 (toChars!7716 (transformation!5573 (rule!8289 token!511))) (value!179292 token!511)))) tp!1099057))))

(declare-fun result!249818 () Bool)

(declare-fun inv!51085 (BalanceConc!22574) Bool)

(assert (=> tb!204897 (= result!249818 (and (inv!51085 (dynLambda!16231 (toChars!7716 (transformation!5573 (rule!8289 token!511))) (value!179292 token!511))) e!2221630))))

(assert (= tb!204897 b!3590513))

(declare-fun m!4084549 () Bool)

(assert (=> b!3590513 m!4084549))

(declare-fun m!4084551 () Bool)

(assert (=> tb!204897 m!4084551))

(assert (=> b!3590507 t!291000))

(declare-fun b_and!259619 () Bool)

(assert (= b_and!259589 (and (=> t!291000 result!249818) b_and!259619)))

(declare-fun t!291002 () Bool)

(declare-fun tb!204899 () Bool)

(assert (=> (and b!3590408 (= (toChars!7716 (transformation!5573 (rule!8289 token!511))) (toChars!7716 (transformation!5573 (rule!8289 token!511)))) t!291002) tb!204899))

(declare-fun result!249822 () Bool)

(assert (= result!249822 result!249818))

(assert (=> b!3590507 t!291002))

(declare-fun b_and!259621 () Bool)

(assert (= b_and!259593 (and (=> t!291002 result!249822) b_and!259621)))

(declare-fun tb!204901 () Bool)

(declare-fun t!291004 () Bool)

(assert (=> (and b!3590405 (= (toChars!7716 (transformation!5573 (h!43160 rules!3307))) (toChars!7716 (transformation!5573 (rule!8289 token!511)))) t!291004) tb!204901))

(declare-fun result!249824 () Bool)

(assert (= result!249824 result!249818))

(assert (=> b!3590507 t!291004))

(declare-fun b_and!259623 () Bool)

(assert (= b_and!259597 (and (=> t!291004 result!249824) b_and!259623)))

(declare-fun tb!204903 () Bool)

(declare-fun t!291006 () Bool)

(assert (=> (and b!3590406 (= (toChars!7716 (transformation!5573 anOtherTypeRule!33)) (toChars!7716 (transformation!5573 (rule!8289 token!511)))) t!291006) tb!204903))

(declare-fun result!249826 () Bool)

(assert (= result!249826 result!249818))

(assert (=> b!3590507 t!291006))

(declare-fun b_and!259625 () Bool)

(assert (= b_and!259601 (and (=> t!291006 result!249826) b_and!259625)))

(declare-fun m!4084553 () Bool)

(assert (=> d!1058516 m!4084553))

(declare-fun m!4084555 () Bool)

(assert (=> b!3590507 m!4084555))

(assert (=> b!3590507 m!4084555))

(declare-fun m!4084557 () Bool)

(assert (=> b!3590507 m!4084557))

(declare-fun m!4084559 () Bool)

(assert (=> b!3590508 m!4084559))

(assert (=> start!333200 d!1058516))

(declare-fun d!1058518 () Bool)

(declare-fun lt!1231703 () Bool)

(declare-fun content!5366 (List!37862) (Set C!20850))

(assert (=> d!1058518 (= lt!1231703 (set.member lt!1231622 (content!5366 (usedCharacters!787 (regex!5573 anOtherTypeRule!33)))))))

(declare-fun e!2221635 () Bool)

(assert (=> d!1058518 (= lt!1231703 e!2221635)))

(declare-fun res!1449517 () Bool)

(assert (=> d!1058518 (=> (not res!1449517) (not e!2221635))))

(assert (=> d!1058518 (= res!1449517 (is-Cons!37738 (usedCharacters!787 (regex!5573 anOtherTypeRule!33))))))

(assert (=> d!1058518 (= (contains!7209 (usedCharacters!787 (regex!5573 anOtherTypeRule!33)) lt!1231622) lt!1231703)))

(declare-fun b!3590518 () Bool)

(declare-fun e!2221636 () Bool)

(assert (=> b!3590518 (= e!2221635 e!2221636)))

(declare-fun res!1449518 () Bool)

(assert (=> b!3590518 (=> res!1449518 e!2221636)))

(assert (=> b!3590518 (= res!1449518 (= (h!43158 (usedCharacters!787 (regex!5573 anOtherTypeRule!33))) lt!1231622))))

(declare-fun b!3590519 () Bool)

(assert (=> b!3590519 (= e!2221636 (contains!7209 (t!290993 (usedCharacters!787 (regex!5573 anOtherTypeRule!33))) lt!1231622))))

(assert (= (and d!1058518 res!1449517) b!3590518))

(assert (= (and b!3590518 (not res!1449518)) b!3590519))

(assert (=> d!1058518 m!4084377))

(declare-fun m!4084561 () Bool)

(assert (=> d!1058518 m!4084561))

(declare-fun m!4084563 () Bool)

(assert (=> d!1058518 m!4084563))

(declare-fun m!4084565 () Bool)

(assert (=> b!3590519 m!4084565))

(assert (=> b!3590389 d!1058518))

(declare-fun b!3590536 () Bool)

(declare-fun e!2221645 () List!37862)

(assert (=> b!3590536 (= e!2221645 Nil!37738)))

(declare-fun b!3590537 () Bool)

(declare-fun c!621828 () Bool)

(assert (=> b!3590537 (= c!621828 (is-Star!10332 (regex!5573 anOtherTypeRule!33)))))

(declare-fun e!2221646 () List!37862)

(declare-fun e!2221648 () List!37862)

(assert (=> b!3590537 (= e!2221646 e!2221648)))

(declare-fun b!3590538 () Bool)

(declare-fun e!2221647 () List!37862)

(assert (=> b!3590538 (= e!2221648 e!2221647)))

(declare-fun c!621829 () Bool)

(assert (=> b!3590538 (= c!621829 (is-Union!10332 (regex!5573 anOtherTypeRule!33)))))

(declare-fun call!259925 () List!37862)

(declare-fun call!259926 () List!37862)

(declare-fun call!259927 () List!37862)

(declare-fun bm!259920 () Bool)

(assert (=> bm!259920 (= call!259925 (++!9389 (ite c!621829 call!259926 call!259927) (ite c!621829 call!259927 call!259926)))))

(declare-fun b!3590539 () Bool)

(assert (=> b!3590539 (= e!2221646 (Cons!37738 (c!621815 (regex!5573 anOtherTypeRule!33)) Nil!37738))))

(declare-fun b!3590540 () Bool)

(assert (=> b!3590540 (= e!2221645 e!2221646)))

(declare-fun c!621831 () Bool)

(assert (=> b!3590540 (= c!621831 (is-ElementMatch!10332 (regex!5573 anOtherTypeRule!33)))))

(declare-fun b!3590541 () Bool)

(assert (=> b!3590541 (= e!2221647 call!259925)))

(declare-fun bm!259921 () Bool)

(declare-fun call!259928 () List!37862)

(assert (=> bm!259921 (= call!259927 call!259928)))

(declare-fun bm!259923 () Bool)

(assert (=> bm!259923 (= call!259926 (usedCharacters!787 (ite c!621829 (regOne!21177 (regex!5573 anOtherTypeRule!33)) (regTwo!21176 (regex!5573 anOtherTypeRule!33)))))))

(declare-fun b!3590542 () Bool)

(assert (=> b!3590542 (= e!2221648 call!259928)))

(declare-fun b!3590543 () Bool)

(assert (=> b!3590543 (= e!2221647 call!259925)))

(declare-fun d!1058520 () Bool)

(declare-fun c!621830 () Bool)

(assert (=> d!1058520 (= c!621830 (or (is-EmptyExpr!10332 (regex!5573 anOtherTypeRule!33)) (is-EmptyLang!10332 (regex!5573 anOtherTypeRule!33))))))

(assert (=> d!1058520 (= (usedCharacters!787 (regex!5573 anOtherTypeRule!33)) e!2221645)))

(declare-fun bm!259922 () Bool)

(assert (=> bm!259922 (= call!259928 (usedCharacters!787 (ite c!621828 (reg!10661 (regex!5573 anOtherTypeRule!33)) (ite c!621829 (regTwo!21177 (regex!5573 anOtherTypeRule!33)) (regOne!21176 (regex!5573 anOtherTypeRule!33))))))))

(assert (= (and d!1058520 c!621830) b!3590536))

(assert (= (and d!1058520 (not c!621830)) b!3590540))

(assert (= (and b!3590540 c!621831) b!3590539))

(assert (= (and b!3590540 (not c!621831)) b!3590537))

(assert (= (and b!3590537 c!621828) b!3590542))

(assert (= (and b!3590537 (not c!621828)) b!3590538))

(assert (= (and b!3590538 c!621829) b!3590541))

(assert (= (and b!3590538 (not c!621829)) b!3590543))

(assert (= (or b!3590541 b!3590543) bm!259923))

(assert (= (or b!3590541 b!3590543) bm!259921))

(assert (= (or b!3590541 b!3590543) bm!259920))

(assert (= (or b!3590542 bm!259921) bm!259922))

(declare-fun m!4084567 () Bool)

(assert (=> bm!259920 m!4084567))

(declare-fun m!4084569 () Bool)

(assert (=> bm!259923 m!4084569))

(declare-fun m!4084571 () Bool)

(assert (=> bm!259922 m!4084571))

(assert (=> b!3590389 d!1058520))

(declare-fun b!3590572 () Bool)

(declare-fun res!1449538 () Bool)

(declare-fun e!2221666 () Bool)

(assert (=> b!3590572 (=> (not res!1449538) (not e!2221666))))

(declare-fun tail!5562 (List!37862) List!37862)

(assert (=> b!3590572 (= res!1449538 (isEmpty!22240 (tail!5562 lt!1231621)))))

(declare-fun b!3590574 () Bool)

(declare-fun res!1449540 () Bool)

(declare-fun e!2221669 () Bool)

(assert (=> b!3590574 (=> res!1449540 e!2221669)))

(assert (=> b!3590574 (= res!1449540 (not (isEmpty!22240 (tail!5562 lt!1231621))))))

(declare-fun b!3590575 () Bool)

(assert (=> b!3590575 (= e!2221666 (= (head!7497 lt!1231621) (c!621815 (regex!5573 (rule!8289 (_1!21947 lt!1231626))))))))

(declare-fun b!3590576 () Bool)

(declare-fun e!2221668 () Bool)

(assert (=> b!3590576 (= e!2221668 e!2221669)))

(declare-fun res!1449536 () Bool)

(assert (=> b!3590576 (=> res!1449536 e!2221669)))

(declare-fun call!259931 () Bool)

(assert (=> b!3590576 (= res!1449536 call!259931)))

(declare-fun b!3590577 () Bool)

(declare-fun res!1449541 () Bool)

(declare-fun e!2221664 () Bool)

(assert (=> b!3590577 (=> res!1449541 e!2221664)))

(assert (=> b!3590577 (= res!1449541 e!2221666)))

(declare-fun res!1449535 () Bool)

(assert (=> b!3590577 (=> (not res!1449535) (not e!2221666))))

(declare-fun lt!1231706 () Bool)

(assert (=> b!3590577 (= res!1449535 lt!1231706)))

(declare-fun b!3590578 () Bool)

(declare-fun e!2221667 () Bool)

(declare-fun e!2221663 () Bool)

(assert (=> b!3590578 (= e!2221667 e!2221663)))

(declare-fun c!621838 () Bool)

(assert (=> b!3590578 (= c!621838 (is-EmptyLang!10332 (regex!5573 (rule!8289 (_1!21947 lt!1231626)))))))

(declare-fun b!3590579 () Bool)

(assert (=> b!3590579 (= e!2221663 (not lt!1231706))))

(declare-fun b!3590580 () Bool)

(assert (=> b!3590580 (= e!2221667 (= lt!1231706 call!259931))))

(declare-fun d!1058522 () Bool)

(assert (=> d!1058522 e!2221667))

(declare-fun c!621840 () Bool)

(assert (=> d!1058522 (= c!621840 (is-EmptyExpr!10332 (regex!5573 (rule!8289 (_1!21947 lt!1231626)))))))

(declare-fun e!2221665 () Bool)

(assert (=> d!1058522 (= lt!1231706 e!2221665)))

(declare-fun c!621839 () Bool)

(assert (=> d!1058522 (= c!621839 (isEmpty!22240 lt!1231621))))

(declare-fun validRegex!4720 (Regex!10332) Bool)

(assert (=> d!1058522 (validRegex!4720 (regex!5573 (rule!8289 (_1!21947 lt!1231626))))))

(assert (=> d!1058522 (= (matchR!4901 (regex!5573 (rule!8289 (_1!21947 lt!1231626))) lt!1231621) lt!1231706)))

(declare-fun b!3590573 () Bool)

(assert (=> b!3590573 (= e!2221669 (not (= (head!7497 lt!1231621) (c!621815 (regex!5573 (rule!8289 (_1!21947 lt!1231626)))))))))

(declare-fun b!3590581 () Bool)

(declare-fun res!1449539 () Bool)

(assert (=> b!3590581 (=> (not res!1449539) (not e!2221666))))

(assert (=> b!3590581 (= res!1449539 (not call!259931))))

(declare-fun bm!259926 () Bool)

(assert (=> bm!259926 (= call!259931 (isEmpty!22240 lt!1231621))))

(declare-fun b!3590582 () Bool)

(declare-fun res!1449537 () Bool)

(assert (=> b!3590582 (=> res!1449537 e!2221664)))

(assert (=> b!3590582 (= res!1449537 (not (is-ElementMatch!10332 (regex!5573 (rule!8289 (_1!21947 lt!1231626))))))))

(assert (=> b!3590582 (= e!2221663 e!2221664)))

(declare-fun b!3590583 () Bool)

(declare-fun nullable!3564 (Regex!10332) Bool)

(assert (=> b!3590583 (= e!2221665 (nullable!3564 (regex!5573 (rule!8289 (_1!21947 lt!1231626)))))))

(declare-fun b!3590584 () Bool)

(declare-fun derivativeStep!3113 (Regex!10332 C!20850) Regex!10332)

(assert (=> b!3590584 (= e!2221665 (matchR!4901 (derivativeStep!3113 (regex!5573 (rule!8289 (_1!21947 lt!1231626))) (head!7497 lt!1231621)) (tail!5562 lt!1231621)))))

(declare-fun b!3590585 () Bool)

(assert (=> b!3590585 (= e!2221664 e!2221668)))

(declare-fun res!1449542 () Bool)

(assert (=> b!3590585 (=> (not res!1449542) (not e!2221668))))

(assert (=> b!3590585 (= res!1449542 (not lt!1231706))))

(assert (= (and d!1058522 c!621839) b!3590583))

(assert (= (and d!1058522 (not c!621839)) b!3590584))

(assert (= (and d!1058522 c!621840) b!3590580))

(assert (= (and d!1058522 (not c!621840)) b!3590578))

(assert (= (and b!3590578 c!621838) b!3590579))

(assert (= (and b!3590578 (not c!621838)) b!3590582))

(assert (= (and b!3590582 (not res!1449537)) b!3590577))

(assert (= (and b!3590577 res!1449535) b!3590581))

(assert (= (and b!3590581 res!1449539) b!3590572))

(assert (= (and b!3590572 res!1449538) b!3590575))

(assert (= (and b!3590577 (not res!1449541)) b!3590585))

(assert (= (and b!3590585 res!1449542) b!3590576))

(assert (= (and b!3590576 (not res!1449536)) b!3590574))

(assert (= (and b!3590574 (not res!1449540)) b!3590573))

(assert (= (or b!3590580 b!3590581 b!3590576) bm!259926))

(declare-fun m!4084573 () Bool)

(assert (=> b!3590573 m!4084573))

(declare-fun m!4084575 () Bool)

(assert (=> b!3590572 m!4084575))

(assert (=> b!3590572 m!4084575))

(declare-fun m!4084577 () Bool)

(assert (=> b!3590572 m!4084577))

(assert (=> b!3590574 m!4084575))

(assert (=> b!3590574 m!4084575))

(assert (=> b!3590574 m!4084577))

(declare-fun m!4084579 () Bool)

(assert (=> bm!259926 m!4084579))

(assert (=> d!1058522 m!4084579))

(declare-fun m!4084581 () Bool)

(assert (=> d!1058522 m!4084581))

(assert (=> b!3590575 m!4084573))

(assert (=> b!3590584 m!4084573))

(assert (=> b!3590584 m!4084573))

(declare-fun m!4084583 () Bool)

(assert (=> b!3590584 m!4084583))

(assert (=> b!3590584 m!4084575))

(assert (=> b!3590584 m!4084583))

(assert (=> b!3590584 m!4084575))

(declare-fun m!4084585 () Bool)

(assert (=> b!3590584 m!4084585))

(declare-fun m!4084587 () Bool)

(assert (=> b!3590583 m!4084587))

(assert (=> b!3590388 d!1058522))

(declare-fun d!1058524 () Bool)

(declare-fun lt!1231707 () Bool)

(assert (=> d!1058524 (= lt!1231707 (set.member lt!1231622 (content!5366 (usedCharacters!787 (regex!5573 rule!403)))))))

(declare-fun e!2221670 () Bool)

(assert (=> d!1058524 (= lt!1231707 e!2221670)))

(declare-fun res!1449543 () Bool)

(assert (=> d!1058524 (=> (not res!1449543) (not e!2221670))))

(assert (=> d!1058524 (= res!1449543 (is-Cons!37738 (usedCharacters!787 (regex!5573 rule!403))))))

(assert (=> d!1058524 (= (contains!7209 (usedCharacters!787 (regex!5573 rule!403)) lt!1231622) lt!1231707)))

(declare-fun b!3590586 () Bool)

(declare-fun e!2221671 () Bool)

(assert (=> b!3590586 (= e!2221670 e!2221671)))

(declare-fun res!1449544 () Bool)

(assert (=> b!3590586 (=> res!1449544 e!2221671)))

(assert (=> b!3590586 (= res!1449544 (= (h!43158 (usedCharacters!787 (regex!5573 rule!403))) lt!1231622))))

(declare-fun b!3590587 () Bool)

(assert (=> b!3590587 (= e!2221671 (contains!7209 (t!290993 (usedCharacters!787 (regex!5573 rule!403))) lt!1231622))))

(assert (= (and d!1058524 res!1449543) b!3590586))

(assert (= (and b!3590586 (not res!1449544)) b!3590587))

(assert (=> d!1058524 m!4084367))

(declare-fun m!4084589 () Bool)

(assert (=> d!1058524 m!4084589))

(declare-fun m!4084591 () Bool)

(assert (=> d!1058524 m!4084591))

(declare-fun m!4084593 () Bool)

(assert (=> b!3590587 m!4084593))

(assert (=> b!3590384 d!1058524))

(declare-fun b!3590588 () Bool)

(declare-fun e!2221672 () List!37862)

(assert (=> b!3590588 (= e!2221672 Nil!37738)))

(declare-fun b!3590589 () Bool)

(declare-fun c!621841 () Bool)

(assert (=> b!3590589 (= c!621841 (is-Star!10332 (regex!5573 rule!403)))))

(declare-fun e!2221673 () List!37862)

(declare-fun e!2221675 () List!37862)

(assert (=> b!3590589 (= e!2221673 e!2221675)))

(declare-fun b!3590590 () Bool)

(declare-fun e!2221674 () List!37862)

(assert (=> b!3590590 (= e!2221675 e!2221674)))

(declare-fun c!621842 () Bool)

(assert (=> b!3590590 (= c!621842 (is-Union!10332 (regex!5573 rule!403)))))

(declare-fun call!259932 () List!37862)

(declare-fun bm!259927 () Bool)

(declare-fun call!259933 () List!37862)

(declare-fun call!259934 () List!37862)

(assert (=> bm!259927 (= call!259932 (++!9389 (ite c!621842 call!259933 call!259934) (ite c!621842 call!259934 call!259933)))))

(declare-fun b!3590591 () Bool)

(assert (=> b!3590591 (= e!2221673 (Cons!37738 (c!621815 (regex!5573 rule!403)) Nil!37738))))

(declare-fun b!3590592 () Bool)

(assert (=> b!3590592 (= e!2221672 e!2221673)))

(declare-fun c!621844 () Bool)

(assert (=> b!3590592 (= c!621844 (is-ElementMatch!10332 (regex!5573 rule!403)))))

(declare-fun b!3590593 () Bool)

(assert (=> b!3590593 (= e!2221674 call!259932)))

(declare-fun bm!259928 () Bool)

(declare-fun call!259935 () List!37862)

(assert (=> bm!259928 (= call!259934 call!259935)))

(declare-fun bm!259930 () Bool)

(assert (=> bm!259930 (= call!259933 (usedCharacters!787 (ite c!621842 (regOne!21177 (regex!5573 rule!403)) (regTwo!21176 (regex!5573 rule!403)))))))

(declare-fun b!3590594 () Bool)

(assert (=> b!3590594 (= e!2221675 call!259935)))

(declare-fun b!3590595 () Bool)

(assert (=> b!3590595 (= e!2221674 call!259932)))

(declare-fun d!1058526 () Bool)

(declare-fun c!621843 () Bool)

(assert (=> d!1058526 (= c!621843 (or (is-EmptyExpr!10332 (regex!5573 rule!403)) (is-EmptyLang!10332 (regex!5573 rule!403))))))

(assert (=> d!1058526 (= (usedCharacters!787 (regex!5573 rule!403)) e!2221672)))

(declare-fun bm!259929 () Bool)

(assert (=> bm!259929 (= call!259935 (usedCharacters!787 (ite c!621841 (reg!10661 (regex!5573 rule!403)) (ite c!621842 (regTwo!21177 (regex!5573 rule!403)) (regOne!21176 (regex!5573 rule!403))))))))

(assert (= (and d!1058526 c!621843) b!3590588))

(assert (= (and d!1058526 (not c!621843)) b!3590592))

(assert (= (and b!3590592 c!621844) b!3590591))

(assert (= (and b!3590592 (not c!621844)) b!3590589))

(assert (= (and b!3590589 c!621841) b!3590594))

(assert (= (and b!3590589 (not c!621841)) b!3590590))

(assert (= (and b!3590590 c!621842) b!3590593))

(assert (= (and b!3590590 (not c!621842)) b!3590595))

(assert (= (or b!3590593 b!3590595) bm!259930))

(assert (= (or b!3590593 b!3590595) bm!259928))

(assert (= (or b!3590593 b!3590595) bm!259927))

(assert (= (or b!3590594 bm!259928) bm!259929))

(declare-fun m!4084595 () Bool)

(assert (=> bm!259927 m!4084595))

(declare-fun m!4084597 () Bool)

(assert (=> bm!259930 m!4084597))

(declare-fun m!4084599 () Bool)

(assert (=> bm!259929 m!4084599))

(assert (=> b!3590384 d!1058526))

(declare-fun d!1058528 () Bool)

(assert (=> d!1058528 (= (head!7497 suffix!1395) (h!43158 suffix!1395))))

(assert (=> b!3590384 d!1058528))

(declare-fun d!1058530 () Bool)

(assert (=> d!1058530 (= (inv!51077 (tag!6245 (h!43160 rules!3307))) (= (mod (str.len (value!179291 (tag!6245 (h!43160 rules!3307)))) 2) 0))))

(assert (=> b!3590386 d!1058530))

(declare-fun d!1058532 () Bool)

(declare-fun res!1449547 () Bool)

(declare-fun e!2221678 () Bool)

(assert (=> d!1058532 (=> (not res!1449547) (not e!2221678))))

(declare-fun semiInverseModEq!2362 (Int Int) Bool)

(assert (=> d!1058532 (= res!1449547 (semiInverseModEq!2362 (toChars!7716 (transformation!5573 (h!43160 rules!3307))) (toValue!7857 (transformation!5573 (h!43160 rules!3307)))))))

(assert (=> d!1058532 (= (inv!51080 (transformation!5573 (h!43160 rules!3307))) e!2221678)))

(declare-fun b!3590598 () Bool)

(declare-fun equivClasses!2261 (Int Int) Bool)

(assert (=> b!3590598 (= e!2221678 (equivClasses!2261 (toChars!7716 (transformation!5573 (h!43160 rules!3307))) (toValue!7857 (transformation!5573 (h!43160 rules!3307)))))))

(assert (= (and d!1058532 res!1449547) b!3590598))

(declare-fun m!4084601 () Bool)

(assert (=> d!1058532 m!4084601))

(declare-fun m!4084603 () Bool)

(assert (=> b!3590598 m!4084603))

(assert (=> b!3590386 d!1058532))

(declare-fun b!3590599 () Bool)

(declare-fun res!1449551 () Bool)

(declare-fun e!2221682 () Bool)

(assert (=> b!3590599 (=> (not res!1449551) (not e!2221682))))

(assert (=> b!3590599 (= res!1449551 (isEmpty!22240 (tail!5562 (list!13881 (charsOf!3587 (_1!21947 lt!1231626))))))))

(declare-fun b!3590601 () Bool)

(declare-fun res!1449553 () Bool)

(declare-fun e!2221685 () Bool)

(assert (=> b!3590601 (=> res!1449553 e!2221685)))

(assert (=> b!3590601 (= res!1449553 (not (isEmpty!22240 (tail!5562 (list!13881 (charsOf!3587 (_1!21947 lt!1231626)))))))))

(declare-fun b!3590602 () Bool)

(assert (=> b!3590602 (= e!2221682 (= (head!7497 (list!13881 (charsOf!3587 (_1!21947 lt!1231626)))) (c!621815 (regex!5573 lt!1231614))))))

(declare-fun b!3590603 () Bool)

(declare-fun e!2221684 () Bool)

(assert (=> b!3590603 (= e!2221684 e!2221685)))

(declare-fun res!1449549 () Bool)

(assert (=> b!3590603 (=> res!1449549 e!2221685)))

(declare-fun call!259936 () Bool)

(assert (=> b!3590603 (= res!1449549 call!259936)))

(declare-fun b!3590604 () Bool)

(declare-fun res!1449554 () Bool)

(declare-fun e!2221680 () Bool)

(assert (=> b!3590604 (=> res!1449554 e!2221680)))

(assert (=> b!3590604 (= res!1449554 e!2221682)))

(declare-fun res!1449548 () Bool)

(assert (=> b!3590604 (=> (not res!1449548) (not e!2221682))))

(declare-fun lt!1231708 () Bool)

(assert (=> b!3590604 (= res!1449548 lt!1231708)))

(declare-fun b!3590605 () Bool)

(declare-fun e!2221683 () Bool)

(declare-fun e!2221679 () Bool)

(assert (=> b!3590605 (= e!2221683 e!2221679)))

(declare-fun c!621845 () Bool)

(assert (=> b!3590605 (= c!621845 (is-EmptyLang!10332 (regex!5573 lt!1231614)))))

(declare-fun b!3590606 () Bool)

(assert (=> b!3590606 (= e!2221679 (not lt!1231708))))

(declare-fun b!3590607 () Bool)

(assert (=> b!3590607 (= e!2221683 (= lt!1231708 call!259936))))

(declare-fun d!1058536 () Bool)

(assert (=> d!1058536 e!2221683))

(declare-fun c!621847 () Bool)

(assert (=> d!1058536 (= c!621847 (is-EmptyExpr!10332 (regex!5573 lt!1231614)))))

(declare-fun e!2221681 () Bool)

(assert (=> d!1058536 (= lt!1231708 e!2221681)))

(declare-fun c!621846 () Bool)

(assert (=> d!1058536 (= c!621846 (isEmpty!22240 (list!13881 (charsOf!3587 (_1!21947 lt!1231626)))))))

(assert (=> d!1058536 (validRegex!4720 (regex!5573 lt!1231614))))

(assert (=> d!1058536 (= (matchR!4901 (regex!5573 lt!1231614) (list!13881 (charsOf!3587 (_1!21947 lt!1231626)))) lt!1231708)))

(declare-fun b!3590600 () Bool)

(assert (=> b!3590600 (= e!2221685 (not (= (head!7497 (list!13881 (charsOf!3587 (_1!21947 lt!1231626)))) (c!621815 (regex!5573 lt!1231614)))))))

(declare-fun b!3590608 () Bool)

(declare-fun res!1449552 () Bool)

(assert (=> b!3590608 (=> (not res!1449552) (not e!2221682))))

(assert (=> b!3590608 (= res!1449552 (not call!259936))))

(declare-fun bm!259931 () Bool)

(assert (=> bm!259931 (= call!259936 (isEmpty!22240 (list!13881 (charsOf!3587 (_1!21947 lt!1231626)))))))

(declare-fun b!3590609 () Bool)

(declare-fun res!1449550 () Bool)

(assert (=> b!3590609 (=> res!1449550 e!2221680)))

(assert (=> b!3590609 (= res!1449550 (not (is-ElementMatch!10332 (regex!5573 lt!1231614))))))

(assert (=> b!3590609 (= e!2221679 e!2221680)))

(declare-fun b!3590610 () Bool)

(assert (=> b!3590610 (= e!2221681 (nullable!3564 (regex!5573 lt!1231614)))))

(declare-fun b!3590611 () Bool)

(assert (=> b!3590611 (= e!2221681 (matchR!4901 (derivativeStep!3113 (regex!5573 lt!1231614) (head!7497 (list!13881 (charsOf!3587 (_1!21947 lt!1231626))))) (tail!5562 (list!13881 (charsOf!3587 (_1!21947 lt!1231626))))))))

(declare-fun b!3590612 () Bool)

(assert (=> b!3590612 (= e!2221680 e!2221684)))

(declare-fun res!1449555 () Bool)

(assert (=> b!3590612 (=> (not res!1449555) (not e!2221684))))

(assert (=> b!3590612 (= res!1449555 (not lt!1231708))))

(assert (= (and d!1058536 c!621846) b!3590610))

(assert (= (and d!1058536 (not c!621846)) b!3590611))

(assert (= (and d!1058536 c!621847) b!3590607))

(assert (= (and d!1058536 (not c!621847)) b!3590605))

(assert (= (and b!3590605 c!621845) b!3590606))

(assert (= (and b!3590605 (not c!621845)) b!3590609))

(assert (= (and b!3590609 (not res!1449550)) b!3590604))

(assert (= (and b!3590604 res!1449548) b!3590608))

(assert (= (and b!3590608 res!1449552) b!3590599))

(assert (= (and b!3590599 res!1449551) b!3590602))

(assert (= (and b!3590604 (not res!1449554)) b!3590612))

(assert (= (and b!3590612 res!1449555) b!3590603))

(assert (= (and b!3590603 (not res!1449549)) b!3590601))

(assert (= (and b!3590601 (not res!1449553)) b!3590600))

(assert (= (or b!3590607 b!3590608 b!3590603) bm!259931))

(assert (=> b!3590600 m!4084333))

(declare-fun m!4084605 () Bool)

(assert (=> b!3590600 m!4084605))

(assert (=> b!3590599 m!4084333))

(declare-fun m!4084607 () Bool)

(assert (=> b!3590599 m!4084607))

(assert (=> b!3590599 m!4084607))

(declare-fun m!4084609 () Bool)

(assert (=> b!3590599 m!4084609))

(assert (=> b!3590601 m!4084333))

(assert (=> b!3590601 m!4084607))

(assert (=> b!3590601 m!4084607))

(assert (=> b!3590601 m!4084609))

(assert (=> bm!259931 m!4084333))

(declare-fun m!4084611 () Bool)

(assert (=> bm!259931 m!4084611))

(assert (=> d!1058536 m!4084333))

(assert (=> d!1058536 m!4084611))

(declare-fun m!4084613 () Bool)

(assert (=> d!1058536 m!4084613))

(assert (=> b!3590602 m!4084333))

(assert (=> b!3590602 m!4084605))

(assert (=> b!3590611 m!4084333))

(assert (=> b!3590611 m!4084605))

(assert (=> b!3590611 m!4084605))

(declare-fun m!4084615 () Bool)

(assert (=> b!3590611 m!4084615))

(assert (=> b!3590611 m!4084333))

(assert (=> b!3590611 m!4084607))

(assert (=> b!3590611 m!4084615))

(assert (=> b!3590611 m!4084607))

(declare-fun m!4084617 () Bool)

(assert (=> b!3590611 m!4084617))

(declare-fun m!4084619 () Bool)

(assert (=> b!3590610 m!4084619))

(assert (=> b!3590407 d!1058536))

(declare-fun d!1058538 () Bool)

(declare-fun list!13883 (Conc!11480) List!37862)

(assert (=> d!1058538 (= (list!13881 (charsOf!3587 (_1!21947 lt!1231626))) (list!13883 (c!621816 (charsOf!3587 (_1!21947 lt!1231626)))))))

(declare-fun bs!570236 () Bool)

(assert (= bs!570236 d!1058538))

(declare-fun m!4084621 () Bool)

(assert (=> bs!570236 m!4084621))

(assert (=> b!3590407 d!1058538))

(declare-fun d!1058540 () Bool)

(declare-fun lt!1231711 () BalanceConc!22574)

(assert (=> d!1058540 (= (list!13881 lt!1231711) (originalCharacters!6287 (_1!21947 lt!1231626)))))

(assert (=> d!1058540 (= lt!1231711 (dynLambda!16231 (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626)))) (value!179292 (_1!21947 lt!1231626))))))

(assert (=> d!1058540 (= (charsOf!3587 (_1!21947 lt!1231626)) lt!1231711)))

(declare-fun b_lambda!106073 () Bool)

(assert (=> (not b_lambda!106073) (not d!1058540)))

(declare-fun tb!204905 () Bool)

(declare-fun t!291008 () Bool)

(assert (=> (and b!3590390 (= (toChars!7716 (transformation!5573 rule!403)) (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291008) tb!204905))

(declare-fun b!3590613 () Bool)

(declare-fun e!2221686 () Bool)

(declare-fun tp!1099058 () Bool)

(assert (=> b!3590613 (= e!2221686 (and (inv!51084 (c!621816 (dynLambda!16231 (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626)))) (value!179292 (_1!21947 lt!1231626))))) tp!1099058))))

(declare-fun result!249828 () Bool)

(assert (=> tb!204905 (= result!249828 (and (inv!51085 (dynLambda!16231 (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626)))) (value!179292 (_1!21947 lt!1231626)))) e!2221686))))

(assert (= tb!204905 b!3590613))

(declare-fun m!4084625 () Bool)

(assert (=> b!3590613 m!4084625))

(declare-fun m!4084627 () Bool)

(assert (=> tb!204905 m!4084627))

(assert (=> d!1058540 t!291008))

(declare-fun b_and!259627 () Bool)

(assert (= b_and!259619 (and (=> t!291008 result!249828) b_and!259627)))

(declare-fun t!291010 () Bool)

(declare-fun tb!204907 () Bool)

(assert (=> (and b!3590408 (= (toChars!7716 (transformation!5573 (rule!8289 token!511))) (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291010) tb!204907))

(declare-fun result!249830 () Bool)

(assert (= result!249830 result!249828))

(assert (=> d!1058540 t!291010))

(declare-fun b_and!259629 () Bool)

(assert (= b_and!259621 (and (=> t!291010 result!249830) b_and!259629)))

(declare-fun tb!204909 () Bool)

(declare-fun t!291012 () Bool)

(assert (=> (and b!3590405 (= (toChars!7716 (transformation!5573 (h!43160 rules!3307))) (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291012) tb!204909))

(declare-fun result!249832 () Bool)

(assert (= result!249832 result!249828))

(assert (=> d!1058540 t!291012))

(declare-fun b_and!259631 () Bool)

(assert (= b_and!259623 (and (=> t!291012 result!249832) b_and!259631)))

(declare-fun t!291014 () Bool)

(declare-fun tb!204911 () Bool)

(assert (=> (and b!3590406 (= (toChars!7716 (transformation!5573 anOtherTypeRule!33)) (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291014) tb!204911))

(declare-fun result!249834 () Bool)

(assert (= result!249834 result!249828))

(assert (=> d!1058540 t!291014))

(declare-fun b_and!259633 () Bool)

(assert (= b_and!259625 (and (=> t!291014 result!249834) b_and!259633)))

(declare-fun m!4084629 () Bool)

(assert (=> d!1058540 m!4084629))

(declare-fun m!4084631 () Bool)

(assert (=> d!1058540 m!4084631))

(assert (=> b!3590407 d!1058540))

(declare-fun d!1058544 () Bool)

(assert (=> d!1058544 (= (get!12174 lt!1231619) (v!37450 lt!1231619))))

(assert (=> b!3590407 d!1058544))

(declare-fun d!1058546 () Bool)

(assert (=> d!1058546 (= (isEmpty!22241 rules!3307) (is-Nil!37740 rules!3307))))

(assert (=> b!3590393 d!1058546))

(declare-fun d!1058548 () Bool)

(assert (=> d!1058548 (= (inv!51077 (tag!6245 rule!403)) (= (mod (str.len (value!179291 (tag!6245 rule!403))) 2) 0))))

(assert (=> b!3590392 d!1058548))

(declare-fun d!1058550 () Bool)

(declare-fun res!1449556 () Bool)

(declare-fun e!2221689 () Bool)

(assert (=> d!1058550 (=> (not res!1449556) (not e!2221689))))

(assert (=> d!1058550 (= res!1449556 (semiInverseModEq!2362 (toChars!7716 (transformation!5573 rule!403)) (toValue!7857 (transformation!5573 rule!403))))))

(assert (=> d!1058550 (= (inv!51080 (transformation!5573 rule!403)) e!2221689)))

(declare-fun b!3590616 () Bool)

(assert (=> b!3590616 (= e!2221689 (equivClasses!2261 (toChars!7716 (transformation!5573 rule!403)) (toValue!7857 (transformation!5573 rule!403))))))

(assert (= (and d!1058550 res!1449556) b!3590616))

(declare-fun m!4084633 () Bool)

(assert (=> d!1058550 m!4084633))

(declare-fun m!4084635 () Bool)

(assert (=> b!3590616 m!4084635))

(assert (=> b!3590392 d!1058550))

(declare-fun d!1058552 () Bool)

(declare-fun lt!1231714 () Bool)

(declare-fun content!5367 (List!37864) (Set Rule!10946))

(assert (=> d!1058552 (= lt!1231714 (set.member rule!403 (content!5367 rules!3307)))))

(declare-fun e!2221696 () Bool)

(assert (=> d!1058552 (= lt!1231714 e!2221696)))

(declare-fun res!1449561 () Bool)

(assert (=> d!1058552 (=> (not res!1449561) (not e!2221696))))

(assert (=> d!1058552 (= res!1449561 (is-Cons!37740 rules!3307))))

(assert (=> d!1058552 (= (contains!7210 rules!3307 rule!403) lt!1231714)))

(declare-fun b!3590621 () Bool)

(declare-fun e!2221695 () Bool)

(assert (=> b!3590621 (= e!2221696 e!2221695)))

(declare-fun res!1449562 () Bool)

(assert (=> b!3590621 (=> res!1449562 e!2221695)))

(assert (=> b!3590621 (= res!1449562 (= (h!43160 rules!3307) rule!403))))

(declare-fun b!3590622 () Bool)

(assert (=> b!3590622 (= e!2221695 (contains!7210 (t!290995 rules!3307) rule!403))))

(assert (= (and d!1058552 res!1449561) b!3590621))

(assert (= (and b!3590621 (not res!1449562)) b!3590622))

(declare-fun m!4084641 () Bool)

(assert (=> d!1058552 m!4084641))

(declare-fun m!4084643 () Bool)

(assert (=> d!1058552 m!4084643))

(declare-fun m!4084645 () Bool)

(assert (=> b!3590622 m!4084645))

(assert (=> b!3590394 d!1058552))

(declare-fun b!3590632 () Bool)

(declare-fun res!1449572 () Bool)

(declare-fun e!2221704 () Bool)

(assert (=> b!3590632 (=> (not res!1449572) (not e!2221704))))

(assert (=> b!3590632 (= res!1449572 (= (head!7497 lt!1231613) (head!7497 lt!1231628)))))

(declare-fun b!3590634 () Bool)

(declare-fun e!2221705 () Bool)

(assert (=> b!3590634 (= e!2221705 (>= (size!28743 lt!1231628) (size!28743 lt!1231613)))))

(declare-fun b!3590633 () Bool)

(assert (=> b!3590633 (= e!2221704 (isPrefix!2936 (tail!5562 lt!1231613) (tail!5562 lt!1231628)))))

(declare-fun b!3590631 () Bool)

(declare-fun e!2221703 () Bool)

(assert (=> b!3590631 (= e!2221703 e!2221704)))

(declare-fun res!1449574 () Bool)

(assert (=> b!3590631 (=> (not res!1449574) (not e!2221704))))

(assert (=> b!3590631 (= res!1449574 (not (is-Nil!37738 lt!1231628)))))

(declare-fun d!1058556 () Bool)

(assert (=> d!1058556 e!2221705))

(declare-fun res!1449571 () Bool)

(assert (=> d!1058556 (=> res!1449571 e!2221705)))

(declare-fun lt!1231717 () Bool)

(assert (=> d!1058556 (= res!1449571 (not lt!1231717))))

(assert (=> d!1058556 (= lt!1231717 e!2221703)))

(declare-fun res!1449573 () Bool)

(assert (=> d!1058556 (=> res!1449573 e!2221703)))

(assert (=> d!1058556 (= res!1449573 (is-Nil!37738 lt!1231613))))

(assert (=> d!1058556 (= (isPrefix!2936 lt!1231613 lt!1231628) lt!1231717)))

(assert (= (and d!1058556 (not res!1449573)) b!3590631))

(assert (= (and b!3590631 res!1449574) b!3590632))

(assert (= (and b!3590632 res!1449572) b!3590633))

(assert (= (and d!1058556 (not res!1449571)) b!3590634))

(declare-fun m!4084647 () Bool)

(assert (=> b!3590632 m!4084647))

(declare-fun m!4084649 () Bool)

(assert (=> b!3590632 m!4084649))

(assert (=> b!3590634 m!4084391))

(declare-fun m!4084651 () Bool)

(assert (=> b!3590634 m!4084651))

(declare-fun m!4084653 () Bool)

(assert (=> b!3590633 m!4084653))

(declare-fun m!4084655 () Bool)

(assert (=> b!3590633 m!4084655))

(assert (=> b!3590633 m!4084653))

(assert (=> b!3590633 m!4084655))

(declare-fun m!4084657 () Bool)

(assert (=> b!3590633 m!4084657))

(assert (=> b!3590391 d!1058556))

(declare-fun d!1058558 () Bool)

(declare-fun e!2221708 () Bool)

(assert (=> d!1058558 e!2221708))

(declare-fun res!1449579 () Bool)

(assert (=> d!1058558 (=> (not res!1449579) (not e!2221708))))

(assert (=> d!1058558 (= res!1449579 (isDefined!6009 (getRuleFromTag!1179 thiss!23823 rules!3307 (tag!6245 (rule!8289 (_1!21947 lt!1231626))))))))

(declare-fun lt!1231720 () Unit!53738)

(declare-fun choose!20889 (LexerInterface!5162 List!37864 List!37862 Token!10512) Unit!53738)

(assert (=> d!1058558 (= lt!1231720 (choose!20889 thiss!23823 rules!3307 lt!1231628 (_1!21947 lt!1231626)))))

(assert (=> d!1058558 (rulesInvariant!4559 thiss!23823 rules!3307)))

(assert (=> d!1058558 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1179 thiss!23823 rules!3307 lt!1231628 (_1!21947 lt!1231626)) lt!1231720)))

(declare-fun b!3590639 () Bool)

(declare-fun res!1449580 () Bool)

(assert (=> b!3590639 (=> (not res!1449580) (not e!2221708))))

(assert (=> b!3590639 (= res!1449580 (matchR!4901 (regex!5573 (get!12174 (getRuleFromTag!1179 thiss!23823 rules!3307 (tag!6245 (rule!8289 (_1!21947 lt!1231626)))))) (list!13881 (charsOf!3587 (_1!21947 lt!1231626)))))))

(declare-fun b!3590640 () Bool)

(assert (=> b!3590640 (= e!2221708 (= (rule!8289 (_1!21947 lt!1231626)) (get!12174 (getRuleFromTag!1179 thiss!23823 rules!3307 (tag!6245 (rule!8289 (_1!21947 lt!1231626)))))))))

(assert (= (and d!1058558 res!1449579) b!3590639))

(assert (= (and b!3590639 res!1449580) b!3590640))

(assert (=> d!1058558 m!4084401))

(assert (=> d!1058558 m!4084401))

(declare-fun m!4084659 () Bool)

(assert (=> d!1058558 m!4084659))

(declare-fun m!4084661 () Bool)

(assert (=> d!1058558 m!4084661))

(assert (=> d!1058558 m!4084347))

(assert (=> b!3590639 m!4084331))

(assert (=> b!3590639 m!4084331))

(assert (=> b!3590639 m!4084333))

(assert (=> b!3590639 m!4084401))

(assert (=> b!3590639 m!4084401))

(declare-fun m!4084663 () Bool)

(assert (=> b!3590639 m!4084663))

(assert (=> b!3590639 m!4084333))

(declare-fun m!4084665 () Bool)

(assert (=> b!3590639 m!4084665))

(assert (=> b!3590640 m!4084401))

(assert (=> b!3590640 m!4084401))

(assert (=> b!3590640 m!4084663))

(assert (=> b!3590391 d!1058558))

(declare-fun e!2221714 () Bool)

(declare-fun b!3590652 () Bool)

(declare-fun lt!1231723 () List!37862)

(assert (=> b!3590652 (= e!2221714 (or (not (= suffix!1395 Nil!37738)) (= lt!1231723 lt!1231613)))))

(declare-fun d!1058560 () Bool)

(assert (=> d!1058560 e!2221714))

(declare-fun res!1449586 () Bool)

(assert (=> d!1058560 (=> (not res!1449586) (not e!2221714))))

(assert (=> d!1058560 (= res!1449586 (= (content!5366 lt!1231723) (set.union (content!5366 lt!1231613) (content!5366 suffix!1395))))))

(declare-fun e!2221713 () List!37862)

(assert (=> d!1058560 (= lt!1231723 e!2221713)))

(declare-fun c!621850 () Bool)

(assert (=> d!1058560 (= c!621850 (is-Nil!37738 lt!1231613))))

(assert (=> d!1058560 (= (++!9389 lt!1231613 suffix!1395) lt!1231723)))

(declare-fun b!3590650 () Bool)

(assert (=> b!3590650 (= e!2221713 (Cons!37738 (h!43158 lt!1231613) (++!9389 (t!290993 lt!1231613) suffix!1395)))))

(declare-fun b!3590649 () Bool)

(assert (=> b!3590649 (= e!2221713 suffix!1395)))

(declare-fun b!3590651 () Bool)

(declare-fun res!1449585 () Bool)

(assert (=> b!3590651 (=> (not res!1449585) (not e!2221714))))

(assert (=> b!3590651 (= res!1449585 (= (size!28743 lt!1231723) (+ (size!28743 lt!1231613) (size!28743 suffix!1395))))))

(assert (= (and d!1058560 c!621850) b!3590649))

(assert (= (and d!1058560 (not c!621850)) b!3590650))

(assert (= (and d!1058560 res!1449586) b!3590651))

(assert (= (and b!3590651 res!1449585) b!3590652))

(declare-fun m!4084667 () Bool)

(assert (=> d!1058560 m!4084667))

(declare-fun m!4084669 () Bool)

(assert (=> d!1058560 m!4084669))

(declare-fun m!4084671 () Bool)

(assert (=> d!1058560 m!4084671))

(declare-fun m!4084673 () Bool)

(assert (=> b!3590650 m!4084673))

(declare-fun m!4084675 () Bool)

(assert (=> b!3590651 m!4084675))

(assert (=> b!3590651 m!4084651))

(declare-fun m!4084677 () Bool)

(assert (=> b!3590651 m!4084677))

(assert (=> b!3590391 d!1058560))

(declare-fun d!1058562 () Bool)

(assert (=> d!1058562 (isPrefix!2936 lt!1231613 (++!9389 lt!1231613 suffix!1395))))

(declare-fun lt!1231726 () Unit!53738)

(declare-fun choose!20890 (List!37862 List!37862) Unit!53738)

(assert (=> d!1058562 (= lt!1231726 (choose!20890 lt!1231613 suffix!1395))))

(assert (=> d!1058562 (= (lemmaConcatTwoListThenFirstIsPrefix!1857 lt!1231613 suffix!1395) lt!1231726)))

(declare-fun bs!570238 () Bool)

(assert (= bs!570238 d!1058562))

(assert (=> bs!570238 m!4084411))

(assert (=> bs!570238 m!4084411))

(declare-fun m!4084679 () Bool)

(assert (=> bs!570238 m!4084679))

(declare-fun m!4084681 () Bool)

(assert (=> bs!570238 m!4084681))

(assert (=> b!3590391 d!1058562))

(declare-fun b!3590654 () Bool)

(declare-fun res!1449588 () Bool)

(declare-fun e!2221716 () Bool)

(assert (=> b!3590654 (=> (not res!1449588) (not e!2221716))))

(assert (=> b!3590654 (= res!1449588 (= (head!7497 lt!1231621) (head!7497 lt!1231628)))))

(declare-fun b!3590656 () Bool)

(declare-fun e!2221717 () Bool)

(assert (=> b!3590656 (= e!2221717 (>= (size!28743 lt!1231628) (size!28743 lt!1231621)))))

(declare-fun b!3590655 () Bool)

(assert (=> b!3590655 (= e!2221716 (isPrefix!2936 (tail!5562 lt!1231621) (tail!5562 lt!1231628)))))

(declare-fun b!3590653 () Bool)

(declare-fun e!2221715 () Bool)

(assert (=> b!3590653 (= e!2221715 e!2221716)))

(declare-fun res!1449590 () Bool)

(assert (=> b!3590653 (=> (not res!1449590) (not e!2221716))))

(assert (=> b!3590653 (= res!1449590 (not (is-Nil!37738 lt!1231628)))))

(declare-fun d!1058564 () Bool)

(assert (=> d!1058564 e!2221717))

(declare-fun res!1449587 () Bool)

(assert (=> d!1058564 (=> res!1449587 e!2221717)))

(declare-fun lt!1231727 () Bool)

(assert (=> d!1058564 (= res!1449587 (not lt!1231727))))

(assert (=> d!1058564 (= lt!1231727 e!2221715)))

(declare-fun res!1449589 () Bool)

(assert (=> d!1058564 (=> res!1449589 e!2221715)))

(assert (=> d!1058564 (= res!1449589 (is-Nil!37738 lt!1231621))))

(assert (=> d!1058564 (= (isPrefix!2936 lt!1231621 lt!1231628) lt!1231727)))

(assert (= (and d!1058564 (not res!1449589)) b!3590653))

(assert (= (and b!3590653 res!1449590) b!3590654))

(assert (= (and b!3590654 res!1449588) b!3590655))

(assert (= (and d!1058564 (not res!1449587)) b!3590656))

(assert (=> b!3590654 m!4084573))

(assert (=> b!3590654 m!4084649))

(assert (=> b!3590656 m!4084391))

(assert (=> b!3590656 m!4084393))

(assert (=> b!3590655 m!4084575))

(assert (=> b!3590655 m!4084655))

(assert (=> b!3590655 m!4084575))

(assert (=> b!3590655 m!4084655))

(declare-fun m!4084683 () Bool)

(assert (=> b!3590655 m!4084683))

(assert (=> b!3590391 d!1058564))

(assert (=> b!3590391 d!1058540))

(declare-fun b!3590675 () Bool)

(declare-fun res!1449609 () Bool)

(declare-fun e!2221724 () Bool)

(assert (=> b!3590675 (=> (not res!1449609) (not e!2221724))))

(declare-fun lt!1231738 () Option!7776)

(assert (=> b!3590675 (= res!1449609 (< (size!28743 (_2!21947 (get!12173 lt!1231738))) (size!28743 lt!1231628)))))

(declare-fun b!3590676 () Bool)

(declare-fun res!1449611 () Bool)

(assert (=> b!3590676 (=> (not res!1449611) (not e!2221724))))

(assert (=> b!3590676 (= res!1449611 (= (list!13881 (charsOf!3587 (_1!21947 (get!12173 lt!1231738)))) (originalCharacters!6287 (_1!21947 (get!12173 lt!1231738)))))))

(declare-fun b!3590677 () Bool)

(declare-fun e!2221726 () Option!7776)

(declare-fun call!259939 () Option!7776)

(assert (=> b!3590677 (= e!2221726 call!259939)))

(declare-fun b!3590678 () Bool)

(declare-fun e!2221725 () Bool)

(assert (=> b!3590678 (= e!2221725 e!2221724)))

(declare-fun res!1449607 () Bool)

(assert (=> b!3590678 (=> (not res!1449607) (not e!2221724))))

(assert (=> b!3590678 (= res!1449607 (isDefined!6008 lt!1231738))))

(declare-fun b!3590679 () Bool)

(declare-fun res!1449605 () Bool)

(assert (=> b!3590679 (=> (not res!1449605) (not e!2221724))))

(assert (=> b!3590679 (= res!1449605 (= (++!9389 (list!13881 (charsOf!3587 (_1!21947 (get!12173 lt!1231738)))) (_2!21947 (get!12173 lt!1231738))) lt!1231628))))

(declare-fun b!3590680 () Bool)

(assert (=> b!3590680 (= e!2221724 (contains!7210 rules!3307 (rule!8289 (_1!21947 (get!12173 lt!1231738)))))))

(declare-fun d!1058566 () Bool)

(assert (=> d!1058566 e!2221725))

(declare-fun res!1449610 () Bool)

(assert (=> d!1058566 (=> res!1449610 e!2221725)))

(declare-fun isEmpty!22245 (Option!7776) Bool)

(assert (=> d!1058566 (= res!1449610 (isEmpty!22245 lt!1231738))))

(assert (=> d!1058566 (= lt!1231738 e!2221726)))

(declare-fun c!621853 () Bool)

(assert (=> d!1058566 (= c!621853 (and (is-Cons!37740 rules!3307) (is-Nil!37740 (t!290995 rules!3307))))))

(declare-fun lt!1231742 () Unit!53738)

(declare-fun lt!1231739 () Unit!53738)

(assert (=> d!1058566 (= lt!1231742 lt!1231739)))

(assert (=> d!1058566 (isPrefix!2936 lt!1231628 lt!1231628)))

(declare-fun lemmaIsPrefixRefl!1881 (List!37862 List!37862) Unit!53738)

(assert (=> d!1058566 (= lt!1231739 (lemmaIsPrefixRefl!1881 lt!1231628 lt!1231628))))

(declare-fun rulesValidInductive!1946 (LexerInterface!5162 List!37864) Bool)

(assert (=> d!1058566 (rulesValidInductive!1946 thiss!23823 rules!3307)))

(assert (=> d!1058566 (= (maxPrefix!2696 thiss!23823 rules!3307 lt!1231628) lt!1231738)))

(declare-fun bm!259934 () Bool)

(assert (=> bm!259934 (= call!259939 (maxPrefixOneRule!1840 thiss!23823 (h!43160 rules!3307) lt!1231628))))

(declare-fun b!3590681 () Bool)

(declare-fun res!1449606 () Bool)

(assert (=> b!3590681 (=> (not res!1449606) (not e!2221724))))

(assert (=> b!3590681 (= res!1449606 (matchR!4901 (regex!5573 (rule!8289 (_1!21947 (get!12173 lt!1231738)))) (list!13881 (charsOf!3587 (_1!21947 (get!12173 lt!1231738))))))))

(declare-fun b!3590682 () Bool)

(declare-fun res!1449608 () Bool)

(assert (=> b!3590682 (=> (not res!1449608) (not e!2221724))))

(assert (=> b!3590682 (= res!1449608 (= (value!179292 (_1!21947 (get!12173 lt!1231738))) (apply!9079 (transformation!5573 (rule!8289 (_1!21947 (get!12173 lt!1231738)))) (seqFromList!4126 (originalCharacters!6287 (_1!21947 (get!12173 lt!1231738)))))))))

(declare-fun b!3590683 () Bool)

(declare-fun lt!1231740 () Option!7776)

(declare-fun lt!1231741 () Option!7776)

(assert (=> b!3590683 (= e!2221726 (ite (and (is-None!7775 lt!1231740) (is-None!7775 lt!1231741)) None!7775 (ite (is-None!7775 lt!1231741) lt!1231740 (ite (is-None!7775 lt!1231740) lt!1231741 (ite (>= (size!28744 (_1!21947 (v!37449 lt!1231740))) (size!28744 (_1!21947 (v!37449 lt!1231741)))) lt!1231740 lt!1231741)))))))

(assert (=> b!3590683 (= lt!1231740 call!259939)))

(assert (=> b!3590683 (= lt!1231741 (maxPrefix!2696 thiss!23823 (t!290995 rules!3307) lt!1231628))))

(assert (= (and d!1058566 c!621853) b!3590677))

(assert (= (and d!1058566 (not c!621853)) b!3590683))

(assert (= (or b!3590677 b!3590683) bm!259934))

(assert (= (and d!1058566 (not res!1449610)) b!3590678))

(assert (= (and b!3590678 res!1449607) b!3590676))

(assert (= (and b!3590676 res!1449611) b!3590675))

(assert (= (and b!3590675 res!1449609) b!3590679))

(assert (= (and b!3590679 res!1449605) b!3590682))

(assert (= (and b!3590682 res!1449608) b!3590681))

(assert (= (and b!3590681 res!1449606) b!3590680))

(declare-fun m!4084685 () Bool)

(assert (=> b!3590682 m!4084685))

(declare-fun m!4084687 () Bool)

(assert (=> b!3590682 m!4084687))

(assert (=> b!3590682 m!4084687))

(declare-fun m!4084689 () Bool)

(assert (=> b!3590682 m!4084689))

(assert (=> b!3590679 m!4084685))

(declare-fun m!4084691 () Bool)

(assert (=> b!3590679 m!4084691))

(assert (=> b!3590679 m!4084691))

(declare-fun m!4084693 () Bool)

(assert (=> b!3590679 m!4084693))

(assert (=> b!3590679 m!4084693))

(declare-fun m!4084695 () Bool)

(assert (=> b!3590679 m!4084695))

(assert (=> b!3590680 m!4084685))

(declare-fun m!4084697 () Bool)

(assert (=> b!3590680 m!4084697))

(declare-fun m!4084699 () Bool)

(assert (=> d!1058566 m!4084699))

(declare-fun m!4084701 () Bool)

(assert (=> d!1058566 m!4084701))

(declare-fun m!4084703 () Bool)

(assert (=> d!1058566 m!4084703))

(declare-fun m!4084705 () Bool)

(assert (=> d!1058566 m!4084705))

(declare-fun m!4084707 () Bool)

(assert (=> b!3590678 m!4084707))

(declare-fun m!4084709 () Bool)

(assert (=> b!3590683 m!4084709))

(assert (=> b!3590676 m!4084685))

(assert (=> b!3590676 m!4084691))

(assert (=> b!3590676 m!4084691))

(assert (=> b!3590676 m!4084693))

(declare-fun m!4084711 () Bool)

(assert (=> bm!259934 m!4084711))

(assert (=> b!3590675 m!4084685))

(declare-fun m!4084713 () Bool)

(assert (=> b!3590675 m!4084713))

(assert (=> b!3590675 m!4084391))

(assert (=> b!3590681 m!4084685))

(assert (=> b!3590681 m!4084691))

(assert (=> b!3590681 m!4084691))

(assert (=> b!3590681 m!4084693))

(assert (=> b!3590681 m!4084693))

(declare-fun m!4084715 () Bool)

(assert (=> b!3590681 m!4084715))

(assert (=> b!3590391 d!1058566))

(declare-fun b!3590685 () Bool)

(declare-fun res!1449613 () Bool)

(declare-fun e!2221728 () Bool)

(assert (=> b!3590685 (=> (not res!1449613) (not e!2221728))))

(assert (=> b!3590685 (= res!1449613 (= (head!7497 lt!1231621) (head!7497 (++!9389 lt!1231621 (_2!21947 lt!1231626)))))))

(declare-fun b!3590687 () Bool)

(declare-fun e!2221729 () Bool)

(assert (=> b!3590687 (= e!2221729 (>= (size!28743 (++!9389 lt!1231621 (_2!21947 lt!1231626))) (size!28743 lt!1231621)))))

(declare-fun b!3590686 () Bool)

(assert (=> b!3590686 (= e!2221728 (isPrefix!2936 (tail!5562 lt!1231621) (tail!5562 (++!9389 lt!1231621 (_2!21947 lt!1231626)))))))

(declare-fun b!3590684 () Bool)

(declare-fun e!2221727 () Bool)

(assert (=> b!3590684 (= e!2221727 e!2221728)))

(declare-fun res!1449615 () Bool)

(assert (=> b!3590684 (=> (not res!1449615) (not e!2221728))))

(assert (=> b!3590684 (= res!1449615 (not (is-Nil!37738 (++!9389 lt!1231621 (_2!21947 lt!1231626)))))))

(declare-fun d!1058568 () Bool)

(assert (=> d!1058568 e!2221729))

(declare-fun res!1449612 () Bool)

(assert (=> d!1058568 (=> res!1449612 e!2221729)))

(declare-fun lt!1231743 () Bool)

(assert (=> d!1058568 (= res!1449612 (not lt!1231743))))

(assert (=> d!1058568 (= lt!1231743 e!2221727)))

(declare-fun res!1449614 () Bool)

(assert (=> d!1058568 (=> res!1449614 e!2221727)))

(assert (=> d!1058568 (= res!1449614 (is-Nil!37738 lt!1231621))))

(assert (=> d!1058568 (= (isPrefix!2936 lt!1231621 (++!9389 lt!1231621 (_2!21947 lt!1231626))) lt!1231743)))

(assert (= (and d!1058568 (not res!1449614)) b!3590684))

(assert (= (and b!3590684 res!1449615) b!3590685))

(assert (= (and b!3590685 res!1449613) b!3590686))

(assert (= (and d!1058568 (not res!1449612)) b!3590687))

(assert (=> b!3590685 m!4084573))

(assert (=> b!3590685 m!4084403))

(declare-fun m!4084717 () Bool)

(assert (=> b!3590685 m!4084717))

(assert (=> b!3590687 m!4084403))

(declare-fun m!4084719 () Bool)

(assert (=> b!3590687 m!4084719))

(assert (=> b!3590687 m!4084393))

(assert (=> b!3590686 m!4084575))

(assert (=> b!3590686 m!4084403))

(declare-fun m!4084721 () Bool)

(assert (=> b!3590686 m!4084721))

(assert (=> b!3590686 m!4084575))

(assert (=> b!3590686 m!4084721))

(declare-fun m!4084723 () Bool)

(assert (=> b!3590686 m!4084723))

(assert (=> b!3590391 d!1058568))

(declare-fun d!1058570 () Bool)

(assert (=> d!1058570 (isPrefix!2936 lt!1231621 (++!9389 lt!1231621 (_2!21947 lt!1231626)))))

(declare-fun lt!1231744 () Unit!53738)

(assert (=> d!1058570 (= lt!1231744 (choose!20890 lt!1231621 (_2!21947 lt!1231626)))))

(assert (=> d!1058570 (= (lemmaConcatTwoListThenFirstIsPrefix!1857 lt!1231621 (_2!21947 lt!1231626)) lt!1231744)))

(declare-fun bs!570239 () Bool)

(assert (= bs!570239 d!1058570))

(assert (=> bs!570239 m!4084403))

(assert (=> bs!570239 m!4084403))

(assert (=> bs!570239 m!4084415))

(declare-fun m!4084725 () Bool)

(assert (=> bs!570239 m!4084725))

(assert (=> b!3590391 d!1058570))

(declare-fun d!1058572 () Bool)

(assert (=> d!1058572 (= (get!12173 lt!1231625) (v!37449 lt!1231625))))

(assert (=> b!3590391 d!1058572))

(declare-fun b!3590691 () Bool)

(declare-fun lt!1231745 () List!37862)

(declare-fun e!2221731 () Bool)

(assert (=> b!3590691 (= e!2221731 (or (not (= (_2!21947 lt!1231626) Nil!37738)) (= lt!1231745 lt!1231621)))))

(declare-fun d!1058574 () Bool)

(assert (=> d!1058574 e!2221731))

(declare-fun res!1449617 () Bool)

(assert (=> d!1058574 (=> (not res!1449617) (not e!2221731))))

(assert (=> d!1058574 (= res!1449617 (= (content!5366 lt!1231745) (set.union (content!5366 lt!1231621) (content!5366 (_2!21947 lt!1231626)))))))

(declare-fun e!2221730 () List!37862)

(assert (=> d!1058574 (= lt!1231745 e!2221730)))

(declare-fun c!621854 () Bool)

(assert (=> d!1058574 (= c!621854 (is-Nil!37738 lt!1231621))))

(assert (=> d!1058574 (= (++!9389 lt!1231621 (_2!21947 lt!1231626)) lt!1231745)))

(declare-fun b!3590689 () Bool)

(assert (=> b!3590689 (= e!2221730 (Cons!37738 (h!43158 lt!1231621) (++!9389 (t!290993 lt!1231621) (_2!21947 lt!1231626))))))

(declare-fun b!3590688 () Bool)

(assert (=> b!3590688 (= e!2221730 (_2!21947 lt!1231626))))

(declare-fun b!3590690 () Bool)

(declare-fun res!1449616 () Bool)

(assert (=> b!3590690 (=> (not res!1449616) (not e!2221731))))

(assert (=> b!3590690 (= res!1449616 (= (size!28743 lt!1231745) (+ (size!28743 lt!1231621) (size!28743 (_2!21947 lt!1231626)))))))

(assert (= (and d!1058574 c!621854) b!3590688))

(assert (= (and d!1058574 (not c!621854)) b!3590689))

(assert (= (and d!1058574 res!1449617) b!3590690))

(assert (= (and b!3590690 res!1449616) b!3590691))

(declare-fun m!4084727 () Bool)

(assert (=> d!1058574 m!4084727))

(declare-fun m!4084729 () Bool)

(assert (=> d!1058574 m!4084729))

(declare-fun m!4084731 () Bool)

(assert (=> d!1058574 m!4084731))

(declare-fun m!4084733 () Bool)

(assert (=> b!3590689 m!4084733))

(declare-fun m!4084735 () Bool)

(assert (=> b!3590690 m!4084735))

(assert (=> b!3590690 m!4084393))

(declare-fun m!4084737 () Bool)

(assert (=> b!3590690 m!4084737))

(assert (=> b!3590391 d!1058574))

(declare-fun d!1058576 () Bool)

(declare-fun isEmpty!22246 (Option!7777) Bool)

(assert (=> d!1058576 (= (isDefined!6009 lt!1231619) (not (isEmpty!22246 lt!1231619)))))

(declare-fun bs!570240 () Bool)

(assert (= bs!570240 d!1058576))

(declare-fun m!4084739 () Bool)

(assert (=> bs!570240 m!4084739))

(assert (=> b!3590391 d!1058576))

(declare-fun lt!1231813 () Token!10512)

(declare-fun b!3590736 () Bool)

(declare-fun e!2221753 () Bool)

(assert (=> b!3590736 (= e!2221753 (= (rule!8289 lt!1231813) (get!12174 (getRuleFromTag!1179 thiss!23823 rules!3307 (tag!6245 (rule!8289 lt!1231813))))))))

(declare-fun d!1058578 () Bool)

(assert (=> d!1058578 (isDefined!6008 (maxPrefix!2696 thiss!23823 rules!3307 (++!9389 lt!1231613 suffix!1395)))))

(declare-fun lt!1231817 () Unit!53738)

(declare-fun e!2221752 () Unit!53738)

(assert (=> d!1058578 (= lt!1231817 e!2221752)))

(declare-fun c!621864 () Bool)

(assert (=> d!1058578 (= c!621864 (isEmpty!22245 (maxPrefix!2696 thiss!23823 rules!3307 (++!9389 lt!1231613 suffix!1395))))))

(declare-fun lt!1231818 () Unit!53738)

(declare-fun lt!1231805 () Unit!53738)

(assert (=> d!1058578 (= lt!1231818 lt!1231805)))

(assert (=> d!1058578 e!2221753))

(declare-fun res!1449643 () Bool)

(assert (=> d!1058578 (=> (not res!1449643) (not e!2221753))))

(assert (=> d!1058578 (= res!1449643 (isDefined!6009 (getRuleFromTag!1179 thiss!23823 rules!3307 (tag!6245 (rule!8289 lt!1231813)))))))

(assert (=> d!1058578 (= lt!1231805 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1179 thiss!23823 rules!3307 lt!1231613 lt!1231813))))

(declare-fun lt!1231811 () Unit!53738)

(declare-fun lt!1231808 () Unit!53738)

(assert (=> d!1058578 (= lt!1231811 lt!1231808)))

(declare-fun lt!1231812 () List!37862)

(assert (=> d!1058578 (isPrefix!2936 lt!1231812 (++!9389 lt!1231613 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!415 (List!37862 List!37862 List!37862) Unit!53738)

(assert (=> d!1058578 (= lt!1231808 (lemmaPrefixStaysPrefixWhenAddingToSuffix!415 lt!1231812 lt!1231613 suffix!1395))))

(assert (=> d!1058578 (= lt!1231812 (list!13881 (charsOf!3587 lt!1231813)))))

(declare-fun lt!1231814 () Unit!53738)

(declare-fun lt!1231816 () Unit!53738)

(assert (=> d!1058578 (= lt!1231814 lt!1231816)))

(declare-fun lt!1231803 () List!37862)

(declare-fun lt!1231810 () List!37862)

(assert (=> d!1058578 (isPrefix!2936 lt!1231803 (++!9389 lt!1231803 lt!1231810))))

(assert (=> d!1058578 (= lt!1231816 (lemmaConcatTwoListThenFirstIsPrefix!1857 lt!1231803 lt!1231810))))

(assert (=> d!1058578 (= lt!1231810 (_2!21947 (get!12173 (maxPrefix!2696 thiss!23823 rules!3307 lt!1231613))))))

(assert (=> d!1058578 (= lt!1231803 (list!13881 (charsOf!3587 lt!1231813)))))

(declare-datatypes ((List!37868 0))(
  ( (Nil!37744) (Cons!37744 (h!43164 Token!10512) (t!291119 List!37868)) )
))
(declare-fun head!7499 (List!37868) Token!10512)

(declare-datatypes ((IArray!22969 0))(
  ( (IArray!22970 (innerList!11542 List!37868)) )
))
(declare-datatypes ((Conc!11482 0))(
  ( (Node!11482 (left!29495 Conc!11482) (right!29825 Conc!11482) (csize!23194 Int) (cheight!11693 Int)) (Leaf!17880 (xs!14684 IArray!22969) (csize!23195 Int)) (Empty!11482) )
))
(declare-datatypes ((BalanceConc!22578 0))(
  ( (BalanceConc!22579 (c!621944 Conc!11482)) )
))
(declare-fun list!13884 (BalanceConc!22578) List!37868)

(declare-datatypes ((tuple2!37632 0))(
  ( (tuple2!37633 (_1!21950 BalanceConc!22578) (_2!21950 BalanceConc!22574)) )
))
(declare-fun lex!2447 (LexerInterface!5162 List!37864 BalanceConc!22574) tuple2!37632)

(assert (=> d!1058578 (= lt!1231813 (head!7499 (list!13884 (_1!21950 (lex!2447 thiss!23823 rules!3307 (seqFromList!4126 lt!1231613))))))))

(assert (=> d!1058578 (not (isEmpty!22241 rules!3307))))

(assert (=> d!1058578 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!842 thiss!23823 rules!3307 lt!1231613 suffix!1395) lt!1231817)))

(declare-fun b!3590738 () Bool)

(declare-fun Unit!53745 () Unit!53738)

(assert (=> b!3590738 (= e!2221752 Unit!53745)))

(declare-fun b!3590737 () Bool)

(declare-fun Unit!53746 () Unit!53738)

(assert (=> b!3590737 (= e!2221752 Unit!53746)))

(declare-fun lt!1231806 () List!37862)

(assert (=> b!3590737 (= lt!1231806 (++!9389 lt!1231613 suffix!1395))))

(declare-fun lt!1231815 () Unit!53738)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!452 (LexerInterface!5162 Rule!10946 List!37864 List!37862) Unit!53738)

(assert (=> b!3590737 (= lt!1231815 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!452 thiss!23823 (rule!8289 lt!1231813) rules!3307 lt!1231806))))

(assert (=> b!3590737 (isEmpty!22245 (maxPrefixOneRule!1840 thiss!23823 (rule!8289 lt!1231813) lt!1231806))))

(declare-fun lt!1231804 () Unit!53738)

(assert (=> b!3590737 (= lt!1231804 lt!1231815)))

(declare-fun lt!1231809 () List!37862)

(assert (=> b!3590737 (= lt!1231809 (list!13881 (charsOf!3587 lt!1231813)))))

(declare-fun lt!1231807 () Unit!53738)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!440 (LexerInterface!5162 Rule!10946 List!37862 List!37862) Unit!53738)

(assert (=> b!3590737 (= lt!1231807 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!440 thiss!23823 (rule!8289 lt!1231813) lt!1231809 (++!9389 lt!1231613 suffix!1395)))))

(assert (=> b!3590737 (not (matchR!4901 (regex!5573 (rule!8289 lt!1231813)) lt!1231809))))

(declare-fun lt!1231802 () Unit!53738)

(assert (=> b!3590737 (= lt!1231802 lt!1231807)))

(assert (=> b!3590737 false))

(declare-fun b!3590735 () Bool)

(declare-fun res!1449644 () Bool)

(assert (=> b!3590735 (=> (not res!1449644) (not e!2221753))))

(assert (=> b!3590735 (= res!1449644 (matchR!4901 (regex!5573 (get!12174 (getRuleFromTag!1179 thiss!23823 rules!3307 (tag!6245 (rule!8289 lt!1231813))))) (list!13881 (charsOf!3587 lt!1231813))))))

(assert (= (and d!1058578 res!1449643) b!3590735))

(assert (= (and b!3590735 res!1449644) b!3590736))

(assert (= (and d!1058578 c!621864) b!3590737))

(assert (= (and d!1058578 (not c!621864)) b!3590738))

(declare-fun m!4084791 () Bool)

(assert (=> b!3590736 m!4084791))

(assert (=> b!3590736 m!4084791))

(declare-fun m!4084793 () Bool)

(assert (=> b!3590736 m!4084793))

(declare-fun m!4084795 () Bool)

(assert (=> d!1058578 m!4084795))

(declare-fun m!4084797 () Bool)

(assert (=> d!1058578 m!4084797))

(declare-fun m!4084799 () Bool)

(assert (=> d!1058578 m!4084799))

(assert (=> d!1058578 m!4084365))

(declare-fun m!4084801 () Bool)

(assert (=> d!1058578 m!4084801))

(declare-fun m!4084803 () Bool)

(assert (=> d!1058578 m!4084803))

(declare-fun m!4084805 () Bool)

(assert (=> d!1058578 m!4084805))

(assert (=> d!1058578 m!4084799))

(declare-fun m!4084807 () Bool)

(assert (=> d!1058578 m!4084807))

(declare-fun m!4084809 () Bool)

(assert (=> d!1058578 m!4084809))

(assert (=> d!1058578 m!4084803))

(declare-fun m!4084811 () Bool)

(assert (=> d!1058578 m!4084811))

(declare-fun m!4084813 () Bool)

(assert (=> d!1058578 m!4084813))

(assert (=> d!1058578 m!4084809))

(declare-fun m!4084815 () Bool)

(assert (=> d!1058578 m!4084815))

(assert (=> d!1058578 m!4084341))

(assert (=> d!1058578 m!4084791))

(declare-fun m!4084817 () Bool)

(assert (=> d!1058578 m!4084817))

(declare-fun m!4084819 () Bool)

(assert (=> d!1058578 m!4084819))

(assert (=> d!1058578 m!4084411))

(assert (=> d!1058578 m!4084811))

(declare-fun m!4084821 () Bool)

(assert (=> d!1058578 m!4084821))

(assert (=> d!1058578 m!4084411))

(assert (=> d!1058578 m!4084811))

(assert (=> d!1058578 m!4084341))

(declare-fun m!4084823 () Bool)

(assert (=> d!1058578 m!4084823))

(assert (=> d!1058578 m!4084797))

(declare-fun m!4084825 () Bool)

(assert (=> d!1058578 m!4084825))

(assert (=> d!1058578 m!4084791))

(assert (=> d!1058578 m!4084411))

(declare-fun m!4084827 () Bool)

(assert (=> d!1058578 m!4084827))

(declare-fun m!4084829 () Bool)

(assert (=> b!3590737 m!4084829))

(assert (=> b!3590737 m!4084803))

(declare-fun m!4084831 () Bool)

(assert (=> b!3590737 m!4084831))

(assert (=> b!3590737 m!4084411))

(declare-fun m!4084833 () Bool)

(assert (=> b!3590737 m!4084833))

(declare-fun m!4084835 () Bool)

(assert (=> b!3590737 m!4084835))

(assert (=> b!3590737 m!4084803))

(assert (=> b!3590737 m!4084805))

(assert (=> b!3590737 m!4084831))

(declare-fun m!4084837 () Bool)

(assert (=> b!3590737 m!4084837))

(assert (=> b!3590737 m!4084411))

(assert (=> b!3590735 m!4084803))

(assert (=> b!3590735 m!4084791))

(assert (=> b!3590735 m!4084793))

(assert (=> b!3590735 m!4084803))

(assert (=> b!3590735 m!4084805))

(assert (=> b!3590735 m!4084805))

(declare-fun m!4084839 () Bool)

(assert (=> b!3590735 m!4084839))

(assert (=> b!3590735 m!4084791))

(assert (=> b!3590391 d!1058578))

(declare-fun b!3590751 () Bool)

(declare-fun lt!1231826 () Unit!53738)

(declare-fun lt!1231825 () Unit!53738)

(assert (=> b!3590751 (= lt!1231826 lt!1231825)))

(assert (=> b!3590751 (rulesInvariant!4559 thiss!23823 (t!290995 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!495 (LexerInterface!5162 Rule!10946 List!37864) Unit!53738)

(assert (=> b!3590751 (= lt!1231825 (lemmaInvariantOnRulesThenOnTail!495 thiss!23823 (h!43160 rules!3307) (t!290995 rules!3307)))))

(declare-fun e!2221762 () Option!7777)

(assert (=> b!3590751 (= e!2221762 (getRuleFromTag!1179 thiss!23823 (t!290995 rules!3307) (tag!6245 (rule!8289 (_1!21947 lt!1231626)))))))

(declare-fun b!3590752 () Bool)

(assert (=> b!3590752 (= e!2221762 None!7776)))

(declare-fun b!3590753 () Bool)

(declare-fun e!2221763 () Bool)

(declare-fun lt!1231827 () Option!7777)

(assert (=> b!3590753 (= e!2221763 (= (tag!6245 (get!12174 lt!1231827)) (tag!6245 (rule!8289 (_1!21947 lt!1231626)))))))

(declare-fun b!3590754 () Bool)

(declare-fun e!2221764 () Option!7777)

(assert (=> b!3590754 (= e!2221764 (Some!7776 (h!43160 rules!3307)))))

(declare-fun b!3590755 () Bool)

(assert (=> b!3590755 (= e!2221764 e!2221762)))

(declare-fun c!621870 () Bool)

(assert (=> b!3590755 (= c!621870 (and (is-Cons!37740 rules!3307) (not (= (tag!6245 (h!43160 rules!3307)) (tag!6245 (rule!8289 (_1!21947 lt!1231626)))))))))

(declare-fun d!1058588 () Bool)

(declare-fun e!2221765 () Bool)

(assert (=> d!1058588 e!2221765))

(declare-fun res!1449649 () Bool)

(assert (=> d!1058588 (=> res!1449649 e!2221765)))

(assert (=> d!1058588 (= res!1449649 (isEmpty!22246 lt!1231827))))

(assert (=> d!1058588 (= lt!1231827 e!2221764)))

(declare-fun c!621869 () Bool)

(assert (=> d!1058588 (= c!621869 (and (is-Cons!37740 rules!3307) (= (tag!6245 (h!43160 rules!3307)) (tag!6245 (rule!8289 (_1!21947 lt!1231626))))))))

(assert (=> d!1058588 (rulesInvariant!4559 thiss!23823 rules!3307)))

(assert (=> d!1058588 (= (getRuleFromTag!1179 thiss!23823 rules!3307 (tag!6245 (rule!8289 (_1!21947 lt!1231626)))) lt!1231827)))

(declare-fun b!3590756 () Bool)

(assert (=> b!3590756 (= e!2221765 e!2221763)))

(declare-fun res!1449650 () Bool)

(assert (=> b!3590756 (=> (not res!1449650) (not e!2221763))))

(assert (=> b!3590756 (= res!1449650 (contains!7210 rules!3307 (get!12174 lt!1231827)))))

(assert (= (and d!1058588 c!621869) b!3590754))

(assert (= (and d!1058588 (not c!621869)) b!3590755))

(assert (= (and b!3590755 c!621870) b!3590751))

(assert (= (and b!3590755 (not c!621870)) b!3590752))

(assert (= (and d!1058588 (not res!1449649)) b!3590756))

(assert (= (and b!3590756 res!1449650) b!3590753))

(declare-fun m!4084841 () Bool)

(assert (=> b!3590751 m!4084841))

(declare-fun m!4084843 () Bool)

(assert (=> b!3590751 m!4084843))

(declare-fun m!4084845 () Bool)

(assert (=> b!3590751 m!4084845))

(declare-fun m!4084847 () Bool)

(assert (=> b!3590753 m!4084847))

(declare-fun m!4084849 () Bool)

(assert (=> d!1058588 m!4084849))

(assert (=> d!1058588 m!4084347))

(assert (=> b!3590756 m!4084847))

(assert (=> b!3590756 m!4084847))

(declare-fun m!4084851 () Bool)

(assert (=> b!3590756 m!4084851))

(assert (=> b!3590391 d!1058588))

(declare-fun d!1058590 () Bool)

(assert (=> d!1058590 (= (list!13881 lt!1231634) (list!13883 (c!621816 lt!1231634)))))

(declare-fun bs!570242 () Bool)

(assert (= bs!570242 d!1058590))

(declare-fun m!4084853 () Bool)

(assert (=> bs!570242 m!4084853))

(assert (=> b!3590391 d!1058590))

(declare-fun d!1058592 () Bool)

(assert (=> d!1058592 (= (get!12173 lt!1231633) (v!37449 lt!1231633))))

(assert (=> b!3590398 d!1058592))

(declare-fun b!3590767 () Bool)

(declare-fun e!2221774 () Bool)

(declare-fun inv!16 (TokenValue!5803) Bool)

(assert (=> b!3590767 (= e!2221774 (inv!16 (value!179292 token!511)))))

(declare-fun b!3590768 () Bool)

(declare-fun e!2221773 () Bool)

(declare-fun inv!17 (TokenValue!5803) Bool)

(assert (=> b!3590768 (= e!2221773 (inv!17 (value!179292 token!511)))))

(declare-fun b!3590769 () Bool)

(declare-fun res!1449653 () Bool)

(declare-fun e!2221772 () Bool)

(assert (=> b!3590769 (=> res!1449653 e!2221772)))

(assert (=> b!3590769 (= res!1449653 (not (is-IntegerValue!17411 (value!179292 token!511))))))

(assert (=> b!3590769 (= e!2221773 e!2221772)))

(declare-fun b!3590770 () Bool)

(assert (=> b!3590770 (= e!2221774 e!2221773)))

(declare-fun c!621875 () Bool)

(assert (=> b!3590770 (= c!621875 (is-IntegerValue!17410 (value!179292 token!511)))))

(declare-fun d!1058594 () Bool)

(declare-fun c!621876 () Bool)

(assert (=> d!1058594 (= c!621876 (is-IntegerValue!17409 (value!179292 token!511)))))

(assert (=> d!1058594 (= (inv!21 (value!179292 token!511)) e!2221774)))

(declare-fun b!3590771 () Bool)

(declare-fun inv!15 (TokenValue!5803) Bool)

(assert (=> b!3590771 (= e!2221772 (inv!15 (value!179292 token!511)))))

(assert (= (and d!1058594 c!621876) b!3590767))

(assert (= (and d!1058594 (not c!621876)) b!3590770))

(assert (= (and b!3590770 c!621875) b!3590768))

(assert (= (and b!3590770 (not c!621875)) b!3590769))

(assert (= (and b!3590769 (not res!1449653)) b!3590771))

(declare-fun m!4084855 () Bool)

(assert (=> b!3590767 m!4084855))

(declare-fun m!4084857 () Bool)

(assert (=> b!3590768 m!4084857))

(declare-fun m!4084859 () Bool)

(assert (=> b!3590771 m!4084859))

(assert (=> b!3590397 d!1058594))

(declare-fun d!1058596 () Bool)

(assert (=> d!1058596 (= (inv!51077 (tag!6245 (rule!8289 token!511))) (= (mod (str.len (value!179291 (tag!6245 (rule!8289 token!511)))) 2) 0))))

(assert (=> b!3590396 d!1058596))

(declare-fun d!1058598 () Bool)

(declare-fun res!1449654 () Bool)

(declare-fun e!2221775 () Bool)

(assert (=> d!1058598 (=> (not res!1449654) (not e!2221775))))

(assert (=> d!1058598 (= res!1449654 (semiInverseModEq!2362 (toChars!7716 (transformation!5573 (rule!8289 token!511))) (toValue!7857 (transformation!5573 (rule!8289 token!511)))))))

(assert (=> d!1058598 (= (inv!51080 (transformation!5573 (rule!8289 token!511))) e!2221775)))

(declare-fun b!3590772 () Bool)

(assert (=> b!3590772 (= e!2221775 (equivClasses!2261 (toChars!7716 (transformation!5573 (rule!8289 token!511))) (toValue!7857 (transformation!5573 (rule!8289 token!511)))))))

(assert (= (and d!1058598 res!1449654) b!3590772))

(declare-fun m!4084861 () Bool)

(assert (=> d!1058598 m!4084861))

(declare-fun m!4084863 () Bool)

(assert (=> b!3590772 m!4084863))

(assert (=> b!3590396 d!1058598))

(declare-fun d!1058600 () Bool)

(assert (=> d!1058600 (= (isEmpty!22240 (_2!21947 lt!1231631)) (is-Nil!37738 (_2!21947 lt!1231631)))))

(assert (=> b!3590382 d!1058600))

(declare-fun d!1058602 () Bool)

(declare-fun res!1449657 () Bool)

(declare-fun e!2221778 () Bool)

(assert (=> d!1058602 (=> (not res!1449657) (not e!2221778))))

(declare-fun rulesValid!2121 (LexerInterface!5162 List!37864) Bool)

(assert (=> d!1058602 (= res!1449657 (rulesValid!2121 thiss!23823 rules!3307))))

(assert (=> d!1058602 (= (rulesInvariant!4559 thiss!23823 rules!3307) e!2221778)))

(declare-fun b!3590775 () Bool)

(declare-datatypes ((List!37870 0))(
  ( (Nil!37746) (Cons!37746 (h!43166 String!42351) (t!291121 List!37870)) )
))
(declare-fun noDuplicateTag!2117 (LexerInterface!5162 List!37864 List!37870) Bool)

(assert (=> b!3590775 (= e!2221778 (noDuplicateTag!2117 thiss!23823 rules!3307 Nil!37746))))

(assert (= (and d!1058602 res!1449657) b!3590775))

(declare-fun m!4084865 () Bool)

(assert (=> d!1058602 m!4084865))

(declare-fun m!4084867 () Bool)

(assert (=> b!3590775 m!4084867))

(assert (=> b!3590403 d!1058602))

(declare-fun d!1058604 () Bool)

(assert (=> d!1058604 (= (inv!51077 (tag!6245 anOtherTypeRule!33)) (= (mod (str.len (value!179291 (tag!6245 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3590404 d!1058604))

(declare-fun d!1058606 () Bool)

(declare-fun res!1449658 () Bool)

(declare-fun e!2221779 () Bool)

(assert (=> d!1058606 (=> (not res!1449658) (not e!2221779))))

(assert (=> d!1058606 (= res!1449658 (semiInverseModEq!2362 (toChars!7716 (transformation!5573 anOtherTypeRule!33)) (toValue!7857 (transformation!5573 anOtherTypeRule!33))))))

(assert (=> d!1058606 (= (inv!51080 (transformation!5573 anOtherTypeRule!33)) e!2221779)))

(declare-fun b!3590776 () Bool)

(assert (=> b!3590776 (= e!2221779 (equivClasses!2261 (toChars!7716 (transformation!5573 anOtherTypeRule!33)) (toValue!7857 (transformation!5573 anOtherTypeRule!33))))))

(assert (= (and d!1058606 res!1449658) b!3590776))

(declare-fun m!4084869 () Bool)

(assert (=> d!1058606 m!4084869))

(declare-fun m!4084871 () Bool)

(assert (=> b!3590776 m!4084871))

(assert (=> b!3590404 d!1058606))

(declare-fun d!1058608 () Bool)

(assert (=> d!1058608 (= (isDefined!6008 lt!1231633) (not (isEmpty!22245 lt!1231633)))))

(declare-fun bs!570243 () Bool)

(assert (= bs!570243 d!1058608))

(declare-fun m!4084873 () Bool)

(assert (=> bs!570243 m!4084873))

(assert (=> b!3590383 d!1058608))

(declare-fun b!3590777 () Bool)

(declare-fun res!1449663 () Bool)

(declare-fun e!2221780 () Bool)

(assert (=> b!3590777 (=> (not res!1449663) (not e!2221780))))

(declare-fun lt!1231828 () Option!7776)

(assert (=> b!3590777 (= res!1449663 (< (size!28743 (_2!21947 (get!12173 lt!1231828))) (size!28743 lt!1231613)))))

(declare-fun b!3590778 () Bool)

(declare-fun res!1449665 () Bool)

(assert (=> b!3590778 (=> (not res!1449665) (not e!2221780))))

(assert (=> b!3590778 (= res!1449665 (= (list!13881 (charsOf!3587 (_1!21947 (get!12173 lt!1231828)))) (originalCharacters!6287 (_1!21947 (get!12173 lt!1231828)))))))

(declare-fun b!3590779 () Bool)

(declare-fun e!2221782 () Option!7776)

(declare-fun call!259940 () Option!7776)

(assert (=> b!3590779 (= e!2221782 call!259940)))

(declare-fun b!3590780 () Bool)

(declare-fun e!2221781 () Bool)

(assert (=> b!3590780 (= e!2221781 e!2221780)))

(declare-fun res!1449661 () Bool)

(assert (=> b!3590780 (=> (not res!1449661) (not e!2221780))))

(assert (=> b!3590780 (= res!1449661 (isDefined!6008 lt!1231828))))

(declare-fun b!3590781 () Bool)

(declare-fun res!1449659 () Bool)

(assert (=> b!3590781 (=> (not res!1449659) (not e!2221780))))

(assert (=> b!3590781 (= res!1449659 (= (++!9389 (list!13881 (charsOf!3587 (_1!21947 (get!12173 lt!1231828)))) (_2!21947 (get!12173 lt!1231828))) lt!1231613))))

(declare-fun b!3590782 () Bool)

(assert (=> b!3590782 (= e!2221780 (contains!7210 rules!3307 (rule!8289 (_1!21947 (get!12173 lt!1231828)))))))

(declare-fun d!1058610 () Bool)

(assert (=> d!1058610 e!2221781))

(declare-fun res!1449664 () Bool)

(assert (=> d!1058610 (=> res!1449664 e!2221781)))

(assert (=> d!1058610 (= res!1449664 (isEmpty!22245 lt!1231828))))

(assert (=> d!1058610 (= lt!1231828 e!2221782)))

(declare-fun c!621877 () Bool)

(assert (=> d!1058610 (= c!621877 (and (is-Cons!37740 rules!3307) (is-Nil!37740 (t!290995 rules!3307))))))

(declare-fun lt!1231832 () Unit!53738)

(declare-fun lt!1231829 () Unit!53738)

(assert (=> d!1058610 (= lt!1231832 lt!1231829)))

(assert (=> d!1058610 (isPrefix!2936 lt!1231613 lt!1231613)))

(assert (=> d!1058610 (= lt!1231829 (lemmaIsPrefixRefl!1881 lt!1231613 lt!1231613))))

(assert (=> d!1058610 (rulesValidInductive!1946 thiss!23823 rules!3307)))

(assert (=> d!1058610 (= (maxPrefix!2696 thiss!23823 rules!3307 lt!1231613) lt!1231828)))

(declare-fun bm!259935 () Bool)

(assert (=> bm!259935 (= call!259940 (maxPrefixOneRule!1840 thiss!23823 (h!43160 rules!3307) lt!1231613))))

(declare-fun b!3590783 () Bool)

(declare-fun res!1449660 () Bool)

(assert (=> b!3590783 (=> (not res!1449660) (not e!2221780))))

(assert (=> b!3590783 (= res!1449660 (matchR!4901 (regex!5573 (rule!8289 (_1!21947 (get!12173 lt!1231828)))) (list!13881 (charsOf!3587 (_1!21947 (get!12173 lt!1231828))))))))

(declare-fun b!3590784 () Bool)

(declare-fun res!1449662 () Bool)

(assert (=> b!3590784 (=> (not res!1449662) (not e!2221780))))

(assert (=> b!3590784 (= res!1449662 (= (value!179292 (_1!21947 (get!12173 lt!1231828))) (apply!9079 (transformation!5573 (rule!8289 (_1!21947 (get!12173 lt!1231828)))) (seqFromList!4126 (originalCharacters!6287 (_1!21947 (get!12173 lt!1231828)))))))))

(declare-fun b!3590785 () Bool)

(declare-fun lt!1231830 () Option!7776)

(declare-fun lt!1231831 () Option!7776)

(assert (=> b!3590785 (= e!2221782 (ite (and (is-None!7775 lt!1231830) (is-None!7775 lt!1231831)) None!7775 (ite (is-None!7775 lt!1231831) lt!1231830 (ite (is-None!7775 lt!1231830) lt!1231831 (ite (>= (size!28744 (_1!21947 (v!37449 lt!1231830))) (size!28744 (_1!21947 (v!37449 lt!1231831)))) lt!1231830 lt!1231831)))))))

(assert (=> b!3590785 (= lt!1231830 call!259940)))

(assert (=> b!3590785 (= lt!1231831 (maxPrefix!2696 thiss!23823 (t!290995 rules!3307) lt!1231613))))

(assert (= (and d!1058610 c!621877) b!3590779))

(assert (= (and d!1058610 (not c!621877)) b!3590785))

(assert (= (or b!3590779 b!3590785) bm!259935))

(assert (= (and d!1058610 (not res!1449664)) b!3590780))

(assert (= (and b!3590780 res!1449661) b!3590778))

(assert (= (and b!3590778 res!1449665) b!3590777))

(assert (= (and b!3590777 res!1449663) b!3590781))

(assert (= (and b!3590781 res!1449659) b!3590784))

(assert (= (and b!3590784 res!1449662) b!3590783))

(assert (= (and b!3590783 res!1449660) b!3590782))

(declare-fun m!4084875 () Bool)

(assert (=> b!3590784 m!4084875))

(declare-fun m!4084877 () Bool)

(assert (=> b!3590784 m!4084877))

(assert (=> b!3590784 m!4084877))

(declare-fun m!4084879 () Bool)

(assert (=> b!3590784 m!4084879))

(assert (=> b!3590781 m!4084875))

(declare-fun m!4084881 () Bool)

(assert (=> b!3590781 m!4084881))

(assert (=> b!3590781 m!4084881))

(declare-fun m!4084883 () Bool)

(assert (=> b!3590781 m!4084883))

(assert (=> b!3590781 m!4084883))

(declare-fun m!4084885 () Bool)

(assert (=> b!3590781 m!4084885))

(assert (=> b!3590782 m!4084875))

(declare-fun m!4084887 () Bool)

(assert (=> b!3590782 m!4084887))

(declare-fun m!4084889 () Bool)

(assert (=> d!1058610 m!4084889))

(declare-fun m!4084891 () Bool)

(assert (=> d!1058610 m!4084891))

(declare-fun m!4084893 () Bool)

(assert (=> d!1058610 m!4084893))

(assert (=> d!1058610 m!4084705))

(declare-fun m!4084895 () Bool)

(assert (=> b!3590780 m!4084895))

(declare-fun m!4084897 () Bool)

(assert (=> b!3590785 m!4084897))

(assert (=> b!3590778 m!4084875))

(assert (=> b!3590778 m!4084881))

(assert (=> b!3590778 m!4084881))

(assert (=> b!3590778 m!4084883))

(declare-fun m!4084899 () Bool)

(assert (=> bm!259935 m!4084899))

(assert (=> b!3590777 m!4084875))

(declare-fun m!4084901 () Bool)

(assert (=> b!3590777 m!4084901))

(assert (=> b!3590777 m!4084651))

(assert (=> b!3590783 m!4084875))

(assert (=> b!3590783 m!4084881))

(assert (=> b!3590783 m!4084881))

(assert (=> b!3590783 m!4084883))

(assert (=> b!3590783 m!4084883))

(declare-fun m!4084903 () Bool)

(assert (=> b!3590783 m!4084903))

(assert (=> b!3590383 d!1058610))

(declare-fun d!1058612 () Bool)

(assert (=> d!1058612 (= (list!13881 (charsOf!3587 token!511)) (list!13883 (c!621816 (charsOf!3587 token!511))))))

(declare-fun bs!570244 () Bool)

(assert (= bs!570244 d!1058612))

(declare-fun m!4084905 () Bool)

(assert (=> bs!570244 m!4084905))

(assert (=> b!3590383 d!1058612))

(declare-fun d!1058614 () Bool)

(declare-fun lt!1231833 () BalanceConc!22574)

(assert (=> d!1058614 (= (list!13881 lt!1231833) (originalCharacters!6287 token!511))))

(assert (=> d!1058614 (= lt!1231833 (dynLambda!16231 (toChars!7716 (transformation!5573 (rule!8289 token!511))) (value!179292 token!511)))))

(assert (=> d!1058614 (= (charsOf!3587 token!511) lt!1231833)))

(declare-fun b_lambda!106077 () Bool)

(assert (=> (not b_lambda!106077) (not d!1058614)))

(assert (=> d!1058614 t!291000))

(declare-fun b_and!259643 () Bool)

(assert (= b_and!259627 (and (=> t!291000 result!249818) b_and!259643)))

(assert (=> d!1058614 t!291002))

(declare-fun b_and!259645 () Bool)

(assert (= b_and!259629 (and (=> t!291002 result!249822) b_and!259645)))

(assert (=> d!1058614 t!291004))

(declare-fun b_and!259647 () Bool)

(assert (= b_and!259631 (and (=> t!291004 result!249824) b_and!259647)))

(assert (=> d!1058614 t!291006))

(declare-fun b_and!259649 () Bool)

(assert (= b_and!259633 (and (=> t!291006 result!249826) b_and!259649)))

(declare-fun m!4084907 () Bool)

(assert (=> d!1058614 m!4084907))

(assert (=> d!1058614 m!4084555))

(assert (=> b!3590383 d!1058614))

(declare-fun b!3590786 () Bool)

(declare-fun res!1449669 () Bool)

(declare-fun e!2221786 () Bool)

(assert (=> b!3590786 (=> (not res!1449669) (not e!2221786))))

(assert (=> b!3590786 (= res!1449669 (isEmpty!22240 (tail!5562 lt!1231613)))))

(declare-fun b!3590788 () Bool)

(declare-fun res!1449671 () Bool)

(declare-fun e!2221789 () Bool)

(assert (=> b!3590788 (=> res!1449671 e!2221789)))

(assert (=> b!3590788 (= res!1449671 (not (isEmpty!22240 (tail!5562 lt!1231613))))))

(declare-fun b!3590789 () Bool)

(assert (=> b!3590789 (= e!2221786 (= (head!7497 lt!1231613) (c!621815 (regex!5573 rule!403))))))

(declare-fun b!3590790 () Bool)

(declare-fun e!2221788 () Bool)

(assert (=> b!3590790 (= e!2221788 e!2221789)))

(declare-fun res!1449667 () Bool)

(assert (=> b!3590790 (=> res!1449667 e!2221789)))

(declare-fun call!259941 () Bool)

(assert (=> b!3590790 (= res!1449667 call!259941)))

(declare-fun b!3590791 () Bool)

(declare-fun res!1449672 () Bool)

(declare-fun e!2221784 () Bool)

(assert (=> b!3590791 (=> res!1449672 e!2221784)))

(assert (=> b!3590791 (= res!1449672 e!2221786)))

(declare-fun res!1449666 () Bool)

(assert (=> b!3590791 (=> (not res!1449666) (not e!2221786))))

(declare-fun lt!1231834 () Bool)

(assert (=> b!3590791 (= res!1449666 lt!1231834)))

(declare-fun b!3590792 () Bool)

(declare-fun e!2221787 () Bool)

(declare-fun e!2221783 () Bool)

(assert (=> b!3590792 (= e!2221787 e!2221783)))

(declare-fun c!621878 () Bool)

(assert (=> b!3590792 (= c!621878 (is-EmptyLang!10332 (regex!5573 rule!403)))))

(declare-fun b!3590793 () Bool)

(assert (=> b!3590793 (= e!2221783 (not lt!1231834))))

(declare-fun b!3590794 () Bool)

(assert (=> b!3590794 (= e!2221787 (= lt!1231834 call!259941))))

(declare-fun d!1058616 () Bool)

(assert (=> d!1058616 e!2221787))

(declare-fun c!621880 () Bool)

(assert (=> d!1058616 (= c!621880 (is-EmptyExpr!10332 (regex!5573 rule!403)))))

(declare-fun e!2221785 () Bool)

(assert (=> d!1058616 (= lt!1231834 e!2221785)))

(declare-fun c!621879 () Bool)

(assert (=> d!1058616 (= c!621879 (isEmpty!22240 lt!1231613))))

(assert (=> d!1058616 (validRegex!4720 (regex!5573 rule!403))))

(assert (=> d!1058616 (= (matchR!4901 (regex!5573 rule!403) lt!1231613) lt!1231834)))

(declare-fun b!3590787 () Bool)

(assert (=> b!3590787 (= e!2221789 (not (= (head!7497 lt!1231613) (c!621815 (regex!5573 rule!403)))))))

(declare-fun b!3590795 () Bool)

(declare-fun res!1449670 () Bool)

(assert (=> b!3590795 (=> (not res!1449670) (not e!2221786))))

(assert (=> b!3590795 (= res!1449670 (not call!259941))))

(declare-fun bm!259936 () Bool)

(assert (=> bm!259936 (= call!259941 (isEmpty!22240 lt!1231613))))

(declare-fun b!3590796 () Bool)

(declare-fun res!1449668 () Bool)

(assert (=> b!3590796 (=> res!1449668 e!2221784)))

(assert (=> b!3590796 (= res!1449668 (not (is-ElementMatch!10332 (regex!5573 rule!403))))))

(assert (=> b!3590796 (= e!2221783 e!2221784)))

(declare-fun b!3590797 () Bool)

(assert (=> b!3590797 (= e!2221785 (nullable!3564 (regex!5573 rule!403)))))

(declare-fun b!3590798 () Bool)

(assert (=> b!3590798 (= e!2221785 (matchR!4901 (derivativeStep!3113 (regex!5573 rule!403) (head!7497 lt!1231613)) (tail!5562 lt!1231613)))))

(declare-fun b!3590799 () Bool)

(assert (=> b!3590799 (= e!2221784 e!2221788)))

(declare-fun res!1449673 () Bool)

(assert (=> b!3590799 (=> (not res!1449673) (not e!2221788))))

(assert (=> b!3590799 (= res!1449673 (not lt!1231834))))

(assert (= (and d!1058616 c!621879) b!3590797))

(assert (= (and d!1058616 (not c!621879)) b!3590798))

(assert (= (and d!1058616 c!621880) b!3590794))

(assert (= (and d!1058616 (not c!621880)) b!3590792))

(assert (= (and b!3590792 c!621878) b!3590793))

(assert (= (and b!3590792 (not c!621878)) b!3590796))

(assert (= (and b!3590796 (not res!1449668)) b!3590791))

(assert (= (and b!3590791 res!1449666) b!3590795))

(assert (= (and b!3590795 res!1449670) b!3590786))

(assert (= (and b!3590786 res!1449669) b!3590789))

(assert (= (and b!3590791 (not res!1449672)) b!3590799))

(assert (= (and b!3590799 res!1449673) b!3590790))

(assert (= (and b!3590790 (not res!1449667)) b!3590788))

(assert (= (and b!3590788 (not res!1449671)) b!3590787))

(assert (= (or b!3590794 b!3590795 b!3590790) bm!259936))

(assert (=> b!3590787 m!4084647))

(assert (=> b!3590786 m!4084653))

(assert (=> b!3590786 m!4084653))

(declare-fun m!4084909 () Bool)

(assert (=> b!3590786 m!4084909))

(assert (=> b!3590788 m!4084653))

(assert (=> b!3590788 m!4084653))

(assert (=> b!3590788 m!4084909))

(declare-fun m!4084911 () Bool)

(assert (=> bm!259936 m!4084911))

(assert (=> d!1058616 m!4084911))

(declare-fun m!4084913 () Bool)

(assert (=> d!1058616 m!4084913))

(assert (=> b!3590789 m!4084647))

(assert (=> b!3590798 m!4084647))

(assert (=> b!3590798 m!4084647))

(declare-fun m!4084915 () Bool)

(assert (=> b!3590798 m!4084915))

(assert (=> b!3590798 m!4084653))

(assert (=> b!3590798 m!4084915))

(assert (=> b!3590798 m!4084653))

(declare-fun m!4084917 () Bool)

(assert (=> b!3590798 m!4084917))

(declare-fun m!4084919 () Bool)

(assert (=> b!3590797 m!4084919))

(assert (=> b!3590401 d!1058616))

(declare-fun d!1058618 () Bool)

(declare-fun res!1449678 () Bool)

(declare-fun e!2221792 () Bool)

(assert (=> d!1058618 (=> (not res!1449678) (not e!2221792))))

(assert (=> d!1058618 (= res!1449678 (validRegex!4720 (regex!5573 rule!403)))))

(assert (=> d!1058618 (= (ruleValid!1838 thiss!23823 rule!403) e!2221792)))

(declare-fun b!3590804 () Bool)

(declare-fun res!1449679 () Bool)

(assert (=> b!3590804 (=> (not res!1449679) (not e!2221792))))

(assert (=> b!3590804 (= res!1449679 (not (nullable!3564 (regex!5573 rule!403))))))

(declare-fun b!3590805 () Bool)

(assert (=> b!3590805 (= e!2221792 (not (= (tag!6245 rule!403) (String!42352 ""))))))

(assert (= (and d!1058618 res!1449678) b!3590804))

(assert (= (and b!3590804 res!1449679) b!3590805))

(assert (=> d!1058618 m!4084913))

(assert (=> b!3590804 m!4084919))

(assert (=> b!3590401 d!1058618))

(declare-fun d!1058620 () Bool)

(assert (=> d!1058620 (ruleValid!1838 thiss!23823 rule!403)))

(declare-fun lt!1231837 () Unit!53738)

(declare-fun choose!20894 (LexerInterface!5162 Rule!10946 List!37864) Unit!53738)

(assert (=> d!1058620 (= lt!1231837 (choose!20894 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1058620 (contains!7210 rules!3307 rule!403)))

(assert (=> d!1058620 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!993 thiss!23823 rule!403 rules!3307) lt!1231837)))

(declare-fun bs!570245 () Bool)

(assert (= bs!570245 d!1058620))

(assert (=> bs!570245 m!4084323))

(declare-fun m!4084921 () Bool)

(assert (=> bs!570245 m!4084921))

(assert (=> bs!570245 m!4084357))

(assert (=> b!3590401 d!1058620))

(declare-fun d!1058622 () Bool)

(declare-fun res!1449684 () Bool)

(declare-fun e!2221797 () Bool)

(assert (=> d!1058622 (=> res!1449684 e!2221797)))

(assert (=> d!1058622 (= res!1449684 (not (is-Cons!37740 rules!3307)))))

(assert (=> d!1058622 (= (sepAndNonSepRulesDisjointChars!1743 rules!3307 rules!3307) e!2221797)))

(declare-fun b!3590810 () Bool)

(declare-fun e!2221798 () Bool)

(assert (=> b!3590810 (= e!2221797 e!2221798)))

(declare-fun res!1449685 () Bool)

(assert (=> b!3590810 (=> (not res!1449685) (not e!2221798))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!788 (Rule!10946 List!37864) Bool)

(assert (=> b!3590810 (= res!1449685 (ruleDisjointCharsFromAllFromOtherType!788 (h!43160 rules!3307) rules!3307))))

(declare-fun b!3590811 () Bool)

(assert (=> b!3590811 (= e!2221798 (sepAndNonSepRulesDisjointChars!1743 rules!3307 (t!290995 rules!3307)))))

(assert (= (and d!1058622 (not res!1449684)) b!3590810))

(assert (= (and b!3590810 res!1449685) b!3590811))

(declare-fun m!4084923 () Bool)

(assert (=> b!3590810 m!4084923))

(declare-fun m!4084925 () Bool)

(assert (=> b!3590811 m!4084925))

(assert (=> b!3590400 d!1058622))

(declare-fun d!1058624 () Bool)

(declare-fun lt!1231840 () Int)

(assert (=> d!1058624 (>= lt!1231840 0)))

(declare-fun e!2221801 () Int)

(assert (=> d!1058624 (= lt!1231840 e!2221801)))

(declare-fun c!621883 () Bool)

(assert (=> d!1058624 (= c!621883 (is-Nil!37738 lt!1231621))))

(assert (=> d!1058624 (= (size!28743 lt!1231621) lt!1231840)))

(declare-fun b!3590816 () Bool)

(assert (=> b!3590816 (= e!2221801 0)))

(declare-fun b!3590817 () Bool)

(assert (=> b!3590817 (= e!2221801 (+ 1 (size!28743 (t!290993 lt!1231621))))))

(assert (= (and d!1058624 c!621883) b!3590816))

(assert (= (and d!1058624 (not c!621883)) b!3590817))

(declare-fun m!4084927 () Bool)

(assert (=> b!3590817 m!4084927))

(assert (=> b!3590379 d!1058624))

(declare-fun d!1058626 () Bool)

(declare-fun dynLambda!16234 (Int BalanceConc!22574) TokenValue!5803)

(assert (=> d!1058626 (= (apply!9079 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))) (seqFromList!4126 lt!1231621)) (dynLambda!16234 (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626)))) (seqFromList!4126 lt!1231621)))))

(declare-fun b_lambda!106079 () Bool)

(assert (=> (not b_lambda!106079) (not d!1058626)))

(declare-fun tb!204921 () Bool)

(declare-fun t!291024 () Bool)

(assert (=> (and b!3590390 (= (toValue!7857 (transformation!5573 rule!403)) (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291024) tb!204921))

(declare-fun result!249846 () Bool)

(assert (=> tb!204921 (= result!249846 (inv!21 (dynLambda!16234 (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626)))) (seqFromList!4126 lt!1231621))))))

(declare-fun m!4084929 () Bool)

(assert (=> tb!204921 m!4084929))

(assert (=> d!1058626 t!291024))

(declare-fun b_and!259651 () Bool)

(assert (= b_and!259587 (and (=> t!291024 result!249846) b_and!259651)))

(declare-fun tb!204923 () Bool)

(declare-fun t!291026 () Bool)

(assert (=> (and b!3590408 (= (toValue!7857 (transformation!5573 (rule!8289 token!511))) (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291026) tb!204923))

(declare-fun result!249850 () Bool)

(assert (= result!249850 result!249846))

(assert (=> d!1058626 t!291026))

(declare-fun b_and!259653 () Bool)

(assert (= b_and!259591 (and (=> t!291026 result!249850) b_and!259653)))

(declare-fun t!291028 () Bool)

(declare-fun tb!204925 () Bool)

(assert (=> (and b!3590405 (= (toValue!7857 (transformation!5573 (h!43160 rules!3307))) (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291028) tb!204925))

(declare-fun result!249852 () Bool)

(assert (= result!249852 result!249846))

(assert (=> d!1058626 t!291028))

(declare-fun b_and!259655 () Bool)

(assert (= b_and!259595 (and (=> t!291028 result!249852) b_and!259655)))

(declare-fun t!291030 () Bool)

(declare-fun tb!204927 () Bool)

(assert (=> (and b!3590406 (= (toValue!7857 (transformation!5573 anOtherTypeRule!33)) (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291030) tb!204927))

(declare-fun result!249854 () Bool)

(assert (= result!249854 result!249846))

(assert (=> d!1058626 t!291030))

(declare-fun b_and!259657 () Bool)

(assert (= b_and!259599 (and (=> t!291030 result!249854) b_and!259657)))

(assert (=> d!1058626 m!4084385))

(declare-fun m!4084931 () Bool)

(assert (=> d!1058626 m!4084931))

(assert (=> b!3590379 d!1058626))

(declare-fun d!1058628 () Bool)

(declare-fun lt!1231841 () Int)

(assert (=> d!1058628 (>= lt!1231841 0)))

(declare-fun e!2221805 () Int)

(assert (=> d!1058628 (= lt!1231841 e!2221805)))

(declare-fun c!621884 () Bool)

(assert (=> d!1058628 (= c!621884 (is-Nil!37738 lt!1231628))))

(assert (=> d!1058628 (= (size!28743 lt!1231628) lt!1231841)))

(declare-fun b!3590820 () Bool)

(assert (=> b!3590820 (= e!2221805 0)))

(declare-fun b!3590821 () Bool)

(assert (=> b!3590821 (= e!2221805 (+ 1 (size!28743 (t!290993 lt!1231628))))))

(assert (= (and d!1058628 c!621884) b!3590820))

(assert (= (and d!1058628 (not c!621884)) b!3590821))

(declare-fun m!4084933 () Bool)

(assert (=> b!3590821 m!4084933))

(assert (=> b!3590379 d!1058628))

(declare-fun d!1058630 () Bool)

(assert (=> d!1058630 (= (maxPrefixOneRule!1840 thiss!23823 (rule!8289 (_1!21947 lt!1231626)) lt!1231628) (Some!7775 (tuple2!37627 (Token!10513 (apply!9079 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))) (seqFromList!4126 lt!1231621)) (rule!8289 (_1!21947 lt!1231626)) (size!28743 lt!1231621) lt!1231621) (_2!21947 lt!1231626))))))

(declare-fun lt!1231844 () Unit!53738)

(declare-fun choose!20895 (LexerInterface!5162 List!37864 List!37862 List!37862 List!37862 Rule!10946) Unit!53738)

(assert (=> d!1058630 (= lt!1231844 (choose!20895 thiss!23823 rules!3307 lt!1231621 lt!1231628 (_2!21947 lt!1231626) (rule!8289 (_1!21947 lt!1231626))))))

(assert (=> d!1058630 (not (isEmpty!22241 rules!3307))))

(assert (=> d!1058630 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!912 thiss!23823 rules!3307 lt!1231621 lt!1231628 (_2!21947 lt!1231626) (rule!8289 (_1!21947 lt!1231626))) lt!1231844)))

(declare-fun bs!570246 () Bool)

(assert (= bs!570246 d!1058630))

(declare-fun m!4084935 () Bool)

(assert (=> bs!570246 m!4084935))

(assert (=> bs!570246 m!4084365))

(assert (=> bs!570246 m!4084385))

(assert (=> bs!570246 m!4084393))

(assert (=> bs!570246 m!4084383))

(assert (=> bs!570246 m!4084385))

(assert (=> bs!570246 m!4084387))

(assert (=> b!3590379 d!1058630))

(declare-fun d!1058632 () Bool)

(declare-fun fromListB!1903 (List!37862) BalanceConc!22574)

(assert (=> d!1058632 (= (seqFromList!4126 lt!1231621) (fromListB!1903 lt!1231621))))

(declare-fun bs!570247 () Bool)

(assert (= bs!570247 d!1058632))

(declare-fun m!4084937 () Bool)

(assert (=> bs!570247 m!4084937))

(assert (=> b!3590379 d!1058632))

(declare-fun b!3590904 () Bool)

(declare-fun e!2221856 () Option!7776)

(assert (=> b!3590904 (= e!2221856 None!7775)))

(declare-fun b!3590905 () Bool)

(declare-fun e!2221855 () Bool)

(declare-fun lt!1231931 () Option!7776)

(assert (=> b!3590905 (= e!2221855 (= (size!28744 (_1!21947 (get!12173 lt!1231931))) (size!28743 (originalCharacters!6287 (_1!21947 (get!12173 lt!1231931))))))))

(declare-fun b!3590906 () Bool)

(declare-fun e!2221854 () Bool)

(declare-datatypes ((tuple2!37636 0))(
  ( (tuple2!37637 (_1!21952 List!37862) (_2!21952 List!37862)) )
))
(declare-fun findLongestMatchInner!971 (Regex!10332 List!37862 Int List!37862 List!37862 Int) tuple2!37636)

(assert (=> b!3590906 (= e!2221854 (matchR!4901 (regex!5573 (rule!8289 (_1!21947 lt!1231626))) (_1!21952 (findLongestMatchInner!971 (regex!5573 (rule!8289 (_1!21947 lt!1231626))) Nil!37738 (size!28743 Nil!37738) lt!1231628 lt!1231628 (size!28743 lt!1231628)))))))

(declare-fun d!1058634 () Bool)

(declare-fun e!2221853 () Bool)

(assert (=> d!1058634 e!2221853))

(declare-fun res!1449744 () Bool)

(assert (=> d!1058634 (=> res!1449744 e!2221853)))

(assert (=> d!1058634 (= res!1449744 (isEmpty!22245 lt!1231931))))

(assert (=> d!1058634 (= lt!1231931 e!2221856)))

(declare-fun c!621899 () Bool)

(declare-fun lt!1231932 () tuple2!37636)

(assert (=> d!1058634 (= c!621899 (isEmpty!22240 (_1!21952 lt!1231932)))))

(declare-fun findLongestMatch!886 (Regex!10332 List!37862) tuple2!37636)

(assert (=> d!1058634 (= lt!1231932 (findLongestMatch!886 (regex!5573 (rule!8289 (_1!21947 lt!1231626))) lt!1231628))))

(assert (=> d!1058634 (ruleValid!1838 thiss!23823 (rule!8289 (_1!21947 lt!1231626)))))

(assert (=> d!1058634 (= (maxPrefixOneRule!1840 thiss!23823 (rule!8289 (_1!21947 lt!1231626)) lt!1231628) lt!1231931)))

(declare-fun b!3590907 () Bool)

(declare-fun res!1449746 () Bool)

(assert (=> b!3590907 (=> (not res!1449746) (not e!2221855))))

(assert (=> b!3590907 (= res!1449746 (= (rule!8289 (_1!21947 (get!12173 lt!1231931))) (rule!8289 (_1!21947 lt!1231626))))))

(declare-fun b!3590908 () Bool)

(assert (=> b!3590908 (= e!2221853 e!2221855)))

(declare-fun res!1449740 () Bool)

(assert (=> b!3590908 (=> (not res!1449740) (not e!2221855))))

(assert (=> b!3590908 (= res!1449740 (matchR!4901 (regex!5573 (rule!8289 (_1!21947 lt!1231626))) (list!13881 (charsOf!3587 (_1!21947 (get!12173 lt!1231931))))))))

(declare-fun b!3590909 () Bool)

(declare-fun res!1449741 () Bool)

(assert (=> b!3590909 (=> (not res!1449741) (not e!2221855))))

(assert (=> b!3590909 (= res!1449741 (= (++!9389 (list!13881 (charsOf!3587 (_1!21947 (get!12173 lt!1231931)))) (_2!21947 (get!12173 lt!1231931))) lt!1231628))))

(declare-fun b!3590910 () Bool)

(declare-fun res!1449743 () Bool)

(assert (=> b!3590910 (=> (not res!1449743) (not e!2221855))))

(assert (=> b!3590910 (= res!1449743 (= (value!179292 (_1!21947 (get!12173 lt!1231931))) (apply!9079 (transformation!5573 (rule!8289 (_1!21947 (get!12173 lt!1231931)))) (seqFromList!4126 (originalCharacters!6287 (_1!21947 (get!12173 lt!1231931)))))))))

(declare-fun b!3590911 () Bool)

(assert (=> b!3590911 (= e!2221856 (Some!7775 (tuple2!37627 (Token!10513 (apply!9079 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))) (seqFromList!4126 (_1!21952 lt!1231932))) (rule!8289 (_1!21947 lt!1231626)) (size!28745 (seqFromList!4126 (_1!21952 lt!1231932))) (_1!21952 lt!1231932)) (_2!21952 lt!1231932))))))

(declare-fun lt!1231928 () Unit!53738)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!944 (Regex!10332 List!37862) Unit!53738)

(assert (=> b!3590911 (= lt!1231928 (longestMatchIsAcceptedByMatchOrIsEmpty!944 (regex!5573 (rule!8289 (_1!21947 lt!1231626))) lt!1231628))))

(declare-fun res!1449745 () Bool)

(assert (=> b!3590911 (= res!1449745 (isEmpty!22240 (_1!21952 (findLongestMatchInner!971 (regex!5573 (rule!8289 (_1!21947 lt!1231626))) Nil!37738 (size!28743 Nil!37738) lt!1231628 lt!1231628 (size!28743 lt!1231628)))))))

(assert (=> b!3590911 (=> res!1449745 e!2221854)))

(assert (=> b!3590911 e!2221854))

(declare-fun lt!1231929 () Unit!53738)

(assert (=> b!3590911 (= lt!1231929 lt!1231928)))

(declare-fun lt!1231930 () Unit!53738)

(assert (=> b!3590911 (= lt!1231930 (lemmaSemiInverse!1330 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))) (seqFromList!4126 (_1!21952 lt!1231932))))))

(declare-fun b!3590912 () Bool)

(declare-fun res!1449742 () Bool)

(assert (=> b!3590912 (=> (not res!1449742) (not e!2221855))))

(assert (=> b!3590912 (= res!1449742 (< (size!28743 (_2!21947 (get!12173 lt!1231931))) (size!28743 lt!1231628)))))

(assert (= (and d!1058634 c!621899) b!3590904))

(assert (= (and d!1058634 (not c!621899)) b!3590911))

(assert (= (and b!3590911 (not res!1449745)) b!3590906))

(assert (= (and d!1058634 (not res!1449744)) b!3590908))

(assert (= (and b!3590908 res!1449740) b!3590909))

(assert (= (and b!3590909 res!1449741) b!3590912))

(assert (= (and b!3590912 res!1449742) b!3590907))

(assert (= (and b!3590907 res!1449746) b!3590910))

(assert (= (and b!3590910 res!1449743) b!3590905))

(declare-fun m!4085043 () Bool)

(assert (=> b!3590907 m!4085043))

(assert (=> b!3590908 m!4085043))

(declare-fun m!4085045 () Bool)

(assert (=> b!3590908 m!4085045))

(assert (=> b!3590908 m!4085045))

(declare-fun m!4085047 () Bool)

(assert (=> b!3590908 m!4085047))

(assert (=> b!3590908 m!4085047))

(declare-fun m!4085049 () Bool)

(assert (=> b!3590908 m!4085049))

(assert (=> b!3590911 m!4084391))

(declare-fun m!4085051 () Bool)

(assert (=> b!3590911 m!4085051))

(declare-fun m!4085053 () Bool)

(assert (=> b!3590911 m!4085053))

(declare-fun m!4085055 () Bool)

(assert (=> b!3590911 m!4085055))

(assert (=> b!3590911 m!4084391))

(declare-fun m!4085059 () Bool)

(assert (=> b!3590911 m!4085059))

(declare-fun m!4085063 () Bool)

(assert (=> b!3590911 m!4085063))

(assert (=> b!3590911 m!4085051))

(assert (=> b!3590911 m!4085055))

(declare-fun m!4085065 () Bool)

(assert (=> b!3590911 m!4085065))

(assert (=> b!3590911 m!4085051))

(declare-fun m!4085067 () Bool)

(assert (=> b!3590911 m!4085067))

(assert (=> b!3590911 m!4085051))

(declare-fun m!4085069 () Bool)

(assert (=> b!3590911 m!4085069))

(assert (=> b!3590906 m!4085055))

(assert (=> b!3590906 m!4084391))

(assert (=> b!3590906 m!4085055))

(assert (=> b!3590906 m!4084391))

(assert (=> b!3590906 m!4085059))

(declare-fun m!4085075 () Bool)

(assert (=> b!3590906 m!4085075))

(assert (=> b!3590912 m!4085043))

(declare-fun m!4085077 () Bool)

(assert (=> b!3590912 m!4085077))

(assert (=> b!3590912 m!4084391))

(assert (=> b!3590909 m!4085043))

(assert (=> b!3590909 m!4085045))

(assert (=> b!3590909 m!4085045))

(assert (=> b!3590909 m!4085047))

(assert (=> b!3590909 m!4085047))

(declare-fun m!4085079 () Bool)

(assert (=> b!3590909 m!4085079))

(assert (=> b!3590910 m!4085043))

(declare-fun m!4085081 () Bool)

(assert (=> b!3590910 m!4085081))

(assert (=> b!3590910 m!4085081))

(declare-fun m!4085085 () Bool)

(assert (=> b!3590910 m!4085085))

(assert (=> b!3590905 m!4085043))

(declare-fun m!4085091 () Bool)

(assert (=> b!3590905 m!4085091))

(declare-fun m!4085093 () Bool)

(assert (=> d!1058634 m!4085093))

(declare-fun m!4085097 () Bool)

(assert (=> d!1058634 m!4085097))

(declare-fun m!4085099 () Bool)

(assert (=> d!1058634 m!4085099))

(declare-fun m!4085101 () Bool)

(assert (=> d!1058634 m!4085101))

(assert (=> b!3590379 d!1058634))

(declare-fun d!1058658 () Bool)

(declare-fun lt!1231937 () Bool)

(assert (=> d!1058658 (= lt!1231937 (set.member anOtherTypeRule!33 (content!5367 rules!3307)))))

(declare-fun e!2221864 () Bool)

(assert (=> d!1058658 (= lt!1231937 e!2221864)))

(declare-fun res!1449751 () Bool)

(assert (=> d!1058658 (=> (not res!1449751) (not e!2221864))))

(assert (=> d!1058658 (= res!1449751 (is-Cons!37740 rules!3307))))

(assert (=> d!1058658 (= (contains!7210 rules!3307 anOtherTypeRule!33) lt!1231937)))

(declare-fun b!3590922 () Bool)

(declare-fun e!2221863 () Bool)

(assert (=> b!3590922 (= e!2221864 e!2221863)))

(declare-fun res!1449752 () Bool)

(assert (=> b!3590922 (=> res!1449752 e!2221863)))

(assert (=> b!3590922 (= res!1449752 (= (h!43160 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3590923 () Bool)

(assert (=> b!3590923 (= e!2221863 (contains!7210 (t!290995 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1058658 res!1449751) b!3590922))

(assert (= (and b!3590922 (not res!1449752)) b!3590923))

(assert (=> d!1058658 m!4084641))

(declare-fun m!4085103 () Bool)

(assert (=> d!1058658 m!4085103))

(declare-fun m!4085105 () Bool)

(assert (=> b!3590923 m!4085105))

(assert (=> b!3590402 d!1058658))

(declare-fun b!3591004 () Bool)

(declare-fun e!2221903 () Bool)

(assert (=> b!3591004 (= e!2221903 true)))

(declare-fun d!1058660 () Bool)

(assert (=> d!1058660 e!2221903))

(assert (= d!1058660 b!3591004))

(declare-fun order!20485 () Int)

(declare-fun lambda!123852 () Int)

(declare-fun order!20483 () Int)

(declare-fun dynLambda!16235 (Int Int) Int)

(declare-fun dynLambda!16236 (Int Int) Int)

(assert (=> b!3591004 (< (dynLambda!16235 order!20483 (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) (dynLambda!16236 order!20485 lambda!123852))))

(declare-fun order!20487 () Int)

(declare-fun dynLambda!16237 (Int Int) Int)

(assert (=> b!3591004 (< (dynLambda!16237 order!20487 (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) (dynLambda!16236 order!20485 lambda!123852))))

(assert (=> d!1058660 (= (list!13881 (dynLambda!16231 (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626)))) (dynLambda!16234 (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626)))) lt!1231634))) (list!13881 lt!1231634))))

(declare-fun lt!1231965 () Unit!53738)

(declare-fun ForallOf!623 (Int BalanceConc!22574) Unit!53738)

(assert (=> d!1058660 (= lt!1231965 (ForallOf!623 lambda!123852 lt!1231634))))

(assert (=> d!1058660 (= (lemmaSemiInverse!1330 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))) lt!1231634) lt!1231965)))

(declare-fun b_lambda!106085 () Bool)

(assert (=> (not b_lambda!106085) (not d!1058660)))

(declare-fun t!291048 () Bool)

(declare-fun tb!204945 () Bool)

(assert (=> (and b!3590390 (= (toChars!7716 (transformation!5573 rule!403)) (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291048) tb!204945))

(declare-fun tp!1099062 () Bool)

(declare-fun b!3591005 () Bool)

(declare-fun e!2221904 () Bool)

(assert (=> b!3591005 (= e!2221904 (and (inv!51084 (c!621816 (dynLambda!16231 (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626)))) (dynLambda!16234 (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626)))) lt!1231634)))) tp!1099062))))

(declare-fun result!249874 () Bool)

(assert (=> tb!204945 (= result!249874 (and (inv!51085 (dynLambda!16231 (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626)))) (dynLambda!16234 (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626)))) lt!1231634))) e!2221904))))

(assert (= tb!204945 b!3591005))

(declare-fun m!4085183 () Bool)

(assert (=> b!3591005 m!4085183))

(declare-fun m!4085185 () Bool)

(assert (=> tb!204945 m!4085185))

(assert (=> d!1058660 t!291048))

(declare-fun b_and!259675 () Bool)

(assert (= b_and!259643 (and (=> t!291048 result!249874) b_and!259675)))

(declare-fun t!291050 () Bool)

(declare-fun tb!204947 () Bool)

(assert (=> (and b!3590408 (= (toChars!7716 (transformation!5573 (rule!8289 token!511))) (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291050) tb!204947))

(declare-fun result!249876 () Bool)

(assert (= result!249876 result!249874))

(assert (=> d!1058660 t!291050))

(declare-fun b_and!259677 () Bool)

(assert (= b_and!259645 (and (=> t!291050 result!249876) b_and!259677)))

(declare-fun tb!204949 () Bool)

(declare-fun t!291052 () Bool)

(assert (=> (and b!3590405 (= (toChars!7716 (transformation!5573 (h!43160 rules!3307))) (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291052) tb!204949))

(declare-fun result!249878 () Bool)

(assert (= result!249878 result!249874))

(assert (=> d!1058660 t!291052))

(declare-fun b_and!259679 () Bool)

(assert (= b_and!259647 (and (=> t!291052 result!249878) b_and!259679)))

(declare-fun tb!204951 () Bool)

(declare-fun t!291054 () Bool)

(assert (=> (and b!3590406 (= (toChars!7716 (transformation!5573 anOtherTypeRule!33)) (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291054) tb!204951))

(declare-fun result!249880 () Bool)

(assert (= result!249880 result!249874))

(assert (=> d!1058660 t!291054))

(declare-fun b_and!259681 () Bool)

(assert (= b_and!259649 (and (=> t!291054 result!249880) b_and!259681)))

(declare-fun b_lambda!106087 () Bool)

(assert (=> (not b_lambda!106087) (not d!1058660)))

(declare-fun tb!204953 () Bool)

(declare-fun t!291056 () Bool)

(assert (=> (and b!3590390 (= (toValue!7857 (transformation!5573 rule!403)) (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291056) tb!204953))

(declare-fun result!249882 () Bool)

(assert (=> tb!204953 (= result!249882 (inv!21 (dynLambda!16234 (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626)))) lt!1231634)))))

(declare-fun m!4085187 () Bool)

(assert (=> tb!204953 m!4085187))

(assert (=> d!1058660 t!291056))

(declare-fun b_and!259683 () Bool)

(assert (= b_and!259651 (and (=> t!291056 result!249882) b_and!259683)))

(declare-fun t!291058 () Bool)

(declare-fun tb!204955 () Bool)

(assert (=> (and b!3590408 (= (toValue!7857 (transformation!5573 (rule!8289 token!511))) (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291058) tb!204955))

(declare-fun result!249884 () Bool)

(assert (= result!249884 result!249882))

(assert (=> d!1058660 t!291058))

(declare-fun b_and!259685 () Bool)

(assert (= b_and!259653 (and (=> t!291058 result!249884) b_and!259685)))

(declare-fun t!291060 () Bool)

(declare-fun tb!204957 () Bool)

(assert (=> (and b!3590405 (= (toValue!7857 (transformation!5573 (h!43160 rules!3307))) (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291060) tb!204957))

(declare-fun result!249886 () Bool)

(assert (= result!249886 result!249882))

(assert (=> d!1058660 t!291060))

(declare-fun b_and!259687 () Bool)

(assert (= b_and!259655 (and (=> t!291060 result!249886) b_and!259687)))

(declare-fun tb!204959 () Bool)

(declare-fun t!291062 () Bool)

(assert (=> (and b!3590406 (= (toValue!7857 (transformation!5573 anOtherTypeRule!33)) (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291062) tb!204959))

(declare-fun result!249888 () Bool)

(assert (= result!249888 result!249882))

(assert (=> d!1058660 t!291062))

(declare-fun b_and!259689 () Bool)

(assert (= b_and!259657 (and (=> t!291062 result!249888) b_and!259689)))

(declare-fun m!4085189 () Bool)

(assert (=> d!1058660 m!4085189))

(declare-fun m!4085191 () Bool)

(assert (=> d!1058660 m!4085191))

(assert (=> d!1058660 m!4084399))

(assert (=> d!1058660 m!4085189))

(declare-fun m!4085193 () Bool)

(assert (=> d!1058660 m!4085193))

(assert (=> d!1058660 m!4085191))

(declare-fun m!4085195 () Bool)

(assert (=> d!1058660 m!4085195))

(assert (=> b!3590381 d!1058660))

(declare-fun d!1058686 () Bool)

(assert (=> d!1058686 (= (apply!9079 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))) lt!1231634) (dynLambda!16234 (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626)))) lt!1231634))))

(declare-fun b_lambda!106089 () Bool)

(assert (=> (not b_lambda!106089) (not d!1058686)))

(assert (=> d!1058686 t!291056))

(declare-fun b_and!259691 () Bool)

(assert (= b_and!259683 (and (=> t!291056 result!249882) b_and!259691)))

(assert (=> d!1058686 t!291058))

(declare-fun b_and!259693 () Bool)

(assert (= b_and!259685 (and (=> t!291058 result!249884) b_and!259693)))

(assert (=> d!1058686 t!291060))

(declare-fun b_and!259695 () Bool)

(assert (= b_and!259687 (and (=> t!291060 result!249886) b_and!259695)))

(assert (=> d!1058686 t!291062))

(declare-fun b_and!259697 () Bool)

(assert (= b_and!259689 (and (=> t!291062 result!249888) b_and!259697)))

(assert (=> d!1058686 m!4085189))

(assert (=> b!3590381 d!1058686))

(declare-fun b!3591012 () Bool)

(declare-fun e!2221910 () Bool)

(assert (=> b!3591012 (= e!2221910 true)))

(declare-fun d!1058688 () Bool)

(assert (=> d!1058688 e!2221910))

(assert (= d!1058688 b!3591012))

(declare-fun order!20489 () Int)

(declare-fun lambda!123855 () Int)

(declare-fun dynLambda!16238 (Int Int) Int)

(assert (=> b!3591012 (< (dynLambda!16235 order!20483 (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) (dynLambda!16238 order!20489 lambda!123855))))

(assert (=> b!3591012 (< (dynLambda!16237 order!20487 (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) (dynLambda!16238 order!20489 lambda!123855))))

(assert (=> d!1058688 (= (dynLambda!16234 (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626)))) lt!1231634) (dynLambda!16234 (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626)))) (seqFromList!4126 (originalCharacters!6287 (_1!21947 lt!1231626)))))))

(declare-fun lt!1231968 () Unit!53738)

(declare-fun Forall2of!282 (Int BalanceConc!22574 BalanceConc!22574) Unit!53738)

(assert (=> d!1058688 (= lt!1231968 (Forall2of!282 lambda!123855 lt!1231634 (seqFromList!4126 (originalCharacters!6287 (_1!21947 lt!1231626)))))))

(assert (=> d!1058688 (= (list!13881 lt!1231634) (list!13881 (seqFromList!4126 (originalCharacters!6287 (_1!21947 lt!1231626)))))))

(assert (=> d!1058688 (= (lemmaEqSameImage!764 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))) lt!1231634 (seqFromList!4126 (originalCharacters!6287 (_1!21947 lt!1231626)))) lt!1231968)))

(declare-fun b_lambda!106091 () Bool)

(assert (=> (not b_lambda!106091) (not d!1058688)))

(assert (=> d!1058688 t!291056))

(declare-fun b_and!259699 () Bool)

(assert (= b_and!259691 (and (=> t!291056 result!249882) b_and!259699)))

(assert (=> d!1058688 t!291058))

(declare-fun b_and!259701 () Bool)

(assert (= b_and!259693 (and (=> t!291058 result!249884) b_and!259701)))

(assert (=> d!1058688 t!291060))

(declare-fun b_and!259703 () Bool)

(assert (= b_and!259695 (and (=> t!291060 result!249886) b_and!259703)))

(assert (=> d!1058688 t!291062))

(declare-fun b_and!259705 () Bool)

(assert (= b_and!259697 (and (=> t!291062 result!249888) b_and!259705)))

(declare-fun b_lambda!106093 () Bool)

(assert (=> (not b_lambda!106093) (not d!1058688)))

(declare-fun t!291064 () Bool)

(declare-fun tb!204961 () Bool)

(assert (=> (and b!3590390 (= (toValue!7857 (transformation!5573 rule!403)) (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291064) tb!204961))

(declare-fun result!249890 () Bool)

(assert (=> tb!204961 (= result!249890 (inv!21 (dynLambda!16234 (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626)))) (seqFromList!4126 (originalCharacters!6287 (_1!21947 lt!1231626))))))))

(declare-fun m!4085197 () Bool)

(assert (=> tb!204961 m!4085197))

(assert (=> d!1058688 t!291064))

(declare-fun b_and!259707 () Bool)

(assert (= b_and!259699 (and (=> t!291064 result!249890) b_and!259707)))

(declare-fun tb!204963 () Bool)

(declare-fun t!291066 () Bool)

(assert (=> (and b!3590408 (= (toValue!7857 (transformation!5573 (rule!8289 token!511))) (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291066) tb!204963))

(declare-fun result!249892 () Bool)

(assert (= result!249892 result!249890))

(assert (=> d!1058688 t!291066))

(declare-fun b_and!259709 () Bool)

(assert (= b_and!259701 (and (=> t!291066 result!249892) b_and!259709)))

(declare-fun t!291068 () Bool)

(declare-fun tb!204965 () Bool)

(assert (=> (and b!3590405 (= (toValue!7857 (transformation!5573 (h!43160 rules!3307))) (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291068) tb!204965))

(declare-fun result!249894 () Bool)

(assert (= result!249894 result!249890))

(assert (=> d!1058688 t!291068))

(declare-fun b_and!259711 () Bool)

(assert (= b_and!259703 (and (=> t!291068 result!249894) b_and!259711)))

(declare-fun t!291070 () Bool)

(declare-fun tb!204967 () Bool)

(assert (=> (and b!3590406 (= (toValue!7857 (transformation!5573 anOtherTypeRule!33)) (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291070) tb!204967))

(declare-fun result!249896 () Bool)

(assert (= result!249896 result!249890))

(assert (=> d!1058688 t!291070))

(declare-fun b_and!259713 () Bool)

(assert (= b_and!259705 (and (=> t!291070 result!249896) b_and!259713)))

(assert (=> d!1058688 m!4084307))

(declare-fun m!4085199 () Bool)

(assert (=> d!1058688 m!4085199))

(assert (=> d!1058688 m!4084307))

(declare-fun m!4085201 () Bool)

(assert (=> d!1058688 m!4085201))

(assert (=> d!1058688 m!4085189))

(assert (=> d!1058688 m!4084307))

(declare-fun m!4085203 () Bool)

(assert (=> d!1058688 m!4085203))

(assert (=> d!1058688 m!4084399))

(assert (=> b!3590381 d!1058688))

(declare-fun d!1058690 () Bool)

(assert (=> d!1058690 (= (size!28744 (_1!21947 lt!1231626)) (size!28743 (originalCharacters!6287 (_1!21947 lt!1231626))))))

(declare-fun Unit!53748 () Unit!53738)

(assert (=> d!1058690 (= (lemmaCharactersSize!626 (_1!21947 lt!1231626)) Unit!53748)))

(declare-fun bs!570254 () Bool)

(assert (= bs!570254 d!1058690))

(declare-fun m!4085205 () Bool)

(assert (=> bs!570254 m!4085205))

(assert (=> b!3590381 d!1058690))

(declare-fun d!1058692 () Bool)

(declare-fun lt!1231971 () Int)

(assert (=> d!1058692 (= lt!1231971 (size!28743 (list!13881 lt!1231634)))))

(declare-fun size!28750 (Conc!11480) Int)

(assert (=> d!1058692 (= lt!1231971 (size!28750 (c!621816 lt!1231634)))))

(assert (=> d!1058692 (= (size!28745 lt!1231634) lt!1231971)))

(declare-fun bs!570255 () Bool)

(assert (= bs!570255 d!1058692))

(assert (=> bs!570255 m!4084399))

(assert (=> bs!570255 m!4084399))

(declare-fun m!4085207 () Bool)

(assert (=> bs!570255 m!4085207))

(declare-fun m!4085209 () Bool)

(assert (=> bs!570255 m!4085209))

(assert (=> b!3590381 d!1058692))

(declare-fun d!1058694 () Bool)

(assert (=> d!1058694 (= (seqFromList!4126 (originalCharacters!6287 (_1!21947 lt!1231626))) (fromListB!1903 (originalCharacters!6287 (_1!21947 lt!1231626))))))

(declare-fun bs!570256 () Bool)

(assert (= bs!570256 d!1058694))

(declare-fun m!4085211 () Bool)

(assert (=> bs!570256 m!4085211))

(assert (=> b!3590381 d!1058694))

(declare-fun d!1058696 () Bool)

(assert (=> d!1058696 (= (isEmpty!22240 suffix!1395) (is-Nil!37738 suffix!1395))))

(assert (=> b!3590380 d!1058696))

(declare-fun b!3591023 () Bool)

(declare-fun b_free!92593 () Bool)

(declare-fun b_next!93297 () Bool)

(assert (=> b!3591023 (= b_free!92593 (not b_next!93297))))

(declare-fun tb!204969 () Bool)

(declare-fun t!291072 () Bool)

(assert (=> (and b!3591023 (= (toValue!7857 (transformation!5573 (h!43160 (t!290995 rules!3307)))) (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291072) tb!204969))

(declare-fun result!249900 () Bool)

(assert (= result!249900 result!249882))

(assert (=> d!1058686 t!291072))

(assert (=> d!1058688 t!291072))

(declare-fun t!291074 () Bool)

(declare-fun tb!204971 () Bool)

(assert (=> (and b!3591023 (= (toValue!7857 (transformation!5573 (h!43160 (t!290995 rules!3307)))) (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291074) tb!204971))

(declare-fun result!249902 () Bool)

(assert (= result!249902 result!249890))

(assert (=> d!1058688 t!291074))

(declare-fun t!291076 () Bool)

(declare-fun tb!204973 () Bool)

(assert (=> (and b!3591023 (= (toValue!7857 (transformation!5573 (h!43160 (t!290995 rules!3307)))) (toValue!7857 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291076) tb!204973))

(declare-fun result!249904 () Bool)

(assert (= result!249904 result!249846))

(assert (=> d!1058626 t!291076))

(assert (=> d!1058660 t!291072))

(declare-fun tp!1099072 () Bool)

(declare-fun b_and!259715 () Bool)

(assert (=> b!3591023 (= tp!1099072 (and (=> t!291074 result!249902) (=> t!291072 result!249900) (=> t!291076 result!249904) b_and!259715))))

(declare-fun b_free!92595 () Bool)

(declare-fun b_next!93299 () Bool)

(assert (=> b!3591023 (= b_free!92595 (not b_next!93299))))

(declare-fun tb!204975 () Bool)

(declare-fun t!291078 () Bool)

(assert (=> (and b!3591023 (= (toChars!7716 (transformation!5573 (h!43160 (t!290995 rules!3307)))) (toChars!7716 (transformation!5573 (rule!8289 token!511)))) t!291078) tb!204975))

(declare-fun result!249906 () Bool)

(assert (= result!249906 result!249818))

(assert (=> b!3590507 t!291078))

(declare-fun tb!204977 () Bool)

(declare-fun t!291080 () Bool)

(assert (=> (and b!3591023 (= (toChars!7716 (transformation!5573 (h!43160 (t!290995 rules!3307)))) (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291080) tb!204977))

(declare-fun result!249908 () Bool)

(assert (= result!249908 result!249828))

(assert (=> d!1058540 t!291080))

(assert (=> d!1058614 t!291078))

(declare-fun t!291082 () Bool)

(declare-fun tb!204979 () Bool)

(assert (=> (and b!3591023 (= (toChars!7716 (transformation!5573 (h!43160 (t!290995 rules!3307)))) (toChars!7716 (transformation!5573 (rule!8289 (_1!21947 lt!1231626))))) t!291082) tb!204979))

(declare-fun result!249910 () Bool)

(assert (= result!249910 result!249874))

(assert (=> d!1058660 t!291082))

(declare-fun tp!1099073 () Bool)

(declare-fun b_and!259717 () Bool)

(assert (=> b!3591023 (= tp!1099073 (and (=> t!291078 result!249906) (=> t!291080 result!249908) (=> t!291082 result!249910) b_and!259717))))

(declare-fun e!2221923 () Bool)

(assert (=> b!3591023 (= e!2221923 (and tp!1099072 tp!1099073))))

(declare-fun b!3591022 () Bool)

(declare-fun e!2221922 () Bool)

(declare-fun tp!1099071 () Bool)

(assert (=> b!3591022 (= e!2221922 (and tp!1099071 (inv!51077 (tag!6245 (h!43160 (t!290995 rules!3307)))) (inv!51080 (transformation!5573 (h!43160 (t!290995 rules!3307)))) e!2221923))))

(declare-fun b!3591021 () Bool)

(declare-fun e!2221920 () Bool)

(declare-fun tp!1099074 () Bool)

(assert (=> b!3591021 (= e!2221920 (and e!2221922 tp!1099074))))

(assert (=> b!3590409 (= tp!1099001 e!2221920)))

(assert (= b!3591022 b!3591023))

(assert (= b!3591021 b!3591022))

(assert (= (and b!3590409 (is-Cons!37740 (t!290995 rules!3307))) b!3591021))

(declare-fun m!4085213 () Bool)

(assert (=> b!3591022 m!4085213))

(declare-fun m!4085215 () Bool)

(assert (=> b!3591022 m!4085215))

(declare-fun b!3591037 () Bool)

(declare-fun e!2221926 () Bool)

(declare-fun tp!1099088 () Bool)

(declare-fun tp!1099087 () Bool)

(assert (=> b!3591037 (= e!2221926 (and tp!1099088 tp!1099087))))

(declare-fun b!3591034 () Bool)

(assert (=> b!3591034 (= e!2221926 tp_is_empty!17747)))

(declare-fun b!3591035 () Bool)

(declare-fun tp!1099086 () Bool)

(declare-fun tp!1099089 () Bool)

(assert (=> b!3591035 (= e!2221926 (and tp!1099086 tp!1099089))))

(declare-fun b!3591036 () Bool)

(declare-fun tp!1099085 () Bool)

(assert (=> b!3591036 (= e!2221926 tp!1099085)))

(assert (=> b!3590392 (= tp!1099006 e!2221926)))

(assert (= (and b!3590392 (is-ElementMatch!10332 (regex!5573 rule!403))) b!3591034))

(assert (= (and b!3590392 (is-Concat!16136 (regex!5573 rule!403))) b!3591035))

(assert (= (and b!3590392 (is-Star!10332 (regex!5573 rule!403))) b!3591036))

(assert (= (and b!3590392 (is-Union!10332 (regex!5573 rule!403))) b!3591037))

(declare-fun b!3591042 () Bool)

(declare-fun e!2221929 () Bool)

(declare-fun tp!1099092 () Bool)

(assert (=> b!3591042 (= e!2221929 (and tp_is_empty!17747 tp!1099092))))

(assert (=> b!3590387 (= tp!1098997 e!2221929)))

(assert (= (and b!3590387 (is-Cons!37738 (t!290993 suffix!1395))) b!3591042))

(declare-fun b!3591046 () Bool)

(declare-fun e!2221930 () Bool)

(declare-fun tp!1099096 () Bool)

(declare-fun tp!1099095 () Bool)

(assert (=> b!3591046 (= e!2221930 (and tp!1099096 tp!1099095))))

(declare-fun b!3591043 () Bool)

(assert (=> b!3591043 (= e!2221930 tp_is_empty!17747)))

(declare-fun b!3591044 () Bool)

(declare-fun tp!1099094 () Bool)

(declare-fun tp!1099097 () Bool)

(assert (=> b!3591044 (= e!2221930 (and tp!1099094 tp!1099097))))

(declare-fun b!3591045 () Bool)

(declare-fun tp!1099093 () Bool)

(assert (=> b!3591045 (= e!2221930 tp!1099093)))

(assert (=> b!3590404 (= tp!1099004 e!2221930)))

(assert (= (and b!3590404 (is-ElementMatch!10332 (regex!5573 anOtherTypeRule!33))) b!3591043))

(assert (= (and b!3590404 (is-Concat!16136 (regex!5573 anOtherTypeRule!33))) b!3591044))

(assert (= (and b!3590404 (is-Star!10332 (regex!5573 anOtherTypeRule!33))) b!3591045))

(assert (= (and b!3590404 (is-Union!10332 (regex!5573 anOtherTypeRule!33))) b!3591046))

(declare-fun b!3591050 () Bool)

(declare-fun e!2221931 () Bool)

(declare-fun tp!1099101 () Bool)

(declare-fun tp!1099100 () Bool)

(assert (=> b!3591050 (= e!2221931 (and tp!1099101 tp!1099100))))

(declare-fun b!3591047 () Bool)

(assert (=> b!3591047 (= e!2221931 tp_is_empty!17747)))

(declare-fun b!3591048 () Bool)

(declare-fun tp!1099099 () Bool)

(declare-fun tp!1099102 () Bool)

(assert (=> b!3591048 (= e!2221931 (and tp!1099099 tp!1099102))))

(declare-fun b!3591049 () Bool)

(declare-fun tp!1099098 () Bool)

(assert (=> b!3591049 (= e!2221931 tp!1099098)))

(assert (=> b!3590386 (= tp!1099005 e!2221931)))

(assert (= (and b!3590386 (is-ElementMatch!10332 (regex!5573 (h!43160 rules!3307)))) b!3591047))

(assert (= (and b!3590386 (is-Concat!16136 (regex!5573 (h!43160 rules!3307)))) b!3591048))

(assert (= (and b!3590386 (is-Star!10332 (regex!5573 (h!43160 rules!3307)))) b!3591049))

(assert (= (and b!3590386 (is-Union!10332 (regex!5573 (h!43160 rules!3307)))) b!3591050))

(declare-fun b!3591051 () Bool)

(declare-fun e!2221932 () Bool)

(declare-fun tp!1099103 () Bool)

(assert (=> b!3591051 (= e!2221932 (and tp_is_empty!17747 tp!1099103))))

(assert (=> b!3590397 (= tp!1099002 e!2221932)))

(assert (= (and b!3590397 (is-Cons!37738 (originalCharacters!6287 token!511))) b!3591051))

(declare-fun b!3591055 () Bool)

(declare-fun e!2221933 () Bool)

(declare-fun tp!1099107 () Bool)

(declare-fun tp!1099106 () Bool)

(assert (=> b!3591055 (= e!2221933 (and tp!1099107 tp!1099106))))

(declare-fun b!3591052 () Bool)

(assert (=> b!3591052 (= e!2221933 tp_is_empty!17747)))

(declare-fun b!3591053 () Bool)

(declare-fun tp!1099105 () Bool)

(declare-fun tp!1099108 () Bool)

(assert (=> b!3591053 (= e!2221933 (and tp!1099105 tp!1099108))))

(declare-fun b!3591054 () Bool)

(declare-fun tp!1099104 () Bool)

(assert (=> b!3591054 (= e!2221933 tp!1099104)))

(assert (=> b!3590396 (= tp!1098999 e!2221933)))

(assert (= (and b!3590396 (is-ElementMatch!10332 (regex!5573 (rule!8289 token!511)))) b!3591052))

(assert (= (and b!3590396 (is-Concat!16136 (regex!5573 (rule!8289 token!511)))) b!3591053))

(assert (= (and b!3590396 (is-Star!10332 (regex!5573 (rule!8289 token!511)))) b!3591054))

(assert (= (and b!3590396 (is-Union!10332 (regex!5573 (rule!8289 token!511)))) b!3591055))

(declare-fun b_lambda!106095 () Bool)

(assert (= b_lambda!106077 (or (and b!3590405 b_free!92571 (= (toChars!7716 (transformation!5573 (h!43160 rules!3307))) (toChars!7716 (transformation!5573 (rule!8289 token!511))))) (and b!3591023 b_free!92595 (= (toChars!7716 (transformation!5573 (h!43160 (t!290995 rules!3307)))) (toChars!7716 (transformation!5573 (rule!8289 token!511))))) (and b!3590408 b_free!92567) (and b!3590406 b_free!92575 (= (toChars!7716 (transformation!5573 anOtherTypeRule!33)) (toChars!7716 (transformation!5573 (rule!8289 token!511))))) (and b!3590390 b_free!92563 (= (toChars!7716 (transformation!5573 rule!403)) (toChars!7716 (transformation!5573 (rule!8289 token!511))))) b_lambda!106095)))

(declare-fun b_lambda!106097 () Bool)

(assert (= b_lambda!106071 (or (and b!3590405 b_free!92571 (= (toChars!7716 (transformation!5573 (h!43160 rules!3307))) (toChars!7716 (transformation!5573 (rule!8289 token!511))))) (and b!3591023 b_free!92595 (= (toChars!7716 (transformation!5573 (h!43160 (t!290995 rules!3307)))) (toChars!7716 (transformation!5573 (rule!8289 token!511))))) (and b!3590408 b_free!92567) (and b!3590406 b_free!92575 (= (toChars!7716 (transformation!5573 anOtherTypeRule!33)) (toChars!7716 (transformation!5573 (rule!8289 token!511))))) (and b!3590390 b_free!92563 (= (toChars!7716 (transformation!5573 rule!403)) (toChars!7716 (transformation!5573 (rule!8289 token!511))))) b_lambda!106097)))

(push 1)

(assert (not b!3590821))

(assert (not d!1058588))

(assert (not b!3590788))

(assert (not bm!259934))

(assert (not b!3590687))

(assert (not d!1058620))

(assert (not b!3590777))

(assert (not d!1058578))

(assert (not b_lambda!106087))

(assert (not d!1058694))

(assert (not b!3591051))

(assert (not bm!259929))

(assert (not b!3591054))

(assert (not b!3590767))

(assert (not d!1058524))

(assert (not d!1058608))

(assert (not b_lambda!106085))

(assert (not b!3590912))

(assert (not b!3590751))

(assert (not bm!259927))

(assert (not tb!204897))

(assert (not b!3590786))

(assert (not b!3590634))

(assert (not b!3590772))

(assert (not b!3590573))

(assert (not b!3590519))

(assert (not d!1058570))

(assert b_and!259711)

(assert (not d!1058540))

(assert (not b!3590575))

(assert b_and!259677)

(assert (not b!3590587))

(assert (not b!3590610))

(assert b_and!259713)

(assert (not b!3590651))

(assert (not b_lambda!106073))

(assert (not b!3591035))

(assert (not bm!259923))

(assert (not b!3590683))

(assert (not b!3590782))

(assert (not b!3590804))

(assert (not b!3590574))

(assert b_and!259675)

(assert (not b!3590775))

(assert (not d!1058598))

(assert (not b!3590798))

(assert (not b!3590632))

(assert (not d!1058560))

(assert (not b!3590905))

(assert (not b!3590678))

(assert (not b_next!93273))

(assert (not d!1058558))

(assert (not b!3590690))

(assert (not b!3590508))

(assert (not b!3591036))

(assert (not d!1058632))

(assert (not b!3591050))

(assert (not b!3590689))

(assert (not d!1058616))

(assert (not b!3590682))

(assert (not b_next!93265))

(assert (not b!3590753))

(assert (not d!1058552))

(assert (not bm!259926))

(assert (not b!3590655))

(assert (not b!3591055))

(assert (not b!3591048))

(assert (not b!3590810))

(assert (not b!3590572))

(assert (not b_lambda!106079))

(assert (not b!3590776))

(assert (not b!3591049))

(assert (not b!3590909))

(assert (not d!1058576))

(assert (not tb!204905))

(assert (not b!3590908))

(assert b_and!259679)

(assert (not b!3590633))

(assert (not tb!204921))

(assert (not b_next!93297))

(assert (not d!1058690))

(assert (not bm!259931))

(assert (not bm!259936))

(assert (not b!3590656))

(assert (not b_next!93271))

(assert (not b!3590679))

(assert (not d!1058536))

(assert (not b!3591053))

(assert (not b!3590584))

(assert (not b!3590783))

(assert (not b!3590675))

(assert (not b!3590785))

(assert (not d!1058612))

(assert (not d!1058634))

(assert (not tb!204961))

(assert (not d!1058658))

(assert (not b_lambda!106089))

(assert (not b_next!93269))

(assert (not d!1058660))

(assert (not d!1058574))

(assert (not b!3590907))

(assert (not bm!259935))

(assert (not b!3590599))

(assert (not b!3590735))

(assert (not d!1058518))

(assert (not b!3591046))

(assert (not d!1058522))

(assert (not b!3590768))

(assert (not tb!204945))

(assert (not b!3590583))

(assert (not tb!204953))

(assert (not b!3590601))

(assert (not b!3590811))

(assert b_and!259709)

(assert (not b_next!93275))

(assert (not b!3591005))

(assert (not b_lambda!106091))

(assert (not b!3591037))

(assert (not d!1058516))

(assert (not b!3590676))

(assert (not b!3590507))

(assert (not d!1058610))

(assert (not b_next!93299))

(assert (not b!3590756))

(assert (not b!3590622))

(assert (not b!3591044))

(assert (not b!3590797))

(assert (not d!1058590))

(assert (not b!3590789))

(assert (not bm!259930))

(assert (not b!3591045))

(assert (not b!3590513))

(assert (not b_lambda!106097))

(assert (not b_lambda!106095))

(assert (not b!3590650))

(assert (not b!3590640))

(assert (not b!3590613))

(assert (not b!3590736))

(assert (not b!3590911))

(assert (not b!3590654))

(assert (not b!3590737))

(assert (not d!1058692))

(assert b_and!259717)

(assert (not d!1058614))

(assert (not b!3590923))

(assert (not d!1058602))

(assert (not b_next!93277))

(assert (not b!3591022))

(assert (not d!1058562))

(assert (not b!3590681))

(assert (not b!3590781))

(assert (not b!3590778))

(assert (not b!3591021))

(assert (not b!3590686))

(assert (not bm!259920))

(assert (not b!3590602))

(assert (not d!1058688))

(assert (not b!3590910))

(assert (not d!1058566))

(assert (not b!3590780))

(assert (not b_next!93279))

(assert (not d!1058532))

(assert b_and!259715)

(assert (not bm!259922))

(assert (not b_lambda!106093))

(assert (not d!1058606))

(assert (not b!3590685))

(assert (not d!1058618))

(assert (not b!3590784))

(assert (not b!3590600))

(assert (not d!1058550))

(assert b_and!259707)

(assert (not b!3590680))

(assert (not d!1058538))

(assert (not b!3590906))

(assert (not b!3590639))

(assert (not b!3590616))

(assert (not b!3591042))

(assert (not b!3590787))

(assert (not b!3590817))

(assert tp_is_empty!17747)

(assert (not d!1058630))

(assert b_and!259681)

(assert (not b!3590771))

(assert (not b_next!93267))

(assert (not b!3590611))

(assert (not b!3590598))

(check-sat)

(pop 1)

(push 1)

(assert b_and!259675)

(assert b_and!259679)

(assert (not b_next!93297))

(assert (not b_next!93271))

(assert (not b_next!93269))

(assert (not b_next!93299))

(assert b_and!259707)

(assert b_and!259711)

(assert b_and!259713)

(assert b_and!259677)

(assert (not b_next!93273))

(assert (not b_next!93265))

(assert b_and!259709)

(assert (not b_next!93275))

(assert b_and!259717)

(assert (not b_next!93277))

(assert (not b_next!93279))

(assert b_and!259715)

(assert b_and!259681)

(assert (not b_next!93267))

(check-sat)

(pop 1)

