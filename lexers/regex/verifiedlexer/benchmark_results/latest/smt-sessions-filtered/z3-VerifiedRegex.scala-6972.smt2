; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!369784 () Bool)

(assert start!369784)

(declare-fun b!3938696 () Bool)

(declare-fun b_free!107621 () Bool)

(declare-fun b_next!108325 () Bool)

(assert (=> b!3938696 (= b_free!107621 (not b_next!108325))))

(declare-fun tp!1198449 () Bool)

(declare-fun b_and!300839 () Bool)

(assert (=> b!3938696 (= tp!1198449 b_and!300839)))

(declare-fun b_free!107623 () Bool)

(declare-fun b_next!108327 () Bool)

(assert (=> b!3938696 (= b_free!107623 (not b_next!108327))))

(declare-fun tp!1198459 () Bool)

(declare-fun b_and!300841 () Bool)

(assert (=> b!3938696 (= tp!1198459 b_and!300841)))

(declare-fun b!3938714 () Bool)

(declare-fun b_free!107625 () Bool)

(declare-fun b_next!108329 () Bool)

(assert (=> b!3938714 (= b_free!107625 (not b_next!108329))))

(declare-fun tp!1198447 () Bool)

(declare-fun b_and!300843 () Bool)

(assert (=> b!3938714 (= tp!1198447 b_and!300843)))

(declare-fun b_free!107627 () Bool)

(declare-fun b_next!108331 () Bool)

(assert (=> b!3938714 (= b_free!107627 (not b_next!108331))))

(declare-fun tp!1198448 () Bool)

(declare-fun b_and!300845 () Bool)

(assert (=> b!3938714 (= tp!1198448 b_and!300845)))

(declare-fun b!3938711 () Bool)

(declare-fun b_free!107629 () Bool)

(declare-fun b_next!108333 () Bool)

(assert (=> b!3938711 (= b_free!107629 (not b_next!108333))))

(declare-fun tp!1198452 () Bool)

(declare-fun b_and!300847 () Bool)

(assert (=> b!3938711 (= tp!1198452 b_and!300847)))

(declare-fun b_free!107631 () Bool)

(declare-fun b_next!108335 () Bool)

(assert (=> b!3938711 (= b_free!107631 (not b_next!108335))))

(declare-fun tp!1198450 () Bool)

(declare-fun b_and!300849 () Bool)

(assert (=> b!3938711 (= tp!1198450 b_and!300849)))

(declare-fun e!2436887 () Bool)

(assert (=> b!3938696 (= e!2436887 (and tp!1198449 tp!1198459))))

(declare-fun b!3938697 () Bool)

(declare-fun res!1593963 () Bool)

(declare-fun e!2436892 () Bool)

(assert (=> b!3938697 (=> res!1593963 e!2436892)))

(declare-fun lt!1377621 () Int)

(declare-datatypes ((C!23060 0))(
  ( (C!23061 (val!13624 Int)) )
))
(declare-datatypes ((List!41935 0))(
  ( (Nil!41811) (Cons!41811 (h!47231 C!23060) (t!326610 List!41935)) )
))
(declare-fun size!31368 (List!41935) Int)

(assert (=> b!3938697 (= res!1593963 (<= lt!1377621 (size!31368 Nil!41811)))))

(declare-fun b!3938698 () Bool)

(declare-fun e!2436869 () Bool)

(declare-fun e!2436864 () Bool)

(declare-fun tp!1198444 () Bool)

(assert (=> b!3938698 (= e!2436869 (and e!2436864 tp!1198444))))

(declare-fun b!3938699 () Bool)

(declare-fun e!2436879 () Bool)

(declare-fun e!2436896 () Bool)

(assert (=> b!3938699 (= e!2436879 e!2436896)))

(declare-fun res!1593950 () Bool)

(assert (=> b!3938699 (=> res!1593950 e!2436896)))

(declare-datatypes ((IArray!25491 0))(
  ( (IArray!25492 (innerList!12803 List!41935)) )
))
(declare-datatypes ((Conc!12743 0))(
  ( (Node!12743 (left!31867 Conc!12743) (right!32197 Conc!12743) (csize!25716 Int) (cheight!12954 Int)) (Leaf!19716 (xs!16049 IArray!25491) (csize!25717 Int)) (Empty!12743) )
))
(declare-datatypes ((BalanceConc!25080 0))(
  ( (BalanceConc!25081 (c!684366 Conc!12743)) )
))
(declare-datatypes ((List!41936 0))(
  ( (Nil!41812) (Cons!41812 (h!47232 (_ BitVec 16)) (t!326611 List!41936)) )
))
(declare-datatypes ((TokenValue!6762 0))(
  ( (FloatLiteralValue!13524 (text!47779 List!41936)) (TokenValueExt!6761 (__x!25741 Int)) (Broken!33810 (value!206770 List!41936)) (Object!6885) (End!6762) (Def!6762) (Underscore!6762) (Match!6762) (Else!6762) (Error!6762) (Case!6762) (If!6762) (Extends!6762) (Abstract!6762) (Class!6762) (Val!6762) (DelimiterValue!13524 (del!6822 List!41936)) (KeywordValue!6768 (value!206771 List!41936)) (CommentValue!13524 (value!206772 List!41936)) (WhitespaceValue!13524 (value!206773 List!41936)) (IndentationValue!6762 (value!206774 List!41936)) (String!47527) (Int32!6762) (Broken!33811 (value!206775 List!41936)) (Boolean!6763) (Unit!60352) (OperatorValue!6765 (op!6822 List!41936)) (IdentifierValue!13524 (value!206776 List!41936)) (IdentifierValue!13525 (value!206777 List!41936)) (WhitespaceValue!13525 (value!206778 List!41936)) (True!13524) (False!13524) (Broken!33812 (value!206779 List!41936)) (Broken!33813 (value!206780 List!41936)) (True!13525) (RightBrace!6762) (RightBracket!6762) (Colon!6762) (Null!6762) (Comma!6762) (LeftBracket!6762) (False!13525) (LeftBrace!6762) (ImaginaryLiteralValue!6762 (text!47780 List!41936)) (StringLiteralValue!20286 (value!206781 List!41936)) (EOFValue!6762 (value!206782 List!41936)) (IdentValue!6762 (value!206783 List!41936)) (DelimiterValue!13525 (value!206784 List!41936)) (DedentValue!6762 (value!206785 List!41936)) (NewLineValue!6762 (value!206786 List!41936)) (IntegerValue!20286 (value!206787 (_ BitVec 32)) (text!47781 List!41936)) (IntegerValue!20287 (value!206788 Int) (text!47782 List!41936)) (Times!6762) (Or!6762) (Equal!6762) (Minus!6762) (Broken!33814 (value!206789 List!41936)) (And!6762) (Div!6762) (LessEqual!6762) (Mod!6762) (Concat!18199) (Not!6762) (Plus!6762) (SpaceValue!6762 (value!206790 List!41936)) (IntegerValue!20288 (value!206791 Int) (text!47783 List!41936)) (StringLiteralValue!20287 (text!47784 List!41936)) (FloatLiteralValue!13525 (text!47785 List!41936)) (BytesLiteralValue!6762 (value!206792 List!41936)) (CommentValue!13525 (value!206793 List!41936)) (StringLiteralValue!20288 (value!206794 List!41936)) (ErrorTokenValue!6762 (msg!6823 List!41936)) )
))
(declare-datatypes ((Regex!11437 0))(
  ( (ElementMatch!11437 (c!684367 C!23060)) (Concat!18200 (regOne!23386 Regex!11437) (regTwo!23386 Regex!11437)) (EmptyExpr!11437) (Star!11437 (reg!11766 Regex!11437)) (EmptyLang!11437) (Union!11437 (regOne!23387 Regex!11437) (regTwo!23387 Regex!11437)) )
))
(declare-datatypes ((String!47528 0))(
  ( (String!47529 (value!206795 String)) )
))
(declare-datatypes ((TokenValueInjection!12952 0))(
  ( (TokenValueInjection!12953 (toValue!8992 Int) (toChars!8851 Int)) )
))
(declare-datatypes ((Rule!12864 0))(
  ( (Rule!12865 (regex!6532 Regex!11437) (tag!7392 String!47528) (isSeparator!6532 Bool) (transformation!6532 TokenValueInjection!12952)) )
))
(declare-datatypes ((Token!12202 0))(
  ( (Token!12203 (value!206796 TokenValue!6762) (rule!9488 Rule!12864) (size!31369 Int) (originalCharacters!7132 List!41935)) )
))
(declare-datatypes ((List!41937 0))(
  ( (Nil!41813) (Cons!41813 (h!47233 Token!12202) (t!326612 List!41937)) )
))
(declare-datatypes ((tuple2!41098 0))(
  ( (tuple2!41099 (_1!23683 List!41937) (_2!23683 List!41935)) )
))
(declare-fun lt!1377616 () tuple2!41098)

(declare-fun lt!1377624 () tuple2!41098)

(assert (=> b!3938699 (= res!1593950 (not (= lt!1377616 lt!1377624)))))

(declare-fun lt!1377627 () List!41937)

(declare-fun suffixResult!91 () List!41935)

(assert (=> b!3938699 (= lt!1377624 (tuple2!41099 lt!1377627 suffixResult!91))))

(declare-fun lt!1377619 () List!41937)

(declare-fun suffixTokens!72 () List!41937)

(declare-fun ++!10821 (List!41937 List!41937) List!41937)

(assert (=> b!3938699 (= lt!1377627 (++!10821 lt!1377619 suffixTokens!72))))

(declare-fun prefixTokens!80 () List!41937)

(declare-fun tail!6095 (List!41937) List!41937)

(assert (=> b!3938699 (= lt!1377619 (tail!6095 prefixTokens!80))))

(declare-fun lt!1377613 () List!41935)

(declare-fun lt!1377597 () List!41935)

(declare-fun isPrefix!3627 (List!41935 List!41935) Bool)

(assert (=> b!3938699 (isPrefix!3627 lt!1377613 lt!1377597)))

(declare-datatypes ((Unit!60353 0))(
  ( (Unit!60354) )
))
(declare-fun lt!1377631 () Unit!60353)

(declare-fun suffix!1176 () List!41935)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2490 (List!41935 List!41935) Unit!60353)

(assert (=> b!3938699 (= lt!1377631 (lemmaConcatTwoListThenFirstIsPrefix!2490 lt!1377613 suffix!1176))))

(declare-fun b!3938700 () Bool)

(declare-fun res!1593960 () Bool)

(declare-fun e!2436883 () Bool)

(assert (=> b!3938700 (=> (not res!1593960) (not e!2436883))))

(declare-fun isEmpty!24938 (List!41937) Bool)

(assert (=> b!3938700 (= res!1593960 (not (isEmpty!24938 prefixTokens!80)))))

(declare-fun b!3938701 () Bool)

(declare-fun e!2436904 () Unit!60353)

(declare-fun Unit!60355 () Unit!60353)

(assert (=> b!3938701 (= e!2436904 Unit!60355)))

(declare-fun lt!1377630 () Unit!60353)

(declare-fun lt!1377618 () List!41935)

(declare-datatypes ((tuple2!41100 0))(
  ( (tuple2!41101 (_1!23684 Token!12202) (_2!23684 List!41935)) )
))
(declare-datatypes ((Option!8952 0))(
  ( (None!8951) (Some!8951 (v!39281 tuple2!41100)) )
))
(declare-fun lt!1377612 () Option!8952)

(declare-fun lt!1377594 () tuple2!41100)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!580 (List!41935 List!41935 List!41935 List!41935) Unit!60353)

(assert (=> b!3938701 (= lt!1377630 (lemmaConcatSameAndSameSizesThenSameLists!580 lt!1377618 (_2!23684 (v!39281 lt!1377612)) lt!1377618 (_2!23684 lt!1377594)))))

(assert (=> b!3938701 (= (_2!23684 (v!39281 lt!1377612)) (_2!23684 lt!1377594))))

(declare-datatypes ((LexerInterface!6121 0))(
  ( (LexerInterfaceExt!6118 (__x!25742 Int)) (Lexer!6119) )
))
(declare-fun thiss!20629 () LexerInterface!6121)

(declare-datatypes ((List!41938 0))(
  ( (Nil!41814) (Cons!41814 (h!47234 Rule!12864) (t!326613 List!41938)) )
))
(declare-fun rules!2768 () List!41938)

(declare-fun lt!1377614 () Unit!60353)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!132 (LexerInterface!6121 List!41938 List!41935 List!41935 List!41937 List!41935) Unit!60353)

(assert (=> b!3938701 (= lt!1377614 (lemmaLexWithSmallerInputCannotProduceSameResults!132 thiss!20629 rules!2768 suffix!1176 (_2!23684 lt!1377594) suffixTokens!72 suffixResult!91))))

(declare-fun res!1593974 () Bool)

(declare-fun call!285030 () tuple2!41098)

(declare-fun lt!1377599 () tuple2!41098)

(assert (=> b!3938701 (= res!1593974 (not (= call!285030 lt!1377599)))))

(declare-fun e!2436877 () Bool)

(assert (=> b!3938701 (=> (not res!1593974) (not e!2436877))))

(assert (=> b!3938701 e!2436877))

(declare-fun b!3938702 () Bool)

(declare-fun e!2436878 () Unit!60353)

(declare-fun Unit!60356 () Unit!60353)

(assert (=> b!3938702 (= e!2436878 Unit!60356)))

(declare-fun lt!1377626 () Unit!60353)

(assert (=> b!3938702 (= lt!1377626 (lemmaLexWithSmallerInputCannotProduceSameResults!132 thiss!20629 rules!2768 (_2!23684 (v!39281 lt!1377612)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3938702 false))

(declare-fun b!3938703 () Bool)

(declare-fun e!2436902 () Bool)

(declare-fun e!2436894 () Bool)

(assert (=> b!3938703 (= e!2436902 e!2436894)))

(declare-fun res!1593956 () Bool)

(assert (=> b!3938703 (=> res!1593956 e!2436894)))

(declare-fun lt!1377606 () List!41935)

(declare-fun lt!1377600 () List!41935)

(declare-fun lt!1377625 () List!41935)

(assert (=> b!3938703 (= res!1593956 (or (not (= lt!1377625 lt!1377600)) (not (= lt!1377625 lt!1377606))))))

(declare-fun lt!1377628 () List!41935)

(declare-fun ++!10822 (List!41935 List!41935) List!41935)

(assert (=> b!3938703 (= lt!1377625 (++!10822 lt!1377628 suffix!1176))))

(declare-fun b!3938704 () Bool)

(declare-fun e!2436886 () Bool)

(declare-fun e!2436876 () Bool)

(assert (=> b!3938704 (= e!2436886 e!2436876)))

(declare-fun res!1593969 () Bool)

(assert (=> b!3938704 (=> res!1593969 e!2436876)))

(declare-fun lt!1377603 () Int)

(assert (=> b!3938704 (= res!1593969 (<= lt!1377603 lt!1377621))))

(declare-fun lt!1377607 () Unit!60353)

(declare-fun e!2436899 () Unit!60353)

(assert (=> b!3938704 (= lt!1377607 e!2436899)))

(declare-fun c!684364 () Bool)

(assert (=> b!3938704 (= c!684364 (= lt!1377603 lt!1377621))))

(declare-fun lt!1377623 () Unit!60353)

(declare-fun e!2436901 () Unit!60353)

(assert (=> b!3938704 (= lt!1377623 e!2436901)))

(declare-fun c!684361 () Bool)

(assert (=> b!3938704 (= c!684361 (< lt!1377603 lt!1377621))))

(assert (=> b!3938704 (= lt!1377621 (size!31368 suffix!1176))))

(assert (=> b!3938704 (= lt!1377603 (size!31368 (_2!23684 (v!39281 lt!1377612))))))

(declare-fun b!3938705 () Bool)

(declare-fun e!2436889 () Bool)

(assert (=> b!3938705 (= e!2436883 e!2436889)))

(declare-fun res!1593958 () Bool)

(assert (=> b!3938705 (=> (not res!1593958) (not e!2436889))))

(declare-fun lt!1377586 () tuple2!41098)

(declare-fun lt!1377596 () List!41937)

(assert (=> b!3938705 (= res!1593958 (= lt!1377586 (tuple2!41099 lt!1377596 suffixResult!91)))))

(declare-fun lexList!1889 (LexerInterface!6121 List!41938 List!41935) tuple2!41098)

(assert (=> b!3938705 (= lt!1377586 (lexList!1889 thiss!20629 rules!2768 lt!1377600))))

(assert (=> b!3938705 (= lt!1377596 (++!10821 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41935)

(assert (=> b!3938705 (= lt!1377600 (++!10822 prefix!426 suffix!1176))))

(declare-fun b!3938706 () Bool)

(declare-fun e!2436881 () Bool)

(declare-fun e!2436903 () Bool)

(assert (=> b!3938706 (= e!2436881 (not e!2436903))))

(declare-fun res!1593967 () Bool)

(assert (=> b!3938706 (=> res!1593967 e!2436903)))

(assert (=> b!3938706 (= res!1593967 (not (= lt!1377606 lt!1377600)))))

(assert (=> b!3938706 (= lt!1377616 (lexList!1889 thiss!20629 rules!2768 (_2!23684 (v!39281 lt!1377612))))))

(declare-fun lt!1377632 () TokenValue!6762)

(declare-fun lt!1377608 () List!41935)

(declare-fun lt!1377584 () Int)

(assert (=> b!3938706 (and (= (size!31369 (_1!23684 (v!39281 lt!1377612))) lt!1377584) (= (originalCharacters!7132 (_1!23684 (v!39281 lt!1377612))) lt!1377618) (= (tuple2!41101 (_1!23684 (v!39281 lt!1377612)) (_2!23684 (v!39281 lt!1377612))) (tuple2!41101 (Token!12203 lt!1377632 (rule!9488 (_1!23684 (v!39281 lt!1377612))) lt!1377584 lt!1377618) lt!1377608)))))

(assert (=> b!3938706 (= lt!1377584 (size!31368 lt!1377618))))

(declare-fun e!2436891 () Bool)

(assert (=> b!3938706 e!2436891))

(declare-fun res!1593971 () Bool)

(assert (=> b!3938706 (=> (not res!1593971) (not e!2436891))))

(assert (=> b!3938706 (= res!1593971 (= (value!206796 (_1!23684 (v!39281 lt!1377612))) lt!1377632))))

(declare-fun apply!9771 (TokenValueInjection!12952 BalanceConc!25080) TokenValue!6762)

(declare-fun seqFromList!4799 (List!41935) BalanceConc!25080)

(assert (=> b!3938706 (= lt!1377632 (apply!9771 (transformation!6532 (rule!9488 (_1!23684 (v!39281 lt!1377612)))) (seqFromList!4799 lt!1377618)))))

(assert (=> b!3938706 (= (_2!23684 (v!39281 lt!1377612)) lt!1377608)))

(declare-fun lt!1377610 () Unit!60353)

(declare-fun lemmaSamePrefixThenSameSuffix!1848 (List!41935 List!41935 List!41935 List!41935 List!41935) Unit!60353)

(assert (=> b!3938706 (= lt!1377610 (lemmaSamePrefixThenSameSuffix!1848 lt!1377618 (_2!23684 (v!39281 lt!1377612)) lt!1377618 lt!1377608 lt!1377600))))

(declare-fun getSuffix!2082 (List!41935 List!41935) List!41935)

(assert (=> b!3938706 (= lt!1377608 (getSuffix!2082 lt!1377600 lt!1377618))))

(assert (=> b!3938706 (isPrefix!3627 lt!1377618 lt!1377606)))

(assert (=> b!3938706 (= lt!1377606 (++!10822 lt!1377618 (_2!23684 (v!39281 lt!1377612))))))

(declare-fun lt!1377592 () Unit!60353)

(assert (=> b!3938706 (= lt!1377592 (lemmaConcatTwoListThenFirstIsPrefix!2490 lt!1377618 (_2!23684 (v!39281 lt!1377612))))))

(declare-fun list!15536 (BalanceConc!25080) List!41935)

(declare-fun charsOf!4356 (Token!12202) BalanceConc!25080)

(assert (=> b!3938706 (= lt!1377618 (list!15536 (charsOf!4356 (_1!23684 (v!39281 lt!1377612)))))))

(declare-fun ruleValid!2480 (LexerInterface!6121 Rule!12864) Bool)

(assert (=> b!3938706 (ruleValid!2480 thiss!20629 (rule!9488 (_1!23684 (v!39281 lt!1377612))))))

(declare-fun lt!1377605 () Unit!60353)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1560 (LexerInterface!6121 Rule!12864 List!41938) Unit!60353)

(assert (=> b!3938706 (= lt!1377605 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1560 thiss!20629 (rule!9488 (_1!23684 (v!39281 lt!1377612))) rules!2768))))

(declare-fun lt!1377588 () Unit!60353)

(declare-fun lemmaCharactersSize!1189 (Token!12202) Unit!60353)

(assert (=> b!3938706 (= lt!1377588 (lemmaCharactersSize!1189 (_1!23684 (v!39281 lt!1377612))))))

(declare-fun bm!285025 () Bool)

(assert (=> bm!285025 (= call!285030 (lexList!1889 thiss!20629 rules!2768 (_2!23684 lt!1377594)))))

(declare-fun b!3938707 () Bool)

(declare-fun e!2436890 () Bool)

(declare-fun tp!1198460 () Bool)

(declare-fun inv!56011 (String!47528) Bool)

(declare-fun inv!56014 (TokenValueInjection!12952) Bool)

(assert (=> b!3938707 (= e!2436864 (and tp!1198460 (inv!56011 (tag!7392 (h!47234 rules!2768))) (inv!56014 (transformation!6532 (h!47234 rules!2768))) e!2436890))))

(declare-fun b!3938708 () Bool)

(declare-fun e!2436906 () Bool)

(assert (=> b!3938708 (= e!2436889 e!2436906)))

(declare-fun res!1593952 () Bool)

(assert (=> b!3938708 (=> (not res!1593952) (not e!2436906))))

(assert (=> b!3938708 (= res!1593952 (= (lexList!1889 thiss!20629 rules!2768 suffix!1176) lt!1377599))))

(assert (=> b!3938708 (= lt!1377599 (tuple2!41099 suffixTokens!72 suffixResult!91))))

(declare-fun b!3938709 () Bool)

(declare-fun e!2436863 () Bool)

(assert (=> b!3938709 (= e!2436896 e!2436863)))

(declare-fun res!1593968 () Bool)

(assert (=> b!3938709 (=> res!1593968 e!2436863)))

(declare-fun lt!1377601 () List!41937)

(assert (=> b!3938709 (= res!1593968 (not (= lt!1377601 lt!1377596)))))

(declare-fun lt!1377583 () List!41937)

(assert (=> b!3938709 (= lt!1377601 (++!10821 lt!1377583 lt!1377627))))

(assert (=> b!3938709 (= lt!1377601 (++!10821 (++!10821 lt!1377583 lt!1377619) suffixTokens!72))))

(declare-fun lt!1377580 () Unit!60353)

(declare-fun lemmaConcatAssociativity!2351 (List!41937 List!41937 List!41937) Unit!60353)

(assert (=> b!3938709 (= lt!1377580 (lemmaConcatAssociativity!2351 lt!1377583 lt!1377619 suffixTokens!72))))

(declare-fun lt!1377620 () Unit!60353)

(assert (=> b!3938709 (= lt!1377620 e!2436878)))

(declare-fun c!684362 () Bool)

(assert (=> b!3938709 (= c!684362 (isEmpty!24938 lt!1377619))))

(declare-fun b!3938710 () Bool)

(declare-fun e!2436888 () Bool)

(assert (=> b!3938710 (= e!2436892 e!2436888)))

(declare-fun res!1593953 () Bool)

(assert (=> b!3938710 (=> res!1593953 e!2436888)))

(assert (=> b!3938710 (= res!1593953 (not (isPrefix!3627 Nil!41811 suffix!1176)))))

(assert (=> b!3938710 (isPrefix!3627 Nil!41811 (++!10822 Nil!41811 suffix!1176))))

(declare-fun lt!1377622 () Unit!60353)

(assert (=> b!3938710 (= lt!1377622 (lemmaConcatTwoListThenFirstIsPrefix!2490 Nil!41811 suffix!1176))))

(assert (=> b!3938711 (= e!2436890 (and tp!1198452 tp!1198450))))

(declare-fun b!3938712 () Bool)

(declare-fun e!2436885 () Bool)

(assert (=> b!3938712 (= e!2436885 e!2436902)))

(declare-fun res!1593973 () Bool)

(assert (=> b!3938712 (=> res!1593973 e!2436902)))

(assert (=> b!3938712 (= res!1593973 (not (= lt!1377628 prefix!426)))))

(assert (=> b!3938712 (= lt!1377628 (++!10822 lt!1377618 lt!1377613))))

(assert (=> b!3938712 (= lt!1377613 (getSuffix!2082 prefix!426 lt!1377618))))

(declare-fun b!3938713 () Bool)

(declare-fun e!2436867 () Unit!60353)

(declare-fun Unit!60357 () Unit!60353)

(assert (=> b!3938713 (= e!2436867 Unit!60357)))

(declare-fun e!2436898 () Bool)

(assert (=> b!3938714 (= e!2436898 (and tp!1198447 tp!1198448))))

(declare-fun b!3938715 () Bool)

(declare-fun Unit!60358 () Unit!60353)

(assert (=> b!3938715 (= e!2436899 Unit!60358)))

(declare-fun lt!1377629 () Unit!60353)

(assert (=> b!3938715 (= lt!1377629 (lemmaConcatTwoListThenFirstIsPrefix!2490 prefix!426 suffix!1176))))

(assert (=> b!3938715 (isPrefix!3627 prefix!426 lt!1377600)))

(declare-fun lt!1377591 () Unit!60353)

(declare-fun lemmaIsPrefixSameLengthThenSameList!823 (List!41935 List!41935 List!41935) Unit!60353)

(assert (=> b!3938715 (= lt!1377591 (lemmaIsPrefixSameLengthThenSameList!823 lt!1377618 prefix!426 lt!1377600))))

(assert (=> b!3938715 (= lt!1377618 prefix!426)))

(declare-fun lt!1377585 () Unit!60353)

(assert (=> b!3938715 (= lt!1377585 (lemmaSamePrefixThenSameSuffix!1848 lt!1377618 (_2!23684 (v!39281 lt!1377612)) prefix!426 suffix!1176 lt!1377600))))

(assert (=> b!3938715 false))

(declare-fun b!3938716 () Bool)

(assert (=> b!3938716 (= e!2436891 (= (size!31369 (_1!23684 (v!39281 lt!1377612))) (size!31368 (originalCharacters!7132 (_1!23684 (v!39281 lt!1377612))))))))

(declare-fun b!3938717 () Bool)

(declare-fun res!1593976 () Bool)

(assert (=> b!3938717 (=> (not res!1593976) (not e!2436883))))

(declare-fun isEmpty!24939 (List!41935) Bool)

(assert (=> b!3938717 (= res!1593976 (not (isEmpty!24939 prefix!426)))))

(declare-fun b!3938718 () Bool)

(declare-fun Unit!60359 () Unit!60353)

(assert (=> b!3938718 (= e!2436904 Unit!60359)))

(declare-fun lt!1377611 () Unit!60353)

(declare-fun lt!1377609 () List!41937)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!132 (LexerInterface!6121 List!41938 List!41935 List!41935 List!41937 List!41935 List!41937) Unit!60353)

(assert (=> b!3938718 (= lt!1377611 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!132 thiss!20629 rules!2768 suffix!1176 (_2!23684 lt!1377594) suffixTokens!72 suffixResult!91 lt!1377609))))

(declare-fun res!1593955 () Bool)

(assert (=> b!3938718 (= res!1593955 (not (= call!285030 (tuple2!41099 (++!10821 lt!1377609 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2436893 () Bool)

(assert (=> b!3938718 (=> (not res!1593955) (not e!2436893))))

(assert (=> b!3938718 e!2436893))

(declare-fun b!3938719 () Bool)

(declare-fun e!2436897 () Bool)

(declare-fun tp_is_empty!19845 () Bool)

(declare-fun tp!1198453 () Bool)

(assert (=> b!3938719 (= e!2436897 (and tp_is_empty!19845 tp!1198453))))

(declare-fun e!2436905 () Bool)

(declare-fun b!3938720 () Bool)

(declare-fun e!2436865 () Bool)

(declare-fun tp!1198454 () Bool)

(declare-fun inv!21 (TokenValue!6762) Bool)

(assert (=> b!3938720 (= e!2436905 (and (inv!21 (value!206796 (h!47233 suffixTokens!72))) e!2436865 tp!1198454))))

(declare-fun b!3938721 () Bool)

(declare-fun c!684365 () Bool)

(assert (=> b!3938721 (= c!684365 (isEmpty!24938 lt!1377609))))

(assert (=> b!3938721 (= lt!1377609 (tail!6095 prefixTokens!80))))

(assert (=> b!3938721 (= e!2436867 e!2436904)))

(declare-fun b!3938722 () Bool)

(assert (=> b!3938722 (= e!2436876 e!2436885)))

(declare-fun res!1593949 () Bool)

(assert (=> b!3938722 (=> res!1593949 e!2436885)))

(declare-fun lt!1377595 () Int)

(assert (=> b!3938722 (= res!1593949 (>= lt!1377584 lt!1377595))))

(assert (=> b!3938722 (= lt!1377595 (size!31368 prefix!426))))

(assert (=> b!3938722 (isPrefix!3627 lt!1377618 prefix!426)))

(declare-fun lt!1377617 () Unit!60353)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!305 (List!41935 List!41935 List!41935) Unit!60353)

(assert (=> b!3938722 (= lt!1377617 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!305 prefix!426 lt!1377618 lt!1377600))))

(assert (=> b!3938722 (isPrefix!3627 prefix!426 lt!1377600)))

(declare-fun lt!1377615 () Unit!60353)

(assert (=> b!3938722 (= lt!1377615 (lemmaConcatTwoListThenFirstIsPrefix!2490 prefix!426 suffix!1176))))

(declare-fun tp!1198458 () Bool)

(declare-fun e!2436871 () Bool)

(declare-fun b!3938723 () Bool)

(assert (=> b!3938723 (= e!2436871 (and tp!1198458 (inv!56011 (tag!7392 (rule!9488 (h!47233 prefixTokens!80)))) (inv!56014 (transformation!6532 (rule!9488 (h!47233 prefixTokens!80)))) e!2436898))))

(declare-fun b!3938724 () Bool)

(assert (=> b!3938724 (= e!2436903 e!2436886)))

(declare-fun res!1593947 () Bool)

(assert (=> b!3938724 (=> res!1593947 e!2436886)))

(assert (=> b!3938724 (= res!1593947 (not (= lt!1377586 (tuple2!41099 (++!10821 lt!1377583 (_1!23683 lt!1377616)) (_2!23683 lt!1377616)))))))

(assert (=> b!3938724 (= lt!1377583 (Cons!41813 (_1!23684 (v!39281 lt!1377612)) Nil!41813))))

(declare-fun b!3938725 () Bool)

(assert (=> b!3938725 (= e!2436863 e!2436892)))

(declare-fun res!1593954 () Bool)

(assert (=> b!3938725 (=> res!1593954 e!2436892)))

(assert (=> b!3938725 (= res!1593954 (not (= lt!1377612 (Some!8951 (tuple2!41101 (_1!23684 (v!39281 lt!1377612)) (_2!23684 (v!39281 lt!1377612)))))))))

(assert (=> b!3938725 (= (lexList!1889 thiss!20629 rules!2768 lt!1377613) (tuple2!41099 lt!1377619 Nil!41811))))

(declare-fun lt!1377581 () Unit!60353)

(declare-fun lemmaLexThenLexPrefix!617 (LexerInterface!6121 List!41938 List!41935 List!41935 List!41937 List!41937 List!41935) Unit!60353)

(assert (=> b!3938725 (= lt!1377581 (lemmaLexThenLexPrefix!617 thiss!20629 rules!2768 lt!1377613 suffix!1176 lt!1377619 suffixTokens!72 suffixResult!91))))

(declare-fun b!3938726 () Bool)

(assert (=> b!3938726 (= e!2436877 false)))

(declare-fun b!3938727 () Bool)

(declare-fun e!2436874 () Bool)

(declare-fun tp!1198451 () Bool)

(assert (=> b!3938727 (= e!2436874 (and tp_is_empty!19845 tp!1198451))))

(declare-fun e!2436873 () Bool)

(declare-fun b!3938728 () Bool)

(declare-fun tp!1198445 () Bool)

(declare-fun inv!56015 (Token!12202) Bool)

(assert (=> b!3938728 (= e!2436873 (and (inv!56015 (h!47233 suffixTokens!72)) e!2436905 tp!1198445))))

(declare-fun b!3938729 () Bool)

(declare-fun e!2436900 () Bool)

(declare-fun e!2436872 () Bool)

(declare-fun tp!1198455 () Bool)

(assert (=> b!3938729 (= e!2436900 (and (inv!56015 (h!47233 prefixTokens!80)) e!2436872 tp!1198455))))

(declare-fun res!1593951 () Bool)

(assert (=> start!369784 (=> (not res!1593951) (not e!2436883))))

(get-info :version)

(assert (=> start!369784 (= res!1593951 ((_ is Lexer!6119) thiss!20629))))

(assert (=> start!369784 e!2436883))

(declare-fun e!2436870 () Bool)

(assert (=> start!369784 e!2436870))

(assert (=> start!369784 true))

(assert (=> start!369784 e!2436874))

(assert (=> start!369784 e!2436869))

(assert (=> start!369784 e!2436900))

(assert (=> start!369784 e!2436873))

(assert (=> start!369784 e!2436897))

(declare-fun b!3938730 () Bool)

(declare-fun res!1593957 () Bool)

(assert (=> b!3938730 (=> (not res!1593957) (not e!2436883))))

(declare-fun rulesInvariant!5464 (LexerInterface!6121 List!41938) Bool)

(assert (=> b!3938730 (= res!1593957 (rulesInvariant!5464 thiss!20629 rules!2768))))

(declare-fun tp!1198446 () Bool)

(declare-fun b!3938731 () Bool)

(assert (=> b!3938731 (= e!2436872 (and (inv!21 (value!206796 (h!47233 prefixTokens!80))) e!2436871 tp!1198446))))

(declare-fun lt!1377582 () Option!8952)

(declare-fun b!3938732 () Bool)

(declare-fun e!2436880 () Bool)

(declare-fun maxPrefix!3425 (LexerInterface!6121 List!41938 List!41935) Option!8952)

(assert (=> b!3938732 (= e!2436880 (= (maxPrefix!3425 thiss!20629 rules!2768 prefix!426) lt!1377582))))

(declare-fun lt!1377589 () List!41935)

(assert (=> b!3938732 (= (maxPrefix!3425 thiss!20629 rules!2768 lt!1377589) lt!1377582)))

(assert (=> b!3938732 (= lt!1377582 (Some!8951 (tuple2!41101 (_1!23684 (v!39281 lt!1377612)) lt!1377613)))))

(declare-fun lt!1377604 () Unit!60353)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!44 (LexerInterface!6121 List!41938 List!41935 List!41935 List!41935 Token!12202 List!41935 List!41935) Unit!60353)

(assert (=> b!3938732 (= lt!1377604 (lemmaMaxPrefixThenWithShorterSuffix!44 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41811 (_1!23684 (v!39281 lt!1377612)) (_2!23684 (v!39281 lt!1377612)) lt!1377613))))

(declare-fun b!3938733 () Bool)

(declare-fun res!1593970 () Bool)

(assert (=> b!3938733 (=> res!1593970 e!2436876)))

(declare-fun head!8369 (List!41937) Token!12202)

(assert (=> b!3938733 (= res!1593970 (not (= (head!8369 prefixTokens!80) (_1!23684 (v!39281 lt!1377612)))))))

(declare-fun b!3938734 () Bool)

(declare-fun res!1593959 () Bool)

(assert (=> b!3938734 (=> res!1593959 e!2436892)))

(assert (=> b!3938734 (= res!1593959 (not (isPrefix!3627 lt!1377613 (_2!23684 (v!39281 lt!1377612)))))))

(declare-fun b!3938735 () Bool)

(assert (=> b!3938735 (= e!2436906 e!2436881)))

(declare-fun res!1593975 () Bool)

(assert (=> b!3938735 (=> (not res!1593975) (not e!2436881))))

(assert (=> b!3938735 (= res!1593975 ((_ is Some!8951) lt!1377612))))

(assert (=> b!3938735 (= lt!1377612 (maxPrefix!3425 thiss!20629 rules!2768 lt!1377600))))

(declare-fun b!3938736 () Bool)

(declare-fun res!1593972 () Bool)

(assert (=> b!3938736 (=> res!1593972 e!2436888)))

(assert (=> b!3938736 (= res!1593972 (<= lt!1377595 lt!1377584))))

(declare-fun b!3938737 () Bool)

(declare-fun tp!1198457 () Bool)

(assert (=> b!3938737 (= e!2436870 (and tp_is_empty!19845 tp!1198457))))

(declare-fun b!3938738 () Bool)

(assert (=> b!3938738 (= e!2436893 false)))

(declare-fun b!3938739 () Bool)

(declare-fun e!2436875 () Bool)

(assert (=> b!3938739 (= e!2436894 e!2436875)))

(declare-fun res!1593962 () Bool)

(assert (=> b!3938739 (=> res!1593962 e!2436875)))

(declare-fun lt!1377602 () List!41935)

(assert (=> b!3938739 (= res!1593962 (or (not (= lt!1377600 lt!1377625)) (not (= lt!1377600 lt!1377602)) (not (= lt!1377606 lt!1377602))))))

(assert (=> b!3938739 (= lt!1377625 lt!1377602)))

(assert (=> b!3938739 (= lt!1377602 (++!10822 lt!1377618 lt!1377597))))

(assert (=> b!3938739 (= lt!1377597 (++!10822 lt!1377613 suffix!1176))))

(declare-fun lt!1377598 () Unit!60353)

(declare-fun lemmaConcatAssociativity!2352 (List!41935 List!41935 List!41935) Unit!60353)

(assert (=> b!3938739 (= lt!1377598 (lemmaConcatAssociativity!2352 lt!1377618 lt!1377613 suffix!1176))))

(declare-fun b!3938740 () Bool)

(declare-fun Unit!60360 () Unit!60353)

(assert (=> b!3938740 (= e!2436878 Unit!60360)))

(declare-fun b!3938741 () Bool)

(declare-fun res!1593961 () Bool)

(assert (=> b!3938741 (=> res!1593961 e!2436863)))

(assert (=> b!3938741 (= res!1593961 (not (= (lexList!1889 thiss!20629 rules!2768 lt!1377597) lt!1377624)))))

(declare-fun b!3938742 () Bool)

(declare-fun Unit!60361 () Unit!60353)

(assert (=> b!3938742 (= e!2436899 Unit!60361)))

(declare-fun b!3938743 () Bool)

(declare-fun Unit!60362 () Unit!60353)

(assert (=> b!3938743 (= e!2436901 Unit!60362)))

(declare-fun lt!1377579 () Int)

(assert (=> b!3938743 (= lt!1377579 (size!31368 lt!1377600))))

(declare-fun lt!1377590 () Unit!60353)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1363 (LexerInterface!6121 List!41938 List!41935 List!41935 List!41935 Rule!12864) Unit!60353)

(assert (=> b!3938743 (= lt!1377590 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1363 thiss!20629 rules!2768 lt!1377618 lt!1377600 (_2!23684 (v!39281 lt!1377612)) (rule!9488 (_1!23684 (v!39281 lt!1377612)))))))

(declare-fun maxPrefixOneRule!2495 (LexerInterface!6121 Rule!12864 List!41935) Option!8952)

(assert (=> b!3938743 (= (maxPrefixOneRule!2495 thiss!20629 (rule!9488 (_1!23684 (v!39281 lt!1377612))) lt!1377600) (Some!8951 (tuple2!41101 (Token!12203 lt!1377632 (rule!9488 (_1!23684 (v!39281 lt!1377612))) lt!1377584 lt!1377618) (_2!23684 (v!39281 lt!1377612)))))))

(declare-fun get!13818 (Option!8952) tuple2!41100)

(assert (=> b!3938743 (= lt!1377594 (get!13818 lt!1377612))))

(declare-fun c!684363 () Bool)

(assert (=> b!3938743 (= c!684363 (< (size!31368 (_2!23684 lt!1377594)) lt!1377621))))

(declare-fun lt!1377593 () Unit!60353)

(assert (=> b!3938743 (= lt!1377593 e!2436867)))

(assert (=> b!3938743 false))

(declare-fun b!3938744 () Bool)

(assert (=> b!3938744 (= e!2436875 e!2436879)))

(declare-fun res!1593977 () Bool)

(assert (=> b!3938744 (=> res!1593977 e!2436879)))

(assert (=> b!3938744 (= res!1593977 (not (= lt!1377597 (_2!23684 (v!39281 lt!1377612)))))))

(assert (=> b!3938744 (= (_2!23684 (v!39281 lt!1377612)) lt!1377597)))

(declare-fun lt!1377633 () Unit!60353)

(assert (=> b!3938744 (= lt!1377633 (lemmaSamePrefixThenSameSuffix!1848 lt!1377618 (_2!23684 (v!39281 lt!1377612)) lt!1377618 lt!1377597 lt!1377600))))

(assert (=> b!3938744 (isPrefix!3627 lt!1377618 lt!1377602)))

(declare-fun lt!1377587 () Unit!60353)

(assert (=> b!3938744 (= lt!1377587 (lemmaConcatTwoListThenFirstIsPrefix!2490 lt!1377618 lt!1377597))))

(declare-fun b!3938745 () Bool)

(declare-fun res!1593966 () Bool)

(assert (=> b!3938745 (=> res!1593966 e!2436892)))

(assert (=> b!3938745 (= res!1593966 (isEmpty!24939 suffix!1176))))

(declare-fun tp!1198456 () Bool)

(declare-fun b!3938746 () Bool)

(assert (=> b!3938746 (= e!2436865 (and tp!1198456 (inv!56011 (tag!7392 (rule!9488 (h!47233 suffixTokens!72)))) (inv!56014 (transformation!6532 (rule!9488 (h!47233 suffixTokens!72)))) e!2436887))))

(declare-fun b!3938747 () Bool)

(assert (=> b!3938747 (= e!2436888 e!2436880)))

(declare-fun res!1593965 () Bool)

(assert (=> b!3938747 (=> res!1593965 e!2436880)))

(assert (=> b!3938747 (= res!1593965 (not (= lt!1377628 lt!1377589)))))

(assert (=> b!3938747 (= lt!1377589 (++!10822 prefix!426 Nil!41811))))

(declare-fun b!3938748 () Bool)

(declare-fun res!1593948 () Bool)

(assert (=> b!3938748 (=> res!1593948 e!2436886)))

(assert (=> b!3938748 (= res!1593948 (or (not (= lt!1377616 (tuple2!41099 (_1!23683 lt!1377616) (_2!23683 lt!1377616)))) (= (_2!23684 (v!39281 lt!1377612)) suffix!1176)))))

(declare-fun b!3938749 () Bool)

(declare-fun Unit!60363 () Unit!60353)

(assert (=> b!3938749 (= e!2436901 Unit!60363)))

(declare-fun b!3938750 () Bool)

(declare-fun res!1593964 () Bool)

(assert (=> b!3938750 (=> (not res!1593964) (not e!2436883))))

(declare-fun isEmpty!24940 (List!41938) Bool)

(assert (=> b!3938750 (= res!1593964 (not (isEmpty!24940 rules!2768)))))

(assert (= (and start!369784 res!1593951) b!3938750))

(assert (= (and b!3938750 res!1593964) b!3938730))

(assert (= (and b!3938730 res!1593957) b!3938700))

(assert (= (and b!3938700 res!1593960) b!3938717))

(assert (= (and b!3938717 res!1593976) b!3938705))

(assert (= (and b!3938705 res!1593958) b!3938708))

(assert (= (and b!3938708 res!1593952) b!3938735))

(assert (= (and b!3938735 res!1593975) b!3938706))

(assert (= (and b!3938706 res!1593971) b!3938716))

(assert (= (and b!3938706 (not res!1593967)) b!3938724))

(assert (= (and b!3938724 (not res!1593947)) b!3938748))

(assert (= (and b!3938748 (not res!1593948)) b!3938704))

(assert (= (and b!3938704 c!684361) b!3938743))

(assert (= (and b!3938704 (not c!684361)) b!3938749))

(assert (= (and b!3938743 c!684363) b!3938721))

(assert (= (and b!3938743 (not c!684363)) b!3938713))

(assert (= (and b!3938721 c!684365) b!3938701))

(assert (= (and b!3938721 (not c!684365)) b!3938718))

(assert (= (and b!3938701 res!1593974) b!3938726))

(assert (= (and b!3938718 res!1593955) b!3938738))

(assert (= (or b!3938701 b!3938718) bm!285025))

(assert (= (and b!3938704 c!684364) b!3938715))

(assert (= (and b!3938704 (not c!684364)) b!3938742))

(assert (= (and b!3938704 (not res!1593969)) b!3938733))

(assert (= (and b!3938733 (not res!1593970)) b!3938722))

(assert (= (and b!3938722 (not res!1593949)) b!3938712))

(assert (= (and b!3938712 (not res!1593973)) b!3938703))

(assert (= (and b!3938703 (not res!1593956)) b!3938739))

(assert (= (and b!3938739 (not res!1593962)) b!3938744))

(assert (= (and b!3938744 (not res!1593977)) b!3938699))

(assert (= (and b!3938699 (not res!1593950)) b!3938709))

(assert (= (and b!3938709 c!684362) b!3938702))

(assert (= (and b!3938709 (not c!684362)) b!3938740))

(assert (= (and b!3938709 (not res!1593968)) b!3938741))

(assert (= (and b!3938741 (not res!1593961)) b!3938725))

(assert (= (and b!3938725 (not res!1593954)) b!3938745))

(assert (= (and b!3938745 (not res!1593966)) b!3938734))

(assert (= (and b!3938734 (not res!1593959)) b!3938697))

(assert (= (and b!3938697 (not res!1593963)) b!3938710))

(assert (= (and b!3938710 (not res!1593953)) b!3938736))

(assert (= (and b!3938736 (not res!1593972)) b!3938747))

(assert (= (and b!3938747 (not res!1593965)) b!3938732))

(assert (= (and start!369784 ((_ is Cons!41811) suffixResult!91)) b!3938737))

(assert (= (and start!369784 ((_ is Cons!41811) suffix!1176)) b!3938727))

(assert (= b!3938707 b!3938711))

(assert (= b!3938698 b!3938707))

(assert (= (and start!369784 ((_ is Cons!41814) rules!2768)) b!3938698))

(assert (= b!3938723 b!3938714))

(assert (= b!3938731 b!3938723))

(assert (= b!3938729 b!3938731))

(assert (= (and start!369784 ((_ is Cons!41813) prefixTokens!80)) b!3938729))

(assert (= b!3938746 b!3938696))

(assert (= b!3938720 b!3938746))

(assert (= b!3938728 b!3938720))

(assert (= (and start!369784 ((_ is Cons!41813) suffixTokens!72)) b!3938728))

(assert (= (and start!369784 ((_ is Cons!41811) prefix!426)) b!3938719))

(declare-fun m!4507047 () Bool)

(assert (=> b!3938750 m!4507047))

(declare-fun m!4507049 () Bool)

(assert (=> b!3938722 m!4507049))

(declare-fun m!4507051 () Bool)

(assert (=> b!3938722 m!4507051))

(declare-fun m!4507053 () Bool)

(assert (=> b!3938722 m!4507053))

(declare-fun m!4507055 () Bool)

(assert (=> b!3938722 m!4507055))

(declare-fun m!4507057 () Bool)

(assert (=> b!3938722 m!4507057))

(declare-fun m!4507059 () Bool)

(assert (=> b!3938702 m!4507059))

(declare-fun m!4507061 () Bool)

(assert (=> b!3938699 m!4507061))

(declare-fun m!4507063 () Bool)

(assert (=> b!3938699 m!4507063))

(declare-fun m!4507065 () Bool)

(assert (=> b!3938699 m!4507065))

(declare-fun m!4507067 () Bool)

(assert (=> b!3938699 m!4507067))

(declare-fun m!4507069 () Bool)

(assert (=> b!3938723 m!4507069))

(declare-fun m!4507071 () Bool)

(assert (=> b!3938723 m!4507071))

(declare-fun m!4507073 () Bool)

(assert (=> b!3938741 m!4507073))

(declare-fun m!4507075 () Bool)

(assert (=> b!3938704 m!4507075))

(declare-fun m!4507077 () Bool)

(assert (=> b!3938704 m!4507077))

(declare-fun m!4507079 () Bool)

(assert (=> b!3938706 m!4507079))

(declare-fun m!4507081 () Bool)

(assert (=> b!3938706 m!4507081))

(declare-fun m!4507083 () Bool)

(assert (=> b!3938706 m!4507083))

(declare-fun m!4507085 () Bool)

(assert (=> b!3938706 m!4507085))

(declare-fun m!4507087 () Bool)

(assert (=> b!3938706 m!4507087))

(declare-fun m!4507089 () Bool)

(assert (=> b!3938706 m!4507089))

(declare-fun m!4507091 () Bool)

(assert (=> b!3938706 m!4507091))

(declare-fun m!4507093 () Bool)

(assert (=> b!3938706 m!4507093))

(declare-fun m!4507095 () Bool)

(assert (=> b!3938706 m!4507095))

(declare-fun m!4507097 () Bool)

(assert (=> b!3938706 m!4507097))

(assert (=> b!3938706 m!4507083))

(declare-fun m!4507099 () Bool)

(assert (=> b!3938706 m!4507099))

(declare-fun m!4507101 () Bool)

(assert (=> b!3938706 m!4507101))

(assert (=> b!3938706 m!4507097))

(declare-fun m!4507103 () Bool)

(assert (=> b!3938706 m!4507103))

(declare-fun m!4507105 () Bool)

(assert (=> b!3938706 m!4507105))

(declare-fun m!4507107 () Bool)

(assert (=> b!3938718 m!4507107))

(declare-fun m!4507109 () Bool)

(assert (=> b!3938718 m!4507109))

(declare-fun m!4507111 () Bool)

(assert (=> b!3938720 m!4507111))

(declare-fun m!4507113 () Bool)

(assert (=> b!3938732 m!4507113))

(declare-fun m!4507115 () Bool)

(assert (=> b!3938732 m!4507115))

(declare-fun m!4507117 () Bool)

(assert (=> b!3938732 m!4507117))

(declare-fun m!4507119 () Bool)

(assert (=> b!3938701 m!4507119))

(declare-fun m!4507121 () Bool)

(assert (=> b!3938701 m!4507121))

(declare-fun m!4507123 () Bool)

(assert (=> b!3938747 m!4507123))

(declare-fun m!4507125 () Bool)

(assert (=> b!3938729 m!4507125))

(assert (=> b!3938715 m!4507057))

(assert (=> b!3938715 m!4507049))

(declare-fun m!4507127 () Bool)

(assert (=> b!3938715 m!4507127))

(declare-fun m!4507129 () Bool)

(assert (=> b!3938715 m!4507129))

(declare-fun m!4507131 () Bool)

(assert (=> b!3938708 m!4507131))

(declare-fun m!4507133 () Bool)

(assert (=> b!3938707 m!4507133))

(declare-fun m!4507135 () Bool)

(assert (=> b!3938707 m!4507135))

(declare-fun m!4507137 () Bool)

(assert (=> b!3938734 m!4507137))

(declare-fun m!4507139 () Bool)

(assert (=> b!3938733 m!4507139))

(declare-fun m!4507141 () Bool)

(assert (=> b!3938743 m!4507141))

(declare-fun m!4507143 () Bool)

(assert (=> b!3938743 m!4507143))

(declare-fun m!4507145 () Bool)

(assert (=> b!3938743 m!4507145))

(declare-fun m!4507147 () Bool)

(assert (=> b!3938743 m!4507147))

(declare-fun m!4507149 () Bool)

(assert (=> b!3938743 m!4507149))

(declare-fun m!4507151 () Bool)

(assert (=> b!3938746 m!4507151))

(declare-fun m!4507153 () Bool)

(assert (=> b!3938746 m!4507153))

(declare-fun m!4507155 () Bool)

(assert (=> b!3938712 m!4507155))

(declare-fun m!4507157 () Bool)

(assert (=> b!3938712 m!4507157))

(declare-fun m!4507159 () Bool)

(assert (=> bm!285025 m!4507159))

(declare-fun m!4507161 () Bool)

(assert (=> b!3938735 m!4507161))

(declare-fun m!4507163 () Bool)

(assert (=> b!3938744 m!4507163))

(declare-fun m!4507165 () Bool)

(assert (=> b!3938744 m!4507165))

(declare-fun m!4507167 () Bool)

(assert (=> b!3938744 m!4507167))

(declare-fun m!4507169 () Bool)

(assert (=> b!3938705 m!4507169))

(declare-fun m!4507171 () Bool)

(assert (=> b!3938705 m!4507171))

(declare-fun m!4507173 () Bool)

(assert (=> b!3938705 m!4507173))

(declare-fun m!4507175 () Bool)

(assert (=> b!3938717 m!4507175))

(declare-fun m!4507177 () Bool)

(assert (=> b!3938730 m!4507177))

(declare-fun m!4507179 () Bool)

(assert (=> b!3938724 m!4507179))

(declare-fun m!4507181 () Bool)

(assert (=> b!3938700 m!4507181))

(declare-fun m!4507183 () Bool)

(assert (=> b!3938703 m!4507183))

(declare-fun m!4507185 () Bool)

(assert (=> b!3938716 m!4507185))

(declare-fun m!4507187 () Bool)

(assert (=> b!3938709 m!4507187))

(declare-fun m!4507189 () Bool)

(assert (=> b!3938709 m!4507189))

(declare-fun m!4507191 () Bool)

(assert (=> b!3938709 m!4507191))

(declare-fun m!4507193 () Bool)

(assert (=> b!3938709 m!4507193))

(assert (=> b!3938709 m!4507189))

(declare-fun m!4507195 () Bool)

(assert (=> b!3938709 m!4507195))

(declare-fun m!4507197 () Bool)

(assert (=> b!3938721 m!4507197))

(assert (=> b!3938721 m!4507063))

(declare-fun m!4507199 () Bool)

(assert (=> b!3938739 m!4507199))

(declare-fun m!4507201 () Bool)

(assert (=> b!3938739 m!4507201))

(declare-fun m!4507203 () Bool)

(assert (=> b!3938739 m!4507203))

(declare-fun m!4507205 () Bool)

(assert (=> b!3938731 m!4507205))

(declare-fun m!4507207 () Bool)

(assert (=> b!3938710 m!4507207))

(declare-fun m!4507209 () Bool)

(assert (=> b!3938710 m!4507209))

(assert (=> b!3938710 m!4507209))

(declare-fun m!4507211 () Bool)

(assert (=> b!3938710 m!4507211))

(declare-fun m!4507213 () Bool)

(assert (=> b!3938710 m!4507213))

(declare-fun m!4507215 () Bool)

(assert (=> b!3938745 m!4507215))

(declare-fun m!4507217 () Bool)

(assert (=> b!3938725 m!4507217))

(declare-fun m!4507219 () Bool)

(assert (=> b!3938725 m!4507219))

(declare-fun m!4507221 () Bool)

(assert (=> b!3938728 m!4507221))

(declare-fun m!4507223 () Bool)

(assert (=> b!3938697 m!4507223))

(check-sat (not b!3938724) b_and!300849 (not b!3938703) (not b!3938720) (not b!3938725) (not b!3938709) (not b!3938732) (not b!3938744) (not b!3938731) (not b!3938735) (not b_next!108329) (not b!3938746) b_and!300845 (not b!3938700) (not b!3938739) (not b!3938718) (not b!3938728) (not b!3938717) b_and!300843 (not b!3938719) (not b!3938708) b_and!300839 (not b!3938727) (not b!3938737) (not b!3938722) (not b!3938750) (not b!3938716) (not b!3938697) (not b!3938702) (not b!3938707) (not b!3938698) (not b_next!108335) (not b!3938741) b_and!300847 (not b_next!108333) (not b!3938701) (not b!3938715) (not bm!285025) b_and!300841 (not b!3938710) (not b_next!108325) (not b!3938721) (not b!3938699) (not b!3938743) (not b!3938705) tp_is_empty!19845 (not b!3938745) (not b!3938730) (not b!3938704) (not b_next!108327) (not b!3938729) (not b_next!108331) (not b!3938747) (not b!3938733) (not b!3938706) (not b!3938723) (not b!3938734) (not b!3938712))
(check-sat b_and!300845 b_and!300849 b_and!300843 b_and!300839 (not b_next!108335) b_and!300841 (not b_next!108325) (not b_next!108327) (not b_next!108331) (not b_next!108329) b_and!300847 (not b_next!108333))
