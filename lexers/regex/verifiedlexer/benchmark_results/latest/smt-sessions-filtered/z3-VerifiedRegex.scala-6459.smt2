; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!338186 () Bool)

(assert start!338186)

(declare-fun b!3628135 () Bool)

(declare-fun b_free!94793 () Bool)

(declare-fun b_next!95497 () Bool)

(assert (=> b!3628135 (= b_free!94793 (not b_next!95497))))

(declare-fun tp!1107733 () Bool)

(declare-fun b_and!265967 () Bool)

(assert (=> b!3628135 (= tp!1107733 b_and!265967)))

(declare-fun b_free!94795 () Bool)

(declare-fun b_next!95499 () Bool)

(assert (=> b!3628135 (= b_free!94795 (not b_next!95499))))

(declare-fun tp!1107746 () Bool)

(declare-fun b_and!265969 () Bool)

(assert (=> b!3628135 (= tp!1107746 b_and!265969)))

(declare-fun b!3628113 () Bool)

(declare-fun b_free!94797 () Bool)

(declare-fun b_next!95501 () Bool)

(assert (=> b!3628113 (= b_free!94797 (not b_next!95501))))

(declare-fun tp!1107745 () Bool)

(declare-fun b_and!265971 () Bool)

(assert (=> b!3628113 (= tp!1107745 b_and!265971)))

(declare-fun b_free!94799 () Bool)

(declare-fun b_next!95503 () Bool)

(assert (=> b!3628113 (= b_free!94799 (not b_next!95503))))

(declare-fun tp!1107739 () Bool)

(declare-fun b_and!265973 () Bool)

(assert (=> b!3628113 (= tp!1107739 b_and!265973)))

(declare-fun b!3628149 () Bool)

(declare-fun b_free!94801 () Bool)

(declare-fun b_next!95505 () Bool)

(assert (=> b!3628149 (= b_free!94801 (not b_next!95505))))

(declare-fun tp!1107732 () Bool)

(declare-fun b_and!265975 () Bool)

(assert (=> b!3628149 (= tp!1107732 b_and!265975)))

(declare-fun b_free!94803 () Bool)

(declare-fun b_next!95507 () Bool)

(assert (=> b!3628149 (= b_free!94803 (not b_next!95507))))

(declare-fun tp!1107742 () Bool)

(declare-fun b_and!265977 () Bool)

(assert (=> b!3628149 (= tp!1107742 b_and!265977)))

(declare-fun b!3628109 () Bool)

(declare-fun b_free!94805 () Bool)

(declare-fun b_next!95509 () Bool)

(assert (=> b!3628109 (= b_free!94805 (not b_next!95509))))

(declare-fun tp!1107744 () Bool)

(declare-fun b_and!265979 () Bool)

(assert (=> b!3628109 (= tp!1107744 b_and!265979)))

(declare-fun b_free!94807 () Bool)

(declare-fun b_next!95511 () Bool)

(assert (=> b!3628109 (= b_free!94807 (not b_next!95511))))

(declare-fun tp!1107734 () Bool)

(declare-fun b_and!265981 () Bool)

(assert (=> b!3628109 (= tp!1107734 b_and!265981)))

(declare-fun bm!262410 () Bool)

(declare-fun call!262416 () Bool)

(declare-datatypes ((C!21100 0))(
  ( (C!21101 (val!12598 Int)) )
))
(declare-datatypes ((List!38347 0))(
  ( (Nil!38223) (Cons!38223 (h!43643 C!21100) (t!294922 List!38347)) )
))
(declare-fun call!262419 () List!38347)

(declare-fun lt!1254785 () C!21100)

(declare-fun contains!7461 (List!38347 C!21100) Bool)

(assert (=> bm!262410 (= call!262416 (contains!7461 call!262419 lt!1254785))))

(declare-fun tp!1107738 () Bool)

(declare-fun b!3628107 () Bool)

(declare-datatypes ((List!38348 0))(
  ( (Nil!38224) (Cons!38224 (h!43644 (_ BitVec 16)) (t!294923 List!38348)) )
))
(declare-datatypes ((TokenValue!5928 0))(
  ( (FloatLiteralValue!11856 (text!41941 List!38348)) (TokenValueExt!5927 (__x!24073 Int)) (Broken!29640 (value!182827 List!38348)) (Object!6051) (End!5928) (Def!5928) (Underscore!5928) (Match!5928) (Else!5928) (Error!5928) (Case!5928) (If!5928) (Extends!5928) (Abstract!5928) (Class!5928) (Val!5928) (DelimiterValue!11856 (del!5988 List!38348)) (KeywordValue!5934 (value!182828 List!38348)) (CommentValue!11856 (value!182829 List!38348)) (WhitespaceValue!11856 (value!182830 List!38348)) (IndentationValue!5928 (value!182831 List!38348)) (String!42973) (Int32!5928) (Broken!29641 (value!182832 List!38348)) (Boolean!5929) (Unit!55006) (OperatorValue!5931 (op!5988 List!38348)) (IdentifierValue!11856 (value!182833 List!38348)) (IdentifierValue!11857 (value!182834 List!38348)) (WhitespaceValue!11857 (value!182835 List!38348)) (True!11856) (False!11856) (Broken!29642 (value!182836 List!38348)) (Broken!29643 (value!182837 List!38348)) (True!11857) (RightBrace!5928) (RightBracket!5928) (Colon!5928) (Null!5928) (Comma!5928) (LeftBracket!5928) (False!11857) (LeftBrace!5928) (ImaginaryLiteralValue!5928 (text!41942 List!38348)) (StringLiteralValue!17784 (value!182838 List!38348)) (EOFValue!5928 (value!182839 List!38348)) (IdentValue!5928 (value!182840 List!38348)) (DelimiterValue!11857 (value!182841 List!38348)) (DedentValue!5928 (value!182842 List!38348)) (NewLineValue!5928 (value!182843 List!38348)) (IntegerValue!17784 (value!182844 (_ BitVec 32)) (text!41943 List!38348)) (IntegerValue!17785 (value!182845 Int) (text!41944 List!38348)) (Times!5928) (Or!5928) (Equal!5928) (Minus!5928) (Broken!29644 (value!182846 List!38348)) (And!5928) (Div!5928) (LessEqual!5928) (Mod!5928) (Concat!16385) (Not!5928) (Plus!5928) (SpaceValue!5928 (value!182847 List!38348)) (IntegerValue!17786 (value!182848 Int) (text!41945 List!38348)) (StringLiteralValue!17785 (text!41946 List!38348)) (FloatLiteralValue!11857 (text!41947 List!38348)) (BytesLiteralValue!5928 (value!182849 List!38348)) (CommentValue!11857 (value!182850 List!38348)) (StringLiteralValue!17786 (value!182851 List!38348)) (ErrorTokenValue!5928 (msg!5989 List!38348)) )
))
(declare-datatypes ((Regex!10457 0))(
  ( (ElementMatch!10457 (c!627702 C!21100)) (Concat!16386 (regOne!21426 Regex!10457) (regTwo!21426 Regex!10457)) (EmptyExpr!10457) (Star!10457 (reg!10786 Regex!10457)) (EmptyLang!10457) (Union!10457 (regOne!21427 Regex!10457) (regTwo!21427 Regex!10457)) )
))
(declare-datatypes ((String!42974 0))(
  ( (String!42975 (value!182852 String)) )
))
(declare-datatypes ((IArray!23327 0))(
  ( (IArray!23328 (innerList!11721 List!38347)) )
))
(declare-datatypes ((Conc!11661 0))(
  ( (Node!11661 (left!29840 Conc!11661) (right!30170 Conc!11661) (csize!23552 Int) (cheight!11872 Int)) (Leaf!18121 (xs!14863 IArray!23327) (csize!23553 Int)) (Empty!11661) )
))
(declare-datatypes ((BalanceConc!22936 0))(
  ( (BalanceConc!22937 (c!627703 Conc!11661)) )
))
(declare-datatypes ((TokenValueInjection!11284 0))(
  ( (TokenValueInjection!11285 (toValue!7986 Int) (toChars!7845 Int)) )
))
(declare-datatypes ((Rule!11196 0))(
  ( (Rule!11197 (regex!5698 Regex!10457) (tag!6426 String!42974) (isSeparator!5698 Bool) (transformation!5698 TokenValueInjection!11284)) )
))
(declare-datatypes ((Token!10762 0))(
  ( (Token!10763 (value!182853 TokenValue!5928) (rule!8468 Rule!11196) (size!29163 Int) (originalCharacters!6412 List!38347)) )
))
(declare-fun token!511 () Token!10762)

(declare-fun e!2245796 () Bool)

(declare-fun e!2245803 () Bool)

(declare-fun inv!21 (TokenValue!5928) Bool)

(assert (=> b!3628107 (= e!2245803 (and (inv!21 (value!182853 token!511)) e!2245796 tp!1107738))))

(declare-fun b!3628108 () Bool)

(declare-fun e!2245802 () Bool)

(declare-fun e!2245806 () Bool)

(assert (=> b!3628108 (= e!2245802 e!2245806)))

(declare-fun res!1469013 () Bool)

(assert (=> b!3628108 (=> (not res!1469013) (not e!2245806))))

(declare-datatypes ((tuple2!38100 0))(
  ( (tuple2!38101 (_1!22184 Token!10762) (_2!22184 List!38347)) )
))
(declare-fun lt!1254783 () tuple2!38100)

(assert (=> b!3628108 (= res!1469013 (= (_1!22184 lt!1254783) token!511))))

(declare-datatypes ((Option!8026 0))(
  ( (None!8025) (Some!8025 (v!37811 tuple2!38100)) )
))
(declare-fun lt!1254776 () Option!8026)

(declare-fun get!12485 (Option!8026) tuple2!38100)

(assert (=> b!3628108 (= lt!1254783 (get!12485 lt!1254776))))

(declare-fun e!2245789 () Bool)

(assert (=> b!3628109 (= e!2245789 (and tp!1107744 tp!1107734))))

(declare-fun b!3628110 () Bool)

(declare-fun res!1469014 () Bool)

(declare-fun e!2245794 () Bool)

(assert (=> b!3628110 (=> res!1469014 e!2245794)))

(declare-datatypes ((List!38349 0))(
  ( (Nil!38225) (Cons!38225 (h!43645 Rule!11196) (t!294924 List!38349)) )
))
(declare-fun rules!3307 () List!38349)

(declare-fun sepAndNonSepRulesDisjointChars!1868 (List!38349 List!38349) Bool)

(assert (=> b!3628110 (= res!1469014 (not (sepAndNonSepRulesDisjointChars!1868 rules!3307 rules!3307)))))

(declare-fun bm!262411 () Bool)

(declare-fun call!262415 () List!38347)

(declare-fun lt!1254780 () tuple2!38100)

(declare-fun usedCharacters!912 (Regex!10457) List!38347)

(assert (=> bm!262411 (= call!262415 (usedCharacters!912 (regex!5698 (rule!8468 (_1!22184 lt!1254780)))))))

(declare-fun b!3628111 () Bool)

(declare-fun e!2245785 () Bool)

(assert (=> b!3628111 (= e!2245806 (not e!2245785))))

(declare-fun res!1469007 () Bool)

(assert (=> b!3628111 (=> res!1469007 e!2245785)))

(declare-fun rule!403 () Rule!11196)

(declare-fun lt!1254811 () List!38347)

(declare-fun matchR!5026 (Regex!10457 List!38347) Bool)

(assert (=> b!3628111 (= res!1469007 (not (matchR!5026 (regex!5698 rule!403) lt!1254811)))))

(declare-datatypes ((LexerInterface!5287 0))(
  ( (LexerInterfaceExt!5284 (__x!24074 Int)) (Lexer!5285) )
))
(declare-fun thiss!23823 () LexerInterface!5287)

(declare-fun ruleValid!1963 (LexerInterface!5287 Rule!11196) Bool)

(assert (=> b!3628111 (ruleValid!1963 thiss!23823 rule!403)))

(declare-datatypes ((Unit!55007 0))(
  ( (Unit!55008) )
))
(declare-fun lt!1254779 () Unit!55007)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1118 (LexerInterface!5287 Rule!11196 List!38349) Unit!55007)

(assert (=> b!3628111 (= lt!1254779 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1118 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3628112 () Bool)

(declare-fun e!2245805 () Bool)

(assert (=> b!3628112 (= e!2245805 e!2245802)))

(declare-fun res!1468995 () Bool)

(assert (=> b!3628112 (=> (not res!1468995) (not e!2245802))))

(declare-fun isDefined!6258 (Option!8026) Bool)

(assert (=> b!3628112 (= res!1468995 (isDefined!6258 lt!1254776))))

(declare-fun maxPrefix!2821 (LexerInterface!5287 List!38349 List!38347) Option!8026)

(assert (=> b!3628112 (= lt!1254776 (maxPrefix!2821 thiss!23823 rules!3307 lt!1254811))))

(declare-fun lt!1254810 () BalanceConc!22936)

(declare-fun list!14122 (BalanceConc!22936) List!38347)

(assert (=> b!3628112 (= lt!1254811 (list!14122 lt!1254810))))

(declare-fun charsOf!3712 (Token!10762) BalanceConc!22936)

(assert (=> b!3628112 (= lt!1254810 (charsOf!3712 token!511))))

(declare-fun e!2245808 () Bool)

(assert (=> b!3628113 (= e!2245808 (and tp!1107745 tp!1107739))))

(declare-fun b!3628114 () Bool)

(assert (=> b!3628114 (= e!2245785 e!2245794)))

(declare-fun res!1469001 () Bool)

(assert (=> b!3628114 (=> res!1469001 e!2245794)))

(declare-fun lt!1254791 () List!38347)

(declare-fun lt!1254790 () C!21100)

(assert (=> b!3628114 (= res!1469001 (contains!7461 lt!1254791 lt!1254790))))

(declare-fun suffix!1395 () List!38347)

(declare-fun head!7678 (List!38347) C!21100)

(assert (=> b!3628114 (= lt!1254790 (head!7678 suffix!1395))))

(assert (=> b!3628114 (= lt!1254791 (usedCharacters!912 (regex!5698 rule!403)))))

(declare-fun b!3628115 () Bool)

(declare-fun res!1469009 () Bool)

(assert (=> b!3628115 (=> res!1469009 e!2245785)))

(declare-fun isEmpty!22604 (List!38347) Bool)

(assert (=> b!3628115 (= res!1469009 (isEmpty!22604 suffix!1395))))

(declare-fun b!3628116 () Bool)

(declare-fun res!1469005 () Bool)

(declare-fun e!2245799 () Bool)

(assert (=> b!3628116 (=> res!1469005 e!2245799)))

(declare-fun lt!1254815 () List!38347)

(assert (=> b!3628116 (= res!1469005 (not (matchR!5026 (regex!5698 (rule!8468 (_1!22184 lt!1254780))) lt!1254815)))))

(declare-fun b!3628117 () Bool)

(assert (=> b!3628117 false))

(declare-fun lt!1254782 () Unit!55007)

(declare-fun call!262417 () Unit!55007)

(assert (=> b!3628117 (= lt!1254782 call!262417)))

(declare-fun call!262420 () Bool)

(assert (=> b!3628117 (not call!262420)))

(declare-fun lt!1254781 () Unit!55007)

(declare-fun anOtherTypeRule!33 () Rule!11196)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!266 (LexerInterface!5287 List!38349 List!38349 Rule!11196 Rule!11196 C!21100) Unit!55007)

(assert (=> b!3628117 (= lt!1254781 (lemmaSepRuleNotContainsCharContainedInANonSepRule!266 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8468 (_1!22184 lt!1254780)) lt!1254790))))

(declare-fun e!2245788 () Unit!55007)

(declare-fun Unit!55009 () Unit!55007)

(assert (=> b!3628117 (= e!2245788 Unit!55009)))

(declare-fun b!3628118 () Bool)

(declare-fun e!2245810 () Unit!55007)

(declare-fun Unit!55010 () Unit!55007)

(assert (=> b!3628118 (= e!2245810 Unit!55010)))

(declare-fun lt!1254809 () Unit!55007)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!670 (Regex!10457 List!38347 C!21100) Unit!55007)

(assert (=> b!3628118 (= lt!1254809 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!670 (regex!5698 rule!403) lt!1254811 lt!1254785))))

(assert (=> b!3628118 false))

(declare-fun b!3628119 () Bool)

(declare-fun Unit!55011 () Unit!55007)

(assert (=> b!3628119 (= e!2245810 Unit!55011)))

(declare-fun b!3628120 () Bool)

(assert (=> b!3628120 false))

(declare-fun lt!1254788 () Unit!55007)

(declare-fun call!262418 () Unit!55007)

(assert (=> b!3628120 (= lt!1254788 call!262418)))

(assert (=> b!3628120 (not call!262416)))

(declare-fun lt!1254804 () Unit!55007)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!384 (LexerInterface!5287 List!38349 List!38349 Rule!11196 Rule!11196 C!21100) Unit!55007)

(assert (=> b!3628120 (= lt!1254804 (lemmaNonSepRuleNotContainsCharContainedInASepRule!384 thiss!23823 rules!3307 rules!3307 (rule!8468 (_1!22184 lt!1254780)) rule!403 lt!1254785))))

(declare-fun e!2245795 () Unit!55007)

(declare-fun Unit!55012 () Unit!55007)

(assert (=> b!3628120 (= e!2245795 Unit!55012)))

(declare-fun bm!262412 () Bool)

(assert (=> bm!262412 (= call!262418 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!670 (regex!5698 (rule!8468 (_1!22184 lt!1254780))) lt!1254815 lt!1254785))))

(declare-fun b!3628121 () Bool)

(declare-fun e!2245816 () Unit!55007)

(declare-fun Unit!55013 () Unit!55007)

(assert (=> b!3628121 (= e!2245816 Unit!55013)))

(declare-fun tp!1107737 () Bool)

(declare-fun e!2245793 () Bool)

(declare-fun e!2245809 () Bool)

(declare-fun b!3628122 () Bool)

(declare-fun inv!51631 (String!42974) Bool)

(declare-fun inv!51634 (TokenValueInjection!11284) Bool)

(assert (=> b!3628122 (= e!2245793 (and tp!1107737 (inv!51631 (tag!6426 (h!43645 rules!3307))) (inv!51634 (transformation!5698 (h!43645 rules!3307))) e!2245809))))

(declare-fun b!3628123 () Bool)

(declare-fun e!2245801 () Bool)

(declare-fun tp_is_empty!17997 () Bool)

(declare-fun tp!1107736 () Bool)

(assert (=> b!3628123 (= e!2245801 (and tp_is_empty!17997 tp!1107736))))

(declare-fun b!3628125 () Bool)

(assert (=> b!3628125 false))

(declare-fun lt!1254808 () Unit!55007)

(assert (=> b!3628125 (= lt!1254808 call!262417)))

(assert (=> b!3628125 (not call!262420)))

(declare-fun lt!1254802 () Unit!55007)

(assert (=> b!3628125 (= lt!1254802 (lemmaNonSepRuleNotContainsCharContainedInASepRule!384 thiss!23823 rules!3307 rules!3307 (rule!8468 (_1!22184 lt!1254780)) anOtherTypeRule!33 lt!1254790))))

(declare-fun Unit!55014 () Unit!55007)

(assert (=> b!3628125 (= e!2245788 Unit!55014)))

(declare-fun b!3628126 () Bool)

(declare-fun e!2245815 () Bool)

(assert (=> b!3628126 (= e!2245799 e!2245815)))

(declare-fun res!1469000 () Bool)

(assert (=> b!3628126 (=> res!1469000 e!2245815)))

(declare-fun lt!1254774 () Option!8026)

(declare-fun lt!1254792 () TokenValue!5928)

(declare-fun lt!1254777 () Int)

(assert (=> b!3628126 (= res!1469000 (not (= lt!1254774 (Some!8025 (tuple2!38101 (Token!10763 lt!1254792 (rule!8468 (_1!22184 lt!1254780)) lt!1254777 lt!1254815) (_2!22184 lt!1254780))))))))

(declare-fun lt!1254772 () BalanceConc!22936)

(declare-fun size!29164 (BalanceConc!22936) Int)

(assert (=> b!3628126 (= lt!1254777 (size!29164 lt!1254772))))

(declare-fun apply!9200 (TokenValueInjection!11284 BalanceConc!22936) TokenValue!5928)

(assert (=> b!3628126 (= lt!1254792 (apply!9200 (transformation!5698 (rule!8468 (_1!22184 lt!1254780))) lt!1254772))))

(declare-fun lt!1254803 () Unit!55007)

(declare-fun lemmaCharactersSize!745 (Token!10762) Unit!55007)

(assert (=> b!3628126 (= lt!1254803 (lemmaCharactersSize!745 (_1!22184 lt!1254780)))))

(declare-fun lt!1254806 () Unit!55007)

(declare-fun lemmaEqSameImage!883 (TokenValueInjection!11284 BalanceConc!22936 BalanceConc!22936) Unit!55007)

(declare-fun seqFromList!4247 (List!38347) BalanceConc!22936)

(assert (=> b!3628126 (= lt!1254806 (lemmaEqSameImage!883 (transformation!5698 (rule!8468 (_1!22184 lt!1254780))) lt!1254772 (seqFromList!4247 (originalCharacters!6412 (_1!22184 lt!1254780)))))))

(declare-fun lt!1254786 () Unit!55007)

(declare-fun lemmaSemiInverse!1449 (TokenValueInjection!11284 BalanceConc!22936) Unit!55007)

(assert (=> b!3628126 (= lt!1254786 (lemmaSemiInverse!1449 (transformation!5698 (rule!8468 (_1!22184 lt!1254780))) lt!1254772))))

(declare-fun tp!1107741 () Bool)

(declare-fun b!3628124 () Bool)

(declare-fun e!2245791 () Bool)

(assert (=> b!3628124 (= e!2245796 (and tp!1107741 (inv!51631 (tag!6426 (rule!8468 token!511))) (inv!51634 (transformation!5698 (rule!8468 token!511))) e!2245791))))

(declare-fun res!1468999 () Bool)

(assert (=> start!338186 (=> (not res!1468999) (not e!2245805))))

(get-info :version)

(assert (=> start!338186 (= res!1468999 ((_ is Lexer!5285) thiss!23823))))

(assert (=> start!338186 e!2245805))

(declare-fun e!2245792 () Bool)

(assert (=> start!338186 e!2245792))

(assert (=> start!338186 e!2245801))

(assert (=> start!338186 true))

(declare-fun inv!51635 (Token!10762) Bool)

(assert (=> start!338186 (and (inv!51635 token!511) e!2245803)))

(declare-fun e!2245798 () Bool)

(assert (=> start!338186 e!2245798))

(declare-fun e!2245807 () Bool)

(assert (=> start!338186 e!2245807))

(declare-fun b!3628127 () Bool)

(declare-fun res!1469008 () Bool)

(assert (=> b!3628127 (=> res!1469008 e!2245794)))

(assert (=> b!3628127 (= res!1469008 (not (contains!7461 (usedCharacters!912 (regex!5698 anOtherTypeRule!33)) lt!1254790)))))

(declare-fun b!3628128 () Bool)

(declare-fun e!2245797 () Bool)

(declare-fun e!2245812 () Bool)

(assert (=> b!3628128 (= e!2245797 e!2245812)))

(declare-fun res!1468997 () Bool)

(assert (=> b!3628128 (=> (not res!1468997) (not e!2245812))))

(declare-fun lt!1254789 () Rule!11196)

(assert (=> b!3628128 (= res!1468997 (matchR!5026 (regex!5698 lt!1254789) (list!14122 (charsOf!3712 (_1!22184 lt!1254780)))))))

(declare-datatypes ((Option!8027 0))(
  ( (None!8026) (Some!8026 (v!37812 Rule!11196)) )
))
(declare-fun lt!1254818 () Option!8027)

(declare-fun get!12486 (Option!8027) Rule!11196)

(assert (=> b!3628128 (= lt!1254789 (get!12486 lt!1254818))))

(declare-fun b!3628129 () Bool)

(declare-fun res!1469010 () Bool)

(assert (=> b!3628129 (=> (not res!1469010) (not e!2245805))))

(declare-fun contains!7462 (List!38349 Rule!11196) Bool)

(assert (=> b!3628129 (= res!1469010 (contains!7462 rules!3307 anOtherTypeRule!33))))

(declare-fun tp!1107743 () Bool)

(declare-fun b!3628130 () Bool)

(assert (=> b!3628130 (= e!2245798 (and tp!1107743 (inv!51631 (tag!6426 rule!403)) (inv!51634 (transformation!5698 rule!403)) e!2245808))))

(declare-fun b!3628131 () Bool)

(declare-fun tp!1107740 () Bool)

(assert (=> b!3628131 (= e!2245807 (and tp!1107740 (inv!51631 (tag!6426 anOtherTypeRule!33)) (inv!51634 (transformation!5698 anOtherTypeRule!33)) e!2245789))))

(declare-fun b!3628132 () Bool)

(declare-fun res!1469011 () Bool)

(assert (=> b!3628132 (=> (not res!1469011) (not e!2245805))))

(declare-fun rulesInvariant!4684 (LexerInterface!5287 List!38349) Bool)

(assert (=> b!3628132 (= res!1469011 (rulesInvariant!4684 thiss!23823 rules!3307))))

(declare-fun b!3628133 () Bool)

(declare-fun e!2245804 () Unit!55007)

(declare-fun Unit!55015 () Unit!55007)

(assert (=> b!3628133 (= e!2245804 Unit!55015)))

(declare-fun lt!1254778 () Unit!55007)

(declare-fun lt!1254817 () List!38347)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!326 (LexerInterface!5287 List!38349 Rule!11196 List!38347 List!38347 List!38347 Rule!11196) Unit!55007)

(assert (=> b!3628133 (= lt!1254778 (lemmaMaxPrefixOutputsMaxPrefix!326 thiss!23823 rules!3307 (rule!8468 (_1!22184 lt!1254780)) lt!1254815 lt!1254817 lt!1254811 rule!403))))

(assert (=> b!3628133 false))

(declare-fun b!3628134 () Bool)

(assert (=> b!3628134 false))

(declare-fun lt!1254816 () Unit!55007)

(assert (=> b!3628134 (= lt!1254816 call!262418)))

(assert (=> b!3628134 (not call!262416)))

(declare-fun lt!1254773 () Unit!55007)

(assert (=> b!3628134 (= lt!1254773 (lemmaSepRuleNotContainsCharContainedInANonSepRule!266 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8468 (_1!22184 lt!1254780)) lt!1254785))))

(declare-fun Unit!55016 () Unit!55007)

(assert (=> b!3628134 (= e!2245816 Unit!55016)))

(assert (=> b!3628135 (= e!2245809 (and tp!1107733 tp!1107746))))

(declare-fun b!3628136 () Bool)

(declare-fun e!2245787 () Unit!55007)

(assert (=> b!3628136 (= e!2245787 e!2245788)))

(declare-fun lt!1254813 () Unit!55007)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!56 (List!38347 List!38347 List!38347 List!38347) Unit!55007)

(assert (=> b!3628136 (= lt!1254813 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!56 lt!1254811 suffix!1395 lt!1254815 lt!1254817))))

(assert (=> b!3628136 (contains!7461 lt!1254815 lt!1254790)))

(declare-fun c!627698 () Bool)

(assert (=> b!3628136 (= c!627698 (isSeparator!5698 rule!403))))

(declare-fun b!3628137 () Bool)

(declare-fun tp!1107735 () Bool)

(assert (=> b!3628137 (= e!2245792 (and e!2245793 tp!1107735))))

(declare-fun b!3628138 () Bool)

(declare-fun e!2245811 () Bool)

(assert (=> b!3628138 (= e!2245815 e!2245811)))

(declare-fun res!1469003 () Bool)

(assert (=> b!3628138 (=> res!1469003 e!2245811)))

(declare-fun lt!1254805 () Option!8026)

(declare-fun lt!1254807 () List!38347)

(assert (=> b!3628138 (= res!1469003 (or (not (= lt!1254807 (_2!22184 lt!1254780))) (not (= lt!1254805 (Some!8025 (tuple2!38101 (_1!22184 lt!1254780) lt!1254807))))))))

(assert (=> b!3628138 (= (_2!22184 lt!1254780) lt!1254807)))

(declare-fun lt!1254784 () Unit!55007)

(declare-fun lemmaSamePrefixThenSameSuffix!1408 (List!38347 List!38347 List!38347 List!38347 List!38347) Unit!55007)

(assert (=> b!3628138 (= lt!1254784 (lemmaSamePrefixThenSameSuffix!1408 lt!1254815 (_2!22184 lt!1254780) lt!1254815 lt!1254807 lt!1254817))))

(declare-fun getSuffix!1628 (List!38347 List!38347) List!38347)

(assert (=> b!3628138 (= lt!1254807 (getSuffix!1628 lt!1254817 lt!1254815))))

(declare-fun lt!1254814 () TokenValue!5928)

(declare-fun lt!1254799 () Int)

(assert (=> b!3628138 (= lt!1254805 (Some!8025 (tuple2!38101 (Token!10763 lt!1254814 (rule!8468 (_1!22184 lt!1254780)) lt!1254799 lt!1254815) (_2!22184 lt!1254780))))))

(declare-fun maxPrefixOneRule!1961 (LexerInterface!5287 Rule!11196 List!38347) Option!8026)

(assert (=> b!3628138 (= lt!1254805 (maxPrefixOneRule!1961 thiss!23823 (rule!8468 (_1!22184 lt!1254780)) lt!1254817))))

(declare-fun size!29165 (List!38347) Int)

(assert (=> b!3628138 (= lt!1254799 (size!29165 lt!1254815))))

(assert (=> b!3628138 (= lt!1254814 (apply!9200 (transformation!5698 (rule!8468 (_1!22184 lt!1254780))) (seqFromList!4247 lt!1254815)))))

(declare-fun lt!1254793 () Unit!55007)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1029 (LexerInterface!5287 List!38349 List!38347 List!38347 List!38347 Rule!11196) Unit!55007)

(assert (=> b!3628138 (= lt!1254793 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1029 thiss!23823 rules!3307 lt!1254815 lt!1254817 (_2!22184 lt!1254780) (rule!8468 (_1!22184 lt!1254780))))))

(declare-fun b!3628139 () Bool)

(declare-fun e!2245786 () Unit!55007)

(assert (=> b!3628139 (= e!2245786 e!2245795)))

(declare-fun c!627699 () Bool)

(assert (=> b!3628139 (= c!627699 (not (isSeparator!5698 (rule!8468 (_1!22184 lt!1254780)))))))

(declare-fun b!3628140 () Bool)

(assert (=> b!3628140 (= e!2245812 (= (rule!8468 (_1!22184 lt!1254780)) lt!1254789))))

(declare-fun b!3628141 () Bool)

(declare-fun res!1468996 () Bool)

(assert (=> b!3628141 (=> (not res!1468996) (not e!2245805))))

(declare-fun isEmpty!22605 (List!38349) Bool)

(assert (=> b!3628141 (= res!1468996 (not (isEmpty!22605 rules!3307)))))

(declare-fun b!3628142 () Bool)

(declare-fun Unit!55017 () Unit!55007)

(assert (=> b!3628142 (= e!2245804 Unit!55017)))

(declare-fun b!3628143 () Bool)

(declare-fun Unit!55018 () Unit!55007)

(assert (=> b!3628143 (= e!2245787 Unit!55018)))

(declare-fun b!3628144 () Bool)

(assert (=> b!3628144 (= e!2245794 e!2245799)))

(declare-fun res!1469012 () Bool)

(assert (=> b!3628144 (=> res!1469012 e!2245799)))

(declare-fun isPrefix!3061 (List!38347 List!38347) Bool)

(assert (=> b!3628144 (= res!1469012 (not (isPrefix!3061 lt!1254815 lt!1254817)))))

(declare-fun ++!9514 (List!38347 List!38347) List!38347)

(assert (=> b!3628144 (isPrefix!3061 lt!1254815 (++!9514 lt!1254815 (_2!22184 lt!1254780)))))

(declare-fun lt!1254797 () Unit!55007)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1982 (List!38347 List!38347) Unit!55007)

(assert (=> b!3628144 (= lt!1254797 (lemmaConcatTwoListThenFirstIsPrefix!1982 lt!1254815 (_2!22184 lt!1254780)))))

(assert (=> b!3628144 (= lt!1254815 (list!14122 lt!1254772))))

(assert (=> b!3628144 (= lt!1254772 (charsOf!3712 (_1!22184 lt!1254780)))))

(assert (=> b!3628144 e!2245797))

(declare-fun res!1469004 () Bool)

(assert (=> b!3628144 (=> (not res!1469004) (not e!2245797))))

(declare-fun isDefined!6259 (Option!8027) Bool)

(assert (=> b!3628144 (= res!1469004 (isDefined!6259 lt!1254818))))

(declare-fun getRuleFromTag!1304 (LexerInterface!5287 List!38349 String!42974) Option!8027)

(assert (=> b!3628144 (= lt!1254818 (getRuleFromTag!1304 thiss!23823 rules!3307 (tag!6426 (rule!8468 (_1!22184 lt!1254780)))))))

(declare-fun lt!1254812 () Unit!55007)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1304 (LexerInterface!5287 List!38349 List!38347 Token!10762) Unit!55007)

(assert (=> b!3628144 (= lt!1254812 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1304 thiss!23823 rules!3307 lt!1254817 (_1!22184 lt!1254780)))))

(assert (=> b!3628144 (= lt!1254780 (get!12485 lt!1254774))))

(declare-fun lt!1254794 () Unit!55007)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!967 (LexerInterface!5287 List!38349 List!38347 List!38347) Unit!55007)

(assert (=> b!3628144 (= lt!1254794 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!967 thiss!23823 rules!3307 lt!1254811 suffix!1395))))

(assert (=> b!3628144 (= lt!1254774 (maxPrefix!2821 thiss!23823 rules!3307 lt!1254817))))

(assert (=> b!3628144 (isPrefix!3061 lt!1254811 lt!1254817)))

(declare-fun lt!1254775 () Unit!55007)

(assert (=> b!3628144 (= lt!1254775 (lemmaConcatTwoListThenFirstIsPrefix!1982 lt!1254811 suffix!1395))))

(assert (=> b!3628144 (= lt!1254817 (++!9514 lt!1254811 suffix!1395))))

(declare-fun bm!262413 () Bool)

(assert (=> bm!262413 (= call!262419 (usedCharacters!912 (regex!5698 (rule!8468 (_1!22184 lt!1254780)))))))

(declare-fun b!3628145 () Bool)

(assert (=> b!3628145 (= e!2245786 e!2245816)))

(declare-fun c!627701 () Bool)

(assert (=> b!3628145 (= c!627701 (isSeparator!5698 (rule!8468 (_1!22184 lt!1254780))))))

(declare-fun b!3628146 () Bool)

(declare-fun res!1469006 () Bool)

(assert (=> b!3628146 (=> (not res!1469006) (not e!2245806))))

(assert (=> b!3628146 (= res!1469006 (isEmpty!22604 (_2!22184 lt!1254783)))))

(declare-fun b!3628147 () Bool)

(assert (=> b!3628147 (= e!2245811 true)))

(assert (=> b!3628147 (= lt!1254815 lt!1254811)))

(declare-fun lt!1254787 () Unit!55007)

(declare-fun lemmaIsPrefixSameLengthThenSameList!615 (List!38347 List!38347 List!38347) Unit!55007)

(assert (=> b!3628147 (= lt!1254787 (lemmaIsPrefixSameLengthThenSameList!615 lt!1254815 lt!1254811 lt!1254817))))

(declare-fun lt!1254800 () Unit!55007)

(assert (=> b!3628147 (= lt!1254800 e!2245804)))

(declare-fun c!627695 () Bool)

(declare-fun lt!1254798 () Int)

(assert (=> b!3628147 (= c!627695 (< lt!1254777 lt!1254798))))

(declare-fun lt!1254796 () Unit!55007)

(assert (=> b!3628147 (= lt!1254796 e!2245787)))

(declare-fun c!627696 () Bool)

(assert (=> b!3628147 (= c!627696 (> lt!1254777 lt!1254798))))

(assert (=> b!3628147 (= lt!1254798 (size!29164 lt!1254810))))

(declare-fun lt!1254795 () Unit!55007)

(assert (=> b!3628147 (= lt!1254795 e!2245786)))

(declare-fun c!627700 () Bool)

(assert (=> b!3628147 (= c!627700 (isSeparator!5698 rule!403))))

(declare-fun lt!1254801 () Unit!55007)

(assert (=> b!3628147 (= lt!1254801 e!2245810)))

(declare-fun c!627697 () Bool)

(assert (=> b!3628147 (= c!627697 (not (contains!7461 lt!1254791 lt!1254785)))))

(assert (=> b!3628147 (= lt!1254785 (head!7678 lt!1254815))))

(declare-fun b!3628148 () Bool)

(declare-fun res!1468998 () Bool)

(assert (=> b!3628148 (=> (not res!1468998) (not e!2245805))))

(assert (=> b!3628148 (= res!1468998 (not (= (isSeparator!5698 anOtherTypeRule!33) (isSeparator!5698 rule!403))))))

(assert (=> b!3628149 (= e!2245791 (and tp!1107732 tp!1107742))))

(declare-fun b!3628150 () Bool)

(declare-fun res!1469015 () Bool)

(assert (=> b!3628150 (=> (not res!1469015) (not e!2245805))))

(assert (=> b!3628150 (= res!1469015 (contains!7462 rules!3307 rule!403))))

(declare-fun bm!262414 () Bool)

(assert (=> bm!262414 (= call!262420 (contains!7461 call!262415 lt!1254790))))

(declare-fun b!3628151 () Bool)

(declare-fun res!1469002 () Bool)

(assert (=> b!3628151 (=> (not res!1469002) (not e!2245806))))

(assert (=> b!3628151 (= res!1469002 (= (rule!8468 token!511) rule!403))))

(declare-fun bm!262415 () Bool)

(assert (=> bm!262415 (= call!262417 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!670 (regex!5698 (rule!8468 (_1!22184 lt!1254780))) lt!1254815 lt!1254790))))

(declare-fun b!3628152 () Bool)

(declare-fun Unit!55019 () Unit!55007)

(assert (=> b!3628152 (= e!2245795 Unit!55019)))

(assert (= (and start!338186 res!1468999) b!3628141))

(assert (= (and b!3628141 res!1468996) b!3628132))

(assert (= (and b!3628132 res!1469011) b!3628150))

(assert (= (and b!3628150 res!1469015) b!3628129))

(assert (= (and b!3628129 res!1469010) b!3628148))

(assert (= (and b!3628148 res!1468998) b!3628112))

(assert (= (and b!3628112 res!1468995) b!3628108))

(assert (= (and b!3628108 res!1469013) b!3628146))

(assert (= (and b!3628146 res!1469006) b!3628151))

(assert (= (and b!3628151 res!1469002) b!3628111))

(assert (= (and b!3628111 (not res!1469007)) b!3628115))

(assert (= (and b!3628115 (not res!1469009)) b!3628114))

(assert (= (and b!3628114 (not res!1469001)) b!3628127))

(assert (= (and b!3628127 (not res!1469008)) b!3628110))

(assert (= (and b!3628110 (not res!1469014)) b!3628144))

(assert (= (and b!3628144 res!1469004) b!3628128))

(assert (= (and b!3628128 res!1468997) b!3628140))

(assert (= (and b!3628144 (not res!1469012)) b!3628116))

(assert (= (and b!3628116 (not res!1469005)) b!3628126))

(assert (= (and b!3628126 (not res!1469000)) b!3628138))

(assert (= (and b!3628138 (not res!1469003)) b!3628147))

(assert (= (and b!3628147 c!627697) b!3628118))

(assert (= (and b!3628147 (not c!627697)) b!3628119))

(assert (= (and b!3628147 c!627700) b!3628139))

(assert (= (and b!3628147 (not c!627700)) b!3628145))

(assert (= (and b!3628139 c!627699) b!3628120))

(assert (= (and b!3628139 (not c!627699)) b!3628152))

(assert (= (and b!3628145 c!627701) b!3628134))

(assert (= (and b!3628145 (not c!627701)) b!3628121))

(assert (= (or b!3628120 b!3628134) bm!262412))

(assert (= (or b!3628120 b!3628134) bm!262413))

(assert (= (or b!3628120 b!3628134) bm!262410))

(assert (= (and b!3628147 c!627696) b!3628136))

(assert (= (and b!3628147 (not c!627696)) b!3628143))

(assert (= (and b!3628136 c!627698) b!3628117))

(assert (= (and b!3628136 (not c!627698)) b!3628125))

(assert (= (or b!3628117 b!3628125) bm!262415))

(assert (= (or b!3628117 b!3628125) bm!262411))

(assert (= (or b!3628117 b!3628125) bm!262414))

(assert (= (and b!3628147 c!627695) b!3628133))

(assert (= (and b!3628147 (not c!627695)) b!3628142))

(assert (= b!3628122 b!3628135))

(assert (= b!3628137 b!3628122))

(assert (= (and start!338186 ((_ is Cons!38225) rules!3307)) b!3628137))

(assert (= (and start!338186 ((_ is Cons!38223) suffix!1395)) b!3628123))

(assert (= b!3628124 b!3628149))

(assert (= b!3628107 b!3628124))

(assert (= start!338186 b!3628107))

(assert (= b!3628130 b!3628113))

(assert (= start!338186 b!3628130))

(assert (= b!3628131 b!3628109))

(assert (= start!338186 b!3628131))

(declare-fun m!4129071 () Bool)

(assert (=> bm!262413 m!4129071))

(declare-fun m!4129073 () Bool)

(assert (=> b!3628138 m!4129073))

(declare-fun m!4129075 () Bool)

(assert (=> b!3628138 m!4129075))

(declare-fun m!4129077 () Bool)

(assert (=> b!3628138 m!4129077))

(declare-fun m!4129079 () Bool)

(assert (=> b!3628138 m!4129079))

(assert (=> b!3628138 m!4129077))

(declare-fun m!4129081 () Bool)

(assert (=> b!3628138 m!4129081))

(declare-fun m!4129083 () Bool)

(assert (=> b!3628138 m!4129083))

(declare-fun m!4129085 () Bool)

(assert (=> b!3628138 m!4129085))

(declare-fun m!4129087 () Bool)

(assert (=> b!3628110 m!4129087))

(declare-fun m!4129089 () Bool)

(assert (=> bm!262415 m!4129089))

(declare-fun m!4129091 () Bool)

(assert (=> b!3628130 m!4129091))

(declare-fun m!4129093 () Bool)

(assert (=> b!3628130 m!4129093))

(declare-fun m!4129095 () Bool)

(assert (=> b!3628120 m!4129095))

(declare-fun m!4129097 () Bool)

(assert (=> b!3628134 m!4129097))

(declare-fun m!4129099 () Bool)

(assert (=> b!3628107 m!4129099))

(declare-fun m!4129101 () Bool)

(assert (=> b!3628128 m!4129101))

(assert (=> b!3628128 m!4129101))

(declare-fun m!4129103 () Bool)

(assert (=> b!3628128 m!4129103))

(assert (=> b!3628128 m!4129103))

(declare-fun m!4129105 () Bool)

(assert (=> b!3628128 m!4129105))

(declare-fun m!4129107 () Bool)

(assert (=> b!3628128 m!4129107))

(declare-fun m!4129109 () Bool)

(assert (=> b!3628122 m!4129109))

(declare-fun m!4129111 () Bool)

(assert (=> b!3628122 m!4129111))

(declare-fun m!4129113 () Bool)

(assert (=> b!3628144 m!4129113))

(declare-fun m!4129115 () Bool)

(assert (=> b!3628144 m!4129115))

(declare-fun m!4129117 () Bool)

(assert (=> b!3628144 m!4129117))

(declare-fun m!4129119 () Bool)

(assert (=> b!3628144 m!4129119))

(declare-fun m!4129121 () Bool)

(assert (=> b!3628144 m!4129121))

(declare-fun m!4129123 () Bool)

(assert (=> b!3628144 m!4129123))

(assert (=> b!3628144 m!4129101))

(declare-fun m!4129125 () Bool)

(assert (=> b!3628144 m!4129125))

(declare-fun m!4129127 () Bool)

(assert (=> b!3628144 m!4129127))

(declare-fun m!4129129 () Bool)

(assert (=> b!3628144 m!4129129))

(declare-fun m!4129131 () Bool)

(assert (=> b!3628144 m!4129131))

(declare-fun m!4129133 () Bool)

(assert (=> b!3628144 m!4129133))

(declare-fun m!4129135 () Bool)

(assert (=> b!3628144 m!4129135))

(declare-fun m!4129137 () Bool)

(assert (=> b!3628144 m!4129137))

(assert (=> b!3628144 m!4129133))

(declare-fun m!4129139 () Bool)

(assert (=> b!3628144 m!4129139))

(declare-fun m!4129141 () Bool)

(assert (=> b!3628114 m!4129141))

(declare-fun m!4129143 () Bool)

(assert (=> b!3628114 m!4129143))

(declare-fun m!4129145 () Bool)

(assert (=> b!3628114 m!4129145))

(declare-fun m!4129147 () Bool)

(assert (=> b!3628125 m!4129147))

(declare-fun m!4129149 () Bool)

(assert (=> b!3628136 m!4129149))

(declare-fun m!4129151 () Bool)

(assert (=> b!3628136 m!4129151))

(declare-fun m!4129153 () Bool)

(assert (=> b!3628133 m!4129153))

(declare-fun m!4129155 () Bool)

(assert (=> b!3628146 m!4129155))

(declare-fun m!4129157 () Bool)

(assert (=> bm!262414 m!4129157))

(declare-fun m!4129159 () Bool)

(assert (=> bm!262412 m!4129159))

(declare-fun m!4129161 () Bool)

(assert (=> b!3628117 m!4129161))

(declare-fun m!4129163 () Bool)

(assert (=> b!3628124 m!4129163))

(declare-fun m!4129165 () Bool)

(assert (=> b!3628124 m!4129165))

(declare-fun m!4129167 () Bool)

(assert (=> start!338186 m!4129167))

(declare-fun m!4129169 () Bool)

(assert (=> b!3628150 m!4129169))

(declare-fun m!4129171 () Bool)

(assert (=> b!3628112 m!4129171))

(declare-fun m!4129173 () Bool)

(assert (=> b!3628112 m!4129173))

(declare-fun m!4129175 () Bool)

(assert (=> b!3628112 m!4129175))

(declare-fun m!4129177 () Bool)

(assert (=> b!3628112 m!4129177))

(declare-fun m!4129179 () Bool)

(assert (=> b!3628116 m!4129179))

(declare-fun m!4129181 () Bool)

(assert (=> b!3628132 m!4129181))

(declare-fun m!4129183 () Bool)

(assert (=> b!3628127 m!4129183))

(assert (=> b!3628127 m!4129183))

(declare-fun m!4129185 () Bool)

(assert (=> b!3628127 m!4129185))

(declare-fun m!4129187 () Bool)

(assert (=> b!3628141 m!4129187))

(declare-fun m!4129189 () Bool)

(assert (=> b!3628111 m!4129189))

(declare-fun m!4129191 () Bool)

(assert (=> b!3628111 m!4129191))

(declare-fun m!4129193 () Bool)

(assert (=> b!3628111 m!4129193))

(declare-fun m!4129195 () Bool)

(assert (=> b!3628118 m!4129195))

(declare-fun m!4129197 () Bool)

(assert (=> b!3628131 m!4129197))

(declare-fun m!4129199 () Bool)

(assert (=> b!3628131 m!4129199))

(declare-fun m!4129201 () Bool)

(assert (=> b!3628129 m!4129201))

(declare-fun m!4129203 () Bool)

(assert (=> b!3628147 m!4129203))

(declare-fun m!4129205 () Bool)

(assert (=> b!3628147 m!4129205))

(declare-fun m!4129207 () Bool)

(assert (=> b!3628147 m!4129207))

(declare-fun m!4129209 () Bool)

(assert (=> b!3628147 m!4129209))

(declare-fun m!4129211 () Bool)

(assert (=> bm!262410 m!4129211))

(declare-fun m!4129213 () Bool)

(assert (=> b!3628115 m!4129213))

(assert (=> bm!262411 m!4129071))

(declare-fun m!4129215 () Bool)

(assert (=> b!3628126 m!4129215))

(declare-fun m!4129217 () Bool)

(assert (=> b!3628126 m!4129217))

(declare-fun m!4129219 () Bool)

(assert (=> b!3628126 m!4129219))

(declare-fun m!4129221 () Bool)

(assert (=> b!3628126 m!4129221))

(assert (=> b!3628126 m!4129219))

(declare-fun m!4129223 () Bool)

(assert (=> b!3628126 m!4129223))

(declare-fun m!4129225 () Bool)

(assert (=> b!3628126 m!4129225))

(declare-fun m!4129227 () Bool)

(assert (=> b!3628108 m!4129227))

(check-sat (not b!3628125) (not b_next!95503) b_and!265967 b_and!265971 (not b!3628115) (not b!3628129) (not b!3628147) (not bm!262410) (not b!3628116) (not b!3628146) b_and!265969 (not b!3628128) b_and!265977 (not b!3628127) (not b!3628124) (not b!3628132) (not b_next!95509) (not b_next!95497) (not b!3628123) (not b_next!95505) (not b!3628133) (not bm!262413) b_and!265981 tp_is_empty!17997 (not b!3628144) (not start!338186) (not b!3628141) (not b!3628118) (not b!3628126) b_and!265973 (not b!3628131) (not b_next!95499) b_and!265975 (not b!3628110) (not b!3628138) (not bm!262414) b_and!265979 (not b!3628120) (not b!3628130) (not b!3628136) (not b!3628112) (not bm!262411) (not b!3628134) (not b!3628137) (not b_next!95501) (not b!3628122) (not b!3628107) (not b!3628114) (not b!3628111) (not b!3628117) (not b_next!95511) (not bm!262412) (not bm!262415) (not b!3628150) (not b!3628108) (not b_next!95507))
(check-sat (not b_next!95503) b_and!265977 (not b_next!95505) b_and!265981 b_and!265967 b_and!265971 b_and!265973 (not b_next!95499) b_and!265975 b_and!265979 (not b_next!95501) (not b_next!95511) b_and!265969 (not b_next!95507) (not b_next!95509) (not b_next!95497))
