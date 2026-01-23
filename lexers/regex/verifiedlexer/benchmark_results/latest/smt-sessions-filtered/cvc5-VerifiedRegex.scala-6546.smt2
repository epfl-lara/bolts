; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!346124 () Bool)

(assert start!346124)

(declare-fun b!3684822 () Bool)

(declare-fun b_free!97713 () Bool)

(declare-fun b_next!98417 () Bool)

(assert (=> b!3684822 (= b_free!97713 (not b_next!98417))))

(declare-fun tp!1120044 () Bool)

(declare-fun b_and!275391 () Bool)

(assert (=> b!3684822 (= tp!1120044 b_and!275391)))

(declare-fun b_free!97715 () Bool)

(declare-fun b_next!98419 () Bool)

(assert (=> b!3684822 (= b_free!97715 (not b_next!98419))))

(declare-fun tp!1120041 () Bool)

(declare-fun b_and!275393 () Bool)

(assert (=> b!3684822 (= tp!1120041 b_and!275393)))

(declare-fun b!3684815 () Bool)

(declare-fun e!2281766 () Bool)

(declare-fun e!2281768 () Bool)

(assert (=> b!3684815 (= e!2281766 e!2281768)))

(declare-fun res!1497178 () Bool)

(assert (=> b!3684815 (=> (not res!1497178) (not e!2281768))))

(declare-datatypes ((List!39052 0))(
  ( (Nil!38928) (Cons!38928 (h!44348 (_ BitVec 16)) (t!301019 List!39052)) )
))
(declare-datatypes ((TokenValue!6101 0))(
  ( (FloatLiteralValue!12202 (text!43152 List!39052)) (TokenValueExt!6100 (__x!24419 Int)) (Broken!30505 (value!187759 List!39052)) (Object!6224) (End!6101) (Def!6101) (Underscore!6101) (Match!6101) (Else!6101) (Error!6101) (Case!6101) (If!6101) (Extends!6101) (Abstract!6101) (Class!6101) (Val!6101) (DelimiterValue!12202 (del!6161 List!39052)) (KeywordValue!6107 (value!187760 List!39052)) (CommentValue!12202 (value!187761 List!39052)) (WhitespaceValue!12202 (value!187762 List!39052)) (IndentationValue!6101 (value!187763 List!39052)) (String!43840) (Int32!6101) (Broken!30506 (value!187764 List!39052)) (Boolean!6102) (Unit!57008) (OperatorValue!6104 (op!6161 List!39052)) (IdentifierValue!12202 (value!187765 List!39052)) (IdentifierValue!12203 (value!187766 List!39052)) (WhitespaceValue!12203 (value!187767 List!39052)) (True!12202) (False!12202) (Broken!30507 (value!187768 List!39052)) (Broken!30508 (value!187769 List!39052)) (True!12203) (RightBrace!6101) (RightBracket!6101) (Colon!6101) (Null!6101) (Comma!6101) (LeftBracket!6101) (False!12203) (LeftBrace!6101) (ImaginaryLiteralValue!6101 (text!43153 List!39052)) (StringLiteralValue!18303 (value!187770 List!39052)) (EOFValue!6101 (value!187771 List!39052)) (IdentValue!6101 (value!187772 List!39052)) (DelimiterValue!12203 (value!187773 List!39052)) (DedentValue!6101 (value!187774 List!39052)) (NewLineValue!6101 (value!187775 List!39052)) (IntegerValue!18303 (value!187776 (_ BitVec 32)) (text!43154 List!39052)) (IntegerValue!18304 (value!187777 Int) (text!43155 List!39052)) (Times!6101) (Or!6101) (Equal!6101) (Minus!6101) (Broken!30509 (value!187778 List!39052)) (And!6101) (Div!6101) (LessEqual!6101) (Mod!6101) (Concat!16731) (Not!6101) (Plus!6101) (SpaceValue!6101 (value!187779 List!39052)) (IntegerValue!18305 (value!187780 Int) (text!43156 List!39052)) (StringLiteralValue!18304 (text!43157 List!39052)) (FloatLiteralValue!12203 (text!43158 List!39052)) (BytesLiteralValue!6101 (value!187781 List!39052)) (CommentValue!12203 (value!187782 List!39052)) (StringLiteralValue!18305 (value!187783 List!39052)) (ErrorTokenValue!6101 (msg!6162 List!39052)) )
))
(declare-datatypes ((C!21446 0))(
  ( (C!21447 (val!12771 Int)) )
))
(declare-datatypes ((List!39053 0))(
  ( (Nil!38929) (Cons!38929 (h!44349 C!21446) (t!301020 List!39053)) )
))
(declare-datatypes ((IArray!23869 0))(
  ( (IArray!23870 (innerList!11992 List!39053)) )
))
(declare-datatypes ((Regex!10630 0))(
  ( (ElementMatch!10630 (c!637405 C!21446)) (Concat!16732 (regOne!21772 Regex!10630) (regTwo!21772 Regex!10630)) (EmptyExpr!10630) (Star!10630 (reg!10959 Regex!10630)) (EmptyLang!10630) (Union!10630 (regOne!21773 Regex!10630) (regTwo!21773 Regex!10630)) )
))
(declare-datatypes ((Conc!11932 0))(
  ( (Node!11932 (left!30370 Conc!11932) (right!30700 Conc!11932) (csize!24094 Int) (cheight!12143 Int)) (Leaf!18479 (xs!15134 IArray!23869) (csize!24095 Int)) (Empty!11932) )
))
(declare-datatypes ((BalanceConc!23478 0))(
  ( (BalanceConc!23479 (c!637406 Conc!11932)) )
))
(declare-datatypes ((String!43841 0))(
  ( (String!43842 (value!187784 String)) )
))
(declare-datatypes ((TokenValueInjection!11630 0))(
  ( (TokenValueInjection!11631 (toValue!8179 Int) (toChars!8038 Int)) )
))
(declare-datatypes ((Rule!11542 0))(
  ( (Rule!11543 (regex!5871 Regex!10630) (tag!6679 String!43841) (isSeparator!5871 Bool) (transformation!5871 TokenValueInjection!11630)) )
))
(declare-fun lt!1289319 () Rule!11542)

(declare-fun lt!1289322 () List!39053)

(declare-fun matchR!5185 (Regex!10630 List!39053) Bool)

(assert (=> b!3684815 (= res!1497178 (matchR!5185 (regex!5871 lt!1289319) lt!1289322))))

(declare-datatypes ((Option!8353 0))(
  ( (None!8352) (Some!8352 (v!38298 Rule!11542)) )
))
(declare-fun lt!1289323 () Option!8353)

(declare-fun get!12890 (Option!8353) Rule!11542)

(assert (=> b!3684815 (= lt!1289319 (get!12890 lt!1289323))))

(declare-fun b!3684816 () Bool)

(declare-fun e!2281770 () Bool)

(declare-fun tp_is_empty!18343 () Bool)

(declare-fun tp!1120045 () Bool)

(assert (=> b!3684816 (= e!2281770 (and tp_is_empty!18343 tp!1120045))))

(declare-fun b!3684817 () Bool)

(declare-datatypes ((Token!11108 0))(
  ( (Token!11109 (value!187785 TokenValue!6101) (rule!8713 Rule!11542) (size!29761 Int) (originalCharacters!6585 List!39053)) )
))
(declare-fun lt!1289316 () Token!11108)

(assert (=> b!3684817 (= e!2281768 (= (rule!8713 lt!1289316) lt!1289319))))

(declare-fun b!3684818 () Bool)

(declare-fun e!2281773 () Bool)

(declare-fun tp!1120046 () Bool)

(assert (=> b!3684818 (= e!2281773 (and tp_is_empty!18343 tp!1120046))))

(declare-fun res!1497175 () Bool)

(declare-fun e!2281769 () Bool)

(assert (=> start!346124 (=> (not res!1497175) (not e!2281769))))

(declare-datatypes ((LexerInterface!5460 0))(
  ( (LexerInterfaceExt!5457 (__x!24420 Int)) (Lexer!5458) )
))
(declare-fun thiss!25197 () LexerInterface!5460)

(assert (=> start!346124 (= res!1497175 (is-Lexer!5458 thiss!25197))))

(assert (=> start!346124 e!2281769))

(assert (=> start!346124 true))

(declare-fun e!2281771 () Bool)

(assert (=> start!346124 e!2281771))

(assert (=> start!346124 e!2281770))

(assert (=> start!346124 e!2281773))

(declare-fun b!3684819 () Bool)

(declare-fun e!2281767 () Bool)

(declare-datatypes ((List!39054 0))(
  ( (Nil!38930) (Cons!38930 (h!44350 Rule!11542) (t!301021 List!39054)) )
))
(declare-fun rules!3568 () List!39054)

(declare-fun rulesValidInductive!2093 (LexerInterface!5460 List!39054) Bool)

(assert (=> b!3684819 (= e!2281767 (rulesValidInductive!2093 thiss!25197 rules!3568))))

(declare-fun b!3684820 () Bool)

(declare-fun e!2281772 () Bool)

(declare-fun tp!1120042 () Bool)

(assert (=> b!3684820 (= e!2281771 (and e!2281772 tp!1120042))))

(declare-fun b!3684821 () Bool)

(declare-fun res!1497177 () Bool)

(assert (=> b!3684821 (=> (not res!1497177) (not e!2281769))))

(declare-fun isEmpty!23137 (List!39054) Bool)

(assert (=> b!3684821 (= res!1497177 (not (isEmpty!23137 rules!3568)))))

(declare-fun e!2281765 () Bool)

(assert (=> b!3684822 (= e!2281765 (and tp!1120044 tp!1120041))))

(declare-fun b!3684823 () Bool)

(declare-fun e!2281763 () Bool)

(assert (=> b!3684823 (= e!2281763 (not e!2281767))))

(declare-fun res!1497172 () Bool)

(assert (=> b!3684823 (=> res!1497172 e!2281767)))

(assert (=> b!3684823 (= res!1497172 (not (matchR!5185 (regex!5871 (rule!8713 lt!1289316)) lt!1289322)))))

(assert (=> b!3684823 e!2281766))

(declare-fun res!1497174 () Bool)

(assert (=> b!3684823 (=> (not res!1497174) (not e!2281766))))

(declare-fun isDefined!6570 (Option!8353) Bool)

(assert (=> b!3684823 (= res!1497174 (isDefined!6570 lt!1289323))))

(declare-fun getRuleFromTag!1459 (LexerInterface!5460 List!39054 String!43841) Option!8353)

(assert (=> b!3684823 (= lt!1289323 (getRuleFromTag!1459 thiss!25197 rules!3568 (tag!6679 (rule!8713 lt!1289316))))))

(declare-datatypes ((Unit!57009 0))(
  ( (Unit!57010) )
))
(declare-fun lt!1289317 () Unit!57009)

(declare-fun input!3129 () List!39053)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1459 (LexerInterface!5460 List!39054 List!39053 Token!11108) Unit!57009)

(assert (=> b!3684823 (= lt!1289317 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1459 thiss!25197 rules!3568 input!3129 lt!1289316))))

(declare-fun suffix!1448 () List!39053)

(declare-fun isPrefix!3224 (List!39053 List!39053) Bool)

(declare-fun ++!9690 (List!39053 List!39053) List!39053)

(assert (=> b!3684823 (isPrefix!3224 lt!1289322 (++!9690 input!3129 suffix!1448))))

(declare-fun lt!1289315 () Unit!57009)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!555 (List!39053 List!39053 List!39053) Unit!57009)

(assert (=> b!3684823 (= lt!1289315 (lemmaPrefixStaysPrefixWhenAddingToSuffix!555 lt!1289322 input!3129 suffix!1448))))

(declare-datatypes ((tuple2!38808 0))(
  ( (tuple2!38809 (_1!22538 Token!11108) (_2!22538 List!39053)) )
))
(declare-fun lt!1289320 () tuple2!38808)

(assert (=> b!3684823 (isPrefix!3224 lt!1289322 (++!9690 lt!1289322 (_2!22538 lt!1289320)))))

(declare-fun lt!1289318 () Unit!57009)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2141 (List!39053 List!39053) Unit!57009)

(assert (=> b!3684823 (= lt!1289318 (lemmaConcatTwoListThenFirstIsPrefix!2141 lt!1289322 (_2!22538 lt!1289320)))))

(declare-datatypes ((Option!8354 0))(
  ( (None!8353) (Some!8353 (v!38299 tuple2!38808)) )
))
(declare-fun get!12891 (Option!8354) tuple2!38808)

(declare-fun maxPrefix!2988 (LexerInterface!5460 List!39054 List!39053) Option!8354)

(assert (=> b!3684823 (= lt!1289320 (get!12891 (maxPrefix!2988 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14502 (BalanceConc!23478) List!39053)

(declare-fun charsOf!3882 (Token!11108) BalanceConc!23478)

(assert (=> b!3684823 (= lt!1289322 (list!14502 (charsOf!3882 lt!1289316)))))

(declare-datatypes ((List!39055 0))(
  ( (Nil!38931) (Cons!38931 (h!44351 Token!11108) (t!301022 List!39055)) )
))
(declare-datatypes ((IArray!23871 0))(
  ( (IArray!23872 (innerList!11993 List!39055)) )
))
(declare-datatypes ((Conc!11933 0))(
  ( (Node!11933 (left!30371 Conc!11933) (right!30701 Conc!11933) (csize!24096 Int) (cheight!12144 Int)) (Leaf!18480 (xs!15135 IArray!23871) (csize!24097 Int)) (Empty!11933) )
))
(declare-datatypes ((BalanceConc!23480 0))(
  ( (BalanceConc!23481 (c!637407 Conc!11933)) )
))
(declare-datatypes ((tuple2!38810 0))(
  ( (tuple2!38811 (_1!22539 BalanceConc!23480) (_2!22539 BalanceConc!23478)) )
))
(declare-fun lt!1289321 () tuple2!38810)

(declare-fun head!7927 (List!39055) Token!11108)

(declare-fun list!14503 (BalanceConc!23480) List!39055)

(assert (=> b!3684823 (= lt!1289316 (head!7927 (list!14503 (_1!22539 lt!1289321))))))

(declare-fun tp!1120043 () Bool)

(declare-fun b!3684824 () Bool)

(declare-fun inv!52412 (String!43841) Bool)

(declare-fun inv!52415 (TokenValueInjection!11630) Bool)

(assert (=> b!3684824 (= e!2281772 (and tp!1120043 (inv!52412 (tag!6679 (h!44350 rules!3568))) (inv!52415 (transformation!5871 (h!44350 rules!3568))) e!2281765))))

(declare-fun b!3684825 () Bool)

(declare-fun res!1497176 () Bool)

(assert (=> b!3684825 (=> (not res!1497176) (not e!2281769))))

(declare-fun rulesInvariant!4857 (LexerInterface!5460 List!39054) Bool)

(assert (=> b!3684825 (= res!1497176 (rulesInvariant!4857 thiss!25197 rules!3568))))

(declare-fun b!3684826 () Bool)

(assert (=> b!3684826 (= e!2281769 e!2281763)))

(declare-fun res!1497173 () Bool)

(assert (=> b!3684826 (=> (not res!1497173) (not e!2281763))))

(declare-fun isEmpty!23138 (BalanceConc!23480) Bool)

(assert (=> b!3684826 (= res!1497173 (not (isEmpty!23138 (_1!22539 lt!1289321))))))

(declare-fun lex!2601 (LexerInterface!5460 List!39054 BalanceConc!23478) tuple2!38810)

(declare-fun seqFromList!4420 (List!39053) BalanceConc!23478)

(assert (=> b!3684826 (= lt!1289321 (lex!2601 thiss!25197 rules!3568 (seqFromList!4420 input!3129)))))

(assert (= (and start!346124 res!1497175) b!3684821))

(assert (= (and b!3684821 res!1497177) b!3684825))

(assert (= (and b!3684825 res!1497176) b!3684826))

(assert (= (and b!3684826 res!1497173) b!3684823))

(assert (= (and b!3684823 res!1497174) b!3684815))

(assert (= (and b!3684815 res!1497178) b!3684817))

(assert (= (and b!3684823 (not res!1497172)) b!3684819))

(assert (= b!3684824 b!3684822))

(assert (= b!3684820 b!3684824))

(assert (= (and start!346124 (is-Cons!38930 rules!3568)) b!3684820))

(assert (= (and start!346124 (is-Cons!38929 suffix!1448)) b!3684816))

(assert (= (and start!346124 (is-Cons!38929 input!3129)) b!3684818))

(declare-fun m!4196169 () Bool)

(assert (=> b!3684824 m!4196169))

(declare-fun m!4196171 () Bool)

(assert (=> b!3684824 m!4196171))

(declare-fun m!4196173 () Bool)

(assert (=> b!3684819 m!4196173))

(declare-fun m!4196175 () Bool)

(assert (=> b!3684826 m!4196175))

(declare-fun m!4196177 () Bool)

(assert (=> b!3684826 m!4196177))

(assert (=> b!3684826 m!4196177))

(declare-fun m!4196179 () Bool)

(assert (=> b!3684826 m!4196179))

(declare-fun m!4196181 () Bool)

(assert (=> b!3684821 m!4196181))

(declare-fun m!4196183 () Bool)

(assert (=> b!3684815 m!4196183))

(declare-fun m!4196185 () Bool)

(assert (=> b!3684815 m!4196185))

(declare-fun m!4196187 () Bool)

(assert (=> b!3684825 m!4196187))

(declare-fun m!4196189 () Bool)

(assert (=> b!3684823 m!4196189))

(declare-fun m!4196191 () Bool)

(assert (=> b!3684823 m!4196191))

(declare-fun m!4196193 () Bool)

(assert (=> b!3684823 m!4196193))

(declare-fun m!4196195 () Bool)

(assert (=> b!3684823 m!4196195))

(assert (=> b!3684823 m!4196189))

(declare-fun m!4196197 () Bool)

(assert (=> b!3684823 m!4196197))

(declare-fun m!4196199 () Bool)

(assert (=> b!3684823 m!4196199))

(declare-fun m!4196201 () Bool)

(assert (=> b!3684823 m!4196201))

(declare-fun m!4196203 () Bool)

(assert (=> b!3684823 m!4196203))

(declare-fun m!4196205 () Bool)

(assert (=> b!3684823 m!4196205))

(declare-fun m!4196207 () Bool)

(assert (=> b!3684823 m!4196207))

(assert (=> b!3684823 m!4196203))

(declare-fun m!4196209 () Bool)

(assert (=> b!3684823 m!4196209))

(declare-fun m!4196211 () Bool)

(assert (=> b!3684823 m!4196211))

(assert (=> b!3684823 m!4196209))

(declare-fun m!4196213 () Bool)

(assert (=> b!3684823 m!4196213))

(declare-fun m!4196215 () Bool)

(assert (=> b!3684823 m!4196215))

(declare-fun m!4196217 () Bool)

(assert (=> b!3684823 m!4196217))

(declare-fun m!4196219 () Bool)

(assert (=> b!3684823 m!4196219))

(assert (=> b!3684823 m!4196199))

(assert (=> b!3684823 m!4196215))

(push 1)

(assert (not b!3684816))

(assert (not b_next!98419))

(assert (not b!3684826))

(assert (not b!3684818))

(assert (not b_next!98417))

(assert (not b!3684819))

(assert tp_is_empty!18343)

(assert b_and!275391)

(assert b_and!275393)

(assert (not b!3684825))

(assert (not b!3684815))

(assert (not b!3684823))

(assert (not b!3684824))

(assert (not b!3684820))

(assert (not b!3684821))

(check-sat)

(pop 1)

(push 1)

(assert b_and!275391)

(assert b_and!275393)

(assert (not b_next!98419))

(assert (not b_next!98417))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1081553 () Bool)

(assert (=> d!1081553 (= (isEmpty!23137 rules!3568) (is-Nil!38930 rules!3568))))

(assert (=> b!3684821 d!1081553))

(declare-fun d!1081555 () Bool)

(declare-fun lt!1289353 () Bool)

(declare-fun isEmpty!23141 (List!39055) Bool)

(assert (=> d!1081555 (= lt!1289353 (isEmpty!23141 (list!14503 (_1!22539 lt!1289321))))))

(declare-fun isEmpty!23142 (Conc!11933) Bool)

(assert (=> d!1081555 (= lt!1289353 (isEmpty!23142 (c!637407 (_1!22539 lt!1289321))))))

(assert (=> d!1081555 (= (isEmpty!23138 (_1!22539 lt!1289321)) lt!1289353)))

(declare-fun bs!573818 () Bool)

(assert (= bs!573818 d!1081555))

(assert (=> bs!573818 m!4196189))

(assert (=> bs!573818 m!4196189))

(declare-fun m!4196273 () Bool)

(assert (=> bs!573818 m!4196273))

(declare-fun m!4196275 () Bool)

(assert (=> bs!573818 m!4196275))

(assert (=> b!3684826 d!1081555))

(declare-fun b!3684873 () Bool)

(declare-fun res!1497215 () Bool)

(declare-fun e!2281813 () Bool)

(assert (=> b!3684873 (=> (not res!1497215) (not e!2281813))))

(declare-fun lt!1289359 () tuple2!38810)

(declare-datatypes ((tuple2!38816 0))(
  ( (tuple2!38817 (_1!22542 List!39055) (_2!22542 List!39053)) )
))
(declare-fun lexList!1525 (LexerInterface!5460 List!39054 List!39053) tuple2!38816)

(assert (=> b!3684873 (= res!1497215 (= (list!14503 (_1!22539 lt!1289359)) (_1!22542 (lexList!1525 thiss!25197 rules!3568 (list!14502 (seqFromList!4420 input!3129))))))))

(declare-fun b!3684874 () Bool)

(declare-fun e!2281814 () Bool)

(assert (=> b!3684874 (= e!2281814 (not (isEmpty!23138 (_1!22539 lt!1289359))))))

(declare-fun d!1081557 () Bool)

(assert (=> d!1081557 e!2281813))

(declare-fun res!1497213 () Bool)

(assert (=> d!1081557 (=> (not res!1497213) (not e!2281813))))

(declare-fun e!2281815 () Bool)

(assert (=> d!1081557 (= res!1497213 e!2281815)))

(declare-fun c!637414 () Bool)

(declare-fun size!29763 (BalanceConc!23480) Int)

(assert (=> d!1081557 (= c!637414 (> (size!29763 (_1!22539 lt!1289359)) 0))))

(declare-fun lexTailRecV2!1131 (LexerInterface!5460 List!39054 BalanceConc!23478 BalanceConc!23478 BalanceConc!23478 BalanceConc!23480) tuple2!38810)

(assert (=> d!1081557 (= lt!1289359 (lexTailRecV2!1131 thiss!25197 rules!3568 (seqFromList!4420 input!3129) (BalanceConc!23479 Empty!11932) (seqFromList!4420 input!3129) (BalanceConc!23481 Empty!11933)))))

(assert (=> d!1081557 (= (lex!2601 thiss!25197 rules!3568 (seqFromList!4420 input!3129)) lt!1289359)))

(declare-fun b!3684875 () Bool)

(assert (=> b!3684875 (= e!2281813 (= (list!14502 (_2!22539 lt!1289359)) (_2!22542 (lexList!1525 thiss!25197 rules!3568 (list!14502 (seqFromList!4420 input!3129))))))))

(declare-fun b!3684876 () Bool)

(assert (=> b!3684876 (= e!2281815 e!2281814)))

(declare-fun res!1497214 () Bool)

(declare-fun size!29764 (BalanceConc!23478) Int)

(assert (=> b!3684876 (= res!1497214 (< (size!29764 (_2!22539 lt!1289359)) (size!29764 (seqFromList!4420 input!3129))))))

(assert (=> b!3684876 (=> (not res!1497214) (not e!2281814))))

(declare-fun b!3684877 () Bool)

(assert (=> b!3684877 (= e!2281815 (= (_2!22539 lt!1289359) (seqFromList!4420 input!3129)))))

(assert (= (and d!1081557 c!637414) b!3684876))

(assert (= (and d!1081557 (not c!637414)) b!3684877))

(assert (= (and b!3684876 res!1497214) b!3684874))

(assert (= (and d!1081557 res!1497213) b!3684873))

(assert (= (and b!3684873 res!1497215) b!3684875))

(declare-fun m!4196281 () Bool)

(assert (=> b!3684874 m!4196281))

(declare-fun m!4196283 () Bool)

(assert (=> d!1081557 m!4196283))

(assert (=> d!1081557 m!4196177))

(assert (=> d!1081557 m!4196177))

(declare-fun m!4196285 () Bool)

(assert (=> d!1081557 m!4196285))

(declare-fun m!4196287 () Bool)

(assert (=> b!3684873 m!4196287))

(assert (=> b!3684873 m!4196177))

(declare-fun m!4196289 () Bool)

(assert (=> b!3684873 m!4196289))

(assert (=> b!3684873 m!4196289))

(declare-fun m!4196291 () Bool)

(assert (=> b!3684873 m!4196291))

(declare-fun m!4196293 () Bool)

(assert (=> b!3684875 m!4196293))

(assert (=> b!3684875 m!4196177))

(assert (=> b!3684875 m!4196289))

(assert (=> b!3684875 m!4196289))

(assert (=> b!3684875 m!4196291))

(declare-fun m!4196295 () Bool)

(assert (=> b!3684876 m!4196295))

(assert (=> b!3684876 m!4196177))

(declare-fun m!4196297 () Bool)

(assert (=> b!3684876 m!4196297))

(assert (=> b!3684826 d!1081557))

(declare-fun d!1081563 () Bool)

(declare-fun fromListB!2041 (List!39053) BalanceConc!23478)

(assert (=> d!1081563 (= (seqFromList!4420 input!3129) (fromListB!2041 input!3129))))

(declare-fun bs!573820 () Bool)

(assert (= bs!573820 d!1081563))

(declare-fun m!4196299 () Bool)

(assert (=> bs!573820 m!4196299))

(assert (=> b!3684826 d!1081563))

(declare-fun b!3684921 () Bool)

(declare-fun e!2281843 () Bool)

(declare-fun e!2281839 () Bool)

(assert (=> b!3684921 (= e!2281843 e!2281839)))

(declare-fun res!1497248 () Bool)

(assert (=> b!3684921 (=> res!1497248 e!2281839)))

(declare-fun call!266815 () Bool)

(assert (=> b!3684921 (= res!1497248 call!266815)))

(declare-fun b!3684922 () Bool)

(declare-fun e!2281844 () Bool)

(declare-fun head!7929 (List!39053) C!21446)

(assert (=> b!3684922 (= e!2281844 (= (head!7929 lt!1289322) (c!637405 (regex!5871 lt!1289319))))))

(declare-fun b!3684923 () Bool)

(declare-fun res!1497245 () Bool)

(assert (=> b!3684923 (=> (not res!1497245) (not e!2281844))))

(assert (=> b!3684923 (= res!1497245 (not call!266815))))

(declare-fun b!3684924 () Bool)

(declare-fun res!1497242 () Bool)

(declare-fun e!2281841 () Bool)

(assert (=> b!3684924 (=> res!1497242 e!2281841)))

(assert (=> b!3684924 (= res!1497242 (not (is-ElementMatch!10630 (regex!5871 lt!1289319))))))

(declare-fun e!2281840 () Bool)

(assert (=> b!3684924 (= e!2281840 e!2281841)))

(declare-fun b!3684925 () Bool)

(assert (=> b!3684925 (= e!2281841 e!2281843)))

(declare-fun res!1497246 () Bool)

(assert (=> b!3684925 (=> (not res!1497246) (not e!2281843))))

(declare-fun lt!1289365 () Bool)

(assert (=> b!3684925 (= res!1497246 (not lt!1289365))))

(declare-fun b!3684926 () Bool)

(declare-fun e!2281842 () Bool)

(assert (=> b!3684926 (= e!2281842 (= lt!1289365 call!266815))))

(declare-fun b!3684927 () Bool)

(declare-fun res!1497244 () Bool)

(assert (=> b!3684927 (=> (not res!1497244) (not e!2281844))))

(declare-fun isEmpty!23145 (List!39053) Bool)

(declare-fun tail!5700 (List!39053) List!39053)

(assert (=> b!3684927 (= res!1497244 (isEmpty!23145 (tail!5700 lt!1289322)))))

(declare-fun b!3684928 () Bool)

(declare-fun res!1497247 () Bool)

(assert (=> b!3684928 (=> res!1497247 e!2281841)))

(assert (=> b!3684928 (= res!1497247 e!2281844)))

(declare-fun res!1497243 () Bool)

(assert (=> b!3684928 (=> (not res!1497243) (not e!2281844))))

(assert (=> b!3684928 (= res!1497243 lt!1289365)))

(declare-fun d!1081565 () Bool)

(assert (=> d!1081565 e!2281842))

(declare-fun c!637426 () Bool)

(assert (=> d!1081565 (= c!637426 (is-EmptyExpr!10630 (regex!5871 lt!1289319)))))

(declare-fun e!2281845 () Bool)

(assert (=> d!1081565 (= lt!1289365 e!2281845)))

(declare-fun c!637425 () Bool)

(assert (=> d!1081565 (= c!637425 (isEmpty!23145 lt!1289322))))

(declare-fun validRegex!4866 (Regex!10630) Bool)

(assert (=> d!1081565 (validRegex!4866 (regex!5871 lt!1289319))))

(assert (=> d!1081565 (= (matchR!5185 (regex!5871 lt!1289319) lt!1289322) lt!1289365)))

(declare-fun b!3684929 () Bool)

(declare-fun nullable!3704 (Regex!10630) Bool)

(assert (=> b!3684929 (= e!2281845 (nullable!3704 (regex!5871 lt!1289319)))))

(declare-fun b!3684930 () Bool)

(assert (=> b!3684930 (= e!2281840 (not lt!1289365))))

(declare-fun bm!266810 () Bool)

(assert (=> bm!266810 (= call!266815 (isEmpty!23145 lt!1289322))))

(declare-fun b!3684931 () Bool)

(assert (=> b!3684931 (= e!2281839 (not (= (head!7929 lt!1289322) (c!637405 (regex!5871 lt!1289319)))))))

(declare-fun b!3684932 () Bool)

(declare-fun derivativeStep!3250 (Regex!10630 C!21446) Regex!10630)

(assert (=> b!3684932 (= e!2281845 (matchR!5185 (derivativeStep!3250 (regex!5871 lt!1289319) (head!7929 lt!1289322)) (tail!5700 lt!1289322)))))

(declare-fun b!3684933 () Bool)

(assert (=> b!3684933 (= e!2281842 e!2281840)))

(declare-fun c!637424 () Bool)

(assert (=> b!3684933 (= c!637424 (is-EmptyLang!10630 (regex!5871 lt!1289319)))))

(declare-fun b!3684934 () Bool)

(declare-fun res!1497241 () Bool)

(assert (=> b!3684934 (=> res!1497241 e!2281839)))

(assert (=> b!3684934 (= res!1497241 (not (isEmpty!23145 (tail!5700 lt!1289322))))))

(assert (= (and d!1081565 c!637425) b!3684929))

(assert (= (and d!1081565 (not c!637425)) b!3684932))

(assert (= (and d!1081565 c!637426) b!3684926))

(assert (= (and d!1081565 (not c!637426)) b!3684933))

(assert (= (and b!3684933 c!637424) b!3684930))

(assert (= (and b!3684933 (not c!637424)) b!3684924))

(assert (= (and b!3684924 (not res!1497242)) b!3684928))

(assert (= (and b!3684928 res!1497243) b!3684923))

(assert (= (and b!3684923 res!1497245) b!3684927))

(assert (= (and b!3684927 res!1497244) b!3684922))

(assert (= (and b!3684928 (not res!1497247)) b!3684925))

(assert (= (and b!3684925 res!1497246) b!3684921))

(assert (= (and b!3684921 (not res!1497248)) b!3684934))

(assert (= (and b!3684934 (not res!1497241)) b!3684931))

(assert (= (or b!3684926 b!3684921 b!3684923) bm!266810))

(declare-fun m!4196321 () Bool)

(assert (=> bm!266810 m!4196321))

(declare-fun m!4196323 () Bool)

(assert (=> b!3684922 m!4196323))

(declare-fun m!4196325 () Bool)

(assert (=> b!3684929 m!4196325))

(assert (=> d!1081565 m!4196321))

(declare-fun m!4196327 () Bool)

(assert (=> d!1081565 m!4196327))

(assert (=> b!3684932 m!4196323))

(assert (=> b!3684932 m!4196323))

(declare-fun m!4196329 () Bool)

(assert (=> b!3684932 m!4196329))

(declare-fun m!4196331 () Bool)

(assert (=> b!3684932 m!4196331))

(assert (=> b!3684932 m!4196329))

(assert (=> b!3684932 m!4196331))

(declare-fun m!4196333 () Bool)

(assert (=> b!3684932 m!4196333))

(assert (=> b!3684934 m!4196331))

(assert (=> b!3684934 m!4196331))

(declare-fun m!4196335 () Bool)

(assert (=> b!3684934 m!4196335))

(assert (=> b!3684931 m!4196323))

(assert (=> b!3684927 m!4196331))

(assert (=> b!3684927 m!4196331))

(assert (=> b!3684927 m!4196335))

(assert (=> b!3684815 d!1081565))

(declare-fun d!1081571 () Bool)

(assert (=> d!1081571 (= (get!12890 lt!1289323) (v!38298 lt!1289323))))

(assert (=> b!3684815 d!1081571))

(declare-fun d!1081573 () Bool)

(declare-fun res!1497267 () Bool)

(declare-fun e!2281862 () Bool)

(assert (=> d!1081573 (=> (not res!1497267) (not e!2281862))))

(declare-fun rulesValid!2263 (LexerInterface!5460 List!39054) Bool)

(assert (=> d!1081573 (= res!1497267 (rulesValid!2263 thiss!25197 rules!3568))))

(assert (=> d!1081573 (= (rulesInvariant!4857 thiss!25197 rules!3568) e!2281862)))

(declare-fun b!3684965 () Bool)

(declare-datatypes ((List!39060 0))(
  ( (Nil!38936) (Cons!38936 (h!44356 String!43841) (t!301035 List!39060)) )
))
(declare-fun noDuplicateTag!2259 (LexerInterface!5460 List!39054 List!39060) Bool)

(assert (=> b!3684965 (= e!2281862 (noDuplicateTag!2259 thiss!25197 rules!3568 Nil!38936))))

(assert (= (and d!1081573 res!1497267) b!3684965))

(declare-fun m!4196337 () Bool)

(assert (=> d!1081573 m!4196337))

(declare-fun m!4196339 () Bool)

(assert (=> b!3684965 m!4196339))

(assert (=> b!3684825 d!1081573))

(declare-fun d!1081575 () Bool)

(assert (=> d!1081575 true))

(declare-fun lt!1289373 () Bool)

(declare-fun lambda!124848 () Int)

(declare-fun forall!8162 (List!39054 Int) Bool)

(assert (=> d!1081575 (= lt!1289373 (forall!8162 rules!3568 lambda!124848))))

(declare-fun e!2281881 () Bool)

(assert (=> d!1081575 (= lt!1289373 e!2281881)))

(declare-fun res!1497288 () Bool)

(assert (=> d!1081575 (=> res!1497288 e!2281881)))

(assert (=> d!1081575 (= res!1497288 (not (is-Cons!38930 rules!3568)))))

(assert (=> d!1081575 (= (rulesValidInductive!2093 thiss!25197 rules!3568) lt!1289373)))

(declare-fun b!3684991 () Bool)

(declare-fun e!2281882 () Bool)

(assert (=> b!3684991 (= e!2281881 e!2281882)))

(declare-fun res!1497287 () Bool)

(assert (=> b!3684991 (=> (not res!1497287) (not e!2281882))))

(declare-fun ruleValid!2119 (LexerInterface!5460 Rule!11542) Bool)

(assert (=> b!3684991 (= res!1497287 (ruleValid!2119 thiss!25197 (h!44350 rules!3568)))))

(declare-fun b!3684992 () Bool)

(assert (=> b!3684992 (= e!2281882 (rulesValidInductive!2093 thiss!25197 (t!301021 rules!3568)))))

(assert (= (and d!1081575 (not res!1497288)) b!3684991))

(assert (= (and b!3684991 res!1497287) b!3684992))

(declare-fun m!4196361 () Bool)

(assert (=> d!1081575 m!4196361))

(declare-fun m!4196363 () Bool)

(assert (=> b!3684991 m!4196363))

(declare-fun m!4196365 () Bool)

(assert (=> b!3684992 m!4196365))

(assert (=> b!3684819 d!1081575))

(declare-fun d!1081585 () Bool)

(assert (=> d!1081585 (= (inv!52412 (tag!6679 (h!44350 rules!3568))) (= (mod (str.len (value!187784 (tag!6679 (h!44350 rules!3568)))) 2) 0))))

(assert (=> b!3684824 d!1081585))

(declare-fun d!1081587 () Bool)

(declare-fun res!1497291 () Bool)

(declare-fun e!2281885 () Bool)

(assert (=> d!1081587 (=> (not res!1497291) (not e!2281885))))

(declare-fun semiInverseModEq!2506 (Int Int) Bool)

(assert (=> d!1081587 (= res!1497291 (semiInverseModEq!2506 (toChars!8038 (transformation!5871 (h!44350 rules!3568))) (toValue!8179 (transformation!5871 (h!44350 rules!3568)))))))

(assert (=> d!1081587 (= (inv!52415 (transformation!5871 (h!44350 rules!3568))) e!2281885)))

(declare-fun b!3684997 () Bool)

(declare-fun equivClasses!2405 (Int Int) Bool)

(assert (=> b!3684997 (= e!2281885 (equivClasses!2405 (toChars!8038 (transformation!5871 (h!44350 rules!3568))) (toValue!8179 (transformation!5871 (h!44350 rules!3568)))))))

(assert (= (and d!1081587 res!1497291) b!3684997))

(declare-fun m!4196367 () Bool)

(assert (=> d!1081587 m!4196367))

(declare-fun m!4196369 () Bool)

(assert (=> b!3684997 m!4196369))

(assert (=> b!3684824 d!1081587))

(declare-fun d!1081589 () Bool)

(assert (=> d!1081589 (= (get!12891 (maxPrefix!2988 thiss!25197 rules!3568 input!3129)) (v!38299 (maxPrefix!2988 thiss!25197 rules!3568 input!3129)))))

(assert (=> b!3684823 d!1081589))

(declare-fun d!1081591 () Bool)

(declare-fun e!2281891 () Bool)

(assert (=> d!1081591 e!2281891))

(declare-fun res!1497296 () Bool)

(assert (=> d!1081591 (=> (not res!1497296) (not e!2281891))))

(declare-fun lt!1289376 () List!39053)

(declare-fun content!5642 (List!39053) (Set C!21446))

(assert (=> d!1081591 (= res!1497296 (= (content!5642 lt!1289376) (set.union (content!5642 lt!1289322) (content!5642 (_2!22538 lt!1289320)))))))

(declare-fun e!2281890 () List!39053)

(assert (=> d!1081591 (= lt!1289376 e!2281890)))

(declare-fun c!637438 () Bool)

(assert (=> d!1081591 (= c!637438 (is-Nil!38929 lt!1289322))))

(assert (=> d!1081591 (= (++!9690 lt!1289322 (_2!22538 lt!1289320)) lt!1289376)))

(declare-fun b!3685009 () Bool)

(assert (=> b!3685009 (= e!2281891 (or (not (= (_2!22538 lt!1289320) Nil!38929)) (= lt!1289376 lt!1289322)))))

(declare-fun b!3685007 () Bool)

(assert (=> b!3685007 (= e!2281890 (Cons!38929 (h!44349 lt!1289322) (++!9690 (t!301020 lt!1289322) (_2!22538 lt!1289320))))))

(declare-fun b!3685008 () Bool)

(declare-fun res!1497297 () Bool)

(assert (=> b!3685008 (=> (not res!1497297) (not e!2281891))))

(declare-fun size!29767 (List!39053) Int)

(assert (=> b!3685008 (= res!1497297 (= (size!29767 lt!1289376) (+ (size!29767 lt!1289322) (size!29767 (_2!22538 lt!1289320)))))))

(declare-fun b!3685006 () Bool)

(assert (=> b!3685006 (= e!2281890 (_2!22538 lt!1289320))))

(assert (= (and d!1081591 c!637438) b!3685006))

(assert (= (and d!1081591 (not c!637438)) b!3685007))

(assert (= (and d!1081591 res!1497296) b!3685008))

(assert (= (and b!3685008 res!1497297) b!3685009))

(declare-fun m!4196371 () Bool)

(assert (=> d!1081591 m!4196371))

(declare-fun m!4196373 () Bool)

(assert (=> d!1081591 m!4196373))

(declare-fun m!4196375 () Bool)

(assert (=> d!1081591 m!4196375))

(declare-fun m!4196377 () Bool)

(assert (=> b!3685007 m!4196377))

(declare-fun m!4196379 () Bool)

(assert (=> b!3685008 m!4196379))

(declare-fun m!4196381 () Bool)

(assert (=> b!3685008 m!4196381))

(declare-fun m!4196383 () Bool)

(assert (=> b!3685008 m!4196383))

(assert (=> b!3684823 d!1081591))

(declare-fun d!1081593 () Bool)

(declare-fun lt!1289379 () BalanceConc!23478)

(assert (=> d!1081593 (= (list!14502 lt!1289379) (originalCharacters!6585 lt!1289316))))

(declare-fun dynLambda!17072 (Int TokenValue!6101) BalanceConc!23478)

(assert (=> d!1081593 (= lt!1289379 (dynLambda!17072 (toChars!8038 (transformation!5871 (rule!8713 lt!1289316))) (value!187785 lt!1289316)))))

(assert (=> d!1081593 (= (charsOf!3882 lt!1289316) lt!1289379)))

(declare-fun b_lambda!109439 () Bool)

(assert (=> (not b_lambda!109439) (not d!1081593)))

(declare-fun tb!213705 () Bool)

(declare-fun t!301028 () Bool)

(assert (=> (and b!3684822 (= (toChars!8038 (transformation!5871 (h!44350 rules!3568))) (toChars!8038 (transformation!5871 (rule!8713 lt!1289316)))) t!301028) tb!213705))

(declare-fun b!3685018 () Bool)

(declare-fun e!2281896 () Bool)

(declare-fun tp!1120067 () Bool)

(declare-fun inv!52417 (Conc!11932) Bool)

(assert (=> b!3685018 (= e!2281896 (and (inv!52417 (c!637406 (dynLambda!17072 (toChars!8038 (transformation!5871 (rule!8713 lt!1289316))) (value!187785 lt!1289316)))) tp!1120067))))

(declare-fun result!260062 () Bool)

(declare-fun inv!52418 (BalanceConc!23478) Bool)

(assert (=> tb!213705 (= result!260062 (and (inv!52418 (dynLambda!17072 (toChars!8038 (transformation!5871 (rule!8713 lt!1289316))) (value!187785 lt!1289316))) e!2281896))))

(assert (= tb!213705 b!3685018))

(declare-fun m!4196385 () Bool)

(assert (=> b!3685018 m!4196385))

(declare-fun m!4196387 () Bool)

(assert (=> tb!213705 m!4196387))

(assert (=> d!1081593 t!301028))

(declare-fun b_and!275399 () Bool)

(assert (= b_and!275393 (and (=> t!301028 result!260062) b_and!275399)))

(declare-fun m!4196391 () Bool)

(assert (=> d!1081593 m!4196391))

(declare-fun m!4196395 () Bool)

(assert (=> d!1081593 m!4196395))

(assert (=> b!3684823 d!1081593))

(declare-fun d!1081595 () Bool)

(declare-fun list!14506 (Conc!11933) List!39055)

(assert (=> d!1081595 (= (list!14503 (_1!22539 lt!1289321)) (list!14506 (c!637407 (_1!22539 lt!1289321))))))

(declare-fun bs!573822 () Bool)

(assert (= bs!573822 d!1081595))

(declare-fun m!4196399 () Bool)

(assert (=> bs!573822 m!4196399))

(assert (=> b!3684823 d!1081595))

(declare-fun b!3685040 () Bool)

(declare-fun res!1497316 () Bool)

(declare-fun e!2281909 () Bool)

(assert (=> b!3685040 (=> (not res!1497316) (not e!2281909))))

(assert (=> b!3685040 (= res!1497316 (= (head!7929 lt!1289322) (head!7929 (++!9690 input!3129 suffix!1448))))))

(declare-fun d!1081599 () Bool)

(declare-fun e!2281910 () Bool)

(assert (=> d!1081599 e!2281910))

(declare-fun res!1497314 () Bool)

(assert (=> d!1081599 (=> res!1497314 e!2281910)))

(declare-fun lt!1289386 () Bool)

(assert (=> d!1081599 (= res!1497314 (not lt!1289386))))

(declare-fun e!2281911 () Bool)

(assert (=> d!1081599 (= lt!1289386 e!2281911)))

(declare-fun res!1497317 () Bool)

(assert (=> d!1081599 (=> res!1497317 e!2281911)))

(assert (=> d!1081599 (= res!1497317 (is-Nil!38929 lt!1289322))))

(assert (=> d!1081599 (= (isPrefix!3224 lt!1289322 (++!9690 input!3129 suffix!1448)) lt!1289386)))

(declare-fun b!3685039 () Bool)

(assert (=> b!3685039 (= e!2281911 e!2281909)))

(declare-fun res!1497315 () Bool)

(assert (=> b!3685039 (=> (not res!1497315) (not e!2281909))))

(assert (=> b!3685039 (= res!1497315 (not (is-Nil!38929 (++!9690 input!3129 suffix!1448))))))

(declare-fun b!3685042 () Bool)

(assert (=> b!3685042 (= e!2281910 (>= (size!29767 (++!9690 input!3129 suffix!1448)) (size!29767 lt!1289322)))))

(declare-fun b!3685041 () Bool)

(assert (=> b!3685041 (= e!2281909 (isPrefix!3224 (tail!5700 lt!1289322) (tail!5700 (++!9690 input!3129 suffix!1448))))))

(assert (= (and d!1081599 (not res!1497317)) b!3685039))

(assert (= (and b!3685039 res!1497315) b!3685040))

(assert (= (and b!3685040 res!1497316) b!3685041))

(assert (= (and d!1081599 (not res!1497314)) b!3685042))

(assert (=> b!3685040 m!4196323))

(assert (=> b!3685040 m!4196209))

(declare-fun m!4196415 () Bool)

(assert (=> b!3685040 m!4196415))

(assert (=> b!3685042 m!4196209))

(declare-fun m!4196417 () Bool)

(assert (=> b!3685042 m!4196417))

(assert (=> b!3685042 m!4196381))

(assert (=> b!3685041 m!4196331))

(assert (=> b!3685041 m!4196209))

(declare-fun m!4196419 () Bool)

(assert (=> b!3685041 m!4196419))

(assert (=> b!3685041 m!4196331))

(assert (=> b!3685041 m!4196419))

(declare-fun m!4196421 () Bool)

(assert (=> b!3685041 m!4196421))

(assert (=> b!3684823 d!1081599))

(declare-fun d!1081603 () Bool)

(declare-fun isEmpty!23147 (Option!8353) Bool)

(assert (=> d!1081603 (= (isDefined!6570 lt!1289323) (not (isEmpty!23147 lt!1289323)))))

(declare-fun bs!573823 () Bool)

(assert (= bs!573823 d!1081603))

(declare-fun m!4196423 () Bool)

(assert (=> bs!573823 m!4196423))

(assert (=> b!3684823 d!1081603))

(declare-fun d!1081605 () Bool)

(declare-fun e!2281913 () Bool)

(assert (=> d!1081605 e!2281913))

(declare-fun res!1497318 () Bool)

(assert (=> d!1081605 (=> (not res!1497318) (not e!2281913))))

(declare-fun lt!1289387 () List!39053)

(assert (=> d!1081605 (= res!1497318 (= (content!5642 lt!1289387) (set.union (content!5642 input!3129) (content!5642 suffix!1448))))))

(declare-fun e!2281912 () List!39053)

(assert (=> d!1081605 (= lt!1289387 e!2281912)))

(declare-fun c!637442 () Bool)

(assert (=> d!1081605 (= c!637442 (is-Nil!38929 input!3129))))

(assert (=> d!1081605 (= (++!9690 input!3129 suffix!1448) lt!1289387)))

(declare-fun b!3685046 () Bool)

(assert (=> b!3685046 (= e!2281913 (or (not (= suffix!1448 Nil!38929)) (= lt!1289387 input!3129)))))

(declare-fun b!3685044 () Bool)

(assert (=> b!3685044 (= e!2281912 (Cons!38929 (h!44349 input!3129) (++!9690 (t!301020 input!3129) suffix!1448)))))

(declare-fun b!3685045 () Bool)

(declare-fun res!1497319 () Bool)

(assert (=> b!3685045 (=> (not res!1497319) (not e!2281913))))

(assert (=> b!3685045 (= res!1497319 (= (size!29767 lt!1289387) (+ (size!29767 input!3129) (size!29767 suffix!1448))))))

(declare-fun b!3685043 () Bool)

(assert (=> b!3685043 (= e!2281912 suffix!1448)))

(assert (= (and d!1081605 c!637442) b!3685043))

(assert (= (and d!1081605 (not c!637442)) b!3685044))

(assert (= (and d!1081605 res!1497318) b!3685045))

(assert (= (and b!3685045 res!1497319) b!3685046))

(declare-fun m!4196425 () Bool)

(assert (=> d!1081605 m!4196425))

(declare-fun m!4196427 () Bool)

(assert (=> d!1081605 m!4196427))

(declare-fun m!4196429 () Bool)

(assert (=> d!1081605 m!4196429))

(declare-fun m!4196431 () Bool)

(assert (=> b!3685044 m!4196431))

(declare-fun m!4196433 () Bool)

(assert (=> b!3685045 m!4196433))

(declare-fun m!4196435 () Bool)

(assert (=> b!3685045 m!4196435))

(declare-fun m!4196437 () Bool)

(assert (=> b!3685045 m!4196437))

(assert (=> b!3684823 d!1081605))

(declare-fun b!3685048 () Bool)

(declare-fun res!1497322 () Bool)

(declare-fun e!2281914 () Bool)

(assert (=> b!3685048 (=> (not res!1497322) (not e!2281914))))

(assert (=> b!3685048 (= res!1497322 (= (head!7929 lt!1289322) (head!7929 (++!9690 lt!1289322 (_2!22538 lt!1289320)))))))

(declare-fun d!1081607 () Bool)

(declare-fun e!2281915 () Bool)

(assert (=> d!1081607 e!2281915))

(declare-fun res!1497320 () Bool)

(assert (=> d!1081607 (=> res!1497320 e!2281915)))

(declare-fun lt!1289388 () Bool)

(assert (=> d!1081607 (= res!1497320 (not lt!1289388))))

(declare-fun e!2281916 () Bool)

(assert (=> d!1081607 (= lt!1289388 e!2281916)))

(declare-fun res!1497323 () Bool)

(assert (=> d!1081607 (=> res!1497323 e!2281916)))

(assert (=> d!1081607 (= res!1497323 (is-Nil!38929 lt!1289322))))

(assert (=> d!1081607 (= (isPrefix!3224 lt!1289322 (++!9690 lt!1289322 (_2!22538 lt!1289320))) lt!1289388)))

(declare-fun b!3685047 () Bool)

(assert (=> b!3685047 (= e!2281916 e!2281914)))

(declare-fun res!1497321 () Bool)

(assert (=> b!3685047 (=> (not res!1497321) (not e!2281914))))

(assert (=> b!3685047 (= res!1497321 (not (is-Nil!38929 (++!9690 lt!1289322 (_2!22538 lt!1289320)))))))

(declare-fun b!3685050 () Bool)

(assert (=> b!3685050 (= e!2281915 (>= (size!29767 (++!9690 lt!1289322 (_2!22538 lt!1289320))) (size!29767 lt!1289322)))))

(declare-fun b!3685049 () Bool)

(assert (=> b!3685049 (= e!2281914 (isPrefix!3224 (tail!5700 lt!1289322) (tail!5700 (++!9690 lt!1289322 (_2!22538 lt!1289320)))))))

(assert (= (and d!1081607 (not res!1497323)) b!3685047))

(assert (= (and b!3685047 res!1497321) b!3685048))

(assert (= (and b!3685048 res!1497322) b!3685049))

(assert (= (and d!1081607 (not res!1497320)) b!3685050))

(assert (=> b!3685048 m!4196323))

(assert (=> b!3685048 m!4196203))

(declare-fun m!4196439 () Bool)

(assert (=> b!3685048 m!4196439))

(assert (=> b!3685050 m!4196203))

(declare-fun m!4196441 () Bool)

(assert (=> b!3685050 m!4196441))

(assert (=> b!3685050 m!4196381))

(assert (=> b!3685049 m!4196331))

(assert (=> b!3685049 m!4196203))

(declare-fun m!4196443 () Bool)

(assert (=> b!3685049 m!4196443))

(assert (=> b!3685049 m!4196331))

(assert (=> b!3685049 m!4196443))

(declare-fun m!4196445 () Bool)

(assert (=> b!3685049 m!4196445))

(assert (=> b!3684823 d!1081607))

(declare-fun b!3685051 () Bool)

(declare-fun e!2281921 () Bool)

(declare-fun e!2281917 () Bool)

(assert (=> b!3685051 (= e!2281921 e!2281917)))

(declare-fun res!1497331 () Bool)

(assert (=> b!3685051 (=> res!1497331 e!2281917)))

(declare-fun call!266819 () Bool)

(assert (=> b!3685051 (= res!1497331 call!266819)))

(declare-fun b!3685052 () Bool)

(declare-fun e!2281922 () Bool)

(assert (=> b!3685052 (= e!2281922 (= (head!7929 lt!1289322) (c!637405 (regex!5871 (rule!8713 lt!1289316)))))))

(declare-fun b!3685053 () Bool)

(declare-fun res!1497328 () Bool)

(assert (=> b!3685053 (=> (not res!1497328) (not e!2281922))))

(assert (=> b!3685053 (= res!1497328 (not call!266819))))

(declare-fun b!3685054 () Bool)

(declare-fun res!1497325 () Bool)

(declare-fun e!2281919 () Bool)

(assert (=> b!3685054 (=> res!1497325 e!2281919)))

(assert (=> b!3685054 (= res!1497325 (not (is-ElementMatch!10630 (regex!5871 (rule!8713 lt!1289316)))))))

(declare-fun e!2281918 () Bool)

(assert (=> b!3685054 (= e!2281918 e!2281919)))

(declare-fun b!3685055 () Bool)

(assert (=> b!3685055 (= e!2281919 e!2281921)))

(declare-fun res!1497329 () Bool)

(assert (=> b!3685055 (=> (not res!1497329) (not e!2281921))))

(declare-fun lt!1289389 () Bool)

(assert (=> b!3685055 (= res!1497329 (not lt!1289389))))

(declare-fun b!3685056 () Bool)

(declare-fun e!2281920 () Bool)

(assert (=> b!3685056 (= e!2281920 (= lt!1289389 call!266819))))

(declare-fun b!3685057 () Bool)

(declare-fun res!1497327 () Bool)

(assert (=> b!3685057 (=> (not res!1497327) (not e!2281922))))

(assert (=> b!3685057 (= res!1497327 (isEmpty!23145 (tail!5700 lt!1289322)))))

(declare-fun b!3685058 () Bool)

(declare-fun res!1497330 () Bool)

(assert (=> b!3685058 (=> res!1497330 e!2281919)))

(assert (=> b!3685058 (= res!1497330 e!2281922)))

(declare-fun res!1497326 () Bool)

(assert (=> b!3685058 (=> (not res!1497326) (not e!2281922))))

(assert (=> b!3685058 (= res!1497326 lt!1289389)))

(declare-fun d!1081609 () Bool)

(assert (=> d!1081609 e!2281920))

(declare-fun c!637445 () Bool)

(assert (=> d!1081609 (= c!637445 (is-EmptyExpr!10630 (regex!5871 (rule!8713 lt!1289316))))))

(declare-fun e!2281923 () Bool)

(assert (=> d!1081609 (= lt!1289389 e!2281923)))

(declare-fun c!637444 () Bool)

(assert (=> d!1081609 (= c!637444 (isEmpty!23145 lt!1289322))))

(assert (=> d!1081609 (validRegex!4866 (regex!5871 (rule!8713 lt!1289316)))))

(assert (=> d!1081609 (= (matchR!5185 (regex!5871 (rule!8713 lt!1289316)) lt!1289322) lt!1289389)))

(declare-fun b!3685059 () Bool)

(assert (=> b!3685059 (= e!2281923 (nullable!3704 (regex!5871 (rule!8713 lt!1289316))))))

(declare-fun b!3685060 () Bool)

(assert (=> b!3685060 (= e!2281918 (not lt!1289389))))

(declare-fun bm!266814 () Bool)

(assert (=> bm!266814 (= call!266819 (isEmpty!23145 lt!1289322))))

(declare-fun b!3685061 () Bool)

(assert (=> b!3685061 (= e!2281917 (not (= (head!7929 lt!1289322) (c!637405 (regex!5871 (rule!8713 lt!1289316))))))))

(declare-fun b!3685062 () Bool)

(assert (=> b!3685062 (= e!2281923 (matchR!5185 (derivativeStep!3250 (regex!5871 (rule!8713 lt!1289316)) (head!7929 lt!1289322)) (tail!5700 lt!1289322)))))

(declare-fun b!3685063 () Bool)

(assert (=> b!3685063 (= e!2281920 e!2281918)))

(declare-fun c!637443 () Bool)

(assert (=> b!3685063 (= c!637443 (is-EmptyLang!10630 (regex!5871 (rule!8713 lt!1289316))))))

(declare-fun b!3685064 () Bool)

(declare-fun res!1497324 () Bool)

(assert (=> b!3685064 (=> res!1497324 e!2281917)))

(assert (=> b!3685064 (= res!1497324 (not (isEmpty!23145 (tail!5700 lt!1289322))))))

(assert (= (and d!1081609 c!637444) b!3685059))

(assert (= (and d!1081609 (not c!637444)) b!3685062))

(assert (= (and d!1081609 c!637445) b!3685056))

(assert (= (and d!1081609 (not c!637445)) b!3685063))

(assert (= (and b!3685063 c!637443) b!3685060))

(assert (= (and b!3685063 (not c!637443)) b!3685054))

(assert (= (and b!3685054 (not res!1497325)) b!3685058))

(assert (= (and b!3685058 res!1497326) b!3685053))

(assert (= (and b!3685053 res!1497328) b!3685057))

(assert (= (and b!3685057 res!1497327) b!3685052))

(assert (= (and b!3685058 (not res!1497330)) b!3685055))

(assert (= (and b!3685055 res!1497329) b!3685051))

(assert (= (and b!3685051 (not res!1497331)) b!3685064))

(assert (= (and b!3685064 (not res!1497324)) b!3685061))

(assert (= (or b!3685056 b!3685051 b!3685053) bm!266814))

(assert (=> bm!266814 m!4196321))

(assert (=> b!3685052 m!4196323))

(declare-fun m!4196447 () Bool)

(assert (=> b!3685059 m!4196447))

(assert (=> d!1081609 m!4196321))

(declare-fun m!4196449 () Bool)

(assert (=> d!1081609 m!4196449))

(assert (=> b!3685062 m!4196323))

(assert (=> b!3685062 m!4196323))

(declare-fun m!4196451 () Bool)

(assert (=> b!3685062 m!4196451))

(assert (=> b!3685062 m!4196331))

(assert (=> b!3685062 m!4196451))

(assert (=> b!3685062 m!4196331))

(declare-fun m!4196453 () Bool)

(assert (=> b!3685062 m!4196453))

(assert (=> b!3685064 m!4196331))

(assert (=> b!3685064 m!4196331))

(assert (=> b!3685064 m!4196335))

(assert (=> b!3685061 m!4196323))

(assert (=> b!3685057 m!4196331))

(assert (=> b!3685057 m!4196331))

(assert (=> b!3685057 m!4196335))

(assert (=> b!3684823 d!1081609))

(declare-fun d!1081611 () Bool)

(assert (=> d!1081611 (isPrefix!3224 lt!1289322 (++!9690 input!3129 suffix!1448))))

(declare-fun lt!1289392 () Unit!57009)

(declare-fun choose!22051 (List!39053 List!39053 List!39053) Unit!57009)

(assert (=> d!1081611 (= lt!1289392 (choose!22051 lt!1289322 input!3129 suffix!1448))))

(assert (=> d!1081611 (isPrefix!3224 lt!1289322 input!3129)))

(assert (=> d!1081611 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!555 lt!1289322 input!3129 suffix!1448) lt!1289392)))

(declare-fun bs!573824 () Bool)

(assert (= bs!573824 d!1081611))

(assert (=> bs!573824 m!4196209))

(assert (=> bs!573824 m!4196209))

(assert (=> bs!573824 m!4196213))

(declare-fun m!4196455 () Bool)

(assert (=> bs!573824 m!4196455))

(declare-fun m!4196457 () Bool)

(assert (=> bs!573824 m!4196457))

(assert (=> b!3684823 d!1081611))

(declare-fun b!3685099 () Bool)

(declare-fun e!2281948 () Bool)

(declare-fun e!2281947 () Bool)

(assert (=> b!3685099 (= e!2281948 e!2281947)))

(declare-fun res!1497357 () Bool)

(assert (=> b!3685099 (=> (not res!1497357) (not e!2281947))))

(declare-fun lt!1289409 () Option!8353)

(declare-fun contains!7778 (List!39054 Rule!11542) Bool)

(assert (=> b!3685099 (= res!1497357 (contains!7778 rules!3568 (get!12890 lt!1289409)))))

(declare-fun d!1081613 () Bool)

(assert (=> d!1081613 e!2281948))

(declare-fun res!1497356 () Bool)

(assert (=> d!1081613 (=> res!1497356 e!2281948)))

(assert (=> d!1081613 (= res!1497356 (isEmpty!23147 lt!1289409))))

(declare-fun e!2281946 () Option!8353)

(assert (=> d!1081613 (= lt!1289409 e!2281946)))

(declare-fun c!637452 () Bool)

(assert (=> d!1081613 (= c!637452 (and (is-Cons!38930 rules!3568) (= (tag!6679 (h!44350 rules!3568)) (tag!6679 (rule!8713 lt!1289316)))))))

(assert (=> d!1081613 (rulesInvariant!4857 thiss!25197 rules!3568)))

(assert (=> d!1081613 (= (getRuleFromTag!1459 thiss!25197 rules!3568 (tag!6679 (rule!8713 lt!1289316))) lt!1289409)))

(declare-fun b!3685100 () Bool)

(assert (=> b!3685100 (= e!2281947 (= (tag!6679 (get!12890 lt!1289409)) (tag!6679 (rule!8713 lt!1289316))))))

(declare-fun b!3685101 () Bool)

(declare-fun lt!1289408 () Unit!57009)

(declare-fun lt!1289410 () Unit!57009)

(assert (=> b!3685101 (= lt!1289408 lt!1289410)))

(assert (=> b!3685101 (rulesInvariant!4857 thiss!25197 (t!301021 rules!3568))))

(declare-fun lemmaInvariantOnRulesThenOnTail!630 (LexerInterface!5460 Rule!11542 List!39054) Unit!57009)

(assert (=> b!3685101 (= lt!1289410 (lemmaInvariantOnRulesThenOnTail!630 thiss!25197 (h!44350 rules!3568) (t!301021 rules!3568)))))

(declare-fun e!2281949 () Option!8353)

(assert (=> b!3685101 (= e!2281949 (getRuleFromTag!1459 thiss!25197 (t!301021 rules!3568) (tag!6679 (rule!8713 lt!1289316))))))

(declare-fun b!3685102 () Bool)

(assert (=> b!3685102 (= e!2281949 None!8352)))

(declare-fun b!3685103 () Bool)

(assert (=> b!3685103 (= e!2281946 (Some!8352 (h!44350 rules!3568)))))

(declare-fun b!3685104 () Bool)

(assert (=> b!3685104 (= e!2281946 e!2281949)))

(declare-fun c!637451 () Bool)

(assert (=> b!3685104 (= c!637451 (and (is-Cons!38930 rules!3568) (not (= (tag!6679 (h!44350 rules!3568)) (tag!6679 (rule!8713 lt!1289316))))))))

(assert (= (and d!1081613 c!637452) b!3685103))

(assert (= (and d!1081613 (not c!637452)) b!3685104))

(assert (= (and b!3685104 c!637451) b!3685101))

(assert (= (and b!3685104 (not c!637451)) b!3685102))

(assert (= (and d!1081613 (not res!1497356)) b!3685099))

(assert (= (and b!3685099 res!1497357) b!3685100))

(declare-fun m!4196493 () Bool)

(assert (=> b!3685099 m!4196493))

(assert (=> b!3685099 m!4196493))

(declare-fun m!4196495 () Bool)

(assert (=> b!3685099 m!4196495))

(declare-fun m!4196497 () Bool)

(assert (=> d!1081613 m!4196497))

(assert (=> d!1081613 m!4196187))

(assert (=> b!3685100 m!4196493))

(declare-fun m!4196499 () Bool)

(assert (=> b!3685101 m!4196499))

(declare-fun m!4196501 () Bool)

(assert (=> b!3685101 m!4196501))

(declare-fun m!4196503 () Bool)

(assert (=> b!3685101 m!4196503))

(assert (=> b!3684823 d!1081613))

(declare-fun d!1081623 () Bool)

(assert (=> d!1081623 (= (head!7927 (list!14503 (_1!22539 lt!1289321))) (h!44351 (list!14503 (_1!22539 lt!1289321))))))

(assert (=> b!3684823 d!1081623))

(declare-fun b!3685160 () Bool)

(declare-fun res!1497391 () Bool)

(declare-fun e!2281979 () Bool)

(assert (=> b!3685160 (=> (not res!1497391) (not e!2281979))))

(declare-fun lt!1289442 () Option!8354)

(declare-fun apply!9357 (TokenValueInjection!11630 BalanceConc!23478) TokenValue!6101)

(assert (=> b!3685160 (= res!1497391 (= (value!187785 (_1!22538 (get!12891 lt!1289442))) (apply!9357 (transformation!5871 (rule!8713 (_1!22538 (get!12891 lt!1289442)))) (seqFromList!4420 (originalCharacters!6585 (_1!22538 (get!12891 lt!1289442)))))))))

(declare-fun b!3685161 () Bool)

(declare-fun res!1497392 () Bool)

(assert (=> b!3685161 (=> (not res!1497392) (not e!2281979))))

(assert (=> b!3685161 (= res!1497392 (= (list!14502 (charsOf!3882 (_1!22538 (get!12891 lt!1289442)))) (originalCharacters!6585 (_1!22538 (get!12891 lt!1289442)))))))

(declare-fun b!3685163 () Bool)

(declare-fun res!1497390 () Bool)

(assert (=> b!3685163 (=> (not res!1497390) (not e!2281979))))

(assert (=> b!3685163 (= res!1497390 (matchR!5185 (regex!5871 (rule!8713 (_1!22538 (get!12891 lt!1289442)))) (list!14502 (charsOf!3882 (_1!22538 (get!12891 lt!1289442))))))))

(declare-fun bm!266818 () Bool)

(declare-fun call!266823 () Option!8354)

(declare-fun maxPrefixOneRule!2116 (LexerInterface!5460 Rule!11542 List!39053) Option!8354)

(assert (=> bm!266818 (= call!266823 (maxPrefixOneRule!2116 thiss!25197 (h!44350 rules!3568) input!3129))))

(declare-fun b!3685164 () Bool)

(assert (=> b!3685164 (= e!2281979 (contains!7778 rules!3568 (rule!8713 (_1!22538 (get!12891 lt!1289442)))))))

(declare-fun b!3685165 () Bool)

(declare-fun e!2281978 () Option!8354)

(assert (=> b!3685165 (= e!2281978 call!266823)))

(declare-fun b!3685166 () Bool)

(declare-fun res!1497388 () Bool)

(assert (=> b!3685166 (=> (not res!1497388) (not e!2281979))))

(assert (=> b!3685166 (= res!1497388 (< (size!29767 (_2!22538 (get!12891 lt!1289442))) (size!29767 input!3129)))))

(declare-fun b!3685167 () Bool)

(declare-fun e!2281980 () Bool)

(assert (=> b!3685167 (= e!2281980 e!2281979)))

(declare-fun res!1497387 () Bool)

(assert (=> b!3685167 (=> (not res!1497387) (not e!2281979))))

(declare-fun isDefined!6572 (Option!8354) Bool)

(assert (=> b!3685167 (= res!1497387 (isDefined!6572 lt!1289442))))

(declare-fun b!3685168 () Bool)

(declare-fun res!1497389 () Bool)

(assert (=> b!3685168 (=> (not res!1497389) (not e!2281979))))

(assert (=> b!3685168 (= res!1497389 (= (++!9690 (list!14502 (charsOf!3882 (_1!22538 (get!12891 lt!1289442)))) (_2!22538 (get!12891 lt!1289442))) input!3129))))

(declare-fun d!1081625 () Bool)

(assert (=> d!1081625 e!2281980))

(declare-fun res!1497386 () Bool)

(assert (=> d!1081625 (=> res!1497386 e!2281980)))

(declare-fun isEmpty!23148 (Option!8354) Bool)

(assert (=> d!1081625 (= res!1497386 (isEmpty!23148 lt!1289442))))

(assert (=> d!1081625 (= lt!1289442 e!2281978)))

(declare-fun c!637464 () Bool)

(assert (=> d!1081625 (= c!637464 (and (is-Cons!38930 rules!3568) (is-Nil!38930 (t!301021 rules!3568))))))

(declare-fun lt!1289438 () Unit!57009)

(declare-fun lt!1289441 () Unit!57009)

(assert (=> d!1081625 (= lt!1289438 lt!1289441)))

(assert (=> d!1081625 (isPrefix!3224 input!3129 input!3129)))

(declare-fun lemmaIsPrefixRefl!2025 (List!39053 List!39053) Unit!57009)

(assert (=> d!1081625 (= lt!1289441 (lemmaIsPrefixRefl!2025 input!3129 input!3129))))

(assert (=> d!1081625 (rulesValidInductive!2093 thiss!25197 rules!3568)))

(assert (=> d!1081625 (= (maxPrefix!2988 thiss!25197 rules!3568 input!3129) lt!1289442)))

(declare-fun b!3685162 () Bool)

(declare-fun lt!1289440 () Option!8354)

(declare-fun lt!1289439 () Option!8354)

(assert (=> b!3685162 (= e!2281978 (ite (and (is-None!8353 lt!1289440) (is-None!8353 lt!1289439)) None!8353 (ite (is-None!8353 lt!1289439) lt!1289440 (ite (is-None!8353 lt!1289440) lt!1289439 (ite (>= (size!29761 (_1!22538 (v!38299 lt!1289440))) (size!29761 (_1!22538 (v!38299 lt!1289439)))) lt!1289440 lt!1289439)))))))

(assert (=> b!3685162 (= lt!1289440 call!266823)))

(assert (=> b!3685162 (= lt!1289439 (maxPrefix!2988 thiss!25197 (t!301021 rules!3568) input!3129))))

(assert (= (and d!1081625 c!637464) b!3685165))

(assert (= (and d!1081625 (not c!637464)) b!3685162))

(assert (= (or b!3685165 b!3685162) bm!266818))

(assert (= (and d!1081625 (not res!1497386)) b!3685167))

(assert (= (and b!3685167 res!1497387) b!3685161))

(assert (= (and b!3685161 res!1497392) b!3685166))

(assert (= (and b!3685166 res!1497388) b!3685168))

(assert (= (and b!3685168 res!1497389) b!3685160))

(assert (= (and b!3685160 res!1497391) b!3685163))

(assert (= (and b!3685163 res!1497390) b!3685164))

(declare-fun m!4196541 () Bool)

(assert (=> b!3685166 m!4196541))

(declare-fun m!4196543 () Bool)

(assert (=> b!3685166 m!4196543))

(assert (=> b!3685166 m!4196435))

(assert (=> b!3685168 m!4196541))

(declare-fun m!4196545 () Bool)

(assert (=> b!3685168 m!4196545))

(assert (=> b!3685168 m!4196545))

(declare-fun m!4196547 () Bool)

(assert (=> b!3685168 m!4196547))

(assert (=> b!3685168 m!4196547))

(declare-fun m!4196549 () Bool)

(assert (=> b!3685168 m!4196549))

(assert (=> b!3685161 m!4196541))

(assert (=> b!3685161 m!4196545))

(assert (=> b!3685161 m!4196545))

(assert (=> b!3685161 m!4196547))

(assert (=> b!3685163 m!4196541))

(assert (=> b!3685163 m!4196545))

(assert (=> b!3685163 m!4196545))

(assert (=> b!3685163 m!4196547))

(assert (=> b!3685163 m!4196547))

(declare-fun m!4196551 () Bool)

(assert (=> b!3685163 m!4196551))

(declare-fun m!4196553 () Bool)

(assert (=> bm!266818 m!4196553))

(declare-fun m!4196555 () Bool)

(assert (=> d!1081625 m!4196555))

(declare-fun m!4196557 () Bool)

(assert (=> d!1081625 m!4196557))

(declare-fun m!4196559 () Bool)

(assert (=> d!1081625 m!4196559))

(assert (=> d!1081625 m!4196173))

(declare-fun m!4196561 () Bool)

(assert (=> b!3685162 m!4196561))

(assert (=> b!3685164 m!4196541))

(declare-fun m!4196563 () Bool)

(assert (=> b!3685164 m!4196563))

(assert (=> b!3685160 m!4196541))

(declare-fun m!4196565 () Bool)

(assert (=> b!3685160 m!4196565))

(assert (=> b!3685160 m!4196565))

(declare-fun m!4196567 () Bool)

(assert (=> b!3685160 m!4196567))

(declare-fun m!4196569 () Bool)

(assert (=> b!3685167 m!4196569))

(assert (=> b!3684823 d!1081625))

(declare-fun d!1081645 () Bool)

(declare-fun e!2281983 () Bool)

(assert (=> d!1081645 e!2281983))

(declare-fun res!1497397 () Bool)

(assert (=> d!1081645 (=> (not res!1497397) (not e!2281983))))

(assert (=> d!1081645 (= res!1497397 (isDefined!6570 (getRuleFromTag!1459 thiss!25197 rules!3568 (tag!6679 (rule!8713 lt!1289316)))))))

(declare-fun lt!1289445 () Unit!57009)

(declare-fun choose!22053 (LexerInterface!5460 List!39054 List!39053 Token!11108) Unit!57009)

(assert (=> d!1081645 (= lt!1289445 (choose!22053 thiss!25197 rules!3568 input!3129 lt!1289316))))

(assert (=> d!1081645 (rulesInvariant!4857 thiss!25197 rules!3568)))

(assert (=> d!1081645 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1459 thiss!25197 rules!3568 input!3129 lt!1289316) lt!1289445)))

(declare-fun b!3685173 () Bool)

(declare-fun res!1497398 () Bool)

(assert (=> b!3685173 (=> (not res!1497398) (not e!2281983))))

(assert (=> b!3685173 (= res!1497398 (matchR!5185 (regex!5871 (get!12890 (getRuleFromTag!1459 thiss!25197 rules!3568 (tag!6679 (rule!8713 lt!1289316))))) (list!14502 (charsOf!3882 lt!1289316))))))

(declare-fun b!3685174 () Bool)

(assert (=> b!3685174 (= e!2281983 (= (rule!8713 lt!1289316) (get!12890 (getRuleFromTag!1459 thiss!25197 rules!3568 (tag!6679 (rule!8713 lt!1289316))))))))

(assert (= (and d!1081645 res!1497397) b!3685173))

(assert (= (and b!3685173 res!1497398) b!3685174))

(assert (=> d!1081645 m!4196219))

(assert (=> d!1081645 m!4196219))

(declare-fun m!4196571 () Bool)

(assert (=> d!1081645 m!4196571))

(declare-fun m!4196573 () Bool)

(assert (=> d!1081645 m!4196573))

(assert (=> d!1081645 m!4196187))

(assert (=> b!3685173 m!4196219))

(declare-fun m!4196575 () Bool)

(assert (=> b!3685173 m!4196575))

(assert (=> b!3685173 m!4196199))

(assert (=> b!3685173 m!4196201))

(assert (=> b!3685173 m!4196201))

(declare-fun m!4196577 () Bool)

(assert (=> b!3685173 m!4196577))

(assert (=> b!3685173 m!4196219))

(assert (=> b!3685173 m!4196199))

(assert (=> b!3685174 m!4196219))

(assert (=> b!3685174 m!4196219))

(assert (=> b!3685174 m!4196575))

(assert (=> b!3684823 d!1081645))

(declare-fun d!1081647 () Bool)

(assert (=> d!1081647 (isPrefix!3224 lt!1289322 (++!9690 lt!1289322 (_2!22538 lt!1289320)))))

(declare-fun lt!1289458 () Unit!57009)

(declare-fun choose!22054 (List!39053 List!39053) Unit!57009)

(assert (=> d!1081647 (= lt!1289458 (choose!22054 lt!1289322 (_2!22538 lt!1289320)))))

(assert (=> d!1081647 (= (lemmaConcatTwoListThenFirstIsPrefix!2141 lt!1289322 (_2!22538 lt!1289320)) lt!1289458)))

(declare-fun bs!573830 () Bool)

(assert (= bs!573830 d!1081647))

(assert (=> bs!573830 m!4196203))

(assert (=> bs!573830 m!4196203))

(assert (=> bs!573830 m!4196205))

(declare-fun m!4196579 () Bool)

(assert (=> bs!573830 m!4196579))

(assert (=> b!3684823 d!1081647))

(declare-fun d!1081649 () Bool)

(declare-fun list!14509 (Conc!11932) List!39053)

(assert (=> d!1081649 (= (list!14502 (charsOf!3882 lt!1289316)) (list!14509 (c!637406 (charsOf!3882 lt!1289316))))))

(declare-fun bs!573831 () Bool)

(assert (= bs!573831 d!1081649))

(declare-fun m!4196581 () Bool)

(assert (=> bs!573831 m!4196581))

(assert (=> b!3684823 d!1081649))

(declare-fun b!3685197 () Bool)

(declare-fun e!2281992 () Bool)

(declare-fun tp!1120073 () Bool)

(assert (=> b!3685197 (= e!2281992 (and tp_is_empty!18343 tp!1120073))))

(assert (=> b!3684816 (= tp!1120045 e!2281992)))

(assert (= (and b!3684816 (is-Cons!38929 (t!301020 suffix!1448))) b!3685197))

(declare-fun b!3685208 () Bool)

(declare-fun b_free!97721 () Bool)

(declare-fun b_next!98425 () Bool)

(assert (=> b!3685208 (= b_free!97721 (not b_next!98425))))

(declare-fun tp!1120085 () Bool)

(declare-fun b_and!275403 () Bool)

(assert (=> b!3685208 (= tp!1120085 b_and!275403)))

(declare-fun b_free!97723 () Bool)

(declare-fun b_next!98427 () Bool)

(assert (=> b!3685208 (= b_free!97723 (not b_next!98427))))

(declare-fun t!301032 () Bool)

(declare-fun tb!213709 () Bool)

(assert (=> (and b!3685208 (= (toChars!8038 (transformation!5871 (h!44350 (t!301021 rules!3568)))) (toChars!8038 (transformation!5871 (rule!8713 lt!1289316)))) t!301032) tb!213709))

(declare-fun result!260074 () Bool)

(assert (= result!260074 result!260062))

(assert (=> d!1081593 t!301032))

(declare-fun b_and!275405 () Bool)

(declare-fun tp!1120083 () Bool)

(assert (=> b!3685208 (= tp!1120083 (and (=> t!301032 result!260074) b_and!275405))))

(declare-fun e!2282001 () Bool)

(assert (=> b!3685208 (= e!2282001 (and tp!1120085 tp!1120083))))

(declare-fun e!2282003 () Bool)

(declare-fun tp!1120084 () Bool)

(declare-fun b!3685207 () Bool)

(assert (=> b!3685207 (= e!2282003 (and tp!1120084 (inv!52412 (tag!6679 (h!44350 (t!301021 rules!3568)))) (inv!52415 (transformation!5871 (h!44350 (t!301021 rules!3568)))) e!2282001))))

(declare-fun b!3685206 () Bool)

(declare-fun e!2282004 () Bool)

(declare-fun tp!1120082 () Bool)

(assert (=> b!3685206 (= e!2282004 (and e!2282003 tp!1120082))))

(assert (=> b!3684820 (= tp!1120042 e!2282004)))

(assert (= b!3685207 b!3685208))

(assert (= b!3685206 b!3685207))

(assert (= (and b!3684820 (is-Cons!38930 (t!301021 rules!3568))) b!3685206))

(declare-fun m!4196583 () Bool)

(assert (=> b!3685207 m!4196583))

(declare-fun m!4196585 () Bool)

(assert (=> b!3685207 m!4196585))

(declare-fun b!3685221 () Bool)

(declare-fun e!2282007 () Bool)

(declare-fun tp!1120100 () Bool)

(assert (=> b!3685221 (= e!2282007 tp!1120100)))

(declare-fun b!3685222 () Bool)

(declare-fun tp!1120098 () Bool)

(declare-fun tp!1120099 () Bool)

(assert (=> b!3685222 (= e!2282007 (and tp!1120098 tp!1120099))))

(declare-fun b!3685219 () Bool)

(assert (=> b!3685219 (= e!2282007 tp_is_empty!18343)))

(declare-fun b!3685220 () Bool)

(declare-fun tp!1120097 () Bool)

(declare-fun tp!1120096 () Bool)

(assert (=> b!3685220 (= e!2282007 (and tp!1120097 tp!1120096))))

(assert (=> b!3684824 (= tp!1120043 e!2282007)))

(assert (= (and b!3684824 (is-ElementMatch!10630 (regex!5871 (h!44350 rules!3568)))) b!3685219))

(assert (= (and b!3684824 (is-Concat!16732 (regex!5871 (h!44350 rules!3568)))) b!3685220))

(assert (= (and b!3684824 (is-Star!10630 (regex!5871 (h!44350 rules!3568)))) b!3685221))

(assert (= (and b!3684824 (is-Union!10630 (regex!5871 (h!44350 rules!3568)))) b!3685222))

(declare-fun b!3685223 () Bool)

(declare-fun e!2282008 () Bool)

(declare-fun tp!1120101 () Bool)

(assert (=> b!3685223 (= e!2282008 (and tp_is_empty!18343 tp!1120101))))

(assert (=> b!3684818 (= tp!1120046 e!2282008)))

(assert (= (and b!3684818 (is-Cons!38929 (t!301020 input!3129))) b!3685223))

(push 1)

(assert (not bm!266818))

(assert (not b!3685057))

(assert (not d!1081587))

(assert (not d!1081611))

(assert (not d!1081647))

(assert (not b!3685064))

(assert (not b!3685062))

(assert b_and!275403)

(assert (not b!3685100))

(assert (not b_next!98425))

(assert (not b_next!98419))

(assert (not d!1081609))

(assert (not b!3685099))

(assert (not b!3684932))

(assert (not b!3685174))

(assert (not b!3685222))

(assert (not b!3685059))

(assert (not b!3685221))

(assert (not b!3685045))

(assert (not b!3685040))

(assert (not b!3685207))

(assert (not b!3685164))

(assert (not bm!266814))

(assert (not b!3684931))

(assert (not d!1081649))

(assert (not b!3684922))

(assert (not b!3685197))

(assert (not b_next!98417))

(assert (not b!3684991))

(assert (not b!3685167))

(assert (not b!3685166))

(assert (not d!1081565))

(assert (not d!1081625))

(assert (not d!1081575))

(assert (not d!1081603))

(assert tp_is_empty!18343)

(assert (not b!3685168))

(assert (not b!3685223))

(assert b_and!275405)

(assert (not d!1081573))

(assert (not b!3685018))

(assert (not b!3684992))

(assert (not b!3685052))

(assert (not b!3685044))

(assert (not b!3684873))

(assert (not b!3685049))

(assert (not b!3685048))

(assert b_and!275391)

(assert (not d!1081593))

(assert (not b!3685041))

(assert (not d!1081605))

(assert (not d!1081557))

(assert (not b!3684876))

(assert (not b!3685101))

(assert (not d!1081555))

(assert (not b!3684874))

(assert (not d!1081563))

(assert (not b!3684997))

(assert (not bm!266810))

(assert (not d!1081595))

(assert (not b!3685007))

(assert (not b!3685161))

(assert (not b!3684965))

(assert (not b_lambda!109439))

(assert (not b!3684929))

(assert (not b!3685008))

(assert (not tb!213705))

(assert (not b!3684927))

(assert (not b!3684934))

(assert b_and!275399)

(assert (not b!3685163))

(assert (not b!3685061))

(assert (not b!3685042))

(assert (not b!3684875))

(assert (not d!1081613))

(assert (not d!1081591))

(assert (not d!1081645))

(assert (not b!3685050))

(assert (not b!3685206))

(assert (not b_next!98427))

(assert (not b!3685162))

(assert (not b!3685220))

(assert (not b!3685160))

(assert (not b!3685173))

(check-sat)

(pop 1)

(push 1)

(assert b_and!275403)

(assert (not b_next!98425))

(assert (not b_next!98419))

(assert (not b_next!98417))

(assert b_and!275405)

(assert b_and!275391)

(assert b_and!275399)

(assert (not b_next!98427))

(check-sat)

(pop 1)

