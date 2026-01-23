; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49036 () Bool)

(assert start!49036)

(declare-fun b!532821 () Bool)

(declare-fun b_free!14409 () Bool)

(declare-fun b_next!14425 () Bool)

(assert (=> b!532821 (= b_free!14409 (not b_next!14425))))

(declare-fun tp!169948 () Bool)

(declare-fun b_and!52059 () Bool)

(assert (=> b!532821 (= tp!169948 b_and!52059)))

(declare-fun b_free!14411 () Bool)

(declare-fun b_next!14427 () Bool)

(assert (=> b!532821 (= b_free!14411 (not b_next!14427))))

(declare-fun tp!169947 () Bool)

(declare-fun b_and!52061 () Bool)

(assert (=> b!532821 (= tp!169947 b_and!52061)))

(declare-fun b!532816 () Bool)

(declare-fun b_free!14413 () Bool)

(declare-fun b_next!14429 () Bool)

(assert (=> b!532816 (= b_free!14413 (not b_next!14429))))

(declare-fun tp!169944 () Bool)

(declare-fun b_and!52063 () Bool)

(assert (=> b!532816 (= tp!169944 b_and!52063)))

(declare-fun b_free!14415 () Bool)

(declare-fun b_next!14431 () Bool)

(assert (=> b!532816 (= b_free!14415 (not b_next!14431))))

(declare-fun tp!169950 () Bool)

(declare-fun b_and!52065 () Bool)

(assert (=> b!532816 (= tp!169950 b_and!52065)))

(declare-fun b!532807 () Bool)

(declare-fun res!225074 () Bool)

(declare-fun e!320838 () Bool)

(assert (=> b!532807 (=> res!225074 e!320838)))

(declare-datatypes ((C!3444 0))(
  ( (C!3445 (val!1948 Int)) )
))
(declare-datatypes ((List!5109 0))(
  ( (Nil!5099) (Cons!5099 (h!10500 C!3444) (t!73894 List!5109)) )
))
(declare-fun lt!219213 () List!5109)

(declare-fun input!2705 () List!5109)

(assert (=> b!532807 (= res!225074 (not (= lt!219213 input!2705)))))

(declare-fun b!532808 () Bool)

(declare-fun e!320827 () Bool)

(declare-fun tp_is_empty!2877 () Bool)

(declare-fun tp!169946 () Bool)

(assert (=> b!532808 (= e!320827 (and tp_is_empty!2877 tp!169946))))

(declare-fun b!532809 () Bool)

(declare-fun e!320826 () Bool)

(declare-fun e!320828 () Bool)

(assert (=> b!532809 (= e!320826 e!320828)))

(declare-fun res!225068 () Bool)

(assert (=> b!532809 (=> (not res!225068) (not e!320828))))

(declare-datatypes ((String!6498 0))(
  ( (String!6499 (value!31260 String)) )
))
(declare-datatypes ((Regex!1261 0))(
  ( (ElementMatch!1261 (c!101638 C!3444)) (Concat!2212 (regOne!3034 Regex!1261) (regTwo!3034 Regex!1261)) (EmptyExpr!1261) (Star!1261 (reg!1590 Regex!1261)) (EmptyLang!1261) (Union!1261 (regOne!3035 Regex!1261) (regTwo!3035 Regex!1261)) )
))
(declare-datatypes ((List!5110 0))(
  ( (Nil!5100) (Cons!5100 (h!10501 (_ BitVec 16)) (t!73895 List!5110)) )
))
(declare-datatypes ((IArray!3289 0))(
  ( (IArray!3290 (innerList!1702 List!5109)) )
))
(declare-datatypes ((Conc!1644 0))(
  ( (Node!1644 (left!4304 Conc!1644) (right!4634 Conc!1644) (csize!3518 Int) (cheight!1855 Int)) (Leaf!2615 (xs!4281 IArray!3289) (csize!3519 Int)) (Empty!1644) )
))
(declare-datatypes ((BalanceConc!3296 0))(
  ( (BalanceConc!3297 (c!101639 Conc!1644)) )
))
(declare-datatypes ((TokenValue!951 0))(
  ( (FloatLiteralValue!1902 (text!7102 List!5110)) (TokenValueExt!950 (__x!3800 Int)) (Broken!4755 (value!31261 List!5110)) (Object!960) (End!951) (Def!951) (Underscore!951) (Match!951) (Else!951) (Error!951) (Case!951) (If!951) (Extends!951) (Abstract!951) (Class!951) (Val!951) (DelimiterValue!1902 (del!1011 List!5110)) (KeywordValue!957 (value!31262 List!5110)) (CommentValue!1902 (value!31263 List!5110)) (WhitespaceValue!1902 (value!31264 List!5110)) (IndentationValue!951 (value!31265 List!5110)) (String!6500) (Int32!951) (Broken!4756 (value!31266 List!5110)) (Boolean!952) (Unit!8894) (OperatorValue!954 (op!1011 List!5110)) (IdentifierValue!1902 (value!31267 List!5110)) (IdentifierValue!1903 (value!31268 List!5110)) (WhitespaceValue!1903 (value!31269 List!5110)) (True!1902) (False!1902) (Broken!4757 (value!31270 List!5110)) (Broken!4758 (value!31271 List!5110)) (True!1903) (RightBrace!951) (RightBracket!951) (Colon!951) (Null!951) (Comma!951) (LeftBracket!951) (False!1903) (LeftBrace!951) (ImaginaryLiteralValue!951 (text!7103 List!5110)) (StringLiteralValue!2853 (value!31272 List!5110)) (EOFValue!951 (value!31273 List!5110)) (IdentValue!951 (value!31274 List!5110)) (DelimiterValue!1903 (value!31275 List!5110)) (DedentValue!951 (value!31276 List!5110)) (NewLineValue!951 (value!31277 List!5110)) (IntegerValue!2853 (value!31278 (_ BitVec 32)) (text!7104 List!5110)) (IntegerValue!2854 (value!31279 Int) (text!7105 List!5110)) (Times!951) (Or!951) (Equal!951) (Minus!951) (Broken!4759 (value!31280 List!5110)) (And!951) (Div!951) (LessEqual!951) (Mod!951) (Concat!2213) (Not!951) (Plus!951) (SpaceValue!951 (value!31281 List!5110)) (IntegerValue!2855 (value!31282 Int) (text!7106 List!5110)) (StringLiteralValue!2854 (text!7107 List!5110)) (FloatLiteralValue!1903 (text!7108 List!5110)) (BytesLiteralValue!951 (value!31283 List!5110)) (CommentValue!1903 (value!31284 List!5110)) (StringLiteralValue!2855 (value!31285 List!5110)) (ErrorTokenValue!951 (msg!1012 List!5110)) )
))
(declare-datatypes ((TokenValueInjection!1670 0))(
  ( (TokenValueInjection!1671 (toValue!1774 Int) (toChars!1633 Int)) )
))
(declare-datatypes ((Rule!1654 0))(
  ( (Rule!1655 (regex!927 Regex!1261) (tag!1189 String!6498) (isSeparator!927 Bool) (transformation!927 TokenValueInjection!1670)) )
))
(declare-datatypes ((Token!1590 0))(
  ( (Token!1591 (value!31286 TokenValue!951) (rule!1629 Rule!1654) (size!4124 Int) (originalCharacters!966 List!5109)) )
))
(declare-datatypes ((tuple2!6212 0))(
  ( (tuple2!6213 (_1!3370 Token!1590) (_2!3370 List!5109)) )
))
(declare-datatypes ((Option!1277 0))(
  ( (None!1276) (Some!1276 (v!16083 tuple2!6212)) )
))
(declare-fun lt!219216 () Option!1277)

(declare-fun isDefined!1089 (Option!1277) Bool)

(assert (=> b!532809 (= res!225068 (isDefined!1089 lt!219216))))

(declare-fun lt!219214 () List!5109)

(declare-datatypes ((List!5111 0))(
  ( (Nil!5101) (Cons!5101 (h!10502 Rule!1654) (t!73896 List!5111)) )
))
(declare-fun rules!3103 () List!5111)

(declare-datatypes ((LexerInterface!813 0))(
  ( (LexerInterfaceExt!810 (__x!3801 Int)) (Lexer!811) )
))
(declare-fun thiss!22590 () LexerInterface!813)

(declare-fun maxPrefix!511 (LexerInterface!813 List!5111 List!5109) Option!1277)

(assert (=> b!532809 (= lt!219216 (maxPrefix!511 thiss!22590 rules!3103 lt!219214))))

(declare-fun suffix!1342 () List!5109)

(declare-fun ++!1415 (List!5109 List!5109) List!5109)

(assert (=> b!532809 (= lt!219214 (++!1415 input!2705 suffix!1342))))

(declare-fun b!532811 () Bool)

(declare-fun tp!169952 () Bool)

(declare-fun token!491 () Token!1590)

(declare-fun e!320825 () Bool)

(declare-fun e!320837 () Bool)

(declare-fun inv!6401 (String!6498) Bool)

(declare-fun inv!6404 (TokenValueInjection!1670) Bool)

(assert (=> b!532811 (= e!320825 (and tp!169952 (inv!6401 (tag!1189 (rule!1629 token!491))) (inv!6404 (transformation!927 (rule!1629 token!491))) e!320837))))

(declare-fun b!532812 () Bool)

(declare-fun res!225078 () Bool)

(declare-fun e!320831 () Bool)

(assert (=> b!532812 (=> (not res!225078) (not e!320831))))

(declare-fun isEmpty!3690 (List!5111) Bool)

(assert (=> b!532812 (= res!225078 (not (isEmpty!3690 rules!3103)))))

(declare-fun b!532813 () Bool)

(assert (=> b!532813 (= e!320831 e!320826)))

(declare-fun res!225077 () Bool)

(assert (=> b!532813 (=> (not res!225077) (not e!320826))))

(declare-fun lt!219220 () List!5109)

(assert (=> b!532813 (= res!225077 (= lt!219220 input!2705))))

(declare-fun list!2123 (BalanceConc!3296) List!5109)

(declare-fun charsOf!556 (Token!1590) BalanceConc!3296)

(assert (=> b!532813 (= lt!219220 (list!2123 (charsOf!556 token!491)))))

(declare-fun b!532814 () Bool)

(declare-fun e!320830 () Bool)

(assert (=> b!532814 (= e!320830 (not e!320838))))

(declare-fun res!225069 () Bool)

(assert (=> b!532814 (=> res!225069 e!320838)))

(declare-fun lt!219212 () List!5109)

(declare-fun isPrefix!569 (List!5109 List!5109) Bool)

(assert (=> b!532814 (= res!225069 (not (isPrefix!569 lt!219212 input!2705)))))

(declare-fun lt!219225 () List!5109)

(declare-fun getSuffix!92 (List!5109 List!5109) List!5109)

(assert (=> b!532814 (= lt!219225 (getSuffix!92 input!2705 lt!219212))))

(assert (=> b!532814 (isPrefix!569 lt!219212 lt!219213)))

(declare-fun lt!219222 () Option!1277)

(assert (=> b!532814 (= lt!219213 (++!1415 lt!219212 (_2!3370 (v!16083 lt!219222))))))

(declare-datatypes ((Unit!8895 0))(
  ( (Unit!8896) )
))
(declare-fun lt!219215 () Unit!8895)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!420 (List!5109 List!5109) Unit!8895)

(assert (=> b!532814 (= lt!219215 (lemmaConcatTwoListThenFirstIsPrefix!420 lt!219212 (_2!3370 (v!16083 lt!219222))))))

(declare-fun lt!219219 () Unit!8895)

(declare-fun lemmaCharactersSize!6 (Token!1590) Unit!8895)

(assert (=> b!532814 (= lt!219219 (lemmaCharactersSize!6 token!491))))

(declare-fun lt!219217 () Unit!8895)

(assert (=> b!532814 (= lt!219217 (lemmaCharactersSize!6 (_1!3370 (v!16083 lt!219222))))))

(declare-fun lt!219224 () Unit!8895)

(declare-fun e!320832 () Unit!8895)

(assert (=> b!532814 (= lt!219224 e!320832)))

(declare-fun c!101637 () Bool)

(declare-fun size!4125 (List!5109) Int)

(assert (=> b!532814 (= c!101637 (> (size!4125 lt!219212) (size!4125 lt!219220)))))

(assert (=> b!532814 (= lt!219212 (list!2123 (charsOf!556 (_1!3370 (v!16083 lt!219222)))))))

(assert (=> b!532814 (= lt!219222 (Some!1276 (v!16083 lt!219222)))))

(declare-fun lt!219223 () Unit!8895)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!12 (List!5109 List!5109 List!5109 List!5109) Unit!8895)

(assert (=> b!532814 (= lt!219223 (lemmaConcatSameAndSameSizesThenSameLists!12 lt!219220 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!532815 () Bool)

(declare-fun res!225076 () Bool)

(assert (=> b!532815 (=> (not res!225076) (not e!320831))))

(declare-fun isEmpty!3691 (List!5109) Bool)

(assert (=> b!532815 (= res!225076 (not (isEmpty!3691 input!2705)))))

(assert (=> b!532816 (= e!320837 (and tp!169944 tp!169950))))

(declare-fun b!532817 () Bool)

(declare-fun Unit!8897 () Unit!8895)

(assert (=> b!532817 (= e!320832 Unit!8897)))

(assert (=> b!532817 false))

(declare-fun b!532818 () Bool)

(declare-fun e!320835 () Bool)

(declare-fun tp!169945 () Bool)

(assert (=> b!532818 (= e!320835 (and tp_is_empty!2877 tp!169945))))

(declare-fun b!532819 () Bool)

(declare-fun Unit!8898 () Unit!8895)

(assert (=> b!532819 (= e!320832 Unit!8898)))

(declare-fun b!532820 () Bool)

(assert (=> b!532820 (= e!320838 true)))

(declare-fun lt!219221 () List!5109)

(assert (=> b!532820 (= lt!219221 (++!1415 lt!219212 lt!219225))))

(declare-fun e!320839 () Bool)

(assert (=> b!532821 (= e!320839 (and tp!169948 tp!169947))))

(declare-fun b!532822 () Bool)

(declare-fun res!225075 () Bool)

(assert (=> b!532822 (=> (not res!225075) (not e!320831))))

(declare-fun rulesInvariant!776 (LexerInterface!813 List!5111) Bool)

(assert (=> b!532822 (= res!225075 (rulesInvariant!776 thiss!22590 rules!3103))))

(declare-fun b!532823 () Bool)

(declare-fun e!320833 () Bool)

(declare-fun e!320834 () Bool)

(declare-fun tp!169951 () Bool)

(assert (=> b!532823 (= e!320833 (and e!320834 tp!169951))))

(declare-fun b!532824 () Bool)

(declare-fun res!225073 () Bool)

(assert (=> b!532824 (=> (not res!225073) (not e!320830))))

(assert (=> b!532824 (= res!225073 (= (++!1415 lt!219220 suffix!1342) lt!219214))))

(declare-fun b!532825 () Bool)

(declare-fun e!320836 () Bool)

(assert (=> b!532825 (= e!320828 e!320836)))

(declare-fun res!225071 () Bool)

(assert (=> b!532825 (=> (not res!225071) (not e!320836))))

(declare-fun lt!219218 () tuple2!6212)

(assert (=> b!532825 (= res!225071 (and (= (_1!3370 lt!219218) token!491) (= (_2!3370 lt!219218) suffix!1342)))))

(declare-fun get!1905 (Option!1277) tuple2!6212)

(assert (=> b!532825 (= lt!219218 (get!1905 lt!219216))))

(declare-fun b!532826 () Bool)

(assert (=> b!532826 (= e!320836 e!320830)))

(declare-fun res!225070 () Bool)

(assert (=> b!532826 (=> (not res!225070) (not e!320830))))

(get-info :version)

(assert (=> b!532826 (= res!225070 ((_ is Some!1276) lt!219222))))

(assert (=> b!532826 (= lt!219222 (maxPrefix!511 thiss!22590 rules!3103 input!2705))))

(declare-fun tp!169943 () Bool)

(declare-fun b!532827 () Bool)

(assert (=> b!532827 (= e!320834 (and tp!169943 (inv!6401 (tag!1189 (h!10502 rules!3103))) (inv!6404 (transformation!927 (h!10502 rules!3103))) e!320839))))

(declare-fun res!225072 () Bool)

(assert (=> start!49036 (=> (not res!225072) (not e!320831))))

(assert (=> start!49036 (= res!225072 ((_ is Lexer!811) thiss!22590))))

(assert (=> start!49036 e!320831))

(assert (=> start!49036 e!320835))

(assert (=> start!49036 e!320833))

(declare-fun e!320841 () Bool)

(declare-fun inv!6405 (Token!1590) Bool)

(assert (=> start!49036 (and (inv!6405 token!491) e!320841)))

(assert (=> start!49036 true))

(assert (=> start!49036 e!320827))

(declare-fun tp!169949 () Bool)

(declare-fun b!532810 () Bool)

(declare-fun inv!21 (TokenValue!951) Bool)

(assert (=> b!532810 (= e!320841 (and (inv!21 (value!31286 token!491)) e!320825 tp!169949))))

(assert (= (and start!49036 res!225072) b!532812))

(assert (= (and b!532812 res!225078) b!532822))

(assert (= (and b!532822 res!225075) b!532815))

(assert (= (and b!532815 res!225076) b!532813))

(assert (= (and b!532813 res!225077) b!532809))

(assert (= (and b!532809 res!225068) b!532825))

(assert (= (and b!532825 res!225071) b!532826))

(assert (= (and b!532826 res!225070) b!532824))

(assert (= (and b!532824 res!225073) b!532814))

(assert (= (and b!532814 c!101637) b!532817))

(assert (= (and b!532814 (not c!101637)) b!532819))

(assert (= (and b!532814 (not res!225069)) b!532807))

(assert (= (and b!532807 (not res!225074)) b!532820))

(assert (= (and start!49036 ((_ is Cons!5099) suffix!1342)) b!532818))

(assert (= b!532827 b!532821))

(assert (= b!532823 b!532827))

(assert (= (and start!49036 ((_ is Cons!5101) rules!3103)) b!532823))

(assert (= b!532811 b!532816))

(assert (= b!532810 b!532811))

(assert (= start!49036 b!532810))

(assert (= (and start!49036 ((_ is Cons!5099) input!2705)) b!532808))

(declare-fun m!778091 () Bool)

(assert (=> b!532815 m!778091))

(declare-fun m!778093 () Bool)

(assert (=> b!532810 m!778093))

(declare-fun m!778095 () Bool)

(assert (=> start!49036 m!778095))

(declare-fun m!778097 () Bool)

(assert (=> b!532822 m!778097))

(declare-fun m!778099 () Bool)

(assert (=> b!532824 m!778099))

(declare-fun m!778101 () Bool)

(assert (=> b!532825 m!778101))

(declare-fun m!778103 () Bool)

(assert (=> b!532820 m!778103))

(declare-fun m!778105 () Bool)

(assert (=> b!532827 m!778105))

(declare-fun m!778107 () Bool)

(assert (=> b!532827 m!778107))

(declare-fun m!778109 () Bool)

(assert (=> b!532811 m!778109))

(declare-fun m!778111 () Bool)

(assert (=> b!532811 m!778111))

(declare-fun m!778113 () Bool)

(assert (=> b!532813 m!778113))

(assert (=> b!532813 m!778113))

(declare-fun m!778115 () Bool)

(assert (=> b!532813 m!778115))

(declare-fun m!778117 () Bool)

(assert (=> b!532812 m!778117))

(declare-fun m!778119 () Bool)

(assert (=> b!532814 m!778119))

(declare-fun m!778121 () Bool)

(assert (=> b!532814 m!778121))

(declare-fun m!778123 () Bool)

(assert (=> b!532814 m!778123))

(declare-fun m!778125 () Bool)

(assert (=> b!532814 m!778125))

(declare-fun m!778127 () Bool)

(assert (=> b!532814 m!778127))

(assert (=> b!532814 m!778123))

(declare-fun m!778129 () Bool)

(assert (=> b!532814 m!778129))

(declare-fun m!778131 () Bool)

(assert (=> b!532814 m!778131))

(declare-fun m!778133 () Bool)

(assert (=> b!532814 m!778133))

(declare-fun m!778135 () Bool)

(assert (=> b!532814 m!778135))

(declare-fun m!778137 () Bool)

(assert (=> b!532814 m!778137))

(declare-fun m!778139 () Bool)

(assert (=> b!532814 m!778139))

(declare-fun m!778141 () Bool)

(assert (=> b!532814 m!778141))

(declare-fun m!778143 () Bool)

(assert (=> b!532826 m!778143))

(declare-fun m!778145 () Bool)

(assert (=> b!532809 m!778145))

(declare-fun m!778147 () Bool)

(assert (=> b!532809 m!778147))

(declare-fun m!778149 () Bool)

(assert (=> b!532809 m!778149))

(check-sat (not b!532815) (not b!532809) (not b!532825) (not start!49036) (not b!532811) (not b_next!14431) b_and!52061 (not b!532826) b_and!52059 tp_is_empty!2877 (not b!532814) (not b_next!14425) (not b!532808) b_and!52063 (not b_next!14429) b_and!52065 (not b_next!14427) (not b!532820) (not b!532824) (not b!532818) (not b!532812) (not b!532813) (not b!532823) (not b!532810) (not b!532827) (not b!532822))
(check-sat (not b_next!14425) (not b_next!14431) b_and!52061 b_and!52059 b_and!52063 (not b_next!14429) b_and!52065 (not b_next!14427))
