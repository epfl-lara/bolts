; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!369156 () Bool)

(assert start!369156)

(declare-fun b!3933592 () Bool)

(declare-fun b_free!107405 () Bool)

(declare-fun b_next!108109 () Bool)

(assert (=> b!3933592 (= b_free!107405 (not b_next!108109))))

(declare-fun tp!1197266 () Bool)

(declare-fun b_and!300263 () Bool)

(assert (=> b!3933592 (= tp!1197266 b_and!300263)))

(declare-fun b_free!107407 () Bool)

(declare-fun b_next!108111 () Bool)

(assert (=> b!3933592 (= b_free!107407 (not b_next!108111))))

(declare-fun tp!1197258 () Bool)

(declare-fun b_and!300265 () Bool)

(assert (=> b!3933592 (= tp!1197258 b_and!300265)))

(declare-fun b!3933593 () Bool)

(declare-fun b_free!107409 () Bool)

(declare-fun b_next!108113 () Bool)

(assert (=> b!3933593 (= b_free!107409 (not b_next!108113))))

(declare-fun tp!1197261 () Bool)

(declare-fun b_and!300267 () Bool)

(assert (=> b!3933593 (= tp!1197261 b_and!300267)))

(declare-fun b_free!107411 () Bool)

(declare-fun b_next!108115 () Bool)

(assert (=> b!3933593 (= b_free!107411 (not b_next!108115))))

(declare-fun tp!1197274 () Bool)

(declare-fun b_and!300269 () Bool)

(assert (=> b!3933593 (= tp!1197274 b_and!300269)))

(declare-fun b!3933628 () Bool)

(declare-fun b_free!107413 () Bool)

(declare-fun b_next!108117 () Bool)

(assert (=> b!3933628 (= b_free!107413 (not b_next!108117))))

(declare-fun tp!1197272 () Bool)

(declare-fun b_and!300271 () Bool)

(assert (=> b!3933628 (= tp!1197272 b_and!300271)))

(declare-fun b_free!107415 () Bool)

(declare-fun b_next!108119 () Bool)

(assert (=> b!3933628 (= b_free!107415 (not b_next!108119))))

(declare-fun tp!1197268 () Bool)

(declare-fun b_and!300273 () Bool)

(assert (=> b!3933628 (= tp!1197268 b_and!300273)))

(declare-fun b!3933581 () Bool)

(declare-fun res!1591684 () Bool)

(declare-fun e!2433546 () Bool)

(assert (=> b!3933581 (=> res!1591684 e!2433546)))

(declare-datatypes ((List!41889 0))(
  ( (Nil!41765) (Cons!41765 (h!47185 (_ BitVec 16)) (t!325938 List!41889)) )
))
(declare-datatypes ((TokenValue!6752 0))(
  ( (FloatLiteralValue!13504 (text!47709 List!41889)) (TokenValueExt!6751 (__x!25721 Int)) (Broken!33760 (value!206485 List!41889)) (Object!6875) (End!6752) (Def!6752) (Underscore!6752) (Match!6752) (Else!6752) (Error!6752) (Case!6752) (If!6752) (Extends!6752) (Abstract!6752) (Class!6752) (Val!6752) (DelimiterValue!13504 (del!6812 List!41889)) (KeywordValue!6758 (value!206486 List!41889)) (CommentValue!13504 (value!206487 List!41889)) (WhitespaceValue!13504 (value!206488 List!41889)) (IndentationValue!6752 (value!206489 List!41889)) (String!47477) (Int32!6752) (Broken!33761 (value!206490 List!41889)) (Boolean!6753) (Unit!60223) (OperatorValue!6755 (op!6812 List!41889)) (IdentifierValue!13504 (value!206491 List!41889)) (IdentifierValue!13505 (value!206492 List!41889)) (WhitespaceValue!13505 (value!206493 List!41889)) (True!13504) (False!13504) (Broken!33762 (value!206494 List!41889)) (Broken!33763 (value!206495 List!41889)) (True!13505) (RightBrace!6752) (RightBracket!6752) (Colon!6752) (Null!6752) (Comma!6752) (LeftBracket!6752) (False!13505) (LeftBrace!6752) (ImaginaryLiteralValue!6752 (text!47710 List!41889)) (StringLiteralValue!20256 (value!206496 List!41889)) (EOFValue!6752 (value!206497 List!41889)) (IdentValue!6752 (value!206498 List!41889)) (DelimiterValue!13505 (value!206499 List!41889)) (DedentValue!6752 (value!206500 List!41889)) (NewLineValue!6752 (value!206501 List!41889)) (IntegerValue!20256 (value!206502 (_ BitVec 32)) (text!47711 List!41889)) (IntegerValue!20257 (value!206503 Int) (text!47712 List!41889)) (Times!6752) (Or!6752) (Equal!6752) (Minus!6752) (Broken!33764 (value!206504 List!41889)) (And!6752) (Div!6752) (LessEqual!6752) (Mod!6752) (Concat!18179) (Not!6752) (Plus!6752) (SpaceValue!6752 (value!206505 List!41889)) (IntegerValue!20258 (value!206506 Int) (text!47713 List!41889)) (StringLiteralValue!20257 (text!47714 List!41889)) (FloatLiteralValue!13505 (text!47715 List!41889)) (BytesLiteralValue!6752 (value!206507 List!41889)) (CommentValue!13505 (value!206508 List!41889)) (StringLiteralValue!20258 (value!206509 List!41889)) (ErrorTokenValue!6752 (msg!6813 List!41889)) )
))
(declare-datatypes ((C!23040 0))(
  ( (C!23041 (val!13614 Int)) )
))
(declare-datatypes ((Regex!11427 0))(
  ( (ElementMatch!11427 (c!683446 C!23040)) (Concat!18180 (regOne!23366 Regex!11427) (regTwo!23366 Regex!11427)) (EmptyExpr!11427) (Star!11427 (reg!11756 Regex!11427)) (EmptyLang!11427) (Union!11427 (regOne!23367 Regex!11427) (regTwo!23367 Regex!11427)) )
))
(declare-datatypes ((String!47478 0))(
  ( (String!47479 (value!206510 String)) )
))
(declare-datatypes ((List!41890 0))(
  ( (Nil!41766) (Cons!41766 (h!47186 C!23040) (t!325939 List!41890)) )
))
(declare-datatypes ((IArray!25471 0))(
  ( (IArray!25472 (innerList!12793 List!41890)) )
))
(declare-datatypes ((Conc!12733 0))(
  ( (Node!12733 (left!31848 Conc!12733) (right!32178 Conc!12733) (csize!25696 Int) (cheight!12944 Int)) (Leaf!19701 (xs!16039 IArray!25471) (csize!25697 Int)) (Empty!12733) )
))
(declare-datatypes ((BalanceConc!25060 0))(
  ( (BalanceConc!25061 (c!683447 Conc!12733)) )
))
(declare-datatypes ((TokenValueInjection!12932 0))(
  ( (TokenValueInjection!12933 (toValue!8978 Int) (toChars!8837 Int)) )
))
(declare-datatypes ((Rule!12844 0))(
  ( (Rule!12845 (regex!6522 Regex!11427) (tag!7382 String!47478) (isSeparator!6522 Bool) (transformation!6522 TokenValueInjection!12932)) )
))
(declare-datatypes ((Token!12182 0))(
  ( (Token!12183 (value!206511 TokenValue!6752) (rule!9472 Rule!12844) (size!31335 Int) (originalCharacters!7122 List!41890)) )
))
(declare-datatypes ((List!41891 0))(
  ( (Nil!41767) (Cons!41767 (h!47187 Token!12182) (t!325940 List!41891)) )
))
(declare-datatypes ((tuple2!41046 0))(
  ( (tuple2!41047 (_1!23657 List!41891) (_2!23657 List!41890)) )
))
(declare-fun lt!1374643 () tuple2!41046)

(declare-datatypes ((tuple2!41048 0))(
  ( (tuple2!41049 (_1!23658 Token!12182) (_2!23658 List!41890)) )
))
(declare-datatypes ((Option!8942 0))(
  ( (None!8941) (Some!8941 (v!39269 tuple2!41048)) )
))
(declare-fun lt!1374667 () Option!8942)

(declare-fun suffix!1176 () List!41890)

(assert (=> b!3933581 (= res!1591684 (or (not (= lt!1374643 (tuple2!41047 (_1!23657 lt!1374643) (_2!23657 lt!1374643)))) (= (_2!23658 (v!39269 lt!1374667)) suffix!1176)))))

(declare-fun b!3933582 () Bool)

(declare-fun e!2433576 () Bool)

(declare-fun e!2433569 () Bool)

(assert (=> b!3933582 (= e!2433576 e!2433569)))

(declare-fun res!1591668 () Bool)

(assert (=> b!3933582 (=> res!1591668 e!2433569)))

(declare-fun lt!1374635 () List!41890)

(assert (=> b!3933582 (= res!1591668 (not (= lt!1374635 (_2!23658 (v!39269 lt!1374667)))))))

(assert (=> b!3933582 (= (_2!23658 (v!39269 lt!1374667)) lt!1374635)))

(declare-datatypes ((Unit!60224 0))(
  ( (Unit!60225) )
))
(declare-fun lt!1374637 () Unit!60224)

(declare-fun lt!1374665 () List!41890)

(declare-fun lt!1374660 () List!41890)

(declare-fun lemmaSamePrefixThenSameSuffix!1838 (List!41890 List!41890 List!41890 List!41890 List!41890) Unit!60224)

(assert (=> b!3933582 (= lt!1374637 (lemmaSamePrefixThenSameSuffix!1838 lt!1374665 (_2!23658 (v!39269 lt!1374667)) lt!1374665 lt!1374635 lt!1374660))))

(declare-fun lt!1374627 () List!41890)

(declare-fun isPrefix!3617 (List!41890 List!41890) Bool)

(assert (=> b!3933582 (isPrefix!3617 lt!1374665 lt!1374627)))

(declare-fun lt!1374662 () Unit!60224)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2480 (List!41890 List!41890) Unit!60224)

(assert (=> b!3933582 (= lt!1374662 (lemmaConcatTwoListThenFirstIsPrefix!2480 lt!1374665 lt!1374635))))

(declare-fun b!3933583 () Bool)

(declare-fun e!2433558 () Bool)

(declare-fun lt!1374640 () List!41890)

(assert (=> b!3933583 (= e!2433558 (isPrefix!3617 lt!1374640 (_2!23658 (v!39269 lt!1374667))))))

(declare-fun b!3933584 () Bool)

(declare-fun e!2433555 () Bool)

(assert (=> b!3933584 (= e!2433546 e!2433555)))

(declare-fun res!1591665 () Bool)

(assert (=> b!3933584 (=> res!1591665 e!2433555)))

(declare-fun lt!1374624 () Int)

(declare-fun lt!1374642 () Int)

(assert (=> b!3933584 (= res!1591665 (<= lt!1374624 lt!1374642))))

(declare-fun lt!1374644 () Unit!60224)

(declare-fun e!2433577 () Unit!60224)

(assert (=> b!3933584 (= lt!1374644 e!2433577)))

(declare-fun c!683445 () Bool)

(assert (=> b!3933584 (= c!683445 (= lt!1374624 lt!1374642))))

(declare-fun lt!1374646 () Unit!60224)

(declare-fun e!2433540 () Unit!60224)

(assert (=> b!3933584 (= lt!1374646 e!2433540)))

(declare-fun c!683441 () Bool)

(assert (=> b!3933584 (= c!683441 (< lt!1374624 lt!1374642))))

(declare-fun size!31336 (List!41890) Int)

(assert (=> b!3933584 (= lt!1374642 (size!31336 suffix!1176))))

(assert (=> b!3933584 (= lt!1374624 (size!31336 (_2!23658 (v!39269 lt!1374667))))))

(declare-fun b!3933585 () Bool)

(declare-fun e!2433572 () Bool)

(assert (=> b!3933585 (= e!2433572 (= (size!31335 (_1!23658 (v!39269 lt!1374667))) (size!31336 (originalCharacters!7122 (_1!23658 (v!39269 lt!1374667))))))))

(declare-fun b!3933586 () Bool)

(declare-fun Unit!60226 () Unit!60224)

(assert (=> b!3933586 (= e!2433577 Unit!60226)))

(declare-fun lt!1374663 () Unit!60224)

(declare-fun prefix!426 () List!41890)

(assert (=> b!3933586 (= lt!1374663 (lemmaConcatTwoListThenFirstIsPrefix!2480 prefix!426 suffix!1176))))

(assert (=> b!3933586 (isPrefix!3617 prefix!426 lt!1374660)))

(declare-fun lt!1374621 () Unit!60224)

(declare-fun lemmaIsPrefixSameLengthThenSameList!813 (List!41890 List!41890 List!41890) Unit!60224)

(assert (=> b!3933586 (= lt!1374621 (lemmaIsPrefixSameLengthThenSameList!813 lt!1374665 prefix!426 lt!1374660))))

(assert (=> b!3933586 (= lt!1374665 prefix!426)))

(declare-fun lt!1374629 () Unit!60224)

(assert (=> b!3933586 (= lt!1374629 (lemmaSamePrefixThenSameSuffix!1838 lt!1374665 (_2!23658 (v!39269 lt!1374667)) prefix!426 suffix!1176 lt!1374660))))

(assert (=> b!3933586 false))

(declare-fun b!3933587 () Bool)

(declare-fun res!1591676 () Bool)

(assert (=> b!3933587 (=> res!1591676 e!2433555)))

(declare-fun prefixTokens!80 () List!41891)

(declare-fun head!8353 (List!41891) Token!12182)

(assert (=> b!3933587 (= res!1591676 (not (= (head!8353 prefixTokens!80) (_1!23658 (v!39269 lt!1374667)))))))

(declare-fun b!3933588 () Bool)

(declare-fun res!1591678 () Bool)

(declare-fun e!2433559 () Bool)

(assert (=> b!3933588 (=> (not res!1591678) (not e!2433559))))

(declare-datatypes ((List!41892 0))(
  ( (Nil!41768) (Cons!41768 (h!47188 Rule!12844) (t!325941 List!41892)) )
))
(declare-fun rules!2768 () List!41892)

(declare-fun isEmpty!24902 (List!41892) Bool)

(assert (=> b!3933588 (= res!1591678 (not (isEmpty!24902 rules!2768)))))

(declare-fun b!3933589 () Bool)

(declare-fun e!2433566 () Bool)

(assert (=> b!3933589 (= e!2433566 false)))

(declare-fun b!3933590 () Bool)

(declare-fun res!1591686 () Bool)

(assert (=> b!3933590 (=> (not res!1591686) (not e!2433559))))

(declare-fun isEmpty!24903 (List!41891) Bool)

(assert (=> b!3933590 (= res!1591686 (not (isEmpty!24903 prefixTokens!80)))))

(declare-fun b!3933591 () Bool)

(declare-fun e!2433550 () Bool)

(assert (=> b!3933591 (= e!2433559 e!2433550)))

(declare-fun res!1591679 () Bool)

(assert (=> b!3933591 (=> (not res!1591679) (not e!2433550))))

(declare-fun lt!1374657 () tuple2!41046)

(declare-fun suffixResult!91 () List!41890)

(declare-fun lt!1374630 () List!41891)

(assert (=> b!3933591 (= res!1591679 (= lt!1374657 (tuple2!41047 lt!1374630 suffixResult!91)))))

(declare-datatypes ((LexerInterface!6111 0))(
  ( (LexerInterfaceExt!6108 (__x!25722 Int)) (Lexer!6109) )
))
(declare-fun thiss!20629 () LexerInterface!6111)

(declare-fun lexList!1879 (LexerInterface!6111 List!41892 List!41890) tuple2!41046)

(assert (=> b!3933591 (= lt!1374657 (lexList!1879 thiss!20629 rules!2768 lt!1374660))))

(declare-fun suffixTokens!72 () List!41891)

(declare-fun ++!10801 (List!41891 List!41891) List!41891)

(assert (=> b!3933591 (= lt!1374630 (++!10801 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10802 (List!41890 List!41890) List!41890)

(assert (=> b!3933591 (= lt!1374660 (++!10802 prefix!426 suffix!1176))))

(declare-fun e!2433564 () Bool)

(assert (=> b!3933592 (= e!2433564 (and tp!1197266 tp!1197258))))

(declare-fun e!2433554 () Bool)

(assert (=> b!3933593 (= e!2433554 (and tp!1197261 tp!1197274))))

(declare-fun b!3933594 () Bool)

(declare-fun e!2433573 () Bool)

(declare-fun tp_is_empty!19825 () Bool)

(declare-fun tp!1197267 () Bool)

(assert (=> b!3933594 (= e!2433573 (and tp_is_empty!19825 tp!1197267))))

(declare-fun e!2433557 () Bool)

(declare-fun e!2433545 () Bool)

(declare-fun b!3933595 () Bool)

(declare-fun tp!1197263 () Bool)

(declare-fun inv!55961 (String!47478) Bool)

(declare-fun inv!55964 (TokenValueInjection!12932) Bool)

(assert (=> b!3933595 (= e!2433545 (and tp!1197263 (inv!55961 (tag!7382 (rule!9472 (h!47187 prefixTokens!80)))) (inv!55964 (transformation!6522 (rule!9472 (h!47187 prefixTokens!80)))) e!2433557))))

(declare-fun b!3933596 () Bool)

(declare-fun e!2433547 () Bool)

(assert (=> b!3933596 (= e!2433547 e!2433558)))

(declare-fun res!1591672 () Bool)

(assert (=> b!3933596 (=> res!1591672 e!2433558)))

(assert (=> b!3933596 (= res!1591672 (not (= lt!1374667 (Some!8941 (tuple2!41049 (_1!23658 (v!39269 lt!1374667)) (_2!23658 (v!39269 lt!1374667)))))))))

(declare-fun lt!1374632 () List!41891)

(assert (=> b!3933596 (= (lexList!1879 thiss!20629 rules!2768 lt!1374640) (tuple2!41047 lt!1374632 Nil!41766))))

(declare-fun lt!1374633 () Unit!60224)

(declare-fun lemmaLexThenLexPrefix!607 (LexerInterface!6111 List!41892 List!41890 List!41890 List!41891 List!41891 List!41890) Unit!60224)

(assert (=> b!3933596 (= lt!1374633 (lemmaLexThenLexPrefix!607 thiss!20629 rules!2768 lt!1374640 suffix!1176 lt!1374632 suffixTokens!72 suffixResult!91))))

(declare-fun b!3933597 () Bool)

(declare-fun e!2433552 () Bool)

(assert (=> b!3933597 (= e!2433552 e!2433576)))

(declare-fun res!1591677 () Bool)

(assert (=> b!3933597 (=> res!1591677 e!2433576)))

(declare-fun lt!1374648 () List!41890)

(declare-fun lt!1374658 () List!41890)

(assert (=> b!3933597 (= res!1591677 (or (not (= lt!1374660 lt!1374648)) (not (= lt!1374660 lt!1374627)) (not (= lt!1374658 lt!1374627))))))

(assert (=> b!3933597 (= lt!1374648 lt!1374627)))

(assert (=> b!3933597 (= lt!1374627 (++!10802 lt!1374665 lt!1374635))))

(assert (=> b!3933597 (= lt!1374635 (++!10802 lt!1374640 suffix!1176))))

(declare-fun lt!1374650 () Unit!60224)

(declare-fun lemmaConcatAssociativity!2331 (List!41890 List!41890 List!41890) Unit!60224)

(assert (=> b!3933597 (= lt!1374650 (lemmaConcatAssociativity!2331 lt!1374665 lt!1374640 suffix!1176))))

(declare-fun lt!1374647 () tuple2!41048)

(declare-fun call!284894 () tuple2!41046)

(declare-fun bm!284889 () Bool)

(assert (=> bm!284889 (= call!284894 (lexList!1879 thiss!20629 rules!2768 (_2!23658 lt!1374647)))))

(declare-fun b!3933598 () Bool)

(declare-fun e!2433542 () Bool)

(assert (=> b!3933598 (= e!2433542 e!2433546)))

(declare-fun res!1591673 () Bool)

(assert (=> b!3933598 (=> res!1591673 e!2433546)))

(declare-fun lt!1374639 () List!41891)

(assert (=> b!3933598 (= res!1591673 (not (= lt!1374657 (tuple2!41047 (++!10801 lt!1374639 (_1!23657 lt!1374643)) (_2!23657 lt!1374643)))))))

(assert (=> b!3933598 (= lt!1374639 (Cons!41767 (_1!23658 (v!39269 lt!1374667)) Nil!41767))))

(declare-fun res!1591690 () Bool)

(assert (=> start!369156 (=> (not res!1591690) (not e!2433559))))

(get-info :version)

(assert (=> start!369156 (= res!1591690 ((_ is Lexer!6109) thiss!20629))))

(assert (=> start!369156 e!2433559))

(assert (=> start!369156 e!2433573))

(assert (=> start!369156 true))

(declare-fun e!2433568 () Bool)

(assert (=> start!369156 e!2433568))

(declare-fun e!2433556 () Bool)

(assert (=> start!369156 e!2433556))

(declare-fun e!2433551 () Bool)

(assert (=> start!369156 e!2433551))

(declare-fun e!2433571 () Bool)

(assert (=> start!369156 e!2433571))

(declare-fun e!2433538 () Bool)

(assert (=> start!369156 e!2433538))

(declare-fun b!3933599 () Bool)

(declare-fun e!2433541 () Unit!60224)

(declare-fun Unit!60227 () Unit!60224)

(assert (=> b!3933599 (= e!2433541 Unit!60227)))

(declare-fun lt!1374654 () Unit!60224)

(declare-fun lt!1374625 () List!41891)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!122 (LexerInterface!6111 List!41892 List!41890 List!41890 List!41891 List!41890 List!41891) Unit!60224)

(assert (=> b!3933599 (= lt!1374654 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!122 thiss!20629 rules!2768 suffix!1176 (_2!23658 lt!1374647) suffixTokens!72 suffixResult!91 lt!1374625))))

(declare-fun res!1591680 () Bool)

(assert (=> b!3933599 (= res!1591680 (not (= call!284894 (tuple2!41047 (++!10801 lt!1374625 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2433563 () Bool)

(assert (=> b!3933599 (=> (not res!1591680) (not e!2433563))))

(assert (=> b!3933599 e!2433563))

(declare-fun b!3933600 () Bool)

(declare-fun e!2433549 () Unit!60224)

(declare-fun Unit!60228 () Unit!60224)

(assert (=> b!3933600 (= e!2433549 Unit!60228)))

(declare-fun lt!1374636 () Unit!60224)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!122 (LexerInterface!6111 List!41892 List!41890 List!41890 List!41891 List!41890) Unit!60224)

(assert (=> b!3933600 (= lt!1374636 (lemmaLexWithSmallerInputCannotProduceSameResults!122 thiss!20629 rules!2768 (_2!23658 (v!39269 lt!1374667)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3933600 false))

(declare-fun b!3933601 () Bool)

(declare-fun Unit!60229 () Unit!60224)

(assert (=> b!3933601 (= e!2433540 Unit!60229)))

(declare-fun lt!1374628 () Int)

(assert (=> b!3933601 (= lt!1374628 (size!31336 lt!1374660))))

(declare-fun lt!1374623 () Unit!60224)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1353 (LexerInterface!6111 List!41892 List!41890 List!41890 List!41890 Rule!12844) Unit!60224)

(assert (=> b!3933601 (= lt!1374623 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1353 thiss!20629 rules!2768 lt!1374665 lt!1374660 (_2!23658 (v!39269 lt!1374667)) (rule!9472 (_1!23658 (v!39269 lt!1374667)))))))

(declare-fun lt!1374619 () Int)

(declare-fun lt!1374631 () TokenValue!6752)

(declare-fun maxPrefixOneRule!2485 (LexerInterface!6111 Rule!12844 List!41890) Option!8942)

(assert (=> b!3933601 (= (maxPrefixOneRule!2485 thiss!20629 (rule!9472 (_1!23658 (v!39269 lt!1374667))) lt!1374660) (Some!8941 (tuple2!41049 (Token!12183 lt!1374631 (rule!9472 (_1!23658 (v!39269 lt!1374667))) lt!1374619 lt!1374665) (_2!23658 (v!39269 lt!1374667)))))))

(declare-fun get!13803 (Option!8942) tuple2!41048)

(assert (=> b!3933601 (= lt!1374647 (get!13803 lt!1374667))))

(declare-fun c!683442 () Bool)

(assert (=> b!3933601 (= c!683442 (< (size!31336 (_2!23658 lt!1374647)) lt!1374642))))

(declare-fun lt!1374641 () Unit!60224)

(declare-fun e!2433574 () Unit!60224)

(assert (=> b!3933601 (= lt!1374641 e!2433574)))

(assert (=> b!3933601 false))

(declare-fun b!3933602 () Bool)

(declare-fun e!2433565 () Bool)

(assert (=> b!3933602 (= e!2433565 e!2433547)))

(declare-fun res!1591671 () Bool)

(assert (=> b!3933602 (=> res!1591671 e!2433547)))

(declare-fun lt!1374649 () List!41891)

(assert (=> b!3933602 (= res!1591671 (not (= lt!1374649 lt!1374630)))))

(declare-fun lt!1374659 () List!41891)

(assert (=> b!3933602 (= lt!1374649 (++!10801 lt!1374639 lt!1374659))))

(assert (=> b!3933602 (= lt!1374649 (++!10801 (++!10801 lt!1374639 lt!1374632) suffixTokens!72))))

(declare-fun lt!1374638 () Unit!60224)

(declare-fun lemmaConcatAssociativity!2332 (List!41891 List!41891 List!41891) Unit!60224)

(assert (=> b!3933602 (= lt!1374638 (lemmaConcatAssociativity!2332 lt!1374639 lt!1374632 suffixTokens!72))))

(declare-fun lt!1374656 () Unit!60224)

(assert (=> b!3933602 (= lt!1374656 e!2433549)))

(declare-fun c!683443 () Bool)

(assert (=> b!3933602 (= c!683443 (isEmpty!24903 lt!1374632))))

(declare-fun b!3933603 () Bool)

(declare-fun e!2433537 () Bool)

(declare-fun tp!1197262 () Bool)

(assert (=> b!3933603 (= e!2433537 (and tp!1197262 (inv!55961 (tag!7382 (h!47188 rules!2768))) (inv!55964 (transformation!6522 (h!47188 rules!2768))) e!2433564))))

(declare-fun b!3933604 () Bool)

(declare-fun res!1591667 () Bool)

(assert (=> b!3933604 (=> res!1591667 e!2433558)))

(declare-fun isEmpty!24904 (List!41890) Bool)

(assert (=> b!3933604 (= res!1591667 (isEmpty!24904 suffix!1176))))

(declare-fun tp!1197270 () Bool)

(declare-fun e!2433578 () Bool)

(declare-fun b!3933605 () Bool)

(assert (=> b!3933605 (= e!2433578 (and tp!1197270 (inv!55961 (tag!7382 (rule!9472 (h!47187 suffixTokens!72)))) (inv!55964 (transformation!6522 (rule!9472 (h!47187 suffixTokens!72)))) e!2433554))))

(declare-fun b!3933606 () Bool)

(declare-fun c!683444 () Bool)

(assert (=> b!3933606 (= c!683444 (isEmpty!24903 lt!1374625))))

(declare-fun tail!6079 (List!41891) List!41891)

(assert (=> b!3933606 (= lt!1374625 (tail!6079 prefixTokens!80))))

(assert (=> b!3933606 (= e!2433574 e!2433541)))

(declare-fun b!3933607 () Bool)

(declare-fun res!1591685 () Bool)

(assert (=> b!3933607 (=> res!1591685 e!2433547)))

(declare-fun lt!1374626 () tuple2!41046)

(assert (=> b!3933607 (= res!1591685 (not (= (lexList!1879 thiss!20629 rules!2768 lt!1374635) lt!1374626)))))

(declare-fun tp!1197260 () Bool)

(declare-fun b!3933608 () Bool)

(declare-fun e!2433570 () Bool)

(declare-fun inv!21 (TokenValue!6752) Bool)

(assert (=> b!3933608 (= e!2433570 (and (inv!21 (value!206511 (h!47187 prefixTokens!80))) e!2433545 tp!1197260))))

(declare-fun b!3933609 () Bool)

(declare-fun e!2433575 () Bool)

(assert (=> b!3933609 (= e!2433550 e!2433575)))

(declare-fun res!1591675 () Bool)

(assert (=> b!3933609 (=> (not res!1591675) (not e!2433575))))

(declare-fun lt!1374653 () tuple2!41046)

(assert (=> b!3933609 (= res!1591675 (= (lexList!1879 thiss!20629 rules!2768 suffix!1176) lt!1374653))))

(assert (=> b!3933609 (= lt!1374653 (tuple2!41047 suffixTokens!72 suffixResult!91))))

(declare-fun b!3933610 () Bool)

(declare-fun Unit!60230 () Unit!60224)

(assert (=> b!3933610 (= e!2433540 Unit!60230)))

(declare-fun b!3933611 () Bool)

(declare-fun tp!1197264 () Bool)

(assert (=> b!3933611 (= e!2433556 (and e!2433537 tp!1197264))))

(declare-fun b!3933612 () Bool)

(declare-fun e!2433553 () Bool)

(assert (=> b!3933612 (= e!2433555 e!2433553)))

(declare-fun res!1591683 () Bool)

(assert (=> b!3933612 (=> res!1591683 e!2433553)))

(assert (=> b!3933612 (= res!1591683 (>= lt!1374619 (size!31336 prefix!426)))))

(assert (=> b!3933612 (isPrefix!3617 lt!1374665 prefix!426)))

(declare-fun lt!1374645 () Unit!60224)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!295 (List!41890 List!41890 List!41890) Unit!60224)

(assert (=> b!3933612 (= lt!1374645 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!295 prefix!426 lt!1374665 lt!1374660))))

(assert (=> b!3933612 (isPrefix!3617 prefix!426 lt!1374660)))

(declare-fun lt!1374622 () Unit!60224)

(assert (=> b!3933612 (= lt!1374622 (lemmaConcatTwoListThenFirstIsPrefix!2480 prefix!426 suffix!1176))))

(declare-fun b!3933613 () Bool)

(declare-fun e!2433567 () Bool)

(declare-fun tp!1197269 () Bool)

(assert (=> b!3933613 (= e!2433567 (and (inv!21 (value!206511 (h!47187 suffixTokens!72))) e!2433578 tp!1197269))))

(declare-fun b!3933614 () Bool)

(declare-fun e!2433543 () Bool)

(assert (=> b!3933614 (= e!2433543 e!2433552)))

(declare-fun res!1591669 () Bool)

(assert (=> b!3933614 (=> res!1591669 e!2433552)))

(assert (=> b!3933614 (= res!1591669 (or (not (= lt!1374648 lt!1374660)) (not (= lt!1374648 lt!1374658))))))

(declare-fun lt!1374666 () List!41890)

(assert (=> b!3933614 (= lt!1374648 (++!10802 lt!1374666 suffix!1176))))

(declare-fun b!3933615 () Bool)

(assert (=> b!3933615 (= e!2433563 false)))

(declare-fun b!3933616 () Bool)

(declare-fun Unit!60231 () Unit!60224)

(assert (=> b!3933616 (= e!2433549 Unit!60231)))

(declare-fun b!3933617 () Bool)

(declare-fun tp!1197271 () Bool)

(assert (=> b!3933617 (= e!2433568 (and tp_is_empty!19825 tp!1197271))))

(declare-fun b!3933618 () Bool)

(declare-fun Unit!60232 () Unit!60224)

(assert (=> b!3933618 (= e!2433541 Unit!60232)))

(declare-fun lt!1374664 () Unit!60224)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!570 (List!41890 List!41890 List!41890 List!41890) Unit!60224)

(assert (=> b!3933618 (= lt!1374664 (lemmaConcatSameAndSameSizesThenSameLists!570 lt!1374665 (_2!23658 (v!39269 lt!1374667)) lt!1374665 (_2!23658 lt!1374647)))))

(assert (=> b!3933618 (= (_2!23658 (v!39269 lt!1374667)) (_2!23658 lt!1374647))))

(declare-fun lt!1374620 () Unit!60224)

(assert (=> b!3933618 (= lt!1374620 (lemmaLexWithSmallerInputCannotProduceSameResults!122 thiss!20629 rules!2768 suffix!1176 (_2!23658 lt!1374647) suffixTokens!72 suffixResult!91))))

(declare-fun res!1591666 () Bool)

(assert (=> b!3933618 (= res!1591666 (not (= call!284894 lt!1374653)))))

(assert (=> b!3933618 (=> (not res!1591666) (not e!2433566))))

(assert (=> b!3933618 e!2433566))

(declare-fun b!3933619 () Bool)

(assert (=> b!3933619 (= e!2433569 e!2433565)))

(declare-fun res!1591674 () Bool)

(assert (=> b!3933619 (=> res!1591674 e!2433565)))

(assert (=> b!3933619 (= res!1591674 (not (= lt!1374643 lt!1374626)))))

(assert (=> b!3933619 (= lt!1374626 (tuple2!41047 lt!1374659 suffixResult!91))))

(assert (=> b!3933619 (= lt!1374659 (++!10801 lt!1374632 suffixTokens!72))))

(assert (=> b!3933619 (= lt!1374632 (tail!6079 prefixTokens!80))))

(assert (=> b!3933619 (isPrefix!3617 lt!1374640 lt!1374635)))

(declare-fun lt!1374652 () Unit!60224)

(assert (=> b!3933619 (= lt!1374652 (lemmaConcatTwoListThenFirstIsPrefix!2480 lt!1374640 suffix!1176))))

(declare-fun b!3933620 () Bool)

(declare-fun e!2433548 () Bool)

(assert (=> b!3933620 (= e!2433548 (not e!2433542))))

(declare-fun res!1591681 () Bool)

(assert (=> b!3933620 (=> res!1591681 e!2433542)))

(assert (=> b!3933620 (= res!1591681 (not (= lt!1374658 lt!1374660)))))

(assert (=> b!3933620 (= lt!1374643 (lexList!1879 thiss!20629 rules!2768 (_2!23658 (v!39269 lt!1374667))))))

(declare-fun lt!1374655 () List!41890)

(assert (=> b!3933620 (and (= (size!31335 (_1!23658 (v!39269 lt!1374667))) lt!1374619) (= (originalCharacters!7122 (_1!23658 (v!39269 lt!1374667))) lt!1374665) (= (tuple2!41049 (_1!23658 (v!39269 lt!1374667)) (_2!23658 (v!39269 lt!1374667))) (tuple2!41049 (Token!12183 lt!1374631 (rule!9472 (_1!23658 (v!39269 lt!1374667))) lt!1374619 lt!1374665) lt!1374655)))))

(assert (=> b!3933620 (= lt!1374619 (size!31336 lt!1374665))))

(assert (=> b!3933620 e!2433572))

(declare-fun res!1591689 () Bool)

(assert (=> b!3933620 (=> (not res!1591689) (not e!2433572))))

(assert (=> b!3933620 (= res!1591689 (= (value!206511 (_1!23658 (v!39269 lt!1374667))) lt!1374631))))

(declare-fun apply!9761 (TokenValueInjection!12932 BalanceConc!25060) TokenValue!6752)

(declare-fun seqFromList!4789 (List!41890) BalanceConc!25060)

(assert (=> b!3933620 (= lt!1374631 (apply!9761 (transformation!6522 (rule!9472 (_1!23658 (v!39269 lt!1374667)))) (seqFromList!4789 lt!1374665)))))

(assert (=> b!3933620 (= (_2!23658 (v!39269 lt!1374667)) lt!1374655)))

(declare-fun lt!1374661 () Unit!60224)

(assert (=> b!3933620 (= lt!1374661 (lemmaSamePrefixThenSameSuffix!1838 lt!1374665 (_2!23658 (v!39269 lt!1374667)) lt!1374665 lt!1374655 lt!1374660))))

(declare-fun getSuffix!2072 (List!41890 List!41890) List!41890)

(assert (=> b!3933620 (= lt!1374655 (getSuffix!2072 lt!1374660 lt!1374665))))

(assert (=> b!3933620 (isPrefix!3617 lt!1374665 lt!1374658)))

(assert (=> b!3933620 (= lt!1374658 (++!10802 lt!1374665 (_2!23658 (v!39269 lt!1374667))))))

(declare-fun lt!1374634 () Unit!60224)

(assert (=> b!3933620 (= lt!1374634 (lemmaConcatTwoListThenFirstIsPrefix!2480 lt!1374665 (_2!23658 (v!39269 lt!1374667))))))

(declare-fun list!15519 (BalanceConc!25060) List!41890)

(declare-fun charsOf!4346 (Token!12182) BalanceConc!25060)

(assert (=> b!3933620 (= lt!1374665 (list!15519 (charsOf!4346 (_1!23658 (v!39269 lt!1374667)))))))

(declare-fun ruleValid!2470 (LexerInterface!6111 Rule!12844) Bool)

(assert (=> b!3933620 (ruleValid!2470 thiss!20629 (rule!9472 (_1!23658 (v!39269 lt!1374667))))))

(declare-fun lt!1374618 () Unit!60224)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1550 (LexerInterface!6111 Rule!12844 List!41892) Unit!60224)

(assert (=> b!3933620 (= lt!1374618 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1550 thiss!20629 (rule!9472 (_1!23658 (v!39269 lt!1374667))) rules!2768))))

(declare-fun lt!1374651 () Unit!60224)

(declare-fun lemmaCharactersSize!1179 (Token!12182) Unit!60224)

(assert (=> b!3933620 (= lt!1374651 (lemmaCharactersSize!1179 (_1!23658 (v!39269 lt!1374667))))))

(declare-fun b!3933621 () Bool)

(declare-fun res!1591682 () Bool)

(assert (=> b!3933621 (=> (not res!1591682) (not e!2433559))))

(assert (=> b!3933621 (= res!1591682 (not (isEmpty!24904 prefix!426)))))

(declare-fun tp!1197265 () Bool)

(declare-fun b!3933622 () Bool)

(declare-fun inv!55965 (Token!12182) Bool)

(assert (=> b!3933622 (= e!2433571 (and (inv!55965 (h!47187 suffixTokens!72)) e!2433567 tp!1197265))))

(declare-fun b!3933623 () Bool)

(assert (=> b!3933623 (= e!2433575 e!2433548)))

(declare-fun res!1591688 () Bool)

(assert (=> b!3933623 (=> (not res!1591688) (not e!2433548))))

(assert (=> b!3933623 (= res!1591688 ((_ is Some!8941) lt!1374667))))

(declare-fun maxPrefix!3415 (LexerInterface!6111 List!41892 List!41890) Option!8942)

(assert (=> b!3933623 (= lt!1374667 (maxPrefix!3415 thiss!20629 rules!2768 lt!1374660))))

(declare-fun tp!1197259 () Bool)

(declare-fun b!3933624 () Bool)

(assert (=> b!3933624 (= e!2433551 (and (inv!55965 (h!47187 prefixTokens!80)) e!2433570 tp!1197259))))

(declare-fun b!3933625 () Bool)

(declare-fun Unit!60233 () Unit!60224)

(assert (=> b!3933625 (= e!2433577 Unit!60233)))

(declare-fun b!3933626 () Bool)

(declare-fun tp!1197273 () Bool)

(assert (=> b!3933626 (= e!2433538 (and tp_is_empty!19825 tp!1197273))))

(declare-fun b!3933627 () Bool)

(declare-fun res!1591670 () Bool)

(assert (=> b!3933627 (=> (not res!1591670) (not e!2433559))))

(declare-fun rulesInvariant!5454 (LexerInterface!6111 List!41892) Bool)

(assert (=> b!3933627 (= res!1591670 (rulesInvariant!5454 thiss!20629 rules!2768))))

(assert (=> b!3933628 (= e!2433557 (and tp!1197272 tp!1197268))))

(declare-fun b!3933629 () Bool)

(assert (=> b!3933629 (= e!2433553 e!2433543)))

(declare-fun res!1591687 () Bool)

(assert (=> b!3933629 (=> res!1591687 e!2433543)))

(assert (=> b!3933629 (= res!1591687 (not (= lt!1374666 prefix!426)))))

(assert (=> b!3933629 (= lt!1374666 (++!10802 lt!1374665 lt!1374640))))

(assert (=> b!3933629 (= lt!1374640 (getSuffix!2072 prefix!426 lt!1374665))))

(declare-fun b!3933630 () Bool)

(declare-fun Unit!60234 () Unit!60224)

(assert (=> b!3933630 (= e!2433574 Unit!60234)))

(assert (= (and start!369156 res!1591690) b!3933588))

(assert (= (and b!3933588 res!1591678) b!3933627))

(assert (= (and b!3933627 res!1591670) b!3933590))

(assert (= (and b!3933590 res!1591686) b!3933621))

(assert (= (and b!3933621 res!1591682) b!3933591))

(assert (= (and b!3933591 res!1591679) b!3933609))

(assert (= (and b!3933609 res!1591675) b!3933623))

(assert (= (and b!3933623 res!1591688) b!3933620))

(assert (= (and b!3933620 res!1591689) b!3933585))

(assert (= (and b!3933620 (not res!1591681)) b!3933598))

(assert (= (and b!3933598 (not res!1591673)) b!3933581))

(assert (= (and b!3933581 (not res!1591684)) b!3933584))

(assert (= (and b!3933584 c!683441) b!3933601))

(assert (= (and b!3933584 (not c!683441)) b!3933610))

(assert (= (and b!3933601 c!683442) b!3933606))

(assert (= (and b!3933601 (not c!683442)) b!3933630))

(assert (= (and b!3933606 c!683444) b!3933618))

(assert (= (and b!3933606 (not c!683444)) b!3933599))

(assert (= (and b!3933618 res!1591666) b!3933589))

(assert (= (and b!3933599 res!1591680) b!3933615))

(assert (= (or b!3933618 b!3933599) bm!284889))

(assert (= (and b!3933584 c!683445) b!3933586))

(assert (= (and b!3933584 (not c!683445)) b!3933625))

(assert (= (and b!3933584 (not res!1591665)) b!3933587))

(assert (= (and b!3933587 (not res!1591676)) b!3933612))

(assert (= (and b!3933612 (not res!1591683)) b!3933629))

(assert (= (and b!3933629 (not res!1591687)) b!3933614))

(assert (= (and b!3933614 (not res!1591669)) b!3933597))

(assert (= (and b!3933597 (not res!1591677)) b!3933582))

(assert (= (and b!3933582 (not res!1591668)) b!3933619))

(assert (= (and b!3933619 (not res!1591674)) b!3933602))

(assert (= (and b!3933602 c!683443) b!3933600))

(assert (= (and b!3933602 (not c!683443)) b!3933616))

(assert (= (and b!3933602 (not res!1591671)) b!3933607))

(assert (= (and b!3933607 (not res!1591685)) b!3933596))

(assert (= (and b!3933596 (not res!1591672)) b!3933604))

(assert (= (and b!3933604 (not res!1591667)) b!3933583))

(assert (= (and start!369156 ((_ is Cons!41766) suffixResult!91)) b!3933594))

(assert (= (and start!369156 ((_ is Cons!41766) suffix!1176)) b!3933617))

(assert (= b!3933603 b!3933592))

(assert (= b!3933611 b!3933603))

(assert (= (and start!369156 ((_ is Cons!41768) rules!2768)) b!3933611))

(assert (= b!3933595 b!3933628))

(assert (= b!3933608 b!3933595))

(assert (= b!3933624 b!3933608))

(assert (= (and start!369156 ((_ is Cons!41767) prefixTokens!80)) b!3933624))

(assert (= b!3933605 b!3933593))

(assert (= b!3933613 b!3933605))

(assert (= b!3933622 b!3933613))

(assert (= (and start!369156 ((_ is Cons!41767) suffixTokens!72)) b!3933622))

(assert (= (and start!369156 ((_ is Cons!41766) prefix!426)) b!3933626))

(declare-fun m!4500153 () Bool)

(assert (=> b!3933606 m!4500153))

(declare-fun m!4500155 () Bool)

(assert (=> b!3933606 m!4500155))

(declare-fun m!4500157 () Bool)

(assert (=> b!3933585 m!4500157))

(declare-fun m!4500159 () Bool)

(assert (=> b!3933596 m!4500159))

(declare-fun m!4500161 () Bool)

(assert (=> b!3933596 m!4500161))

(declare-fun m!4500163 () Bool)

(assert (=> b!3933607 m!4500163))

(declare-fun m!4500165 () Bool)

(assert (=> b!3933613 m!4500165))

(declare-fun m!4500167 () Bool)

(assert (=> b!3933623 m!4500167))

(declare-fun m!4500169 () Bool)

(assert (=> b!3933621 m!4500169))

(declare-fun m!4500171 () Bool)

(assert (=> b!3933590 m!4500171))

(declare-fun m!4500173 () Bool)

(assert (=> b!3933627 m!4500173))

(declare-fun m!4500175 () Bool)

(assert (=> b!3933584 m!4500175))

(declare-fun m!4500177 () Bool)

(assert (=> b!3933584 m!4500177))

(declare-fun m!4500179 () Bool)

(assert (=> b!3933595 m!4500179))

(declare-fun m!4500181 () Bool)

(assert (=> b!3933595 m!4500181))

(declare-fun m!4500183 () Bool)

(assert (=> b!3933602 m!4500183))

(declare-fun m!4500185 () Bool)

(assert (=> b!3933602 m!4500185))

(assert (=> b!3933602 m!4500185))

(declare-fun m!4500187 () Bool)

(assert (=> b!3933602 m!4500187))

(declare-fun m!4500189 () Bool)

(assert (=> b!3933602 m!4500189))

(declare-fun m!4500191 () Bool)

(assert (=> b!3933602 m!4500191))

(declare-fun m!4500193 () Bool)

(assert (=> b!3933603 m!4500193))

(declare-fun m!4500195 () Bool)

(assert (=> b!3933603 m!4500195))

(declare-fun m!4500197 () Bool)

(assert (=> b!3933601 m!4500197))

(declare-fun m!4500199 () Bool)

(assert (=> b!3933601 m!4500199))

(declare-fun m!4500201 () Bool)

(assert (=> b!3933601 m!4500201))

(declare-fun m!4500203 () Bool)

(assert (=> b!3933601 m!4500203))

(declare-fun m!4500205 () Bool)

(assert (=> b!3933601 m!4500205))

(declare-fun m!4500207 () Bool)

(assert (=> b!3933599 m!4500207))

(declare-fun m!4500209 () Bool)

(assert (=> b!3933599 m!4500209))

(declare-fun m!4500211 () Bool)

(assert (=> b!3933597 m!4500211))

(declare-fun m!4500213 () Bool)

(assert (=> b!3933597 m!4500213))

(declare-fun m!4500215 () Bool)

(assert (=> b!3933597 m!4500215))

(declare-fun m!4500217 () Bool)

(assert (=> b!3933591 m!4500217))

(declare-fun m!4500219 () Bool)

(assert (=> b!3933591 m!4500219))

(declare-fun m!4500221 () Bool)

(assert (=> b!3933591 m!4500221))

(declare-fun m!4500223 () Bool)

(assert (=> b!3933604 m!4500223))

(declare-fun m!4500225 () Bool)

(assert (=> b!3933587 m!4500225))

(declare-fun m!4500227 () Bool)

(assert (=> b!3933600 m!4500227))

(declare-fun m!4500229 () Bool)

(assert (=> b!3933598 m!4500229))

(declare-fun m!4500231 () Bool)

(assert (=> b!3933624 m!4500231))

(declare-fun m!4500233 () Bool)

(assert (=> b!3933608 m!4500233))

(declare-fun m!4500235 () Bool)

(assert (=> b!3933619 m!4500235))

(assert (=> b!3933619 m!4500155))

(declare-fun m!4500237 () Bool)

(assert (=> b!3933619 m!4500237))

(declare-fun m!4500239 () Bool)

(assert (=> b!3933619 m!4500239))

(declare-fun m!4500241 () Bool)

(assert (=> b!3933588 m!4500241))

(declare-fun m!4500243 () Bool)

(assert (=> b!3933620 m!4500243))

(declare-fun m!4500245 () Bool)

(assert (=> b!3933620 m!4500245))

(declare-fun m!4500247 () Bool)

(assert (=> b!3933620 m!4500247))

(declare-fun m!4500249 () Bool)

(assert (=> b!3933620 m!4500249))

(declare-fun m!4500251 () Bool)

(assert (=> b!3933620 m!4500251))

(declare-fun m!4500253 () Bool)

(assert (=> b!3933620 m!4500253))

(declare-fun m!4500255 () Bool)

(assert (=> b!3933620 m!4500255))

(declare-fun m!4500257 () Bool)

(assert (=> b!3933620 m!4500257))

(declare-fun m!4500259 () Bool)

(assert (=> b!3933620 m!4500259))

(declare-fun m!4500261 () Bool)

(assert (=> b!3933620 m!4500261))

(declare-fun m!4500263 () Bool)

(assert (=> b!3933620 m!4500263))

(declare-fun m!4500265 () Bool)

(assert (=> b!3933620 m!4500265))

(assert (=> b!3933620 m!4500259))

(declare-fun m!4500267 () Bool)

(assert (=> b!3933620 m!4500267))

(assert (=> b!3933620 m!4500247))

(declare-fun m!4500269 () Bool)

(assert (=> b!3933620 m!4500269))

(declare-fun m!4500271 () Bool)

(assert (=> bm!284889 m!4500271))

(declare-fun m!4500273 () Bool)

(assert (=> b!3933605 m!4500273))

(declare-fun m!4500275 () Bool)

(assert (=> b!3933605 m!4500275))

(declare-fun m!4500277 () Bool)

(assert (=> b!3933583 m!4500277))

(declare-fun m!4500279 () Bool)

(assert (=> b!3933614 m!4500279))

(declare-fun m!4500281 () Bool)

(assert (=> b!3933586 m!4500281))

(declare-fun m!4500283 () Bool)

(assert (=> b!3933586 m!4500283))

(declare-fun m!4500285 () Bool)

(assert (=> b!3933586 m!4500285))

(declare-fun m!4500287 () Bool)

(assert (=> b!3933586 m!4500287))

(declare-fun m!4500289 () Bool)

(assert (=> b!3933582 m!4500289))

(declare-fun m!4500291 () Bool)

(assert (=> b!3933582 m!4500291))

(declare-fun m!4500293 () Bool)

(assert (=> b!3933582 m!4500293))

(declare-fun m!4500295 () Bool)

(assert (=> b!3933612 m!4500295))

(declare-fun m!4500297 () Bool)

(assert (=> b!3933612 m!4500297))

(declare-fun m!4500299 () Bool)

(assert (=> b!3933612 m!4500299))

(assert (=> b!3933612 m!4500283))

(assert (=> b!3933612 m!4500281))

(declare-fun m!4500301 () Bool)

(assert (=> b!3933618 m!4500301))

(declare-fun m!4500303 () Bool)

(assert (=> b!3933618 m!4500303))

(declare-fun m!4500305 () Bool)

(assert (=> b!3933609 m!4500305))

(declare-fun m!4500307 () Bool)

(assert (=> b!3933622 m!4500307))

(declare-fun m!4500309 () Bool)

(assert (=> b!3933629 m!4500309))

(declare-fun m!4500311 () Bool)

(assert (=> b!3933629 m!4500311))

(check-sat (not b!3933623) (not b!3933606) (not b!3933587) (not b!3933588) (not b!3933613) (not b!3933617) (not b_next!108119) (not b!3933585) (not b!3933596) (not b!3933618) b_and!300267 (not b!3933602) (not b!3933608) (not b!3933622) b_and!300263 (not b!3933626) tp_is_empty!19825 (not b!3933612) (not b!3933597) (not b!3933609) (not b!3933590) (not b!3933584) (not b!3933614) (not b!3933627) (not b!3933583) (not b!3933595) (not b_next!108109) (not b!3933621) (not b!3933624) (not b!3933599) (not b!3933586) (not b!3933607) (not b!3933600) b_and!300271 (not b_next!108115) b_and!300265 (not b!3933604) (not bm!284889) (not b_next!108111) (not b_next!108113) (not b!3933605) (not b!3933598) b_and!300273 (not b!3933619) (not b!3933591) (not b!3933611) (not b!3933629) (not b!3933603) (not b!3933620) (not b_next!108117) b_and!300269 (not b!3933582) (not b!3933601) (not b!3933594))
(check-sat b_and!300267 b_and!300263 (not b_next!108109) (not b_next!108119) b_and!300265 b_and!300273 b_and!300271 (not b_next!108115) (not b_next!108111) (not b_next!108113) (not b_next!108117) b_and!300269)
