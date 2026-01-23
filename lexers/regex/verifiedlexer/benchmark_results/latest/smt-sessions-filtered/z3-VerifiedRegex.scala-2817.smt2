; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!157310 () Bool)

(assert start!157310)

(declare-fun b!1642907 () Bool)

(declare-fun b_free!44567 () Bool)

(declare-fun b_next!45271 () Bool)

(assert (=> b!1642907 (= b_free!44567 (not b_next!45271))))

(declare-fun tp!476172 () Bool)

(declare-fun b_and!116525 () Bool)

(assert (=> b!1642907 (= tp!476172 b_and!116525)))

(declare-fun b_free!44569 () Bool)

(declare-fun b_next!45273 () Bool)

(assert (=> b!1642907 (= b_free!44569 (not b_next!45273))))

(declare-fun tp!476170 () Bool)

(declare-fun b_and!116527 () Bool)

(assert (=> b!1642907 (= tp!476170 b_and!116527)))

(declare-fun b!1642912 () Bool)

(declare-fun b_free!44571 () Bool)

(declare-fun b_next!45275 () Bool)

(assert (=> b!1642912 (= b_free!44571 (not b_next!45275))))

(declare-fun tp!476171 () Bool)

(declare-fun b_and!116529 () Bool)

(assert (=> b!1642912 (= tp!476171 b_and!116529)))

(declare-fun b_free!44573 () Bool)

(declare-fun b_next!45277 () Bool)

(assert (=> b!1642912 (= b_free!44573 (not b_next!45277))))

(declare-fun tp!476168 () Bool)

(declare-fun b_and!116531 () Bool)

(assert (=> b!1642912 (= tp!476168 b_and!116531)))

(declare-fun b!1642906 () Bool)

(declare-fun res!736058 () Bool)

(declare-fun e!1053689 () Bool)

(assert (=> b!1642906 (=> (not res!736058) (not e!1053689))))

(declare-datatypes ((List!18185 0))(
  ( (Nil!18115) (Cons!18115 (h!23516 (_ BitVec 16)) (t!150170 List!18185)) )
))
(declare-datatypes ((TokenValue!3285 0))(
  ( (FloatLiteralValue!6570 (text!23440 List!18185)) (TokenValueExt!3284 (__x!11872 Int)) (Broken!16425 (value!100704 List!18185)) (Object!3354) (End!3285) (Def!3285) (Underscore!3285) (Match!3285) (Else!3285) (Error!3285) (Case!3285) (If!3285) (Extends!3285) (Abstract!3285) (Class!3285) (Val!3285) (DelimiterValue!6570 (del!3345 List!18185)) (KeywordValue!3291 (value!100705 List!18185)) (CommentValue!6570 (value!100706 List!18185)) (WhitespaceValue!6570 (value!100707 List!18185)) (IndentationValue!3285 (value!100708 List!18185)) (String!20756) (Int32!3285) (Broken!16426 (value!100709 List!18185)) (Boolean!3286) (Unit!29876) (OperatorValue!3288 (op!3345 List!18185)) (IdentifierValue!6570 (value!100710 List!18185)) (IdentifierValue!6571 (value!100711 List!18185)) (WhitespaceValue!6571 (value!100712 List!18185)) (True!6570) (False!6570) (Broken!16427 (value!100713 List!18185)) (Broken!16428 (value!100714 List!18185)) (True!6571) (RightBrace!3285) (RightBracket!3285) (Colon!3285) (Null!3285) (Comma!3285) (LeftBracket!3285) (False!6571) (LeftBrace!3285) (ImaginaryLiteralValue!3285 (text!23441 List!18185)) (StringLiteralValue!9855 (value!100715 List!18185)) (EOFValue!3285 (value!100716 List!18185)) (IdentValue!3285 (value!100717 List!18185)) (DelimiterValue!6571 (value!100718 List!18185)) (DedentValue!3285 (value!100719 List!18185)) (NewLineValue!3285 (value!100720 List!18185)) (IntegerValue!9855 (value!100721 (_ BitVec 32)) (text!23442 List!18185)) (IntegerValue!9856 (value!100722 Int) (text!23443 List!18185)) (Times!3285) (Or!3285) (Equal!3285) (Minus!3285) (Broken!16429 (value!100723 List!18185)) (And!3285) (Div!3285) (LessEqual!3285) (Mod!3285) (Concat!7808) (Not!3285) (Plus!3285) (SpaceValue!3285 (value!100724 List!18185)) (IntegerValue!9857 (value!100725 Int) (text!23444 List!18185)) (StringLiteralValue!9856 (text!23445 List!18185)) (FloatLiteralValue!6571 (text!23446 List!18185)) (BytesLiteralValue!3285 (value!100726 List!18185)) (CommentValue!6571 (value!100727 List!18185)) (StringLiteralValue!9857 (value!100728 List!18185)) (ErrorTokenValue!3285 (msg!3346 List!18185)) )
))
(declare-datatypes ((C!9220 0))(
  ( (C!9221 (val!5206 Int)) )
))
(declare-datatypes ((List!18186 0))(
  ( (Nil!18116) (Cons!18116 (h!23517 C!9220) (t!150171 List!18186)) )
))
(declare-datatypes ((IArray!12081 0))(
  ( (IArray!12082 (innerList!6098 List!18186)) )
))
(declare-datatypes ((Conc!6038 0))(
  ( (Node!6038 (left!14525 Conc!6038) (right!14855 Conc!6038) (csize!12306 Int) (cheight!6249 Int)) (Leaf!8856 (xs!8874 IArray!12081) (csize!12307 Int)) (Empty!6038) )
))
(declare-datatypes ((BalanceConc!12020 0))(
  ( (BalanceConc!12021 (c!267171 Conc!6038)) )
))
(declare-datatypes ((Regex!4523 0))(
  ( (ElementMatch!4523 (c!267172 C!9220)) (Concat!7809 (regOne!9558 Regex!4523) (regTwo!9558 Regex!4523)) (EmptyExpr!4523) (Star!4523 (reg!4852 Regex!4523)) (EmptyLang!4523) (Union!4523 (regOne!9559 Regex!4523) (regTwo!9559 Regex!4523)) )
))
(declare-datatypes ((String!20757 0))(
  ( (String!20758 (value!100729 String)) )
))
(declare-datatypes ((TokenValueInjection!6230 0))(
  ( (TokenValueInjection!6231 (toValue!4634 Int) (toChars!4493 Int)) )
))
(declare-datatypes ((Rule!6190 0))(
  ( (Rule!6191 (regex!3195 Regex!4523) (tag!3475 String!20757) (isSeparator!3195 Bool) (transformation!3195 TokenValueInjection!6230)) )
))
(declare-datatypes ((List!18187 0))(
  ( (Nil!18117) (Cons!18117 (h!23518 Rule!6190) (t!150172 List!18187)) )
))
(declare-fun rules!1846 () List!18187)

(declare-fun isEmpty!11141 (List!18187) Bool)

(assert (=> b!1642906 (= res!736058 (not (isEmpty!11141 rules!1846)))))

(declare-fun e!1053684 () Bool)

(assert (=> b!1642907 (= e!1053684 (and tp!476172 tp!476170))))

(declare-fun b!1642908 () Bool)

(declare-fun e!1053683 () Bool)

(declare-fun tp!476173 () Bool)

(declare-datatypes ((Token!5956 0))(
  ( (Token!5957 (value!100730 TokenValue!3285) (rule!5045 Rule!6190) (size!14428 Int) (originalCharacters!4009 List!18186)) )
))
(declare-datatypes ((List!18188 0))(
  ( (Nil!18118) (Cons!18118 (h!23519 Token!5956) (t!150173 List!18188)) )
))
(declare-fun tokens!457 () List!18188)

(declare-fun e!1053686 () Bool)

(declare-fun inv!23473 (Token!5956) Bool)

(assert (=> b!1642908 (= e!1053686 (and (inv!23473 (h!23519 tokens!457)) e!1053683 tp!476173))))

(declare-fun res!736060 () Bool)

(assert (=> start!157310 (=> (not res!736060) (not e!1053689))))

(declare-datatypes ((LexerInterface!2824 0))(
  ( (LexerInterfaceExt!2821 (__x!11873 Int)) (Lexer!2822) )
))
(declare-fun thiss!17113 () LexerInterface!2824)

(get-info :version)

(assert (=> start!157310 (= res!736060 ((_ is Lexer!2822) thiss!17113))))

(assert (=> start!157310 e!1053689))

(assert (=> start!157310 true))

(declare-fun e!1053678 () Bool)

(assert (=> start!157310 e!1053678))

(assert (=> start!157310 e!1053686))

(declare-fun e!1053682 () Bool)

(declare-fun tp!476174 () Bool)

(declare-fun b!1642909 () Bool)

(declare-fun inv!21 (TokenValue!3285) Bool)

(assert (=> b!1642909 (= e!1053683 (and (inv!21 (value!100730 (h!23519 tokens!457))) e!1053682 tp!476174))))

(declare-fun b!1642910 () Bool)

(declare-fun e!1053685 () Bool)

(declare-fun e!1053687 () Bool)

(assert (=> b!1642910 (= e!1053685 (not e!1053687))))

(declare-fun res!736056 () Bool)

(assert (=> b!1642910 (=> res!736056 e!1053687)))

(declare-fun lt!605069 () List!18188)

(assert (=> b!1642910 (= res!736056 (not (= lt!605069 (t!150173 tokens!457))))))

(declare-datatypes ((IArray!12083 0))(
  ( (IArray!12084 (innerList!6099 List!18188)) )
))
(declare-datatypes ((Conc!6039 0))(
  ( (Node!6039 (left!14526 Conc!6039) (right!14856 Conc!6039) (csize!12308 Int) (cheight!6250 Int)) (Leaf!8857 (xs!8875 IArray!12083) (csize!12309 Int)) (Empty!6039) )
))
(declare-datatypes ((BalanceConc!12022 0))(
  ( (BalanceConc!12023 (c!267173 Conc!6039)) )
))
(declare-datatypes ((tuple2!17772 0))(
  ( (tuple2!17773 (_1!10288 BalanceConc!12022) (_2!10288 BalanceConc!12020)) )
))
(declare-fun lt!605060 () tuple2!17772)

(declare-fun list!7173 (BalanceConc!12022) List!18188)

(assert (=> b!1642910 (= lt!605069 (list!7173 (_1!10288 lt!605060)))))

(declare-datatypes ((Unit!29877 0))(
  ( (Unit!29878) )
))
(declare-fun lt!605056 () Unit!29877)

(declare-fun theoremInvertabilityWhenTokenListSeparable!267 (LexerInterface!2824 List!18187 List!18188) Unit!29877)

(assert (=> b!1642910 (= lt!605056 (theoremInvertabilityWhenTokenListSeparable!267 thiss!17113 rules!1846 (t!150173 tokens!457)))))

(declare-fun lt!605057 () List!18186)

(declare-fun lt!605055 () List!18186)

(declare-fun isPrefix!1453 (List!18186 List!18186) Bool)

(assert (=> b!1642910 (isPrefix!1453 lt!605057 lt!605055)))

(declare-fun lt!605064 () Unit!29877)

(declare-fun lt!605062 () List!18186)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!978 (List!18186 List!18186) Unit!29877)

(assert (=> b!1642910 (= lt!605064 (lemmaConcatTwoListThenFirstIsPrefix!978 lt!605057 lt!605062))))

(declare-fun e!1053677 () Bool)

(declare-fun lt!605061 () BalanceConc!12020)

(declare-fun b!1642911 () Bool)

(declare-fun list!7174 (BalanceConc!12020) List!18186)

(declare-fun printList!937 (LexerInterface!2824 List!18188) List!18186)

(assert (=> b!1642911 (= e!1053677 (= (list!7174 lt!605061) (printList!937 thiss!17113 (Cons!18118 (h!23519 tokens!457) Nil!18118))))))

(declare-fun lt!605066 () BalanceConc!12022)

(declare-fun printTailRec!875 (LexerInterface!2824 BalanceConc!12022 Int BalanceConc!12020) BalanceConc!12020)

(assert (=> b!1642911 (= lt!605061 (printTailRec!875 thiss!17113 lt!605066 0 (BalanceConc!12021 Empty!6038)))))

(declare-fun print!1355 (LexerInterface!2824 BalanceConc!12022) BalanceConc!12020)

(assert (=> b!1642911 (= lt!605061 (print!1355 thiss!17113 lt!605066))))

(declare-fun singletonSeq!1663 (Token!5956) BalanceConc!12022)

(assert (=> b!1642911 (= lt!605066 (singletonSeq!1663 (h!23519 tokens!457)))))

(declare-datatypes ((tuple2!17774 0))(
  ( (tuple2!17775 (_1!10289 Token!5956) (_2!10289 List!18186)) )
))
(declare-datatypes ((Option!3426 0))(
  ( (None!3425) (Some!3425 (v!24544 tuple2!17774)) )
))
(declare-fun lt!605063 () Option!3426)

(declare-fun lt!605059 () List!18186)

(declare-fun maxPrefix!1386 (LexerInterface!2824 List!18187 List!18186) Option!3426)

(assert (=> b!1642911 (= lt!605063 (maxPrefix!1386 thiss!17113 rules!1846 lt!605059))))

(declare-fun e!1053688 () Bool)

(assert (=> b!1642912 (= e!1053688 (and tp!476171 tp!476168))))

(declare-fun b!1642913 () Bool)

(declare-fun tp!476169 () Bool)

(declare-fun e!1053679 () Bool)

(declare-fun inv!23470 (String!20757) Bool)

(declare-fun inv!23474 (TokenValueInjection!6230) Bool)

(assert (=> b!1642913 (= e!1053679 (and tp!476169 (inv!23470 (tag!3475 (h!23518 rules!1846))) (inv!23474 (transformation!3195 (h!23518 rules!1846))) e!1053688))))

(declare-fun b!1642914 () Bool)

(declare-fun res!736059 () Bool)

(assert (=> b!1642914 (=> (not res!736059) (not e!1053689))))

(declare-fun rulesInvariant!2493 (LexerInterface!2824 List!18187) Bool)

(assert (=> b!1642914 (= res!736059 (rulesInvariant!2493 thiss!17113 rules!1846))))

(declare-fun b!1642915 () Bool)

(declare-fun res!736055 () Bool)

(assert (=> b!1642915 (=> (not res!736055) (not e!1053689))))

(assert (=> b!1642915 (= res!736055 (and (not ((_ is Nil!18118) tokens!457)) (not ((_ is Nil!18118) (t!150173 tokens!457)))))))

(declare-fun b!1642916 () Bool)

(assert (=> b!1642916 (= e!1053687 e!1053677)))

(declare-fun res!736062 () Bool)

(assert (=> b!1642916 (=> res!736062 e!1053677)))

(declare-fun lt!605067 () List!18188)

(declare-fun lt!605058 () List!18188)

(assert (=> b!1642916 (= res!736062 (or (not (= lt!605069 lt!605058)) (not (= lt!605058 lt!605067))))))

(declare-fun lt!605070 () BalanceConc!12022)

(assert (=> b!1642916 (= lt!605058 (list!7173 lt!605070))))

(assert (=> b!1642916 (= lt!605069 lt!605067)))

(declare-fun prepend!745 (BalanceConc!12022 Token!5956) BalanceConc!12022)

(declare-fun seqFromList!2130 (List!18188) BalanceConc!12022)

(assert (=> b!1642916 (= lt!605067 (list!7173 (prepend!745 (seqFromList!2130 (t!150173 (t!150173 tokens!457))) (h!23519 (t!150173 tokens!457)))))))

(declare-fun lt!605065 () Unit!29877)

(declare-fun seqFromListBHdTlConstructive!270 (Token!5956 List!18188 BalanceConc!12022) Unit!29877)

(assert (=> b!1642916 (= lt!605065 (seqFromListBHdTlConstructive!270 (h!23519 (t!150173 tokens!457)) (t!150173 (t!150173 tokens!457)) (_1!10288 lt!605060)))))

(declare-fun tp!476175 () Bool)

(declare-fun b!1642917 () Bool)

(assert (=> b!1642917 (= e!1053682 (and tp!476175 (inv!23470 (tag!3475 (rule!5045 (h!23519 tokens!457)))) (inv!23474 (transformation!3195 (rule!5045 (h!23519 tokens!457)))) e!1053684))))

(declare-fun b!1642918 () Bool)

(declare-fun res!736053 () Bool)

(assert (=> b!1642918 (=> res!736053 e!1053677)))

(declare-fun separableTokensPredicate!764 (LexerInterface!2824 Token!5956 Token!5956 List!18187) Bool)

(assert (=> b!1642918 (= res!736053 (not (separableTokensPredicate!764 thiss!17113 (h!23519 tokens!457) (h!23519 (t!150173 tokens!457)) rules!1846)))))

(declare-fun b!1642919 () Bool)

(declare-fun res!736054 () Bool)

(assert (=> b!1642919 (=> (not res!736054) (not e!1053689))))

(declare-fun rulesProduceEachTokenIndividuallyList!1026 (LexerInterface!2824 List!18187 List!18188) Bool)

(assert (=> b!1642919 (= res!736054 (rulesProduceEachTokenIndividuallyList!1026 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1642920 () Bool)

(declare-fun tp!476176 () Bool)

(assert (=> b!1642920 (= e!1053678 (and e!1053679 tp!476176))))

(declare-fun b!1642921 () Bool)

(assert (=> b!1642921 (= e!1053689 e!1053685)))

(declare-fun res!736061 () Bool)

(assert (=> b!1642921 (=> (not res!736061) (not e!1053685))))

(assert (=> b!1642921 (= res!736061 (= lt!605059 lt!605055))))

(declare-fun ++!4874 (List!18186 List!18186) List!18186)

(assert (=> b!1642921 (= lt!605055 (++!4874 lt!605057 lt!605062))))

(declare-fun lt!605054 () BalanceConc!12020)

(assert (=> b!1642921 (= lt!605059 (list!7174 lt!605054))))

(declare-fun lt!605068 () BalanceConc!12020)

(assert (=> b!1642921 (= lt!605062 (list!7174 lt!605068))))

(declare-fun charsOf!1844 (Token!5956) BalanceConc!12020)

(assert (=> b!1642921 (= lt!605057 (list!7174 (charsOf!1844 (h!23519 tokens!457))))))

(declare-fun lex!1308 (LexerInterface!2824 List!18187 BalanceConc!12020) tuple2!17772)

(assert (=> b!1642921 (= lt!605060 (lex!1308 thiss!17113 rules!1846 lt!605068))))

(assert (=> b!1642921 (= lt!605068 (print!1355 thiss!17113 lt!605070))))

(assert (=> b!1642921 (= lt!605070 (seqFromList!2130 (t!150173 tokens!457)))))

(assert (=> b!1642921 (= lt!605054 (print!1355 thiss!17113 (seqFromList!2130 tokens!457)))))

(declare-fun b!1642922 () Bool)

(declare-fun res!736057 () Bool)

(assert (=> b!1642922 (=> (not res!736057) (not e!1053689))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!517 (LexerInterface!2824 List!18188 List!18187) Bool)

(assert (=> b!1642922 (= res!736057 (tokensListTwoByTwoPredicateSeparableList!517 thiss!17113 tokens!457 rules!1846))))

(assert (= (and start!157310 res!736060) b!1642906))

(assert (= (and b!1642906 res!736058) b!1642914))

(assert (= (and b!1642914 res!736059) b!1642919))

(assert (= (and b!1642919 res!736054) b!1642922))

(assert (= (and b!1642922 res!736057) b!1642915))

(assert (= (and b!1642915 res!736055) b!1642921))

(assert (= (and b!1642921 res!736061) b!1642910))

(assert (= (and b!1642910 (not res!736056)) b!1642916))

(assert (= (and b!1642916 (not res!736062)) b!1642918))

(assert (= (and b!1642918 (not res!736053)) b!1642911))

(assert (= b!1642913 b!1642912))

(assert (= b!1642920 b!1642913))

(assert (= (and start!157310 ((_ is Cons!18117) rules!1846)) b!1642920))

(assert (= b!1642917 b!1642907))

(assert (= b!1642909 b!1642917))

(assert (= b!1642908 b!1642909))

(assert (= (and start!157310 ((_ is Cons!18118) tokens!457)) b!1642908))

(declare-fun m!1984869 () Bool)

(assert (=> b!1642909 m!1984869))

(declare-fun m!1984871 () Bool)

(assert (=> b!1642914 m!1984871))

(declare-fun m!1984873 () Bool)

(assert (=> b!1642910 m!1984873))

(declare-fun m!1984875 () Bool)

(assert (=> b!1642910 m!1984875))

(declare-fun m!1984877 () Bool)

(assert (=> b!1642910 m!1984877))

(declare-fun m!1984879 () Bool)

(assert (=> b!1642910 m!1984879))

(declare-fun m!1984881 () Bool)

(assert (=> b!1642913 m!1984881))

(declare-fun m!1984883 () Bool)

(assert (=> b!1642913 m!1984883))

(declare-fun m!1984885 () Bool)

(assert (=> b!1642916 m!1984885))

(declare-fun m!1984887 () Bool)

(assert (=> b!1642916 m!1984887))

(declare-fun m!1984889 () Bool)

(assert (=> b!1642916 m!1984889))

(declare-fun m!1984891 () Bool)

(assert (=> b!1642916 m!1984891))

(declare-fun m!1984893 () Bool)

(assert (=> b!1642916 m!1984893))

(assert (=> b!1642916 m!1984889))

(assert (=> b!1642916 m!1984891))

(declare-fun m!1984895 () Bool)

(assert (=> b!1642906 m!1984895))

(declare-fun m!1984897 () Bool)

(assert (=> b!1642918 m!1984897))

(declare-fun m!1984899 () Bool)

(assert (=> b!1642919 m!1984899))

(declare-fun m!1984901 () Bool)

(assert (=> b!1642917 m!1984901))

(declare-fun m!1984903 () Bool)

(assert (=> b!1642917 m!1984903))

(declare-fun m!1984905 () Bool)

(assert (=> b!1642921 m!1984905))

(declare-fun m!1984907 () Bool)

(assert (=> b!1642921 m!1984907))

(declare-fun m!1984909 () Bool)

(assert (=> b!1642921 m!1984909))

(declare-fun m!1984911 () Bool)

(assert (=> b!1642921 m!1984911))

(declare-fun m!1984913 () Bool)

(assert (=> b!1642921 m!1984913))

(declare-fun m!1984915 () Bool)

(assert (=> b!1642921 m!1984915))

(assert (=> b!1642921 m!1984907))

(declare-fun m!1984917 () Bool)

(assert (=> b!1642921 m!1984917))

(assert (=> b!1642921 m!1984911))

(declare-fun m!1984919 () Bool)

(assert (=> b!1642921 m!1984919))

(declare-fun m!1984921 () Bool)

(assert (=> b!1642921 m!1984921))

(declare-fun m!1984923 () Bool)

(assert (=> b!1642921 m!1984923))

(declare-fun m!1984925 () Bool)

(assert (=> b!1642908 m!1984925))

(declare-fun m!1984927 () Bool)

(assert (=> b!1642911 m!1984927))

(declare-fun m!1984929 () Bool)

(assert (=> b!1642911 m!1984929))

(declare-fun m!1984931 () Bool)

(assert (=> b!1642911 m!1984931))

(declare-fun m!1984933 () Bool)

(assert (=> b!1642911 m!1984933))

(declare-fun m!1984935 () Bool)

(assert (=> b!1642911 m!1984935))

(declare-fun m!1984937 () Bool)

(assert (=> b!1642911 m!1984937))

(declare-fun m!1984939 () Bool)

(assert (=> b!1642922 m!1984939))

(check-sat (not b_next!45275) b_and!116529 b_and!116527 (not b!1642921) (not b!1642909) (not b!1642920) (not b!1642919) b_and!116525 (not b!1642918) (not b!1642922) (not b!1642906) (not b!1642911) b_and!116531 (not b_next!45271) (not b!1642908) (not b!1642917) (not b_next!45273) (not b!1642913) (not b!1642914) (not b_next!45277) (not b!1642916) (not b!1642910))
(check-sat (not b_next!45275) b_and!116529 b_and!116527 b_and!116525 (not b_next!45277) b_and!116531 (not b_next!45271) (not b_next!45273))
(get-model)

(declare-fun d!494658 () Bool)

(assert (=> d!494658 (= (inv!23470 (tag!3475 (h!23518 rules!1846))) (= (mod (str.len (value!100729 (tag!3475 (h!23518 rules!1846)))) 2) 0))))

(assert (=> b!1642913 d!494658))

(declare-fun d!494660 () Bool)

(declare-fun res!736075 () Bool)

(declare-fun e!1053696 () Bool)

(assert (=> d!494660 (=> (not res!736075) (not e!1053696))))

(declare-fun semiInverseModEq!1228 (Int Int) Bool)

(assert (=> d!494660 (= res!736075 (semiInverseModEq!1228 (toChars!4493 (transformation!3195 (h!23518 rules!1846))) (toValue!4634 (transformation!3195 (h!23518 rules!1846)))))))

(assert (=> d!494660 (= (inv!23474 (transformation!3195 (h!23518 rules!1846))) e!1053696)))

(declare-fun b!1642928 () Bool)

(declare-fun equivClasses!1169 (Int Int) Bool)

(assert (=> b!1642928 (= e!1053696 (equivClasses!1169 (toChars!4493 (transformation!3195 (h!23518 rules!1846))) (toValue!4634 (transformation!3195 (h!23518 rules!1846)))))))

(assert (= (and d!494660 res!736075) b!1642928))

(declare-fun m!1984947 () Bool)

(assert (=> d!494660 m!1984947))

(declare-fun m!1984949 () Bool)

(assert (=> b!1642928 m!1984949))

(assert (=> b!1642913 d!494660))

(declare-fun d!494662 () Bool)

(declare-fun res!736078 () Bool)

(declare-fun e!1053699 () Bool)

(assert (=> d!494662 (=> (not res!736078) (not e!1053699))))

(declare-fun rulesValid!1155 (LexerInterface!2824 List!18187) Bool)

(assert (=> d!494662 (= res!736078 (rulesValid!1155 thiss!17113 rules!1846))))

(assert (=> d!494662 (= (rulesInvariant!2493 thiss!17113 rules!1846) e!1053699)))

(declare-fun b!1642931 () Bool)

(declare-datatypes ((List!18189 0))(
  ( (Nil!18119) (Cons!18119 (h!23520 String!20757) (t!150196 List!18189)) )
))
(declare-fun noDuplicateTag!1155 (LexerInterface!2824 List!18187 List!18189) Bool)

(assert (=> b!1642931 (= e!1053699 (noDuplicateTag!1155 thiss!17113 rules!1846 Nil!18119))))

(assert (= (and d!494662 res!736078) b!1642931))

(declare-fun m!1984951 () Bool)

(assert (=> d!494662 m!1984951))

(declare-fun m!1984953 () Bool)

(assert (=> b!1642931 m!1984953))

(assert (=> b!1642914 d!494662))

(declare-fun d!494664 () Bool)

(declare-fun e!1053702 () Bool)

(assert (=> d!494664 e!1053702))

(declare-fun res!736081 () Bool)

(assert (=> d!494664 (=> (not res!736081) (not e!1053702))))

(declare-fun isBalanced!1837 (Conc!6039) Bool)

(declare-fun prepend!746 (Conc!6039 Token!5956) Conc!6039)

(assert (=> d!494664 (= res!736081 (isBalanced!1837 (prepend!746 (c!267173 (seqFromList!2130 (t!150173 (t!150173 tokens!457)))) (h!23519 (t!150173 tokens!457)))))))

(declare-fun lt!605073 () BalanceConc!12022)

(assert (=> d!494664 (= lt!605073 (BalanceConc!12023 (prepend!746 (c!267173 (seqFromList!2130 (t!150173 (t!150173 tokens!457)))) (h!23519 (t!150173 tokens!457)))))))

(assert (=> d!494664 (= (prepend!745 (seqFromList!2130 (t!150173 (t!150173 tokens!457))) (h!23519 (t!150173 tokens!457))) lt!605073)))

(declare-fun b!1642934 () Bool)

(assert (=> b!1642934 (= e!1053702 (= (list!7173 lt!605073) (Cons!18118 (h!23519 (t!150173 tokens!457)) (list!7173 (seqFromList!2130 (t!150173 (t!150173 tokens!457)))))))))

(assert (= (and d!494664 res!736081) b!1642934))

(declare-fun m!1984955 () Bool)

(assert (=> d!494664 m!1984955))

(assert (=> d!494664 m!1984955))

(declare-fun m!1984957 () Bool)

(assert (=> d!494664 m!1984957))

(declare-fun m!1984959 () Bool)

(assert (=> b!1642934 m!1984959))

(assert (=> b!1642934 m!1984889))

(declare-fun m!1984961 () Bool)

(assert (=> b!1642934 m!1984961))

(assert (=> b!1642916 d!494664))

(declare-fun d!494666 () Bool)

(assert (=> d!494666 (= (list!7173 (_1!10288 lt!605060)) (list!7173 (prepend!745 (seqFromList!2130 (t!150173 (t!150173 tokens!457))) (h!23519 (t!150173 tokens!457)))))))

(declare-fun lt!605086 () Unit!29877)

(declare-fun choose!9854 (Token!5956 List!18188 BalanceConc!12022) Unit!29877)

(assert (=> d!494666 (= lt!605086 (choose!9854 (h!23519 (t!150173 tokens!457)) (t!150173 (t!150173 tokens!457)) (_1!10288 lt!605060)))))

(declare-fun $colon$colon!353 (List!18188 Token!5956) List!18188)

(assert (=> d!494666 (= (list!7173 (_1!10288 lt!605060)) (list!7173 (seqFromList!2130 ($colon$colon!353 (t!150173 (t!150173 tokens!457)) (h!23519 (t!150173 tokens!457))))))))

(assert (=> d!494666 (= (seqFromListBHdTlConstructive!270 (h!23519 (t!150173 tokens!457)) (t!150173 (t!150173 tokens!457)) (_1!10288 lt!605060)) lt!605086)))

(declare-fun bs!395829 () Bool)

(assert (= bs!395829 d!494666))

(assert (=> bs!395829 m!1984889))

(assert (=> bs!395829 m!1984891))

(declare-fun m!1984963 () Bool)

(assert (=> bs!395829 m!1984963))

(declare-fun m!1984965 () Bool)

(assert (=> bs!395829 m!1984965))

(assert (=> bs!395829 m!1984965))

(declare-fun m!1984967 () Bool)

(assert (=> bs!395829 m!1984967))

(assert (=> bs!395829 m!1984873))

(assert (=> bs!395829 m!1984963))

(declare-fun m!1984969 () Bool)

(assert (=> bs!395829 m!1984969))

(assert (=> bs!395829 m!1984891))

(assert (=> bs!395829 m!1984893))

(assert (=> bs!395829 m!1984889))

(assert (=> b!1642916 d!494666))

(declare-fun d!494668 () Bool)

(declare-fun list!7176 (Conc!6039) List!18188)

(assert (=> d!494668 (= (list!7173 (prepend!745 (seqFromList!2130 (t!150173 (t!150173 tokens!457))) (h!23519 (t!150173 tokens!457)))) (list!7176 (c!267173 (prepend!745 (seqFromList!2130 (t!150173 (t!150173 tokens!457))) (h!23519 (t!150173 tokens!457))))))))

(declare-fun bs!395830 () Bool)

(assert (= bs!395830 d!494668))

(declare-fun m!1984971 () Bool)

(assert (=> bs!395830 m!1984971))

(assert (=> b!1642916 d!494668))

(declare-fun d!494670 () Bool)

(assert (=> d!494670 (= (list!7173 lt!605070) (list!7176 (c!267173 lt!605070)))))

(declare-fun bs!395831 () Bool)

(assert (= bs!395831 d!494670))

(declare-fun m!1984973 () Bool)

(assert (=> bs!395831 m!1984973))

(assert (=> b!1642916 d!494670))

(declare-fun d!494672 () Bool)

(declare-fun fromListB!940 (List!18188) BalanceConc!12022)

(assert (=> d!494672 (= (seqFromList!2130 (t!150173 (t!150173 tokens!457))) (fromListB!940 (t!150173 (t!150173 tokens!457))))))

(declare-fun bs!395832 () Bool)

(assert (= bs!395832 d!494672))

(declare-fun m!1984987 () Bool)

(assert (=> bs!395832 m!1984987))

(assert (=> b!1642916 d!494672))

(declare-fun d!494674 () Bool)

(assert (=> d!494674 (= (inv!23470 (tag!3475 (rule!5045 (h!23519 tokens!457)))) (= (mod (str.len (value!100729 (tag!3475 (rule!5045 (h!23519 tokens!457))))) 2) 0))))

(assert (=> b!1642917 d!494674))

(declare-fun d!494676 () Bool)

(declare-fun res!736103 () Bool)

(declare-fun e!1053712 () Bool)

(assert (=> d!494676 (=> (not res!736103) (not e!1053712))))

(assert (=> d!494676 (= res!736103 (semiInverseModEq!1228 (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457)))) (toValue!4634 (transformation!3195 (rule!5045 (h!23519 tokens!457))))))))

(assert (=> d!494676 (= (inv!23474 (transformation!3195 (rule!5045 (h!23519 tokens!457)))) e!1053712)))

(declare-fun b!1642962 () Bool)

(assert (=> b!1642962 (= e!1053712 (equivClasses!1169 (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457)))) (toValue!4634 (transformation!3195 (rule!5045 (h!23519 tokens!457))))))))

(assert (= (and d!494676 res!736103) b!1642962))

(declare-fun m!1984997 () Bool)

(assert (=> d!494676 m!1984997))

(declare-fun m!1984999 () Bool)

(assert (=> b!1642962 m!1984999))

(assert (=> b!1642917 d!494676))

(declare-fun d!494678 () Bool)

(assert (=> d!494678 (= (isEmpty!11141 rules!1846) ((_ is Nil!18117) rules!1846))))

(assert (=> b!1642906 d!494678))

(declare-fun d!494682 () Bool)

(declare-fun res!736108 () Bool)

(declare-fun e!1053715 () Bool)

(assert (=> d!494682 (=> (not res!736108) (not e!1053715))))

(declare-fun isEmpty!11143 (List!18186) Bool)

(assert (=> d!494682 (= res!736108 (not (isEmpty!11143 (originalCharacters!4009 (h!23519 tokens!457)))))))

(assert (=> d!494682 (= (inv!23473 (h!23519 tokens!457)) e!1053715)))

(declare-fun b!1642967 () Bool)

(declare-fun res!736109 () Bool)

(assert (=> b!1642967 (=> (not res!736109) (not e!1053715))))

(declare-fun dynLambda!8086 (Int TokenValue!3285) BalanceConc!12020)

(assert (=> b!1642967 (= res!736109 (= (originalCharacters!4009 (h!23519 tokens!457)) (list!7174 (dynLambda!8086 (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457)))) (value!100730 (h!23519 tokens!457))))))))

(declare-fun b!1642968 () Bool)

(declare-fun size!14431 (List!18186) Int)

(assert (=> b!1642968 (= e!1053715 (= (size!14428 (h!23519 tokens!457)) (size!14431 (originalCharacters!4009 (h!23519 tokens!457)))))))

(assert (= (and d!494682 res!736108) b!1642967))

(assert (= (and b!1642967 res!736109) b!1642968))

(declare-fun b_lambda!51629 () Bool)

(assert (=> (not b_lambda!51629) (not b!1642967)))

(declare-fun t!150175 () Bool)

(declare-fun tb!94031 () Bool)

(assert (=> (and b!1642907 (= (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457)))) (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457))))) t!150175) tb!94031))

(declare-fun b!1642973 () Bool)

(declare-fun e!1053718 () Bool)

(declare-fun tp!476179 () Bool)

(declare-fun inv!23475 (Conc!6038) Bool)

(assert (=> b!1642973 (= e!1053718 (and (inv!23475 (c!267171 (dynLambda!8086 (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457)))) (value!100730 (h!23519 tokens!457))))) tp!476179))))

(declare-fun result!113546 () Bool)

(declare-fun inv!23476 (BalanceConc!12020) Bool)

(assert (=> tb!94031 (= result!113546 (and (inv!23476 (dynLambda!8086 (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457)))) (value!100730 (h!23519 tokens!457)))) e!1053718))))

(assert (= tb!94031 b!1642973))

(declare-fun m!1985015 () Bool)

(assert (=> b!1642973 m!1985015))

(declare-fun m!1985017 () Bool)

(assert (=> tb!94031 m!1985017))

(assert (=> b!1642967 t!150175))

(declare-fun b_and!116533 () Bool)

(assert (= b_and!116527 (and (=> t!150175 result!113546) b_and!116533)))

(declare-fun t!150177 () Bool)

(declare-fun tb!94033 () Bool)

(assert (=> (and b!1642912 (= (toChars!4493 (transformation!3195 (h!23518 rules!1846))) (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457))))) t!150177) tb!94033))

(declare-fun result!113550 () Bool)

(assert (= result!113550 result!113546))

(assert (=> b!1642967 t!150177))

(declare-fun b_and!116535 () Bool)

(assert (= b_and!116531 (and (=> t!150177 result!113550) b_and!116535)))

(declare-fun m!1985019 () Bool)

(assert (=> d!494682 m!1985019))

(declare-fun m!1985021 () Bool)

(assert (=> b!1642967 m!1985021))

(assert (=> b!1642967 m!1985021))

(declare-fun m!1985023 () Bool)

(assert (=> b!1642967 m!1985023))

(declare-fun m!1985025 () Bool)

(assert (=> b!1642968 m!1985025))

(assert (=> b!1642908 d!494682))

(declare-fun d!494684 () Bool)

(declare-fun prefixMatchZipperSequence!598 (Regex!4523 BalanceConc!12020) Bool)

(declare-fun rulesRegex!580 (LexerInterface!2824 List!18187) Regex!4523)

(declare-fun ++!4876 (BalanceConc!12020 BalanceConc!12020) BalanceConc!12020)

(declare-fun singletonSeq!1664 (C!9220) BalanceConc!12020)

(declare-fun apply!4724 (BalanceConc!12020 Int) C!9220)

(assert (=> d!494684 (= (separableTokensPredicate!764 thiss!17113 (h!23519 tokens!457) (h!23519 (t!150173 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!598 (rulesRegex!580 thiss!17113 rules!1846) (++!4876 (charsOf!1844 (h!23519 tokens!457)) (singletonSeq!1664 (apply!4724 (charsOf!1844 (h!23519 (t!150173 tokens!457))) 0))))))))

(declare-fun bs!395833 () Bool)

(assert (= bs!395833 d!494684))

(declare-fun m!1985063 () Bool)

(assert (=> bs!395833 m!1985063))

(assert (=> bs!395833 m!1984907))

(declare-fun m!1985065 () Bool)

(assert (=> bs!395833 m!1985065))

(declare-fun m!1985067 () Bool)

(assert (=> bs!395833 m!1985067))

(declare-fun m!1985069 () Bool)

(assert (=> bs!395833 m!1985069))

(assert (=> bs!395833 m!1985069))

(declare-fun m!1985071 () Bool)

(assert (=> bs!395833 m!1985071))

(assert (=> bs!395833 m!1985071))

(assert (=> bs!395833 m!1985065))

(assert (=> bs!395833 m!1984907))

(assert (=> bs!395833 m!1985063))

(assert (=> bs!395833 m!1985067))

(declare-fun m!1985073 () Bool)

(assert (=> bs!395833 m!1985073))

(assert (=> b!1642918 d!494684))

(declare-fun d!494688 () Bool)

(declare-fun c!267189 () Bool)

(assert (=> d!494688 (= c!267189 ((_ is IntegerValue!9855) (value!100730 (h!23519 tokens!457))))))

(declare-fun e!1053738 () Bool)

(assert (=> d!494688 (= (inv!21 (value!100730 (h!23519 tokens!457))) e!1053738)))

(declare-fun b!1643001 () Bool)

(declare-fun e!1053736 () Bool)

(declare-fun inv!15 (TokenValue!3285) Bool)

(assert (=> b!1643001 (= e!1053736 (inv!15 (value!100730 (h!23519 tokens!457))))))

(declare-fun b!1643002 () Bool)

(declare-fun e!1053737 () Bool)

(declare-fun inv!17 (TokenValue!3285) Bool)

(assert (=> b!1643002 (= e!1053737 (inv!17 (value!100730 (h!23519 tokens!457))))))

(declare-fun b!1643003 () Bool)

(declare-fun inv!16 (TokenValue!3285) Bool)

(assert (=> b!1643003 (= e!1053738 (inv!16 (value!100730 (h!23519 tokens!457))))))

(declare-fun b!1643004 () Bool)

(assert (=> b!1643004 (= e!1053738 e!1053737)))

(declare-fun c!267188 () Bool)

(assert (=> b!1643004 (= c!267188 ((_ is IntegerValue!9856) (value!100730 (h!23519 tokens!457))))))

(declare-fun b!1643005 () Bool)

(declare-fun res!736117 () Bool)

(assert (=> b!1643005 (=> res!736117 e!1053736)))

(assert (=> b!1643005 (= res!736117 (not ((_ is IntegerValue!9857) (value!100730 (h!23519 tokens!457)))))))

(assert (=> b!1643005 (= e!1053737 e!1053736)))

(assert (= (and d!494688 c!267189) b!1643003))

(assert (= (and d!494688 (not c!267189)) b!1643004))

(assert (= (and b!1643004 c!267188) b!1643002))

(assert (= (and b!1643004 (not c!267188)) b!1643005))

(assert (= (and b!1643005 (not res!736117)) b!1643001))

(declare-fun m!1985083 () Bool)

(assert (=> b!1643001 m!1985083))

(declare-fun m!1985085 () Bool)

(assert (=> b!1643002 m!1985085))

(declare-fun m!1985087 () Bool)

(assert (=> b!1643003 m!1985087))

(assert (=> b!1642909 d!494688))

(declare-fun b!1643048 () Bool)

(declare-fun e!1053773 () Bool)

(assert (=> b!1643048 (= e!1053773 true)))

(declare-fun b!1643047 () Bool)

(declare-fun e!1053772 () Bool)

(assert (=> b!1643047 (= e!1053772 e!1053773)))

(declare-fun b!1643046 () Bool)

(declare-fun e!1053771 () Bool)

(assert (=> b!1643046 (= e!1053771 e!1053772)))

(declare-fun d!494692 () Bool)

(assert (=> d!494692 e!1053771))

(assert (= b!1643047 b!1643048))

(assert (= b!1643046 b!1643047))

(assert (= (and d!494692 ((_ is Cons!18117) rules!1846)) b!1643046))

(declare-fun order!10767 () Int)

(declare-fun lambda!67529 () Int)

(declare-fun order!10765 () Int)

(declare-fun dynLambda!8087 (Int Int) Int)

(declare-fun dynLambda!8088 (Int Int) Int)

(assert (=> b!1643048 (< (dynLambda!8087 order!10765 (toValue!4634 (transformation!3195 (h!23518 rules!1846)))) (dynLambda!8088 order!10767 lambda!67529))))

(declare-fun order!10769 () Int)

(declare-fun dynLambda!8089 (Int Int) Int)

(assert (=> b!1643048 (< (dynLambda!8089 order!10769 (toChars!4493 (transformation!3195 (h!23518 rules!1846)))) (dynLambda!8088 order!10767 lambda!67529))))

(assert (=> d!494692 true))

(declare-fun lt!605148 () Bool)

(declare-fun forall!4127 (List!18188 Int) Bool)

(assert (=> d!494692 (= lt!605148 (forall!4127 tokens!457 lambda!67529))))

(declare-fun e!1053764 () Bool)

(assert (=> d!494692 (= lt!605148 e!1053764)))

(declare-fun res!736136 () Bool)

(assert (=> d!494692 (=> res!736136 e!1053764)))

(assert (=> d!494692 (= res!736136 (not ((_ is Cons!18118) tokens!457)))))

(assert (=> d!494692 (not (isEmpty!11141 rules!1846))))

(assert (=> d!494692 (= (rulesProduceEachTokenIndividuallyList!1026 thiss!17113 rules!1846 tokens!457) lt!605148)))

(declare-fun b!1643036 () Bool)

(declare-fun e!1053763 () Bool)

(assert (=> b!1643036 (= e!1053764 e!1053763)))

(declare-fun res!736137 () Bool)

(assert (=> b!1643036 (=> (not res!736137) (not e!1053763))))

(declare-fun rulesProduceIndividualToken!1473 (LexerInterface!2824 List!18187 Token!5956) Bool)

(assert (=> b!1643036 (= res!736137 (rulesProduceIndividualToken!1473 thiss!17113 rules!1846 (h!23519 tokens!457)))))

(declare-fun b!1643037 () Bool)

(assert (=> b!1643037 (= e!1053763 (rulesProduceEachTokenIndividuallyList!1026 thiss!17113 rules!1846 (t!150173 tokens!457)))))

(assert (= (and d!494692 (not res!736136)) b!1643036))

(assert (= (and b!1643036 res!736137) b!1643037))

(declare-fun m!1985157 () Bool)

(assert (=> d!494692 m!1985157))

(assert (=> d!494692 m!1984895))

(declare-fun m!1985159 () Bool)

(assert (=> b!1643036 m!1985159))

(declare-fun m!1985161 () Bool)

(assert (=> b!1643037 m!1985161))

(assert (=> b!1642919 d!494692))

(declare-fun d!494720 () Bool)

(declare-fun lt!605151 () BalanceConc!12020)

(assert (=> d!494720 (= (list!7174 lt!605151) (printList!937 thiss!17113 (list!7173 lt!605070)))))

(assert (=> d!494720 (= lt!605151 (printTailRec!875 thiss!17113 lt!605070 0 (BalanceConc!12021 Empty!6038)))))

(assert (=> d!494720 (= (print!1355 thiss!17113 lt!605070) lt!605151)))

(declare-fun bs!395841 () Bool)

(assert (= bs!395841 d!494720))

(declare-fun m!1985163 () Bool)

(assert (=> bs!395841 m!1985163))

(assert (=> bs!395841 m!1984885))

(assert (=> bs!395841 m!1984885))

(declare-fun m!1985165 () Bool)

(assert (=> bs!395841 m!1985165))

(declare-fun m!1985167 () Bool)

(assert (=> bs!395841 m!1985167))

(assert (=> b!1642921 d!494720))

(declare-fun d!494722 () Bool)

(declare-fun list!7178 (Conc!6038) List!18186)

(assert (=> d!494722 (= (list!7174 lt!605054) (list!7178 (c!267171 lt!605054)))))

(declare-fun bs!395842 () Bool)

(assert (= bs!395842 d!494722))

(declare-fun m!1985169 () Bool)

(assert (=> bs!395842 m!1985169))

(assert (=> b!1642921 d!494722))

(declare-fun b!1643060 () Bool)

(declare-fun e!1053778 () List!18186)

(assert (=> b!1643060 (= e!1053778 (Cons!18116 (h!23517 lt!605057) (++!4874 (t!150171 lt!605057) lt!605062)))))

(declare-fun d!494724 () Bool)

(declare-fun e!1053779 () Bool)

(assert (=> d!494724 e!1053779))

(declare-fun res!736143 () Bool)

(assert (=> d!494724 (=> (not res!736143) (not e!1053779))))

(declare-fun lt!605154 () List!18186)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2506 (List!18186) (InoxSet C!9220))

(assert (=> d!494724 (= res!736143 (= (content!2506 lt!605154) ((_ map or) (content!2506 lt!605057) (content!2506 lt!605062))))))

(assert (=> d!494724 (= lt!605154 e!1053778)))

(declare-fun c!267199 () Bool)

(assert (=> d!494724 (= c!267199 ((_ is Nil!18116) lt!605057))))

(assert (=> d!494724 (= (++!4874 lt!605057 lt!605062) lt!605154)))

(declare-fun b!1643059 () Bool)

(assert (=> b!1643059 (= e!1053778 lt!605062)))

(declare-fun b!1643061 () Bool)

(declare-fun res!736142 () Bool)

(assert (=> b!1643061 (=> (not res!736142) (not e!1053779))))

(assert (=> b!1643061 (= res!736142 (= (size!14431 lt!605154) (+ (size!14431 lt!605057) (size!14431 lt!605062))))))

(declare-fun b!1643062 () Bool)

(assert (=> b!1643062 (= e!1053779 (or (not (= lt!605062 Nil!18116)) (= lt!605154 lt!605057)))))

(assert (= (and d!494724 c!267199) b!1643059))

(assert (= (and d!494724 (not c!267199)) b!1643060))

(assert (= (and d!494724 res!736143) b!1643061))

(assert (= (and b!1643061 res!736142) b!1643062))

(declare-fun m!1985171 () Bool)

(assert (=> b!1643060 m!1985171))

(declare-fun m!1985173 () Bool)

(assert (=> d!494724 m!1985173))

(declare-fun m!1985175 () Bool)

(assert (=> d!494724 m!1985175))

(declare-fun m!1985177 () Bool)

(assert (=> d!494724 m!1985177))

(declare-fun m!1985179 () Bool)

(assert (=> b!1643061 m!1985179))

(declare-fun m!1985181 () Bool)

(assert (=> b!1643061 m!1985181))

(declare-fun m!1985183 () Bool)

(assert (=> b!1643061 m!1985183))

(assert (=> b!1642921 d!494724))

(declare-fun d!494726 () Bool)

(assert (=> d!494726 (= (seqFromList!2130 tokens!457) (fromListB!940 tokens!457))))

(declare-fun bs!395843 () Bool)

(assert (= bs!395843 d!494726))

(declare-fun m!1985185 () Bool)

(assert (=> bs!395843 m!1985185))

(assert (=> b!1642921 d!494726))

(declare-fun d!494728 () Bool)

(assert (=> d!494728 (= (list!7174 lt!605068) (list!7178 (c!267171 lt!605068)))))

(declare-fun bs!395844 () Bool)

(assert (= bs!395844 d!494728))

(declare-fun m!1985187 () Bool)

(assert (=> bs!395844 m!1985187))

(assert (=> b!1642921 d!494728))

(declare-fun d!494730 () Bool)

(declare-fun lt!605157 () BalanceConc!12020)

(assert (=> d!494730 (= (list!7174 lt!605157) (originalCharacters!4009 (h!23519 tokens!457)))))

(assert (=> d!494730 (= lt!605157 (dynLambda!8086 (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457)))) (value!100730 (h!23519 tokens!457))))))

(assert (=> d!494730 (= (charsOf!1844 (h!23519 tokens!457)) lt!605157)))

(declare-fun b_lambda!51631 () Bool)

(assert (=> (not b_lambda!51631) (not d!494730)))

(assert (=> d!494730 t!150175))

(declare-fun b_and!116537 () Bool)

(assert (= b_and!116533 (and (=> t!150175 result!113546) b_and!116537)))

(assert (=> d!494730 t!150177))

(declare-fun b_and!116539 () Bool)

(assert (= b_and!116535 (and (=> t!150177 result!113550) b_and!116539)))

(declare-fun m!1985189 () Bool)

(assert (=> d!494730 m!1985189))

(assert (=> d!494730 m!1985021))

(assert (=> b!1642921 d!494730))

(declare-fun d!494732 () Bool)

(assert (=> d!494732 (= (seqFromList!2130 (t!150173 tokens!457)) (fromListB!940 (t!150173 tokens!457)))))

(declare-fun bs!395845 () Bool)

(assert (= bs!395845 d!494732))

(declare-fun m!1985191 () Bool)

(assert (=> bs!395845 m!1985191))

(assert (=> b!1642921 d!494732))

(declare-fun d!494734 () Bool)

(assert (=> d!494734 (= (list!7174 (charsOf!1844 (h!23519 tokens!457))) (list!7178 (c!267171 (charsOf!1844 (h!23519 tokens!457)))))))

(declare-fun bs!395846 () Bool)

(assert (= bs!395846 d!494734))

(declare-fun m!1985193 () Bool)

(assert (=> bs!395846 m!1985193))

(assert (=> b!1642921 d!494734))

(declare-fun d!494736 () Bool)

(declare-fun lt!605158 () BalanceConc!12020)

(assert (=> d!494736 (= (list!7174 lt!605158) (printList!937 thiss!17113 (list!7173 (seqFromList!2130 tokens!457))))))

(assert (=> d!494736 (= lt!605158 (printTailRec!875 thiss!17113 (seqFromList!2130 tokens!457) 0 (BalanceConc!12021 Empty!6038)))))

(assert (=> d!494736 (= (print!1355 thiss!17113 (seqFromList!2130 tokens!457)) lt!605158)))

(declare-fun bs!395847 () Bool)

(assert (= bs!395847 d!494736))

(declare-fun m!1985195 () Bool)

(assert (=> bs!395847 m!1985195))

(assert (=> bs!395847 m!1984911))

(declare-fun m!1985197 () Bool)

(assert (=> bs!395847 m!1985197))

(assert (=> bs!395847 m!1985197))

(declare-fun m!1985199 () Bool)

(assert (=> bs!395847 m!1985199))

(assert (=> bs!395847 m!1984911))

(declare-fun m!1985201 () Bool)

(assert (=> bs!395847 m!1985201))

(assert (=> b!1642921 d!494736))

(declare-fun b!1643105 () Bool)

(declare-fun lt!605245 () tuple2!17772)

(declare-fun e!1053807 () Bool)

(declare-datatypes ((tuple2!17776 0))(
  ( (tuple2!17777 (_1!10290 List!18188) (_2!10290 List!18186)) )
))
(declare-fun lexList!856 (LexerInterface!2824 List!18187 List!18186) tuple2!17776)

(assert (=> b!1643105 (= e!1053807 (= (list!7174 (_2!10288 lt!605245)) (_2!10290 (lexList!856 thiss!17113 rules!1846 (list!7174 lt!605068)))))))

(declare-fun d!494738 () Bool)

(assert (=> d!494738 e!1053807))

(declare-fun res!736172 () Bool)

(assert (=> d!494738 (=> (not res!736172) (not e!1053807))))

(declare-fun e!1053809 () Bool)

(assert (=> d!494738 (= res!736172 e!1053809)))

(declare-fun c!267205 () Bool)

(declare-fun size!14433 (BalanceConc!12022) Int)

(assert (=> d!494738 (= c!267205 (> (size!14433 (_1!10288 lt!605245)) 0))))

(declare-fun lexTailRecV2!579 (LexerInterface!2824 List!18187 BalanceConc!12020 BalanceConc!12020 BalanceConc!12020 BalanceConc!12022) tuple2!17772)

(assert (=> d!494738 (= lt!605245 (lexTailRecV2!579 thiss!17113 rules!1846 lt!605068 (BalanceConc!12021 Empty!6038) lt!605068 (BalanceConc!12023 Empty!6039)))))

(assert (=> d!494738 (= (lex!1308 thiss!17113 rules!1846 lt!605068) lt!605245)))

(declare-fun b!1643106 () Bool)

(assert (=> b!1643106 (= e!1053809 (= (_2!10288 lt!605245) lt!605068))))

(declare-fun b!1643107 () Bool)

(declare-fun e!1053808 () Bool)

(declare-fun isEmpty!11144 (BalanceConc!12022) Bool)

(assert (=> b!1643107 (= e!1053808 (not (isEmpty!11144 (_1!10288 lt!605245))))))

(declare-fun b!1643108 () Bool)

(declare-fun res!736173 () Bool)

(assert (=> b!1643108 (=> (not res!736173) (not e!1053807))))

(assert (=> b!1643108 (= res!736173 (= (list!7173 (_1!10288 lt!605245)) (_1!10290 (lexList!856 thiss!17113 rules!1846 (list!7174 lt!605068)))))))

(declare-fun b!1643109 () Bool)

(assert (=> b!1643109 (= e!1053809 e!1053808)))

(declare-fun res!736171 () Bool)

(declare-fun size!14434 (BalanceConc!12020) Int)

(assert (=> b!1643109 (= res!736171 (< (size!14434 (_2!10288 lt!605245)) (size!14434 lt!605068)))))

(assert (=> b!1643109 (=> (not res!736171) (not e!1053808))))

(assert (= (and d!494738 c!267205) b!1643109))

(assert (= (and d!494738 (not c!267205)) b!1643106))

(assert (= (and b!1643109 res!736171) b!1643107))

(assert (= (and d!494738 res!736172) b!1643108))

(assert (= (and b!1643108 res!736173) b!1643105))

(declare-fun m!1985309 () Bool)

(assert (=> b!1643107 m!1985309))

(declare-fun m!1985311 () Bool)

(assert (=> b!1643105 m!1985311))

(assert (=> b!1643105 m!1984921))

(assert (=> b!1643105 m!1984921))

(declare-fun m!1985313 () Bool)

(assert (=> b!1643105 m!1985313))

(declare-fun m!1985315 () Bool)

(assert (=> b!1643109 m!1985315))

(declare-fun m!1985317 () Bool)

(assert (=> b!1643109 m!1985317))

(declare-fun m!1985319 () Bool)

(assert (=> b!1643108 m!1985319))

(assert (=> b!1643108 m!1984921))

(assert (=> b!1643108 m!1984921))

(assert (=> b!1643108 m!1985313))

(declare-fun m!1985321 () Bool)

(assert (=> d!494738 m!1985321))

(declare-fun m!1985323 () Bool)

(assert (=> d!494738 m!1985323))

(assert (=> b!1642921 d!494738))

(declare-fun d!494748 () Bool)

(assert (=> d!494748 (= (list!7173 (_1!10288 lt!605060)) (list!7176 (c!267173 (_1!10288 lt!605060))))))

(declare-fun bs!395849 () Bool)

(assert (= bs!395849 d!494748))

(declare-fun m!1985325 () Bool)

(assert (=> bs!395849 m!1985325))

(assert (=> b!1642910 d!494748))

(declare-fun d!494750 () Bool)

(declare-fun e!1053818 () Bool)

(assert (=> d!494750 e!1053818))

(declare-fun res!736180 () Bool)

(assert (=> d!494750 (=> (not res!736180) (not e!1053818))))

(assert (=> d!494750 (= res!736180 (= (list!7173 (_1!10288 (lex!1308 thiss!17113 rules!1846 (print!1355 thiss!17113 (seqFromList!2130 (t!150173 tokens!457)))))) (t!150173 tokens!457)))))

(declare-fun lt!605302 () Unit!29877)

(declare-fun e!1053819 () Unit!29877)

(assert (=> d!494750 (= lt!605302 e!1053819)))

(declare-fun c!267208 () Bool)

(assert (=> d!494750 (= c!267208 (or ((_ is Nil!18118) (t!150173 tokens!457)) ((_ is Nil!18118) (t!150173 (t!150173 tokens!457)))))))

(assert (=> d!494750 (not (isEmpty!11141 rules!1846))))

(assert (=> d!494750 (= (theoremInvertabilityWhenTokenListSeparable!267 thiss!17113 rules!1846 (t!150173 tokens!457)) lt!605302)))

(declare-fun b!1643120 () Bool)

(declare-fun Unit!29888 () Unit!29877)

(assert (=> b!1643120 (= e!1053819 Unit!29888)))

(declare-fun b!1643121 () Bool)

(declare-fun Unit!29889 () Unit!29877)

(assert (=> b!1643121 (= e!1053819 Unit!29889)))

(declare-fun lt!605314 () BalanceConc!12020)

(assert (=> b!1643121 (= lt!605314 (print!1355 thiss!17113 (seqFromList!2130 (t!150173 tokens!457))))))

(declare-fun lt!605318 () BalanceConc!12020)

(assert (=> b!1643121 (= lt!605318 (print!1355 thiss!17113 (seqFromList!2130 (t!150173 (t!150173 tokens!457)))))))

(declare-fun lt!605317 () tuple2!17772)

(assert (=> b!1643121 (= lt!605317 (lex!1308 thiss!17113 rules!1846 lt!605318))))

(declare-fun lt!605310 () List!18186)

(assert (=> b!1643121 (= lt!605310 (list!7174 (charsOf!1844 (h!23519 (t!150173 tokens!457)))))))

(declare-fun lt!605309 () List!18186)

(assert (=> b!1643121 (= lt!605309 (list!7174 lt!605318))))

(declare-fun lt!605313 () Unit!29877)

(assert (=> b!1643121 (= lt!605313 (lemmaConcatTwoListThenFirstIsPrefix!978 lt!605310 lt!605309))))

(assert (=> b!1643121 (isPrefix!1453 lt!605310 (++!4874 lt!605310 lt!605309))))

(declare-fun lt!605300 () Unit!29877)

(assert (=> b!1643121 (= lt!605300 lt!605313)))

(declare-fun lt!605324 () Unit!29877)

(assert (=> b!1643121 (= lt!605324 (theoremInvertabilityWhenTokenListSeparable!267 thiss!17113 rules!1846 (t!150173 (t!150173 tokens!457))))))

(declare-fun lt!605307 () Unit!29877)

(assert (=> b!1643121 (= lt!605307 (seqFromListBHdTlConstructive!270 (h!23519 (t!150173 (t!150173 tokens!457))) (t!150173 (t!150173 (t!150173 tokens!457))) (_1!10288 lt!605317)))))

(assert (=> b!1643121 (= (list!7173 (_1!10288 lt!605317)) (list!7173 (prepend!745 (seqFromList!2130 (t!150173 (t!150173 (t!150173 tokens!457)))) (h!23519 (t!150173 (t!150173 tokens!457))))))))

(declare-fun lt!605304 () Unit!29877)

(assert (=> b!1643121 (= lt!605304 lt!605307)))

(declare-fun lt!605312 () Option!3426)

(assert (=> b!1643121 (= lt!605312 (maxPrefix!1386 thiss!17113 rules!1846 (list!7174 lt!605314)))))

(assert (=> b!1643121 (= (print!1355 thiss!17113 (singletonSeq!1663 (h!23519 (t!150173 tokens!457)))) (printTailRec!875 thiss!17113 (singletonSeq!1663 (h!23519 (t!150173 tokens!457))) 0 (BalanceConc!12021 Empty!6038)))))

(declare-fun lt!605303 () Unit!29877)

(declare-fun Unit!29898 () Unit!29877)

(assert (=> b!1643121 (= lt!605303 Unit!29898)))

(declare-fun lt!605320 () Unit!29877)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!394 (LexerInterface!2824 List!18187 List!18186 List!18186) Unit!29877)

(assert (=> b!1643121 (= lt!605320 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!394 thiss!17113 rules!1846 (list!7174 (charsOf!1844 (h!23519 (t!150173 tokens!457)))) (list!7174 lt!605318)))))

(assert (=> b!1643121 (= (list!7174 (charsOf!1844 (h!23519 (t!150173 tokens!457)))) (originalCharacters!4009 (h!23519 (t!150173 tokens!457))))))

(declare-fun lt!605321 () Unit!29877)

(declare-fun Unit!29899 () Unit!29877)

(assert (=> b!1643121 (= lt!605321 Unit!29899)))

(declare-fun head!3585 (List!18186) C!9220)

(assert (=> b!1643121 (= (list!7174 (singletonSeq!1664 (apply!4724 (charsOf!1844 (h!23519 (t!150173 (t!150173 tokens!457)))) 0))) (Cons!18116 (head!3585 (originalCharacters!4009 (h!23519 (t!150173 (t!150173 tokens!457))))) Nil!18116))))

(declare-fun lt!605319 () Unit!29877)

(declare-fun Unit!29900 () Unit!29877)

(assert (=> b!1643121 (= lt!605319 Unit!29900)))

(assert (=> b!1643121 (= (list!7174 (singletonSeq!1664 (apply!4724 (charsOf!1844 (h!23519 (t!150173 (t!150173 tokens!457)))) 0))) (Cons!18116 (head!3585 (list!7174 lt!605318)) Nil!18116))))

(declare-fun lt!605316 () Unit!29877)

(declare-fun Unit!29901 () Unit!29877)

(assert (=> b!1643121 (= lt!605316 Unit!29901)))

(declare-fun head!3586 (BalanceConc!12020) C!9220)

(assert (=> b!1643121 (= (list!7174 (singletonSeq!1664 (apply!4724 (charsOf!1844 (h!23519 (t!150173 (t!150173 tokens!457)))) 0))) (Cons!18116 (head!3586 lt!605318) Nil!18116))))

(declare-fun lt!605315 () Unit!29877)

(declare-fun Unit!29902 () Unit!29877)

(assert (=> b!1643121 (= lt!605315 Unit!29902)))

(declare-fun isDefined!2787 (Option!3426) Bool)

(assert (=> b!1643121 (isDefined!2787 (maxPrefix!1386 thiss!17113 rules!1846 (originalCharacters!4009 (h!23519 (t!150173 tokens!457)))))))

(declare-fun lt!605305 () Unit!29877)

(declare-fun Unit!29903 () Unit!29877)

(assert (=> b!1643121 (= lt!605305 Unit!29903)))

(assert (=> b!1643121 (isDefined!2787 (maxPrefix!1386 thiss!17113 rules!1846 (list!7174 (charsOf!1844 (h!23519 (t!150173 tokens!457))))))))

(declare-fun lt!605322 () Unit!29877)

(declare-fun Unit!29904 () Unit!29877)

(assert (=> b!1643121 (= lt!605322 Unit!29904)))

(declare-fun lt!605325 () Unit!29877)

(declare-fun Unit!29905 () Unit!29877)

(assert (=> b!1643121 (= lt!605325 Unit!29905)))

(declare-fun get!5269 (Option!3426) tuple2!17774)

(assert (=> b!1643121 (= (_1!10289 (get!5269 (maxPrefix!1386 thiss!17113 rules!1846 (list!7174 (charsOf!1844 (h!23519 (t!150173 tokens!457))))))) (h!23519 (t!150173 tokens!457)))))

(declare-fun lt!605323 () Unit!29877)

(declare-fun Unit!29906 () Unit!29877)

(assert (=> b!1643121 (= lt!605323 Unit!29906)))

(assert (=> b!1643121 (isEmpty!11143 (_2!10289 (get!5269 (maxPrefix!1386 thiss!17113 rules!1846 (list!7174 (charsOf!1844 (h!23519 (t!150173 tokens!457))))))))))

(declare-fun lt!605306 () Unit!29877)

(declare-fun Unit!29907 () Unit!29877)

(assert (=> b!1643121 (= lt!605306 Unit!29907)))

(declare-fun matchR!2018 (Regex!4523 List!18186) Bool)

(assert (=> b!1643121 (matchR!2018 (regex!3195 (rule!5045 (h!23519 (t!150173 tokens!457)))) (list!7174 (charsOf!1844 (h!23519 (t!150173 tokens!457)))))))

(declare-fun lt!605311 () Unit!29877)

(declare-fun Unit!29908 () Unit!29877)

(assert (=> b!1643121 (= lt!605311 Unit!29908)))

(assert (=> b!1643121 (= (rule!5045 (h!23519 (t!150173 tokens!457))) (rule!5045 (h!23519 (t!150173 tokens!457))))))

(declare-fun lt!605301 () Unit!29877)

(declare-fun Unit!29909 () Unit!29877)

(assert (=> b!1643121 (= lt!605301 Unit!29909)))

(declare-fun lt!605308 () Unit!29877)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!156 (LexerInterface!2824 List!18187 Token!5956 Rule!6190 List!18186) Unit!29877)

(assert (=> b!1643121 (= lt!605308 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!156 thiss!17113 rules!1846 (h!23519 (t!150173 tokens!457)) (rule!5045 (h!23519 (t!150173 tokens!457))) (list!7174 lt!605318)))))

(declare-fun b!1643122 () Bool)

(declare-fun isEmpty!11147 (BalanceConc!12020) Bool)

(assert (=> b!1643122 (= e!1053818 (isEmpty!11147 (_2!10288 (lex!1308 thiss!17113 rules!1846 (print!1355 thiss!17113 (seqFromList!2130 (t!150173 tokens!457)))))))))

(assert (= (and d!494750 c!267208) b!1643120))

(assert (= (and d!494750 (not c!267208)) b!1643121))

(assert (= (and d!494750 res!736180) b!1643122))

(declare-fun m!1985327 () Bool)

(assert (=> d!494750 m!1985327))

(declare-fun m!1985329 () Bool)

(assert (=> d!494750 m!1985329))

(assert (=> d!494750 m!1984895))

(assert (=> d!494750 m!1984923))

(assert (=> d!494750 m!1984923))

(assert (=> d!494750 m!1985327))

(declare-fun m!1985331 () Bool)

(assert (=> d!494750 m!1985331))

(declare-fun m!1985333 () Bool)

(assert (=> b!1643121 m!1985333))

(declare-fun m!1985335 () Bool)

(assert (=> b!1643121 m!1985335))

(declare-fun m!1985337 () Bool)

(assert (=> b!1643121 m!1985337))

(declare-fun m!1985339 () Bool)

(assert (=> b!1643121 m!1985339))

(assert (=> b!1643121 m!1985069))

(declare-fun m!1985341 () Bool)

(assert (=> b!1643121 m!1985341))

(declare-fun m!1985343 () Bool)

(assert (=> b!1643121 m!1985343))

(declare-fun m!1985345 () Bool)

(assert (=> b!1643121 m!1985345))

(declare-fun m!1985347 () Bool)

(assert (=> b!1643121 m!1985347))

(assert (=> b!1643121 m!1984889))

(declare-fun m!1985349 () Bool)

(assert (=> b!1643121 m!1985349))

(assert (=> b!1643121 m!1985333))

(declare-fun m!1985351 () Bool)

(assert (=> b!1643121 m!1985351))

(declare-fun m!1985353 () Bool)

(assert (=> b!1643121 m!1985353))

(declare-fun m!1985355 () Bool)

(assert (=> b!1643121 m!1985355))

(declare-fun m!1985357 () Bool)

(assert (=> b!1643121 m!1985357))

(assert (=> b!1643121 m!1985341))

(assert (=> b!1643121 m!1985337))

(declare-fun m!1985359 () Bool)

(assert (=> b!1643121 m!1985359))

(declare-fun m!1985361 () Bool)

(assert (=> b!1643121 m!1985361))

(declare-fun m!1985363 () Bool)

(assert (=> b!1643121 m!1985363))

(declare-fun m!1985365 () Bool)

(assert (=> b!1643121 m!1985365))

(assert (=> b!1643121 m!1984889))

(assert (=> b!1643121 m!1985341))

(assert (=> b!1643121 m!1985345))

(declare-fun m!1985367 () Bool)

(assert (=> b!1643121 m!1985367))

(assert (=> b!1643121 m!1985359))

(declare-fun m!1985369 () Bool)

(assert (=> b!1643121 m!1985369))

(assert (=> b!1643121 m!1985355))

(declare-fun m!1985371 () Bool)

(assert (=> b!1643121 m!1985371))

(declare-fun m!1985373 () Bool)

(assert (=> b!1643121 m!1985373))

(declare-fun m!1985375 () Bool)

(assert (=> b!1643121 m!1985375))

(declare-fun m!1985377 () Bool)

(assert (=> b!1643121 m!1985377))

(assert (=> b!1643121 m!1984923))

(declare-fun m!1985379 () Bool)

(assert (=> b!1643121 m!1985379))

(declare-fun m!1985381 () Bool)

(assert (=> b!1643121 m!1985381))

(assert (=> b!1643121 m!1985359))

(declare-fun m!1985383 () Bool)

(assert (=> b!1643121 m!1985383))

(declare-fun m!1985385 () Bool)

(assert (=> b!1643121 m!1985385))

(declare-fun m!1985387 () Bool)

(assert (=> b!1643121 m!1985387))

(assert (=> b!1643121 m!1985345))

(assert (=> b!1643121 m!1985069))

(assert (=> b!1643121 m!1984923))

(assert (=> b!1643121 m!1985327))

(assert (=> b!1643121 m!1985341))

(declare-fun m!1985389 () Bool)

(assert (=> b!1643121 m!1985389))

(declare-fun m!1985391 () Bool)

(assert (=> b!1643121 m!1985391))

(assert (=> b!1643121 m!1985371))

(declare-fun m!1985393 () Bool)

(assert (=> b!1643121 m!1985393))

(assert (=> b!1643121 m!1985385))

(assert (=> b!1643121 m!1985357))

(assert (=> b!1643121 m!1985361))

(assert (=> b!1643121 m!1985345))

(declare-fun m!1985395 () Bool)

(assert (=> b!1643121 m!1985395))

(assert (=> b!1643121 m!1985393))

(assert (=> b!1643121 m!1985375))

(declare-fun m!1985397 () Bool)

(assert (=> b!1643121 m!1985397))

(assert (=> b!1643121 m!1985337))

(declare-fun m!1985399 () Bool)

(assert (=> b!1643121 m!1985399))

(assert (=> b!1643122 m!1984923))

(assert (=> b!1643122 m!1984923))

(assert (=> b!1643122 m!1985327))

(assert (=> b!1643122 m!1985327))

(assert (=> b!1643122 m!1985329))

(declare-fun m!1985401 () Bool)

(assert (=> b!1643122 m!1985401))

(assert (=> b!1642910 d!494750))

(declare-fun b!1643132 () Bool)

(declare-fun res!736192 () Bool)

(declare-fun e!1053827 () Bool)

(assert (=> b!1643132 (=> (not res!736192) (not e!1053827))))

(assert (=> b!1643132 (= res!736192 (= (head!3585 lt!605057) (head!3585 lt!605055)))))

(declare-fun b!1643134 () Bool)

(declare-fun e!1053826 () Bool)

(assert (=> b!1643134 (= e!1053826 (>= (size!14431 lt!605055) (size!14431 lt!605057)))))

(declare-fun d!494752 () Bool)

(assert (=> d!494752 e!1053826))

(declare-fun res!736191 () Bool)

(assert (=> d!494752 (=> res!736191 e!1053826)))

(declare-fun lt!605328 () Bool)

(assert (=> d!494752 (= res!736191 (not lt!605328))))

(declare-fun e!1053828 () Bool)

(assert (=> d!494752 (= lt!605328 e!1053828)))

(declare-fun res!736189 () Bool)

(assert (=> d!494752 (=> res!736189 e!1053828)))

(assert (=> d!494752 (= res!736189 ((_ is Nil!18116) lt!605057))))

(assert (=> d!494752 (= (isPrefix!1453 lt!605057 lt!605055) lt!605328)))

(declare-fun b!1643131 () Bool)

(assert (=> b!1643131 (= e!1053828 e!1053827)))

(declare-fun res!736190 () Bool)

(assert (=> b!1643131 (=> (not res!736190) (not e!1053827))))

(assert (=> b!1643131 (= res!736190 (not ((_ is Nil!18116) lt!605055)))))

(declare-fun b!1643133 () Bool)

(declare-fun tail!2415 (List!18186) List!18186)

(assert (=> b!1643133 (= e!1053827 (isPrefix!1453 (tail!2415 lt!605057) (tail!2415 lt!605055)))))

(assert (= (and d!494752 (not res!736189)) b!1643131))

(assert (= (and b!1643131 res!736190) b!1643132))

(assert (= (and b!1643132 res!736192) b!1643133))

(assert (= (and d!494752 (not res!736191)) b!1643134))

(declare-fun m!1985403 () Bool)

(assert (=> b!1643132 m!1985403))

(declare-fun m!1985405 () Bool)

(assert (=> b!1643132 m!1985405))

(declare-fun m!1985407 () Bool)

(assert (=> b!1643134 m!1985407))

(assert (=> b!1643134 m!1985181))

(declare-fun m!1985409 () Bool)

(assert (=> b!1643133 m!1985409))

(declare-fun m!1985411 () Bool)

(assert (=> b!1643133 m!1985411))

(assert (=> b!1643133 m!1985409))

(assert (=> b!1643133 m!1985411))

(declare-fun m!1985413 () Bool)

(assert (=> b!1643133 m!1985413))

(assert (=> b!1642910 d!494752))

(declare-fun d!494754 () Bool)

(assert (=> d!494754 (isPrefix!1453 lt!605057 (++!4874 lt!605057 lt!605062))))

(declare-fun lt!605331 () Unit!29877)

(declare-fun choose!9857 (List!18186 List!18186) Unit!29877)

(assert (=> d!494754 (= lt!605331 (choose!9857 lt!605057 lt!605062))))

(assert (=> d!494754 (= (lemmaConcatTwoListThenFirstIsPrefix!978 lt!605057 lt!605062) lt!605331)))

(declare-fun bs!395850 () Bool)

(assert (= bs!395850 d!494754))

(assert (=> bs!395850 m!1984919))

(assert (=> bs!395850 m!1984919))

(declare-fun m!1985415 () Bool)

(assert (=> bs!395850 m!1985415))

(declare-fun m!1985417 () Bool)

(assert (=> bs!395850 m!1985417))

(assert (=> b!1642910 d!494754))

(declare-fun d!494756 () Bool)

(declare-fun res!736206 () Bool)

(declare-fun e!1053850 () Bool)

(assert (=> d!494756 (=> res!736206 e!1053850)))

(assert (=> d!494756 (= res!736206 (or (not ((_ is Cons!18118) tokens!457)) (not ((_ is Cons!18118) (t!150173 tokens!457)))))))

(assert (=> d!494756 (= (tokensListTwoByTwoPredicateSeparableList!517 thiss!17113 tokens!457 rules!1846) e!1053850)))

(declare-fun b!1643166 () Bool)

(declare-fun e!1053851 () Bool)

(assert (=> b!1643166 (= e!1053850 e!1053851)))

(declare-fun res!736205 () Bool)

(assert (=> b!1643166 (=> (not res!736205) (not e!1053851))))

(assert (=> b!1643166 (= res!736205 (separableTokensPredicate!764 thiss!17113 (h!23519 tokens!457) (h!23519 (t!150173 tokens!457)) rules!1846))))

(declare-fun lt!605357 () Unit!29877)

(declare-fun Unit!29910 () Unit!29877)

(assert (=> b!1643166 (= lt!605357 Unit!29910)))

(assert (=> b!1643166 (> (size!14434 (charsOf!1844 (h!23519 (t!150173 tokens!457)))) 0)))

(declare-fun lt!605359 () Unit!29877)

(declare-fun Unit!29911 () Unit!29877)

(assert (=> b!1643166 (= lt!605359 Unit!29911)))

(assert (=> b!1643166 (rulesProduceIndividualToken!1473 thiss!17113 rules!1846 (h!23519 (t!150173 tokens!457)))))

(declare-fun lt!605358 () Unit!29877)

(declare-fun Unit!29912 () Unit!29877)

(assert (=> b!1643166 (= lt!605358 Unit!29912)))

(assert (=> b!1643166 (rulesProduceIndividualToken!1473 thiss!17113 rules!1846 (h!23519 tokens!457))))

(declare-fun lt!605361 () Unit!29877)

(declare-fun lt!605360 () Unit!29877)

(assert (=> b!1643166 (= lt!605361 lt!605360)))

(assert (=> b!1643166 (rulesProduceIndividualToken!1473 thiss!17113 rules!1846 (h!23519 (t!150173 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!592 (LexerInterface!2824 List!18187 List!18188 Token!5956) Unit!29877)

(assert (=> b!1643166 (= lt!605360 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!592 thiss!17113 rules!1846 tokens!457 (h!23519 (t!150173 tokens!457))))))

(declare-fun lt!605355 () Unit!29877)

(declare-fun lt!605356 () Unit!29877)

(assert (=> b!1643166 (= lt!605355 lt!605356)))

(assert (=> b!1643166 (rulesProduceIndividualToken!1473 thiss!17113 rules!1846 (h!23519 tokens!457))))

(assert (=> b!1643166 (= lt!605356 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!592 thiss!17113 rules!1846 tokens!457 (h!23519 tokens!457)))))

(declare-fun b!1643167 () Bool)

(assert (=> b!1643167 (= e!1053851 (tokensListTwoByTwoPredicateSeparableList!517 thiss!17113 (Cons!18118 (h!23519 (t!150173 tokens!457)) (t!150173 (t!150173 tokens!457))) rules!1846))))

(assert (= (and d!494756 (not res!736206)) b!1643166))

(assert (= (and b!1643166 res!736205) b!1643167))

(declare-fun m!1985461 () Bool)

(assert (=> b!1643166 m!1985461))

(assert (=> b!1643166 m!1985159))

(assert (=> b!1643166 m!1985069))

(declare-fun m!1985463 () Bool)

(assert (=> b!1643166 m!1985463))

(declare-fun m!1985465 () Bool)

(assert (=> b!1643166 m!1985465))

(assert (=> b!1643166 m!1985069))

(declare-fun m!1985467 () Bool)

(assert (=> b!1643166 m!1985467))

(assert (=> b!1643166 m!1984897))

(declare-fun m!1985469 () Bool)

(assert (=> b!1643167 m!1985469))

(assert (=> b!1642922 d!494756))

(declare-fun b!1643186 () Bool)

(declare-fun res!736222 () Bool)

(declare-fun e!1053858 () Bool)

(assert (=> b!1643186 (=> (not res!736222) (not e!1053858))))

(declare-fun lt!605373 () Option!3426)

(assert (=> b!1643186 (= res!736222 (< (size!14431 (_2!10289 (get!5269 lt!605373))) (size!14431 lt!605059)))))

(declare-fun bm!105743 () Bool)

(declare-fun call!105748 () Option!3426)

(declare-fun maxPrefixOneRule!797 (LexerInterface!2824 Rule!6190 List!18186) Option!3426)

(assert (=> bm!105743 (= call!105748 (maxPrefixOneRule!797 thiss!17113 (h!23518 rules!1846) lt!605059))))

(declare-fun b!1643187 () Bool)

(declare-fun res!736225 () Bool)

(assert (=> b!1643187 (=> (not res!736225) (not e!1053858))))

(assert (=> b!1643187 (= res!736225 (matchR!2018 (regex!3195 (rule!5045 (_1!10289 (get!5269 lt!605373)))) (list!7174 (charsOf!1844 (_1!10289 (get!5269 lt!605373))))))))

(declare-fun d!494778 () Bool)

(declare-fun e!1053860 () Bool)

(assert (=> d!494778 e!1053860))

(declare-fun res!736221 () Bool)

(assert (=> d!494778 (=> res!736221 e!1053860)))

(declare-fun isEmpty!11148 (Option!3426) Bool)

(assert (=> d!494778 (= res!736221 (isEmpty!11148 lt!605373))))

(declare-fun e!1053859 () Option!3426)

(assert (=> d!494778 (= lt!605373 e!1053859)))

(declare-fun c!267214 () Bool)

(assert (=> d!494778 (= c!267214 (and ((_ is Cons!18117) rules!1846) ((_ is Nil!18117) (t!150172 rules!1846))))))

(declare-fun lt!605372 () Unit!29877)

(declare-fun lt!605374 () Unit!29877)

(assert (=> d!494778 (= lt!605372 lt!605374)))

(assert (=> d!494778 (isPrefix!1453 lt!605059 lt!605059)))

(declare-fun lemmaIsPrefixRefl!982 (List!18186 List!18186) Unit!29877)

(assert (=> d!494778 (= lt!605374 (lemmaIsPrefixRefl!982 lt!605059 lt!605059))))

(declare-fun rulesValidInductive!1004 (LexerInterface!2824 List!18187) Bool)

(assert (=> d!494778 (rulesValidInductive!1004 thiss!17113 rules!1846)))

(assert (=> d!494778 (= (maxPrefix!1386 thiss!17113 rules!1846 lt!605059) lt!605373)))

(declare-fun b!1643188 () Bool)

(declare-fun res!736224 () Bool)

(assert (=> b!1643188 (=> (not res!736224) (not e!1053858))))

(declare-fun apply!4726 (TokenValueInjection!6230 BalanceConc!12020) TokenValue!3285)

(declare-fun seqFromList!2132 (List!18186) BalanceConc!12020)

(assert (=> b!1643188 (= res!736224 (= (value!100730 (_1!10289 (get!5269 lt!605373))) (apply!4726 (transformation!3195 (rule!5045 (_1!10289 (get!5269 lt!605373)))) (seqFromList!2132 (originalCharacters!4009 (_1!10289 (get!5269 lt!605373)))))))))

(declare-fun b!1643189 () Bool)

(declare-fun res!736227 () Bool)

(assert (=> b!1643189 (=> (not res!736227) (not e!1053858))))

(assert (=> b!1643189 (= res!736227 (= (++!4874 (list!7174 (charsOf!1844 (_1!10289 (get!5269 lt!605373)))) (_2!10289 (get!5269 lt!605373))) lt!605059))))

(declare-fun b!1643190 () Bool)

(declare-fun res!736226 () Bool)

(assert (=> b!1643190 (=> (not res!736226) (not e!1053858))))

(assert (=> b!1643190 (= res!736226 (= (list!7174 (charsOf!1844 (_1!10289 (get!5269 lt!605373)))) (originalCharacters!4009 (_1!10289 (get!5269 lt!605373)))))))

(declare-fun b!1643191 () Bool)

(declare-fun lt!605375 () Option!3426)

(declare-fun lt!605376 () Option!3426)

(assert (=> b!1643191 (= e!1053859 (ite (and ((_ is None!3425) lt!605375) ((_ is None!3425) lt!605376)) None!3425 (ite ((_ is None!3425) lt!605376) lt!605375 (ite ((_ is None!3425) lt!605375) lt!605376 (ite (>= (size!14428 (_1!10289 (v!24544 lt!605375))) (size!14428 (_1!10289 (v!24544 lt!605376)))) lt!605375 lt!605376)))))))

(assert (=> b!1643191 (= lt!605375 call!105748)))

(assert (=> b!1643191 (= lt!605376 (maxPrefix!1386 thiss!17113 (t!150172 rules!1846) lt!605059))))

(declare-fun b!1643192 () Bool)

(assert (=> b!1643192 (= e!1053859 call!105748)))

(declare-fun b!1643193 () Bool)

(declare-fun contains!3152 (List!18187 Rule!6190) Bool)

(assert (=> b!1643193 (= e!1053858 (contains!3152 rules!1846 (rule!5045 (_1!10289 (get!5269 lt!605373)))))))

(declare-fun b!1643194 () Bool)

(assert (=> b!1643194 (= e!1053860 e!1053858)))

(declare-fun res!736223 () Bool)

(assert (=> b!1643194 (=> (not res!736223) (not e!1053858))))

(assert (=> b!1643194 (= res!736223 (isDefined!2787 lt!605373))))

(assert (= (and d!494778 c!267214) b!1643192))

(assert (= (and d!494778 (not c!267214)) b!1643191))

(assert (= (or b!1643192 b!1643191) bm!105743))

(assert (= (and d!494778 (not res!736221)) b!1643194))

(assert (= (and b!1643194 res!736223) b!1643190))

(assert (= (and b!1643190 res!736226) b!1643186))

(assert (= (and b!1643186 res!736222) b!1643189))

(assert (= (and b!1643189 res!736227) b!1643188))

(assert (= (and b!1643188 res!736224) b!1643187))

(assert (= (and b!1643187 res!736225) b!1643193))

(declare-fun m!1985471 () Bool)

(assert (=> b!1643186 m!1985471))

(declare-fun m!1985473 () Bool)

(assert (=> b!1643186 m!1985473))

(declare-fun m!1985475 () Bool)

(assert (=> b!1643186 m!1985475))

(declare-fun m!1985477 () Bool)

(assert (=> d!494778 m!1985477))

(declare-fun m!1985479 () Bool)

(assert (=> d!494778 m!1985479))

(declare-fun m!1985481 () Bool)

(assert (=> d!494778 m!1985481))

(declare-fun m!1985483 () Bool)

(assert (=> d!494778 m!1985483))

(assert (=> b!1643190 m!1985471))

(declare-fun m!1985485 () Bool)

(assert (=> b!1643190 m!1985485))

(assert (=> b!1643190 m!1985485))

(declare-fun m!1985487 () Bool)

(assert (=> b!1643190 m!1985487))

(assert (=> b!1643193 m!1985471))

(declare-fun m!1985489 () Bool)

(assert (=> b!1643193 m!1985489))

(declare-fun m!1985491 () Bool)

(assert (=> b!1643194 m!1985491))

(declare-fun m!1985493 () Bool)

(assert (=> b!1643191 m!1985493))

(assert (=> b!1643188 m!1985471))

(declare-fun m!1985495 () Bool)

(assert (=> b!1643188 m!1985495))

(assert (=> b!1643188 m!1985495))

(declare-fun m!1985497 () Bool)

(assert (=> b!1643188 m!1985497))

(assert (=> b!1643187 m!1985471))

(assert (=> b!1643187 m!1985485))

(assert (=> b!1643187 m!1985485))

(assert (=> b!1643187 m!1985487))

(assert (=> b!1643187 m!1985487))

(declare-fun m!1985499 () Bool)

(assert (=> b!1643187 m!1985499))

(declare-fun m!1985501 () Bool)

(assert (=> bm!105743 m!1985501))

(assert (=> b!1643189 m!1985471))

(assert (=> b!1643189 m!1985485))

(assert (=> b!1643189 m!1985485))

(assert (=> b!1643189 m!1985487))

(assert (=> b!1643189 m!1985487))

(declare-fun m!1985503 () Bool)

(assert (=> b!1643189 m!1985503))

(assert (=> b!1642911 d!494778))

(declare-fun d!494780 () Bool)

(declare-fun lt!605397 () BalanceConc!12020)

(declare-fun printListTailRec!379 (LexerInterface!2824 List!18188 List!18186) List!18186)

(declare-fun dropList!650 (BalanceConc!12022 Int) List!18188)

(assert (=> d!494780 (= (list!7174 lt!605397) (printListTailRec!379 thiss!17113 (dropList!650 lt!605066 0) (list!7174 (BalanceConc!12021 Empty!6038))))))

(declare-fun e!1053874 () BalanceConc!12020)

(assert (=> d!494780 (= lt!605397 e!1053874)))

(declare-fun c!267220 () Bool)

(assert (=> d!494780 (= c!267220 (>= 0 (size!14433 lt!605066)))))

(declare-fun e!1053875 () Bool)

(assert (=> d!494780 e!1053875))

(declare-fun res!736239 () Bool)

(assert (=> d!494780 (=> (not res!736239) (not e!1053875))))

(assert (=> d!494780 (= res!736239 (>= 0 0))))

(assert (=> d!494780 (= (printTailRec!875 thiss!17113 lt!605066 0 (BalanceConc!12021 Empty!6038)) lt!605397)))

(declare-fun b!1643216 () Bool)

(assert (=> b!1643216 (= e!1053875 (<= 0 (size!14433 lt!605066)))))

(declare-fun b!1643217 () Bool)

(assert (=> b!1643217 (= e!1053874 (BalanceConc!12021 Empty!6038))))

(declare-fun b!1643218 () Bool)

(declare-fun apply!4727 (BalanceConc!12022 Int) Token!5956)

(assert (=> b!1643218 (= e!1053874 (printTailRec!875 thiss!17113 lt!605066 (+ 0 1) (++!4876 (BalanceConc!12021 Empty!6038) (charsOf!1844 (apply!4727 lt!605066 0)))))))

(declare-fun lt!605394 () List!18188)

(assert (=> b!1643218 (= lt!605394 (list!7173 lt!605066))))

(declare-fun lt!605399 () Unit!29877)

(declare-fun lemmaDropApply!586 (List!18188 Int) Unit!29877)

(assert (=> b!1643218 (= lt!605399 (lemmaDropApply!586 lt!605394 0))))

(declare-fun head!3587 (List!18188) Token!5956)

(declare-fun drop!898 (List!18188 Int) List!18188)

(declare-fun apply!4728 (List!18188 Int) Token!5956)

(assert (=> b!1643218 (= (head!3587 (drop!898 lt!605394 0)) (apply!4728 lt!605394 0))))

(declare-fun lt!605396 () Unit!29877)

(assert (=> b!1643218 (= lt!605396 lt!605399)))

(declare-fun lt!605400 () List!18188)

(assert (=> b!1643218 (= lt!605400 (list!7173 lt!605066))))

(declare-fun lt!605395 () Unit!29877)

(declare-fun lemmaDropTail!566 (List!18188 Int) Unit!29877)

(assert (=> b!1643218 (= lt!605395 (lemmaDropTail!566 lt!605400 0))))

(declare-fun tail!2416 (List!18188) List!18188)

(assert (=> b!1643218 (= (tail!2416 (drop!898 lt!605400 0)) (drop!898 lt!605400 (+ 0 1)))))

(declare-fun lt!605398 () Unit!29877)

(assert (=> b!1643218 (= lt!605398 lt!605395)))

(assert (= (and d!494780 res!736239) b!1643216))

(assert (= (and d!494780 c!267220) b!1643217))

(assert (= (and d!494780 (not c!267220)) b!1643218))

(declare-fun m!1985521 () Bool)

(assert (=> d!494780 m!1985521))

(assert (=> d!494780 m!1985521))

(declare-fun m!1985523 () Bool)

(assert (=> d!494780 m!1985523))

(declare-fun m!1985525 () Bool)

(assert (=> d!494780 m!1985525))

(assert (=> d!494780 m!1985523))

(declare-fun m!1985527 () Bool)

(assert (=> d!494780 m!1985527))

(declare-fun m!1985529 () Bool)

(assert (=> d!494780 m!1985529))

(assert (=> b!1643216 m!1985527))

(declare-fun m!1985531 () Bool)

(assert (=> b!1643218 m!1985531))

(declare-fun m!1985533 () Bool)

(assert (=> b!1643218 m!1985533))

(declare-fun m!1985537 () Bool)

(assert (=> b!1643218 m!1985537))

(declare-fun m!1985541 () Bool)

(assert (=> b!1643218 m!1985541))

(declare-fun m!1985543 () Bool)

(assert (=> b!1643218 m!1985543))

(assert (=> b!1643218 m!1985537))

(assert (=> b!1643218 m!1985531))

(assert (=> b!1643218 m!1985543))

(declare-fun m!1985545 () Bool)

(assert (=> b!1643218 m!1985545))

(declare-fun m!1985547 () Bool)

(assert (=> b!1643218 m!1985547))

(declare-fun m!1985549 () Bool)

(assert (=> b!1643218 m!1985549))

(assert (=> b!1643218 m!1985541))

(declare-fun m!1985551 () Bool)

(assert (=> b!1643218 m!1985551))

(assert (=> b!1643218 m!1985549))

(declare-fun m!1985553 () Bool)

(assert (=> b!1643218 m!1985553))

(declare-fun m!1985555 () Bool)

(assert (=> b!1643218 m!1985555))

(declare-fun m!1985557 () Bool)

(assert (=> b!1643218 m!1985557))

(declare-fun m!1985559 () Bool)

(assert (=> b!1643218 m!1985559))

(assert (=> b!1642911 d!494780))

(declare-fun d!494784 () Bool)

(assert (=> d!494784 (= (list!7174 lt!605061) (list!7178 (c!267171 lt!605061)))))

(declare-fun bs!395858 () Bool)

(assert (= bs!395858 d!494784))

(declare-fun m!1985561 () Bool)

(assert (=> bs!395858 m!1985561))

(assert (=> b!1642911 d!494784))

(declare-fun d!494786 () Bool)

(declare-fun lt!605401 () BalanceConc!12020)

(assert (=> d!494786 (= (list!7174 lt!605401) (printList!937 thiss!17113 (list!7173 lt!605066)))))

(assert (=> d!494786 (= lt!605401 (printTailRec!875 thiss!17113 lt!605066 0 (BalanceConc!12021 Empty!6038)))))

(assert (=> d!494786 (= (print!1355 thiss!17113 lt!605066) lt!605401)))

(declare-fun bs!395859 () Bool)

(assert (= bs!395859 d!494786))

(declare-fun m!1985563 () Bool)

(assert (=> bs!395859 m!1985563))

(assert (=> bs!395859 m!1985559))

(assert (=> bs!395859 m!1985559))

(declare-fun m!1985565 () Bool)

(assert (=> bs!395859 m!1985565))

(assert (=> bs!395859 m!1984927))

(assert (=> b!1642911 d!494786))

(declare-fun d!494788 () Bool)

(declare-fun c!267223 () Bool)

(assert (=> d!494788 (= c!267223 ((_ is Cons!18118) (Cons!18118 (h!23519 tokens!457) Nil!18118)))))

(declare-fun e!1053896 () List!18186)

(assert (=> d!494788 (= (printList!937 thiss!17113 (Cons!18118 (h!23519 tokens!457) Nil!18118)) e!1053896)))

(declare-fun b!1643250 () Bool)

(assert (=> b!1643250 (= e!1053896 (++!4874 (list!7174 (charsOf!1844 (h!23519 (Cons!18118 (h!23519 tokens!457) Nil!18118)))) (printList!937 thiss!17113 (t!150173 (Cons!18118 (h!23519 tokens!457) Nil!18118)))))))

(declare-fun b!1643251 () Bool)

(assert (=> b!1643251 (= e!1053896 Nil!18116)))

(assert (= (and d!494788 c!267223) b!1643250))

(assert (= (and d!494788 (not c!267223)) b!1643251))

(declare-fun m!1985567 () Bool)

(assert (=> b!1643250 m!1985567))

(assert (=> b!1643250 m!1985567))

(declare-fun m!1985569 () Bool)

(assert (=> b!1643250 m!1985569))

(declare-fun m!1985571 () Bool)

(assert (=> b!1643250 m!1985571))

(assert (=> b!1643250 m!1985569))

(assert (=> b!1643250 m!1985571))

(declare-fun m!1985573 () Bool)

(assert (=> b!1643250 m!1985573))

(assert (=> b!1642911 d!494788))

(declare-fun d!494790 () Bool)

(declare-fun e!1053917 () Bool)

(assert (=> d!494790 e!1053917))

(declare-fun res!736245 () Bool)

(assert (=> d!494790 (=> (not res!736245) (not e!1053917))))

(declare-fun lt!605404 () BalanceConc!12022)

(assert (=> d!494790 (= res!736245 (= (list!7173 lt!605404) (Cons!18118 (h!23519 tokens!457) Nil!18118)))))

(declare-fun singleton!712 (Token!5956) BalanceConc!12022)

(assert (=> d!494790 (= lt!605404 (singleton!712 (h!23519 tokens!457)))))

(assert (=> d!494790 (= (singletonSeq!1663 (h!23519 tokens!457)) lt!605404)))

(declare-fun b!1643275 () Bool)

(assert (=> b!1643275 (= e!1053917 (isBalanced!1837 (c!267173 lt!605404)))))

(assert (= (and d!494790 res!736245) b!1643275))

(declare-fun m!1985583 () Bool)

(assert (=> d!494790 m!1985583))

(declare-fun m!1985585 () Bool)

(assert (=> d!494790 m!1985585))

(declare-fun m!1985587 () Bool)

(assert (=> b!1643275 m!1985587))

(assert (=> b!1642911 d!494790))

(declare-fun b!1643292 () Bool)

(declare-fun b_free!44583 () Bool)

(declare-fun b_next!45287 () Bool)

(assert (=> b!1643292 (= b_free!44583 (not b_next!45287))))

(declare-fun tp!476245 () Bool)

(declare-fun b_and!116557 () Bool)

(assert (=> b!1643292 (= tp!476245 b_and!116557)))

(declare-fun b_free!44585 () Bool)

(declare-fun b_next!45289 () Bool)

(assert (=> b!1643292 (= b_free!44585 (not b_next!45289))))

(declare-fun t!150193 () Bool)

(declare-fun tb!94043 () Bool)

(assert (=> (and b!1643292 (= (toChars!4493 (transformation!3195 (rule!5045 (h!23519 (t!150173 tokens!457))))) (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457))))) t!150193) tb!94043))

(declare-fun result!113572 () Bool)

(assert (= result!113572 result!113546))

(assert (=> b!1642967 t!150193))

(assert (=> d!494730 t!150193))

(declare-fun tp!476246 () Bool)

(declare-fun b_and!116559 () Bool)

(assert (=> b!1643292 (= tp!476246 (and (=> t!150193 result!113572) b_and!116559))))

(declare-fun b!1643289 () Bool)

(declare-fun e!1053934 () Bool)

(declare-fun tp!476243 () Bool)

(declare-fun e!1053939 () Bool)

(assert (=> b!1643289 (= e!1053934 (and (inv!23473 (h!23519 (t!150173 tokens!457))) e!1053939 tp!476243))))

(declare-fun tp!476247 () Bool)

(declare-fun e!1053935 () Bool)

(declare-fun b!1643291 () Bool)

(declare-fun e!1053937 () Bool)

(assert (=> b!1643291 (= e!1053937 (and tp!476247 (inv!23470 (tag!3475 (rule!5045 (h!23519 (t!150173 tokens!457))))) (inv!23474 (transformation!3195 (rule!5045 (h!23519 (t!150173 tokens!457))))) e!1053935))))

(declare-fun b!1643290 () Bool)

(declare-fun tp!476244 () Bool)

(assert (=> b!1643290 (= e!1053939 (and (inv!21 (value!100730 (h!23519 (t!150173 tokens!457)))) e!1053937 tp!476244))))

(assert (=> b!1642908 (= tp!476173 e!1053934)))

(assert (=> b!1643292 (= e!1053935 (and tp!476245 tp!476246))))

(assert (= b!1643291 b!1643292))

(assert (= b!1643290 b!1643291))

(assert (= b!1643289 b!1643290))

(assert (= (and b!1642908 ((_ is Cons!18118) (t!150173 tokens!457))) b!1643289))

(declare-fun m!1985593 () Bool)

(assert (=> b!1643289 m!1985593))

(declare-fun m!1985595 () Bool)

(assert (=> b!1643291 m!1985595))

(declare-fun m!1985597 () Bool)

(assert (=> b!1643291 m!1985597))

(declare-fun m!1985599 () Bool)

(assert (=> b!1643290 m!1985599))

(declare-fun b!1643303 () Bool)

(declare-fun e!1053942 () Bool)

(declare-fun tp_is_empty!7337 () Bool)

(assert (=> b!1643303 (= e!1053942 tp_is_empty!7337)))

(declare-fun b!1643304 () Bool)

(declare-fun tp!476259 () Bool)

(declare-fun tp!476262 () Bool)

(assert (=> b!1643304 (= e!1053942 (and tp!476259 tp!476262))))

(declare-fun b!1643306 () Bool)

(declare-fun tp!476261 () Bool)

(declare-fun tp!476258 () Bool)

(assert (=> b!1643306 (= e!1053942 (and tp!476261 tp!476258))))

(declare-fun b!1643305 () Bool)

(declare-fun tp!476260 () Bool)

(assert (=> b!1643305 (= e!1053942 tp!476260)))

(assert (=> b!1642913 (= tp!476169 e!1053942)))

(assert (= (and b!1642913 ((_ is ElementMatch!4523) (regex!3195 (h!23518 rules!1846)))) b!1643303))

(assert (= (and b!1642913 ((_ is Concat!7809) (regex!3195 (h!23518 rules!1846)))) b!1643304))

(assert (= (and b!1642913 ((_ is Star!4523) (regex!3195 (h!23518 rules!1846)))) b!1643305))

(assert (= (and b!1642913 ((_ is Union!4523) (regex!3195 (h!23518 rules!1846)))) b!1643306))

(declare-fun b!1643317 () Bool)

(declare-fun b_free!44587 () Bool)

(declare-fun b_next!45291 () Bool)

(assert (=> b!1643317 (= b_free!44587 (not b_next!45291))))

(declare-fun tp!476272 () Bool)

(declare-fun b_and!116561 () Bool)

(assert (=> b!1643317 (= tp!476272 b_and!116561)))

(declare-fun b_free!44589 () Bool)

(declare-fun b_next!45293 () Bool)

(assert (=> b!1643317 (= b_free!44589 (not b_next!45293))))

(declare-fun tb!94045 () Bool)

(declare-fun t!150195 () Bool)

(assert (=> (and b!1643317 (= (toChars!4493 (transformation!3195 (h!23518 (t!150172 rules!1846)))) (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457))))) t!150195) tb!94045))

(declare-fun result!113578 () Bool)

(assert (= result!113578 result!113546))

(assert (=> b!1642967 t!150195))

(assert (=> d!494730 t!150195))

(declare-fun tp!476273 () Bool)

(declare-fun b_and!116563 () Bool)

(assert (=> b!1643317 (= tp!476273 (and (=> t!150195 result!113578) b_and!116563))))

(declare-fun e!1053954 () Bool)

(assert (=> b!1643317 (= e!1053954 (and tp!476272 tp!476273))))

(declare-fun e!1053953 () Bool)

(declare-fun b!1643316 () Bool)

(declare-fun tp!476274 () Bool)

(assert (=> b!1643316 (= e!1053953 (and tp!476274 (inv!23470 (tag!3475 (h!23518 (t!150172 rules!1846)))) (inv!23474 (transformation!3195 (h!23518 (t!150172 rules!1846)))) e!1053954))))

(declare-fun b!1643315 () Bool)

(declare-fun e!1053952 () Bool)

(declare-fun tp!476271 () Bool)

(assert (=> b!1643315 (= e!1053952 (and e!1053953 tp!476271))))

(assert (=> b!1642920 (= tp!476176 e!1053952)))

(assert (= b!1643316 b!1643317))

(assert (= b!1643315 b!1643316))

(assert (= (and b!1642920 ((_ is Cons!18117) (t!150172 rules!1846))) b!1643315))

(declare-fun m!1985601 () Bool)

(assert (=> b!1643316 m!1985601))

(declare-fun m!1985603 () Bool)

(assert (=> b!1643316 m!1985603))

(declare-fun b!1643322 () Bool)

(declare-fun e!1053957 () Bool)

(declare-fun tp!476277 () Bool)

(assert (=> b!1643322 (= e!1053957 (and tp_is_empty!7337 tp!476277))))

(assert (=> b!1642909 (= tp!476174 e!1053957)))

(assert (= (and b!1642909 ((_ is Cons!18116) (originalCharacters!4009 (h!23519 tokens!457)))) b!1643322))

(declare-fun b!1643323 () Bool)

(declare-fun e!1053958 () Bool)

(assert (=> b!1643323 (= e!1053958 tp_is_empty!7337)))

(declare-fun b!1643324 () Bool)

(declare-fun tp!476279 () Bool)

(declare-fun tp!476282 () Bool)

(assert (=> b!1643324 (= e!1053958 (and tp!476279 tp!476282))))

(declare-fun b!1643326 () Bool)

(declare-fun tp!476281 () Bool)

(declare-fun tp!476278 () Bool)

(assert (=> b!1643326 (= e!1053958 (and tp!476281 tp!476278))))

(declare-fun b!1643325 () Bool)

(declare-fun tp!476280 () Bool)

(assert (=> b!1643325 (= e!1053958 tp!476280)))

(assert (=> b!1642917 (= tp!476175 e!1053958)))

(assert (= (and b!1642917 ((_ is ElementMatch!4523) (regex!3195 (rule!5045 (h!23519 tokens!457))))) b!1643323))

(assert (= (and b!1642917 ((_ is Concat!7809) (regex!3195 (rule!5045 (h!23519 tokens!457))))) b!1643324))

(assert (= (and b!1642917 ((_ is Star!4523) (regex!3195 (rule!5045 (h!23519 tokens!457))))) b!1643325))

(assert (= (and b!1642917 ((_ is Union!4523) (regex!3195 (rule!5045 (h!23519 tokens!457))))) b!1643326))

(declare-fun b_lambda!51641 () Bool)

(assert (= b_lambda!51629 (or (and b!1642907 b_free!44569) (and b!1642912 b_free!44573 (= (toChars!4493 (transformation!3195 (h!23518 rules!1846))) (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457)))))) (and b!1643292 b_free!44585 (= (toChars!4493 (transformation!3195 (rule!5045 (h!23519 (t!150173 tokens!457))))) (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457)))))) (and b!1643317 b_free!44589 (= (toChars!4493 (transformation!3195 (h!23518 (t!150172 rules!1846)))) (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457)))))) b_lambda!51641)))

(declare-fun b_lambda!51643 () Bool)

(assert (= b_lambda!51631 (or (and b!1642907 b_free!44569) (and b!1642912 b_free!44573 (= (toChars!4493 (transformation!3195 (h!23518 rules!1846))) (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457)))))) (and b!1643292 b_free!44585 (= (toChars!4493 (transformation!3195 (rule!5045 (h!23519 (t!150173 tokens!457))))) (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457)))))) (and b!1643317 b_free!44589 (= (toChars!4493 (transformation!3195 (h!23518 (t!150172 rules!1846)))) (toChars!4493 (transformation!3195 (rule!5045 (h!23519 tokens!457)))))) b_lambda!51643)))

(check-sat (not b_lambda!51641) (not b_next!45291) (not b!1643002) (not b_next!45275) (not b!1643132) (not b_next!45287) (not d!494754) (not d!494666) (not b!1643306) (not b!1643194) (not b!1643109) (not d!494692) (not b!1643167) (not d!494748) (not tb!94031) (not d!494738) (not b!1643036) (not b!1643291) b_and!116529 (not d!494786) (not b!1643218) (not b!1642934) (not b_lambda!51643) (not b!1643001) (not b!1643322) (not d!494728) (not b!1643060) (not d!494722) (not d!494784) (not d!494720) (not b!1642928) (not d!494664) (not b!1643186) tp_is_empty!7337 (not b!1643315) (not b_next!45289) (not b!1643003) (not b!1643326) b_and!116525 (not b!1643290) (not d!494736) (not b!1643108) (not b!1643122) (not d!494672) b_and!116539 (not d!494682) (not d!494734) (not d!494670) (not b!1643166) (not d!494780) (not d!494684) (not b!1643216) (not d!494750) (not b!1643046) (not b_next!45277) (not d!494676) (not b!1643325) (not d!494668) (not b!1643275) (not b!1643037) b_and!116537 (not b!1643105) (not b_next!45293) (not d!494732) (not b!1643121) (not b!1643193) (not b!1643190) (not b!1643061) (not b!1643134) (not d!494660) (not d!494724) (not b!1643107) (not b!1643187) b_and!116561 (not b!1642962) (not b!1643189) (not d!494726) (not b!1643191) (not b!1642973) (not d!494778) b_and!116559 (not b_next!45271) (not b!1643304) (not b!1643305) (not b!1642931) (not d!494662) (not b!1643133) (not b_next!45273) (not d!494730) (not d!494790) (not b!1642968) (not bm!105743) (not b!1643188) (not b!1643250) (not b!1642967) b_and!116557 (not b!1643324) (not b!1643289) b_and!116563 (not b!1643316))
(check-sat b_and!116529 (not b_next!45289) (not b_next!45291) b_and!116525 b_and!116539 (not b_next!45277) b_and!116537 (not b_next!45293) b_and!116561 (not b_next!45273) (not b_next!45275) (not b_next!45287) b_and!116559 (not b_next!45271) b_and!116557 b_and!116563)
