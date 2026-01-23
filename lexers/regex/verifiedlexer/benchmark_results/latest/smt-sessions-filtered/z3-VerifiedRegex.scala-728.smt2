; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33082 () Bool)

(assert start!33082)

(declare-fun b!307237 () Bool)

(declare-fun b_free!10993 () Bool)

(declare-fun b_next!10993 () Bool)

(assert (=> b!307237 (= b_free!10993 (not b_next!10993))))

(declare-fun tp!108889 () Bool)

(declare-fun b_and!25941 () Bool)

(assert (=> b!307237 (= tp!108889 b_and!25941)))

(declare-fun b_free!10995 () Bool)

(declare-fun b_next!10995 () Bool)

(assert (=> b!307237 (= b_free!10995 (not b_next!10995))))

(declare-fun tp!108881 () Bool)

(declare-fun b_and!25943 () Bool)

(assert (=> b!307237 (= tp!108881 b_and!25943)))

(declare-fun b!307224 () Bool)

(declare-fun b_free!10997 () Bool)

(declare-fun b_next!10997 () Bool)

(assert (=> b!307224 (= b_free!10997 (not b_next!10997))))

(declare-fun tp!108891 () Bool)

(declare-fun b_and!25945 () Bool)

(assert (=> b!307224 (= tp!108891 b_and!25945)))

(declare-fun b_free!10999 () Bool)

(declare-fun b_next!10999 () Bool)

(assert (=> b!307224 (= b_free!10999 (not b_next!10999))))

(declare-fun tp!108887 () Bool)

(declare-fun b_and!25947 () Bool)

(assert (=> b!307224 (= tp!108887 b_and!25947)))

(declare-fun b!307221 () Bool)

(declare-fun b_free!11001 () Bool)

(declare-fun b_next!11001 () Bool)

(assert (=> b!307221 (= b_free!11001 (not b_next!11001))))

(declare-fun tp!108882 () Bool)

(declare-fun b_and!25949 () Bool)

(assert (=> b!307221 (= tp!108882 b_and!25949)))

(declare-fun b_free!11003 () Bool)

(declare-fun b_next!11003 () Bool)

(assert (=> b!307221 (= b_free!11003 (not b_next!11003))))

(declare-fun tp!108888 () Bool)

(declare-fun b_and!25951 () Bool)

(assert (=> b!307221 (= tp!108888 b_and!25951)))

(declare-fun bs!35506 () Bool)

(declare-fun b!307203 () Bool)

(declare-fun b!307206 () Bool)

(assert (= bs!35506 (and b!307203 b!307206)))

(declare-fun lambda!10480 () Int)

(declare-fun lambda!10479 () Int)

(assert (=> bs!35506 (not (= lambda!10480 lambda!10479))))

(declare-fun b!307248 () Bool)

(declare-fun e!191064 () Bool)

(assert (=> b!307248 (= e!191064 true)))

(declare-fun b!307247 () Bool)

(declare-fun e!191063 () Bool)

(assert (=> b!307247 (= e!191063 e!191064)))

(declare-fun b!307246 () Bool)

(declare-fun e!191062 () Bool)

(assert (=> b!307246 (= e!191062 e!191063)))

(assert (=> b!307203 e!191062))

(assert (= b!307247 b!307248))

(assert (= b!307246 b!307247))

(declare-datatypes ((List!4062 0))(
  ( (Nil!4052) (Cons!4052 (h!9449 (_ BitVec 16)) (t!43290 List!4062)) )
))
(declare-datatypes ((TokenValue!801 0))(
  ( (FloatLiteralValue!1602 (text!6052 List!4062)) (TokenValueExt!800 (__x!3089 Int)) (Broken!4005 (value!26491 List!4062)) (Object!810) (End!801) (Def!801) (Underscore!801) (Match!801) (Else!801) (Error!801) (Case!801) (If!801) (Extends!801) (Abstract!801) (Class!801) (Val!801) (DelimiterValue!1602 (del!861 List!4062)) (KeywordValue!807 (value!26492 List!4062)) (CommentValue!1602 (value!26493 List!4062)) (WhitespaceValue!1602 (value!26494 List!4062)) (IndentationValue!801 (value!26495 List!4062)) (String!5084) (Int32!801) (Broken!4006 (value!26496 List!4062)) (Boolean!802) (Unit!5679) (OperatorValue!804 (op!861 List!4062)) (IdentifierValue!1602 (value!26497 List!4062)) (IdentifierValue!1603 (value!26498 List!4062)) (WhitespaceValue!1603 (value!26499 List!4062)) (True!1602) (False!1602) (Broken!4007 (value!26500 List!4062)) (Broken!4008 (value!26501 List!4062)) (True!1603) (RightBrace!801) (RightBracket!801) (Colon!801) (Null!801) (Comma!801) (LeftBracket!801) (False!1603) (LeftBrace!801) (ImaginaryLiteralValue!801 (text!6053 List!4062)) (StringLiteralValue!2403 (value!26502 List!4062)) (EOFValue!801 (value!26503 List!4062)) (IdentValue!801 (value!26504 List!4062)) (DelimiterValue!1603 (value!26505 List!4062)) (DedentValue!801 (value!26506 List!4062)) (NewLineValue!801 (value!26507 List!4062)) (IntegerValue!2403 (value!26508 (_ BitVec 32)) (text!6054 List!4062)) (IntegerValue!2404 (value!26509 Int) (text!6055 List!4062)) (Times!801) (Or!801) (Equal!801) (Minus!801) (Broken!4009 (value!26510 List!4062)) (And!801) (Div!801) (LessEqual!801) (Mod!801) (Concat!1804) (Not!801) (Plus!801) (SpaceValue!801 (value!26511 List!4062)) (IntegerValue!2405 (value!26512 Int) (text!6056 List!4062)) (StringLiteralValue!2404 (text!6057 List!4062)) (FloatLiteralValue!1603 (text!6058 List!4062)) (BytesLiteralValue!801 (value!26513 List!4062)) (CommentValue!1603 (value!26514 List!4062)) (StringLiteralValue!2405 (value!26515 List!4062)) (ErrorTokenValue!801 (msg!862 List!4062)) )
))
(declare-datatypes ((C!2928 0))(
  ( (C!2929 (val!1350 Int)) )
))
(declare-datatypes ((List!4063 0))(
  ( (Nil!4053) (Cons!4053 (h!9450 C!2928) (t!43291 List!4063)) )
))
(declare-datatypes ((IArray!2761 0))(
  ( (IArray!2762 (innerList!1438 List!4063)) )
))
(declare-datatypes ((Conc!1380 0))(
  ( (Node!1380 (left!3368 Conc!1380) (right!3698 Conc!1380) (csize!2990 Int) (cheight!1591 Int)) (Leaf!2109 (xs!3983 IArray!2761) (csize!2991 Int)) (Empty!1380) )
))
(declare-datatypes ((BalanceConc!2768 0))(
  ( (BalanceConc!2769 (c!58262 Conc!1380)) )
))
(declare-datatypes ((TokenValueInjection!1374 0))(
  ( (TokenValueInjection!1375 (toValue!1538 Int) (toChars!1397 Int)) )
))
(declare-datatypes ((Regex!1003 0))(
  ( (ElementMatch!1003 (c!58263 C!2928)) (Concat!1805 (regOne!2518 Regex!1003) (regTwo!2518 Regex!1003)) (EmptyExpr!1003) (Star!1003 (reg!1332 Regex!1003)) (EmptyLang!1003) (Union!1003 (regOne!2519 Regex!1003) (regTwo!2519 Regex!1003)) )
))
(declare-datatypes ((String!5085 0))(
  ( (String!5086 (value!26516 String)) )
))
(declare-datatypes ((Rule!1358 0))(
  ( (Rule!1359 (regex!779 Regex!1003) (tag!997 String!5085) (isSeparator!779 Bool) (transformation!779 TokenValueInjection!1374)) )
))
(declare-datatypes ((List!4064 0))(
  ( (Nil!4054) (Cons!4054 (h!9451 Rule!1358) (t!43292 List!4064)) )
))
(declare-fun rules!1920 () List!4064)

(get-info :version)

(assert (= (and b!307203 ((_ is Cons!4054) rules!1920)) b!307246))

(declare-fun order!3285 () Int)

(declare-fun order!3287 () Int)

(declare-fun dynLambda!2213 (Int Int) Int)

(declare-fun dynLambda!2214 (Int Int) Int)

(assert (=> b!307248 (< (dynLambda!2213 order!3285 (toValue!1538 (transformation!779 (h!9451 rules!1920)))) (dynLambda!2214 order!3287 lambda!10480))))

(declare-fun order!3289 () Int)

(declare-fun dynLambda!2215 (Int Int) Int)

(assert (=> b!307248 (< (dynLambda!2215 order!3289 (toChars!1397 (transformation!779 (h!9451 rules!1920)))) (dynLambda!2214 order!3287 lambda!10480))))

(assert (=> b!307203 true))

(declare-fun e!191041 () Bool)

(declare-fun e!191028 () Bool)

(assert (=> b!307203 (= e!191041 e!191028)))

(declare-fun res!139657 () Bool)

(assert (=> b!307203 (=> res!139657 e!191028)))

(declare-datatypes ((Token!1302 0))(
  ( (Token!1303 (value!26517 TokenValue!801) (rule!1392 Rule!1358) (size!3241 Int) (originalCharacters!822 List!4063)) )
))
(declare-datatypes ((List!4065 0))(
  ( (Nil!4055) (Cons!4055 (h!9452 Token!1302) (t!43293 List!4065)) )
))
(declare-fun tokens!465 () List!4065)

(declare-datatypes ((LexerInterface!665 0))(
  ( (LexerInterfaceExt!662 (__x!3090 Int)) (Lexer!663) )
))
(declare-fun thiss!17480 () LexerInterface!665)

(declare-datatypes ((tuple2!4678 0))(
  ( (tuple2!4679 (_1!2555 Token!1302) (_2!2555 BalanceConc!2768)) )
))
(declare-datatypes ((Option!924 0))(
  ( (None!923) (Some!923 (v!14928 tuple2!4678)) )
))
(declare-fun isDefined!763 (Option!924) Bool)

(declare-fun maxPrefixZipperSequence!344 (LexerInterface!665 List!4064 BalanceConc!2768) Option!924)

(declare-fun seqFromList!923 (List!4063) BalanceConc!2768)

(assert (=> b!307203 (= res!139657 (not (isDefined!763 (maxPrefixZipperSequence!344 thiss!17480 rules!1920 (seqFromList!923 (originalCharacters!822 (h!9452 tokens!465)))))))))

(declare-datatypes ((Unit!5680 0))(
  ( (Unit!5681) )
))
(declare-fun lt!131017 () Unit!5680)

(declare-fun forallContained!332 (List!4065 Int Token!1302) Unit!5680)

(assert (=> b!307203 (= lt!131017 (forallContained!332 tokens!465 lambda!10480 (h!9452 tokens!465)))))

(declare-fun lt!131004 () List!4063)

(assert (=> b!307203 (= lt!131004 (originalCharacters!822 (h!9452 tokens!465)))))

(declare-fun b!307204 () Bool)

(declare-fun e!191055 () Unit!5680)

(declare-fun Unit!5682 () Unit!5680)

(assert (=> b!307204 (= e!191055 Unit!5682)))

(declare-fun b!307205 () Bool)

(declare-fun res!139661 () Bool)

(declare-fun e!191054 () Bool)

(assert (=> b!307205 (=> (not res!139661) (not e!191054))))

(declare-fun sepAndNonSepRulesDisjointChars!368 (List!4064 List!4064) Bool)

(assert (=> b!307205 (= res!139661 (sepAndNonSepRulesDisjointChars!368 rules!1920 rules!1920))))

(declare-fun res!139654 () Bool)

(assert (=> b!307206 (=> (not res!139654) (not e!191054))))

(declare-fun forall!1070 (List!4065 Int) Bool)

(assert (=> b!307206 (= res!139654 (forall!1070 tokens!465 lambda!10479))))

(declare-fun b!307207 () Bool)

(declare-fun e!191032 () Bool)

(declare-fun e!191044 () Bool)

(assert (=> b!307207 (= e!191032 e!191044)))

(declare-fun res!139667 () Bool)

(assert (=> b!307207 (=> (not res!139667) (not e!191044))))

(declare-datatypes ((tuple2!4680 0))(
  ( (tuple2!4681 (_1!2556 Token!1302) (_2!2556 List!4063)) )
))
(declare-datatypes ((Option!925 0))(
  ( (None!924) (Some!924 (v!14929 tuple2!4680)) )
))
(declare-fun lt!131002 () Option!925)

(declare-fun isDefined!764 (Option!925) Bool)

(assert (=> b!307207 (= res!139667 (isDefined!764 lt!131002))))

(declare-fun lt!130999 () List!4063)

(declare-fun maxPrefix!381 (LexerInterface!665 List!4064 List!4063) Option!925)

(assert (=> b!307207 (= lt!131002 (maxPrefix!381 thiss!17480 rules!1920 lt!130999))))

(declare-fun e!191030 () Bool)

(declare-fun tp!108890 () Bool)

(declare-fun e!191037 () Bool)

(declare-fun b!307208 () Bool)

(declare-fun inv!21 (TokenValue!801) Bool)

(assert (=> b!307208 (= e!191030 (and (inv!21 (value!26517 (h!9452 tokens!465))) e!191037 tp!108890))))

(declare-fun b!307209 () Bool)

(declare-fun res!139663 () Bool)

(assert (=> b!307209 (=> res!139663 e!191041)))

(declare-fun rulesProduceIndividualToken!414 (LexerInterface!665 List!4064 Token!1302) Bool)

(assert (=> b!307209 (= res!139663 (not (rulesProduceIndividualToken!414 thiss!17480 rules!1920 (h!9452 tokens!465))))))

(declare-fun b!307210 () Bool)

(declare-fun e!191052 () Bool)

(assert (=> b!307210 (= e!191052 e!191054)))

(declare-fun res!139658 () Bool)

(assert (=> b!307210 (=> (not res!139658) (not e!191054))))

(declare-datatypes ((IArray!2763 0))(
  ( (IArray!2764 (innerList!1439 List!4065)) )
))
(declare-datatypes ((Conc!1381 0))(
  ( (Node!1381 (left!3369 Conc!1381) (right!3699 Conc!1381) (csize!2992 Int) (cheight!1592 Int)) (Leaf!2110 (xs!3984 IArray!2763) (csize!2993 Int)) (Empty!1381) )
))
(declare-datatypes ((BalanceConc!2770 0))(
  ( (BalanceConc!2771 (c!58264 Conc!1381)) )
))
(declare-fun lt!131005 () BalanceConc!2770)

(declare-fun rulesProduceEachTokenIndividually!457 (LexerInterface!665 List!4064 BalanceConc!2770) Bool)

(assert (=> b!307210 (= res!139658 (rulesProduceEachTokenIndividually!457 thiss!17480 rules!1920 lt!131005))))

(declare-fun seqFromList!924 (List!4065) BalanceConc!2770)

(assert (=> b!307210 (= lt!131005 (seqFromList!924 tokens!465))))

(declare-fun b!307211 () Bool)

(declare-fun e!191049 () Bool)

(assert (=> b!307211 (= e!191028 e!191049)))

(declare-fun res!139647 () Bool)

(assert (=> b!307211 (=> res!139647 e!191049)))

(declare-fun lt!131016 () Bool)

(assert (=> b!307211 (= res!139647 (not lt!131016))))

(declare-fun e!191053 () Bool)

(assert (=> b!307211 e!191053))

(declare-fun res!139668 () Bool)

(assert (=> b!307211 (=> (not res!139668) (not e!191053))))

(declare-fun lt!130996 () tuple2!4680)

(assert (=> b!307211 (= res!139668 (= (_1!2556 lt!130996) (h!9452 tokens!465)))))

(declare-fun lt!131015 () Option!925)

(declare-fun get!1385 (Option!925) tuple2!4680)

(assert (=> b!307211 (= lt!130996 (get!1385 lt!131015))))

(assert (=> b!307211 (isDefined!764 lt!131015)))

(assert (=> b!307211 (= lt!131015 (maxPrefix!381 thiss!17480 rules!1920 lt!131004))))

(declare-fun b!307212 () Bool)

(assert (=> b!307212 (= e!191049 true)))

(declare-fun lt!131012 () Unit!5680)

(assert (=> b!307212 (= lt!131012 e!191055)))

(declare-fun c!58261 () Bool)

(declare-fun isEmpty!2767 (List!4065) Bool)

(assert (=> b!307212 (= c!58261 (isEmpty!2767 (t!43293 tokens!465)))))

(declare-fun lt!131013 () List!4063)

(declare-fun lt!131000 () Option!925)

(assert (=> b!307212 (= lt!131000 (maxPrefix!381 thiss!17480 rules!1920 lt!131013))))

(declare-fun lt!131003 () tuple2!4680)

(assert (=> b!307212 (= lt!131013 (_2!2556 lt!131003))))

(declare-fun lt!131014 () Unit!5680)

(declare-fun lemmaSamePrefixThenSameSuffix!224 (List!4063 List!4063 List!4063 List!4063 List!4063) Unit!5680)

(assert (=> b!307212 (= lt!131014 (lemmaSamePrefixThenSameSuffix!224 lt!131004 lt!131013 lt!131004 (_2!2556 lt!131003) lt!130999))))

(assert (=> b!307212 (= lt!131003 (get!1385 (maxPrefix!381 thiss!17480 rules!1920 lt!130999)))))

(declare-fun lt!131011 () List!4063)

(declare-fun isPrefix!439 (List!4063 List!4063) Bool)

(assert (=> b!307212 (isPrefix!439 lt!131004 lt!131011)))

(declare-fun lt!130997 () Unit!5680)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!330 (List!4063 List!4063) Unit!5680)

(assert (=> b!307212 (= lt!130997 (lemmaConcatTwoListThenFirstIsPrefix!330 lt!131004 lt!131013))))

(assert (=> b!307212 e!191032))

(declare-fun res!139651 () Bool)

(assert (=> b!307212 (=> res!139651 e!191032)))

(assert (=> b!307212 (= res!139651 (isEmpty!2767 tokens!465))))

(declare-fun lt!131010 () Unit!5680)

(declare-fun separatorToken!170 () Token!1302)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!186 (LexerInterface!665 List!4064 List!4065 Token!1302) Unit!5680)

(assert (=> b!307212 (= lt!131010 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!186 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!307213 () Bool)

(declare-fun res!139662 () Bool)

(assert (=> b!307213 (=> res!139662 e!191041)))

(declare-fun isEmpty!2768 (BalanceConc!2770) Bool)

(declare-datatypes ((tuple2!4682 0))(
  ( (tuple2!4683 (_1!2557 BalanceConc!2770) (_2!2557 BalanceConc!2768)) )
))
(declare-fun lex!457 (LexerInterface!665 List!4064 BalanceConc!2768) tuple2!4682)

(assert (=> b!307213 (= res!139662 (isEmpty!2768 (_1!2557 (lex!457 thiss!17480 rules!1920 (seqFromList!923 lt!131004)))))))

(declare-fun b!307214 () Bool)

(declare-fun e!191045 () Bool)

(declare-fun e!191040 () Bool)

(declare-fun tp!108886 () Bool)

(assert (=> b!307214 (= e!191045 (and e!191040 tp!108886))))

(declare-fun b!307215 () Bool)

(declare-fun e!191046 () Bool)

(assert (=> b!307215 (= e!191054 e!191046)))

(declare-fun res!139650 () Bool)

(assert (=> b!307215 (=> (not res!139650) (not e!191046))))

(declare-fun lt!130998 () List!4063)

(assert (=> b!307215 (= res!139650 (= lt!130999 lt!130998))))

(declare-fun list!1711 (BalanceConc!2768) List!4063)

(declare-fun printWithSeparatorTokenWhenNeededRec!338 (LexerInterface!665 List!4064 BalanceConc!2770 Token!1302 Int) BalanceConc!2768)

(assert (=> b!307215 (= lt!130998 (list!1711 (printWithSeparatorTokenWhenNeededRec!338 thiss!17480 rules!1920 lt!131005 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!346 (LexerInterface!665 List!4064 List!4065 Token!1302) List!4063)

(assert (=> b!307215 (= lt!130999 (printWithSeparatorTokenWhenNeededList!346 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!307216 () Bool)

(declare-fun res!139652 () Bool)

(assert (=> b!307216 (=> (not res!139652) (not e!191054))))

(assert (=> b!307216 (= res!139652 (isSeparator!779 (rule!1392 separatorToken!170)))))

(declare-fun b!307217 () Bool)

(declare-fun res!139655 () Bool)

(assert (=> b!307217 (=> (not res!139655) (not e!191052))))

(declare-fun rulesInvariant!631 (LexerInterface!665 List!4064) Bool)

(assert (=> b!307217 (= res!139655 (rulesInvariant!631 thiss!17480 rules!1920))))

(declare-fun b!307218 () Bool)

(declare-fun matchR!321 (Regex!1003 List!4063) Bool)

(assert (=> b!307218 (= e!191053 (matchR!321 (regex!779 (rule!1392 (h!9452 tokens!465))) lt!131004))))

(declare-fun tp!108880 () Bool)

(declare-fun e!191031 () Bool)

(declare-fun b!307219 () Bool)

(declare-fun e!191035 () Bool)

(assert (=> b!307219 (= e!191035 (and (inv!21 (value!26517 separatorToken!170)) e!191031 tp!108880))))

(declare-fun res!139656 () Bool)

(assert (=> start!33082 (=> (not res!139656) (not e!191052))))

(assert (=> start!33082 (= res!139656 ((_ is Lexer!663) thiss!17480))))

(assert (=> start!33082 e!191052))

(assert (=> start!33082 true))

(assert (=> start!33082 e!191045))

(declare-fun inv!5008 (Token!1302) Bool)

(assert (=> start!33082 (and (inv!5008 separatorToken!170) e!191035)))

(declare-fun e!191038 () Bool)

(assert (=> start!33082 e!191038))

(declare-fun b!307220 () Bool)

(declare-fun e!191033 () Bool)

(assert (=> b!307220 (= e!191033 e!191041)))

(declare-fun res!139665 () Bool)

(assert (=> b!307220 (=> res!139665 e!191041)))

(declare-fun lt!131009 () List!4063)

(declare-fun lt!131006 () List!4063)

(assert (=> b!307220 (= res!139665 (or (not (= lt!131009 lt!131006)) (not (= lt!131006 lt!131004)) (not (= lt!131009 lt!131004))))))

(declare-fun printList!339 (LexerInterface!665 List!4065) List!4063)

(assert (=> b!307220 (= lt!131006 (printList!339 thiss!17480 (Cons!4055 (h!9452 tokens!465) Nil!4055)))))

(declare-fun lt!131018 () BalanceConc!2768)

(assert (=> b!307220 (= lt!131009 (list!1711 lt!131018))))

(declare-fun lt!131019 () BalanceConc!2770)

(declare-fun printTailRec!351 (LexerInterface!665 BalanceConc!2770 Int BalanceConc!2768) BalanceConc!2768)

(assert (=> b!307220 (= lt!131018 (printTailRec!351 thiss!17480 lt!131019 0 (BalanceConc!2769 Empty!1380)))))

(declare-fun print!390 (LexerInterface!665 BalanceConc!2770) BalanceConc!2768)

(assert (=> b!307220 (= lt!131018 (print!390 thiss!17480 lt!131019))))

(declare-fun singletonSeq!325 (Token!1302) BalanceConc!2770)

(assert (=> b!307220 (= lt!131019 (singletonSeq!325 (h!9452 tokens!465)))))

(declare-fun e!191043 () Bool)

(assert (=> b!307221 (= e!191043 (and tp!108882 tp!108888))))

(declare-fun b!307222 () Bool)

(declare-fun tp!108884 () Bool)

(declare-fun inv!5005 (String!5085) Bool)

(declare-fun inv!5009 (TokenValueInjection!1374) Bool)

(assert (=> b!307222 (= e!191031 (and tp!108884 (inv!5005 (tag!997 (rule!1392 separatorToken!170))) (inv!5009 (transformation!779 (rule!1392 separatorToken!170))) e!191043))))

(declare-fun b!307223 () Bool)

(declare-fun res!139666 () Bool)

(assert (=> b!307223 (=> (not res!139666) (not e!191054))))

(assert (=> b!307223 (= res!139666 ((_ is Cons!4055) tokens!465))))

(declare-fun e!191036 () Bool)

(assert (=> b!307224 (= e!191036 (and tp!108891 tp!108887))))

(declare-fun e!191048 () Bool)

(declare-fun b!307225 () Bool)

(declare-fun tp!108879 () Bool)

(assert (=> b!307225 (= e!191037 (and tp!108879 (inv!5005 (tag!997 (rule!1392 (h!9452 tokens!465)))) (inv!5009 (transformation!779 (rule!1392 (h!9452 tokens!465)))) e!191048))))

(declare-fun b!307226 () Bool)

(declare-fun e!191051 () Bool)

(assert (=> b!307226 (= e!191046 (not e!191051))))

(declare-fun res!139660 () Bool)

(assert (=> b!307226 (=> res!139660 e!191051)))

(declare-fun lt!131001 () List!4063)

(assert (=> b!307226 (= res!139660 (not (= lt!131001 (list!1711 (printWithSeparatorTokenWhenNeededRec!338 thiss!17480 rules!1920 (seqFromList!924 (t!43293 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!131020 () List!4063)

(assert (=> b!307226 (= lt!131020 lt!131011)))

(declare-fun ++!1100 (List!4063 List!4063) List!4063)

(assert (=> b!307226 (= lt!131011 (++!1100 lt!131004 lt!131013))))

(declare-fun lt!131007 () List!4063)

(assert (=> b!307226 (= lt!131020 (++!1100 (++!1100 lt!131004 lt!131007) lt!131001))))

(declare-fun lt!131008 () Unit!5680)

(declare-fun lemmaConcatAssociativity!486 (List!4063 List!4063 List!4063) Unit!5680)

(assert (=> b!307226 (= lt!131008 (lemmaConcatAssociativity!486 lt!131004 lt!131007 lt!131001))))

(declare-fun charsOf!422 (Token!1302) BalanceConc!2768)

(assert (=> b!307226 (= lt!131004 (list!1711 (charsOf!422 (h!9452 tokens!465))))))

(assert (=> b!307226 (= lt!131013 (++!1100 lt!131007 lt!131001))))

(assert (=> b!307226 (= lt!131001 (printWithSeparatorTokenWhenNeededList!346 thiss!17480 rules!1920 (t!43293 tokens!465) separatorToken!170))))

(assert (=> b!307226 (= lt!131007 (list!1711 (charsOf!422 separatorToken!170)))))

(declare-fun b!307227 () Bool)

(declare-fun head!964 (List!4065) Token!1302)

(assert (=> b!307227 (= e!191044 (= (_1!2556 (get!1385 lt!131002)) (head!964 tokens!465)))))

(declare-fun tp!108883 () Bool)

(declare-fun b!307228 () Bool)

(assert (=> b!307228 (= e!191040 (and tp!108883 (inv!5005 (tag!997 (h!9451 rules!1920))) (inv!5009 (transformation!779 (h!9451 rules!1920))) e!191036))))

(declare-fun b!307229 () Bool)

(declare-fun res!139664 () Bool)

(assert (=> b!307229 (=> (not res!139664) (not e!191052))))

(declare-fun isEmpty!2769 (List!4064) Bool)

(assert (=> b!307229 (= res!139664 (not (isEmpty!2769 rules!1920)))))

(declare-fun b!307230 () Bool)

(declare-fun Unit!5683 () Unit!5680)

(assert (=> b!307230 (= e!191055 Unit!5683)))

(assert (=> b!307230 false))

(declare-fun b!307231 () Bool)

(assert (=> b!307231 (= e!191051 e!191033)))

(declare-fun res!139659 () Bool)

(assert (=> b!307231 (=> res!139659 e!191033)))

(declare-fun e!191029 () Bool)

(assert (=> b!307231 (= res!139659 e!191029)))

(declare-fun res!139669 () Bool)

(assert (=> b!307231 (=> (not res!139669) (not e!191029))))

(assert (=> b!307231 (= res!139669 (not lt!131016))))

(assert (=> b!307231 (= lt!131016 (= lt!130999 lt!131011))))

(declare-fun tp!108885 () Bool)

(declare-fun b!307232 () Bool)

(assert (=> b!307232 (= e!191038 (and (inv!5008 (h!9452 tokens!465)) e!191030 tp!108885))))

(declare-fun b!307233 () Bool)

(declare-fun res!139649 () Bool)

(assert (=> b!307233 (=> (not res!139649) (not e!191046))))

(assert (=> b!307233 (= res!139649 (= (list!1711 (seqFromList!923 lt!130999)) lt!130998))))

(declare-fun b!307234 () Bool)

(declare-fun res!139653 () Bool)

(assert (=> b!307234 (=> (not res!139653) (not e!191054))))

(assert (=> b!307234 (= res!139653 (rulesProduceIndividualToken!414 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!307235 () Bool)

(assert (=> b!307235 (= e!191029 (not (= lt!130999 (++!1100 lt!131004 lt!131001))))))

(declare-fun b!307236 () Bool)

(declare-fun res!139648 () Bool)

(assert (=> b!307236 (=> (not res!139648) (not e!191053))))

(declare-fun isEmpty!2770 (List!4063) Bool)

(assert (=> b!307236 (= res!139648 (isEmpty!2770 (_2!2556 lt!130996)))))

(assert (=> b!307237 (= e!191048 (and tp!108889 tp!108881))))

(assert (= (and start!33082 res!139656) b!307229))

(assert (= (and b!307229 res!139664) b!307217))

(assert (= (and b!307217 res!139655) b!307210))

(assert (= (and b!307210 res!139658) b!307234))

(assert (= (and b!307234 res!139653) b!307216))

(assert (= (and b!307216 res!139652) b!307206))

(assert (= (and b!307206 res!139654) b!307205))

(assert (= (and b!307205 res!139661) b!307223))

(assert (= (and b!307223 res!139666) b!307215))

(assert (= (and b!307215 res!139650) b!307233))

(assert (= (and b!307233 res!139649) b!307226))

(assert (= (and b!307226 (not res!139660)) b!307231))

(assert (= (and b!307231 res!139669) b!307235))

(assert (= (and b!307231 (not res!139659)) b!307220))

(assert (= (and b!307220 (not res!139665)) b!307209))

(assert (= (and b!307209 (not res!139663)) b!307213))

(assert (= (and b!307213 (not res!139662)) b!307203))

(assert (= (and b!307203 (not res!139657)) b!307211))

(assert (= (and b!307211 res!139668) b!307236))

(assert (= (and b!307236 res!139648) b!307218))

(assert (= (and b!307211 (not res!139647)) b!307212))

(assert (= (and b!307212 (not res!139651)) b!307207))

(assert (= (and b!307207 res!139667) b!307227))

(assert (= (and b!307212 c!58261) b!307230))

(assert (= (and b!307212 (not c!58261)) b!307204))

(assert (= b!307228 b!307224))

(assert (= b!307214 b!307228))

(assert (= (and start!33082 ((_ is Cons!4054) rules!1920)) b!307214))

(assert (= b!307222 b!307221))

(assert (= b!307219 b!307222))

(assert (= start!33082 b!307219))

(assert (= b!307225 b!307237))

(assert (= b!307208 b!307225))

(assert (= b!307232 b!307208))

(assert (= (and start!33082 ((_ is Cons!4055) tokens!465)) b!307232))

(declare-fun m!409951 () Bool)

(assert (=> b!307233 m!409951))

(assert (=> b!307233 m!409951))

(declare-fun m!409953 () Bool)

(assert (=> b!307233 m!409953))

(declare-fun m!409955 () Bool)

(assert (=> b!307229 m!409955))

(declare-fun m!409957 () Bool)

(assert (=> b!307218 m!409957))

(declare-fun m!409959 () Bool)

(assert (=> b!307208 m!409959))

(declare-fun m!409961 () Bool)

(assert (=> b!307215 m!409961))

(assert (=> b!307215 m!409961))

(declare-fun m!409963 () Bool)

(assert (=> b!307215 m!409963))

(declare-fun m!409965 () Bool)

(assert (=> b!307215 m!409965))

(declare-fun m!409967 () Bool)

(assert (=> b!307232 m!409967))

(declare-fun m!409969 () Bool)

(assert (=> b!307220 m!409969))

(declare-fun m!409971 () Bool)

(assert (=> b!307220 m!409971))

(declare-fun m!409973 () Bool)

(assert (=> b!307220 m!409973))

(declare-fun m!409975 () Bool)

(assert (=> b!307220 m!409975))

(declare-fun m!409977 () Bool)

(assert (=> b!307220 m!409977))

(declare-fun m!409979 () Bool)

(assert (=> b!307217 m!409979))

(declare-fun m!409981 () Bool)

(assert (=> b!307210 m!409981))

(declare-fun m!409983 () Bool)

(assert (=> b!307210 m!409983))

(declare-fun m!409985 () Bool)

(assert (=> b!307227 m!409985))

(declare-fun m!409987 () Bool)

(assert (=> b!307227 m!409987))

(declare-fun m!409989 () Bool)

(assert (=> b!307234 m!409989))

(declare-fun m!409991 () Bool)

(assert (=> start!33082 m!409991))

(declare-fun m!409993 () Bool)

(assert (=> b!307226 m!409993))

(declare-fun m!409995 () Bool)

(assert (=> b!307226 m!409995))

(declare-fun m!409997 () Bool)

(assert (=> b!307226 m!409997))

(declare-fun m!409999 () Bool)

(assert (=> b!307226 m!409999))

(declare-fun m!410001 () Bool)

(assert (=> b!307226 m!410001))

(declare-fun m!410003 () Bool)

(assert (=> b!307226 m!410003))

(declare-fun m!410005 () Bool)

(assert (=> b!307226 m!410005))

(declare-fun m!410007 () Bool)

(assert (=> b!307226 m!410007))

(assert (=> b!307226 m!409995))

(assert (=> b!307226 m!410003))

(declare-fun m!410009 () Bool)

(assert (=> b!307226 m!410009))

(assert (=> b!307226 m!409993))

(declare-fun m!410011 () Bool)

(assert (=> b!307226 m!410011))

(declare-fun m!410013 () Bool)

(assert (=> b!307226 m!410013))

(assert (=> b!307226 m!410013))

(declare-fun m!410015 () Bool)

(assert (=> b!307226 m!410015))

(assert (=> b!307226 m!410011))

(declare-fun m!410017 () Bool)

(assert (=> b!307226 m!410017))

(declare-fun m!410019 () Bool)

(assert (=> b!307225 m!410019))

(declare-fun m!410021 () Bool)

(assert (=> b!307225 m!410021))

(declare-fun m!410023 () Bool)

(assert (=> b!307211 m!410023))

(declare-fun m!410025 () Bool)

(assert (=> b!307211 m!410025))

(declare-fun m!410027 () Bool)

(assert (=> b!307211 m!410027))

(declare-fun m!410029 () Bool)

(assert (=> b!307205 m!410029))

(declare-fun m!410031 () Bool)

(assert (=> b!307219 m!410031))

(declare-fun m!410033 () Bool)

(assert (=> b!307228 m!410033))

(declare-fun m!410035 () Bool)

(assert (=> b!307228 m!410035))

(declare-fun m!410037 () Bool)

(assert (=> b!307213 m!410037))

(assert (=> b!307213 m!410037))

(declare-fun m!410039 () Bool)

(assert (=> b!307213 m!410039))

(declare-fun m!410041 () Bool)

(assert (=> b!307213 m!410041))

(declare-fun m!410043 () Bool)

(assert (=> b!307203 m!410043))

(assert (=> b!307203 m!410043))

(declare-fun m!410045 () Bool)

(assert (=> b!307203 m!410045))

(assert (=> b!307203 m!410045))

(declare-fun m!410047 () Bool)

(assert (=> b!307203 m!410047))

(declare-fun m!410049 () Bool)

(assert (=> b!307203 m!410049))

(declare-fun m!410051 () Bool)

(assert (=> b!307222 m!410051))

(declare-fun m!410053 () Bool)

(assert (=> b!307222 m!410053))

(declare-fun m!410055 () Bool)

(assert (=> b!307209 m!410055))

(declare-fun m!410057 () Bool)

(assert (=> b!307236 m!410057))

(declare-fun m!410059 () Bool)

(assert (=> b!307206 m!410059))

(declare-fun m!410061 () Bool)

(assert (=> b!307207 m!410061))

(declare-fun m!410063 () Bool)

(assert (=> b!307207 m!410063))

(declare-fun m!410065 () Bool)

(assert (=> b!307212 m!410065))

(declare-fun m!410067 () Bool)

(assert (=> b!307212 m!410067))

(declare-fun m!410069 () Bool)

(assert (=> b!307212 m!410069))

(assert (=> b!307212 m!410063))

(declare-fun m!410071 () Bool)

(assert (=> b!307212 m!410071))

(declare-fun m!410073 () Bool)

(assert (=> b!307212 m!410073))

(declare-fun m!410075 () Bool)

(assert (=> b!307212 m!410075))

(assert (=> b!307212 m!410063))

(declare-fun m!410077 () Bool)

(assert (=> b!307212 m!410077))

(declare-fun m!410079 () Bool)

(assert (=> b!307212 m!410079))

(declare-fun m!410081 () Bool)

(assert (=> b!307235 m!410081))

(check-sat b_and!25943 (not b_next!11003) (not b!307213) (not b!307217) (not b!307228) (not b_next!10999) (not b!307211) (not b!307227) (not b!307235) (not b!307220) (not b!307233) b_and!25945 (not b!307226) (not b_next!10995) b_and!25941 (not b!307215) (not b!307232) (not b!307234) b_and!25951 (not start!33082) (not b!307210) (not b!307218) (not b!307206) (not b!307246) (not b!307205) (not b!307222) b_and!25949 (not b!307236) (not b!307214) (not b!307207) (not b!307212) (not b!307203) b_and!25947 (not b_next!10993) (not b!307229) (not b!307225) (not b!307219) (not b_next!10997) (not b!307208) (not b!307209) (not b_next!11001))
(check-sat b_and!25951 b_and!25943 (not b_next!11003) (not b_next!10999) b_and!25949 b_and!25945 (not b_next!10995) b_and!25941 b_and!25947 (not b_next!10993) (not b_next!11001) (not b_next!10997))
