; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!169578 () Bool)

(assert start!169578)

(declare-fun b!1727000 () Bool)

(declare-fun b_free!47163 () Bool)

(declare-fun b_next!47867 () Bool)

(assert (=> b!1727000 (= b_free!47163 (not b_next!47867))))

(declare-fun tp!492716 () Bool)

(declare-fun b_and!126819 () Bool)

(assert (=> b!1727000 (= tp!492716 b_and!126819)))

(declare-fun b_free!47165 () Bool)

(declare-fun b_next!47869 () Bool)

(assert (=> b!1727000 (= b_free!47165 (not b_next!47869))))

(declare-fun tp!492714 () Bool)

(declare-fun b_and!126821 () Bool)

(assert (=> b!1727000 (= tp!492714 b_and!126821)))

(declare-fun b!1727023 () Bool)

(declare-fun b_free!47167 () Bool)

(declare-fun b_next!47871 () Bool)

(assert (=> b!1727023 (= b_free!47167 (not b_next!47871))))

(declare-fun tp!492715 () Bool)

(declare-fun b_and!126823 () Bool)

(assert (=> b!1727023 (= tp!492715 b_and!126823)))

(declare-fun b_free!47169 () Bool)

(declare-fun b_next!47873 () Bool)

(assert (=> b!1727023 (= b_free!47169 (not b_next!47873))))

(declare-fun tp!492706 () Bool)

(declare-fun b_and!126825 () Bool)

(assert (=> b!1727023 (= tp!492706 b_and!126825)))

(declare-fun b!1727007 () Bool)

(declare-fun b_free!47171 () Bool)

(declare-fun b_next!47875 () Bool)

(assert (=> b!1727007 (= b_free!47171 (not b_next!47875))))

(declare-fun tp!492709 () Bool)

(declare-fun b_and!126827 () Bool)

(assert (=> b!1727007 (= tp!492709 b_and!126827)))

(declare-fun b_free!47173 () Bool)

(declare-fun b_next!47877 () Bool)

(assert (=> b!1727007 (= b_free!47173 (not b_next!47877))))

(declare-fun tp!492712 () Bool)

(declare-fun b_and!126829 () Bool)

(assert (=> b!1727007 (= tp!492712 b_and!126829)))

(declare-fun b!1727038 () Bool)

(declare-fun e!1104779 () Bool)

(assert (=> b!1727038 (= e!1104779 true)))

(declare-fun b!1727037 () Bool)

(declare-fun e!1104778 () Bool)

(assert (=> b!1727037 (= e!1104778 e!1104779)))

(declare-fun b!1727036 () Bool)

(declare-fun e!1104777 () Bool)

(assert (=> b!1727036 (= e!1104777 e!1104778)))

(declare-fun b!1727011 () Bool)

(assert (=> b!1727011 e!1104777))

(assert (= b!1727037 b!1727038))

(assert (= b!1727036 b!1727037))

(assert (= b!1727011 b!1727036))

(declare-fun order!11603 () Int)

(declare-datatypes ((List!18990 0))(
  ( (Nil!18920) (Cons!18920 (h!24321 (_ BitVec 16)) (t!160217 List!18990)) )
))
(declare-datatypes ((TokenValue!3445 0))(
  ( (FloatLiteralValue!6890 (text!24560 List!18990)) (TokenValueExt!3444 (__x!12192 Int)) (Broken!17225 (value!105264 List!18990)) (Object!3514) (End!3445) (Def!3445) (Underscore!3445) (Match!3445) (Else!3445) (Error!3445) (Case!3445) (If!3445) (Extends!3445) (Abstract!3445) (Class!3445) (Val!3445) (DelimiterValue!6890 (del!3505 List!18990)) (KeywordValue!3451 (value!105265 List!18990)) (CommentValue!6890 (value!105266 List!18990)) (WhitespaceValue!6890 (value!105267 List!18990)) (IndentationValue!3445 (value!105268 List!18990)) (String!21556) (Int32!3445) (Broken!17226 (value!105269 List!18990)) (Boolean!3446) (Unit!32770) (OperatorValue!3448 (op!3505 List!18990)) (IdentifierValue!6890 (value!105270 List!18990)) (IdentifierValue!6891 (value!105271 List!18990)) (WhitespaceValue!6891 (value!105272 List!18990)) (True!6890) (False!6890) (Broken!17227 (value!105273 List!18990)) (Broken!17228 (value!105274 List!18990)) (True!6891) (RightBrace!3445) (RightBracket!3445) (Colon!3445) (Null!3445) (Comma!3445) (LeftBracket!3445) (False!6891) (LeftBrace!3445) (ImaginaryLiteralValue!3445 (text!24561 List!18990)) (StringLiteralValue!10335 (value!105275 List!18990)) (EOFValue!3445 (value!105276 List!18990)) (IdentValue!3445 (value!105277 List!18990)) (DelimiterValue!6891 (value!105278 List!18990)) (DedentValue!3445 (value!105279 List!18990)) (NewLineValue!3445 (value!105280 List!18990)) (IntegerValue!10335 (value!105281 (_ BitVec 32)) (text!24562 List!18990)) (IntegerValue!10336 (value!105282 Int) (text!24563 List!18990)) (Times!3445) (Or!3445) (Equal!3445) (Minus!3445) (Broken!17229 (value!105283 List!18990)) (And!3445) (Div!3445) (LessEqual!3445) (Mod!3445) (Concat!8128) (Not!3445) (Plus!3445) (SpaceValue!3445 (value!105284 List!18990)) (IntegerValue!10337 (value!105285 Int) (text!24564 List!18990)) (StringLiteralValue!10336 (text!24565 List!18990)) (FloatLiteralValue!6891 (text!24566 List!18990)) (BytesLiteralValue!3445 (value!105286 List!18990)) (CommentValue!6891 (value!105287 List!18990)) (StringLiteralValue!10337 (value!105288 List!18990)) (ErrorTokenValue!3445 (msg!3506 List!18990)) )
))
(declare-datatypes ((C!9540 0))(
  ( (C!9541 (val!5366 Int)) )
))
(declare-datatypes ((List!18991 0))(
  ( (Nil!18921) (Cons!18921 (h!24322 C!9540) (t!160218 List!18991)) )
))
(declare-datatypes ((Regex!4683 0))(
  ( (ElementMatch!4683 (c!282336 C!9540)) (Concat!8129 (regOne!9878 Regex!4683) (regTwo!9878 Regex!4683)) (EmptyExpr!4683) (Star!4683 (reg!5012 Regex!4683)) (EmptyLang!4683) (Union!4683 (regOne!9879 Regex!4683) (regTwo!9879 Regex!4683)) )
))
(declare-datatypes ((String!21557 0))(
  ( (String!21558 (value!105289 String)) )
))
(declare-datatypes ((IArray!12591 0))(
  ( (IArray!12592 (innerList!6353 List!18991)) )
))
(declare-datatypes ((Conc!6293 0))(
  ( (Node!6293 (left!15104 Conc!6293) (right!15434 Conc!6293) (csize!12816 Int) (cheight!6504 Int)) (Leaf!9191 (xs!9169 IArray!12591) (csize!12817 Int)) (Empty!6293) )
))
(declare-datatypes ((BalanceConc!12530 0))(
  ( (BalanceConc!12531 (c!282337 Conc!6293)) )
))
(declare-datatypes ((TokenValueInjection!6550 0))(
  ( (TokenValueInjection!6551 (toValue!4862 Int) (toChars!4721 Int)) )
))
(declare-datatypes ((Rule!6510 0))(
  ( (Rule!6511 (regex!3355 Regex!4683) (tag!3675 String!21557) (isSeparator!3355 Bool) (transformation!3355 TokenValueInjection!6550)) )
))
(declare-datatypes ((Token!6276 0))(
  ( (Token!6277 (value!105290 TokenValue!3445) (rule!5321 Rule!6510) (size!15032 Int) (originalCharacters!4169 List!18991)) )
))
(declare-datatypes ((tuple2!18606 0))(
  ( (tuple2!18607 (_1!10705 Token!6276) (_2!10705 List!18991)) )
))
(declare-fun lt!661591 () tuple2!18606)

(declare-fun order!11605 () Int)

(declare-fun lambda!69272 () Int)

(declare-fun dynLambda!8772 (Int Int) Int)

(declare-fun dynLambda!8773 (Int Int) Int)

(assert (=> b!1727038 (< (dynLambda!8772 order!11603 (toValue!4862 (transformation!3355 (rule!5321 (_1!10705 lt!661591))))) (dynLambda!8773 order!11605 lambda!69272))))

(declare-fun order!11607 () Int)

(declare-fun dynLambda!8774 (Int Int) Int)

(assert (=> b!1727038 (< (dynLambda!8774 order!11607 (toChars!4721 (transformation!3355 (rule!5321 (_1!10705 lt!661591))))) (dynLambda!8773 order!11605 lambda!69272))))

(declare-fun b!1726998 () Bool)

(declare-fun res!775290 () Bool)

(declare-fun e!1104758 () Bool)

(assert (=> b!1726998 (=> (not res!775290) (not e!1104758))))

(declare-fun lt!661595 () tuple2!18606)

(declare-fun isEmpty!11901 (List!18991) Bool)

(assert (=> b!1726998 (= res!775290 (isEmpty!11901 (_2!10705 lt!661595)))))

(declare-fun b!1726999 () Bool)

(declare-fun e!1104770 () Bool)

(declare-fun e!1104761 () Bool)

(assert (=> b!1726999 (= e!1104770 e!1104761)))

(declare-fun res!775276 () Bool)

(assert (=> b!1726999 (=> res!775276 e!1104761)))

(declare-fun lt!661609 () Int)

(declare-datatypes ((Option!3734 0))(
  ( (None!3733) (Some!3733 (v!25146 tuple2!18606)) )
))
(declare-fun lt!661605 () Option!3734)

(declare-fun lt!661616 () TokenValue!3445)

(declare-fun lt!661617 () List!18991)

(assert (=> b!1726999 (= res!775276 (not (= lt!661605 (Some!3733 (tuple2!18607 (Token!6277 lt!661616 (rule!5321 (_1!10705 lt!661591)) lt!661609 lt!661617) (_2!10705 lt!661591))))))))

(declare-fun lt!661608 () BalanceConc!12530)

(declare-fun size!15033 (BalanceConc!12530) Int)

(assert (=> b!1726999 (= lt!661609 (size!15033 lt!661608))))

(declare-fun apply!5160 (TokenValueInjection!6550 BalanceConc!12530) TokenValue!3445)

(assert (=> b!1726999 (= lt!661616 (apply!5160 (transformation!3355 (rule!5321 (_1!10705 lt!661591))) lt!661608))))

(declare-datatypes ((Unit!32771 0))(
  ( (Unit!32772) )
))
(declare-fun lt!661612 () Unit!32771)

(declare-fun lemmaCharactersSize!427 (Token!6276) Unit!32771)

(assert (=> b!1726999 (= lt!661612 (lemmaCharactersSize!427 (_1!10705 lt!661591)))))

(declare-fun lt!661596 () Unit!32771)

(declare-fun lemmaEqSameImage!280 (TokenValueInjection!6550 BalanceConc!12530 BalanceConc!12530) Unit!32771)

(declare-fun seqFromList!2329 (List!18991) BalanceConc!12530)

(assert (=> b!1726999 (= lt!661596 (lemmaEqSameImage!280 (transformation!3355 (rule!5321 (_1!10705 lt!661591))) lt!661608 (seqFromList!2329 (originalCharacters!4169 (_1!10705 lt!661591)))))))

(declare-fun res!775270 () Bool)

(declare-fun e!1104767 () Bool)

(assert (=> start!169578 (=> (not res!775270) (not e!1104767))))

(declare-datatypes ((LexerInterface!2984 0))(
  ( (LexerInterfaceExt!2981 (__x!12193 Int)) (Lexer!2982) )
))
(declare-fun thiss!24550 () LexerInterface!2984)

(get-info :version)

(assert (=> start!169578 (= res!775270 ((_ is Lexer!2982) thiss!24550))))

(assert (=> start!169578 e!1104767))

(declare-fun e!1104768 () Bool)

(assert (=> start!169578 e!1104768))

(declare-fun e!1104766 () Bool)

(assert (=> start!169578 e!1104766))

(assert (=> start!169578 true))

(declare-fun token!523 () Token!6276)

(declare-fun e!1104749 () Bool)

(declare-fun inv!24457 (Token!6276) Bool)

(assert (=> start!169578 (and (inv!24457 token!523) e!1104749)))

(declare-fun e!1104760 () Bool)

(assert (=> start!169578 e!1104760))

(declare-fun e!1104762 () Bool)

(assert (=> b!1727000 (= e!1104762 (and tp!492716 tp!492714))))

(declare-fun b!1727001 () Bool)

(declare-fun e!1104746 () Bool)

(declare-fun e!1104745 () Bool)

(assert (=> b!1727001 (= e!1104746 e!1104745)))

(declare-fun res!775281 () Bool)

(assert (=> b!1727001 (=> (not res!775281) (not e!1104745))))

(declare-fun lt!661606 () Rule!6510)

(declare-fun matchR!2157 (Regex!4683 List!18991) Bool)

(declare-fun list!7648 (BalanceConc!12530) List!18991)

(declare-fun charsOf!2004 (Token!6276) BalanceConc!12530)

(assert (=> b!1727001 (= res!775281 (matchR!2157 (regex!3355 lt!661606) (list!7648 (charsOf!2004 (_1!10705 lt!661591)))))))

(declare-datatypes ((Option!3735 0))(
  ( (None!3734) (Some!3734 (v!25147 Rule!6510)) )
))
(declare-fun lt!661590 () Option!3735)

(declare-fun get!5629 (Option!3735) Rule!6510)

(assert (=> b!1727001 (= lt!661606 (get!5629 lt!661590))))

(declare-fun b!1727002 () Bool)

(declare-fun e!1104765 () Bool)

(assert (=> b!1727002 (= e!1104758 (not e!1104765))))

(declare-fun res!775273 () Bool)

(assert (=> b!1727002 (=> res!775273 e!1104765)))

(declare-fun rule!422 () Rule!6510)

(declare-fun lt!661602 () List!18991)

(assert (=> b!1727002 (= res!775273 (not (matchR!2157 (regex!3355 rule!422) lt!661602)))))

(declare-fun ruleValid!854 (LexerInterface!2984 Rule!6510) Bool)

(assert (=> b!1727002 (ruleValid!854 thiss!24550 rule!422)))

(declare-fun lt!661588 () Unit!32771)

(declare-datatypes ((List!18992 0))(
  ( (Nil!18922) (Cons!18922 (h!24323 Rule!6510) (t!160219 List!18992)) )
))
(declare-fun rules!3447 () List!18992)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!378 (LexerInterface!2984 Rule!6510 List!18992) Unit!32771)

(assert (=> b!1727002 (= lt!661588 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!378 thiss!24550 rule!422 rules!3447))))

(declare-fun e!1104764 () Bool)

(declare-fun tp!492707 () Bool)

(declare-fun b!1727003 () Bool)

(declare-fun inv!21 (TokenValue!3445) Bool)

(assert (=> b!1727003 (= e!1104749 (and (inv!21 (value!105290 token!523)) e!1104764 tp!492707))))

(declare-fun b!1727004 () Bool)

(declare-fun e!1104748 () Bool)

(declare-fun tp!492713 () Bool)

(declare-fun inv!24452 (String!21557) Bool)

(declare-fun inv!24458 (TokenValueInjection!6550) Bool)

(assert (=> b!1727004 (= e!1104766 (and tp!492713 (inv!24452 (tag!3675 rule!422)) (inv!24458 (transformation!3355 rule!422)) e!1104748))))

(declare-fun b!1727005 () Bool)

(declare-fun e!1104751 () Bool)

(assert (=> b!1727005 (= e!1104765 e!1104751)))

(declare-fun res!775275 () Bool)

(assert (=> b!1727005 (=> res!775275 e!1104751)))

(declare-fun suffix!1421 () List!18991)

(declare-fun lt!661593 () Regex!4683)

(declare-fun prefixMatch!568 (Regex!4683 List!18991) Bool)

(declare-fun ++!5180 (List!18991 List!18991) List!18991)

(declare-fun head!3918 (List!18991) C!9540)

(assert (=> b!1727005 (= res!775275 (prefixMatch!568 lt!661593 (++!5180 lt!661602 (Cons!18921 (head!3918 suffix!1421) Nil!18921))))))

(declare-fun rulesRegex!713 (LexerInterface!2984 List!18992) Regex!4683)

(assert (=> b!1727005 (= lt!661593 (rulesRegex!713 thiss!24550 rules!3447))))

(declare-fun b!1727006 () Bool)

(declare-fun res!775282 () Bool)

(assert (=> b!1727006 (=> (not res!775282) (not e!1104758))))

(assert (=> b!1727006 (= res!775282 (= (rule!5321 token!523) rule!422))))

(declare-fun e!1104747 () Bool)

(assert (=> b!1727007 (= e!1104747 (and tp!492709 tp!492712))))

(declare-fun b!1727008 () Bool)

(declare-fun tp!492708 () Bool)

(assert (=> b!1727008 (= e!1104764 (and tp!492708 (inv!24452 (tag!3675 (rule!5321 token!523))) (inv!24458 (transformation!3355 (rule!5321 token!523))) e!1104747))))

(declare-fun b!1727009 () Bool)

(declare-fun res!775274 () Bool)

(assert (=> b!1727009 (=> (not res!775274) (not e!1104767))))

(declare-fun rulesInvariant!2653 (LexerInterface!2984 List!18992) Bool)

(assert (=> b!1727009 (= res!775274 (rulesInvariant!2653 thiss!24550 rules!3447))))

(declare-fun b!1727010 () Bool)

(declare-fun e!1104754 () Bool)

(assert (=> b!1727010 (= e!1104751 e!1104754)))

(declare-fun res!775286 () Bool)

(assert (=> b!1727010 (=> res!775286 e!1104754)))

(declare-fun lt!661618 () List!18991)

(declare-fun isPrefix!1596 (List!18991 List!18991) Bool)

(assert (=> b!1727010 (= res!775286 (not (isPrefix!1596 lt!661617 lt!661618)))))

(assert (=> b!1727010 (isPrefix!1596 lt!661617 (++!5180 lt!661617 (_2!10705 lt!661591)))))

(declare-fun lt!661589 () Unit!32771)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1106 (List!18991 List!18991) Unit!32771)

(assert (=> b!1727010 (= lt!661589 (lemmaConcatTwoListThenFirstIsPrefix!1106 lt!661617 (_2!10705 lt!661591)))))

(assert (=> b!1727010 (= lt!661617 (list!7648 lt!661608))))

(assert (=> b!1727010 (= lt!661608 (charsOf!2004 (_1!10705 lt!661591)))))

(assert (=> b!1727010 e!1104746))

(declare-fun res!775278 () Bool)

(assert (=> b!1727010 (=> (not res!775278) (not e!1104746))))

(declare-fun isDefined!3077 (Option!3735) Bool)

(assert (=> b!1727010 (= res!775278 (isDefined!3077 lt!661590))))

(declare-fun getRuleFromTag!405 (LexerInterface!2984 List!18992 String!21557) Option!3735)

(assert (=> b!1727010 (= lt!661590 (getRuleFromTag!405 thiss!24550 rules!3447 (tag!3675 (rule!5321 (_1!10705 lt!661591)))))))

(declare-fun lt!661598 () Unit!32771)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!405 (LexerInterface!2984 List!18992 List!18991 Token!6276) Unit!32771)

(assert (=> b!1727010 (= lt!661598 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!405 thiss!24550 rules!3447 lt!661618 (_1!10705 lt!661591)))))

(declare-fun get!5630 (Option!3734) tuple2!18606)

(assert (=> b!1727010 (= lt!661591 (get!5630 lt!661605))))

(declare-fun lt!661597 () Unit!32771)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!508 (LexerInterface!2984 List!18992 List!18991 List!18991) Unit!32771)

(assert (=> b!1727010 (= lt!661597 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!508 thiss!24550 rules!3447 lt!661602 suffix!1421))))

(declare-fun maxPrefix!1538 (LexerInterface!2984 List!18992 List!18991) Option!3734)

(assert (=> b!1727010 (= lt!661605 (maxPrefix!1538 thiss!24550 rules!3447 lt!661618))))

(assert (=> b!1727010 (isPrefix!1596 lt!661602 lt!661618)))

(declare-fun lt!661601 () Unit!32771)

(assert (=> b!1727010 (= lt!661601 (lemmaConcatTwoListThenFirstIsPrefix!1106 lt!661602 suffix!1421))))

(assert (=> b!1727010 (= lt!661618 (++!5180 lt!661602 suffix!1421))))

(declare-fun e!1104757 () Bool)

(assert (=> b!1727011 (= e!1104754 e!1104757)))

(declare-fun res!775283 () Bool)

(assert (=> b!1727011 (=> res!775283 e!1104757)))

(declare-fun Forall!730 (Int) Bool)

(assert (=> b!1727011 (= res!775283 (not (Forall!730 lambda!69272)))))

(declare-fun lt!661607 () Unit!32771)

(declare-fun lemmaInv!562 (TokenValueInjection!6550) Unit!32771)

(assert (=> b!1727011 (= lt!661607 (lemmaInv!562 (transformation!3355 (rule!5321 (_1!10705 lt!661591)))))))

(declare-fun b!1727012 () Bool)

(declare-fun res!775277 () Bool)

(assert (=> b!1727012 (=> (not res!775277) (not e!1104767))))

(declare-fun contains!3377 (List!18992 Rule!6510) Bool)

(assert (=> b!1727012 (= res!775277 (contains!3377 rules!3447 rule!422))))

(declare-fun b!1727013 () Bool)

(declare-fun res!775272 () Bool)

(assert (=> b!1727013 (=> (not res!775272) (not e!1104767))))

(declare-fun isEmpty!11902 (List!18992) Bool)

(assert (=> b!1727013 (= res!775272 (not (isEmpty!11902 rules!3447)))))

(declare-fun b!1727014 () Bool)

(declare-fun e!1104753 () Bool)

(assert (=> b!1727014 (= e!1104767 e!1104753)))

(declare-fun res!775284 () Bool)

(assert (=> b!1727014 (=> (not res!775284) (not e!1104753))))

(declare-fun lt!661592 () Option!3734)

(declare-fun isDefined!3078 (Option!3734) Bool)

(assert (=> b!1727014 (= res!775284 (isDefined!3078 lt!661592))))

(assert (=> b!1727014 (= lt!661592 (maxPrefix!1538 thiss!24550 rules!3447 lt!661602))))

(declare-fun lt!661611 () BalanceConc!12530)

(assert (=> b!1727014 (= lt!661602 (list!7648 lt!661611))))

(assert (=> b!1727014 (= lt!661611 (charsOf!2004 token!523))))

(declare-fun b!1727015 () Bool)

(assert (=> b!1727015 (= e!1104745 (= (rule!5321 (_1!10705 lt!661591)) lt!661606))))

(declare-fun b!1727016 () Bool)

(declare-fun res!775285 () Bool)

(assert (=> b!1727016 (=> res!775285 e!1104765)))

(assert (=> b!1727016 (= res!775285 (isEmpty!11901 suffix!1421))))

(declare-fun b!1727017 () Bool)

(assert (=> b!1727017 (= e!1104753 e!1104758)))

(declare-fun res!775287 () Bool)

(assert (=> b!1727017 (=> (not res!775287) (not e!1104758))))

(assert (=> b!1727017 (= res!775287 (= (_1!10705 lt!661595) token!523))))

(assert (=> b!1727017 (= lt!661595 (get!5630 lt!661592))))

(declare-fun b!1727018 () Bool)

(assert (=> b!1727018 (= e!1104757 e!1104770)))

(declare-fun res!775288 () Bool)

(assert (=> b!1727018 (=> res!775288 e!1104770)))

(declare-fun dynLambda!8775 (Int TokenValue!3445) BalanceConc!12530)

(declare-fun dynLambda!8776 (Int BalanceConc!12530) TokenValue!3445)

(assert (=> b!1727018 (= res!775288 (not (= (list!7648 (dynLambda!8775 (toChars!4721 (transformation!3355 (rule!5321 (_1!10705 lt!661591)))) (dynLambda!8776 (toValue!4862 (transformation!3355 (rule!5321 (_1!10705 lt!661591)))) lt!661608))) lt!661617)))))

(declare-fun lt!661587 () Unit!32771)

(declare-fun lemmaSemiInverse!501 (TokenValueInjection!6550 BalanceConc!12530) Unit!32771)

(assert (=> b!1727018 (= lt!661587 (lemmaSemiInverse!501 (transformation!3355 (rule!5321 (_1!10705 lt!661591))) lt!661608))))

(declare-fun b!1727019 () Bool)

(declare-fun e!1104752 () Bool)

(assert (=> b!1727019 (= e!1104761 e!1104752)))

(declare-fun res!775271 () Bool)

(assert (=> b!1727019 (=> res!775271 e!1104752)))

(declare-fun lt!661594 () List!18991)

(declare-fun lt!661604 () Option!3734)

(assert (=> b!1727019 (= res!775271 (or (not (= lt!661594 (_2!10705 lt!661591))) (not (= lt!661604 (Some!3733 (tuple2!18607 (_1!10705 lt!661591) lt!661594))))))))

(assert (=> b!1727019 (= (_2!10705 lt!661591) lt!661594)))

(declare-fun lt!661615 () Unit!32771)

(declare-fun lemmaSamePrefixThenSameSuffix!740 (List!18991 List!18991 List!18991 List!18991 List!18991) Unit!32771)

(assert (=> b!1727019 (= lt!661615 (lemmaSamePrefixThenSameSuffix!740 lt!661617 (_2!10705 lt!661591) lt!661617 lt!661594 lt!661618))))

(declare-fun getSuffix!790 (List!18991 List!18991) List!18991)

(assert (=> b!1727019 (= lt!661594 (getSuffix!790 lt!661618 lt!661617))))

(declare-fun lt!661614 () Int)

(declare-fun lt!661603 () TokenValue!3445)

(assert (=> b!1727019 (= lt!661604 (Some!3733 (tuple2!18607 (Token!6277 lt!661603 (rule!5321 (_1!10705 lt!661591)) lt!661614 lt!661617) (_2!10705 lt!661591))))))

(declare-fun maxPrefixOneRule!914 (LexerInterface!2984 Rule!6510 List!18991) Option!3734)

(assert (=> b!1727019 (= lt!661604 (maxPrefixOneRule!914 thiss!24550 (rule!5321 (_1!10705 lt!661591)) lt!661618))))

(declare-fun size!15034 (List!18991) Int)

(assert (=> b!1727019 (= lt!661614 (size!15034 lt!661617))))

(assert (=> b!1727019 (= lt!661603 (apply!5160 (transformation!3355 (rule!5321 (_1!10705 lt!661591))) (seqFromList!2329 lt!661617)))))

(declare-fun lt!661599 () Unit!32771)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!313 (LexerInterface!2984 List!18992 List!18991 List!18991 List!18991 Rule!6510) Unit!32771)

(assert (=> b!1727019 (= lt!661599 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!313 thiss!24550 rules!3447 lt!661617 lt!661618 (_2!10705 lt!661591) (rule!5321 (_1!10705 lt!661591))))))

(declare-fun b!1727020 () Bool)

(declare-fun res!775289 () Bool)

(assert (=> b!1727020 (=> res!775289 e!1104770)))

(assert (=> b!1727020 (= res!775289 (not (= lt!661608 (dynLambda!8775 (toChars!4721 (transformation!3355 (rule!5321 (_1!10705 lt!661591)))) (value!105290 (_1!10705 lt!661591))))))))

(declare-fun b!1727021 () Bool)

(declare-fun tp_is_empty!7609 () Bool)

(declare-fun tp!492710 () Bool)

(assert (=> b!1727021 (= e!1104768 (and tp_is_empty!7609 tp!492710))))

(declare-fun b!1727022 () Bool)

(declare-fun e!1104756 () Bool)

(assert (=> b!1727022 (= e!1104756 true)))

(declare-fun lt!661613 () List!18991)

(assert (=> b!1727022 (= lt!661613 (++!5180 lt!661602 (getSuffix!790 lt!661618 lt!661602)))))

(assert (=> b!1727022 (matchR!2157 lt!661593 lt!661617)))

(declare-fun lt!661610 () Unit!32771)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!104 (LexerInterface!2984 List!18992 List!18991 Token!6276 Rule!6510 List!18991) Unit!32771)

(assert (=> b!1727022 (= lt!661610 (lemmaMaxPrefixThenMatchesRulesRegex!104 thiss!24550 rules!3447 lt!661618 (_1!10705 lt!661591) (rule!5321 (_1!10705 lt!661591)) (_2!10705 lt!661591)))))

(assert (=> b!1727023 (= e!1104748 (and tp!492715 tp!492706))))

(declare-fun e!1104763 () Bool)

(declare-fun tp!492711 () Bool)

(declare-fun b!1727024 () Bool)

(assert (=> b!1727024 (= e!1104763 (and tp!492711 (inv!24452 (tag!3675 (h!24323 rules!3447))) (inv!24458 (transformation!3355 (h!24323 rules!3447))) e!1104762))))

(declare-fun b!1727025 () Bool)

(declare-fun res!775280 () Bool)

(assert (=> b!1727025 (=> res!775280 e!1104754)))

(assert (=> b!1727025 (= res!775280 (not (matchR!2157 (regex!3355 (rule!5321 (_1!10705 lt!661591))) lt!661617)))))

(declare-fun b!1727026 () Bool)

(assert (=> b!1727026 (= e!1104752 e!1104756)))

(declare-fun res!775279 () Bool)

(assert (=> b!1727026 (=> res!775279 e!1104756)))

(assert (=> b!1727026 (= res!775279 (<= lt!661609 (size!15033 lt!661611)))))

(assert (=> b!1727026 (matchR!2157 lt!661593 lt!661602)))

(declare-fun lt!661600 () Unit!32771)

(assert (=> b!1727026 (= lt!661600 (lemmaMaxPrefixThenMatchesRulesRegex!104 thiss!24550 rules!3447 lt!661602 token!523 rule!422 Nil!18921))))

(declare-fun b!1727027 () Bool)

(declare-fun tp!492705 () Bool)

(assert (=> b!1727027 (= e!1104760 (and e!1104763 tp!492705))))

(assert (= (and start!169578 res!775270) b!1727013))

(assert (= (and b!1727013 res!775272) b!1727009))

(assert (= (and b!1727009 res!775274) b!1727012))

(assert (= (and b!1727012 res!775277) b!1727014))

(assert (= (and b!1727014 res!775284) b!1727017))

(assert (= (and b!1727017 res!775287) b!1726998))

(assert (= (and b!1726998 res!775290) b!1727006))

(assert (= (and b!1727006 res!775282) b!1727002))

(assert (= (and b!1727002 (not res!775273)) b!1727016))

(assert (= (and b!1727016 (not res!775285)) b!1727005))

(assert (= (and b!1727005 (not res!775275)) b!1727010))

(assert (= (and b!1727010 res!775278) b!1727001))

(assert (= (and b!1727001 res!775281) b!1727015))

(assert (= (and b!1727010 (not res!775286)) b!1727025))

(assert (= (and b!1727025 (not res!775280)) b!1727011))

(assert (= (and b!1727011 (not res!775283)) b!1727018))

(assert (= (and b!1727018 (not res!775288)) b!1727020))

(assert (= (and b!1727020 (not res!775289)) b!1726999))

(assert (= (and b!1726999 (not res!775276)) b!1727019))

(assert (= (and b!1727019 (not res!775271)) b!1727026))

(assert (= (and b!1727026 (not res!775279)) b!1727022))

(assert (= (and start!169578 ((_ is Cons!18921) suffix!1421)) b!1727021))

(assert (= b!1727004 b!1727023))

(assert (= start!169578 b!1727004))

(assert (= b!1727008 b!1727007))

(assert (= b!1727003 b!1727008))

(assert (= start!169578 b!1727003))

(assert (= b!1727024 b!1727000))

(assert (= b!1727027 b!1727024))

(assert (= (and start!169578 ((_ is Cons!18922) rules!3447)) b!1727027))

(declare-fun b_lambda!54967 () Bool)

(assert (=> (not b_lambda!54967) (not b!1727018)))

(declare-fun tb!102645 () Bool)

(declare-fun t!160200 () Bool)

(assert (=> (and b!1727000 (= (toChars!4721 (transformation!3355 (h!24323 rules!3447))) (toChars!4721 (transformation!3355 (rule!5321 (_1!10705 lt!661591))))) t!160200) tb!102645))

(declare-fun tp!492719 () Bool)

(declare-fun b!1727043 () Bool)

(declare-fun e!1104782 () Bool)

(declare-fun inv!24459 (Conc!6293) Bool)

(assert (=> b!1727043 (= e!1104782 (and (inv!24459 (c!282337 (dynLambda!8775 (toChars!4721 (transformation!3355 (rule!5321 (_1!10705 lt!661591)))) (dynLambda!8776 (toValue!4862 (transformation!3355 (rule!5321 (_1!10705 lt!661591)))) lt!661608)))) tp!492719))))

(declare-fun result!123400 () Bool)

(declare-fun inv!24460 (BalanceConc!12530) Bool)

(assert (=> tb!102645 (= result!123400 (and (inv!24460 (dynLambda!8775 (toChars!4721 (transformation!3355 (rule!5321 (_1!10705 lt!661591)))) (dynLambda!8776 (toValue!4862 (transformation!3355 (rule!5321 (_1!10705 lt!661591)))) lt!661608))) e!1104782))))

(assert (= tb!102645 b!1727043))

(declare-fun m!2133983 () Bool)

(assert (=> b!1727043 m!2133983))

(declare-fun m!2133985 () Bool)

(assert (=> tb!102645 m!2133985))

(assert (=> b!1727018 t!160200))

(declare-fun b_and!126831 () Bool)

(assert (= b_and!126821 (and (=> t!160200 result!123400) b_and!126831)))

(declare-fun tb!102647 () Bool)

(declare-fun t!160202 () Bool)

(assert (=> (and b!1727023 (= (toChars!4721 (transformation!3355 rule!422)) (toChars!4721 (transformation!3355 (rule!5321 (_1!10705 lt!661591))))) t!160202) tb!102647))

(declare-fun result!123404 () Bool)

(assert (= result!123404 result!123400))

(assert (=> b!1727018 t!160202))

(declare-fun b_and!126833 () Bool)

(assert (= b_and!126825 (and (=> t!160202 result!123404) b_and!126833)))

(declare-fun t!160204 () Bool)

(declare-fun tb!102649 () Bool)

(assert (=> (and b!1727007 (= (toChars!4721 (transformation!3355 (rule!5321 token!523))) (toChars!4721 (transformation!3355 (rule!5321 (_1!10705 lt!661591))))) t!160204) tb!102649))

(declare-fun result!123406 () Bool)

(assert (= result!123406 result!123400))

(assert (=> b!1727018 t!160204))

(declare-fun b_and!126835 () Bool)

(assert (= b_and!126829 (and (=> t!160204 result!123406) b_and!126835)))

(declare-fun b_lambda!54969 () Bool)

(assert (=> (not b_lambda!54969) (not b!1727018)))

(declare-fun tb!102651 () Bool)

(declare-fun t!160206 () Bool)

(assert (=> (and b!1727000 (= (toValue!4862 (transformation!3355 (h!24323 rules!3447))) (toValue!4862 (transformation!3355 (rule!5321 (_1!10705 lt!661591))))) t!160206) tb!102651))

(declare-fun result!123408 () Bool)

(assert (=> tb!102651 (= result!123408 (inv!21 (dynLambda!8776 (toValue!4862 (transformation!3355 (rule!5321 (_1!10705 lt!661591)))) lt!661608)))))

(declare-fun m!2133987 () Bool)

(assert (=> tb!102651 m!2133987))

(assert (=> b!1727018 t!160206))

(declare-fun b_and!126837 () Bool)

(assert (= b_and!126819 (and (=> t!160206 result!123408) b_and!126837)))

(declare-fun tb!102653 () Bool)

(declare-fun t!160208 () Bool)

(assert (=> (and b!1727023 (= (toValue!4862 (transformation!3355 rule!422)) (toValue!4862 (transformation!3355 (rule!5321 (_1!10705 lt!661591))))) t!160208) tb!102653))

(declare-fun result!123412 () Bool)

(assert (= result!123412 result!123408))

(assert (=> b!1727018 t!160208))

(declare-fun b_and!126839 () Bool)

(assert (= b_and!126823 (and (=> t!160208 result!123412) b_and!126839)))

(declare-fun tb!102655 () Bool)

(declare-fun t!160210 () Bool)

(assert (=> (and b!1727007 (= (toValue!4862 (transformation!3355 (rule!5321 token!523))) (toValue!4862 (transformation!3355 (rule!5321 (_1!10705 lt!661591))))) t!160210) tb!102655))

(declare-fun result!123414 () Bool)

(assert (= result!123414 result!123408))

(assert (=> b!1727018 t!160210))

(declare-fun b_and!126841 () Bool)

(assert (= b_and!126827 (and (=> t!160210 result!123414) b_and!126841)))

(declare-fun b_lambda!54971 () Bool)

(assert (=> (not b_lambda!54971) (not b!1727020)))

(declare-fun tb!102657 () Bool)

(declare-fun t!160212 () Bool)

(assert (=> (and b!1727000 (= (toChars!4721 (transformation!3355 (h!24323 rules!3447))) (toChars!4721 (transformation!3355 (rule!5321 (_1!10705 lt!661591))))) t!160212) tb!102657))

(declare-fun b!1727046 () Bool)

(declare-fun e!1104786 () Bool)

(declare-fun tp!492720 () Bool)

(assert (=> b!1727046 (= e!1104786 (and (inv!24459 (c!282337 (dynLambda!8775 (toChars!4721 (transformation!3355 (rule!5321 (_1!10705 lt!661591)))) (value!105290 (_1!10705 lt!661591))))) tp!492720))))

(declare-fun result!123416 () Bool)

(assert (=> tb!102657 (= result!123416 (and (inv!24460 (dynLambda!8775 (toChars!4721 (transformation!3355 (rule!5321 (_1!10705 lt!661591)))) (value!105290 (_1!10705 lt!661591)))) e!1104786))))

(assert (= tb!102657 b!1727046))

(declare-fun m!2133989 () Bool)

(assert (=> b!1727046 m!2133989))

(declare-fun m!2133991 () Bool)

(assert (=> tb!102657 m!2133991))

(assert (=> b!1727020 t!160212))

(declare-fun b_and!126843 () Bool)

(assert (= b_and!126831 (and (=> t!160212 result!123416) b_and!126843)))

(declare-fun t!160214 () Bool)

(declare-fun tb!102659 () Bool)

(assert (=> (and b!1727023 (= (toChars!4721 (transformation!3355 rule!422)) (toChars!4721 (transformation!3355 (rule!5321 (_1!10705 lt!661591))))) t!160214) tb!102659))

(declare-fun result!123418 () Bool)

(assert (= result!123418 result!123416))

(assert (=> b!1727020 t!160214))

(declare-fun b_and!126845 () Bool)

(assert (= b_and!126833 (and (=> t!160214 result!123418) b_and!126845)))

(declare-fun t!160216 () Bool)

(declare-fun tb!102661 () Bool)

(assert (=> (and b!1727007 (= (toChars!4721 (transformation!3355 (rule!5321 token!523))) (toChars!4721 (transformation!3355 (rule!5321 (_1!10705 lt!661591))))) t!160216) tb!102661))

(declare-fun result!123420 () Bool)

(assert (= result!123420 result!123416))

(assert (=> b!1727020 t!160216))

(declare-fun b_and!126847 () Bool)

(assert (= b_and!126835 (and (=> t!160216 result!123420) b_and!126847)))

(declare-fun m!2133993 () Bool)

(assert (=> b!1727013 m!2133993))

(declare-fun m!2133995 () Bool)

(assert (=> b!1727008 m!2133995))

(declare-fun m!2133997 () Bool)

(assert (=> b!1727008 m!2133997))

(declare-fun m!2133999 () Bool)

(assert (=> b!1727012 m!2133999))

(declare-fun m!2134001 () Bool)

(assert (=> b!1727017 m!2134001))

(declare-fun m!2134003 () Bool)

(assert (=> b!1726998 m!2134003))

(declare-fun m!2134005 () Bool)

(assert (=> b!1727024 m!2134005))

(declare-fun m!2134007 () Bool)

(assert (=> b!1727024 m!2134007))

(declare-fun m!2134009 () Bool)

(assert (=> b!1726999 m!2134009))

(declare-fun m!2134011 () Bool)

(assert (=> b!1726999 m!2134011))

(declare-fun m!2134013 () Bool)

(assert (=> b!1726999 m!2134013))

(declare-fun m!2134015 () Bool)

(assert (=> b!1726999 m!2134015))

(assert (=> b!1726999 m!2134009))

(declare-fun m!2134017 () Bool)

(assert (=> b!1726999 m!2134017))

(declare-fun m!2134019 () Bool)

(assert (=> b!1727022 m!2134019))

(assert (=> b!1727022 m!2134019))

(declare-fun m!2134021 () Bool)

(assert (=> b!1727022 m!2134021))

(declare-fun m!2134023 () Bool)

(assert (=> b!1727022 m!2134023))

(declare-fun m!2134025 () Bool)

(assert (=> b!1727022 m!2134025))

(declare-fun m!2134027 () Bool)

(assert (=> b!1727002 m!2134027))

(declare-fun m!2134029 () Bool)

(assert (=> b!1727002 m!2134029))

(declare-fun m!2134031 () Bool)

(assert (=> b!1727002 m!2134031))

(declare-fun m!2134033 () Bool)

(assert (=> b!1727001 m!2134033))

(assert (=> b!1727001 m!2134033))

(declare-fun m!2134035 () Bool)

(assert (=> b!1727001 m!2134035))

(assert (=> b!1727001 m!2134035))

(declare-fun m!2134037 () Bool)

(assert (=> b!1727001 m!2134037))

(declare-fun m!2134039 () Bool)

(assert (=> b!1727001 m!2134039))

(declare-fun m!2134041 () Bool)

(assert (=> b!1727009 m!2134041))

(declare-fun m!2134043 () Bool)

(assert (=> b!1727025 m!2134043))

(declare-fun m!2134045 () Bool)

(assert (=> b!1727020 m!2134045))

(declare-fun m!2134047 () Bool)

(assert (=> b!1727026 m!2134047))

(declare-fun m!2134049 () Bool)

(assert (=> b!1727026 m!2134049))

(declare-fun m!2134051 () Bool)

(assert (=> b!1727026 m!2134051))

(declare-fun m!2134053 () Bool)

(assert (=> b!1727011 m!2134053))

(declare-fun m!2134055 () Bool)

(assert (=> b!1727011 m!2134055))

(declare-fun m!2134057 () Bool)

(assert (=> b!1727019 m!2134057))

(declare-fun m!2134059 () Bool)

(assert (=> b!1727019 m!2134059))

(declare-fun m!2134061 () Bool)

(assert (=> b!1727019 m!2134061))

(declare-fun m!2134063 () Bool)

(assert (=> b!1727019 m!2134063))

(assert (=> b!1727019 m!2134061))

(declare-fun m!2134065 () Bool)

(assert (=> b!1727019 m!2134065))

(declare-fun m!2134067 () Bool)

(assert (=> b!1727019 m!2134067))

(declare-fun m!2134069 () Bool)

(assert (=> b!1727019 m!2134069))

(declare-fun m!2134071 () Bool)

(assert (=> b!1727016 m!2134071))

(declare-fun m!2134073 () Bool)

(assert (=> b!1727010 m!2134073))

(declare-fun m!2134075 () Bool)

(assert (=> b!1727010 m!2134075))

(declare-fun m!2134077 () Bool)

(assert (=> b!1727010 m!2134077))

(declare-fun m!2134079 () Bool)

(assert (=> b!1727010 m!2134079))

(declare-fun m!2134081 () Bool)

(assert (=> b!1727010 m!2134081))

(declare-fun m!2134083 () Bool)

(assert (=> b!1727010 m!2134083))

(declare-fun m!2134085 () Bool)

(assert (=> b!1727010 m!2134085))

(declare-fun m!2134087 () Bool)

(assert (=> b!1727010 m!2134087))

(declare-fun m!2134089 () Bool)

(assert (=> b!1727010 m!2134089))

(declare-fun m!2134091 () Bool)

(assert (=> b!1727010 m!2134091))

(assert (=> b!1727010 m!2134033))

(assert (=> b!1727010 m!2134079))

(declare-fun m!2134093 () Bool)

(assert (=> b!1727010 m!2134093))

(declare-fun m!2134095 () Bool)

(assert (=> b!1727010 m!2134095))

(declare-fun m!2134097 () Bool)

(assert (=> b!1727010 m!2134097))

(declare-fun m!2134099 () Bool)

(assert (=> b!1727010 m!2134099))

(declare-fun m!2134101 () Bool)

(assert (=> b!1727004 m!2134101))

(declare-fun m!2134103 () Bool)

(assert (=> b!1727004 m!2134103))

(declare-fun m!2134105 () Bool)

(assert (=> b!1727014 m!2134105))

(declare-fun m!2134107 () Bool)

(assert (=> b!1727014 m!2134107))

(declare-fun m!2134109 () Bool)

(assert (=> b!1727014 m!2134109))

(declare-fun m!2134111 () Bool)

(assert (=> b!1727014 m!2134111))

(declare-fun m!2134113 () Bool)

(assert (=> start!169578 m!2134113))

(declare-fun m!2134115 () Bool)

(assert (=> b!1727005 m!2134115))

(declare-fun m!2134117 () Bool)

(assert (=> b!1727005 m!2134117))

(assert (=> b!1727005 m!2134117))

(declare-fun m!2134119 () Bool)

(assert (=> b!1727005 m!2134119))

(declare-fun m!2134121 () Bool)

(assert (=> b!1727005 m!2134121))

(declare-fun m!2134123 () Bool)

(assert (=> b!1727003 m!2134123))

(declare-fun m!2134125 () Bool)

(assert (=> b!1727018 m!2134125))

(assert (=> b!1727018 m!2134125))

(declare-fun m!2134127 () Bool)

(assert (=> b!1727018 m!2134127))

(assert (=> b!1727018 m!2134127))

(declare-fun m!2134129 () Bool)

(assert (=> b!1727018 m!2134129))

(declare-fun m!2134131 () Bool)

(assert (=> b!1727018 m!2134131))

(check-sat (not b!1727027) (not b!1727009) b_and!126839 (not b!1727016) (not b!1727002) (not b!1727021) (not b!1727046) (not b!1727043) (not b!1727019) tp_is_empty!7609 (not b_lambda!54971) (not tb!102657) (not b_next!47869) (not b!1727010) (not b_lambda!54969) (not b!1727025) (not b!1727017) (not b_next!47877) (not b!1727018) (not b!1726998) (not b!1727022) (not b!1727024) (not b!1727003) (not b!1727004) (not b_next!47875) (not b_next!47871) (not b!1727012) (not b!1727008) (not start!169578) (not tb!102651) b_and!126843 b_and!126847 b_and!126845 b_and!126841 (not b_lambda!54967) (not b!1727026) (not b!1727005) (not b!1727013) (not b_next!47873) (not tb!102645) b_and!126837 (not b_next!47867) (not b!1726999) (not b!1727011) (not b!1727001) (not b!1727014))
(check-sat (not b_next!47869) (not b_next!47877) b_and!126843 b_and!126841 b_and!126839 (not b_next!47873) b_and!126837 (not b_next!47867) (not b_next!47875) (not b_next!47871) b_and!126847 b_and!126845)
