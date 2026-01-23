; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374344 () Bool)

(assert start!374344)

(declare-fun b!3976884 () Bool)

(declare-fun b_free!110305 () Bool)

(declare-fun b_next!111009 () Bool)

(assert (=> b!3976884 (= b_free!110305 (not b_next!111009))))

(declare-fun tp!1212497 () Bool)

(declare-fun b_and!305695 () Bool)

(assert (=> b!3976884 (= tp!1212497 b_and!305695)))

(declare-fun b_free!110307 () Bool)

(declare-fun b_next!111011 () Bool)

(assert (=> b!3976884 (= b_free!110307 (not b_next!111011))))

(declare-fun tp!1212500 () Bool)

(declare-fun b_and!305697 () Bool)

(assert (=> b!3976884 (= tp!1212500 b_and!305697)))

(declare-fun b!3976908 () Bool)

(declare-fun b_free!110309 () Bool)

(declare-fun b_next!111013 () Bool)

(assert (=> b!3976908 (= b_free!110309 (not b_next!111013))))

(declare-fun tp!1212502 () Bool)

(declare-fun b_and!305699 () Bool)

(assert (=> b!3976908 (= tp!1212502 b_and!305699)))

(declare-fun b_free!110311 () Bool)

(declare-fun b_next!111015 () Bool)

(assert (=> b!3976908 (= b_free!110311 (not b_next!111015))))

(declare-fun tp!1212491 () Bool)

(declare-fun b_and!305701 () Bool)

(assert (=> b!3976908 (= tp!1212491 b_and!305701)))

(declare-fun b!3976880 () Bool)

(declare-fun res!1610805 () Bool)

(declare-fun e!2464061 () Bool)

(assert (=> b!3976880 (=> (not res!1610805) (not e!2464061))))

(declare-datatypes ((C!23392 0))(
  ( (C!23393 (val!13790 Int)) )
))
(declare-datatypes ((List!42614 0))(
  ( (Nil!42490) (Cons!42490 (h!47910 C!23392) (t!331125 List!42614)) )
))
(declare-datatypes ((IArray!25823 0))(
  ( (IArray!25824 (innerList!12969 List!42614)) )
))
(declare-datatypes ((Conc!12909 0))(
  ( (Node!12909 (left!32156 Conc!12909) (right!32486 Conc!12909) (csize!26048 Int) (cheight!13120 Int)) (Leaf!19965 (xs!16215 IArray!25823) (csize!26049 Int)) (Empty!12909) )
))
(declare-datatypes ((BalanceConc!25412 0))(
  ( (BalanceConc!25413 (c!689336 Conc!12909)) )
))
(declare-datatypes ((List!42615 0))(
  ( (Nil!42491) (Cons!42491 (h!47911 (_ BitVec 16)) (t!331126 List!42615)) )
))
(declare-datatypes ((TokenValue!6928 0))(
  ( (FloatLiteralValue!13856 (text!48941 List!42615)) (TokenValueExt!6927 (__x!26073 Int)) (Broken!34640 (value!211501 List!42615)) (Object!7051) (End!6928) (Def!6928) (Underscore!6928) (Match!6928) (Else!6928) (Error!6928) (Case!6928) (If!6928) (Extends!6928) (Abstract!6928) (Class!6928) (Val!6928) (DelimiterValue!13856 (del!6988 List!42615)) (KeywordValue!6934 (value!211502 List!42615)) (CommentValue!13856 (value!211503 List!42615)) (WhitespaceValue!13856 (value!211504 List!42615)) (IndentationValue!6928 (value!211505 List!42615)) (String!48357) (Int32!6928) (Broken!34641 (value!211506 List!42615)) (Boolean!6929) (Unit!61140) (OperatorValue!6931 (op!6988 List!42615)) (IdentifierValue!13856 (value!211507 List!42615)) (IdentifierValue!13857 (value!211508 List!42615)) (WhitespaceValue!13857 (value!211509 List!42615)) (True!13856) (False!13856) (Broken!34642 (value!211510 List!42615)) (Broken!34643 (value!211511 List!42615)) (True!13857) (RightBrace!6928) (RightBracket!6928) (Colon!6928) (Null!6928) (Comma!6928) (LeftBracket!6928) (False!13857) (LeftBrace!6928) (ImaginaryLiteralValue!6928 (text!48942 List!42615)) (StringLiteralValue!20784 (value!211512 List!42615)) (EOFValue!6928 (value!211513 List!42615)) (IdentValue!6928 (value!211514 List!42615)) (DelimiterValue!13857 (value!211515 List!42615)) (DedentValue!6928 (value!211516 List!42615)) (NewLineValue!6928 (value!211517 List!42615)) (IntegerValue!20784 (value!211518 (_ BitVec 32)) (text!48943 List!42615)) (IntegerValue!20785 (value!211519 Int) (text!48944 List!42615)) (Times!6928) (Or!6928) (Equal!6928) (Minus!6928) (Broken!34644 (value!211520 List!42615)) (And!6928) (Div!6928) (LessEqual!6928) (Mod!6928) (Concat!18531) (Not!6928) (Plus!6928) (SpaceValue!6928 (value!211521 List!42615)) (IntegerValue!20786 (value!211522 Int) (text!48945 List!42615)) (StringLiteralValue!20785 (text!48946 List!42615)) (FloatLiteralValue!13857 (text!48947 List!42615)) (BytesLiteralValue!6928 (value!211523 List!42615)) (CommentValue!13857 (value!211524 List!42615)) (StringLiteralValue!20786 (value!211525 List!42615)) (ErrorTokenValue!6928 (msg!6989 List!42615)) )
))
(declare-datatypes ((Regex!11603 0))(
  ( (ElementMatch!11603 (c!689337 C!23392)) (Concat!18532 (regOne!23718 Regex!11603) (regTwo!23718 Regex!11603)) (EmptyExpr!11603) (Star!11603 (reg!11932 Regex!11603)) (EmptyLang!11603) (Union!11603 (regOne!23719 Regex!11603) (regTwo!23719 Regex!11603)) )
))
(declare-datatypes ((String!48358 0))(
  ( (String!48359 (value!211526 String)) )
))
(declare-datatypes ((TokenValueInjection!13284 0))(
  ( (TokenValueInjection!13285 (toValue!9186 Int) (toChars!9045 Int)) )
))
(declare-datatypes ((Rule!13196 0))(
  ( (Rule!13197 (regex!6698 Regex!11603) (tag!7558 String!48358) (isSeparator!6698 Bool) (transformation!6698 TokenValueInjection!13284)) )
))
(declare-datatypes ((Token!12534 0))(
  ( (Token!12535 (value!211527 TokenValue!6928) (rule!9698 Rule!13196) (size!31788 Int) (originalCharacters!7298 List!42614)) )
))
(declare-fun token!484 () Token!12534)

(declare-fun lt!1394620 () TokenValue!6928)

(assert (=> b!3976880 (= res!1610805 (= (value!211527 token!484) lt!1394620))))

(declare-fun b!3976881 () Bool)

(declare-fun tp!1212501 () Bool)

(declare-fun e!2464058 () Bool)

(declare-fun e!2464060 () Bool)

(declare-fun inv!56767 (String!48358) Bool)

(declare-fun inv!56770 (TokenValueInjection!13284) Bool)

(assert (=> b!3976881 (= e!2464060 (and tp!1212501 (inv!56767 (tag!7558 (rule!9698 token!484))) (inv!56770 (transformation!6698 (rule!9698 token!484))) e!2464058))))

(declare-fun lt!1394638 () Int)

(declare-fun b!3976882 () Bool)

(declare-fun lt!1394639 () List!42614)

(assert (=> b!3976882 (= e!2464061 (and (= (size!31788 token!484) lt!1394638) (= (originalCharacters!7298 token!484) lt!1394639)))))

(declare-fun e!2464071 () Bool)

(declare-fun tp!1212493 () Bool)

(declare-fun b!3976883 () Bool)

(declare-fun inv!21 (TokenValue!6928) Bool)

(assert (=> b!3976883 (= e!2464071 (and (inv!21 (value!211527 token!484)) e!2464060 tp!1212493))))

(declare-fun e!2464065 () Bool)

(assert (=> b!3976884 (= e!2464065 (and tp!1212497 tp!1212500))))

(declare-fun b!3976885 () Bool)

(declare-fun e!2464063 () Bool)

(declare-fun tp_is_empty!20177 () Bool)

(declare-fun tp!1212495 () Bool)

(assert (=> b!3976885 (= e!2464063 (and tp_is_empty!20177 tp!1212495))))

(declare-datatypes ((List!42616 0))(
  ( (Nil!42492) (Cons!42492 (h!47912 Rule!13196) (t!331127 List!42616)) )
))
(declare-fun rules!2999 () List!42616)

(declare-fun b!3976886 () Bool)

(declare-fun e!2464050 () Bool)

(declare-fun tp!1212490 () Bool)

(assert (=> b!3976886 (= e!2464050 (and tp!1212490 (inv!56767 (tag!7558 (h!47912 rules!2999))) (inv!56770 (transformation!6698 (h!47912 rules!2999))) e!2464065))))

(declare-fun b!3976887 () Bool)

(declare-fun e!2464051 () Bool)

(declare-fun tp!1212496 () Bool)

(assert (=> b!3976887 (= e!2464051 (and tp_is_empty!20177 tp!1212496))))

(declare-fun b!3976888 () Bool)

(declare-fun res!1610797 () Bool)

(declare-fun e!2464069 () Bool)

(assert (=> b!3976888 (=> (not res!1610797) (not e!2464069))))

(declare-fun suffix!1299 () List!42614)

(declare-fun newSuffix!27 () List!42614)

(declare-fun size!31789 (List!42614) Int)

(assert (=> b!3976888 (= res!1610797 (>= (size!31789 suffix!1299) (size!31789 newSuffix!27)))))

(declare-fun b!3976889 () Bool)

(declare-fun e!2464054 () Bool)

(declare-fun tp!1212494 () Bool)

(assert (=> b!3976889 (= e!2464054 (and e!2464050 tp!1212494))))

(declare-fun b!3976890 () Bool)

(declare-fun e!2464068 () Bool)

(declare-fun e!2464052 () Bool)

(assert (=> b!3976890 (= e!2464068 e!2464052)))

(declare-fun res!1610796 () Bool)

(assert (=> b!3976890 (=> (not res!1610796) (not e!2464052))))

(declare-fun lt!1394622 () List!42614)

(declare-fun lt!1394610 () List!42614)

(assert (=> b!3976890 (= res!1610796 (= lt!1394622 lt!1394610))))

(declare-fun prefix!494 () List!42614)

(declare-fun ++!11100 (List!42614 List!42614) List!42614)

(assert (=> b!3976890 (= lt!1394610 (++!11100 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42614)

(assert (=> b!3976890 (= lt!1394622 (++!11100 lt!1394639 newSuffixResult!27))))

(declare-fun b!3976891 () Bool)

(declare-fun e!2464074 () Bool)

(assert (=> b!3976891 (= e!2464074 true)))

(declare-fun lt!1394628 () Bool)

(declare-datatypes ((LexerInterface!6287 0))(
  ( (LexerInterfaceExt!6284 (__x!26074 Int)) (Lexer!6285) )
))
(declare-fun thiss!21717 () LexerInterface!6287)

(declare-fun rulesValidInductive!2431 (LexerInterface!6287 List!42616) Bool)

(assert (=> b!3976891 (= lt!1394628 (rulesValidInductive!2431 thiss!21717 rules!2999))))

(declare-fun suffixResult!105 () List!42614)

(declare-fun lt!1394642 () List!42614)

(declare-fun lt!1394612 () Token!12534)

(declare-datatypes ((tuple2!41732 0))(
  ( (tuple2!41733 (_1!24000 Token!12534) (_2!24000 List!42614)) )
))
(declare-fun lt!1394643 () tuple2!41732)

(assert (=> b!3976891 (and (= suffixResult!105 lt!1394642) (= lt!1394643 (tuple2!41733 lt!1394612 lt!1394642)))))

(declare-datatypes ((Unit!61141 0))(
  ( (Unit!61142) )
))
(declare-fun lt!1394625 () Unit!61141)

(declare-fun lt!1394633 () List!42614)

(declare-fun lemmaSamePrefixThenSameSuffix!1972 (List!42614 List!42614 List!42614 List!42614 List!42614) Unit!61141)

(assert (=> b!3976891 (= lt!1394625 (lemmaSamePrefixThenSameSuffix!1972 lt!1394639 suffixResult!105 lt!1394639 lt!1394642 lt!1394633))))

(declare-fun lt!1394624 () List!42614)

(declare-fun isPrefix!3785 (List!42614 List!42614) Bool)

(assert (=> b!3976891 (isPrefix!3785 lt!1394639 lt!1394624)))

(declare-fun lt!1394619 () Unit!61141)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2628 (List!42614 List!42614) Unit!61141)

(assert (=> b!3976891 (= lt!1394619 (lemmaConcatTwoListThenFirstIsPrefix!2628 lt!1394639 lt!1394642))))

(declare-fun b!3976892 () Bool)

(declare-fun e!2464053 () Bool)

(declare-fun e!2464062 () Bool)

(assert (=> b!3976892 (= e!2464053 e!2464062)))

(declare-fun res!1610793 () Bool)

(assert (=> b!3976892 (=> res!1610793 e!2464062)))

(declare-fun lt!1394631 () List!42614)

(declare-fun lt!1394636 () List!42614)

(assert (=> b!3976892 (= res!1610793 (or (not (= lt!1394633 lt!1394636)) (not (= lt!1394633 lt!1394631))))))

(assert (=> b!3976892 (= lt!1394636 lt!1394631)))

(declare-fun lt!1394637 () List!42614)

(assert (=> b!3976892 (= lt!1394631 (++!11100 lt!1394639 lt!1394637))))

(declare-fun lt!1394615 () List!42614)

(assert (=> b!3976892 (= lt!1394636 (++!11100 lt!1394615 suffix!1299))))

(declare-fun lt!1394626 () List!42614)

(assert (=> b!3976892 (= lt!1394637 (++!11100 lt!1394626 suffix!1299))))

(declare-fun lt!1394621 () Unit!61141)

(declare-fun lemmaConcatAssociativity!2420 (List!42614 List!42614 List!42614) Unit!61141)

(assert (=> b!3976892 (= lt!1394621 (lemmaConcatAssociativity!2420 lt!1394639 lt!1394626 suffix!1299))))

(declare-fun b!3976893 () Bool)

(declare-fun e!2464067 () Bool)

(declare-fun e!2464072 () Bool)

(assert (=> b!3976893 (= e!2464067 (not e!2464072))))

(declare-fun res!1610809 () Bool)

(assert (=> b!3976893 (=> res!1610809 e!2464072)))

(declare-fun lt!1394640 () List!42614)

(assert (=> b!3976893 (= res!1610809 (not (= lt!1394640 lt!1394633)))))

(assert (=> b!3976893 (= lt!1394640 (++!11100 lt!1394639 suffixResult!105))))

(declare-fun lt!1394629 () Unit!61141)

(declare-fun lemmaInv!913 (TokenValueInjection!13284) Unit!61141)

(assert (=> b!3976893 (= lt!1394629 (lemmaInv!913 (transformation!6698 (rule!9698 token!484))))))

(declare-fun ruleValid!2630 (LexerInterface!6287 Rule!13196) Bool)

(assert (=> b!3976893 (ruleValid!2630 thiss!21717 (rule!9698 token!484))))

(declare-fun lt!1394641 () Unit!61141)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1704 (LexerInterface!6287 Rule!13196 List!42616) Unit!61141)

(assert (=> b!3976893 (= lt!1394641 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1704 thiss!21717 (rule!9698 token!484) rules!2999))))

(declare-fun b!3976894 () Bool)

(declare-fun res!1610807 () Bool)

(assert (=> b!3976894 (=> (not res!1610807) (not e!2464069))))

(assert (=> b!3976894 (= res!1610807 (isPrefix!3785 newSuffix!27 suffix!1299))))

(declare-fun b!3976895 () Bool)

(declare-fun res!1610798 () Bool)

(assert (=> b!3976895 (=> (not res!1610798) (not e!2464061))))

(assert (=> b!3976895 (= res!1610798 (= (size!31788 token!484) (size!31789 (originalCharacters!7298 token!484))))))

(declare-fun b!3976896 () Bool)

(declare-fun res!1610794 () Bool)

(assert (=> b!3976896 (=> (not res!1610794) (not e!2464069))))

(declare-fun rulesInvariant!5630 (LexerInterface!6287 List!42616) Bool)

(assert (=> b!3976896 (= res!1610794 (rulesInvariant!5630 thiss!21717 rules!2999))))

(declare-fun b!3976897 () Bool)

(declare-fun e!2464049 () Bool)

(declare-fun tp!1212499 () Bool)

(assert (=> b!3976897 (= e!2464049 (and tp_is_empty!20177 tp!1212499))))

(declare-fun b!3976898 () Bool)

(declare-fun e!2464057 () Bool)

(declare-fun tp!1212498 () Bool)

(assert (=> b!3976898 (= e!2464057 (and tp_is_empty!20177 tp!1212498))))

(declare-fun b!3976899 () Bool)

(declare-fun e!2464066 () Bool)

(assert (=> b!3976899 (= e!2464066 e!2464074)))

(declare-fun res!1610802 () Bool)

(assert (=> b!3976899 (=> res!1610802 e!2464074)))

(assert (=> b!3976899 (= res!1610802 (not (= lt!1394624 lt!1394633)))))

(assert (=> b!3976899 (= lt!1394624 (++!11100 lt!1394639 lt!1394642))))

(declare-fun getSuffix!2216 (List!42614 List!42614) List!42614)

(assert (=> b!3976899 (= lt!1394642 (getSuffix!2216 lt!1394633 lt!1394639))))

(assert (=> b!3976899 e!2464061))

(declare-fun res!1610801 () Bool)

(assert (=> b!3976899 (=> (not res!1610801) (not e!2464061))))

(assert (=> b!3976899 (= res!1610801 (isPrefix!3785 lt!1394633 lt!1394633))))

(declare-fun lt!1394635 () Unit!61141)

(declare-fun lemmaIsPrefixRefl!2377 (List!42614 List!42614) Unit!61141)

(assert (=> b!3976899 (= lt!1394635 (lemmaIsPrefixRefl!2377 lt!1394633 lt!1394633))))

(declare-fun res!1610803 () Bool)

(assert (=> start!374344 (=> (not res!1610803) (not e!2464069))))

(get-info :version)

(assert (=> start!374344 (= res!1610803 ((_ is Lexer!6285) thiss!21717))))

(assert (=> start!374344 e!2464069))

(declare-fun e!2464073 () Bool)

(assert (=> start!374344 e!2464073))

(declare-fun inv!56771 (Token!12534) Bool)

(assert (=> start!374344 (and (inv!56771 token!484) e!2464071)))

(assert (=> start!374344 e!2464057))

(assert (=> start!374344 e!2464051))

(assert (=> start!374344 e!2464049))

(assert (=> start!374344 true))

(assert (=> start!374344 e!2464054))

(assert (=> start!374344 e!2464063))

(declare-fun b!3976900 () Bool)

(declare-fun e!2464055 () Bool)

(assert (=> b!3976900 (= e!2464055 e!2464053)))

(declare-fun res!1610800 () Bool)

(assert (=> b!3976900 (=> res!1610800 e!2464053)))

(assert (=> b!3976900 (= res!1610800 (not (= lt!1394615 prefix!494)))))

(assert (=> b!3976900 (= lt!1394615 (++!11100 lt!1394639 lt!1394626))))

(assert (=> b!3976900 (= lt!1394626 (getSuffix!2216 prefix!494 lt!1394639))))

(assert (=> b!3976900 (isPrefix!3785 lt!1394639 prefix!494)))

(declare-fun lt!1394632 () Unit!61141)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!363 (List!42614 List!42614 List!42614) Unit!61141)

(assert (=> b!3976900 (= lt!1394632 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!363 prefix!494 lt!1394639 lt!1394633))))

(declare-fun b!3976901 () Bool)

(assert (=> b!3976901 (= e!2464052 e!2464067)))

(declare-fun res!1610799 () Bool)

(assert (=> b!3976901 (=> (not res!1610799) (not e!2464067))))

(declare-datatypes ((Option!9112 0))(
  ( (None!9111) (Some!9111 (v!39459 tuple2!41732)) )
))
(declare-fun lt!1394623 () Option!9112)

(declare-fun maxPrefix!3585 (LexerInterface!6287 List!42616 List!42614) Option!9112)

(assert (=> b!3976901 (= res!1610799 (= (maxPrefix!3585 thiss!21717 rules!2999 lt!1394633) lt!1394623))))

(assert (=> b!3976901 (= lt!1394623 (Some!9111 lt!1394643))))

(assert (=> b!3976901 (= lt!1394643 (tuple2!41733 token!484 suffixResult!105))))

(assert (=> b!3976901 (= lt!1394633 (++!11100 prefix!494 suffix!1299))))

(declare-fun b!3976902 () Bool)

(declare-fun e!2464056 () Bool)

(assert (=> b!3976902 (= e!2464062 e!2464056)))

(declare-fun res!1610808 () Bool)

(assert (=> b!3976902 (=> res!1610808 e!2464056)))

(declare-fun lt!1394613 () Option!9112)

(assert (=> b!3976902 (= res!1610808 (not (= lt!1394613 lt!1394623)))))

(assert (=> b!3976902 (= lt!1394613 (Some!9111 (tuple2!41733 lt!1394612 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2619 (LexerInterface!6287 Rule!13196 List!42614) Option!9112)

(assert (=> b!3976902 (= lt!1394613 (maxPrefixOneRule!2619 thiss!21717 (rule!9698 token!484) lt!1394633))))

(assert (=> b!3976902 (= lt!1394612 (Token!12535 lt!1394620 (rule!9698 token!484) lt!1394638 lt!1394639))))

(declare-fun apply!9909 (TokenValueInjection!13284 BalanceConc!25412) TokenValue!6928)

(declare-fun seqFromList!4937 (List!42614) BalanceConc!25412)

(assert (=> b!3976902 (= lt!1394620 (apply!9909 (transformation!6698 (rule!9698 token!484)) (seqFromList!4937 lt!1394639)))))

(declare-fun lt!1394630 () Unit!61141)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1441 (LexerInterface!6287 List!42616 List!42614 List!42614 List!42614 Rule!13196) Unit!61141)

(assert (=> b!3976902 (= lt!1394630 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1441 thiss!21717 rules!2999 lt!1394639 lt!1394633 suffixResult!105 (rule!9698 token!484)))))

(assert (=> b!3976902 (= lt!1394637 suffixResult!105)))

(declare-fun lt!1394627 () Unit!61141)

(assert (=> b!3976902 (= lt!1394627 (lemmaSamePrefixThenSameSuffix!1972 lt!1394639 lt!1394637 lt!1394639 suffixResult!105 lt!1394633))))

(assert (=> b!3976902 (isPrefix!3785 lt!1394639 lt!1394631)))

(declare-fun lt!1394616 () Unit!61141)

(assert (=> b!3976902 (= lt!1394616 (lemmaConcatTwoListThenFirstIsPrefix!2628 lt!1394639 lt!1394637))))

(declare-fun b!3976903 () Bool)

(declare-fun tp!1212492 () Bool)

(assert (=> b!3976903 (= e!2464073 (and tp_is_empty!20177 tp!1212492))))

(declare-fun b!3976904 () Bool)

(assert (=> b!3976904 (= e!2464056 e!2464066)))

(declare-fun res!1610810 () Bool)

(assert (=> b!3976904 (=> res!1610810 e!2464066)))

(declare-fun matchR!5580 (Regex!11603 List!42614) Bool)

(assert (=> b!3976904 (= res!1610810 (not (matchR!5580 (regex!6698 (rule!9698 token!484)) lt!1394639)))))

(assert (=> b!3976904 (isPrefix!3785 lt!1394639 lt!1394610)))

(declare-fun lt!1394611 () Unit!61141)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!618 (List!42614 List!42614 List!42614) Unit!61141)

(assert (=> b!3976904 (= lt!1394611 (lemmaPrefixStaysPrefixWhenAddingToSuffix!618 lt!1394639 prefix!494 newSuffix!27))))

(declare-fun lt!1394618 () Unit!61141)

(assert (=> b!3976904 (= lt!1394618 (lemmaPrefixStaysPrefixWhenAddingToSuffix!618 lt!1394639 prefix!494 suffix!1299))))

(declare-fun b!3976905 () Bool)

(declare-fun res!1610806 () Bool)

(assert (=> b!3976905 (=> (not res!1610806) (not e!2464069))))

(declare-fun isEmpty!25412 (List!42616) Bool)

(assert (=> b!3976905 (= res!1610806 (not (isEmpty!25412 rules!2999)))))

(declare-fun b!3976906 () Bool)

(assert (=> b!3976906 (= e!2464069 e!2464068)))

(declare-fun res!1610795 () Bool)

(assert (=> b!3976906 (=> (not res!1610795) (not e!2464068))))

(declare-fun lt!1394614 () Int)

(assert (=> b!3976906 (= res!1610795 (>= lt!1394614 lt!1394638))))

(assert (=> b!3976906 (= lt!1394638 (size!31789 lt!1394639))))

(assert (=> b!3976906 (= lt!1394614 (size!31789 prefix!494))))

(declare-fun list!15770 (BalanceConc!25412) List!42614)

(declare-fun charsOf!4514 (Token!12534) BalanceConc!25412)

(assert (=> b!3976906 (= lt!1394639 (list!15770 (charsOf!4514 token!484)))))

(declare-fun b!3976907 () Bool)

(assert (=> b!3976907 (= e!2464072 e!2464055)))

(declare-fun res!1610804 () Bool)

(assert (=> b!3976907 (=> res!1610804 e!2464055)))

(assert (=> b!3976907 (= res!1610804 (not (isPrefix!3785 lt!1394639 lt!1394633)))))

(assert (=> b!3976907 (isPrefix!3785 prefix!494 lt!1394633)))

(declare-fun lt!1394634 () Unit!61141)

(assert (=> b!3976907 (= lt!1394634 (lemmaConcatTwoListThenFirstIsPrefix!2628 prefix!494 suffix!1299))))

(assert (=> b!3976907 (isPrefix!3785 lt!1394639 lt!1394640)))

(declare-fun lt!1394617 () Unit!61141)

(assert (=> b!3976907 (= lt!1394617 (lemmaConcatTwoListThenFirstIsPrefix!2628 lt!1394639 suffixResult!105))))

(assert (=> b!3976908 (= e!2464058 (and tp!1212502 tp!1212491))))

(assert (= (and start!374344 res!1610803) b!3976905))

(assert (= (and b!3976905 res!1610806) b!3976896))

(assert (= (and b!3976896 res!1610794) b!3976888))

(assert (= (and b!3976888 res!1610797) b!3976894))

(assert (= (and b!3976894 res!1610807) b!3976906))

(assert (= (and b!3976906 res!1610795) b!3976890))

(assert (= (and b!3976890 res!1610796) b!3976901))

(assert (= (and b!3976901 res!1610799) b!3976893))

(assert (= (and b!3976893 (not res!1610809)) b!3976907))

(assert (= (and b!3976907 (not res!1610804)) b!3976900))

(assert (= (and b!3976900 (not res!1610800)) b!3976892))

(assert (= (and b!3976892 (not res!1610793)) b!3976902))

(assert (= (and b!3976902 (not res!1610808)) b!3976904))

(assert (= (and b!3976904 (not res!1610810)) b!3976899))

(assert (= (and b!3976899 res!1610801) b!3976880))

(assert (= (and b!3976880 res!1610805) b!3976895))

(assert (= (and b!3976895 res!1610798) b!3976882))

(assert (= (and b!3976899 (not res!1610802)) b!3976891))

(assert (= (and start!374344 ((_ is Cons!42490) prefix!494)) b!3976903))

(assert (= b!3976881 b!3976908))

(assert (= b!3976883 b!3976881))

(assert (= start!374344 b!3976883))

(assert (= (and start!374344 ((_ is Cons!42490) suffixResult!105)) b!3976898))

(assert (= (and start!374344 ((_ is Cons!42490) suffix!1299)) b!3976887))

(assert (= (and start!374344 ((_ is Cons!42490) newSuffix!27)) b!3976897))

(assert (= b!3976886 b!3976884))

(assert (= b!3976889 b!3976886))

(assert (= (and start!374344 ((_ is Cons!42492) rules!2999)) b!3976889))

(assert (= (and start!374344 ((_ is Cons!42490) newSuffixResult!27)) b!3976885))

(declare-fun m!4548161 () Bool)

(assert (=> b!3976905 m!4548161))

(declare-fun m!4548163 () Bool)

(assert (=> b!3976895 m!4548163))

(declare-fun m!4548165 () Bool)

(assert (=> b!3976894 m!4548165))

(declare-fun m!4548167 () Bool)

(assert (=> b!3976896 m!4548167))

(declare-fun m!4548169 () Bool)

(assert (=> b!3976900 m!4548169))

(declare-fun m!4548171 () Bool)

(assert (=> b!3976900 m!4548171))

(declare-fun m!4548173 () Bool)

(assert (=> b!3976900 m!4548173))

(declare-fun m!4548175 () Bool)

(assert (=> b!3976900 m!4548175))

(declare-fun m!4548177 () Bool)

(assert (=> b!3976892 m!4548177))

(declare-fun m!4548179 () Bool)

(assert (=> b!3976892 m!4548179))

(declare-fun m!4548181 () Bool)

(assert (=> b!3976892 m!4548181))

(declare-fun m!4548183 () Bool)

(assert (=> b!3976892 m!4548183))

(declare-fun m!4548185 () Bool)

(assert (=> b!3976888 m!4548185))

(declare-fun m!4548187 () Bool)

(assert (=> b!3976888 m!4548187))

(declare-fun m!4548189 () Bool)

(assert (=> b!3976901 m!4548189))

(declare-fun m!4548191 () Bool)

(assert (=> b!3976901 m!4548191))

(declare-fun m!4548193 () Bool)

(assert (=> b!3976881 m!4548193))

(declare-fun m!4548195 () Bool)

(assert (=> b!3976881 m!4548195))

(declare-fun m!4548197 () Bool)

(assert (=> b!3976890 m!4548197))

(declare-fun m!4548199 () Bool)

(assert (=> b!3976890 m!4548199))

(declare-fun m!4548201 () Bool)

(assert (=> b!3976902 m!4548201))

(declare-fun m!4548203 () Bool)

(assert (=> b!3976902 m!4548203))

(declare-fun m!4548205 () Bool)

(assert (=> b!3976902 m!4548205))

(declare-fun m!4548207 () Bool)

(assert (=> b!3976902 m!4548207))

(declare-fun m!4548209 () Bool)

(assert (=> b!3976902 m!4548209))

(declare-fun m!4548211 () Bool)

(assert (=> b!3976902 m!4548211))

(assert (=> b!3976902 m!4548207))

(declare-fun m!4548213 () Bool)

(assert (=> b!3976902 m!4548213))

(declare-fun m!4548215 () Bool)

(assert (=> b!3976883 m!4548215))

(declare-fun m!4548217 () Bool)

(assert (=> b!3976886 m!4548217))

(declare-fun m!4548219 () Bool)

(assert (=> b!3976886 m!4548219))

(declare-fun m!4548221 () Bool)

(assert (=> b!3976891 m!4548221))

(declare-fun m!4548223 () Bool)

(assert (=> b!3976891 m!4548223))

(declare-fun m!4548225 () Bool)

(assert (=> b!3976891 m!4548225))

(declare-fun m!4548227 () Bool)

(assert (=> b!3976891 m!4548227))

(declare-fun m!4548229 () Bool)

(assert (=> start!374344 m!4548229))

(declare-fun m!4548231 () Bool)

(assert (=> b!3976893 m!4548231))

(declare-fun m!4548233 () Bool)

(assert (=> b!3976893 m!4548233))

(declare-fun m!4548235 () Bool)

(assert (=> b!3976893 m!4548235))

(declare-fun m!4548237 () Bool)

(assert (=> b!3976893 m!4548237))

(declare-fun m!4548239 () Bool)

(assert (=> b!3976904 m!4548239))

(declare-fun m!4548241 () Bool)

(assert (=> b!3976904 m!4548241))

(declare-fun m!4548243 () Bool)

(assert (=> b!3976904 m!4548243))

(declare-fun m!4548245 () Bool)

(assert (=> b!3976904 m!4548245))

(declare-fun m!4548247 () Bool)

(assert (=> b!3976906 m!4548247))

(declare-fun m!4548249 () Bool)

(assert (=> b!3976906 m!4548249))

(declare-fun m!4548251 () Bool)

(assert (=> b!3976906 m!4548251))

(assert (=> b!3976906 m!4548251))

(declare-fun m!4548253 () Bool)

(assert (=> b!3976906 m!4548253))

(declare-fun m!4548255 () Bool)

(assert (=> b!3976907 m!4548255))

(declare-fun m!4548257 () Bool)

(assert (=> b!3976907 m!4548257))

(declare-fun m!4548259 () Bool)

(assert (=> b!3976907 m!4548259))

(declare-fun m!4548261 () Bool)

(assert (=> b!3976907 m!4548261))

(declare-fun m!4548263 () Bool)

(assert (=> b!3976907 m!4548263))

(declare-fun m!4548265 () Bool)

(assert (=> b!3976899 m!4548265))

(declare-fun m!4548267 () Bool)

(assert (=> b!3976899 m!4548267))

(declare-fun m!4548269 () Bool)

(assert (=> b!3976899 m!4548269))

(declare-fun m!4548271 () Bool)

(assert (=> b!3976899 m!4548271))

(check-sat (not b!3976899) (not b_next!111013) (not start!374344) (not b!3976903) (not b!3976886) (not b!3976892) (not b!3976894) (not b!3976904) (not b!3976883) (not b!3976905) tp_is_empty!20177 b_and!305699 (not b!3976906) (not b_next!111009) (not b!3976889) (not b!3976897) (not b_next!111011) (not b!3976902) b_and!305701 (not b!3976890) (not b!3976885) (not b!3976887) b_and!305697 (not b!3976881) (not b!3976900) (not b_next!111015) (not b!3976901) b_and!305695 (not b!3976896) (not b!3976895) (not b!3976907) (not b!3976893) (not b!3976898) (not b!3976888) (not b!3976891))
(check-sat (not b_next!111009) (not b_next!111013) (not b_next!111011) b_and!305701 b_and!305697 (not b_next!111015) b_and!305695 b_and!305699)
