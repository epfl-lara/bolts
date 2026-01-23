; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!399598 () Bool)

(assert start!399598)

(declare-fun b!4187782 () Bool)

(declare-fun b_free!121823 () Bool)

(declare-fun b_next!122527 () Bool)

(assert (=> b!4187782 (= b_free!121823 (not b_next!122527))))

(declare-fun tp!1279706 () Bool)

(declare-fun b_and!328009 () Bool)

(assert (=> b!4187782 (= tp!1279706 b_and!328009)))

(declare-fun b_free!121825 () Bool)

(declare-fun b_next!122529 () Bool)

(assert (=> b!4187782 (= b_free!121825 (not b_next!122529))))

(declare-fun tp!1279704 () Bool)

(declare-fun b_and!328011 () Bool)

(assert (=> b!4187782 (= tp!1279704 b_and!328011)))

(declare-fun b!4187772 () Bool)

(declare-fun b_free!121827 () Bool)

(declare-fun b_next!122531 () Bool)

(assert (=> b!4187772 (= b_free!121827 (not b_next!122531))))

(declare-fun tp!1279711 () Bool)

(declare-fun b_and!328013 () Bool)

(assert (=> b!4187772 (= tp!1279711 b_and!328013)))

(declare-fun b_free!121829 () Bool)

(declare-fun b_next!122533 () Bool)

(assert (=> b!4187772 (= b_free!121829 (not b_next!122533))))

(declare-fun tp!1279707 () Bool)

(declare-fun b_and!328015 () Bool)

(assert (=> b!4187772 (= tp!1279707 b_and!328015)))

(declare-fun b!4187787 () Bool)

(declare-fun b_free!121831 () Bool)

(declare-fun b_next!122535 () Bool)

(assert (=> b!4187787 (= b_free!121831 (not b_next!122535))))

(declare-fun tp!1279713 () Bool)

(declare-fun b_and!328017 () Bool)

(assert (=> b!4187787 (= tp!1279713 b_and!328017)))

(declare-fun b_free!121833 () Bool)

(declare-fun b_next!122537 () Bool)

(assert (=> b!4187787 (= b_free!121833 (not b_next!122537))))

(declare-fun tp!1279712 () Bool)

(declare-fun b_and!328019 () Bool)

(assert (=> b!4187787 (= tp!1279712 b_and!328019)))

(declare-fun b!4187763 () Bool)

(declare-fun e!2599718 () Bool)

(declare-fun e!2599719 () Bool)

(assert (=> b!4187763 (= e!2599718 (not e!2599719))))

(declare-fun res!1717979 () Bool)

(assert (=> b!4187763 (=> res!1717979 e!2599719)))

(declare-datatypes ((C!25316 0))(
  ( (C!25317 (val!14820 Int)) )
))
(declare-datatypes ((List!46101 0))(
  ( (Nil!45977) (Cons!45977 (h!51397 C!25316) (t!345744 List!46101)) )
))
(declare-fun input!3342 () List!46101)

(declare-datatypes ((LexerInterface!7251 0))(
  ( (LexerInterfaceExt!7248 (__x!27997 Int)) (Lexer!7249) )
))
(declare-fun thiss!25986 () LexerInterface!7251)

(declare-datatypes ((List!46102 0))(
  ( (Nil!45978) (Cons!45978 (h!51398 (_ BitVec 16)) (t!345745 List!46102)) )
))
(declare-datatypes ((TokenValue!7888 0))(
  ( (FloatLiteralValue!15776 (text!55661 List!46102)) (TokenValueExt!7887 (__x!27998 Int)) (Broken!39440 (value!238759 List!46102)) (Object!8011) (End!7888) (Def!7888) (Underscore!7888) (Match!7888) (Else!7888) (Error!7888) (Case!7888) (If!7888) (Extends!7888) (Abstract!7888) (Class!7888) (Val!7888) (DelimiterValue!15776 (del!7948 List!46102)) (KeywordValue!7894 (value!238760 List!46102)) (CommentValue!15776 (value!238761 List!46102)) (WhitespaceValue!15776 (value!238762 List!46102)) (IndentationValue!7888 (value!238763 List!46102)) (String!53305) (Int32!7888) (Broken!39441 (value!238764 List!46102)) (Boolean!7889) (Unit!65064) (OperatorValue!7891 (op!7948 List!46102)) (IdentifierValue!15776 (value!238765 List!46102)) (IdentifierValue!15777 (value!238766 List!46102)) (WhitespaceValue!15777 (value!238767 List!46102)) (True!15776) (False!15776) (Broken!39442 (value!238768 List!46102)) (Broken!39443 (value!238769 List!46102)) (True!15777) (RightBrace!7888) (RightBracket!7888) (Colon!7888) (Null!7888) (Comma!7888) (LeftBracket!7888) (False!15777) (LeftBrace!7888) (ImaginaryLiteralValue!7888 (text!55662 List!46102)) (StringLiteralValue!23664 (value!238770 List!46102)) (EOFValue!7888 (value!238771 List!46102)) (IdentValue!7888 (value!238772 List!46102)) (DelimiterValue!15777 (value!238773 List!46102)) (DedentValue!7888 (value!238774 List!46102)) (NewLineValue!7888 (value!238775 List!46102)) (IntegerValue!23664 (value!238776 (_ BitVec 32)) (text!55663 List!46102)) (IntegerValue!23665 (value!238777 Int) (text!55664 List!46102)) (Times!7888) (Or!7888) (Equal!7888) (Minus!7888) (Broken!39444 (value!238778 List!46102)) (And!7888) (Div!7888) (LessEqual!7888) (Mod!7888) (Concat!20451) (Not!7888) (Plus!7888) (SpaceValue!7888 (value!238779 List!46102)) (IntegerValue!23666 (value!238780 Int) (text!55665 List!46102)) (StringLiteralValue!23665 (text!55666 List!46102)) (FloatLiteralValue!15777 (text!55667 List!46102)) (BytesLiteralValue!7888 (value!238781 List!46102)) (CommentValue!15777 (value!238782 List!46102)) (StringLiteralValue!23666 (value!238783 List!46102)) (ErrorTokenValue!7888 (msg!7949 List!46102)) )
))
(declare-datatypes ((Regex!12563 0))(
  ( (ElementMatch!12563 (c!714796 C!25316)) (Concat!20452 (regOne!25638 Regex!12563) (regTwo!25638 Regex!12563)) (EmptyExpr!12563) (Star!12563 (reg!12892 Regex!12563)) (EmptyLang!12563) (Union!12563 (regOne!25639 Regex!12563) (regTwo!25639 Regex!12563)) )
))
(declare-datatypes ((String!53306 0))(
  ( (String!53307 (value!238784 String)) )
))
(declare-datatypes ((IArray!27743 0))(
  ( (IArray!27744 (innerList!13929 List!46101)) )
))
(declare-datatypes ((Conc!13869 0))(
  ( (Node!13869 (left!34252 Conc!13869) (right!34582 Conc!13869) (csize!27968 Int) (cheight!14080 Int)) (Leaf!21441 (xs!17175 IArray!27743) (csize!27969 Int)) (Empty!13869) )
))
(declare-datatypes ((BalanceConc!27332 0))(
  ( (BalanceConc!27333 (c!714797 Conc!13869)) )
))
(declare-datatypes ((TokenValueInjection!15204 0))(
  ( (TokenValueInjection!15205 (toValue!10354 Int) (toChars!10213 Int)) )
))
(declare-datatypes ((Rule!15116 0))(
  ( (Rule!15117 (regex!7658 Regex!12563) (tag!8522 String!53306) (isSeparator!7658 Bool) (transformation!7658 TokenValueInjection!15204)) )
))
(declare-datatypes ((Token!14030 0))(
  ( (Token!14031 (value!238785 TokenValue!7888) (rule!10734 Rule!15116) (size!33766 Int) (originalCharacters!8046 List!46101)) )
))
(declare-datatypes ((tuple2!43782 0))(
  ( (tuple2!43783 (_1!25025 Token!14030) (_2!25025 List!46101)) )
))
(declare-datatypes ((Option!9852 0))(
  ( (None!9851) (Some!9851 (v!40675 tuple2!43782)) )
))
(declare-fun lt!1491468 () Option!9852)

(declare-fun r!4142 () Rule!15116)

(declare-fun maxPrefixOneRule!3260 (LexerInterface!7251 Rule!15116 List!46101) Option!9852)

(assert (=> b!4187763 (= res!1717979 (not (= (maxPrefixOneRule!3260 thiss!25986 r!4142 input!3342) lt!1491468)))))

(declare-fun lt!1491466 () Token!14030)

(declare-fun lt!1491462 () List!46101)

(assert (=> b!4187763 (= lt!1491468 (Some!9851 (tuple2!43783 lt!1491466 lt!1491462)))))

(declare-fun p!2959 () List!46101)

(declare-fun getSuffix!2808 (List!46101 List!46101) List!46101)

(assert (=> b!4187763 (= lt!1491462 (getSuffix!2808 input!3342 p!2959))))

(declare-fun lt!1491465 () Int)

(declare-fun lt!1491459 () TokenValue!7888)

(assert (=> b!4187763 (= lt!1491466 (Token!14031 lt!1491459 r!4142 lt!1491465 p!2959))))

(declare-fun size!33767 (List!46101) Int)

(assert (=> b!4187763 (= lt!1491465 (size!33767 p!2959))))

(declare-fun lt!1491467 () BalanceConc!27332)

(declare-fun apply!10623 (TokenValueInjection!15204 BalanceConc!27332) TokenValue!7888)

(assert (=> b!4187763 (= lt!1491459 (apply!10623 (transformation!7658 r!4142) lt!1491467))))

(declare-fun isPrefix!4515 (List!46101 List!46101) Bool)

(assert (=> b!4187763 (isPrefix!4515 input!3342 input!3342)))

(declare-datatypes ((Unit!65065 0))(
  ( (Unit!65066) )
))
(declare-fun lt!1491454 () Unit!65065)

(declare-fun lemmaIsPrefixRefl!2944 (List!46101 List!46101) Unit!65065)

(assert (=> b!4187763 (= lt!1491454 (lemmaIsPrefixRefl!2944 input!3342 input!3342))))

(declare-fun lt!1491455 () Unit!65065)

(declare-fun lemmaSemiInverse!2424 (TokenValueInjection!15204 BalanceConc!27332) Unit!65065)

(assert (=> b!4187763 (= lt!1491455 (lemmaSemiInverse!2424 (transformation!7658 r!4142) lt!1491467))))

(declare-fun seqFromList!5683 (List!46101) BalanceConc!27332)

(assert (=> b!4187763 (= lt!1491467 (seqFromList!5683 p!2959))))

(declare-fun b!4187764 () Bool)

(declare-fun res!1717978 () Bool)

(assert (=> b!4187764 (=> (not res!1717978) (not e!2599718))))

(declare-fun pBis!107 () List!46101)

(assert (=> b!4187764 (= res!1717978 (isPrefix!4515 pBis!107 input!3342))))

(declare-fun b!4187765 () Bool)

(declare-fun res!1717990 () Bool)

(assert (=> b!4187765 (=> (not res!1717990) (not e!2599718))))

(declare-datatypes ((List!46103 0))(
  ( (Nil!45979) (Cons!45979 (h!51399 Rule!15116) (t!345746 List!46103)) )
))
(declare-fun rules!3843 () List!46103)

(declare-fun rBis!167 () Rule!15116)

(declare-fun contains!9467 (List!46103 Rule!15116) Bool)

(assert (=> b!4187765 (= res!1717990 (contains!9467 rules!3843 rBis!167))))

(declare-fun b!4187766 () Bool)

(declare-fun res!1717981 () Bool)

(assert (=> b!4187766 (=> (not res!1717981) (not e!2599718))))

(declare-fun isEmpty!27214 (List!46103) Bool)

(assert (=> b!4187766 (= res!1717981 (not (isEmpty!27214 rules!3843)))))

(declare-fun b!4187767 () Bool)

(declare-fun e!2599716 () Bool)

(assert (=> b!4187767 (= e!2599719 e!2599716)))

(declare-fun res!1717985 () Bool)

(assert (=> b!4187767 (=> res!1717985 e!2599716)))

(declare-fun lt!1491460 () Int)

(assert (=> b!4187767 (= res!1717985 (<= lt!1491460 lt!1491465))))

(assert (=> b!4187767 (= lt!1491460 (size!33767 pBis!107))))

(declare-fun b!4187768 () Bool)

(declare-fun e!2599710 () Bool)

(declare-fun e!2599715 () Bool)

(declare-fun tp!1279709 () Bool)

(assert (=> b!4187768 (= e!2599710 (and e!2599715 tp!1279709))))

(declare-fun b!4187769 () Bool)

(declare-fun e!2599720 () Bool)

(declare-fun tp!1279710 () Bool)

(declare-fun e!2599709 () Bool)

(declare-fun inv!60525 (String!53306) Bool)

(declare-fun inv!60527 (TokenValueInjection!15204) Bool)

(assert (=> b!4187769 (= e!2599709 (and tp!1279710 (inv!60525 (tag!8522 r!4142)) (inv!60527 (transformation!7658 r!4142)) e!2599720))))

(declare-fun b!4187770 () Bool)

(declare-fun e!2599721 () Bool)

(declare-fun tp_is_empty!22089 () Bool)

(declare-fun tp!1279714 () Bool)

(assert (=> b!4187770 (= e!2599721 (and tp_is_empty!22089 tp!1279714))))

(declare-fun b!4187771 () Bool)

(declare-fun e!2599722 () Bool)

(declare-fun tp!1279702 () Bool)

(assert (=> b!4187771 (= e!2599722 (and tp_is_empty!22089 tp!1279702))))

(assert (=> b!4187772 (= e!2599720 (and tp!1279711 tp!1279707))))

(declare-fun b!4187773 () Bool)

(declare-fun res!1717988 () Bool)

(assert (=> b!4187773 (=> (not res!1717988) (not e!2599718))))

(declare-fun ruleValid!3376 (LexerInterface!7251 Rule!15116) Bool)

(assert (=> b!4187773 (= res!1717988 (ruleValid!3376 thiss!25986 r!4142))))

(declare-fun b!4187774 () Bool)

(declare-fun res!1717987 () Bool)

(assert (=> b!4187774 (=> (not res!1717987) (not e!2599718))))

(assert (=> b!4187774 (= res!1717987 (isPrefix!4515 p!2959 input!3342))))

(declare-fun b!4187775 () Bool)

(declare-fun e!2599724 () Bool)

(declare-fun e!2599714 () Bool)

(assert (=> b!4187775 (= e!2599724 e!2599714)))

(declare-fun res!1717983 () Bool)

(assert (=> b!4187775 (=> res!1717983 e!2599714)))

(declare-fun lt!1491463 () List!46101)

(assert (=> b!4187775 (= res!1717983 (not (= lt!1491463 pBis!107)))))

(declare-fun lt!1491457 () tuple2!43782)

(declare-fun ++!11730 (List!46101 List!46101) List!46101)

(assert (=> b!4187775 (isPrefix!4515 lt!1491463 (++!11730 lt!1491463 (_2!25025 lt!1491457)))))

(declare-fun lt!1491469 () Unit!65065)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3012 (List!46101 List!46101) Unit!65065)

(assert (=> b!4187775 (= lt!1491469 (lemmaConcatTwoListThenFirstIsPrefix!3012 lt!1491463 (_2!25025 lt!1491457)))))

(declare-fun list!16610 (BalanceConc!27332) List!46101)

(declare-fun charsOf!5093 (Token!14030) BalanceConc!27332)

(assert (=> b!4187775 (= lt!1491463 (list!16610 (charsOf!5093 (_1!25025 lt!1491457))))))

(declare-fun lt!1491456 () Option!9852)

(declare-fun get!14946 (Option!9852) tuple2!43782)

(assert (=> b!4187775 (= lt!1491457 (get!14946 lt!1491456))))

(declare-fun e!2599726 () Bool)

(declare-fun tp!1279708 () Bool)

(declare-fun b!4187776 () Bool)

(assert (=> b!4187776 (= e!2599715 (and tp!1279708 (inv!60525 (tag!8522 (h!51399 rules!3843))) (inv!60527 (transformation!7658 (h!51399 rules!3843))) e!2599726))))

(declare-fun b!4187777 () Bool)

(declare-fun res!1717986 () Bool)

(assert (=> b!4187777 (=> (not res!1717986) (not e!2599718))))

(declare-fun validRegex!5680 (Regex!12563) Bool)

(assert (=> b!4187777 (= res!1717986 (validRegex!5680 (regex!7658 r!4142)))))

(declare-fun b!4187778 () Bool)

(declare-fun e!2599712 () Bool)

(declare-fun tp!1279705 () Bool)

(assert (=> b!4187778 (= e!2599712 (and tp_is_empty!22089 tp!1279705))))

(declare-fun b!4187779 () Bool)

(declare-fun res!1717977 () Bool)

(assert (=> b!4187779 (=> res!1717977 e!2599716)))

(assert (=> b!4187779 (= res!1717977 (not (ruleValid!3376 thiss!25986 rBis!167)))))

(declare-fun tp!1279703 () Bool)

(declare-fun e!2599713 () Bool)

(declare-fun e!2599717 () Bool)

(declare-fun b!4187780 () Bool)

(assert (=> b!4187780 (= e!2599717 (and tp!1279703 (inv!60525 (tag!8522 rBis!167)) (inv!60527 (transformation!7658 rBis!167)) e!2599713))))

(assert (=> b!4187782 (= e!2599726 (and tp!1279706 tp!1279704))))

(declare-fun res!1717989 () Bool)

(assert (=> start!399598 (=> (not res!1717989) (not e!2599718))))

(get-info :version)

(assert (=> start!399598 (= res!1717989 ((_ is Lexer!7249) thiss!25986))))

(assert (=> start!399598 e!2599718))

(assert (=> start!399598 true))

(assert (=> start!399598 e!2599717))

(assert (=> start!399598 e!2599709))

(assert (=> start!399598 e!2599710))

(assert (=> start!399598 e!2599712))

(assert (=> start!399598 e!2599721))

(assert (=> start!399598 e!2599722))

(declare-fun b!4187781 () Bool)

(declare-fun res!1717982 () Bool)

(assert (=> b!4187781 (=> (not res!1717982) (not e!2599718))))

(assert (=> b!4187781 (= res!1717982 (contains!9467 rules!3843 r!4142))))

(declare-fun b!4187783 () Bool)

(declare-fun res!1717992 () Bool)

(assert (=> b!4187783 (=> (not res!1717992) (not e!2599718))))

(declare-fun rulesInvariant!6464 (LexerInterface!7251 List!46103) Bool)

(assert (=> b!4187783 (= res!1717992 (rulesInvariant!6464 thiss!25986 rules!3843))))

(declare-fun b!4187784 () Bool)

(assert (=> b!4187784 (= e!2599714 true)))

(declare-fun lt!1491464 () Bool)

(declare-fun matchR!6302 (Regex!12563 List!46101) Bool)

(assert (=> b!4187784 (= lt!1491464 (matchR!6302 (regex!7658 rBis!167) pBis!107))))

(assert (=> b!4187784 false))

(declare-fun lt!1491458 () Unit!65065)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!24 (LexerInterface!7251 List!46103 List!46101 Token!14030 List!46101 List!46101 List!46101 List!46101 Rule!15116 Token!14030) Unit!65065)

(assert (=> b!4187784 (= lt!1491458 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!24 thiss!25986 rules!3843 p!2959 lt!1491466 input!3342 lt!1491462 pBis!107 (_2!25025 lt!1491457) rBis!167 (_1!25025 lt!1491457)))))

(declare-fun b!4187785 () Bool)

(declare-fun res!1717984 () Bool)

(assert (=> b!4187785 (=> res!1717984 e!2599716)))

(declare-fun maxPrefix!4299 (LexerInterface!7251 List!46103 List!46101) Option!9852)

(assert (=> b!4187785 (= res!1717984 (not (= (maxPrefix!4299 thiss!25986 rules!3843 input!3342) lt!1491468)))))

(declare-fun b!4187786 () Bool)

(assert (=> b!4187786 (= e!2599716 e!2599724)))

(declare-fun res!1717980 () Bool)

(assert (=> b!4187786 (=> res!1717980 e!2599724)))

(declare-fun isEmpty!27215 (Option!9852) Bool)

(assert (=> b!4187786 (= res!1717980 (isEmpty!27215 lt!1491456))))

(assert (=> b!4187786 (= lt!1491456 (maxPrefixOneRule!3260 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1491461 () Unit!65065)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2382 (LexerInterface!7251 Rule!15116 List!46103) Unit!65065)

(assert (=> b!4187786 (= lt!1491461 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2382 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4187786 (<= lt!1491460 (size!33767 input!3342))))

(declare-fun lt!1491470 () Unit!65065)

(declare-fun lemmaIsPrefixThenSmallerEqSize!545 (List!46101 List!46101) Unit!65065)

(assert (=> b!4187786 (= lt!1491470 (lemmaIsPrefixThenSmallerEqSize!545 pBis!107 input!3342))))

(assert (=> b!4187787 (= e!2599713 (and tp!1279713 tp!1279712))))

(declare-fun b!4187788 () Bool)

(declare-fun res!1717991 () Bool)

(assert (=> b!4187788 (=> (not res!1717991) (not e!2599718))))

(assert (=> b!4187788 (= res!1717991 (matchR!6302 (regex!7658 r!4142) p!2959))))

(assert (= (and start!399598 res!1717989) b!4187774))

(assert (= (and b!4187774 res!1717987) b!4187764))

(assert (= (and b!4187764 res!1717978) b!4187766))

(assert (= (and b!4187766 res!1717981) b!4187783))

(assert (= (and b!4187783 res!1717992) b!4187781))

(assert (= (and b!4187781 res!1717982) b!4187765))

(assert (= (and b!4187765 res!1717990) b!4187777))

(assert (= (and b!4187777 res!1717986) b!4187788))

(assert (= (and b!4187788 res!1717991) b!4187773))

(assert (= (and b!4187773 res!1717988) b!4187763))

(assert (= (and b!4187763 (not res!1717979)) b!4187767))

(assert (= (and b!4187767 (not res!1717985)) b!4187779))

(assert (= (and b!4187779 (not res!1717977)) b!4187785))

(assert (= (and b!4187785 (not res!1717984)) b!4187786))

(assert (= (and b!4187786 (not res!1717980)) b!4187775))

(assert (= (and b!4187775 (not res!1717983)) b!4187784))

(assert (= b!4187780 b!4187787))

(assert (= start!399598 b!4187780))

(assert (= b!4187769 b!4187772))

(assert (= start!399598 b!4187769))

(assert (= b!4187776 b!4187782))

(assert (= b!4187768 b!4187776))

(assert (= (and start!399598 ((_ is Cons!45979) rules!3843)) b!4187768))

(assert (= (and start!399598 ((_ is Cons!45977) input!3342)) b!4187778))

(assert (= (and start!399598 ((_ is Cons!45977) pBis!107)) b!4187770))

(assert (= (and start!399598 ((_ is Cons!45977) p!2959)) b!4187771))

(declare-fun m!4776693 () Bool)

(assert (=> b!4187773 m!4776693))

(declare-fun m!4776695 () Bool)

(assert (=> b!4187784 m!4776695))

(declare-fun m!4776697 () Bool)

(assert (=> b!4187784 m!4776697))

(declare-fun m!4776699 () Bool)

(assert (=> b!4187769 m!4776699))

(declare-fun m!4776701 () Bool)

(assert (=> b!4187769 m!4776701))

(declare-fun m!4776703 () Bool)

(assert (=> b!4187765 m!4776703))

(declare-fun m!4776705 () Bool)

(assert (=> b!4187780 m!4776705))

(declare-fun m!4776707 () Bool)

(assert (=> b!4187780 m!4776707))

(declare-fun m!4776709 () Bool)

(assert (=> b!4187776 m!4776709))

(declare-fun m!4776711 () Bool)

(assert (=> b!4187776 m!4776711))

(declare-fun m!4776713 () Bool)

(assert (=> b!4187764 m!4776713))

(declare-fun m!4776715 () Bool)

(assert (=> b!4187774 m!4776715))

(declare-fun m!4776717 () Bool)

(assert (=> b!4187777 m!4776717))

(declare-fun m!4776719 () Bool)

(assert (=> b!4187785 m!4776719))

(declare-fun m!4776721 () Bool)

(assert (=> b!4187781 m!4776721))

(declare-fun m!4776723 () Bool)

(assert (=> b!4187767 m!4776723))

(declare-fun m!4776725 () Bool)

(assert (=> b!4187763 m!4776725))

(declare-fun m!4776727 () Bool)

(assert (=> b!4187763 m!4776727))

(declare-fun m!4776729 () Bool)

(assert (=> b!4187763 m!4776729))

(declare-fun m!4776731 () Bool)

(assert (=> b!4187763 m!4776731))

(declare-fun m!4776733 () Bool)

(assert (=> b!4187763 m!4776733))

(declare-fun m!4776735 () Bool)

(assert (=> b!4187763 m!4776735))

(declare-fun m!4776737 () Bool)

(assert (=> b!4187763 m!4776737))

(declare-fun m!4776739 () Bool)

(assert (=> b!4187763 m!4776739))

(declare-fun m!4776741 () Bool)

(assert (=> b!4187766 m!4776741))

(declare-fun m!4776743 () Bool)

(assert (=> b!4187783 m!4776743))

(declare-fun m!4776745 () Bool)

(assert (=> b!4187775 m!4776745))

(declare-fun m!4776747 () Bool)

(assert (=> b!4187775 m!4776747))

(declare-fun m!4776749 () Bool)

(assert (=> b!4187775 m!4776749))

(declare-fun m!4776751 () Bool)

(assert (=> b!4187775 m!4776751))

(declare-fun m!4776753 () Bool)

(assert (=> b!4187775 m!4776753))

(assert (=> b!4187775 m!4776749))

(assert (=> b!4187775 m!4776747))

(declare-fun m!4776755 () Bool)

(assert (=> b!4187775 m!4776755))

(declare-fun m!4776757 () Bool)

(assert (=> b!4187788 m!4776757))

(declare-fun m!4776759 () Bool)

(assert (=> b!4187779 m!4776759))

(declare-fun m!4776761 () Bool)

(assert (=> b!4187786 m!4776761))

(declare-fun m!4776763 () Bool)

(assert (=> b!4187786 m!4776763))

(declare-fun m!4776765 () Bool)

(assert (=> b!4187786 m!4776765))

(declare-fun m!4776767 () Bool)

(assert (=> b!4187786 m!4776767))

(declare-fun m!4776769 () Bool)

(assert (=> b!4187786 m!4776769))

(check-sat (not b!4187781) (not b!4187788) (not b!4187786) (not b!4187778) (not b!4187775) b_and!328017 (not b!4187764) (not b!4187774) (not b!4187769) (not b!4187776) b_and!328013 (not b!4187784) (not b_next!122537) (not b!4187779) (not b!4187773) (not b!4187763) (not b!4187768) (not b_next!122531) (not b_next!122533) (not b!4187777) (not b!4187771) (not b!4187780) tp_is_empty!22089 b_and!328015 (not b!4187770) (not b_next!122527) (not b!4187767) b_and!328019 b_and!328011 (not b_next!122535) (not b!4187766) (not b!4187765) b_and!328009 (not b_next!122529) (not b!4187785) (not b!4187783))
(check-sat b_and!328017 b_and!328019 b_and!328013 (not b_next!122537) (not b_next!122531) (not b_next!122533) b_and!328015 (not b_next!122527) b_and!328011 (not b_next!122535) b_and!328009 (not b_next!122529))
