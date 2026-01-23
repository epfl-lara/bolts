; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!300434 () Bool)

(assert start!300434)

(declare-fun b!3200491 () Bool)

(declare-fun b_free!85049 () Bool)

(declare-fun b_next!85753 () Bool)

(assert (=> b!3200491 (= b_free!85049 (not b_next!85753))))

(declare-fun tp!1011595 () Bool)

(declare-fun b_and!212735 () Bool)

(assert (=> b!3200491 (= tp!1011595 b_and!212735)))

(declare-fun b_free!85051 () Bool)

(declare-fun b_next!85755 () Bool)

(assert (=> b!3200491 (= b_free!85051 (not b_next!85755))))

(declare-fun tp!1011584 () Bool)

(declare-fun b_and!212737 () Bool)

(assert (=> b!3200491 (= tp!1011584 b_and!212737)))

(declare-fun b!3200500 () Bool)

(declare-fun b_free!85053 () Bool)

(declare-fun b_next!85757 () Bool)

(assert (=> b!3200500 (= b_free!85053 (not b_next!85757))))

(declare-fun tp!1011588 () Bool)

(declare-fun b_and!212739 () Bool)

(assert (=> b!3200500 (= tp!1011588 b_and!212739)))

(declare-fun b_free!85055 () Bool)

(declare-fun b_next!85759 () Bool)

(assert (=> b!3200500 (= b_free!85055 (not b_next!85759))))

(declare-fun tp!1011585 () Bool)

(declare-fun b_and!212741 () Bool)

(assert (=> b!3200500 (= tp!1011585 b_and!212741)))

(declare-fun b!3200518 () Bool)

(declare-fun b_free!85057 () Bool)

(declare-fun b_next!85761 () Bool)

(assert (=> b!3200518 (= b_free!85057 (not b_next!85761))))

(declare-fun tp!1011587 () Bool)

(declare-fun b_and!212743 () Bool)

(assert (=> b!3200518 (= tp!1011587 b_and!212743)))

(declare-fun b_free!85059 () Bool)

(declare-fun b_next!85763 () Bool)

(assert (=> b!3200518 (= b_free!85059 (not b_next!85763))))

(declare-fun tp!1011592 () Bool)

(declare-fun b_and!212745 () Bool)

(assert (=> b!3200518 (= tp!1011592 b_and!212745)))

(declare-datatypes ((C!20104 0))(
  ( (C!20105 (val!12100 Int)) )
))
(declare-datatypes ((Regex!9959 0))(
  ( (ElementMatch!9959 (c!537344 C!20104)) (Concat!15389 (regOne!20430 Regex!9959) (regTwo!20430 Regex!9959)) (EmptyExpr!9959) (Star!9959 (reg!10288 Regex!9959)) (EmptyLang!9959) (Union!9959 (regOne!20431 Regex!9959) (regTwo!20431 Regex!9959)) )
))
(declare-datatypes ((List!36200 0))(
  ( (Nil!36076) (Cons!36076 (h!41496 (_ BitVec 16)) (t!237423 List!36200)) )
))
(declare-datatypes ((TokenValue!5430 0))(
  ( (FloatLiteralValue!10860 (text!38455 List!36200)) (TokenValueExt!5429 (__x!23077 Int)) (Broken!27150 (value!168634 List!36200)) (Object!5553) (End!5430) (Def!5430) (Underscore!5430) (Match!5430) (Else!5430) (Error!5430) (Case!5430) (If!5430) (Extends!5430) (Abstract!5430) (Class!5430) (Val!5430) (DelimiterValue!10860 (del!5490 List!36200)) (KeywordValue!5436 (value!168635 List!36200)) (CommentValue!10860 (value!168636 List!36200)) (WhitespaceValue!10860 (value!168637 List!36200)) (IndentationValue!5430 (value!168638 List!36200)) (String!40483) (Int32!5430) (Broken!27151 (value!168639 List!36200)) (Boolean!5431) (Unit!50485) (OperatorValue!5433 (op!5490 List!36200)) (IdentifierValue!10860 (value!168640 List!36200)) (IdentifierValue!10861 (value!168641 List!36200)) (WhitespaceValue!10861 (value!168642 List!36200)) (True!10860) (False!10860) (Broken!27152 (value!168643 List!36200)) (Broken!27153 (value!168644 List!36200)) (True!10861) (RightBrace!5430) (RightBracket!5430) (Colon!5430) (Null!5430) (Comma!5430) (LeftBracket!5430) (False!10861) (LeftBrace!5430) (ImaginaryLiteralValue!5430 (text!38456 List!36200)) (StringLiteralValue!16290 (value!168645 List!36200)) (EOFValue!5430 (value!168646 List!36200)) (IdentValue!5430 (value!168647 List!36200)) (DelimiterValue!10861 (value!168648 List!36200)) (DedentValue!5430 (value!168649 List!36200)) (NewLineValue!5430 (value!168650 List!36200)) (IntegerValue!16290 (value!168651 (_ BitVec 32)) (text!38457 List!36200)) (IntegerValue!16291 (value!168652 Int) (text!38458 List!36200)) (Times!5430) (Or!5430) (Equal!5430) (Minus!5430) (Broken!27154 (value!168653 List!36200)) (And!5430) (Div!5430) (LessEqual!5430) (Mod!5430) (Concat!15390) (Not!5430) (Plus!5430) (SpaceValue!5430 (value!168654 List!36200)) (IntegerValue!16292 (value!168655 Int) (text!38459 List!36200)) (StringLiteralValue!16291 (text!38460 List!36200)) (FloatLiteralValue!10861 (text!38461 List!36200)) (BytesLiteralValue!5430 (value!168656 List!36200)) (CommentValue!10861 (value!168657 List!36200)) (StringLiteralValue!16292 (value!168658 List!36200)) (ErrorTokenValue!5430 (msg!5491 List!36200)) )
))
(declare-datatypes ((List!36201 0))(
  ( (Nil!36077) (Cons!36077 (h!41497 C!20104) (t!237424 List!36201)) )
))
(declare-datatypes ((IArray!21555 0))(
  ( (IArray!21556 (innerList!10835 List!36201)) )
))
(declare-datatypes ((Conc!10775 0))(
  ( (Node!10775 (left!28033 Conc!10775) (right!28363 Conc!10775) (csize!21780 Int) (cheight!10986 Int)) (Leaf!16986 (xs!13893 IArray!21555) (csize!21781 Int)) (Empty!10775) )
))
(declare-datatypes ((BalanceConc!21164 0))(
  ( (BalanceConc!21165 (c!537345 Conc!10775)) )
))
(declare-datatypes ((String!40484 0))(
  ( (String!40485 (value!168659 String)) )
))
(declare-datatypes ((TokenValueInjection!10288 0))(
  ( (TokenValueInjection!10289 (toValue!7276 Int) (toChars!7135 Int)) )
))
(declare-datatypes ((Rule!10200 0))(
  ( (Rule!10201 (regex!5200 Regex!9959) (tag!5722 String!40484) (isSeparator!5200 Bool) (transformation!5200 TokenValueInjection!10288)) )
))
(declare-datatypes ((Token!9766 0))(
  ( (Token!9767 (value!168660 TokenValue!5430) (rule!7636 Rule!10200) (size!27171 Int) (originalCharacters!5914 List!36201)) )
))
(declare-datatypes ((List!36202 0))(
  ( (Nil!36078) (Cons!36078 (h!41498 Token!9766) (t!237425 List!36202)) )
))
(declare-fun tokens!494 () List!36202)

(declare-fun b!3200483 () Bool)

(declare-fun e!1995335 () Bool)

(declare-fun e!1995338 () Bool)

(declare-fun tp!1011589 () Bool)

(declare-fun inv!48931 (Token!9766) Bool)

(assert (=> b!3200483 (= e!1995338 (and (inv!48931 (h!41498 tokens!494)) e!1995335 tp!1011589))))

(declare-fun b!3200484 () Bool)

(declare-fun e!1995332 () Bool)

(assert (=> b!3200484 (= e!1995332 true)))

(declare-datatypes ((IArray!21557 0))(
  ( (IArray!21558 (innerList!10836 List!36202)) )
))
(declare-datatypes ((Conc!10776 0))(
  ( (Node!10776 (left!28034 Conc!10776) (right!28364 Conc!10776) (csize!21782 Int) (cheight!10987 Int)) (Leaf!16987 (xs!13894 IArray!21557) (csize!21783 Int)) (Empty!10776) )
))
(declare-datatypes ((BalanceConc!21166 0))(
  ( (BalanceConc!21167 (c!537346 Conc!10776)) )
))
(declare-fun lt!1079335 () BalanceConc!21166)

(declare-fun singletonSeq!2296 (Token!9766) BalanceConc!21166)

(assert (=> b!3200484 (= lt!1079335 (singletonSeq!2296 (h!41498 (t!237425 tokens!494))))))

(declare-fun e!1995354 () Bool)

(assert (=> b!3200484 e!1995354))

(declare-fun res!1302273 () Bool)

(assert (=> b!3200484 (=> (not res!1302273) (not e!1995354))))

(declare-datatypes ((tuple2!35454 0))(
  ( (tuple2!35455 (_1!20861 BalanceConc!21166) (_2!20861 BalanceConc!21164)) )
))
(declare-fun lt!1079342 () tuple2!35454)

(declare-fun size!27172 (BalanceConc!21166) Int)

(assert (=> b!3200484 (= res!1302273 (= (size!27172 (_1!20861 lt!1079342)) 1))))

(declare-datatypes ((LexerInterface!4789 0))(
  ( (LexerInterfaceExt!4786 (__x!23078 Int)) (Lexer!4787) )
))
(declare-fun thiss!18206 () LexerInterface!4789)

(declare-datatypes ((List!36203 0))(
  ( (Nil!36079) (Cons!36079 (h!41499 Rule!10200) (t!237426 List!36203)) )
))
(declare-fun rules!2135 () List!36203)

(declare-fun lt!1079316 () BalanceConc!21164)

(declare-fun lex!2119 (LexerInterface!4789 List!36203 BalanceConc!21164) tuple2!35454)

(assert (=> b!3200484 (= lt!1079342 (lex!2119 thiss!18206 rules!2135 lt!1079316))))

(declare-fun lt!1079328 () BalanceConc!21166)

(declare-fun printTailRec!1286 (LexerInterface!4789 BalanceConc!21166 Int BalanceConc!21164) BalanceConc!21164)

(assert (=> b!3200484 (= lt!1079316 (printTailRec!1286 thiss!18206 lt!1079328 0 (BalanceConc!21165 Empty!10775)))))

(declare-fun print!1854 (LexerInterface!4789 BalanceConc!21166) BalanceConc!21164)

(assert (=> b!3200484 (= lt!1079316 (print!1854 thiss!18206 lt!1079328))))

(declare-fun separatorToken!241 () Token!9766)

(assert (=> b!3200484 (= lt!1079328 (singletonSeq!2296 separatorToken!241))))

(declare-datatypes ((Unit!50486 0))(
  ( (Unit!50487) )
))
(declare-fun lt!1079321 () Unit!50486)

(declare-fun e!1995341 () Unit!50486)

(assert (=> b!3200484 (= lt!1079321 e!1995341)))

(declare-fun c!537343 () Bool)

(declare-fun lt!1079341 () C!20104)

(declare-fun contains!6417 (List!36201 C!20104) Bool)

(declare-fun usedCharacters!516 (Regex!9959) List!36201)

(assert (=> b!3200484 (= c!537343 (not (contains!6417 (usedCharacters!516 (regex!5200 (rule!7636 separatorToken!241))) lt!1079341)))))

(declare-fun lt!1079327 () List!36201)

(declare-fun head!7015 (List!36201) C!20104)

(assert (=> b!3200484 (= lt!1079341 (head!7015 lt!1079327))))

(declare-fun e!1995348 () Bool)

(assert (=> b!3200484 e!1995348))

(declare-fun res!1302287 () Bool)

(assert (=> b!3200484 (=> (not res!1302287) (not e!1995348))))

(declare-datatypes ((Option!7095 0))(
  ( (None!7094) (Some!7094 (v!35624 Rule!10200)) )
))
(declare-fun lt!1079324 () Option!7095)

(declare-fun isDefined!5528 (Option!7095) Bool)

(assert (=> b!3200484 (= res!1302287 (isDefined!5528 lt!1079324))))

(declare-fun getRuleFromTag!905 (LexerInterface!4789 List!36203 String!40484) Option!7095)

(assert (=> b!3200484 (= lt!1079324 (getRuleFromTag!905 thiss!18206 rules!2135 (tag!5722 (rule!7636 separatorToken!241))))))

(declare-fun lt!1079331 () Unit!50486)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!905 (LexerInterface!4789 List!36203 List!36201 Token!9766) Unit!50486)

(assert (=> b!3200484 (= lt!1079331 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!905 thiss!18206 rules!2135 lt!1079327 separatorToken!241))))

(declare-fun lt!1079336 () List!36201)

(declare-fun lt!1079334 () BalanceConc!21164)

(declare-datatypes ((tuple2!35456 0))(
  ( (tuple2!35457 (_1!20862 Token!9766) (_2!20862 List!36201)) )
))
(declare-datatypes ((Option!7096 0))(
  ( (None!7095) (Some!7095 (v!35625 tuple2!35456)) )
))
(declare-fun maxPrefixOneRule!1568 (LexerInterface!4789 Rule!10200 List!36201) Option!7096)

(declare-fun apply!8137 (TokenValueInjection!10288 BalanceConc!21164) TokenValue!5430)

(declare-fun size!27173 (List!36201) Int)

(assert (=> b!3200484 (= (maxPrefixOneRule!1568 thiss!18206 (rule!7636 (h!41498 tokens!494)) lt!1079336) (Some!7095 (tuple2!35457 (Token!9767 (apply!8137 (transformation!5200 (rule!7636 (h!41498 tokens!494))) lt!1079334) (rule!7636 (h!41498 tokens!494)) (size!27173 lt!1079336) lt!1079336) Nil!36077)))))

(declare-fun lt!1079313 () Unit!50486)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!681 (LexerInterface!4789 List!36203 List!36201 List!36201 List!36201 Rule!10200) Unit!50486)

(assert (=> b!3200484 (= lt!1079313 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!681 thiss!18206 rules!2135 lt!1079336 lt!1079336 Nil!36077 (rule!7636 (h!41498 tokens!494))))))

(declare-fun e!1995334 () Bool)

(assert (=> b!3200484 e!1995334))

(declare-fun res!1302279 () Bool)

(assert (=> b!3200484 (=> (not res!1302279) (not e!1995334))))

(declare-fun lt!1079339 () Option!7095)

(assert (=> b!3200484 (= res!1302279 (isDefined!5528 lt!1079339))))

(assert (=> b!3200484 (= lt!1079339 (getRuleFromTag!905 thiss!18206 rules!2135 (tag!5722 (rule!7636 (h!41498 tokens!494)))))))

(declare-fun lt!1079333 () Unit!50486)

(assert (=> b!3200484 (= lt!1079333 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!905 thiss!18206 rules!2135 lt!1079336 (h!41498 tokens!494)))))

(declare-fun lt!1079332 () Unit!50486)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!828 (LexerInterface!4789 List!36203 List!36202 Token!9766) Unit!50486)

(assert (=> b!3200484 (= lt!1079332 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!828 thiss!18206 rules!2135 tokens!494 (h!41498 tokens!494)))))

(declare-fun b!3200485 () Bool)

(declare-fun e!1995345 () Bool)

(declare-fun e!1995351 () Bool)

(assert (=> b!3200485 (= e!1995345 (not e!1995351))))

(declare-fun res!1302271 () Bool)

(assert (=> b!3200485 (=> res!1302271 e!1995351)))

(declare-fun lt!1079323 () List!36201)

(declare-fun lt!1079329 () List!36201)

(assert (=> b!3200485 (= res!1302271 (not (= lt!1079323 lt!1079329)))))

(declare-fun printList!1339 (LexerInterface!4789 List!36202) List!36201)

(assert (=> b!3200485 (= lt!1079329 (printList!1339 thiss!18206 (Cons!36078 (h!41498 tokens!494) Nil!36078)))))

(declare-fun lt!1079315 () BalanceConc!21164)

(declare-fun list!12825 (BalanceConc!21164) List!36201)

(assert (=> b!3200485 (= lt!1079323 (list!12825 lt!1079315))))

(declare-fun lt!1079330 () BalanceConc!21166)

(assert (=> b!3200485 (= lt!1079315 (printTailRec!1286 thiss!18206 lt!1079330 0 (BalanceConc!21165 Empty!10775)))))

(assert (=> b!3200485 (= lt!1079315 (print!1854 thiss!18206 lt!1079330))))

(assert (=> b!3200485 (= lt!1079330 (singletonSeq!2296 (h!41498 tokens!494)))))

(declare-fun b!3200486 () Bool)

(declare-fun e!1995342 () Bool)

(declare-fun e!1995347 () Bool)

(assert (=> b!3200486 (= e!1995342 e!1995347)))

(declare-fun res!1302284 () Bool)

(assert (=> b!3200486 (=> res!1302284 e!1995347)))

(declare-fun lt!1079338 () List!36201)

(declare-fun ++!8644 (List!36201 List!36201) List!36201)

(declare-fun charsOf!3216 (Token!9766) BalanceConc!21164)

(declare-fun printWithSeparatorTokenList!134 (LexerInterface!4789 List!36202 Token!9766) List!36201)

(assert (=> b!3200486 (= res!1302284 (not (= lt!1079338 (++!8644 (++!8644 (list!12825 (charsOf!3216 (h!41498 (t!237425 tokens!494)))) lt!1079327) (printWithSeparatorTokenList!134 thiss!18206 (t!237425 (t!237425 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1079317 () List!36201)

(assert (=> b!3200486 (= lt!1079317 (++!8644 lt!1079327 lt!1079338))))

(assert (=> b!3200486 (= lt!1079327 (list!12825 (charsOf!3216 separatorToken!241)))))

(assert (=> b!3200486 (= lt!1079338 (printWithSeparatorTokenList!134 thiss!18206 (t!237425 tokens!494) separatorToken!241))))

(declare-fun lt!1079337 () List!36201)

(assert (=> b!3200486 (= lt!1079337 (printWithSeparatorTokenList!134 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3200487 () Bool)

(declare-fun res!1302265 () Bool)

(assert (=> b!3200487 (=> (not res!1302265) (not e!1995345))))

(declare-fun isEmpty!20161 (List!36203) Bool)

(assert (=> b!3200487 (= res!1302265 (not (isEmpty!20161 rules!2135)))))

(declare-fun b!3200488 () Bool)

(declare-fun e!1995353 () Bool)

(assert (=> b!3200488 (= e!1995353 false)))

(declare-fun res!1302272 () Bool)

(assert (=> start!300434 (=> (not res!1302272) (not e!1995345))))

(get-info :version)

(assert (=> start!300434 (= res!1302272 ((_ is Lexer!4787) thiss!18206))))

(assert (=> start!300434 e!1995345))

(assert (=> start!300434 true))

(declare-fun e!1995337 () Bool)

(assert (=> start!300434 e!1995337))

(assert (=> start!300434 e!1995338))

(declare-fun e!1995330 () Bool)

(assert (=> start!300434 (and (inv!48931 separatorToken!241) e!1995330)))

(declare-fun b!3200489 () Bool)

(declare-fun e!1995333 () Bool)

(assert (=> b!3200489 (= e!1995333 e!1995332)))

(declare-fun res!1302275 () Bool)

(assert (=> b!3200489 (=> res!1302275 e!1995332)))

(declare-fun lt!1079318 () List!36201)

(assert (=> b!3200489 (= res!1302275 (not (= lt!1079337 lt!1079318)))))

(declare-fun lt!1079314 () List!36201)

(assert (=> b!3200489 (= lt!1079314 lt!1079318)))

(assert (=> b!3200489 (= lt!1079318 (++!8644 lt!1079336 lt!1079317))))

(declare-fun lt!1079320 () Unit!50486)

(declare-fun lemmaConcatAssociativity!1718 (List!36201 List!36201 List!36201) Unit!50486)

(assert (=> b!3200489 (= lt!1079320 (lemmaConcatAssociativity!1718 lt!1079336 lt!1079327 lt!1079338))))

(declare-fun e!1995350 () Bool)

(declare-fun tp!1011586 () Bool)

(declare-fun e!1995357 () Bool)

(declare-fun b!3200490 () Bool)

(declare-fun inv!48928 (String!40484) Bool)

(declare-fun inv!48932 (TokenValueInjection!10288) Bool)

(assert (=> b!3200490 (= e!1995350 (and tp!1011586 (inv!48928 (tag!5722 (rule!7636 separatorToken!241))) (inv!48932 (transformation!5200 (rule!7636 separatorToken!241))) e!1995357))))

(assert (=> b!3200491 (= e!1995357 (and tp!1011595 tp!1011584))))

(declare-fun b!3200492 () Bool)

(declare-fun res!1302280 () Bool)

(declare-fun e!1995329 () Bool)

(assert (=> b!3200492 (=> res!1302280 e!1995329)))

(declare-fun rulesProduceIndividualToken!2281 (LexerInterface!4789 List!36203 Token!9766) Bool)

(assert (=> b!3200492 (= res!1302280 (not (rulesProduceIndividualToken!2281 thiss!18206 rules!2135 (h!41498 tokens!494))))))

(declare-fun b!3200493 () Bool)

(declare-fun e!1995356 () Bool)

(assert (=> b!3200493 (= e!1995334 e!1995356)))

(declare-fun res!1302268 () Bool)

(assert (=> b!3200493 (=> (not res!1302268) (not e!1995356))))

(declare-fun lt!1079326 () Rule!10200)

(declare-fun matchR!4593 (Regex!9959 List!36201) Bool)

(assert (=> b!3200493 (= res!1302268 (matchR!4593 (regex!5200 lt!1079326) lt!1079336))))

(declare-fun get!11477 (Option!7095) Rule!10200)

(assert (=> b!3200493 (= lt!1079326 (get!11477 lt!1079339))))

(declare-fun b!3200494 () Bool)

(declare-fun res!1302281 () Bool)

(assert (=> b!3200494 (=> (not res!1302281) (not e!1995354))))

(declare-fun apply!8138 (BalanceConc!21166 Int) Token!9766)

(assert (=> b!3200494 (= res!1302281 (= (apply!8138 (_1!20861 lt!1079342) 0) separatorToken!241))))

(declare-fun b!3200495 () Bool)

(declare-fun tp!1011593 () Bool)

(declare-fun inv!21 (TokenValue!5430) Bool)

(assert (=> b!3200495 (= e!1995330 (and (inv!21 (value!168660 separatorToken!241)) e!1995350 tp!1011593))))

(declare-fun b!3200496 () Bool)

(declare-fun e!1995343 () Bool)

(declare-fun tp!1011591 () Bool)

(assert (=> b!3200496 (= e!1995337 (and e!1995343 tp!1011591))))

(declare-fun b!3200497 () Bool)

(assert (=> b!3200497 (= e!1995351 e!1995329)))

(declare-fun res!1302269 () Bool)

(assert (=> b!3200497 (=> res!1302269 e!1995329)))

(assert (=> b!3200497 (= res!1302269 (or (not (= lt!1079329 lt!1079336)) (not (= lt!1079323 lt!1079336))))))

(assert (=> b!3200497 (= lt!1079336 (list!12825 (charsOf!3216 (h!41498 tokens!494))))))

(declare-fun b!3200498 () Bool)

(declare-fun Unit!50488 () Unit!50486)

(assert (=> b!3200498 (= e!1995341 Unit!50488)))

(declare-fun lt!1079340 () Unit!50486)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!364 (Regex!9959 List!36201 C!20104) Unit!50486)

(assert (=> b!3200498 (= lt!1079340 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!364 (regex!5200 (rule!7636 separatorToken!241)) lt!1079327 lt!1079341))))

(declare-fun res!1302286 () Bool)

(assert (=> b!3200498 (= res!1302286 (not (matchR!4593 (regex!5200 (rule!7636 separatorToken!241)) lt!1079327)))))

(assert (=> b!3200498 (=> (not res!1302286) (not e!1995353))))

(assert (=> b!3200498 e!1995353))

(declare-fun b!3200499 () Bool)

(declare-fun res!1302282 () Bool)

(assert (=> b!3200499 (=> (not res!1302282) (not e!1995345))))

(assert (=> b!3200499 (= res!1302282 (isSeparator!5200 (rule!7636 separatorToken!241)))))

(declare-fun e!1995340 () Bool)

(assert (=> b!3200500 (= e!1995340 (and tp!1011588 tp!1011585))))

(declare-fun e!1995358 () Bool)

(declare-fun e!1995344 () Bool)

(declare-fun b!3200501 () Bool)

(declare-fun tp!1011596 () Bool)

(assert (=> b!3200501 (= e!1995344 (and tp!1011596 (inv!48928 (tag!5722 (rule!7636 (h!41498 tokens!494)))) (inv!48932 (transformation!5200 (rule!7636 (h!41498 tokens!494)))) e!1995358))))

(declare-fun b!3200502 () Bool)

(declare-fun e!1995352 () Bool)

(declare-fun lt!1079325 () Rule!10200)

(assert (=> b!3200502 (= e!1995352 (= (rule!7636 separatorToken!241) lt!1079325))))

(declare-fun b!3200503 () Bool)

(declare-fun e!1995331 () Bool)

(assert (=> b!3200503 (= e!1995329 e!1995331)))

(declare-fun res!1302277 () Bool)

(assert (=> b!3200503 (=> res!1302277 e!1995331)))

(declare-fun isEmpty!20162 (BalanceConc!21166) Bool)

(assert (=> b!3200503 (= res!1302277 (isEmpty!20162 (_1!20861 (lex!2119 thiss!18206 rules!2135 lt!1079334))))))

(declare-fun seqFromList!3471 (List!36201) BalanceConc!21164)

(assert (=> b!3200503 (= lt!1079334 (seqFromList!3471 lt!1079336))))

(declare-fun b!3200504 () Bool)

(declare-fun isEmpty!20163 (BalanceConc!21164) Bool)

(assert (=> b!3200504 (= e!1995354 (isEmpty!20163 (_2!20861 lt!1079342)))))

(declare-fun b!3200505 () Bool)

(assert (=> b!3200505 (= e!1995348 e!1995352)))

(declare-fun res!1302278 () Bool)

(assert (=> b!3200505 (=> (not res!1302278) (not e!1995352))))

(assert (=> b!3200505 (= res!1302278 (matchR!4593 (regex!5200 lt!1079325) lt!1079327))))

(assert (=> b!3200505 (= lt!1079325 (get!11477 lt!1079324))))

(declare-fun b!3200506 () Bool)

(declare-fun res!1302283 () Bool)

(assert (=> b!3200506 (=> (not res!1302283) (not e!1995345))))

(assert (=> b!3200506 (= res!1302283 (and (not ((_ is Nil!36078) tokens!494)) (not ((_ is Nil!36078) (t!237425 tokens!494)))))))

(declare-fun b!3200507 () Bool)

(declare-fun Unit!50489 () Unit!50486)

(assert (=> b!3200507 (= e!1995341 Unit!50489)))

(declare-fun tp!1011594 () Bool)

(declare-fun b!3200508 () Bool)

(assert (=> b!3200508 (= e!1995343 (and tp!1011594 (inv!48928 (tag!5722 (h!41499 rules!2135))) (inv!48932 (transformation!5200 (h!41499 rules!2135))) e!1995340))))

(declare-fun b!3200509 () Bool)

(declare-fun res!1302288 () Bool)

(assert (=> b!3200509 (=> (not res!1302288) (not e!1995345))))

(declare-fun sepAndNonSepRulesDisjointChars!1394 (List!36203 List!36203) Bool)

(assert (=> b!3200509 (= res!1302288 (sepAndNonSepRulesDisjointChars!1394 rules!2135 rules!2135))))

(declare-fun tp!1011590 () Bool)

(declare-fun b!3200510 () Bool)

(assert (=> b!3200510 (= e!1995335 (and (inv!21 (value!168660 (h!41498 tokens!494))) e!1995344 tp!1011590))))

(declare-fun b!3200511 () Bool)

(declare-fun res!1302267 () Bool)

(assert (=> b!3200511 (=> (not res!1302267) (not e!1995345))))

(declare-fun lambda!117155 () Int)

(declare-fun forall!7352 (List!36202 Int) Bool)

(assert (=> b!3200511 (= res!1302267 (forall!7352 tokens!494 lambda!117155))))

(declare-fun b!3200512 () Bool)

(declare-fun res!1302274 () Bool)

(assert (=> b!3200512 (=> (not res!1302274) (not e!1995345))))

(declare-fun rulesProduceEachTokenIndividually!1240 (LexerInterface!4789 List!36203 BalanceConc!21166) Bool)

(declare-fun seqFromList!3472 (List!36202) BalanceConc!21166)

(assert (=> b!3200512 (= res!1302274 (rulesProduceEachTokenIndividually!1240 thiss!18206 rules!2135 (seqFromList!3472 tokens!494)))))

(declare-fun b!3200513 () Bool)

(declare-fun res!1302276 () Bool)

(assert (=> b!3200513 (=> (not res!1302276) (not e!1995345))))

(assert (=> b!3200513 (= res!1302276 (rulesProduceIndividualToken!2281 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3200514 () Bool)

(assert (=> b!3200514 (= e!1995356 (= (rule!7636 (h!41498 tokens!494)) lt!1079326))))

(declare-fun b!3200515 () Bool)

(assert (=> b!3200515 (= e!1995347 e!1995333)))

(declare-fun res!1302266 () Bool)

(assert (=> b!3200515 (=> res!1302266 e!1995333)))

(assert (=> b!3200515 (= res!1302266 (not (= lt!1079337 lt!1079314)))))

(assert (=> b!3200515 (= lt!1079314 (++!8644 (++!8644 lt!1079336 lt!1079327) lt!1079338))))

(declare-fun b!3200516 () Bool)

(declare-fun res!1302285 () Bool)

(assert (=> b!3200516 (=> (not res!1302285) (not e!1995345))))

(declare-fun rulesInvariant!4186 (LexerInterface!4789 List!36203) Bool)

(assert (=> b!3200516 (= res!1302285 (rulesInvariant!4186 thiss!18206 rules!2135))))

(declare-fun b!3200517 () Bool)

(assert (=> b!3200517 (= e!1995331 e!1995342)))

(declare-fun res!1302270 () Bool)

(assert (=> b!3200517 (=> res!1302270 e!1995342)))

(assert (=> b!3200517 (= res!1302270 (or (isSeparator!5200 (rule!7636 (h!41498 tokens!494))) (isSeparator!5200 (rule!7636 (h!41498 (t!237425 tokens!494))))))))

(declare-fun lt!1079322 () Unit!50486)

(declare-fun forallContained!1171 (List!36202 Int Token!9766) Unit!50486)

(assert (=> b!3200517 (= lt!1079322 (forallContained!1171 tokens!494 lambda!117155 (h!41498 (t!237425 tokens!494))))))

(declare-fun lt!1079319 () Unit!50486)

(assert (=> b!3200517 (= lt!1079319 (forallContained!1171 tokens!494 lambda!117155 (h!41498 tokens!494)))))

(assert (=> b!3200518 (= e!1995358 (and tp!1011587 tp!1011592))))

(assert (= (and start!300434 res!1302272) b!3200487))

(assert (= (and b!3200487 res!1302265) b!3200516))

(assert (= (and b!3200516 res!1302285) b!3200512))

(assert (= (and b!3200512 res!1302274) b!3200513))

(assert (= (and b!3200513 res!1302276) b!3200499))

(assert (= (and b!3200499 res!1302282) b!3200511))

(assert (= (and b!3200511 res!1302267) b!3200509))

(assert (= (and b!3200509 res!1302288) b!3200506))

(assert (= (and b!3200506 res!1302283) b!3200485))

(assert (= (and b!3200485 (not res!1302271)) b!3200497))

(assert (= (and b!3200497 (not res!1302269)) b!3200492))

(assert (= (and b!3200492 (not res!1302280)) b!3200503))

(assert (= (and b!3200503 (not res!1302277)) b!3200517))

(assert (= (and b!3200517 (not res!1302270)) b!3200486))

(assert (= (and b!3200486 (not res!1302284)) b!3200515))

(assert (= (and b!3200515 (not res!1302266)) b!3200489))

(assert (= (and b!3200489 (not res!1302275)) b!3200484))

(assert (= (and b!3200484 res!1302279) b!3200493))

(assert (= (and b!3200493 res!1302268) b!3200514))

(assert (= (and b!3200484 res!1302287) b!3200505))

(assert (= (and b!3200505 res!1302278) b!3200502))

(assert (= (and b!3200484 c!537343) b!3200498))

(assert (= (and b!3200484 (not c!537343)) b!3200507))

(assert (= (and b!3200498 res!1302286) b!3200488))

(assert (= (and b!3200484 res!1302273) b!3200494))

(assert (= (and b!3200494 res!1302281) b!3200504))

(assert (= b!3200508 b!3200500))

(assert (= b!3200496 b!3200508))

(assert (= (and start!300434 ((_ is Cons!36079) rules!2135)) b!3200496))

(assert (= b!3200501 b!3200518))

(assert (= b!3200510 b!3200501))

(assert (= b!3200483 b!3200510))

(assert (= (and start!300434 ((_ is Cons!36078) tokens!494)) b!3200483))

(assert (= b!3200490 b!3200491))

(assert (= b!3200495 b!3200490))

(assert (= start!300434 b!3200495))

(declare-fun m!3462555 () Bool)

(assert (=> b!3200513 m!3462555))

(declare-fun m!3462557 () Bool)

(assert (=> b!3200517 m!3462557))

(declare-fun m!3462559 () Bool)

(assert (=> b!3200517 m!3462559))

(declare-fun m!3462561 () Bool)

(assert (=> b!3200510 m!3462561))

(declare-fun m!3462563 () Bool)

(assert (=> b!3200487 m!3462563))

(declare-fun m!3462565 () Bool)

(assert (=> b!3200490 m!3462565))

(declare-fun m!3462567 () Bool)

(assert (=> b!3200490 m!3462567))

(declare-fun m!3462569 () Bool)

(assert (=> b!3200486 m!3462569))

(declare-fun m!3462571 () Bool)

(assert (=> b!3200486 m!3462571))

(declare-fun m!3462573 () Bool)

(assert (=> b!3200486 m!3462573))

(declare-fun m!3462575 () Bool)

(assert (=> b!3200486 m!3462575))

(declare-fun m!3462577 () Bool)

(assert (=> b!3200486 m!3462577))

(declare-fun m!3462579 () Bool)

(assert (=> b!3200486 m!3462579))

(assert (=> b!3200486 m!3462573))

(assert (=> b!3200486 m!3462569))

(declare-fun m!3462581 () Bool)

(assert (=> b!3200486 m!3462581))

(assert (=> b!3200486 m!3462575))

(declare-fun m!3462583 () Bool)

(assert (=> b!3200486 m!3462583))

(assert (=> b!3200486 m!3462571))

(assert (=> b!3200486 m!3462581))

(declare-fun m!3462585 () Bool)

(assert (=> b!3200486 m!3462585))

(declare-fun m!3462587 () Bool)

(assert (=> b!3200486 m!3462587))

(declare-fun m!3462589 () Bool)

(assert (=> b!3200501 m!3462589))

(declare-fun m!3462591 () Bool)

(assert (=> b!3200501 m!3462591))

(declare-fun m!3462593 () Bool)

(assert (=> b!3200511 m!3462593))

(declare-fun m!3462595 () Bool)

(assert (=> b!3200504 m!3462595))

(declare-fun m!3462597 () Bool)

(assert (=> b!3200495 m!3462597))

(declare-fun m!3462599 () Bool)

(assert (=> b!3200484 m!3462599))

(declare-fun m!3462601 () Bool)

(assert (=> b!3200484 m!3462601))

(declare-fun m!3462603 () Bool)

(assert (=> b!3200484 m!3462603))

(declare-fun m!3462605 () Bool)

(assert (=> b!3200484 m!3462605))

(declare-fun m!3462607 () Bool)

(assert (=> b!3200484 m!3462607))

(declare-fun m!3462609 () Bool)

(assert (=> b!3200484 m!3462609))

(declare-fun m!3462611 () Bool)

(assert (=> b!3200484 m!3462611))

(declare-fun m!3462613 () Bool)

(assert (=> b!3200484 m!3462613))

(declare-fun m!3462615 () Bool)

(assert (=> b!3200484 m!3462615))

(assert (=> b!3200484 m!3462601))

(declare-fun m!3462617 () Bool)

(assert (=> b!3200484 m!3462617))

(declare-fun m!3462619 () Bool)

(assert (=> b!3200484 m!3462619))

(declare-fun m!3462621 () Bool)

(assert (=> b!3200484 m!3462621))

(declare-fun m!3462623 () Bool)

(assert (=> b!3200484 m!3462623))

(declare-fun m!3462625 () Bool)

(assert (=> b!3200484 m!3462625))

(declare-fun m!3462627 () Bool)

(assert (=> b!3200484 m!3462627))

(declare-fun m!3462629 () Bool)

(assert (=> b!3200484 m!3462629))

(declare-fun m!3462631 () Bool)

(assert (=> b!3200484 m!3462631))

(declare-fun m!3462633 () Bool)

(assert (=> b!3200484 m!3462633))

(declare-fun m!3462635 () Bool)

(assert (=> b!3200484 m!3462635))

(declare-fun m!3462637 () Bool)

(assert (=> b!3200484 m!3462637))

(declare-fun m!3462639 () Bool)

(assert (=> b!3200483 m!3462639))

(declare-fun m!3462641 () Bool)

(assert (=> b!3200494 m!3462641))

(declare-fun m!3462643 () Bool)

(assert (=> b!3200498 m!3462643))

(declare-fun m!3462645 () Bool)

(assert (=> b!3200498 m!3462645))

(declare-fun m!3462647 () Bool)

(assert (=> b!3200508 m!3462647))

(declare-fun m!3462649 () Bool)

(assert (=> b!3200508 m!3462649))

(declare-fun m!3462651 () Bool)

(assert (=> b!3200503 m!3462651))

(declare-fun m!3462653 () Bool)

(assert (=> b!3200503 m!3462653))

(declare-fun m!3462655 () Bool)

(assert (=> b!3200503 m!3462655))

(declare-fun m!3462657 () Bool)

(assert (=> b!3200489 m!3462657))

(declare-fun m!3462659 () Bool)

(assert (=> b!3200489 m!3462659))

(declare-fun m!3462661 () Bool)

(assert (=> b!3200497 m!3462661))

(assert (=> b!3200497 m!3462661))

(declare-fun m!3462663 () Bool)

(assert (=> b!3200497 m!3462663))

(declare-fun m!3462665 () Bool)

(assert (=> b!3200509 m!3462665))

(declare-fun m!3462667 () Bool)

(assert (=> b!3200493 m!3462667))

(declare-fun m!3462669 () Bool)

(assert (=> b!3200493 m!3462669))

(declare-fun m!3462671 () Bool)

(assert (=> b!3200492 m!3462671))

(declare-fun m!3462673 () Bool)

(assert (=> b!3200515 m!3462673))

(assert (=> b!3200515 m!3462673))

(declare-fun m!3462675 () Bool)

(assert (=> b!3200515 m!3462675))

(declare-fun m!3462677 () Bool)

(assert (=> b!3200485 m!3462677))

(declare-fun m!3462679 () Bool)

(assert (=> b!3200485 m!3462679))

(declare-fun m!3462681 () Bool)

(assert (=> b!3200485 m!3462681))

(declare-fun m!3462683 () Bool)

(assert (=> b!3200485 m!3462683))

(declare-fun m!3462685 () Bool)

(assert (=> b!3200485 m!3462685))

(declare-fun m!3462687 () Bool)

(assert (=> b!3200512 m!3462687))

(assert (=> b!3200512 m!3462687))

(declare-fun m!3462689 () Bool)

(assert (=> b!3200512 m!3462689))

(declare-fun m!3462691 () Bool)

(assert (=> b!3200505 m!3462691))

(declare-fun m!3462693 () Bool)

(assert (=> b!3200505 m!3462693))

(declare-fun m!3462695 () Bool)

(assert (=> b!3200516 m!3462695))

(declare-fun m!3462697 () Bool)

(assert (=> start!300434 m!3462697))

(check-sat (not b!3200501) (not b!3200484) (not b!3200498) (not b!3200483) b_and!212739 (not b!3200493) b_and!212737 (not b!3200510) (not b!3200511) b_and!212741 (not b!3200517) (not b!3200504) (not b!3200497) (not b!3200495) (not b!3200515) (not b_next!85763) (not b!3200492) (not b_next!85753) (not start!300434) (not b!3200516) (not b!3200509) (not b!3200487) (not b!3200503) b_and!212745 (not b!3200513) b_and!212735 (not b!3200489) (not b_next!85761) (not b!3200508) (not b!3200496) (not b!3200494) (not b_next!85755) (not b!3200485) (not b_next!85759) (not b!3200490) (not b!3200505) (not b_next!85757) b_and!212743 (not b!3200512) (not b!3200486))
(check-sat (not b_next!85763) (not b_next!85753) b_and!212745 b_and!212739 b_and!212735 (not b_next!85761) b_and!212737 (not b_next!85755) b_and!212743 b_and!212741 (not b_next!85757) (not b_next!85759))
