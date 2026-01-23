; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!367240 () Bool)

(assert start!367240)

(declare-fun b!3917874 () Bool)

(declare-fun b_free!106421 () Bool)

(declare-fun b_next!107125 () Bool)

(assert (=> b!3917874 (= b_free!106421 (not b_next!107125))))

(declare-fun tp!1192495 () Bool)

(declare-fun b_and!298475 () Bool)

(assert (=> b!3917874 (= tp!1192495 b_and!298475)))

(declare-fun b_free!106423 () Bool)

(declare-fun b_next!107127 () Bool)

(assert (=> b!3917874 (= b_free!106423 (not b_next!107127))))

(declare-fun tp!1192484 () Bool)

(declare-fun b_and!298477 () Bool)

(assert (=> b!3917874 (= tp!1192484 b_and!298477)))

(declare-fun b!3917866 () Bool)

(declare-fun b_free!106425 () Bool)

(declare-fun b_next!107129 () Bool)

(assert (=> b!3917866 (= b_free!106425 (not b_next!107129))))

(declare-fun tp!1192487 () Bool)

(declare-fun b_and!298479 () Bool)

(assert (=> b!3917866 (= tp!1192487 b_and!298479)))

(declare-fun b_free!106427 () Bool)

(declare-fun b_next!107131 () Bool)

(assert (=> b!3917866 (= b_free!106427 (not b_next!107131))))

(declare-fun tp!1192494 () Bool)

(declare-fun b_and!298481 () Bool)

(assert (=> b!3917866 (= tp!1192494 b_and!298481)))

(declare-fun b!3917865 () Bool)

(declare-fun b_free!106429 () Bool)

(declare-fun b_next!107133 () Bool)

(assert (=> b!3917865 (= b_free!106429 (not b_next!107133))))

(declare-fun tp!1192497 () Bool)

(declare-fun b_and!298483 () Bool)

(assert (=> b!3917865 (= tp!1192497 b_and!298483)))

(declare-fun b_free!106431 () Bool)

(declare-fun b_next!107135 () Bool)

(assert (=> b!3917865 (= b_free!106431 (not b_next!107135))))

(declare-fun tp!1192493 () Bool)

(declare-fun b_and!298485 () Bool)

(assert (=> b!3917865 (= tp!1192493 b_and!298485)))

(declare-fun b!3917860 () Bool)

(declare-fun e!2422394 () Bool)

(declare-fun e!2422384 () Bool)

(assert (=> b!3917860 (= e!2422394 e!2422384)))

(declare-fun res!1584729 () Bool)

(assert (=> b!3917860 (=> res!1584729 e!2422384)))

(declare-datatypes ((C!22928 0))(
  ( (C!22929 (val!13558 Int)) )
))
(declare-datatypes ((List!41641 0))(
  ( (Nil!41517) (Cons!41517 (h!46937 C!22928) (t!324176 List!41641)) )
))
(declare-datatypes ((IArray!25359 0))(
  ( (IArray!25360 (innerList!12737 List!41641)) )
))
(declare-datatypes ((Conc!12677 0))(
  ( (Node!12677 (left!31760 Conc!12677) (right!32090 Conc!12677) (csize!25584 Int) (cheight!12888 Int)) (Leaf!19617 (xs!15983 IArray!25359) (csize!25585 Int)) (Empty!12677) )
))
(declare-datatypes ((BalanceConc!24948 0))(
  ( (BalanceConc!24949 (c!680962 Conc!12677)) )
))
(declare-datatypes ((List!41642 0))(
  ( (Nil!41518) (Cons!41518 (h!46938 (_ BitVec 16)) (t!324177 List!41642)) )
))
(declare-datatypes ((TokenValue!6696 0))(
  ( (FloatLiteralValue!13392 (text!47317 List!41642)) (TokenValueExt!6695 (__x!25609 Int)) (Broken!33480 (value!204889 List!41642)) (Object!6819) (End!6696) (Def!6696) (Underscore!6696) (Match!6696) (Else!6696) (Error!6696) (Case!6696) (If!6696) (Extends!6696) (Abstract!6696) (Class!6696) (Val!6696) (DelimiterValue!13392 (del!6756 List!41642)) (KeywordValue!6702 (value!204890 List!41642)) (CommentValue!13392 (value!204891 List!41642)) (WhitespaceValue!13392 (value!204892 List!41642)) (IndentationValue!6696 (value!204893 List!41642)) (String!47197) (Int32!6696) (Broken!33481 (value!204894 List!41642)) (Boolean!6697) (Unit!59656) (OperatorValue!6699 (op!6756 List!41642)) (IdentifierValue!13392 (value!204895 List!41642)) (IdentifierValue!13393 (value!204896 List!41642)) (WhitespaceValue!13393 (value!204897 List!41642)) (True!13392) (False!13392) (Broken!33482 (value!204898 List!41642)) (Broken!33483 (value!204899 List!41642)) (True!13393) (RightBrace!6696) (RightBracket!6696) (Colon!6696) (Null!6696) (Comma!6696) (LeftBracket!6696) (False!13393) (LeftBrace!6696) (ImaginaryLiteralValue!6696 (text!47318 List!41642)) (StringLiteralValue!20088 (value!204900 List!41642)) (EOFValue!6696 (value!204901 List!41642)) (IdentValue!6696 (value!204902 List!41642)) (DelimiterValue!13393 (value!204903 List!41642)) (DedentValue!6696 (value!204904 List!41642)) (NewLineValue!6696 (value!204905 List!41642)) (IntegerValue!20088 (value!204906 (_ BitVec 32)) (text!47319 List!41642)) (IntegerValue!20089 (value!204907 Int) (text!47320 List!41642)) (Times!6696) (Or!6696) (Equal!6696) (Minus!6696) (Broken!33484 (value!204908 List!41642)) (And!6696) (Div!6696) (LessEqual!6696) (Mod!6696) (Concat!18067) (Not!6696) (Plus!6696) (SpaceValue!6696 (value!204909 List!41642)) (IntegerValue!20090 (value!204910 Int) (text!47321 List!41642)) (StringLiteralValue!20089 (text!47322 List!41642)) (FloatLiteralValue!13393 (text!47323 List!41642)) (BytesLiteralValue!6696 (value!204911 List!41642)) (CommentValue!13393 (value!204912 List!41642)) (StringLiteralValue!20090 (value!204913 List!41642)) (ErrorTokenValue!6696 (msg!6757 List!41642)) )
))
(declare-datatypes ((String!47198 0))(
  ( (String!47199 (value!204914 String)) )
))
(declare-datatypes ((Regex!11371 0))(
  ( (ElementMatch!11371 (c!680963 C!22928)) (Concat!18068 (regOne!23254 Regex!11371) (regTwo!23254 Regex!11371)) (EmptyExpr!11371) (Star!11371 (reg!11700 Regex!11371)) (EmptyLang!11371) (Union!11371 (regOne!23255 Regex!11371) (regTwo!23255 Regex!11371)) )
))
(declare-datatypes ((TokenValueInjection!12820 0))(
  ( (TokenValueInjection!12821 (toValue!8918 Int) (toChars!8777 Int)) )
))
(declare-datatypes ((Rule!12732 0))(
  ( (Rule!12733 (regex!6466 Regex!11371) (tag!7326 String!47198) (isSeparator!6466 Bool) (transformation!6466 TokenValueInjection!12820)) )
))
(declare-datatypes ((Token!12070 0))(
  ( (Token!12071 (value!204915 TokenValue!6696) (rule!9392 Rule!12732) (size!31173 Int) (originalCharacters!7066 List!41641)) )
))
(declare-datatypes ((tuple2!40774 0))(
  ( (tuple2!40775 (_1!23521 Token!12070) (_2!23521 List!41641)) )
))
(declare-fun lt!1365143 () tuple2!40774)

(declare-fun lt!1365134 () Token!12070)

(assert (=> b!3917860 (= res!1584729 (not (= (_1!23521 lt!1365143) lt!1365134)))))

(declare-datatypes ((List!41643 0))(
  ( (Nil!41519) (Cons!41519 (h!46939 Token!12070) (t!324178 List!41643)) )
))
(declare-fun prefixTokens!80 () List!41643)

(declare-fun head!8283 (List!41643) Token!12070)

(assert (=> b!3917860 (= lt!1365134 (head!8283 prefixTokens!80))))

(declare-datatypes ((Option!8886 0))(
  ( (None!8885) (Some!8885 (v!39211 tuple2!40774)) )
))
(declare-fun lt!1365136 () Option!8886)

(declare-fun get!13719 (Option!8886) tuple2!40774)

(assert (=> b!3917860 (= lt!1365143 (get!13719 lt!1365136))))

(declare-fun b!3917861 () Bool)

(declare-fun tp!1192488 () Bool)

(declare-fun e!2422387 () Bool)

(declare-fun e!2422383 () Bool)

(declare-fun inv!55715 (Token!12070) Bool)

(assert (=> b!3917861 (= e!2422387 (and (inv!55715 (h!46939 prefixTokens!80)) e!2422383 tp!1192488))))

(declare-fun e!2422382 () Bool)

(declare-fun suffixTokens!72 () List!41643)

(declare-fun e!2422408 () Bool)

(declare-fun tp!1192482 () Bool)

(declare-fun b!3917862 () Bool)

(declare-fun inv!21 (TokenValue!6696) Bool)

(assert (=> b!3917862 (= e!2422408 (and (inv!21 (value!204915 (h!46939 suffixTokens!72))) e!2422382 tp!1192482))))

(declare-fun b!3917863 () Bool)

(declare-fun res!1584731 () Bool)

(assert (=> b!3917863 (=> res!1584731 e!2422384)))

(declare-fun isEmpty!24710 (List!41643) Bool)

(declare-fun tail!5999 (List!41643) List!41643)

(assert (=> b!3917863 (= res!1584731 (isEmpty!24710 (tail!5999 prefixTokens!80)))))

(declare-fun b!3917864 () Bool)

(declare-fun res!1584726 () Bool)

(declare-fun e!2422396 () Bool)

(assert (=> b!3917864 (=> (not res!1584726) (not e!2422396))))

(assert (=> b!3917864 (= res!1584726 (not (isEmpty!24710 prefixTokens!80)))))

(declare-fun e!2422406 () Bool)

(assert (=> b!3917865 (= e!2422406 (and tp!1192497 tp!1192493))))

(declare-fun e!2422407 () Bool)

(assert (=> b!3917866 (= e!2422407 (and tp!1192487 tp!1192494))))

(declare-fun b!3917867 () Bool)

(assert (=> b!3917867 (= e!2422384 (= (_1!23521 (v!39211 lt!1365136)) lt!1365134))))

(declare-fun b!3917868 () Bool)

(declare-fun e!2422381 () Bool)

(declare-fun e!2422403 () Bool)

(assert (=> b!3917868 (= e!2422381 (not e!2422403))))

(declare-fun res!1584735 () Bool)

(assert (=> b!3917868 (=> res!1584735 e!2422403)))

(declare-fun lt!1365147 () List!41641)

(declare-fun lt!1365153 () List!41641)

(assert (=> b!3917868 (= res!1584735 (not (= lt!1365147 lt!1365153)))))

(declare-datatypes ((LexerInterface!6055 0))(
  ( (LexerInterfaceExt!6052 (__x!25610 Int)) (Lexer!6053) )
))
(declare-fun thiss!20629 () LexerInterface!6055)

(declare-datatypes ((List!41644 0))(
  ( (Nil!41520) (Cons!41520 (h!46940 Rule!12732) (t!324179 List!41644)) )
))
(declare-fun rules!2768 () List!41644)

(declare-datatypes ((tuple2!40776 0))(
  ( (tuple2!40777 (_1!23522 List!41643) (_2!23522 List!41641)) )
))
(declare-fun lt!1365142 () tuple2!40776)

(declare-fun lexList!1823 (LexerInterface!6055 List!41644 List!41641) tuple2!40776)

(assert (=> b!3917868 (= lt!1365142 (lexList!1823 thiss!20629 rules!2768 (_2!23521 (v!39211 lt!1365136))))))

(declare-fun lt!1365139 () List!41641)

(declare-fun lt!1365137 () List!41641)

(declare-fun lt!1365138 () Int)

(declare-fun lt!1365152 () TokenValue!6696)

(assert (=> b!3917868 (and (= (size!31173 (_1!23521 (v!39211 lt!1365136))) lt!1365138) (= (originalCharacters!7066 (_1!23521 (v!39211 lt!1365136))) lt!1365137) (= (v!39211 lt!1365136) (tuple2!40775 (Token!12071 lt!1365152 (rule!9392 (_1!23521 (v!39211 lt!1365136))) lt!1365138 lt!1365137) lt!1365139)))))

(declare-fun size!31174 (List!41641) Int)

(assert (=> b!3917868 (= lt!1365138 (size!31174 lt!1365137))))

(declare-fun e!2422398 () Bool)

(assert (=> b!3917868 e!2422398))

(declare-fun res!1584736 () Bool)

(assert (=> b!3917868 (=> (not res!1584736) (not e!2422398))))

(assert (=> b!3917868 (= res!1584736 (= (value!204915 (_1!23521 (v!39211 lt!1365136))) lt!1365152))))

(declare-fun apply!9705 (TokenValueInjection!12820 BalanceConc!24948) TokenValue!6696)

(declare-fun seqFromList!4733 (List!41641) BalanceConc!24948)

(assert (=> b!3917868 (= lt!1365152 (apply!9705 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))) (seqFromList!4733 lt!1365137)))))

(assert (=> b!3917868 (= (_2!23521 (v!39211 lt!1365136)) lt!1365139)))

(declare-datatypes ((Unit!59657 0))(
  ( (Unit!59658) )
))
(declare-fun lt!1365140 () Unit!59657)

(declare-fun lemmaSamePrefixThenSameSuffix!1782 (List!41641 List!41641 List!41641 List!41641 List!41641) Unit!59657)

(assert (=> b!3917868 (= lt!1365140 (lemmaSamePrefixThenSameSuffix!1782 lt!1365137 (_2!23521 (v!39211 lt!1365136)) lt!1365137 lt!1365139 lt!1365153))))

(declare-fun getSuffix!2016 (List!41641 List!41641) List!41641)

(assert (=> b!3917868 (= lt!1365139 (getSuffix!2016 lt!1365153 lt!1365137))))

(declare-fun isPrefix!3561 (List!41641 List!41641) Bool)

(assert (=> b!3917868 (isPrefix!3561 lt!1365137 lt!1365147)))

(declare-fun ++!10689 (List!41641 List!41641) List!41641)

(assert (=> b!3917868 (= lt!1365147 (++!10689 lt!1365137 (_2!23521 (v!39211 lt!1365136))))))

(declare-fun lt!1365135 () Unit!59657)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2424 (List!41641 List!41641) Unit!59657)

(assert (=> b!3917868 (= lt!1365135 (lemmaConcatTwoListThenFirstIsPrefix!2424 lt!1365137 (_2!23521 (v!39211 lt!1365136))))))

(declare-fun list!15437 (BalanceConc!24948) List!41641)

(declare-fun charsOf!4290 (Token!12070) BalanceConc!24948)

(assert (=> b!3917868 (= lt!1365137 (list!15437 (charsOf!4290 (_1!23521 (v!39211 lt!1365136)))))))

(declare-fun ruleValid!2414 (LexerInterface!6055 Rule!12732) Bool)

(assert (=> b!3917868 (ruleValid!2414 thiss!20629 (rule!9392 (_1!23521 (v!39211 lt!1365136))))))

(declare-fun lt!1365141 () Unit!59657)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1494 (LexerInterface!6055 Rule!12732 List!41644) Unit!59657)

(assert (=> b!3917868 (= lt!1365141 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1494 thiss!20629 (rule!9392 (_1!23521 (v!39211 lt!1365136))) rules!2768))))

(declare-fun lt!1365133 () Unit!59657)

(declare-fun lemmaCharactersSize!1123 (Token!12070) Unit!59657)

(assert (=> b!3917868 (= lt!1365133 (lemmaCharactersSize!1123 (_1!23521 (v!39211 lt!1365136))))))

(declare-fun b!3917869 () Bool)

(declare-fun e!2422391 () Bool)

(declare-fun tp_is_empty!19713 () Bool)

(declare-fun tp!1192485 () Bool)

(assert (=> b!3917869 (= e!2422391 (and tp_is_empty!19713 tp!1192485))))

(declare-fun b!3917870 () Bool)

(declare-fun e!2422390 () Bool)

(assert (=> b!3917870 (= e!2422390 e!2422394)))

(declare-fun res!1584732 () Bool)

(assert (=> b!3917870 (=> res!1584732 e!2422394)))

(declare-fun matchR!5460 (Regex!11371 List!41641) Bool)

(assert (=> b!3917870 (= res!1584732 (not (matchR!5460 (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))) lt!1365137)))))

(declare-fun maxPrefixOneRule!2429 (LexerInterface!6055 Rule!12732 List!41641) Option!8886)

(assert (=> b!3917870 (= (maxPrefixOneRule!2429 thiss!20629 (rule!9392 (_1!23521 (v!39211 lt!1365136))) lt!1365153) (Some!8885 (tuple2!40775 (Token!12071 lt!1365152 (rule!9392 (_1!23521 (v!39211 lt!1365136))) lt!1365138 lt!1365137) (_2!23521 (v!39211 lt!1365136)))))))

(declare-fun lt!1365151 () Unit!59657)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1297 (LexerInterface!6055 List!41644 List!41641 List!41641 List!41641 Rule!12732) Unit!59657)

(assert (=> b!3917870 (= lt!1365151 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1297 thiss!20629 rules!2768 lt!1365137 lt!1365153 (_2!23521 (v!39211 lt!1365136)) (rule!9392 (_1!23521 (v!39211 lt!1365136)))))))

(declare-fun b!3917871 () Bool)

(declare-fun res!1584738 () Bool)

(assert (=> b!3917871 (=> res!1584738 e!2422403)))

(declare-fun suffix!1176 () List!41641)

(assert (=> b!3917871 (= res!1584738 (or (not (= lt!1365142 (tuple2!40777 (_1!23522 lt!1365142) (_2!23522 lt!1365142)))) (= (_2!23521 (v!39211 lt!1365136)) suffix!1176)))))

(declare-fun tp!1192491 () Bool)

(declare-fun b!3917872 () Bool)

(declare-fun inv!55712 (String!47198) Bool)

(declare-fun inv!55716 (TokenValueInjection!12820) Bool)

(assert (=> b!3917872 (= e!2422382 (and tp!1192491 (inv!55712 (tag!7326 (rule!9392 (h!46939 suffixTokens!72)))) (inv!55716 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))) e!2422406))))

(declare-fun b!3917873 () Bool)

(declare-fun e!2422402 () Bool)

(assert (=> b!3917873 (= e!2422402 e!2422381)))

(declare-fun res!1584721 () Bool)

(assert (=> b!3917873 (=> (not res!1584721) (not e!2422381))))

(get-info :version)

(assert (=> b!3917873 (= res!1584721 ((_ is Some!8885) lt!1365136))))

(declare-fun maxPrefix!3359 (LexerInterface!6055 List!41644 List!41641) Option!8886)

(assert (=> b!3917873 (= lt!1365136 (maxPrefix!3359 thiss!20629 rules!2768 lt!1365153))))

(declare-fun e!2422389 () Bool)

(assert (=> b!3917874 (= e!2422389 (and tp!1192495 tp!1192484))))

(declare-fun b!3917875 () Bool)

(declare-fun res!1584734 () Bool)

(assert (=> b!3917875 (=> (not res!1584734) (not e!2422396))))

(declare-fun prefix!426 () List!41641)

(declare-fun isEmpty!24711 (List!41641) Bool)

(assert (=> b!3917875 (= res!1584734 (not (isEmpty!24711 prefix!426)))))

(declare-fun b!3917876 () Bool)

(declare-fun e!2422400 () Bool)

(assert (=> b!3917876 (= e!2422400 e!2422390)))

(declare-fun res!1584733 () Bool)

(assert (=> b!3917876 (=> res!1584733 e!2422390)))

(declare-fun lt!1365145 () Int)

(declare-fun lt!1365148 () Int)

(declare-fun lt!1365150 () Int)

(assert (=> b!3917876 (= res!1584733 (or (not (= (+ lt!1365148 lt!1365145) lt!1365150)) (<= lt!1365138 lt!1365148)))))

(assert (=> b!3917876 (= lt!1365148 (size!31174 prefix!426))))

(declare-fun tp!1192496 () Bool)

(declare-fun b!3917877 () Bool)

(declare-fun e!2422392 () Bool)

(assert (=> b!3917877 (= e!2422392 (and tp!1192496 (inv!55712 (tag!7326 (h!46940 rules!2768))) (inv!55716 (transformation!6466 (h!46940 rules!2768))) e!2422389))))

(declare-fun b!3917878 () Bool)

(assert (=> b!3917878 (= e!2422398 (= (size!31173 (_1!23521 (v!39211 lt!1365136))) (size!31174 (originalCharacters!7066 (_1!23521 (v!39211 lt!1365136))))))))

(declare-fun b!3917879 () Bool)

(declare-fun e!2422404 () Bool)

(declare-fun tp!1192486 () Bool)

(assert (=> b!3917879 (= e!2422404 (and e!2422392 tp!1192486))))

(declare-fun b!3917880 () Bool)

(declare-fun e!2422401 () Bool)

(assert (=> b!3917880 (= e!2422401 e!2422400)))

(declare-fun res!1584725 () Bool)

(assert (=> b!3917880 (=> res!1584725 e!2422400)))

(declare-fun lt!1365146 () Int)

(assert (=> b!3917880 (= res!1584725 (not (= (+ lt!1365138 lt!1365146) lt!1365150)))))

(assert (=> b!3917880 (= lt!1365150 (size!31174 lt!1365153))))

(declare-fun b!3917881 () Bool)

(declare-fun e!2422386 () Bool)

(declare-fun tp!1192492 () Bool)

(assert (=> b!3917881 (= e!2422386 (and tp_is_empty!19713 tp!1192492))))

(declare-fun res!1584722 () Bool)

(assert (=> start!367240 (=> (not res!1584722) (not e!2422396))))

(assert (=> start!367240 (= res!1584722 ((_ is Lexer!6053) thiss!20629))))

(assert (=> start!367240 e!2422396))

(assert (=> start!367240 e!2422391))

(assert (=> start!367240 true))

(declare-fun e!2422397 () Bool)

(assert (=> start!367240 e!2422397))

(assert (=> start!367240 e!2422404))

(assert (=> start!367240 e!2422387))

(declare-fun e!2422388 () Bool)

(assert (=> start!367240 e!2422388))

(assert (=> start!367240 e!2422386))

(declare-fun b!3917882 () Bool)

(declare-fun res!1584724 () Bool)

(assert (=> b!3917882 (=> (not res!1584724) (not e!2422396))))

(declare-fun rulesInvariant!5398 (LexerInterface!6055 List!41644) Bool)

(assert (=> b!3917882 (= res!1584724 (rulesInvariant!5398 thiss!20629 rules!2768))))

(declare-fun tp!1192490 () Bool)

(declare-fun e!2422385 () Bool)

(declare-fun b!3917883 () Bool)

(assert (=> b!3917883 (= e!2422385 (and tp!1192490 (inv!55712 (tag!7326 (rule!9392 (h!46939 prefixTokens!80)))) (inv!55716 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))) e!2422407))))

(declare-fun b!3917884 () Bool)

(assert (=> b!3917884 (= e!2422403 e!2422401)))

(declare-fun res!1584723 () Bool)

(assert (=> b!3917884 (=> res!1584723 e!2422401)))

(assert (=> b!3917884 (= res!1584723 (>= lt!1365146 lt!1365145))))

(assert (=> b!3917884 (= lt!1365145 (size!31174 suffix!1176))))

(assert (=> b!3917884 (= lt!1365146 (size!31174 (_2!23521 (v!39211 lt!1365136))))))

(declare-fun b!3917885 () Bool)

(declare-fun res!1584737 () Bool)

(assert (=> b!3917885 (=> (not res!1584737) (not e!2422396))))

(declare-fun isEmpty!24712 (List!41644) Bool)

(assert (=> b!3917885 (= res!1584737 (not (isEmpty!24712 rules!2768)))))

(declare-fun b!3917886 () Bool)

(assert (=> b!3917886 (= e!2422396 e!2422402)))

(declare-fun res!1584739 () Bool)

(assert (=> b!3917886 (=> (not res!1584739) (not e!2422402))))

(declare-fun lt!1365144 () tuple2!40776)

(declare-fun suffixResult!91 () List!41641)

(declare-fun lt!1365149 () List!41643)

(assert (=> b!3917886 (= res!1584739 (= lt!1365144 (tuple2!40777 lt!1365149 suffixResult!91)))))

(assert (=> b!3917886 (= lt!1365144 (lexList!1823 thiss!20629 rules!2768 lt!1365153))))

(declare-fun ++!10690 (List!41643 List!41643) List!41643)

(assert (=> b!3917886 (= lt!1365149 (++!10690 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3917886 (= lt!1365153 (++!10689 prefix!426 suffix!1176))))

(declare-fun b!3917887 () Bool)

(declare-fun tp!1192483 () Bool)

(assert (=> b!3917887 (= e!2422397 (and tp_is_empty!19713 tp!1192483))))

(declare-fun b!3917888 () Bool)

(declare-fun res!1584730 () Bool)

(assert (=> b!3917888 (=> (not res!1584730) (not e!2422402))))

(assert (=> b!3917888 (= res!1584730 (= (lexList!1823 thiss!20629 rules!2768 suffix!1176) (tuple2!40777 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3917889 () Bool)

(declare-fun res!1584728 () Bool)

(assert (=> b!3917889 (=> res!1584728 e!2422384)))

(assert (=> b!3917889 (= res!1584728 (>= (size!31174 (_2!23521 lt!1365143)) lt!1365145))))

(declare-fun tp!1192489 () Bool)

(declare-fun b!3917890 () Bool)

(assert (=> b!3917890 (= e!2422388 (and (inv!55715 (h!46939 suffixTokens!72)) e!2422408 tp!1192489))))

(declare-fun tp!1192498 () Bool)

(declare-fun b!3917891 () Bool)

(assert (=> b!3917891 (= e!2422383 (and (inv!21 (value!204915 (h!46939 prefixTokens!80))) e!2422385 tp!1192498))))

(declare-fun b!3917892 () Bool)

(declare-fun res!1584727 () Bool)

(assert (=> b!3917892 (=> res!1584727 e!2422403)))

(assert (=> b!3917892 (= res!1584727 (not (= lt!1365144 (tuple2!40777 (++!10690 (Cons!41519 (_1!23521 (v!39211 lt!1365136)) Nil!41519) (_1!23522 lt!1365142)) (_2!23522 lt!1365142)))))))

(assert (= (and start!367240 res!1584722) b!3917885))

(assert (= (and b!3917885 res!1584737) b!3917882))

(assert (= (and b!3917882 res!1584724) b!3917864))

(assert (= (and b!3917864 res!1584726) b!3917875))

(assert (= (and b!3917875 res!1584734) b!3917886))

(assert (= (and b!3917886 res!1584739) b!3917888))

(assert (= (and b!3917888 res!1584730) b!3917873))

(assert (= (and b!3917873 res!1584721) b!3917868))

(assert (= (and b!3917868 res!1584736) b!3917878))

(assert (= (and b!3917868 (not res!1584735)) b!3917892))

(assert (= (and b!3917892 (not res!1584727)) b!3917871))

(assert (= (and b!3917871 (not res!1584738)) b!3917884))

(assert (= (and b!3917884 (not res!1584723)) b!3917880))

(assert (= (and b!3917880 (not res!1584725)) b!3917876))

(assert (= (and b!3917876 (not res!1584733)) b!3917870))

(assert (= (and b!3917870 (not res!1584732)) b!3917860))

(assert (= (and b!3917860 (not res!1584729)) b!3917889))

(assert (= (and b!3917889 (not res!1584728)) b!3917863))

(assert (= (and b!3917863 (not res!1584731)) b!3917867))

(assert (= (and start!367240 ((_ is Cons!41517) suffixResult!91)) b!3917869))

(assert (= (and start!367240 ((_ is Cons!41517) suffix!1176)) b!3917887))

(assert (= b!3917877 b!3917874))

(assert (= b!3917879 b!3917877))

(assert (= (and start!367240 ((_ is Cons!41520) rules!2768)) b!3917879))

(assert (= b!3917883 b!3917866))

(assert (= b!3917891 b!3917883))

(assert (= b!3917861 b!3917891))

(assert (= (and start!367240 ((_ is Cons!41519) prefixTokens!80)) b!3917861))

(assert (= b!3917872 b!3917865))

(assert (= b!3917862 b!3917872))

(assert (= b!3917890 b!3917862))

(assert (= (and start!367240 ((_ is Cons!41519) suffixTokens!72)) b!3917890))

(assert (= (and start!367240 ((_ is Cons!41517) prefix!426)) b!3917881))

(declare-fun m!4481579 () Bool)

(assert (=> b!3917889 m!4481579))

(declare-fun m!4481581 () Bool)

(assert (=> b!3917868 m!4481581))

(declare-fun m!4481583 () Bool)

(assert (=> b!3917868 m!4481583))

(declare-fun m!4481585 () Bool)

(assert (=> b!3917868 m!4481585))

(declare-fun m!4481587 () Bool)

(assert (=> b!3917868 m!4481587))

(assert (=> b!3917868 m!4481581))

(declare-fun m!4481589 () Bool)

(assert (=> b!3917868 m!4481589))

(declare-fun m!4481591 () Bool)

(assert (=> b!3917868 m!4481591))

(declare-fun m!4481593 () Bool)

(assert (=> b!3917868 m!4481593))

(declare-fun m!4481595 () Bool)

(assert (=> b!3917868 m!4481595))

(declare-fun m!4481597 () Bool)

(assert (=> b!3917868 m!4481597))

(declare-fun m!4481599 () Bool)

(assert (=> b!3917868 m!4481599))

(declare-fun m!4481601 () Bool)

(assert (=> b!3917868 m!4481601))

(declare-fun m!4481603 () Bool)

(assert (=> b!3917868 m!4481603))

(declare-fun m!4481605 () Bool)

(assert (=> b!3917868 m!4481605))

(assert (=> b!3917868 m!4481583))

(declare-fun m!4481607 () Bool)

(assert (=> b!3917868 m!4481607))

(declare-fun m!4481609 () Bool)

(assert (=> b!3917892 m!4481609))

(declare-fun m!4481611 () Bool)

(assert (=> b!3917885 m!4481611))

(declare-fun m!4481613 () Bool)

(assert (=> b!3917863 m!4481613))

(assert (=> b!3917863 m!4481613))

(declare-fun m!4481615 () Bool)

(assert (=> b!3917863 m!4481615))

(declare-fun m!4481617 () Bool)

(assert (=> b!3917884 m!4481617))

(declare-fun m!4481619 () Bool)

(assert (=> b!3917884 m!4481619))

(declare-fun m!4481621 () Bool)

(assert (=> b!3917864 m!4481621))

(declare-fun m!4481623 () Bool)

(assert (=> b!3917891 m!4481623))

(declare-fun m!4481625 () Bool)

(assert (=> b!3917861 m!4481625))

(declare-fun m!4481627 () Bool)

(assert (=> b!3917870 m!4481627))

(declare-fun m!4481629 () Bool)

(assert (=> b!3917870 m!4481629))

(declare-fun m!4481631 () Bool)

(assert (=> b!3917870 m!4481631))

(declare-fun m!4481633 () Bool)

(assert (=> b!3917888 m!4481633))

(declare-fun m!4481635 () Bool)

(assert (=> b!3917877 m!4481635))

(declare-fun m!4481637 () Bool)

(assert (=> b!3917877 m!4481637))

(declare-fun m!4481639 () Bool)

(assert (=> b!3917876 m!4481639))

(declare-fun m!4481641 () Bool)

(assert (=> b!3917883 m!4481641))

(declare-fun m!4481643 () Bool)

(assert (=> b!3917883 m!4481643))

(declare-fun m!4481645 () Bool)

(assert (=> b!3917873 m!4481645))

(declare-fun m!4481647 () Bool)

(assert (=> b!3917878 m!4481647))

(declare-fun m!4481649 () Bool)

(assert (=> b!3917860 m!4481649))

(declare-fun m!4481651 () Bool)

(assert (=> b!3917860 m!4481651))

(declare-fun m!4481653 () Bool)

(assert (=> b!3917880 m!4481653))

(declare-fun m!4481655 () Bool)

(assert (=> b!3917890 m!4481655))

(declare-fun m!4481657 () Bool)

(assert (=> b!3917875 m!4481657))

(declare-fun m!4481659 () Bool)

(assert (=> b!3917872 m!4481659))

(declare-fun m!4481661 () Bool)

(assert (=> b!3917872 m!4481661))

(declare-fun m!4481663 () Bool)

(assert (=> b!3917882 m!4481663))

(declare-fun m!4481665 () Bool)

(assert (=> b!3917886 m!4481665))

(declare-fun m!4481667 () Bool)

(assert (=> b!3917886 m!4481667))

(declare-fun m!4481669 () Bool)

(assert (=> b!3917886 m!4481669))

(declare-fun m!4481671 () Bool)

(assert (=> b!3917862 m!4481671))

(check-sat (not b!3917873) b_and!298483 (not b_next!107127) (not b!3917891) b_and!298475 (not b!3917864) (not b!3917863) (not b!3917868) (not b_next!107133) (not b!3917890) (not b!3917883) (not b!3917879) (not b_next!107135) (not b!3917869) (not b!3917887) (not b_next!107131) (not b!3917885) b_and!298481 (not b!3917884) (not b!3917881) b_and!298485 (not b!3917861) (not b!3917870) b_and!298477 (not b!3917875) tp_is_empty!19713 (not b!3917872) (not b!3917880) (not b!3917889) (not b!3917877) (not b_next!107129) (not b!3917876) b_and!298479 (not b!3917860) (not b!3917882) (not b_next!107125) (not b!3917878) (not b!3917892) (not b!3917888) (not b!3917886) (not b!3917862))
(check-sat b_and!298483 (not b_next!107135) (not b_next!107127) b_and!298475 b_and!298485 b_and!298477 (not b_next!107129) b_and!298479 (not b_next!107133) (not b_next!107125) (not b_next!107131) b_and!298481)
(get-model)

(declare-fun d!1162320 () Bool)

(declare-fun lt!1365156 () Int)

(assert (=> d!1162320 (>= lt!1365156 0)))

(declare-fun e!2422411 () Int)

(assert (=> d!1162320 (= lt!1365156 e!2422411)))

(declare-fun c!680966 () Bool)

(assert (=> d!1162320 (= c!680966 ((_ is Nil!41517) prefix!426))))

(assert (=> d!1162320 (= (size!31174 prefix!426) lt!1365156)))

(declare-fun b!3917897 () Bool)

(assert (=> b!3917897 (= e!2422411 0)))

(declare-fun b!3917898 () Bool)

(assert (=> b!3917898 (= e!2422411 (+ 1 (size!31174 (t!324176 prefix!426))))))

(assert (= (and d!1162320 c!680966) b!3917897))

(assert (= (and d!1162320 (not c!680966)) b!3917898))

(declare-fun m!4481673 () Bool)

(assert (=> b!3917898 m!4481673))

(assert (=> b!3917876 d!1162320))

(declare-fun d!1162322 () Bool)

(assert (=> d!1162322 (= (isEmpty!24711 prefix!426) ((_ is Nil!41517) prefix!426))))

(assert (=> b!3917875 d!1162322))

(declare-fun b!3918048 () Bool)

(declare-fun e!2422495 () Bool)

(declare-fun e!2422494 () Bool)

(assert (=> b!3918048 (= e!2422495 e!2422494)))

(declare-fun res!1584828 () Bool)

(assert (=> b!3918048 (=> (not res!1584828) (not e!2422494))))

(declare-fun lt!1365213 () Option!8886)

(declare-fun isDefined!6928 (Option!8886) Bool)

(assert (=> b!3918048 (= res!1584828 (isDefined!6928 lt!1365213))))

(declare-fun b!3918049 () Bool)

(declare-fun res!1584829 () Bool)

(assert (=> b!3918049 (=> (not res!1584829) (not e!2422494))))

(assert (=> b!3918049 (= res!1584829 (matchR!5460 (regex!6466 (rule!9392 (_1!23521 (get!13719 lt!1365213)))) (list!15437 (charsOf!4290 (_1!23521 (get!13719 lt!1365213))))))))

(declare-fun d!1162324 () Bool)

(assert (=> d!1162324 e!2422495))

(declare-fun res!1584827 () Bool)

(assert (=> d!1162324 (=> res!1584827 e!2422495)))

(declare-fun isEmpty!24713 (Option!8886) Bool)

(assert (=> d!1162324 (= res!1584827 (isEmpty!24713 lt!1365213))))

(declare-fun e!2422493 () Option!8886)

(assert (=> d!1162324 (= lt!1365213 e!2422493)))

(declare-fun c!680999 () Bool)

(assert (=> d!1162324 (= c!680999 (and ((_ is Cons!41520) rules!2768) ((_ is Nil!41520) (t!324179 rules!2768))))))

(declare-fun lt!1365216 () Unit!59657)

(declare-fun lt!1365215 () Unit!59657)

(assert (=> d!1162324 (= lt!1365216 lt!1365215)))

(assert (=> d!1162324 (isPrefix!3561 lt!1365153 lt!1365153)))

(declare-fun lemmaIsPrefixRefl!2259 (List!41641 List!41641) Unit!59657)

(assert (=> d!1162324 (= lt!1365215 (lemmaIsPrefixRefl!2259 lt!1365153 lt!1365153))))

(declare-fun rulesValidInductive!2329 (LexerInterface!6055 List!41644) Bool)

(assert (=> d!1162324 (rulesValidInductive!2329 thiss!20629 rules!2768)))

(assert (=> d!1162324 (= (maxPrefix!3359 thiss!20629 rules!2768 lt!1365153) lt!1365213)))

(declare-fun b!3918050 () Bool)

(declare-fun res!1584830 () Bool)

(assert (=> b!3918050 (=> (not res!1584830) (not e!2422494))))

(assert (=> b!3918050 (= res!1584830 (= (++!10689 (list!15437 (charsOf!4290 (_1!23521 (get!13719 lt!1365213)))) (_2!23521 (get!13719 lt!1365213))) lt!1365153))))

(declare-fun b!3918051 () Bool)

(declare-fun res!1584825 () Bool)

(assert (=> b!3918051 (=> (not res!1584825) (not e!2422494))))

(assert (=> b!3918051 (= res!1584825 (= (list!15437 (charsOf!4290 (_1!23521 (get!13719 lt!1365213)))) (originalCharacters!7066 (_1!23521 (get!13719 lt!1365213)))))))

(declare-fun b!3918052 () Bool)

(declare-fun call!284559 () Option!8886)

(assert (=> b!3918052 (= e!2422493 call!284559)))

(declare-fun b!3918053 () Bool)

(declare-fun lt!1365212 () Option!8886)

(declare-fun lt!1365214 () Option!8886)

(assert (=> b!3918053 (= e!2422493 (ite (and ((_ is None!8885) lt!1365212) ((_ is None!8885) lt!1365214)) None!8885 (ite ((_ is None!8885) lt!1365214) lt!1365212 (ite ((_ is None!8885) lt!1365212) lt!1365214 (ite (>= (size!31173 (_1!23521 (v!39211 lt!1365212))) (size!31173 (_1!23521 (v!39211 lt!1365214)))) lt!1365212 lt!1365214)))))))

(assert (=> b!3918053 (= lt!1365212 call!284559)))

(assert (=> b!3918053 (= lt!1365214 (maxPrefix!3359 thiss!20629 (t!324179 rules!2768) lt!1365153))))

(declare-fun b!3918054 () Bool)

(declare-fun contains!8345 (List!41644 Rule!12732) Bool)

(assert (=> b!3918054 (= e!2422494 (contains!8345 rules!2768 (rule!9392 (_1!23521 (get!13719 lt!1365213)))))))

(declare-fun b!3918055 () Bool)

(declare-fun res!1584826 () Bool)

(assert (=> b!3918055 (=> (not res!1584826) (not e!2422494))))

(assert (=> b!3918055 (= res!1584826 (= (value!204915 (_1!23521 (get!13719 lt!1365213))) (apply!9705 (transformation!6466 (rule!9392 (_1!23521 (get!13719 lt!1365213)))) (seqFromList!4733 (originalCharacters!7066 (_1!23521 (get!13719 lt!1365213)))))))))

(declare-fun b!3918056 () Bool)

(declare-fun res!1584824 () Bool)

(assert (=> b!3918056 (=> (not res!1584824) (not e!2422494))))

(assert (=> b!3918056 (= res!1584824 (< (size!31174 (_2!23521 (get!13719 lt!1365213))) (size!31174 lt!1365153)))))

(declare-fun bm!284554 () Bool)

(assert (=> bm!284554 (= call!284559 (maxPrefixOneRule!2429 thiss!20629 (h!46940 rules!2768) lt!1365153))))

(assert (= (and d!1162324 c!680999) b!3918052))

(assert (= (and d!1162324 (not c!680999)) b!3918053))

(assert (= (or b!3918052 b!3918053) bm!284554))

(assert (= (and d!1162324 (not res!1584827)) b!3918048))

(assert (= (and b!3918048 res!1584828) b!3918051))

(assert (= (and b!3918051 res!1584825) b!3918056))

(assert (= (and b!3918056 res!1584824) b!3918050))

(assert (= (and b!3918050 res!1584830) b!3918055))

(assert (= (and b!3918055 res!1584826) b!3918049))

(assert (= (and b!3918049 res!1584829) b!3918054))

(declare-fun m!4481821 () Bool)

(assert (=> bm!284554 m!4481821))

(declare-fun m!4481823 () Bool)

(assert (=> b!3918055 m!4481823))

(declare-fun m!4481825 () Bool)

(assert (=> b!3918055 m!4481825))

(assert (=> b!3918055 m!4481825))

(declare-fun m!4481827 () Bool)

(assert (=> b!3918055 m!4481827))

(assert (=> b!3918054 m!4481823))

(declare-fun m!4481829 () Bool)

(assert (=> b!3918054 m!4481829))

(declare-fun m!4481831 () Bool)

(assert (=> d!1162324 m!4481831))

(declare-fun m!4481833 () Bool)

(assert (=> d!1162324 m!4481833))

(declare-fun m!4481835 () Bool)

(assert (=> d!1162324 m!4481835))

(declare-fun m!4481837 () Bool)

(assert (=> d!1162324 m!4481837))

(assert (=> b!3918051 m!4481823))

(declare-fun m!4481839 () Bool)

(assert (=> b!3918051 m!4481839))

(assert (=> b!3918051 m!4481839))

(declare-fun m!4481841 () Bool)

(assert (=> b!3918051 m!4481841))

(assert (=> b!3918056 m!4481823))

(declare-fun m!4481843 () Bool)

(assert (=> b!3918056 m!4481843))

(assert (=> b!3918056 m!4481653))

(assert (=> b!3918049 m!4481823))

(assert (=> b!3918049 m!4481839))

(assert (=> b!3918049 m!4481839))

(assert (=> b!3918049 m!4481841))

(assert (=> b!3918049 m!4481841))

(declare-fun m!4481845 () Bool)

(assert (=> b!3918049 m!4481845))

(assert (=> b!3918050 m!4481823))

(assert (=> b!3918050 m!4481839))

(assert (=> b!3918050 m!4481839))

(assert (=> b!3918050 m!4481841))

(assert (=> b!3918050 m!4481841))

(declare-fun m!4481847 () Bool)

(assert (=> b!3918050 m!4481847))

(declare-fun m!4481849 () Bool)

(assert (=> b!3918053 m!4481849))

(declare-fun m!4481851 () Bool)

(assert (=> b!3918048 m!4481851))

(assert (=> b!3917873 d!1162324))

(declare-fun d!1162384 () Bool)

(assert (=> d!1162384 (= (inv!55712 (tag!7326 (rule!9392 (h!46939 suffixTokens!72)))) (= (mod (str.len (value!204914 (tag!7326 (rule!9392 (h!46939 suffixTokens!72))))) 2) 0))))

(assert (=> b!3917872 d!1162384))

(declare-fun d!1162386 () Bool)

(declare-fun res!1584841 () Bool)

(declare-fun e!2422505 () Bool)

(assert (=> d!1162386 (=> (not res!1584841) (not e!2422505))))

(declare-fun semiInverseModEq!2781 (Int Int) Bool)

(assert (=> d!1162386 (= res!1584841 (semiInverseModEq!2781 (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))) (toValue!8918 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72))))))))

(assert (=> d!1162386 (= (inv!55716 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))) e!2422505)))

(declare-fun b!3918073 () Bool)

(declare-fun equivClasses!2680 (Int Int) Bool)

(assert (=> b!3918073 (= e!2422505 (equivClasses!2680 (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))) (toValue!8918 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72))))))))

(assert (= (and d!1162386 res!1584841) b!3918073))

(declare-fun m!4481853 () Bool)

(assert (=> d!1162386 m!4481853))

(declare-fun m!4481855 () Bool)

(assert (=> b!3918073 m!4481855))

(assert (=> b!3917872 d!1162386))

(declare-fun b!3918082 () Bool)

(declare-fun e!2422510 () List!41643)

(assert (=> b!3918082 (= e!2422510 (_1!23522 lt!1365142))))

(declare-fun d!1162388 () Bool)

(declare-fun e!2422511 () Bool)

(assert (=> d!1162388 e!2422511))

(declare-fun res!1584846 () Bool)

(assert (=> d!1162388 (=> (not res!1584846) (not e!2422511))))

(declare-fun lt!1365220 () List!41643)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6247 (List!41643) (InoxSet Token!12070))

(assert (=> d!1162388 (= res!1584846 (= (content!6247 lt!1365220) ((_ map or) (content!6247 (Cons!41519 (_1!23521 (v!39211 lt!1365136)) Nil!41519)) (content!6247 (_1!23522 lt!1365142)))))))

(assert (=> d!1162388 (= lt!1365220 e!2422510)))

(declare-fun c!681005 () Bool)

(assert (=> d!1162388 (= c!681005 ((_ is Nil!41519) (Cons!41519 (_1!23521 (v!39211 lt!1365136)) Nil!41519)))))

(assert (=> d!1162388 (= (++!10690 (Cons!41519 (_1!23521 (v!39211 lt!1365136)) Nil!41519) (_1!23522 lt!1365142)) lt!1365220)))

(declare-fun b!3918085 () Bool)

(assert (=> b!3918085 (= e!2422511 (or (not (= (_1!23522 lt!1365142) Nil!41519)) (= lt!1365220 (Cons!41519 (_1!23521 (v!39211 lt!1365136)) Nil!41519))))))

(declare-fun b!3918084 () Bool)

(declare-fun res!1584847 () Bool)

(assert (=> b!3918084 (=> (not res!1584847) (not e!2422511))))

(declare-fun size!31176 (List!41643) Int)

(assert (=> b!3918084 (= res!1584847 (= (size!31176 lt!1365220) (+ (size!31176 (Cons!41519 (_1!23521 (v!39211 lt!1365136)) Nil!41519)) (size!31176 (_1!23522 lt!1365142)))))))

(declare-fun b!3918083 () Bool)

(assert (=> b!3918083 (= e!2422510 (Cons!41519 (h!46939 (Cons!41519 (_1!23521 (v!39211 lt!1365136)) Nil!41519)) (++!10690 (t!324178 (Cons!41519 (_1!23521 (v!39211 lt!1365136)) Nil!41519)) (_1!23522 lt!1365142))))))

(assert (= (and d!1162388 c!681005) b!3918082))

(assert (= (and d!1162388 (not c!681005)) b!3918083))

(assert (= (and d!1162388 res!1584846) b!3918084))

(assert (= (and b!3918084 res!1584847) b!3918085))

(declare-fun m!4481857 () Bool)

(assert (=> d!1162388 m!4481857))

(declare-fun m!4481859 () Bool)

(assert (=> d!1162388 m!4481859))

(declare-fun m!4481861 () Bool)

(assert (=> d!1162388 m!4481861))

(declare-fun m!4481863 () Bool)

(assert (=> b!3918084 m!4481863))

(declare-fun m!4481865 () Bool)

(assert (=> b!3918084 m!4481865))

(declare-fun m!4481867 () Bool)

(assert (=> b!3918084 m!4481867))

(declare-fun m!4481869 () Bool)

(assert (=> b!3918083 m!4481869))

(assert (=> b!3917892 d!1162388))

(declare-fun d!1162390 () Bool)

(declare-fun c!681010 () Bool)

(assert (=> d!1162390 (= c!681010 ((_ is IntegerValue!20088) (value!204915 (h!46939 prefixTokens!80))))))

(declare-fun e!2422519 () Bool)

(assert (=> d!1162390 (= (inv!21 (value!204915 (h!46939 prefixTokens!80))) e!2422519)))

(declare-fun b!3918096 () Bool)

(declare-fun e!2422520 () Bool)

(assert (=> b!3918096 (= e!2422519 e!2422520)))

(declare-fun c!681011 () Bool)

(assert (=> b!3918096 (= c!681011 ((_ is IntegerValue!20089) (value!204915 (h!46939 prefixTokens!80))))))

(declare-fun b!3918097 () Bool)

(declare-fun inv!16 (TokenValue!6696) Bool)

(assert (=> b!3918097 (= e!2422519 (inv!16 (value!204915 (h!46939 prefixTokens!80))))))

(declare-fun b!3918098 () Bool)

(declare-fun e!2422518 () Bool)

(declare-fun inv!15 (TokenValue!6696) Bool)

(assert (=> b!3918098 (= e!2422518 (inv!15 (value!204915 (h!46939 prefixTokens!80))))))

(declare-fun b!3918099 () Bool)

(declare-fun res!1584850 () Bool)

(assert (=> b!3918099 (=> res!1584850 e!2422518)))

(assert (=> b!3918099 (= res!1584850 (not ((_ is IntegerValue!20090) (value!204915 (h!46939 prefixTokens!80)))))))

(assert (=> b!3918099 (= e!2422520 e!2422518)))

(declare-fun b!3918100 () Bool)

(declare-fun inv!17 (TokenValue!6696) Bool)

(assert (=> b!3918100 (= e!2422520 (inv!17 (value!204915 (h!46939 prefixTokens!80))))))

(assert (= (and d!1162390 c!681010) b!3918097))

(assert (= (and d!1162390 (not c!681010)) b!3918096))

(assert (= (and b!3918096 c!681011) b!3918100))

(assert (= (and b!3918096 (not c!681011)) b!3918099))

(assert (= (and b!3918099 (not res!1584850)) b!3918098))

(declare-fun m!4481871 () Bool)

(assert (=> b!3918097 m!4481871))

(declare-fun m!4481873 () Bool)

(assert (=> b!3918098 m!4481873))

(declare-fun m!4481875 () Bool)

(assert (=> b!3918100 m!4481875))

(assert (=> b!3917891 d!1162390))

(declare-fun d!1162392 () Bool)

(declare-fun e!2422551 () Bool)

(assert (=> d!1162392 e!2422551))

(declare-fun c!681021 () Bool)

(assert (=> d!1162392 (= c!681021 ((_ is EmptyExpr!11371) (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136))))))))

(declare-fun lt!1365238 () Bool)

(declare-fun e!2422552 () Bool)

(assert (=> d!1162392 (= lt!1365238 e!2422552)))

(declare-fun c!681022 () Bool)

(assert (=> d!1162392 (= c!681022 (isEmpty!24711 lt!1365137))))

(declare-fun validRegex!5180 (Regex!11371) Bool)

(assert (=> d!1162392 (validRegex!5180 (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))))))

(assert (=> d!1162392 (= (matchR!5460 (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))) lt!1365137) lt!1365238)))

(declare-fun b!3918156 () Bool)

(declare-fun e!2422547 () Bool)

(declare-fun e!2422550 () Bool)

(assert (=> b!3918156 (= e!2422547 e!2422550)))

(declare-fun res!1584892 () Bool)

(assert (=> b!3918156 (=> res!1584892 e!2422550)))

(declare-fun call!284563 () Bool)

(assert (=> b!3918156 (= res!1584892 call!284563)))

(declare-fun b!3918157 () Bool)

(declare-fun e!2422549 () Bool)

(declare-fun head!8285 (List!41641) C!22928)

(assert (=> b!3918157 (= e!2422549 (= (head!8285 lt!1365137) (c!680963 (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))))))))

(declare-fun b!3918158 () Bool)

(declare-fun res!1584893 () Bool)

(assert (=> b!3918158 (=> (not res!1584893) (not e!2422549))))

(declare-fun tail!6001 (List!41641) List!41641)

(assert (=> b!3918158 (= res!1584893 (isEmpty!24711 (tail!6001 lt!1365137)))))

(declare-fun b!3918159 () Bool)

(assert (=> b!3918159 (= e!2422551 (= lt!1365238 call!284563))))

(declare-fun b!3918160 () Bool)

(declare-fun e!2422553 () Bool)

(assert (=> b!3918160 (= e!2422551 e!2422553)))

(declare-fun c!681023 () Bool)

(assert (=> b!3918160 (= c!681023 ((_ is EmptyLang!11371) (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136))))))))

(declare-fun b!3918161 () Bool)

(declare-fun derivativeStep!3446 (Regex!11371 C!22928) Regex!11371)

(assert (=> b!3918161 (= e!2422552 (matchR!5460 (derivativeStep!3446 (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))) (head!8285 lt!1365137)) (tail!6001 lt!1365137)))))

(declare-fun b!3918162 () Bool)

(declare-fun res!1584891 () Bool)

(declare-fun e!2422548 () Bool)

(assert (=> b!3918162 (=> res!1584891 e!2422548)))

(assert (=> b!3918162 (= res!1584891 e!2422549)))

(declare-fun res!1584894 () Bool)

(assert (=> b!3918162 (=> (not res!1584894) (not e!2422549))))

(assert (=> b!3918162 (= res!1584894 lt!1365238)))

(declare-fun b!3918163 () Bool)

(assert (=> b!3918163 (= e!2422548 e!2422547)))

(declare-fun res!1584895 () Bool)

(assert (=> b!3918163 (=> (not res!1584895) (not e!2422547))))

(assert (=> b!3918163 (= res!1584895 (not lt!1365238))))

(declare-fun bm!284558 () Bool)

(assert (=> bm!284558 (= call!284563 (isEmpty!24711 lt!1365137))))

(declare-fun b!3918164 () Bool)

(assert (=> b!3918164 (= e!2422550 (not (= (head!8285 lt!1365137) (c!680963 (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136))))))))))

(declare-fun b!3918165 () Bool)

(declare-fun res!1584888 () Bool)

(assert (=> b!3918165 (=> (not res!1584888) (not e!2422549))))

(assert (=> b!3918165 (= res!1584888 (not call!284563))))

(declare-fun b!3918166 () Bool)

(declare-fun nullable!3981 (Regex!11371) Bool)

(assert (=> b!3918166 (= e!2422552 (nullable!3981 (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136))))))))

(declare-fun b!3918167 () Bool)

(declare-fun res!1584889 () Bool)

(assert (=> b!3918167 (=> res!1584889 e!2422548)))

(assert (=> b!3918167 (= res!1584889 (not ((_ is ElementMatch!11371) (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))))))))

(assert (=> b!3918167 (= e!2422553 e!2422548)))

(declare-fun b!3918168 () Bool)

(assert (=> b!3918168 (= e!2422553 (not lt!1365238))))

(declare-fun b!3918169 () Bool)

(declare-fun res!1584890 () Bool)

(assert (=> b!3918169 (=> res!1584890 e!2422550)))

(assert (=> b!3918169 (= res!1584890 (not (isEmpty!24711 (tail!6001 lt!1365137))))))

(assert (= (and d!1162392 c!681022) b!3918166))

(assert (= (and d!1162392 (not c!681022)) b!3918161))

(assert (= (and d!1162392 c!681021) b!3918159))

(assert (= (and d!1162392 (not c!681021)) b!3918160))

(assert (= (and b!3918160 c!681023) b!3918168))

(assert (= (and b!3918160 (not c!681023)) b!3918167))

(assert (= (and b!3918167 (not res!1584889)) b!3918162))

(assert (= (and b!3918162 res!1584894) b!3918165))

(assert (= (and b!3918165 res!1584888) b!3918158))

(assert (= (and b!3918158 res!1584893) b!3918157))

(assert (= (and b!3918162 (not res!1584891)) b!3918163))

(assert (= (and b!3918163 res!1584895) b!3918156))

(assert (= (and b!3918156 (not res!1584892)) b!3918169))

(assert (= (and b!3918169 (not res!1584890)) b!3918164))

(assert (= (or b!3918159 b!3918156 b!3918165) bm!284558))

(declare-fun m!4481919 () Bool)

(assert (=> b!3918158 m!4481919))

(assert (=> b!3918158 m!4481919))

(declare-fun m!4481921 () Bool)

(assert (=> b!3918158 m!4481921))

(declare-fun m!4481923 () Bool)

(assert (=> b!3918166 m!4481923))

(declare-fun m!4481925 () Bool)

(assert (=> b!3918164 m!4481925))

(assert (=> b!3918161 m!4481925))

(assert (=> b!3918161 m!4481925))

(declare-fun m!4481927 () Bool)

(assert (=> b!3918161 m!4481927))

(assert (=> b!3918161 m!4481919))

(assert (=> b!3918161 m!4481927))

(assert (=> b!3918161 m!4481919))

(declare-fun m!4481929 () Bool)

(assert (=> b!3918161 m!4481929))

(assert (=> b!3918169 m!4481919))

(assert (=> b!3918169 m!4481919))

(assert (=> b!3918169 m!4481921))

(assert (=> b!3918157 m!4481925))

(declare-fun m!4481931 () Bool)

(assert (=> bm!284558 m!4481931))

(assert (=> d!1162392 m!4481931))

(declare-fun m!4481933 () Bool)

(assert (=> d!1162392 m!4481933))

(assert (=> b!3917870 d!1162392))

(declare-fun b!3918316 () Bool)

(declare-fun e!2422648 () Bool)

(declare-datatypes ((tuple2!40780 0))(
  ( (tuple2!40781 (_1!23524 List!41641) (_2!23524 List!41641)) )
))
(declare-fun findLongestMatchInner!1242 (Regex!11371 List!41641 Int List!41641 List!41641 Int) tuple2!40780)

(assert (=> b!3918316 (= e!2422648 (matchR!5460 (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))) (_1!23524 (findLongestMatchInner!1242 (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))) Nil!41517 (size!31174 Nil!41517) lt!1365153 lt!1365153 (size!31174 lt!1365153)))))))

(declare-fun b!3918317 () Bool)

(declare-fun e!2422647 () Bool)

(declare-fun lt!1365277 () Option!8886)

(assert (=> b!3918317 (= e!2422647 (= (size!31173 (_1!23521 (get!13719 lt!1365277))) (size!31174 (originalCharacters!7066 (_1!23521 (get!13719 lt!1365277))))))))

(declare-fun d!1162396 () Bool)

(declare-fun e!2422645 () Bool)

(assert (=> d!1162396 e!2422645))

(declare-fun res!1584948 () Bool)

(assert (=> d!1162396 (=> res!1584948 e!2422645)))

(assert (=> d!1162396 (= res!1584948 (isEmpty!24713 lt!1365277))))

(declare-fun e!2422646 () Option!8886)

(assert (=> d!1162396 (= lt!1365277 e!2422646)))

(declare-fun c!681043 () Bool)

(declare-fun lt!1365276 () tuple2!40780)

(assert (=> d!1162396 (= c!681043 (isEmpty!24711 (_1!23524 lt!1365276)))))

(declare-fun findLongestMatch!1155 (Regex!11371 List!41641) tuple2!40780)

(assert (=> d!1162396 (= lt!1365276 (findLongestMatch!1155 (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))) lt!1365153))))

(assert (=> d!1162396 (ruleValid!2414 thiss!20629 (rule!9392 (_1!23521 (v!39211 lt!1365136))))))

(assert (=> d!1162396 (= (maxPrefixOneRule!2429 thiss!20629 (rule!9392 (_1!23521 (v!39211 lt!1365136))) lt!1365153) lt!1365277)))

(declare-fun b!3918318 () Bool)

(declare-fun size!31178 (BalanceConc!24948) Int)

(assert (=> b!3918318 (= e!2422646 (Some!8885 (tuple2!40775 (Token!12071 (apply!9705 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))) (seqFromList!4733 (_1!23524 lt!1365276))) (rule!9392 (_1!23521 (v!39211 lt!1365136))) (size!31178 (seqFromList!4733 (_1!23524 lt!1365276))) (_1!23524 lt!1365276)) (_2!23524 lt!1365276))))))

(declare-fun lt!1365274 () Unit!59657)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1215 (Regex!11371 List!41641) Unit!59657)

(assert (=> b!3918318 (= lt!1365274 (longestMatchIsAcceptedByMatchOrIsEmpty!1215 (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))) lt!1365153))))

(declare-fun res!1584943 () Bool)

(assert (=> b!3918318 (= res!1584943 (isEmpty!24711 (_1!23524 (findLongestMatchInner!1242 (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))) Nil!41517 (size!31174 Nil!41517) lt!1365153 lt!1365153 (size!31174 lt!1365153)))))))

(assert (=> b!3918318 (=> res!1584943 e!2422648)))

(assert (=> b!3918318 e!2422648))

(declare-fun lt!1365278 () Unit!59657)

(assert (=> b!3918318 (= lt!1365278 lt!1365274)))

(declare-fun lt!1365275 () Unit!59657)

(declare-fun lemmaSemiInverse!1748 (TokenValueInjection!12820 BalanceConc!24948) Unit!59657)

(assert (=> b!3918318 (= lt!1365275 (lemmaSemiInverse!1748 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))) (seqFromList!4733 (_1!23524 lt!1365276))))))

(declare-fun b!3918319 () Bool)

(declare-fun res!1584945 () Bool)

(assert (=> b!3918319 (=> (not res!1584945) (not e!2422647))))

(assert (=> b!3918319 (= res!1584945 (< (size!31174 (_2!23521 (get!13719 lt!1365277))) (size!31174 lt!1365153)))))

(declare-fun b!3918320 () Bool)

(declare-fun res!1584947 () Bool)

(assert (=> b!3918320 (=> (not res!1584947) (not e!2422647))))

(assert (=> b!3918320 (= res!1584947 (= (++!10689 (list!15437 (charsOf!4290 (_1!23521 (get!13719 lt!1365277)))) (_2!23521 (get!13719 lt!1365277))) lt!1365153))))

(declare-fun b!3918321 () Bool)

(assert (=> b!3918321 (= e!2422646 None!8885)))

(declare-fun b!3918322 () Bool)

(declare-fun res!1584946 () Bool)

(assert (=> b!3918322 (=> (not res!1584946) (not e!2422647))))

(assert (=> b!3918322 (= res!1584946 (= (value!204915 (_1!23521 (get!13719 lt!1365277))) (apply!9705 (transformation!6466 (rule!9392 (_1!23521 (get!13719 lt!1365277)))) (seqFromList!4733 (originalCharacters!7066 (_1!23521 (get!13719 lt!1365277)))))))))

(declare-fun b!3918323 () Bool)

(assert (=> b!3918323 (= e!2422645 e!2422647)))

(declare-fun res!1584944 () Bool)

(assert (=> b!3918323 (=> (not res!1584944) (not e!2422647))))

(assert (=> b!3918323 (= res!1584944 (matchR!5460 (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))) (list!15437 (charsOf!4290 (_1!23521 (get!13719 lt!1365277))))))))

(declare-fun b!3918324 () Bool)

(declare-fun res!1584949 () Bool)

(assert (=> b!3918324 (=> (not res!1584949) (not e!2422647))))

(assert (=> b!3918324 (= res!1584949 (= (rule!9392 (_1!23521 (get!13719 lt!1365277))) (rule!9392 (_1!23521 (v!39211 lt!1365136)))))))

(assert (= (and d!1162396 c!681043) b!3918321))

(assert (= (and d!1162396 (not c!681043)) b!3918318))

(assert (= (and b!3918318 (not res!1584943)) b!3918316))

(assert (= (and d!1162396 (not res!1584948)) b!3918323))

(assert (= (and b!3918323 res!1584944) b!3918320))

(assert (= (and b!3918320 res!1584947) b!3918319))

(assert (= (and b!3918319 res!1584945) b!3918324))

(assert (= (and b!3918324 res!1584949) b!3918322))

(assert (= (and b!3918322 res!1584946) b!3918317))

(declare-fun m!4482043 () Bool)

(assert (=> b!3918320 m!4482043))

(declare-fun m!4482045 () Bool)

(assert (=> b!3918320 m!4482045))

(assert (=> b!3918320 m!4482045))

(declare-fun m!4482047 () Bool)

(assert (=> b!3918320 m!4482047))

(assert (=> b!3918320 m!4482047))

(declare-fun m!4482049 () Bool)

(assert (=> b!3918320 m!4482049))

(declare-fun m!4482051 () Bool)

(assert (=> b!3918316 m!4482051))

(assert (=> b!3918316 m!4481653))

(assert (=> b!3918316 m!4482051))

(assert (=> b!3918316 m!4481653))

(declare-fun m!4482053 () Bool)

(assert (=> b!3918316 m!4482053))

(declare-fun m!4482055 () Bool)

(assert (=> b!3918316 m!4482055))

(declare-fun m!4482057 () Bool)

(assert (=> d!1162396 m!4482057))

(declare-fun m!4482059 () Bool)

(assert (=> d!1162396 m!4482059))

(declare-fun m!4482061 () Bool)

(assert (=> d!1162396 m!4482061))

(assert (=> d!1162396 m!4481599))

(assert (=> b!3918317 m!4482043))

(declare-fun m!4482063 () Bool)

(assert (=> b!3918317 m!4482063))

(assert (=> b!3918323 m!4482043))

(assert (=> b!3918323 m!4482045))

(assert (=> b!3918323 m!4482045))

(assert (=> b!3918323 m!4482047))

(assert (=> b!3918323 m!4482047))

(declare-fun m!4482065 () Bool)

(assert (=> b!3918323 m!4482065))

(assert (=> b!3918319 m!4482043))

(declare-fun m!4482067 () Bool)

(assert (=> b!3918319 m!4482067))

(assert (=> b!3918319 m!4481653))

(assert (=> b!3918324 m!4482043))

(declare-fun m!4482069 () Bool)

(assert (=> b!3918318 m!4482069))

(declare-fun m!4482071 () Bool)

(assert (=> b!3918318 m!4482071))

(assert (=> b!3918318 m!4482051))

(assert (=> b!3918318 m!4481653))

(assert (=> b!3918318 m!4482053))

(assert (=> b!3918318 m!4482069))

(assert (=> b!3918318 m!4482051))

(declare-fun m!4482073 () Bool)

(assert (=> b!3918318 m!4482073))

(declare-fun m!4482075 () Bool)

(assert (=> b!3918318 m!4482075))

(assert (=> b!3918318 m!4482069))

(declare-fun m!4482077 () Bool)

(assert (=> b!3918318 m!4482077))

(assert (=> b!3918318 m!4481653))

(assert (=> b!3918318 m!4482069))

(declare-fun m!4482079 () Bool)

(assert (=> b!3918318 m!4482079))

(assert (=> b!3918322 m!4482043))

(declare-fun m!4482081 () Bool)

(assert (=> b!3918322 m!4482081))

(assert (=> b!3918322 m!4482081))

(declare-fun m!4482083 () Bool)

(assert (=> b!3918322 m!4482083))

(assert (=> b!3917870 d!1162396))

(declare-fun d!1162432 () Bool)

(assert (=> d!1162432 (= (maxPrefixOneRule!2429 thiss!20629 (rule!9392 (_1!23521 (v!39211 lt!1365136))) lt!1365153) (Some!8885 (tuple2!40775 (Token!12071 (apply!9705 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))) (seqFromList!4733 lt!1365137)) (rule!9392 (_1!23521 (v!39211 lt!1365136))) (size!31174 lt!1365137) lt!1365137) (_2!23521 (v!39211 lt!1365136)))))))

(declare-fun lt!1365281 () Unit!59657)

(declare-fun choose!23211 (LexerInterface!6055 List!41644 List!41641 List!41641 List!41641 Rule!12732) Unit!59657)

(assert (=> d!1162432 (= lt!1365281 (choose!23211 thiss!20629 rules!2768 lt!1365137 lt!1365153 (_2!23521 (v!39211 lt!1365136)) (rule!9392 (_1!23521 (v!39211 lt!1365136)))))))

(assert (=> d!1162432 (not (isEmpty!24712 rules!2768))))

(assert (=> d!1162432 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1297 thiss!20629 rules!2768 lt!1365137 lt!1365153 (_2!23521 (v!39211 lt!1365136)) (rule!9392 (_1!23521 (v!39211 lt!1365136)))) lt!1365281)))

(declare-fun bs!585810 () Bool)

(assert (= bs!585810 d!1162432))

(assert (=> bs!585810 m!4481583))

(assert (=> bs!585810 m!4481583))

(assert (=> bs!585810 m!4481607))

(assert (=> bs!585810 m!4481611))

(assert (=> bs!585810 m!4481595))

(declare-fun m!4482085 () Bool)

(assert (=> bs!585810 m!4482085))

(assert (=> bs!585810 m!4481629))

(assert (=> b!3917870 d!1162432))

(declare-fun d!1162434 () Bool)

(declare-fun res!1584954 () Bool)

(declare-fun e!2422651 () Bool)

(assert (=> d!1162434 (=> (not res!1584954) (not e!2422651))))

(assert (=> d!1162434 (= res!1584954 (not (isEmpty!24711 (originalCharacters!7066 (h!46939 suffixTokens!72)))))))

(assert (=> d!1162434 (= (inv!55715 (h!46939 suffixTokens!72)) e!2422651)))

(declare-fun b!3918329 () Bool)

(declare-fun res!1584955 () Bool)

(assert (=> b!3918329 (=> (not res!1584955) (not e!2422651))))

(declare-fun dynLambda!17841 (Int TokenValue!6696) BalanceConc!24948)

(assert (=> b!3918329 (= res!1584955 (= (originalCharacters!7066 (h!46939 suffixTokens!72)) (list!15437 (dynLambda!17841 (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))) (value!204915 (h!46939 suffixTokens!72))))))))

(declare-fun b!3918330 () Bool)

(assert (=> b!3918330 (= e!2422651 (= (size!31173 (h!46939 suffixTokens!72)) (size!31174 (originalCharacters!7066 (h!46939 suffixTokens!72)))))))

(assert (= (and d!1162434 res!1584954) b!3918329))

(assert (= (and b!3918329 res!1584955) b!3918330))

(declare-fun b_lambda!114735 () Bool)

(assert (=> (not b_lambda!114735) (not b!3918329)))

(declare-fun tb!233861 () Bool)

(declare-fun t!324229 () Bool)

(assert (=> (and b!3917874 (= (toChars!8777 (transformation!6466 (h!46940 rules!2768))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72))))) t!324229) tb!233861))

(declare-fun b!3918335 () Bool)

(declare-fun e!2422654 () Bool)

(declare-fun tp!1192570 () Bool)

(declare-fun inv!55719 (Conc!12677) Bool)

(assert (=> b!3918335 (= e!2422654 (and (inv!55719 (c!680962 (dynLambda!17841 (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))) (value!204915 (h!46939 suffixTokens!72))))) tp!1192570))))

(declare-fun result!283378 () Bool)

(declare-fun inv!55720 (BalanceConc!24948) Bool)

(assert (=> tb!233861 (= result!283378 (and (inv!55720 (dynLambda!17841 (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))) (value!204915 (h!46939 suffixTokens!72)))) e!2422654))))

(assert (= tb!233861 b!3918335))

(declare-fun m!4482087 () Bool)

(assert (=> b!3918335 m!4482087))

(declare-fun m!4482089 () Bool)

(assert (=> tb!233861 m!4482089))

(assert (=> b!3918329 t!324229))

(declare-fun b_and!298523 () Bool)

(assert (= b_and!298477 (and (=> t!324229 result!283378) b_and!298523)))

(declare-fun tb!233863 () Bool)

(declare-fun t!324231 () Bool)

(assert (=> (and b!3917866 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72))))) t!324231) tb!233863))

(declare-fun result!283382 () Bool)

(assert (= result!283382 result!283378))

(assert (=> b!3918329 t!324231))

(declare-fun b_and!298525 () Bool)

(assert (= b_and!298481 (and (=> t!324231 result!283382) b_and!298525)))

(declare-fun t!324233 () Bool)

(declare-fun tb!233865 () Bool)

(assert (=> (and b!3917865 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72))))) t!324233) tb!233865))

(declare-fun result!283384 () Bool)

(assert (= result!283384 result!283378))

(assert (=> b!3918329 t!324233))

(declare-fun b_and!298527 () Bool)

(assert (= b_and!298485 (and (=> t!324233 result!283384) b_and!298527)))

(declare-fun m!4482091 () Bool)

(assert (=> d!1162434 m!4482091))

(declare-fun m!4482093 () Bool)

(assert (=> b!3918329 m!4482093))

(assert (=> b!3918329 m!4482093))

(declare-fun m!4482095 () Bool)

(assert (=> b!3918329 m!4482095))

(declare-fun m!4482097 () Bool)

(assert (=> b!3918330 m!4482097))

(assert (=> b!3917890 d!1162434))

(declare-fun d!1162436 () Bool)

(declare-fun lt!1365282 () Int)

(assert (=> d!1162436 (>= lt!1365282 0)))

(declare-fun e!2422655 () Int)

(assert (=> d!1162436 (= lt!1365282 e!2422655)))

(declare-fun c!681044 () Bool)

(assert (=> d!1162436 (= c!681044 ((_ is Nil!41517) (_2!23521 lt!1365143)))))

(assert (=> d!1162436 (= (size!31174 (_2!23521 lt!1365143)) lt!1365282)))

(declare-fun b!3918336 () Bool)

(assert (=> b!3918336 (= e!2422655 0)))

(declare-fun b!3918337 () Bool)

(assert (=> b!3918337 (= e!2422655 (+ 1 (size!31174 (t!324176 (_2!23521 lt!1365143)))))))

(assert (= (and d!1162436 c!681044) b!3918336))

(assert (= (and d!1162436 (not c!681044)) b!3918337))

(declare-fun m!4482099 () Bool)

(assert (=> b!3918337 m!4482099))

(assert (=> b!3917889 d!1162436))

(declare-fun d!1162438 () Bool)

(declare-fun lt!1365283 () Int)

(assert (=> d!1162438 (>= lt!1365283 0)))

(declare-fun e!2422656 () Int)

(assert (=> d!1162438 (= lt!1365283 e!2422656)))

(declare-fun c!681045 () Bool)

(assert (=> d!1162438 (= c!681045 ((_ is Nil!41517) lt!1365137))))

(assert (=> d!1162438 (= (size!31174 lt!1365137) lt!1365283)))

(declare-fun b!3918338 () Bool)

(assert (=> b!3918338 (= e!2422656 0)))

(declare-fun b!3918339 () Bool)

(assert (=> b!3918339 (= e!2422656 (+ 1 (size!31174 (t!324176 lt!1365137))))))

(assert (= (and d!1162438 c!681045) b!3918338))

(assert (= (and d!1162438 (not c!681045)) b!3918339))

(declare-fun m!4482101 () Bool)

(assert (=> b!3918339 m!4482101))

(assert (=> b!3917868 d!1162438))

(declare-fun d!1162440 () Bool)

(declare-fun res!1584960 () Bool)

(declare-fun e!2422659 () Bool)

(assert (=> d!1162440 (=> (not res!1584960) (not e!2422659))))

(assert (=> d!1162440 (= res!1584960 (validRegex!5180 (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136))))))))

(assert (=> d!1162440 (= (ruleValid!2414 thiss!20629 (rule!9392 (_1!23521 (v!39211 lt!1365136)))) e!2422659)))

(declare-fun b!3918344 () Bool)

(declare-fun res!1584961 () Bool)

(assert (=> b!3918344 (=> (not res!1584961) (not e!2422659))))

(assert (=> b!3918344 (= res!1584961 (not (nullable!3981 (regex!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))))))))

(declare-fun b!3918345 () Bool)

(assert (=> b!3918345 (= e!2422659 (not (= (tag!7326 (rule!9392 (_1!23521 (v!39211 lt!1365136)))) (String!47199 ""))))))

(assert (= (and d!1162440 res!1584960) b!3918344))

(assert (= (and b!3918344 res!1584961) b!3918345))

(assert (=> d!1162440 m!4481933))

(assert (=> b!3918344 m!4481923))

(assert (=> b!3917868 d!1162440))

(declare-fun d!1162442 () Bool)

(declare-fun dynLambda!17842 (Int BalanceConc!24948) TokenValue!6696)

(assert (=> d!1162442 (= (apply!9705 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))) (seqFromList!4733 lt!1365137)) (dynLambda!17842 (toValue!8918 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136))))) (seqFromList!4733 lt!1365137)))))

(declare-fun b_lambda!114737 () Bool)

(assert (=> (not b_lambda!114737) (not d!1162442)))

(declare-fun t!324235 () Bool)

(declare-fun tb!233867 () Bool)

(assert (=> (and b!3917874 (= (toValue!8918 (transformation!6466 (h!46940 rules!2768))) (toValue!8918 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))))) t!324235) tb!233867))

(declare-fun result!283386 () Bool)

(assert (=> tb!233867 (= result!283386 (inv!21 (dynLambda!17842 (toValue!8918 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136))))) (seqFromList!4733 lt!1365137))))))

(declare-fun m!4482103 () Bool)

(assert (=> tb!233867 m!4482103))

(assert (=> d!1162442 t!324235))

(declare-fun b_and!298529 () Bool)

(assert (= b_and!298475 (and (=> t!324235 result!283386) b_and!298529)))

(declare-fun t!324237 () Bool)

(declare-fun tb!233869 () Bool)

(assert (=> (and b!3917866 (= (toValue!8918 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))) (toValue!8918 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))))) t!324237) tb!233869))

(declare-fun result!283390 () Bool)

(assert (= result!283390 result!283386))

(assert (=> d!1162442 t!324237))

(declare-fun b_and!298531 () Bool)

(assert (= b_and!298479 (and (=> t!324237 result!283390) b_and!298531)))

(declare-fun t!324239 () Bool)

(declare-fun tb!233871 () Bool)

(assert (=> (and b!3917865 (= (toValue!8918 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))) (toValue!8918 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))))) t!324239) tb!233871))

(declare-fun result!283392 () Bool)

(assert (= result!283392 result!283386))

(assert (=> d!1162442 t!324239))

(declare-fun b_and!298533 () Bool)

(assert (= b_and!298483 (and (=> t!324239 result!283392) b_and!298533)))

(assert (=> d!1162442 m!4481583))

(declare-fun m!4482105 () Bool)

(assert (=> d!1162442 m!4482105))

(assert (=> b!3917868 d!1162442))

(declare-fun d!1162444 () Bool)

(assert (=> d!1162444 (ruleValid!2414 thiss!20629 (rule!9392 (_1!23521 (v!39211 lt!1365136))))))

(declare-fun lt!1365286 () Unit!59657)

(declare-fun choose!23212 (LexerInterface!6055 Rule!12732 List!41644) Unit!59657)

(assert (=> d!1162444 (= lt!1365286 (choose!23212 thiss!20629 (rule!9392 (_1!23521 (v!39211 lt!1365136))) rules!2768))))

(assert (=> d!1162444 (contains!8345 rules!2768 (rule!9392 (_1!23521 (v!39211 lt!1365136))))))

(assert (=> d!1162444 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1494 thiss!20629 (rule!9392 (_1!23521 (v!39211 lt!1365136))) rules!2768) lt!1365286)))

(declare-fun bs!585811 () Bool)

(assert (= bs!585811 d!1162444))

(assert (=> bs!585811 m!4481599))

(declare-fun m!4482107 () Bool)

(assert (=> bs!585811 m!4482107))

(declare-fun m!4482109 () Bool)

(assert (=> bs!585811 m!4482109))

(assert (=> b!3917868 d!1162444))

(declare-fun d!1162446 () Bool)

(assert (=> d!1162446 (= (size!31173 (_1!23521 (v!39211 lt!1365136))) (size!31174 (originalCharacters!7066 (_1!23521 (v!39211 lt!1365136)))))))

(declare-fun Unit!59660 () Unit!59657)

(assert (=> d!1162446 (= (lemmaCharactersSize!1123 (_1!23521 (v!39211 lt!1365136))) Unit!59660)))

(declare-fun bs!585812 () Bool)

(assert (= bs!585812 d!1162446))

(assert (=> bs!585812 m!4481647))

(assert (=> b!3917868 d!1162446))

(declare-fun b!3918358 () Bool)

(declare-fun e!2422670 () Bool)

(declare-fun e!2422671 () Bool)

(assert (=> b!3918358 (= e!2422670 e!2422671)))

(declare-fun res!1584964 () Bool)

(declare-fun lt!1365293 () tuple2!40776)

(assert (=> b!3918358 (= res!1584964 (< (size!31174 (_2!23522 lt!1365293)) (size!31174 (_2!23521 (v!39211 lt!1365136)))))))

(assert (=> b!3918358 (=> (not res!1584964) (not e!2422671))))

(declare-fun b!3918359 () Bool)

(declare-fun e!2422669 () tuple2!40776)

(declare-fun lt!1365294 () Option!8886)

(declare-fun lt!1365295 () tuple2!40776)

(assert (=> b!3918359 (= e!2422669 (tuple2!40777 (Cons!41519 (_1!23521 (v!39211 lt!1365294)) (_1!23522 lt!1365295)) (_2!23522 lt!1365295)))))

(assert (=> b!3918359 (= lt!1365295 (lexList!1823 thiss!20629 rules!2768 (_2!23521 (v!39211 lt!1365294))))))

(declare-fun d!1162448 () Bool)

(assert (=> d!1162448 e!2422670))

(declare-fun c!681051 () Bool)

(assert (=> d!1162448 (= c!681051 (> (size!31176 (_1!23522 lt!1365293)) 0))))

(assert (=> d!1162448 (= lt!1365293 e!2422669)))

(declare-fun c!681050 () Bool)

(assert (=> d!1162448 (= c!681050 ((_ is Some!8885) lt!1365294))))

(assert (=> d!1162448 (= lt!1365294 (maxPrefix!3359 thiss!20629 rules!2768 (_2!23521 (v!39211 lt!1365136))))))

(assert (=> d!1162448 (= (lexList!1823 thiss!20629 rules!2768 (_2!23521 (v!39211 lt!1365136))) lt!1365293)))

(declare-fun b!3918360 () Bool)

(assert (=> b!3918360 (= e!2422670 (= (_2!23522 lt!1365293) (_2!23521 (v!39211 lt!1365136))))))

(declare-fun b!3918361 () Bool)

(assert (=> b!3918361 (= e!2422669 (tuple2!40777 Nil!41519 (_2!23521 (v!39211 lt!1365136))))))

(declare-fun b!3918362 () Bool)

(assert (=> b!3918362 (= e!2422671 (not (isEmpty!24710 (_1!23522 lt!1365293))))))

(assert (= (and d!1162448 c!681050) b!3918359))

(assert (= (and d!1162448 (not c!681050)) b!3918361))

(assert (= (and d!1162448 c!681051) b!3918358))

(assert (= (and d!1162448 (not c!681051)) b!3918360))

(assert (= (and b!3918358 res!1584964) b!3918362))

(declare-fun m!4482111 () Bool)

(assert (=> b!3918358 m!4482111))

(assert (=> b!3918358 m!4481619))

(declare-fun m!4482113 () Bool)

(assert (=> b!3918359 m!4482113))

(declare-fun m!4482115 () Bool)

(assert (=> d!1162448 m!4482115))

(declare-fun m!4482117 () Bool)

(assert (=> d!1162448 m!4482117))

(declare-fun m!4482119 () Bool)

(assert (=> b!3918362 m!4482119))

(assert (=> b!3917868 d!1162448))

(declare-fun b!3918372 () Bool)

(declare-fun e!2422677 () List!41641)

(assert (=> b!3918372 (= e!2422677 (Cons!41517 (h!46937 lt!1365137) (++!10689 (t!324176 lt!1365137) (_2!23521 (v!39211 lt!1365136)))))))

(declare-fun d!1162450 () Bool)

(declare-fun e!2422676 () Bool)

(assert (=> d!1162450 e!2422676))

(declare-fun res!1584969 () Bool)

(assert (=> d!1162450 (=> (not res!1584969) (not e!2422676))))

(declare-fun lt!1365298 () List!41641)

(declare-fun content!6248 (List!41641) (InoxSet C!22928))

(assert (=> d!1162450 (= res!1584969 (= (content!6248 lt!1365298) ((_ map or) (content!6248 lt!1365137) (content!6248 (_2!23521 (v!39211 lt!1365136))))))))

(assert (=> d!1162450 (= lt!1365298 e!2422677)))

(declare-fun c!681054 () Bool)

(assert (=> d!1162450 (= c!681054 ((_ is Nil!41517) lt!1365137))))

(assert (=> d!1162450 (= (++!10689 lt!1365137 (_2!23521 (v!39211 lt!1365136))) lt!1365298)))

(declare-fun b!3918371 () Bool)

(assert (=> b!3918371 (= e!2422677 (_2!23521 (v!39211 lt!1365136)))))

(declare-fun b!3918373 () Bool)

(declare-fun res!1584970 () Bool)

(assert (=> b!3918373 (=> (not res!1584970) (not e!2422676))))

(assert (=> b!3918373 (= res!1584970 (= (size!31174 lt!1365298) (+ (size!31174 lt!1365137) (size!31174 (_2!23521 (v!39211 lt!1365136))))))))

(declare-fun b!3918374 () Bool)

(assert (=> b!3918374 (= e!2422676 (or (not (= (_2!23521 (v!39211 lt!1365136)) Nil!41517)) (= lt!1365298 lt!1365137)))))

(assert (= (and d!1162450 c!681054) b!3918371))

(assert (= (and d!1162450 (not c!681054)) b!3918372))

(assert (= (and d!1162450 res!1584969) b!3918373))

(assert (= (and b!3918373 res!1584970) b!3918374))

(declare-fun m!4482121 () Bool)

(assert (=> b!3918372 m!4482121))

(declare-fun m!4482123 () Bool)

(assert (=> d!1162450 m!4482123))

(declare-fun m!4482125 () Bool)

(assert (=> d!1162450 m!4482125))

(declare-fun m!4482127 () Bool)

(assert (=> d!1162450 m!4482127))

(declare-fun m!4482129 () Bool)

(assert (=> b!3918373 m!4482129))

(assert (=> b!3918373 m!4481595))

(assert (=> b!3918373 m!4481619))

(assert (=> b!3917868 d!1162450))

(declare-fun d!1162452 () Bool)

(declare-fun lt!1365301 () BalanceConc!24948)

(assert (=> d!1162452 (= (list!15437 lt!1365301) (originalCharacters!7066 (_1!23521 (v!39211 lt!1365136))))))

(assert (=> d!1162452 (= lt!1365301 (dynLambda!17841 (toChars!8777 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136))))) (value!204915 (_1!23521 (v!39211 lt!1365136)))))))

(assert (=> d!1162452 (= (charsOf!4290 (_1!23521 (v!39211 lt!1365136))) lt!1365301)))

(declare-fun b_lambda!114739 () Bool)

(assert (=> (not b_lambda!114739) (not d!1162452)))

(declare-fun t!324241 () Bool)

(declare-fun tb!233873 () Bool)

(assert (=> (and b!3917874 (= (toChars!8777 (transformation!6466 (h!46940 rules!2768))) (toChars!8777 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))))) t!324241) tb!233873))

(declare-fun b!3918375 () Bool)

(declare-fun e!2422678 () Bool)

(declare-fun tp!1192571 () Bool)

(assert (=> b!3918375 (= e!2422678 (and (inv!55719 (c!680962 (dynLambda!17841 (toChars!8777 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136))))) (value!204915 (_1!23521 (v!39211 lt!1365136)))))) tp!1192571))))

(declare-fun result!283394 () Bool)

(assert (=> tb!233873 (= result!283394 (and (inv!55720 (dynLambda!17841 (toChars!8777 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136))))) (value!204915 (_1!23521 (v!39211 lt!1365136))))) e!2422678))))

(assert (= tb!233873 b!3918375))

(declare-fun m!4482131 () Bool)

(assert (=> b!3918375 m!4482131))

(declare-fun m!4482133 () Bool)

(assert (=> tb!233873 m!4482133))

(assert (=> d!1162452 t!324241))

(declare-fun b_and!298535 () Bool)

(assert (= b_and!298523 (and (=> t!324241 result!283394) b_and!298535)))

(declare-fun t!324243 () Bool)

(declare-fun tb!233875 () Bool)

(assert (=> (and b!3917866 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))) (toChars!8777 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))))) t!324243) tb!233875))

(declare-fun result!283396 () Bool)

(assert (= result!283396 result!283394))

(assert (=> d!1162452 t!324243))

(declare-fun b_and!298537 () Bool)

(assert (= b_and!298525 (and (=> t!324243 result!283396) b_and!298537)))

(declare-fun t!324245 () Bool)

(declare-fun tb!233877 () Bool)

(assert (=> (and b!3917865 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))) (toChars!8777 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))))) t!324245) tb!233877))

(declare-fun result!283398 () Bool)

(assert (= result!283398 result!283394))

(assert (=> d!1162452 t!324245))

(declare-fun b_and!298539 () Bool)

(assert (= b_and!298527 (and (=> t!324245 result!283398) b_and!298539)))

(declare-fun m!4482135 () Bool)

(assert (=> d!1162452 m!4482135))

(declare-fun m!4482137 () Bool)

(assert (=> d!1162452 m!4482137))

(assert (=> b!3917868 d!1162452))

(declare-fun d!1162454 () Bool)

(assert (=> d!1162454 (= (_2!23521 (v!39211 lt!1365136)) lt!1365139)))

(declare-fun lt!1365304 () Unit!59657)

(declare-fun choose!23213 (List!41641 List!41641 List!41641 List!41641 List!41641) Unit!59657)

(assert (=> d!1162454 (= lt!1365304 (choose!23213 lt!1365137 (_2!23521 (v!39211 lt!1365136)) lt!1365137 lt!1365139 lt!1365153))))

(assert (=> d!1162454 (isPrefix!3561 lt!1365137 lt!1365153)))

(assert (=> d!1162454 (= (lemmaSamePrefixThenSameSuffix!1782 lt!1365137 (_2!23521 (v!39211 lt!1365136)) lt!1365137 lt!1365139 lt!1365153) lt!1365304)))

(declare-fun bs!585813 () Bool)

(assert (= bs!585813 d!1162454))

(declare-fun m!4482139 () Bool)

(assert (=> bs!585813 m!4482139))

(declare-fun m!4482141 () Bool)

(assert (=> bs!585813 m!4482141))

(assert (=> b!3917868 d!1162454))

(declare-fun d!1162456 () Bool)

(declare-fun fromListB!2190 (List!41641) BalanceConc!24948)

(assert (=> d!1162456 (= (seqFromList!4733 lt!1365137) (fromListB!2190 lt!1365137))))

(declare-fun bs!585814 () Bool)

(assert (= bs!585814 d!1162456))

(declare-fun m!4482143 () Bool)

(assert (=> bs!585814 m!4482143))

(assert (=> b!3917868 d!1162456))

(declare-fun b!3918387 () Bool)

(declare-fun e!2422687 () Bool)

(assert (=> b!3918387 (= e!2422687 (>= (size!31174 lt!1365147) (size!31174 lt!1365137)))))

(declare-fun b!3918386 () Bool)

(declare-fun e!2422685 () Bool)

(assert (=> b!3918386 (= e!2422685 (isPrefix!3561 (tail!6001 lt!1365137) (tail!6001 lt!1365147)))))

(declare-fun b!3918385 () Bool)

(declare-fun res!1584979 () Bool)

(assert (=> b!3918385 (=> (not res!1584979) (not e!2422685))))

(assert (=> b!3918385 (= res!1584979 (= (head!8285 lt!1365137) (head!8285 lt!1365147)))))

(declare-fun b!3918384 () Bool)

(declare-fun e!2422686 () Bool)

(assert (=> b!3918384 (= e!2422686 e!2422685)))

(declare-fun res!1584980 () Bool)

(assert (=> b!3918384 (=> (not res!1584980) (not e!2422685))))

(assert (=> b!3918384 (= res!1584980 (not ((_ is Nil!41517) lt!1365147)))))

(declare-fun d!1162458 () Bool)

(assert (=> d!1162458 e!2422687))

(declare-fun res!1584981 () Bool)

(assert (=> d!1162458 (=> res!1584981 e!2422687)))

(declare-fun lt!1365307 () Bool)

(assert (=> d!1162458 (= res!1584981 (not lt!1365307))))

(assert (=> d!1162458 (= lt!1365307 e!2422686)))

(declare-fun res!1584982 () Bool)

(assert (=> d!1162458 (=> res!1584982 e!2422686)))

(assert (=> d!1162458 (= res!1584982 ((_ is Nil!41517) lt!1365137))))

(assert (=> d!1162458 (= (isPrefix!3561 lt!1365137 lt!1365147) lt!1365307)))

(assert (= (and d!1162458 (not res!1584982)) b!3918384))

(assert (= (and b!3918384 res!1584980) b!3918385))

(assert (= (and b!3918385 res!1584979) b!3918386))

(assert (= (and d!1162458 (not res!1584981)) b!3918387))

(declare-fun m!4482145 () Bool)

(assert (=> b!3918387 m!4482145))

(assert (=> b!3918387 m!4481595))

(assert (=> b!3918386 m!4481919))

(declare-fun m!4482147 () Bool)

(assert (=> b!3918386 m!4482147))

(assert (=> b!3918386 m!4481919))

(assert (=> b!3918386 m!4482147))

(declare-fun m!4482149 () Bool)

(assert (=> b!3918386 m!4482149))

(assert (=> b!3918385 m!4481925))

(declare-fun m!4482151 () Bool)

(assert (=> b!3918385 m!4482151))

(assert (=> b!3917868 d!1162458))

(declare-fun d!1162460 () Bool)

(assert (=> d!1162460 (isPrefix!3561 lt!1365137 (++!10689 lt!1365137 (_2!23521 (v!39211 lt!1365136))))))

(declare-fun lt!1365310 () Unit!59657)

(declare-fun choose!23214 (List!41641 List!41641) Unit!59657)

(assert (=> d!1162460 (= lt!1365310 (choose!23214 lt!1365137 (_2!23521 (v!39211 lt!1365136))))))

(assert (=> d!1162460 (= (lemmaConcatTwoListThenFirstIsPrefix!2424 lt!1365137 (_2!23521 (v!39211 lt!1365136))) lt!1365310)))

(declare-fun bs!585815 () Bool)

(assert (= bs!585815 d!1162460))

(assert (=> bs!585815 m!4481601))

(assert (=> bs!585815 m!4481601))

(declare-fun m!4482153 () Bool)

(assert (=> bs!585815 m!4482153))

(declare-fun m!4482155 () Bool)

(assert (=> bs!585815 m!4482155))

(assert (=> b!3917868 d!1162460))

(declare-fun d!1162462 () Bool)

(declare-fun list!15439 (Conc!12677) List!41641)

(assert (=> d!1162462 (= (list!15437 (charsOf!4290 (_1!23521 (v!39211 lt!1365136)))) (list!15439 (c!680962 (charsOf!4290 (_1!23521 (v!39211 lt!1365136))))))))

(declare-fun bs!585816 () Bool)

(assert (= bs!585816 d!1162462))

(declare-fun m!4482157 () Bool)

(assert (=> bs!585816 m!4482157))

(assert (=> b!3917868 d!1162462))

(declare-fun d!1162464 () Bool)

(declare-fun lt!1365313 () List!41641)

(assert (=> d!1162464 (= (++!10689 lt!1365137 lt!1365313) lt!1365153)))

(declare-fun e!2422690 () List!41641)

(assert (=> d!1162464 (= lt!1365313 e!2422690)))

(declare-fun c!681057 () Bool)

(assert (=> d!1162464 (= c!681057 ((_ is Cons!41517) lt!1365137))))

(assert (=> d!1162464 (>= (size!31174 lt!1365153) (size!31174 lt!1365137))))

(assert (=> d!1162464 (= (getSuffix!2016 lt!1365153 lt!1365137) lt!1365313)))

(declare-fun b!3918392 () Bool)

(assert (=> b!3918392 (= e!2422690 (getSuffix!2016 (tail!6001 lt!1365153) (t!324176 lt!1365137)))))

(declare-fun b!3918393 () Bool)

(assert (=> b!3918393 (= e!2422690 lt!1365153)))

(assert (= (and d!1162464 c!681057) b!3918392))

(assert (= (and d!1162464 (not c!681057)) b!3918393))

(declare-fun m!4482159 () Bool)

(assert (=> d!1162464 m!4482159))

(assert (=> d!1162464 m!4481653))

(assert (=> d!1162464 m!4481595))

(declare-fun m!4482161 () Bool)

(assert (=> b!3918392 m!4482161))

(assert (=> b!3918392 m!4482161))

(declare-fun m!4482163 () Bool)

(assert (=> b!3918392 m!4482163))

(assert (=> b!3917868 d!1162464))

(declare-fun b!3918394 () Bool)

(declare-fun e!2422692 () Bool)

(declare-fun e!2422693 () Bool)

(assert (=> b!3918394 (= e!2422692 e!2422693)))

(declare-fun res!1584983 () Bool)

(declare-fun lt!1365314 () tuple2!40776)

(assert (=> b!3918394 (= res!1584983 (< (size!31174 (_2!23522 lt!1365314)) (size!31174 suffix!1176)))))

(assert (=> b!3918394 (=> (not res!1584983) (not e!2422693))))

(declare-fun b!3918395 () Bool)

(declare-fun e!2422691 () tuple2!40776)

(declare-fun lt!1365315 () Option!8886)

(declare-fun lt!1365316 () tuple2!40776)

(assert (=> b!3918395 (= e!2422691 (tuple2!40777 (Cons!41519 (_1!23521 (v!39211 lt!1365315)) (_1!23522 lt!1365316)) (_2!23522 lt!1365316)))))

(assert (=> b!3918395 (= lt!1365316 (lexList!1823 thiss!20629 rules!2768 (_2!23521 (v!39211 lt!1365315))))))

(declare-fun d!1162466 () Bool)

(assert (=> d!1162466 e!2422692))

(declare-fun c!681059 () Bool)

(assert (=> d!1162466 (= c!681059 (> (size!31176 (_1!23522 lt!1365314)) 0))))

(assert (=> d!1162466 (= lt!1365314 e!2422691)))

(declare-fun c!681058 () Bool)

(assert (=> d!1162466 (= c!681058 ((_ is Some!8885) lt!1365315))))

(assert (=> d!1162466 (= lt!1365315 (maxPrefix!3359 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1162466 (= (lexList!1823 thiss!20629 rules!2768 suffix!1176) lt!1365314)))

(declare-fun b!3918396 () Bool)

(assert (=> b!3918396 (= e!2422692 (= (_2!23522 lt!1365314) suffix!1176))))

(declare-fun b!3918397 () Bool)

(assert (=> b!3918397 (= e!2422691 (tuple2!40777 Nil!41519 suffix!1176))))

(declare-fun b!3918398 () Bool)

(assert (=> b!3918398 (= e!2422693 (not (isEmpty!24710 (_1!23522 lt!1365314))))))

(assert (= (and d!1162466 c!681058) b!3918395))

(assert (= (and d!1162466 (not c!681058)) b!3918397))

(assert (= (and d!1162466 c!681059) b!3918394))

(assert (= (and d!1162466 (not c!681059)) b!3918396))

(assert (= (and b!3918394 res!1584983) b!3918398))

(declare-fun m!4482165 () Bool)

(assert (=> b!3918394 m!4482165))

(assert (=> b!3918394 m!4481617))

(declare-fun m!4482167 () Bool)

(assert (=> b!3918395 m!4482167))

(declare-fun m!4482169 () Bool)

(assert (=> d!1162466 m!4482169))

(declare-fun m!4482171 () Bool)

(assert (=> d!1162466 m!4482171))

(declare-fun m!4482173 () Bool)

(assert (=> b!3918398 m!4482173))

(assert (=> b!3917888 d!1162466))

(declare-fun b!3918399 () Bool)

(declare-fun e!2422695 () Bool)

(declare-fun e!2422696 () Bool)

(assert (=> b!3918399 (= e!2422695 e!2422696)))

(declare-fun res!1584984 () Bool)

(declare-fun lt!1365317 () tuple2!40776)

(assert (=> b!3918399 (= res!1584984 (< (size!31174 (_2!23522 lt!1365317)) (size!31174 lt!1365153)))))

(assert (=> b!3918399 (=> (not res!1584984) (not e!2422696))))

(declare-fun b!3918400 () Bool)

(declare-fun e!2422694 () tuple2!40776)

(declare-fun lt!1365318 () Option!8886)

(declare-fun lt!1365319 () tuple2!40776)

(assert (=> b!3918400 (= e!2422694 (tuple2!40777 (Cons!41519 (_1!23521 (v!39211 lt!1365318)) (_1!23522 lt!1365319)) (_2!23522 lt!1365319)))))

(assert (=> b!3918400 (= lt!1365319 (lexList!1823 thiss!20629 rules!2768 (_2!23521 (v!39211 lt!1365318))))))

(declare-fun d!1162468 () Bool)

(assert (=> d!1162468 e!2422695))

(declare-fun c!681061 () Bool)

(assert (=> d!1162468 (= c!681061 (> (size!31176 (_1!23522 lt!1365317)) 0))))

(assert (=> d!1162468 (= lt!1365317 e!2422694)))

(declare-fun c!681060 () Bool)

(assert (=> d!1162468 (= c!681060 ((_ is Some!8885) lt!1365318))))

(assert (=> d!1162468 (= lt!1365318 (maxPrefix!3359 thiss!20629 rules!2768 lt!1365153))))

(assert (=> d!1162468 (= (lexList!1823 thiss!20629 rules!2768 lt!1365153) lt!1365317)))

(declare-fun b!3918401 () Bool)

(assert (=> b!3918401 (= e!2422695 (= (_2!23522 lt!1365317) lt!1365153))))

(declare-fun b!3918402 () Bool)

(assert (=> b!3918402 (= e!2422694 (tuple2!40777 Nil!41519 lt!1365153))))

(declare-fun b!3918403 () Bool)

(assert (=> b!3918403 (= e!2422696 (not (isEmpty!24710 (_1!23522 lt!1365317))))))

(assert (= (and d!1162468 c!681060) b!3918400))

(assert (= (and d!1162468 (not c!681060)) b!3918402))

(assert (= (and d!1162468 c!681061) b!3918399))

(assert (= (and d!1162468 (not c!681061)) b!3918401))

(assert (= (and b!3918399 res!1584984) b!3918403))

(declare-fun m!4482175 () Bool)

(assert (=> b!3918399 m!4482175))

(assert (=> b!3918399 m!4481653))

(declare-fun m!4482177 () Bool)

(assert (=> b!3918400 m!4482177))

(declare-fun m!4482179 () Bool)

(assert (=> d!1162468 m!4482179))

(assert (=> d!1162468 m!4481645))

(declare-fun m!4482181 () Bool)

(assert (=> b!3918403 m!4482181))

(assert (=> b!3917886 d!1162468))

(declare-fun b!3918404 () Bool)

(declare-fun e!2422697 () List!41643)

(assert (=> b!3918404 (= e!2422697 suffixTokens!72)))

(declare-fun d!1162470 () Bool)

(declare-fun e!2422698 () Bool)

(assert (=> d!1162470 e!2422698))

(declare-fun res!1584985 () Bool)

(assert (=> d!1162470 (=> (not res!1584985) (not e!2422698))))

(declare-fun lt!1365320 () List!41643)

(assert (=> d!1162470 (= res!1584985 (= (content!6247 lt!1365320) ((_ map or) (content!6247 prefixTokens!80) (content!6247 suffixTokens!72))))))

(assert (=> d!1162470 (= lt!1365320 e!2422697)))

(declare-fun c!681062 () Bool)

(assert (=> d!1162470 (= c!681062 ((_ is Nil!41519) prefixTokens!80))))

(assert (=> d!1162470 (= (++!10690 prefixTokens!80 suffixTokens!72) lt!1365320)))

(declare-fun b!3918407 () Bool)

(assert (=> b!3918407 (= e!2422698 (or (not (= suffixTokens!72 Nil!41519)) (= lt!1365320 prefixTokens!80)))))

(declare-fun b!3918406 () Bool)

(declare-fun res!1584986 () Bool)

(assert (=> b!3918406 (=> (not res!1584986) (not e!2422698))))

(assert (=> b!3918406 (= res!1584986 (= (size!31176 lt!1365320) (+ (size!31176 prefixTokens!80) (size!31176 suffixTokens!72))))))

(declare-fun b!3918405 () Bool)

(assert (=> b!3918405 (= e!2422697 (Cons!41519 (h!46939 prefixTokens!80) (++!10690 (t!324178 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1162470 c!681062) b!3918404))

(assert (= (and d!1162470 (not c!681062)) b!3918405))

(assert (= (and d!1162470 res!1584985) b!3918406))

(assert (= (and b!3918406 res!1584986) b!3918407))

(declare-fun m!4482183 () Bool)

(assert (=> d!1162470 m!4482183))

(declare-fun m!4482185 () Bool)

(assert (=> d!1162470 m!4482185))

(declare-fun m!4482187 () Bool)

(assert (=> d!1162470 m!4482187))

(declare-fun m!4482189 () Bool)

(assert (=> b!3918406 m!4482189))

(declare-fun m!4482191 () Bool)

(assert (=> b!3918406 m!4482191))

(declare-fun m!4482193 () Bool)

(assert (=> b!3918406 m!4482193))

(declare-fun m!4482195 () Bool)

(assert (=> b!3918405 m!4482195))

(assert (=> b!3917886 d!1162470))

(declare-fun b!3918409 () Bool)

(declare-fun e!2422700 () List!41641)

(assert (=> b!3918409 (= e!2422700 (Cons!41517 (h!46937 prefix!426) (++!10689 (t!324176 prefix!426) suffix!1176)))))

(declare-fun d!1162472 () Bool)

(declare-fun e!2422699 () Bool)

(assert (=> d!1162472 e!2422699))

(declare-fun res!1584987 () Bool)

(assert (=> d!1162472 (=> (not res!1584987) (not e!2422699))))

(declare-fun lt!1365321 () List!41641)

(assert (=> d!1162472 (= res!1584987 (= (content!6248 lt!1365321) ((_ map or) (content!6248 prefix!426) (content!6248 suffix!1176))))))

(assert (=> d!1162472 (= lt!1365321 e!2422700)))

(declare-fun c!681063 () Bool)

(assert (=> d!1162472 (= c!681063 ((_ is Nil!41517) prefix!426))))

(assert (=> d!1162472 (= (++!10689 prefix!426 suffix!1176) lt!1365321)))

(declare-fun b!3918408 () Bool)

(assert (=> b!3918408 (= e!2422700 suffix!1176)))

(declare-fun b!3918410 () Bool)

(declare-fun res!1584988 () Bool)

(assert (=> b!3918410 (=> (not res!1584988) (not e!2422699))))

(assert (=> b!3918410 (= res!1584988 (= (size!31174 lt!1365321) (+ (size!31174 prefix!426) (size!31174 suffix!1176))))))

(declare-fun b!3918411 () Bool)

(assert (=> b!3918411 (= e!2422699 (or (not (= suffix!1176 Nil!41517)) (= lt!1365321 prefix!426)))))

(assert (= (and d!1162472 c!681063) b!3918408))

(assert (= (and d!1162472 (not c!681063)) b!3918409))

(assert (= (and d!1162472 res!1584987) b!3918410))

(assert (= (and b!3918410 res!1584988) b!3918411))

(declare-fun m!4482197 () Bool)

(assert (=> b!3918409 m!4482197))

(declare-fun m!4482199 () Bool)

(assert (=> d!1162472 m!4482199))

(declare-fun m!4482201 () Bool)

(assert (=> d!1162472 m!4482201))

(declare-fun m!4482203 () Bool)

(assert (=> d!1162472 m!4482203))

(declare-fun m!4482205 () Bool)

(assert (=> b!3918410 m!4482205))

(assert (=> b!3918410 m!4481639))

(assert (=> b!3918410 m!4481617))

(assert (=> b!3917886 d!1162472))

(declare-fun d!1162474 () Bool)

(assert (=> d!1162474 (= (isEmpty!24712 rules!2768) ((_ is Nil!41520) rules!2768))))

(assert (=> b!3917885 d!1162474))

(declare-fun d!1162476 () Bool)

(assert (=> d!1162476 (= (isEmpty!24710 prefixTokens!80) ((_ is Nil!41519) prefixTokens!80))))

(assert (=> b!3917864 d!1162476))

(declare-fun d!1162478 () Bool)

(assert (=> d!1162478 (= (isEmpty!24710 (tail!5999 prefixTokens!80)) ((_ is Nil!41519) (tail!5999 prefixTokens!80)))))

(assert (=> b!3917863 d!1162478))

(declare-fun d!1162480 () Bool)

(assert (=> d!1162480 (= (tail!5999 prefixTokens!80) (t!324178 prefixTokens!80))))

(assert (=> b!3917863 d!1162480))

(declare-fun d!1162482 () Bool)

(declare-fun lt!1365322 () Int)

(assert (=> d!1162482 (>= lt!1365322 0)))

(declare-fun e!2422701 () Int)

(assert (=> d!1162482 (= lt!1365322 e!2422701)))

(declare-fun c!681064 () Bool)

(assert (=> d!1162482 (= c!681064 ((_ is Nil!41517) suffix!1176))))

(assert (=> d!1162482 (= (size!31174 suffix!1176) lt!1365322)))

(declare-fun b!3918412 () Bool)

(assert (=> b!3918412 (= e!2422701 0)))

(declare-fun b!3918413 () Bool)

(assert (=> b!3918413 (= e!2422701 (+ 1 (size!31174 (t!324176 suffix!1176))))))

(assert (= (and d!1162482 c!681064) b!3918412))

(assert (= (and d!1162482 (not c!681064)) b!3918413))

(declare-fun m!4482207 () Bool)

(assert (=> b!3918413 m!4482207))

(assert (=> b!3917884 d!1162482))

(declare-fun d!1162484 () Bool)

(declare-fun lt!1365323 () Int)

(assert (=> d!1162484 (>= lt!1365323 0)))

(declare-fun e!2422702 () Int)

(assert (=> d!1162484 (= lt!1365323 e!2422702)))

(declare-fun c!681065 () Bool)

(assert (=> d!1162484 (= c!681065 ((_ is Nil!41517) (_2!23521 (v!39211 lt!1365136))))))

(assert (=> d!1162484 (= (size!31174 (_2!23521 (v!39211 lt!1365136))) lt!1365323)))

(declare-fun b!3918414 () Bool)

(assert (=> b!3918414 (= e!2422702 0)))

(declare-fun b!3918415 () Bool)

(assert (=> b!3918415 (= e!2422702 (+ 1 (size!31174 (t!324176 (_2!23521 (v!39211 lt!1365136))))))))

(assert (= (and d!1162484 c!681065) b!3918414))

(assert (= (and d!1162484 (not c!681065)) b!3918415))

(declare-fun m!4482209 () Bool)

(assert (=> b!3918415 m!4482209))

(assert (=> b!3917884 d!1162484))

(declare-fun d!1162486 () Bool)

(assert (=> d!1162486 (= (inv!55712 (tag!7326 (rule!9392 (h!46939 prefixTokens!80)))) (= (mod (str.len (value!204914 (tag!7326 (rule!9392 (h!46939 prefixTokens!80))))) 2) 0))))

(assert (=> b!3917883 d!1162486))

(declare-fun d!1162488 () Bool)

(declare-fun res!1584989 () Bool)

(declare-fun e!2422703 () Bool)

(assert (=> d!1162488 (=> (not res!1584989) (not e!2422703))))

(assert (=> d!1162488 (= res!1584989 (semiInverseModEq!2781 (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))) (toValue!8918 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80))))))))

(assert (=> d!1162488 (= (inv!55716 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))) e!2422703)))

(declare-fun b!3918416 () Bool)

(assert (=> b!3918416 (= e!2422703 (equivClasses!2680 (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))) (toValue!8918 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80))))))))

(assert (= (and d!1162488 res!1584989) b!3918416))

(declare-fun m!4482211 () Bool)

(assert (=> d!1162488 m!4482211))

(declare-fun m!4482213 () Bool)

(assert (=> b!3918416 m!4482213))

(assert (=> b!3917883 d!1162488))

(declare-fun d!1162490 () Bool)

(declare-fun c!681066 () Bool)

(assert (=> d!1162490 (= c!681066 ((_ is IntegerValue!20088) (value!204915 (h!46939 suffixTokens!72))))))

(declare-fun e!2422705 () Bool)

(assert (=> d!1162490 (= (inv!21 (value!204915 (h!46939 suffixTokens!72))) e!2422705)))

(declare-fun b!3918417 () Bool)

(declare-fun e!2422706 () Bool)

(assert (=> b!3918417 (= e!2422705 e!2422706)))

(declare-fun c!681067 () Bool)

(assert (=> b!3918417 (= c!681067 ((_ is IntegerValue!20089) (value!204915 (h!46939 suffixTokens!72))))))

(declare-fun b!3918418 () Bool)

(assert (=> b!3918418 (= e!2422705 (inv!16 (value!204915 (h!46939 suffixTokens!72))))))

(declare-fun b!3918419 () Bool)

(declare-fun e!2422704 () Bool)

(assert (=> b!3918419 (= e!2422704 (inv!15 (value!204915 (h!46939 suffixTokens!72))))))

(declare-fun b!3918420 () Bool)

(declare-fun res!1584990 () Bool)

(assert (=> b!3918420 (=> res!1584990 e!2422704)))

(assert (=> b!3918420 (= res!1584990 (not ((_ is IntegerValue!20090) (value!204915 (h!46939 suffixTokens!72)))))))

(assert (=> b!3918420 (= e!2422706 e!2422704)))

(declare-fun b!3918421 () Bool)

(assert (=> b!3918421 (= e!2422706 (inv!17 (value!204915 (h!46939 suffixTokens!72))))))

(assert (= (and d!1162490 c!681066) b!3918418))

(assert (= (and d!1162490 (not c!681066)) b!3918417))

(assert (= (and b!3918417 c!681067) b!3918421))

(assert (= (and b!3918417 (not c!681067)) b!3918420))

(assert (= (and b!3918420 (not res!1584990)) b!3918419))

(declare-fun m!4482215 () Bool)

(assert (=> b!3918418 m!4482215))

(declare-fun m!4482217 () Bool)

(assert (=> b!3918419 m!4482217))

(declare-fun m!4482219 () Bool)

(assert (=> b!3918421 m!4482219))

(assert (=> b!3917862 d!1162490))

(declare-fun d!1162492 () Bool)

(declare-fun res!1584991 () Bool)

(declare-fun e!2422707 () Bool)

(assert (=> d!1162492 (=> (not res!1584991) (not e!2422707))))

(assert (=> d!1162492 (= res!1584991 (not (isEmpty!24711 (originalCharacters!7066 (h!46939 prefixTokens!80)))))))

(assert (=> d!1162492 (= (inv!55715 (h!46939 prefixTokens!80)) e!2422707)))

(declare-fun b!3918422 () Bool)

(declare-fun res!1584992 () Bool)

(assert (=> b!3918422 (=> (not res!1584992) (not e!2422707))))

(assert (=> b!3918422 (= res!1584992 (= (originalCharacters!7066 (h!46939 prefixTokens!80)) (list!15437 (dynLambda!17841 (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))) (value!204915 (h!46939 prefixTokens!80))))))))

(declare-fun b!3918423 () Bool)

(assert (=> b!3918423 (= e!2422707 (= (size!31173 (h!46939 prefixTokens!80)) (size!31174 (originalCharacters!7066 (h!46939 prefixTokens!80)))))))

(assert (= (and d!1162492 res!1584991) b!3918422))

(assert (= (and b!3918422 res!1584992) b!3918423))

(declare-fun b_lambda!114741 () Bool)

(assert (=> (not b_lambda!114741) (not b!3918422)))

(declare-fun tb!233879 () Bool)

(declare-fun t!324247 () Bool)

(assert (=> (and b!3917874 (= (toChars!8777 (transformation!6466 (h!46940 rules!2768))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80))))) t!324247) tb!233879))

(declare-fun b!3918424 () Bool)

(declare-fun e!2422708 () Bool)

(declare-fun tp!1192572 () Bool)

(assert (=> b!3918424 (= e!2422708 (and (inv!55719 (c!680962 (dynLambda!17841 (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))) (value!204915 (h!46939 prefixTokens!80))))) tp!1192572))))

(declare-fun result!283400 () Bool)

(assert (=> tb!233879 (= result!283400 (and (inv!55720 (dynLambda!17841 (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))) (value!204915 (h!46939 prefixTokens!80)))) e!2422708))))

(assert (= tb!233879 b!3918424))

(declare-fun m!4482221 () Bool)

(assert (=> b!3918424 m!4482221))

(declare-fun m!4482223 () Bool)

(assert (=> tb!233879 m!4482223))

(assert (=> b!3918422 t!324247))

(declare-fun b_and!298541 () Bool)

(assert (= b_and!298535 (and (=> t!324247 result!283400) b_and!298541)))

(declare-fun t!324249 () Bool)

(declare-fun tb!233881 () Bool)

(assert (=> (and b!3917866 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80))))) t!324249) tb!233881))

(declare-fun result!283402 () Bool)

(assert (= result!283402 result!283400))

(assert (=> b!3918422 t!324249))

(declare-fun b_and!298543 () Bool)

(assert (= b_and!298537 (and (=> t!324249 result!283402) b_and!298543)))

(declare-fun t!324251 () Bool)

(declare-fun tb!233883 () Bool)

(assert (=> (and b!3917865 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80))))) t!324251) tb!233883))

(declare-fun result!283404 () Bool)

(assert (= result!283404 result!283400))

(assert (=> b!3918422 t!324251))

(declare-fun b_and!298545 () Bool)

(assert (= b_and!298539 (and (=> t!324251 result!283404) b_and!298545)))

(declare-fun m!4482225 () Bool)

(assert (=> d!1162492 m!4482225))

(declare-fun m!4482227 () Bool)

(assert (=> b!3918422 m!4482227))

(assert (=> b!3918422 m!4482227))

(declare-fun m!4482229 () Bool)

(assert (=> b!3918422 m!4482229))

(declare-fun m!4482231 () Bool)

(assert (=> b!3918423 m!4482231))

(assert (=> b!3917861 d!1162492))

(declare-fun d!1162494 () Bool)

(declare-fun res!1584995 () Bool)

(declare-fun e!2422711 () Bool)

(assert (=> d!1162494 (=> (not res!1584995) (not e!2422711))))

(declare-fun rulesValid!2515 (LexerInterface!6055 List!41644) Bool)

(assert (=> d!1162494 (= res!1584995 (rulesValid!2515 thiss!20629 rules!2768))))

(assert (=> d!1162494 (= (rulesInvariant!5398 thiss!20629 rules!2768) e!2422711)))

(declare-fun b!3918427 () Bool)

(declare-datatypes ((List!41646 0))(
  ( (Nil!41522) (Cons!41522 (h!46942 String!47198) (t!324277 List!41646)) )
))
(declare-fun noDuplicateTag!2516 (LexerInterface!6055 List!41644 List!41646) Bool)

(assert (=> b!3918427 (= e!2422711 (noDuplicateTag!2516 thiss!20629 rules!2768 Nil!41522))))

(assert (= (and d!1162494 res!1584995) b!3918427))

(declare-fun m!4482233 () Bool)

(assert (=> d!1162494 m!4482233))

(declare-fun m!4482235 () Bool)

(assert (=> b!3918427 m!4482235))

(assert (=> b!3917882 d!1162494))

(declare-fun d!1162496 () Bool)

(assert (=> d!1162496 (= (head!8283 prefixTokens!80) (h!46939 prefixTokens!80))))

(assert (=> b!3917860 d!1162496))

(declare-fun d!1162498 () Bool)

(assert (=> d!1162498 (= (get!13719 lt!1365136) (v!39211 lt!1365136))))

(assert (=> b!3917860 d!1162498))

(declare-fun d!1162500 () Bool)

(declare-fun lt!1365324 () Int)

(assert (=> d!1162500 (>= lt!1365324 0)))

(declare-fun e!2422712 () Int)

(assert (=> d!1162500 (= lt!1365324 e!2422712)))

(declare-fun c!681068 () Bool)

(assert (=> d!1162500 (= c!681068 ((_ is Nil!41517) lt!1365153))))

(assert (=> d!1162500 (= (size!31174 lt!1365153) lt!1365324)))

(declare-fun b!3918428 () Bool)

(assert (=> b!3918428 (= e!2422712 0)))

(declare-fun b!3918429 () Bool)

(assert (=> b!3918429 (= e!2422712 (+ 1 (size!31174 (t!324176 lt!1365153))))))

(assert (= (and d!1162500 c!681068) b!3918428))

(assert (= (and d!1162500 (not c!681068)) b!3918429))

(declare-fun m!4482237 () Bool)

(assert (=> b!3918429 m!4482237))

(assert (=> b!3917880 d!1162500))

(declare-fun d!1162502 () Bool)

(declare-fun lt!1365325 () Int)

(assert (=> d!1162502 (>= lt!1365325 0)))

(declare-fun e!2422713 () Int)

(assert (=> d!1162502 (= lt!1365325 e!2422713)))

(declare-fun c!681069 () Bool)

(assert (=> d!1162502 (= c!681069 ((_ is Nil!41517) (originalCharacters!7066 (_1!23521 (v!39211 lt!1365136)))))))

(assert (=> d!1162502 (= (size!31174 (originalCharacters!7066 (_1!23521 (v!39211 lt!1365136)))) lt!1365325)))

(declare-fun b!3918430 () Bool)

(assert (=> b!3918430 (= e!2422713 0)))

(declare-fun b!3918431 () Bool)

(assert (=> b!3918431 (= e!2422713 (+ 1 (size!31174 (t!324176 (originalCharacters!7066 (_1!23521 (v!39211 lt!1365136)))))))))

(assert (= (and d!1162502 c!681069) b!3918430))

(assert (= (and d!1162502 (not c!681069)) b!3918431))

(declare-fun m!4482239 () Bool)

(assert (=> b!3918431 m!4482239))

(assert (=> b!3917878 d!1162502))

(declare-fun d!1162504 () Bool)

(assert (=> d!1162504 (= (inv!55712 (tag!7326 (h!46940 rules!2768))) (= (mod (str.len (value!204914 (tag!7326 (h!46940 rules!2768)))) 2) 0))))

(assert (=> b!3917877 d!1162504))

(declare-fun d!1162506 () Bool)

(declare-fun res!1584996 () Bool)

(declare-fun e!2422714 () Bool)

(assert (=> d!1162506 (=> (not res!1584996) (not e!2422714))))

(assert (=> d!1162506 (= res!1584996 (semiInverseModEq!2781 (toChars!8777 (transformation!6466 (h!46940 rules!2768))) (toValue!8918 (transformation!6466 (h!46940 rules!2768)))))))

(assert (=> d!1162506 (= (inv!55716 (transformation!6466 (h!46940 rules!2768))) e!2422714)))

(declare-fun b!3918432 () Bool)

(assert (=> b!3918432 (= e!2422714 (equivClasses!2680 (toChars!8777 (transformation!6466 (h!46940 rules!2768))) (toValue!8918 (transformation!6466 (h!46940 rules!2768)))))))

(assert (= (and d!1162506 res!1584996) b!3918432))

(declare-fun m!4482241 () Bool)

(assert (=> d!1162506 m!4482241))

(declare-fun m!4482243 () Bool)

(assert (=> b!3918432 m!4482243))

(assert (=> b!3917877 d!1162506))

(declare-fun b!3918445 () Bool)

(declare-fun e!2422717 () Bool)

(declare-fun tp!1192585 () Bool)

(assert (=> b!3918445 (= e!2422717 tp!1192585)))

(declare-fun b!3918443 () Bool)

(assert (=> b!3918443 (= e!2422717 tp_is_empty!19713)))

(assert (=> b!3917883 (= tp!1192490 e!2422717)))

(declare-fun b!3918446 () Bool)

(declare-fun tp!1192584 () Bool)

(declare-fun tp!1192586 () Bool)

(assert (=> b!3918446 (= e!2422717 (and tp!1192584 tp!1192586))))

(declare-fun b!3918444 () Bool)

(declare-fun tp!1192587 () Bool)

(declare-fun tp!1192583 () Bool)

(assert (=> b!3918444 (= e!2422717 (and tp!1192587 tp!1192583))))

(assert (= (and b!3917883 ((_ is ElementMatch!11371) (regex!6466 (rule!9392 (h!46939 prefixTokens!80))))) b!3918443))

(assert (= (and b!3917883 ((_ is Concat!18068) (regex!6466 (rule!9392 (h!46939 prefixTokens!80))))) b!3918444))

(assert (= (and b!3917883 ((_ is Star!11371) (regex!6466 (rule!9392 (h!46939 prefixTokens!80))))) b!3918445))

(assert (= (and b!3917883 ((_ is Union!11371) (regex!6466 (rule!9392 (h!46939 prefixTokens!80))))) b!3918446))

(declare-fun b!3918451 () Bool)

(declare-fun e!2422720 () Bool)

(declare-fun tp!1192590 () Bool)

(assert (=> b!3918451 (= e!2422720 (and tp_is_empty!19713 tp!1192590))))

(assert (=> b!3917862 (= tp!1192482 e!2422720)))

(assert (= (and b!3917862 ((_ is Cons!41517) (originalCharacters!7066 (h!46939 suffixTokens!72)))) b!3918451))

(declare-fun b!3918465 () Bool)

(declare-fun b_free!106445 () Bool)

(declare-fun b_next!107149 () Bool)

(assert (=> b!3918465 (= b_free!106445 (not b_next!107149))))

(declare-fun tb!233885 () Bool)

(declare-fun t!324253 () Bool)

(assert (=> (and b!3918465 (= (toValue!8918 (transformation!6466 (rule!9392 (h!46939 (t!324178 prefixTokens!80))))) (toValue!8918 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))))) t!324253) tb!233885))

(declare-fun result!283412 () Bool)

(assert (= result!283412 result!283386))

(assert (=> d!1162442 t!324253))

(declare-fun tp!1192601 () Bool)

(declare-fun b_and!298547 () Bool)

(assert (=> b!3918465 (= tp!1192601 (and (=> t!324253 result!283412) b_and!298547))))

(declare-fun b_free!106447 () Bool)

(declare-fun b_next!107151 () Bool)

(assert (=> b!3918465 (= b_free!106447 (not b_next!107151))))

(declare-fun t!324255 () Bool)

(declare-fun tb!233887 () Bool)

(assert (=> (and b!3918465 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 (t!324178 prefixTokens!80))))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72))))) t!324255) tb!233887))

(declare-fun result!283414 () Bool)

(assert (= result!283414 result!283378))

(assert (=> b!3918329 t!324255))

(declare-fun t!324257 () Bool)

(declare-fun tb!233889 () Bool)

(assert (=> (and b!3918465 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 (t!324178 prefixTokens!80))))) (toChars!8777 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))))) t!324257) tb!233889))

(declare-fun result!283416 () Bool)

(assert (= result!283416 result!283394))

(assert (=> d!1162452 t!324257))

(declare-fun t!324259 () Bool)

(declare-fun tb!233891 () Bool)

(assert (=> (and b!3918465 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 (t!324178 prefixTokens!80))))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80))))) t!324259) tb!233891))

(declare-fun result!283418 () Bool)

(assert (= result!283418 result!283400))

(assert (=> b!3918422 t!324259))

(declare-fun b_and!298549 () Bool)

(declare-fun tp!1192604 () Bool)

(assert (=> b!3918465 (= tp!1192604 (and (=> t!324255 result!283414) (=> t!324257 result!283416) (=> t!324259 result!283418) b_and!298549))))

(declare-fun e!2422733 () Bool)

(declare-fun b!3918463 () Bool)

(declare-fun tp!1192603 () Bool)

(declare-fun e!2422736 () Bool)

(assert (=> b!3918463 (= e!2422733 (and (inv!21 (value!204915 (h!46939 (t!324178 prefixTokens!80)))) e!2422736 tp!1192603))))

(declare-fun e!2422735 () Bool)

(assert (=> b!3917861 (= tp!1192488 e!2422735)))

(declare-fun tp!1192602 () Bool)

(declare-fun b!3918464 () Bool)

(declare-fun e!2422738 () Bool)

(assert (=> b!3918464 (= e!2422736 (and tp!1192602 (inv!55712 (tag!7326 (rule!9392 (h!46939 (t!324178 prefixTokens!80))))) (inv!55716 (transformation!6466 (rule!9392 (h!46939 (t!324178 prefixTokens!80))))) e!2422738))))

(assert (=> b!3918465 (= e!2422738 (and tp!1192601 tp!1192604))))

(declare-fun tp!1192605 () Bool)

(declare-fun b!3918462 () Bool)

(assert (=> b!3918462 (= e!2422735 (and (inv!55715 (h!46939 (t!324178 prefixTokens!80))) e!2422733 tp!1192605))))

(assert (= b!3918464 b!3918465))

(assert (= b!3918463 b!3918464))

(assert (= b!3918462 b!3918463))

(assert (= (and b!3917861 ((_ is Cons!41519) (t!324178 prefixTokens!80))) b!3918462))

(declare-fun m!4482245 () Bool)

(assert (=> b!3918463 m!4482245))

(declare-fun m!4482247 () Bool)

(assert (=> b!3918464 m!4482247))

(declare-fun m!4482249 () Bool)

(assert (=> b!3918464 m!4482249))

(declare-fun m!4482251 () Bool)

(assert (=> b!3918462 m!4482251))

(declare-fun b!3918468 () Bool)

(declare-fun e!2422739 () Bool)

(declare-fun tp!1192608 () Bool)

(assert (=> b!3918468 (= e!2422739 tp!1192608)))

(declare-fun b!3918466 () Bool)

(assert (=> b!3918466 (= e!2422739 tp_is_empty!19713)))

(assert (=> b!3917872 (= tp!1192491 e!2422739)))

(declare-fun b!3918469 () Bool)

(declare-fun tp!1192607 () Bool)

(declare-fun tp!1192609 () Bool)

(assert (=> b!3918469 (= e!2422739 (and tp!1192607 tp!1192609))))

(declare-fun b!3918467 () Bool)

(declare-fun tp!1192610 () Bool)

(declare-fun tp!1192606 () Bool)

(assert (=> b!3918467 (= e!2422739 (and tp!1192610 tp!1192606))))

(assert (= (and b!3917872 ((_ is ElementMatch!11371) (regex!6466 (rule!9392 (h!46939 suffixTokens!72))))) b!3918466))

(assert (= (and b!3917872 ((_ is Concat!18068) (regex!6466 (rule!9392 (h!46939 suffixTokens!72))))) b!3918467))

(assert (= (and b!3917872 ((_ is Star!11371) (regex!6466 (rule!9392 (h!46939 suffixTokens!72))))) b!3918468))

(assert (= (and b!3917872 ((_ is Union!11371) (regex!6466 (rule!9392 (h!46939 suffixTokens!72))))) b!3918469))

(declare-fun b!3918470 () Bool)

(declare-fun e!2422740 () Bool)

(declare-fun tp!1192611 () Bool)

(assert (=> b!3918470 (= e!2422740 (and tp_is_empty!19713 tp!1192611))))

(assert (=> b!3917881 (= tp!1192492 e!2422740)))

(assert (= (and b!3917881 ((_ is Cons!41517) (t!324176 prefix!426))) b!3918470))

(declare-fun b!3918471 () Bool)

(declare-fun e!2422741 () Bool)

(declare-fun tp!1192612 () Bool)

(assert (=> b!3918471 (= e!2422741 (and tp_is_empty!19713 tp!1192612))))

(assert (=> b!3917891 (= tp!1192498 e!2422741)))

(assert (= (and b!3917891 ((_ is Cons!41517) (originalCharacters!7066 (h!46939 prefixTokens!80)))) b!3918471))

(declare-fun b!3918472 () Bool)

(declare-fun e!2422742 () Bool)

(declare-fun tp!1192613 () Bool)

(assert (=> b!3918472 (= e!2422742 (and tp_is_empty!19713 tp!1192613))))

(assert (=> b!3917869 (= tp!1192485 e!2422742)))

(assert (= (and b!3917869 ((_ is Cons!41517) (t!324176 suffixResult!91))) b!3918472))

(declare-fun b!3918483 () Bool)

(declare-fun b_free!106449 () Bool)

(declare-fun b_next!107153 () Bool)

(assert (=> b!3918483 (= b_free!106449 (not b_next!107153))))

(declare-fun t!324261 () Bool)

(declare-fun tb!233893 () Bool)

(assert (=> (and b!3918483 (= (toValue!8918 (transformation!6466 (h!46940 (t!324179 rules!2768)))) (toValue!8918 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))))) t!324261) tb!233893))

(declare-fun result!283422 () Bool)

(assert (= result!283422 result!283386))

(assert (=> d!1162442 t!324261))

(declare-fun tp!1192622 () Bool)

(declare-fun b_and!298551 () Bool)

(assert (=> b!3918483 (= tp!1192622 (and (=> t!324261 result!283422) b_and!298551))))

(declare-fun b_free!106451 () Bool)

(declare-fun b_next!107155 () Bool)

(assert (=> b!3918483 (= b_free!106451 (not b_next!107155))))

(declare-fun t!324263 () Bool)

(declare-fun tb!233895 () Bool)

(assert (=> (and b!3918483 (= (toChars!8777 (transformation!6466 (h!46940 (t!324179 rules!2768)))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72))))) t!324263) tb!233895))

(declare-fun result!283424 () Bool)

(assert (= result!283424 result!283378))

(assert (=> b!3918329 t!324263))

(declare-fun tb!233897 () Bool)

(declare-fun t!324265 () Bool)

(assert (=> (and b!3918483 (= (toChars!8777 (transformation!6466 (h!46940 (t!324179 rules!2768)))) (toChars!8777 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))))) t!324265) tb!233897))

(declare-fun result!283426 () Bool)

(assert (= result!283426 result!283394))

(assert (=> d!1162452 t!324265))

(declare-fun t!324267 () Bool)

(declare-fun tb!233899 () Bool)

(assert (=> (and b!3918483 (= (toChars!8777 (transformation!6466 (h!46940 (t!324179 rules!2768)))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80))))) t!324267) tb!233899))

(declare-fun result!283428 () Bool)

(assert (= result!283428 result!283400))

(assert (=> b!3918422 t!324267))

(declare-fun b_and!298553 () Bool)

(declare-fun tp!1192623 () Bool)

(assert (=> b!3918483 (= tp!1192623 (and (=> t!324263 result!283424) (=> t!324265 result!283426) (=> t!324267 result!283428) b_and!298553))))

(declare-fun e!2422753 () Bool)

(assert (=> b!3918483 (= e!2422753 (and tp!1192622 tp!1192623))))

(declare-fun e!2422752 () Bool)

(declare-fun tp!1192624 () Bool)

(declare-fun b!3918482 () Bool)

(assert (=> b!3918482 (= e!2422752 (and tp!1192624 (inv!55712 (tag!7326 (h!46940 (t!324179 rules!2768)))) (inv!55716 (transformation!6466 (h!46940 (t!324179 rules!2768)))) e!2422753))))

(declare-fun b!3918481 () Bool)

(declare-fun e!2422751 () Bool)

(declare-fun tp!1192625 () Bool)

(assert (=> b!3918481 (= e!2422751 (and e!2422752 tp!1192625))))

(assert (=> b!3917879 (= tp!1192486 e!2422751)))

(assert (= b!3918482 b!3918483))

(assert (= b!3918481 b!3918482))

(assert (= (and b!3917879 ((_ is Cons!41520) (t!324179 rules!2768))) b!3918481))

(declare-fun m!4482253 () Bool)

(assert (=> b!3918482 m!4482253))

(declare-fun m!4482255 () Bool)

(assert (=> b!3918482 m!4482255))

(declare-fun b!3918487 () Bool)

(declare-fun b_free!106453 () Bool)

(declare-fun b_next!107157 () Bool)

(assert (=> b!3918487 (= b_free!106453 (not b_next!107157))))

(declare-fun tb!233901 () Bool)

(declare-fun t!324269 () Bool)

(assert (=> (and b!3918487 (= (toValue!8918 (transformation!6466 (rule!9392 (h!46939 (t!324178 suffixTokens!72))))) (toValue!8918 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))))) t!324269) tb!233901))

(declare-fun result!283430 () Bool)

(assert (= result!283430 result!283386))

(assert (=> d!1162442 t!324269))

(declare-fun b_and!298555 () Bool)

(declare-fun tp!1192626 () Bool)

(assert (=> b!3918487 (= tp!1192626 (and (=> t!324269 result!283430) b_and!298555))))

(declare-fun b_free!106455 () Bool)

(declare-fun b_next!107159 () Bool)

(assert (=> b!3918487 (= b_free!106455 (not b_next!107159))))

(declare-fun t!324271 () Bool)

(declare-fun tb!233903 () Bool)

(assert (=> (and b!3918487 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 (t!324178 suffixTokens!72))))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72))))) t!324271) tb!233903))

(declare-fun result!283432 () Bool)

(assert (= result!283432 result!283378))

(assert (=> b!3918329 t!324271))

(declare-fun t!324273 () Bool)

(declare-fun tb!233905 () Bool)

(assert (=> (and b!3918487 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 (t!324178 suffixTokens!72))))) (toChars!8777 (transformation!6466 (rule!9392 (_1!23521 (v!39211 lt!1365136)))))) t!324273) tb!233905))

(declare-fun result!283434 () Bool)

(assert (= result!283434 result!283394))

(assert (=> d!1162452 t!324273))

(declare-fun tb!233907 () Bool)

(declare-fun t!324275 () Bool)

(assert (=> (and b!3918487 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 (t!324178 suffixTokens!72))))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80))))) t!324275) tb!233907))

(declare-fun result!283436 () Bool)

(assert (= result!283436 result!283400))

(assert (=> b!3918422 t!324275))

(declare-fun tp!1192629 () Bool)

(declare-fun b_and!298557 () Bool)

(assert (=> b!3918487 (= tp!1192629 (and (=> t!324271 result!283432) (=> t!324273 result!283434) (=> t!324275 result!283436) b_and!298557))))

(declare-fun e!2422758 () Bool)

(declare-fun b!3918485 () Bool)

(declare-fun e!2422755 () Bool)

(declare-fun tp!1192628 () Bool)

(assert (=> b!3918485 (= e!2422755 (and (inv!21 (value!204915 (h!46939 (t!324178 suffixTokens!72)))) e!2422758 tp!1192628))))

(declare-fun e!2422757 () Bool)

(assert (=> b!3917890 (= tp!1192489 e!2422757)))

(declare-fun tp!1192627 () Bool)

(declare-fun b!3918486 () Bool)

(declare-fun e!2422760 () Bool)

(assert (=> b!3918486 (= e!2422758 (and tp!1192627 (inv!55712 (tag!7326 (rule!9392 (h!46939 (t!324178 suffixTokens!72))))) (inv!55716 (transformation!6466 (rule!9392 (h!46939 (t!324178 suffixTokens!72))))) e!2422760))))

(assert (=> b!3918487 (= e!2422760 (and tp!1192626 tp!1192629))))

(declare-fun tp!1192630 () Bool)

(declare-fun b!3918484 () Bool)

(assert (=> b!3918484 (= e!2422757 (and (inv!55715 (h!46939 (t!324178 suffixTokens!72))) e!2422755 tp!1192630))))

(assert (= b!3918486 b!3918487))

(assert (= b!3918485 b!3918486))

(assert (= b!3918484 b!3918485))

(assert (= (and b!3917890 ((_ is Cons!41519) (t!324178 suffixTokens!72))) b!3918484))

(declare-fun m!4482257 () Bool)

(assert (=> b!3918485 m!4482257))

(declare-fun m!4482259 () Bool)

(assert (=> b!3918486 m!4482259))

(declare-fun m!4482261 () Bool)

(assert (=> b!3918486 m!4482261))

(declare-fun m!4482263 () Bool)

(assert (=> b!3918484 m!4482263))

(declare-fun b!3918490 () Bool)

(declare-fun e!2422761 () Bool)

(declare-fun tp!1192633 () Bool)

(assert (=> b!3918490 (= e!2422761 tp!1192633)))

(declare-fun b!3918488 () Bool)

(assert (=> b!3918488 (= e!2422761 tp_is_empty!19713)))

(assert (=> b!3917877 (= tp!1192496 e!2422761)))

(declare-fun b!3918491 () Bool)

(declare-fun tp!1192632 () Bool)

(declare-fun tp!1192634 () Bool)

(assert (=> b!3918491 (= e!2422761 (and tp!1192632 tp!1192634))))

(declare-fun b!3918489 () Bool)

(declare-fun tp!1192635 () Bool)

(declare-fun tp!1192631 () Bool)

(assert (=> b!3918489 (= e!2422761 (and tp!1192635 tp!1192631))))

(assert (= (and b!3917877 ((_ is ElementMatch!11371) (regex!6466 (h!46940 rules!2768)))) b!3918488))

(assert (= (and b!3917877 ((_ is Concat!18068) (regex!6466 (h!46940 rules!2768)))) b!3918489))

(assert (= (and b!3917877 ((_ is Star!11371) (regex!6466 (h!46940 rules!2768)))) b!3918490))

(assert (= (and b!3917877 ((_ is Union!11371) (regex!6466 (h!46940 rules!2768)))) b!3918491))

(declare-fun b!3918492 () Bool)

(declare-fun e!2422762 () Bool)

(declare-fun tp!1192636 () Bool)

(assert (=> b!3918492 (= e!2422762 (and tp_is_empty!19713 tp!1192636))))

(assert (=> b!3917887 (= tp!1192483 e!2422762)))

(assert (= (and b!3917887 ((_ is Cons!41517) (t!324176 suffix!1176))) b!3918492))

(declare-fun b_lambda!114743 () Bool)

(assert (= b_lambda!114741 (or (and b!3918483 b_free!106451 (= (toChars!8777 (transformation!6466 (h!46940 (t!324179 rules!2768)))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))))) (and b!3917866 b_free!106427) (and b!3917874 b_free!106423 (= (toChars!8777 (transformation!6466 (h!46940 rules!2768))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))))) (and b!3918487 b_free!106455 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 (t!324178 suffixTokens!72))))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))))) (and b!3917865 b_free!106431 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))))) (and b!3918465 b_free!106447 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 (t!324178 prefixTokens!80))))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))))) b_lambda!114743)))

(declare-fun b_lambda!114745 () Bool)

(assert (= b_lambda!114735 (or (and b!3917865 b_free!106431) (and b!3918483 b_free!106451 (= (toChars!8777 (transformation!6466 (h!46940 (t!324179 rules!2768)))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))))) (and b!3918465 b_free!106447 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 (t!324178 prefixTokens!80))))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))))) (and b!3918487 b_free!106455 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 (t!324178 suffixTokens!72))))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))))) (and b!3917874 b_free!106423 (= (toChars!8777 (transformation!6466 (h!46940 rules!2768))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))))) (and b!3917866 b_free!106427 (= (toChars!8777 (transformation!6466 (rule!9392 (h!46939 prefixTokens!80)))) (toChars!8777 (transformation!6466 (rule!9392 (h!46939 suffixTokens!72)))))) b_lambda!114745)))

(check-sat (not d!1162444) (not b!3918394) (not b_next!107155) (not bm!284554) b_and!298553 (not b!3918444) (not b!3918323) b_and!298531 (not b!3918161) (not d!1162386) (not b!3918084) (not b!3918100) (not b!3918385) (not b!3918398) (not b!3918344) (not b_next!107135) b_and!298555 (not b!3918372) (not b!3917898) (not b!3918316) b_and!298541 (not b_next!107131) (not b!3918410) b_and!298551 (not b!3918055) (not b!3918373) (not b!3918387) (not b!3918432) (not b!3918419) (not b!3918445) (not b!3918427) (not b_lambda!114737) (not b!3918319) (not b!3918317) b_and!298545 (not b_next!107127) b_and!298549 (not b_lambda!114745) (not b!3918169) b_and!298557 (not b!3918098) (not d!1162396) (not b!3918320) (not b_next!107153) (not d!1162434) (not d!1162446) (not d!1162506) (not bm!284558) (not b!3918157) (not b!3918053) (not b!3918431) (not b!3918050) (not b!3918481) (not d!1162466) (not b!3918322) (not b!3918399) (not b!3918415) (not b!3918400) (not b!3918451) (not b!3918423) (not b!3918073) (not d!1162470) (not b!3918409) (not b!3918446) (not b_lambda!114743) (not b!3918492) (not b!3918359) (not b!3918424) (not tb!233879) (not b_next!107157) (not b!3918051) (not d!1162388) (not b!3918471) (not b!3918166) (not d!1162432) (not b!3918324) (not b!3918462) (not d!1162440) (not d!1162464) (not b!3918337) (not b!3918339) (not b!3918049) tp_is_empty!19713 (not b!3918158) (not b!3918097) (not b_next!107151) (not b!3918472) (not d!1162488) (not d!1162462) (not b!3918491) (not b!3918048) (not b_lambda!114739) (not b!3918489) (not b_next!107129) (not b!3918054) (not b!3918362) (not b_next!107149) (not b_next!107159) (not b!3918375) (not d!1162454) (not b!3918468) (not b!3918330) (not tb!233867) (not b!3918422) (not b!3918386) (not b!3918416) (not b_next!107133) (not b!3918484) (not b!3918405) (not b!3918329) b_and!298529 (not b_next!107125) (not b!3918318) (not tb!233861) (not b!3918485) (not b!3918418) (not tb!233873) (not b!3918358) (not b!3918429) b_and!298543 (not d!1162494) (not b!3918335) (not b!3918469) (not d!1162468) (not d!1162452) (not d!1162392) b_and!298547 (not b!3918164) (not d!1162450) (not b!3918470) (not d!1162324) (not b!3918083) (not b!3918413) (not b!3918463) (not b!3918482) (not b!3918395) (not b!3918421) (not b!3918056) (not b!3918406) (not d!1162472) (not d!1162456) (not d!1162492) (not b!3918486) (not b!3918392) (not b!3918464) (not b!3918490) (not d!1162460) (not b!3918467) (not d!1162448) (not b!3918403) b_and!298533)
(check-sat b_and!298531 b_and!298541 b_and!298557 (not b_next!107153) (not b_next!107157) (not b_next!107151) (not b_next!107129) (not b_next!107133) b_and!298543 b_and!298547 b_and!298533 (not b_next!107155) b_and!298553 (not b_next!107135) b_and!298555 (not b_next!107131) b_and!298551 b_and!298549 b_and!298545 (not b_next!107127) (not b_next!107149) (not b_next!107159) b_and!298529 (not b_next!107125))
