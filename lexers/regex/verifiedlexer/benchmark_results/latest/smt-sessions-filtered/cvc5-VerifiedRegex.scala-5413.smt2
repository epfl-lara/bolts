; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!275374 () Bool)

(assert start!275374)

(declare-fun b!2833135 () Bool)

(declare-fun b_free!81541 () Bool)

(declare-fun b_next!82245 () Bool)

(assert (=> b!2833135 (= b_free!81541 (not b_next!82245))))

(declare-fun tp!905674 () Bool)

(declare-fun b_and!207299 () Bool)

(assert (=> b!2833135 (= tp!905674 b_and!207299)))

(declare-fun b_free!81543 () Bool)

(declare-fun b_next!82247 () Bool)

(assert (=> b!2833135 (= b_free!81543 (not b_next!82247))))

(declare-fun tp!905673 () Bool)

(declare-fun b_and!207301 () Bool)

(assert (=> b!2833135 (= tp!905673 b_and!207301)))

(declare-fun b!2833130 () Bool)

(declare-fun b_free!81545 () Bool)

(declare-fun b_next!82249 () Bool)

(assert (=> b!2833130 (= b_free!81545 (not b_next!82249))))

(declare-fun tp!905675 () Bool)

(declare-fun b_and!207303 () Bool)

(assert (=> b!2833130 (= tp!905675 b_and!207303)))

(declare-fun b_free!81547 () Bool)

(declare-fun b_next!82251 () Bool)

(assert (=> b!2833130 (= b_free!81547 (not b_next!82251))))

(declare-fun tp!905679 () Bool)

(declare-fun b_and!207305 () Bool)

(assert (=> b!2833130 (= tp!905679 b_and!207305)))

(declare-datatypes ((List!33541 0))(
  ( (Nil!33417) (Cons!33417 (h!38837 (_ BitVec 16)) (t!231610 List!33541)) )
))
(declare-datatypes ((TokenValue!5241 0))(
  ( (FloatLiteralValue!10482 (text!37132 List!33541)) (TokenValueExt!5240 (__x!22220 Int)) (Broken!26205 (value!161158 List!33541)) (Object!5364) (End!5241) (Def!5241) (Underscore!5241) (Match!5241) (Else!5241) (Error!5241) (Case!5241) (If!5241) (Extends!5241) (Abstract!5241) (Class!5241) (Val!5241) (DelimiterValue!10482 (del!5301 List!33541)) (KeywordValue!5247 (value!161159 List!33541)) (CommentValue!10482 (value!161160 List!33541)) (WhitespaceValue!10482 (value!161161 List!33541)) (IndentationValue!5241 (value!161162 List!33541)) (String!36728) (Int32!5241) (Broken!26206 (value!161163 List!33541)) (Boolean!5242) (Unit!47389) (OperatorValue!5244 (op!5301 List!33541)) (IdentifierValue!10482 (value!161164 List!33541)) (IdentifierValue!10483 (value!161165 List!33541)) (WhitespaceValue!10483 (value!161166 List!33541)) (True!10482) (False!10482) (Broken!26207 (value!161167 List!33541)) (Broken!26208 (value!161168 List!33541)) (True!10483) (RightBrace!5241) (RightBracket!5241) (Colon!5241) (Null!5241) (Comma!5241) (LeftBracket!5241) (False!10483) (LeftBrace!5241) (ImaginaryLiteralValue!5241 (text!37133 List!33541)) (StringLiteralValue!15723 (value!161169 List!33541)) (EOFValue!5241 (value!161170 List!33541)) (IdentValue!5241 (value!161171 List!33541)) (DelimiterValue!10483 (value!161172 List!33541)) (DedentValue!5241 (value!161173 List!33541)) (NewLineValue!5241 (value!161174 List!33541)) (IntegerValue!15723 (value!161175 (_ BitVec 32)) (text!37134 List!33541)) (IntegerValue!15724 (value!161176 Int) (text!37135 List!33541)) (Times!5241) (Or!5241) (Equal!5241) (Minus!5241) (Broken!26209 (value!161177 List!33541)) (And!5241) (Div!5241) (LessEqual!5241) (Mod!5241) (Concat!13643) (Not!5241) (Plus!5241) (SpaceValue!5241 (value!161178 List!33541)) (IntegerValue!15725 (value!161179 Int) (text!37136 List!33541)) (StringLiteralValue!15724 (text!37137 List!33541)) (FloatLiteralValue!10483 (text!37138 List!33541)) (BytesLiteralValue!5241 (value!161180 List!33541)) (CommentValue!10483 (value!161181 List!33541)) (StringLiteralValue!15725 (value!161182 List!33541)) (ErrorTokenValue!5241 (msg!5302 List!33541)) )
))
(declare-datatypes ((C!16986 0))(
  ( (C!16987 (val!10505 Int)) )
))
(declare-datatypes ((List!33542 0))(
  ( (Nil!33418) (Cons!33418 (h!38838 C!16986) (t!231611 List!33542)) )
))
(declare-datatypes ((IArray!20759 0))(
  ( (IArray!20760 (innerList!10437 List!33542)) )
))
(declare-datatypes ((Conc!10377 0))(
  ( (Node!10377 (left!25214 Conc!10377) (right!25544 Conc!10377) (csize!20984 Int) (cheight!10588 Int)) (Leaf!15791 (xs!13489 IArray!20759) (csize!20985 Int)) (Empty!10377) )
))
(declare-datatypes ((Regex!8402 0))(
  ( (ElementMatch!8402 (c!458025 C!16986)) (Concat!13644 (regOne!17316 Regex!8402) (regTwo!17316 Regex!8402)) (EmptyExpr!8402) (Star!8402 (reg!8731 Regex!8402)) (EmptyLang!8402) (Union!8402 (regOne!17317 Regex!8402) (regTwo!17317 Regex!8402)) )
))
(declare-datatypes ((String!36729 0))(
  ( (String!36730 (value!161183 String)) )
))
(declare-datatypes ((BalanceConc!20392 0))(
  ( (BalanceConc!20393 (c!458026 Conc!10377)) )
))
(declare-datatypes ((TokenValueInjection!9910 0))(
  ( (TokenValueInjection!9911 (toValue!7045 Int) (toChars!6904 Int)) )
))
(declare-datatypes ((Rule!9822 0))(
  ( (Rule!9823 (regex!5011 Regex!8402) (tag!5515 String!36729) (isSeparator!5011 Bool) (transformation!5011 TokenValueInjection!9910)) )
))
(declare-datatypes ((Token!9424 0))(
  ( (Token!9425 (value!161184 TokenValue!5241) (rule!7439 Rule!9822) (size!26010 Int) (originalCharacters!5743 List!33542)) )
))
(declare-datatypes ((List!33543 0))(
  ( (Nil!33419) (Cons!33419 (h!38839 Token!9424) (t!231612 List!33543)) )
))
(declare-fun l!4019 () List!33543)

(declare-fun e!1793863 () Bool)

(declare-fun b!2833129 () Bool)

(declare-fun tp!905676 () Bool)

(declare-fun e!1793854 () Bool)

(declare-fun inv!21 (TokenValue!5241) Bool)

(assert (=> b!2833129 (= e!1793863 (and (inv!21 (value!161184 (h!38839 l!4019))) e!1793854 tp!905676))))

(declare-fun e!1793858 () Bool)

(assert (=> b!2833130 (= e!1793858 (and tp!905675 tp!905679))))

(declare-fun b!2833131 () Bool)

(declare-fun tp!905672 () Bool)

(declare-fun e!1793855 () Bool)

(declare-fun inv!45376 (String!36729) Bool)

(declare-fun inv!45379 (TokenValueInjection!9910) Bool)

(assert (=> b!2833131 (= e!1793854 (and tp!905672 (inv!45376 (tag!5515 (rule!7439 (h!38839 l!4019)))) (inv!45379 (transformation!5011 (rule!7439 (h!38839 l!4019)))) e!1793855))))

(declare-fun b!2833132 () Bool)

(declare-fun res!1179313 () Bool)

(declare-fun e!1793859 () Bool)

(assert (=> b!2833132 (=> (not res!1179313) (not e!1793859))))

(declare-datatypes ((LexerInterface!4601 0))(
  ( (LexerInterfaceExt!4598 (__x!22221 Int)) (Lexer!4599) )
))
(declare-fun thiss!11007 () LexerInterface!4601)

(declare-datatypes ((List!33544 0))(
  ( (Nil!33420) (Cons!33420 (h!38840 Rule!9822) (t!231613 List!33544)) )
))
(declare-fun rules!1047 () List!33544)

(declare-fun rulesInvariant!4017 (LexerInterface!4601 List!33544) Bool)

(assert (=> b!2833132 (= res!1179313 (rulesInvariant!4017 thiss!11007 rules!1047))))

(declare-fun b!2833133 () Bool)

(declare-fun ListPrimitiveSize!220 (List!33543) Int)

(assert (=> b!2833133 (= e!1793859 (< (ListPrimitiveSize!220 l!4019) 0))))

(declare-fun res!1179315 () Bool)

(assert (=> start!275374 (=> (not res!1179315) (not e!1793859))))

(assert (=> start!275374 (= res!1179315 (is-Lexer!4599 thiss!11007))))

(assert (=> start!275374 e!1793859))

(assert (=> start!275374 true))

(declare-fun e!1793857 () Bool)

(assert (=> start!275374 e!1793857))

(declare-fun e!1793856 () Bool)

(assert (=> start!275374 e!1793856))

(declare-fun b!2833134 () Bool)

(declare-fun res!1179314 () Bool)

(assert (=> b!2833134 (=> (not res!1179314) (not e!1793859))))

(declare-fun isEmpty!18428 (List!33544) Bool)

(assert (=> b!2833134 (= res!1179314 (not (isEmpty!18428 rules!1047)))))

(assert (=> b!2833135 (= e!1793855 (and tp!905674 tp!905673))))

(declare-fun e!1793862 () Bool)

(declare-fun b!2833136 () Bool)

(declare-fun tp!905671 () Bool)

(assert (=> b!2833136 (= e!1793862 (and tp!905671 (inv!45376 (tag!5515 (h!38840 rules!1047))) (inv!45379 (transformation!5011 (h!38840 rules!1047))) e!1793858))))

(declare-fun b!2833137 () Bool)

(declare-fun res!1179317 () Bool)

(assert (=> b!2833137 (=> (not res!1179317) (not e!1793859))))

(declare-datatypes ((IArray!20761 0))(
  ( (IArray!20762 (innerList!10438 List!33543)) )
))
(declare-datatypes ((Conc!10378 0))(
  ( (Node!10378 (left!25215 Conc!10378) (right!25545 Conc!10378) (csize!20986 Int) (cheight!10589 Int)) (Leaf!15792 (xs!13490 IArray!20761) (csize!20987 Int)) (Empty!10378) )
))
(declare-datatypes ((BalanceConc!20394 0))(
  ( (BalanceConc!20395 (c!458027 Conc!10378)) )
))
(declare-fun rulesProduceEachTokenIndividually!1117 (LexerInterface!4601 List!33544 BalanceConc!20394) Bool)

(declare-fun seqFromList!3257 (List!33543) BalanceConc!20394)

(assert (=> b!2833137 (= res!1179317 (rulesProduceEachTokenIndividually!1117 thiss!11007 rules!1047 (seqFromList!3257 l!4019)))))

(declare-fun b!2833138 () Bool)

(declare-fun res!1179316 () Bool)

(assert (=> b!2833138 (=> (not res!1179316) (not e!1793859))))

(declare-fun rulesProduceEachTokenIndividuallyList!1644 (LexerInterface!4601 List!33544 List!33543) Bool)

(assert (=> b!2833138 (= res!1179316 (rulesProduceEachTokenIndividuallyList!1644 thiss!11007 rules!1047 l!4019))))

(declare-fun b!2833139 () Bool)

(declare-fun tp!905677 () Bool)

(assert (=> b!2833139 (= e!1793857 (and e!1793862 tp!905677))))

(declare-fun b!2833140 () Bool)

(declare-fun tp!905678 () Bool)

(declare-fun inv!45380 (Token!9424) Bool)

(assert (=> b!2833140 (= e!1793856 (and (inv!45380 (h!38839 l!4019)) e!1793863 tp!905678))))

(assert (= (and start!275374 res!1179315) b!2833134))

(assert (= (and b!2833134 res!1179314) b!2833132))

(assert (= (and b!2833132 res!1179313) b!2833138))

(assert (= (and b!2833138 res!1179316) b!2833137))

(assert (= (and b!2833137 res!1179317) b!2833133))

(assert (= b!2833136 b!2833130))

(assert (= b!2833139 b!2833136))

(assert (= (and start!275374 (is-Cons!33420 rules!1047)) b!2833139))

(assert (= b!2833131 b!2833135))

(assert (= b!2833129 b!2833131))

(assert (= b!2833140 b!2833129))

(assert (= (and start!275374 (is-Cons!33419 l!4019)) b!2833140))

(declare-fun m!3262987 () Bool)

(assert (=> b!2833133 m!3262987))

(declare-fun m!3262989 () Bool)

(assert (=> b!2833134 m!3262989))

(declare-fun m!3262991 () Bool)

(assert (=> b!2833136 m!3262991))

(declare-fun m!3262993 () Bool)

(assert (=> b!2833136 m!3262993))

(declare-fun m!3262995 () Bool)

(assert (=> b!2833131 m!3262995))

(declare-fun m!3262997 () Bool)

(assert (=> b!2833131 m!3262997))

(declare-fun m!3262999 () Bool)

(assert (=> b!2833129 m!3262999))

(declare-fun m!3263001 () Bool)

(assert (=> b!2833137 m!3263001))

(assert (=> b!2833137 m!3263001))

(declare-fun m!3263003 () Bool)

(assert (=> b!2833137 m!3263003))

(declare-fun m!3263005 () Bool)

(assert (=> b!2833138 m!3263005))

(declare-fun m!3263007 () Bool)

(assert (=> b!2833140 m!3263007))

(declare-fun m!3263009 () Bool)

(assert (=> b!2833132 m!3263009))

(push 1)

(assert (not b_next!82247))

(assert (not b!2833137))

(assert (not b!2833131))

(assert (not b!2833136))

(assert (not b!2833129))

(assert (not b_next!82251))

(assert b_and!207299)

(assert (not b!2833134))

(assert b_and!207305)

(assert (not b_next!82249))

(assert (not b!2833140))

(assert b_and!207303)

(assert (not b!2833132))

(assert (not b!2833133))

(assert (not b!2833139))

(assert (not b!2833138))

(assert (not b_next!82245))

(assert b_and!207301)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!82247))

(assert (not b_next!82251))

(assert b_and!207299)

(assert b_and!207305)

(assert (not b_next!82249))

(assert b_and!207303)

(assert (not b_next!82245))

(assert b_and!207301)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!822086 () Bool)

(assert (=> d!822086 (= (isEmpty!18428 rules!1047) (is-Nil!33420 rules!1047))))

(assert (=> b!2833134 d!822086))

(declare-fun d!822088 () Bool)

(declare-fun lt!1010600 () Int)

(assert (=> d!822088 (>= lt!1010600 0)))

(declare-fun e!1793903 () Int)

(assert (=> d!822088 (= lt!1010600 e!1793903)))

(declare-fun c!458034 () Bool)

(assert (=> d!822088 (= c!458034 (is-Nil!33419 l!4019))))

(assert (=> d!822088 (= (ListPrimitiveSize!220 l!4019) lt!1010600)))

(declare-fun b!2833184 () Bool)

(assert (=> b!2833184 (= e!1793903 0)))

(declare-fun b!2833185 () Bool)

(assert (=> b!2833185 (= e!1793903 (+ 1 (ListPrimitiveSize!220 (t!231612 l!4019))))))

(assert (= (and d!822088 c!458034) b!2833184))

(assert (= (and d!822088 (not c!458034)) b!2833185))

(declare-fun m!3263039 () Bool)

(assert (=> b!2833185 m!3263039))

(assert (=> b!2833133 d!822088))

(declare-fun b!2833206 () Bool)

(declare-fun e!1793922 () Bool)

(assert (=> b!2833206 (= e!1793922 true)))

(declare-fun b!2833205 () Bool)

(declare-fun e!1793921 () Bool)

(assert (=> b!2833205 (= e!1793921 e!1793922)))

(declare-fun b!2833204 () Bool)

(declare-fun e!1793920 () Bool)

(assert (=> b!2833204 (= e!1793920 e!1793921)))

(declare-fun d!822090 () Bool)

(assert (=> d!822090 e!1793920))

(assert (= b!2833205 b!2833206))

(assert (= b!2833204 b!2833205))

(assert (= (and d!822090 (is-Cons!33420 rules!1047)) b!2833204))

(declare-fun lambda!104028 () Int)

(declare-fun order!17817 () Int)

(declare-fun order!17819 () Int)

(declare-fun dynLambda!14038 (Int Int) Int)

(declare-fun dynLambda!14039 (Int Int) Int)

(assert (=> b!2833206 (< (dynLambda!14038 order!17817 (toValue!7045 (transformation!5011 (h!38840 rules!1047)))) (dynLambda!14039 order!17819 lambda!104028))))

(declare-fun order!17821 () Int)

(declare-fun dynLambda!14040 (Int Int) Int)

(assert (=> b!2833206 (< (dynLambda!14040 order!17821 (toChars!6904 (transformation!5011 (h!38840 rules!1047)))) (dynLambda!14039 order!17819 lambda!104028))))

(assert (=> d!822090 true))

(declare-fun lt!1010605 () Bool)

(declare-fun forall!6869 (List!33543 Int) Bool)

(assert (=> d!822090 (= lt!1010605 (forall!6869 l!4019 lambda!104028))))

(declare-fun e!1793913 () Bool)

(assert (=> d!822090 (= lt!1010605 e!1793913)))

(declare-fun res!1179345 () Bool)

(assert (=> d!822090 (=> res!1179345 e!1793913)))

(assert (=> d!822090 (= res!1179345 (not (is-Cons!33419 l!4019)))))

(assert (=> d!822090 (not (isEmpty!18428 rules!1047))))

(assert (=> d!822090 (= (rulesProduceEachTokenIndividuallyList!1644 thiss!11007 rules!1047 l!4019) lt!1010605)))

(declare-fun b!2833194 () Bool)

(declare-fun e!1793912 () Bool)

(assert (=> b!2833194 (= e!1793913 e!1793912)))

(declare-fun res!1179344 () Bool)

(assert (=> b!2833194 (=> (not res!1179344) (not e!1793912))))

(declare-fun rulesProduceIndividualToken!2133 (LexerInterface!4601 List!33544 Token!9424) Bool)

(assert (=> b!2833194 (= res!1179344 (rulesProduceIndividualToken!2133 thiss!11007 rules!1047 (h!38839 l!4019)))))

(declare-fun b!2833195 () Bool)

(assert (=> b!2833195 (= e!1793912 (rulesProduceEachTokenIndividuallyList!1644 thiss!11007 rules!1047 (t!231612 l!4019)))))

(assert (= (and d!822090 (not res!1179345)) b!2833194))

(assert (= (and b!2833194 res!1179344) b!2833195))

(declare-fun m!3263041 () Bool)

(assert (=> d!822090 m!3263041))

(assert (=> d!822090 m!3262989))

(declare-fun m!3263043 () Bool)

(assert (=> b!2833194 m!3263043))

(declare-fun m!3263045 () Bool)

(assert (=> b!2833195 m!3263045))

(assert (=> b!2833138 d!822090))

(declare-fun d!822092 () Bool)

(declare-fun res!1179348 () Bool)

(declare-fun e!1793925 () Bool)

(assert (=> d!822092 (=> (not res!1179348) (not e!1793925))))

(declare-fun rulesValid!1853 (LexerInterface!4601 List!33544) Bool)

(assert (=> d!822092 (= res!1179348 (rulesValid!1853 thiss!11007 rules!1047))))

(assert (=> d!822092 (= (rulesInvariant!4017 thiss!11007 rules!1047) e!1793925)))

(declare-fun b!2833211 () Bool)

(declare-datatypes ((List!33549 0))(
  ( (Nil!33425) (Cons!33425 (h!38845 String!36729) (t!231638 List!33549)) )
))
(declare-fun noDuplicateTag!1849 (LexerInterface!4601 List!33544 List!33549) Bool)

(assert (=> b!2833211 (= e!1793925 (noDuplicateTag!1849 thiss!11007 rules!1047 Nil!33425))))

(assert (= (and d!822092 res!1179348) b!2833211))

(declare-fun m!3263047 () Bool)

(assert (=> d!822092 m!3263047))

(declare-fun m!3263049 () Bool)

(assert (=> b!2833211 m!3263049))

(assert (=> b!2833132 d!822092))

(declare-fun bs!518496 () Bool)

(declare-fun d!822094 () Bool)

(assert (= bs!518496 (and d!822094 d!822090)))

(declare-fun lambda!104036 () Int)

(assert (=> bs!518496 (= lambda!104036 lambda!104028)))

(declare-fun b!2833267 () Bool)

(declare-fun e!1793963 () Bool)

(assert (=> b!2833267 (= e!1793963 true)))

(declare-fun b!2833266 () Bool)

(declare-fun e!1793962 () Bool)

(assert (=> b!2833266 (= e!1793962 e!1793963)))

(declare-fun b!2833265 () Bool)

(declare-fun e!1793961 () Bool)

(assert (=> b!2833265 (= e!1793961 e!1793962)))

(assert (=> d!822094 e!1793961))

(assert (= b!2833266 b!2833267))

(assert (= b!2833265 b!2833266))

(assert (= (and d!822094 (is-Cons!33420 rules!1047)) b!2833265))

(assert (=> b!2833267 (< (dynLambda!14038 order!17817 (toValue!7045 (transformation!5011 (h!38840 rules!1047)))) (dynLambda!14039 order!17819 lambda!104036))))

(assert (=> b!2833267 (< (dynLambda!14040 order!17821 (toChars!6904 (transformation!5011 (h!38840 rules!1047)))) (dynLambda!14039 order!17819 lambda!104036))))

(assert (=> d!822094 true))

(declare-fun e!1793960 () Bool)

(assert (=> d!822094 e!1793960))

(declare-fun res!1179365 () Bool)

(assert (=> d!822094 (=> (not res!1179365) (not e!1793960))))

(declare-fun lt!1010612 () Bool)

(declare-fun list!12490 (BalanceConc!20394) List!33543)

(assert (=> d!822094 (= res!1179365 (= lt!1010612 (forall!6869 (list!12490 (seqFromList!3257 l!4019)) lambda!104036)))))

(declare-fun forall!6870 (BalanceConc!20394 Int) Bool)

(assert (=> d!822094 (= lt!1010612 (forall!6870 (seqFromList!3257 l!4019) lambda!104036))))

(assert (=> d!822094 (not (isEmpty!18428 rules!1047))))

(assert (=> d!822094 (= (rulesProduceEachTokenIndividually!1117 thiss!11007 rules!1047 (seqFromList!3257 l!4019)) lt!1010612)))

(declare-fun b!2833264 () Bool)

(assert (=> b!2833264 (= e!1793960 (= lt!1010612 (rulesProduceEachTokenIndividuallyList!1644 thiss!11007 rules!1047 (list!12490 (seqFromList!3257 l!4019)))))))

(assert (= (and d!822094 res!1179365) b!2833264))

(assert (=> d!822094 m!3263001))

(declare-fun m!3263081 () Bool)

(assert (=> d!822094 m!3263081))

(assert (=> d!822094 m!3263081))

(declare-fun m!3263083 () Bool)

(assert (=> d!822094 m!3263083))

(assert (=> d!822094 m!3263001))

(declare-fun m!3263085 () Bool)

(assert (=> d!822094 m!3263085))

(assert (=> d!822094 m!3262989))

(assert (=> b!2833264 m!3263001))

(assert (=> b!2833264 m!3263081))

(assert (=> b!2833264 m!3263081))

(declare-fun m!3263087 () Bool)

(assert (=> b!2833264 m!3263087))

(assert (=> b!2833137 d!822094))

(declare-fun d!822108 () Bool)

(declare-fun fromListB!1474 (List!33543) BalanceConc!20394)

(assert (=> d!822108 (= (seqFromList!3257 l!4019) (fromListB!1474 l!4019))))

(declare-fun bs!518497 () Bool)

(assert (= bs!518497 d!822108))

(declare-fun m!3263089 () Bool)

(assert (=> bs!518497 m!3263089))

(assert (=> b!2833137 d!822108))

(declare-fun d!822110 () Bool)

(assert (=> d!822110 (= (inv!45376 (tag!5515 (rule!7439 (h!38839 l!4019)))) (= (mod (str.len (value!161183 (tag!5515 (rule!7439 (h!38839 l!4019))))) 2) 0))))

(assert (=> b!2833131 d!822110))

(declare-fun d!822112 () Bool)

(declare-fun res!1179368 () Bool)

(declare-fun e!1793966 () Bool)

(assert (=> d!822112 (=> (not res!1179368) (not e!1793966))))

(declare-fun semiInverseModEq!2083 (Int Int) Bool)

(assert (=> d!822112 (= res!1179368 (semiInverseModEq!2083 (toChars!6904 (transformation!5011 (rule!7439 (h!38839 l!4019)))) (toValue!7045 (transformation!5011 (rule!7439 (h!38839 l!4019))))))))

(assert (=> d!822112 (= (inv!45379 (transformation!5011 (rule!7439 (h!38839 l!4019)))) e!1793966)))

(declare-fun b!2833270 () Bool)

(declare-fun equivClasses!1982 (Int Int) Bool)

(assert (=> b!2833270 (= e!1793966 (equivClasses!1982 (toChars!6904 (transformation!5011 (rule!7439 (h!38839 l!4019)))) (toValue!7045 (transformation!5011 (rule!7439 (h!38839 l!4019))))))))

(assert (= (and d!822112 res!1179368) b!2833270))

(declare-fun m!3263091 () Bool)

(assert (=> d!822112 m!3263091))

(declare-fun m!3263093 () Bool)

(assert (=> b!2833270 m!3263093))

(assert (=> b!2833131 d!822112))

(declare-fun d!822114 () Bool)

(assert (=> d!822114 (= (inv!45376 (tag!5515 (h!38840 rules!1047))) (= (mod (str.len (value!161183 (tag!5515 (h!38840 rules!1047)))) 2) 0))))

(assert (=> b!2833136 d!822114))

(declare-fun d!822116 () Bool)

(declare-fun res!1179369 () Bool)

(declare-fun e!1793967 () Bool)

(assert (=> d!822116 (=> (not res!1179369) (not e!1793967))))

(assert (=> d!822116 (= res!1179369 (semiInverseModEq!2083 (toChars!6904 (transformation!5011 (h!38840 rules!1047))) (toValue!7045 (transformation!5011 (h!38840 rules!1047)))))))

(assert (=> d!822116 (= (inv!45379 (transformation!5011 (h!38840 rules!1047))) e!1793967)))

(declare-fun b!2833271 () Bool)

(assert (=> b!2833271 (= e!1793967 (equivClasses!1982 (toChars!6904 (transformation!5011 (h!38840 rules!1047))) (toValue!7045 (transformation!5011 (h!38840 rules!1047)))))))

(assert (= (and d!822116 res!1179369) b!2833271))

(declare-fun m!3263095 () Bool)

(assert (=> d!822116 m!3263095))

(declare-fun m!3263097 () Bool)

(assert (=> b!2833271 m!3263097))

(assert (=> b!2833136 d!822116))

(declare-fun d!822118 () Bool)

(declare-fun res!1179374 () Bool)

(declare-fun e!1793970 () Bool)

(assert (=> d!822118 (=> (not res!1179374) (not e!1793970))))

(declare-fun isEmpty!18430 (List!33542) Bool)

(assert (=> d!822118 (= res!1179374 (not (isEmpty!18430 (originalCharacters!5743 (h!38839 l!4019)))))))

(assert (=> d!822118 (= (inv!45380 (h!38839 l!4019)) e!1793970)))

(declare-fun b!2833276 () Bool)

(declare-fun res!1179375 () Bool)

(assert (=> b!2833276 (=> (not res!1179375) (not e!1793970))))

(declare-fun list!12491 (BalanceConc!20392) List!33542)

(declare-fun dynLambda!14041 (Int TokenValue!5241) BalanceConc!20392)

(assert (=> b!2833276 (= res!1179375 (= (originalCharacters!5743 (h!38839 l!4019)) (list!12491 (dynLambda!14041 (toChars!6904 (transformation!5011 (rule!7439 (h!38839 l!4019)))) (value!161184 (h!38839 l!4019))))))))

(declare-fun b!2833277 () Bool)

(declare-fun size!26012 (List!33542) Int)

(assert (=> b!2833277 (= e!1793970 (= (size!26010 (h!38839 l!4019)) (size!26012 (originalCharacters!5743 (h!38839 l!4019)))))))

(assert (= (and d!822118 res!1179374) b!2833276))

(assert (= (and b!2833276 res!1179375) b!2833277))

(declare-fun b_lambda!85121 () Bool)

(assert (=> (not b_lambda!85121) (not b!2833276)))

(declare-fun t!231631 () Bool)

(declare-fun tb!154313 () Bool)

(assert (=> (and b!2833135 (= (toChars!6904 (transformation!5011 (rule!7439 (h!38839 l!4019)))) (toChars!6904 (transformation!5011 (rule!7439 (h!38839 l!4019))))) t!231631) tb!154313))

(declare-fun b!2833282 () Bool)

(declare-fun e!1793973 () Bool)

(declare-fun tp!905712 () Bool)

(declare-fun inv!45383 (Conc!10377) Bool)

(assert (=> b!2833282 (= e!1793973 (and (inv!45383 (c!458026 (dynLambda!14041 (toChars!6904 (transformation!5011 (rule!7439 (h!38839 l!4019)))) (value!161184 (h!38839 l!4019))))) tp!905712))))

(declare-fun result!192392 () Bool)

(declare-fun inv!45384 (BalanceConc!20392) Bool)

(assert (=> tb!154313 (= result!192392 (and (inv!45384 (dynLambda!14041 (toChars!6904 (transformation!5011 (rule!7439 (h!38839 l!4019)))) (value!161184 (h!38839 l!4019)))) e!1793973))))

(assert (= tb!154313 b!2833282))

(declare-fun m!3263099 () Bool)

(assert (=> b!2833282 m!3263099))

(declare-fun m!3263101 () Bool)

(assert (=> tb!154313 m!3263101))

(assert (=> b!2833276 t!231631))

(declare-fun b_and!207319 () Bool)

(assert (= b_and!207301 (and (=> t!231631 result!192392) b_and!207319)))

(declare-fun t!231633 () Bool)

(declare-fun tb!154315 () Bool)

(assert (=> (and b!2833130 (= (toChars!6904 (transformation!5011 (h!38840 rules!1047))) (toChars!6904 (transformation!5011 (rule!7439 (h!38839 l!4019))))) t!231633) tb!154315))

(declare-fun result!192396 () Bool)

(assert (= result!192396 result!192392))

(assert (=> b!2833276 t!231633))

(declare-fun b_and!207321 () Bool)

(assert (= b_and!207305 (and (=> t!231633 result!192396) b_and!207321)))

(declare-fun m!3263103 () Bool)

(assert (=> d!822118 m!3263103))

(declare-fun m!3263105 () Bool)

(assert (=> b!2833276 m!3263105))

(assert (=> b!2833276 m!3263105))

(declare-fun m!3263107 () Bool)

(assert (=> b!2833276 m!3263107))

(declare-fun m!3263109 () Bool)

(assert (=> b!2833277 m!3263109))

(assert (=> b!2833140 d!822118))

(declare-fun d!822120 () Bool)

(declare-fun c!458049 () Bool)

(assert (=> d!822120 (= c!458049 (is-IntegerValue!15723 (value!161184 (h!38839 l!4019))))))

(declare-fun e!1793981 () Bool)

(assert (=> d!822120 (= (inv!21 (value!161184 (h!38839 l!4019))) e!1793981)))

(declare-fun b!2833293 () Bool)

(declare-fun e!1793980 () Bool)

(declare-fun inv!17 (TokenValue!5241) Bool)

(assert (=> b!2833293 (= e!1793980 (inv!17 (value!161184 (h!38839 l!4019))))))

(declare-fun b!2833294 () Bool)

(declare-fun res!1179378 () Bool)

(declare-fun e!1793982 () Bool)

(assert (=> b!2833294 (=> res!1179378 e!1793982)))

(assert (=> b!2833294 (= res!1179378 (not (is-IntegerValue!15725 (value!161184 (h!38839 l!4019)))))))

(assert (=> b!2833294 (= e!1793980 e!1793982)))

(declare-fun b!2833295 () Bool)

(declare-fun inv!15 (TokenValue!5241) Bool)

(assert (=> b!2833295 (= e!1793982 (inv!15 (value!161184 (h!38839 l!4019))))))

(declare-fun b!2833296 () Bool)

(assert (=> b!2833296 (= e!1793981 e!1793980)))

(declare-fun c!458048 () Bool)

(assert (=> b!2833296 (= c!458048 (is-IntegerValue!15724 (value!161184 (h!38839 l!4019))))))

(declare-fun b!2833297 () Bool)

(declare-fun inv!16 (TokenValue!5241) Bool)

(assert (=> b!2833297 (= e!1793981 (inv!16 (value!161184 (h!38839 l!4019))))))

(assert (= (and d!822120 c!458049) b!2833297))

(assert (= (and d!822120 (not c!458049)) b!2833296))

(assert (= (and b!2833296 c!458048) b!2833293))

(assert (= (and b!2833296 (not c!458048)) b!2833294))

(assert (= (and b!2833294 (not res!1179378)) b!2833295))

(declare-fun m!3263111 () Bool)

(assert (=> b!2833293 m!3263111))

(declare-fun m!3263113 () Bool)

(assert (=> b!2833295 m!3263113))

(declare-fun m!3263115 () Bool)

(assert (=> b!2833297 m!3263115))

(assert (=> b!2833129 d!822120))

(declare-fun b!2833308 () Bool)

(declare-fun b_free!81557 () Bool)

(declare-fun b_next!82261 () Bool)

(assert (=> b!2833308 (= b_free!81557 (not b_next!82261))))

(declare-fun tp!905723 () Bool)

(declare-fun b_and!207323 () Bool)

(assert (=> b!2833308 (= tp!905723 b_and!207323)))

(declare-fun b_free!81559 () Bool)

(declare-fun b_next!82263 () Bool)

(assert (=> b!2833308 (= b_free!81559 (not b_next!82263))))

(declare-fun t!231635 () Bool)

(declare-fun tb!154317 () Bool)

(assert (=> (and b!2833308 (= (toChars!6904 (transformation!5011 (h!38840 (t!231613 rules!1047)))) (toChars!6904 (transformation!5011 (rule!7439 (h!38839 l!4019))))) t!231635) tb!154317))

(declare-fun result!192400 () Bool)

(assert (= result!192400 result!192392))

(assert (=> b!2833276 t!231635))

(declare-fun b_and!207325 () Bool)

(declare-fun tp!905721 () Bool)

(assert (=> b!2833308 (= tp!905721 (and (=> t!231635 result!192400) b_and!207325))))

(declare-fun e!1793992 () Bool)

(assert (=> b!2833308 (= e!1793992 (and tp!905723 tp!905721))))

(declare-fun tp!905724 () Bool)

(declare-fun e!1793991 () Bool)

(declare-fun b!2833307 () Bool)

(assert (=> b!2833307 (= e!1793991 (and tp!905724 (inv!45376 (tag!5515 (h!38840 (t!231613 rules!1047)))) (inv!45379 (transformation!5011 (h!38840 (t!231613 rules!1047)))) e!1793992))))

(declare-fun b!2833306 () Bool)

(declare-fun e!1793994 () Bool)

(declare-fun tp!905722 () Bool)

(assert (=> b!2833306 (= e!1793994 (and e!1793991 tp!905722))))

(assert (=> b!2833139 (= tp!905677 e!1793994)))

(assert (= b!2833307 b!2833308))

(assert (= b!2833306 b!2833307))

(assert (= (and b!2833139 (is-Cons!33420 (t!231613 rules!1047))) b!2833306))

(declare-fun m!3263117 () Bool)

(assert (=> b!2833307 m!3263117))

(declare-fun m!3263119 () Bool)

(assert (=> b!2833307 m!3263119))

(declare-fun e!1793997 () Bool)

(assert (=> b!2833131 (= tp!905672 e!1793997)))

(declare-fun b!2833321 () Bool)

(declare-fun tp!905736 () Bool)

(assert (=> b!2833321 (= e!1793997 tp!905736)))

(declare-fun b!2833320 () Bool)

(declare-fun tp!905735 () Bool)

(declare-fun tp!905737 () Bool)

(assert (=> b!2833320 (= e!1793997 (and tp!905735 tp!905737))))

(declare-fun b!2833319 () Bool)

(declare-fun tp_is_empty!14577 () Bool)

(assert (=> b!2833319 (= e!1793997 tp_is_empty!14577)))

(declare-fun b!2833322 () Bool)

(declare-fun tp!905739 () Bool)

(declare-fun tp!905738 () Bool)

(assert (=> b!2833322 (= e!1793997 (and tp!905739 tp!905738))))

(assert (= (and b!2833131 (is-ElementMatch!8402 (regex!5011 (rule!7439 (h!38839 l!4019))))) b!2833319))

(assert (= (and b!2833131 (is-Concat!13644 (regex!5011 (rule!7439 (h!38839 l!4019))))) b!2833320))

(assert (= (and b!2833131 (is-Star!8402 (regex!5011 (rule!7439 (h!38839 l!4019))))) b!2833321))

(assert (= (and b!2833131 (is-Union!8402 (regex!5011 (rule!7439 (h!38839 l!4019))))) b!2833322))

(declare-fun e!1793998 () Bool)

(assert (=> b!2833136 (= tp!905671 e!1793998)))

(declare-fun b!2833325 () Bool)

(declare-fun tp!905741 () Bool)

(assert (=> b!2833325 (= e!1793998 tp!905741)))

(declare-fun b!2833324 () Bool)

(declare-fun tp!905740 () Bool)

(declare-fun tp!905742 () Bool)

(assert (=> b!2833324 (= e!1793998 (and tp!905740 tp!905742))))

(declare-fun b!2833323 () Bool)

(assert (=> b!2833323 (= e!1793998 tp_is_empty!14577)))

(declare-fun b!2833326 () Bool)

(declare-fun tp!905744 () Bool)

(declare-fun tp!905743 () Bool)

(assert (=> b!2833326 (= e!1793998 (and tp!905744 tp!905743))))

(assert (= (and b!2833136 (is-ElementMatch!8402 (regex!5011 (h!38840 rules!1047)))) b!2833323))

(assert (= (and b!2833136 (is-Concat!13644 (regex!5011 (h!38840 rules!1047)))) b!2833324))

(assert (= (and b!2833136 (is-Star!8402 (regex!5011 (h!38840 rules!1047)))) b!2833325))

(assert (= (and b!2833136 (is-Union!8402 (regex!5011 (h!38840 rules!1047)))) b!2833326))

(declare-fun b!2833340 () Bool)

(declare-fun b_free!81561 () Bool)

(declare-fun b_next!82265 () Bool)

(assert (=> b!2833340 (= b_free!81561 (not b_next!82265))))

(declare-fun tp!905755 () Bool)

(declare-fun b_and!207327 () Bool)

(assert (=> b!2833340 (= tp!905755 b_and!207327)))

(declare-fun b_free!81563 () Bool)

(declare-fun b_next!82267 () Bool)

(assert (=> b!2833340 (= b_free!81563 (not b_next!82267))))

(declare-fun t!231637 () Bool)

(declare-fun tb!154319 () Bool)

(assert (=> (and b!2833340 (= (toChars!6904 (transformation!5011 (rule!7439 (h!38839 (t!231612 l!4019))))) (toChars!6904 (transformation!5011 (rule!7439 (h!38839 l!4019))))) t!231637) tb!154319))

(declare-fun result!192406 () Bool)

(assert (= result!192406 result!192392))

(assert (=> b!2833276 t!231637))

(declare-fun tp!905759 () Bool)

(declare-fun b_and!207329 () Bool)

(assert (=> b!2833340 (= tp!905759 (and (=> t!231637 result!192406) b_and!207329))))

(declare-fun e!1794016 () Bool)

(assert (=> b!2833340 (= e!1794016 (and tp!905755 tp!905759))))

(declare-fun e!1794012 () Bool)

(declare-fun b!2833338 () Bool)

(declare-fun tp!905757 () Bool)

(declare-fun e!1794013 () Bool)

(assert (=> b!2833338 (= e!1794012 (and (inv!21 (value!161184 (h!38839 (t!231612 l!4019)))) e!1794013 tp!905757))))

(declare-fun e!1794011 () Bool)

(assert (=> b!2833140 (= tp!905678 e!1794011)))

(declare-fun b!2833337 () Bool)

(declare-fun tp!905758 () Bool)

(assert (=> b!2833337 (= e!1794011 (and (inv!45380 (h!38839 (t!231612 l!4019))) e!1794012 tp!905758))))

(declare-fun b!2833339 () Bool)

(declare-fun tp!905756 () Bool)

(assert (=> b!2833339 (= e!1794013 (and tp!905756 (inv!45376 (tag!5515 (rule!7439 (h!38839 (t!231612 l!4019))))) (inv!45379 (transformation!5011 (rule!7439 (h!38839 (t!231612 l!4019))))) e!1794016))))

(assert (= b!2833339 b!2833340))

(assert (= b!2833338 b!2833339))

(assert (= b!2833337 b!2833338))

(assert (= (and b!2833140 (is-Cons!33419 (t!231612 l!4019))) b!2833337))

(declare-fun m!3263121 () Bool)

(assert (=> b!2833338 m!3263121))

(declare-fun m!3263123 () Bool)

(assert (=> b!2833337 m!3263123))

(declare-fun m!3263125 () Bool)

(assert (=> b!2833339 m!3263125))

(declare-fun m!3263127 () Bool)

(assert (=> b!2833339 m!3263127))

(declare-fun b!2833345 () Bool)

(declare-fun e!1794019 () Bool)

(declare-fun tp!905762 () Bool)

(assert (=> b!2833345 (= e!1794019 (and tp_is_empty!14577 tp!905762))))

(assert (=> b!2833129 (= tp!905676 e!1794019)))

(assert (= (and b!2833129 (is-Cons!33418 (originalCharacters!5743 (h!38839 l!4019)))) b!2833345))

(declare-fun b_lambda!85123 () Bool)

(assert (= b_lambda!85121 (or (and b!2833135 b_free!81543) (and b!2833130 b_free!81547 (= (toChars!6904 (transformation!5011 (h!38840 rules!1047))) (toChars!6904 (transformation!5011 (rule!7439 (h!38839 l!4019)))))) (and b!2833308 b_free!81559 (= (toChars!6904 (transformation!5011 (h!38840 (t!231613 rules!1047)))) (toChars!6904 (transformation!5011 (rule!7439 (h!38839 l!4019)))))) (and b!2833340 b_free!81563 (= (toChars!6904 (transformation!5011 (rule!7439 (h!38839 (t!231612 l!4019))))) (toChars!6904 (transformation!5011 (rule!7439 (h!38839 l!4019)))))) b_lambda!85123)))

(push 1)

(assert (not b!2833185))

(assert (not d!822108))

(assert (not b!2833320))

(assert b_and!207327)

(assert (not tb!154313))

(assert (not d!822112))

(assert (not b!2833211))

(assert (not b!2833264))

(assert (not b!2833337))

(assert b_and!207299)

(assert (not b_next!82261))

(assert (not b_next!82247))

(assert (not b_next!82267))

(assert b_and!207319)

(assert (not b!2833293))

(assert (not d!822118))

(assert (not b!2833345))

(assert b_and!207325)

(assert (not d!822116))

(assert (not b_lambda!85123))

(assert (not b!2833338))

(assert (not b!2833204))

(assert (not b!2833194))

(assert (not b!2833322))

(assert (not b!2833297))

(assert (not b!2833321))

(assert (not b_next!82245))

(assert (not b!2833295))

(assert (not d!822094))

(assert (not b!2833326))

(assert (not b!2833270))

(assert (not b!2833282))

(assert tp_is_empty!14577)

(assert (not b_next!82251))

(assert (not b!2833324))

(assert (not b_next!82263))

(assert (not b!2833276))

(assert (not b_next!82265))

(assert b_and!207323)

(assert (not b!2833325))

(assert (not b!2833277))

(assert (not b!2833339))

(assert (not b!2833271))

(assert (not b!2833307))

(assert (not b!2833306))

(assert (not b!2833265))

(assert b_and!207321)

(assert (not b!2833195))

(assert (not b_next!82249))

(assert b_and!207329)

(assert (not d!822092))

(assert (not d!822090))

(assert b_and!207303)

(check-sat)

(pop 1)

(push 1)

(assert b_and!207319)

(assert b_and!207327)

(assert b_and!207325)

(assert (not b_next!82245))

(assert b_and!207299)

(assert (not b_next!82265))

(assert b_and!207323)

(assert b_and!207321)

(assert (not b_next!82261))

(assert b_and!207303)

(assert (not b_next!82247))

(assert (not b_next!82267))

(assert (not b_next!82251))

(assert (not b_next!82263))

(assert (not b_next!82249))

(assert b_and!207329)

(check-sat)

(pop 1)

