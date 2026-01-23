; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134088 () Bool)

(assert start!134088)

(declare-fun b!1444986 () Bool)

(declare-datatypes ((C!8076 0))(
  ( (C!8077 (val!4608 Int)) )
))
(declare-datatypes ((List!15056 0))(
  ( (Nil!14990) (Cons!14990 (h!20391 C!8076) (t!130175 List!15056)) )
))
(declare-fun e!921903 () List!15056)

(declare-datatypes ((IArray!10197 0))(
  ( (IArray!10198 (innerList!5156 List!15056)) )
))
(declare-datatypes ((Conc!5096 0))(
  ( (Node!5096 (left!12764 Conc!5096) (right!13094 Conc!5096) (csize!10422 Int) (cheight!5307 Int)) (Leaf!7615 (xs!7837 IArray!10197) (csize!10423 Int)) (Empty!5096) )
))
(declare-datatypes ((BalanceConc!10132 0))(
  ( (BalanceConc!10133 (c!238012 Conc!5096)) )
))
(declare-datatypes ((List!15057 0))(
  ( (Nil!14991) (Cons!14991 (h!20392 (_ BitVec 16)) (t!130176 List!15057)) )
))
(declare-datatypes ((TokenValue!2725 0))(
  ( (FloatLiteralValue!5450 (text!19520 List!15057)) (TokenValueExt!2724 (__x!9243 Int)) (Broken!13625 (value!84719 List!15057)) (Object!2790) (End!2725) (Def!2725) (Underscore!2725) (Match!2725) (Else!2725) (Error!2725) (Case!2725) (If!2725) (Extends!2725) (Abstract!2725) (Class!2725) (Val!2725) (DelimiterValue!5450 (del!2785 List!15057)) (KeywordValue!2731 (value!84720 List!15057)) (CommentValue!5450 (value!84721 List!15057)) (WhitespaceValue!5450 (value!84722 List!15057)) (IndentationValue!2725 (value!84723 List!15057)) (String!17880) (Int32!2725) (Broken!13626 (value!84724 List!15057)) (Boolean!2726) (Unit!23590) (OperatorValue!2728 (op!2785 List!15057)) (IdentifierValue!5450 (value!84725 List!15057)) (IdentifierValue!5451 (value!84726 List!15057)) (WhitespaceValue!5451 (value!84727 List!15057)) (True!5450) (False!5450) (Broken!13627 (value!84728 List!15057)) (Broken!13628 (value!84729 List!15057)) (True!5451) (RightBrace!2725) (RightBracket!2725) (Colon!2725) (Null!2725) (Comma!2725) (LeftBracket!2725) (False!5451) (LeftBrace!2725) (ImaginaryLiteralValue!2725 (text!19521 List!15057)) (StringLiteralValue!8175 (value!84730 List!15057)) (EOFValue!2725 (value!84731 List!15057)) (IdentValue!2725 (value!84732 List!15057)) (DelimiterValue!5451 (value!84733 List!15057)) (DedentValue!2725 (value!84734 List!15057)) (NewLineValue!2725 (value!84735 List!15057)) (IntegerValue!8175 (value!84736 (_ BitVec 32)) (text!19522 List!15057)) (IntegerValue!8176 (value!84737 Int) (text!19523 List!15057)) (Times!2725) (Or!2725) (Equal!2725) (Minus!2725) (Broken!13629 (value!84738 List!15057)) (And!2725) (Div!2725) (LessEqual!2725) (Mod!2725) (Concat!6674) (Not!2725) (Plus!2725) (SpaceValue!2725 (value!84739 List!15057)) (IntegerValue!8177 (value!84740 Int) (text!19524 List!15057)) (StringLiteralValue!8176 (text!19525 List!15057)) (FloatLiteralValue!5451 (text!19526 List!15057)) (BytesLiteralValue!2725 (value!84741 List!15057)) (CommentValue!5451 (value!84742 List!15057)) (StringLiteralValue!8177 (value!84743 List!15057)) (ErrorTokenValue!2725 (msg!2786 List!15057)) )
))
(declare-datatypes ((Regex!3949 0))(
  ( (ElementMatch!3949 (c!238013 C!8076)) (Concat!6675 (regOne!8410 Regex!3949) (regTwo!8410 Regex!3949)) (EmptyExpr!3949) (Star!3949 (reg!4278 Regex!3949)) (EmptyLang!3949) (Union!3949 (regOne!8411 Regex!3949) (regTwo!8411 Regex!3949)) )
))
(declare-datatypes ((String!17881 0))(
  ( (String!17882 (value!84744 String)) )
))
(declare-datatypes ((TokenValueInjection!5110 0))(
  ( (TokenValueInjection!5111 (toValue!3942 Int) (toChars!3801 Int)) )
))
(declare-datatypes ((Rule!5070 0))(
  ( (Rule!5071 (regex!2635 Regex!3949) (tag!2899 String!17881) (isSeparator!2635 Bool) (transformation!2635 TokenValueInjection!5110)) )
))
(declare-datatypes ((Token!4932 0))(
  ( (Token!4933 (value!84745 TokenValue!2725) (rule!4406 Rule!5070) (size!12285 Int) (originalCharacters!3497 List!15056)) )
))
(declare-datatypes ((List!15058 0))(
  ( (Nil!14992) (Cons!14992 (h!20393 Token!4932) (t!130177 List!15058)) )
))
(declare-fun lt!496943 () List!15058)

(declare-fun ++!4033 (List!15056 List!15056) List!15056)

(declare-fun list!5972 (BalanceConc!10132) List!15056)

(declare-fun charsOf!1521 (Token!4932) BalanceConc!10132)

(declare-datatypes ((LexerInterface!2294 0))(
  ( (LexerInterfaceExt!2291 (__x!9244 Int)) (Lexer!2292) )
))
(declare-fun printList!713 (LexerInterface!2294 List!15058) List!15056)

(assert (=> b!1444986 (= e!921903 (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (printList!713 Lexer!2292 (t!130177 lt!496943))))))

(declare-fun b!1444988 () Bool)

(declare-fun e!921909 () Bool)

(declare-datatypes ((IArray!10199 0))(
  ( (IArray!10200 (innerList!5157 List!15058)) )
))
(declare-datatypes ((Conc!5097 0))(
  ( (Node!5097 (left!12765 Conc!5097) (right!13095 Conc!5097) (csize!10424 Int) (cheight!5308 Int)) (Leaf!7616 (xs!7838 IArray!10199) (csize!10425 Int)) (Empty!5097) )
))
(declare-datatypes ((BalanceConc!10134 0))(
  ( (BalanceConc!10135 (c!238014 Conc!5097)) )
))
(declare-datatypes ((List!15059 0))(
  ( (Nil!14993) (Cons!14993 (h!20394 Rule!5070) (t!130178 List!15059)) )
))
(declare-datatypes ((PrintableTokens!1052 0))(
  ( (PrintableTokens!1053 (rules!11498 List!15059) (tokens!2014 BalanceConc!10134)) )
))
(declare-fun thiss!10022 () PrintableTokens!1052)

(declare-fun tp!407744 () Bool)

(declare-fun inv!19950 (Conc!5097) Bool)

(assert (=> b!1444988 (= e!921909 (and (inv!19950 (c!238014 (tokens!2014 thiss!10022))) tp!407744))))

(declare-fun b!1444989 () Bool)

(declare-fun e!921900 () Bool)

(assert (=> b!1444989 (= e!921900 (= (printList!713 Lexer!2292 lt!496943) e!921903))))

(declare-fun c!238011 () Bool)

(get-info :version)

(assert (=> b!1444989 (= c!238011 ((_ is Cons!14992) lt!496943))))

(declare-fun lt!496936 () BalanceConc!10132)

(declare-fun e!921901 () Bool)

(declare-fun b!1444990 () Bool)

(declare-fun lt!496935 () PrintableTokens!1052)

(declare-fun lt!496939 () BalanceConc!10132)

(declare-fun print!1074 (PrintableTokens!1052) BalanceConc!10132)

(assert (=> b!1444990 (= e!921901 (= (list!5972 (print!1074 lt!496935)) (++!4033 (list!5972 lt!496939) (list!5972 lt!496936))))))

(declare-fun e!921905 () Bool)

(declare-fun other!32 () PrintableTokens!1052)

(declare-fun tp!407745 () Bool)

(declare-fun b!1444991 () Bool)

(declare-fun e!921907 () Bool)

(declare-fun inv!19951 (BalanceConc!10134) Bool)

(assert (=> b!1444991 (= e!921907 (and tp!407745 (inv!19951 (tokens!2014 other!32)) e!921905))))

(declare-fun b!1444992 () Bool)

(declare-fun e!921904 () Bool)

(declare-fun e!921902 () Bool)

(assert (=> b!1444992 (= e!921904 e!921902)))

(declare-fun res!654267 () Bool)

(assert (=> b!1444992 (=> (not res!654267) (not e!921902))))

(declare-fun isEmpty!9334 (BalanceConc!10134) Bool)

(assert (=> b!1444992 (= res!654267 (isEmpty!9334 (tokens!2014 other!32)))))

(declare-datatypes ((Unit!23591 0))(
  ( (Unit!23592) )
))
(declare-fun lt!496945 () Unit!23591)

(declare-fun lemmaInvariant!331 (PrintableTokens!1052) Unit!23591)

(assert (=> b!1444992 (= lt!496945 (lemmaInvariant!331 thiss!10022))))

(declare-fun lt!496937 () Unit!23591)

(assert (=> b!1444992 (= lt!496937 (lemmaInvariant!331 other!32))))

(declare-fun b!1444987 () Bool)

(declare-fun tp!407743 () Bool)

(assert (=> b!1444987 (= e!921905 (and (inv!19950 (c!238014 (tokens!2014 other!32))) tp!407743))))

(declare-fun res!654266 () Bool)

(assert (=> start!134088 (=> (not res!654266) (not e!921904))))

(assert (=> start!134088 (= res!654266 (= (rules!11498 thiss!10022) (rules!11498 other!32)))))

(assert (=> start!134088 e!921904))

(declare-fun e!921906 () Bool)

(declare-fun inv!19952 (PrintableTokens!1052) Bool)

(assert (=> start!134088 (and (inv!19952 thiss!10022) e!921906)))

(assert (=> start!134088 (and (inv!19952 other!32) e!921907)))

(declare-fun b!1444993 () Bool)

(declare-fun tp!407746 () Bool)

(assert (=> b!1444993 (= e!921906 (and tp!407746 (inv!19951 (tokens!2014 thiss!10022)) e!921909))))

(declare-fun b!1444994 () Bool)

(assert (=> b!1444994 (= e!921903 Nil!14990)))

(declare-fun b!1444995 () Bool)

(declare-fun e!921899 () Bool)

(assert (=> b!1444995 (= e!921899 e!921901)))

(declare-fun res!654271 () Bool)

(assert (=> b!1444995 (=> (not res!654271) (not e!921901))))

(assert (=> b!1444995 (= res!654271 (= (rules!11498 lt!496935) (rules!11498 thiss!10022)))))

(declare-datatypes ((Option!2859 0))(
  ( (None!2858) (Some!2858 (v!22398 PrintableTokens!1052)) )
))
(declare-fun lt!496940 () Option!2859)

(declare-fun get!4583 (Option!2859) PrintableTokens!1052)

(assert (=> b!1444995 (= lt!496935 (get!4583 lt!496940))))

(declare-fun b!1444996 () Bool)

(declare-fun res!654272 () Bool)

(assert (=> b!1444996 (=> (not res!654272) (not e!921900))))

(declare-fun lt!496948 () BalanceConc!10132)

(declare-fun printTailRec!685 (LexerInterface!2294 BalanceConc!10134 Int BalanceConc!10132) BalanceConc!10132)

(assert (=> b!1444996 (= res!654272 (= lt!496948 (printTailRec!685 Lexer!2292 (tokens!2014 other!32) 0 (BalanceConc!10133 Empty!5096))))))

(declare-fun b!1444997 () Bool)

(declare-fun e!921910 () Bool)

(assert (=> b!1444997 (= e!921902 (not e!921910))))

(declare-fun res!654268 () Bool)

(assert (=> b!1444997 (=> res!654268 e!921910)))

(assert (=> b!1444997 (= res!654268 (not (= lt!496948 (BalanceConc!10133 Empty!5096))))))

(assert (=> b!1444997 e!921900))

(declare-fun res!654270 () Bool)

(assert (=> b!1444997 (=> (not res!654270) (not e!921900))))

(assert (=> b!1444997 (= res!654270 (= lt!496936 lt!496948))))

(declare-fun print!1075 (LexerInterface!2294 BalanceConc!10134) BalanceConc!10132)

(assert (=> b!1444997 (= lt!496948 (print!1075 Lexer!2292 (tokens!2014 other!32)))))

(assert (=> b!1444997 (= lt!496936 (print!1074 other!32))))

(declare-fun lt!496947 () Unit!23591)

(declare-fun theoremInvertabilityWhenTokenListSeparable!73 (LexerInterface!2294 List!15059 List!15058) Unit!23591)

(assert (=> b!1444997 (= lt!496947 (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 other!32) lt!496943))))

(declare-fun list!5973 (BalanceConc!10134) List!15058)

(assert (=> b!1444997 (= lt!496943 (list!5973 (tokens!2014 other!32)))))

(assert (=> b!1444997 (= lt!496939 (print!1075 Lexer!2292 (tokens!2014 thiss!10022)))))

(assert (=> b!1444997 (= lt!496939 (print!1074 thiss!10022))))

(declare-fun lt!496938 () Unit!23591)

(declare-fun lt!496941 () List!15058)

(assert (=> b!1444997 (= lt!496938 (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 thiss!10022) lt!496941))))

(declare-fun e!921908 () Bool)

(assert (=> b!1444997 e!921908))

(declare-fun res!654273 () Bool)

(assert (=> b!1444997 (=> (not res!654273) (not e!921908))))

(declare-fun lt!496946 () List!15056)

(declare-fun lt!496942 () List!15056)

(declare-fun lt!496934 () List!15058)

(assert (=> b!1444997 (= res!654273 (= (printList!713 Lexer!2292 lt!496934) (++!4033 lt!496946 lt!496942)))))

(assert (=> b!1444997 (= lt!496942 (printList!713 Lexer!2292 Nil!14992))))

(assert (=> b!1444997 (= lt!496946 (printList!713 Lexer!2292 lt!496941))))

(declare-fun ++!4034 (List!15058 List!15058) List!15058)

(assert (=> b!1444997 (= lt!496934 (++!4034 lt!496941 Nil!14992))))

(declare-fun lt!496944 () Unit!23591)

(declare-fun lemmaPrintConcatSameAsConcatPrint!72 (LexerInterface!2294 List!15058 List!15058) Unit!23591)

(assert (=> b!1444997 (= lt!496944 (lemmaPrintConcatSameAsConcatPrint!72 Lexer!2292 lt!496941 Nil!14992))))

(assert (=> b!1444997 (= lt!496941 (list!5973 (tokens!2014 thiss!10022)))))

(declare-fun b!1444998 () Bool)

(assert (=> b!1444998 (= e!921910 e!921899)))

(declare-fun res!654269 () Bool)

(assert (=> b!1444998 (=> res!654269 e!921899)))

(declare-fun isEmpty!9335 (Option!2859) Bool)

(assert (=> b!1444998 (= res!654269 (isEmpty!9335 lt!496940))))

(assert (=> b!1444998 (= lt!496940 (Some!2858 thiss!10022))))

(declare-fun b!1444999 () Bool)

(declare-fun res!654274 () Bool)

(assert (=> b!1444999 (=> (not res!654274) (not e!921901))))

(assert (=> b!1444999 (= res!654274 (= (list!5973 (tokens!2014 lt!496935)) (++!4034 lt!496941 lt!496943)))))

(declare-fun b!1445000 () Bool)

(assert (=> b!1445000 (= e!921908 (= lt!496942 Nil!14990))))

(assert (= (and start!134088 res!654266) b!1444992))

(assert (= (and b!1444992 res!654267) b!1444997))

(assert (= (and b!1444997 res!654273) b!1445000))

(assert (= (and b!1444997 res!654270) b!1444996))

(assert (= (and b!1444996 res!654272) b!1444989))

(assert (= (and b!1444989 c!238011) b!1444986))

(assert (= (and b!1444989 (not c!238011)) b!1444994))

(assert (= (and b!1444997 (not res!654268)) b!1444998))

(assert (= (and b!1444998 (not res!654269)) b!1444995))

(assert (= (and b!1444995 res!654271) b!1444999))

(assert (= (and b!1444999 res!654274) b!1444990))

(assert (= b!1444993 b!1444988))

(assert (= start!134088 b!1444993))

(assert (= b!1444991 b!1444987))

(assert (= start!134088 b!1444991))

(declare-fun m!1664051 () Bool)

(assert (=> b!1444989 m!1664051))

(declare-fun m!1664053 () Bool)

(assert (=> b!1444993 m!1664053))

(declare-fun m!1664055 () Bool)

(assert (=> b!1444990 m!1664055))

(declare-fun m!1664057 () Bool)

(assert (=> b!1444990 m!1664057))

(declare-fun m!1664059 () Bool)

(assert (=> b!1444990 m!1664059))

(assert (=> b!1444990 m!1664057))

(declare-fun m!1664061 () Bool)

(assert (=> b!1444990 m!1664061))

(assert (=> b!1444990 m!1664061))

(declare-fun m!1664063 () Bool)

(assert (=> b!1444990 m!1664063))

(assert (=> b!1444990 m!1664055))

(declare-fun m!1664065 () Bool)

(assert (=> b!1444998 m!1664065))

(declare-fun m!1664067 () Bool)

(assert (=> b!1444995 m!1664067))

(declare-fun m!1664069 () Bool)

(assert (=> b!1444999 m!1664069))

(declare-fun m!1664071 () Bool)

(assert (=> b!1444999 m!1664071))

(declare-fun m!1664073 () Bool)

(assert (=> b!1444997 m!1664073))

(declare-fun m!1664075 () Bool)

(assert (=> b!1444997 m!1664075))

(declare-fun m!1664077 () Bool)

(assert (=> b!1444997 m!1664077))

(declare-fun m!1664079 () Bool)

(assert (=> b!1444997 m!1664079))

(declare-fun m!1664081 () Bool)

(assert (=> b!1444997 m!1664081))

(declare-fun m!1664083 () Bool)

(assert (=> b!1444997 m!1664083))

(declare-fun m!1664085 () Bool)

(assert (=> b!1444997 m!1664085))

(declare-fun m!1664087 () Bool)

(assert (=> b!1444997 m!1664087))

(declare-fun m!1664089 () Bool)

(assert (=> b!1444997 m!1664089))

(declare-fun m!1664091 () Bool)

(assert (=> b!1444997 m!1664091))

(declare-fun m!1664093 () Bool)

(assert (=> b!1444997 m!1664093))

(declare-fun m!1664095 () Bool)

(assert (=> b!1444997 m!1664095))

(declare-fun m!1664097 () Bool)

(assert (=> b!1444997 m!1664097))

(declare-fun m!1664099 () Bool)

(assert (=> b!1444997 m!1664099))

(declare-fun m!1664101 () Bool)

(assert (=> start!134088 m!1664101))

(declare-fun m!1664103 () Bool)

(assert (=> start!134088 m!1664103))

(declare-fun m!1664105 () Bool)

(assert (=> b!1444986 m!1664105))

(assert (=> b!1444986 m!1664105))

(declare-fun m!1664107 () Bool)

(assert (=> b!1444986 m!1664107))

(declare-fun m!1664109 () Bool)

(assert (=> b!1444986 m!1664109))

(assert (=> b!1444986 m!1664107))

(assert (=> b!1444986 m!1664109))

(declare-fun m!1664111 () Bool)

(assert (=> b!1444986 m!1664111))

(declare-fun m!1664113 () Bool)

(assert (=> b!1444992 m!1664113))

(declare-fun m!1664115 () Bool)

(assert (=> b!1444992 m!1664115))

(declare-fun m!1664117 () Bool)

(assert (=> b!1444992 m!1664117))

(declare-fun m!1664119 () Bool)

(assert (=> b!1444987 m!1664119))

(declare-fun m!1664121 () Bool)

(assert (=> b!1444991 m!1664121))

(declare-fun m!1664123 () Bool)

(assert (=> b!1444996 m!1664123))

(declare-fun m!1664125 () Bool)

(assert (=> b!1444988 m!1664125))

(check-sat (not b!1444993) (not b!1444987) (not b!1444991) (not b!1444996) (not b!1444989) (not b!1444999) (not b!1444990) (not b!1444998) (not b!1444992) (not b!1444995) (not b!1444986) (not start!134088) (not b!1444997) (not b!1444988))
(check-sat)
(get-model)

(declare-fun d!418985 () Bool)

(declare-fun list!5976 (Conc!5096) List!15056)

(assert (=> d!418985 (= (list!5972 (print!1074 lt!496935)) (list!5976 (c!238012 (print!1074 lt!496935))))))

(declare-fun bs!342117 () Bool)

(assert (= bs!342117 d!418985))

(declare-fun m!1664145 () Bool)

(assert (=> bs!342117 m!1664145))

(assert (=> b!1444990 d!418985))

(declare-fun d!418987 () Bool)

(declare-fun e!921927 () Bool)

(assert (=> d!418987 e!921927))

(declare-fun res!654292 () Bool)

(assert (=> d!418987 (=> (not res!654292) (not e!921927))))

(declare-fun lt!496965 () BalanceConc!10132)

(declare-datatypes ((tuple2!14160 0))(
  ( (tuple2!14161 (_1!7966 BalanceConc!10134) (_2!7966 BalanceConc!10132)) )
))
(declare-fun lex!1050 (LexerInterface!2294 List!15059 BalanceConc!10132) tuple2!14160)

(assert (=> d!418987 (= res!654292 (= (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 lt!496935) lt!496965))) (list!5973 (tokens!2014 lt!496935))))))

(assert (=> d!418987 (= lt!496965 (print!1075 Lexer!2292 (tokens!2014 lt!496935)))))

(declare-fun lt!496966 () Unit!23591)

(assert (=> d!418987 (= lt!496966 (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 lt!496935) (list!5973 (tokens!2014 lt!496935))))))

(assert (=> d!418987 (= (print!1074 lt!496935) lt!496965)))

(declare-fun b!1445028 () Bool)

(declare-fun isEmpty!9341 (List!15056) Bool)

(assert (=> b!1445028 (= e!921927 (isEmpty!9341 (list!5972 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 lt!496935) lt!496965)))))))

(assert (= (and d!418987 res!654292) b!1445028))

(assert (=> d!418987 m!1664069))

(declare-fun m!1664187 () Bool)

(assert (=> d!418987 m!1664187))

(declare-fun m!1664189 () Bool)

(assert (=> d!418987 m!1664189))

(declare-fun m!1664191 () Bool)

(assert (=> d!418987 m!1664191))

(declare-fun m!1664193 () Bool)

(assert (=> d!418987 m!1664193))

(assert (=> d!418987 m!1664069))

(assert (=> b!1445028 m!1664193))

(declare-fun m!1664195 () Bool)

(assert (=> b!1445028 m!1664195))

(assert (=> b!1445028 m!1664195))

(declare-fun m!1664197 () Bool)

(assert (=> b!1445028 m!1664197))

(assert (=> b!1444990 d!418987))

(declare-fun d!418999 () Bool)

(assert (=> d!418999 (= (list!5972 lt!496939) (list!5976 (c!238012 lt!496939)))))

(declare-fun bs!342120 () Bool)

(assert (= bs!342120 d!418999))

(declare-fun m!1664199 () Bool)

(assert (=> bs!342120 m!1664199))

(assert (=> b!1444990 d!418999))

(declare-fun b!1445038 () Bool)

(declare-fun e!921933 () List!15056)

(assert (=> b!1445038 (= e!921933 (Cons!14990 (h!20391 (list!5972 lt!496939)) (++!4033 (t!130175 (list!5972 lt!496939)) (list!5972 lt!496936))))))

(declare-fun d!419001 () Bool)

(declare-fun e!921932 () Bool)

(assert (=> d!419001 e!921932))

(declare-fun res!654298 () Bool)

(assert (=> d!419001 (=> (not res!654298) (not e!921932))))

(declare-fun lt!496969 () List!15056)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2218 (List!15056) (InoxSet C!8076))

(assert (=> d!419001 (= res!654298 (= (content!2218 lt!496969) ((_ map or) (content!2218 (list!5972 lt!496939)) (content!2218 (list!5972 lt!496936)))))))

(assert (=> d!419001 (= lt!496969 e!921933)))

(declare-fun c!238025 () Bool)

(assert (=> d!419001 (= c!238025 ((_ is Nil!14990) (list!5972 lt!496939)))))

(assert (=> d!419001 (= (++!4033 (list!5972 lt!496939) (list!5972 lt!496936)) lt!496969)))

(declare-fun b!1445037 () Bool)

(assert (=> b!1445037 (= e!921933 (list!5972 lt!496936))))

(declare-fun b!1445039 () Bool)

(declare-fun res!654297 () Bool)

(assert (=> b!1445039 (=> (not res!654297) (not e!921932))))

(declare-fun size!12289 (List!15056) Int)

(assert (=> b!1445039 (= res!654297 (= (size!12289 lt!496969) (+ (size!12289 (list!5972 lt!496939)) (size!12289 (list!5972 lt!496936)))))))

(declare-fun b!1445040 () Bool)

(assert (=> b!1445040 (= e!921932 (or (not (= (list!5972 lt!496936) Nil!14990)) (= lt!496969 (list!5972 lt!496939))))))

(assert (= (and d!419001 c!238025) b!1445037))

(assert (= (and d!419001 (not c!238025)) b!1445038))

(assert (= (and d!419001 res!654298) b!1445039))

(assert (= (and b!1445039 res!654297) b!1445040))

(assert (=> b!1445038 m!1664057))

(declare-fun m!1664201 () Bool)

(assert (=> b!1445038 m!1664201))

(declare-fun m!1664203 () Bool)

(assert (=> d!419001 m!1664203))

(assert (=> d!419001 m!1664055))

(declare-fun m!1664205 () Bool)

(assert (=> d!419001 m!1664205))

(assert (=> d!419001 m!1664057))

(declare-fun m!1664207 () Bool)

(assert (=> d!419001 m!1664207))

(declare-fun m!1664209 () Bool)

(assert (=> b!1445039 m!1664209))

(assert (=> b!1445039 m!1664055))

(declare-fun m!1664211 () Bool)

(assert (=> b!1445039 m!1664211))

(assert (=> b!1445039 m!1664057))

(declare-fun m!1664213 () Bool)

(assert (=> b!1445039 m!1664213))

(assert (=> b!1444990 d!419001))

(declare-fun d!419003 () Bool)

(assert (=> d!419003 (= (list!5972 lt!496936) (list!5976 (c!238012 lt!496936)))))

(declare-fun bs!342121 () Bool)

(assert (= bs!342121 d!419003))

(declare-fun m!1664215 () Bool)

(assert (=> bs!342121 m!1664215))

(assert (=> b!1444990 d!419003))

(declare-fun d!419005 () Bool)

(declare-fun list!5977 (Conc!5097) List!15058)

(assert (=> d!419005 (= (list!5973 (tokens!2014 lt!496935)) (list!5977 (c!238014 (tokens!2014 lt!496935))))))

(declare-fun bs!342122 () Bool)

(assert (= bs!342122 d!419005))

(declare-fun m!1664217 () Bool)

(assert (=> bs!342122 m!1664217))

(assert (=> b!1444999 d!419005))

(declare-fun d!419007 () Bool)

(declare-fun e!921939 () Bool)

(assert (=> d!419007 e!921939))

(declare-fun res!654304 () Bool)

(assert (=> d!419007 (=> (not res!654304) (not e!921939))))

(declare-fun lt!496972 () List!15058)

(declare-fun content!2219 (List!15058) (InoxSet Token!4932))

(assert (=> d!419007 (= res!654304 (= (content!2219 lt!496972) ((_ map or) (content!2219 lt!496941) (content!2219 lt!496943))))))

(declare-fun e!921938 () List!15058)

(assert (=> d!419007 (= lt!496972 e!921938)))

(declare-fun c!238028 () Bool)

(assert (=> d!419007 (= c!238028 ((_ is Nil!14992) lt!496941))))

(assert (=> d!419007 (= (++!4034 lt!496941 lt!496943) lt!496972)))

(declare-fun b!1445051 () Bool)

(declare-fun res!654303 () Bool)

(assert (=> b!1445051 (=> (not res!654303) (not e!921939))))

(declare-fun size!12290 (List!15058) Int)

(assert (=> b!1445051 (= res!654303 (= (size!12290 lt!496972) (+ (size!12290 lt!496941) (size!12290 lt!496943))))))

(declare-fun b!1445049 () Bool)

(assert (=> b!1445049 (= e!921938 lt!496943)))

(declare-fun b!1445052 () Bool)

(assert (=> b!1445052 (= e!921939 (or (not (= lt!496943 Nil!14992)) (= lt!496972 lt!496941)))))

(declare-fun b!1445050 () Bool)

(assert (=> b!1445050 (= e!921938 (Cons!14992 (h!20393 lt!496941) (++!4034 (t!130177 lt!496941) lt!496943)))))

(assert (= (and d!419007 c!238028) b!1445049))

(assert (= (and d!419007 (not c!238028)) b!1445050))

(assert (= (and d!419007 res!654304) b!1445051))

(assert (= (and b!1445051 res!654303) b!1445052))

(declare-fun m!1664219 () Bool)

(assert (=> d!419007 m!1664219))

(declare-fun m!1664221 () Bool)

(assert (=> d!419007 m!1664221))

(declare-fun m!1664223 () Bool)

(assert (=> d!419007 m!1664223))

(declare-fun m!1664225 () Bool)

(assert (=> b!1445051 m!1664225))

(declare-fun m!1664227 () Bool)

(assert (=> b!1445051 m!1664227))

(declare-fun m!1664229 () Bool)

(assert (=> b!1445051 m!1664229))

(declare-fun m!1664231 () Bool)

(assert (=> b!1445050 m!1664231))

(assert (=> b!1444999 d!419007))

(declare-fun d!419009 () Bool)

(declare-fun c!238031 () Bool)

(assert (=> d!419009 (= c!238031 ((_ is Cons!14992) lt!496943))))

(declare-fun e!921942 () List!15056)

(assert (=> d!419009 (= (printList!713 Lexer!2292 lt!496943) e!921942)))

(declare-fun b!1445057 () Bool)

(assert (=> b!1445057 (= e!921942 (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (printList!713 Lexer!2292 (t!130177 lt!496943))))))

(declare-fun b!1445058 () Bool)

(assert (=> b!1445058 (= e!921942 Nil!14990)))

(assert (= (and d!419009 c!238031) b!1445057))

(assert (= (and d!419009 (not c!238031)) b!1445058))

(assert (=> b!1445057 m!1664105))

(assert (=> b!1445057 m!1664105))

(assert (=> b!1445057 m!1664107))

(assert (=> b!1445057 m!1664109))

(assert (=> b!1445057 m!1664107))

(assert (=> b!1445057 m!1664109))

(assert (=> b!1445057 m!1664111))

(assert (=> b!1444989 d!419009))

(declare-fun d!419011 () Bool)

(declare-fun c!238034 () Bool)

(assert (=> d!419011 (= c!238034 ((_ is Node!5097) (c!238014 (tokens!2014 other!32))))))

(declare-fun e!921947 () Bool)

(assert (=> d!419011 (= (inv!19950 (c!238014 (tokens!2014 other!32))) e!921947)))

(declare-fun b!1445065 () Bool)

(declare-fun inv!19959 (Conc!5097) Bool)

(assert (=> b!1445065 (= e!921947 (inv!19959 (c!238014 (tokens!2014 other!32))))))

(declare-fun b!1445066 () Bool)

(declare-fun e!921948 () Bool)

(assert (=> b!1445066 (= e!921947 e!921948)))

(declare-fun res!654307 () Bool)

(assert (=> b!1445066 (= res!654307 (not ((_ is Leaf!7616) (c!238014 (tokens!2014 other!32)))))))

(assert (=> b!1445066 (=> res!654307 e!921948)))

(declare-fun b!1445067 () Bool)

(declare-fun inv!19960 (Conc!5097) Bool)

(assert (=> b!1445067 (= e!921948 (inv!19960 (c!238014 (tokens!2014 other!32))))))

(assert (= (and d!419011 c!238034) b!1445065))

(assert (= (and d!419011 (not c!238034)) b!1445066))

(assert (= (and b!1445066 (not res!654307)) b!1445067))

(declare-fun m!1664233 () Bool)

(assert (=> b!1445065 m!1664233))

(declare-fun m!1664235 () Bool)

(assert (=> b!1445067 m!1664235))

(assert (=> b!1444987 d!419011))

(declare-fun d!419013 () Bool)

(assert (=> d!419013 (= (isEmpty!9335 lt!496940) (not ((_ is Some!2858) lt!496940)))))

(assert (=> b!1444998 d!419013))

(declare-fun d!419015 () Bool)

(declare-fun c!238035 () Bool)

(assert (=> d!419015 (= c!238035 ((_ is Node!5097) (c!238014 (tokens!2014 thiss!10022))))))

(declare-fun e!921949 () Bool)

(assert (=> d!419015 (= (inv!19950 (c!238014 (tokens!2014 thiss!10022))) e!921949)))

(declare-fun b!1445068 () Bool)

(assert (=> b!1445068 (= e!921949 (inv!19959 (c!238014 (tokens!2014 thiss!10022))))))

(declare-fun b!1445069 () Bool)

(declare-fun e!921950 () Bool)

(assert (=> b!1445069 (= e!921949 e!921950)))

(declare-fun res!654308 () Bool)

(assert (=> b!1445069 (= res!654308 (not ((_ is Leaf!7616) (c!238014 (tokens!2014 thiss!10022)))))))

(assert (=> b!1445069 (=> res!654308 e!921950)))

(declare-fun b!1445070 () Bool)

(assert (=> b!1445070 (= e!921950 (inv!19960 (c!238014 (tokens!2014 thiss!10022))))))

(assert (= (and d!419015 c!238035) b!1445068))

(assert (= (and d!419015 (not c!238035)) b!1445069))

(assert (= (and b!1445069 (not res!654308)) b!1445070))

(declare-fun m!1664237 () Bool)

(assert (=> b!1445068 m!1664237))

(declare-fun m!1664239 () Bool)

(assert (=> b!1445070 m!1664239))

(assert (=> b!1444988 d!419015))

(declare-fun b!1445072 () Bool)

(declare-fun e!921952 () List!15056)

(assert (=> b!1445072 (= e!921952 (Cons!14990 (h!20391 (list!5972 (charsOf!1521 (h!20393 lt!496943)))) (++!4033 (t!130175 (list!5972 (charsOf!1521 (h!20393 lt!496943)))) (printList!713 Lexer!2292 (t!130177 lt!496943)))))))

(declare-fun d!419017 () Bool)

(declare-fun e!921951 () Bool)

(assert (=> d!419017 e!921951))

(declare-fun res!654310 () Bool)

(assert (=> d!419017 (=> (not res!654310) (not e!921951))))

(declare-fun lt!496973 () List!15056)

(assert (=> d!419017 (= res!654310 (= (content!2218 lt!496973) ((_ map or) (content!2218 (list!5972 (charsOf!1521 (h!20393 lt!496943)))) (content!2218 (printList!713 Lexer!2292 (t!130177 lt!496943))))))))

(assert (=> d!419017 (= lt!496973 e!921952)))

(declare-fun c!238036 () Bool)

(assert (=> d!419017 (= c!238036 ((_ is Nil!14990) (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))

(assert (=> d!419017 (= (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (printList!713 Lexer!2292 (t!130177 lt!496943))) lt!496973)))

(declare-fun b!1445071 () Bool)

(assert (=> b!1445071 (= e!921952 (printList!713 Lexer!2292 (t!130177 lt!496943)))))

(declare-fun b!1445073 () Bool)

(declare-fun res!654309 () Bool)

(assert (=> b!1445073 (=> (not res!654309) (not e!921951))))

(assert (=> b!1445073 (= res!654309 (= (size!12289 lt!496973) (+ (size!12289 (list!5972 (charsOf!1521 (h!20393 lt!496943)))) (size!12289 (printList!713 Lexer!2292 (t!130177 lt!496943))))))))

(declare-fun b!1445074 () Bool)

(assert (=> b!1445074 (= e!921951 (or (not (= (printList!713 Lexer!2292 (t!130177 lt!496943)) Nil!14990)) (= lt!496973 (list!5972 (charsOf!1521 (h!20393 lt!496943))))))))

(assert (= (and d!419017 c!238036) b!1445071))

(assert (= (and d!419017 (not c!238036)) b!1445072))

(assert (= (and d!419017 res!654310) b!1445073))

(assert (= (and b!1445073 res!654309) b!1445074))

(assert (=> b!1445072 m!1664109))

(declare-fun m!1664241 () Bool)

(assert (=> b!1445072 m!1664241))

(declare-fun m!1664243 () Bool)

(assert (=> d!419017 m!1664243))

(assert (=> d!419017 m!1664107))

(declare-fun m!1664245 () Bool)

(assert (=> d!419017 m!1664245))

(assert (=> d!419017 m!1664109))

(declare-fun m!1664247 () Bool)

(assert (=> d!419017 m!1664247))

(declare-fun m!1664249 () Bool)

(assert (=> b!1445073 m!1664249))

(assert (=> b!1445073 m!1664107))

(declare-fun m!1664251 () Bool)

(assert (=> b!1445073 m!1664251))

(assert (=> b!1445073 m!1664109))

(declare-fun m!1664253 () Bool)

(assert (=> b!1445073 m!1664253))

(assert (=> b!1444986 d!419017))

(declare-fun d!419019 () Bool)

(assert (=> d!419019 (= (list!5972 (charsOf!1521 (h!20393 lt!496943))) (list!5976 (c!238012 (charsOf!1521 (h!20393 lt!496943)))))))

(declare-fun bs!342123 () Bool)

(assert (= bs!342123 d!419019))

(declare-fun m!1664255 () Bool)

(assert (=> bs!342123 m!1664255))

(assert (=> b!1444986 d!419019))

(declare-fun d!419021 () Bool)

(declare-fun lt!496976 () BalanceConc!10132)

(assert (=> d!419021 (= (list!5972 lt!496976) (originalCharacters!3497 (h!20393 lt!496943)))))

(declare-fun dynLambda!6841 (Int TokenValue!2725) BalanceConc!10132)

(assert (=> d!419021 (= lt!496976 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))) (value!84745 (h!20393 lt!496943))))))

(assert (=> d!419021 (= (charsOf!1521 (h!20393 lt!496943)) lt!496976)))

(declare-fun b_lambda!45147 () Bool)

(assert (=> (not b_lambda!45147) (not d!419021)))

(declare-fun bs!342124 () Bool)

(assert (= bs!342124 d!419021))

(declare-fun m!1664257 () Bool)

(assert (=> bs!342124 m!1664257))

(declare-fun m!1664259 () Bool)

(assert (=> bs!342124 m!1664259))

(assert (=> b!1444986 d!419021))

(declare-fun d!419023 () Bool)

(declare-fun c!238037 () Bool)

(assert (=> d!419023 (= c!238037 ((_ is Cons!14992) (t!130177 lt!496943)))))

(declare-fun e!921953 () List!15056)

(assert (=> d!419023 (= (printList!713 Lexer!2292 (t!130177 lt!496943)) e!921953)))

(declare-fun b!1445075 () Bool)

(assert (=> b!1445075 (= e!921953 (++!4033 (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943)))) (printList!713 Lexer!2292 (t!130177 (t!130177 lt!496943)))))))

(declare-fun b!1445076 () Bool)

(assert (=> b!1445076 (= e!921953 Nil!14990)))

(assert (= (and d!419023 c!238037) b!1445075))

(assert (= (and d!419023 (not c!238037)) b!1445076))

(declare-fun m!1664261 () Bool)

(assert (=> b!1445075 m!1664261))

(assert (=> b!1445075 m!1664261))

(declare-fun m!1664263 () Bool)

(assert (=> b!1445075 m!1664263))

(declare-fun m!1664265 () Bool)

(assert (=> b!1445075 m!1664265))

(assert (=> b!1445075 m!1664263))

(assert (=> b!1445075 m!1664265))

(declare-fun m!1664267 () Bool)

(assert (=> b!1445075 m!1664267))

(assert (=> b!1444986 d!419023))

(declare-fun d!419025 () Bool)

(declare-fun e!921955 () Bool)

(assert (=> d!419025 e!921955))

(declare-fun res!654312 () Bool)

(assert (=> d!419025 (=> (not res!654312) (not e!921955))))

(declare-fun lt!496977 () List!15058)

(assert (=> d!419025 (= res!654312 (= (content!2219 lt!496977) ((_ map or) (content!2219 lt!496941) (content!2219 Nil!14992))))))

(declare-fun e!921954 () List!15058)

(assert (=> d!419025 (= lt!496977 e!921954)))

(declare-fun c!238038 () Bool)

(assert (=> d!419025 (= c!238038 ((_ is Nil!14992) lt!496941))))

(assert (=> d!419025 (= (++!4034 lt!496941 Nil!14992) lt!496977)))

(declare-fun b!1445079 () Bool)

(declare-fun res!654311 () Bool)

(assert (=> b!1445079 (=> (not res!654311) (not e!921955))))

(assert (=> b!1445079 (= res!654311 (= (size!12290 lt!496977) (+ (size!12290 lt!496941) (size!12290 Nil!14992))))))

(declare-fun b!1445077 () Bool)

(assert (=> b!1445077 (= e!921954 Nil!14992)))

(declare-fun b!1445080 () Bool)

(assert (=> b!1445080 (= e!921955 (or (not (= Nil!14992 Nil!14992)) (= lt!496977 lt!496941)))))

(declare-fun b!1445078 () Bool)

(assert (=> b!1445078 (= e!921954 (Cons!14992 (h!20393 lt!496941) (++!4034 (t!130177 lt!496941) Nil!14992)))))

(assert (= (and d!419025 c!238038) b!1445077))

(assert (= (and d!419025 (not c!238038)) b!1445078))

(assert (= (and d!419025 res!654312) b!1445079))

(assert (= (and b!1445079 res!654311) b!1445080))

(declare-fun m!1664269 () Bool)

(assert (=> d!419025 m!1664269))

(assert (=> d!419025 m!1664221))

(declare-fun m!1664271 () Bool)

(assert (=> d!419025 m!1664271))

(declare-fun m!1664273 () Bool)

(assert (=> b!1445079 m!1664273))

(assert (=> b!1445079 m!1664227))

(declare-fun m!1664275 () Bool)

(assert (=> b!1445079 m!1664275))

(declare-fun m!1664277 () Bool)

(assert (=> b!1445078 m!1664277))

(assert (=> b!1444997 d!419025))

(declare-fun d!419027 () Bool)

(assert (=> d!419027 (= (list!5973 (tokens!2014 other!32)) (list!5977 (c!238014 (tokens!2014 other!32))))))

(declare-fun bs!342125 () Bool)

(assert (= bs!342125 d!419027))

(declare-fun m!1664279 () Bool)

(assert (=> bs!342125 m!1664279))

(assert (=> b!1444997 d!419027))

(declare-fun d!419029 () Bool)

(declare-fun c!238039 () Bool)

(assert (=> d!419029 (= c!238039 ((_ is Cons!14992) Nil!14992))))

(declare-fun e!921956 () List!15056)

(assert (=> d!419029 (= (printList!713 Lexer!2292 Nil!14992) e!921956)))

(declare-fun b!1445081 () Bool)

(assert (=> b!1445081 (= e!921956 (++!4033 (list!5972 (charsOf!1521 (h!20393 Nil!14992))) (printList!713 Lexer!2292 (t!130177 Nil!14992))))))

(declare-fun b!1445082 () Bool)

(assert (=> b!1445082 (= e!921956 Nil!14990)))

(assert (= (and d!419029 c!238039) b!1445081))

(assert (= (and d!419029 (not c!238039)) b!1445082))

(declare-fun m!1664281 () Bool)

(assert (=> b!1445081 m!1664281))

(assert (=> b!1445081 m!1664281))

(declare-fun m!1664283 () Bool)

(assert (=> b!1445081 m!1664283))

(declare-fun m!1664285 () Bool)

(assert (=> b!1445081 m!1664285))

(assert (=> b!1445081 m!1664283))

(assert (=> b!1445081 m!1664285))

(declare-fun m!1664287 () Bool)

(assert (=> b!1445081 m!1664287))

(assert (=> b!1444997 d!419029))

(declare-fun d!419031 () Bool)

(declare-fun e!921957 () Bool)

(assert (=> d!419031 e!921957))

(declare-fun res!654313 () Bool)

(assert (=> d!419031 (=> (not res!654313) (not e!921957))))

(declare-fun lt!496978 () BalanceConc!10132)

(assert (=> d!419031 (= res!654313 (= (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) lt!496978))) (list!5973 (tokens!2014 other!32))))))

(assert (=> d!419031 (= lt!496978 (print!1075 Lexer!2292 (tokens!2014 other!32)))))

(declare-fun lt!496979 () Unit!23591)

(assert (=> d!419031 (= lt!496979 (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 other!32) (list!5973 (tokens!2014 other!32))))))

(assert (=> d!419031 (= (print!1074 other!32) lt!496978)))

(declare-fun b!1445083 () Bool)

(assert (=> b!1445083 (= e!921957 (isEmpty!9341 (list!5972 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) lt!496978)))))))

(assert (= (and d!419031 res!654313) b!1445083))

(assert (=> d!419031 m!1664099))

(declare-fun m!1664289 () Bool)

(assert (=> d!419031 m!1664289))

(assert (=> d!419031 m!1664097))

(declare-fun m!1664291 () Bool)

(assert (=> d!419031 m!1664291))

(declare-fun m!1664293 () Bool)

(assert (=> d!419031 m!1664293))

(assert (=> d!419031 m!1664099))

(assert (=> b!1445083 m!1664293))

(declare-fun m!1664295 () Bool)

(assert (=> b!1445083 m!1664295))

(assert (=> b!1445083 m!1664295))

(declare-fun m!1664297 () Bool)

(assert (=> b!1445083 m!1664297))

(assert (=> b!1444997 d!419031))

(declare-fun d!419033 () Bool)

(assert (=> d!419033 (= (list!5973 (tokens!2014 thiss!10022)) (list!5977 (c!238014 (tokens!2014 thiss!10022))))))

(declare-fun bs!342126 () Bool)

(assert (= bs!342126 d!419033))

(declare-fun m!1664299 () Bool)

(assert (=> bs!342126 m!1664299))

(assert (=> b!1444997 d!419033))

(declare-fun d!419035 () Bool)

(declare-fun e!921999 () Bool)

(assert (=> d!419035 e!921999))

(declare-fun res!654339 () Bool)

(assert (=> d!419035 (=> (not res!654339) (not e!921999))))

(declare-fun seqFromList!1704 (List!15058) BalanceConc!10134)

(assert (=> d!419035 (= res!654339 (= (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) (print!1075 Lexer!2292 (seqFromList!1704 lt!496943))))) lt!496943))))

(declare-fun lt!497176 () Unit!23591)

(declare-fun e!921998 () Unit!23591)

(assert (=> d!419035 (= lt!497176 e!921998)))

(declare-fun c!238060 () Bool)

(assert (=> d!419035 (= c!238060 (or ((_ is Nil!14992) lt!496943) ((_ is Nil!14992) (t!130177 lt!496943))))))

(declare-fun isEmpty!9342 (List!15059) Bool)

(assert (=> d!419035 (not (isEmpty!9342 (rules!11498 other!32)))))

(assert (=> d!419035 (= (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 other!32) lt!496943) lt!497176)))

(declare-fun b!1445149 () Bool)

(declare-fun Unit!23623 () Unit!23591)

(assert (=> b!1445149 (= e!921998 Unit!23623)))

(declare-fun b!1445150 () Bool)

(declare-fun Unit!23624 () Unit!23591)

(assert (=> b!1445150 (= e!921998 Unit!23624)))

(declare-fun lt!497183 () BalanceConc!10132)

(assert (=> b!1445150 (= lt!497183 (print!1075 Lexer!2292 (seqFromList!1704 lt!496943)))))

(declare-fun lt!497196 () BalanceConc!10132)

(assert (=> b!1445150 (= lt!497196 (print!1075 Lexer!2292 (seqFromList!1704 (t!130177 lt!496943))))))

(declare-fun lt!497179 () tuple2!14160)

(assert (=> b!1445150 (= lt!497179 (lex!1050 Lexer!2292 (rules!11498 other!32) lt!497196))))

(declare-fun lt!497189 () List!15056)

(assert (=> b!1445150 (= lt!497189 (list!5972 (charsOf!1521 (h!20393 lt!496943))))))

(declare-fun lt!497188 () List!15056)

(assert (=> b!1445150 (= lt!497188 (list!5972 lt!497196))))

(declare-fun lt!497192 () Unit!23591)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!762 (List!15056 List!15056) Unit!23591)

(assert (=> b!1445150 (= lt!497192 (lemmaConcatTwoListThenFirstIsPrefix!762 lt!497189 lt!497188))))

(declare-fun isPrefix!1197 (List!15056 List!15056) Bool)

(assert (=> b!1445150 (isPrefix!1197 lt!497189 (++!4033 lt!497189 lt!497188))))

(declare-fun lt!497185 () Unit!23591)

(assert (=> b!1445150 (= lt!497185 lt!497192)))

(declare-fun lt!497184 () Unit!23591)

(assert (=> b!1445150 (= lt!497184 (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 other!32) (t!130177 lt!496943)))))

(declare-fun lt!497195 () Unit!23591)

(declare-fun seqFromListBHdTlConstructive!91 (Token!4932 List!15058 BalanceConc!10134) Unit!23591)

(assert (=> b!1445150 (= lt!497195 (seqFromListBHdTlConstructive!91 (h!20393 (t!130177 lt!496943)) (t!130177 (t!130177 lt!496943)) (_1!7966 lt!497179)))))

(declare-fun prepend!415 (BalanceConc!10134 Token!4932) BalanceConc!10134)

(assert (=> b!1445150 (= (list!5973 (_1!7966 lt!497179)) (list!5973 (prepend!415 (seqFromList!1704 (t!130177 (t!130177 lt!496943))) (h!20393 (t!130177 lt!496943)))))))

(declare-fun lt!497186 () Unit!23591)

(assert (=> b!1445150 (= lt!497186 lt!497195)))

(declare-datatypes ((tuple2!14162 0))(
  ( (tuple2!14163 (_1!7967 Token!4932) (_2!7967 List!15056)) )
))
(declare-datatypes ((Option!2861 0))(
  ( (None!2860) (Some!2860 (v!22408 tuple2!14162)) )
))
(declare-fun lt!497197 () Option!2861)

(declare-fun maxPrefix!1187 (LexerInterface!2294 List!15059 List!15056) Option!2861)

(assert (=> b!1445150 (= lt!497197 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 lt!497183)))))

(declare-fun singletonSeq!1238 (Token!4932) BalanceConc!10134)

(assert (=> b!1445150 (= (print!1075 Lexer!2292 (singletonSeq!1238 (h!20393 lt!496943))) (printTailRec!685 Lexer!2292 (singletonSeq!1238 (h!20393 lt!496943)) 0 (BalanceConc!10133 Empty!5096)))))

(declare-fun lt!497198 () Unit!23591)

(declare-fun Unit!23625 () Unit!23591)

(assert (=> b!1445150 (= lt!497198 Unit!23625)))

(declare-fun lt!497180 () Unit!23591)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!235 (LexerInterface!2294 List!15059 List!15056 List!15056) Unit!23591)

(assert (=> b!1445150 (= lt!497180 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!235 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 lt!496943))) (list!5972 lt!497196)))))

(assert (=> b!1445150 (= (list!5972 (charsOf!1521 (h!20393 lt!496943))) (originalCharacters!3497 (h!20393 lt!496943)))))

(declare-fun lt!497173 () Unit!23591)

(declare-fun Unit!23626 () Unit!23591)

(assert (=> b!1445150 (= lt!497173 Unit!23626)))

(declare-fun singletonSeq!1239 (C!8076) BalanceConc!10132)

(declare-fun apply!3864 (BalanceConc!10132 Int) C!8076)

(declare-fun head!2929 (List!15056) C!8076)

(assert (=> b!1445150 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496943))) 0))) (Cons!14990 (head!2929 (originalCharacters!3497 (h!20393 (t!130177 lt!496943)))) Nil!14990))))

(declare-fun lt!497177 () Unit!23591)

(declare-fun Unit!23627 () Unit!23591)

(assert (=> b!1445150 (= lt!497177 Unit!23627)))

(assert (=> b!1445150 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496943))) 0))) (Cons!14990 (head!2929 (list!5972 lt!497196)) Nil!14990))))

(declare-fun lt!497175 () Unit!23591)

(declare-fun Unit!23628 () Unit!23591)

(assert (=> b!1445150 (= lt!497175 Unit!23628)))

(declare-fun head!2930 (BalanceConc!10132) C!8076)

(assert (=> b!1445150 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496943))) 0))) (Cons!14990 (head!2930 lt!497196) Nil!14990))))

(declare-fun lt!497193 () Unit!23591)

(declare-fun Unit!23629 () Unit!23591)

(assert (=> b!1445150 (= lt!497193 Unit!23629)))

(declare-fun isDefined!2314 (Option!2861) Bool)

(assert (=> b!1445150 (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (originalCharacters!3497 (h!20393 lt!496943))))))

(declare-fun lt!497174 () Unit!23591)

(declare-fun Unit!23630 () Unit!23591)

(assert (=> b!1445150 (= lt!497174 Unit!23630)))

(assert (=> b!1445150 (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))

(declare-fun lt!497194 () Unit!23591)

(declare-fun Unit!23631 () Unit!23591)

(assert (=> b!1445150 (= lt!497194 Unit!23631)))

(declare-fun lt!497191 () Unit!23591)

(declare-fun Unit!23632 () Unit!23591)

(assert (=> b!1445150 (= lt!497191 Unit!23632)))

(declare-fun get!4585 (Option!2861) tuple2!14162)

(assert (=> b!1445150 (= (_1!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 lt!496943)))))) (h!20393 lt!496943))))

(declare-fun lt!497190 () Unit!23591)

(declare-fun Unit!23633 () Unit!23591)

(assert (=> b!1445150 (= lt!497190 Unit!23633)))

(assert (=> b!1445150 (isEmpty!9341 (_2!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))))

(declare-fun lt!497178 () Unit!23591)

(declare-fun Unit!23634 () Unit!23591)

(assert (=> b!1445150 (= lt!497178 Unit!23634)))

(declare-fun matchR!1823 (Regex!3949 List!15056) Bool)

(assert (=> b!1445150 (matchR!1823 (regex!2635 (rule!4406 (h!20393 lt!496943))) (list!5972 (charsOf!1521 (h!20393 lt!496943))))))

(declare-fun lt!497187 () Unit!23591)

(declare-fun Unit!23635 () Unit!23591)

(assert (=> b!1445150 (= lt!497187 Unit!23635)))

(assert (=> b!1445150 (= (rule!4406 (h!20393 lt!496943)) (rule!4406 (h!20393 lt!496943)))))

(declare-fun lt!497182 () Unit!23591)

(declare-fun Unit!23636 () Unit!23591)

(assert (=> b!1445150 (= lt!497182 Unit!23636)))

(declare-fun lt!497181 () Unit!23591)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!33 (LexerInterface!2294 List!15059 Token!4932 Rule!5070 List!15056) Unit!23591)

(assert (=> b!1445150 (= lt!497181 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!33 Lexer!2292 (rules!11498 other!32) (h!20393 lt!496943) (rule!4406 (h!20393 lt!496943)) (list!5972 lt!497196)))))

(declare-fun b!1445151 () Bool)

(declare-fun isEmpty!9343 (BalanceConc!10132) Bool)

(assert (=> b!1445151 (= e!921999 (isEmpty!9343 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) (print!1075 Lexer!2292 (seqFromList!1704 lt!496943))))))))

(assert (= (and d!419035 c!238060) b!1445149))

(assert (= (and d!419035 (not c!238060)) b!1445150))

(assert (= (and d!419035 res!654339) b!1445151))

(declare-fun m!1664597 () Bool)

(assert (=> d!419035 m!1664597))

(declare-fun m!1664599 () Bool)

(assert (=> d!419035 m!1664599))

(declare-fun m!1664601 () Bool)

(assert (=> d!419035 m!1664601))

(declare-fun m!1664603 () Bool)

(assert (=> d!419035 m!1664603))

(declare-fun m!1664605 () Bool)

(assert (=> d!419035 m!1664605))

(assert (=> d!419035 m!1664603))

(assert (=> d!419035 m!1664599))

(declare-fun m!1664607 () Bool)

(assert (=> b!1445150 m!1664607))

(declare-fun m!1664609 () Bool)

(assert (=> b!1445150 m!1664609))

(declare-fun m!1664611 () Bool)

(assert (=> b!1445150 m!1664611))

(declare-fun m!1664613 () Bool)

(assert (=> b!1445150 m!1664613))

(declare-fun m!1664615 () Bool)

(assert (=> b!1445150 m!1664615))

(declare-fun m!1664617 () Bool)

(assert (=> b!1445150 m!1664617))

(declare-fun m!1664619 () Bool)

(assert (=> b!1445150 m!1664619))

(declare-fun m!1664621 () Bool)

(assert (=> b!1445150 m!1664621))

(declare-fun m!1664623 () Bool)

(assert (=> b!1445150 m!1664623))

(declare-fun m!1664625 () Bool)

(assert (=> b!1445150 m!1664625))

(declare-fun m!1664627 () Bool)

(assert (=> b!1445150 m!1664627))

(declare-fun m!1664629 () Bool)

(assert (=> b!1445150 m!1664629))

(declare-fun m!1664631 () Bool)

(assert (=> b!1445150 m!1664631))

(assert (=> b!1445150 m!1664261))

(declare-fun m!1664633 () Bool)

(assert (=> b!1445150 m!1664633))

(assert (=> b!1445150 m!1664107))

(declare-fun m!1664635 () Bool)

(assert (=> b!1445150 m!1664635))

(assert (=> b!1445150 m!1664615))

(declare-fun m!1664637 () Bool)

(assert (=> b!1445150 m!1664637))

(declare-fun m!1664639 () Bool)

(assert (=> b!1445150 m!1664639))

(declare-fun m!1664641 () Bool)

(assert (=> b!1445150 m!1664641))

(assert (=> b!1445150 m!1664607))

(assert (=> b!1445150 m!1664619))

(declare-fun m!1664643 () Bool)

(assert (=> b!1445150 m!1664643))

(declare-fun m!1664645 () Bool)

(assert (=> b!1445150 m!1664645))

(declare-fun m!1664647 () Bool)

(assert (=> b!1445150 m!1664647))

(assert (=> b!1445150 m!1664261))

(assert (=> b!1445150 m!1664607))

(declare-fun m!1664649 () Bool)

(assert (=> b!1445150 m!1664649))

(declare-fun m!1664651 () Bool)

(assert (=> b!1445150 m!1664651))

(declare-fun m!1664653 () Bool)

(assert (=> b!1445150 m!1664653))

(assert (=> b!1445150 m!1664617))

(declare-fun m!1664655 () Bool)

(assert (=> b!1445150 m!1664655))

(assert (=> b!1445150 m!1664107))

(assert (=> b!1445150 m!1664627))

(declare-fun m!1664657 () Bool)

(assert (=> b!1445150 m!1664657))

(declare-fun m!1664659 () Bool)

(assert (=> b!1445150 m!1664659))

(declare-fun m!1664661 () Bool)

(assert (=> b!1445150 m!1664661))

(assert (=> b!1445150 m!1664603))

(assert (=> b!1445150 m!1664645))

(assert (=> b!1445150 m!1664611))

(assert (=> b!1445150 m!1664623))

(assert (=> b!1445150 m!1664627))

(assert (=> b!1445150 m!1664603))

(assert (=> b!1445150 m!1664599))

(assert (=> b!1445150 m!1664107))

(assert (=> b!1445150 m!1664639))

(assert (=> b!1445150 m!1664105))

(declare-fun m!1664663 () Bool)

(assert (=> b!1445150 m!1664663))

(assert (=> b!1445150 m!1664639))

(declare-fun m!1664665 () Bool)

(assert (=> b!1445150 m!1664665))

(assert (=> b!1445150 m!1664633))

(declare-fun m!1664667 () Bool)

(assert (=> b!1445150 m!1664667))

(assert (=> b!1445150 m!1664667))

(declare-fun m!1664669 () Bool)

(assert (=> b!1445150 m!1664669))

(assert (=> b!1445150 m!1664105))

(assert (=> b!1445150 m!1664107))

(assert (=> b!1445150 m!1664627))

(declare-fun m!1664671 () Bool)

(assert (=> b!1445150 m!1664671))

(assert (=> b!1445151 m!1664603))

(assert (=> b!1445151 m!1664603))

(assert (=> b!1445151 m!1664599))

(assert (=> b!1445151 m!1664599))

(assert (=> b!1445151 m!1664601))

(declare-fun m!1664673 () Bool)

(assert (=> b!1445151 m!1664673))

(assert (=> b!1444997 d!419035))

(declare-fun d!419081 () Bool)

(declare-fun c!238061 () Bool)

(assert (=> d!419081 (= c!238061 ((_ is Cons!14992) lt!496941))))

(declare-fun e!922000 () List!15056)

(assert (=> d!419081 (= (printList!713 Lexer!2292 lt!496941) e!922000)))

(declare-fun b!1445152 () Bool)

(assert (=> b!1445152 (= e!922000 (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496941))) (printList!713 Lexer!2292 (t!130177 lt!496941))))))

(declare-fun b!1445153 () Bool)

(assert (=> b!1445153 (= e!922000 Nil!14990)))

(assert (= (and d!419081 c!238061) b!1445152))

(assert (= (and d!419081 (not c!238061)) b!1445153))

(declare-fun m!1664675 () Bool)

(assert (=> b!1445152 m!1664675))

(assert (=> b!1445152 m!1664675))

(declare-fun m!1664677 () Bool)

(assert (=> b!1445152 m!1664677))

(declare-fun m!1664679 () Bool)

(assert (=> b!1445152 m!1664679))

(assert (=> b!1445152 m!1664677))

(assert (=> b!1445152 m!1664679))

(declare-fun m!1664681 () Bool)

(assert (=> b!1445152 m!1664681))

(assert (=> b!1444997 d!419081))

(declare-fun b!1445155 () Bool)

(declare-fun e!922002 () List!15056)

(assert (=> b!1445155 (= e!922002 (Cons!14990 (h!20391 lt!496946) (++!4033 (t!130175 lt!496946) lt!496942)))))

(declare-fun d!419083 () Bool)

(declare-fun e!922001 () Bool)

(assert (=> d!419083 e!922001))

(declare-fun res!654341 () Bool)

(assert (=> d!419083 (=> (not res!654341) (not e!922001))))

(declare-fun lt!497199 () List!15056)

(assert (=> d!419083 (= res!654341 (= (content!2218 lt!497199) ((_ map or) (content!2218 lt!496946) (content!2218 lt!496942))))))

(assert (=> d!419083 (= lt!497199 e!922002)))

(declare-fun c!238062 () Bool)

(assert (=> d!419083 (= c!238062 ((_ is Nil!14990) lt!496946))))

(assert (=> d!419083 (= (++!4033 lt!496946 lt!496942) lt!497199)))

(declare-fun b!1445154 () Bool)

(assert (=> b!1445154 (= e!922002 lt!496942)))

(declare-fun b!1445156 () Bool)

(declare-fun res!654340 () Bool)

(assert (=> b!1445156 (=> (not res!654340) (not e!922001))))

(assert (=> b!1445156 (= res!654340 (= (size!12289 lt!497199) (+ (size!12289 lt!496946) (size!12289 lt!496942))))))

(declare-fun b!1445157 () Bool)

(assert (=> b!1445157 (= e!922001 (or (not (= lt!496942 Nil!14990)) (= lt!497199 lt!496946)))))

(assert (= (and d!419083 c!238062) b!1445154))

(assert (= (and d!419083 (not c!238062)) b!1445155))

(assert (= (and d!419083 res!654341) b!1445156))

(assert (= (and b!1445156 res!654340) b!1445157))

(declare-fun m!1664683 () Bool)

(assert (=> b!1445155 m!1664683))

(declare-fun m!1664685 () Bool)

(assert (=> d!419083 m!1664685))

(declare-fun m!1664687 () Bool)

(assert (=> d!419083 m!1664687))

(declare-fun m!1664689 () Bool)

(assert (=> d!419083 m!1664689))

(declare-fun m!1664691 () Bool)

(assert (=> b!1445156 m!1664691))

(declare-fun m!1664693 () Bool)

(assert (=> b!1445156 m!1664693))

(declare-fun m!1664695 () Bool)

(assert (=> b!1445156 m!1664695))

(assert (=> b!1444997 d!419083))

(declare-fun d!419085 () Bool)

(declare-fun e!922004 () Bool)

(assert (=> d!419085 e!922004))

(declare-fun res!654342 () Bool)

(assert (=> d!419085 (=> (not res!654342) (not e!922004))))

(assert (=> d!419085 (= res!654342 (= (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) (print!1075 Lexer!2292 (seqFromList!1704 lt!496941))))) lt!496941))))

(declare-fun lt!497203 () Unit!23591)

(declare-fun e!922003 () Unit!23591)

(assert (=> d!419085 (= lt!497203 e!922003)))

(declare-fun c!238063 () Bool)

(assert (=> d!419085 (= c!238063 (or ((_ is Nil!14992) lt!496941) ((_ is Nil!14992) (t!130177 lt!496941))))))

(assert (=> d!419085 (not (isEmpty!9342 (rules!11498 thiss!10022)))))

(assert (=> d!419085 (= (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 thiss!10022) lt!496941) lt!497203)))

(declare-fun b!1445158 () Bool)

(declare-fun Unit!23637 () Unit!23591)

(assert (=> b!1445158 (= e!922003 Unit!23637)))

(declare-fun b!1445159 () Bool)

(declare-fun Unit!23638 () Unit!23591)

(assert (=> b!1445159 (= e!922003 Unit!23638)))

(declare-fun lt!497210 () BalanceConc!10132)

(assert (=> b!1445159 (= lt!497210 (print!1075 Lexer!2292 (seqFromList!1704 lt!496941)))))

(declare-fun lt!497223 () BalanceConc!10132)

(assert (=> b!1445159 (= lt!497223 (print!1075 Lexer!2292 (seqFromList!1704 (t!130177 lt!496941))))))

(declare-fun lt!497206 () tuple2!14160)

(assert (=> b!1445159 (= lt!497206 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) lt!497223))))

(declare-fun lt!497216 () List!15056)

(assert (=> b!1445159 (= lt!497216 (list!5972 (charsOf!1521 (h!20393 lt!496941))))))

(declare-fun lt!497215 () List!15056)

(assert (=> b!1445159 (= lt!497215 (list!5972 lt!497223))))

(declare-fun lt!497219 () Unit!23591)

(assert (=> b!1445159 (= lt!497219 (lemmaConcatTwoListThenFirstIsPrefix!762 lt!497216 lt!497215))))

(assert (=> b!1445159 (isPrefix!1197 lt!497216 (++!4033 lt!497216 lt!497215))))

(declare-fun lt!497212 () Unit!23591)

(assert (=> b!1445159 (= lt!497212 lt!497219)))

(declare-fun lt!497211 () Unit!23591)

(assert (=> b!1445159 (= lt!497211 (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 thiss!10022) (t!130177 lt!496941)))))

(declare-fun lt!497222 () Unit!23591)

(assert (=> b!1445159 (= lt!497222 (seqFromListBHdTlConstructive!91 (h!20393 (t!130177 lt!496941)) (t!130177 (t!130177 lt!496941)) (_1!7966 lt!497206)))))

(assert (=> b!1445159 (= (list!5973 (_1!7966 lt!497206)) (list!5973 (prepend!415 (seqFromList!1704 (t!130177 (t!130177 lt!496941))) (h!20393 (t!130177 lt!496941)))))))

(declare-fun lt!497213 () Unit!23591)

(assert (=> b!1445159 (= lt!497213 lt!497222)))

(declare-fun lt!497224 () Option!2861)

(assert (=> b!1445159 (= lt!497224 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 lt!497210)))))

(assert (=> b!1445159 (= (print!1075 Lexer!2292 (singletonSeq!1238 (h!20393 lt!496941))) (printTailRec!685 Lexer!2292 (singletonSeq!1238 (h!20393 lt!496941)) 0 (BalanceConc!10133 Empty!5096)))))

(declare-fun lt!497225 () Unit!23591)

(declare-fun Unit!23639 () Unit!23591)

(assert (=> b!1445159 (= lt!497225 Unit!23639)))

(declare-fun lt!497207 () Unit!23591)

(assert (=> b!1445159 (= lt!497207 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!235 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 lt!496941))) (list!5972 lt!497223)))))

(assert (=> b!1445159 (= (list!5972 (charsOf!1521 (h!20393 lt!496941))) (originalCharacters!3497 (h!20393 lt!496941)))))

(declare-fun lt!497200 () Unit!23591)

(declare-fun Unit!23640 () Unit!23591)

(assert (=> b!1445159 (= lt!497200 Unit!23640)))

(assert (=> b!1445159 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496941))) 0))) (Cons!14990 (head!2929 (originalCharacters!3497 (h!20393 (t!130177 lt!496941)))) Nil!14990))))

(declare-fun lt!497204 () Unit!23591)

(declare-fun Unit!23641 () Unit!23591)

(assert (=> b!1445159 (= lt!497204 Unit!23641)))

(assert (=> b!1445159 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496941))) 0))) (Cons!14990 (head!2929 (list!5972 lt!497223)) Nil!14990))))

(declare-fun lt!497202 () Unit!23591)

(declare-fun Unit!23642 () Unit!23591)

(assert (=> b!1445159 (= lt!497202 Unit!23642)))

(assert (=> b!1445159 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496941))) 0))) (Cons!14990 (head!2930 lt!497223) Nil!14990))))

(declare-fun lt!497220 () Unit!23591)

(declare-fun Unit!23643 () Unit!23591)

(assert (=> b!1445159 (= lt!497220 Unit!23643)))

(assert (=> b!1445159 (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (originalCharacters!3497 (h!20393 lt!496941))))))

(declare-fun lt!497201 () Unit!23591)

(declare-fun Unit!23644 () Unit!23591)

(assert (=> b!1445159 (= lt!497201 Unit!23644)))

(assert (=> b!1445159 (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 lt!496941)))))))

(declare-fun lt!497221 () Unit!23591)

(declare-fun Unit!23645 () Unit!23591)

(assert (=> b!1445159 (= lt!497221 Unit!23645)))

(declare-fun lt!497218 () Unit!23591)

(declare-fun Unit!23646 () Unit!23591)

(assert (=> b!1445159 (= lt!497218 Unit!23646)))

(assert (=> b!1445159 (= (_1!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 lt!496941)))))) (h!20393 lt!496941))))

(declare-fun lt!497217 () Unit!23591)

(declare-fun Unit!23647 () Unit!23591)

(assert (=> b!1445159 (= lt!497217 Unit!23647)))

(assert (=> b!1445159 (isEmpty!9341 (_2!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 lt!496941)))))))))

(declare-fun lt!497205 () Unit!23591)

(declare-fun Unit!23648 () Unit!23591)

(assert (=> b!1445159 (= lt!497205 Unit!23648)))

(assert (=> b!1445159 (matchR!1823 (regex!2635 (rule!4406 (h!20393 lt!496941))) (list!5972 (charsOf!1521 (h!20393 lt!496941))))))

(declare-fun lt!497214 () Unit!23591)

(declare-fun Unit!23649 () Unit!23591)

(assert (=> b!1445159 (= lt!497214 Unit!23649)))

(assert (=> b!1445159 (= (rule!4406 (h!20393 lt!496941)) (rule!4406 (h!20393 lt!496941)))))

(declare-fun lt!497209 () Unit!23591)

(declare-fun Unit!23650 () Unit!23591)

(assert (=> b!1445159 (= lt!497209 Unit!23650)))

(declare-fun lt!497208 () Unit!23591)

(assert (=> b!1445159 (= lt!497208 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!33 Lexer!2292 (rules!11498 thiss!10022) (h!20393 lt!496941) (rule!4406 (h!20393 lt!496941)) (list!5972 lt!497223)))))

(declare-fun b!1445160 () Bool)

(assert (=> b!1445160 (= e!922004 (isEmpty!9343 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) (print!1075 Lexer!2292 (seqFromList!1704 lt!496941))))))))

(assert (= (and d!419085 c!238063) b!1445158))

(assert (= (and d!419085 (not c!238063)) b!1445159))

(assert (= (and d!419085 res!654342) b!1445160))

(declare-fun m!1664697 () Bool)

(assert (=> d!419085 m!1664697))

(declare-fun m!1664699 () Bool)

(assert (=> d!419085 m!1664699))

(declare-fun m!1664701 () Bool)

(assert (=> d!419085 m!1664701))

(declare-fun m!1664703 () Bool)

(assert (=> d!419085 m!1664703))

(declare-fun m!1664705 () Bool)

(assert (=> d!419085 m!1664705))

(assert (=> d!419085 m!1664703))

(assert (=> d!419085 m!1664699))

(declare-fun m!1664707 () Bool)

(assert (=> b!1445159 m!1664707))

(declare-fun m!1664709 () Bool)

(assert (=> b!1445159 m!1664709))

(declare-fun m!1664711 () Bool)

(assert (=> b!1445159 m!1664711))

(declare-fun m!1664713 () Bool)

(assert (=> b!1445159 m!1664713))

(declare-fun m!1664715 () Bool)

(assert (=> b!1445159 m!1664715))

(declare-fun m!1664717 () Bool)

(assert (=> b!1445159 m!1664717))

(declare-fun m!1664719 () Bool)

(assert (=> b!1445159 m!1664719))

(declare-fun m!1664721 () Bool)

(assert (=> b!1445159 m!1664721))

(declare-fun m!1664723 () Bool)

(assert (=> b!1445159 m!1664723))

(declare-fun m!1664725 () Bool)

(assert (=> b!1445159 m!1664725))

(declare-fun m!1664727 () Bool)

(assert (=> b!1445159 m!1664727))

(declare-fun m!1664729 () Bool)

(assert (=> b!1445159 m!1664729))

(declare-fun m!1664731 () Bool)

(assert (=> b!1445159 m!1664731))

(declare-fun m!1664733 () Bool)

(assert (=> b!1445159 m!1664733))

(declare-fun m!1664735 () Bool)

(assert (=> b!1445159 m!1664735))

(assert (=> b!1445159 m!1664677))

(declare-fun m!1664737 () Bool)

(assert (=> b!1445159 m!1664737))

(assert (=> b!1445159 m!1664715))

(declare-fun m!1664739 () Bool)

(assert (=> b!1445159 m!1664739))

(declare-fun m!1664741 () Bool)

(assert (=> b!1445159 m!1664741))

(declare-fun m!1664743 () Bool)

(assert (=> b!1445159 m!1664743))

(assert (=> b!1445159 m!1664707))

(assert (=> b!1445159 m!1664719))

(declare-fun m!1664749 () Bool)

(assert (=> b!1445159 m!1664749))

(declare-fun m!1664753 () Bool)

(assert (=> b!1445159 m!1664753))

(declare-fun m!1664755 () Bool)

(assert (=> b!1445159 m!1664755))

(assert (=> b!1445159 m!1664733))

(assert (=> b!1445159 m!1664707))

(declare-fun m!1664757 () Bool)

(assert (=> b!1445159 m!1664757))

(declare-fun m!1664759 () Bool)

(assert (=> b!1445159 m!1664759))

(declare-fun m!1664761 () Bool)

(assert (=> b!1445159 m!1664761))

(assert (=> b!1445159 m!1664717))

(declare-fun m!1664763 () Bool)

(assert (=> b!1445159 m!1664763))

(assert (=> b!1445159 m!1664677))

(assert (=> b!1445159 m!1664727))

(declare-fun m!1664765 () Bool)

(assert (=> b!1445159 m!1664765))

(declare-fun m!1664769 () Bool)

(assert (=> b!1445159 m!1664769))

(declare-fun m!1664773 () Bool)

(assert (=> b!1445159 m!1664773))

(assert (=> b!1445159 m!1664703))

(assert (=> b!1445159 m!1664753))

(assert (=> b!1445159 m!1664711))

(assert (=> b!1445159 m!1664723))

(assert (=> b!1445159 m!1664727))

(assert (=> b!1445159 m!1664703))

(assert (=> b!1445159 m!1664699))

(assert (=> b!1445159 m!1664677))

(assert (=> b!1445159 m!1664741))

(assert (=> b!1445159 m!1664675))

(declare-fun m!1664779 () Bool)

(assert (=> b!1445159 m!1664779))

(assert (=> b!1445159 m!1664741))

(declare-fun m!1664781 () Bool)

(assert (=> b!1445159 m!1664781))

(assert (=> b!1445159 m!1664735))

(declare-fun m!1664783 () Bool)

(assert (=> b!1445159 m!1664783))

(assert (=> b!1445159 m!1664783))

(declare-fun m!1664785 () Bool)

(assert (=> b!1445159 m!1664785))

(assert (=> b!1445159 m!1664675))

(assert (=> b!1445159 m!1664677))

(assert (=> b!1445159 m!1664727))

(declare-fun m!1664787 () Bool)

(assert (=> b!1445159 m!1664787))

(assert (=> b!1445160 m!1664703))

(assert (=> b!1445160 m!1664703))

(assert (=> b!1445160 m!1664699))

(assert (=> b!1445160 m!1664699))

(assert (=> b!1445160 m!1664701))

(declare-fun m!1664791 () Bool)

(assert (=> b!1445160 m!1664791))

(assert (=> b!1444997 d!419085))

(declare-fun d!419093 () Bool)

(declare-fun lt!497232 () BalanceConc!10132)

(assert (=> d!419093 (= (list!5972 lt!497232) (printList!713 Lexer!2292 (list!5973 (tokens!2014 other!32))))))

(assert (=> d!419093 (= lt!497232 (printTailRec!685 Lexer!2292 (tokens!2014 other!32) 0 (BalanceConc!10133 Empty!5096)))))

(assert (=> d!419093 (= (print!1075 Lexer!2292 (tokens!2014 other!32)) lt!497232)))

(declare-fun bs!342137 () Bool)

(assert (= bs!342137 d!419093))

(declare-fun m!1664805 () Bool)

(assert (=> bs!342137 m!1664805))

(assert (=> bs!342137 m!1664099))

(assert (=> bs!342137 m!1664099))

(declare-fun m!1664807 () Bool)

(assert (=> bs!342137 m!1664807))

(assert (=> bs!342137 m!1664123))

(assert (=> b!1444997 d!419093))

(declare-fun d!419099 () Bool)

(declare-fun c!238065 () Bool)

(assert (=> d!419099 (= c!238065 ((_ is Cons!14992) lt!496934))))

(declare-fun e!922011 () List!15056)

(assert (=> d!419099 (= (printList!713 Lexer!2292 lt!496934) e!922011)))

(declare-fun b!1445177 () Bool)

(assert (=> b!1445177 (= e!922011 (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496934))) (printList!713 Lexer!2292 (t!130177 lt!496934))))))

(declare-fun b!1445178 () Bool)

(assert (=> b!1445178 (= e!922011 Nil!14990)))

(assert (= (and d!419099 c!238065) b!1445177))

(assert (= (and d!419099 (not c!238065)) b!1445178))

(declare-fun m!1664809 () Bool)

(assert (=> b!1445177 m!1664809))

(assert (=> b!1445177 m!1664809))

(declare-fun m!1664811 () Bool)

(assert (=> b!1445177 m!1664811))

(declare-fun m!1664813 () Bool)

(assert (=> b!1445177 m!1664813))

(assert (=> b!1445177 m!1664811))

(assert (=> b!1445177 m!1664813))

(declare-fun m!1664815 () Bool)

(assert (=> b!1445177 m!1664815))

(assert (=> b!1444997 d!419099))

(declare-fun d!419101 () Bool)

(assert (=> d!419101 (= (printList!713 Lexer!2292 (++!4034 lt!496941 Nil!14992)) (++!4033 (printList!713 Lexer!2292 lt!496941) (printList!713 Lexer!2292 Nil!14992)))))

(declare-fun lt!497235 () Unit!23591)

(declare-fun choose!8909 (LexerInterface!2294 List!15058 List!15058) Unit!23591)

(assert (=> d!419101 (= lt!497235 (choose!8909 Lexer!2292 lt!496941 Nil!14992))))

(assert (=> d!419101 (= (lemmaPrintConcatSameAsConcatPrint!72 Lexer!2292 lt!496941 Nil!14992) lt!497235)))

(declare-fun bs!342138 () Bool)

(assert (= bs!342138 d!419101))

(assert (=> bs!342138 m!1664087))

(assert (=> bs!342138 m!1664073))

(assert (=> bs!342138 m!1664091))

(declare-fun m!1664817 () Bool)

(assert (=> bs!342138 m!1664817))

(declare-fun m!1664819 () Bool)

(assert (=> bs!342138 m!1664819))

(assert (=> bs!342138 m!1664091))

(assert (=> bs!342138 m!1664087))

(assert (=> bs!342138 m!1664073))

(declare-fun m!1664821 () Bool)

(assert (=> bs!342138 m!1664821))

(assert (=> b!1444997 d!419101))

(declare-fun d!419103 () Bool)

(declare-fun lt!497236 () BalanceConc!10132)

(assert (=> d!419103 (= (list!5972 lt!497236) (printList!713 Lexer!2292 (list!5973 (tokens!2014 thiss!10022))))))

(assert (=> d!419103 (= lt!497236 (printTailRec!685 Lexer!2292 (tokens!2014 thiss!10022) 0 (BalanceConc!10133 Empty!5096)))))

(assert (=> d!419103 (= (print!1075 Lexer!2292 (tokens!2014 thiss!10022)) lt!497236)))

(declare-fun bs!342139 () Bool)

(assert (= bs!342139 d!419103))

(declare-fun m!1664823 () Bool)

(assert (=> bs!342139 m!1664823))

(assert (=> bs!342139 m!1664083))

(assert (=> bs!342139 m!1664083))

(declare-fun m!1664825 () Bool)

(assert (=> bs!342139 m!1664825))

(declare-fun m!1664827 () Bool)

(assert (=> bs!342139 m!1664827))

(assert (=> b!1444997 d!419103))

(declare-fun d!419105 () Bool)

(declare-fun e!922012 () Bool)

(assert (=> d!419105 e!922012))

(declare-fun res!654357 () Bool)

(assert (=> d!419105 (=> (not res!654357) (not e!922012))))

(declare-fun lt!497237 () BalanceConc!10132)

(assert (=> d!419105 (= res!654357 (= (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) lt!497237))) (list!5973 (tokens!2014 thiss!10022))))))

(assert (=> d!419105 (= lt!497237 (print!1075 Lexer!2292 (tokens!2014 thiss!10022)))))

(declare-fun lt!497238 () Unit!23591)

(assert (=> d!419105 (= lt!497238 (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 thiss!10022) (list!5973 (tokens!2014 thiss!10022))))))

(assert (=> d!419105 (= (print!1074 thiss!10022) lt!497237)))

(declare-fun b!1445179 () Bool)

(assert (=> b!1445179 (= e!922012 (isEmpty!9341 (list!5972 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) lt!497237)))))))

(assert (= (and d!419105 res!654357) b!1445179))

(assert (=> d!419105 m!1664083))

(declare-fun m!1664829 () Bool)

(assert (=> d!419105 m!1664829))

(assert (=> d!419105 m!1664095))

(declare-fun m!1664831 () Bool)

(assert (=> d!419105 m!1664831))

(declare-fun m!1664833 () Bool)

(assert (=> d!419105 m!1664833))

(assert (=> d!419105 m!1664083))

(assert (=> b!1445179 m!1664833))

(declare-fun m!1664835 () Bool)

(assert (=> b!1445179 m!1664835))

(assert (=> b!1445179 m!1664835))

(declare-fun m!1664837 () Bool)

(assert (=> b!1445179 m!1664837))

(assert (=> b!1444997 d!419105))

(declare-fun d!419107 () Bool)

(assert (=> d!419107 (= (get!4583 lt!496940) (v!22398 lt!496940))))

(assert (=> b!1444995 d!419107))

(declare-fun d!419109 () Bool)

(declare-fun res!654372 () Bool)

(declare-fun e!922046 () Bool)

(assert (=> d!419109 (=> (not res!654372) (not e!922046))))

(assert (=> d!419109 (= res!654372 (not (isEmpty!9342 (rules!11498 thiss!10022))))))

(assert (=> d!419109 (= (inv!19952 thiss!10022) e!922046)))

(declare-fun b!1445227 () Bool)

(declare-fun res!654373 () Bool)

(assert (=> b!1445227 (=> (not res!654373) (not e!922046))))

(declare-fun rulesInvariant!2132 (LexerInterface!2294 List!15059) Bool)

(assert (=> b!1445227 (= res!654373 (rulesInvariant!2132 Lexer!2292 (rules!11498 thiss!10022)))))

(declare-fun b!1445228 () Bool)

(declare-fun res!654374 () Bool)

(assert (=> b!1445228 (=> (not res!654374) (not e!922046))))

(declare-fun rulesProduceEachTokenIndividually!850 (LexerInterface!2294 List!15059 BalanceConc!10134) Bool)

(assert (=> b!1445228 (= res!654374 (rulesProduceEachTokenIndividually!850 Lexer!2292 (rules!11498 thiss!10022) (tokens!2014 thiss!10022)))))

(declare-fun b!1445229 () Bool)

(declare-fun separableTokens!234 (LexerInterface!2294 BalanceConc!10134 List!15059) Bool)

(assert (=> b!1445229 (= e!922046 (separableTokens!234 Lexer!2292 (tokens!2014 thiss!10022) (rules!11498 thiss!10022)))))

(assert (= (and d!419109 res!654372) b!1445227))

(assert (= (and b!1445227 res!654373) b!1445228))

(assert (= (and b!1445228 res!654374) b!1445229))

(assert (=> d!419109 m!1664697))

(declare-fun m!1664865 () Bool)

(assert (=> b!1445227 m!1664865))

(declare-fun m!1664867 () Bool)

(assert (=> b!1445228 m!1664867))

(declare-fun m!1664869 () Bool)

(assert (=> b!1445229 m!1664869))

(assert (=> start!134088 d!419109))

(declare-fun d!419115 () Bool)

(declare-fun res!654375 () Bool)

(declare-fun e!922047 () Bool)

(assert (=> d!419115 (=> (not res!654375) (not e!922047))))

(assert (=> d!419115 (= res!654375 (not (isEmpty!9342 (rules!11498 other!32))))))

(assert (=> d!419115 (= (inv!19952 other!32) e!922047)))

(declare-fun b!1445230 () Bool)

(declare-fun res!654376 () Bool)

(assert (=> b!1445230 (=> (not res!654376) (not e!922047))))

(assert (=> b!1445230 (= res!654376 (rulesInvariant!2132 Lexer!2292 (rules!11498 other!32)))))

(declare-fun b!1445231 () Bool)

(declare-fun res!654377 () Bool)

(assert (=> b!1445231 (=> (not res!654377) (not e!922047))))

(assert (=> b!1445231 (= res!654377 (rulesProduceEachTokenIndividually!850 Lexer!2292 (rules!11498 other!32) (tokens!2014 other!32)))))

(declare-fun b!1445232 () Bool)

(assert (=> b!1445232 (= e!922047 (separableTokens!234 Lexer!2292 (tokens!2014 other!32) (rules!11498 other!32)))))

(assert (= (and d!419115 res!654375) b!1445230))

(assert (= (and b!1445230 res!654376) b!1445231))

(assert (= (and b!1445231 res!654377) b!1445232))

(assert (=> d!419115 m!1664597))

(declare-fun m!1664871 () Bool)

(assert (=> b!1445230 m!1664871))

(declare-fun m!1664873 () Bool)

(assert (=> b!1445231 m!1664873))

(declare-fun m!1664875 () Bool)

(assert (=> b!1445232 m!1664875))

(assert (=> start!134088 d!419115))

(declare-fun d!419117 () Bool)

(declare-fun lt!497253 () BalanceConc!10132)

(declare-fun printListTailRec!285 (LexerInterface!2294 List!15058 List!15056) List!15056)

(declare-fun dropList!470 (BalanceConc!10134 Int) List!15058)

(assert (=> d!419117 (= (list!5972 lt!497253) (printListTailRec!285 Lexer!2292 (dropList!470 (tokens!2014 other!32) 0) (list!5972 (BalanceConc!10133 Empty!5096))))))

(declare-fun e!922053 () BalanceConc!10132)

(assert (=> d!419117 (= lt!497253 e!922053)))

(declare-fun c!238068 () Bool)

(declare-fun size!12291 (BalanceConc!10134) Int)

(assert (=> d!419117 (= c!238068 (>= 0 (size!12291 (tokens!2014 other!32))))))

(declare-fun e!922052 () Bool)

(assert (=> d!419117 e!922052))

(declare-fun res!654380 () Bool)

(assert (=> d!419117 (=> (not res!654380) (not e!922052))))

(assert (=> d!419117 (= res!654380 (>= 0 0))))

(assert (=> d!419117 (= (printTailRec!685 Lexer!2292 (tokens!2014 other!32) 0 (BalanceConc!10133 Empty!5096)) lt!497253)))

(declare-fun b!1445239 () Bool)

(assert (=> b!1445239 (= e!922052 (<= 0 (size!12291 (tokens!2014 other!32))))))

(declare-fun b!1445240 () Bool)

(assert (=> b!1445240 (= e!922053 (BalanceConc!10133 Empty!5096))))

(declare-fun b!1445241 () Bool)

(declare-fun ++!4036 (BalanceConc!10132 BalanceConc!10132) BalanceConc!10132)

(declare-fun apply!3865 (BalanceConc!10134 Int) Token!4932)

(assert (=> b!1445241 (= e!922053 (printTailRec!685 Lexer!2292 (tokens!2014 other!32) (+ 0 1) (++!4036 (BalanceConc!10133 Empty!5096) (charsOf!1521 (apply!3865 (tokens!2014 other!32) 0)))))))

(declare-fun lt!497254 () List!15058)

(assert (=> b!1445241 (= lt!497254 (list!5973 (tokens!2014 other!32)))))

(declare-fun lt!497258 () Unit!23591)

(declare-fun lemmaDropApply!488 (List!15058 Int) Unit!23591)

(assert (=> b!1445241 (= lt!497258 (lemmaDropApply!488 lt!497254 0))))

(declare-fun head!2931 (List!15058) Token!4932)

(declare-fun drop!736 (List!15058 Int) List!15058)

(declare-fun apply!3866 (List!15058 Int) Token!4932)

(assert (=> b!1445241 (= (head!2931 (drop!736 lt!497254 0)) (apply!3866 lt!497254 0))))

(declare-fun lt!497256 () Unit!23591)

(assert (=> b!1445241 (= lt!497256 lt!497258)))

(declare-fun lt!497257 () List!15058)

(assert (=> b!1445241 (= lt!497257 (list!5973 (tokens!2014 other!32)))))

(declare-fun lt!497255 () Unit!23591)

(declare-fun lemmaDropTail!468 (List!15058 Int) Unit!23591)

(assert (=> b!1445241 (= lt!497255 (lemmaDropTail!468 lt!497257 0))))

(declare-fun tail!2162 (List!15058) List!15058)

(assert (=> b!1445241 (= (tail!2162 (drop!736 lt!497257 0)) (drop!736 lt!497257 (+ 0 1)))))

(declare-fun lt!497259 () Unit!23591)

(assert (=> b!1445241 (= lt!497259 lt!497255)))

(assert (= (and d!419117 res!654380) b!1445239))

(assert (= (and d!419117 c!238068) b!1445240))

(assert (= (and d!419117 (not c!238068)) b!1445241))

(declare-fun m!1664877 () Bool)

(assert (=> d!419117 m!1664877))

(declare-fun m!1664879 () Bool)

(assert (=> d!419117 m!1664879))

(declare-fun m!1664881 () Bool)

(assert (=> d!419117 m!1664881))

(assert (=> d!419117 m!1664877))

(assert (=> d!419117 m!1664879))

(declare-fun m!1664883 () Bool)

(assert (=> d!419117 m!1664883))

(declare-fun m!1664885 () Bool)

(assert (=> d!419117 m!1664885))

(assert (=> b!1445239 m!1664883))

(assert (=> b!1445241 m!1664099))

(declare-fun m!1664887 () Bool)

(assert (=> b!1445241 m!1664887))

(declare-fun m!1664889 () Bool)

(assert (=> b!1445241 m!1664889))

(declare-fun m!1664891 () Bool)

(assert (=> b!1445241 m!1664891))

(declare-fun m!1664893 () Bool)

(assert (=> b!1445241 m!1664893))

(declare-fun m!1664895 () Bool)

(assert (=> b!1445241 m!1664895))

(declare-fun m!1664897 () Bool)

(assert (=> b!1445241 m!1664897))

(declare-fun m!1664899 () Bool)

(assert (=> b!1445241 m!1664899))

(declare-fun m!1664901 () Bool)

(assert (=> b!1445241 m!1664901))

(assert (=> b!1445241 m!1664893))

(declare-fun m!1664903 () Bool)

(assert (=> b!1445241 m!1664903))

(assert (=> b!1445241 m!1664895))

(assert (=> b!1445241 m!1664891))

(declare-fun m!1664905 () Bool)

(assert (=> b!1445241 m!1664905))

(declare-fun m!1664907 () Bool)

(assert (=> b!1445241 m!1664907))

(assert (=> b!1445241 m!1664907))

(declare-fun m!1664909 () Bool)

(assert (=> b!1445241 m!1664909))

(assert (=> b!1445241 m!1664887))

(assert (=> b!1444996 d!419117))

(declare-fun d!419119 () Bool)

(declare-fun isBalanced!1518 (Conc!5097) Bool)

(assert (=> d!419119 (= (inv!19951 (tokens!2014 thiss!10022)) (isBalanced!1518 (c!238014 (tokens!2014 thiss!10022))))))

(declare-fun bs!342141 () Bool)

(assert (= bs!342141 d!419119))

(declare-fun m!1664911 () Bool)

(assert (=> bs!342141 m!1664911))

(assert (=> b!1444993 d!419119))

(declare-fun d!419121 () Bool)

(assert (=> d!419121 (= (inv!19951 (tokens!2014 other!32)) (isBalanced!1518 (c!238014 (tokens!2014 other!32))))))

(declare-fun bs!342142 () Bool)

(assert (= bs!342142 d!419121))

(declare-fun m!1664913 () Bool)

(assert (=> bs!342142 m!1664913))

(assert (=> b!1444991 d!419121))

(declare-fun d!419123 () Bool)

(declare-fun lt!497262 () Bool)

(declare-fun isEmpty!9344 (List!15058) Bool)

(assert (=> d!419123 (= lt!497262 (isEmpty!9344 (list!5973 (tokens!2014 other!32))))))

(declare-fun isEmpty!9345 (Conc!5097) Bool)

(assert (=> d!419123 (= lt!497262 (isEmpty!9345 (c!238014 (tokens!2014 other!32))))))

(assert (=> d!419123 (= (isEmpty!9334 (tokens!2014 other!32)) lt!497262)))

(declare-fun bs!342143 () Bool)

(assert (= bs!342143 d!419123))

(assert (=> bs!342143 m!1664099))

(assert (=> bs!342143 m!1664099))

(declare-fun m!1664915 () Bool)

(assert (=> bs!342143 m!1664915))

(declare-fun m!1664917 () Bool)

(assert (=> bs!342143 m!1664917))

(assert (=> b!1444992 d!419123))

(declare-fun d!419125 () Bool)

(declare-fun e!922056 () Bool)

(assert (=> d!419125 e!922056))

(declare-fun res!654385 () Bool)

(assert (=> d!419125 (=> (not res!654385) (not e!922056))))

(assert (=> d!419125 (= res!654385 (rulesInvariant!2132 Lexer!2292 (rules!11498 thiss!10022)))))

(declare-fun Unit!23651 () Unit!23591)

(assert (=> d!419125 (= (lemmaInvariant!331 thiss!10022) Unit!23651)))

(declare-fun b!1445246 () Bool)

(declare-fun res!654386 () Bool)

(assert (=> b!1445246 (=> (not res!654386) (not e!922056))))

(assert (=> b!1445246 (= res!654386 (rulesProduceEachTokenIndividually!850 Lexer!2292 (rules!11498 thiss!10022) (tokens!2014 thiss!10022)))))

(declare-fun b!1445247 () Bool)

(assert (=> b!1445247 (= e!922056 (separableTokens!234 Lexer!2292 (tokens!2014 thiss!10022) (rules!11498 thiss!10022)))))

(assert (= (and d!419125 res!654385) b!1445246))

(assert (= (and b!1445246 res!654386) b!1445247))

(assert (=> d!419125 m!1664865))

(assert (=> b!1445246 m!1664867))

(assert (=> b!1445247 m!1664869))

(assert (=> b!1444992 d!419125))

(declare-fun d!419127 () Bool)

(declare-fun e!922057 () Bool)

(assert (=> d!419127 e!922057))

(declare-fun res!654387 () Bool)

(assert (=> d!419127 (=> (not res!654387) (not e!922057))))

(assert (=> d!419127 (= res!654387 (rulesInvariant!2132 Lexer!2292 (rules!11498 other!32)))))

(declare-fun Unit!23652 () Unit!23591)

(assert (=> d!419127 (= (lemmaInvariant!331 other!32) Unit!23652)))

(declare-fun b!1445248 () Bool)

(declare-fun res!654388 () Bool)

(assert (=> b!1445248 (=> (not res!654388) (not e!922057))))

(assert (=> b!1445248 (= res!654388 (rulesProduceEachTokenIndividually!850 Lexer!2292 (rules!11498 other!32) (tokens!2014 other!32)))))

(declare-fun b!1445249 () Bool)

(assert (=> b!1445249 (= e!922057 (separableTokens!234 Lexer!2292 (tokens!2014 other!32) (rules!11498 other!32)))))

(assert (= (and d!419127 res!654387) b!1445248))

(assert (= (and b!1445248 res!654388) b!1445249))

(assert (=> d!419127 m!1664871))

(assert (=> b!1445248 m!1664873))

(assert (=> b!1445249 m!1664875))

(assert (=> b!1444992 d!419127))

(declare-fun tp!407785 () Bool)

(declare-fun e!922063 () Bool)

(declare-fun tp!407786 () Bool)

(declare-fun b!1445258 () Bool)

(assert (=> b!1445258 (= e!922063 (and (inv!19950 (left!12765 (c!238014 (tokens!2014 other!32)))) tp!407785 (inv!19950 (right!13095 (c!238014 (tokens!2014 other!32)))) tp!407786))))

(declare-fun b!1445260 () Bool)

(declare-fun e!922062 () Bool)

(declare-fun tp!407784 () Bool)

(assert (=> b!1445260 (= e!922062 tp!407784)))

(declare-fun b!1445259 () Bool)

(declare-fun inv!19961 (IArray!10199) Bool)

(assert (=> b!1445259 (= e!922063 (and (inv!19961 (xs!7838 (c!238014 (tokens!2014 other!32)))) e!922062))))

(assert (=> b!1444987 (= tp!407743 (and (inv!19950 (c!238014 (tokens!2014 other!32))) e!922063))))

(assert (= (and b!1444987 ((_ is Node!5097) (c!238014 (tokens!2014 other!32)))) b!1445258))

(assert (= b!1445259 b!1445260))

(assert (= (and b!1444987 ((_ is Leaf!7616) (c!238014 (tokens!2014 other!32)))) b!1445259))

(declare-fun m!1664919 () Bool)

(assert (=> b!1445258 m!1664919))

(declare-fun m!1664921 () Bool)

(assert (=> b!1445258 m!1664921))

(declare-fun m!1664923 () Bool)

(assert (=> b!1445259 m!1664923))

(assert (=> b!1444987 m!1664119))

(declare-fun b!1445271 () Bool)

(declare-fun b_free!35807 () Bool)

(declare-fun b_next!36511 () Bool)

(assert (=> b!1445271 (= b_free!35807 (not b_next!36511))))

(declare-fun tp!407797 () Bool)

(declare-fun b_and!97831 () Bool)

(assert (=> b!1445271 (= tp!407797 b_and!97831)))

(declare-fun b_free!35809 () Bool)

(declare-fun b_next!36513 () Bool)

(assert (=> b!1445271 (= b_free!35809 (not b_next!36513))))

(declare-fun tb!78653 () Bool)

(declare-fun t!130184 () Bool)

(assert (=> (and b!1445271 (= (toChars!3801 (transformation!2635 (h!20394 (rules!11498 thiss!10022)))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943))))) t!130184) tb!78653))

(declare-fun b!1445276 () Bool)

(declare-fun e!922078 () Bool)

(declare-fun tp!407801 () Bool)

(declare-fun inv!19962 (Conc!5096) Bool)

(assert (=> b!1445276 (= e!922078 (and (inv!19962 (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))) (value!84745 (h!20393 lt!496943))))) tp!407801))))

(declare-fun result!95072 () Bool)

(declare-fun inv!19963 (BalanceConc!10132) Bool)

(assert (=> tb!78653 (= result!95072 (and (inv!19963 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))) (value!84745 (h!20393 lt!496943)))) e!922078))))

(assert (= tb!78653 b!1445276))

(declare-fun m!1664925 () Bool)

(assert (=> b!1445276 m!1664925))

(declare-fun m!1664927 () Bool)

(assert (=> tb!78653 m!1664927))

(assert (=> d!419021 t!130184))

(declare-fun tp!407798 () Bool)

(declare-fun b_and!97833 () Bool)

(assert (=> b!1445271 (= tp!407798 (and (=> t!130184 result!95072) b_and!97833))))

(declare-fun e!922074 () Bool)

(assert (=> b!1445271 (= e!922074 (and tp!407797 tp!407798))))

(declare-fun b!1445270 () Bool)

(declare-fun tp!407795 () Bool)

(declare-fun e!922072 () Bool)

(declare-fun inv!19946 (String!17881) Bool)

(declare-fun inv!19964 (TokenValueInjection!5110) Bool)

(assert (=> b!1445270 (= e!922072 (and tp!407795 (inv!19946 (tag!2899 (h!20394 (rules!11498 thiss!10022)))) (inv!19964 (transformation!2635 (h!20394 (rules!11498 thiss!10022)))) e!922074))))

(declare-fun b!1445269 () Bool)

(declare-fun e!922075 () Bool)

(declare-fun tp!407796 () Bool)

(assert (=> b!1445269 (= e!922075 (and e!922072 tp!407796))))

(assert (=> b!1444993 (= tp!407746 e!922075)))

(assert (= b!1445270 b!1445271))

(assert (= b!1445269 b!1445270))

(assert (= (and b!1444993 ((_ is Cons!14993) (rules!11498 thiss!10022))) b!1445269))

(declare-fun m!1664929 () Bool)

(assert (=> b!1445270 m!1664929))

(declare-fun m!1664931 () Bool)

(assert (=> b!1445270 m!1664931))

(declare-fun b!1445277 () Bool)

(declare-fun e!922080 () Bool)

(declare-fun tp!407803 () Bool)

(declare-fun tp!407804 () Bool)

(assert (=> b!1445277 (= e!922080 (and (inv!19950 (left!12765 (c!238014 (tokens!2014 thiss!10022)))) tp!407803 (inv!19950 (right!13095 (c!238014 (tokens!2014 thiss!10022)))) tp!407804))))

(declare-fun b!1445279 () Bool)

(declare-fun e!922079 () Bool)

(declare-fun tp!407802 () Bool)

(assert (=> b!1445279 (= e!922079 tp!407802)))

(declare-fun b!1445278 () Bool)

(assert (=> b!1445278 (= e!922080 (and (inv!19961 (xs!7838 (c!238014 (tokens!2014 thiss!10022)))) e!922079))))

(assert (=> b!1444988 (= tp!407744 (and (inv!19950 (c!238014 (tokens!2014 thiss!10022))) e!922080))))

(assert (= (and b!1444988 ((_ is Node!5097) (c!238014 (tokens!2014 thiss!10022)))) b!1445277))

(assert (= b!1445278 b!1445279))

(assert (= (and b!1444988 ((_ is Leaf!7616) (c!238014 (tokens!2014 thiss!10022)))) b!1445278))

(declare-fun m!1664933 () Bool)

(assert (=> b!1445277 m!1664933))

(declare-fun m!1664935 () Bool)

(assert (=> b!1445277 m!1664935))

(declare-fun m!1664937 () Bool)

(assert (=> b!1445278 m!1664937))

(assert (=> b!1444988 m!1664125))

(declare-fun b!1445282 () Bool)

(declare-fun b_free!35811 () Bool)

(declare-fun b_next!36515 () Bool)

(assert (=> b!1445282 (= b_free!35811 (not b_next!36515))))

(declare-fun tp!407807 () Bool)

(declare-fun b_and!97835 () Bool)

(assert (=> b!1445282 (= tp!407807 b_and!97835)))

(declare-fun b_free!35813 () Bool)

(declare-fun b_next!36517 () Bool)

(assert (=> b!1445282 (= b_free!35813 (not b_next!36517))))

(declare-fun tb!78655 () Bool)

(declare-fun t!130186 () Bool)

(assert (=> (and b!1445282 (= (toChars!3801 (transformation!2635 (h!20394 (rules!11498 other!32)))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943))))) t!130186) tb!78655))

(declare-fun result!95076 () Bool)

(assert (= result!95076 result!95072))

(assert (=> d!419021 t!130186))

(declare-fun tp!407808 () Bool)

(declare-fun b_and!97837 () Bool)

(assert (=> b!1445282 (= tp!407808 (and (=> t!130186 result!95076) b_and!97837))))

(declare-fun e!922083 () Bool)

(assert (=> b!1445282 (= e!922083 (and tp!407807 tp!407808))))

(declare-fun b!1445281 () Bool)

(declare-fun tp!407805 () Bool)

(declare-fun e!922081 () Bool)

(assert (=> b!1445281 (= e!922081 (and tp!407805 (inv!19946 (tag!2899 (h!20394 (rules!11498 other!32)))) (inv!19964 (transformation!2635 (h!20394 (rules!11498 other!32)))) e!922083))))

(declare-fun b!1445280 () Bool)

(declare-fun e!922084 () Bool)

(declare-fun tp!407806 () Bool)

(assert (=> b!1445280 (= e!922084 (and e!922081 tp!407806))))

(assert (=> b!1444991 (= tp!407745 e!922084)))

(assert (= b!1445281 b!1445282))

(assert (= b!1445280 b!1445281))

(assert (= (and b!1444991 ((_ is Cons!14993) (rules!11498 other!32))) b!1445280))

(declare-fun m!1664939 () Bool)

(assert (=> b!1445281 m!1664939))

(declare-fun m!1664941 () Bool)

(assert (=> b!1445281 m!1664941))

(check-sat (not b!1445156) (not b!1445081) (not b!1445279) (not b!1445239) (not b_next!36513) (not b!1445039) (not d!419021) (not b!1445232) (not d!419003) (not d!419017) (not b!1445248) (not b!1445078) (not b!1445228) (not d!419119) (not b!1445281) (not b!1445068) (not d!419127) (not d!419117) (not d!419093) (not b!1445277) (not d!419121) (not b!1445160) b_and!97833 (not b!1445249) (not b!1445258) (not d!419035) (not b!1445270) (not d!419033) (not b!1444987) (not b!1445067) (not b!1445159) (not b!1445231) (not d!419125) (not b!1445278) (not b!1445079) (not b!1445070) (not tb!78653) (not d!419123) (not b_lambda!45147) (not b!1445179) b_and!97831 (not d!419001) (not d!419105) (not d!418985) (not b!1445057) (not d!419031) (not b!1445269) (not d!419115) (not b!1445276) (not b!1445151) (not b!1445073) (not b!1445280) (not b_next!36517) (not d!419027) (not b_next!36511) (not d!419085) (not d!418987) (not b!1445065) (not b!1445051) (not b!1445246) (not b!1445241) b_and!97835 (not d!419103) (not b!1445227) (not b_next!36515) (not b!1445260) b_and!97837 (not b!1444988) (not d!419007) (not b!1445229) (not b!1445230) (not d!419109) (not b!1445155) (not d!419101) (not b!1445259) (not b!1445075) (not b!1445050) (not d!419005) (not d!419025) (not b!1445247) (not b!1445038) (not b!1445083) (not d!419083) (not d!419019) (not b!1445072) (not b!1445152) (not b!1445150) (not d!418999) (not b!1445177) (not b!1445028))
(check-sat b_and!97833 b_and!97831 b_and!97837 (not b_next!36513) (not b_next!36517) (not b_next!36511) b_and!97835 (not b_next!36515))
(get-model)

(declare-fun b!1445367 () Bool)

(declare-fun e!922130 () List!15056)

(assert (=> b!1445367 (= e!922130 (Cons!14990 (h!20391 (t!130175 (list!5972 lt!496939))) (++!4033 (t!130175 (t!130175 (list!5972 lt!496939))) (list!5972 lt!496936))))))

(declare-fun d!419199 () Bool)

(declare-fun e!922129 () Bool)

(assert (=> d!419199 e!922129))

(declare-fun res!654425 () Bool)

(assert (=> d!419199 (=> (not res!654425) (not e!922129))))

(declare-fun lt!497293 () List!15056)

(assert (=> d!419199 (= res!654425 (= (content!2218 lt!497293) ((_ map or) (content!2218 (t!130175 (list!5972 lt!496939))) (content!2218 (list!5972 lt!496936)))))))

(assert (=> d!419199 (= lt!497293 e!922130)))

(declare-fun c!238094 () Bool)

(assert (=> d!419199 (= c!238094 ((_ is Nil!14990) (t!130175 (list!5972 lt!496939))))))

(assert (=> d!419199 (= (++!4033 (t!130175 (list!5972 lt!496939)) (list!5972 lt!496936)) lt!497293)))

(declare-fun b!1445366 () Bool)

(assert (=> b!1445366 (= e!922130 (list!5972 lt!496936))))

(declare-fun b!1445368 () Bool)

(declare-fun res!654424 () Bool)

(assert (=> b!1445368 (=> (not res!654424) (not e!922129))))

(assert (=> b!1445368 (= res!654424 (= (size!12289 lt!497293) (+ (size!12289 (t!130175 (list!5972 lt!496939))) (size!12289 (list!5972 lt!496936)))))))

(declare-fun b!1445369 () Bool)

(assert (=> b!1445369 (= e!922129 (or (not (= (list!5972 lt!496936) Nil!14990)) (= lt!497293 (t!130175 (list!5972 lt!496939)))))))

(assert (= (and d!419199 c!238094) b!1445366))

(assert (= (and d!419199 (not c!238094)) b!1445367))

(assert (= (and d!419199 res!654425) b!1445368))

(assert (= (and b!1445368 res!654424) b!1445369))

(assert (=> b!1445367 m!1664057))

(declare-fun m!1665097 () Bool)

(assert (=> b!1445367 m!1665097))

(declare-fun m!1665099 () Bool)

(assert (=> d!419199 m!1665099))

(declare-fun m!1665101 () Bool)

(assert (=> d!419199 m!1665101))

(assert (=> d!419199 m!1664057))

(assert (=> d!419199 m!1664207))

(declare-fun m!1665103 () Bool)

(assert (=> b!1445368 m!1665103))

(declare-fun m!1665105 () Bool)

(assert (=> b!1445368 m!1665105))

(assert (=> b!1445368 m!1664057))

(assert (=> b!1445368 m!1664213))

(assert (=> b!1445038 d!419199))

(declare-fun d!419201 () Bool)

(assert (=> d!419201 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496943))) 0))) (list!5976 (c!238012 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496943))) 0)))))))

(declare-fun bs!342152 () Bool)

(assert (= bs!342152 d!419201))

(declare-fun m!1665107 () Bool)

(assert (=> bs!342152 m!1665107))

(assert (=> b!1445150 d!419201))

(declare-fun d!419203 () Bool)

(declare-fun e!922135 () Bool)

(assert (=> d!419203 e!922135))

(declare-fun res!654436 () Bool)

(assert (=> d!419203 (=> (not res!654436) (not e!922135))))

(declare-fun lt!497298 () BalanceConc!10132)

(assert (=> d!419203 (= res!654436 (= (list!5972 lt!497298) (Cons!14990 (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496943))) 0) Nil!14990)))))

(declare-fun singleton!519 (C!8076) BalanceConc!10132)

(assert (=> d!419203 (= lt!497298 (singleton!519 (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496943))) 0)))))

(assert (=> d!419203 (= (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496943))) 0)) lt!497298)))

(declare-fun b!1445380 () Bool)

(declare-fun isBalanced!1520 (Conc!5096) Bool)

(assert (=> b!1445380 (= e!922135 (isBalanced!1520 (c!238012 lt!497298)))))

(assert (= (and d!419203 res!654436) b!1445380))

(declare-fun m!1665109 () Bool)

(assert (=> d!419203 m!1665109))

(assert (=> d!419203 m!1664633))

(declare-fun m!1665111 () Bool)

(assert (=> d!419203 m!1665111))

(declare-fun m!1665113 () Bool)

(assert (=> b!1445380 m!1665113))

(assert (=> b!1445150 d!419203))

(assert (=> b!1445150 d!419019))

(declare-fun d!419205 () Bool)

(declare-fun isEmpty!9346 (Option!2861) Bool)

(assert (=> d!419205 (= (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 lt!496943))))) (not (isEmpty!9346 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))))

(declare-fun bs!342153 () Bool)

(assert (= bs!342153 d!419205))

(assert (=> bs!342153 m!1664639))

(declare-fun m!1665115 () Bool)

(assert (=> bs!342153 m!1665115))

(assert (=> b!1445150 d!419205))

(declare-fun d!419207 () Bool)

(declare-fun lt!497299 () BalanceConc!10132)

(assert (=> d!419207 (= (list!5972 lt!497299) (printListTailRec!285 Lexer!2292 (dropList!470 (singletonSeq!1238 (h!20393 lt!496943)) 0) (list!5972 (BalanceConc!10133 Empty!5096))))))

(declare-fun e!922137 () BalanceConc!10132)

(assert (=> d!419207 (= lt!497299 e!922137)))

(declare-fun c!238098 () Bool)

(assert (=> d!419207 (= c!238098 (>= 0 (size!12291 (singletonSeq!1238 (h!20393 lt!496943)))))))

(declare-fun e!922136 () Bool)

(assert (=> d!419207 e!922136))

(declare-fun res!654437 () Bool)

(assert (=> d!419207 (=> (not res!654437) (not e!922136))))

(assert (=> d!419207 (= res!654437 (>= 0 0))))

(assert (=> d!419207 (= (printTailRec!685 Lexer!2292 (singletonSeq!1238 (h!20393 lt!496943)) 0 (BalanceConc!10133 Empty!5096)) lt!497299)))

(declare-fun b!1445381 () Bool)

(assert (=> b!1445381 (= e!922136 (<= 0 (size!12291 (singletonSeq!1238 (h!20393 lt!496943)))))))

(declare-fun b!1445382 () Bool)

(assert (=> b!1445382 (= e!922137 (BalanceConc!10133 Empty!5096))))

(declare-fun b!1445383 () Bool)

(assert (=> b!1445383 (= e!922137 (printTailRec!685 Lexer!2292 (singletonSeq!1238 (h!20393 lt!496943)) (+ 0 1) (++!4036 (BalanceConc!10133 Empty!5096) (charsOf!1521 (apply!3865 (singletonSeq!1238 (h!20393 lt!496943)) 0)))))))

(declare-fun lt!497300 () List!15058)

(assert (=> b!1445383 (= lt!497300 (list!5973 (singletonSeq!1238 (h!20393 lt!496943))))))

(declare-fun lt!497304 () Unit!23591)

(assert (=> b!1445383 (= lt!497304 (lemmaDropApply!488 lt!497300 0))))

(assert (=> b!1445383 (= (head!2931 (drop!736 lt!497300 0)) (apply!3866 lt!497300 0))))

(declare-fun lt!497302 () Unit!23591)

(assert (=> b!1445383 (= lt!497302 lt!497304)))

(declare-fun lt!497303 () List!15058)

(assert (=> b!1445383 (= lt!497303 (list!5973 (singletonSeq!1238 (h!20393 lt!496943))))))

(declare-fun lt!497301 () Unit!23591)

(assert (=> b!1445383 (= lt!497301 (lemmaDropTail!468 lt!497303 0))))

(assert (=> b!1445383 (= (tail!2162 (drop!736 lt!497303 0)) (drop!736 lt!497303 (+ 0 1)))))

(declare-fun lt!497305 () Unit!23591)

(assert (=> b!1445383 (= lt!497305 lt!497301)))

(assert (= (and d!419207 res!654437) b!1445381))

(assert (= (and d!419207 c!238098) b!1445382))

(assert (= (and d!419207 (not c!238098)) b!1445383))

(declare-fun m!1665117 () Bool)

(assert (=> d!419207 m!1665117))

(assert (=> d!419207 m!1664879))

(declare-fun m!1665119 () Bool)

(assert (=> d!419207 m!1665119))

(assert (=> d!419207 m!1664607))

(assert (=> d!419207 m!1665117))

(assert (=> d!419207 m!1664879))

(assert (=> d!419207 m!1664607))

(declare-fun m!1665121 () Bool)

(assert (=> d!419207 m!1665121))

(declare-fun m!1665123 () Bool)

(assert (=> d!419207 m!1665123))

(assert (=> b!1445381 m!1664607))

(assert (=> b!1445381 m!1665121))

(assert (=> b!1445383 m!1664607))

(declare-fun m!1665125 () Bool)

(assert (=> b!1445383 m!1665125))

(declare-fun m!1665127 () Bool)

(assert (=> b!1445383 m!1665127))

(declare-fun m!1665129 () Bool)

(assert (=> b!1445383 m!1665129))

(declare-fun m!1665131 () Bool)

(assert (=> b!1445383 m!1665131))

(declare-fun m!1665133 () Bool)

(assert (=> b!1445383 m!1665133))

(assert (=> b!1445383 m!1664607))

(declare-fun m!1665135 () Bool)

(assert (=> b!1445383 m!1665135))

(declare-fun m!1665137 () Bool)

(assert (=> b!1445383 m!1665137))

(declare-fun m!1665139 () Bool)

(assert (=> b!1445383 m!1665139))

(declare-fun m!1665141 () Bool)

(assert (=> b!1445383 m!1665141))

(assert (=> b!1445383 m!1664607))

(assert (=> b!1445383 m!1665133))

(declare-fun m!1665143 () Bool)

(assert (=> b!1445383 m!1665143))

(assert (=> b!1445383 m!1665135))

(assert (=> b!1445383 m!1665131))

(declare-fun m!1665145 () Bool)

(assert (=> b!1445383 m!1665145))

(declare-fun m!1665147 () Bool)

(assert (=> b!1445383 m!1665147))

(assert (=> b!1445383 m!1665147))

(declare-fun m!1665149 () Bool)

(assert (=> b!1445383 m!1665149))

(assert (=> b!1445383 m!1665127))

(assert (=> b!1445150 d!419207))

(declare-fun d!419209 () Bool)

(declare-fun lt!497311 () C!8076)

(declare-fun apply!3868 (List!15056 Int) C!8076)

(assert (=> d!419209 (= lt!497311 (apply!3868 (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943)))) 0))))

(declare-fun apply!3869 (Conc!5096 Int) C!8076)

(assert (=> d!419209 (= lt!497311 (apply!3869 (c!238012 (charsOf!1521 (h!20393 (t!130177 lt!496943)))) 0))))

(declare-fun e!922143 () Bool)

(assert (=> d!419209 e!922143))

(declare-fun res!654446 () Bool)

(assert (=> d!419209 (=> (not res!654446) (not e!922143))))

(assert (=> d!419209 (= res!654446 (<= 0 0))))

(assert (=> d!419209 (= (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496943))) 0) lt!497311)))

(declare-fun b!1445392 () Bool)

(declare-fun size!12293 (BalanceConc!10132) Int)

(assert (=> b!1445392 (= e!922143 (< 0 (size!12293 (charsOf!1521 (h!20393 (t!130177 lt!496943))))))))

(assert (= (and d!419209 res!654446) b!1445392))

(assert (=> d!419209 m!1664261))

(assert (=> d!419209 m!1664263))

(assert (=> d!419209 m!1664263))

(declare-fun m!1665171 () Bool)

(assert (=> d!419209 m!1665171))

(declare-fun m!1665173 () Bool)

(assert (=> d!419209 m!1665173))

(assert (=> b!1445392 m!1664261))

(declare-fun m!1665175 () Bool)

(assert (=> b!1445392 m!1665175))

(assert (=> b!1445150 d!419209))

(declare-fun b!1445394 () Bool)

(declare-fun e!922145 () List!15056)

(assert (=> b!1445394 (= e!922145 (Cons!14990 (h!20391 lt!497189) (++!4033 (t!130175 lt!497189) lt!497188)))))

(declare-fun d!419213 () Bool)

(declare-fun e!922144 () Bool)

(assert (=> d!419213 e!922144))

(declare-fun res!654448 () Bool)

(assert (=> d!419213 (=> (not res!654448) (not e!922144))))

(declare-fun lt!497312 () List!15056)

(assert (=> d!419213 (= res!654448 (= (content!2218 lt!497312) ((_ map or) (content!2218 lt!497189) (content!2218 lt!497188))))))

(assert (=> d!419213 (= lt!497312 e!922145)))

(declare-fun c!238099 () Bool)

(assert (=> d!419213 (= c!238099 ((_ is Nil!14990) lt!497189))))

(assert (=> d!419213 (= (++!4033 lt!497189 lt!497188) lt!497312)))

(declare-fun b!1445393 () Bool)

(assert (=> b!1445393 (= e!922145 lt!497188)))

(declare-fun b!1445395 () Bool)

(declare-fun res!654447 () Bool)

(assert (=> b!1445395 (=> (not res!654447) (not e!922144))))

(assert (=> b!1445395 (= res!654447 (= (size!12289 lt!497312) (+ (size!12289 lt!497189) (size!12289 lt!497188))))))

(declare-fun b!1445396 () Bool)

(assert (=> b!1445396 (= e!922144 (or (not (= lt!497188 Nil!14990)) (= lt!497312 lt!497189)))))

(assert (= (and d!419213 c!238099) b!1445393))

(assert (= (and d!419213 (not c!238099)) b!1445394))

(assert (= (and d!419213 res!654448) b!1445395))

(assert (= (and b!1445395 res!654447) b!1445396))

(declare-fun m!1665181 () Bool)

(assert (=> b!1445394 m!1665181))

(declare-fun m!1665183 () Bool)

(assert (=> d!419213 m!1665183))

(declare-fun m!1665185 () Bool)

(assert (=> d!419213 m!1665185))

(declare-fun m!1665187 () Bool)

(assert (=> d!419213 m!1665187))

(declare-fun m!1665189 () Bool)

(assert (=> b!1445395 m!1665189))

(declare-fun m!1665191 () Bool)

(assert (=> b!1445395 m!1665191))

(declare-fun m!1665193 () Bool)

(assert (=> b!1445395 m!1665193))

(assert (=> b!1445150 d!419213))

(declare-fun d!419217 () Bool)

(declare-fun lt!497314 () BalanceConc!10132)

(assert (=> d!419217 (= (list!5972 lt!497314) (originalCharacters!3497 (h!20393 (t!130177 lt!496943))))))

(assert (=> d!419217 (= lt!497314 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496943))))) (value!84745 (h!20393 (t!130177 lt!496943)))))))

(assert (=> d!419217 (= (charsOf!1521 (h!20393 (t!130177 lt!496943))) lt!497314)))

(declare-fun b_lambda!45155 () Bool)

(assert (=> (not b_lambda!45155) (not d!419217)))

(declare-fun t!130199 () Bool)

(declare-fun tb!78665 () Bool)

(assert (=> (and b!1445271 (= (toChars!3801 (transformation!2635 (h!20394 (rules!11498 thiss!10022)))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496943)))))) t!130199) tb!78665))

(declare-fun b!1445398 () Bool)

(declare-fun e!922147 () Bool)

(declare-fun tp!407811 () Bool)

(assert (=> b!1445398 (= e!922147 (and (inv!19962 (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496943))))) (value!84745 (h!20393 (t!130177 lt!496943)))))) tp!407811))))

(declare-fun result!95086 () Bool)

(assert (=> tb!78665 (= result!95086 (and (inv!19963 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496943))))) (value!84745 (h!20393 (t!130177 lt!496943))))) e!922147))))

(assert (= tb!78665 b!1445398))

(declare-fun m!1665195 () Bool)

(assert (=> b!1445398 m!1665195))

(declare-fun m!1665197 () Bool)

(assert (=> tb!78665 m!1665197))

(assert (=> d!419217 t!130199))

(declare-fun b_and!97847 () Bool)

(assert (= b_and!97833 (and (=> t!130199 result!95086) b_and!97847)))

(declare-fun t!130201 () Bool)

(declare-fun tb!78667 () Bool)

(assert (=> (and b!1445282 (= (toChars!3801 (transformation!2635 (h!20394 (rules!11498 other!32)))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496943)))))) t!130201) tb!78667))

(declare-fun result!95088 () Bool)

(assert (= result!95088 result!95086))

(assert (=> d!419217 t!130201))

(declare-fun b_and!97849 () Bool)

(assert (= b_and!97837 (and (=> t!130201 result!95088) b_and!97849)))

(declare-fun m!1665199 () Bool)

(assert (=> d!419217 m!1665199))

(declare-fun m!1665201 () Bool)

(assert (=> d!419217 m!1665201))

(assert (=> b!1445150 d!419217))

(declare-fun b!1445508 () Bool)

(declare-fun e!922208 () Bool)

(declare-fun e!922207 () Bool)

(assert (=> b!1445508 (= e!922208 e!922207)))

(declare-fun res!654483 () Bool)

(assert (=> b!1445508 (=> (not res!654483) (not e!922207))))

(declare-fun lt!497354 () Option!2861)

(assert (=> b!1445508 (= res!654483 (isDefined!2314 lt!497354))))

(declare-fun d!419219 () Bool)

(assert (=> d!419219 e!922208))

(declare-fun res!654485 () Bool)

(assert (=> d!419219 (=> res!654485 e!922208)))

(assert (=> d!419219 (= res!654485 (isEmpty!9346 lt!497354))))

(declare-fun e!922209 () Option!2861)

(assert (=> d!419219 (= lt!497354 e!922209)))

(declare-fun c!238140 () Bool)

(assert (=> d!419219 (= c!238140 (and ((_ is Cons!14993) (rules!11498 other!32)) ((_ is Nil!14993) (t!130178 (rules!11498 other!32)))))))

(declare-fun lt!497353 () Unit!23591)

(declare-fun lt!497351 () Unit!23591)

(assert (=> d!419219 (= lt!497353 lt!497351)))

(assert (=> d!419219 (isPrefix!1197 (originalCharacters!3497 (h!20393 lt!496943)) (originalCharacters!3497 (h!20393 lt!496943)))))

(declare-fun lemmaIsPrefixRefl!830 (List!15056 List!15056) Unit!23591)

(assert (=> d!419219 (= lt!497351 (lemmaIsPrefixRefl!830 (originalCharacters!3497 (h!20393 lt!496943)) (originalCharacters!3497 (h!20393 lt!496943))))))

(declare-fun rulesValidInductive!817 (LexerInterface!2294 List!15059) Bool)

(assert (=> d!419219 (rulesValidInductive!817 Lexer!2292 (rules!11498 other!32))))

(assert (=> d!419219 (= (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (originalCharacters!3497 (h!20393 lt!496943))) lt!497354)))

(declare-fun b!1445509 () Bool)

(declare-fun call!97781 () Option!2861)

(assert (=> b!1445509 (= e!922209 call!97781)))

(declare-fun b!1445510 () Bool)

(declare-fun res!654482 () Bool)

(assert (=> b!1445510 (=> (not res!654482) (not e!922207))))

(assert (=> b!1445510 (= res!654482 (= (++!4033 (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!497354)))) (_2!7967 (get!4585 lt!497354))) (originalCharacters!3497 (h!20393 lt!496943))))))

(declare-fun b!1445511 () Bool)

(declare-fun res!654480 () Bool)

(assert (=> b!1445511 (=> (not res!654480) (not e!922207))))

(assert (=> b!1445511 (= res!654480 (< (size!12289 (_2!7967 (get!4585 lt!497354))) (size!12289 (originalCharacters!3497 (h!20393 lt!496943)))))))

(declare-fun bm!97776 () Bool)

(declare-fun maxPrefixOneRule!656 (LexerInterface!2294 Rule!5070 List!15056) Option!2861)

(assert (=> bm!97776 (= call!97781 (maxPrefixOneRule!656 Lexer!2292 (h!20394 (rules!11498 other!32)) (originalCharacters!3497 (h!20393 lt!496943))))))

(declare-fun b!1445512 () Bool)

(declare-fun res!654484 () Bool)

(assert (=> b!1445512 (=> (not res!654484) (not e!922207))))

(assert (=> b!1445512 (= res!654484 (= (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!497354)))) (originalCharacters!3497 (_1!7967 (get!4585 lt!497354)))))))

(declare-fun b!1445513 () Bool)

(declare-fun res!654479 () Bool)

(assert (=> b!1445513 (=> (not res!654479) (not e!922207))))

(assert (=> b!1445513 (= res!654479 (matchR!1823 (regex!2635 (rule!4406 (_1!7967 (get!4585 lt!497354)))) (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!497354))))))))

(declare-fun b!1445514 () Bool)

(declare-fun res!654481 () Bool)

(assert (=> b!1445514 (=> (not res!654481) (not e!922207))))

(declare-fun apply!3870 (TokenValueInjection!5110 BalanceConc!10132) TokenValue!2725)

(declare-fun seqFromList!1705 (List!15056) BalanceConc!10132)

(assert (=> b!1445514 (= res!654481 (= (value!84745 (_1!7967 (get!4585 lt!497354))) (apply!3870 (transformation!2635 (rule!4406 (_1!7967 (get!4585 lt!497354)))) (seqFromList!1705 (originalCharacters!3497 (_1!7967 (get!4585 lt!497354)))))))))

(declare-fun b!1445515 () Bool)

(declare-fun contains!2871 (List!15059 Rule!5070) Bool)

(assert (=> b!1445515 (= e!922207 (contains!2871 (rules!11498 other!32) (rule!4406 (_1!7967 (get!4585 lt!497354)))))))

(declare-fun b!1445516 () Bool)

(declare-fun lt!497352 () Option!2861)

(declare-fun lt!497355 () Option!2861)

(assert (=> b!1445516 (= e!922209 (ite (and ((_ is None!2860) lt!497352) ((_ is None!2860) lt!497355)) None!2860 (ite ((_ is None!2860) lt!497355) lt!497352 (ite ((_ is None!2860) lt!497352) lt!497355 (ite (>= (size!12285 (_1!7967 (v!22408 lt!497352))) (size!12285 (_1!7967 (v!22408 lt!497355)))) lt!497352 lt!497355)))))))

(assert (=> b!1445516 (= lt!497352 call!97781)))

(assert (=> b!1445516 (= lt!497355 (maxPrefix!1187 Lexer!2292 (t!130178 (rules!11498 other!32)) (originalCharacters!3497 (h!20393 lt!496943))))))

(assert (= (and d!419219 c!238140) b!1445509))

(assert (= (and d!419219 (not c!238140)) b!1445516))

(assert (= (or b!1445509 b!1445516) bm!97776))

(assert (= (and d!419219 (not res!654485)) b!1445508))

(assert (= (and b!1445508 res!654483) b!1445512))

(assert (= (and b!1445512 res!654484) b!1445511))

(assert (= (and b!1445511 res!654480) b!1445510))

(assert (= (and b!1445510 res!654482) b!1445514))

(assert (= (and b!1445514 res!654481) b!1445513))

(assert (= (and b!1445513 res!654479) b!1445515))

(declare-fun m!1665289 () Bool)

(assert (=> b!1445515 m!1665289))

(declare-fun m!1665291 () Bool)

(assert (=> b!1445515 m!1665291))

(declare-fun m!1665293 () Bool)

(assert (=> bm!97776 m!1665293))

(assert (=> b!1445513 m!1665289))

(declare-fun m!1665295 () Bool)

(assert (=> b!1445513 m!1665295))

(assert (=> b!1445513 m!1665295))

(declare-fun m!1665297 () Bool)

(assert (=> b!1445513 m!1665297))

(assert (=> b!1445513 m!1665297))

(declare-fun m!1665299 () Bool)

(assert (=> b!1445513 m!1665299))

(assert (=> b!1445514 m!1665289))

(declare-fun m!1665301 () Bool)

(assert (=> b!1445514 m!1665301))

(assert (=> b!1445514 m!1665301))

(declare-fun m!1665303 () Bool)

(assert (=> b!1445514 m!1665303))

(assert (=> b!1445510 m!1665289))

(assert (=> b!1445510 m!1665295))

(assert (=> b!1445510 m!1665295))

(assert (=> b!1445510 m!1665297))

(assert (=> b!1445510 m!1665297))

(declare-fun m!1665305 () Bool)

(assert (=> b!1445510 m!1665305))

(assert (=> b!1445511 m!1665289))

(declare-fun m!1665307 () Bool)

(assert (=> b!1445511 m!1665307))

(declare-fun m!1665309 () Bool)

(assert (=> b!1445511 m!1665309))

(declare-fun m!1665311 () Bool)

(assert (=> d!419219 m!1665311))

(declare-fun m!1665313 () Bool)

(assert (=> d!419219 m!1665313))

(declare-fun m!1665315 () Bool)

(assert (=> d!419219 m!1665315))

(declare-fun m!1665317 () Bool)

(assert (=> d!419219 m!1665317))

(assert (=> b!1445512 m!1665289))

(assert (=> b!1445512 m!1665295))

(assert (=> b!1445512 m!1665295))

(assert (=> b!1445512 m!1665297))

(declare-fun m!1665319 () Bool)

(assert (=> b!1445508 m!1665319))

(declare-fun m!1665321 () Bool)

(assert (=> b!1445516 m!1665321))

(assert (=> b!1445150 d!419219))

(declare-fun b!1445527 () Bool)

(declare-fun e!922216 () Bool)

(declare-fun tail!2163 (List!15056) List!15056)

(assert (=> b!1445527 (= e!922216 (isPrefix!1197 (tail!2163 lt!497189) (tail!2163 (++!4033 lt!497189 lt!497188))))))

(declare-fun b!1445526 () Bool)

(declare-fun res!654494 () Bool)

(assert (=> b!1445526 (=> (not res!654494) (not e!922216))))

(assert (=> b!1445526 (= res!654494 (= (head!2929 lt!497189) (head!2929 (++!4033 lt!497189 lt!497188))))))

(declare-fun d!419251 () Bool)

(declare-fun e!922218 () Bool)

(assert (=> d!419251 e!922218))

(declare-fun res!654497 () Bool)

(assert (=> d!419251 (=> res!654497 e!922218)))

(declare-fun lt!497358 () Bool)

(assert (=> d!419251 (= res!654497 (not lt!497358))))

(declare-fun e!922217 () Bool)

(assert (=> d!419251 (= lt!497358 e!922217)))

(declare-fun res!654496 () Bool)

(assert (=> d!419251 (=> res!654496 e!922217)))

(assert (=> d!419251 (= res!654496 ((_ is Nil!14990) lt!497189))))

(assert (=> d!419251 (= (isPrefix!1197 lt!497189 (++!4033 lt!497189 lt!497188)) lt!497358)))

(declare-fun b!1445528 () Bool)

(assert (=> b!1445528 (= e!922218 (>= (size!12289 (++!4033 lt!497189 lt!497188)) (size!12289 lt!497189)))))

(declare-fun b!1445525 () Bool)

(assert (=> b!1445525 (= e!922217 e!922216)))

(declare-fun res!654495 () Bool)

(assert (=> b!1445525 (=> (not res!654495) (not e!922216))))

(assert (=> b!1445525 (= res!654495 (not ((_ is Nil!14990) (++!4033 lt!497189 lt!497188))))))

(assert (= (and d!419251 (not res!654496)) b!1445525))

(assert (= (and b!1445525 res!654495) b!1445526))

(assert (= (and b!1445526 res!654494) b!1445527))

(assert (= (and d!419251 (not res!654497)) b!1445528))

(declare-fun m!1665323 () Bool)

(assert (=> b!1445527 m!1665323))

(assert (=> b!1445527 m!1664645))

(declare-fun m!1665325 () Bool)

(assert (=> b!1445527 m!1665325))

(assert (=> b!1445527 m!1665323))

(assert (=> b!1445527 m!1665325))

(declare-fun m!1665327 () Bool)

(assert (=> b!1445527 m!1665327))

(declare-fun m!1665329 () Bool)

(assert (=> b!1445526 m!1665329))

(assert (=> b!1445526 m!1664645))

(declare-fun m!1665331 () Bool)

(assert (=> b!1445526 m!1665331))

(assert (=> b!1445528 m!1664645))

(declare-fun m!1665333 () Bool)

(assert (=> b!1445528 m!1665333))

(assert (=> b!1445528 m!1665191))

(assert (=> b!1445150 d!419251))

(declare-fun d!419253 () Bool)

(declare-fun e!922221 () Bool)

(assert (=> d!419253 e!922221))

(declare-fun res!654500 () Bool)

(assert (=> d!419253 (=> (not res!654500) (not e!922221))))

(declare-fun lt!497361 () BalanceConc!10134)

(assert (=> d!419253 (= res!654500 (= (list!5973 lt!497361) (Cons!14992 (h!20393 lt!496943) Nil!14992)))))

(declare-fun singleton!520 (Token!4932) BalanceConc!10134)

(assert (=> d!419253 (= lt!497361 (singleton!520 (h!20393 lt!496943)))))

(assert (=> d!419253 (= (singletonSeq!1238 (h!20393 lt!496943)) lt!497361)))

(declare-fun b!1445531 () Bool)

(assert (=> b!1445531 (= e!922221 (isBalanced!1518 (c!238014 lt!497361)))))

(assert (= (and d!419253 res!654500) b!1445531))

(declare-fun m!1665335 () Bool)

(assert (=> d!419253 m!1665335))

(declare-fun m!1665337 () Bool)

(assert (=> d!419253 m!1665337))

(declare-fun m!1665339 () Bool)

(assert (=> b!1445531 m!1665339))

(assert (=> b!1445150 d!419253))

(declare-fun d!419255 () Bool)

(assert (=> d!419255 (isPrefix!1197 lt!497189 (++!4033 lt!497189 lt!497188))))

(declare-fun lt!497364 () Unit!23591)

(declare-fun choose!8912 (List!15056 List!15056) Unit!23591)

(assert (=> d!419255 (= lt!497364 (choose!8912 lt!497189 lt!497188))))

(assert (=> d!419255 (= (lemmaConcatTwoListThenFirstIsPrefix!762 lt!497189 lt!497188) lt!497364)))

(declare-fun bs!342156 () Bool)

(assert (= bs!342156 d!419255))

(assert (=> bs!342156 m!1664645))

(assert (=> bs!342156 m!1664645))

(assert (=> bs!342156 m!1664647))

(declare-fun m!1665341 () Bool)

(assert (=> bs!342156 m!1665341))

(assert (=> b!1445150 d!419255))

(declare-fun d!419257 () Bool)

(declare-fun e!922224 () Bool)

(assert (=> d!419257 e!922224))

(declare-fun res!654503 () Bool)

(assert (=> d!419257 (=> (not res!654503) (not e!922224))))

(declare-fun prepend!416 (Conc!5097 Token!4932) Conc!5097)

(assert (=> d!419257 (= res!654503 (isBalanced!1518 (prepend!416 (c!238014 (seqFromList!1704 (t!130177 (t!130177 lt!496943)))) (h!20393 (t!130177 lt!496943)))))))

(declare-fun lt!497367 () BalanceConc!10134)

(assert (=> d!419257 (= lt!497367 (BalanceConc!10135 (prepend!416 (c!238014 (seqFromList!1704 (t!130177 (t!130177 lt!496943)))) (h!20393 (t!130177 lt!496943)))))))

(assert (=> d!419257 (= (prepend!415 (seqFromList!1704 (t!130177 (t!130177 lt!496943))) (h!20393 (t!130177 lt!496943))) lt!497367)))

(declare-fun b!1445534 () Bool)

(assert (=> b!1445534 (= e!922224 (= (list!5973 lt!497367) (Cons!14992 (h!20393 (t!130177 lt!496943)) (list!5973 (seqFromList!1704 (t!130177 (t!130177 lt!496943)))))))))

(assert (= (and d!419257 res!654503) b!1445534))

(declare-fun m!1665343 () Bool)

(assert (=> d!419257 m!1665343))

(assert (=> d!419257 m!1665343))

(declare-fun m!1665345 () Bool)

(assert (=> d!419257 m!1665345))

(declare-fun m!1665347 () Bool)

(assert (=> b!1445534 m!1665347))

(assert (=> b!1445534 m!1664617))

(declare-fun m!1665349 () Bool)

(assert (=> b!1445534 m!1665349))

(assert (=> b!1445150 d!419257))

(declare-fun b!1445535 () Bool)

(declare-fun e!922226 () Bool)

(declare-fun e!922225 () Bool)

(assert (=> b!1445535 (= e!922226 e!922225)))

(declare-fun res!654508 () Bool)

(assert (=> b!1445535 (=> (not res!654508) (not e!922225))))

(declare-fun lt!497371 () Option!2861)

(assert (=> b!1445535 (= res!654508 (isDefined!2314 lt!497371))))

(declare-fun d!419259 () Bool)

(assert (=> d!419259 e!922226))

(declare-fun res!654510 () Bool)

(assert (=> d!419259 (=> res!654510 e!922226)))

(assert (=> d!419259 (= res!654510 (isEmpty!9346 lt!497371))))

(declare-fun e!922227 () Option!2861)

(assert (=> d!419259 (= lt!497371 e!922227)))

(declare-fun c!238142 () Bool)

(assert (=> d!419259 (= c!238142 (and ((_ is Cons!14993) (rules!11498 other!32)) ((_ is Nil!14993) (t!130178 (rules!11498 other!32)))))))

(declare-fun lt!497370 () Unit!23591)

(declare-fun lt!497368 () Unit!23591)

(assert (=> d!419259 (= lt!497370 lt!497368)))

(assert (=> d!419259 (isPrefix!1197 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (list!5972 (charsOf!1521 (h!20393 lt!496943))))))

(assert (=> d!419259 (= lt!497368 (lemmaIsPrefixRefl!830 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))

(assert (=> d!419259 (rulesValidInductive!817 Lexer!2292 (rules!11498 other!32))))

(assert (=> d!419259 (= (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 lt!496943)))) lt!497371)))

(declare-fun b!1445536 () Bool)

(declare-fun call!97782 () Option!2861)

(assert (=> b!1445536 (= e!922227 call!97782)))

(declare-fun b!1445537 () Bool)

(declare-fun res!654507 () Bool)

(assert (=> b!1445537 (=> (not res!654507) (not e!922225))))

(assert (=> b!1445537 (= res!654507 (= (++!4033 (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!497371)))) (_2!7967 (get!4585 lt!497371))) (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))

(declare-fun b!1445538 () Bool)

(declare-fun res!654505 () Bool)

(assert (=> b!1445538 (=> (not res!654505) (not e!922225))))

(assert (=> b!1445538 (= res!654505 (< (size!12289 (_2!7967 (get!4585 lt!497371))) (size!12289 (list!5972 (charsOf!1521 (h!20393 lt!496943))))))))

(declare-fun bm!97777 () Bool)

(assert (=> bm!97777 (= call!97782 (maxPrefixOneRule!656 Lexer!2292 (h!20394 (rules!11498 other!32)) (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))

(declare-fun b!1445539 () Bool)

(declare-fun res!654509 () Bool)

(assert (=> b!1445539 (=> (not res!654509) (not e!922225))))

(assert (=> b!1445539 (= res!654509 (= (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!497371)))) (originalCharacters!3497 (_1!7967 (get!4585 lt!497371)))))))

(declare-fun b!1445540 () Bool)

(declare-fun res!654504 () Bool)

(assert (=> b!1445540 (=> (not res!654504) (not e!922225))))

(assert (=> b!1445540 (= res!654504 (matchR!1823 (regex!2635 (rule!4406 (_1!7967 (get!4585 lt!497371)))) (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!497371))))))))

(declare-fun b!1445541 () Bool)

(declare-fun res!654506 () Bool)

(assert (=> b!1445541 (=> (not res!654506) (not e!922225))))

(assert (=> b!1445541 (= res!654506 (= (value!84745 (_1!7967 (get!4585 lt!497371))) (apply!3870 (transformation!2635 (rule!4406 (_1!7967 (get!4585 lt!497371)))) (seqFromList!1705 (originalCharacters!3497 (_1!7967 (get!4585 lt!497371)))))))))

(declare-fun b!1445542 () Bool)

(assert (=> b!1445542 (= e!922225 (contains!2871 (rules!11498 other!32) (rule!4406 (_1!7967 (get!4585 lt!497371)))))))

(declare-fun b!1445543 () Bool)

(declare-fun lt!497369 () Option!2861)

(declare-fun lt!497372 () Option!2861)

(assert (=> b!1445543 (= e!922227 (ite (and ((_ is None!2860) lt!497369) ((_ is None!2860) lt!497372)) None!2860 (ite ((_ is None!2860) lt!497372) lt!497369 (ite ((_ is None!2860) lt!497369) lt!497372 (ite (>= (size!12285 (_1!7967 (v!22408 lt!497369))) (size!12285 (_1!7967 (v!22408 lt!497372)))) lt!497369 lt!497372)))))))

(assert (=> b!1445543 (= lt!497369 call!97782)))

(assert (=> b!1445543 (= lt!497372 (maxPrefix!1187 Lexer!2292 (t!130178 (rules!11498 other!32)) (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))

(assert (= (and d!419259 c!238142) b!1445536))

(assert (= (and d!419259 (not c!238142)) b!1445543))

(assert (= (or b!1445536 b!1445543) bm!97777))

(assert (= (and d!419259 (not res!654510)) b!1445535))

(assert (= (and b!1445535 res!654508) b!1445539))

(assert (= (and b!1445539 res!654509) b!1445538))

(assert (= (and b!1445538 res!654505) b!1445537))

(assert (= (and b!1445537 res!654507) b!1445541))

(assert (= (and b!1445541 res!654506) b!1445540))

(assert (= (and b!1445540 res!654504) b!1445542))

(declare-fun m!1665351 () Bool)

(assert (=> b!1445542 m!1665351))

(declare-fun m!1665353 () Bool)

(assert (=> b!1445542 m!1665353))

(assert (=> bm!97777 m!1664107))

(declare-fun m!1665355 () Bool)

(assert (=> bm!97777 m!1665355))

(assert (=> b!1445540 m!1665351))

(declare-fun m!1665357 () Bool)

(assert (=> b!1445540 m!1665357))

(assert (=> b!1445540 m!1665357))

(declare-fun m!1665359 () Bool)

(assert (=> b!1445540 m!1665359))

(assert (=> b!1445540 m!1665359))

(declare-fun m!1665361 () Bool)

(assert (=> b!1445540 m!1665361))

(assert (=> b!1445541 m!1665351))

(declare-fun m!1665363 () Bool)

(assert (=> b!1445541 m!1665363))

(assert (=> b!1445541 m!1665363))

(declare-fun m!1665365 () Bool)

(assert (=> b!1445541 m!1665365))

(assert (=> b!1445537 m!1665351))

(assert (=> b!1445537 m!1665357))

(assert (=> b!1445537 m!1665357))

(assert (=> b!1445537 m!1665359))

(assert (=> b!1445537 m!1665359))

(declare-fun m!1665367 () Bool)

(assert (=> b!1445537 m!1665367))

(assert (=> b!1445538 m!1665351))

(declare-fun m!1665369 () Bool)

(assert (=> b!1445538 m!1665369))

(assert (=> b!1445538 m!1664107))

(assert (=> b!1445538 m!1664251))

(declare-fun m!1665371 () Bool)

(assert (=> d!419259 m!1665371))

(assert (=> d!419259 m!1664107))

(assert (=> d!419259 m!1664107))

(declare-fun m!1665373 () Bool)

(assert (=> d!419259 m!1665373))

(assert (=> d!419259 m!1664107))

(assert (=> d!419259 m!1664107))

(declare-fun m!1665375 () Bool)

(assert (=> d!419259 m!1665375))

(assert (=> d!419259 m!1665317))

(assert (=> b!1445539 m!1665351))

(assert (=> b!1445539 m!1665357))

(assert (=> b!1445539 m!1665357))

(assert (=> b!1445539 m!1665359))

(declare-fun m!1665377 () Bool)

(assert (=> b!1445535 m!1665377))

(assert (=> b!1445543 m!1664107))

(declare-fun m!1665379 () Bool)

(assert (=> b!1445543 m!1665379))

(assert (=> b!1445150 d!419259))

(assert (=> b!1445150 d!419021))

(declare-fun d!419261 () Bool)

(declare-fun lt!497373 () BalanceConc!10132)

(assert (=> d!419261 (= (list!5972 lt!497373) (printList!713 Lexer!2292 (list!5973 (singletonSeq!1238 (h!20393 lt!496943)))))))

(assert (=> d!419261 (= lt!497373 (printTailRec!685 Lexer!2292 (singletonSeq!1238 (h!20393 lt!496943)) 0 (BalanceConc!10133 Empty!5096)))))

(assert (=> d!419261 (= (print!1075 Lexer!2292 (singletonSeq!1238 (h!20393 lt!496943))) lt!497373)))

(declare-fun bs!342157 () Bool)

(assert (= bs!342157 d!419261))

(declare-fun m!1665381 () Bool)

(assert (=> bs!342157 m!1665381))

(assert (=> bs!342157 m!1664607))

(assert (=> bs!342157 m!1665125))

(assert (=> bs!342157 m!1665125))

(declare-fun m!1665383 () Bool)

(assert (=> bs!342157 m!1665383))

(assert (=> bs!342157 m!1664607))

(assert (=> bs!342157 m!1664649))

(assert (=> b!1445150 d!419261))

(declare-fun d!419263 () Bool)

(declare-fun fromListB!733 (List!15058) BalanceConc!10134)

(assert (=> d!419263 (= (seqFromList!1704 (t!130177 (t!130177 lt!496943))) (fromListB!733 (t!130177 (t!130177 lt!496943))))))

(declare-fun bs!342158 () Bool)

(assert (= bs!342158 d!419263))

(declare-fun m!1665385 () Bool)

(assert (=> bs!342158 m!1665385))

(assert (=> b!1445150 d!419263))

(declare-fun d!419265 () Bool)

(assert (=> d!419265 (= (head!2929 (originalCharacters!3497 (h!20393 (t!130177 lt!496943)))) (h!20391 (originalCharacters!3497 (h!20393 (t!130177 lt!496943)))))))

(assert (=> b!1445150 d!419265))

(declare-fun d!419267 () Bool)

(assert (=> d!419267 (= (list!5973 (_1!7966 lt!497179)) (list!5977 (c!238014 (_1!7966 lt!497179))))))

(declare-fun bs!342159 () Bool)

(assert (= bs!342159 d!419267))

(declare-fun m!1665387 () Bool)

(assert (=> bs!342159 m!1665387))

(assert (=> b!1445150 d!419267))

(declare-fun d!419269 () Bool)

(declare-fun e!922229 () Bool)

(assert (=> d!419269 e!922229))

(declare-fun res!654511 () Bool)

(assert (=> d!419269 (=> (not res!654511) (not e!922229))))

(assert (=> d!419269 (= res!654511 (= (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) (print!1075 Lexer!2292 (seqFromList!1704 (t!130177 lt!496943)))))) (t!130177 lt!496943)))))

(declare-fun lt!497377 () Unit!23591)

(declare-fun e!922228 () Unit!23591)

(assert (=> d!419269 (= lt!497377 e!922228)))

(declare-fun c!238143 () Bool)

(assert (=> d!419269 (= c!238143 (or ((_ is Nil!14992) (t!130177 lt!496943)) ((_ is Nil!14992) (t!130177 (t!130177 lt!496943)))))))

(assert (=> d!419269 (not (isEmpty!9342 (rules!11498 other!32)))))

(assert (=> d!419269 (= (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 other!32) (t!130177 lt!496943)) lt!497377)))

(declare-fun b!1445544 () Bool)

(declare-fun Unit!23656 () Unit!23591)

(assert (=> b!1445544 (= e!922228 Unit!23656)))

(declare-fun b!1445545 () Bool)

(declare-fun Unit!23657 () Unit!23591)

(assert (=> b!1445545 (= e!922228 Unit!23657)))

(declare-fun lt!497384 () BalanceConc!10132)

(assert (=> b!1445545 (= lt!497384 (print!1075 Lexer!2292 (seqFromList!1704 (t!130177 lt!496943))))))

(declare-fun lt!497397 () BalanceConc!10132)

(assert (=> b!1445545 (= lt!497397 (print!1075 Lexer!2292 (seqFromList!1704 (t!130177 (t!130177 lt!496943)))))))

(declare-fun lt!497380 () tuple2!14160)

(assert (=> b!1445545 (= lt!497380 (lex!1050 Lexer!2292 (rules!11498 other!32) lt!497397))))

(declare-fun lt!497390 () List!15056)

(assert (=> b!1445545 (= lt!497390 (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943)))))))

(declare-fun lt!497389 () List!15056)

(assert (=> b!1445545 (= lt!497389 (list!5972 lt!497397))))

(declare-fun lt!497393 () Unit!23591)

(assert (=> b!1445545 (= lt!497393 (lemmaConcatTwoListThenFirstIsPrefix!762 lt!497390 lt!497389))))

(assert (=> b!1445545 (isPrefix!1197 lt!497390 (++!4033 lt!497390 lt!497389))))

(declare-fun lt!497386 () Unit!23591)

(assert (=> b!1445545 (= lt!497386 lt!497393)))

(declare-fun lt!497385 () Unit!23591)

(assert (=> b!1445545 (= lt!497385 (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 other!32) (t!130177 (t!130177 lt!496943))))))

(declare-fun lt!497396 () Unit!23591)

(assert (=> b!1445545 (= lt!497396 (seqFromListBHdTlConstructive!91 (h!20393 (t!130177 (t!130177 lt!496943))) (t!130177 (t!130177 (t!130177 lt!496943))) (_1!7966 lt!497380)))))

(assert (=> b!1445545 (= (list!5973 (_1!7966 lt!497380)) (list!5973 (prepend!415 (seqFromList!1704 (t!130177 (t!130177 (t!130177 lt!496943)))) (h!20393 (t!130177 (t!130177 lt!496943))))))))

(declare-fun lt!497387 () Unit!23591)

(assert (=> b!1445545 (= lt!497387 lt!497396)))

(declare-fun lt!497398 () Option!2861)

(assert (=> b!1445545 (= lt!497398 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 lt!497384)))))

(assert (=> b!1445545 (= (print!1075 Lexer!2292 (singletonSeq!1238 (h!20393 (t!130177 lt!496943)))) (printTailRec!685 Lexer!2292 (singletonSeq!1238 (h!20393 (t!130177 lt!496943))) 0 (BalanceConc!10133 Empty!5096)))))

(declare-fun lt!497399 () Unit!23591)

(declare-fun Unit!23662 () Unit!23591)

(assert (=> b!1445545 (= lt!497399 Unit!23662)))

(declare-fun lt!497381 () Unit!23591)

(assert (=> b!1445545 (= lt!497381 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!235 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943)))) (list!5972 lt!497397)))))

(assert (=> b!1445545 (= (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943)))) (originalCharacters!3497 (h!20393 (t!130177 lt!496943))))))

(declare-fun lt!497374 () Unit!23591)

(declare-fun Unit!23663 () Unit!23591)

(assert (=> b!1445545 (= lt!497374 Unit!23663)))

(assert (=> b!1445545 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 (t!130177 lt!496943)))) 0))) (Cons!14990 (head!2929 (originalCharacters!3497 (h!20393 (t!130177 (t!130177 lt!496943))))) Nil!14990))))

(declare-fun lt!497378 () Unit!23591)

(declare-fun Unit!23664 () Unit!23591)

(assert (=> b!1445545 (= lt!497378 Unit!23664)))

(assert (=> b!1445545 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 (t!130177 lt!496943)))) 0))) (Cons!14990 (head!2929 (list!5972 lt!497397)) Nil!14990))))

(declare-fun lt!497376 () Unit!23591)

(declare-fun Unit!23665 () Unit!23591)

(assert (=> b!1445545 (= lt!497376 Unit!23665)))

(assert (=> b!1445545 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 (t!130177 lt!496943)))) 0))) (Cons!14990 (head!2930 lt!497397) Nil!14990))))

(declare-fun lt!497394 () Unit!23591)

(declare-fun Unit!23666 () Unit!23591)

(assert (=> b!1445545 (= lt!497394 Unit!23666)))

(assert (=> b!1445545 (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (originalCharacters!3497 (h!20393 (t!130177 lt!496943)))))))

(declare-fun lt!497375 () Unit!23591)

(declare-fun Unit!23667 () Unit!23591)

(assert (=> b!1445545 (= lt!497375 Unit!23667)))

(assert (=> b!1445545 (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943))))))))

(declare-fun lt!497395 () Unit!23591)

(declare-fun Unit!23668 () Unit!23591)

(assert (=> b!1445545 (= lt!497395 Unit!23668)))

(declare-fun lt!497392 () Unit!23591)

(declare-fun Unit!23669 () Unit!23591)

(assert (=> b!1445545 (= lt!497392 Unit!23669)))

(assert (=> b!1445545 (= (_1!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943))))))) (h!20393 (t!130177 lt!496943)))))

(declare-fun lt!497391 () Unit!23591)

(declare-fun Unit!23670 () Unit!23591)

(assert (=> b!1445545 (= lt!497391 Unit!23670)))

(assert (=> b!1445545 (isEmpty!9341 (_2!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943))))))))))

(declare-fun lt!497379 () Unit!23591)

(declare-fun Unit!23672 () Unit!23591)

(assert (=> b!1445545 (= lt!497379 Unit!23672)))

(assert (=> b!1445545 (matchR!1823 (regex!2635 (rule!4406 (h!20393 (t!130177 lt!496943)))) (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943)))))))

(declare-fun lt!497388 () Unit!23591)

(declare-fun Unit!23673 () Unit!23591)

(assert (=> b!1445545 (= lt!497388 Unit!23673)))

(assert (=> b!1445545 (= (rule!4406 (h!20393 (t!130177 lt!496943))) (rule!4406 (h!20393 (t!130177 lt!496943))))))

(declare-fun lt!497383 () Unit!23591)

(declare-fun Unit!23674 () Unit!23591)

(assert (=> b!1445545 (= lt!497383 Unit!23674)))

(declare-fun lt!497382 () Unit!23591)

(assert (=> b!1445545 (= lt!497382 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!33 Lexer!2292 (rules!11498 other!32) (h!20393 (t!130177 lt!496943)) (rule!4406 (h!20393 (t!130177 lt!496943))) (list!5972 lt!497397)))))

(declare-fun b!1445546 () Bool)

(assert (=> b!1445546 (= e!922229 (isEmpty!9343 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) (print!1075 Lexer!2292 (seqFromList!1704 (t!130177 lt!496943)))))))))

(assert (= (and d!419269 c!238143) b!1445544))

(assert (= (and d!419269 (not c!238143)) b!1445545))

(assert (= (and d!419269 res!654511) b!1445546))

(assert (=> d!419269 m!1664597))

(assert (=> d!419269 m!1664625))

(declare-fun m!1665389 () Bool)

(assert (=> d!419269 m!1665389))

(assert (=> d!419269 m!1664623))

(declare-fun m!1665391 () Bool)

(assert (=> d!419269 m!1665391))

(assert (=> d!419269 m!1664623))

(assert (=> d!419269 m!1664625))

(declare-fun m!1665393 () Bool)

(assert (=> b!1445545 m!1665393))

(declare-fun m!1665395 () Bool)

(assert (=> b!1445545 m!1665395))

(declare-fun m!1665397 () Bool)

(assert (=> b!1445545 m!1665397))

(declare-fun m!1665399 () Bool)

(assert (=> b!1445545 m!1665399))

(declare-fun m!1665401 () Bool)

(assert (=> b!1445545 m!1665401))

(declare-fun m!1665403 () Bool)

(assert (=> b!1445545 m!1665403))

(declare-fun m!1665405 () Bool)

(assert (=> b!1445545 m!1665405))

(declare-fun m!1665407 () Bool)

(assert (=> b!1445545 m!1665407))

(assert (=> b!1445545 m!1664617))

(declare-fun m!1665409 () Bool)

(assert (=> b!1445545 m!1665409))

(declare-fun m!1665411 () Bool)

(assert (=> b!1445545 m!1665411))

(declare-fun m!1665413 () Bool)

(assert (=> b!1445545 m!1665413))

(declare-fun m!1665415 () Bool)

(assert (=> b!1445545 m!1665415))

(declare-fun m!1665417 () Bool)

(assert (=> b!1445545 m!1665417))

(declare-fun m!1665419 () Bool)

(assert (=> b!1445545 m!1665419))

(assert (=> b!1445545 m!1664263))

(declare-fun m!1665421 () Bool)

(assert (=> b!1445545 m!1665421))

(assert (=> b!1445545 m!1665401))

(declare-fun m!1665423 () Bool)

(assert (=> b!1445545 m!1665423))

(declare-fun m!1665425 () Bool)

(assert (=> b!1445545 m!1665425))

(declare-fun m!1665427 () Bool)

(assert (=> b!1445545 m!1665427))

(assert (=> b!1445545 m!1665393))

(assert (=> b!1445545 m!1665405))

(declare-fun m!1665429 () Bool)

(assert (=> b!1445545 m!1665429))

(declare-fun m!1665431 () Bool)

(assert (=> b!1445545 m!1665431))

(declare-fun m!1665433 () Bool)

(assert (=> b!1445545 m!1665433))

(assert (=> b!1445545 m!1665417))

(assert (=> b!1445545 m!1665393))

(declare-fun m!1665435 () Bool)

(assert (=> b!1445545 m!1665435))

(declare-fun m!1665437 () Bool)

(assert (=> b!1445545 m!1665437))

(declare-fun m!1665439 () Bool)

(assert (=> b!1445545 m!1665439))

(assert (=> b!1445545 m!1665403))

(declare-fun m!1665441 () Bool)

(assert (=> b!1445545 m!1665441))

(assert (=> b!1445545 m!1664263))

(assert (=> b!1445545 m!1665411))

(declare-fun m!1665443 () Bool)

(assert (=> b!1445545 m!1665443))

(declare-fun m!1665445 () Bool)

(assert (=> b!1445545 m!1665445))

(declare-fun m!1665447 () Bool)

(assert (=> b!1445545 m!1665447))

(assert (=> b!1445545 m!1664623))

(assert (=> b!1445545 m!1665431))

(assert (=> b!1445545 m!1665397))

(assert (=> b!1445545 m!1664617))

(assert (=> b!1445545 m!1665411))

(assert (=> b!1445545 m!1664623))

(assert (=> b!1445545 m!1664625))

(assert (=> b!1445545 m!1664263))

(assert (=> b!1445545 m!1665425))

(assert (=> b!1445545 m!1664261))

(declare-fun m!1665449 () Bool)

(assert (=> b!1445545 m!1665449))

(assert (=> b!1445545 m!1665425))

(declare-fun m!1665451 () Bool)

(assert (=> b!1445545 m!1665451))

(assert (=> b!1445545 m!1665419))

(declare-fun m!1665453 () Bool)

(assert (=> b!1445545 m!1665453))

(assert (=> b!1445545 m!1665453))

(declare-fun m!1665455 () Bool)

(assert (=> b!1445545 m!1665455))

(assert (=> b!1445545 m!1664261))

(assert (=> b!1445545 m!1664263))

(assert (=> b!1445545 m!1665411))

(declare-fun m!1665457 () Bool)

(assert (=> b!1445545 m!1665457))

(assert (=> b!1445546 m!1664623))

(assert (=> b!1445546 m!1664623))

(assert (=> b!1445546 m!1664625))

(assert (=> b!1445546 m!1664625))

(assert (=> b!1445546 m!1665389))

(declare-fun m!1665459 () Bool)

(assert (=> b!1445546 m!1665459))

(assert (=> b!1445150 d!419269))

(declare-fun d!419271 () Bool)

(assert (=> d!419271 (= (seqFromList!1704 (t!130177 lt!496943)) (fromListB!733 (t!130177 lt!496943)))))

(declare-fun bs!342160 () Bool)

(assert (= bs!342160 d!419271))

(declare-fun m!1665461 () Bool)

(assert (=> bs!342160 m!1665461))

(assert (=> b!1445150 d!419271))

(declare-fun d!419273 () Bool)

(assert (=> d!419273 (= (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 lt!496943))))) (v!22408 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 lt!496943))))))))

(assert (=> b!1445150 d!419273))

(declare-fun d!419275 () Bool)

(declare-fun lt!497400 () BalanceConc!10132)

(assert (=> d!419275 (= (list!5972 lt!497400) (printList!713 Lexer!2292 (list!5973 (seqFromList!1704 lt!496943))))))

(assert (=> d!419275 (= lt!497400 (printTailRec!685 Lexer!2292 (seqFromList!1704 lt!496943) 0 (BalanceConc!10133 Empty!5096)))))

(assert (=> d!419275 (= (print!1075 Lexer!2292 (seqFromList!1704 lt!496943)) lt!497400)))

(declare-fun bs!342161 () Bool)

(assert (= bs!342161 d!419275))

(declare-fun m!1665463 () Bool)

(assert (=> bs!342161 m!1665463))

(assert (=> bs!342161 m!1664603))

(declare-fun m!1665465 () Bool)

(assert (=> bs!342161 m!1665465))

(assert (=> bs!342161 m!1665465))

(declare-fun m!1665467 () Bool)

(assert (=> bs!342161 m!1665467))

(assert (=> bs!342161 m!1664603))

(declare-fun m!1665469 () Bool)

(assert (=> bs!342161 m!1665469))

(assert (=> b!1445150 d!419275))

(declare-fun b!1445558 () Bool)

(declare-fun e!922235 () Unit!23591)

(declare-fun Unit!23680 () Unit!23591)

(assert (=> b!1445558 (= e!922235 Unit!23680)))

(declare-fun b!1445555 () Bool)

(declare-fun res!654517 () Bool)

(declare-fun e!922234 () Bool)

(assert (=> b!1445555 (=> (not res!654517) (not e!922234))))

(declare-fun lt!497436 () Token!4932)

(declare-datatypes ((Option!2863 0))(
  ( (None!2862) (Some!2862 (v!22412 Rule!5070)) )
))
(declare-fun get!4587 (Option!2863) Rule!5070)

(declare-fun getRuleFromTag!220 (LexerInterface!2294 List!15059 String!17881) Option!2863)

(assert (=> b!1445555 (= res!654517 (matchR!1823 (regex!2635 (get!4587 (getRuleFromTag!220 Lexer!2292 (rules!11498 other!32) (tag!2899 (rule!4406 lt!497436))))) (list!5972 (charsOf!1521 lt!497436))))))

(declare-fun d!419277 () Bool)

(assert (=> d!419277 (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (list!5972 lt!497196))))))

(declare-fun lt!497442 () Unit!23591)

(assert (=> d!419277 (= lt!497442 e!922235)))

(declare-fun c!238146 () Bool)

(assert (=> d!419277 (= c!238146 (isEmpty!9346 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (list!5972 lt!497196)))))))

(declare-fun lt!497440 () Unit!23591)

(declare-fun lt!497447 () Unit!23591)

(assert (=> d!419277 (= lt!497440 lt!497447)))

(assert (=> d!419277 e!922234))

(declare-fun res!654516 () Bool)

(assert (=> d!419277 (=> (not res!654516) (not e!922234))))

(declare-fun isDefined!2316 (Option!2863) Bool)

(assert (=> d!419277 (= res!654516 (isDefined!2316 (getRuleFromTag!220 Lexer!2292 (rules!11498 other!32) (tag!2899 (rule!4406 lt!497436)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!220 (LexerInterface!2294 List!15059 List!15056 Token!4932) Unit!23591)

(assert (=> d!419277 (= lt!497447 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!220 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 lt!496943))) lt!497436))))

(declare-fun lt!497445 () Unit!23591)

(declare-fun lt!497439 () Unit!23591)

(assert (=> d!419277 (= lt!497445 lt!497439)))

(declare-fun lt!497444 () List!15056)

(assert (=> d!419277 (isPrefix!1197 lt!497444 (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (list!5972 lt!497196)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!105 (List!15056 List!15056 List!15056) Unit!23591)

(assert (=> d!419277 (= lt!497439 (lemmaPrefixStaysPrefixWhenAddingToSuffix!105 lt!497444 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (list!5972 lt!497196)))))

(assert (=> d!419277 (= lt!497444 (list!5972 (charsOf!1521 lt!497436)))))

(declare-fun lt!497438 () Unit!23591)

(declare-fun lt!497448 () Unit!23591)

(assert (=> d!419277 (= lt!497438 lt!497448)))

(declare-fun lt!497441 () List!15056)

(declare-fun lt!497450 () List!15056)

(assert (=> d!419277 (isPrefix!1197 lt!497441 (++!4033 lt!497441 lt!497450))))

(assert (=> d!419277 (= lt!497448 (lemmaConcatTwoListThenFirstIsPrefix!762 lt!497441 lt!497450))))

(assert (=> d!419277 (= lt!497450 (_2!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))))

(assert (=> d!419277 (= lt!497441 (list!5972 (charsOf!1521 lt!497436)))))

(assert (=> d!419277 (= lt!497436 (head!2931 (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) (seqFromList!1705 (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))))))

(assert (=> d!419277 (not (isEmpty!9342 (rules!11498 other!32)))))

(assert (=> d!419277 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!235 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 lt!496943))) (list!5972 lt!497196)) lt!497442)))

(declare-fun b!1445556 () Bool)

(assert (=> b!1445556 (= e!922234 (= (rule!4406 lt!497436) (get!4587 (getRuleFromTag!220 Lexer!2292 (rules!11498 other!32) (tag!2899 (rule!4406 lt!497436))))))))

(declare-fun b!1445557 () Bool)

(declare-fun Unit!23681 () Unit!23591)

(assert (=> b!1445557 (= e!922235 Unit!23681)))

(declare-fun lt!497435 () List!15056)

(assert (=> b!1445557 (= lt!497435 (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (list!5972 lt!497196)))))

(declare-fun lt!497446 () Unit!23591)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!113 (LexerInterface!2294 Rule!5070 List!15059 List!15056) Unit!23591)

(assert (=> b!1445557 (= lt!497446 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!113 Lexer!2292 (rule!4406 lt!497436) (rules!11498 other!32) lt!497435))))

(assert (=> b!1445557 (isEmpty!9346 (maxPrefixOneRule!656 Lexer!2292 (rule!4406 lt!497436) lt!497435))))

(declare-fun lt!497449 () Unit!23591)

(assert (=> b!1445557 (= lt!497449 lt!497446)))

(declare-fun lt!497443 () List!15056)

(assert (=> b!1445557 (= lt!497443 (list!5972 (charsOf!1521 lt!497436)))))

(declare-fun lt!497451 () Unit!23591)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!109 (LexerInterface!2294 Rule!5070 List!15056 List!15056) Unit!23591)

(assert (=> b!1445557 (= lt!497451 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!109 Lexer!2292 (rule!4406 lt!497436) lt!497443 (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (list!5972 lt!497196))))))

(assert (=> b!1445557 (not (matchR!1823 (regex!2635 (rule!4406 lt!497436)) lt!497443))))

(declare-fun lt!497437 () Unit!23591)

(assert (=> b!1445557 (= lt!497437 lt!497451)))

(assert (=> b!1445557 false))

(assert (= (and d!419277 res!654516) b!1445555))

(assert (= (and b!1445555 res!654517) b!1445556))

(assert (= (and d!419277 c!238146) b!1445557))

(assert (= (and d!419277 (not c!238146)) b!1445558))

(declare-fun m!1665471 () Bool)

(assert (=> b!1445555 m!1665471))

(declare-fun m!1665473 () Bool)

(assert (=> b!1445555 m!1665473))

(declare-fun m!1665475 () Bool)

(assert (=> b!1445555 m!1665475))

(declare-fun m!1665477 () Bool)

(assert (=> b!1445555 m!1665477))

(declare-fun m!1665479 () Bool)

(assert (=> b!1445555 m!1665479))

(assert (=> b!1445555 m!1665475))

(assert (=> b!1445555 m!1665471))

(assert (=> b!1445555 m!1665479))

(declare-fun m!1665481 () Bool)

(assert (=> d!419277 m!1665481))

(assert (=> d!419277 m!1665479))

(assert (=> d!419277 m!1665475))

(assert (=> d!419277 m!1664107))

(assert (=> d!419277 m!1664627))

(declare-fun m!1665483 () Bool)

(assert (=> d!419277 m!1665483))

(assert (=> d!419277 m!1665471))

(declare-fun m!1665485 () Bool)

(assert (=> d!419277 m!1665485))

(declare-fun m!1665487 () Bool)

(assert (=> d!419277 m!1665487))

(declare-fun m!1665489 () Bool)

(assert (=> d!419277 m!1665489))

(assert (=> d!419277 m!1665471))

(assert (=> d!419277 m!1664107))

(assert (=> d!419277 m!1664639))

(declare-fun m!1665491 () Bool)

(assert (=> d!419277 m!1665491))

(assert (=> d!419277 m!1664107))

(declare-fun m!1665493 () Bool)

(assert (=> d!419277 m!1665493))

(assert (=> d!419277 m!1665479))

(declare-fun m!1665495 () Bool)

(assert (=> d!419277 m!1665495))

(declare-fun m!1665497 () Bool)

(assert (=> d!419277 m!1665497))

(declare-fun m!1665499 () Bool)

(assert (=> d!419277 m!1665499))

(assert (=> d!419277 m!1665495))

(declare-fun m!1665501 () Bool)

(assert (=> d!419277 m!1665501))

(assert (=> d!419277 m!1664597))

(assert (=> d!419277 m!1665497))

(assert (=> d!419277 m!1665487))

(assert (=> d!419277 m!1665487))

(declare-fun m!1665503 () Bool)

(assert (=> d!419277 m!1665503))

(assert (=> d!419277 m!1664639))

(assert (=> d!419277 m!1664641))

(assert (=> d!419277 m!1664107))

(declare-fun m!1665505 () Bool)

(assert (=> d!419277 m!1665505))

(assert (=> d!419277 m!1665505))

(declare-fun m!1665507 () Bool)

(assert (=> d!419277 m!1665507))

(assert (=> d!419277 m!1665481))

(declare-fun m!1665509 () Bool)

(assert (=> d!419277 m!1665509))

(assert (=> d!419277 m!1664107))

(assert (=> d!419277 m!1664627))

(assert (=> d!419277 m!1665497))

(assert (=> b!1445556 m!1665471))

(assert (=> b!1445556 m!1665471))

(assert (=> b!1445556 m!1665473))

(declare-fun m!1665511 () Bool)

(assert (=> b!1445557 m!1665511))

(declare-fun m!1665513 () Bool)

(assert (=> b!1445557 m!1665513))

(declare-fun m!1665515 () Bool)

(assert (=> b!1445557 m!1665515))

(assert (=> b!1445557 m!1665479))

(assert (=> b!1445557 m!1665475))

(assert (=> b!1445557 m!1665497))

(declare-fun m!1665517 () Bool)

(assert (=> b!1445557 m!1665517))

(assert (=> b!1445557 m!1665513))

(declare-fun m!1665519 () Bool)

(assert (=> b!1445557 m!1665519))

(assert (=> b!1445557 m!1664107))

(assert (=> b!1445557 m!1664627))

(assert (=> b!1445557 m!1665497))

(assert (=> b!1445557 m!1665479))

(assert (=> b!1445150 d!419277))

(declare-fun b!1445559 () Bool)

(declare-fun e!922237 () Bool)

(declare-fun e!922236 () Bool)

(assert (=> b!1445559 (= e!922237 e!922236)))

(declare-fun res!654522 () Bool)

(assert (=> b!1445559 (=> (not res!654522) (not e!922236))))

(declare-fun lt!497455 () Option!2861)

(assert (=> b!1445559 (= res!654522 (isDefined!2314 lt!497455))))

(declare-fun d!419279 () Bool)

(assert (=> d!419279 e!922237))

(declare-fun res!654524 () Bool)

(assert (=> d!419279 (=> res!654524 e!922237)))

(assert (=> d!419279 (= res!654524 (isEmpty!9346 lt!497455))))

(declare-fun e!922238 () Option!2861)

(assert (=> d!419279 (= lt!497455 e!922238)))

(declare-fun c!238147 () Bool)

(assert (=> d!419279 (= c!238147 (and ((_ is Cons!14993) (rules!11498 other!32)) ((_ is Nil!14993) (t!130178 (rules!11498 other!32)))))))

(declare-fun lt!497454 () Unit!23591)

(declare-fun lt!497452 () Unit!23591)

(assert (=> d!419279 (= lt!497454 lt!497452)))

(assert (=> d!419279 (isPrefix!1197 (list!5972 lt!497183) (list!5972 lt!497183))))

(assert (=> d!419279 (= lt!497452 (lemmaIsPrefixRefl!830 (list!5972 lt!497183) (list!5972 lt!497183)))))

(assert (=> d!419279 (rulesValidInductive!817 Lexer!2292 (rules!11498 other!32))))

(assert (=> d!419279 (= (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 lt!497183)) lt!497455)))

(declare-fun b!1445560 () Bool)

(declare-fun call!97783 () Option!2861)

(assert (=> b!1445560 (= e!922238 call!97783)))

(declare-fun b!1445561 () Bool)

(declare-fun res!654521 () Bool)

(assert (=> b!1445561 (=> (not res!654521) (not e!922236))))

(assert (=> b!1445561 (= res!654521 (= (++!4033 (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!497455)))) (_2!7967 (get!4585 lt!497455))) (list!5972 lt!497183)))))

(declare-fun b!1445562 () Bool)

(declare-fun res!654519 () Bool)

(assert (=> b!1445562 (=> (not res!654519) (not e!922236))))

(assert (=> b!1445562 (= res!654519 (< (size!12289 (_2!7967 (get!4585 lt!497455))) (size!12289 (list!5972 lt!497183))))))

(declare-fun bm!97778 () Bool)

(assert (=> bm!97778 (= call!97783 (maxPrefixOneRule!656 Lexer!2292 (h!20394 (rules!11498 other!32)) (list!5972 lt!497183)))))

(declare-fun b!1445563 () Bool)

(declare-fun res!654523 () Bool)

(assert (=> b!1445563 (=> (not res!654523) (not e!922236))))

(assert (=> b!1445563 (= res!654523 (= (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!497455)))) (originalCharacters!3497 (_1!7967 (get!4585 lt!497455)))))))

(declare-fun b!1445564 () Bool)

(declare-fun res!654518 () Bool)

(assert (=> b!1445564 (=> (not res!654518) (not e!922236))))

(assert (=> b!1445564 (= res!654518 (matchR!1823 (regex!2635 (rule!4406 (_1!7967 (get!4585 lt!497455)))) (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!497455))))))))

(declare-fun b!1445565 () Bool)

(declare-fun res!654520 () Bool)

(assert (=> b!1445565 (=> (not res!654520) (not e!922236))))

(assert (=> b!1445565 (= res!654520 (= (value!84745 (_1!7967 (get!4585 lt!497455))) (apply!3870 (transformation!2635 (rule!4406 (_1!7967 (get!4585 lt!497455)))) (seqFromList!1705 (originalCharacters!3497 (_1!7967 (get!4585 lt!497455)))))))))

(declare-fun b!1445566 () Bool)

(assert (=> b!1445566 (= e!922236 (contains!2871 (rules!11498 other!32) (rule!4406 (_1!7967 (get!4585 lt!497455)))))))

(declare-fun b!1445567 () Bool)

(declare-fun lt!497453 () Option!2861)

(declare-fun lt!497456 () Option!2861)

(assert (=> b!1445567 (= e!922238 (ite (and ((_ is None!2860) lt!497453) ((_ is None!2860) lt!497456)) None!2860 (ite ((_ is None!2860) lt!497456) lt!497453 (ite ((_ is None!2860) lt!497453) lt!497456 (ite (>= (size!12285 (_1!7967 (v!22408 lt!497453))) (size!12285 (_1!7967 (v!22408 lt!497456)))) lt!497453 lt!497456)))))))

(assert (=> b!1445567 (= lt!497453 call!97783)))

(assert (=> b!1445567 (= lt!497456 (maxPrefix!1187 Lexer!2292 (t!130178 (rules!11498 other!32)) (list!5972 lt!497183)))))

(assert (= (and d!419279 c!238147) b!1445560))

(assert (= (and d!419279 (not c!238147)) b!1445567))

(assert (= (or b!1445560 b!1445567) bm!97778))

(assert (= (and d!419279 (not res!654524)) b!1445559))

(assert (= (and b!1445559 res!654522) b!1445563))

(assert (= (and b!1445563 res!654523) b!1445562))

(assert (= (and b!1445562 res!654519) b!1445561))

(assert (= (and b!1445561 res!654521) b!1445565))

(assert (= (and b!1445565 res!654520) b!1445564))

(assert (= (and b!1445564 res!654518) b!1445566))

(declare-fun m!1665521 () Bool)

(assert (=> b!1445566 m!1665521))

(declare-fun m!1665523 () Bool)

(assert (=> b!1445566 m!1665523))

(assert (=> bm!97778 m!1664615))

(declare-fun m!1665525 () Bool)

(assert (=> bm!97778 m!1665525))

(assert (=> b!1445564 m!1665521))

(declare-fun m!1665527 () Bool)

(assert (=> b!1445564 m!1665527))

(assert (=> b!1445564 m!1665527))

(declare-fun m!1665529 () Bool)

(assert (=> b!1445564 m!1665529))

(assert (=> b!1445564 m!1665529))

(declare-fun m!1665531 () Bool)

(assert (=> b!1445564 m!1665531))

(assert (=> b!1445565 m!1665521))

(declare-fun m!1665533 () Bool)

(assert (=> b!1445565 m!1665533))

(assert (=> b!1445565 m!1665533))

(declare-fun m!1665535 () Bool)

(assert (=> b!1445565 m!1665535))

(assert (=> b!1445561 m!1665521))

(assert (=> b!1445561 m!1665527))

(assert (=> b!1445561 m!1665527))

(assert (=> b!1445561 m!1665529))

(assert (=> b!1445561 m!1665529))

(declare-fun m!1665537 () Bool)

(assert (=> b!1445561 m!1665537))

(assert (=> b!1445562 m!1665521))

(declare-fun m!1665539 () Bool)

(assert (=> b!1445562 m!1665539))

(assert (=> b!1445562 m!1664615))

(declare-fun m!1665541 () Bool)

(assert (=> b!1445562 m!1665541))

(declare-fun m!1665543 () Bool)

(assert (=> d!419279 m!1665543))

(assert (=> d!419279 m!1664615))

(assert (=> d!419279 m!1664615))

(declare-fun m!1665545 () Bool)

(assert (=> d!419279 m!1665545))

(assert (=> d!419279 m!1664615))

(assert (=> d!419279 m!1664615))

(declare-fun m!1665547 () Bool)

(assert (=> d!419279 m!1665547))

(assert (=> d!419279 m!1665317))

(assert (=> b!1445563 m!1665521))

(assert (=> b!1445563 m!1665527))

(assert (=> b!1445563 m!1665527))

(assert (=> b!1445563 m!1665529))

(declare-fun m!1665549 () Bool)

(assert (=> b!1445559 m!1665549))

(assert (=> b!1445567 m!1664615))

(declare-fun m!1665551 () Bool)

(assert (=> b!1445567 m!1665551))

(assert (=> b!1445150 d!419279))

(declare-fun d!419281 () Bool)

(declare-fun lt!497457 () BalanceConc!10132)

(assert (=> d!419281 (= (list!5972 lt!497457) (printList!713 Lexer!2292 (list!5973 (seqFromList!1704 (t!130177 lt!496943)))))))

(assert (=> d!419281 (= lt!497457 (printTailRec!685 Lexer!2292 (seqFromList!1704 (t!130177 lt!496943)) 0 (BalanceConc!10133 Empty!5096)))))

(assert (=> d!419281 (= (print!1075 Lexer!2292 (seqFromList!1704 (t!130177 lt!496943))) lt!497457)))

(declare-fun bs!342162 () Bool)

(assert (= bs!342162 d!419281))

(declare-fun m!1665553 () Bool)

(assert (=> bs!342162 m!1665553))

(assert (=> bs!342162 m!1664623))

(declare-fun m!1665555 () Bool)

(assert (=> bs!342162 m!1665555))

(assert (=> bs!342162 m!1665555))

(declare-fun m!1665557 () Bool)

(assert (=> bs!342162 m!1665557))

(assert (=> bs!342162 m!1664623))

(declare-fun m!1665559 () Bool)

(assert (=> bs!342162 m!1665559))

(assert (=> b!1445150 d!419281))

(declare-fun d!419283 () Bool)

(assert (=> d!419283 (= (list!5973 (_1!7966 lt!497179)) (list!5973 (prepend!415 (seqFromList!1704 (t!130177 (t!130177 lt!496943))) (h!20393 (t!130177 lt!496943)))))))

(declare-fun lt!497460 () Unit!23591)

(declare-fun choose!8913 (Token!4932 List!15058 BalanceConc!10134) Unit!23591)

(assert (=> d!419283 (= lt!497460 (choose!8913 (h!20393 (t!130177 lt!496943)) (t!130177 (t!130177 lt!496943)) (_1!7966 lt!497179)))))

(declare-fun $colon$colon!244 (List!15058 Token!4932) List!15058)

(assert (=> d!419283 (= (list!5973 (_1!7966 lt!497179)) (list!5973 (seqFromList!1704 ($colon$colon!244 (t!130177 (t!130177 lt!496943)) (h!20393 (t!130177 lt!496943))))))))

(assert (=> d!419283 (= (seqFromListBHdTlConstructive!91 (h!20393 (t!130177 lt!496943)) (t!130177 (t!130177 lt!496943)) (_1!7966 lt!497179)) lt!497460)))

(declare-fun bs!342163 () Bool)

(assert (= bs!342163 d!419283))

(declare-fun m!1665561 () Bool)

(assert (=> bs!342163 m!1665561))

(declare-fun m!1665563 () Bool)

(assert (=> bs!342163 m!1665563))

(declare-fun m!1665565 () Bool)

(assert (=> bs!342163 m!1665565))

(assert (=> bs!342163 m!1664655))

(declare-fun m!1665567 () Bool)

(assert (=> bs!342163 m!1665567))

(assert (=> bs!342163 m!1664617))

(assert (=> bs!342163 m!1664619))

(assert (=> bs!342163 m!1664643))

(assert (=> bs!342163 m!1664617))

(assert (=> bs!342163 m!1664619))

(assert (=> bs!342163 m!1665561))

(assert (=> bs!342163 m!1665563))

(assert (=> b!1445150 d!419283))

(declare-fun b!1445704 () Bool)

(declare-fun e!922309 () Unit!23591)

(declare-fun Unit!23682 () Unit!23591)

(assert (=> b!1445704 (= e!922309 Unit!23682)))

(declare-fun b!1445705 () Bool)

(assert (=> b!1445705 false))

(declare-fun lt!497895 () Unit!23591)

(declare-fun lt!497914 () Unit!23591)

(assert (=> b!1445705 (= lt!497895 lt!497914)))

(declare-fun lt!497879 () Token!4932)

(declare-fun lt!497891 () List!15056)

(assert (=> b!1445705 (not (matchR!1823 (regex!2635 (rule!4406 lt!497879)) lt!497891))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!46 (LexerInterface!2294 List!15059 Rule!5070 List!15056 List!15056 Rule!5070) Unit!23591)

(assert (=> b!1445705 (= lt!497914 (lemmaMaxPrefNoSmallerRuleMatches!46 Lexer!2292 (rules!11498 other!32) (rule!4406 (h!20393 lt!496943)) lt!497891 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (rule!4406 lt!497879)))))

(assert (=> b!1445705 (= lt!497891 (list!5972 (charsOf!1521 (h!20393 lt!496943))))))

(declare-fun e!922305 () Unit!23591)

(declare-fun Unit!23683 () Unit!23591)

(assert (=> b!1445705 (= e!922305 Unit!23683)))

(declare-fun b!1445706 () Bool)

(declare-fun e!922303 () Unit!23591)

(declare-fun Unit!23684 () Unit!23591)

(assert (=> b!1445706 (= e!922303 Unit!23684)))

(declare-fun c!238188 () Bool)

(declare-fun getIndex!74 (List!15059 Rule!5070) Int)

(assert (=> b!1445706 (= c!238188 (< (getIndex!74 (rules!11498 other!32) (rule!4406 (h!20393 lt!496943))) (getIndex!74 (rules!11498 other!32) (rule!4406 lt!497879))))))

(declare-fun lt!497899 () Unit!23591)

(declare-fun e!922308 () Unit!23591)

(assert (=> b!1445706 (= lt!497899 e!922308)))

(declare-fun c!238189 () Bool)

(assert (=> b!1445706 (= c!238189 (< (getIndex!74 (rules!11498 other!32) (rule!4406 lt!497879)) (getIndex!74 (rules!11498 other!32) (rule!4406 (h!20393 lt!496943)))))))

(declare-fun lt!497859 () Unit!23591)

(assert (=> b!1445706 (= lt!497859 e!922305)))

(declare-fun c!238192 () Bool)

(assert (=> b!1445706 (= c!238192 (= (getIndex!74 (rules!11498 other!32) (rule!4406 lt!497879)) (getIndex!74 (rules!11498 other!32) (rule!4406 (h!20393 lt!496943)))))))

(declare-fun lt!497872 () Unit!23591)

(declare-fun e!922304 () Unit!23591)

(assert (=> b!1445706 (= lt!497872 e!922304)))

(assert (=> b!1445706 false))

(declare-fun b!1445707 () Bool)

(declare-fun e!922307 () Bool)

(assert (=> b!1445707 (= e!922307 (= (rule!4406 lt!497879) (get!4587 (getRuleFromTag!220 Lexer!2292 (rules!11498 other!32) (tag!2899 (rule!4406 lt!497879))))))))

(declare-fun b!1445708 () Bool)

(declare-fun Unit!23685 () Unit!23591)

(assert (=> b!1445708 (= e!922303 Unit!23685)))

(declare-fun b!1445709 () Bool)

(declare-fun Unit!23686 () Unit!23591)

(assert (=> b!1445709 (= e!922309 Unit!23686)))

(declare-fun lt!497926 () Unit!23591)

(declare-fun lt!497908 () List!15056)

(declare-fun lt!497927 () List!15056)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!6 (LexerInterface!2294 List!15059 List!15056 Token!4932 Rule!5070 List!15056) Unit!23591)

(assert (=> b!1445709 (= lt!497926 (lemmaMaxPrefixThenMatchesRulesRegex!6 Lexer!2292 (rules!11498 other!32) lt!497908 lt!497879 (rule!4406 lt!497879) lt!497927))))

(declare-fun rulesRegex!397 (LexerInterface!2294 List!15059) Regex!3949)

(assert (=> b!1445709 (matchR!1823 (rulesRegex!397 Lexer!2292 (rules!11498 other!32)) (list!5972 (charsOf!1521 lt!497879)))))

(declare-fun lt!497885 () Unit!23591)

(assert (=> b!1445709 (= lt!497885 lt!497926)))

(declare-fun lt!497894 () List!15056)

(assert (=> b!1445709 (= lt!497894 (list!5972 (charsOf!1521 (h!20393 lt!496943))))))

(declare-fun lt!497907 () List!15056)

(assert (=> b!1445709 (= lt!497907 (list!5972 (charsOf!1521 (h!20393 lt!496943))))))

(declare-fun lt!497886 () List!15056)

(declare-fun getSuffix!651 (List!15056 List!15056) List!15056)

(assert (=> b!1445709 (= lt!497886 (getSuffix!651 lt!497908 (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))

(declare-fun lt!497915 () Unit!23591)

(declare-fun lemmaSamePrefixThenSameSuffix!603 (List!15056 List!15056 List!15056 List!15056 List!15056) Unit!23591)

(assert (=> b!1445709 (= lt!497915 (lemmaSamePrefixThenSameSuffix!603 lt!497894 (list!5972 lt!497196) lt!497907 lt!497886 lt!497908))))

(assert (=> b!1445709 (= (list!5972 lt!497196) lt!497886)))

(declare-fun lt!497876 () Unit!23591)

(assert (=> b!1445709 (= lt!497876 lt!497915)))

(declare-fun lt!497888 () List!15056)

(assert (=> b!1445709 (= lt!497888 (list!5972 (charsOf!1521 (h!20393 lt!496943))))))

(declare-fun lt!497889 () Unit!23591)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!94 (List!15056 List!15056) Unit!23591)

(assert (=> b!1445709 (= lt!497889 (lemmaAddHeadSuffixToPrefixStillPrefix!94 lt!497888 lt!497908))))

(assert (=> b!1445709 (isPrefix!1197 (++!4033 lt!497888 (Cons!14990 (head!2929 (getSuffix!651 lt!497908 lt!497888)) Nil!14990)) lt!497908)))

(declare-fun lt!497896 () Unit!23591)

(assert (=> b!1445709 (= lt!497896 lt!497889)))

(declare-fun lt!497922 () List!15056)

(assert (=> b!1445709 (= lt!497922 (list!5972 (charsOf!1521 lt!497879)))))

(declare-fun lt!497906 () List!15056)

(assert (=> b!1445709 (= lt!497906 (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (Cons!14990 (head!2929 (list!5972 lt!497196)) Nil!14990)))))

(declare-fun lt!497911 () Unit!23591)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!6 (List!15056 List!15056 List!15056) Unit!23591)

(assert (=> b!1445709 (= lt!497911 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!6 lt!497922 lt!497906 lt!497908))))

(assert (=> b!1445709 (isPrefix!1197 lt!497906 lt!497922)))

(declare-fun lt!497860 () Unit!23591)

(assert (=> b!1445709 (= lt!497860 lt!497911)))

(declare-fun lt!497870 () Regex!3949)

(assert (=> b!1445709 (= lt!497870 (rulesRegex!397 Lexer!2292 (rules!11498 other!32)))))

(declare-fun lt!497901 () List!15056)

(assert (=> b!1445709 (= lt!497901 (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (Cons!14990 (head!2929 (list!5972 lt!497196)) Nil!14990)))))

(declare-fun lt!497865 () List!15056)

(assert (=> b!1445709 (= lt!497865 (list!5972 (charsOf!1521 lt!497879)))))

(declare-fun lt!497892 () Unit!23591)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!7 (Regex!3949 List!15056 List!15056) Unit!23591)

(assert (=> b!1445709 (= lt!497892 (lemmaNotPrefixMatchThenCannotMatchLonger!7 lt!497870 lt!497901 lt!497865))))

(assert (=> b!1445709 (not (matchR!1823 lt!497870 lt!497865))))

(declare-fun lt!497867 () Unit!23591)

(assert (=> b!1445709 (= lt!497867 lt!497892)))

(assert (=> b!1445709 false))

(declare-fun b!1445710 () Bool)

(declare-fun e!922306 () Unit!23591)

(declare-fun Unit!23687 () Unit!23591)

(assert (=> b!1445710 (= e!922306 Unit!23687)))

(declare-fun lt!497880 () List!15056)

(assert (=> b!1445710 (= lt!497880 (list!5972 (charsOf!1521 lt!497879)))))

(declare-fun lt!497910 () List!15056)

(assert (=> b!1445710 (= lt!497910 (list!5972 (charsOf!1521 (h!20393 lt!496943))))))

(declare-fun lt!497923 () Unit!23591)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!96 (LexerInterface!2294 List!15059 Rule!5070 List!15056 List!15056 List!15056 Rule!5070) Unit!23591)

(assert (=> b!1445710 (= lt!497923 (lemmaMaxPrefixOutputsMaxPrefix!96 Lexer!2292 (rules!11498 other!32) (rule!4406 lt!497879) lt!497880 lt!497908 lt!497910 (rule!4406 (h!20393 lt!496943))))))

(assert (=> b!1445710 (not (matchR!1823 (regex!2635 (rule!4406 (h!20393 lt!496943))) lt!497910))))

(declare-fun lt!497877 () Unit!23591)

(assert (=> b!1445710 (= lt!497877 lt!497923)))

(assert (=> b!1445710 false))

(declare-fun b!1445711 () Bool)

(declare-fun res!654583 () Bool)

(assert (=> b!1445711 (=> (not res!654583) (not e!922307))))

(assert (=> b!1445711 (= res!654583 (matchR!1823 (regex!2635 (get!4587 (getRuleFromTag!220 Lexer!2292 (rules!11498 other!32) (tag!2899 (rule!4406 lt!497879))))) (list!5972 (charsOf!1521 lt!497879))))))

(declare-fun d!419285 () Bool)

(assert (=> d!419285 (= (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (list!5972 lt!497196))) (Some!2860 (tuple2!14163 (h!20393 lt!496943) (list!5972 lt!497196))))))

(declare-fun lt!497905 () Unit!23591)

(declare-fun Unit!23688 () Unit!23591)

(assert (=> d!419285 (= lt!497905 Unit!23688)))

(declare-fun lt!497887 () Unit!23591)

(assert (=> d!419285 (= lt!497887 e!922303)))

(declare-fun c!238191 () Bool)

(assert (=> d!419285 (= c!238191 (not (= (rule!4406 lt!497879) (rule!4406 (h!20393 lt!496943)))))))

(declare-fun lt!497861 () Unit!23591)

(declare-fun lt!497871 () Unit!23591)

(assert (=> d!419285 (= lt!497861 lt!497871)))

(assert (=> d!419285 (= (list!5972 lt!497196) lt!497927)))

(assert (=> d!419285 (= lt!497871 (lemmaSamePrefixThenSameSuffix!603 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (list!5972 lt!497196) (list!5972 (charsOf!1521 (h!20393 lt!496943))) lt!497927 lt!497908))))

(declare-fun lt!497900 () Unit!23591)

(declare-fun lt!497913 () Unit!23591)

(assert (=> d!419285 (= lt!497900 lt!497913)))

(declare-fun lt!497858 () List!15056)

(declare-fun lt!497921 () List!15056)

(assert (=> d!419285 (= lt!497858 lt!497921)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!105 (List!15056 List!15056 List!15056) Unit!23591)

(assert (=> d!419285 (= lt!497913 (lemmaIsPrefixSameLengthThenSameList!105 lt!497858 lt!497921 lt!497908))))

(assert (=> d!419285 (= lt!497921 (list!5972 (charsOf!1521 (h!20393 lt!496943))))))

(assert (=> d!419285 (= lt!497858 (list!5972 (charsOf!1521 lt!497879)))))

(declare-fun lt!497898 () Unit!23591)

(assert (=> d!419285 (= lt!497898 e!922306)))

(declare-fun c!238193 () Bool)

(assert (=> d!419285 (= c!238193 (< (size!12293 (charsOf!1521 lt!497879)) (size!12293 (charsOf!1521 (h!20393 lt!496943)))))))

(declare-fun lt!497924 () Unit!23591)

(assert (=> d!419285 (= lt!497924 e!922309)))

(declare-fun c!238190 () Bool)

(assert (=> d!419285 (= c!238190 (> (size!12293 (charsOf!1521 lt!497879)) (size!12293 (charsOf!1521 (h!20393 lt!496943)))))))

(declare-fun lt!497918 () Unit!23591)

(declare-fun lt!497866 () Unit!23591)

(assert (=> d!419285 (= lt!497918 lt!497866)))

(assert (=> d!419285 (matchR!1823 (rulesRegex!397 Lexer!2292 (rules!11498 other!32)) (list!5972 (charsOf!1521 (h!20393 lt!496943))))))

(assert (=> d!419285 (= lt!497866 (lemmaMaxPrefixThenMatchesRulesRegex!6 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 lt!496943))) (h!20393 lt!496943) (rule!4406 (h!20393 lt!496943)) Nil!14990))))

(declare-fun lt!497920 () Unit!23591)

(declare-fun lt!497857 () Unit!23591)

(assert (=> d!419285 (= lt!497920 lt!497857)))

(declare-fun lt!497882 () List!15056)

(assert (=> d!419285 (= lt!497927 lt!497882)))

(declare-fun lt!497881 () List!15056)

(declare-fun lt!497864 () List!15056)

(assert (=> d!419285 (= lt!497857 (lemmaSamePrefixThenSameSuffix!603 lt!497881 lt!497927 lt!497864 lt!497882 lt!497908))))

(assert (=> d!419285 (= lt!497882 (getSuffix!651 lt!497908 (list!5972 (charsOf!1521 lt!497879))))))

(assert (=> d!419285 (= lt!497864 (list!5972 (charsOf!1521 lt!497879)))))

(assert (=> d!419285 (= lt!497881 (list!5972 (charsOf!1521 lt!497879)))))

(declare-fun lt!497884 () Unit!23591)

(declare-fun lt!497909 () Unit!23591)

(assert (=> d!419285 (= lt!497884 lt!497909)))

(declare-fun lt!497897 () List!15056)

(assert (=> d!419285 (= (maxPrefixOneRule!656 Lexer!2292 (rule!4406 lt!497879) lt!497908) (Some!2860 (tuple2!14163 (Token!4933 (apply!3870 (transformation!2635 (rule!4406 lt!497879)) (seqFromList!1705 lt!497897)) (rule!4406 lt!497879) (size!12289 lt!497897) lt!497897) lt!497927)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!196 (LexerInterface!2294 List!15059 List!15056 List!15056 List!15056 Rule!5070) Unit!23591)

(assert (=> d!419285 (= lt!497909 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!196 Lexer!2292 (rules!11498 other!32) lt!497897 lt!497908 lt!497927 (rule!4406 lt!497879)))))

(assert (=> d!419285 (= lt!497897 (list!5972 (charsOf!1521 lt!497879)))))

(declare-fun lt!497925 () Unit!23591)

(declare-fun lemmaCharactersSize!302 (Token!4932) Unit!23591)

(assert (=> d!419285 (= lt!497925 (lemmaCharactersSize!302 lt!497879))))

(declare-fun lt!497863 () Unit!23591)

(declare-fun lemmaEqSameImage!113 (TokenValueInjection!5110 BalanceConc!10132 BalanceConc!10132) Unit!23591)

(assert (=> d!419285 (= lt!497863 (lemmaEqSameImage!113 (transformation!2635 (rule!4406 lt!497879)) (charsOf!1521 lt!497879) (seqFromList!1705 (originalCharacters!3497 lt!497879))))))

(declare-fun lt!497912 () Unit!23591)

(declare-fun lemmaSemiInverse!348 (TokenValueInjection!5110 BalanceConc!10132) Unit!23591)

(assert (=> d!419285 (= lt!497912 (lemmaSemiInverse!348 (transformation!2635 (rule!4406 lt!497879)) (charsOf!1521 lt!497879)))))

(declare-fun lt!497916 () Unit!23591)

(declare-fun lemmaInv!380 (TokenValueInjection!5110) Unit!23591)

(assert (=> d!419285 (= lt!497916 (lemmaInv!380 (transformation!2635 (rule!4406 lt!497879))))))

(declare-fun lt!497875 () Unit!23591)

(declare-fun lt!497873 () Unit!23591)

(assert (=> d!419285 (= lt!497875 lt!497873)))

(declare-fun lt!497868 () List!15056)

(assert (=> d!419285 (isPrefix!1197 lt!497868 (++!4033 lt!497868 lt!497927))))

(assert (=> d!419285 (= lt!497873 (lemmaConcatTwoListThenFirstIsPrefix!762 lt!497868 lt!497927))))

(assert (=> d!419285 (= lt!497868 (list!5972 (charsOf!1521 lt!497879)))))

(declare-fun lt!497878 () Unit!23591)

(declare-fun lt!497917 () Unit!23591)

(assert (=> d!419285 (= lt!497878 lt!497917)))

(assert (=> d!419285 e!922307))

(declare-fun res!654584 () Bool)

(assert (=> d!419285 (=> (not res!654584) (not e!922307))))

(assert (=> d!419285 (= res!654584 (isDefined!2316 (getRuleFromTag!220 Lexer!2292 (rules!11498 other!32) (tag!2899 (rule!4406 lt!497879)))))))

(assert (=> d!419285 (= lt!497917 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!220 Lexer!2292 (rules!11498 other!32) lt!497908 lt!497879))))

(declare-fun lt!497919 () Option!2861)

(assert (=> d!419285 (= lt!497927 (_2!7967 (get!4585 lt!497919)))))

(assert (=> d!419285 (= lt!497879 (_1!7967 (get!4585 lt!497919)))))

(declare-fun lt!497869 () Unit!23591)

(assert (=> d!419285 (= lt!497869 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!235 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 lt!496943))) (list!5972 lt!497196)))))

(assert (=> d!419285 (= lt!497919 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) lt!497908))))

(declare-fun lt!497903 () Unit!23591)

(declare-fun lt!497883 () Unit!23591)

(assert (=> d!419285 (= lt!497903 lt!497883)))

(declare-fun lt!497890 () List!15056)

(assert (=> d!419285 (isPrefix!1197 lt!497890 (++!4033 lt!497890 (list!5972 lt!497196)))))

(assert (=> d!419285 (= lt!497883 (lemmaConcatTwoListThenFirstIsPrefix!762 lt!497890 (list!5972 lt!497196)))))

(assert (=> d!419285 (= lt!497890 (list!5972 (charsOf!1521 (h!20393 lt!496943))))))

(assert (=> d!419285 (= lt!497908 (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496943))) (list!5972 lt!497196)))))

(assert (=> d!419285 (not (isEmpty!9342 (rules!11498 other!32)))))

(assert (=> d!419285 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!33 Lexer!2292 (rules!11498 other!32) (h!20393 lt!496943) (rule!4406 (h!20393 lt!496943)) (list!5972 lt!497196)) lt!497905)))

(declare-fun b!1445712 () Bool)

(declare-fun Unit!23689 () Unit!23591)

(assert (=> b!1445712 (= e!922304 Unit!23689)))

(declare-fun b!1445713 () Bool)

(assert (=> b!1445713 false))

(declare-fun lt!497874 () Unit!23591)

(declare-fun lt!497862 () Unit!23591)

(assert (=> b!1445713 (= lt!497874 lt!497862)))

(assert (=> b!1445713 (= (rule!4406 lt!497879) (rule!4406 (h!20393 lt!496943)))))

(declare-fun lemmaSameIndexThenSameElement!22 (List!15059 Rule!5070 Rule!5070) Unit!23591)

(assert (=> b!1445713 (= lt!497862 (lemmaSameIndexThenSameElement!22 (rules!11498 other!32) (rule!4406 lt!497879) (rule!4406 (h!20393 lt!496943))))))

(declare-fun Unit!23690 () Unit!23591)

(assert (=> b!1445713 (= e!922304 Unit!23690)))

(declare-fun b!1445714 () Bool)

(declare-fun Unit!23691 () Unit!23591)

(assert (=> b!1445714 (= e!922305 Unit!23691)))

(declare-fun b!1445715 () Bool)

(declare-fun Unit!23692 () Unit!23591)

(assert (=> b!1445715 (= e!922306 Unit!23692)))

(declare-fun b!1445716 () Bool)

(declare-fun Unit!23693 () Unit!23591)

(assert (=> b!1445716 (= e!922308 Unit!23693)))

(declare-fun b!1445717 () Bool)

(assert (=> b!1445717 false))

(declare-fun lt!497893 () Unit!23591)

(declare-fun lt!497902 () Unit!23591)

(assert (=> b!1445717 (= lt!497893 lt!497902)))

(declare-fun lt!497904 () List!15056)

(assert (=> b!1445717 (not (matchR!1823 (regex!2635 (rule!4406 (h!20393 lt!496943))) lt!497904))))

(assert (=> b!1445717 (= lt!497902 (lemmaMaxPrefNoSmallerRuleMatches!46 Lexer!2292 (rules!11498 other!32) (rule!4406 lt!497879) lt!497904 lt!497908 (rule!4406 (h!20393 lt!496943))))))

(assert (=> b!1445717 (= lt!497904 (list!5972 (charsOf!1521 lt!497879)))))

(declare-fun Unit!23694 () Unit!23591)

(assert (=> b!1445717 (= e!922308 Unit!23694)))

(assert (= (and d!419285 res!654584) b!1445711))

(assert (= (and b!1445711 res!654583) b!1445707))

(assert (= (and d!419285 c!238190) b!1445709))

(assert (= (and d!419285 (not c!238190)) b!1445704))

(assert (= (and d!419285 c!238193) b!1445710))

(assert (= (and d!419285 (not c!238193)) b!1445715))

(assert (= (and d!419285 c!238191) b!1445706))

(assert (= (and d!419285 (not c!238191)) b!1445708))

(assert (= (and b!1445706 c!238188) b!1445717))

(assert (= (and b!1445706 (not c!238188)) b!1445716))

(assert (= (and b!1445706 c!238189) b!1445705))

(assert (= (and b!1445706 (not c!238189)) b!1445714))

(assert (= (and b!1445706 c!238192) b!1445713))

(assert (= (and b!1445706 (not c!238192)) b!1445712))

(declare-fun m!1665859 () Bool)

(assert (=> b!1445705 m!1665859))

(assert (=> b!1445705 m!1664105))

(assert (=> b!1445705 m!1664105))

(assert (=> b!1445705 m!1664107))

(assert (=> b!1445705 m!1664107))

(declare-fun m!1665861 () Bool)

(assert (=> b!1445705 m!1665861))

(assert (=> d!419285 m!1664105))

(assert (=> d!419285 m!1664107))

(declare-fun m!1665863 () Bool)

(assert (=> d!419285 m!1665863))

(declare-fun m!1665865 () Bool)

(assert (=> d!419285 m!1665865))

(declare-fun m!1665867 () Bool)

(assert (=> d!419285 m!1665867))

(assert (=> d!419285 m!1664627))

(declare-fun m!1665869 () Bool)

(assert (=> d!419285 m!1665869))

(declare-fun m!1665871 () Bool)

(assert (=> d!419285 m!1665871))

(declare-fun m!1665873 () Bool)

(assert (=> d!419285 m!1665873))

(assert (=> d!419285 m!1664107))

(assert (=> d!419285 m!1664627))

(assert (=> d!419285 m!1664657))

(assert (=> d!419285 m!1665867))

(declare-fun m!1665875 () Bool)

(assert (=> d!419285 m!1665875))

(assert (=> d!419285 m!1664105))

(assert (=> d!419285 m!1665497))

(assert (=> d!419285 m!1665487))

(declare-fun m!1665877 () Bool)

(assert (=> d!419285 m!1665877))

(declare-fun m!1665879 () Bool)

(assert (=> d!419285 m!1665879))

(declare-fun m!1665881 () Bool)

(assert (=> d!419285 m!1665881))

(declare-fun m!1665883 () Bool)

(assert (=> d!419285 m!1665883))

(assert (=> d!419285 m!1664107))

(declare-fun m!1665885 () Bool)

(assert (=> d!419285 m!1665885))

(declare-fun m!1665887 () Bool)

(assert (=> d!419285 m!1665887))

(declare-fun m!1665889 () Bool)

(assert (=> d!419285 m!1665889))

(assert (=> d!419285 m!1664107))

(declare-fun m!1665891 () Bool)

(assert (=> d!419285 m!1665891))

(declare-fun m!1665893 () Bool)

(assert (=> d!419285 m!1665893))

(declare-fun m!1665895 () Bool)

(assert (=> d!419285 m!1665895))

(assert (=> d!419285 m!1664627))

(declare-fun m!1665897 () Bool)

(assert (=> d!419285 m!1665897))

(declare-fun m!1665899 () Bool)

(assert (=> d!419285 m!1665899))

(assert (=> d!419285 m!1665893))

(declare-fun m!1665901 () Bool)

(assert (=> d!419285 m!1665901))

(declare-fun m!1665903 () Bool)

(assert (=> d!419285 m!1665903))

(declare-fun m!1665905 () Bool)

(assert (=> d!419285 m!1665905))

(assert (=> d!419285 m!1665893))

(assert (=> d!419285 m!1665871))

(assert (=> d!419285 m!1665889))

(declare-fun m!1665907 () Bool)

(assert (=> d!419285 m!1665907))

(declare-fun m!1665909 () Bool)

(assert (=> d!419285 m!1665909))

(declare-fun m!1665911 () Bool)

(assert (=> d!419285 m!1665911))

(declare-fun m!1665913 () Bool)

(assert (=> d!419285 m!1665913))

(assert (=> d!419285 m!1665877))

(assert (=> d!419285 m!1664105))

(declare-fun m!1665915 () Bool)

(assert (=> d!419285 m!1665915))

(assert (=> d!419285 m!1664107))

(assert (=> d!419285 m!1664627))

(assert (=> d!419285 m!1664107))

(declare-fun m!1665917 () Bool)

(assert (=> d!419285 m!1665917))

(assert (=> d!419285 m!1664597))

(assert (=> d!419285 m!1665893))

(assert (=> d!419285 m!1665865))

(declare-fun m!1665919 () Bool)

(assert (=> d!419285 m!1665919))

(assert (=> d!419285 m!1664107))

(assert (=> d!419285 m!1664627))

(assert (=> d!419285 m!1665497))

(declare-fun m!1665921 () Bool)

(assert (=> d!419285 m!1665921))

(assert (=> d!419285 m!1665869))

(declare-fun m!1665923 () Bool)

(assert (=> d!419285 m!1665923))

(assert (=> d!419285 m!1665893))

(assert (=> d!419285 m!1665883))

(declare-fun m!1665925 () Bool)

(assert (=> d!419285 m!1665925))

(assert (=> b!1445710 m!1664105))

(assert (=> b!1445710 m!1664107))

(declare-fun m!1665927 () Bool)

(assert (=> b!1445710 m!1665927))

(assert (=> b!1445710 m!1665893))

(assert (=> b!1445710 m!1665871))

(assert (=> b!1445710 m!1664105))

(assert (=> b!1445710 m!1665893))

(declare-fun m!1665929 () Bool)

(assert (=> b!1445710 m!1665929))

(assert (=> b!1445707 m!1665877))

(assert (=> b!1445707 m!1665877))

(declare-fun m!1665931 () Bool)

(assert (=> b!1445707 m!1665931))

(assert (=> b!1445709 m!1664105))

(assert (=> b!1445709 m!1664107))

(declare-fun m!1665933 () Bool)

(assert (=> b!1445709 m!1665933))

(assert (=> b!1445709 m!1664107))

(declare-fun m!1665935 () Bool)

(assert (=> b!1445709 m!1665935))

(assert (=> b!1445709 m!1664627))

(assert (=> b!1445709 m!1664671))

(declare-fun m!1665937 () Bool)

(assert (=> b!1445709 m!1665937))

(declare-fun m!1665939 () Bool)

(assert (=> b!1445709 m!1665939))

(declare-fun m!1665941 () Bool)

(assert (=> b!1445709 m!1665941))

(assert (=> b!1445709 m!1664105))

(declare-fun m!1665943 () Bool)

(assert (=> b!1445709 m!1665943))

(assert (=> b!1445709 m!1665893))

(assert (=> b!1445709 m!1665943))

(declare-fun m!1665945 () Bool)

(assert (=> b!1445709 m!1665945))

(declare-fun m!1665947 () Bool)

(assert (=> b!1445709 m!1665947))

(assert (=> b!1445709 m!1665889))

(assert (=> b!1445709 m!1665871))

(declare-fun m!1665949 () Bool)

(assert (=> b!1445709 m!1665949))

(assert (=> b!1445709 m!1665939))

(declare-fun m!1665951 () Bool)

(assert (=> b!1445709 m!1665951))

(assert (=> b!1445709 m!1665893))

(assert (=> b!1445709 m!1665871))

(assert (=> b!1445709 m!1665889))

(assert (=> b!1445709 m!1664627))

(declare-fun m!1665953 () Bool)

(assert (=> b!1445709 m!1665953))

(declare-fun m!1665955 () Bool)

(assert (=> b!1445709 m!1665955))

(assert (=> b!1445709 m!1664107))

(declare-fun m!1665957 () Bool)

(assert (=> b!1445709 m!1665957))

(declare-fun m!1665959 () Bool)

(assert (=> b!1445709 m!1665959))

(declare-fun m!1665961 () Bool)

(assert (=> b!1445706 m!1665961))

(declare-fun m!1665963 () Bool)

(assert (=> b!1445706 m!1665963))

(declare-fun m!1665965 () Bool)

(assert (=> b!1445713 m!1665965))

(assert (=> b!1445711 m!1665871))

(declare-fun m!1665967 () Bool)

(assert (=> b!1445711 m!1665967))

(assert (=> b!1445711 m!1665877))

(assert (=> b!1445711 m!1665931))

(assert (=> b!1445711 m!1665893))

(assert (=> b!1445711 m!1665871))

(assert (=> b!1445711 m!1665877))

(assert (=> b!1445711 m!1665893))

(declare-fun m!1665969 () Bool)

(assert (=> b!1445717 m!1665969))

(declare-fun m!1665971 () Bool)

(assert (=> b!1445717 m!1665971))

(assert (=> b!1445717 m!1665893))

(assert (=> b!1445717 m!1665893))

(assert (=> b!1445717 m!1665871))

(assert (=> b!1445150 d!419285))

(declare-fun d!419313 () Bool)

(assert (=> d!419313 (= (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (originalCharacters!3497 (h!20393 lt!496943)))) (not (isEmpty!9346 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (originalCharacters!3497 (h!20393 lt!496943))))))))

(declare-fun bs!342170 () Bool)

(assert (= bs!342170 d!419313))

(assert (=> bs!342170 m!1664611))

(declare-fun m!1665989 () Bool)

(assert (=> bs!342170 m!1665989))

(assert (=> b!1445150 d!419313))

(declare-fun d!419315 () Bool)

(assert (=> d!419315 (= (list!5972 lt!497183) (list!5976 (c!238012 lt!497183)))))

(declare-fun bs!342171 () Bool)

(assert (= bs!342171 d!419315))

(declare-fun m!1665991 () Bool)

(assert (=> bs!342171 m!1665991))

(assert (=> b!1445150 d!419315))

(declare-fun d!419319 () Bool)

(assert (=> d!419319 (= (seqFromList!1704 lt!496943) (fromListB!733 lt!496943))))

(declare-fun bs!342172 () Bool)

(assert (= bs!342172 d!419319))

(declare-fun m!1665993 () Bool)

(assert (=> bs!342172 m!1665993))

(assert (=> b!1445150 d!419319))

(declare-fun d!419321 () Bool)

(assert (=> d!419321 (= (list!5973 (prepend!415 (seqFromList!1704 (t!130177 (t!130177 lt!496943))) (h!20393 (t!130177 lt!496943)))) (list!5977 (c!238014 (prepend!415 (seqFromList!1704 (t!130177 (t!130177 lt!496943))) (h!20393 (t!130177 lt!496943))))))))

(declare-fun bs!342173 () Bool)

(assert (= bs!342173 d!419321))

(declare-fun m!1665995 () Bool)

(assert (=> bs!342173 m!1665995))

(assert (=> b!1445150 d!419321))

(declare-fun b!1445794 () Bool)

(declare-fun res!654637 () Bool)

(declare-fun e!922353 () Bool)

(assert (=> b!1445794 (=> res!654637 e!922353)))

(declare-fun e!922350 () Bool)

(assert (=> b!1445794 (= res!654637 e!922350)))

(declare-fun res!654636 () Bool)

(assert (=> b!1445794 (=> (not res!654636) (not e!922350))))

(declare-fun lt!497942 () Bool)

(assert (=> b!1445794 (= res!654636 lt!497942)))

(declare-fun bm!97789 () Bool)

(declare-fun call!97794 () Bool)

(assert (=> bm!97789 (= call!97794 (isEmpty!9341 (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))

(declare-fun b!1445795 () Bool)

(declare-fun e!922357 () Bool)

(assert (=> b!1445795 (= e!922357 (not (= (head!2929 (list!5972 (charsOf!1521 (h!20393 lt!496943)))) (c!238013 (regex!2635 (rule!4406 (h!20393 lt!496943)))))))))

(declare-fun b!1445796 () Bool)

(assert (=> b!1445796 (= e!922350 (= (head!2929 (list!5972 (charsOf!1521 (h!20393 lt!496943)))) (c!238013 (regex!2635 (rule!4406 (h!20393 lt!496943))))))))

(declare-fun b!1445797 () Bool)

(declare-fun e!922351 () Bool)

(declare-fun nullable!1244 (Regex!3949) Bool)

(assert (=> b!1445797 (= e!922351 (nullable!1244 (regex!2635 (rule!4406 (h!20393 lt!496943)))))))

(declare-fun b!1445799 () Bool)

(declare-fun res!654634 () Bool)

(assert (=> b!1445799 (=> (not res!654634) (not e!922350))))

(assert (=> b!1445799 (= res!654634 (not call!97794))))

(declare-fun b!1445800 () Bool)

(declare-fun e!922352 () Bool)

(assert (=> b!1445800 (= e!922352 e!922357)))

(declare-fun res!654632 () Bool)

(assert (=> b!1445800 (=> res!654632 e!922357)))

(assert (=> b!1445800 (= res!654632 call!97794)))

(declare-fun b!1445801 () Bool)

(declare-fun e!922355 () Bool)

(assert (=> b!1445801 (= e!922355 (not lt!497942))))

(declare-fun b!1445802 () Bool)

(declare-fun derivativeStep!1000 (Regex!3949 C!8076) Regex!3949)

(assert (=> b!1445802 (= e!922351 (matchR!1823 (derivativeStep!1000 (regex!2635 (rule!4406 (h!20393 lt!496943))) (head!2929 (list!5972 (charsOf!1521 (h!20393 lt!496943))))) (tail!2163 (list!5972 (charsOf!1521 (h!20393 lt!496943))))))))

(declare-fun b!1445803 () Bool)

(declare-fun res!654630 () Bool)

(assert (=> b!1445803 (=> res!654630 e!922357)))

(assert (=> b!1445803 (= res!654630 (not (isEmpty!9341 (tail!2163 (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))))

(declare-fun b!1445804 () Bool)

(declare-fun res!654631 () Bool)

(assert (=> b!1445804 (=> res!654631 e!922353)))

(assert (=> b!1445804 (= res!654631 (not ((_ is ElementMatch!3949) (regex!2635 (rule!4406 (h!20393 lt!496943))))))))

(assert (=> b!1445804 (= e!922355 e!922353)))

(declare-fun b!1445805 () Bool)

(declare-fun e!922354 () Bool)

(assert (=> b!1445805 (= e!922354 e!922355)))

(declare-fun c!238210 () Bool)

(assert (=> b!1445805 (= c!238210 ((_ is EmptyLang!3949) (regex!2635 (rule!4406 (h!20393 lt!496943)))))))

(declare-fun d!419323 () Bool)

(assert (=> d!419323 e!922354))

(declare-fun c!238209 () Bool)

(assert (=> d!419323 (= c!238209 ((_ is EmptyExpr!3949) (regex!2635 (rule!4406 (h!20393 lt!496943)))))))

(assert (=> d!419323 (= lt!497942 e!922351)))

(declare-fun c!238211 () Bool)

(assert (=> d!419323 (= c!238211 (isEmpty!9341 (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))

(declare-fun validRegex!1676 (Regex!3949) Bool)

(assert (=> d!419323 (validRegex!1676 (regex!2635 (rule!4406 (h!20393 lt!496943))))))

(assert (=> d!419323 (= (matchR!1823 (regex!2635 (rule!4406 (h!20393 lt!496943))) (list!5972 (charsOf!1521 (h!20393 lt!496943)))) lt!497942)))

(declare-fun b!1445798 () Bool)

(declare-fun res!654635 () Bool)

(assert (=> b!1445798 (=> (not res!654635) (not e!922350))))

(assert (=> b!1445798 (= res!654635 (isEmpty!9341 (tail!2163 (list!5972 (charsOf!1521 (h!20393 lt!496943))))))))

(declare-fun b!1445806 () Bool)

(assert (=> b!1445806 (= e!922353 e!922352)))

(declare-fun res!654633 () Bool)

(assert (=> b!1445806 (=> (not res!654633) (not e!922352))))

(assert (=> b!1445806 (= res!654633 (not lt!497942))))

(declare-fun b!1445807 () Bool)

(assert (=> b!1445807 (= e!922354 (= lt!497942 call!97794))))

(assert (= (and d!419323 c!238211) b!1445797))

(assert (= (and d!419323 (not c!238211)) b!1445802))

(assert (= (and d!419323 c!238209) b!1445807))

(assert (= (and d!419323 (not c!238209)) b!1445805))

(assert (= (and b!1445805 c!238210) b!1445801))

(assert (= (and b!1445805 (not c!238210)) b!1445804))

(assert (= (and b!1445804 (not res!654631)) b!1445794))

(assert (= (and b!1445794 res!654636) b!1445799))

(assert (= (and b!1445799 res!654634) b!1445798))

(assert (= (and b!1445798 res!654635) b!1445796))

(assert (= (and b!1445794 (not res!654637)) b!1445806))

(assert (= (and b!1445806 res!654633) b!1445800))

(assert (= (and b!1445800 (not res!654632)) b!1445803))

(assert (= (and b!1445803 (not res!654630)) b!1445795))

(assert (= (or b!1445807 b!1445799 b!1445800) bm!97789))

(assert (=> b!1445802 m!1664107))

(declare-fun m!1666035 () Bool)

(assert (=> b!1445802 m!1666035))

(assert (=> b!1445802 m!1666035))

(declare-fun m!1666037 () Bool)

(assert (=> b!1445802 m!1666037))

(assert (=> b!1445802 m!1664107))

(declare-fun m!1666039 () Bool)

(assert (=> b!1445802 m!1666039))

(assert (=> b!1445802 m!1666037))

(assert (=> b!1445802 m!1666039))

(declare-fun m!1666041 () Bool)

(assert (=> b!1445802 m!1666041))

(declare-fun m!1666043 () Bool)

(assert (=> b!1445797 m!1666043))

(assert (=> b!1445795 m!1664107))

(assert (=> b!1445795 m!1666035))

(assert (=> b!1445798 m!1664107))

(assert (=> b!1445798 m!1666039))

(assert (=> b!1445798 m!1666039))

(declare-fun m!1666045 () Bool)

(assert (=> b!1445798 m!1666045))

(assert (=> b!1445796 m!1664107))

(assert (=> b!1445796 m!1666035))

(assert (=> b!1445803 m!1664107))

(assert (=> b!1445803 m!1666039))

(assert (=> b!1445803 m!1666039))

(assert (=> b!1445803 m!1666045))

(assert (=> bm!97789 m!1664107))

(declare-fun m!1666047 () Bool)

(assert (=> bm!97789 m!1666047))

(assert (=> d!419323 m!1664107))

(assert (=> d!419323 m!1666047))

(declare-fun m!1666049 () Bool)

(assert (=> d!419323 m!1666049))

(assert (=> b!1445150 d!419323))

(declare-fun d!419345 () Bool)

(assert (=> d!419345 (= (list!5972 lt!497196) (list!5976 (c!238012 lt!497196)))))

(declare-fun bs!342177 () Bool)

(assert (= bs!342177 d!419345))

(declare-fun m!1666051 () Bool)

(assert (=> bs!342177 m!1666051))

(assert (=> b!1445150 d!419345))

(declare-fun d!419347 () Bool)

(assert (=> d!419347 (= (head!2929 (list!5972 lt!497196)) (h!20391 (list!5972 lt!497196)))))

(assert (=> b!1445150 d!419347))

(declare-fun d!419349 () Bool)

(declare-fun lt!497973 () C!8076)

(assert (=> d!419349 (= lt!497973 (head!2929 (list!5972 lt!497196)))))

(declare-fun head!2932 (Conc!5096) C!8076)

(assert (=> d!419349 (= lt!497973 (head!2932 (c!238012 lt!497196)))))

(assert (=> d!419349 (not (isEmpty!9343 lt!497196))))

(assert (=> d!419349 (= (head!2930 lt!497196) lt!497973)))

(declare-fun bs!342178 () Bool)

(assert (= bs!342178 d!419349))

(assert (=> bs!342178 m!1664627))

(assert (=> bs!342178 m!1664627))

(assert (=> bs!342178 m!1664671))

(declare-fun m!1666123 () Bool)

(assert (=> bs!342178 m!1666123))

(declare-fun m!1666125 () Bool)

(assert (=> bs!342178 m!1666125))

(assert (=> b!1445150 d!419349))

(declare-fun b!1445825 () Bool)

(declare-fun e!922370 () Bool)

(declare-fun lt!497976 () tuple2!14160)

(assert (=> b!1445825 (= e!922370 (= (_2!7966 lt!497976) lt!497196))))

(declare-fun b!1445826 () Bool)

(declare-fun res!654648 () Bool)

(declare-fun e!922369 () Bool)

(assert (=> b!1445826 (=> (not res!654648) (not e!922369))))

(declare-datatypes ((tuple2!14166 0))(
  ( (tuple2!14167 (_1!7969 List!15058) (_2!7969 List!15056)) )
))
(declare-fun lexList!706 (LexerInterface!2294 List!15059 List!15056) tuple2!14166)

(assert (=> b!1445826 (= res!654648 (= (list!5973 (_1!7966 lt!497976)) (_1!7969 (lexList!706 Lexer!2292 (rules!11498 other!32) (list!5972 lt!497196)))))))

(declare-fun b!1445827 () Bool)

(declare-fun e!922368 () Bool)

(assert (=> b!1445827 (= e!922368 (not (isEmpty!9334 (_1!7966 lt!497976))))))

(declare-fun d!419351 () Bool)

(assert (=> d!419351 e!922369))

(declare-fun res!654649 () Bool)

(assert (=> d!419351 (=> (not res!654649) (not e!922369))))

(assert (=> d!419351 (= res!654649 e!922370)))

(declare-fun c!238216 () Bool)

(assert (=> d!419351 (= c!238216 (> (size!12291 (_1!7966 lt!497976)) 0))))

(declare-fun lexTailRecV2!461 (LexerInterface!2294 List!15059 BalanceConc!10132 BalanceConc!10132 BalanceConc!10132 BalanceConc!10134) tuple2!14160)

(assert (=> d!419351 (= lt!497976 (lexTailRecV2!461 Lexer!2292 (rules!11498 other!32) lt!497196 (BalanceConc!10133 Empty!5096) lt!497196 (BalanceConc!10135 Empty!5097)))))

(assert (=> d!419351 (= (lex!1050 Lexer!2292 (rules!11498 other!32) lt!497196) lt!497976)))

(declare-fun b!1445828 () Bool)

(assert (=> b!1445828 (= e!922370 e!922368)))

(declare-fun res!654650 () Bool)

(assert (=> b!1445828 (= res!654650 (< (size!12293 (_2!7966 lt!497976)) (size!12293 lt!497196)))))

(assert (=> b!1445828 (=> (not res!654650) (not e!922368))))

(declare-fun b!1445829 () Bool)

(assert (=> b!1445829 (= e!922369 (= (list!5972 (_2!7966 lt!497976)) (_2!7969 (lexList!706 Lexer!2292 (rules!11498 other!32) (list!5972 lt!497196)))))))

(assert (= (and d!419351 c!238216) b!1445828))

(assert (= (and d!419351 (not c!238216)) b!1445825))

(assert (= (and b!1445828 res!654650) b!1445827))

(assert (= (and d!419351 res!654649) b!1445826))

(assert (= (and b!1445826 res!654648) b!1445829))

(declare-fun m!1666129 () Bool)

(assert (=> b!1445826 m!1666129))

(assert (=> b!1445826 m!1664627))

(assert (=> b!1445826 m!1664627))

(declare-fun m!1666131 () Bool)

(assert (=> b!1445826 m!1666131))

(declare-fun m!1666133 () Bool)

(assert (=> b!1445828 m!1666133))

(declare-fun m!1666135 () Bool)

(assert (=> b!1445828 m!1666135))

(declare-fun m!1666137 () Bool)

(assert (=> b!1445829 m!1666137))

(assert (=> b!1445829 m!1664627))

(assert (=> b!1445829 m!1664627))

(assert (=> b!1445829 m!1666131))

(declare-fun m!1666139 () Bool)

(assert (=> b!1445827 m!1666139))

(declare-fun m!1666141 () Bool)

(assert (=> d!419351 m!1666141))

(declare-fun m!1666143 () Bool)

(assert (=> d!419351 m!1666143))

(assert (=> b!1445150 d!419351))

(declare-fun d!419355 () Bool)

(assert (=> d!419355 (= (isEmpty!9341 (_2!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 lt!496943))))))) ((_ is Nil!14990) (_2!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 lt!496943))))))))))

(assert (=> b!1445150 d!419355))

(declare-fun d!419357 () Bool)

(declare-fun e!922372 () Bool)

(assert (=> d!419357 e!922372))

(declare-fun res!654652 () Bool)

(assert (=> d!419357 (=> (not res!654652) (not e!922372))))

(declare-fun lt!497977 () List!15058)

(assert (=> d!419357 (= res!654652 (= (content!2219 lt!497977) ((_ map or) (content!2219 (t!130177 lt!496941)) (content!2219 lt!496943))))))

(declare-fun e!922371 () List!15058)

(assert (=> d!419357 (= lt!497977 e!922371)))

(declare-fun c!238217 () Bool)

(assert (=> d!419357 (= c!238217 ((_ is Nil!14992) (t!130177 lt!496941)))))

(assert (=> d!419357 (= (++!4034 (t!130177 lt!496941) lt!496943) lt!497977)))

(declare-fun b!1445832 () Bool)

(declare-fun res!654651 () Bool)

(assert (=> b!1445832 (=> (not res!654651) (not e!922372))))

(assert (=> b!1445832 (= res!654651 (= (size!12290 lt!497977) (+ (size!12290 (t!130177 lt!496941)) (size!12290 lt!496943))))))

(declare-fun b!1445830 () Bool)

(assert (=> b!1445830 (= e!922371 lt!496943)))

(declare-fun b!1445833 () Bool)

(assert (=> b!1445833 (= e!922372 (or (not (= lt!496943 Nil!14992)) (= lt!497977 (t!130177 lt!496941))))))

(declare-fun b!1445831 () Bool)

(assert (=> b!1445831 (= e!922371 (Cons!14992 (h!20393 (t!130177 lt!496941)) (++!4034 (t!130177 (t!130177 lt!496941)) lt!496943)))))

(assert (= (and d!419357 c!238217) b!1445830))

(assert (= (and d!419357 (not c!238217)) b!1445831))

(assert (= (and d!419357 res!654652) b!1445832))

(assert (= (and b!1445832 res!654651) b!1445833))

(declare-fun m!1666145 () Bool)

(assert (=> d!419357 m!1666145))

(declare-fun m!1666147 () Bool)

(assert (=> d!419357 m!1666147))

(assert (=> d!419357 m!1664223))

(declare-fun m!1666149 () Bool)

(assert (=> b!1445832 m!1666149))

(declare-fun m!1666151 () Bool)

(assert (=> b!1445832 m!1666151))

(assert (=> b!1445832 m!1664229))

(declare-fun m!1666153 () Bool)

(assert (=> b!1445831 m!1666153))

(assert (=> b!1445050 d!419357))

(declare-fun d!419359 () Bool)

(assert (=> d!419359 (= (inv!19946 (tag!2899 (h!20394 (rules!11498 thiss!10022)))) (= (mod (str.len (value!84744 (tag!2899 (h!20394 (rules!11498 thiss!10022))))) 2) 0))))

(assert (=> b!1445270 d!419359))

(declare-fun d!419361 () Bool)

(declare-fun res!654655 () Bool)

(declare-fun e!922375 () Bool)

(assert (=> d!419361 (=> (not res!654655) (not e!922375))))

(declare-fun semiInverseModEq!994 (Int Int) Bool)

(assert (=> d!419361 (= res!654655 (semiInverseModEq!994 (toChars!3801 (transformation!2635 (h!20394 (rules!11498 thiss!10022)))) (toValue!3942 (transformation!2635 (h!20394 (rules!11498 thiss!10022))))))))

(assert (=> d!419361 (= (inv!19964 (transformation!2635 (h!20394 (rules!11498 thiss!10022)))) e!922375)))

(declare-fun b!1445836 () Bool)

(declare-fun equivClasses!953 (Int Int) Bool)

(assert (=> b!1445836 (= e!922375 (equivClasses!953 (toChars!3801 (transformation!2635 (h!20394 (rules!11498 thiss!10022)))) (toValue!3942 (transformation!2635 (h!20394 (rules!11498 thiss!10022))))))))

(assert (= (and d!419361 res!654655) b!1445836))

(declare-fun m!1666155 () Bool)

(assert (=> d!419361 m!1666155))

(declare-fun m!1666157 () Bool)

(assert (=> b!1445836 m!1666157))

(assert (=> b!1445270 d!419361))

(declare-fun d!419363 () Bool)

(declare-fun res!654658 () Bool)

(declare-fun e!922378 () Bool)

(assert (=> d!419363 (=> (not res!654658) (not e!922378))))

(declare-fun rulesValid!968 (LexerInterface!2294 List!15059) Bool)

(assert (=> d!419363 (= res!654658 (rulesValid!968 Lexer!2292 (rules!11498 thiss!10022)))))

(assert (=> d!419363 (= (rulesInvariant!2132 Lexer!2292 (rules!11498 thiss!10022)) e!922378)))

(declare-fun b!1445839 () Bool)

(declare-datatypes ((List!15061 0))(
  ( (Nil!14995) (Cons!14995 (h!20396 String!17881) (t!130344 List!15061)) )
))
(declare-fun noDuplicateTag!968 (LexerInterface!2294 List!15059 List!15061) Bool)

(assert (=> b!1445839 (= e!922378 (noDuplicateTag!968 Lexer!2292 (rules!11498 thiss!10022) Nil!14995))))

(assert (= (and d!419363 res!654658) b!1445839))

(declare-fun m!1666159 () Bool)

(assert (=> d!419363 m!1666159))

(declare-fun m!1666161 () Bool)

(assert (=> b!1445839 m!1666161))

(assert (=> b!1445227 d!419363))

(declare-fun d!419365 () Bool)

(assert (=> d!419365 (= (inv!19963 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))) (value!84745 (h!20393 lt!496943)))) (isBalanced!1520 (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))) (value!84745 (h!20393 lt!496943))))))))

(declare-fun bs!342179 () Bool)

(assert (= bs!342179 d!419365))

(declare-fun m!1666163 () Bool)

(assert (=> bs!342179 m!1666163))

(assert (=> tb!78653 d!419365))

(declare-fun d!419367 () Bool)

(declare-fun c!238220 () Bool)

(assert (=> d!419367 (= c!238220 ((_ is Nil!14990) lt!496973))))

(declare-fun e!922381 () (InoxSet C!8076))

(assert (=> d!419367 (= (content!2218 lt!496973) e!922381)))

(declare-fun b!1445844 () Bool)

(assert (=> b!1445844 (= e!922381 ((as const (Array C!8076 Bool)) false))))

(declare-fun b!1445845 () Bool)

(assert (=> b!1445845 (= e!922381 ((_ map or) (store ((as const (Array C!8076 Bool)) false) (h!20391 lt!496973) true) (content!2218 (t!130175 lt!496973))))))

(assert (= (and d!419367 c!238220) b!1445844))

(assert (= (and d!419367 (not c!238220)) b!1445845))

(declare-fun m!1666165 () Bool)

(assert (=> b!1445845 m!1666165))

(declare-fun m!1666167 () Bool)

(assert (=> b!1445845 m!1666167))

(assert (=> d!419017 d!419367))

(declare-fun d!419369 () Bool)

(declare-fun c!238221 () Bool)

(assert (=> d!419369 (= c!238221 ((_ is Nil!14990) (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))

(declare-fun e!922382 () (InoxSet C!8076))

(assert (=> d!419369 (= (content!2218 (list!5972 (charsOf!1521 (h!20393 lt!496943)))) e!922382)))

(declare-fun b!1445846 () Bool)

(assert (=> b!1445846 (= e!922382 ((as const (Array C!8076 Bool)) false))))

(declare-fun b!1445847 () Bool)

(assert (=> b!1445847 (= e!922382 ((_ map or) (store ((as const (Array C!8076 Bool)) false) (h!20391 (list!5972 (charsOf!1521 (h!20393 lt!496943)))) true) (content!2218 (t!130175 (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))))

(assert (= (and d!419369 c!238221) b!1445846))

(assert (= (and d!419369 (not c!238221)) b!1445847))

(declare-fun m!1666169 () Bool)

(assert (=> b!1445847 m!1666169))

(declare-fun m!1666171 () Bool)

(assert (=> b!1445847 m!1666171))

(assert (=> d!419017 d!419369))

(declare-fun d!419371 () Bool)

(declare-fun c!238222 () Bool)

(assert (=> d!419371 (= c!238222 ((_ is Nil!14990) (printList!713 Lexer!2292 (t!130177 lt!496943))))))

(declare-fun e!922383 () (InoxSet C!8076))

(assert (=> d!419371 (= (content!2218 (printList!713 Lexer!2292 (t!130177 lt!496943))) e!922383)))

(declare-fun b!1445848 () Bool)

(assert (=> b!1445848 (= e!922383 ((as const (Array C!8076 Bool)) false))))

(declare-fun b!1445849 () Bool)

(assert (=> b!1445849 (= e!922383 ((_ map or) (store ((as const (Array C!8076 Bool)) false) (h!20391 (printList!713 Lexer!2292 (t!130177 lt!496943))) true) (content!2218 (t!130175 (printList!713 Lexer!2292 (t!130177 lt!496943))))))))

(assert (= (and d!419371 c!238222) b!1445848))

(assert (= (and d!419371 (not c!238222)) b!1445849))

(declare-fun m!1666173 () Bool)

(assert (=> b!1445849 m!1666173))

(declare-fun m!1666175 () Bool)

(assert (=> b!1445849 m!1666175))

(assert (=> d!419017 d!419371))

(declare-fun b!1445851 () Bool)

(declare-fun e!922385 () List!15056)

(assert (=> b!1445851 (= e!922385 (Cons!14990 (h!20391 (t!130175 lt!496946)) (++!4033 (t!130175 (t!130175 lt!496946)) lt!496942)))))

(declare-fun d!419373 () Bool)

(declare-fun e!922384 () Bool)

(assert (=> d!419373 e!922384))

(declare-fun res!654660 () Bool)

(assert (=> d!419373 (=> (not res!654660) (not e!922384))))

(declare-fun lt!497978 () List!15056)

(assert (=> d!419373 (= res!654660 (= (content!2218 lt!497978) ((_ map or) (content!2218 (t!130175 lt!496946)) (content!2218 lt!496942))))))

(assert (=> d!419373 (= lt!497978 e!922385)))

(declare-fun c!238223 () Bool)

(assert (=> d!419373 (= c!238223 ((_ is Nil!14990) (t!130175 lt!496946)))))

(assert (=> d!419373 (= (++!4033 (t!130175 lt!496946) lt!496942) lt!497978)))

(declare-fun b!1445850 () Bool)

(assert (=> b!1445850 (= e!922385 lt!496942)))

(declare-fun b!1445852 () Bool)

(declare-fun res!654659 () Bool)

(assert (=> b!1445852 (=> (not res!654659) (not e!922384))))

(assert (=> b!1445852 (= res!654659 (= (size!12289 lt!497978) (+ (size!12289 (t!130175 lt!496946)) (size!12289 lt!496942))))))

(declare-fun b!1445853 () Bool)

(assert (=> b!1445853 (= e!922384 (or (not (= lt!496942 Nil!14990)) (= lt!497978 (t!130175 lt!496946))))))

(assert (= (and d!419373 c!238223) b!1445850))

(assert (= (and d!419373 (not c!238223)) b!1445851))

(assert (= (and d!419373 res!654660) b!1445852))

(assert (= (and b!1445852 res!654659) b!1445853))

(declare-fun m!1666177 () Bool)

(assert (=> b!1445851 m!1666177))

(declare-fun m!1666179 () Bool)

(assert (=> d!419373 m!1666179))

(declare-fun m!1666181 () Bool)

(assert (=> d!419373 m!1666181))

(assert (=> d!419373 m!1664689))

(declare-fun m!1666183 () Bool)

(assert (=> b!1445852 m!1666183))

(declare-fun m!1666185 () Bool)

(assert (=> b!1445852 m!1666185))

(assert (=> b!1445852 m!1664695))

(assert (=> b!1445155 d!419373))

(declare-fun b!1445855 () Bool)

(declare-fun e!922387 () List!15056)

(assert (=> b!1445855 (= e!922387 (Cons!14990 (h!20391 (list!5972 (charsOf!1521 (h!20393 lt!496941)))) (++!4033 (t!130175 (list!5972 (charsOf!1521 (h!20393 lt!496941)))) (printList!713 Lexer!2292 (t!130177 lt!496941)))))))

(declare-fun d!419375 () Bool)

(declare-fun e!922386 () Bool)

(assert (=> d!419375 e!922386))

(declare-fun res!654662 () Bool)

(assert (=> d!419375 (=> (not res!654662) (not e!922386))))

(declare-fun lt!497979 () List!15056)

(assert (=> d!419375 (= res!654662 (= (content!2218 lt!497979) ((_ map or) (content!2218 (list!5972 (charsOf!1521 (h!20393 lt!496941)))) (content!2218 (printList!713 Lexer!2292 (t!130177 lt!496941))))))))

(assert (=> d!419375 (= lt!497979 e!922387)))

(declare-fun c!238224 () Bool)

(assert (=> d!419375 (= c!238224 ((_ is Nil!14990) (list!5972 (charsOf!1521 (h!20393 lt!496941)))))))

(assert (=> d!419375 (= (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496941))) (printList!713 Lexer!2292 (t!130177 lt!496941))) lt!497979)))

(declare-fun b!1445854 () Bool)

(assert (=> b!1445854 (= e!922387 (printList!713 Lexer!2292 (t!130177 lt!496941)))))

(declare-fun b!1445856 () Bool)

(declare-fun res!654661 () Bool)

(assert (=> b!1445856 (=> (not res!654661) (not e!922386))))

(assert (=> b!1445856 (= res!654661 (= (size!12289 lt!497979) (+ (size!12289 (list!5972 (charsOf!1521 (h!20393 lt!496941)))) (size!12289 (printList!713 Lexer!2292 (t!130177 lt!496941))))))))

(declare-fun b!1445857 () Bool)

(assert (=> b!1445857 (= e!922386 (or (not (= (printList!713 Lexer!2292 (t!130177 lt!496941)) Nil!14990)) (= lt!497979 (list!5972 (charsOf!1521 (h!20393 lt!496941))))))))

(assert (= (and d!419375 c!238224) b!1445854))

(assert (= (and d!419375 (not c!238224)) b!1445855))

(assert (= (and d!419375 res!654662) b!1445856))

(assert (= (and b!1445856 res!654661) b!1445857))

(assert (=> b!1445855 m!1664679))

(declare-fun m!1666187 () Bool)

(assert (=> b!1445855 m!1666187))

(declare-fun m!1666189 () Bool)

(assert (=> d!419375 m!1666189))

(assert (=> d!419375 m!1664677))

(declare-fun m!1666191 () Bool)

(assert (=> d!419375 m!1666191))

(assert (=> d!419375 m!1664679))

(declare-fun m!1666193 () Bool)

(assert (=> d!419375 m!1666193))

(declare-fun m!1666195 () Bool)

(assert (=> b!1445856 m!1666195))

(assert (=> b!1445856 m!1664677))

(declare-fun m!1666197 () Bool)

(assert (=> b!1445856 m!1666197))

(assert (=> b!1445856 m!1664679))

(declare-fun m!1666199 () Bool)

(assert (=> b!1445856 m!1666199))

(assert (=> b!1445152 d!419375))

(declare-fun d!419377 () Bool)

(assert (=> d!419377 (= (list!5972 (charsOf!1521 (h!20393 lt!496941))) (list!5976 (c!238012 (charsOf!1521 (h!20393 lt!496941)))))))

(declare-fun bs!342180 () Bool)

(assert (= bs!342180 d!419377))

(declare-fun m!1666201 () Bool)

(assert (=> bs!342180 m!1666201))

(assert (=> b!1445152 d!419377))

(declare-fun d!419379 () Bool)

(declare-fun lt!497980 () BalanceConc!10132)

(assert (=> d!419379 (= (list!5972 lt!497980) (originalCharacters!3497 (h!20393 lt!496941)))))

(assert (=> d!419379 (= lt!497980 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496941)))) (value!84745 (h!20393 lt!496941))))))

(assert (=> d!419379 (= (charsOf!1521 (h!20393 lt!496941)) lt!497980)))

(declare-fun b_lambda!45157 () Bool)

(assert (=> (not b_lambda!45157) (not d!419379)))

(declare-fun t!130207 () Bool)

(declare-fun tb!78669 () Bool)

(assert (=> (and b!1445271 (= (toChars!3801 (transformation!2635 (h!20394 (rules!11498 thiss!10022)))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496941))))) t!130207) tb!78669))

(declare-fun b!1445858 () Bool)

(declare-fun e!922388 () Bool)

(declare-fun tp!407812 () Bool)

(assert (=> b!1445858 (= e!922388 (and (inv!19962 (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496941)))) (value!84745 (h!20393 lt!496941))))) tp!407812))))

(declare-fun result!95090 () Bool)

(assert (=> tb!78669 (= result!95090 (and (inv!19963 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496941)))) (value!84745 (h!20393 lt!496941)))) e!922388))))

(assert (= tb!78669 b!1445858))

(declare-fun m!1666203 () Bool)

(assert (=> b!1445858 m!1666203))

(declare-fun m!1666205 () Bool)

(assert (=> tb!78669 m!1666205))

(assert (=> d!419379 t!130207))

(declare-fun b_and!97851 () Bool)

(assert (= b_and!97847 (and (=> t!130207 result!95090) b_and!97851)))

(declare-fun tb!78671 () Bool)

(declare-fun t!130209 () Bool)

(assert (=> (and b!1445282 (= (toChars!3801 (transformation!2635 (h!20394 (rules!11498 other!32)))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496941))))) t!130209) tb!78671))

(declare-fun result!95092 () Bool)

(assert (= result!95092 result!95090))

(assert (=> d!419379 t!130209))

(declare-fun b_and!97853 () Bool)

(assert (= b_and!97849 (and (=> t!130209 result!95092) b_and!97853)))

(declare-fun m!1666207 () Bool)

(assert (=> d!419379 m!1666207))

(declare-fun m!1666209 () Bool)

(assert (=> d!419379 m!1666209))

(assert (=> b!1445152 d!419379))

(declare-fun d!419381 () Bool)

(declare-fun c!238225 () Bool)

(assert (=> d!419381 (= c!238225 ((_ is Cons!14992) (t!130177 lt!496941)))))

(declare-fun e!922389 () List!15056)

(assert (=> d!419381 (= (printList!713 Lexer!2292 (t!130177 lt!496941)) e!922389)))

(declare-fun b!1445859 () Bool)

(assert (=> b!1445859 (= e!922389 (++!4033 (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496941)))) (printList!713 Lexer!2292 (t!130177 (t!130177 lt!496941)))))))

(declare-fun b!1445860 () Bool)

(assert (=> b!1445860 (= e!922389 Nil!14990)))

(assert (= (and d!419381 c!238225) b!1445859))

(assert (= (and d!419381 (not c!238225)) b!1445860))

(assert (=> b!1445859 m!1664733))

(assert (=> b!1445859 m!1664733))

(declare-fun m!1666211 () Bool)

(assert (=> b!1445859 m!1666211))

(declare-fun m!1666213 () Bool)

(assert (=> b!1445859 m!1666213))

(assert (=> b!1445859 m!1666211))

(assert (=> b!1445859 m!1666213))

(declare-fun m!1666215 () Bool)

(assert (=> b!1445859 m!1666215))

(assert (=> b!1445152 d!419381))

(declare-fun d!419383 () Bool)

(assert (=> d!419383 (= (isEmpty!9342 (rules!11498 thiss!10022)) ((_ is Nil!14993) (rules!11498 thiss!10022)))))

(assert (=> d!419109 d!419383))

(declare-fun d!419385 () Bool)

(declare-fun c!238226 () Bool)

(assert (=> d!419385 (= c!238226 ((_ is Node!5097) (left!12765 (c!238014 (tokens!2014 other!32)))))))

(declare-fun e!922390 () Bool)

(assert (=> d!419385 (= (inv!19950 (left!12765 (c!238014 (tokens!2014 other!32)))) e!922390)))

(declare-fun b!1445861 () Bool)

(assert (=> b!1445861 (= e!922390 (inv!19959 (left!12765 (c!238014 (tokens!2014 other!32)))))))

(declare-fun b!1445862 () Bool)

(declare-fun e!922391 () Bool)

(assert (=> b!1445862 (= e!922390 e!922391)))

(declare-fun res!654663 () Bool)

(assert (=> b!1445862 (= res!654663 (not ((_ is Leaf!7616) (left!12765 (c!238014 (tokens!2014 other!32))))))))

(assert (=> b!1445862 (=> res!654663 e!922391)))

(declare-fun b!1445863 () Bool)

(assert (=> b!1445863 (= e!922391 (inv!19960 (left!12765 (c!238014 (tokens!2014 other!32)))))))

(assert (= (and d!419385 c!238226) b!1445861))

(assert (= (and d!419385 (not c!238226)) b!1445862))

(assert (= (and b!1445862 (not res!654663)) b!1445863))

(declare-fun m!1666217 () Bool)

(assert (=> b!1445861 m!1666217))

(declare-fun m!1666219 () Bool)

(assert (=> b!1445863 m!1666219))

(assert (=> b!1445258 d!419385))

(declare-fun d!419387 () Bool)

(declare-fun c!238227 () Bool)

(assert (=> d!419387 (= c!238227 ((_ is Node!5097) (right!13095 (c!238014 (tokens!2014 other!32)))))))

(declare-fun e!922392 () Bool)

(assert (=> d!419387 (= (inv!19950 (right!13095 (c!238014 (tokens!2014 other!32)))) e!922392)))

(declare-fun b!1445864 () Bool)

(assert (=> b!1445864 (= e!922392 (inv!19959 (right!13095 (c!238014 (tokens!2014 other!32)))))))

(declare-fun b!1445865 () Bool)

(declare-fun e!922393 () Bool)

(assert (=> b!1445865 (= e!922392 e!922393)))

(declare-fun res!654664 () Bool)

(assert (=> b!1445865 (= res!654664 (not ((_ is Leaf!7616) (right!13095 (c!238014 (tokens!2014 other!32))))))))

(assert (=> b!1445865 (=> res!654664 e!922393)))

(declare-fun b!1445866 () Bool)

(assert (=> b!1445866 (= e!922393 (inv!19960 (right!13095 (c!238014 (tokens!2014 other!32)))))))

(assert (= (and d!419387 c!238227) b!1445864))

(assert (= (and d!419387 (not c!238227)) b!1445865))

(assert (= (and b!1445865 (not res!654664)) b!1445866))

(declare-fun m!1666221 () Bool)

(assert (=> b!1445864 m!1666221))

(declare-fun m!1666223 () Bool)

(assert (=> b!1445866 m!1666223))

(assert (=> b!1445258 d!419387))

(declare-fun b!1445868 () Bool)

(declare-fun e!922395 () List!15056)

(assert (=> b!1445868 (= e!922395 (Cons!14990 (h!20391 (t!130175 (list!5972 (charsOf!1521 (h!20393 lt!496943))))) (++!4033 (t!130175 (t!130175 (list!5972 (charsOf!1521 (h!20393 lt!496943))))) (printList!713 Lexer!2292 (t!130177 lt!496943)))))))

(declare-fun d!419389 () Bool)

(declare-fun e!922394 () Bool)

(assert (=> d!419389 e!922394))

(declare-fun res!654666 () Bool)

(assert (=> d!419389 (=> (not res!654666) (not e!922394))))

(declare-fun lt!497981 () List!15056)

(assert (=> d!419389 (= res!654666 (= (content!2218 lt!497981) ((_ map or) (content!2218 (t!130175 (list!5972 (charsOf!1521 (h!20393 lt!496943))))) (content!2218 (printList!713 Lexer!2292 (t!130177 lt!496943))))))))

(assert (=> d!419389 (= lt!497981 e!922395)))

(declare-fun c!238228 () Bool)

(assert (=> d!419389 (= c!238228 ((_ is Nil!14990) (t!130175 (list!5972 (charsOf!1521 (h!20393 lt!496943))))))))

(assert (=> d!419389 (= (++!4033 (t!130175 (list!5972 (charsOf!1521 (h!20393 lt!496943)))) (printList!713 Lexer!2292 (t!130177 lt!496943))) lt!497981)))

(declare-fun b!1445867 () Bool)

(assert (=> b!1445867 (= e!922395 (printList!713 Lexer!2292 (t!130177 lt!496943)))))

(declare-fun b!1445869 () Bool)

(declare-fun res!654665 () Bool)

(assert (=> b!1445869 (=> (not res!654665) (not e!922394))))

(assert (=> b!1445869 (= res!654665 (= (size!12289 lt!497981) (+ (size!12289 (t!130175 (list!5972 (charsOf!1521 (h!20393 lt!496943))))) (size!12289 (printList!713 Lexer!2292 (t!130177 lt!496943))))))))

(declare-fun b!1445870 () Bool)

(assert (=> b!1445870 (= e!922394 (or (not (= (printList!713 Lexer!2292 (t!130177 lt!496943)) Nil!14990)) (= lt!497981 (t!130175 (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))))

(assert (= (and d!419389 c!238228) b!1445867))

(assert (= (and d!419389 (not c!238228)) b!1445868))

(assert (= (and d!419389 res!654666) b!1445869))

(assert (= (and b!1445869 res!654665) b!1445870))

(assert (=> b!1445868 m!1664109))

(declare-fun m!1666225 () Bool)

(assert (=> b!1445868 m!1666225))

(declare-fun m!1666227 () Bool)

(assert (=> d!419389 m!1666227))

(assert (=> d!419389 m!1666171))

(assert (=> d!419389 m!1664109))

(assert (=> d!419389 m!1664247))

(declare-fun m!1666229 () Bool)

(assert (=> b!1445869 m!1666229))

(declare-fun m!1666231 () Bool)

(assert (=> b!1445869 m!1666231))

(assert (=> b!1445869 m!1664109))

(assert (=> b!1445869 m!1664253))

(assert (=> b!1445072 d!419389))

(declare-fun b!1445946 () Bool)

(declare-fun e!922444 () Bool)

(assert (=> b!1445946 (= e!922444 true)))

(declare-fun b!1445945 () Bool)

(declare-fun e!922443 () Bool)

(assert (=> b!1445945 (= e!922443 e!922444)))

(declare-fun b!1445944 () Bool)

(declare-fun e!922442 () Bool)

(assert (=> b!1445944 (= e!922442 e!922443)))

(declare-fun d!419391 () Bool)

(assert (=> d!419391 e!922442))

(assert (= b!1445945 b!1445946))

(assert (= b!1445944 b!1445945))

(assert (= (and d!419391 ((_ is Cons!14993) (rules!11498 thiss!10022))) b!1445944))

(declare-fun order!9023 () Int)

(declare-fun order!9025 () Int)

(declare-fun lambda!62956 () Int)

(declare-fun dynLambda!6842 (Int Int) Int)

(declare-fun dynLambda!6843 (Int Int) Int)

(assert (=> b!1445946 (< (dynLambda!6842 order!9023 (toValue!3942 (transformation!2635 (h!20394 (rules!11498 thiss!10022))))) (dynLambda!6843 order!9025 lambda!62956))))

(declare-fun order!9027 () Int)

(declare-fun dynLambda!6844 (Int Int) Int)

(assert (=> b!1445946 (< (dynLambda!6844 order!9027 (toChars!3801 (transformation!2635 (h!20394 (rules!11498 thiss!10022))))) (dynLambda!6843 order!9025 lambda!62956))))

(assert (=> d!419391 true))

(declare-fun e!922435 () Bool)

(assert (=> d!419391 e!922435))

(declare-fun res!654700 () Bool)

(assert (=> d!419391 (=> (not res!654700) (not e!922435))))

(declare-fun lt!498079 () Bool)

(declare-fun forall!3687 (List!15058 Int) Bool)

(assert (=> d!419391 (= res!654700 (= lt!498079 (forall!3687 (list!5973 (tokens!2014 thiss!10022)) lambda!62956)))))

(declare-fun forall!3688 (BalanceConc!10134 Int) Bool)

(assert (=> d!419391 (= lt!498079 (forall!3688 (tokens!2014 thiss!10022) lambda!62956))))

(assert (=> d!419391 (not (isEmpty!9342 (rules!11498 thiss!10022)))))

(assert (=> d!419391 (= (rulesProduceEachTokenIndividually!850 Lexer!2292 (rules!11498 thiss!10022) (tokens!2014 thiss!10022)) lt!498079)))

(declare-fun b!1445935 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!729 (LexerInterface!2294 List!15059 List!15058) Bool)

(assert (=> b!1445935 (= e!922435 (= lt!498079 (rulesProduceEachTokenIndividuallyList!729 Lexer!2292 (rules!11498 thiss!10022) (list!5973 (tokens!2014 thiss!10022)))))))

(assert (= (and d!419391 res!654700) b!1445935))

(assert (=> d!419391 m!1664083))

(assert (=> d!419391 m!1664083))

(declare-fun m!1666459 () Bool)

(assert (=> d!419391 m!1666459))

(declare-fun m!1666461 () Bool)

(assert (=> d!419391 m!1666461))

(assert (=> d!419391 m!1664697))

(assert (=> b!1445935 m!1664083))

(assert (=> b!1445935 m!1664083))

(declare-fun m!1666463 () Bool)

(assert (=> b!1445935 m!1666463))

(assert (=> b!1445246 d!419391))

(declare-fun d!419443 () Bool)

(declare-fun c!238244 () Bool)

(assert (=> d!419443 (= c!238244 ((_ is Node!5097) (left!12765 (c!238014 (tokens!2014 thiss!10022)))))))

(declare-fun e!922445 () Bool)

(assert (=> d!419443 (= (inv!19950 (left!12765 (c!238014 (tokens!2014 thiss!10022)))) e!922445)))

(declare-fun b!1445949 () Bool)

(assert (=> b!1445949 (= e!922445 (inv!19959 (left!12765 (c!238014 (tokens!2014 thiss!10022)))))))

(declare-fun b!1445950 () Bool)

(declare-fun e!922446 () Bool)

(assert (=> b!1445950 (= e!922445 e!922446)))

(declare-fun res!654701 () Bool)

(assert (=> b!1445950 (= res!654701 (not ((_ is Leaf!7616) (left!12765 (c!238014 (tokens!2014 thiss!10022))))))))

(assert (=> b!1445950 (=> res!654701 e!922446)))

(declare-fun b!1445951 () Bool)

(assert (=> b!1445951 (= e!922446 (inv!19960 (left!12765 (c!238014 (tokens!2014 thiss!10022)))))))

(assert (= (and d!419443 c!238244) b!1445949))

(assert (= (and d!419443 (not c!238244)) b!1445950))

(assert (= (and b!1445950 (not res!654701)) b!1445951))

(declare-fun m!1666465 () Bool)

(assert (=> b!1445949 m!1666465))

(declare-fun m!1666467 () Bool)

(assert (=> b!1445951 m!1666467))

(assert (=> b!1445277 d!419443))

(declare-fun d!419445 () Bool)

(declare-fun c!238245 () Bool)

(assert (=> d!419445 (= c!238245 ((_ is Node!5097) (right!13095 (c!238014 (tokens!2014 thiss!10022)))))))

(declare-fun e!922447 () Bool)

(assert (=> d!419445 (= (inv!19950 (right!13095 (c!238014 (tokens!2014 thiss!10022)))) e!922447)))

(declare-fun b!1445952 () Bool)

(assert (=> b!1445952 (= e!922447 (inv!19959 (right!13095 (c!238014 (tokens!2014 thiss!10022)))))))

(declare-fun b!1445953 () Bool)

(declare-fun e!922448 () Bool)

(assert (=> b!1445953 (= e!922447 e!922448)))

(declare-fun res!654702 () Bool)

(assert (=> b!1445953 (= res!654702 (not ((_ is Leaf!7616) (right!13095 (c!238014 (tokens!2014 thiss!10022))))))))

(assert (=> b!1445953 (=> res!654702 e!922448)))

(declare-fun b!1445954 () Bool)

(assert (=> b!1445954 (= e!922448 (inv!19960 (right!13095 (c!238014 (tokens!2014 thiss!10022)))))))

(assert (= (and d!419445 c!238245) b!1445952))

(assert (= (and d!419445 (not c!238245)) b!1445953))

(assert (= (and b!1445953 (not res!654702)) b!1445954))

(declare-fun m!1666469 () Bool)

(assert (=> b!1445952 m!1666469))

(declare-fun m!1666471 () Bool)

(assert (=> b!1445954 m!1666471))

(assert (=> b!1445277 d!419445))

(declare-fun d!419447 () Bool)

(declare-fun lt!498082 () Int)

(assert (=> d!419447 (>= lt!498082 0)))

(declare-fun e!922451 () Int)

(assert (=> d!419447 (= lt!498082 e!922451)))

(declare-fun c!238248 () Bool)

(assert (=> d!419447 (= c!238248 ((_ is Nil!14992) lt!496977))))

(assert (=> d!419447 (= (size!12290 lt!496977) lt!498082)))

(declare-fun b!1445959 () Bool)

(assert (=> b!1445959 (= e!922451 0)))

(declare-fun b!1445960 () Bool)

(assert (=> b!1445960 (= e!922451 (+ 1 (size!12290 (t!130177 lt!496977))))))

(assert (= (and d!419447 c!238248) b!1445959))

(assert (= (and d!419447 (not c!238248)) b!1445960))

(declare-fun m!1666473 () Bool)

(assert (=> b!1445960 m!1666473))

(assert (=> b!1445079 d!419447))

(declare-fun d!419449 () Bool)

(declare-fun lt!498083 () Int)

(assert (=> d!419449 (>= lt!498083 0)))

(declare-fun e!922452 () Int)

(assert (=> d!419449 (= lt!498083 e!922452)))

(declare-fun c!238249 () Bool)

(assert (=> d!419449 (= c!238249 ((_ is Nil!14992) lt!496941))))

(assert (=> d!419449 (= (size!12290 lt!496941) lt!498083)))

(declare-fun b!1445961 () Bool)

(assert (=> b!1445961 (= e!922452 0)))

(declare-fun b!1445962 () Bool)

(assert (=> b!1445962 (= e!922452 (+ 1 (size!12290 (t!130177 lt!496941))))))

(assert (= (and d!419449 c!238249) b!1445961))

(assert (= (and d!419449 (not c!238249)) b!1445962))

(assert (=> b!1445962 m!1666151))

(assert (=> b!1445079 d!419449))

(declare-fun d!419451 () Bool)

(declare-fun lt!498084 () Int)

(assert (=> d!419451 (>= lt!498084 0)))

(declare-fun e!922453 () Int)

(assert (=> d!419451 (= lt!498084 e!922453)))

(declare-fun c!238250 () Bool)

(assert (=> d!419451 (= c!238250 ((_ is Nil!14992) Nil!14992))))

(assert (=> d!419451 (= (size!12290 Nil!14992) lt!498084)))

(declare-fun b!1445963 () Bool)

(assert (=> b!1445963 (= e!922453 0)))

(declare-fun b!1445964 () Bool)

(assert (=> b!1445964 (= e!922453 (+ 1 (size!12290 (t!130177 Nil!14992))))))

(assert (= (and d!419451 c!238250) b!1445963))

(assert (= (and d!419451 (not c!238250)) b!1445964))

(declare-fun m!1666475 () Bool)

(assert (=> b!1445964 m!1666475))

(assert (=> b!1445079 d!419451))

(declare-fun d!419453 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!122 (LexerInterface!2294 BalanceConc!10134 Int List!15059) Bool)

(assert (=> d!419453 (= (separableTokens!234 Lexer!2292 (tokens!2014 thiss!10022) (rules!11498 thiss!10022)) (tokensListTwoByTwoPredicateSeparable!122 Lexer!2292 (tokens!2014 thiss!10022) 0 (rules!11498 thiss!10022)))))

(declare-fun bs!342202 () Bool)

(assert (= bs!342202 d!419453))

(declare-fun m!1666911 () Bool)

(assert (=> bs!342202 m!1666911))

(assert (=> b!1445229 d!419453))

(declare-fun d!419523 () Bool)

(assert (=> d!419523 (= (isEmpty!9341 (list!5972 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) lt!497237)))) ((_ is Nil!14990) (list!5972 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) lt!497237)))))))

(assert (=> b!1445179 d!419523))

(declare-fun d!419527 () Bool)

(assert (=> d!419527 (= (list!5972 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) lt!497237))) (list!5976 (c!238012 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) lt!497237)))))))

(declare-fun bs!342204 () Bool)

(assert (= bs!342204 d!419527))

(declare-fun m!1666919 () Bool)

(assert (=> bs!342204 m!1666919))

(assert (=> b!1445179 d!419527))

(declare-fun b!1446065 () Bool)

(declare-fun e!922513 () Bool)

(declare-fun lt!498230 () tuple2!14160)

(assert (=> b!1446065 (= e!922513 (= (_2!7966 lt!498230) lt!497237))))

(declare-fun b!1446066 () Bool)

(declare-fun res!654751 () Bool)

(declare-fun e!922512 () Bool)

(assert (=> b!1446066 (=> (not res!654751) (not e!922512))))

(assert (=> b!1446066 (= res!654751 (= (list!5973 (_1!7966 lt!498230)) (_1!7969 (lexList!706 Lexer!2292 (rules!11498 thiss!10022) (list!5972 lt!497237)))))))

(declare-fun b!1446067 () Bool)

(declare-fun e!922511 () Bool)

(assert (=> b!1446067 (= e!922511 (not (isEmpty!9334 (_1!7966 lt!498230))))))

(declare-fun d!419529 () Bool)

(assert (=> d!419529 e!922512))

(declare-fun res!654752 () Bool)

(assert (=> d!419529 (=> (not res!654752) (not e!922512))))

(assert (=> d!419529 (= res!654752 e!922513)))

(declare-fun c!238270 () Bool)

(assert (=> d!419529 (= c!238270 (> (size!12291 (_1!7966 lt!498230)) 0))))

(assert (=> d!419529 (= lt!498230 (lexTailRecV2!461 Lexer!2292 (rules!11498 thiss!10022) lt!497237 (BalanceConc!10133 Empty!5096) lt!497237 (BalanceConc!10135 Empty!5097)))))

(assert (=> d!419529 (= (lex!1050 Lexer!2292 (rules!11498 thiss!10022) lt!497237) lt!498230)))

(declare-fun b!1446068 () Bool)

(assert (=> b!1446068 (= e!922513 e!922511)))

(declare-fun res!654753 () Bool)

(assert (=> b!1446068 (= res!654753 (< (size!12293 (_2!7966 lt!498230)) (size!12293 lt!497237)))))

(assert (=> b!1446068 (=> (not res!654753) (not e!922511))))

(declare-fun b!1446069 () Bool)

(assert (=> b!1446069 (= e!922512 (= (list!5972 (_2!7966 lt!498230)) (_2!7969 (lexList!706 Lexer!2292 (rules!11498 thiss!10022) (list!5972 lt!497237)))))))

(assert (= (and d!419529 c!238270) b!1446068))

(assert (= (and d!419529 (not c!238270)) b!1446065))

(assert (= (and b!1446068 res!654753) b!1446067))

(assert (= (and d!419529 res!654752) b!1446066))

(assert (= (and b!1446066 res!654751) b!1446069))

(declare-fun m!1666921 () Bool)

(assert (=> b!1446066 m!1666921))

(declare-fun m!1666923 () Bool)

(assert (=> b!1446066 m!1666923))

(assert (=> b!1446066 m!1666923))

(declare-fun m!1666925 () Bool)

(assert (=> b!1446066 m!1666925))

(declare-fun m!1666927 () Bool)

(assert (=> b!1446068 m!1666927))

(declare-fun m!1666929 () Bool)

(assert (=> b!1446068 m!1666929))

(declare-fun m!1666931 () Bool)

(assert (=> b!1446069 m!1666931))

(assert (=> b!1446069 m!1666923))

(assert (=> b!1446069 m!1666923))

(assert (=> b!1446069 m!1666925))

(declare-fun m!1666933 () Bool)

(assert (=> b!1446067 m!1666933))

(declare-fun m!1666935 () Bool)

(assert (=> d!419529 m!1666935))

(declare-fun m!1666937 () Bool)

(assert (=> d!419529 m!1666937))

(assert (=> b!1445179 d!419529))

(declare-fun d!419531 () Bool)

(declare-fun c!238276 () Bool)

(assert (=> d!419531 (= c!238276 ((_ is Empty!5097) (c!238014 (tokens!2014 lt!496935))))))

(declare-fun e!922521 () List!15058)

(assert (=> d!419531 (= (list!5977 (c!238014 (tokens!2014 lt!496935))) e!922521)))

(declare-fun b!1446089 () Bool)

(declare-fun e!922522 () List!15058)

(declare-fun list!5980 (IArray!10199) List!15058)

(assert (=> b!1446089 (= e!922522 (list!5980 (xs!7838 (c!238014 (tokens!2014 lt!496935)))))))

(declare-fun b!1446087 () Bool)

(assert (=> b!1446087 (= e!922521 Nil!14992)))

(declare-fun b!1446088 () Bool)

(assert (=> b!1446088 (= e!922521 e!922522)))

(declare-fun c!238277 () Bool)

(assert (=> b!1446088 (= c!238277 ((_ is Leaf!7616) (c!238014 (tokens!2014 lt!496935))))))

(declare-fun b!1446090 () Bool)

(assert (=> b!1446090 (= e!922522 (++!4034 (list!5977 (left!12765 (c!238014 (tokens!2014 lt!496935)))) (list!5977 (right!13095 (c!238014 (tokens!2014 lt!496935))))))))

(assert (= (and d!419531 c!238276) b!1446087))

(assert (= (and d!419531 (not c!238276)) b!1446088))

(assert (= (and b!1446088 c!238277) b!1446089))

(assert (= (and b!1446088 (not c!238277)) b!1446090))

(declare-fun m!1666993 () Bool)

(assert (=> b!1446089 m!1666993))

(declare-fun m!1666995 () Bool)

(assert (=> b!1446090 m!1666995))

(declare-fun m!1666997 () Bool)

(assert (=> b!1446090 m!1666997))

(assert (=> b!1446090 m!1666995))

(assert (=> b!1446090 m!1666997))

(declare-fun m!1666999 () Bool)

(assert (=> b!1446090 m!1666999))

(assert (=> d!419005 d!419531))

(declare-fun d!419537 () Bool)

(assert (=> d!419537 (= (head!2929 (list!5972 lt!497223)) (h!20391 (list!5972 lt!497223)))))

(assert (=> b!1445159 d!419537))

(declare-fun d!419539 () Bool)

(declare-fun lt!498237 () BalanceConc!10132)

(assert (=> d!419539 (= (list!5972 lt!498237) (printList!713 Lexer!2292 (list!5973 (seqFromList!1704 (t!130177 lt!496941)))))))

(assert (=> d!419539 (= lt!498237 (printTailRec!685 Lexer!2292 (seqFromList!1704 (t!130177 lt!496941)) 0 (BalanceConc!10133 Empty!5096)))))

(assert (=> d!419539 (= (print!1075 Lexer!2292 (seqFromList!1704 (t!130177 lt!496941))) lt!498237)))

(declare-fun bs!342206 () Bool)

(assert (= bs!342206 d!419539))

(declare-fun m!1667001 () Bool)

(assert (=> bs!342206 m!1667001))

(assert (=> bs!342206 m!1664723))

(declare-fun m!1667009 () Bool)

(assert (=> bs!342206 m!1667009))

(assert (=> bs!342206 m!1667009))

(declare-fun m!1667013 () Bool)

(assert (=> bs!342206 m!1667013))

(assert (=> bs!342206 m!1664723))

(declare-fun m!1667017 () Bool)

(assert (=> bs!342206 m!1667017))

(assert (=> b!1445159 d!419539))

(declare-fun d!419541 () Bool)

(assert (=> d!419541 (= (seqFromList!1704 (t!130177 (t!130177 lt!496941))) (fromListB!733 (t!130177 (t!130177 lt!496941))))))

(declare-fun bs!342207 () Bool)

(assert (= bs!342207 d!419541))

(declare-fun m!1667027 () Bool)

(assert (=> bs!342207 m!1667027))

(assert (=> b!1445159 d!419541))

(declare-fun d!419543 () Bool)

(assert (=> d!419543 (= (isEmpty!9341 (_2!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 lt!496941))))))) ((_ is Nil!14990) (_2!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 lt!496941))))))))))

(assert (=> b!1445159 d!419543))

(declare-fun b!1446091 () Bool)

(declare-fun res!654768 () Bool)

(declare-fun e!922526 () Bool)

(assert (=> b!1446091 (=> res!654768 e!922526)))

(declare-fun e!922523 () Bool)

(assert (=> b!1446091 (= res!654768 e!922523)))

(declare-fun res!654767 () Bool)

(assert (=> b!1446091 (=> (not res!654767) (not e!922523))))

(declare-fun lt!498238 () Bool)

(assert (=> b!1446091 (= res!654767 lt!498238)))

(declare-fun bm!97794 () Bool)

(declare-fun call!97799 () Bool)

(assert (=> bm!97794 (= call!97799 (isEmpty!9341 (list!5972 (charsOf!1521 (h!20393 lt!496941)))))))

(declare-fun b!1446092 () Bool)

(declare-fun e!922529 () Bool)

(assert (=> b!1446092 (= e!922529 (not (= (head!2929 (list!5972 (charsOf!1521 (h!20393 lt!496941)))) (c!238013 (regex!2635 (rule!4406 (h!20393 lt!496941)))))))))

(declare-fun b!1446093 () Bool)

(assert (=> b!1446093 (= e!922523 (= (head!2929 (list!5972 (charsOf!1521 (h!20393 lt!496941)))) (c!238013 (regex!2635 (rule!4406 (h!20393 lt!496941))))))))

(declare-fun b!1446094 () Bool)

(declare-fun e!922524 () Bool)

(assert (=> b!1446094 (= e!922524 (nullable!1244 (regex!2635 (rule!4406 (h!20393 lt!496941)))))))

(declare-fun b!1446096 () Bool)

(declare-fun res!654765 () Bool)

(assert (=> b!1446096 (=> (not res!654765) (not e!922523))))

(assert (=> b!1446096 (= res!654765 (not call!97799))))

(declare-fun b!1446097 () Bool)

(declare-fun e!922525 () Bool)

(assert (=> b!1446097 (= e!922525 e!922529)))

(declare-fun res!654763 () Bool)

(assert (=> b!1446097 (=> res!654763 e!922529)))

(assert (=> b!1446097 (= res!654763 call!97799)))

(declare-fun b!1446098 () Bool)

(declare-fun e!922528 () Bool)

(assert (=> b!1446098 (= e!922528 (not lt!498238))))

(declare-fun b!1446099 () Bool)

(assert (=> b!1446099 (= e!922524 (matchR!1823 (derivativeStep!1000 (regex!2635 (rule!4406 (h!20393 lt!496941))) (head!2929 (list!5972 (charsOf!1521 (h!20393 lt!496941))))) (tail!2163 (list!5972 (charsOf!1521 (h!20393 lt!496941))))))))

(declare-fun b!1446100 () Bool)

(declare-fun res!654761 () Bool)

(assert (=> b!1446100 (=> res!654761 e!922529)))

(assert (=> b!1446100 (= res!654761 (not (isEmpty!9341 (tail!2163 (list!5972 (charsOf!1521 (h!20393 lt!496941)))))))))

(declare-fun b!1446101 () Bool)

(declare-fun res!654762 () Bool)

(assert (=> b!1446101 (=> res!654762 e!922526)))

(assert (=> b!1446101 (= res!654762 (not ((_ is ElementMatch!3949) (regex!2635 (rule!4406 (h!20393 lt!496941))))))))

(assert (=> b!1446101 (= e!922528 e!922526)))

(declare-fun b!1446102 () Bool)

(declare-fun e!922527 () Bool)

(assert (=> b!1446102 (= e!922527 e!922528)))

(declare-fun c!238279 () Bool)

(assert (=> b!1446102 (= c!238279 ((_ is EmptyLang!3949) (regex!2635 (rule!4406 (h!20393 lt!496941)))))))

(declare-fun d!419545 () Bool)

(assert (=> d!419545 e!922527))

(declare-fun c!238278 () Bool)

(assert (=> d!419545 (= c!238278 ((_ is EmptyExpr!3949) (regex!2635 (rule!4406 (h!20393 lt!496941)))))))

(assert (=> d!419545 (= lt!498238 e!922524)))

(declare-fun c!238280 () Bool)

(assert (=> d!419545 (= c!238280 (isEmpty!9341 (list!5972 (charsOf!1521 (h!20393 lt!496941)))))))

(assert (=> d!419545 (validRegex!1676 (regex!2635 (rule!4406 (h!20393 lt!496941))))))

(assert (=> d!419545 (= (matchR!1823 (regex!2635 (rule!4406 (h!20393 lt!496941))) (list!5972 (charsOf!1521 (h!20393 lt!496941)))) lt!498238)))

(declare-fun b!1446095 () Bool)

(declare-fun res!654766 () Bool)

(assert (=> b!1446095 (=> (not res!654766) (not e!922523))))

(assert (=> b!1446095 (= res!654766 (isEmpty!9341 (tail!2163 (list!5972 (charsOf!1521 (h!20393 lt!496941))))))))

(declare-fun b!1446103 () Bool)

(assert (=> b!1446103 (= e!922526 e!922525)))

(declare-fun res!654764 () Bool)

(assert (=> b!1446103 (=> (not res!654764) (not e!922525))))

(assert (=> b!1446103 (= res!654764 (not lt!498238))))

(declare-fun b!1446104 () Bool)

(assert (=> b!1446104 (= e!922527 (= lt!498238 call!97799))))

(assert (= (and d!419545 c!238280) b!1446094))

(assert (= (and d!419545 (not c!238280)) b!1446099))

(assert (= (and d!419545 c!238278) b!1446104))

(assert (= (and d!419545 (not c!238278)) b!1446102))

(assert (= (and b!1446102 c!238279) b!1446098))

(assert (= (and b!1446102 (not c!238279)) b!1446101))

(assert (= (and b!1446101 (not res!654762)) b!1446091))

(assert (= (and b!1446091 res!654767) b!1446096))

(assert (= (and b!1446096 res!654765) b!1446095))

(assert (= (and b!1446095 res!654766) b!1446093))

(assert (= (and b!1446091 (not res!654768)) b!1446103))

(assert (= (and b!1446103 res!654764) b!1446097))

(assert (= (and b!1446097 (not res!654763)) b!1446100))

(assert (= (and b!1446100 (not res!654761)) b!1446092))

(assert (= (or b!1446104 b!1446096 b!1446097) bm!97794))

(assert (=> b!1446099 m!1664677))

(declare-fun m!1667045 () Bool)

(assert (=> b!1446099 m!1667045))

(assert (=> b!1446099 m!1667045))

(declare-fun m!1667047 () Bool)

(assert (=> b!1446099 m!1667047))

(assert (=> b!1446099 m!1664677))

(declare-fun m!1667049 () Bool)

(assert (=> b!1446099 m!1667049))

(assert (=> b!1446099 m!1667047))

(assert (=> b!1446099 m!1667049))

(declare-fun m!1667057 () Bool)

(assert (=> b!1446099 m!1667057))

(declare-fun m!1667059 () Bool)

(assert (=> b!1446094 m!1667059))

(assert (=> b!1446092 m!1664677))

(assert (=> b!1446092 m!1667045))

(assert (=> b!1446095 m!1664677))

(assert (=> b!1446095 m!1667049))

(assert (=> b!1446095 m!1667049))

(declare-fun m!1667063 () Bool)

(assert (=> b!1446095 m!1667063))

(assert (=> b!1446093 m!1664677))

(assert (=> b!1446093 m!1667045))

(assert (=> b!1446100 m!1664677))

(assert (=> b!1446100 m!1667049))

(assert (=> b!1446100 m!1667049))

(assert (=> b!1446100 m!1667063))

(assert (=> bm!97794 m!1664677))

(declare-fun m!1667067 () Bool)

(assert (=> bm!97794 m!1667067))

(assert (=> d!419545 m!1664677))

(assert (=> d!419545 m!1667067))

(declare-fun m!1667069 () Bool)

(assert (=> d!419545 m!1667069))

(assert (=> b!1445159 d!419545))

(assert (=> b!1445159 d!419377))

(declare-fun d!419561 () Bool)

(assert (=> d!419561 (= (list!5973 (prepend!415 (seqFromList!1704 (t!130177 (t!130177 lt!496941))) (h!20393 (t!130177 lt!496941)))) (list!5977 (c!238014 (prepend!415 (seqFromList!1704 (t!130177 (t!130177 lt!496941))) (h!20393 (t!130177 lt!496941))))))))

(declare-fun bs!342212 () Bool)

(assert (= bs!342212 d!419561))

(declare-fun m!1667073 () Bool)

(assert (=> bs!342212 m!1667073))

(assert (=> b!1445159 d!419561))

(declare-fun b!1446111 () Bool)

(declare-fun e!922540 () Unit!23591)

(declare-fun Unit!23711 () Unit!23591)

(assert (=> b!1446111 (= e!922540 Unit!23711)))

(declare-fun b!1446112 () Bool)

(assert (=> b!1446112 false))

(declare-fun lt!498280 () Unit!23591)

(declare-fun lt!498299 () Unit!23591)

(assert (=> b!1446112 (= lt!498280 lt!498299)))

(declare-fun lt!498264 () Token!4932)

(declare-fun lt!498276 () List!15056)

(assert (=> b!1446112 (not (matchR!1823 (regex!2635 (rule!4406 lt!498264)) lt!498276))))

(assert (=> b!1446112 (= lt!498299 (lemmaMaxPrefNoSmallerRuleMatches!46 Lexer!2292 (rules!11498 thiss!10022) (rule!4406 (h!20393 lt!496941)) lt!498276 (list!5972 (charsOf!1521 (h!20393 lt!496941))) (rule!4406 lt!498264)))))

(assert (=> b!1446112 (= lt!498276 (list!5972 (charsOf!1521 (h!20393 lt!496941))))))

(declare-fun e!922536 () Unit!23591)

(declare-fun Unit!23712 () Unit!23591)

(assert (=> b!1446112 (= e!922536 Unit!23712)))

(declare-fun b!1446113 () Bool)

(declare-fun e!922534 () Unit!23591)

(declare-fun Unit!23713 () Unit!23591)

(assert (=> b!1446113 (= e!922534 Unit!23713)))

(declare-fun c!238282 () Bool)

(assert (=> b!1446113 (= c!238282 (< (getIndex!74 (rules!11498 thiss!10022) (rule!4406 (h!20393 lt!496941))) (getIndex!74 (rules!11498 thiss!10022) (rule!4406 lt!498264))))))

(declare-fun lt!498284 () Unit!23591)

(declare-fun e!922539 () Unit!23591)

(assert (=> b!1446113 (= lt!498284 e!922539)))

(declare-fun c!238283 () Bool)

(assert (=> b!1446113 (= c!238283 (< (getIndex!74 (rules!11498 thiss!10022) (rule!4406 lt!498264)) (getIndex!74 (rules!11498 thiss!10022) (rule!4406 (h!20393 lt!496941)))))))

(declare-fun lt!498244 () Unit!23591)

(assert (=> b!1446113 (= lt!498244 e!922536)))

(declare-fun c!238286 () Bool)

(assert (=> b!1446113 (= c!238286 (= (getIndex!74 (rules!11498 thiss!10022) (rule!4406 lt!498264)) (getIndex!74 (rules!11498 thiss!10022) (rule!4406 (h!20393 lt!496941)))))))

(declare-fun lt!498257 () Unit!23591)

(declare-fun e!922535 () Unit!23591)

(assert (=> b!1446113 (= lt!498257 e!922535)))

(assert (=> b!1446113 false))

(declare-fun b!1446114 () Bool)

(declare-fun e!922538 () Bool)

(assert (=> b!1446114 (= e!922538 (= (rule!4406 lt!498264) (get!4587 (getRuleFromTag!220 Lexer!2292 (rules!11498 thiss!10022) (tag!2899 (rule!4406 lt!498264))))))))

(declare-fun b!1446115 () Bool)

(declare-fun Unit!23714 () Unit!23591)

(assert (=> b!1446115 (= e!922534 Unit!23714)))

(declare-fun b!1446116 () Bool)

(declare-fun Unit!23715 () Unit!23591)

(assert (=> b!1446116 (= e!922540 Unit!23715)))

(declare-fun lt!498312 () List!15056)

(declare-fun lt!498311 () Unit!23591)

(declare-fun lt!498293 () List!15056)

(assert (=> b!1446116 (= lt!498311 (lemmaMaxPrefixThenMatchesRulesRegex!6 Lexer!2292 (rules!11498 thiss!10022) lt!498293 lt!498264 (rule!4406 lt!498264) lt!498312))))

(assert (=> b!1446116 (matchR!1823 (rulesRegex!397 Lexer!2292 (rules!11498 thiss!10022)) (list!5972 (charsOf!1521 lt!498264)))))

(declare-fun lt!498270 () Unit!23591)

(assert (=> b!1446116 (= lt!498270 lt!498311)))

(declare-fun lt!498279 () List!15056)

(assert (=> b!1446116 (= lt!498279 (list!5972 (charsOf!1521 (h!20393 lt!496941))))))

(declare-fun lt!498292 () List!15056)

(assert (=> b!1446116 (= lt!498292 (list!5972 (charsOf!1521 (h!20393 lt!496941))))))

(declare-fun lt!498271 () List!15056)

(assert (=> b!1446116 (= lt!498271 (getSuffix!651 lt!498293 (list!5972 (charsOf!1521 (h!20393 lt!496941)))))))

(declare-fun lt!498300 () Unit!23591)

(assert (=> b!1446116 (= lt!498300 (lemmaSamePrefixThenSameSuffix!603 lt!498279 (list!5972 lt!497223) lt!498292 lt!498271 lt!498293))))

(assert (=> b!1446116 (= (list!5972 lt!497223) lt!498271)))

(declare-fun lt!498261 () Unit!23591)

(assert (=> b!1446116 (= lt!498261 lt!498300)))

(declare-fun lt!498273 () List!15056)

(assert (=> b!1446116 (= lt!498273 (list!5972 (charsOf!1521 (h!20393 lt!496941))))))

(declare-fun lt!498274 () Unit!23591)

(assert (=> b!1446116 (= lt!498274 (lemmaAddHeadSuffixToPrefixStillPrefix!94 lt!498273 lt!498293))))

(assert (=> b!1446116 (isPrefix!1197 (++!4033 lt!498273 (Cons!14990 (head!2929 (getSuffix!651 lt!498293 lt!498273)) Nil!14990)) lt!498293)))

(declare-fun lt!498281 () Unit!23591)

(assert (=> b!1446116 (= lt!498281 lt!498274)))

(declare-fun lt!498307 () List!15056)

(assert (=> b!1446116 (= lt!498307 (list!5972 (charsOf!1521 lt!498264)))))

(declare-fun lt!498291 () List!15056)

(assert (=> b!1446116 (= lt!498291 (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496941))) (Cons!14990 (head!2929 (list!5972 lt!497223)) Nil!14990)))))

(declare-fun lt!498296 () Unit!23591)

(assert (=> b!1446116 (= lt!498296 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!6 lt!498307 lt!498291 lt!498293))))

(assert (=> b!1446116 (isPrefix!1197 lt!498291 lt!498307)))

(declare-fun lt!498245 () Unit!23591)

(assert (=> b!1446116 (= lt!498245 lt!498296)))

(declare-fun lt!498255 () Regex!3949)

(assert (=> b!1446116 (= lt!498255 (rulesRegex!397 Lexer!2292 (rules!11498 thiss!10022)))))

(declare-fun lt!498286 () List!15056)

(assert (=> b!1446116 (= lt!498286 (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496941))) (Cons!14990 (head!2929 (list!5972 lt!497223)) Nil!14990)))))

(declare-fun lt!498250 () List!15056)

(assert (=> b!1446116 (= lt!498250 (list!5972 (charsOf!1521 lt!498264)))))

(declare-fun lt!498277 () Unit!23591)

(assert (=> b!1446116 (= lt!498277 (lemmaNotPrefixMatchThenCannotMatchLonger!7 lt!498255 lt!498286 lt!498250))))

(assert (=> b!1446116 (not (matchR!1823 lt!498255 lt!498250))))

(declare-fun lt!498252 () Unit!23591)

(assert (=> b!1446116 (= lt!498252 lt!498277)))

(assert (=> b!1446116 false))

(declare-fun b!1446117 () Bool)

(declare-fun e!922537 () Unit!23591)

(declare-fun Unit!23718 () Unit!23591)

(assert (=> b!1446117 (= e!922537 Unit!23718)))

(declare-fun lt!498265 () List!15056)

(assert (=> b!1446117 (= lt!498265 (list!5972 (charsOf!1521 lt!498264)))))

(declare-fun lt!498295 () List!15056)

(assert (=> b!1446117 (= lt!498295 (list!5972 (charsOf!1521 (h!20393 lt!496941))))))

(declare-fun lt!498308 () Unit!23591)

(assert (=> b!1446117 (= lt!498308 (lemmaMaxPrefixOutputsMaxPrefix!96 Lexer!2292 (rules!11498 thiss!10022) (rule!4406 lt!498264) lt!498265 lt!498293 lt!498295 (rule!4406 (h!20393 lt!496941))))))

(assert (=> b!1446117 (not (matchR!1823 (regex!2635 (rule!4406 (h!20393 lt!496941))) lt!498295))))

(declare-fun lt!498262 () Unit!23591)

(assert (=> b!1446117 (= lt!498262 lt!498308)))

(assert (=> b!1446117 false))

(declare-fun b!1446118 () Bool)

(declare-fun res!654773 () Bool)

(assert (=> b!1446118 (=> (not res!654773) (not e!922538))))

(assert (=> b!1446118 (= res!654773 (matchR!1823 (regex!2635 (get!4587 (getRuleFromTag!220 Lexer!2292 (rules!11498 thiss!10022) (tag!2899 (rule!4406 lt!498264))))) (list!5972 (charsOf!1521 lt!498264))))))

(declare-fun d!419565 () Bool)

(assert (=> d!419565 (= (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496941))) (list!5972 lt!497223))) (Some!2860 (tuple2!14163 (h!20393 lt!496941) (list!5972 lt!497223))))))

(declare-fun lt!498290 () Unit!23591)

(declare-fun Unit!23719 () Unit!23591)

(assert (=> d!419565 (= lt!498290 Unit!23719)))

(declare-fun lt!498272 () Unit!23591)

(assert (=> d!419565 (= lt!498272 e!922534)))

(declare-fun c!238285 () Bool)

(assert (=> d!419565 (= c!238285 (not (= (rule!4406 lt!498264) (rule!4406 (h!20393 lt!496941)))))))

(declare-fun lt!498246 () Unit!23591)

(declare-fun lt!498256 () Unit!23591)

(assert (=> d!419565 (= lt!498246 lt!498256)))

(assert (=> d!419565 (= (list!5972 lt!497223) lt!498312)))

(assert (=> d!419565 (= lt!498256 (lemmaSamePrefixThenSameSuffix!603 (list!5972 (charsOf!1521 (h!20393 lt!496941))) (list!5972 lt!497223) (list!5972 (charsOf!1521 (h!20393 lt!496941))) lt!498312 lt!498293))))

(declare-fun lt!498285 () Unit!23591)

(declare-fun lt!498298 () Unit!23591)

(assert (=> d!419565 (= lt!498285 lt!498298)))

(declare-fun lt!498243 () List!15056)

(declare-fun lt!498306 () List!15056)

(assert (=> d!419565 (= lt!498243 lt!498306)))

(assert (=> d!419565 (= lt!498298 (lemmaIsPrefixSameLengthThenSameList!105 lt!498243 lt!498306 lt!498293))))

(assert (=> d!419565 (= lt!498306 (list!5972 (charsOf!1521 (h!20393 lt!496941))))))

(assert (=> d!419565 (= lt!498243 (list!5972 (charsOf!1521 lt!498264)))))

(declare-fun lt!498283 () Unit!23591)

(assert (=> d!419565 (= lt!498283 e!922537)))

(declare-fun c!238287 () Bool)

(assert (=> d!419565 (= c!238287 (< (size!12293 (charsOf!1521 lt!498264)) (size!12293 (charsOf!1521 (h!20393 lt!496941)))))))

(declare-fun lt!498309 () Unit!23591)

(assert (=> d!419565 (= lt!498309 e!922540)))

(declare-fun c!238284 () Bool)

(assert (=> d!419565 (= c!238284 (> (size!12293 (charsOf!1521 lt!498264)) (size!12293 (charsOf!1521 (h!20393 lt!496941)))))))

(declare-fun lt!498303 () Unit!23591)

(declare-fun lt!498251 () Unit!23591)

(assert (=> d!419565 (= lt!498303 lt!498251)))

(assert (=> d!419565 (matchR!1823 (rulesRegex!397 Lexer!2292 (rules!11498 thiss!10022)) (list!5972 (charsOf!1521 (h!20393 lt!496941))))))

(assert (=> d!419565 (= lt!498251 (lemmaMaxPrefixThenMatchesRulesRegex!6 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 lt!496941))) (h!20393 lt!496941) (rule!4406 (h!20393 lt!496941)) Nil!14990))))

(declare-fun lt!498305 () Unit!23591)

(declare-fun lt!498242 () Unit!23591)

(assert (=> d!419565 (= lt!498305 lt!498242)))

(declare-fun lt!498267 () List!15056)

(assert (=> d!419565 (= lt!498312 lt!498267)))

(declare-fun lt!498266 () List!15056)

(declare-fun lt!498249 () List!15056)

(assert (=> d!419565 (= lt!498242 (lemmaSamePrefixThenSameSuffix!603 lt!498266 lt!498312 lt!498249 lt!498267 lt!498293))))

(assert (=> d!419565 (= lt!498267 (getSuffix!651 lt!498293 (list!5972 (charsOf!1521 lt!498264))))))

(assert (=> d!419565 (= lt!498249 (list!5972 (charsOf!1521 lt!498264)))))

(assert (=> d!419565 (= lt!498266 (list!5972 (charsOf!1521 lt!498264)))))

(declare-fun lt!498269 () Unit!23591)

(declare-fun lt!498294 () Unit!23591)

(assert (=> d!419565 (= lt!498269 lt!498294)))

(declare-fun lt!498282 () List!15056)

(assert (=> d!419565 (= (maxPrefixOneRule!656 Lexer!2292 (rule!4406 lt!498264) lt!498293) (Some!2860 (tuple2!14163 (Token!4933 (apply!3870 (transformation!2635 (rule!4406 lt!498264)) (seqFromList!1705 lt!498282)) (rule!4406 lt!498264) (size!12289 lt!498282) lt!498282) lt!498312)))))

(assert (=> d!419565 (= lt!498294 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!196 Lexer!2292 (rules!11498 thiss!10022) lt!498282 lt!498293 lt!498312 (rule!4406 lt!498264)))))

(assert (=> d!419565 (= lt!498282 (list!5972 (charsOf!1521 lt!498264)))))

(declare-fun lt!498310 () Unit!23591)

(assert (=> d!419565 (= lt!498310 (lemmaCharactersSize!302 lt!498264))))

(declare-fun lt!498248 () Unit!23591)

(assert (=> d!419565 (= lt!498248 (lemmaEqSameImage!113 (transformation!2635 (rule!4406 lt!498264)) (charsOf!1521 lt!498264) (seqFromList!1705 (originalCharacters!3497 lt!498264))))))

(declare-fun lt!498297 () Unit!23591)

(assert (=> d!419565 (= lt!498297 (lemmaSemiInverse!348 (transformation!2635 (rule!4406 lt!498264)) (charsOf!1521 lt!498264)))))

(declare-fun lt!498301 () Unit!23591)

(assert (=> d!419565 (= lt!498301 (lemmaInv!380 (transformation!2635 (rule!4406 lt!498264))))))

(declare-fun lt!498260 () Unit!23591)

(declare-fun lt!498258 () Unit!23591)

(assert (=> d!419565 (= lt!498260 lt!498258)))

(declare-fun lt!498253 () List!15056)

(assert (=> d!419565 (isPrefix!1197 lt!498253 (++!4033 lt!498253 lt!498312))))

(assert (=> d!419565 (= lt!498258 (lemmaConcatTwoListThenFirstIsPrefix!762 lt!498253 lt!498312))))

(assert (=> d!419565 (= lt!498253 (list!5972 (charsOf!1521 lt!498264)))))

(declare-fun lt!498263 () Unit!23591)

(declare-fun lt!498302 () Unit!23591)

(assert (=> d!419565 (= lt!498263 lt!498302)))

(assert (=> d!419565 e!922538))

(declare-fun res!654774 () Bool)

(assert (=> d!419565 (=> (not res!654774) (not e!922538))))

(assert (=> d!419565 (= res!654774 (isDefined!2316 (getRuleFromTag!220 Lexer!2292 (rules!11498 thiss!10022) (tag!2899 (rule!4406 lt!498264)))))))

(assert (=> d!419565 (= lt!498302 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!220 Lexer!2292 (rules!11498 thiss!10022) lt!498293 lt!498264))))

(declare-fun lt!498304 () Option!2861)

(assert (=> d!419565 (= lt!498312 (_2!7967 (get!4585 lt!498304)))))

(assert (=> d!419565 (= lt!498264 (_1!7967 (get!4585 lt!498304)))))

(declare-fun lt!498254 () Unit!23591)

(assert (=> d!419565 (= lt!498254 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!235 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 lt!496941))) (list!5972 lt!497223)))))

(assert (=> d!419565 (= lt!498304 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) lt!498293))))

(declare-fun lt!498288 () Unit!23591)

(declare-fun lt!498268 () Unit!23591)

(assert (=> d!419565 (= lt!498288 lt!498268)))

(declare-fun lt!498275 () List!15056)

(assert (=> d!419565 (isPrefix!1197 lt!498275 (++!4033 lt!498275 (list!5972 lt!497223)))))

(assert (=> d!419565 (= lt!498268 (lemmaConcatTwoListThenFirstIsPrefix!762 lt!498275 (list!5972 lt!497223)))))

(assert (=> d!419565 (= lt!498275 (list!5972 (charsOf!1521 (h!20393 lt!496941))))))

(assert (=> d!419565 (= lt!498293 (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496941))) (list!5972 lt!497223)))))

(assert (=> d!419565 (not (isEmpty!9342 (rules!11498 thiss!10022)))))

(assert (=> d!419565 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!33 Lexer!2292 (rules!11498 thiss!10022) (h!20393 lt!496941) (rule!4406 (h!20393 lt!496941)) (list!5972 lt!497223)) lt!498290)))

(declare-fun b!1446119 () Bool)

(declare-fun Unit!23732 () Unit!23591)

(assert (=> b!1446119 (= e!922535 Unit!23732)))

(declare-fun b!1446120 () Bool)

(assert (=> b!1446120 false))

(declare-fun lt!498259 () Unit!23591)

(declare-fun lt!498247 () Unit!23591)

(assert (=> b!1446120 (= lt!498259 lt!498247)))

(assert (=> b!1446120 (= (rule!4406 lt!498264) (rule!4406 (h!20393 lt!496941)))))

(assert (=> b!1446120 (= lt!498247 (lemmaSameIndexThenSameElement!22 (rules!11498 thiss!10022) (rule!4406 lt!498264) (rule!4406 (h!20393 lt!496941))))))

(declare-fun Unit!23733 () Unit!23591)

(assert (=> b!1446120 (= e!922535 Unit!23733)))

(declare-fun b!1446121 () Bool)

(declare-fun Unit!23734 () Unit!23591)

(assert (=> b!1446121 (= e!922536 Unit!23734)))

(declare-fun b!1446122 () Bool)

(declare-fun Unit!23735 () Unit!23591)

(assert (=> b!1446122 (= e!922537 Unit!23735)))

(declare-fun b!1446123 () Bool)

(declare-fun Unit!23736 () Unit!23591)

(assert (=> b!1446123 (= e!922539 Unit!23736)))

(declare-fun b!1446124 () Bool)

(assert (=> b!1446124 false))

(declare-fun lt!498278 () Unit!23591)

(declare-fun lt!498287 () Unit!23591)

(assert (=> b!1446124 (= lt!498278 lt!498287)))

(declare-fun lt!498289 () List!15056)

(assert (=> b!1446124 (not (matchR!1823 (regex!2635 (rule!4406 (h!20393 lt!496941))) lt!498289))))

(assert (=> b!1446124 (= lt!498287 (lemmaMaxPrefNoSmallerRuleMatches!46 Lexer!2292 (rules!11498 thiss!10022) (rule!4406 lt!498264) lt!498289 lt!498293 (rule!4406 (h!20393 lt!496941))))))

(assert (=> b!1446124 (= lt!498289 (list!5972 (charsOf!1521 lt!498264)))))

(declare-fun Unit!23737 () Unit!23591)

(assert (=> b!1446124 (= e!922539 Unit!23737)))

(assert (= (and d!419565 res!654774) b!1446118))

(assert (= (and b!1446118 res!654773) b!1446114))

(assert (= (and d!419565 c!238284) b!1446116))

(assert (= (and d!419565 (not c!238284)) b!1446111))

(assert (= (and d!419565 c!238287) b!1446117))

(assert (= (and d!419565 (not c!238287)) b!1446122))

(assert (= (and d!419565 c!238285) b!1446113))

(assert (= (and d!419565 (not c!238285)) b!1446115))

(assert (= (and b!1446113 c!238282) b!1446124))

(assert (= (and b!1446113 (not c!238282)) b!1446123))

(assert (= (and b!1446113 c!238283) b!1446112))

(assert (= (and b!1446113 (not c!238283)) b!1446121))

(assert (= (and b!1446113 c!238286) b!1446120))

(assert (= (and b!1446113 (not c!238286)) b!1446119))

(declare-fun m!1667103 () Bool)

(assert (=> b!1446112 m!1667103))

(assert (=> b!1446112 m!1664675))

(assert (=> b!1446112 m!1664675))

(assert (=> b!1446112 m!1664677))

(assert (=> b!1446112 m!1664677))

(declare-fun m!1667105 () Bool)

(assert (=> b!1446112 m!1667105))

(assert (=> d!419565 m!1664675))

(assert (=> d!419565 m!1664677))

(declare-fun m!1667107 () Bool)

(assert (=> d!419565 m!1667107))

(declare-fun m!1667109 () Bool)

(assert (=> d!419565 m!1667109))

(declare-fun m!1667111 () Bool)

(assert (=> d!419565 m!1667111))

(assert (=> d!419565 m!1664727))

(declare-fun m!1667113 () Bool)

(assert (=> d!419565 m!1667113))

(declare-fun m!1667115 () Bool)

(assert (=> d!419565 m!1667115))

(declare-fun m!1667117 () Bool)

(assert (=> d!419565 m!1667117))

(assert (=> d!419565 m!1664677))

(assert (=> d!419565 m!1664727))

(assert (=> d!419565 m!1664765))

(assert (=> d!419565 m!1667111))

(declare-fun m!1667119 () Bool)

(assert (=> d!419565 m!1667119))

(assert (=> d!419565 m!1664675))

(declare-fun m!1667121 () Bool)

(assert (=> d!419565 m!1667121))

(declare-fun m!1667123 () Bool)

(assert (=> d!419565 m!1667123))

(declare-fun m!1667125 () Bool)

(assert (=> d!419565 m!1667125))

(declare-fun m!1667127 () Bool)

(assert (=> d!419565 m!1667127))

(declare-fun m!1667129 () Bool)

(assert (=> d!419565 m!1667129))

(declare-fun m!1667131 () Bool)

(assert (=> d!419565 m!1667131))

(assert (=> d!419565 m!1664677))

(declare-fun m!1667133 () Bool)

(assert (=> d!419565 m!1667133))

(declare-fun m!1667135 () Bool)

(assert (=> d!419565 m!1667135))

(declare-fun m!1667137 () Bool)

(assert (=> d!419565 m!1667137))

(assert (=> d!419565 m!1664677))

(declare-fun m!1667139 () Bool)

(assert (=> d!419565 m!1667139))

(declare-fun m!1667141 () Bool)

(assert (=> d!419565 m!1667141))

(declare-fun m!1667143 () Bool)

(assert (=> d!419565 m!1667143))

(assert (=> d!419565 m!1664727))

(declare-fun m!1667145 () Bool)

(assert (=> d!419565 m!1667145))

(declare-fun m!1667147 () Bool)

(assert (=> d!419565 m!1667147))

(assert (=> d!419565 m!1667141))

(declare-fun m!1667149 () Bool)

(assert (=> d!419565 m!1667149))

(declare-fun m!1667151 () Bool)

(assert (=> d!419565 m!1667151))

(declare-fun m!1667153 () Bool)

(assert (=> d!419565 m!1667153))

(assert (=> d!419565 m!1667141))

(assert (=> d!419565 m!1667115))

(assert (=> d!419565 m!1667137))

(declare-fun m!1667155 () Bool)

(assert (=> d!419565 m!1667155))

(declare-fun m!1667157 () Bool)

(assert (=> d!419565 m!1667157))

(declare-fun m!1667159 () Bool)

(assert (=> d!419565 m!1667159))

(declare-fun m!1667161 () Bool)

(assert (=> d!419565 m!1667161))

(assert (=> d!419565 m!1667125))

(assert (=> d!419565 m!1664675))

(declare-fun m!1667163 () Bool)

(assert (=> d!419565 m!1667163))

(assert (=> d!419565 m!1664677))

(assert (=> d!419565 m!1664727))

(assert (=> d!419565 m!1664677))

(declare-fun m!1667165 () Bool)

(assert (=> d!419565 m!1667165))

(assert (=> d!419565 m!1664697))

(assert (=> d!419565 m!1667141))

(assert (=> d!419565 m!1667109))

(declare-fun m!1667167 () Bool)

(assert (=> d!419565 m!1667167))

(assert (=> d!419565 m!1664677))

(assert (=> d!419565 m!1664727))

(assert (=> d!419565 m!1667121))

(declare-fun m!1667169 () Bool)

(assert (=> d!419565 m!1667169))

(assert (=> d!419565 m!1667113))

(declare-fun m!1667171 () Bool)

(assert (=> d!419565 m!1667171))

(assert (=> d!419565 m!1667141))

(assert (=> d!419565 m!1667131))

(declare-fun m!1667173 () Bool)

(assert (=> d!419565 m!1667173))

(assert (=> b!1446117 m!1664675))

(assert (=> b!1446117 m!1664677))

(declare-fun m!1667175 () Bool)

(assert (=> b!1446117 m!1667175))

(assert (=> b!1446117 m!1667141))

(assert (=> b!1446117 m!1667115))

(assert (=> b!1446117 m!1664675))

(assert (=> b!1446117 m!1667141))

(declare-fun m!1667177 () Bool)

(assert (=> b!1446117 m!1667177))

(assert (=> b!1446114 m!1667125))

(assert (=> b!1446114 m!1667125))

(declare-fun m!1667179 () Bool)

(assert (=> b!1446114 m!1667179))

(assert (=> b!1446116 m!1664675))

(assert (=> b!1446116 m!1664677))

(declare-fun m!1667181 () Bool)

(assert (=> b!1446116 m!1667181))

(assert (=> b!1446116 m!1664677))

(declare-fun m!1667183 () Bool)

(assert (=> b!1446116 m!1667183))

(assert (=> b!1446116 m!1664727))

(assert (=> b!1446116 m!1664787))

(declare-fun m!1667187 () Bool)

(assert (=> b!1446116 m!1667187))

(declare-fun m!1667191 () Bool)

(assert (=> b!1446116 m!1667191))

(declare-fun m!1667195 () Bool)

(assert (=> b!1446116 m!1667195))

(assert (=> b!1446116 m!1664675))

(declare-fun m!1667199 () Bool)

(assert (=> b!1446116 m!1667199))

(assert (=> b!1446116 m!1667141))

(assert (=> b!1446116 m!1667199))

(declare-fun m!1667203 () Bool)

(assert (=> b!1446116 m!1667203))

(declare-fun m!1667205 () Bool)

(assert (=> b!1446116 m!1667205))

(assert (=> b!1446116 m!1667137))

(assert (=> b!1446116 m!1667115))

(declare-fun m!1667207 () Bool)

(assert (=> b!1446116 m!1667207))

(assert (=> b!1446116 m!1667191))

(declare-fun m!1667209 () Bool)

(assert (=> b!1446116 m!1667209))

(assert (=> b!1446116 m!1667141))

(assert (=> b!1446116 m!1667115))

(assert (=> b!1446116 m!1667137))

(assert (=> b!1446116 m!1664727))

(declare-fun m!1667211 () Bool)

(assert (=> b!1446116 m!1667211))

(declare-fun m!1667213 () Bool)

(assert (=> b!1446116 m!1667213))

(assert (=> b!1446116 m!1664677))

(declare-fun m!1667215 () Bool)

(assert (=> b!1446116 m!1667215))

(declare-fun m!1667219 () Bool)

(assert (=> b!1446116 m!1667219))

(declare-fun m!1667221 () Bool)

(assert (=> b!1446113 m!1667221))

(declare-fun m!1667225 () Bool)

(assert (=> b!1446113 m!1667225))

(declare-fun m!1667229 () Bool)

(assert (=> b!1446120 m!1667229))

(assert (=> b!1446118 m!1667115))

(declare-fun m!1667231 () Bool)

(assert (=> b!1446118 m!1667231))

(assert (=> b!1446118 m!1667125))

(assert (=> b!1446118 m!1667179))

(assert (=> b!1446118 m!1667141))

(assert (=> b!1446118 m!1667115))

(assert (=> b!1446118 m!1667125))

(assert (=> b!1446118 m!1667141))

(declare-fun m!1667235 () Bool)

(assert (=> b!1446124 m!1667235))

(declare-fun m!1667237 () Bool)

(assert (=> b!1446124 m!1667237))

(assert (=> b!1446124 m!1667141))

(assert (=> b!1446124 m!1667141))

(assert (=> b!1446124 m!1667115))

(assert (=> b!1445159 d!419565))

(declare-fun d!419581 () Bool)

(declare-fun lt!498316 () BalanceConc!10132)

(assert (=> d!419581 (= (list!5972 lt!498316) (printList!713 Lexer!2292 (list!5973 (singletonSeq!1238 (h!20393 lt!496941)))))))

(assert (=> d!419581 (= lt!498316 (printTailRec!685 Lexer!2292 (singletonSeq!1238 (h!20393 lt!496941)) 0 (BalanceConc!10133 Empty!5096)))))

(assert (=> d!419581 (= (print!1075 Lexer!2292 (singletonSeq!1238 (h!20393 lt!496941))) lt!498316)))

(declare-fun bs!342213 () Bool)

(assert (= bs!342213 d!419581))

(declare-fun m!1667239 () Bool)

(assert (=> bs!342213 m!1667239))

(assert (=> bs!342213 m!1664707))

(declare-fun m!1667241 () Bool)

(assert (=> bs!342213 m!1667241))

(assert (=> bs!342213 m!1667241))

(declare-fun m!1667243 () Bool)

(assert (=> bs!342213 m!1667243))

(assert (=> bs!342213 m!1664707))

(assert (=> bs!342213 m!1664757))

(assert (=> b!1445159 d!419581))

(declare-fun d!419583 () Bool)

(assert (=> d!419583 (= (head!2929 (originalCharacters!3497 (h!20393 (t!130177 lt!496941)))) (h!20391 (originalCharacters!3497 (h!20393 (t!130177 lt!496941)))))))

(assert (=> b!1445159 d!419583))

(declare-fun d!419585 () Bool)

(assert (=> d!419585 (= (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 lt!496941))))) (not (isEmpty!9346 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 lt!496941)))))))))

(declare-fun bs!342214 () Bool)

(assert (= bs!342214 d!419585))

(assert (=> bs!342214 m!1664741))

(declare-fun m!1667245 () Bool)

(assert (=> bs!342214 m!1667245))

(assert (=> b!1445159 d!419585))

(declare-fun b!1446145 () Bool)

(declare-fun e!922549 () Bool)

(assert (=> b!1446145 (= e!922549 (isPrefix!1197 (tail!2163 lt!497216) (tail!2163 (++!4033 lt!497216 lt!497215))))))

(declare-fun b!1446144 () Bool)

(declare-fun res!654785 () Bool)

(assert (=> b!1446144 (=> (not res!654785) (not e!922549))))

(assert (=> b!1446144 (= res!654785 (= (head!2929 lt!497216) (head!2929 (++!4033 lt!497216 lt!497215))))))

(declare-fun d!419587 () Bool)

(declare-fun e!922551 () Bool)

(assert (=> d!419587 e!922551))

(declare-fun res!654788 () Bool)

(assert (=> d!419587 (=> res!654788 e!922551)))

(declare-fun lt!498317 () Bool)

(assert (=> d!419587 (= res!654788 (not lt!498317))))

(declare-fun e!922550 () Bool)

(assert (=> d!419587 (= lt!498317 e!922550)))

(declare-fun res!654787 () Bool)

(assert (=> d!419587 (=> res!654787 e!922550)))

(assert (=> d!419587 (= res!654787 ((_ is Nil!14990) lt!497216))))

(assert (=> d!419587 (= (isPrefix!1197 lt!497216 (++!4033 lt!497216 lt!497215)) lt!498317)))

(declare-fun b!1446146 () Bool)

(assert (=> b!1446146 (= e!922551 (>= (size!12289 (++!4033 lt!497216 lt!497215)) (size!12289 lt!497216)))))

(declare-fun b!1446143 () Bool)

(assert (=> b!1446143 (= e!922550 e!922549)))

(declare-fun res!654786 () Bool)

(assert (=> b!1446143 (=> (not res!654786) (not e!922549))))

(assert (=> b!1446143 (= res!654786 (not ((_ is Nil!14990) (++!4033 lt!497216 lt!497215))))))

(assert (= (and d!419587 (not res!654787)) b!1446143))

(assert (= (and b!1446143 res!654786) b!1446144))

(assert (= (and b!1446144 res!654785) b!1446145))

(assert (= (and d!419587 (not res!654788)) b!1446146))

(declare-fun m!1667247 () Bool)

(assert (=> b!1446145 m!1667247))

(assert (=> b!1446145 m!1664753))

(declare-fun m!1667249 () Bool)

(assert (=> b!1446145 m!1667249))

(assert (=> b!1446145 m!1667247))

(assert (=> b!1446145 m!1667249))

(declare-fun m!1667251 () Bool)

(assert (=> b!1446145 m!1667251))

(declare-fun m!1667253 () Bool)

(assert (=> b!1446144 m!1667253))

(assert (=> b!1446144 m!1664753))

(declare-fun m!1667255 () Bool)

(assert (=> b!1446144 m!1667255))

(assert (=> b!1446146 m!1664753))

(declare-fun m!1667257 () Bool)

(assert (=> b!1446146 m!1667257))

(declare-fun m!1667259 () Bool)

(assert (=> b!1446146 m!1667259))

(assert (=> b!1445159 d!419587))

(declare-fun d!419589 () Bool)

(declare-fun lt!498318 () BalanceConc!10132)

(assert (=> d!419589 (= (list!5972 lt!498318) (printList!713 Lexer!2292 (list!5973 (seqFromList!1704 lt!496941))))))

(assert (=> d!419589 (= lt!498318 (printTailRec!685 Lexer!2292 (seqFromList!1704 lt!496941) 0 (BalanceConc!10133 Empty!5096)))))

(assert (=> d!419589 (= (print!1075 Lexer!2292 (seqFromList!1704 lt!496941)) lt!498318)))

(declare-fun bs!342215 () Bool)

(assert (= bs!342215 d!419589))

(declare-fun m!1667261 () Bool)

(assert (=> bs!342215 m!1667261))

(assert (=> bs!342215 m!1664703))

(declare-fun m!1667263 () Bool)

(assert (=> bs!342215 m!1667263))

(assert (=> bs!342215 m!1667263))

(declare-fun m!1667265 () Bool)

(assert (=> bs!342215 m!1667265))

(assert (=> bs!342215 m!1664703))

(declare-fun m!1667267 () Bool)

(assert (=> bs!342215 m!1667267))

(assert (=> b!1445159 d!419589))

(declare-fun d!419591 () Bool)

(assert (=> d!419591 (= (seqFromList!1704 (t!130177 lt!496941)) (fromListB!733 (t!130177 lt!496941)))))

(declare-fun bs!342217 () Bool)

(assert (= bs!342217 d!419591))

(declare-fun m!1667269 () Bool)

(assert (=> bs!342217 m!1667269))

(assert (=> b!1445159 d!419591))

(declare-fun d!419593 () Bool)

(declare-fun e!922552 () Bool)

(assert (=> d!419593 e!922552))

(declare-fun res!654789 () Bool)

(assert (=> d!419593 (=> (not res!654789) (not e!922552))))

(declare-fun lt!498319 () BalanceConc!10134)

(assert (=> d!419593 (= res!654789 (= (list!5973 lt!498319) (Cons!14992 (h!20393 lt!496941) Nil!14992)))))

(assert (=> d!419593 (= lt!498319 (singleton!520 (h!20393 lt!496941)))))

(assert (=> d!419593 (= (singletonSeq!1238 (h!20393 lt!496941)) lt!498319)))

(declare-fun b!1446147 () Bool)

(assert (=> b!1446147 (= e!922552 (isBalanced!1518 (c!238014 lt!498319)))))

(assert (= (and d!419593 res!654789) b!1446147))

(declare-fun m!1667271 () Bool)

(assert (=> d!419593 m!1667271))

(declare-fun m!1667273 () Bool)

(assert (=> d!419593 m!1667273))

(declare-fun m!1667275 () Bool)

(assert (=> b!1446147 m!1667275))

(assert (=> b!1445159 d!419593))

(declare-fun d!419597 () Bool)

(assert (=> d!419597 (= (seqFromList!1704 lt!496941) (fromListB!733 lt!496941))))

(declare-fun bs!342218 () Bool)

(assert (= bs!342218 d!419597))

(declare-fun m!1667277 () Bool)

(assert (=> bs!342218 m!1667277))

(assert (=> b!1445159 d!419597))

(declare-fun d!419599 () Bool)

(declare-fun lt!498321 () BalanceConc!10132)

(assert (=> d!419599 (= (list!5972 lt!498321) (originalCharacters!3497 (h!20393 (t!130177 lt!496941))))))

(assert (=> d!419599 (= lt!498321 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496941))))) (value!84745 (h!20393 (t!130177 lt!496941)))))))

(assert (=> d!419599 (= (charsOf!1521 (h!20393 (t!130177 lt!496941))) lt!498321)))

(declare-fun b_lambda!45163 () Bool)

(assert (=> (not b_lambda!45163) (not d!419599)))

(declare-fun tb!78681 () Bool)

(declare-fun t!130229 () Bool)

(assert (=> (and b!1445271 (= (toChars!3801 (transformation!2635 (h!20394 (rules!11498 thiss!10022)))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496941)))))) t!130229) tb!78681))

(declare-fun b!1446152 () Bool)

(declare-fun e!922555 () Bool)

(declare-fun tp!407815 () Bool)

(assert (=> b!1446152 (= e!922555 (and (inv!19962 (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496941))))) (value!84745 (h!20393 (t!130177 lt!496941)))))) tp!407815))))

(declare-fun result!95102 () Bool)

(assert (=> tb!78681 (= result!95102 (and (inv!19963 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496941))))) (value!84745 (h!20393 (t!130177 lt!496941))))) e!922555))))

(assert (= tb!78681 b!1446152))

(declare-fun m!1667293 () Bool)

(assert (=> b!1446152 m!1667293))

(declare-fun m!1667295 () Bool)

(assert (=> tb!78681 m!1667295))

(assert (=> d!419599 t!130229))

(declare-fun b_and!97863 () Bool)

(assert (= b_and!97851 (and (=> t!130229 result!95102) b_and!97863)))

(declare-fun t!130231 () Bool)

(declare-fun tb!78683 () Bool)

(assert (=> (and b!1445282 (= (toChars!3801 (transformation!2635 (h!20394 (rules!11498 other!32)))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496941)))))) t!130231) tb!78683))

(declare-fun result!95104 () Bool)

(assert (= result!95104 result!95102))

(assert (=> d!419599 t!130231))

(declare-fun b_and!97865 () Bool)

(assert (= b_and!97853 (and (=> t!130231 result!95104) b_and!97865)))

(declare-fun m!1667297 () Bool)

(assert (=> d!419599 m!1667297))

(declare-fun m!1667299 () Bool)

(assert (=> d!419599 m!1667299))

(assert (=> b!1445159 d!419599))

(declare-fun b!1446157 () Bool)

(declare-fun e!922561 () Bool)

(declare-fun e!922560 () Bool)

(assert (=> b!1446157 (= e!922561 e!922560)))

(declare-fun res!654797 () Bool)

(assert (=> b!1446157 (=> (not res!654797) (not e!922560))))

(declare-fun lt!498326 () Option!2861)

(assert (=> b!1446157 (= res!654797 (isDefined!2314 lt!498326))))

(declare-fun d!419603 () Bool)

(assert (=> d!419603 e!922561))

(declare-fun res!654799 () Bool)

(assert (=> d!419603 (=> res!654799 e!922561)))

(assert (=> d!419603 (= res!654799 (isEmpty!9346 lt!498326))))

(declare-fun e!922562 () Option!2861)

(assert (=> d!419603 (= lt!498326 e!922562)))

(declare-fun c!238293 () Bool)

(assert (=> d!419603 (= c!238293 (and ((_ is Cons!14993) (rules!11498 thiss!10022)) ((_ is Nil!14993) (t!130178 (rules!11498 thiss!10022)))))))

(declare-fun lt!498325 () Unit!23591)

(declare-fun lt!498323 () Unit!23591)

(assert (=> d!419603 (= lt!498325 lt!498323)))

(assert (=> d!419603 (isPrefix!1197 (list!5972 lt!497210) (list!5972 lt!497210))))

(assert (=> d!419603 (= lt!498323 (lemmaIsPrefixRefl!830 (list!5972 lt!497210) (list!5972 lt!497210)))))

(assert (=> d!419603 (rulesValidInductive!817 Lexer!2292 (rules!11498 thiss!10022))))

(assert (=> d!419603 (= (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 lt!497210)) lt!498326)))

(declare-fun b!1446158 () Bool)

(declare-fun call!97800 () Option!2861)

(assert (=> b!1446158 (= e!922562 call!97800)))

(declare-fun b!1446159 () Bool)

(declare-fun res!654796 () Bool)

(assert (=> b!1446159 (=> (not res!654796) (not e!922560))))

(assert (=> b!1446159 (= res!654796 (= (++!4033 (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!498326)))) (_2!7967 (get!4585 lt!498326))) (list!5972 lt!497210)))))

(declare-fun b!1446160 () Bool)

(declare-fun res!654794 () Bool)

(assert (=> b!1446160 (=> (not res!654794) (not e!922560))))

(assert (=> b!1446160 (= res!654794 (< (size!12289 (_2!7967 (get!4585 lt!498326))) (size!12289 (list!5972 lt!497210))))))

(declare-fun bm!97795 () Bool)

(assert (=> bm!97795 (= call!97800 (maxPrefixOneRule!656 Lexer!2292 (h!20394 (rules!11498 thiss!10022)) (list!5972 lt!497210)))))

(declare-fun b!1446161 () Bool)

(declare-fun res!654798 () Bool)

(assert (=> b!1446161 (=> (not res!654798) (not e!922560))))

(assert (=> b!1446161 (= res!654798 (= (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!498326)))) (originalCharacters!3497 (_1!7967 (get!4585 lt!498326)))))))

(declare-fun b!1446162 () Bool)

(declare-fun res!654793 () Bool)

(assert (=> b!1446162 (=> (not res!654793) (not e!922560))))

(assert (=> b!1446162 (= res!654793 (matchR!1823 (regex!2635 (rule!4406 (_1!7967 (get!4585 lt!498326)))) (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!498326))))))))

(declare-fun b!1446163 () Bool)

(declare-fun res!654795 () Bool)

(assert (=> b!1446163 (=> (not res!654795) (not e!922560))))

(assert (=> b!1446163 (= res!654795 (= (value!84745 (_1!7967 (get!4585 lt!498326))) (apply!3870 (transformation!2635 (rule!4406 (_1!7967 (get!4585 lt!498326)))) (seqFromList!1705 (originalCharacters!3497 (_1!7967 (get!4585 lt!498326)))))))))

(declare-fun b!1446164 () Bool)

(assert (=> b!1446164 (= e!922560 (contains!2871 (rules!11498 thiss!10022) (rule!4406 (_1!7967 (get!4585 lt!498326)))))))

(declare-fun b!1446165 () Bool)

(declare-fun lt!498324 () Option!2861)

(declare-fun lt!498327 () Option!2861)

(assert (=> b!1446165 (= e!922562 (ite (and ((_ is None!2860) lt!498324) ((_ is None!2860) lt!498327)) None!2860 (ite ((_ is None!2860) lt!498327) lt!498324 (ite ((_ is None!2860) lt!498324) lt!498327 (ite (>= (size!12285 (_1!7967 (v!22408 lt!498324))) (size!12285 (_1!7967 (v!22408 lt!498327)))) lt!498324 lt!498327)))))))

(assert (=> b!1446165 (= lt!498324 call!97800)))

(assert (=> b!1446165 (= lt!498327 (maxPrefix!1187 Lexer!2292 (t!130178 (rules!11498 thiss!10022)) (list!5972 lt!497210)))))

(assert (= (and d!419603 c!238293) b!1446158))

(assert (= (and d!419603 (not c!238293)) b!1446165))

(assert (= (or b!1446158 b!1446165) bm!97795))

(assert (= (and d!419603 (not res!654799)) b!1446157))

(assert (= (and b!1446157 res!654797) b!1446161))

(assert (= (and b!1446161 res!654798) b!1446160))

(assert (= (and b!1446160 res!654794) b!1446159))

(assert (= (and b!1446159 res!654796) b!1446163))

(assert (= (and b!1446163 res!654795) b!1446162))

(assert (= (and b!1446162 res!654793) b!1446164))

(declare-fun m!1667319 () Bool)

(assert (=> b!1446164 m!1667319))

(declare-fun m!1667321 () Bool)

(assert (=> b!1446164 m!1667321))

(assert (=> bm!97795 m!1664715))

(declare-fun m!1667323 () Bool)

(assert (=> bm!97795 m!1667323))

(assert (=> b!1446162 m!1667319))

(declare-fun m!1667325 () Bool)

(assert (=> b!1446162 m!1667325))

(assert (=> b!1446162 m!1667325))

(declare-fun m!1667331 () Bool)

(assert (=> b!1446162 m!1667331))

(assert (=> b!1446162 m!1667331))

(declare-fun m!1667333 () Bool)

(assert (=> b!1446162 m!1667333))

(assert (=> b!1446163 m!1667319))

(declare-fun m!1667335 () Bool)

(assert (=> b!1446163 m!1667335))

(assert (=> b!1446163 m!1667335))

(declare-fun m!1667341 () Bool)

(assert (=> b!1446163 m!1667341))

(assert (=> b!1446159 m!1667319))

(assert (=> b!1446159 m!1667325))

(assert (=> b!1446159 m!1667325))

(assert (=> b!1446159 m!1667331))

(assert (=> b!1446159 m!1667331))

(declare-fun m!1667343 () Bool)

(assert (=> b!1446159 m!1667343))

(assert (=> b!1446160 m!1667319))

(declare-fun m!1667345 () Bool)

(assert (=> b!1446160 m!1667345))

(assert (=> b!1446160 m!1664715))

(declare-fun m!1667347 () Bool)

(assert (=> b!1446160 m!1667347))

(declare-fun m!1667349 () Bool)

(assert (=> d!419603 m!1667349))

(assert (=> d!419603 m!1664715))

(assert (=> d!419603 m!1664715))

(declare-fun m!1667351 () Bool)

(assert (=> d!419603 m!1667351))

(assert (=> d!419603 m!1664715))

(assert (=> d!419603 m!1664715))

(declare-fun m!1667353 () Bool)

(assert (=> d!419603 m!1667353))

(declare-fun m!1667355 () Bool)

(assert (=> d!419603 m!1667355))

(assert (=> b!1446161 m!1667319))

(assert (=> b!1446161 m!1667325))

(assert (=> b!1446161 m!1667325))

(assert (=> b!1446161 m!1667331))

(declare-fun m!1667367 () Bool)

(assert (=> b!1446157 m!1667367))

(assert (=> b!1446165 m!1664715))

(declare-fun m!1667371 () Bool)

(assert (=> b!1446165 m!1667371))

(assert (=> b!1445159 d!419603))

(declare-fun d!419619 () Bool)

(declare-fun lt!498330 () BalanceConc!10132)

(assert (=> d!419619 (= (list!5972 lt!498330) (printListTailRec!285 Lexer!2292 (dropList!470 (singletonSeq!1238 (h!20393 lt!496941)) 0) (list!5972 (BalanceConc!10133 Empty!5096))))))

(declare-fun e!922573 () BalanceConc!10132)

(assert (=> d!419619 (= lt!498330 e!922573)))

(declare-fun c!238300 () Bool)

(assert (=> d!419619 (= c!238300 (>= 0 (size!12291 (singletonSeq!1238 (h!20393 lt!496941)))))))

(declare-fun e!922572 () Bool)

(assert (=> d!419619 e!922572))

(declare-fun res!654804 () Bool)

(assert (=> d!419619 (=> (not res!654804) (not e!922572))))

(assert (=> d!419619 (= res!654804 (>= 0 0))))

(assert (=> d!419619 (= (printTailRec!685 Lexer!2292 (singletonSeq!1238 (h!20393 lt!496941)) 0 (BalanceConc!10133 Empty!5096)) lt!498330)))

(declare-fun b!1446182 () Bool)

(assert (=> b!1446182 (= e!922572 (<= 0 (size!12291 (singletonSeq!1238 (h!20393 lt!496941)))))))

(declare-fun b!1446183 () Bool)

(assert (=> b!1446183 (= e!922573 (BalanceConc!10133 Empty!5096))))

(declare-fun b!1446184 () Bool)

(assert (=> b!1446184 (= e!922573 (printTailRec!685 Lexer!2292 (singletonSeq!1238 (h!20393 lt!496941)) (+ 0 1) (++!4036 (BalanceConc!10133 Empty!5096) (charsOf!1521 (apply!3865 (singletonSeq!1238 (h!20393 lt!496941)) 0)))))))

(declare-fun lt!498331 () List!15058)

(assert (=> b!1446184 (= lt!498331 (list!5973 (singletonSeq!1238 (h!20393 lt!496941))))))

(declare-fun lt!498335 () Unit!23591)

(assert (=> b!1446184 (= lt!498335 (lemmaDropApply!488 lt!498331 0))))

(assert (=> b!1446184 (= (head!2931 (drop!736 lt!498331 0)) (apply!3866 lt!498331 0))))

(declare-fun lt!498333 () Unit!23591)

(assert (=> b!1446184 (= lt!498333 lt!498335)))

(declare-fun lt!498334 () List!15058)

(assert (=> b!1446184 (= lt!498334 (list!5973 (singletonSeq!1238 (h!20393 lt!496941))))))

(declare-fun lt!498332 () Unit!23591)

(assert (=> b!1446184 (= lt!498332 (lemmaDropTail!468 lt!498334 0))))

(assert (=> b!1446184 (= (tail!2162 (drop!736 lt!498334 0)) (drop!736 lt!498334 (+ 0 1)))))

(declare-fun lt!498336 () Unit!23591)

(assert (=> b!1446184 (= lt!498336 lt!498332)))

(assert (= (and d!419619 res!654804) b!1446182))

(assert (= (and d!419619 c!238300) b!1446183))

(assert (= (and d!419619 (not c!238300)) b!1446184))

(declare-fun m!1667391 () Bool)

(assert (=> d!419619 m!1667391))

(assert (=> d!419619 m!1664879))

(declare-fun m!1667395 () Bool)

(assert (=> d!419619 m!1667395))

(assert (=> d!419619 m!1664707))

(assert (=> d!419619 m!1667391))

(assert (=> d!419619 m!1664879))

(assert (=> d!419619 m!1664707))

(declare-fun m!1667397 () Bool)

(assert (=> d!419619 m!1667397))

(declare-fun m!1667399 () Bool)

(assert (=> d!419619 m!1667399))

(assert (=> b!1446182 m!1664707))

(assert (=> b!1446182 m!1667397))

(assert (=> b!1446184 m!1664707))

(assert (=> b!1446184 m!1667241))

(declare-fun m!1667401 () Bool)

(assert (=> b!1446184 m!1667401))

(declare-fun m!1667403 () Bool)

(assert (=> b!1446184 m!1667403))

(declare-fun m!1667405 () Bool)

(assert (=> b!1446184 m!1667405))

(declare-fun m!1667407 () Bool)

(assert (=> b!1446184 m!1667407))

(assert (=> b!1446184 m!1664707))

(declare-fun m!1667409 () Bool)

(assert (=> b!1446184 m!1667409))

(declare-fun m!1667411 () Bool)

(assert (=> b!1446184 m!1667411))

(declare-fun m!1667413 () Bool)

(assert (=> b!1446184 m!1667413))

(declare-fun m!1667417 () Bool)

(assert (=> b!1446184 m!1667417))

(assert (=> b!1446184 m!1664707))

(assert (=> b!1446184 m!1667407))

(declare-fun m!1667425 () Bool)

(assert (=> b!1446184 m!1667425))

(assert (=> b!1446184 m!1667409))

(assert (=> b!1446184 m!1667405))

(declare-fun m!1667427 () Bool)

(assert (=> b!1446184 m!1667427))

(declare-fun m!1667429 () Bool)

(assert (=> b!1446184 m!1667429))

(assert (=> b!1446184 m!1667429))

(declare-fun m!1667431 () Bool)

(assert (=> b!1446184 m!1667431))

(assert (=> b!1446184 m!1667401))

(assert (=> b!1445159 d!419619))

(declare-fun d!419629 () Bool)

(declare-fun e!922578 () Bool)

(assert (=> d!419629 e!922578))

(declare-fun res!654805 () Bool)

(assert (=> d!419629 (=> (not res!654805) (not e!922578))))

(declare-fun lt!498337 () BalanceConc!10132)

(assert (=> d!419629 (= res!654805 (= (list!5972 lt!498337) (Cons!14990 (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496941))) 0) Nil!14990)))))

(assert (=> d!419629 (= lt!498337 (singleton!519 (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496941))) 0)))))

(assert (=> d!419629 (= (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496941))) 0)) lt!498337)))

(declare-fun b!1446192 () Bool)

(assert (=> b!1446192 (= e!922578 (isBalanced!1520 (c!238012 lt!498337)))))

(assert (= (and d!419629 res!654805) b!1446192))

(declare-fun m!1667435 () Bool)

(assert (=> d!419629 m!1667435))

(assert (=> d!419629 m!1664735))

(declare-fun m!1667437 () Bool)

(assert (=> d!419629 m!1667437))

(declare-fun m!1667439 () Bool)

(assert (=> b!1446192 m!1667439))

(assert (=> b!1445159 d!419629))

(declare-fun d!419633 () Bool)

(assert (=> d!419633 (= (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (originalCharacters!3497 (h!20393 lt!496941)))) (not (isEmpty!9346 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (originalCharacters!3497 (h!20393 lt!496941))))))))

(declare-fun bs!342222 () Bool)

(assert (= bs!342222 d!419633))

(assert (=> bs!342222 m!1664711))

(declare-fun m!1667441 () Bool)

(assert (=> bs!342222 m!1667441))

(assert (=> b!1445159 d!419633))

(declare-fun d!419635 () Bool)

(assert (=> d!419635 (= (list!5973 (_1!7966 lt!497206)) (list!5973 (prepend!415 (seqFromList!1704 (t!130177 (t!130177 lt!496941))) (h!20393 (t!130177 lt!496941)))))))

(declare-fun lt!498339 () Unit!23591)

(assert (=> d!419635 (= lt!498339 (choose!8913 (h!20393 (t!130177 lt!496941)) (t!130177 (t!130177 lt!496941)) (_1!7966 lt!497206)))))

(assert (=> d!419635 (= (list!5973 (_1!7966 lt!497206)) (list!5973 (seqFromList!1704 ($colon$colon!244 (t!130177 (t!130177 lt!496941)) (h!20393 (t!130177 lt!496941))))))))

(assert (=> d!419635 (= (seqFromListBHdTlConstructive!91 (h!20393 (t!130177 lt!496941)) (t!130177 (t!130177 lt!496941)) (_1!7966 lt!497206)) lt!498339)))

(declare-fun bs!342223 () Bool)

(assert (= bs!342223 d!419635))

(declare-fun m!1667455 () Bool)

(assert (=> bs!342223 m!1667455))

(declare-fun m!1667459 () Bool)

(assert (=> bs!342223 m!1667459))

(declare-fun m!1667461 () Bool)

(assert (=> bs!342223 m!1667461))

(assert (=> bs!342223 m!1664763))

(declare-fun m!1667465 () Bool)

(assert (=> bs!342223 m!1667465))

(assert (=> bs!342223 m!1664717))

(assert (=> bs!342223 m!1664719))

(assert (=> bs!342223 m!1664749))

(assert (=> bs!342223 m!1664717))

(assert (=> bs!342223 m!1664719))

(assert (=> bs!342223 m!1667455))

(assert (=> bs!342223 m!1667459))

(assert (=> b!1445159 d!419635))

(assert (=> b!1445159 d!419379))

(declare-fun d!419639 () Bool)

(declare-fun lt!498340 () C!8076)

(assert (=> d!419639 (= lt!498340 (head!2929 (list!5972 lt!497223)))))

(assert (=> d!419639 (= lt!498340 (head!2932 (c!238012 lt!497223)))))

(assert (=> d!419639 (not (isEmpty!9343 lt!497223))))

(assert (=> d!419639 (= (head!2930 lt!497223) lt!498340)))

(declare-fun bs!342224 () Bool)

(assert (= bs!342224 d!419639))

(assert (=> bs!342224 m!1664727))

(assert (=> bs!342224 m!1664727))

(assert (=> bs!342224 m!1664787))

(declare-fun m!1667473 () Bool)

(assert (=> bs!342224 m!1667473))

(declare-fun m!1667475 () Bool)

(assert (=> bs!342224 m!1667475))

(assert (=> b!1445159 d!419639))

(declare-fun b!1446202 () Bool)

(declare-fun e!922585 () Bool)

(declare-fun e!922584 () Bool)

(assert (=> b!1446202 (= e!922585 e!922584)))

(declare-fun res!654813 () Bool)

(assert (=> b!1446202 (=> (not res!654813) (not e!922584))))

(declare-fun lt!498344 () Option!2861)

(assert (=> b!1446202 (= res!654813 (isDefined!2314 lt!498344))))

(declare-fun d!419643 () Bool)

(assert (=> d!419643 e!922585))

(declare-fun res!654815 () Bool)

(assert (=> d!419643 (=> res!654815 e!922585)))

(assert (=> d!419643 (= res!654815 (isEmpty!9346 lt!498344))))

(declare-fun e!922586 () Option!2861)

(assert (=> d!419643 (= lt!498344 e!922586)))

(declare-fun c!238307 () Bool)

(assert (=> d!419643 (= c!238307 (and ((_ is Cons!14993) (rules!11498 thiss!10022)) ((_ is Nil!14993) (t!130178 (rules!11498 thiss!10022)))))))

(declare-fun lt!498343 () Unit!23591)

(declare-fun lt!498341 () Unit!23591)

(assert (=> d!419643 (= lt!498343 lt!498341)))

(assert (=> d!419643 (isPrefix!1197 (originalCharacters!3497 (h!20393 lt!496941)) (originalCharacters!3497 (h!20393 lt!496941)))))

(assert (=> d!419643 (= lt!498341 (lemmaIsPrefixRefl!830 (originalCharacters!3497 (h!20393 lt!496941)) (originalCharacters!3497 (h!20393 lt!496941))))))

(assert (=> d!419643 (rulesValidInductive!817 Lexer!2292 (rules!11498 thiss!10022))))

(assert (=> d!419643 (= (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (originalCharacters!3497 (h!20393 lt!496941))) lt!498344)))

(declare-fun b!1446203 () Bool)

(declare-fun call!97801 () Option!2861)

(assert (=> b!1446203 (= e!922586 call!97801)))

(declare-fun b!1446204 () Bool)

(declare-fun res!654812 () Bool)

(assert (=> b!1446204 (=> (not res!654812) (not e!922584))))

(assert (=> b!1446204 (= res!654812 (= (++!4033 (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!498344)))) (_2!7967 (get!4585 lt!498344))) (originalCharacters!3497 (h!20393 lt!496941))))))

(declare-fun b!1446205 () Bool)

(declare-fun res!654810 () Bool)

(assert (=> b!1446205 (=> (not res!654810) (not e!922584))))

(assert (=> b!1446205 (= res!654810 (< (size!12289 (_2!7967 (get!4585 lt!498344))) (size!12289 (originalCharacters!3497 (h!20393 lt!496941)))))))

(declare-fun bm!97796 () Bool)

(assert (=> bm!97796 (= call!97801 (maxPrefixOneRule!656 Lexer!2292 (h!20394 (rules!11498 thiss!10022)) (originalCharacters!3497 (h!20393 lt!496941))))))

(declare-fun b!1446206 () Bool)

(declare-fun res!654814 () Bool)

(assert (=> b!1446206 (=> (not res!654814) (not e!922584))))

(assert (=> b!1446206 (= res!654814 (= (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!498344)))) (originalCharacters!3497 (_1!7967 (get!4585 lt!498344)))))))

(declare-fun b!1446207 () Bool)

(declare-fun res!654809 () Bool)

(assert (=> b!1446207 (=> (not res!654809) (not e!922584))))

(assert (=> b!1446207 (= res!654809 (matchR!1823 (regex!2635 (rule!4406 (_1!7967 (get!4585 lt!498344)))) (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!498344))))))))

(declare-fun b!1446208 () Bool)

(declare-fun res!654811 () Bool)

(assert (=> b!1446208 (=> (not res!654811) (not e!922584))))

(assert (=> b!1446208 (= res!654811 (= (value!84745 (_1!7967 (get!4585 lt!498344))) (apply!3870 (transformation!2635 (rule!4406 (_1!7967 (get!4585 lt!498344)))) (seqFromList!1705 (originalCharacters!3497 (_1!7967 (get!4585 lt!498344)))))))))

(declare-fun b!1446209 () Bool)

(assert (=> b!1446209 (= e!922584 (contains!2871 (rules!11498 thiss!10022) (rule!4406 (_1!7967 (get!4585 lt!498344)))))))

(declare-fun b!1446210 () Bool)

(declare-fun lt!498342 () Option!2861)

(declare-fun lt!498345 () Option!2861)

(assert (=> b!1446210 (= e!922586 (ite (and ((_ is None!2860) lt!498342) ((_ is None!2860) lt!498345)) None!2860 (ite ((_ is None!2860) lt!498345) lt!498342 (ite ((_ is None!2860) lt!498342) lt!498345 (ite (>= (size!12285 (_1!7967 (v!22408 lt!498342))) (size!12285 (_1!7967 (v!22408 lt!498345)))) lt!498342 lt!498345)))))))

(assert (=> b!1446210 (= lt!498342 call!97801)))

(assert (=> b!1446210 (= lt!498345 (maxPrefix!1187 Lexer!2292 (t!130178 (rules!11498 thiss!10022)) (originalCharacters!3497 (h!20393 lt!496941))))))

(assert (= (and d!419643 c!238307) b!1446203))

(assert (= (and d!419643 (not c!238307)) b!1446210))

(assert (= (or b!1446203 b!1446210) bm!97796))

(assert (= (and d!419643 (not res!654815)) b!1446202))

(assert (= (and b!1446202 res!654813) b!1446206))

(assert (= (and b!1446206 res!654814) b!1446205))

(assert (= (and b!1446205 res!654810) b!1446204))

(assert (= (and b!1446204 res!654812) b!1446208))

(assert (= (and b!1446208 res!654811) b!1446207))

(assert (= (and b!1446207 res!654809) b!1446209))

(declare-fun m!1667495 () Bool)

(assert (=> b!1446209 m!1667495))

(declare-fun m!1667497 () Bool)

(assert (=> b!1446209 m!1667497))

(declare-fun m!1667499 () Bool)

(assert (=> bm!97796 m!1667499))

(assert (=> b!1446207 m!1667495))

(declare-fun m!1667501 () Bool)

(assert (=> b!1446207 m!1667501))

(assert (=> b!1446207 m!1667501))

(declare-fun m!1667503 () Bool)

(assert (=> b!1446207 m!1667503))

(assert (=> b!1446207 m!1667503))

(declare-fun m!1667507 () Bool)

(assert (=> b!1446207 m!1667507))

(assert (=> b!1446208 m!1667495))

(declare-fun m!1667509 () Bool)

(assert (=> b!1446208 m!1667509))

(assert (=> b!1446208 m!1667509))

(declare-fun m!1667511 () Bool)

(assert (=> b!1446208 m!1667511))

(assert (=> b!1446204 m!1667495))

(assert (=> b!1446204 m!1667501))

(assert (=> b!1446204 m!1667501))

(assert (=> b!1446204 m!1667503))

(assert (=> b!1446204 m!1667503))

(declare-fun m!1667513 () Bool)

(assert (=> b!1446204 m!1667513))

(assert (=> b!1446205 m!1667495))

(declare-fun m!1667515 () Bool)

(assert (=> b!1446205 m!1667515))

(declare-fun m!1667517 () Bool)

(assert (=> b!1446205 m!1667517))

(declare-fun m!1667519 () Bool)

(assert (=> d!419643 m!1667519))

(declare-fun m!1667521 () Bool)

(assert (=> d!419643 m!1667521))

(declare-fun m!1667523 () Bool)

(assert (=> d!419643 m!1667523))

(assert (=> d!419643 m!1667355))

(assert (=> b!1446206 m!1667495))

(assert (=> b!1446206 m!1667501))

(assert (=> b!1446206 m!1667501))

(assert (=> b!1446206 m!1667503))

(declare-fun m!1667533 () Bool)

(assert (=> b!1446202 m!1667533))

(declare-fun m!1667537 () Bool)

(assert (=> b!1446210 m!1667537))

(assert (=> b!1445159 d!419643))

(declare-fun d!419657 () Bool)

(assert (=> d!419657 (= (list!5973 (_1!7966 lt!497206)) (list!5977 (c!238014 (_1!7966 lt!497206))))))

(declare-fun bs!342226 () Bool)

(assert (= bs!342226 d!419657))

(declare-fun m!1667545 () Bool)

(assert (=> bs!342226 m!1667545))

(assert (=> b!1445159 d!419657))

(declare-fun d!419661 () Bool)

(declare-fun e!922595 () Bool)

(assert (=> d!419661 e!922595))

(declare-fun res!654827 () Bool)

(assert (=> d!419661 (=> (not res!654827) (not e!922595))))

(assert (=> d!419661 (= res!654827 (= (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) (print!1075 Lexer!2292 (seqFromList!1704 (t!130177 lt!496941)))))) (t!130177 lt!496941)))))

(declare-fun lt!498351 () Unit!23591)

(declare-fun e!922594 () Unit!23591)

(assert (=> d!419661 (= lt!498351 e!922594)))

(declare-fun c!238310 () Bool)

(assert (=> d!419661 (= c!238310 (or ((_ is Nil!14992) (t!130177 lt!496941)) ((_ is Nil!14992) (t!130177 (t!130177 lt!496941)))))))

(assert (=> d!419661 (not (isEmpty!9342 (rules!11498 thiss!10022)))))

(assert (=> d!419661 (= (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 thiss!10022) (t!130177 lt!496941)) lt!498351)))

(declare-fun b!1446226 () Bool)

(declare-fun Unit!23745 () Unit!23591)

(assert (=> b!1446226 (= e!922594 Unit!23745)))

(declare-fun b!1446228 () Bool)

(declare-fun Unit!23746 () Unit!23591)

(assert (=> b!1446228 (= e!922594 Unit!23746)))

(declare-fun lt!498358 () BalanceConc!10132)

(assert (=> b!1446228 (= lt!498358 (print!1075 Lexer!2292 (seqFromList!1704 (t!130177 lt!496941))))))

(declare-fun lt!498371 () BalanceConc!10132)

(assert (=> b!1446228 (= lt!498371 (print!1075 Lexer!2292 (seqFromList!1704 (t!130177 (t!130177 lt!496941)))))))

(declare-fun lt!498354 () tuple2!14160)

(assert (=> b!1446228 (= lt!498354 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) lt!498371))))

(declare-fun lt!498364 () List!15056)

(assert (=> b!1446228 (= lt!498364 (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496941)))))))

(declare-fun lt!498363 () List!15056)

(assert (=> b!1446228 (= lt!498363 (list!5972 lt!498371))))

(declare-fun lt!498367 () Unit!23591)

(assert (=> b!1446228 (= lt!498367 (lemmaConcatTwoListThenFirstIsPrefix!762 lt!498364 lt!498363))))

(assert (=> b!1446228 (isPrefix!1197 lt!498364 (++!4033 lt!498364 lt!498363))))

(declare-fun lt!498360 () Unit!23591)

(assert (=> b!1446228 (= lt!498360 lt!498367)))

(declare-fun lt!498359 () Unit!23591)

(assert (=> b!1446228 (= lt!498359 (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 thiss!10022) (t!130177 (t!130177 lt!496941))))))

(declare-fun lt!498370 () Unit!23591)

(assert (=> b!1446228 (= lt!498370 (seqFromListBHdTlConstructive!91 (h!20393 (t!130177 (t!130177 lt!496941))) (t!130177 (t!130177 (t!130177 lt!496941))) (_1!7966 lt!498354)))))

(assert (=> b!1446228 (= (list!5973 (_1!7966 lt!498354)) (list!5973 (prepend!415 (seqFromList!1704 (t!130177 (t!130177 (t!130177 lt!496941)))) (h!20393 (t!130177 (t!130177 lt!496941))))))))

(declare-fun lt!498361 () Unit!23591)

(assert (=> b!1446228 (= lt!498361 lt!498370)))

(declare-fun lt!498372 () Option!2861)

(assert (=> b!1446228 (= lt!498372 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 lt!498358)))))

(assert (=> b!1446228 (= (print!1075 Lexer!2292 (singletonSeq!1238 (h!20393 (t!130177 lt!496941)))) (printTailRec!685 Lexer!2292 (singletonSeq!1238 (h!20393 (t!130177 lt!496941))) 0 (BalanceConc!10133 Empty!5096)))))

(declare-fun lt!498373 () Unit!23591)

(declare-fun Unit!23748 () Unit!23591)

(assert (=> b!1446228 (= lt!498373 Unit!23748)))

(declare-fun lt!498355 () Unit!23591)

(assert (=> b!1446228 (= lt!498355 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!235 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496941)))) (list!5972 lt!498371)))))

(assert (=> b!1446228 (= (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496941)))) (originalCharacters!3497 (h!20393 (t!130177 lt!496941))))))

(declare-fun lt!498348 () Unit!23591)

(declare-fun Unit!23749 () Unit!23591)

(assert (=> b!1446228 (= lt!498348 Unit!23749)))

(assert (=> b!1446228 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 (t!130177 lt!496941)))) 0))) (Cons!14990 (head!2929 (originalCharacters!3497 (h!20393 (t!130177 (t!130177 lt!496941))))) Nil!14990))))

(declare-fun lt!498352 () Unit!23591)

(declare-fun Unit!23751 () Unit!23591)

(assert (=> b!1446228 (= lt!498352 Unit!23751)))

(assert (=> b!1446228 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 (t!130177 lt!496941)))) 0))) (Cons!14990 (head!2929 (list!5972 lt!498371)) Nil!14990))))

(declare-fun lt!498350 () Unit!23591)

(declare-fun Unit!23752 () Unit!23591)

(assert (=> b!1446228 (= lt!498350 Unit!23752)))

(assert (=> b!1446228 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 (t!130177 lt!496941)))) 0))) (Cons!14990 (head!2930 lt!498371) Nil!14990))))

(declare-fun lt!498368 () Unit!23591)

(declare-fun Unit!23753 () Unit!23591)

(assert (=> b!1446228 (= lt!498368 Unit!23753)))

(assert (=> b!1446228 (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (originalCharacters!3497 (h!20393 (t!130177 lt!496941)))))))

(declare-fun lt!498349 () Unit!23591)

(declare-fun Unit!23755 () Unit!23591)

(assert (=> b!1446228 (= lt!498349 Unit!23755)))

(assert (=> b!1446228 (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496941))))))))

(declare-fun lt!498369 () Unit!23591)

(declare-fun Unit!23756 () Unit!23591)

(assert (=> b!1446228 (= lt!498369 Unit!23756)))

(declare-fun lt!498366 () Unit!23591)

(declare-fun Unit!23757 () Unit!23591)

(assert (=> b!1446228 (= lt!498366 Unit!23757)))

(assert (=> b!1446228 (= (_1!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496941))))))) (h!20393 (t!130177 lt!496941)))))

(declare-fun lt!498365 () Unit!23591)

(declare-fun Unit!23759 () Unit!23591)

(assert (=> b!1446228 (= lt!498365 Unit!23759)))

(assert (=> b!1446228 (isEmpty!9341 (_2!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496941))))))))))

(declare-fun lt!498353 () Unit!23591)

(declare-fun Unit!23760 () Unit!23591)

(assert (=> b!1446228 (= lt!498353 Unit!23760)))

(assert (=> b!1446228 (matchR!1823 (regex!2635 (rule!4406 (h!20393 (t!130177 lt!496941)))) (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496941)))))))

(declare-fun lt!498362 () Unit!23591)

(declare-fun Unit!23761 () Unit!23591)

(assert (=> b!1446228 (= lt!498362 Unit!23761)))

(assert (=> b!1446228 (= (rule!4406 (h!20393 (t!130177 lt!496941))) (rule!4406 (h!20393 (t!130177 lt!496941))))))

(declare-fun lt!498357 () Unit!23591)

(declare-fun Unit!23763 () Unit!23591)

(assert (=> b!1446228 (= lt!498357 Unit!23763)))

(declare-fun lt!498356 () Unit!23591)

(assert (=> b!1446228 (= lt!498356 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!33 Lexer!2292 (rules!11498 thiss!10022) (h!20393 (t!130177 lt!496941)) (rule!4406 (h!20393 (t!130177 lt!496941))) (list!5972 lt!498371)))))

(declare-fun b!1446230 () Bool)

(assert (=> b!1446230 (= e!922595 (isEmpty!9343 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) (print!1075 Lexer!2292 (seqFromList!1704 (t!130177 lt!496941)))))))))

(assert (= (and d!419661 c!238310) b!1446226))

(assert (= (and d!419661 (not c!238310)) b!1446228))

(assert (= (and d!419661 res!654827) b!1446230))

(assert (=> d!419661 m!1664697))

(assert (=> d!419661 m!1664725))

(declare-fun m!1667587 () Bool)

(assert (=> d!419661 m!1667587))

(assert (=> d!419661 m!1664723))

(declare-fun m!1667589 () Bool)

(assert (=> d!419661 m!1667589))

(assert (=> d!419661 m!1664723))

(assert (=> d!419661 m!1664725))

(declare-fun m!1667591 () Bool)

(assert (=> b!1446228 m!1667591))

(declare-fun m!1667593 () Bool)

(assert (=> b!1446228 m!1667593))

(declare-fun m!1667595 () Bool)

(assert (=> b!1446228 m!1667595))

(declare-fun m!1667597 () Bool)

(assert (=> b!1446228 m!1667597))

(declare-fun m!1667599 () Bool)

(assert (=> b!1446228 m!1667599))

(declare-fun m!1667603 () Bool)

(assert (=> b!1446228 m!1667603))

(declare-fun m!1667605 () Bool)

(assert (=> b!1446228 m!1667605))

(declare-fun m!1667609 () Bool)

(assert (=> b!1446228 m!1667609))

(assert (=> b!1446228 m!1664717))

(declare-fun m!1667613 () Bool)

(assert (=> b!1446228 m!1667613))

(declare-fun m!1667621 () Bool)

(assert (=> b!1446228 m!1667621))

(declare-fun m!1667623 () Bool)

(assert (=> b!1446228 m!1667623))

(declare-fun m!1667627 () Bool)

(assert (=> b!1446228 m!1667627))

(declare-fun m!1667629 () Bool)

(assert (=> b!1446228 m!1667629))

(declare-fun m!1667631 () Bool)

(assert (=> b!1446228 m!1667631))

(assert (=> b!1446228 m!1666211))

(declare-fun m!1667635 () Bool)

(assert (=> b!1446228 m!1667635))

(assert (=> b!1446228 m!1667599))

(declare-fun m!1667637 () Bool)

(assert (=> b!1446228 m!1667637))

(declare-fun m!1667639 () Bool)

(assert (=> b!1446228 m!1667639))

(declare-fun m!1667641 () Bool)

(assert (=> b!1446228 m!1667641))

(assert (=> b!1446228 m!1667591))

(assert (=> b!1446228 m!1667605))

(declare-fun m!1667643 () Bool)

(assert (=> b!1446228 m!1667643))

(declare-fun m!1667645 () Bool)

(assert (=> b!1446228 m!1667645))

(declare-fun m!1667647 () Bool)

(assert (=> b!1446228 m!1667647))

(assert (=> b!1446228 m!1667629))

(assert (=> b!1446228 m!1667591))

(declare-fun m!1667653 () Bool)

(assert (=> b!1446228 m!1667653))

(declare-fun m!1667655 () Bool)

(assert (=> b!1446228 m!1667655))

(declare-fun m!1667659 () Bool)

(assert (=> b!1446228 m!1667659))

(assert (=> b!1446228 m!1667603))

(declare-fun m!1667661 () Bool)

(assert (=> b!1446228 m!1667661))

(assert (=> b!1446228 m!1666211))

(assert (=> b!1446228 m!1667621))

(declare-fun m!1667663 () Bool)

(assert (=> b!1446228 m!1667663))

(declare-fun m!1667665 () Bool)

(assert (=> b!1446228 m!1667665))

(declare-fun m!1667669 () Bool)

(assert (=> b!1446228 m!1667669))

(assert (=> b!1446228 m!1664723))

(assert (=> b!1446228 m!1667645))

(assert (=> b!1446228 m!1667595))

(assert (=> b!1446228 m!1664717))

(assert (=> b!1446228 m!1667621))

(assert (=> b!1446228 m!1664723))

(assert (=> b!1446228 m!1664725))

(assert (=> b!1446228 m!1666211))

(assert (=> b!1446228 m!1667639))

(assert (=> b!1446228 m!1664733))

(declare-fun m!1667673 () Bool)

(assert (=> b!1446228 m!1667673))

(assert (=> b!1446228 m!1667639))

(declare-fun m!1667675 () Bool)

(assert (=> b!1446228 m!1667675))

(assert (=> b!1446228 m!1667631))

(declare-fun m!1667677 () Bool)

(assert (=> b!1446228 m!1667677))

(assert (=> b!1446228 m!1667677))

(declare-fun m!1667679 () Bool)

(assert (=> b!1446228 m!1667679))

(assert (=> b!1446228 m!1664733))

(assert (=> b!1446228 m!1666211))

(assert (=> b!1446228 m!1667621))

(declare-fun m!1667681 () Bool)

(assert (=> b!1446228 m!1667681))

(assert (=> b!1446230 m!1664723))

(assert (=> b!1446230 m!1664723))

(assert (=> b!1446230 m!1664725))

(assert (=> b!1446230 m!1664725))

(assert (=> b!1446230 m!1667587))

(declare-fun m!1667683 () Bool)

(assert (=> b!1446230 m!1667683))

(assert (=> b!1445159 d!419661))

(declare-fun d!419681 () Bool)

(assert (=> d!419681 (= (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 lt!496941))))) (v!22408 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 lt!496941))))))))

(assert (=> b!1445159 d!419681))

(declare-fun d!419683 () Bool)

(assert (=> d!419683 (= (list!5972 lt!497223) (list!5976 (c!238012 lt!497223)))))

(declare-fun bs!342231 () Bool)

(assert (= bs!342231 d!419683))

(declare-fun m!1667685 () Bool)

(assert (=> bs!342231 m!1667685))

(assert (=> b!1445159 d!419683))

(declare-fun b!1446244 () Bool)

(declare-fun e!922605 () List!15056)

(assert (=> b!1446244 (= e!922605 (Cons!14990 (h!20391 lt!497216) (++!4033 (t!130175 lt!497216) lt!497215)))))

(declare-fun d!419685 () Bool)

(declare-fun e!922604 () Bool)

(assert (=> d!419685 e!922604))

(declare-fun res!654833 () Bool)

(assert (=> d!419685 (=> (not res!654833) (not e!922604))))

(declare-fun lt!498408 () List!15056)

(assert (=> d!419685 (= res!654833 (= (content!2218 lt!498408) ((_ map or) (content!2218 lt!497216) (content!2218 lt!497215))))))

(assert (=> d!419685 (= lt!498408 e!922605)))

(declare-fun c!238316 () Bool)

(assert (=> d!419685 (= c!238316 ((_ is Nil!14990) lt!497216))))

(assert (=> d!419685 (= (++!4033 lt!497216 lt!497215) lt!498408)))

(declare-fun b!1446243 () Bool)

(assert (=> b!1446243 (= e!922605 lt!497215)))

(declare-fun b!1446245 () Bool)

(declare-fun res!654832 () Bool)

(assert (=> b!1446245 (=> (not res!654832) (not e!922604))))

(assert (=> b!1446245 (= res!654832 (= (size!12289 lt!498408) (+ (size!12289 lt!497216) (size!12289 lt!497215))))))

(declare-fun b!1446246 () Bool)

(assert (=> b!1446246 (= e!922604 (or (not (= lt!497215 Nil!14990)) (= lt!498408 lt!497216)))))

(assert (= (and d!419685 c!238316) b!1446243))

(assert (= (and d!419685 (not c!238316)) b!1446244))

(assert (= (and d!419685 res!654833) b!1446245))

(assert (= (and b!1446245 res!654832) b!1446246))

(declare-fun m!1667687 () Bool)

(assert (=> b!1446244 m!1667687))

(declare-fun m!1667689 () Bool)

(assert (=> d!419685 m!1667689))

(declare-fun m!1667691 () Bool)

(assert (=> d!419685 m!1667691))

(declare-fun m!1667693 () Bool)

(assert (=> d!419685 m!1667693))

(declare-fun m!1667695 () Bool)

(assert (=> b!1446245 m!1667695))

(assert (=> b!1446245 m!1667259))

(declare-fun m!1667697 () Bool)

(assert (=> b!1446245 m!1667697))

(assert (=> b!1445159 d!419685))

(declare-fun d!419687 () Bool)

(assert (=> d!419687 (= (list!5972 lt!497210) (list!5976 (c!238012 lt!497210)))))

(declare-fun bs!342232 () Bool)

(assert (= bs!342232 d!419687))

(declare-fun m!1667699 () Bool)

(assert (=> bs!342232 m!1667699))

(assert (=> b!1445159 d!419687))

(declare-fun d!419689 () Bool)

(assert (=> d!419689 (isPrefix!1197 lt!497216 (++!4033 lt!497216 lt!497215))))

(declare-fun lt!498409 () Unit!23591)

(assert (=> d!419689 (= lt!498409 (choose!8912 lt!497216 lt!497215))))

(assert (=> d!419689 (= (lemmaConcatTwoListThenFirstIsPrefix!762 lt!497216 lt!497215) lt!498409)))

(declare-fun bs!342233 () Bool)

(assert (= bs!342233 d!419689))

(assert (=> bs!342233 m!1664753))

(assert (=> bs!342233 m!1664753))

(assert (=> bs!342233 m!1664755))

(declare-fun m!1667701 () Bool)

(assert (=> bs!342233 m!1667701))

(assert (=> b!1445159 d!419689))

(declare-fun d!419691 () Bool)

(assert (=> d!419691 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496941))) 0))) (list!5976 (c!238012 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496941))) 0)))))))

(declare-fun bs!342234 () Bool)

(assert (= bs!342234 d!419691))

(declare-fun m!1667703 () Bool)

(assert (=> bs!342234 m!1667703))

(assert (=> b!1445159 d!419691))

(declare-fun d!419693 () Bool)

(declare-fun lt!498410 () C!8076)

(assert (=> d!419693 (= lt!498410 (apply!3868 (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496941)))) 0))))

(assert (=> d!419693 (= lt!498410 (apply!3869 (c!238012 (charsOf!1521 (h!20393 (t!130177 lt!496941)))) 0))))

(declare-fun e!922606 () Bool)

(assert (=> d!419693 e!922606))

(declare-fun res!654834 () Bool)

(assert (=> d!419693 (=> (not res!654834) (not e!922606))))

(assert (=> d!419693 (= res!654834 (<= 0 0))))

(assert (=> d!419693 (= (apply!3864 (charsOf!1521 (h!20393 (t!130177 lt!496941))) 0) lt!498410)))

(declare-fun b!1446247 () Bool)

(assert (=> b!1446247 (= e!922606 (< 0 (size!12293 (charsOf!1521 (h!20393 (t!130177 lt!496941))))))))

(assert (= (and d!419693 res!654834) b!1446247))

(assert (=> d!419693 m!1664733))

(assert (=> d!419693 m!1666211))

(assert (=> d!419693 m!1666211))

(declare-fun m!1667715 () Bool)

(assert (=> d!419693 m!1667715))

(declare-fun m!1667721 () Bool)

(assert (=> d!419693 m!1667721))

(assert (=> b!1446247 m!1664733))

(declare-fun m!1667723 () Bool)

(assert (=> b!1446247 m!1667723))

(assert (=> b!1445159 d!419693))

(declare-fun b!1446248 () Bool)

(declare-fun e!922608 () Bool)

(declare-fun e!922607 () Bool)

(assert (=> b!1446248 (= e!922608 e!922607)))

(declare-fun res!654839 () Bool)

(assert (=> b!1446248 (=> (not res!654839) (not e!922607))))

(declare-fun lt!498414 () Option!2861)

(assert (=> b!1446248 (= res!654839 (isDefined!2314 lt!498414))))

(declare-fun d!419695 () Bool)

(assert (=> d!419695 e!922608))

(declare-fun res!654841 () Bool)

(assert (=> d!419695 (=> res!654841 e!922608)))

(assert (=> d!419695 (= res!654841 (isEmpty!9346 lt!498414))))

(declare-fun e!922609 () Option!2861)

(assert (=> d!419695 (= lt!498414 e!922609)))

(declare-fun c!238317 () Bool)

(assert (=> d!419695 (= c!238317 (and ((_ is Cons!14993) (rules!11498 thiss!10022)) ((_ is Nil!14993) (t!130178 (rules!11498 thiss!10022)))))))

(declare-fun lt!498413 () Unit!23591)

(declare-fun lt!498411 () Unit!23591)

(assert (=> d!419695 (= lt!498413 lt!498411)))

(assert (=> d!419695 (isPrefix!1197 (list!5972 (charsOf!1521 (h!20393 lt!496941))) (list!5972 (charsOf!1521 (h!20393 lt!496941))))))

(assert (=> d!419695 (= lt!498411 (lemmaIsPrefixRefl!830 (list!5972 (charsOf!1521 (h!20393 lt!496941))) (list!5972 (charsOf!1521 (h!20393 lt!496941)))))))

(assert (=> d!419695 (rulesValidInductive!817 Lexer!2292 (rules!11498 thiss!10022))))

(assert (=> d!419695 (= (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 lt!496941)))) lt!498414)))

(declare-fun b!1446249 () Bool)

(declare-fun call!97802 () Option!2861)

(assert (=> b!1446249 (= e!922609 call!97802)))

(declare-fun b!1446250 () Bool)

(declare-fun res!654838 () Bool)

(assert (=> b!1446250 (=> (not res!654838) (not e!922607))))

(assert (=> b!1446250 (= res!654838 (= (++!4033 (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!498414)))) (_2!7967 (get!4585 lt!498414))) (list!5972 (charsOf!1521 (h!20393 lt!496941)))))))

(declare-fun b!1446251 () Bool)

(declare-fun res!654836 () Bool)

(assert (=> b!1446251 (=> (not res!654836) (not e!922607))))

(assert (=> b!1446251 (= res!654836 (< (size!12289 (_2!7967 (get!4585 lt!498414))) (size!12289 (list!5972 (charsOf!1521 (h!20393 lt!496941))))))))

(declare-fun bm!97797 () Bool)

(assert (=> bm!97797 (= call!97802 (maxPrefixOneRule!656 Lexer!2292 (h!20394 (rules!11498 thiss!10022)) (list!5972 (charsOf!1521 (h!20393 lt!496941)))))))

(declare-fun b!1446252 () Bool)

(declare-fun res!654840 () Bool)

(assert (=> b!1446252 (=> (not res!654840) (not e!922607))))

(assert (=> b!1446252 (= res!654840 (= (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!498414)))) (originalCharacters!3497 (_1!7967 (get!4585 lt!498414)))))))

(declare-fun b!1446253 () Bool)

(declare-fun res!654835 () Bool)

(assert (=> b!1446253 (=> (not res!654835) (not e!922607))))

(assert (=> b!1446253 (= res!654835 (matchR!1823 (regex!2635 (rule!4406 (_1!7967 (get!4585 lt!498414)))) (list!5972 (charsOf!1521 (_1!7967 (get!4585 lt!498414))))))))

(declare-fun b!1446254 () Bool)

(declare-fun res!654837 () Bool)

(assert (=> b!1446254 (=> (not res!654837) (not e!922607))))

(assert (=> b!1446254 (= res!654837 (= (value!84745 (_1!7967 (get!4585 lt!498414))) (apply!3870 (transformation!2635 (rule!4406 (_1!7967 (get!4585 lt!498414)))) (seqFromList!1705 (originalCharacters!3497 (_1!7967 (get!4585 lt!498414)))))))))

(declare-fun b!1446255 () Bool)

(assert (=> b!1446255 (= e!922607 (contains!2871 (rules!11498 thiss!10022) (rule!4406 (_1!7967 (get!4585 lt!498414)))))))

(declare-fun b!1446256 () Bool)

(declare-fun lt!498412 () Option!2861)

(declare-fun lt!498415 () Option!2861)

(assert (=> b!1446256 (= e!922609 (ite (and ((_ is None!2860) lt!498412) ((_ is None!2860) lt!498415)) None!2860 (ite ((_ is None!2860) lt!498415) lt!498412 (ite ((_ is None!2860) lt!498412) lt!498415 (ite (>= (size!12285 (_1!7967 (v!22408 lt!498412))) (size!12285 (_1!7967 (v!22408 lt!498415)))) lt!498412 lt!498415)))))))

(assert (=> b!1446256 (= lt!498412 call!97802)))

(assert (=> b!1446256 (= lt!498415 (maxPrefix!1187 Lexer!2292 (t!130178 (rules!11498 thiss!10022)) (list!5972 (charsOf!1521 (h!20393 lt!496941)))))))

(assert (= (and d!419695 c!238317) b!1446249))

(assert (= (and d!419695 (not c!238317)) b!1446256))

(assert (= (or b!1446249 b!1446256) bm!97797))

(assert (= (and d!419695 (not res!654841)) b!1446248))

(assert (= (and b!1446248 res!654839) b!1446252))

(assert (= (and b!1446252 res!654840) b!1446251))

(assert (= (and b!1446251 res!654836) b!1446250))

(assert (= (and b!1446250 res!654838) b!1446254))

(assert (= (and b!1446254 res!654837) b!1446253))

(assert (= (and b!1446253 res!654835) b!1446255))

(declare-fun m!1667789 () Bool)

(assert (=> b!1446255 m!1667789))

(declare-fun m!1667793 () Bool)

(assert (=> b!1446255 m!1667793))

(assert (=> bm!97797 m!1664677))

(declare-fun m!1667797 () Bool)

(assert (=> bm!97797 m!1667797))

(assert (=> b!1446253 m!1667789))

(declare-fun m!1667799 () Bool)

(assert (=> b!1446253 m!1667799))

(assert (=> b!1446253 m!1667799))

(declare-fun m!1667801 () Bool)

(assert (=> b!1446253 m!1667801))

(assert (=> b!1446253 m!1667801))

(declare-fun m!1667805 () Bool)

(assert (=> b!1446253 m!1667805))

(assert (=> b!1446254 m!1667789))

(declare-fun m!1667807 () Bool)

(assert (=> b!1446254 m!1667807))

(assert (=> b!1446254 m!1667807))

(declare-fun m!1667809 () Bool)

(assert (=> b!1446254 m!1667809))

(assert (=> b!1446250 m!1667789))

(assert (=> b!1446250 m!1667799))

(assert (=> b!1446250 m!1667799))

(assert (=> b!1446250 m!1667801))

(assert (=> b!1446250 m!1667801))

(declare-fun m!1667817 () Bool)

(assert (=> b!1446250 m!1667817))

(assert (=> b!1446251 m!1667789))

(declare-fun m!1667819 () Bool)

(assert (=> b!1446251 m!1667819))

(assert (=> b!1446251 m!1664677))

(assert (=> b!1446251 m!1666197))

(declare-fun m!1667821 () Bool)

(assert (=> d!419695 m!1667821))

(assert (=> d!419695 m!1664677))

(assert (=> d!419695 m!1664677))

(declare-fun m!1667823 () Bool)

(assert (=> d!419695 m!1667823))

(assert (=> d!419695 m!1664677))

(assert (=> d!419695 m!1664677))

(declare-fun m!1667825 () Bool)

(assert (=> d!419695 m!1667825))

(assert (=> d!419695 m!1667355))

(assert (=> b!1446252 m!1667789))

(assert (=> b!1446252 m!1667799))

(assert (=> b!1446252 m!1667799))

(assert (=> b!1446252 m!1667801))

(declare-fun m!1667829 () Bool)

(assert (=> b!1446248 m!1667829))

(assert (=> b!1446256 m!1664677))

(declare-fun m!1667831 () Bool)

(assert (=> b!1446256 m!1667831))

(assert (=> b!1445159 d!419695))

(declare-fun b!1446264 () Bool)

(declare-fun e!922613 () Unit!23591)

(declare-fun Unit!23765 () Unit!23591)

(assert (=> b!1446264 (= e!922613 Unit!23765)))

(declare-fun b!1446261 () Bool)

(declare-fun res!654843 () Bool)

(declare-fun e!922612 () Bool)

(assert (=> b!1446261 (=> (not res!654843) (not e!922612))))

(declare-fun lt!498420 () Token!4932)

(assert (=> b!1446261 (= res!654843 (matchR!1823 (regex!2635 (get!4587 (getRuleFromTag!220 Lexer!2292 (rules!11498 thiss!10022) (tag!2899 (rule!4406 lt!498420))))) (list!5972 (charsOf!1521 lt!498420))))))

(declare-fun d!419703 () Bool)

(assert (=> d!419703 (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496941))) (list!5972 lt!497223))))))

(declare-fun lt!498426 () Unit!23591)

(assert (=> d!419703 (= lt!498426 e!922613)))

(declare-fun c!238320 () Bool)

(assert (=> d!419703 (= c!238320 (isEmpty!9346 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496941))) (list!5972 lt!497223)))))))

(declare-fun lt!498424 () Unit!23591)

(declare-fun lt!498431 () Unit!23591)

(assert (=> d!419703 (= lt!498424 lt!498431)))

(assert (=> d!419703 e!922612))

(declare-fun res!654842 () Bool)

(assert (=> d!419703 (=> (not res!654842) (not e!922612))))

(assert (=> d!419703 (= res!654842 (isDefined!2316 (getRuleFromTag!220 Lexer!2292 (rules!11498 thiss!10022) (tag!2899 (rule!4406 lt!498420)))))))

(assert (=> d!419703 (= lt!498431 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!220 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 lt!496941))) lt!498420))))

(declare-fun lt!498429 () Unit!23591)

(declare-fun lt!498423 () Unit!23591)

(assert (=> d!419703 (= lt!498429 lt!498423)))

(declare-fun lt!498428 () List!15056)

(assert (=> d!419703 (isPrefix!1197 lt!498428 (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496941))) (list!5972 lt!497223)))))

(assert (=> d!419703 (= lt!498423 (lemmaPrefixStaysPrefixWhenAddingToSuffix!105 lt!498428 (list!5972 (charsOf!1521 (h!20393 lt!496941))) (list!5972 lt!497223)))))

(assert (=> d!419703 (= lt!498428 (list!5972 (charsOf!1521 lt!498420)))))

(declare-fun lt!498422 () Unit!23591)

(declare-fun lt!498432 () Unit!23591)

(assert (=> d!419703 (= lt!498422 lt!498432)))

(declare-fun lt!498425 () List!15056)

(declare-fun lt!498434 () List!15056)

(assert (=> d!419703 (isPrefix!1197 lt!498425 (++!4033 lt!498425 lt!498434))))

(assert (=> d!419703 (= lt!498432 (lemmaConcatTwoListThenFirstIsPrefix!762 lt!498425 lt!498434))))

(assert (=> d!419703 (= lt!498434 (_2!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 lt!496941)))))))))

(assert (=> d!419703 (= lt!498425 (list!5972 (charsOf!1521 lt!498420)))))

(assert (=> d!419703 (= lt!498420 (head!2931 (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) (seqFromList!1705 (list!5972 (charsOf!1521 (h!20393 lt!496941)))))))))))

(assert (=> d!419703 (not (isEmpty!9342 (rules!11498 thiss!10022)))))

(assert (=> d!419703 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!235 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 lt!496941))) (list!5972 lt!497223)) lt!498426)))

(declare-fun b!1446262 () Bool)

(assert (=> b!1446262 (= e!922612 (= (rule!4406 lt!498420) (get!4587 (getRuleFromTag!220 Lexer!2292 (rules!11498 thiss!10022) (tag!2899 (rule!4406 lt!498420))))))))

(declare-fun b!1446263 () Bool)

(declare-fun Unit!23766 () Unit!23591)

(assert (=> b!1446263 (= e!922613 Unit!23766)))

(declare-fun lt!498419 () List!15056)

(assert (=> b!1446263 (= lt!498419 (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496941))) (list!5972 lt!497223)))))

(declare-fun lt!498430 () Unit!23591)

(assert (=> b!1446263 (= lt!498430 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!113 Lexer!2292 (rule!4406 lt!498420) (rules!11498 thiss!10022) lt!498419))))

(assert (=> b!1446263 (isEmpty!9346 (maxPrefixOneRule!656 Lexer!2292 (rule!4406 lt!498420) lt!498419))))

(declare-fun lt!498433 () Unit!23591)

(assert (=> b!1446263 (= lt!498433 lt!498430)))

(declare-fun lt!498427 () List!15056)

(assert (=> b!1446263 (= lt!498427 (list!5972 (charsOf!1521 lt!498420)))))

(declare-fun lt!498435 () Unit!23591)

(assert (=> b!1446263 (= lt!498435 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!109 Lexer!2292 (rule!4406 lt!498420) lt!498427 (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496941))) (list!5972 lt!497223))))))

(assert (=> b!1446263 (not (matchR!1823 (regex!2635 (rule!4406 lt!498420)) lt!498427))))

(declare-fun lt!498421 () Unit!23591)

(assert (=> b!1446263 (= lt!498421 lt!498435)))

(assert (=> b!1446263 false))

(assert (= (and d!419703 res!654842) b!1446261))

(assert (= (and b!1446261 res!654843) b!1446262))

(assert (= (and d!419703 c!238320) b!1446263))

(assert (= (and d!419703 (not c!238320)) b!1446264))

(declare-fun m!1667835 () Bool)

(assert (=> b!1446261 m!1667835))

(declare-fun m!1667837 () Bool)

(assert (=> b!1446261 m!1667837))

(declare-fun m!1667839 () Bool)

(assert (=> b!1446261 m!1667839))

(declare-fun m!1667841 () Bool)

(assert (=> b!1446261 m!1667841))

(declare-fun m!1667843 () Bool)

(assert (=> b!1446261 m!1667843))

(assert (=> b!1446261 m!1667839))

(assert (=> b!1446261 m!1667835))

(assert (=> b!1446261 m!1667843))

(declare-fun m!1667845 () Bool)

(assert (=> d!419703 m!1667845))

(assert (=> d!419703 m!1667843))

(assert (=> d!419703 m!1667839))

(assert (=> d!419703 m!1664677))

(assert (=> d!419703 m!1664727))

(declare-fun m!1667847 () Bool)

(assert (=> d!419703 m!1667847))

(assert (=> d!419703 m!1667835))

(declare-fun m!1667849 () Bool)

(assert (=> d!419703 m!1667849))

(assert (=> d!419703 m!1667123))

(declare-fun m!1667851 () Bool)

(assert (=> d!419703 m!1667851))

(assert (=> d!419703 m!1667835))

(assert (=> d!419703 m!1664677))

(assert (=> d!419703 m!1664741))

(declare-fun m!1667853 () Bool)

(assert (=> d!419703 m!1667853))

(assert (=> d!419703 m!1664677))

(declare-fun m!1667855 () Bool)

(assert (=> d!419703 m!1667855))

(assert (=> d!419703 m!1667843))

(declare-fun m!1667857 () Bool)

(assert (=> d!419703 m!1667857))

(assert (=> d!419703 m!1667121))

(declare-fun m!1667861 () Bool)

(assert (=> d!419703 m!1667861))

(assert (=> d!419703 m!1667857))

(declare-fun m!1667865 () Bool)

(assert (=> d!419703 m!1667865))

(assert (=> d!419703 m!1664697))

(assert (=> d!419703 m!1667121))

(assert (=> d!419703 m!1667123))

(assert (=> d!419703 m!1667123))

(declare-fun m!1667869 () Bool)

(assert (=> d!419703 m!1667869))

(assert (=> d!419703 m!1664741))

(assert (=> d!419703 m!1664743))

(assert (=> d!419703 m!1664677))

(declare-fun m!1667871 () Bool)

(assert (=> d!419703 m!1667871))

(assert (=> d!419703 m!1667871))

(declare-fun m!1667873 () Bool)

(assert (=> d!419703 m!1667873))

(assert (=> d!419703 m!1667845))

(declare-fun m!1667875 () Bool)

(assert (=> d!419703 m!1667875))

(assert (=> d!419703 m!1664677))

(assert (=> d!419703 m!1664727))

(assert (=> d!419703 m!1667121))

(assert (=> b!1446262 m!1667835))

(assert (=> b!1446262 m!1667835))

(assert (=> b!1446262 m!1667837))

(declare-fun m!1667877 () Bool)

(assert (=> b!1446263 m!1667877))

(declare-fun m!1667879 () Bool)

(assert (=> b!1446263 m!1667879))

(declare-fun m!1667881 () Bool)

(assert (=> b!1446263 m!1667881))

(assert (=> b!1446263 m!1667843))

(assert (=> b!1446263 m!1667839))

(assert (=> b!1446263 m!1667121))

(declare-fun m!1667887 () Bool)

(assert (=> b!1446263 m!1667887))

(assert (=> b!1446263 m!1667879))

(declare-fun m!1667891 () Bool)

(assert (=> b!1446263 m!1667891))

(assert (=> b!1446263 m!1664677))

(assert (=> b!1446263 m!1664727))

(assert (=> b!1446263 m!1667121))

(assert (=> b!1446263 m!1667843))

(assert (=> b!1445159 d!419703))

(declare-fun d!419711 () Bool)

(declare-fun e!922616 () Bool)

(assert (=> d!419711 e!922616))

(declare-fun res!654846 () Bool)

(assert (=> d!419711 (=> (not res!654846) (not e!922616))))

(assert (=> d!419711 (= res!654846 (isBalanced!1518 (prepend!416 (c!238014 (seqFromList!1704 (t!130177 (t!130177 lt!496941)))) (h!20393 (t!130177 lt!496941)))))))

(declare-fun lt!498440 () BalanceConc!10134)

(assert (=> d!419711 (= lt!498440 (BalanceConc!10135 (prepend!416 (c!238014 (seqFromList!1704 (t!130177 (t!130177 lt!496941)))) (h!20393 (t!130177 lt!496941)))))))

(assert (=> d!419711 (= (prepend!415 (seqFromList!1704 (t!130177 (t!130177 lt!496941))) (h!20393 (t!130177 lt!496941))) lt!498440)))

(declare-fun b!1446269 () Bool)

(assert (=> b!1446269 (= e!922616 (= (list!5973 lt!498440) (Cons!14992 (h!20393 (t!130177 lt!496941)) (list!5973 (seqFromList!1704 (t!130177 (t!130177 lt!496941)))))))))

(assert (= (and d!419711 res!654846) b!1446269))

(declare-fun m!1667893 () Bool)

(assert (=> d!419711 m!1667893))

(assert (=> d!419711 m!1667893))

(declare-fun m!1667895 () Bool)

(assert (=> d!419711 m!1667895))

(declare-fun m!1667897 () Bool)

(assert (=> b!1446269 m!1667897))

(assert (=> b!1446269 m!1664717))

(declare-fun m!1667899 () Bool)

(assert (=> b!1446269 m!1667899))

(assert (=> b!1445159 d!419711))

(declare-fun b!1446275 () Bool)

(declare-fun e!922622 () Bool)

(declare-fun lt!498442 () tuple2!14160)

(assert (=> b!1446275 (= e!922622 (= (_2!7966 lt!498442) lt!497223))))

(declare-fun b!1446276 () Bool)

(declare-fun res!654850 () Bool)

(declare-fun e!922621 () Bool)

(assert (=> b!1446276 (=> (not res!654850) (not e!922621))))

(assert (=> b!1446276 (= res!654850 (= (list!5973 (_1!7966 lt!498442)) (_1!7969 (lexList!706 Lexer!2292 (rules!11498 thiss!10022) (list!5972 lt!497223)))))))

(declare-fun b!1446277 () Bool)

(declare-fun e!922620 () Bool)

(assert (=> b!1446277 (= e!922620 (not (isEmpty!9334 (_1!7966 lt!498442))))))

(declare-fun d!419713 () Bool)

(assert (=> d!419713 e!922621))

(declare-fun res!654851 () Bool)

(assert (=> d!419713 (=> (not res!654851) (not e!922621))))

(assert (=> d!419713 (= res!654851 e!922622)))

(declare-fun c!238323 () Bool)

(assert (=> d!419713 (= c!238323 (> (size!12291 (_1!7966 lt!498442)) 0))))

(assert (=> d!419713 (= lt!498442 (lexTailRecV2!461 Lexer!2292 (rules!11498 thiss!10022) lt!497223 (BalanceConc!10133 Empty!5096) lt!497223 (BalanceConc!10135 Empty!5097)))))

(assert (=> d!419713 (= (lex!1050 Lexer!2292 (rules!11498 thiss!10022) lt!497223) lt!498442)))

(declare-fun b!1446278 () Bool)

(assert (=> b!1446278 (= e!922622 e!922620)))

(declare-fun res!654852 () Bool)

(assert (=> b!1446278 (= res!654852 (< (size!12293 (_2!7966 lt!498442)) (size!12293 lt!497223)))))

(assert (=> b!1446278 (=> (not res!654852) (not e!922620))))

(declare-fun b!1446279 () Bool)

(assert (=> b!1446279 (= e!922621 (= (list!5972 (_2!7966 lt!498442)) (_2!7969 (lexList!706 Lexer!2292 (rules!11498 thiss!10022) (list!5972 lt!497223)))))))

(assert (= (and d!419713 c!238323) b!1446278))

(assert (= (and d!419713 (not c!238323)) b!1446275))

(assert (= (and b!1446278 res!654852) b!1446277))

(assert (= (and d!419713 res!654851) b!1446276))

(assert (= (and b!1446276 res!654850) b!1446279))

(declare-fun m!1667919 () Bool)

(assert (=> b!1446276 m!1667919))

(assert (=> b!1446276 m!1664727))

(assert (=> b!1446276 m!1664727))

(declare-fun m!1667921 () Bool)

(assert (=> b!1446276 m!1667921))

(declare-fun m!1667925 () Bool)

(assert (=> b!1446278 m!1667925))

(declare-fun m!1667927 () Bool)

(assert (=> b!1446278 m!1667927))

(declare-fun m!1667929 () Bool)

(assert (=> b!1446279 m!1667929))

(assert (=> b!1446279 m!1664727))

(assert (=> b!1446279 m!1664727))

(assert (=> b!1446279 m!1667921))

(declare-fun m!1667931 () Bool)

(assert (=> b!1446277 m!1667931))

(declare-fun m!1667933 () Bool)

(assert (=> d!419713 m!1667933))

(declare-fun m!1667935 () Bool)

(assert (=> d!419713 m!1667935))

(assert (=> b!1445159 d!419713))

(declare-fun d!419719 () Bool)

(declare-fun lt!498482 () List!15056)

(assert (=> d!419719 (= lt!498482 (++!4033 (list!5972 (BalanceConc!10133 Empty!5096)) (printList!713 Lexer!2292 (dropList!470 (tokens!2014 other!32) 0))))))

(declare-fun e!922635 () List!15056)

(assert (=> d!419719 (= lt!498482 e!922635)))

(declare-fun c!238332 () Bool)

(assert (=> d!419719 (= c!238332 ((_ is Cons!14992) (dropList!470 (tokens!2014 other!32) 0)))))

(assert (=> d!419719 (= (printListTailRec!285 Lexer!2292 (dropList!470 (tokens!2014 other!32) 0) (list!5972 (BalanceConc!10133 Empty!5096))) lt!498482)))

(declare-fun b!1446304 () Bool)

(assert (=> b!1446304 (= e!922635 (printListTailRec!285 Lexer!2292 (t!130177 (dropList!470 (tokens!2014 other!32) 0)) (++!4033 (list!5972 (BalanceConc!10133 Empty!5096)) (list!5972 (charsOf!1521 (h!20393 (dropList!470 (tokens!2014 other!32) 0)))))))))

(declare-fun lt!498480 () List!15056)

(assert (=> b!1446304 (= lt!498480 (list!5972 (charsOf!1521 (h!20393 (dropList!470 (tokens!2014 other!32) 0)))))))

(declare-fun lt!498485 () List!15056)

(assert (=> b!1446304 (= lt!498485 (printList!713 Lexer!2292 (t!130177 (dropList!470 (tokens!2014 other!32) 0))))))

(declare-fun lt!498483 () Unit!23591)

(declare-fun lemmaConcatAssociativity!886 (List!15056 List!15056 List!15056) Unit!23591)

(assert (=> b!1446304 (= lt!498483 (lemmaConcatAssociativity!886 (list!5972 (BalanceConc!10133 Empty!5096)) lt!498480 lt!498485))))

(assert (=> b!1446304 (= (++!4033 (++!4033 (list!5972 (BalanceConc!10133 Empty!5096)) lt!498480) lt!498485) (++!4033 (list!5972 (BalanceConc!10133 Empty!5096)) (++!4033 lt!498480 lt!498485)))))

(declare-fun lt!498484 () Unit!23591)

(assert (=> b!1446304 (= lt!498484 lt!498483)))

(declare-fun b!1446305 () Bool)

(assert (=> b!1446305 (= e!922635 (list!5972 (BalanceConc!10133 Empty!5096)))))

(assert (= (and d!419719 c!238332) b!1446304))

(assert (= (and d!419719 (not c!238332)) b!1446305))

(assert (=> d!419719 m!1664877))

(declare-fun m!1668059 () Bool)

(assert (=> d!419719 m!1668059))

(assert (=> d!419719 m!1664879))

(assert (=> d!419719 m!1668059))

(declare-fun m!1668063 () Bool)

(assert (=> d!419719 m!1668063))

(declare-fun m!1668065 () Bool)

(assert (=> b!1446304 m!1668065))

(declare-fun m!1668067 () Bool)

(assert (=> b!1446304 m!1668067))

(declare-fun m!1668071 () Bool)

(assert (=> b!1446304 m!1668071))

(assert (=> b!1446304 m!1664879))

(declare-fun m!1668073 () Bool)

(assert (=> b!1446304 m!1668073))

(assert (=> b!1446304 m!1668065))

(declare-fun m!1668075 () Bool)

(assert (=> b!1446304 m!1668075))

(assert (=> b!1446304 m!1668073))

(declare-fun m!1668077 () Bool)

(assert (=> b!1446304 m!1668077))

(declare-fun m!1668079 () Bool)

(assert (=> b!1446304 m!1668079))

(assert (=> b!1446304 m!1664879))

(declare-fun m!1668081 () Bool)

(assert (=> b!1446304 m!1668081))

(assert (=> b!1446304 m!1664879))

(assert (=> b!1446304 m!1668075))

(assert (=> b!1446304 m!1668067))

(declare-fun m!1668083 () Bool)

(assert (=> b!1446304 m!1668083))

(assert (=> b!1446304 m!1664879))

(assert (=> b!1446304 m!1668079))

(declare-fun m!1668085 () Bool)

(assert (=> b!1446304 m!1668085))

(assert (=> d!419117 d!419719))

(declare-fun d!419739 () Bool)

(assert (=> d!419739 (= (dropList!470 (tokens!2014 other!32) 0) (drop!736 (list!5977 (c!238014 (tokens!2014 other!32))) 0))))

(declare-fun bs!342241 () Bool)

(assert (= bs!342241 d!419739))

(assert (=> bs!342241 m!1664279))

(assert (=> bs!342241 m!1664279))

(declare-fun m!1668099 () Bool)

(assert (=> bs!342241 m!1668099))

(assert (=> d!419117 d!419739))

(declare-fun d!419741 () Bool)

(assert (=> d!419741 (= (list!5972 lt!497253) (list!5976 (c!238012 lt!497253)))))

(declare-fun bs!342242 () Bool)

(assert (= bs!342242 d!419741))

(declare-fun m!1668101 () Bool)

(assert (=> bs!342242 m!1668101))

(assert (=> d!419117 d!419741))

(declare-fun d!419743 () Bool)

(declare-fun lt!498488 () Int)

(assert (=> d!419743 (= lt!498488 (size!12290 (list!5973 (tokens!2014 other!32))))))

(declare-fun size!12295 (Conc!5097) Int)

(assert (=> d!419743 (= lt!498488 (size!12295 (c!238014 (tokens!2014 other!32))))))

(assert (=> d!419743 (= (size!12291 (tokens!2014 other!32)) lt!498488)))

(declare-fun bs!342243 () Bool)

(assert (= bs!342243 d!419743))

(assert (=> bs!342243 m!1664099))

(assert (=> bs!342243 m!1664099))

(declare-fun m!1668103 () Bool)

(assert (=> bs!342243 m!1668103))

(declare-fun m!1668105 () Bool)

(assert (=> bs!342243 m!1668105))

(assert (=> d!419117 d!419743))

(declare-fun d!419745 () Bool)

(assert (=> d!419745 (= (list!5972 (BalanceConc!10133 Empty!5096)) (list!5976 (c!238012 (BalanceConc!10133 Empty!5096))))))

(declare-fun bs!342244 () Bool)

(assert (= bs!342244 d!419745))

(declare-fun m!1668113 () Bool)

(assert (=> bs!342244 m!1668113))

(assert (=> d!419117 d!419745))

(declare-fun b!1446373 () Bool)

(declare-fun res!654876 () Bool)

(declare-fun e!922681 () Bool)

(assert (=> b!1446373 (=> (not res!654876) (not e!922681))))

(assert (=> b!1446373 (= res!654876 (isBalanced!1518 (right!13095 (c!238014 (tokens!2014 other!32)))))))

(declare-fun b!1446374 () Bool)

(declare-fun res!654873 () Bool)

(assert (=> b!1446374 (=> (not res!654873) (not e!922681))))

(assert (=> b!1446374 (= res!654873 (isBalanced!1518 (left!12765 (c!238014 (tokens!2014 other!32)))))))

(declare-fun b!1446375 () Bool)

(declare-fun res!654875 () Bool)

(assert (=> b!1446375 (=> (not res!654875) (not e!922681))))

(declare-fun height!755 (Conc!5097) Int)

(assert (=> b!1446375 (= res!654875 (<= (- (height!755 (left!12765 (c!238014 (tokens!2014 other!32)))) (height!755 (right!13095 (c!238014 (tokens!2014 other!32))))) 1))))

(declare-fun b!1446376 () Bool)

(declare-fun res!654878 () Bool)

(assert (=> b!1446376 (=> (not res!654878) (not e!922681))))

(assert (=> b!1446376 (= res!654878 (not (isEmpty!9345 (left!12765 (c!238014 (tokens!2014 other!32))))))))

(declare-fun b!1446377 () Bool)

(assert (=> b!1446377 (= e!922681 (not (isEmpty!9345 (right!13095 (c!238014 (tokens!2014 other!32))))))))

(declare-fun d!419747 () Bool)

(declare-fun res!654874 () Bool)

(declare-fun e!922682 () Bool)

(assert (=> d!419747 (=> res!654874 e!922682)))

(assert (=> d!419747 (= res!654874 (not ((_ is Node!5097) (c!238014 (tokens!2014 other!32)))))))

(assert (=> d!419747 (= (isBalanced!1518 (c!238014 (tokens!2014 other!32))) e!922682)))

(declare-fun b!1446378 () Bool)

(assert (=> b!1446378 (= e!922682 e!922681)))

(declare-fun res!654877 () Bool)

(assert (=> b!1446378 (=> (not res!654877) (not e!922681))))

(assert (=> b!1446378 (= res!654877 (<= (- 1) (- (height!755 (left!12765 (c!238014 (tokens!2014 other!32)))) (height!755 (right!13095 (c!238014 (tokens!2014 other!32)))))))))

(assert (= (and d!419747 (not res!654874)) b!1446378))

(assert (= (and b!1446378 res!654877) b!1446375))

(assert (= (and b!1446375 res!654875) b!1446374))

(assert (= (and b!1446374 res!654873) b!1446373))

(assert (= (and b!1446373 res!654876) b!1446376))

(assert (= (and b!1446376 res!654878) b!1446377))

(declare-fun m!1668127 () Bool)

(assert (=> b!1446375 m!1668127))

(declare-fun m!1668131 () Bool)

(assert (=> b!1446375 m!1668131))

(declare-fun m!1668135 () Bool)

(assert (=> b!1446374 m!1668135))

(declare-fun m!1668137 () Bool)

(assert (=> b!1446377 m!1668137))

(declare-fun m!1668139 () Bool)

(assert (=> b!1446373 m!1668139))

(declare-fun m!1668141 () Bool)

(assert (=> b!1446376 m!1668141))

(assert (=> b!1446378 m!1668127))

(assert (=> b!1446378 m!1668131))

(assert (=> d!419121 d!419747))

(declare-fun d!419749 () Bool)

(assert (=> d!419749 (= (list!5972 lt!497232) (list!5976 (c!238012 lt!497232)))))

(declare-fun bs!342245 () Bool)

(assert (= bs!342245 d!419749))

(declare-fun m!1668143 () Bool)

(assert (=> bs!342245 m!1668143))

(assert (=> d!419093 d!419749))

(declare-fun d!419751 () Bool)

(declare-fun c!238335 () Bool)

(assert (=> d!419751 (= c!238335 ((_ is Cons!14992) (list!5973 (tokens!2014 other!32))))))

(declare-fun e!922686 () List!15056)

(assert (=> d!419751 (= (printList!713 Lexer!2292 (list!5973 (tokens!2014 other!32))) e!922686)))

(declare-fun b!1446386 () Bool)

(assert (=> b!1446386 (= e!922686 (++!4033 (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 other!32))))) (printList!713 Lexer!2292 (t!130177 (list!5973 (tokens!2014 other!32))))))))

(declare-fun b!1446387 () Bool)

(assert (=> b!1446387 (= e!922686 Nil!14990)))

(assert (= (and d!419751 c!238335) b!1446386))

(assert (= (and d!419751 (not c!238335)) b!1446387))

(declare-fun m!1668151 () Bool)

(assert (=> b!1446386 m!1668151))

(assert (=> b!1446386 m!1668151))

(declare-fun m!1668153 () Bool)

(assert (=> b!1446386 m!1668153))

(declare-fun m!1668155 () Bool)

(assert (=> b!1446386 m!1668155))

(assert (=> b!1446386 m!1668153))

(assert (=> b!1446386 m!1668155))

(declare-fun m!1668161 () Bool)

(assert (=> b!1446386 m!1668161))

(assert (=> d!419093 d!419751))

(assert (=> d!419093 d!419027))

(assert (=> d!419093 d!419117))

(declare-fun d!419753 () Bool)

(assert (not d!419753))

(assert (=> b!1445081 d!419753))

(declare-fun d!419755 () Bool)

(assert (not d!419755))

(assert (=> b!1445081 d!419755))

(declare-fun d!419757 () Bool)

(assert (not d!419757))

(assert (=> b!1445081 d!419757))

(declare-fun d!419759 () Bool)

(assert (not d!419759))

(assert (=> b!1445081 d!419759))

(declare-fun d!419761 () Bool)

(declare-fun c!238336 () Bool)

(assert (=> d!419761 (= c!238336 ((_ is Nil!14990) lt!496969))))

(declare-fun e!922695 () (InoxSet C!8076))

(assert (=> d!419761 (= (content!2218 lt!496969) e!922695)))

(declare-fun b!1446395 () Bool)

(assert (=> b!1446395 (= e!922695 ((as const (Array C!8076 Bool)) false))))

(declare-fun b!1446396 () Bool)

(assert (=> b!1446396 (= e!922695 ((_ map or) (store ((as const (Array C!8076 Bool)) false) (h!20391 lt!496969) true) (content!2218 (t!130175 lt!496969))))))

(assert (= (and d!419761 c!238336) b!1446395))

(assert (= (and d!419761 (not c!238336)) b!1446396))

(declare-fun m!1668173 () Bool)

(assert (=> b!1446396 m!1668173))

(declare-fun m!1668175 () Bool)

(assert (=> b!1446396 m!1668175))

(assert (=> d!419001 d!419761))

(declare-fun d!419763 () Bool)

(declare-fun c!238337 () Bool)

(assert (=> d!419763 (= c!238337 ((_ is Nil!14990) (list!5972 lt!496939)))))

(declare-fun e!922696 () (InoxSet C!8076))

(assert (=> d!419763 (= (content!2218 (list!5972 lt!496939)) e!922696)))

(declare-fun b!1446397 () Bool)

(assert (=> b!1446397 (= e!922696 ((as const (Array C!8076 Bool)) false))))

(declare-fun b!1446398 () Bool)

(assert (=> b!1446398 (= e!922696 ((_ map or) (store ((as const (Array C!8076 Bool)) false) (h!20391 (list!5972 lt!496939)) true) (content!2218 (t!130175 (list!5972 lt!496939)))))))

(assert (= (and d!419763 c!238337) b!1446397))

(assert (= (and d!419763 (not c!238337)) b!1446398))

(declare-fun m!1668177 () Bool)

(assert (=> b!1446398 m!1668177))

(assert (=> b!1446398 m!1665101))

(assert (=> d!419001 d!419763))

(declare-fun d!419765 () Bool)

(declare-fun c!238338 () Bool)

(assert (=> d!419765 (= c!238338 ((_ is Nil!14990) (list!5972 lt!496936)))))

(declare-fun e!922697 () (InoxSet C!8076))

(assert (=> d!419765 (= (content!2218 (list!5972 lt!496936)) e!922697)))

(declare-fun b!1446399 () Bool)

(assert (=> b!1446399 (= e!922697 ((as const (Array C!8076 Bool)) false))))

(declare-fun b!1446400 () Bool)

(assert (=> b!1446400 (= e!922697 ((_ map or) (store ((as const (Array C!8076 Bool)) false) (h!20391 (list!5972 lt!496936)) true) (content!2218 (t!130175 (list!5972 lt!496936)))))))

(assert (= (and d!419765 c!238338) b!1446399))

(assert (= (and d!419765 (not c!238338)) b!1446400))

(declare-fun m!1668179 () Bool)

(assert (=> b!1446400 m!1668179))

(declare-fun m!1668181 () Bool)

(assert (=> b!1446400 m!1668181))

(assert (=> d!419001 d!419765))

(assert (=> b!1445057 d!419017))

(assert (=> b!1445057 d!419019))

(assert (=> b!1445057 d!419021))

(assert (=> b!1445057 d!419023))

(declare-fun d!419767 () Bool)

(assert (=> d!419767 (= (isEmpty!9342 (rules!11498 other!32)) ((_ is Nil!14993) (rules!11498 other!32)))))

(assert (=> d!419115 d!419767))

(declare-fun d!419769 () Bool)

(declare-fun c!238341 () Bool)

(assert (=> d!419769 (= c!238341 ((_ is Nil!14992) lt!496972))))

(declare-fun e!922700 () (InoxSet Token!4932))

(assert (=> d!419769 (= (content!2219 lt!496972) e!922700)))

(declare-fun b!1446405 () Bool)

(assert (=> b!1446405 (= e!922700 ((as const (Array Token!4932 Bool)) false))))

(declare-fun b!1446406 () Bool)

(assert (=> b!1446406 (= e!922700 ((_ map or) (store ((as const (Array Token!4932 Bool)) false) (h!20393 lt!496972) true) (content!2219 (t!130177 lt!496972))))))

(assert (= (and d!419769 c!238341) b!1446405))

(assert (= (and d!419769 (not c!238341)) b!1446406))

(declare-fun m!1668183 () Bool)

(assert (=> b!1446406 m!1668183))

(declare-fun m!1668185 () Bool)

(assert (=> b!1446406 m!1668185))

(assert (=> d!419007 d!419769))

(declare-fun d!419771 () Bool)

(declare-fun c!238342 () Bool)

(assert (=> d!419771 (= c!238342 ((_ is Nil!14992) lt!496941))))

(declare-fun e!922701 () (InoxSet Token!4932))

(assert (=> d!419771 (= (content!2219 lt!496941) e!922701)))

(declare-fun b!1446407 () Bool)

(assert (=> b!1446407 (= e!922701 ((as const (Array Token!4932 Bool)) false))))

(declare-fun b!1446408 () Bool)

(assert (=> b!1446408 (= e!922701 ((_ map or) (store ((as const (Array Token!4932 Bool)) false) (h!20393 lt!496941) true) (content!2219 (t!130177 lt!496941))))))

(assert (= (and d!419771 c!238342) b!1446407))

(assert (= (and d!419771 (not c!238342)) b!1446408))

(declare-fun m!1668187 () Bool)

(assert (=> b!1446408 m!1668187))

(assert (=> b!1446408 m!1666147))

(assert (=> d!419007 d!419771))

(declare-fun d!419773 () Bool)

(declare-fun c!238343 () Bool)

(assert (=> d!419773 (= c!238343 ((_ is Nil!14992) lt!496943))))

(declare-fun e!922702 () (InoxSet Token!4932))

(assert (=> d!419773 (= (content!2219 lt!496943) e!922702)))

(declare-fun b!1446409 () Bool)

(assert (=> b!1446409 (= e!922702 ((as const (Array Token!4932 Bool)) false))))

(declare-fun b!1446410 () Bool)

(assert (=> b!1446410 (= e!922702 ((_ map or) (store ((as const (Array Token!4932 Bool)) false) (h!20393 lt!496943) true) (content!2219 (t!130177 lt!496943))))))

(assert (= (and d!419773 c!238343) b!1446409))

(assert (= (and d!419773 (not c!238343)) b!1446410))

(declare-fun m!1668189 () Bool)

(assert (=> b!1446410 m!1668189))

(declare-fun m!1668191 () Bool)

(assert (=> b!1446410 m!1668191))

(assert (=> d!419007 d!419773))

(assert (=> b!1444987 d!419011))

(declare-fun d!419775 () Bool)

(assert (=> d!419775 (= (list!5972 lt!496976) (list!5976 (c!238012 lt!496976)))))

(declare-fun bs!342246 () Bool)

(assert (= bs!342246 d!419775))

(declare-fun m!1668193 () Bool)

(assert (=> bs!342246 m!1668193))

(assert (=> d!419021 d!419775))

(declare-fun d!419777 () Bool)

(assert (=> d!419777 (= (list!5972 lt!497236) (list!5976 (c!238012 lt!497236)))))

(declare-fun bs!342247 () Bool)

(assert (= bs!342247 d!419777))

(declare-fun m!1668195 () Bool)

(assert (=> bs!342247 m!1668195))

(assert (=> d!419103 d!419777))

(declare-fun d!419779 () Bool)

(declare-fun c!238344 () Bool)

(assert (=> d!419779 (= c!238344 ((_ is Cons!14992) (list!5973 (tokens!2014 thiss!10022))))))

(declare-fun e!922703 () List!15056)

(assert (=> d!419779 (= (printList!713 Lexer!2292 (list!5973 (tokens!2014 thiss!10022))) e!922703)))

(declare-fun b!1446411 () Bool)

(assert (=> b!1446411 (= e!922703 (++!4033 (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 thiss!10022))))) (printList!713 Lexer!2292 (t!130177 (list!5973 (tokens!2014 thiss!10022))))))))

(declare-fun b!1446412 () Bool)

(assert (=> b!1446412 (= e!922703 Nil!14990)))

(assert (= (and d!419779 c!238344) b!1446411))

(assert (= (and d!419779 (not c!238344)) b!1446412))

(declare-fun m!1668197 () Bool)

(assert (=> b!1446411 m!1668197))

(assert (=> b!1446411 m!1668197))

(declare-fun m!1668199 () Bool)

(assert (=> b!1446411 m!1668199))

(declare-fun m!1668201 () Bool)

(assert (=> b!1446411 m!1668201))

(assert (=> b!1446411 m!1668199))

(assert (=> b!1446411 m!1668201))

(declare-fun m!1668203 () Bool)

(assert (=> b!1446411 m!1668203))

(assert (=> d!419103 d!419779))

(assert (=> d!419103 d!419033))

(declare-fun d!419781 () Bool)

(declare-fun lt!498489 () BalanceConc!10132)

(assert (=> d!419781 (= (list!5972 lt!498489) (printListTailRec!285 Lexer!2292 (dropList!470 (tokens!2014 thiss!10022) 0) (list!5972 (BalanceConc!10133 Empty!5096))))))

(declare-fun e!922705 () BalanceConc!10132)

(assert (=> d!419781 (= lt!498489 e!922705)))

(declare-fun c!238345 () Bool)

(assert (=> d!419781 (= c!238345 (>= 0 (size!12291 (tokens!2014 thiss!10022))))))

(declare-fun e!922704 () Bool)

(assert (=> d!419781 e!922704))

(declare-fun res!654879 () Bool)

(assert (=> d!419781 (=> (not res!654879) (not e!922704))))

(assert (=> d!419781 (= res!654879 (>= 0 0))))

(assert (=> d!419781 (= (printTailRec!685 Lexer!2292 (tokens!2014 thiss!10022) 0 (BalanceConc!10133 Empty!5096)) lt!498489)))

(declare-fun b!1446413 () Bool)

(assert (=> b!1446413 (= e!922704 (<= 0 (size!12291 (tokens!2014 thiss!10022))))))

(declare-fun b!1446414 () Bool)

(assert (=> b!1446414 (= e!922705 (BalanceConc!10133 Empty!5096))))

(declare-fun b!1446415 () Bool)

(assert (=> b!1446415 (= e!922705 (printTailRec!685 Lexer!2292 (tokens!2014 thiss!10022) (+ 0 1) (++!4036 (BalanceConc!10133 Empty!5096) (charsOf!1521 (apply!3865 (tokens!2014 thiss!10022) 0)))))))

(declare-fun lt!498490 () List!15058)

(assert (=> b!1446415 (= lt!498490 (list!5973 (tokens!2014 thiss!10022)))))

(declare-fun lt!498494 () Unit!23591)

(assert (=> b!1446415 (= lt!498494 (lemmaDropApply!488 lt!498490 0))))

(assert (=> b!1446415 (= (head!2931 (drop!736 lt!498490 0)) (apply!3866 lt!498490 0))))

(declare-fun lt!498492 () Unit!23591)

(assert (=> b!1446415 (= lt!498492 lt!498494)))

(declare-fun lt!498493 () List!15058)

(assert (=> b!1446415 (= lt!498493 (list!5973 (tokens!2014 thiss!10022)))))

(declare-fun lt!498491 () Unit!23591)

(assert (=> b!1446415 (= lt!498491 (lemmaDropTail!468 lt!498493 0))))

(assert (=> b!1446415 (= (tail!2162 (drop!736 lt!498493 0)) (drop!736 lt!498493 (+ 0 1)))))

(declare-fun lt!498495 () Unit!23591)

(assert (=> b!1446415 (= lt!498495 lt!498491)))

(assert (= (and d!419781 res!654879) b!1446413))

(assert (= (and d!419781 c!238345) b!1446414))

(assert (= (and d!419781 (not c!238345)) b!1446415))

(declare-fun m!1668205 () Bool)

(assert (=> d!419781 m!1668205))

(assert (=> d!419781 m!1664879))

(declare-fun m!1668207 () Bool)

(assert (=> d!419781 m!1668207))

(assert (=> d!419781 m!1668205))

(assert (=> d!419781 m!1664879))

(declare-fun m!1668209 () Bool)

(assert (=> d!419781 m!1668209))

(declare-fun m!1668211 () Bool)

(assert (=> d!419781 m!1668211))

(assert (=> b!1446413 m!1668209))

(assert (=> b!1446415 m!1664083))

(declare-fun m!1668213 () Bool)

(assert (=> b!1446415 m!1668213))

(declare-fun m!1668215 () Bool)

(assert (=> b!1446415 m!1668215))

(declare-fun m!1668217 () Bool)

(assert (=> b!1446415 m!1668217))

(declare-fun m!1668219 () Bool)

(assert (=> b!1446415 m!1668219))

(declare-fun m!1668221 () Bool)

(assert (=> b!1446415 m!1668221))

(declare-fun m!1668223 () Bool)

(assert (=> b!1446415 m!1668223))

(declare-fun m!1668225 () Bool)

(assert (=> b!1446415 m!1668225))

(declare-fun m!1668227 () Bool)

(assert (=> b!1446415 m!1668227))

(assert (=> b!1446415 m!1668219))

(declare-fun m!1668229 () Bool)

(assert (=> b!1446415 m!1668229))

(assert (=> b!1446415 m!1668221))

(assert (=> b!1446415 m!1668217))

(declare-fun m!1668231 () Bool)

(assert (=> b!1446415 m!1668231))

(declare-fun m!1668233 () Bool)

(assert (=> b!1446415 m!1668233))

(assert (=> b!1446415 m!1668233))

(declare-fun m!1668235 () Bool)

(assert (=> b!1446415 m!1668235))

(assert (=> b!1446415 m!1668213))

(assert (=> d!419103 d!419781))

(declare-fun d!419783 () Bool)

(declare-fun res!654884 () Bool)

(declare-fun e!922708 () Bool)

(assert (=> d!419783 (=> (not res!654884) (not e!922708))))

(assert (=> d!419783 (= res!654884 (<= (size!12290 (list!5980 (xs!7838 (c!238014 (tokens!2014 other!32))))) 512))))

(assert (=> d!419783 (= (inv!19960 (c!238014 (tokens!2014 other!32))) e!922708)))

(declare-fun b!1446420 () Bool)

(declare-fun res!654885 () Bool)

(assert (=> b!1446420 (=> (not res!654885) (not e!922708))))

(assert (=> b!1446420 (= res!654885 (= (csize!10425 (c!238014 (tokens!2014 other!32))) (size!12290 (list!5980 (xs!7838 (c!238014 (tokens!2014 other!32)))))))))

(declare-fun b!1446421 () Bool)

(assert (=> b!1446421 (= e!922708 (and (> (csize!10425 (c!238014 (tokens!2014 other!32))) 0) (<= (csize!10425 (c!238014 (tokens!2014 other!32))) 512)))))

(assert (= (and d!419783 res!654884) b!1446420))

(assert (= (and b!1446420 res!654885) b!1446421))

(declare-fun m!1668237 () Bool)

(assert (=> d!419783 m!1668237))

(assert (=> d!419783 m!1668237))

(declare-fun m!1668239 () Bool)

(assert (=> d!419783 m!1668239))

(assert (=> b!1446420 m!1668237))

(assert (=> b!1446420 m!1668237))

(assert (=> b!1446420 m!1668239))

(assert (=> b!1445067 d!419783))

(declare-fun d!419785 () Bool)

(assert (=> d!419785 (= (head!2931 (drop!736 lt!497254 0)) (apply!3866 lt!497254 0))))

(declare-fun lt!498498 () Unit!23591)

(declare-fun choose!8916 (List!15058 Int) Unit!23591)

(assert (=> d!419785 (= lt!498498 (choose!8916 lt!497254 0))))

(declare-fun e!922711 () Bool)

(assert (=> d!419785 e!922711))

(declare-fun res!654888 () Bool)

(assert (=> d!419785 (=> (not res!654888) (not e!922711))))

(assert (=> d!419785 (= res!654888 (>= 0 0))))

(assert (=> d!419785 (= (lemmaDropApply!488 lt!497254 0) lt!498498)))

(declare-fun b!1446424 () Bool)

(assert (=> b!1446424 (= e!922711 (< 0 (size!12290 lt!497254)))))

(assert (= (and d!419785 res!654888) b!1446424))

(assert (=> d!419785 m!1664907))

(assert (=> d!419785 m!1664907))

(assert (=> d!419785 m!1664909))

(assert (=> d!419785 m!1664901))

(declare-fun m!1668241 () Bool)

(assert (=> d!419785 m!1668241))

(declare-fun m!1668243 () Bool)

(assert (=> b!1446424 m!1668243))

(assert (=> b!1445241 d!419785))

(declare-fun d!419787 () Bool)

(declare-fun lt!498499 () BalanceConc!10132)

(assert (=> d!419787 (= (list!5972 lt!498499) (printListTailRec!285 Lexer!2292 (dropList!470 (tokens!2014 other!32) (+ 0 1)) (list!5972 (++!4036 (BalanceConc!10133 Empty!5096) (charsOf!1521 (apply!3865 (tokens!2014 other!32) 0))))))))

(declare-fun e!922713 () BalanceConc!10132)

(assert (=> d!419787 (= lt!498499 e!922713)))

(declare-fun c!238346 () Bool)

(assert (=> d!419787 (= c!238346 (>= (+ 0 1) (size!12291 (tokens!2014 other!32))))))

(declare-fun e!922712 () Bool)

(assert (=> d!419787 e!922712))

(declare-fun res!654889 () Bool)

(assert (=> d!419787 (=> (not res!654889) (not e!922712))))

(assert (=> d!419787 (= res!654889 (>= (+ 0 1) 0))))

(assert (=> d!419787 (= (printTailRec!685 Lexer!2292 (tokens!2014 other!32) (+ 0 1) (++!4036 (BalanceConc!10133 Empty!5096) (charsOf!1521 (apply!3865 (tokens!2014 other!32) 0)))) lt!498499)))

(declare-fun b!1446425 () Bool)

(assert (=> b!1446425 (= e!922712 (<= (+ 0 1) (size!12291 (tokens!2014 other!32))))))

(declare-fun b!1446426 () Bool)

(assert (=> b!1446426 (= e!922713 (++!4036 (BalanceConc!10133 Empty!5096) (charsOf!1521 (apply!3865 (tokens!2014 other!32) 0))))))

(declare-fun b!1446427 () Bool)

(assert (=> b!1446427 (= e!922713 (printTailRec!685 Lexer!2292 (tokens!2014 other!32) (+ 0 1 1) (++!4036 (++!4036 (BalanceConc!10133 Empty!5096) (charsOf!1521 (apply!3865 (tokens!2014 other!32) 0))) (charsOf!1521 (apply!3865 (tokens!2014 other!32) (+ 0 1))))))))

(declare-fun lt!498500 () List!15058)

(assert (=> b!1446427 (= lt!498500 (list!5973 (tokens!2014 other!32)))))

(declare-fun lt!498504 () Unit!23591)

(assert (=> b!1446427 (= lt!498504 (lemmaDropApply!488 lt!498500 (+ 0 1)))))

(assert (=> b!1446427 (= (head!2931 (drop!736 lt!498500 (+ 0 1))) (apply!3866 lt!498500 (+ 0 1)))))

(declare-fun lt!498502 () Unit!23591)

(assert (=> b!1446427 (= lt!498502 lt!498504)))

(declare-fun lt!498503 () List!15058)

(assert (=> b!1446427 (= lt!498503 (list!5973 (tokens!2014 other!32)))))

(declare-fun lt!498501 () Unit!23591)

(assert (=> b!1446427 (= lt!498501 (lemmaDropTail!468 lt!498503 (+ 0 1)))))

(assert (=> b!1446427 (= (tail!2162 (drop!736 lt!498503 (+ 0 1))) (drop!736 lt!498503 (+ 0 1 1)))))

(declare-fun lt!498505 () Unit!23591)

(assert (=> b!1446427 (= lt!498505 lt!498501)))

(assert (= (and d!419787 res!654889) b!1446425))

(assert (= (and d!419787 c!238346) b!1446426))

(assert (= (and d!419787 (not c!238346)) b!1446427))

(declare-fun m!1668245 () Bool)

(assert (=> d!419787 m!1668245))

(declare-fun m!1668247 () Bool)

(assert (=> d!419787 m!1668247))

(declare-fun m!1668249 () Bool)

(assert (=> d!419787 m!1668249))

(assert (=> d!419787 m!1668245))

(assert (=> d!419787 m!1664893))

(assert (=> d!419787 m!1668247))

(assert (=> d!419787 m!1664883))

(declare-fun m!1668251 () Bool)

(assert (=> d!419787 m!1668251))

(assert (=> b!1446425 m!1664883))

(assert (=> b!1446427 m!1664099))

(declare-fun m!1668253 () Bool)

(assert (=> b!1446427 m!1668253))

(declare-fun m!1668255 () Bool)

(assert (=> b!1446427 m!1668255))

(assert (=> b!1446427 m!1664893))

(declare-fun m!1668257 () Bool)

(assert (=> b!1446427 m!1668257))

(declare-fun m!1668259 () Bool)

(assert (=> b!1446427 m!1668259))

(declare-fun m!1668261 () Bool)

(assert (=> b!1446427 m!1668261))

(declare-fun m!1668263 () Bool)

(assert (=> b!1446427 m!1668263))

(declare-fun m!1668265 () Bool)

(assert (=> b!1446427 m!1668265))

(declare-fun m!1668267 () Bool)

(assert (=> b!1446427 m!1668267))

(assert (=> b!1446427 m!1668259))

(declare-fun m!1668269 () Bool)

(assert (=> b!1446427 m!1668269))

(assert (=> b!1446427 m!1668261))

(assert (=> b!1446427 m!1668257))

(declare-fun m!1668271 () Bool)

(assert (=> b!1446427 m!1668271))

(declare-fun m!1668273 () Bool)

(assert (=> b!1446427 m!1668273))

(assert (=> b!1446427 m!1668273))

(declare-fun m!1668275 () Bool)

(assert (=> b!1446427 m!1668275))

(assert (=> b!1446427 m!1668253))

(assert (=> b!1445241 d!419787))

(declare-fun d!419789 () Bool)

(declare-fun lt!498506 () BalanceConc!10132)

(assert (=> d!419789 (= (list!5972 lt!498506) (originalCharacters!3497 (apply!3865 (tokens!2014 other!32) 0)))))

(assert (=> d!419789 (= lt!498506 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (apply!3865 (tokens!2014 other!32) 0)))) (value!84745 (apply!3865 (tokens!2014 other!32) 0))))))

(assert (=> d!419789 (= (charsOf!1521 (apply!3865 (tokens!2014 other!32) 0)) lt!498506)))

(declare-fun b_lambda!45169 () Bool)

(assert (=> (not b_lambda!45169) (not d!419789)))

(declare-fun t!130286 () Bool)

(declare-fun tb!78737 () Bool)

(assert (=> (and b!1445271 (= (toChars!3801 (transformation!2635 (h!20394 (rules!11498 thiss!10022)))) (toChars!3801 (transformation!2635 (rule!4406 (apply!3865 (tokens!2014 other!32) 0))))) t!130286) tb!78737))

(declare-fun b!1446428 () Bool)

(declare-fun e!922714 () Bool)

(declare-fun tp!407886 () Bool)

(assert (=> b!1446428 (= e!922714 (and (inv!19962 (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (apply!3865 (tokens!2014 other!32) 0)))) (value!84745 (apply!3865 (tokens!2014 other!32) 0))))) tp!407886))))

(declare-fun result!95164 () Bool)

(assert (=> tb!78737 (= result!95164 (and (inv!19963 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (apply!3865 (tokens!2014 other!32) 0)))) (value!84745 (apply!3865 (tokens!2014 other!32) 0)))) e!922714))))

(assert (= tb!78737 b!1446428))

(declare-fun m!1668277 () Bool)

(assert (=> b!1446428 m!1668277))

(declare-fun m!1668279 () Bool)

(assert (=> tb!78737 m!1668279))

(assert (=> d!419789 t!130286))

(declare-fun b_and!97887 () Bool)

(assert (= b_and!97863 (and (=> t!130286 result!95164) b_and!97887)))

(declare-fun t!130288 () Bool)

(declare-fun tb!78739 () Bool)

(assert (=> (and b!1445282 (= (toChars!3801 (transformation!2635 (h!20394 (rules!11498 other!32)))) (toChars!3801 (transformation!2635 (rule!4406 (apply!3865 (tokens!2014 other!32) 0))))) t!130288) tb!78739))

(declare-fun result!95166 () Bool)

(assert (= result!95166 result!95164))

(assert (=> d!419789 t!130288))

(declare-fun b_and!97889 () Bool)

(assert (= b_and!97865 (and (=> t!130288 result!95166) b_and!97889)))

(declare-fun m!1668281 () Bool)

(assert (=> d!419789 m!1668281))

(declare-fun m!1668283 () Bool)

(assert (=> d!419789 m!1668283))

(assert (=> b!1445241 d!419789))

(declare-fun d!419791 () Bool)

(declare-fun lt!498509 () Token!4932)

(declare-fun contains!2873 (List!15058 Token!4932) Bool)

(assert (=> d!419791 (contains!2873 lt!497254 lt!498509)))

(declare-fun e!922719 () Token!4932)

(assert (=> d!419791 (= lt!498509 e!922719)))

(declare-fun c!238349 () Bool)

(assert (=> d!419791 (= c!238349 (= 0 0))))

(declare-fun e!922720 () Bool)

(assert (=> d!419791 e!922720))

(declare-fun res!654892 () Bool)

(assert (=> d!419791 (=> (not res!654892) (not e!922720))))

(assert (=> d!419791 (= res!654892 (<= 0 0))))

(assert (=> d!419791 (= (apply!3866 lt!497254 0) lt!498509)))

(declare-fun b!1446435 () Bool)

(assert (=> b!1446435 (= e!922720 (< 0 (size!12290 lt!497254)))))

(declare-fun b!1446436 () Bool)

(assert (=> b!1446436 (= e!922719 (head!2931 lt!497254))))

(declare-fun b!1446437 () Bool)

(assert (=> b!1446437 (= e!922719 (apply!3866 (tail!2162 lt!497254) (- 0 1)))))

(assert (= (and d!419791 res!654892) b!1446435))

(assert (= (and d!419791 c!238349) b!1446436))

(assert (= (and d!419791 (not c!238349)) b!1446437))

(declare-fun m!1668285 () Bool)

(assert (=> d!419791 m!1668285))

(assert (=> b!1446435 m!1668243))

(declare-fun m!1668287 () Bool)

(assert (=> b!1446436 m!1668287))

(declare-fun m!1668289 () Bool)

(assert (=> b!1446437 m!1668289))

(assert (=> b!1446437 m!1668289))

(declare-fun m!1668291 () Bool)

(assert (=> b!1446437 m!1668291))

(assert (=> b!1445241 d!419791))

(declare-fun b!1446447 () Bool)

(declare-fun res!654901 () Bool)

(declare-fun e!922723 () Bool)

(assert (=> b!1446447 (=> (not res!654901) (not e!922723))))

(declare-fun height!756 (Conc!5096) Int)

(declare-fun ++!4038 (Conc!5096 Conc!5096) Conc!5096)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1446447 (= res!654901 (<= (height!756 (++!4038 (c!238012 (BalanceConc!10133 Empty!5096)) (c!238012 (charsOf!1521 (apply!3865 (tokens!2014 other!32) 0))))) (+ (max!0 (height!756 (c!238012 (BalanceConc!10133 Empty!5096))) (height!756 (c!238012 (charsOf!1521 (apply!3865 (tokens!2014 other!32) 0))))) 1)))))

(declare-fun b!1446448 () Bool)

(declare-fun res!654904 () Bool)

(assert (=> b!1446448 (=> (not res!654904) (not e!922723))))

(assert (=> b!1446448 (= res!654904 (>= (height!756 (++!4038 (c!238012 (BalanceConc!10133 Empty!5096)) (c!238012 (charsOf!1521 (apply!3865 (tokens!2014 other!32) 0))))) (max!0 (height!756 (c!238012 (BalanceConc!10133 Empty!5096))) (height!756 (c!238012 (charsOf!1521 (apply!3865 (tokens!2014 other!32) 0)))))))))

(declare-fun b!1446449 () Bool)

(declare-fun lt!498512 () BalanceConc!10132)

(assert (=> b!1446449 (= e!922723 (= (list!5972 lt!498512) (++!4033 (list!5972 (BalanceConc!10133 Empty!5096)) (list!5972 (charsOf!1521 (apply!3865 (tokens!2014 other!32) 0))))))))

(declare-fun b!1446446 () Bool)

(declare-fun res!654902 () Bool)

(assert (=> b!1446446 (=> (not res!654902) (not e!922723))))

(assert (=> b!1446446 (= res!654902 (isBalanced!1520 (++!4038 (c!238012 (BalanceConc!10133 Empty!5096)) (c!238012 (charsOf!1521 (apply!3865 (tokens!2014 other!32) 0))))))))

(declare-fun d!419793 () Bool)

(assert (=> d!419793 e!922723))

(declare-fun res!654903 () Bool)

(assert (=> d!419793 (=> (not res!654903) (not e!922723))))

(declare-fun appendAssocInst!327 (Conc!5096 Conc!5096) Bool)

(assert (=> d!419793 (= res!654903 (appendAssocInst!327 (c!238012 (BalanceConc!10133 Empty!5096)) (c!238012 (charsOf!1521 (apply!3865 (tokens!2014 other!32) 0)))))))

(assert (=> d!419793 (= lt!498512 (BalanceConc!10133 (++!4038 (c!238012 (BalanceConc!10133 Empty!5096)) (c!238012 (charsOf!1521 (apply!3865 (tokens!2014 other!32) 0))))))))

(assert (=> d!419793 (= (++!4036 (BalanceConc!10133 Empty!5096) (charsOf!1521 (apply!3865 (tokens!2014 other!32) 0))) lt!498512)))

(assert (= (and d!419793 res!654903) b!1446446))

(assert (= (and b!1446446 res!654902) b!1446447))

(assert (= (and b!1446447 res!654901) b!1446448))

(assert (= (and b!1446448 res!654904) b!1446449))

(declare-fun m!1668293 () Bool)

(assert (=> b!1446447 m!1668293))

(declare-fun m!1668295 () Bool)

(assert (=> b!1446447 m!1668295))

(assert (=> b!1446447 m!1668293))

(declare-fun m!1668297 () Bool)

(assert (=> b!1446447 m!1668297))

(declare-fun m!1668299 () Bool)

(assert (=> b!1446447 m!1668299))

(assert (=> b!1446447 m!1668297))

(assert (=> b!1446447 m!1668295))

(declare-fun m!1668301 () Bool)

(assert (=> b!1446447 m!1668301))

(assert (=> b!1446448 m!1668293))

(assert (=> b!1446448 m!1668295))

(assert (=> b!1446448 m!1668293))

(assert (=> b!1446448 m!1668297))

(assert (=> b!1446448 m!1668299))

(assert (=> b!1446448 m!1668297))

(assert (=> b!1446448 m!1668295))

(assert (=> b!1446448 m!1668301))

(declare-fun m!1668303 () Bool)

(assert (=> b!1446449 m!1668303))

(assert (=> b!1446449 m!1664879))

(assert (=> b!1446449 m!1664891))

(declare-fun m!1668305 () Bool)

(assert (=> b!1446449 m!1668305))

(assert (=> b!1446449 m!1664879))

(assert (=> b!1446449 m!1668305))

(declare-fun m!1668307 () Bool)

(assert (=> b!1446449 m!1668307))

(declare-fun m!1668309 () Bool)

(assert (=> d!419793 m!1668309))

(assert (=> d!419793 m!1668295))

(assert (=> b!1446446 m!1668295))

(assert (=> b!1446446 m!1668295))

(declare-fun m!1668311 () Bool)

(assert (=> b!1446446 m!1668311))

(assert (=> b!1445241 d!419793))

(declare-fun d!419795 () Bool)

(assert (=> d!419795 (= (head!2931 (drop!736 lt!497254 0)) (h!20393 (drop!736 lt!497254 0)))))

(assert (=> b!1445241 d!419795))

(declare-fun b!1446468 () Bool)

(declare-fun e!922736 () Bool)

(declare-fun lt!498515 () List!15058)

(declare-fun e!922734 () Int)

(assert (=> b!1446468 (= e!922736 (= (size!12290 lt!498515) e!922734))))

(declare-fun c!238364 () Bool)

(assert (=> b!1446468 (= c!238364 (<= (+ 0 1) 0))))

(declare-fun d!419797 () Bool)

(assert (=> d!419797 e!922736))

(declare-fun res!654907 () Bool)

(assert (=> d!419797 (=> (not res!654907) (not e!922736))))

(assert (=> d!419797 (= res!654907 (= ((_ map implies) (content!2219 lt!498515) (content!2219 lt!497257)) ((as const (InoxSet Token!4932)) true)))))

(declare-fun e!922737 () List!15058)

(assert (=> d!419797 (= lt!498515 e!922737)))

(declare-fun c!238361 () Bool)

(assert (=> d!419797 (= c!238361 ((_ is Nil!14992) lt!497257))))

(assert (=> d!419797 (= (drop!736 lt!497257 (+ 0 1)) lt!498515)))

(declare-fun b!1446469 () Bool)

(declare-fun call!97805 () Int)

(assert (=> b!1446469 (= e!922734 call!97805)))

(declare-fun b!1446470 () Bool)

(declare-fun e!922735 () List!15058)

(assert (=> b!1446470 (= e!922735 (drop!736 (t!130177 lt!497257) (- (+ 0 1) 1)))))

(declare-fun b!1446471 () Bool)

(assert (=> b!1446471 (= e!922737 e!922735)))

(declare-fun c!238362 () Bool)

(assert (=> b!1446471 (= c!238362 (<= (+ 0 1) 0))))

(declare-fun b!1446472 () Bool)

(assert (=> b!1446472 (= e!922735 lt!497257)))

(declare-fun b!1446473 () Bool)

(assert (=> b!1446473 (= e!922737 Nil!14992)))

(declare-fun b!1446474 () Bool)

(declare-fun e!922738 () Int)

(assert (=> b!1446474 (= e!922734 e!922738)))

(declare-fun c!238363 () Bool)

(assert (=> b!1446474 (= c!238363 (>= (+ 0 1) call!97805))))

(declare-fun b!1446475 () Bool)

(assert (=> b!1446475 (= e!922738 (- call!97805 (+ 0 1)))))

(declare-fun b!1446476 () Bool)

(assert (=> b!1446476 (= e!922738 0)))

(declare-fun bm!97800 () Bool)

(assert (=> bm!97800 (= call!97805 (size!12290 lt!497257))))

(assert (= (and d!419797 c!238361) b!1446473))

(assert (= (and d!419797 (not c!238361)) b!1446471))

(assert (= (and b!1446471 c!238362) b!1446472))

(assert (= (and b!1446471 (not c!238362)) b!1446470))

(assert (= (and d!419797 res!654907) b!1446468))

(assert (= (and b!1446468 c!238364) b!1446469))

(assert (= (and b!1446468 (not c!238364)) b!1446474))

(assert (= (and b!1446474 c!238363) b!1446476))

(assert (= (and b!1446474 (not c!238363)) b!1446475))

(assert (= (or b!1446469 b!1446474 b!1446475) bm!97800))

(declare-fun m!1668313 () Bool)

(assert (=> b!1446468 m!1668313))

(declare-fun m!1668315 () Bool)

(assert (=> d!419797 m!1668315))

(declare-fun m!1668317 () Bool)

(assert (=> d!419797 m!1668317))

(declare-fun m!1668319 () Bool)

(assert (=> b!1446470 m!1668319))

(declare-fun m!1668321 () Bool)

(assert (=> bm!97800 m!1668321))

(assert (=> b!1445241 d!419797))

(declare-fun b!1446477 () Bool)

(declare-fun e!922741 () Bool)

(declare-fun lt!498516 () List!15058)

(declare-fun e!922739 () Int)

(assert (=> b!1446477 (= e!922741 (= (size!12290 lt!498516) e!922739))))

(declare-fun c!238368 () Bool)

(assert (=> b!1446477 (= c!238368 (<= 0 0))))

(declare-fun d!419799 () Bool)

(assert (=> d!419799 e!922741))

(declare-fun res!654908 () Bool)

(assert (=> d!419799 (=> (not res!654908) (not e!922741))))

(assert (=> d!419799 (= res!654908 (= ((_ map implies) (content!2219 lt!498516) (content!2219 lt!497257)) ((as const (InoxSet Token!4932)) true)))))

(declare-fun e!922742 () List!15058)

(assert (=> d!419799 (= lt!498516 e!922742)))

(declare-fun c!238365 () Bool)

(assert (=> d!419799 (= c!238365 ((_ is Nil!14992) lt!497257))))

(assert (=> d!419799 (= (drop!736 lt!497257 0) lt!498516)))

(declare-fun b!1446478 () Bool)

(declare-fun call!97806 () Int)

(assert (=> b!1446478 (= e!922739 call!97806)))

(declare-fun b!1446479 () Bool)

(declare-fun e!922740 () List!15058)

(assert (=> b!1446479 (= e!922740 (drop!736 (t!130177 lt!497257) (- 0 1)))))

(declare-fun b!1446480 () Bool)

(assert (=> b!1446480 (= e!922742 e!922740)))

(declare-fun c!238366 () Bool)

(assert (=> b!1446480 (= c!238366 (<= 0 0))))

(declare-fun b!1446481 () Bool)

(assert (=> b!1446481 (= e!922740 lt!497257)))

(declare-fun b!1446482 () Bool)

(assert (=> b!1446482 (= e!922742 Nil!14992)))

(declare-fun b!1446483 () Bool)

(declare-fun e!922743 () Int)

(assert (=> b!1446483 (= e!922739 e!922743)))

(declare-fun c!238367 () Bool)

(assert (=> b!1446483 (= c!238367 (>= 0 call!97806))))

(declare-fun b!1446484 () Bool)

(assert (=> b!1446484 (= e!922743 (- call!97806 0))))

(declare-fun b!1446485 () Bool)

(assert (=> b!1446485 (= e!922743 0)))

(declare-fun bm!97801 () Bool)

(assert (=> bm!97801 (= call!97806 (size!12290 lt!497257))))

(assert (= (and d!419799 c!238365) b!1446482))

(assert (= (and d!419799 (not c!238365)) b!1446480))

(assert (= (and b!1446480 c!238366) b!1446481))

(assert (= (and b!1446480 (not c!238366)) b!1446479))

(assert (= (and d!419799 res!654908) b!1446477))

(assert (= (and b!1446477 c!238368) b!1446478))

(assert (= (and b!1446477 (not c!238368)) b!1446483))

(assert (= (and b!1446483 c!238367) b!1446485))

(assert (= (and b!1446483 (not c!238367)) b!1446484))

(assert (= (or b!1446478 b!1446483 b!1446484) bm!97801))

(declare-fun m!1668323 () Bool)

(assert (=> b!1446477 m!1668323))

(declare-fun m!1668325 () Bool)

(assert (=> d!419799 m!1668325))

(assert (=> d!419799 m!1668317))

(declare-fun m!1668327 () Bool)

(assert (=> b!1446479 m!1668327))

(assert (=> bm!97801 m!1668321))

(assert (=> b!1445241 d!419799))

(assert (=> b!1445241 d!419027))

(declare-fun d!419801 () Bool)

(assert (=> d!419801 (= (tail!2162 (drop!736 lt!497257 0)) (t!130177 (drop!736 lt!497257 0)))))

(assert (=> b!1445241 d!419801))

(declare-fun d!419803 () Bool)

(declare-fun lt!498519 () Token!4932)

(assert (=> d!419803 (= lt!498519 (apply!3866 (list!5973 (tokens!2014 other!32)) 0))))

(declare-fun apply!3874 (Conc!5097 Int) Token!4932)

(assert (=> d!419803 (= lt!498519 (apply!3874 (c!238014 (tokens!2014 other!32)) 0))))

(declare-fun e!922746 () Bool)

(assert (=> d!419803 e!922746))

(declare-fun res!654911 () Bool)

(assert (=> d!419803 (=> (not res!654911) (not e!922746))))

(assert (=> d!419803 (= res!654911 (<= 0 0))))

(assert (=> d!419803 (= (apply!3865 (tokens!2014 other!32) 0) lt!498519)))

(declare-fun b!1446488 () Bool)

(assert (=> b!1446488 (= e!922746 (< 0 (size!12291 (tokens!2014 other!32))))))

(assert (= (and d!419803 res!654911) b!1446488))

(assert (=> d!419803 m!1664099))

(assert (=> d!419803 m!1664099))

(declare-fun m!1668329 () Bool)

(assert (=> d!419803 m!1668329))

(declare-fun m!1668331 () Bool)

(assert (=> d!419803 m!1668331))

(assert (=> b!1446488 m!1664883))

(assert (=> b!1445241 d!419803))

(declare-fun b!1446489 () Bool)

(declare-fun e!922749 () Bool)

(declare-fun lt!498520 () List!15058)

(declare-fun e!922747 () Int)

(assert (=> b!1446489 (= e!922749 (= (size!12290 lt!498520) e!922747))))

(declare-fun c!238372 () Bool)

(assert (=> b!1446489 (= c!238372 (<= 0 0))))

(declare-fun d!419805 () Bool)

(assert (=> d!419805 e!922749))

(declare-fun res!654912 () Bool)

(assert (=> d!419805 (=> (not res!654912) (not e!922749))))

(assert (=> d!419805 (= res!654912 (= ((_ map implies) (content!2219 lt!498520) (content!2219 lt!497254)) ((as const (InoxSet Token!4932)) true)))))

(declare-fun e!922750 () List!15058)

(assert (=> d!419805 (= lt!498520 e!922750)))

(declare-fun c!238369 () Bool)

(assert (=> d!419805 (= c!238369 ((_ is Nil!14992) lt!497254))))

(assert (=> d!419805 (= (drop!736 lt!497254 0) lt!498520)))

(declare-fun b!1446490 () Bool)

(declare-fun call!97807 () Int)

(assert (=> b!1446490 (= e!922747 call!97807)))

(declare-fun b!1446491 () Bool)

(declare-fun e!922748 () List!15058)

(assert (=> b!1446491 (= e!922748 (drop!736 (t!130177 lt!497254) (- 0 1)))))

(declare-fun b!1446492 () Bool)

(assert (=> b!1446492 (= e!922750 e!922748)))

(declare-fun c!238370 () Bool)

(assert (=> b!1446492 (= c!238370 (<= 0 0))))

(declare-fun b!1446493 () Bool)

(assert (=> b!1446493 (= e!922748 lt!497254)))

(declare-fun b!1446494 () Bool)

(assert (=> b!1446494 (= e!922750 Nil!14992)))

(declare-fun b!1446495 () Bool)

(declare-fun e!922751 () Int)

(assert (=> b!1446495 (= e!922747 e!922751)))

(declare-fun c!238371 () Bool)

(assert (=> b!1446495 (= c!238371 (>= 0 call!97807))))

(declare-fun b!1446496 () Bool)

(assert (=> b!1446496 (= e!922751 (- call!97807 0))))

(declare-fun b!1446497 () Bool)

(assert (=> b!1446497 (= e!922751 0)))

(declare-fun bm!97802 () Bool)

(assert (=> bm!97802 (= call!97807 (size!12290 lt!497254))))

(assert (= (and d!419805 c!238369) b!1446494))

(assert (= (and d!419805 (not c!238369)) b!1446492))

(assert (= (and b!1446492 c!238370) b!1446493))

(assert (= (and b!1446492 (not c!238370)) b!1446491))

(assert (= (and d!419805 res!654912) b!1446489))

(assert (= (and b!1446489 c!238372) b!1446490))

(assert (= (and b!1446489 (not c!238372)) b!1446495))

(assert (= (and b!1446495 c!238371) b!1446497))

(assert (= (and b!1446495 (not c!238371)) b!1446496))

(assert (= (or b!1446490 b!1446495 b!1446496) bm!97802))

(declare-fun m!1668333 () Bool)

(assert (=> b!1446489 m!1668333))

(declare-fun m!1668335 () Bool)

(assert (=> d!419805 m!1668335))

(declare-fun m!1668337 () Bool)

(assert (=> d!419805 m!1668337))

(declare-fun m!1668339 () Bool)

(assert (=> b!1446491 m!1668339))

(assert (=> bm!97802 m!1668243))

(assert (=> b!1445241 d!419805))

(declare-fun d!419807 () Bool)

(assert (=> d!419807 (= (tail!2162 (drop!736 lt!497257 0)) (drop!736 lt!497257 (+ 0 1)))))

(declare-fun lt!498523 () Unit!23591)

(declare-fun choose!8917 (List!15058 Int) Unit!23591)

(assert (=> d!419807 (= lt!498523 (choose!8917 lt!497257 0))))

(declare-fun e!922754 () Bool)

(assert (=> d!419807 e!922754))

(declare-fun res!654915 () Bool)

(assert (=> d!419807 (=> (not res!654915) (not e!922754))))

(assert (=> d!419807 (= res!654915 (>= 0 0))))

(assert (=> d!419807 (= (lemmaDropTail!468 lt!497257 0) lt!498523)))

(declare-fun b!1446500 () Bool)

(assert (=> b!1446500 (= e!922754 (< 0 (size!12290 lt!497257)))))

(assert (= (and d!419807 res!654915) b!1446500))

(assert (=> d!419807 m!1664887))

(assert (=> d!419807 m!1664887))

(assert (=> d!419807 m!1664889))

(assert (=> d!419807 m!1664899))

(declare-fun m!1668341 () Bool)

(assert (=> d!419807 m!1668341))

(assert (=> b!1446500 m!1668321))

(assert (=> b!1445241 d!419807))

(declare-fun d!419809 () Bool)

(declare-fun c!238373 () Bool)

(assert (=> d!419809 (= c!238373 ((_ is Nil!14992) lt!496977))))

(declare-fun e!922755 () (InoxSet Token!4932))

(assert (=> d!419809 (= (content!2219 lt!496977) e!922755)))

(declare-fun b!1446501 () Bool)

(assert (=> b!1446501 (= e!922755 ((as const (Array Token!4932 Bool)) false))))

(declare-fun b!1446502 () Bool)

(assert (=> b!1446502 (= e!922755 ((_ map or) (store ((as const (Array Token!4932 Bool)) false) (h!20393 lt!496977) true) (content!2219 (t!130177 lt!496977))))))

(assert (= (and d!419809 c!238373) b!1446501))

(assert (= (and d!419809 (not c!238373)) b!1446502))

(declare-fun m!1668343 () Bool)

(assert (=> b!1446502 m!1668343))

(declare-fun m!1668345 () Bool)

(assert (=> b!1446502 m!1668345))

(assert (=> d!419025 d!419809))

(assert (=> d!419025 d!419771))

(declare-fun d!419811 () Bool)

(assert (=> d!419811 (= (content!2219 Nil!14992) ((as const (Array Token!4932 Bool)) false))))

(assert (=> d!419025 d!419811))

(declare-fun bs!342248 () Bool)

(declare-fun d!419813 () Bool)

(assert (= bs!342248 (and d!419813 d!419391)))

(declare-fun lambda!62963 () Int)

(assert (=> bs!342248 (= (= (rules!11498 other!32) (rules!11498 thiss!10022)) (= lambda!62963 lambda!62956))))

(declare-fun b!1446506 () Bool)

(declare-fun e!922759 () Bool)

(assert (=> b!1446506 (= e!922759 true)))

(declare-fun b!1446505 () Bool)

(declare-fun e!922758 () Bool)

(assert (=> b!1446505 (= e!922758 e!922759)))

(declare-fun b!1446504 () Bool)

(declare-fun e!922757 () Bool)

(assert (=> b!1446504 (= e!922757 e!922758)))

(assert (=> d!419813 e!922757))

(assert (= b!1446505 b!1446506))

(assert (= b!1446504 b!1446505))

(assert (= (and d!419813 ((_ is Cons!14993) (rules!11498 other!32))) b!1446504))

(assert (=> b!1446506 (< (dynLambda!6842 order!9023 (toValue!3942 (transformation!2635 (h!20394 (rules!11498 other!32))))) (dynLambda!6843 order!9025 lambda!62963))))

(assert (=> b!1446506 (< (dynLambda!6844 order!9027 (toChars!3801 (transformation!2635 (h!20394 (rules!11498 other!32))))) (dynLambda!6843 order!9025 lambda!62963))))

(assert (=> d!419813 true))

(declare-fun e!922756 () Bool)

(assert (=> d!419813 e!922756))

(declare-fun res!654916 () Bool)

(assert (=> d!419813 (=> (not res!654916) (not e!922756))))

(declare-fun lt!498524 () Bool)

(assert (=> d!419813 (= res!654916 (= lt!498524 (forall!3687 (list!5973 (tokens!2014 other!32)) lambda!62963)))))

(assert (=> d!419813 (= lt!498524 (forall!3688 (tokens!2014 other!32) lambda!62963))))

(assert (=> d!419813 (not (isEmpty!9342 (rules!11498 other!32)))))

(assert (=> d!419813 (= (rulesProduceEachTokenIndividually!850 Lexer!2292 (rules!11498 other!32) (tokens!2014 other!32)) lt!498524)))

(declare-fun b!1446503 () Bool)

(assert (=> b!1446503 (= e!922756 (= lt!498524 (rulesProduceEachTokenIndividuallyList!729 Lexer!2292 (rules!11498 other!32) (list!5973 (tokens!2014 other!32)))))))

(assert (= (and d!419813 res!654916) b!1446503))

(assert (=> d!419813 m!1664099))

(assert (=> d!419813 m!1664099))

(declare-fun m!1668347 () Bool)

(assert (=> d!419813 m!1668347))

(declare-fun m!1668349 () Bool)

(assert (=> d!419813 m!1668349))

(assert (=> d!419813 m!1664597))

(assert (=> b!1446503 m!1664099))

(assert (=> b!1446503 m!1664099))

(declare-fun m!1668351 () Bool)

(assert (=> b!1446503 m!1668351))

(assert (=> b!1445231 d!419813))

(assert (=> b!1445239 d!419743))

(assert (=> d!419035 d!419767))

(declare-fun b!1446507 () Bool)

(declare-fun e!922762 () Bool)

(declare-fun lt!498525 () tuple2!14160)

(assert (=> b!1446507 (= e!922762 (= (_2!7966 lt!498525) (print!1075 Lexer!2292 (seqFromList!1704 lt!496943))))))

(declare-fun b!1446508 () Bool)

(declare-fun res!654917 () Bool)

(declare-fun e!922761 () Bool)

(assert (=> b!1446508 (=> (not res!654917) (not e!922761))))

(assert (=> b!1446508 (= res!654917 (= (list!5973 (_1!7966 lt!498525)) (_1!7969 (lexList!706 Lexer!2292 (rules!11498 other!32) (list!5972 (print!1075 Lexer!2292 (seqFromList!1704 lt!496943)))))))))

(declare-fun b!1446509 () Bool)

(declare-fun e!922760 () Bool)

(assert (=> b!1446509 (= e!922760 (not (isEmpty!9334 (_1!7966 lt!498525))))))

(declare-fun d!419815 () Bool)

(assert (=> d!419815 e!922761))

(declare-fun res!654918 () Bool)

(assert (=> d!419815 (=> (not res!654918) (not e!922761))))

(assert (=> d!419815 (= res!654918 e!922762)))

(declare-fun c!238374 () Bool)

(assert (=> d!419815 (= c!238374 (> (size!12291 (_1!7966 lt!498525)) 0))))

(assert (=> d!419815 (= lt!498525 (lexTailRecV2!461 Lexer!2292 (rules!11498 other!32) (print!1075 Lexer!2292 (seqFromList!1704 lt!496943)) (BalanceConc!10133 Empty!5096) (print!1075 Lexer!2292 (seqFromList!1704 lt!496943)) (BalanceConc!10135 Empty!5097)))))

(assert (=> d!419815 (= (lex!1050 Lexer!2292 (rules!11498 other!32) (print!1075 Lexer!2292 (seqFromList!1704 lt!496943))) lt!498525)))

(declare-fun b!1446510 () Bool)

(assert (=> b!1446510 (= e!922762 e!922760)))

(declare-fun res!654919 () Bool)

(assert (=> b!1446510 (= res!654919 (< (size!12293 (_2!7966 lt!498525)) (size!12293 (print!1075 Lexer!2292 (seqFromList!1704 lt!496943)))))))

(assert (=> b!1446510 (=> (not res!654919) (not e!922760))))

(declare-fun b!1446511 () Bool)

(assert (=> b!1446511 (= e!922761 (= (list!5972 (_2!7966 lt!498525)) (_2!7969 (lexList!706 Lexer!2292 (rules!11498 other!32) (list!5972 (print!1075 Lexer!2292 (seqFromList!1704 lt!496943)))))))))

(assert (= (and d!419815 c!238374) b!1446510))

(assert (= (and d!419815 (not c!238374)) b!1446507))

(assert (= (and b!1446510 res!654919) b!1446509))

(assert (= (and d!419815 res!654918) b!1446508))

(assert (= (and b!1446508 res!654917) b!1446511))

(declare-fun m!1668353 () Bool)

(assert (=> b!1446508 m!1668353))

(assert (=> b!1446508 m!1664599))

(declare-fun m!1668355 () Bool)

(assert (=> b!1446508 m!1668355))

(assert (=> b!1446508 m!1668355))

(declare-fun m!1668357 () Bool)

(assert (=> b!1446508 m!1668357))

(declare-fun m!1668359 () Bool)

(assert (=> b!1446510 m!1668359))

(assert (=> b!1446510 m!1664599))

(declare-fun m!1668361 () Bool)

(assert (=> b!1446510 m!1668361))

(declare-fun m!1668363 () Bool)

(assert (=> b!1446511 m!1668363))

(assert (=> b!1446511 m!1664599))

(assert (=> b!1446511 m!1668355))

(assert (=> b!1446511 m!1668355))

(assert (=> b!1446511 m!1668357))

(declare-fun m!1668365 () Bool)

(assert (=> b!1446509 m!1668365))

(declare-fun m!1668367 () Bool)

(assert (=> d!419815 m!1668367))

(assert (=> d!419815 m!1664599))

(assert (=> d!419815 m!1664599))

(declare-fun m!1668369 () Bool)

(assert (=> d!419815 m!1668369))

(assert (=> d!419035 d!419815))

(assert (=> d!419035 d!419275))

(declare-fun d!419817 () Bool)

(assert (=> d!419817 (= (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) (print!1075 Lexer!2292 (seqFromList!1704 lt!496943))))) (list!5977 (c!238014 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) (print!1075 Lexer!2292 (seqFromList!1704 lt!496943)))))))))

(declare-fun bs!342249 () Bool)

(assert (= bs!342249 d!419817))

(declare-fun m!1668371 () Bool)

(assert (=> bs!342249 m!1668371))

(assert (=> d!419035 d!419817))

(assert (=> d!419035 d!419319))

(declare-fun b!1446512 () Bool)

(declare-fun res!654923 () Bool)

(declare-fun e!922763 () Bool)

(assert (=> b!1446512 (=> (not res!654923) (not e!922763))))

(assert (=> b!1446512 (= res!654923 (isBalanced!1518 (right!13095 (c!238014 (tokens!2014 thiss!10022)))))))

(declare-fun b!1446513 () Bool)

(declare-fun res!654920 () Bool)

(assert (=> b!1446513 (=> (not res!654920) (not e!922763))))

(assert (=> b!1446513 (= res!654920 (isBalanced!1518 (left!12765 (c!238014 (tokens!2014 thiss!10022)))))))

(declare-fun b!1446514 () Bool)

(declare-fun res!654922 () Bool)

(assert (=> b!1446514 (=> (not res!654922) (not e!922763))))

(assert (=> b!1446514 (= res!654922 (<= (- (height!755 (left!12765 (c!238014 (tokens!2014 thiss!10022)))) (height!755 (right!13095 (c!238014 (tokens!2014 thiss!10022))))) 1))))

(declare-fun b!1446515 () Bool)

(declare-fun res!654925 () Bool)

(assert (=> b!1446515 (=> (not res!654925) (not e!922763))))

(assert (=> b!1446515 (= res!654925 (not (isEmpty!9345 (left!12765 (c!238014 (tokens!2014 thiss!10022))))))))

(declare-fun b!1446516 () Bool)

(assert (=> b!1446516 (= e!922763 (not (isEmpty!9345 (right!13095 (c!238014 (tokens!2014 thiss!10022))))))))

(declare-fun d!419819 () Bool)

(declare-fun res!654921 () Bool)

(declare-fun e!922764 () Bool)

(assert (=> d!419819 (=> res!654921 e!922764)))

(assert (=> d!419819 (= res!654921 (not ((_ is Node!5097) (c!238014 (tokens!2014 thiss!10022)))))))

(assert (=> d!419819 (= (isBalanced!1518 (c!238014 (tokens!2014 thiss!10022))) e!922764)))

(declare-fun b!1446517 () Bool)

(assert (=> b!1446517 (= e!922764 e!922763)))

(declare-fun res!654924 () Bool)

(assert (=> b!1446517 (=> (not res!654924) (not e!922763))))

(assert (=> b!1446517 (= res!654924 (<= (- 1) (- (height!755 (left!12765 (c!238014 (tokens!2014 thiss!10022)))) (height!755 (right!13095 (c!238014 (tokens!2014 thiss!10022)))))))))

(assert (= (and d!419819 (not res!654921)) b!1446517))

(assert (= (and b!1446517 res!654924) b!1446514))

(assert (= (and b!1446514 res!654922) b!1446513))

(assert (= (and b!1446513 res!654920) b!1446512))

(assert (= (and b!1446512 res!654923) b!1446515))

(assert (= (and b!1446515 res!654925) b!1446516))

(declare-fun m!1668373 () Bool)

(assert (=> b!1446514 m!1668373))

(declare-fun m!1668375 () Bool)

(assert (=> b!1446514 m!1668375))

(declare-fun m!1668377 () Bool)

(assert (=> b!1446513 m!1668377))

(declare-fun m!1668379 () Bool)

(assert (=> b!1446516 m!1668379))

(declare-fun m!1668381 () Bool)

(assert (=> b!1446512 m!1668381))

(declare-fun m!1668383 () Bool)

(assert (=> b!1446515 m!1668383))

(assert (=> b!1446517 m!1668373))

(assert (=> b!1446517 m!1668375))

(assert (=> d!419119 d!419819))

(declare-fun d!419821 () Bool)

(declare-fun res!654932 () Bool)

(declare-fun e!922767 () Bool)

(assert (=> d!419821 (=> (not res!654932) (not e!922767))))

(assert (=> d!419821 (= res!654932 (= (csize!10424 (c!238014 (tokens!2014 other!32))) (+ (size!12295 (left!12765 (c!238014 (tokens!2014 other!32)))) (size!12295 (right!13095 (c!238014 (tokens!2014 other!32)))))))))

(assert (=> d!419821 (= (inv!19959 (c!238014 (tokens!2014 other!32))) e!922767)))

(declare-fun b!1446524 () Bool)

(declare-fun res!654933 () Bool)

(assert (=> b!1446524 (=> (not res!654933) (not e!922767))))

(assert (=> b!1446524 (= res!654933 (and (not (= (left!12765 (c!238014 (tokens!2014 other!32))) Empty!5097)) (not (= (right!13095 (c!238014 (tokens!2014 other!32))) Empty!5097))))))

(declare-fun b!1446525 () Bool)

(declare-fun res!654934 () Bool)

(assert (=> b!1446525 (=> (not res!654934) (not e!922767))))

(assert (=> b!1446525 (= res!654934 (= (cheight!5308 (c!238014 (tokens!2014 other!32))) (+ (max!0 (height!755 (left!12765 (c!238014 (tokens!2014 other!32)))) (height!755 (right!13095 (c!238014 (tokens!2014 other!32))))) 1)))))

(declare-fun b!1446526 () Bool)

(assert (=> b!1446526 (= e!922767 (<= 0 (cheight!5308 (c!238014 (tokens!2014 other!32)))))))

(assert (= (and d!419821 res!654932) b!1446524))

(assert (= (and b!1446524 res!654933) b!1446525))

(assert (= (and b!1446525 res!654934) b!1446526))

(declare-fun m!1668385 () Bool)

(assert (=> d!419821 m!1668385))

(declare-fun m!1668387 () Bool)

(assert (=> d!419821 m!1668387))

(assert (=> b!1446525 m!1668127))

(assert (=> b!1446525 m!1668131))

(assert (=> b!1446525 m!1668127))

(assert (=> b!1446525 m!1668131))

(declare-fun m!1668389 () Bool)

(assert (=> b!1446525 m!1668389))

(assert (=> b!1445065 d!419821))

(declare-fun d!419823 () Bool)

(assert (=> d!419823 (= (printList!713 Lexer!2292 (++!4034 lt!496941 Nil!14992)) (++!4033 (printList!713 Lexer!2292 lt!496941) (printList!713 Lexer!2292 Nil!14992)))))

(assert (=> d!419823 true))

(declare-fun _$40!323 () Unit!23591)

(assert (=> d!419823 (= (choose!8909 Lexer!2292 lt!496941 Nil!14992) _$40!323)))

(declare-fun bs!342250 () Bool)

(assert (= bs!342250 d!419823))

(assert (=> bs!342250 m!1664091))

(assert (=> bs!342250 m!1664817))

(assert (=> bs!342250 m!1664087))

(assert (=> bs!342250 m!1664073))

(assert (=> bs!342250 m!1664087))

(assert (=> bs!342250 m!1664073))

(assert (=> bs!342250 m!1664821))

(assert (=> bs!342250 m!1664091))

(assert (=> d!419101 d!419823))

(assert (=> d!419101 d!419025))

(assert (=> d!419101 d!419029))

(assert (=> d!419101 d!419081))

(declare-fun d!419825 () Bool)

(declare-fun c!238375 () Bool)

(assert (=> d!419825 (= c!238375 ((_ is Cons!14992) (++!4034 lt!496941 Nil!14992)))))

(declare-fun e!922768 () List!15056)

(assert (=> d!419825 (= (printList!713 Lexer!2292 (++!4034 lt!496941 Nil!14992)) e!922768)))

(declare-fun b!1446527 () Bool)

(assert (=> b!1446527 (= e!922768 (++!4033 (list!5972 (charsOf!1521 (h!20393 (++!4034 lt!496941 Nil!14992)))) (printList!713 Lexer!2292 (t!130177 (++!4034 lt!496941 Nil!14992)))))))

(declare-fun b!1446528 () Bool)

(assert (=> b!1446528 (= e!922768 Nil!14990)))

(assert (= (and d!419825 c!238375) b!1446527))

(assert (= (and d!419825 (not c!238375)) b!1446528))

(declare-fun m!1668391 () Bool)

(assert (=> b!1446527 m!1668391))

(assert (=> b!1446527 m!1668391))

(declare-fun m!1668393 () Bool)

(assert (=> b!1446527 m!1668393))

(declare-fun m!1668395 () Bool)

(assert (=> b!1446527 m!1668395))

(assert (=> b!1446527 m!1668393))

(assert (=> b!1446527 m!1668395))

(declare-fun m!1668397 () Bool)

(assert (=> b!1446527 m!1668397))

(assert (=> d!419101 d!419825))

(declare-fun b!1446530 () Bool)

(declare-fun e!922770 () List!15056)

(assert (=> b!1446530 (= e!922770 (Cons!14990 (h!20391 (printList!713 Lexer!2292 lt!496941)) (++!4033 (t!130175 (printList!713 Lexer!2292 lt!496941)) (printList!713 Lexer!2292 Nil!14992))))))

(declare-fun d!419827 () Bool)

(declare-fun e!922769 () Bool)

(assert (=> d!419827 e!922769))

(declare-fun res!654936 () Bool)

(assert (=> d!419827 (=> (not res!654936) (not e!922769))))

(declare-fun lt!498526 () List!15056)

(assert (=> d!419827 (= res!654936 (= (content!2218 lt!498526) ((_ map or) (content!2218 (printList!713 Lexer!2292 lt!496941)) (content!2218 (printList!713 Lexer!2292 Nil!14992)))))))

(assert (=> d!419827 (= lt!498526 e!922770)))

(declare-fun c!238376 () Bool)

(assert (=> d!419827 (= c!238376 ((_ is Nil!14990) (printList!713 Lexer!2292 lt!496941)))))

(assert (=> d!419827 (= (++!4033 (printList!713 Lexer!2292 lt!496941) (printList!713 Lexer!2292 Nil!14992)) lt!498526)))

(declare-fun b!1446529 () Bool)

(assert (=> b!1446529 (= e!922770 (printList!713 Lexer!2292 Nil!14992))))

(declare-fun b!1446531 () Bool)

(declare-fun res!654935 () Bool)

(assert (=> b!1446531 (=> (not res!654935) (not e!922769))))

(assert (=> b!1446531 (= res!654935 (= (size!12289 lt!498526) (+ (size!12289 (printList!713 Lexer!2292 lt!496941)) (size!12289 (printList!713 Lexer!2292 Nil!14992)))))))

(declare-fun b!1446532 () Bool)

(assert (=> b!1446532 (= e!922769 (or (not (= (printList!713 Lexer!2292 Nil!14992) Nil!14990)) (= lt!498526 (printList!713 Lexer!2292 lt!496941))))))

(assert (= (and d!419827 c!238376) b!1446529))

(assert (= (and d!419827 (not c!238376)) b!1446530))

(assert (= (and d!419827 res!654936) b!1446531))

(assert (= (and b!1446531 res!654935) b!1446532))

(assert (=> b!1446530 m!1664073))

(declare-fun m!1668399 () Bool)

(assert (=> b!1446530 m!1668399))

(declare-fun m!1668401 () Bool)

(assert (=> d!419827 m!1668401))

(assert (=> d!419827 m!1664087))

(declare-fun m!1668403 () Bool)

(assert (=> d!419827 m!1668403))

(assert (=> d!419827 m!1664073))

(declare-fun m!1668405 () Bool)

(assert (=> d!419827 m!1668405))

(declare-fun m!1668407 () Bool)

(assert (=> b!1446531 m!1668407))

(assert (=> b!1446531 m!1664087))

(declare-fun m!1668409 () Bool)

(assert (=> b!1446531 m!1668409))

(assert (=> b!1446531 m!1664073))

(declare-fun m!1668411 () Bool)

(assert (=> b!1446531 m!1668411))

(assert (=> d!419101 d!419827))

(declare-fun d!419829 () Bool)

(assert (=> d!419829 (= (separableTokens!234 Lexer!2292 (tokens!2014 other!32) (rules!11498 other!32)) (tokensListTwoByTwoPredicateSeparable!122 Lexer!2292 (tokens!2014 other!32) 0 (rules!11498 other!32)))))

(declare-fun bs!342251 () Bool)

(assert (= bs!342251 d!419829))

(declare-fun m!1668413 () Bool)

(assert (=> bs!342251 m!1668413))

(assert (=> b!1445249 d!419829))

(declare-fun b!1446533 () Bool)

(declare-fun e!922773 () Bool)

(declare-fun lt!498527 () tuple2!14160)

(assert (=> b!1446533 (= e!922773 (= (_2!7966 lt!498527) (print!1075 Lexer!2292 (seqFromList!1704 lt!496941))))))

(declare-fun b!1446534 () Bool)

(declare-fun res!654937 () Bool)

(declare-fun e!922772 () Bool)

(assert (=> b!1446534 (=> (not res!654937) (not e!922772))))

(assert (=> b!1446534 (= res!654937 (= (list!5973 (_1!7966 lt!498527)) (_1!7969 (lexList!706 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (print!1075 Lexer!2292 (seqFromList!1704 lt!496941)))))))))

(declare-fun b!1446535 () Bool)

(declare-fun e!922771 () Bool)

(assert (=> b!1446535 (= e!922771 (not (isEmpty!9334 (_1!7966 lt!498527))))))

(declare-fun d!419831 () Bool)

(assert (=> d!419831 e!922772))

(declare-fun res!654938 () Bool)

(assert (=> d!419831 (=> (not res!654938) (not e!922772))))

(assert (=> d!419831 (= res!654938 e!922773)))

(declare-fun c!238377 () Bool)

(assert (=> d!419831 (= c!238377 (> (size!12291 (_1!7966 lt!498527)) 0))))

(assert (=> d!419831 (= lt!498527 (lexTailRecV2!461 Lexer!2292 (rules!11498 thiss!10022) (print!1075 Lexer!2292 (seqFromList!1704 lt!496941)) (BalanceConc!10133 Empty!5096) (print!1075 Lexer!2292 (seqFromList!1704 lt!496941)) (BalanceConc!10135 Empty!5097)))))

(assert (=> d!419831 (= (lex!1050 Lexer!2292 (rules!11498 thiss!10022) (print!1075 Lexer!2292 (seqFromList!1704 lt!496941))) lt!498527)))

(declare-fun b!1446536 () Bool)

(assert (=> b!1446536 (= e!922773 e!922771)))

(declare-fun res!654939 () Bool)

(assert (=> b!1446536 (= res!654939 (< (size!12293 (_2!7966 lt!498527)) (size!12293 (print!1075 Lexer!2292 (seqFromList!1704 lt!496941)))))))

(assert (=> b!1446536 (=> (not res!654939) (not e!922771))))

(declare-fun b!1446537 () Bool)

(assert (=> b!1446537 (= e!922772 (= (list!5972 (_2!7966 lt!498527)) (_2!7969 (lexList!706 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (print!1075 Lexer!2292 (seqFromList!1704 lt!496941)))))))))

(assert (= (and d!419831 c!238377) b!1446536))

(assert (= (and d!419831 (not c!238377)) b!1446533))

(assert (= (and b!1446536 res!654939) b!1446535))

(assert (= (and d!419831 res!654938) b!1446534))

(assert (= (and b!1446534 res!654937) b!1446537))

(declare-fun m!1668415 () Bool)

(assert (=> b!1446534 m!1668415))

(assert (=> b!1446534 m!1664699))

(declare-fun m!1668417 () Bool)

(assert (=> b!1446534 m!1668417))

(assert (=> b!1446534 m!1668417))

(declare-fun m!1668419 () Bool)

(assert (=> b!1446534 m!1668419))

(declare-fun m!1668421 () Bool)

(assert (=> b!1446536 m!1668421))

(assert (=> b!1446536 m!1664699))

(declare-fun m!1668423 () Bool)

(assert (=> b!1446536 m!1668423))

(declare-fun m!1668425 () Bool)

(assert (=> b!1446537 m!1668425))

(assert (=> b!1446537 m!1664699))

(assert (=> b!1446537 m!1668417))

(assert (=> b!1446537 m!1668417))

(assert (=> b!1446537 m!1668419))

(declare-fun m!1668427 () Bool)

(assert (=> b!1446535 m!1668427))

(declare-fun m!1668429 () Bool)

(assert (=> d!419831 m!1668429))

(assert (=> d!419831 m!1664699))

(assert (=> d!419831 m!1664699))

(declare-fun m!1668431 () Bool)

(assert (=> d!419831 m!1668431))

(assert (=> d!419085 d!419831))

(assert (=> d!419085 d!419589))

(assert (=> d!419085 d!419597))

(declare-fun d!419833 () Bool)

(assert (=> d!419833 (= (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) (print!1075 Lexer!2292 (seqFromList!1704 lt!496941))))) (list!5977 (c!238014 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) (print!1075 Lexer!2292 (seqFromList!1704 lt!496941)))))))))

(declare-fun bs!342252 () Bool)

(assert (= bs!342252 d!419833))

(declare-fun m!1668433 () Bool)

(assert (=> bs!342252 m!1668433))

(assert (=> d!419085 d!419833))

(assert (=> d!419085 d!419383))

(declare-fun d!419835 () Bool)

(assert (=> d!419835 (= (isEmpty!9341 (list!5972 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 lt!496935) lt!496965)))) ((_ is Nil!14990) (list!5972 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 lt!496935) lt!496965)))))))

(assert (=> b!1445028 d!419835))

(declare-fun d!419837 () Bool)

(assert (=> d!419837 (= (list!5972 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 lt!496935) lt!496965))) (list!5976 (c!238012 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 lt!496935) lt!496965)))))))

(declare-fun bs!342253 () Bool)

(assert (= bs!342253 d!419837))

(declare-fun m!1668435 () Bool)

(assert (=> bs!342253 m!1668435))

(assert (=> b!1445028 d!419837))

(declare-fun b!1446538 () Bool)

(declare-fun e!922776 () Bool)

(declare-fun lt!498528 () tuple2!14160)

(assert (=> b!1446538 (= e!922776 (= (_2!7966 lt!498528) lt!496965))))

(declare-fun b!1446539 () Bool)

(declare-fun res!654940 () Bool)

(declare-fun e!922775 () Bool)

(assert (=> b!1446539 (=> (not res!654940) (not e!922775))))

(assert (=> b!1446539 (= res!654940 (= (list!5973 (_1!7966 lt!498528)) (_1!7969 (lexList!706 Lexer!2292 (rules!11498 lt!496935) (list!5972 lt!496965)))))))

(declare-fun b!1446540 () Bool)

(declare-fun e!922774 () Bool)

(assert (=> b!1446540 (= e!922774 (not (isEmpty!9334 (_1!7966 lt!498528))))))

(declare-fun d!419839 () Bool)

(assert (=> d!419839 e!922775))

(declare-fun res!654941 () Bool)

(assert (=> d!419839 (=> (not res!654941) (not e!922775))))

(assert (=> d!419839 (= res!654941 e!922776)))

(declare-fun c!238378 () Bool)

(assert (=> d!419839 (= c!238378 (> (size!12291 (_1!7966 lt!498528)) 0))))

(assert (=> d!419839 (= lt!498528 (lexTailRecV2!461 Lexer!2292 (rules!11498 lt!496935) lt!496965 (BalanceConc!10133 Empty!5096) lt!496965 (BalanceConc!10135 Empty!5097)))))

(assert (=> d!419839 (= (lex!1050 Lexer!2292 (rules!11498 lt!496935) lt!496965) lt!498528)))

(declare-fun b!1446541 () Bool)

(assert (=> b!1446541 (= e!922776 e!922774)))

(declare-fun res!654942 () Bool)

(assert (=> b!1446541 (= res!654942 (< (size!12293 (_2!7966 lt!498528)) (size!12293 lt!496965)))))

(assert (=> b!1446541 (=> (not res!654942) (not e!922774))))

(declare-fun b!1446542 () Bool)

(assert (=> b!1446542 (= e!922775 (= (list!5972 (_2!7966 lt!498528)) (_2!7969 (lexList!706 Lexer!2292 (rules!11498 lt!496935) (list!5972 lt!496965)))))))

(assert (= (and d!419839 c!238378) b!1446541))

(assert (= (and d!419839 (not c!238378)) b!1446538))

(assert (= (and b!1446541 res!654942) b!1446540))

(assert (= (and d!419839 res!654941) b!1446539))

(assert (= (and b!1446539 res!654940) b!1446542))

(declare-fun m!1668437 () Bool)

(assert (=> b!1446539 m!1668437))

(declare-fun m!1668439 () Bool)

(assert (=> b!1446539 m!1668439))

(assert (=> b!1446539 m!1668439))

(declare-fun m!1668441 () Bool)

(assert (=> b!1446539 m!1668441))

(declare-fun m!1668443 () Bool)

(assert (=> b!1446541 m!1668443))

(declare-fun m!1668445 () Bool)

(assert (=> b!1446541 m!1668445))

(declare-fun m!1668447 () Bool)

(assert (=> b!1446542 m!1668447))

(assert (=> b!1446542 m!1668439))

(assert (=> b!1446542 m!1668439))

(assert (=> b!1446542 m!1668441))

(declare-fun m!1668449 () Bool)

(assert (=> b!1446540 m!1668449))

(declare-fun m!1668451 () Bool)

(assert (=> d!419839 m!1668451))

(declare-fun m!1668453 () Bool)

(assert (=> d!419839 m!1668453))

(assert (=> b!1445028 d!419839))

(declare-fun d!419841 () Bool)

(declare-fun lt!498529 () Int)

(assert (=> d!419841 (>= lt!498529 0)))

(declare-fun e!922777 () Int)

(assert (=> d!419841 (= lt!498529 e!922777)))

(declare-fun c!238379 () Bool)

(assert (=> d!419841 (= c!238379 ((_ is Nil!14992) lt!496972))))

(assert (=> d!419841 (= (size!12290 lt!496972) lt!498529)))

(declare-fun b!1446543 () Bool)

(assert (=> b!1446543 (= e!922777 0)))

(declare-fun b!1446544 () Bool)

(assert (=> b!1446544 (= e!922777 (+ 1 (size!12290 (t!130177 lt!496972))))))

(assert (= (and d!419841 c!238379) b!1446543))

(assert (= (and d!419841 (not c!238379)) b!1446544))

(declare-fun m!1668455 () Bool)

(assert (=> b!1446544 m!1668455))

(assert (=> b!1445051 d!419841))

(assert (=> b!1445051 d!419449))

(declare-fun d!419843 () Bool)

(declare-fun lt!498530 () Int)

(assert (=> d!419843 (>= lt!498530 0)))

(declare-fun e!922778 () Int)

(assert (=> d!419843 (= lt!498530 e!922778)))

(declare-fun c!238380 () Bool)

(assert (=> d!419843 (= c!238380 ((_ is Nil!14992) lt!496943))))

(assert (=> d!419843 (= (size!12290 lt!496943) lt!498530)))

(declare-fun b!1446545 () Bool)

(assert (=> b!1446545 (= e!922778 0)))

(declare-fun b!1446546 () Bool)

(assert (=> b!1446546 (= e!922778 (+ 1 (size!12290 (t!130177 lt!496943))))))

(assert (= (and d!419843 c!238380) b!1446545))

(assert (= (and d!419843 (not c!238380)) b!1446546))

(declare-fun m!1668457 () Bool)

(assert (=> b!1446546 m!1668457))

(assert (=> b!1445051 d!419843))

(declare-fun d!419845 () Bool)

(assert (=> d!419845 (= (inv!19961 (xs!7838 (c!238014 (tokens!2014 other!32)))) (<= (size!12290 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 other!32))))) 2147483647))))

(declare-fun bs!342254 () Bool)

(assert (= bs!342254 d!419845))

(declare-fun m!1668459 () Bool)

(assert (=> bs!342254 m!1668459))

(assert (=> b!1445259 d!419845))

(declare-fun d!419847 () Bool)

(declare-fun lt!498533 () Int)

(assert (=> d!419847 (>= lt!498533 0)))

(declare-fun e!922781 () Int)

(assert (=> d!419847 (= lt!498533 e!922781)))

(declare-fun c!238383 () Bool)

(assert (=> d!419847 (= c!238383 ((_ is Nil!14990) lt!496969))))

(assert (=> d!419847 (= (size!12289 lt!496969) lt!498533)))

(declare-fun b!1446551 () Bool)

(assert (=> b!1446551 (= e!922781 0)))

(declare-fun b!1446552 () Bool)

(assert (=> b!1446552 (= e!922781 (+ 1 (size!12289 (t!130175 lt!496969))))))

(assert (= (and d!419847 c!238383) b!1446551))

(assert (= (and d!419847 (not c!238383)) b!1446552))

(declare-fun m!1668461 () Bool)

(assert (=> b!1446552 m!1668461))

(assert (=> b!1445039 d!419847))

(declare-fun d!419849 () Bool)

(declare-fun lt!498534 () Int)

(assert (=> d!419849 (>= lt!498534 0)))

(declare-fun e!922782 () Int)

(assert (=> d!419849 (= lt!498534 e!922782)))

(declare-fun c!238384 () Bool)

(assert (=> d!419849 (= c!238384 ((_ is Nil!14990) (list!5972 lt!496939)))))

(assert (=> d!419849 (= (size!12289 (list!5972 lt!496939)) lt!498534)))

(declare-fun b!1446553 () Bool)

(assert (=> b!1446553 (= e!922782 0)))

(declare-fun b!1446554 () Bool)

(assert (=> b!1446554 (= e!922782 (+ 1 (size!12289 (t!130175 (list!5972 lt!496939)))))))

(assert (= (and d!419849 c!238384) b!1446553))

(assert (= (and d!419849 (not c!238384)) b!1446554))

(assert (=> b!1446554 m!1665105))

(assert (=> b!1445039 d!419849))

(declare-fun d!419851 () Bool)

(declare-fun lt!498535 () Int)

(assert (=> d!419851 (>= lt!498535 0)))

(declare-fun e!922783 () Int)

(assert (=> d!419851 (= lt!498535 e!922783)))

(declare-fun c!238385 () Bool)

(assert (=> d!419851 (= c!238385 ((_ is Nil!14990) (list!5972 lt!496936)))))

(assert (=> d!419851 (= (size!12289 (list!5972 lt!496936)) lt!498535)))

(declare-fun b!1446555 () Bool)

(assert (=> b!1446555 (= e!922783 0)))

(declare-fun b!1446556 () Bool)

(assert (=> b!1446556 (= e!922783 (+ 1 (size!12289 (t!130175 (list!5972 lt!496936)))))))

(assert (= (and d!419851 c!238385) b!1446555))

(assert (= (and d!419851 (not c!238385)) b!1446556))

(declare-fun m!1668463 () Bool)

(assert (=> b!1446556 m!1668463))

(assert (=> b!1445039 d!419851))

(declare-fun d!419853 () Bool)

(declare-fun lt!498538 () Bool)

(assert (=> d!419853 (= lt!498538 (isEmpty!9341 (list!5972 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) (print!1075 Lexer!2292 (seqFromList!1704 lt!496943)))))))))

(declare-fun isEmpty!9348 (Conc!5096) Bool)

(assert (=> d!419853 (= lt!498538 (isEmpty!9348 (c!238012 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) (print!1075 Lexer!2292 (seqFromList!1704 lt!496943)))))))))

(assert (=> d!419853 (= (isEmpty!9343 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) (print!1075 Lexer!2292 (seqFromList!1704 lt!496943))))) lt!498538)))

(declare-fun bs!342255 () Bool)

(assert (= bs!342255 d!419853))

(declare-fun m!1668465 () Bool)

(assert (=> bs!342255 m!1668465))

(assert (=> bs!342255 m!1668465))

(declare-fun m!1668467 () Bool)

(assert (=> bs!342255 m!1668467))

(declare-fun m!1668469 () Bool)

(assert (=> bs!342255 m!1668469))

(assert (=> b!1445151 d!419853))

(assert (=> b!1445151 d!419815))

(assert (=> b!1445151 d!419275))

(assert (=> b!1445151 d!419319))

(assert (=> b!1445228 d!419391))

(declare-fun d!419855 () Bool)

(declare-fun lt!498539 () Int)

(assert (=> d!419855 (>= lt!498539 0)))

(declare-fun e!922784 () Int)

(assert (=> d!419855 (= lt!498539 e!922784)))

(declare-fun c!238386 () Bool)

(assert (=> d!419855 (= c!238386 ((_ is Nil!14990) lt!497199))))

(assert (=> d!419855 (= (size!12289 lt!497199) lt!498539)))

(declare-fun b!1446557 () Bool)

(assert (=> b!1446557 (= e!922784 0)))

(declare-fun b!1446558 () Bool)

(assert (=> b!1446558 (= e!922784 (+ 1 (size!12289 (t!130175 lt!497199))))))

(assert (= (and d!419855 c!238386) b!1446557))

(assert (= (and d!419855 (not c!238386)) b!1446558))

(declare-fun m!1668471 () Bool)

(assert (=> b!1446558 m!1668471))

(assert (=> b!1445156 d!419855))

(declare-fun d!419857 () Bool)

(declare-fun lt!498540 () Int)

(assert (=> d!419857 (>= lt!498540 0)))

(declare-fun e!922785 () Int)

(assert (=> d!419857 (= lt!498540 e!922785)))

(declare-fun c!238387 () Bool)

(assert (=> d!419857 (= c!238387 ((_ is Nil!14990) lt!496946))))

(assert (=> d!419857 (= (size!12289 lt!496946) lt!498540)))

(declare-fun b!1446559 () Bool)

(assert (=> b!1446559 (= e!922785 0)))

(declare-fun b!1446560 () Bool)

(assert (=> b!1446560 (= e!922785 (+ 1 (size!12289 (t!130175 lt!496946))))))

(assert (= (and d!419857 c!238387) b!1446559))

(assert (= (and d!419857 (not c!238387)) b!1446560))

(assert (=> b!1446560 m!1666185))

(assert (=> b!1445156 d!419857))

(declare-fun d!419859 () Bool)

(declare-fun lt!498541 () Int)

(assert (=> d!419859 (>= lt!498541 0)))

(declare-fun e!922786 () Int)

(assert (=> d!419859 (= lt!498541 e!922786)))

(declare-fun c!238388 () Bool)

(assert (=> d!419859 (= c!238388 ((_ is Nil!14990) lt!496942))))

(assert (=> d!419859 (= (size!12289 lt!496942) lt!498541)))

(declare-fun b!1446561 () Bool)

(assert (=> b!1446561 (= e!922786 0)))

(declare-fun b!1446562 () Bool)

(assert (=> b!1446562 (= e!922786 (+ 1 (size!12289 (t!130175 lt!496942))))))

(assert (= (and d!419859 c!238388) b!1446561))

(assert (= (and d!419859 (not c!238388)) b!1446562))

(declare-fun m!1668473 () Bool)

(assert (=> b!1446562 m!1668473))

(assert (=> b!1445156 d!419859))

(assert (=> d!419105 d!419103))

(assert (=> d!419105 d!419033))

(declare-fun d!419861 () Bool)

(declare-fun e!922788 () Bool)

(assert (=> d!419861 e!922788))

(declare-fun res!654943 () Bool)

(assert (=> d!419861 (=> (not res!654943) (not e!922788))))

(assert (=> d!419861 (= res!654943 (= (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) (print!1075 Lexer!2292 (seqFromList!1704 (list!5973 (tokens!2014 thiss!10022))))))) (list!5973 (tokens!2014 thiss!10022))))))

(declare-fun lt!498545 () Unit!23591)

(declare-fun e!922787 () Unit!23591)

(assert (=> d!419861 (= lt!498545 e!922787)))

(declare-fun c!238389 () Bool)

(assert (=> d!419861 (= c!238389 (or ((_ is Nil!14992) (list!5973 (tokens!2014 thiss!10022))) ((_ is Nil!14992) (t!130177 (list!5973 (tokens!2014 thiss!10022))))))))

(assert (=> d!419861 (not (isEmpty!9342 (rules!11498 thiss!10022)))))

(assert (=> d!419861 (= (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 thiss!10022) (list!5973 (tokens!2014 thiss!10022))) lt!498545)))

(declare-fun b!1446563 () Bool)

(declare-fun Unit!23783 () Unit!23591)

(assert (=> b!1446563 (= e!922787 Unit!23783)))

(declare-fun b!1446564 () Bool)

(declare-fun Unit!23784 () Unit!23591)

(assert (=> b!1446564 (= e!922787 Unit!23784)))

(declare-fun lt!498552 () BalanceConc!10132)

(assert (=> b!1446564 (= lt!498552 (print!1075 Lexer!2292 (seqFromList!1704 (list!5973 (tokens!2014 thiss!10022)))))))

(declare-fun lt!498565 () BalanceConc!10132)

(assert (=> b!1446564 (= lt!498565 (print!1075 Lexer!2292 (seqFromList!1704 (t!130177 (list!5973 (tokens!2014 thiss!10022))))))))

(declare-fun lt!498548 () tuple2!14160)

(assert (=> b!1446564 (= lt!498548 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) lt!498565))))

(declare-fun lt!498558 () List!15056)

(assert (=> b!1446564 (= lt!498558 (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 thiss!10022))))))))

(declare-fun lt!498557 () List!15056)

(assert (=> b!1446564 (= lt!498557 (list!5972 lt!498565))))

(declare-fun lt!498561 () Unit!23591)

(assert (=> b!1446564 (= lt!498561 (lemmaConcatTwoListThenFirstIsPrefix!762 lt!498558 lt!498557))))

(assert (=> b!1446564 (isPrefix!1197 lt!498558 (++!4033 lt!498558 lt!498557))))

(declare-fun lt!498554 () Unit!23591)

(assert (=> b!1446564 (= lt!498554 lt!498561)))

(declare-fun lt!498553 () Unit!23591)

(assert (=> b!1446564 (= lt!498553 (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 thiss!10022) (t!130177 (list!5973 (tokens!2014 thiss!10022)))))))

(declare-fun lt!498564 () Unit!23591)

(assert (=> b!1446564 (= lt!498564 (seqFromListBHdTlConstructive!91 (h!20393 (t!130177 (list!5973 (tokens!2014 thiss!10022)))) (t!130177 (t!130177 (list!5973 (tokens!2014 thiss!10022)))) (_1!7966 lt!498548)))))

(assert (=> b!1446564 (= (list!5973 (_1!7966 lt!498548)) (list!5973 (prepend!415 (seqFromList!1704 (t!130177 (t!130177 (list!5973 (tokens!2014 thiss!10022))))) (h!20393 (t!130177 (list!5973 (tokens!2014 thiss!10022)))))))))

(declare-fun lt!498555 () Unit!23591)

(assert (=> b!1446564 (= lt!498555 lt!498564)))

(declare-fun lt!498566 () Option!2861)

(assert (=> b!1446564 (= lt!498566 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 lt!498552)))))

(assert (=> b!1446564 (= (print!1075 Lexer!2292 (singletonSeq!1238 (h!20393 (list!5973 (tokens!2014 thiss!10022))))) (printTailRec!685 Lexer!2292 (singletonSeq!1238 (h!20393 (list!5973 (tokens!2014 thiss!10022)))) 0 (BalanceConc!10133 Empty!5096)))))

(declare-fun lt!498567 () Unit!23591)

(declare-fun Unit!23785 () Unit!23591)

(assert (=> b!1446564 (= lt!498567 Unit!23785)))

(declare-fun lt!498549 () Unit!23591)

(assert (=> b!1446564 (= lt!498549 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!235 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 thiss!10022))))) (list!5972 lt!498565)))))

(assert (=> b!1446564 (= (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 thiss!10022))))) (originalCharacters!3497 (h!20393 (list!5973 (tokens!2014 thiss!10022)))))))

(declare-fun lt!498542 () Unit!23591)

(declare-fun Unit!23786 () Unit!23591)

(assert (=> b!1446564 (= lt!498542 Unit!23786)))

(assert (=> b!1446564 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 (list!5973 (tokens!2014 thiss!10022))))) 0))) (Cons!14990 (head!2929 (originalCharacters!3497 (h!20393 (t!130177 (list!5973 (tokens!2014 thiss!10022)))))) Nil!14990))))

(declare-fun lt!498546 () Unit!23591)

(declare-fun Unit!23787 () Unit!23591)

(assert (=> b!1446564 (= lt!498546 Unit!23787)))

(assert (=> b!1446564 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 (list!5973 (tokens!2014 thiss!10022))))) 0))) (Cons!14990 (head!2929 (list!5972 lt!498565)) Nil!14990))))

(declare-fun lt!498544 () Unit!23591)

(declare-fun Unit!23788 () Unit!23591)

(assert (=> b!1446564 (= lt!498544 Unit!23788)))

(assert (=> b!1446564 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 (list!5973 (tokens!2014 thiss!10022))))) 0))) (Cons!14990 (head!2930 lt!498565) Nil!14990))))

(declare-fun lt!498562 () Unit!23591)

(declare-fun Unit!23789 () Unit!23591)

(assert (=> b!1446564 (= lt!498562 Unit!23789)))

(assert (=> b!1446564 (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (originalCharacters!3497 (h!20393 (list!5973 (tokens!2014 thiss!10022))))))))

(declare-fun lt!498543 () Unit!23591)

(declare-fun Unit!23790 () Unit!23591)

(assert (=> b!1446564 (= lt!498543 Unit!23790)))

(assert (=> b!1446564 (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 thiss!10022)))))))))

(declare-fun lt!498563 () Unit!23591)

(declare-fun Unit!23791 () Unit!23591)

(assert (=> b!1446564 (= lt!498563 Unit!23791)))

(declare-fun lt!498560 () Unit!23591)

(declare-fun Unit!23792 () Unit!23591)

(assert (=> b!1446564 (= lt!498560 Unit!23792)))

(assert (=> b!1446564 (= (_1!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 thiss!10022)))))))) (h!20393 (list!5973 (tokens!2014 thiss!10022))))))

(declare-fun lt!498559 () Unit!23591)

(declare-fun Unit!23793 () Unit!23591)

(assert (=> b!1446564 (= lt!498559 Unit!23793)))

(assert (=> b!1446564 (isEmpty!9341 (_2!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 thiss!10022) (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 thiss!10022)))))))))))

(declare-fun lt!498547 () Unit!23591)

(declare-fun Unit!23794 () Unit!23591)

(assert (=> b!1446564 (= lt!498547 Unit!23794)))

(assert (=> b!1446564 (matchR!1823 (regex!2635 (rule!4406 (h!20393 (list!5973 (tokens!2014 thiss!10022))))) (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 thiss!10022))))))))

(declare-fun lt!498556 () Unit!23591)

(declare-fun Unit!23795 () Unit!23591)

(assert (=> b!1446564 (= lt!498556 Unit!23795)))

(assert (=> b!1446564 (= (rule!4406 (h!20393 (list!5973 (tokens!2014 thiss!10022)))) (rule!4406 (h!20393 (list!5973 (tokens!2014 thiss!10022)))))))

(declare-fun lt!498551 () Unit!23591)

(declare-fun Unit!23796 () Unit!23591)

(assert (=> b!1446564 (= lt!498551 Unit!23796)))

(declare-fun lt!498550 () Unit!23591)

(assert (=> b!1446564 (= lt!498550 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!33 Lexer!2292 (rules!11498 thiss!10022) (h!20393 (list!5973 (tokens!2014 thiss!10022))) (rule!4406 (h!20393 (list!5973 (tokens!2014 thiss!10022)))) (list!5972 lt!498565)))))

(declare-fun b!1446565 () Bool)

(assert (=> b!1446565 (= e!922788 (isEmpty!9343 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) (print!1075 Lexer!2292 (seqFromList!1704 (list!5973 (tokens!2014 thiss!10022))))))))))

(assert (= (and d!419861 c!238389) b!1446563))

(assert (= (and d!419861 (not c!238389)) b!1446564))

(assert (= (and d!419861 res!654943) b!1446565))

(assert (=> d!419861 m!1664697))

(declare-fun m!1668475 () Bool)

(assert (=> d!419861 m!1668475))

(declare-fun m!1668477 () Bool)

(assert (=> d!419861 m!1668477))

(assert (=> d!419861 m!1664083))

(declare-fun m!1668479 () Bool)

(assert (=> d!419861 m!1668479))

(declare-fun m!1668481 () Bool)

(assert (=> d!419861 m!1668481))

(assert (=> d!419861 m!1668479))

(assert (=> d!419861 m!1668475))

(declare-fun m!1668483 () Bool)

(assert (=> b!1446564 m!1668483))

(declare-fun m!1668485 () Bool)

(assert (=> b!1446564 m!1668485))

(declare-fun m!1668487 () Bool)

(assert (=> b!1446564 m!1668487))

(declare-fun m!1668489 () Bool)

(assert (=> b!1446564 m!1668489))

(declare-fun m!1668491 () Bool)

(assert (=> b!1446564 m!1668491))

(declare-fun m!1668493 () Bool)

(assert (=> b!1446564 m!1668493))

(declare-fun m!1668495 () Bool)

(assert (=> b!1446564 m!1668495))

(declare-fun m!1668497 () Bool)

(assert (=> b!1446564 m!1668497))

(declare-fun m!1668499 () Bool)

(assert (=> b!1446564 m!1668499))

(declare-fun m!1668501 () Bool)

(assert (=> b!1446564 m!1668501))

(declare-fun m!1668503 () Bool)

(assert (=> b!1446564 m!1668503))

(declare-fun m!1668505 () Bool)

(assert (=> b!1446564 m!1668505))

(declare-fun m!1668507 () Bool)

(assert (=> b!1446564 m!1668507))

(declare-fun m!1668509 () Bool)

(assert (=> b!1446564 m!1668509))

(declare-fun m!1668511 () Bool)

(assert (=> b!1446564 m!1668511))

(assert (=> b!1446564 m!1668199))

(declare-fun m!1668513 () Bool)

(assert (=> b!1446564 m!1668513))

(assert (=> b!1446564 m!1668491))

(declare-fun m!1668515 () Bool)

(assert (=> b!1446564 m!1668515))

(declare-fun m!1668517 () Bool)

(assert (=> b!1446564 m!1668517))

(declare-fun m!1668519 () Bool)

(assert (=> b!1446564 m!1668519))

(assert (=> b!1446564 m!1668483))

(assert (=> b!1446564 m!1668495))

(declare-fun m!1668521 () Bool)

(assert (=> b!1446564 m!1668521))

(declare-fun m!1668523 () Bool)

(assert (=> b!1446564 m!1668523))

(declare-fun m!1668525 () Bool)

(assert (=> b!1446564 m!1668525))

(assert (=> b!1446564 m!1668509))

(assert (=> b!1446564 m!1668483))

(declare-fun m!1668527 () Bool)

(assert (=> b!1446564 m!1668527))

(declare-fun m!1668529 () Bool)

(assert (=> b!1446564 m!1668529))

(declare-fun m!1668531 () Bool)

(assert (=> b!1446564 m!1668531))

(assert (=> b!1446564 m!1668493))

(declare-fun m!1668533 () Bool)

(assert (=> b!1446564 m!1668533))

(assert (=> b!1446564 m!1668199))

(assert (=> b!1446564 m!1668503))

(declare-fun m!1668535 () Bool)

(assert (=> b!1446564 m!1668535))

(declare-fun m!1668537 () Bool)

(assert (=> b!1446564 m!1668537))

(declare-fun m!1668539 () Bool)

(assert (=> b!1446564 m!1668539))

(assert (=> b!1446564 m!1664083))

(assert (=> b!1446564 m!1668479))

(assert (=> b!1446564 m!1668523))

(assert (=> b!1446564 m!1668487))

(assert (=> b!1446564 m!1668499))

(assert (=> b!1446564 m!1668503))

(assert (=> b!1446564 m!1668479))

(assert (=> b!1446564 m!1668475))

(assert (=> b!1446564 m!1668199))

(assert (=> b!1446564 m!1668517))

(assert (=> b!1446564 m!1668197))

(declare-fun m!1668541 () Bool)

(assert (=> b!1446564 m!1668541))

(assert (=> b!1446564 m!1668517))

(declare-fun m!1668543 () Bool)

(assert (=> b!1446564 m!1668543))

(assert (=> b!1446564 m!1668511))

(declare-fun m!1668545 () Bool)

(assert (=> b!1446564 m!1668545))

(assert (=> b!1446564 m!1668545))

(declare-fun m!1668547 () Bool)

(assert (=> b!1446564 m!1668547))

(assert (=> b!1446564 m!1668197))

(assert (=> b!1446564 m!1668199))

(assert (=> b!1446564 m!1668503))

(declare-fun m!1668549 () Bool)

(assert (=> b!1446564 m!1668549))

(assert (=> b!1446565 m!1664083))

(assert (=> b!1446565 m!1668479))

(assert (=> b!1446565 m!1668479))

(assert (=> b!1446565 m!1668475))

(assert (=> b!1446565 m!1668475))

(assert (=> b!1446565 m!1668477))

(declare-fun m!1668551 () Bool)

(assert (=> b!1446565 m!1668551))

(assert (=> d!419105 d!419861))

(declare-fun d!419863 () Bool)

(assert (=> d!419863 (= (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) lt!497237))) (list!5977 (c!238014 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) lt!497237)))))))

(declare-fun bs!342256 () Bool)

(assert (= bs!342256 d!419863))

(declare-fun m!1668553 () Bool)

(assert (=> bs!342256 m!1668553))

(assert (=> d!419105 d!419863))

(assert (=> d!419105 d!419529))

(declare-fun d!419865 () Bool)

(declare-fun c!238394 () Bool)

(assert (=> d!419865 (= c!238394 ((_ is Empty!5096) (c!238012 (print!1074 lt!496935))))))

(declare-fun e!922793 () List!15056)

(assert (=> d!419865 (= (list!5976 (c!238012 (print!1074 lt!496935))) e!922793)))

(declare-fun b!1446575 () Bool)

(declare-fun e!922794 () List!15056)

(assert (=> b!1446575 (= e!922793 e!922794)))

(declare-fun c!238395 () Bool)

(assert (=> b!1446575 (= c!238395 ((_ is Leaf!7615) (c!238012 (print!1074 lt!496935))))))

(declare-fun b!1446577 () Bool)

(assert (=> b!1446577 (= e!922794 (++!4033 (list!5976 (left!12764 (c!238012 (print!1074 lt!496935)))) (list!5976 (right!13094 (c!238012 (print!1074 lt!496935))))))))

(declare-fun b!1446576 () Bool)

(declare-fun list!5981 (IArray!10197) List!15056)

(assert (=> b!1446576 (= e!922794 (list!5981 (xs!7837 (c!238012 (print!1074 lt!496935)))))))

(declare-fun b!1446574 () Bool)

(assert (=> b!1446574 (= e!922793 Nil!14990)))

(assert (= (and d!419865 c!238394) b!1446574))

(assert (= (and d!419865 (not c!238394)) b!1446575))

(assert (= (and b!1446575 c!238395) b!1446576))

(assert (= (and b!1446575 (not c!238395)) b!1446577))

(declare-fun m!1668555 () Bool)

(assert (=> b!1446577 m!1668555))

(declare-fun m!1668557 () Bool)

(assert (=> b!1446577 m!1668557))

(assert (=> b!1446577 m!1668555))

(assert (=> b!1446577 m!1668557))

(declare-fun m!1668559 () Bool)

(assert (=> b!1446577 m!1668559))

(declare-fun m!1668561 () Bool)

(assert (=> b!1446576 m!1668561))

(assert (=> d!418985 d!419865))

(declare-fun d!419867 () Bool)

(declare-fun c!238396 () Bool)

(assert (=> d!419867 (= c!238396 ((_ is Empty!5096) (c!238012 lt!496936)))))

(declare-fun e!922795 () List!15056)

(assert (=> d!419867 (= (list!5976 (c!238012 lt!496936)) e!922795)))

(declare-fun b!1446579 () Bool)

(declare-fun e!922796 () List!15056)

(assert (=> b!1446579 (= e!922795 e!922796)))

(declare-fun c!238397 () Bool)

(assert (=> b!1446579 (= c!238397 ((_ is Leaf!7615) (c!238012 lt!496936)))))

(declare-fun b!1446581 () Bool)

(assert (=> b!1446581 (= e!922796 (++!4033 (list!5976 (left!12764 (c!238012 lt!496936))) (list!5976 (right!13094 (c!238012 lt!496936)))))))

(declare-fun b!1446580 () Bool)

(assert (=> b!1446580 (= e!922796 (list!5981 (xs!7837 (c!238012 lt!496936))))))

(declare-fun b!1446578 () Bool)

(assert (=> b!1446578 (= e!922795 Nil!14990)))

(assert (= (and d!419867 c!238396) b!1446578))

(assert (= (and d!419867 (not c!238396)) b!1446579))

(assert (= (and b!1446579 c!238397) b!1446580))

(assert (= (and b!1446579 (not c!238397)) b!1446581))

(declare-fun m!1668563 () Bool)

(assert (=> b!1446581 m!1668563))

(declare-fun m!1668565 () Bool)

(assert (=> b!1446581 m!1668565))

(assert (=> b!1446581 m!1668563))

(assert (=> b!1446581 m!1668565))

(declare-fun m!1668567 () Bool)

(assert (=> b!1446581 m!1668567))

(declare-fun m!1668569 () Bool)

(assert (=> b!1446580 m!1668569))

(assert (=> d!419003 d!419867))

(declare-fun d!419869 () Bool)

(assert (=> d!419869 (= (isEmpty!9341 (list!5972 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) lt!496978)))) ((_ is Nil!14990) (list!5972 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) lt!496978)))))))

(assert (=> b!1445083 d!419869))

(declare-fun d!419871 () Bool)

(assert (=> d!419871 (= (list!5972 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) lt!496978))) (list!5976 (c!238012 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) lt!496978)))))))

(declare-fun bs!342257 () Bool)

(assert (= bs!342257 d!419871))

(declare-fun m!1668571 () Bool)

(assert (=> bs!342257 m!1668571))

(assert (=> b!1445083 d!419871))

(declare-fun b!1446582 () Bool)

(declare-fun e!922799 () Bool)

(declare-fun lt!498568 () tuple2!14160)

(assert (=> b!1446582 (= e!922799 (= (_2!7966 lt!498568) lt!496978))))

(declare-fun b!1446583 () Bool)

(declare-fun res!654944 () Bool)

(declare-fun e!922798 () Bool)

(assert (=> b!1446583 (=> (not res!654944) (not e!922798))))

(assert (=> b!1446583 (= res!654944 (= (list!5973 (_1!7966 lt!498568)) (_1!7969 (lexList!706 Lexer!2292 (rules!11498 other!32) (list!5972 lt!496978)))))))

(declare-fun b!1446584 () Bool)

(declare-fun e!922797 () Bool)

(assert (=> b!1446584 (= e!922797 (not (isEmpty!9334 (_1!7966 lt!498568))))))

(declare-fun d!419873 () Bool)

(assert (=> d!419873 e!922798))

(declare-fun res!654945 () Bool)

(assert (=> d!419873 (=> (not res!654945) (not e!922798))))

(assert (=> d!419873 (= res!654945 e!922799)))

(declare-fun c!238398 () Bool)

(assert (=> d!419873 (= c!238398 (> (size!12291 (_1!7966 lt!498568)) 0))))

(assert (=> d!419873 (= lt!498568 (lexTailRecV2!461 Lexer!2292 (rules!11498 other!32) lt!496978 (BalanceConc!10133 Empty!5096) lt!496978 (BalanceConc!10135 Empty!5097)))))

(assert (=> d!419873 (= (lex!1050 Lexer!2292 (rules!11498 other!32) lt!496978) lt!498568)))

(declare-fun b!1446585 () Bool)

(assert (=> b!1446585 (= e!922799 e!922797)))

(declare-fun res!654946 () Bool)

(assert (=> b!1446585 (= res!654946 (< (size!12293 (_2!7966 lt!498568)) (size!12293 lt!496978)))))

(assert (=> b!1446585 (=> (not res!654946) (not e!922797))))

(declare-fun b!1446586 () Bool)

(assert (=> b!1446586 (= e!922798 (= (list!5972 (_2!7966 lt!498568)) (_2!7969 (lexList!706 Lexer!2292 (rules!11498 other!32) (list!5972 lt!496978)))))))

(assert (= (and d!419873 c!238398) b!1446585))

(assert (= (and d!419873 (not c!238398)) b!1446582))

(assert (= (and b!1446585 res!654946) b!1446584))

(assert (= (and d!419873 res!654945) b!1446583))

(assert (= (and b!1446583 res!654944) b!1446586))

(declare-fun m!1668573 () Bool)

(assert (=> b!1446583 m!1668573))

(declare-fun m!1668575 () Bool)

(assert (=> b!1446583 m!1668575))

(assert (=> b!1446583 m!1668575))

(declare-fun m!1668577 () Bool)

(assert (=> b!1446583 m!1668577))

(declare-fun m!1668579 () Bool)

(assert (=> b!1446585 m!1668579))

(declare-fun m!1668581 () Bool)

(assert (=> b!1446585 m!1668581))

(declare-fun m!1668583 () Bool)

(assert (=> b!1446586 m!1668583))

(assert (=> b!1446586 m!1668575))

(assert (=> b!1446586 m!1668575))

(assert (=> b!1446586 m!1668577))

(declare-fun m!1668585 () Bool)

(assert (=> b!1446584 m!1668585))

(declare-fun m!1668587 () Bool)

(assert (=> d!419873 m!1668587))

(declare-fun m!1668589 () Bool)

(assert (=> d!419873 m!1668589))

(assert (=> b!1445083 d!419873))

(declare-fun d!419875 () Bool)

(declare-fun c!238399 () Bool)

(assert (=> d!419875 (= c!238399 ((_ is Empty!5096) (c!238012 lt!496939)))))

(declare-fun e!922800 () List!15056)

(assert (=> d!419875 (= (list!5976 (c!238012 lt!496939)) e!922800)))

(declare-fun b!1446588 () Bool)

(declare-fun e!922801 () List!15056)

(assert (=> b!1446588 (= e!922800 e!922801)))

(declare-fun c!238400 () Bool)

(assert (=> b!1446588 (= c!238400 ((_ is Leaf!7615) (c!238012 lt!496939)))))

(declare-fun b!1446590 () Bool)

(assert (=> b!1446590 (= e!922801 (++!4033 (list!5976 (left!12764 (c!238012 lt!496939))) (list!5976 (right!13094 (c!238012 lt!496939)))))))

(declare-fun b!1446589 () Bool)

(assert (=> b!1446589 (= e!922801 (list!5981 (xs!7837 (c!238012 lt!496939))))))

(declare-fun b!1446587 () Bool)

(assert (=> b!1446587 (= e!922800 Nil!14990)))

(assert (= (and d!419875 c!238399) b!1446587))

(assert (= (and d!419875 (not c!238399)) b!1446588))

(assert (= (and b!1446588 c!238400) b!1446589))

(assert (= (and b!1446588 (not c!238400)) b!1446590))

(declare-fun m!1668591 () Bool)

(assert (=> b!1446590 m!1668591))

(declare-fun m!1668593 () Bool)

(assert (=> b!1446590 m!1668593))

(assert (=> b!1446590 m!1668591))

(assert (=> b!1446590 m!1668593))

(declare-fun m!1668595 () Bool)

(assert (=> b!1446590 m!1668595))

(declare-fun m!1668597 () Bool)

(assert (=> b!1446589 m!1668597))

(assert (=> d!418999 d!419875))

(assert (=> d!418987 d!419005))

(assert (=> d!418987 d!419839))

(declare-fun d!419877 () Bool)

(assert (=> d!419877 (= (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 lt!496935) lt!496965))) (list!5977 (c!238014 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 lt!496935) lt!496965)))))))

(declare-fun bs!342258 () Bool)

(assert (= bs!342258 d!419877))

(declare-fun m!1668599 () Bool)

(assert (=> bs!342258 m!1668599))

(assert (=> d!418987 d!419877))

(declare-fun d!419879 () Bool)

(declare-fun e!922803 () Bool)

(assert (=> d!419879 e!922803))

(declare-fun res!654947 () Bool)

(assert (=> d!419879 (=> (not res!654947) (not e!922803))))

(assert (=> d!419879 (= res!654947 (= (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 lt!496935) (print!1075 Lexer!2292 (seqFromList!1704 (list!5973 (tokens!2014 lt!496935))))))) (list!5973 (tokens!2014 lt!496935))))))

(declare-fun lt!498572 () Unit!23591)

(declare-fun e!922802 () Unit!23591)

(assert (=> d!419879 (= lt!498572 e!922802)))

(declare-fun c!238401 () Bool)

(assert (=> d!419879 (= c!238401 (or ((_ is Nil!14992) (list!5973 (tokens!2014 lt!496935))) ((_ is Nil!14992) (t!130177 (list!5973 (tokens!2014 lt!496935))))))))

(assert (=> d!419879 (not (isEmpty!9342 (rules!11498 lt!496935)))))

(assert (=> d!419879 (= (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 lt!496935) (list!5973 (tokens!2014 lt!496935))) lt!498572)))

(declare-fun b!1446591 () Bool)

(declare-fun Unit!23797 () Unit!23591)

(assert (=> b!1446591 (= e!922802 Unit!23797)))

(declare-fun b!1446592 () Bool)

(declare-fun Unit!23798 () Unit!23591)

(assert (=> b!1446592 (= e!922802 Unit!23798)))

(declare-fun lt!498579 () BalanceConc!10132)

(assert (=> b!1446592 (= lt!498579 (print!1075 Lexer!2292 (seqFromList!1704 (list!5973 (tokens!2014 lt!496935)))))))

(declare-fun lt!498592 () BalanceConc!10132)

(assert (=> b!1446592 (= lt!498592 (print!1075 Lexer!2292 (seqFromList!1704 (t!130177 (list!5973 (tokens!2014 lt!496935))))))))

(declare-fun lt!498575 () tuple2!14160)

(assert (=> b!1446592 (= lt!498575 (lex!1050 Lexer!2292 (rules!11498 lt!496935) lt!498592))))

(declare-fun lt!498585 () List!15056)

(assert (=> b!1446592 (= lt!498585 (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 lt!496935))))))))

(declare-fun lt!498584 () List!15056)

(assert (=> b!1446592 (= lt!498584 (list!5972 lt!498592))))

(declare-fun lt!498588 () Unit!23591)

(assert (=> b!1446592 (= lt!498588 (lemmaConcatTwoListThenFirstIsPrefix!762 lt!498585 lt!498584))))

(assert (=> b!1446592 (isPrefix!1197 lt!498585 (++!4033 lt!498585 lt!498584))))

(declare-fun lt!498581 () Unit!23591)

(assert (=> b!1446592 (= lt!498581 lt!498588)))

(declare-fun lt!498580 () Unit!23591)

(assert (=> b!1446592 (= lt!498580 (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 lt!496935) (t!130177 (list!5973 (tokens!2014 lt!496935)))))))

(declare-fun lt!498591 () Unit!23591)

(assert (=> b!1446592 (= lt!498591 (seqFromListBHdTlConstructive!91 (h!20393 (t!130177 (list!5973 (tokens!2014 lt!496935)))) (t!130177 (t!130177 (list!5973 (tokens!2014 lt!496935)))) (_1!7966 lt!498575)))))

(assert (=> b!1446592 (= (list!5973 (_1!7966 lt!498575)) (list!5973 (prepend!415 (seqFromList!1704 (t!130177 (t!130177 (list!5973 (tokens!2014 lt!496935))))) (h!20393 (t!130177 (list!5973 (tokens!2014 lt!496935)))))))))

(declare-fun lt!498582 () Unit!23591)

(assert (=> b!1446592 (= lt!498582 lt!498591)))

(declare-fun lt!498593 () Option!2861)

(assert (=> b!1446592 (= lt!498593 (maxPrefix!1187 Lexer!2292 (rules!11498 lt!496935) (list!5972 lt!498579)))))

(assert (=> b!1446592 (= (print!1075 Lexer!2292 (singletonSeq!1238 (h!20393 (list!5973 (tokens!2014 lt!496935))))) (printTailRec!685 Lexer!2292 (singletonSeq!1238 (h!20393 (list!5973 (tokens!2014 lt!496935)))) 0 (BalanceConc!10133 Empty!5096)))))

(declare-fun lt!498594 () Unit!23591)

(declare-fun Unit!23799 () Unit!23591)

(assert (=> b!1446592 (= lt!498594 Unit!23799)))

(declare-fun lt!498576 () Unit!23591)

(assert (=> b!1446592 (= lt!498576 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!235 Lexer!2292 (rules!11498 lt!496935) (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 lt!496935))))) (list!5972 lt!498592)))))

(assert (=> b!1446592 (= (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 lt!496935))))) (originalCharacters!3497 (h!20393 (list!5973 (tokens!2014 lt!496935)))))))

(declare-fun lt!498569 () Unit!23591)

(declare-fun Unit!23800 () Unit!23591)

(assert (=> b!1446592 (= lt!498569 Unit!23800)))

(assert (=> b!1446592 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 (list!5973 (tokens!2014 lt!496935))))) 0))) (Cons!14990 (head!2929 (originalCharacters!3497 (h!20393 (t!130177 (list!5973 (tokens!2014 lt!496935)))))) Nil!14990))))

(declare-fun lt!498573 () Unit!23591)

(declare-fun Unit!23801 () Unit!23591)

(assert (=> b!1446592 (= lt!498573 Unit!23801)))

(assert (=> b!1446592 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 (list!5973 (tokens!2014 lt!496935))))) 0))) (Cons!14990 (head!2929 (list!5972 lt!498592)) Nil!14990))))

(declare-fun lt!498571 () Unit!23591)

(declare-fun Unit!23802 () Unit!23591)

(assert (=> b!1446592 (= lt!498571 Unit!23802)))

(assert (=> b!1446592 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 (list!5973 (tokens!2014 lt!496935))))) 0))) (Cons!14990 (head!2930 lt!498592) Nil!14990))))

(declare-fun lt!498589 () Unit!23591)

(declare-fun Unit!23803 () Unit!23591)

(assert (=> b!1446592 (= lt!498589 Unit!23803)))

(assert (=> b!1446592 (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 lt!496935) (originalCharacters!3497 (h!20393 (list!5973 (tokens!2014 lt!496935))))))))

(declare-fun lt!498570 () Unit!23591)

(declare-fun Unit!23804 () Unit!23591)

(assert (=> b!1446592 (= lt!498570 Unit!23804)))

(assert (=> b!1446592 (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 lt!496935) (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 lt!496935)))))))))

(declare-fun lt!498590 () Unit!23591)

(declare-fun Unit!23805 () Unit!23591)

(assert (=> b!1446592 (= lt!498590 Unit!23805)))

(declare-fun lt!498587 () Unit!23591)

(declare-fun Unit!23806 () Unit!23591)

(assert (=> b!1446592 (= lt!498587 Unit!23806)))

(assert (=> b!1446592 (= (_1!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 lt!496935) (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 lt!496935)))))))) (h!20393 (list!5973 (tokens!2014 lt!496935))))))

(declare-fun lt!498586 () Unit!23591)

(declare-fun Unit!23807 () Unit!23591)

(assert (=> b!1446592 (= lt!498586 Unit!23807)))

(assert (=> b!1446592 (isEmpty!9341 (_2!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 lt!496935) (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 lt!496935)))))))))))

(declare-fun lt!498574 () Unit!23591)

(declare-fun Unit!23808 () Unit!23591)

(assert (=> b!1446592 (= lt!498574 Unit!23808)))

(assert (=> b!1446592 (matchR!1823 (regex!2635 (rule!4406 (h!20393 (list!5973 (tokens!2014 lt!496935))))) (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 lt!496935))))))))

(declare-fun lt!498583 () Unit!23591)

(declare-fun Unit!23809 () Unit!23591)

(assert (=> b!1446592 (= lt!498583 Unit!23809)))

(assert (=> b!1446592 (= (rule!4406 (h!20393 (list!5973 (tokens!2014 lt!496935)))) (rule!4406 (h!20393 (list!5973 (tokens!2014 lt!496935)))))))

(declare-fun lt!498578 () Unit!23591)

(declare-fun Unit!23810 () Unit!23591)

(assert (=> b!1446592 (= lt!498578 Unit!23810)))

(declare-fun lt!498577 () Unit!23591)

(assert (=> b!1446592 (= lt!498577 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!33 Lexer!2292 (rules!11498 lt!496935) (h!20393 (list!5973 (tokens!2014 lt!496935))) (rule!4406 (h!20393 (list!5973 (tokens!2014 lt!496935)))) (list!5972 lt!498592)))))

(declare-fun b!1446593 () Bool)

(assert (=> b!1446593 (= e!922803 (isEmpty!9343 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 lt!496935) (print!1075 Lexer!2292 (seqFromList!1704 (list!5973 (tokens!2014 lt!496935))))))))))

(assert (= (and d!419879 c!238401) b!1446591))

(assert (= (and d!419879 (not c!238401)) b!1446592))

(assert (= (and d!419879 res!654947) b!1446593))

(declare-fun m!1668601 () Bool)

(assert (=> d!419879 m!1668601))

(declare-fun m!1668603 () Bool)

(assert (=> d!419879 m!1668603))

(declare-fun m!1668605 () Bool)

(assert (=> d!419879 m!1668605))

(assert (=> d!419879 m!1664069))

(declare-fun m!1668607 () Bool)

(assert (=> d!419879 m!1668607))

(declare-fun m!1668609 () Bool)

(assert (=> d!419879 m!1668609))

(assert (=> d!419879 m!1668607))

(assert (=> d!419879 m!1668603))

(declare-fun m!1668611 () Bool)

(assert (=> b!1446592 m!1668611))

(declare-fun m!1668613 () Bool)

(assert (=> b!1446592 m!1668613))

(declare-fun m!1668615 () Bool)

(assert (=> b!1446592 m!1668615))

(declare-fun m!1668617 () Bool)

(assert (=> b!1446592 m!1668617))

(declare-fun m!1668619 () Bool)

(assert (=> b!1446592 m!1668619))

(declare-fun m!1668621 () Bool)

(assert (=> b!1446592 m!1668621))

(declare-fun m!1668623 () Bool)

(assert (=> b!1446592 m!1668623))

(declare-fun m!1668625 () Bool)

(assert (=> b!1446592 m!1668625))

(declare-fun m!1668627 () Bool)

(assert (=> b!1446592 m!1668627))

(declare-fun m!1668629 () Bool)

(assert (=> b!1446592 m!1668629))

(declare-fun m!1668631 () Bool)

(assert (=> b!1446592 m!1668631))

(declare-fun m!1668633 () Bool)

(assert (=> b!1446592 m!1668633))

(declare-fun m!1668635 () Bool)

(assert (=> b!1446592 m!1668635))

(declare-fun m!1668637 () Bool)

(assert (=> b!1446592 m!1668637))

(declare-fun m!1668639 () Bool)

(assert (=> b!1446592 m!1668639))

(declare-fun m!1668641 () Bool)

(assert (=> b!1446592 m!1668641))

(declare-fun m!1668643 () Bool)

(assert (=> b!1446592 m!1668643))

(assert (=> b!1446592 m!1668619))

(declare-fun m!1668645 () Bool)

(assert (=> b!1446592 m!1668645))

(declare-fun m!1668647 () Bool)

(assert (=> b!1446592 m!1668647))

(declare-fun m!1668649 () Bool)

(assert (=> b!1446592 m!1668649))

(assert (=> b!1446592 m!1668611))

(assert (=> b!1446592 m!1668623))

(declare-fun m!1668651 () Bool)

(assert (=> b!1446592 m!1668651))

(declare-fun m!1668653 () Bool)

(assert (=> b!1446592 m!1668653))

(declare-fun m!1668655 () Bool)

(assert (=> b!1446592 m!1668655))

(assert (=> b!1446592 m!1668637))

(assert (=> b!1446592 m!1668611))

(declare-fun m!1668657 () Bool)

(assert (=> b!1446592 m!1668657))

(declare-fun m!1668659 () Bool)

(assert (=> b!1446592 m!1668659))

(declare-fun m!1668661 () Bool)

(assert (=> b!1446592 m!1668661))

(assert (=> b!1446592 m!1668621))

(declare-fun m!1668663 () Bool)

(assert (=> b!1446592 m!1668663))

(assert (=> b!1446592 m!1668641))

(assert (=> b!1446592 m!1668631))

(declare-fun m!1668665 () Bool)

(assert (=> b!1446592 m!1668665))

(declare-fun m!1668667 () Bool)

(assert (=> b!1446592 m!1668667))

(declare-fun m!1668669 () Bool)

(assert (=> b!1446592 m!1668669))

(assert (=> b!1446592 m!1664069))

(assert (=> b!1446592 m!1668607))

(assert (=> b!1446592 m!1668653))

(assert (=> b!1446592 m!1668615))

(assert (=> b!1446592 m!1668627))

(assert (=> b!1446592 m!1668631))

(assert (=> b!1446592 m!1668607))

(assert (=> b!1446592 m!1668603))

(assert (=> b!1446592 m!1668641))

(assert (=> b!1446592 m!1668647))

(declare-fun m!1668671 () Bool)

(assert (=> b!1446592 m!1668671))

(declare-fun m!1668673 () Bool)

(assert (=> b!1446592 m!1668673))

(assert (=> b!1446592 m!1668647))

(declare-fun m!1668675 () Bool)

(assert (=> b!1446592 m!1668675))

(assert (=> b!1446592 m!1668639))

(declare-fun m!1668677 () Bool)

(assert (=> b!1446592 m!1668677))

(assert (=> b!1446592 m!1668677))

(declare-fun m!1668679 () Bool)

(assert (=> b!1446592 m!1668679))

(assert (=> b!1446592 m!1668671))

(assert (=> b!1446592 m!1668641))

(assert (=> b!1446592 m!1668631))

(declare-fun m!1668681 () Bool)

(assert (=> b!1446592 m!1668681))

(assert (=> b!1446593 m!1664069))

(assert (=> b!1446593 m!1668607))

(assert (=> b!1446593 m!1668607))

(assert (=> b!1446593 m!1668603))

(assert (=> b!1446593 m!1668603))

(assert (=> b!1446593 m!1668605))

(declare-fun m!1668683 () Bool)

(assert (=> b!1446593 m!1668683))

(assert (=> d!418987 d!419879))

(declare-fun d!419881 () Bool)

(declare-fun lt!498595 () BalanceConc!10132)

(assert (=> d!419881 (= (list!5972 lt!498595) (printList!713 Lexer!2292 (list!5973 (tokens!2014 lt!496935))))))

(assert (=> d!419881 (= lt!498595 (printTailRec!685 Lexer!2292 (tokens!2014 lt!496935) 0 (BalanceConc!10133 Empty!5096)))))

(assert (=> d!419881 (= (print!1075 Lexer!2292 (tokens!2014 lt!496935)) lt!498595)))

(declare-fun bs!342259 () Bool)

(assert (= bs!342259 d!419881))

(declare-fun m!1668685 () Bool)

(assert (=> bs!342259 m!1668685))

(assert (=> bs!342259 m!1664069))

(assert (=> bs!342259 m!1664069))

(declare-fun m!1668687 () Bool)

(assert (=> bs!342259 m!1668687))

(declare-fun m!1668689 () Bool)

(assert (=> bs!342259 m!1668689))

(assert (=> d!418987 d!419881))

(declare-fun d!419883 () Bool)

(declare-fun lt!498596 () Bool)

(assert (=> d!419883 (= lt!498596 (isEmpty!9341 (list!5972 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) (print!1075 Lexer!2292 (seqFromList!1704 lt!496941)))))))))

(assert (=> d!419883 (= lt!498596 (isEmpty!9348 (c!238012 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) (print!1075 Lexer!2292 (seqFromList!1704 lt!496941)))))))))

(assert (=> d!419883 (= (isEmpty!9343 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 thiss!10022) (print!1075 Lexer!2292 (seqFromList!1704 lt!496941))))) lt!498596)))

(declare-fun bs!342260 () Bool)

(assert (= bs!342260 d!419883))

(declare-fun m!1668691 () Bool)

(assert (=> bs!342260 m!1668691))

(assert (=> bs!342260 m!1668691))

(declare-fun m!1668693 () Bool)

(assert (=> bs!342260 m!1668693))

(declare-fun m!1668695 () Bool)

(assert (=> bs!342260 m!1668695))

(assert (=> b!1445160 d!419883))

(assert (=> b!1445160 d!419831))

(assert (=> b!1445160 d!419589))

(assert (=> b!1445160 d!419597))

(declare-fun b!1446595 () Bool)

(declare-fun e!922805 () List!15056)

(assert (=> b!1446595 (= e!922805 (Cons!14990 (h!20391 (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943))))) (++!4033 (t!130175 (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943))))) (printList!713 Lexer!2292 (t!130177 (t!130177 lt!496943))))))))

(declare-fun d!419885 () Bool)

(declare-fun e!922804 () Bool)

(assert (=> d!419885 e!922804))

(declare-fun res!654949 () Bool)

(assert (=> d!419885 (=> (not res!654949) (not e!922804))))

(declare-fun lt!498597 () List!15056)

(assert (=> d!419885 (= res!654949 (= (content!2218 lt!498597) ((_ map or) (content!2218 (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943))))) (content!2218 (printList!713 Lexer!2292 (t!130177 (t!130177 lt!496943)))))))))

(assert (=> d!419885 (= lt!498597 e!922805)))

(declare-fun c!238402 () Bool)

(assert (=> d!419885 (= c!238402 ((_ is Nil!14990) (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943))))))))

(assert (=> d!419885 (= (++!4033 (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943)))) (printList!713 Lexer!2292 (t!130177 (t!130177 lt!496943)))) lt!498597)))

(declare-fun b!1446594 () Bool)

(assert (=> b!1446594 (= e!922805 (printList!713 Lexer!2292 (t!130177 (t!130177 lt!496943))))))

(declare-fun b!1446596 () Bool)

(declare-fun res!654948 () Bool)

(assert (=> b!1446596 (=> (not res!654948) (not e!922804))))

(assert (=> b!1446596 (= res!654948 (= (size!12289 lt!498597) (+ (size!12289 (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943))))) (size!12289 (printList!713 Lexer!2292 (t!130177 (t!130177 lt!496943)))))))))

(declare-fun b!1446597 () Bool)

(assert (=> b!1446597 (= e!922804 (or (not (= (printList!713 Lexer!2292 (t!130177 (t!130177 lt!496943))) Nil!14990)) (= lt!498597 (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943)))))))))

(assert (= (and d!419885 c!238402) b!1446594))

(assert (= (and d!419885 (not c!238402)) b!1446595))

(assert (= (and d!419885 res!654949) b!1446596))

(assert (= (and b!1446596 res!654948) b!1446597))

(assert (=> b!1446595 m!1664265))

(declare-fun m!1668697 () Bool)

(assert (=> b!1446595 m!1668697))

(declare-fun m!1668699 () Bool)

(assert (=> d!419885 m!1668699))

(assert (=> d!419885 m!1664263))

(declare-fun m!1668701 () Bool)

(assert (=> d!419885 m!1668701))

(assert (=> d!419885 m!1664265))

(declare-fun m!1668703 () Bool)

(assert (=> d!419885 m!1668703))

(declare-fun m!1668705 () Bool)

(assert (=> b!1446596 m!1668705))

(assert (=> b!1446596 m!1664263))

(declare-fun m!1668707 () Bool)

(assert (=> b!1446596 m!1668707))

(assert (=> b!1446596 m!1664265))

(declare-fun m!1668709 () Bool)

(assert (=> b!1446596 m!1668709))

(assert (=> b!1445075 d!419885))

(declare-fun d!419887 () Bool)

(assert (=> d!419887 (= (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496943)))) (list!5976 (c!238012 (charsOf!1521 (h!20393 (t!130177 lt!496943))))))))

(declare-fun bs!342261 () Bool)

(assert (= bs!342261 d!419887))

(declare-fun m!1668711 () Bool)

(assert (=> bs!342261 m!1668711))

(assert (=> b!1445075 d!419887))

(assert (=> b!1445075 d!419217))

(declare-fun d!419889 () Bool)

(declare-fun c!238403 () Bool)

(assert (=> d!419889 (= c!238403 ((_ is Cons!14992) (t!130177 (t!130177 lt!496943))))))

(declare-fun e!922806 () List!15056)

(assert (=> d!419889 (= (printList!713 Lexer!2292 (t!130177 (t!130177 lt!496943))) e!922806)))

(declare-fun b!1446598 () Bool)

(assert (=> b!1446598 (= e!922806 (++!4033 (list!5972 (charsOf!1521 (h!20393 (t!130177 (t!130177 lt!496943))))) (printList!713 Lexer!2292 (t!130177 (t!130177 (t!130177 lt!496943))))))))

(declare-fun b!1446599 () Bool)

(assert (=> b!1446599 (= e!922806 Nil!14990)))

(assert (= (and d!419889 c!238403) b!1446598))

(assert (= (and d!419889 (not c!238403)) b!1446599))

(assert (=> b!1446598 m!1665417))

(assert (=> b!1446598 m!1665417))

(declare-fun m!1668713 () Bool)

(assert (=> b!1446598 m!1668713))

(declare-fun m!1668715 () Bool)

(assert (=> b!1446598 m!1668715))

(assert (=> b!1446598 m!1668713))

(assert (=> b!1446598 m!1668715))

(declare-fun m!1668717 () Bool)

(assert (=> b!1446598 m!1668717))

(assert (=> b!1445075 d!419889))

(assert (=> d!419125 d!419363))

(assert (=> b!1445247 d!419453))

(declare-fun b!1446601 () Bool)

(declare-fun e!922808 () List!15056)

(assert (=> b!1446601 (= e!922808 (Cons!14990 (h!20391 (list!5972 (charsOf!1521 (h!20393 lt!496934)))) (++!4033 (t!130175 (list!5972 (charsOf!1521 (h!20393 lt!496934)))) (printList!713 Lexer!2292 (t!130177 lt!496934)))))))

(declare-fun d!419891 () Bool)

(declare-fun e!922807 () Bool)

(assert (=> d!419891 e!922807))

(declare-fun res!654951 () Bool)

(assert (=> d!419891 (=> (not res!654951) (not e!922807))))

(declare-fun lt!498598 () List!15056)

(assert (=> d!419891 (= res!654951 (= (content!2218 lt!498598) ((_ map or) (content!2218 (list!5972 (charsOf!1521 (h!20393 lt!496934)))) (content!2218 (printList!713 Lexer!2292 (t!130177 lt!496934))))))))

(assert (=> d!419891 (= lt!498598 e!922808)))

(declare-fun c!238404 () Bool)

(assert (=> d!419891 (= c!238404 ((_ is Nil!14990) (list!5972 (charsOf!1521 (h!20393 lt!496934)))))))

(assert (=> d!419891 (= (++!4033 (list!5972 (charsOf!1521 (h!20393 lt!496934))) (printList!713 Lexer!2292 (t!130177 lt!496934))) lt!498598)))

(declare-fun b!1446600 () Bool)

(assert (=> b!1446600 (= e!922808 (printList!713 Lexer!2292 (t!130177 lt!496934)))))

(declare-fun b!1446602 () Bool)

(declare-fun res!654950 () Bool)

(assert (=> b!1446602 (=> (not res!654950) (not e!922807))))

(assert (=> b!1446602 (= res!654950 (= (size!12289 lt!498598) (+ (size!12289 (list!5972 (charsOf!1521 (h!20393 lt!496934)))) (size!12289 (printList!713 Lexer!2292 (t!130177 lt!496934))))))))

(declare-fun b!1446603 () Bool)

(assert (=> b!1446603 (= e!922807 (or (not (= (printList!713 Lexer!2292 (t!130177 lt!496934)) Nil!14990)) (= lt!498598 (list!5972 (charsOf!1521 (h!20393 lt!496934))))))))

(assert (= (and d!419891 c!238404) b!1446600))

(assert (= (and d!419891 (not c!238404)) b!1446601))

(assert (= (and d!419891 res!654951) b!1446602))

(assert (= (and b!1446602 res!654950) b!1446603))

(assert (=> b!1446601 m!1664813))

(declare-fun m!1668719 () Bool)

(assert (=> b!1446601 m!1668719))

(declare-fun m!1668721 () Bool)

(assert (=> d!419891 m!1668721))

(assert (=> d!419891 m!1664811))

(declare-fun m!1668723 () Bool)

(assert (=> d!419891 m!1668723))

(assert (=> d!419891 m!1664813))

(declare-fun m!1668725 () Bool)

(assert (=> d!419891 m!1668725))

(declare-fun m!1668727 () Bool)

(assert (=> b!1446602 m!1668727))

(assert (=> b!1446602 m!1664811))

(declare-fun m!1668729 () Bool)

(assert (=> b!1446602 m!1668729))

(assert (=> b!1446602 m!1664813))

(declare-fun m!1668731 () Bool)

(assert (=> b!1446602 m!1668731))

(assert (=> b!1445177 d!419891))

(declare-fun d!419893 () Bool)

(assert (=> d!419893 (= (list!5972 (charsOf!1521 (h!20393 lt!496934))) (list!5976 (c!238012 (charsOf!1521 (h!20393 lt!496934)))))))

(declare-fun bs!342262 () Bool)

(assert (= bs!342262 d!419893))

(declare-fun m!1668733 () Bool)

(assert (=> bs!342262 m!1668733))

(assert (=> b!1445177 d!419893))

(declare-fun d!419895 () Bool)

(declare-fun lt!498599 () BalanceConc!10132)

(assert (=> d!419895 (= (list!5972 lt!498599) (originalCharacters!3497 (h!20393 lt!496934)))))

(assert (=> d!419895 (= lt!498599 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496934)))) (value!84745 (h!20393 lt!496934))))))

(assert (=> d!419895 (= (charsOf!1521 (h!20393 lt!496934)) lt!498599)))

(declare-fun b_lambda!45171 () Bool)

(assert (=> (not b_lambda!45171) (not d!419895)))

(declare-fun t!130292 () Bool)

(declare-fun tb!78741 () Bool)

(assert (=> (and b!1445271 (= (toChars!3801 (transformation!2635 (h!20394 (rules!11498 thiss!10022)))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496934))))) t!130292) tb!78741))

(declare-fun b!1446604 () Bool)

(declare-fun e!922809 () Bool)

(declare-fun tp!407887 () Bool)

(assert (=> b!1446604 (= e!922809 (and (inv!19962 (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496934)))) (value!84745 (h!20393 lt!496934))))) tp!407887))))

(declare-fun result!95168 () Bool)

(assert (=> tb!78741 (= result!95168 (and (inv!19963 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496934)))) (value!84745 (h!20393 lt!496934)))) e!922809))))

(assert (= tb!78741 b!1446604))

(declare-fun m!1668735 () Bool)

(assert (=> b!1446604 m!1668735))

(declare-fun m!1668737 () Bool)

(assert (=> tb!78741 m!1668737))

(assert (=> d!419895 t!130292))

(declare-fun b_and!97891 () Bool)

(assert (= b_and!97887 (and (=> t!130292 result!95168) b_and!97891)))

(declare-fun tb!78743 () Bool)

(declare-fun t!130294 () Bool)

(assert (=> (and b!1445282 (= (toChars!3801 (transformation!2635 (h!20394 (rules!11498 other!32)))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496934))))) t!130294) tb!78743))

(declare-fun result!95170 () Bool)

(assert (= result!95170 result!95168))

(assert (=> d!419895 t!130294))

(declare-fun b_and!97893 () Bool)

(assert (= b_and!97889 (and (=> t!130294 result!95170) b_and!97893)))

(declare-fun m!1668739 () Bool)

(assert (=> d!419895 m!1668739))

(declare-fun m!1668741 () Bool)

(assert (=> d!419895 m!1668741))

(assert (=> b!1445177 d!419895))

(declare-fun d!419897 () Bool)

(declare-fun c!238405 () Bool)

(assert (=> d!419897 (= c!238405 ((_ is Cons!14992) (t!130177 lt!496934)))))

(declare-fun e!922810 () List!15056)

(assert (=> d!419897 (= (printList!713 Lexer!2292 (t!130177 lt!496934)) e!922810)))

(declare-fun b!1446605 () Bool)

(assert (=> b!1446605 (= e!922810 (++!4033 (list!5972 (charsOf!1521 (h!20393 (t!130177 lt!496934)))) (printList!713 Lexer!2292 (t!130177 (t!130177 lt!496934)))))))

(declare-fun b!1446606 () Bool)

(assert (=> b!1446606 (= e!922810 Nil!14990)))

(assert (= (and d!419897 c!238405) b!1446605))

(assert (= (and d!419897 (not c!238405)) b!1446606))

(declare-fun m!1668743 () Bool)

(assert (=> b!1446605 m!1668743))

(assert (=> b!1446605 m!1668743))

(declare-fun m!1668745 () Bool)

(assert (=> b!1446605 m!1668745))

(declare-fun m!1668747 () Bool)

(assert (=> b!1446605 m!1668747))

(assert (=> b!1446605 m!1668745))

(assert (=> b!1446605 m!1668747))

(declare-fun m!1668749 () Bool)

(assert (=> b!1446605 m!1668749))

(assert (=> b!1445177 d!419897))

(declare-fun d!419899 () Bool)

(declare-fun e!922812 () Bool)

(assert (=> d!419899 e!922812))

(declare-fun res!654953 () Bool)

(assert (=> d!419899 (=> (not res!654953) (not e!922812))))

(declare-fun lt!498600 () List!15058)

(assert (=> d!419899 (= res!654953 (= (content!2219 lt!498600) ((_ map or) (content!2219 (t!130177 lt!496941)) (content!2219 Nil!14992))))))

(declare-fun e!922811 () List!15058)

(assert (=> d!419899 (= lt!498600 e!922811)))

(declare-fun c!238406 () Bool)

(assert (=> d!419899 (= c!238406 ((_ is Nil!14992) (t!130177 lt!496941)))))

(assert (=> d!419899 (= (++!4034 (t!130177 lt!496941) Nil!14992) lt!498600)))

(declare-fun b!1446609 () Bool)

(declare-fun res!654952 () Bool)

(assert (=> b!1446609 (=> (not res!654952) (not e!922812))))

(assert (=> b!1446609 (= res!654952 (= (size!12290 lt!498600) (+ (size!12290 (t!130177 lt!496941)) (size!12290 Nil!14992))))))

(declare-fun b!1446607 () Bool)

(assert (=> b!1446607 (= e!922811 Nil!14992)))

(declare-fun b!1446610 () Bool)

(assert (=> b!1446610 (= e!922812 (or (not (= Nil!14992 Nil!14992)) (= lt!498600 (t!130177 lt!496941))))))

(declare-fun b!1446608 () Bool)

(assert (=> b!1446608 (= e!922811 (Cons!14992 (h!20393 (t!130177 lt!496941)) (++!4034 (t!130177 (t!130177 lt!496941)) Nil!14992)))))

(assert (= (and d!419899 c!238406) b!1446607))

(assert (= (and d!419899 (not c!238406)) b!1446608))

(assert (= (and d!419899 res!654953) b!1446609))

(assert (= (and b!1446609 res!654952) b!1446610))

(declare-fun m!1668751 () Bool)

(assert (=> d!419899 m!1668751))

(assert (=> d!419899 m!1666147))

(assert (=> d!419899 m!1664271))

(declare-fun m!1668753 () Bool)

(assert (=> b!1446609 m!1668753))

(assert (=> b!1446609 m!1666151))

(assert (=> b!1446609 m!1664275))

(declare-fun m!1668755 () Bool)

(assert (=> b!1446608 m!1668755))

(assert (=> b!1445078 d!419899))

(declare-fun d!419901 () Bool)

(declare-fun c!238407 () Bool)

(assert (=> d!419901 (= c!238407 ((_ is Empty!5096) (c!238012 (charsOf!1521 (h!20393 lt!496943)))))))

(declare-fun e!922813 () List!15056)

(assert (=> d!419901 (= (list!5976 (c!238012 (charsOf!1521 (h!20393 lt!496943)))) e!922813)))

(declare-fun b!1446612 () Bool)

(declare-fun e!922814 () List!15056)

(assert (=> b!1446612 (= e!922813 e!922814)))

(declare-fun c!238408 () Bool)

(assert (=> b!1446612 (= c!238408 ((_ is Leaf!7615) (c!238012 (charsOf!1521 (h!20393 lt!496943)))))))

(declare-fun b!1446614 () Bool)

(assert (=> b!1446614 (= e!922814 (++!4033 (list!5976 (left!12764 (c!238012 (charsOf!1521 (h!20393 lt!496943))))) (list!5976 (right!13094 (c!238012 (charsOf!1521 (h!20393 lt!496943)))))))))

(declare-fun b!1446613 () Bool)

(assert (=> b!1446613 (= e!922814 (list!5981 (xs!7837 (c!238012 (charsOf!1521 (h!20393 lt!496943))))))))

(declare-fun b!1446611 () Bool)

(assert (=> b!1446611 (= e!922813 Nil!14990)))

(assert (= (and d!419901 c!238407) b!1446611))

(assert (= (and d!419901 (not c!238407)) b!1446612))

(assert (= (and b!1446612 c!238408) b!1446613))

(assert (= (and b!1446612 (not c!238408)) b!1446614))

(declare-fun m!1668757 () Bool)

(assert (=> b!1446614 m!1668757))

(declare-fun m!1668759 () Bool)

(assert (=> b!1446614 m!1668759))

(assert (=> b!1446614 m!1668757))

(assert (=> b!1446614 m!1668759))

(declare-fun m!1668761 () Bool)

(assert (=> b!1446614 m!1668761))

(declare-fun m!1668763 () Bool)

(assert (=> b!1446613 m!1668763))

(assert (=> d!419019 d!419901))

(declare-fun d!419903 () Bool)

(assert (=> d!419903 (= (inv!19946 (tag!2899 (h!20394 (rules!11498 other!32)))) (= (mod (str.len (value!84744 (tag!2899 (h!20394 (rules!11498 other!32))))) 2) 0))))

(assert (=> b!1445281 d!419903))

(declare-fun d!419905 () Bool)

(declare-fun res!654954 () Bool)

(declare-fun e!922815 () Bool)

(assert (=> d!419905 (=> (not res!654954) (not e!922815))))

(assert (=> d!419905 (= res!654954 (semiInverseModEq!994 (toChars!3801 (transformation!2635 (h!20394 (rules!11498 other!32)))) (toValue!3942 (transformation!2635 (h!20394 (rules!11498 other!32))))))))

(assert (=> d!419905 (= (inv!19964 (transformation!2635 (h!20394 (rules!11498 other!32)))) e!922815)))

(declare-fun b!1446615 () Bool)

(assert (=> b!1446615 (= e!922815 (equivClasses!953 (toChars!3801 (transformation!2635 (h!20394 (rules!11498 other!32)))) (toValue!3942 (transformation!2635 (h!20394 (rules!11498 other!32))))))))

(assert (= (and d!419905 res!654954) b!1446615))

(declare-fun m!1668765 () Bool)

(assert (=> d!419905 m!1668765))

(declare-fun m!1668767 () Bool)

(assert (=> b!1446615 m!1668767))

(assert (=> b!1445281 d!419905))

(declare-fun d!419907 () Bool)

(declare-fun res!654955 () Bool)

(declare-fun e!922816 () Bool)

(assert (=> d!419907 (=> (not res!654955) (not e!922816))))

(assert (=> d!419907 (= res!654955 (= (csize!10424 (c!238014 (tokens!2014 thiss!10022))) (+ (size!12295 (left!12765 (c!238014 (tokens!2014 thiss!10022)))) (size!12295 (right!13095 (c!238014 (tokens!2014 thiss!10022)))))))))

(assert (=> d!419907 (= (inv!19959 (c!238014 (tokens!2014 thiss!10022))) e!922816)))

(declare-fun b!1446616 () Bool)

(declare-fun res!654956 () Bool)

(assert (=> b!1446616 (=> (not res!654956) (not e!922816))))

(assert (=> b!1446616 (= res!654956 (and (not (= (left!12765 (c!238014 (tokens!2014 thiss!10022))) Empty!5097)) (not (= (right!13095 (c!238014 (tokens!2014 thiss!10022))) Empty!5097))))))

(declare-fun b!1446617 () Bool)

(declare-fun res!654957 () Bool)

(assert (=> b!1446617 (=> (not res!654957) (not e!922816))))

(assert (=> b!1446617 (= res!654957 (= (cheight!5308 (c!238014 (tokens!2014 thiss!10022))) (+ (max!0 (height!755 (left!12765 (c!238014 (tokens!2014 thiss!10022)))) (height!755 (right!13095 (c!238014 (tokens!2014 thiss!10022))))) 1)))))

(declare-fun b!1446618 () Bool)

(assert (=> b!1446618 (= e!922816 (<= 0 (cheight!5308 (c!238014 (tokens!2014 thiss!10022)))))))

(assert (= (and d!419907 res!654955) b!1446616))

(assert (= (and b!1446616 res!654956) b!1446617))

(assert (= (and b!1446617 res!654957) b!1446618))

(declare-fun m!1668769 () Bool)

(assert (=> d!419907 m!1668769))

(declare-fun m!1668771 () Bool)

(assert (=> d!419907 m!1668771))

(assert (=> b!1446617 m!1668373))

(assert (=> b!1446617 m!1668375))

(assert (=> b!1446617 m!1668373))

(assert (=> b!1446617 m!1668375))

(declare-fun m!1668773 () Bool)

(assert (=> b!1446617 m!1668773))

(assert (=> b!1445068 d!419907))

(declare-fun d!419909 () Bool)

(declare-fun c!238409 () Bool)

(assert (=> d!419909 (= c!238409 ((_ is Nil!14990) lt!497199))))

(declare-fun e!922817 () (InoxSet C!8076))

(assert (=> d!419909 (= (content!2218 lt!497199) e!922817)))

(declare-fun b!1446619 () Bool)

(assert (=> b!1446619 (= e!922817 ((as const (Array C!8076 Bool)) false))))

(declare-fun b!1446620 () Bool)

(assert (=> b!1446620 (= e!922817 ((_ map or) (store ((as const (Array C!8076 Bool)) false) (h!20391 lt!497199) true) (content!2218 (t!130175 lt!497199))))))

(assert (= (and d!419909 c!238409) b!1446619))

(assert (= (and d!419909 (not c!238409)) b!1446620))

(declare-fun m!1668775 () Bool)

(assert (=> b!1446620 m!1668775))

(declare-fun m!1668777 () Bool)

(assert (=> b!1446620 m!1668777))

(assert (=> d!419083 d!419909))

(declare-fun d!419911 () Bool)

(declare-fun c!238410 () Bool)

(assert (=> d!419911 (= c!238410 ((_ is Nil!14990) lt!496946))))

(declare-fun e!922818 () (InoxSet C!8076))

(assert (=> d!419911 (= (content!2218 lt!496946) e!922818)))

(declare-fun b!1446621 () Bool)

(assert (=> b!1446621 (= e!922818 ((as const (Array C!8076 Bool)) false))))

(declare-fun b!1446622 () Bool)

(assert (=> b!1446622 (= e!922818 ((_ map or) (store ((as const (Array C!8076 Bool)) false) (h!20391 lt!496946) true) (content!2218 (t!130175 lt!496946))))))

(assert (= (and d!419911 c!238410) b!1446621))

(assert (= (and d!419911 (not c!238410)) b!1446622))

(declare-fun m!1668779 () Bool)

(assert (=> b!1446622 m!1668779))

(assert (=> b!1446622 m!1666181))

(assert (=> d!419083 d!419911))

(declare-fun d!419913 () Bool)

(declare-fun c!238411 () Bool)

(assert (=> d!419913 (= c!238411 ((_ is Nil!14990) lt!496942))))

(declare-fun e!922819 () (InoxSet C!8076))

(assert (=> d!419913 (= (content!2218 lt!496942) e!922819)))

(declare-fun b!1446623 () Bool)

(assert (=> b!1446623 (= e!922819 ((as const (Array C!8076 Bool)) false))))

(declare-fun b!1446624 () Bool)

(assert (=> b!1446624 (= e!922819 ((_ map or) (store ((as const (Array C!8076 Bool)) false) (h!20391 lt!496942) true) (content!2218 (t!130175 lt!496942))))))

(assert (= (and d!419913 c!238411) b!1446623))

(assert (= (and d!419913 (not c!238411)) b!1446624))

(declare-fun m!1668781 () Bool)

(assert (=> b!1446624 m!1668781))

(declare-fun m!1668783 () Bool)

(assert (=> b!1446624 m!1668783))

(assert (=> d!419083 d!419913))

(assert (=> b!1445248 d!419813))

(declare-fun d!419915 () Bool)

(declare-fun res!654958 () Bool)

(declare-fun e!922820 () Bool)

(assert (=> d!419915 (=> (not res!654958) (not e!922820))))

(assert (=> d!419915 (= res!654958 (rulesValid!968 Lexer!2292 (rules!11498 other!32)))))

(assert (=> d!419915 (= (rulesInvariant!2132 Lexer!2292 (rules!11498 other!32)) e!922820)))

(declare-fun b!1446625 () Bool)

(assert (=> b!1446625 (= e!922820 (noDuplicateTag!968 Lexer!2292 (rules!11498 other!32) Nil!14995))))

(assert (= (and d!419915 res!654958) b!1446625))

(declare-fun m!1668785 () Bool)

(assert (=> d!419915 m!1668785))

(declare-fun m!1668787 () Bool)

(assert (=> b!1446625 m!1668787))

(assert (=> d!419127 d!419915))

(declare-fun d!419917 () Bool)

(assert (=> d!419917 (= (inv!19961 (xs!7838 (c!238014 (tokens!2014 thiss!10022)))) (<= (size!12290 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 thiss!10022))))) 2147483647))))

(declare-fun bs!342263 () Bool)

(assert (= bs!342263 d!419917))

(declare-fun m!1668789 () Bool)

(assert (=> bs!342263 m!1668789))

(assert (=> b!1445278 d!419917))

(assert (=> b!1444988 d!419015))

(declare-fun d!419919 () Bool)

(declare-fun c!238412 () Bool)

(assert (=> d!419919 (= c!238412 ((_ is Empty!5097) (c!238014 (tokens!2014 thiss!10022))))))

(declare-fun e!922821 () List!15058)

(assert (=> d!419919 (= (list!5977 (c!238014 (tokens!2014 thiss!10022))) e!922821)))

(declare-fun b!1446628 () Bool)

(declare-fun e!922822 () List!15058)

(assert (=> b!1446628 (= e!922822 (list!5980 (xs!7838 (c!238014 (tokens!2014 thiss!10022)))))))

(declare-fun b!1446626 () Bool)

(assert (=> b!1446626 (= e!922821 Nil!14992)))

(declare-fun b!1446627 () Bool)

(assert (=> b!1446627 (= e!922821 e!922822)))

(declare-fun c!238413 () Bool)

(assert (=> b!1446627 (= c!238413 ((_ is Leaf!7616) (c!238014 (tokens!2014 thiss!10022))))))

(declare-fun b!1446629 () Bool)

(assert (=> b!1446629 (= e!922822 (++!4034 (list!5977 (left!12765 (c!238014 (tokens!2014 thiss!10022)))) (list!5977 (right!13095 (c!238014 (tokens!2014 thiss!10022))))))))

(assert (= (and d!419919 c!238412) b!1446626))

(assert (= (and d!419919 (not c!238412)) b!1446627))

(assert (= (and b!1446627 c!238413) b!1446628))

(assert (= (and b!1446627 (not c!238413)) b!1446629))

(declare-fun m!1668791 () Bool)

(assert (=> b!1446628 m!1668791))

(declare-fun m!1668793 () Bool)

(assert (=> b!1446629 m!1668793))

(declare-fun m!1668795 () Bool)

(assert (=> b!1446629 m!1668795))

(assert (=> b!1446629 m!1668793))

(assert (=> b!1446629 m!1668795))

(declare-fun m!1668797 () Bool)

(assert (=> b!1446629 m!1668797))

(assert (=> d!419033 d!419919))

(declare-fun d!419921 () Bool)

(declare-fun lt!498601 () Int)

(assert (=> d!419921 (>= lt!498601 0)))

(declare-fun e!922823 () Int)

(assert (=> d!419921 (= lt!498601 e!922823)))

(declare-fun c!238414 () Bool)

(assert (=> d!419921 (= c!238414 ((_ is Nil!14990) lt!496973))))

(assert (=> d!419921 (= (size!12289 lt!496973) lt!498601)))

(declare-fun b!1446630 () Bool)

(assert (=> b!1446630 (= e!922823 0)))

(declare-fun b!1446631 () Bool)

(assert (=> b!1446631 (= e!922823 (+ 1 (size!12289 (t!130175 lt!496973))))))

(assert (= (and d!419921 c!238414) b!1446630))

(assert (= (and d!419921 (not c!238414)) b!1446631))

(declare-fun m!1668799 () Bool)

(assert (=> b!1446631 m!1668799))

(assert (=> b!1445073 d!419921))

(declare-fun d!419923 () Bool)

(declare-fun lt!498602 () Int)

(assert (=> d!419923 (>= lt!498602 0)))

(declare-fun e!922824 () Int)

(assert (=> d!419923 (= lt!498602 e!922824)))

(declare-fun c!238415 () Bool)

(assert (=> d!419923 (= c!238415 ((_ is Nil!14990) (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))

(assert (=> d!419923 (= (size!12289 (list!5972 (charsOf!1521 (h!20393 lt!496943)))) lt!498602)))

(declare-fun b!1446632 () Bool)

(assert (=> b!1446632 (= e!922824 0)))

(declare-fun b!1446633 () Bool)

(assert (=> b!1446633 (= e!922824 (+ 1 (size!12289 (t!130175 (list!5972 (charsOf!1521 (h!20393 lt!496943)))))))))

(assert (= (and d!419923 c!238415) b!1446632))

(assert (= (and d!419923 (not c!238415)) b!1446633))

(assert (=> b!1446633 m!1666231))

(assert (=> b!1445073 d!419923))

(declare-fun d!419925 () Bool)

(declare-fun lt!498603 () Int)

(assert (=> d!419925 (>= lt!498603 0)))

(declare-fun e!922825 () Int)

(assert (=> d!419925 (= lt!498603 e!922825)))

(declare-fun c!238416 () Bool)

(assert (=> d!419925 (= c!238416 ((_ is Nil!14990) (printList!713 Lexer!2292 (t!130177 lt!496943))))))

(assert (=> d!419925 (= (size!12289 (printList!713 Lexer!2292 (t!130177 lt!496943))) lt!498603)))

(declare-fun b!1446634 () Bool)

(assert (=> b!1446634 (= e!922825 0)))

(declare-fun b!1446635 () Bool)

(assert (=> b!1446635 (= e!922825 (+ 1 (size!12289 (t!130175 (printList!713 Lexer!2292 (t!130177 lt!496943))))))))

(assert (= (and d!419925 c!238416) b!1446634))

(assert (= (and d!419925 (not c!238416)) b!1446635))

(declare-fun m!1668801 () Bool)

(assert (=> b!1446635 m!1668801))

(assert (=> b!1445073 d!419925))

(declare-fun d!419927 () Bool)

(assert (=> d!419927 (= (isEmpty!9344 (list!5973 (tokens!2014 other!32))) ((_ is Nil!14992) (list!5973 (tokens!2014 other!32))))))

(assert (=> d!419123 d!419927))

(assert (=> d!419123 d!419027))

(declare-fun d!419929 () Bool)

(declare-fun lt!498606 () Bool)

(assert (=> d!419929 (= lt!498606 (isEmpty!9344 (list!5977 (c!238014 (tokens!2014 other!32)))))))

(assert (=> d!419929 (= lt!498606 (= (size!12295 (c!238014 (tokens!2014 other!32))) 0))))

(assert (=> d!419929 (= (isEmpty!9345 (c!238014 (tokens!2014 other!32))) lt!498606)))

(declare-fun bs!342264 () Bool)

(assert (= bs!342264 d!419929))

(assert (=> bs!342264 m!1664279))

(assert (=> bs!342264 m!1664279))

(declare-fun m!1668803 () Bool)

(assert (=> bs!342264 m!1668803))

(assert (=> bs!342264 m!1668105))

(assert (=> d!419123 d!419929))

(assert (=> b!1445230 d!419915))

(assert (=> b!1445232 d!419829))

(declare-fun d!419931 () Bool)

(declare-fun c!238417 () Bool)

(assert (=> d!419931 (= c!238417 ((_ is Empty!5097) (c!238014 (tokens!2014 other!32))))))

(declare-fun e!922826 () List!15058)

(assert (=> d!419931 (= (list!5977 (c!238014 (tokens!2014 other!32))) e!922826)))

(declare-fun b!1446638 () Bool)

(declare-fun e!922827 () List!15058)

(assert (=> b!1446638 (= e!922827 (list!5980 (xs!7838 (c!238014 (tokens!2014 other!32)))))))

(declare-fun b!1446636 () Bool)

(assert (=> b!1446636 (= e!922826 Nil!14992)))

(declare-fun b!1446637 () Bool)

(assert (=> b!1446637 (= e!922826 e!922827)))

(declare-fun c!238418 () Bool)

(assert (=> b!1446637 (= c!238418 ((_ is Leaf!7616) (c!238014 (tokens!2014 other!32))))))

(declare-fun b!1446639 () Bool)

(assert (=> b!1446639 (= e!922827 (++!4034 (list!5977 (left!12765 (c!238014 (tokens!2014 other!32)))) (list!5977 (right!13095 (c!238014 (tokens!2014 other!32))))))))

(assert (= (and d!419931 c!238417) b!1446636))

(assert (= (and d!419931 (not c!238417)) b!1446637))

(assert (= (and b!1446637 c!238418) b!1446638))

(assert (= (and b!1446637 (not c!238418)) b!1446639))

(assert (=> b!1446638 m!1668237))

(declare-fun m!1668805 () Bool)

(assert (=> b!1446639 m!1668805))

(declare-fun m!1668807 () Bool)

(assert (=> b!1446639 m!1668807))

(assert (=> b!1446639 m!1668805))

(assert (=> b!1446639 m!1668807))

(declare-fun m!1668809 () Bool)

(assert (=> b!1446639 m!1668809))

(assert (=> d!419027 d!419931))

(assert (=> d!419031 d!419027))

(declare-fun d!419933 () Bool)

(assert (=> d!419933 (= (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) lt!496978))) (list!5977 (c!238014 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) lt!496978)))))))

(declare-fun bs!342265 () Bool)

(assert (= bs!342265 d!419933))

(declare-fun m!1668811 () Bool)

(assert (=> bs!342265 m!1668811))

(assert (=> d!419031 d!419933))

(assert (=> d!419031 d!419873))

(declare-fun d!419935 () Bool)

(declare-fun e!922829 () Bool)

(assert (=> d!419935 e!922829))

(declare-fun res!654959 () Bool)

(assert (=> d!419935 (=> (not res!654959) (not e!922829))))

(assert (=> d!419935 (= res!654959 (= (list!5973 (_1!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) (print!1075 Lexer!2292 (seqFromList!1704 (list!5973 (tokens!2014 other!32))))))) (list!5973 (tokens!2014 other!32))))))

(declare-fun lt!498610 () Unit!23591)

(declare-fun e!922828 () Unit!23591)

(assert (=> d!419935 (= lt!498610 e!922828)))

(declare-fun c!238419 () Bool)

(assert (=> d!419935 (= c!238419 (or ((_ is Nil!14992) (list!5973 (tokens!2014 other!32))) ((_ is Nil!14992) (t!130177 (list!5973 (tokens!2014 other!32))))))))

(assert (=> d!419935 (not (isEmpty!9342 (rules!11498 other!32)))))

(assert (=> d!419935 (= (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 other!32) (list!5973 (tokens!2014 other!32))) lt!498610)))

(declare-fun b!1446640 () Bool)

(declare-fun Unit!23814 () Unit!23591)

(assert (=> b!1446640 (= e!922828 Unit!23814)))

(declare-fun b!1446641 () Bool)

(declare-fun Unit!23816 () Unit!23591)

(assert (=> b!1446641 (= e!922828 Unit!23816)))

(declare-fun lt!498617 () BalanceConc!10132)

(assert (=> b!1446641 (= lt!498617 (print!1075 Lexer!2292 (seqFromList!1704 (list!5973 (tokens!2014 other!32)))))))

(declare-fun lt!498630 () BalanceConc!10132)

(assert (=> b!1446641 (= lt!498630 (print!1075 Lexer!2292 (seqFromList!1704 (t!130177 (list!5973 (tokens!2014 other!32))))))))

(declare-fun lt!498613 () tuple2!14160)

(assert (=> b!1446641 (= lt!498613 (lex!1050 Lexer!2292 (rules!11498 other!32) lt!498630))))

(declare-fun lt!498623 () List!15056)

(assert (=> b!1446641 (= lt!498623 (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 other!32))))))))

(declare-fun lt!498622 () List!15056)

(assert (=> b!1446641 (= lt!498622 (list!5972 lt!498630))))

(declare-fun lt!498626 () Unit!23591)

(assert (=> b!1446641 (= lt!498626 (lemmaConcatTwoListThenFirstIsPrefix!762 lt!498623 lt!498622))))

(assert (=> b!1446641 (isPrefix!1197 lt!498623 (++!4033 lt!498623 lt!498622))))

(declare-fun lt!498619 () Unit!23591)

(assert (=> b!1446641 (= lt!498619 lt!498626)))

(declare-fun lt!498618 () Unit!23591)

(assert (=> b!1446641 (= lt!498618 (theoremInvertabilityWhenTokenListSeparable!73 Lexer!2292 (rules!11498 other!32) (t!130177 (list!5973 (tokens!2014 other!32)))))))

(declare-fun lt!498629 () Unit!23591)

(assert (=> b!1446641 (= lt!498629 (seqFromListBHdTlConstructive!91 (h!20393 (t!130177 (list!5973 (tokens!2014 other!32)))) (t!130177 (t!130177 (list!5973 (tokens!2014 other!32)))) (_1!7966 lt!498613)))))

(assert (=> b!1446641 (= (list!5973 (_1!7966 lt!498613)) (list!5973 (prepend!415 (seqFromList!1704 (t!130177 (t!130177 (list!5973 (tokens!2014 other!32))))) (h!20393 (t!130177 (list!5973 (tokens!2014 other!32)))))))))

(declare-fun lt!498620 () Unit!23591)

(assert (=> b!1446641 (= lt!498620 lt!498629)))

(declare-fun lt!498631 () Option!2861)

(assert (=> b!1446641 (= lt!498631 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 lt!498617)))))

(assert (=> b!1446641 (= (print!1075 Lexer!2292 (singletonSeq!1238 (h!20393 (list!5973 (tokens!2014 other!32))))) (printTailRec!685 Lexer!2292 (singletonSeq!1238 (h!20393 (list!5973 (tokens!2014 other!32)))) 0 (BalanceConc!10133 Empty!5096)))))

(declare-fun lt!498632 () Unit!23591)

(declare-fun Unit!23823 () Unit!23591)

(assert (=> b!1446641 (= lt!498632 Unit!23823)))

(declare-fun lt!498614 () Unit!23591)

(assert (=> b!1446641 (= lt!498614 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!235 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 other!32))))) (list!5972 lt!498630)))))

(assert (=> b!1446641 (= (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 other!32))))) (originalCharacters!3497 (h!20393 (list!5973 (tokens!2014 other!32)))))))

(declare-fun lt!498607 () Unit!23591)

(declare-fun Unit!23825 () Unit!23591)

(assert (=> b!1446641 (= lt!498607 Unit!23825)))

(assert (=> b!1446641 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 (list!5973 (tokens!2014 other!32))))) 0))) (Cons!14990 (head!2929 (originalCharacters!3497 (h!20393 (t!130177 (list!5973 (tokens!2014 other!32)))))) Nil!14990))))

(declare-fun lt!498611 () Unit!23591)

(declare-fun Unit!23827 () Unit!23591)

(assert (=> b!1446641 (= lt!498611 Unit!23827)))

(assert (=> b!1446641 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 (list!5973 (tokens!2014 other!32))))) 0))) (Cons!14990 (head!2929 (list!5972 lt!498630)) Nil!14990))))

(declare-fun lt!498609 () Unit!23591)

(declare-fun Unit!23828 () Unit!23591)

(assert (=> b!1446641 (= lt!498609 Unit!23828)))

(assert (=> b!1446641 (= (list!5972 (singletonSeq!1239 (apply!3864 (charsOf!1521 (h!20393 (t!130177 (list!5973 (tokens!2014 other!32))))) 0))) (Cons!14990 (head!2930 lt!498630) Nil!14990))))

(declare-fun lt!498627 () Unit!23591)

(declare-fun Unit!23830 () Unit!23591)

(assert (=> b!1446641 (= lt!498627 Unit!23830)))

(assert (=> b!1446641 (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (originalCharacters!3497 (h!20393 (list!5973 (tokens!2014 other!32))))))))

(declare-fun lt!498608 () Unit!23591)

(declare-fun Unit!23832 () Unit!23591)

(assert (=> b!1446641 (= lt!498608 Unit!23832)))

(assert (=> b!1446641 (isDefined!2314 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 other!32)))))))))

(declare-fun lt!498628 () Unit!23591)

(declare-fun Unit!23833 () Unit!23591)

(assert (=> b!1446641 (= lt!498628 Unit!23833)))

(declare-fun lt!498625 () Unit!23591)

(declare-fun Unit!23834 () Unit!23591)

(assert (=> b!1446641 (= lt!498625 Unit!23834)))

(assert (=> b!1446641 (= (_1!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 other!32)))))))) (h!20393 (list!5973 (tokens!2014 other!32))))))

(declare-fun lt!498624 () Unit!23591)

(declare-fun Unit!23835 () Unit!23591)

(assert (=> b!1446641 (= lt!498624 Unit!23835)))

(assert (=> b!1446641 (isEmpty!9341 (_2!7967 (get!4585 (maxPrefix!1187 Lexer!2292 (rules!11498 other!32) (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 other!32)))))))))))

(declare-fun lt!498612 () Unit!23591)

(declare-fun Unit!23836 () Unit!23591)

(assert (=> b!1446641 (= lt!498612 Unit!23836)))

(assert (=> b!1446641 (matchR!1823 (regex!2635 (rule!4406 (h!20393 (list!5973 (tokens!2014 other!32))))) (list!5972 (charsOf!1521 (h!20393 (list!5973 (tokens!2014 other!32))))))))

(declare-fun lt!498621 () Unit!23591)

(declare-fun Unit!23837 () Unit!23591)

(assert (=> b!1446641 (= lt!498621 Unit!23837)))

(assert (=> b!1446641 (= (rule!4406 (h!20393 (list!5973 (tokens!2014 other!32)))) (rule!4406 (h!20393 (list!5973 (tokens!2014 other!32)))))))

(declare-fun lt!498616 () Unit!23591)

(declare-fun Unit!23838 () Unit!23591)

(assert (=> b!1446641 (= lt!498616 Unit!23838)))

(declare-fun lt!498615 () Unit!23591)

(assert (=> b!1446641 (= lt!498615 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!33 Lexer!2292 (rules!11498 other!32) (h!20393 (list!5973 (tokens!2014 other!32))) (rule!4406 (h!20393 (list!5973 (tokens!2014 other!32)))) (list!5972 lt!498630)))))

(declare-fun b!1446642 () Bool)

(assert (=> b!1446642 (= e!922829 (isEmpty!9343 (_2!7966 (lex!1050 Lexer!2292 (rules!11498 other!32) (print!1075 Lexer!2292 (seqFromList!1704 (list!5973 (tokens!2014 other!32))))))))))

(assert (= (and d!419935 c!238419) b!1446640))

(assert (= (and d!419935 (not c!238419)) b!1446641))

(assert (= (and d!419935 res!654959) b!1446642))

(assert (=> d!419935 m!1664597))

(declare-fun m!1668813 () Bool)

(assert (=> d!419935 m!1668813))

(declare-fun m!1668815 () Bool)

(assert (=> d!419935 m!1668815))

(assert (=> d!419935 m!1664099))

(declare-fun m!1668817 () Bool)

(assert (=> d!419935 m!1668817))

(declare-fun m!1668819 () Bool)

(assert (=> d!419935 m!1668819))

(assert (=> d!419935 m!1668817))

(assert (=> d!419935 m!1668813))

(declare-fun m!1668821 () Bool)

(assert (=> b!1446641 m!1668821))

(declare-fun m!1668823 () Bool)

(assert (=> b!1446641 m!1668823))

(declare-fun m!1668825 () Bool)

(assert (=> b!1446641 m!1668825))

(declare-fun m!1668827 () Bool)

(assert (=> b!1446641 m!1668827))

(declare-fun m!1668829 () Bool)

(assert (=> b!1446641 m!1668829))

(declare-fun m!1668831 () Bool)

(assert (=> b!1446641 m!1668831))

(declare-fun m!1668833 () Bool)

(assert (=> b!1446641 m!1668833))

(declare-fun m!1668835 () Bool)

(assert (=> b!1446641 m!1668835))

(declare-fun m!1668837 () Bool)

(assert (=> b!1446641 m!1668837))

(declare-fun m!1668839 () Bool)

(assert (=> b!1446641 m!1668839))

(declare-fun m!1668841 () Bool)

(assert (=> b!1446641 m!1668841))

(declare-fun m!1668843 () Bool)

(assert (=> b!1446641 m!1668843))

(declare-fun m!1668845 () Bool)

(assert (=> b!1446641 m!1668845))

(declare-fun m!1668847 () Bool)

(assert (=> b!1446641 m!1668847))

(declare-fun m!1668849 () Bool)

(assert (=> b!1446641 m!1668849))

(assert (=> b!1446641 m!1668153))

(declare-fun m!1668851 () Bool)

(assert (=> b!1446641 m!1668851))

(assert (=> b!1446641 m!1668829))

(declare-fun m!1668853 () Bool)

(assert (=> b!1446641 m!1668853))

(declare-fun m!1668855 () Bool)

(assert (=> b!1446641 m!1668855))

(declare-fun m!1668857 () Bool)

(assert (=> b!1446641 m!1668857))

(assert (=> b!1446641 m!1668821))

(assert (=> b!1446641 m!1668833))

(declare-fun m!1668859 () Bool)

(assert (=> b!1446641 m!1668859))

(declare-fun m!1668861 () Bool)

(assert (=> b!1446641 m!1668861))

(declare-fun m!1668863 () Bool)

(assert (=> b!1446641 m!1668863))

(assert (=> b!1446641 m!1668847))

(assert (=> b!1446641 m!1668821))

(declare-fun m!1668865 () Bool)

(assert (=> b!1446641 m!1668865))

(declare-fun m!1668867 () Bool)

(assert (=> b!1446641 m!1668867))

(declare-fun m!1668869 () Bool)

(assert (=> b!1446641 m!1668869))

(assert (=> b!1446641 m!1668831))

(declare-fun m!1668871 () Bool)

(assert (=> b!1446641 m!1668871))

(assert (=> b!1446641 m!1668153))

(assert (=> b!1446641 m!1668841))

(declare-fun m!1668873 () Bool)

(assert (=> b!1446641 m!1668873))

(declare-fun m!1668875 () Bool)

(assert (=> b!1446641 m!1668875))

(declare-fun m!1668877 () Bool)

(assert (=> b!1446641 m!1668877))

(assert (=> b!1446641 m!1664099))

(assert (=> b!1446641 m!1668817))

(assert (=> b!1446641 m!1668861))

(assert (=> b!1446641 m!1668825))

(assert (=> b!1446641 m!1668837))

(assert (=> b!1446641 m!1668841))

(assert (=> b!1446641 m!1668817))

(assert (=> b!1446641 m!1668813))

(assert (=> b!1446641 m!1668153))

(assert (=> b!1446641 m!1668855))

(assert (=> b!1446641 m!1668151))

(declare-fun m!1668879 () Bool)

(assert (=> b!1446641 m!1668879))

(assert (=> b!1446641 m!1668855))

(declare-fun m!1668881 () Bool)

(assert (=> b!1446641 m!1668881))

(assert (=> b!1446641 m!1668849))

(declare-fun m!1668883 () Bool)

(assert (=> b!1446641 m!1668883))

(assert (=> b!1446641 m!1668883))

(declare-fun m!1668885 () Bool)

(assert (=> b!1446641 m!1668885))

(assert (=> b!1446641 m!1668151))

(assert (=> b!1446641 m!1668153))

(assert (=> b!1446641 m!1668841))

(declare-fun m!1668887 () Bool)

(assert (=> b!1446641 m!1668887))

(assert (=> b!1446642 m!1664099))

(assert (=> b!1446642 m!1668817))

(assert (=> b!1446642 m!1668817))

(assert (=> b!1446642 m!1668813))

(assert (=> b!1446642 m!1668813))

(assert (=> b!1446642 m!1668815))

(declare-fun m!1668889 () Bool)

(assert (=> b!1446642 m!1668889))

(assert (=> d!419031 d!419935))

(assert (=> d!419031 d!419093))

(declare-fun d!419937 () Bool)

(declare-fun res!654960 () Bool)

(declare-fun e!922830 () Bool)

(assert (=> d!419937 (=> (not res!654960) (not e!922830))))

(assert (=> d!419937 (= res!654960 (<= (size!12290 (list!5980 (xs!7838 (c!238014 (tokens!2014 thiss!10022))))) 512))))

(assert (=> d!419937 (= (inv!19960 (c!238014 (tokens!2014 thiss!10022))) e!922830)))

(declare-fun b!1446643 () Bool)

(declare-fun res!654961 () Bool)

(assert (=> b!1446643 (=> (not res!654961) (not e!922830))))

(assert (=> b!1446643 (= res!654961 (= (csize!10425 (c!238014 (tokens!2014 thiss!10022))) (size!12290 (list!5980 (xs!7838 (c!238014 (tokens!2014 thiss!10022)))))))))

(declare-fun b!1446644 () Bool)

(assert (=> b!1446644 (= e!922830 (and (> (csize!10425 (c!238014 (tokens!2014 thiss!10022))) 0) (<= (csize!10425 (c!238014 (tokens!2014 thiss!10022))) 512)))))

(assert (= (and d!419937 res!654960) b!1446643))

(assert (= (and b!1446643 res!654961) b!1446644))

(assert (=> d!419937 m!1668791))

(assert (=> d!419937 m!1668791))

(declare-fun m!1668891 () Bool)

(assert (=> d!419937 m!1668891))

(assert (=> b!1446643 m!1668791))

(assert (=> b!1446643 m!1668791))

(assert (=> b!1446643 m!1668891))

(assert (=> b!1445070 d!419937))

(declare-fun d!419939 () Bool)

(declare-fun c!238422 () Bool)

(assert (=> d!419939 (= c!238422 ((_ is Node!5096) (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))) (value!84745 (h!20393 lt!496943))))))))

(declare-fun e!922835 () Bool)

(assert (=> d!419939 (= (inv!19962 (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))) (value!84745 (h!20393 lt!496943))))) e!922835)))

(declare-fun b!1446651 () Bool)

(declare-fun inv!19967 (Conc!5096) Bool)

(assert (=> b!1446651 (= e!922835 (inv!19967 (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))) (value!84745 (h!20393 lt!496943))))))))

(declare-fun b!1446652 () Bool)

(declare-fun e!922836 () Bool)

(assert (=> b!1446652 (= e!922835 e!922836)))

(declare-fun res!654964 () Bool)

(assert (=> b!1446652 (= res!654964 (not ((_ is Leaf!7615) (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))) (value!84745 (h!20393 lt!496943)))))))))

(assert (=> b!1446652 (=> res!654964 e!922836)))

(declare-fun b!1446653 () Bool)

(declare-fun inv!19968 (Conc!5096) Bool)

(assert (=> b!1446653 (= e!922836 (inv!19968 (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))) (value!84745 (h!20393 lt!496943))))))))

(assert (= (and d!419939 c!238422) b!1446651))

(assert (= (and d!419939 (not c!238422)) b!1446652))

(assert (= (and b!1446652 (not res!654964)) b!1446653))

(declare-fun m!1668893 () Bool)

(assert (=> b!1446651 m!1668893))

(declare-fun m!1668895 () Bool)

(assert (=> b!1446653 m!1668895))

(assert (=> b!1445276 d!419939))

(declare-fun b!1446667 () Bool)

(declare-fun b_free!35831 () Bool)

(declare-fun b_next!36535 () Bool)

(assert (=> b!1446667 (= b_free!35831 (not b_next!36535))))

(declare-fun tp!407898 () Bool)

(declare-fun b_and!97895 () Bool)

(assert (=> b!1446667 (= tp!407898 b_and!97895)))

(declare-fun b_free!35833 () Bool)

(declare-fun b_next!36537 () Bool)

(assert (=> b!1446667 (= b_free!35833 (not b_next!36537))))

(declare-fun t!130297 () Bool)

(declare-fun tb!78745 () Bool)

(assert (=> (and b!1446667 (= (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 other!32)))))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496941)))))) t!130297) tb!78745))

(declare-fun result!95174 () Bool)

(assert (= result!95174 result!95102))

(assert (=> d!419599 t!130297))

(declare-fun t!130299 () Bool)

(declare-fun tb!78747 () Bool)

(assert (=> (and b!1446667 (= (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 other!32)))))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943))))) t!130299) tb!78747))

(declare-fun result!95176 () Bool)

(assert (= result!95176 result!95072))

(assert (=> d!419021 t!130299))

(declare-fun t!130301 () Bool)

(declare-fun tb!78749 () Bool)

(assert (=> (and b!1446667 (= (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 other!32)))))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496941))))) t!130301) tb!78749))

(declare-fun result!95178 () Bool)

(assert (= result!95178 result!95090))

(assert (=> d!419379 t!130301))

(declare-fun t!130303 () Bool)

(declare-fun tb!78751 () Bool)

(assert (=> (and b!1446667 (= (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 other!32)))))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496934))))) t!130303) tb!78751))

(declare-fun result!95180 () Bool)

(assert (= result!95180 result!95168))

(assert (=> d!419895 t!130303))

(declare-fun t!130305 () Bool)

(declare-fun tb!78753 () Bool)

(assert (=> (and b!1446667 (= (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 other!32)))))))) (toChars!3801 (transformation!2635 (rule!4406 (apply!3865 (tokens!2014 other!32) 0))))) t!130305) tb!78753))

(declare-fun result!95182 () Bool)

(assert (= result!95182 result!95164))

(assert (=> d!419789 t!130305))

(declare-fun tb!78755 () Bool)

(declare-fun t!130307 () Bool)

(assert (=> (and b!1446667 (= (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 other!32)))))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496943)))))) t!130307) tb!78755))

(declare-fun result!95184 () Bool)

(assert (= result!95184 result!95086))

(assert (=> d!419217 t!130307))

(declare-fun tp!407901 () Bool)

(declare-fun b_and!97897 () Bool)

(assert (=> b!1446667 (= tp!407901 (and (=> t!130305 result!95182) (=> t!130297 result!95174) (=> t!130299 result!95176) (=> t!130301 result!95178) (=> t!130303 result!95180) (=> t!130307 result!95184) b_and!97897))))

(declare-fun tp!407902 () Bool)

(declare-fun b!1446664 () Bool)

(declare-fun e!922851 () Bool)

(declare-fun e!922853 () Bool)

(declare-fun inv!19969 (Token!4932) Bool)

(assert (=> b!1446664 (= e!922853 (and (inv!19969 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 other!32)))))) e!922851 tp!407902))))

(declare-fun tp!407899 () Bool)

(declare-fun b!1446665 () Bool)

(declare-fun e!922854 () Bool)

(declare-fun inv!21 (TokenValue!2725) Bool)

(assert (=> b!1446665 (= e!922851 (and (inv!21 (value!84745 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 other!32))))))) e!922854 tp!407899))))

(assert (=> b!1445260 (= tp!407784 e!922853)))

(declare-fun tp!407900 () Bool)

(declare-fun e!922852 () Bool)

(declare-fun b!1446666 () Bool)

(assert (=> b!1446666 (= e!922854 (and tp!407900 (inv!19946 (tag!2899 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 other!32)))))))) (inv!19964 (transformation!2635 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 other!32)))))))) e!922852))))

(assert (=> b!1446667 (= e!922852 (and tp!407898 tp!407901))))

(assert (= b!1446666 b!1446667))

(assert (= b!1446665 b!1446666))

(assert (= b!1446664 b!1446665))

(assert (= (and b!1445260 ((_ is Cons!14992) (innerList!5157 (xs!7838 (c!238014 (tokens!2014 other!32)))))) b!1446664))

(declare-fun m!1668897 () Bool)

(assert (=> b!1446664 m!1668897))

(declare-fun m!1668899 () Bool)

(assert (=> b!1446665 m!1668899))

(declare-fun m!1668901 () Bool)

(assert (=> b!1446666 m!1668901))

(declare-fun m!1668903 () Bool)

(assert (=> b!1446666 m!1668903))

(declare-fun b!1446678 () Bool)

(declare-fun e!922857 () Bool)

(declare-fun tp_is_empty!6855 () Bool)

(assert (=> b!1446678 (= e!922857 tp_is_empty!6855)))

(assert (=> b!1445270 (= tp!407795 e!922857)))

(declare-fun b!1446680 () Bool)

(declare-fun tp!407917 () Bool)

(assert (=> b!1446680 (= e!922857 tp!407917)))

(declare-fun b!1446679 () Bool)

(declare-fun tp!407915 () Bool)

(declare-fun tp!407914 () Bool)

(assert (=> b!1446679 (= e!922857 (and tp!407915 tp!407914))))

(declare-fun b!1446681 () Bool)

(declare-fun tp!407913 () Bool)

(declare-fun tp!407916 () Bool)

(assert (=> b!1446681 (= e!922857 (and tp!407913 tp!407916))))

(assert (= (and b!1445270 ((_ is ElementMatch!3949) (regex!2635 (h!20394 (rules!11498 thiss!10022))))) b!1446678))

(assert (= (and b!1445270 ((_ is Concat!6675) (regex!2635 (h!20394 (rules!11498 thiss!10022))))) b!1446679))

(assert (= (and b!1445270 ((_ is Star!3949) (regex!2635 (h!20394 (rules!11498 thiss!10022))))) b!1446680))

(assert (= (and b!1445270 ((_ is Union!3949) (regex!2635 (h!20394 (rules!11498 thiss!10022))))) b!1446681))

(declare-fun b!1446684 () Bool)

(declare-fun b_free!35835 () Bool)

(declare-fun b_next!36539 () Bool)

(assert (=> b!1446684 (= b_free!35835 (not b_next!36539))))

(declare-fun tp!407920 () Bool)

(declare-fun b_and!97899 () Bool)

(assert (=> b!1446684 (= tp!407920 b_and!97899)))

(declare-fun b_free!35837 () Bool)

(declare-fun b_next!36541 () Bool)

(assert (=> b!1446684 (= b_free!35837 (not b_next!36541))))

(declare-fun t!130309 () Bool)

(declare-fun tb!78757 () Bool)

(assert (=> (and b!1446684 (= (toChars!3801 (transformation!2635 (h!20394 (t!130178 (rules!11498 thiss!10022))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496941)))))) t!130309) tb!78757))

(declare-fun result!95188 () Bool)

(assert (= result!95188 result!95102))

(assert (=> d!419599 t!130309))

(declare-fun t!130311 () Bool)

(declare-fun tb!78759 () Bool)

(assert (=> (and b!1446684 (= (toChars!3801 (transformation!2635 (h!20394 (t!130178 (rules!11498 thiss!10022))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943))))) t!130311) tb!78759))

(declare-fun result!95190 () Bool)

(assert (= result!95190 result!95072))

(assert (=> d!419021 t!130311))

(declare-fun t!130313 () Bool)

(declare-fun tb!78761 () Bool)

(assert (=> (and b!1446684 (= (toChars!3801 (transformation!2635 (h!20394 (t!130178 (rules!11498 thiss!10022))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496941))))) t!130313) tb!78761))

(declare-fun result!95192 () Bool)

(assert (= result!95192 result!95090))

(assert (=> d!419379 t!130313))

(declare-fun tb!78763 () Bool)

(declare-fun t!130315 () Bool)

(assert (=> (and b!1446684 (= (toChars!3801 (transformation!2635 (h!20394 (t!130178 (rules!11498 thiss!10022))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496934))))) t!130315) tb!78763))

(declare-fun result!95194 () Bool)

(assert (= result!95194 result!95168))

(assert (=> d!419895 t!130315))

(declare-fun tb!78765 () Bool)

(declare-fun t!130317 () Bool)

(assert (=> (and b!1446684 (= (toChars!3801 (transformation!2635 (h!20394 (t!130178 (rules!11498 thiss!10022))))) (toChars!3801 (transformation!2635 (rule!4406 (apply!3865 (tokens!2014 other!32) 0))))) t!130317) tb!78765))

(declare-fun result!95196 () Bool)

(assert (= result!95196 result!95164))

(assert (=> d!419789 t!130317))

(declare-fun tb!78767 () Bool)

(declare-fun t!130319 () Bool)

(assert (=> (and b!1446684 (= (toChars!3801 (transformation!2635 (h!20394 (t!130178 (rules!11498 thiss!10022))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496943)))))) t!130319) tb!78767))

(declare-fun result!95198 () Bool)

(assert (= result!95198 result!95086))

(assert (=> d!419217 t!130319))

(declare-fun b_and!97901 () Bool)

(declare-fun tp!407921 () Bool)

(assert (=> b!1446684 (= tp!407921 (and (=> t!130319 result!95198) (=> t!130311 result!95190) (=> t!130317 result!95196) (=> t!130309 result!95188) (=> t!130315 result!95194) (=> t!130313 result!95192) b_and!97901))))

(declare-fun e!922860 () Bool)

(assert (=> b!1446684 (= e!922860 (and tp!407920 tp!407921))))

(declare-fun b!1446683 () Bool)

(declare-fun tp!407918 () Bool)

(declare-fun e!922858 () Bool)

(assert (=> b!1446683 (= e!922858 (and tp!407918 (inv!19946 (tag!2899 (h!20394 (t!130178 (rules!11498 thiss!10022))))) (inv!19964 (transformation!2635 (h!20394 (t!130178 (rules!11498 thiss!10022))))) e!922860))))

(declare-fun b!1446682 () Bool)

(declare-fun e!922861 () Bool)

(declare-fun tp!407919 () Bool)

(assert (=> b!1446682 (= e!922861 (and e!922858 tp!407919))))

(assert (=> b!1445269 (= tp!407796 e!922861)))

(assert (= b!1446683 b!1446684))

(assert (= b!1446682 b!1446683))

(assert (= (and b!1445269 ((_ is Cons!14993) (t!130178 (rules!11498 thiss!10022)))) b!1446682))

(declare-fun m!1668905 () Bool)

(assert (=> b!1446683 m!1668905))

(declare-fun m!1668907 () Bool)

(assert (=> b!1446683 m!1668907))

(declare-fun tp!407923 () Bool)

(declare-fun e!922863 () Bool)

(declare-fun tp!407924 () Bool)

(declare-fun b!1446685 () Bool)

(assert (=> b!1446685 (= e!922863 (and (inv!19950 (left!12765 (left!12765 (c!238014 (tokens!2014 other!32))))) tp!407923 (inv!19950 (right!13095 (left!12765 (c!238014 (tokens!2014 other!32))))) tp!407924))))

(declare-fun b!1446687 () Bool)

(declare-fun e!922862 () Bool)

(declare-fun tp!407922 () Bool)

(assert (=> b!1446687 (= e!922862 tp!407922)))

(declare-fun b!1446686 () Bool)

(assert (=> b!1446686 (= e!922863 (and (inv!19961 (xs!7838 (left!12765 (c!238014 (tokens!2014 other!32))))) e!922862))))

(assert (=> b!1445258 (= tp!407785 (and (inv!19950 (left!12765 (c!238014 (tokens!2014 other!32)))) e!922863))))

(assert (= (and b!1445258 ((_ is Node!5097) (left!12765 (c!238014 (tokens!2014 other!32))))) b!1446685))

(assert (= b!1446686 b!1446687))

(assert (= (and b!1445258 ((_ is Leaf!7616) (left!12765 (c!238014 (tokens!2014 other!32))))) b!1446686))

(declare-fun m!1668909 () Bool)

(assert (=> b!1446685 m!1668909))

(declare-fun m!1668911 () Bool)

(assert (=> b!1446685 m!1668911))

(declare-fun m!1668913 () Bool)

(assert (=> b!1446686 m!1668913))

(assert (=> b!1445258 m!1664919))

(declare-fun e!922865 () Bool)

(declare-fun tp!407926 () Bool)

(declare-fun tp!407927 () Bool)

(declare-fun b!1446688 () Bool)

(assert (=> b!1446688 (= e!922865 (and (inv!19950 (left!12765 (right!13095 (c!238014 (tokens!2014 other!32))))) tp!407926 (inv!19950 (right!13095 (right!13095 (c!238014 (tokens!2014 other!32))))) tp!407927))))

(declare-fun b!1446690 () Bool)

(declare-fun e!922864 () Bool)

(declare-fun tp!407925 () Bool)

(assert (=> b!1446690 (= e!922864 tp!407925)))

(declare-fun b!1446689 () Bool)

(assert (=> b!1446689 (= e!922865 (and (inv!19961 (xs!7838 (right!13095 (c!238014 (tokens!2014 other!32))))) e!922864))))

(assert (=> b!1445258 (= tp!407786 (and (inv!19950 (right!13095 (c!238014 (tokens!2014 other!32)))) e!922865))))

(assert (= (and b!1445258 ((_ is Node!5097) (right!13095 (c!238014 (tokens!2014 other!32))))) b!1446688))

(assert (= b!1446689 b!1446690))

(assert (= (and b!1445258 ((_ is Leaf!7616) (right!13095 (c!238014 (tokens!2014 other!32))))) b!1446689))

(declare-fun m!1668915 () Bool)

(assert (=> b!1446688 m!1668915))

(declare-fun m!1668917 () Bool)

(assert (=> b!1446688 m!1668917))

(declare-fun m!1668919 () Bool)

(assert (=> b!1446689 m!1668919))

(assert (=> b!1445258 m!1664921))

(declare-fun b!1446694 () Bool)

(declare-fun b_free!35839 () Bool)

(declare-fun b_next!36543 () Bool)

(assert (=> b!1446694 (= b_free!35839 (not b_next!36543))))

(declare-fun tp!407928 () Bool)

(declare-fun b_and!97903 () Bool)

(assert (=> b!1446694 (= tp!407928 b_and!97903)))

(declare-fun b_free!35841 () Bool)

(declare-fun b_next!36545 () Bool)

(assert (=> b!1446694 (= b_free!35841 (not b_next!36545))))

(declare-fun tb!78769 () Bool)

(declare-fun t!130321 () Bool)

(assert (=> (and b!1446694 (= (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 thiss!10022)))))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496941)))))) t!130321) tb!78769))

(declare-fun result!95200 () Bool)

(assert (= result!95200 result!95102))

(assert (=> d!419599 t!130321))

(declare-fun t!130323 () Bool)

(declare-fun tb!78771 () Bool)

(assert (=> (and b!1446694 (= (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 thiss!10022)))))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943))))) t!130323) tb!78771))

(declare-fun result!95202 () Bool)

(assert (= result!95202 result!95072))

(assert (=> d!419021 t!130323))

(declare-fun t!130325 () Bool)

(declare-fun tb!78773 () Bool)

(assert (=> (and b!1446694 (= (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 thiss!10022)))))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496941))))) t!130325) tb!78773))

(declare-fun result!95204 () Bool)

(assert (= result!95204 result!95090))

(assert (=> d!419379 t!130325))

(declare-fun t!130327 () Bool)

(declare-fun tb!78775 () Bool)

(assert (=> (and b!1446694 (= (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 thiss!10022)))))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496934))))) t!130327) tb!78775))

(declare-fun result!95206 () Bool)

(assert (= result!95206 result!95168))

(assert (=> d!419895 t!130327))

(declare-fun t!130329 () Bool)

(declare-fun tb!78777 () Bool)

(assert (=> (and b!1446694 (= (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 thiss!10022)))))))) (toChars!3801 (transformation!2635 (rule!4406 (apply!3865 (tokens!2014 other!32) 0))))) t!130329) tb!78777))

(declare-fun result!95208 () Bool)

(assert (= result!95208 result!95164))

(assert (=> d!419789 t!130329))

(declare-fun tb!78779 () Bool)

(declare-fun t!130331 () Bool)

(assert (=> (and b!1446694 (= (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 thiss!10022)))))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496943)))))) t!130331) tb!78779))

(declare-fun result!95210 () Bool)

(assert (= result!95210 result!95086))

(assert (=> d!419217 t!130331))

(declare-fun b_and!97905 () Bool)

(declare-fun tp!407931 () Bool)

(assert (=> b!1446694 (= tp!407931 (and (=> t!130331 result!95210) (=> t!130329 result!95208) (=> t!130325 result!95204) (=> t!130327 result!95206) (=> t!130321 result!95200) (=> t!130323 result!95202) b_and!97905))))

(declare-fun b!1446691 () Bool)

(declare-fun e!922868 () Bool)

(declare-fun tp!407932 () Bool)

(declare-fun e!922870 () Bool)

(assert (=> b!1446691 (= e!922870 (and (inv!19969 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 thiss!10022)))))) e!922868 tp!407932))))

(declare-fun tp!407929 () Bool)

(declare-fun e!922871 () Bool)

(declare-fun b!1446692 () Bool)

(assert (=> b!1446692 (= e!922868 (and (inv!21 (value!84745 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 thiss!10022))))))) e!922871 tp!407929))))

(assert (=> b!1445279 (= tp!407802 e!922870)))

(declare-fun tp!407930 () Bool)

(declare-fun b!1446693 () Bool)

(declare-fun e!922869 () Bool)

(assert (=> b!1446693 (= e!922871 (and tp!407930 (inv!19946 (tag!2899 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 thiss!10022)))))))) (inv!19964 (transformation!2635 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 thiss!10022)))))))) e!922869))))

(assert (=> b!1446694 (= e!922869 (and tp!407928 tp!407931))))

(assert (= b!1446693 b!1446694))

(assert (= b!1446692 b!1446693))

(assert (= b!1446691 b!1446692))

(assert (= (and b!1445279 ((_ is Cons!14992) (innerList!5157 (xs!7838 (c!238014 (tokens!2014 thiss!10022)))))) b!1446691))

(declare-fun m!1668921 () Bool)

(assert (=> b!1446691 m!1668921))

(declare-fun m!1668923 () Bool)

(assert (=> b!1446692 m!1668923))

(declare-fun m!1668925 () Bool)

(assert (=> b!1446693 m!1668925))

(declare-fun m!1668927 () Bool)

(assert (=> b!1446693 m!1668927))

(declare-fun b!1446695 () Bool)

(declare-fun tp!407934 () Bool)

(declare-fun e!922873 () Bool)

(declare-fun tp!407935 () Bool)

(assert (=> b!1446695 (= e!922873 (and (inv!19950 (left!12765 (left!12765 (c!238014 (tokens!2014 thiss!10022))))) tp!407934 (inv!19950 (right!13095 (left!12765 (c!238014 (tokens!2014 thiss!10022))))) tp!407935))))

(declare-fun b!1446697 () Bool)

(declare-fun e!922872 () Bool)

(declare-fun tp!407933 () Bool)

(assert (=> b!1446697 (= e!922872 tp!407933)))

(declare-fun b!1446696 () Bool)

(assert (=> b!1446696 (= e!922873 (and (inv!19961 (xs!7838 (left!12765 (c!238014 (tokens!2014 thiss!10022))))) e!922872))))

(assert (=> b!1445277 (= tp!407803 (and (inv!19950 (left!12765 (c!238014 (tokens!2014 thiss!10022)))) e!922873))))

(assert (= (and b!1445277 ((_ is Node!5097) (left!12765 (c!238014 (tokens!2014 thiss!10022))))) b!1446695))

(assert (= b!1446696 b!1446697))

(assert (= (and b!1445277 ((_ is Leaf!7616) (left!12765 (c!238014 (tokens!2014 thiss!10022))))) b!1446696))

(declare-fun m!1668929 () Bool)

(assert (=> b!1446695 m!1668929))

(declare-fun m!1668931 () Bool)

(assert (=> b!1446695 m!1668931))

(declare-fun m!1668933 () Bool)

(assert (=> b!1446696 m!1668933))

(assert (=> b!1445277 m!1664933))

(declare-fun tp!407937 () Bool)

(declare-fun tp!407938 () Bool)

(declare-fun e!922875 () Bool)

(declare-fun b!1446698 () Bool)

(assert (=> b!1446698 (= e!922875 (and (inv!19950 (left!12765 (right!13095 (c!238014 (tokens!2014 thiss!10022))))) tp!407937 (inv!19950 (right!13095 (right!13095 (c!238014 (tokens!2014 thiss!10022))))) tp!407938))))

(declare-fun b!1446700 () Bool)

(declare-fun e!922874 () Bool)

(declare-fun tp!407936 () Bool)

(assert (=> b!1446700 (= e!922874 tp!407936)))

(declare-fun b!1446699 () Bool)

(assert (=> b!1446699 (= e!922875 (and (inv!19961 (xs!7838 (right!13095 (c!238014 (tokens!2014 thiss!10022))))) e!922874))))

(assert (=> b!1445277 (= tp!407804 (and (inv!19950 (right!13095 (c!238014 (tokens!2014 thiss!10022)))) e!922875))))

(assert (= (and b!1445277 ((_ is Node!5097) (right!13095 (c!238014 (tokens!2014 thiss!10022))))) b!1446698))

(assert (= b!1446699 b!1446700))

(assert (= (and b!1445277 ((_ is Leaf!7616) (right!13095 (c!238014 (tokens!2014 thiss!10022))))) b!1446699))

(declare-fun m!1668935 () Bool)

(assert (=> b!1446698 m!1668935))

(declare-fun m!1668937 () Bool)

(assert (=> b!1446698 m!1668937))

(declare-fun m!1668939 () Bool)

(assert (=> b!1446699 m!1668939))

(assert (=> b!1445277 m!1664935))

(declare-fun b!1446703 () Bool)

(declare-fun b_free!35843 () Bool)

(declare-fun b_next!36547 () Bool)

(assert (=> b!1446703 (= b_free!35843 (not b_next!36547))))

(declare-fun tp!407941 () Bool)

(declare-fun b_and!97907 () Bool)

(assert (=> b!1446703 (= tp!407941 b_and!97907)))

(declare-fun b_free!35845 () Bool)

(declare-fun b_next!36549 () Bool)

(assert (=> b!1446703 (= b_free!35845 (not b_next!36549))))

(declare-fun t!130333 () Bool)

(declare-fun tb!78781 () Bool)

(assert (=> (and b!1446703 (= (toChars!3801 (transformation!2635 (h!20394 (t!130178 (rules!11498 other!32))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496941)))))) t!130333) tb!78781))

(declare-fun result!95212 () Bool)

(assert (= result!95212 result!95102))

(assert (=> d!419599 t!130333))

(declare-fun t!130335 () Bool)

(declare-fun tb!78783 () Bool)

(assert (=> (and b!1446703 (= (toChars!3801 (transformation!2635 (h!20394 (t!130178 (rules!11498 other!32))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943))))) t!130335) tb!78783))

(declare-fun result!95214 () Bool)

(assert (= result!95214 result!95072))

(assert (=> d!419021 t!130335))

(declare-fun t!130337 () Bool)

(declare-fun tb!78785 () Bool)

(assert (=> (and b!1446703 (= (toChars!3801 (transformation!2635 (h!20394 (t!130178 (rules!11498 other!32))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496941))))) t!130337) tb!78785))

(declare-fun result!95216 () Bool)

(assert (= result!95216 result!95090))

(assert (=> d!419379 t!130337))

(declare-fun tb!78787 () Bool)

(declare-fun t!130339 () Bool)

(assert (=> (and b!1446703 (= (toChars!3801 (transformation!2635 (h!20394 (t!130178 (rules!11498 other!32))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496934))))) t!130339) tb!78787))

(declare-fun result!95218 () Bool)

(assert (= result!95218 result!95168))

(assert (=> d!419895 t!130339))

(declare-fun t!130341 () Bool)

(declare-fun tb!78789 () Bool)

(assert (=> (and b!1446703 (= (toChars!3801 (transformation!2635 (h!20394 (t!130178 (rules!11498 other!32))))) (toChars!3801 (transformation!2635 (rule!4406 (apply!3865 (tokens!2014 other!32) 0))))) t!130341) tb!78789))

(declare-fun result!95220 () Bool)

(assert (= result!95220 result!95164))

(assert (=> d!419789 t!130341))

(declare-fun t!130343 () Bool)

(declare-fun tb!78791 () Bool)

(assert (=> (and b!1446703 (= (toChars!3801 (transformation!2635 (h!20394 (t!130178 (rules!11498 other!32))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (t!130177 lt!496943)))))) t!130343) tb!78791))

(declare-fun result!95222 () Bool)

(assert (= result!95222 result!95086))

(assert (=> d!419217 t!130343))

(declare-fun b_and!97909 () Bool)

(declare-fun tp!407942 () Bool)

(assert (=> b!1446703 (= tp!407942 (and (=> t!130333 result!95212) (=> t!130339 result!95218) (=> t!130335 result!95214) (=> t!130337 result!95216) (=> t!130341 result!95220) (=> t!130343 result!95222) b_and!97909))))

(declare-fun e!922878 () Bool)

(assert (=> b!1446703 (= e!922878 (and tp!407941 tp!407942))))

(declare-fun e!922876 () Bool)

(declare-fun tp!407939 () Bool)

(declare-fun b!1446702 () Bool)

(assert (=> b!1446702 (= e!922876 (and tp!407939 (inv!19946 (tag!2899 (h!20394 (t!130178 (rules!11498 other!32))))) (inv!19964 (transformation!2635 (h!20394 (t!130178 (rules!11498 other!32))))) e!922878))))

(declare-fun b!1446701 () Bool)

(declare-fun e!922879 () Bool)

(declare-fun tp!407940 () Bool)

(assert (=> b!1446701 (= e!922879 (and e!922876 tp!407940))))

(assert (=> b!1445280 (= tp!407806 e!922879)))

(assert (= b!1446702 b!1446703))

(assert (= b!1446701 b!1446702))

(assert (= (and b!1445280 ((_ is Cons!14993) (t!130178 (rules!11498 other!32)))) b!1446701))

(declare-fun m!1668941 () Bool)

(assert (=> b!1446702 m!1668941))

(declare-fun m!1668943 () Bool)

(assert (=> b!1446702 m!1668943))

(declare-fun e!922885 () Bool)

(declare-fun b!1446712 () Bool)

(declare-fun tp!407951 () Bool)

(declare-fun tp!407950 () Bool)

(assert (=> b!1446712 (= e!922885 (and (inv!19962 (left!12764 (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))) (value!84745 (h!20393 lt!496943)))))) tp!407951 (inv!19962 (right!13094 (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))) (value!84745 (h!20393 lt!496943)))))) tp!407950))))

(declare-fun b!1446714 () Bool)

(declare-fun e!922884 () Bool)

(declare-fun tp!407949 () Bool)

(assert (=> b!1446714 (= e!922884 tp!407949)))

(declare-fun b!1446713 () Bool)

(declare-fun inv!19970 (IArray!10197) Bool)

(assert (=> b!1446713 (= e!922885 (and (inv!19970 (xs!7837 (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))) (value!84745 (h!20393 lt!496943)))))) e!922884))))

(assert (=> b!1445276 (= tp!407801 (and (inv!19962 (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))) (value!84745 (h!20393 lt!496943))))) e!922885))))

(assert (= (and b!1445276 ((_ is Node!5096) (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))) (value!84745 (h!20393 lt!496943)))))) b!1446712))

(assert (= b!1446713 b!1446714))

(assert (= (and b!1445276 ((_ is Leaf!7615) (c!238012 (dynLambda!6841 (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))) (value!84745 (h!20393 lt!496943)))))) b!1446713))

(declare-fun m!1668945 () Bool)

(assert (=> b!1446712 m!1668945))

(declare-fun m!1668947 () Bool)

(assert (=> b!1446712 m!1668947))

(declare-fun m!1668949 () Bool)

(assert (=> b!1446713 m!1668949))

(assert (=> b!1445276 m!1664925))

(declare-fun b!1446715 () Bool)

(declare-fun e!922886 () Bool)

(assert (=> b!1446715 (= e!922886 tp_is_empty!6855)))

(assert (=> b!1445281 (= tp!407805 e!922886)))

(declare-fun b!1446717 () Bool)

(declare-fun tp!407956 () Bool)

(assert (=> b!1446717 (= e!922886 tp!407956)))

(declare-fun b!1446716 () Bool)

(declare-fun tp!407954 () Bool)

(declare-fun tp!407953 () Bool)

(assert (=> b!1446716 (= e!922886 (and tp!407954 tp!407953))))

(declare-fun b!1446718 () Bool)

(declare-fun tp!407952 () Bool)

(declare-fun tp!407955 () Bool)

(assert (=> b!1446718 (= e!922886 (and tp!407952 tp!407955))))

(assert (= (and b!1445281 ((_ is ElementMatch!3949) (regex!2635 (h!20394 (rules!11498 other!32))))) b!1446715))

(assert (= (and b!1445281 ((_ is Concat!6675) (regex!2635 (h!20394 (rules!11498 other!32))))) b!1446716))

(assert (= (and b!1445281 ((_ is Star!3949) (regex!2635 (h!20394 (rules!11498 other!32))))) b!1446717))

(assert (= (and b!1445281 ((_ is Union!3949) (regex!2635 (h!20394 (rules!11498 other!32))))) b!1446718))

(declare-fun b_lambda!45173 () Bool)

(assert (= b_lambda!45147 (or (and b!1446667 b_free!35833 (= (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 other!32)))))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))))) (and b!1446703 b_free!35845 (= (toChars!3801 (transformation!2635 (h!20394 (t!130178 (rules!11498 other!32))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))))) (and b!1445271 b_free!35809 (= (toChars!3801 (transformation!2635 (h!20394 (rules!11498 thiss!10022)))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))))) (and b!1446684 b_free!35837 (= (toChars!3801 (transformation!2635 (h!20394 (t!130178 (rules!11498 thiss!10022))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))))) (and b!1445282 b_free!35813 (= (toChars!3801 (transformation!2635 (h!20394 (rules!11498 other!32)))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))))) (and b!1446694 b_free!35841 (= (toChars!3801 (transformation!2635 (rule!4406 (h!20393 (innerList!5157 (xs!7838 (c!238014 (tokens!2014 thiss!10022)))))))) (toChars!3801 (transformation!2635 (rule!4406 (h!20393 lt!496943)))))) b_lambda!45173)))

(check-sat (not bm!97802) (not b!1446513) (not d!419905) (not b!1446693) (not b!1445561) (not bm!97795) (not d!419861) (not b!1446254) (not b!1446625) (not b!1446512) (not b!1446602) (not d!419695) (not b!1445866) (not tb!78737) (not b!1446261) (not d!419585) (not b!1445515) (not b!1446527) (not d!419793) (not d!419365) (not b!1446276) (not d!419319) (not d!419797) (not b!1446089) (not b!1446681) (not b!1446228) (not d!419863) (not d!419257) (not d!419539) (not b!1445567) b_and!97895 (not d!419799) (not b!1446546) (not b!1446536) (not b!1445964) (not b!1445858) (not d!419597) tp_is_empty!6855 (not d!419785) (not b!1446653) (not b!1446576) (not b!1446406) (not b!1446162) (not b!1446500) b_and!97905 (not b!1446633) (not b!1445935) (not d!419823) (not b!1446099) (not d!419633) (not d!419581) (not d!419377) (not b!1445539) (not b!1446504) (not b!1445531) (not d!419885) (not b!1446470) (not b!1446255) (not d!419683) (not b!1446207) (not d!419743) (not b!1446516) (not tb!78665) (not b!1446695) (not b!1446696) (not d!419877) (not b!1446425) (not b_lambda!45155) (not b!1446598) (not b!1446245) (not b!1445962) (not b!1445534) (not b!1446120) (not b!1446400) (not b!1445863) (not b!1445839) (not b!1445710) (not b!1446717) (not b!1446413) (not d!419805) (not b!1446411) (not b!1445798) (not b!1446642) (not d!419391) (not d!419719) (not b!1445559) (not d!419821) (not b_next!36535) (not b!1445869) (not b!1445556) (not b!1446560) (not b!1446410) (not b!1446699) (not d!419831) (not b!1446209) b_and!97909 (not b!1446689) (not b!1446565) (not d!419219) (not b!1446596) (not b!1446184) (not b!1446712) (not b!1446564) (not b!1446639) (not d!419775) (not b!1445516) (not d!419207) (not b!1445540) (not b!1446581) (not d!419657) (not b!1446116) (not d!419271) (not b!1446263) (not b!1446205) (not b!1446446) (not b!1446542) (not d!419883) (not d!419561) (not bm!97797) (not b!1446114) (not b!1445277) (not d!419839) (not b!1445713) (not b!1445258) (not b!1445557) (not b!1446585) (not b!1446718) (not b!1446679) (not d!419619) (not b!1446376) (not b!1445851) (not b!1446604) (not b!1446714) (not b!1446256) (not d!419565) (not b_lambda!45173) (not b!1445563) (not b!1446161) (not b!1446590) (not b!1446304) (not d!419777) (not b!1446608) (not d!419845) b_and!97891 (not b!1446592) (not b!1446068) (not b!1445564) (not b!1446202) (not b!1446629) (not b!1446531) (not b!1446092) (not b!1446279) (not d!419253) (not b!1446415) (not d!419603) (not b!1446112) (not bm!97800) (not tb!78741) (not b_next!36545) (not b!1446396) (not b!1445511) (not b!1446479) (not b!1446449) (not b!1446435) (not b!1446635) (not b!1445545) (not b!1446502) (not b!1446556) (not d!419201) (not b!1445828) (not b!1446700) (not b!1446530) (not b!1446692) (not b!1446686) (not b!1445796) (not b_next!36541) (not d!419351) (not b!1445717) (not d!419389) (not b!1446244) (not b!1446253) (not d!419893) (not d!419261) (not d!419837) (not d!419781) (not b!1445847) (not b!1446665) (not b!1445832) (not b!1446067) (not b!1446713) (not b!1446589) (not d!419749) (not b!1445861) (not b!1446386) (not b!1446206) (not d!419895) (not b!1446230) (not b!1446094) (not b!1446552) (not b!1445855) (not b!1445380) (not b!1446680) (not d!419541) (not b!1445527) (not b!1446511) b_and!97831 (not b!1445709) (not b!1446373) (not d!419379) (not b!1445856) (not b!1446164) (not b!1445535) (not b!1446716) (not b!1446664) (not b!1446544) (not b!1446510) (not b!1446144) (not b!1445562) (not d!419283) (not d!419803) (not b!1446631) (not d!419639) (not d!419739) (not b!1446090) (not b!1445543) (not d!419833) (not b!1446577) (not d!419285) (not b!1445565) (not b!1446252) (not b!1446491) (not d!419545) (not d!419807) (not d!419783) (not b!1445276) (not b!1446554) (not d!419267) (not b!1446624) (not b!1446509) (not d!419209) (not b!1446595) (not d!419203) (not b!1445546) (not b!1446558) (not b!1445367) (not d!419269) (not d!419873) (not b!1445368) (not d!419917) (not b!1446537) (not b!1445803) (not b!1446620) (not b_next!36517) (not b!1446448) (not b!1446066) (not b_next!36511) (not b!1446100) (not d!419711) (not b!1446420) (not b!1446277) (not b!1446182) (not b!1445795) (not b!1446378) (not b!1445541) (not b!1445392) (not b!1446514) (not b!1446535) (not b!1446641) (not bm!97789) (not b!1446489) (not b!1446145) (not b!1446614) (not b!1445845) (not b!1446113) (not d!419713) (not b!1446146) (not b!1445944) (not b!1446688) (not b!1445398) (not b!1446447) (not b!1446204) (not bm!97776) (not b!1446247) (not d!419687) (not b!1446157) (not b_lambda!45163) (not b!1446691) (not d!419935) (not b!1446160) (not b!1445797) (not d!419453) (not bm!97796) (not b!1445868) (not b!1446615) (not b!1446613) (not b!1445951) (not b!1445510) (not b!1446697) b_and!97835 (not b!1445802) (not b!1446685) (not d!419829) (not d!419853) (not d!419277) (not b!1446698) (not b!1446377) (not b_next!36515) (not b!1446562) (not d!419363) b_and!97901 (not b!1446163) (not b_next!36547) (not d!419907) (not d!419323) (not b!1445508) (not b!1446683) (not d!419599) (not b!1446269) (not b!1446638) (not b!1446248) (not b!1446488) (not d!419279) (not d!419589) (not b!1446398) (not b_lambda!45157) (not b!1446702) (not b!1445829) (not b!1446586) (not b!1445514) (not b_lambda!45169) (not d!419827) (not b_lambda!45171) (not d!419871) (not b!1446152) (not d!419933) (not d!419813) (not b_next!36513) (not b!1445705) (not b!1445537) (not b!1445949) (not b!1446666) (not bm!97777) (not d!419529) (not d!419281) (not b!1445952) (not d!419791) (not b!1446583) (not d!419259) (not b!1446192) (not b_next!36539) (not b!1446477) (not b!1445526) (not b!1446278) (not b!1445859) (not d!419213) (not b!1446124) (not b!1445711) (not d!419321) b_and!97893 (not d!419275) (not b!1446095) (not bm!97778) (not b!1445538) (not d!419887) (not b!1446617) (not b!1446515) (not b!1446262) (not d!419787) (not b!1446622) (not b!1446424) (not b!1445395) (not b!1446593) (not b!1445827) (not d!419373) (not b!1446428) (not b!1445954) (not tb!78681) (not d!419915) (not b!1445555) (not d!419929) (not b!1446118) (not b!1446147) (not d!419593) (not b!1445394) (not b!1445831) (not b!1446375) (not b!1446584) (not d!419937) (not b_next!36549) (not tb!78669) (not b!1446651) (not b!1446687) (not b!1446117) (not b!1445566) (not b!1445864) (not d!419815) (not b!1446508) (not d!419361) b_and!97899 (not d!419685) (not d!419345) (not b!1446093) (not d!419255) (not b!1446540) (not bm!97801) (not d!419313) (not b!1445383) (not b!1445852) (not b!1446159) (not d!419217) (not b!1445381) (not d!419357) (not d!419591) (not b!1445528) (not d!419689) (not b!1446069) (not b!1446427) (not b!1446525) (not bm!97794) (not b!1446609) (not b!1446534) (not b!1445542) (not b!1445512) (not d!419693) (not b!1446468) b_and!97897 (not b!1446541) (not b!1446682) (not d!419703) (not b!1445826) (not b!1446165) (not b!1446690) (not b!1446628) (not d!419375) (not b!1446208) (not d!419661) (not d!419629) (not d!419643) (not d!419315) (not b!1446601) (not d!419881) (not d!419199) (not b!1446605) (not d!419879) (not b!1446643) (not b!1446503) (not b!1446517) (not b_next!36543) (not d!419741) (not d!419635) (not b!1446580) (not b!1445707) (not d!419817) (not d!419527) b_and!97907 (not b_next!36537) (not b!1446374) (not d!419691) (not b!1446437) (not b!1446251) (not b!1445836) (not b!1445513) (not b!1445849) (not d!419745) (not d!419349) (not b!1446408) (not b!1445960) (not d!419205) b_and!97903 (not d!419263) (not b!1446436) (not b!1446701) (not b!1446539) (not d!419789) (not d!419899) (not b!1446250) (not b!1446210) (not b!1445706) (not d!419891))
(check-sat b_and!97895 b_and!97905 b_and!97891 (not b_next!36545) (not b_next!36541) b_and!97831 (not b_next!36547) (not b_next!36513) (not b_next!36549) b_and!97899 b_and!97897 b_and!97903 (not b_next!36535) b_and!97909 (not b_next!36517) (not b_next!36511) b_and!97901 b_and!97835 (not b_next!36515) (not b_next!36539) b_and!97893 (not b_next!36537) (not b_next!36543) b_and!97907)
