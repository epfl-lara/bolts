; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!317186 () Bool)

(assert start!317186)

(declare-fun b!3397956 () Bool)

(declare-fun b_free!88953 () Bool)

(declare-fun b_next!89657 () Bool)

(assert (=> b!3397956 (= b_free!88953 (not b_next!89657))))

(declare-fun tp!1060589 () Bool)

(declare-fun b_and!236959 () Bool)

(assert (=> b!3397956 (= tp!1060589 b_and!236959)))

(declare-fun b_free!88955 () Bool)

(declare-fun b_next!89659 () Bool)

(assert (=> b!3397956 (= b_free!88955 (not b_next!89659))))

(declare-fun tp!1060587 () Bool)

(declare-fun b_and!236961 () Bool)

(assert (=> b!3397956 (= tp!1060587 b_and!236961)))

(declare-fun b!3397964 () Bool)

(declare-fun b_free!88957 () Bool)

(declare-fun b_next!89661 () Bool)

(assert (=> b!3397964 (= b_free!88957 (not b_next!89661))))

(declare-fun tp!1060585 () Bool)

(declare-fun b_and!236963 () Bool)

(assert (=> b!3397964 (= tp!1060585 b_and!236963)))

(declare-fun b_free!88959 () Bool)

(declare-fun b_next!89663 () Bool)

(assert (=> b!3397964 (= b_free!88959 (not b_next!89663))))

(declare-fun tp!1060581 () Bool)

(declare-fun b_and!236965 () Bool)

(assert (=> b!3397964 (= tp!1060581 b_and!236965)))

(declare-fun b!3397957 () Bool)

(declare-fun b_free!88961 () Bool)

(declare-fun b_next!89665 () Bool)

(assert (=> b!3397957 (= b_free!88961 (not b_next!89665))))

(declare-fun tp!1060592 () Bool)

(declare-fun b_and!236967 () Bool)

(assert (=> b!3397957 (= tp!1060592 b_and!236967)))

(declare-fun b_free!88963 () Bool)

(declare-fun b_next!89667 () Bool)

(assert (=> b!3397957 (= b_free!88963 (not b_next!89667))))

(declare-fun tp!1060588 () Bool)

(declare-fun b_and!236969 () Bool)

(assert (=> b!3397957 (= tp!1060588 b_and!236969)))

(declare-fun b!3397954 () Bool)

(declare-fun res!1374797 () Bool)

(declare-fun e!2109295 () Bool)

(assert (=> b!3397954 (=> (not res!1374797) (not e!2109295))))

(declare-datatypes ((LexerInterface!4985 0))(
  ( (LexerInterfaceExt!4982 (__x!23469 Int)) (Lexer!4983) )
))
(declare-fun thiss!18206 () LexerInterface!4985)

(declare-datatypes ((C!20496 0))(
  ( (C!20497 (val!12296 Int)) )
))
(declare-datatypes ((Regex!10155 0))(
  ( (ElementMatch!10155 (c!579198 C!20496)) (Concat!15781 (regOne!20822 Regex!10155) (regTwo!20822 Regex!10155)) (EmptyExpr!10155) (Star!10155 (reg!10484 Regex!10155)) (EmptyLang!10155) (Union!10155 (regOne!20823 Regex!10155) (regTwo!20823 Regex!10155)) )
))
(declare-datatypes ((List!37088 0))(
  ( (Nil!36964) (Cons!36964 (h!42384 (_ BitVec 16)) (t!265497 List!37088)) )
))
(declare-datatypes ((TokenValue!5626 0))(
  ( (FloatLiteralValue!11252 (text!39827 List!37088)) (TokenValueExt!5625 (__x!23470 Int)) (Broken!28130 (value!174220 List!37088)) (Object!5749) (End!5626) (Def!5626) (Underscore!5626) (Match!5626) (Else!5626) (Error!5626) (Case!5626) (If!5626) (Extends!5626) (Abstract!5626) (Class!5626) (Val!5626) (DelimiterValue!11252 (del!5686 List!37088)) (KeywordValue!5632 (value!174221 List!37088)) (CommentValue!11252 (value!174222 List!37088)) (WhitespaceValue!11252 (value!174223 List!37088)) (IndentationValue!5626 (value!174224 List!37088)) (String!41463) (Int32!5626) (Broken!28131 (value!174225 List!37088)) (Boolean!5627) (Unit!52131) (OperatorValue!5629 (op!5686 List!37088)) (IdentifierValue!11252 (value!174226 List!37088)) (IdentifierValue!11253 (value!174227 List!37088)) (WhitespaceValue!11253 (value!174228 List!37088)) (True!11252) (False!11252) (Broken!28132 (value!174229 List!37088)) (Broken!28133 (value!174230 List!37088)) (True!11253) (RightBrace!5626) (RightBracket!5626) (Colon!5626) (Null!5626) (Comma!5626) (LeftBracket!5626) (False!11253) (LeftBrace!5626) (ImaginaryLiteralValue!5626 (text!39828 List!37088)) (StringLiteralValue!16878 (value!174231 List!37088)) (EOFValue!5626 (value!174232 List!37088)) (IdentValue!5626 (value!174233 List!37088)) (DelimiterValue!11253 (value!174234 List!37088)) (DedentValue!5626 (value!174235 List!37088)) (NewLineValue!5626 (value!174236 List!37088)) (IntegerValue!16878 (value!174237 (_ BitVec 32)) (text!39829 List!37088)) (IntegerValue!16879 (value!174238 Int) (text!39830 List!37088)) (Times!5626) (Or!5626) (Equal!5626) (Minus!5626) (Broken!28134 (value!174239 List!37088)) (And!5626) (Div!5626) (LessEqual!5626) (Mod!5626) (Concat!15782) (Not!5626) (Plus!5626) (SpaceValue!5626 (value!174240 List!37088)) (IntegerValue!16880 (value!174241 Int) (text!39831 List!37088)) (StringLiteralValue!16879 (text!39832 List!37088)) (FloatLiteralValue!11253 (text!39833 List!37088)) (BytesLiteralValue!5626 (value!174242 List!37088)) (CommentValue!11253 (value!174243 List!37088)) (StringLiteralValue!16880 (value!174244 List!37088)) (ErrorTokenValue!5626 (msg!5687 List!37088)) )
))
(declare-datatypes ((List!37089 0))(
  ( (Nil!36965) (Cons!36965 (h!42385 C!20496) (t!265498 List!37089)) )
))
(declare-datatypes ((IArray!22339 0))(
  ( (IArray!22340 (innerList!11227 List!37089)) )
))
(declare-datatypes ((Conc!11167 0))(
  ( (Node!11167 (left!28819 Conc!11167) (right!29149 Conc!11167) (csize!22564 Int) (cheight!11378 Int)) (Leaf!17476 (xs!14325 IArray!22339) (csize!22565 Int)) (Empty!11167) )
))
(declare-datatypes ((BalanceConc!21948 0))(
  ( (BalanceConc!21949 (c!579199 Conc!11167)) )
))
(declare-datatypes ((String!41464 0))(
  ( (String!41465 (value!174245 String)) )
))
(declare-datatypes ((TokenValueInjection!10680 0))(
  ( (TokenValueInjection!10681 (toValue!7596 Int) (toChars!7455 Int)) )
))
(declare-datatypes ((Rule!10592 0))(
  ( (Rule!10593 (regex!5396 Regex!10155) (tag!5980 String!41464) (isSeparator!5396 Bool) (transformation!5396 TokenValueInjection!10680)) )
))
(declare-datatypes ((List!37090 0))(
  ( (Nil!36966) (Cons!36966 (h!42386 Rule!10592) (t!265499 List!37090)) )
))
(declare-fun rules!2135 () List!37090)

(declare-fun rulesInvariant!4382 (LexerInterface!4985 List!37090) Bool)

(assert (=> b!3397954 (= res!1374797 (rulesInvariant!4382 thiss!18206 rules!2135))))

(declare-fun b!3397955 () Bool)

(declare-fun e!2109286 () Bool)

(declare-fun e!2109290 () Bool)

(assert (=> b!3397955 (= e!2109286 e!2109290)))

(declare-fun res!1374798 () Bool)

(assert (=> b!3397955 (=> res!1374798 e!2109290)))

(declare-fun lt!1155238 () List!37089)

(declare-fun lt!1155244 () List!37089)

(declare-fun lt!1155248 () List!37089)

(assert (=> b!3397955 (= res!1374798 (or (not (= lt!1155248 lt!1155244)) (not (= lt!1155238 lt!1155244))))))

(declare-datatypes ((Token!10158 0))(
  ( (Token!10159 (value!174246 TokenValue!5626) (rule!7956 Rule!10592) (size!27983 Int) (originalCharacters!6110 List!37089)) )
))
(declare-datatypes ((List!37091 0))(
  ( (Nil!36967) (Cons!36967 (h!42387 Token!10158) (t!265500 List!37091)) )
))
(declare-fun tokens!494 () List!37091)

(declare-fun list!13397 (BalanceConc!21948) List!37089)

(declare-fun charsOf!3410 (Token!10158) BalanceConc!21948)

(assert (=> b!3397955 (= lt!1155244 (list!13397 (charsOf!3410 (h!42387 tokens!494))))))

(declare-fun e!2109300 () Bool)

(assert (=> b!3397956 (= e!2109300 (and tp!1060589 tp!1060587))))

(declare-fun e!2109293 () Bool)

(assert (=> b!3397957 (= e!2109293 (and tp!1060592 tp!1060588))))

(declare-fun b!3397959 () Bool)

(declare-fun res!1374802 () Bool)

(assert (=> b!3397959 (=> (not res!1374802) (not e!2109295))))

(declare-datatypes ((IArray!22341 0))(
  ( (IArray!22342 (innerList!11228 List!37091)) )
))
(declare-datatypes ((Conc!11168 0))(
  ( (Node!11168 (left!28820 Conc!11168) (right!29150 Conc!11168) (csize!22566 Int) (cheight!11379 Int)) (Leaf!17477 (xs!14326 IArray!22341) (csize!22567 Int)) (Empty!11168) )
))
(declare-datatypes ((BalanceConc!21950 0))(
  ( (BalanceConc!21951 (c!579200 Conc!11168)) )
))
(declare-fun rulesProduceEachTokenIndividually!1436 (LexerInterface!4985 List!37090 BalanceConc!21950) Bool)

(declare-fun seqFromList!3845 (List!37091) BalanceConc!21950)

(assert (=> b!3397959 (= res!1374802 (rulesProduceEachTokenIndividually!1436 thiss!18206 rules!2135 (seqFromList!3845 tokens!494)))))

(declare-fun b!3397960 () Bool)

(declare-fun res!1374806 () Bool)

(assert (=> b!3397960 (=> (not res!1374806) (not e!2109295))))

(declare-fun lambda!120885 () Int)

(declare-fun forall!7811 (List!37091 Int) Bool)

(assert (=> b!3397960 (= res!1374806 (forall!7811 tokens!494 lambda!120885))))

(declare-fun b!3397961 () Bool)

(declare-fun res!1374807 () Bool)

(assert (=> b!3397961 (=> (not res!1374807) (not e!2109295))))

(declare-fun separatorToken!241 () Token!10158)

(assert (=> b!3397961 (= res!1374807 (isSeparator!5396 (rule!7956 separatorToken!241)))))

(declare-fun b!3397962 () Bool)

(declare-fun res!1374801 () Bool)

(assert (=> b!3397962 (=> res!1374801 e!2109290)))

(declare-fun rulesProduceIndividualToken!2477 (LexerInterface!4985 List!37090 Token!10158) Bool)

(assert (=> b!3397962 (= res!1374801 (not (rulesProduceIndividualToken!2477 thiss!18206 rules!2135 (h!42387 tokens!494))))))

(declare-fun b!3397963 () Bool)

(declare-fun e!2109291 () Bool)

(assert (=> b!3397963 (= e!2109291 true)))

(declare-datatypes ((Unit!52132 0))(
  ( (Unit!52133) )
))
(declare-fun lt!1155250 () Unit!52132)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!974 (LexerInterface!4985 List!37090 List!37091 Token!10158) Unit!52132)

(assert (=> b!3397963 (= lt!1155250 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!974 thiss!18206 rules!2135 tokens!494 (h!42387 tokens!494)))))

(declare-fun e!2109301 () Bool)

(assert (=> b!3397964 (= e!2109301 (and tp!1060585 tp!1060581))))

(declare-fun tp!1060584 () Bool)

(declare-fun e!2109302 () Bool)

(declare-fun b!3397965 () Bool)

(declare-fun inv!50061 (String!41464) Bool)

(declare-fun inv!50064 (TokenValueInjection!10680) Bool)

(assert (=> b!3397965 (= e!2109302 (and tp!1060584 (inv!50061 (tag!5980 (rule!7956 (h!42387 tokens!494)))) (inv!50064 (transformation!5396 (rule!7956 (h!42387 tokens!494)))) e!2109300))))

(declare-fun b!3397966 () Bool)

(declare-fun e!2109288 () Bool)

(assert (=> b!3397966 (= e!2109290 e!2109288)))

(declare-fun res!1374799 () Bool)

(assert (=> b!3397966 (=> res!1374799 e!2109288)))

(assert (=> b!3397966 (= res!1374799 (or (isSeparator!5396 (rule!7956 (h!42387 tokens!494))) (isSeparator!5396 (rule!7956 (h!42387 (t!265500 tokens!494))))))))

(declare-fun lt!1155237 () Unit!52132)

(declare-fun forallContained!1343 (List!37091 Int Token!10158) Unit!52132)

(assert (=> b!3397966 (= lt!1155237 (forallContained!1343 tokens!494 lambda!120885 (h!42387 (t!265500 tokens!494))))))

(declare-fun lt!1155247 () Unit!52132)

(assert (=> b!3397966 (= lt!1155247 (forallContained!1343 tokens!494 lambda!120885 (h!42387 tokens!494)))))

(declare-fun b!3397967 () Bool)

(declare-fun e!2109281 () Bool)

(declare-fun tp!1060583 () Bool)

(assert (=> b!3397967 (= e!2109281 (and tp!1060583 (inv!50061 (tag!5980 (rule!7956 separatorToken!241))) (inv!50064 (transformation!5396 (rule!7956 separatorToken!241))) e!2109301))))

(declare-fun b!3397968 () Bool)

(declare-fun e!2109294 () Bool)

(assert (=> b!3397968 (= e!2109294 e!2109291)))

(declare-fun res!1374796 () Bool)

(assert (=> b!3397968 (=> res!1374796 e!2109291)))

(declare-fun lt!1155249 () List!37089)

(declare-fun lt!1155239 () List!37089)

(assert (=> b!3397968 (= res!1374796 (not (= lt!1155249 lt!1155239)))))

(declare-fun lt!1155236 () List!37089)

(assert (=> b!3397968 (= lt!1155236 lt!1155239)))

(declare-fun lt!1155242 () List!37089)

(declare-fun ++!9059 (List!37089 List!37089) List!37089)

(assert (=> b!3397968 (= lt!1155239 (++!9059 lt!1155244 lt!1155242))))

(declare-fun lt!1155243 () List!37089)

(declare-fun lt!1155246 () Unit!52132)

(declare-fun lt!1155245 () List!37089)

(declare-fun lemmaConcatAssociativity!1898 (List!37089 List!37089 List!37089) Unit!52132)

(assert (=> b!3397968 (= lt!1155246 (lemmaConcatAssociativity!1898 lt!1155244 lt!1155243 lt!1155245))))

(declare-fun e!2109287 () Bool)

(declare-fun b!3397969 () Bool)

(declare-fun tp!1060586 () Bool)

(declare-fun inv!21 (TokenValue!5626) Bool)

(assert (=> b!3397969 (= e!2109287 (and (inv!21 (value!174246 (h!42387 tokens!494))) e!2109302 tp!1060586))))

(declare-fun b!3397970 () Bool)

(declare-fun res!1374800 () Bool)

(assert (=> b!3397970 (=> (not res!1374800) (not e!2109295))))

(get-info :version)

(assert (=> b!3397970 (= res!1374800 (and (not ((_ is Nil!36967) tokens!494)) (not ((_ is Nil!36967) (t!265500 tokens!494)))))))

(declare-fun b!3397971 () Bool)

(declare-fun tp!1060590 () Bool)

(declare-fun e!2109283 () Bool)

(assert (=> b!3397971 (= e!2109283 (and tp!1060590 (inv!50061 (tag!5980 (h!42386 rules!2135))) (inv!50064 (transformation!5396 (h!42386 rules!2135))) e!2109293))))

(declare-fun b!3397972 () Bool)

(declare-fun res!1374805 () Bool)

(assert (=> b!3397972 (=> (not res!1374805) (not e!2109295))))

(declare-fun isEmpty!21228 (List!37090) Bool)

(assert (=> b!3397972 (= res!1374805 (not (isEmpty!21228 rules!2135)))))

(declare-fun b!3397973 () Bool)

(declare-fun res!1374808 () Bool)

(assert (=> b!3397973 (=> (not res!1374808) (not e!2109295))))

(declare-fun sepAndNonSepRulesDisjointChars!1590 (List!37090 List!37090) Bool)

(assert (=> b!3397973 (= res!1374808 (sepAndNonSepRulesDisjointChars!1590 rules!2135 rules!2135))))

(declare-fun b!3397974 () Bool)

(declare-fun res!1374795 () Bool)

(assert (=> b!3397974 (=> (not res!1374795) (not e!2109295))))

(assert (=> b!3397974 (= res!1374795 (rulesProduceIndividualToken!2477 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3397958 () Bool)

(declare-fun e!2109292 () Bool)

(declare-fun tp!1060580 () Bool)

(assert (=> b!3397958 (= e!2109292 (and (inv!21 (value!174246 separatorToken!241)) e!2109281 tp!1060580))))

(declare-fun res!1374794 () Bool)

(assert (=> start!317186 (=> (not res!1374794) (not e!2109295))))

(assert (=> start!317186 (= res!1374794 ((_ is Lexer!4983) thiss!18206))))

(assert (=> start!317186 e!2109295))

(assert (=> start!317186 true))

(declare-fun e!2109284 () Bool)

(assert (=> start!317186 e!2109284))

(declare-fun e!2109289 () Bool)

(assert (=> start!317186 e!2109289))

(declare-fun inv!50065 (Token!10158) Bool)

(assert (=> start!317186 (and (inv!50065 separatorToken!241) e!2109292)))

(declare-fun b!3397975 () Bool)

(declare-fun tp!1060591 () Bool)

(assert (=> b!3397975 (= e!2109289 (and (inv!50065 (h!42387 tokens!494)) e!2109287 tp!1060591))))

(declare-fun b!3397976 () Bool)

(declare-fun e!2109297 () Bool)

(assert (=> b!3397976 (= e!2109297 e!2109294)))

(declare-fun res!1374793 () Bool)

(assert (=> b!3397976 (=> res!1374793 e!2109294)))

(assert (=> b!3397976 (= res!1374793 (not (= lt!1155249 lt!1155236)))))

(assert (=> b!3397976 (= lt!1155236 (++!9059 (++!9059 lt!1155244 lt!1155243) lt!1155245))))

(declare-fun b!3397977 () Bool)

(declare-fun tp!1060582 () Bool)

(assert (=> b!3397977 (= e!2109284 (and e!2109283 tp!1060582))))

(declare-fun b!3397978 () Bool)

(assert (=> b!3397978 (= e!2109295 (not e!2109286))))

(declare-fun res!1374792 () Bool)

(assert (=> b!3397978 (=> res!1374792 e!2109286)))

(assert (=> b!3397978 (= res!1374792 (not (= lt!1155238 lt!1155248)))))

(declare-fun printList!1533 (LexerInterface!4985 List!37091) List!37089)

(assert (=> b!3397978 (= lt!1155248 (printList!1533 thiss!18206 (Cons!36967 (h!42387 tokens!494) Nil!36967)))))

(declare-fun lt!1155241 () BalanceConc!21948)

(assert (=> b!3397978 (= lt!1155238 (list!13397 lt!1155241))))

(declare-fun lt!1155240 () BalanceConc!21950)

(declare-fun printTailRec!1480 (LexerInterface!4985 BalanceConc!21950 Int BalanceConc!21948) BalanceConc!21948)

(assert (=> b!3397978 (= lt!1155241 (printTailRec!1480 thiss!18206 lt!1155240 0 (BalanceConc!21949 Empty!11167)))))

(declare-fun print!2050 (LexerInterface!4985 BalanceConc!21950) BalanceConc!21948)

(assert (=> b!3397978 (= lt!1155241 (print!2050 thiss!18206 lt!1155240))))

(declare-fun singletonSeq!2492 (Token!10158) BalanceConc!21950)

(assert (=> b!3397978 (= lt!1155240 (singletonSeq!2492 (h!42387 tokens!494)))))

(declare-fun b!3397979 () Bool)

(assert (=> b!3397979 (= e!2109288 e!2109297)))

(declare-fun res!1374804 () Bool)

(assert (=> b!3397979 (=> res!1374804 e!2109297)))

(declare-fun printWithSeparatorTokenList!272 (LexerInterface!4985 List!37091 Token!10158) List!37089)

(assert (=> b!3397979 (= res!1374804 (not (= lt!1155245 (++!9059 (++!9059 (list!13397 (charsOf!3410 (h!42387 (t!265500 tokens!494)))) lt!1155243) (printWithSeparatorTokenList!272 thiss!18206 (t!265500 (t!265500 tokens!494)) separatorToken!241)))))))

(assert (=> b!3397979 (= lt!1155242 (++!9059 lt!1155243 lt!1155245))))

(assert (=> b!3397979 (= lt!1155243 (list!13397 (charsOf!3410 separatorToken!241)))))

(assert (=> b!3397979 (= lt!1155245 (printWithSeparatorTokenList!272 thiss!18206 (t!265500 tokens!494) separatorToken!241))))

(assert (=> b!3397979 (= lt!1155249 (printWithSeparatorTokenList!272 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3397980 () Bool)

(declare-fun res!1374803 () Bool)

(assert (=> b!3397980 (=> res!1374803 e!2109290)))

(declare-fun isEmpty!21229 (BalanceConc!21950) Bool)

(declare-datatypes ((tuple2!36590 0))(
  ( (tuple2!36591 (_1!21429 BalanceConc!21950) (_2!21429 BalanceConc!21948)) )
))
(declare-fun lex!2311 (LexerInterface!4985 List!37090 BalanceConc!21948) tuple2!36590)

(declare-fun seqFromList!3846 (List!37089) BalanceConc!21948)

(assert (=> b!3397980 (= res!1374803 (isEmpty!21229 (_1!21429 (lex!2311 thiss!18206 rules!2135 (seqFromList!3846 lt!1155244)))))))

(assert (= (and start!317186 res!1374794) b!3397972))

(assert (= (and b!3397972 res!1374805) b!3397954))

(assert (= (and b!3397954 res!1374797) b!3397959))

(assert (= (and b!3397959 res!1374802) b!3397974))

(assert (= (and b!3397974 res!1374795) b!3397961))

(assert (= (and b!3397961 res!1374807) b!3397960))

(assert (= (and b!3397960 res!1374806) b!3397973))

(assert (= (and b!3397973 res!1374808) b!3397970))

(assert (= (and b!3397970 res!1374800) b!3397978))

(assert (= (and b!3397978 (not res!1374792)) b!3397955))

(assert (= (and b!3397955 (not res!1374798)) b!3397962))

(assert (= (and b!3397962 (not res!1374801)) b!3397980))

(assert (= (and b!3397980 (not res!1374803)) b!3397966))

(assert (= (and b!3397966 (not res!1374799)) b!3397979))

(assert (= (and b!3397979 (not res!1374804)) b!3397976))

(assert (= (and b!3397976 (not res!1374793)) b!3397968))

(assert (= (and b!3397968 (not res!1374796)) b!3397963))

(assert (= b!3397971 b!3397957))

(assert (= b!3397977 b!3397971))

(assert (= (and start!317186 ((_ is Cons!36966) rules!2135)) b!3397977))

(assert (= b!3397965 b!3397956))

(assert (= b!3397969 b!3397965))

(assert (= b!3397975 b!3397969))

(assert (= (and start!317186 ((_ is Cons!36967) tokens!494)) b!3397975))

(assert (= b!3397967 b!3397964))

(assert (= b!3397958 b!3397967))

(assert (= start!317186 b!3397958))

(declare-fun m!3769031 () Bool)

(assert (=> b!3397962 m!3769031))

(declare-fun m!3769033 () Bool)

(assert (=> b!3397965 m!3769033))

(declare-fun m!3769035 () Bool)

(assert (=> b!3397965 m!3769035))

(declare-fun m!3769037 () Bool)

(assert (=> b!3397959 m!3769037))

(assert (=> b!3397959 m!3769037))

(declare-fun m!3769039 () Bool)

(assert (=> b!3397959 m!3769039))

(declare-fun m!3769041 () Bool)

(assert (=> b!3397976 m!3769041))

(assert (=> b!3397976 m!3769041))

(declare-fun m!3769043 () Bool)

(assert (=> b!3397976 m!3769043))

(declare-fun m!3769045 () Bool)

(assert (=> b!3397968 m!3769045))

(declare-fun m!3769047 () Bool)

(assert (=> b!3397968 m!3769047))

(declare-fun m!3769049 () Bool)

(assert (=> b!3397966 m!3769049))

(declare-fun m!3769051 () Bool)

(assert (=> b!3397966 m!3769051))

(declare-fun m!3769053 () Bool)

(assert (=> b!3397972 m!3769053))

(declare-fun m!3769055 () Bool)

(assert (=> b!3397963 m!3769055))

(declare-fun m!3769057 () Bool)

(assert (=> b!3397960 m!3769057))

(declare-fun m!3769059 () Bool)

(assert (=> b!3397974 m!3769059))

(declare-fun m!3769061 () Bool)

(assert (=> b!3397958 m!3769061))

(declare-fun m!3769063 () Bool)

(assert (=> b!3397969 m!3769063))

(declare-fun m!3769065 () Bool)

(assert (=> b!3397980 m!3769065))

(assert (=> b!3397980 m!3769065))

(declare-fun m!3769067 () Bool)

(assert (=> b!3397980 m!3769067))

(declare-fun m!3769069 () Bool)

(assert (=> b!3397980 m!3769069))

(declare-fun m!3769071 () Bool)

(assert (=> b!3397954 m!3769071))

(declare-fun m!3769073 () Bool)

(assert (=> b!3397979 m!3769073))

(declare-fun m!3769075 () Bool)

(assert (=> b!3397979 m!3769075))

(declare-fun m!3769077 () Bool)

(assert (=> b!3397979 m!3769077))

(declare-fun m!3769079 () Bool)

(assert (=> b!3397979 m!3769079))

(assert (=> b!3397979 m!3769073))

(declare-fun m!3769081 () Bool)

(assert (=> b!3397979 m!3769081))

(assert (=> b!3397979 m!3769081))

(declare-fun m!3769083 () Bool)

(assert (=> b!3397979 m!3769083))

(assert (=> b!3397979 m!3769083))

(declare-fun m!3769085 () Bool)

(assert (=> b!3397979 m!3769085))

(declare-fun m!3769087 () Bool)

(assert (=> b!3397979 m!3769087))

(assert (=> b!3397979 m!3769085))

(declare-fun m!3769089 () Bool)

(assert (=> b!3397979 m!3769089))

(assert (=> b!3397979 m!3769075))

(declare-fun m!3769091 () Bool)

(assert (=> b!3397979 m!3769091))

(declare-fun m!3769093 () Bool)

(assert (=> b!3397973 m!3769093))

(declare-fun m!3769095 () Bool)

(assert (=> b!3397975 m!3769095))

(declare-fun m!3769097 () Bool)

(assert (=> start!317186 m!3769097))

(declare-fun m!3769099 () Bool)

(assert (=> b!3397967 m!3769099))

(declare-fun m!3769101 () Bool)

(assert (=> b!3397967 m!3769101))

(declare-fun m!3769103 () Bool)

(assert (=> b!3397955 m!3769103))

(assert (=> b!3397955 m!3769103))

(declare-fun m!3769105 () Bool)

(assert (=> b!3397955 m!3769105))

(declare-fun m!3769107 () Bool)

(assert (=> b!3397978 m!3769107))

(declare-fun m!3769109 () Bool)

(assert (=> b!3397978 m!3769109))

(declare-fun m!3769111 () Bool)

(assert (=> b!3397978 m!3769111))

(declare-fun m!3769113 () Bool)

(assert (=> b!3397978 m!3769113))

(declare-fun m!3769115 () Bool)

(assert (=> b!3397978 m!3769115))

(declare-fun m!3769117 () Bool)

(assert (=> b!3397971 m!3769117))

(declare-fun m!3769119 () Bool)

(assert (=> b!3397971 m!3769119))

(check-sat (not b!3397980) (not b!3397976) (not b!3397978) (not b!3397959) (not b_next!89661) b_and!236959 (not b!3397963) b_and!236963 (not start!317186) (not b_next!89665) (not b!3397971) (not b!3397958) (not b_next!89663) (not b!3397968) (not b_next!89667) (not b!3397965) b_and!236965 (not b!3397967) (not b!3397973) b_and!236969 (not b!3397977) (not b!3397955) b_and!236961 (not b_next!89657) (not b!3397975) (not b!3397974) (not b!3397954) (not b!3397966) b_and!236967 (not b!3397979) (not b!3397969) (not b!3397972) (not b_next!89659) (not b!3397960) (not b!3397962))
(check-sat b_and!236965 b_and!236969 (not b_next!89661) b_and!236959 b_and!236967 b_and!236963 (not b_next!89665) (not b_next!89659) (not b_next!89663) (not b_next!89667) b_and!236961 (not b_next!89657))
