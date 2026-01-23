; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!301270 () Bool)

(assert start!301270)

(declare-fun b!3208077 () Bool)

(declare-fun b_free!85305 () Bool)

(declare-fun b_next!86009 () Bool)

(assert (=> b!3208077 (= b_free!85305 (not b_next!86009))))

(declare-fun tp!1012932 () Bool)

(declare-fun b_and!213615 () Bool)

(assert (=> b!3208077 (= tp!1012932 b_and!213615)))

(declare-fun b_free!85307 () Bool)

(declare-fun b_next!86011 () Bool)

(assert (=> b!3208077 (= b_free!85307 (not b_next!86011))))

(declare-fun tp!1012933 () Bool)

(declare-fun b_and!213617 () Bool)

(assert (=> b!3208077 (= tp!1012933 b_and!213617)))

(declare-fun b!3208086 () Bool)

(declare-fun b_free!85309 () Bool)

(declare-fun b_next!86013 () Bool)

(assert (=> b!3208086 (= b_free!85309 (not b_next!86013))))

(declare-fun tp!1012928 () Bool)

(declare-fun b_and!213619 () Bool)

(assert (=> b!3208086 (= tp!1012928 b_and!213619)))

(declare-fun b_free!85311 () Bool)

(declare-fun b_next!86015 () Bool)

(assert (=> b!3208086 (= b_free!85311 (not b_next!86015))))

(declare-fun tp!1012939 () Bool)

(declare-fun b_and!213621 () Bool)

(assert (=> b!3208086 (= tp!1012939 b_and!213621)))

(declare-fun b!3208057 () Bool)

(declare-fun b_free!85313 () Bool)

(declare-fun b_next!86017 () Bool)

(assert (=> b!3208057 (= b_free!85313 (not b_next!86017))))

(declare-fun tp!1012940 () Bool)

(declare-fun b_and!213623 () Bool)

(assert (=> b!3208057 (= tp!1012940 b_and!213623)))

(declare-fun b_free!85315 () Bool)

(declare-fun b_next!86019 () Bool)

(assert (=> b!3208057 (= b_free!85315 (not b_next!86019))))

(declare-fun tp!1012937 () Bool)

(declare-fun b_and!213625 () Bool)

(assert (=> b!3208057 (= tp!1012937 b_and!213625)))

(declare-fun bs!541505 () Bool)

(declare-fun b!3208067 () Bool)

(declare-fun b!3208069 () Bool)

(assert (= bs!541505 (and b!3208067 b!3208069)))

(declare-fun lambda!117399 () Int)

(declare-fun lambda!117398 () Int)

(assert (=> bs!541505 (not (= lambda!117399 lambda!117398))))

(declare-fun b!3208104 () Bool)

(declare-fun e!2000264 () Bool)

(assert (=> b!3208104 (= e!2000264 true)))

(declare-fun b!3208103 () Bool)

(declare-fun e!2000263 () Bool)

(assert (=> b!3208103 (= e!2000263 e!2000264)))

(declare-fun b!3208102 () Bool)

(declare-fun e!2000262 () Bool)

(assert (=> b!3208102 (= e!2000262 e!2000263)))

(assert (=> b!3208067 e!2000262))

(assert (= b!3208103 b!3208104))

(assert (= b!3208102 b!3208103))

(declare-datatypes ((C!20136 0))(
  ( (C!20137 (val!12116 Int)) )
))
(declare-datatypes ((Regex!9975 0))(
  ( (ElementMatch!9975 (c!538874 C!20136)) (Concat!15421 (regOne!20462 Regex!9975) (regTwo!20462 Regex!9975)) (EmptyExpr!9975) (Star!9975 (reg!10304 Regex!9975)) (EmptyLang!9975) (Union!9975 (regOne!20463 Regex!9975) (regTwo!20463 Regex!9975)) )
))
(declare-datatypes ((List!36268 0))(
  ( (Nil!36144) (Cons!36144 (h!41564 (_ BitVec 16)) (t!238431 List!36268)) )
))
(declare-datatypes ((TokenValue!5446 0))(
  ( (FloatLiteralValue!10892 (text!38567 List!36268)) (TokenValueExt!5445 (__x!23109 Int)) (Broken!27230 (value!169090 List!36268)) (Object!5569) (End!5446) (Def!5446) (Underscore!5446) (Match!5446) (Else!5446) (Error!5446) (Case!5446) (If!5446) (Extends!5446) (Abstract!5446) (Class!5446) (Val!5446) (DelimiterValue!10892 (del!5506 List!36268)) (KeywordValue!5452 (value!169091 List!36268)) (CommentValue!10892 (value!169092 List!36268)) (WhitespaceValue!10892 (value!169093 List!36268)) (IndentationValue!5446 (value!169094 List!36268)) (String!40563) (Int32!5446) (Broken!27231 (value!169095 List!36268)) (Boolean!5447) (Unit!50601) (OperatorValue!5449 (op!5506 List!36268)) (IdentifierValue!10892 (value!169096 List!36268)) (IdentifierValue!10893 (value!169097 List!36268)) (WhitespaceValue!10893 (value!169098 List!36268)) (True!10892) (False!10892) (Broken!27232 (value!169099 List!36268)) (Broken!27233 (value!169100 List!36268)) (True!10893) (RightBrace!5446) (RightBracket!5446) (Colon!5446) (Null!5446) (Comma!5446) (LeftBracket!5446) (False!10893) (LeftBrace!5446) (ImaginaryLiteralValue!5446 (text!38568 List!36268)) (StringLiteralValue!16338 (value!169101 List!36268)) (EOFValue!5446 (value!169102 List!36268)) (IdentValue!5446 (value!169103 List!36268)) (DelimiterValue!10893 (value!169104 List!36268)) (DedentValue!5446 (value!169105 List!36268)) (NewLineValue!5446 (value!169106 List!36268)) (IntegerValue!16338 (value!169107 (_ BitVec 32)) (text!38569 List!36268)) (IntegerValue!16339 (value!169108 Int) (text!38570 List!36268)) (Times!5446) (Or!5446) (Equal!5446) (Minus!5446) (Broken!27234 (value!169109 List!36268)) (And!5446) (Div!5446) (LessEqual!5446) (Mod!5446) (Concat!15422) (Not!5446) (Plus!5446) (SpaceValue!5446 (value!169110 List!36268)) (IntegerValue!16340 (value!169111 Int) (text!38571 List!36268)) (StringLiteralValue!16339 (text!38572 List!36268)) (FloatLiteralValue!10893 (text!38573 List!36268)) (BytesLiteralValue!5446 (value!169112 List!36268)) (CommentValue!10893 (value!169113 List!36268)) (StringLiteralValue!16340 (value!169114 List!36268)) (ErrorTokenValue!5446 (msg!5507 List!36268)) )
))
(declare-datatypes ((List!36269 0))(
  ( (Nil!36145) (Cons!36145 (h!41565 C!20136) (t!238432 List!36269)) )
))
(declare-datatypes ((IArray!21619 0))(
  ( (IArray!21620 (innerList!10867 List!36269)) )
))
(declare-datatypes ((Conc!10807 0))(
  ( (Node!10807 (left!28097 Conc!10807) (right!28427 Conc!10807) (csize!21844 Int) (cheight!11018 Int)) (Leaf!17026 (xs!13925 IArray!21619) (csize!21845 Int)) (Empty!10807) )
))
(declare-datatypes ((BalanceConc!21228 0))(
  ( (BalanceConc!21229 (c!538875 Conc!10807)) )
))
(declare-datatypes ((String!40564 0))(
  ( (String!40565 (value!169115 String)) )
))
(declare-datatypes ((TokenValueInjection!10320 0))(
  ( (TokenValueInjection!10321 (toValue!7300 Int) (toChars!7159 Int)) )
))
(declare-datatypes ((Rule!10232 0))(
  ( (Rule!10233 (regex!5216 Regex!9975) (tag!5742 String!40564) (isSeparator!5216 Bool) (transformation!5216 TokenValueInjection!10320)) )
))
(declare-datatypes ((List!36270 0))(
  ( (Nil!36146) (Cons!36146 (h!41566 Rule!10232) (t!238433 List!36270)) )
))
(declare-fun rules!2135 () List!36270)

(get-info :version)

(assert (= (and b!3208067 ((_ is Cons!36146) rules!2135)) b!3208102))

(declare-fun order!18427 () Int)

(declare-fun order!18425 () Int)

(declare-fun dynLambda!14583 (Int Int) Int)

(declare-fun dynLambda!14584 (Int Int) Int)

(assert (=> b!3208104 (< (dynLambda!14583 order!18425 (toValue!7300 (transformation!5216 (h!41566 rules!2135)))) (dynLambda!14584 order!18427 lambda!117399))))

(declare-fun order!18429 () Int)

(declare-fun dynLambda!14585 (Int Int) Int)

(assert (=> b!3208104 (< (dynLambda!14585 order!18429 (toChars!7159 (transformation!5216 (h!41566 rules!2135)))) (dynLambda!14584 order!18427 lambda!117399))))

(assert (=> b!3208067 true))

(declare-fun b!3208055 () Bool)

(declare-fun e!2000250 () Bool)

(declare-datatypes ((Token!9798 0))(
  ( (Token!9799 (value!169116 TokenValue!5446) (rule!7656 Rule!10232) (size!27235 Int) (originalCharacters!5930 List!36269)) )
))
(declare-fun separatorToken!241 () Token!9798)

(declare-fun lt!1083664 () Rule!10232)

(assert (=> b!3208055 (= e!2000250 (= (rule!7656 separatorToken!241) lt!1083664))))

(declare-fun b!3208056 () Bool)

(declare-fun e!2000238 () Bool)

(declare-fun e!2000240 () Bool)

(assert (=> b!3208056 (= e!2000238 (not e!2000240))))

(declare-fun res!1305627 () Bool)

(assert (=> b!3208056 (=> res!1305627 e!2000240)))

(declare-fun lt!1083665 () List!36269)

(declare-fun lt!1083679 () List!36269)

(assert (=> b!3208056 (= res!1305627 (not (= lt!1083665 lt!1083679)))))

(declare-datatypes ((LexerInterface!4805 0))(
  ( (LexerInterfaceExt!4802 (__x!23110 Int)) (Lexer!4803) )
))
(declare-fun thiss!18206 () LexerInterface!4805)

(declare-datatypes ((List!36271 0))(
  ( (Nil!36147) (Cons!36147 (h!41567 Token!9798) (t!238434 List!36271)) )
))
(declare-fun tokens!494 () List!36271)

(declare-fun printList!1355 (LexerInterface!4805 List!36271) List!36269)

(assert (=> b!3208056 (= lt!1083679 (printList!1355 thiss!18206 (Cons!36147 (h!41567 tokens!494) Nil!36147)))))

(declare-fun lt!1083689 () BalanceConc!21228)

(declare-fun list!12857 (BalanceConc!21228) List!36269)

(assert (=> b!3208056 (= lt!1083665 (list!12857 lt!1083689))))

(declare-datatypes ((IArray!21621 0))(
  ( (IArray!21622 (innerList!10868 List!36271)) )
))
(declare-datatypes ((Conc!10808 0))(
  ( (Node!10808 (left!28098 Conc!10808) (right!28428 Conc!10808) (csize!21846 Int) (cheight!11019 Int)) (Leaf!17027 (xs!13926 IArray!21621) (csize!21847 Int)) (Empty!10808) )
))
(declare-datatypes ((BalanceConc!21230 0))(
  ( (BalanceConc!21231 (c!538876 Conc!10808)) )
))
(declare-fun lt!1083690 () BalanceConc!21230)

(declare-fun printTailRec!1302 (LexerInterface!4805 BalanceConc!21230 Int BalanceConc!21228) BalanceConc!21228)

(assert (=> b!3208056 (= lt!1083689 (printTailRec!1302 thiss!18206 lt!1083690 0 (BalanceConc!21229 Empty!10807)))))

(declare-fun print!1870 (LexerInterface!4805 BalanceConc!21230) BalanceConc!21228)

(assert (=> b!3208056 (= lt!1083689 (print!1870 thiss!18206 lt!1083690))))

(declare-fun singletonSeq!2312 (Token!9798) BalanceConc!21230)

(assert (=> b!3208056 (= lt!1083690 (singletonSeq!2312 (h!41567 tokens!494)))))

(declare-fun e!2000230 () Bool)

(assert (=> b!3208057 (= e!2000230 (and tp!1012940 tp!1012937))))

(declare-fun b!3208058 () Bool)

(declare-fun res!1305610 () Bool)

(declare-fun e!2000237 () Bool)

(assert (=> b!3208058 (=> (not res!1305610) (not e!2000237))))

(declare-datatypes ((tuple2!35542 0))(
  ( (tuple2!35543 (_1!20905 BalanceConc!21230) (_2!20905 BalanceConc!21228)) )
))
(declare-fun lt!1083669 () tuple2!35542)

(declare-fun apply!8181 (BalanceConc!21230 Int) Token!9798)

(assert (=> b!3208058 (= res!1305610 (= (apply!8181 (_1!20905 lt!1083669) 0) separatorToken!241))))

(declare-fun b!3208059 () Bool)

(declare-fun e!2000252 () Bool)

(declare-fun lt!1083677 () Rule!10232)

(assert (=> b!3208059 (= e!2000252 (= (rule!7656 (h!41567 tokens!494)) lt!1083677))))

(declare-fun b!3208060 () Bool)

(declare-datatypes ((Unit!50602 0))(
  ( (Unit!50603) )
))
(declare-fun e!2000232 () Unit!50602)

(declare-fun Unit!50604 () Unit!50602)

(assert (=> b!3208060 (= e!2000232 Unit!50604)))

(declare-fun lt!1083660 () C!20136)

(declare-fun lt!1083682 () List!36269)

(declare-fun lt!1083683 () Unit!50602)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!380 (Regex!9975 List!36269 C!20136) Unit!50602)

(assert (=> b!3208060 (= lt!1083683 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!380 (regex!5216 (rule!7656 separatorToken!241)) lt!1083682 lt!1083660))))

(declare-fun res!1305606 () Bool)

(declare-fun matchR!4609 (Regex!9975 List!36269) Bool)

(assert (=> b!3208060 (= res!1305606 (not (matchR!4609 (regex!5216 (rule!7656 separatorToken!241)) lt!1083682)))))

(declare-fun e!2000226 () Bool)

(assert (=> b!3208060 (=> (not res!1305606) (not e!2000226))))

(assert (=> b!3208060 e!2000226))

(declare-fun b!3208062 () Bool)

(declare-fun isEmpty!20235 (BalanceConc!21228) Bool)

(assert (=> b!3208062 (= e!2000237 (isEmpty!20235 (_2!20905 lt!1083669)))))

(declare-fun b!3208063 () Bool)

(declare-fun e!2000233 () Bool)

(declare-fun e!2000251 () Bool)

(assert (=> b!3208063 (= e!2000233 e!2000251)))

(declare-fun res!1305620 () Bool)

(assert (=> b!3208063 (=> res!1305620 e!2000251)))

(declare-fun lt!1083657 () List!36269)

(declare-fun ++!8672 (List!36269 List!36269) List!36269)

(declare-fun charsOf!3232 (Token!9798) BalanceConc!21228)

(declare-fun printWithSeparatorTokenList!150 (LexerInterface!4805 List!36271 Token!9798) List!36269)

(assert (=> b!3208063 (= res!1305620 (not (= lt!1083657 (++!8672 (++!8672 (list!12857 (charsOf!3232 (h!41567 (t!238434 tokens!494)))) lt!1083682) (printWithSeparatorTokenList!150 thiss!18206 (t!238434 (t!238434 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1083668 () List!36269)

(assert (=> b!3208063 (= lt!1083668 (++!8672 lt!1083682 lt!1083657))))

(assert (=> b!3208063 (= lt!1083682 (list!12857 (charsOf!3232 separatorToken!241)))))

(assert (=> b!3208063 (= lt!1083657 (printWithSeparatorTokenList!150 thiss!18206 (t!238434 tokens!494) separatorToken!241))))

(declare-fun lt!1083685 () List!36269)

(assert (=> b!3208063 (= lt!1083685 (printWithSeparatorTokenList!150 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3208064 () Bool)

(declare-fun e!2000248 () Bool)

(declare-fun e!2000236 () Bool)

(assert (=> b!3208064 (= e!2000248 e!2000236)))

(declare-fun res!1305615 () Bool)

(assert (=> b!3208064 (=> res!1305615 e!2000236)))

(declare-fun lt!1083666 () List!36269)

(assert (=> b!3208064 (= res!1305615 (not (= lt!1083685 lt!1083666)))))

(declare-fun lt!1083659 () List!36269)

(assert (=> b!3208064 (= lt!1083659 lt!1083666)))

(declare-fun lt!1083661 () List!36269)

(assert (=> b!3208064 (= lt!1083666 (++!8672 lt!1083661 lt!1083668))))

(declare-fun lt!1083676 () Unit!50602)

(declare-fun lemmaConcatAssociativity!1738 (List!36269 List!36269 List!36269) Unit!50602)

(assert (=> b!3208064 (= lt!1083676 (lemmaConcatAssociativity!1738 lt!1083661 lt!1083682 lt!1083657))))

(declare-fun b!3208065 () Bool)

(declare-fun Unit!50605 () Unit!50602)

(assert (=> b!3208065 (= e!2000232 Unit!50605)))

(declare-fun e!2000241 () Bool)

(declare-fun tp!1012934 () Bool)

(declare-fun e!2000245 () Bool)

(declare-fun b!3208066 () Bool)

(declare-fun inv!49004 (String!40564) Bool)

(declare-fun inv!49007 (TokenValueInjection!10320) Bool)

(assert (=> b!3208066 (= e!2000241 (and tp!1012934 (inv!49004 (tag!5742 (rule!7656 separatorToken!241))) (inv!49007 (transformation!5216 (rule!7656 separatorToken!241))) e!2000245))))

(declare-fun e!2000249 () Bool)

(assert (=> b!3208067 (= e!2000236 e!2000249)))

(declare-fun res!1305612 () Bool)

(assert (=> b!3208067 (=> res!1305612 e!2000249)))

(declare-fun contains!6450 (List!36271 Token!9798) Bool)

(assert (=> b!3208067 (= res!1305612 (not (contains!6450 tokens!494 (h!41567 (t!238434 tokens!494)))))))

(declare-datatypes ((tuple2!35544 0))(
  ( (tuple2!35545 (_1!20906 Token!9798) (_2!20906 List!36269)) )
))
(declare-datatypes ((Option!7131 0))(
  ( (None!7130) (Some!7130 (v!35680 tuple2!35544)) )
))
(declare-fun maxPrefix!2447 (LexerInterface!4805 List!36270 List!36269) Option!7131)

(assert (=> b!3208067 (= (maxPrefix!2447 thiss!18206 rules!2135 lt!1083666) (Some!7130 (tuple2!35545 (h!41567 tokens!494) lt!1083668)))))

(declare-fun lt!1083675 () Unit!50602)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!140 (LexerInterface!4805 List!36270 Token!9798 Rule!10232 List!36269 Rule!10232) Unit!50602)

(assert (=> b!3208067 (= lt!1083675 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!140 thiss!18206 rules!2135 (h!41567 tokens!494) (rule!7656 (h!41567 tokens!494)) lt!1083668 (rule!7656 separatorToken!241)))))

(declare-fun contains!6451 (List!36269 C!20136) Bool)

(declare-fun usedCharacters!532 (Regex!9975) List!36269)

(assert (=> b!3208067 (not (contains!6451 (usedCharacters!532 (regex!5216 (rule!7656 (h!41567 tokens!494)))) lt!1083660))))

(declare-fun lt!1083686 () Unit!50602)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!140 (LexerInterface!4805 List!36270 List!36270 Rule!10232 Rule!10232 C!20136) Unit!50602)

(assert (=> b!3208067 (= lt!1083686 (lemmaNonSepRuleNotContainsCharContainedInASepRule!140 thiss!18206 rules!2135 rules!2135 (rule!7656 (h!41567 tokens!494)) (rule!7656 separatorToken!241) lt!1083660))))

(declare-fun lt!1083667 () Unit!50602)

(declare-fun forallContained!1187 (List!36271 Int Token!9798) Unit!50602)

(assert (=> b!3208067 (= lt!1083667 (forallContained!1187 tokens!494 lambda!117399 (h!41567 (t!238434 tokens!494))))))

(declare-fun e!2000227 () Bool)

(declare-fun rulesProduceIndividualToken!2297 (LexerInterface!4805 List!36270 Token!9798) Bool)

(assert (=> b!3208067 (= (rulesProduceIndividualToken!2297 thiss!18206 rules!2135 (h!41567 (t!238434 tokens!494))) e!2000227)))

(declare-fun res!1305629 () Bool)

(assert (=> b!3208067 (=> (not res!1305629) (not e!2000227))))

(declare-fun lt!1083687 () tuple2!35542)

(declare-fun size!27236 (BalanceConc!21230) Int)

(assert (=> b!3208067 (= res!1305629 (= (size!27236 (_1!20905 lt!1083687)) 1))))

(declare-fun lt!1083672 () BalanceConc!21228)

(declare-fun lex!2135 (LexerInterface!4805 List!36270 BalanceConc!21228) tuple2!35542)

(assert (=> b!3208067 (= lt!1083687 (lex!2135 thiss!18206 rules!2135 lt!1083672))))

(declare-fun lt!1083692 () BalanceConc!21230)

(assert (=> b!3208067 (= lt!1083672 (printTailRec!1302 thiss!18206 lt!1083692 0 (BalanceConc!21229 Empty!10807)))))

(assert (=> b!3208067 (= lt!1083672 (print!1870 thiss!18206 lt!1083692))))

(assert (=> b!3208067 (= lt!1083692 (singletonSeq!2312 (h!41567 (t!238434 tokens!494))))))

(assert (=> b!3208067 e!2000237))

(declare-fun res!1305607 () Bool)

(assert (=> b!3208067 (=> (not res!1305607) (not e!2000237))))

(assert (=> b!3208067 (= res!1305607 (= (size!27236 (_1!20905 lt!1083669)) 1))))

(declare-fun lt!1083658 () BalanceConc!21228)

(assert (=> b!3208067 (= lt!1083669 (lex!2135 thiss!18206 rules!2135 lt!1083658))))

(declare-fun lt!1083663 () BalanceConc!21230)

(assert (=> b!3208067 (= lt!1083658 (printTailRec!1302 thiss!18206 lt!1083663 0 (BalanceConc!21229 Empty!10807)))))

(assert (=> b!3208067 (= lt!1083658 (print!1870 thiss!18206 lt!1083663))))

(assert (=> b!3208067 (= lt!1083663 (singletonSeq!2312 separatorToken!241))))

(declare-fun lt!1083662 () Unit!50602)

(assert (=> b!3208067 (= lt!1083662 e!2000232)))

(declare-fun c!538873 () Bool)

(assert (=> b!3208067 (= c!538873 (not (contains!6451 (usedCharacters!532 (regex!5216 (rule!7656 separatorToken!241))) lt!1083660)))))

(declare-fun head!7035 (List!36269) C!20136)

(assert (=> b!3208067 (= lt!1083660 (head!7035 lt!1083682))))

(declare-fun e!2000225 () Bool)

(assert (=> b!3208067 e!2000225))

(declare-fun res!1305608 () Bool)

(assert (=> b!3208067 (=> (not res!1305608) (not e!2000225))))

(declare-datatypes ((Option!7132 0))(
  ( (None!7131) (Some!7131 (v!35681 Rule!10232)) )
))
(declare-fun lt!1083673 () Option!7132)

(declare-fun isDefined!5546 (Option!7132) Bool)

(assert (=> b!3208067 (= res!1305608 (isDefined!5546 lt!1083673))))

(declare-fun getRuleFromTag!921 (LexerInterface!4805 List!36270 String!40564) Option!7132)

(assert (=> b!3208067 (= lt!1083673 (getRuleFromTag!921 thiss!18206 rules!2135 (tag!5742 (rule!7656 separatorToken!241))))))

(declare-fun lt!1083680 () Unit!50602)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!921 (LexerInterface!4805 List!36270 List!36269 Token!9798) Unit!50602)

(assert (=> b!3208067 (= lt!1083680 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!921 thiss!18206 rules!2135 lt!1083682 separatorToken!241))))

(declare-fun lt!1083684 () BalanceConc!21228)

(declare-fun maxPrefixOneRule!1584 (LexerInterface!4805 Rule!10232 List!36269) Option!7131)

(declare-fun apply!8182 (TokenValueInjection!10320 BalanceConc!21228) TokenValue!5446)

(declare-fun size!27237 (List!36269) Int)

(assert (=> b!3208067 (= (maxPrefixOneRule!1584 thiss!18206 (rule!7656 (h!41567 tokens!494)) lt!1083661) (Some!7130 (tuple2!35545 (Token!9799 (apply!8182 (transformation!5216 (rule!7656 (h!41567 tokens!494))) lt!1083684) (rule!7656 (h!41567 tokens!494)) (size!27237 lt!1083661) lt!1083661) Nil!36145)))))

(declare-fun lt!1083674 () Unit!50602)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!697 (LexerInterface!4805 List!36270 List!36269 List!36269 List!36269 Rule!10232) Unit!50602)

(assert (=> b!3208067 (= lt!1083674 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!697 thiss!18206 rules!2135 lt!1083661 lt!1083661 Nil!36145 (rule!7656 (h!41567 tokens!494))))))

(declare-fun e!2000239 () Bool)

(assert (=> b!3208067 e!2000239))

(declare-fun res!1305616 () Bool)

(assert (=> b!3208067 (=> (not res!1305616) (not e!2000239))))

(declare-fun lt!1083678 () Option!7132)

(assert (=> b!3208067 (= res!1305616 (isDefined!5546 lt!1083678))))

(assert (=> b!3208067 (= lt!1083678 (getRuleFromTag!921 thiss!18206 rules!2135 (tag!5742 (rule!7656 (h!41567 tokens!494)))))))

(declare-fun lt!1083688 () Unit!50602)

(assert (=> b!3208067 (= lt!1083688 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!921 thiss!18206 rules!2135 lt!1083661 (h!41567 tokens!494)))))

(declare-fun lt!1083670 () Unit!50602)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!844 (LexerInterface!4805 List!36270 List!36271 Token!9798) Unit!50602)

(assert (=> b!3208067 (= lt!1083670 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!844 thiss!18206 rules!2135 tokens!494 (h!41567 tokens!494)))))

(declare-fun b!3208068 () Bool)

(declare-fun res!1305623 () Bool)

(assert (=> b!3208068 (=> (not res!1305623) (not e!2000227))))

(assert (=> b!3208068 (= res!1305623 (= (apply!8181 (_1!20905 lt!1083687) 0) (h!41567 (t!238434 tokens!494))))))

(declare-fun res!1305604 () Bool)

(assert (=> b!3208069 (=> (not res!1305604) (not e!2000238))))

(declare-fun forall!7380 (List!36271 Int) Bool)

(assert (=> b!3208069 (= res!1305604 (forall!7380 tokens!494 lambda!117398))))

(declare-fun b!3208070 () Bool)

(declare-fun res!1305622 () Bool)

(assert (=> b!3208070 (=> (not res!1305622) (not e!2000238))))

(declare-fun rulesProduceEachTokenIndividually!1256 (LexerInterface!4805 List!36270 BalanceConc!21230) Bool)

(declare-fun seqFromList!3503 (List!36271) BalanceConc!21230)

(assert (=> b!3208070 (= res!1305622 (rulesProduceEachTokenIndividually!1256 thiss!18206 rules!2135 (seqFromList!3503 tokens!494)))))

(declare-fun b!3208071 () Bool)

(declare-fun res!1305617 () Bool)

(assert (=> b!3208071 (=> (not res!1305617) (not e!2000238))))

(assert (=> b!3208071 (= res!1305617 (isSeparator!5216 (rule!7656 separatorToken!241)))))

(declare-fun b!3208072 () Bool)

(declare-fun e!2000229 () Bool)

(declare-fun tp!1012935 () Bool)

(declare-fun e!2000254 () Bool)

(assert (=> b!3208072 (= e!2000229 (and tp!1012935 (inv!49004 (tag!5742 (h!41566 rules!2135))) (inv!49007 (transformation!5216 (h!41566 rules!2135))) e!2000254))))

(declare-fun b!3208073 () Bool)

(declare-fun res!1305628 () Bool)

(declare-fun e!2000244 () Bool)

(assert (=> b!3208073 (=> res!1305628 e!2000244)))

(assert (=> b!3208073 (= res!1305628 (not (rulesProduceIndividualToken!2297 thiss!18206 rules!2135 (h!41567 tokens!494))))))

(declare-fun e!2000224 () Bool)

(declare-fun b!3208074 () Bool)

(declare-fun e!2000234 () Bool)

(declare-fun tp!1012938 () Bool)

(declare-fun inv!49008 (Token!9798) Bool)

(assert (=> b!3208074 (= e!2000224 (and (inv!49008 (h!41567 tokens!494)) e!2000234 tp!1012938))))

(declare-fun b!3208075 () Bool)

(declare-fun res!1305614 () Bool)

(assert (=> b!3208075 (=> (not res!1305614) (not e!2000238))))

(declare-fun sepAndNonSepRulesDisjointChars!1410 (List!36270 List!36270) Bool)

(assert (=> b!3208075 (= res!1305614 (sepAndNonSepRulesDisjointChars!1410 rules!2135 rules!2135))))

(declare-fun b!3208076 () Bool)

(declare-fun e!2000235 () Bool)

(declare-fun tp!1012930 () Bool)

(assert (=> b!3208076 (= e!2000235 (and e!2000229 tp!1012930))))

(assert (=> b!3208077 (= e!2000245 (and tp!1012932 tp!1012933))))

(declare-fun b!3208061 () Bool)

(assert (=> b!3208061 (= e!2000249 true)))

(declare-fun lt!1083691 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1725 (LexerInterface!4805 List!36270 List!36271) Bool)

(assert (=> b!3208061 (= lt!1083691 (rulesProduceEachTokenIndividuallyList!1725 thiss!18206 rules!2135 tokens!494))))

(declare-fun res!1305619 () Bool)

(assert (=> start!301270 (=> (not res!1305619) (not e!2000238))))

(assert (=> start!301270 (= res!1305619 ((_ is Lexer!4803) thiss!18206))))

(assert (=> start!301270 e!2000238))

(assert (=> start!301270 true))

(assert (=> start!301270 e!2000235))

(assert (=> start!301270 e!2000224))

(declare-fun e!2000242 () Bool)

(assert (=> start!301270 (and (inv!49008 separatorToken!241) e!2000242)))

(declare-fun b!3208078 () Bool)

(declare-fun res!1305605 () Bool)

(assert (=> b!3208078 (=> (not res!1305605) (not e!2000238))))

(declare-fun isEmpty!20236 (List!36270) Bool)

(assert (=> b!3208078 (= res!1305605 (not (isEmpty!20236 rules!2135)))))

(declare-fun b!3208079 () Bool)

(declare-fun res!1305624 () Bool)

(assert (=> b!3208079 (=> (not res!1305624) (not e!2000238))))

(assert (=> b!3208079 (= res!1305624 (rulesProduceIndividualToken!2297 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3208080 () Bool)

(declare-fun res!1305621 () Bool)

(assert (=> b!3208080 (=> (not res!1305621) (not e!2000238))))

(declare-fun rulesInvariant!4202 (LexerInterface!4805 List!36270) Bool)

(assert (=> b!3208080 (= res!1305621 (rulesInvariant!4202 thiss!18206 rules!2135))))

(declare-fun b!3208081 () Bool)

(declare-fun e!2000243 () Bool)

(assert (=> b!3208081 (= e!2000244 e!2000243)))

(declare-fun res!1305630 () Bool)

(assert (=> b!3208081 (=> res!1305630 e!2000243)))

(declare-fun isEmpty!20237 (BalanceConc!21230) Bool)

(assert (=> b!3208081 (= res!1305630 (isEmpty!20237 (_1!20905 (lex!2135 thiss!18206 rules!2135 lt!1083684))))))

(declare-fun seqFromList!3504 (List!36269) BalanceConc!21228)

(assert (=> b!3208081 (= lt!1083684 (seqFromList!3504 lt!1083661))))

(declare-fun b!3208082 () Bool)

(assert (=> b!3208082 (= e!2000225 e!2000250)))

(declare-fun res!1305625 () Bool)

(assert (=> b!3208082 (=> (not res!1305625) (not e!2000250))))

(assert (=> b!3208082 (= res!1305625 (matchR!4609 (regex!5216 lt!1083664) lt!1083682))))

(declare-fun get!11507 (Option!7132) Rule!10232)

(assert (=> b!3208082 (= lt!1083664 (get!11507 lt!1083673))))

(declare-fun b!3208083 () Bool)

(assert (=> b!3208083 (= e!2000243 e!2000233)))

(declare-fun res!1305613 () Bool)

(assert (=> b!3208083 (=> res!1305613 e!2000233)))

(assert (=> b!3208083 (= res!1305613 (or (isSeparator!5216 (rule!7656 (h!41567 tokens!494))) (isSeparator!5216 (rule!7656 (h!41567 (t!238434 tokens!494))))))))

(declare-fun lt!1083671 () Unit!50602)

(assert (=> b!3208083 (= lt!1083671 (forallContained!1187 tokens!494 lambda!117398 (h!41567 (t!238434 tokens!494))))))

(declare-fun lt!1083681 () Unit!50602)

(assert (=> b!3208083 (= lt!1083681 (forallContained!1187 tokens!494 lambda!117398 (h!41567 tokens!494)))))

(declare-fun e!2000253 () Bool)

(declare-fun tp!1012936 () Bool)

(declare-fun b!3208084 () Bool)

(declare-fun inv!21 (TokenValue!5446) Bool)

(assert (=> b!3208084 (= e!2000234 (and (inv!21 (value!169116 (h!41567 tokens!494))) e!2000253 tp!1012936))))

(declare-fun b!3208085 () Bool)

(assert (=> b!3208085 (= e!2000239 e!2000252)))

(declare-fun res!1305609 () Bool)

(assert (=> b!3208085 (=> (not res!1305609) (not e!2000252))))

(assert (=> b!3208085 (= res!1305609 (matchR!4609 (regex!5216 lt!1083677) lt!1083661))))

(assert (=> b!3208085 (= lt!1083677 (get!11507 lt!1083678))))

(assert (=> b!3208086 (= e!2000254 (and tp!1012928 tp!1012939))))

(declare-fun b!3208087 () Bool)

(declare-fun tp!1012929 () Bool)

(assert (=> b!3208087 (= e!2000253 (and tp!1012929 (inv!49004 (tag!5742 (rule!7656 (h!41567 tokens!494)))) (inv!49007 (transformation!5216 (rule!7656 (h!41567 tokens!494)))) e!2000230))))

(declare-fun b!3208088 () Bool)

(assert (=> b!3208088 (= e!2000226 false)))

(declare-fun b!3208089 () Bool)

(declare-fun res!1305626 () Bool)

(assert (=> b!3208089 (=> (not res!1305626) (not e!2000238))))

(assert (=> b!3208089 (= res!1305626 (and (not ((_ is Nil!36147) tokens!494)) (not ((_ is Nil!36147) (t!238434 tokens!494)))))))

(declare-fun b!3208090 () Bool)

(declare-fun tp!1012931 () Bool)

(assert (=> b!3208090 (= e!2000242 (and (inv!21 (value!169116 separatorToken!241)) e!2000241 tp!1012931))))

(declare-fun b!3208091 () Bool)

(assert (=> b!3208091 (= e!2000227 (isEmpty!20235 (_2!20905 lt!1083687)))))

(declare-fun b!3208092 () Bool)

(assert (=> b!3208092 (= e!2000251 e!2000248)))

(declare-fun res!1305618 () Bool)

(assert (=> b!3208092 (=> res!1305618 e!2000248)))

(assert (=> b!3208092 (= res!1305618 (not (= lt!1083685 lt!1083659)))))

(assert (=> b!3208092 (= lt!1083659 (++!8672 (++!8672 lt!1083661 lt!1083682) lt!1083657))))

(declare-fun b!3208093 () Bool)

(assert (=> b!3208093 (= e!2000240 e!2000244)))

(declare-fun res!1305611 () Bool)

(assert (=> b!3208093 (=> res!1305611 e!2000244)))

(assert (=> b!3208093 (= res!1305611 (or (not (= lt!1083679 lt!1083661)) (not (= lt!1083665 lt!1083661))))))

(assert (=> b!3208093 (= lt!1083661 (list!12857 (charsOf!3232 (h!41567 tokens!494))))))

(assert (= (and start!301270 res!1305619) b!3208078))

(assert (= (and b!3208078 res!1305605) b!3208080))

(assert (= (and b!3208080 res!1305621) b!3208070))

(assert (= (and b!3208070 res!1305622) b!3208079))

(assert (= (and b!3208079 res!1305624) b!3208071))

(assert (= (and b!3208071 res!1305617) b!3208069))

(assert (= (and b!3208069 res!1305604) b!3208075))

(assert (= (and b!3208075 res!1305614) b!3208089))

(assert (= (and b!3208089 res!1305626) b!3208056))

(assert (= (and b!3208056 (not res!1305627)) b!3208093))

(assert (= (and b!3208093 (not res!1305611)) b!3208073))

(assert (= (and b!3208073 (not res!1305628)) b!3208081))

(assert (= (and b!3208081 (not res!1305630)) b!3208083))

(assert (= (and b!3208083 (not res!1305613)) b!3208063))

(assert (= (and b!3208063 (not res!1305620)) b!3208092))

(assert (= (and b!3208092 (not res!1305618)) b!3208064))

(assert (= (and b!3208064 (not res!1305615)) b!3208067))

(assert (= (and b!3208067 res!1305616) b!3208085))

(assert (= (and b!3208085 res!1305609) b!3208059))

(assert (= (and b!3208067 res!1305608) b!3208082))

(assert (= (and b!3208082 res!1305625) b!3208055))

(assert (= (and b!3208067 c!538873) b!3208060))

(assert (= (and b!3208067 (not c!538873)) b!3208065))

(assert (= (and b!3208060 res!1305606) b!3208088))

(assert (= (and b!3208067 res!1305607) b!3208058))

(assert (= (and b!3208058 res!1305610) b!3208062))

(assert (= (and b!3208067 res!1305629) b!3208068))

(assert (= (and b!3208068 res!1305623) b!3208091))

(assert (= (and b!3208067 (not res!1305612)) b!3208061))

(assert (= b!3208072 b!3208086))

(assert (= b!3208076 b!3208072))

(assert (= (and start!301270 ((_ is Cons!36146) rules!2135)) b!3208076))

(assert (= b!3208087 b!3208057))

(assert (= b!3208084 b!3208087))

(assert (= b!3208074 b!3208084))

(assert (= (and start!301270 ((_ is Cons!36147) tokens!494)) b!3208074))

(assert (= b!3208066 b!3208077))

(assert (= b!3208090 b!3208066))

(assert (= start!301270 b!3208090))

(declare-fun m!3475209 () Bool)

(assert (=> b!3208085 m!3475209))

(declare-fun m!3475211 () Bool)

(assert (=> b!3208085 m!3475211))

(declare-fun m!3475213 () Bool)

(assert (=> b!3208080 m!3475213))

(declare-fun m!3475215 () Bool)

(assert (=> b!3208072 m!3475215))

(declare-fun m!3475217 () Bool)

(assert (=> b!3208072 m!3475217))

(declare-fun m!3475219 () Bool)

(assert (=> b!3208070 m!3475219))

(assert (=> b!3208070 m!3475219))

(declare-fun m!3475221 () Bool)

(assert (=> b!3208070 m!3475221))

(declare-fun m!3475223 () Bool)

(assert (=> b!3208073 m!3475223))

(declare-fun m!3475225 () Bool)

(assert (=> b!3208064 m!3475225))

(declare-fun m!3475227 () Bool)

(assert (=> b!3208064 m!3475227))

(declare-fun m!3475229 () Bool)

(assert (=> b!3208060 m!3475229))

(declare-fun m!3475231 () Bool)

(assert (=> b!3208060 m!3475231))

(declare-fun m!3475233 () Bool)

(assert (=> b!3208063 m!3475233))

(declare-fun m!3475235 () Bool)

(assert (=> b!3208063 m!3475235))

(declare-fun m!3475237 () Bool)

(assert (=> b!3208063 m!3475237))

(assert (=> b!3208063 m!3475233))

(declare-fun m!3475239 () Bool)

(assert (=> b!3208063 m!3475239))

(declare-fun m!3475241 () Bool)

(assert (=> b!3208063 m!3475241))

(declare-fun m!3475243 () Bool)

(assert (=> b!3208063 m!3475243))

(declare-fun m!3475245 () Bool)

(assert (=> b!3208063 m!3475245))

(assert (=> b!3208063 m!3475241))

(declare-fun m!3475247 () Bool)

(assert (=> b!3208063 m!3475247))

(assert (=> b!3208063 m!3475235))

(declare-fun m!3475249 () Bool)

(assert (=> b!3208063 m!3475249))

(assert (=> b!3208063 m!3475239))

(assert (=> b!3208063 m!3475245))

(declare-fun m!3475251 () Bool)

(assert (=> b!3208063 m!3475251))

(declare-fun m!3475253 () Bool)

(assert (=> b!3208066 m!3475253))

(declare-fun m!3475255 () Bool)

(assert (=> b!3208066 m!3475255))

(declare-fun m!3475257 () Bool)

(assert (=> b!3208091 m!3475257))

(declare-fun m!3475259 () Bool)

(assert (=> b!3208074 m!3475259))

(declare-fun m!3475261 () Bool)

(assert (=> b!3208084 m!3475261))

(declare-fun m!3475263 () Bool)

(assert (=> b!3208061 m!3475263))

(declare-fun m!3475265 () Bool)

(assert (=> b!3208082 m!3475265))

(declare-fun m!3475267 () Bool)

(assert (=> b!3208082 m!3475267))

(declare-fun m!3475269 () Bool)

(assert (=> b!3208087 m!3475269))

(declare-fun m!3475271 () Bool)

(assert (=> b!3208087 m!3475271))

(declare-fun m!3475273 () Bool)

(assert (=> b!3208067 m!3475273))

(declare-fun m!3475275 () Bool)

(assert (=> b!3208067 m!3475275))

(declare-fun m!3475277 () Bool)

(assert (=> b!3208067 m!3475277))

(declare-fun m!3475279 () Bool)

(assert (=> b!3208067 m!3475279))

(declare-fun m!3475281 () Bool)

(assert (=> b!3208067 m!3475281))

(declare-fun m!3475283 () Bool)

(assert (=> b!3208067 m!3475283))

(declare-fun m!3475285 () Bool)

(assert (=> b!3208067 m!3475285))

(declare-fun m!3475287 () Bool)

(assert (=> b!3208067 m!3475287))

(declare-fun m!3475289 () Bool)

(assert (=> b!3208067 m!3475289))

(declare-fun m!3475291 () Bool)

(assert (=> b!3208067 m!3475291))

(declare-fun m!3475293 () Bool)

(assert (=> b!3208067 m!3475293))

(declare-fun m!3475295 () Bool)

(assert (=> b!3208067 m!3475295))

(declare-fun m!3475297 () Bool)

(assert (=> b!3208067 m!3475297))

(declare-fun m!3475299 () Bool)

(assert (=> b!3208067 m!3475299))

(declare-fun m!3475301 () Bool)

(assert (=> b!3208067 m!3475301))

(declare-fun m!3475303 () Bool)

(assert (=> b!3208067 m!3475303))

(declare-fun m!3475305 () Bool)

(assert (=> b!3208067 m!3475305))

(assert (=> b!3208067 m!3475295))

(declare-fun m!3475307 () Bool)

(assert (=> b!3208067 m!3475307))

(declare-fun m!3475309 () Bool)

(assert (=> b!3208067 m!3475309))

(declare-fun m!3475311 () Bool)

(assert (=> b!3208067 m!3475311))

(declare-fun m!3475313 () Bool)

(assert (=> b!3208067 m!3475313))

(declare-fun m!3475315 () Bool)

(assert (=> b!3208067 m!3475315))

(assert (=> b!3208067 m!3475289))

(declare-fun m!3475317 () Bool)

(assert (=> b!3208067 m!3475317))

(declare-fun m!3475319 () Bool)

(assert (=> b!3208067 m!3475319))

(declare-fun m!3475321 () Bool)

(assert (=> b!3208067 m!3475321))

(declare-fun m!3475323 () Bool)

(assert (=> b!3208067 m!3475323))

(declare-fun m!3475325 () Bool)

(assert (=> b!3208067 m!3475325))

(declare-fun m!3475327 () Bool)

(assert (=> b!3208067 m!3475327))

(declare-fun m!3475329 () Bool)

(assert (=> b!3208067 m!3475329))

(declare-fun m!3475331 () Bool)

(assert (=> b!3208067 m!3475331))

(declare-fun m!3475333 () Bool)

(assert (=> b!3208067 m!3475333))

(declare-fun m!3475335 () Bool)

(assert (=> b!3208067 m!3475335))

(declare-fun m!3475337 () Bool)

(assert (=> b!3208058 m!3475337))

(declare-fun m!3475339 () Bool)

(assert (=> b!3208081 m!3475339))

(declare-fun m!3475341 () Bool)

(assert (=> b!3208081 m!3475341))

(declare-fun m!3475343 () Bool)

(assert (=> b!3208081 m!3475343))

(declare-fun m!3475345 () Bool)

(assert (=> b!3208092 m!3475345))

(assert (=> b!3208092 m!3475345))

(declare-fun m!3475347 () Bool)

(assert (=> b!3208092 m!3475347))

(declare-fun m!3475349 () Bool)

(assert (=> b!3208083 m!3475349))

(declare-fun m!3475351 () Bool)

(assert (=> b!3208083 m!3475351))

(declare-fun m!3475353 () Bool)

(assert (=> b!3208056 m!3475353))

(declare-fun m!3475355 () Bool)

(assert (=> b!3208056 m!3475355))

(declare-fun m!3475357 () Bool)

(assert (=> b!3208056 m!3475357))

(declare-fun m!3475359 () Bool)

(assert (=> b!3208056 m!3475359))

(declare-fun m!3475361 () Bool)

(assert (=> b!3208056 m!3475361))

(declare-fun m!3475363 () Bool)

(assert (=> b!3208062 m!3475363))

(declare-fun m!3475365 () Bool)

(assert (=> b!3208075 m!3475365))

(declare-fun m!3475367 () Bool)

(assert (=> b!3208079 m!3475367))

(declare-fun m!3475369 () Bool)

(assert (=> start!301270 m!3475369))

(declare-fun m!3475371 () Bool)

(assert (=> b!3208090 m!3475371))

(declare-fun m!3475373 () Bool)

(assert (=> b!3208068 m!3475373))

(declare-fun m!3475375 () Bool)

(assert (=> b!3208093 m!3475375))

(assert (=> b!3208093 m!3475375))

(declare-fun m!3475377 () Bool)

(assert (=> b!3208093 m!3475377))

(declare-fun m!3475379 () Bool)

(assert (=> b!3208069 m!3475379))

(declare-fun m!3475381 () Bool)

(assert (=> b!3208078 m!3475381))

(check-sat (not b_next!86013) (not b_next!86017) (not b!3208069) (not b!3208067) (not start!301270) (not b!3208087) (not b!3208078) (not b!3208074) (not b!3208066) (not b!3208079) (not b_next!86019) (not b!3208068) (not b!3208084) (not b!3208060) (not b!3208072) b_and!213617 (not b!3208081) (not b!3208062) (not b!3208102) (not b!3208075) (not b_next!86011) (not b!3208064) (not b!3208090) (not b!3208063) (not b!3208082) (not b!3208061) (not b!3208070) (not b!3208091) b_and!213621 (not b!3208085) (not b!3208093) (not b!3208073) b_and!213625 (not b!3208076) (not b!3208092) (not b_next!86009) (not b!3208083) (not b!3208058) (not b!3208080) b_and!213615 b_and!213619 b_and!213623 (not b!3208056) (not b_next!86015))
(check-sat (not b_next!86013) b_and!213617 (not b_next!86011) (not b_next!86017) b_and!213621 b_and!213625 (not b_next!86009) (not b_next!86019) (not b_next!86015) b_and!213615 b_and!213619 b_and!213623)
