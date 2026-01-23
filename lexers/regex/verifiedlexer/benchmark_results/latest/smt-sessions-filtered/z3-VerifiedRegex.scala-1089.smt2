; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56024 () Bool)

(assert start!56024)

(declare-fun b!594683 () Bool)

(declare-fun b_free!16781 () Bool)

(declare-fun b_next!16797 () Bool)

(assert (=> b!594683 (= b_free!16781 (not b_next!16797))))

(declare-fun tp!185439 () Bool)

(declare-fun b_and!58643 () Bool)

(assert (=> b!594683 (= tp!185439 b_and!58643)))

(declare-fun b_free!16783 () Bool)

(declare-fun b_next!16799 () Bool)

(assert (=> b!594683 (= b_free!16783 (not b_next!16799))))

(declare-fun tp!185444 () Bool)

(declare-fun b_and!58645 () Bool)

(assert (=> b!594683 (= tp!185444 b_and!58645)))

(declare-fun b!594694 () Bool)

(declare-fun b_free!16785 () Bool)

(declare-fun b_next!16801 () Bool)

(assert (=> b!594694 (= b_free!16785 (not b_next!16801))))

(declare-fun tp!185440 () Bool)

(declare-fun b_and!58647 () Bool)

(assert (=> b!594694 (= tp!185440 b_and!58647)))

(declare-fun b_free!16787 () Bool)

(declare-fun b_next!16803 () Bool)

(assert (=> b!594694 (= b_free!16787 (not b_next!16803))))

(declare-fun tp!185441 () Bool)

(declare-fun b_and!58649 () Bool)

(assert (=> b!594694 (= tp!185441 b_and!58649)))

(declare-fun b!594682 () Bool)

(declare-fun e!359814 () Bool)

(declare-fun e!359815 () Bool)

(declare-fun tp!185435 () Bool)

(assert (=> b!594682 (= e!359814 (and e!359815 tp!185435))))

(declare-fun e!359810 () Bool)

(assert (=> b!594683 (= e!359810 (and tp!185439 tp!185444))))

(declare-datatypes ((C!3920 0))(
  ( (C!3921 (val!2186 Int)) )
))
(declare-datatypes ((Regex!1499 0))(
  ( (ElementMatch!1499 (c!110759 C!3920)) (Concat!2688 (regOne!3510 Regex!1499) (regTwo!3510 Regex!1499)) (EmptyExpr!1499) (Star!1499 (reg!1828 Regex!1499)) (EmptyLang!1499) (Union!1499 (regOne!3511 Regex!1499) (regTwo!3511 Regex!1499)) )
))
(declare-datatypes ((List!5912 0))(
  ( (Nil!5902) (Cons!5902 (h!11303 (_ BitVec 16)) (t!79301 List!5912)) )
))
(declare-datatypes ((TokenValue!1189 0))(
  ( (FloatLiteralValue!2378 (text!8768 List!5912)) (TokenValueExt!1188 (__x!4276 Int)) (Broken!5945 (value!38043 List!5912)) (Object!1198) (End!1189) (Def!1189) (Underscore!1189) (Match!1189) (Else!1189) (Error!1189) (Case!1189) (If!1189) (Extends!1189) (Abstract!1189) (Class!1189) (Val!1189) (DelimiterValue!2378 (del!1249 List!5912)) (KeywordValue!1195 (value!38044 List!5912)) (CommentValue!2378 (value!38045 List!5912)) (WhitespaceValue!2378 (value!38046 List!5912)) (IndentationValue!1189 (value!38047 List!5912)) (String!7688) (Int32!1189) (Broken!5946 (value!38048 List!5912)) (Boolean!1190) (Unit!10728) (OperatorValue!1192 (op!1249 List!5912)) (IdentifierValue!2378 (value!38049 List!5912)) (IdentifierValue!2379 (value!38050 List!5912)) (WhitespaceValue!2379 (value!38051 List!5912)) (True!2378) (False!2378) (Broken!5947 (value!38052 List!5912)) (Broken!5948 (value!38053 List!5912)) (True!2379) (RightBrace!1189) (RightBracket!1189) (Colon!1189) (Null!1189) (Comma!1189) (LeftBracket!1189) (False!2379) (LeftBrace!1189) (ImaginaryLiteralValue!1189 (text!8769 List!5912)) (StringLiteralValue!3567 (value!38054 List!5912)) (EOFValue!1189 (value!38055 List!5912)) (IdentValue!1189 (value!38056 List!5912)) (DelimiterValue!2379 (value!38057 List!5912)) (DedentValue!1189 (value!38058 List!5912)) (NewLineValue!1189 (value!38059 List!5912)) (IntegerValue!3567 (value!38060 (_ BitVec 32)) (text!8770 List!5912)) (IntegerValue!3568 (value!38061 Int) (text!8771 List!5912)) (Times!1189) (Or!1189) (Equal!1189) (Minus!1189) (Broken!5949 (value!38062 List!5912)) (And!1189) (Div!1189) (LessEqual!1189) (Mod!1189) (Concat!2689) (Not!1189) (Plus!1189) (SpaceValue!1189 (value!38063 List!5912)) (IntegerValue!3569 (value!38064 Int) (text!8772 List!5912)) (StringLiteralValue!3568 (text!8773 List!5912)) (FloatLiteralValue!2379 (text!8774 List!5912)) (BytesLiteralValue!1189 (value!38065 List!5912)) (CommentValue!2379 (value!38066 List!5912)) (StringLiteralValue!3569 (value!38067 List!5912)) (ErrorTokenValue!1189 (msg!1250 List!5912)) )
))
(declare-datatypes ((String!7689 0))(
  ( (String!7690 (value!38068 String)) )
))
(declare-datatypes ((List!5913 0))(
  ( (Nil!5903) (Cons!5903 (h!11304 C!3920) (t!79302 List!5913)) )
))
(declare-datatypes ((IArray!3765 0))(
  ( (IArray!3766 (innerList!1940 List!5913)) )
))
(declare-datatypes ((Conc!1882 0))(
  ( (Node!1882 (left!4777 Conc!1882) (right!5107 Conc!1882) (csize!3994 Int) (cheight!2093 Int)) (Leaf!2972 (xs!4519 IArray!3765) (csize!3995 Int)) (Empty!1882) )
))
(declare-datatypes ((BalanceConc!3772 0))(
  ( (BalanceConc!3773 (c!110760 Conc!1882)) )
))
(declare-datatypes ((TokenValueInjection!2146 0))(
  ( (TokenValueInjection!2147 (toValue!2056 Int) (toChars!1915 Int)) )
))
(declare-datatypes ((Rule!2130 0))(
  ( (Rule!2131 (regex!1165 Regex!1499) (tag!1427 String!7689) (isSeparator!1165 Bool) (transformation!1165 TokenValueInjection!2146)) )
))
(declare-datatypes ((Token!2066 0))(
  ( (Token!2067 (value!38069 TokenValue!1189) (rule!1935 Rule!2130) (size!4664 Int) (originalCharacters!1204 List!5913)) )
))
(declare-fun token!491 () Token!2066)

(declare-fun e!359813 () Bool)

(declare-fun tp!185443 () Bool)

(declare-fun e!359822 () Bool)

(declare-fun b!594684 () Bool)

(declare-fun inv!21 (TokenValue!1189) Bool)

(assert (=> b!594684 (= e!359813 (and (inv!21 (value!38069 token!491)) e!359822 tp!185443))))

(declare-fun b!594685 () Bool)

(declare-fun e!359823 () Bool)

(declare-fun lt!252350 () List!5913)

(declare-fun apply!1418 (TokenValueInjection!2146 BalanceConc!3772) TokenValue!1189)

(declare-fun seqFromList!1341 (List!5913) BalanceConc!3772)

(assert (=> b!594685 (= e!359823 (= (value!38069 token!491) (apply!1418 (transformation!1165 (rule!1935 token!491)) (seqFromList!1341 lt!252350))))))

(declare-fun suffix!1342 () List!5913)

(declare-fun lt!252348 () List!5913)

(assert (=> b!594685 (= suffix!1342 lt!252348)))

(declare-fun lt!252329 () List!5913)

(declare-datatypes ((Unit!10729 0))(
  ( (Unit!10730) )
))
(declare-fun lt!252349 () Unit!10729)

(declare-fun lemmaSamePrefixThenSameSuffix!506 (List!5913 List!5913 List!5913 List!5913 List!5913) Unit!10729)

(assert (=> b!594685 (= lt!252349 (lemmaSamePrefixThenSameSuffix!506 lt!252350 suffix!1342 lt!252350 lt!252348 lt!252329))))

(declare-fun getSuffix!310 (List!5913 List!5913) List!5913)

(assert (=> b!594685 (= lt!252348 (getSuffix!310 lt!252329 lt!252350))))

(declare-fun b!594687 () Bool)

(declare-fun res!256597 () Bool)

(declare-fun e!359816 () Bool)

(assert (=> b!594687 (=> (not res!256597) (not e!359816))))

(declare-datatypes ((LexerInterface!1051 0))(
  ( (LexerInterfaceExt!1048 (__x!4277 Int)) (Lexer!1049) )
))
(declare-fun thiss!22590 () LexerInterface!1051)

(declare-datatypes ((List!5914 0))(
  ( (Nil!5904) (Cons!5904 (h!11305 Rule!2130) (t!79303 List!5914)) )
))
(declare-fun rules!3103 () List!5914)

(declare-fun rulesInvariant!1014 (LexerInterface!1051 List!5914) Bool)

(assert (=> b!594687 (= res!256597 (rulesInvariant!1014 thiss!22590 rules!3103))))

(declare-fun b!594688 () Bool)

(declare-fun res!256599 () Bool)

(assert (=> b!594688 (=> (not res!256599) (not e!359816))))

(declare-fun input!2705 () List!5913)

(declare-fun isEmpty!4261 (List!5913) Bool)

(assert (=> b!594688 (= res!256599 (not (isEmpty!4261 input!2705)))))

(declare-fun b!594689 () Bool)

(declare-fun e!359818 () Unit!10729)

(declare-fun Unit!10731 () Unit!10729)

(assert (=> b!594689 (= e!359818 Unit!10731)))

(declare-fun b!594690 () Bool)

(declare-fun e!359827 () Bool)

(declare-fun e!359808 () Bool)

(assert (=> b!594690 (= e!359827 e!359808)))

(declare-fun res!256600 () Bool)

(assert (=> b!594690 (=> (not res!256600) (not e!359808))))

(declare-datatypes ((tuple2!6824 0))(
  ( (tuple2!6825 (_1!3676 Token!2066) (_2!3676 List!5913)) )
))
(declare-datatypes ((Option!1516 0))(
  ( (None!1515) (Some!1515 (v!16402 tuple2!6824)) )
))
(declare-fun lt!252332 () Option!1516)

(declare-fun isDefined!1327 (Option!1516) Bool)

(assert (=> b!594690 (= res!256600 (isDefined!1327 lt!252332))))

(declare-fun maxPrefix!749 (LexerInterface!1051 List!5914 List!5913) Option!1516)

(assert (=> b!594690 (= lt!252332 (maxPrefix!749 thiss!22590 rules!3103 lt!252329))))

(declare-fun ++!1653 (List!5913 List!5913) List!5913)

(assert (=> b!594690 (= lt!252329 (++!1653 input!2705 suffix!1342))))

(declare-fun b!594691 () Bool)

(declare-fun e!359824 () Bool)

(declare-fun e!359821 () Bool)

(assert (=> b!594691 (= e!359824 e!359821)))

(declare-fun res!256598 () Bool)

(assert (=> b!594691 (=> (not res!256598) (not e!359821))))

(declare-fun lt!252339 () Option!1516)

(get-info :version)

(assert (=> b!594691 (= res!256598 ((_ is Some!1515) lt!252339))))

(assert (=> b!594691 (= lt!252339 (maxPrefix!749 thiss!22590 rules!3103 input!2705))))

(declare-fun b!594692 () Bool)

(declare-fun res!256593 () Bool)

(declare-fun e!359826 () Bool)

(assert (=> b!594692 (=> (not res!256593) (not e!359826))))

(declare-fun size!4665 (List!5913) Int)

(assert (=> b!594692 (= res!256593 (= (size!4664 (_1!3676 (v!16402 lt!252339))) (size!4665 (originalCharacters!1204 (_1!3676 (v!16402 lt!252339))))))))

(declare-fun b!594693 () Bool)

(declare-fun Unit!10732 () Unit!10729)

(assert (=> b!594693 (= e!359818 Unit!10732)))

(assert (=> b!594693 false))

(declare-fun e!359820 () Bool)

(assert (=> b!594694 (= e!359820 (and tp!185440 tp!185441))))

(declare-fun b!594695 () Bool)

(declare-fun tp!185438 () Bool)

(declare-fun inv!7477 (String!7689) Bool)

(declare-fun inv!7480 (TokenValueInjection!2146) Bool)

(assert (=> b!594695 (= e!359822 (and tp!185438 (inv!7477 (tag!1427 (rule!1935 token!491))) (inv!7480 (transformation!1165 (rule!1935 token!491))) e!359810))))

(declare-fun b!594696 () Bool)

(declare-fun e!359817 () Bool)

(declare-fun tp_is_empty!3353 () Bool)

(declare-fun tp!185437 () Bool)

(assert (=> b!594696 (= e!359817 (and tp_is_empty!3353 tp!185437))))

(declare-fun res!256592 () Bool)

(assert (=> start!56024 (=> (not res!256592) (not e!359816))))

(assert (=> start!56024 (= res!256592 ((_ is Lexer!1049) thiss!22590))))

(assert (=> start!56024 e!359816))

(assert (=> start!56024 e!359817))

(assert (=> start!56024 e!359814))

(declare-fun inv!7481 (Token!2066) Bool)

(assert (=> start!56024 (and (inv!7481 token!491) e!359813)))

(assert (=> start!56024 true))

(declare-fun e!359819 () Bool)

(assert (=> start!56024 e!359819))

(declare-fun b!594686 () Bool)

(assert (=> b!594686 (= e!359808 e!359824)))

(declare-fun res!256594 () Bool)

(assert (=> b!594686 (=> (not res!256594) (not e!359824))))

(declare-fun lt!252327 () tuple2!6824)

(assert (=> b!594686 (= res!256594 (and (= (_1!3676 lt!252327) token!491) (= (_2!3676 lt!252327) suffix!1342)))))

(declare-fun get!2262 (Option!1516) tuple2!6824)

(assert (=> b!594686 (= lt!252327 (get!2262 lt!252332))))

(declare-fun b!594697 () Bool)

(declare-fun e!359812 () Bool)

(assert (=> b!594697 (= e!359821 e!359812)))

(declare-fun res!256601 () Bool)

(assert (=> b!594697 (=> (not res!256601) (not e!359812))))

(declare-fun lt!252345 () List!5913)

(assert (=> b!594697 (= res!256601 (= lt!252345 lt!252329))))

(assert (=> b!594697 (= lt!252345 (++!1653 lt!252350 suffix!1342))))

(declare-fun tp!185436 () Bool)

(declare-fun b!594698 () Bool)

(assert (=> b!594698 (= e!359815 (and tp!185436 (inv!7477 (tag!1427 (h!11305 rules!3103))) (inv!7480 (transformation!1165 (h!11305 rules!3103))) e!359820))))

(declare-fun b!594699 () Bool)

(declare-fun res!256595 () Bool)

(assert (=> b!594699 (=> (not res!256595) (not e!359816))))

(declare-fun isEmpty!4262 (List!5914) Bool)

(assert (=> b!594699 (= res!256595 (not (isEmpty!4262 rules!3103)))))

(declare-fun lt!252343 () TokenValue!1189)

(declare-fun lt!252330 () List!5913)

(declare-fun lt!252342 () List!5913)

(declare-fun b!594700 () Bool)

(declare-fun lt!252340 () Int)

(assert (=> b!594700 (= e!359826 (and (= (size!4664 (_1!3676 (v!16402 lt!252339))) lt!252340) (= (originalCharacters!1204 (_1!3676 (v!16402 lt!252339))) lt!252330) (= (v!16402 lt!252339) (tuple2!6825 (Token!2067 lt!252343 (rule!1935 (_1!3676 (v!16402 lt!252339))) lt!252340 lt!252330) lt!252342))))))

(declare-fun b!594701 () Bool)

(declare-fun tp!185442 () Bool)

(assert (=> b!594701 (= e!359819 (and tp_is_empty!3353 tp!185442))))

(declare-fun b!594702 () Bool)

(assert (=> b!594702 (= e!359816 e!359827)))

(declare-fun res!256591 () Bool)

(assert (=> b!594702 (=> (not res!256591) (not e!359827))))

(assert (=> b!594702 (= res!256591 (= lt!252350 input!2705))))

(declare-fun list!2472 (BalanceConc!3772) List!5913)

(declare-fun charsOf!794 (Token!2066) BalanceConc!3772)

(assert (=> b!594702 (= lt!252350 (list!2472 (charsOf!794 token!491)))))

(declare-fun b!594703 () Bool)

(assert (=> b!594703 (= e!359812 (not e!359823))))

(declare-fun res!256602 () Bool)

(assert (=> b!594703 (=> res!256602 e!359823)))

(declare-fun isPrefix!793 (List!5913 List!5913) Bool)

(assert (=> b!594703 (= res!256602 (not (isPrefix!793 input!2705 lt!252345)))))

(assert (=> b!594703 (isPrefix!793 lt!252350 lt!252345)))

(declare-fun lt!252341 () Unit!10729)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!638 (List!5913 List!5913) Unit!10729)

(assert (=> b!594703 (= lt!252341 (lemmaConcatTwoListThenFirstIsPrefix!638 lt!252350 suffix!1342))))

(assert (=> b!594703 (isPrefix!793 input!2705 lt!252329)))

(declare-fun lt!252331 () Unit!10729)

(assert (=> b!594703 (= lt!252331 (lemmaConcatTwoListThenFirstIsPrefix!638 input!2705 suffix!1342))))

(assert (=> b!594703 e!359826))

(declare-fun res!256596 () Bool)

(assert (=> b!594703 (=> (not res!256596) (not e!359826))))

(assert (=> b!594703 (= res!256596 (= (value!38069 (_1!3676 (v!16402 lt!252339))) lt!252343))))

(assert (=> b!594703 (= lt!252343 (apply!1418 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339)))) (seqFromList!1341 lt!252330)))))

(declare-fun lt!252333 () Unit!10729)

(declare-fun lemmaInv!273 (TokenValueInjection!2146) Unit!10729)

(assert (=> b!594703 (= lt!252333 (lemmaInv!273 (transformation!1165 (rule!1935 token!491))))))

(declare-fun lt!252346 () Unit!10729)

(assert (=> b!594703 (= lt!252346 (lemmaInv!273 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339))))))))

(declare-fun ruleValid!363 (LexerInterface!1051 Rule!2130) Bool)

(assert (=> b!594703 (ruleValid!363 thiss!22590 (rule!1935 token!491))))

(declare-fun lt!252335 () Unit!10729)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!210 (LexerInterface!1051 Rule!2130 List!5914) Unit!10729)

(assert (=> b!594703 (= lt!252335 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!210 thiss!22590 (rule!1935 token!491) rules!3103))))

(assert (=> b!594703 (ruleValid!363 thiss!22590 (rule!1935 (_1!3676 (v!16402 lt!252339))))))

(declare-fun lt!252336 () Unit!10729)

(assert (=> b!594703 (= lt!252336 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!210 thiss!22590 (rule!1935 (_1!3676 (v!16402 lt!252339))) rules!3103))))

(assert (=> b!594703 (isPrefix!793 input!2705 input!2705)))

(declare-fun lt!252344 () Unit!10729)

(declare-fun lemmaIsPrefixRefl!529 (List!5913 List!5913) Unit!10729)

(assert (=> b!594703 (= lt!252344 (lemmaIsPrefixRefl!529 input!2705 input!2705))))

(assert (=> b!594703 (= (_2!3676 (v!16402 lt!252339)) lt!252342)))

(declare-fun lt!252337 () Unit!10729)

(assert (=> b!594703 (= lt!252337 (lemmaSamePrefixThenSameSuffix!506 lt!252330 (_2!3676 (v!16402 lt!252339)) lt!252330 lt!252342 input!2705))))

(assert (=> b!594703 (= lt!252342 (getSuffix!310 input!2705 lt!252330))))

(assert (=> b!594703 (isPrefix!793 lt!252330 (++!1653 lt!252330 (_2!3676 (v!16402 lt!252339))))))

(declare-fun lt!252326 () Unit!10729)

(assert (=> b!594703 (= lt!252326 (lemmaConcatTwoListThenFirstIsPrefix!638 lt!252330 (_2!3676 (v!16402 lt!252339))))))

(declare-fun lt!252338 () Unit!10729)

(declare-fun lemmaCharactersSize!224 (Token!2066) Unit!10729)

(assert (=> b!594703 (= lt!252338 (lemmaCharactersSize!224 token!491))))

(declare-fun lt!252328 () Unit!10729)

(assert (=> b!594703 (= lt!252328 (lemmaCharactersSize!224 (_1!3676 (v!16402 lt!252339))))))

(declare-fun lt!252334 () Unit!10729)

(assert (=> b!594703 (= lt!252334 e!359818)))

(declare-fun c!110758 () Bool)

(assert (=> b!594703 (= c!110758 (> lt!252340 (size!4665 lt!252350)))))

(assert (=> b!594703 (= lt!252340 (size!4665 lt!252330))))

(assert (=> b!594703 (= lt!252330 (list!2472 (charsOf!794 (_1!3676 (v!16402 lt!252339)))))))

(assert (=> b!594703 (= lt!252339 (Some!1515 (v!16402 lt!252339)))))

(declare-fun lt!252347 () Unit!10729)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!238 (List!5913 List!5913 List!5913 List!5913) Unit!10729)

(assert (=> b!594703 (= lt!252347 (lemmaConcatSameAndSameSizesThenSameLists!238 lt!252350 suffix!1342 input!2705 suffix!1342))))

(assert (= (and start!56024 res!256592) b!594699))

(assert (= (and b!594699 res!256595) b!594687))

(assert (= (and b!594687 res!256597) b!594688))

(assert (= (and b!594688 res!256599) b!594702))

(assert (= (and b!594702 res!256591) b!594690))

(assert (= (and b!594690 res!256600) b!594686))

(assert (= (and b!594686 res!256594) b!594691))

(assert (= (and b!594691 res!256598) b!594697))

(assert (= (and b!594697 res!256601) b!594703))

(assert (= (and b!594703 c!110758) b!594693))

(assert (= (and b!594703 (not c!110758)) b!594689))

(assert (= (and b!594703 res!256596) b!594692))

(assert (= (and b!594692 res!256593) b!594700))

(assert (= (and b!594703 (not res!256602)) b!594685))

(assert (= (and start!56024 ((_ is Cons!5903) suffix!1342)) b!594696))

(assert (= b!594698 b!594694))

(assert (= b!594682 b!594698))

(assert (= (and start!56024 ((_ is Cons!5904) rules!3103)) b!594682))

(assert (= b!594695 b!594683))

(assert (= b!594684 b!594695))

(assert (= start!56024 b!594684))

(assert (= (and start!56024 ((_ is Cons!5903) input!2705)) b!594701))

(declare-fun m!856903 () Bool)

(assert (=> b!594703 m!856903))

(declare-fun m!856905 () Bool)

(assert (=> b!594703 m!856905))

(declare-fun m!856907 () Bool)

(assert (=> b!594703 m!856907))

(declare-fun m!856909 () Bool)

(assert (=> b!594703 m!856909))

(declare-fun m!856911 () Bool)

(assert (=> b!594703 m!856911))

(declare-fun m!856913 () Bool)

(assert (=> b!594703 m!856913))

(declare-fun m!856915 () Bool)

(assert (=> b!594703 m!856915))

(declare-fun m!856917 () Bool)

(assert (=> b!594703 m!856917))

(declare-fun m!856919 () Bool)

(assert (=> b!594703 m!856919))

(declare-fun m!856921 () Bool)

(assert (=> b!594703 m!856921))

(declare-fun m!856923 () Bool)

(assert (=> b!594703 m!856923))

(declare-fun m!856925 () Bool)

(assert (=> b!594703 m!856925))

(declare-fun m!856927 () Bool)

(assert (=> b!594703 m!856927))

(declare-fun m!856929 () Bool)

(assert (=> b!594703 m!856929))

(declare-fun m!856931 () Bool)

(assert (=> b!594703 m!856931))

(declare-fun m!856933 () Bool)

(assert (=> b!594703 m!856933))

(declare-fun m!856935 () Bool)

(assert (=> b!594703 m!856935))

(declare-fun m!856937 () Bool)

(assert (=> b!594703 m!856937))

(declare-fun m!856939 () Bool)

(assert (=> b!594703 m!856939))

(assert (=> b!594703 m!856931))

(declare-fun m!856941 () Bool)

(assert (=> b!594703 m!856941))

(declare-fun m!856943 () Bool)

(assert (=> b!594703 m!856943))

(assert (=> b!594703 m!856913))

(declare-fun m!856945 () Bool)

(assert (=> b!594703 m!856945))

(declare-fun m!856947 () Bool)

(assert (=> b!594703 m!856947))

(declare-fun m!856949 () Bool)

(assert (=> b!594703 m!856949))

(assert (=> b!594703 m!856905))

(declare-fun m!856951 () Bool)

(assert (=> b!594703 m!856951))

(declare-fun m!856953 () Bool)

(assert (=> b!594703 m!856953))

(declare-fun m!856955 () Bool)

(assert (=> b!594703 m!856955))

(declare-fun m!856957 () Bool)

(assert (=> b!594692 m!856957))

(declare-fun m!856959 () Bool)

(assert (=> b!594691 m!856959))

(declare-fun m!856961 () Bool)

(assert (=> b!594697 m!856961))

(declare-fun m!856963 () Bool)

(assert (=> b!594686 m!856963))

(declare-fun m!856965 () Bool)

(assert (=> b!594685 m!856965))

(assert (=> b!594685 m!856965))

(declare-fun m!856967 () Bool)

(assert (=> b!594685 m!856967))

(declare-fun m!856969 () Bool)

(assert (=> b!594685 m!856969))

(declare-fun m!856971 () Bool)

(assert (=> b!594685 m!856971))

(declare-fun m!856973 () Bool)

(assert (=> b!594690 m!856973))

(declare-fun m!856975 () Bool)

(assert (=> b!594690 m!856975))

(declare-fun m!856977 () Bool)

(assert (=> b!594690 m!856977))

(declare-fun m!856979 () Bool)

(assert (=> b!594702 m!856979))

(assert (=> b!594702 m!856979))

(declare-fun m!856981 () Bool)

(assert (=> b!594702 m!856981))

(declare-fun m!856983 () Bool)

(assert (=> b!594698 m!856983))

(declare-fun m!856985 () Bool)

(assert (=> b!594698 m!856985))

(declare-fun m!856987 () Bool)

(assert (=> b!594684 m!856987))

(declare-fun m!856989 () Bool)

(assert (=> b!594687 m!856989))

(declare-fun m!856991 () Bool)

(assert (=> b!594688 m!856991))

(declare-fun m!856993 () Bool)

(assert (=> start!56024 m!856993))

(declare-fun m!856995 () Bool)

(assert (=> b!594695 m!856995))

(declare-fun m!856997 () Bool)

(assert (=> b!594695 m!856997))

(declare-fun m!856999 () Bool)

(assert (=> b!594699 m!856999))

(check-sat (not b!594697) (not b!594692) (not b!594688) tp_is_empty!3353 (not b!594686) (not b_next!16797) (not b!594685) b_and!58643 (not b!594702) b_and!58645 (not b_next!16799) (not b!594701) b_and!58647 (not start!56024) (not b!594695) (not b_next!16801) (not b!594687) (not b!594698) (not b_next!16803) (not b!594703) (not b!594682) (not b!594690) b_and!58649 (not b!594699) (not b!594696) (not b!594684) (not b!594691))
(check-sat (not b_next!16801) (not b_next!16797) b_and!58643 (not b_next!16803) b_and!58649 b_and!58645 (not b_next!16799) b_and!58647)
(get-model)

(declare-fun d!209142 () Bool)

(assert (=> d!209142 (= (inv!7477 (tag!1427 (h!11305 rules!3103))) (= (mod (str.len (value!38068 (tag!1427 (h!11305 rules!3103)))) 2) 0))))

(assert (=> b!594698 d!209142))

(declare-fun d!209144 () Bool)

(declare-fun res!256609 () Bool)

(declare-fun e!359830 () Bool)

(assert (=> d!209144 (=> (not res!256609) (not e!359830))))

(declare-fun semiInverseModEq!460 (Int Int) Bool)

(assert (=> d!209144 (= res!256609 (semiInverseModEq!460 (toChars!1915 (transformation!1165 (h!11305 rules!3103))) (toValue!2056 (transformation!1165 (h!11305 rules!3103)))))))

(assert (=> d!209144 (= (inv!7480 (transformation!1165 (h!11305 rules!3103))) e!359830)))

(declare-fun b!594706 () Bool)

(declare-fun equivClasses!443 (Int Int) Bool)

(assert (=> b!594706 (= e!359830 (equivClasses!443 (toChars!1915 (transformation!1165 (h!11305 rules!3103))) (toValue!2056 (transformation!1165 (h!11305 rules!3103)))))))

(assert (= (and d!209144 res!256609) b!594706))

(declare-fun m!857001 () Bool)

(assert (=> d!209144 m!857001))

(declare-fun m!857003 () Bool)

(assert (=> b!594706 m!857003))

(assert (=> b!594698 d!209144))

(declare-fun d!209146 () Bool)

(assert (=> d!209146 (= (isEmpty!4261 input!2705) ((_ is Nil!5903) input!2705))))

(assert (=> b!594688 d!209146))

(declare-fun d!209148 () Bool)

(assert (=> d!209148 (= (isEmpty!4262 rules!3103) ((_ is Nil!5904) rules!3103))))

(assert (=> b!594699 d!209148))

(declare-fun d!209150 () Bool)

(assert (=> d!209150 (= (get!2262 lt!252332) (v!16402 lt!252332))))

(assert (=> b!594686 d!209150))

(declare-fun d!209152 () Bool)

(declare-fun res!256614 () Bool)

(declare-fun e!359833 () Bool)

(assert (=> d!209152 (=> (not res!256614) (not e!359833))))

(assert (=> d!209152 (= res!256614 (not (isEmpty!4261 (originalCharacters!1204 token!491))))))

(assert (=> d!209152 (= (inv!7481 token!491) e!359833)))

(declare-fun b!594711 () Bool)

(declare-fun res!256615 () Bool)

(assert (=> b!594711 (=> (not res!256615) (not e!359833))))

(declare-fun dynLambda!3429 (Int TokenValue!1189) BalanceConc!3772)

(assert (=> b!594711 (= res!256615 (= (originalCharacters!1204 token!491) (list!2472 (dynLambda!3429 (toChars!1915 (transformation!1165 (rule!1935 token!491))) (value!38069 token!491)))))))

(declare-fun b!594712 () Bool)

(assert (=> b!594712 (= e!359833 (= (size!4664 token!491) (size!4665 (originalCharacters!1204 token!491))))))

(assert (= (and d!209152 res!256614) b!594711))

(assert (= (and b!594711 res!256615) b!594712))

(declare-fun b_lambda!23417 () Bool)

(assert (=> (not b_lambda!23417) (not b!594711)))

(declare-fun t!79305 () Bool)

(declare-fun tb!51927 () Bool)

(assert (=> (and b!594683 (= (toChars!1915 (transformation!1165 (rule!1935 token!491))) (toChars!1915 (transformation!1165 (rule!1935 token!491)))) t!79305) tb!51927))

(declare-fun b!594717 () Bool)

(declare-fun e!359836 () Bool)

(declare-fun tp!185447 () Bool)

(declare-fun inv!7482 (Conc!1882) Bool)

(assert (=> b!594717 (= e!359836 (and (inv!7482 (c!110760 (dynLambda!3429 (toChars!1915 (transformation!1165 (rule!1935 token!491))) (value!38069 token!491)))) tp!185447))))

(declare-fun result!58310 () Bool)

(declare-fun inv!7483 (BalanceConc!3772) Bool)

(assert (=> tb!51927 (= result!58310 (and (inv!7483 (dynLambda!3429 (toChars!1915 (transformation!1165 (rule!1935 token!491))) (value!38069 token!491))) e!359836))))

(assert (= tb!51927 b!594717))

(declare-fun m!857005 () Bool)

(assert (=> b!594717 m!857005))

(declare-fun m!857007 () Bool)

(assert (=> tb!51927 m!857007))

(assert (=> b!594711 t!79305))

(declare-fun b_and!58651 () Bool)

(assert (= b_and!58645 (and (=> t!79305 result!58310) b_and!58651)))

(declare-fun t!79307 () Bool)

(declare-fun tb!51929 () Bool)

(assert (=> (and b!594694 (= (toChars!1915 (transformation!1165 (h!11305 rules!3103))) (toChars!1915 (transformation!1165 (rule!1935 token!491)))) t!79307) tb!51929))

(declare-fun result!58314 () Bool)

(assert (= result!58314 result!58310))

(assert (=> b!594711 t!79307))

(declare-fun b_and!58653 () Bool)

(assert (= b_and!58649 (and (=> t!79307 result!58314) b_and!58653)))

(declare-fun m!857009 () Bool)

(assert (=> d!209152 m!857009))

(declare-fun m!857011 () Bool)

(assert (=> b!594711 m!857011))

(assert (=> b!594711 m!857011))

(declare-fun m!857013 () Bool)

(assert (=> b!594711 m!857013))

(declare-fun m!857015 () Bool)

(assert (=> b!594712 m!857015))

(assert (=> start!56024 d!209152))

(declare-fun b!594727 () Bool)

(declare-fun e!359842 () List!5913)

(assert (=> b!594727 (= e!359842 (Cons!5903 (h!11304 lt!252350) (++!1653 (t!79302 lt!252350) suffix!1342)))))

(declare-fun d!209154 () Bool)

(declare-fun e!359841 () Bool)

(assert (=> d!209154 e!359841))

(declare-fun res!256620 () Bool)

(assert (=> d!209154 (=> (not res!256620) (not e!359841))))

(declare-fun lt!252353 () List!5913)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1062 (List!5913) (InoxSet C!3920))

(assert (=> d!209154 (= res!256620 (= (content!1062 lt!252353) ((_ map or) (content!1062 lt!252350) (content!1062 suffix!1342))))))

(assert (=> d!209154 (= lt!252353 e!359842)))

(declare-fun c!110763 () Bool)

(assert (=> d!209154 (= c!110763 ((_ is Nil!5903) lt!252350))))

(assert (=> d!209154 (= (++!1653 lt!252350 suffix!1342) lt!252353)))

(declare-fun b!594729 () Bool)

(assert (=> b!594729 (= e!359841 (or (not (= suffix!1342 Nil!5903)) (= lt!252353 lt!252350)))))

(declare-fun b!594728 () Bool)

(declare-fun res!256621 () Bool)

(assert (=> b!594728 (=> (not res!256621) (not e!359841))))

(assert (=> b!594728 (= res!256621 (= (size!4665 lt!252353) (+ (size!4665 lt!252350) (size!4665 suffix!1342))))))

(declare-fun b!594726 () Bool)

(assert (=> b!594726 (= e!359842 suffix!1342)))

(assert (= (and d!209154 c!110763) b!594726))

(assert (= (and d!209154 (not c!110763)) b!594727))

(assert (= (and d!209154 res!256620) b!594728))

(assert (= (and b!594728 res!256621) b!594729))

(declare-fun m!857017 () Bool)

(assert (=> b!594727 m!857017))

(declare-fun m!857019 () Bool)

(assert (=> d!209154 m!857019))

(declare-fun m!857021 () Bool)

(assert (=> d!209154 m!857021))

(declare-fun m!857023 () Bool)

(assert (=> d!209154 m!857023))

(declare-fun m!857025 () Bool)

(assert (=> b!594728 m!857025))

(assert (=> b!594728 m!856919))

(declare-fun m!857027 () Bool)

(assert (=> b!594728 m!857027))

(assert (=> b!594697 d!209154))

(declare-fun d!209156 () Bool)

(declare-fun res!256624 () Bool)

(declare-fun e!359845 () Bool)

(assert (=> d!209156 (=> (not res!256624) (not e!359845))))

(declare-fun rulesValid!424 (LexerInterface!1051 List!5914) Bool)

(assert (=> d!209156 (= res!256624 (rulesValid!424 thiss!22590 rules!3103))))

(assert (=> d!209156 (= (rulesInvariant!1014 thiss!22590 rules!3103) e!359845)))

(declare-fun b!594732 () Bool)

(declare-datatypes ((List!5915 0))(
  ( (Nil!5905) (Cons!5905 (h!11306 String!7689) (t!79336 List!5915)) )
))
(declare-fun noDuplicateTag!424 (LexerInterface!1051 List!5914 List!5915) Bool)

(assert (=> b!594732 (= e!359845 (noDuplicateTag!424 thiss!22590 rules!3103 Nil!5905))))

(assert (= (and d!209156 res!256624) b!594732))

(declare-fun m!857029 () Bool)

(assert (=> d!209156 m!857029))

(declare-fun m!857031 () Bool)

(assert (=> b!594732 m!857031))

(assert (=> b!594687 d!209156))

(declare-fun d!209158 () Bool)

(declare-fun dynLambda!3430 (Int BalanceConc!3772) TokenValue!1189)

(assert (=> d!209158 (= (apply!1418 (transformation!1165 (rule!1935 token!491)) (seqFromList!1341 lt!252350)) (dynLambda!3430 (toValue!2056 (transformation!1165 (rule!1935 token!491))) (seqFromList!1341 lt!252350)))))

(declare-fun b_lambda!23419 () Bool)

(assert (=> (not b_lambda!23419) (not d!209158)))

(declare-fun t!79309 () Bool)

(declare-fun tb!51931 () Bool)

(assert (=> (and b!594683 (= (toValue!2056 (transformation!1165 (rule!1935 token!491))) (toValue!2056 (transformation!1165 (rule!1935 token!491)))) t!79309) tb!51931))

(declare-fun result!58316 () Bool)

(assert (=> tb!51931 (= result!58316 (inv!21 (dynLambda!3430 (toValue!2056 (transformation!1165 (rule!1935 token!491))) (seqFromList!1341 lt!252350))))))

(declare-fun m!857033 () Bool)

(assert (=> tb!51931 m!857033))

(assert (=> d!209158 t!79309))

(declare-fun b_and!58655 () Bool)

(assert (= b_and!58643 (and (=> t!79309 result!58316) b_and!58655)))

(declare-fun t!79311 () Bool)

(declare-fun tb!51933 () Bool)

(assert (=> (and b!594694 (= (toValue!2056 (transformation!1165 (h!11305 rules!3103))) (toValue!2056 (transformation!1165 (rule!1935 token!491)))) t!79311) tb!51933))

(declare-fun result!58320 () Bool)

(assert (= result!58320 result!58316))

(assert (=> d!209158 t!79311))

(declare-fun b_and!58657 () Bool)

(assert (= b_and!58647 (and (=> t!79311 result!58320) b_and!58657)))

(assert (=> d!209158 m!856965))

(declare-fun m!857035 () Bool)

(assert (=> d!209158 m!857035))

(assert (=> b!594685 d!209158))

(declare-fun d!209160 () Bool)

(declare-fun fromListB!587 (List!5913) BalanceConc!3772)

(assert (=> d!209160 (= (seqFromList!1341 lt!252350) (fromListB!587 lt!252350))))

(declare-fun bs!70544 () Bool)

(assert (= bs!70544 d!209160))

(declare-fun m!857037 () Bool)

(assert (=> bs!70544 m!857037))

(assert (=> b!594685 d!209160))

(declare-fun d!209162 () Bool)

(assert (=> d!209162 (= suffix!1342 lt!252348)))

(declare-fun lt!252356 () Unit!10729)

(declare-fun choose!4307 (List!5913 List!5913 List!5913 List!5913 List!5913) Unit!10729)

(assert (=> d!209162 (= lt!252356 (choose!4307 lt!252350 suffix!1342 lt!252350 lt!252348 lt!252329))))

(assert (=> d!209162 (isPrefix!793 lt!252350 lt!252329)))

(assert (=> d!209162 (= (lemmaSamePrefixThenSameSuffix!506 lt!252350 suffix!1342 lt!252350 lt!252348 lt!252329) lt!252356)))

(declare-fun bs!70545 () Bool)

(assert (= bs!70545 d!209162))

(declare-fun m!857039 () Bool)

(assert (=> bs!70545 m!857039))

(declare-fun m!857041 () Bool)

(assert (=> bs!70545 m!857041))

(assert (=> b!594685 d!209162))

(declare-fun d!209164 () Bool)

(declare-fun lt!252359 () List!5913)

(assert (=> d!209164 (= (++!1653 lt!252350 lt!252359) lt!252329)))

(declare-fun e!359851 () List!5913)

(assert (=> d!209164 (= lt!252359 e!359851)))

(declare-fun c!110766 () Bool)

(assert (=> d!209164 (= c!110766 ((_ is Cons!5903) lt!252350))))

(assert (=> d!209164 (>= (size!4665 lt!252329) (size!4665 lt!252350))))

(assert (=> d!209164 (= (getSuffix!310 lt!252329 lt!252350) lt!252359)))

(declare-fun b!594739 () Bool)

(declare-fun tail!788 (List!5913) List!5913)

(assert (=> b!594739 (= e!359851 (getSuffix!310 (tail!788 lt!252329) (t!79302 lt!252350)))))

(declare-fun b!594740 () Bool)

(assert (=> b!594740 (= e!359851 lt!252329)))

(assert (= (and d!209164 c!110766) b!594739))

(assert (= (and d!209164 (not c!110766)) b!594740))

(declare-fun m!857043 () Bool)

(assert (=> d!209164 m!857043))

(declare-fun m!857045 () Bool)

(assert (=> d!209164 m!857045))

(assert (=> d!209164 m!856919))

(declare-fun m!857047 () Bool)

(assert (=> b!594739 m!857047))

(assert (=> b!594739 m!857047))

(declare-fun m!857049 () Bool)

(assert (=> b!594739 m!857049))

(assert (=> b!594685 d!209164))

(declare-fun b!594751 () Bool)

(declare-fun e!359860 () Bool)

(declare-fun inv!17 (TokenValue!1189) Bool)

(assert (=> b!594751 (= e!359860 (inv!17 (value!38069 token!491)))))

(declare-fun b!594752 () Bool)

(declare-fun e!359859 () Bool)

(assert (=> b!594752 (= e!359859 e!359860)))

(declare-fun c!110771 () Bool)

(assert (=> b!594752 (= c!110771 ((_ is IntegerValue!3568) (value!38069 token!491)))))

(declare-fun b!594753 () Bool)

(declare-fun e!359858 () Bool)

(declare-fun inv!15 (TokenValue!1189) Bool)

(assert (=> b!594753 (= e!359858 (inv!15 (value!38069 token!491)))))

(declare-fun b!594754 () Bool)

(declare-fun res!256627 () Bool)

(assert (=> b!594754 (=> res!256627 e!359858)))

(assert (=> b!594754 (= res!256627 (not ((_ is IntegerValue!3569) (value!38069 token!491))))))

(assert (=> b!594754 (= e!359860 e!359858)))

(declare-fun b!594755 () Bool)

(declare-fun inv!16 (TokenValue!1189) Bool)

(assert (=> b!594755 (= e!359859 (inv!16 (value!38069 token!491)))))

(declare-fun d!209166 () Bool)

(declare-fun c!110772 () Bool)

(assert (=> d!209166 (= c!110772 ((_ is IntegerValue!3567) (value!38069 token!491)))))

(assert (=> d!209166 (= (inv!21 (value!38069 token!491)) e!359859)))

(assert (= (and d!209166 c!110772) b!594755))

(assert (= (and d!209166 (not c!110772)) b!594752))

(assert (= (and b!594752 c!110771) b!594751))

(assert (= (and b!594752 (not c!110771)) b!594754))

(assert (= (and b!594754 (not res!256627)) b!594753))

(declare-fun m!857051 () Bool)

(assert (=> b!594751 m!857051))

(declare-fun m!857053 () Bool)

(assert (=> b!594753 m!857053))

(declare-fun m!857055 () Bool)

(assert (=> b!594755 m!857055))

(assert (=> b!594684 d!209166))

(declare-fun d!209168 () Bool)

(assert (=> d!209168 (= (inv!7477 (tag!1427 (rule!1935 token!491))) (= (mod (str.len (value!38068 (tag!1427 (rule!1935 token!491)))) 2) 0))))

(assert (=> b!594695 d!209168))

(declare-fun d!209170 () Bool)

(declare-fun res!256628 () Bool)

(declare-fun e!359861 () Bool)

(assert (=> d!209170 (=> (not res!256628) (not e!359861))))

(assert (=> d!209170 (= res!256628 (semiInverseModEq!460 (toChars!1915 (transformation!1165 (rule!1935 token!491))) (toValue!2056 (transformation!1165 (rule!1935 token!491)))))))

(assert (=> d!209170 (= (inv!7480 (transformation!1165 (rule!1935 token!491))) e!359861)))

(declare-fun b!594756 () Bool)

(assert (=> b!594756 (= e!359861 (equivClasses!443 (toChars!1915 (transformation!1165 (rule!1935 token!491))) (toValue!2056 (transformation!1165 (rule!1935 token!491)))))))

(assert (= (and d!209170 res!256628) b!594756))

(declare-fun m!857057 () Bool)

(assert (=> d!209170 m!857057))

(declare-fun m!857059 () Bool)

(assert (=> b!594756 m!857059))

(assert (=> b!594695 d!209170))

(declare-fun d!209172 () Bool)

(declare-fun list!2473 (Conc!1882) List!5913)

(assert (=> d!209172 (= (list!2472 (charsOf!794 token!491)) (list!2473 (c!110760 (charsOf!794 token!491))))))

(declare-fun bs!70546 () Bool)

(assert (= bs!70546 d!209172))

(declare-fun m!857061 () Bool)

(assert (=> bs!70546 m!857061))

(assert (=> b!594702 d!209172))

(declare-fun d!209174 () Bool)

(declare-fun lt!252362 () BalanceConc!3772)

(assert (=> d!209174 (= (list!2472 lt!252362) (originalCharacters!1204 token!491))))

(assert (=> d!209174 (= lt!252362 (dynLambda!3429 (toChars!1915 (transformation!1165 (rule!1935 token!491))) (value!38069 token!491)))))

(assert (=> d!209174 (= (charsOf!794 token!491) lt!252362)))

(declare-fun b_lambda!23421 () Bool)

(assert (=> (not b_lambda!23421) (not d!209174)))

(assert (=> d!209174 t!79305))

(declare-fun b_and!58659 () Bool)

(assert (= b_and!58651 (and (=> t!79305 result!58310) b_and!58659)))

(assert (=> d!209174 t!79307))

(declare-fun b_and!58661 () Bool)

(assert (= b_and!58653 (and (=> t!79307 result!58314) b_and!58661)))

(declare-fun m!857063 () Bool)

(assert (=> d!209174 m!857063))

(assert (=> d!209174 m!857011))

(assert (=> b!594702 d!209174))

(declare-fun d!209176 () Bool)

(declare-fun lt!252365 () Int)

(assert (=> d!209176 (>= lt!252365 0)))

(declare-fun e!359864 () Int)

(assert (=> d!209176 (= lt!252365 e!359864)))

(declare-fun c!110775 () Bool)

(assert (=> d!209176 (= c!110775 ((_ is Nil!5903) (originalCharacters!1204 (_1!3676 (v!16402 lt!252339)))))))

(assert (=> d!209176 (= (size!4665 (originalCharacters!1204 (_1!3676 (v!16402 lt!252339)))) lt!252365)))

(declare-fun b!594761 () Bool)

(assert (=> b!594761 (= e!359864 0)))

(declare-fun b!594762 () Bool)

(assert (=> b!594762 (= e!359864 (+ 1 (size!4665 (t!79302 (originalCharacters!1204 (_1!3676 (v!16402 lt!252339)))))))))

(assert (= (and d!209176 c!110775) b!594761))

(assert (= (and d!209176 (not c!110775)) b!594762))

(declare-fun m!857065 () Bool)

(assert (=> b!594762 m!857065))

(assert (=> b!594692 d!209176))

(declare-fun b!594773 () Bool)

(declare-fun e!359871 () Bool)

(assert (=> b!594773 (= e!359871 (isPrefix!793 (tail!788 input!2705) (tail!788 lt!252345)))))

(declare-fun d!209178 () Bool)

(declare-fun e!359873 () Bool)

(assert (=> d!209178 e!359873))

(declare-fun res!256644 () Bool)

(assert (=> d!209178 (=> res!256644 e!359873)))

(declare-fun lt!252368 () Bool)

(assert (=> d!209178 (= res!256644 (not lt!252368))))

(declare-fun e!359872 () Bool)

(assert (=> d!209178 (= lt!252368 e!359872)))

(declare-fun res!256643 () Bool)

(assert (=> d!209178 (=> res!256643 e!359872)))

(assert (=> d!209178 (= res!256643 ((_ is Nil!5903) input!2705))))

(assert (=> d!209178 (= (isPrefix!793 input!2705 lt!252345) lt!252368)))

(declare-fun b!594774 () Bool)

(assert (=> b!594774 (= e!359873 (>= (size!4665 lt!252345) (size!4665 input!2705)))))

(declare-fun b!594771 () Bool)

(assert (=> b!594771 (= e!359872 e!359871)))

(declare-fun res!256642 () Bool)

(assert (=> b!594771 (=> (not res!256642) (not e!359871))))

(assert (=> b!594771 (= res!256642 (not ((_ is Nil!5903) lt!252345)))))

(declare-fun b!594772 () Bool)

(declare-fun res!256641 () Bool)

(assert (=> b!594772 (=> (not res!256641) (not e!359871))))

(declare-fun head!1259 (List!5913) C!3920)

(assert (=> b!594772 (= res!256641 (= (head!1259 input!2705) (head!1259 lt!252345)))))

(assert (= (and d!209178 (not res!256643)) b!594771))

(assert (= (and b!594771 res!256642) b!594772))

(assert (= (and b!594772 res!256641) b!594773))

(assert (= (and d!209178 (not res!256644)) b!594774))

(declare-fun m!857067 () Bool)

(assert (=> b!594773 m!857067))

(declare-fun m!857069 () Bool)

(assert (=> b!594773 m!857069))

(assert (=> b!594773 m!857067))

(assert (=> b!594773 m!857069))

(declare-fun m!857071 () Bool)

(assert (=> b!594773 m!857071))

(declare-fun m!857073 () Bool)

(assert (=> b!594774 m!857073))

(declare-fun m!857075 () Bool)

(assert (=> b!594774 m!857075))

(declare-fun m!857077 () Bool)

(assert (=> b!594772 m!857077))

(declare-fun m!857079 () Bool)

(assert (=> b!594772 m!857079))

(assert (=> b!594703 d!209178))

(declare-fun b!594777 () Bool)

(declare-fun e!359874 () Bool)

(assert (=> b!594777 (= e!359874 (isPrefix!793 (tail!788 lt!252330) (tail!788 (++!1653 lt!252330 (_2!3676 (v!16402 lt!252339))))))))

(declare-fun d!209180 () Bool)

(declare-fun e!359876 () Bool)

(assert (=> d!209180 e!359876))

(declare-fun res!256648 () Bool)

(assert (=> d!209180 (=> res!256648 e!359876)))

(declare-fun lt!252369 () Bool)

(assert (=> d!209180 (= res!256648 (not lt!252369))))

(declare-fun e!359875 () Bool)

(assert (=> d!209180 (= lt!252369 e!359875)))

(declare-fun res!256647 () Bool)

(assert (=> d!209180 (=> res!256647 e!359875)))

(assert (=> d!209180 (= res!256647 ((_ is Nil!5903) lt!252330))))

(assert (=> d!209180 (= (isPrefix!793 lt!252330 (++!1653 lt!252330 (_2!3676 (v!16402 lt!252339)))) lt!252369)))

(declare-fun b!594778 () Bool)

(assert (=> b!594778 (= e!359876 (>= (size!4665 (++!1653 lt!252330 (_2!3676 (v!16402 lt!252339)))) (size!4665 lt!252330)))))

(declare-fun b!594775 () Bool)

(assert (=> b!594775 (= e!359875 e!359874)))

(declare-fun res!256646 () Bool)

(assert (=> b!594775 (=> (not res!256646) (not e!359874))))

(assert (=> b!594775 (= res!256646 (not ((_ is Nil!5903) (++!1653 lt!252330 (_2!3676 (v!16402 lt!252339))))))))

(declare-fun b!594776 () Bool)

(declare-fun res!256645 () Bool)

(assert (=> b!594776 (=> (not res!256645) (not e!359874))))

(assert (=> b!594776 (= res!256645 (= (head!1259 lt!252330) (head!1259 (++!1653 lt!252330 (_2!3676 (v!16402 lt!252339))))))))

(assert (= (and d!209180 (not res!256647)) b!594775))

(assert (= (and b!594775 res!256646) b!594776))

(assert (= (and b!594776 res!256645) b!594777))

(assert (= (and d!209180 (not res!256648)) b!594778))

(declare-fun m!857081 () Bool)

(assert (=> b!594777 m!857081))

(assert (=> b!594777 m!856913))

(declare-fun m!857083 () Bool)

(assert (=> b!594777 m!857083))

(assert (=> b!594777 m!857081))

(assert (=> b!594777 m!857083))

(declare-fun m!857085 () Bool)

(assert (=> b!594777 m!857085))

(assert (=> b!594778 m!856913))

(declare-fun m!857087 () Bool)

(assert (=> b!594778 m!857087))

(assert (=> b!594778 m!856949))

(declare-fun m!857089 () Bool)

(assert (=> b!594776 m!857089))

(assert (=> b!594776 m!856913))

(declare-fun m!857091 () Bool)

(assert (=> b!594776 m!857091))

(assert (=> b!594703 d!209180))

(declare-fun d!209182 () Bool)

(declare-fun res!256653 () Bool)

(declare-fun e!359879 () Bool)

(assert (=> d!209182 (=> (not res!256653) (not e!359879))))

(declare-fun validRegex!513 (Regex!1499) Bool)

(assert (=> d!209182 (= res!256653 (validRegex!513 (regex!1165 (rule!1935 (_1!3676 (v!16402 lt!252339))))))))

(assert (=> d!209182 (= (ruleValid!363 thiss!22590 (rule!1935 (_1!3676 (v!16402 lt!252339)))) e!359879)))

(declare-fun b!594783 () Bool)

(declare-fun res!256654 () Bool)

(assert (=> b!594783 (=> (not res!256654) (not e!359879))))

(declare-fun nullable!418 (Regex!1499) Bool)

(assert (=> b!594783 (= res!256654 (not (nullable!418 (regex!1165 (rule!1935 (_1!3676 (v!16402 lt!252339)))))))))

(declare-fun b!594784 () Bool)

(assert (=> b!594784 (= e!359879 (not (= (tag!1427 (rule!1935 (_1!3676 (v!16402 lt!252339)))) (String!7690 ""))))))

(assert (= (and d!209182 res!256653) b!594783))

(assert (= (and b!594783 res!256654) b!594784))

(declare-fun m!857093 () Bool)

(assert (=> d!209182 m!857093))

(declare-fun m!857095 () Bool)

(assert (=> b!594783 m!857095))

(assert (=> b!594703 d!209182))

(declare-fun d!209184 () Bool)

(declare-fun res!256655 () Bool)

(declare-fun e!359880 () Bool)

(assert (=> d!209184 (=> (not res!256655) (not e!359880))))

(assert (=> d!209184 (= res!256655 (validRegex!513 (regex!1165 (rule!1935 token!491))))))

(assert (=> d!209184 (= (ruleValid!363 thiss!22590 (rule!1935 token!491)) e!359880)))

(declare-fun b!594785 () Bool)

(declare-fun res!256656 () Bool)

(assert (=> b!594785 (=> (not res!256656) (not e!359880))))

(assert (=> b!594785 (= res!256656 (not (nullable!418 (regex!1165 (rule!1935 token!491)))))))

(declare-fun b!594786 () Bool)

(assert (=> b!594786 (= e!359880 (not (= (tag!1427 (rule!1935 token!491)) (String!7690 ""))))))

(assert (= (and d!209184 res!256655) b!594785))

(assert (= (and b!594785 res!256656) b!594786))

(declare-fun m!857097 () Bool)

(assert (=> d!209184 m!857097))

(declare-fun m!857099 () Bool)

(assert (=> b!594785 m!857099))

(assert (=> b!594703 d!209184))

(declare-fun d!209186 () Bool)

(assert (=> d!209186 (= (apply!1418 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339)))) (seqFromList!1341 lt!252330)) (dynLambda!3430 (toValue!2056 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339))))) (seqFromList!1341 lt!252330)))))

(declare-fun b_lambda!23423 () Bool)

(assert (=> (not b_lambda!23423) (not d!209186)))

(declare-fun t!79313 () Bool)

(declare-fun tb!51935 () Bool)

(assert (=> (and b!594683 (= (toValue!2056 (transformation!1165 (rule!1935 token!491))) (toValue!2056 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339)))))) t!79313) tb!51935))

(declare-fun result!58322 () Bool)

(assert (=> tb!51935 (= result!58322 (inv!21 (dynLambda!3430 (toValue!2056 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339))))) (seqFromList!1341 lt!252330))))))

(declare-fun m!857101 () Bool)

(assert (=> tb!51935 m!857101))

(assert (=> d!209186 t!79313))

(declare-fun b_and!58663 () Bool)

(assert (= b_and!58655 (and (=> t!79313 result!58322) b_and!58663)))

(declare-fun t!79315 () Bool)

(declare-fun tb!51937 () Bool)

(assert (=> (and b!594694 (= (toValue!2056 (transformation!1165 (h!11305 rules!3103))) (toValue!2056 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339)))))) t!79315) tb!51937))

(declare-fun result!58324 () Bool)

(assert (= result!58324 result!58322))

(assert (=> d!209186 t!79315))

(declare-fun b_and!58665 () Bool)

(assert (= b_and!58657 (and (=> t!79315 result!58324) b_and!58665)))

(assert (=> d!209186 m!856905))

(declare-fun m!857103 () Bool)

(assert (=> d!209186 m!857103))

(assert (=> b!594703 d!209186))

(declare-fun d!209188 () Bool)

(assert (=> d!209188 (ruleValid!363 thiss!22590 (rule!1935 (_1!3676 (v!16402 lt!252339))))))

(declare-fun lt!252372 () Unit!10729)

(declare-fun choose!4308 (LexerInterface!1051 Rule!2130 List!5914) Unit!10729)

(assert (=> d!209188 (= lt!252372 (choose!4308 thiss!22590 (rule!1935 (_1!3676 (v!16402 lt!252339))) rules!3103))))

(declare-fun contains!1387 (List!5914 Rule!2130) Bool)

(assert (=> d!209188 (contains!1387 rules!3103 (rule!1935 (_1!3676 (v!16402 lt!252339))))))

(assert (=> d!209188 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!210 thiss!22590 (rule!1935 (_1!3676 (v!16402 lt!252339))) rules!3103) lt!252372)))

(declare-fun bs!70548 () Bool)

(assert (= bs!70548 d!209188))

(assert (=> bs!70548 m!856935))

(declare-fun m!857107 () Bool)

(assert (=> bs!70548 m!857107))

(declare-fun m!857109 () Bool)

(assert (=> bs!70548 m!857109))

(assert (=> b!594703 d!209188))

(declare-fun d!209194 () Bool)

(declare-fun e!359884 () Bool)

(assert (=> d!209194 e!359884))

(declare-fun res!256659 () Bool)

(assert (=> d!209194 (=> (not res!256659) (not e!359884))))

(assert (=> d!209194 (= res!256659 (semiInverseModEq!460 (toChars!1915 (transformation!1165 (rule!1935 token!491))) (toValue!2056 (transformation!1165 (rule!1935 token!491)))))))

(declare-fun Unit!10733 () Unit!10729)

(assert (=> d!209194 (= (lemmaInv!273 (transformation!1165 (rule!1935 token!491))) Unit!10733)))

(declare-fun b!594789 () Bool)

(assert (=> b!594789 (= e!359884 (equivClasses!443 (toChars!1915 (transformation!1165 (rule!1935 token!491))) (toValue!2056 (transformation!1165 (rule!1935 token!491)))))))

(assert (= (and d!209194 res!256659) b!594789))

(assert (=> d!209194 m!857057))

(assert (=> b!594789 m!857059))

(assert (=> b!594703 d!209194))

(declare-fun b!594792 () Bool)

(declare-fun e!359885 () Bool)

(assert (=> b!594792 (= e!359885 (isPrefix!793 (tail!788 input!2705) (tail!788 lt!252329)))))

(declare-fun d!209196 () Bool)

(declare-fun e!359887 () Bool)

(assert (=> d!209196 e!359887))

(declare-fun res!256663 () Bool)

(assert (=> d!209196 (=> res!256663 e!359887)))

(declare-fun lt!252373 () Bool)

(assert (=> d!209196 (= res!256663 (not lt!252373))))

(declare-fun e!359886 () Bool)

(assert (=> d!209196 (= lt!252373 e!359886)))

(declare-fun res!256662 () Bool)

(assert (=> d!209196 (=> res!256662 e!359886)))

(assert (=> d!209196 (= res!256662 ((_ is Nil!5903) input!2705))))

(assert (=> d!209196 (= (isPrefix!793 input!2705 lt!252329) lt!252373)))

(declare-fun b!594793 () Bool)

(assert (=> b!594793 (= e!359887 (>= (size!4665 lt!252329) (size!4665 input!2705)))))

(declare-fun b!594790 () Bool)

(assert (=> b!594790 (= e!359886 e!359885)))

(declare-fun res!256661 () Bool)

(assert (=> b!594790 (=> (not res!256661) (not e!359885))))

(assert (=> b!594790 (= res!256661 (not ((_ is Nil!5903) lt!252329)))))

(declare-fun b!594791 () Bool)

(declare-fun res!256660 () Bool)

(assert (=> b!594791 (=> (not res!256660) (not e!359885))))

(assert (=> b!594791 (= res!256660 (= (head!1259 input!2705) (head!1259 lt!252329)))))

(assert (= (and d!209196 (not res!256662)) b!594790))

(assert (= (and b!594790 res!256661) b!594791))

(assert (= (and b!594791 res!256660) b!594792))

(assert (= (and d!209196 (not res!256663)) b!594793))

(assert (=> b!594792 m!857067))

(assert (=> b!594792 m!857047))

(assert (=> b!594792 m!857067))

(assert (=> b!594792 m!857047))

(declare-fun m!857111 () Bool)

(assert (=> b!594792 m!857111))

(assert (=> b!594793 m!857045))

(assert (=> b!594793 m!857075))

(assert (=> b!594791 m!857077))

(declare-fun m!857113 () Bool)

(assert (=> b!594791 m!857113))

(assert (=> b!594703 d!209196))

(declare-fun b!594795 () Bool)

(declare-fun e!359889 () List!5913)

(assert (=> b!594795 (= e!359889 (Cons!5903 (h!11304 lt!252330) (++!1653 (t!79302 lt!252330) (_2!3676 (v!16402 lt!252339)))))))

(declare-fun d!209198 () Bool)

(declare-fun e!359888 () Bool)

(assert (=> d!209198 e!359888))

(declare-fun res!256664 () Bool)

(assert (=> d!209198 (=> (not res!256664) (not e!359888))))

(declare-fun lt!252374 () List!5913)

(assert (=> d!209198 (= res!256664 (= (content!1062 lt!252374) ((_ map or) (content!1062 lt!252330) (content!1062 (_2!3676 (v!16402 lt!252339))))))))

(assert (=> d!209198 (= lt!252374 e!359889)))

(declare-fun c!110776 () Bool)

(assert (=> d!209198 (= c!110776 ((_ is Nil!5903) lt!252330))))

(assert (=> d!209198 (= (++!1653 lt!252330 (_2!3676 (v!16402 lt!252339))) lt!252374)))

(declare-fun b!594797 () Bool)

(assert (=> b!594797 (= e!359888 (or (not (= (_2!3676 (v!16402 lt!252339)) Nil!5903)) (= lt!252374 lt!252330)))))

(declare-fun b!594796 () Bool)

(declare-fun res!256665 () Bool)

(assert (=> b!594796 (=> (not res!256665) (not e!359888))))

(assert (=> b!594796 (= res!256665 (= (size!4665 lt!252374) (+ (size!4665 lt!252330) (size!4665 (_2!3676 (v!16402 lt!252339))))))))

(declare-fun b!594794 () Bool)

(assert (=> b!594794 (= e!359889 (_2!3676 (v!16402 lt!252339)))))

(assert (= (and d!209198 c!110776) b!594794))

(assert (= (and d!209198 (not c!110776)) b!594795))

(assert (= (and d!209198 res!256664) b!594796))

(assert (= (and b!594796 res!256665) b!594797))

(declare-fun m!857115 () Bool)

(assert (=> b!594795 m!857115))

(declare-fun m!857117 () Bool)

(assert (=> d!209198 m!857117))

(declare-fun m!857119 () Bool)

(assert (=> d!209198 m!857119))

(declare-fun m!857121 () Bool)

(assert (=> d!209198 m!857121))

(declare-fun m!857123 () Bool)

(assert (=> b!594796 m!857123))

(assert (=> b!594796 m!856949))

(declare-fun m!857125 () Bool)

(assert (=> b!594796 m!857125))

(assert (=> b!594703 d!209198))

(declare-fun d!209200 () Bool)

(declare-fun lt!252375 () Int)

(assert (=> d!209200 (>= lt!252375 0)))

(declare-fun e!359890 () Int)

(assert (=> d!209200 (= lt!252375 e!359890)))

(declare-fun c!110777 () Bool)

(assert (=> d!209200 (= c!110777 ((_ is Nil!5903) lt!252350))))

(assert (=> d!209200 (= (size!4665 lt!252350) lt!252375)))

(declare-fun b!594798 () Bool)

(assert (=> b!594798 (= e!359890 0)))

(declare-fun b!594799 () Bool)

(assert (=> b!594799 (= e!359890 (+ 1 (size!4665 (t!79302 lt!252350))))))

(assert (= (and d!209200 c!110777) b!594798))

(assert (= (and d!209200 (not c!110777)) b!594799))

(declare-fun m!857127 () Bool)

(assert (=> b!594799 m!857127))

(assert (=> b!594703 d!209200))

(declare-fun d!209202 () Bool)

(assert (=> d!209202 (isPrefix!793 lt!252350 (++!1653 lt!252350 suffix!1342))))

(declare-fun lt!252378 () Unit!10729)

(declare-fun choose!4310 (List!5913 List!5913) Unit!10729)

(assert (=> d!209202 (= lt!252378 (choose!4310 lt!252350 suffix!1342))))

(assert (=> d!209202 (= (lemmaConcatTwoListThenFirstIsPrefix!638 lt!252350 suffix!1342) lt!252378)))

(declare-fun bs!70549 () Bool)

(assert (= bs!70549 d!209202))

(assert (=> bs!70549 m!856961))

(assert (=> bs!70549 m!856961))

(declare-fun m!857129 () Bool)

(assert (=> bs!70549 m!857129))

(declare-fun m!857131 () Bool)

(assert (=> bs!70549 m!857131))

(assert (=> b!594703 d!209202))

(declare-fun d!209204 () Bool)

(assert (=> d!209204 (= (_2!3676 (v!16402 lt!252339)) lt!252342)))

(declare-fun lt!252379 () Unit!10729)

(assert (=> d!209204 (= lt!252379 (choose!4307 lt!252330 (_2!3676 (v!16402 lt!252339)) lt!252330 lt!252342 input!2705))))

(assert (=> d!209204 (isPrefix!793 lt!252330 input!2705)))

(assert (=> d!209204 (= (lemmaSamePrefixThenSameSuffix!506 lt!252330 (_2!3676 (v!16402 lt!252339)) lt!252330 lt!252342 input!2705) lt!252379)))

(declare-fun bs!70550 () Bool)

(assert (= bs!70550 d!209204))

(declare-fun m!857133 () Bool)

(assert (=> bs!70550 m!857133))

(declare-fun m!857135 () Bool)

(assert (=> bs!70550 m!857135))

(assert (=> b!594703 d!209204))

(declare-fun d!209206 () Bool)

(declare-fun lt!252380 () Int)

(assert (=> d!209206 (>= lt!252380 0)))

(declare-fun e!359891 () Int)

(assert (=> d!209206 (= lt!252380 e!359891)))

(declare-fun c!110778 () Bool)

(assert (=> d!209206 (= c!110778 ((_ is Nil!5903) lt!252330))))

(assert (=> d!209206 (= (size!4665 lt!252330) lt!252380)))

(declare-fun b!594800 () Bool)

(assert (=> b!594800 (= e!359891 0)))

(declare-fun b!594801 () Bool)

(assert (=> b!594801 (= e!359891 (+ 1 (size!4665 (t!79302 lt!252330))))))

(assert (= (and d!209206 c!110778) b!594800))

(assert (= (and d!209206 (not c!110778)) b!594801))

(declare-fun m!857137 () Bool)

(assert (=> b!594801 m!857137))

(assert (=> b!594703 d!209206))

(declare-fun d!209208 () Bool)

(assert (=> d!209208 (isPrefix!793 lt!252330 (++!1653 lt!252330 (_2!3676 (v!16402 lt!252339))))))

(declare-fun lt!252381 () Unit!10729)

(assert (=> d!209208 (= lt!252381 (choose!4310 lt!252330 (_2!3676 (v!16402 lt!252339))))))

(assert (=> d!209208 (= (lemmaConcatTwoListThenFirstIsPrefix!638 lt!252330 (_2!3676 (v!16402 lt!252339))) lt!252381)))

(declare-fun bs!70551 () Bool)

(assert (= bs!70551 d!209208))

(assert (=> bs!70551 m!856913))

(assert (=> bs!70551 m!856913))

(assert (=> bs!70551 m!856945))

(declare-fun m!857139 () Bool)

(assert (=> bs!70551 m!857139))

(assert (=> b!594703 d!209208))

(declare-fun d!209210 () Bool)

(assert (=> d!209210 (= (seqFromList!1341 lt!252330) (fromListB!587 lt!252330))))

(declare-fun bs!70552 () Bool)

(assert (= bs!70552 d!209210))

(declare-fun m!857141 () Bool)

(assert (=> bs!70552 m!857141))

(assert (=> b!594703 d!209210))

(declare-fun d!209212 () Bool)

(declare-fun e!359892 () Bool)

(assert (=> d!209212 e!359892))

(declare-fun res!256666 () Bool)

(assert (=> d!209212 (=> (not res!256666) (not e!359892))))

(assert (=> d!209212 (= res!256666 (semiInverseModEq!460 (toChars!1915 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339))))) (toValue!2056 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339)))))))))

(declare-fun Unit!10734 () Unit!10729)

(assert (=> d!209212 (= (lemmaInv!273 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339))))) Unit!10734)))

(declare-fun b!594802 () Bool)

(assert (=> b!594802 (= e!359892 (equivClasses!443 (toChars!1915 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339))))) (toValue!2056 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339)))))))))

(assert (= (and d!209212 res!256666) b!594802))

(declare-fun m!857143 () Bool)

(assert (=> d!209212 m!857143))

(declare-fun m!857145 () Bool)

(assert (=> b!594802 m!857145))

(assert (=> b!594703 d!209212))

(declare-fun d!209214 () Bool)

(assert (=> d!209214 (= (size!4664 (_1!3676 (v!16402 lt!252339))) (size!4665 (originalCharacters!1204 (_1!3676 (v!16402 lt!252339)))))))

(declare-fun Unit!10735 () Unit!10729)

(assert (=> d!209214 (= (lemmaCharactersSize!224 (_1!3676 (v!16402 lt!252339))) Unit!10735)))

(declare-fun bs!70553 () Bool)

(assert (= bs!70553 d!209214))

(assert (=> bs!70553 m!856957))

(assert (=> b!594703 d!209214))

(declare-fun b!594805 () Bool)

(declare-fun e!359893 () Bool)

(assert (=> b!594805 (= e!359893 (isPrefix!793 (tail!788 input!2705) (tail!788 input!2705)))))

(declare-fun d!209216 () Bool)

(declare-fun e!359895 () Bool)

(assert (=> d!209216 e!359895))

(declare-fun res!256670 () Bool)

(assert (=> d!209216 (=> res!256670 e!359895)))

(declare-fun lt!252382 () Bool)

(assert (=> d!209216 (= res!256670 (not lt!252382))))

(declare-fun e!359894 () Bool)

(assert (=> d!209216 (= lt!252382 e!359894)))

(declare-fun res!256669 () Bool)

(assert (=> d!209216 (=> res!256669 e!359894)))

(assert (=> d!209216 (= res!256669 ((_ is Nil!5903) input!2705))))

(assert (=> d!209216 (= (isPrefix!793 input!2705 input!2705) lt!252382)))

(declare-fun b!594806 () Bool)

(assert (=> b!594806 (= e!359895 (>= (size!4665 input!2705) (size!4665 input!2705)))))

(declare-fun b!594803 () Bool)

(assert (=> b!594803 (= e!359894 e!359893)))

(declare-fun res!256668 () Bool)

(assert (=> b!594803 (=> (not res!256668) (not e!359893))))

(assert (=> b!594803 (= res!256668 (not ((_ is Nil!5903) input!2705)))))

(declare-fun b!594804 () Bool)

(declare-fun res!256667 () Bool)

(assert (=> b!594804 (=> (not res!256667) (not e!359893))))

(assert (=> b!594804 (= res!256667 (= (head!1259 input!2705) (head!1259 input!2705)))))

(assert (= (and d!209216 (not res!256669)) b!594803))

(assert (= (and b!594803 res!256668) b!594804))

(assert (= (and b!594804 res!256667) b!594805))

(assert (= (and d!209216 (not res!256670)) b!594806))

(assert (=> b!594805 m!857067))

(assert (=> b!594805 m!857067))

(assert (=> b!594805 m!857067))

(assert (=> b!594805 m!857067))

(declare-fun m!857147 () Bool)

(assert (=> b!594805 m!857147))

(assert (=> b!594806 m!857075))

(assert (=> b!594806 m!857075))

(assert (=> b!594804 m!857077))

(assert (=> b!594804 m!857077))

(assert (=> b!594703 d!209216))

(declare-fun d!209218 () Bool)

(assert (=> d!209218 (ruleValid!363 thiss!22590 (rule!1935 token!491))))

(declare-fun lt!252383 () Unit!10729)

(assert (=> d!209218 (= lt!252383 (choose!4308 thiss!22590 (rule!1935 token!491) rules!3103))))

(assert (=> d!209218 (contains!1387 rules!3103 (rule!1935 token!491))))

(assert (=> d!209218 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!210 thiss!22590 (rule!1935 token!491) rules!3103) lt!252383)))

(declare-fun bs!70554 () Bool)

(assert (= bs!70554 d!209218))

(assert (=> bs!70554 m!856921))

(declare-fun m!857149 () Bool)

(assert (=> bs!70554 m!857149))

(declare-fun m!857151 () Bool)

(assert (=> bs!70554 m!857151))

(assert (=> b!594703 d!209218))

(declare-fun d!209220 () Bool)

(assert (=> d!209220 (isPrefix!793 input!2705 (++!1653 input!2705 suffix!1342))))

(declare-fun lt!252384 () Unit!10729)

(assert (=> d!209220 (= lt!252384 (choose!4310 input!2705 suffix!1342))))

(assert (=> d!209220 (= (lemmaConcatTwoListThenFirstIsPrefix!638 input!2705 suffix!1342) lt!252384)))

(declare-fun bs!70555 () Bool)

(assert (= bs!70555 d!209220))

(assert (=> bs!70555 m!856977))

(assert (=> bs!70555 m!856977))

(declare-fun m!857153 () Bool)

(assert (=> bs!70555 m!857153))

(declare-fun m!857155 () Bool)

(assert (=> bs!70555 m!857155))

(assert (=> b!594703 d!209220))

(declare-fun d!209222 () Bool)

(assert (=> d!209222 (isPrefix!793 input!2705 input!2705)))

(declare-fun lt!252387 () Unit!10729)

(declare-fun choose!4311 (List!5913 List!5913) Unit!10729)

(assert (=> d!209222 (= lt!252387 (choose!4311 input!2705 input!2705))))

(assert (=> d!209222 (= (lemmaIsPrefixRefl!529 input!2705 input!2705) lt!252387)))

(declare-fun bs!70556 () Bool)

(assert (= bs!70556 d!209222))

(assert (=> bs!70556 m!856955))

(declare-fun m!857157 () Bool)

(assert (=> bs!70556 m!857157))

(assert (=> b!594703 d!209222))

(declare-fun d!209224 () Bool)

(assert (=> d!209224 (and (= lt!252350 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!252390 () Unit!10729)

(declare-fun choose!4312 (List!5913 List!5913 List!5913 List!5913) Unit!10729)

(assert (=> d!209224 (= lt!252390 (choose!4312 lt!252350 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!209224 (= (++!1653 lt!252350 suffix!1342) (++!1653 input!2705 suffix!1342))))

(assert (=> d!209224 (= (lemmaConcatSameAndSameSizesThenSameLists!238 lt!252350 suffix!1342 input!2705 suffix!1342) lt!252390)))

(declare-fun bs!70557 () Bool)

(assert (= bs!70557 d!209224))

(declare-fun m!857159 () Bool)

(assert (=> bs!70557 m!857159))

(assert (=> bs!70557 m!856961))

(assert (=> bs!70557 m!856977))

(assert (=> b!594703 d!209224))

(declare-fun d!209226 () Bool)

(assert (=> d!209226 (= (size!4664 token!491) (size!4665 (originalCharacters!1204 token!491)))))

(declare-fun Unit!10736 () Unit!10729)

(assert (=> d!209226 (= (lemmaCharactersSize!224 token!491) Unit!10736)))

(declare-fun bs!70558 () Bool)

(assert (= bs!70558 d!209226))

(assert (=> bs!70558 m!857015))

(assert (=> b!594703 d!209226))

(declare-fun d!209228 () Bool)

(declare-fun lt!252391 () BalanceConc!3772)

(assert (=> d!209228 (= (list!2472 lt!252391) (originalCharacters!1204 (_1!3676 (v!16402 lt!252339))))))

(assert (=> d!209228 (= lt!252391 (dynLambda!3429 (toChars!1915 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339))))) (value!38069 (_1!3676 (v!16402 lt!252339)))))))

(assert (=> d!209228 (= (charsOf!794 (_1!3676 (v!16402 lt!252339))) lt!252391)))

(declare-fun b_lambda!23425 () Bool)

(assert (=> (not b_lambda!23425) (not d!209228)))

(declare-fun tb!51939 () Bool)

(declare-fun t!79317 () Bool)

(assert (=> (and b!594683 (= (toChars!1915 (transformation!1165 (rule!1935 token!491))) (toChars!1915 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339)))))) t!79317) tb!51939))

(declare-fun b!594807 () Bool)

(declare-fun e!359896 () Bool)

(declare-fun tp!185448 () Bool)

(assert (=> b!594807 (= e!359896 (and (inv!7482 (c!110760 (dynLambda!3429 (toChars!1915 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339))))) (value!38069 (_1!3676 (v!16402 lt!252339)))))) tp!185448))))

(declare-fun result!58326 () Bool)

(assert (=> tb!51939 (= result!58326 (and (inv!7483 (dynLambda!3429 (toChars!1915 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339))))) (value!38069 (_1!3676 (v!16402 lt!252339))))) e!359896))))

(assert (= tb!51939 b!594807))

(declare-fun m!857161 () Bool)

(assert (=> b!594807 m!857161))

(declare-fun m!857163 () Bool)

(assert (=> tb!51939 m!857163))

(assert (=> d!209228 t!79317))

(declare-fun b_and!58667 () Bool)

(assert (= b_and!58659 (and (=> t!79317 result!58326) b_and!58667)))

(declare-fun tb!51941 () Bool)

(declare-fun t!79319 () Bool)

(assert (=> (and b!594694 (= (toChars!1915 (transformation!1165 (h!11305 rules!3103))) (toChars!1915 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339)))))) t!79319) tb!51941))

(declare-fun result!58328 () Bool)

(assert (= result!58328 result!58326))

(assert (=> d!209228 t!79319))

(declare-fun b_and!58669 () Bool)

(assert (= b_and!58661 (and (=> t!79319 result!58328) b_and!58669)))

(declare-fun m!857165 () Bool)

(assert (=> d!209228 m!857165))

(declare-fun m!857167 () Bool)

(assert (=> d!209228 m!857167))

(assert (=> b!594703 d!209228))

(declare-fun b!594810 () Bool)

(declare-fun e!359897 () Bool)

(assert (=> b!594810 (= e!359897 (isPrefix!793 (tail!788 lt!252350) (tail!788 lt!252345)))))

(declare-fun d!209230 () Bool)

(declare-fun e!359899 () Bool)

(assert (=> d!209230 e!359899))

(declare-fun res!256674 () Bool)

(assert (=> d!209230 (=> res!256674 e!359899)))

(declare-fun lt!252392 () Bool)

(assert (=> d!209230 (= res!256674 (not lt!252392))))

(declare-fun e!359898 () Bool)

(assert (=> d!209230 (= lt!252392 e!359898)))

(declare-fun res!256673 () Bool)

(assert (=> d!209230 (=> res!256673 e!359898)))

(assert (=> d!209230 (= res!256673 ((_ is Nil!5903) lt!252350))))

(assert (=> d!209230 (= (isPrefix!793 lt!252350 lt!252345) lt!252392)))

(declare-fun b!594811 () Bool)

(assert (=> b!594811 (= e!359899 (>= (size!4665 lt!252345) (size!4665 lt!252350)))))

(declare-fun b!594808 () Bool)

(assert (=> b!594808 (= e!359898 e!359897)))

(declare-fun res!256672 () Bool)

(assert (=> b!594808 (=> (not res!256672) (not e!359897))))

(assert (=> b!594808 (= res!256672 (not ((_ is Nil!5903) lt!252345)))))

(declare-fun b!594809 () Bool)

(declare-fun res!256671 () Bool)

(assert (=> b!594809 (=> (not res!256671) (not e!359897))))

(assert (=> b!594809 (= res!256671 (= (head!1259 lt!252350) (head!1259 lt!252345)))))

(assert (= (and d!209230 (not res!256673)) b!594808))

(assert (= (and b!594808 res!256672) b!594809))

(assert (= (and b!594809 res!256671) b!594810))

(assert (= (and d!209230 (not res!256674)) b!594811))

(declare-fun m!857169 () Bool)

(assert (=> b!594810 m!857169))

(assert (=> b!594810 m!857069))

(assert (=> b!594810 m!857169))

(assert (=> b!594810 m!857069))

(declare-fun m!857171 () Bool)

(assert (=> b!594810 m!857171))

(assert (=> b!594811 m!857073))

(assert (=> b!594811 m!856919))

(declare-fun m!857173 () Bool)

(assert (=> b!594809 m!857173))

(assert (=> b!594809 m!857079))

(assert (=> b!594703 d!209230))

(declare-fun d!209232 () Bool)

(assert (=> d!209232 (= (list!2472 (charsOf!794 (_1!3676 (v!16402 lt!252339)))) (list!2473 (c!110760 (charsOf!794 (_1!3676 (v!16402 lt!252339))))))))

(declare-fun bs!70559 () Bool)

(assert (= bs!70559 d!209232))

(declare-fun m!857175 () Bool)

(assert (=> bs!70559 m!857175))

(assert (=> b!594703 d!209232))

(declare-fun d!209234 () Bool)

(declare-fun lt!252393 () List!5913)

(assert (=> d!209234 (= (++!1653 lt!252330 lt!252393) input!2705)))

(declare-fun e!359900 () List!5913)

(assert (=> d!209234 (= lt!252393 e!359900)))

(declare-fun c!110779 () Bool)

(assert (=> d!209234 (= c!110779 ((_ is Cons!5903) lt!252330))))

(assert (=> d!209234 (>= (size!4665 input!2705) (size!4665 lt!252330))))

(assert (=> d!209234 (= (getSuffix!310 input!2705 lt!252330) lt!252393)))

(declare-fun b!594812 () Bool)

(assert (=> b!594812 (= e!359900 (getSuffix!310 (tail!788 input!2705) (t!79302 lt!252330)))))

(declare-fun b!594813 () Bool)

(assert (=> b!594813 (= e!359900 input!2705)))

(assert (= (and d!209234 c!110779) b!594812))

(assert (= (and d!209234 (not c!110779)) b!594813))

(declare-fun m!857177 () Bool)

(assert (=> d!209234 m!857177))

(assert (=> d!209234 m!857075))

(assert (=> d!209234 m!856949))

(assert (=> b!594812 m!857067))

(assert (=> b!594812 m!857067))

(declare-fun m!857179 () Bool)

(assert (=> b!594812 m!857179))

(assert (=> b!594703 d!209234))

(declare-fun d!209236 () Bool)

(declare-fun isEmpty!4264 (Option!1516) Bool)

(assert (=> d!209236 (= (isDefined!1327 lt!252332) (not (isEmpty!4264 lt!252332)))))

(declare-fun bs!70560 () Bool)

(assert (= bs!70560 d!209236))

(declare-fun m!857181 () Bool)

(assert (=> bs!70560 m!857181))

(assert (=> b!594690 d!209236))

(declare-fun b!594877 () Bool)

(declare-fun e!359927 () Bool)

(declare-fun lt!252429 () Option!1516)

(assert (=> b!594877 (= e!359927 (contains!1387 rules!3103 (rule!1935 (_1!3676 (get!2262 lt!252429)))))))

(declare-fun b!594878 () Bool)

(declare-fun res!256722 () Bool)

(assert (=> b!594878 (=> (not res!256722) (not e!359927))))

(assert (=> b!594878 (= res!256722 (= (++!1653 (list!2472 (charsOf!794 (_1!3676 (get!2262 lt!252429)))) (_2!3676 (get!2262 lt!252429))) lt!252329))))

(declare-fun b!594879 () Bool)

(declare-fun e!359928 () Option!1516)

(declare-fun lt!252430 () Option!1516)

(declare-fun lt!252428 () Option!1516)

(assert (=> b!594879 (= e!359928 (ite (and ((_ is None!1515) lt!252430) ((_ is None!1515) lt!252428)) None!1515 (ite ((_ is None!1515) lt!252428) lt!252430 (ite ((_ is None!1515) lt!252430) lt!252428 (ite (>= (size!4664 (_1!3676 (v!16402 lt!252430))) (size!4664 (_1!3676 (v!16402 lt!252428)))) lt!252430 lt!252428)))))))

(declare-fun call!40395 () Option!1516)

(assert (=> b!594879 (= lt!252430 call!40395)))

(assert (=> b!594879 (= lt!252428 (maxPrefix!749 thiss!22590 (t!79303 rules!3103) lt!252329))))

(declare-fun b!594880 () Bool)

(declare-fun e!359929 () Bool)

(assert (=> b!594880 (= e!359929 e!359927)))

(declare-fun res!256719 () Bool)

(assert (=> b!594880 (=> (not res!256719) (not e!359927))))

(assert (=> b!594880 (= res!256719 (isDefined!1327 lt!252429))))

(declare-fun b!594881 () Bool)

(assert (=> b!594881 (= e!359928 call!40395)))

(declare-fun b!594882 () Bool)

(declare-fun res!256721 () Bool)

(assert (=> b!594882 (=> (not res!256721) (not e!359927))))

(assert (=> b!594882 (= res!256721 (= (value!38069 (_1!3676 (get!2262 lt!252429))) (apply!1418 (transformation!1165 (rule!1935 (_1!3676 (get!2262 lt!252429)))) (seqFromList!1341 (originalCharacters!1204 (_1!3676 (get!2262 lt!252429)))))))))

(declare-fun b!594883 () Bool)

(declare-fun res!256717 () Bool)

(assert (=> b!594883 (=> (not res!256717) (not e!359927))))

(assert (=> b!594883 (= res!256717 (< (size!4665 (_2!3676 (get!2262 lt!252429))) (size!4665 lt!252329)))))

(declare-fun bm!40390 () Bool)

(declare-fun maxPrefixOneRule!426 (LexerInterface!1051 Rule!2130 List!5913) Option!1516)

(assert (=> bm!40390 (= call!40395 (maxPrefixOneRule!426 thiss!22590 (h!11305 rules!3103) lt!252329))))

(declare-fun d!209238 () Bool)

(assert (=> d!209238 e!359929))

(declare-fun res!256716 () Bool)

(assert (=> d!209238 (=> res!256716 e!359929)))

(assert (=> d!209238 (= res!256716 (isEmpty!4264 lt!252429))))

(assert (=> d!209238 (= lt!252429 e!359928)))

(declare-fun c!110790 () Bool)

(assert (=> d!209238 (= c!110790 (and ((_ is Cons!5904) rules!3103) ((_ is Nil!5904) (t!79303 rules!3103))))))

(declare-fun lt!252431 () Unit!10729)

(declare-fun lt!252427 () Unit!10729)

(assert (=> d!209238 (= lt!252431 lt!252427)))

(assert (=> d!209238 (isPrefix!793 lt!252329 lt!252329)))

(assert (=> d!209238 (= lt!252427 (lemmaIsPrefixRefl!529 lt!252329 lt!252329))))

(declare-fun rulesValidInductive!430 (LexerInterface!1051 List!5914) Bool)

(assert (=> d!209238 (rulesValidInductive!430 thiss!22590 rules!3103)))

(assert (=> d!209238 (= (maxPrefix!749 thiss!22590 rules!3103 lt!252329) lt!252429)))

(declare-fun b!594884 () Bool)

(declare-fun res!256718 () Bool)

(assert (=> b!594884 (=> (not res!256718) (not e!359927))))

(declare-fun matchR!622 (Regex!1499 List!5913) Bool)

(assert (=> b!594884 (= res!256718 (matchR!622 (regex!1165 (rule!1935 (_1!3676 (get!2262 lt!252429)))) (list!2472 (charsOf!794 (_1!3676 (get!2262 lt!252429))))))))

(declare-fun b!594885 () Bool)

(declare-fun res!256720 () Bool)

(assert (=> b!594885 (=> (not res!256720) (not e!359927))))

(assert (=> b!594885 (= res!256720 (= (list!2472 (charsOf!794 (_1!3676 (get!2262 lt!252429)))) (originalCharacters!1204 (_1!3676 (get!2262 lt!252429)))))))

(assert (= (and d!209238 c!110790) b!594881))

(assert (= (and d!209238 (not c!110790)) b!594879))

(assert (= (or b!594881 b!594879) bm!40390))

(assert (= (and d!209238 (not res!256716)) b!594880))

(assert (= (and b!594880 res!256719) b!594885))

(assert (= (and b!594885 res!256720) b!594883))

(assert (= (and b!594883 res!256717) b!594878))

(assert (= (and b!594878 res!256722) b!594882))

(assert (= (and b!594882 res!256721) b!594884))

(assert (= (and b!594884 res!256718) b!594877))

(declare-fun m!857247 () Bool)

(assert (=> b!594878 m!857247))

(declare-fun m!857249 () Bool)

(assert (=> b!594878 m!857249))

(assert (=> b!594878 m!857249))

(declare-fun m!857251 () Bool)

(assert (=> b!594878 m!857251))

(assert (=> b!594878 m!857251))

(declare-fun m!857253 () Bool)

(assert (=> b!594878 m!857253))

(assert (=> b!594884 m!857247))

(assert (=> b!594884 m!857249))

(assert (=> b!594884 m!857249))

(assert (=> b!594884 m!857251))

(assert (=> b!594884 m!857251))

(declare-fun m!857255 () Bool)

(assert (=> b!594884 m!857255))

(assert (=> b!594882 m!857247))

(declare-fun m!857257 () Bool)

(assert (=> b!594882 m!857257))

(assert (=> b!594882 m!857257))

(declare-fun m!857259 () Bool)

(assert (=> b!594882 m!857259))

(assert (=> b!594877 m!857247))

(declare-fun m!857261 () Bool)

(assert (=> b!594877 m!857261))

(declare-fun m!857263 () Bool)

(assert (=> b!594880 m!857263))

(declare-fun m!857265 () Bool)

(assert (=> b!594879 m!857265))

(assert (=> b!594883 m!857247))

(declare-fun m!857267 () Bool)

(assert (=> b!594883 m!857267))

(assert (=> b!594883 m!857045))

(assert (=> b!594885 m!857247))

(assert (=> b!594885 m!857249))

(assert (=> b!594885 m!857249))

(assert (=> b!594885 m!857251))

(declare-fun m!857269 () Bool)

(assert (=> d!209238 m!857269))

(declare-fun m!857271 () Bool)

(assert (=> d!209238 m!857271))

(declare-fun m!857273 () Bool)

(assert (=> d!209238 m!857273))

(declare-fun m!857275 () Bool)

(assert (=> d!209238 m!857275))

(declare-fun m!857277 () Bool)

(assert (=> bm!40390 m!857277))

(assert (=> b!594690 d!209238))

(declare-fun b!594889 () Bool)

(declare-fun e!359932 () List!5913)

(assert (=> b!594889 (= e!359932 (Cons!5903 (h!11304 input!2705) (++!1653 (t!79302 input!2705) suffix!1342)))))

(declare-fun d!209254 () Bool)

(declare-fun e!359931 () Bool)

(assert (=> d!209254 e!359931))

(declare-fun res!256723 () Bool)

(assert (=> d!209254 (=> (not res!256723) (not e!359931))))

(declare-fun lt!252433 () List!5913)

(assert (=> d!209254 (= res!256723 (= (content!1062 lt!252433) ((_ map or) (content!1062 input!2705) (content!1062 suffix!1342))))))

(assert (=> d!209254 (= lt!252433 e!359932)))

(declare-fun c!110792 () Bool)

(assert (=> d!209254 (= c!110792 ((_ is Nil!5903) input!2705))))

(assert (=> d!209254 (= (++!1653 input!2705 suffix!1342) lt!252433)))

(declare-fun b!594891 () Bool)

(assert (=> b!594891 (= e!359931 (or (not (= suffix!1342 Nil!5903)) (= lt!252433 input!2705)))))

(declare-fun b!594890 () Bool)

(declare-fun res!256724 () Bool)

(assert (=> b!594890 (=> (not res!256724) (not e!359931))))

(assert (=> b!594890 (= res!256724 (= (size!4665 lt!252433) (+ (size!4665 input!2705) (size!4665 suffix!1342))))))

(declare-fun b!594888 () Bool)

(assert (=> b!594888 (= e!359932 suffix!1342)))

(assert (= (and d!209254 c!110792) b!594888))

(assert (= (and d!209254 (not c!110792)) b!594889))

(assert (= (and d!209254 res!256723) b!594890))

(assert (= (and b!594890 res!256724) b!594891))

(declare-fun m!857279 () Bool)

(assert (=> b!594889 m!857279))

(declare-fun m!857281 () Bool)

(assert (=> d!209254 m!857281))

(declare-fun m!857283 () Bool)

(assert (=> d!209254 m!857283))

(assert (=> d!209254 m!857023))

(declare-fun m!857285 () Bool)

(assert (=> b!594890 m!857285))

(assert (=> b!594890 m!857075))

(assert (=> b!594890 m!857027))

(assert (=> b!594690 d!209254))

(declare-fun b!594892 () Bool)

(declare-fun e!359933 () Bool)

(declare-fun lt!252436 () Option!1516)

(assert (=> b!594892 (= e!359933 (contains!1387 rules!3103 (rule!1935 (_1!3676 (get!2262 lt!252436)))))))

(declare-fun b!594893 () Bool)

(declare-fun res!256731 () Bool)

(assert (=> b!594893 (=> (not res!256731) (not e!359933))))

(assert (=> b!594893 (= res!256731 (= (++!1653 (list!2472 (charsOf!794 (_1!3676 (get!2262 lt!252436)))) (_2!3676 (get!2262 lt!252436))) input!2705))))

(declare-fun b!594894 () Bool)

(declare-fun e!359934 () Option!1516)

(declare-fun lt!252437 () Option!1516)

(declare-fun lt!252435 () Option!1516)

(assert (=> b!594894 (= e!359934 (ite (and ((_ is None!1515) lt!252437) ((_ is None!1515) lt!252435)) None!1515 (ite ((_ is None!1515) lt!252435) lt!252437 (ite ((_ is None!1515) lt!252437) lt!252435 (ite (>= (size!4664 (_1!3676 (v!16402 lt!252437))) (size!4664 (_1!3676 (v!16402 lt!252435)))) lt!252437 lt!252435)))))))

(declare-fun call!40396 () Option!1516)

(assert (=> b!594894 (= lt!252437 call!40396)))

(assert (=> b!594894 (= lt!252435 (maxPrefix!749 thiss!22590 (t!79303 rules!3103) input!2705))))

(declare-fun b!594895 () Bool)

(declare-fun e!359935 () Bool)

(assert (=> b!594895 (= e!359935 e!359933)))

(declare-fun res!256728 () Bool)

(assert (=> b!594895 (=> (not res!256728) (not e!359933))))

(assert (=> b!594895 (= res!256728 (isDefined!1327 lt!252436))))

(declare-fun b!594896 () Bool)

(assert (=> b!594896 (= e!359934 call!40396)))

(declare-fun b!594897 () Bool)

(declare-fun res!256730 () Bool)

(assert (=> b!594897 (=> (not res!256730) (not e!359933))))

(assert (=> b!594897 (= res!256730 (= (value!38069 (_1!3676 (get!2262 lt!252436))) (apply!1418 (transformation!1165 (rule!1935 (_1!3676 (get!2262 lt!252436)))) (seqFromList!1341 (originalCharacters!1204 (_1!3676 (get!2262 lt!252436)))))))))

(declare-fun b!594898 () Bool)

(declare-fun res!256726 () Bool)

(assert (=> b!594898 (=> (not res!256726) (not e!359933))))

(assert (=> b!594898 (= res!256726 (< (size!4665 (_2!3676 (get!2262 lt!252436))) (size!4665 input!2705)))))

(declare-fun bm!40391 () Bool)

(assert (=> bm!40391 (= call!40396 (maxPrefixOneRule!426 thiss!22590 (h!11305 rules!3103) input!2705))))

(declare-fun d!209256 () Bool)

(assert (=> d!209256 e!359935))

(declare-fun res!256725 () Bool)

(assert (=> d!209256 (=> res!256725 e!359935)))

(assert (=> d!209256 (= res!256725 (isEmpty!4264 lt!252436))))

(assert (=> d!209256 (= lt!252436 e!359934)))

(declare-fun c!110793 () Bool)

(assert (=> d!209256 (= c!110793 (and ((_ is Cons!5904) rules!3103) ((_ is Nil!5904) (t!79303 rules!3103))))))

(declare-fun lt!252438 () Unit!10729)

(declare-fun lt!252434 () Unit!10729)

(assert (=> d!209256 (= lt!252438 lt!252434)))

(assert (=> d!209256 (isPrefix!793 input!2705 input!2705)))

(assert (=> d!209256 (= lt!252434 (lemmaIsPrefixRefl!529 input!2705 input!2705))))

(assert (=> d!209256 (rulesValidInductive!430 thiss!22590 rules!3103)))

(assert (=> d!209256 (= (maxPrefix!749 thiss!22590 rules!3103 input!2705) lt!252436)))

(declare-fun b!594899 () Bool)

(declare-fun res!256727 () Bool)

(assert (=> b!594899 (=> (not res!256727) (not e!359933))))

(assert (=> b!594899 (= res!256727 (matchR!622 (regex!1165 (rule!1935 (_1!3676 (get!2262 lt!252436)))) (list!2472 (charsOf!794 (_1!3676 (get!2262 lt!252436))))))))

(declare-fun b!594900 () Bool)

(declare-fun res!256729 () Bool)

(assert (=> b!594900 (=> (not res!256729) (not e!359933))))

(assert (=> b!594900 (= res!256729 (= (list!2472 (charsOf!794 (_1!3676 (get!2262 lt!252436)))) (originalCharacters!1204 (_1!3676 (get!2262 lt!252436)))))))

(assert (= (and d!209256 c!110793) b!594896))

(assert (= (and d!209256 (not c!110793)) b!594894))

(assert (= (or b!594896 b!594894) bm!40391))

(assert (= (and d!209256 (not res!256725)) b!594895))

(assert (= (and b!594895 res!256728) b!594900))

(assert (= (and b!594900 res!256729) b!594898))

(assert (= (and b!594898 res!256726) b!594893))

(assert (= (and b!594893 res!256731) b!594897))

(assert (= (and b!594897 res!256730) b!594899))

(assert (= (and b!594899 res!256727) b!594892))

(declare-fun m!857291 () Bool)

(assert (=> b!594893 m!857291))

(declare-fun m!857293 () Bool)

(assert (=> b!594893 m!857293))

(assert (=> b!594893 m!857293))

(declare-fun m!857295 () Bool)

(assert (=> b!594893 m!857295))

(assert (=> b!594893 m!857295))

(declare-fun m!857297 () Bool)

(assert (=> b!594893 m!857297))

(assert (=> b!594899 m!857291))

(assert (=> b!594899 m!857293))

(assert (=> b!594899 m!857293))

(assert (=> b!594899 m!857295))

(assert (=> b!594899 m!857295))

(declare-fun m!857299 () Bool)

(assert (=> b!594899 m!857299))

(assert (=> b!594897 m!857291))

(declare-fun m!857301 () Bool)

(assert (=> b!594897 m!857301))

(assert (=> b!594897 m!857301))

(declare-fun m!857303 () Bool)

(assert (=> b!594897 m!857303))

(assert (=> b!594892 m!857291))

(declare-fun m!857305 () Bool)

(assert (=> b!594892 m!857305))

(declare-fun m!857307 () Bool)

(assert (=> b!594895 m!857307))

(declare-fun m!857309 () Bool)

(assert (=> b!594894 m!857309))

(assert (=> b!594898 m!857291))

(declare-fun m!857311 () Bool)

(assert (=> b!594898 m!857311))

(assert (=> b!594898 m!857075))

(assert (=> b!594900 m!857291))

(assert (=> b!594900 m!857293))

(assert (=> b!594900 m!857293))

(assert (=> b!594900 m!857295))

(declare-fun m!857313 () Bool)

(assert (=> d!209256 m!857313))

(assert (=> d!209256 m!856955))

(assert (=> d!209256 m!856915))

(assert (=> d!209256 m!857275))

(declare-fun m!857315 () Bool)

(assert (=> bm!40391 m!857315))

(assert (=> b!594691 d!209256))

(declare-fun b!594914 () Bool)

(declare-fun e!359944 () Bool)

(declare-fun tp!185451 () Bool)

(assert (=> b!594914 (= e!359944 (and tp_is_empty!3353 tp!185451))))

(assert (=> b!594684 (= tp!185443 e!359944)))

(assert (= (and b!594684 ((_ is Cons!5903) (originalCharacters!1204 token!491))) b!594914))

(declare-fun b!594926 () Bool)

(declare-fun e!359947 () Bool)

(declare-fun tp!185462 () Bool)

(declare-fun tp!185463 () Bool)

(assert (=> b!594926 (= e!359947 (and tp!185462 tp!185463))))

(declare-fun b!594927 () Bool)

(declare-fun tp!185464 () Bool)

(assert (=> b!594927 (= e!359947 tp!185464)))

(declare-fun b!594928 () Bool)

(declare-fun tp!185466 () Bool)

(declare-fun tp!185465 () Bool)

(assert (=> b!594928 (= e!359947 (and tp!185466 tp!185465))))

(declare-fun b!594925 () Bool)

(assert (=> b!594925 (= e!359947 tp_is_empty!3353)))

(assert (=> b!594695 (= tp!185438 e!359947)))

(assert (= (and b!594695 ((_ is ElementMatch!1499) (regex!1165 (rule!1935 token!491)))) b!594925))

(assert (= (and b!594695 ((_ is Concat!2688) (regex!1165 (rule!1935 token!491)))) b!594926))

(assert (= (and b!594695 ((_ is Star!1499) (regex!1165 (rule!1935 token!491)))) b!594927))

(assert (= (and b!594695 ((_ is Union!1499) (regex!1165 (rule!1935 token!491)))) b!594928))

(declare-fun b!594930 () Bool)

(declare-fun e!359948 () Bool)

(declare-fun tp!185467 () Bool)

(declare-fun tp!185468 () Bool)

(assert (=> b!594930 (= e!359948 (and tp!185467 tp!185468))))

(declare-fun b!594931 () Bool)

(declare-fun tp!185469 () Bool)

(assert (=> b!594931 (= e!359948 tp!185469)))

(declare-fun b!594932 () Bool)

(declare-fun tp!185471 () Bool)

(declare-fun tp!185470 () Bool)

(assert (=> b!594932 (= e!359948 (and tp!185471 tp!185470))))

(declare-fun b!594929 () Bool)

(assert (=> b!594929 (= e!359948 tp_is_empty!3353)))

(assert (=> b!594698 (= tp!185436 e!359948)))

(assert (= (and b!594698 ((_ is ElementMatch!1499) (regex!1165 (h!11305 rules!3103)))) b!594929))

(assert (= (and b!594698 ((_ is Concat!2688) (regex!1165 (h!11305 rules!3103)))) b!594930))

(assert (= (and b!594698 ((_ is Star!1499) (regex!1165 (h!11305 rules!3103)))) b!594931))

(assert (= (and b!594698 ((_ is Union!1499) (regex!1165 (h!11305 rules!3103)))) b!594932))

(declare-fun b!594947 () Bool)

(declare-fun b_free!16789 () Bool)

(declare-fun b_next!16805 () Bool)

(assert (=> b!594947 (= b_free!16789 (not b_next!16805))))

(declare-fun t!79327 () Bool)

(declare-fun tb!51949 () Bool)

(assert (=> (and b!594947 (= (toValue!2056 (transformation!1165 (h!11305 (t!79303 rules!3103)))) (toValue!2056 (transformation!1165 (rule!1935 token!491)))) t!79327) tb!51949))

(declare-fun result!58346 () Bool)

(assert (= result!58346 result!58316))

(assert (=> d!209158 t!79327))

(declare-fun t!79329 () Bool)

(declare-fun tb!51951 () Bool)

(assert (=> (and b!594947 (= (toValue!2056 (transformation!1165 (h!11305 (t!79303 rules!3103)))) (toValue!2056 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339)))))) t!79329) tb!51951))

(declare-fun result!58348 () Bool)

(assert (= result!58348 result!58322))

(assert (=> d!209186 t!79329))

(declare-fun tp!185483 () Bool)

(declare-fun b_and!58675 () Bool)

(assert (=> b!594947 (= tp!185483 (and (=> t!79327 result!58346) (=> t!79329 result!58348) b_and!58675))))

(declare-fun b_free!16791 () Bool)

(declare-fun b_next!16807 () Bool)

(assert (=> b!594947 (= b_free!16791 (not b_next!16807))))

(declare-fun t!79331 () Bool)

(declare-fun tb!51953 () Bool)

(assert (=> (and b!594947 (= (toChars!1915 (transformation!1165 (h!11305 (t!79303 rules!3103)))) (toChars!1915 (transformation!1165 (rule!1935 token!491)))) t!79331) tb!51953))

(declare-fun result!58350 () Bool)

(assert (= result!58350 result!58310))

(assert (=> b!594711 t!79331))

(assert (=> d!209174 t!79331))

(declare-fun t!79333 () Bool)

(declare-fun tb!51955 () Bool)

(assert (=> (and b!594947 (= (toChars!1915 (transformation!1165 (h!11305 (t!79303 rules!3103)))) (toChars!1915 (transformation!1165 (rule!1935 (_1!3676 (v!16402 lt!252339)))))) t!79333) tb!51955))

(declare-fun result!58352 () Bool)

(assert (= result!58352 result!58326))

(assert (=> d!209228 t!79333))

(declare-fun tp!185482 () Bool)

(declare-fun b_and!58677 () Bool)

(assert (=> b!594947 (= tp!185482 (and (=> t!79331 result!58350) (=> t!79333 result!58352) b_and!58677))))

(declare-fun e!359961 () Bool)

(assert (=> b!594947 (= e!359961 (and tp!185483 tp!185482))))

(declare-fun tp!185485 () Bool)

(declare-fun b!594946 () Bool)

(declare-fun e!359960 () Bool)

(assert (=> b!594946 (= e!359960 (and tp!185485 (inv!7477 (tag!1427 (h!11305 (t!79303 rules!3103)))) (inv!7480 (transformation!1165 (h!11305 (t!79303 rules!3103)))) e!359961))))

(declare-fun b!594945 () Bool)

(declare-fun e!359959 () Bool)

(declare-fun tp!185484 () Bool)

(assert (=> b!594945 (= e!359959 (and e!359960 tp!185484))))

(assert (=> b!594682 (= tp!185435 e!359959)))

(assert (= b!594946 b!594947))

(assert (= b!594945 b!594946))

(assert (= (and b!594682 ((_ is Cons!5904) (t!79303 rules!3103))) b!594945))

(declare-fun m!857329 () Bool)

(assert (=> b!594946 m!857329))

(declare-fun m!857331 () Bool)

(assert (=> b!594946 m!857331))

(declare-fun b!594949 () Bool)

(declare-fun e!359964 () Bool)

(declare-fun tp!185487 () Bool)

(assert (=> b!594949 (= e!359964 (and tp_is_empty!3353 tp!185487))))

(assert (=> b!594701 (= tp!185442 e!359964)))

(assert (= (and b!594701 ((_ is Cons!5903) (t!79302 input!2705))) b!594949))

(declare-fun b!594950 () Bool)

(declare-fun e!359965 () Bool)

(declare-fun tp!185488 () Bool)

(assert (=> b!594950 (= e!359965 (and tp_is_empty!3353 tp!185488))))

(assert (=> b!594696 (= tp!185437 e!359965)))

(assert (= (and b!594696 ((_ is Cons!5903) (t!79302 suffix!1342))) b!594950))

(declare-fun b_lambda!23431 () Bool)

(assert (= b_lambda!23419 (or (and b!594683 b_free!16781) (and b!594694 b_free!16785 (= (toValue!2056 (transformation!1165 (h!11305 rules!3103))) (toValue!2056 (transformation!1165 (rule!1935 token!491))))) (and b!594947 b_free!16789 (= (toValue!2056 (transformation!1165 (h!11305 (t!79303 rules!3103)))) (toValue!2056 (transformation!1165 (rule!1935 token!491))))) b_lambda!23431)))

(declare-fun b_lambda!23433 () Bool)

(assert (= b_lambda!23421 (or (and b!594683 b_free!16783) (and b!594694 b_free!16787 (= (toChars!1915 (transformation!1165 (h!11305 rules!3103))) (toChars!1915 (transformation!1165 (rule!1935 token!491))))) (and b!594947 b_free!16791 (= (toChars!1915 (transformation!1165 (h!11305 (t!79303 rules!3103)))) (toChars!1915 (transformation!1165 (rule!1935 token!491))))) b_lambda!23433)))

(declare-fun b_lambda!23435 () Bool)

(assert (= b_lambda!23417 (or (and b!594683 b_free!16783) (and b!594694 b_free!16787 (= (toChars!1915 (transformation!1165 (h!11305 rules!3103))) (toChars!1915 (transformation!1165 (rule!1935 token!491))))) (and b!594947 b_free!16791 (= (toChars!1915 (transformation!1165 (h!11305 (t!79303 rules!3103)))) (toChars!1915 (transformation!1165 (rule!1935 token!491))))) b_lambda!23435)))

(check-sat (not b!594791) (not b!594914) (not d!209238) (not b!594885) (not b!594892) (not d!209172) (not b!594898) (not b!594795) (not b!594895) (not d!209214) (not b!594812) (not b!594897) (not d!209170) (not b_next!16805) (not b_lambda!23425) (not b!594809) (not tb!51927) (not d!209152) (not b_next!16799) (not b!594878) (not d!209202) (not b!594706) (not b!594785) (not b!594773) b_and!58663 (not b!594776) (not b!594810) (not d!209234) (not d!209154) (not b!594762) (not d!209222) (not b!594883) (not d!209188) (not b!594889) (not b!594751) (not b!594728) (not b!594950) (not b_next!16801) (not b!594804) b_and!58665 (not d!209256) (not b!594717) (not b!594753) (not d!209232) (not d!209156) (not d!209228) (not d!209144) (not b!594927) (not b!594811) tp_is_empty!3353 (not tb!51935) (not b_next!16807) (not b!594930) (not b!594793) (not b!594945) (not d!209164) (not d!209182) (not tb!51931) (not d!209160) (not d!209198) (not b!594711) (not b!594792) (not b!594931) (not tb!51939) (not d!209174) (not b_next!16797) b_and!58677 (not d!209204) (not b!594900) (not b!594802) (not d!209212) (not b!594894) (not b!594879) (not d!209210) (not b!594739) b_and!58669 (not b!594899) (not d!209208) (not d!209226) (not b_lambda!23435) (not d!209254) (not b_next!16803) (not d!209194) (not b!594926) (not b!594805) (not b!594801) (not d!209218) (not b!594882) (not d!209184) (not d!209224) b_and!58667 (not b!594884) (not b_lambda!23433) (not b!594877) (not b!594807) (not b!594727) (not b!594932) (not d!209220) (not bm!40391) (not b!594778) (not b!594893) (not b!594806) (not b!594777) (not b!594774) (not b!594949) (not b!594783) (not b!594755) (not b!594756) (not b!594712) (not bm!40390) (not b!594946) (not b!594880) (not b_lambda!23431) (not b!594732) (not d!209236) (not b!594772) (not b!594789) (not b!594928) (not b!594799) b_and!58675 (not d!209162) (not b_lambda!23423) (not b!594890) (not b!594796))
(check-sat (not b_next!16805) (not b_next!16799) b_and!58663 (not b_next!16807) b_and!58669 (not b_next!16803) b_and!58667 b_and!58675 b_and!58665 (not b_next!16801) (not b_next!16797) b_and!58677)
