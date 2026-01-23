; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50244 () Bool)

(assert start!50244)

(declare-fun b!544300 () Bool)

(declare-fun b_free!15105 () Bool)

(declare-fun b_next!15121 () Bool)

(assert (=> b!544300 (= b_free!15105 (not b_next!15121))))

(declare-fun tp!173036 () Bool)

(declare-fun b_and!53147 () Bool)

(assert (=> b!544300 (= tp!173036 b_and!53147)))

(declare-fun b_free!15107 () Bool)

(declare-fun b_next!15123 () Bool)

(assert (=> b!544300 (= b_free!15107 (not b_next!15123))))

(declare-fun tp!173027 () Bool)

(declare-fun b_and!53149 () Bool)

(assert (=> b!544300 (= tp!173027 b_and!53149)))

(declare-fun b!544311 () Bool)

(declare-fun b_free!15109 () Bool)

(declare-fun b_next!15125 () Bool)

(assert (=> b!544311 (= b_free!15109 (not b_next!15125))))

(declare-fun tp!173030 () Bool)

(declare-fun b_and!53151 () Bool)

(assert (=> b!544311 (= tp!173030 b_and!53151)))

(declare-fun b_free!15111 () Bool)

(declare-fun b_next!15127 () Bool)

(assert (=> b!544311 (= b_free!15111 (not b_next!15127))))

(declare-fun tp!173031 () Bool)

(declare-fun b_and!53153 () Bool)

(assert (=> b!544311 (= tp!173031 b_and!53153)))

(declare-fun b!544292 () Bool)

(declare-fun res!232188 () Bool)

(declare-fun e!328898 () Bool)

(assert (=> b!544292 (=> (not res!232188) (not e!328898))))

(declare-datatypes ((C!3600 0))(
  ( (C!3601 (val!2026 Int)) )
))
(declare-datatypes ((Regex!1339 0))(
  ( (ElementMatch!1339 (c!102746 C!3600)) (Concat!2368 (regOne!3190 Regex!1339) (regTwo!3190 Regex!1339)) (EmptyExpr!1339) (Star!1339 (reg!1668 Regex!1339)) (EmptyLang!1339) (Union!1339 (regOne!3191 Regex!1339) (regTwo!3191 Regex!1339)) )
))
(declare-datatypes ((String!6888 0))(
  ( (String!6889 (value!33483 String)) )
))
(declare-datatypes ((List!5361 0))(
  ( (Nil!5351) (Cons!5351 (h!10752 (_ BitVec 16)) (t!74590 List!5361)) )
))
(declare-datatypes ((TokenValue!1029 0))(
  ( (FloatLiteralValue!2058 (text!7648 List!5361)) (TokenValueExt!1028 (__x!3956 Int)) (Broken!5145 (value!33484 List!5361)) (Object!1038) (End!1029) (Def!1029) (Underscore!1029) (Match!1029) (Else!1029) (Error!1029) (Case!1029) (If!1029) (Extends!1029) (Abstract!1029) (Class!1029) (Val!1029) (DelimiterValue!2058 (del!1089 List!5361)) (KeywordValue!1035 (value!33485 List!5361)) (CommentValue!2058 (value!33486 List!5361)) (WhitespaceValue!2058 (value!33487 List!5361)) (IndentationValue!1029 (value!33488 List!5361)) (String!6890) (Int32!1029) (Broken!5146 (value!33489 List!5361)) (Boolean!1030) (Unit!9374) (OperatorValue!1032 (op!1089 List!5361)) (IdentifierValue!2058 (value!33490 List!5361)) (IdentifierValue!2059 (value!33491 List!5361)) (WhitespaceValue!2059 (value!33492 List!5361)) (True!2058) (False!2058) (Broken!5147 (value!33493 List!5361)) (Broken!5148 (value!33494 List!5361)) (True!2059) (RightBrace!1029) (RightBracket!1029) (Colon!1029) (Null!1029) (Comma!1029) (LeftBracket!1029) (False!2059) (LeftBrace!1029) (ImaginaryLiteralValue!1029 (text!7649 List!5361)) (StringLiteralValue!3087 (value!33495 List!5361)) (EOFValue!1029 (value!33496 List!5361)) (IdentValue!1029 (value!33497 List!5361)) (DelimiterValue!2059 (value!33498 List!5361)) (DedentValue!1029 (value!33499 List!5361)) (NewLineValue!1029 (value!33500 List!5361)) (IntegerValue!3087 (value!33501 (_ BitVec 32)) (text!7650 List!5361)) (IntegerValue!3088 (value!33502 Int) (text!7651 List!5361)) (Times!1029) (Or!1029) (Equal!1029) (Minus!1029) (Broken!5149 (value!33503 List!5361)) (And!1029) (Div!1029) (LessEqual!1029) (Mod!1029) (Concat!2369) (Not!1029) (Plus!1029) (SpaceValue!1029 (value!33504 List!5361)) (IntegerValue!3089 (value!33505 Int) (text!7652 List!5361)) (StringLiteralValue!3088 (text!7653 List!5361)) (FloatLiteralValue!2059 (text!7654 List!5361)) (BytesLiteralValue!1029 (value!33506 List!5361)) (CommentValue!2059 (value!33507 List!5361)) (StringLiteralValue!3089 (value!33508 List!5361)) (ErrorTokenValue!1029 (msg!1090 List!5361)) )
))
(declare-datatypes ((List!5362 0))(
  ( (Nil!5352) (Cons!5352 (h!10753 C!3600) (t!74591 List!5362)) )
))
(declare-datatypes ((IArray!3445 0))(
  ( (IArray!3446 (innerList!1780 List!5362)) )
))
(declare-datatypes ((Conc!1722 0))(
  ( (Node!1722 (left!4437 Conc!1722) (right!4767 Conc!1722) (csize!3674 Int) (cheight!1933 Int)) (Leaf!2732 (xs!4359 IArray!3445) (csize!3675 Int)) (Empty!1722) )
))
(declare-datatypes ((BalanceConc!3452 0))(
  ( (BalanceConc!3453 (c!102747 Conc!1722)) )
))
(declare-datatypes ((TokenValueInjection!1826 0))(
  ( (TokenValueInjection!1827 (toValue!1852 Int) (toChars!1711 Int)) )
))
(declare-datatypes ((Rule!1810 0))(
  ( (Rule!1811 (regex!1005 Regex!1339) (tag!1267 String!6888) (isSeparator!1005 Bool) (transformation!1005 TokenValueInjection!1826)) )
))
(declare-datatypes ((List!5363 0))(
  ( (Nil!5353) (Cons!5353 (h!10754 Rule!1810) (t!74592 List!5363)) )
))
(declare-fun rules!3103 () List!5363)

(declare-fun isEmpty!3864 (List!5363) Bool)

(assert (=> b!544292 (= res!232188 (not (isEmpty!3864 rules!3103)))))

(declare-fun b!544293 () Bool)

(declare-fun res!232193 () Bool)

(declare-fun e!328909 () Bool)

(assert (=> b!544293 (=> res!232193 e!328909)))

(declare-datatypes ((Token!1746 0))(
  ( (Token!1747 (value!33509 TokenValue!1029) (rule!1719 Rule!1810) (size!4292 Int) (originalCharacters!1044 List!5362)) )
))
(declare-datatypes ((tuple2!6392 0))(
  ( (tuple2!6393 (_1!3460 Token!1746) (_2!3460 List!5362)) )
))
(declare-datatypes ((Option!1355 0))(
  ( (None!1354) (Some!1354 (v!16169 tuple2!6392)) )
))
(declare-fun lt!227781 () Option!1355)

(declare-fun contains!1247 (List!5363 Rule!1810) Bool)

(assert (=> b!544293 (= res!232193 (not (contains!1247 rules!3103 (rule!1719 (_1!3460 (v!16169 lt!227781))))))))

(declare-fun b!544294 () Bool)

(declare-fun e!328915 () Bool)

(declare-fun e!328907 () Bool)

(assert (=> b!544294 (= e!328915 e!328907)))

(declare-fun res!232196 () Bool)

(assert (=> b!544294 (=> (not res!232196) (not e!328907))))

(get-info :version)

(assert (=> b!544294 (= res!232196 ((_ is Some!1354) lt!227781))))

(declare-datatypes ((LexerInterface!891 0))(
  ( (LexerInterfaceExt!888 (__x!3957 Int)) (Lexer!889) )
))
(declare-fun thiss!22590 () LexerInterface!891)

(declare-fun input!2705 () List!5362)

(declare-fun maxPrefix!589 (LexerInterface!891 List!5363 List!5362) Option!1355)

(assert (=> b!544294 (= lt!227781 (maxPrefix!589 thiss!22590 rules!3103 input!2705))))

(declare-fun b!544295 () Bool)

(declare-fun res!232200 () Bool)

(assert (=> b!544295 (=> res!232200 e!328909)))

(declare-fun token!491 () Token!1746)

(assert (=> b!544295 (= res!232200 (not (contains!1247 rules!3103 (rule!1719 token!491))))))

(declare-fun b!544296 () Bool)

(declare-fun res!232201 () Bool)

(assert (=> b!544296 (=> res!232201 e!328909)))

(assert (=> b!544296 (= res!232201 (= (rule!1719 (_1!3460 (v!16169 lt!227781))) (rule!1719 token!491)))))

(declare-fun b!544297 () Bool)

(declare-fun e!328911 () Bool)

(declare-fun tp_is_empty!3033 () Bool)

(declare-fun tp!173033 () Bool)

(assert (=> b!544297 (= e!328911 (and tp_is_empty!3033 tp!173033))))

(declare-fun b!544298 () Bool)

(declare-fun res!232187 () Bool)

(assert (=> b!544298 (=> res!232187 e!328909)))

(declare-fun getIndex!6 (List!5363 Rule!1810) Int)

(assert (=> b!544298 (= res!232187 (>= (getIndex!6 rules!3103 (rule!1719 (_1!3460 (v!16169 lt!227781)))) (getIndex!6 rules!3103 (rule!1719 token!491))))))

(declare-fun e!328893 () Bool)

(declare-fun tp!173035 () Bool)

(declare-fun e!328906 () Bool)

(declare-fun b!544299 () Bool)

(declare-fun inv!6710 (String!6888) Bool)

(declare-fun inv!6713 (TokenValueInjection!1826) Bool)

(assert (=> b!544299 (= e!328906 (and tp!173035 (inv!6710 (tag!1267 (rule!1719 token!491))) (inv!6713 (transformation!1005 (rule!1719 token!491))) e!328893))))

(assert (=> b!544300 (= e!328893 (and tp!173036 tp!173027))))

(declare-fun b!544301 () Bool)

(declare-fun e!328895 () Bool)

(declare-fun e!328897 () Bool)

(assert (=> b!544301 (= e!328895 (not e!328897))))

(declare-fun res!232198 () Bool)

(assert (=> b!544301 (=> res!232198 e!328897)))

(declare-fun lt!227775 () List!5362)

(declare-fun isPrefix!647 (List!5362 List!5362) Bool)

(assert (=> b!544301 (= res!232198 (not (isPrefix!647 input!2705 lt!227775)))))

(declare-fun lt!227773 () List!5362)

(assert (=> b!544301 (isPrefix!647 lt!227773 lt!227775)))

(declare-datatypes ((Unit!9375 0))(
  ( (Unit!9376) )
))
(declare-fun lt!227752 () Unit!9375)

(declare-fun suffix!1342 () List!5362)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!498 (List!5362 List!5362) Unit!9375)

(assert (=> b!544301 (= lt!227752 (lemmaConcatTwoListThenFirstIsPrefix!498 lt!227773 suffix!1342))))

(declare-fun lt!227758 () List!5362)

(assert (=> b!544301 (isPrefix!647 input!2705 lt!227758)))

(declare-fun lt!227772 () Unit!9375)

(assert (=> b!544301 (= lt!227772 (lemmaConcatTwoListThenFirstIsPrefix!498 input!2705 suffix!1342))))

(declare-fun e!328916 () Bool)

(assert (=> b!544301 e!328916))

(declare-fun res!232186 () Bool)

(assert (=> b!544301 (=> (not res!232186) (not e!328916))))

(declare-fun lt!227755 () TokenValue!1029)

(assert (=> b!544301 (= res!232186 (= (value!33509 (_1!3460 (v!16169 lt!227781))) lt!227755))))

(declare-fun lt!227760 () BalanceConc!3452)

(declare-fun apply!1280 (TokenValueInjection!1826 BalanceConc!3452) TokenValue!1029)

(assert (=> b!544301 (= lt!227755 (apply!1280 (transformation!1005 (rule!1719 (_1!3460 (v!16169 lt!227781)))) lt!227760))))

(declare-fun lt!227761 () List!5362)

(declare-fun seqFromList!1203 (List!5362) BalanceConc!3452)

(assert (=> b!544301 (= lt!227760 (seqFromList!1203 lt!227761))))

(declare-fun lt!227763 () Unit!9375)

(declare-fun lemmaInv!153 (TokenValueInjection!1826) Unit!9375)

(assert (=> b!544301 (= lt!227763 (lemmaInv!153 (transformation!1005 (rule!1719 token!491))))))

(declare-fun lt!227768 () Unit!9375)

(assert (=> b!544301 (= lt!227768 (lemmaInv!153 (transformation!1005 (rule!1719 (_1!3460 (v!16169 lt!227781))))))))

(declare-fun ruleValid!225 (LexerInterface!891 Rule!1810) Bool)

(assert (=> b!544301 (ruleValid!225 thiss!22590 (rule!1719 token!491))))

(declare-fun lt!227747 () Unit!9375)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!84 (LexerInterface!891 Rule!1810 List!5363) Unit!9375)

(assert (=> b!544301 (= lt!227747 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!84 thiss!22590 (rule!1719 token!491) rules!3103))))

(assert (=> b!544301 (ruleValid!225 thiss!22590 (rule!1719 (_1!3460 (v!16169 lt!227781))))))

(declare-fun lt!227762 () Unit!9375)

(assert (=> b!544301 (= lt!227762 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!84 thiss!22590 (rule!1719 (_1!3460 (v!16169 lt!227781))) rules!3103))))

(assert (=> b!544301 (isPrefix!647 input!2705 input!2705)))

(declare-fun lt!227750 () Unit!9375)

(declare-fun lemmaIsPrefixRefl!387 (List!5362 List!5362) Unit!9375)

(assert (=> b!544301 (= lt!227750 (lemmaIsPrefixRefl!387 input!2705 input!2705))))

(declare-fun lt!227757 () List!5362)

(assert (=> b!544301 (= (_2!3460 (v!16169 lt!227781)) lt!227757)))

(declare-fun lt!227776 () Unit!9375)

(declare-fun lemmaSamePrefixThenSameSuffix!374 (List!5362 List!5362 List!5362 List!5362 List!5362) Unit!9375)

(assert (=> b!544301 (= lt!227776 (lemmaSamePrefixThenSameSuffix!374 lt!227761 (_2!3460 (v!16169 lt!227781)) lt!227761 lt!227757 input!2705))))

(declare-fun getSuffix!170 (List!5362 List!5362) List!5362)

(assert (=> b!544301 (= lt!227757 (getSuffix!170 input!2705 lt!227761))))

(declare-fun lt!227770 () List!5362)

(assert (=> b!544301 (isPrefix!647 lt!227761 lt!227770)))

(declare-fun ++!1493 (List!5362 List!5362) List!5362)

(assert (=> b!544301 (= lt!227770 (++!1493 lt!227761 (_2!3460 (v!16169 lt!227781))))))

(declare-fun lt!227754 () Unit!9375)

(assert (=> b!544301 (= lt!227754 (lemmaConcatTwoListThenFirstIsPrefix!498 lt!227761 (_2!3460 (v!16169 lt!227781))))))

(declare-fun lt!227753 () Unit!9375)

(declare-fun lemmaCharactersSize!84 (Token!1746) Unit!9375)

(assert (=> b!544301 (= lt!227753 (lemmaCharactersSize!84 token!491))))

(declare-fun lt!227780 () Unit!9375)

(assert (=> b!544301 (= lt!227780 (lemmaCharactersSize!84 (_1!3460 (v!16169 lt!227781))))))

(declare-fun lt!227766 () Unit!9375)

(declare-fun e!328913 () Unit!9375)

(assert (=> b!544301 (= lt!227766 e!328913)))

(declare-fun c!102744 () Bool)

(declare-fun lt!227759 () Int)

(declare-fun lt!227771 () Int)

(assert (=> b!544301 (= c!102744 (> lt!227759 lt!227771))))

(declare-fun size!4293 (List!5362) Int)

(assert (=> b!544301 (= lt!227771 (size!4293 lt!227773))))

(assert (=> b!544301 (= lt!227759 (size!4293 lt!227761))))

(declare-fun list!2219 (BalanceConc!3452) List!5362)

(declare-fun charsOf!634 (Token!1746) BalanceConc!3452)

(assert (=> b!544301 (= lt!227761 (list!2219 (charsOf!634 (_1!3460 (v!16169 lt!227781)))))))

(declare-fun lt!227751 () tuple2!6392)

(assert (=> b!544301 (= lt!227781 (Some!1354 lt!227751))))

(assert (=> b!544301 (= lt!227751 (tuple2!6393 (_1!3460 (v!16169 lt!227781)) (_2!3460 (v!16169 lt!227781))))))

(declare-fun lt!227765 () Unit!9375)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!90 (List!5362 List!5362 List!5362 List!5362) Unit!9375)

(assert (=> b!544301 (= lt!227765 (lemmaConcatSameAndSameSizesThenSameLists!90 lt!227773 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!544302 () Bool)

(declare-fun e!328914 () Bool)

(declare-fun e!328894 () Bool)

(assert (=> b!544302 (= e!328914 e!328894)))

(declare-fun res!232180 () Bool)

(assert (=> b!544302 (=> (not res!232180) (not e!328894))))

(declare-fun lt!227784 () Option!1355)

(declare-fun isDefined!1167 (Option!1355) Bool)

(assert (=> b!544302 (= res!232180 (isDefined!1167 lt!227784))))

(assert (=> b!544302 (= lt!227784 (maxPrefix!589 thiss!22590 rules!3103 lt!227758))))

(assert (=> b!544302 (= lt!227758 (++!1493 input!2705 suffix!1342))))

(declare-fun b!544303 () Bool)

(declare-fun res!232202 () Bool)

(assert (=> b!544303 (=> (not res!232202) (not e!328898))))

(declare-fun rulesInvariant!854 (LexerInterface!891 List!5363) Bool)

(assert (=> b!544303 (= res!232202 (rulesInvariant!854 thiss!22590 rules!3103))))

(declare-fun b!544304 () Bool)

(assert (=> b!544304 (= e!328909 true)))

(declare-fun lt!227783 () Bool)

(declare-fun rulesValidInductive!350 (LexerInterface!891 List!5363) Bool)

(assert (=> b!544304 (= lt!227783 (rulesValidInductive!350 thiss!22590 rules!3103))))

(declare-fun b!544305 () Bool)

(declare-fun e!328905 () Bool)

(declare-fun e!328901 () Bool)

(assert (=> b!544305 (= e!328905 e!328901)))

(declare-fun res!232194 () Bool)

(assert (=> b!544305 (=> (not res!232194) (not e!328901))))

(assert (=> b!544305 (= res!232194 (isDefined!1167 lt!227781))))

(declare-fun b!544306 () Bool)

(declare-fun Unit!9377 () Unit!9375)

(assert (=> b!544306 (= e!328913 Unit!9377)))

(assert (=> b!544306 false))

(declare-fun b!544307 () Bool)

(assert (=> b!544307 (= e!328894 e!328915)))

(declare-fun res!232199 () Bool)

(assert (=> b!544307 (=> (not res!232199) (not e!328915))))

(declare-fun lt!227749 () tuple2!6392)

(assert (=> b!544307 (= res!232199 (and (= (_1!3460 lt!227749) token!491) (= (_2!3460 lt!227749) suffix!1342)))))

(declare-fun get!2022 (Option!1355) tuple2!6392)

(assert (=> b!544307 (= lt!227749 (get!2022 lt!227784))))

(declare-fun lt!227774 () TokenValue!1029)

(declare-fun e!328903 () Bool)

(declare-fun lt!227764 () List!5362)

(declare-fun b!544308 () Bool)

(assert (=> b!544308 (= e!328903 (and (= (size!4292 token!491) lt!227771) (= (originalCharacters!1044 token!491) lt!227773) (= (tuple2!6393 token!491 suffix!1342) (tuple2!6393 (Token!1747 lt!227774 (rule!1719 token!491) lt!227771 lt!227773) lt!227764))))))

(declare-fun b!544309 () Bool)

(declare-fun e!328896 () Unit!9375)

(declare-fun Unit!9378 () Unit!9375)

(assert (=> b!544309 (= e!328896 Unit!9378)))

(declare-fun lt!227767 () Unit!9375)

(declare-fun lemmaSemiInverse!134 (TokenValueInjection!1826 BalanceConc!3452) Unit!9375)

(assert (=> b!544309 (= lt!227767 (lemmaSemiInverse!134 (transformation!1005 (rule!1719 (_1!3460 (v!16169 lt!227781)))) lt!227760))))

(declare-fun lt!227782 () Unit!9375)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!10 (LexerInterface!891 List!5363 Rule!1810 List!5362 List!5362 List!5362 Rule!1810) Unit!9375)

(assert (=> b!544309 (= lt!227782 (lemmaMaxPrefixOutputsMaxPrefix!10 thiss!22590 rules!3103 (rule!1719 (_1!3460 (v!16169 lt!227781))) lt!227761 input!2705 input!2705 (rule!1719 token!491)))))

(declare-fun res!232204 () Bool)

(declare-fun matchR!498 (Regex!1339 List!5362) Bool)

(assert (=> b!544309 (= res!232204 (not (matchR!498 (regex!1005 (rule!1719 token!491)) input!2705)))))

(declare-fun e!328910 () Bool)

(assert (=> b!544309 (=> (not res!232204) (not e!328910))))

(assert (=> b!544309 e!328910))

(declare-fun res!232185 () Bool)

(assert (=> start!50244 (=> (not res!232185) (not e!328898))))

(assert (=> start!50244 (= res!232185 ((_ is Lexer!889) thiss!22590))))

(assert (=> start!50244 e!328898))

(assert (=> start!50244 e!328911))

(declare-fun e!328908 () Bool)

(assert (=> start!50244 e!328908))

(declare-fun e!328917 () Bool)

(declare-fun inv!6714 (Token!1746) Bool)

(assert (=> start!50244 (and (inv!6714 token!491) e!328917)))

(assert (=> start!50244 true))

(declare-fun e!328912 () Bool)

(assert (=> start!50244 e!328912))

(declare-fun b!544310 () Bool)

(assert (=> b!544310 (= e!328897 e!328909)))

(declare-fun res!232203 () Bool)

(assert (=> b!544310 (=> res!232203 e!328909)))

(assert (=> b!544310 (= res!232203 (or (not (= lt!227759 lt!227771)) (not (= lt!227770 input!2705)) (not (= lt!227770 lt!227773))))))

(declare-fun lt!227785 () Unit!9375)

(declare-fun lt!227748 () BalanceConc!3452)

(assert (=> b!544310 (= lt!227785 (lemmaSemiInverse!134 (transformation!1005 (rule!1719 token!491)) lt!227748))))

(declare-fun lt!227777 () Unit!9375)

(assert (=> b!544310 (= lt!227777 (lemmaSemiInverse!134 (transformation!1005 (rule!1719 (_1!3460 (v!16169 lt!227781)))) lt!227760))))

(declare-fun lt!227756 () Unit!9375)

(assert (=> b!544310 (= lt!227756 e!328896)))

(declare-fun c!102745 () Bool)

(assert (=> b!544310 (= c!102745 (< lt!227759 lt!227771))))

(declare-fun e!328902 () Bool)

(assert (=> b!544310 e!328902))

(declare-fun res!232189 () Bool)

(assert (=> b!544310 (=> (not res!232189) (not e!328902))))

(declare-fun maxPrefixOneRule!304 (LexerInterface!891 Rule!1810 List!5362) Option!1355)

(assert (=> b!544310 (= res!232189 (= (maxPrefixOneRule!304 thiss!22590 (rule!1719 token!491) lt!227758) (Some!1354 (tuple2!6393 (Token!1747 lt!227774 (rule!1719 token!491) lt!227771 lt!227773) suffix!1342))))))

(declare-fun lt!227778 () Unit!9375)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!56 (LexerInterface!891 List!5363 List!5362 List!5362 List!5362 Rule!1810) Unit!9375)

(assert (=> b!544310 (= lt!227778 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!56 thiss!22590 rules!3103 lt!227773 lt!227758 suffix!1342 (rule!1719 token!491)))))

(assert (=> b!544310 (= (maxPrefixOneRule!304 thiss!22590 (rule!1719 (_1!3460 (v!16169 lt!227781))) input!2705) (Some!1354 (tuple2!6393 (Token!1747 lt!227755 (rule!1719 (_1!3460 (v!16169 lt!227781))) lt!227759 lt!227761) (_2!3460 (v!16169 lt!227781)))))))

(declare-fun lt!227779 () Unit!9375)

(assert (=> b!544310 (= lt!227779 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!56 thiss!22590 rules!3103 lt!227761 input!2705 (_2!3460 (v!16169 lt!227781)) (rule!1719 (_1!3460 (v!16169 lt!227781)))))))

(assert (=> b!544310 e!328903))

(declare-fun res!232191 () Bool)

(assert (=> b!544310 (=> (not res!232191) (not e!328903))))

(assert (=> b!544310 (= res!232191 (= (value!33509 token!491) lt!227774))))

(assert (=> b!544310 (= lt!227774 (apply!1280 (transformation!1005 (rule!1719 token!491)) lt!227748))))

(assert (=> b!544310 (= lt!227748 (seqFromList!1203 lt!227773))))

(assert (=> b!544310 (= suffix!1342 lt!227764)))

(declare-fun lt!227769 () Unit!9375)

(assert (=> b!544310 (= lt!227769 (lemmaSamePrefixThenSameSuffix!374 lt!227773 suffix!1342 lt!227773 lt!227764 lt!227758))))

(assert (=> b!544310 (= lt!227764 (getSuffix!170 lt!227758 lt!227773))))

(declare-fun e!328892 () Bool)

(assert (=> b!544311 (= e!328892 (and tp!173030 tp!173031))))

(declare-fun b!544312 () Bool)

(assert (=> b!544312 (= e!328902 e!328905)))

(declare-fun res!232192 () Bool)

(assert (=> b!544312 (=> res!232192 e!328905)))

(assert (=> b!544312 (= res!232192 (>= lt!227759 lt!227771))))

(declare-fun b!544313 () Bool)

(declare-fun res!232181 () Bool)

(assert (=> b!544313 (=> res!232181 e!328909)))

(declare-fun isEmpty!3865 (List!5362) Bool)

(assert (=> b!544313 (= res!232181 (not (isEmpty!3865 (_2!3460 (v!16169 lt!227781)))))))

(declare-fun b!544314 () Bool)

(assert (=> b!544314 (= e!328898 e!328914)))

(declare-fun res!232195 () Bool)

(assert (=> b!544314 (=> (not res!232195) (not e!328914))))

(assert (=> b!544314 (= res!232195 (= lt!227773 input!2705))))

(assert (=> b!544314 (= lt!227773 (list!2219 (charsOf!634 token!491)))))

(declare-fun b!544315 () Bool)

(declare-fun res!232179 () Bool)

(assert (=> b!544315 (=> (not res!232179) (not e!328901))))

(assert (=> b!544315 (= res!232179 (= (_1!3460 (get!2022 lt!227781)) (_1!3460 (v!16169 lt!227781))))))

(declare-fun b!544316 () Bool)

(declare-fun tp!173034 () Bool)

(assert (=> b!544316 (= e!328912 (and tp_is_empty!3033 tp!173034))))

(declare-fun b!544317 () Bool)

(declare-fun Unit!9379 () Unit!9375)

(assert (=> b!544317 (= e!328896 Unit!9379)))

(declare-fun b!544318 () Bool)

(assert (=> b!544318 (= e!328907 e!328895)))

(declare-fun res!232183 () Bool)

(assert (=> b!544318 (=> (not res!232183) (not e!328895))))

(assert (=> b!544318 (= res!232183 (= lt!227775 lt!227758))))

(assert (=> b!544318 (= lt!227775 (++!1493 lt!227773 suffix!1342))))

(declare-fun b!544319 () Bool)

(assert (=> b!544319 (= e!328910 false)))

(declare-fun e!328899 () Bool)

(declare-fun tp!173028 () Bool)

(declare-fun b!544320 () Bool)

(assert (=> b!544320 (= e!328899 (and tp!173028 (inv!6710 (tag!1267 (h!10754 rules!3103))) (inv!6713 (transformation!1005 (h!10754 rules!3103))) e!328892))))

(declare-fun tp!173032 () Bool)

(declare-fun b!544321 () Bool)

(declare-fun inv!21 (TokenValue!1029) Bool)

(assert (=> b!544321 (= e!328917 (and (inv!21 (value!33509 token!491)) e!328906 tp!173032))))

(declare-fun b!544322 () Bool)

(assert (=> b!544322 (= e!328916 (and (= (size!4292 (_1!3460 (v!16169 lt!227781))) lt!227759) (= (originalCharacters!1044 (_1!3460 (v!16169 lt!227781))) lt!227761) (= lt!227751 (tuple2!6393 (Token!1747 lt!227755 (rule!1719 (_1!3460 (v!16169 lt!227781))) lt!227759 lt!227761) lt!227757))))))

(declare-fun b!544323 () Bool)

(declare-fun res!232182 () Bool)

(assert (=> b!544323 (=> res!232182 e!328909)))

(assert (=> b!544323 (= res!232182 (or (not (= lt!227761 lt!227773)) (not (= (originalCharacters!1044 (_1!3460 (v!16169 lt!227781))) (originalCharacters!1044 token!491)))))))

(declare-fun b!544324 () Bool)

(declare-fun res!232190 () Bool)

(assert (=> b!544324 (=> (not res!232190) (not e!328898))))

(assert (=> b!544324 (= res!232190 (not (isEmpty!3865 input!2705)))))

(declare-fun b!544325 () Bool)

(declare-fun res!232184 () Bool)

(assert (=> b!544325 (=> (not res!232184) (not e!328903))))

(assert (=> b!544325 (= res!232184 (= (size!4292 token!491) (size!4293 (originalCharacters!1044 token!491))))))

(declare-fun b!544326 () Bool)

(assert (=> b!544326 (= e!328901 (= lt!227757 (_2!3460 (v!16169 lt!227781))))))

(declare-fun b!544327 () Bool)

(declare-fun Unit!9380 () Unit!9375)

(assert (=> b!544327 (= e!328913 Unit!9380)))

(declare-fun b!544328 () Bool)

(declare-fun res!232197 () Bool)

(assert (=> b!544328 (=> (not res!232197) (not e!328916))))

(assert (=> b!544328 (= res!232197 (= (size!4292 (_1!3460 (v!16169 lt!227781))) (size!4293 (originalCharacters!1044 (_1!3460 (v!16169 lt!227781))))))))

(declare-fun b!544329 () Bool)

(declare-fun tp!173029 () Bool)

(assert (=> b!544329 (= e!328908 (and e!328899 tp!173029))))

(assert (= (and start!50244 res!232185) b!544292))

(assert (= (and b!544292 res!232188) b!544303))

(assert (= (and b!544303 res!232202) b!544324))

(assert (= (and b!544324 res!232190) b!544314))

(assert (= (and b!544314 res!232195) b!544302))

(assert (= (and b!544302 res!232180) b!544307))

(assert (= (and b!544307 res!232199) b!544294))

(assert (= (and b!544294 res!232196) b!544318))

(assert (= (and b!544318 res!232183) b!544301))

(assert (= (and b!544301 c!102744) b!544306))

(assert (= (and b!544301 (not c!102744)) b!544327))

(assert (= (and b!544301 res!232186) b!544328))

(assert (= (and b!544328 res!232197) b!544322))

(assert (= (and b!544301 (not res!232198)) b!544310))

(assert (= (and b!544310 res!232191) b!544325))

(assert (= (and b!544325 res!232184) b!544308))

(assert (= (and b!544310 res!232189) b!544312))

(assert (= (and b!544312 (not res!232192)) b!544305))

(assert (= (and b!544305 res!232194) b!544315))

(assert (= (and b!544315 res!232179) b!544326))

(assert (= (and b!544310 c!102745) b!544309))

(assert (= (and b!544310 (not c!102745)) b!544317))

(assert (= (and b!544309 res!232204) b!544319))

(assert (= (and b!544310 (not res!232203)) b!544313))

(assert (= (and b!544313 (not res!232181)) b!544323))

(assert (= (and b!544323 (not res!232182)) b!544293))

(assert (= (and b!544293 (not res!232193)) b!544295))

(assert (= (and b!544295 (not res!232200)) b!544296))

(assert (= (and b!544296 (not res!232201)) b!544298))

(assert (= (and b!544298 (not res!232187)) b!544304))

(assert (= (and start!50244 ((_ is Cons!5352) suffix!1342)) b!544297))

(assert (= b!544320 b!544311))

(assert (= b!544329 b!544320))

(assert (= (and start!50244 ((_ is Cons!5353) rules!3103)) b!544329))

(assert (= b!544299 b!544300))

(assert (= b!544321 b!544299))

(assert (= start!50244 b!544321))

(assert (= (and start!50244 ((_ is Cons!5352) input!2705)) b!544316))

(declare-fun m!792595 () Bool)

(assert (=> b!544299 m!792595))

(declare-fun m!792597 () Bool)

(assert (=> b!544299 m!792597))

(declare-fun m!792599 () Bool)

(assert (=> b!544295 m!792599))

(declare-fun m!792601 () Bool)

(assert (=> b!544313 m!792601))

(declare-fun m!792603 () Bool)

(assert (=> b!544304 m!792603))

(declare-fun m!792605 () Bool)

(assert (=> b!544318 m!792605))

(declare-fun m!792607 () Bool)

(assert (=> b!544305 m!792607))

(declare-fun m!792609 () Bool)

(assert (=> b!544293 m!792609))

(declare-fun m!792611 () Bool)

(assert (=> b!544307 m!792611))

(declare-fun m!792613 () Bool)

(assert (=> b!544315 m!792613))

(declare-fun m!792615 () Bool)

(assert (=> b!544314 m!792615))

(assert (=> b!544314 m!792615))

(declare-fun m!792617 () Bool)

(assert (=> b!544314 m!792617))

(declare-fun m!792619 () Bool)

(assert (=> b!544294 m!792619))

(declare-fun m!792621 () Bool)

(assert (=> b!544324 m!792621))

(declare-fun m!792623 () Bool)

(assert (=> b!544298 m!792623))

(declare-fun m!792625 () Bool)

(assert (=> b!544298 m!792625))

(declare-fun m!792627 () Bool)

(assert (=> b!544325 m!792627))

(declare-fun m!792629 () Bool)

(assert (=> b!544328 m!792629))

(declare-fun m!792631 () Bool)

(assert (=> start!50244 m!792631))

(declare-fun m!792633 () Bool)

(assert (=> b!544302 m!792633))

(declare-fun m!792635 () Bool)

(assert (=> b!544302 m!792635))

(declare-fun m!792637 () Bool)

(assert (=> b!544302 m!792637))

(declare-fun m!792639 () Bool)

(assert (=> b!544292 m!792639))

(declare-fun m!792641 () Bool)

(assert (=> b!544309 m!792641))

(declare-fun m!792643 () Bool)

(assert (=> b!544309 m!792643))

(declare-fun m!792645 () Bool)

(assert (=> b!544309 m!792645))

(declare-fun m!792647 () Bool)

(assert (=> b!544320 m!792647))

(declare-fun m!792649 () Bool)

(assert (=> b!544320 m!792649))

(declare-fun m!792651 () Bool)

(assert (=> b!544321 m!792651))

(declare-fun m!792653 () Bool)

(assert (=> b!544303 m!792653))

(declare-fun m!792655 () Bool)

(assert (=> b!544310 m!792655))

(declare-fun m!792657 () Bool)

(assert (=> b!544310 m!792657))

(assert (=> b!544310 m!792641))

(declare-fun m!792659 () Bool)

(assert (=> b!544310 m!792659))

(declare-fun m!792661 () Bool)

(assert (=> b!544310 m!792661))

(declare-fun m!792663 () Bool)

(assert (=> b!544310 m!792663))

(declare-fun m!792665 () Bool)

(assert (=> b!544310 m!792665))

(declare-fun m!792667 () Bool)

(assert (=> b!544310 m!792667))

(declare-fun m!792669 () Bool)

(assert (=> b!544310 m!792669))

(declare-fun m!792671 () Bool)

(assert (=> b!544310 m!792671))

(declare-fun m!792673 () Bool)

(assert (=> b!544301 m!792673))

(declare-fun m!792675 () Bool)

(assert (=> b!544301 m!792675))

(declare-fun m!792677 () Bool)

(assert (=> b!544301 m!792677))

(declare-fun m!792679 () Bool)

(assert (=> b!544301 m!792679))

(declare-fun m!792681 () Bool)

(assert (=> b!544301 m!792681))

(declare-fun m!792683 () Bool)

(assert (=> b!544301 m!792683))

(declare-fun m!792685 () Bool)

(assert (=> b!544301 m!792685))

(declare-fun m!792687 () Bool)

(assert (=> b!544301 m!792687))

(declare-fun m!792689 () Bool)

(assert (=> b!544301 m!792689))

(declare-fun m!792691 () Bool)

(assert (=> b!544301 m!792691))

(declare-fun m!792693 () Bool)

(assert (=> b!544301 m!792693))

(declare-fun m!792695 () Bool)

(assert (=> b!544301 m!792695))

(declare-fun m!792697 () Bool)

(assert (=> b!544301 m!792697))

(declare-fun m!792699 () Bool)

(assert (=> b!544301 m!792699))

(declare-fun m!792701 () Bool)

(assert (=> b!544301 m!792701))

(declare-fun m!792703 () Bool)

(assert (=> b!544301 m!792703))

(declare-fun m!792705 () Bool)

(assert (=> b!544301 m!792705))

(declare-fun m!792707 () Bool)

(assert (=> b!544301 m!792707))

(declare-fun m!792709 () Bool)

(assert (=> b!544301 m!792709))

(declare-fun m!792711 () Bool)

(assert (=> b!544301 m!792711))

(declare-fun m!792713 () Bool)

(assert (=> b!544301 m!792713))

(declare-fun m!792715 () Bool)

(assert (=> b!544301 m!792715))

(declare-fun m!792717 () Bool)

(assert (=> b!544301 m!792717))

(declare-fun m!792719 () Bool)

(assert (=> b!544301 m!792719))

(declare-fun m!792721 () Bool)

(assert (=> b!544301 m!792721))

(assert (=> b!544301 m!792687))

(declare-fun m!792723 () Bool)

(assert (=> b!544301 m!792723))

(declare-fun m!792725 () Bool)

(assert (=> b!544301 m!792725))

(check-sat (not b!544328) (not b!544297) (not b!544302) (not start!50244) (not b!544314) b_and!53149 (not b!544294) (not b!544309) (not b_next!15125) (not b_next!15123) (not b!544316) b_and!53147 (not b!544301) (not b!544295) b_and!53153 (not b!544307) (not b!544325) (not b_next!15127) (not b!544298) (not b_next!15121) (not b!544324) (not b!544320) (not b!544321) tp_is_empty!3033 (not b!544305) (not b!544293) (not b!544292) (not b!544315) b_and!53151 (not b!544329) (not b!544310) (not b!544304) (not b!544299) (not b!544318) (not b!544303) (not b!544313))
(check-sat b_and!53147 b_and!53153 (not b_next!15127) b_and!53149 (not b_next!15121) b_and!53151 (not b_next!15125) (not b_next!15123))
