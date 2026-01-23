; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!113416 () Bool)

(assert start!113416)

(declare-fun b!1291000 () Bool)

(declare-fun b_free!30487 () Bool)

(declare-fun b_next!31191 () Bool)

(assert (=> b!1291000 (= b_free!30487 (not b_next!31191))))

(declare-fun tp!376298 () Bool)

(declare-fun b_and!85955 () Bool)

(assert (=> b!1291000 (= tp!376298 b_and!85955)))

(declare-fun b_free!30489 () Bool)

(declare-fun b_next!31193 () Bool)

(assert (=> b!1291000 (= b_free!30489 (not b_next!31193))))

(declare-fun tp!376300 () Bool)

(declare-fun b_and!85957 () Bool)

(assert (=> b!1291000 (= tp!376300 b_and!85957)))

(declare-fun b!1290990 () Bool)

(declare-fun b_free!30491 () Bool)

(declare-fun b_next!31195 () Bool)

(assert (=> b!1290990 (= b_free!30491 (not b_next!31195))))

(declare-fun tp!376297 () Bool)

(declare-fun b_and!85959 () Bool)

(assert (=> b!1290990 (= tp!376297 b_and!85959)))

(declare-fun b_free!30493 () Bool)

(declare-fun b_next!31197 () Bool)

(assert (=> b!1290990 (= b_free!30493 (not b_next!31197))))

(declare-fun tp!376301 () Bool)

(declare-fun b_and!85961 () Bool)

(assert (=> b!1290990 (= tp!376301 b_and!85961)))

(declare-fun b!1290994 () Bool)

(declare-fun b_free!30495 () Bool)

(declare-fun b_next!31199 () Bool)

(assert (=> b!1290994 (= b_free!30495 (not b_next!31199))))

(declare-fun tp!376302 () Bool)

(declare-fun b_and!85963 () Bool)

(assert (=> b!1290994 (= tp!376302 b_and!85963)))

(declare-fun b_free!30497 () Bool)

(declare-fun b_next!31201 () Bool)

(assert (=> b!1290994 (= b_free!30497 (not b_next!31201))))

(declare-fun tp!376292 () Bool)

(declare-fun b_and!85965 () Bool)

(assert (=> b!1290994 (= tp!376292 b_and!85965)))

(declare-fun b!1291001 () Bool)

(assert (=> b!1291001 true))

(assert (=> b!1291001 true))

(declare-fun b!1290986 () Bool)

(declare-fun e!827901 () Bool)

(declare-datatypes ((C!7358 0))(
  ( (C!7359 (val!4239 Int)) )
))
(declare-datatypes ((Regex!3534 0))(
  ( (ElementMatch!3534 (c!212517 C!7358)) (Concat!5844 (regOne!7580 Regex!3534) (regTwo!7580 Regex!3534)) (EmptyExpr!3534) (Star!3534 (reg!3863 Regex!3534)) (EmptyLang!3534) (Union!3534 (regOne!7581 Regex!3534) (regTwo!7581 Regex!3534)) )
))
(declare-fun lt!425053 () Regex!3534)

(declare-fun validRegex!1522 (Regex!3534) Bool)

(assert (=> b!1290986 (= e!827901 (validRegex!1522 lt!425053))))

(declare-fun e!827905 () Bool)

(declare-fun tp!376294 () Bool)

(declare-fun e!827897 () Bool)

(declare-fun b!1290987 () Bool)

(declare-datatypes ((List!12960 0))(
  ( (Nil!12894) (Cons!12894 (h!18295 (_ BitVec 16)) (t!117149 List!12960)) )
))
(declare-datatypes ((TokenValue!2310 0))(
  ( (FloatLiteralValue!4620 (text!16615 List!12960)) (TokenValueExt!2309 (__x!8449 Int)) (Broken!11550 (value!72878 List!12960)) (Object!2375) (End!2310) (Def!2310) (Underscore!2310) (Match!2310) (Else!2310) (Error!2310) (Case!2310) (If!2310) (Extends!2310) (Abstract!2310) (Class!2310) (Val!2310) (DelimiterValue!4620 (del!2370 List!12960)) (KeywordValue!2316 (value!72879 List!12960)) (CommentValue!4620 (value!72880 List!12960)) (WhitespaceValue!4620 (value!72881 List!12960)) (IndentationValue!2310 (value!72882 List!12960)) (String!15787) (Int32!2310) (Broken!11551 (value!72883 List!12960)) (Boolean!2311) (Unit!19052) (OperatorValue!2313 (op!2370 List!12960)) (IdentifierValue!4620 (value!72884 List!12960)) (IdentifierValue!4621 (value!72885 List!12960)) (WhitespaceValue!4621 (value!72886 List!12960)) (True!4620) (False!4620) (Broken!11552 (value!72887 List!12960)) (Broken!11553 (value!72888 List!12960)) (True!4621) (RightBrace!2310) (RightBracket!2310) (Colon!2310) (Null!2310) (Comma!2310) (LeftBracket!2310) (False!4621) (LeftBrace!2310) (ImaginaryLiteralValue!2310 (text!16616 List!12960)) (StringLiteralValue!6930 (value!72889 List!12960)) (EOFValue!2310 (value!72890 List!12960)) (IdentValue!2310 (value!72891 List!12960)) (DelimiterValue!4621 (value!72892 List!12960)) (DedentValue!2310 (value!72893 List!12960)) (NewLineValue!2310 (value!72894 List!12960)) (IntegerValue!6930 (value!72895 (_ BitVec 32)) (text!16617 List!12960)) (IntegerValue!6931 (value!72896 Int) (text!16618 List!12960)) (Times!2310) (Or!2310) (Equal!2310) (Minus!2310) (Broken!11554 (value!72897 List!12960)) (And!2310) (Div!2310) (LessEqual!2310) (Mod!2310) (Concat!5845) (Not!2310) (Plus!2310) (SpaceValue!2310 (value!72898 List!12960)) (IntegerValue!6932 (value!72899 Int) (text!16619 List!12960)) (StringLiteralValue!6931 (text!16620 List!12960)) (FloatLiteralValue!4621 (text!16621 List!12960)) (BytesLiteralValue!2310 (value!72900 List!12960)) (CommentValue!4621 (value!72901 List!12960)) (StringLiteralValue!6932 (value!72902 List!12960)) (ErrorTokenValue!2310 (msg!2371 List!12960)) )
))
(declare-datatypes ((List!12961 0))(
  ( (Nil!12895) (Cons!12895 (h!18296 C!7358) (t!117150 List!12961)) )
))
(declare-datatypes ((IArray!8477 0))(
  ( (IArray!8478 (innerList!4296 List!12961)) )
))
(declare-datatypes ((Conc!4236 0))(
  ( (Node!4236 (left!11094 Conc!4236) (right!11424 Conc!4236) (csize!8702 Int) (cheight!4447 Int)) (Leaf!6543 (xs!6947 IArray!8477) (csize!8703 Int)) (Empty!4236) )
))
(declare-datatypes ((BalanceConc!8412 0))(
  ( (BalanceConc!8413 (c!212518 Conc!4236)) )
))
(declare-datatypes ((String!15788 0))(
  ( (String!15789 (value!72903 String)) )
))
(declare-datatypes ((TokenValueInjection!4280 0))(
  ( (TokenValueInjection!4281 (toValue!3419 Int) (toChars!3278 Int)) )
))
(declare-datatypes ((Rule!4240 0))(
  ( (Rule!4241 (regex!2220 Regex!3534) (tag!2482 String!15788) (isSeparator!2220 Bool) (transformation!2220 TokenValueInjection!4280)) )
))
(declare-datatypes ((Token!4102 0))(
  ( (Token!4103 (value!72904 TokenValue!2310) (rule!3959 Rule!4240) (size!10525 Int) (originalCharacters!3082 List!12961)) )
))
(declare-fun t1!34 () Token!4102)

(declare-fun inv!17314 (String!15788) Bool)

(declare-fun inv!17317 (TokenValueInjection!4280) Bool)

(assert (=> b!1290987 (= e!827897 (and tp!376294 (inv!17314 (tag!2482 (rule!3959 t1!34))) (inv!17317 (transformation!2220 (rule!3959 t1!34))) e!827905))))

(declare-fun b!1290988 () Bool)

(declare-fun res!578544 () Bool)

(declare-fun e!827900 () Bool)

(assert (=> b!1290988 (=> (not res!578544) (not e!827900))))

(declare-datatypes ((LexerInterface!1915 0))(
  ( (LexerInterfaceExt!1912 (__x!8450 Int)) (Lexer!1913) )
))
(declare-fun thiss!19762 () LexerInterface!1915)

(declare-datatypes ((List!12962 0))(
  ( (Nil!12896) (Cons!12896 (h!18297 Rule!4240) (t!117151 List!12962)) )
))
(declare-fun rules!2550 () List!12962)

(declare-fun t2!34 () Token!4102)

(declare-fun rulesProduceIndividualToken!884 (LexerInterface!1915 List!12962 Token!4102) Bool)

(assert (=> b!1290988 (= res!578544 (rulesProduceIndividualToken!884 thiss!19762 rules!2550 t2!34))))

(declare-fun tp!376293 () Bool)

(declare-fun b!1290989 () Bool)

(declare-fun e!827912 () Bool)

(declare-fun e!827907 () Bool)

(assert (=> b!1290989 (= e!827912 (and tp!376293 (inv!17314 (tag!2482 (rule!3959 t2!34))) (inv!17317 (transformation!2220 (rule!3959 t2!34))) e!827907))))

(assert (=> b!1290990 (= e!827907 (and tp!376297 tp!376301))))

(declare-fun b!1290991 () Bool)

(declare-fun e!827911 () Bool)

(declare-fun e!827909 () Bool)

(declare-fun tp!376299 () Bool)

(assert (=> b!1290991 (= e!827911 (and e!827909 tp!376299))))

(declare-fun b!1290992 () Bool)

(declare-fun res!578541 () Bool)

(declare-fun e!827913 () Bool)

(assert (=> b!1290992 (=> (not res!578541) (not e!827913))))

(declare-fun separableTokensPredicate!198 (LexerInterface!1915 Token!4102 Token!4102 List!12962) Bool)

(assert (=> b!1290992 (= res!578541 (not (separableTokensPredicate!198 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun e!827908 () Bool)

(assert (=> b!1290994 (= e!827908 (and tp!376302 tp!376292))))

(declare-fun b!1290995 () Bool)

(declare-fun res!578548 () Bool)

(assert (=> b!1290995 (=> (not res!578548) (not e!827900))))

(assert (=> b!1290995 (= res!578548 (rulesProduceIndividualToken!884 thiss!19762 rules!2550 t1!34))))

(declare-fun tp!376295 () Bool)

(declare-fun b!1290996 () Bool)

(assert (=> b!1290996 (= e!827909 (and tp!376295 (inv!17314 (tag!2482 (h!18297 rules!2550))) (inv!17317 (transformation!2220 (h!18297 rules!2550))) e!827908))))

(declare-fun b!1290997 () Bool)

(declare-fun e!827903 () Bool)

(declare-fun tp!376291 () Bool)

(declare-fun inv!21 (TokenValue!2310) Bool)

(assert (=> b!1290997 (= e!827903 (and (inv!21 (value!72904 t1!34)) e!827897 tp!376291))))

(declare-fun b!1290998 () Bool)

(declare-fun res!578547 () Bool)

(assert (=> b!1290998 (=> (not res!578547) (not e!827900))))

(declare-fun rulesInvariant!1785 (LexerInterface!1915 List!12962) Bool)

(assert (=> b!1290998 (= res!578547 (rulesInvariant!1785 thiss!19762 rules!2550))))

(declare-fun b!1290999 () Bool)

(declare-fun e!827902 () Bool)

(assert (=> b!1290999 (= e!827913 e!827902)))

(declare-fun res!578546 () Bool)

(assert (=> b!1290999 (=> (not res!578546) (not e!827902))))

(declare-fun lt!425054 () List!12961)

(declare-fun prefixMatch!47 (Regex!3534 List!12961) Bool)

(assert (=> b!1290999 (= res!578546 (prefixMatch!47 lt!425053 lt!425054))))

(declare-fun rulesRegex!105 (LexerInterface!1915 List!12962) Regex!3534)

(assert (=> b!1290999 (= lt!425053 (rulesRegex!105 thiss!19762 rules!2550))))

(declare-fun lt!425052 () BalanceConc!8412)

(declare-fun ++!3266 (List!12961 List!12961) List!12961)

(declare-fun list!4812 (BalanceConc!8412) List!12961)

(declare-fun charsOf!1192 (Token!4102) BalanceConc!8412)

(declare-fun apply!2812 (BalanceConc!8412 Int) C!7358)

(assert (=> b!1290999 (= lt!425054 (++!3266 (list!4812 (charsOf!1192 t1!34)) (Cons!12895 (apply!2812 lt!425052 0) Nil!12895)))))

(assert (=> b!1291000 (= e!827905 (and tp!376298 tp!376300))))

(assert (=> b!1291001 (= e!827902 (not e!827901))))

(declare-fun res!578539 () Bool)

(assert (=> b!1291001 (=> res!578539 e!827901)))

(declare-fun lambda!50706 () Int)

(declare-fun Exists!692 (Int) Bool)

(assert (=> b!1291001 (= res!578539 (not (Exists!692 lambda!50706)))))

(assert (=> b!1291001 (Exists!692 lambda!50706)))

(declare-datatypes ((Unit!19053 0))(
  ( (Unit!19054) )
))
(declare-fun lt!425051 () Unit!19053)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!10 (Regex!3534 List!12961) Unit!19053)

(assert (=> b!1291001 (= lt!425051 (lemmaPrefixMatchThenExistsStringThatMatches!10 lt!425053 lt!425054))))

(declare-fun b!1291002 () Bool)

(assert (=> b!1291002 (= e!827900 e!827913)))

(declare-fun res!578545 () Bool)

(assert (=> b!1291002 (=> (not res!578545) (not e!827913))))

(declare-fun size!10526 (BalanceConc!8412) Int)

(assert (=> b!1291002 (= res!578545 (> (size!10526 lt!425052) 0))))

(assert (=> b!1291002 (= lt!425052 (charsOf!1192 t2!34))))

(declare-fun tp!376296 () Bool)

(declare-fun e!827906 () Bool)

(declare-fun b!1291003 () Bool)

(assert (=> b!1291003 (= e!827906 (and (inv!21 (value!72904 t2!34)) e!827912 tp!376296))))

(declare-fun res!578543 () Bool)

(assert (=> start!113416 (=> (not res!578543) (not e!827900))))

(assert (=> start!113416 (= res!578543 (is-Lexer!1913 thiss!19762))))

(assert (=> start!113416 e!827900))

(assert (=> start!113416 true))

(assert (=> start!113416 e!827911))

(declare-fun inv!17318 (Token!4102) Bool)

(assert (=> start!113416 (and (inv!17318 t1!34) e!827903)))

(assert (=> start!113416 (and (inv!17318 t2!34) e!827906)))

(declare-fun b!1290993 () Bool)

(declare-fun res!578542 () Bool)

(assert (=> b!1290993 (=> (not res!578542) (not e!827900))))

(declare-fun isEmpty!7656 (List!12962) Bool)

(assert (=> b!1290993 (= res!578542 (not (isEmpty!7656 rules!2550)))))

(declare-fun b!1291004 () Bool)

(declare-fun res!578549 () Bool)

(assert (=> b!1291004 (=> (not res!578549) (not e!827900))))

(assert (=> b!1291004 (= res!578549 (not (= (isSeparator!2220 (rule!3959 t1!34)) (isSeparator!2220 (rule!3959 t2!34)))))))

(declare-fun b!1291005 () Bool)

(declare-fun res!578540 () Bool)

(assert (=> b!1291005 (=> (not res!578540) (not e!827913))))

(declare-fun sepAndNonSepRulesDisjointChars!593 (List!12962 List!12962) Bool)

(assert (=> b!1291005 (= res!578540 (sepAndNonSepRulesDisjointChars!593 rules!2550 rules!2550))))

(assert (= (and start!113416 res!578543) b!1290993))

(assert (= (and b!1290993 res!578542) b!1290998))

(assert (= (and b!1290998 res!578547) b!1290995))

(assert (= (and b!1290995 res!578548) b!1290988))

(assert (= (and b!1290988 res!578544) b!1291004))

(assert (= (and b!1291004 res!578549) b!1291002))

(assert (= (and b!1291002 res!578545) b!1291005))

(assert (= (and b!1291005 res!578540) b!1290992))

(assert (= (and b!1290992 res!578541) b!1290999))

(assert (= (and b!1290999 res!578546) b!1291001))

(assert (= (and b!1291001 (not res!578539)) b!1290986))

(assert (= b!1290996 b!1290994))

(assert (= b!1290991 b!1290996))

(assert (= (and start!113416 (is-Cons!12896 rules!2550)) b!1290991))

(assert (= b!1290987 b!1291000))

(assert (= b!1290997 b!1290987))

(assert (= start!113416 b!1290997))

(assert (= b!1290989 b!1290990))

(assert (= b!1291003 b!1290989))

(assert (= start!113416 b!1291003))

(declare-fun m!1441751 () Bool)

(assert (=> b!1290997 m!1441751))

(declare-fun m!1441753 () Bool)

(assert (=> b!1291003 m!1441753))

(declare-fun m!1441755 () Bool)

(assert (=> b!1290995 m!1441755))

(declare-fun m!1441757 () Bool)

(assert (=> b!1291001 m!1441757))

(assert (=> b!1291001 m!1441757))

(declare-fun m!1441759 () Bool)

(assert (=> b!1291001 m!1441759))

(declare-fun m!1441761 () Bool)

(assert (=> b!1290998 m!1441761))

(declare-fun m!1441763 () Bool)

(assert (=> b!1290999 m!1441763))

(assert (=> b!1290999 m!1441763))

(declare-fun m!1441765 () Bool)

(assert (=> b!1290999 m!1441765))

(assert (=> b!1290999 m!1441765))

(declare-fun m!1441767 () Bool)

(assert (=> b!1290999 m!1441767))

(declare-fun m!1441769 () Bool)

(assert (=> b!1290999 m!1441769))

(declare-fun m!1441771 () Bool)

(assert (=> b!1290999 m!1441771))

(declare-fun m!1441773 () Bool)

(assert (=> b!1290999 m!1441773))

(declare-fun m!1441775 () Bool)

(assert (=> b!1290988 m!1441775))

(declare-fun m!1441777 () Bool)

(assert (=> b!1291002 m!1441777))

(declare-fun m!1441779 () Bool)

(assert (=> b!1291002 m!1441779))

(declare-fun m!1441781 () Bool)

(assert (=> b!1290996 m!1441781))

(declare-fun m!1441783 () Bool)

(assert (=> b!1290996 m!1441783))

(declare-fun m!1441785 () Bool)

(assert (=> b!1291005 m!1441785))

(declare-fun m!1441787 () Bool)

(assert (=> start!113416 m!1441787))

(declare-fun m!1441789 () Bool)

(assert (=> start!113416 m!1441789))

(declare-fun m!1441791 () Bool)

(assert (=> b!1290989 m!1441791))

(declare-fun m!1441793 () Bool)

(assert (=> b!1290989 m!1441793))

(declare-fun m!1441795 () Bool)

(assert (=> b!1290993 m!1441795))

(declare-fun m!1441797 () Bool)

(assert (=> b!1290992 m!1441797))

(declare-fun m!1441799 () Bool)

(assert (=> b!1290987 m!1441799))

(declare-fun m!1441801 () Bool)

(assert (=> b!1290987 m!1441801))

(declare-fun m!1441803 () Bool)

(assert (=> b!1290986 m!1441803))

(push 1)

(assert (not b!1290989))

(assert (not b!1290987))

(assert b_and!85963)

(assert b_and!85957)

(assert (not b_next!31195))

(assert (not b!1290988))

(assert (not b!1290996))

(assert (not b!1290991))

(assert (not b!1290986))

(assert b_and!85959)

(assert (not b!1291003))

(assert (not b_next!31199))

(assert (not b!1291001))

(assert (not b_next!31193))

(assert (not b!1290999))

(assert b_and!85955)

(assert (not b!1290992))

(assert (not b!1290997))

(assert (not b!1290998))

(assert (not b!1290993))

(assert (not b!1291005))

(assert b_and!85965)

(assert b_and!85961)

(assert (not b!1291002))

(assert (not b!1290995))

(assert (not b_next!31191))

(assert (not b_next!31197))

(assert (not start!113416))

(assert (not b_next!31201))

(check-sat)

(pop 1)

(push 1)

(assert b_and!85955)

(assert b_and!85963)

(assert b_and!85957)

(assert (not b_next!31195))

(assert b_and!85959)

(assert (not b_next!31199))

(assert (not b_next!31193))

(assert (not b_next!31201))

(assert b_and!85965)

(assert b_and!85961)

(assert (not b_next!31191))

(assert (not b_next!31197))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!363987 () Bool)

(assert (=> d!363987 (= (inv!17314 (tag!2482 (rule!3959 t2!34))) (= (mod (str.len (value!72903 (tag!2482 (rule!3959 t2!34)))) 2) 0))))

(assert (=> b!1290989 d!363987))

(declare-fun d!363991 () Bool)

(declare-fun res!578597 () Bool)

(declare-fun e!827975 () Bool)

(assert (=> d!363991 (=> (not res!578597) (not e!827975))))

(declare-fun semiInverseModEq!841 (Int Int) Bool)

(assert (=> d!363991 (= res!578597 (semiInverseModEq!841 (toChars!3278 (transformation!2220 (rule!3959 t2!34))) (toValue!3419 (transformation!2220 (rule!3959 t2!34)))))))

(assert (=> d!363991 (= (inv!17317 (transformation!2220 (rule!3959 t2!34))) e!827975)))

(declare-fun b!1291080 () Bool)

(declare-fun equivClasses!800 (Int Int) Bool)

(assert (=> b!1291080 (= e!827975 (equivClasses!800 (toChars!3278 (transformation!2220 (rule!3959 t2!34))) (toValue!3419 (transformation!2220 (rule!3959 t2!34)))))))

(assert (= (and d!363991 res!578597) b!1291080))

(declare-fun m!1441859 () Bool)

(assert (=> d!363991 m!1441859))

(declare-fun m!1441861 () Bool)

(assert (=> b!1291080 m!1441861))

(assert (=> b!1290989 d!363991))

(declare-fun d!363995 () Bool)

(declare-fun lt!425071 () Bool)

(declare-fun e!828002 () Bool)

(assert (=> d!363995 (= lt!425071 e!828002)))

(declare-fun res!578622 () Bool)

(assert (=> d!363995 (=> (not res!578622) (not e!828002))))

(declare-datatypes ((List!12966 0))(
  ( (Nil!12900) (Cons!12900 (h!18301 Token!4102) (t!117172 List!12966)) )
))
(declare-datatypes ((IArray!8481 0))(
  ( (IArray!8482 (innerList!4298 List!12966)) )
))
(declare-datatypes ((Conc!4238 0))(
  ( (Node!4238 (left!11098 Conc!4238) (right!11428 Conc!4238) (csize!8706 Int) (cheight!4449 Int)) (Leaf!6545 (xs!6949 IArray!8481) (csize!8707 Int)) (Empty!4238) )
))
(declare-datatypes ((BalanceConc!8416 0))(
  ( (BalanceConc!8417 (c!212547 Conc!4238)) )
))
(declare-fun list!4814 (BalanceConc!8416) List!12966)

(declare-datatypes ((tuple2!12664 0))(
  ( (tuple2!12665 (_1!7218 BalanceConc!8416) (_2!7218 BalanceConc!8412)) )
))
(declare-fun lex!780 (LexerInterface!1915 List!12962 BalanceConc!8412) tuple2!12664)

(declare-fun print!717 (LexerInterface!1915 BalanceConc!8416) BalanceConc!8412)

(declare-fun singletonSeq!800 (Token!4102) BalanceConc!8416)

(assert (=> d!363995 (= res!578622 (= (list!4814 (_1!7218 (lex!780 thiss!19762 rules!2550 (print!717 thiss!19762 (singletonSeq!800 t2!34))))) (list!4814 (singletonSeq!800 t2!34))))))

(declare-fun e!828003 () Bool)

(assert (=> d!363995 (= lt!425071 e!828003)))

(declare-fun res!578621 () Bool)

(assert (=> d!363995 (=> (not res!578621) (not e!828003))))

(declare-fun lt!425072 () tuple2!12664)

(declare-fun size!10529 (BalanceConc!8416) Int)

(assert (=> d!363995 (= res!578621 (= (size!10529 (_1!7218 lt!425072)) 1))))

(assert (=> d!363995 (= lt!425072 (lex!780 thiss!19762 rules!2550 (print!717 thiss!19762 (singletonSeq!800 t2!34))))))

(assert (=> d!363995 (not (isEmpty!7656 rules!2550))))

(assert (=> d!363995 (= (rulesProduceIndividualToken!884 thiss!19762 rules!2550 t2!34) lt!425071)))

(declare-fun b!1291115 () Bool)

(declare-fun res!578620 () Bool)

(assert (=> b!1291115 (=> (not res!578620) (not e!828003))))

(declare-fun apply!2814 (BalanceConc!8416 Int) Token!4102)

(assert (=> b!1291115 (= res!578620 (= (apply!2814 (_1!7218 lt!425072) 0) t2!34))))

(declare-fun b!1291116 () Bool)

(declare-fun isEmpty!7658 (BalanceConc!8412) Bool)

(assert (=> b!1291116 (= e!828003 (isEmpty!7658 (_2!7218 lt!425072)))))

(declare-fun b!1291117 () Bool)

(assert (=> b!1291117 (= e!828002 (isEmpty!7658 (_2!7218 (lex!780 thiss!19762 rules!2550 (print!717 thiss!19762 (singletonSeq!800 t2!34))))))))

(assert (= (and d!363995 res!578621) b!1291115))

(assert (= (and b!1291115 res!578620) b!1291116))

(assert (= (and d!363995 res!578622) b!1291117))

(declare-fun m!1441885 () Bool)

(assert (=> d!363995 m!1441885))

(declare-fun m!1441887 () Bool)

(assert (=> d!363995 m!1441887))

(declare-fun m!1441889 () Bool)

(assert (=> d!363995 m!1441889))

(declare-fun m!1441891 () Bool)

(assert (=> d!363995 m!1441891))

(declare-fun m!1441893 () Bool)

(assert (=> d!363995 m!1441893))

(assert (=> d!363995 m!1441885))

(assert (=> d!363995 m!1441887))

(assert (=> d!363995 m!1441795))

(assert (=> d!363995 m!1441885))

(declare-fun m!1441895 () Bool)

(assert (=> d!363995 m!1441895))

(declare-fun m!1441897 () Bool)

(assert (=> b!1291115 m!1441897))

(declare-fun m!1441899 () Bool)

(assert (=> b!1291116 m!1441899))

(assert (=> b!1291117 m!1441885))

(assert (=> b!1291117 m!1441885))

(assert (=> b!1291117 m!1441887))

(assert (=> b!1291117 m!1441887))

(assert (=> b!1291117 m!1441889))

(declare-fun m!1441901 () Bool)

(assert (=> b!1291117 m!1441901))

(assert (=> b!1290988 d!363995))

(declare-fun d!364009 () Bool)

(declare-fun c!212529 () Bool)

(declare-fun isEmpty!7659 (List!12961) Bool)

(assert (=> d!364009 (= c!212529 (isEmpty!7659 lt!425054))))

(declare-fun e!828006 () Bool)

(assert (=> d!364009 (= (prefixMatch!47 lt!425053 lt!425054) e!828006)))

(declare-fun b!1291122 () Bool)

(declare-fun lostCause!249 (Regex!3534) Bool)

(assert (=> b!1291122 (= e!828006 (not (lostCause!249 lt!425053)))))

(declare-fun b!1291123 () Bool)

(declare-fun derivativeStep!872 (Regex!3534 C!7358) Regex!3534)

(declare-fun head!2211 (List!12961) C!7358)

(declare-fun tail!1839 (List!12961) List!12961)

(assert (=> b!1291123 (= e!828006 (prefixMatch!47 (derivativeStep!872 lt!425053 (head!2211 lt!425054)) (tail!1839 lt!425054)))))

(assert (= (and d!364009 c!212529) b!1291122))

(assert (= (and d!364009 (not c!212529)) b!1291123))

(declare-fun m!1441903 () Bool)

(assert (=> d!364009 m!1441903))

(declare-fun m!1441905 () Bool)

(assert (=> b!1291122 m!1441905))

(declare-fun m!1441907 () Bool)

(assert (=> b!1291123 m!1441907))

(assert (=> b!1291123 m!1441907))

(declare-fun m!1441909 () Bool)

(assert (=> b!1291123 m!1441909))

(declare-fun m!1441911 () Bool)

(assert (=> b!1291123 m!1441911))

(assert (=> b!1291123 m!1441909))

(assert (=> b!1291123 m!1441911))

(declare-fun m!1441913 () Bool)

(assert (=> b!1291123 m!1441913))

(assert (=> b!1290999 d!364009))

(declare-fun d!364011 () Bool)

(declare-fun lt!425075 () C!7358)

(declare-fun apply!2815 (List!12961 Int) C!7358)

(assert (=> d!364011 (= lt!425075 (apply!2815 (list!4812 lt!425052) 0))))

(declare-fun apply!2816 (Conc!4236 Int) C!7358)

(assert (=> d!364011 (= lt!425075 (apply!2816 (c!212518 lt!425052) 0))))

(declare-fun e!828009 () Bool)

(assert (=> d!364011 e!828009))

(declare-fun res!578625 () Bool)

(assert (=> d!364011 (=> (not res!578625) (not e!828009))))

(assert (=> d!364011 (= res!578625 (<= 0 0))))

(assert (=> d!364011 (= (apply!2812 lt!425052 0) lt!425075)))

(declare-fun b!1291126 () Bool)

(assert (=> b!1291126 (= e!828009 (< 0 (size!10526 lt!425052)))))

(assert (= (and d!364011 res!578625) b!1291126))

(declare-fun m!1441915 () Bool)

(assert (=> d!364011 m!1441915))

(assert (=> d!364011 m!1441915))

(declare-fun m!1441917 () Bool)

(assert (=> d!364011 m!1441917))

(declare-fun m!1441919 () Bool)

(assert (=> d!364011 m!1441919))

(assert (=> b!1291126 m!1441777))

(assert (=> b!1290999 d!364011))

(declare-fun d!364013 () Bool)

(declare-fun e!828014 () Bool)

(assert (=> d!364013 e!828014))

(declare-fun res!578630 () Bool)

(assert (=> d!364013 (=> (not res!578630) (not e!828014))))

(declare-fun lt!425078 () List!12961)

(declare-fun content!1822 (List!12961) (Set C!7358))

(assert (=> d!364013 (= res!578630 (= (content!1822 lt!425078) (set.union (content!1822 (list!4812 (charsOf!1192 t1!34))) (content!1822 (Cons!12895 (apply!2812 lt!425052 0) Nil!12895)))))))

(declare-fun e!828015 () List!12961)

(assert (=> d!364013 (= lt!425078 e!828015)))

(declare-fun c!212532 () Bool)

(assert (=> d!364013 (= c!212532 (is-Nil!12895 (list!4812 (charsOf!1192 t1!34))))))

(assert (=> d!364013 (= (++!3266 (list!4812 (charsOf!1192 t1!34)) (Cons!12895 (apply!2812 lt!425052 0) Nil!12895)) lt!425078)))

(declare-fun b!1291135 () Bool)

(assert (=> b!1291135 (= e!828015 (Cons!12895 (apply!2812 lt!425052 0) Nil!12895))))

(declare-fun b!1291136 () Bool)

(assert (=> b!1291136 (= e!828015 (Cons!12895 (h!18296 (list!4812 (charsOf!1192 t1!34))) (++!3266 (t!117150 (list!4812 (charsOf!1192 t1!34))) (Cons!12895 (apply!2812 lt!425052 0) Nil!12895))))))

(declare-fun b!1291137 () Bool)

(declare-fun res!578631 () Bool)

(assert (=> b!1291137 (=> (not res!578631) (not e!828014))))

(declare-fun size!10530 (List!12961) Int)

(assert (=> b!1291137 (= res!578631 (= (size!10530 lt!425078) (+ (size!10530 (list!4812 (charsOf!1192 t1!34))) (size!10530 (Cons!12895 (apply!2812 lt!425052 0) Nil!12895)))))))

(declare-fun b!1291138 () Bool)

(assert (=> b!1291138 (= e!828014 (or (not (= (Cons!12895 (apply!2812 lt!425052 0) Nil!12895) Nil!12895)) (= lt!425078 (list!4812 (charsOf!1192 t1!34)))))))

(assert (= (and d!364013 c!212532) b!1291135))

(assert (= (and d!364013 (not c!212532)) b!1291136))

(assert (= (and d!364013 res!578630) b!1291137))

(assert (= (and b!1291137 res!578631) b!1291138))

(declare-fun m!1441921 () Bool)

(assert (=> d!364013 m!1441921))

(assert (=> d!364013 m!1441765))

(declare-fun m!1441923 () Bool)

(assert (=> d!364013 m!1441923))

(declare-fun m!1441925 () Bool)

(assert (=> d!364013 m!1441925))

(declare-fun m!1441927 () Bool)

(assert (=> b!1291136 m!1441927))

(declare-fun m!1441929 () Bool)

(assert (=> b!1291137 m!1441929))

(assert (=> b!1291137 m!1441765))

(declare-fun m!1441931 () Bool)

(assert (=> b!1291137 m!1441931))

(declare-fun m!1441933 () Bool)

(assert (=> b!1291137 m!1441933))

(assert (=> b!1290999 d!364013))

(declare-fun d!364015 () Bool)

(declare-fun list!4815 (Conc!4236) List!12961)

(assert (=> d!364015 (= (list!4812 (charsOf!1192 t1!34)) (list!4815 (c!212518 (charsOf!1192 t1!34))))))

(declare-fun bs!328559 () Bool)

(assert (= bs!328559 d!364015))

(declare-fun m!1441935 () Bool)

(assert (=> bs!328559 m!1441935))

(assert (=> b!1290999 d!364015))

(declare-fun d!364017 () Bool)

(declare-fun lt!425081 () BalanceConc!8412)

(assert (=> d!364017 (= (list!4812 lt!425081) (originalCharacters!3082 t1!34))))

(declare-fun dynLambda!5633 (Int TokenValue!2310) BalanceConc!8412)

(assert (=> d!364017 (= lt!425081 (dynLambda!5633 (toChars!3278 (transformation!2220 (rule!3959 t1!34))) (value!72904 t1!34)))))

(assert (=> d!364017 (= (charsOf!1192 t1!34) lt!425081)))

(declare-fun b_lambda!36863 () Bool)

(assert (=> (not b_lambda!36863) (not d!364017)))

(declare-fun t!117157 () Bool)

(declare-fun tb!69321 () Bool)

(assert (=> (and b!1291000 (= (toChars!3278 (transformation!2220 (rule!3959 t1!34))) (toChars!3278 (transformation!2220 (rule!3959 t1!34)))) t!117157) tb!69321))

(declare-fun b!1291143 () Bool)

(declare-fun e!828018 () Bool)

(declare-fun tp!376341 () Bool)

(declare-fun inv!17321 (Conc!4236) Bool)

(assert (=> b!1291143 (= e!828018 (and (inv!17321 (c!212518 (dynLambda!5633 (toChars!3278 (transformation!2220 (rule!3959 t1!34))) (value!72904 t1!34)))) tp!376341))))

(declare-fun result!84002 () Bool)

(declare-fun inv!17322 (BalanceConc!8412) Bool)

(assert (=> tb!69321 (= result!84002 (and (inv!17322 (dynLambda!5633 (toChars!3278 (transformation!2220 (rule!3959 t1!34))) (value!72904 t1!34))) e!828018))))

(assert (= tb!69321 b!1291143))

(declare-fun m!1441937 () Bool)

(assert (=> b!1291143 m!1441937))

(declare-fun m!1441939 () Bool)

(assert (=> tb!69321 m!1441939))

(assert (=> d!364017 t!117157))

(declare-fun b_and!85979 () Bool)

(assert (= b_and!85957 (and (=> t!117157 result!84002) b_and!85979)))

(declare-fun tb!69323 () Bool)

(declare-fun t!117159 () Bool)

(assert (=> (and b!1290990 (= (toChars!3278 (transformation!2220 (rule!3959 t2!34))) (toChars!3278 (transformation!2220 (rule!3959 t1!34)))) t!117159) tb!69323))

(declare-fun result!84006 () Bool)

(assert (= result!84006 result!84002))

(assert (=> d!364017 t!117159))

(declare-fun b_and!85981 () Bool)

(assert (= b_and!85961 (and (=> t!117159 result!84006) b_and!85981)))

(declare-fun tb!69325 () Bool)

(declare-fun t!117161 () Bool)

(assert (=> (and b!1290994 (= (toChars!3278 (transformation!2220 (h!18297 rules!2550))) (toChars!3278 (transformation!2220 (rule!3959 t1!34)))) t!117161) tb!69325))

(declare-fun result!84008 () Bool)

(assert (= result!84008 result!84002))

(assert (=> d!364017 t!117161))

(declare-fun b_and!85983 () Bool)

(assert (= b_and!85965 (and (=> t!117161 result!84008) b_and!85983)))

(declare-fun m!1441941 () Bool)

(assert (=> d!364017 m!1441941))

(declare-fun m!1441943 () Bool)

(assert (=> d!364017 m!1441943))

(assert (=> b!1290999 d!364017))

(declare-fun d!364019 () Bool)

(declare-fun lt!425084 () Unit!19053)

(declare-fun lemma!43 (List!12962 LexerInterface!1915 List!12962) Unit!19053)

(assert (=> d!364019 (= lt!425084 (lemma!43 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!50714 () Int)

(declare-datatypes ((List!12967 0))(
  ( (Nil!12901) (Cons!12901 (h!18302 Regex!3534) (t!117174 List!12967)) )
))
(declare-fun generalisedUnion!47 (List!12967) Regex!3534)

(declare-fun map!2807 (List!12962 Int) List!12967)

(assert (=> d!364019 (= (rulesRegex!105 thiss!19762 rules!2550) (generalisedUnion!47 (map!2807 rules!2550 lambda!50714)))))

(declare-fun bs!328560 () Bool)

(assert (= bs!328560 d!364019))

(declare-fun m!1441945 () Bool)

(assert (=> bs!328560 m!1441945))

(declare-fun m!1441947 () Bool)

(assert (=> bs!328560 m!1441947))

(assert (=> bs!328560 m!1441947))

(declare-fun m!1441949 () Bool)

(assert (=> bs!328560 m!1441949))

(assert (=> b!1290999 d!364019))

(declare-fun d!364021 () Bool)

(declare-fun res!578634 () Bool)

(declare-fun e!828021 () Bool)

(assert (=> d!364021 (=> (not res!578634) (not e!828021))))

(declare-fun rulesValid!811 (LexerInterface!1915 List!12962) Bool)

(assert (=> d!364021 (= res!578634 (rulesValid!811 thiss!19762 rules!2550))))

(assert (=> d!364021 (= (rulesInvariant!1785 thiss!19762 rules!2550) e!828021)))

(declare-fun b!1291146 () Bool)

(declare-datatypes ((List!12968 0))(
  ( (Nil!12902) (Cons!12902 (h!18303 String!15788) (t!117175 List!12968)) )
))
(declare-fun noDuplicateTag!811 (LexerInterface!1915 List!12962 List!12968) Bool)

(assert (=> b!1291146 (= e!828021 (noDuplicateTag!811 thiss!19762 rules!2550 Nil!12902))))

(assert (= (and d!364021 res!578634) b!1291146))

(declare-fun m!1441951 () Bool)

(assert (=> d!364021 m!1441951))

(declare-fun m!1441953 () Bool)

(assert (=> b!1291146 m!1441953))

(assert (=> b!1290998 d!364021))

(declare-fun d!364023 () Bool)

(assert (=> d!364023 (= (inv!17314 (tag!2482 (rule!3959 t1!34))) (= (mod (str.len (value!72903 (tag!2482 (rule!3959 t1!34)))) 2) 0))))

(assert (=> b!1290987 d!364023))

(declare-fun d!364025 () Bool)

(declare-fun res!578635 () Bool)

(declare-fun e!828022 () Bool)

(assert (=> d!364025 (=> (not res!578635) (not e!828022))))

(assert (=> d!364025 (= res!578635 (semiInverseModEq!841 (toChars!3278 (transformation!2220 (rule!3959 t1!34))) (toValue!3419 (transformation!2220 (rule!3959 t1!34)))))))

(assert (=> d!364025 (= (inv!17317 (transformation!2220 (rule!3959 t1!34))) e!828022)))

(declare-fun b!1291147 () Bool)

(assert (=> b!1291147 (= e!828022 (equivClasses!800 (toChars!3278 (transformation!2220 (rule!3959 t1!34))) (toValue!3419 (transformation!2220 (rule!3959 t1!34)))))))

(assert (= (and d!364025 res!578635) b!1291147))

(declare-fun m!1441955 () Bool)

(assert (=> d!364025 m!1441955))

(declare-fun m!1441957 () Bool)

(assert (=> b!1291147 m!1441957))

(assert (=> b!1290987 d!364025))

(declare-fun d!364027 () Bool)

(declare-fun lt!425087 () Int)

(assert (=> d!364027 (= lt!425087 (size!10530 (list!4812 lt!425052)))))

(declare-fun size!10531 (Conc!4236) Int)

(assert (=> d!364027 (= lt!425087 (size!10531 (c!212518 lt!425052)))))

(assert (=> d!364027 (= (size!10526 lt!425052) lt!425087)))

(declare-fun bs!328561 () Bool)

(assert (= bs!328561 d!364027))

(assert (=> bs!328561 m!1441915))

(assert (=> bs!328561 m!1441915))

(declare-fun m!1441959 () Bool)

(assert (=> bs!328561 m!1441959))

(declare-fun m!1441961 () Bool)

(assert (=> bs!328561 m!1441961))

(assert (=> b!1291002 d!364027))

(declare-fun d!364029 () Bool)

(declare-fun lt!425088 () BalanceConc!8412)

(assert (=> d!364029 (= (list!4812 lt!425088) (originalCharacters!3082 t2!34))))

(assert (=> d!364029 (= lt!425088 (dynLambda!5633 (toChars!3278 (transformation!2220 (rule!3959 t2!34))) (value!72904 t2!34)))))

(assert (=> d!364029 (= (charsOf!1192 t2!34) lt!425088)))

(declare-fun b_lambda!36865 () Bool)

(assert (=> (not b_lambda!36865) (not d!364029)))

(declare-fun t!117163 () Bool)

(declare-fun tb!69327 () Bool)

(assert (=> (and b!1291000 (= (toChars!3278 (transformation!2220 (rule!3959 t1!34))) (toChars!3278 (transformation!2220 (rule!3959 t2!34)))) t!117163) tb!69327))

(declare-fun b!1291148 () Bool)

(declare-fun e!828023 () Bool)

(declare-fun tp!376342 () Bool)

(assert (=> b!1291148 (= e!828023 (and (inv!17321 (c!212518 (dynLambda!5633 (toChars!3278 (transformation!2220 (rule!3959 t2!34))) (value!72904 t2!34)))) tp!376342))))

(declare-fun result!84010 () Bool)

(assert (=> tb!69327 (= result!84010 (and (inv!17322 (dynLambda!5633 (toChars!3278 (transformation!2220 (rule!3959 t2!34))) (value!72904 t2!34))) e!828023))))

(assert (= tb!69327 b!1291148))

(declare-fun m!1441963 () Bool)

(assert (=> b!1291148 m!1441963))

(declare-fun m!1441965 () Bool)

(assert (=> tb!69327 m!1441965))

(assert (=> d!364029 t!117163))

(declare-fun b_and!85985 () Bool)

(assert (= b_and!85979 (and (=> t!117163 result!84010) b_and!85985)))

(declare-fun t!117165 () Bool)

(declare-fun tb!69329 () Bool)

(assert (=> (and b!1290990 (= (toChars!3278 (transformation!2220 (rule!3959 t2!34))) (toChars!3278 (transformation!2220 (rule!3959 t2!34)))) t!117165) tb!69329))

(declare-fun result!84012 () Bool)

(assert (= result!84012 result!84010))

(assert (=> d!364029 t!117165))

(declare-fun b_and!85987 () Bool)

(assert (= b_and!85981 (and (=> t!117165 result!84012) b_and!85987)))

(declare-fun tb!69331 () Bool)

(declare-fun t!117167 () Bool)

(assert (=> (and b!1290994 (= (toChars!3278 (transformation!2220 (h!18297 rules!2550))) (toChars!3278 (transformation!2220 (rule!3959 t2!34)))) t!117167) tb!69331))

(declare-fun result!84014 () Bool)

(assert (= result!84014 result!84010))

(assert (=> d!364029 t!117167))

(declare-fun b_and!85989 () Bool)

(assert (= b_and!85983 (and (=> t!117167 result!84014) b_and!85989)))

(declare-fun m!1441967 () Bool)

(assert (=> d!364029 m!1441967))

(declare-fun m!1441969 () Bool)

(assert (=> d!364029 m!1441969))

(assert (=> b!1291002 d!364029))

(declare-fun d!364031 () Bool)

(declare-fun choose!7921 (Int) Bool)

(assert (=> d!364031 (= (Exists!692 lambda!50706) (choose!7921 lambda!50706))))

(declare-fun bs!328562 () Bool)

(assert (= bs!328562 d!364031))

(declare-fun m!1441971 () Bool)

(assert (=> bs!328562 m!1441971))

(assert (=> b!1291001 d!364031))

(declare-fun bs!328563 () Bool)

(declare-fun d!364033 () Bool)

(assert (= bs!328563 (and d!364033 b!1291001)))

(declare-fun lambda!50717 () Int)

(assert (=> bs!328563 (= lambda!50717 lambda!50706)))

(assert (=> d!364033 true))

(assert (=> d!364033 true))

(assert (=> d!364033 (Exists!692 lambda!50717)))

(declare-fun lt!425091 () Unit!19053)

(declare-fun choose!7922 (Regex!3534 List!12961) Unit!19053)

(assert (=> d!364033 (= lt!425091 (choose!7922 lt!425053 lt!425054))))

(assert (=> d!364033 (validRegex!1522 lt!425053)))

(assert (=> d!364033 (= (lemmaPrefixMatchThenExistsStringThatMatches!10 lt!425053 lt!425054) lt!425091)))

(declare-fun bs!328564 () Bool)

(assert (= bs!328564 d!364033))

(declare-fun m!1441973 () Bool)

(assert (=> bs!328564 m!1441973))

(declare-fun m!1441975 () Bool)

(assert (=> bs!328564 m!1441975))

(assert (=> bs!328564 m!1441803))

(assert (=> b!1291001 d!364033))

(declare-fun d!364035 () Bool)

(declare-fun res!578642 () Bool)

(declare-fun e!828030 () Bool)

(assert (=> d!364035 (=> res!578642 e!828030)))

(assert (=> d!364035 (= res!578642 (not (is-Cons!12896 rules!2550)))))

(assert (=> d!364035 (= (sepAndNonSepRulesDisjointChars!593 rules!2550 rules!2550) e!828030)))

(declare-fun b!1291155 () Bool)

(declare-fun e!828031 () Bool)

(assert (=> b!1291155 (= e!828030 e!828031)))

(declare-fun res!578643 () Bool)

(assert (=> b!1291155 (=> (not res!578643) (not e!828031))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!285 (Rule!4240 List!12962) Bool)

(assert (=> b!1291155 (= res!578643 (ruleDisjointCharsFromAllFromOtherType!285 (h!18297 rules!2550) rules!2550))))

(declare-fun b!1291156 () Bool)

(assert (=> b!1291156 (= e!828031 (sepAndNonSepRulesDisjointChars!593 rules!2550 (t!117151 rules!2550)))))

(assert (= (and d!364035 (not res!578642)) b!1291155))

(assert (= (and b!1291155 res!578643) b!1291156))

(declare-fun m!1441977 () Bool)

(assert (=> b!1291155 m!1441977))

(declare-fun m!1441979 () Bool)

(assert (=> b!1291156 m!1441979))

(assert (=> b!1291005 d!364035))

(declare-fun d!364037 () Bool)

(assert (=> d!364037 (= (isEmpty!7656 rules!2550) (is-Nil!12896 rules!2550))))

(assert (=> b!1290993 d!364037))

(declare-fun d!364039 () Bool)

(declare-fun prefixMatchZipperSequence!138 (Regex!3534 BalanceConc!8412) Bool)

(declare-fun ++!3268 (BalanceConc!8412 BalanceConc!8412) BalanceConc!8412)

(declare-fun singletonSeq!801 (C!7358) BalanceConc!8412)

(assert (=> d!364039 (= (separableTokensPredicate!198 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!138 (rulesRegex!105 thiss!19762 rules!2550) (++!3268 (charsOf!1192 t1!34) (singletonSeq!801 (apply!2812 (charsOf!1192 t2!34) 0))))))))

(declare-fun bs!328565 () Bool)

(assert (= bs!328565 d!364039))

(declare-fun m!1441981 () Bool)

(assert (=> bs!328565 m!1441981))

(declare-fun m!1441983 () Bool)

(assert (=> bs!328565 m!1441983))

(assert (=> bs!328565 m!1441771))

(assert (=> bs!328565 m!1441779))

(assert (=> bs!328565 m!1441779))

(assert (=> bs!328565 m!1441981))

(assert (=> bs!328565 m!1441763))

(assert (=> bs!328565 m!1441983))

(declare-fun m!1441985 () Bool)

(assert (=> bs!328565 m!1441985))

(assert (=> bs!328565 m!1441763))

(assert (=> bs!328565 m!1441771))

(assert (=> bs!328565 m!1441985))

(declare-fun m!1441987 () Bool)

(assert (=> bs!328565 m!1441987))

(assert (=> b!1290992 d!364039))

(declare-fun d!364041 () Bool)

(declare-fun c!212537 () Bool)

(assert (=> d!364041 (= c!212537 (is-IntegerValue!6930 (value!72904 t2!34)))))

(declare-fun e!828039 () Bool)

(assert (=> d!364041 (= (inv!21 (value!72904 t2!34)) e!828039)))

(declare-fun b!1291167 () Bool)

(declare-fun inv!16 (TokenValue!2310) Bool)

(assert (=> b!1291167 (= e!828039 (inv!16 (value!72904 t2!34)))))

(declare-fun b!1291168 () Bool)

(declare-fun e!828040 () Bool)

(declare-fun inv!15 (TokenValue!2310) Bool)

(assert (=> b!1291168 (= e!828040 (inv!15 (value!72904 t2!34)))))

(declare-fun b!1291169 () Bool)

(declare-fun e!828038 () Bool)

(assert (=> b!1291169 (= e!828039 e!828038)))

(declare-fun c!212538 () Bool)

(assert (=> b!1291169 (= c!212538 (is-IntegerValue!6931 (value!72904 t2!34)))))

(declare-fun b!1291170 () Bool)

(declare-fun inv!17 (TokenValue!2310) Bool)

(assert (=> b!1291170 (= e!828038 (inv!17 (value!72904 t2!34)))))

(declare-fun b!1291171 () Bool)

(declare-fun res!578646 () Bool)

(assert (=> b!1291171 (=> res!578646 e!828040)))

(assert (=> b!1291171 (= res!578646 (not (is-IntegerValue!6932 (value!72904 t2!34))))))

(assert (=> b!1291171 (= e!828038 e!828040)))

(assert (= (and d!364041 c!212537) b!1291167))

(assert (= (and d!364041 (not c!212537)) b!1291169))

(assert (= (and b!1291169 c!212538) b!1291170))

(assert (= (and b!1291169 (not c!212538)) b!1291171))

(assert (= (and b!1291171 (not res!578646)) b!1291168))

(declare-fun m!1441989 () Bool)

(assert (=> b!1291167 m!1441989))

(declare-fun m!1441991 () Bool)

(assert (=> b!1291168 m!1441991))

(declare-fun m!1441993 () Bool)

(assert (=> b!1291170 m!1441993))

(assert (=> b!1291003 d!364041))

(declare-fun b!1291190 () Bool)

(declare-fun e!828058 () Bool)

(declare-fun call!88658 () Bool)

(assert (=> b!1291190 (= e!828058 call!88658)))

(declare-fun b!1291191 () Bool)

(declare-fun e!828061 () Bool)

(assert (=> b!1291191 (= e!828061 e!828058)))

(declare-fun res!578659 () Bool)

(assert (=> b!1291191 (=> (not res!578659) (not e!828058))))

(declare-fun call!88656 () Bool)

(assert (=> b!1291191 (= res!578659 call!88656)))

(declare-fun b!1291192 () Bool)

(declare-fun res!578658 () Bool)

(declare-fun e!828057 () Bool)

(assert (=> b!1291192 (=> (not res!578658) (not e!828057))))

(assert (=> b!1291192 (= res!578658 call!88656)))

(declare-fun e!828055 () Bool)

(assert (=> b!1291192 (= e!828055 e!828057)))

(declare-fun b!1291193 () Bool)

(assert (=> b!1291193 (= e!828057 call!88658)))

(declare-fun b!1291194 () Bool)

(declare-fun e!828056 () Bool)

(declare-fun e!828060 () Bool)

(assert (=> b!1291194 (= e!828056 e!828060)))

(declare-fun res!578660 () Bool)

(declare-fun nullable!1124 (Regex!3534) Bool)

(assert (=> b!1291194 (= res!578660 (not (nullable!1124 (reg!3863 lt!425053))))))

(assert (=> b!1291194 (=> (not res!578660) (not e!828060))))

(declare-fun bm!88652 () Bool)

(declare-fun call!88657 () Bool)

(assert (=> bm!88652 (= call!88656 call!88657)))

(declare-fun b!1291195 () Bool)

(declare-fun e!828059 () Bool)

(assert (=> b!1291195 (= e!828059 e!828056)))

(declare-fun c!212544 () Bool)

(assert (=> b!1291195 (= c!212544 (is-Star!3534 lt!425053))))

(declare-fun b!1291196 () Bool)

(declare-fun res!578657 () Bool)

(assert (=> b!1291196 (=> res!578657 e!828061)))

(assert (=> b!1291196 (= res!578657 (not (is-Concat!5844 lt!425053)))))

(assert (=> b!1291196 (= e!828055 e!828061)))

(declare-fun b!1291197 () Bool)

(assert (=> b!1291197 (= e!828056 e!828055)))

(declare-fun c!212543 () Bool)

(assert (=> b!1291197 (= c!212543 (is-Union!3534 lt!425053))))

(declare-fun bm!88651 () Bool)

(assert (=> bm!88651 (= call!88658 (validRegex!1522 (ite c!212543 (regTwo!7581 lt!425053) (regTwo!7580 lt!425053))))))

(declare-fun d!364043 () Bool)

(declare-fun res!578661 () Bool)

(assert (=> d!364043 (=> res!578661 e!828059)))

(assert (=> d!364043 (= res!578661 (is-ElementMatch!3534 lt!425053))))

(assert (=> d!364043 (= (validRegex!1522 lt!425053) e!828059)))

(declare-fun b!1291198 () Bool)

(assert (=> b!1291198 (= e!828060 call!88657)))

(declare-fun bm!88653 () Bool)

(assert (=> bm!88653 (= call!88657 (validRegex!1522 (ite c!212544 (reg!3863 lt!425053) (ite c!212543 (regOne!7581 lt!425053) (regOne!7580 lt!425053)))))))

(assert (= (and d!364043 (not res!578661)) b!1291195))

(assert (= (and b!1291195 c!212544) b!1291194))

(assert (= (and b!1291195 (not c!212544)) b!1291197))

(assert (= (and b!1291194 res!578660) b!1291198))

(assert (= (and b!1291197 c!212543) b!1291192))

(assert (= (and b!1291197 (not c!212543)) b!1291196))

(assert (= (and b!1291192 res!578658) b!1291193))

(assert (= (and b!1291196 (not res!578657)) b!1291191))

(assert (= (and b!1291191 res!578659) b!1291190))

(assert (= (or b!1291192 b!1291191) bm!88652))

(assert (= (or b!1291193 b!1291190) bm!88651))

(assert (= (or b!1291198 bm!88652) bm!88653))

(declare-fun m!1441995 () Bool)

(assert (=> b!1291194 m!1441995))

(declare-fun m!1441997 () Bool)

(assert (=> bm!88651 m!1441997))

(declare-fun m!1441999 () Bool)

(assert (=> bm!88653 m!1441999))

(assert (=> b!1290986 d!364043))

(declare-fun d!364045 () Bool)

(declare-fun c!212545 () Bool)

(assert (=> d!364045 (= c!212545 (is-IntegerValue!6930 (value!72904 t1!34)))))

(declare-fun e!828063 () Bool)

(assert (=> d!364045 (= (inv!21 (value!72904 t1!34)) e!828063)))

(declare-fun b!1291199 () Bool)

(assert (=> b!1291199 (= e!828063 (inv!16 (value!72904 t1!34)))))

(declare-fun b!1291200 () Bool)

(declare-fun e!828064 () Bool)

(assert (=> b!1291200 (= e!828064 (inv!15 (value!72904 t1!34)))))

(declare-fun b!1291201 () Bool)

(declare-fun e!828062 () Bool)

(assert (=> b!1291201 (= e!828063 e!828062)))

(declare-fun c!212546 () Bool)

(assert (=> b!1291201 (= c!212546 (is-IntegerValue!6931 (value!72904 t1!34)))))

(declare-fun b!1291202 () Bool)

(assert (=> b!1291202 (= e!828062 (inv!17 (value!72904 t1!34)))))

(declare-fun b!1291203 () Bool)

(declare-fun res!578662 () Bool)

(assert (=> b!1291203 (=> res!578662 e!828064)))

(assert (=> b!1291203 (= res!578662 (not (is-IntegerValue!6932 (value!72904 t1!34))))))

(assert (=> b!1291203 (= e!828062 e!828064)))

(assert (= (and d!364045 c!212545) b!1291199))

(assert (= (and d!364045 (not c!212545)) b!1291201))

(assert (= (and b!1291201 c!212546) b!1291202))

(assert (= (and b!1291201 (not c!212546)) b!1291203))

(assert (= (and b!1291203 (not res!578662)) b!1291200))

(declare-fun m!1442001 () Bool)

(assert (=> b!1291199 m!1442001))

(declare-fun m!1442003 () Bool)

(assert (=> b!1291200 m!1442003))

(declare-fun m!1442005 () Bool)

(assert (=> b!1291202 m!1442005))

(assert (=> b!1290997 d!364045))

(declare-fun d!364047 () Bool)

(assert (=> d!364047 (= (inv!17314 (tag!2482 (h!18297 rules!2550))) (= (mod (str.len (value!72903 (tag!2482 (h!18297 rules!2550)))) 2) 0))))

(assert (=> b!1290996 d!364047))

(declare-fun d!364049 () Bool)

(declare-fun res!578663 () Bool)

(declare-fun e!828065 () Bool)

(assert (=> d!364049 (=> (not res!578663) (not e!828065))))

(assert (=> d!364049 (= res!578663 (semiInverseModEq!841 (toChars!3278 (transformation!2220 (h!18297 rules!2550))) (toValue!3419 (transformation!2220 (h!18297 rules!2550)))))))

(assert (=> d!364049 (= (inv!17317 (transformation!2220 (h!18297 rules!2550))) e!828065)))

(declare-fun b!1291204 () Bool)

(assert (=> b!1291204 (= e!828065 (equivClasses!800 (toChars!3278 (transformation!2220 (h!18297 rules!2550))) (toValue!3419 (transformation!2220 (h!18297 rules!2550)))))))

(assert (= (and d!364049 res!578663) b!1291204))

(declare-fun m!1442007 () Bool)

(assert (=> d!364049 m!1442007))

(declare-fun m!1442009 () Bool)

(assert (=> b!1291204 m!1442009))

(assert (=> b!1290996 d!364049))

(declare-fun d!364051 () Bool)

(declare-fun res!578668 () Bool)

(declare-fun e!828068 () Bool)

(assert (=> d!364051 (=> (not res!578668) (not e!828068))))

(assert (=> d!364051 (= res!578668 (not (isEmpty!7659 (originalCharacters!3082 t1!34))))))

(assert (=> d!364051 (= (inv!17318 t1!34) e!828068)))

(declare-fun b!1291209 () Bool)

(declare-fun res!578669 () Bool)

(assert (=> b!1291209 (=> (not res!578669) (not e!828068))))

(assert (=> b!1291209 (= res!578669 (= (originalCharacters!3082 t1!34) (list!4812 (dynLambda!5633 (toChars!3278 (transformation!2220 (rule!3959 t1!34))) (value!72904 t1!34)))))))

(declare-fun b!1291210 () Bool)

(assert (=> b!1291210 (= e!828068 (= (size!10525 t1!34) (size!10530 (originalCharacters!3082 t1!34))))))

(assert (= (and d!364051 res!578668) b!1291209))

(assert (= (and b!1291209 res!578669) b!1291210))

(declare-fun b_lambda!36867 () Bool)

(assert (=> (not b_lambda!36867) (not b!1291209)))

(assert (=> b!1291209 t!117157))

(declare-fun b_and!85991 () Bool)

(assert (= b_and!85985 (and (=> t!117157 result!84002) b_and!85991)))

(assert (=> b!1291209 t!117159))

(declare-fun b_and!85993 () Bool)

(assert (= b_and!85987 (and (=> t!117159 result!84006) b_and!85993)))

(assert (=> b!1291209 t!117161))

(declare-fun b_and!85995 () Bool)

(assert (= b_and!85989 (and (=> t!117161 result!84008) b_and!85995)))

(declare-fun m!1442011 () Bool)

(assert (=> d!364051 m!1442011))

(assert (=> b!1291209 m!1441943))

(assert (=> b!1291209 m!1441943))

(declare-fun m!1442013 () Bool)

(assert (=> b!1291209 m!1442013))

(declare-fun m!1442015 () Bool)

(assert (=> b!1291210 m!1442015))

(assert (=> start!113416 d!364051))

(declare-fun d!364053 () Bool)

(declare-fun res!578670 () Bool)

(declare-fun e!828069 () Bool)

(assert (=> d!364053 (=> (not res!578670) (not e!828069))))

(assert (=> d!364053 (= res!578670 (not (isEmpty!7659 (originalCharacters!3082 t2!34))))))

(assert (=> d!364053 (= (inv!17318 t2!34) e!828069)))

(declare-fun b!1291211 () Bool)

(declare-fun res!578671 () Bool)

(assert (=> b!1291211 (=> (not res!578671) (not e!828069))))

(assert (=> b!1291211 (= res!578671 (= (originalCharacters!3082 t2!34) (list!4812 (dynLambda!5633 (toChars!3278 (transformation!2220 (rule!3959 t2!34))) (value!72904 t2!34)))))))

(declare-fun b!1291212 () Bool)

(assert (=> b!1291212 (= e!828069 (= (size!10525 t2!34) (size!10530 (originalCharacters!3082 t2!34))))))

(assert (= (and d!364053 res!578670) b!1291211))

(assert (= (and b!1291211 res!578671) b!1291212))

(declare-fun b_lambda!36869 () Bool)

(assert (=> (not b_lambda!36869) (not b!1291211)))

(assert (=> b!1291211 t!117163))

(declare-fun b_and!85997 () Bool)

(assert (= b_and!85991 (and (=> t!117163 result!84010) b_and!85997)))

(assert (=> b!1291211 t!117165))

(declare-fun b_and!85999 () Bool)

(assert (= b_and!85993 (and (=> t!117165 result!84012) b_and!85999)))

(assert (=> b!1291211 t!117167))

(declare-fun b_and!86001 () Bool)

(assert (= b_and!85995 (and (=> t!117167 result!84014) b_and!86001)))

(declare-fun m!1442017 () Bool)

(assert (=> d!364053 m!1442017))

(assert (=> b!1291211 m!1441969))

(assert (=> b!1291211 m!1441969))

(declare-fun m!1442019 () Bool)

(assert (=> b!1291211 m!1442019))

(declare-fun m!1442021 () Bool)

(assert (=> b!1291212 m!1442021))

(assert (=> start!113416 d!364053))

(declare-fun d!364055 () Bool)

(declare-fun lt!425092 () Bool)

(declare-fun e!828070 () Bool)

(assert (=> d!364055 (= lt!425092 e!828070)))

(declare-fun res!578674 () Bool)

(assert (=> d!364055 (=> (not res!578674) (not e!828070))))

(assert (=> d!364055 (= res!578674 (= (list!4814 (_1!7218 (lex!780 thiss!19762 rules!2550 (print!717 thiss!19762 (singletonSeq!800 t1!34))))) (list!4814 (singletonSeq!800 t1!34))))))

(declare-fun e!828071 () Bool)

(assert (=> d!364055 (= lt!425092 e!828071)))

(declare-fun res!578673 () Bool)

(assert (=> d!364055 (=> (not res!578673) (not e!828071))))

(declare-fun lt!425093 () tuple2!12664)

(assert (=> d!364055 (= res!578673 (= (size!10529 (_1!7218 lt!425093)) 1))))

(assert (=> d!364055 (= lt!425093 (lex!780 thiss!19762 rules!2550 (print!717 thiss!19762 (singletonSeq!800 t1!34))))))

(assert (=> d!364055 (not (isEmpty!7656 rules!2550))))

(assert (=> d!364055 (= (rulesProduceIndividualToken!884 thiss!19762 rules!2550 t1!34) lt!425092)))

(declare-fun b!1291213 () Bool)

(declare-fun res!578672 () Bool)

(assert (=> b!1291213 (=> (not res!578672) (not e!828071))))

(assert (=> b!1291213 (= res!578672 (= (apply!2814 (_1!7218 lt!425093) 0) t1!34))))

(declare-fun b!1291214 () Bool)

(assert (=> b!1291214 (= e!828071 (isEmpty!7658 (_2!7218 lt!425093)))))

(declare-fun b!1291215 () Bool)

(assert (=> b!1291215 (= e!828070 (isEmpty!7658 (_2!7218 (lex!780 thiss!19762 rules!2550 (print!717 thiss!19762 (singletonSeq!800 t1!34))))))))

(assert (= (and d!364055 res!578673) b!1291213))

(assert (= (and b!1291213 res!578672) b!1291214))

(assert (= (and d!364055 res!578674) b!1291215))

(declare-fun m!1442023 () Bool)

(assert (=> d!364055 m!1442023))

(declare-fun m!1442025 () Bool)

(assert (=> d!364055 m!1442025))

(declare-fun m!1442027 () Bool)

(assert (=> d!364055 m!1442027))

(declare-fun m!1442029 () Bool)

(assert (=> d!364055 m!1442029))

(declare-fun m!1442031 () Bool)

(assert (=> d!364055 m!1442031))

(assert (=> d!364055 m!1442023))

(assert (=> d!364055 m!1442025))

(assert (=> d!364055 m!1441795))

(assert (=> d!364055 m!1442023))

(declare-fun m!1442033 () Bool)

(assert (=> d!364055 m!1442033))

(declare-fun m!1442035 () Bool)

(assert (=> b!1291213 m!1442035))

(declare-fun m!1442037 () Bool)

(assert (=> b!1291214 m!1442037))

(assert (=> b!1291215 m!1442023))

(assert (=> b!1291215 m!1442023))

(assert (=> b!1291215 m!1442025))

(assert (=> b!1291215 m!1442025))

(assert (=> b!1291215 m!1442027))

(declare-fun m!1442039 () Bool)

(assert (=> b!1291215 m!1442039))

(assert (=> b!1290995 d!364055))

(declare-fun e!828074 () Bool)

(assert (=> b!1290989 (= tp!376293 e!828074)))

(declare-fun b!1291229 () Bool)

(declare-fun tp!376353 () Bool)

(declare-fun tp!376357 () Bool)

(assert (=> b!1291229 (= e!828074 (and tp!376353 tp!376357))))

(declare-fun b!1291226 () Bool)

(declare-fun tp_is_empty!6565 () Bool)

(assert (=> b!1291226 (= e!828074 tp_is_empty!6565)))

(declare-fun b!1291228 () Bool)

(declare-fun tp!376356 () Bool)

(assert (=> b!1291228 (= e!828074 tp!376356)))

(declare-fun b!1291227 () Bool)

(declare-fun tp!376354 () Bool)

(declare-fun tp!376355 () Bool)

(assert (=> b!1291227 (= e!828074 (and tp!376354 tp!376355))))

(assert (= (and b!1290989 (is-ElementMatch!3534 (regex!2220 (rule!3959 t2!34)))) b!1291226))

(assert (= (and b!1290989 (is-Concat!5844 (regex!2220 (rule!3959 t2!34)))) b!1291227))

(assert (= (and b!1290989 (is-Star!3534 (regex!2220 (rule!3959 t2!34)))) b!1291228))

(assert (= (and b!1290989 (is-Union!3534 (regex!2220 (rule!3959 t2!34)))) b!1291229))

(declare-fun e!828075 () Bool)

(assert (=> b!1290987 (= tp!376294 e!828075)))

(declare-fun b!1291233 () Bool)

(declare-fun tp!376358 () Bool)

(declare-fun tp!376362 () Bool)

(assert (=> b!1291233 (= e!828075 (and tp!376358 tp!376362))))

(declare-fun b!1291230 () Bool)

(assert (=> b!1291230 (= e!828075 tp_is_empty!6565)))

(declare-fun b!1291232 () Bool)

(declare-fun tp!376361 () Bool)

(assert (=> b!1291232 (= e!828075 tp!376361)))

(declare-fun b!1291231 () Bool)

(declare-fun tp!376359 () Bool)

(declare-fun tp!376360 () Bool)

(assert (=> b!1291231 (= e!828075 (and tp!376359 tp!376360))))

(assert (= (and b!1290987 (is-ElementMatch!3534 (regex!2220 (rule!3959 t1!34)))) b!1291230))

(assert (= (and b!1290987 (is-Concat!5844 (regex!2220 (rule!3959 t1!34)))) b!1291231))

(assert (= (and b!1290987 (is-Star!3534 (regex!2220 (rule!3959 t1!34)))) b!1291232))

(assert (= (and b!1290987 (is-Union!3534 (regex!2220 (rule!3959 t1!34)))) b!1291233))

(declare-fun b!1291238 () Bool)

(declare-fun e!828078 () Bool)

(declare-fun tp!376365 () Bool)

(assert (=> b!1291238 (= e!828078 (and tp_is_empty!6565 tp!376365))))

(assert (=> b!1291003 (= tp!376296 e!828078)))

(assert (= (and b!1291003 (is-Cons!12895 (originalCharacters!3082 t2!34))) b!1291238))

(declare-fun b!1291239 () Bool)

(declare-fun e!828079 () Bool)

(declare-fun tp!376366 () Bool)

(assert (=> b!1291239 (= e!828079 (and tp_is_empty!6565 tp!376366))))

(assert (=> b!1290997 (= tp!376291 e!828079)))

(assert (= (and b!1290997 (is-Cons!12895 (originalCharacters!3082 t1!34))) b!1291239))

(declare-fun e!828080 () Bool)

(assert (=> b!1290996 (= tp!376295 e!828080)))

(declare-fun b!1291243 () Bool)

(declare-fun tp!376367 () Bool)

(declare-fun tp!376371 () Bool)

(assert (=> b!1291243 (= e!828080 (and tp!376367 tp!376371))))

(declare-fun b!1291240 () Bool)

(assert (=> b!1291240 (= e!828080 tp_is_empty!6565)))

(declare-fun b!1291242 () Bool)

(declare-fun tp!376370 () Bool)

(assert (=> b!1291242 (= e!828080 tp!376370)))

(declare-fun b!1291241 () Bool)

(declare-fun tp!376368 () Bool)

(declare-fun tp!376369 () Bool)

(assert (=> b!1291241 (= e!828080 (and tp!376368 tp!376369))))

(assert (= (and b!1290996 (is-ElementMatch!3534 (regex!2220 (h!18297 rules!2550)))) b!1291240))

(assert (= (and b!1290996 (is-Concat!5844 (regex!2220 (h!18297 rules!2550)))) b!1291241))

(assert (= (and b!1290996 (is-Star!3534 (regex!2220 (h!18297 rules!2550)))) b!1291242))

(assert (= (and b!1290996 (is-Union!3534 (regex!2220 (h!18297 rules!2550)))) b!1291243))

(declare-fun b!1291254 () Bool)

(declare-fun b_free!30511 () Bool)

(declare-fun b_next!31215 () Bool)

(assert (=> b!1291254 (= b_free!30511 (not b_next!31215))))

(declare-fun tp!376383 () Bool)

(declare-fun b_and!86003 () Bool)

(assert (=> b!1291254 (= tp!376383 b_and!86003)))

(declare-fun b_free!30513 () Bool)

(declare-fun b_next!31217 () Bool)

(assert (=> b!1291254 (= b_free!30513 (not b_next!31217))))

(declare-fun t!117169 () Bool)

(declare-fun tb!69333 () Bool)

(assert (=> (and b!1291254 (= (toChars!3278 (transformation!2220 (h!18297 (t!117151 rules!2550)))) (toChars!3278 (transformation!2220 (rule!3959 t1!34)))) t!117169) tb!69333))

(declare-fun result!84022 () Bool)

(assert (= result!84022 result!84002))

(assert (=> d!364017 t!117169))

(declare-fun tb!69335 () Bool)

(declare-fun t!117171 () Bool)

(assert (=> (and b!1291254 (= (toChars!3278 (transformation!2220 (h!18297 (t!117151 rules!2550)))) (toChars!3278 (transformation!2220 (rule!3959 t2!34)))) t!117171) tb!69335))

(declare-fun result!84024 () Bool)

(assert (= result!84024 result!84010))

(assert (=> d!364029 t!117171))

(assert (=> b!1291209 t!117169))

(assert (=> b!1291211 t!117171))

(declare-fun tp!376381 () Bool)

(declare-fun b_and!86005 () Bool)

(assert (=> b!1291254 (= tp!376381 (and (=> t!117169 result!84022) (=> t!117171 result!84024) b_and!86005))))

(declare-fun e!828089 () Bool)

(assert (=> b!1291254 (= e!828089 (and tp!376383 tp!376381))))

(declare-fun tp!376382 () Bool)

(declare-fun b!1291253 () Bool)

(declare-fun e!828090 () Bool)

(assert (=> b!1291253 (= e!828090 (and tp!376382 (inv!17314 (tag!2482 (h!18297 (t!117151 rules!2550)))) (inv!17317 (transformation!2220 (h!18297 (t!117151 rules!2550)))) e!828089))))

(declare-fun b!1291252 () Bool)

(declare-fun e!828092 () Bool)

(declare-fun tp!376380 () Bool)

(assert (=> b!1291252 (= e!828092 (and e!828090 tp!376380))))

(assert (=> b!1290991 (= tp!376299 e!828092)))

(assert (= b!1291253 b!1291254))

(assert (= b!1291252 b!1291253))

(assert (= (and b!1290991 (is-Cons!12896 (t!117151 rules!2550))) b!1291252))

(declare-fun m!1442041 () Bool)

(assert (=> b!1291253 m!1442041))

(declare-fun m!1442043 () Bool)

(assert (=> b!1291253 m!1442043))

(declare-fun b_lambda!36871 () Bool)

(assert (= b_lambda!36863 (or (and b!1291000 b_free!30489) (and b!1290990 b_free!30493 (= (toChars!3278 (transformation!2220 (rule!3959 t2!34))) (toChars!3278 (transformation!2220 (rule!3959 t1!34))))) (and b!1290994 b_free!30497 (= (toChars!3278 (transformation!2220 (h!18297 rules!2550))) (toChars!3278 (transformation!2220 (rule!3959 t1!34))))) (and b!1291254 b_free!30513 (= (toChars!3278 (transformation!2220 (h!18297 (t!117151 rules!2550)))) (toChars!3278 (transformation!2220 (rule!3959 t1!34))))) b_lambda!36871)))

(declare-fun b_lambda!36873 () Bool)

(assert (= b_lambda!36865 (or (and b!1291000 b_free!30489 (= (toChars!3278 (transformation!2220 (rule!3959 t1!34))) (toChars!3278 (transformation!2220 (rule!3959 t2!34))))) (and b!1290990 b_free!30493) (and b!1290994 b_free!30497 (= (toChars!3278 (transformation!2220 (h!18297 rules!2550))) (toChars!3278 (transformation!2220 (rule!3959 t2!34))))) (and b!1291254 b_free!30513 (= (toChars!3278 (transformation!2220 (h!18297 (t!117151 rules!2550)))) (toChars!3278 (transformation!2220 (rule!3959 t2!34))))) b_lambda!36873)))

(declare-fun b_lambda!36875 () Bool)

(assert (= b_lambda!36869 (or (and b!1291000 b_free!30489 (= (toChars!3278 (transformation!2220 (rule!3959 t1!34))) (toChars!3278 (transformation!2220 (rule!3959 t2!34))))) (and b!1290990 b_free!30493) (and b!1290994 b_free!30497 (= (toChars!3278 (transformation!2220 (h!18297 rules!2550))) (toChars!3278 (transformation!2220 (rule!3959 t2!34))))) (and b!1291254 b_free!30513 (= (toChars!3278 (transformation!2220 (h!18297 (t!117151 rules!2550)))) (toChars!3278 (transformation!2220 (rule!3959 t2!34))))) b_lambda!36875)))

(declare-fun b_lambda!36877 () Bool)

(assert (= b_lambda!36867 (or (and b!1291000 b_free!30489) (and b!1290990 b_free!30493 (= (toChars!3278 (transformation!2220 (rule!3959 t2!34))) (toChars!3278 (transformation!2220 (rule!3959 t1!34))))) (and b!1290994 b_free!30497 (= (toChars!3278 (transformation!2220 (h!18297 rules!2550))) (toChars!3278 (transformation!2220 (rule!3959 t1!34))))) (and b!1291254 b_free!30513 (= (toChars!3278 (transformation!2220 (h!18297 (t!117151 rules!2550)))) (toChars!3278 (transformation!2220 (rule!3959 t1!34))))) b_lambda!36877)))

(push 1)

(assert (not d!364055))

(assert (not b!1291210))

(assert (not d!364021))

(assert (not b!1291155))

(assert b_and!86003)

(assert (not b!1291115))

(assert (not d!364053))

(assert (not b_lambda!36877))

(assert (not b!1291116))

(assert (not b!1291228))

(assert b_and!85955)

(assert (not b!1291170))

(assert (not b!1291199))

(assert (not b!1291080))

(assert (not b!1291136))

(assert (not b!1291167))

(assert (not b!1291194))

(assert (not d!364017))

(assert (not b!1291122))

(assert b_and!85963)

(assert (not b!1291232))

(assert (not b!1291227))

(assert (not d!364039))

(assert b_and!85999)

(assert b_and!86001)

(assert (not b_next!31195))

(assert (not b_next!31191))

(assert (not b!1291214))

(assert (not d!364033))

(assert (not b!1291229))

(assert (not b_next!31197))

(assert (not bm!88651))

(assert (not b!1291117))

(assert (not d!364025))

(assert (not b!1291204))

(assert (not b!1291253))

(assert b_and!86005)

(assert (not b!1291238))

(assert (not d!363991))

(assert (not b!1291231))

(assert (not b!1291212))

(assert (not b!1291202))

(assert (not d!364019))

(assert (not b_lambda!36875))

(assert (not b!1291252))

(assert b_and!85959)

(assert (not b!1291143))

(assert (not b!1291123))

(assert (not d!364009))

(assert (not b!1291126))

(assert (not b!1291241))

(assert (not b!1291146))

(assert (not d!364029))

(assert (not b!1291209))

(assert (not b!1291168))

(assert tp_is_empty!6565)

(assert (not d!364049))

(assert b_and!85997)

(assert (not b_next!31199))

(assert (not b!1291137))

(assert (not b!1291239))

(assert (not b_lambda!36873))

(assert (not bm!88653))

(assert (not d!364031))

(assert (not d!364051))

(assert (not b!1291242))

(assert (not b_next!31193))

(assert (not tb!69321))

(assert (not b!1291211))

(assert (not b!1291156))

(assert (not d!364015))

(assert (not b!1291213))

(assert (not d!364027))

(assert (not d!364011))

(assert (not d!363995))

(assert (not tb!69327))

(assert (not b_lambda!36871))

(assert (not b!1291233))

(assert (not b_next!31217))

(assert (not d!364013))

(assert (not b!1291200))

(assert (not b!1291215))

(assert (not b_next!31215))

(assert (not b!1291243))

(assert (not b!1291148))

(assert (not b!1291147))

(assert (not b_next!31201))

(check-sat)

(pop 1)

(push 1)

(assert b_and!85955)

(assert b_and!85963)

(assert b_and!86005)

(assert b_and!85959)

(assert b_and!86003)

(assert (not b_next!31193))

(assert (not b_next!31217))

(assert b_and!85999)

(assert b_and!86001)

(assert (not b_next!31195))

(assert (not b_next!31191))

(assert (not b_next!31197))

(assert b_and!85997)

(assert (not b_next!31199))

(assert (not b_next!31215))

(assert (not b_next!31201))

(check-sat)

(pop 1)

