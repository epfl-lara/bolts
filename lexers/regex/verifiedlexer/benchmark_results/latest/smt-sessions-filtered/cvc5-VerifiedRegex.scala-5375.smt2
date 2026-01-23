; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!274108 () Bool)

(assert start!274108)

(declare-fun b!2824206 () Bool)

(declare-fun b_free!80893 () Bool)

(declare-fun b_next!81597 () Bool)

(assert (=> b!2824206 (= b_free!80893 (not b_next!81597))))

(declare-fun tp!902032 () Bool)

(declare-fun b_and!206391 () Bool)

(assert (=> b!2824206 (= tp!902032 b_and!206391)))

(declare-fun b_free!80895 () Bool)

(declare-fun b_next!81599 () Bool)

(assert (=> b!2824206 (= b_free!80895 (not b_next!81599))))

(declare-fun tp!902031 () Bool)

(declare-fun b_and!206393 () Bool)

(assert (=> b!2824206 (= tp!902031 b_and!206393)))

(declare-fun b!2824211 () Bool)

(declare-fun b_free!80897 () Bool)

(declare-fun b_next!81601 () Bool)

(assert (=> b!2824211 (= b_free!80897 (not b_next!81601))))

(declare-fun tp!902033 () Bool)

(declare-fun b_and!206395 () Bool)

(assert (=> b!2824211 (= tp!902033 b_and!206395)))

(declare-fun b_free!80899 () Bool)

(declare-fun b_next!81603 () Bool)

(assert (=> b!2824211 (= b_free!80899 (not b_next!81603))))

(declare-fun tp!902028 () Bool)

(declare-fun b_and!206397 () Bool)

(assert (=> b!2824211 (= tp!902028 b_and!206397)))

(declare-fun b!2824228 () Bool)

(declare-fun e!1787073 () Bool)

(assert (=> b!2824228 (= e!1787073 true)))

(declare-fun b!2824227 () Bool)

(declare-fun e!1787072 () Bool)

(assert (=> b!2824227 (= e!1787072 e!1787073)))

(declare-fun b!2824226 () Bool)

(declare-fun e!1787071 () Bool)

(assert (=> b!2824226 (= e!1787071 e!1787072)))

(declare-fun b!2824209 () Bool)

(assert (=> b!2824209 e!1787071))

(assert (= b!2824227 b!2824228))

(assert (= b!2824226 b!2824227))

(declare-datatypes ((C!16898 0))(
  ( (C!16899 (val!10429 Int)) )
))
(declare-datatypes ((List!33278 0))(
  ( (Nil!33154) (Cons!33154 (h!38574 (_ BitVec 16)) (t!230821 List!33278)) )
))
(declare-datatypes ((TokenValue!5198 0))(
  ( (FloatLiteralValue!10396 (text!36831 List!33278)) (TokenValueExt!5197 (__x!22069 Int)) (Broken!25990 (value!159883 List!33278)) (Object!5321) (End!5198) (Def!5198) (Underscore!5198) (Match!5198) (Else!5198) (Error!5198) (Case!5198) (If!5198) (Extends!5198) (Abstract!5198) (Class!5198) (Val!5198) (DelimiterValue!10396 (del!5258 List!33278)) (KeywordValue!5204 (value!159884 List!33278)) (CommentValue!10396 (value!159885 List!33278)) (WhitespaceValue!10396 (value!159886 List!33278)) (IndentationValue!5198 (value!159887 List!33278)) (String!36447) (Int32!5198) (Broken!25991 (value!159888 List!33278)) (Boolean!5199) (Unit!47160) (OperatorValue!5201 (op!5258 List!33278)) (IdentifierValue!10396 (value!159889 List!33278)) (IdentifierValue!10397 (value!159890 List!33278)) (WhitespaceValue!10397 (value!159891 List!33278)) (True!10396) (False!10396) (Broken!25992 (value!159892 List!33278)) (Broken!25993 (value!159893 List!33278)) (True!10397) (RightBrace!5198) (RightBracket!5198) (Colon!5198) (Null!5198) (Comma!5198) (LeftBracket!5198) (False!10397) (LeftBrace!5198) (ImaginaryLiteralValue!5198 (text!36832 List!33278)) (StringLiteralValue!15594 (value!159894 List!33278)) (EOFValue!5198 (value!159895 List!33278)) (IdentValue!5198 (value!159896 List!33278)) (DelimiterValue!10397 (value!159897 List!33278)) (DedentValue!5198 (value!159898 List!33278)) (NewLineValue!5198 (value!159899 List!33278)) (IntegerValue!15594 (value!159900 (_ BitVec 32)) (text!36833 List!33278)) (IntegerValue!15595 (value!159901 Int) (text!36834 List!33278)) (Times!5198) (Or!5198) (Equal!5198) (Minus!5198) (Broken!25994 (value!159902 List!33278)) (And!5198) (Div!5198) (LessEqual!5198) (Mod!5198) (Concat!13556) (Not!5198) (Plus!5198) (SpaceValue!5198 (value!159903 List!33278)) (IntegerValue!15596 (value!159904 Int) (text!36835 List!33278)) (StringLiteralValue!15595 (text!36836 List!33278)) (FloatLiteralValue!10397 (text!36837 List!33278)) (BytesLiteralValue!5198 (value!159905 List!33278)) (CommentValue!10397 (value!159906 List!33278)) (StringLiteralValue!15596 (value!159907 List!33278)) (ErrorTokenValue!5198 (msg!5259 List!33278)) )
))
(declare-datatypes ((List!33279 0))(
  ( (Nil!33155) (Cons!33155 (h!38575 C!16898) (t!230822 List!33279)) )
))
(declare-datatypes ((IArray!20587 0))(
  ( (IArray!20588 (innerList!10351 List!33279)) )
))
(declare-datatypes ((Conc!10291 0))(
  ( (Node!10291 (left!25048 Conc!10291) (right!25378 Conc!10291) (csize!20812 Int) (cheight!10502 Int)) (Leaf!15667 (xs!13403 IArray!20587) (csize!20813 Int)) (Empty!10291) )
))
(declare-datatypes ((BalanceConc!20220 0))(
  ( (BalanceConc!20221 (c!457320 Conc!10291)) )
))
(declare-datatypes ((TokenValueInjection!9824 0))(
  ( (TokenValueInjection!9825 (toValue!6990 Int) (toChars!6849 Int)) )
))
(declare-datatypes ((String!36448 0))(
  ( (String!36449 (value!159908 String)) )
))
(declare-datatypes ((Regex!8358 0))(
  ( (ElementMatch!8358 (c!457321 C!16898)) (Concat!13557 (regOne!17228 Regex!8358) (regTwo!17228 Regex!8358)) (EmptyExpr!8358) (Star!8358 (reg!8687 Regex!8358)) (EmptyLang!8358) (Union!8358 (regOne!17229 Regex!8358) (regTwo!17229 Regex!8358)) )
))
(declare-datatypes ((Rule!9736 0))(
  ( (Rule!9737 (regex!4968 Regex!8358) (tag!5472 String!36448) (isSeparator!4968 Bool) (transformation!4968 TokenValueInjection!9824)) )
))
(declare-datatypes ((List!33280 0))(
  ( (Nil!33156) (Cons!33156 (h!38576 Rule!9736) (t!230823 List!33280)) )
))
(declare-fun rules!4424 () List!33280)

(assert (= (and b!2824209 (is-Cons!33156 rules!4424)) b!2824226))

(declare-fun order!17663 () Int)

(declare-fun lambda!103732 () Int)

(declare-fun order!17661 () Int)

(declare-fun dynLambda!13905 (Int Int) Int)

(declare-fun dynLambda!13906 (Int Int) Int)

(assert (=> b!2824228 (< (dynLambda!13905 order!17661 (toValue!6990 (transformation!4968 (h!38576 rules!4424)))) (dynLambda!13906 order!17663 lambda!103732))))

(declare-fun order!17665 () Int)

(declare-fun dynLambda!13907 (Int Int) Int)

(assert (=> b!2824228 (< (dynLambda!13907 order!17665 (toChars!6849 (transformation!4968 (h!38576 rules!4424)))) (dynLambda!13906 order!17663 lambda!103732))))

(declare-fun e!1787063 () Bool)

(declare-datatypes ((LexerInterface!4559 0))(
  ( (LexerInterfaceExt!4556 (__x!22070 Int)) (Lexer!4557) )
))
(declare-fun thiss!27755 () LexerInterface!4559)

(declare-fun b!2824202 () Bool)

(declare-datatypes ((Token!9338 0))(
  ( (Token!9339 (value!159909 TokenValue!5198) (rule!7396 Rule!9736) (size!25817 Int) (originalCharacters!5700 List!33279)) )
))
(declare-datatypes ((List!33281 0))(
  ( (Nil!33157) (Cons!33157 (h!38577 Token!9338) (t!230824 List!33281)) )
))
(declare-fun lt!1007796 () List!33281)

(declare-fun rulesProduceEachTokenIndividuallyList!1611 (LexerInterface!4559 List!33280 List!33281) Bool)

(assert (=> b!2824202 (= e!1787063 (rulesProduceEachTokenIndividuallyList!1611 thiss!27755 rules!4424 (t!230824 lt!1007796)))))

(declare-fun tp!902027 () Bool)

(declare-fun l!6581 () List!33281)

(declare-fun e!1787053 () Bool)

(declare-fun b!2824203 () Bool)

(declare-fun e!1787056 () Bool)

(declare-fun inv!21 (TokenValue!5198) Bool)

(assert (=> b!2824203 (= e!1787056 (and (inv!21 (value!159909 (h!38577 l!6581))) e!1787053 tp!902027))))

(declare-fun b!2824204 () Bool)

(declare-fun res!1175304 () Bool)

(declare-fun e!1787058 () Bool)

(assert (=> b!2824204 (=> (not res!1175304) (not e!1787058))))

(declare-fun i!1730 () Int)

(assert (=> b!2824204 (= res!1175304 (and (not (is-Nil!33157 l!6581)) (<= i!1730 0)))))

(declare-fun b!2824205 () Bool)

(declare-fun res!1175298 () Bool)

(assert (=> b!2824205 (=> (not res!1175298) (not e!1787058))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!696 (LexerInterface!4559 List!33281 List!33280) Bool)

(assert (=> b!2824205 (= res!1175298 (tokensListTwoByTwoPredicateSeparableList!696 thiss!27755 l!6581 rules!4424))))

(declare-fun e!1787060 () Bool)

(assert (=> b!2824206 (= e!1787060 (and tp!902032 tp!902031))))

(declare-fun b!2824208 () Bool)

(declare-fun e!1787064 () Bool)

(declare-fun subseq!454 (List!33281 List!33281) Bool)

(assert (=> b!2824208 (= e!1787064 (subseq!454 lt!1007796 l!6581))))

(assert (=> b!2824209 (= e!1787058 (not e!1787064))))

(declare-fun res!1175305 () Bool)

(assert (=> b!2824209 (=> res!1175305 e!1787064)))

(declare-fun forall!6798 (List!33281 Int) Bool)

(assert (=> b!2824209 (= res!1175305 (not (forall!6798 l!6581 lambda!103732)))))

(declare-fun e!1787062 () Bool)

(assert (=> b!2824209 (= (rulesProduceEachTokenIndividuallyList!1611 thiss!27755 rules!4424 lt!1007796) e!1787062)))

(declare-fun res!1175297 () Bool)

(assert (=> b!2824209 (=> res!1175297 e!1787062)))

(assert (=> b!2824209 (= res!1175297 (not (is-Cons!33157 lt!1007796)))))

(declare-fun take!562 (List!33281 Int) List!33281)

(assert (=> b!2824209 (= lt!1007796 (take!562 l!6581 i!1730))))

(declare-fun b!2824210 () Bool)

(declare-fun res!1175302 () Bool)

(assert (=> b!2824210 (=> (not res!1175302) (not e!1787058))))

(declare-fun rulesInvariant!3977 (LexerInterface!4559 List!33280) Bool)

(assert (=> b!2824210 (= res!1175302 (rulesInvariant!3977 thiss!27755 rules!4424))))

(declare-fun e!1787059 () Bool)

(assert (=> b!2824211 (= e!1787059 (and tp!902033 tp!902028))))

(declare-fun b!2824212 () Bool)

(declare-fun tp!902029 () Bool)

(declare-fun inv!45084 (String!36448) Bool)

(declare-fun inv!45087 (TokenValueInjection!9824) Bool)

(assert (=> b!2824212 (= e!1787053 (and tp!902029 (inv!45084 (tag!5472 (rule!7396 (h!38577 l!6581)))) (inv!45087 (transformation!4968 (rule!7396 (h!38577 l!6581)))) e!1787060))))

(declare-fun tp!902026 () Bool)

(declare-fun b!2824213 () Bool)

(declare-fun e!1787052 () Bool)

(assert (=> b!2824213 (= e!1787052 (and tp!902026 (inv!45084 (tag!5472 (h!38576 rules!4424))) (inv!45087 (transformation!4968 (h!38576 rules!4424))) e!1787059))))

(declare-fun b!2824214 () Bool)

(declare-fun res!1175301 () Bool)

(assert (=> b!2824214 (=> (not res!1175301) (not e!1787058))))

(declare-fun isEmpty!18337 (List!33280) Bool)

(assert (=> b!2824214 (= res!1175301 (not (isEmpty!18337 rules!4424)))))

(declare-fun e!1787055 () Bool)

(declare-fun tp!902030 () Bool)

(declare-fun b!2824215 () Bool)

(declare-fun inv!45088 (Token!9338) Bool)

(assert (=> b!2824215 (= e!1787055 (and (inv!45088 (h!38577 l!6581)) e!1787056 tp!902030))))

(declare-fun res!1175303 () Bool)

(assert (=> start!274108 (=> (not res!1175303) (not e!1787058))))

(assert (=> start!274108 (= res!1175303 (is-Lexer!4557 thiss!27755))))

(assert (=> start!274108 e!1787058))

(assert (=> start!274108 true))

(declare-fun e!1787054 () Bool)

(assert (=> start!274108 e!1787054))

(assert (=> start!274108 e!1787055))

(declare-fun b!2824207 () Bool)

(assert (=> b!2824207 (= e!1787062 e!1787063)))

(declare-fun res!1175299 () Bool)

(assert (=> b!2824207 (=> (not res!1175299) (not e!1787063))))

(declare-fun rulesProduceIndividualToken!2097 (LexerInterface!4559 List!33280 Token!9338) Bool)

(assert (=> b!2824207 (= res!1175299 (rulesProduceIndividualToken!2097 thiss!27755 rules!4424 (h!38577 lt!1007796)))))

(declare-fun b!2824216 () Bool)

(declare-fun res!1175300 () Bool)

(assert (=> b!2824216 (=> (not res!1175300) (not e!1787058))))

(assert (=> b!2824216 (= res!1175300 (rulesProduceEachTokenIndividuallyList!1611 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2824217 () Bool)

(declare-fun tp!902025 () Bool)

(assert (=> b!2824217 (= e!1787054 (and e!1787052 tp!902025))))

(assert (= (and start!274108 res!1175303) b!2824214))

(assert (= (and b!2824214 res!1175301) b!2824210))

(assert (= (and b!2824210 res!1175302) b!2824216))

(assert (= (and b!2824216 res!1175300) b!2824205))

(assert (= (and b!2824205 res!1175298) b!2824204))

(assert (= (and b!2824204 res!1175304) b!2824209))

(assert (= (and b!2824209 (not res!1175297)) b!2824207))

(assert (= (and b!2824207 res!1175299) b!2824202))

(assert (= (and b!2824209 (not res!1175305)) b!2824208))

(assert (= b!2824213 b!2824211))

(assert (= b!2824217 b!2824213))

(assert (= (and start!274108 (is-Cons!33156 rules!4424)) b!2824217))

(assert (= b!2824212 b!2824206))

(assert (= b!2824203 b!2824212))

(assert (= b!2824215 b!2824203))

(assert (= (and start!274108 (is-Cons!33157 l!6581)) b!2824215))

(declare-fun m!3254663 () Bool)

(assert (=> b!2824205 m!3254663))

(declare-fun m!3254665 () Bool)

(assert (=> b!2824207 m!3254665))

(declare-fun m!3254667 () Bool)

(assert (=> b!2824212 m!3254667))

(declare-fun m!3254669 () Bool)

(assert (=> b!2824212 m!3254669))

(declare-fun m!3254671 () Bool)

(assert (=> b!2824208 m!3254671))

(declare-fun m!3254673 () Bool)

(assert (=> b!2824213 m!3254673))

(declare-fun m!3254675 () Bool)

(assert (=> b!2824213 m!3254675))

(declare-fun m!3254677 () Bool)

(assert (=> b!2824203 m!3254677))

(declare-fun m!3254679 () Bool)

(assert (=> b!2824214 m!3254679))

(declare-fun m!3254681 () Bool)

(assert (=> b!2824210 m!3254681))

(declare-fun m!3254683 () Bool)

(assert (=> b!2824216 m!3254683))

(declare-fun m!3254685 () Bool)

(assert (=> b!2824202 m!3254685))

(declare-fun m!3254687 () Bool)

(assert (=> b!2824209 m!3254687))

(declare-fun m!3254689 () Bool)

(assert (=> b!2824209 m!3254689))

(declare-fun m!3254691 () Bool)

(assert (=> b!2824209 m!3254691))

(declare-fun m!3254693 () Bool)

(assert (=> b!2824215 m!3254693))

(push 1)

(assert (not b!2824226))

(assert (not b!2824203))

(assert (not b_next!81601))

(assert (not b!2824202))

(assert (not b!2824214))

(assert b_and!206397)

(assert (not b!2824212))

(assert (not b!2824213))

(assert (not b_next!81603))

(assert (not b!2824215))

(assert (not b!2824205))

(assert (not b!2824207))

(assert (not b!2824208))

(assert (not b_next!81599))

(assert (not b!2824210))

(assert (not b!2824217))

(assert (not b_next!81597))

(assert b_and!206395)

(assert (not b!2824209))

(assert b_and!206391)

(assert (not b!2824216))

(assert b_and!206393)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81599))

(assert (not b_next!81601))

(assert b_and!206391)

(assert b_and!206397)

(assert (not b_next!81603))

(assert b_and!206393)

(assert (not b_next!81597))

(assert b_and!206395)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2824296 () Bool)

(declare-fun e!1787136 () Bool)

(declare-fun e!1787134 () Bool)

(assert (=> b!2824296 (= e!1787136 e!1787134)))

(declare-fun res!1175346 () Bool)

(assert (=> b!2824296 (=> (not res!1175346) (not e!1787134))))

(assert (=> b!2824296 (= res!1175346 (is-Cons!33157 l!6581))))

(declare-fun b!2824298 () Bool)

(declare-fun e!1787135 () Bool)

(assert (=> b!2824298 (= e!1787135 (subseq!454 (t!230824 lt!1007796) (t!230824 l!6581)))))

(declare-fun d!819934 () Bool)

(declare-fun res!1175347 () Bool)

(assert (=> d!819934 (=> res!1175347 e!1787136)))

(assert (=> d!819934 (= res!1175347 (is-Nil!33157 lt!1007796))))

(assert (=> d!819934 (= (subseq!454 lt!1007796 l!6581) e!1787136)))

(declare-fun b!2824297 () Bool)

(declare-fun e!1787133 () Bool)

(assert (=> b!2824297 (= e!1787134 e!1787133)))

(declare-fun res!1175349 () Bool)

(assert (=> b!2824297 (=> res!1175349 e!1787133)))

(assert (=> b!2824297 (= res!1175349 e!1787135)))

(declare-fun res!1175348 () Bool)

(assert (=> b!2824297 (=> (not res!1175348) (not e!1787135))))

(assert (=> b!2824297 (= res!1175348 (= (h!38577 lt!1007796) (h!38577 l!6581)))))

(declare-fun b!2824299 () Bool)

(assert (=> b!2824299 (= e!1787133 (subseq!454 lt!1007796 (t!230824 l!6581)))))

(assert (= (and d!819934 (not res!1175347)) b!2824296))

(assert (= (and b!2824296 res!1175346) b!2824297))

(assert (= (and b!2824297 res!1175348) b!2824298))

(assert (= (and b!2824297 (not res!1175349)) b!2824299))

(declare-fun m!3254727 () Bool)

(assert (=> b!2824298 m!3254727))

(declare-fun m!3254729 () Bool)

(assert (=> b!2824299 m!3254729))

(assert (=> b!2824208 d!819934))

(declare-fun d!819936 () Bool)

(declare-fun lt!1007805 () Bool)

(declare-fun e!1787142 () Bool)

(assert (=> d!819936 (= lt!1007805 e!1787142)))

(declare-fun res!1175357 () Bool)

(assert (=> d!819936 (=> (not res!1175357) (not e!1787142))))

(declare-datatypes ((IArray!20591 0))(
  ( (IArray!20592 (innerList!10353 List!33281)) )
))
(declare-datatypes ((Conc!10293 0))(
  ( (Node!10293 (left!25052 Conc!10293) (right!25382 Conc!10293) (csize!20816 Int) (cheight!10504 Int)) (Leaf!15669 (xs!13405 IArray!20591) (csize!20817 Int)) (Empty!10293) )
))
(declare-datatypes ((BalanceConc!20224 0))(
  ( (BalanceConc!20225 (c!457354 Conc!10293)) )
))
(declare-fun list!12425 (BalanceConc!20224) List!33281)

(declare-datatypes ((tuple2!33406 0))(
  ( (tuple2!33407 (_1!19796 BalanceConc!20224) (_2!19796 BalanceConc!20220)) )
))
(declare-fun lex!1999 (LexerInterface!4559 List!33280 BalanceConc!20220) tuple2!33406)

(declare-fun print!1718 (LexerInterface!4559 BalanceConc!20224) BalanceConc!20220)

(declare-fun singletonSeq!2144 (Token!9338) BalanceConc!20224)

(assert (=> d!819936 (= res!1175357 (= (list!12425 (_1!19796 (lex!1999 thiss!27755 rules!4424 (print!1718 thiss!27755 (singletonSeq!2144 (h!38577 lt!1007796)))))) (list!12425 (singletonSeq!2144 (h!38577 lt!1007796)))))))

(declare-fun e!1787141 () Bool)

(assert (=> d!819936 (= lt!1007805 e!1787141)))

(declare-fun res!1175356 () Bool)

(assert (=> d!819936 (=> (not res!1175356) (not e!1787141))))

(declare-fun lt!1007804 () tuple2!33406)

(declare-fun size!25819 (BalanceConc!20224) Int)

(assert (=> d!819936 (= res!1175356 (= (size!25819 (_1!19796 lt!1007804)) 1))))

(assert (=> d!819936 (= lt!1007804 (lex!1999 thiss!27755 rules!4424 (print!1718 thiss!27755 (singletonSeq!2144 (h!38577 lt!1007796)))))))

(assert (=> d!819936 (not (isEmpty!18337 rules!4424))))

(assert (=> d!819936 (= (rulesProduceIndividualToken!2097 thiss!27755 rules!4424 (h!38577 lt!1007796)) lt!1007805)))

(declare-fun b!2824306 () Bool)

(declare-fun res!1175358 () Bool)

(assert (=> b!2824306 (=> (not res!1175358) (not e!1787141))))

(declare-fun apply!7743 (BalanceConc!20224 Int) Token!9338)

(assert (=> b!2824306 (= res!1175358 (= (apply!7743 (_1!19796 lt!1007804) 0) (h!38577 lt!1007796)))))

(declare-fun b!2824307 () Bool)

(declare-fun isEmpty!18339 (BalanceConc!20220) Bool)

(assert (=> b!2824307 (= e!1787141 (isEmpty!18339 (_2!19796 lt!1007804)))))

(declare-fun b!2824308 () Bool)

(assert (=> b!2824308 (= e!1787142 (isEmpty!18339 (_2!19796 (lex!1999 thiss!27755 rules!4424 (print!1718 thiss!27755 (singletonSeq!2144 (h!38577 lt!1007796)))))))))

(assert (= (and d!819936 res!1175356) b!2824306))

(assert (= (and b!2824306 res!1175358) b!2824307))

(assert (= (and d!819936 res!1175357) b!2824308))

(declare-fun m!3254731 () Bool)

(assert (=> d!819936 m!3254731))

(declare-fun m!3254733 () Bool)

(assert (=> d!819936 m!3254733))

(declare-fun m!3254735 () Bool)

(assert (=> d!819936 m!3254735))

(assert (=> d!819936 m!3254733))

(declare-fun m!3254737 () Bool)

(assert (=> d!819936 m!3254737))

(assert (=> d!819936 m!3254733))

(assert (=> d!819936 m!3254679))

(declare-fun m!3254739 () Bool)

(assert (=> d!819936 m!3254739))

(assert (=> d!819936 m!3254737))

(declare-fun m!3254741 () Bool)

(assert (=> d!819936 m!3254741))

(declare-fun m!3254743 () Bool)

(assert (=> b!2824306 m!3254743))

(declare-fun m!3254745 () Bool)

(assert (=> b!2824307 m!3254745))

(assert (=> b!2824308 m!3254733))

(assert (=> b!2824308 m!3254733))

(assert (=> b!2824308 m!3254737))

(assert (=> b!2824308 m!3254737))

(assert (=> b!2824308 m!3254741))

(declare-fun m!3254747 () Bool)

(assert (=> b!2824308 m!3254747))

(assert (=> b!2824207 d!819936))

(declare-fun d!819938 () Bool)

(declare-fun res!1175363 () Bool)

(declare-fun e!1787147 () Bool)

(assert (=> d!819938 (=> res!1175363 e!1787147)))

(assert (=> d!819938 (= res!1175363 (is-Nil!33157 l!6581))))

(assert (=> d!819938 (= (forall!6798 l!6581 lambda!103732) e!1787147)))

(declare-fun b!2824313 () Bool)

(declare-fun e!1787148 () Bool)

(assert (=> b!2824313 (= e!1787147 e!1787148)))

(declare-fun res!1175364 () Bool)

(assert (=> b!2824313 (=> (not res!1175364) (not e!1787148))))

(declare-fun dynLambda!13911 (Int Token!9338) Bool)

(assert (=> b!2824313 (= res!1175364 (dynLambda!13911 lambda!103732 (h!38577 l!6581)))))

(declare-fun b!2824314 () Bool)

(assert (=> b!2824314 (= e!1787148 (forall!6798 (t!230824 l!6581) lambda!103732))))

(assert (= (and d!819938 (not res!1175363)) b!2824313))

(assert (= (and b!2824313 res!1175364) b!2824314))

(declare-fun b_lambda!84651 () Bool)

(assert (=> (not b_lambda!84651) (not b!2824313)))

(declare-fun m!3254749 () Bool)

(assert (=> b!2824313 m!3254749))

(declare-fun m!3254751 () Bool)

(assert (=> b!2824314 m!3254751))

(assert (=> b!2824209 d!819938))

(declare-fun bs!517853 () Bool)

(declare-fun d!819940 () Bool)

(assert (= bs!517853 (and d!819940 b!2824209)))

(declare-fun lambda!103741 () Int)

(assert (=> bs!517853 (= (= thiss!27755 Lexer!4557) (= lambda!103741 lambda!103732))))

(declare-fun b!2824338 () Bool)

(declare-fun e!1787170 () Bool)

(assert (=> b!2824338 (= e!1787170 true)))

(declare-fun b!2824337 () Bool)

(declare-fun e!1787169 () Bool)

(assert (=> b!2824337 (= e!1787169 e!1787170)))

(declare-fun b!2824336 () Bool)

(declare-fun e!1787168 () Bool)

(assert (=> b!2824336 (= e!1787168 e!1787169)))

(assert (=> d!819940 e!1787168))

(assert (= b!2824337 b!2824338))

(assert (= b!2824336 b!2824337))

(assert (= (and d!819940 (is-Cons!33156 rules!4424)) b!2824336))

(assert (=> b!2824338 (< (dynLambda!13905 order!17661 (toValue!6990 (transformation!4968 (h!38576 rules!4424)))) (dynLambda!13906 order!17663 lambda!103741))))

(assert (=> b!2824338 (< (dynLambda!13907 order!17665 (toChars!6849 (transformation!4968 (h!38576 rules!4424)))) (dynLambda!13906 order!17663 lambda!103741))))

(assert (=> d!819940 true))

(declare-fun lt!1007811 () Bool)

(assert (=> d!819940 (= lt!1007811 (forall!6798 lt!1007796 lambda!103741))))

(declare-fun e!1787162 () Bool)

(assert (=> d!819940 (= lt!1007811 e!1787162)))

(declare-fun res!1175375 () Bool)

(assert (=> d!819940 (=> res!1175375 e!1787162)))

(assert (=> d!819940 (= res!1175375 (not (is-Cons!33157 lt!1007796)))))

(assert (=> d!819940 (not (isEmpty!18337 rules!4424))))

(assert (=> d!819940 (= (rulesProduceEachTokenIndividuallyList!1611 thiss!27755 rules!4424 lt!1007796) lt!1007811)))

(declare-fun b!2824330 () Bool)

(declare-fun e!1787163 () Bool)

(assert (=> b!2824330 (= e!1787162 e!1787163)))

(declare-fun res!1175376 () Bool)

(assert (=> b!2824330 (=> (not res!1175376) (not e!1787163))))

(assert (=> b!2824330 (= res!1175376 (rulesProduceIndividualToken!2097 thiss!27755 rules!4424 (h!38577 lt!1007796)))))

(declare-fun b!2824331 () Bool)

(assert (=> b!2824331 (= e!1787163 (rulesProduceEachTokenIndividuallyList!1611 thiss!27755 rules!4424 (t!230824 lt!1007796)))))

(assert (= (and d!819940 (not res!1175375)) b!2824330))

(assert (= (and b!2824330 res!1175376) b!2824331))

(declare-fun m!3254759 () Bool)

(assert (=> d!819940 m!3254759))

(assert (=> d!819940 m!3254679))

(assert (=> b!2824330 m!3254665))

(assert (=> b!2824331 m!3254685))

(assert (=> b!2824209 d!819940))

(declare-fun d!819946 () Bool)

(declare-fun e!1787188 () Bool)

(assert (=> d!819946 e!1787188))

(declare-fun res!1175387 () Bool)

(assert (=> d!819946 (=> (not res!1175387) (not e!1787188))))

(declare-fun lt!1007815 () List!33281)

(declare-fun content!4621 (List!33281) (Set Token!9338))

(assert (=> d!819946 (= res!1175387 (set.subset (content!4621 lt!1007815) (content!4621 l!6581)))))

(declare-fun e!1787187 () List!33281)

(assert (=> d!819946 (= lt!1007815 e!1787187)))

(declare-fun c!457331 () Bool)

(assert (=> d!819946 (= c!457331 (or (is-Nil!33157 l!6581) (<= i!1730 0)))))

(assert (=> d!819946 (= (take!562 l!6581 i!1730) lt!1007815)))

(declare-fun b!2824362 () Bool)

(assert (=> b!2824362 (= e!1787187 (Cons!33157 (h!38577 l!6581) (take!562 (t!230824 l!6581) (- i!1730 1))))))

(declare-fun b!2824363 () Bool)

(declare-fun e!1787189 () Int)

(declare-fun size!25820 (List!33281) Int)

(assert (=> b!2824363 (= e!1787188 (= (size!25820 lt!1007815) e!1787189))))

(declare-fun c!457330 () Bool)

(assert (=> b!2824363 (= c!457330 (<= i!1730 0))))

(declare-fun b!2824364 () Bool)

(assert (=> b!2824364 (= e!1787189 0)))

(declare-fun b!2824365 () Bool)

(declare-fun e!1787186 () Int)

(assert (=> b!2824365 (= e!1787186 i!1730)))

(declare-fun b!2824366 () Bool)

(assert (=> b!2824366 (= e!1787187 Nil!33157)))

(declare-fun b!2824367 () Bool)

(assert (=> b!2824367 (= e!1787189 e!1787186)))

(declare-fun c!457332 () Bool)

(assert (=> b!2824367 (= c!457332 (>= i!1730 (size!25820 l!6581)))))

(declare-fun b!2824368 () Bool)

(assert (=> b!2824368 (= e!1787186 (size!25820 l!6581))))

(assert (= (and d!819946 c!457331) b!2824366))

(assert (= (and d!819946 (not c!457331)) b!2824362))

(assert (= (and d!819946 res!1175387) b!2824363))

(assert (= (and b!2824363 c!457330) b!2824364))

(assert (= (and b!2824363 (not c!457330)) b!2824367))

(assert (= (and b!2824367 c!457332) b!2824368))

(assert (= (and b!2824367 (not c!457332)) b!2824365))

(declare-fun m!3254767 () Bool)

(assert (=> b!2824368 m!3254767))

(declare-fun m!3254769 () Bool)

(assert (=> b!2824362 m!3254769))

(declare-fun m!3254771 () Bool)

(assert (=> b!2824363 m!3254771))

(declare-fun m!3254773 () Bool)

(assert (=> d!819946 m!3254773))

(declare-fun m!3254775 () Bool)

(assert (=> d!819946 m!3254775))

(assert (=> b!2824367 m!3254767))

(assert (=> b!2824209 d!819946))

(declare-fun bs!517856 () Bool)

(declare-fun d!819952 () Bool)

(assert (= bs!517856 (and d!819952 b!2824209)))

(declare-fun lambda!103743 () Int)

(assert (=> bs!517856 (= (= thiss!27755 Lexer!4557) (= lambda!103743 lambda!103732))))

(declare-fun bs!517857 () Bool)

(assert (= bs!517857 (and d!819952 d!819940)))

(assert (=> bs!517857 (= lambda!103743 lambda!103741)))

(declare-fun b!2824373 () Bool)

(declare-fun e!1787194 () Bool)

(assert (=> b!2824373 (= e!1787194 true)))

(declare-fun b!2824372 () Bool)

(declare-fun e!1787193 () Bool)

(assert (=> b!2824372 (= e!1787193 e!1787194)))

(declare-fun b!2824371 () Bool)

(declare-fun e!1787192 () Bool)

(assert (=> b!2824371 (= e!1787192 e!1787193)))

(assert (=> d!819952 e!1787192))

(assert (= b!2824372 b!2824373))

(assert (= b!2824371 b!2824372))

(assert (= (and d!819952 (is-Cons!33156 rules!4424)) b!2824371))

(assert (=> b!2824373 (< (dynLambda!13905 order!17661 (toValue!6990 (transformation!4968 (h!38576 rules!4424)))) (dynLambda!13906 order!17663 lambda!103743))))

(assert (=> b!2824373 (< (dynLambda!13907 order!17665 (toChars!6849 (transformation!4968 (h!38576 rules!4424)))) (dynLambda!13906 order!17663 lambda!103743))))

(assert (=> d!819952 true))

(declare-fun lt!1007816 () Bool)

(assert (=> d!819952 (= lt!1007816 (forall!6798 l!6581 lambda!103743))))

(declare-fun e!1787190 () Bool)

(assert (=> d!819952 (= lt!1007816 e!1787190)))

(declare-fun res!1175388 () Bool)

(assert (=> d!819952 (=> res!1175388 e!1787190)))

(assert (=> d!819952 (= res!1175388 (not (is-Cons!33157 l!6581)))))

(assert (=> d!819952 (not (isEmpty!18337 rules!4424))))

(assert (=> d!819952 (= (rulesProduceEachTokenIndividuallyList!1611 thiss!27755 rules!4424 l!6581) lt!1007816)))

(declare-fun b!2824369 () Bool)

(declare-fun e!1787191 () Bool)

(assert (=> b!2824369 (= e!1787190 e!1787191)))

(declare-fun res!1175389 () Bool)

(assert (=> b!2824369 (=> (not res!1175389) (not e!1787191))))

(assert (=> b!2824369 (= res!1175389 (rulesProduceIndividualToken!2097 thiss!27755 rules!4424 (h!38577 l!6581)))))

(declare-fun b!2824370 () Bool)

(assert (=> b!2824370 (= e!1787191 (rulesProduceEachTokenIndividuallyList!1611 thiss!27755 rules!4424 (t!230824 l!6581)))))

(assert (= (and d!819952 (not res!1175388)) b!2824369))

(assert (= (and b!2824369 res!1175389) b!2824370))

(declare-fun m!3254777 () Bool)

(assert (=> d!819952 m!3254777))

(assert (=> d!819952 m!3254679))

(declare-fun m!3254779 () Bool)

(assert (=> b!2824369 m!3254779))

(declare-fun m!3254781 () Bool)

(assert (=> b!2824370 m!3254781))

(assert (=> b!2824216 d!819952))

(declare-fun d!819954 () Bool)

(declare-fun res!1175397 () Bool)

(declare-fun e!1787212 () Bool)

(assert (=> d!819954 (=> res!1175397 e!1787212)))

(assert (=> d!819954 (= res!1175397 (or (not (is-Cons!33157 l!6581)) (not (is-Cons!33157 (t!230824 l!6581)))))))

(assert (=> d!819954 (= (tokensListTwoByTwoPredicateSeparableList!696 thiss!27755 l!6581 rules!4424) e!1787212)))

(declare-fun b!2824399 () Bool)

(declare-fun e!1787211 () Bool)

(assert (=> b!2824399 (= e!1787212 e!1787211)))

(declare-fun res!1175398 () Bool)

(assert (=> b!2824399 (=> (not res!1175398) (not e!1787211))))

(declare-fun separableTokensPredicate!901 (LexerInterface!4559 Token!9338 Token!9338 List!33280) Bool)

(assert (=> b!2824399 (= res!1175398 (separableTokensPredicate!901 thiss!27755 (h!38577 l!6581) (h!38577 (t!230824 l!6581)) rules!4424))))

(declare-datatypes ((Unit!47162 0))(
  ( (Unit!47163) )
))
(declare-fun lt!1007837 () Unit!47162)

(declare-fun Unit!47164 () Unit!47162)

(assert (=> b!2824399 (= lt!1007837 Unit!47164)))

(declare-fun size!25821 (BalanceConc!20220) Int)

(declare-fun charsOf!3076 (Token!9338) BalanceConc!20220)

(assert (=> b!2824399 (> (size!25821 (charsOf!3076 (h!38577 (t!230824 l!6581)))) 0)))

(declare-fun lt!1007835 () Unit!47162)

(declare-fun Unit!47165 () Unit!47162)

(assert (=> b!2824399 (= lt!1007835 Unit!47165)))

(assert (=> b!2824399 (rulesProduceIndividualToken!2097 thiss!27755 rules!4424 (h!38577 (t!230824 l!6581)))))

(declare-fun lt!1007836 () Unit!47162)

(declare-fun Unit!47166 () Unit!47162)

(assert (=> b!2824399 (= lt!1007836 Unit!47166)))

(assert (=> b!2824399 (rulesProduceIndividualToken!2097 thiss!27755 rules!4424 (h!38577 l!6581))))

(declare-fun lt!1007839 () Unit!47162)

(declare-fun lt!1007838 () Unit!47162)

(assert (=> b!2824399 (= lt!1007839 lt!1007838)))

(assert (=> b!2824399 (rulesProduceIndividualToken!2097 thiss!27755 rules!4424 (h!38577 (t!230824 l!6581)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!715 (LexerInterface!4559 List!33280 List!33281 Token!9338) Unit!47162)

(assert (=> b!2824399 (= lt!1007838 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!715 thiss!27755 rules!4424 l!6581 (h!38577 (t!230824 l!6581))))))

(declare-fun lt!1007834 () Unit!47162)

(declare-fun lt!1007840 () Unit!47162)

(assert (=> b!2824399 (= lt!1007834 lt!1007840)))

(assert (=> b!2824399 (rulesProduceIndividualToken!2097 thiss!27755 rules!4424 (h!38577 l!6581))))

(assert (=> b!2824399 (= lt!1007840 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!715 thiss!27755 rules!4424 l!6581 (h!38577 l!6581)))))

(declare-fun b!2824400 () Bool)

(assert (=> b!2824400 (= e!1787211 (tokensListTwoByTwoPredicateSeparableList!696 thiss!27755 (Cons!33157 (h!38577 (t!230824 l!6581)) (t!230824 (t!230824 l!6581))) rules!4424))))

(assert (= (and d!819954 (not res!1175397)) b!2824399))

(assert (= (and b!2824399 res!1175398) b!2824400))

(declare-fun m!3254793 () Bool)

(assert (=> b!2824399 m!3254793))

(assert (=> b!2824399 m!3254779))

(declare-fun m!3254795 () Bool)

(assert (=> b!2824399 m!3254795))

(declare-fun m!3254797 () Bool)

(assert (=> b!2824399 m!3254797))

(declare-fun m!3254799 () Bool)

(assert (=> b!2824399 m!3254799))

(declare-fun m!3254801 () Bool)

(assert (=> b!2824399 m!3254801))

(declare-fun m!3254803 () Bool)

(assert (=> b!2824399 m!3254803))

(assert (=> b!2824399 m!3254799))

(declare-fun m!3254805 () Bool)

(assert (=> b!2824400 m!3254805))

(assert (=> b!2824205 d!819954))

(declare-fun d!819958 () Bool)

(declare-fun res!1175403 () Bool)

(declare-fun e!1787215 () Bool)

(assert (=> d!819958 (=> (not res!1175403) (not e!1787215))))

(declare-fun isEmpty!18340 (List!33279) Bool)

(assert (=> d!819958 (= res!1175403 (not (isEmpty!18340 (originalCharacters!5700 (h!38577 l!6581)))))))

(assert (=> d!819958 (= (inv!45088 (h!38577 l!6581)) e!1787215)))

(declare-fun b!2824405 () Bool)

(declare-fun res!1175404 () Bool)

(assert (=> b!2824405 (=> (not res!1175404) (not e!1787215))))

(declare-fun list!12426 (BalanceConc!20220) List!33279)

(declare-fun dynLambda!13912 (Int TokenValue!5198) BalanceConc!20220)

(assert (=> b!2824405 (= res!1175404 (= (originalCharacters!5700 (h!38577 l!6581)) (list!12426 (dynLambda!13912 (toChars!6849 (transformation!4968 (rule!7396 (h!38577 l!6581)))) (value!159909 (h!38577 l!6581))))))))

(declare-fun b!2824406 () Bool)

(declare-fun size!25822 (List!33279) Int)

(assert (=> b!2824406 (= e!1787215 (= (size!25817 (h!38577 l!6581)) (size!25822 (originalCharacters!5700 (h!38577 l!6581)))))))

(assert (= (and d!819958 res!1175403) b!2824405))

(assert (= (and b!2824405 res!1175404) b!2824406))

(declare-fun b_lambda!84655 () Bool)

(assert (=> (not b_lambda!84655) (not b!2824405)))

(declare-fun t!230837 () Bool)

(declare-fun tb!153973 () Bool)

(assert (=> (and b!2824206 (= (toChars!6849 (transformation!4968 (rule!7396 (h!38577 l!6581)))) (toChars!6849 (transformation!4968 (rule!7396 (h!38577 l!6581))))) t!230837) tb!153973))

(declare-fun b!2824411 () Bool)

(declare-fun e!1787218 () Bool)

(declare-fun tp!902063 () Bool)

(declare-fun inv!45091 (Conc!10291) Bool)

(assert (=> b!2824411 (= e!1787218 (and (inv!45091 (c!457320 (dynLambda!13912 (toChars!6849 (transformation!4968 (rule!7396 (h!38577 l!6581)))) (value!159909 (h!38577 l!6581))))) tp!902063))))

(declare-fun result!191770 () Bool)

(declare-fun inv!45092 (BalanceConc!20220) Bool)

(assert (=> tb!153973 (= result!191770 (and (inv!45092 (dynLambda!13912 (toChars!6849 (transformation!4968 (rule!7396 (h!38577 l!6581)))) (value!159909 (h!38577 l!6581)))) e!1787218))))

(assert (= tb!153973 b!2824411))

(declare-fun m!3254807 () Bool)

(assert (=> b!2824411 m!3254807))

(declare-fun m!3254809 () Bool)

(assert (=> tb!153973 m!3254809))

(assert (=> b!2824405 t!230837))

(declare-fun b_and!206407 () Bool)

(assert (= b_and!206393 (and (=> t!230837 result!191770) b_and!206407)))

(declare-fun t!230839 () Bool)

(declare-fun tb!153975 () Bool)

(assert (=> (and b!2824211 (= (toChars!6849 (transformation!4968 (h!38576 rules!4424))) (toChars!6849 (transformation!4968 (rule!7396 (h!38577 l!6581))))) t!230839) tb!153975))

(declare-fun result!191774 () Bool)

(assert (= result!191774 result!191770))

(assert (=> b!2824405 t!230839))

(declare-fun b_and!206409 () Bool)

(assert (= b_and!206397 (and (=> t!230839 result!191774) b_and!206409)))

(declare-fun m!3254811 () Bool)

(assert (=> d!819958 m!3254811))

(declare-fun m!3254813 () Bool)

(assert (=> b!2824405 m!3254813))

(assert (=> b!2824405 m!3254813))

(declare-fun m!3254815 () Bool)

(assert (=> b!2824405 m!3254815))

(declare-fun m!3254817 () Bool)

(assert (=> b!2824406 m!3254817))

(assert (=> b!2824215 d!819958))

(declare-fun d!819960 () Bool)

(assert (=> d!819960 (= (inv!45084 (tag!5472 (h!38576 rules!4424))) (= (mod (str.len (value!159908 (tag!5472 (h!38576 rules!4424)))) 2) 0))))

(assert (=> b!2824213 d!819960))

(declare-fun d!819962 () Bool)

(declare-fun res!1175407 () Bool)

(declare-fun e!1787221 () Bool)

(assert (=> d!819962 (=> (not res!1175407) (not e!1787221))))

(declare-fun semiInverseModEq!2061 (Int Int) Bool)

(assert (=> d!819962 (= res!1175407 (semiInverseModEq!2061 (toChars!6849 (transformation!4968 (h!38576 rules!4424))) (toValue!6990 (transformation!4968 (h!38576 rules!4424)))))))

(assert (=> d!819962 (= (inv!45087 (transformation!4968 (h!38576 rules!4424))) e!1787221)))

(declare-fun b!2824414 () Bool)

(declare-fun equivClasses!1960 (Int Int) Bool)

(assert (=> b!2824414 (= e!1787221 (equivClasses!1960 (toChars!6849 (transformation!4968 (h!38576 rules!4424))) (toValue!6990 (transformation!4968 (h!38576 rules!4424)))))))

(assert (= (and d!819962 res!1175407) b!2824414))

(declare-fun m!3254819 () Bool)

(assert (=> d!819962 m!3254819))

(declare-fun m!3254821 () Bool)

(assert (=> b!2824414 m!3254821))

(assert (=> b!2824213 d!819962))

(declare-fun bs!517858 () Bool)

(declare-fun d!819964 () Bool)

(assert (= bs!517858 (and d!819964 b!2824209)))

(declare-fun lambda!103744 () Int)

(assert (=> bs!517858 (= (= thiss!27755 Lexer!4557) (= lambda!103744 lambda!103732))))

(declare-fun bs!517859 () Bool)

(assert (= bs!517859 (and d!819964 d!819940)))

(assert (=> bs!517859 (= lambda!103744 lambda!103741)))

(declare-fun bs!517860 () Bool)

(assert (= bs!517860 (and d!819964 d!819952)))

(assert (=> bs!517860 (= lambda!103744 lambda!103743)))

(declare-fun b!2824419 () Bool)

(declare-fun e!1787226 () Bool)

(assert (=> b!2824419 (= e!1787226 true)))

(declare-fun b!2824418 () Bool)

(declare-fun e!1787225 () Bool)

(assert (=> b!2824418 (= e!1787225 e!1787226)))

(declare-fun b!2824417 () Bool)

(declare-fun e!1787224 () Bool)

(assert (=> b!2824417 (= e!1787224 e!1787225)))

(assert (=> d!819964 e!1787224))

(assert (= b!2824418 b!2824419))

(assert (= b!2824417 b!2824418))

(assert (= (and d!819964 (is-Cons!33156 rules!4424)) b!2824417))

(assert (=> b!2824419 (< (dynLambda!13905 order!17661 (toValue!6990 (transformation!4968 (h!38576 rules!4424)))) (dynLambda!13906 order!17663 lambda!103744))))

(assert (=> b!2824419 (< (dynLambda!13907 order!17665 (toChars!6849 (transformation!4968 (h!38576 rules!4424)))) (dynLambda!13906 order!17663 lambda!103744))))

(assert (=> d!819964 true))

(declare-fun lt!1007841 () Bool)

(assert (=> d!819964 (= lt!1007841 (forall!6798 (t!230824 lt!1007796) lambda!103744))))

(declare-fun e!1787222 () Bool)

(assert (=> d!819964 (= lt!1007841 e!1787222)))

(declare-fun res!1175408 () Bool)

(assert (=> d!819964 (=> res!1175408 e!1787222)))

(assert (=> d!819964 (= res!1175408 (not (is-Cons!33157 (t!230824 lt!1007796))))))

(assert (=> d!819964 (not (isEmpty!18337 rules!4424))))

(assert (=> d!819964 (= (rulesProduceEachTokenIndividuallyList!1611 thiss!27755 rules!4424 (t!230824 lt!1007796)) lt!1007841)))

(declare-fun b!2824415 () Bool)

(declare-fun e!1787223 () Bool)

(assert (=> b!2824415 (= e!1787222 e!1787223)))

(declare-fun res!1175409 () Bool)

(assert (=> b!2824415 (=> (not res!1175409) (not e!1787223))))

(assert (=> b!2824415 (= res!1175409 (rulesProduceIndividualToken!2097 thiss!27755 rules!4424 (h!38577 (t!230824 lt!1007796))))))

(declare-fun b!2824416 () Bool)

(assert (=> b!2824416 (= e!1787223 (rulesProduceEachTokenIndividuallyList!1611 thiss!27755 rules!4424 (t!230824 (t!230824 lt!1007796))))))

(assert (= (and d!819964 (not res!1175408)) b!2824415))

(assert (= (and b!2824415 res!1175409) b!2824416))

(declare-fun m!3254823 () Bool)

(assert (=> d!819964 m!3254823))

(assert (=> d!819964 m!3254679))

(declare-fun m!3254825 () Bool)

(assert (=> b!2824415 m!3254825))

(declare-fun m!3254827 () Bool)

(assert (=> b!2824416 m!3254827))

(assert (=> b!2824202 d!819964))

(declare-fun d!819966 () Bool)

(assert (=> d!819966 (= (isEmpty!18337 rules!4424) (is-Nil!33156 rules!4424))))

(assert (=> b!2824214 d!819966))

(declare-fun b!2824434 () Bool)

(declare-fun e!1787238 () Bool)

(declare-fun inv!17 (TokenValue!5198) Bool)

(assert (=> b!2824434 (= e!1787238 (inv!17 (value!159909 (h!38577 l!6581))))))

(declare-fun d!819968 () Bool)

(declare-fun c!457347 () Bool)

(assert (=> d!819968 (= c!457347 (is-IntegerValue!15594 (value!159909 (h!38577 l!6581))))))

(declare-fun e!1787237 () Bool)

(assert (=> d!819968 (= (inv!21 (value!159909 (h!38577 l!6581))) e!1787237)))

(declare-fun b!2824435 () Bool)

(declare-fun e!1787239 () Bool)

(declare-fun inv!15 (TokenValue!5198) Bool)

(assert (=> b!2824435 (= e!1787239 (inv!15 (value!159909 (h!38577 l!6581))))))

(declare-fun b!2824436 () Bool)

(declare-fun inv!16 (TokenValue!5198) Bool)

(assert (=> b!2824436 (= e!1787237 (inv!16 (value!159909 (h!38577 l!6581))))))

(declare-fun b!2824437 () Bool)

(assert (=> b!2824437 (= e!1787237 e!1787238)))

(declare-fun c!457346 () Bool)

(assert (=> b!2824437 (= c!457346 (is-IntegerValue!15595 (value!159909 (h!38577 l!6581))))))

(declare-fun b!2824438 () Bool)

(declare-fun res!1175416 () Bool)

(assert (=> b!2824438 (=> res!1175416 e!1787239)))

(assert (=> b!2824438 (= res!1175416 (not (is-IntegerValue!15596 (value!159909 (h!38577 l!6581)))))))

(assert (=> b!2824438 (= e!1787238 e!1787239)))

(assert (= (and d!819968 c!457347) b!2824436))

(assert (= (and d!819968 (not c!457347)) b!2824437))

(assert (= (and b!2824437 c!457346) b!2824434))

(assert (= (and b!2824437 (not c!457346)) b!2824438))

(assert (= (and b!2824438 (not res!1175416)) b!2824435))

(declare-fun m!3254829 () Bool)

(assert (=> b!2824434 m!3254829))

(declare-fun m!3254831 () Bool)

(assert (=> b!2824435 m!3254831))

(declare-fun m!3254833 () Bool)

(assert (=> b!2824436 m!3254833))

(assert (=> b!2824203 d!819968))

(declare-fun d!819970 () Bool)

(declare-fun res!1175421 () Bool)

(declare-fun e!1787244 () Bool)

(assert (=> d!819970 (=> (not res!1175421) (not e!1787244))))

(declare-fun rulesValid!1831 (LexerInterface!4559 List!33280) Bool)

(assert (=> d!819970 (= res!1175421 (rulesValid!1831 thiss!27755 rules!4424))))

(assert (=> d!819970 (= (rulesInvariant!3977 thiss!27755 rules!4424) e!1787244)))

(declare-fun b!2824443 () Bool)

(declare-datatypes ((List!33286 0))(
  ( (Nil!33162) (Cons!33162 (h!38582 String!36448) (t!230851 List!33286)) )
))
(declare-fun noDuplicateTag!1827 (LexerInterface!4559 List!33280 List!33286) Bool)

(assert (=> b!2824443 (= e!1787244 (noDuplicateTag!1827 thiss!27755 rules!4424 Nil!33162))))

(assert (= (and d!819970 res!1175421) b!2824443))

(declare-fun m!3254849 () Bool)

(assert (=> d!819970 m!3254849))

(declare-fun m!3254851 () Bool)

(assert (=> b!2824443 m!3254851))

(assert (=> b!2824210 d!819970))

(declare-fun d!819974 () Bool)

(assert (=> d!819974 (= (inv!45084 (tag!5472 (rule!7396 (h!38577 l!6581)))) (= (mod (str.len (value!159908 (tag!5472 (rule!7396 (h!38577 l!6581))))) 2) 0))))

(assert (=> b!2824212 d!819974))

(declare-fun d!819976 () Bool)

(declare-fun res!1175422 () Bool)

(declare-fun e!1787245 () Bool)

(assert (=> d!819976 (=> (not res!1175422) (not e!1787245))))

(assert (=> d!819976 (= res!1175422 (semiInverseModEq!2061 (toChars!6849 (transformation!4968 (rule!7396 (h!38577 l!6581)))) (toValue!6990 (transformation!4968 (rule!7396 (h!38577 l!6581))))))))

(assert (=> d!819976 (= (inv!45087 (transformation!4968 (rule!7396 (h!38577 l!6581)))) e!1787245)))

(declare-fun b!2824444 () Bool)

(assert (=> b!2824444 (= e!1787245 (equivClasses!1960 (toChars!6849 (transformation!4968 (rule!7396 (h!38577 l!6581)))) (toValue!6990 (transformation!4968 (rule!7396 (h!38577 l!6581))))))))

(assert (= (and d!819976 res!1175422) b!2824444))

(declare-fun m!3254853 () Bool)

(assert (=> d!819976 m!3254853))

(declare-fun m!3254855 () Bool)

(assert (=> b!2824444 m!3254855))

(assert (=> b!2824212 d!819976))

(declare-fun b!2824460 () Bool)

(declare-fun e!1787250 () Bool)

(declare-fun tp!902076 () Bool)

(declare-fun tp!902077 () Bool)

(assert (=> b!2824460 (= e!1787250 (and tp!902076 tp!902077))))

(declare-fun b!2824459 () Bool)

(declare-fun tp!902074 () Bool)

(assert (=> b!2824459 (= e!1787250 tp!902074)))

(assert (=> b!2824213 (= tp!902026 e!1787250)))

(declare-fun b!2824458 () Bool)

(declare-fun tp!902075 () Bool)

(declare-fun tp!902078 () Bool)

(assert (=> b!2824458 (= e!1787250 (and tp!902075 tp!902078))))

(declare-fun b!2824457 () Bool)

(declare-fun tp_is_empty!14469 () Bool)

(assert (=> b!2824457 (= e!1787250 tp_is_empty!14469)))

(assert (= (and b!2824213 (is-ElementMatch!8358 (regex!4968 (h!38576 rules!4424)))) b!2824457))

(assert (= (and b!2824213 (is-Concat!13557 (regex!4968 (h!38576 rules!4424)))) b!2824458))

(assert (= (and b!2824213 (is-Star!8358 (regex!4968 (h!38576 rules!4424)))) b!2824459))

(assert (= (and b!2824213 (is-Union!8358 (regex!4968 (h!38576 rules!4424)))) b!2824460))

(declare-fun b!2824471 () Bool)

(declare-fun e!1787259 () Bool)

(declare-fun tp!902081 () Bool)

(assert (=> b!2824471 (= e!1787259 (and tp_is_empty!14469 tp!902081))))

(assert (=> b!2824203 (= tp!902027 e!1787259)))

(assert (= (and b!2824203 (is-Cons!33155 (originalCharacters!5700 (h!38577 l!6581)))) b!2824471))

(declare-fun b!2824474 () Bool)

(declare-fun e!1787262 () Bool)

(assert (=> b!2824474 (= e!1787262 true)))

(declare-fun b!2824473 () Bool)

(declare-fun e!1787261 () Bool)

(assert (=> b!2824473 (= e!1787261 e!1787262)))

(declare-fun b!2824472 () Bool)

(declare-fun e!1787260 () Bool)

(assert (=> b!2824472 (= e!1787260 e!1787261)))

(assert (=> b!2824226 e!1787260))

(assert (= b!2824473 b!2824474))

(assert (= b!2824472 b!2824473))

(assert (= (and b!2824226 (is-Cons!33156 (t!230823 rules!4424))) b!2824472))

(assert (=> b!2824474 (< (dynLambda!13905 order!17661 (toValue!6990 (transformation!4968 (h!38576 (t!230823 rules!4424))))) (dynLambda!13906 order!17663 lambda!103732))))

(assert (=> b!2824474 (< (dynLambda!13907 order!17665 (toChars!6849 (transformation!4968 (h!38576 (t!230823 rules!4424))))) (dynLambda!13906 order!17663 lambda!103732))))

(declare-fun b!2824492 () Bool)

(declare-fun b_free!80909 () Bool)

(declare-fun b_next!81613 () Bool)

(assert (=> b!2824492 (= b_free!80909 (not b_next!81613))))

(declare-fun tp!902093 () Bool)

(declare-fun b_and!206411 () Bool)

(assert (=> b!2824492 (= tp!902093 b_and!206411)))

(declare-fun b_free!80911 () Bool)

(declare-fun b_next!81615 () Bool)

(assert (=> b!2824492 (= b_free!80911 (not b_next!81615))))

(declare-fun t!230841 () Bool)

(declare-fun tb!153977 () Bool)

(assert (=> (and b!2824492 (= (toChars!6849 (transformation!4968 (rule!7396 (h!38577 (t!230824 l!6581))))) (toChars!6849 (transformation!4968 (rule!7396 (h!38577 l!6581))))) t!230841) tb!153977))

(declare-fun result!191782 () Bool)

(assert (= result!191782 result!191770))

(assert (=> b!2824405 t!230841))

(declare-fun tp!902094 () Bool)

(declare-fun b_and!206413 () Bool)

(assert (=> b!2824492 (= tp!902094 (and (=> t!230841 result!191782) b_and!206413))))

(declare-fun e!1787283 () Bool)

(assert (=> b!2824215 (= tp!902030 e!1787283)))

(declare-fun e!1787281 () Bool)

(assert (=> b!2824492 (= e!1787281 (and tp!902093 tp!902094))))

(declare-fun tp!902096 () Bool)

(declare-fun e!1787282 () Bool)

(declare-fun b!2824489 () Bool)

(assert (=> b!2824489 (= e!1787283 (and (inv!45088 (h!38577 (t!230824 l!6581))) e!1787282 tp!902096))))

(declare-fun b!2824491 () Bool)

(declare-fun e!1787284 () Bool)

(declare-fun tp!902092 () Bool)

(assert (=> b!2824491 (= e!1787284 (and tp!902092 (inv!45084 (tag!5472 (rule!7396 (h!38577 (t!230824 l!6581))))) (inv!45087 (transformation!4968 (rule!7396 (h!38577 (t!230824 l!6581))))) e!1787281))))

(declare-fun tp!902095 () Bool)

(declare-fun b!2824490 () Bool)

(assert (=> b!2824490 (= e!1787282 (and (inv!21 (value!159909 (h!38577 (t!230824 l!6581)))) e!1787284 tp!902095))))

(assert (= b!2824491 b!2824492))

(assert (= b!2824490 b!2824491))

(assert (= b!2824489 b!2824490))

(assert (= (and b!2824215 (is-Cons!33157 (t!230824 l!6581))) b!2824489))

(declare-fun m!3254861 () Bool)

(assert (=> b!2824489 m!3254861))

(declare-fun m!3254863 () Bool)

(assert (=> b!2824491 m!3254863))

(declare-fun m!3254865 () Bool)

(assert (=> b!2824491 m!3254865))

(declare-fun m!3254867 () Bool)

(assert (=> b!2824490 m!3254867))

(declare-fun b!2824498 () Bool)

(declare-fun e!1787287 () Bool)

(declare-fun tp!902099 () Bool)

(declare-fun tp!902100 () Bool)

(assert (=> b!2824498 (= e!1787287 (and tp!902099 tp!902100))))

(declare-fun b!2824497 () Bool)

(declare-fun tp!902097 () Bool)

(assert (=> b!2824497 (= e!1787287 tp!902097)))

(assert (=> b!2824212 (= tp!902029 e!1787287)))

(declare-fun b!2824496 () Bool)

(declare-fun tp!902098 () Bool)

(declare-fun tp!902101 () Bool)

(assert (=> b!2824496 (= e!1787287 (and tp!902098 tp!902101))))

(declare-fun b!2824495 () Bool)

(assert (=> b!2824495 (= e!1787287 tp_is_empty!14469)))

(assert (= (and b!2824212 (is-ElementMatch!8358 (regex!4968 (rule!7396 (h!38577 l!6581))))) b!2824495))

(assert (= (and b!2824212 (is-Concat!13557 (regex!4968 (rule!7396 (h!38577 l!6581))))) b!2824496))

(assert (= (and b!2824212 (is-Star!8358 (regex!4968 (rule!7396 (h!38577 l!6581))))) b!2824497))

(assert (= (and b!2824212 (is-Union!8358 (regex!4968 (rule!7396 (h!38577 l!6581))))) b!2824498))

(declare-fun b!2824515 () Bool)

(declare-fun b_free!80913 () Bool)

(declare-fun b_next!81617 () Bool)

(assert (=> b!2824515 (= b_free!80913 (not b_next!81617))))

(declare-fun tp!902111 () Bool)

(declare-fun b_and!206415 () Bool)

(assert (=> b!2824515 (= tp!902111 b_and!206415)))

(declare-fun b_free!80915 () Bool)

(declare-fun b_next!81619 () Bool)

(assert (=> b!2824515 (= b_free!80915 (not b_next!81619))))

(declare-fun tb!153979 () Bool)

(declare-fun t!230843 () Bool)

(assert (=> (and b!2824515 (= (toChars!6849 (transformation!4968 (h!38576 (t!230823 rules!4424)))) (toChars!6849 (transformation!4968 (rule!7396 (h!38577 l!6581))))) t!230843) tb!153979))

(declare-fun result!191786 () Bool)

(assert (= result!191786 result!191770))

(assert (=> b!2824405 t!230843))

(declare-fun b_and!206417 () Bool)

(declare-fun tp!902110 () Bool)

(assert (=> b!2824515 (= tp!902110 (and (=> t!230843 result!191786) b_and!206417))))

(declare-fun e!1787302 () Bool)

(assert (=> b!2824515 (= e!1787302 (and tp!902111 tp!902110))))

(declare-fun tp!902113 () Bool)

(declare-fun e!1787304 () Bool)

(declare-fun b!2824514 () Bool)

(assert (=> b!2824514 (= e!1787304 (and tp!902113 (inv!45084 (tag!5472 (h!38576 (t!230823 rules!4424)))) (inv!45087 (transformation!4968 (h!38576 (t!230823 rules!4424)))) e!1787302))))

(declare-fun b!2824513 () Bool)

(declare-fun e!1787305 () Bool)

(declare-fun tp!902112 () Bool)

(assert (=> b!2824513 (= e!1787305 (and e!1787304 tp!902112))))

(assert (=> b!2824217 (= tp!902025 e!1787305)))

(assert (= b!2824514 b!2824515))

(assert (= b!2824513 b!2824514))

(assert (= (and b!2824217 (is-Cons!33156 (t!230823 rules!4424))) b!2824513))

(declare-fun m!3254879 () Bool)

(assert (=> b!2824514 m!3254879))

(declare-fun m!3254881 () Bool)

(assert (=> b!2824514 m!3254881))

(declare-fun b_lambda!84657 () Bool)

(assert (= b_lambda!84651 (or b!2824209 b_lambda!84657)))

(declare-fun bs!517864 () Bool)

(declare-fun d!819986 () Bool)

(assert (= bs!517864 (and d!819986 b!2824209)))

(assert (=> bs!517864 (= (dynLambda!13911 lambda!103732 (h!38577 l!6581)) (rulesProduceIndividualToken!2097 Lexer!4557 rules!4424 (h!38577 l!6581)))))

(declare-fun m!3254883 () Bool)

(assert (=> bs!517864 m!3254883))

(assert (=> b!2824313 d!819986))

(declare-fun b_lambda!84659 () Bool)

(assert (= b_lambda!84655 (or (and b!2824206 b_free!80895) (and b!2824211 b_free!80899 (= (toChars!6849 (transformation!4968 (h!38576 rules!4424))) (toChars!6849 (transformation!4968 (rule!7396 (h!38577 l!6581)))))) (and b!2824492 b_free!80911 (= (toChars!6849 (transformation!4968 (rule!7396 (h!38577 (t!230824 l!6581))))) (toChars!6849 (transformation!4968 (rule!7396 (h!38577 l!6581)))))) (and b!2824515 b_free!80915 (= (toChars!6849 (transformation!4968 (h!38576 (t!230823 rules!4424)))) (toChars!6849 (transformation!4968 (rule!7396 (h!38577 l!6581)))))) b_lambda!84659)))

(push 1)

(assert (not b!2824399))

(assert b_and!206391)

(assert (not b!2824369))

(assert (not b_next!81619))

(assert (not b!2824306))

(assert (not b!2824417))

(assert (not b!2824435))

(assert (not d!819964))

(assert (not d!819976))

(assert (not b!2824363))

(assert (not b!2824415))

(assert (not b_next!81615))

(assert (not b!2824331))

(assert (not b_lambda!84659))

(assert (not d!819936))

(assert (not b!2824308))

(assert (not b!2824444))

(assert (not b!2824459))

(assert b_and!206411)

(assert tp_is_empty!14469)

(assert (not b!2824414))

(assert (not b!2824370))

(assert (not b!2824496))

(assert (not tb!153973))

(assert (not b!2824314))

(assert (not b_next!81613))

(assert (not b!2824458))

(assert (not b!2824367))

(assert (not d!819970))

(assert (not b_next!81599))

(assert (not b!2824436))

(assert (not b!2824497))

(assert (not b_next!81597))

(assert (not d!819946))

(assert b_and!206395)

(assert b_and!206409)

(assert (not b!2824371))

(assert (not b!2824406))

(assert b_and!206415)

(assert (not b_next!81601))

(assert b_and!206417)

(assert (not b!2824400))

(assert b_and!206407)

(assert (not b!2824298))

(assert (not b!2824336))

(assert (not d!819962))

(assert (not b!2824514))

(assert (not b!2824472))

(assert (not b!2824490))

(assert (not b!2824299))

(assert (not b!2824307))

(assert (not b!2824491))

(assert (not d!819940))

(assert b_and!206413)

(assert (not b!2824489))

(assert (not b_lambda!84657))

(assert (not b!2824434))

(assert (not b!2824368))

(assert (not b!2824443))

(assert (not b!2824330))

(assert (not b!2824362))

(assert (not b_next!81603))

(assert (not d!819958))

(assert (not bs!517864))

(assert (not b!2824411))

(assert (not b!2824416))

(assert (not b!2824513))

(assert (not b!2824460))

(assert (not b!2824471))

(assert (not d!819952))

(assert (not b!2824498))

(assert (not b!2824405))

(assert (not b_next!81617))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81615))

(assert b_and!206411)

(assert (not b_next!81613))

(assert (not b_next!81599))

(assert b_and!206391)

(assert b_and!206413)

(assert (not b_next!81619))

(assert (not b_next!81603))

(assert (not b_next!81617))

(assert (not b_next!81597))

(assert b_and!206395)

(assert b_and!206409)

(assert b_and!206415)

(assert (not b_next!81601))

(assert b_and!206417)

(assert b_and!206407)

(check-sat)

(pop 1)

