; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!400726 () Bool)

(assert start!400726)

(declare-fun b!4196445 () Bool)

(declare-fun b_free!122287 () Bool)

(declare-fun b_next!122991 () Bool)

(assert (=> b!4196445 (= b_free!122287 (not b_next!122991))))

(declare-fun tp!1282006 () Bool)

(declare-fun b_and!329149 () Bool)

(assert (=> b!4196445 (= tp!1282006 b_and!329149)))

(declare-fun b_free!122289 () Bool)

(declare-fun b_next!122993 () Bool)

(assert (=> b!4196445 (= b_free!122289 (not b_next!122993))))

(declare-fun tp!1281994 () Bool)

(declare-fun b_and!329151 () Bool)

(assert (=> b!4196445 (= tp!1281994 b_and!329151)))

(declare-fun b!4196452 () Bool)

(declare-fun b_free!122291 () Bool)

(declare-fun b_next!122995 () Bool)

(assert (=> b!4196452 (= b_free!122291 (not b_next!122995))))

(declare-fun tp!1281998 () Bool)

(declare-fun b_and!329153 () Bool)

(assert (=> b!4196452 (= tp!1281998 b_and!329153)))

(declare-fun b_free!122293 () Bool)

(declare-fun b_next!122997 () Bool)

(assert (=> b!4196452 (= b_free!122293 (not b_next!122997))))

(declare-fun tp!1281996 () Bool)

(declare-fun b_and!329155 () Bool)

(assert (=> b!4196452 (= tp!1281996 b_and!329155)))

(declare-fun b!4196476 () Bool)

(declare-fun b_free!122295 () Bool)

(declare-fun b_next!122999 () Bool)

(assert (=> b!4196476 (= b_free!122295 (not b_next!122999))))

(declare-fun tp!1281997 () Bool)

(declare-fun b_and!329157 () Bool)

(assert (=> b!4196476 (= tp!1281997 b_and!329157)))

(declare-fun b_free!122297 () Bool)

(declare-fun b_next!123001 () Bool)

(assert (=> b!4196476 (= b_free!122297 (not b_next!123001))))

(declare-fun tp!1282002 () Bool)

(declare-fun b_and!329159 () Bool)

(assert (=> b!4196476 (= tp!1282002 b_and!329159)))

(declare-fun e!2604925 () Bool)

(assert (=> b!4196445 (= e!2604925 (and tp!1282006 tp!1281994))))

(declare-fun b!4196446 () Bool)

(declare-datatypes ((Unit!65190 0))(
  ( (Unit!65191) )
))
(declare-fun e!2604913 () Unit!65190)

(declare-fun Unit!65192 () Unit!65190)

(assert (=> b!4196446 (= e!2604913 Unit!65192)))

(declare-fun b!4196447 () Bool)

(declare-fun res!1722869 () Bool)

(declare-fun e!2604915 () Bool)

(assert (=> b!4196447 (=> (not res!1722869) (not e!2604915))))

(declare-datatypes ((LexerInterface!7283 0))(
  ( (LexerInterfaceExt!7280 (__x!28061 Int)) (Lexer!7281) )
))
(declare-fun thiss!25986 () LexerInterface!7283)

(declare-datatypes ((List!46215 0))(
  ( (Nil!46091) (Cons!46091 (h!51511 (_ BitVec 16)) (t!346526 List!46215)) )
))
(declare-datatypes ((TokenValue!7920 0))(
  ( (FloatLiteralValue!15840 (text!55885 List!46215)) (TokenValueExt!7919 (__x!28062 Int)) (Broken!39600 (value!239671 List!46215)) (Object!8043) (End!7920) (Def!7920) (Underscore!7920) (Match!7920) (Else!7920) (Error!7920) (Case!7920) (If!7920) (Extends!7920) (Abstract!7920) (Class!7920) (Val!7920) (DelimiterValue!15840 (del!7980 List!46215)) (KeywordValue!7926 (value!239672 List!46215)) (CommentValue!15840 (value!239673 List!46215)) (WhitespaceValue!15840 (value!239674 List!46215)) (IndentationValue!7920 (value!239675 List!46215)) (String!53465) (Int32!7920) (Broken!39601 (value!239676 List!46215)) (Boolean!7921) (Unit!65193) (OperatorValue!7923 (op!7980 List!46215)) (IdentifierValue!15840 (value!239677 List!46215)) (IdentifierValue!15841 (value!239678 List!46215)) (WhitespaceValue!15841 (value!239679 List!46215)) (True!15840) (False!15840) (Broken!39602 (value!239680 List!46215)) (Broken!39603 (value!239681 List!46215)) (True!15841) (RightBrace!7920) (RightBracket!7920) (Colon!7920) (Null!7920) (Comma!7920) (LeftBracket!7920) (False!15841) (LeftBrace!7920) (ImaginaryLiteralValue!7920 (text!55886 List!46215)) (StringLiteralValue!23760 (value!239682 List!46215)) (EOFValue!7920 (value!239683 List!46215)) (IdentValue!7920 (value!239684 List!46215)) (DelimiterValue!15841 (value!239685 List!46215)) (DedentValue!7920 (value!239686 List!46215)) (NewLineValue!7920 (value!239687 List!46215)) (IntegerValue!23760 (value!239688 (_ BitVec 32)) (text!55887 List!46215)) (IntegerValue!23761 (value!239689 Int) (text!55888 List!46215)) (Times!7920) (Or!7920) (Equal!7920) (Minus!7920) (Broken!39604 (value!239690 List!46215)) (And!7920) (Div!7920) (LessEqual!7920) (Mod!7920) (Concat!20515) (Not!7920) (Plus!7920) (SpaceValue!7920 (value!239691 List!46215)) (IntegerValue!23762 (value!239692 Int) (text!55889 List!46215)) (StringLiteralValue!23761 (text!55890 List!46215)) (FloatLiteralValue!15841 (text!55891 List!46215)) (BytesLiteralValue!7920 (value!239693 List!46215)) (CommentValue!15841 (value!239694 List!46215)) (StringLiteralValue!23762 (value!239695 List!46215)) (ErrorTokenValue!7920 (msg!7981 List!46215)) )
))
(declare-datatypes ((String!53466 0))(
  ( (String!53467 (value!239696 String)) )
))
(declare-datatypes ((C!25380 0))(
  ( (C!25381 (val!14852 Int)) )
))
(declare-datatypes ((List!46216 0))(
  ( (Nil!46092) (Cons!46092 (h!51512 C!25380) (t!346527 List!46216)) )
))
(declare-datatypes ((IArray!27807 0))(
  ( (IArray!27808 (innerList!13961 List!46216)) )
))
(declare-datatypes ((Conc!13901 0))(
  ( (Node!13901 (left!34336 Conc!13901) (right!34666 Conc!13901) (csize!28032 Int) (cheight!14112 Int)) (Leaf!21489 (xs!17207 IArray!27807) (csize!28033 Int)) (Empty!13901) )
))
(declare-datatypes ((BalanceConc!27396 0))(
  ( (BalanceConc!27397 (c!715802 Conc!13901)) )
))
(declare-datatypes ((Regex!12595 0))(
  ( (ElementMatch!12595 (c!715803 C!25380)) (Concat!20516 (regOne!25702 Regex!12595) (regTwo!25702 Regex!12595)) (EmptyExpr!12595) (Star!12595 (reg!12924 Regex!12595)) (EmptyLang!12595) (Union!12595 (regOne!25703 Regex!12595) (regTwo!25703 Regex!12595)) )
))
(declare-datatypes ((TokenValueInjection!15268 0))(
  ( (TokenValueInjection!15269 (toValue!10390 Int) (toChars!10249 Int)) )
))
(declare-datatypes ((Rule!15180 0))(
  ( (Rule!15181 (regex!7690 Regex!12595) (tag!8554 String!53466) (isSeparator!7690 Bool) (transformation!7690 TokenValueInjection!15268)) )
))
(declare-datatypes ((List!46217 0))(
  ( (Nil!46093) (Cons!46093 (h!51513 Rule!15180) (t!346528 List!46217)) )
))
(declare-fun rules!3843 () List!46217)

(declare-fun rulesInvariant!6496 (LexerInterface!7283 List!46217) Bool)

(assert (=> b!4196447 (= res!1722869 (rulesInvariant!6496 thiss!25986 rules!3843))))

(declare-fun b!4196448 () Bool)

(declare-fun res!1722856 () Bool)

(assert (=> b!4196448 (=> (not res!1722856) (not e!2604915))))

(declare-fun r!4142 () Rule!15180)

(declare-fun validRegex!5712 (Regex!12595) Bool)

(assert (=> b!4196448 (= res!1722856 (validRegex!5712 (regex!7690 r!4142)))))

(declare-fun b!4196449 () Bool)

(declare-fun e!2604912 () Bool)

(declare-fun e!2604909 () Bool)

(assert (=> b!4196449 (= e!2604912 e!2604909)))

(declare-fun res!1722860 () Bool)

(assert (=> b!4196449 (=> res!1722860 e!2604909)))

(declare-fun lt!1494928 () Int)

(declare-fun lt!1494934 () Int)

(assert (=> b!4196449 (= res!1722860 (<= lt!1494928 lt!1494934))))

(declare-fun pBis!107 () List!46216)

(declare-fun size!33879 (List!46216) Int)

(assert (=> b!4196449 (= lt!1494928 (size!33879 pBis!107))))

(declare-fun b!4196450 () Bool)

(declare-fun res!1722864 () Bool)

(assert (=> b!4196450 (=> (not res!1722864) (not e!2604915))))

(declare-fun ruleValid!3408 (LexerInterface!7283 Rule!15180) Bool)

(assert (=> b!4196450 (= res!1722864 (ruleValid!3408 thiss!25986 r!4142))))

(declare-fun b!4196451 () Bool)

(declare-fun e!2604910 () Bool)

(declare-datatypes ((Token!14094 0))(
  ( (Token!14095 (value!239697 TokenValue!7920) (rule!10784 Rule!15180) (size!33880 Int) (originalCharacters!8078 List!46216)) )
))
(declare-datatypes ((tuple2!43882 0))(
  ( (tuple2!43883 (_1!25075 Token!14094) (_2!25075 List!46216)) )
))
(declare-datatypes ((Option!9884 0))(
  ( (None!9883) (Some!9883 (v!40725 tuple2!43882)) )
))
(declare-fun lt!1494933 () Option!9884)

(declare-fun lt!1494936 () tuple2!43882)

(assert (=> b!4196451 (= e!2604910 (= lt!1494933 (Some!9883 (tuple2!43883 (_1!25075 lt!1494936) (_2!25075 lt!1494936)))))))

(declare-fun e!2604921 () Bool)

(assert (=> b!4196452 (= e!2604921 (and tp!1281998 tp!1281996))))

(declare-fun b!4196453 () Bool)

(declare-fun e!2604924 () Bool)

(declare-fun e!2604919 () Bool)

(declare-fun tp!1281995 () Bool)

(assert (=> b!4196453 (= e!2604924 (and e!2604919 tp!1281995))))

(declare-fun b!4196454 () Bool)

(declare-fun res!1722852 () Bool)

(assert (=> b!4196454 (=> (not res!1722852) (not e!2604915))))

(declare-fun isEmpty!27296 (List!46217) Bool)

(assert (=> b!4196454 (= res!1722852 (not (isEmpty!27296 rules!3843)))))

(declare-fun b!4196455 () Bool)

(declare-fun e!2604908 () Bool)

(declare-fun tp!1282005 () Bool)

(declare-fun inv!60649 (String!53466) Bool)

(declare-fun inv!60651 (TokenValueInjection!15268) Bool)

(assert (=> b!4196455 (= e!2604908 (and tp!1282005 (inv!60649 (tag!8554 r!4142)) (inv!60651 (transformation!7690 r!4142)) e!2604925))))

(declare-fun b!4196456 () Bool)

(assert (=> b!4196456 (= e!2604915 (not e!2604912))))

(declare-fun res!1722865 () Bool)

(assert (=> b!4196456 (=> res!1722865 e!2604912)))

(declare-fun lt!1494920 () Option!9884)

(declare-fun input!3342 () List!46216)

(declare-fun maxPrefixOneRule!3292 (LexerInterface!7283 Rule!15180 List!46216) Option!9884)

(assert (=> b!4196456 (= res!1722865 (not (= (maxPrefixOneRule!3292 thiss!25986 r!4142 input!3342) lt!1494920)))))

(declare-fun p!2959 () List!46216)

(declare-fun lt!1494923 () TokenValue!7920)

(declare-fun lt!1494927 () List!46216)

(assert (=> b!4196456 (= lt!1494920 (Some!9883 (tuple2!43883 (Token!14095 lt!1494923 r!4142 lt!1494934 p!2959) lt!1494927)))))

(declare-fun getSuffix!2840 (List!46216 List!46216) List!46216)

(assert (=> b!4196456 (= lt!1494927 (getSuffix!2840 input!3342 p!2959))))

(assert (=> b!4196456 (= lt!1494934 (size!33879 p!2959))))

(declare-fun lt!1494930 () BalanceConc!27396)

(declare-fun apply!10655 (TokenValueInjection!15268 BalanceConc!27396) TokenValue!7920)

(assert (=> b!4196456 (= lt!1494923 (apply!10655 (transformation!7690 r!4142) lt!1494930))))

(declare-fun isPrefix!4547 (List!46216 List!46216) Bool)

(assert (=> b!4196456 (isPrefix!4547 input!3342 input!3342)))

(declare-fun lt!1494925 () Unit!65190)

(declare-fun lemmaIsPrefixRefl!2976 (List!46216 List!46216) Unit!65190)

(assert (=> b!4196456 (= lt!1494925 (lemmaIsPrefixRefl!2976 input!3342 input!3342))))

(declare-fun lt!1494932 () Unit!65190)

(declare-fun lemmaSemiInverse!2456 (TokenValueInjection!15268 BalanceConc!27396) Unit!65190)

(assert (=> b!4196456 (= lt!1494932 (lemmaSemiInverse!2456 (transformation!7690 r!4142) lt!1494930))))

(declare-fun seqFromList!5715 (List!46216) BalanceConc!27396)

(assert (=> b!4196456 (= lt!1494930 (seqFromList!5715 p!2959))))

(declare-fun b!4196457 () Bool)

(declare-fun e!2604911 () Bool)

(assert (=> b!4196457 (= e!2604909 e!2604911)))

(declare-fun res!1722857 () Bool)

(assert (=> b!4196457 (=> res!1722857 e!2604911)))

(declare-fun isEmpty!27297 (Option!9884) Bool)

(assert (=> b!4196457 (= res!1722857 (isEmpty!27297 lt!1494933))))

(declare-fun rBis!167 () Rule!15180)

(assert (=> b!4196457 (= lt!1494933 (maxPrefixOneRule!3292 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1494935 () Unit!65190)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2414 (LexerInterface!7283 Rule!15180 List!46217) Unit!65190)

(assert (=> b!4196457 (= lt!1494935 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2414 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4196457 (<= lt!1494928 (size!33879 input!3342))))

(declare-fun lt!1494929 () Unit!65190)

(declare-fun lemmaIsPrefixThenSmallerEqSize!577 (List!46216 List!46216) Unit!65190)

(assert (=> b!4196457 (= lt!1494929 (lemmaIsPrefixThenSmallerEqSize!577 pBis!107 input!3342))))

(declare-fun res!1722854 () Bool)

(assert (=> start!400726 (=> (not res!1722854) (not e!2604915))))

(get-info :version)

(assert (=> start!400726 (= res!1722854 ((_ is Lexer!7281) thiss!25986))))

(assert (=> start!400726 e!2604915))

(assert (=> start!400726 true))

(declare-fun e!2604916 () Bool)

(assert (=> start!400726 e!2604916))

(assert (=> start!400726 e!2604908))

(assert (=> start!400726 e!2604924))

(declare-fun e!2604928 () Bool)

(assert (=> start!400726 e!2604928))

(declare-fun e!2604923 () Bool)

(assert (=> start!400726 e!2604923))

(declare-fun e!2604918 () Bool)

(assert (=> start!400726 e!2604918))

(declare-fun b!4196458 () Bool)

(declare-fun res!1722862 () Bool)

(assert (=> b!4196458 (=> res!1722862 e!2604909)))

(assert (=> b!4196458 (= res!1722862 (not (ruleValid!3408 thiss!25986 rBis!167)))))

(declare-fun b!4196459 () Bool)

(declare-fun res!1722867 () Bool)

(assert (=> b!4196459 (=> (not res!1722867) (not e!2604915))))

(assert (=> b!4196459 (= res!1722867 (isPrefix!4547 pBis!107 input!3342))))

(declare-fun b!4196460 () Bool)

(declare-fun e!2604914 () Bool)

(assert (=> b!4196460 (= e!2604914 e!2604910)))

(declare-fun res!1722866 () Bool)

(assert (=> b!4196460 (=> res!1722866 e!2604910)))

(declare-fun lt!1494919 () Int)

(assert (=> b!4196460 (= res!1722866 (>= lt!1494928 lt!1494919))))

(declare-fun lt!1494926 () Unit!65190)

(assert (=> b!4196460 (= lt!1494926 e!2604913)))

(declare-fun c!715801 () Bool)

(declare-fun lt!1494924 () List!46216)

(assert (=> b!4196460 (= c!715801 (= lt!1494928 (size!33879 lt!1494924)))))

(declare-fun b!4196461 () Bool)

(declare-fun tp_is_empty!22153 () Bool)

(declare-fun tp!1282001 () Bool)

(assert (=> b!4196461 (= e!2604928 (and tp_is_empty!22153 tp!1282001))))

(declare-fun b!4196462 () Bool)

(declare-fun res!1722863 () Bool)

(assert (=> b!4196462 (=> res!1722863 e!2604910)))

(declare-fun ++!11762 (List!46216 List!46216) List!46216)

(assert (=> b!4196462 (= res!1722863 (not (= (++!11762 p!2959 lt!1494927) input!3342)))))

(declare-fun b!4196463 () Bool)

(declare-fun res!1722853 () Bool)

(assert (=> b!4196463 (=> (not res!1722853) (not e!2604915))))

(declare-fun contains!9501 (List!46217 Rule!15180) Bool)

(assert (=> b!4196463 (= res!1722853 (contains!9501 rules!3843 rBis!167))))

(declare-fun b!4196464 () Bool)

(declare-fun res!1722859 () Bool)

(assert (=> b!4196464 (=> res!1722859 e!2604910)))

(assert (=> b!4196464 (= res!1722859 (not (isPrefix!4547 lt!1494924 input!3342)))))

(declare-fun b!4196465 () Bool)

(declare-fun res!1722870 () Bool)

(assert (=> b!4196465 (=> res!1722870 e!2604909)))

(declare-fun maxPrefix!4331 (LexerInterface!7283 List!46217 List!46216) Option!9884)

(assert (=> b!4196465 (= res!1722870 (not (= (maxPrefix!4331 thiss!25986 rules!3843 input!3342) lt!1494920)))))

(declare-fun b!4196466 () Bool)

(declare-fun e!2604917 () Bool)

(assert (=> b!4196466 (= e!2604911 e!2604917)))

(declare-fun res!1722858 () Bool)

(assert (=> b!4196466 (=> res!1722858 e!2604917)))

(assert (=> b!4196466 (= res!1722858 (= lt!1494924 pBis!107))))

(assert (=> b!4196466 (isPrefix!4547 lt!1494924 (++!11762 lt!1494924 (_2!25075 lt!1494936)))))

(declare-fun lt!1494921 () Unit!65190)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3044 (List!46216 List!46216) Unit!65190)

(assert (=> b!4196466 (= lt!1494921 (lemmaConcatTwoListThenFirstIsPrefix!3044 lt!1494924 (_2!25075 lt!1494936)))))

(declare-fun lt!1494922 () BalanceConc!27396)

(declare-fun list!16662 (BalanceConc!27396) List!46216)

(assert (=> b!4196466 (= lt!1494924 (list!16662 lt!1494922))))

(declare-fun charsOf!5125 (Token!14094) BalanceConc!27396)

(assert (=> b!4196466 (= lt!1494922 (charsOf!5125 (_1!25075 lt!1494936)))))

(declare-fun get!14994 (Option!9884) tuple2!43882)

(assert (=> b!4196466 (= lt!1494936 (get!14994 lt!1494933))))

(declare-fun b!4196467 () Bool)

(assert (=> b!4196467 (= e!2604917 e!2604914)))

(declare-fun res!1722851 () Bool)

(assert (=> b!4196467 (=> res!1722851 e!2604914)))

(assert (=> b!4196467 (= res!1722851 (< lt!1494919 lt!1494928))))

(declare-fun size!33881 (BalanceConc!27396) Int)

(assert (=> b!4196467 (= lt!1494919 (size!33881 lt!1494922))))

(declare-fun e!2604922 () Bool)

(declare-fun tp!1282003 () Bool)

(declare-fun b!4196468 () Bool)

(assert (=> b!4196468 (= e!2604916 (and tp!1282003 (inv!60649 (tag!8554 rBis!167)) (inv!60651 (transformation!7690 rBis!167)) e!2604922))))

(declare-fun b!4196469 () Bool)

(declare-fun tp!1282004 () Bool)

(assert (=> b!4196469 (= e!2604918 (and tp_is_empty!22153 tp!1282004))))

(declare-fun b!4196470 () Bool)

(declare-fun res!1722861 () Bool)

(assert (=> b!4196470 (=> (not res!1722861) (not e!2604915))))

(assert (=> b!4196470 (= res!1722861 (isPrefix!4547 p!2959 input!3342))))

(declare-fun b!4196471 () Bool)

(declare-fun res!1722868 () Bool)

(assert (=> b!4196471 (=> (not res!1722868) (not e!2604915))))

(declare-fun matchR!6334 (Regex!12595 List!46216) Bool)

(assert (=> b!4196471 (= res!1722868 (matchR!6334 (regex!7690 r!4142) p!2959))))

(declare-fun b!4196472 () Bool)

(declare-fun res!1722855 () Bool)

(assert (=> b!4196472 (=> (not res!1722855) (not e!2604915))))

(assert (=> b!4196472 (= res!1722855 (contains!9501 rules!3843 r!4142))))

(declare-fun b!4196473 () Bool)

(declare-fun tp!1281999 () Bool)

(assert (=> b!4196473 (= e!2604923 (and tp_is_empty!22153 tp!1281999))))

(declare-fun b!4196474 () Bool)

(declare-fun Unit!65194 () Unit!65190)

(assert (=> b!4196474 (= e!2604913 Unit!65194)))

(declare-fun lt!1494931 () Unit!65190)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1011 (List!46216 List!46216 List!46216) Unit!65190)

(assert (=> b!4196474 (= lt!1494931 (lemmaIsPrefixSameLengthThenSameList!1011 pBis!107 lt!1494924 input!3342))))

(assert (=> b!4196474 false))

(declare-fun tp!1282000 () Bool)

(declare-fun b!4196475 () Bool)

(assert (=> b!4196475 (= e!2604919 (and tp!1282000 (inv!60649 (tag!8554 (h!51513 rules!3843))) (inv!60651 (transformation!7690 (h!51513 rules!3843))) e!2604921))))

(assert (=> b!4196476 (= e!2604922 (and tp!1281997 tp!1282002))))

(assert (= (and start!400726 res!1722854) b!4196470))

(assert (= (and b!4196470 res!1722861) b!4196459))

(assert (= (and b!4196459 res!1722867) b!4196454))

(assert (= (and b!4196454 res!1722852) b!4196447))

(assert (= (and b!4196447 res!1722869) b!4196472))

(assert (= (and b!4196472 res!1722855) b!4196463))

(assert (= (and b!4196463 res!1722853) b!4196448))

(assert (= (and b!4196448 res!1722856) b!4196471))

(assert (= (and b!4196471 res!1722868) b!4196450))

(assert (= (and b!4196450 res!1722864) b!4196456))

(assert (= (and b!4196456 (not res!1722865)) b!4196449))

(assert (= (and b!4196449 (not res!1722860)) b!4196458))

(assert (= (and b!4196458 (not res!1722862)) b!4196465))

(assert (= (and b!4196465 (not res!1722870)) b!4196457))

(assert (= (and b!4196457 (not res!1722857)) b!4196466))

(assert (= (and b!4196466 (not res!1722858)) b!4196467))

(assert (= (and b!4196467 (not res!1722851)) b!4196460))

(assert (= (and b!4196460 c!715801) b!4196474))

(assert (= (and b!4196460 (not c!715801)) b!4196446))

(assert (= (and b!4196460 (not res!1722866)) b!4196462))

(assert (= (and b!4196462 (not res!1722863)) b!4196464))

(assert (= (and b!4196464 (not res!1722859)) b!4196451))

(assert (= b!4196468 b!4196476))

(assert (= start!400726 b!4196468))

(assert (= b!4196455 b!4196445))

(assert (= start!400726 b!4196455))

(assert (= b!4196475 b!4196452))

(assert (= b!4196453 b!4196475))

(assert (= (and start!400726 ((_ is Cons!46093) rules!3843)) b!4196453))

(assert (= (and start!400726 ((_ is Cons!46092) input!3342)) b!4196461))

(assert (= (and start!400726 ((_ is Cons!46092) pBis!107)) b!4196473))

(assert (= (and start!400726 ((_ is Cons!46092) p!2959)) b!4196469))

(declare-fun m!4785283 () Bool)

(assert (=> b!4196454 m!4785283))

(declare-fun m!4785285 () Bool)

(assert (=> b!4196464 m!4785285))

(declare-fun m!4785287 () Bool)

(assert (=> b!4196463 m!4785287))

(declare-fun m!4785289 () Bool)

(assert (=> b!4196462 m!4785289))

(declare-fun m!4785291 () Bool)

(assert (=> b!4196467 m!4785291))

(declare-fun m!4785293 () Bool)

(assert (=> b!4196456 m!4785293))

(declare-fun m!4785295 () Bool)

(assert (=> b!4196456 m!4785295))

(declare-fun m!4785297 () Bool)

(assert (=> b!4196456 m!4785297))

(declare-fun m!4785299 () Bool)

(assert (=> b!4196456 m!4785299))

(declare-fun m!4785301 () Bool)

(assert (=> b!4196456 m!4785301))

(declare-fun m!4785303 () Bool)

(assert (=> b!4196456 m!4785303))

(declare-fun m!4785305 () Bool)

(assert (=> b!4196456 m!4785305))

(declare-fun m!4785307 () Bool)

(assert (=> b!4196456 m!4785307))

(declare-fun m!4785309 () Bool)

(assert (=> b!4196455 m!4785309))

(declare-fun m!4785311 () Bool)

(assert (=> b!4196455 m!4785311))

(declare-fun m!4785313 () Bool)

(assert (=> b!4196475 m!4785313))

(declare-fun m!4785315 () Bool)

(assert (=> b!4196475 m!4785315))

(declare-fun m!4785317 () Bool)

(assert (=> b!4196466 m!4785317))

(declare-fun m!4785319 () Bool)

(assert (=> b!4196466 m!4785319))

(declare-fun m!4785321 () Bool)

(assert (=> b!4196466 m!4785321))

(declare-fun m!4785323 () Bool)

(assert (=> b!4196466 m!4785323))

(assert (=> b!4196466 m!4785323))

(declare-fun m!4785325 () Bool)

(assert (=> b!4196466 m!4785325))

(declare-fun m!4785327 () Bool)

(assert (=> b!4196466 m!4785327))

(declare-fun m!4785329 () Bool)

(assert (=> b!4196449 m!4785329))

(declare-fun m!4785331 () Bool)

(assert (=> b!4196474 m!4785331))

(declare-fun m!4785333 () Bool)

(assert (=> b!4196472 m!4785333))

(declare-fun m!4785335 () Bool)

(assert (=> b!4196470 m!4785335))

(declare-fun m!4785337 () Bool)

(assert (=> b!4196465 m!4785337))

(declare-fun m!4785339 () Bool)

(assert (=> b!4196471 m!4785339))

(declare-fun m!4785341 () Bool)

(assert (=> b!4196459 m!4785341))

(declare-fun m!4785343 () Bool)

(assert (=> b!4196460 m!4785343))

(declare-fun m!4785345 () Bool)

(assert (=> b!4196468 m!4785345))

(declare-fun m!4785347 () Bool)

(assert (=> b!4196468 m!4785347))

(declare-fun m!4785349 () Bool)

(assert (=> b!4196450 m!4785349))

(declare-fun m!4785351 () Bool)

(assert (=> b!4196447 m!4785351))

(declare-fun m!4785353 () Bool)

(assert (=> b!4196457 m!4785353))

(declare-fun m!4785355 () Bool)

(assert (=> b!4196457 m!4785355))

(declare-fun m!4785357 () Bool)

(assert (=> b!4196457 m!4785357))

(declare-fun m!4785359 () Bool)

(assert (=> b!4196457 m!4785359))

(declare-fun m!4785361 () Bool)

(assert (=> b!4196457 m!4785361))

(declare-fun m!4785363 () Bool)

(assert (=> b!4196458 m!4785363))

(declare-fun m!4785365 () Bool)

(assert (=> b!4196448 m!4785365))

(check-sat (not b!4196453) b_and!329153 (not b!4196474) (not b!4196466) (not b_next!122993) (not b!4196460) (not b!4196450) (not b!4196455) b_and!329155 (not b_next!122991) (not b!4196458) (not b!4196473) (not b!4196448) (not b_next!123001) (not b!4196462) (not b_next!122995) (not b!4196464) (not b!4196475) (not b!4196461) (not b!4196471) (not b!4196454) (not b!4196459) (not b!4196468) (not b!4196467) tp_is_empty!22153 (not b!4196472) (not b!4196447) (not b!4196470) (not b!4196449) (not b!4196456) b_and!329157 b_and!329151 b_and!329159 (not b!4196457) (not b_next!122997) (not b_next!122999) b_and!329149 (not b!4196469) (not b!4196463) (not b!4196465))
(check-sat b_and!329153 (not b_next!122993) b_and!329157 (not b_next!122997) b_and!329155 (not b_next!122991) (not b_next!123001) (not b_next!122995) b_and!329151 b_and!329159 (not b_next!122999) b_and!329149)
(get-model)

(declare-fun d!1237588 () Bool)

(declare-fun lt!1494939 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7191 (List!46217) (InoxSet Rule!15180))

(assert (=> d!1237588 (= lt!1494939 (select (content!7191 rules!3843) r!4142))))

(declare-fun e!2604934 () Bool)

(assert (=> d!1237588 (= lt!1494939 e!2604934)))

(declare-fun res!1722882 () Bool)

(assert (=> d!1237588 (=> (not res!1722882) (not e!2604934))))

(assert (=> d!1237588 (= res!1722882 ((_ is Cons!46093) rules!3843))))

(assert (=> d!1237588 (= (contains!9501 rules!3843 r!4142) lt!1494939)))

(declare-fun b!4196481 () Bool)

(declare-fun e!2604933 () Bool)

(assert (=> b!4196481 (= e!2604934 e!2604933)))

(declare-fun res!1722881 () Bool)

(assert (=> b!4196481 (=> res!1722881 e!2604933)))

(assert (=> b!4196481 (= res!1722881 (= (h!51513 rules!3843) r!4142))))

(declare-fun b!4196482 () Bool)

(assert (=> b!4196482 (= e!2604933 (contains!9501 (t!346528 rules!3843) r!4142))))

(assert (= (and d!1237588 res!1722882) b!4196481))

(assert (= (and b!4196481 (not res!1722881)) b!4196482))

(declare-fun m!4785367 () Bool)

(assert (=> d!1237588 m!4785367))

(declare-fun m!4785369 () Bool)

(assert (=> d!1237588 m!4785369))

(declare-fun m!4785371 () Bool)

(assert (=> b!4196482 m!4785371))

(assert (=> b!4196472 d!1237588))

(declare-fun b!4196492 () Bool)

(declare-fun e!2604939 () List!46216)

(assert (=> b!4196492 (= e!2604939 (Cons!46092 (h!51512 p!2959) (++!11762 (t!346527 p!2959) lt!1494927)))))

(declare-fun b!4196491 () Bool)

(assert (=> b!4196491 (= e!2604939 lt!1494927)))

(declare-fun d!1237590 () Bool)

(declare-fun e!2604940 () Bool)

(assert (=> d!1237590 e!2604940))

(declare-fun res!1722892 () Bool)

(assert (=> d!1237590 (=> (not res!1722892) (not e!2604940))))

(declare-fun lt!1494942 () List!46216)

(declare-fun content!7192 (List!46216) (InoxSet C!25380))

(assert (=> d!1237590 (= res!1722892 (= (content!7192 lt!1494942) ((_ map or) (content!7192 p!2959) (content!7192 lt!1494927))))))

(assert (=> d!1237590 (= lt!1494942 e!2604939)))

(declare-fun c!715806 () Bool)

(assert (=> d!1237590 (= c!715806 ((_ is Nil!46092) p!2959))))

(assert (=> d!1237590 (= (++!11762 p!2959 lt!1494927) lt!1494942)))

(declare-fun b!4196494 () Bool)

(assert (=> b!4196494 (= e!2604940 (or (not (= lt!1494927 Nil!46092)) (= lt!1494942 p!2959)))))

(declare-fun b!4196493 () Bool)

(declare-fun res!1722891 () Bool)

(assert (=> b!4196493 (=> (not res!1722891) (not e!2604940))))

(assert (=> b!4196493 (= res!1722891 (= (size!33879 lt!1494942) (+ (size!33879 p!2959) (size!33879 lt!1494927))))))

(assert (= (and d!1237590 c!715806) b!4196491))

(assert (= (and d!1237590 (not c!715806)) b!4196492))

(assert (= (and d!1237590 res!1722892) b!4196493))

(assert (= (and b!4196493 res!1722891) b!4196494))

(declare-fun m!4785373 () Bool)

(assert (=> b!4196492 m!4785373))

(declare-fun m!4785375 () Bool)

(assert (=> d!1237590 m!4785375))

(declare-fun m!4785377 () Bool)

(assert (=> d!1237590 m!4785377))

(declare-fun m!4785379 () Bool)

(assert (=> d!1237590 m!4785379))

(declare-fun m!4785381 () Bool)

(assert (=> b!4196493 m!4785381))

(assert (=> b!4196493 m!4785303))

(declare-fun m!4785383 () Bool)

(assert (=> b!4196493 m!4785383))

(assert (=> b!4196462 d!1237590))

(declare-fun d!1237592 () Bool)

(assert (=> d!1237592 (= pBis!107 lt!1494924)))

(declare-fun lt!1494945 () Unit!65190)

(declare-fun choose!25727 (List!46216 List!46216 List!46216) Unit!65190)

(assert (=> d!1237592 (= lt!1494945 (choose!25727 pBis!107 lt!1494924 input!3342))))

(assert (=> d!1237592 (isPrefix!4547 pBis!107 input!3342)))

(assert (=> d!1237592 (= (lemmaIsPrefixSameLengthThenSameList!1011 pBis!107 lt!1494924 input!3342) lt!1494945)))

(declare-fun bs!596834 () Bool)

(assert (= bs!596834 d!1237592))

(declare-fun m!4785385 () Bool)

(assert (=> bs!596834 m!4785385))

(assert (=> bs!596834 m!4785341))

(assert (=> b!4196474 d!1237592))

(declare-fun d!1237596 () Bool)

(declare-fun lt!1494946 () Bool)

(assert (=> d!1237596 (= lt!1494946 (select (content!7191 rules!3843) rBis!167))))

(declare-fun e!2604942 () Bool)

(assert (=> d!1237596 (= lt!1494946 e!2604942)))

(declare-fun res!1722894 () Bool)

(assert (=> d!1237596 (=> (not res!1722894) (not e!2604942))))

(assert (=> d!1237596 (= res!1722894 ((_ is Cons!46093) rules!3843))))

(assert (=> d!1237596 (= (contains!9501 rules!3843 rBis!167) lt!1494946)))

(declare-fun b!4196495 () Bool)

(declare-fun e!2604941 () Bool)

(assert (=> b!4196495 (= e!2604942 e!2604941)))

(declare-fun res!1722893 () Bool)

(assert (=> b!4196495 (=> res!1722893 e!2604941)))

(assert (=> b!4196495 (= res!1722893 (= (h!51513 rules!3843) rBis!167))))

(declare-fun b!4196496 () Bool)

(assert (=> b!4196496 (= e!2604941 (contains!9501 (t!346528 rules!3843) rBis!167))))

(assert (= (and d!1237596 res!1722894) b!4196495))

(assert (= (and b!4196495 (not res!1722893)) b!4196496))

(assert (=> d!1237596 m!4785367))

(declare-fun m!4785387 () Bool)

(assert (=> d!1237596 m!4785387))

(declare-fun m!4785389 () Bool)

(assert (=> b!4196496 m!4785389))

(assert (=> b!4196463 d!1237596))

(declare-fun b!4196537 () Bool)

(declare-fun e!2604976 () Bool)

(declare-fun e!2604977 () Bool)

(assert (=> b!4196537 (= e!2604976 e!2604977)))

(declare-fun c!715812 () Bool)

(assert (=> b!4196537 (= c!715812 ((_ is Union!12595) (regex!7690 r!4142)))))

(declare-fun b!4196538 () Bool)

(declare-fun e!2604975 () Bool)

(declare-fun e!2604972 () Bool)

(assert (=> b!4196538 (= e!2604975 e!2604972)))

(declare-fun res!1722927 () Bool)

(assert (=> b!4196538 (=> (not res!1722927) (not e!2604972))))

(declare-fun call!292455 () Bool)

(assert (=> b!4196538 (= res!1722927 call!292455)))

(declare-fun b!4196539 () Bool)

(declare-fun e!2604978 () Bool)

(declare-fun call!292457 () Bool)

(assert (=> b!4196539 (= e!2604978 call!292457)))

(declare-fun bm!292450 () Bool)

(declare-fun c!715811 () Bool)

(assert (=> bm!292450 (= call!292457 (validRegex!5712 (ite c!715811 (reg!12924 (regex!7690 r!4142)) (ite c!715812 (regOne!25703 (regex!7690 r!4142)) (regOne!25702 (regex!7690 r!4142))))))))

(declare-fun b!4196540 () Bool)

(declare-fun e!2604974 () Bool)

(assert (=> b!4196540 (= e!2604974 e!2604976)))

(assert (=> b!4196540 (= c!715811 ((_ is Star!12595) (regex!7690 r!4142)))))

(declare-fun d!1237598 () Bool)

(declare-fun res!1722930 () Bool)

(assert (=> d!1237598 (=> res!1722930 e!2604974)))

(assert (=> d!1237598 (= res!1722930 ((_ is ElementMatch!12595) (regex!7690 r!4142)))))

(assert (=> d!1237598 (= (validRegex!5712 (regex!7690 r!4142)) e!2604974)))

(declare-fun b!4196541 () Bool)

(assert (=> b!4196541 (= e!2604976 e!2604978)))

(declare-fun res!1722929 () Bool)

(declare-fun nullable!4429 (Regex!12595) Bool)

(assert (=> b!4196541 (= res!1722929 (not (nullable!4429 (reg!12924 (regex!7690 r!4142)))))))

(assert (=> b!4196541 (=> (not res!1722929) (not e!2604978))))

(declare-fun b!4196542 () Bool)

(declare-fun call!292456 () Bool)

(assert (=> b!4196542 (= e!2604972 call!292456)))

(declare-fun b!4196543 () Bool)

(declare-fun res!1722931 () Bool)

(assert (=> b!4196543 (=> res!1722931 e!2604975)))

(assert (=> b!4196543 (= res!1722931 (not ((_ is Concat!20516) (regex!7690 r!4142))))))

(assert (=> b!4196543 (= e!2604977 e!2604975)))

(declare-fun bm!292451 () Bool)

(assert (=> bm!292451 (= call!292456 (validRegex!5712 (ite c!715812 (regTwo!25703 (regex!7690 r!4142)) (regTwo!25702 (regex!7690 r!4142)))))))

(declare-fun b!4196544 () Bool)

(declare-fun e!2604973 () Bool)

(assert (=> b!4196544 (= e!2604973 call!292456)))

(declare-fun b!4196545 () Bool)

(declare-fun res!1722928 () Bool)

(assert (=> b!4196545 (=> (not res!1722928) (not e!2604973))))

(assert (=> b!4196545 (= res!1722928 call!292455)))

(assert (=> b!4196545 (= e!2604977 e!2604973)))

(declare-fun bm!292452 () Bool)

(assert (=> bm!292452 (= call!292455 call!292457)))

(assert (= (and d!1237598 (not res!1722930)) b!4196540))

(assert (= (and b!4196540 c!715811) b!4196541))

(assert (= (and b!4196540 (not c!715811)) b!4196537))

(assert (= (and b!4196541 res!1722929) b!4196539))

(assert (= (and b!4196537 c!715812) b!4196545))

(assert (= (and b!4196537 (not c!715812)) b!4196543))

(assert (= (and b!4196545 res!1722928) b!4196544))

(assert (= (and b!4196543 (not res!1722931)) b!4196538))

(assert (= (and b!4196538 res!1722927) b!4196542))

(assert (= (or b!4196544 b!4196542) bm!292451))

(assert (= (or b!4196545 b!4196538) bm!292452))

(assert (= (or b!4196539 bm!292452) bm!292450))

(declare-fun m!4785409 () Bool)

(assert (=> bm!292450 m!4785409))

(declare-fun m!4785411 () Bool)

(assert (=> b!4196541 m!4785411))

(declare-fun m!4785413 () Bool)

(assert (=> bm!292451 m!4785413))

(assert (=> b!4196448 d!1237598))

(declare-fun d!1237606 () Bool)

(declare-fun e!2604987 () Bool)

(assert (=> d!1237606 e!2604987))

(declare-fun res!1722940 () Bool)

(assert (=> d!1237606 (=> res!1722940 e!2604987)))

(declare-fun lt!1494953 () Bool)

(assert (=> d!1237606 (= res!1722940 (not lt!1494953))))

(declare-fun e!2604985 () Bool)

(assert (=> d!1237606 (= lt!1494953 e!2604985)))

(declare-fun res!1722941 () Bool)

(assert (=> d!1237606 (=> res!1722941 e!2604985)))

(assert (=> d!1237606 (= res!1722941 ((_ is Nil!46092) p!2959))))

(assert (=> d!1237606 (= (isPrefix!4547 p!2959 input!3342) lt!1494953)))

(declare-fun b!4196555 () Bool)

(declare-fun res!1722942 () Bool)

(declare-fun e!2604986 () Bool)

(assert (=> b!4196555 (=> (not res!1722942) (not e!2604986))))

(declare-fun head!8906 (List!46216) C!25380)

(assert (=> b!4196555 (= res!1722942 (= (head!8906 p!2959) (head!8906 input!3342)))))

(declare-fun b!4196556 () Bool)

(declare-fun tail!6753 (List!46216) List!46216)

(assert (=> b!4196556 (= e!2604986 (isPrefix!4547 (tail!6753 p!2959) (tail!6753 input!3342)))))

(declare-fun b!4196557 () Bool)

(assert (=> b!4196557 (= e!2604987 (>= (size!33879 input!3342) (size!33879 p!2959)))))

(declare-fun b!4196554 () Bool)

(assert (=> b!4196554 (= e!2604985 e!2604986)))

(declare-fun res!1722943 () Bool)

(assert (=> b!4196554 (=> (not res!1722943) (not e!2604986))))

(assert (=> b!4196554 (= res!1722943 (not ((_ is Nil!46092) input!3342)))))

(assert (= (and d!1237606 (not res!1722941)) b!4196554))

(assert (= (and b!4196554 res!1722943) b!4196555))

(assert (= (and b!4196555 res!1722942) b!4196556))

(assert (= (and d!1237606 (not res!1722940)) b!4196557))

(declare-fun m!4785415 () Bool)

(assert (=> b!4196555 m!4785415))

(declare-fun m!4785417 () Bool)

(assert (=> b!4196555 m!4785417))

(declare-fun m!4785419 () Bool)

(assert (=> b!4196556 m!4785419))

(declare-fun m!4785421 () Bool)

(assert (=> b!4196556 m!4785421))

(assert (=> b!4196556 m!4785419))

(assert (=> b!4196556 m!4785421))

(declare-fun m!4785423 () Bool)

(assert (=> b!4196556 m!4785423))

(assert (=> b!4196557 m!4785357))

(assert (=> b!4196557 m!4785303))

(assert (=> b!4196470 d!1237606))

(declare-fun d!1237608 () Bool)

(declare-fun e!2604990 () Bool)

(assert (=> d!1237608 e!2604990))

(declare-fun res!1722944 () Bool)

(assert (=> d!1237608 (=> res!1722944 e!2604990)))

(declare-fun lt!1494954 () Bool)

(assert (=> d!1237608 (= res!1722944 (not lt!1494954))))

(declare-fun e!2604988 () Bool)

(assert (=> d!1237608 (= lt!1494954 e!2604988)))

(declare-fun res!1722945 () Bool)

(assert (=> d!1237608 (=> res!1722945 e!2604988)))

(assert (=> d!1237608 (= res!1722945 ((_ is Nil!46092) pBis!107))))

(assert (=> d!1237608 (= (isPrefix!4547 pBis!107 input!3342) lt!1494954)))

(declare-fun b!4196559 () Bool)

(declare-fun res!1722946 () Bool)

(declare-fun e!2604989 () Bool)

(assert (=> b!4196559 (=> (not res!1722946) (not e!2604989))))

(assert (=> b!4196559 (= res!1722946 (= (head!8906 pBis!107) (head!8906 input!3342)))))

(declare-fun b!4196560 () Bool)

(assert (=> b!4196560 (= e!2604989 (isPrefix!4547 (tail!6753 pBis!107) (tail!6753 input!3342)))))

(declare-fun b!4196561 () Bool)

(assert (=> b!4196561 (= e!2604990 (>= (size!33879 input!3342) (size!33879 pBis!107)))))

(declare-fun b!4196558 () Bool)

(assert (=> b!4196558 (= e!2604988 e!2604989)))

(declare-fun res!1722947 () Bool)

(assert (=> b!4196558 (=> (not res!1722947) (not e!2604989))))

(assert (=> b!4196558 (= res!1722947 (not ((_ is Nil!46092) input!3342)))))

(assert (= (and d!1237608 (not res!1722945)) b!4196558))

(assert (= (and b!4196558 res!1722947) b!4196559))

(assert (= (and b!4196559 res!1722946) b!4196560))

(assert (= (and d!1237608 (not res!1722944)) b!4196561))

(declare-fun m!4785425 () Bool)

(assert (=> b!4196559 m!4785425))

(assert (=> b!4196559 m!4785417))

(declare-fun m!4785427 () Bool)

(assert (=> b!4196560 m!4785427))

(assert (=> b!4196560 m!4785421))

(assert (=> b!4196560 m!4785427))

(assert (=> b!4196560 m!4785421))

(declare-fun m!4785429 () Bool)

(assert (=> b!4196560 m!4785429))

(assert (=> b!4196561 m!4785357))

(assert (=> b!4196561 m!4785329))

(assert (=> b!4196459 d!1237608))

(declare-fun d!1237610 () Bool)

(declare-fun lt!1494957 () Int)

(assert (=> d!1237610 (>= lt!1494957 0)))

(declare-fun e!2604993 () Int)

(assert (=> d!1237610 (= lt!1494957 e!2604993)))

(declare-fun c!715815 () Bool)

(assert (=> d!1237610 (= c!715815 ((_ is Nil!46092) lt!1494924))))

(assert (=> d!1237610 (= (size!33879 lt!1494924) lt!1494957)))

(declare-fun b!4196566 () Bool)

(assert (=> b!4196566 (= e!2604993 0)))

(declare-fun b!4196567 () Bool)

(assert (=> b!4196567 (= e!2604993 (+ 1 (size!33879 (t!346527 lt!1494924))))))

(assert (= (and d!1237610 c!715815) b!4196566))

(assert (= (and d!1237610 (not c!715815)) b!4196567))

(declare-fun m!4785431 () Bool)

(assert (=> b!4196567 m!4785431))

(assert (=> b!4196460 d!1237610))

(declare-fun d!1237612 () Bool)

(declare-fun lt!1494958 () Int)

(assert (=> d!1237612 (>= lt!1494958 0)))

(declare-fun e!2604994 () Int)

(assert (=> d!1237612 (= lt!1494958 e!2604994)))

(declare-fun c!715816 () Bool)

(assert (=> d!1237612 (= c!715816 ((_ is Nil!46092) pBis!107))))

(assert (=> d!1237612 (= (size!33879 pBis!107) lt!1494958)))

(declare-fun b!4196568 () Bool)

(assert (=> b!4196568 (= e!2604994 0)))

(declare-fun b!4196569 () Bool)

(assert (=> b!4196569 (= e!2604994 (+ 1 (size!33879 (t!346527 pBis!107))))))

(assert (= (and d!1237612 c!715816) b!4196568))

(assert (= (and d!1237612 (not c!715816)) b!4196569))

(declare-fun m!4785433 () Bool)

(assert (=> b!4196569 m!4785433))

(assert (=> b!4196449 d!1237612))

(declare-fun d!1237614 () Bool)

(declare-fun res!1722952 () Bool)

(declare-fun e!2604997 () Bool)

(assert (=> d!1237614 (=> (not res!1722952) (not e!2604997))))

(assert (=> d!1237614 (= res!1722952 (validRegex!5712 (regex!7690 r!4142)))))

(assert (=> d!1237614 (= (ruleValid!3408 thiss!25986 r!4142) e!2604997)))

(declare-fun b!4196574 () Bool)

(declare-fun res!1722953 () Bool)

(assert (=> b!4196574 (=> (not res!1722953) (not e!2604997))))

(assert (=> b!4196574 (= res!1722953 (not (nullable!4429 (regex!7690 r!4142))))))

(declare-fun b!4196575 () Bool)

(assert (=> b!4196575 (= e!2604997 (not (= (tag!8554 r!4142) (String!53467 ""))))))

(assert (= (and d!1237614 res!1722952) b!4196574))

(assert (= (and b!4196574 res!1722953) b!4196575))

(assert (=> d!1237614 m!4785365))

(declare-fun m!4785435 () Bool)

(assert (=> b!4196574 m!4785435))

(assert (=> b!4196450 d!1237614))

(declare-fun b!4196622 () Bool)

(declare-fun e!2605020 () Bool)

(assert (=> b!4196622 (= e!2605020 (not (= (head!8906 p!2959) (c!715803 (regex!7690 r!4142)))))))

(declare-fun d!1237616 () Bool)

(declare-fun e!2605018 () Bool)

(assert (=> d!1237616 e!2605018))

(declare-fun c!715826 () Bool)

(assert (=> d!1237616 (= c!715826 ((_ is EmptyExpr!12595) (regex!7690 r!4142)))))

(declare-fun lt!1494971 () Bool)

(declare-fun e!2605019 () Bool)

(assert (=> d!1237616 (= lt!1494971 e!2605019)))

(declare-fun c!715825 () Bool)

(declare-fun isEmpty!27299 (List!46216) Bool)

(assert (=> d!1237616 (= c!715825 (isEmpty!27299 p!2959))))

(assert (=> d!1237616 (validRegex!5712 (regex!7690 r!4142))))

(assert (=> d!1237616 (= (matchR!6334 (regex!7690 r!4142) p!2959) lt!1494971)))

(declare-fun b!4196623 () Bool)

(assert (=> b!4196623 (= e!2605019 (nullable!4429 (regex!7690 r!4142)))))

(declare-fun b!4196624 () Bool)

(declare-fun e!2605021 () Bool)

(declare-fun e!2605022 () Bool)

(assert (=> b!4196624 (= e!2605021 e!2605022)))

(declare-fun res!1722989 () Bool)

(assert (=> b!4196624 (=> (not res!1722989) (not e!2605022))))

(assert (=> b!4196624 (= res!1722989 (not lt!1494971))))

(declare-fun b!4196625 () Bool)

(declare-fun res!1722991 () Bool)

(declare-fun e!2605024 () Bool)

(assert (=> b!4196625 (=> (not res!1722991) (not e!2605024))))

(declare-fun call!292462 () Bool)

(assert (=> b!4196625 (= res!1722991 (not call!292462))))

(declare-fun b!4196626 () Bool)

(declare-fun res!1722984 () Bool)

(assert (=> b!4196626 (=> res!1722984 e!2605020)))

(assert (=> b!4196626 (= res!1722984 (not (isEmpty!27299 (tail!6753 p!2959))))))

(declare-fun b!4196627 () Bool)

(assert (=> b!4196627 (= e!2605022 e!2605020)))

(declare-fun res!1722986 () Bool)

(assert (=> b!4196627 (=> res!1722986 e!2605020)))

(assert (=> b!4196627 (= res!1722986 call!292462)))

(declare-fun bm!292457 () Bool)

(assert (=> bm!292457 (= call!292462 (isEmpty!27299 p!2959))))

(declare-fun b!4196628 () Bool)

(declare-fun derivativeStep!3818 (Regex!12595 C!25380) Regex!12595)

(assert (=> b!4196628 (= e!2605019 (matchR!6334 (derivativeStep!3818 (regex!7690 r!4142) (head!8906 p!2959)) (tail!6753 p!2959)))))

(declare-fun b!4196629 () Bool)

(declare-fun e!2605023 () Bool)

(assert (=> b!4196629 (= e!2605023 (not lt!1494971))))

(declare-fun b!4196630 () Bool)

(assert (=> b!4196630 (= e!2605024 (= (head!8906 p!2959) (c!715803 (regex!7690 r!4142))))))

(declare-fun b!4196631 () Bool)

(declare-fun res!1722990 () Bool)

(assert (=> b!4196631 (=> (not res!1722990) (not e!2605024))))

(assert (=> b!4196631 (= res!1722990 (isEmpty!27299 (tail!6753 p!2959)))))

(declare-fun b!4196632 () Bool)

(assert (=> b!4196632 (= e!2605018 (= lt!1494971 call!292462))))

(declare-fun b!4196633 () Bool)

(assert (=> b!4196633 (= e!2605018 e!2605023)))

(declare-fun c!715827 () Bool)

(assert (=> b!4196633 (= c!715827 ((_ is EmptyLang!12595) (regex!7690 r!4142)))))

(declare-fun b!4196634 () Bool)

(declare-fun res!1722988 () Bool)

(assert (=> b!4196634 (=> res!1722988 e!2605021)))

(assert (=> b!4196634 (= res!1722988 (not ((_ is ElementMatch!12595) (regex!7690 r!4142))))))

(assert (=> b!4196634 (= e!2605023 e!2605021)))

(declare-fun b!4196635 () Bool)

(declare-fun res!1722987 () Bool)

(assert (=> b!4196635 (=> res!1722987 e!2605021)))

(assert (=> b!4196635 (= res!1722987 e!2605024)))

(declare-fun res!1722985 () Bool)

(assert (=> b!4196635 (=> (not res!1722985) (not e!2605024))))

(assert (=> b!4196635 (= res!1722985 lt!1494971)))

(assert (= (and d!1237616 c!715825) b!4196623))

(assert (= (and d!1237616 (not c!715825)) b!4196628))

(assert (= (and d!1237616 c!715826) b!4196632))

(assert (= (and d!1237616 (not c!715826)) b!4196633))

(assert (= (and b!4196633 c!715827) b!4196629))

(assert (= (and b!4196633 (not c!715827)) b!4196634))

(assert (= (and b!4196634 (not res!1722988)) b!4196635))

(assert (= (and b!4196635 res!1722985) b!4196625))

(assert (= (and b!4196625 res!1722991) b!4196631))

(assert (= (and b!4196631 res!1722990) b!4196630))

(assert (= (and b!4196635 (not res!1722987)) b!4196624))

(assert (= (and b!4196624 res!1722989) b!4196627))

(assert (= (and b!4196627 (not res!1722986)) b!4196626))

(assert (= (and b!4196626 (not res!1722984)) b!4196622))

(assert (= (or b!4196632 b!4196625 b!4196627) bm!292457))

(assert (=> b!4196622 m!4785415))

(assert (=> b!4196626 m!4785419))

(assert (=> b!4196626 m!4785419))

(declare-fun m!4785437 () Bool)

(assert (=> b!4196626 m!4785437))

(assert (=> b!4196631 m!4785419))

(assert (=> b!4196631 m!4785419))

(assert (=> b!4196631 m!4785437))

(assert (=> b!4196630 m!4785415))

(assert (=> b!4196628 m!4785415))

(assert (=> b!4196628 m!4785415))

(declare-fun m!4785439 () Bool)

(assert (=> b!4196628 m!4785439))

(assert (=> b!4196628 m!4785419))

(assert (=> b!4196628 m!4785439))

(assert (=> b!4196628 m!4785419))

(declare-fun m!4785441 () Bool)

(assert (=> b!4196628 m!4785441))

(declare-fun m!4785443 () Bool)

(assert (=> bm!292457 m!4785443))

(assert (=> d!1237616 m!4785443))

(assert (=> d!1237616 m!4785365))

(assert (=> b!4196623 m!4785435))

(assert (=> b!4196471 d!1237616))

(declare-fun d!1237618 () Bool)

(declare-fun lt!1494985 () List!46216)

(assert (=> d!1237618 (= (++!11762 p!2959 lt!1494985) input!3342)))

(declare-fun e!2605036 () List!46216)

(assert (=> d!1237618 (= lt!1494985 e!2605036)))

(declare-fun c!715837 () Bool)

(assert (=> d!1237618 (= c!715837 ((_ is Cons!46092) p!2959))))

(assert (=> d!1237618 (>= (size!33879 input!3342) (size!33879 p!2959))))

(assert (=> d!1237618 (= (getSuffix!2840 input!3342 p!2959) lt!1494985)))

(declare-fun b!4196661 () Bool)

(assert (=> b!4196661 (= e!2605036 (getSuffix!2840 (tail!6753 input!3342) (t!346527 p!2959)))))

(declare-fun b!4196662 () Bool)

(assert (=> b!4196662 (= e!2605036 input!3342)))

(assert (= (and d!1237618 c!715837) b!4196661))

(assert (= (and d!1237618 (not c!715837)) b!4196662))

(declare-fun m!4785481 () Bool)

(assert (=> d!1237618 m!4785481))

(assert (=> d!1237618 m!4785357))

(assert (=> d!1237618 m!4785303))

(assert (=> b!4196661 m!4785421))

(assert (=> b!4196661 m!4785421))

(declare-fun m!4785483 () Bool)

(assert (=> b!4196661 m!4785483))

(assert (=> b!4196456 d!1237618))

(declare-fun d!1237628 () Bool)

(declare-fun e!2605042 () Bool)

(assert (=> d!1237628 e!2605042))

(declare-fun res!1723003 () Bool)

(assert (=> d!1237628 (=> res!1723003 e!2605042)))

(declare-fun lt!1494987 () Bool)

(assert (=> d!1237628 (= res!1723003 (not lt!1494987))))

(declare-fun e!2605040 () Bool)

(assert (=> d!1237628 (= lt!1494987 e!2605040)))

(declare-fun res!1723004 () Bool)

(assert (=> d!1237628 (=> res!1723004 e!2605040)))

(assert (=> d!1237628 (= res!1723004 ((_ is Nil!46092) input!3342))))

(assert (=> d!1237628 (= (isPrefix!4547 input!3342 input!3342) lt!1494987)))

(declare-fun b!4196668 () Bool)

(declare-fun res!1723005 () Bool)

(declare-fun e!2605041 () Bool)

(assert (=> b!4196668 (=> (not res!1723005) (not e!2605041))))

(assert (=> b!4196668 (= res!1723005 (= (head!8906 input!3342) (head!8906 input!3342)))))

(declare-fun b!4196669 () Bool)

(assert (=> b!4196669 (= e!2605041 (isPrefix!4547 (tail!6753 input!3342) (tail!6753 input!3342)))))

(declare-fun b!4196670 () Bool)

(assert (=> b!4196670 (= e!2605042 (>= (size!33879 input!3342) (size!33879 input!3342)))))

(declare-fun b!4196667 () Bool)

(assert (=> b!4196667 (= e!2605040 e!2605041)))

(declare-fun res!1723006 () Bool)

(assert (=> b!4196667 (=> (not res!1723006) (not e!2605041))))

(assert (=> b!4196667 (= res!1723006 (not ((_ is Nil!46092) input!3342)))))

(assert (= (and d!1237628 (not res!1723004)) b!4196667))

(assert (= (and b!4196667 res!1723006) b!4196668))

(assert (= (and b!4196668 res!1723005) b!4196669))

(assert (= (and d!1237628 (not res!1723003)) b!4196670))

(assert (=> b!4196668 m!4785417))

(assert (=> b!4196668 m!4785417))

(assert (=> b!4196669 m!4785421))

(assert (=> b!4196669 m!4785421))

(assert (=> b!4196669 m!4785421))

(assert (=> b!4196669 m!4785421))

(declare-fun m!4785485 () Bool)

(assert (=> b!4196669 m!4785485))

(assert (=> b!4196670 m!4785357))

(assert (=> b!4196670 m!4785357))

(assert (=> b!4196456 d!1237628))

(declare-fun d!1237630 () Bool)

(declare-fun dynLambda!19869 (Int BalanceConc!27396) TokenValue!7920)

(assert (=> d!1237630 (= (apply!10655 (transformation!7690 r!4142) lt!1494930) (dynLambda!19869 (toValue!10390 (transformation!7690 r!4142)) lt!1494930))))

(declare-fun b_lambda!123507 () Bool)

(assert (=> (not b_lambda!123507) (not d!1237630)))

(declare-fun t!346530 () Bool)

(declare-fun tb!251523 () Bool)

(assert (=> (and b!4196445 (= (toValue!10390 (transformation!7690 r!4142)) (toValue!10390 (transformation!7690 r!4142))) t!346530) tb!251523))

(declare-fun result!306552 () Bool)

(declare-fun inv!21 (TokenValue!7920) Bool)

(assert (=> tb!251523 (= result!306552 (inv!21 (dynLambda!19869 (toValue!10390 (transformation!7690 r!4142)) lt!1494930)))))

(declare-fun m!4785491 () Bool)

(assert (=> tb!251523 m!4785491))

(assert (=> d!1237630 t!346530))

(declare-fun b_and!329161 () Bool)

(assert (= b_and!329149 (and (=> t!346530 result!306552) b_and!329161)))

(declare-fun t!346534 () Bool)

(declare-fun tb!251527 () Bool)

(assert (=> (and b!4196452 (= (toValue!10390 (transformation!7690 (h!51513 rules!3843))) (toValue!10390 (transformation!7690 r!4142))) t!346534) tb!251527))

(declare-fun result!306560 () Bool)

(assert (= result!306560 result!306552))

(assert (=> d!1237630 t!346534))

(declare-fun b_and!329165 () Bool)

(assert (= b_and!329153 (and (=> t!346534 result!306560) b_and!329165)))

(declare-fun t!346540 () Bool)

(declare-fun tb!251533 () Bool)

(assert (=> (and b!4196476 (= (toValue!10390 (transformation!7690 rBis!167)) (toValue!10390 (transformation!7690 r!4142))) t!346540) tb!251533))

(declare-fun result!306566 () Bool)

(assert (= result!306566 result!306552))

(assert (=> d!1237630 t!346540))

(declare-fun b_and!329171 () Bool)

(assert (= b_and!329157 (and (=> t!346540 result!306566) b_and!329171)))

(declare-fun m!4785497 () Bool)

(assert (=> d!1237630 m!4785497))

(assert (=> b!4196456 d!1237630))

(declare-fun d!1237638 () Bool)

(declare-fun fromListB!2621 (List!46216) BalanceConc!27396)

(assert (=> d!1237638 (= (seqFromList!5715 p!2959) (fromListB!2621 p!2959))))

(declare-fun bs!596837 () Bool)

(assert (= bs!596837 d!1237638))

(declare-fun m!4785499 () Bool)

(assert (=> bs!596837 m!4785499))

(assert (=> b!4196456 d!1237638))

(declare-fun d!1237640 () Bool)

(assert (=> d!1237640 (isPrefix!4547 input!3342 input!3342)))

(declare-fun lt!1494995 () Unit!65190)

(declare-fun choose!25728 (List!46216 List!46216) Unit!65190)

(assert (=> d!1237640 (= lt!1494995 (choose!25728 input!3342 input!3342))))

(assert (=> d!1237640 (= (lemmaIsPrefixRefl!2976 input!3342 input!3342) lt!1494995)))

(declare-fun bs!596838 () Bool)

(assert (= bs!596838 d!1237640))

(assert (=> bs!596838 m!4785297))

(declare-fun m!4785501 () Bool)

(assert (=> bs!596838 m!4785501))

(assert (=> b!4196456 d!1237640))

(declare-fun b!4196693 () Bool)

(declare-fun res!1723023 () Bool)

(declare-fun e!2605059 () Bool)

(assert (=> b!4196693 (=> (not res!1723023) (not e!2605059))))

(declare-fun lt!1495007 () Option!9884)

(assert (=> b!4196693 (= res!1723023 (= (rule!10784 (_1!25075 (get!14994 lt!1495007))) r!4142))))

(declare-fun b!4196694 () Bool)

(declare-fun e!2605060 () Bool)

(declare-datatypes ((tuple2!43886 0))(
  ( (tuple2!43887 (_1!25077 List!46216) (_2!25077 List!46216)) )
))
(declare-fun findLongestMatchInner!1619 (Regex!12595 List!46216 Int List!46216 List!46216 Int) tuple2!43886)

(assert (=> b!4196694 (= e!2605060 (matchR!6334 (regex!7690 r!4142) (_1!25077 (findLongestMatchInner!1619 (regex!7690 r!4142) Nil!46092 (size!33879 Nil!46092) input!3342 input!3342 (size!33879 input!3342)))))))

(declare-fun b!4196695 () Bool)

(assert (=> b!4196695 (= e!2605059 (= (size!33880 (_1!25075 (get!14994 lt!1495007))) (size!33879 (originalCharacters!8078 (_1!25075 (get!14994 lt!1495007))))))))

(declare-fun b!4196696 () Bool)

(declare-fun e!2605057 () Option!9884)

(assert (=> b!4196696 (= e!2605057 None!9883)))

(declare-fun b!4196697 () Bool)

(declare-fun e!2605058 () Bool)

(assert (=> b!4196697 (= e!2605058 e!2605059)))

(declare-fun res!1723026 () Bool)

(assert (=> b!4196697 (=> (not res!1723026) (not e!2605059))))

(assert (=> b!4196697 (= res!1723026 (matchR!6334 (regex!7690 r!4142) (list!16662 (charsOf!5125 (_1!25075 (get!14994 lt!1495007))))))))

(declare-fun b!4196698 () Bool)

(declare-fun res!1723024 () Bool)

(assert (=> b!4196698 (=> (not res!1723024) (not e!2605059))))

(assert (=> b!4196698 (= res!1723024 (= (++!11762 (list!16662 (charsOf!5125 (_1!25075 (get!14994 lt!1495007)))) (_2!25075 (get!14994 lt!1495007))) input!3342))))

(declare-fun b!4196699 () Bool)

(declare-fun res!1723025 () Bool)

(assert (=> b!4196699 (=> (not res!1723025) (not e!2605059))))

(assert (=> b!4196699 (= res!1723025 (< (size!33879 (_2!25075 (get!14994 lt!1495007))) (size!33879 input!3342)))))

(declare-fun b!4196700 () Bool)

(declare-fun res!1723027 () Bool)

(assert (=> b!4196700 (=> (not res!1723027) (not e!2605059))))

(assert (=> b!4196700 (= res!1723027 (= (value!239697 (_1!25075 (get!14994 lt!1495007))) (apply!10655 (transformation!7690 (rule!10784 (_1!25075 (get!14994 lt!1495007)))) (seqFromList!5715 (originalCharacters!8078 (_1!25075 (get!14994 lt!1495007)))))))))

(declare-fun b!4196701 () Bool)

(declare-fun lt!1495008 () tuple2!43886)

(assert (=> b!4196701 (= e!2605057 (Some!9883 (tuple2!43883 (Token!14095 (apply!10655 (transformation!7690 r!4142) (seqFromList!5715 (_1!25077 lt!1495008))) r!4142 (size!33881 (seqFromList!5715 (_1!25077 lt!1495008))) (_1!25077 lt!1495008)) (_2!25077 lt!1495008))))))

(declare-fun lt!1495006 () Unit!65190)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1592 (Regex!12595 List!46216) Unit!65190)

(assert (=> b!4196701 (= lt!1495006 (longestMatchIsAcceptedByMatchOrIsEmpty!1592 (regex!7690 r!4142) input!3342))))

(declare-fun res!1723022 () Bool)

(assert (=> b!4196701 (= res!1723022 (isEmpty!27299 (_1!25077 (findLongestMatchInner!1619 (regex!7690 r!4142) Nil!46092 (size!33879 Nil!46092) input!3342 input!3342 (size!33879 input!3342)))))))

(assert (=> b!4196701 (=> res!1723022 e!2605060)))

(assert (=> b!4196701 e!2605060))

(declare-fun lt!1495010 () Unit!65190)

(assert (=> b!4196701 (= lt!1495010 lt!1495006)))

(declare-fun lt!1495009 () Unit!65190)

(assert (=> b!4196701 (= lt!1495009 (lemmaSemiInverse!2456 (transformation!7690 r!4142) (seqFromList!5715 (_1!25077 lt!1495008))))))

(declare-fun d!1237642 () Bool)

(assert (=> d!1237642 e!2605058))

(declare-fun res!1723021 () Bool)

(assert (=> d!1237642 (=> res!1723021 e!2605058)))

(assert (=> d!1237642 (= res!1723021 (isEmpty!27297 lt!1495007))))

(assert (=> d!1237642 (= lt!1495007 e!2605057)))

(declare-fun c!715841 () Bool)

(assert (=> d!1237642 (= c!715841 (isEmpty!27299 (_1!25077 lt!1495008)))))

(declare-fun findLongestMatch!1532 (Regex!12595 List!46216) tuple2!43886)

(assert (=> d!1237642 (= lt!1495008 (findLongestMatch!1532 (regex!7690 r!4142) input!3342))))

(assert (=> d!1237642 (ruleValid!3408 thiss!25986 r!4142)))

(assert (=> d!1237642 (= (maxPrefixOneRule!3292 thiss!25986 r!4142 input!3342) lt!1495007)))

(assert (= (and d!1237642 c!715841) b!4196696))

(assert (= (and d!1237642 (not c!715841)) b!4196701))

(assert (= (and b!4196701 (not res!1723022)) b!4196694))

(assert (= (and d!1237642 (not res!1723021)) b!4196697))

(assert (= (and b!4196697 res!1723026) b!4196698))

(assert (= (and b!4196698 res!1723024) b!4196699))

(assert (= (and b!4196699 res!1723025) b!4196693))

(assert (= (and b!4196693 res!1723023) b!4196700))

(assert (= (and b!4196700 res!1723027) b!4196695))

(declare-fun m!4785503 () Bool)

(assert (=> b!4196701 m!4785503))

(declare-fun m!4785505 () Bool)

(assert (=> b!4196701 m!4785505))

(declare-fun m!4785507 () Bool)

(assert (=> b!4196701 m!4785507))

(assert (=> b!4196701 m!4785503))

(declare-fun m!4785509 () Bool)

(assert (=> b!4196701 m!4785509))

(assert (=> b!4196701 m!4785503))

(declare-fun m!4785511 () Bool)

(assert (=> b!4196701 m!4785511))

(assert (=> b!4196701 m!4785357))

(declare-fun m!4785513 () Bool)

(assert (=> b!4196701 m!4785513))

(assert (=> b!4196701 m!4785357))

(assert (=> b!4196701 m!4785511))

(declare-fun m!4785515 () Bool)

(assert (=> b!4196701 m!4785515))

(assert (=> b!4196701 m!4785503))

(declare-fun m!4785517 () Bool)

(assert (=> b!4196701 m!4785517))

(declare-fun m!4785519 () Bool)

(assert (=> b!4196698 m!4785519))

(declare-fun m!4785521 () Bool)

(assert (=> b!4196698 m!4785521))

(assert (=> b!4196698 m!4785521))

(declare-fun m!4785523 () Bool)

(assert (=> b!4196698 m!4785523))

(assert (=> b!4196698 m!4785523))

(declare-fun m!4785525 () Bool)

(assert (=> b!4196698 m!4785525))

(declare-fun m!4785527 () Bool)

(assert (=> d!1237642 m!4785527))

(declare-fun m!4785529 () Bool)

(assert (=> d!1237642 m!4785529))

(declare-fun m!4785531 () Bool)

(assert (=> d!1237642 m!4785531))

(assert (=> d!1237642 m!4785349))

(assert (=> b!4196695 m!4785519))

(declare-fun m!4785533 () Bool)

(assert (=> b!4196695 m!4785533))

(assert (=> b!4196700 m!4785519))

(declare-fun m!4785535 () Bool)

(assert (=> b!4196700 m!4785535))

(assert (=> b!4196700 m!4785535))

(declare-fun m!4785537 () Bool)

(assert (=> b!4196700 m!4785537))

(assert (=> b!4196694 m!4785511))

(assert (=> b!4196694 m!4785357))

(assert (=> b!4196694 m!4785511))

(assert (=> b!4196694 m!4785357))

(assert (=> b!4196694 m!4785513))

(declare-fun m!4785539 () Bool)

(assert (=> b!4196694 m!4785539))

(assert (=> b!4196693 m!4785519))

(assert (=> b!4196699 m!4785519))

(declare-fun m!4785541 () Bool)

(assert (=> b!4196699 m!4785541))

(assert (=> b!4196699 m!4785357))

(assert (=> b!4196697 m!4785519))

(assert (=> b!4196697 m!4785521))

(assert (=> b!4196697 m!4785521))

(assert (=> b!4196697 m!4785523))

(assert (=> b!4196697 m!4785523))

(declare-fun m!4785543 () Bool)

(assert (=> b!4196697 m!4785543))

(assert (=> b!4196456 d!1237642))

(declare-fun b!4196799 () Bool)

(declare-fun e!2605111 () Bool)

(assert (=> b!4196799 (= e!2605111 true)))

(declare-fun d!1237644 () Bool)

(assert (=> d!1237644 e!2605111))

(assert (= d!1237644 b!4196799))

(declare-fun order!24425 () Int)

(declare-fun lambda!129553 () Int)

(declare-fun order!24427 () Int)

(declare-fun dynLambda!19870 (Int Int) Int)

(declare-fun dynLambda!19871 (Int Int) Int)

(assert (=> b!4196799 (< (dynLambda!19870 order!24425 (toValue!10390 (transformation!7690 r!4142))) (dynLambda!19871 order!24427 lambda!129553))))

(declare-fun order!24429 () Int)

(declare-fun dynLambda!19872 (Int Int) Int)

(assert (=> b!4196799 (< (dynLambda!19872 order!24429 (toChars!10249 (transformation!7690 r!4142))) (dynLambda!19871 order!24427 lambda!129553))))

(declare-fun dynLambda!19873 (Int TokenValue!7920) BalanceConc!27396)

(assert (=> d!1237644 (= (list!16662 (dynLambda!19873 (toChars!10249 (transformation!7690 r!4142)) (dynLambda!19869 (toValue!10390 (transformation!7690 r!4142)) lt!1494930))) (list!16662 lt!1494930))))

(declare-fun lt!1495037 () Unit!65190)

(declare-fun ForallOf!1072 (Int BalanceConc!27396) Unit!65190)

(assert (=> d!1237644 (= lt!1495037 (ForallOf!1072 lambda!129553 lt!1494930))))

(assert (=> d!1237644 (= (lemmaSemiInverse!2456 (transformation!7690 r!4142) lt!1494930) lt!1495037)))

(declare-fun b_lambda!123515 () Bool)

(assert (=> (not b_lambda!123515) (not d!1237644)))

(declare-fun t!346548 () Bool)

(declare-fun tb!251541 () Bool)

(assert (=> (and b!4196445 (= (toChars!10249 (transformation!7690 r!4142)) (toChars!10249 (transformation!7690 r!4142))) t!346548) tb!251541))

(declare-fun e!2605116 () Bool)

(declare-fun tp!1282012 () Bool)

(declare-fun b!4196808 () Bool)

(declare-fun inv!60654 (Conc!13901) Bool)

(assert (=> b!4196808 (= e!2605116 (and (inv!60654 (c!715802 (dynLambda!19873 (toChars!10249 (transformation!7690 r!4142)) (dynLambda!19869 (toValue!10390 (transformation!7690 r!4142)) lt!1494930)))) tp!1282012))))

(declare-fun result!306576 () Bool)

(declare-fun inv!60655 (BalanceConc!27396) Bool)

(assert (=> tb!251541 (= result!306576 (and (inv!60655 (dynLambda!19873 (toChars!10249 (transformation!7690 r!4142)) (dynLambda!19869 (toValue!10390 (transformation!7690 r!4142)) lt!1494930))) e!2605116))))

(assert (= tb!251541 b!4196808))

(declare-fun m!4785627 () Bool)

(assert (=> b!4196808 m!4785627))

(declare-fun m!4785629 () Bool)

(assert (=> tb!251541 m!4785629))

(assert (=> d!1237644 t!346548))

(declare-fun b_and!329185 () Bool)

(assert (= b_and!329151 (and (=> t!346548 result!306576) b_and!329185)))

(declare-fun t!346550 () Bool)

(declare-fun tb!251543 () Bool)

(assert (=> (and b!4196452 (= (toChars!10249 (transformation!7690 (h!51513 rules!3843))) (toChars!10249 (transformation!7690 r!4142))) t!346550) tb!251543))

(declare-fun result!306580 () Bool)

(assert (= result!306580 result!306576))

(assert (=> d!1237644 t!346550))

(declare-fun b_and!329187 () Bool)

(assert (= b_and!329155 (and (=> t!346550 result!306580) b_and!329187)))

(declare-fun tb!251545 () Bool)

(declare-fun t!346552 () Bool)

(assert (=> (and b!4196476 (= (toChars!10249 (transformation!7690 rBis!167)) (toChars!10249 (transformation!7690 r!4142))) t!346552) tb!251545))

(declare-fun result!306582 () Bool)

(assert (= result!306582 result!306576))

(assert (=> d!1237644 t!346552))

(declare-fun b_and!329189 () Bool)

(assert (= b_and!329159 (and (=> t!346552 result!306582) b_and!329189)))

(declare-fun b_lambda!123517 () Bool)

(assert (=> (not b_lambda!123517) (not d!1237644)))

(assert (=> d!1237644 t!346530))

(declare-fun b_and!329191 () Bool)

(assert (= b_and!329161 (and (=> t!346530 result!306552) b_and!329191)))

(assert (=> d!1237644 t!346534))

(declare-fun b_and!329193 () Bool)

(assert (= b_and!329165 (and (=> t!346534 result!306560) b_and!329193)))

(assert (=> d!1237644 t!346540))

(declare-fun b_and!329195 () Bool)

(assert (= b_and!329171 (and (=> t!346540 result!306566) b_and!329195)))

(declare-fun m!4785631 () Bool)

(assert (=> d!1237644 m!4785631))

(declare-fun m!4785633 () Bool)

(assert (=> d!1237644 m!4785633))

(declare-fun m!4785635 () Bool)

(assert (=> d!1237644 m!4785635))

(declare-fun m!4785637 () Bool)

(assert (=> d!1237644 m!4785637))

(assert (=> d!1237644 m!4785497))

(assert (=> d!1237644 m!4785635))

(assert (=> d!1237644 m!4785497))

(assert (=> b!4196456 d!1237644))

(declare-fun d!1237668 () Bool)

(declare-fun lt!1495041 () Int)

(assert (=> d!1237668 (>= lt!1495041 0)))

(declare-fun e!2605119 () Int)

(assert (=> d!1237668 (= lt!1495041 e!2605119)))

(declare-fun c!715860 () Bool)

(assert (=> d!1237668 (= c!715860 ((_ is Nil!46092) p!2959))))

(assert (=> d!1237668 (= (size!33879 p!2959) lt!1495041)))

(declare-fun b!4196813 () Bool)

(assert (=> b!4196813 (= e!2605119 0)))

(declare-fun b!4196814 () Bool)

(assert (=> b!4196814 (= e!2605119 (+ 1 (size!33879 (t!346527 p!2959))))))

(assert (= (and d!1237668 c!715860) b!4196813))

(assert (= (and d!1237668 (not c!715860)) b!4196814))

(declare-fun m!4785651 () Bool)

(assert (=> b!4196814 m!4785651))

(assert (=> b!4196456 d!1237668))

(declare-fun d!1237672 () Bool)

(declare-fun lt!1495046 () Int)

(assert (=> d!1237672 (= lt!1495046 (size!33879 (list!16662 lt!1494922)))))

(declare-fun size!33883 (Conc!13901) Int)

(assert (=> d!1237672 (= lt!1495046 (size!33883 (c!715802 lt!1494922)))))

(assert (=> d!1237672 (= (size!33881 lt!1494922) lt!1495046)))

(declare-fun bs!596840 () Bool)

(assert (= bs!596840 d!1237672))

(assert (=> bs!596840 m!4785317))

(assert (=> bs!596840 m!4785317))

(declare-fun m!4785653 () Bool)

(assert (=> bs!596840 m!4785653))

(declare-fun m!4785655 () Bool)

(assert (=> bs!596840 m!4785655))

(assert (=> b!4196467 d!1237672))

(declare-fun d!1237674 () Bool)

(assert (=> d!1237674 (= (inv!60649 (tag!8554 rBis!167)) (= (mod (str.len (value!239696 (tag!8554 rBis!167))) 2) 0))))

(assert (=> b!4196468 d!1237674))

(declare-fun d!1237678 () Bool)

(declare-fun res!1723094 () Bool)

(declare-fun e!2605126 () Bool)

(assert (=> d!1237678 (=> (not res!1723094) (not e!2605126))))

(declare-fun semiInverseModEq!3338 (Int Int) Bool)

(assert (=> d!1237678 (= res!1723094 (semiInverseModEq!3338 (toChars!10249 (transformation!7690 rBis!167)) (toValue!10390 (transformation!7690 rBis!167))))))

(assert (=> d!1237678 (= (inv!60651 (transformation!7690 rBis!167)) e!2605126)))

(declare-fun b!4196826 () Bool)

(declare-fun equivClasses!3237 (Int Int) Bool)

(assert (=> b!4196826 (= e!2605126 (equivClasses!3237 (toChars!10249 (transformation!7690 rBis!167)) (toValue!10390 (transformation!7690 rBis!167))))))

(assert (= (and d!1237678 res!1723094) b!4196826))

(declare-fun m!4785699 () Bool)

(assert (=> d!1237678 m!4785699))

(declare-fun m!4785701 () Bool)

(assert (=> b!4196826 m!4785701))

(assert (=> b!4196468 d!1237678))

(declare-fun d!1237682 () Bool)

(assert (=> d!1237682 (= (isEmpty!27297 lt!1494933) (not ((_ is Some!9883) lt!1494933)))))

(assert (=> b!4196457 d!1237682))

(declare-fun d!1237684 () Bool)

(assert (=> d!1237684 (ruleValid!3408 thiss!25986 rBis!167)))

(declare-fun lt!1495059 () Unit!65190)

(declare-fun choose!25732 (LexerInterface!7283 Rule!15180 List!46217) Unit!65190)

(assert (=> d!1237684 (= lt!1495059 (choose!25732 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1237684 (contains!9501 rules!3843 rBis!167)))

(assert (=> d!1237684 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2414 thiss!25986 rBis!167 rules!3843) lt!1495059)))

(declare-fun bs!596843 () Bool)

(assert (= bs!596843 d!1237684))

(assert (=> bs!596843 m!4785363))

(declare-fun m!4785707 () Bool)

(assert (=> bs!596843 m!4785707))

(assert (=> bs!596843 m!4785287))

(assert (=> b!4196457 d!1237684))

(declare-fun b!4196829 () Bool)

(declare-fun res!1723097 () Bool)

(declare-fun e!2605130 () Bool)

(assert (=> b!4196829 (=> (not res!1723097) (not e!2605130))))

(declare-fun lt!1495061 () Option!9884)

(assert (=> b!4196829 (= res!1723097 (= (rule!10784 (_1!25075 (get!14994 lt!1495061))) rBis!167))))

(declare-fun b!4196830 () Bool)

(declare-fun e!2605131 () Bool)

(assert (=> b!4196830 (= e!2605131 (matchR!6334 (regex!7690 rBis!167) (_1!25077 (findLongestMatchInner!1619 (regex!7690 rBis!167) Nil!46092 (size!33879 Nil!46092) input!3342 input!3342 (size!33879 input!3342)))))))

(declare-fun b!4196831 () Bool)

(assert (=> b!4196831 (= e!2605130 (= (size!33880 (_1!25075 (get!14994 lt!1495061))) (size!33879 (originalCharacters!8078 (_1!25075 (get!14994 lt!1495061))))))))

(declare-fun b!4196832 () Bool)

(declare-fun e!2605128 () Option!9884)

(assert (=> b!4196832 (= e!2605128 None!9883)))

(declare-fun b!4196833 () Bool)

(declare-fun e!2605129 () Bool)

(assert (=> b!4196833 (= e!2605129 e!2605130)))

(declare-fun res!1723100 () Bool)

(assert (=> b!4196833 (=> (not res!1723100) (not e!2605130))))

(assert (=> b!4196833 (= res!1723100 (matchR!6334 (regex!7690 rBis!167) (list!16662 (charsOf!5125 (_1!25075 (get!14994 lt!1495061))))))))

(declare-fun b!4196834 () Bool)

(declare-fun res!1723098 () Bool)

(assert (=> b!4196834 (=> (not res!1723098) (not e!2605130))))

(assert (=> b!4196834 (= res!1723098 (= (++!11762 (list!16662 (charsOf!5125 (_1!25075 (get!14994 lt!1495061)))) (_2!25075 (get!14994 lt!1495061))) input!3342))))

(declare-fun b!4196835 () Bool)

(declare-fun res!1723099 () Bool)

(assert (=> b!4196835 (=> (not res!1723099) (not e!2605130))))

(assert (=> b!4196835 (= res!1723099 (< (size!33879 (_2!25075 (get!14994 lt!1495061))) (size!33879 input!3342)))))

(declare-fun b!4196836 () Bool)

(declare-fun res!1723101 () Bool)

(assert (=> b!4196836 (=> (not res!1723101) (not e!2605130))))

(assert (=> b!4196836 (= res!1723101 (= (value!239697 (_1!25075 (get!14994 lt!1495061))) (apply!10655 (transformation!7690 (rule!10784 (_1!25075 (get!14994 lt!1495061)))) (seqFromList!5715 (originalCharacters!8078 (_1!25075 (get!14994 lt!1495061)))))))))

(declare-fun b!4196837 () Bool)

(declare-fun lt!1495062 () tuple2!43886)

(assert (=> b!4196837 (= e!2605128 (Some!9883 (tuple2!43883 (Token!14095 (apply!10655 (transformation!7690 rBis!167) (seqFromList!5715 (_1!25077 lt!1495062))) rBis!167 (size!33881 (seqFromList!5715 (_1!25077 lt!1495062))) (_1!25077 lt!1495062)) (_2!25077 lt!1495062))))))

(declare-fun lt!1495060 () Unit!65190)

(assert (=> b!4196837 (= lt!1495060 (longestMatchIsAcceptedByMatchOrIsEmpty!1592 (regex!7690 rBis!167) input!3342))))

(declare-fun res!1723096 () Bool)

(assert (=> b!4196837 (= res!1723096 (isEmpty!27299 (_1!25077 (findLongestMatchInner!1619 (regex!7690 rBis!167) Nil!46092 (size!33879 Nil!46092) input!3342 input!3342 (size!33879 input!3342)))))))

(assert (=> b!4196837 (=> res!1723096 e!2605131)))

(assert (=> b!4196837 e!2605131))

(declare-fun lt!1495064 () Unit!65190)

(assert (=> b!4196837 (= lt!1495064 lt!1495060)))

(declare-fun lt!1495063 () Unit!65190)

(assert (=> b!4196837 (= lt!1495063 (lemmaSemiInverse!2456 (transformation!7690 rBis!167) (seqFromList!5715 (_1!25077 lt!1495062))))))

(declare-fun d!1237692 () Bool)

(assert (=> d!1237692 e!2605129))

(declare-fun res!1723095 () Bool)

(assert (=> d!1237692 (=> res!1723095 e!2605129)))

(assert (=> d!1237692 (= res!1723095 (isEmpty!27297 lt!1495061))))

(assert (=> d!1237692 (= lt!1495061 e!2605128)))

(declare-fun c!715863 () Bool)

(assert (=> d!1237692 (= c!715863 (isEmpty!27299 (_1!25077 lt!1495062)))))

(assert (=> d!1237692 (= lt!1495062 (findLongestMatch!1532 (regex!7690 rBis!167) input!3342))))

(assert (=> d!1237692 (ruleValid!3408 thiss!25986 rBis!167)))

(assert (=> d!1237692 (= (maxPrefixOneRule!3292 thiss!25986 rBis!167 input!3342) lt!1495061)))

(assert (= (and d!1237692 c!715863) b!4196832))

(assert (= (and d!1237692 (not c!715863)) b!4196837))

(assert (= (and b!4196837 (not res!1723096)) b!4196830))

(assert (= (and d!1237692 (not res!1723095)) b!4196833))

(assert (= (and b!4196833 res!1723100) b!4196834))

(assert (= (and b!4196834 res!1723098) b!4196835))

(assert (= (and b!4196835 res!1723099) b!4196829))

(assert (= (and b!4196829 res!1723097) b!4196836))

(assert (= (and b!4196836 res!1723101) b!4196831))

(declare-fun m!4785711 () Bool)

(assert (=> b!4196837 m!4785711))

(declare-fun m!4785713 () Bool)

(assert (=> b!4196837 m!4785713))

(declare-fun m!4785715 () Bool)

(assert (=> b!4196837 m!4785715))

(assert (=> b!4196837 m!4785711))

(declare-fun m!4785717 () Bool)

(assert (=> b!4196837 m!4785717))

(assert (=> b!4196837 m!4785711))

(assert (=> b!4196837 m!4785511))

(assert (=> b!4196837 m!4785357))

(declare-fun m!4785719 () Bool)

(assert (=> b!4196837 m!4785719))

(assert (=> b!4196837 m!4785357))

(assert (=> b!4196837 m!4785511))

(declare-fun m!4785721 () Bool)

(assert (=> b!4196837 m!4785721))

(assert (=> b!4196837 m!4785711))

(declare-fun m!4785723 () Bool)

(assert (=> b!4196837 m!4785723))

(declare-fun m!4785725 () Bool)

(assert (=> b!4196834 m!4785725))

(declare-fun m!4785727 () Bool)

(assert (=> b!4196834 m!4785727))

(assert (=> b!4196834 m!4785727))

(declare-fun m!4785729 () Bool)

(assert (=> b!4196834 m!4785729))

(assert (=> b!4196834 m!4785729))

(declare-fun m!4785731 () Bool)

(assert (=> b!4196834 m!4785731))

(declare-fun m!4785733 () Bool)

(assert (=> d!1237692 m!4785733))

(declare-fun m!4785735 () Bool)

(assert (=> d!1237692 m!4785735))

(declare-fun m!4785737 () Bool)

(assert (=> d!1237692 m!4785737))

(assert (=> d!1237692 m!4785363))

(assert (=> b!4196831 m!4785725))

(declare-fun m!4785739 () Bool)

(assert (=> b!4196831 m!4785739))

(assert (=> b!4196836 m!4785725))

(declare-fun m!4785741 () Bool)

(assert (=> b!4196836 m!4785741))

(assert (=> b!4196836 m!4785741))

(declare-fun m!4785743 () Bool)

(assert (=> b!4196836 m!4785743))

(assert (=> b!4196830 m!4785511))

(assert (=> b!4196830 m!4785357))

(assert (=> b!4196830 m!4785511))

(assert (=> b!4196830 m!4785357))

(assert (=> b!4196830 m!4785719))

(declare-fun m!4785745 () Bool)

(assert (=> b!4196830 m!4785745))

(assert (=> b!4196829 m!4785725))

(assert (=> b!4196835 m!4785725))

(declare-fun m!4785747 () Bool)

(assert (=> b!4196835 m!4785747))

(assert (=> b!4196835 m!4785357))

(assert (=> b!4196833 m!4785725))

(assert (=> b!4196833 m!4785727))

(assert (=> b!4196833 m!4785727))

(assert (=> b!4196833 m!4785729))

(assert (=> b!4196833 m!4785729))

(declare-fun m!4785749 () Bool)

(assert (=> b!4196833 m!4785749))

(assert (=> b!4196457 d!1237692))

(declare-fun d!1237696 () Bool)

(assert (=> d!1237696 (<= (size!33879 pBis!107) (size!33879 input!3342))))

(declare-fun lt!1495074 () Unit!65190)

(declare-fun choose!25733 (List!46216 List!46216) Unit!65190)

(assert (=> d!1237696 (= lt!1495074 (choose!25733 pBis!107 input!3342))))

(assert (=> d!1237696 (isPrefix!4547 pBis!107 input!3342)))

(assert (=> d!1237696 (= (lemmaIsPrefixThenSmallerEqSize!577 pBis!107 input!3342) lt!1495074)))

(declare-fun bs!596845 () Bool)

(assert (= bs!596845 d!1237696))

(assert (=> bs!596845 m!4785329))

(assert (=> bs!596845 m!4785357))

(declare-fun m!4785763 () Bool)

(assert (=> bs!596845 m!4785763))

(assert (=> bs!596845 m!4785341))

(assert (=> b!4196457 d!1237696))

(declare-fun d!1237702 () Bool)

(declare-fun lt!1495075 () Int)

(assert (=> d!1237702 (>= lt!1495075 0)))

(declare-fun e!2605141 () Int)

(assert (=> d!1237702 (= lt!1495075 e!2605141)))

(declare-fun c!715864 () Bool)

(assert (=> d!1237702 (= c!715864 ((_ is Nil!46092) input!3342))))

(assert (=> d!1237702 (= (size!33879 input!3342) lt!1495075)))

(declare-fun b!4196848 () Bool)

(assert (=> b!4196848 (= e!2605141 0)))

(declare-fun b!4196849 () Bool)

(assert (=> b!4196849 (= e!2605141 (+ 1 (size!33879 (t!346527 input!3342))))))

(assert (= (and d!1237702 c!715864) b!4196848))

(assert (= (and d!1237702 (not c!715864)) b!4196849))

(declare-fun m!4785765 () Bool)

(assert (=> b!4196849 m!4785765))

(assert (=> b!4196457 d!1237702))

(declare-fun d!1237704 () Bool)

(declare-fun res!1723112 () Bool)

(declare-fun e!2605142 () Bool)

(assert (=> d!1237704 (=> (not res!1723112) (not e!2605142))))

(assert (=> d!1237704 (= res!1723112 (validRegex!5712 (regex!7690 rBis!167)))))

(assert (=> d!1237704 (= (ruleValid!3408 thiss!25986 rBis!167) e!2605142)))

(declare-fun b!4196850 () Bool)

(declare-fun res!1723113 () Bool)

(assert (=> b!4196850 (=> (not res!1723113) (not e!2605142))))

(assert (=> b!4196850 (= res!1723113 (not (nullable!4429 (regex!7690 rBis!167))))))

(declare-fun b!4196851 () Bool)

(assert (=> b!4196851 (= e!2605142 (not (= (tag!8554 rBis!167) (String!53467 ""))))))

(assert (= (and d!1237704 res!1723112) b!4196850))

(assert (= (and b!4196850 res!1723113) b!4196851))

(declare-fun m!4785767 () Bool)

(assert (=> d!1237704 m!4785767))

(declare-fun m!4785769 () Bool)

(assert (=> b!4196850 m!4785769))

(assert (=> b!4196458 d!1237704))

(declare-fun d!1237706 () Bool)

(declare-fun res!1723118 () Bool)

(declare-fun e!2605148 () Bool)

(assert (=> d!1237706 (=> (not res!1723118) (not e!2605148))))

(declare-fun rulesValid!3005 (LexerInterface!7283 List!46217) Bool)

(assert (=> d!1237706 (= res!1723118 (rulesValid!3005 thiss!25986 rules!3843))))

(assert (=> d!1237706 (= (rulesInvariant!6496 thiss!25986 rules!3843) e!2605148)))

(declare-fun b!4196859 () Bool)

(declare-datatypes ((List!46218 0))(
  ( (Nil!46094) (Cons!46094 (h!51514 String!53466) (t!346577 List!46218)) )
))
(declare-fun noDuplicateTag!3166 (LexerInterface!7283 List!46217 List!46218) Bool)

(assert (=> b!4196859 (= e!2605148 (noDuplicateTag!3166 thiss!25986 rules!3843 Nil!46094))))

(assert (= (and d!1237706 res!1723118) b!4196859))

(declare-fun m!4785779 () Bool)

(assert (=> d!1237706 m!4785779))

(declare-fun m!4785781 () Bool)

(assert (=> b!4196859 m!4785781))

(assert (=> b!4196447 d!1237706))

(declare-fun d!1237712 () Bool)

(declare-fun e!2605151 () Bool)

(assert (=> d!1237712 e!2605151))

(declare-fun res!1723119 () Bool)

(assert (=> d!1237712 (=> res!1723119 e!2605151)))

(declare-fun lt!1495080 () Bool)

(assert (=> d!1237712 (= res!1723119 (not lt!1495080))))

(declare-fun e!2605149 () Bool)

(assert (=> d!1237712 (= lt!1495080 e!2605149)))

(declare-fun res!1723120 () Bool)

(assert (=> d!1237712 (=> res!1723120 e!2605149)))

(assert (=> d!1237712 (= res!1723120 ((_ is Nil!46092) lt!1494924))))

(assert (=> d!1237712 (= (isPrefix!4547 lt!1494924 input!3342) lt!1495080)))

(declare-fun b!4196861 () Bool)

(declare-fun res!1723121 () Bool)

(declare-fun e!2605150 () Bool)

(assert (=> b!4196861 (=> (not res!1723121) (not e!2605150))))

(assert (=> b!4196861 (= res!1723121 (= (head!8906 lt!1494924) (head!8906 input!3342)))))

(declare-fun b!4196862 () Bool)

(assert (=> b!4196862 (= e!2605150 (isPrefix!4547 (tail!6753 lt!1494924) (tail!6753 input!3342)))))

(declare-fun b!4196863 () Bool)

(assert (=> b!4196863 (= e!2605151 (>= (size!33879 input!3342) (size!33879 lt!1494924)))))

(declare-fun b!4196860 () Bool)

(assert (=> b!4196860 (= e!2605149 e!2605150)))

(declare-fun res!1723122 () Bool)

(assert (=> b!4196860 (=> (not res!1723122) (not e!2605150))))

(assert (=> b!4196860 (= res!1723122 (not ((_ is Nil!46092) input!3342)))))

(assert (= (and d!1237712 (not res!1723120)) b!4196860))

(assert (= (and b!4196860 res!1723122) b!4196861))

(assert (= (and b!4196861 res!1723121) b!4196862))

(assert (= (and d!1237712 (not res!1723119)) b!4196863))

(declare-fun m!4785795 () Bool)

(assert (=> b!4196861 m!4785795))

(assert (=> b!4196861 m!4785417))

(declare-fun m!4785797 () Bool)

(assert (=> b!4196862 m!4785797))

(assert (=> b!4196862 m!4785421))

(assert (=> b!4196862 m!4785797))

(assert (=> b!4196862 m!4785421))

(declare-fun m!4785799 () Bool)

(assert (=> b!4196862 m!4785799))

(assert (=> b!4196863 m!4785357))

(assert (=> b!4196863 m!4785343))

(assert (=> b!4196464 d!1237712))

(declare-fun d!1237716 () Bool)

(assert (=> d!1237716 (= (isEmpty!27296 rules!3843) ((_ is Nil!46093) rules!3843))))

(assert (=> b!4196454 d!1237716))

(declare-fun d!1237718 () Bool)

(assert (=> d!1237718 (= (inv!60649 (tag!8554 (h!51513 rules!3843))) (= (mod (str.len (value!239696 (tag!8554 (h!51513 rules!3843)))) 2) 0))))

(assert (=> b!4196475 d!1237718))

(declare-fun d!1237720 () Bool)

(declare-fun res!1723123 () Bool)

(declare-fun e!2605152 () Bool)

(assert (=> d!1237720 (=> (not res!1723123) (not e!2605152))))

(assert (=> d!1237720 (= res!1723123 (semiInverseModEq!3338 (toChars!10249 (transformation!7690 (h!51513 rules!3843))) (toValue!10390 (transformation!7690 (h!51513 rules!3843)))))))

(assert (=> d!1237720 (= (inv!60651 (transformation!7690 (h!51513 rules!3843))) e!2605152)))

(declare-fun b!4196864 () Bool)

(assert (=> b!4196864 (= e!2605152 (equivClasses!3237 (toChars!10249 (transformation!7690 (h!51513 rules!3843))) (toValue!10390 (transformation!7690 (h!51513 rules!3843)))))))

(assert (= (and d!1237720 res!1723123) b!4196864))

(declare-fun m!4785803 () Bool)

(assert (=> d!1237720 m!4785803))

(declare-fun m!4785805 () Bool)

(assert (=> b!4196864 m!4785805))

(assert (=> b!4196475 d!1237720))

(declare-fun b!4196960 () Bool)

(declare-fun res!1723165 () Bool)

(declare-fun e!2605211 () Bool)

(assert (=> b!4196960 (=> (not res!1723165) (not e!2605211))))

(declare-fun lt!1495099 () Option!9884)

(assert (=> b!4196960 (= res!1723165 (= (list!16662 (charsOf!5125 (_1!25075 (get!14994 lt!1495099)))) (originalCharacters!8078 (_1!25075 (get!14994 lt!1495099)))))))

(declare-fun bm!292473 () Bool)

(declare-fun call!292478 () Option!9884)

(assert (=> bm!292473 (= call!292478 (maxPrefixOneRule!3292 thiss!25986 (h!51513 rules!3843) input!3342))))

(declare-fun d!1237724 () Bool)

(declare-fun e!2605212 () Bool)

(assert (=> d!1237724 e!2605212))

(declare-fun res!1723169 () Bool)

(assert (=> d!1237724 (=> res!1723169 e!2605212)))

(assert (=> d!1237724 (= res!1723169 (isEmpty!27297 lt!1495099))))

(declare-fun e!2605213 () Option!9884)

(assert (=> d!1237724 (= lt!1495099 e!2605213)))

(declare-fun c!715874 () Bool)

(assert (=> d!1237724 (= c!715874 (and ((_ is Cons!46093) rules!3843) ((_ is Nil!46093) (t!346528 rules!3843))))))

(declare-fun lt!1495098 () Unit!65190)

(declare-fun lt!1495097 () Unit!65190)

(assert (=> d!1237724 (= lt!1495098 lt!1495097)))

(assert (=> d!1237724 (isPrefix!4547 input!3342 input!3342)))

(assert (=> d!1237724 (= lt!1495097 (lemmaIsPrefixRefl!2976 input!3342 input!3342))))

(declare-fun rulesValidInductive!2844 (LexerInterface!7283 List!46217) Bool)

(assert (=> d!1237724 (rulesValidInductive!2844 thiss!25986 rules!3843)))

(assert (=> d!1237724 (= (maxPrefix!4331 thiss!25986 rules!3843 input!3342) lt!1495099)))

(declare-fun b!4196961 () Bool)

(declare-fun res!1723166 () Bool)

(assert (=> b!4196961 (=> (not res!1723166) (not e!2605211))))

(assert (=> b!4196961 (= res!1723166 (< (size!33879 (_2!25075 (get!14994 lt!1495099))) (size!33879 input!3342)))))

(declare-fun b!4196962 () Bool)

(declare-fun lt!1495100 () Option!9884)

(declare-fun lt!1495096 () Option!9884)

(assert (=> b!4196962 (= e!2605213 (ite (and ((_ is None!9883) lt!1495100) ((_ is None!9883) lt!1495096)) None!9883 (ite ((_ is None!9883) lt!1495096) lt!1495100 (ite ((_ is None!9883) lt!1495100) lt!1495096 (ite (>= (size!33880 (_1!25075 (v!40725 lt!1495100))) (size!33880 (_1!25075 (v!40725 lt!1495096)))) lt!1495100 lt!1495096)))))))

(assert (=> b!4196962 (= lt!1495100 call!292478)))

(assert (=> b!4196962 (= lt!1495096 (maxPrefix!4331 thiss!25986 (t!346528 rules!3843) input!3342))))

(declare-fun b!4196963 () Bool)

(assert (=> b!4196963 (= e!2605213 call!292478)))

(declare-fun b!4196964 () Bool)

(declare-fun res!1723164 () Bool)

(assert (=> b!4196964 (=> (not res!1723164) (not e!2605211))))

(assert (=> b!4196964 (= res!1723164 (= (value!239697 (_1!25075 (get!14994 lt!1495099))) (apply!10655 (transformation!7690 (rule!10784 (_1!25075 (get!14994 lt!1495099)))) (seqFromList!5715 (originalCharacters!8078 (_1!25075 (get!14994 lt!1495099)))))))))

(declare-fun b!4196965 () Bool)

(assert (=> b!4196965 (= e!2605212 e!2605211)))

(declare-fun res!1723167 () Bool)

(assert (=> b!4196965 (=> (not res!1723167) (not e!2605211))))

(declare-fun isDefined!7360 (Option!9884) Bool)

(assert (=> b!4196965 (= res!1723167 (isDefined!7360 lt!1495099))))

(declare-fun b!4196966 () Bool)

(declare-fun res!1723163 () Bool)

(assert (=> b!4196966 (=> (not res!1723163) (not e!2605211))))

(assert (=> b!4196966 (= res!1723163 (= (++!11762 (list!16662 (charsOf!5125 (_1!25075 (get!14994 lt!1495099)))) (_2!25075 (get!14994 lt!1495099))) input!3342))))

(declare-fun b!4196967 () Bool)

(assert (=> b!4196967 (= e!2605211 (contains!9501 rules!3843 (rule!10784 (_1!25075 (get!14994 lt!1495099)))))))

(declare-fun b!4196968 () Bool)

(declare-fun res!1723168 () Bool)

(assert (=> b!4196968 (=> (not res!1723168) (not e!2605211))))

(assert (=> b!4196968 (= res!1723168 (matchR!6334 (regex!7690 (rule!10784 (_1!25075 (get!14994 lt!1495099)))) (list!16662 (charsOf!5125 (_1!25075 (get!14994 lt!1495099))))))))

(assert (= (and d!1237724 c!715874) b!4196963))

(assert (= (and d!1237724 (not c!715874)) b!4196962))

(assert (= (or b!4196963 b!4196962) bm!292473))

(assert (= (and d!1237724 (not res!1723169)) b!4196965))

(assert (= (and b!4196965 res!1723167) b!4196960))

(assert (= (and b!4196960 res!1723165) b!4196961))

(assert (= (and b!4196961 res!1723166) b!4196966))

(assert (= (and b!4196966 res!1723163) b!4196964))

(assert (= (and b!4196964 res!1723164) b!4196968))

(assert (= (and b!4196968 res!1723168) b!4196967))

(declare-fun m!4785839 () Bool)

(assert (=> b!4196961 m!4785839))

(declare-fun m!4785841 () Bool)

(assert (=> b!4196961 m!4785841))

(assert (=> b!4196961 m!4785357))

(assert (=> b!4196964 m!4785839))

(declare-fun m!4785843 () Bool)

(assert (=> b!4196964 m!4785843))

(assert (=> b!4196964 m!4785843))

(declare-fun m!4785845 () Bool)

(assert (=> b!4196964 m!4785845))

(assert (=> b!4196967 m!4785839))

(declare-fun m!4785847 () Bool)

(assert (=> b!4196967 m!4785847))

(declare-fun m!4785849 () Bool)

(assert (=> b!4196962 m!4785849))

(assert (=> b!4196960 m!4785839))

(declare-fun m!4785851 () Bool)

(assert (=> b!4196960 m!4785851))

(assert (=> b!4196960 m!4785851))

(declare-fun m!4785853 () Bool)

(assert (=> b!4196960 m!4785853))

(declare-fun m!4785855 () Bool)

(assert (=> bm!292473 m!4785855))

(declare-fun m!4785857 () Bool)

(assert (=> b!4196965 m!4785857))

(declare-fun m!4785859 () Bool)

(assert (=> d!1237724 m!4785859))

(assert (=> d!1237724 m!4785297))

(assert (=> d!1237724 m!4785301))

(declare-fun m!4785861 () Bool)

(assert (=> d!1237724 m!4785861))

(assert (=> b!4196968 m!4785839))

(assert (=> b!4196968 m!4785851))

(assert (=> b!4196968 m!4785851))

(assert (=> b!4196968 m!4785853))

(assert (=> b!4196968 m!4785853))

(declare-fun m!4785863 () Bool)

(assert (=> b!4196968 m!4785863))

(assert (=> b!4196966 m!4785839))

(assert (=> b!4196966 m!4785851))

(assert (=> b!4196966 m!4785851))

(assert (=> b!4196966 m!4785853))

(assert (=> b!4196966 m!4785853))

(declare-fun m!4785865 () Bool)

(assert (=> b!4196966 m!4785865))

(assert (=> b!4196465 d!1237724))

(declare-fun d!1237740 () Bool)

(declare-fun lt!1495103 () BalanceConc!27396)

(assert (=> d!1237740 (= (list!16662 lt!1495103) (originalCharacters!8078 (_1!25075 lt!1494936)))))

(assert (=> d!1237740 (= lt!1495103 (dynLambda!19873 (toChars!10249 (transformation!7690 (rule!10784 (_1!25075 lt!1494936)))) (value!239697 (_1!25075 lt!1494936))))))

(assert (=> d!1237740 (= (charsOf!5125 (_1!25075 lt!1494936)) lt!1495103)))

(declare-fun b_lambda!123527 () Bool)

(assert (=> (not b_lambda!123527) (not d!1237740)))

(declare-fun t!346566 () Bool)

(declare-fun tb!251559 () Bool)

(assert (=> (and b!4196445 (= (toChars!10249 (transformation!7690 r!4142)) (toChars!10249 (transformation!7690 (rule!10784 (_1!25075 lt!1494936))))) t!346566) tb!251559))

(declare-fun b!4196969 () Bool)

(declare-fun e!2605214 () Bool)

(declare-fun tp!1282056 () Bool)

(assert (=> b!4196969 (= e!2605214 (and (inv!60654 (c!715802 (dynLambda!19873 (toChars!10249 (transformation!7690 (rule!10784 (_1!25075 lt!1494936)))) (value!239697 (_1!25075 lt!1494936))))) tp!1282056))))

(declare-fun result!306602 () Bool)

(assert (=> tb!251559 (= result!306602 (and (inv!60655 (dynLambda!19873 (toChars!10249 (transformation!7690 (rule!10784 (_1!25075 lt!1494936)))) (value!239697 (_1!25075 lt!1494936)))) e!2605214))))

(assert (= tb!251559 b!4196969))

(declare-fun m!4785867 () Bool)

(assert (=> b!4196969 m!4785867))

(declare-fun m!4785869 () Bool)

(assert (=> tb!251559 m!4785869))

(assert (=> d!1237740 t!346566))

(declare-fun b_and!329207 () Bool)

(assert (= b_and!329185 (and (=> t!346566 result!306602) b_and!329207)))

(declare-fun t!346568 () Bool)

(declare-fun tb!251561 () Bool)

(assert (=> (and b!4196452 (= (toChars!10249 (transformation!7690 (h!51513 rules!3843))) (toChars!10249 (transformation!7690 (rule!10784 (_1!25075 lt!1494936))))) t!346568) tb!251561))

(declare-fun result!306604 () Bool)

(assert (= result!306604 result!306602))

(assert (=> d!1237740 t!346568))

(declare-fun b_and!329209 () Bool)

(assert (= b_and!329187 (and (=> t!346568 result!306604) b_and!329209)))

(declare-fun t!346570 () Bool)

(declare-fun tb!251563 () Bool)

(assert (=> (and b!4196476 (= (toChars!10249 (transformation!7690 rBis!167)) (toChars!10249 (transformation!7690 (rule!10784 (_1!25075 lt!1494936))))) t!346570) tb!251563))

(declare-fun result!306606 () Bool)

(assert (= result!306606 result!306602))

(assert (=> d!1237740 t!346570))

(declare-fun b_and!329211 () Bool)

(assert (= b_and!329189 (and (=> t!346570 result!306606) b_and!329211)))

(declare-fun m!4785871 () Bool)

(assert (=> d!1237740 m!4785871))

(declare-fun m!4785873 () Bool)

(assert (=> d!1237740 m!4785873))

(assert (=> b!4196466 d!1237740))

(declare-fun b!4196971 () Bool)

(declare-fun e!2605215 () List!46216)

(assert (=> b!4196971 (= e!2605215 (Cons!46092 (h!51512 lt!1494924) (++!11762 (t!346527 lt!1494924) (_2!25075 lt!1494936))))))

(declare-fun b!4196970 () Bool)

(assert (=> b!4196970 (= e!2605215 (_2!25075 lt!1494936))))

(declare-fun d!1237742 () Bool)

(declare-fun e!2605216 () Bool)

(assert (=> d!1237742 e!2605216))

(declare-fun res!1723171 () Bool)

(assert (=> d!1237742 (=> (not res!1723171) (not e!2605216))))

(declare-fun lt!1495104 () List!46216)

(assert (=> d!1237742 (= res!1723171 (= (content!7192 lt!1495104) ((_ map or) (content!7192 lt!1494924) (content!7192 (_2!25075 lt!1494936)))))))

(assert (=> d!1237742 (= lt!1495104 e!2605215)))

(declare-fun c!715875 () Bool)

(assert (=> d!1237742 (= c!715875 ((_ is Nil!46092) lt!1494924))))

(assert (=> d!1237742 (= (++!11762 lt!1494924 (_2!25075 lt!1494936)) lt!1495104)))

(declare-fun b!4196973 () Bool)

(assert (=> b!4196973 (= e!2605216 (or (not (= (_2!25075 lt!1494936) Nil!46092)) (= lt!1495104 lt!1494924)))))

(declare-fun b!4196972 () Bool)

(declare-fun res!1723170 () Bool)

(assert (=> b!4196972 (=> (not res!1723170) (not e!2605216))))

(assert (=> b!4196972 (= res!1723170 (= (size!33879 lt!1495104) (+ (size!33879 lt!1494924) (size!33879 (_2!25075 lt!1494936)))))))

(assert (= (and d!1237742 c!715875) b!4196970))

(assert (= (and d!1237742 (not c!715875)) b!4196971))

(assert (= (and d!1237742 res!1723171) b!4196972))

(assert (= (and b!4196972 res!1723170) b!4196973))

(declare-fun m!4785875 () Bool)

(assert (=> b!4196971 m!4785875))

(declare-fun m!4785877 () Bool)

(assert (=> d!1237742 m!4785877))

(declare-fun m!4785879 () Bool)

(assert (=> d!1237742 m!4785879))

(declare-fun m!4785881 () Bool)

(assert (=> d!1237742 m!4785881))

(declare-fun m!4785883 () Bool)

(assert (=> b!4196972 m!4785883))

(assert (=> b!4196972 m!4785343))

(declare-fun m!4785885 () Bool)

(assert (=> b!4196972 m!4785885))

(assert (=> b!4196466 d!1237742))

(declare-fun d!1237744 () Bool)

(assert (=> d!1237744 (= (get!14994 lt!1494933) (v!40725 lt!1494933))))

(assert (=> b!4196466 d!1237744))

(declare-fun d!1237746 () Bool)

(assert (=> d!1237746 (isPrefix!4547 lt!1494924 (++!11762 lt!1494924 (_2!25075 lt!1494936)))))

(declare-fun lt!1495107 () Unit!65190)

(declare-fun choose!25735 (List!46216 List!46216) Unit!65190)

(assert (=> d!1237746 (= lt!1495107 (choose!25735 lt!1494924 (_2!25075 lt!1494936)))))

(assert (=> d!1237746 (= (lemmaConcatTwoListThenFirstIsPrefix!3044 lt!1494924 (_2!25075 lt!1494936)) lt!1495107)))

(declare-fun bs!596848 () Bool)

(assert (= bs!596848 d!1237746))

(assert (=> bs!596848 m!4785323))

(assert (=> bs!596848 m!4785323))

(assert (=> bs!596848 m!4785325))

(declare-fun m!4785887 () Bool)

(assert (=> bs!596848 m!4785887))

(assert (=> b!4196466 d!1237746))

(declare-fun d!1237748 () Bool)

(declare-fun e!2605219 () Bool)

(assert (=> d!1237748 e!2605219))

(declare-fun res!1723172 () Bool)

(assert (=> d!1237748 (=> res!1723172 e!2605219)))

(declare-fun lt!1495108 () Bool)

(assert (=> d!1237748 (= res!1723172 (not lt!1495108))))

(declare-fun e!2605217 () Bool)

(assert (=> d!1237748 (= lt!1495108 e!2605217)))

(declare-fun res!1723173 () Bool)

(assert (=> d!1237748 (=> res!1723173 e!2605217)))

(assert (=> d!1237748 (= res!1723173 ((_ is Nil!46092) lt!1494924))))

(assert (=> d!1237748 (= (isPrefix!4547 lt!1494924 (++!11762 lt!1494924 (_2!25075 lt!1494936))) lt!1495108)))

(declare-fun b!4196975 () Bool)

(declare-fun res!1723174 () Bool)

(declare-fun e!2605218 () Bool)

(assert (=> b!4196975 (=> (not res!1723174) (not e!2605218))))

(assert (=> b!4196975 (= res!1723174 (= (head!8906 lt!1494924) (head!8906 (++!11762 lt!1494924 (_2!25075 lt!1494936)))))))

(declare-fun b!4196976 () Bool)

(assert (=> b!4196976 (= e!2605218 (isPrefix!4547 (tail!6753 lt!1494924) (tail!6753 (++!11762 lt!1494924 (_2!25075 lt!1494936)))))))

(declare-fun b!4196977 () Bool)

(assert (=> b!4196977 (= e!2605219 (>= (size!33879 (++!11762 lt!1494924 (_2!25075 lt!1494936))) (size!33879 lt!1494924)))))

(declare-fun b!4196974 () Bool)

(assert (=> b!4196974 (= e!2605217 e!2605218)))

(declare-fun res!1723175 () Bool)

(assert (=> b!4196974 (=> (not res!1723175) (not e!2605218))))

(assert (=> b!4196974 (= res!1723175 (not ((_ is Nil!46092) (++!11762 lt!1494924 (_2!25075 lt!1494936)))))))

(assert (= (and d!1237748 (not res!1723173)) b!4196974))

(assert (= (and b!4196974 res!1723175) b!4196975))

(assert (= (and b!4196975 res!1723174) b!4196976))

(assert (= (and d!1237748 (not res!1723172)) b!4196977))

(assert (=> b!4196975 m!4785795))

(assert (=> b!4196975 m!4785323))

(declare-fun m!4785889 () Bool)

(assert (=> b!4196975 m!4785889))

(assert (=> b!4196976 m!4785797))

(assert (=> b!4196976 m!4785323))

(declare-fun m!4785891 () Bool)

(assert (=> b!4196976 m!4785891))

(assert (=> b!4196976 m!4785797))

(assert (=> b!4196976 m!4785891))

(declare-fun m!4785893 () Bool)

(assert (=> b!4196976 m!4785893))

(assert (=> b!4196977 m!4785323))

(declare-fun m!4785895 () Bool)

(assert (=> b!4196977 m!4785895))

(assert (=> b!4196977 m!4785343))

(assert (=> b!4196466 d!1237748))

(declare-fun d!1237750 () Bool)

(declare-fun list!16664 (Conc!13901) List!46216)

(assert (=> d!1237750 (= (list!16662 lt!1494922) (list!16664 (c!715802 lt!1494922)))))

(declare-fun bs!596849 () Bool)

(assert (= bs!596849 d!1237750))

(declare-fun m!4785897 () Bool)

(assert (=> bs!596849 m!4785897))

(assert (=> b!4196466 d!1237750))

(declare-fun d!1237752 () Bool)

(assert (=> d!1237752 (= (inv!60649 (tag!8554 r!4142)) (= (mod (str.len (value!239696 (tag!8554 r!4142))) 2) 0))))

(assert (=> b!4196455 d!1237752))

(declare-fun d!1237754 () Bool)

(declare-fun res!1723176 () Bool)

(declare-fun e!2605220 () Bool)

(assert (=> d!1237754 (=> (not res!1723176) (not e!2605220))))

(assert (=> d!1237754 (= res!1723176 (semiInverseModEq!3338 (toChars!10249 (transformation!7690 r!4142)) (toValue!10390 (transformation!7690 r!4142))))))

(assert (=> d!1237754 (= (inv!60651 (transformation!7690 r!4142)) e!2605220)))

(declare-fun b!4196978 () Bool)

(assert (=> b!4196978 (= e!2605220 (equivClasses!3237 (toChars!10249 (transformation!7690 r!4142)) (toValue!10390 (transformation!7690 r!4142))))))

(assert (= (and d!1237754 res!1723176) b!4196978))

(declare-fun m!4785899 () Bool)

(assert (=> d!1237754 m!4785899))

(declare-fun m!4785901 () Bool)

(assert (=> b!4196978 m!4785901))

(assert (=> b!4196455 d!1237754))

(declare-fun b!4196983 () Bool)

(declare-fun e!2605223 () Bool)

(declare-fun tp!1282059 () Bool)

(assert (=> b!4196983 (= e!2605223 (and tp_is_empty!22153 tp!1282059))))

(assert (=> b!4196461 (= tp!1282001 e!2605223)))

(assert (= (and b!4196461 ((_ is Cons!46092) (t!346527 input!3342))) b!4196983))

(declare-fun b!4196995 () Bool)

(declare-fun e!2605226 () Bool)

(declare-fun tp!1282074 () Bool)

(declare-fun tp!1282071 () Bool)

(assert (=> b!4196995 (= e!2605226 (and tp!1282074 tp!1282071))))

(declare-fun b!4196997 () Bool)

(declare-fun tp!1282070 () Bool)

(declare-fun tp!1282072 () Bool)

(assert (=> b!4196997 (= e!2605226 (and tp!1282070 tp!1282072))))

(declare-fun b!4196996 () Bool)

(declare-fun tp!1282073 () Bool)

(assert (=> b!4196996 (= e!2605226 tp!1282073)))

(declare-fun b!4196994 () Bool)

(assert (=> b!4196994 (= e!2605226 tp_is_empty!22153)))

(assert (=> b!4196468 (= tp!1282003 e!2605226)))

(assert (= (and b!4196468 ((_ is ElementMatch!12595) (regex!7690 rBis!167))) b!4196994))

(assert (= (and b!4196468 ((_ is Concat!20516) (regex!7690 rBis!167))) b!4196995))

(assert (= (and b!4196468 ((_ is Star!12595) (regex!7690 rBis!167))) b!4196996))

(assert (= (and b!4196468 ((_ is Union!12595) (regex!7690 rBis!167))) b!4196997))

(declare-fun b!4196998 () Bool)

(declare-fun e!2605227 () Bool)

(declare-fun tp!1282075 () Bool)

(assert (=> b!4196998 (= e!2605227 (and tp_is_empty!22153 tp!1282075))))

(assert (=> b!4196473 (= tp!1281999 e!2605227)))

(assert (= (and b!4196473 ((_ is Cons!46092) (t!346527 pBis!107))) b!4196998))

(declare-fun b!4197009 () Bool)

(declare-fun b_free!122303 () Bool)

(declare-fun b_next!123007 () Bool)

(assert (=> b!4197009 (= b_free!122303 (not b_next!123007))))

(declare-fun t!346572 () Bool)

(declare-fun tb!251565 () Bool)

(assert (=> (and b!4197009 (= (toValue!10390 (transformation!7690 (h!51513 (t!346528 rules!3843)))) (toValue!10390 (transformation!7690 r!4142))) t!346572) tb!251565))

(declare-fun result!306614 () Bool)

(assert (= result!306614 result!306552))

(assert (=> d!1237630 t!346572))

(assert (=> d!1237644 t!346572))

(declare-fun tp!1282085 () Bool)

(declare-fun b_and!329213 () Bool)

(assert (=> b!4197009 (= tp!1282085 (and (=> t!346572 result!306614) b_and!329213))))

(declare-fun b_free!122305 () Bool)

(declare-fun b_next!123009 () Bool)

(assert (=> b!4197009 (= b_free!122305 (not b_next!123009))))

(declare-fun t!346574 () Bool)

(declare-fun tb!251567 () Bool)

(assert (=> (and b!4197009 (= (toChars!10249 (transformation!7690 (h!51513 (t!346528 rules!3843)))) (toChars!10249 (transformation!7690 r!4142))) t!346574) tb!251567))

(declare-fun result!306616 () Bool)

(assert (= result!306616 result!306576))

(assert (=> d!1237644 t!346574))

(declare-fun t!346576 () Bool)

(declare-fun tb!251569 () Bool)

(assert (=> (and b!4197009 (= (toChars!10249 (transformation!7690 (h!51513 (t!346528 rules!3843)))) (toChars!10249 (transformation!7690 (rule!10784 (_1!25075 lt!1494936))))) t!346576) tb!251569))

(declare-fun result!306618 () Bool)

(assert (= result!306618 result!306602))

(assert (=> d!1237740 t!346576))

(declare-fun b_and!329215 () Bool)

(declare-fun tp!1282084 () Bool)

(assert (=> b!4197009 (= tp!1282084 (and (=> t!346574 result!306616) (=> t!346576 result!306618) b_and!329215))))

(declare-fun e!2605238 () Bool)

(assert (=> b!4197009 (= e!2605238 (and tp!1282085 tp!1282084))))

(declare-fun e!2605239 () Bool)

(declare-fun tp!1282087 () Bool)

(declare-fun b!4197008 () Bool)

(assert (=> b!4197008 (= e!2605239 (and tp!1282087 (inv!60649 (tag!8554 (h!51513 (t!346528 rules!3843)))) (inv!60651 (transformation!7690 (h!51513 (t!346528 rules!3843)))) e!2605238))))

(declare-fun b!4197007 () Bool)

(declare-fun e!2605236 () Bool)

(declare-fun tp!1282086 () Bool)

(assert (=> b!4197007 (= e!2605236 (and e!2605239 tp!1282086))))

(assert (=> b!4196453 (= tp!1281995 e!2605236)))

(assert (= b!4197008 b!4197009))

(assert (= b!4197007 b!4197008))

(assert (= (and b!4196453 ((_ is Cons!46093) (t!346528 rules!3843))) b!4197007))

(declare-fun m!4785903 () Bool)

(assert (=> b!4197008 m!4785903))

(declare-fun m!4785905 () Bool)

(assert (=> b!4197008 m!4785905))

(declare-fun b!4197010 () Bool)

(declare-fun e!2605240 () Bool)

(declare-fun tp!1282088 () Bool)

(assert (=> b!4197010 (= e!2605240 (and tp_is_empty!22153 tp!1282088))))

(assert (=> b!4196469 (= tp!1282004 e!2605240)))

(assert (= (and b!4196469 ((_ is Cons!46092) (t!346527 p!2959))) b!4197010))

(declare-fun b!4197012 () Bool)

(declare-fun e!2605241 () Bool)

(declare-fun tp!1282093 () Bool)

(declare-fun tp!1282090 () Bool)

(assert (=> b!4197012 (= e!2605241 (and tp!1282093 tp!1282090))))

(declare-fun b!4197014 () Bool)

(declare-fun tp!1282089 () Bool)

(declare-fun tp!1282091 () Bool)

(assert (=> b!4197014 (= e!2605241 (and tp!1282089 tp!1282091))))

(declare-fun b!4197013 () Bool)

(declare-fun tp!1282092 () Bool)

(assert (=> b!4197013 (= e!2605241 tp!1282092)))

(declare-fun b!4197011 () Bool)

(assert (=> b!4197011 (= e!2605241 tp_is_empty!22153)))

(assert (=> b!4196475 (= tp!1282000 e!2605241)))

(assert (= (and b!4196475 ((_ is ElementMatch!12595) (regex!7690 (h!51513 rules!3843)))) b!4197011))

(assert (= (and b!4196475 ((_ is Concat!20516) (regex!7690 (h!51513 rules!3843)))) b!4197012))

(assert (= (and b!4196475 ((_ is Star!12595) (regex!7690 (h!51513 rules!3843)))) b!4197013))

(assert (= (and b!4196475 ((_ is Union!12595) (regex!7690 (h!51513 rules!3843)))) b!4197014))

(declare-fun b!4197016 () Bool)

(declare-fun e!2605242 () Bool)

(declare-fun tp!1282098 () Bool)

(declare-fun tp!1282095 () Bool)

(assert (=> b!4197016 (= e!2605242 (and tp!1282098 tp!1282095))))

(declare-fun b!4197018 () Bool)

(declare-fun tp!1282094 () Bool)

(declare-fun tp!1282096 () Bool)

(assert (=> b!4197018 (= e!2605242 (and tp!1282094 tp!1282096))))

(declare-fun b!4197017 () Bool)

(declare-fun tp!1282097 () Bool)

(assert (=> b!4197017 (= e!2605242 tp!1282097)))

(declare-fun b!4197015 () Bool)

(assert (=> b!4197015 (= e!2605242 tp_is_empty!22153)))

(assert (=> b!4196455 (= tp!1282005 e!2605242)))

(assert (= (and b!4196455 ((_ is ElementMatch!12595) (regex!7690 r!4142))) b!4197015))

(assert (= (and b!4196455 ((_ is Concat!20516) (regex!7690 r!4142))) b!4197016))

(assert (= (and b!4196455 ((_ is Star!12595) (regex!7690 r!4142))) b!4197017))

(assert (= (and b!4196455 ((_ is Union!12595) (regex!7690 r!4142))) b!4197018))

(declare-fun b_lambda!123529 () Bool)

(assert (= b_lambda!123507 (or (and b!4196445 b_free!122287) (and b!4196452 b_free!122291 (= (toValue!10390 (transformation!7690 (h!51513 rules!3843))) (toValue!10390 (transformation!7690 r!4142)))) (and b!4196476 b_free!122295 (= (toValue!10390 (transformation!7690 rBis!167)) (toValue!10390 (transformation!7690 r!4142)))) (and b!4197009 b_free!122303 (= (toValue!10390 (transformation!7690 (h!51513 (t!346528 rules!3843)))) (toValue!10390 (transformation!7690 r!4142)))) b_lambda!123529)))

(declare-fun b_lambda!123531 () Bool)

(assert (= b_lambda!123517 (or (and b!4196445 b_free!122287) (and b!4196452 b_free!122291 (= (toValue!10390 (transformation!7690 (h!51513 rules!3843))) (toValue!10390 (transformation!7690 r!4142)))) (and b!4196476 b_free!122295 (= (toValue!10390 (transformation!7690 rBis!167)) (toValue!10390 (transformation!7690 r!4142)))) (and b!4197009 b_free!122303 (= (toValue!10390 (transformation!7690 (h!51513 (t!346528 rules!3843)))) (toValue!10390 (transformation!7690 r!4142)))) b_lambda!123531)))

(declare-fun b_lambda!123533 () Bool)

(assert (= b_lambda!123515 (or (and b!4196445 b_free!122289) (and b!4196452 b_free!122293 (= (toChars!10249 (transformation!7690 (h!51513 rules!3843))) (toChars!10249 (transformation!7690 r!4142)))) (and b!4196476 b_free!122297 (= (toChars!10249 (transformation!7690 rBis!167)) (toChars!10249 (transformation!7690 r!4142)))) (and b!4197009 b_free!122305 (= (toChars!10249 (transformation!7690 (h!51513 (t!346528 rules!3843)))) (toChars!10249 (transformation!7690 r!4142)))) b_lambda!123533)))

(check-sat (not d!1237642) (not d!1237640) (not b!4196997) (not b!4197018) (not b!4196561) (not b!4196669) b_and!329195 (not b_lambda!123527) (not b!4196697) (not b!4196670) (not b!4196964) (not b!4196808) (not b!4196630) (not d!1237588) b_and!329211 (not b!4196960) (not b!4196569) (not b_lambda!123529) (not b!4197012) (not d!1237614) b_and!329191 (not bm!292473) (not b_lambda!123531) (not d!1237678) (not b!4196560) (not b!4196555) b_and!329213 b_and!329215 (not b!4196961) (not b_next!123001) (not b_next!122995) (not b!4196701) (not b!4196492) (not b!4196668) (not d!1237618) (not b!4196567) (not d!1237720) (not b!4196693) (not b!4196850) (not d!1237750) (not b!4196977) (not b!4197016) (not b!4196574) (not b!4197010) (not b!4196995) (not b!4196965) (not b!4197007) (not d!1237746) (not b_next!122993) (not b!4196695) (not d!1237684) (not d!1237596) (not bm!292451) (not b!4196829) (not b!4196831) (not d!1237724) b_and!329207 (not b_lambda!123533) (not b!4196976) (not d!1237740) (not b!4197013) (not d!1237704) (not b!4196626) (not b!4196694) (not b!4196863) (not b!4196833) tp_is_empty!22153 (not b!4196983) (not b!4196967) (not b!4197008) (not b!4196699) (not d!1237590) (not b!4196971) (not d!1237696) (not b!4196836) (not b!4196698) (not b!4196559) (not b!4197017) (not b!4196859) (not b!4196861) (not b!4196623) (not b!4196830) b_and!329193 (not b!4196814) (not b!4196834) (not b!4196864) (not b!4196493) (not b!4196628) (not b!4196496) (not bm!292450) (not b!4196998) (not b!4196557) (not b!4196849) (not tb!251541) (not b!4196556) (not b!4196968) (not b!4196541) (not b!4196975) (not tb!251523) (not b!4196631) (not b!4196700) (not b!4196862) (not d!1237706) (not b!4196962) (not tb!251559) (not bm!292457) (not b!4196835) (not b!4196837) (not b_next!122997) (not d!1237742) (not b!4197014) (not b_next!123007) (not b!4196826) (not b_next!122999) (not d!1237754) (not d!1237592) (not b!4196622) (not b!4196969) (not b!4196482) (not d!1237616) (not b!4196966) (not d!1237644) (not d!1237638) (not b!4196996) (not b_next!122991) (not d!1237692) (not b!4196661) (not b!4196978) (not b_next!123009) b_and!329209 (not d!1237672) (not b!4196972))
(check-sat b_and!329195 b_and!329211 b_and!329191 (not b_next!122993) b_and!329207 b_and!329193 (not b_next!122997) (not b_next!123007) (not b_next!122999) (not b_next!122991) b_and!329213 b_and!329215 (not b_next!123001) (not b_next!122995) (not b_next!123009) b_and!329209)
