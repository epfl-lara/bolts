; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54648 () Bool)

(assert start!54648)

(declare-fun b!586853 () Bool)

(declare-fun b_free!16389 () Bool)

(declare-fun b_next!16405 () Bool)

(assert (=> b!586853 (= b_free!16389 (not b_next!16405))))

(declare-fun tp!183074 () Bool)

(declare-fun b_and!57811 () Bool)

(assert (=> b!586853 (= tp!183074 b_and!57811)))

(declare-fun b_free!16391 () Bool)

(declare-fun b_next!16407 () Bool)

(assert (=> b!586853 (= b_free!16391 (not b_next!16407))))

(declare-fun tp!183072 () Bool)

(declare-fun b_and!57813 () Bool)

(assert (=> b!586853 (= tp!183072 b_and!57813)))

(declare-fun b!586857 () Bool)

(declare-fun b_free!16393 () Bool)

(declare-fun b_next!16409 () Bool)

(assert (=> b!586857 (= b_free!16393 (not b_next!16409))))

(declare-fun tp!183075 () Bool)

(declare-fun b_and!57815 () Bool)

(assert (=> b!586857 (= tp!183075 b_and!57815)))

(declare-fun b_free!16395 () Bool)

(declare-fun b_next!16411 () Bool)

(assert (=> b!586857 (= b_free!16395 (not b_next!16411))))

(declare-fun tp!183077 () Bool)

(declare-fun b_and!57817 () Bool)

(assert (=> b!586857 (= tp!183077 b_and!57817)))

(declare-fun b!586851 () Bool)

(declare-fun res!252826 () Bool)

(declare-fun e!354726 () Bool)

(assert (=> b!586851 (=> (not res!252826) (not e!354726))))

(declare-datatypes ((C!3848 0))(
  ( (C!3849 (val!2150 Int)) )
))
(declare-datatypes ((List!5784 0))(
  ( (Nil!5774) (Cons!5774 (h!11175 C!3848) (t!78615 List!5784)) )
))
(declare-fun input!2705 () List!5784)

(declare-fun isEmpty!4169 (List!5784) Bool)

(assert (=> b!586851 (= res!252826 (not (isEmpty!4169 input!2705)))))

(declare-fun res!252825 () Bool)

(assert (=> start!54648 (=> (not res!252825) (not e!354726))))

(declare-datatypes ((LexerInterface!1015 0))(
  ( (LexerInterfaceExt!1012 (__x!4204 Int)) (Lexer!1013) )
))
(declare-fun thiss!22590 () LexerInterface!1015)

(get-info :version)

(assert (=> start!54648 (= res!252825 ((_ is Lexer!1013) thiss!22590))))

(assert (=> start!54648 e!354726))

(declare-fun e!354722 () Bool)

(assert (=> start!54648 e!354722))

(declare-fun e!354718 () Bool)

(assert (=> start!54648 e!354718))

(declare-datatypes ((Regex!1463 0))(
  ( (ElementMatch!1463 (c!109669 C!3848)) (Concat!2616 (regOne!3438 Regex!1463) (regTwo!3438 Regex!1463)) (EmptyExpr!1463) (Star!1463 (reg!1792 Regex!1463)) (EmptyLang!1463) (Union!1463 (regOne!3439 Regex!1463) (regTwo!3439 Regex!1463)) )
))
(declare-datatypes ((List!5785 0))(
  ( (Nil!5775) (Cons!5775 (h!11176 (_ BitVec 16)) (t!78616 List!5785)) )
))
(declare-datatypes ((TokenValue!1153 0))(
  ( (FloatLiteralValue!2306 (text!8516 List!5785)) (TokenValueExt!1152 (__x!4205 Int)) (Broken!5765 (value!37017 List!5785)) (Object!1162) (End!1153) (Def!1153) (Underscore!1153) (Match!1153) (Else!1153) (Error!1153) (Case!1153) (If!1153) (Extends!1153) (Abstract!1153) (Class!1153) (Val!1153) (DelimiterValue!2306 (del!1213 List!5785)) (KeywordValue!1159 (value!37018 List!5785)) (CommentValue!2306 (value!37019 List!5785)) (WhitespaceValue!2306 (value!37020 List!5785)) (IndentationValue!1153 (value!37021 List!5785)) (String!7508) (Int32!1153) (Broken!5766 (value!37022 List!5785)) (Boolean!1154) (Unit!10486) (OperatorValue!1156 (op!1213 List!5785)) (IdentifierValue!2306 (value!37023 List!5785)) (IdentifierValue!2307 (value!37024 List!5785)) (WhitespaceValue!2307 (value!37025 List!5785)) (True!2306) (False!2306) (Broken!5767 (value!37026 List!5785)) (Broken!5768 (value!37027 List!5785)) (True!2307) (RightBrace!1153) (RightBracket!1153) (Colon!1153) (Null!1153) (Comma!1153) (LeftBracket!1153) (False!2307) (LeftBrace!1153) (ImaginaryLiteralValue!1153 (text!8517 List!5785)) (StringLiteralValue!3459 (value!37028 List!5785)) (EOFValue!1153 (value!37029 List!5785)) (IdentValue!1153 (value!37030 List!5785)) (DelimiterValue!2307 (value!37031 List!5785)) (DedentValue!1153 (value!37032 List!5785)) (NewLineValue!1153 (value!37033 List!5785)) (IntegerValue!3459 (value!37034 (_ BitVec 32)) (text!8518 List!5785)) (IntegerValue!3460 (value!37035 Int) (text!8519 List!5785)) (Times!1153) (Or!1153) (Equal!1153) (Minus!1153) (Broken!5769 (value!37036 List!5785)) (And!1153) (Div!1153) (LessEqual!1153) (Mod!1153) (Concat!2617) (Not!1153) (Plus!1153) (SpaceValue!1153 (value!37037 List!5785)) (IntegerValue!3461 (value!37038 Int) (text!8520 List!5785)) (StringLiteralValue!3460 (text!8521 List!5785)) (FloatLiteralValue!2307 (text!8522 List!5785)) (BytesLiteralValue!1153 (value!37039 List!5785)) (CommentValue!2307 (value!37040 List!5785)) (StringLiteralValue!3461 (value!37041 List!5785)) (ErrorTokenValue!1153 (msg!1214 List!5785)) )
))
(declare-datatypes ((String!7509 0))(
  ( (String!7510 (value!37042 String)) )
))
(declare-datatypes ((IArray!3693 0))(
  ( (IArray!3694 (innerList!1904 List!5784)) )
))
(declare-datatypes ((Conc!1846 0))(
  ( (Node!1846 (left!4703 Conc!1846) (right!5033 Conc!1846) (csize!3922 Int) (cheight!2057 Int)) (Leaf!2918 (xs!4483 IArray!3693) (csize!3923 Int)) (Empty!1846) )
))
(declare-datatypes ((BalanceConc!3700 0))(
  ( (BalanceConc!3701 (c!109670 Conc!1846)) )
))
(declare-datatypes ((TokenValueInjection!2074 0))(
  ( (TokenValueInjection!2075 (toValue!2008 Int) (toChars!1867 Int)) )
))
(declare-datatypes ((Rule!2058 0))(
  ( (Rule!2059 (regex!1129 Regex!1463) (tag!1391 String!7509) (isSeparator!1129 Bool) (transformation!1129 TokenValueInjection!2074)) )
))
(declare-datatypes ((Token!1994 0))(
  ( (Token!1995 (value!37043 TokenValue!1153) (rule!1893 Rule!2058) (size!4586 Int) (originalCharacters!1168 List!5784)) )
))
(declare-fun token!491 () Token!1994)

(declare-fun e!354715 () Bool)

(declare-fun inv!7296 (Token!1994) Bool)

(assert (=> start!54648 (and (inv!7296 token!491) e!354715)))

(assert (=> start!54648 true))

(declare-fun e!354723 () Bool)

(assert (=> start!54648 e!354723))

(declare-fun e!354714 () Bool)

(declare-fun e!354727 () Bool)

(declare-fun tp!183079 () Bool)

(declare-fun b!586852 () Bool)

(declare-fun inv!7293 (String!7509) Bool)

(declare-fun inv!7297 (TokenValueInjection!2074) Bool)

(assert (=> b!586852 (= e!354727 (and tp!183079 (inv!7293 (tag!1391 (rule!1893 token!491))) (inv!7297 (transformation!1129 (rule!1893 token!491))) e!354714))))

(declare-fun e!354717 () Bool)

(assert (=> b!586853 (= e!354717 (and tp!183074 tp!183072))))

(declare-fun b!586854 () Bool)

(declare-fun tp!183071 () Bool)

(declare-datatypes ((List!5786 0))(
  ( (Nil!5776) (Cons!5776 (h!11177 Rule!2058) (t!78617 List!5786)) )
))
(declare-fun rules!3103 () List!5786)

(declare-fun e!354713 () Bool)

(assert (=> b!586854 (= e!354713 (and tp!183071 (inv!7293 (tag!1391 (h!11177 rules!3103))) (inv!7297 (transformation!1129 (h!11177 rules!3103))) e!354717))))

(declare-fun b!586855 () Bool)

(declare-fun tp!183076 () Bool)

(declare-fun inv!21 (TokenValue!1153) Bool)

(assert (=> b!586855 (= e!354715 (and (inv!21 (value!37043 token!491)) e!354727 tp!183076))))

(declare-fun b!586856 () Bool)

(declare-fun tp_is_empty!3281 () Bool)

(declare-fun tp!183073 () Bool)

(assert (=> b!586856 (= e!354723 (and tp_is_empty!3281 tp!183073))))

(assert (=> b!586857 (= e!354714 (and tp!183075 tp!183077))))

(declare-fun b!586858 () Bool)

(declare-fun e!354721 () Bool)

(declare-fun e!354724 () Bool)

(assert (=> b!586858 (= e!354721 e!354724)))

(declare-fun res!252828 () Bool)

(assert (=> b!586858 (=> (not res!252828) (not e!354724))))

(declare-datatypes ((tuple2!6740 0))(
  ( (tuple2!6741 (_1!3634 Token!1994) (_2!3634 List!5784)) )
))
(declare-datatypes ((Option!1480 0))(
  ( (None!1479) (Some!1479 (v!16354 tuple2!6740)) )
))
(declare-fun lt!248696 () Option!1480)

(assert (=> b!586858 (= res!252828 ((_ is Some!1479) lt!248696))))

(declare-fun maxPrefix!713 (LexerInterface!1015 List!5786 List!5784) Option!1480)

(assert (=> b!586858 (= lt!248696 (maxPrefix!713 thiss!22590 rules!3103 input!2705))))

(declare-fun b!586859 () Bool)

(declare-datatypes ((Unit!10487 0))(
  ( (Unit!10488) )
))
(declare-fun e!354729 () Unit!10487)

(declare-fun Unit!10489 () Unit!10487)

(assert (=> b!586859 (= e!354729 Unit!10489)))

(declare-fun b!586860 () Bool)

(declare-fun e!354720 () Bool)

(assert (=> b!586860 (= e!354720 e!354721)))

(declare-fun res!252831 () Bool)

(assert (=> b!586860 (=> (not res!252831) (not e!354721))))

(declare-fun suffix!1342 () List!5784)

(declare-fun lt!248683 () tuple2!6740)

(assert (=> b!586860 (= res!252831 (and (= (_1!3634 lt!248683) token!491) (= (_2!3634 lt!248683) suffix!1342)))))

(declare-fun lt!248694 () Option!1480)

(declare-fun get!2208 (Option!1480) tuple2!6740)

(assert (=> b!586860 (= lt!248683 (get!2208 lt!248694))))

(declare-fun b!586861 () Bool)

(declare-fun res!252824 () Bool)

(assert (=> b!586861 (=> (not res!252824) (not e!354726))))

(declare-fun rulesInvariant!978 (LexerInterface!1015 List!5786) Bool)

(assert (=> b!586861 (= res!252824 (rulesInvariant!978 thiss!22590 rules!3103))))

(declare-fun b!586862 () Bool)

(declare-fun e!354716 () Bool)

(assert (=> b!586862 (= e!354726 e!354716)))

(declare-fun res!252829 () Bool)

(assert (=> b!586862 (=> (not res!252829) (not e!354716))))

(declare-fun lt!248688 () List!5784)

(assert (=> b!586862 (= res!252829 (= lt!248688 input!2705))))

(declare-fun list!2410 (BalanceConc!3700) List!5784)

(declare-fun charsOf!758 (Token!1994) BalanceConc!3700)

(assert (=> b!586862 (= lt!248688 (list!2410 (charsOf!758 token!491)))))

(declare-fun b!586863 () Bool)

(assert (=> b!586863 (= e!354724 (not true))))

(declare-fun isPrefix!757 (List!5784 List!5784) Bool)

(assert (=> b!586863 (isPrefix!757 input!2705 input!2705)))

(declare-fun lt!248687 () Unit!10487)

(declare-fun lemmaIsPrefixRefl!493 (List!5784 List!5784) Unit!10487)

(assert (=> b!586863 (= lt!248687 (lemmaIsPrefixRefl!493 input!2705 input!2705))))

(declare-fun lt!248689 () List!5784)

(assert (=> b!586863 (= (_2!3634 (v!16354 lt!248696)) lt!248689)))

(declare-fun lt!248692 () List!5784)

(declare-fun lt!248695 () Unit!10487)

(declare-fun lemmaSamePrefixThenSameSuffix!470 (List!5784 List!5784 List!5784 List!5784 List!5784) Unit!10487)

(assert (=> b!586863 (= lt!248695 (lemmaSamePrefixThenSameSuffix!470 lt!248692 (_2!3634 (v!16354 lt!248696)) lt!248692 lt!248689 input!2705))))

(declare-fun getSuffix!274 (List!5784 List!5784) List!5784)

(assert (=> b!586863 (= lt!248689 (getSuffix!274 input!2705 lt!248692))))

(declare-fun ++!1617 (List!5784 List!5784) List!5784)

(assert (=> b!586863 (isPrefix!757 lt!248692 (++!1617 lt!248692 (_2!3634 (v!16354 lt!248696))))))

(declare-fun lt!248691 () Unit!10487)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!602 (List!5784 List!5784) Unit!10487)

(assert (=> b!586863 (= lt!248691 (lemmaConcatTwoListThenFirstIsPrefix!602 lt!248692 (_2!3634 (v!16354 lt!248696))))))

(declare-fun lt!248686 () Unit!10487)

(declare-fun lemmaCharactersSize!188 (Token!1994) Unit!10487)

(assert (=> b!586863 (= lt!248686 (lemmaCharactersSize!188 token!491))))

(declare-fun lt!248690 () Unit!10487)

(assert (=> b!586863 (= lt!248690 (lemmaCharactersSize!188 (_1!3634 (v!16354 lt!248696))))))

(declare-fun lt!248685 () Unit!10487)

(assert (=> b!586863 (= lt!248685 e!354729)))

(declare-fun c!109668 () Bool)

(declare-fun size!4587 (List!5784) Int)

(assert (=> b!586863 (= c!109668 (> (size!4587 lt!248692) (size!4587 lt!248688)))))

(assert (=> b!586863 (= lt!248692 (list!2410 (charsOf!758 (_1!3634 (v!16354 lt!248696)))))))

(assert (=> b!586863 (= lt!248696 (Some!1479 (v!16354 lt!248696)))))

(declare-fun lt!248684 () Unit!10487)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!202 (List!5784 List!5784 List!5784 List!5784) Unit!10487)

(assert (=> b!586863 (= lt!248684 (lemmaConcatSameAndSameSizesThenSameLists!202 lt!248688 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!586864 () Bool)

(declare-fun tp!183078 () Bool)

(assert (=> b!586864 (= e!354718 (and e!354713 tp!183078))))

(declare-fun b!586865 () Bool)

(assert (=> b!586865 (= e!354716 e!354720)))

(declare-fun res!252830 () Bool)

(assert (=> b!586865 (=> (not res!252830) (not e!354720))))

(declare-fun isDefined!1291 (Option!1480) Bool)

(assert (=> b!586865 (= res!252830 (isDefined!1291 lt!248694))))

(declare-fun lt!248693 () List!5784)

(assert (=> b!586865 (= lt!248694 (maxPrefix!713 thiss!22590 rules!3103 lt!248693))))

(assert (=> b!586865 (= lt!248693 (++!1617 input!2705 suffix!1342))))

(declare-fun b!586866 () Bool)

(declare-fun res!252832 () Bool)

(assert (=> b!586866 (=> (not res!252832) (not e!354724))))

(assert (=> b!586866 (= res!252832 (= (++!1617 lt!248688 suffix!1342) lt!248693))))

(declare-fun b!586867 () Bool)

(declare-fun Unit!10490 () Unit!10487)

(assert (=> b!586867 (= e!354729 Unit!10490)))

(assert (=> b!586867 false))

(declare-fun b!586868 () Bool)

(declare-fun res!252827 () Bool)

(assert (=> b!586868 (=> (not res!252827) (not e!354726))))

(declare-fun isEmpty!4170 (List!5786) Bool)

(assert (=> b!586868 (= res!252827 (not (isEmpty!4170 rules!3103)))))

(declare-fun b!586869 () Bool)

(declare-fun tp!183080 () Bool)

(assert (=> b!586869 (= e!354722 (and tp_is_empty!3281 tp!183080))))

(assert (= (and start!54648 res!252825) b!586868))

(assert (= (and b!586868 res!252827) b!586861))

(assert (= (and b!586861 res!252824) b!586851))

(assert (= (and b!586851 res!252826) b!586862))

(assert (= (and b!586862 res!252829) b!586865))

(assert (= (and b!586865 res!252830) b!586860))

(assert (= (and b!586860 res!252831) b!586858))

(assert (= (and b!586858 res!252828) b!586866))

(assert (= (and b!586866 res!252832) b!586863))

(assert (= (and b!586863 c!109668) b!586867))

(assert (= (and b!586863 (not c!109668)) b!586859))

(assert (= (and start!54648 ((_ is Cons!5774) suffix!1342)) b!586869))

(assert (= b!586854 b!586853))

(assert (= b!586864 b!586854))

(assert (= (and start!54648 ((_ is Cons!5776) rules!3103)) b!586864))

(assert (= b!586852 b!586857))

(assert (= b!586855 b!586852))

(assert (= start!54648 b!586855))

(assert (= (and start!54648 ((_ is Cons!5774) input!2705)) b!586856))

(declare-fun m!847091 () Bool)

(assert (=> start!54648 m!847091))

(declare-fun m!847093 () Bool)

(assert (=> b!586858 m!847093))

(declare-fun m!847095 () Bool)

(assert (=> b!586863 m!847095))

(declare-fun m!847097 () Bool)

(assert (=> b!586863 m!847097))

(declare-fun m!847099 () Bool)

(assert (=> b!586863 m!847099))

(declare-fun m!847101 () Bool)

(assert (=> b!586863 m!847101))

(declare-fun m!847103 () Bool)

(assert (=> b!586863 m!847103))

(declare-fun m!847105 () Bool)

(assert (=> b!586863 m!847105))

(declare-fun m!847107 () Bool)

(assert (=> b!586863 m!847107))

(assert (=> b!586863 m!847101))

(assert (=> b!586863 m!847097))

(declare-fun m!847109 () Bool)

(assert (=> b!586863 m!847109))

(declare-fun m!847111 () Bool)

(assert (=> b!586863 m!847111))

(declare-fun m!847113 () Bool)

(assert (=> b!586863 m!847113))

(declare-fun m!847115 () Bool)

(assert (=> b!586863 m!847115))

(declare-fun m!847117 () Bool)

(assert (=> b!586863 m!847117))

(declare-fun m!847119 () Bool)

(assert (=> b!586863 m!847119))

(declare-fun m!847121 () Bool)

(assert (=> b!586863 m!847121))

(declare-fun m!847123 () Bool)

(assert (=> b!586866 m!847123))

(declare-fun m!847125 () Bool)

(assert (=> b!586852 m!847125))

(declare-fun m!847127 () Bool)

(assert (=> b!586852 m!847127))

(declare-fun m!847129 () Bool)

(assert (=> b!586865 m!847129))

(declare-fun m!847131 () Bool)

(assert (=> b!586865 m!847131))

(declare-fun m!847133 () Bool)

(assert (=> b!586865 m!847133))

(declare-fun m!847135 () Bool)

(assert (=> b!586851 m!847135))

(declare-fun m!847137 () Bool)

(assert (=> b!586854 m!847137))

(declare-fun m!847139 () Bool)

(assert (=> b!586854 m!847139))

(declare-fun m!847141 () Bool)

(assert (=> b!586861 m!847141))

(declare-fun m!847143 () Bool)

(assert (=> b!586860 m!847143))

(declare-fun m!847145 () Bool)

(assert (=> b!586855 m!847145))

(declare-fun m!847147 () Bool)

(assert (=> b!586868 m!847147))

(declare-fun m!847149 () Bool)

(assert (=> b!586862 m!847149))

(assert (=> b!586862 m!847149))

(declare-fun m!847151 () Bool)

(assert (=> b!586862 m!847151))

(check-sat (not b!586863) (not b!586861) (not b!586860) (not b_next!16405) (not b!586865) tp_is_empty!3281 (not b!586858) (not b_next!16411) b_and!57813 b_and!57815 (not b!586852) b_and!57811 (not b!586862) (not b!586868) b_and!57817 (not b!586864) (not b_next!16409) (not b!586855) (not b!586854) (not b_next!16407) (not b!586856) (not start!54648) (not b!586869) (not b!586851) (not b!586866))
(check-sat b_and!57811 b_and!57817 (not b_next!16409) (not b_next!16407) (not b_next!16405) (not b_next!16411) b_and!57813 b_and!57815)
