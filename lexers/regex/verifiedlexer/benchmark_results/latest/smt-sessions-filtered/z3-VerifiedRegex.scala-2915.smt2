; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!170930 () Bool)

(assert start!170930)

(declare-fun b!1736970 () Bool)

(declare-fun b_free!47651 () Bool)

(declare-fun b_next!48355 () Bool)

(assert (=> b!1736970 (= b_free!47651 (not b_next!48355))))

(declare-fun tp!494904 () Bool)

(declare-fun b_and!128711 () Bool)

(assert (=> b!1736970 (= tp!494904 b_and!128711)))

(declare-fun b_free!47653 () Bool)

(declare-fun b_next!48357 () Bool)

(assert (=> b!1736970 (= b_free!47653 (not b_next!48357))))

(declare-fun tp!494907 () Bool)

(declare-fun b_and!128713 () Bool)

(assert (=> b!1736970 (= tp!494907 b_and!128713)))

(declare-fun b!1736971 () Bool)

(declare-fun b_free!47655 () Bool)

(declare-fun b_next!48359 () Bool)

(assert (=> b!1736971 (= b_free!47655 (not b_next!48359))))

(declare-fun tp!494911 () Bool)

(declare-fun b_and!128715 () Bool)

(assert (=> b!1736971 (= tp!494911 b_and!128715)))

(declare-fun b_free!47657 () Bool)

(declare-fun b_next!48361 () Bool)

(assert (=> b!1736971 (= b_free!47657 (not b_next!48361))))

(declare-fun tp!494905 () Bool)

(declare-fun b_and!128717 () Bool)

(assert (=> b!1736971 (= tp!494905 b_and!128717)))

(declare-fun b!1736961 () Bool)

(declare-fun b_free!47659 () Bool)

(declare-fun b_next!48363 () Bool)

(assert (=> b!1736961 (= b_free!47659 (not b_next!48363))))

(declare-fun tp!494902 () Bool)

(declare-fun b_and!128719 () Bool)

(assert (=> b!1736961 (= tp!494902 b_and!128719)))

(declare-fun b_free!47661 () Bool)

(declare-fun b_next!48365 () Bool)

(assert (=> b!1736961 (= b_free!47661 (not b_next!48365))))

(declare-fun tp!494906 () Bool)

(declare-fun b_and!128721 () Bool)

(assert (=> b!1736961 (= tp!494906 b_and!128721)))

(declare-fun b!1736996 () Bool)

(declare-fun e!1111571 () Bool)

(assert (=> b!1736996 (= e!1111571 true)))

(declare-fun b!1736995 () Bool)

(declare-fun e!1111570 () Bool)

(assert (=> b!1736995 (= e!1111570 e!1111571)))

(declare-fun b!1736994 () Bool)

(declare-fun e!1111569 () Bool)

(assert (=> b!1736994 (= e!1111569 e!1111570)))

(declare-fun b!1736983 () Bool)

(assert (=> b!1736983 e!1111569))

(assert (= b!1736995 b!1736996))

(assert (= b!1736994 b!1736995))

(assert (= b!1736983 b!1736994))

(declare-fun order!11847 () Int)

(declare-datatypes ((List!19139 0))(
  ( (Nil!19069) (Cons!19069 (h!24470 (_ BitVec 16)) (t!161434 List!19139)) )
))
(declare-datatypes ((TokenValue!3481 0))(
  ( (FloatLiteralValue!6962 (text!24812 List!19139)) (TokenValueExt!3480 (__x!12264 Int)) (Broken!17405 (value!106290 List!19139)) (Object!3550) (End!3481) (Def!3481) (Underscore!3481) (Match!3481) (Else!3481) (Error!3481) (Case!3481) (If!3481) (Extends!3481) (Abstract!3481) (Class!3481) (Val!3481) (DelimiterValue!6962 (del!3541 List!19139)) (KeywordValue!3487 (value!106291 List!19139)) (CommentValue!6962 (value!106292 List!19139)) (WhitespaceValue!6962 (value!106293 List!19139)) (IndentationValue!3481 (value!106294 List!19139)) (String!21736) (Int32!3481) (Broken!17406 (value!106295 List!19139)) (Boolean!3482) (Unit!32996) (OperatorValue!3484 (op!3541 List!19139)) (IdentifierValue!6962 (value!106296 List!19139)) (IdentifierValue!6963 (value!106297 List!19139)) (WhitespaceValue!6963 (value!106298 List!19139)) (True!6962) (False!6962) (Broken!17407 (value!106299 List!19139)) (Broken!17408 (value!106300 List!19139)) (True!6963) (RightBrace!3481) (RightBracket!3481) (Colon!3481) (Null!3481) (Comma!3481) (LeftBracket!3481) (False!6963) (LeftBrace!3481) (ImaginaryLiteralValue!3481 (text!24813 List!19139)) (StringLiteralValue!10443 (value!106301 List!19139)) (EOFValue!3481 (value!106302 List!19139)) (IdentValue!3481 (value!106303 List!19139)) (DelimiterValue!6963 (value!106304 List!19139)) (DedentValue!3481 (value!106305 List!19139)) (NewLineValue!3481 (value!106306 List!19139)) (IntegerValue!10443 (value!106307 (_ BitVec 32)) (text!24814 List!19139)) (IntegerValue!10444 (value!106308 Int) (text!24815 List!19139)) (Times!3481) (Or!3481) (Equal!3481) (Minus!3481) (Broken!17409 (value!106309 List!19139)) (And!3481) (Div!3481) (LessEqual!3481) (Mod!3481) (Concat!8200) (Not!3481) (Plus!3481) (SpaceValue!3481 (value!106310 List!19139)) (IntegerValue!10445 (value!106311 Int) (text!24816 List!19139)) (StringLiteralValue!10444 (text!24817 List!19139)) (FloatLiteralValue!6963 (text!24818 List!19139)) (BytesLiteralValue!3481 (value!106312 List!19139)) (CommentValue!6963 (value!106313 List!19139)) (StringLiteralValue!10445 (value!106314 List!19139)) (ErrorTokenValue!3481 (msg!3542 List!19139)) )
))
(declare-datatypes ((C!9612 0))(
  ( (C!9613 (val!5402 Int)) )
))
(declare-datatypes ((List!19140 0))(
  ( (Nil!19070) (Cons!19070 (h!24471 C!9612) (t!161435 List!19140)) )
))
(declare-datatypes ((Regex!4719 0))(
  ( (ElementMatch!4719 (c!283508 C!9612)) (Concat!8201 (regOne!9950 Regex!4719) (regTwo!9950 Regex!4719)) (EmptyExpr!4719) (Star!4719 (reg!5048 Regex!4719)) (EmptyLang!4719) (Union!4719 (regOne!9951 Regex!4719) (regTwo!9951 Regex!4719)) )
))
(declare-datatypes ((String!21737 0))(
  ( (String!21738 (value!106315 String)) )
))
(declare-datatypes ((IArray!12691 0))(
  ( (IArray!12692 (innerList!6403 List!19140)) )
))
(declare-datatypes ((Conc!6343 0))(
  ( (Node!6343 (left!15244 Conc!6343) (right!15574 Conc!6343) (csize!12916 Int) (cheight!6554 Int)) (Leaf!9259 (xs!9219 IArray!12691) (csize!12917 Int)) (Empty!6343) )
))
(declare-datatypes ((BalanceConc!12630 0))(
  ( (BalanceConc!12631 (c!283509 Conc!6343)) )
))
(declare-datatypes ((TokenValueInjection!6622 0))(
  ( (TokenValueInjection!6623 (toValue!4898 Int) (toChars!4757 Int)) )
))
(declare-datatypes ((Rule!6582 0))(
  ( (Rule!6583 (regex!3391 Regex!4719) (tag!3725 String!21737) (isSeparator!3391 Bool) (transformation!3391 TokenValueInjection!6622)) )
))
(declare-datatypes ((Token!6348 0))(
  ( (Token!6349 (value!106316 TokenValue!3481) (rule!5385 Rule!6582) (size!15154 Int) (originalCharacters!4205 List!19140)) )
))
(declare-datatypes ((tuple2!18734 0))(
  ( (tuple2!18735 (_1!10769 Token!6348) (_2!10769 List!19140)) )
))
(declare-fun lt!668276 () tuple2!18734)

(declare-fun lambda!69512 () Int)

(declare-fun order!11849 () Int)

(declare-fun dynLambda!8966 (Int Int) Int)

(declare-fun dynLambda!8967 (Int Int) Int)

(assert (=> b!1736996 (< (dynLambda!8966 order!11847 (toValue!4898 (transformation!3391 (rule!5385 (_1!10769 lt!668276))))) (dynLambda!8967 order!11849 lambda!69512))))

(declare-fun order!11851 () Int)

(declare-fun dynLambda!8968 (Int Int) Int)

(assert (=> b!1736996 (< (dynLambda!8968 order!11851 (toChars!4757 (transformation!3391 (rule!5385 (_1!10769 lt!668276))))) (dynLambda!8967 order!11849 lambda!69512))))

(declare-fun b!1736947 () Bool)

(declare-fun e!1111546 () Bool)

(assert (=> b!1736947 (= e!1111546 false)))

(declare-fun b!1736948 () Bool)

(declare-fun res!780610 () Bool)

(declare-fun e!1111539 () Bool)

(assert (=> b!1736948 (=> (not res!780610) (not e!1111539))))

(declare-datatypes ((List!19141 0))(
  ( (Nil!19071) (Cons!19071 (h!24472 Rule!6582) (t!161436 List!19141)) )
))
(declare-fun rules!3447 () List!19141)

(declare-fun rule!422 () Rule!6582)

(declare-fun contains!3413 (List!19141 Rule!6582) Bool)

(assert (=> b!1736948 (= res!780610 (contains!3413 rules!3447 rule!422))))

(declare-fun b!1736949 () Bool)

(declare-fun e!1111544 () Bool)

(declare-fun e!1111540 () Bool)

(assert (=> b!1736949 (= e!1111544 (not e!1111540))))

(declare-fun res!780600 () Bool)

(assert (=> b!1736949 (=> res!780600 e!1111540)))

(declare-fun lt!668269 () List!19140)

(declare-fun matchR!2193 (Regex!4719 List!19140) Bool)

(assert (=> b!1736949 (= res!780600 (not (matchR!2193 (regex!3391 rule!422) lt!668269)))))

(declare-datatypes ((LexerInterface!3020 0))(
  ( (LexerInterfaceExt!3017 (__x!12265 Int)) (Lexer!3018) )
))
(declare-fun thiss!24550 () LexerInterface!3020)

(declare-fun ruleValid!890 (LexerInterface!3020 Rule!6582) Bool)

(assert (=> b!1736949 (ruleValid!890 thiss!24550 rule!422)))

(declare-datatypes ((Unit!32997 0))(
  ( (Unit!32998) )
))
(declare-fun lt!668239 () Unit!32997)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!414 (LexerInterface!3020 Rule!6582 List!19141) Unit!32997)

(assert (=> b!1736949 (= lt!668239 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!414 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1736950 () Bool)

(declare-fun e!1111535 () Bool)

(declare-fun e!1111560 () Bool)

(assert (=> b!1736950 (= e!1111535 e!1111560)))

(declare-fun res!780614 () Bool)

(assert (=> b!1736950 (=> res!780614 e!1111560)))

(declare-fun token!523 () Token!6348)

(assert (=> b!1736950 (= res!780614 (= (rule!5385 (_1!10769 lt!668276)) (rule!5385 token!523)))))

(declare-fun suffix!1421 () List!19140)

(assert (=> b!1736950 (= suffix!1421 (_2!10769 lt!668276))))

(declare-fun lt!668278 () List!19140)

(declare-fun lt!668273 () Unit!32997)

(declare-fun lemmaSamePrefixThenSameSuffix!776 (List!19140 List!19140 List!19140 List!19140 List!19140) Unit!32997)

(assert (=> b!1736950 (= lt!668273 (lemmaSamePrefixThenSameSuffix!776 lt!668269 suffix!1421 lt!668269 (_2!10769 lt!668276) lt!668278))))

(declare-fun lt!668264 () List!19140)

(assert (=> b!1736950 (= lt!668264 lt!668269)))

(declare-fun lt!668270 () Unit!32997)

(declare-fun lemmaIsPrefixSameLengthThenSameList!219 (List!19140 List!19140 List!19140) Unit!32997)

(assert (=> b!1736950 (= lt!668270 (lemmaIsPrefixSameLengthThenSameList!219 lt!668264 lt!668269 lt!668278))))

(declare-fun b!1736951 () Bool)

(declare-fun e!1111556 () Bool)

(assert (=> b!1736951 (= e!1111556 e!1111544)))

(declare-fun res!780598 () Bool)

(assert (=> b!1736951 (=> (not res!780598) (not e!1111544))))

(declare-fun lt!668253 () tuple2!18734)

(assert (=> b!1736951 (= res!780598 (= (_1!10769 lt!668253) token!523))))

(declare-datatypes ((Option!3806 0))(
  ( (None!3805) (Some!3805 (v!25232 tuple2!18734)) )
))
(declare-fun lt!668263 () Option!3806)

(declare-fun get!5719 (Option!3806) tuple2!18734)

(assert (=> b!1736951 (= lt!668253 (get!5719 lt!668263))))

(declare-fun e!1111559 () Bool)

(declare-fun b!1736952 () Bool)

(declare-fun e!1111545 () Bool)

(declare-fun tp!494912 () Bool)

(declare-fun inv!24690 (String!21737) Bool)

(declare-fun inv!24695 (TokenValueInjection!6622) Bool)

(assert (=> b!1736952 (= e!1111559 (and tp!494912 (inv!24690 (tag!3725 rule!422)) (inv!24695 (transformation!3391 rule!422)) e!1111545))))

(declare-fun res!780603 () Bool)

(assert (=> start!170930 (=> (not res!780603) (not e!1111539))))

(get-info :version)

(assert (=> start!170930 (= res!780603 ((_ is Lexer!3018) thiss!24550))))

(assert (=> start!170930 e!1111539))

(declare-fun e!1111555 () Bool)

(assert (=> start!170930 e!1111555))

(assert (=> start!170930 e!1111559))

(assert (=> start!170930 true))

(declare-fun e!1111550 () Bool)

(declare-fun inv!24696 (Token!6348) Bool)

(assert (=> start!170930 (and (inv!24696 token!523) e!1111550)))

(declare-fun e!1111551 () Bool)

(assert (=> start!170930 e!1111551))

(declare-fun b!1736953 () Bool)

(declare-fun e!1111536 () Bool)

(declare-fun tp!494910 () Bool)

(assert (=> b!1736953 (= e!1111551 (and e!1111536 tp!494910))))

(declare-fun b!1736954 () Bool)

(declare-fun e!1111549 () Unit!32997)

(declare-fun Unit!32999 () Unit!32997)

(assert (=> b!1736954 (= e!1111549 Unit!32999)))

(declare-fun lt!668238 () Unit!32997)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!188 (LexerInterface!3020 List!19141 Rule!6582 List!19140 List!19140 List!19140 Rule!6582) Unit!32997)

(assert (=> b!1736954 (= lt!668238 (lemmaMaxPrefixOutputsMaxPrefix!188 thiss!24550 rules!3447 (rule!5385 (_1!10769 lt!668276)) lt!668264 lt!668278 lt!668269 rule!422))))

(assert (=> b!1736954 false))

(declare-fun b!1736955 () Bool)

(declare-fun res!780601 () Bool)

(assert (=> b!1736955 (=> (not res!780601) (not e!1111539))))

(declare-fun rulesInvariant!2689 (LexerInterface!3020 List!19141) Bool)

(assert (=> b!1736955 (= res!780601 (rulesInvariant!2689 thiss!24550 rules!3447))))

(declare-fun b!1736956 () Bool)

(declare-fun res!780606 () Bool)

(assert (=> b!1736956 (=> (not res!780606) (not e!1111544))))

(assert (=> b!1736956 (= res!780606 (= (rule!5385 token!523) rule!422))))

(declare-fun b!1736957 () Bool)

(assert (=> b!1736957 (= e!1111539 e!1111556)))

(declare-fun res!780612 () Bool)

(assert (=> b!1736957 (=> (not res!780612) (not e!1111556))))

(declare-fun isDefined!3149 (Option!3806) Bool)

(assert (=> b!1736957 (= res!780612 (isDefined!3149 lt!668263))))

(declare-fun maxPrefix!1574 (LexerInterface!3020 List!19141 List!19140) Option!3806)

(assert (=> b!1736957 (= lt!668263 (maxPrefix!1574 thiss!24550 rules!3447 lt!668269))))

(declare-fun lt!668242 () BalanceConc!12630)

(declare-fun list!7712 (BalanceConc!12630) List!19140)

(assert (=> b!1736957 (= lt!668269 (list!7712 lt!668242))))

(declare-fun charsOf!2040 (Token!6348) BalanceConc!12630)

(assert (=> b!1736957 (= lt!668242 (charsOf!2040 token!523))))

(declare-fun b!1736958 () Bool)

(declare-fun e!1111531 () Bool)

(declare-fun e!1111547 () Bool)

(assert (=> b!1736958 (= e!1111531 e!1111547)))

(declare-fun res!780599 () Bool)

(assert (=> b!1736958 (=> (not res!780599) (not e!1111547))))

(declare-fun lt!668271 () Rule!6582)

(assert (=> b!1736958 (= res!780599 (matchR!2193 (regex!3391 lt!668271) (list!7712 (charsOf!2040 (_1!10769 lt!668276)))))))

(declare-datatypes ((Option!3807 0))(
  ( (None!3806) (Some!3806 (v!25233 Rule!6582)) )
))
(declare-fun lt!668279 () Option!3807)

(declare-fun get!5720 (Option!3807) Rule!6582)

(assert (=> b!1736958 (= lt!668271 (get!5720 lt!668279))))

(declare-fun b!1736959 () Bool)

(assert (=> b!1736959 (= e!1111547 (= (rule!5385 (_1!10769 lt!668276)) lt!668271))))

(declare-fun b!1736960 () Bool)

(declare-fun e!1111542 () Bool)

(declare-fun e!1111554 () Bool)

(assert (=> b!1736960 (= e!1111542 e!1111554)))

(declare-fun res!780604 () Bool)

(assert (=> b!1736960 (=> res!780604 e!1111554)))

(declare-fun lt!668245 () BalanceConc!12630)

(declare-fun dynLambda!8969 (Int TokenValue!3481) BalanceConc!12630)

(declare-fun dynLambda!8970 (Int BalanceConc!12630) TokenValue!3481)

(assert (=> b!1736960 (= res!780604 (not (= (list!7712 (dynLambda!8969 (toChars!4757 (transformation!3391 (rule!5385 (_1!10769 lt!668276)))) (dynLambda!8970 (toValue!4898 (transformation!3391 (rule!5385 (_1!10769 lt!668276)))) lt!668245))) lt!668264)))))

(declare-fun lt!668250 () Unit!32997)

(declare-fun lemmaSemiInverse!537 (TokenValueInjection!6622 BalanceConc!12630) Unit!32997)

(assert (=> b!1736960 (= lt!668250 (lemmaSemiInverse!537 (transformation!3391 (rule!5385 (_1!10769 lt!668276))) lt!668245))))

(declare-fun e!1111553 () Bool)

(assert (=> b!1736961 (= e!1111553 (and tp!494902 tp!494906))))

(declare-fun b!1736962 () Bool)

(declare-fun res!780607 () Bool)

(assert (=> b!1736962 (=> (not res!780607) (not e!1111544))))

(declare-fun isEmpty!12001 (List!19140) Bool)

(assert (=> b!1736962 (= res!780607 (isEmpty!12001 (_2!10769 lt!668253)))))

(declare-fun b!1736963 () Bool)

(declare-fun res!780619 () Bool)

(assert (=> b!1736963 (=> res!780619 e!1111554)))

(assert (=> b!1736963 (= res!780619 (not (= lt!668245 (dynLambda!8969 (toChars!4757 (transformation!3391 (rule!5385 (_1!10769 lt!668276)))) (value!106316 (_1!10769 lt!668276))))))))

(declare-fun b!1736964 () Bool)

(declare-fun res!780620 () Bool)

(declare-fun e!1111538 () Bool)

(assert (=> b!1736964 (=> res!780620 e!1111538)))

(assert (=> b!1736964 (= res!780620 (not (matchR!2193 (regex!3391 (rule!5385 (_1!10769 lt!668276))) lt!668264)))))

(declare-fun b!1736965 () Bool)

(declare-fun e!1111534 () Bool)

(assert (=> b!1736965 (= e!1111534 e!1111538)))

(declare-fun res!780602 () Bool)

(assert (=> b!1736965 (=> res!780602 e!1111538)))

(declare-fun isPrefix!1632 (List!19140 List!19140) Bool)

(assert (=> b!1736965 (= res!780602 (not (isPrefix!1632 lt!668264 lt!668278)))))

(declare-fun ++!5216 (List!19140 List!19140) List!19140)

(assert (=> b!1736965 (isPrefix!1632 lt!668264 (++!5216 lt!668264 (_2!10769 lt!668276)))))

(declare-fun lt!668277 () Unit!32997)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1142 (List!19140 List!19140) Unit!32997)

(assert (=> b!1736965 (= lt!668277 (lemmaConcatTwoListThenFirstIsPrefix!1142 lt!668264 (_2!10769 lt!668276)))))

(assert (=> b!1736965 (= lt!668264 (list!7712 lt!668245))))

(assert (=> b!1736965 (= lt!668245 (charsOf!2040 (_1!10769 lt!668276)))))

(assert (=> b!1736965 e!1111531))

(declare-fun res!780616 () Bool)

(assert (=> b!1736965 (=> (not res!780616) (not e!1111531))))

(declare-fun isDefined!3150 (Option!3807) Bool)

(assert (=> b!1736965 (= res!780616 (isDefined!3150 lt!668279))))

(declare-fun getRuleFromTag!441 (LexerInterface!3020 List!19141 String!21737) Option!3807)

(assert (=> b!1736965 (= lt!668279 (getRuleFromTag!441 thiss!24550 rules!3447 (tag!3725 (rule!5385 (_1!10769 lt!668276)))))))

(declare-fun lt!668236 () Unit!32997)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!441 (LexerInterface!3020 List!19141 List!19140 Token!6348) Unit!32997)

(assert (=> b!1736965 (= lt!668236 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!441 thiss!24550 rules!3447 lt!668278 (_1!10769 lt!668276)))))

(declare-fun lt!668257 () Option!3806)

(assert (=> b!1736965 (= lt!668276 (get!5719 lt!668257))))

(declare-fun lt!668235 () Unit!32997)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!544 (LexerInterface!3020 List!19141 List!19140 List!19140) Unit!32997)

(assert (=> b!1736965 (= lt!668235 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!544 thiss!24550 rules!3447 lt!668269 suffix!1421))))

(assert (=> b!1736965 (= lt!668257 (maxPrefix!1574 thiss!24550 rules!3447 lt!668278))))

(assert (=> b!1736965 (isPrefix!1632 lt!668269 lt!668278)))

(declare-fun lt!668259 () Unit!32997)

(assert (=> b!1736965 (= lt!668259 (lemmaConcatTwoListThenFirstIsPrefix!1142 lt!668269 suffix!1421))))

(assert (=> b!1736965 (= lt!668278 (++!5216 lt!668269 suffix!1421))))

(declare-fun b!1736966 () Bool)

(declare-fun e!1111552 () Unit!32997)

(declare-fun Unit!33000 () Unit!32997)

(assert (=> b!1736966 (= e!1111552 Unit!33000)))

(declare-fun b!1736967 () Bool)

(declare-fun e!1111541 () Bool)

(declare-fun e!1111537 () Bool)

(assert (=> b!1736967 (= e!1111541 e!1111537)))

(declare-fun res!780618 () Bool)

(assert (=> b!1736967 (=> res!780618 e!1111537)))

(declare-fun lt!668246 () List!19140)

(declare-fun lt!668275 () Option!3806)

(assert (=> b!1736967 (= res!780618 (or (not (= lt!668246 (_2!10769 lt!668276))) (not (= lt!668275 (Some!3805 (tuple2!18735 (_1!10769 lt!668276) lt!668246))))))))

(assert (=> b!1736967 (= (_2!10769 lt!668276) lt!668246)))

(declare-fun lt!668237 () Unit!32997)

(assert (=> b!1736967 (= lt!668237 (lemmaSamePrefixThenSameSuffix!776 lt!668264 (_2!10769 lt!668276) lt!668264 lt!668246 lt!668278))))

(declare-fun getSuffix!826 (List!19140 List!19140) List!19140)

(assert (=> b!1736967 (= lt!668246 (getSuffix!826 lt!668278 lt!668264))))

(declare-fun lt!668247 () TokenValue!3481)

(declare-fun lt!668241 () Int)

(assert (=> b!1736967 (= lt!668275 (Some!3805 (tuple2!18735 (Token!6349 lt!668247 (rule!5385 (_1!10769 lt!668276)) lt!668241 lt!668264) (_2!10769 lt!668276))))))

(declare-fun maxPrefixOneRule!950 (LexerInterface!3020 Rule!6582 List!19140) Option!3806)

(assert (=> b!1736967 (= lt!668275 (maxPrefixOneRule!950 thiss!24550 (rule!5385 (_1!10769 lt!668276)) lt!668278))))

(declare-fun size!15155 (List!19140) Int)

(assert (=> b!1736967 (= lt!668241 (size!15155 lt!668264))))

(declare-fun apply!5196 (TokenValueInjection!6622 BalanceConc!12630) TokenValue!3481)

(declare-fun seqFromList!2365 (List!19140) BalanceConc!12630)

(assert (=> b!1736967 (= lt!668247 (apply!5196 (transformation!3391 (rule!5385 (_1!10769 lt!668276))) (seqFromList!2365 lt!668264)))))

(declare-fun lt!668249 () Unit!32997)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!349 (LexerInterface!3020 List!19141 List!19140 List!19140 List!19140 Rule!6582) Unit!32997)

(assert (=> b!1736967 (= lt!668249 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!349 thiss!24550 rules!3447 lt!668264 lt!668278 (_2!10769 lt!668276) (rule!5385 (_1!10769 lt!668276))))))

(declare-fun b!1736968 () Bool)

(declare-fun e!1111558 () Bool)

(assert (=> b!1736968 (= e!1111558 e!1111535)))

(declare-fun res!780605 () Bool)

(assert (=> b!1736968 (=> res!780605 e!1111535)))

(declare-fun lt!668266 () Int)

(declare-fun lt!668260 () Int)

(assert (=> b!1736968 (= res!780605 (not (= lt!668266 lt!668260)))))

(declare-fun lt!668243 () Unit!32997)

(assert (=> b!1736968 (= lt!668243 e!1111549)))

(declare-fun c!283507 () Bool)

(assert (=> b!1736968 (= c!283507 (< lt!668266 lt!668260))))

(declare-fun tp!494908 () Bool)

(declare-fun e!1111561 () Bool)

(declare-fun b!1736969 () Bool)

(declare-fun e!1111562 () Bool)

(assert (=> b!1736969 (= e!1111561 (and tp!494908 (inv!24690 (tag!3725 (rule!5385 token!523))) (inv!24695 (transformation!3391 (rule!5385 token!523))) e!1111562))))

(assert (=> b!1736970 (= e!1111545 (and tp!494904 tp!494907))))

(assert (=> b!1736971 (= e!1111562 (and tp!494911 tp!494905))))

(declare-fun tp!494901 () Bool)

(declare-fun b!1736972 () Bool)

(declare-fun inv!21 (TokenValue!3481) Bool)

(assert (=> b!1736972 (= e!1111550 (and (inv!21 (value!106316 token!523)) e!1111561 tp!494901))))

(declare-fun b!1736973 () Bool)

(declare-fun res!780609 () Bool)

(assert (=> b!1736973 (=> (not res!780609) (not e!1111539))))

(declare-fun isEmpty!12002 (List!19141) Bool)

(assert (=> b!1736973 (= res!780609 (not (isEmpty!12002 rules!3447)))))

(declare-fun b!1736974 () Bool)

(declare-fun Unit!33001 () Unit!32997)

(assert (=> b!1736974 (= e!1111549 Unit!33001)))

(declare-fun b!1736975 () Bool)

(declare-fun tp_is_empty!7681 () Bool)

(declare-fun tp!494909 () Bool)

(assert (=> b!1736975 (= e!1111555 (and tp_is_empty!7681 tp!494909))))

(declare-fun b!1736976 () Bool)

(assert (=> b!1736976 (= e!1111540 e!1111534)))

(declare-fun res!780597 () Bool)

(assert (=> b!1736976 (=> res!780597 e!1111534)))

(declare-fun lt!668274 () Regex!4719)

(declare-fun lt!668240 () List!19140)

(declare-fun prefixMatch!604 (Regex!4719 List!19140) Bool)

(assert (=> b!1736976 (= res!780597 (prefixMatch!604 lt!668274 lt!668240))))

(declare-fun head!3968 (List!19140) C!9612)

(assert (=> b!1736976 (= lt!668240 (++!5216 lt!668269 (Cons!19070 (head!3968 suffix!1421) Nil!19070)))))

(declare-fun rulesRegex!749 (LexerInterface!3020 List!19141) Regex!4719)

(assert (=> b!1736976 (= lt!668274 (rulesRegex!749 thiss!24550 rules!3447))))

(declare-fun tp!494903 () Bool)

(declare-fun b!1736977 () Bool)

(assert (=> b!1736977 (= e!1111536 (and tp!494903 (inv!24690 (tag!3725 (h!24472 rules!3447))) (inv!24695 (transformation!3391 (h!24472 rules!3447))) e!1111553))))

(declare-fun b!1736978 () Bool)

(declare-fun e!1111532 () Unit!32997)

(declare-fun Unit!33002 () Unit!32997)

(assert (=> b!1736978 (= e!1111532 Unit!33002)))

(declare-fun lt!668251 () Unit!32997)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!128 (LexerInterface!3020 List!19141 Rule!6582 List!19140 List!19140 Rule!6582) Unit!32997)

(assert (=> b!1736978 (= lt!668251 (lemmaMaxPrefNoSmallerRuleMatches!128 thiss!24550 rules!3447 (rule!5385 (_1!10769 lt!668276)) lt!668264 lt!668278 (rule!5385 token!523)))))

(declare-fun res!780613 () Bool)

(assert (=> b!1736978 (= res!780613 (not (matchR!2193 (regex!3391 (rule!5385 token!523)) lt!668264)))))

(assert (=> b!1736978 (=> (not res!780613) (not e!1111546))))

(assert (=> b!1736978 e!1111546))

(declare-fun b!1736979 () Bool)

(declare-fun res!780608 () Bool)

(assert (=> b!1736979 (=> res!780608 e!1111540)))

(assert (=> b!1736979 (= res!780608 (isEmpty!12001 suffix!1421))))

(declare-fun b!1736980 () Bool)

(assert (=> b!1736980 (= e!1111537 e!1111558)))

(declare-fun res!780615 () Bool)

(assert (=> b!1736980 (=> res!780615 e!1111558)))

(declare-fun lt!668256 () Bool)

(assert (=> b!1736980 (= res!780615 lt!668256)))

(declare-fun lt!668267 () Unit!32997)

(assert (=> b!1736980 (= lt!668267 e!1111552)))

(declare-fun c!283506 () Bool)

(assert (=> b!1736980 (= c!283506 lt!668256)))

(assert (=> b!1736980 (= lt!668256 (> lt!668266 lt!668260))))

(declare-fun size!15156 (BalanceConc!12630) Int)

(assert (=> b!1736980 (= lt!668260 (size!15156 lt!668242))))

(assert (=> b!1736980 (matchR!2193 lt!668274 lt!668269)))

(declare-fun lt!668262 () Unit!32997)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!140 (LexerInterface!3020 List!19141 List!19140 Token!6348 Rule!6582 List!19140) Unit!32997)

(assert (=> b!1736980 (= lt!668262 (lemmaMaxPrefixThenMatchesRulesRegex!140 thiss!24550 rules!3447 lt!668269 token!523 rule!422 Nil!19070))))

(declare-fun b!1736981 () Bool)

(assert (=> b!1736981 (= e!1111554 e!1111541)))

(declare-fun res!780611 () Bool)

(assert (=> b!1736981 (=> res!780611 e!1111541)))

(declare-fun lt!668261 () TokenValue!3481)

(assert (=> b!1736981 (= res!780611 (not (= lt!668257 (Some!3805 (tuple2!18735 (Token!6349 lt!668261 (rule!5385 (_1!10769 lt!668276)) lt!668266 lt!668264) (_2!10769 lt!668276))))))))

(assert (=> b!1736981 (= lt!668266 (size!15156 lt!668245))))

(assert (=> b!1736981 (= lt!668261 (apply!5196 (transformation!3391 (rule!5385 (_1!10769 lt!668276))) lt!668245))))

(declare-fun lt!668268 () Unit!32997)

(declare-fun lemmaCharactersSize!463 (Token!6348) Unit!32997)

(assert (=> b!1736981 (= lt!668268 (lemmaCharactersSize!463 (_1!10769 lt!668276)))))

(declare-fun lt!668252 () Unit!32997)

(declare-fun lemmaEqSameImage!316 (TokenValueInjection!6622 BalanceConc!12630 BalanceConc!12630) Unit!32997)

(assert (=> b!1736981 (= lt!668252 (lemmaEqSameImage!316 (transformation!3391 (rule!5385 (_1!10769 lt!668276))) lt!668245 (seqFromList!2365 (originalCharacters!4205 (_1!10769 lt!668276)))))))

(declare-fun b!1736982 () Bool)

(assert (=> b!1736982 (= e!1111560 (contains!3413 rules!3447 (rule!5385 token!523)))))

(declare-fun lt!668248 () Unit!32997)

(assert (=> b!1736982 (= lt!668248 e!1111532)))

(declare-fun c!283505 () Bool)

(declare-fun getIndex!158 (List!19141 Rule!6582) Int)

(assert (=> b!1736982 (= c!283505 (< (getIndex!158 rules!3447 (rule!5385 token!523)) (getIndex!158 rules!3447 (rule!5385 (_1!10769 lt!668276)))))))

(assert (=> b!1736983 (= e!1111538 e!1111542)))

(declare-fun res!780617 () Bool)

(assert (=> b!1736983 (=> res!780617 e!1111542)))

(declare-fun Forall!766 (Int) Bool)

(assert (=> b!1736983 (= res!780617 (not (Forall!766 lambda!69512)))))

(declare-fun lt!668258 () Unit!32997)

(declare-fun lemmaInv!598 (TokenValueInjection!6622) Unit!32997)

(assert (=> b!1736983 (= lt!668258 (lemmaInv!598 (transformation!3391 (rule!5385 (_1!10769 lt!668276)))))))

(declare-fun b!1736984 () Bool)

(declare-fun Unit!33003 () Unit!32997)

(assert (=> b!1736984 (= e!1111552 Unit!33003)))

(declare-fun lt!668255 () Unit!32997)

(assert (=> b!1736984 (= lt!668255 (lemmaMaxPrefixThenMatchesRulesRegex!140 thiss!24550 rules!3447 lt!668278 (_1!10769 lt!668276) (rule!5385 (_1!10769 lt!668276)) (_2!10769 lt!668276)))))

(assert (=> b!1736984 (matchR!2193 lt!668274 lt!668264)))

(declare-fun lt!668265 () List!19140)

(assert (=> b!1736984 (= lt!668265 (getSuffix!826 lt!668278 lt!668269))))

(declare-fun lt!668272 () Unit!32997)

(assert (=> b!1736984 (= lt!668272 (lemmaSamePrefixThenSameSuffix!776 lt!668269 suffix!1421 lt!668269 lt!668265 lt!668278))))

(assert (=> b!1736984 (= suffix!1421 lt!668265)))

(declare-fun lt!668280 () Unit!32997)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!227 (List!19140 List!19140) Unit!32997)

(assert (=> b!1736984 (= lt!668280 (lemmaAddHeadSuffixToPrefixStillPrefix!227 lt!668269 lt!668278))))

(assert (=> b!1736984 (isPrefix!1632 (++!5216 lt!668269 (Cons!19070 (head!3968 lt!668265) Nil!19070)) lt!668278)))

(declare-fun lt!668244 () Unit!32997)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!107 (List!19140 List!19140 List!19140) Unit!32997)

(assert (=> b!1736984 (= lt!668244 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!107 lt!668264 lt!668240 lt!668278))))

(assert (=> b!1736984 (isPrefix!1632 lt!668240 lt!668264)))

(declare-fun lt!668254 () Unit!32997)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!100 (Regex!4719 List!19140 List!19140) Unit!32997)

(assert (=> b!1736984 (= lt!668254 (lemmaNotPrefixMatchThenCannotMatchLonger!100 lt!668274 lt!668240 lt!668264))))

(assert (=> b!1736984 false))

(declare-fun b!1736985 () Bool)

(declare-fun Unit!33004 () Unit!32997)

(assert (=> b!1736985 (= e!1111532 Unit!33004)))

(assert (= (and start!170930 res!780603) b!1736973))

(assert (= (and b!1736973 res!780609) b!1736955))

(assert (= (and b!1736955 res!780601) b!1736948))

(assert (= (and b!1736948 res!780610) b!1736957))

(assert (= (and b!1736957 res!780612) b!1736951))

(assert (= (and b!1736951 res!780598) b!1736962))

(assert (= (and b!1736962 res!780607) b!1736956))

(assert (= (and b!1736956 res!780606) b!1736949))

(assert (= (and b!1736949 (not res!780600)) b!1736979))

(assert (= (and b!1736979 (not res!780608)) b!1736976))

(assert (= (and b!1736976 (not res!780597)) b!1736965))

(assert (= (and b!1736965 res!780616) b!1736958))

(assert (= (and b!1736958 res!780599) b!1736959))

(assert (= (and b!1736965 (not res!780602)) b!1736964))

(assert (= (and b!1736964 (not res!780620)) b!1736983))

(assert (= (and b!1736983 (not res!780617)) b!1736960))

(assert (= (and b!1736960 (not res!780604)) b!1736963))

(assert (= (and b!1736963 (not res!780619)) b!1736981))

(assert (= (and b!1736981 (not res!780611)) b!1736967))

(assert (= (and b!1736967 (not res!780618)) b!1736980))

(assert (= (and b!1736980 c!283506) b!1736984))

(assert (= (and b!1736980 (not c!283506)) b!1736966))

(assert (= (and b!1736980 (not res!780615)) b!1736968))

(assert (= (and b!1736968 c!283507) b!1736954))

(assert (= (and b!1736968 (not c!283507)) b!1736974))

(assert (= (and b!1736968 (not res!780605)) b!1736950))

(assert (= (and b!1736950 (not res!780614)) b!1736982))

(assert (= (and b!1736982 c!283505) b!1736978))

(assert (= (and b!1736982 (not c!283505)) b!1736985))

(assert (= (and b!1736978 res!780613) b!1736947))

(assert (= (and start!170930 ((_ is Cons!19070) suffix!1421)) b!1736975))

(assert (= b!1736952 b!1736970))

(assert (= start!170930 b!1736952))

(assert (= b!1736969 b!1736971))

(assert (= b!1736972 b!1736969))

(assert (= start!170930 b!1736972))

(assert (= b!1736977 b!1736961))

(assert (= b!1736953 b!1736977))

(assert (= (and start!170930 ((_ is Cons!19071) rules!3447)) b!1736953))

(declare-fun b_lambda!55575 () Bool)

(assert (=> (not b_lambda!55575) (not b!1736960)))

(declare-fun tb!103713 () Bool)

(declare-fun t!161417 () Bool)

(assert (=> (and b!1736970 (= (toChars!4757 (transformation!3391 rule!422)) (toChars!4757 (transformation!3391 (rule!5385 (_1!10769 lt!668276))))) t!161417) tb!103713))

(declare-fun tp!494915 () Bool)

(declare-fun e!1111574 () Bool)

(declare-fun b!1737001 () Bool)

(declare-fun inv!24697 (Conc!6343) Bool)

(assert (=> b!1737001 (= e!1111574 (and (inv!24697 (c!283509 (dynLambda!8969 (toChars!4757 (transformation!3391 (rule!5385 (_1!10769 lt!668276)))) (dynLambda!8970 (toValue!4898 (transformation!3391 (rule!5385 (_1!10769 lt!668276)))) lt!668245)))) tp!494915))))

(declare-fun result!124724 () Bool)

(declare-fun inv!24698 (BalanceConc!12630) Bool)

(assert (=> tb!103713 (= result!124724 (and (inv!24698 (dynLambda!8969 (toChars!4757 (transformation!3391 (rule!5385 (_1!10769 lt!668276)))) (dynLambda!8970 (toValue!4898 (transformation!3391 (rule!5385 (_1!10769 lt!668276)))) lt!668245))) e!1111574))))

(assert (= tb!103713 b!1737001))

(declare-fun m!2146949 () Bool)

(assert (=> b!1737001 m!2146949))

(declare-fun m!2146951 () Bool)

(assert (=> tb!103713 m!2146951))

(assert (=> b!1736960 t!161417))

(declare-fun b_and!128723 () Bool)

(assert (= b_and!128713 (and (=> t!161417 result!124724) b_and!128723)))

(declare-fun tb!103715 () Bool)

(declare-fun t!161419 () Bool)

(assert (=> (and b!1736971 (= (toChars!4757 (transformation!3391 (rule!5385 token!523))) (toChars!4757 (transformation!3391 (rule!5385 (_1!10769 lt!668276))))) t!161419) tb!103715))

(declare-fun result!124728 () Bool)

(assert (= result!124728 result!124724))

(assert (=> b!1736960 t!161419))

(declare-fun b_and!128725 () Bool)

(assert (= b_and!128717 (and (=> t!161419 result!124728) b_and!128725)))

(declare-fun tb!103717 () Bool)

(declare-fun t!161421 () Bool)

(assert (=> (and b!1736961 (= (toChars!4757 (transformation!3391 (h!24472 rules!3447))) (toChars!4757 (transformation!3391 (rule!5385 (_1!10769 lt!668276))))) t!161421) tb!103717))

(declare-fun result!124730 () Bool)

(assert (= result!124730 result!124724))

(assert (=> b!1736960 t!161421))

(declare-fun b_and!128727 () Bool)

(assert (= b_and!128721 (and (=> t!161421 result!124730) b_and!128727)))

(declare-fun b_lambda!55577 () Bool)

(assert (=> (not b_lambda!55577) (not b!1736960)))

(declare-fun t!161423 () Bool)

(declare-fun tb!103719 () Bool)

(assert (=> (and b!1736970 (= (toValue!4898 (transformation!3391 rule!422)) (toValue!4898 (transformation!3391 (rule!5385 (_1!10769 lt!668276))))) t!161423) tb!103719))

(declare-fun result!124732 () Bool)

(assert (=> tb!103719 (= result!124732 (inv!21 (dynLambda!8970 (toValue!4898 (transformation!3391 (rule!5385 (_1!10769 lt!668276)))) lt!668245)))))

(declare-fun m!2146953 () Bool)

(assert (=> tb!103719 m!2146953))

(assert (=> b!1736960 t!161423))

(declare-fun b_and!128729 () Bool)

(assert (= b_and!128711 (and (=> t!161423 result!124732) b_and!128729)))

(declare-fun tb!103721 () Bool)

(declare-fun t!161425 () Bool)

(assert (=> (and b!1736971 (= (toValue!4898 (transformation!3391 (rule!5385 token!523))) (toValue!4898 (transformation!3391 (rule!5385 (_1!10769 lt!668276))))) t!161425) tb!103721))

(declare-fun result!124736 () Bool)

(assert (= result!124736 result!124732))

(assert (=> b!1736960 t!161425))

(declare-fun b_and!128731 () Bool)

(assert (= b_and!128715 (and (=> t!161425 result!124736) b_and!128731)))

(declare-fun t!161427 () Bool)

(declare-fun tb!103723 () Bool)

(assert (=> (and b!1736961 (= (toValue!4898 (transformation!3391 (h!24472 rules!3447))) (toValue!4898 (transformation!3391 (rule!5385 (_1!10769 lt!668276))))) t!161427) tb!103723))

(declare-fun result!124738 () Bool)

(assert (= result!124738 result!124732))

(assert (=> b!1736960 t!161427))

(declare-fun b_and!128733 () Bool)

(assert (= b_and!128719 (and (=> t!161427 result!124738) b_and!128733)))

(declare-fun b_lambda!55579 () Bool)

(assert (=> (not b_lambda!55579) (not b!1736963)))

(declare-fun t!161429 () Bool)

(declare-fun tb!103725 () Bool)

(assert (=> (and b!1736970 (= (toChars!4757 (transformation!3391 rule!422)) (toChars!4757 (transformation!3391 (rule!5385 (_1!10769 lt!668276))))) t!161429) tb!103725))

(declare-fun b!1737004 () Bool)

(declare-fun e!1111578 () Bool)

(declare-fun tp!494916 () Bool)

(assert (=> b!1737004 (= e!1111578 (and (inv!24697 (c!283509 (dynLambda!8969 (toChars!4757 (transformation!3391 (rule!5385 (_1!10769 lt!668276)))) (value!106316 (_1!10769 lt!668276))))) tp!494916))))

(declare-fun result!124740 () Bool)

(assert (=> tb!103725 (= result!124740 (and (inv!24698 (dynLambda!8969 (toChars!4757 (transformation!3391 (rule!5385 (_1!10769 lt!668276)))) (value!106316 (_1!10769 lt!668276)))) e!1111578))))

(assert (= tb!103725 b!1737004))

(declare-fun m!2146955 () Bool)

(assert (=> b!1737004 m!2146955))

(declare-fun m!2146957 () Bool)

(assert (=> tb!103725 m!2146957))

(assert (=> b!1736963 t!161429))

(declare-fun b_and!128735 () Bool)

(assert (= b_and!128723 (and (=> t!161429 result!124740) b_and!128735)))

(declare-fun tb!103727 () Bool)

(declare-fun t!161431 () Bool)

(assert (=> (and b!1736971 (= (toChars!4757 (transformation!3391 (rule!5385 token!523))) (toChars!4757 (transformation!3391 (rule!5385 (_1!10769 lt!668276))))) t!161431) tb!103727))

(declare-fun result!124742 () Bool)

(assert (= result!124742 result!124740))

(assert (=> b!1736963 t!161431))

(declare-fun b_and!128737 () Bool)

(assert (= b_and!128725 (and (=> t!161431 result!124742) b_and!128737)))

(declare-fun tb!103729 () Bool)

(declare-fun t!161433 () Bool)

(assert (=> (and b!1736961 (= (toChars!4757 (transformation!3391 (h!24472 rules!3447))) (toChars!4757 (transformation!3391 (rule!5385 (_1!10769 lt!668276))))) t!161433) tb!103729))

(declare-fun result!124744 () Bool)

(assert (= result!124744 result!124740))

(assert (=> b!1736963 t!161433))

(declare-fun b_and!128739 () Bool)

(assert (= b_and!128727 (and (=> t!161433 result!124744) b_and!128739)))

(declare-fun m!2146959 () Bool)

(assert (=> b!1736948 m!2146959))

(declare-fun m!2146961 () Bool)

(assert (=> b!1736960 m!2146961))

(assert (=> b!1736960 m!2146961))

(declare-fun m!2146963 () Bool)

(assert (=> b!1736960 m!2146963))

(assert (=> b!1736960 m!2146963))

(declare-fun m!2146965 () Bool)

(assert (=> b!1736960 m!2146965))

(declare-fun m!2146967 () Bool)

(assert (=> b!1736960 m!2146967))

(declare-fun m!2146969 () Bool)

(assert (=> b!1736982 m!2146969))

(declare-fun m!2146971 () Bool)

(assert (=> b!1736982 m!2146971))

(declare-fun m!2146973 () Bool)

(assert (=> b!1736982 m!2146973))

(declare-fun m!2146975 () Bool)

(assert (=> b!1736955 m!2146975))

(declare-fun m!2146977 () Bool)

(assert (=> b!1736957 m!2146977))

(declare-fun m!2146979 () Bool)

(assert (=> b!1736957 m!2146979))

(declare-fun m!2146981 () Bool)

(assert (=> b!1736957 m!2146981))

(declare-fun m!2146983 () Bool)

(assert (=> b!1736957 m!2146983))

(declare-fun m!2146985 () Bool)

(assert (=> b!1736981 m!2146985))

(declare-fun m!2146987 () Bool)

(assert (=> b!1736981 m!2146987))

(declare-fun m!2146989 () Bool)

(assert (=> b!1736981 m!2146989))

(declare-fun m!2146991 () Bool)

(assert (=> b!1736981 m!2146991))

(assert (=> b!1736981 m!2146987))

(declare-fun m!2146993 () Bool)

(assert (=> b!1736981 m!2146993))

(declare-fun m!2146995 () Bool)

(assert (=> b!1736962 m!2146995))

(declare-fun m!2146997 () Bool)

(assert (=> b!1736954 m!2146997))

(declare-fun m!2146999 () Bool)

(assert (=> b!1736977 m!2146999))

(declare-fun m!2147001 () Bool)

(assert (=> b!1736977 m!2147001))

(declare-fun m!2147003 () Bool)

(assert (=> b!1736972 m!2147003))

(declare-fun m!2147005 () Bool)

(assert (=> b!1736980 m!2147005))

(declare-fun m!2147007 () Bool)

(assert (=> b!1736980 m!2147007))

(declare-fun m!2147009 () Bool)

(assert (=> b!1736980 m!2147009))

(declare-fun m!2147011 () Bool)

(assert (=> b!1736967 m!2147011))

(declare-fun m!2147013 () Bool)

(assert (=> b!1736967 m!2147013))

(declare-fun m!2147015 () Bool)

(assert (=> b!1736967 m!2147015))

(declare-fun m!2147017 () Bool)

(assert (=> b!1736967 m!2147017))

(declare-fun m!2147019 () Bool)

(assert (=> b!1736967 m!2147019))

(assert (=> b!1736967 m!2147011))

(declare-fun m!2147021 () Bool)

(assert (=> b!1736967 m!2147021))

(declare-fun m!2147023 () Bool)

(assert (=> b!1736967 m!2147023))

(declare-fun m!2147025 () Bool)

(assert (=> b!1736950 m!2147025))

(declare-fun m!2147027 () Bool)

(assert (=> b!1736950 m!2147027))

(declare-fun m!2147029 () Bool)

(assert (=> start!170930 m!2147029))

(declare-fun m!2147031 () Bool)

(assert (=> b!1736978 m!2147031))

(declare-fun m!2147033 () Bool)

(assert (=> b!1736978 m!2147033))

(declare-fun m!2147035 () Bool)

(assert (=> b!1736949 m!2147035))

(declare-fun m!2147037 () Bool)

(assert (=> b!1736949 m!2147037))

(declare-fun m!2147039 () Bool)

(assert (=> b!1736949 m!2147039))

(declare-fun m!2147041 () Bool)

(assert (=> b!1736984 m!2147041))

(declare-fun m!2147043 () Bool)

(assert (=> b!1736984 m!2147043))

(declare-fun m!2147045 () Bool)

(assert (=> b!1736984 m!2147045))

(declare-fun m!2147047 () Bool)

(assert (=> b!1736984 m!2147047))

(declare-fun m!2147049 () Bool)

(assert (=> b!1736984 m!2147049))

(declare-fun m!2147051 () Bool)

(assert (=> b!1736984 m!2147051))

(assert (=> b!1736984 m!2147049))

(declare-fun m!2147053 () Bool)

(assert (=> b!1736984 m!2147053))

(declare-fun m!2147055 () Bool)

(assert (=> b!1736984 m!2147055))

(declare-fun m!2147057 () Bool)

(assert (=> b!1736984 m!2147057))

(declare-fun m!2147059 () Bool)

(assert (=> b!1736984 m!2147059))

(declare-fun m!2147061 () Bool)

(assert (=> b!1736984 m!2147061))

(declare-fun m!2147063 () Bool)

(assert (=> b!1736951 m!2147063))

(declare-fun m!2147065 () Bool)

(assert (=> b!1736958 m!2147065))

(assert (=> b!1736958 m!2147065))

(declare-fun m!2147067 () Bool)

(assert (=> b!1736958 m!2147067))

(assert (=> b!1736958 m!2147067))

(declare-fun m!2147069 () Bool)

(assert (=> b!1736958 m!2147069))

(declare-fun m!2147071 () Bool)

(assert (=> b!1736958 m!2147071))

(declare-fun m!2147073 () Bool)

(assert (=> b!1736963 m!2147073))

(declare-fun m!2147075 () Bool)

(assert (=> b!1736965 m!2147075))

(declare-fun m!2147077 () Bool)

(assert (=> b!1736965 m!2147077))

(assert (=> b!1736965 m!2147065))

(declare-fun m!2147079 () Bool)

(assert (=> b!1736965 m!2147079))

(declare-fun m!2147081 () Bool)

(assert (=> b!1736965 m!2147081))

(declare-fun m!2147083 () Bool)

(assert (=> b!1736965 m!2147083))

(declare-fun m!2147085 () Bool)

(assert (=> b!1736965 m!2147085))

(declare-fun m!2147087 () Bool)

(assert (=> b!1736965 m!2147087))

(declare-fun m!2147089 () Bool)

(assert (=> b!1736965 m!2147089))

(declare-fun m!2147091 () Bool)

(assert (=> b!1736965 m!2147091))

(assert (=> b!1736965 m!2147075))

(declare-fun m!2147093 () Bool)

(assert (=> b!1736965 m!2147093))

(declare-fun m!2147095 () Bool)

(assert (=> b!1736965 m!2147095))

(declare-fun m!2147097 () Bool)

(assert (=> b!1736965 m!2147097))

(declare-fun m!2147099 () Bool)

(assert (=> b!1736965 m!2147099))

(declare-fun m!2147101 () Bool)

(assert (=> b!1736965 m!2147101))

(declare-fun m!2147103 () Bool)

(assert (=> b!1736976 m!2147103))

(declare-fun m!2147105 () Bool)

(assert (=> b!1736976 m!2147105))

(declare-fun m!2147107 () Bool)

(assert (=> b!1736976 m!2147107))

(declare-fun m!2147109 () Bool)

(assert (=> b!1736976 m!2147109))

(declare-fun m!2147111 () Bool)

(assert (=> b!1736973 m!2147111))

(declare-fun m!2147113 () Bool)

(assert (=> b!1736952 m!2147113))

(declare-fun m!2147115 () Bool)

(assert (=> b!1736952 m!2147115))

(declare-fun m!2147117 () Bool)

(assert (=> b!1736969 m!2147117))

(declare-fun m!2147119 () Bool)

(assert (=> b!1736969 m!2147119))

(declare-fun m!2147121 () Bool)

(assert (=> b!1736964 m!2147121))

(declare-fun m!2147123 () Bool)

(assert (=> b!1736979 m!2147123))

(declare-fun m!2147125 () Bool)

(assert (=> b!1736983 m!2147125))

(declare-fun m!2147127 () Bool)

(assert (=> b!1736983 m!2147127))

(check-sat (not b!1736965) (not b_next!48363) (not b!1736975) b_and!128735 (not b!1736957) (not b!1736952) (not b!1736962) (not b!1736964) (not b!1736979) (not b_lambda!55575) (not b!1736953) (not b_lambda!55579) (not b!1736973) b_and!128737 (not b!1736967) (not b_next!48357) (not b!1736960) b_and!128729 b_and!128733 (not tb!103719) (not b!1736950) (not b!1736954) (not b!1736982) (not b_next!48359) (not b!1736983) (not b!1736951) (not b!1736977) (not b_lambda!55577) (not b!1736978) (not b!1736984) b_and!128731 (not b!1737001) (not b!1736948) (not b!1736976) b_and!128739 (not b!1736949) (not b!1736958) (not b!1736955) (not b_next!48361) (not b!1737004) (not b!1736972) (not tb!103725) (not b_next!48365) (not b!1736981) (not tb!103713) (not start!170930) (not b_next!48355) (not b!1736980) tp_is_empty!7681 (not b!1736969))
(check-sat b_and!128729 b_and!128733 (not b_next!48363) (not b_next!48359) b_and!128735 b_and!128731 b_and!128739 (not b_next!48361) (not b_next!48365) (not b_next!48355) b_and!128737 (not b_next!48357))
