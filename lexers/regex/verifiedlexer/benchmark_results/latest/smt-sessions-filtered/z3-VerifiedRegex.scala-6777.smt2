; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353444 () Bool)

(assert start!353444)

(declare-fun res!1523973 () Bool)

(declare-fun e!2327958 () Bool)

(assert (=> start!353444 (=> (not res!1523973) (not e!2327958))))

(declare-datatypes ((LexerInterface!5749 0))(
  ( (LexerInterfaceExt!5746 (__x!24997 Int)) (Lexer!5747) )
))
(declare-fun thiss!13650 () LexerInterface!5749)

(declare-fun from!841 () Int)

(get-info :version)

(assert (=> start!353444 (= res!1523973 (and ((_ is Lexer!5747) thiss!13650) (>= from!841 0)))))

(assert (=> start!353444 e!2327958))

(assert (=> start!353444 true))

(declare-datatypes ((C!22316 0))(
  ( (C!22317 (val!13234 Int)) )
))
(declare-datatypes ((List!40275 0))(
  ( (Nil!40151) (Cons!40151 (h!45571 C!22316) (t!304252 List!40275)) )
))
(declare-datatypes ((IArray!24617 0))(
  ( (IArray!24618 (innerList!12366 List!40275)) )
))
(declare-datatypes ((Conc!12306 0))(
  ( (Node!12306 (left!31087 Conc!12306) (right!31417 Conc!12306) (csize!24842 Int) (cheight!12517 Int)) (Leaf!19084 (xs!15512 IArray!24617) (csize!24843 Int)) (Empty!12306) )
))
(declare-datatypes ((BalanceConc!24206 0))(
  ( (BalanceConc!24207 (c!651983 Conc!12306)) )
))
(declare-fun acc!400 () BalanceConc!24206)

(declare-fun e!2327959 () Bool)

(declare-fun inv!53889 (BalanceConc!24206) Bool)

(assert (=> start!353444 (and (inv!53889 acc!400) e!2327959)))

(declare-datatypes ((List!40276 0))(
  ( (Nil!40152) (Cons!40152 (h!45572 (_ BitVec 16)) (t!304253 List!40276)) )
))
(declare-datatypes ((TokenValue!6390 0))(
  ( (FloatLiteralValue!12780 (text!45175 List!40276)) (TokenValueExt!6389 (__x!24998 Int)) (Broken!31950 (value!196141 List!40276)) (Object!6513) (End!6390) (Def!6390) (Underscore!6390) (Match!6390) (Else!6390) (Error!6390) (Case!6390) (If!6390) (Extends!6390) (Abstract!6390) (Class!6390) (Val!6390) (DelimiterValue!12780 (del!6450 List!40276)) (KeywordValue!6396 (value!196142 List!40276)) (CommentValue!12780 (value!196143 List!40276)) (WhitespaceValue!12780 (value!196144 List!40276)) (IndentationValue!6390 (value!196145 List!40276)) (String!45631) (Int32!6390) (Broken!31951 (value!196146 List!40276)) (Boolean!6391) (Unit!57875) (OperatorValue!6393 (op!6450 List!40276)) (IdentifierValue!12780 (value!196147 List!40276)) (IdentifierValue!12781 (value!196148 List!40276)) (WhitespaceValue!12781 (value!196149 List!40276)) (True!12780) (False!12780) (Broken!31952 (value!196150 List!40276)) (Broken!31953 (value!196151 List!40276)) (True!12781) (RightBrace!6390) (RightBracket!6390) (Colon!6390) (Null!6390) (Comma!6390) (LeftBracket!6390) (False!12781) (LeftBrace!6390) (ImaginaryLiteralValue!6390 (text!45176 List!40276)) (StringLiteralValue!19170 (value!196152 List!40276)) (EOFValue!6390 (value!196153 List!40276)) (IdentValue!6390 (value!196154 List!40276)) (DelimiterValue!12781 (value!196155 List!40276)) (DedentValue!6390 (value!196156 List!40276)) (NewLineValue!6390 (value!196157 List!40276)) (IntegerValue!19170 (value!196158 (_ BitVec 32)) (text!45177 List!40276)) (IntegerValue!19171 (value!196159 Int) (text!45178 List!40276)) (Times!6390) (Or!6390) (Equal!6390) (Minus!6390) (Broken!31954 (value!196160 List!40276)) (And!6390) (Div!6390) (LessEqual!6390) (Mod!6390) (Concat!17455) (Not!6390) (Plus!6390) (SpaceValue!6390 (value!196161 List!40276)) (IntegerValue!19172 (value!196162 Int) (text!45179 List!40276)) (StringLiteralValue!19171 (text!45180 List!40276)) (FloatLiteralValue!12781 (text!45181 List!40276)) (BytesLiteralValue!6390 (value!196163 List!40276)) (CommentValue!12781 (value!196164 List!40276)) (StringLiteralValue!19172 (value!196165 List!40276)) (ErrorTokenValue!6390 (msg!6451 List!40276)) )
))
(declare-datatypes ((Regex!11065 0))(
  ( (ElementMatch!11065 (c!651984 C!22316)) (Concat!17456 (regOne!22642 Regex!11065) (regTwo!22642 Regex!11065)) (EmptyExpr!11065) (Star!11065 (reg!11394 Regex!11065)) (EmptyLang!11065) (Union!11065 (regOne!22643 Regex!11065) (regTwo!22643 Regex!11065)) )
))
(declare-datatypes ((String!45632 0))(
  ( (String!45633 (value!196166 String)) )
))
(declare-datatypes ((TokenValueInjection!12208 0))(
  ( (TokenValueInjection!12209 (toValue!8520 Int) (toChars!8379 Int)) )
))
(declare-datatypes ((Rule!12120 0))(
  ( (Rule!12121 (regex!6160 Regex!11065) (tag!7020 String!45632) (isSeparator!6160 Bool) (transformation!6160 TokenValueInjection!12208)) )
))
(declare-datatypes ((Token!11458 0))(
  ( (Token!11459 (value!196167 TokenValue!6390) (rule!8924 Rule!12120) (size!30222 Int) (originalCharacters!6760 List!40275)) )
))
(declare-datatypes ((List!40277 0))(
  ( (Nil!40153) (Cons!40153 (h!45573 Token!11458) (t!304254 List!40277)) )
))
(declare-datatypes ((IArray!24619 0))(
  ( (IArray!24620 (innerList!12367 List!40277)) )
))
(declare-datatypes ((Conc!12307 0))(
  ( (Node!12307 (left!31088 Conc!12307) (right!31418 Conc!12307) (csize!24844 Int) (cheight!12518 Int)) (Leaf!19085 (xs!15513 IArray!24619) (csize!24845 Int)) (Empty!12307) )
))
(declare-datatypes ((BalanceConc!24208 0))(
  ( (BalanceConc!24209 (c!651985 Conc!12307)) )
))
(declare-fun v!6347 () BalanceConc!24208)

(declare-fun e!2327960 () Bool)

(declare-fun inv!53890 (BalanceConc!24208) Bool)

(assert (=> start!353444 (and (inv!53890 v!6347) e!2327960)))

(declare-fun b!3764125 () Bool)

(declare-fun e!2327957 () Bool)

(assert (=> b!3764125 (= e!2327958 e!2327957)))

(declare-fun res!1523974 () Bool)

(assert (=> b!3764125 (=> (not res!1523974) (not e!2327957))))

(declare-fun lt!1302553 () Int)

(assert (=> b!3764125 (= res!1523974 (and (<= from!841 lt!1302553) (< from!841 lt!1302553)))))

(declare-fun size!30223 (BalanceConc!24208) Int)

(assert (=> b!3764125 (= lt!1302553 (size!30223 v!6347))))

(declare-fun b!3764126 () Bool)

(declare-fun list!14831 (BalanceConc!24206) List!40275)

(declare-fun printTailRec!1610 (LexerInterface!5749 BalanceConc!24208 Int BalanceConc!24206) BalanceConc!24206)

(declare-fun ++!9960 (BalanceConc!24206 BalanceConc!24206) BalanceConc!24206)

(declare-fun charsOf!4010 (Token!11458) BalanceConc!24206)

(declare-fun apply!9456 (BalanceConc!24208 Int) Token!11458)

(declare-fun printListTailRec!748 (LexerInterface!5749 List!40277 List!40275) List!40275)

(declare-fun dropList!1277 (BalanceConc!24208 Int) List!40277)

(assert (=> b!3764126 (= e!2327957 (not (= (list!14831 (printTailRec!1610 thiss!13650 v!6347 (+ 1 from!841) (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))))) (printListTailRec!748 thiss!13650 (dropList!1277 v!6347 from!841) (list!14831 acc!400)))))))

(declare-fun lt!1302554 () List!40277)

(declare-fun lt!1302552 () List!40277)

(declare-fun tail!5777 (List!40277) List!40277)

(declare-fun drop!2105 (List!40277 Int) List!40277)

(assert (=> b!3764126 (= (tail!5777 lt!1302554) (drop!2105 lt!1302552 (+ 1 from!841)))))

(declare-datatypes ((Unit!57876 0))(
  ( (Unit!57877) )
))
(declare-fun lt!1302551 () Unit!57876)

(declare-fun lemmaDropTail!1123 (List!40277 Int) Unit!57876)

(assert (=> b!3764126 (= lt!1302551 (lemmaDropTail!1123 lt!1302552 from!841))))

(declare-fun head!8050 (List!40277) Token!11458)

(declare-fun apply!9457 (List!40277 Int) Token!11458)

(assert (=> b!3764126 (= (head!8050 lt!1302554) (apply!9457 lt!1302552 from!841))))

(assert (=> b!3764126 (= lt!1302554 (drop!2105 lt!1302552 from!841))))

(declare-fun lt!1302555 () Unit!57876)

(declare-fun lemmaDropApply!1239 (List!40277 Int) Unit!57876)

(assert (=> b!3764126 (= lt!1302555 (lemmaDropApply!1239 lt!1302552 from!841))))

(declare-fun list!14832 (BalanceConc!24208) List!40277)

(assert (=> b!3764126 (= lt!1302552 (list!14832 v!6347))))

(declare-fun b!3764128 () Bool)

(declare-fun tp!1150021 () Bool)

(declare-fun inv!53891 (Conc!12307) Bool)

(assert (=> b!3764128 (= e!2327960 (and (inv!53891 (c!651985 v!6347)) tp!1150021))))

(declare-fun b!3764127 () Bool)

(declare-fun tp!1150022 () Bool)

(declare-fun inv!53892 (Conc!12306) Bool)

(assert (=> b!3764127 (= e!2327959 (and (inv!53892 (c!651983 acc!400)) tp!1150022))))

(assert (= (and start!353444 res!1523973) b!3764125))

(assert (= (and b!3764125 res!1523974) b!3764126))

(assert (= start!353444 b!3764127))

(assert (= start!353444 b!3764128))

(declare-fun m!4259895 () Bool)

(assert (=> b!3764128 m!4259895))

(declare-fun m!4259897 () Bool)

(assert (=> b!3764127 m!4259897))

(declare-fun m!4259899 () Bool)

(assert (=> b!3764125 m!4259899))

(declare-fun m!4259901 () Bool)

(assert (=> b!3764126 m!4259901))

(declare-fun m!4259903 () Bool)

(assert (=> b!3764126 m!4259903))

(declare-fun m!4259905 () Bool)

(assert (=> b!3764126 m!4259905))

(declare-fun m!4259907 () Bool)

(assert (=> b!3764126 m!4259907))

(declare-fun m!4259909 () Bool)

(assert (=> b!3764126 m!4259909))

(declare-fun m!4259911 () Bool)

(assert (=> b!3764126 m!4259911))

(assert (=> b!3764126 m!4259903))

(declare-fun m!4259913 () Bool)

(assert (=> b!3764126 m!4259913))

(declare-fun m!4259915 () Bool)

(assert (=> b!3764126 m!4259915))

(declare-fun m!4259917 () Bool)

(assert (=> b!3764126 m!4259917))

(declare-fun m!4259919 () Bool)

(assert (=> b!3764126 m!4259919))

(assert (=> b!3764126 m!4259905))

(declare-fun m!4259921 () Bool)

(assert (=> b!3764126 m!4259921))

(declare-fun m!4259923 () Bool)

(assert (=> b!3764126 m!4259923))

(declare-fun m!4259925 () Bool)

(assert (=> b!3764126 m!4259925))

(assert (=> b!3764126 m!4259911))

(assert (=> b!3764126 m!4259921))

(declare-fun m!4259927 () Bool)

(assert (=> b!3764126 m!4259927))

(assert (=> b!3764126 m!4259913))

(assert (=> b!3764126 m!4259917))

(declare-fun m!4259929 () Bool)

(assert (=> b!3764126 m!4259929))

(declare-fun m!4259931 () Bool)

(assert (=> b!3764126 m!4259931))

(declare-fun m!4259933 () Bool)

(assert (=> start!353444 m!4259933))

(declare-fun m!4259935 () Bool)

(assert (=> start!353444 m!4259935))

(check-sat (not b!3764127) (not b!3764125) (not b!3764126) (not b!3764128) (not start!353444))
(check-sat)
(get-model)

(declare-fun d!1100362 () Bool)

(declare-fun c!651990 () Bool)

(assert (=> d!1100362 (= c!651990 ((_ is Node!12307) (c!651985 v!6347)))))

(declare-fun e!2327969 () Bool)

(assert (=> d!1100362 (= (inv!53891 (c!651985 v!6347)) e!2327969)))

(declare-fun b!3764141 () Bool)

(declare-fun inv!53897 (Conc!12307) Bool)

(assert (=> b!3764141 (= e!2327969 (inv!53897 (c!651985 v!6347)))))

(declare-fun b!3764142 () Bool)

(declare-fun e!2327970 () Bool)

(assert (=> b!3764142 (= e!2327969 e!2327970)))

(declare-fun res!1523983 () Bool)

(assert (=> b!3764142 (= res!1523983 (not ((_ is Leaf!19085) (c!651985 v!6347))))))

(assert (=> b!3764142 (=> res!1523983 e!2327970)))

(declare-fun b!3764143 () Bool)

(declare-fun inv!53898 (Conc!12307) Bool)

(assert (=> b!3764143 (= e!2327970 (inv!53898 (c!651985 v!6347)))))

(assert (= (and d!1100362 c!651990) b!3764141))

(assert (= (and d!1100362 (not c!651990)) b!3764142))

(assert (= (and b!3764142 (not res!1523983)) b!3764143))

(declare-fun m!4259945 () Bool)

(assert (=> b!3764141 m!4259945))

(declare-fun m!4259947 () Bool)

(assert (=> b!3764143 m!4259947))

(assert (=> b!3764128 d!1100362))

(declare-fun d!1100366 () Bool)

(declare-fun c!651996 () Bool)

(assert (=> d!1100366 (= c!651996 ((_ is Node!12306) (c!651983 acc!400)))))

(declare-fun e!2327981 () Bool)

(assert (=> d!1100366 (= (inv!53892 (c!651983 acc!400)) e!2327981)))

(declare-fun b!3764159 () Bool)

(declare-fun inv!53899 (Conc!12306) Bool)

(assert (=> b!3764159 (= e!2327981 (inv!53899 (c!651983 acc!400)))))

(declare-fun b!3764160 () Bool)

(declare-fun e!2327982 () Bool)

(assert (=> b!3764160 (= e!2327981 e!2327982)))

(declare-fun res!1523989 () Bool)

(assert (=> b!3764160 (= res!1523989 (not ((_ is Leaf!19084) (c!651983 acc!400))))))

(assert (=> b!3764160 (=> res!1523989 e!2327982)))

(declare-fun b!3764161 () Bool)

(declare-fun inv!53900 (Conc!12306) Bool)

(assert (=> b!3764161 (= e!2327982 (inv!53900 (c!651983 acc!400)))))

(assert (= (and d!1100366 c!651996) b!3764159))

(assert (= (and d!1100366 (not c!651996)) b!3764160))

(assert (= (and b!3764160 (not res!1523989)) b!3764161))

(declare-fun m!4259953 () Bool)

(assert (=> b!3764159 m!4259953))

(declare-fun m!4259955 () Bool)

(assert (=> b!3764161 m!4259955))

(assert (=> b!3764127 d!1100366))

(declare-fun d!1100370 () Bool)

(declare-fun list!14834 (Conc!12306) List!40275)

(assert (=> d!1100370 (= (list!14831 acc!400) (list!14834 (c!651983 acc!400)))))

(declare-fun bs!575940 () Bool)

(assert (= bs!575940 d!1100370))

(declare-fun m!4259961 () Bool)

(assert (=> bs!575940 m!4259961))

(assert (=> b!3764126 d!1100370))

(declare-fun d!1100374 () Bool)

(assert (=> d!1100374 (= (tail!5777 (drop!2105 lt!1302552 from!841)) (drop!2105 lt!1302552 (+ from!841 1)))))

(declare-fun lt!1302561 () Unit!57876)

(declare-fun choose!22290 (List!40277 Int) Unit!57876)

(assert (=> d!1100374 (= lt!1302561 (choose!22290 lt!1302552 from!841))))

(declare-fun e!2327987 () Bool)

(assert (=> d!1100374 e!2327987))

(declare-fun res!1523993 () Bool)

(assert (=> d!1100374 (=> (not res!1523993) (not e!2327987))))

(assert (=> d!1100374 (= res!1523993 (>= from!841 0))))

(assert (=> d!1100374 (= (lemmaDropTail!1123 lt!1302552 from!841) lt!1302561)))

(declare-fun b!3764167 () Bool)

(declare-fun size!30226 (List!40277) Int)

(assert (=> b!3764167 (= e!2327987 (< from!841 (size!30226 lt!1302552)))))

(assert (= (and d!1100374 res!1523993) b!3764167))

(assert (=> d!1100374 m!4259909))

(assert (=> d!1100374 m!4259909))

(declare-fun m!4259965 () Bool)

(assert (=> d!1100374 m!4259965))

(declare-fun m!4259967 () Bool)

(assert (=> d!1100374 m!4259967))

(declare-fun m!4259969 () Bool)

(assert (=> d!1100374 m!4259969))

(declare-fun m!4259971 () Bool)

(assert (=> b!3764167 m!4259971))

(assert (=> b!3764126 d!1100374))

(declare-fun d!1100378 () Bool)

(declare-fun lt!1302566 () BalanceConc!24206)

(assert (=> d!1100378 (= (list!14831 lt!1302566) (originalCharacters!6760 (apply!9456 v!6347 from!841)))))

(declare-fun dynLambda!17348 (Int TokenValue!6390) BalanceConc!24206)

(assert (=> d!1100378 (= lt!1302566 (dynLambda!17348 (toChars!8379 (transformation!6160 (rule!8924 (apply!9456 v!6347 from!841)))) (value!196167 (apply!9456 v!6347 from!841))))))

(assert (=> d!1100378 (= (charsOf!4010 (apply!9456 v!6347 from!841)) lt!1302566)))

(declare-fun b_lambda!110447 () Bool)

(assert (=> (not b_lambda!110447) (not d!1100378)))

(declare-fun bs!575942 () Bool)

(assert (= bs!575942 d!1100378))

(declare-fun m!4259973 () Bool)

(assert (=> bs!575942 m!4259973))

(declare-fun m!4259975 () Bool)

(assert (=> bs!575942 m!4259975))

(assert (=> b!3764126 d!1100378))

(declare-fun d!1100380 () Bool)

(assert (=> d!1100380 (= (head!8050 (drop!2105 lt!1302552 from!841)) (apply!9457 lt!1302552 from!841))))

(declare-fun lt!1302570 () Unit!57876)

(declare-fun choose!22291 (List!40277 Int) Unit!57876)

(assert (=> d!1100380 (= lt!1302570 (choose!22291 lt!1302552 from!841))))

(declare-fun e!2328005 () Bool)

(assert (=> d!1100380 e!2328005))

(declare-fun res!1523999 () Bool)

(assert (=> d!1100380 (=> (not res!1523999) (not e!2328005))))

(assert (=> d!1100380 (= res!1523999 (>= from!841 0))))

(assert (=> d!1100380 (= (lemmaDropApply!1239 lt!1302552 from!841) lt!1302570)))

(declare-fun b!3764197 () Bool)

(assert (=> b!3764197 (= e!2328005 (< from!841 (size!30226 lt!1302552)))))

(assert (= (and d!1100380 res!1523999) b!3764197))

(assert (=> d!1100380 m!4259909))

(assert (=> d!1100380 m!4259909))

(declare-fun m!4259987 () Bool)

(assert (=> d!1100380 m!4259987))

(assert (=> d!1100380 m!4259901))

(declare-fun m!4259989 () Bool)

(assert (=> d!1100380 m!4259989))

(assert (=> b!3764197 m!4259971))

(assert (=> b!3764126 d!1100380))

(declare-fun d!1100384 () Bool)

(declare-fun lt!1302576 () Token!11458)

(assert (=> d!1100384 (= lt!1302576 (apply!9457 (list!14832 v!6347) from!841))))

(declare-fun apply!9459 (Conc!12307 Int) Token!11458)

(assert (=> d!1100384 (= lt!1302576 (apply!9459 (c!651985 v!6347) from!841))))

(declare-fun e!2328011 () Bool)

(assert (=> d!1100384 e!2328011))

(declare-fun res!1524005 () Bool)

(assert (=> d!1100384 (=> (not res!1524005) (not e!2328011))))

(assert (=> d!1100384 (= res!1524005 (<= 0 from!841))))

(assert (=> d!1100384 (= (apply!9456 v!6347 from!841) lt!1302576)))

(declare-fun b!3764203 () Bool)

(assert (=> b!3764203 (= e!2328011 (< from!841 (size!30223 v!6347)))))

(assert (= (and d!1100384 res!1524005) b!3764203))

(assert (=> d!1100384 m!4259923))

(assert (=> d!1100384 m!4259923))

(declare-fun m!4259997 () Bool)

(assert (=> d!1100384 m!4259997))

(declare-fun m!4259999 () Bool)

(assert (=> d!1100384 m!4259999))

(assert (=> b!3764203 m!4259899))

(assert (=> b!3764126 d!1100384))

(declare-fun d!1100388 () Bool)

(assert (=> d!1100388 (= (list!14831 (printTailRec!1610 thiss!13650 v!6347 (+ 1 from!841) (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))))) (list!14834 (c!651983 (printTailRec!1610 thiss!13650 v!6347 (+ 1 from!841) (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(declare-fun bs!575943 () Bool)

(assert (= bs!575943 d!1100388))

(declare-fun m!4260001 () Bool)

(assert (=> bs!575943 m!4260001))

(assert (=> b!3764126 d!1100388))

(declare-fun b!3764230 () Bool)

(declare-fun e!2328031 () Int)

(declare-fun e!2328028 () Int)

(assert (=> b!3764230 (= e!2328031 e!2328028)))

(declare-fun c!652021 () Bool)

(declare-fun call!275436 () Int)

(assert (=> b!3764230 (= c!652021 (>= (+ 1 from!841) call!275436))))

(declare-fun b!3764231 () Bool)

(declare-fun e!2328032 () List!40277)

(declare-fun e!2328030 () List!40277)

(assert (=> b!3764231 (= e!2328032 e!2328030)))

(declare-fun c!652020 () Bool)

(assert (=> b!3764231 (= c!652020 (<= (+ 1 from!841) 0))))

(declare-fun b!3764232 () Bool)

(assert (=> b!3764232 (= e!2328031 call!275436)))

(declare-fun b!3764233 () Bool)

(assert (=> b!3764233 (= e!2328028 0)))

(declare-fun b!3764234 () Bool)

(assert (=> b!3764234 (= e!2328030 lt!1302552)))

(declare-fun b!3764235 () Bool)

(assert (=> b!3764235 (= e!2328028 (- call!275436 (+ 1 from!841)))))

(declare-fun d!1100390 () Bool)

(declare-fun e!2328029 () Bool)

(assert (=> d!1100390 e!2328029))

(declare-fun res!1524014 () Bool)

(assert (=> d!1100390 (=> (not res!1524014) (not e!2328029))))

(declare-fun lt!1302587 () List!40277)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5896 (List!40277) (InoxSet Token!11458))

(assert (=> d!1100390 (= res!1524014 (= ((_ map implies) (content!5896 lt!1302587) (content!5896 lt!1302552)) ((as const (InoxSet Token!11458)) true)))))

(assert (=> d!1100390 (= lt!1302587 e!2328032)))

(declare-fun c!652018 () Bool)

(assert (=> d!1100390 (= c!652018 ((_ is Nil!40153) lt!1302552))))

(assert (=> d!1100390 (= (drop!2105 lt!1302552 (+ 1 from!841)) lt!1302587)))

(declare-fun b!3764236 () Bool)

(assert (=> b!3764236 (= e!2328030 (drop!2105 (t!304254 lt!1302552) (- (+ 1 from!841) 1)))))

(declare-fun bm!275431 () Bool)

(assert (=> bm!275431 (= call!275436 (size!30226 lt!1302552))))

(declare-fun b!3764237 () Bool)

(assert (=> b!3764237 (= e!2328029 (= (size!30226 lt!1302587) e!2328031))))

(declare-fun c!652019 () Bool)

(assert (=> b!3764237 (= c!652019 (<= (+ 1 from!841) 0))))

(declare-fun b!3764238 () Bool)

(assert (=> b!3764238 (= e!2328032 Nil!40153)))

(assert (= (and d!1100390 c!652018) b!3764238))

(assert (= (and d!1100390 (not c!652018)) b!3764231))

(assert (= (and b!3764231 c!652020) b!3764234))

(assert (= (and b!3764231 (not c!652020)) b!3764236))

(assert (= (and d!1100390 res!1524014) b!3764237))

(assert (= (and b!3764237 c!652019) b!3764232))

(assert (= (and b!3764237 (not c!652019)) b!3764230))

(assert (= (and b!3764230 c!652021) b!3764233))

(assert (= (and b!3764230 (not c!652021)) b!3764235))

(assert (= (or b!3764232 b!3764230 b!3764235) bm!275431))

(declare-fun m!4260011 () Bool)

(assert (=> d!1100390 m!4260011))

(declare-fun m!4260013 () Bool)

(assert (=> d!1100390 m!4260013))

(declare-fun m!4260015 () Bool)

(assert (=> b!3764236 m!4260015))

(assert (=> bm!275431 m!4259971))

(declare-fun m!4260017 () Bool)

(assert (=> b!3764237 m!4260017))

(assert (=> b!3764126 d!1100390))

(declare-fun b!3764270 () Bool)

(declare-fun res!1524033 () Bool)

(declare-fun e!2328045 () Bool)

(assert (=> b!3764270 (=> (not res!1524033) (not e!2328045))))

(declare-fun height!1758 (Conc!12306) Int)

(declare-fun ++!9963 (Conc!12306 Conc!12306) Conc!12306)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3764270 (= res!1524033 (>= (height!1758 (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))) (max!0 (height!1758 (c!651983 acc!400)) (height!1758 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(declare-fun b!3764269 () Bool)

(declare-fun res!1524034 () Bool)

(assert (=> b!3764269 (=> (not res!1524034) (not e!2328045))))

(assert (=> b!3764269 (= res!1524034 (<= (height!1758 (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))) (+ (max!0 (height!1758 (c!651983 acc!400)) (height!1758 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))) 1)))))

(declare-fun b!3764268 () Bool)

(declare-fun res!1524035 () Bool)

(assert (=> b!3764268 (=> (not res!1524035) (not e!2328045))))

(declare-fun isBalanced!3541 (Conc!12306) Bool)

(assert (=> b!3764268 (= res!1524035 (isBalanced!3541 (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))))))

(declare-fun lt!1302606 () BalanceConc!24206)

(declare-fun b!3764271 () Bool)

(declare-fun ++!9964 (List!40275 List!40275) List!40275)

(assert (=> b!3764271 (= e!2328045 (= (list!14831 lt!1302606) (++!9964 (list!14831 acc!400) (list!14831 (charsOf!4010 (apply!9456 v!6347 from!841))))))))

(declare-fun d!1100396 () Bool)

(assert (=> d!1100396 e!2328045))

(declare-fun res!1524032 () Bool)

(assert (=> d!1100396 (=> (not res!1524032) (not e!2328045))))

(declare-fun appendAssocInst!829 (Conc!12306 Conc!12306) Bool)

(assert (=> d!1100396 (= res!1524032 (appendAssocInst!829 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))

(assert (=> d!1100396 (= lt!1302606 (BalanceConc!24207 (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))))))

(assert (=> d!1100396 (= (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))) lt!1302606)))

(assert (= (and d!1100396 res!1524032) b!3764268))

(assert (= (and b!3764268 res!1524035) b!3764269))

(assert (= (and b!3764269 res!1524034) b!3764270))

(assert (= (and b!3764270 res!1524033) b!3764271))

(declare-fun m!4260051 () Bool)

(assert (=> b!3764270 m!4260051))

(assert (=> b!3764270 m!4260051))

(declare-fun m!4260053 () Bool)

(assert (=> b!3764270 m!4260053))

(declare-fun m!4260055 () Bool)

(assert (=> b!3764270 m!4260055))

(declare-fun m!4260057 () Bool)

(assert (=> b!3764270 m!4260057))

(assert (=> b!3764270 m!4260055))

(assert (=> b!3764270 m!4260057))

(declare-fun m!4260059 () Bool)

(assert (=> b!3764270 m!4260059))

(declare-fun m!4260061 () Bool)

(assert (=> d!1100396 m!4260061))

(assert (=> d!1100396 m!4260051))

(assert (=> b!3764268 m!4260051))

(assert (=> b!3764268 m!4260051))

(declare-fun m!4260063 () Bool)

(assert (=> b!3764268 m!4260063))

(assert (=> b!3764269 m!4260051))

(assert (=> b!3764269 m!4260051))

(assert (=> b!3764269 m!4260053))

(assert (=> b!3764269 m!4260055))

(assert (=> b!3764269 m!4260057))

(assert (=> b!3764269 m!4260055))

(assert (=> b!3764269 m!4260057))

(assert (=> b!3764269 m!4260059))

(declare-fun m!4260065 () Bool)

(assert (=> b!3764271 m!4260065))

(assert (=> b!3764271 m!4259917))

(assert (=> b!3764271 m!4259903))

(declare-fun m!4260067 () Bool)

(assert (=> b!3764271 m!4260067))

(assert (=> b!3764271 m!4259917))

(assert (=> b!3764271 m!4260067))

(declare-fun m!4260069 () Bool)

(assert (=> b!3764271 m!4260069))

(assert (=> b!3764126 d!1100396))

(declare-fun d!1100404 () Bool)

(assert (=> d!1100404 (= (head!8050 lt!1302554) (h!45573 lt!1302554))))

(assert (=> b!3764126 d!1100404))

(declare-fun lt!1302650 () BalanceConc!24206)

(declare-fun d!1100406 () Bool)

(assert (=> d!1100406 (= (list!14831 lt!1302650) (printListTailRec!748 thiss!13650 (dropList!1277 v!6347 (+ 1 from!841)) (list!14831 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))))))))

(declare-fun e!2328067 () BalanceConc!24206)

(assert (=> d!1100406 (= lt!1302650 e!2328067)))

(declare-fun c!652043 () Bool)

(assert (=> d!1100406 (= c!652043 (>= (+ 1 from!841) (size!30223 v!6347)))))

(declare-fun e!2328068 () Bool)

(assert (=> d!1100406 e!2328068))

(declare-fun res!1524048 () Bool)

(assert (=> d!1100406 (=> (not res!1524048) (not e!2328068))))

(assert (=> d!1100406 (= res!1524048 (>= (+ 1 from!841) 0))))

(assert (=> d!1100406 (= (printTailRec!1610 thiss!13650 v!6347 (+ 1 from!841) (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))) lt!1302650)))

(declare-fun b!3764308 () Bool)

(assert (=> b!3764308 (= e!2328068 (<= (+ 1 from!841) (size!30223 v!6347)))))

(declare-fun b!3764309 () Bool)

(assert (=> b!3764309 (= e!2328067 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))))))

(declare-fun b!3764310 () Bool)

(assert (=> b!3764310 (= e!2328067 (printTailRec!1610 thiss!13650 v!6347 (+ 1 from!841 1) (++!9960 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))) (charsOf!4010 (apply!9456 v!6347 (+ 1 from!841))))))))

(declare-fun lt!1302654 () List!40277)

(assert (=> b!3764310 (= lt!1302654 (list!14832 v!6347))))

(declare-fun lt!1302655 () Unit!57876)

(assert (=> b!3764310 (= lt!1302655 (lemmaDropApply!1239 lt!1302654 (+ 1 from!841)))))

(assert (=> b!3764310 (= (head!8050 (drop!2105 lt!1302654 (+ 1 from!841))) (apply!9457 lt!1302654 (+ 1 from!841)))))

(declare-fun lt!1302649 () Unit!57876)

(assert (=> b!3764310 (= lt!1302649 lt!1302655)))

(declare-fun lt!1302653 () List!40277)

(assert (=> b!3764310 (= lt!1302653 (list!14832 v!6347))))

(declare-fun lt!1302652 () Unit!57876)

(assert (=> b!3764310 (= lt!1302652 (lemmaDropTail!1123 lt!1302653 (+ 1 from!841)))))

(assert (=> b!3764310 (= (tail!5777 (drop!2105 lt!1302653 (+ 1 from!841))) (drop!2105 lt!1302653 (+ 1 from!841 1)))))

(declare-fun lt!1302651 () Unit!57876)

(assert (=> b!3764310 (= lt!1302651 lt!1302652)))

(assert (= (and d!1100406 res!1524048) b!3764308))

(assert (= (and d!1100406 c!652043) b!3764309))

(assert (= (and d!1100406 (not c!652043)) b!3764310))

(declare-fun m!4260145 () Bool)

(assert (=> d!1100406 m!4260145))

(declare-fun m!4260147 () Bool)

(assert (=> d!1100406 m!4260147))

(declare-fun m!4260149 () Bool)

(assert (=> d!1100406 m!4260149))

(assert (=> d!1100406 m!4259899))

(assert (=> d!1100406 m!4259905))

(assert (=> d!1100406 m!4260147))

(declare-fun m!4260151 () Bool)

(assert (=> d!1100406 m!4260151))

(assert (=> d!1100406 m!4260145))

(assert (=> b!3764308 m!4259899))

(declare-fun m!4260153 () Bool)

(assert (=> b!3764310 m!4260153))

(declare-fun m!4260155 () Bool)

(assert (=> b!3764310 m!4260155))

(declare-fun m!4260157 () Bool)

(assert (=> b!3764310 m!4260157))

(declare-fun m!4260161 () Bool)

(assert (=> b!3764310 m!4260161))

(declare-fun m!4260165 () Bool)

(assert (=> b!3764310 m!4260165))

(assert (=> b!3764310 m!4259905))

(declare-fun m!4260169 () Bool)

(assert (=> b!3764310 m!4260169))

(assert (=> b!3764310 m!4260153))

(assert (=> b!3764310 m!4260157))

(declare-fun m!4260171 () Bool)

(assert (=> b!3764310 m!4260171))

(assert (=> b!3764310 m!4260165))

(assert (=> b!3764310 m!4260169))

(assert (=> b!3764310 m!4259923))

(declare-fun m!4260173 () Bool)

(assert (=> b!3764310 m!4260173))

(declare-fun m!4260175 () Bool)

(assert (=> b!3764310 m!4260175))

(declare-fun m!4260177 () Bool)

(assert (=> b!3764310 m!4260177))

(assert (=> b!3764310 m!4260177))

(declare-fun m!4260179 () Bool)

(assert (=> b!3764310 m!4260179))

(declare-fun m!4260181 () Bool)

(assert (=> b!3764310 m!4260181))

(assert (=> b!3764126 d!1100406))

(declare-fun b!3764325 () Bool)

(declare-fun e!2328080 () Int)

(declare-fun e!2328077 () Int)

(assert (=> b!3764325 (= e!2328080 e!2328077)))

(declare-fun c!652047 () Bool)

(declare-fun call!275438 () Int)

(assert (=> b!3764325 (= c!652047 (>= from!841 call!275438))))

(declare-fun b!3764326 () Bool)

(declare-fun e!2328081 () List!40277)

(declare-fun e!2328079 () List!40277)

(assert (=> b!3764326 (= e!2328081 e!2328079)))

(declare-fun c!652046 () Bool)

(assert (=> b!3764326 (= c!652046 (<= from!841 0))))

(declare-fun b!3764327 () Bool)

(assert (=> b!3764327 (= e!2328080 call!275438)))

(declare-fun b!3764328 () Bool)

(assert (=> b!3764328 (= e!2328077 0)))

(declare-fun b!3764329 () Bool)

(assert (=> b!3764329 (= e!2328079 lt!1302552)))

(declare-fun b!3764330 () Bool)

(assert (=> b!3764330 (= e!2328077 (- call!275438 from!841))))

(declare-fun d!1100422 () Bool)

(declare-fun e!2328078 () Bool)

(assert (=> d!1100422 e!2328078))

(declare-fun res!1524049 () Bool)

(assert (=> d!1100422 (=> (not res!1524049) (not e!2328078))))

(declare-fun lt!1302656 () List!40277)

(assert (=> d!1100422 (= res!1524049 (= ((_ map implies) (content!5896 lt!1302656) (content!5896 lt!1302552)) ((as const (InoxSet Token!11458)) true)))))

(assert (=> d!1100422 (= lt!1302656 e!2328081)))

(declare-fun c!652044 () Bool)

(assert (=> d!1100422 (= c!652044 ((_ is Nil!40153) lt!1302552))))

(assert (=> d!1100422 (= (drop!2105 lt!1302552 from!841) lt!1302656)))

(declare-fun b!3764331 () Bool)

(assert (=> b!3764331 (= e!2328079 (drop!2105 (t!304254 lt!1302552) (- from!841 1)))))

(declare-fun bm!275433 () Bool)

(assert (=> bm!275433 (= call!275438 (size!30226 lt!1302552))))

(declare-fun b!3764332 () Bool)

(assert (=> b!3764332 (= e!2328078 (= (size!30226 lt!1302656) e!2328080))))

(declare-fun c!652045 () Bool)

(assert (=> b!3764332 (= c!652045 (<= from!841 0))))

(declare-fun b!3764333 () Bool)

(assert (=> b!3764333 (= e!2328081 Nil!40153)))

(assert (= (and d!1100422 c!652044) b!3764333))

(assert (= (and d!1100422 (not c!652044)) b!3764326))

(assert (= (and b!3764326 c!652046) b!3764329))

(assert (= (and b!3764326 (not c!652046)) b!3764331))

(assert (= (and d!1100422 res!1524049) b!3764332))

(assert (= (and b!3764332 c!652045) b!3764327))

(assert (= (and b!3764332 (not c!652045)) b!3764325))

(assert (= (and b!3764325 c!652047) b!3764328))

(assert (= (and b!3764325 (not c!652047)) b!3764330))

(assert (= (or b!3764327 b!3764325 b!3764330) bm!275433))

(declare-fun m!4260183 () Bool)

(assert (=> d!1100422 m!4260183))

(assert (=> d!1100422 m!4260013))

(declare-fun m!4260185 () Bool)

(assert (=> b!3764331 m!4260185))

(assert (=> bm!275433 m!4259971))

(declare-fun m!4260187 () Bool)

(assert (=> b!3764332 m!4260187))

(assert (=> b!3764126 d!1100422))

(declare-fun lt!1302671 () List!40275)

(declare-fun d!1100424 () Bool)

(declare-fun printList!1663 (LexerInterface!5749 List!40277) List!40275)

(assert (=> d!1100424 (= lt!1302671 (++!9964 (list!14831 acc!400) (printList!1663 thiss!13650 (dropList!1277 v!6347 from!841))))))

(declare-fun e!2328084 () List!40275)

(assert (=> d!1100424 (= lt!1302671 e!2328084)))

(declare-fun c!652050 () Bool)

(assert (=> d!1100424 (= c!652050 ((_ is Cons!40153) (dropList!1277 v!6347 from!841)))))

(assert (=> d!1100424 (= (printListTailRec!748 thiss!13650 (dropList!1277 v!6347 from!841) (list!14831 acc!400)) lt!1302671)))

(declare-fun b!3764338 () Bool)

(assert (=> b!3764338 (= e!2328084 (printListTailRec!748 thiss!13650 (t!304254 (dropList!1277 v!6347 from!841)) (++!9964 (list!14831 acc!400) (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841)))))))))

(declare-fun lt!1302667 () List!40275)

(assert (=> b!3764338 (= lt!1302667 (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841)))))))

(declare-fun lt!1302668 () List!40275)

(assert (=> b!3764338 (= lt!1302668 (printList!1663 thiss!13650 (t!304254 (dropList!1277 v!6347 from!841))))))

(declare-fun lt!1302670 () Unit!57876)

(declare-fun lemmaConcatAssociativity!2106 (List!40275 List!40275 List!40275) Unit!57876)

(assert (=> b!3764338 (= lt!1302670 (lemmaConcatAssociativity!2106 (list!14831 acc!400) lt!1302667 lt!1302668))))

(assert (=> b!3764338 (= (++!9964 (++!9964 (list!14831 acc!400) lt!1302667) lt!1302668) (++!9964 (list!14831 acc!400) (++!9964 lt!1302667 lt!1302668)))))

(declare-fun lt!1302669 () Unit!57876)

(assert (=> b!3764338 (= lt!1302669 lt!1302670)))

(declare-fun b!3764339 () Bool)

(assert (=> b!3764339 (= e!2328084 (list!14831 acc!400))))

(assert (= (and d!1100424 c!652050) b!3764338))

(assert (= (and d!1100424 (not c!652050)) b!3764339))

(assert (=> d!1100424 m!4259913))

(declare-fun m!4260189 () Bool)

(assert (=> d!1100424 m!4260189))

(assert (=> d!1100424 m!4259917))

(assert (=> d!1100424 m!4260189))

(declare-fun m!4260191 () Bool)

(assert (=> d!1100424 m!4260191))

(declare-fun m!4260193 () Bool)

(assert (=> b!3764338 m!4260193))

(declare-fun m!4260195 () Bool)

(assert (=> b!3764338 m!4260195))

(declare-fun m!4260197 () Bool)

(assert (=> b!3764338 m!4260197))

(declare-fun m!4260199 () Bool)

(assert (=> b!3764338 m!4260199))

(assert (=> b!3764338 m!4259917))

(assert (=> b!3764338 m!4260199))

(assert (=> b!3764338 m!4260193))

(assert (=> b!3764338 m!4260197))

(assert (=> b!3764338 m!4259917))

(declare-fun m!4260201 () Bool)

(assert (=> b!3764338 m!4260201))

(declare-fun m!4260203 () Bool)

(assert (=> b!3764338 m!4260203))

(assert (=> b!3764338 m!4260201))

(declare-fun m!4260205 () Bool)

(assert (=> b!3764338 m!4260205))

(assert (=> b!3764338 m!4259917))

(assert (=> b!3764338 m!4260203))

(declare-fun m!4260207 () Bool)

(assert (=> b!3764338 m!4260207))

(assert (=> b!3764338 m!4259917))

(declare-fun m!4260209 () Bool)

(assert (=> b!3764338 m!4260209))

(declare-fun m!4260211 () Bool)

(assert (=> b!3764338 m!4260211))

(assert (=> b!3764126 d!1100424))

(declare-fun d!1100426 () Bool)

(declare-fun lt!1302674 () Token!11458)

(declare-fun contains!8168 (List!40277 Token!11458) Bool)

(assert (=> d!1100426 (contains!8168 lt!1302552 lt!1302674)))

(declare-fun e!2328090 () Token!11458)

(assert (=> d!1100426 (= lt!1302674 e!2328090)))

(declare-fun c!652053 () Bool)

(assert (=> d!1100426 (= c!652053 (= from!841 0))))

(declare-fun e!2328089 () Bool)

(assert (=> d!1100426 e!2328089))

(declare-fun res!1524052 () Bool)

(assert (=> d!1100426 (=> (not res!1524052) (not e!2328089))))

(assert (=> d!1100426 (= res!1524052 (<= 0 from!841))))

(assert (=> d!1100426 (= (apply!9457 lt!1302552 from!841) lt!1302674)))

(declare-fun b!3764346 () Bool)

(assert (=> b!3764346 (= e!2328089 (< from!841 (size!30226 lt!1302552)))))

(declare-fun b!3764347 () Bool)

(assert (=> b!3764347 (= e!2328090 (head!8050 lt!1302552))))

(declare-fun b!3764348 () Bool)

(assert (=> b!3764348 (= e!2328090 (apply!9457 (tail!5777 lt!1302552) (- from!841 1)))))

(assert (= (and d!1100426 res!1524052) b!3764346))

(assert (= (and d!1100426 c!652053) b!3764347))

(assert (= (and d!1100426 (not c!652053)) b!3764348))

(declare-fun m!4260213 () Bool)

(assert (=> d!1100426 m!4260213))

(assert (=> b!3764346 m!4259971))

(declare-fun m!4260215 () Bool)

(assert (=> b!3764347 m!4260215))

(declare-fun m!4260217 () Bool)

(assert (=> b!3764348 m!4260217))

(assert (=> b!3764348 m!4260217))

(declare-fun m!4260219 () Bool)

(assert (=> b!3764348 m!4260219))

(assert (=> b!3764126 d!1100426))

(declare-fun d!1100428 () Bool)

(assert (=> d!1100428 (= (tail!5777 lt!1302554) (t!304254 lt!1302554))))

(assert (=> b!3764126 d!1100428))

(declare-fun d!1100430 () Bool)

(declare-fun list!14836 (Conc!12307) List!40277)

(assert (=> d!1100430 (= (list!14832 v!6347) (list!14836 (c!651985 v!6347)))))

(declare-fun bs!575948 () Bool)

(assert (= bs!575948 d!1100430))

(declare-fun m!4260221 () Bool)

(assert (=> bs!575948 m!4260221))

(assert (=> b!3764126 d!1100430))

(declare-fun d!1100432 () Bool)

(assert (=> d!1100432 (= (dropList!1277 v!6347 from!841) (drop!2105 (list!14836 (c!651985 v!6347)) from!841))))

(declare-fun bs!575949 () Bool)

(assert (= bs!575949 d!1100432))

(assert (=> bs!575949 m!4260221))

(assert (=> bs!575949 m!4260221))

(declare-fun m!4260223 () Bool)

(assert (=> bs!575949 m!4260223))

(assert (=> b!3764126 d!1100432))

(declare-fun d!1100434 () Bool)

(assert (=> d!1100434 (= (inv!53889 acc!400) (isBalanced!3541 (c!651983 acc!400)))))

(declare-fun bs!575950 () Bool)

(assert (= bs!575950 d!1100434))

(declare-fun m!4260225 () Bool)

(assert (=> bs!575950 m!4260225))

(assert (=> start!353444 d!1100434))

(declare-fun d!1100436 () Bool)

(declare-fun isBalanced!3542 (Conc!12307) Bool)

(assert (=> d!1100436 (= (inv!53890 v!6347) (isBalanced!3542 (c!651985 v!6347)))))

(declare-fun bs!575951 () Bool)

(assert (= bs!575951 d!1100436))

(declare-fun m!4260227 () Bool)

(assert (=> bs!575951 m!4260227))

(assert (=> start!353444 d!1100436))

(declare-fun d!1100438 () Bool)

(declare-fun lt!1302677 () Int)

(assert (=> d!1100438 (= lt!1302677 (size!30226 (list!14832 v!6347)))))

(declare-fun size!30227 (Conc!12307) Int)

(assert (=> d!1100438 (= lt!1302677 (size!30227 (c!651985 v!6347)))))

(assert (=> d!1100438 (= (size!30223 v!6347) lt!1302677)))

(declare-fun bs!575952 () Bool)

(assert (= bs!575952 d!1100438))

(assert (=> bs!575952 m!4259923))

(assert (=> bs!575952 m!4259923))

(declare-fun m!4260229 () Bool)

(assert (=> bs!575952 m!4260229))

(declare-fun m!4260231 () Bool)

(assert (=> bs!575952 m!4260231))

(assert (=> b!3764125 d!1100438))

(declare-fun b!3764357 () Bool)

(declare-fun tp!1150047 () Bool)

(declare-fun tp!1150048 () Bool)

(declare-fun e!2328095 () Bool)

(assert (=> b!3764357 (= e!2328095 (and (inv!53891 (left!31088 (c!651985 v!6347))) tp!1150048 (inv!53891 (right!31418 (c!651985 v!6347))) tp!1150047))))

(declare-fun b!3764359 () Bool)

(declare-fun e!2328096 () Bool)

(declare-fun tp!1150049 () Bool)

(assert (=> b!3764359 (= e!2328096 tp!1150049)))

(declare-fun b!3764358 () Bool)

(declare-fun inv!53903 (IArray!24619) Bool)

(assert (=> b!3764358 (= e!2328095 (and (inv!53903 (xs!15513 (c!651985 v!6347))) e!2328096))))

(assert (=> b!3764128 (= tp!1150021 (and (inv!53891 (c!651985 v!6347)) e!2328095))))

(assert (= (and b!3764128 ((_ is Node!12307) (c!651985 v!6347))) b!3764357))

(assert (= b!3764358 b!3764359))

(assert (= (and b!3764128 ((_ is Leaf!19085) (c!651985 v!6347))) b!3764358))

(declare-fun m!4260233 () Bool)

(assert (=> b!3764357 m!4260233))

(declare-fun m!4260235 () Bool)

(assert (=> b!3764357 m!4260235))

(declare-fun m!4260237 () Bool)

(assert (=> b!3764358 m!4260237))

(assert (=> b!3764128 m!4259895))

(declare-fun tp!1150058 () Bool)

(declare-fun e!2328101 () Bool)

(declare-fun tp!1150056 () Bool)

(declare-fun b!3764368 () Bool)

(assert (=> b!3764368 (= e!2328101 (and (inv!53892 (left!31087 (c!651983 acc!400))) tp!1150058 (inv!53892 (right!31417 (c!651983 acc!400))) tp!1150056))))

(declare-fun b!3764370 () Bool)

(declare-fun e!2328102 () Bool)

(declare-fun tp!1150057 () Bool)

(assert (=> b!3764370 (= e!2328102 tp!1150057)))

(declare-fun b!3764369 () Bool)

(declare-fun inv!53904 (IArray!24617) Bool)

(assert (=> b!3764369 (= e!2328101 (and (inv!53904 (xs!15512 (c!651983 acc!400))) e!2328102))))

(assert (=> b!3764127 (= tp!1150022 (and (inv!53892 (c!651983 acc!400)) e!2328101))))

(assert (= (and b!3764127 ((_ is Node!12306) (c!651983 acc!400))) b!3764368))

(assert (= b!3764369 b!3764370))

(assert (= (and b!3764127 ((_ is Leaf!19084) (c!651983 acc!400))) b!3764369))

(declare-fun m!4260239 () Bool)

(assert (=> b!3764368 m!4260239))

(declare-fun m!4260241 () Bool)

(assert (=> b!3764368 m!4260241))

(declare-fun m!4260243 () Bool)

(assert (=> b!3764369 m!4260243))

(assert (=> b!3764127 m!4259897))

(check-sat (not d!1100380) (not d!1100370) (not b!3764348) (not d!1100378) (not b!3764346) (not d!1100434) (not d!1100438) (not d!1100374) (not d!1100426) (not d!1100384) (not b!3764159) (not b!3764270) (not b!3764236) (not b!3764358) (not b!3764167) (not b!3764308) (not b!3764197) (not b!3764370) (not b!3764143) (not d!1100406) (not b!3764161) (not b!3764271) (not b!3764268) (not b!3764357) (not d!1100396) (not b_lambda!110447) (not bm!275431) (not b!3764141) (not d!1100390) (not d!1100422) (not d!1100388) (not b!3764203) (not b!3764331) (not b!3764237) (not d!1100424) (not b!3764332) (not b!3764310) (not b!3764338) (not b!3764369) (not b!3764347) (not b!3764127) (not b!3764359) (not d!1100432) (not d!1100430) (not b!3764269) (not d!1100436) (not b!3764368) (not bm!275433) (not b!3764128))
(check-sat)
(get-model)

(declare-fun b!3764707 () Bool)

(declare-fun e!2328286 () Int)

(declare-fun e!2328283 () Int)

(assert (=> b!3764707 (= e!2328286 e!2328283)))

(declare-fun c!652149 () Bool)

(declare-fun call!275493 () Int)

(assert (=> b!3764707 (= c!652149 (>= (- from!841 1) call!275493))))

(declare-fun b!3764708 () Bool)

(declare-fun e!2328287 () List!40277)

(declare-fun e!2328285 () List!40277)

(assert (=> b!3764708 (= e!2328287 e!2328285)))

(declare-fun c!652148 () Bool)

(assert (=> b!3764708 (= c!652148 (<= (- from!841 1) 0))))

(declare-fun b!3764709 () Bool)

(assert (=> b!3764709 (= e!2328286 call!275493)))

(declare-fun b!3764710 () Bool)

(assert (=> b!3764710 (= e!2328283 0)))

(declare-fun b!3764711 () Bool)

(assert (=> b!3764711 (= e!2328285 (t!304254 lt!1302552))))

(declare-fun b!3764712 () Bool)

(assert (=> b!3764712 (= e!2328283 (- call!275493 (- from!841 1)))))

(declare-fun d!1100558 () Bool)

(declare-fun e!2328284 () Bool)

(assert (=> d!1100558 e!2328284))

(declare-fun res!1524209 () Bool)

(assert (=> d!1100558 (=> (not res!1524209) (not e!2328284))))

(declare-fun lt!1302744 () List!40277)

(assert (=> d!1100558 (= res!1524209 (= ((_ map implies) (content!5896 lt!1302744) (content!5896 (t!304254 lt!1302552))) ((as const (InoxSet Token!11458)) true)))))

(assert (=> d!1100558 (= lt!1302744 e!2328287)))

(declare-fun c!652146 () Bool)

(assert (=> d!1100558 (= c!652146 ((_ is Nil!40153) (t!304254 lt!1302552)))))

(assert (=> d!1100558 (= (drop!2105 (t!304254 lt!1302552) (- from!841 1)) lt!1302744)))

(declare-fun b!3764713 () Bool)

(assert (=> b!3764713 (= e!2328285 (drop!2105 (t!304254 (t!304254 lt!1302552)) (- (- from!841 1) 1)))))

(declare-fun bm!275488 () Bool)

(assert (=> bm!275488 (= call!275493 (size!30226 (t!304254 lt!1302552)))))

(declare-fun b!3764714 () Bool)

(assert (=> b!3764714 (= e!2328284 (= (size!30226 lt!1302744) e!2328286))))

(declare-fun c!652147 () Bool)

(assert (=> b!3764714 (= c!652147 (<= (- from!841 1) 0))))

(declare-fun b!3764715 () Bool)

(assert (=> b!3764715 (= e!2328287 Nil!40153)))

(assert (= (and d!1100558 c!652146) b!3764715))

(assert (= (and d!1100558 (not c!652146)) b!3764708))

(assert (= (and b!3764708 c!652148) b!3764711))

(assert (= (and b!3764708 (not c!652148)) b!3764713))

(assert (= (and d!1100558 res!1524209) b!3764714))

(assert (= (and b!3764714 c!652147) b!3764709))

(assert (= (and b!3764714 (not c!652147)) b!3764707))

(assert (= (and b!3764707 c!652149) b!3764710))

(assert (= (and b!3764707 (not c!652149)) b!3764712))

(assert (= (or b!3764709 b!3764707 b!3764712) bm!275488))

(declare-fun m!4260619 () Bool)

(assert (=> d!1100558 m!4260619))

(declare-fun m!4260621 () Bool)

(assert (=> d!1100558 m!4260621))

(declare-fun m!4260625 () Bool)

(assert (=> b!3764713 m!4260625))

(declare-fun m!4260629 () Bool)

(assert (=> bm!275488 m!4260629))

(declare-fun m!4260631 () Bool)

(assert (=> b!3764714 m!4260631))

(assert (=> b!3764331 d!1100558))

(assert (=> b!3764128 d!1100362))

(declare-fun d!1100560 () Bool)

(declare-fun c!652156 () Bool)

(assert (=> d!1100560 (= c!652156 ((_ is Nil!40153) lt!1302587))))

(declare-fun e!2328296 () (InoxSet Token!11458))

(assert (=> d!1100560 (= (content!5896 lt!1302587) e!2328296)))

(declare-fun b!3764730 () Bool)

(assert (=> b!3764730 (= e!2328296 ((as const (Array Token!11458 Bool)) false))))

(declare-fun b!3764731 () Bool)

(assert (=> b!3764731 (= e!2328296 ((_ map or) (store ((as const (Array Token!11458 Bool)) false) (h!45573 lt!1302587) true) (content!5896 (t!304254 lt!1302587))))))

(assert (= (and d!1100560 c!652156) b!3764730))

(assert (= (and d!1100560 (not c!652156)) b!3764731))

(declare-fun m!4260671 () Bool)

(assert (=> b!3764731 m!4260671))

(declare-fun m!4260673 () Bool)

(assert (=> b!3764731 m!4260673))

(assert (=> d!1100390 d!1100560))

(declare-fun d!1100572 () Bool)

(declare-fun c!652157 () Bool)

(assert (=> d!1100572 (= c!652157 ((_ is Nil!40153) lt!1302552))))

(declare-fun e!2328297 () (InoxSet Token!11458))

(assert (=> d!1100572 (= (content!5896 lt!1302552) e!2328297)))

(declare-fun b!3764732 () Bool)

(assert (=> b!3764732 (= e!2328297 ((as const (Array Token!11458 Bool)) false))))

(declare-fun b!3764733 () Bool)

(assert (=> b!3764733 (= e!2328297 ((_ map or) (store ((as const (Array Token!11458 Bool)) false) (h!45573 lt!1302552) true) (content!5896 (t!304254 lt!1302552))))))

(assert (= (and d!1100572 c!652157) b!3764732))

(assert (= (and d!1100572 (not c!652157)) b!3764733))

(declare-fun m!4260675 () Bool)

(assert (=> b!3764733 m!4260675))

(assert (=> b!3764733 m!4260621))

(assert (=> d!1100390 d!1100572))

(declare-fun d!1100574 () Bool)

(declare-fun lt!1302753 () Int)

(assert (=> d!1100574 (>= lt!1302753 0)))

(declare-fun e!2328307 () Int)

(assert (=> d!1100574 (= lt!1302753 e!2328307)))

(declare-fun c!652164 () Bool)

(assert (=> d!1100574 (= c!652164 ((_ is Nil!40153) lt!1302552))))

(assert (=> d!1100574 (= (size!30226 lt!1302552) lt!1302753)))

(declare-fun b!3764752 () Bool)

(assert (=> b!3764752 (= e!2328307 0)))

(declare-fun b!3764753 () Bool)

(assert (=> b!3764753 (= e!2328307 (+ 1 (size!30226 (t!304254 lt!1302552))))))

(assert (= (and d!1100574 c!652164) b!3764752))

(assert (= (and d!1100574 (not c!652164)) b!3764753))

(assert (=> b!3764753 m!4260629))

(assert (=> b!3764167 d!1100574))

(declare-fun b!3764786 () Bool)

(declare-fun e!2328325 () List!40277)

(declare-fun ++!9966 (List!40277 List!40277) List!40277)

(assert (=> b!3764786 (= e!2328325 (++!9966 (list!14836 (left!31088 (c!651985 v!6347))) (list!14836 (right!31418 (c!651985 v!6347)))))))

(declare-fun d!1100580 () Bool)

(declare-fun c!652178 () Bool)

(assert (=> d!1100580 (= c!652178 ((_ is Empty!12307) (c!651985 v!6347)))))

(declare-fun e!2328324 () List!40277)

(assert (=> d!1100580 (= (list!14836 (c!651985 v!6347)) e!2328324)))

(declare-fun b!3764784 () Bool)

(assert (=> b!3764784 (= e!2328324 e!2328325)))

(declare-fun c!652179 () Bool)

(assert (=> b!3764784 (= c!652179 ((_ is Leaf!19085) (c!651985 v!6347)))))

(declare-fun b!3764783 () Bool)

(assert (=> b!3764783 (= e!2328324 Nil!40153)))

(declare-fun b!3764785 () Bool)

(declare-fun list!14839 (IArray!24619) List!40277)

(assert (=> b!3764785 (= e!2328325 (list!14839 (xs!15513 (c!651985 v!6347))))))

(assert (= (and d!1100580 c!652178) b!3764783))

(assert (= (and d!1100580 (not c!652178)) b!3764784))

(assert (= (and b!3764784 c!652179) b!3764785))

(assert (= (and b!3764784 (not c!652179)) b!3764786))

(declare-fun m!4260727 () Bool)

(assert (=> b!3764786 m!4260727))

(declare-fun m!4260729 () Bool)

(assert (=> b!3764786 m!4260729))

(assert (=> b!3764786 m!4260727))

(assert (=> b!3764786 m!4260729))

(declare-fun m!4260731 () Bool)

(assert (=> b!3764786 m!4260731))

(declare-fun m!4260733 () Bool)

(assert (=> b!3764785 m!4260733))

(assert (=> d!1100430 d!1100580))

(assert (=> b!3764127 d!1100366))

(assert (=> b!3764203 d!1100438))

(declare-fun b!3764796 () Bool)

(declare-fun e!2328330 () List!40275)

(declare-fun e!2328331 () List!40275)

(assert (=> b!3764796 (= e!2328330 e!2328331)))

(declare-fun c!652185 () Bool)

(assert (=> b!3764796 (= c!652185 ((_ is Leaf!19084) (c!651983 acc!400)))))

(declare-fun b!3764798 () Bool)

(assert (=> b!3764798 (= e!2328331 (++!9964 (list!14834 (left!31087 (c!651983 acc!400))) (list!14834 (right!31417 (c!651983 acc!400)))))))

(declare-fun d!1100592 () Bool)

(declare-fun c!652184 () Bool)

(assert (=> d!1100592 (= c!652184 ((_ is Empty!12306) (c!651983 acc!400)))))

(assert (=> d!1100592 (= (list!14834 (c!651983 acc!400)) e!2328330)))

(declare-fun b!3764795 () Bool)

(assert (=> b!3764795 (= e!2328330 Nil!40151)))

(declare-fun b!3764797 () Bool)

(declare-fun list!14840 (IArray!24617) List!40275)

(assert (=> b!3764797 (= e!2328331 (list!14840 (xs!15512 (c!651983 acc!400))))))

(assert (= (and d!1100592 c!652184) b!3764795))

(assert (= (and d!1100592 (not c!652184)) b!3764796))

(assert (= (and b!3764796 c!652185) b!3764797))

(assert (= (and b!3764796 (not c!652185)) b!3764798))

(declare-fun m!4260735 () Bool)

(assert (=> b!3764798 m!4260735))

(declare-fun m!4260737 () Bool)

(assert (=> b!3764798 m!4260737))

(assert (=> b!3764798 m!4260735))

(assert (=> b!3764798 m!4260737))

(declare-fun m!4260741 () Bool)

(assert (=> b!3764798 m!4260741))

(declare-fun m!4260743 () Bool)

(assert (=> b!3764797 m!4260743))

(assert (=> d!1100370 d!1100592))

(declare-fun d!1100604 () Bool)

(assert (=> d!1100604 (= (tail!5777 (drop!2105 lt!1302552 from!841)) (t!304254 (drop!2105 lt!1302552 from!841)))))

(assert (=> d!1100374 d!1100604))

(assert (=> d!1100374 d!1100422))

(declare-fun b!3764801 () Bool)

(declare-fun e!2328335 () Int)

(declare-fun e!2328332 () Int)

(assert (=> b!3764801 (= e!2328335 e!2328332)))

(declare-fun c!652189 () Bool)

(declare-fun call!275498 () Int)

(assert (=> b!3764801 (= c!652189 (>= (+ from!841 1) call!275498))))

(declare-fun b!3764802 () Bool)

(declare-fun e!2328336 () List!40277)

(declare-fun e!2328334 () List!40277)

(assert (=> b!3764802 (= e!2328336 e!2328334)))

(declare-fun c!652188 () Bool)

(assert (=> b!3764802 (= c!652188 (<= (+ from!841 1) 0))))

(declare-fun b!3764803 () Bool)

(assert (=> b!3764803 (= e!2328335 call!275498)))

(declare-fun b!3764804 () Bool)

(assert (=> b!3764804 (= e!2328332 0)))

(declare-fun b!3764805 () Bool)

(assert (=> b!3764805 (= e!2328334 lt!1302552)))

(declare-fun b!3764806 () Bool)

(assert (=> b!3764806 (= e!2328332 (- call!275498 (+ from!841 1)))))

(declare-fun d!1100606 () Bool)

(declare-fun e!2328333 () Bool)

(assert (=> d!1100606 e!2328333))

(declare-fun res!1524221 () Bool)

(assert (=> d!1100606 (=> (not res!1524221) (not e!2328333))))

(declare-fun lt!1302757 () List!40277)

(assert (=> d!1100606 (= res!1524221 (= ((_ map implies) (content!5896 lt!1302757) (content!5896 lt!1302552)) ((as const (InoxSet Token!11458)) true)))))

(assert (=> d!1100606 (= lt!1302757 e!2328336)))

(declare-fun c!652186 () Bool)

(assert (=> d!1100606 (= c!652186 ((_ is Nil!40153) lt!1302552))))

(assert (=> d!1100606 (= (drop!2105 lt!1302552 (+ from!841 1)) lt!1302757)))

(declare-fun b!3764807 () Bool)

(assert (=> b!3764807 (= e!2328334 (drop!2105 (t!304254 lt!1302552) (- (+ from!841 1) 1)))))

(declare-fun bm!275493 () Bool)

(assert (=> bm!275493 (= call!275498 (size!30226 lt!1302552))))

(declare-fun b!3764808 () Bool)

(assert (=> b!3764808 (= e!2328333 (= (size!30226 lt!1302757) e!2328335))))

(declare-fun c!652187 () Bool)

(assert (=> b!3764808 (= c!652187 (<= (+ from!841 1) 0))))

(declare-fun b!3764809 () Bool)

(assert (=> b!3764809 (= e!2328336 Nil!40153)))

(assert (= (and d!1100606 c!652186) b!3764809))

(assert (= (and d!1100606 (not c!652186)) b!3764802))

(assert (= (and b!3764802 c!652188) b!3764805))

(assert (= (and b!3764802 (not c!652188)) b!3764807))

(assert (= (and d!1100606 res!1524221) b!3764808))

(assert (= (and b!3764808 c!652187) b!3764803))

(assert (= (and b!3764808 (not c!652187)) b!3764801))

(assert (= (and b!3764801 c!652189) b!3764804))

(assert (= (and b!3764801 (not c!652189)) b!3764806))

(assert (= (or b!3764803 b!3764801 b!3764806) bm!275493))

(declare-fun m!4260745 () Bool)

(assert (=> d!1100606 m!4260745))

(assert (=> d!1100606 m!4260013))

(declare-fun m!4260747 () Bool)

(assert (=> b!3764807 m!4260747))

(assert (=> bm!275493 m!4259971))

(declare-fun m!4260749 () Bool)

(assert (=> b!3764808 m!4260749))

(assert (=> d!1100374 d!1100606))

(declare-fun d!1100608 () Bool)

(assert (=> d!1100608 (= (tail!5777 (drop!2105 lt!1302552 from!841)) (drop!2105 lt!1302552 (+ from!841 1)))))

(assert (=> d!1100608 true))

(declare-fun _$28!799 () Unit!57876)

(assert (=> d!1100608 (= (choose!22290 lt!1302552 from!841) _$28!799)))

(declare-fun bs!575968 () Bool)

(assert (= bs!575968 d!1100608))

(assert (=> bs!575968 m!4259909))

(assert (=> bs!575968 m!4259909))

(assert (=> bs!575968 m!4259965))

(assert (=> bs!575968 m!4259967))

(assert (=> d!1100374 d!1100608))

(declare-fun d!1100610 () Bool)

(declare-fun res!1524226 () Bool)

(declare-fun e!2328357 () Bool)

(assert (=> d!1100610 (=> (not res!1524226) (not e!2328357))))

(assert (=> d!1100610 (= res!1524226 (<= (size!30226 (list!14839 (xs!15513 (c!651985 v!6347)))) 512))))

(assert (=> d!1100610 (= (inv!53898 (c!651985 v!6347)) e!2328357)))

(declare-fun b!3764826 () Bool)

(declare-fun res!1524227 () Bool)

(assert (=> b!3764826 (=> (not res!1524227) (not e!2328357))))

(assert (=> b!3764826 (= res!1524227 (= (csize!24845 (c!651985 v!6347)) (size!30226 (list!14839 (xs!15513 (c!651985 v!6347))))))))

(declare-fun b!3764827 () Bool)

(assert (=> b!3764827 (= e!2328357 (and (> (csize!24845 (c!651985 v!6347)) 0) (<= (csize!24845 (c!651985 v!6347)) 512)))))

(assert (= (and d!1100610 res!1524226) b!3764826))

(assert (= (and b!3764826 res!1524227) b!3764827))

(assert (=> d!1100610 m!4260733))

(assert (=> d!1100610 m!4260733))

(declare-fun m!4260751 () Bool)

(assert (=> d!1100610 m!4260751))

(assert (=> b!3764826 m!4260733))

(assert (=> b!3764826 m!4260733))

(assert (=> b!3764826 m!4260751))

(assert (=> b!3764143 d!1100610))

(declare-fun d!1100612 () Bool)

(assert (=> d!1100612 (= (list!14831 lt!1302650) (list!14834 (c!651983 lt!1302650)))))

(declare-fun bs!575969 () Bool)

(assert (= bs!575969 d!1100612))

(declare-fun m!4260753 () Bool)

(assert (=> bs!575969 m!4260753))

(assert (=> d!1100406 d!1100612))

(declare-fun d!1100614 () Bool)

(assert (=> d!1100614 (= (dropList!1277 v!6347 (+ 1 from!841)) (drop!2105 (list!14836 (c!651985 v!6347)) (+ 1 from!841)))))

(declare-fun bs!575970 () Bool)

(assert (= bs!575970 d!1100614))

(assert (=> bs!575970 m!4260221))

(assert (=> bs!575970 m!4260221))

(declare-fun m!4260755 () Bool)

(assert (=> bs!575970 m!4260755))

(assert (=> d!1100406 d!1100614))

(declare-fun d!1100616 () Bool)

(assert (=> d!1100616 (= (list!14831 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))) (list!14834 (c!651983 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))))))))

(declare-fun bs!575971 () Bool)

(assert (= bs!575971 d!1100616))

(declare-fun m!4260757 () Bool)

(assert (=> bs!575971 m!4260757))

(assert (=> d!1100406 d!1100616))

(declare-fun lt!1302762 () List!40275)

(declare-fun d!1100618 () Bool)

(assert (=> d!1100618 (= lt!1302762 (++!9964 (list!14831 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))) (printList!1663 thiss!13650 (dropList!1277 v!6347 (+ 1 from!841)))))))

(declare-fun e!2328361 () List!40275)

(assert (=> d!1100618 (= lt!1302762 e!2328361)))

(declare-fun c!652190 () Bool)

(assert (=> d!1100618 (= c!652190 ((_ is Cons!40153) (dropList!1277 v!6347 (+ 1 from!841))))))

(assert (=> d!1100618 (= (printListTailRec!748 thiss!13650 (dropList!1277 v!6347 (+ 1 from!841)) (list!14831 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))))) lt!1302762)))

(declare-fun b!3764833 () Bool)

(assert (=> b!3764833 (= e!2328361 (printListTailRec!748 thiss!13650 (t!304254 (dropList!1277 v!6347 (+ 1 from!841))) (++!9964 (list!14831 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))) (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 (+ 1 from!841))))))))))

(declare-fun lt!1302758 () List!40275)

(assert (=> b!3764833 (= lt!1302758 (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 (+ 1 from!841))))))))

(declare-fun lt!1302759 () List!40275)

(assert (=> b!3764833 (= lt!1302759 (printList!1663 thiss!13650 (t!304254 (dropList!1277 v!6347 (+ 1 from!841)))))))

(declare-fun lt!1302761 () Unit!57876)

(assert (=> b!3764833 (= lt!1302761 (lemmaConcatAssociativity!2106 (list!14831 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))) lt!1302758 lt!1302759))))

(assert (=> b!3764833 (= (++!9964 (++!9964 (list!14831 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))) lt!1302758) lt!1302759) (++!9964 (list!14831 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))) (++!9964 lt!1302758 lt!1302759)))))

(declare-fun lt!1302760 () Unit!57876)

(assert (=> b!3764833 (= lt!1302760 lt!1302761)))

(declare-fun b!3764834 () Bool)

(assert (=> b!3764834 (= e!2328361 (list!14831 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))))))

(assert (= (and d!1100618 c!652190) b!3764833))

(assert (= (and d!1100618 (not c!652190)) b!3764834))

(assert (=> d!1100618 m!4260145))

(declare-fun m!4260771 () Bool)

(assert (=> d!1100618 m!4260771))

(assert (=> d!1100618 m!4260147))

(assert (=> d!1100618 m!4260771))

(declare-fun m!4260773 () Bool)

(assert (=> d!1100618 m!4260773))

(declare-fun m!4260779 () Bool)

(assert (=> b!3764833 m!4260779))

(declare-fun m!4260785 () Bool)

(assert (=> b!3764833 m!4260785))

(declare-fun m!4260787 () Bool)

(assert (=> b!3764833 m!4260787))

(declare-fun m!4260789 () Bool)

(assert (=> b!3764833 m!4260789))

(assert (=> b!3764833 m!4260147))

(assert (=> b!3764833 m!4260789))

(assert (=> b!3764833 m!4260779))

(assert (=> b!3764833 m!4260787))

(assert (=> b!3764833 m!4260147))

(declare-fun m!4260791 () Bool)

(assert (=> b!3764833 m!4260791))

(declare-fun m!4260793 () Bool)

(assert (=> b!3764833 m!4260793))

(assert (=> b!3764833 m!4260791))

(declare-fun m!4260801 () Bool)

(assert (=> b!3764833 m!4260801))

(assert (=> b!3764833 m!4260147))

(assert (=> b!3764833 m!4260793))

(declare-fun m!4260803 () Bool)

(assert (=> b!3764833 m!4260803))

(assert (=> b!3764833 m!4260147))

(declare-fun m!4260805 () Bool)

(assert (=> b!3764833 m!4260805))

(declare-fun m!4260807 () Bool)

(assert (=> b!3764833 m!4260807))

(assert (=> d!1100406 d!1100618))

(assert (=> d!1100406 d!1100438))

(declare-fun d!1100620 () Bool)

(declare-fun lt!1302763 () Token!11458)

(assert (=> d!1100620 (contains!8168 (tail!5777 lt!1302552) lt!1302763)))

(declare-fun e!2328370 () Token!11458)

(assert (=> d!1100620 (= lt!1302763 e!2328370)))

(declare-fun c!652191 () Bool)

(assert (=> d!1100620 (= c!652191 (= (- from!841 1) 0))))

(declare-fun e!2328368 () Bool)

(assert (=> d!1100620 e!2328368))

(declare-fun res!1524228 () Bool)

(assert (=> d!1100620 (=> (not res!1524228) (not e!2328368))))

(assert (=> d!1100620 (= res!1524228 (<= 0 (- from!841 1)))))

(assert (=> d!1100620 (= (apply!9457 (tail!5777 lt!1302552) (- from!841 1)) lt!1302763)))

(declare-fun b!3764843 () Bool)

(assert (=> b!3764843 (= e!2328368 (< (- from!841 1) (size!30226 (tail!5777 lt!1302552))))))

(declare-fun b!3764844 () Bool)

(assert (=> b!3764844 (= e!2328370 (head!8050 (tail!5777 lt!1302552)))))

(declare-fun b!3764846 () Bool)

(assert (=> b!3764846 (= e!2328370 (apply!9457 (tail!5777 (tail!5777 lt!1302552)) (- (- from!841 1) 1)))))

(assert (= (and d!1100620 res!1524228) b!3764843))

(assert (= (and d!1100620 c!652191) b!3764844))

(assert (= (and d!1100620 (not c!652191)) b!3764846))

(assert (=> d!1100620 m!4260217))

(declare-fun m!4260821 () Bool)

(assert (=> d!1100620 m!4260821))

(assert (=> b!3764843 m!4260217))

(declare-fun m!4260823 () Bool)

(assert (=> b!3764843 m!4260823))

(assert (=> b!3764844 m!4260217))

(declare-fun m!4260825 () Bool)

(assert (=> b!3764844 m!4260825))

(assert (=> b!3764846 m!4260217))

(declare-fun m!4260827 () Bool)

(assert (=> b!3764846 m!4260827))

(assert (=> b!3764846 m!4260827))

(declare-fun m!4260829 () Bool)

(assert (=> b!3764846 m!4260829))

(assert (=> b!3764348 d!1100620))

(declare-fun d!1100622 () Bool)

(assert (=> d!1100622 (= (tail!5777 lt!1302552) (t!304254 lt!1302552))))

(assert (=> b!3764348 d!1100622))

(declare-fun d!1100624 () Bool)

(declare-fun size!30230 (List!40275) Int)

(assert (=> d!1100624 (= (inv!53904 (xs!15512 (c!651983 acc!400))) (<= (size!30230 (innerList!12366 (xs!15512 (c!651983 acc!400)))) 2147483647))))

(declare-fun bs!575972 () Bool)

(assert (= bs!575972 d!1100624))

(declare-fun m!4260837 () Bool)

(assert (=> bs!575972 m!4260837))

(assert (=> b!3764369 d!1100624))

(declare-fun d!1100626 () Bool)

(assert (=> d!1100626 (= (head!8050 lt!1302552) (h!45573 lt!1302552))))

(assert (=> b!3764347 d!1100626))

(declare-fun d!1100628 () Bool)

(declare-fun c!652192 () Bool)

(assert (=> d!1100628 (= c!652192 ((_ is Node!12306) (left!31087 (c!651983 acc!400))))))

(declare-fun e!2328377 () Bool)

(assert (=> d!1100628 (= (inv!53892 (left!31087 (c!651983 acc!400))) e!2328377)))

(declare-fun b!3764857 () Bool)

(assert (=> b!3764857 (= e!2328377 (inv!53899 (left!31087 (c!651983 acc!400))))))

(declare-fun b!3764858 () Bool)

(declare-fun e!2328378 () Bool)

(assert (=> b!3764858 (= e!2328377 e!2328378)))

(declare-fun res!1524229 () Bool)

(assert (=> b!3764858 (= res!1524229 (not ((_ is Leaf!19084) (left!31087 (c!651983 acc!400)))))))

(assert (=> b!3764858 (=> res!1524229 e!2328378)))

(declare-fun b!3764859 () Bool)

(assert (=> b!3764859 (= e!2328378 (inv!53900 (left!31087 (c!651983 acc!400))))))

(assert (= (and d!1100628 c!652192) b!3764857))

(assert (= (and d!1100628 (not c!652192)) b!3764858))

(assert (= (and b!3764858 (not res!1524229)) b!3764859))

(declare-fun m!4260839 () Bool)

(assert (=> b!3764857 m!4260839))

(declare-fun m!4260841 () Bool)

(assert (=> b!3764859 m!4260841))

(assert (=> b!3764368 d!1100628))

(declare-fun d!1100630 () Bool)

(declare-fun c!652193 () Bool)

(assert (=> d!1100630 (= c!652193 ((_ is Node!12306) (right!31417 (c!651983 acc!400))))))

(declare-fun e!2328379 () Bool)

(assert (=> d!1100630 (= (inv!53892 (right!31417 (c!651983 acc!400))) e!2328379)))

(declare-fun b!3764860 () Bool)

(assert (=> b!3764860 (= e!2328379 (inv!53899 (right!31417 (c!651983 acc!400))))))

(declare-fun b!3764861 () Bool)

(declare-fun e!2328380 () Bool)

(assert (=> b!3764861 (= e!2328379 e!2328380)))

(declare-fun res!1524230 () Bool)

(assert (=> b!3764861 (= res!1524230 (not ((_ is Leaf!19084) (right!31417 (c!651983 acc!400)))))))

(assert (=> b!3764861 (=> res!1524230 e!2328380)))

(declare-fun b!3764862 () Bool)

(assert (=> b!3764862 (= e!2328380 (inv!53900 (right!31417 (c!651983 acc!400))))))

(assert (= (and d!1100630 c!652193) b!3764860))

(assert (= (and d!1100630 (not c!652193)) b!3764861))

(assert (= (and b!3764861 (not res!1524230)) b!3764862))

(declare-fun m!4260843 () Bool)

(assert (=> b!3764860 m!4260843))

(declare-fun m!4260845 () Bool)

(assert (=> b!3764862 m!4260845))

(assert (=> b!3764368 d!1100630))

(declare-fun d!1100632 () Bool)

(declare-fun c!652194 () Bool)

(assert (=> d!1100632 (= c!652194 ((_ is Nil!40153) lt!1302656))))

(declare-fun e!2328381 () (InoxSet Token!11458))

(assert (=> d!1100632 (= (content!5896 lt!1302656) e!2328381)))

(declare-fun b!3764863 () Bool)

(assert (=> b!3764863 (= e!2328381 ((as const (Array Token!11458 Bool)) false))))

(declare-fun b!3764864 () Bool)

(assert (=> b!3764864 (= e!2328381 ((_ map or) (store ((as const (Array Token!11458 Bool)) false) (h!45573 lt!1302656) true) (content!5896 (t!304254 lt!1302656))))))

(assert (= (and d!1100632 c!652194) b!3764863))

(assert (= (and d!1100632 (not c!652194)) b!3764864))

(declare-fun m!4260847 () Bool)

(assert (=> b!3764864 m!4260847))

(declare-fun m!4260849 () Bool)

(assert (=> b!3764864 m!4260849))

(assert (=> d!1100422 d!1100632))

(assert (=> d!1100422 d!1100572))

(declare-fun d!1100634 () Bool)

(declare-fun lt!1302764 () Int)

(assert (=> d!1100634 (>= lt!1302764 0)))

(declare-fun e!2328382 () Int)

(assert (=> d!1100634 (= lt!1302764 e!2328382)))

(declare-fun c!652195 () Bool)

(assert (=> d!1100634 (= c!652195 ((_ is Nil!40153) lt!1302587))))

(assert (=> d!1100634 (= (size!30226 lt!1302587) lt!1302764)))

(declare-fun b!3764865 () Bool)

(assert (=> b!3764865 (= e!2328382 0)))

(declare-fun b!3764866 () Bool)

(assert (=> b!3764866 (= e!2328382 (+ 1 (size!30226 (t!304254 lt!1302587))))))

(assert (= (and d!1100634 c!652195) b!3764865))

(assert (= (and d!1100634 (not c!652195)) b!3764866))

(declare-fun m!4260851 () Bool)

(assert (=> b!3764866 m!4260851))

(assert (=> b!3764237 d!1100634))

(declare-fun d!1100636 () Bool)

(assert (=> d!1100636 (= (head!8050 (drop!2105 lt!1302654 (+ 1 from!841))) (h!45573 (drop!2105 lt!1302654 (+ 1 from!841))))))

(assert (=> b!3764310 d!1100636))

(declare-fun d!1100638 () Bool)

(declare-fun lt!1302765 () Token!11458)

(assert (=> d!1100638 (contains!8168 lt!1302654 lt!1302765)))

(declare-fun e!2328384 () Token!11458)

(assert (=> d!1100638 (= lt!1302765 e!2328384)))

(declare-fun c!652196 () Bool)

(assert (=> d!1100638 (= c!652196 (= (+ 1 from!841) 0))))

(declare-fun e!2328383 () Bool)

(assert (=> d!1100638 e!2328383))

(declare-fun res!1524231 () Bool)

(assert (=> d!1100638 (=> (not res!1524231) (not e!2328383))))

(assert (=> d!1100638 (= res!1524231 (<= 0 (+ 1 from!841)))))

(assert (=> d!1100638 (= (apply!9457 lt!1302654 (+ 1 from!841)) lt!1302765)))

(declare-fun b!3764867 () Bool)

(assert (=> b!3764867 (= e!2328383 (< (+ 1 from!841) (size!30226 lt!1302654)))))

(declare-fun b!3764868 () Bool)

(assert (=> b!3764868 (= e!2328384 (head!8050 lt!1302654))))

(declare-fun b!3764869 () Bool)

(assert (=> b!3764869 (= e!2328384 (apply!9457 (tail!5777 lt!1302654) (- (+ 1 from!841) 1)))))

(assert (= (and d!1100638 res!1524231) b!3764867))

(assert (= (and d!1100638 c!652196) b!3764868))

(assert (= (and d!1100638 (not c!652196)) b!3764869))

(declare-fun m!4260853 () Bool)

(assert (=> d!1100638 m!4260853))

(declare-fun m!4260855 () Bool)

(assert (=> b!3764867 m!4260855))

(declare-fun m!4260857 () Bool)

(assert (=> b!3764868 m!4260857))

(declare-fun m!4260859 () Bool)

(assert (=> b!3764869 m!4260859))

(assert (=> b!3764869 m!4260859))

(declare-fun m!4260861 () Bool)

(assert (=> b!3764869 m!4260861))

(assert (=> b!3764310 d!1100638))

(declare-fun d!1100640 () Bool)

(assert (=> d!1100640 (= (tail!5777 (drop!2105 lt!1302653 (+ 1 from!841))) (t!304254 (drop!2105 lt!1302653 (+ 1 from!841))))))

(assert (=> b!3764310 d!1100640))

(declare-fun lt!1302767 () BalanceConc!24206)

(declare-fun d!1100642 () Bool)

(assert (=> d!1100642 (= (list!14831 lt!1302767) (printListTailRec!748 thiss!13650 (dropList!1277 v!6347 (+ 1 from!841 1)) (list!14831 (++!9960 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))) (charsOf!4010 (apply!9456 v!6347 (+ 1 from!841)))))))))

(declare-fun e!2328385 () BalanceConc!24206)

(assert (=> d!1100642 (= lt!1302767 e!2328385)))

(declare-fun c!652197 () Bool)

(assert (=> d!1100642 (= c!652197 (>= (+ 1 from!841 1) (size!30223 v!6347)))))

(declare-fun e!2328386 () Bool)

(assert (=> d!1100642 e!2328386))

(declare-fun res!1524232 () Bool)

(assert (=> d!1100642 (=> (not res!1524232) (not e!2328386))))

(assert (=> d!1100642 (= res!1524232 (>= (+ 1 from!841 1) 0))))

(assert (=> d!1100642 (= (printTailRec!1610 thiss!13650 v!6347 (+ 1 from!841 1) (++!9960 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))) (charsOf!4010 (apply!9456 v!6347 (+ 1 from!841))))) lt!1302767)))

(declare-fun b!3764870 () Bool)

(assert (=> b!3764870 (= e!2328386 (<= (+ 1 from!841 1) (size!30223 v!6347)))))

(declare-fun b!3764871 () Bool)

(assert (=> b!3764871 (= e!2328385 (++!9960 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))) (charsOf!4010 (apply!9456 v!6347 (+ 1 from!841)))))))

(declare-fun b!3764872 () Bool)

(assert (=> b!3764872 (= e!2328385 (printTailRec!1610 thiss!13650 v!6347 (+ 1 from!841 1 1) (++!9960 (++!9960 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))) (charsOf!4010 (apply!9456 v!6347 (+ 1 from!841)))) (charsOf!4010 (apply!9456 v!6347 (+ 1 from!841 1))))))))

(declare-fun lt!1302771 () List!40277)

(assert (=> b!3764872 (= lt!1302771 (list!14832 v!6347))))

(declare-fun lt!1302772 () Unit!57876)

(assert (=> b!3764872 (= lt!1302772 (lemmaDropApply!1239 lt!1302771 (+ 1 from!841 1)))))

(assert (=> b!3764872 (= (head!8050 (drop!2105 lt!1302771 (+ 1 from!841 1))) (apply!9457 lt!1302771 (+ 1 from!841 1)))))

(declare-fun lt!1302766 () Unit!57876)

(assert (=> b!3764872 (= lt!1302766 lt!1302772)))

(declare-fun lt!1302770 () List!40277)

(assert (=> b!3764872 (= lt!1302770 (list!14832 v!6347))))

(declare-fun lt!1302769 () Unit!57876)

(assert (=> b!3764872 (= lt!1302769 (lemmaDropTail!1123 lt!1302770 (+ 1 from!841 1)))))

(assert (=> b!3764872 (= (tail!5777 (drop!2105 lt!1302770 (+ 1 from!841 1))) (drop!2105 lt!1302770 (+ 1 from!841 1 1)))))

(declare-fun lt!1302768 () Unit!57876)

(assert (=> b!3764872 (= lt!1302768 lt!1302769)))

(assert (= (and d!1100642 res!1524232) b!3764870))

(assert (= (and d!1100642 c!652197) b!3764871))

(assert (= (and d!1100642 (not c!652197)) b!3764872))

(declare-fun m!4260863 () Bool)

(assert (=> d!1100642 m!4260863))

(declare-fun m!4260865 () Bool)

(assert (=> d!1100642 m!4260865))

(declare-fun m!4260867 () Bool)

(assert (=> d!1100642 m!4260867))

(assert (=> d!1100642 m!4259899))

(assert (=> d!1100642 m!4260153))

(assert (=> d!1100642 m!4260865))

(declare-fun m!4260869 () Bool)

(assert (=> d!1100642 m!4260869))

(assert (=> d!1100642 m!4260863))

(assert (=> b!3764870 m!4259899))

(declare-fun m!4260871 () Bool)

(assert (=> b!3764872 m!4260871))

(declare-fun m!4260873 () Bool)

(assert (=> b!3764872 m!4260873))

(declare-fun m!4260875 () Bool)

(assert (=> b!3764872 m!4260875))

(declare-fun m!4260877 () Bool)

(assert (=> b!3764872 m!4260877))

(declare-fun m!4260879 () Bool)

(assert (=> b!3764872 m!4260879))

(assert (=> b!3764872 m!4260153))

(declare-fun m!4260881 () Bool)

(assert (=> b!3764872 m!4260881))

(assert (=> b!3764872 m!4260871))

(assert (=> b!3764872 m!4260875))

(declare-fun m!4260883 () Bool)

(assert (=> b!3764872 m!4260883))

(assert (=> b!3764872 m!4260879))

(assert (=> b!3764872 m!4260881))

(assert (=> b!3764872 m!4259923))

(declare-fun m!4260885 () Bool)

(assert (=> b!3764872 m!4260885))

(declare-fun m!4260887 () Bool)

(assert (=> b!3764872 m!4260887))

(declare-fun m!4260889 () Bool)

(assert (=> b!3764872 m!4260889))

(assert (=> b!3764872 m!4260889))

(declare-fun m!4260891 () Bool)

(assert (=> b!3764872 m!4260891))

(declare-fun m!4260893 () Bool)

(assert (=> b!3764872 m!4260893))

(assert (=> b!3764310 d!1100642))

(declare-fun d!1100644 () Bool)

(declare-fun lt!1302773 () BalanceConc!24206)

(assert (=> d!1100644 (= (list!14831 lt!1302773) (originalCharacters!6760 (apply!9456 v!6347 (+ 1 from!841))))))

(assert (=> d!1100644 (= lt!1302773 (dynLambda!17348 (toChars!8379 (transformation!6160 (rule!8924 (apply!9456 v!6347 (+ 1 from!841))))) (value!196167 (apply!9456 v!6347 (+ 1 from!841)))))))

(assert (=> d!1100644 (= (charsOf!4010 (apply!9456 v!6347 (+ 1 from!841))) lt!1302773)))

(declare-fun b_lambda!110455 () Bool)

(assert (=> (not b_lambda!110455) (not d!1100644)))

(declare-fun bs!575973 () Bool)

(assert (= bs!575973 d!1100644))

(declare-fun m!4260895 () Bool)

(assert (=> bs!575973 m!4260895))

(declare-fun m!4260897 () Bool)

(assert (=> bs!575973 m!4260897))

(assert (=> b!3764310 d!1100644))

(assert (=> b!3764310 d!1100430))

(declare-fun d!1100646 () Bool)

(declare-fun lt!1302774 () Token!11458)

(assert (=> d!1100646 (= lt!1302774 (apply!9457 (list!14832 v!6347) (+ 1 from!841)))))

(assert (=> d!1100646 (= lt!1302774 (apply!9459 (c!651985 v!6347) (+ 1 from!841)))))

(declare-fun e!2328387 () Bool)

(assert (=> d!1100646 e!2328387))

(declare-fun res!1524233 () Bool)

(assert (=> d!1100646 (=> (not res!1524233) (not e!2328387))))

(assert (=> d!1100646 (= res!1524233 (<= 0 (+ 1 from!841)))))

(assert (=> d!1100646 (= (apply!9456 v!6347 (+ 1 from!841)) lt!1302774)))

(declare-fun b!3764873 () Bool)

(assert (=> b!3764873 (= e!2328387 (< (+ 1 from!841) (size!30223 v!6347)))))

(assert (= (and d!1100646 res!1524233) b!3764873))

(assert (=> d!1100646 m!4259923))

(assert (=> d!1100646 m!4259923))

(declare-fun m!4260899 () Bool)

(assert (=> d!1100646 m!4260899))

(declare-fun m!4260901 () Bool)

(assert (=> d!1100646 m!4260901))

(assert (=> b!3764873 m!4259899))

(assert (=> b!3764310 d!1100646))

(declare-fun d!1100648 () Bool)

(assert (=> d!1100648 (= (head!8050 (drop!2105 lt!1302654 (+ 1 from!841))) (apply!9457 lt!1302654 (+ 1 from!841)))))

(declare-fun lt!1302775 () Unit!57876)

(assert (=> d!1100648 (= lt!1302775 (choose!22291 lt!1302654 (+ 1 from!841)))))

(declare-fun e!2328388 () Bool)

(assert (=> d!1100648 e!2328388))

(declare-fun res!1524234 () Bool)

(assert (=> d!1100648 (=> (not res!1524234) (not e!2328388))))

(assert (=> d!1100648 (= res!1524234 (>= (+ 1 from!841) 0))))

(assert (=> d!1100648 (= (lemmaDropApply!1239 lt!1302654 (+ 1 from!841)) lt!1302775)))

(declare-fun b!3764874 () Bool)

(assert (=> b!3764874 (= e!2328388 (< (+ 1 from!841) (size!30226 lt!1302654)))))

(assert (= (and d!1100648 res!1524234) b!3764874))

(assert (=> d!1100648 m!4260157))

(assert (=> d!1100648 m!4260157))

(assert (=> d!1100648 m!4260171))

(assert (=> d!1100648 m!4260173))

(declare-fun m!4260903 () Bool)

(assert (=> d!1100648 m!4260903))

(assert (=> b!3764874 m!4260855))

(assert (=> b!3764310 d!1100648))

(declare-fun d!1100650 () Bool)

(assert (=> d!1100650 (= (tail!5777 (drop!2105 lt!1302653 (+ 1 from!841))) (drop!2105 lt!1302653 (+ 1 from!841 1)))))

(declare-fun lt!1302776 () Unit!57876)

(assert (=> d!1100650 (= lt!1302776 (choose!22290 lt!1302653 (+ 1 from!841)))))

(declare-fun e!2328389 () Bool)

(assert (=> d!1100650 e!2328389))

(declare-fun res!1524235 () Bool)

(assert (=> d!1100650 (=> (not res!1524235) (not e!2328389))))

(assert (=> d!1100650 (= res!1524235 (>= (+ 1 from!841) 0))))

(assert (=> d!1100650 (= (lemmaDropTail!1123 lt!1302653 (+ 1 from!841)) lt!1302776)))

(declare-fun b!3764875 () Bool)

(assert (=> b!3764875 (= e!2328389 (< (+ 1 from!841) (size!30226 lt!1302653)))))

(assert (= (and d!1100650 res!1524235) b!3764875))

(assert (=> d!1100650 m!4260177))

(assert (=> d!1100650 m!4260177))

(assert (=> d!1100650 m!4260179))

(assert (=> d!1100650 m!4260175))

(declare-fun m!4260905 () Bool)

(assert (=> d!1100650 m!4260905))

(declare-fun m!4260907 () Bool)

(assert (=> b!3764875 m!4260907))

(assert (=> b!3764310 d!1100650))

(declare-fun b!3764876 () Bool)

(declare-fun e!2328393 () Int)

(declare-fun e!2328390 () Int)

(assert (=> b!3764876 (= e!2328393 e!2328390)))

(declare-fun c!652201 () Bool)

(declare-fun call!275499 () Int)

(assert (=> b!3764876 (= c!652201 (>= (+ 1 from!841 1) call!275499))))

(declare-fun b!3764877 () Bool)

(declare-fun e!2328394 () List!40277)

(declare-fun e!2328392 () List!40277)

(assert (=> b!3764877 (= e!2328394 e!2328392)))

(declare-fun c!652200 () Bool)

(assert (=> b!3764877 (= c!652200 (<= (+ 1 from!841 1) 0))))

(declare-fun b!3764878 () Bool)

(assert (=> b!3764878 (= e!2328393 call!275499)))

(declare-fun b!3764879 () Bool)

(assert (=> b!3764879 (= e!2328390 0)))

(declare-fun b!3764880 () Bool)

(assert (=> b!3764880 (= e!2328392 lt!1302653)))

(declare-fun b!3764881 () Bool)

(assert (=> b!3764881 (= e!2328390 (- call!275499 (+ 1 from!841 1)))))

(declare-fun d!1100652 () Bool)

(declare-fun e!2328391 () Bool)

(assert (=> d!1100652 e!2328391))

(declare-fun res!1524236 () Bool)

(assert (=> d!1100652 (=> (not res!1524236) (not e!2328391))))

(declare-fun lt!1302777 () List!40277)

(assert (=> d!1100652 (= res!1524236 (= ((_ map implies) (content!5896 lt!1302777) (content!5896 lt!1302653)) ((as const (InoxSet Token!11458)) true)))))

(assert (=> d!1100652 (= lt!1302777 e!2328394)))

(declare-fun c!652198 () Bool)

(assert (=> d!1100652 (= c!652198 ((_ is Nil!40153) lt!1302653))))

(assert (=> d!1100652 (= (drop!2105 lt!1302653 (+ 1 from!841 1)) lt!1302777)))

(declare-fun b!3764882 () Bool)

(assert (=> b!3764882 (= e!2328392 (drop!2105 (t!304254 lt!1302653) (- (+ 1 from!841 1) 1)))))

(declare-fun bm!275494 () Bool)

(assert (=> bm!275494 (= call!275499 (size!30226 lt!1302653))))

(declare-fun b!3764883 () Bool)

(assert (=> b!3764883 (= e!2328391 (= (size!30226 lt!1302777) e!2328393))))

(declare-fun c!652199 () Bool)

(assert (=> b!3764883 (= c!652199 (<= (+ 1 from!841 1) 0))))

(declare-fun b!3764884 () Bool)

(assert (=> b!3764884 (= e!2328394 Nil!40153)))

(assert (= (and d!1100652 c!652198) b!3764884))

(assert (= (and d!1100652 (not c!652198)) b!3764877))

(assert (= (and b!3764877 c!652200) b!3764880))

(assert (= (and b!3764877 (not c!652200)) b!3764882))

(assert (= (and d!1100652 res!1524236) b!3764883))

(assert (= (and b!3764883 c!652199) b!3764878))

(assert (= (and b!3764883 (not c!652199)) b!3764876))

(assert (= (and b!3764876 c!652201) b!3764879))

(assert (= (and b!3764876 (not c!652201)) b!3764881))

(assert (= (or b!3764878 b!3764876 b!3764881) bm!275494))

(declare-fun m!4260909 () Bool)

(assert (=> d!1100652 m!4260909))

(declare-fun m!4260911 () Bool)

(assert (=> d!1100652 m!4260911))

(declare-fun m!4260913 () Bool)

(assert (=> b!3764882 m!4260913))

(assert (=> bm!275494 m!4260907))

(declare-fun m!4260915 () Bool)

(assert (=> b!3764883 m!4260915))

(assert (=> b!3764310 d!1100652))

(declare-fun b!3764887 () Bool)

(declare-fun res!1524238 () Bool)

(declare-fun e!2328395 () Bool)

(assert (=> b!3764887 (=> (not res!1524238) (not e!2328395))))

(assert (=> b!3764887 (= res!1524238 (>= (height!1758 (++!9963 (c!651983 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))) (c!651983 (charsOf!4010 (apply!9456 v!6347 (+ 1 from!841)))))) (max!0 (height!1758 (c!651983 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))))) (height!1758 (c!651983 (charsOf!4010 (apply!9456 v!6347 (+ 1 from!841))))))))))

(declare-fun b!3764886 () Bool)

(declare-fun res!1524239 () Bool)

(assert (=> b!3764886 (=> (not res!1524239) (not e!2328395))))

(assert (=> b!3764886 (= res!1524239 (<= (height!1758 (++!9963 (c!651983 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))) (c!651983 (charsOf!4010 (apply!9456 v!6347 (+ 1 from!841)))))) (+ (max!0 (height!1758 (c!651983 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))))) (height!1758 (c!651983 (charsOf!4010 (apply!9456 v!6347 (+ 1 from!841)))))) 1)))))

(declare-fun b!3764885 () Bool)

(declare-fun res!1524240 () Bool)

(assert (=> b!3764885 (=> (not res!1524240) (not e!2328395))))

(assert (=> b!3764885 (= res!1524240 (isBalanced!3541 (++!9963 (c!651983 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))) (c!651983 (charsOf!4010 (apply!9456 v!6347 (+ 1 from!841)))))))))

(declare-fun lt!1302778 () BalanceConc!24206)

(declare-fun b!3764888 () Bool)

(assert (=> b!3764888 (= e!2328395 (= (list!14831 lt!1302778) (++!9964 (list!14831 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))) (list!14831 (charsOf!4010 (apply!9456 v!6347 (+ 1 from!841)))))))))

(declare-fun d!1100654 () Bool)

(assert (=> d!1100654 e!2328395))

(declare-fun res!1524237 () Bool)

(assert (=> d!1100654 (=> (not res!1524237) (not e!2328395))))

(assert (=> d!1100654 (= res!1524237 (appendAssocInst!829 (c!651983 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))) (c!651983 (charsOf!4010 (apply!9456 v!6347 (+ 1 from!841))))))))

(assert (=> d!1100654 (= lt!1302778 (BalanceConc!24207 (++!9963 (c!651983 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))) (c!651983 (charsOf!4010 (apply!9456 v!6347 (+ 1 from!841)))))))))

(assert (=> d!1100654 (= (++!9960 (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))) (charsOf!4010 (apply!9456 v!6347 (+ 1 from!841)))) lt!1302778)))

(assert (= (and d!1100654 res!1524237) b!3764885))

(assert (= (and b!3764885 res!1524240) b!3764886))

(assert (= (and b!3764886 res!1524239) b!3764887))

(assert (= (and b!3764887 res!1524238) b!3764888))

(declare-fun m!4260917 () Bool)

(assert (=> b!3764887 m!4260917))

(assert (=> b!3764887 m!4260917))

(declare-fun m!4260919 () Bool)

(assert (=> b!3764887 m!4260919))

(declare-fun m!4260921 () Bool)

(assert (=> b!3764887 m!4260921))

(declare-fun m!4260923 () Bool)

(assert (=> b!3764887 m!4260923))

(assert (=> b!3764887 m!4260921))

(assert (=> b!3764887 m!4260923))

(declare-fun m!4260925 () Bool)

(assert (=> b!3764887 m!4260925))

(declare-fun m!4260927 () Bool)

(assert (=> d!1100654 m!4260927))

(assert (=> d!1100654 m!4260917))

(assert (=> b!3764885 m!4260917))

(assert (=> b!3764885 m!4260917))

(declare-fun m!4260929 () Bool)

(assert (=> b!3764885 m!4260929))

(assert (=> b!3764886 m!4260917))

(assert (=> b!3764886 m!4260917))

(assert (=> b!3764886 m!4260919))

(assert (=> b!3764886 m!4260921))

(assert (=> b!3764886 m!4260923))

(assert (=> b!3764886 m!4260921))

(assert (=> b!3764886 m!4260923))

(assert (=> b!3764886 m!4260925))

(declare-fun m!4260931 () Bool)

(assert (=> b!3764888 m!4260931))

(assert (=> b!3764888 m!4259905))

(assert (=> b!3764888 m!4260147))

(assert (=> b!3764888 m!4260169))

(declare-fun m!4260933 () Bool)

(assert (=> b!3764888 m!4260933))

(assert (=> b!3764888 m!4260147))

(assert (=> b!3764888 m!4260933))

(declare-fun m!4260935 () Bool)

(assert (=> b!3764888 m!4260935))

(assert (=> b!3764310 d!1100654))

(declare-fun b!3764889 () Bool)

(declare-fun e!2328399 () Int)

(declare-fun e!2328396 () Int)

(assert (=> b!3764889 (= e!2328399 e!2328396)))

(declare-fun c!652205 () Bool)

(declare-fun call!275500 () Int)

(assert (=> b!3764889 (= c!652205 (>= (+ 1 from!841) call!275500))))

(declare-fun b!3764890 () Bool)

(declare-fun e!2328400 () List!40277)

(declare-fun e!2328398 () List!40277)

(assert (=> b!3764890 (= e!2328400 e!2328398)))

(declare-fun c!652204 () Bool)

(assert (=> b!3764890 (= c!652204 (<= (+ 1 from!841) 0))))

(declare-fun b!3764891 () Bool)

(assert (=> b!3764891 (= e!2328399 call!275500)))

(declare-fun b!3764892 () Bool)

(assert (=> b!3764892 (= e!2328396 0)))

(declare-fun b!3764893 () Bool)

(assert (=> b!3764893 (= e!2328398 lt!1302653)))

(declare-fun b!3764894 () Bool)

(assert (=> b!3764894 (= e!2328396 (- call!275500 (+ 1 from!841)))))

(declare-fun d!1100656 () Bool)

(declare-fun e!2328397 () Bool)

(assert (=> d!1100656 e!2328397))

(declare-fun res!1524241 () Bool)

(assert (=> d!1100656 (=> (not res!1524241) (not e!2328397))))

(declare-fun lt!1302779 () List!40277)

(assert (=> d!1100656 (= res!1524241 (= ((_ map implies) (content!5896 lt!1302779) (content!5896 lt!1302653)) ((as const (InoxSet Token!11458)) true)))))

(assert (=> d!1100656 (= lt!1302779 e!2328400)))

(declare-fun c!652202 () Bool)

(assert (=> d!1100656 (= c!652202 ((_ is Nil!40153) lt!1302653))))

(assert (=> d!1100656 (= (drop!2105 lt!1302653 (+ 1 from!841)) lt!1302779)))

(declare-fun b!3764895 () Bool)

(assert (=> b!3764895 (= e!2328398 (drop!2105 (t!304254 lt!1302653) (- (+ 1 from!841) 1)))))

(declare-fun bm!275495 () Bool)

(assert (=> bm!275495 (= call!275500 (size!30226 lt!1302653))))

(declare-fun b!3764896 () Bool)

(assert (=> b!3764896 (= e!2328397 (= (size!30226 lt!1302779) e!2328399))))

(declare-fun c!652203 () Bool)

(assert (=> b!3764896 (= c!652203 (<= (+ 1 from!841) 0))))

(declare-fun b!3764897 () Bool)

(assert (=> b!3764897 (= e!2328400 Nil!40153)))

(assert (= (and d!1100656 c!652202) b!3764897))

(assert (= (and d!1100656 (not c!652202)) b!3764890))

(assert (= (and b!3764890 c!652204) b!3764893))

(assert (= (and b!3764890 (not c!652204)) b!3764895))

(assert (= (and d!1100656 res!1524241) b!3764896))

(assert (= (and b!3764896 c!652203) b!3764891))

(assert (= (and b!3764896 (not c!652203)) b!3764889))

(assert (= (and b!3764889 c!652205) b!3764892))

(assert (= (and b!3764889 (not c!652205)) b!3764894))

(assert (= (or b!3764891 b!3764889 b!3764894) bm!275495))

(declare-fun m!4260937 () Bool)

(assert (=> d!1100656 m!4260937))

(assert (=> d!1100656 m!4260911))

(declare-fun m!4260939 () Bool)

(assert (=> b!3764895 m!4260939))

(assert (=> bm!275495 m!4260907))

(declare-fun m!4260941 () Bool)

(assert (=> b!3764896 m!4260941))

(assert (=> b!3764310 d!1100656))

(declare-fun b!3764898 () Bool)

(declare-fun e!2328404 () Int)

(declare-fun e!2328401 () Int)

(assert (=> b!3764898 (= e!2328404 e!2328401)))

(declare-fun c!652209 () Bool)

(declare-fun call!275501 () Int)

(assert (=> b!3764898 (= c!652209 (>= (+ 1 from!841) call!275501))))

(declare-fun b!3764899 () Bool)

(declare-fun e!2328405 () List!40277)

(declare-fun e!2328403 () List!40277)

(assert (=> b!3764899 (= e!2328405 e!2328403)))

(declare-fun c!652208 () Bool)

(assert (=> b!3764899 (= c!652208 (<= (+ 1 from!841) 0))))

(declare-fun b!3764900 () Bool)

(assert (=> b!3764900 (= e!2328404 call!275501)))

(declare-fun b!3764901 () Bool)

(assert (=> b!3764901 (= e!2328401 0)))

(declare-fun b!3764902 () Bool)

(assert (=> b!3764902 (= e!2328403 lt!1302654)))

(declare-fun b!3764903 () Bool)

(assert (=> b!3764903 (= e!2328401 (- call!275501 (+ 1 from!841)))))

(declare-fun d!1100658 () Bool)

(declare-fun e!2328402 () Bool)

(assert (=> d!1100658 e!2328402))

(declare-fun res!1524242 () Bool)

(assert (=> d!1100658 (=> (not res!1524242) (not e!2328402))))

(declare-fun lt!1302780 () List!40277)

(assert (=> d!1100658 (= res!1524242 (= ((_ map implies) (content!5896 lt!1302780) (content!5896 lt!1302654)) ((as const (InoxSet Token!11458)) true)))))

(assert (=> d!1100658 (= lt!1302780 e!2328405)))

(declare-fun c!652206 () Bool)

(assert (=> d!1100658 (= c!652206 ((_ is Nil!40153) lt!1302654))))

(assert (=> d!1100658 (= (drop!2105 lt!1302654 (+ 1 from!841)) lt!1302780)))

(declare-fun b!3764904 () Bool)

(assert (=> b!3764904 (= e!2328403 (drop!2105 (t!304254 lt!1302654) (- (+ 1 from!841) 1)))))

(declare-fun bm!275496 () Bool)

(assert (=> bm!275496 (= call!275501 (size!30226 lt!1302654))))

(declare-fun b!3764905 () Bool)

(assert (=> b!3764905 (= e!2328402 (= (size!30226 lt!1302780) e!2328404))))

(declare-fun c!652207 () Bool)

(assert (=> b!3764905 (= c!652207 (<= (+ 1 from!841) 0))))

(declare-fun b!3764906 () Bool)

(assert (=> b!3764906 (= e!2328405 Nil!40153)))

(assert (= (and d!1100658 c!652206) b!3764906))

(assert (= (and d!1100658 (not c!652206)) b!3764899))

(assert (= (and b!3764899 c!652208) b!3764902))

(assert (= (and b!3764899 (not c!652208)) b!3764904))

(assert (= (and d!1100658 res!1524242) b!3764905))

(assert (= (and b!3764905 c!652207) b!3764900))

(assert (= (and b!3764905 (not c!652207)) b!3764898))

(assert (= (and b!3764898 c!652209) b!3764901))

(assert (= (and b!3764898 (not c!652209)) b!3764903))

(assert (= (or b!3764900 b!3764898 b!3764903) bm!275496))

(declare-fun m!4260943 () Bool)

(assert (=> d!1100658 m!4260943))

(declare-fun m!4260945 () Bool)

(assert (=> d!1100658 m!4260945))

(declare-fun m!4260947 () Bool)

(assert (=> b!3764904 m!4260947))

(assert (=> bm!275496 m!4260855))

(declare-fun m!4260949 () Bool)

(assert (=> b!3764905 m!4260949))

(assert (=> b!3764310 d!1100658))

(assert (=> bm!275431 d!1100574))

(declare-fun b!3764919 () Bool)

(declare-fun res!1524256 () Bool)

(declare-fun e!2328410 () Bool)

(assert (=> b!3764919 (=> (not res!1524256) (not e!2328410))))

(assert (=> b!3764919 (= res!1524256 (isBalanced!3542 (right!31418 (c!651985 v!6347))))))

(declare-fun b!3764920 () Bool)

(declare-fun isEmpty!23593 (Conc!12307) Bool)

(assert (=> b!3764920 (= e!2328410 (not (isEmpty!23593 (right!31418 (c!651985 v!6347)))))))

(declare-fun b!3764921 () Bool)

(declare-fun e!2328411 () Bool)

(assert (=> b!3764921 (= e!2328411 e!2328410)))

(declare-fun res!1524259 () Bool)

(assert (=> b!3764921 (=> (not res!1524259) (not e!2328410))))

(declare-fun height!1760 (Conc!12307) Int)

(assert (=> b!3764921 (= res!1524259 (<= (- 1) (- (height!1760 (left!31088 (c!651985 v!6347))) (height!1760 (right!31418 (c!651985 v!6347))))))))

(declare-fun b!3764922 () Bool)

(declare-fun res!1524258 () Bool)

(assert (=> b!3764922 (=> (not res!1524258) (not e!2328410))))

(assert (=> b!3764922 (= res!1524258 (not (isEmpty!23593 (left!31088 (c!651985 v!6347)))))))

(declare-fun b!3764923 () Bool)

(declare-fun res!1524260 () Bool)

(assert (=> b!3764923 (=> (not res!1524260) (not e!2328410))))

(assert (=> b!3764923 (= res!1524260 (isBalanced!3542 (left!31088 (c!651985 v!6347))))))

(declare-fun d!1100660 () Bool)

(declare-fun res!1524257 () Bool)

(assert (=> d!1100660 (=> res!1524257 e!2328411)))

(assert (=> d!1100660 (= res!1524257 (not ((_ is Node!12307) (c!651985 v!6347))))))

(assert (=> d!1100660 (= (isBalanced!3542 (c!651985 v!6347)) e!2328411)))

(declare-fun b!3764924 () Bool)

(declare-fun res!1524255 () Bool)

(assert (=> b!3764924 (=> (not res!1524255) (not e!2328410))))

(assert (=> b!3764924 (= res!1524255 (<= (- (height!1760 (left!31088 (c!651985 v!6347))) (height!1760 (right!31418 (c!651985 v!6347)))) 1))))

(assert (= (and d!1100660 (not res!1524257)) b!3764921))

(assert (= (and b!3764921 res!1524259) b!3764924))

(assert (= (and b!3764924 res!1524255) b!3764923))

(assert (= (and b!3764923 res!1524260) b!3764919))

(assert (= (and b!3764919 res!1524256) b!3764922))

(assert (= (and b!3764922 res!1524258) b!3764920))

(declare-fun m!4260951 () Bool)

(assert (=> b!3764919 m!4260951))

(declare-fun m!4260953 () Bool)

(assert (=> b!3764924 m!4260953))

(declare-fun m!4260955 () Bool)

(assert (=> b!3764924 m!4260955))

(declare-fun m!4260957 () Bool)

(assert (=> b!3764923 m!4260957))

(declare-fun m!4260959 () Bool)

(assert (=> b!3764920 m!4260959))

(declare-fun m!4260961 () Bool)

(assert (=> b!3764922 m!4260961))

(assert (=> b!3764921 m!4260953))

(assert (=> b!3764921 m!4260955))

(assert (=> d!1100436 d!1100660))

(declare-fun d!1100662 () Bool)

(declare-fun lt!1302781 () Int)

(assert (=> d!1100662 (>= lt!1302781 0)))

(declare-fun e!2328412 () Int)

(assert (=> d!1100662 (= lt!1302781 e!2328412)))

(declare-fun c!652210 () Bool)

(assert (=> d!1100662 (= c!652210 ((_ is Nil!40153) lt!1302656))))

(assert (=> d!1100662 (= (size!30226 lt!1302656) lt!1302781)))

(declare-fun b!3764925 () Bool)

(assert (=> b!3764925 (= e!2328412 0)))

(declare-fun b!3764926 () Bool)

(assert (=> b!3764926 (= e!2328412 (+ 1 (size!30226 (t!304254 lt!1302656))))))

(assert (= (and d!1100662 c!652210) b!3764925))

(assert (= (and d!1100662 (not c!652210)) b!3764926))

(declare-fun m!4260963 () Bool)

(assert (=> b!3764926 m!4260963))

(assert (=> b!3764332 d!1100662))

(assert (=> b!3764346 d!1100574))

(assert (=> bm!275433 d!1100574))

(declare-fun d!1100664 () Bool)

(declare-fun lt!1302782 () Token!11458)

(assert (=> d!1100664 (contains!8168 (list!14832 v!6347) lt!1302782)))

(declare-fun e!2328414 () Token!11458)

(assert (=> d!1100664 (= lt!1302782 e!2328414)))

(declare-fun c!652211 () Bool)

(assert (=> d!1100664 (= c!652211 (= from!841 0))))

(declare-fun e!2328413 () Bool)

(assert (=> d!1100664 e!2328413))

(declare-fun res!1524261 () Bool)

(assert (=> d!1100664 (=> (not res!1524261) (not e!2328413))))

(assert (=> d!1100664 (= res!1524261 (<= 0 from!841))))

(assert (=> d!1100664 (= (apply!9457 (list!14832 v!6347) from!841) lt!1302782)))

(declare-fun b!3764927 () Bool)

(assert (=> b!3764927 (= e!2328413 (< from!841 (size!30226 (list!14832 v!6347))))))

(declare-fun b!3764928 () Bool)

(assert (=> b!3764928 (= e!2328414 (head!8050 (list!14832 v!6347)))))

(declare-fun b!3764929 () Bool)

(assert (=> b!3764929 (= e!2328414 (apply!9457 (tail!5777 (list!14832 v!6347)) (- from!841 1)))))

(assert (= (and d!1100664 res!1524261) b!3764927))

(assert (= (and d!1100664 c!652211) b!3764928))

(assert (= (and d!1100664 (not c!652211)) b!3764929))

(assert (=> d!1100664 m!4259923))

(declare-fun m!4260965 () Bool)

(assert (=> d!1100664 m!4260965))

(assert (=> b!3764927 m!4259923))

(assert (=> b!3764927 m!4260229))

(assert (=> b!3764928 m!4259923))

(declare-fun m!4260967 () Bool)

(assert (=> b!3764928 m!4260967))

(assert (=> b!3764929 m!4259923))

(declare-fun m!4260969 () Bool)

(assert (=> b!3764929 m!4260969))

(assert (=> b!3764929 m!4260969))

(declare-fun m!4260971 () Bool)

(assert (=> b!3764929 m!4260971))

(assert (=> d!1100384 d!1100664))

(assert (=> d!1100384 d!1100430))

(declare-fun b!3764944 () Bool)

(declare-fun e!2328424 () Token!11458)

(declare-fun e!2328425 () Token!11458)

(assert (=> b!3764944 (= e!2328424 e!2328425)))

(declare-fun lt!1302787 () Bool)

(declare-fun appendIndex!370 (List!40277 List!40277 Int) Bool)

(assert (=> b!3764944 (= lt!1302787 (appendIndex!370 (list!14836 (left!31088 (c!651985 v!6347))) (list!14836 (right!31418 (c!651985 v!6347))) from!841))))

(declare-fun c!652218 () Bool)

(assert (=> b!3764944 (= c!652218 (< from!841 (size!30227 (left!31088 (c!651985 v!6347)))))))

(declare-fun b!3764945 () Bool)

(declare-fun e!2328426 () Int)

(assert (=> b!3764945 (= e!2328426 from!841)))

(declare-fun b!3764946 () Bool)

(declare-fun call!275504 () Token!11458)

(assert (=> b!3764946 (= e!2328425 call!275504)))

(declare-fun b!3764947 () Bool)

(assert (=> b!3764947 (= e!2328425 call!275504)))

(declare-fun bm!275499 () Bool)

(declare-fun c!652220 () Bool)

(assert (=> bm!275499 (= c!652220 c!652218)))

(assert (=> bm!275499 (= call!275504 (apply!9459 (ite c!652218 (left!31088 (c!651985 v!6347)) (right!31418 (c!651985 v!6347))) e!2328426))))

(declare-fun d!1100666 () Bool)

(declare-fun lt!1302788 () Token!11458)

(assert (=> d!1100666 (= lt!1302788 (apply!9457 (list!14836 (c!651985 v!6347)) from!841))))

(assert (=> d!1100666 (= lt!1302788 e!2328424)))

(declare-fun c!652219 () Bool)

(assert (=> d!1100666 (= c!652219 ((_ is Leaf!19085) (c!651985 v!6347)))))

(declare-fun e!2328423 () Bool)

(assert (=> d!1100666 e!2328423))

(declare-fun res!1524264 () Bool)

(assert (=> d!1100666 (=> (not res!1524264) (not e!2328423))))

(assert (=> d!1100666 (= res!1524264 (<= 0 from!841))))

(assert (=> d!1100666 (= (apply!9459 (c!651985 v!6347) from!841) lt!1302788)))

(declare-fun b!3764948 () Bool)

(assert (=> b!3764948 (= e!2328423 (< from!841 (size!30227 (c!651985 v!6347))))))

(declare-fun b!3764949 () Bool)

(declare-fun apply!9461 (IArray!24619 Int) Token!11458)

(assert (=> b!3764949 (= e!2328424 (apply!9461 (xs!15513 (c!651985 v!6347)) from!841))))

(declare-fun b!3764950 () Bool)

(assert (=> b!3764950 (= e!2328426 (- from!841 (size!30227 (left!31088 (c!651985 v!6347)))))))

(assert (= (and d!1100666 res!1524264) b!3764948))

(assert (= (and d!1100666 c!652219) b!3764949))

(assert (= (and d!1100666 (not c!652219)) b!3764944))

(assert (= (and b!3764944 c!652218) b!3764946))

(assert (= (and b!3764944 (not c!652218)) b!3764947))

(assert (= (or b!3764946 b!3764947) bm!275499))

(assert (= (and bm!275499 c!652220) b!3764945))

(assert (= (and bm!275499 (not c!652220)) b!3764950))

(assert (=> d!1100666 m!4260221))

(assert (=> d!1100666 m!4260221))

(declare-fun m!4260973 () Bool)

(assert (=> d!1100666 m!4260973))

(assert (=> b!3764944 m!4260727))

(assert (=> b!3764944 m!4260729))

(assert (=> b!3764944 m!4260727))

(assert (=> b!3764944 m!4260729))

(declare-fun m!4260975 () Bool)

(assert (=> b!3764944 m!4260975))

(declare-fun m!4260977 () Bool)

(assert (=> b!3764944 m!4260977))

(assert (=> b!3764948 m!4260231))

(assert (=> b!3764950 m!4260977))

(declare-fun m!4260979 () Bool)

(assert (=> bm!275499 m!4260979))

(declare-fun m!4260981 () Bool)

(assert (=> b!3764949 m!4260981))

(assert (=> d!1100384 d!1100666))

(declare-fun b!3764951 () Bool)

(declare-fun e!2328430 () Int)

(declare-fun e!2328427 () Int)

(assert (=> b!3764951 (= e!2328430 e!2328427)))

(declare-fun c!652224 () Bool)

(declare-fun call!275505 () Int)

(assert (=> b!3764951 (= c!652224 (>= (- (+ 1 from!841) 1) call!275505))))

(declare-fun b!3764952 () Bool)

(declare-fun e!2328431 () List!40277)

(declare-fun e!2328429 () List!40277)

(assert (=> b!3764952 (= e!2328431 e!2328429)))

(declare-fun c!652223 () Bool)

(assert (=> b!3764952 (= c!652223 (<= (- (+ 1 from!841) 1) 0))))

(declare-fun b!3764953 () Bool)

(assert (=> b!3764953 (= e!2328430 call!275505)))

(declare-fun b!3764954 () Bool)

(assert (=> b!3764954 (= e!2328427 0)))

(declare-fun b!3764955 () Bool)

(assert (=> b!3764955 (= e!2328429 (t!304254 lt!1302552))))

(declare-fun b!3764956 () Bool)

(assert (=> b!3764956 (= e!2328427 (- call!275505 (- (+ 1 from!841) 1)))))

(declare-fun d!1100668 () Bool)

(declare-fun e!2328428 () Bool)

(assert (=> d!1100668 e!2328428))

(declare-fun res!1524265 () Bool)

(assert (=> d!1100668 (=> (not res!1524265) (not e!2328428))))

(declare-fun lt!1302789 () List!40277)

(assert (=> d!1100668 (= res!1524265 (= ((_ map implies) (content!5896 lt!1302789) (content!5896 (t!304254 lt!1302552))) ((as const (InoxSet Token!11458)) true)))))

(assert (=> d!1100668 (= lt!1302789 e!2328431)))

(declare-fun c!652221 () Bool)

(assert (=> d!1100668 (= c!652221 ((_ is Nil!40153) (t!304254 lt!1302552)))))

(assert (=> d!1100668 (= (drop!2105 (t!304254 lt!1302552) (- (+ 1 from!841) 1)) lt!1302789)))

(declare-fun b!3764957 () Bool)

(assert (=> b!3764957 (= e!2328429 (drop!2105 (t!304254 (t!304254 lt!1302552)) (- (- (+ 1 from!841) 1) 1)))))

(declare-fun bm!275500 () Bool)

(assert (=> bm!275500 (= call!275505 (size!30226 (t!304254 lt!1302552)))))

(declare-fun b!3764958 () Bool)

(assert (=> b!3764958 (= e!2328428 (= (size!30226 lt!1302789) e!2328430))))

(declare-fun c!652222 () Bool)

(assert (=> b!3764958 (= c!652222 (<= (- (+ 1 from!841) 1) 0))))

(declare-fun b!3764959 () Bool)

(assert (=> b!3764959 (= e!2328431 Nil!40153)))

(assert (= (and d!1100668 c!652221) b!3764959))

(assert (= (and d!1100668 (not c!652221)) b!3764952))

(assert (= (and b!3764952 c!652223) b!3764955))

(assert (= (and b!3764952 (not c!652223)) b!3764957))

(assert (= (and d!1100668 res!1524265) b!3764958))

(assert (= (and b!3764958 c!652222) b!3764953))

(assert (= (and b!3764958 (not c!652222)) b!3764951))

(assert (= (and b!3764951 c!652224) b!3764954))

(assert (= (and b!3764951 (not c!652224)) b!3764956))

(assert (= (or b!3764953 b!3764951 b!3764956) bm!275500))

(declare-fun m!4260983 () Bool)

(assert (=> d!1100668 m!4260983))

(assert (=> d!1100668 m!4260621))

(declare-fun m!4260985 () Bool)

(assert (=> b!3764957 m!4260985))

(assert (=> bm!275500 m!4260629))

(declare-fun m!4260987 () Bool)

(assert (=> b!3764958 m!4260987))

(assert (=> b!3764236 d!1100668))

(assert (=> b!3764308 d!1100438))

(declare-fun d!1100670 () Bool)

(declare-fun res!1524272 () Bool)

(declare-fun e!2328434 () Bool)

(assert (=> d!1100670 (=> (not res!1524272) (not e!2328434))))

(declare-fun size!30231 (Conc!12306) Int)

(assert (=> d!1100670 (= res!1524272 (= (csize!24842 (c!651983 acc!400)) (+ (size!30231 (left!31087 (c!651983 acc!400))) (size!30231 (right!31417 (c!651983 acc!400))))))))

(assert (=> d!1100670 (= (inv!53899 (c!651983 acc!400)) e!2328434)))

(declare-fun b!3764966 () Bool)

(declare-fun res!1524273 () Bool)

(assert (=> b!3764966 (=> (not res!1524273) (not e!2328434))))

(assert (=> b!3764966 (= res!1524273 (and (not (= (left!31087 (c!651983 acc!400)) Empty!12306)) (not (= (right!31417 (c!651983 acc!400)) Empty!12306))))))

(declare-fun b!3764967 () Bool)

(declare-fun res!1524274 () Bool)

(assert (=> b!3764967 (=> (not res!1524274) (not e!2328434))))

(assert (=> b!3764967 (= res!1524274 (= (cheight!12517 (c!651983 acc!400)) (+ (max!0 (height!1758 (left!31087 (c!651983 acc!400))) (height!1758 (right!31417 (c!651983 acc!400)))) 1)))))

(declare-fun b!3764968 () Bool)

(assert (=> b!3764968 (= e!2328434 (<= 0 (cheight!12517 (c!651983 acc!400))))))

(assert (= (and d!1100670 res!1524272) b!3764966))

(assert (= (and b!3764966 res!1524273) b!3764967))

(assert (= (and b!3764967 res!1524274) b!3764968))

(declare-fun m!4260989 () Bool)

(assert (=> d!1100670 m!4260989))

(declare-fun m!4260991 () Bool)

(assert (=> d!1100670 m!4260991))

(declare-fun m!4260993 () Bool)

(assert (=> b!3764967 m!4260993))

(declare-fun m!4260995 () Bool)

(assert (=> b!3764967 m!4260995))

(assert (=> b!3764967 m!4260993))

(assert (=> b!3764967 m!4260995))

(declare-fun m!4260997 () Bool)

(assert (=> b!3764967 m!4260997))

(assert (=> b!3764159 d!1100670))

(declare-fun d!1100672 () Bool)

(assert (=> d!1100672 (= (max!0 (height!1758 (c!651983 acc!400)) (height!1758 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))) (ite (< (height!1758 (c!651983 acc!400)) (height!1758 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))) (height!1758 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))) (height!1758 (c!651983 acc!400))))))

(assert (=> b!3764269 d!1100672))

(declare-fun d!1100674 () Bool)

(assert (=> d!1100674 (= (height!1758 (c!651983 acc!400)) (ite ((_ is Empty!12306) (c!651983 acc!400)) 0 (ite ((_ is Leaf!19084) (c!651983 acc!400)) 1 (cheight!12517 (c!651983 acc!400)))))))

(assert (=> b!3764269 d!1100674))

(declare-fun d!1100676 () Bool)

(assert (=> d!1100676 (= (height!1758 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))) (ite ((_ is Empty!12306) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))) 0 (ite ((_ is Leaf!19084) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))) 1 (cheight!12517 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(assert (=> b!3764269 d!1100676))

(declare-fun d!1100678 () Bool)

(assert (=> d!1100678 (= (height!1758 (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))) (ite ((_ is Empty!12306) (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))) 0 (ite ((_ is Leaf!19084) (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))) 1 (cheight!12517 (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))))))))

(assert (=> b!3764269 d!1100678))

(declare-fun b!3765011 () Bool)

(declare-fun e!2328462 () Conc!12306)

(declare-fun call!275543 () Conc!12306)

(assert (=> b!3765011 (= e!2328462 call!275543)))

(declare-fun b!3765012 () Bool)

(declare-fun c!652246 () Bool)

(declare-fun call!275540 () Int)

(declare-fun call!275551 () Int)

(assert (=> b!3765012 (= c!652246 (>= call!275540 call!275551))))

(declare-fun e!2328463 () Conc!12306)

(declare-fun e!2328456 () Conc!12306)

(assert (=> b!3765012 (= e!2328463 e!2328456)))

(declare-fun b!3765013 () Bool)

(declare-fun e!2328460 () Conc!12306)

(declare-fun call!275550 () Conc!12306)

(assert (=> b!3765013 (= e!2328460 call!275550)))

(declare-fun bm!275533 () Bool)

(declare-fun call!275547 () Conc!12306)

(assert (=> bm!275533 (= call!275547 call!275550)))

(declare-fun c!652245 () Bool)

(declare-fun bm!275534 () Bool)

(assert (=> bm!275534 (= call!275540 (height!1758 (ite c!652245 (left!31087 (c!651983 acc!400)) (right!31417 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(declare-fun b!3765014 () Bool)

(declare-fun e!2328464 () Conc!12306)

(declare-fun e!2328461 () Conc!12306)

(assert (=> b!3765014 (= e!2328464 e!2328461)))

(declare-fun c!652244 () Bool)

(assert (=> b!3765014 (= c!652244 (= (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))) Empty!12306))))

(declare-fun b!3765015 () Bool)

(assert (=> b!3765015 (= e!2328461 (c!651983 acc!400))))

(declare-fun d!1100680 () Bool)

(declare-fun e!2328458 () Bool)

(assert (=> d!1100680 e!2328458))

(declare-fun res!1524287 () Bool)

(assert (=> d!1100680 (=> (not res!1524287) (not e!2328458))))

(assert (=> d!1100680 (= res!1524287 (appendAssocInst!829 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))

(declare-fun lt!1302801 () Conc!12306)

(assert (=> d!1100680 (= lt!1302801 e!2328464)))

(declare-fun c!652248 () Bool)

(assert (=> d!1100680 (= c!652248 (= (c!651983 acc!400) Empty!12306))))

(declare-fun e!2328455 () Bool)

(assert (=> d!1100680 e!2328455))

(declare-fun res!1524288 () Bool)

(assert (=> d!1100680 (=> (not res!1524288) (not e!2328455))))

(assert (=> d!1100680 (= res!1524288 (isBalanced!3541 (c!651983 acc!400)))))

(assert (=> d!1100680 (= (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))) lt!1302801)))

(declare-fun b!3765016 () Bool)

(declare-fun c!652242 () Bool)

(declare-fun call!275553 () Int)

(assert (=> b!3765016 (= c!652242 (>= call!275540 call!275553))))

(declare-fun e!2328457 () Conc!12306)

(assert (=> b!3765016 (= e!2328463 e!2328457)))

(declare-fun b!3765017 () Bool)

(declare-fun e!2328459 () Conc!12306)

(declare-fun call!275546 () Conc!12306)

(assert (=> b!3765017 (= e!2328459 call!275546)))

(declare-fun b!3765018 () Bool)

(declare-fun res!1524285 () Bool)

(assert (=> b!3765018 (=> (not res!1524285) (not e!2328458))))

(assert (=> b!3765018 (= res!1524285 (<= (height!1758 lt!1302801) (+ (max!0 (height!1758 (c!651983 acc!400)) (height!1758 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))) 1)))))

(declare-fun bm!275535 () Bool)

(declare-fun call!275552 () Conc!12306)

(declare-fun call!275542 () Conc!12306)

(assert (=> bm!275535 (= call!275552 call!275542)))

(declare-fun b!3765019 () Bool)

(assert (=> b!3765019 (= e!2328456 e!2328459)))

(declare-fun lt!1302799 () Conc!12306)

(declare-fun call!275544 () Conc!12306)

(assert (=> b!3765019 (= lt!1302799 call!275544)))

(declare-fun c!652243 () Bool)

(declare-fun call!275539 () Int)

(assert (=> b!3765019 (= c!652243 (= call!275539 (- call!275553 3)))))

(declare-fun b!3765020 () Bool)

(declare-fun call!275538 () Conc!12306)

(assert (=> b!3765020 (= e!2328457 call!275538)))

(declare-fun bm!275536 () Bool)

(declare-fun call!275545 () Conc!12306)

(declare-fun call!275548 () Conc!12306)

(assert (=> bm!275536 (= call!275545 call!275548)))

(declare-fun call!275549 () Conc!12306)

(declare-fun c!652247 () Bool)

(declare-fun call!275541 () Conc!12306)

(declare-fun c!652241 () Bool)

(declare-fun lt!1302800 () Conc!12306)

(declare-fun bm!275537 () Bool)

(declare-fun <>!329 (Conc!12306 Conc!12306) Conc!12306)

(assert (=> bm!275537 (= call!275550 (<>!329 (ite c!652247 (c!651983 acc!400) (ite c!652245 (ite (or c!652242 c!652241) (left!31087 (c!651983 acc!400)) call!275541) (ite c!652243 call!275549 lt!1302799))) (ite c!652247 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))) (ite c!652245 (ite c!652242 call!275552 (ite c!652241 call!275541 lt!1302800)) (ite c!652243 (right!31417 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))) call!275549)))))))

(declare-fun b!3765021 () Bool)

(assert (=> b!3765021 (= e!2328460 e!2328463)))

(declare-fun lt!1302798 () Int)

(assert (=> b!3765021 (= c!652245 (< lt!1302798 (- 1)))))

(declare-fun bm!275538 () Bool)

(assert (=> bm!275538 (= call!275544 call!275542)))

(declare-fun bm!275539 () Bool)

(assert (=> bm!275539 (= call!275539 (height!1758 (ite c!652245 lt!1302800 lt!1302799)))))

(declare-fun bm!275540 () Bool)

(assert (=> bm!275540 (= call!275548 (<>!329 (ite c!652245 (ite c!652241 (left!31087 (right!31417 (c!651983 acc!400))) (left!31087 (c!651983 acc!400))) (ite c!652246 call!275544 (ite c!652243 lt!1302799 (right!31417 (left!31087 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))) (ite c!652245 (ite c!652241 lt!1302800 (left!31087 (right!31417 (c!651983 acc!400)))) (ite c!652246 (right!31417 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))) (ite c!652243 (right!31417 (left!31087 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))) (right!31417 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))))

(declare-fun b!3765022 () Bool)

(assert (=> b!3765022 (= e!2328462 call!275543)))

(declare-fun b!3765023 () Bool)

(declare-fun res!1524289 () Bool)

(assert (=> b!3765023 (=> (not res!1524289) (not e!2328458))))

(assert (=> b!3765023 (= res!1524289 (isBalanced!3541 lt!1302801))))

(declare-fun b!3765024 () Bool)

(assert (=> b!3765024 (= e!2328458 (= (list!14834 lt!1302801) (++!9964 (list!14834 (c!651983 acc!400)) (list!14834 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(declare-fun bm!275541 () Bool)

(assert (=> bm!275541 (= call!275538 call!275547)))

(declare-fun bm!275542 () Bool)

(assert (=> bm!275542 (= call!275551 (height!1758 (ite c!652245 (c!651983 acc!400) (left!31087 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(declare-fun b!3765025 () Bool)

(assert (=> b!3765025 (= c!652247 (and (<= (- 1) lt!1302798) (<= lt!1302798 1)))))

(assert (=> b!3765025 (= lt!1302798 (- (height!1758 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))) (height!1758 (c!651983 acc!400))))))

(assert (=> b!3765025 (= e!2328461 e!2328460)))

(declare-fun b!3765026 () Bool)

(assert (=> b!3765026 (= e!2328455 (isBalanced!3541 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))

(declare-fun b!3765027 () Bool)

(assert (=> b!3765027 (= e!2328464 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))))

(declare-fun bm!275543 () Bool)

(assert (=> bm!275543 (= call!275553 (height!1758 (ite c!652245 (right!31417 (c!651983 acc!400)) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))))))

(declare-fun b!3765028 () Bool)

(assert (=> b!3765028 (= e!2328459 call!275546)))

(declare-fun b!3765029 () Bool)

(assert (=> b!3765029 (= e!2328457 e!2328462)))

(assert (=> b!3765029 (= lt!1302800 call!275552)))

(assert (=> b!3765029 (= c!652241 (= call!275539 (- call!275551 3)))))

(declare-fun bm!275544 () Bool)

(assert (=> bm!275544 (= call!275541 call!275548)))

(declare-fun bm!275545 () Bool)

(assert (=> bm!275545 (= call!275549 call!275545)))

(declare-fun b!3765030 () Bool)

(declare-fun res!1524286 () Bool)

(assert (=> b!3765030 (=> (not res!1524286) (not e!2328458))))

(assert (=> b!3765030 (= res!1524286 (>= (height!1758 lt!1302801) (max!0 (height!1758 (c!651983 acc!400)) (height!1758 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(declare-fun bm!275546 () Bool)

(assert (=> bm!275546 (= call!275546 call!275547)))

(declare-fun bm!275547 () Bool)

(assert (=> bm!275547 (= call!275543 call!275538)))

(declare-fun b!3765031 () Bool)

(assert (=> b!3765031 (= e!2328456 call!275545)))

(declare-fun bm!275548 () Bool)

(assert (=> bm!275548 (= call!275542 (++!9963 (ite c!652245 (ite c!652242 (right!31417 (c!651983 acc!400)) (right!31417 (right!31417 (c!651983 acc!400)))) (c!651983 acc!400)) (ite c!652245 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))) (ite c!652246 (left!31087 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))) (left!31087 (left!31087 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))))

(assert (= (and d!1100680 res!1524288) b!3765026))

(assert (= (and d!1100680 c!652248) b!3765027))

(assert (= (and d!1100680 (not c!652248)) b!3765014))

(assert (= (and b!3765014 c!652244) b!3765015))

(assert (= (and b!3765014 (not c!652244)) b!3765025))

(assert (= (and b!3765025 c!652247) b!3765013))

(assert (= (and b!3765025 (not c!652247)) b!3765021))

(assert (= (and b!3765021 c!652245) b!3765016))

(assert (= (and b!3765021 (not c!652245)) b!3765012))

(assert (= (and b!3765016 c!652242) b!3765020))

(assert (= (and b!3765016 (not c!652242)) b!3765029))

(assert (= (and b!3765029 c!652241) b!3765011))

(assert (= (and b!3765029 (not c!652241)) b!3765022))

(assert (= (or b!3765011 b!3765022) bm!275544))

(assert (= (or b!3765011 b!3765022) bm!275547))

(assert (= (or b!3765020 b!3765029) bm!275535))

(assert (= (or b!3765020 bm!275547) bm!275541))

(assert (= (and b!3765012 c!652246) b!3765031))

(assert (= (and b!3765012 (not c!652246)) b!3765019))

(assert (= (and b!3765019 c!652243) b!3765028))

(assert (= (and b!3765019 (not c!652243)) b!3765017))

(assert (= (or b!3765028 b!3765017) bm!275545))

(assert (= (or b!3765028 b!3765017) bm!275546))

(assert (= (or b!3765031 b!3765019) bm!275538))

(assert (= (or b!3765031 bm!275545) bm!275536))

(assert (= (or b!3765029 b!3765012) bm!275542))

(assert (= (or bm!275541 bm!275546) bm!275533))

(assert (= (or bm!275535 bm!275538) bm!275548))

(assert (= (or b!3765016 b!3765019) bm!275543))

(assert (= (or b!3765016 b!3765012) bm!275534))

(assert (= (or b!3765029 b!3765019) bm!275539))

(assert (= (or bm!275544 bm!275536) bm!275540))

(assert (= (or b!3765013 bm!275533) bm!275537))

(assert (= (and d!1100680 res!1524287) b!3765023))

(assert (= (and b!3765023 res!1524289) b!3765018))

(assert (= (and b!3765018 res!1524285) b!3765030))

(assert (= (and b!3765030 res!1524286) b!3765024))

(declare-fun m!4260999 () Bool)

(assert (=> bm!275537 m!4260999))

(assert (=> d!1100680 m!4260061))

(assert (=> d!1100680 m!4260225))

(declare-fun m!4261001 () Bool)

(assert (=> b!3765030 m!4261001))

(assert (=> b!3765030 m!4260055))

(assert (=> b!3765030 m!4260057))

(assert (=> b!3765030 m!4260055))

(assert (=> b!3765030 m!4260057))

(assert (=> b!3765030 m!4260059))

(declare-fun m!4261003 () Bool)

(assert (=> bm!275543 m!4261003))

(declare-fun m!4261005 () Bool)

(assert (=> bm!275548 m!4261005))

(declare-fun m!4261007 () Bool)

(assert (=> bm!275534 m!4261007))

(declare-fun m!4261009 () Bool)

(assert (=> b!3765023 m!4261009))

(declare-fun m!4261011 () Bool)

(assert (=> bm!275542 m!4261011))

(declare-fun m!4261013 () Bool)

(assert (=> b!3765024 m!4261013))

(assert (=> b!3765024 m!4259961))

(declare-fun m!4261015 () Bool)

(assert (=> b!3765024 m!4261015))

(assert (=> b!3765024 m!4259961))

(assert (=> b!3765024 m!4261015))

(declare-fun m!4261017 () Bool)

(assert (=> b!3765024 m!4261017))

(assert (=> b!3765025 m!4260057))

(assert (=> b!3765025 m!4260055))

(declare-fun m!4261019 () Bool)

(assert (=> bm!275539 m!4261019))

(declare-fun m!4261021 () Bool)

(assert (=> bm!275540 m!4261021))

(declare-fun m!4261023 () Bool)

(assert (=> b!3765026 m!4261023))

(assert (=> b!3765018 m!4261001))

(assert (=> b!3765018 m!4260055))

(assert (=> b!3765018 m!4260057))

(assert (=> b!3765018 m!4260055))

(assert (=> b!3765018 m!4260057))

(assert (=> b!3765018 m!4260059))

(assert (=> b!3764269 d!1100680))

(declare-fun d!1100682 () Bool)

(declare-fun c!652249 () Bool)

(assert (=> d!1100682 (= c!652249 ((_ is Node!12307) (left!31088 (c!651985 v!6347))))))

(declare-fun e!2328465 () Bool)

(assert (=> d!1100682 (= (inv!53891 (left!31088 (c!651985 v!6347))) e!2328465)))

(declare-fun b!3765032 () Bool)

(assert (=> b!3765032 (= e!2328465 (inv!53897 (left!31088 (c!651985 v!6347))))))

(declare-fun b!3765033 () Bool)

(declare-fun e!2328466 () Bool)

(assert (=> b!3765033 (= e!2328465 e!2328466)))

(declare-fun res!1524290 () Bool)

(assert (=> b!3765033 (= res!1524290 (not ((_ is Leaf!19085) (left!31088 (c!651985 v!6347)))))))

(assert (=> b!3765033 (=> res!1524290 e!2328466)))

(declare-fun b!3765034 () Bool)

(assert (=> b!3765034 (= e!2328466 (inv!53898 (left!31088 (c!651985 v!6347))))))

(assert (= (and d!1100682 c!652249) b!3765032))

(assert (= (and d!1100682 (not c!652249)) b!3765033))

(assert (= (and b!3765033 (not res!1524290)) b!3765034))

(declare-fun m!4261025 () Bool)

(assert (=> b!3765032 m!4261025))

(declare-fun m!4261027 () Bool)

(assert (=> b!3765034 m!4261027))

(assert (=> b!3764357 d!1100682))

(declare-fun d!1100684 () Bool)

(declare-fun c!652250 () Bool)

(assert (=> d!1100684 (= c!652250 ((_ is Node!12307) (right!31418 (c!651985 v!6347))))))

(declare-fun e!2328467 () Bool)

(assert (=> d!1100684 (= (inv!53891 (right!31418 (c!651985 v!6347))) e!2328467)))

(declare-fun b!3765035 () Bool)

(assert (=> b!3765035 (= e!2328467 (inv!53897 (right!31418 (c!651985 v!6347))))))

(declare-fun b!3765036 () Bool)

(declare-fun e!2328468 () Bool)

(assert (=> b!3765036 (= e!2328467 e!2328468)))

(declare-fun res!1524291 () Bool)

(assert (=> b!3765036 (= res!1524291 (not ((_ is Leaf!19085) (right!31418 (c!651985 v!6347)))))))

(assert (=> b!3765036 (=> res!1524291 e!2328468)))

(declare-fun b!3765037 () Bool)

(assert (=> b!3765037 (= e!2328468 (inv!53898 (right!31418 (c!651985 v!6347))))))

(assert (= (and d!1100684 c!652250) b!3765035))

(assert (= (and d!1100684 (not c!652250)) b!3765036))

(assert (= (and b!3765036 (not res!1524291)) b!3765037))

(declare-fun m!4261029 () Bool)

(assert (=> b!3765035 m!4261029))

(declare-fun m!4261031 () Bool)

(assert (=> b!3765037 m!4261031))

(assert (=> b!3764357 d!1100684))

(declare-fun d!1100686 () Bool)

(declare-fun lt!1302802 () Int)

(assert (=> d!1100686 (>= lt!1302802 0)))

(declare-fun e!2328469 () Int)

(assert (=> d!1100686 (= lt!1302802 e!2328469)))

(declare-fun c!652251 () Bool)

(assert (=> d!1100686 (= c!652251 ((_ is Nil!40153) (list!14832 v!6347)))))

(assert (=> d!1100686 (= (size!30226 (list!14832 v!6347)) lt!1302802)))

(declare-fun b!3765038 () Bool)

(assert (=> b!3765038 (= e!2328469 0)))

(declare-fun b!3765039 () Bool)

(assert (=> b!3765039 (= e!2328469 (+ 1 (size!30226 (t!304254 (list!14832 v!6347)))))))

(assert (= (and d!1100686 c!652251) b!3765038))

(assert (= (and d!1100686 (not c!652251)) b!3765039))

(declare-fun m!4261033 () Bool)

(assert (=> b!3765039 m!4261033))

(assert (=> d!1100438 d!1100686))

(assert (=> d!1100438 d!1100430))

(declare-fun d!1100688 () Bool)

(declare-fun lt!1302805 () Int)

(assert (=> d!1100688 (= lt!1302805 (size!30226 (list!14836 (c!651985 v!6347))))))

(assert (=> d!1100688 (= lt!1302805 (ite ((_ is Empty!12307) (c!651985 v!6347)) 0 (ite ((_ is Leaf!19085) (c!651985 v!6347)) (csize!24845 (c!651985 v!6347)) (csize!24844 (c!651985 v!6347)))))))

(assert (=> d!1100688 (= (size!30227 (c!651985 v!6347)) lt!1302805)))

(declare-fun bs!575974 () Bool)

(assert (= bs!575974 d!1100688))

(assert (=> bs!575974 m!4260221))

(assert (=> bs!575974 m!4260221))

(declare-fun m!4261035 () Bool)

(assert (=> bs!575974 m!4261035))

(assert (=> d!1100438 d!1100688))

(declare-fun d!1100690 () Bool)

(assert (=> d!1100690 (= (list!14831 lt!1302566) (list!14834 (c!651983 lt!1302566)))))

(declare-fun bs!575975 () Bool)

(assert (= bs!575975 d!1100690))

(declare-fun m!4261037 () Bool)

(assert (=> bs!575975 m!4261037))

(assert (=> d!1100378 d!1100690))

(declare-fun e!2328475 () Bool)

(declare-fun b!3765052 () Bool)

(declare-fun isEmpty!23594 (Conc!12306) Bool)

(assert (=> b!3765052 (= e!2328475 (not (isEmpty!23594 (right!31417 (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))))))))

(declare-fun b!3765053 () Bool)

(declare-fun res!1524306 () Bool)

(assert (=> b!3765053 (=> (not res!1524306) (not e!2328475))))

(assert (=> b!3765053 (= res!1524306 (<= (- (height!1758 (left!31087 (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))) (height!1758 (right!31417 (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))))) 1))))

(declare-fun b!3765055 () Bool)

(declare-fun res!1524307 () Bool)

(assert (=> b!3765055 (=> (not res!1524307) (not e!2328475))))

(assert (=> b!3765055 (= res!1524307 (not (isEmpty!23594 (left!31087 (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))))))))

(declare-fun b!3765056 () Bool)

(declare-fun res!1524305 () Bool)

(assert (=> b!3765056 (=> (not res!1524305) (not e!2328475))))

(assert (=> b!3765056 (= res!1524305 (isBalanced!3541 (right!31417 (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(declare-fun b!3765057 () Bool)

(declare-fun e!2328474 () Bool)

(assert (=> b!3765057 (= e!2328474 e!2328475)))

(declare-fun res!1524304 () Bool)

(assert (=> b!3765057 (=> (not res!1524304) (not e!2328475))))

(assert (=> b!3765057 (= res!1524304 (<= (- 1) (- (height!1758 (left!31087 (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))) (height!1758 (right!31417 (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))))

(declare-fun b!3765054 () Bool)

(declare-fun res!1524309 () Bool)

(assert (=> b!3765054 (=> (not res!1524309) (not e!2328475))))

(assert (=> b!3765054 (= res!1524309 (isBalanced!3541 (left!31087 (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(declare-fun d!1100692 () Bool)

(declare-fun res!1524308 () Bool)

(assert (=> d!1100692 (=> res!1524308 e!2328474)))

(assert (=> d!1100692 (= res!1524308 (not ((_ is Node!12306) (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(assert (=> d!1100692 (= (isBalanced!3541 (++!9963 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))) e!2328474)))

(assert (= (and d!1100692 (not res!1524308)) b!3765057))

(assert (= (and b!3765057 res!1524304) b!3765053))

(assert (= (and b!3765053 res!1524306) b!3765054))

(assert (= (and b!3765054 res!1524309) b!3765056))

(assert (= (and b!3765056 res!1524305) b!3765055))

(assert (= (and b!3765055 res!1524307) b!3765052))

(declare-fun m!4261039 () Bool)

(assert (=> b!3765052 m!4261039))

(declare-fun m!4261041 () Bool)

(assert (=> b!3765056 m!4261041))

(declare-fun m!4261043 () Bool)

(assert (=> b!3765057 m!4261043))

(declare-fun m!4261045 () Bool)

(assert (=> b!3765057 m!4261045))

(declare-fun m!4261047 () Bool)

(assert (=> b!3765054 m!4261047))

(assert (=> b!3765053 m!4261043))

(assert (=> b!3765053 m!4261045))

(declare-fun m!4261049 () Bool)

(assert (=> b!3765055 m!4261049))

(assert (=> b!3764268 d!1100692))

(assert (=> b!3764268 d!1100680))

(declare-fun d!1100694 () Bool)

(declare-fun c!652254 () Bool)

(assert (=> d!1100694 (= c!652254 ((_ is Cons!40153) (t!304254 (dropList!1277 v!6347 from!841))))))

(declare-fun e!2328478 () List!40275)

(assert (=> d!1100694 (= (printList!1663 thiss!13650 (t!304254 (dropList!1277 v!6347 from!841))) e!2328478)))

(declare-fun b!3765062 () Bool)

(assert (=> b!3765062 (= e!2328478 (++!9964 (list!14831 (charsOf!4010 (h!45573 (t!304254 (dropList!1277 v!6347 from!841))))) (printList!1663 thiss!13650 (t!304254 (t!304254 (dropList!1277 v!6347 from!841))))))))

(declare-fun b!3765063 () Bool)

(assert (=> b!3765063 (= e!2328478 Nil!40151)))

(assert (= (and d!1100694 c!652254) b!3765062))

(assert (= (and d!1100694 (not c!652254)) b!3765063))

(declare-fun m!4261051 () Bool)

(assert (=> b!3765062 m!4261051))

(assert (=> b!3765062 m!4261051))

(declare-fun m!4261053 () Bool)

(assert (=> b!3765062 m!4261053))

(declare-fun m!4261055 () Bool)

(assert (=> b!3765062 m!4261055))

(assert (=> b!3765062 m!4261053))

(assert (=> b!3765062 m!4261055))

(declare-fun m!4261057 () Bool)

(assert (=> b!3765062 m!4261057))

(assert (=> b!3764338 d!1100694))

(declare-fun b!3765073 () Bool)

(declare-fun e!2328483 () List!40275)

(assert (=> b!3765073 (= e!2328483 (Cons!40151 (h!45571 (list!14831 acc!400)) (++!9964 (t!304252 (list!14831 acc!400)) lt!1302667)))))

(declare-fun b!3765074 () Bool)

(declare-fun res!1524315 () Bool)

(declare-fun e!2328484 () Bool)

(assert (=> b!3765074 (=> (not res!1524315) (not e!2328484))))

(declare-fun lt!1302808 () List!40275)

(assert (=> b!3765074 (= res!1524315 (= (size!30230 lt!1302808) (+ (size!30230 (list!14831 acc!400)) (size!30230 lt!1302667))))))

(declare-fun b!3765075 () Bool)

(assert (=> b!3765075 (= e!2328484 (or (not (= lt!1302667 Nil!40151)) (= lt!1302808 (list!14831 acc!400))))))

(declare-fun b!3765072 () Bool)

(assert (=> b!3765072 (= e!2328483 lt!1302667)))

(declare-fun d!1100696 () Bool)

(assert (=> d!1100696 e!2328484))

(declare-fun res!1524314 () Bool)

(assert (=> d!1100696 (=> (not res!1524314) (not e!2328484))))

(declare-fun content!5898 (List!40275) (InoxSet C!22316))

(assert (=> d!1100696 (= res!1524314 (= (content!5898 lt!1302808) ((_ map or) (content!5898 (list!14831 acc!400)) (content!5898 lt!1302667))))))

(assert (=> d!1100696 (= lt!1302808 e!2328483)))

(declare-fun c!652257 () Bool)

(assert (=> d!1100696 (= c!652257 ((_ is Nil!40151) (list!14831 acc!400)))))

(assert (=> d!1100696 (= (++!9964 (list!14831 acc!400) lt!1302667) lt!1302808)))

(assert (= (and d!1100696 c!652257) b!3765072))

(assert (= (and d!1100696 (not c!652257)) b!3765073))

(assert (= (and d!1100696 res!1524314) b!3765074))

(assert (= (and b!3765074 res!1524315) b!3765075))

(declare-fun m!4261059 () Bool)

(assert (=> b!3765073 m!4261059))

(declare-fun m!4261061 () Bool)

(assert (=> b!3765074 m!4261061))

(assert (=> b!3765074 m!4259917))

(declare-fun m!4261063 () Bool)

(assert (=> b!3765074 m!4261063))

(declare-fun m!4261065 () Bool)

(assert (=> b!3765074 m!4261065))

(declare-fun m!4261067 () Bool)

(assert (=> d!1100696 m!4261067))

(assert (=> d!1100696 m!4259917))

(declare-fun m!4261069 () Bool)

(assert (=> d!1100696 m!4261069))

(declare-fun m!4261071 () Bool)

(assert (=> d!1100696 m!4261071))

(assert (=> b!3764338 d!1100696))

(declare-fun e!2328485 () List!40275)

(declare-fun b!3765077 () Bool)

(assert (=> b!3765077 (= e!2328485 (Cons!40151 (h!45571 (list!14831 acc!400)) (++!9964 (t!304252 (list!14831 acc!400)) (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841)))))))))

(declare-fun b!3765078 () Bool)

(declare-fun res!1524317 () Bool)

(declare-fun e!2328486 () Bool)

(assert (=> b!3765078 (=> (not res!1524317) (not e!2328486))))

(declare-fun lt!1302809 () List!40275)

(assert (=> b!3765078 (= res!1524317 (= (size!30230 lt!1302809) (+ (size!30230 (list!14831 acc!400)) (size!30230 (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841))))))))))

(declare-fun b!3765079 () Bool)

(assert (=> b!3765079 (= e!2328486 (or (not (= (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841)))) Nil!40151)) (= lt!1302809 (list!14831 acc!400))))))

(declare-fun b!3765076 () Bool)

(assert (=> b!3765076 (= e!2328485 (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841)))))))

(declare-fun d!1100698 () Bool)

(assert (=> d!1100698 e!2328486))

(declare-fun res!1524316 () Bool)

(assert (=> d!1100698 (=> (not res!1524316) (not e!2328486))))

(assert (=> d!1100698 (= res!1524316 (= (content!5898 lt!1302809) ((_ map or) (content!5898 (list!14831 acc!400)) (content!5898 (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841))))))))))

(assert (=> d!1100698 (= lt!1302809 e!2328485)))

(declare-fun c!652258 () Bool)

(assert (=> d!1100698 (= c!652258 ((_ is Nil!40151) (list!14831 acc!400)))))

(assert (=> d!1100698 (= (++!9964 (list!14831 acc!400) (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841))))) lt!1302809)))

(assert (= (and d!1100698 c!652258) b!3765076))

(assert (= (and d!1100698 (not c!652258)) b!3765077))

(assert (= (and d!1100698 res!1524316) b!3765078))

(assert (= (and b!3765078 res!1524317) b!3765079))

(assert (=> b!3765077 m!4260199))

(declare-fun m!4261073 () Bool)

(assert (=> b!3765077 m!4261073))

(declare-fun m!4261075 () Bool)

(assert (=> b!3765078 m!4261075))

(assert (=> b!3765078 m!4259917))

(assert (=> b!3765078 m!4261063))

(assert (=> b!3765078 m!4260199))

(declare-fun m!4261077 () Bool)

(assert (=> b!3765078 m!4261077))

(declare-fun m!4261079 () Bool)

(assert (=> d!1100698 m!4261079))

(assert (=> d!1100698 m!4259917))

(assert (=> d!1100698 m!4261069))

(assert (=> d!1100698 m!4260199))

(declare-fun m!4261081 () Bool)

(assert (=> d!1100698 m!4261081))

(assert (=> b!3764338 d!1100698))

(declare-fun b!3765081 () Bool)

(declare-fun e!2328487 () List!40275)

(assert (=> b!3765081 (= e!2328487 (Cons!40151 (h!45571 lt!1302667) (++!9964 (t!304252 lt!1302667) lt!1302668)))))

(declare-fun b!3765082 () Bool)

(declare-fun res!1524319 () Bool)

(declare-fun e!2328488 () Bool)

(assert (=> b!3765082 (=> (not res!1524319) (not e!2328488))))

(declare-fun lt!1302810 () List!40275)

(assert (=> b!3765082 (= res!1524319 (= (size!30230 lt!1302810) (+ (size!30230 lt!1302667) (size!30230 lt!1302668))))))

(declare-fun b!3765083 () Bool)

(assert (=> b!3765083 (= e!2328488 (or (not (= lt!1302668 Nil!40151)) (= lt!1302810 lt!1302667)))))

(declare-fun b!3765080 () Bool)

(assert (=> b!3765080 (= e!2328487 lt!1302668)))

(declare-fun d!1100700 () Bool)

(assert (=> d!1100700 e!2328488))

(declare-fun res!1524318 () Bool)

(assert (=> d!1100700 (=> (not res!1524318) (not e!2328488))))

(assert (=> d!1100700 (= res!1524318 (= (content!5898 lt!1302810) ((_ map or) (content!5898 lt!1302667) (content!5898 lt!1302668))))))

(assert (=> d!1100700 (= lt!1302810 e!2328487)))

(declare-fun c!652259 () Bool)

(assert (=> d!1100700 (= c!652259 ((_ is Nil!40151) lt!1302667))))

(assert (=> d!1100700 (= (++!9964 lt!1302667 lt!1302668) lt!1302810)))

(assert (= (and d!1100700 c!652259) b!3765080))

(assert (= (and d!1100700 (not c!652259)) b!3765081))

(assert (= (and d!1100700 res!1524318) b!3765082))

(assert (= (and b!3765082 res!1524319) b!3765083))

(declare-fun m!4261083 () Bool)

(assert (=> b!3765081 m!4261083))

(declare-fun m!4261085 () Bool)

(assert (=> b!3765082 m!4261085))

(assert (=> b!3765082 m!4261065))

(declare-fun m!4261087 () Bool)

(assert (=> b!3765082 m!4261087))

(declare-fun m!4261089 () Bool)

(assert (=> d!1100700 m!4261089))

(assert (=> d!1100700 m!4261071))

(declare-fun m!4261091 () Bool)

(assert (=> d!1100700 m!4261091))

(assert (=> b!3764338 d!1100700))

(declare-fun d!1100702 () Bool)

(declare-fun lt!1302811 () BalanceConc!24206)

(assert (=> d!1100702 (= (list!14831 lt!1302811) (originalCharacters!6760 (h!45573 (dropList!1277 v!6347 from!841))))))

(assert (=> d!1100702 (= lt!1302811 (dynLambda!17348 (toChars!8379 (transformation!6160 (rule!8924 (h!45573 (dropList!1277 v!6347 from!841))))) (value!196167 (h!45573 (dropList!1277 v!6347 from!841)))))))

(assert (=> d!1100702 (= (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841))) lt!1302811)))

(declare-fun b_lambda!110457 () Bool)

(assert (=> (not b_lambda!110457) (not d!1100702)))

(declare-fun bs!575976 () Bool)

(assert (= bs!575976 d!1100702))

(declare-fun m!4261093 () Bool)

(assert (=> bs!575976 m!4261093))

(declare-fun m!4261095 () Bool)

(assert (=> bs!575976 m!4261095))

(assert (=> b!3764338 d!1100702))

(declare-fun e!2328489 () List!40275)

(declare-fun b!3765085 () Bool)

(assert (=> b!3765085 (= e!2328489 (Cons!40151 (h!45571 (++!9964 (list!14831 acc!400) lt!1302667)) (++!9964 (t!304252 (++!9964 (list!14831 acc!400) lt!1302667)) lt!1302668)))))

(declare-fun b!3765086 () Bool)

(declare-fun res!1524321 () Bool)

(declare-fun e!2328490 () Bool)

(assert (=> b!3765086 (=> (not res!1524321) (not e!2328490))))

(declare-fun lt!1302812 () List!40275)

(assert (=> b!3765086 (= res!1524321 (= (size!30230 lt!1302812) (+ (size!30230 (++!9964 (list!14831 acc!400) lt!1302667)) (size!30230 lt!1302668))))))

(declare-fun b!3765087 () Bool)

(assert (=> b!3765087 (= e!2328490 (or (not (= lt!1302668 Nil!40151)) (= lt!1302812 (++!9964 (list!14831 acc!400) lt!1302667))))))

(declare-fun b!3765084 () Bool)

(assert (=> b!3765084 (= e!2328489 lt!1302668)))

(declare-fun d!1100704 () Bool)

(assert (=> d!1100704 e!2328490))

(declare-fun res!1524320 () Bool)

(assert (=> d!1100704 (=> (not res!1524320) (not e!2328490))))

(assert (=> d!1100704 (= res!1524320 (= (content!5898 lt!1302812) ((_ map or) (content!5898 (++!9964 (list!14831 acc!400) lt!1302667)) (content!5898 lt!1302668))))))

(assert (=> d!1100704 (= lt!1302812 e!2328489)))

(declare-fun c!652260 () Bool)

(assert (=> d!1100704 (= c!652260 ((_ is Nil!40151) (++!9964 (list!14831 acc!400) lt!1302667)))))

(assert (=> d!1100704 (= (++!9964 (++!9964 (list!14831 acc!400) lt!1302667) lt!1302668) lt!1302812)))

(assert (= (and d!1100704 c!652260) b!3765084))

(assert (= (and d!1100704 (not c!652260)) b!3765085))

(assert (= (and d!1100704 res!1524320) b!3765086))

(assert (= (and b!3765086 res!1524321) b!3765087))

(declare-fun m!4261097 () Bool)

(assert (=> b!3765085 m!4261097))

(declare-fun m!4261099 () Bool)

(assert (=> b!3765086 m!4261099))

(assert (=> b!3765086 m!4260201))

(declare-fun m!4261101 () Bool)

(assert (=> b!3765086 m!4261101))

(assert (=> b!3765086 m!4261087))

(declare-fun m!4261103 () Bool)

(assert (=> d!1100704 m!4261103))

(assert (=> d!1100704 m!4260201))

(declare-fun m!4261105 () Bool)

(assert (=> d!1100704 m!4261105))

(assert (=> d!1100704 m!4261091))

(assert (=> b!3764338 d!1100704))

(declare-fun lt!1302817 () List!40275)

(declare-fun d!1100706 () Bool)

(assert (=> d!1100706 (= lt!1302817 (++!9964 (++!9964 (list!14831 acc!400) (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841))))) (printList!1663 thiss!13650 (t!304254 (dropList!1277 v!6347 from!841)))))))

(declare-fun e!2328491 () List!40275)

(assert (=> d!1100706 (= lt!1302817 e!2328491)))

(declare-fun c!652261 () Bool)

(assert (=> d!1100706 (= c!652261 ((_ is Cons!40153) (t!304254 (dropList!1277 v!6347 from!841))))))

(assert (=> d!1100706 (= (printListTailRec!748 thiss!13650 (t!304254 (dropList!1277 v!6347 from!841)) (++!9964 (list!14831 acc!400) (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841)))))) lt!1302817)))

(declare-fun b!3765088 () Bool)

(assert (=> b!3765088 (= e!2328491 (printListTailRec!748 thiss!13650 (t!304254 (t!304254 (dropList!1277 v!6347 from!841))) (++!9964 (++!9964 (list!14831 acc!400) (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841))))) (list!14831 (charsOf!4010 (h!45573 (t!304254 (dropList!1277 v!6347 from!841))))))))))

(declare-fun lt!1302813 () List!40275)

(assert (=> b!3765088 (= lt!1302813 (list!14831 (charsOf!4010 (h!45573 (t!304254 (dropList!1277 v!6347 from!841))))))))

(declare-fun lt!1302814 () List!40275)

(assert (=> b!3765088 (= lt!1302814 (printList!1663 thiss!13650 (t!304254 (t!304254 (dropList!1277 v!6347 from!841)))))))

(declare-fun lt!1302816 () Unit!57876)

(assert (=> b!3765088 (= lt!1302816 (lemmaConcatAssociativity!2106 (++!9964 (list!14831 acc!400) (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841))))) lt!1302813 lt!1302814))))

(assert (=> b!3765088 (= (++!9964 (++!9964 (++!9964 (list!14831 acc!400) (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841))))) lt!1302813) lt!1302814) (++!9964 (++!9964 (list!14831 acc!400) (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841))))) (++!9964 lt!1302813 lt!1302814)))))

(declare-fun lt!1302815 () Unit!57876)

(assert (=> b!3765088 (= lt!1302815 lt!1302816)))

(declare-fun b!3765089 () Bool)

(assert (=> b!3765089 (= e!2328491 (++!9964 (list!14831 acc!400) (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841))))))))

(assert (= (and d!1100706 c!652261) b!3765088))

(assert (= (and d!1100706 (not c!652261)) b!3765089))

(assert (=> d!1100706 m!4260211))

(assert (=> d!1100706 m!4260193))

(assert (=> d!1100706 m!4260211))

(declare-fun m!4261107 () Bool)

(assert (=> d!1100706 m!4261107))

(declare-fun m!4261109 () Bool)

(assert (=> b!3765088 m!4261109))

(declare-fun m!4261111 () Bool)

(assert (=> b!3765088 m!4261111))

(assert (=> b!3765088 m!4261051))

(assert (=> b!3765088 m!4261053))

(assert (=> b!3765088 m!4260193))

(assert (=> b!3765088 m!4261053))

(assert (=> b!3765088 m!4261109))

(assert (=> b!3765088 m!4261051))

(assert (=> b!3765088 m!4260193))

(declare-fun m!4261113 () Bool)

(assert (=> b!3765088 m!4261113))

(declare-fun m!4261115 () Bool)

(assert (=> b!3765088 m!4261115))

(assert (=> b!3765088 m!4261113))

(declare-fun m!4261117 () Bool)

(assert (=> b!3765088 m!4261117))

(assert (=> b!3765088 m!4260193))

(assert (=> b!3765088 m!4261115))

(declare-fun m!4261119 () Bool)

(assert (=> b!3765088 m!4261119))

(assert (=> b!3765088 m!4260193))

(declare-fun m!4261121 () Bool)

(assert (=> b!3765088 m!4261121))

(assert (=> b!3765088 m!4261055))

(assert (=> b!3764338 d!1100706))

(declare-fun d!1100708 () Bool)

(assert (=> d!1100708 (= (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841)))) (list!14834 (c!651983 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841))))))))

(declare-fun bs!575977 () Bool)

(assert (= bs!575977 d!1100708))

(declare-fun m!4261123 () Bool)

(assert (=> bs!575977 m!4261123))

(assert (=> b!3764338 d!1100708))

(declare-fun b!3765091 () Bool)

(declare-fun e!2328492 () List!40275)

(assert (=> b!3765091 (= e!2328492 (Cons!40151 (h!45571 (list!14831 acc!400)) (++!9964 (t!304252 (list!14831 acc!400)) (++!9964 lt!1302667 lt!1302668))))))

(declare-fun b!3765092 () Bool)

(declare-fun res!1524323 () Bool)

(declare-fun e!2328493 () Bool)

(assert (=> b!3765092 (=> (not res!1524323) (not e!2328493))))

(declare-fun lt!1302818 () List!40275)

(assert (=> b!3765092 (= res!1524323 (= (size!30230 lt!1302818) (+ (size!30230 (list!14831 acc!400)) (size!30230 (++!9964 lt!1302667 lt!1302668)))))))

(declare-fun b!3765093 () Bool)

(assert (=> b!3765093 (= e!2328493 (or (not (= (++!9964 lt!1302667 lt!1302668) Nil!40151)) (= lt!1302818 (list!14831 acc!400))))))

(declare-fun b!3765090 () Bool)

(assert (=> b!3765090 (= e!2328492 (++!9964 lt!1302667 lt!1302668))))

(declare-fun d!1100710 () Bool)

(assert (=> d!1100710 e!2328493))

(declare-fun res!1524322 () Bool)

(assert (=> d!1100710 (=> (not res!1524322) (not e!2328493))))

(assert (=> d!1100710 (= res!1524322 (= (content!5898 lt!1302818) ((_ map or) (content!5898 (list!14831 acc!400)) (content!5898 (++!9964 lt!1302667 lt!1302668)))))))

(assert (=> d!1100710 (= lt!1302818 e!2328492)))

(declare-fun c!652262 () Bool)

(assert (=> d!1100710 (= c!652262 ((_ is Nil!40151) (list!14831 acc!400)))))

(assert (=> d!1100710 (= (++!9964 (list!14831 acc!400) (++!9964 lt!1302667 lt!1302668)) lt!1302818)))

(assert (= (and d!1100710 c!652262) b!3765090))

(assert (= (and d!1100710 (not c!652262)) b!3765091))

(assert (= (and d!1100710 res!1524322) b!3765092))

(assert (= (and b!3765092 res!1524323) b!3765093))

(assert (=> b!3765091 m!4260203))

(declare-fun m!4261125 () Bool)

(assert (=> b!3765091 m!4261125))

(declare-fun m!4261127 () Bool)

(assert (=> b!3765092 m!4261127))

(assert (=> b!3765092 m!4259917))

(assert (=> b!3765092 m!4261063))

(assert (=> b!3765092 m!4260203))

(declare-fun m!4261129 () Bool)

(assert (=> b!3765092 m!4261129))

(declare-fun m!4261131 () Bool)

(assert (=> d!1100710 m!4261131))

(assert (=> d!1100710 m!4259917))

(assert (=> d!1100710 m!4261069))

(assert (=> d!1100710 m!4260203))

(declare-fun m!4261133 () Bool)

(assert (=> d!1100710 m!4261133))

(assert (=> b!3764338 d!1100710))

(declare-fun d!1100712 () Bool)

(assert (=> d!1100712 (= (++!9964 (++!9964 (list!14831 acc!400) lt!1302667) lt!1302668) (++!9964 (list!14831 acc!400) (++!9964 lt!1302667 lt!1302668)))))

(declare-fun lt!1302821 () Unit!57876)

(declare-fun choose!22293 (List!40275 List!40275 List!40275) Unit!57876)

(assert (=> d!1100712 (= lt!1302821 (choose!22293 (list!14831 acc!400) lt!1302667 lt!1302668))))

(assert (=> d!1100712 (= (lemmaConcatAssociativity!2106 (list!14831 acc!400) lt!1302667 lt!1302668) lt!1302821)))

(declare-fun bs!575978 () Bool)

(assert (= bs!575978 d!1100712))

(assert (=> bs!575978 m!4259917))

(assert (=> bs!575978 m!4260203))

(assert (=> bs!575978 m!4260207))

(assert (=> bs!575978 m!4260203))

(assert (=> bs!575978 m!4259917))

(assert (=> bs!575978 m!4260201))

(assert (=> bs!575978 m!4260201))

(assert (=> bs!575978 m!4260205))

(assert (=> bs!575978 m!4259917))

(declare-fun m!4261135 () Bool)

(assert (=> bs!575978 m!4261135))

(assert (=> b!3764338 d!1100712))

(declare-fun d!1100714 () Bool)

(assert (=> d!1100714 (= (head!8050 (drop!2105 lt!1302552 from!841)) (h!45573 (drop!2105 lt!1302552 from!841)))))

(assert (=> d!1100380 d!1100714))

(assert (=> d!1100380 d!1100422))

(assert (=> d!1100380 d!1100426))

(declare-fun d!1100716 () Bool)

(assert (=> d!1100716 (= (head!8050 (drop!2105 lt!1302552 from!841)) (apply!9457 lt!1302552 from!841))))

(assert (=> d!1100716 true))

(declare-fun _$27!1046 () Unit!57876)

(assert (=> d!1100716 (= (choose!22291 lt!1302552 from!841) _$27!1046)))

(declare-fun bs!575979 () Bool)

(assert (= bs!575979 d!1100716))

(assert (=> bs!575979 m!4259909))

(assert (=> bs!575979 m!4259909))

(assert (=> bs!575979 m!4259987))

(assert (=> bs!575979 m!4259901))

(assert (=> d!1100380 d!1100716))

(declare-fun b!3765094 () Bool)

(declare-fun e!2328497 () Int)

(declare-fun e!2328494 () Int)

(assert (=> b!3765094 (= e!2328497 e!2328494)))

(declare-fun c!652266 () Bool)

(declare-fun call!275554 () Int)

(assert (=> b!3765094 (= c!652266 (>= from!841 call!275554))))

(declare-fun b!3765095 () Bool)

(declare-fun e!2328498 () List!40277)

(declare-fun e!2328496 () List!40277)

(assert (=> b!3765095 (= e!2328498 e!2328496)))

(declare-fun c!652265 () Bool)

(assert (=> b!3765095 (= c!652265 (<= from!841 0))))

(declare-fun b!3765096 () Bool)

(assert (=> b!3765096 (= e!2328497 call!275554)))

(declare-fun b!3765097 () Bool)

(assert (=> b!3765097 (= e!2328494 0)))

(declare-fun b!3765098 () Bool)

(assert (=> b!3765098 (= e!2328496 (list!14836 (c!651985 v!6347)))))

(declare-fun b!3765099 () Bool)

(assert (=> b!3765099 (= e!2328494 (- call!275554 from!841))))

(declare-fun d!1100718 () Bool)

(declare-fun e!2328495 () Bool)

(assert (=> d!1100718 e!2328495))

(declare-fun res!1524324 () Bool)

(assert (=> d!1100718 (=> (not res!1524324) (not e!2328495))))

(declare-fun lt!1302822 () List!40277)

(assert (=> d!1100718 (= res!1524324 (= ((_ map implies) (content!5896 lt!1302822) (content!5896 (list!14836 (c!651985 v!6347)))) ((as const (InoxSet Token!11458)) true)))))

(assert (=> d!1100718 (= lt!1302822 e!2328498)))

(declare-fun c!652263 () Bool)

(assert (=> d!1100718 (= c!652263 ((_ is Nil!40153) (list!14836 (c!651985 v!6347))))))

(assert (=> d!1100718 (= (drop!2105 (list!14836 (c!651985 v!6347)) from!841) lt!1302822)))

(declare-fun b!3765100 () Bool)

(assert (=> b!3765100 (= e!2328496 (drop!2105 (t!304254 (list!14836 (c!651985 v!6347))) (- from!841 1)))))

(declare-fun bm!275549 () Bool)

(assert (=> bm!275549 (= call!275554 (size!30226 (list!14836 (c!651985 v!6347))))))

(declare-fun b!3765101 () Bool)

(assert (=> b!3765101 (= e!2328495 (= (size!30226 lt!1302822) e!2328497))))

(declare-fun c!652264 () Bool)

(assert (=> b!3765101 (= c!652264 (<= from!841 0))))

(declare-fun b!3765102 () Bool)

(assert (=> b!3765102 (= e!2328498 Nil!40153)))

(assert (= (and d!1100718 c!652263) b!3765102))

(assert (= (and d!1100718 (not c!652263)) b!3765095))

(assert (= (and b!3765095 c!652265) b!3765098))

(assert (= (and b!3765095 (not c!652265)) b!3765100))

(assert (= (and d!1100718 res!1524324) b!3765101))

(assert (= (and b!3765101 c!652264) b!3765096))

(assert (= (and b!3765101 (not c!652264)) b!3765094))

(assert (= (and b!3765094 c!652266) b!3765097))

(assert (= (and b!3765094 (not c!652266)) b!3765099))

(assert (= (or b!3765096 b!3765094 b!3765099) bm!275549))

(declare-fun m!4261137 () Bool)

(assert (=> d!1100718 m!4261137))

(assert (=> d!1100718 m!4260221))

(declare-fun m!4261139 () Bool)

(assert (=> d!1100718 m!4261139))

(declare-fun m!4261141 () Bool)

(assert (=> b!3765100 m!4261141))

(assert (=> bm!275549 m!4260221))

(assert (=> bm!275549 m!4261035))

(declare-fun m!4261143 () Bool)

(assert (=> b!3765101 m!4261143))

(assert (=> d!1100432 d!1100718))

(assert (=> d!1100432 d!1100580))

(declare-fun b!3765121 () Bool)

(declare-fun e!2328521 () Bool)

(declare-fun e!2328517 () Bool)

(assert (=> b!3765121 (= e!2328521 e!2328517)))

(declare-fun res!1524346 () Bool)

(assert (=> b!3765121 (=> (not res!1524346) (not e!2328517))))

(declare-fun appendAssoc!254 (List!40275 List!40275 List!40275) Bool)

(assert (=> b!3765121 (= res!1524346 (appendAssoc!254 (list!14834 (left!31087 (c!651983 acc!400))) (list!14834 (right!31417 (c!651983 acc!400))) (list!14834 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))))))

(declare-fun b!3765122 () Bool)

(declare-fun e!2328522 () Bool)

(assert (=> b!3765122 (= e!2328517 e!2328522)))

(declare-fun res!1524348 () Bool)

(assert (=> b!3765122 (=> res!1524348 e!2328522)))

(assert (=> b!3765122 (= res!1524348 (not ((_ is Node!12306) (right!31417 (c!651983 acc!400)))))))

(declare-fun b!3765123 () Bool)

(declare-fun e!2328525 () Bool)

(declare-fun e!2328524 () Bool)

(assert (=> b!3765123 (= e!2328525 e!2328524)))

(declare-fun res!1524351 () Bool)

(assert (=> b!3765123 (=> res!1524351 e!2328524)))

(assert (=> b!3765123 (= res!1524351 (not ((_ is Node!12306) (left!31087 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(declare-fun b!3765124 () Bool)

(declare-fun e!2328518 () Bool)

(assert (=> b!3765124 (= e!2328518 (appendAssoc!254 (++!9964 (list!14834 (c!651983 acc!400)) (list!14834 (left!31087 (left!31087 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))))) (list!14834 (right!31417 (left!31087 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))) (list!14834 (right!31417 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(declare-fun b!3765126 () Bool)

(declare-fun e!2328523 () Bool)

(declare-fun e!2328520 () Bool)

(assert (=> b!3765126 (= e!2328523 e!2328520)))

(declare-fun res!1524345 () Bool)

(assert (=> b!3765126 (=> res!1524345 e!2328520)))

(assert (=> b!3765126 (= res!1524345 (not ((_ is Node!12306) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))))))

(declare-fun b!3765127 () Bool)

(assert (=> b!3765127 (= e!2328524 e!2328518)))

(declare-fun res!1524343 () Bool)

(assert (=> b!3765127 (=> (not res!1524343) (not e!2328518))))

(assert (=> b!3765127 (= res!1524343 (appendAssoc!254 (list!14834 (c!651983 acc!400)) (list!14834 (left!31087 (left!31087 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))) (list!14834 (right!31417 (left!31087 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))))))))

(declare-fun b!3765128 () Bool)

(assert (=> b!3765128 (= e!2328520 e!2328525)))

(declare-fun res!1524349 () Bool)

(assert (=> b!3765128 (=> (not res!1524349) (not e!2328525))))

(assert (=> b!3765128 (= res!1524349 (appendAssoc!254 (list!14834 (c!651983 acc!400)) (list!14834 (left!31087 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))) (list!14834 (right!31417 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(declare-fun b!3765129 () Bool)

(declare-fun e!2328519 () Bool)

(assert (=> b!3765129 (= e!2328522 e!2328519)))

(declare-fun res!1524347 () Bool)

(assert (=> b!3765129 (=> (not res!1524347) (not e!2328519))))

(assert (=> b!3765129 (= res!1524347 (appendAssoc!254 (list!14834 (left!31087 (right!31417 (c!651983 acc!400)))) (list!14834 (right!31417 (right!31417 (c!651983 acc!400)))) (list!14834 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841))))))))

(declare-fun b!3765125 () Bool)

(assert (=> b!3765125 (= e!2328519 (appendAssoc!254 (list!14834 (left!31087 (c!651983 acc!400))) (list!14834 (left!31087 (right!31417 (c!651983 acc!400)))) (++!9964 (list!14834 (right!31417 (right!31417 (c!651983 acc!400)))) (list!14834 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(declare-fun d!1100720 () Bool)

(assert (=> d!1100720 e!2328523))

(declare-fun res!1524344 () Bool)

(assert (=> d!1100720 (=> (not res!1524344) (not e!2328523))))

(assert (=> d!1100720 (= res!1524344 e!2328521)))

(declare-fun res!1524350 () Bool)

(assert (=> d!1100720 (=> res!1524350 e!2328521)))

(assert (=> d!1100720 (= res!1524350 (not ((_ is Node!12306) (c!651983 acc!400))))))

(assert (=> d!1100720 (= (appendAssocInst!829 (c!651983 acc!400) (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))) true)))

(assert (= (and d!1100720 (not res!1524350)) b!3765121))

(assert (= (and b!3765121 res!1524346) b!3765122))

(assert (= (and b!3765122 (not res!1524348)) b!3765129))

(assert (= (and b!3765129 res!1524347) b!3765125))

(assert (= (and d!1100720 res!1524344) b!3765126))

(assert (= (and b!3765126 (not res!1524345)) b!3765128))

(assert (= (and b!3765128 res!1524349) b!3765123))

(assert (= (and b!3765123 (not res!1524351)) b!3765127))

(assert (= (and b!3765127 res!1524343) b!3765124))

(assert (=> b!3765121 m!4260735))

(assert (=> b!3765121 m!4260737))

(assert (=> b!3765121 m!4261015))

(assert (=> b!3765121 m!4260735))

(assert (=> b!3765121 m!4260737))

(assert (=> b!3765121 m!4261015))

(declare-fun m!4261145 () Bool)

(assert (=> b!3765121 m!4261145))

(declare-fun m!4261147 () Bool)

(assert (=> b!3765129 m!4261147))

(declare-fun m!4261149 () Bool)

(assert (=> b!3765129 m!4261149))

(assert (=> b!3765129 m!4261015))

(assert (=> b!3765129 m!4261147))

(assert (=> b!3765129 m!4261149))

(assert (=> b!3765129 m!4261015))

(declare-fun m!4261151 () Bool)

(assert (=> b!3765129 m!4261151))

(assert (=> b!3765125 m!4260735))

(assert (=> b!3765125 m!4261147))

(declare-fun m!4261153 () Bool)

(assert (=> b!3765125 m!4261153))

(declare-fun m!4261155 () Bool)

(assert (=> b!3765125 m!4261155))

(assert (=> b!3765125 m!4261147))

(assert (=> b!3765125 m!4260735))

(assert (=> b!3765125 m!4261149))

(assert (=> b!3765125 m!4261015))

(assert (=> b!3765125 m!4261149))

(assert (=> b!3765125 m!4261015))

(assert (=> b!3765125 m!4261153))

(assert (=> b!3765124 m!4259961))

(declare-fun m!4261157 () Bool)

(assert (=> b!3765124 m!4261157))

(declare-fun m!4261159 () Bool)

(assert (=> b!3765124 m!4261159))

(assert (=> b!3765124 m!4259961))

(declare-fun m!4261161 () Bool)

(assert (=> b!3765124 m!4261161))

(declare-fun m!4261163 () Bool)

(assert (=> b!3765124 m!4261163))

(assert (=> b!3765124 m!4261163))

(assert (=> b!3765124 m!4261157))

(assert (=> b!3765124 m!4261159))

(declare-fun m!4261165 () Bool)

(assert (=> b!3765124 m!4261165))

(assert (=> b!3765124 m!4261161))

(assert (=> b!3765127 m!4259961))

(assert (=> b!3765127 m!4261161))

(assert (=> b!3765127 m!4261157))

(assert (=> b!3765127 m!4259961))

(assert (=> b!3765127 m!4261161))

(assert (=> b!3765127 m!4261157))

(declare-fun m!4261167 () Bool)

(assert (=> b!3765127 m!4261167))

(assert (=> b!3765128 m!4259961))

(declare-fun m!4261169 () Bool)

(assert (=> b!3765128 m!4261169))

(assert (=> b!3765128 m!4261159))

(assert (=> b!3765128 m!4259961))

(assert (=> b!3765128 m!4261169))

(assert (=> b!3765128 m!4261159))

(declare-fun m!4261171 () Bool)

(assert (=> b!3765128 m!4261171))

(assert (=> d!1100396 d!1100720))

(assert (=> d!1100396 d!1100680))

(assert (=> b!3764197 d!1100574))

(declare-fun b!3765130 () Bool)

(declare-fun e!2328527 () Bool)

(assert (=> b!3765130 (= e!2328527 (not (isEmpty!23594 (right!31417 (c!651983 acc!400)))))))

(declare-fun b!3765131 () Bool)

(declare-fun res!1524354 () Bool)

(assert (=> b!3765131 (=> (not res!1524354) (not e!2328527))))

(assert (=> b!3765131 (= res!1524354 (<= (- (height!1758 (left!31087 (c!651983 acc!400))) (height!1758 (right!31417 (c!651983 acc!400)))) 1))))

(declare-fun b!3765133 () Bool)

(declare-fun res!1524355 () Bool)

(assert (=> b!3765133 (=> (not res!1524355) (not e!2328527))))

(assert (=> b!3765133 (= res!1524355 (not (isEmpty!23594 (left!31087 (c!651983 acc!400)))))))

(declare-fun b!3765134 () Bool)

(declare-fun res!1524353 () Bool)

(assert (=> b!3765134 (=> (not res!1524353) (not e!2328527))))

(assert (=> b!3765134 (= res!1524353 (isBalanced!3541 (right!31417 (c!651983 acc!400))))))

(declare-fun b!3765135 () Bool)

(declare-fun e!2328526 () Bool)

(assert (=> b!3765135 (= e!2328526 e!2328527)))

(declare-fun res!1524352 () Bool)

(assert (=> b!3765135 (=> (not res!1524352) (not e!2328527))))

(assert (=> b!3765135 (= res!1524352 (<= (- 1) (- (height!1758 (left!31087 (c!651983 acc!400))) (height!1758 (right!31417 (c!651983 acc!400))))))))

(declare-fun b!3765132 () Bool)

(declare-fun res!1524357 () Bool)

(assert (=> b!3765132 (=> (not res!1524357) (not e!2328527))))

(assert (=> b!3765132 (= res!1524357 (isBalanced!3541 (left!31087 (c!651983 acc!400))))))

(declare-fun d!1100722 () Bool)

(declare-fun res!1524356 () Bool)

(assert (=> d!1100722 (=> res!1524356 e!2328526)))

(assert (=> d!1100722 (= res!1524356 (not ((_ is Node!12306) (c!651983 acc!400))))))

(assert (=> d!1100722 (= (isBalanced!3541 (c!651983 acc!400)) e!2328526)))

(assert (= (and d!1100722 (not res!1524356)) b!3765135))

(assert (= (and b!3765135 res!1524352) b!3765131))

(assert (= (and b!3765131 res!1524354) b!3765132))

(assert (= (and b!3765132 res!1524357) b!3765134))

(assert (= (and b!3765134 res!1524353) b!3765133))

(assert (= (and b!3765133 res!1524355) b!3765130))

(declare-fun m!4261173 () Bool)

(assert (=> b!3765130 m!4261173))

(declare-fun m!4261175 () Bool)

(assert (=> b!3765134 m!4261175))

(assert (=> b!3765135 m!4260993))

(assert (=> b!3765135 m!4260995))

(declare-fun m!4261177 () Bool)

(assert (=> b!3765132 m!4261177))

(assert (=> b!3765131 m!4260993))

(assert (=> b!3765131 m!4260995))

(declare-fun m!4261179 () Bool)

(assert (=> b!3765133 m!4261179))

(assert (=> d!1100434 d!1100722))

(declare-fun d!1100724 () Bool)

(declare-fun res!1524364 () Bool)

(declare-fun e!2328530 () Bool)

(assert (=> d!1100724 (=> (not res!1524364) (not e!2328530))))

(assert (=> d!1100724 (= res!1524364 (= (csize!24844 (c!651985 v!6347)) (+ (size!30227 (left!31088 (c!651985 v!6347))) (size!30227 (right!31418 (c!651985 v!6347))))))))

(assert (=> d!1100724 (= (inv!53897 (c!651985 v!6347)) e!2328530)))

(declare-fun b!3765142 () Bool)

(declare-fun res!1524365 () Bool)

(assert (=> b!3765142 (=> (not res!1524365) (not e!2328530))))

(assert (=> b!3765142 (= res!1524365 (and (not (= (left!31088 (c!651985 v!6347)) Empty!12307)) (not (= (right!31418 (c!651985 v!6347)) Empty!12307))))))

(declare-fun b!3765143 () Bool)

(declare-fun res!1524366 () Bool)

(assert (=> b!3765143 (=> (not res!1524366) (not e!2328530))))

(assert (=> b!3765143 (= res!1524366 (= (cheight!12518 (c!651985 v!6347)) (+ (max!0 (height!1760 (left!31088 (c!651985 v!6347))) (height!1760 (right!31418 (c!651985 v!6347)))) 1)))))

(declare-fun b!3765144 () Bool)

(assert (=> b!3765144 (= e!2328530 (<= 0 (cheight!12518 (c!651985 v!6347))))))

(assert (= (and d!1100724 res!1524364) b!3765142))

(assert (= (and b!3765142 res!1524365) b!3765143))

(assert (= (and b!3765143 res!1524366) b!3765144))

(assert (=> d!1100724 m!4260977))

(declare-fun m!4261181 () Bool)

(assert (=> d!1100724 m!4261181))

(assert (=> b!3765143 m!4260953))

(assert (=> b!3765143 m!4260955))

(assert (=> b!3765143 m!4260953))

(assert (=> b!3765143 m!4260955))

(declare-fun m!4261183 () Bool)

(assert (=> b!3765143 m!4261183))

(assert (=> b!3764141 d!1100724))

(declare-fun d!1100726 () Bool)

(declare-fun lt!1302825 () Bool)

(assert (=> d!1100726 (= lt!1302825 (select (content!5896 lt!1302552) lt!1302674))))

(declare-fun e!2328536 () Bool)

(assert (=> d!1100726 (= lt!1302825 e!2328536)))

(declare-fun res!1524371 () Bool)

(assert (=> d!1100726 (=> (not res!1524371) (not e!2328536))))

(assert (=> d!1100726 (= res!1524371 ((_ is Cons!40153) lt!1302552))))

(assert (=> d!1100726 (= (contains!8168 lt!1302552 lt!1302674) lt!1302825)))

(declare-fun b!3765149 () Bool)

(declare-fun e!2328535 () Bool)

(assert (=> b!3765149 (= e!2328536 e!2328535)))

(declare-fun res!1524372 () Bool)

(assert (=> b!3765149 (=> res!1524372 e!2328535)))

(assert (=> b!3765149 (= res!1524372 (= (h!45573 lt!1302552) lt!1302674))))

(declare-fun b!3765150 () Bool)

(assert (=> b!3765150 (= e!2328535 (contains!8168 (t!304254 lt!1302552) lt!1302674))))

(assert (= (and d!1100726 res!1524371) b!3765149))

(assert (= (and b!3765149 (not res!1524372)) b!3765150))

(assert (=> d!1100726 m!4260013))

(declare-fun m!4261185 () Bool)

(assert (=> d!1100726 m!4261185))

(declare-fun m!4261187 () Bool)

(assert (=> b!3765150 m!4261187))

(assert (=> d!1100426 d!1100726))

(declare-fun d!1100728 () Bool)

(declare-fun res!1524377 () Bool)

(declare-fun e!2328539 () Bool)

(assert (=> d!1100728 (=> (not res!1524377) (not e!2328539))))

(assert (=> d!1100728 (= res!1524377 (<= (size!30230 (list!14840 (xs!15512 (c!651983 acc!400)))) 512))))

(assert (=> d!1100728 (= (inv!53900 (c!651983 acc!400)) e!2328539)))

(declare-fun b!3765155 () Bool)

(declare-fun res!1524378 () Bool)

(assert (=> b!3765155 (=> (not res!1524378) (not e!2328539))))

(assert (=> b!3765155 (= res!1524378 (= (csize!24843 (c!651983 acc!400)) (size!30230 (list!14840 (xs!15512 (c!651983 acc!400))))))))

(declare-fun b!3765156 () Bool)

(assert (=> b!3765156 (= e!2328539 (and (> (csize!24843 (c!651983 acc!400)) 0) (<= (csize!24843 (c!651983 acc!400)) 512)))))

(assert (= (and d!1100728 res!1524377) b!3765155))

(assert (= (and b!3765155 res!1524378) b!3765156))

(assert (=> d!1100728 m!4260743))

(assert (=> d!1100728 m!4260743))

(declare-fun m!4261189 () Bool)

(assert (=> d!1100728 m!4261189))

(assert (=> b!3765155 m!4260743))

(assert (=> b!3765155 m!4260743))

(assert (=> b!3765155 m!4261189))

(assert (=> b!3764161 d!1100728))

(declare-fun d!1100730 () Bool)

(assert (=> d!1100730 (= (list!14831 lt!1302606) (list!14834 (c!651983 lt!1302606)))))

(declare-fun bs!575980 () Bool)

(assert (= bs!575980 d!1100730))

(declare-fun m!4261191 () Bool)

(assert (=> bs!575980 m!4261191))

(assert (=> b!3764271 d!1100730))

(declare-fun b!3765158 () Bool)

(declare-fun e!2328540 () List!40275)

(assert (=> b!3765158 (= e!2328540 (Cons!40151 (h!45571 (list!14831 acc!400)) (++!9964 (t!304252 (list!14831 acc!400)) (list!14831 (charsOf!4010 (apply!9456 v!6347 from!841))))))))

(declare-fun b!3765159 () Bool)

(declare-fun res!1524380 () Bool)

(declare-fun e!2328541 () Bool)

(assert (=> b!3765159 (=> (not res!1524380) (not e!2328541))))

(declare-fun lt!1302826 () List!40275)

(assert (=> b!3765159 (= res!1524380 (= (size!30230 lt!1302826) (+ (size!30230 (list!14831 acc!400)) (size!30230 (list!14831 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(declare-fun b!3765160 () Bool)

(assert (=> b!3765160 (= e!2328541 (or (not (= (list!14831 (charsOf!4010 (apply!9456 v!6347 from!841))) Nil!40151)) (= lt!1302826 (list!14831 acc!400))))))

(declare-fun b!3765157 () Bool)

(assert (=> b!3765157 (= e!2328540 (list!14831 (charsOf!4010 (apply!9456 v!6347 from!841))))))

(declare-fun d!1100732 () Bool)

(assert (=> d!1100732 e!2328541))

(declare-fun res!1524379 () Bool)

(assert (=> d!1100732 (=> (not res!1524379) (not e!2328541))))

(assert (=> d!1100732 (= res!1524379 (= (content!5898 lt!1302826) ((_ map or) (content!5898 (list!14831 acc!400)) (content!5898 (list!14831 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(assert (=> d!1100732 (= lt!1302826 e!2328540)))

(declare-fun c!652267 () Bool)

(assert (=> d!1100732 (= c!652267 ((_ is Nil!40151) (list!14831 acc!400)))))

(assert (=> d!1100732 (= (++!9964 (list!14831 acc!400) (list!14831 (charsOf!4010 (apply!9456 v!6347 from!841)))) lt!1302826)))

(assert (= (and d!1100732 c!652267) b!3765157))

(assert (= (and d!1100732 (not c!652267)) b!3765158))

(assert (= (and d!1100732 res!1524379) b!3765159))

(assert (= (and b!3765159 res!1524380) b!3765160))

(assert (=> b!3765158 m!4260067))

(declare-fun m!4261193 () Bool)

(assert (=> b!3765158 m!4261193))

(declare-fun m!4261195 () Bool)

(assert (=> b!3765159 m!4261195))

(assert (=> b!3765159 m!4259917))

(assert (=> b!3765159 m!4261063))

(assert (=> b!3765159 m!4260067))

(declare-fun m!4261197 () Bool)

(assert (=> b!3765159 m!4261197))

(declare-fun m!4261199 () Bool)

(assert (=> d!1100732 m!4261199))

(assert (=> d!1100732 m!4259917))

(assert (=> d!1100732 m!4261069))

(assert (=> d!1100732 m!4260067))

(declare-fun m!4261201 () Bool)

(assert (=> d!1100732 m!4261201))

(assert (=> b!3764271 d!1100732))

(assert (=> b!3764271 d!1100370))

(declare-fun d!1100734 () Bool)

(assert (=> d!1100734 (= (list!14831 (charsOf!4010 (apply!9456 v!6347 from!841))) (list!14834 (c!651983 (charsOf!4010 (apply!9456 v!6347 from!841)))))))

(declare-fun bs!575981 () Bool)

(assert (= bs!575981 d!1100734))

(assert (=> bs!575981 m!4261015))

(assert (=> b!3764271 d!1100734))

(declare-fun b!3765162 () Bool)

(declare-fun e!2328542 () List!40275)

(declare-fun e!2328543 () List!40275)

(assert (=> b!3765162 (= e!2328542 e!2328543)))

(declare-fun c!652269 () Bool)

(assert (=> b!3765162 (= c!652269 ((_ is Leaf!19084) (c!651983 (printTailRec!1610 thiss!13650 v!6347 (+ 1 from!841) (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(declare-fun b!3765164 () Bool)

(assert (=> b!3765164 (= e!2328543 (++!9964 (list!14834 (left!31087 (c!651983 (printTailRec!1610 thiss!13650 v!6347 (+ 1 from!841) (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))))))) (list!14834 (right!31417 (c!651983 (printTailRec!1610 thiss!13650 v!6347 (+ 1 from!841) (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))))

(declare-fun c!652268 () Bool)

(declare-fun d!1100736 () Bool)

(assert (=> d!1100736 (= c!652268 ((_ is Empty!12306) (c!651983 (printTailRec!1610 thiss!13650 v!6347 (+ 1 from!841) (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))))))))

(assert (=> d!1100736 (= (list!14834 (c!651983 (printTailRec!1610 thiss!13650 v!6347 (+ 1 from!841) (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841)))))) e!2328542)))

(declare-fun b!3765161 () Bool)

(assert (=> b!3765161 (= e!2328542 Nil!40151)))

(declare-fun b!3765163 () Bool)

(assert (=> b!3765163 (= e!2328543 (list!14840 (xs!15512 (c!651983 (printTailRec!1610 thiss!13650 v!6347 (+ 1 from!841) (++!9960 acc!400 (charsOf!4010 (apply!9456 v!6347 from!841))))))))))

(assert (= (and d!1100736 c!652268) b!3765161))

(assert (= (and d!1100736 (not c!652268)) b!3765162))

(assert (= (and b!3765162 c!652269) b!3765163))

(assert (= (and b!3765162 (not c!652269)) b!3765164))

(declare-fun m!4261203 () Bool)

(assert (=> b!3765164 m!4261203))

(declare-fun m!4261205 () Bool)

(assert (=> b!3765164 m!4261205))

(assert (=> b!3765164 m!4261203))

(assert (=> b!3765164 m!4261205))

(declare-fun m!4261207 () Bool)

(assert (=> b!3765164 m!4261207))

(declare-fun m!4261209 () Bool)

(assert (=> b!3765163 m!4261209))

(assert (=> d!1100388 d!1100736))

(declare-fun e!2328544 () List!40275)

(declare-fun b!3765166 () Bool)

(assert (=> b!3765166 (= e!2328544 (Cons!40151 (h!45571 (list!14831 acc!400)) (++!9964 (t!304252 (list!14831 acc!400)) (printList!1663 thiss!13650 (dropList!1277 v!6347 from!841)))))))

(declare-fun b!3765167 () Bool)

(declare-fun res!1524382 () Bool)

(declare-fun e!2328545 () Bool)

(assert (=> b!3765167 (=> (not res!1524382) (not e!2328545))))

(declare-fun lt!1302827 () List!40275)

(assert (=> b!3765167 (= res!1524382 (= (size!30230 lt!1302827) (+ (size!30230 (list!14831 acc!400)) (size!30230 (printList!1663 thiss!13650 (dropList!1277 v!6347 from!841))))))))

(declare-fun b!3765168 () Bool)

(assert (=> b!3765168 (= e!2328545 (or (not (= (printList!1663 thiss!13650 (dropList!1277 v!6347 from!841)) Nil!40151)) (= lt!1302827 (list!14831 acc!400))))))

(declare-fun b!3765165 () Bool)

(assert (=> b!3765165 (= e!2328544 (printList!1663 thiss!13650 (dropList!1277 v!6347 from!841)))))

(declare-fun d!1100738 () Bool)

(assert (=> d!1100738 e!2328545))

(declare-fun res!1524381 () Bool)

(assert (=> d!1100738 (=> (not res!1524381) (not e!2328545))))

(assert (=> d!1100738 (= res!1524381 (= (content!5898 lt!1302827) ((_ map or) (content!5898 (list!14831 acc!400)) (content!5898 (printList!1663 thiss!13650 (dropList!1277 v!6347 from!841))))))))

(assert (=> d!1100738 (= lt!1302827 e!2328544)))

(declare-fun c!652270 () Bool)

(assert (=> d!1100738 (= c!652270 ((_ is Nil!40151) (list!14831 acc!400)))))

(assert (=> d!1100738 (= (++!9964 (list!14831 acc!400) (printList!1663 thiss!13650 (dropList!1277 v!6347 from!841))) lt!1302827)))

(assert (= (and d!1100738 c!652270) b!3765165))

(assert (= (and d!1100738 (not c!652270)) b!3765166))

(assert (= (and d!1100738 res!1524381) b!3765167))

(assert (= (and b!3765167 res!1524382) b!3765168))

(assert (=> b!3765166 m!4260189))

(declare-fun m!4261211 () Bool)

(assert (=> b!3765166 m!4261211))

(declare-fun m!4261213 () Bool)

(assert (=> b!3765167 m!4261213))

(assert (=> b!3765167 m!4259917))

(assert (=> b!3765167 m!4261063))

(assert (=> b!3765167 m!4260189))

(declare-fun m!4261215 () Bool)

(assert (=> b!3765167 m!4261215))

(declare-fun m!4261217 () Bool)

(assert (=> d!1100738 m!4261217))

(assert (=> d!1100738 m!4259917))

(assert (=> d!1100738 m!4261069))

(assert (=> d!1100738 m!4260189))

(declare-fun m!4261219 () Bool)

(assert (=> d!1100738 m!4261219))

(assert (=> d!1100424 d!1100738))

(declare-fun d!1100740 () Bool)

(declare-fun c!652271 () Bool)

(assert (=> d!1100740 (= c!652271 ((_ is Cons!40153) (dropList!1277 v!6347 from!841)))))

(declare-fun e!2328546 () List!40275)

(assert (=> d!1100740 (= (printList!1663 thiss!13650 (dropList!1277 v!6347 from!841)) e!2328546)))

(declare-fun b!3765169 () Bool)

(assert (=> b!3765169 (= e!2328546 (++!9964 (list!14831 (charsOf!4010 (h!45573 (dropList!1277 v!6347 from!841)))) (printList!1663 thiss!13650 (t!304254 (dropList!1277 v!6347 from!841)))))))

(declare-fun b!3765170 () Bool)

(assert (=> b!3765170 (= e!2328546 Nil!40151)))

(assert (= (and d!1100740 c!652271) b!3765169))

(assert (= (and d!1100740 (not c!652271)) b!3765170))

(assert (=> b!3765169 m!4260197))

(assert (=> b!3765169 m!4260197))

(assert (=> b!3765169 m!4260199))

(assert (=> b!3765169 m!4260211))

(assert (=> b!3765169 m!4260199))

(assert (=> b!3765169 m!4260211))

(declare-fun m!4261221 () Bool)

(assert (=> b!3765169 m!4261221))

(assert (=> d!1100424 d!1100740))

(declare-fun d!1100742 () Bool)

(assert (=> d!1100742 (= (inv!53903 (xs!15513 (c!651985 v!6347))) (<= (size!30226 (innerList!12367 (xs!15513 (c!651985 v!6347)))) 2147483647))))

(declare-fun bs!575982 () Bool)

(assert (= bs!575982 d!1100742))

(declare-fun m!4261223 () Bool)

(assert (=> bs!575982 m!4261223))

(assert (=> b!3764358 d!1100742))

(assert (=> b!3764270 d!1100672))

(assert (=> b!3764270 d!1100674))

(assert (=> b!3764270 d!1100676))

(assert (=> b!3764270 d!1100678))

(assert (=> b!3764270 d!1100680))

(declare-fun e!2328547 () Bool)

(declare-fun b!3765171 () Bool)

(declare-fun tp!1150095 () Bool)

(declare-fun tp!1150094 () Bool)

(assert (=> b!3765171 (= e!2328547 (and (inv!53891 (left!31088 (left!31088 (c!651985 v!6347)))) tp!1150095 (inv!53891 (right!31418 (left!31088 (c!651985 v!6347)))) tp!1150094))))

(declare-fun b!3765173 () Bool)

(declare-fun e!2328548 () Bool)

(declare-fun tp!1150096 () Bool)

(assert (=> b!3765173 (= e!2328548 tp!1150096)))

(declare-fun b!3765172 () Bool)

(assert (=> b!3765172 (= e!2328547 (and (inv!53903 (xs!15513 (left!31088 (c!651985 v!6347)))) e!2328548))))

(assert (=> b!3764357 (= tp!1150048 (and (inv!53891 (left!31088 (c!651985 v!6347))) e!2328547))))

(assert (= (and b!3764357 ((_ is Node!12307) (left!31088 (c!651985 v!6347)))) b!3765171))

(assert (= b!3765172 b!3765173))

(assert (= (and b!3764357 ((_ is Leaf!19085) (left!31088 (c!651985 v!6347)))) b!3765172))

(declare-fun m!4261225 () Bool)

(assert (=> b!3765171 m!4261225))

(declare-fun m!4261227 () Bool)

(assert (=> b!3765171 m!4261227))

(declare-fun m!4261229 () Bool)

(assert (=> b!3765172 m!4261229))

(assert (=> b!3764357 m!4260233))

(declare-fun e!2328549 () Bool)

(declare-fun b!3765174 () Bool)

(declare-fun tp!1150098 () Bool)

(declare-fun tp!1150097 () Bool)

(assert (=> b!3765174 (= e!2328549 (and (inv!53891 (left!31088 (right!31418 (c!651985 v!6347)))) tp!1150098 (inv!53891 (right!31418 (right!31418 (c!651985 v!6347)))) tp!1150097))))

(declare-fun b!3765176 () Bool)

(declare-fun e!2328550 () Bool)

(declare-fun tp!1150099 () Bool)

(assert (=> b!3765176 (= e!2328550 tp!1150099)))

(declare-fun b!3765175 () Bool)

(assert (=> b!3765175 (= e!2328549 (and (inv!53903 (xs!15513 (right!31418 (c!651985 v!6347)))) e!2328550))))

(assert (=> b!3764357 (= tp!1150047 (and (inv!53891 (right!31418 (c!651985 v!6347))) e!2328549))))

(assert (= (and b!3764357 ((_ is Node!12307) (right!31418 (c!651985 v!6347)))) b!3765174))

(assert (= b!3765175 b!3765176))

(assert (= (and b!3764357 ((_ is Leaf!19085) (right!31418 (c!651985 v!6347)))) b!3765175))

(declare-fun m!4261231 () Bool)

(assert (=> b!3765174 m!4261231))

(declare-fun m!4261233 () Bool)

(assert (=> b!3765174 m!4261233))

(declare-fun m!4261235 () Bool)

(assert (=> b!3765175 m!4261235))

(assert (=> b!3764357 m!4260235))

(declare-fun b!3765181 () Bool)

(declare-fun e!2328553 () Bool)

(declare-fun tp_is_empty!19129 () Bool)

(declare-fun tp!1150102 () Bool)

(assert (=> b!3765181 (= e!2328553 (and tp_is_empty!19129 tp!1150102))))

(assert (=> b!3764370 (= tp!1150057 e!2328553)))

(assert (= (and b!3764370 ((_ is Cons!40151) (innerList!12366 (xs!15512 (c!651983 acc!400))))) b!3765181))

(declare-fun e!2328554 () Bool)

(declare-fun b!3765182 () Bool)

(declare-fun tp!1150103 () Bool)

(declare-fun tp!1150105 () Bool)

(assert (=> b!3765182 (= e!2328554 (and (inv!53892 (left!31087 (left!31087 (c!651983 acc!400)))) tp!1150105 (inv!53892 (right!31417 (left!31087 (c!651983 acc!400)))) tp!1150103))))

(declare-fun b!3765184 () Bool)

(declare-fun e!2328555 () Bool)

(declare-fun tp!1150104 () Bool)

(assert (=> b!3765184 (= e!2328555 tp!1150104)))

(declare-fun b!3765183 () Bool)

(assert (=> b!3765183 (= e!2328554 (and (inv!53904 (xs!15512 (left!31087 (c!651983 acc!400)))) e!2328555))))

(assert (=> b!3764368 (= tp!1150058 (and (inv!53892 (left!31087 (c!651983 acc!400))) e!2328554))))

(assert (= (and b!3764368 ((_ is Node!12306) (left!31087 (c!651983 acc!400)))) b!3765182))

(assert (= b!3765183 b!3765184))

(assert (= (and b!3764368 ((_ is Leaf!19084) (left!31087 (c!651983 acc!400)))) b!3765183))

(declare-fun m!4261237 () Bool)

(assert (=> b!3765182 m!4261237))

(declare-fun m!4261239 () Bool)

(assert (=> b!3765182 m!4261239))

(declare-fun m!4261241 () Bool)

(assert (=> b!3765183 m!4261241))

(assert (=> b!3764368 m!4260239))

(declare-fun b!3765185 () Bool)

(declare-fun e!2328556 () Bool)

(declare-fun tp!1150108 () Bool)

(declare-fun tp!1150106 () Bool)

(assert (=> b!3765185 (= e!2328556 (and (inv!53892 (left!31087 (right!31417 (c!651983 acc!400)))) tp!1150108 (inv!53892 (right!31417 (right!31417 (c!651983 acc!400)))) tp!1150106))))

(declare-fun b!3765187 () Bool)

(declare-fun e!2328557 () Bool)

(declare-fun tp!1150107 () Bool)

(assert (=> b!3765187 (= e!2328557 tp!1150107)))

(declare-fun b!3765186 () Bool)

(assert (=> b!3765186 (= e!2328556 (and (inv!53904 (xs!15512 (right!31417 (c!651983 acc!400)))) e!2328557))))

(assert (=> b!3764368 (= tp!1150056 (and (inv!53892 (right!31417 (c!651983 acc!400))) e!2328556))))

(assert (= (and b!3764368 ((_ is Node!12306) (right!31417 (c!651983 acc!400)))) b!3765185))

(assert (= b!3765186 b!3765187))

(assert (= (and b!3764368 ((_ is Leaf!19084) (right!31417 (c!651983 acc!400)))) b!3765186))

(declare-fun m!4261243 () Bool)

(assert (=> b!3765185 m!4261243))

(declare-fun m!4261245 () Bool)

(assert (=> b!3765185 m!4261245))

(declare-fun m!4261247 () Bool)

(assert (=> b!3765186 m!4261247))

(assert (=> b!3764368 m!4260241))

(declare-fun b!3765201 () Bool)

(declare-fun b_free!100821 () Bool)

(declare-fun b_next!101525 () Bool)

(assert (=> b!3765201 (= b_free!100821 (not b_next!101525))))

(declare-fun tp!1150119 () Bool)

(declare-fun b_and!279615 () Bool)

(assert (=> b!3765201 (= tp!1150119 b_and!279615)))

(declare-fun b_free!100823 () Bool)

(declare-fun b_next!101527 () Bool)

(assert (=> b!3765201 (= b_free!100823 (not b_next!101527))))

(declare-fun tb!215567 () Bool)

(declare-fun t!304276 () Bool)

(assert (=> (and b!3765201 (= (toChars!8379 (transformation!6160 (rule!8924 (h!45573 (innerList!12367 (xs!15513 (c!651985 v!6347))))))) (toChars!8379 (transformation!6160 (rule!8924 (apply!9456 v!6347 from!841))))) t!304276) tb!215567))

(declare-fun e!2328578 () Bool)

(declare-fun tp!1150126 () Bool)

(declare-fun b!3765206 () Bool)

(assert (=> b!3765206 (= e!2328578 (and (inv!53892 (c!651983 (dynLambda!17348 (toChars!8379 (transformation!6160 (rule!8924 (apply!9456 v!6347 from!841)))) (value!196167 (apply!9456 v!6347 from!841))))) tp!1150126))))

(declare-fun result!263238 () Bool)

(assert (=> tb!215567 (= result!263238 (and (inv!53889 (dynLambda!17348 (toChars!8379 (transformation!6160 (rule!8924 (apply!9456 v!6347 from!841)))) (value!196167 (apply!9456 v!6347 from!841)))) e!2328578))))

(assert (= tb!215567 b!3765206))

(declare-fun m!4261249 () Bool)

(assert (=> b!3765206 m!4261249))

(declare-fun m!4261251 () Bool)

(assert (=> tb!215567 m!4261251))

(assert (=> d!1100378 t!304276))

(declare-fun t!304278 () Bool)

(declare-fun tb!215569 () Bool)

(assert (=> (and b!3765201 (= (toChars!8379 (transformation!6160 (rule!8924 (h!45573 (innerList!12367 (xs!15513 (c!651985 v!6347))))))) (toChars!8379 (transformation!6160 (rule!8924 (apply!9456 v!6347 (+ 1 from!841)))))) t!304278) tb!215569))

(declare-fun e!2328579 () Bool)

(declare-fun tp!1150127 () Bool)

(declare-fun b!3765207 () Bool)

(assert (=> b!3765207 (= e!2328579 (and (inv!53892 (c!651983 (dynLambda!17348 (toChars!8379 (transformation!6160 (rule!8924 (apply!9456 v!6347 (+ 1 from!841))))) (value!196167 (apply!9456 v!6347 (+ 1 from!841)))))) tp!1150127))))

(declare-fun result!263242 () Bool)

(assert (=> tb!215569 (= result!263242 (and (inv!53889 (dynLambda!17348 (toChars!8379 (transformation!6160 (rule!8924 (apply!9456 v!6347 (+ 1 from!841))))) (value!196167 (apply!9456 v!6347 (+ 1 from!841))))) e!2328579))))

(assert (= tb!215569 b!3765207))

(declare-fun m!4261253 () Bool)

(assert (=> b!3765207 m!4261253))

(declare-fun m!4261255 () Bool)

(assert (=> tb!215569 m!4261255))

(assert (=> d!1100644 t!304278))

(declare-fun t!304280 () Bool)

(declare-fun tb!215571 () Bool)

(assert (=> (and b!3765201 (= (toChars!8379 (transformation!6160 (rule!8924 (h!45573 (innerList!12367 (xs!15513 (c!651985 v!6347))))))) (toChars!8379 (transformation!6160 (rule!8924 (h!45573 (dropList!1277 v!6347 from!841)))))) t!304280) tb!215571))

(declare-fun tp!1150128 () Bool)

(declare-fun b!3765208 () Bool)

(declare-fun e!2328580 () Bool)

(assert (=> b!3765208 (= e!2328580 (and (inv!53892 (c!651983 (dynLambda!17348 (toChars!8379 (transformation!6160 (rule!8924 (h!45573 (dropList!1277 v!6347 from!841))))) (value!196167 (h!45573 (dropList!1277 v!6347 from!841)))))) tp!1150128))))

(declare-fun result!263244 () Bool)

(assert (=> tb!215571 (= result!263244 (and (inv!53889 (dynLambda!17348 (toChars!8379 (transformation!6160 (rule!8924 (h!45573 (dropList!1277 v!6347 from!841))))) (value!196167 (h!45573 (dropList!1277 v!6347 from!841))))) e!2328580))))

(assert (= tb!215571 b!3765208))

(declare-fun m!4261257 () Bool)

(assert (=> b!3765208 m!4261257))

(declare-fun m!4261259 () Bool)

(assert (=> tb!215571 m!4261259))

(assert (=> d!1100702 t!304280))

(declare-fun b_and!279617 () Bool)

(declare-fun tp!1150120 () Bool)

(assert (=> b!3765201 (= tp!1150120 (and (=> t!304276 result!263238) (=> t!304278 result!263242) (=> t!304280 result!263244) b_and!279617))))

(declare-fun b!3765200 () Bool)

(declare-fun tp!1150122 () Bool)

(declare-fun e!2328574 () Bool)

(declare-fun e!2328573 () Bool)

(declare-fun inv!53884 (String!45632) Bool)

(declare-fun inv!53907 (TokenValueInjection!12208) Bool)

(assert (=> b!3765200 (= e!2328573 (and tp!1150122 (inv!53884 (tag!7020 (rule!8924 (h!45573 (innerList!12367 (xs!15513 (c!651985 v!6347))))))) (inv!53907 (transformation!6160 (rule!8924 (h!45573 (innerList!12367 (xs!15513 (c!651985 v!6347))))))) e!2328574))))

(declare-fun e!2328571 () Bool)

(assert (=> b!3764359 (= tp!1150049 e!2328571)))

(declare-fun tp!1150121 () Bool)

(declare-fun e!2328570 () Bool)

(declare-fun b!3765199 () Bool)

(declare-fun inv!21 (TokenValue!6390) Bool)

(assert (=> b!3765199 (= e!2328570 (and (inv!21 (value!196167 (h!45573 (innerList!12367 (xs!15513 (c!651985 v!6347)))))) e!2328573 tp!1150121))))

(declare-fun tp!1150123 () Bool)

(declare-fun b!3765198 () Bool)

(declare-fun inv!53908 (Token!11458) Bool)

(assert (=> b!3765198 (= e!2328571 (and (inv!53908 (h!45573 (innerList!12367 (xs!15513 (c!651985 v!6347))))) e!2328570 tp!1150123))))

(assert (=> b!3765201 (= e!2328574 (and tp!1150119 tp!1150120))))

(assert (= b!3765200 b!3765201))

(assert (= b!3765199 b!3765200))

(assert (= b!3765198 b!3765199))

(assert (= (and b!3764359 ((_ is Cons!40153) (innerList!12367 (xs!15513 (c!651985 v!6347))))) b!3765198))

(declare-fun m!4261261 () Bool)

(assert (=> b!3765200 m!4261261))

(declare-fun m!4261263 () Bool)

(assert (=> b!3765200 m!4261263))

(declare-fun m!4261265 () Bool)

(assert (=> b!3765199 m!4261265))

(declare-fun m!4261267 () Bool)

(assert (=> b!3765198 m!4261267))

(check-sat (not bm!275534) (not b!3765078) (not b!3764753) (not b!3764786) (not d!1100712) (not d!1100644) (not b!3764843) (not b!3765055) (not b!3765132) (not d!1100558) (not b!3765024) (not b_lambda!110457) (not b!3765130) (not b!3765125) (not b!3765023) (not b!3764887) (not b!3765092) (not bm!275549) (not b!3765081) (not d!1100670) (not b!3764927) (not b!3764895) (not b!3765164) (not b_lambda!110455) (not b!3764923) (not b!3765176) (not b!3765173) (not b!3765086) (not b!3765057) (not bm!275540) (not d!1100730) (not b!3765128) (not b!3765073) (not d!1100732) (not b!3764826) (not d!1100652) (not bm!275495) (not b!3765175) (not b!3765206) (not bm!275488) (not d!1100612) (not b!3764957) (not b!3765133) (not d!1100668) (not b!3765030) (not b!3764873) (not b!3765085) (not b!3765100) (not d!1100650) (not d!1100738) (not d!1100680) (not b!3765037) (not d!1100616) (not b!3764875) (not b!3765062) (not d!1100726) (not b!3764785) (not b!3765121) (not bm!275500) (not d!1100734) (not b!3764958) (not b!3764357) (not b!3765181) (not b!3765056) (not b!3764866) (not b!3765127) (not d!1100654) (not tb!215571) (not b!3765088) (not bm!275494) (not d!1100704) (not d!1100718) (not b!3765200) (not b!3764870) (not b!3764888) (not b!3765091) (not b!3765208) (not b!3764733) (not d!1100618) (not b_lambda!110447) (not d!1100708) (not bm!275496) (not tb!215569) (not d!1100642) (not b!3765172) (not bm!275499) (not b!3765025) (not b!3765053) (not tb!215567) (not b!3765169) (not d!1100638) (not b!3764868) (not d!1100656) (not b!3765184) (not b!3765039) (not b!3765166) (not b!3765207) (not d!1100728) (not b!3765155) (not b!3765167) (not bm!275542) (not d!1100700) (not d!1100606) (not b!3765185) (not b!3765186) (not b!3765129) (not b!3764929) (not b!3765101) (not b!3764869) (not b!3764798) b_and!279617 (not d!1100610) (not d!1100702) (not b!3764922) (not bm!275493) (not b!3764948) (not b!3764883) (not d!1100724) (not b!3765199) (not b!3764886) (not b!3764808) (not b!3764904) (not b!3765187) (not d!1100698) (not b!3764860) b_and!279615 (not b!3764924) (not d!1100706) (not b!3765052) (not b!3765135) (not b!3764874) (not b!3765134) (not b_next!101525) (not b!3765159) (not d!1100658) (not b!3764949) (not b!3764896) (not b!3765150) (not bm!275548) (not d!1100666) (not b!3765018) (not b!3765182) (not b!3764885) (not b!3765026) (not b!3765198) (not b!3765035) (not b!3764926) (not d!1100648) (not b!3764833) (not d!1100608) (not b!3765163) (not b!3764844) (not b!3764867) (not b!3764807) (not b!3764919) (not b!3764864) (not b!3764859) (not b!3765158) (not bm!275537) (not d!1100710) (not b!3765131) (not b!3765171) (not b!3764731) (not b!3764905) (not b!3764920) (not b!3764714) (not d!1100696) (not d!1100688) (not bm!275539) (not d!1100624) (not b!3764967) (not b!3764882) (not b!3765082) (not d!1100620) (not d!1100742) (not b!3765074) (not b!3765054) (not b!3764713) (not b!3764872) (not b!3764950) (not d!1100664) (not b!3765077) (not b!3764368) (not b!3764944) (not b!3764797) (not d!1100690) (not d!1100716) (not b!3764857) tp_is_empty!19129 (not b_next!101527) (not b!3765183) (not b!3764862) (not d!1100614) (not b!3765143) (not b!3764928) (not d!1100646) (not b!3765174) (not b!3765032) (not b!3764846) (not bm!275543) (not b!3764921) (not b!3765034) (not b!3765124))
(check-sat b_and!279617 b_and!279615 (not b_next!101525) (not b_next!101527))
