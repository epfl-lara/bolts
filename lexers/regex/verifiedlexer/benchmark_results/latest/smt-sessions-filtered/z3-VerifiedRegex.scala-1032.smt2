; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51312 () Bool)

(assert start!51312)

(declare-fun b!553672 () Bool)

(declare-fun b_free!15537 () Bool)

(declare-fun b_next!15553 () Bool)

(assert (=> b!553672 (= b_free!15537 (not b_next!15553))))

(declare-fun tp!175165 () Bool)

(declare-fun b_and!54091 () Bool)

(assert (=> b!553672 (= tp!175165 b_and!54091)))

(declare-fun b_free!15539 () Bool)

(declare-fun b_next!15555 () Bool)

(assert (=> b!553672 (= b_free!15539 (not b_next!15555))))

(declare-fun tp!175166 () Bool)

(declare-fun b_and!54093 () Bool)

(assert (=> b!553672 (= tp!175166 b_and!54093)))

(declare-fun b!553684 () Bool)

(declare-fun b_free!15541 () Bool)

(declare-fun b_next!15557 () Bool)

(assert (=> b!553684 (= b_free!15541 (not b_next!15557))))

(declare-fun tp!175158 () Bool)

(declare-fun b_and!54095 () Bool)

(assert (=> b!553684 (= tp!175158 b_and!54095)))

(declare-fun b_free!15543 () Bool)

(declare-fun b_next!15559 () Bool)

(assert (=> b!553684 (= b_free!15543 (not b_next!15559))))

(declare-fun tp!175162 () Bool)

(declare-fun b_and!54097 () Bool)

(assert (=> b!553684 (= tp!175162 b_and!54097)))

(declare-fun b!553669 () Bool)

(declare-fun res!237494 () Bool)

(declare-fun e!335038 () Bool)

(assert (=> b!553669 (=> (not res!237494) (not e!335038))))

(declare-datatypes ((C!3692 0))(
  ( (C!3693 (val!2072 Int)) )
))
(declare-datatypes ((Regex!1385 0))(
  ( (ElementMatch!1385 (c!103968 C!3692)) (Concat!2460 (regOne!3282 Regex!1385) (regTwo!3282 Regex!1385)) (EmptyExpr!1385) (Star!1385 (reg!1714 Regex!1385)) (EmptyLang!1385) (Union!1385 (regOne!3283 Regex!1385) (regTwo!3283 Regex!1385)) )
))
(declare-datatypes ((String!7118 0))(
  ( (String!7119 (value!34794 String)) )
))
(declare-datatypes ((List!5513 0))(
  ( (Nil!5503) (Cons!5503 (h!10904 (_ BitVec 16)) (t!75284 List!5513)) )
))
(declare-datatypes ((TokenValue!1075 0))(
  ( (FloatLiteralValue!2150 (text!7970 List!5513)) (TokenValueExt!1074 (__x!4048 Int)) (Broken!5375 (value!34795 List!5513)) (Object!1084) (End!1075) (Def!1075) (Underscore!1075) (Match!1075) (Else!1075) (Error!1075) (Case!1075) (If!1075) (Extends!1075) (Abstract!1075) (Class!1075) (Val!1075) (DelimiterValue!2150 (del!1135 List!5513)) (KeywordValue!1081 (value!34796 List!5513)) (CommentValue!2150 (value!34797 List!5513)) (WhitespaceValue!2150 (value!34798 List!5513)) (IndentationValue!1075 (value!34799 List!5513)) (String!7120) (Int32!1075) (Broken!5376 (value!34800 List!5513)) (Boolean!1076) (Unit!9750) (OperatorValue!1078 (op!1135 List!5513)) (IdentifierValue!2150 (value!34801 List!5513)) (IdentifierValue!2151 (value!34802 List!5513)) (WhitespaceValue!2151 (value!34803 List!5513)) (True!2150) (False!2150) (Broken!5377 (value!34804 List!5513)) (Broken!5378 (value!34805 List!5513)) (True!2151) (RightBrace!1075) (RightBracket!1075) (Colon!1075) (Null!1075) (Comma!1075) (LeftBracket!1075) (False!2151) (LeftBrace!1075) (ImaginaryLiteralValue!1075 (text!7971 List!5513)) (StringLiteralValue!3225 (value!34806 List!5513)) (EOFValue!1075 (value!34807 List!5513)) (IdentValue!1075 (value!34808 List!5513)) (DelimiterValue!2151 (value!34809 List!5513)) (DedentValue!1075 (value!34810 List!5513)) (NewLineValue!1075 (value!34811 List!5513)) (IntegerValue!3225 (value!34812 (_ BitVec 32)) (text!7972 List!5513)) (IntegerValue!3226 (value!34813 Int) (text!7973 List!5513)) (Times!1075) (Or!1075) (Equal!1075) (Minus!1075) (Broken!5379 (value!34814 List!5513)) (And!1075) (Div!1075) (LessEqual!1075) (Mod!1075) (Concat!2461) (Not!1075) (Plus!1075) (SpaceValue!1075 (value!34815 List!5513)) (IntegerValue!3227 (value!34816 Int) (text!7974 List!5513)) (StringLiteralValue!3226 (text!7975 List!5513)) (FloatLiteralValue!2151 (text!7976 List!5513)) (BytesLiteralValue!1075 (value!34817 List!5513)) (CommentValue!2151 (value!34818 List!5513)) (StringLiteralValue!3227 (value!34819 List!5513)) (ErrorTokenValue!1075 (msg!1136 List!5513)) )
))
(declare-datatypes ((List!5514 0))(
  ( (Nil!5504) (Cons!5504 (h!10905 C!3692) (t!75285 List!5514)) )
))
(declare-datatypes ((IArray!3537 0))(
  ( (IArray!3538 (innerList!1826 List!5514)) )
))
(declare-datatypes ((Conc!1768 0))(
  ( (Node!1768 (left!4534 Conc!1768) (right!4864 Conc!1768) (csize!3766 Int) (cheight!1979 Int)) (Leaf!2801 (xs!4405 IArray!3537) (csize!3767 Int)) (Empty!1768) )
))
(declare-datatypes ((BalanceConc!3544 0))(
  ( (BalanceConc!3545 (c!103969 Conc!1768)) )
))
(declare-datatypes ((TokenValueInjection!1918 0))(
  ( (TokenValueInjection!1919 (toValue!1902 Int) (toChars!1761 Int)) )
))
(declare-datatypes ((Rule!1902 0))(
  ( (Rule!1903 (regex!1051 Regex!1385) (tag!1313 String!7118) (isSeparator!1051 Bool) (transformation!1051 TokenValueInjection!1918)) )
))
(declare-datatypes ((List!5515 0))(
  ( (Nil!5505) (Cons!5505 (h!10906 Rule!1902) (t!75286 List!5515)) )
))
(declare-fun rules!3103 () List!5515)

(declare-fun isEmpty!3970 (List!5515) Bool)

(assert (=> b!553669 (= res!237494 (not (isEmpty!3970 rules!3103)))))

(declare-fun b!553670 () Bool)

(declare-fun e!335039 () Bool)

(declare-fun e!335042 () Bool)

(assert (=> b!553670 (= e!335039 e!335042)))

(declare-fun res!237496 () Bool)

(assert (=> b!553670 (=> (not res!237496) (not e!335042))))

(declare-datatypes ((Token!1838 0))(
  ( (Token!1839 (value!34820 TokenValue!1075) (rule!1779 Rule!1902) (size!4390 Int) (originalCharacters!1090 List!5514)) )
))
(declare-datatypes ((tuple2!6512 0))(
  ( (tuple2!6513 (_1!3520 Token!1838) (_2!3520 List!5514)) )
))
(declare-datatypes ((Option!1401 0))(
  ( (None!1400) (Some!1400 (v!16229 tuple2!6512)) )
))
(declare-fun lt!233582 () Option!1401)

(get-info :version)

(assert (=> b!553670 (= res!237496 ((_ is Some!1400) lt!233582))))

(declare-datatypes ((LexerInterface!937 0))(
  ( (LexerInterfaceExt!934 (__x!4049 Int)) (Lexer!935) )
))
(declare-fun thiss!22590 () LexerInterface!937)

(declare-fun input!2705 () List!5514)

(declare-fun maxPrefix!635 (LexerInterface!937 List!5515 List!5514) Option!1401)

(assert (=> b!553670 (= lt!233582 (maxPrefix!635 thiss!22590 rules!3103 input!2705))))

(declare-fun res!237491 () Bool)

(assert (=> start!51312 (=> (not res!237491) (not e!335038))))

(assert (=> start!51312 (= res!237491 ((_ is Lexer!935) thiss!22590))))

(assert (=> start!51312 e!335038))

(declare-fun e!335034 () Bool)

(assert (=> start!51312 e!335034))

(declare-fun e!335033 () Bool)

(assert (=> start!51312 e!335033))

(declare-fun token!491 () Token!1838)

(declare-fun e!335035 () Bool)

(declare-fun inv!6908 (Token!1838) Bool)

(assert (=> start!51312 (and (inv!6908 token!491) e!335035)))

(assert (=> start!51312 true))

(declare-fun e!335037 () Bool)

(assert (=> start!51312 e!335037))

(declare-fun b!553671 () Bool)

(declare-fun res!237499 () Bool)

(declare-fun e!335032 () Bool)

(assert (=> b!553671 (=> (not res!237499) (not e!335032))))

(declare-fun size!4391 (List!5514) Int)

(assert (=> b!553671 (= res!237499 (= (size!4390 (_1!3520 (v!16229 lt!233582))) (size!4391 (originalCharacters!1090 (_1!3520 (v!16229 lt!233582))))))))

(declare-fun e!335049 () Bool)

(assert (=> b!553672 (= e!335049 (and tp!175165 tp!175166))))

(declare-fun lt!233581 () List!5514)

(declare-fun lt!233587 () List!5514)

(declare-fun b!553673 () Bool)

(declare-fun lt!233591 () TokenValue!1075)

(declare-fun lt!233596 () Int)

(assert (=> b!553673 (= e!335032 (and (= (size!4390 (_1!3520 (v!16229 lt!233582))) lt!233596) (= (originalCharacters!1090 (_1!3520 (v!16229 lt!233582))) lt!233587) (= (v!16229 lt!233582) (tuple2!6513 (Token!1839 lt!233591 (rule!1779 (_1!3520 (v!16229 lt!233582))) lt!233596 lt!233587) lt!233581))))))

(declare-fun b!553674 () Bool)

(declare-fun res!237500 () Bool)

(assert (=> b!553674 (=> (not res!237500) (not e!335038))))

(declare-fun isEmpty!3971 (List!5514) Bool)

(assert (=> b!553674 (= res!237500 (not (isEmpty!3971 input!2705)))))

(declare-fun b!553675 () Bool)

(declare-fun tp!175157 () Bool)

(declare-fun e!335043 () Bool)

(declare-fun e!335045 () Bool)

(declare-fun inv!6905 (String!7118) Bool)

(declare-fun inv!6909 (TokenValueInjection!1918) Bool)

(assert (=> b!553675 (= e!335045 (and tp!175157 (inv!6905 (tag!1313 (rule!1779 token!491))) (inv!6909 (transformation!1051 (rule!1779 token!491))) e!335043))))

(declare-fun b!553676 () Bool)

(declare-fun e!335050 () Bool)

(assert (=> b!553676 (= e!335050 e!335039)))

(declare-fun res!237492 () Bool)

(assert (=> b!553676 (=> (not res!237492) (not e!335039))))

(declare-fun lt!233601 () tuple2!6512)

(declare-fun suffix!1342 () List!5514)

(assert (=> b!553676 (= res!237492 (and (= (_1!3520 lt!233601) token!491) (= (_2!3520 lt!233601) suffix!1342)))))

(declare-fun lt!233586 () Option!1401)

(declare-fun get!2091 (Option!1401) tuple2!6512)

(assert (=> b!553676 (= lt!233601 (get!2091 lt!233586))))

(declare-fun b!553677 () Bool)

(declare-fun res!237498 () Bool)

(assert (=> b!553677 (=> (not res!237498) (not e!335038))))

(declare-fun rulesInvariant!900 (LexerInterface!937 List!5515) Bool)

(assert (=> b!553677 (= res!237498 (rulesInvariant!900 thiss!22590 rules!3103))))

(declare-fun b!553678 () Bool)

(declare-fun tp_is_empty!3125 () Bool)

(declare-fun tp!175160 () Bool)

(assert (=> b!553678 (= e!335037 (and tp_is_empty!3125 tp!175160))))

(declare-fun b!553679 () Bool)

(declare-fun tp!175163 () Bool)

(declare-fun inv!21 (TokenValue!1075) Bool)

(assert (=> b!553679 (= e!335035 (and (inv!21 (value!34820 token!491)) e!335045 tp!175163))))

(declare-fun b!553680 () Bool)

(declare-fun e!335044 () Bool)

(assert (=> b!553680 (= e!335042 e!335044)))

(declare-fun res!237497 () Bool)

(assert (=> b!553680 (=> (not res!237497) (not e!335044))))

(declare-fun lt!233598 () List!5514)

(declare-fun lt!233603 () List!5514)

(assert (=> b!553680 (= res!237497 (= lt!233598 lt!233603))))

(declare-fun lt!233599 () List!5514)

(declare-fun ++!1539 (List!5514 List!5514) List!5514)

(assert (=> b!553680 (= lt!233598 (++!1539 lt!233599 suffix!1342))))

(declare-fun b!553681 () Bool)

(declare-datatypes ((Unit!9751 0))(
  ( (Unit!9752) )
))
(declare-fun e!335041 () Unit!9751)

(declare-fun Unit!9753 () Unit!9751)

(assert (=> b!553681 (= e!335041 Unit!9753)))

(declare-fun b!553682 () Bool)

(declare-fun e!335046 () Bool)

(declare-fun tp!175159 () Bool)

(assert (=> b!553682 (= e!335033 (and e!335046 tp!175159))))

(declare-fun b!553683 () Bool)

(declare-fun isPrefix!685 (List!5514 List!5514) Bool)

(assert (=> b!553683 (= e!335044 (not (isPrefix!685 input!2705 lt!233598)))))

(assert (=> b!553683 (isPrefix!685 lt!233599 lt!233598)))

(declare-fun lt!233594 () Unit!9751)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!532 (List!5514 List!5514) Unit!9751)

(assert (=> b!553683 (= lt!233594 (lemmaConcatTwoListThenFirstIsPrefix!532 lt!233599 suffix!1342))))

(assert (=> b!553683 (isPrefix!685 input!2705 lt!233603)))

(declare-fun lt!233585 () Unit!9751)

(assert (=> b!553683 (= lt!233585 (lemmaConcatTwoListThenFirstIsPrefix!532 input!2705 suffix!1342))))

(assert (=> b!553683 e!335032))

(declare-fun res!237490 () Bool)

(assert (=> b!553683 (=> (not res!237490) (not e!335032))))

(assert (=> b!553683 (= res!237490 (= (value!34820 (_1!3520 (v!16229 lt!233582))) lt!233591))))

(declare-fun apply!1316 (TokenValueInjection!1918 BalanceConc!3544) TokenValue!1075)

(declare-fun seqFromList!1239 (List!5514) BalanceConc!3544)

(assert (=> b!553683 (= lt!233591 (apply!1316 (transformation!1051 (rule!1779 (_1!3520 (v!16229 lt!233582)))) (seqFromList!1239 lt!233587)))))

(declare-fun lt!233590 () Unit!9751)

(declare-fun lemmaInv!187 (TokenValueInjection!1918) Unit!9751)

(assert (=> b!553683 (= lt!233590 (lemmaInv!187 (transformation!1051 (rule!1779 token!491))))))

(declare-fun lt!233584 () Unit!9751)

(assert (=> b!553683 (= lt!233584 (lemmaInv!187 (transformation!1051 (rule!1779 (_1!3520 (v!16229 lt!233582))))))))

(declare-fun ruleValid!261 (LexerInterface!937 Rule!1902) Bool)

(assert (=> b!553683 (ruleValid!261 thiss!22590 (rule!1779 token!491))))

(declare-fun lt!233602 () Unit!9751)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!118 (LexerInterface!937 Rule!1902 List!5515) Unit!9751)

(assert (=> b!553683 (= lt!233602 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!118 thiss!22590 (rule!1779 token!491) rules!3103))))

(assert (=> b!553683 (ruleValid!261 thiss!22590 (rule!1779 (_1!3520 (v!16229 lt!233582))))))

(declare-fun lt!233588 () Unit!9751)

(assert (=> b!553683 (= lt!233588 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!118 thiss!22590 (rule!1779 (_1!3520 (v!16229 lt!233582))) rules!3103))))

(assert (=> b!553683 (isPrefix!685 input!2705 input!2705)))

(declare-fun lt!233597 () Unit!9751)

(declare-fun lemmaIsPrefixRefl!423 (List!5514 List!5514) Unit!9751)

(assert (=> b!553683 (= lt!233597 (lemmaIsPrefixRefl!423 input!2705 input!2705))))

(assert (=> b!553683 (= (_2!3520 (v!16229 lt!233582)) lt!233581)))

(declare-fun lt!233583 () Unit!9751)

(declare-fun lemmaSamePrefixThenSameSuffix!408 (List!5514 List!5514 List!5514 List!5514 List!5514) Unit!9751)

(assert (=> b!553683 (= lt!233583 (lemmaSamePrefixThenSameSuffix!408 lt!233587 (_2!3520 (v!16229 lt!233582)) lt!233587 lt!233581 input!2705))))

(declare-fun getSuffix!204 (List!5514 List!5514) List!5514)

(assert (=> b!553683 (= lt!233581 (getSuffix!204 input!2705 lt!233587))))

(assert (=> b!553683 (isPrefix!685 lt!233587 (++!1539 lt!233587 (_2!3520 (v!16229 lt!233582))))))

(declare-fun lt!233600 () Unit!9751)

(assert (=> b!553683 (= lt!233600 (lemmaConcatTwoListThenFirstIsPrefix!532 lt!233587 (_2!3520 (v!16229 lt!233582))))))

(declare-fun lt!233593 () Unit!9751)

(declare-fun lemmaCharactersSize!118 (Token!1838) Unit!9751)

(assert (=> b!553683 (= lt!233593 (lemmaCharactersSize!118 token!491))))

(declare-fun lt!233589 () Unit!9751)

(assert (=> b!553683 (= lt!233589 (lemmaCharactersSize!118 (_1!3520 (v!16229 lt!233582))))))

(declare-fun lt!233592 () Unit!9751)

(assert (=> b!553683 (= lt!233592 e!335041)))

(declare-fun c!103967 () Bool)

(assert (=> b!553683 (= c!103967 (> lt!233596 (size!4391 lt!233599)))))

(assert (=> b!553683 (= lt!233596 (size!4391 lt!233587))))

(declare-fun list!2281 (BalanceConc!3544) List!5514)

(declare-fun charsOf!680 (Token!1838) BalanceConc!3544)

(assert (=> b!553683 (= lt!233587 (list!2281 (charsOf!680 (_1!3520 (v!16229 lt!233582)))))))

(assert (=> b!553683 (= lt!233582 (Some!1400 (v!16229 lt!233582)))))

(declare-fun lt!233595 () Unit!9751)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!128 (List!5514 List!5514 List!5514 List!5514) Unit!9751)

(assert (=> b!553683 (= lt!233595 (lemmaConcatSameAndSameSizesThenSameLists!128 lt!233599 suffix!1342 input!2705 suffix!1342))))

(assert (=> b!553684 (= e!335043 (and tp!175158 tp!175162))))

(declare-fun b!553685 () Bool)

(declare-fun e!335040 () Bool)

(assert (=> b!553685 (= e!335038 e!335040)))

(declare-fun res!237495 () Bool)

(assert (=> b!553685 (=> (not res!237495) (not e!335040))))

(assert (=> b!553685 (= res!237495 (= lt!233599 input!2705))))

(assert (=> b!553685 (= lt!233599 (list!2281 (charsOf!680 token!491)))))

(declare-fun b!553686 () Bool)

(assert (=> b!553686 (= e!335040 e!335050)))

(declare-fun res!237493 () Bool)

(assert (=> b!553686 (=> (not res!237493) (not e!335050))))

(declare-fun isDefined!1213 (Option!1401) Bool)

(assert (=> b!553686 (= res!237493 (isDefined!1213 lt!233586))))

(assert (=> b!553686 (= lt!233586 (maxPrefix!635 thiss!22590 rules!3103 lt!233603))))

(assert (=> b!553686 (= lt!233603 (++!1539 input!2705 suffix!1342))))

(declare-fun b!553687 () Bool)

(declare-fun tp!175161 () Bool)

(assert (=> b!553687 (= e!335034 (and tp_is_empty!3125 tp!175161))))

(declare-fun b!553688 () Bool)

(declare-fun tp!175164 () Bool)

(assert (=> b!553688 (= e!335046 (and tp!175164 (inv!6905 (tag!1313 (h!10906 rules!3103))) (inv!6909 (transformation!1051 (h!10906 rules!3103))) e!335049))))

(declare-fun b!553689 () Bool)

(declare-fun Unit!9754 () Unit!9751)

(assert (=> b!553689 (= e!335041 Unit!9754)))

(assert (=> b!553689 false))

(assert (= (and start!51312 res!237491) b!553669))

(assert (= (and b!553669 res!237494) b!553677))

(assert (= (and b!553677 res!237498) b!553674))

(assert (= (and b!553674 res!237500) b!553685))

(assert (= (and b!553685 res!237495) b!553686))

(assert (= (and b!553686 res!237493) b!553676))

(assert (= (and b!553676 res!237492) b!553670))

(assert (= (and b!553670 res!237496) b!553680))

(assert (= (and b!553680 res!237497) b!553683))

(assert (= (and b!553683 c!103967) b!553689))

(assert (= (and b!553683 (not c!103967)) b!553681))

(assert (= (and b!553683 res!237490) b!553671))

(assert (= (and b!553671 res!237499) b!553673))

(assert (= (and start!51312 ((_ is Cons!5504) suffix!1342)) b!553687))

(assert (= b!553688 b!553672))

(assert (= b!553682 b!553688))

(assert (= (and start!51312 ((_ is Cons!5505) rules!3103)) b!553682))

(assert (= b!553675 b!553684))

(assert (= b!553679 b!553675))

(assert (= start!51312 b!553679))

(assert (= (and start!51312 ((_ is Cons!5504) input!2705)) b!553678))

(declare-fun m!803433 () Bool)

(assert (=> b!553670 m!803433))

(declare-fun m!803435 () Bool)

(assert (=> b!553677 m!803435))

(declare-fun m!803437 () Bool)

(assert (=> b!553680 m!803437))

(declare-fun m!803439 () Bool)

(assert (=> b!553669 m!803439))

(declare-fun m!803441 () Bool)

(assert (=> b!553679 m!803441))

(declare-fun m!803443 () Bool)

(assert (=> b!553685 m!803443))

(assert (=> b!553685 m!803443))

(declare-fun m!803445 () Bool)

(assert (=> b!553685 m!803445))

(declare-fun m!803447 () Bool)

(assert (=> b!553675 m!803447))

(declare-fun m!803449 () Bool)

(assert (=> b!553675 m!803449))

(declare-fun m!803451 () Bool)

(assert (=> b!553676 m!803451))

(declare-fun m!803453 () Bool)

(assert (=> start!51312 m!803453))

(declare-fun m!803455 () Bool)

(assert (=> b!553688 m!803455))

(declare-fun m!803457 () Bool)

(assert (=> b!553688 m!803457))

(declare-fun m!803459 () Bool)

(assert (=> b!553674 m!803459))

(declare-fun m!803461 () Bool)

(assert (=> b!553686 m!803461))

(declare-fun m!803463 () Bool)

(assert (=> b!553686 m!803463))

(declare-fun m!803465 () Bool)

(assert (=> b!553686 m!803465))

(declare-fun m!803467 () Bool)

(assert (=> b!553683 m!803467))

(declare-fun m!803469 () Bool)

(assert (=> b!553683 m!803469))

(declare-fun m!803471 () Bool)

(assert (=> b!553683 m!803471))

(declare-fun m!803473 () Bool)

(assert (=> b!553683 m!803473))

(declare-fun m!803475 () Bool)

(assert (=> b!553683 m!803475))

(declare-fun m!803477 () Bool)

(assert (=> b!553683 m!803477))

(declare-fun m!803479 () Bool)

(assert (=> b!553683 m!803479))

(declare-fun m!803481 () Bool)

(assert (=> b!553683 m!803481))

(declare-fun m!803483 () Bool)

(assert (=> b!553683 m!803483))

(declare-fun m!803485 () Bool)

(assert (=> b!553683 m!803485))

(declare-fun m!803487 () Bool)

(assert (=> b!553683 m!803487))

(declare-fun m!803489 () Bool)

(assert (=> b!553683 m!803489))

(declare-fun m!803491 () Bool)

(assert (=> b!553683 m!803491))

(declare-fun m!803493 () Bool)

(assert (=> b!553683 m!803493))

(declare-fun m!803495 () Bool)

(assert (=> b!553683 m!803495))

(declare-fun m!803497 () Bool)

(assert (=> b!553683 m!803497))

(declare-fun m!803499 () Bool)

(assert (=> b!553683 m!803499))

(declare-fun m!803501 () Bool)

(assert (=> b!553683 m!803501))

(declare-fun m!803503 () Bool)

(assert (=> b!553683 m!803503))

(assert (=> b!553683 m!803487))

(declare-fun m!803505 () Bool)

(assert (=> b!553683 m!803505))

(declare-fun m!803507 () Bool)

(assert (=> b!553683 m!803507))

(declare-fun m!803509 () Bool)

(assert (=> b!553683 m!803509))

(declare-fun m!803511 () Bool)

(assert (=> b!553683 m!803511))

(declare-fun m!803513 () Bool)

(assert (=> b!553683 m!803513))

(assert (=> b!553683 m!803499))

(declare-fun m!803515 () Bool)

(assert (=> b!553683 m!803515))

(declare-fun m!803517 () Bool)

(assert (=> b!553683 m!803517))

(assert (=> b!553683 m!803479))

(declare-fun m!803519 () Bool)

(assert (=> b!553683 m!803519))

(declare-fun m!803521 () Bool)

(assert (=> b!553671 m!803521))

(check-sat (not b!553680) b_and!54091 (not b!553683) (not b!553688) (not b!553686) (not b!553678) (not b_next!15555) (not b!553677) tp_is_empty!3125 b_and!54097 (not b!553676) (not b!553685) (not b!553687) (not b!553670) (not b!553679) b_and!54093 (not b_next!15553) (not start!51312) (not b!553682) (not b!553671) b_and!54095 (not b!553674) (not b!553669) (not b_next!15559) (not b!553675) (not b_next!15557))
(check-sat b_and!54091 b_and!54093 (not b_next!15553) (not b_next!15555) b_and!54095 b_and!54097 (not b_next!15559) (not b_next!15557))
