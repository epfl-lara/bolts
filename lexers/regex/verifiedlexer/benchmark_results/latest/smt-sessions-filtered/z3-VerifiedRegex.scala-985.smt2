; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49524 () Bool)

(assert start!49524)

(declare-fun b!536489 () Bool)

(declare-fun b_free!14681 () Bool)

(declare-fun b_next!14697 () Bool)

(assert (=> b!536489 (= b_free!14681 (not b_next!14697))))

(declare-fun tp!171174 () Bool)

(declare-fun b_and!52475 () Bool)

(assert (=> b!536489 (= tp!171174 b_and!52475)))

(declare-fun b_free!14683 () Bool)

(declare-fun b_next!14699 () Bool)

(assert (=> b!536489 (= b_free!14683 (not b_next!14699))))

(declare-fun tp!171171 () Bool)

(declare-fun b_and!52477 () Bool)

(assert (=> b!536489 (= tp!171171 b_and!52477)))

(declare-fun b!536494 () Bool)

(declare-fun b_free!14685 () Bool)

(declare-fun b_next!14701 () Bool)

(assert (=> b!536494 (= b_free!14685 (not b_next!14701))))

(declare-fun tp!171177 () Bool)

(declare-fun b_and!52479 () Bool)

(assert (=> b!536494 (= tp!171177 b_and!52479)))

(declare-fun b_free!14687 () Bool)

(declare-fun b_next!14703 () Bool)

(assert (=> b!536494 (= b_free!14687 (not b_next!14703))))

(declare-fun tp!171175 () Bool)

(declare-fun b_and!52481 () Bool)

(assert (=> b!536494 (= tp!171175 b_and!52481)))

(declare-datatypes ((C!3504 0))(
  ( (C!3505 (val!1978 Int)) )
))
(declare-datatypes ((List!5207 0))(
  ( (Nil!5197) (Cons!5197 (h!10598 C!3504) (t!74160 List!5207)) )
))
(declare-fun lt!221913 () List!5207)

(declare-fun lt!221928 () List!5207)

(declare-datatypes ((Regex!1291 0))(
  ( (ElementMatch!1291 (c!102024 C!3504)) (Concat!2272 (regOne!3094 Regex!1291) (regTwo!3094 Regex!1291)) (EmptyExpr!1291) (Star!1291 (reg!1620 Regex!1291)) (EmptyLang!1291) (Union!1291 (regOne!3095 Regex!1291) (regTwo!3095 Regex!1291)) )
))
(declare-datatypes ((List!5208 0))(
  ( (Nil!5198) (Cons!5198 (h!10599 (_ BitVec 16)) (t!74161 List!5208)) )
))
(declare-datatypes ((IArray!3349 0))(
  ( (IArray!3350 (innerList!1732 List!5207)) )
))
(declare-datatypes ((String!6648 0))(
  ( (String!6649 (value!32115 String)) )
))
(declare-datatypes ((Conc!1674 0))(
  ( (Node!1674 (left!4353 Conc!1674) (right!4683 Conc!1674) (csize!3578 Int) (cheight!1885 Int)) (Leaf!2660 (xs!4311 IArray!3349) (csize!3579 Int)) (Empty!1674) )
))
(declare-datatypes ((BalanceConc!3356 0))(
  ( (BalanceConc!3357 (c!102025 Conc!1674)) )
))
(declare-datatypes ((TokenValue!981 0))(
  ( (FloatLiteralValue!1962 (text!7312 List!5208)) (TokenValueExt!980 (__x!3860 Int)) (Broken!4905 (value!32116 List!5208)) (Object!990) (End!981) (Def!981) (Underscore!981) (Match!981) (Else!981) (Error!981) (Case!981) (If!981) (Extends!981) (Abstract!981) (Class!981) (Val!981) (DelimiterValue!1962 (del!1041 List!5208)) (KeywordValue!987 (value!32117 List!5208)) (CommentValue!1962 (value!32118 List!5208)) (WhitespaceValue!1962 (value!32119 List!5208)) (IndentationValue!981 (value!32120 List!5208)) (String!6650) (Int32!981) (Broken!4906 (value!32121 List!5208)) (Boolean!982) (Unit!9076) (OperatorValue!984 (op!1041 List!5208)) (IdentifierValue!1962 (value!32122 List!5208)) (IdentifierValue!1963 (value!32123 List!5208)) (WhitespaceValue!1963 (value!32124 List!5208)) (True!1962) (False!1962) (Broken!4907 (value!32125 List!5208)) (Broken!4908 (value!32126 List!5208)) (True!1963) (RightBrace!981) (RightBracket!981) (Colon!981) (Null!981) (Comma!981) (LeftBracket!981) (False!1963) (LeftBrace!981) (ImaginaryLiteralValue!981 (text!7313 List!5208)) (StringLiteralValue!2943 (value!32127 List!5208)) (EOFValue!981 (value!32128 List!5208)) (IdentValue!981 (value!32129 List!5208)) (DelimiterValue!1963 (value!32130 List!5208)) (DedentValue!981 (value!32131 List!5208)) (NewLineValue!981 (value!32132 List!5208)) (IntegerValue!2943 (value!32133 (_ BitVec 32)) (text!7314 List!5208)) (IntegerValue!2944 (value!32134 Int) (text!7315 List!5208)) (Times!981) (Or!981) (Equal!981) (Minus!981) (Broken!4909 (value!32135 List!5208)) (And!981) (Div!981) (LessEqual!981) (Mod!981) (Concat!2273) (Not!981) (Plus!981) (SpaceValue!981 (value!32136 List!5208)) (IntegerValue!2945 (value!32137 Int) (text!7316 List!5208)) (StringLiteralValue!2944 (text!7317 List!5208)) (FloatLiteralValue!1963 (text!7318 List!5208)) (BytesLiteralValue!981 (value!32138 List!5208)) (CommentValue!1963 (value!32139 List!5208)) (StringLiteralValue!2945 (value!32140 List!5208)) (ErrorTokenValue!981 (msg!1042 List!5208)) )
))
(declare-datatypes ((TokenValueInjection!1730 0))(
  ( (TokenValueInjection!1731 (toValue!1804 Int) (toChars!1663 Int)) )
))
(declare-datatypes ((Rule!1714 0))(
  ( (Rule!1715 (regex!957 Regex!1291) (tag!1219 String!6648) (isSeparator!957 Bool) (transformation!957 TokenValueInjection!1730)) )
))
(declare-datatypes ((Token!1650 0))(
  ( (Token!1651 (value!32141 TokenValue!981) (rule!1661 Rule!1714) (size!4186 Int) (originalCharacters!996 List!5207)) )
))
(declare-datatypes ((tuple2!6276 0))(
  ( (tuple2!6277 (_1!3402 Token!1650) (_2!3402 List!5207)) )
))
(declare-datatypes ((Option!1307 0))(
  ( (None!1306) (Some!1306 (v!16113 tuple2!6276)) )
))
(declare-fun lt!221931 () Option!1307)

(declare-fun lt!221929 () TokenValue!981)

(declare-fun b!536481 () Bool)

(declare-fun lt!221930 () Int)

(declare-fun e!323556 () Bool)

(assert (=> b!536481 (= e!323556 (and (= (size!4186 (_1!3402 (v!16113 lt!221931))) lt!221930) (= (originalCharacters!996 (_1!3402 (v!16113 lt!221931))) lt!221913) (= (v!16113 lt!221931) (tuple2!6277 (Token!1651 lt!221929 (rule!1661 (_1!3402 (v!16113 lt!221931))) lt!221930 lt!221913) lt!221928))))))

(declare-fun b!536482 () Bool)

(declare-fun res!227114 () Bool)

(declare-fun e!323555 () Bool)

(assert (=> b!536482 (=> (not res!227114) (not e!323555))))

(declare-fun input!2705 () List!5207)

(declare-fun isEmpty!3758 (List!5207) Bool)

(assert (=> b!536482 (= res!227114 (not (isEmpty!3758 input!2705)))))

(declare-fun b!536483 () Bool)

(declare-fun e!323550 () Bool)

(declare-fun tp_is_empty!2937 () Bool)

(declare-fun tp!171179 () Bool)

(assert (=> b!536483 (= e!323550 (and tp_is_empty!2937 tp!171179))))

(declare-fun b!536484 () Bool)

(declare-fun tp!171178 () Bool)

(declare-fun token!491 () Token!1650)

(declare-fun e!323565 () Bool)

(declare-fun e!323567 () Bool)

(declare-fun inv!21 (TokenValue!981) Bool)

(assert (=> b!536484 (= e!323565 (and (inv!21 (value!32141 token!491)) e!323567 tp!171178))))

(declare-fun b!536485 () Bool)

(declare-fun e!323553 () Bool)

(declare-fun tp!171176 () Bool)

(assert (=> b!536485 (= e!323553 (and tp_is_empty!2937 tp!171176))))

(declare-fun b!536486 () Bool)

(declare-fun e!323554 () Bool)

(assert (=> b!536486 (= e!323554 true)))

(declare-fun lt!221909 () Bool)

(declare-datatypes ((LexerInterface!843 0))(
  ( (LexerInterfaceExt!840 (__x!3861 Int)) (Lexer!841) )
))
(declare-fun thiss!22590 () LexerInterface!843)

(declare-datatypes ((List!5209 0))(
  ( (Nil!5199) (Cons!5199 (h!10600 Rule!1714) (t!74162 List!5209)) )
))
(declare-fun rules!3103 () List!5209)

(declare-fun rulesValidInductive!334 (LexerInterface!843 List!5209) Bool)

(assert (=> b!536486 (= lt!221909 (rulesValidInductive!334 thiss!22590 rules!3103))))

(declare-fun e!323566 () Bool)

(declare-fun tp!171180 () Bool)

(declare-fun b!536487 () Bool)

(declare-fun inv!6522 (String!6648) Bool)

(declare-fun inv!6525 (TokenValueInjection!1730) Bool)

(assert (=> b!536487 (= e!323567 (and tp!171180 (inv!6522 (tag!1219 (rule!1661 token!491))) (inv!6525 (transformation!957 (rule!1661 token!491))) e!323566))))

(declare-fun b!536488 () Bool)

(declare-fun e!323562 () Bool)

(declare-fun e!323570 () Bool)

(assert (=> b!536488 (= e!323562 e!323570)))

(declare-fun res!227110 () Bool)

(assert (=> b!536488 (=> (not res!227110) (not e!323570))))

(declare-fun suffix!1342 () List!5207)

(declare-fun lt!221916 () tuple2!6276)

(assert (=> b!536488 (= res!227110 (and (= (_1!3402 lt!221916) token!491) (= (_2!3402 lt!221916) suffix!1342)))))

(declare-fun lt!221911 () Option!1307)

(declare-fun get!1950 (Option!1307) tuple2!6276)

(assert (=> b!536488 (= lt!221916 (get!1950 lt!221911))))

(declare-fun e!323563 () Bool)

(assert (=> b!536489 (= e!323563 (and tp!171174 tp!171171))))

(declare-fun e!323551 () Bool)

(declare-fun lt!221917 () Int)

(declare-fun lt!221906 () TokenValue!981)

(declare-fun b!536490 () Bool)

(declare-fun lt!221922 () List!5207)

(declare-fun lt!221907 () List!5207)

(assert (=> b!536490 (= e!323551 (and (= (size!4186 token!491) lt!221917) (= (originalCharacters!996 token!491) lt!221907) (= (tuple2!6277 token!491 suffix!1342) (tuple2!6277 (Token!1651 lt!221906 (rule!1661 token!491) lt!221917 lt!221907) lt!221922))))))

(declare-fun b!536492 () Bool)

(declare-fun e!323569 () Bool)

(assert (=> b!536492 (= e!323569 e!323562)))

(declare-fun res!227115 () Bool)

(assert (=> b!536492 (=> (not res!227115) (not e!323562))))

(declare-fun isDefined!1119 (Option!1307) Bool)

(assert (=> b!536492 (= res!227115 (isDefined!1119 lt!221911))))

(declare-fun lt!221904 () List!5207)

(declare-fun maxPrefix!541 (LexerInterface!843 List!5209 List!5207) Option!1307)

(assert (=> b!536492 (= lt!221911 (maxPrefix!541 thiss!22590 rules!3103 lt!221904))))

(declare-fun ++!1445 (List!5207 List!5207) List!5207)

(assert (=> b!536492 (= lt!221904 (++!1445 input!2705 suffix!1342))))

(declare-fun b!536493 () Bool)

(declare-fun e!323560 () Bool)

(assert (=> b!536493 (= e!323570 e!323560)))

(declare-fun res!227112 () Bool)

(assert (=> b!536493 (=> (not res!227112) (not e!323560))))

(get-info :version)

(assert (=> b!536493 (= res!227112 ((_ is Some!1306) lt!221931))))

(assert (=> b!536493 (= lt!221931 (maxPrefix!541 thiss!22590 rules!3103 input!2705))))

(assert (=> b!536494 (= e!323566 (and tp!171177 tp!171175))))

(declare-fun b!536495 () Bool)

(declare-fun e!323558 () Bool)

(declare-fun tp!171172 () Bool)

(assert (=> b!536495 (= e!323558 (and tp!171172 (inv!6522 (tag!1219 (h!10600 rules!3103))) (inv!6525 (transformation!957 (h!10600 rules!3103))) e!323563))))

(declare-fun b!536496 () Bool)

(declare-fun res!227113 () Bool)

(assert (=> b!536496 (=> (not res!227113) (not e!323555))))

(declare-fun rulesInvariant!806 (LexerInterface!843 List!5209) Bool)

(assert (=> b!536496 (= res!227113 (rulesInvariant!806 thiss!22590 rules!3103))))

(declare-fun b!536497 () Bool)

(declare-datatypes ((Unit!9077 0))(
  ( (Unit!9078) )
))
(declare-fun e!323552 () Unit!9077)

(declare-fun Unit!9079 () Unit!9077)

(assert (=> b!536497 (= e!323552 Unit!9079)))

(declare-fun b!536498 () Bool)

(declare-fun res!227120 () Bool)

(assert (=> b!536498 (=> (not res!227120) (not e!323555))))

(declare-fun isEmpty!3759 (List!5209) Bool)

(assert (=> b!536498 (= res!227120 (not (isEmpty!3759 rules!3103)))))

(declare-fun b!536499 () Bool)

(assert (=> b!536499 (= e!323555 e!323569)))

(declare-fun res!227116 () Bool)

(assert (=> b!536499 (=> (not res!227116) (not e!323569))))

(assert (=> b!536499 (= res!227116 (= lt!221907 input!2705))))

(declare-fun list!2161 (BalanceConc!3356) List!5207)

(declare-fun charsOf!586 (Token!1650) BalanceConc!3356)

(assert (=> b!536499 (= lt!221907 (list!2161 (charsOf!586 token!491)))))

(declare-fun b!536500 () Bool)

(declare-fun res!227118 () Bool)

(assert (=> b!536500 (=> (not res!227118) (not e!323556))))

(declare-fun size!4187 (List!5207) Int)

(assert (=> b!536500 (= res!227118 (= (size!4186 (_1!3402 (v!16113 lt!221931))) (size!4187 (originalCharacters!996 (_1!3402 (v!16113 lt!221931))))))))

(declare-fun b!536501 () Bool)

(declare-fun e!323561 () Bool)

(declare-fun e!323568 () Bool)

(assert (=> b!536501 (= e!323561 (not e!323568))))

(declare-fun res!227106 () Bool)

(assert (=> b!536501 (=> res!227106 e!323568)))

(declare-fun lt!221924 () List!5207)

(declare-fun isPrefix!599 (List!5207 List!5207) Bool)

(assert (=> b!536501 (= res!227106 (not (isPrefix!599 input!2705 lt!221924)))))

(assert (=> b!536501 (isPrefix!599 lt!221907 lt!221924)))

(declare-fun lt!221918 () Unit!9077)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!450 (List!5207 List!5207) Unit!9077)

(assert (=> b!536501 (= lt!221918 (lemmaConcatTwoListThenFirstIsPrefix!450 lt!221907 suffix!1342))))

(assert (=> b!536501 (isPrefix!599 input!2705 lt!221904)))

(declare-fun lt!221921 () Unit!9077)

(assert (=> b!536501 (= lt!221921 (lemmaConcatTwoListThenFirstIsPrefix!450 input!2705 suffix!1342))))

(assert (=> b!536501 e!323556))

(declare-fun res!227119 () Bool)

(assert (=> b!536501 (=> (not res!227119) (not e!323556))))

(assert (=> b!536501 (= res!227119 (= (value!32141 (_1!3402 (v!16113 lt!221931))) lt!221929))))

(declare-fun apply!1232 (TokenValueInjection!1730 BalanceConc!3356) TokenValue!981)

(declare-fun seqFromList!1155 (List!5207) BalanceConc!3356)

(assert (=> b!536501 (= lt!221929 (apply!1232 (transformation!957 (rule!1661 (_1!3402 (v!16113 lt!221931)))) (seqFromList!1155 lt!221913)))))

(declare-fun lt!221910 () Unit!9077)

(declare-fun lemmaInv!105 (TokenValueInjection!1730) Unit!9077)

(assert (=> b!536501 (= lt!221910 (lemmaInv!105 (transformation!957 (rule!1661 token!491))))))

(declare-fun lt!221927 () Unit!9077)

(assert (=> b!536501 (= lt!221927 (lemmaInv!105 (transformation!957 (rule!1661 (_1!3402 (v!16113 lt!221931))))))))

(declare-fun ruleValid!177 (LexerInterface!843 Rule!1714) Bool)

(assert (=> b!536501 (ruleValid!177 thiss!22590 (rule!1661 token!491))))

(declare-fun lt!221919 () Unit!9077)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!36 (LexerInterface!843 Rule!1714 List!5209) Unit!9077)

(assert (=> b!536501 (= lt!221919 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!36 thiss!22590 (rule!1661 token!491) rules!3103))))

(assert (=> b!536501 (ruleValid!177 thiss!22590 (rule!1661 (_1!3402 (v!16113 lt!221931))))))

(declare-fun lt!221905 () Unit!9077)

(assert (=> b!536501 (= lt!221905 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!36 thiss!22590 (rule!1661 (_1!3402 (v!16113 lt!221931))) rules!3103))))

(assert (=> b!536501 (isPrefix!599 input!2705 input!2705)))

(declare-fun lt!221933 () Unit!9077)

(declare-fun lemmaIsPrefixRefl!339 (List!5207 List!5207) Unit!9077)

(assert (=> b!536501 (= lt!221933 (lemmaIsPrefixRefl!339 input!2705 input!2705))))

(assert (=> b!536501 (= (_2!3402 (v!16113 lt!221931)) lt!221928)))

(declare-fun lt!221908 () Unit!9077)

(declare-fun lemmaSamePrefixThenSameSuffix!326 (List!5207 List!5207 List!5207 List!5207 List!5207) Unit!9077)

(assert (=> b!536501 (= lt!221908 (lemmaSamePrefixThenSameSuffix!326 lt!221913 (_2!3402 (v!16113 lt!221931)) lt!221913 lt!221928 input!2705))))

(declare-fun getSuffix!122 (List!5207 List!5207) List!5207)

(assert (=> b!536501 (= lt!221928 (getSuffix!122 input!2705 lt!221913))))

(assert (=> b!536501 (isPrefix!599 lt!221913 (++!1445 lt!221913 (_2!3402 (v!16113 lt!221931))))))

(declare-fun lt!221920 () Unit!9077)

(assert (=> b!536501 (= lt!221920 (lemmaConcatTwoListThenFirstIsPrefix!450 lt!221913 (_2!3402 (v!16113 lt!221931))))))

(declare-fun lt!221912 () Unit!9077)

(declare-fun lemmaCharactersSize!36 (Token!1650) Unit!9077)

(assert (=> b!536501 (= lt!221912 (lemmaCharactersSize!36 token!491))))

(declare-fun lt!221915 () Unit!9077)

(assert (=> b!536501 (= lt!221915 (lemmaCharactersSize!36 (_1!3402 (v!16113 lt!221931))))))

(declare-fun lt!221923 () Unit!9077)

(assert (=> b!536501 (= lt!221923 e!323552)))

(declare-fun c!102023 () Bool)

(assert (=> b!536501 (= c!102023 (> lt!221930 lt!221917))))

(assert (=> b!536501 (= lt!221917 (size!4187 lt!221907))))

(assert (=> b!536501 (= lt!221930 (size!4187 lt!221913))))

(assert (=> b!536501 (= lt!221913 (list!2161 (charsOf!586 (_1!3402 (v!16113 lt!221931)))))))

(assert (=> b!536501 (= lt!221931 (Some!1306 (v!16113 lt!221931)))))

(declare-fun lt!221926 () Unit!9077)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!42 (List!5207 List!5207 List!5207 List!5207) Unit!9077)

(assert (=> b!536501 (= lt!221926 (lemmaConcatSameAndSameSizesThenSameLists!42 lt!221907 suffix!1342 input!2705 suffix!1342))))

(declare-fun res!227107 () Bool)

(assert (=> start!49524 (=> (not res!227107) (not e!323555))))

(assert (=> start!49524 (= res!227107 ((_ is Lexer!841) thiss!22590))))

(assert (=> start!49524 e!323555))

(assert (=> start!49524 e!323553))

(declare-fun e!323549 () Bool)

(assert (=> start!49524 e!323549))

(declare-fun inv!6526 (Token!1650) Bool)

(assert (=> start!49524 (and (inv!6526 token!491) e!323565)))

(assert (=> start!49524 true))

(assert (=> start!49524 e!323550))

(declare-fun b!536491 () Bool)

(declare-fun tp!171173 () Bool)

(assert (=> b!536491 (= e!323549 (and e!323558 tp!171173))))

(declare-fun b!536502 () Bool)

(assert (=> b!536502 (= e!323560 e!323561)))

(declare-fun res!227108 () Bool)

(assert (=> b!536502 (=> (not res!227108) (not e!323561))))

(assert (=> b!536502 (= res!227108 (= lt!221924 lt!221904))))

(assert (=> b!536502 (= lt!221924 (++!1445 lt!221907 suffix!1342))))

(declare-fun b!536503 () Bool)

(declare-fun res!227117 () Bool)

(assert (=> b!536503 (=> (not res!227117) (not e!323551))))

(assert (=> b!536503 (= res!227117 (= (size!4186 token!491) (size!4187 (originalCharacters!996 token!491))))))

(declare-fun b!536504 () Bool)

(declare-fun Unit!9080 () Unit!9077)

(assert (=> b!536504 (= e!323552 Unit!9080)))

(assert (=> b!536504 false))

(declare-fun b!536505 () Bool)

(assert (=> b!536505 (= e!323568 e!323554)))

(declare-fun res!227109 () Bool)

(assert (=> b!536505 (=> res!227109 e!323554)))

(assert (=> b!536505 (= res!227109 (>= lt!221930 lt!221917))))

(declare-fun maxPrefixOneRule!256 (LexerInterface!843 Rule!1714 List!5207) Option!1307)

(assert (=> b!536505 (= (maxPrefixOneRule!256 thiss!22590 (rule!1661 token!491) lt!221904) (Some!1306 (tuple2!6277 (Token!1651 lt!221906 (rule!1661 token!491) lt!221917 lt!221907) suffix!1342)))))

(declare-fun lt!221932 () Unit!9077)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!8 (LexerInterface!843 List!5209 List!5207 List!5207 List!5207 Rule!1714) Unit!9077)

(assert (=> b!536505 (= lt!221932 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!8 thiss!22590 rules!3103 lt!221907 lt!221904 suffix!1342 (rule!1661 token!491)))))

(assert (=> b!536505 (= (maxPrefixOneRule!256 thiss!22590 (rule!1661 (_1!3402 (v!16113 lt!221931))) input!2705) (Some!1306 (tuple2!6277 (Token!1651 lt!221929 (rule!1661 (_1!3402 (v!16113 lt!221931))) lt!221930 lt!221913) (_2!3402 (v!16113 lt!221931)))))))

(declare-fun lt!221925 () Unit!9077)

(assert (=> b!536505 (= lt!221925 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!8 thiss!22590 rules!3103 lt!221913 input!2705 (_2!3402 (v!16113 lt!221931)) (rule!1661 (_1!3402 (v!16113 lt!221931)))))))

(assert (=> b!536505 e!323551))

(declare-fun res!227111 () Bool)

(assert (=> b!536505 (=> (not res!227111) (not e!323551))))

(assert (=> b!536505 (= res!227111 (= (value!32141 token!491) lt!221906))))

(assert (=> b!536505 (= lt!221906 (apply!1232 (transformation!957 (rule!1661 token!491)) (seqFromList!1155 lt!221907)))))

(assert (=> b!536505 (= suffix!1342 lt!221922)))

(declare-fun lt!221914 () Unit!9077)

(assert (=> b!536505 (= lt!221914 (lemmaSamePrefixThenSameSuffix!326 lt!221907 suffix!1342 lt!221907 lt!221922 lt!221904))))

(assert (=> b!536505 (= lt!221922 (getSuffix!122 lt!221904 lt!221907))))

(assert (= (and start!49524 res!227107) b!536498))

(assert (= (and b!536498 res!227120) b!536496))

(assert (= (and b!536496 res!227113) b!536482))

(assert (= (and b!536482 res!227114) b!536499))

(assert (= (and b!536499 res!227116) b!536492))

(assert (= (and b!536492 res!227115) b!536488))

(assert (= (and b!536488 res!227110) b!536493))

(assert (= (and b!536493 res!227112) b!536502))

(assert (= (and b!536502 res!227108) b!536501))

(assert (= (and b!536501 c!102023) b!536504))

(assert (= (and b!536501 (not c!102023)) b!536497))

(assert (= (and b!536501 res!227119) b!536500))

(assert (= (and b!536500 res!227118) b!536481))

(assert (= (and b!536501 (not res!227106)) b!536505))

(assert (= (and b!536505 res!227111) b!536503))

(assert (= (and b!536503 res!227117) b!536490))

(assert (= (and b!536505 (not res!227109)) b!536486))

(assert (= (and start!49524 ((_ is Cons!5197) suffix!1342)) b!536485))

(assert (= b!536495 b!536489))

(assert (= b!536491 b!536495))

(assert (= (and start!49524 ((_ is Cons!5199) rules!3103)) b!536491))

(assert (= b!536487 b!536494))

(assert (= b!536484 b!536487))

(assert (= start!49524 b!536484))

(assert (= (and start!49524 ((_ is Cons!5197) input!2705)) b!536483))

(declare-fun m!782901 () Bool)

(assert (=> b!536505 m!782901))

(declare-fun m!782903 () Bool)

(assert (=> b!536505 m!782903))

(declare-fun m!782905 () Bool)

(assert (=> b!536505 m!782905))

(declare-fun m!782907 () Bool)

(assert (=> b!536505 m!782907))

(declare-fun m!782909 () Bool)

(assert (=> b!536505 m!782909))

(assert (=> b!536505 m!782905))

(declare-fun m!782911 () Bool)

(assert (=> b!536505 m!782911))

(declare-fun m!782913 () Bool)

(assert (=> b!536505 m!782913))

(declare-fun m!782915 () Bool)

(assert (=> b!536505 m!782915))

(declare-fun m!782917 () Bool)

(assert (=> b!536500 m!782917))

(declare-fun m!782919 () Bool)

(assert (=> b!536493 m!782919))

(declare-fun m!782921 () Bool)

(assert (=> b!536502 m!782921))

(declare-fun m!782923 () Bool)

(assert (=> b!536487 m!782923))

(declare-fun m!782925 () Bool)

(assert (=> b!536487 m!782925))

(declare-fun m!782927 () Bool)

(assert (=> b!536501 m!782927))

(declare-fun m!782929 () Bool)

(assert (=> b!536501 m!782929))

(declare-fun m!782931 () Bool)

(assert (=> b!536501 m!782931))

(declare-fun m!782933 () Bool)

(assert (=> b!536501 m!782933))

(declare-fun m!782935 () Bool)

(assert (=> b!536501 m!782935))

(declare-fun m!782937 () Bool)

(assert (=> b!536501 m!782937))

(declare-fun m!782939 () Bool)

(assert (=> b!536501 m!782939))

(declare-fun m!782941 () Bool)

(assert (=> b!536501 m!782941))

(declare-fun m!782943 () Bool)

(assert (=> b!536501 m!782943))

(declare-fun m!782945 () Bool)

(assert (=> b!536501 m!782945))

(declare-fun m!782947 () Bool)

(assert (=> b!536501 m!782947))

(declare-fun m!782949 () Bool)

(assert (=> b!536501 m!782949))

(declare-fun m!782951 () Bool)

(assert (=> b!536501 m!782951))

(declare-fun m!782953 () Bool)

(assert (=> b!536501 m!782953))

(declare-fun m!782955 () Bool)

(assert (=> b!536501 m!782955))

(assert (=> b!536501 m!782941))

(declare-fun m!782957 () Bool)

(assert (=> b!536501 m!782957))

(declare-fun m!782959 () Bool)

(assert (=> b!536501 m!782959))

(declare-fun m!782961 () Bool)

(assert (=> b!536501 m!782961))

(assert (=> b!536501 m!782927))

(declare-fun m!782963 () Bool)

(assert (=> b!536501 m!782963))

(declare-fun m!782965 () Bool)

(assert (=> b!536501 m!782965))

(declare-fun m!782967 () Bool)

(assert (=> b!536501 m!782967))

(declare-fun m!782969 () Bool)

(assert (=> b!536501 m!782969))

(declare-fun m!782971 () Bool)

(assert (=> b!536501 m!782971))

(declare-fun m!782973 () Bool)

(assert (=> b!536501 m!782973))

(assert (=> b!536501 m!782951))

(declare-fun m!782975 () Bool)

(assert (=> b!536501 m!782975))

(declare-fun m!782977 () Bool)

(assert (=> b!536501 m!782977))

(declare-fun m!782979 () Bool)

(assert (=> b!536501 m!782979))

(declare-fun m!782981 () Bool)

(assert (=> b!536499 m!782981))

(assert (=> b!536499 m!782981))

(declare-fun m!782983 () Bool)

(assert (=> b!536499 m!782983))

(declare-fun m!782985 () Bool)

(assert (=> b!536498 m!782985))

(declare-fun m!782987 () Bool)

(assert (=> b!536488 m!782987))

(declare-fun m!782989 () Bool)

(assert (=> start!49524 m!782989))

(declare-fun m!782991 () Bool)

(assert (=> b!536484 m!782991))

(declare-fun m!782993 () Bool)

(assert (=> b!536503 m!782993))

(declare-fun m!782995 () Bool)

(assert (=> b!536482 m!782995))

(declare-fun m!782997 () Bool)

(assert (=> b!536496 m!782997))

(declare-fun m!782999 () Bool)

(assert (=> b!536486 m!782999))

(declare-fun m!783001 () Bool)

(assert (=> b!536495 m!783001))

(declare-fun m!783003 () Bool)

(assert (=> b!536495 m!783003))

(declare-fun m!783005 () Bool)

(assert (=> b!536492 m!783005))

(declare-fun m!783007 () Bool)

(assert (=> b!536492 m!783007))

(declare-fun m!783009 () Bool)

(assert (=> b!536492 m!783009))

(check-sat (not b!536486) (not b_next!14697) (not b!536482) (not b!536500) (not b!536492) (not b!536488) (not b!536501) (not b!536487) (not b!536503) (not b!536493) (not b!536491) (not b!536495) (not b!536502) (not b!536484) b_and!52475 (not b!536499) (not b_next!14699) b_and!52477 (not b!536485) (not b!536496) b_and!52479 b_and!52481 (not b!536483) (not b!536505) (not b!536498) (not b_next!14703) (not start!49524) tp_is_empty!2937 (not b_next!14701))
(check-sat (not b_next!14697) (not b_next!14699) b_and!52477 b_and!52479 b_and!52481 b_and!52475 (not b_next!14703) (not b_next!14701))
