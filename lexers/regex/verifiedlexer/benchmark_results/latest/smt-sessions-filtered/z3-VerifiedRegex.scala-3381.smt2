; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!191648 () Bool)

(assert start!191648)

(declare-fun b!1910562 () Bool)

(declare-fun b_free!53905 () Bool)

(declare-fun b_next!54609 () Bool)

(assert (=> b!1910562 (= b_free!53905 (not b_next!54609))))

(declare-fun tp!545374 () Bool)

(declare-fun b_and!148823 () Bool)

(assert (=> b!1910562 (= tp!545374 b_and!148823)))

(declare-fun b_free!53907 () Bool)

(declare-fun b_next!54611 () Bool)

(assert (=> b!1910562 (= b_free!53907 (not b_next!54611))))

(declare-fun tp!545375 () Bool)

(declare-fun b_and!148825 () Bool)

(assert (=> b!1910562 (= tp!545375 b_and!148825)))

(declare-fun b!1910572 () Bool)

(declare-fun b_free!53909 () Bool)

(declare-fun b_next!54613 () Bool)

(assert (=> b!1910572 (= b_free!53909 (not b_next!54613))))

(declare-fun tp!545377 () Bool)

(declare-fun b_and!148827 () Bool)

(assert (=> b!1910572 (= tp!545377 b_and!148827)))

(declare-fun b_free!53911 () Bool)

(declare-fun b_next!54615 () Bool)

(assert (=> b!1910572 (= b_free!53911 (not b_next!54615))))

(declare-fun tp!545379 () Bool)

(declare-fun b_and!148829 () Bool)

(assert (=> b!1910572 (= tp!545379 b_and!148829)))

(declare-fun b!1910574 () Bool)

(declare-fun b_free!53913 () Bool)

(declare-fun b_next!54617 () Bool)

(assert (=> b!1910574 (= b_free!53913 (not b_next!54617))))

(declare-fun tp!545378 () Bool)

(declare-fun b_and!148831 () Bool)

(assert (=> b!1910574 (= tp!545378 b_and!148831)))

(declare-fun b_free!53915 () Bool)

(declare-fun b_next!54619 () Bool)

(assert (=> b!1910574 (= b_free!53915 (not b_next!54619))))

(declare-fun tp!545382 () Bool)

(declare-fun b_and!148833 () Bool)

(assert (=> b!1910574 (= tp!545382 b_and!148833)))

(declare-fun b!1910549 () Bool)

(declare-fun e!1220439 () Bool)

(assert (=> b!1910549 (= e!1220439 false)))

(declare-fun res!853134 () Bool)

(declare-fun e!1220444 () Bool)

(assert (=> start!191648 (=> (not res!853134) (not e!1220444))))

(declare-datatypes ((LexerInterface!3451 0))(
  ( (LexerInterfaceExt!3448 (__x!13446 Int)) (Lexer!3449) )
))
(declare-fun thiss!23328 () LexerInterface!3451)

(get-info :version)

(assert (=> start!191648 (= res!853134 ((_ is Lexer!3449) thiss!23328))))

(assert (=> start!191648 e!1220444))

(assert (=> start!191648 true))

(declare-fun e!1220431 () Bool)

(assert (=> start!191648 e!1220431))

(declare-fun e!1220425 () Bool)

(assert (=> start!191648 e!1220425))

(declare-datatypes ((List!21614 0))(
  ( (Nil!21532) (Cons!21532 (h!26933 (_ BitVec 16)) (t!178071 List!21614)) )
))
(declare-datatypes ((TokenValue!3974 0))(
  ( (FloatLiteralValue!7948 (text!28263 List!21614)) (TokenValueExt!3973 (__x!13447 Int)) (Broken!19870 (value!120948 List!21614)) (Object!4055) (End!3974) (Def!3974) (Underscore!3974) (Match!3974) (Else!3974) (Error!3974) (Case!3974) (If!3974) (Extends!3974) (Abstract!3974) (Class!3974) (Val!3974) (DelimiterValue!7948 (del!4034 List!21614)) (KeywordValue!3980 (value!120949 List!21614)) (CommentValue!7948 (value!120950 List!21614)) (WhitespaceValue!7948 (value!120951 List!21614)) (IndentationValue!3974 (value!120952 List!21614)) (String!24987) (Int32!3974) (Broken!19871 (value!120953 List!21614)) (Boolean!3975) (Unit!35891) (OperatorValue!3977 (op!4034 List!21614)) (IdentifierValue!7948 (value!120954 List!21614)) (IdentifierValue!7949 (value!120955 List!21614)) (WhitespaceValue!7949 (value!120956 List!21614)) (True!7948) (False!7948) (Broken!19872 (value!120957 List!21614)) (Broken!19873 (value!120958 List!21614)) (True!7949) (RightBrace!3974) (RightBracket!3974) (Colon!3974) (Null!3974) (Comma!3974) (LeftBracket!3974) (False!7949) (LeftBrace!3974) (ImaginaryLiteralValue!3974 (text!28264 List!21614)) (StringLiteralValue!11922 (value!120959 List!21614)) (EOFValue!3974 (value!120960 List!21614)) (IdentValue!3974 (value!120961 List!21614)) (DelimiterValue!7949 (value!120962 List!21614)) (DedentValue!3974 (value!120963 List!21614)) (NewLineValue!3974 (value!120964 List!21614)) (IntegerValue!11922 (value!120965 (_ BitVec 32)) (text!28265 List!21614)) (IntegerValue!11923 (value!120966 Int) (text!28266 List!21614)) (Times!3974) (Or!3974) (Equal!3974) (Minus!3974) (Broken!19874 (value!120967 List!21614)) (And!3974) (Div!3974) (LessEqual!3974) (Mod!3974) (Concat!9237) (Not!3974) (Plus!3974) (SpaceValue!3974 (value!120968 List!21614)) (IntegerValue!11924 (value!120969 Int) (text!28267 List!21614)) (StringLiteralValue!11923 (text!28268 List!21614)) (FloatLiteralValue!7949 (text!28269 List!21614)) (BytesLiteralValue!3974 (value!120970 List!21614)) (CommentValue!7949 (value!120971 List!21614)) (StringLiteralValue!11924 (value!120972 List!21614)) (ErrorTokenValue!3974 (msg!4035 List!21614)) )
))
(declare-datatypes ((String!24988 0))(
  ( (String!24989 (value!120973 String)) )
))
(declare-datatypes ((C!10672 0))(
  ( (C!10673 (val!6288 Int)) )
))
(declare-datatypes ((List!21615 0))(
  ( (Nil!21533) (Cons!21533 (h!26934 C!10672) (t!178072 List!21615)) )
))
(declare-datatypes ((Regex!5263 0))(
  ( (ElementMatch!5263 (c!311280 C!10672)) (Concat!9238 (regOne!11038 Regex!5263) (regTwo!11038 Regex!5263)) (EmptyExpr!5263) (Star!5263 (reg!5592 Regex!5263)) (EmptyLang!5263) (Union!5263 (regOne!11039 Regex!5263) (regTwo!11039 Regex!5263)) )
))
(declare-datatypes ((IArray!14341 0))(
  ( (IArray!14342 (innerList!7228 List!21615)) )
))
(declare-datatypes ((Conc!7168 0))(
  ( (Node!7168 (left!17209 Conc!7168) (right!17539 Conc!7168) (csize!14566 Int) (cheight!7379 Int)) (Leaf!10550 (xs!10062 IArray!14341) (csize!14567 Int)) (Empty!7168) )
))
(declare-datatypes ((BalanceConc!14152 0))(
  ( (BalanceConc!14153 (c!311281 Conc!7168)) )
))
(declare-datatypes ((TokenValueInjection!7532 0))(
  ( (TokenValueInjection!7533 (toValue!5467 Int) (toChars!5326 Int)) )
))
(declare-datatypes ((Rule!7476 0))(
  ( (Rule!7477 (regex!3838 Regex!5263) (tag!4272 String!24988) (isSeparator!3838 Bool) (transformation!3838 TokenValueInjection!7532)) )
))
(declare-datatypes ((Token!7228 0))(
  ( (Token!7229 (value!120974 TokenValue!3974) (rule!6037 Rule!7476) (size!16966 Int) (originalCharacters!4645 List!21615)) )
))
(declare-fun separatorToken!354 () Token!7228)

(declare-fun e!1220432 () Bool)

(declare-fun inv!28639 (Token!7228) Bool)

(assert (=> start!191648 (and (inv!28639 separatorToken!354) e!1220432)))

(declare-fun b!1910550 () Bool)

(declare-fun e!1220423 () Bool)

(declare-fun lt!730784 () Rule!7476)

(assert (=> b!1910550 (= e!1220423 (= (rule!6037 separatorToken!354) lt!730784))))

(declare-fun e!1220422 () Bool)

(declare-fun tp!545370 () Bool)

(declare-fun e!1220429 () Bool)

(declare-fun b!1910551 () Bool)

(declare-datatypes ((List!21616 0))(
  ( (Nil!21534) (Cons!21534 (h!26935 Token!7228) (t!178073 List!21616)) )
))
(declare-fun tokens!598 () List!21616)

(declare-fun inv!21 (TokenValue!3974) Bool)

(assert (=> b!1910551 (= e!1220422 (and (inv!21 (value!120974 (h!26935 tokens!598))) e!1220429 tp!545370))))

(declare-fun b!1910552 () Bool)

(declare-fun e!1220434 () Bool)

(declare-fun e!1220433 () Bool)

(assert (=> b!1910552 (= e!1220434 e!1220433)))

(declare-fun res!853148 () Bool)

(assert (=> b!1910552 (=> (not res!853148) (not e!1220433))))

(declare-fun lt!730772 () Rule!7476)

(declare-fun lt!730764 () List!21615)

(declare-fun matchR!2549 (Regex!5263 List!21615) Bool)

(assert (=> b!1910552 (= res!853148 (matchR!2549 (regex!3838 lt!730772) lt!730764))))

(declare-datatypes ((Option!4381 0))(
  ( (None!4380) (Some!4380 (v!26431 Rule!7476)) )
))
(declare-fun lt!730776 () Option!4381)

(declare-fun get!6707 (Option!4381) Rule!7476)

(assert (=> b!1910552 (= lt!730772 (get!6707 lt!730776))))

(declare-fun b!1910553 () Bool)

(declare-fun res!853140 () Bool)

(declare-fun e!1220438 () Bool)

(assert (=> b!1910553 (=> res!853140 e!1220438)))

(declare-datatypes ((List!21617 0))(
  ( (Nil!21535) (Cons!21535 (h!26936 Rule!7476) (t!178074 List!21617)) )
))
(declare-fun rules!3198 () List!21617)

(declare-fun rulesProduceIndividualToken!1623 (LexerInterface!3451 List!21617 Token!7228) Bool)

(assert (=> b!1910553 (= res!853140 (not (rulesProduceIndividualToken!1623 thiss!23328 rules!3198 (h!26935 tokens!598))))))

(declare-fun tp!545373 () Bool)

(declare-fun e!1220437 () Bool)

(declare-fun e!1220436 () Bool)

(declare-fun b!1910554 () Bool)

(declare-fun inv!28636 (String!24988) Bool)

(declare-fun inv!28640 (TokenValueInjection!7532) Bool)

(assert (=> b!1910554 (= e!1220436 (and tp!545373 (inv!28636 (tag!4272 (rule!6037 separatorToken!354))) (inv!28640 (transformation!3838 (rule!6037 separatorToken!354))) e!1220437))))

(declare-fun b!1910555 () Bool)

(declare-fun res!853136 () Bool)

(assert (=> b!1910555 (=> (not res!853136) (not e!1220444))))

(assert (=> b!1910555 (= res!853136 (isSeparator!3838 (rule!6037 separatorToken!354)))))

(declare-fun b!1910556 () Bool)

(declare-fun res!853147 () Bool)

(assert (=> b!1910556 (=> (not res!853147) (not e!1220444))))

(declare-fun rulesInvariant!3058 (LexerInterface!3451 List!21617) Bool)

(assert (=> b!1910556 (= res!853147 (rulesInvariant!3058 thiss!23328 rules!3198))))

(declare-fun b!1910557 () Bool)

(declare-fun res!853137 () Bool)

(assert (=> b!1910557 (=> (not res!853137) (not e!1220444))))

(assert (=> b!1910557 (= res!853137 (rulesProduceIndividualToken!1623 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1910558 () Bool)

(declare-fun res!853141 () Bool)

(assert (=> b!1910558 (=> (not res!853141) (not e!1220444))))

(declare-fun sepAndNonSepRulesDisjointChars!936 (List!21617 List!21617) Bool)

(assert (=> b!1910558 (= res!853141 (sepAndNonSepRulesDisjointChars!936 rules!3198 rules!3198))))

(declare-fun b!1910559 () Bool)

(declare-fun res!853142 () Bool)

(assert (=> b!1910559 (=> (not res!853142) (not e!1220444))))

(declare-fun lambda!74611 () Int)

(declare-fun forall!4528 (List!21616 Int) Bool)

(assert (=> b!1910559 (= res!853142 (forall!4528 tokens!598 lambda!74611))))

(declare-fun b!1910560 () Bool)

(declare-fun e!1220427 () Bool)

(assert (=> b!1910560 (= e!1220427 e!1220423)))

(declare-fun res!853133 () Bool)

(assert (=> b!1910560 (=> (not res!853133) (not e!1220423))))

(declare-fun lt!730763 () List!21615)

(assert (=> b!1910560 (= res!853133 (matchR!2549 (regex!3838 lt!730784) lt!730763))))

(declare-fun lt!730770 () Option!4381)

(assert (=> b!1910560 (= lt!730784 (get!6707 lt!730770))))

(declare-fun b!1910561 () Bool)

(assert (=> b!1910561 (= e!1220438 true)))

(declare-fun lt!730781 () Bool)

(declare-datatypes ((IArray!14343 0))(
  ( (IArray!14344 (innerList!7229 List!21616)) )
))
(declare-datatypes ((Conc!7169 0))(
  ( (Node!7169 (left!17210 Conc!7169) (right!17540 Conc!7169) (csize!14568 Int) (cheight!7380 Int)) (Leaf!10551 (xs!10063 IArray!14343) (csize!14569 Int)) (Empty!7169) )
))
(declare-datatypes ((BalanceConc!14154 0))(
  ( (BalanceConc!14155 (c!311282 Conc!7169)) )
))
(declare-fun isEmpty!13217 (BalanceConc!14154) Bool)

(declare-datatypes ((tuple2!20258 0))(
  ( (tuple2!20259 (_1!11598 BalanceConc!14154) (_2!11598 BalanceConc!14152)) )
))
(declare-fun lex!1526 (LexerInterface!3451 List!21617 BalanceConc!14152) tuple2!20258)

(declare-fun seqFromList!2710 (List!21615) BalanceConc!14152)

(assert (=> b!1910561 (= lt!730781 (isEmpty!13217 (_1!11598 (lex!1526 thiss!23328 rules!3198 (seqFromList!2710 lt!730764)))))))

(assert (=> b!1910562 (= e!1220437 (and tp!545374 tp!545375))))

(declare-fun tp!545380 () Bool)

(declare-fun b!1910563 () Bool)

(assert (=> b!1910563 (= e!1220432 (and (inv!21 (value!120974 separatorToken!354)) e!1220436 tp!545380))))

(declare-fun b!1910564 () Bool)

(declare-datatypes ((Unit!35892 0))(
  ( (Unit!35893) )
))
(declare-fun e!1220428 () Unit!35892)

(declare-fun Unit!35894 () Unit!35892)

(assert (=> b!1910564 (= e!1220428 Unit!35894)))

(declare-fun b!1910565 () Bool)

(declare-fun tp!545371 () Bool)

(assert (=> b!1910565 (= e!1220425 (and (inv!28639 (h!26935 tokens!598)) e!1220422 tp!545371))))

(declare-fun b!1910566 () Bool)

(declare-fun res!853150 () Bool)

(assert (=> b!1910566 (=> (not res!853150) (not e!1220444))))

(declare-fun rulesProduceEachTokenIndividuallyList!1182 (LexerInterface!3451 List!21617 List!21616) Bool)

(assert (=> b!1910566 (= res!853150 (rulesProduceEachTokenIndividuallyList!1182 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1910567 () Bool)

(declare-fun Unit!35895 () Unit!35892)

(assert (=> b!1910567 (= e!1220428 Unit!35895)))

(declare-fun lt!730780 () Unit!35892)

(declare-fun lt!730774 () C!10672)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!246 (Regex!5263 List!21615 C!10672) Unit!35892)

(assert (=> b!1910567 (= lt!730780 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!246 (regex!3838 (rule!6037 separatorToken!354)) lt!730763 lt!730774))))

(declare-fun res!853149 () Bool)

(assert (=> b!1910567 (= res!853149 (not (matchR!2549 (regex!3838 (rule!6037 separatorToken!354)) lt!730763)))))

(assert (=> b!1910567 (=> (not res!853149) (not e!1220439))))

(assert (=> b!1910567 e!1220439))

(declare-fun tp!545376 () Bool)

(declare-fun e!1220435 () Bool)

(declare-fun b!1910568 () Bool)

(assert (=> b!1910568 (= e!1220429 (and tp!545376 (inv!28636 (tag!4272 (rule!6037 (h!26935 tokens!598)))) (inv!28640 (transformation!3838 (rule!6037 (h!26935 tokens!598)))) e!1220435))))

(declare-fun b!1910569 () Bool)

(declare-fun e!1220443 () Bool)

(assert (=> b!1910569 (= e!1220444 (not e!1220443))))

(declare-fun res!853139 () Bool)

(assert (=> b!1910569 (=> res!853139 e!1220443)))

(declare-datatypes ((tuple2!20260 0))(
  ( (tuple2!20261 (_1!11599 Token!7228) (_2!11599 List!21615)) )
))
(declare-datatypes ((Option!4382 0))(
  ( (None!4381) (Some!4381 (v!26432 tuple2!20260)) )
))
(declare-fun lt!730762 () Option!4382)

(declare-fun lt!730783 () Bool)

(assert (=> b!1910569 (= res!853139 (or (and (not lt!730783) (= (_1!11599 (v!26432 lt!730762)) (h!26935 tokens!598))) lt!730783 (= (_1!11599 (v!26432 lt!730762)) (h!26935 tokens!598))))))

(assert (=> b!1910569 (= lt!730783 (not ((_ is Some!4381) lt!730762)))))

(declare-fun lt!730775 () List!21615)

(declare-fun maxPrefix!1897 (LexerInterface!3451 List!21617 List!21615) Option!4382)

(declare-fun ++!5787 (List!21615 List!21615) List!21615)

(assert (=> b!1910569 (= lt!730762 (maxPrefix!1897 thiss!23328 rules!3198 (++!5787 lt!730764 lt!730775)))))

(declare-fun printWithSeparatorTokenWhenNeededList!494 (LexerInterface!3451 List!21617 List!21616 Token!7228) List!21615)

(assert (=> b!1910569 (= lt!730775 (printWithSeparatorTokenWhenNeededList!494 thiss!23328 rules!3198 (t!178073 tokens!598) separatorToken!354))))

(assert (=> b!1910569 e!1220434))

(declare-fun res!853145 () Bool)

(assert (=> b!1910569 (=> (not res!853145) (not e!1220434))))

(declare-fun isDefined!3679 (Option!4381) Bool)

(assert (=> b!1910569 (= res!853145 (isDefined!3679 lt!730776))))

(declare-fun getRuleFromTag!681 (LexerInterface!3451 List!21617 String!24988) Option!4381)

(assert (=> b!1910569 (= lt!730776 (getRuleFromTag!681 thiss!23328 rules!3198 (tag!4272 (rule!6037 (h!26935 tokens!598)))))))

(declare-fun lt!730767 () Unit!35892)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!681 (LexerInterface!3451 List!21617 List!21615 Token!7228) Unit!35892)

(assert (=> b!1910569 (= lt!730767 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!681 thiss!23328 rules!3198 lt!730764 (h!26935 tokens!598)))))

(declare-fun e!1220421 () Bool)

(assert (=> b!1910569 e!1220421))

(declare-fun res!853138 () Bool)

(assert (=> b!1910569 (=> (not res!853138) (not e!1220421))))

(declare-fun lt!730761 () Option!4382)

(declare-fun isDefined!3680 (Option!4382) Bool)

(assert (=> b!1910569 (= res!853138 (isDefined!3680 lt!730761))))

(assert (=> b!1910569 (= lt!730761 (maxPrefix!1897 thiss!23328 rules!3198 lt!730764))))

(declare-fun lt!730782 () BalanceConc!14152)

(declare-fun list!8758 (BalanceConc!14152) List!21615)

(assert (=> b!1910569 (= lt!730764 (list!8758 lt!730782))))

(assert (=> b!1910569 e!1220427))

(declare-fun res!853143 () Bool)

(assert (=> b!1910569 (=> (not res!853143) (not e!1220427))))

(assert (=> b!1910569 (= res!853143 (isDefined!3679 lt!730770))))

(assert (=> b!1910569 (= lt!730770 (getRuleFromTag!681 thiss!23328 rules!3198 (tag!4272 (rule!6037 separatorToken!354))))))

(declare-fun lt!730773 () Unit!35892)

(assert (=> b!1910569 (= lt!730773 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!681 thiss!23328 rules!3198 lt!730763 separatorToken!354))))

(declare-fun charsOf!2394 (Token!7228) BalanceConc!14152)

(assert (=> b!1910569 (= lt!730763 (list!8758 (charsOf!2394 separatorToken!354)))))

(declare-fun lt!730768 () Unit!35892)

(declare-fun lemmaEqSameImage!546 (TokenValueInjection!7532 BalanceConc!14152 BalanceConc!14152) Unit!35892)

(assert (=> b!1910569 (= lt!730768 (lemmaEqSameImage!546 (transformation!3838 (rule!6037 (h!26935 tokens!598))) lt!730782 (seqFromList!2710 (originalCharacters!4645 (h!26935 tokens!598)))))))

(declare-fun lt!730779 () Unit!35892)

(declare-fun lemmaSemiInverse!817 (TokenValueInjection!7532 BalanceConc!14152) Unit!35892)

(assert (=> b!1910569 (= lt!730779 (lemmaSemiInverse!817 (transformation!3838 (rule!6037 (h!26935 tokens!598))) lt!730782))))

(assert (=> b!1910569 (= lt!730782 (charsOf!2394 (h!26935 tokens!598)))))

(declare-fun b!1910570 () Bool)

(assert (=> b!1910570 (= e!1220443 e!1220438)))

(declare-fun res!853135 () Bool)

(assert (=> b!1910570 (=> res!853135 e!1220438)))

(declare-fun lt!730778 () List!21615)

(declare-fun lt!730769 () List!21615)

(assert (=> b!1910570 (= res!853135 (or (not (= lt!730769 lt!730778)) (not (= lt!730778 lt!730764)) (not (= lt!730769 lt!730764))))))

(declare-fun printList!1034 (LexerInterface!3451 List!21616) List!21615)

(assert (=> b!1910570 (= lt!730778 (printList!1034 thiss!23328 (Cons!21534 (h!26935 tokens!598) Nil!21534)))))

(declare-fun lt!730771 () BalanceConc!14152)

(assert (=> b!1910570 (= lt!730769 (list!8758 lt!730771))))

(declare-fun lt!730760 () BalanceConc!14154)

(declare-fun printTailRec!968 (LexerInterface!3451 BalanceConc!14154 Int BalanceConc!14152) BalanceConc!14152)

(assert (=> b!1910570 (= lt!730771 (printTailRec!968 thiss!23328 lt!730760 0 (BalanceConc!14153 Empty!7168)))))

(declare-fun print!1461 (LexerInterface!3451 BalanceConc!14154) BalanceConc!14152)

(assert (=> b!1910570 (= lt!730771 (print!1461 thiss!23328 lt!730760))))

(declare-fun singletonSeq!1861 (Token!7228) BalanceConc!14154)

(assert (=> b!1910570 (= lt!730760 (singletonSeq!1861 (h!26935 tokens!598)))))

(declare-fun contains!3883 (List!21615 C!10672) Bool)

(declare-fun usedCharacters!346 (Regex!5263) List!21615)

(assert (=> b!1910570 (not (contains!3883 (usedCharacters!346 (regex!3838 (rule!6037 (h!26935 tokens!598)))) lt!730774))))

(declare-fun lt!730765 () Unit!35892)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!42 (LexerInterface!3451 List!21617 List!21617 Rule!7476 Rule!7476 C!10672) Unit!35892)

(assert (=> b!1910570 (= lt!730765 (lemmaNonSepRuleNotContainsCharContainedInASepRule!42 thiss!23328 rules!3198 rules!3198 (rule!6037 (h!26935 tokens!598)) (rule!6037 separatorToken!354) lt!730774))))

(declare-fun lt!730777 () Unit!35892)

(assert (=> b!1910570 (= lt!730777 e!1220428)))

(declare-fun c!311279 () Bool)

(assert (=> b!1910570 (= c!311279 (not (contains!3883 (usedCharacters!346 (regex!3838 (rule!6037 separatorToken!354))) lt!730774)))))

(declare-fun head!4442 (List!21615) C!10672)

(assert (=> b!1910570 (= lt!730774 (head!4442 lt!730763))))

(assert (=> b!1910570 (= (++!5787 (++!5787 lt!730764 lt!730763) lt!730775) (++!5787 lt!730764 (++!5787 lt!730763 lt!730775)))))

(declare-fun lt!730766 () Unit!35892)

(declare-fun lemmaConcatAssociativity!1153 (List!21615 List!21615 List!21615) Unit!35892)

(assert (=> b!1910570 (= lt!730766 (lemmaConcatAssociativity!1153 lt!730764 lt!730763 lt!730775))))

(declare-fun b!1910571 () Bool)

(declare-fun res!853144 () Bool)

(assert (=> b!1910571 (=> (not res!853144) (not e!1220444))))

(declare-fun isEmpty!13218 (List!21617) Bool)

(assert (=> b!1910571 (= res!853144 (not (isEmpty!13218 rules!3198)))))

(declare-fun e!1220430 () Bool)

(assert (=> b!1910572 (= e!1220430 (and tp!545377 tp!545379))))

(declare-fun b!1910573 () Bool)

(declare-fun e!1220442 () Bool)

(declare-fun tp!545381 () Bool)

(assert (=> b!1910573 (= e!1220431 (and e!1220442 tp!545381))))

(assert (=> b!1910574 (= e!1220435 (and tp!545378 tp!545382))))

(declare-fun b!1910575 () Bool)

(declare-fun get!6708 (Option!4382) tuple2!20260)

(assert (=> b!1910575 (= e!1220421 (= (_1!11599 (get!6708 lt!730761)) (h!26935 tokens!598)))))

(declare-fun b!1910576 () Bool)

(declare-fun res!853146 () Bool)

(assert (=> b!1910576 (=> (not res!853146) (not e!1220444))))

(assert (=> b!1910576 (= res!853146 ((_ is Cons!21534) tokens!598))))

(declare-fun b!1910577 () Bool)

(assert (=> b!1910577 (= e!1220433 (= (rule!6037 (h!26935 tokens!598)) lt!730772))))

(declare-fun tp!545372 () Bool)

(declare-fun b!1910578 () Bool)

(assert (=> b!1910578 (= e!1220442 (and tp!545372 (inv!28636 (tag!4272 (h!26936 rules!3198))) (inv!28640 (transformation!3838 (h!26936 rules!3198))) e!1220430))))

(assert (= (and start!191648 res!853134) b!1910571))

(assert (= (and b!1910571 res!853144) b!1910556))

(assert (= (and b!1910556 res!853147) b!1910566))

(assert (= (and b!1910566 res!853150) b!1910557))

(assert (= (and b!1910557 res!853137) b!1910555))

(assert (= (and b!1910555 res!853136) b!1910559))

(assert (= (and b!1910559 res!853142) b!1910558))

(assert (= (and b!1910558 res!853141) b!1910576))

(assert (= (and b!1910576 res!853146) b!1910569))

(assert (= (and b!1910569 res!853143) b!1910560))

(assert (= (and b!1910560 res!853133) b!1910550))

(assert (= (and b!1910569 res!853138) b!1910575))

(assert (= (and b!1910569 res!853145) b!1910552))

(assert (= (and b!1910552 res!853148) b!1910577))

(assert (= (and b!1910569 (not res!853139)) b!1910570))

(assert (= (and b!1910570 c!311279) b!1910567))

(assert (= (and b!1910570 (not c!311279)) b!1910564))

(assert (= (and b!1910567 res!853149) b!1910549))

(assert (= (and b!1910570 (not res!853135)) b!1910553))

(assert (= (and b!1910553 (not res!853140)) b!1910561))

(assert (= b!1910578 b!1910572))

(assert (= b!1910573 b!1910578))

(assert (= (and start!191648 ((_ is Cons!21535) rules!3198)) b!1910573))

(assert (= b!1910568 b!1910574))

(assert (= b!1910551 b!1910568))

(assert (= b!1910565 b!1910551))

(assert (= (and start!191648 ((_ is Cons!21534) tokens!598)) b!1910565))

(assert (= b!1910554 b!1910562))

(assert (= b!1910563 b!1910554))

(assert (= start!191648 b!1910563))

(declare-fun m!2344193 () Bool)

(assert (=> b!1910552 m!2344193))

(declare-fun m!2344195 () Bool)

(assert (=> b!1910552 m!2344195))

(declare-fun m!2344197 () Bool)

(assert (=> b!1910567 m!2344197))

(declare-fun m!2344199 () Bool)

(assert (=> b!1910567 m!2344199))

(declare-fun m!2344201 () Bool)

(assert (=> b!1910563 m!2344201))

(declare-fun m!2344203 () Bool)

(assert (=> b!1910554 m!2344203))

(declare-fun m!2344205 () Bool)

(assert (=> b!1910554 m!2344205))

(declare-fun m!2344207 () Bool)

(assert (=> b!1910557 m!2344207))

(declare-fun m!2344209 () Bool)

(assert (=> b!1910565 m!2344209))

(declare-fun m!2344211 () Bool)

(assert (=> b!1910570 m!2344211))

(declare-fun m!2344213 () Bool)

(assert (=> b!1910570 m!2344213))

(declare-fun m!2344215 () Bool)

(assert (=> b!1910570 m!2344215))

(declare-fun m!2344217 () Bool)

(assert (=> b!1910570 m!2344217))

(declare-fun m!2344219 () Bool)

(assert (=> b!1910570 m!2344219))

(declare-fun m!2344221 () Bool)

(assert (=> b!1910570 m!2344221))

(assert (=> b!1910570 m!2344217))

(declare-fun m!2344223 () Bool)

(assert (=> b!1910570 m!2344223))

(declare-fun m!2344225 () Bool)

(assert (=> b!1910570 m!2344225))

(declare-fun m!2344227 () Bool)

(assert (=> b!1910570 m!2344227))

(assert (=> b!1910570 m!2344227))

(declare-fun m!2344229 () Bool)

(assert (=> b!1910570 m!2344229))

(declare-fun m!2344231 () Bool)

(assert (=> b!1910570 m!2344231))

(declare-fun m!2344233 () Bool)

(assert (=> b!1910570 m!2344233))

(declare-fun m!2344235 () Bool)

(assert (=> b!1910570 m!2344235))

(declare-fun m!2344237 () Bool)

(assert (=> b!1910570 m!2344237))

(assert (=> b!1910570 m!2344211))

(assert (=> b!1910570 m!2344219))

(declare-fun m!2344239 () Bool)

(assert (=> b!1910570 m!2344239))

(declare-fun m!2344241 () Bool)

(assert (=> b!1910570 m!2344241))

(declare-fun m!2344243 () Bool)

(assert (=> b!1910558 m!2344243))

(declare-fun m!2344245 () Bool)

(assert (=> b!1910551 m!2344245))

(declare-fun m!2344247 () Bool)

(assert (=> b!1910566 m!2344247))

(declare-fun m!2344249 () Bool)

(assert (=> b!1910553 m!2344249))

(declare-fun m!2344251 () Bool)

(assert (=> b!1910568 m!2344251))

(declare-fun m!2344253 () Bool)

(assert (=> b!1910568 m!2344253))

(declare-fun m!2344255 () Bool)

(assert (=> b!1910569 m!2344255))

(declare-fun m!2344257 () Bool)

(assert (=> b!1910569 m!2344257))

(declare-fun m!2344259 () Bool)

(assert (=> b!1910569 m!2344259))

(declare-fun m!2344261 () Bool)

(assert (=> b!1910569 m!2344261))

(declare-fun m!2344263 () Bool)

(assert (=> b!1910569 m!2344263))

(declare-fun m!2344265 () Bool)

(assert (=> b!1910569 m!2344265))

(declare-fun m!2344267 () Bool)

(assert (=> b!1910569 m!2344267))

(declare-fun m!2344269 () Bool)

(assert (=> b!1910569 m!2344269))

(assert (=> b!1910569 m!2344259))

(declare-fun m!2344271 () Bool)

(assert (=> b!1910569 m!2344271))

(declare-fun m!2344273 () Bool)

(assert (=> b!1910569 m!2344273))

(declare-fun m!2344275 () Bool)

(assert (=> b!1910569 m!2344275))

(declare-fun m!2344277 () Bool)

(assert (=> b!1910569 m!2344277))

(declare-fun m!2344279 () Bool)

(assert (=> b!1910569 m!2344279))

(declare-fun m!2344281 () Bool)

(assert (=> b!1910569 m!2344281))

(declare-fun m!2344283 () Bool)

(assert (=> b!1910569 m!2344283))

(assert (=> b!1910569 m!2344255))

(declare-fun m!2344285 () Bool)

(assert (=> b!1910569 m!2344285))

(declare-fun m!2344287 () Bool)

(assert (=> b!1910569 m!2344287))

(assert (=> b!1910569 m!2344283))

(declare-fun m!2344289 () Bool)

(assert (=> b!1910569 m!2344289))

(declare-fun m!2344291 () Bool)

(assert (=> b!1910556 m!2344291))

(declare-fun m!2344293 () Bool)

(assert (=> b!1910575 m!2344293))

(declare-fun m!2344295 () Bool)

(assert (=> b!1910561 m!2344295))

(assert (=> b!1910561 m!2344295))

(declare-fun m!2344297 () Bool)

(assert (=> b!1910561 m!2344297))

(declare-fun m!2344299 () Bool)

(assert (=> b!1910561 m!2344299))

(declare-fun m!2344301 () Bool)

(assert (=> b!1910560 m!2344301))

(declare-fun m!2344303 () Bool)

(assert (=> b!1910560 m!2344303))

(declare-fun m!2344305 () Bool)

(assert (=> b!1910578 m!2344305))

(declare-fun m!2344307 () Bool)

(assert (=> b!1910578 m!2344307))

(declare-fun m!2344309 () Bool)

(assert (=> start!191648 m!2344309))

(declare-fun m!2344311 () Bool)

(assert (=> b!1910559 m!2344311))

(declare-fun m!2344313 () Bool)

(assert (=> b!1910571 m!2344313))

(check-sat (not b!1910559) b_and!148823 (not b!1910563) (not b!1910566) (not b!1910571) (not b!1910575) (not b_next!54613) (not b!1910565) (not b!1910552) (not b!1910561) (not b!1910570) (not b_next!54619) b_and!148829 (not b!1910556) b_and!148831 (not b!1910554) (not b!1910567) (not start!191648) (not b!1910560) (not b!1910553) (not b!1910569) b_and!148825 (not b_next!54615) (not b_next!54609) (not b!1910558) (not b!1910578) b_and!148833 (not b!1910573) (not b_next!54617) (not b_next!54611) (not b!1910557) b_and!148827 (not b!1910568) (not b!1910551))
(check-sat b_and!148829 b_and!148831 b_and!148823 (not b_next!54613) (not b_next!54609) b_and!148833 b_and!148827 (not b_next!54619) b_and!148825 (not b_next!54615) (not b_next!54617) (not b_next!54611))
