; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134368 () Bool)

(assert start!134368)

(declare-fun b!1446809 () Bool)

(declare-fun e!922964 () Bool)

(declare-datatypes ((C!8080 0))(
  ( (C!8081 (val!4610 Int)) )
))
(declare-datatypes ((List!15066 0))(
  ( (Nil!15000) (Cons!15000 (h!20401 C!8080) (t!130349 List!15066)) )
))
(declare-fun lt!498727 () List!15066)

(assert (=> b!1446809 (= e!922964 (= lt!498727 Nil!15000))))

(declare-fun b!1446810 () Bool)

(declare-fun e!922970 () Bool)

(declare-datatypes ((IArray!10205 0))(
  ( (IArray!10206 (innerList!5160 List!15066)) )
))
(declare-datatypes ((Conc!5100 0))(
  ( (Node!5100 (left!12773 Conc!5100) (right!13103 Conc!5100) (csize!10430 Int) (cheight!5311 Int)) (Leaf!7620 (xs!7841 IArray!10205) (csize!10431 Int)) (Empty!5100) )
))
(declare-datatypes ((BalanceConc!10140 0))(
  ( (BalanceConc!10141 (c!238434 Conc!5100)) )
))
(declare-datatypes ((List!15067 0))(
  ( (Nil!15001) (Cons!15001 (h!20402 (_ BitVec 16)) (t!130350 List!15067)) )
))
(declare-datatypes ((TokenValue!2727 0))(
  ( (FloatLiteralValue!5454 (text!19534 List!15067)) (TokenValueExt!2726 (__x!9247 Int)) (Broken!13635 (value!84776 List!15067)) (Object!2792) (End!2727) (Def!2727) (Underscore!2727) (Match!2727) (Else!2727) (Error!2727) (Case!2727) (If!2727) (Extends!2727) (Abstract!2727) (Class!2727) (Val!2727) (DelimiterValue!5454 (del!2787 List!15067)) (KeywordValue!2733 (value!84777 List!15067)) (CommentValue!5454 (value!84778 List!15067)) (WhitespaceValue!5454 (value!84779 List!15067)) (IndentationValue!2727 (value!84780 List!15067)) (String!17890) (Int32!2727) (Broken!13636 (value!84781 List!15067)) (Boolean!2728) (Unit!23856) (OperatorValue!2730 (op!2787 List!15067)) (IdentifierValue!5454 (value!84782 List!15067)) (IdentifierValue!5455 (value!84783 List!15067)) (WhitespaceValue!5455 (value!84784 List!15067)) (True!5454) (False!5454) (Broken!13637 (value!84785 List!15067)) (Broken!13638 (value!84786 List!15067)) (True!5455) (RightBrace!2727) (RightBracket!2727) (Colon!2727) (Null!2727) (Comma!2727) (LeftBracket!2727) (False!5455) (LeftBrace!2727) (ImaginaryLiteralValue!2727 (text!19535 List!15067)) (StringLiteralValue!8181 (value!84787 List!15067)) (EOFValue!2727 (value!84788 List!15067)) (IdentValue!2727 (value!84789 List!15067)) (DelimiterValue!5455 (value!84790 List!15067)) (DedentValue!2727 (value!84791 List!15067)) (NewLineValue!2727 (value!84792 List!15067)) (IntegerValue!8181 (value!84793 (_ BitVec 32)) (text!19536 List!15067)) (IntegerValue!8182 (value!84794 Int) (text!19537 List!15067)) (Times!2727) (Or!2727) (Equal!2727) (Minus!2727) (Broken!13639 (value!84795 List!15067)) (And!2727) (Div!2727) (LessEqual!2727) (Mod!2727) (Concat!6678) (Not!2727) (Plus!2727) (SpaceValue!2727 (value!84796 List!15067)) (IntegerValue!8183 (value!84797 Int) (text!19538 List!15067)) (StringLiteralValue!8182 (text!19539 List!15067)) (FloatLiteralValue!5455 (text!19540 List!15067)) (BytesLiteralValue!2727 (value!84798 List!15067)) (CommentValue!5455 (value!84799 List!15067)) (StringLiteralValue!8183 (value!84800 List!15067)) (ErrorTokenValue!2727 (msg!2788 List!15067)) )
))
(declare-datatypes ((Regex!3951 0))(
  ( (ElementMatch!3951 (c!238435 C!8080)) (Concat!6679 (regOne!8414 Regex!3951) (regTwo!8414 Regex!3951)) (EmptyExpr!3951) (Star!3951 (reg!4280 Regex!3951)) (EmptyLang!3951) (Union!3951 (regOne!8415 Regex!3951) (regTwo!8415 Regex!3951)) )
))
(declare-datatypes ((String!17891 0))(
  ( (String!17892 (value!84801 String)) )
))
(declare-datatypes ((TokenValueInjection!5114 0))(
  ( (TokenValueInjection!5115 (toValue!3944 Int) (toChars!3803 Int)) )
))
(declare-datatypes ((Rule!5074 0))(
  ( (Rule!5075 (regex!2637 Regex!3951) (tag!2901 String!17891) (isSeparator!2637 Bool) (transformation!2637 TokenValueInjection!5114)) )
))
(declare-datatypes ((Token!4936 0))(
  ( (Token!4937 (value!84802 TokenValue!2727) (rule!4410 Rule!5074) (size!12297 Int) (originalCharacters!3499 List!15066)) )
))
(declare-datatypes ((List!15068 0))(
  ( (Nil!15002) (Cons!15002 (h!20403 Token!4936) (t!130351 List!15068)) )
))
(declare-datatypes ((IArray!10207 0))(
  ( (IArray!10208 (innerList!5161 List!15068)) )
))
(declare-datatypes ((Conc!5101 0))(
  ( (Node!5101 (left!12774 Conc!5101) (right!13104 Conc!5101) (csize!10432 Int) (cheight!5312 Int)) (Leaf!7621 (xs!7842 IArray!10207) (csize!10433 Int)) (Empty!5101) )
))
(declare-datatypes ((BalanceConc!10142 0))(
  ( (BalanceConc!10143 (c!238436 Conc!5101)) )
))
(declare-datatypes ((List!15069 0))(
  ( (Nil!15003) (Cons!15003 (h!20404 Rule!5074) (t!130352 List!15069)) )
))
(declare-datatypes ((PrintableTokens!1056 0))(
  ( (PrintableTokens!1057 (rules!11512 List!15069) (tokens!2020 BalanceConc!10142)) )
))
(declare-fun thiss!10022 () PrintableTokens!1056)

(declare-fun tp!407980 () Bool)

(declare-fun inv!19979 (Conc!5101) Bool)

(assert (=> b!1446810 (= e!922970 (and (inv!19979 (c!238436 (tokens!2020 thiss!10022))) tp!407980))))

(declare-fun b!1446811 () Bool)

(declare-fun e!922968 () Bool)

(declare-fun e!922969 () Bool)

(assert (=> b!1446811 (= e!922968 e!922969)))

(declare-fun res!655026 () Bool)

(assert (=> b!1446811 (=> (not res!655026) (not e!922969))))

(declare-fun lt!498732 () List!15068)

(declare-fun isEmpty!9353 (List!15068) Bool)

(assert (=> b!1446811 (= res!655026 (isEmpty!9353 lt!498732))))

(declare-fun list!5984 (BalanceConc!10142) List!15068)

(assert (=> b!1446811 (= lt!498732 (list!5984 (tokens!2020 thiss!10022)))))

(declare-fun res!655028 () Bool)

(declare-fun e!922962 () Bool)

(assert (=> start!134368 (=> (not res!655028) (not e!922962))))

(declare-fun other!32 () PrintableTokens!1056)

(assert (=> start!134368 (= res!655028 (= (rules!11512 thiss!10022) (rules!11512 other!32)))))

(assert (=> start!134368 e!922962))

(declare-fun e!922960 () Bool)

(declare-fun inv!19980 (PrintableTokens!1056) Bool)

(assert (=> start!134368 (and (inv!19980 thiss!10022) e!922960)))

(declare-fun e!922967 () Bool)

(assert (=> start!134368 (and (inv!19980 other!32) e!922967)))

(declare-fun b!1446812 () Bool)

(declare-fun tp!407977 () Bool)

(declare-fun inv!19981 (BalanceConc!10142) Bool)

(assert (=> b!1446812 (= e!922960 (and tp!407977 (inv!19981 (tokens!2020 thiss!10022)) e!922970))))

(declare-fun b!1446813 () Bool)

(declare-fun res!655030 () Bool)

(declare-fun e!922966 () Bool)

(assert (=> b!1446813 (=> (not res!655030) (not e!922966))))

(declare-fun lt!498730 () List!15068)

(declare-fun lt!498718 () PrintableTokens!1056)

(declare-fun ++!4041 (List!15068 List!15068) List!15068)

(assert (=> b!1446813 (= res!655030 (= (list!5984 (tokens!2020 lt!498718)) (++!4041 lt!498732 lt!498730)))))

(declare-fun b!1446814 () Bool)

(declare-fun e!922958 () Bool)

(declare-fun lt!498733 () List!15066)

(declare-fun e!922965 () List!15066)

(assert (=> b!1446814 (= e!922958 (= lt!498733 e!922965))))

(declare-fun c!238433 () Bool)

(get-info :version)

(assert (=> b!1446814 (= c!238433 ((_ is Cons!15002) lt!498730))))

(declare-fun b!1446815 () Bool)

(declare-fun e!922957 () Bool)

(declare-fun tp!407979 () Bool)

(assert (=> b!1446815 (= e!922957 (and (inv!19979 (c!238436 (tokens!2020 other!32))) tp!407979))))

(declare-fun b!1446816 () Bool)

(declare-fun ++!4042 (List!15066 List!15066) List!15066)

(declare-fun list!5985 (BalanceConc!10140) List!15066)

(declare-fun charsOf!1523 (Token!4936) BalanceConc!10140)

(declare-datatypes ((LexerInterface!2296 0))(
  ( (LexerInterfaceExt!2293 (__x!9248 Int)) (Lexer!2294) )
))
(declare-fun printList!715 (LexerInterface!2296 List!15068) List!15066)

(assert (=> b!1446816 (= e!922965 (++!4042 (list!5985 (charsOf!1523 (h!20403 lt!498730))) (printList!715 Lexer!2294 (t!130351 lt!498730))))))

(declare-fun tp!407978 () Bool)

(declare-fun b!1446817 () Bool)

(assert (=> b!1446817 (= e!922967 (and tp!407978 (inv!19981 (tokens!2020 other!32)) e!922957))))

(declare-fun b!1446818 () Bool)

(declare-fun e!922961 () Bool)

(assert (=> b!1446818 (= e!922961 e!922966)))

(declare-fun res!655033 () Bool)

(assert (=> b!1446818 (=> (not res!655033) (not e!922966))))

(assert (=> b!1446818 (= res!655033 (= (rules!11512 lt!498718) (rules!11512 thiss!10022)))))

(declare-datatypes ((Option!2865 0))(
  ( (None!2864) (Some!2864 (v!22414 PrintableTokens!1056)) )
))
(declare-fun lt!498728 () Option!2865)

(declare-fun get!4590 (Option!2865) PrintableTokens!1056)

(assert (=> b!1446818 (= lt!498718 (get!4590 lt!498728))))

(declare-fun b!1446819 () Bool)

(declare-fun res!655035 () Bool)

(assert (=> b!1446819 (=> (not res!655035) (not e!922968))))

(declare-fun isEmpty!9354 (BalanceConc!10142) Bool)

(assert (=> b!1446819 (= res!655035 (isEmpty!9354 (tokens!2020 thiss!10022)))))

(declare-fun b!1446820 () Bool)

(assert (=> b!1446820 (= e!922962 e!922968)))

(declare-fun res!655034 () Bool)

(assert (=> b!1446820 (=> (not res!655034) (not e!922968))))

(assert (=> b!1446820 (= res!655034 (not (isEmpty!9354 (tokens!2020 other!32))))))

(declare-datatypes ((Unit!23857 0))(
  ( (Unit!23858) )
))
(declare-fun lt!498724 () Unit!23857)

(declare-fun lemmaInvariant!333 (PrintableTokens!1056) Unit!23857)

(assert (=> b!1446820 (= lt!498724 (lemmaInvariant!333 thiss!10022))))

(declare-fun lt!498721 () Unit!23857)

(assert (=> b!1446820 (= lt!498721 (lemmaInvariant!333 other!32))))

(declare-fun b!1446821 () Bool)

(assert (=> b!1446821 (= e!922965 Nil!15000)))

(declare-fun b!1446822 () Bool)

(declare-fun e!922959 () Bool)

(declare-fun e!922963 () Bool)

(assert (=> b!1446822 (= e!922959 (not e!922963))))

(declare-fun res!655029 () Bool)

(assert (=> b!1446822 (=> res!655029 e!922963)))

(declare-fun lt!498722 () BalanceConc!10140)

(assert (=> b!1446822 (= res!655029 (not (= lt!498722 (BalanceConc!10141 Empty!5100))))))

(assert (=> b!1446822 e!922958))

(declare-fun res!655032 () Bool)

(assert (=> b!1446822 (=> (not res!655032) (not e!922958))))

(declare-fun lt!498723 () BalanceConc!10140)

(declare-fun lt!498734 () BalanceConc!10140)

(assert (=> b!1446822 (= res!655032 (= lt!498723 lt!498734))))

(declare-fun print!1078 (LexerInterface!2296 BalanceConc!10142) BalanceConc!10140)

(assert (=> b!1446822 (= lt!498734 (print!1078 Lexer!2294 (tokens!2020 other!32)))))

(declare-fun print!1079 (PrintableTokens!1056) BalanceConc!10140)

(assert (=> b!1446822 (= lt!498723 (print!1079 other!32))))

(declare-fun lt!498719 () Unit!23857)

(declare-fun theoremInvertabilityWhenTokenListSeparable!75 (LexerInterface!2296 List!15069 List!15068) Unit!23857)

(assert (=> b!1446822 (= lt!498719 (theoremInvertabilityWhenTokenListSeparable!75 Lexer!2294 (rules!11512 other!32) lt!498730))))

(declare-fun lt!498726 () BalanceConc!10140)

(assert (=> b!1446822 (= lt!498726 lt!498722)))

(assert (=> b!1446822 (= lt!498722 (print!1078 Lexer!2294 (tokens!2020 thiss!10022)))))

(assert (=> b!1446822 (= lt!498726 (print!1079 thiss!10022))))

(declare-fun lt!498720 () Unit!23857)

(assert (=> b!1446822 (= lt!498720 (theoremInvertabilityWhenTokenListSeparable!75 Lexer!2294 (rules!11512 thiss!10022) lt!498732))))

(assert (=> b!1446822 e!922964))

(declare-fun res!655027 () Bool)

(assert (=> b!1446822 (=> (not res!655027) (not e!922964))))

(declare-fun lt!498731 () List!15068)

(assert (=> b!1446822 (= res!655027 (= (printList!715 Lexer!2294 lt!498731) (++!4042 lt!498727 lt!498733)))))

(assert (=> b!1446822 (= lt!498733 (printList!715 Lexer!2294 lt!498730))))

(assert (=> b!1446822 (= lt!498727 (printList!715 Lexer!2294 Nil!15002))))

(assert (=> b!1446822 (= lt!498731 (++!4041 Nil!15002 lt!498730))))

(declare-fun lt!498725 () Unit!23857)

(declare-fun lemmaPrintConcatSameAsConcatPrint!74 (LexerInterface!2296 List!15068 List!15068) Unit!23857)

(assert (=> b!1446822 (= lt!498725 (lemmaPrintConcatSameAsConcatPrint!74 Lexer!2294 Nil!15002 lt!498730))))

(declare-fun b!1446823 () Bool)

(declare-fun res!655036 () Bool)

(assert (=> b!1446823 (=> (not res!655036) (not e!922958))))

(declare-fun printTailRec!687 (LexerInterface!2296 BalanceConc!10142 Int BalanceConc!10140) BalanceConc!10140)

(assert (=> b!1446823 (= res!655036 (= lt!498734 (printTailRec!687 Lexer!2294 (tokens!2020 other!32) 0 (BalanceConc!10141 Empty!5100))))))

(declare-fun b!1446824 () Bool)

(assert (=> b!1446824 (= e!922966 (= (list!5985 (print!1079 lt!498718)) (++!4042 (list!5985 lt!498726) (list!5985 lt!498723))))))

(declare-fun b!1446825 () Bool)

(assert (=> b!1446825 (= e!922963 e!922961)))

(declare-fun res!655025 () Bool)

(assert (=> b!1446825 (=> res!655025 e!922961)))

(declare-fun isEmpty!9355 (Option!2865) Bool)

(assert (=> b!1446825 (= res!655025 (isEmpty!9355 lt!498728))))

(assert (=> b!1446825 (= lt!498728 (Some!2864 other!32))))

(declare-fun b!1446826 () Bool)

(assert (=> b!1446826 (= e!922969 e!922959)))

(declare-fun res!655031 () Bool)

(assert (=> b!1446826 (=> (not res!655031) (not e!922959))))

(declare-fun lt!498729 () List!15068)

(assert (=> b!1446826 (= res!655031 (= lt!498730 (++!4041 lt!498729 lt!498730)))))

(assert (=> b!1446826 (= lt!498730 (list!5984 (tokens!2020 other!32)))))

(assert (=> b!1446826 (= lt!498729 (list!5984 (BalanceConc!10143 Empty!5101)))))

(assert (= (and start!134368 res!655028) b!1446820))

(assert (= (and b!1446820 res!655034) b!1446819))

(assert (= (and b!1446819 res!655035) b!1446811))

(assert (= (and b!1446811 res!655026) b!1446826))

(assert (= (and b!1446826 res!655031) b!1446822))

(assert (= (and b!1446822 res!655027) b!1446809))

(assert (= (and b!1446822 res!655032) b!1446823))

(assert (= (and b!1446823 res!655036) b!1446814))

(assert (= (and b!1446814 c!238433) b!1446816))

(assert (= (and b!1446814 (not c!238433)) b!1446821))

(assert (= (and b!1446822 (not res!655029)) b!1446825))

(assert (= (and b!1446825 (not res!655025)) b!1446818))

(assert (= (and b!1446818 res!655033) b!1446813))

(assert (= (and b!1446813 res!655030) b!1446824))

(assert (= b!1446812 b!1446810))

(assert (= start!134368 b!1446812))

(assert (= b!1446817 b!1446815))

(assert (= start!134368 b!1446817))

(declare-fun m!1669033 () Bool)

(assert (=> b!1446823 m!1669033))

(declare-fun m!1669035 () Bool)

(assert (=> start!134368 m!1669035))

(declare-fun m!1669037 () Bool)

(assert (=> start!134368 m!1669037))

(declare-fun m!1669039 () Bool)

(assert (=> b!1446812 m!1669039))

(declare-fun m!1669041 () Bool)

(assert (=> b!1446819 m!1669041))

(declare-fun m!1669043 () Bool)

(assert (=> b!1446826 m!1669043))

(declare-fun m!1669045 () Bool)

(assert (=> b!1446826 m!1669045))

(declare-fun m!1669047 () Bool)

(assert (=> b!1446826 m!1669047))

(declare-fun m!1669049 () Bool)

(assert (=> b!1446810 m!1669049))

(declare-fun m!1669051 () Bool)

(assert (=> b!1446818 m!1669051))

(declare-fun m!1669053 () Bool)

(assert (=> b!1446811 m!1669053))

(declare-fun m!1669055 () Bool)

(assert (=> b!1446811 m!1669055))

(declare-fun m!1669057 () Bool)

(assert (=> b!1446822 m!1669057))

(declare-fun m!1669059 () Bool)

(assert (=> b!1446822 m!1669059))

(declare-fun m!1669061 () Bool)

(assert (=> b!1446822 m!1669061))

(declare-fun m!1669063 () Bool)

(assert (=> b!1446822 m!1669063))

(declare-fun m!1669065 () Bool)

(assert (=> b!1446822 m!1669065))

(declare-fun m!1669067 () Bool)

(assert (=> b!1446822 m!1669067))

(declare-fun m!1669069 () Bool)

(assert (=> b!1446822 m!1669069))

(declare-fun m!1669071 () Bool)

(assert (=> b!1446822 m!1669071))

(declare-fun m!1669073 () Bool)

(assert (=> b!1446822 m!1669073))

(declare-fun m!1669075 () Bool)

(assert (=> b!1446822 m!1669075))

(declare-fun m!1669077 () Bool)

(assert (=> b!1446822 m!1669077))

(declare-fun m!1669079 () Bool)

(assert (=> b!1446822 m!1669079))

(declare-fun m!1669081 () Bool)

(assert (=> b!1446815 m!1669081))

(declare-fun m!1669083 () Bool)

(assert (=> b!1446825 m!1669083))

(declare-fun m!1669085 () Bool)

(assert (=> b!1446813 m!1669085))

(declare-fun m!1669087 () Bool)

(assert (=> b!1446813 m!1669087))

(declare-fun m!1669089 () Bool)

(assert (=> b!1446817 m!1669089))

(declare-fun m!1669091 () Bool)

(assert (=> b!1446820 m!1669091))

(declare-fun m!1669093 () Bool)

(assert (=> b!1446820 m!1669093))

(declare-fun m!1669095 () Bool)

(assert (=> b!1446820 m!1669095))

(declare-fun m!1669097 () Bool)

(assert (=> b!1446816 m!1669097))

(assert (=> b!1446816 m!1669097))

(declare-fun m!1669099 () Bool)

(assert (=> b!1446816 m!1669099))

(declare-fun m!1669101 () Bool)

(assert (=> b!1446816 m!1669101))

(assert (=> b!1446816 m!1669099))

(assert (=> b!1446816 m!1669101))

(declare-fun m!1669103 () Bool)

(assert (=> b!1446816 m!1669103))

(declare-fun m!1669105 () Bool)

(assert (=> b!1446824 m!1669105))

(declare-fun m!1669107 () Bool)

(assert (=> b!1446824 m!1669107))

(declare-fun m!1669109 () Bool)

(assert (=> b!1446824 m!1669109))

(declare-fun m!1669111 () Bool)

(assert (=> b!1446824 m!1669111))

(declare-fun m!1669113 () Bool)

(assert (=> b!1446824 m!1669113))

(assert (=> b!1446824 m!1669105))

(assert (=> b!1446824 m!1669111))

(assert (=> b!1446824 m!1669109))

(check-sat (not b!1446819) (not b!1446811) (not b!1446816) (not b!1446812) (not b!1446810) (not b!1446815) (not b!1446818) (not b!1446826) (not b!1446820) (not b!1446813) (not b!1446825) (not b!1446824) (not b!1446823) (not b!1446822) (not start!134368) (not b!1446817))
(check-sat)
(get-model)

(declare-fun d!419944 () Bool)

(declare-fun e!922982 () Bool)

(assert (=> d!419944 e!922982))

(declare-fun res!655050 () Bool)

(assert (=> d!419944 (=> (not res!655050) (not e!922982))))

(declare-fun lt!498740 () List!15068)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2221 (List!15068) (InoxSet Token!4936))

(assert (=> d!419944 (= res!655050 (= (content!2221 lt!498740) ((_ map or) (content!2221 Nil!15002) (content!2221 lt!498730))))))

(declare-fun e!922981 () List!15068)

(assert (=> d!419944 (= lt!498740 e!922981)))

(declare-fun c!238442 () Bool)

(assert (=> d!419944 (= c!238442 ((_ is Nil!15002) Nil!15002))))

(assert (=> d!419944 (= (++!4041 Nil!15002 lt!498730) lt!498740)))

(declare-fun b!1446847 () Bool)

(assert (=> b!1446847 (= e!922982 (or (not (= lt!498730 Nil!15002)) (= lt!498740 Nil!15002)))))

(declare-fun b!1446845 () Bool)

(assert (=> b!1446845 (= e!922981 (Cons!15002 (h!20403 Nil!15002) (++!4041 (t!130351 Nil!15002) lt!498730)))))

(declare-fun b!1446846 () Bool)

(declare-fun res!655051 () Bool)

(assert (=> b!1446846 (=> (not res!655051) (not e!922982))))

(declare-fun size!12300 (List!15068) Int)

(assert (=> b!1446846 (= res!655051 (= (size!12300 lt!498740) (+ (size!12300 Nil!15002) (size!12300 lt!498730))))))

(declare-fun b!1446844 () Bool)

(assert (=> b!1446844 (= e!922981 lt!498730)))

(assert (= (and d!419944 c!238442) b!1446844))

(assert (= (and d!419944 (not c!238442)) b!1446845))

(assert (= (and d!419944 res!655050) b!1446846))

(assert (= (and b!1446846 res!655051) b!1446847))

(declare-fun m!1669125 () Bool)

(assert (=> d!419944 m!1669125))

(declare-fun m!1669127 () Bool)

(assert (=> d!419944 m!1669127))

(declare-fun m!1669129 () Bool)

(assert (=> d!419944 m!1669129))

(declare-fun m!1669131 () Bool)

(assert (=> b!1446845 m!1669131))

(declare-fun m!1669133 () Bool)

(assert (=> b!1446846 m!1669133))

(declare-fun m!1669135 () Bool)

(assert (=> b!1446846 m!1669135))

(declare-fun m!1669137 () Bool)

(assert (=> b!1446846 m!1669137))

(assert (=> b!1446822 d!419944))

(declare-fun d!419954 () Bool)

(assert (=> d!419954 (= (printList!715 Lexer!2294 (++!4041 Nil!15002 lt!498730)) (++!4042 (printList!715 Lexer!2294 Nil!15002) (printList!715 Lexer!2294 lt!498730)))))

(declare-fun lt!498746 () Unit!23857)

(declare-fun choose!8918 (LexerInterface!2296 List!15068 List!15068) Unit!23857)

(assert (=> d!419954 (= lt!498746 (choose!8918 Lexer!2294 Nil!15002 lt!498730))))

(assert (=> d!419954 (= (lemmaPrintConcatSameAsConcatPrint!74 Lexer!2294 Nil!15002 lt!498730) lt!498746)))

(declare-fun bs!342272 () Bool)

(assert (= bs!342272 d!419954))

(assert (=> bs!342272 m!1669057))

(assert (=> bs!342272 m!1669057))

(assert (=> bs!342272 m!1669067))

(declare-fun m!1669157 () Bool)

(assert (=> bs!342272 m!1669157))

(assert (=> bs!342272 m!1669061))

(declare-fun m!1669159 () Bool)

(assert (=> bs!342272 m!1669159))

(assert (=> bs!342272 m!1669061))

(declare-fun m!1669161 () Bool)

(assert (=> bs!342272 m!1669161))

(assert (=> bs!342272 m!1669067))

(assert (=> b!1446822 d!419954))

(declare-fun d!419962 () Bool)

(declare-fun c!238448 () Bool)

(assert (=> d!419962 (= c!238448 ((_ is Cons!15002) lt!498731))))

(declare-fun e!922991 () List!15066)

(assert (=> d!419962 (= (printList!715 Lexer!2294 lt!498731) e!922991)))

(declare-fun b!1446864 () Bool)

(assert (=> b!1446864 (= e!922991 (++!4042 (list!5985 (charsOf!1523 (h!20403 lt!498731))) (printList!715 Lexer!2294 (t!130351 lt!498731))))))

(declare-fun b!1446865 () Bool)

(assert (=> b!1446865 (= e!922991 Nil!15000)))

(assert (= (and d!419962 c!238448) b!1446864))

(assert (= (and d!419962 (not c!238448)) b!1446865))

(declare-fun m!1669163 () Bool)

(assert (=> b!1446864 m!1669163))

(assert (=> b!1446864 m!1669163))

(declare-fun m!1669165 () Bool)

(assert (=> b!1446864 m!1669165))

(declare-fun m!1669167 () Bool)

(assert (=> b!1446864 m!1669167))

(assert (=> b!1446864 m!1669165))

(assert (=> b!1446864 m!1669167))

(declare-fun m!1669169 () Bool)

(assert (=> b!1446864 m!1669169))

(assert (=> b!1446822 d!419962))

(declare-fun d!419964 () Bool)

(declare-fun lt!498770 () BalanceConc!10140)

(assert (=> d!419964 (= (list!5985 lt!498770) (printList!715 Lexer!2294 (list!5984 (tokens!2020 other!32))))))

(assert (=> d!419964 (= lt!498770 (printTailRec!687 Lexer!2294 (tokens!2020 other!32) 0 (BalanceConc!10141 Empty!5100)))))

(assert (=> d!419964 (= (print!1078 Lexer!2294 (tokens!2020 other!32)) lt!498770)))

(declare-fun bs!342273 () Bool)

(assert (= bs!342273 d!419964))

(declare-fun m!1669205 () Bool)

(assert (=> bs!342273 m!1669205))

(assert (=> bs!342273 m!1669045))

(assert (=> bs!342273 m!1669045))

(declare-fun m!1669213 () Bool)

(assert (=> bs!342273 m!1669213))

(assert (=> bs!342273 m!1669033))

(assert (=> b!1446822 d!419964))

(declare-fun d!419974 () Bool)

(declare-fun c!238455 () Bool)

(assert (=> d!419974 (= c!238455 ((_ is Cons!15002) lt!498730))))

(declare-fun e!923001 () List!15066)

(assert (=> d!419974 (= (printList!715 Lexer!2294 lt!498730) e!923001)))

(declare-fun b!1446881 () Bool)

(assert (=> b!1446881 (= e!923001 (++!4042 (list!5985 (charsOf!1523 (h!20403 lt!498730))) (printList!715 Lexer!2294 (t!130351 lt!498730))))))

(declare-fun b!1446882 () Bool)

(assert (=> b!1446882 (= e!923001 Nil!15000)))

(assert (= (and d!419974 c!238455) b!1446881))

(assert (= (and d!419974 (not c!238455)) b!1446882))

(assert (=> b!1446881 m!1669097))

(assert (=> b!1446881 m!1669097))

(assert (=> b!1446881 m!1669099))

(assert (=> b!1446881 m!1669101))

(assert (=> b!1446881 m!1669099))

(assert (=> b!1446881 m!1669101))

(assert (=> b!1446881 m!1669103))

(assert (=> b!1446822 d!419974))

(declare-fun d!419976 () Bool)

(declare-fun lt!498771 () BalanceConc!10140)

(assert (=> d!419976 (= (list!5985 lt!498771) (printList!715 Lexer!2294 (list!5984 (tokens!2020 thiss!10022))))))

(assert (=> d!419976 (= lt!498771 (printTailRec!687 Lexer!2294 (tokens!2020 thiss!10022) 0 (BalanceConc!10141 Empty!5100)))))

(assert (=> d!419976 (= (print!1078 Lexer!2294 (tokens!2020 thiss!10022)) lt!498771)))

(declare-fun bs!342274 () Bool)

(assert (= bs!342274 d!419976))

(declare-fun m!1669217 () Bool)

(assert (=> bs!342274 m!1669217))

(assert (=> bs!342274 m!1669055))

(assert (=> bs!342274 m!1669055))

(declare-fun m!1669219 () Bool)

(assert (=> bs!342274 m!1669219))

(declare-fun m!1669221 () Bool)

(assert (=> bs!342274 m!1669221))

(assert (=> b!1446822 d!419976))

(declare-fun d!419978 () Bool)

(declare-fun e!923007 () Bool)

(assert (=> d!419978 e!923007))

(declare-fun res!655066 () Bool)

(assert (=> d!419978 (=> (not res!655066) (not e!923007))))

(declare-fun lt!498782 () BalanceConc!10140)

(declare-datatypes ((tuple2!14172 0))(
  ( (tuple2!14173 (_1!7972 BalanceConc!10142) (_2!7972 BalanceConc!10140)) )
))
(declare-fun lex!1052 (LexerInterface!2296 List!15069 BalanceConc!10140) tuple2!14172)

(assert (=> d!419978 (= res!655066 (= (list!5984 (_1!7972 (lex!1052 Lexer!2294 (rules!11512 thiss!10022) lt!498782))) (list!5984 (tokens!2020 thiss!10022))))))

(assert (=> d!419978 (= lt!498782 (print!1078 Lexer!2294 (tokens!2020 thiss!10022)))))

(declare-fun lt!498783 () Unit!23857)

(assert (=> d!419978 (= lt!498783 (theoremInvertabilityWhenTokenListSeparable!75 Lexer!2294 (rules!11512 thiss!10022) (list!5984 (tokens!2020 thiss!10022))))))

(assert (=> d!419978 (= (print!1079 thiss!10022) lt!498782)))

(declare-fun b!1446888 () Bool)

(declare-fun isEmpty!9360 (List!15066) Bool)

(assert (=> b!1446888 (= e!923007 (isEmpty!9360 (list!5985 (_2!7972 (lex!1052 Lexer!2294 (rules!11512 thiss!10022) lt!498782)))))))

(assert (= (and d!419978 res!655066) b!1446888))

(assert (=> d!419978 m!1669055))

(declare-fun m!1669233 () Bool)

(assert (=> d!419978 m!1669233))

(declare-fun m!1669235 () Bool)

(assert (=> d!419978 m!1669235))

(assert (=> d!419978 m!1669063))

(assert (=> d!419978 m!1669055))

(declare-fun m!1669237 () Bool)

(assert (=> d!419978 m!1669237))

(assert (=> b!1446888 m!1669233))

(declare-fun m!1669239 () Bool)

(assert (=> b!1446888 m!1669239))

(assert (=> b!1446888 m!1669239))

(declare-fun m!1669241 () Bool)

(assert (=> b!1446888 m!1669241))

(assert (=> b!1446822 d!419978))

(declare-fun d!419982 () Bool)

(declare-fun e!923037 () Bool)

(assert (=> d!419982 e!923037))

(declare-fun res!655086 () Bool)

(assert (=> d!419982 (=> (not res!655086) (not e!923037))))

(declare-fun seqFromList!1708 (List!15068) BalanceConc!10142)

(assert (=> d!419982 (= res!655086 (= (list!5984 (_1!7972 (lex!1052 Lexer!2294 (rules!11512 other!32) (print!1078 Lexer!2294 (seqFromList!1708 lt!498730))))) lt!498730))))

(declare-fun lt!498971 () Unit!23857)

(declare-fun e!923036 () Unit!23857)

(assert (=> d!419982 (= lt!498971 e!923036)))

(declare-fun c!238470 () Bool)

(assert (=> d!419982 (= c!238470 (or ((_ is Nil!15002) lt!498730) ((_ is Nil!15002) (t!130351 lt!498730))))))

(declare-fun isEmpty!9361 (List!15069) Bool)

(assert (=> d!419982 (not (isEmpty!9361 (rules!11512 other!32)))))

(assert (=> d!419982 (= (theoremInvertabilityWhenTokenListSeparable!75 Lexer!2294 (rules!11512 other!32) lt!498730) lt!498971)))

(declare-fun b!1446936 () Bool)

(declare-fun Unit!23887 () Unit!23857)

(assert (=> b!1446936 (= e!923036 Unit!23887)))

(declare-fun b!1446937 () Bool)

(declare-fun Unit!23888 () Unit!23857)

(assert (=> b!1446937 (= e!923036 Unit!23888)))

(declare-fun lt!498979 () BalanceConc!10140)

(assert (=> b!1446937 (= lt!498979 (print!1078 Lexer!2294 (seqFromList!1708 lt!498730)))))

(declare-fun lt!498966 () BalanceConc!10140)

(assert (=> b!1446937 (= lt!498966 (print!1078 Lexer!2294 (seqFromList!1708 (t!130351 lt!498730))))))

(declare-fun lt!498958 () tuple2!14172)

(assert (=> b!1446937 (= lt!498958 (lex!1052 Lexer!2294 (rules!11512 other!32) lt!498966))))

(declare-fun lt!498974 () List!15066)

(assert (=> b!1446937 (= lt!498974 (list!5985 (charsOf!1523 (h!20403 lt!498730))))))

(declare-fun lt!498960 () List!15066)

(assert (=> b!1446937 (= lt!498960 (list!5985 lt!498966))))

(declare-fun lt!498962 () Unit!23857)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!764 (List!15066 List!15066) Unit!23857)

(assert (=> b!1446937 (= lt!498962 (lemmaConcatTwoListThenFirstIsPrefix!764 lt!498974 lt!498960))))

(declare-fun isPrefix!1199 (List!15066 List!15066) Bool)

(assert (=> b!1446937 (isPrefix!1199 lt!498974 (++!4042 lt!498974 lt!498960))))

(declare-fun lt!498982 () Unit!23857)

(assert (=> b!1446937 (= lt!498982 lt!498962)))

(declare-fun lt!498975 () Unit!23857)

(assert (=> b!1446937 (= lt!498975 (theoremInvertabilityWhenTokenListSeparable!75 Lexer!2294 (rules!11512 other!32) (t!130351 lt!498730)))))

(declare-fun lt!498969 () Unit!23857)

(declare-fun seqFromListBHdTlConstructive!93 (Token!4936 List!15068 BalanceConc!10142) Unit!23857)

(assert (=> b!1446937 (= lt!498969 (seqFromListBHdTlConstructive!93 (h!20403 (t!130351 lt!498730)) (t!130351 (t!130351 lt!498730)) (_1!7972 lt!498958)))))

(declare-fun prepend!419 (BalanceConc!10142 Token!4936) BalanceConc!10142)

(assert (=> b!1446937 (= (list!5984 (_1!7972 lt!498958)) (list!5984 (prepend!419 (seqFromList!1708 (t!130351 (t!130351 lt!498730))) (h!20403 (t!130351 lt!498730)))))))

(declare-fun lt!498977 () Unit!23857)

(assert (=> b!1446937 (= lt!498977 lt!498969)))

(declare-datatypes ((tuple2!14174 0))(
  ( (tuple2!14175 (_1!7973 Token!4936) (_2!7973 List!15066)) )
))
(declare-datatypes ((Option!2867 0))(
  ( (None!2866) (Some!2866 (v!22424 tuple2!14174)) )
))
(declare-fun lt!498972 () Option!2867)

(declare-fun maxPrefix!1189 (LexerInterface!2296 List!15069 List!15066) Option!2867)

(assert (=> b!1446937 (= lt!498972 (maxPrefix!1189 Lexer!2294 (rules!11512 other!32) (list!5985 lt!498979)))))

(declare-fun singletonSeq!1242 (Token!4936) BalanceConc!10142)

(assert (=> b!1446937 (= (print!1078 Lexer!2294 (singletonSeq!1242 (h!20403 lt!498730))) (printTailRec!687 Lexer!2294 (singletonSeq!1242 (h!20403 lt!498730)) 0 (BalanceConc!10141 Empty!5100)))))

(declare-fun lt!498963 () Unit!23857)

(declare-fun Unit!23889 () Unit!23857)

(assert (=> b!1446937 (= lt!498963 Unit!23889)))

(declare-fun lt!498970 () Unit!23857)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!237 (LexerInterface!2296 List!15069 List!15066 List!15066) Unit!23857)

(assert (=> b!1446937 (= lt!498970 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!237 Lexer!2294 (rules!11512 other!32) (list!5985 (charsOf!1523 (h!20403 lt!498730))) (list!5985 lt!498966)))))

(assert (=> b!1446937 (= (list!5985 (charsOf!1523 (h!20403 lt!498730))) (originalCharacters!3499 (h!20403 lt!498730)))))

(declare-fun lt!498973 () Unit!23857)

(declare-fun Unit!23890 () Unit!23857)

(assert (=> b!1446937 (= lt!498973 Unit!23890)))

(declare-fun singletonSeq!1243 (C!8080) BalanceConc!10140)

(declare-fun apply!3878 (BalanceConc!10140 Int) C!8080)

(declare-fun head!2937 (List!15066) C!8080)

(assert (=> b!1446937 (= (list!5985 (singletonSeq!1243 (apply!3878 (charsOf!1523 (h!20403 (t!130351 lt!498730))) 0))) (Cons!15000 (head!2937 (originalCharacters!3499 (h!20403 (t!130351 lt!498730)))) Nil!15000))))

(declare-fun lt!498964 () Unit!23857)

(declare-fun Unit!23891 () Unit!23857)

(assert (=> b!1446937 (= lt!498964 Unit!23891)))

(assert (=> b!1446937 (= (list!5985 (singletonSeq!1243 (apply!3878 (charsOf!1523 (h!20403 (t!130351 lt!498730))) 0))) (Cons!15000 (head!2937 (list!5985 lt!498966)) Nil!15000))))

(declare-fun lt!498976 () Unit!23857)

(declare-fun Unit!23892 () Unit!23857)

(assert (=> b!1446937 (= lt!498976 Unit!23892)))

(declare-fun head!2938 (BalanceConc!10140) C!8080)

(assert (=> b!1446937 (= (list!5985 (singletonSeq!1243 (apply!3878 (charsOf!1523 (h!20403 (t!130351 lt!498730))) 0))) (Cons!15000 (head!2938 lt!498966) Nil!15000))))

(declare-fun lt!498957 () Unit!23857)

(declare-fun Unit!23893 () Unit!23857)

(assert (=> b!1446937 (= lt!498957 Unit!23893)))

(declare-fun isDefined!2318 (Option!2867) Bool)

(assert (=> b!1446937 (isDefined!2318 (maxPrefix!1189 Lexer!2294 (rules!11512 other!32) (originalCharacters!3499 (h!20403 lt!498730))))))

(declare-fun lt!498978 () Unit!23857)

(declare-fun Unit!23894 () Unit!23857)

(assert (=> b!1446937 (= lt!498978 Unit!23894)))

(assert (=> b!1446937 (isDefined!2318 (maxPrefix!1189 Lexer!2294 (rules!11512 other!32) (list!5985 (charsOf!1523 (h!20403 lt!498730)))))))

(declare-fun lt!498968 () Unit!23857)

(declare-fun Unit!23895 () Unit!23857)

(assert (=> b!1446937 (= lt!498968 Unit!23895)))

(declare-fun lt!498980 () Unit!23857)

(declare-fun Unit!23896 () Unit!23857)

(assert (=> b!1446937 (= lt!498980 Unit!23896)))

(declare-fun get!4592 (Option!2867) tuple2!14174)

(assert (=> b!1446937 (= (_1!7973 (get!4592 (maxPrefix!1189 Lexer!2294 (rules!11512 other!32) (list!5985 (charsOf!1523 (h!20403 lt!498730)))))) (h!20403 lt!498730))))

(declare-fun lt!498967 () Unit!23857)

(declare-fun Unit!23897 () Unit!23857)

(assert (=> b!1446937 (= lt!498967 Unit!23897)))

(assert (=> b!1446937 (isEmpty!9360 (_2!7973 (get!4592 (maxPrefix!1189 Lexer!2294 (rules!11512 other!32) (list!5985 (charsOf!1523 (h!20403 lt!498730)))))))))

(declare-fun lt!498961 () Unit!23857)

(declare-fun Unit!23898 () Unit!23857)

(assert (=> b!1446937 (= lt!498961 Unit!23898)))

(declare-fun matchR!1825 (Regex!3951 List!15066) Bool)

(assert (=> b!1446937 (matchR!1825 (regex!2637 (rule!4410 (h!20403 lt!498730))) (list!5985 (charsOf!1523 (h!20403 lt!498730))))))

(declare-fun lt!498981 () Unit!23857)

(declare-fun Unit!23899 () Unit!23857)

(assert (=> b!1446937 (= lt!498981 Unit!23899)))

(assert (=> b!1446937 (= (rule!4410 (h!20403 lt!498730)) (rule!4410 (h!20403 lt!498730)))))

(declare-fun lt!498965 () Unit!23857)

(declare-fun Unit!23900 () Unit!23857)

(assert (=> b!1446937 (= lt!498965 Unit!23900)))

(declare-fun lt!498959 () Unit!23857)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!35 (LexerInterface!2296 List!15069 Token!4936 Rule!5074 List!15066) Unit!23857)

(assert (=> b!1446937 (= lt!498959 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!35 Lexer!2294 (rules!11512 other!32) (h!20403 lt!498730) (rule!4410 (h!20403 lt!498730)) (list!5985 lt!498966)))))

(declare-fun b!1446938 () Bool)

(declare-fun isEmpty!9362 (BalanceConc!10140) Bool)

(assert (=> b!1446938 (= e!923037 (isEmpty!9362 (_2!7972 (lex!1052 Lexer!2294 (rules!11512 other!32) (print!1078 Lexer!2294 (seqFromList!1708 lt!498730))))))))

(assert (= (and d!419982 c!238470) b!1446936))

(assert (= (and d!419982 (not c!238470)) b!1446937))

(assert (= (and d!419982 res!655086) b!1446938))

(declare-fun m!1669507 () Bool)

(assert (=> d!419982 m!1669507))

(declare-fun m!1669509 () Bool)

(assert (=> d!419982 m!1669509))

(assert (=> d!419982 m!1669509))

(declare-fun m!1669511 () Bool)

(assert (=> d!419982 m!1669511))

(declare-fun m!1669513 () Bool)

(assert (=> d!419982 m!1669513))

(assert (=> d!419982 m!1669511))

(declare-fun m!1669515 () Bool)

(assert (=> d!419982 m!1669515))

(declare-fun m!1669517 () Bool)

(assert (=> b!1446937 m!1669517))

(declare-fun m!1669519 () Bool)

(assert (=> b!1446937 m!1669519))

(assert (=> b!1446937 m!1669099))

(assert (=> b!1446937 m!1669517))

(declare-fun m!1669521 () Bool)

(assert (=> b!1446937 m!1669521))

(declare-fun m!1669523 () Bool)

(assert (=> b!1446937 m!1669523))

(declare-fun m!1669525 () Bool)

(assert (=> b!1446937 m!1669525))

(assert (=> b!1446937 m!1669509))

(declare-fun m!1669527 () Bool)

(assert (=> b!1446937 m!1669527))

(declare-fun m!1669529 () Bool)

(assert (=> b!1446937 m!1669529))

(declare-fun m!1669531 () Bool)

(assert (=> b!1446937 m!1669531))

(assert (=> b!1446937 m!1669529))

(declare-fun m!1669533 () Bool)

(assert (=> b!1446937 m!1669533))

(assert (=> b!1446937 m!1669509))

(assert (=> b!1446937 m!1669511))

(assert (=> b!1446937 m!1669523))

(declare-fun m!1669535 () Bool)

(assert (=> b!1446937 m!1669535))

(declare-fun m!1669537 () Bool)

(assert (=> b!1446937 m!1669537))

(assert (=> b!1446937 m!1669517))

(declare-fun m!1669539 () Bool)

(assert (=> b!1446937 m!1669539))

(assert (=> b!1446937 m!1669099))

(assert (=> b!1446937 m!1669529))

(declare-fun m!1669541 () Bool)

(assert (=> b!1446937 m!1669541))

(declare-fun m!1669543 () Bool)

(assert (=> b!1446937 m!1669543))

(declare-fun m!1669545 () Bool)

(assert (=> b!1446937 m!1669545))

(assert (=> b!1446937 m!1669535))

(declare-fun m!1669547 () Bool)

(assert (=> b!1446937 m!1669547))

(assert (=> b!1446937 m!1669541))

(assert (=> b!1446937 m!1669547))

(declare-fun m!1669549 () Bool)

(assert (=> b!1446937 m!1669549))

(assert (=> b!1446937 m!1669099))

(declare-fun m!1669551 () Bool)

(assert (=> b!1446937 m!1669551))

(assert (=> b!1446937 m!1669097))

(assert (=> b!1446937 m!1669099))

(declare-fun m!1669553 () Bool)

(assert (=> b!1446937 m!1669553))

(assert (=> b!1446937 m!1669549))

(declare-fun m!1669555 () Bool)

(assert (=> b!1446937 m!1669555))

(declare-fun m!1669557 () Bool)

(assert (=> b!1446937 m!1669557))

(declare-fun m!1669559 () Bool)

(assert (=> b!1446937 m!1669559))

(declare-fun m!1669561 () Bool)

(assert (=> b!1446937 m!1669561))

(declare-fun m!1669563 () Bool)

(assert (=> b!1446937 m!1669563))

(declare-fun m!1669565 () Bool)

(assert (=> b!1446937 m!1669565))

(declare-fun m!1669567 () Bool)

(assert (=> b!1446937 m!1669567))

(assert (=> b!1446937 m!1669557))

(declare-fun m!1669569 () Bool)

(assert (=> b!1446937 m!1669569))

(declare-fun m!1669571 () Bool)

(assert (=> b!1446937 m!1669571))

(assert (=> b!1446937 m!1669537))

(declare-fun m!1669573 () Bool)

(assert (=> b!1446937 m!1669573))

(declare-fun m!1669575 () Bool)

(assert (=> b!1446937 m!1669575))

(assert (=> b!1446937 m!1669097))

(assert (=> b!1446937 m!1669569))

(declare-fun m!1669577 () Bool)

(assert (=> b!1446937 m!1669577))

(assert (=> b!1446937 m!1669561))

(declare-fun m!1669579 () Bool)

(assert (=> b!1446937 m!1669579))

(declare-fun m!1669581 () Bool)

(assert (=> b!1446937 m!1669581))

(assert (=> b!1446937 m!1669561))

(declare-fun m!1669583 () Bool)

(assert (=> b!1446937 m!1669583))

(assert (=> b!1446937 m!1669545))

(assert (=> b!1446937 m!1669517))

(assert (=> b!1446938 m!1669509))

(assert (=> b!1446938 m!1669509))

(assert (=> b!1446938 m!1669511))

(assert (=> b!1446938 m!1669511))

(assert (=> b!1446938 m!1669515))

(declare-fun m!1669585 () Bool)

(assert (=> b!1446938 m!1669585))

(assert (=> b!1446822 d!419982))

(declare-fun b!1446947 () Bool)

(declare-fun e!923043 () List!15066)

(assert (=> b!1446947 (= e!923043 lt!498733)))

(declare-fun d!420020 () Bool)

(declare-fun e!923042 () Bool)

(assert (=> d!420020 e!923042))

(declare-fun res!655091 () Bool)

(assert (=> d!420020 (=> (not res!655091) (not e!923042))))

(declare-fun lt!498985 () List!15066)

(declare-fun content!2223 (List!15066) (InoxSet C!8080))

(assert (=> d!420020 (= res!655091 (= (content!2223 lt!498985) ((_ map or) (content!2223 lt!498727) (content!2223 lt!498733))))))

(assert (=> d!420020 (= lt!498985 e!923043)))

(declare-fun c!238473 () Bool)

(assert (=> d!420020 (= c!238473 ((_ is Nil!15000) lt!498727))))

(assert (=> d!420020 (= (++!4042 lt!498727 lt!498733) lt!498985)))

(declare-fun b!1446950 () Bool)

(assert (=> b!1446950 (= e!923042 (or (not (= lt!498733 Nil!15000)) (= lt!498985 lt!498727)))))

(declare-fun b!1446948 () Bool)

(assert (=> b!1446948 (= e!923043 (Cons!15000 (h!20401 lt!498727) (++!4042 (t!130349 lt!498727) lt!498733)))))

(declare-fun b!1446949 () Bool)

(declare-fun res!655092 () Bool)

(assert (=> b!1446949 (=> (not res!655092) (not e!923042))))

(declare-fun size!12302 (List!15066) Int)

(assert (=> b!1446949 (= res!655092 (= (size!12302 lt!498985) (+ (size!12302 lt!498727) (size!12302 lt!498733))))))

(assert (= (and d!420020 c!238473) b!1446947))

(assert (= (and d!420020 (not c!238473)) b!1446948))

(assert (= (and d!420020 res!655091) b!1446949))

(assert (= (and b!1446949 res!655092) b!1446950))

(declare-fun m!1669587 () Bool)

(assert (=> d!420020 m!1669587))

(declare-fun m!1669589 () Bool)

(assert (=> d!420020 m!1669589))

(declare-fun m!1669591 () Bool)

(assert (=> d!420020 m!1669591))

(declare-fun m!1669593 () Bool)

(assert (=> b!1446948 m!1669593))

(declare-fun m!1669595 () Bool)

(assert (=> b!1446949 m!1669595))

(declare-fun m!1669597 () Bool)

(assert (=> b!1446949 m!1669597))

(declare-fun m!1669599 () Bool)

(assert (=> b!1446949 m!1669599))

(assert (=> b!1446822 d!420020))

(declare-fun d!420022 () Bool)

(declare-fun c!238474 () Bool)

(assert (=> d!420022 (= c!238474 ((_ is Cons!15002) Nil!15002))))

(declare-fun e!923044 () List!15066)

(assert (=> d!420022 (= (printList!715 Lexer!2294 Nil!15002) e!923044)))

(declare-fun b!1446951 () Bool)

(assert (=> b!1446951 (= e!923044 (++!4042 (list!5985 (charsOf!1523 (h!20403 Nil!15002))) (printList!715 Lexer!2294 (t!130351 Nil!15002))))))

(declare-fun b!1446952 () Bool)

(assert (=> b!1446952 (= e!923044 Nil!15000)))

(assert (= (and d!420022 c!238474) b!1446951))

(assert (= (and d!420022 (not c!238474)) b!1446952))

(declare-fun m!1669601 () Bool)

(assert (=> b!1446951 m!1669601))

(assert (=> b!1446951 m!1669601))

(declare-fun m!1669603 () Bool)

(assert (=> b!1446951 m!1669603))

(declare-fun m!1669605 () Bool)

(assert (=> b!1446951 m!1669605))

(assert (=> b!1446951 m!1669603))

(assert (=> b!1446951 m!1669605))

(declare-fun m!1669607 () Bool)

(assert (=> b!1446951 m!1669607))

(assert (=> b!1446822 d!420022))

(declare-fun d!420024 () Bool)

(declare-fun e!923046 () Bool)

(assert (=> d!420024 e!923046))

(declare-fun res!655093 () Bool)

(assert (=> d!420024 (=> (not res!655093) (not e!923046))))

(assert (=> d!420024 (= res!655093 (= (list!5984 (_1!7972 (lex!1052 Lexer!2294 (rules!11512 thiss!10022) (print!1078 Lexer!2294 (seqFromList!1708 lt!498732))))) lt!498732))))

(declare-fun lt!499000 () Unit!23857)

(declare-fun e!923045 () Unit!23857)

(assert (=> d!420024 (= lt!499000 e!923045)))

(declare-fun c!238475 () Bool)

(assert (=> d!420024 (= c!238475 (or ((_ is Nil!15002) lt!498732) ((_ is Nil!15002) (t!130351 lt!498732))))))

(assert (=> d!420024 (not (isEmpty!9361 (rules!11512 thiss!10022)))))

(assert (=> d!420024 (= (theoremInvertabilityWhenTokenListSeparable!75 Lexer!2294 (rules!11512 thiss!10022) lt!498732) lt!499000)))

(declare-fun b!1446953 () Bool)

(declare-fun Unit!23901 () Unit!23857)

(assert (=> b!1446953 (= e!923045 Unit!23901)))

(declare-fun b!1446954 () Bool)

(declare-fun Unit!23902 () Unit!23857)

(assert (=> b!1446954 (= e!923045 Unit!23902)))

(declare-fun lt!499008 () BalanceConc!10140)

(assert (=> b!1446954 (= lt!499008 (print!1078 Lexer!2294 (seqFromList!1708 lt!498732)))))

(declare-fun lt!498995 () BalanceConc!10140)

(assert (=> b!1446954 (= lt!498995 (print!1078 Lexer!2294 (seqFromList!1708 (t!130351 lt!498732))))))

(declare-fun lt!498987 () tuple2!14172)

(assert (=> b!1446954 (= lt!498987 (lex!1052 Lexer!2294 (rules!11512 thiss!10022) lt!498995))))

(declare-fun lt!499003 () List!15066)

(assert (=> b!1446954 (= lt!499003 (list!5985 (charsOf!1523 (h!20403 lt!498732))))))

(declare-fun lt!498989 () List!15066)

(assert (=> b!1446954 (= lt!498989 (list!5985 lt!498995))))

(declare-fun lt!498991 () Unit!23857)

(assert (=> b!1446954 (= lt!498991 (lemmaConcatTwoListThenFirstIsPrefix!764 lt!499003 lt!498989))))

(assert (=> b!1446954 (isPrefix!1199 lt!499003 (++!4042 lt!499003 lt!498989))))

(declare-fun lt!499011 () Unit!23857)

(assert (=> b!1446954 (= lt!499011 lt!498991)))

(declare-fun lt!499004 () Unit!23857)

(assert (=> b!1446954 (= lt!499004 (theoremInvertabilityWhenTokenListSeparable!75 Lexer!2294 (rules!11512 thiss!10022) (t!130351 lt!498732)))))

(declare-fun lt!498998 () Unit!23857)

(assert (=> b!1446954 (= lt!498998 (seqFromListBHdTlConstructive!93 (h!20403 (t!130351 lt!498732)) (t!130351 (t!130351 lt!498732)) (_1!7972 lt!498987)))))

(assert (=> b!1446954 (= (list!5984 (_1!7972 lt!498987)) (list!5984 (prepend!419 (seqFromList!1708 (t!130351 (t!130351 lt!498732))) (h!20403 (t!130351 lt!498732)))))))

(declare-fun lt!499006 () Unit!23857)

(assert (=> b!1446954 (= lt!499006 lt!498998)))

(declare-fun lt!499001 () Option!2867)

(assert (=> b!1446954 (= lt!499001 (maxPrefix!1189 Lexer!2294 (rules!11512 thiss!10022) (list!5985 lt!499008)))))

(assert (=> b!1446954 (= (print!1078 Lexer!2294 (singletonSeq!1242 (h!20403 lt!498732))) (printTailRec!687 Lexer!2294 (singletonSeq!1242 (h!20403 lt!498732)) 0 (BalanceConc!10141 Empty!5100)))))

(declare-fun lt!498992 () Unit!23857)

(declare-fun Unit!23903 () Unit!23857)

(assert (=> b!1446954 (= lt!498992 Unit!23903)))

(declare-fun lt!498999 () Unit!23857)

(assert (=> b!1446954 (= lt!498999 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!237 Lexer!2294 (rules!11512 thiss!10022) (list!5985 (charsOf!1523 (h!20403 lt!498732))) (list!5985 lt!498995)))))

(assert (=> b!1446954 (= (list!5985 (charsOf!1523 (h!20403 lt!498732))) (originalCharacters!3499 (h!20403 lt!498732)))))

(declare-fun lt!499002 () Unit!23857)

(declare-fun Unit!23904 () Unit!23857)

(assert (=> b!1446954 (= lt!499002 Unit!23904)))

(assert (=> b!1446954 (= (list!5985 (singletonSeq!1243 (apply!3878 (charsOf!1523 (h!20403 (t!130351 lt!498732))) 0))) (Cons!15000 (head!2937 (originalCharacters!3499 (h!20403 (t!130351 lt!498732)))) Nil!15000))))

(declare-fun lt!498993 () Unit!23857)

(declare-fun Unit!23905 () Unit!23857)

(assert (=> b!1446954 (= lt!498993 Unit!23905)))

(assert (=> b!1446954 (= (list!5985 (singletonSeq!1243 (apply!3878 (charsOf!1523 (h!20403 (t!130351 lt!498732))) 0))) (Cons!15000 (head!2937 (list!5985 lt!498995)) Nil!15000))))

(declare-fun lt!499005 () Unit!23857)

(declare-fun Unit!23906 () Unit!23857)

(assert (=> b!1446954 (= lt!499005 Unit!23906)))

(assert (=> b!1446954 (= (list!5985 (singletonSeq!1243 (apply!3878 (charsOf!1523 (h!20403 (t!130351 lt!498732))) 0))) (Cons!15000 (head!2938 lt!498995) Nil!15000))))

(declare-fun lt!498986 () Unit!23857)

(declare-fun Unit!23907 () Unit!23857)

(assert (=> b!1446954 (= lt!498986 Unit!23907)))

(assert (=> b!1446954 (isDefined!2318 (maxPrefix!1189 Lexer!2294 (rules!11512 thiss!10022) (originalCharacters!3499 (h!20403 lt!498732))))))

(declare-fun lt!499007 () Unit!23857)

(declare-fun Unit!23908 () Unit!23857)

(assert (=> b!1446954 (= lt!499007 Unit!23908)))

(assert (=> b!1446954 (isDefined!2318 (maxPrefix!1189 Lexer!2294 (rules!11512 thiss!10022) (list!5985 (charsOf!1523 (h!20403 lt!498732)))))))

(declare-fun lt!498997 () Unit!23857)

(declare-fun Unit!23909 () Unit!23857)

(assert (=> b!1446954 (= lt!498997 Unit!23909)))

(declare-fun lt!499009 () Unit!23857)

(declare-fun Unit!23910 () Unit!23857)

(assert (=> b!1446954 (= lt!499009 Unit!23910)))

(assert (=> b!1446954 (= (_1!7973 (get!4592 (maxPrefix!1189 Lexer!2294 (rules!11512 thiss!10022) (list!5985 (charsOf!1523 (h!20403 lt!498732)))))) (h!20403 lt!498732))))

(declare-fun lt!498996 () Unit!23857)

(declare-fun Unit!23911 () Unit!23857)

(assert (=> b!1446954 (= lt!498996 Unit!23911)))

(assert (=> b!1446954 (isEmpty!9360 (_2!7973 (get!4592 (maxPrefix!1189 Lexer!2294 (rules!11512 thiss!10022) (list!5985 (charsOf!1523 (h!20403 lt!498732)))))))))

(declare-fun lt!498990 () Unit!23857)

(declare-fun Unit!23912 () Unit!23857)

(assert (=> b!1446954 (= lt!498990 Unit!23912)))

(assert (=> b!1446954 (matchR!1825 (regex!2637 (rule!4410 (h!20403 lt!498732))) (list!5985 (charsOf!1523 (h!20403 lt!498732))))))

(declare-fun lt!499010 () Unit!23857)

(declare-fun Unit!23913 () Unit!23857)

(assert (=> b!1446954 (= lt!499010 Unit!23913)))

(assert (=> b!1446954 (= (rule!4410 (h!20403 lt!498732)) (rule!4410 (h!20403 lt!498732)))))

(declare-fun lt!498994 () Unit!23857)

(declare-fun Unit!23914 () Unit!23857)

(assert (=> b!1446954 (= lt!498994 Unit!23914)))

(declare-fun lt!498988 () Unit!23857)

(assert (=> b!1446954 (= lt!498988 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!35 Lexer!2294 (rules!11512 thiss!10022) (h!20403 lt!498732) (rule!4410 (h!20403 lt!498732)) (list!5985 lt!498995)))))

(declare-fun b!1446955 () Bool)

(assert (=> b!1446955 (= e!923046 (isEmpty!9362 (_2!7972 (lex!1052 Lexer!2294 (rules!11512 thiss!10022) (print!1078 Lexer!2294 (seqFromList!1708 lt!498732))))))))

(assert (= (and d!420024 c!238475) b!1446953))

(assert (= (and d!420024 (not c!238475)) b!1446954))

(assert (= (and d!420024 res!655093) b!1446955))

(declare-fun m!1669609 () Bool)

(assert (=> d!420024 m!1669609))

(declare-fun m!1669611 () Bool)

(assert (=> d!420024 m!1669611))

(assert (=> d!420024 m!1669611))

(declare-fun m!1669613 () Bool)

(assert (=> d!420024 m!1669613))

(declare-fun m!1669615 () Bool)

(assert (=> d!420024 m!1669615))

(assert (=> d!420024 m!1669613))

(declare-fun m!1669617 () Bool)

(assert (=> d!420024 m!1669617))

(declare-fun m!1669619 () Bool)

(assert (=> b!1446954 m!1669619))

(declare-fun m!1669621 () Bool)

(assert (=> b!1446954 m!1669621))

(declare-fun m!1669623 () Bool)

(assert (=> b!1446954 m!1669623))

(assert (=> b!1446954 m!1669619))

(declare-fun m!1669625 () Bool)

(assert (=> b!1446954 m!1669625))

(declare-fun m!1669627 () Bool)

(assert (=> b!1446954 m!1669627))

(declare-fun m!1669629 () Bool)

(assert (=> b!1446954 m!1669629))

(assert (=> b!1446954 m!1669611))

(declare-fun m!1669631 () Bool)

(assert (=> b!1446954 m!1669631))

(declare-fun m!1669633 () Bool)

(assert (=> b!1446954 m!1669633))

(declare-fun m!1669635 () Bool)

(assert (=> b!1446954 m!1669635))

(assert (=> b!1446954 m!1669633))

(declare-fun m!1669637 () Bool)

(assert (=> b!1446954 m!1669637))

(assert (=> b!1446954 m!1669611))

(assert (=> b!1446954 m!1669613))

(assert (=> b!1446954 m!1669627))

(declare-fun m!1669639 () Bool)

(assert (=> b!1446954 m!1669639))

(declare-fun m!1669641 () Bool)

(assert (=> b!1446954 m!1669641))

(assert (=> b!1446954 m!1669619))

(declare-fun m!1669643 () Bool)

(assert (=> b!1446954 m!1669643))

(assert (=> b!1446954 m!1669623))

(assert (=> b!1446954 m!1669633))

(declare-fun m!1669645 () Bool)

(assert (=> b!1446954 m!1669645))

(declare-fun m!1669647 () Bool)

(assert (=> b!1446954 m!1669647))

(declare-fun m!1669649 () Bool)

(assert (=> b!1446954 m!1669649))

(assert (=> b!1446954 m!1669639))

(declare-fun m!1669651 () Bool)

(assert (=> b!1446954 m!1669651))

(assert (=> b!1446954 m!1669645))

(assert (=> b!1446954 m!1669651))

(declare-fun m!1669653 () Bool)

(assert (=> b!1446954 m!1669653))

(assert (=> b!1446954 m!1669623))

(declare-fun m!1669655 () Bool)

(assert (=> b!1446954 m!1669655))

(declare-fun m!1669657 () Bool)

(assert (=> b!1446954 m!1669657))

(assert (=> b!1446954 m!1669623))

(declare-fun m!1669659 () Bool)

(assert (=> b!1446954 m!1669659))

(assert (=> b!1446954 m!1669653))

(declare-fun m!1669661 () Bool)

(assert (=> b!1446954 m!1669661))

(declare-fun m!1669663 () Bool)

(assert (=> b!1446954 m!1669663))

(declare-fun m!1669665 () Bool)

(assert (=> b!1446954 m!1669665))

(declare-fun m!1669667 () Bool)

(assert (=> b!1446954 m!1669667))

(declare-fun m!1669669 () Bool)

(assert (=> b!1446954 m!1669669))

(declare-fun m!1669671 () Bool)

(assert (=> b!1446954 m!1669671))

(declare-fun m!1669673 () Bool)

(assert (=> b!1446954 m!1669673))

(assert (=> b!1446954 m!1669663))

(declare-fun m!1669675 () Bool)

(assert (=> b!1446954 m!1669675))

(declare-fun m!1669677 () Bool)

(assert (=> b!1446954 m!1669677))

(assert (=> b!1446954 m!1669641))

(declare-fun m!1669679 () Bool)

(assert (=> b!1446954 m!1669679))

(declare-fun m!1669681 () Bool)

(assert (=> b!1446954 m!1669681))

(assert (=> b!1446954 m!1669657))

(assert (=> b!1446954 m!1669675))

(declare-fun m!1669683 () Bool)

(assert (=> b!1446954 m!1669683))

(assert (=> b!1446954 m!1669667))

(declare-fun m!1669685 () Bool)

(assert (=> b!1446954 m!1669685))

(declare-fun m!1669687 () Bool)

(assert (=> b!1446954 m!1669687))

(assert (=> b!1446954 m!1669667))

(declare-fun m!1669689 () Bool)

(assert (=> b!1446954 m!1669689))

(assert (=> b!1446954 m!1669649))

(assert (=> b!1446954 m!1669619))

(assert (=> b!1446955 m!1669611))

(assert (=> b!1446955 m!1669611))

(assert (=> b!1446955 m!1669613))

(assert (=> b!1446955 m!1669613))

(assert (=> b!1446955 m!1669617))

(declare-fun m!1669691 () Bool)

(assert (=> b!1446955 m!1669691))

(assert (=> b!1446822 d!420024))

(declare-fun d!420026 () Bool)

(declare-fun e!923047 () Bool)

(assert (=> d!420026 e!923047))

(declare-fun res!655094 () Bool)

(assert (=> d!420026 (=> (not res!655094) (not e!923047))))

(declare-fun lt!499012 () BalanceConc!10140)

(assert (=> d!420026 (= res!655094 (= (list!5984 (_1!7972 (lex!1052 Lexer!2294 (rules!11512 other!32) lt!499012))) (list!5984 (tokens!2020 other!32))))))

(assert (=> d!420026 (= lt!499012 (print!1078 Lexer!2294 (tokens!2020 other!32)))))

(declare-fun lt!499013 () Unit!23857)

(assert (=> d!420026 (= lt!499013 (theoremInvertabilityWhenTokenListSeparable!75 Lexer!2294 (rules!11512 other!32) (list!5984 (tokens!2020 other!32))))))

(assert (=> d!420026 (= (print!1079 other!32) lt!499012)))

(declare-fun b!1446956 () Bool)

(assert (=> b!1446956 (= e!923047 (isEmpty!9360 (list!5985 (_2!7972 (lex!1052 Lexer!2294 (rules!11512 other!32) lt!499012)))))))

(assert (= (and d!420026 res!655094) b!1446956))

(assert (=> d!420026 m!1669045))

(declare-fun m!1669693 () Bool)

(assert (=> d!420026 m!1669693))

(declare-fun m!1669695 () Bool)

(assert (=> d!420026 m!1669695))

(assert (=> d!420026 m!1669073))

(assert (=> d!420026 m!1669045))

(declare-fun m!1669697 () Bool)

(assert (=> d!420026 m!1669697))

(assert (=> b!1446956 m!1669693))

(declare-fun m!1669699 () Bool)

(assert (=> b!1446956 m!1669699))

(assert (=> b!1446956 m!1669699))

(declare-fun m!1669701 () Bool)

(assert (=> b!1446956 m!1669701))

(assert (=> b!1446822 d!420026))

(declare-fun d!420028 () Bool)

(declare-fun res!655111 () Bool)

(declare-fun e!923057 () Bool)

(assert (=> d!420028 (=> (not res!655111) (not e!923057))))

(assert (=> d!420028 (= res!655111 (not (isEmpty!9361 (rules!11512 thiss!10022))))))

(assert (=> d!420028 (= (inv!19980 thiss!10022) e!923057)))

(declare-fun b!1446977 () Bool)

(declare-fun res!655112 () Bool)

(assert (=> b!1446977 (=> (not res!655112) (not e!923057))))

(declare-fun rulesInvariant!2134 (LexerInterface!2296 List!15069) Bool)

(assert (=> b!1446977 (= res!655112 (rulesInvariant!2134 Lexer!2294 (rules!11512 thiss!10022)))))

(declare-fun b!1446978 () Bool)

(declare-fun res!655113 () Bool)

(assert (=> b!1446978 (=> (not res!655113) (not e!923057))))

(declare-fun rulesProduceEachTokenIndividually!852 (LexerInterface!2296 List!15069 BalanceConc!10142) Bool)

(assert (=> b!1446978 (= res!655113 (rulesProduceEachTokenIndividually!852 Lexer!2294 (rules!11512 thiss!10022) (tokens!2020 thiss!10022)))))

(declare-fun b!1446979 () Bool)

(declare-fun separableTokens!236 (LexerInterface!2296 BalanceConc!10142 List!15069) Bool)

(assert (=> b!1446979 (= e!923057 (separableTokens!236 Lexer!2294 (tokens!2020 thiss!10022) (rules!11512 thiss!10022)))))

(assert (= (and d!420028 res!655111) b!1446977))

(assert (= (and b!1446977 res!655112) b!1446978))

(assert (= (and b!1446978 res!655113) b!1446979))

(assert (=> d!420028 m!1669615))

(declare-fun m!1669741 () Bool)

(assert (=> b!1446977 m!1669741))

(declare-fun m!1669743 () Bool)

(assert (=> b!1446978 m!1669743))

(declare-fun m!1669745 () Bool)

(assert (=> b!1446979 m!1669745))

(assert (=> start!134368 d!420028))

(declare-fun d!420042 () Bool)

(declare-fun res!655114 () Bool)

(declare-fun e!923058 () Bool)

(assert (=> d!420042 (=> (not res!655114) (not e!923058))))

(assert (=> d!420042 (= res!655114 (not (isEmpty!9361 (rules!11512 other!32))))))

(assert (=> d!420042 (= (inv!19980 other!32) e!923058)))

(declare-fun b!1446980 () Bool)

(declare-fun res!655115 () Bool)

(assert (=> b!1446980 (=> (not res!655115) (not e!923058))))

(assert (=> b!1446980 (= res!655115 (rulesInvariant!2134 Lexer!2294 (rules!11512 other!32)))))

(declare-fun b!1446981 () Bool)

(declare-fun res!655116 () Bool)

(assert (=> b!1446981 (=> (not res!655116) (not e!923058))))

(assert (=> b!1446981 (= res!655116 (rulesProduceEachTokenIndividually!852 Lexer!2294 (rules!11512 other!32) (tokens!2020 other!32)))))

(declare-fun b!1446982 () Bool)

(assert (=> b!1446982 (= e!923058 (separableTokens!236 Lexer!2294 (tokens!2020 other!32) (rules!11512 other!32)))))

(assert (= (and d!420042 res!655114) b!1446980))

(assert (= (and b!1446980 res!655115) b!1446981))

(assert (= (and b!1446981 res!655116) b!1446982))

(assert (=> d!420042 m!1669513))

(declare-fun m!1669747 () Bool)

(assert (=> b!1446980 m!1669747))

(declare-fun m!1669749 () Bool)

(assert (=> b!1446981 m!1669749))

(declare-fun m!1669751 () Bool)

(assert (=> b!1446982 m!1669751))

(assert (=> start!134368 d!420042))

(declare-fun d!420044 () Bool)

(assert (=> d!420044 (= (isEmpty!9353 lt!498732) ((_ is Nil!15002) lt!498732))))

(assert (=> b!1446811 d!420044))

(declare-fun d!420046 () Bool)

(declare-fun list!5988 (Conc!5101) List!15068)

(assert (=> d!420046 (= (list!5984 (tokens!2020 thiss!10022)) (list!5988 (c!238436 (tokens!2020 thiss!10022))))))

(declare-fun bs!342285 () Bool)

(assert (= bs!342285 d!420046))

(declare-fun m!1669753 () Bool)

(assert (=> bs!342285 m!1669753))

(assert (=> b!1446811 d!420046))

(declare-fun d!420048 () Bool)

(declare-fun c!238480 () Bool)

(assert (=> d!420048 (= c!238480 ((_ is Node!5101) (c!238436 (tokens!2020 thiss!10022))))))

(declare-fun e!923063 () Bool)

(assert (=> d!420048 (= (inv!19979 (c!238436 (tokens!2020 thiss!10022))) e!923063)))

(declare-fun b!1446989 () Bool)

(declare-fun inv!19984 (Conc!5101) Bool)

(assert (=> b!1446989 (= e!923063 (inv!19984 (c!238436 (tokens!2020 thiss!10022))))))

(declare-fun b!1446990 () Bool)

(declare-fun e!923064 () Bool)

(assert (=> b!1446990 (= e!923063 e!923064)))

(declare-fun res!655119 () Bool)

(assert (=> b!1446990 (= res!655119 (not ((_ is Leaf!7621) (c!238436 (tokens!2020 thiss!10022)))))))

(assert (=> b!1446990 (=> res!655119 e!923064)))

(declare-fun b!1446991 () Bool)

(declare-fun inv!19985 (Conc!5101) Bool)

(assert (=> b!1446991 (= e!923064 (inv!19985 (c!238436 (tokens!2020 thiss!10022))))))

(assert (= (and d!420048 c!238480) b!1446989))

(assert (= (and d!420048 (not c!238480)) b!1446990))

(assert (= (and b!1446990 (not res!655119)) b!1446991))

(declare-fun m!1669755 () Bool)

(assert (=> b!1446989 m!1669755))

(declare-fun m!1669757 () Bool)

(assert (=> b!1446991 m!1669757))

(assert (=> b!1446810 d!420048))

(declare-fun d!420050 () Bool)

(declare-fun lt!499020 () Bool)

(assert (=> d!420050 (= lt!499020 (isEmpty!9353 (list!5984 (tokens!2020 other!32))))))

(declare-fun isEmpty!9363 (Conc!5101) Bool)

(assert (=> d!420050 (= lt!499020 (isEmpty!9363 (c!238436 (tokens!2020 other!32))))))

(assert (=> d!420050 (= (isEmpty!9354 (tokens!2020 other!32)) lt!499020)))

(declare-fun bs!342286 () Bool)

(assert (= bs!342286 d!420050))

(assert (=> bs!342286 m!1669045))

(assert (=> bs!342286 m!1669045))

(declare-fun m!1669759 () Bool)

(assert (=> bs!342286 m!1669759))

(declare-fun m!1669761 () Bool)

(assert (=> bs!342286 m!1669761))

(assert (=> b!1446820 d!420050))

(declare-fun d!420052 () Bool)

(declare-fun e!923100 () Bool)

(assert (=> d!420052 e!923100))

(declare-fun res!655138 () Bool)

(assert (=> d!420052 (=> (not res!655138) (not e!923100))))

(assert (=> d!420052 (= res!655138 (rulesInvariant!2134 Lexer!2294 (rules!11512 thiss!10022)))))

(declare-fun Unit!23917 () Unit!23857)

(assert (=> d!420052 (= (lemmaInvariant!333 thiss!10022) Unit!23917)))

(declare-fun b!1447045 () Bool)

(declare-fun res!655139 () Bool)

(assert (=> b!1447045 (=> (not res!655139) (not e!923100))))

(assert (=> b!1447045 (= res!655139 (rulesProduceEachTokenIndividually!852 Lexer!2294 (rules!11512 thiss!10022) (tokens!2020 thiss!10022)))))

(declare-fun b!1447046 () Bool)

(assert (=> b!1447046 (= e!923100 (separableTokens!236 Lexer!2294 (tokens!2020 thiss!10022) (rules!11512 thiss!10022)))))

(assert (= (and d!420052 res!655138) b!1447045))

(assert (= (and b!1447045 res!655139) b!1447046))

(assert (=> d!420052 m!1669741))

(assert (=> b!1447045 m!1669743))

(assert (=> b!1447046 m!1669745))

(assert (=> b!1446820 d!420052))

(declare-fun d!420062 () Bool)

(declare-fun e!923101 () Bool)

(assert (=> d!420062 e!923101))

(declare-fun res!655140 () Bool)

(assert (=> d!420062 (=> (not res!655140) (not e!923101))))

(assert (=> d!420062 (= res!655140 (rulesInvariant!2134 Lexer!2294 (rules!11512 other!32)))))

(declare-fun Unit!23918 () Unit!23857)

(assert (=> d!420062 (= (lemmaInvariant!333 other!32) Unit!23918)))

(declare-fun b!1447047 () Bool)

(declare-fun res!655141 () Bool)

(assert (=> b!1447047 (=> (not res!655141) (not e!923101))))

(assert (=> b!1447047 (= res!655141 (rulesProduceEachTokenIndividually!852 Lexer!2294 (rules!11512 other!32) (tokens!2020 other!32)))))

(declare-fun b!1447048 () Bool)

(assert (=> b!1447048 (= e!923101 (separableTokens!236 Lexer!2294 (tokens!2020 other!32) (rules!11512 other!32)))))

(assert (= (and d!420062 res!655140) b!1447047))

(assert (= (and b!1447047 res!655141) b!1447048))

(assert (=> d!420062 m!1669747))

(assert (=> b!1447047 m!1669749))

(assert (=> b!1447048 m!1669751))

(assert (=> b!1446820 d!420062))

(declare-fun d!420064 () Bool)

(declare-fun lt!499022 () Bool)

(assert (=> d!420064 (= lt!499022 (isEmpty!9353 (list!5984 (tokens!2020 thiss!10022))))))

(assert (=> d!420064 (= lt!499022 (isEmpty!9363 (c!238436 (tokens!2020 thiss!10022))))))

(assert (=> d!420064 (= (isEmpty!9354 (tokens!2020 thiss!10022)) lt!499022)))

(declare-fun bs!342289 () Bool)

(assert (= bs!342289 d!420064))

(assert (=> bs!342289 m!1669055))

(assert (=> bs!342289 m!1669055))

(declare-fun m!1669801 () Bool)

(assert (=> bs!342289 m!1669801))

(declare-fun m!1669803 () Bool)

(assert (=> bs!342289 m!1669803))

(assert (=> b!1446819 d!420064))

(declare-fun d!420066 () Bool)

(assert (=> d!420066 (= (get!4590 lt!498728) (v!22414 lt!498728))))

(assert (=> b!1446818 d!420066))

(declare-fun d!420068 () Bool)

(declare-fun isBalanced!1522 (Conc!5101) Bool)

(assert (=> d!420068 (= (inv!19981 (tokens!2020 other!32)) (isBalanced!1522 (c!238436 (tokens!2020 other!32))))))

(declare-fun bs!342290 () Bool)

(assert (= bs!342290 d!420068))

(declare-fun m!1669805 () Bool)

(assert (=> bs!342290 m!1669805))

(assert (=> b!1446817 d!420068))

(declare-fun b!1447049 () Bool)

(declare-fun e!923103 () List!15066)

(assert (=> b!1447049 (= e!923103 (printList!715 Lexer!2294 (t!130351 lt!498730)))))

(declare-fun d!420070 () Bool)

(declare-fun e!923102 () Bool)

(assert (=> d!420070 e!923102))

(declare-fun res!655142 () Bool)

(assert (=> d!420070 (=> (not res!655142) (not e!923102))))

(declare-fun lt!499023 () List!15066)

(assert (=> d!420070 (= res!655142 (= (content!2223 lt!499023) ((_ map or) (content!2223 (list!5985 (charsOf!1523 (h!20403 lt!498730)))) (content!2223 (printList!715 Lexer!2294 (t!130351 lt!498730))))))))

(assert (=> d!420070 (= lt!499023 e!923103)))

(declare-fun c!238482 () Bool)

(assert (=> d!420070 (= c!238482 ((_ is Nil!15000) (list!5985 (charsOf!1523 (h!20403 lt!498730)))))))

(assert (=> d!420070 (= (++!4042 (list!5985 (charsOf!1523 (h!20403 lt!498730))) (printList!715 Lexer!2294 (t!130351 lt!498730))) lt!499023)))

(declare-fun b!1447052 () Bool)

(assert (=> b!1447052 (= e!923102 (or (not (= (printList!715 Lexer!2294 (t!130351 lt!498730)) Nil!15000)) (= lt!499023 (list!5985 (charsOf!1523 (h!20403 lt!498730))))))))

(declare-fun b!1447050 () Bool)

(assert (=> b!1447050 (= e!923103 (Cons!15000 (h!20401 (list!5985 (charsOf!1523 (h!20403 lt!498730)))) (++!4042 (t!130349 (list!5985 (charsOf!1523 (h!20403 lt!498730)))) (printList!715 Lexer!2294 (t!130351 lt!498730)))))))

(declare-fun b!1447051 () Bool)

(declare-fun res!655143 () Bool)

(assert (=> b!1447051 (=> (not res!655143) (not e!923102))))

(assert (=> b!1447051 (= res!655143 (= (size!12302 lt!499023) (+ (size!12302 (list!5985 (charsOf!1523 (h!20403 lt!498730)))) (size!12302 (printList!715 Lexer!2294 (t!130351 lt!498730))))))))

(assert (= (and d!420070 c!238482) b!1447049))

(assert (= (and d!420070 (not c!238482)) b!1447050))

(assert (= (and d!420070 res!655142) b!1447051))

(assert (= (and b!1447051 res!655143) b!1447052))

(declare-fun m!1669807 () Bool)

(assert (=> d!420070 m!1669807))

(assert (=> d!420070 m!1669099))

(declare-fun m!1669809 () Bool)

(assert (=> d!420070 m!1669809))

(assert (=> d!420070 m!1669101))

(declare-fun m!1669811 () Bool)

(assert (=> d!420070 m!1669811))

(assert (=> b!1447050 m!1669101))

(declare-fun m!1669813 () Bool)

(assert (=> b!1447050 m!1669813))

(declare-fun m!1669815 () Bool)

(assert (=> b!1447051 m!1669815))

(assert (=> b!1447051 m!1669099))

(declare-fun m!1669817 () Bool)

(assert (=> b!1447051 m!1669817))

(assert (=> b!1447051 m!1669101))

(declare-fun m!1669819 () Bool)

(assert (=> b!1447051 m!1669819))

(assert (=> b!1446816 d!420070))

(declare-fun d!420072 () Bool)

(declare-fun list!5989 (Conc!5100) List!15066)

(assert (=> d!420072 (= (list!5985 (charsOf!1523 (h!20403 lt!498730))) (list!5989 (c!238434 (charsOf!1523 (h!20403 lt!498730)))))))

(declare-fun bs!342291 () Bool)

(assert (= bs!342291 d!420072))

(declare-fun m!1669821 () Bool)

(assert (=> bs!342291 m!1669821))

(assert (=> b!1446816 d!420072))

(declare-fun d!420074 () Bool)

(declare-fun lt!499026 () BalanceConc!10140)

(assert (=> d!420074 (= (list!5985 lt!499026) (originalCharacters!3499 (h!20403 lt!498730)))))

(declare-fun dynLambda!6849 (Int TokenValue!2727) BalanceConc!10140)

(assert (=> d!420074 (= lt!499026 (dynLambda!6849 (toChars!3803 (transformation!2637 (rule!4410 (h!20403 lt!498730)))) (value!84802 (h!20403 lt!498730))))))

(assert (=> d!420074 (= (charsOf!1523 (h!20403 lt!498730)) lt!499026)))

(declare-fun b_lambda!45177 () Bool)

(assert (=> (not b_lambda!45177) (not d!420074)))

(declare-fun bs!342292 () Bool)

(assert (= bs!342292 d!420074))

(declare-fun m!1669823 () Bool)

(assert (=> bs!342292 m!1669823))

(declare-fun m!1669825 () Bool)

(assert (=> bs!342292 m!1669825))

(assert (=> b!1446816 d!420074))

(declare-fun d!420076 () Bool)

(declare-fun c!238483 () Bool)

(assert (=> d!420076 (= c!238483 ((_ is Cons!15002) (t!130351 lt!498730)))))

(declare-fun e!923104 () List!15066)

(assert (=> d!420076 (= (printList!715 Lexer!2294 (t!130351 lt!498730)) e!923104)))

(declare-fun b!1447053 () Bool)

(assert (=> b!1447053 (= e!923104 (++!4042 (list!5985 (charsOf!1523 (h!20403 (t!130351 lt!498730)))) (printList!715 Lexer!2294 (t!130351 (t!130351 lt!498730)))))))

(declare-fun b!1447054 () Bool)

(assert (=> b!1447054 (= e!923104 Nil!15000)))

(assert (= (and d!420076 c!238483) b!1447053))

(assert (= (and d!420076 (not c!238483)) b!1447054))

(assert (=> b!1447053 m!1669545))

(assert (=> b!1447053 m!1669545))

(declare-fun m!1669827 () Bool)

(assert (=> b!1447053 m!1669827))

(declare-fun m!1669829 () Bool)

(assert (=> b!1447053 m!1669829))

(assert (=> b!1447053 m!1669827))

(assert (=> b!1447053 m!1669829))

(declare-fun m!1669831 () Bool)

(assert (=> b!1447053 m!1669831))

(assert (=> b!1446816 d!420076))

(declare-fun d!420078 () Bool)

(declare-fun e!923106 () Bool)

(assert (=> d!420078 e!923106))

(declare-fun res!655144 () Bool)

(assert (=> d!420078 (=> (not res!655144) (not e!923106))))

(declare-fun lt!499027 () List!15068)

(assert (=> d!420078 (= res!655144 (= (content!2221 lt!499027) ((_ map or) (content!2221 lt!498729) (content!2221 lt!498730))))))

(declare-fun e!923105 () List!15068)

(assert (=> d!420078 (= lt!499027 e!923105)))

(declare-fun c!238484 () Bool)

(assert (=> d!420078 (= c!238484 ((_ is Nil!15002) lt!498729))))

(assert (=> d!420078 (= (++!4041 lt!498729 lt!498730) lt!499027)))

(declare-fun b!1447058 () Bool)

(assert (=> b!1447058 (= e!923106 (or (not (= lt!498730 Nil!15002)) (= lt!499027 lt!498729)))))

(declare-fun b!1447056 () Bool)

(assert (=> b!1447056 (= e!923105 (Cons!15002 (h!20403 lt!498729) (++!4041 (t!130351 lt!498729) lt!498730)))))

(declare-fun b!1447057 () Bool)

(declare-fun res!655145 () Bool)

(assert (=> b!1447057 (=> (not res!655145) (not e!923106))))

(assert (=> b!1447057 (= res!655145 (= (size!12300 lt!499027) (+ (size!12300 lt!498729) (size!12300 lt!498730))))))

(declare-fun b!1447055 () Bool)

(assert (=> b!1447055 (= e!923105 lt!498730)))

(assert (= (and d!420078 c!238484) b!1447055))

(assert (= (and d!420078 (not c!238484)) b!1447056))

(assert (= (and d!420078 res!655144) b!1447057))

(assert (= (and b!1447057 res!655145) b!1447058))

(declare-fun m!1669833 () Bool)

(assert (=> d!420078 m!1669833))

(declare-fun m!1669835 () Bool)

(assert (=> d!420078 m!1669835))

(assert (=> d!420078 m!1669129))

(declare-fun m!1669837 () Bool)

(assert (=> b!1447056 m!1669837))

(declare-fun m!1669839 () Bool)

(assert (=> b!1447057 m!1669839))

(declare-fun m!1669841 () Bool)

(assert (=> b!1447057 m!1669841))

(assert (=> b!1447057 m!1669137))

(assert (=> b!1446826 d!420078))

(declare-fun d!420080 () Bool)

(assert (=> d!420080 (= (list!5984 (tokens!2020 other!32)) (list!5988 (c!238436 (tokens!2020 other!32))))))

(declare-fun bs!342293 () Bool)

(assert (= bs!342293 d!420080))

(declare-fun m!1669843 () Bool)

(assert (=> bs!342293 m!1669843))

(assert (=> b!1446826 d!420080))

(declare-fun d!420082 () Bool)

(assert (=> d!420082 (= (list!5984 (BalanceConc!10143 Empty!5101)) (list!5988 (c!238436 (BalanceConc!10143 Empty!5101))))))

(declare-fun bs!342294 () Bool)

(assert (= bs!342294 d!420082))

(declare-fun m!1669845 () Bool)

(assert (=> bs!342294 m!1669845))

(assert (=> b!1446826 d!420082))

(declare-fun d!420084 () Bool)

(declare-fun c!238485 () Bool)

(assert (=> d!420084 (= c!238485 ((_ is Node!5101) (c!238436 (tokens!2020 other!32))))))

(declare-fun e!923107 () Bool)

(assert (=> d!420084 (= (inv!19979 (c!238436 (tokens!2020 other!32))) e!923107)))

(declare-fun b!1447059 () Bool)

(assert (=> b!1447059 (= e!923107 (inv!19984 (c!238436 (tokens!2020 other!32))))))

(declare-fun b!1447060 () Bool)

(declare-fun e!923108 () Bool)

(assert (=> b!1447060 (= e!923107 e!923108)))

(declare-fun res!655146 () Bool)

(assert (=> b!1447060 (= res!655146 (not ((_ is Leaf!7621) (c!238436 (tokens!2020 other!32)))))))

(assert (=> b!1447060 (=> res!655146 e!923108)))

(declare-fun b!1447061 () Bool)

(assert (=> b!1447061 (= e!923108 (inv!19985 (c!238436 (tokens!2020 other!32))))))

(assert (= (and d!420084 c!238485) b!1447059))

(assert (= (and d!420084 (not c!238485)) b!1447060))

(assert (= (and b!1447060 (not res!655146)) b!1447061))

(declare-fun m!1669847 () Bool)

(assert (=> b!1447059 m!1669847))

(declare-fun m!1669849 () Bool)

(assert (=> b!1447061 m!1669849))

(assert (=> b!1446815 d!420084))

(declare-fun d!420086 () Bool)

(assert (=> d!420086 (= (isEmpty!9355 lt!498728) (not ((_ is Some!2864) lt!498728)))))

(assert (=> b!1446825 d!420086))

(declare-fun d!420088 () Bool)

(assert (=> d!420088 (= (list!5985 (print!1079 lt!498718)) (list!5989 (c!238434 (print!1079 lt!498718))))))

(declare-fun bs!342295 () Bool)

(assert (= bs!342295 d!420088))

(declare-fun m!1669851 () Bool)

(assert (=> bs!342295 m!1669851))

(assert (=> b!1446824 d!420088))

(declare-fun d!420090 () Bool)

(assert (=> d!420090 (= (list!5985 lt!498723) (list!5989 (c!238434 lt!498723)))))

(declare-fun bs!342296 () Bool)

(assert (= bs!342296 d!420090))

(declare-fun m!1669853 () Bool)

(assert (=> bs!342296 m!1669853))

(assert (=> b!1446824 d!420090))

(declare-fun d!420092 () Bool)

(declare-fun e!923109 () Bool)

(assert (=> d!420092 e!923109))

(declare-fun res!655147 () Bool)

(assert (=> d!420092 (=> (not res!655147) (not e!923109))))

(declare-fun lt!499028 () BalanceConc!10140)

(assert (=> d!420092 (= res!655147 (= (list!5984 (_1!7972 (lex!1052 Lexer!2294 (rules!11512 lt!498718) lt!499028))) (list!5984 (tokens!2020 lt!498718))))))

(assert (=> d!420092 (= lt!499028 (print!1078 Lexer!2294 (tokens!2020 lt!498718)))))

(declare-fun lt!499029 () Unit!23857)

(assert (=> d!420092 (= lt!499029 (theoremInvertabilityWhenTokenListSeparable!75 Lexer!2294 (rules!11512 lt!498718) (list!5984 (tokens!2020 lt!498718))))))

(assert (=> d!420092 (= (print!1079 lt!498718) lt!499028)))

(declare-fun b!1447062 () Bool)

(assert (=> b!1447062 (= e!923109 (isEmpty!9360 (list!5985 (_2!7972 (lex!1052 Lexer!2294 (rules!11512 lt!498718) lt!499028)))))))

(assert (= (and d!420092 res!655147) b!1447062))

(assert (=> d!420092 m!1669085))

(declare-fun m!1669855 () Bool)

(assert (=> d!420092 m!1669855))

(declare-fun m!1669857 () Bool)

(assert (=> d!420092 m!1669857))

(declare-fun m!1669859 () Bool)

(assert (=> d!420092 m!1669859))

(assert (=> d!420092 m!1669085))

(declare-fun m!1669861 () Bool)

(assert (=> d!420092 m!1669861))

(assert (=> b!1447062 m!1669855))

(declare-fun m!1669863 () Bool)

(assert (=> b!1447062 m!1669863))

(assert (=> b!1447062 m!1669863))

(declare-fun m!1669865 () Bool)

(assert (=> b!1447062 m!1669865))

(assert (=> b!1446824 d!420092))

(declare-fun b!1447063 () Bool)

(declare-fun e!923111 () List!15066)

(assert (=> b!1447063 (= e!923111 (list!5985 lt!498723))))

(declare-fun d!420094 () Bool)

(declare-fun e!923110 () Bool)

(assert (=> d!420094 e!923110))

(declare-fun res!655148 () Bool)

(assert (=> d!420094 (=> (not res!655148) (not e!923110))))

(declare-fun lt!499030 () List!15066)

(assert (=> d!420094 (= res!655148 (= (content!2223 lt!499030) ((_ map or) (content!2223 (list!5985 lt!498726)) (content!2223 (list!5985 lt!498723)))))))

(assert (=> d!420094 (= lt!499030 e!923111)))

(declare-fun c!238486 () Bool)

(assert (=> d!420094 (= c!238486 ((_ is Nil!15000) (list!5985 lt!498726)))))

(assert (=> d!420094 (= (++!4042 (list!5985 lt!498726) (list!5985 lt!498723)) lt!499030)))

(declare-fun b!1447066 () Bool)

(assert (=> b!1447066 (= e!923110 (or (not (= (list!5985 lt!498723) Nil!15000)) (= lt!499030 (list!5985 lt!498726))))))

(declare-fun b!1447064 () Bool)

(assert (=> b!1447064 (= e!923111 (Cons!15000 (h!20401 (list!5985 lt!498726)) (++!4042 (t!130349 (list!5985 lt!498726)) (list!5985 lt!498723))))))

(declare-fun b!1447065 () Bool)

(declare-fun res!655149 () Bool)

(assert (=> b!1447065 (=> (not res!655149) (not e!923110))))

(assert (=> b!1447065 (= res!655149 (= (size!12302 lt!499030) (+ (size!12302 (list!5985 lt!498726)) (size!12302 (list!5985 lt!498723)))))))

(assert (= (and d!420094 c!238486) b!1447063))

(assert (= (and d!420094 (not c!238486)) b!1447064))

(assert (= (and d!420094 res!655148) b!1447065))

(assert (= (and b!1447065 res!655149) b!1447066))

(declare-fun m!1669867 () Bool)

(assert (=> d!420094 m!1669867))

(assert (=> d!420094 m!1669109))

(declare-fun m!1669869 () Bool)

(assert (=> d!420094 m!1669869))

(assert (=> d!420094 m!1669111))

(declare-fun m!1669871 () Bool)

(assert (=> d!420094 m!1669871))

(assert (=> b!1447064 m!1669111))

(declare-fun m!1669873 () Bool)

(assert (=> b!1447064 m!1669873))

(declare-fun m!1669875 () Bool)

(assert (=> b!1447065 m!1669875))

(assert (=> b!1447065 m!1669109))

(declare-fun m!1669877 () Bool)

(assert (=> b!1447065 m!1669877))

(assert (=> b!1447065 m!1669111))

(declare-fun m!1669879 () Bool)

(assert (=> b!1447065 m!1669879))

(assert (=> b!1446824 d!420094))

(declare-fun d!420096 () Bool)

(assert (=> d!420096 (= (list!5985 lt!498726) (list!5989 (c!238434 lt!498726)))))

(declare-fun bs!342297 () Bool)

(assert (= bs!342297 d!420096))

(declare-fun m!1669881 () Bool)

(assert (=> bs!342297 m!1669881))

(assert (=> b!1446824 d!420096))

(declare-fun d!420098 () Bool)

(assert (=> d!420098 (= (list!5984 (tokens!2020 lt!498718)) (list!5988 (c!238436 (tokens!2020 lt!498718))))))

(declare-fun bs!342298 () Bool)

(assert (= bs!342298 d!420098))

(declare-fun m!1669883 () Bool)

(assert (=> bs!342298 m!1669883))

(assert (=> b!1446813 d!420098))

(declare-fun d!420100 () Bool)

(declare-fun e!923113 () Bool)

(assert (=> d!420100 e!923113))

(declare-fun res!655150 () Bool)

(assert (=> d!420100 (=> (not res!655150) (not e!923113))))

(declare-fun lt!499031 () List!15068)

(assert (=> d!420100 (= res!655150 (= (content!2221 lt!499031) ((_ map or) (content!2221 lt!498732) (content!2221 lt!498730))))))

(declare-fun e!923112 () List!15068)

(assert (=> d!420100 (= lt!499031 e!923112)))

(declare-fun c!238487 () Bool)

(assert (=> d!420100 (= c!238487 ((_ is Nil!15002) lt!498732))))

(assert (=> d!420100 (= (++!4041 lt!498732 lt!498730) lt!499031)))

(declare-fun b!1447070 () Bool)

(assert (=> b!1447070 (= e!923113 (or (not (= lt!498730 Nil!15002)) (= lt!499031 lt!498732)))))

(declare-fun b!1447068 () Bool)

(assert (=> b!1447068 (= e!923112 (Cons!15002 (h!20403 lt!498732) (++!4041 (t!130351 lt!498732) lt!498730)))))

(declare-fun b!1447069 () Bool)

(declare-fun res!655151 () Bool)

(assert (=> b!1447069 (=> (not res!655151) (not e!923113))))

(assert (=> b!1447069 (= res!655151 (= (size!12300 lt!499031) (+ (size!12300 lt!498732) (size!12300 lt!498730))))))

(declare-fun b!1447067 () Bool)

(assert (=> b!1447067 (= e!923112 lt!498730)))

(assert (= (and d!420100 c!238487) b!1447067))

(assert (= (and d!420100 (not c!238487)) b!1447068))

(assert (= (and d!420100 res!655150) b!1447069))

(assert (= (and b!1447069 res!655151) b!1447070))

(declare-fun m!1669885 () Bool)

(assert (=> d!420100 m!1669885))

(declare-fun m!1669887 () Bool)

(assert (=> d!420100 m!1669887))

(assert (=> d!420100 m!1669129))

(declare-fun m!1669889 () Bool)

(assert (=> b!1447068 m!1669889))

(declare-fun m!1669891 () Bool)

(assert (=> b!1447069 m!1669891))

(declare-fun m!1669893 () Bool)

(assert (=> b!1447069 m!1669893))

(assert (=> b!1447069 m!1669137))

(assert (=> b!1446813 d!420100))

(declare-fun d!420102 () Bool)

(assert (=> d!420102 (= (inv!19981 (tokens!2020 thiss!10022)) (isBalanced!1522 (c!238436 (tokens!2020 thiss!10022))))))

(declare-fun bs!342299 () Bool)

(assert (= bs!342299 d!420102))

(declare-fun m!1669895 () Bool)

(assert (=> bs!342299 m!1669895))

(assert (=> b!1446812 d!420102))

(declare-fun d!420104 () Bool)

(declare-fun lt!499047 () BalanceConc!10140)

(declare-fun printListTailRec!287 (LexerInterface!2296 List!15068 List!15066) List!15066)

(declare-fun dropList!472 (BalanceConc!10142 Int) List!15068)

(assert (=> d!420104 (= (list!5985 lt!499047) (printListTailRec!287 Lexer!2294 (dropList!472 (tokens!2020 other!32) 0) (list!5985 (BalanceConc!10141 Empty!5100))))))

(declare-fun e!923118 () BalanceConc!10140)

(assert (=> d!420104 (= lt!499047 e!923118)))

(declare-fun c!238490 () Bool)

(declare-fun size!12303 (BalanceConc!10142) Int)

(assert (=> d!420104 (= c!238490 (>= 0 (size!12303 (tokens!2020 other!32))))))

(declare-fun e!923119 () Bool)

(assert (=> d!420104 e!923119))

(declare-fun res!655154 () Bool)

(assert (=> d!420104 (=> (not res!655154) (not e!923119))))

(assert (=> d!420104 (= res!655154 (>= 0 0))))

(assert (=> d!420104 (= (printTailRec!687 Lexer!2294 (tokens!2020 other!32) 0 (BalanceConc!10141 Empty!5100)) lt!499047)))

(declare-fun b!1447077 () Bool)

(assert (=> b!1447077 (= e!923119 (<= 0 (size!12303 (tokens!2020 other!32))))))

(declare-fun b!1447078 () Bool)

(assert (=> b!1447078 (= e!923118 (BalanceConc!10141 Empty!5100))))

(declare-fun b!1447079 () Bool)

(declare-fun ++!4044 (BalanceConc!10140 BalanceConc!10140) BalanceConc!10140)

(declare-fun apply!3879 (BalanceConc!10142 Int) Token!4936)

(assert (=> b!1447079 (= e!923118 (printTailRec!687 Lexer!2294 (tokens!2020 other!32) (+ 0 1) (++!4044 (BalanceConc!10141 Empty!5100) (charsOf!1523 (apply!3879 (tokens!2020 other!32) 0)))))))

(declare-fun lt!499052 () List!15068)

(assert (=> b!1447079 (= lt!499052 (list!5984 (tokens!2020 other!32)))))

(declare-fun lt!499049 () Unit!23857)

(declare-fun lemmaDropApply!490 (List!15068 Int) Unit!23857)

(assert (=> b!1447079 (= lt!499049 (lemmaDropApply!490 lt!499052 0))))

(declare-fun head!2939 (List!15068) Token!4936)

(declare-fun drop!738 (List!15068 Int) List!15068)

(declare-fun apply!3880 (List!15068 Int) Token!4936)

(assert (=> b!1447079 (= (head!2939 (drop!738 lt!499052 0)) (apply!3880 lt!499052 0))))

(declare-fun lt!499051 () Unit!23857)

(assert (=> b!1447079 (= lt!499051 lt!499049)))

(declare-fun lt!499046 () List!15068)

(assert (=> b!1447079 (= lt!499046 (list!5984 (tokens!2020 other!32)))))

(declare-fun lt!499050 () Unit!23857)

(declare-fun lemmaDropTail!470 (List!15068 Int) Unit!23857)

(assert (=> b!1447079 (= lt!499050 (lemmaDropTail!470 lt!499046 0))))

(declare-fun tail!2166 (List!15068) List!15068)

(assert (=> b!1447079 (= (tail!2166 (drop!738 lt!499046 0)) (drop!738 lt!499046 (+ 0 1)))))

(declare-fun lt!499048 () Unit!23857)

(assert (=> b!1447079 (= lt!499048 lt!499050)))

(assert (= (and d!420104 res!655154) b!1447077))

(assert (= (and d!420104 c!238490) b!1447078))

(assert (= (and d!420104 (not c!238490)) b!1447079))

(declare-fun m!1669897 () Bool)

(assert (=> d!420104 m!1669897))

(declare-fun m!1669899 () Bool)

(assert (=> d!420104 m!1669899))

(declare-fun m!1669901 () Bool)

(assert (=> d!420104 m!1669901))

(assert (=> d!420104 m!1669899))

(declare-fun m!1669903 () Bool)

(assert (=> d!420104 m!1669903))

(declare-fun m!1669905 () Bool)

(assert (=> d!420104 m!1669905))

(assert (=> d!420104 m!1669897))

(assert (=> b!1447077 m!1669905))

(declare-fun m!1669907 () Bool)

(assert (=> b!1447079 m!1669907))

(declare-fun m!1669909 () Bool)

(assert (=> b!1447079 m!1669909))

(declare-fun m!1669911 () Bool)

(assert (=> b!1447079 m!1669911))

(declare-fun m!1669913 () Bool)

(assert (=> b!1447079 m!1669913))

(declare-fun m!1669915 () Bool)

(assert (=> b!1447079 m!1669915))

(declare-fun m!1669917 () Bool)

(assert (=> b!1447079 m!1669917))

(assert (=> b!1447079 m!1669915))

(declare-fun m!1669919 () Bool)

(assert (=> b!1447079 m!1669919))

(assert (=> b!1447079 m!1669907))

(declare-fun m!1669921 () Bool)

(assert (=> b!1447079 m!1669921))

(assert (=> b!1447079 m!1669917))

(assert (=> b!1447079 m!1669913))

(declare-fun m!1669923 () Bool)

(assert (=> b!1447079 m!1669923))

(assert (=> b!1447079 m!1669045))

(assert (=> b!1447079 m!1669909))

(declare-fun m!1669925 () Bool)

(assert (=> b!1447079 m!1669925))

(declare-fun m!1669927 () Bool)

(assert (=> b!1447079 m!1669927))

(declare-fun m!1669929 () Bool)

(assert (=> b!1447079 m!1669929))

(assert (=> b!1446823 d!420104))

(declare-fun b!1447090 () Bool)

(declare-fun b_free!35855 () Bool)

(declare-fun b_next!36559 () Bool)

(assert (=> b!1447090 (= b_free!35855 (not b_next!36559))))

(declare-fun tp!408021 () Bool)

(declare-fun b_and!97919 () Bool)

(assert (=> b!1447090 (= tp!408021 b_and!97919)))

(declare-fun b_free!35857 () Bool)

(declare-fun b_next!36561 () Bool)

(assert (=> b!1447090 (= b_free!35857 (not b_next!36561))))

(declare-fun t!130358 () Bool)

(declare-fun tb!78797 () Bool)

(assert (=> (and b!1447090 (= (toChars!3803 (transformation!2637 (h!20404 (rules!11512 other!32)))) (toChars!3803 (transformation!2637 (rule!4410 (h!20403 lt!498730))))) t!130358) tb!78797))

(declare-fun b!1447095 () Bool)

(declare-fun e!923134 () Bool)

(declare-fun tp!408026 () Bool)

(declare-fun inv!19990 (Conc!5100) Bool)

(assert (=> b!1447095 (= e!923134 (and (inv!19990 (c!238434 (dynLambda!6849 (toChars!3803 (transformation!2637 (rule!4410 (h!20403 lt!498730)))) (value!84802 (h!20403 lt!498730))))) tp!408026))))

(declare-fun result!95238 () Bool)

(declare-fun inv!19991 (BalanceConc!10140) Bool)

(assert (=> tb!78797 (= result!95238 (and (inv!19991 (dynLambda!6849 (toChars!3803 (transformation!2637 (rule!4410 (h!20403 lt!498730)))) (value!84802 (h!20403 lt!498730)))) e!923134))))

(assert (= tb!78797 b!1447095))

(declare-fun m!1669931 () Bool)

(assert (=> b!1447095 m!1669931))

(declare-fun m!1669933 () Bool)

(assert (=> tb!78797 m!1669933))

(assert (=> d!420074 t!130358))

(declare-fun tp!408023 () Bool)

(declare-fun b_and!97921 () Bool)

(assert (=> b!1447090 (= tp!408023 (and (=> t!130358 result!95238) b_and!97921))))

(declare-fun e!923128 () Bool)

(assert (=> b!1447090 (= e!923128 (and tp!408021 tp!408023))))

(declare-fun tp!408020 () Bool)

(declare-fun e!923131 () Bool)

(declare-fun b!1447089 () Bool)

(declare-fun inv!19975 (String!17891) Bool)

(declare-fun inv!19992 (TokenValueInjection!5114) Bool)

(assert (=> b!1447089 (= e!923131 (and tp!408020 (inv!19975 (tag!2901 (h!20404 (rules!11512 other!32)))) (inv!19992 (transformation!2637 (h!20404 (rules!11512 other!32)))) e!923128))))

(declare-fun b!1447088 () Bool)

(declare-fun e!923130 () Bool)

(declare-fun tp!408022 () Bool)

(assert (=> b!1447088 (= e!923130 (and e!923131 tp!408022))))

(assert (=> b!1446817 (= tp!407978 e!923130)))

(assert (= b!1447089 b!1447090))

(assert (= b!1447088 b!1447089))

(assert (= (and b!1446817 ((_ is Cons!15003) (rules!11512 other!32))) b!1447088))

(declare-fun m!1669935 () Bool)

(assert (=> b!1447089 m!1669935))

(declare-fun m!1669937 () Bool)

(assert (=> b!1447089 m!1669937))

(declare-fun e!923139 () Bool)

(declare-fun b!1447104 () Bool)

(declare-fun tp!408033 () Bool)

(declare-fun tp!408034 () Bool)

(assert (=> b!1447104 (= e!923139 (and (inv!19979 (left!12774 (c!238436 (tokens!2020 thiss!10022)))) tp!408033 (inv!19979 (right!13104 (c!238436 (tokens!2020 thiss!10022)))) tp!408034))))

(declare-fun b!1447106 () Bool)

(declare-fun e!923140 () Bool)

(declare-fun tp!408035 () Bool)

(assert (=> b!1447106 (= e!923140 tp!408035)))

(declare-fun b!1447105 () Bool)

(declare-fun inv!19993 (IArray!10207) Bool)

(assert (=> b!1447105 (= e!923139 (and (inv!19993 (xs!7842 (c!238436 (tokens!2020 thiss!10022)))) e!923140))))

(assert (=> b!1446810 (= tp!407980 (and (inv!19979 (c!238436 (tokens!2020 thiss!10022))) e!923139))))

(assert (= (and b!1446810 ((_ is Node!5101) (c!238436 (tokens!2020 thiss!10022)))) b!1447104))

(assert (= b!1447105 b!1447106))

(assert (= (and b!1446810 ((_ is Leaf!7621) (c!238436 (tokens!2020 thiss!10022)))) b!1447105))

(declare-fun m!1669939 () Bool)

(assert (=> b!1447104 m!1669939))

(declare-fun m!1669941 () Bool)

(assert (=> b!1447104 m!1669941))

(declare-fun m!1669943 () Bool)

(assert (=> b!1447105 m!1669943))

(assert (=> b!1446810 m!1669049))

(declare-fun tp!408037 () Bool)

(declare-fun b!1447107 () Bool)

(declare-fun tp!408036 () Bool)

(declare-fun e!923141 () Bool)

(assert (=> b!1447107 (= e!923141 (and (inv!19979 (left!12774 (c!238436 (tokens!2020 other!32)))) tp!408036 (inv!19979 (right!13104 (c!238436 (tokens!2020 other!32)))) tp!408037))))

(declare-fun b!1447109 () Bool)

(declare-fun e!923142 () Bool)

(declare-fun tp!408038 () Bool)

(assert (=> b!1447109 (= e!923142 tp!408038)))

(declare-fun b!1447108 () Bool)

(assert (=> b!1447108 (= e!923141 (and (inv!19993 (xs!7842 (c!238436 (tokens!2020 other!32)))) e!923142))))

(assert (=> b!1446815 (= tp!407979 (and (inv!19979 (c!238436 (tokens!2020 other!32))) e!923141))))

(assert (= (and b!1446815 ((_ is Node!5101) (c!238436 (tokens!2020 other!32)))) b!1447107))

(assert (= b!1447108 b!1447109))

(assert (= (and b!1446815 ((_ is Leaf!7621) (c!238436 (tokens!2020 other!32)))) b!1447108))

(declare-fun m!1669945 () Bool)

(assert (=> b!1447107 m!1669945))

(declare-fun m!1669947 () Bool)

(assert (=> b!1447107 m!1669947))

(declare-fun m!1669949 () Bool)

(assert (=> b!1447108 m!1669949))

(assert (=> b!1446815 m!1669081))

(declare-fun b!1447112 () Bool)

(declare-fun b_free!35859 () Bool)

(declare-fun b_next!36563 () Bool)

(assert (=> b!1447112 (= b_free!35859 (not b_next!36563))))

(declare-fun tp!408040 () Bool)

(declare-fun b_and!97923 () Bool)

(assert (=> b!1447112 (= tp!408040 b_and!97923)))

(declare-fun b_free!35861 () Bool)

(declare-fun b_next!36565 () Bool)

(assert (=> b!1447112 (= b_free!35861 (not b_next!36565))))

(declare-fun t!130360 () Bool)

(declare-fun tb!78799 () Bool)

(assert (=> (and b!1447112 (= (toChars!3803 (transformation!2637 (h!20404 (rules!11512 thiss!10022)))) (toChars!3803 (transformation!2637 (rule!4410 (h!20403 lt!498730))))) t!130360) tb!78799))

(declare-fun result!95244 () Bool)

(assert (= result!95244 result!95238))

(assert (=> d!420074 t!130360))

(declare-fun b_and!97925 () Bool)

(declare-fun tp!408042 () Bool)

(assert (=> b!1447112 (= tp!408042 (and (=> t!130360 result!95244) b_and!97925))))

(declare-fun e!923143 () Bool)

(assert (=> b!1447112 (= e!923143 (and tp!408040 tp!408042))))

(declare-fun b!1447111 () Bool)

(declare-fun tp!408039 () Bool)

(declare-fun e!923146 () Bool)

(assert (=> b!1447111 (= e!923146 (and tp!408039 (inv!19975 (tag!2901 (h!20404 (rules!11512 thiss!10022)))) (inv!19992 (transformation!2637 (h!20404 (rules!11512 thiss!10022)))) e!923143))))

(declare-fun b!1447110 () Bool)

(declare-fun e!923145 () Bool)

(declare-fun tp!408041 () Bool)

(assert (=> b!1447110 (= e!923145 (and e!923146 tp!408041))))

(assert (=> b!1446812 (= tp!407977 e!923145)))

(assert (= b!1447111 b!1447112))

(assert (= b!1447110 b!1447111))

(assert (= (and b!1446812 ((_ is Cons!15003) (rules!11512 thiss!10022))) b!1447110))

(declare-fun m!1669951 () Bool)

(assert (=> b!1447111 m!1669951))

(declare-fun m!1669953 () Bool)

(assert (=> b!1447111 m!1669953))

(check-sat (not b!1447068) (not b!1447065) (not d!420046) (not b!1447064) (not b!1447069) (not d!419978) (not b!1447110) (not b!1447111) (not b!1446949) (not b!1447095) b_and!97925 (not b!1447056) (not b_next!36561) (not b!1446989) (not b!1447050) (not b!1447047) (not b!1446955) (not d!420096) (not b!1447051) (not b_next!36563) (not d!420090) (not d!420078) (not d!420064) b_and!97923 (not b!1447108) (not b!1446888) (not b_next!36565) (not b!1446981) (not d!420052) (not b!1447079) b_and!97919 (not d!419954) (not b!1446979) (not d!420026) (not b!1447046) (not d!420062) (not b!1447109) (not b!1447057) (not b!1447048) (not d!420070) (not b!1446951) (not b!1447077) (not b!1446954) (not tb!78797) (not b!1447105) (not b!1447045) (not d!420100) (not b!1447062) (not b!1446991) (not b!1446881) (not b!1446948) (not d!419944) (not d!420082) (not b!1446845) (not b!1447059) (not d!420092) (not b!1446982) (not b_lambda!45177) (not b!1446864) (not d!419964) (not b!1447061) (not b!1446810) (not d!420080) (not d!420102) (not d!420028) (not d!420074) (not b!1447089) (not b!1446815) (not d!420088) (not b!1446978) (not d!420024) (not b!1447053) (not b!1447088) (not b!1446938) (not b!1447107) (not d!420068) (not b!1446846) (not b_next!36559) (not b!1446956) (not d!419982) (not d!420072) (not d!420104) (not d!420042) (not b!1446977) (not b!1446937) (not d!420094) (not b!1446980) (not b!1447106) (not d!419976) (not d!420020) (not d!420050) b_and!97921 (not b!1447104) (not d!420098))
(check-sat b_and!97925 (not b_next!36561) (not b_next!36563) b_and!97923 (not b_next!36565) b_and!97919 (not b_next!36559) b_and!97921)
