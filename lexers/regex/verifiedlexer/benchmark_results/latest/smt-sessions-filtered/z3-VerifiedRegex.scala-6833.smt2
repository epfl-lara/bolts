; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359412 () Bool)

(assert start!359412)

(declare-fun b!3838657 () Bool)

(declare-fun b_free!102189 () Bool)

(declare-fun b_next!102893 () Bool)

(assert (=> b!3838657 (= b_free!102189 (not b_next!102893))))

(declare-fun tp!1162363 () Bool)

(declare-fun b_and!285739 () Bool)

(assert (=> b!3838657 (= tp!1162363 b_and!285739)))

(declare-fun b_free!102191 () Bool)

(declare-fun b_next!102895 () Bool)

(assert (=> b!3838657 (= b_free!102191 (not b_next!102895))))

(declare-fun tp!1162371 () Bool)

(declare-fun b_and!285741 () Bool)

(assert (=> b!3838657 (= tp!1162371 b_and!285741)))

(declare-fun b!3838676 () Bool)

(declare-fun b_free!102193 () Bool)

(declare-fun b_next!102897 () Bool)

(assert (=> b!3838676 (= b_free!102193 (not b_next!102897))))

(declare-fun tp!1162368 () Bool)

(declare-fun b_and!285743 () Bool)

(assert (=> b!3838676 (= tp!1162368 b_and!285743)))

(declare-fun b_free!102195 () Bool)

(declare-fun b_next!102899 () Bool)

(assert (=> b!3838676 (= b_free!102195 (not b_next!102899))))

(declare-fun tp!1162366 () Bool)

(declare-fun b_and!285745 () Bool)

(assert (=> b!3838676 (= tp!1162366 b_and!285745)))

(declare-fun b!3838675 () Bool)

(declare-fun b_free!102197 () Bool)

(declare-fun b_next!102901 () Bool)

(assert (=> b!3838675 (= b_free!102197 (not b_next!102901))))

(declare-fun tp!1162372 () Bool)

(declare-fun b_and!285747 () Bool)

(assert (=> b!3838675 (= tp!1162372 b_and!285747)))

(declare-fun b_free!102199 () Bool)

(declare-fun b_next!102903 () Bool)

(assert (=> b!3838675 (= b_free!102199 (not b_next!102903))))

(declare-fun tp!1162356 () Bool)

(declare-fun b_and!285749 () Bool)

(assert (=> b!3838675 (= tp!1162356 b_and!285749)))

(declare-fun b!3838651 () Bool)

(declare-fun res!1553633 () Bool)

(declare-fun e!2371054 () Bool)

(assert (=> b!3838651 (=> res!1553633 e!2371054)))

(declare-datatypes ((C!22504 0))(
  ( (C!22505 (val!13346 Int)) )
))
(declare-datatypes ((List!40696 0))(
  ( (Nil!40572) (Cons!40572 (h!45992 C!22504) (t!310129 List!40696)) )
))
(declare-fun suffix!1176 () List!40696)

(declare-datatypes ((List!40697 0))(
  ( (Nil!40573) (Cons!40573 (h!45993 (_ BitVec 16)) (t!310130 List!40697)) )
))
(declare-datatypes ((TokenValue!6484 0))(
  ( (FloatLiteralValue!12968 (text!45833 List!40697)) (TokenValueExt!6483 (__x!25185 Int)) (Broken!32420 (value!198847 List!40697)) (Object!6607) (End!6484) (Def!6484) (Underscore!6484) (Match!6484) (Else!6484) (Error!6484) (Case!6484) (If!6484) (Extends!6484) (Abstract!6484) (Class!6484) (Val!6484) (DelimiterValue!12968 (del!6544 List!40697)) (KeywordValue!6490 (value!198848 List!40697)) (CommentValue!12968 (value!198849 List!40697)) (WhitespaceValue!12968 (value!198850 List!40697)) (IndentationValue!6484 (value!198851 List!40697)) (String!46137) (Int32!6484) (Broken!32421 (value!198852 List!40697)) (Boolean!6485) (Unit!58293) (OperatorValue!6487 (op!6544 List!40697)) (IdentifierValue!12968 (value!198853 List!40697)) (IdentifierValue!12969 (value!198854 List!40697)) (WhitespaceValue!12969 (value!198855 List!40697)) (True!12968) (False!12968) (Broken!32422 (value!198856 List!40697)) (Broken!32423 (value!198857 List!40697)) (True!12969) (RightBrace!6484) (RightBracket!6484) (Colon!6484) (Null!6484) (Comma!6484) (LeftBracket!6484) (False!12969) (LeftBrace!6484) (ImaginaryLiteralValue!6484 (text!45834 List!40697)) (StringLiteralValue!19452 (value!198858 List!40697)) (EOFValue!6484 (value!198859 List!40697)) (IdentValue!6484 (value!198860 List!40697)) (DelimiterValue!12969 (value!198861 List!40697)) (DedentValue!6484 (value!198862 List!40697)) (NewLineValue!6484 (value!198863 List!40697)) (IntegerValue!19452 (value!198864 (_ BitVec 32)) (text!45835 List!40697)) (IntegerValue!19453 (value!198865 Int) (text!45836 List!40697)) (Times!6484) (Or!6484) (Equal!6484) (Minus!6484) (Broken!32424 (value!198866 List!40697)) (And!6484) (Div!6484) (LessEqual!6484) (Mod!6484) (Concat!17643) (Not!6484) (Plus!6484) (SpaceValue!6484 (value!198867 List!40697)) (IntegerValue!19454 (value!198868 Int) (text!45837 List!40697)) (StringLiteralValue!19453 (text!45838 List!40697)) (FloatLiteralValue!12969 (text!45839 List!40697)) (BytesLiteralValue!6484 (value!198869 List!40697)) (CommentValue!12969 (value!198870 List!40697)) (StringLiteralValue!19454 (value!198871 List!40697)) (ErrorTokenValue!6484 (msg!6545 List!40697)) )
))
(declare-datatypes ((Regex!11159 0))(
  ( (ElementMatch!11159 (c!669176 C!22504)) (Concat!17644 (regOne!22830 Regex!11159) (regTwo!22830 Regex!11159)) (EmptyExpr!11159) (Star!11159 (reg!11488 Regex!11159)) (EmptyLang!11159) (Union!11159 (regOne!22831 Regex!11159) (regTwo!22831 Regex!11159)) )
))
(declare-datatypes ((String!46138 0))(
  ( (String!46139 (value!198872 String)) )
))
(declare-datatypes ((IArray!24935 0))(
  ( (IArray!24936 (innerList!12525 List!40696)) )
))
(declare-datatypes ((Conc!12465 0))(
  ( (Node!12465 (left!31358 Conc!12465) (right!31688 Conc!12465) (csize!25160 Int) (cheight!12676 Int)) (Leaf!19299 (xs!15771 IArray!24935) (csize!25161 Int)) (Empty!12465) )
))
(declare-datatypes ((BalanceConc!24524 0))(
  ( (BalanceConc!24525 (c!669177 Conc!12465)) )
))
(declare-datatypes ((TokenValueInjection!12396 0))(
  ( (TokenValueInjection!12397 (toValue!8670 Int) (toChars!8529 Int)) )
))
(declare-datatypes ((Rule!12308 0))(
  ( (Rule!12309 (regex!6254 Regex!11159) (tag!7114 String!46138) (isSeparator!6254 Bool) (transformation!6254 TokenValueInjection!12396)) )
))
(declare-datatypes ((Token!11646 0))(
  ( (Token!11647 (value!198873 TokenValue!6484) (rule!9090 Rule!12308) (size!30549 Int) (originalCharacters!6854 List!40696)) )
))
(declare-datatypes ((tuple2!39746 0))(
  ( (tuple2!39747 (_1!23007 Token!11646) (_2!23007 List!40696)) )
))
(declare-datatypes ((Option!8672 0))(
  ( (None!8671) (Some!8671 (v!38963 tuple2!39746)) )
))
(declare-fun lt!1332111 () Option!8672)

(declare-datatypes ((List!40698 0))(
  ( (Nil!40574) (Cons!40574 (h!45994 Token!11646) (t!310131 List!40698)) )
))
(declare-datatypes ((tuple2!39748 0))(
  ( (tuple2!39749 (_1!23008 List!40698) (_2!23008 List!40696)) )
))
(declare-fun lt!1332119 () tuple2!39748)

(assert (=> b!3838651 (= res!1553633 (or (not (= lt!1332119 (tuple2!39749 (_1!23008 lt!1332119) (_2!23008 lt!1332119)))) (not (= (_2!23007 (v!38963 lt!1332111)) suffix!1176))))))

(declare-fun b!3838652 () Bool)

(declare-fun e!2371040 () Bool)

(declare-fun tp_is_empty!19289 () Bool)

(declare-fun tp!1162361 () Bool)

(assert (=> b!3838652 (= e!2371040 (and tp_is_empty!19289 tp!1162361))))

(declare-fun b!3838653 () Bool)

(declare-fun e!2371053 () Bool)

(declare-fun e!2371037 () Bool)

(assert (=> b!3838653 (= e!2371053 e!2371037)))

(declare-fun res!1553637 () Bool)

(assert (=> b!3838653 (=> (not res!1553637) (not e!2371037))))

(declare-fun suffixResult!91 () List!40696)

(declare-fun lt!1332108 () tuple2!39748)

(declare-fun lt!1332113 () List!40698)

(assert (=> b!3838653 (= res!1553637 (= lt!1332108 (tuple2!39749 lt!1332113 suffixResult!91)))))

(declare-datatypes ((LexerInterface!5843 0))(
  ( (LexerInterfaceExt!5840 (__x!25186 Int)) (Lexer!5841) )
))
(declare-fun thiss!20629 () LexerInterface!5843)

(declare-datatypes ((List!40699 0))(
  ( (Nil!40575) (Cons!40575 (h!45995 Rule!12308) (t!310132 List!40699)) )
))
(declare-fun rules!2768 () List!40699)

(declare-fun lt!1332115 () List!40696)

(declare-fun lexList!1611 (LexerInterface!5843 List!40699 List!40696) tuple2!39748)

(assert (=> b!3838653 (= lt!1332108 (lexList!1611 thiss!20629 rules!2768 lt!1332115))))

(declare-fun prefixTokens!80 () List!40698)

(declare-fun suffixTokens!72 () List!40698)

(declare-fun ++!10265 (List!40698 List!40698) List!40698)

(assert (=> b!3838653 (= lt!1332113 (++!10265 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!40696)

(declare-fun ++!10266 (List!40696 List!40696) List!40696)

(assert (=> b!3838653 (= lt!1332115 (++!10266 prefix!426 suffix!1176))))

(declare-fun res!1553639 () Bool)

(assert (=> start!359412 (=> (not res!1553639) (not e!2371053))))

(get-info :version)

(assert (=> start!359412 (= res!1553639 ((_ is Lexer!5841) thiss!20629))))

(assert (=> start!359412 e!2371053))

(declare-fun e!2371036 () Bool)

(assert (=> start!359412 e!2371036))

(assert (=> start!359412 true))

(assert (=> start!359412 e!2371040))

(declare-fun e!2371052 () Bool)

(assert (=> start!359412 e!2371052))

(declare-fun e!2371056 () Bool)

(assert (=> start!359412 e!2371056))

(declare-fun e!2371041 () Bool)

(assert (=> start!359412 e!2371041))

(declare-fun e!2371033 () Bool)

(assert (=> start!359412 e!2371033))

(declare-fun b!3838654 () Bool)

(declare-fun res!1553635 () Bool)

(assert (=> b!3838654 (=> res!1553635 e!2371054)))

(assert (=> b!3838654 (= res!1553635 (not (= lt!1332108 (tuple2!39749 (++!10265 (Cons!40574 (_1!23007 (v!38963 lt!1332111)) Nil!40574) (_1!23008 lt!1332119)) (_2!23008 lt!1332119)))))))

(declare-fun b!3838655 () Bool)

(declare-fun tp!1162360 () Bool)

(assert (=> b!3838655 (= e!2371036 (and tp_is_empty!19289 tp!1162360))))

(declare-fun b!3838656 () Bool)

(assert (=> b!3838656 (= e!2371054 true)))

(assert (=> b!3838656 (= lt!1332108 (tuple2!39749 (Cons!40574 (_1!23007 (v!38963 lt!1332111)) (_1!23008 lt!1332119)) (_2!23008 lt!1332119)))))

(declare-fun e!2371055 () Bool)

(assert (=> b!3838657 (= e!2371055 (and tp!1162363 tp!1162371))))

(declare-fun b!3838658 () Bool)

(declare-fun e!2371044 () Bool)

(declare-fun size!30550 (List!40696) Int)

(assert (=> b!3838658 (= e!2371044 (= (size!30549 (_1!23007 (v!38963 lt!1332111))) (size!30550 (originalCharacters!6854 (_1!23007 (v!38963 lt!1332111))))))))

(declare-fun e!2371045 () Bool)

(declare-fun tp!1162357 () Bool)

(declare-fun b!3838659 () Bool)

(declare-fun inv!54724 (Token!11646) Bool)

(assert (=> b!3838659 (= e!2371041 (and (inv!54724 (h!45994 suffixTokens!72)) e!2371045 tp!1162357))))

(declare-fun b!3838660 () Bool)

(declare-fun tp!1162370 () Bool)

(declare-fun e!2371049 () Bool)

(declare-fun e!2371034 () Bool)

(declare-fun inv!54721 (String!46138) Bool)

(declare-fun inv!54725 (TokenValueInjection!12396) Bool)

(assert (=> b!3838660 (= e!2371034 (and tp!1162370 (inv!54721 (tag!7114 (rule!9090 (h!45994 suffixTokens!72)))) (inv!54725 (transformation!6254 (rule!9090 (h!45994 suffixTokens!72)))) e!2371049))))

(declare-fun tp!1162364 () Bool)

(declare-fun e!2371050 () Bool)

(declare-fun e!2371046 () Bool)

(declare-fun b!3838661 () Bool)

(declare-fun inv!21 (TokenValue!6484) Bool)

(assert (=> b!3838661 (= e!2371050 (and (inv!21 (value!198873 (h!45994 prefixTokens!80))) e!2371046 tp!1162364))))

(declare-fun b!3838662 () Bool)

(declare-fun e!2371035 () Bool)

(assert (=> b!3838662 (= e!2371037 e!2371035)))

(declare-fun res!1553640 () Bool)

(assert (=> b!3838662 (=> (not res!1553640) (not e!2371035))))

(assert (=> b!3838662 (= res!1553640 ((_ is Some!8671) lt!1332111))))

(declare-fun maxPrefix!3147 (LexerInterface!5843 List!40699 List!40696) Option!8672)

(assert (=> b!3838662 (= lt!1332111 (maxPrefix!3147 thiss!20629 rules!2768 lt!1332115))))

(declare-fun b!3838663 () Bool)

(declare-fun res!1553636 () Bool)

(assert (=> b!3838663 (=> (not res!1553636) (not e!2371053))))

(declare-fun rulesInvariant!5186 (LexerInterface!5843 List!40699) Bool)

(assert (=> b!3838663 (= res!1553636 (rulesInvariant!5186 thiss!20629 rules!2768))))

(declare-fun tp!1162365 () Bool)

(declare-fun b!3838664 () Bool)

(declare-fun e!2371039 () Bool)

(assert (=> b!3838664 (= e!2371039 (and tp!1162365 (inv!54721 (tag!7114 (h!45995 rules!2768))) (inv!54725 (transformation!6254 (h!45995 rules!2768))) e!2371055))))

(declare-fun b!3838665 () Bool)

(declare-fun tp!1162367 () Bool)

(assert (=> b!3838665 (= e!2371056 (and (inv!54724 (h!45994 prefixTokens!80)) e!2371050 tp!1162367))))

(declare-fun b!3838666 () Bool)

(declare-fun tp!1162362 () Bool)

(assert (=> b!3838666 (= e!2371052 (and e!2371039 tp!1162362))))

(declare-fun b!3838667 () Bool)

(declare-fun res!1553641 () Bool)

(assert (=> b!3838667 (=> (not res!1553641) (not e!2371053))))

(declare-fun isEmpty!23970 (List!40698) Bool)

(assert (=> b!3838667 (= res!1553641 (not (isEmpty!23970 prefixTokens!80)))))

(declare-fun b!3838668 () Bool)

(declare-fun res!1553632 () Bool)

(assert (=> b!3838668 (=> (not res!1553632) (not e!2371053))))

(declare-fun isEmpty!23971 (List!40699) Bool)

(assert (=> b!3838668 (= res!1553632 (not (isEmpty!23971 rules!2768)))))

(declare-fun b!3838669 () Bool)

(declare-fun res!1553638 () Bool)

(assert (=> b!3838669 (=> (not res!1553638) (not e!2371053))))

(declare-fun isEmpty!23972 (List!40696) Bool)

(assert (=> b!3838669 (= res!1553638 (not (isEmpty!23972 prefix!426)))))

(declare-fun b!3838670 () Bool)

(declare-fun tp!1162359 () Bool)

(assert (=> b!3838670 (= e!2371033 (and tp_is_empty!19289 tp!1162359))))

(declare-fun b!3838671 () Bool)

(assert (=> b!3838671 (= e!2371035 (not e!2371054))))

(declare-fun res!1553631 () Bool)

(assert (=> b!3838671 (=> res!1553631 e!2371054)))

(declare-fun lt!1332112 () List!40696)

(assert (=> b!3838671 (= res!1553631 (not (= lt!1332112 lt!1332115)))))

(assert (=> b!3838671 (= lt!1332119 (lexList!1611 thiss!20629 rules!2768 (_2!23007 (v!38963 lt!1332111))))))

(declare-fun lt!1332110 () Int)

(declare-fun lt!1332107 () List!40696)

(declare-fun lt!1332109 () List!40696)

(declare-fun lt!1332106 () TokenValue!6484)

(assert (=> b!3838671 (and (= (size!30549 (_1!23007 (v!38963 lt!1332111))) lt!1332110) (= (originalCharacters!6854 (_1!23007 (v!38963 lt!1332111))) lt!1332109) (= (v!38963 lt!1332111) (tuple2!39747 (Token!11647 lt!1332106 (rule!9090 (_1!23007 (v!38963 lt!1332111))) lt!1332110 lt!1332109) lt!1332107)))))

(assert (=> b!3838671 (= lt!1332110 (size!30550 lt!1332109))))

(assert (=> b!3838671 e!2371044))

(declare-fun res!1553642 () Bool)

(assert (=> b!3838671 (=> (not res!1553642) (not e!2371044))))

(assert (=> b!3838671 (= res!1553642 (= (value!198873 (_1!23007 (v!38963 lt!1332111))) lt!1332106))))

(declare-fun apply!9497 (TokenValueInjection!12396 BalanceConc!24524) TokenValue!6484)

(declare-fun seqFromList!4525 (List!40696) BalanceConc!24524)

(assert (=> b!3838671 (= lt!1332106 (apply!9497 (transformation!6254 (rule!9090 (_1!23007 (v!38963 lt!1332111)))) (seqFromList!4525 lt!1332109)))))

(assert (=> b!3838671 (= (_2!23007 (v!38963 lt!1332111)) lt!1332107)))

(declare-datatypes ((Unit!58294 0))(
  ( (Unit!58295) )
))
(declare-fun lt!1332118 () Unit!58294)

(declare-fun lemmaSamePrefixThenSameSuffix!1574 (List!40696 List!40696 List!40696 List!40696 List!40696) Unit!58294)

(assert (=> b!3838671 (= lt!1332118 (lemmaSamePrefixThenSameSuffix!1574 lt!1332109 (_2!23007 (v!38963 lt!1332111)) lt!1332109 lt!1332107 lt!1332115))))

(declare-fun getSuffix!1808 (List!40696 List!40696) List!40696)

(assert (=> b!3838671 (= lt!1332107 (getSuffix!1808 lt!1332115 lt!1332109))))

(declare-fun isPrefix!3353 (List!40696 List!40696) Bool)

(assert (=> b!3838671 (isPrefix!3353 lt!1332109 lt!1332112)))

(assert (=> b!3838671 (= lt!1332112 (++!10266 lt!1332109 (_2!23007 (v!38963 lt!1332111))))))

(declare-fun lt!1332114 () Unit!58294)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2216 (List!40696 List!40696) Unit!58294)

(assert (=> b!3838671 (= lt!1332114 (lemmaConcatTwoListThenFirstIsPrefix!2216 lt!1332109 (_2!23007 (v!38963 lt!1332111))))))

(declare-fun list!15114 (BalanceConc!24524) List!40696)

(declare-fun charsOf!4082 (Token!11646) BalanceConc!24524)

(assert (=> b!3838671 (= lt!1332109 (list!15114 (charsOf!4082 (_1!23007 (v!38963 lt!1332111)))))))

(declare-fun ruleValid!2206 (LexerInterface!5843 Rule!12308) Bool)

(assert (=> b!3838671 (ruleValid!2206 thiss!20629 (rule!9090 (_1!23007 (v!38963 lt!1332111))))))

(declare-fun lt!1332117 () Unit!58294)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1286 (LexerInterface!5843 Rule!12308 List!40699) Unit!58294)

(assert (=> b!3838671 (= lt!1332117 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1286 thiss!20629 (rule!9090 (_1!23007 (v!38963 lt!1332111))) rules!2768))))

(declare-fun lt!1332116 () Unit!58294)

(declare-fun lemmaCharactersSize!915 (Token!11646) Unit!58294)

(assert (=> b!3838671 (= lt!1332116 (lemmaCharactersSize!915 (_1!23007 (v!38963 lt!1332111))))))

(declare-fun b!3838672 () Bool)

(declare-fun res!1553634 () Bool)

(assert (=> b!3838672 (=> (not res!1553634) (not e!2371037))))

(assert (=> b!3838672 (= res!1553634 (= (lexList!1611 thiss!20629 rules!2768 suffix!1176) (tuple2!39749 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3838673 () Bool)

(declare-fun tp!1162369 () Bool)

(assert (=> b!3838673 (= e!2371045 (and (inv!21 (value!198873 (h!45994 suffixTokens!72))) e!2371034 tp!1162369))))

(declare-fun b!3838674 () Bool)

(declare-fun tp!1162358 () Bool)

(declare-fun e!2371048 () Bool)

(assert (=> b!3838674 (= e!2371046 (and tp!1162358 (inv!54721 (tag!7114 (rule!9090 (h!45994 prefixTokens!80)))) (inv!54725 (transformation!6254 (rule!9090 (h!45994 prefixTokens!80)))) e!2371048))))

(assert (=> b!3838675 (= e!2371048 (and tp!1162372 tp!1162356))))

(assert (=> b!3838676 (= e!2371049 (and tp!1162368 tp!1162366))))

(assert (= (and start!359412 res!1553639) b!3838668))

(assert (= (and b!3838668 res!1553632) b!3838663))

(assert (= (and b!3838663 res!1553636) b!3838667))

(assert (= (and b!3838667 res!1553641) b!3838669))

(assert (= (and b!3838669 res!1553638) b!3838653))

(assert (= (and b!3838653 res!1553637) b!3838672))

(assert (= (and b!3838672 res!1553634) b!3838662))

(assert (= (and b!3838662 res!1553640) b!3838671))

(assert (= (and b!3838671 res!1553642) b!3838658))

(assert (= (and b!3838671 (not res!1553631)) b!3838654))

(assert (= (and b!3838654 (not res!1553635)) b!3838651))

(assert (= (and b!3838651 (not res!1553633)) b!3838656))

(assert (= (and start!359412 ((_ is Cons!40572) suffixResult!91)) b!3838655))

(assert (= (and start!359412 ((_ is Cons!40572) suffix!1176)) b!3838652))

(assert (= b!3838664 b!3838657))

(assert (= b!3838666 b!3838664))

(assert (= (and start!359412 ((_ is Cons!40575) rules!2768)) b!3838666))

(assert (= b!3838674 b!3838675))

(assert (= b!3838661 b!3838674))

(assert (= b!3838665 b!3838661))

(assert (= (and start!359412 ((_ is Cons!40574) prefixTokens!80)) b!3838665))

(assert (= b!3838660 b!3838676))

(assert (= b!3838673 b!3838660))

(assert (= b!3838659 b!3838673))

(assert (= (and start!359412 ((_ is Cons!40574) suffixTokens!72)) b!3838659))

(assert (= (and start!359412 ((_ is Cons!40572) prefix!426)) b!3838670))

(declare-fun m!4392975 () Bool)

(assert (=> b!3838661 m!4392975))

(declare-fun m!4392977 () Bool)

(assert (=> b!3838674 m!4392977))

(declare-fun m!4392979 () Bool)

(assert (=> b!3838674 m!4392979))

(declare-fun m!4392981 () Bool)

(assert (=> b!3838659 m!4392981))

(declare-fun m!4392983 () Bool)

(assert (=> b!3838672 m!4392983))

(declare-fun m!4392985 () Bool)

(assert (=> b!3838668 m!4392985))

(declare-fun m!4392987 () Bool)

(assert (=> b!3838664 m!4392987))

(declare-fun m!4392989 () Bool)

(assert (=> b!3838664 m!4392989))

(declare-fun m!4392991 () Bool)

(assert (=> b!3838654 m!4392991))

(declare-fun m!4392993 () Bool)

(assert (=> b!3838662 m!4392993))

(declare-fun m!4392995 () Bool)

(assert (=> b!3838665 m!4392995))

(declare-fun m!4392997 () Bool)

(assert (=> b!3838658 m!4392997))

(declare-fun m!4392999 () Bool)

(assert (=> b!3838671 m!4392999))

(declare-fun m!4393001 () Bool)

(assert (=> b!3838671 m!4393001))

(declare-fun m!4393003 () Bool)

(assert (=> b!3838671 m!4393003))

(declare-fun m!4393005 () Bool)

(assert (=> b!3838671 m!4393005))

(declare-fun m!4393007 () Bool)

(assert (=> b!3838671 m!4393007))

(declare-fun m!4393009 () Bool)

(assert (=> b!3838671 m!4393009))

(declare-fun m!4393011 () Bool)

(assert (=> b!3838671 m!4393011))

(declare-fun m!4393013 () Bool)

(assert (=> b!3838671 m!4393013))

(declare-fun m!4393015 () Bool)

(assert (=> b!3838671 m!4393015))

(declare-fun m!4393017 () Bool)

(assert (=> b!3838671 m!4393017))

(assert (=> b!3838671 m!4393015))

(declare-fun m!4393019 () Bool)

(assert (=> b!3838671 m!4393019))

(declare-fun m!4393021 () Bool)

(assert (=> b!3838671 m!4393021))

(assert (=> b!3838671 m!4393001))

(declare-fun m!4393023 () Bool)

(assert (=> b!3838671 m!4393023))

(declare-fun m!4393025 () Bool)

(assert (=> b!3838671 m!4393025))

(declare-fun m!4393027 () Bool)

(assert (=> b!3838667 m!4393027))

(declare-fun m!4393029 () Bool)

(assert (=> b!3838673 m!4393029))

(declare-fun m!4393031 () Bool)

(assert (=> b!3838653 m!4393031))

(declare-fun m!4393033 () Bool)

(assert (=> b!3838653 m!4393033))

(declare-fun m!4393035 () Bool)

(assert (=> b!3838653 m!4393035))

(declare-fun m!4393037 () Bool)

(assert (=> b!3838660 m!4393037))

(declare-fun m!4393039 () Bool)

(assert (=> b!3838660 m!4393039))

(declare-fun m!4393041 () Bool)

(assert (=> b!3838663 m!4393041))

(declare-fun m!4393043 () Bool)

(assert (=> b!3838669 m!4393043))

(check-sat (not b_next!102895) (not b_next!102901) (not b!3838671) b_and!285747 (not b!3838667) (not b!3838660) (not b!3838666) b_and!285743 (not b_next!102903) b_and!285745 (not b!3838663) (not b!3838653) b_and!285749 (not b_next!102897) (not b!3838669) b_and!285739 (not b!3838664) (not b!3838674) (not b!3838662) (not b!3838655) (not b!3838652) (not b!3838670) b_and!285741 (not b!3838661) tp_is_empty!19289 (not b!3838658) (not b_next!102893) (not b!3838659) (not b_next!102899) (not b!3838672) (not b!3838668) (not b!3838665) (not b!3838654) (not b!3838673))
(check-sat (not b_next!102895) b_and!285739 (not b_next!102901) b_and!285747 b_and!285743 b_and!285741 (not b_next!102903) b_and!285745 b_and!285749 (not b_next!102897) (not b_next!102893) (not b_next!102899))
