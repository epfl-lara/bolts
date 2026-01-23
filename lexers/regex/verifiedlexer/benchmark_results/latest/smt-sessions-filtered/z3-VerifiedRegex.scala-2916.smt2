; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!170934 () Bool)

(assert start!170934)

(declare-fun b!1737261 () Bool)

(declare-fun b_free!47675 () Bool)

(declare-fun b_next!48379 () Bool)

(assert (=> b!1737261 (= b_free!47675 (not b_next!48379))))

(declare-fun tp!494989 () Bool)

(declare-fun b_and!128771 () Bool)

(assert (=> b!1737261 (= tp!494989 b_and!128771)))

(declare-fun b_free!47677 () Bool)

(declare-fun b_next!48381 () Bool)

(assert (=> b!1737261 (= b_free!47677 (not b_next!48381))))

(declare-fun tp!494990 () Bool)

(declare-fun b_and!128773 () Bool)

(assert (=> b!1737261 (= tp!494990 b_and!128773)))

(declare-fun b!1737284 () Bool)

(declare-fun b_free!47679 () Bool)

(declare-fun b_next!48383 () Bool)

(assert (=> b!1737284 (= b_free!47679 (not b_next!48383))))

(declare-fun tp!494982 () Bool)

(declare-fun b_and!128775 () Bool)

(assert (=> b!1737284 (= tp!494982 b_and!128775)))

(declare-fun b_free!47681 () Bool)

(declare-fun b_next!48385 () Bool)

(assert (=> b!1737284 (= b_free!47681 (not b_next!48385))))

(declare-fun tp!494986 () Bool)

(declare-fun b_and!128777 () Bool)

(assert (=> b!1737284 (= tp!494986 b_and!128777)))

(declare-fun b!1737287 () Bool)

(declare-fun b_free!47683 () Bool)

(declare-fun b_next!48387 () Bool)

(assert (=> b!1737287 (= b_free!47683 (not b_next!48387))))

(declare-fun tp!494985 () Bool)

(declare-fun b_and!128779 () Bool)

(assert (=> b!1737287 (= tp!494985 b_and!128779)))

(declare-fun b_free!47685 () Bool)

(declare-fun b_next!48389 () Bool)

(assert (=> b!1737287 (= b_free!47685 (not b_next!48389))))

(declare-fun tp!494991 () Bool)

(declare-fun b_and!128781 () Bool)

(assert (=> b!1737287 (= tp!494991 b_and!128781)))

(declare-fun b!1737310 () Bool)

(declare-fun e!1111807 () Bool)

(assert (=> b!1737310 (= e!1111807 true)))

(declare-fun b!1737309 () Bool)

(declare-fun e!1111806 () Bool)

(assert (=> b!1737309 (= e!1111806 e!1111807)))

(declare-fun b!1737308 () Bool)

(declare-fun e!1111805 () Bool)

(assert (=> b!1737308 (= e!1111805 e!1111806)))

(declare-fun b!1737296 () Bool)

(assert (=> b!1737296 e!1111805))

(assert (= b!1737309 b!1737310))

(assert (= b!1737308 b!1737309))

(assert (= b!1737296 b!1737308))

(declare-fun order!11861 () Int)

(declare-datatypes ((List!19145 0))(
  ( (Nil!19075) (Cons!19075 (h!24476 (_ BitVec 16)) (t!161476 List!19145)) )
))
(declare-datatypes ((TokenValue!3483 0))(
  ( (FloatLiteralValue!6966 (text!24826 List!19145)) (TokenValueExt!3482 (__x!12268 Int)) (Broken!17415 (value!106347 List!19145)) (Object!3552) (End!3483) (Def!3483) (Underscore!3483) (Match!3483) (Else!3483) (Error!3483) (Case!3483) (If!3483) (Extends!3483) (Abstract!3483) (Class!3483) (Val!3483) (DelimiterValue!6966 (del!3543 List!19145)) (KeywordValue!3489 (value!106348 List!19145)) (CommentValue!6966 (value!106349 List!19145)) (WhitespaceValue!6966 (value!106350 List!19145)) (IndentationValue!3483 (value!106351 List!19145)) (String!21746) (Int32!3483) (Broken!17416 (value!106352 List!19145)) (Boolean!3484) (Unit!33014) (OperatorValue!3486 (op!3543 List!19145)) (IdentifierValue!6966 (value!106353 List!19145)) (IdentifierValue!6967 (value!106354 List!19145)) (WhitespaceValue!6967 (value!106355 List!19145)) (True!6966) (False!6966) (Broken!17417 (value!106356 List!19145)) (Broken!17418 (value!106357 List!19145)) (True!6967) (RightBrace!3483) (RightBracket!3483) (Colon!3483) (Null!3483) (Comma!3483) (LeftBracket!3483) (False!6967) (LeftBrace!3483) (ImaginaryLiteralValue!3483 (text!24827 List!19145)) (StringLiteralValue!10449 (value!106358 List!19145)) (EOFValue!3483 (value!106359 List!19145)) (IdentValue!3483 (value!106360 List!19145)) (DelimiterValue!6967 (value!106361 List!19145)) (DedentValue!3483 (value!106362 List!19145)) (NewLineValue!3483 (value!106363 List!19145)) (IntegerValue!10449 (value!106364 (_ BitVec 32)) (text!24828 List!19145)) (IntegerValue!10450 (value!106365 Int) (text!24829 List!19145)) (Times!3483) (Or!3483) (Equal!3483) (Minus!3483) (Broken!17419 (value!106366 List!19145)) (And!3483) (Div!3483) (LessEqual!3483) (Mod!3483) (Concat!8204) (Not!3483) (Plus!3483) (SpaceValue!3483 (value!106367 List!19145)) (IntegerValue!10451 (value!106368 Int) (text!24830 List!19145)) (StringLiteralValue!10450 (text!24831 List!19145)) (FloatLiteralValue!6967 (text!24832 List!19145)) (BytesLiteralValue!3483 (value!106369 List!19145)) (CommentValue!6967 (value!106370 List!19145)) (StringLiteralValue!10451 (value!106371 List!19145)) (ErrorTokenValue!3483 (msg!3544 List!19145)) )
))
(declare-datatypes ((C!9616 0))(
  ( (C!9617 (val!5404 Int)) )
))
(declare-datatypes ((List!19146 0))(
  ( (Nil!19076) (Cons!19076 (h!24477 C!9616) (t!161477 List!19146)) )
))
(declare-datatypes ((Regex!4721 0))(
  ( (ElementMatch!4721 (c!283532 C!9616)) (Concat!8205 (regOne!9954 Regex!4721) (regTwo!9954 Regex!4721)) (EmptyExpr!4721) (Star!4721 (reg!5050 Regex!4721)) (EmptyLang!4721) (Union!4721 (regOne!9955 Regex!4721) (regTwo!9955 Regex!4721)) )
))
(declare-datatypes ((String!21747 0))(
  ( (String!21748 (value!106372 String)) )
))
(declare-datatypes ((IArray!12695 0))(
  ( (IArray!12696 (innerList!6405 List!19146)) )
))
(declare-datatypes ((Conc!6345 0))(
  ( (Node!6345 (left!15251 Conc!6345) (right!15581 Conc!6345) (csize!12920 Int) (cheight!6556 Int)) (Leaf!9262 (xs!9221 IArray!12695) (csize!12921 Int)) (Empty!6345) )
))
(declare-datatypes ((BalanceConc!12634 0))(
  ( (BalanceConc!12635 (c!283533 Conc!6345)) )
))
(declare-datatypes ((TokenValueInjection!6626 0))(
  ( (TokenValueInjection!6627 (toValue!4900 Int) (toChars!4759 Int)) )
))
(declare-datatypes ((Rule!6586 0))(
  ( (Rule!6587 (regex!3393 Regex!4721) (tag!3727 String!21747) (isSeparator!3393 Bool) (transformation!3393 TokenValueInjection!6626)) )
))
(declare-datatypes ((Token!6352 0))(
  ( (Token!6353 (value!106373 TokenValue!3483) (rule!5387 Rule!6586) (size!15160 Int) (originalCharacters!4207 List!19146)) )
))
(declare-datatypes ((tuple2!18738 0))(
  ( (tuple2!18739 (_1!10771 Token!6352) (_2!10771 List!19146)) )
))
(declare-fun lt!668556 () tuple2!18738)

(declare-fun lambda!69518 () Int)

(declare-fun order!11859 () Int)

(declare-fun dynLambda!8976 (Int Int) Int)

(declare-fun dynLambda!8977 (Int Int) Int)

(assert (=> b!1737310 (< (dynLambda!8976 order!11859 (toValue!4900 (transformation!3393 (rule!5387 (_1!10771 lt!668556))))) (dynLambda!8977 order!11861 lambda!69518))))

(declare-fun order!11863 () Int)

(declare-fun dynLambda!8978 (Int Int) Int)

(assert (=> b!1737310 (< (dynLambda!8978 order!11863 (toChars!4759 (transformation!3393 (rule!5387 (_1!10771 lt!668556))))) (dynLambda!8977 order!11861 lambda!69518))))

(declare-fun b!1737254 () Bool)

(declare-fun e!1111780 () Bool)

(declare-fun e!1111775 () Bool)

(assert (=> b!1737254 (= e!1111780 (not e!1111775))))

(declare-fun res!780793 () Bool)

(assert (=> b!1737254 (=> res!780793 e!1111775)))

(declare-fun rule!422 () Rule!6586)

(declare-fun lt!668574 () List!19146)

(declare-fun matchR!2195 (Regex!4721 List!19146) Bool)

(assert (=> b!1737254 (= res!780793 (not (matchR!2195 (regex!3393 rule!422) lt!668574)))))

(declare-datatypes ((LexerInterface!3022 0))(
  ( (LexerInterfaceExt!3019 (__x!12269 Int)) (Lexer!3020) )
))
(declare-fun thiss!24550 () LexerInterface!3022)

(declare-fun ruleValid!892 (LexerInterface!3022 Rule!6586) Bool)

(assert (=> b!1737254 (ruleValid!892 thiss!24550 rule!422)))

(declare-datatypes ((Unit!33015 0))(
  ( (Unit!33016) )
))
(declare-fun lt!668552 () Unit!33015)

(declare-datatypes ((List!19147 0))(
  ( (Nil!19077) (Cons!19077 (h!24478 Rule!6586) (t!161478 List!19147)) )
))
(declare-fun rules!3447 () List!19147)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!416 (LexerInterface!3022 Rule!6586 List!19147) Unit!33015)

(assert (=> b!1737254 (= lt!668552 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!416 thiss!24550 rule!422 rules!3447))))

(declare-fun e!1111781 () Bool)

(declare-fun token!523 () Token!6352)

(declare-fun tp!494992 () Bool)

(declare-fun b!1737255 () Bool)

(declare-fun e!1111788 () Bool)

(declare-fun inv!21 (TokenValue!3483) Bool)

(assert (=> b!1737255 (= e!1111781 (and (inv!21 (value!106373 token!523)) e!1111788 tp!494992))))

(declare-fun b!1737256 () Bool)

(declare-fun res!780779 () Bool)

(declare-fun e!1111776 () Bool)

(assert (=> b!1737256 (=> res!780779 e!1111776)))

(declare-fun isPrefix!1634 (List!19146 List!19146) Bool)

(assert (=> b!1737256 (= res!780779 (not (isPrefix!1634 lt!668574 lt!668574)))))

(declare-fun b!1737257 () Bool)

(declare-fun e!1111774 () Bool)

(declare-fun tp_is_empty!7685 () Bool)

(declare-fun tp!494983 () Bool)

(assert (=> b!1737257 (= e!1111774 (and tp_is_empty!7685 tp!494983))))

(declare-fun b!1737258 () Bool)

(declare-fun res!780794 () Bool)

(declare-fun e!1111782 () Bool)

(assert (=> b!1737258 (=> res!780794 e!1111782)))

(declare-fun lt!668559 () List!19146)

(assert (=> b!1737258 (= res!780794 (not (matchR!2195 (regex!3393 (rule!5387 (_1!10771 lt!668556))) lt!668559)))))

(declare-fun e!1111765 () Bool)

(declare-fun b!1737259 () Bool)

(declare-fun tp!494987 () Bool)

(declare-fun e!1111798 () Bool)

(declare-fun inv!24701 (String!21747) Bool)

(declare-fun inv!24706 (TokenValueInjection!6626) Bool)

(assert (=> b!1737259 (= e!1111765 (and tp!494987 (inv!24701 (tag!3727 rule!422)) (inv!24706 (transformation!3393 rule!422)) e!1111798))))

(declare-fun b!1737260 () Bool)

(declare-fun e!1111771 () Bool)

(assert (=> b!1737260 (= e!1111776 e!1111771)))

(declare-fun res!780806 () Bool)

(assert (=> b!1737260 (=> res!780806 e!1111771)))

(declare-fun lt!668568 () BalanceConc!12634)

(declare-datatypes ((Option!3810 0))(
  ( (None!3809) (Some!3809 (v!25236 tuple2!18738)) )
))
(declare-fun lt!668557 () Option!3810)

(declare-fun apply!5198 (TokenValueInjection!6626 BalanceConc!12634) TokenValue!3483)

(declare-fun size!15161 (List!19146) Int)

(declare-fun getSuffix!828 (List!19146 List!19146) List!19146)

(assert (=> b!1737260 (= res!780806 (not (= lt!668557 (Some!3809 (tuple2!18739 (Token!6353 (apply!5198 (transformation!3393 (rule!5387 token!523)) lt!668568) (rule!5387 token!523) (size!15161 lt!668574) lt!668574) (getSuffix!828 lt!668574 lt!668574))))))))

(declare-fun lt!668562 () Unit!33015)

(declare-fun lemmaSemiInverse!539 (TokenValueInjection!6626 BalanceConc!12634) Unit!33015)

(assert (=> b!1737260 (= lt!668562 (lemmaSemiInverse!539 (transformation!3393 (rule!5387 token!523)) lt!668568))))

(declare-fun seqFromList!2367 (List!19146) BalanceConc!12634)

(assert (=> b!1737260 (= lt!668568 (seqFromList!2367 lt!668574))))

(assert (=> b!1737261 (= e!1111798 (and tp!494989 tp!494990))))

(declare-fun b!1737262 () Bool)

(declare-fun res!780804 () Bool)

(declare-fun e!1111772 () Bool)

(assert (=> b!1737262 (=> (not res!780804) (not e!1111772))))

(declare-fun isEmpty!12005 (List!19147) Bool)

(assert (=> b!1737262 (= res!780804 (not (isEmpty!12005 rules!3447)))))

(declare-fun b!1737263 () Bool)

(declare-fun e!1111770 () Bool)

(assert (=> b!1737263 (= e!1111770 e!1111776)))

(declare-fun res!780801 () Bool)

(assert (=> b!1737263 (=> res!780801 e!1111776)))

(declare-fun lt!668550 () Int)

(declare-fun lt!668573 () Int)

(assert (=> b!1737263 (= res!780801 (>= lt!668550 lt!668573))))

(declare-fun lt!668575 () Unit!33015)

(declare-fun e!1111795 () Unit!33015)

(assert (=> b!1737263 (= lt!668575 e!1111795)))

(declare-fun c!283530 () Bool)

(assert (=> b!1737263 (= c!283530 (< lt!668573 lt!668550))))

(declare-fun getIndex!160 (List!19147 Rule!6586) Int)

(assert (=> b!1737263 (= lt!668550 (getIndex!160 rules!3447 (rule!5387 (_1!10771 lt!668556))))))

(assert (=> b!1737263 (= lt!668573 (getIndex!160 rules!3447 (rule!5387 token!523)))))

(declare-fun b!1737264 () Bool)

(declare-fun res!780788 () Bool)

(assert (=> b!1737264 (=> (not res!780788) (not e!1111780))))

(declare-fun lt!668537 () tuple2!18738)

(declare-fun isEmpty!12006 (List!19146) Bool)

(assert (=> b!1737264 (= res!780788 (isEmpty!12006 (_2!10771 lt!668537)))))

(declare-fun b!1737265 () Bool)

(declare-fun e!1111768 () Bool)

(declare-fun lt!668566 () Rule!6586)

(assert (=> b!1737265 (= e!1111768 (= (rule!5387 (_1!10771 lt!668556)) lt!668566))))

(declare-fun b!1737266 () Bool)

(declare-fun res!780787 () Bool)

(assert (=> b!1737266 (=> (not res!780787) (not e!1111780))))

(assert (=> b!1737266 (= res!780787 (= (rule!5387 token!523) rule!422))))

(declare-fun b!1737267 () Bool)

(declare-fun res!780789 () Bool)

(assert (=> b!1737267 (=> (not res!780789) (not e!1111772))))

(declare-fun contains!3415 (List!19147 Rule!6586) Bool)

(assert (=> b!1737267 (= res!780789 (contains!3415 rules!3447 rule!422))))

(declare-fun b!1737268 () Bool)

(declare-fun e!1111797 () Bool)

(assert (=> b!1737268 (= e!1111775 e!1111797)))

(declare-fun res!780781 () Bool)

(assert (=> b!1737268 (=> res!780781 e!1111797)))

(declare-fun lt!668542 () Regex!4721)

(declare-fun lt!668549 () List!19146)

(declare-fun prefixMatch!606 (Regex!4721 List!19146) Bool)

(assert (=> b!1737268 (= res!780781 (prefixMatch!606 lt!668542 lt!668549))))

(declare-fun suffix!1421 () List!19146)

(declare-fun ++!5218 (List!19146 List!19146) List!19146)

(declare-fun head!3970 (List!19146) C!9616)

(assert (=> b!1737268 (= lt!668549 (++!5218 lt!668574 (Cons!19076 (head!3970 suffix!1421) Nil!19076)))))

(declare-fun rulesRegex!751 (LexerInterface!3022 List!19147) Regex!4721)

(assert (=> b!1737268 (= lt!668542 (rulesRegex!751 thiss!24550 rules!3447))))

(declare-fun b!1737269 () Bool)

(declare-fun e!1111773 () Bool)

(assert (=> b!1737269 (= e!1111773 e!1111780)))

(declare-fun res!780780 () Bool)

(assert (=> b!1737269 (=> (not res!780780) (not e!1111780))))

(assert (=> b!1737269 (= res!780780 (= (_1!10771 lt!668537) token!523))))

(declare-fun get!5724 (Option!3810) tuple2!18738)

(assert (=> b!1737269 (= lt!668537 (get!5724 lt!668557))))

(declare-fun b!1737270 () Bool)

(declare-fun e!1111785 () Bool)

(declare-fun e!1111784 () Bool)

(assert (=> b!1737270 (= e!1111785 e!1111784)))

(declare-fun res!780784 () Bool)

(assert (=> b!1737270 (=> res!780784 e!1111784)))

(declare-fun lt!668579 () Bool)

(assert (=> b!1737270 (= res!780784 lt!668579)))

(declare-fun lt!668545 () Unit!33015)

(declare-fun e!1111794 () Unit!33015)

(assert (=> b!1737270 (= lt!668545 e!1111794)))

(declare-fun c!283529 () Bool)

(assert (=> b!1737270 (= c!283529 lt!668579)))

(declare-fun lt!668560 () Int)

(declare-fun lt!668561 () Int)

(assert (=> b!1737270 (= lt!668579 (> lt!668560 lt!668561))))

(declare-fun lt!668567 () BalanceConc!12634)

(declare-fun size!15162 (BalanceConc!12634) Int)

(assert (=> b!1737270 (= lt!668561 (size!15162 lt!668567))))

(assert (=> b!1737270 (matchR!2195 lt!668542 lt!668574)))

(declare-fun lt!668571 () Unit!33015)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!142 (LexerInterface!3022 List!19147 List!19146 Token!6352 Rule!6586 List!19146) Unit!33015)

(assert (=> b!1737270 (= lt!668571 (lemmaMaxPrefixThenMatchesRulesRegex!142 thiss!24550 rules!3447 lt!668574 token!523 rule!422 Nil!19076))))

(declare-fun b!1737271 () Bool)

(declare-fun Unit!33017 () Unit!33015)

(assert (=> b!1737271 (= e!1111795 Unit!33017)))

(declare-fun b!1737272 () Bool)

(declare-fun e!1111769 () Bool)

(assert (=> b!1737272 (= e!1111769 false)))

(declare-fun b!1737273 () Bool)

(declare-fun Unit!33018 () Unit!33015)

(assert (=> b!1737273 (= e!1111794 Unit!33018)))

(declare-fun lt!668569 () Unit!33015)

(declare-fun lt!668576 () List!19146)

(assert (=> b!1737273 (= lt!668569 (lemmaMaxPrefixThenMatchesRulesRegex!142 thiss!24550 rules!3447 lt!668576 (_1!10771 lt!668556) (rule!5387 (_1!10771 lt!668556)) (_2!10771 lt!668556)))))

(assert (=> b!1737273 (matchR!2195 lt!668542 lt!668559)))

(declare-fun lt!668585 () List!19146)

(assert (=> b!1737273 (= lt!668585 (getSuffix!828 lt!668576 lt!668574))))

(declare-fun lt!668553 () Unit!33015)

(declare-fun lemmaSamePrefixThenSameSuffix!778 (List!19146 List!19146 List!19146 List!19146 List!19146) Unit!33015)

(assert (=> b!1737273 (= lt!668553 (lemmaSamePrefixThenSameSuffix!778 lt!668574 suffix!1421 lt!668574 lt!668585 lt!668576))))

(assert (=> b!1737273 (= suffix!1421 lt!668585)))

(declare-fun lt!668584 () Unit!33015)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!229 (List!19146 List!19146) Unit!33015)

(assert (=> b!1737273 (= lt!668584 (lemmaAddHeadSuffixToPrefixStillPrefix!229 lt!668574 lt!668576))))

(assert (=> b!1737273 (isPrefix!1634 (++!5218 lt!668574 (Cons!19076 (head!3970 lt!668585) Nil!19076)) lt!668576)))

(declare-fun lt!668572 () Unit!33015)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!109 (List!19146 List!19146 List!19146) Unit!33015)

(assert (=> b!1737273 (= lt!668572 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!109 lt!668559 lt!668549 lt!668576))))

(assert (=> b!1737273 (isPrefix!1634 lt!668549 lt!668559)))

(declare-fun lt!668555 () Unit!33015)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!102 (Regex!4721 List!19146 List!19146) Unit!33015)

(assert (=> b!1737273 (= lt!668555 (lemmaNotPrefixMatchThenCannotMatchLonger!102 lt!668542 lt!668549 lt!668559))))

(assert (=> b!1737273 false))

(declare-fun b!1737274 () Bool)

(declare-fun e!1111789 () Bool)

(assert (=> b!1737274 (= e!1111789 e!1111768)))

(declare-fun res!780803 () Bool)

(assert (=> b!1737274 (=> (not res!780803) (not e!1111768))))

(declare-fun list!7714 (BalanceConc!12634) List!19146)

(declare-fun charsOf!2042 (Token!6352) BalanceConc!12634)

(assert (=> b!1737274 (= res!780803 (matchR!2195 (regex!3393 lt!668566) (list!7714 (charsOf!2042 (_1!10771 lt!668556)))))))

(declare-datatypes ((Option!3811 0))(
  ( (None!3810) (Some!3810 (v!25237 Rule!6586)) )
))
(declare-fun lt!668565 () Option!3811)

(declare-fun get!5725 (Option!3811) Rule!6586)

(assert (=> b!1737274 (= lt!668566 (get!5725 lt!668565))))

(declare-fun b!1737275 () Bool)

(declare-fun e!1111778 () Bool)

(declare-fun e!1111766 () Bool)

(declare-fun tp!494981 () Bool)

(assert (=> b!1737275 (= e!1111778 (and e!1111766 tp!494981))))

(declare-fun b!1737276 () Bool)

(declare-fun e!1111779 () Bool)

(assert (=> b!1737276 (= e!1111779 e!1111785)))

(declare-fun res!780786 () Bool)

(assert (=> b!1737276 (=> res!780786 e!1111785)))

(declare-fun lt!668581 () Option!3810)

(declare-fun lt!668578 () List!19146)

(assert (=> b!1737276 (= res!780786 (or (not (= lt!668578 (_2!10771 lt!668556))) (not (= lt!668581 (Some!3809 (tuple2!18739 (_1!10771 lt!668556) lt!668578))))))))

(assert (=> b!1737276 (= (_2!10771 lt!668556) lt!668578)))

(declare-fun lt!668547 () Unit!33015)

(assert (=> b!1737276 (= lt!668547 (lemmaSamePrefixThenSameSuffix!778 lt!668559 (_2!10771 lt!668556) lt!668559 lt!668578 lt!668576))))

(assert (=> b!1737276 (= lt!668578 (getSuffix!828 lt!668576 lt!668559))))

(declare-fun lt!668539 () Int)

(declare-fun lt!668536 () TokenValue!3483)

(assert (=> b!1737276 (= lt!668581 (Some!3809 (tuple2!18739 (Token!6353 lt!668536 (rule!5387 (_1!10771 lt!668556)) lt!668539 lt!668559) (_2!10771 lt!668556))))))

(declare-fun maxPrefixOneRule!952 (LexerInterface!3022 Rule!6586 List!19146) Option!3810)

(assert (=> b!1737276 (= lt!668581 (maxPrefixOneRule!952 thiss!24550 (rule!5387 (_1!10771 lt!668556)) lt!668576))))

(assert (=> b!1737276 (= lt!668539 (size!15161 lt!668559))))

(assert (=> b!1737276 (= lt!668536 (apply!5198 (transformation!3393 (rule!5387 (_1!10771 lt!668556))) (seqFromList!2367 lt!668559)))))

(declare-fun lt!668577 () Unit!33015)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!351 (LexerInterface!3022 List!19147 List!19146 List!19146 List!19146 Rule!6586) Unit!33015)

(assert (=> b!1737276 (= lt!668577 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!351 thiss!24550 rules!3447 lt!668559 lt!668576 (_2!10771 lt!668556) (rule!5387 (_1!10771 lt!668556))))))

(declare-fun b!1737277 () Bool)

(assert (=> b!1737277 (= e!1111797 e!1111782)))

(declare-fun res!780797 () Bool)

(assert (=> b!1737277 (=> res!780797 e!1111782)))

(assert (=> b!1737277 (= res!780797 (not (isPrefix!1634 lt!668559 lt!668576)))))

(assert (=> b!1737277 (isPrefix!1634 lt!668559 (++!5218 lt!668559 (_2!10771 lt!668556)))))

(declare-fun lt!668544 () Unit!33015)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1144 (List!19146 List!19146) Unit!33015)

(assert (=> b!1737277 (= lt!668544 (lemmaConcatTwoListThenFirstIsPrefix!1144 lt!668559 (_2!10771 lt!668556)))))

(declare-fun lt!668563 () BalanceConc!12634)

(assert (=> b!1737277 (= lt!668559 (list!7714 lt!668563))))

(assert (=> b!1737277 (= lt!668563 (charsOf!2042 (_1!10771 lt!668556)))))

(assert (=> b!1737277 e!1111789))

(declare-fun res!780778 () Bool)

(assert (=> b!1737277 (=> (not res!780778) (not e!1111789))))

(declare-fun isDefined!3153 (Option!3811) Bool)

(assert (=> b!1737277 (= res!780778 (isDefined!3153 lt!668565))))

(declare-fun getRuleFromTag!443 (LexerInterface!3022 List!19147 String!21747) Option!3811)

(assert (=> b!1737277 (= lt!668565 (getRuleFromTag!443 thiss!24550 rules!3447 (tag!3727 (rule!5387 (_1!10771 lt!668556)))))))

(declare-fun lt!668582 () Unit!33015)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!443 (LexerInterface!3022 List!19147 List!19146 Token!6352) Unit!33015)

(assert (=> b!1737277 (= lt!668582 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!443 thiss!24550 rules!3447 lt!668576 (_1!10771 lt!668556)))))

(declare-fun lt!668554 () Option!3810)

(assert (=> b!1737277 (= lt!668556 (get!5724 lt!668554))))

(declare-fun lt!668546 () Unit!33015)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!546 (LexerInterface!3022 List!19147 List!19146 List!19146) Unit!33015)

(assert (=> b!1737277 (= lt!668546 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!546 thiss!24550 rules!3447 lt!668574 suffix!1421))))

(declare-fun maxPrefix!1576 (LexerInterface!3022 List!19147 List!19146) Option!3810)

(assert (=> b!1737277 (= lt!668554 (maxPrefix!1576 thiss!24550 rules!3447 lt!668576))))

(assert (=> b!1737277 (isPrefix!1634 lt!668574 lt!668576)))

(declare-fun lt!668583 () Unit!33015)

(assert (=> b!1737277 (= lt!668583 (lemmaConcatTwoListThenFirstIsPrefix!1144 lt!668574 suffix!1421))))

(assert (=> b!1737277 (= lt!668576 (++!5218 lt!668574 suffix!1421))))

(declare-fun b!1737278 () Bool)

(declare-fun res!780798 () Bool)

(assert (=> b!1737278 (=> res!780798 e!1111776)))

(assert (=> b!1737278 (= res!780798 (isEmpty!12006 lt!668574))))

(declare-fun b!1737279 () Bool)

(declare-fun res!780777 () Bool)

(assert (=> b!1737279 (=> res!780777 e!1111771)))

(assert (=> b!1737279 (= res!780777 (not (matchR!2195 (regex!3393 (rule!5387 token!523)) lt!668574)))))

(declare-fun b!1737280 () Bool)

(declare-fun res!780782 () Bool)

(assert (=> b!1737280 (=> (not res!780782) (not e!1111772))))

(declare-fun rulesInvariant!2691 (LexerInterface!3022 List!19147) Bool)

(assert (=> b!1737280 (= res!780782 (rulesInvariant!2691 thiss!24550 rules!3447))))

(declare-fun b!1737281 () Bool)

(declare-fun e!1111796 () Unit!33015)

(declare-fun Unit!33019 () Unit!33015)

(assert (=> b!1737281 (= e!1111796 Unit!33019)))

(declare-fun lt!668543 () Unit!33015)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!190 (LexerInterface!3022 List!19147 Rule!6586 List!19146 List!19146 List!19146 Rule!6586) Unit!33015)

(assert (=> b!1737281 (= lt!668543 (lemmaMaxPrefixOutputsMaxPrefix!190 thiss!24550 rules!3447 (rule!5387 (_1!10771 lt!668556)) lt!668559 lt!668576 lt!668574 rule!422))))

(assert (=> b!1737281 false))

(declare-fun b!1737282 () Bool)

(declare-fun e!1111767 () Bool)

(assert (=> b!1737282 (= e!1111767 e!1111770)))

(declare-fun res!780795 () Bool)

(assert (=> b!1737282 (=> res!780795 e!1111770)))

(assert (=> b!1737282 (= res!780795 (= (rule!5387 (_1!10771 lt!668556)) (rule!5387 token!523)))))

(assert (=> b!1737282 (= suffix!1421 (_2!10771 lt!668556))))

(declare-fun lt!668564 () Unit!33015)

(assert (=> b!1737282 (= lt!668564 (lemmaSamePrefixThenSameSuffix!778 lt!668574 suffix!1421 lt!668574 (_2!10771 lt!668556) lt!668576))))

(assert (=> b!1737282 (= lt!668559 lt!668574)))

(declare-fun lt!668558 () Unit!33015)

(declare-fun lemmaIsPrefixSameLengthThenSameList!221 (List!19146 List!19146 List!19146) Unit!33015)

(assert (=> b!1737282 (= lt!668558 (lemmaIsPrefixSameLengthThenSameList!221 lt!668559 lt!668574 lt!668576))))

(declare-fun b!1737283 () Bool)

(assert (=> b!1737283 (= e!1111784 e!1111767)))

(declare-fun res!780800 () Bool)

(assert (=> b!1737283 (=> res!780800 e!1111767)))

(assert (=> b!1737283 (= res!780800 (not (= lt!668560 lt!668561)))))

(declare-fun lt!668538 () Unit!33015)

(assert (=> b!1737283 (= lt!668538 e!1111796)))

(declare-fun c!283531 () Bool)

(assert (=> b!1737283 (= c!283531 (< lt!668560 lt!668561))))

(declare-fun e!1111793 () Bool)

(assert (=> b!1737284 (= e!1111793 (and tp!494982 tp!494986))))

(declare-fun b!1737285 () Bool)

(declare-fun res!780790 () Bool)

(assert (=> b!1737285 (=> res!780790 e!1111775)))

(assert (=> b!1737285 (= res!780790 (isEmpty!12006 suffix!1421))))

(declare-fun b!1737286 () Bool)

(declare-fun res!780783 () Bool)

(declare-fun e!1111786 () Bool)

(assert (=> b!1737286 (=> res!780783 e!1111786)))

(declare-fun dynLambda!8979 (Int TokenValue!3483) BalanceConc!12634)

(assert (=> b!1737286 (= res!780783 (not (= lt!668563 (dynLambda!8979 (toChars!4759 (transformation!3393 (rule!5387 (_1!10771 lt!668556)))) (value!106373 (_1!10771 lt!668556))))))))

(declare-fun e!1111791 () Bool)

(assert (=> b!1737287 (= e!1111791 (and tp!494985 tp!494991))))

(declare-fun res!780785 () Bool)

(assert (=> start!170934 (=> (not res!780785) (not e!1111772))))

(get-info :version)

(assert (=> start!170934 (= res!780785 ((_ is Lexer!3020) thiss!24550))))

(assert (=> start!170934 e!1111772))

(assert (=> start!170934 e!1111774))

(assert (=> start!170934 e!1111765))

(assert (=> start!170934 true))

(declare-fun inv!24707 (Token!6352) Bool)

(assert (=> start!170934 (and (inv!24707 token!523) e!1111781)))

(assert (=> start!170934 e!1111778))

(declare-fun b!1737288 () Bool)

(declare-fun res!780799 () Bool)

(assert (=> b!1737288 (=> res!780799 e!1111776)))

(assert (=> b!1737288 (= res!780799 (not (contains!3415 rules!3447 (rule!5387 token!523))))))

(declare-fun tp!494988 () Bool)

(declare-fun b!1737289 () Bool)

(assert (=> b!1737289 (= e!1111766 (and tp!494988 (inv!24701 (tag!3727 (h!24478 rules!3447))) (inv!24706 (transformation!3393 (h!24478 rules!3447))) e!1111793))))

(declare-fun b!1737290 () Bool)

(declare-fun Unit!33020 () Unit!33015)

(assert (=> b!1737290 (= e!1111795 Unit!33020)))

(declare-fun lt!668551 () Unit!33015)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!130 (LexerInterface!3022 List!19147 Rule!6586 List!19146 List!19146 Rule!6586) Unit!33015)

(assert (=> b!1737290 (= lt!668551 (lemmaMaxPrefNoSmallerRuleMatches!130 thiss!24550 rules!3447 (rule!5387 (_1!10771 lt!668556)) lt!668559 lt!668576 (rule!5387 token!523)))))

(declare-fun res!780805 () Bool)

(assert (=> b!1737290 (= res!780805 (not (matchR!2195 (regex!3393 (rule!5387 token!523)) lt!668559)))))

(assert (=> b!1737290 (=> (not res!780805) (not e!1111769))))

(assert (=> b!1737290 e!1111769))

(declare-fun b!1737291 () Bool)

(assert (=> b!1737291 (= e!1111786 e!1111779)))

(declare-fun res!780802 () Bool)

(assert (=> b!1737291 (=> res!780802 e!1111779)))

(declare-fun lt!668541 () TokenValue!3483)

(assert (=> b!1737291 (= res!780802 (not (= lt!668554 (Some!3809 (tuple2!18739 (Token!6353 lt!668541 (rule!5387 (_1!10771 lt!668556)) lt!668560 lt!668559) (_2!10771 lt!668556))))))))

(assert (=> b!1737291 (= lt!668560 (size!15162 lt!668563))))

(assert (=> b!1737291 (= lt!668541 (apply!5198 (transformation!3393 (rule!5387 (_1!10771 lt!668556))) lt!668563))))

(declare-fun lt!668548 () Unit!33015)

(declare-fun lemmaCharactersSize!465 (Token!6352) Unit!33015)

(assert (=> b!1737291 (= lt!668548 (lemmaCharactersSize!465 (_1!10771 lt!668556)))))

(declare-fun lt!668586 () Unit!33015)

(declare-fun lemmaEqSameImage!318 (TokenValueInjection!6626 BalanceConc!12634 BalanceConc!12634) Unit!33015)

(assert (=> b!1737291 (= lt!668586 (lemmaEqSameImage!318 (transformation!3393 (rule!5387 (_1!10771 lt!668556))) lt!668563 (seqFromList!2367 (originalCharacters!4207 (_1!10771 lt!668556)))))))

(declare-fun b!1737292 () Bool)

(assert (=> b!1737292 (= e!1111771 true)))

(declare-fun lt!668580 () Bool)

(assert (=> b!1737292 (= lt!668580 (ruleValid!892 thiss!24550 (rule!5387 token!523)))))

(declare-fun b!1737293 () Bool)

(declare-fun e!1111790 () Bool)

(assert (=> b!1737293 (= e!1111790 e!1111786)))

(declare-fun res!780796 () Bool)

(assert (=> b!1737293 (=> res!780796 e!1111786)))

(declare-fun dynLambda!8980 (Int BalanceConc!12634) TokenValue!3483)

(assert (=> b!1737293 (= res!780796 (not (= (list!7714 (dynLambda!8979 (toChars!4759 (transformation!3393 (rule!5387 (_1!10771 lt!668556)))) (dynLambda!8980 (toValue!4900 (transformation!3393 (rule!5387 (_1!10771 lt!668556)))) lt!668563))) lt!668559)))))

(declare-fun lt!668570 () Unit!33015)

(assert (=> b!1737293 (= lt!668570 (lemmaSemiInverse!539 (transformation!3393 (rule!5387 (_1!10771 lt!668556))) lt!668563))))

(declare-fun b!1737294 () Bool)

(declare-fun Unit!33021 () Unit!33015)

(assert (=> b!1737294 (= e!1111794 Unit!33021)))

(declare-fun b!1737295 () Bool)

(declare-fun res!780791 () Bool)

(assert (=> b!1737295 (=> res!780791 e!1111776)))

(assert (=> b!1737295 (= res!780791 (not (contains!3415 rules!3447 (rule!5387 (_1!10771 lt!668556)))))))

(assert (=> b!1737296 (= e!1111782 e!1111790)))

(declare-fun res!780776 () Bool)

(assert (=> b!1737296 (=> res!780776 e!1111790)))

(declare-fun Forall!768 (Int) Bool)

(assert (=> b!1737296 (= res!780776 (not (Forall!768 lambda!69518)))))

(declare-fun lt!668540 () Unit!33015)

(declare-fun lemmaInv!600 (TokenValueInjection!6626) Unit!33015)

(assert (=> b!1737296 (= lt!668540 (lemmaInv!600 (transformation!3393 (rule!5387 (_1!10771 lt!668556)))))))

(declare-fun b!1737297 () Bool)

(declare-fun Unit!33022 () Unit!33015)

(assert (=> b!1737297 (= e!1111796 Unit!33022)))

(declare-fun tp!494984 () Bool)

(declare-fun b!1737298 () Bool)

(assert (=> b!1737298 (= e!1111788 (and tp!494984 (inv!24701 (tag!3727 (rule!5387 token!523))) (inv!24706 (transformation!3393 (rule!5387 token!523))) e!1111791))))

(declare-fun b!1737299 () Bool)

(assert (=> b!1737299 (= e!1111772 e!1111773)))

(declare-fun res!780792 () Bool)

(assert (=> b!1737299 (=> (not res!780792) (not e!1111773))))

(declare-fun isDefined!3154 (Option!3810) Bool)

(assert (=> b!1737299 (= res!780792 (isDefined!3154 lt!668557))))

(assert (=> b!1737299 (= lt!668557 (maxPrefix!1576 thiss!24550 rules!3447 lt!668574))))

(assert (=> b!1737299 (= lt!668574 (list!7714 lt!668567))))

(assert (=> b!1737299 (= lt!668567 (charsOf!2042 token!523))))

(assert (= (and start!170934 res!780785) b!1737262))

(assert (= (and b!1737262 res!780804) b!1737280))

(assert (= (and b!1737280 res!780782) b!1737267))

(assert (= (and b!1737267 res!780789) b!1737299))

(assert (= (and b!1737299 res!780792) b!1737269))

(assert (= (and b!1737269 res!780780) b!1737264))

(assert (= (and b!1737264 res!780788) b!1737266))

(assert (= (and b!1737266 res!780787) b!1737254))

(assert (= (and b!1737254 (not res!780793)) b!1737285))

(assert (= (and b!1737285 (not res!780790)) b!1737268))

(assert (= (and b!1737268 (not res!780781)) b!1737277))

(assert (= (and b!1737277 res!780778) b!1737274))

(assert (= (and b!1737274 res!780803) b!1737265))

(assert (= (and b!1737277 (not res!780797)) b!1737258))

(assert (= (and b!1737258 (not res!780794)) b!1737296))

(assert (= (and b!1737296 (not res!780776)) b!1737293))

(assert (= (and b!1737293 (not res!780796)) b!1737286))

(assert (= (and b!1737286 (not res!780783)) b!1737291))

(assert (= (and b!1737291 (not res!780802)) b!1737276))

(assert (= (and b!1737276 (not res!780786)) b!1737270))

(assert (= (and b!1737270 c!283529) b!1737273))

(assert (= (and b!1737270 (not c!283529)) b!1737294))

(assert (= (and b!1737270 (not res!780784)) b!1737283))

(assert (= (and b!1737283 c!283531) b!1737281))

(assert (= (and b!1737283 (not c!283531)) b!1737297))

(assert (= (and b!1737283 (not res!780800)) b!1737282))

(assert (= (and b!1737282 (not res!780795)) b!1737263))

(assert (= (and b!1737263 c!283530) b!1737290))

(assert (= (and b!1737263 (not c!283530)) b!1737271))

(assert (= (and b!1737290 res!780805) b!1737272))

(assert (= (and b!1737263 (not res!780801)) b!1737256))

(assert (= (and b!1737256 (not res!780779)) b!1737288))

(assert (= (and b!1737288 (not res!780799)) b!1737295))

(assert (= (and b!1737295 (not res!780791)) b!1737278))

(assert (= (and b!1737278 (not res!780798)) b!1737260))

(assert (= (and b!1737260 (not res!780806)) b!1737279))

(assert (= (and b!1737279 (not res!780777)) b!1737292))

(assert (= (and start!170934 ((_ is Cons!19076) suffix!1421)) b!1737257))

(assert (= b!1737259 b!1737261))

(assert (= start!170934 b!1737259))

(assert (= b!1737298 b!1737287))

(assert (= b!1737255 b!1737298))

(assert (= start!170934 b!1737255))

(assert (= b!1737289 b!1737284))

(assert (= b!1737275 b!1737289))

(assert (= (and start!170934 ((_ is Cons!19077) rules!3447)) b!1737275))

(declare-fun b_lambda!55587 () Bool)

(assert (=> (not b_lambda!55587) (not b!1737286)))

(declare-fun t!161459 () Bool)

(declare-fun tb!103749 () Bool)

(assert (=> (and b!1737261 (= (toChars!4759 (transformation!3393 rule!422)) (toChars!4759 (transformation!3393 (rule!5387 (_1!10771 lt!668556))))) t!161459) tb!103749))

(declare-fun b!1737315 () Bool)

(declare-fun e!1111810 () Bool)

(declare-fun tp!494995 () Bool)

(declare-fun inv!24708 (Conc!6345) Bool)

(assert (=> b!1737315 (= e!1111810 (and (inv!24708 (c!283533 (dynLambda!8979 (toChars!4759 (transformation!3393 (rule!5387 (_1!10771 lt!668556)))) (value!106373 (_1!10771 lt!668556))))) tp!494995))))

(declare-fun result!124768 () Bool)

(declare-fun inv!24709 (BalanceConc!12634) Bool)

(assert (=> tb!103749 (= result!124768 (and (inv!24709 (dynLambda!8979 (toChars!4759 (transformation!3393 (rule!5387 (_1!10771 lt!668556)))) (value!106373 (_1!10771 lt!668556)))) e!1111810))))

(assert (= tb!103749 b!1737315))

(declare-fun m!2147329 () Bool)

(assert (=> b!1737315 m!2147329))

(declare-fun m!2147331 () Bool)

(assert (=> tb!103749 m!2147331))

(assert (=> b!1737286 t!161459))

(declare-fun b_and!128783 () Bool)

(assert (= b_and!128773 (and (=> t!161459 result!124768) b_and!128783)))

(declare-fun tb!103751 () Bool)

(declare-fun t!161461 () Bool)

(assert (=> (and b!1737284 (= (toChars!4759 (transformation!3393 (h!24478 rules!3447))) (toChars!4759 (transformation!3393 (rule!5387 (_1!10771 lt!668556))))) t!161461) tb!103751))

(declare-fun result!124772 () Bool)

(assert (= result!124772 result!124768))

(assert (=> b!1737286 t!161461))

(declare-fun b_and!128785 () Bool)

(assert (= b_and!128777 (and (=> t!161461 result!124772) b_and!128785)))

(declare-fun tb!103753 () Bool)

(declare-fun t!161463 () Bool)

(assert (=> (and b!1737287 (= (toChars!4759 (transformation!3393 (rule!5387 token!523))) (toChars!4759 (transformation!3393 (rule!5387 (_1!10771 lt!668556))))) t!161463) tb!103753))

(declare-fun result!124774 () Bool)

(assert (= result!124774 result!124768))

(assert (=> b!1737286 t!161463))

(declare-fun b_and!128787 () Bool)

(assert (= b_and!128781 (and (=> t!161463 result!124774) b_and!128787)))

(declare-fun b_lambda!55589 () Bool)

(assert (=> (not b_lambda!55589) (not b!1737293)))

(declare-fun tb!103755 () Bool)

(declare-fun t!161465 () Bool)

(assert (=> (and b!1737261 (= (toChars!4759 (transformation!3393 rule!422)) (toChars!4759 (transformation!3393 (rule!5387 (_1!10771 lt!668556))))) t!161465) tb!103755))

(declare-fun tp!494996 () Bool)

(declare-fun b!1737316 () Bool)

(declare-fun e!1111811 () Bool)

(assert (=> b!1737316 (= e!1111811 (and (inv!24708 (c!283533 (dynLambda!8979 (toChars!4759 (transformation!3393 (rule!5387 (_1!10771 lt!668556)))) (dynLambda!8980 (toValue!4900 (transformation!3393 (rule!5387 (_1!10771 lt!668556)))) lt!668563)))) tp!494996))))

(declare-fun result!124776 () Bool)

(assert (=> tb!103755 (= result!124776 (and (inv!24709 (dynLambda!8979 (toChars!4759 (transformation!3393 (rule!5387 (_1!10771 lt!668556)))) (dynLambda!8980 (toValue!4900 (transformation!3393 (rule!5387 (_1!10771 lt!668556)))) lt!668563))) e!1111811))))

(assert (= tb!103755 b!1737316))

(declare-fun m!2147333 () Bool)

(assert (=> b!1737316 m!2147333))

(declare-fun m!2147335 () Bool)

(assert (=> tb!103755 m!2147335))

(assert (=> b!1737293 t!161465))

(declare-fun b_and!128789 () Bool)

(assert (= b_and!128783 (and (=> t!161465 result!124776) b_and!128789)))

(declare-fun t!161467 () Bool)

(declare-fun tb!103757 () Bool)

(assert (=> (and b!1737284 (= (toChars!4759 (transformation!3393 (h!24478 rules!3447))) (toChars!4759 (transformation!3393 (rule!5387 (_1!10771 lt!668556))))) t!161467) tb!103757))

(declare-fun result!124778 () Bool)

(assert (= result!124778 result!124776))

(assert (=> b!1737293 t!161467))

(declare-fun b_and!128791 () Bool)

(assert (= b_and!128785 (and (=> t!161467 result!124778) b_and!128791)))

(declare-fun t!161469 () Bool)

(declare-fun tb!103759 () Bool)

(assert (=> (and b!1737287 (= (toChars!4759 (transformation!3393 (rule!5387 token!523))) (toChars!4759 (transformation!3393 (rule!5387 (_1!10771 lt!668556))))) t!161469) tb!103759))

(declare-fun result!124780 () Bool)

(assert (= result!124780 result!124776))

(assert (=> b!1737293 t!161469))

(declare-fun b_and!128793 () Bool)

(assert (= b_and!128787 (and (=> t!161469 result!124780) b_and!128793)))

(declare-fun b_lambda!55591 () Bool)

(assert (=> (not b_lambda!55591) (not b!1737293)))

(declare-fun tb!103761 () Bool)

(declare-fun t!161471 () Bool)

(assert (=> (and b!1737261 (= (toValue!4900 (transformation!3393 rule!422)) (toValue!4900 (transformation!3393 (rule!5387 (_1!10771 lt!668556))))) t!161471) tb!103761))

(declare-fun result!124782 () Bool)

(assert (=> tb!103761 (= result!124782 (inv!21 (dynLambda!8980 (toValue!4900 (transformation!3393 (rule!5387 (_1!10771 lt!668556)))) lt!668563)))))

(declare-fun m!2147337 () Bool)

(assert (=> tb!103761 m!2147337))

(assert (=> b!1737293 t!161471))

(declare-fun b_and!128795 () Bool)

(assert (= b_and!128771 (and (=> t!161471 result!124782) b_and!128795)))

(declare-fun tb!103763 () Bool)

(declare-fun t!161473 () Bool)

(assert (=> (and b!1737284 (= (toValue!4900 (transformation!3393 (h!24478 rules!3447))) (toValue!4900 (transformation!3393 (rule!5387 (_1!10771 lt!668556))))) t!161473) tb!103763))

(declare-fun result!124786 () Bool)

(assert (= result!124786 result!124782))

(assert (=> b!1737293 t!161473))

(declare-fun b_and!128797 () Bool)

(assert (= b_and!128775 (and (=> t!161473 result!124786) b_and!128797)))

(declare-fun tb!103765 () Bool)

(declare-fun t!161475 () Bool)

(assert (=> (and b!1737287 (= (toValue!4900 (transformation!3393 (rule!5387 token!523))) (toValue!4900 (transformation!3393 (rule!5387 (_1!10771 lt!668556))))) t!161475) tb!103765))

(declare-fun result!124788 () Bool)

(assert (= result!124788 result!124782))

(assert (=> b!1737293 t!161475))

(declare-fun b_and!128799 () Bool)

(assert (= b_and!128779 (and (=> t!161475 result!124788) b_and!128799)))

(declare-fun m!2147339 () Bool)

(assert (=> b!1737258 m!2147339))

(declare-fun m!2147341 () Bool)

(assert (=> b!1737276 m!2147341))

(declare-fun m!2147343 () Bool)

(assert (=> b!1737276 m!2147343))

(assert (=> b!1737276 m!2147343))

(declare-fun m!2147345 () Bool)

(assert (=> b!1737276 m!2147345))

(declare-fun m!2147347 () Bool)

(assert (=> b!1737276 m!2147347))

(declare-fun m!2147349 () Bool)

(assert (=> b!1737276 m!2147349))

(declare-fun m!2147351 () Bool)

(assert (=> b!1737276 m!2147351))

(declare-fun m!2147353 () Bool)

(assert (=> b!1737276 m!2147353))

(declare-fun m!2147355 () Bool)

(assert (=> b!1737295 m!2147355))

(declare-fun m!2147357 () Bool)

(assert (=> b!1737273 m!2147357))

(declare-fun m!2147359 () Bool)

(assert (=> b!1737273 m!2147359))

(declare-fun m!2147361 () Bool)

(assert (=> b!1737273 m!2147361))

(declare-fun m!2147363 () Bool)

(assert (=> b!1737273 m!2147363))

(declare-fun m!2147365 () Bool)

(assert (=> b!1737273 m!2147365))

(declare-fun m!2147367 () Bool)

(assert (=> b!1737273 m!2147367))

(declare-fun m!2147369 () Bool)

(assert (=> b!1737273 m!2147369))

(declare-fun m!2147371 () Bool)

(assert (=> b!1737273 m!2147371))

(declare-fun m!2147373 () Bool)

(assert (=> b!1737273 m!2147373))

(assert (=> b!1737273 m!2147361))

(declare-fun m!2147375 () Bool)

(assert (=> b!1737273 m!2147375))

(declare-fun m!2147377 () Bool)

(assert (=> b!1737273 m!2147377))

(declare-fun m!2147379 () Bool)

(assert (=> b!1737298 m!2147379))

(declare-fun m!2147381 () Bool)

(assert (=> b!1737298 m!2147381))

(declare-fun m!2147383 () Bool)

(assert (=> b!1737270 m!2147383))

(declare-fun m!2147385 () Bool)

(assert (=> b!1737270 m!2147385))

(declare-fun m!2147387 () Bool)

(assert (=> b!1737270 m!2147387))

(declare-fun m!2147389 () Bool)

(assert (=> b!1737293 m!2147389))

(assert (=> b!1737293 m!2147389))

(declare-fun m!2147391 () Bool)

(assert (=> b!1737293 m!2147391))

(assert (=> b!1737293 m!2147391))

(declare-fun m!2147393 () Bool)

(assert (=> b!1737293 m!2147393))

(declare-fun m!2147395 () Bool)

(assert (=> b!1737293 m!2147395))

(declare-fun m!2147397 () Bool)

(assert (=> b!1737280 m!2147397))

(declare-fun m!2147399 () Bool)

(assert (=> b!1737264 m!2147399))

(declare-fun m!2147401 () Bool)

(assert (=> b!1737274 m!2147401))

(assert (=> b!1737274 m!2147401))

(declare-fun m!2147403 () Bool)

(assert (=> b!1737274 m!2147403))

(assert (=> b!1737274 m!2147403))

(declare-fun m!2147405 () Bool)

(assert (=> b!1737274 m!2147405))

(declare-fun m!2147407 () Bool)

(assert (=> b!1737274 m!2147407))

(declare-fun m!2147409 () Bool)

(assert (=> b!1737290 m!2147409))

(declare-fun m!2147411 () Bool)

(assert (=> b!1737290 m!2147411))

(declare-fun m!2147413 () Bool)

(assert (=> b!1737278 m!2147413))

(declare-fun m!2147415 () Bool)

(assert (=> b!1737259 m!2147415))

(declare-fun m!2147417 () Bool)

(assert (=> b!1737259 m!2147417))

(declare-fun m!2147419 () Bool)

(assert (=> b!1737292 m!2147419))

(declare-fun m!2147421 () Bool)

(assert (=> b!1737289 m!2147421))

(declare-fun m!2147423 () Bool)

(assert (=> b!1737289 m!2147423))

(declare-fun m!2147425 () Bool)

(assert (=> b!1737268 m!2147425))

(declare-fun m!2147427 () Bool)

(assert (=> b!1737268 m!2147427))

(declare-fun m!2147429 () Bool)

(assert (=> b!1737268 m!2147429))

(declare-fun m!2147431 () Bool)

(assert (=> b!1737268 m!2147431))

(declare-fun m!2147433 () Bool)

(assert (=> b!1737285 m!2147433))

(declare-fun m!2147435 () Bool)

(assert (=> b!1737269 m!2147435))

(declare-fun m!2147437 () Bool)

(assert (=> b!1737279 m!2147437))

(declare-fun m!2147439 () Bool)

(assert (=> b!1737260 m!2147439))

(declare-fun m!2147441 () Bool)

(assert (=> b!1737260 m!2147441))

(declare-fun m!2147443 () Bool)

(assert (=> b!1737260 m!2147443))

(declare-fun m!2147445 () Bool)

(assert (=> b!1737260 m!2147445))

(declare-fun m!2147447 () Bool)

(assert (=> b!1737260 m!2147447))

(declare-fun m!2147449 () Bool)

(assert (=> b!1737286 m!2147449))

(declare-fun m!2147451 () Bool)

(assert (=> b!1737254 m!2147451))

(declare-fun m!2147453 () Bool)

(assert (=> b!1737254 m!2147453))

(declare-fun m!2147455 () Bool)

(assert (=> b!1737254 m!2147455))

(declare-fun m!2147457 () Bool)

(assert (=> b!1737291 m!2147457))

(declare-fun m!2147459 () Bool)

(assert (=> b!1737291 m!2147459))

(declare-fun m!2147461 () Bool)

(assert (=> b!1737291 m!2147461))

(assert (=> b!1737291 m!2147459))

(declare-fun m!2147463 () Bool)

(assert (=> b!1737291 m!2147463))

(declare-fun m!2147465 () Bool)

(assert (=> b!1737291 m!2147465))

(declare-fun m!2147467 () Bool)

(assert (=> b!1737288 m!2147467))

(declare-fun m!2147469 () Bool)

(assert (=> b!1737277 m!2147469))

(declare-fun m!2147471 () Bool)

(assert (=> b!1737277 m!2147471))

(declare-fun m!2147473 () Bool)

(assert (=> b!1737277 m!2147473))

(declare-fun m!2147475 () Bool)

(assert (=> b!1737277 m!2147475))

(declare-fun m!2147477 () Bool)

(assert (=> b!1737277 m!2147477))

(declare-fun m!2147479 () Bool)

(assert (=> b!1737277 m!2147479))

(declare-fun m!2147481 () Bool)

(assert (=> b!1737277 m!2147481))

(declare-fun m!2147483 () Bool)

(assert (=> b!1737277 m!2147483))

(assert (=> b!1737277 m!2147401))

(assert (=> b!1737277 m!2147469))

(declare-fun m!2147485 () Bool)

(assert (=> b!1737277 m!2147485))

(declare-fun m!2147487 () Bool)

(assert (=> b!1737277 m!2147487))

(declare-fun m!2147489 () Bool)

(assert (=> b!1737277 m!2147489))

(declare-fun m!2147491 () Bool)

(assert (=> b!1737277 m!2147491))

(declare-fun m!2147493 () Bool)

(assert (=> b!1737277 m!2147493))

(declare-fun m!2147495 () Bool)

(assert (=> b!1737277 m!2147495))

(declare-fun m!2147497 () Bool)

(assert (=> b!1737262 m!2147497))

(declare-fun m!2147499 () Bool)

(assert (=> b!1737256 m!2147499))

(declare-fun m!2147501 () Bool)

(assert (=> b!1737282 m!2147501))

(declare-fun m!2147503 () Bool)

(assert (=> b!1737282 m!2147503))

(declare-fun m!2147505 () Bool)

(assert (=> b!1737263 m!2147505))

(declare-fun m!2147507 () Bool)

(assert (=> b!1737263 m!2147507))

(declare-fun m!2147509 () Bool)

(assert (=> b!1737296 m!2147509))

(declare-fun m!2147511 () Bool)

(assert (=> b!1737296 m!2147511))

(declare-fun m!2147513 () Bool)

(assert (=> start!170934 m!2147513))

(declare-fun m!2147515 () Bool)

(assert (=> b!1737255 m!2147515))

(declare-fun m!2147517 () Bool)

(assert (=> b!1737281 m!2147517))

(declare-fun m!2147519 () Bool)

(assert (=> b!1737299 m!2147519))

(declare-fun m!2147521 () Bool)

(assert (=> b!1737299 m!2147521))

(declare-fun m!2147523 () Bool)

(assert (=> b!1737299 m!2147523))

(declare-fun m!2147525 () Bool)

(assert (=> b!1737299 m!2147525))

(declare-fun m!2147527 () Bool)

(assert (=> b!1737267 m!2147527))

(check-sat (not tb!103761) (not b!1737291) (not b!1737260) (not b_next!48389) (not b!1737275) (not b!1737254) (not b!1737289) (not tb!103755) (not b!1737277) b_and!128791 (not b!1737316) (not b!1737274) (not b!1737255) (not b_next!48383) (not b_lambda!55591) (not b!1737293) (not b!1737273) (not b!1737262) (not b!1737295) (not b!1737257) (not b_next!48379) (not b!1737290) (not b!1737263) (not b_next!48385) (not b!1737288) (not b!1737285) (not b!1737279) (not b!1737258) (not b!1737278) b_and!128797 b_and!128793 b_and!128795 (not b!1737256) (not b_next!48387) (not b!1737281) (not b_lambda!55587) (not tb!103749) b_and!128789 (not b!1737299) (not start!170934) (not b!1737315) (not b!1737296) (not b!1737267) b_and!128799 (not b!1737268) (not b_next!48381) (not b!1737270) (not b!1737282) (not b!1737276) (not b!1737259) (not b!1737280) (not b!1737292) (not b!1737298) tp_is_empty!7685 (not b!1737269) (not b!1737264) (not b_lambda!55589))
(check-sat (not b_next!48383) (not b_next!48389) (not b_next!48379) (not b_next!48385) (not b_next!48387) b_and!128789 b_and!128791 b_and!128797 b_and!128793 b_and!128795 b_and!128799 (not b_next!48381))
