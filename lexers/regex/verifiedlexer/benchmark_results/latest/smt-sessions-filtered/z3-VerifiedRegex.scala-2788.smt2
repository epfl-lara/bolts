; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!154466 () Bool)

(assert start!154466)

(declare-fun b!1624929 () Bool)

(declare-fun b_free!43831 () Bool)

(declare-fun b_next!44535 () Bool)

(assert (=> b!1624929 (= b_free!43831 (not b_next!44535))))

(declare-fun tp!472600 () Bool)

(declare-fun b_and!115229 () Bool)

(assert (=> b!1624929 (= tp!472600 b_and!115229)))

(declare-fun b_free!43833 () Bool)

(declare-fun b_next!44537 () Bool)

(assert (=> b!1624929 (= b_free!43833 (not b_next!44537))))

(declare-fun tp!472596 () Bool)

(declare-fun b_and!115231 () Bool)

(assert (=> b!1624929 (= tp!472596 b_and!115231)))

(declare-fun b!1624928 () Bool)

(declare-fun b_free!43835 () Bool)

(declare-fun b_next!44539 () Bool)

(assert (=> b!1624928 (= b_free!43835 (not b_next!44539))))

(declare-fun tp!472597 () Bool)

(declare-fun b_and!115233 () Bool)

(assert (=> b!1624928 (= tp!472597 b_and!115233)))

(declare-fun b_free!43837 () Bool)

(declare-fun b_next!44541 () Bool)

(assert (=> b!1624928 (= b_free!43837 (not b_next!44541))))

(declare-fun tp!472594 () Bool)

(declare-fun b_and!115235 () Bool)

(assert (=> b!1624928 (= tp!472594 b_and!115235)))

(declare-fun b!1624914 () Bool)

(declare-fun res!726288 () Bool)

(declare-fun e!1042212 () Bool)

(assert (=> b!1624914 (=> (not res!726288) (not e!1042212))))

(declare-datatypes ((List!17885 0))(
  ( (Nil!17815) (Cons!17815 (h!23216 (_ BitVec 16)) (t!148976 List!17885)) )
))
(declare-datatypes ((TokenValue!3227 0))(
  ( (FloatLiteralValue!6454 (text!23034 List!17885)) (TokenValueExt!3226 (__x!11756 Int)) (Broken!16135 (value!99051 List!17885)) (Object!3296) (End!3227) (Def!3227) (Underscore!3227) (Match!3227) (Else!3227) (Error!3227) (Case!3227) (If!3227) (Extends!3227) (Abstract!3227) (Class!3227) (Val!3227) (DelimiterValue!6454 (del!3287 List!17885)) (KeywordValue!3233 (value!99052 List!17885)) (CommentValue!6454 (value!99053 List!17885)) (WhitespaceValue!6454 (value!99054 List!17885)) (IndentationValue!3227 (value!99055 List!17885)) (String!20466) (Int32!3227) (Broken!16136 (value!99056 List!17885)) (Boolean!3228) (Unit!28860) (OperatorValue!3230 (op!3287 List!17885)) (IdentifierValue!6454 (value!99057 List!17885)) (IdentifierValue!6455 (value!99058 List!17885)) (WhitespaceValue!6455 (value!99059 List!17885)) (True!6454) (False!6454) (Broken!16137 (value!99060 List!17885)) (Broken!16138 (value!99061 List!17885)) (True!6455) (RightBrace!3227) (RightBracket!3227) (Colon!3227) (Null!3227) (Comma!3227) (LeftBracket!3227) (False!6455) (LeftBrace!3227) (ImaginaryLiteralValue!3227 (text!23035 List!17885)) (StringLiteralValue!9681 (value!99062 List!17885)) (EOFValue!3227 (value!99063 List!17885)) (IdentValue!3227 (value!99064 List!17885)) (DelimiterValue!6455 (value!99065 List!17885)) (DedentValue!3227 (value!99066 List!17885)) (NewLineValue!3227 (value!99067 List!17885)) (IntegerValue!9681 (value!99068 (_ BitVec 32)) (text!23036 List!17885)) (IntegerValue!9682 (value!99069 Int) (text!23037 List!17885)) (Times!3227) (Or!3227) (Equal!3227) (Minus!3227) (Broken!16139 (value!99070 List!17885)) (And!3227) (Div!3227) (LessEqual!3227) (Mod!3227) (Concat!7692) (Not!3227) (Plus!3227) (SpaceValue!3227 (value!99071 List!17885)) (IntegerValue!9683 (value!99072 Int) (text!23038 List!17885)) (StringLiteralValue!9682 (text!23039 List!17885)) (FloatLiteralValue!6455 (text!23040 List!17885)) (BytesLiteralValue!3227 (value!99073 List!17885)) (CommentValue!6455 (value!99074 List!17885)) (StringLiteralValue!9683 (value!99075 List!17885)) (ErrorTokenValue!3227 (msg!3288 List!17885)) )
))
(declare-datatypes ((C!9104 0))(
  ( (C!9105 (val!5148 Int)) )
))
(declare-datatypes ((List!17886 0))(
  ( (Nil!17816) (Cons!17816 (h!23217 C!9104) (t!148977 List!17886)) )
))
(declare-datatypes ((IArray!11849 0))(
  ( (IArray!11850 (innerList!5982 List!17886)) )
))
(declare-datatypes ((Conc!5922 0))(
  ( (Node!5922 (left!14324 Conc!5922) (right!14654 Conc!5922) (csize!12074 Int) (cheight!6133 Int)) (Leaf!8711 (xs!8754 IArray!11849) (csize!12075 Int)) (Empty!5922) )
))
(declare-datatypes ((BalanceConc!11788 0))(
  ( (BalanceConc!11789 (c!264483 Conc!5922)) )
))
(declare-datatypes ((Regex!4465 0))(
  ( (ElementMatch!4465 (c!264484 C!9104)) (Concat!7693 (regOne!9442 Regex!4465) (regTwo!9442 Regex!4465)) (EmptyExpr!4465) (Star!4465 (reg!4794 Regex!4465)) (EmptyLang!4465) (Union!4465 (regOne!9443 Regex!4465) (regTwo!9443 Regex!4465)) )
))
(declare-datatypes ((String!20467 0))(
  ( (String!20468 (value!99076 String)) )
))
(declare-datatypes ((TokenValueInjection!6114 0))(
  ( (TokenValueInjection!6115 (toValue!4564 Int) (toChars!4423 Int)) )
))
(declare-datatypes ((Rule!6074 0))(
  ( (Rule!6075 (regex!3137 Regex!4465) (tag!3415 String!20467) (isSeparator!3137 Bool) (transformation!3137 TokenValueInjection!6114)) )
))
(declare-datatypes ((List!17887 0))(
  ( (Nil!17817) (Cons!17817 (h!23218 Rule!6074) (t!148978 List!17887)) )
))
(declare-fun rules!1846 () List!17887)

(declare-datatypes ((LexerInterface!2766 0))(
  ( (LexerInterfaceExt!2763 (__x!11757 Int)) (Lexer!2764) )
))
(declare-fun thiss!17113 () LexerInterface!2766)

(declare-datatypes ((Token!5840 0))(
  ( (Token!5841 (value!99077 TokenValue!3227) (rule!4963 Rule!6074) (size!14264 Int) (originalCharacters!3951 List!17886)) )
))
(declare-datatypes ((List!17888 0))(
  ( (Nil!17818) (Cons!17818 (h!23219 Token!5840) (t!148979 List!17888)) )
))
(declare-fun tokens!457 () List!17888)

(declare-fun rulesProduceEachTokenIndividuallyList!968 (LexerInterface!2766 List!17887 List!17888) Bool)

(assert (=> b!1624914 (= res!726288 (rulesProduceEachTokenIndividuallyList!968 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1624915 () Bool)

(declare-fun res!726301 () Bool)

(declare-fun e!1042207 () Bool)

(assert (=> b!1624915 (=> res!726301 e!1042207)))

(declare-fun separableTokensPredicate!708 (LexerInterface!2766 Token!5840 Token!5840 List!17887) Bool)

(assert (=> b!1624915 (= res!726301 (not (separableTokensPredicate!708 thiss!17113 (h!23219 tokens!457) (h!23219 (t!148979 tokens!457)) rules!1846)))))

(declare-fun b!1624916 () Bool)

(declare-fun e!1042195 () Bool)

(assert (=> b!1624916 (= e!1042195 true)))

(declare-fun lt!586699 () List!17886)

(declare-fun lt!586695 () Bool)

(declare-fun lt!586679 () Regex!4465)

(declare-fun lt!586687 () List!17886)

(declare-fun prefixMatch!400 (Regex!4465 List!17886) Bool)

(declare-fun ++!4733 (List!17886 List!17886) List!17886)

(assert (=> b!1624916 (= lt!586695 (prefixMatch!400 lt!586679 (++!4733 lt!586699 lt!586687)))))

(declare-fun b!1624917 () Bool)

(declare-fun e!1042199 () Bool)

(declare-fun e!1042202 () Bool)

(assert (=> b!1624917 (= e!1042199 (not e!1042202))))

(declare-fun res!726306 () Bool)

(assert (=> b!1624917 (=> res!726306 e!1042202)))

(declare-fun lt!586680 () List!17888)

(assert (=> b!1624917 (= res!726306 (not (= lt!586680 (t!148979 tokens!457))))))

(declare-datatypes ((IArray!11851 0))(
  ( (IArray!11852 (innerList!5983 List!17888)) )
))
(declare-datatypes ((Conc!5923 0))(
  ( (Node!5923 (left!14325 Conc!5923) (right!14655 Conc!5923) (csize!12076 Int) (cheight!6134 Int)) (Leaf!8712 (xs!8755 IArray!11851) (csize!12077 Int)) (Empty!5923) )
))
(declare-datatypes ((BalanceConc!11790 0))(
  ( (BalanceConc!11791 (c!264485 Conc!5923)) )
))
(declare-datatypes ((tuple2!17378 0))(
  ( (tuple2!17379 (_1!10091 BalanceConc!11790) (_2!10091 BalanceConc!11788)) )
))
(declare-fun lt!586681 () tuple2!17378)

(declare-fun list!6991 (BalanceConc!11790) List!17888)

(assert (=> b!1624917 (= lt!586680 (list!6991 (_1!10091 lt!586681)))))

(declare-datatypes ((Unit!28861 0))(
  ( (Unit!28862) )
))
(declare-fun lt!586684 () Unit!28861)

(declare-fun theoremInvertabilityWhenTokenListSeparable!211 (LexerInterface!2766 List!17887 List!17888) Unit!28861)

(assert (=> b!1624917 (= lt!586684 (theoremInvertabilityWhenTokenListSeparable!211 thiss!17113 rules!1846 (t!148979 tokens!457)))))

(declare-fun lt!586706 () List!17886)

(declare-fun isPrefix!1397 (List!17886 List!17886) Bool)

(assert (=> b!1624917 (isPrefix!1397 lt!586699 lt!586706)))

(declare-fun lt!586691 () Unit!28861)

(declare-fun lt!586683 () List!17886)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!922 (List!17886 List!17886) Unit!28861)

(assert (=> b!1624917 (= lt!586691 (lemmaConcatTwoListThenFirstIsPrefix!922 lt!586699 lt!586683))))

(declare-fun b!1624918 () Bool)

(assert (=> b!1624918 (= e!1042212 e!1042199)))

(declare-fun res!726302 () Bool)

(assert (=> b!1624918 (=> (not res!726302) (not e!1042199))))

(declare-fun lt!586696 () List!17886)

(assert (=> b!1624918 (= res!726302 (= lt!586696 lt!586706))))

(assert (=> b!1624918 (= lt!586706 (++!4733 lt!586699 lt!586683))))

(declare-fun lt!586701 () BalanceConc!11788)

(declare-fun list!6992 (BalanceConc!11788) List!17886)

(assert (=> b!1624918 (= lt!586696 (list!6992 lt!586701))))

(declare-fun lt!586693 () BalanceConc!11788)

(assert (=> b!1624918 (= lt!586683 (list!6992 lt!586693))))

(declare-fun lt!586688 () BalanceConc!11788)

(assert (=> b!1624918 (= lt!586699 (list!6992 lt!586688))))

(declare-fun charsOf!1786 (Token!5840) BalanceConc!11788)

(assert (=> b!1624918 (= lt!586688 (charsOf!1786 (h!23219 tokens!457)))))

(declare-fun lex!1250 (LexerInterface!2766 List!17887 BalanceConc!11788) tuple2!17378)

(assert (=> b!1624918 (= lt!586681 (lex!1250 thiss!17113 rules!1846 lt!586693))))

(declare-fun lt!586705 () BalanceConc!11790)

(declare-fun print!1297 (LexerInterface!2766 BalanceConc!11790) BalanceConc!11788)

(assert (=> b!1624918 (= lt!586693 (print!1297 thiss!17113 lt!586705))))

(declare-fun seqFromList!2023 (List!17888) BalanceConc!11790)

(assert (=> b!1624918 (= lt!586705 (seqFromList!2023 (t!148979 tokens!457)))))

(assert (=> b!1624918 (= lt!586701 (print!1297 thiss!17113 (seqFromList!2023 tokens!457)))))

(declare-fun e!1042201 () Bool)

(declare-fun b!1624919 () Bool)

(declare-fun e!1042198 () Bool)

(declare-fun tp!472592 () Bool)

(declare-fun inv!23193 (String!20467) Bool)

(declare-fun inv!23196 (TokenValueInjection!6114) Bool)

(assert (=> b!1624919 (= e!1042198 (and tp!472592 (inv!23193 (tag!3415 (rule!4963 (h!23219 tokens!457)))) (inv!23196 (transformation!3137 (rule!4963 (h!23219 tokens!457)))) e!1042201))))

(declare-fun b!1624920 () Bool)

(declare-fun e!1042209 () Bool)

(declare-fun tp!472599 () Bool)

(declare-fun e!1042200 () Bool)

(assert (=> b!1624920 (= e!1042209 (and tp!472599 (inv!23193 (tag!3415 (h!23218 rules!1846))) (inv!23196 (transformation!3137 (h!23218 rules!1846))) e!1042200))))

(declare-fun b!1624922 () Bool)

(declare-fun res!726292 () Bool)

(declare-fun e!1042210 () Bool)

(assert (=> b!1624922 (=> res!726292 e!1042210)))

(declare-fun isEmpty!10847 (BalanceConc!11790) Bool)

(declare-fun seqFromList!2024 (List!17886) BalanceConc!11788)

(assert (=> b!1624922 (= res!726292 (isEmpty!10847 (_1!10091 (lex!1250 thiss!17113 rules!1846 (seqFromList!2024 lt!586699)))))))

(declare-fun b!1624923 () Bool)

(declare-fun e!1042197 () Bool)

(declare-fun lt!586702 () List!17886)

(declare-fun head!3428 (List!17886) C!9104)

(assert (=> b!1624923 (= e!1042197 (= lt!586702 (Cons!17816 (head!3428 lt!586683) Nil!17816)))))

(declare-fun b!1624924 () Bool)

(assert (=> b!1624924 (= e!1042207 e!1042210)))

(declare-fun res!726291 () Bool)

(assert (=> b!1624924 (=> res!726291 e!1042210)))

(declare-fun lt!586704 () List!17886)

(declare-fun lt!586698 () List!17886)

(assert (=> b!1624924 (= res!726291 (or (not (= lt!586704 lt!586698)) (not (= lt!586698 lt!586699)) (not (= lt!586704 lt!586699))))))

(declare-fun printList!881 (LexerInterface!2766 List!17888) List!17886)

(assert (=> b!1624924 (= lt!586698 (printList!881 thiss!17113 (Cons!17818 (h!23219 tokens!457) Nil!17818)))))

(declare-fun lt!586686 () BalanceConc!11788)

(assert (=> b!1624924 (= lt!586704 (list!6992 lt!586686))))

(declare-fun lt!586689 () BalanceConc!11790)

(declare-fun printTailRec!819 (LexerInterface!2766 BalanceConc!11790 Int BalanceConc!11788) BalanceConc!11788)

(assert (=> b!1624924 (= lt!586686 (printTailRec!819 thiss!17113 lt!586689 0 (BalanceConc!11789 Empty!5922)))))

(assert (=> b!1624924 (= lt!586686 (print!1297 thiss!17113 lt!586689))))

(declare-fun singletonSeq!1552 (Token!5840) BalanceConc!11790)

(assert (=> b!1624924 (= lt!586689 (singletonSeq!1552 (h!23219 tokens!457)))))

(declare-datatypes ((tuple2!17380 0))(
  ( (tuple2!17381 (_1!10092 Token!5840) (_2!10092 List!17886)) )
))
(declare-datatypes ((Option!3297 0))(
  ( (None!3296) (Some!3296 (v!24331 tuple2!17380)) )
))
(declare-fun lt!586700 () Option!3297)

(declare-fun maxPrefix!1330 (LexerInterface!2766 List!17887 List!17886) Option!3297)

(assert (=> b!1624924 (= lt!586700 (maxPrefix!1330 thiss!17113 rules!1846 lt!586696))))

(declare-fun b!1624925 () Bool)

(declare-fun res!726303 () Bool)

(declare-fun e!1042206 () Bool)

(assert (=> b!1624925 (=> (not res!726303) (not e!1042206))))

(declare-fun lt!586692 () tuple2!17380)

(declare-fun isEmpty!10848 (List!17886) Bool)

(assert (=> b!1624925 (= res!726303 (isEmpty!10848 (_2!10092 lt!586692)))))

(declare-fun b!1624926 () Bool)

(declare-fun e!1042214 () Bool)

(declare-fun tp!472593 () Bool)

(assert (=> b!1624926 (= e!1042214 (and e!1042209 tp!472593))))

(declare-fun b!1624927 () Bool)

(declare-fun res!726290 () Bool)

(assert (=> b!1624927 (=> res!726290 e!1042210)))

(declare-fun rulesProduceIndividualToken!1418 (LexerInterface!2766 List!17887 Token!5840) Bool)

(assert (=> b!1624927 (= res!726290 (not (rulesProduceIndividualToken!1418 thiss!17113 rules!1846 (h!23219 tokens!457))))))

(assert (=> b!1624928 (= e!1042200 (and tp!472597 tp!472594))))

(assert (=> b!1624929 (= e!1042201 (and tp!472600 tp!472596))))

(declare-fun e!1042205 () Bool)

(declare-fun tp!472595 () Bool)

(declare-fun e!1042193 () Bool)

(declare-fun b!1624930 () Bool)

(declare-fun inv!23197 (Token!5840) Bool)

(assert (=> b!1624930 (= e!1042205 (and (inv!23197 (h!23219 tokens!457)) e!1042193 tp!472595))))

(declare-fun b!1624931 () Bool)

(declare-fun res!726295 () Bool)

(assert (=> b!1624931 (=> (not res!726295) (not e!1042212))))

(get-info :version)

(assert (=> b!1624931 (= res!726295 (and (not ((_ is Nil!17818) tokens!457)) (not ((_ is Nil!17818) (t!148979 tokens!457)))))))

(declare-fun b!1624932 () Bool)

(declare-fun res!726289 () Bool)

(assert (=> b!1624932 (=> (not res!726289) (not e!1042212))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!459 (LexerInterface!2766 List!17888 List!17887) Bool)

(assert (=> b!1624932 (= res!726289 (tokensListTwoByTwoPredicateSeparableList!459 thiss!17113 tokens!457 rules!1846))))

(declare-fun res!726297 () Bool)

(assert (=> start!154466 (=> (not res!726297) (not e!1042212))))

(assert (=> start!154466 (= res!726297 ((_ is Lexer!2764) thiss!17113))))

(assert (=> start!154466 e!1042212))

(assert (=> start!154466 true))

(assert (=> start!154466 e!1042214))

(assert (=> start!154466 e!1042205))

(declare-fun b!1624921 () Bool)

(declare-fun res!726298 () Bool)

(assert (=> b!1624921 (=> (not res!726298) (not e!1042197))))

(assert (=> b!1624921 (= res!726298 (= lt!586702 (Cons!17816 (head!3428 (originalCharacters!3951 (h!23219 (t!148979 tokens!457)))) Nil!17816)))))

(declare-fun b!1624933 () Bool)

(declare-fun matchR!1964 (Regex!4465 List!17886) Bool)

(assert (=> b!1624933 (= e!1042206 (matchR!1964 (regex!3137 (rule!4963 (h!23219 tokens!457))) lt!586699))))

(declare-fun b!1624934 () Bool)

(assert (=> b!1624934 (= e!1042202 e!1042207)))

(declare-fun res!726305 () Bool)

(assert (=> b!1624934 (=> res!726305 e!1042207)))

(declare-fun lt!586690 () List!17888)

(declare-fun lt!586694 () List!17888)

(assert (=> b!1624934 (= res!726305 (or (not (= lt!586680 lt!586690)) (not (= lt!586690 lt!586694))))))

(assert (=> b!1624934 (= lt!586690 (list!6991 lt!586705))))

(assert (=> b!1624934 (= lt!586680 lt!586694)))

(declare-fun prepend!663 (BalanceConc!11790 Token!5840) BalanceConc!11790)

(assert (=> b!1624934 (= lt!586694 (list!6991 (prepend!663 (seqFromList!2023 (t!148979 (t!148979 tokens!457))) (h!23219 (t!148979 tokens!457)))))))

(declare-fun lt!586685 () Unit!28861)

(declare-fun seqFromListBHdTlConstructive!214 (Token!5840 List!17888 BalanceConc!11790) Unit!28861)

(assert (=> b!1624934 (= lt!586685 (seqFromListBHdTlConstructive!214 (h!23219 (t!148979 tokens!457)) (t!148979 (t!148979 tokens!457)) (_1!10091 lt!586681)))))

(declare-fun b!1624935 () Bool)

(declare-fun e!1042213 () Bool)

(assert (=> b!1624935 (= e!1042213 e!1042195)))

(declare-fun res!726285 () Bool)

(assert (=> b!1624935 (=> res!726285 e!1042195)))

(assert (=> b!1624935 (= res!726285 (prefixMatch!400 lt!586679 (++!4733 (originalCharacters!3951 (h!23219 tokens!457)) lt!586687)))))

(assert (=> b!1624935 e!1042206))

(declare-fun res!726286 () Bool)

(assert (=> b!1624935 (=> (not res!726286) (not e!1042206))))

(assert (=> b!1624935 (= res!726286 (= (_1!10092 lt!586692) (h!23219 tokens!457)))))

(declare-fun lt!586682 () Option!3297)

(declare-fun get!5134 (Option!3297) tuple2!17380)

(assert (=> b!1624935 (= lt!586692 (get!5134 lt!586682))))

(declare-fun isDefined!2664 (Option!3297) Bool)

(assert (=> b!1624935 (isDefined!2664 lt!586682)))

(assert (=> b!1624935 (= lt!586682 (maxPrefix!1330 thiss!17113 rules!1846 lt!586699))))

(assert (=> b!1624935 (isDefined!2664 (maxPrefix!1330 thiss!17113 rules!1846 (originalCharacters!3951 (h!23219 tokens!457))))))

(declare-fun b!1624936 () Bool)

(declare-fun res!726299 () Bool)

(assert (=> b!1624936 (=> (not res!726299) (not e!1042212))))

(declare-fun rulesInvariant!2435 (LexerInterface!2766 List!17887) Bool)

(assert (=> b!1624936 (= res!726299 (rulesInvariant!2435 thiss!17113 rules!1846))))

(declare-fun b!1624937 () Bool)

(declare-fun e!1042204 () Bool)

(declare-fun e!1042211 () Bool)

(assert (=> b!1624937 (= e!1042204 e!1042211)))

(declare-fun res!726287 () Bool)

(assert (=> b!1624937 (=> res!726287 e!1042211)))

(declare-fun lt!586697 () BalanceConc!11788)

(declare-fun prefixMatchZipperSequence!525 (Regex!4465 BalanceConc!11788) Bool)

(declare-fun ++!4734 (BalanceConc!11788 BalanceConc!11788) BalanceConc!11788)

(assert (=> b!1624937 (= res!726287 (prefixMatchZipperSequence!525 lt!586679 (++!4734 lt!586688 lt!586697)))))

(declare-fun singletonSeq!1553 (C!9104) BalanceConc!11788)

(declare-fun apply!4550 (BalanceConc!11788 Int) C!9104)

(assert (=> b!1624937 (= lt!586697 (singletonSeq!1553 (apply!4550 (charsOf!1786 (h!23219 (t!148979 tokens!457))) 0)))))

(declare-fun rulesRegex!527 (LexerInterface!2766 List!17887) Regex!4465)

(assert (=> b!1624937 (= lt!586679 (rulesRegex!527 thiss!17113 rules!1846))))

(declare-fun b!1624938 () Bool)

(declare-fun e!1042196 () Bool)

(assert (=> b!1624938 (= e!1042211 e!1042196)))

(declare-fun res!726304 () Bool)

(assert (=> b!1624938 (=> res!726304 e!1042196)))

(assert (=> b!1624938 (= res!726304 (prefixMatch!400 lt!586679 (++!4733 lt!586699 lt!586702)))))

(assert (=> b!1624938 (= lt!586702 (list!6992 lt!586697))))

(declare-fun b!1624939 () Bool)

(assert (=> b!1624939 (= e!1042196 e!1042213)))

(declare-fun res!726300 () Bool)

(assert (=> b!1624939 (=> res!726300 e!1042213)))

(declare-datatypes ((tuple2!17382 0))(
  ( (tuple2!17383 (_1!10093 Token!5840) (_2!10093 BalanceConc!11788)) )
))
(declare-datatypes ((Option!3298 0))(
  ( (None!3297) (Some!3297 (v!24332 tuple2!17382)) )
))
(declare-fun isDefined!2665 (Option!3298) Bool)

(declare-fun maxPrefixZipperSequence!661 (LexerInterface!2766 List!17887 BalanceConc!11788) Option!3298)

(assert (=> b!1624939 (= res!726300 (not (isDefined!2665 (maxPrefixZipperSequence!661 thiss!17113 rules!1846 (seqFromList!2024 (originalCharacters!3951 (h!23219 tokens!457)))))))))

(assert (=> b!1624939 (= lt!586702 lt!586687)))

(declare-fun head!3429 (BalanceConc!11788) C!9104)

(assert (=> b!1624939 (= lt!586687 (Cons!17816 (head!3429 lt!586693) Nil!17816))))

(assert (=> b!1624939 e!1042197))

(declare-fun res!726293 () Bool)

(assert (=> b!1624939 (=> (not res!726293) (not e!1042197))))

(assert (=> b!1624939 (= res!726293 (= lt!586699 (originalCharacters!3951 (h!23219 tokens!457))))))

(declare-fun tp!472598 () Bool)

(declare-fun b!1624940 () Bool)

(declare-fun inv!21 (TokenValue!3227) Bool)

(assert (=> b!1624940 (= e!1042193 (and (inv!21 (value!99077 (h!23219 tokens!457))) e!1042198 tp!472598))))

(declare-fun b!1624941 () Bool)

(assert (=> b!1624941 (= e!1042210 e!1042204)))

(declare-fun res!726296 () Bool)

(assert (=> b!1624941 (=> res!726296 e!1042204)))

(assert (=> b!1624941 (= res!726296 (not (isDefined!2664 lt!586700)))))

(declare-fun lt!586703 () Unit!28861)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!340 (LexerInterface!2766 List!17887 List!17886 List!17886) Unit!28861)

(assert (=> b!1624941 (= lt!586703 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!340 thiss!17113 rules!1846 lt!586699 lt!586683))))

(declare-fun b!1624942 () Bool)

(declare-fun res!726294 () Bool)

(assert (=> b!1624942 (=> (not res!726294) (not e!1042212))))

(declare-fun isEmpty!10849 (List!17887) Bool)

(assert (=> b!1624942 (= res!726294 (not (isEmpty!10849 rules!1846)))))

(assert (= (and start!154466 res!726297) b!1624942))

(assert (= (and b!1624942 res!726294) b!1624936))

(assert (= (and b!1624936 res!726299) b!1624914))

(assert (= (and b!1624914 res!726288) b!1624932))

(assert (= (and b!1624932 res!726289) b!1624931))

(assert (= (and b!1624931 res!726295) b!1624918))

(assert (= (and b!1624918 res!726302) b!1624917))

(assert (= (and b!1624917 (not res!726306)) b!1624934))

(assert (= (and b!1624934 (not res!726305)) b!1624915))

(assert (= (and b!1624915 (not res!726301)) b!1624924))

(assert (= (and b!1624924 (not res!726291)) b!1624927))

(assert (= (and b!1624927 (not res!726290)) b!1624922))

(assert (= (and b!1624922 (not res!726292)) b!1624941))

(assert (= (and b!1624941 (not res!726296)) b!1624937))

(assert (= (and b!1624937 (not res!726287)) b!1624938))

(assert (= (and b!1624938 (not res!726304)) b!1624939))

(assert (= (and b!1624939 res!726293) b!1624921))

(assert (= (and b!1624921 res!726298) b!1624923))

(assert (= (and b!1624939 (not res!726300)) b!1624935))

(assert (= (and b!1624935 res!726286) b!1624925))

(assert (= (and b!1624925 res!726303) b!1624933))

(assert (= (and b!1624935 (not res!726285)) b!1624916))

(assert (= b!1624920 b!1624928))

(assert (= b!1624926 b!1624920))

(assert (= (and start!154466 ((_ is Cons!17817) rules!1846)) b!1624926))

(assert (= b!1624919 b!1624929))

(assert (= b!1624940 b!1624919))

(assert (= b!1624930 b!1624940))

(assert (= (and start!154466 ((_ is Cons!17818) tokens!457)) b!1624930))

(declare-fun m!1952465 () Bool)

(assert (=> b!1624933 m!1952465))

(declare-fun m!1952467 () Bool)

(assert (=> b!1624918 m!1952467))

(declare-fun m!1952469 () Bool)

(assert (=> b!1624918 m!1952469))

(declare-fun m!1952471 () Bool)

(assert (=> b!1624918 m!1952471))

(declare-fun m!1952473 () Bool)

(assert (=> b!1624918 m!1952473))

(declare-fun m!1952475 () Bool)

(assert (=> b!1624918 m!1952475))

(declare-fun m!1952477 () Bool)

(assert (=> b!1624918 m!1952477))

(assert (=> b!1624918 m!1952473))

(declare-fun m!1952479 () Bool)

(assert (=> b!1624918 m!1952479))

(declare-fun m!1952481 () Bool)

(assert (=> b!1624918 m!1952481))

(declare-fun m!1952483 () Bool)

(assert (=> b!1624918 m!1952483))

(declare-fun m!1952485 () Bool)

(assert (=> b!1624918 m!1952485))

(declare-fun m!1952487 () Bool)

(assert (=> b!1624920 m!1952487))

(declare-fun m!1952489 () Bool)

(assert (=> b!1624920 m!1952489))

(declare-fun m!1952491 () Bool)

(assert (=> b!1624939 m!1952491))

(assert (=> b!1624939 m!1952491))

(declare-fun m!1952493 () Bool)

(assert (=> b!1624939 m!1952493))

(assert (=> b!1624939 m!1952493))

(declare-fun m!1952495 () Bool)

(assert (=> b!1624939 m!1952495))

(declare-fun m!1952497 () Bool)

(assert (=> b!1624939 m!1952497))

(declare-fun m!1952499 () Bool)

(assert (=> b!1624935 m!1952499))

(declare-fun m!1952501 () Bool)

(assert (=> b!1624935 m!1952501))

(declare-fun m!1952503 () Bool)

(assert (=> b!1624935 m!1952503))

(declare-fun m!1952505 () Bool)

(assert (=> b!1624935 m!1952505))

(declare-fun m!1952507 () Bool)

(assert (=> b!1624935 m!1952507))

(declare-fun m!1952509 () Bool)

(assert (=> b!1624935 m!1952509))

(assert (=> b!1624935 m!1952499))

(declare-fun m!1952511 () Bool)

(assert (=> b!1624935 m!1952511))

(assert (=> b!1624935 m!1952507))

(declare-fun m!1952513 () Bool)

(assert (=> b!1624921 m!1952513))

(declare-fun m!1952515 () Bool)

(assert (=> b!1624930 m!1952515))

(declare-fun m!1952517 () Bool)

(assert (=> b!1624927 m!1952517))

(declare-fun m!1952519 () Bool)

(assert (=> b!1624917 m!1952519))

(declare-fun m!1952521 () Bool)

(assert (=> b!1624917 m!1952521))

(declare-fun m!1952523 () Bool)

(assert (=> b!1624917 m!1952523))

(declare-fun m!1952525 () Bool)

(assert (=> b!1624917 m!1952525))

(declare-fun m!1952527 () Bool)

(assert (=> b!1624932 m!1952527))

(declare-fun m!1952529 () Bool)

(assert (=> b!1624925 m!1952529))

(declare-fun m!1952531 () Bool)

(assert (=> b!1624916 m!1952531))

(assert (=> b!1624916 m!1952531))

(declare-fun m!1952533 () Bool)

(assert (=> b!1624916 m!1952533))

(declare-fun m!1952535 () Bool)

(assert (=> b!1624937 m!1952535))

(declare-fun m!1952537 () Bool)

(assert (=> b!1624937 m!1952537))

(declare-fun m!1952539 () Bool)

(assert (=> b!1624937 m!1952539))

(declare-fun m!1952541 () Bool)

(assert (=> b!1624937 m!1952541))

(assert (=> b!1624937 m!1952541))

(declare-fun m!1952543 () Bool)

(assert (=> b!1624937 m!1952543))

(declare-fun m!1952545 () Bool)

(assert (=> b!1624937 m!1952545))

(assert (=> b!1624937 m!1952537))

(assert (=> b!1624937 m!1952545))

(declare-fun m!1952547 () Bool)

(assert (=> b!1624924 m!1952547))

(declare-fun m!1952549 () Bool)

(assert (=> b!1624924 m!1952549))

(declare-fun m!1952551 () Bool)

(assert (=> b!1624924 m!1952551))

(declare-fun m!1952553 () Bool)

(assert (=> b!1624924 m!1952553))

(declare-fun m!1952555 () Bool)

(assert (=> b!1624924 m!1952555))

(declare-fun m!1952557 () Bool)

(assert (=> b!1624924 m!1952557))

(declare-fun m!1952559 () Bool)

(assert (=> b!1624938 m!1952559))

(assert (=> b!1624938 m!1952559))

(declare-fun m!1952561 () Bool)

(assert (=> b!1624938 m!1952561))

(declare-fun m!1952563 () Bool)

(assert (=> b!1624938 m!1952563))

(declare-fun m!1952565 () Bool)

(assert (=> b!1624942 m!1952565))

(declare-fun m!1952567 () Bool)

(assert (=> b!1624936 m!1952567))

(declare-fun m!1952569 () Bool)

(assert (=> b!1624914 m!1952569))

(declare-fun m!1952571 () Bool)

(assert (=> b!1624919 m!1952571))

(declare-fun m!1952573 () Bool)

(assert (=> b!1624919 m!1952573))

(declare-fun m!1952575 () Bool)

(assert (=> b!1624934 m!1952575))

(declare-fun m!1952577 () Bool)

(assert (=> b!1624934 m!1952577))

(declare-fun m!1952579 () Bool)

(assert (=> b!1624934 m!1952579))

(declare-fun m!1952581 () Bool)

(assert (=> b!1624934 m!1952581))

(declare-fun m!1952583 () Bool)

(assert (=> b!1624934 m!1952583))

(assert (=> b!1624934 m!1952579))

(assert (=> b!1624934 m!1952581))

(declare-fun m!1952585 () Bool)

(assert (=> b!1624915 m!1952585))

(declare-fun m!1952587 () Bool)

(assert (=> b!1624941 m!1952587))

(declare-fun m!1952589 () Bool)

(assert (=> b!1624941 m!1952589))

(declare-fun m!1952591 () Bool)

(assert (=> b!1624923 m!1952591))

(declare-fun m!1952593 () Bool)

(assert (=> b!1624922 m!1952593))

(assert (=> b!1624922 m!1952593))

(declare-fun m!1952595 () Bool)

(assert (=> b!1624922 m!1952595))

(declare-fun m!1952597 () Bool)

(assert (=> b!1624922 m!1952597))

(declare-fun m!1952599 () Bool)

(assert (=> b!1624940 m!1952599))

(check-sat (not b!1624934) (not b!1624942) (not b!1624915) (not b!1624941) (not b!1624935) (not b!1624936) (not b!1624939) (not b!1624919) (not b!1624937) (not b!1624926) (not b!1624927) b_and!115233 (not b!1624914) (not b!1624932) (not b!1624921) b_and!115229 (not b_next!44535) (not b!1624923) (not b!1624918) (not b!1624933) (not b!1624938) (not b!1624917) (not b!1624924) (not b!1624922) (not b!1624925) (not b_next!44539) (not b!1624940) b_and!115231 b_and!115235 (not b!1624920) (not b!1624930) (not b_next!44541) (not b!1624916) (not b_next!44537))
(check-sat b_and!115233 (not b_next!44539) b_and!115229 (not b_next!44535) b_and!115231 b_and!115235 (not b_next!44541) (not b_next!44537))
