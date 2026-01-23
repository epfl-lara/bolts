; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!255864 () Bool)

(assert start!255864)

(declare-fun b!2631229 () Bool)

(declare-fun b_free!74197 () Bool)

(declare-fun b_next!74901 () Bool)

(assert (=> b!2631229 (= b_free!74197 (not b_next!74901))))

(declare-fun tp!834266 () Bool)

(declare-fun b_and!192771 () Bool)

(assert (=> b!2631229 (= tp!834266 b_and!192771)))

(declare-fun b_free!74199 () Bool)

(declare-fun b_next!74903 () Bool)

(assert (=> b!2631229 (= b_free!74199 (not b_next!74903))))

(declare-fun tp!834268 () Bool)

(declare-fun b_and!192773 () Bool)

(assert (=> b!2631229 (= tp!834268 b_and!192773)))

(declare-fun b!2631236 () Bool)

(declare-fun b_free!74201 () Bool)

(declare-fun b_next!74905 () Bool)

(assert (=> b!2631236 (= b_free!74201 (not b_next!74905))))

(declare-fun tp!834269 () Bool)

(declare-fun b_and!192775 () Bool)

(assert (=> b!2631236 (= tp!834269 b_and!192775)))

(declare-fun b_free!74203 () Bool)

(declare-fun b_next!74907 () Bool)

(assert (=> b!2631236 (= b_free!74203 (not b_next!74907))))

(declare-fun tp!834267 () Bool)

(declare-fun b_and!192777 () Bool)

(assert (=> b!2631236 (= tp!834267 b_and!192777)))

(declare-fun bs!475744 () Bool)

(declare-fun b!2631233 () Bool)

(declare-fun b!2631240 () Bool)

(assert (= bs!475744 (and b!2631233 b!2631240)))

(declare-fun lambda!98706 () Int)

(declare-fun lambda!98705 () Int)

(assert (=> bs!475744 (not (= lambda!98706 lambda!98705))))

(declare-fun b!2631251 () Bool)

(declare-fun e!1660236 () Bool)

(assert (=> b!2631251 (= e!1660236 true)))

(declare-fun b!2631250 () Bool)

(declare-fun e!1660235 () Bool)

(assert (=> b!2631250 (= e!1660235 e!1660236)))

(declare-fun b!2631249 () Bool)

(declare-fun e!1660234 () Bool)

(assert (=> b!2631249 (= e!1660234 e!1660235)))

(assert (=> b!2631233 e!1660234))

(assert (= b!2631250 b!2631251))

(assert (= b!2631249 b!2631250))

(declare-datatypes ((List!30585 0))(
  ( (Nil!30485) (Cons!30485 (h!35905 (_ BitVec 16)) (t!216402 List!30585)) )
))
(declare-datatypes ((C!15718 0))(
  ( (C!15719 (val!9793 Int)) )
))
(declare-datatypes ((String!34175 0))(
  ( (String!34176 (value!149706 String)) )
))
(declare-datatypes ((Regex!7780 0))(
  ( (ElementMatch!7780 (c!422979 C!15718)) (Concat!12638 (regOne!16072 Regex!7780) (regTwo!16072 Regex!7780)) (EmptyExpr!7780) (Star!7780 (reg!8109 Regex!7780)) (EmptyLang!7780) (Union!7780 (regOne!16073 Regex!7780) (regTwo!16073 Regex!7780)) )
))
(declare-datatypes ((TokenValue!4858 0))(
  ( (FloatLiteralValue!9716 (text!34451 List!30585)) (TokenValueExt!4857 (__x!19549 Int)) (Broken!24290 (value!149707 List!30585)) (Object!4957) (End!4858) (Def!4858) (Underscore!4858) (Match!4858) (Else!4858) (Error!4858) (Case!4858) (If!4858) (Extends!4858) (Abstract!4858) (Class!4858) (Val!4858) (DelimiterValue!9716 (del!4918 List!30585)) (KeywordValue!4864 (value!149708 List!30585)) (CommentValue!9716 (value!149709 List!30585)) (WhitespaceValue!9716 (value!149710 List!30585)) (IndentationValue!4858 (value!149711 List!30585)) (String!34177) (Int32!4858) (Broken!24291 (value!149712 List!30585)) (Boolean!4859) (Unit!44493) (OperatorValue!4861 (op!4918 List!30585)) (IdentifierValue!9716 (value!149713 List!30585)) (IdentifierValue!9717 (value!149714 List!30585)) (WhitespaceValue!9717 (value!149715 List!30585)) (True!9716) (False!9716) (Broken!24292 (value!149716 List!30585)) (Broken!24293 (value!149717 List!30585)) (True!9717) (RightBrace!4858) (RightBracket!4858) (Colon!4858) (Null!4858) (Comma!4858) (LeftBracket!4858) (False!9717) (LeftBrace!4858) (ImaginaryLiteralValue!4858 (text!34452 List!30585)) (StringLiteralValue!14574 (value!149718 List!30585)) (EOFValue!4858 (value!149719 List!30585)) (IdentValue!4858 (value!149720 List!30585)) (DelimiterValue!9717 (value!149721 List!30585)) (DedentValue!4858 (value!149722 List!30585)) (NewLineValue!4858 (value!149723 List!30585)) (IntegerValue!14574 (value!149724 (_ BitVec 32)) (text!34453 List!30585)) (IntegerValue!14575 (value!149725 Int) (text!34454 List!30585)) (Times!4858) (Or!4858) (Equal!4858) (Minus!4858) (Broken!24294 (value!149726 List!30585)) (And!4858) (Div!4858) (LessEqual!4858) (Mod!4858) (Concat!12639) (Not!4858) (Plus!4858) (SpaceValue!4858 (value!149727 List!30585)) (IntegerValue!14576 (value!149728 Int) (text!34455 List!30585)) (StringLiteralValue!14575 (text!34456 List!30585)) (FloatLiteralValue!9717 (text!34457 List!30585)) (BytesLiteralValue!4858 (value!149729 List!30585)) (CommentValue!9717 (value!149730 List!30585)) (StringLiteralValue!14576 (value!149731 List!30585)) (ErrorTokenValue!4858 (msg!4919 List!30585)) )
))
(declare-datatypes ((List!30586 0))(
  ( (Nil!30486) (Cons!30486 (h!35906 C!15718) (t!216403 List!30586)) )
))
(declare-datatypes ((IArray!19033 0))(
  ( (IArray!19034 (innerList!9574 List!30586)) )
))
(declare-datatypes ((Conc!9514 0))(
  ( (Node!9514 (left!23550 Conc!9514) (right!23880 Conc!9514) (csize!19258 Int) (cheight!9725 Int)) (Leaf!14573 (xs!12514 IArray!19033) (csize!19259 Int)) (Empty!9514) )
))
(declare-datatypes ((BalanceConc!18642 0))(
  ( (BalanceConc!18643 (c!422980 Conc!9514)) )
))
(declare-datatypes ((TokenValueInjection!9156 0))(
  ( (TokenValueInjection!9157 (toValue!6550 Int) (toChars!6409 Int)) )
))
(declare-datatypes ((Rule!9072 0))(
  ( (Rule!9073 (regex!4636 Regex!7780) (tag!5130 String!34175) (isSeparator!4636 Bool) (transformation!4636 TokenValueInjection!9156)) )
))
(declare-datatypes ((List!30587 0))(
  ( (Nil!30487) (Cons!30487 (h!35907 Rule!9072) (t!216404 List!30587)) )
))
(declare-fun rules!1726 () List!30587)

(assert (= (and b!2631233 (is-Cons!30487 rules!1726)) b!2631249))

(declare-fun order!16517 () Int)

(declare-fun order!16519 () Int)

(declare-fun dynLambda!13051 (Int Int) Int)

(declare-fun dynLambda!13052 (Int Int) Int)

(assert (=> b!2631251 (< (dynLambda!13051 order!16517 (toValue!6550 (transformation!4636 (h!35907 rules!1726)))) (dynLambda!13052 order!16519 lambda!98706))))

(declare-fun order!16521 () Int)

(declare-fun dynLambda!13053 (Int Int) Int)

(assert (=> b!2631251 (< (dynLambda!13053 order!16521 (toChars!6409 (transformation!4636 (h!35907 rules!1726)))) (dynLambda!13052 order!16519 lambda!98706))))

(assert (=> b!2631233 true))

(declare-fun b!2631221 () Bool)

(declare-fun res!1107825 () Bool)

(declare-fun e!1660226 () Bool)

(assert (=> b!2631221 (=> (not res!1107825) (not e!1660226))))

(declare-datatypes ((LexerInterface!4233 0))(
  ( (LexerInterfaceExt!4230 (__x!19550 Int)) (Lexer!4231) )
))
(declare-fun thiss!14197 () LexerInterface!4233)

(declare-datatypes ((Token!8742 0))(
  ( (Token!8743 (value!149732 TokenValue!4858) (rule!7018 Rule!9072) (size!23566 Int) (originalCharacters!5402 List!30586)) )
))
(declare-fun separatorToken!156 () Token!8742)

(declare-fun rulesProduceIndividualToken!1945 (LexerInterface!4233 List!30587 Token!8742) Bool)

(assert (=> b!2631221 (= res!1107825 (rulesProduceIndividualToken!1945 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2631222 () Bool)

(declare-fun res!1107834 () Bool)

(assert (=> b!2631222 (=> (not res!1107834) (not e!1660226))))

(declare-datatypes ((List!30588 0))(
  ( (Nil!30488) (Cons!30488 (h!35908 Token!8742) (t!216405 List!30588)) )
))
(declare-datatypes ((IArray!19035 0))(
  ( (IArray!19036 (innerList!9575 List!30588)) )
))
(declare-datatypes ((Conc!9515 0))(
  ( (Node!9515 (left!23551 Conc!9515) (right!23881 Conc!9515) (csize!19260 Int) (cheight!9726 Int)) (Leaf!14574 (xs!12515 IArray!19035) (csize!19261 Int)) (Empty!9515) )
))
(declare-datatypes ((BalanceConc!18644 0))(
  ( (BalanceConc!18645 (c!422981 Conc!9515)) )
))
(declare-fun v!6381 () BalanceConc!18644)

(declare-fun rulesProduceEachTokenIndividually!1053 (LexerInterface!4233 List!30587 BalanceConc!18644) Bool)

(assert (=> b!2631222 (= res!1107834 (rulesProduceEachTokenIndividually!1053 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2631223 () Bool)

(declare-fun res!1107829 () Bool)

(assert (=> b!2631223 (=> (not res!1107829) (not e!1660226))))

(assert (=> b!2631223 (= res!1107829 (isSeparator!4636 (rule!7018 separatorToken!156)))))

(declare-fun b!2631224 () Bool)

(declare-fun e!1660221 () Bool)

(declare-fun tp!834273 () Bool)

(declare-fun e!1660213 () Bool)

(declare-fun inv!41327 (String!34175) Bool)

(declare-fun inv!41330 (TokenValueInjection!9156) Bool)

(assert (=> b!2631224 (= e!1660213 (and tp!834273 (inv!41327 (tag!5130 (h!35907 rules!1726))) (inv!41330 (transformation!4636 (h!35907 rules!1726))) e!1660221))))

(declare-fun b!2631225 () Bool)

(declare-fun res!1107824 () Bool)

(declare-fun e!1660225 () Bool)

(assert (=> b!2631225 (=> res!1107824 e!1660225)))

(declare-fun lt!925801 () List!30588)

(declare-fun lt!925809 () Token!8742)

(declare-fun contains!5777 (List!30588 Token!8742) Bool)

(assert (=> b!2631225 (= res!1107824 (not (contains!5777 lt!925801 lt!925809)))))

(declare-fun b!2631226 () Bool)

(declare-fun e!1660214 () Bool)

(declare-fun tp!834272 () Bool)

(declare-fun inv!41331 (Conc!9515) Bool)

(assert (=> b!2631226 (= e!1660214 (and (inv!41331 (c!422981 v!6381)) tp!834272))))

(declare-fun e!1660223 () Bool)

(declare-fun lt!925806 () BalanceConc!18642)

(declare-fun b!2631227 () Bool)

(declare-fun list!11460 (BalanceConc!18642) List!30586)

(declare-fun printList!1161 (LexerInterface!4233 List!30588) List!30586)

(assert (=> b!2631227 (= e!1660223 (= (list!11460 lt!925806) (printList!1161 thiss!14197 (Cons!30488 lt!925809 Nil!30488))))))

(declare-fun lt!925810 () BalanceConc!18644)

(declare-fun printTailRec!1120 (LexerInterface!4233 BalanceConc!18644 Int BalanceConc!18642) BalanceConc!18642)

(assert (=> b!2631227 (= lt!925806 (printTailRec!1120 thiss!14197 lt!925810 0 (BalanceConc!18643 Empty!9514)))))

(declare-fun print!1634 (LexerInterface!4233 BalanceConc!18644) BalanceConc!18642)

(assert (=> b!2631227 (= lt!925806 (print!1634 thiss!14197 lt!925810))))

(declare-fun singletonSeq!2053 (Token!8742) BalanceConc!18644)

(assert (=> b!2631227 (= lt!925810 (singletonSeq!2053 lt!925809))))

(declare-fun b!2631228 () Bool)

(declare-fun e!1660217 () Bool)

(assert (=> b!2631228 (= e!1660226 e!1660217)))

(declare-fun res!1107836 () Bool)

(assert (=> b!2631228 (=> (not res!1107836) (not e!1660217))))

(declare-fun from!862 () Int)

(declare-fun lt!925804 () Int)

(assert (=> b!2631228 (= res!1107836 (< from!862 lt!925804))))

(declare-datatypes ((Unit!44494 0))(
  ( (Unit!44495) )
))
(declare-fun lt!925807 () Unit!44494)

(declare-fun lemmaContentSubsetPreservesForall!305 (List!30588 List!30588 Int) Unit!44494)

(declare-fun dropList!939 (BalanceConc!18644 Int) List!30588)

(assert (=> b!2631228 (= lt!925807 (lemmaContentSubsetPreservesForall!305 lt!925801 (dropList!939 v!6381 from!862) lambda!98705))))

(declare-fun list!11461 (BalanceConc!18644) List!30588)

(assert (=> b!2631228 (= lt!925801 (list!11461 v!6381))))

(assert (=> b!2631229 (= e!1660221 (and tp!834266 tp!834268))))

(declare-fun e!1660227 () Bool)

(declare-fun b!2631230 () Bool)

(declare-fun tp!834265 () Bool)

(declare-fun e!1660216 () Bool)

(declare-fun inv!21 (TokenValue!4858) Bool)

(assert (=> b!2631230 (= e!1660227 (and (inv!21 (value!149732 separatorToken!156)) e!1660216 tp!834265))))

(declare-fun b!2631231 () Bool)

(declare-fun e!1660215 () Bool)

(declare-fun tp!834271 () Bool)

(assert (=> b!2631231 (= e!1660215 (and e!1660213 tp!834271))))

(declare-fun b!2631232 () Bool)

(declare-fun e!1660222 () Bool)

(assert (=> b!2631232 (= e!1660222 e!1660226)))

(declare-fun res!1107833 () Bool)

(assert (=> b!2631232 (=> (not res!1107833) (not e!1660226))))

(assert (=> b!2631232 (= res!1107833 (<= from!862 lt!925804))))

(declare-fun size!23567 (BalanceConc!18644) Int)

(assert (=> b!2631232 (= lt!925804 (size!23567 v!6381))))

(assert (=> b!2631233 (= e!1660225 e!1660223)))

(declare-fun res!1107835 () Bool)

(assert (=> b!2631233 (=> res!1107835 e!1660223)))

(declare-fun lt!925803 () Bool)

(declare-datatypes ((tuple2!29976 0))(
  ( (tuple2!29977 (_1!17530 Token!8742) (_2!17530 BalanceConc!18642)) )
))
(declare-datatypes ((Option!6023 0))(
  ( (None!6022) (Some!6022 (v!32415 tuple2!29976)) )
))
(declare-fun lt!925805 () Option!6023)

(assert (=> b!2631233 (= res!1107835 (or (and (not lt!925803) (= (_1!17530 (v!32415 lt!925805)) lt!925809)) (and (not lt!925803) (not (= (_1!17530 (v!32415 lt!925805)) lt!925809))) (not (is-None!6022 lt!925805))))))

(assert (=> b!2631233 (= lt!925803 (not (is-Some!6022 lt!925805)))))

(declare-fun maxPrefixZipperSequence!959 (LexerInterface!4233 List!30587 BalanceConc!18642) Option!6023)

(declare-fun ++!7418 (BalanceConc!18642 BalanceConc!18642) BalanceConc!18642)

(declare-fun charsOf!2923 (Token!8742) BalanceConc!18642)

(declare-fun printWithSeparatorTokenWhenNeededRec!507 (LexerInterface!4233 List!30587 BalanceConc!18644 Token!8742 Int) BalanceConc!18642)

(assert (=> b!2631233 (= lt!925805 (maxPrefixZipperSequence!959 thiss!14197 rules!1726 (++!7418 (charsOf!2923 lt!925809) (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun lt!925811 () Unit!44494)

(declare-fun forallContained!988 (List!30588 Int Token!8742) Unit!44494)

(assert (=> b!2631233 (= lt!925811 (forallContained!988 lt!925801 lambda!98706 lt!925809))))

(declare-fun b!2631234 () Bool)

(assert (=> b!2631234 (= e!1660217 (not e!1660225))))

(declare-fun res!1107826 () Bool)

(assert (=> b!2631234 (=> res!1107826 e!1660225)))

(declare-fun contains!5778 (BalanceConc!18644 Token!8742) Bool)

(assert (=> b!2631234 (= res!1107826 (not (contains!5778 v!6381 lt!925809)))))

(declare-fun apply!7257 (BalanceConc!18644 Int) Token!8742)

(assert (=> b!2631234 (= lt!925809 (apply!7257 v!6381 from!862))))

(declare-fun lt!925808 () List!30588)

(declare-fun tail!4273 (List!30588) List!30588)

(declare-fun drop!1632 (List!30588 Int) List!30588)

(assert (=> b!2631234 (= (tail!4273 lt!925808) (drop!1632 lt!925801 (+ 1 from!862)))))

(declare-fun lt!925802 () Unit!44494)

(declare-fun lemmaDropTail!821 (List!30588 Int) Unit!44494)

(assert (=> b!2631234 (= lt!925802 (lemmaDropTail!821 lt!925801 from!862))))

(declare-fun head!6035 (List!30588) Token!8742)

(declare-fun apply!7258 (List!30588 Int) Token!8742)

(assert (=> b!2631234 (= (head!6035 lt!925808) (apply!7258 lt!925801 from!862))))

(assert (=> b!2631234 (= lt!925808 (drop!1632 lt!925801 from!862))))

(declare-fun lt!925800 () Unit!44494)

(declare-fun lemmaDropApply!847 (List!30588 Int) Unit!44494)

(assert (=> b!2631234 (= lt!925800 (lemmaDropApply!847 lt!925801 from!862))))

(declare-fun b!2631235 () Bool)

(declare-fun res!1107827 () Bool)

(assert (=> b!2631235 (=> (not res!1107827) (not e!1660226))))

(declare-fun rulesInvariant!3733 (LexerInterface!4233 List!30587) Bool)

(assert (=> b!2631235 (= res!1107827 (rulesInvariant!3733 thiss!14197 rules!1726))))

(declare-fun e!1660220 () Bool)

(assert (=> b!2631236 (= e!1660220 (and tp!834269 tp!834267))))

(declare-fun res!1107832 () Bool)

(assert (=> start!255864 (=> (not res!1107832) (not e!1660222))))

(assert (=> start!255864 (= res!1107832 (and (is-Lexer!4231 thiss!14197) (>= from!862 0)))))

(assert (=> start!255864 e!1660222))

(assert (=> start!255864 true))

(assert (=> start!255864 e!1660215))

(declare-fun inv!41332 (Token!8742) Bool)

(assert (=> start!255864 (and (inv!41332 separatorToken!156) e!1660227)))

(declare-fun inv!41333 (BalanceConc!18644) Bool)

(assert (=> start!255864 (and (inv!41333 v!6381) e!1660214)))

(declare-fun b!2631237 () Bool)

(declare-fun tp!834270 () Bool)

(assert (=> b!2631237 (= e!1660216 (and tp!834270 (inv!41327 (tag!5130 (rule!7018 separatorToken!156))) (inv!41330 (transformation!4636 (rule!7018 separatorToken!156))) e!1660220))))

(declare-fun b!2631238 () Bool)

(declare-fun res!1107830 () Bool)

(assert (=> b!2631238 (=> (not res!1107830) (not e!1660226))))

(declare-fun isEmpty!17382 (List!30587) Bool)

(assert (=> b!2631238 (= res!1107830 (not (isEmpty!17382 rules!1726)))))

(declare-fun b!2631239 () Bool)

(declare-fun res!1107828 () Bool)

(assert (=> b!2631239 (=> (not res!1107828) (not e!1660226))))

(declare-fun sepAndNonSepRulesDisjointChars!1209 (List!30587 List!30587) Bool)

(assert (=> b!2631239 (= res!1107828 (sepAndNonSepRulesDisjointChars!1209 rules!1726 rules!1726))))

(declare-fun res!1107831 () Bool)

(assert (=> b!2631240 (=> (not res!1107831) (not e!1660226))))

(declare-fun forall!6377 (BalanceConc!18644 Int) Bool)

(assert (=> b!2631240 (= res!1107831 (forall!6377 v!6381 lambda!98705))))

(assert (= (and start!255864 res!1107832) b!2631232))

(assert (= (and b!2631232 res!1107833) b!2631238))

(assert (= (and b!2631238 res!1107830) b!2631235))

(assert (= (and b!2631235 res!1107827) b!2631222))

(assert (= (and b!2631222 res!1107834) b!2631221))

(assert (= (and b!2631221 res!1107825) b!2631223))

(assert (= (and b!2631223 res!1107829) b!2631240))

(assert (= (and b!2631240 res!1107831) b!2631239))

(assert (= (and b!2631239 res!1107828) b!2631228))

(assert (= (and b!2631228 res!1107836) b!2631234))

(assert (= (and b!2631234 (not res!1107826)) b!2631225))

(assert (= (and b!2631225 (not res!1107824)) b!2631233))

(assert (= (and b!2631233 (not res!1107835)) b!2631227))

(assert (= b!2631224 b!2631229))

(assert (= b!2631231 b!2631224))

(assert (= (and start!255864 (is-Cons!30487 rules!1726)) b!2631231))

(assert (= b!2631237 b!2631236))

(assert (= b!2631230 b!2631237))

(assert (= start!255864 b!2631230))

(assert (= start!255864 b!2631226))

(declare-fun m!2974129 () Bool)

(assert (=> b!2631225 m!2974129))

(declare-fun m!2974131 () Bool)

(assert (=> b!2631233 m!2974131))

(declare-fun m!2974133 () Bool)

(assert (=> b!2631233 m!2974133))

(declare-fun m!2974135 () Bool)

(assert (=> b!2631233 m!2974135))

(assert (=> b!2631233 m!2974133))

(declare-fun m!2974137 () Bool)

(assert (=> b!2631233 m!2974137))

(assert (=> b!2631233 m!2974131))

(assert (=> b!2631233 m!2974135))

(declare-fun m!2974139 () Bool)

(assert (=> b!2631233 m!2974139))

(declare-fun m!2974141 () Bool)

(assert (=> b!2631232 m!2974141))

(declare-fun m!2974143 () Bool)

(assert (=> b!2631239 m!2974143))

(declare-fun m!2974145 () Bool)

(assert (=> b!2631227 m!2974145))

(declare-fun m!2974147 () Bool)

(assert (=> b!2631227 m!2974147))

(declare-fun m!2974149 () Bool)

(assert (=> b!2631227 m!2974149))

(declare-fun m!2974151 () Bool)

(assert (=> b!2631227 m!2974151))

(declare-fun m!2974153 () Bool)

(assert (=> b!2631227 m!2974153))

(declare-fun m!2974155 () Bool)

(assert (=> b!2631221 m!2974155))

(declare-fun m!2974157 () Bool)

(assert (=> b!2631222 m!2974157))

(declare-fun m!2974159 () Bool)

(assert (=> b!2631240 m!2974159))

(declare-fun m!2974161 () Bool)

(assert (=> b!2631230 m!2974161))

(declare-fun m!2974163 () Bool)

(assert (=> start!255864 m!2974163))

(declare-fun m!2974165 () Bool)

(assert (=> start!255864 m!2974165))

(declare-fun m!2974167 () Bool)

(assert (=> b!2631226 m!2974167))

(declare-fun m!2974169 () Bool)

(assert (=> b!2631235 m!2974169))

(declare-fun m!2974171 () Bool)

(assert (=> b!2631224 m!2974171))

(declare-fun m!2974173 () Bool)

(assert (=> b!2631224 m!2974173))

(declare-fun m!2974175 () Bool)

(assert (=> b!2631234 m!2974175))

(declare-fun m!2974177 () Bool)

(assert (=> b!2631234 m!2974177))

(declare-fun m!2974179 () Bool)

(assert (=> b!2631234 m!2974179))

(declare-fun m!2974181 () Bool)

(assert (=> b!2631234 m!2974181))

(declare-fun m!2974183 () Bool)

(assert (=> b!2631234 m!2974183))

(declare-fun m!2974185 () Bool)

(assert (=> b!2631234 m!2974185))

(declare-fun m!2974187 () Bool)

(assert (=> b!2631234 m!2974187))

(declare-fun m!2974189 () Bool)

(assert (=> b!2631234 m!2974189))

(declare-fun m!2974191 () Bool)

(assert (=> b!2631234 m!2974191))

(declare-fun m!2974193 () Bool)

(assert (=> b!2631228 m!2974193))

(assert (=> b!2631228 m!2974193))

(declare-fun m!2974195 () Bool)

(assert (=> b!2631228 m!2974195))

(declare-fun m!2974197 () Bool)

(assert (=> b!2631228 m!2974197))

(declare-fun m!2974199 () Bool)

(assert (=> b!2631238 m!2974199))

(declare-fun m!2974201 () Bool)

(assert (=> b!2631237 m!2974201))

(declare-fun m!2974203 () Bool)

(assert (=> b!2631237 m!2974203))

(push 1)

(assert (not b!2631222))

(assert (not b_next!74905))

(assert b_and!192771)

(assert (not b!2631227))

(assert (not b!2631230))

(assert (not b!2631237))

(assert b_and!192777)

(assert b_and!192773)

(assert (not start!255864))

(assert (not b!2631221))

(assert (not b_next!74907))

(assert (not b!2631232))

(assert (not b!2631224))

(assert (not b!2631238))

(assert (not b_next!74903))

(assert (not b!2631235))

(assert (not b!2631239))

(assert (not b!2631226))

(assert (not b!2631234))

(assert b_and!192775)

(assert (not b!2631228))

(assert (not b!2631233))

(assert (not b_next!74901))

(assert (not b!2631249))

(assert (not b!2631231))

(assert (not b!2631240))

(assert (not b!2631225))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!74905))

(assert b_and!192771)

(assert (not b_next!74903))

(assert b_and!192775)

(assert b_and!192777)

(assert (not b_next!74901))

(assert b_and!192773)

(assert (not b_next!74907))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!746489 () Bool)

(declare-fun lt!925850 () Bool)

(declare-fun forall!6379 (List!30588 Int) Bool)

(assert (=> d!746489 (= lt!925850 (forall!6379 (list!11461 v!6381) lambda!98705))))

(declare-fun forall!6380 (Conc!9515 Int) Bool)

(assert (=> d!746489 (= lt!925850 (forall!6380 (c!422981 v!6381) lambda!98705))))

(assert (=> d!746489 (= (forall!6377 v!6381 lambda!98705) lt!925850)))

(declare-fun bs!475746 () Bool)

(assert (= bs!475746 d!746489))

(assert (=> bs!475746 m!2974197))

(assert (=> bs!475746 m!2974197))

(declare-fun m!2974281 () Bool)

(assert (=> bs!475746 m!2974281))

(declare-fun m!2974283 () Bool)

(assert (=> bs!475746 m!2974283))

(assert (=> b!2631240 d!746489))

(declare-fun d!746491 () Bool)

(declare-fun res!1107883 () Bool)

(declare-fun e!1660295 () Bool)

(assert (=> d!746491 (=> res!1107883 e!1660295)))

(assert (=> d!746491 (= res!1107883 (not (is-Cons!30487 rules!1726)))))

(assert (=> d!746491 (= (sepAndNonSepRulesDisjointChars!1209 rules!1726 rules!1726) e!1660295)))

(declare-fun b!2631331 () Bool)

(declare-fun e!1660296 () Bool)

(assert (=> b!2631331 (= e!1660295 e!1660296)))

(declare-fun res!1107884 () Bool)

(assert (=> b!2631331 (=> (not res!1107884) (not e!1660296))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!520 (Rule!9072 List!30587) Bool)

(assert (=> b!2631331 (= res!1107884 (ruleDisjointCharsFromAllFromOtherType!520 (h!35907 rules!1726) rules!1726))))

(declare-fun b!2631332 () Bool)

(assert (=> b!2631332 (= e!1660296 (sepAndNonSepRulesDisjointChars!1209 rules!1726 (t!216404 rules!1726)))))

(assert (= (and d!746491 (not res!1107883)) b!2631331))

(assert (= (and b!2631331 res!1107884) b!2631332))

(declare-fun m!2974285 () Bool)

(assert (=> b!2631331 m!2974285))

(declare-fun m!2974287 () Bool)

(assert (=> b!2631332 m!2974287))

(assert (=> b!2631239 d!746491))

(declare-fun b!2631343 () Bool)

(declare-fun e!1660305 () Bool)

(declare-fun inv!15 (TokenValue!4858) Bool)

(assert (=> b!2631343 (= e!1660305 (inv!15 (value!149732 separatorToken!156)))))

(declare-fun d!746493 () Bool)

(declare-fun c!422990 () Bool)

(assert (=> d!746493 (= c!422990 (is-IntegerValue!14574 (value!149732 separatorToken!156)))))

(declare-fun e!1660303 () Bool)

(assert (=> d!746493 (= (inv!21 (value!149732 separatorToken!156)) e!1660303)))

(declare-fun b!2631344 () Bool)

(declare-fun res!1107888 () Bool)

(assert (=> b!2631344 (=> res!1107888 e!1660305)))

(assert (=> b!2631344 (= res!1107888 (not (is-IntegerValue!14576 (value!149732 separatorToken!156))))))

(declare-fun e!1660304 () Bool)

(assert (=> b!2631344 (= e!1660304 e!1660305)))

(declare-fun b!2631345 () Bool)

(declare-fun inv!17 (TokenValue!4858) Bool)

(assert (=> b!2631345 (= e!1660304 (inv!17 (value!149732 separatorToken!156)))))

(declare-fun b!2631346 () Bool)

(assert (=> b!2631346 (= e!1660303 e!1660304)))

(declare-fun c!422989 () Bool)

(assert (=> b!2631346 (= c!422989 (is-IntegerValue!14575 (value!149732 separatorToken!156)))))

(declare-fun b!2631347 () Bool)

(declare-fun inv!16 (TokenValue!4858) Bool)

(assert (=> b!2631347 (= e!1660303 (inv!16 (value!149732 separatorToken!156)))))

(assert (= (and d!746493 c!422990) b!2631347))

(assert (= (and d!746493 (not c!422990)) b!2631346))

(assert (= (and b!2631346 c!422989) b!2631345))

(assert (= (and b!2631346 (not c!422989)) b!2631344))

(assert (= (and b!2631344 (not res!1107888)) b!2631343))

(declare-fun m!2974289 () Bool)

(assert (=> b!2631343 m!2974289))

(declare-fun m!2974291 () Bool)

(assert (=> b!2631345 m!2974291))

(declare-fun m!2974293 () Bool)

(assert (=> b!2631347 m!2974293))

(assert (=> b!2631230 d!746493))

(declare-fun d!746495 () Bool)

(assert (=> d!746495 (= (inv!41327 (tag!5130 (rule!7018 separatorToken!156))) (= (mod (str.len (value!149706 (tag!5130 (rule!7018 separatorToken!156)))) 2) 0))))

(assert (=> b!2631237 d!746495))

(declare-fun d!746497 () Bool)

(declare-fun res!1107893 () Bool)

(declare-fun e!1660308 () Bool)

(assert (=> d!746497 (=> (not res!1107893) (not e!1660308))))

(declare-fun semiInverseModEq!1913 (Int Int) Bool)

(assert (=> d!746497 (= res!1107893 (semiInverseModEq!1913 (toChars!6409 (transformation!4636 (rule!7018 separatorToken!156))) (toValue!6550 (transformation!4636 (rule!7018 separatorToken!156)))))))

(assert (=> d!746497 (= (inv!41330 (transformation!4636 (rule!7018 separatorToken!156))) e!1660308)))

(declare-fun b!2631350 () Bool)

(declare-fun equivClasses!1814 (Int Int) Bool)

(assert (=> b!2631350 (= e!1660308 (equivClasses!1814 (toChars!6409 (transformation!4636 (rule!7018 separatorToken!156))) (toValue!6550 (transformation!4636 (rule!7018 separatorToken!156)))))))

(assert (= (and d!746497 res!1107893) b!2631350))

(declare-fun m!2974295 () Bool)

(assert (=> d!746497 m!2974295))

(declare-fun m!2974297 () Bool)

(assert (=> b!2631350 m!2974297))

(assert (=> b!2631237 d!746497))

(declare-fun d!746499 () Bool)

(declare-fun res!1107899 () Bool)

(declare-fun e!1660311 () Bool)

(assert (=> d!746499 (=> (not res!1107899) (not e!1660311))))

(declare-fun isEmpty!17384 (List!30586) Bool)

(assert (=> d!746499 (= res!1107899 (not (isEmpty!17384 (originalCharacters!5402 separatorToken!156))))))

(assert (=> d!746499 (= (inv!41332 separatorToken!156) e!1660311)))

(declare-fun b!2631355 () Bool)

(declare-fun res!1107900 () Bool)

(assert (=> b!2631355 (=> (not res!1107900) (not e!1660311))))

(declare-fun dynLambda!13057 (Int TokenValue!4858) BalanceConc!18642)

(assert (=> b!2631355 (= res!1107900 (= (originalCharacters!5402 separatorToken!156) (list!11460 (dynLambda!13057 (toChars!6409 (transformation!4636 (rule!7018 separatorToken!156))) (value!149732 separatorToken!156)))))))

(declare-fun b!2631356 () Bool)

(declare-fun size!23570 (List!30586) Int)

(assert (=> b!2631356 (= e!1660311 (= (size!23566 separatorToken!156) (size!23570 (originalCharacters!5402 separatorToken!156))))))

(assert (= (and d!746499 res!1107899) b!2631355))

(assert (= (and b!2631355 res!1107900) b!2631356))

(declare-fun b_lambda!79223 () Bool)

(assert (=> (not b_lambda!79223) (not b!2631355)))

(declare-fun t!216415 () Bool)

(declare-fun tb!143583 () Bool)

(assert (=> (and b!2631229 (= (toChars!6409 (transformation!4636 (h!35907 rules!1726))) (toChars!6409 (transformation!4636 (rule!7018 separatorToken!156)))) t!216415) tb!143583))

(declare-fun b!2631361 () Bool)

(declare-fun e!1660314 () Bool)

(declare-fun tp!834303 () Bool)

(declare-fun inv!41338 (Conc!9514) Bool)

(assert (=> b!2631361 (= e!1660314 (and (inv!41338 (c!422980 (dynLambda!13057 (toChars!6409 (transformation!4636 (rule!7018 separatorToken!156))) (value!149732 separatorToken!156)))) tp!834303))))

(declare-fun result!178438 () Bool)

(declare-fun inv!41339 (BalanceConc!18642) Bool)

(assert (=> tb!143583 (= result!178438 (and (inv!41339 (dynLambda!13057 (toChars!6409 (transformation!4636 (rule!7018 separatorToken!156))) (value!149732 separatorToken!156))) e!1660314))))

(assert (= tb!143583 b!2631361))

(declare-fun m!2974299 () Bool)

(assert (=> b!2631361 m!2974299))

(declare-fun m!2974301 () Bool)

(assert (=> tb!143583 m!2974301))

(assert (=> b!2631355 t!216415))

(declare-fun b_and!192787 () Bool)

(assert (= b_and!192773 (and (=> t!216415 result!178438) b_and!192787)))

(declare-fun t!216417 () Bool)

(declare-fun tb!143585 () Bool)

(assert (=> (and b!2631236 (= (toChars!6409 (transformation!4636 (rule!7018 separatorToken!156))) (toChars!6409 (transformation!4636 (rule!7018 separatorToken!156)))) t!216417) tb!143585))

(declare-fun result!178442 () Bool)

(assert (= result!178442 result!178438))

(assert (=> b!2631355 t!216417))

(declare-fun b_and!192789 () Bool)

(assert (= b_and!192777 (and (=> t!216417 result!178442) b_and!192789)))

(declare-fun m!2974303 () Bool)

(assert (=> d!746499 m!2974303))

(declare-fun m!2974305 () Bool)

(assert (=> b!2631355 m!2974305))

(assert (=> b!2631355 m!2974305))

(declare-fun m!2974307 () Bool)

(assert (=> b!2631355 m!2974307))

(declare-fun m!2974309 () Bool)

(assert (=> b!2631356 m!2974309))

(assert (=> start!255864 d!746499))

(declare-fun d!746501 () Bool)

(declare-fun isBalanced!2872 (Conc!9515) Bool)

(assert (=> d!746501 (= (inv!41333 v!6381) (isBalanced!2872 (c!422981 v!6381)))))

(declare-fun bs!475747 () Bool)

(assert (= bs!475747 d!746501))

(declare-fun m!2974311 () Bool)

(assert (=> bs!475747 m!2974311))

(assert (=> start!255864 d!746501))

(declare-fun d!746503 () Bool)

(declare-fun c!422993 () Bool)

(assert (=> d!746503 (= c!422993 (is-Node!9515 (c!422981 v!6381)))))

(declare-fun e!1660319 () Bool)

(assert (=> d!746503 (= (inv!41331 (c!422981 v!6381)) e!1660319)))

(declare-fun b!2631368 () Bool)

(declare-fun inv!41340 (Conc!9515) Bool)

(assert (=> b!2631368 (= e!1660319 (inv!41340 (c!422981 v!6381)))))

(declare-fun b!2631369 () Bool)

(declare-fun e!1660320 () Bool)

(assert (=> b!2631369 (= e!1660319 e!1660320)))

(declare-fun res!1107905 () Bool)

(assert (=> b!2631369 (= res!1107905 (not (is-Leaf!14574 (c!422981 v!6381))))))

(assert (=> b!2631369 (=> res!1107905 e!1660320)))

(declare-fun b!2631370 () Bool)

(declare-fun inv!41341 (Conc!9515) Bool)

(assert (=> b!2631370 (= e!1660320 (inv!41341 (c!422981 v!6381)))))

(assert (= (and d!746503 c!422993) b!2631368))

(assert (= (and d!746503 (not c!422993)) b!2631369))

(assert (= (and b!2631369 (not res!1107905)) b!2631370))

(declare-fun m!2974313 () Bool)

(assert (=> b!2631368 m!2974313))

(declare-fun m!2974315 () Bool)

(assert (=> b!2631370 m!2974315))

(assert (=> b!2631226 d!746503))

(declare-fun d!746505 () Bool)

(assert (=> d!746505 (forall!6379 (dropList!939 v!6381 from!862) lambda!98705)))

(declare-fun lt!925853 () Unit!44494)

(declare-fun choose!15610 (List!30588 List!30588 Int) Unit!44494)

(assert (=> d!746505 (= lt!925853 (choose!15610 lt!925801 (dropList!939 v!6381 from!862) lambda!98705))))

(assert (=> d!746505 (forall!6379 lt!925801 lambda!98705)))

(assert (=> d!746505 (= (lemmaContentSubsetPreservesForall!305 lt!925801 (dropList!939 v!6381 from!862) lambda!98705) lt!925853)))

(declare-fun bs!475748 () Bool)

(assert (= bs!475748 d!746505))

(assert (=> bs!475748 m!2974193))

(declare-fun m!2974317 () Bool)

(assert (=> bs!475748 m!2974317))

(assert (=> bs!475748 m!2974193))

(declare-fun m!2974319 () Bool)

(assert (=> bs!475748 m!2974319))

(declare-fun m!2974321 () Bool)

(assert (=> bs!475748 m!2974321))

(assert (=> b!2631228 d!746505))

(declare-fun d!746507 () Bool)

(declare-fun list!11464 (Conc!9515) List!30588)

(assert (=> d!746507 (= (dropList!939 v!6381 from!862) (drop!1632 (list!11464 (c!422981 v!6381)) from!862))))

(declare-fun bs!475749 () Bool)

(assert (= bs!475749 d!746507))

(declare-fun m!2974323 () Bool)

(assert (=> bs!475749 m!2974323))

(assert (=> bs!475749 m!2974323))

(declare-fun m!2974325 () Bool)

(assert (=> bs!475749 m!2974325))

(assert (=> b!2631228 d!746507))

(declare-fun d!746509 () Bool)

(assert (=> d!746509 (= (list!11461 v!6381) (list!11464 (c!422981 v!6381)))))

(declare-fun bs!475750 () Bool)

(assert (= bs!475750 d!746509))

(assert (=> bs!475750 m!2974323))

(assert (=> b!2631228 d!746509))

(declare-fun d!746511 () Bool)

(declare-fun e!1660323 () Bool)

(assert (=> d!746511 e!1660323))

(declare-fun res!1107908 () Bool)

(assert (=> d!746511 (=> (not res!1107908) (not e!1660323))))

(declare-fun lt!925856 () BalanceConc!18644)

(assert (=> d!746511 (= res!1107908 (= (list!11461 lt!925856) (Cons!30488 lt!925809 Nil!30488)))))

(declare-fun singleton!907 (Token!8742) BalanceConc!18644)

(assert (=> d!746511 (= lt!925856 (singleton!907 lt!925809))))

(assert (=> d!746511 (= (singletonSeq!2053 lt!925809) lt!925856)))

(declare-fun b!2631373 () Bool)

(assert (=> b!2631373 (= e!1660323 (isBalanced!2872 (c!422981 lt!925856)))))

(assert (= (and d!746511 res!1107908) b!2631373))

(declare-fun m!2974327 () Bool)

(assert (=> d!746511 m!2974327))

(declare-fun m!2974329 () Bool)

(assert (=> d!746511 m!2974329))

(declare-fun m!2974331 () Bool)

(assert (=> b!2631373 m!2974331))

(assert (=> b!2631227 d!746511))

(declare-fun d!746513 () Bool)

(declare-fun lt!925859 () BalanceConc!18642)

(assert (=> d!746513 (= (list!11460 lt!925859) (printList!1161 thiss!14197 (list!11461 lt!925810)))))

(assert (=> d!746513 (= lt!925859 (printTailRec!1120 thiss!14197 lt!925810 0 (BalanceConc!18643 Empty!9514)))))

(assert (=> d!746513 (= (print!1634 thiss!14197 lt!925810) lt!925859)))

(declare-fun bs!475751 () Bool)

(assert (= bs!475751 d!746513))

(declare-fun m!2974333 () Bool)

(assert (=> bs!475751 m!2974333))

(declare-fun m!2974335 () Bool)

(assert (=> bs!475751 m!2974335))

(assert (=> bs!475751 m!2974335))

(declare-fun m!2974337 () Bool)

(assert (=> bs!475751 m!2974337))

(assert (=> bs!475751 m!2974153))

(assert (=> b!2631227 d!746513))

(declare-fun d!746515 () Bool)

(declare-fun lt!925876 () BalanceConc!18642)

(declare-fun printListTailRec!502 (LexerInterface!4233 List!30588 List!30586) List!30586)

(assert (=> d!746515 (= (list!11460 lt!925876) (printListTailRec!502 thiss!14197 (dropList!939 lt!925810 0) (list!11460 (BalanceConc!18643 Empty!9514))))))

(declare-fun e!1660328 () BalanceConc!18642)

(assert (=> d!746515 (= lt!925876 e!1660328)))

(declare-fun c!422996 () Bool)

(assert (=> d!746515 (= c!422996 (>= 0 (size!23567 lt!925810)))))

(declare-fun e!1660329 () Bool)

(assert (=> d!746515 e!1660329))

(declare-fun res!1107911 () Bool)

(assert (=> d!746515 (=> (not res!1107911) (not e!1660329))))

(assert (=> d!746515 (= res!1107911 (>= 0 0))))

(assert (=> d!746515 (= (printTailRec!1120 thiss!14197 lt!925810 0 (BalanceConc!18643 Empty!9514)) lt!925876)))

(declare-fun b!2631380 () Bool)

(assert (=> b!2631380 (= e!1660329 (<= 0 (size!23567 lt!925810)))))

(declare-fun b!2631381 () Bool)

(assert (=> b!2631381 (= e!1660328 (BalanceConc!18643 Empty!9514))))

(declare-fun b!2631382 () Bool)

(assert (=> b!2631382 (= e!1660328 (printTailRec!1120 thiss!14197 lt!925810 (+ 0 1) (++!7418 (BalanceConc!18643 Empty!9514) (charsOf!2923 (apply!7257 lt!925810 0)))))))

(declare-fun lt!925880 () List!30588)

(assert (=> b!2631382 (= lt!925880 (list!11461 lt!925810))))

(declare-fun lt!925875 () Unit!44494)

(assert (=> b!2631382 (= lt!925875 (lemmaDropApply!847 lt!925880 0))))

(assert (=> b!2631382 (= (head!6035 (drop!1632 lt!925880 0)) (apply!7258 lt!925880 0))))

(declare-fun lt!925877 () Unit!44494)

(assert (=> b!2631382 (= lt!925877 lt!925875)))

(declare-fun lt!925879 () List!30588)

(assert (=> b!2631382 (= lt!925879 (list!11461 lt!925810))))

(declare-fun lt!925874 () Unit!44494)

(assert (=> b!2631382 (= lt!925874 (lemmaDropTail!821 lt!925879 0))))

(assert (=> b!2631382 (= (tail!4273 (drop!1632 lt!925879 0)) (drop!1632 lt!925879 (+ 0 1)))))

(declare-fun lt!925878 () Unit!44494)

(assert (=> b!2631382 (= lt!925878 lt!925874)))

(assert (= (and d!746515 res!1107911) b!2631380))

(assert (= (and d!746515 c!422996) b!2631381))

(assert (= (and d!746515 (not c!422996)) b!2631382))

(declare-fun m!2974339 () Bool)

(assert (=> d!746515 m!2974339))

(declare-fun m!2974341 () Bool)

(assert (=> d!746515 m!2974341))

(declare-fun m!2974343 () Bool)

(assert (=> d!746515 m!2974343))

(declare-fun m!2974345 () Bool)

(assert (=> d!746515 m!2974345))

(declare-fun m!2974347 () Bool)

(assert (=> d!746515 m!2974347))

(assert (=> d!746515 m!2974341))

(assert (=> d!746515 m!2974343))

(assert (=> b!2631380 m!2974339))

(declare-fun m!2974349 () Bool)

(assert (=> b!2631382 m!2974349))

(declare-fun m!2974351 () Bool)

(assert (=> b!2631382 m!2974351))

(declare-fun m!2974353 () Bool)

(assert (=> b!2631382 m!2974353))

(declare-fun m!2974355 () Bool)

(assert (=> b!2631382 m!2974355))

(declare-fun m!2974357 () Bool)

(assert (=> b!2631382 m!2974357))

(assert (=> b!2631382 m!2974335))

(assert (=> b!2631382 m!2974349))

(declare-fun m!2974359 () Bool)

(assert (=> b!2631382 m!2974359))

(declare-fun m!2974361 () Bool)

(assert (=> b!2631382 m!2974361))

(assert (=> b!2631382 m!2974351))

(declare-fun m!2974363 () Bool)

(assert (=> b!2631382 m!2974363))

(declare-fun m!2974365 () Bool)

(assert (=> b!2631382 m!2974365))

(declare-fun m!2974367 () Bool)

(assert (=> b!2631382 m!2974367))

(assert (=> b!2631382 m!2974367))

(assert (=> b!2631382 m!2974355))

(declare-fun m!2974369 () Bool)

(assert (=> b!2631382 m!2974369))

(assert (=> b!2631382 m!2974357))

(declare-fun m!2974371 () Bool)

(assert (=> b!2631382 m!2974371))

(assert (=> b!2631227 d!746515))

(declare-fun d!746517 () Bool)

(declare-fun list!11465 (Conc!9514) List!30586)

(assert (=> d!746517 (= (list!11460 lt!925806) (list!11465 (c!422980 lt!925806)))))

(declare-fun bs!475752 () Bool)

(assert (= bs!475752 d!746517))

(declare-fun m!2974373 () Bool)

(assert (=> bs!475752 m!2974373))

(assert (=> b!2631227 d!746517))

(declare-fun d!746519 () Bool)

(declare-fun c!422999 () Bool)

(assert (=> d!746519 (= c!422999 (is-Cons!30488 (Cons!30488 lt!925809 Nil!30488)))))

(declare-fun e!1660332 () List!30586)

(assert (=> d!746519 (= (printList!1161 thiss!14197 (Cons!30488 lt!925809 Nil!30488)) e!1660332)))

(declare-fun b!2631387 () Bool)

(declare-fun ++!7420 (List!30586 List!30586) List!30586)

(assert (=> b!2631387 (= e!1660332 (++!7420 (list!11460 (charsOf!2923 (h!35908 (Cons!30488 lt!925809 Nil!30488)))) (printList!1161 thiss!14197 (t!216405 (Cons!30488 lt!925809 Nil!30488)))))))

(declare-fun b!2631388 () Bool)

(assert (=> b!2631388 (= e!1660332 Nil!30486)))

(assert (= (and d!746519 c!422999) b!2631387))

(assert (= (and d!746519 (not c!422999)) b!2631388))

(declare-fun m!2974375 () Bool)

(assert (=> b!2631387 m!2974375))

(assert (=> b!2631387 m!2974375))

(declare-fun m!2974377 () Bool)

(assert (=> b!2631387 m!2974377))

(declare-fun m!2974379 () Bool)

(assert (=> b!2631387 m!2974379))

(assert (=> b!2631387 m!2974377))

(assert (=> b!2631387 m!2974379))

(declare-fun m!2974381 () Bool)

(assert (=> b!2631387 m!2974381))

(assert (=> b!2631227 d!746519))

(declare-fun d!746521 () Bool)

(assert (=> d!746521 (= (isEmpty!17382 rules!1726) (is-Nil!30487 rules!1726))))

(assert (=> b!2631238 d!746521))

(declare-fun d!746523 () Bool)

(assert (=> d!746523 (= (inv!41327 (tag!5130 (h!35907 rules!1726))) (= (mod (str.len (value!149706 (tag!5130 (h!35907 rules!1726)))) 2) 0))))

(assert (=> b!2631224 d!746523))

(declare-fun d!746525 () Bool)

(declare-fun res!1107912 () Bool)

(declare-fun e!1660333 () Bool)

(assert (=> d!746525 (=> (not res!1107912) (not e!1660333))))

(assert (=> d!746525 (= res!1107912 (semiInverseModEq!1913 (toChars!6409 (transformation!4636 (h!35907 rules!1726))) (toValue!6550 (transformation!4636 (h!35907 rules!1726)))))))

(assert (=> d!746525 (= (inv!41330 (transformation!4636 (h!35907 rules!1726))) e!1660333)))

(declare-fun b!2631389 () Bool)

(assert (=> b!2631389 (= e!1660333 (equivClasses!1814 (toChars!6409 (transformation!4636 (h!35907 rules!1726))) (toValue!6550 (transformation!4636 (h!35907 rules!1726)))))))

(assert (= (and d!746525 res!1107912) b!2631389))

(declare-fun m!2974383 () Bool)

(assert (=> d!746525 m!2974383))

(declare-fun m!2974385 () Bool)

(assert (=> b!2631389 m!2974385))

(assert (=> b!2631224 d!746525))

(declare-fun d!746527 () Bool)

(declare-fun e!1660345 () Bool)

(assert (=> d!746527 e!1660345))

(declare-fun res!1107915 () Bool)

(assert (=> d!746527 (=> (not res!1107915) (not e!1660345))))

(declare-fun lt!925883 () List!30588)

(declare-fun content!4304 (List!30588) (Set Token!8742))

(assert (=> d!746527 (= res!1107915 (set.subset (content!4304 lt!925883) (content!4304 lt!925801)))))

(declare-fun e!1660346 () List!30588)

(assert (=> d!746527 (= lt!925883 e!1660346)))

(declare-fun c!423009 () Bool)

(assert (=> d!746527 (= c!423009 (is-Nil!30488 lt!925801))))

(assert (=> d!746527 (= (drop!1632 lt!925801 from!862) lt!925883)))

(declare-fun b!2631408 () Bool)

(assert (=> b!2631408 (= e!1660346 Nil!30488)))

(declare-fun b!2631409 () Bool)

(declare-fun e!1660347 () Int)

(declare-fun call!169211 () Int)

(assert (=> b!2631409 (= e!1660347 (- call!169211 from!862))))

(declare-fun b!2631410 () Bool)

(declare-fun e!1660344 () List!30588)

(assert (=> b!2631410 (= e!1660344 (drop!1632 (t!216405 lt!925801) (- from!862 1)))))

(declare-fun b!2631411 () Bool)

(assert (=> b!2631411 (= e!1660346 e!1660344)))

(declare-fun c!423011 () Bool)

(assert (=> b!2631411 (= c!423011 (<= from!862 0))))

(declare-fun b!2631412 () Bool)

(assert (=> b!2631412 (= e!1660344 lt!925801)))

(declare-fun b!2631413 () Bool)

(declare-fun e!1660348 () Int)

(assert (=> b!2631413 (= e!1660348 e!1660347)))

(declare-fun c!423008 () Bool)

(assert (=> b!2631413 (= c!423008 (>= from!862 call!169211))))

(declare-fun b!2631414 () Bool)

(assert (=> b!2631414 (= e!1660347 0)))

(declare-fun bm!169206 () Bool)

(declare-fun size!23571 (List!30588) Int)

(assert (=> bm!169206 (= call!169211 (size!23571 lt!925801))))

(declare-fun b!2631415 () Bool)

(assert (=> b!2631415 (= e!1660345 (= (size!23571 lt!925883) e!1660348))))

(declare-fun c!423010 () Bool)

(assert (=> b!2631415 (= c!423010 (<= from!862 0))))

(declare-fun b!2631416 () Bool)

(assert (=> b!2631416 (= e!1660348 call!169211)))

(assert (= (and d!746527 c!423009) b!2631408))

(assert (= (and d!746527 (not c!423009)) b!2631411))

(assert (= (and b!2631411 c!423011) b!2631412))

(assert (= (and b!2631411 (not c!423011)) b!2631410))

(assert (= (and d!746527 res!1107915) b!2631415))

(assert (= (and b!2631415 c!423010) b!2631416))

(assert (= (and b!2631415 (not c!423010)) b!2631413))

(assert (= (and b!2631413 c!423008) b!2631414))

(assert (= (and b!2631413 (not c!423008)) b!2631409))

(assert (= (or b!2631416 b!2631413 b!2631409) bm!169206))

(declare-fun m!2974387 () Bool)

(assert (=> d!746527 m!2974387))

(declare-fun m!2974389 () Bool)

(assert (=> d!746527 m!2974389))

(declare-fun m!2974391 () Bool)

(assert (=> b!2631410 m!2974391))

(declare-fun m!2974393 () Bool)

(assert (=> bm!169206 m!2974393))

(declare-fun m!2974395 () Bool)

(assert (=> b!2631415 m!2974395))

(assert (=> b!2631234 d!746527))

(declare-fun d!746529 () Bool)

(declare-fun lt!925886 () Bool)

(assert (=> d!746529 (= lt!925886 (contains!5777 (list!11461 v!6381) lt!925809))))

(declare-fun contains!5781 (Conc!9515 Token!8742) Bool)

(assert (=> d!746529 (= lt!925886 (contains!5781 (c!422981 v!6381) lt!925809))))

(assert (=> d!746529 (= (contains!5778 v!6381 lt!925809) lt!925886)))

(declare-fun bs!475753 () Bool)

(assert (= bs!475753 d!746529))

(assert (=> bs!475753 m!2974197))

(assert (=> bs!475753 m!2974197))

(declare-fun m!2974397 () Bool)

(assert (=> bs!475753 m!2974397))

(declare-fun m!2974399 () Bool)

(assert (=> bs!475753 m!2974399))

(assert (=> b!2631234 d!746529))

(declare-fun d!746533 () Bool)

(assert (=> d!746533 (= (tail!4273 (drop!1632 lt!925801 from!862)) (drop!1632 lt!925801 (+ from!862 1)))))

(declare-fun lt!925889 () Unit!44494)

(declare-fun choose!15611 (List!30588 Int) Unit!44494)

(assert (=> d!746533 (= lt!925889 (choose!15611 lt!925801 from!862))))

(declare-fun e!1660351 () Bool)

(assert (=> d!746533 e!1660351))

(declare-fun res!1107918 () Bool)

(assert (=> d!746533 (=> (not res!1107918) (not e!1660351))))

(assert (=> d!746533 (= res!1107918 (>= from!862 0))))

(assert (=> d!746533 (= (lemmaDropTail!821 lt!925801 from!862) lt!925889)))

(declare-fun b!2631419 () Bool)

(assert (=> b!2631419 (= e!1660351 (< from!862 (size!23571 lt!925801)))))

(assert (= (and d!746533 res!1107918) b!2631419))

(assert (=> d!746533 m!2974187))

(assert (=> d!746533 m!2974187))

(declare-fun m!2974401 () Bool)

(assert (=> d!746533 m!2974401))

(declare-fun m!2974403 () Bool)

(assert (=> d!746533 m!2974403))

(declare-fun m!2974405 () Bool)

(assert (=> d!746533 m!2974405))

(assert (=> b!2631419 m!2974393))

(assert (=> b!2631234 d!746533))

(declare-fun d!746535 () Bool)

(assert (=> d!746535 (= (tail!4273 lt!925808) (t!216405 lt!925808))))

(assert (=> b!2631234 d!746535))

(declare-fun d!746537 () Bool)

(declare-fun lt!925892 () Token!8742)

(assert (=> d!746537 (contains!5777 lt!925801 lt!925892)))

(declare-fun e!1660357 () Token!8742)

(assert (=> d!746537 (= lt!925892 e!1660357)))

(declare-fun c!423014 () Bool)

(assert (=> d!746537 (= c!423014 (= from!862 0))))

(declare-fun e!1660356 () Bool)

(assert (=> d!746537 e!1660356))

(declare-fun res!1107921 () Bool)

(assert (=> d!746537 (=> (not res!1107921) (not e!1660356))))

(assert (=> d!746537 (= res!1107921 (<= 0 from!862))))

(assert (=> d!746537 (= (apply!7258 lt!925801 from!862) lt!925892)))

(declare-fun b!2631426 () Bool)

(assert (=> b!2631426 (= e!1660356 (< from!862 (size!23571 lt!925801)))))

(declare-fun b!2631427 () Bool)

(assert (=> b!2631427 (= e!1660357 (head!6035 lt!925801))))

(declare-fun b!2631428 () Bool)

(assert (=> b!2631428 (= e!1660357 (apply!7258 (tail!4273 lt!925801) (- from!862 1)))))

(assert (= (and d!746537 res!1107921) b!2631426))

(assert (= (and d!746537 c!423014) b!2631427))

(assert (= (and d!746537 (not c!423014)) b!2631428))

(declare-fun m!2974407 () Bool)

(assert (=> d!746537 m!2974407))

(assert (=> b!2631426 m!2974393))

(declare-fun m!2974409 () Bool)

(assert (=> b!2631427 m!2974409))

(declare-fun m!2974411 () Bool)

(assert (=> b!2631428 m!2974411))

(assert (=> b!2631428 m!2974411))

(declare-fun m!2974413 () Bool)

(assert (=> b!2631428 m!2974413))

(assert (=> b!2631234 d!746537))

(declare-fun d!746539 () Bool)

(assert (=> d!746539 (= (head!6035 (drop!1632 lt!925801 from!862)) (apply!7258 lt!925801 from!862))))

(declare-fun lt!925895 () Unit!44494)

(declare-fun choose!15612 (List!30588 Int) Unit!44494)

(assert (=> d!746539 (= lt!925895 (choose!15612 lt!925801 from!862))))

(declare-fun e!1660360 () Bool)

(assert (=> d!746539 e!1660360))

(declare-fun res!1107924 () Bool)

(assert (=> d!746539 (=> (not res!1107924) (not e!1660360))))

(assert (=> d!746539 (= res!1107924 (>= from!862 0))))

(assert (=> d!746539 (= (lemmaDropApply!847 lt!925801 from!862) lt!925895)))

(declare-fun b!2631431 () Bool)

(assert (=> b!2631431 (= e!1660360 (< from!862 (size!23571 lt!925801)))))

(assert (= (and d!746539 res!1107924) b!2631431))

(assert (=> d!746539 m!2974187))

(assert (=> d!746539 m!2974187))

(declare-fun m!2974415 () Bool)

(assert (=> d!746539 m!2974415))

(assert (=> d!746539 m!2974183))

(declare-fun m!2974417 () Bool)

(assert (=> d!746539 m!2974417))

(assert (=> b!2631431 m!2974393))

(assert (=> b!2631234 d!746539))

(declare-fun d!746541 () Bool)

(assert (=> d!746541 (= (head!6035 lt!925808) (h!35908 lt!925808))))

(assert (=> b!2631234 d!746541))

(declare-fun d!746543 () Bool)

(declare-fun lt!925898 () Token!8742)

(assert (=> d!746543 (= lt!925898 (apply!7258 (list!11461 v!6381) from!862))))

(declare-fun apply!7261 (Conc!9515 Int) Token!8742)

(assert (=> d!746543 (= lt!925898 (apply!7261 (c!422981 v!6381) from!862))))

(declare-fun e!1660363 () Bool)

(assert (=> d!746543 e!1660363))

(declare-fun res!1107927 () Bool)

(assert (=> d!746543 (=> (not res!1107927) (not e!1660363))))

(assert (=> d!746543 (= res!1107927 (<= 0 from!862))))

(assert (=> d!746543 (= (apply!7257 v!6381 from!862) lt!925898)))

(declare-fun b!2631434 () Bool)

(assert (=> b!2631434 (= e!1660363 (< from!862 (size!23567 v!6381)))))

(assert (= (and d!746543 res!1107927) b!2631434))

(assert (=> d!746543 m!2974197))

(assert (=> d!746543 m!2974197))

(declare-fun m!2974419 () Bool)

(assert (=> d!746543 m!2974419))

(declare-fun m!2974421 () Bool)

(assert (=> d!746543 m!2974421))

(assert (=> b!2631434 m!2974141))

(assert (=> b!2631234 d!746543))

(declare-fun d!746545 () Bool)

(declare-fun e!1660365 () Bool)

(assert (=> d!746545 e!1660365))

(declare-fun res!1107928 () Bool)

(assert (=> d!746545 (=> (not res!1107928) (not e!1660365))))

(declare-fun lt!925899 () List!30588)

(assert (=> d!746545 (= res!1107928 (set.subset (content!4304 lt!925899) (content!4304 lt!925801)))))

(declare-fun e!1660366 () List!30588)

(assert (=> d!746545 (= lt!925899 e!1660366)))

(declare-fun c!423016 () Bool)

(assert (=> d!746545 (= c!423016 (is-Nil!30488 lt!925801))))

(assert (=> d!746545 (= (drop!1632 lt!925801 (+ 1 from!862)) lt!925899)))

(declare-fun b!2631435 () Bool)

(assert (=> b!2631435 (= e!1660366 Nil!30488)))

(declare-fun b!2631436 () Bool)

(declare-fun e!1660367 () Int)

(declare-fun call!169212 () Int)

(assert (=> b!2631436 (= e!1660367 (- call!169212 (+ 1 from!862)))))

(declare-fun b!2631437 () Bool)

(declare-fun e!1660364 () List!30588)

(assert (=> b!2631437 (= e!1660364 (drop!1632 (t!216405 lt!925801) (- (+ 1 from!862) 1)))))

(declare-fun b!2631438 () Bool)

(assert (=> b!2631438 (= e!1660366 e!1660364)))

(declare-fun c!423018 () Bool)

(assert (=> b!2631438 (= c!423018 (<= (+ 1 from!862) 0))))

(declare-fun b!2631439 () Bool)

(assert (=> b!2631439 (= e!1660364 lt!925801)))

(declare-fun b!2631440 () Bool)

(declare-fun e!1660368 () Int)

(assert (=> b!2631440 (= e!1660368 e!1660367)))

(declare-fun c!423015 () Bool)

(assert (=> b!2631440 (= c!423015 (>= (+ 1 from!862) call!169212))))

(declare-fun b!2631441 () Bool)

(assert (=> b!2631441 (= e!1660367 0)))

(declare-fun bm!169207 () Bool)

(assert (=> bm!169207 (= call!169212 (size!23571 lt!925801))))

(declare-fun b!2631442 () Bool)

(assert (=> b!2631442 (= e!1660365 (= (size!23571 lt!925899) e!1660368))))

(declare-fun c!423017 () Bool)

(assert (=> b!2631442 (= c!423017 (<= (+ 1 from!862) 0))))

(declare-fun b!2631443 () Bool)

(assert (=> b!2631443 (= e!1660368 call!169212)))

(assert (= (and d!746545 c!423016) b!2631435))

(assert (= (and d!746545 (not c!423016)) b!2631438))

(assert (= (and b!2631438 c!423018) b!2631439))

(assert (= (and b!2631438 (not c!423018)) b!2631437))

(assert (= (and d!746545 res!1107928) b!2631442))

(assert (= (and b!2631442 c!423017) b!2631443))

(assert (= (and b!2631442 (not c!423017)) b!2631440))

(assert (= (and b!2631440 c!423015) b!2631441))

(assert (= (and b!2631440 (not c!423015)) b!2631436))

(assert (= (or b!2631443 b!2631440 b!2631436) bm!169207))

(declare-fun m!2974423 () Bool)

(assert (=> d!746545 m!2974423))

(assert (=> d!746545 m!2974389))

(declare-fun m!2974425 () Bool)

(assert (=> b!2631437 m!2974425))

(assert (=> bm!169207 m!2974393))

(declare-fun m!2974427 () Bool)

(assert (=> b!2631442 m!2974427))

(assert (=> b!2631234 d!746545))

(declare-fun d!746547 () Bool)

(declare-fun lt!925902 () Bool)

(assert (=> d!746547 (= lt!925902 (set.member lt!925809 (content!4304 lt!925801)))))

(declare-fun e!1660373 () Bool)

(assert (=> d!746547 (= lt!925902 e!1660373)))

(declare-fun res!1107933 () Bool)

(assert (=> d!746547 (=> (not res!1107933) (not e!1660373))))

(assert (=> d!746547 (= res!1107933 (is-Cons!30488 lt!925801))))

(assert (=> d!746547 (= (contains!5777 lt!925801 lt!925809) lt!925902)))

(declare-fun b!2631448 () Bool)

(declare-fun e!1660374 () Bool)

(assert (=> b!2631448 (= e!1660373 e!1660374)))

(declare-fun res!1107934 () Bool)

(assert (=> b!2631448 (=> res!1107934 e!1660374)))

(assert (=> b!2631448 (= res!1107934 (= (h!35908 lt!925801) lt!925809))))

(declare-fun b!2631449 () Bool)

(assert (=> b!2631449 (= e!1660374 (contains!5777 (t!216405 lt!925801) lt!925809))))

(assert (= (and d!746547 res!1107933) b!2631448))

(assert (= (and b!2631448 (not res!1107934)) b!2631449))

(assert (=> d!746547 m!2974389))

(declare-fun m!2974429 () Bool)

(assert (=> d!746547 m!2974429))

(declare-fun m!2974431 () Bool)

(assert (=> b!2631449 m!2974431))

(assert (=> b!2631225 d!746547))

(declare-fun d!746549 () Bool)

(declare-fun res!1107937 () Bool)

(declare-fun e!1660377 () Bool)

(assert (=> d!746549 (=> (not res!1107937) (not e!1660377))))

(declare-fun rulesValid!1719 (LexerInterface!4233 List!30587) Bool)

(assert (=> d!746549 (= res!1107937 (rulesValid!1719 thiss!14197 rules!1726))))

(assert (=> d!746549 (= (rulesInvariant!3733 thiss!14197 rules!1726) e!1660377)))

(declare-fun b!2631452 () Bool)

(declare-datatypes ((List!30593 0))(
  ( (Nil!30493) (Cons!30493 (h!35913 String!34175) (t!216450 List!30593)) )
))
(declare-fun noDuplicateTag!1715 (LexerInterface!4233 List!30587 List!30593) Bool)

(assert (=> b!2631452 (= e!1660377 (noDuplicateTag!1715 thiss!14197 rules!1726 Nil!30493))))

(assert (= (and d!746549 res!1107937) b!2631452))

(declare-fun m!2974433 () Bool)

(assert (=> d!746549 m!2974433))

(declare-fun m!2974435 () Bool)

(assert (=> b!2631452 m!2974435))

(assert (=> b!2631235 d!746549))

(declare-fun d!746551 () Bool)

(declare-fun lt!925937 () Bool)

(declare-fun e!1660401 () Bool)

(assert (=> d!746551 (= lt!925937 e!1660401)))

(declare-fun res!1107956 () Bool)

(assert (=> d!746551 (=> (not res!1107956) (not e!1660401))))

(declare-datatypes ((tuple2!29980 0))(
  ( (tuple2!29981 (_1!17532 BalanceConc!18644) (_2!17532 BalanceConc!18642)) )
))
(declare-fun lex!1896 (LexerInterface!4233 List!30587 BalanceConc!18642) tuple2!29980)

(assert (=> d!746551 (= res!1107956 (= (list!11461 (_1!17532 (lex!1896 thiss!14197 rules!1726 (print!1634 thiss!14197 (singletonSeq!2053 separatorToken!156))))) (list!11461 (singletonSeq!2053 separatorToken!156))))))

(declare-fun e!1660400 () Bool)

(assert (=> d!746551 (= lt!925937 e!1660400)))

(declare-fun res!1107957 () Bool)

(assert (=> d!746551 (=> (not res!1107957) (not e!1660400))))

(declare-fun lt!925938 () tuple2!29980)

(assert (=> d!746551 (= res!1107957 (= (size!23567 (_1!17532 lt!925938)) 1))))

(assert (=> d!746551 (= lt!925938 (lex!1896 thiss!14197 rules!1726 (print!1634 thiss!14197 (singletonSeq!2053 separatorToken!156))))))

(assert (=> d!746551 (not (isEmpty!17382 rules!1726))))

(assert (=> d!746551 (= (rulesProduceIndividualToken!1945 thiss!14197 rules!1726 separatorToken!156) lt!925937)))

(declare-fun b!2631483 () Bool)

(declare-fun res!1107958 () Bool)

(assert (=> b!2631483 (=> (not res!1107958) (not e!1660400))))

(assert (=> b!2631483 (= res!1107958 (= (apply!7257 (_1!17532 lt!925938) 0) separatorToken!156))))

(declare-fun b!2631484 () Bool)

(declare-fun isEmpty!17385 (BalanceConc!18642) Bool)

(assert (=> b!2631484 (= e!1660400 (isEmpty!17385 (_2!17532 lt!925938)))))

(declare-fun b!2631485 () Bool)

(assert (=> b!2631485 (= e!1660401 (isEmpty!17385 (_2!17532 (lex!1896 thiss!14197 rules!1726 (print!1634 thiss!14197 (singletonSeq!2053 separatorToken!156))))))))

(assert (= (and d!746551 res!1107957) b!2631483))

(assert (= (and b!2631483 res!1107958) b!2631484))

(assert (= (and d!746551 res!1107956) b!2631485))

(declare-fun m!2974499 () Bool)

(assert (=> d!746551 m!2974499))

(assert (=> d!746551 m!2974499))

(declare-fun m!2974501 () Bool)

(assert (=> d!746551 m!2974501))

(assert (=> d!746551 m!2974199))

(declare-fun m!2974503 () Bool)

(assert (=> d!746551 m!2974503))

(assert (=> d!746551 m!2974499))

(declare-fun m!2974505 () Bool)

(assert (=> d!746551 m!2974505))

(assert (=> d!746551 m!2974505))

(declare-fun m!2974507 () Bool)

(assert (=> d!746551 m!2974507))

(declare-fun m!2974509 () Bool)

(assert (=> d!746551 m!2974509))

(declare-fun m!2974511 () Bool)

(assert (=> b!2631483 m!2974511))

(declare-fun m!2974513 () Bool)

(assert (=> b!2631484 m!2974513))

(assert (=> b!2631485 m!2974499))

(assert (=> b!2631485 m!2974499))

(assert (=> b!2631485 m!2974505))

(assert (=> b!2631485 m!2974505))

(assert (=> b!2631485 m!2974507))

(declare-fun m!2974515 () Bool)

(assert (=> b!2631485 m!2974515))

(assert (=> b!2631221 d!746551))

(declare-fun d!746567 () Bool)

(declare-fun lt!925941 () Int)

(assert (=> d!746567 (= lt!925941 (size!23571 (list!11461 v!6381)))))

(declare-fun size!23572 (Conc!9515) Int)

(assert (=> d!746567 (= lt!925941 (size!23572 (c!422981 v!6381)))))

(assert (=> d!746567 (= (size!23567 v!6381) lt!925941)))

(declare-fun bs!475756 () Bool)

(assert (= bs!475756 d!746567))

(assert (=> bs!475756 m!2974197))

(assert (=> bs!475756 m!2974197))

(declare-fun m!2974517 () Bool)

(assert (=> bs!475756 m!2974517))

(declare-fun m!2974519 () Bool)

(assert (=> bs!475756 m!2974519))

(assert (=> b!2631232 d!746567))

(declare-fun bs!475757 () Bool)

(declare-fun d!746569 () Bool)

(assert (= bs!475757 (and d!746569 b!2631240)))

(declare-fun lambda!98723 () Int)

(assert (=> bs!475757 (= lambda!98723 lambda!98705)))

(declare-fun bs!475758 () Bool)

(assert (= bs!475758 (and d!746569 b!2631233)))

(assert (=> bs!475758 (not (= lambda!98723 lambda!98706))))

(declare-fun bs!475759 () Bool)

(declare-fun b!2631525 () Bool)

(assert (= bs!475759 (and b!2631525 b!2631240)))

(declare-fun lambda!98724 () Int)

(assert (=> bs!475759 (not (= lambda!98724 lambda!98705))))

(declare-fun bs!475760 () Bool)

(assert (= bs!475760 (and b!2631525 b!2631233)))

(assert (=> bs!475760 (= lambda!98724 lambda!98706)))

(declare-fun bs!475761 () Bool)

(assert (= bs!475761 (and b!2631525 d!746569)))

(assert (=> bs!475761 (not (= lambda!98724 lambda!98723))))

(declare-fun b!2631533 () Bool)

(declare-fun e!1660434 () Bool)

(assert (=> b!2631533 (= e!1660434 true)))

(declare-fun b!2631532 () Bool)

(declare-fun e!1660433 () Bool)

(assert (=> b!2631532 (= e!1660433 e!1660434)))

(declare-fun b!2631531 () Bool)

(declare-fun e!1660432 () Bool)

(assert (=> b!2631531 (= e!1660432 e!1660433)))

(assert (=> b!2631525 e!1660432))

(assert (= b!2631532 b!2631533))

(assert (= b!2631531 b!2631532))

(assert (= (and b!2631525 (is-Cons!30487 rules!1726)) b!2631531))

(assert (=> b!2631533 (< (dynLambda!13051 order!16517 (toValue!6550 (transformation!4636 (h!35907 rules!1726)))) (dynLambda!13052 order!16519 lambda!98724))))

(assert (=> b!2631533 (< (dynLambda!13053 order!16521 (toChars!6409 (transformation!4636 (h!35907 rules!1726)))) (dynLambda!13052 order!16519 lambda!98724))))

(assert (=> b!2631525 true))

(declare-fun b!2631522 () Bool)

(declare-fun e!1660431 () BalanceConc!18642)

(declare-fun call!169234 () BalanceConc!18642)

(declare-fun lt!925998 () BalanceConc!18642)

(assert (=> b!2631522 (= e!1660431 (++!7418 call!169234 lt!925998))))

(declare-fun call!169236 () BalanceConc!18642)

(declare-fun bm!169228 () Bool)

(declare-fun call!169233 () BalanceConc!18642)

(declare-fun c!423041 () Bool)

(assert (=> bm!169228 (= call!169234 (++!7418 call!169233 (ite c!423041 lt!925998 call!169236)))))

(declare-fun b!2631523 () Bool)

(declare-fun e!1660428 () BalanceConc!18642)

(assert (=> b!2631523 (= e!1660428 (BalanceConc!18643 Empty!9514))))

(declare-fun bm!169229 () Bool)

(declare-fun call!169235 () Token!8742)

(declare-fun call!169237 () Token!8742)

(assert (=> bm!169229 (= call!169233 (charsOf!2923 (ite c!423041 call!169237 call!169235)))))

(declare-fun b!2631524 () Bool)

(declare-fun e!1660429 () Bool)

(declare-fun lt!926000 () Option!6023)

(assert (=> b!2631524 (= e!1660429 (not (= (_1!17530 (v!32415 lt!926000)) call!169237)))))

(declare-fun e!1660426 () BalanceConc!18642)

(assert (=> b!2631525 (= e!1660428 e!1660426)))

(declare-fun lt!926008 () List!30588)

(assert (=> b!2631525 (= lt!926008 (list!11461 v!6381))))

(declare-fun lt!926009 () Unit!44494)

(assert (=> b!2631525 (= lt!926009 (lemmaDropApply!847 lt!926008 (+ 1 from!862)))))

(assert (=> b!2631525 (= (head!6035 (drop!1632 lt!926008 (+ 1 from!862))) (apply!7258 lt!926008 (+ 1 from!862)))))

(declare-fun lt!926010 () Unit!44494)

(assert (=> b!2631525 (= lt!926010 lt!926009)))

(declare-fun lt!926006 () List!30588)

(assert (=> b!2631525 (= lt!926006 (list!11461 v!6381))))

(declare-fun lt!926002 () Unit!44494)

(assert (=> b!2631525 (= lt!926002 (lemmaDropTail!821 lt!926006 (+ 1 from!862)))))

(assert (=> b!2631525 (= (tail!4273 (drop!1632 lt!926006 (+ 1 from!862))) (drop!1632 lt!926006 (+ 1 from!862 1)))))

(declare-fun lt!926003 () Unit!44494)

(assert (=> b!2631525 (= lt!926003 lt!926002)))

(declare-fun lt!926005 () Unit!44494)

(assert (=> b!2631525 (= lt!926005 (forallContained!988 (list!11461 v!6381) lambda!98724 (apply!7257 v!6381 (+ 1 from!862))))))

(assert (=> b!2631525 (= lt!925998 (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862 1)))))

(assert (=> b!2631525 (= lt!926000 (maxPrefixZipperSequence!959 thiss!14197 rules!1726 (++!7418 (charsOf!2923 (apply!7257 v!6381 (+ 1 from!862))) lt!925998)))))

(declare-fun res!1107971 () Bool)

(assert (=> b!2631525 (= res!1107971 (is-Some!6022 lt!926000))))

(declare-fun e!1660430 () Bool)

(assert (=> b!2631525 (=> (not res!1107971) (not e!1660430))))

(assert (=> b!2631525 (= c!423041 e!1660430)))

(declare-fun b!2631526 () Bool)

(declare-fun e!1660427 () Bool)

(assert (=> b!2631526 (= e!1660427 (<= (+ 1 from!862) (size!23567 v!6381)))))

(declare-fun b!2631527 () Bool)

(assert (=> b!2631527 (= e!1660431 (BalanceConc!18643 Empty!9514))))

(assert (=> b!2631527 (= (print!1634 thiss!14197 (singletonSeq!2053 call!169235)) (printTailRec!1120 thiss!14197 (singletonSeq!2053 call!169235) 0 (BalanceConc!18643 Empty!9514)))))

(declare-fun lt!926011 () Unit!44494)

(declare-fun Unit!44499 () Unit!44494)

(assert (=> b!2631527 (= lt!926011 Unit!44499)))

(declare-fun lt!926001 () Unit!44494)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!796 (LexerInterface!4233 List!30587 List!30586 List!30586) Unit!44494)

(assert (=> b!2631527 (= lt!926001 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!796 thiss!14197 rules!1726 (list!11460 call!169236) (list!11460 lt!925998)))))

(assert (=> b!2631527 false))

(declare-fun lt!926007 () Unit!44494)

(declare-fun Unit!44500 () Unit!44494)

(assert (=> b!2631527 (= lt!926007 Unit!44500)))

(declare-fun lt!925999 () BalanceConc!18642)

(declare-fun printWithSeparatorTokenWhenNeededList!653 (LexerInterface!4233 List!30587 List!30588 Token!8742) List!30586)

(assert (=> d!746569 (= (list!11460 lt!925999) (printWithSeparatorTokenWhenNeededList!653 thiss!14197 rules!1726 (dropList!939 v!6381 (+ 1 from!862)) separatorToken!156))))

(assert (=> d!746569 (= lt!925999 e!1660428)))

(declare-fun c!423040 () Bool)

(assert (=> d!746569 (= c!423040 (>= (+ 1 from!862) (size!23567 v!6381)))))

(declare-fun lt!926004 () Unit!44494)

(assert (=> d!746569 (= lt!926004 (lemmaContentSubsetPreservesForall!305 (list!11461 v!6381) (dropList!939 v!6381 (+ 1 from!862)) lambda!98723))))

(assert (=> d!746569 e!1660427))

(declare-fun res!1107972 () Bool)

(assert (=> d!746569 (=> (not res!1107972) (not e!1660427))))

(assert (=> d!746569 (= res!1107972 (>= (+ 1 from!862) 0))))

(assert (=> d!746569 (= (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)) lt!925999)))

(declare-fun bm!169230 () Bool)

(assert (=> bm!169230 (= call!169237 (apply!7257 v!6381 (+ 1 from!862)))))

(declare-fun b!2631528 () Bool)

(assert (=> b!2631528 (= e!1660430 (= (_1!17530 (v!32415 lt!926000)) (apply!7257 v!6381 (+ 1 from!862))))))

(declare-fun bm!169231 () Bool)

(assert (=> bm!169231 (= call!169235 call!169237)))

(declare-fun b!2631529 () Bool)

(declare-fun c!423039 () Bool)

(assert (=> b!2631529 (= c!423039 e!1660429)))

(declare-fun res!1107973 () Bool)

(assert (=> b!2631529 (=> (not res!1107973) (not e!1660429))))

(assert (=> b!2631529 (= res!1107973 (is-Some!6022 lt!926000))))

(assert (=> b!2631529 (= e!1660426 e!1660431)))

(declare-fun b!2631530 () Bool)

(assert (=> b!2631530 (= e!1660426 call!169234)))

(declare-fun bm!169232 () Bool)

(assert (=> bm!169232 (= call!169236 (charsOf!2923 (ite c!423039 separatorToken!156 call!169235)))))

(assert (= (and d!746569 res!1107972) b!2631526))

(assert (= (and d!746569 c!423040) b!2631523))

(assert (= (and d!746569 (not c!423040)) b!2631525))

(assert (= (and b!2631525 res!1107971) b!2631528))

(assert (= (and b!2631525 c!423041) b!2631530))

(assert (= (and b!2631525 (not c!423041)) b!2631529))

(assert (= (and b!2631529 res!1107973) b!2631524))

(assert (= (and b!2631529 c!423039) b!2631522))

(assert (= (and b!2631529 (not c!423039)) b!2631527))

(assert (= (or b!2631522 b!2631527) bm!169231))

(assert (= (or b!2631522 b!2631527) bm!169232))

(assert (= (or b!2631530 b!2631524 bm!169231) bm!169230))

(assert (= (or b!2631530 b!2631522) bm!169229))

(assert (= (or b!2631530 b!2631522) bm!169228))

(declare-fun m!2974521 () Bool)

(assert (=> bm!169230 m!2974521))

(declare-fun m!2974523 () Bool)

(assert (=> bm!169232 m!2974523))

(declare-fun m!2974525 () Bool)

(assert (=> d!746569 m!2974525))

(assert (=> d!746569 m!2974141))

(declare-fun m!2974527 () Bool)

(assert (=> d!746569 m!2974527))

(declare-fun m!2974529 () Bool)

(assert (=> d!746569 m!2974529))

(assert (=> d!746569 m!2974197))

(assert (=> d!746569 m!2974527))

(declare-fun m!2974531 () Bool)

(assert (=> d!746569 m!2974531))

(assert (=> d!746569 m!2974197))

(assert (=> d!746569 m!2974527))

(assert (=> b!2631526 m!2974141))

(declare-fun m!2974533 () Bool)

(assert (=> bm!169228 m!2974533))

(declare-fun m!2974535 () Bool)

(assert (=> bm!169229 m!2974535))

(declare-fun m!2974537 () Bool)

(assert (=> b!2631525 m!2974537))

(declare-fun m!2974539 () Bool)

(assert (=> b!2631525 m!2974539))

(declare-fun m!2974541 () Bool)

(assert (=> b!2631525 m!2974541))

(declare-fun m!2974543 () Bool)

(assert (=> b!2631525 m!2974543))

(declare-fun m!2974545 () Bool)

(assert (=> b!2631525 m!2974545))

(assert (=> b!2631525 m!2974539))

(declare-fun m!2974547 () Bool)

(assert (=> b!2631525 m!2974547))

(declare-fun m!2974549 () Bool)

(assert (=> b!2631525 m!2974549))

(assert (=> b!2631525 m!2974543))

(declare-fun m!2974551 () Bool)

(assert (=> b!2631525 m!2974551))

(declare-fun m!2974553 () Bool)

(assert (=> b!2631525 m!2974553))

(declare-fun m!2974555 () Bool)

(assert (=> b!2631525 m!2974555))

(assert (=> b!2631525 m!2974197))

(assert (=> b!2631525 m!2974521))

(declare-fun m!2974557 () Bool)

(assert (=> b!2631525 m!2974557))

(declare-fun m!2974559 () Bool)

(assert (=> b!2631525 m!2974559))

(assert (=> b!2631525 m!2974553))

(assert (=> b!2631525 m!2974197))

(declare-fun m!2974561 () Bool)

(assert (=> b!2631525 m!2974561))

(assert (=> b!2631525 m!2974521))

(assert (=> b!2631525 m!2974537))

(assert (=> b!2631525 m!2974521))

(assert (=> b!2631528 m!2974521))

(declare-fun m!2974563 () Bool)

(assert (=> b!2631527 m!2974563))

(declare-fun m!2974565 () Bool)

(assert (=> b!2631527 m!2974565))

(assert (=> b!2631527 m!2974565))

(declare-fun m!2974567 () Bool)

(assert (=> b!2631527 m!2974567))

(assert (=> b!2631527 m!2974565))

(declare-fun m!2974569 () Bool)

(assert (=> b!2631527 m!2974569))

(declare-fun m!2974571 () Bool)

(assert (=> b!2631527 m!2974571))

(assert (=> b!2631527 m!2974563))

(declare-fun m!2974573 () Bool)

(assert (=> b!2631527 m!2974573))

(assert (=> b!2631527 m!2974571))

(declare-fun m!2974575 () Bool)

(assert (=> b!2631522 m!2974575))

(assert (=> b!2631233 d!746569))

(declare-fun e!1660449 () Bool)

(declare-fun lt!926031 () BalanceConc!18642)

(declare-fun b!2631560 () Bool)

(assert (=> b!2631560 (= e!1660449 (= (list!11460 lt!926031) (++!7420 (list!11460 (charsOf!2923 lt!925809)) (list!11460 (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))

(declare-fun b!2631559 () Bool)

(declare-fun res!1107988 () Bool)

(assert (=> b!2631559 (=> (not res!1107988) (not e!1660449))))

(declare-fun height!1371 (Conc!9514) Int)

(declare-fun ++!7421 (Conc!9514 Conc!9514) Conc!9514)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2631559 (= res!1107988 (>= (height!1371 (++!7421 (c!422980 (charsOf!2923 lt!925809)) (c!422980 (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) (max!0 (height!1371 (c!422980 (charsOf!2923 lt!925809))) (height!1371 (c!422980 (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(declare-fun b!2631558 () Bool)

(declare-fun res!1107990 () Bool)

(assert (=> b!2631558 (=> (not res!1107990) (not e!1660449))))

(assert (=> b!2631558 (= res!1107990 (<= (height!1371 (++!7421 (c!422980 (charsOf!2923 lt!925809)) (c!422980 (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) (+ (max!0 (height!1371 (c!422980 (charsOf!2923 lt!925809))) (height!1371 (c!422980 (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) 1)))))

(declare-fun d!746571 () Bool)

(assert (=> d!746571 e!1660449))

(declare-fun res!1107989 () Bool)

(assert (=> d!746571 (=> (not res!1107989) (not e!1660449))))

(declare-fun appendAssocInst!629 (Conc!9514 Conc!9514) Bool)

(assert (=> d!746571 (= res!1107989 (appendAssocInst!629 (c!422980 (charsOf!2923 lt!925809)) (c!422980 (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(assert (=> d!746571 (= lt!926031 (BalanceConc!18643 (++!7421 (c!422980 (charsOf!2923 lt!925809)) (c!422980 (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))

(assert (=> d!746571 (= (++!7418 (charsOf!2923 lt!925809) (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))) lt!926031)))

(declare-fun b!2631557 () Bool)

(declare-fun res!1107991 () Bool)

(assert (=> b!2631557 (=> (not res!1107991) (not e!1660449))))

(declare-fun isBalanced!2873 (Conc!9514) Bool)

(assert (=> b!2631557 (= res!1107991 (isBalanced!2873 (++!7421 (c!422980 (charsOf!2923 lt!925809)) (c!422980 (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))

(assert (= (and d!746571 res!1107989) b!2631557))

(assert (= (and b!2631557 res!1107991) b!2631558))

(assert (= (and b!2631558 res!1107990) b!2631559))

(assert (= (and b!2631559 res!1107988) b!2631560))

(declare-fun m!2974639 () Bool)

(assert (=> b!2631557 m!2974639))

(assert (=> b!2631557 m!2974639))

(declare-fun m!2974641 () Bool)

(assert (=> b!2631557 m!2974641))

(declare-fun m!2974643 () Bool)

(assert (=> d!746571 m!2974643))

(assert (=> d!746571 m!2974639))

(assert (=> b!2631558 m!2974639))

(declare-fun m!2974645 () Bool)

(assert (=> b!2631558 m!2974645))

(declare-fun m!2974647 () Bool)

(assert (=> b!2631558 m!2974647))

(declare-fun m!2974649 () Bool)

(assert (=> b!2631558 m!2974649))

(declare-fun m!2974651 () Bool)

(assert (=> b!2631558 m!2974651))

(assert (=> b!2631558 m!2974639))

(assert (=> b!2631558 m!2974649))

(assert (=> b!2631558 m!2974647))

(assert (=> b!2631559 m!2974639))

(assert (=> b!2631559 m!2974645))

(assert (=> b!2631559 m!2974647))

(assert (=> b!2631559 m!2974649))

(assert (=> b!2631559 m!2974651))

(assert (=> b!2631559 m!2974639))

(assert (=> b!2631559 m!2974649))

(assert (=> b!2631559 m!2974647))

(declare-fun m!2974653 () Bool)

(assert (=> b!2631560 m!2974653))

(assert (=> b!2631560 m!2974131))

(declare-fun m!2974655 () Bool)

(assert (=> b!2631560 m!2974655))

(assert (=> b!2631560 m!2974133))

(declare-fun m!2974657 () Bool)

(assert (=> b!2631560 m!2974657))

(assert (=> b!2631560 m!2974655))

(assert (=> b!2631560 m!2974657))

(declare-fun m!2974659 () Bool)

(assert (=> b!2631560 m!2974659))

(assert (=> b!2631233 d!746571))

(declare-fun d!746577 () Bool)

(declare-fun lt!926034 () BalanceConc!18642)

(assert (=> d!746577 (= (list!11460 lt!926034) (originalCharacters!5402 lt!925809))))

(assert (=> d!746577 (= lt!926034 (dynLambda!13057 (toChars!6409 (transformation!4636 (rule!7018 lt!925809))) (value!149732 lt!925809)))))

(assert (=> d!746577 (= (charsOf!2923 lt!925809) lt!926034)))

(declare-fun b_lambda!79227 () Bool)

(assert (=> (not b_lambda!79227) (not d!746577)))

(declare-fun t!216430 () Bool)

(declare-fun tb!143587 () Bool)

(assert (=> (and b!2631229 (= (toChars!6409 (transformation!4636 (h!35907 rules!1726))) (toChars!6409 (transformation!4636 (rule!7018 lt!925809)))) t!216430) tb!143587))

(declare-fun b!2631561 () Bool)

(declare-fun e!1660450 () Bool)

(declare-fun tp!834304 () Bool)

(assert (=> b!2631561 (= e!1660450 (and (inv!41338 (c!422980 (dynLambda!13057 (toChars!6409 (transformation!4636 (rule!7018 lt!925809))) (value!149732 lt!925809)))) tp!834304))))

(declare-fun result!178444 () Bool)

(assert (=> tb!143587 (= result!178444 (and (inv!41339 (dynLambda!13057 (toChars!6409 (transformation!4636 (rule!7018 lt!925809))) (value!149732 lt!925809))) e!1660450))))

(assert (= tb!143587 b!2631561))

(declare-fun m!2974661 () Bool)

(assert (=> b!2631561 m!2974661))

(declare-fun m!2974663 () Bool)

(assert (=> tb!143587 m!2974663))

(assert (=> d!746577 t!216430))

(declare-fun b_and!192791 () Bool)

(assert (= b_and!192787 (and (=> t!216430 result!178444) b_and!192791)))

(declare-fun tb!143589 () Bool)

(declare-fun t!216432 () Bool)

(assert (=> (and b!2631236 (= (toChars!6409 (transformation!4636 (rule!7018 separatorToken!156))) (toChars!6409 (transformation!4636 (rule!7018 lt!925809)))) t!216432) tb!143589))

(declare-fun result!178446 () Bool)

(assert (= result!178446 result!178444))

(assert (=> d!746577 t!216432))

(declare-fun b_and!192793 () Bool)

(assert (= b_and!192789 (and (=> t!216432 result!178446) b_and!192793)))

(declare-fun m!2974665 () Bool)

(assert (=> d!746577 m!2974665))

(declare-fun m!2974667 () Bool)

(assert (=> d!746577 m!2974667))

(assert (=> b!2631233 d!746577))

(declare-fun b!2631602 () Bool)

(declare-fun e!1660486 () Bool)

(declare-fun e!1660484 () Bool)

(assert (=> b!2631602 (= e!1660486 e!1660484)))

(declare-fun res!1108023 () Bool)

(assert (=> b!2631602 (=> (not res!1108023) (not e!1660484))))

(declare-fun lt!926076 () Option!6023)

(declare-fun get!9589 (Option!6023) tuple2!29976)

(declare-datatypes ((tuple2!29982 0))(
  ( (tuple2!29983 (_1!17533 Token!8742) (_2!17533 List!30586)) )
))
(declare-datatypes ((Option!6025 0))(
  ( (None!6024) (Some!6024 (v!32427 tuple2!29982)) )
))
(declare-fun get!9590 (Option!6025) tuple2!29982)

(declare-fun maxPrefix!2305 (LexerInterface!4233 List!30587 List!30586) Option!6025)

(assert (=> b!2631602 (= res!1108023 (= (_1!17530 (get!9589 lt!926076)) (_1!17533 (get!9590 (maxPrefix!2305 thiss!14197 rules!1726 (list!11460 (++!7418 (charsOf!2923 lt!925809) (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))))

(declare-fun b!2631603 () Bool)

(declare-fun e!1660483 () Option!6023)

(declare-fun call!169248 () Option!6023)

(assert (=> b!2631603 (= e!1660483 call!169248)))

(declare-fun b!2631604 () Bool)

(declare-fun e!1660481 () Bool)

(assert (=> b!2631604 (= e!1660481 e!1660486)))

(declare-fun res!1108025 () Bool)

(assert (=> b!2631604 (=> res!1108025 e!1660486)))

(declare-fun isDefined!4787 (Option!6023) Bool)

(assert (=> b!2631604 (= res!1108025 (not (isDefined!4787 lt!926076)))))

(declare-fun b!2631605 () Bool)

(declare-fun lt!926074 () Option!6023)

(declare-fun lt!926075 () Option!6023)

(assert (=> b!2631605 (= e!1660483 (ite (and (is-None!6022 lt!926074) (is-None!6022 lt!926075)) None!6022 (ite (is-None!6022 lt!926075) lt!926074 (ite (is-None!6022 lt!926074) lt!926075 (ite (>= (size!23566 (_1!17530 (v!32415 lt!926074))) (size!23566 (_1!17530 (v!32415 lt!926075)))) lt!926074 lt!926075)))))))

(assert (=> b!2631605 (= lt!926074 call!169248)))

(assert (=> b!2631605 (= lt!926075 (maxPrefixZipperSequence!959 thiss!14197 (t!216404 rules!1726) (++!7418 (charsOf!2923 lt!925809) (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun b!2631606 () Bool)

(declare-fun e!1660485 () Bool)

(declare-fun e!1660482 () Bool)

(assert (=> b!2631606 (= e!1660485 e!1660482)))

(declare-fun res!1108026 () Bool)

(assert (=> b!2631606 (=> (not res!1108026) (not e!1660482))))

(declare-fun maxPrefixZipper!433 (LexerInterface!4233 List!30587 List!30586) Option!6025)

(assert (=> b!2631606 (= res!1108026 (= (_1!17530 (get!9589 lt!926076)) (_1!17533 (get!9590 (maxPrefixZipper!433 thiss!14197 rules!1726 (list!11460 (++!7418 (charsOf!2923 lt!925809) (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))))

(declare-fun b!2631607 () Bool)

(assert (=> b!2631607 (= e!1660484 (= (list!11460 (_2!17530 (get!9589 lt!926076))) (_2!17533 (get!9590 (maxPrefix!2305 thiss!14197 rules!1726 (list!11460 (++!7418 (charsOf!2923 lt!925809) (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))))

(declare-fun bm!169243 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!442 (LexerInterface!4233 Rule!9072 BalanceConc!18642) Option!6023)

(assert (=> bm!169243 (= call!169248 (maxPrefixOneRuleZipperSequence!442 thiss!14197 (h!35907 rules!1726) (++!7418 (charsOf!2923 lt!925809) (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun d!746579 () Bool)

(assert (=> d!746579 e!1660481))

(declare-fun res!1108024 () Bool)

(assert (=> d!746579 (=> (not res!1108024) (not e!1660481))))

(declare-fun isDefined!4788 (Option!6025) Bool)

(assert (=> d!746579 (= res!1108024 (= (isDefined!4787 lt!926076) (isDefined!4788 (maxPrefixZipper!433 thiss!14197 rules!1726 (list!11460 (++!7418 (charsOf!2923 lt!925809) (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))))

(assert (=> d!746579 (= lt!926076 e!1660483)))

(declare-fun c!423053 () Bool)

(assert (=> d!746579 (= c!423053 (and (is-Cons!30487 rules!1726) (is-Nil!30487 (t!216404 rules!1726))))))

(declare-fun lt!926073 () Unit!44494)

(declare-fun lt!926071 () Unit!44494)

(assert (=> d!746579 (= lt!926073 lt!926071)))

(declare-fun lt!926072 () List!30586)

(declare-fun lt!926070 () List!30586)

(declare-fun isPrefix!2434 (List!30586 List!30586) Bool)

(assert (=> d!746579 (isPrefix!2434 lt!926072 lt!926070)))

(declare-fun lemmaIsPrefixRefl!1560 (List!30586 List!30586) Unit!44494)

(assert (=> d!746579 (= lt!926071 (lemmaIsPrefixRefl!1560 lt!926072 lt!926070))))

(assert (=> d!746579 (= lt!926070 (list!11460 (++!7418 (charsOf!2923 lt!925809) (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(assert (=> d!746579 (= lt!926072 (list!11460 (++!7418 (charsOf!2923 lt!925809) (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun rulesValidInductive!1612 (LexerInterface!4233 List!30587) Bool)

(assert (=> d!746579 (rulesValidInductive!1612 thiss!14197 rules!1726)))

(assert (=> d!746579 (= (maxPrefixZipperSequence!959 thiss!14197 rules!1726 (++!7418 (charsOf!2923 lt!925809) (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))) lt!926076)))

(declare-fun b!2631608 () Bool)

(assert (=> b!2631608 (= e!1660482 (= (list!11460 (_2!17530 (get!9589 lt!926076))) (_2!17533 (get!9590 (maxPrefixZipper!433 thiss!14197 rules!1726 (list!11460 (++!7418 (charsOf!2923 lt!925809) (printWithSeparatorTokenWhenNeededRec!507 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))))

(declare-fun b!2631609 () Bool)

(declare-fun res!1108027 () Bool)

(assert (=> b!2631609 (=> (not res!1108027) (not e!1660481))))

(assert (=> b!2631609 (= res!1108027 e!1660485)))

(declare-fun res!1108022 () Bool)

(assert (=> b!2631609 (=> res!1108022 e!1660485)))

(assert (=> b!2631609 (= res!1108022 (not (isDefined!4787 lt!926076)))))

(assert (= (and d!746579 c!423053) b!2631603))

(assert (= (and d!746579 (not c!423053)) b!2631605))

(assert (= (or b!2631603 b!2631605) bm!169243))

(assert (= (and d!746579 res!1108024) b!2631609))

(assert (= (and b!2631609 (not res!1108022)) b!2631606))

(assert (= (and b!2631606 res!1108026) b!2631608))

(assert (= (and b!2631609 res!1108027) b!2631604))

(assert (= (and b!2631604 (not res!1108025)) b!2631602))

(assert (= (and b!2631602 res!1108023) b!2631607))

(assert (=> b!2631605 m!2974135))

(declare-fun m!2974697 () Bool)

(assert (=> b!2631605 m!2974697))

(declare-fun m!2974699 () Bool)

(assert (=> b!2631606 m!2974699))

(assert (=> b!2631606 m!2974135))

(declare-fun m!2974701 () Bool)

(assert (=> b!2631606 m!2974701))

(assert (=> b!2631606 m!2974701))

(declare-fun m!2974703 () Bool)

(assert (=> b!2631606 m!2974703))

(assert (=> b!2631606 m!2974703))

(declare-fun m!2974705 () Bool)

(assert (=> b!2631606 m!2974705))

(assert (=> b!2631608 m!2974699))

(declare-fun m!2974707 () Bool)

(assert (=> b!2631608 m!2974707))

(assert (=> b!2631608 m!2974703))

(assert (=> b!2631608 m!2974705))

(assert (=> b!2631608 m!2974701))

(assert (=> b!2631608 m!2974703))

(assert (=> b!2631608 m!2974135))

(assert (=> b!2631608 m!2974701))

(declare-fun m!2974709 () Bool)

(assert (=> b!2631609 m!2974709))

(assert (=> b!2631602 m!2974699))

(assert (=> b!2631602 m!2974135))

(assert (=> b!2631602 m!2974701))

(assert (=> b!2631602 m!2974701))

(declare-fun m!2974711 () Bool)

(assert (=> b!2631602 m!2974711))

(assert (=> b!2631602 m!2974711))

(declare-fun m!2974713 () Bool)

(assert (=> b!2631602 m!2974713))

(assert (=> b!2631607 m!2974699))

(assert (=> b!2631607 m!2974707))

(assert (=> b!2631607 m!2974701))

(assert (=> b!2631607 m!2974711))

(assert (=> b!2631607 m!2974135))

(assert (=> b!2631607 m!2974701))

(assert (=> b!2631607 m!2974711))

(assert (=> b!2631607 m!2974713))

(assert (=> bm!169243 m!2974135))

(declare-fun m!2974723 () Bool)

(assert (=> bm!169243 m!2974723))

(assert (=> b!2631604 m!2974709))

(assert (=> d!746579 m!2974709))

(declare-fun m!2974725 () Bool)

(assert (=> d!746579 m!2974725))

(declare-fun m!2974727 () Bool)

(assert (=> d!746579 m!2974727))

(assert (=> d!746579 m!2974701))

(assert (=> d!746579 m!2974703))

(assert (=> d!746579 m!2974135))

(assert (=> d!746579 m!2974701))

(assert (=> d!746579 m!2974703))

(declare-fun m!2974729 () Bool)

(assert (=> d!746579 m!2974729))

(declare-fun m!2974731 () Bool)

(assert (=> d!746579 m!2974731))

(assert (=> b!2631233 d!746579))

(declare-fun d!746585 () Bool)

(declare-fun dynLambda!13058 (Int Token!8742) Bool)

(assert (=> d!746585 (dynLambda!13058 lambda!98706 lt!925809)))

(declare-fun lt!926082 () Unit!44494)

(declare-fun choose!15613 (List!30588 Int Token!8742) Unit!44494)

(assert (=> d!746585 (= lt!926082 (choose!15613 lt!925801 lambda!98706 lt!925809))))

(declare-fun e!1660492 () Bool)

(assert (=> d!746585 e!1660492))

(declare-fun res!1108030 () Bool)

(assert (=> d!746585 (=> (not res!1108030) (not e!1660492))))

(assert (=> d!746585 (= res!1108030 (forall!6379 lt!925801 lambda!98706))))

(assert (=> d!746585 (= (forallContained!988 lt!925801 lambda!98706 lt!925809) lt!926082)))

(declare-fun b!2631617 () Bool)

(assert (=> b!2631617 (= e!1660492 (contains!5777 lt!925801 lt!925809))))

(assert (= (and d!746585 res!1108030) b!2631617))

(declare-fun b_lambda!79231 () Bool)

(assert (=> (not b_lambda!79231) (not d!746585)))

(declare-fun m!2974733 () Bool)

(assert (=> d!746585 m!2974733))

(declare-fun m!2974735 () Bool)

(assert (=> d!746585 m!2974735))

(declare-fun m!2974737 () Bool)

(assert (=> d!746585 m!2974737))

(assert (=> b!2631617 m!2974129))

(assert (=> b!2631233 d!746585))

(declare-fun bs!475768 () Bool)

(declare-fun d!746587 () Bool)

(assert (= bs!475768 (and d!746587 b!2631240)))

(declare-fun lambda!98731 () Int)

(assert (=> bs!475768 (not (= lambda!98731 lambda!98705))))

(declare-fun bs!475769 () Bool)

(assert (= bs!475769 (and d!746587 b!2631233)))

(assert (=> bs!475769 (= lambda!98731 lambda!98706)))

(declare-fun bs!475770 () Bool)

(assert (= bs!475770 (and d!746587 d!746569)))

(assert (=> bs!475770 (not (= lambda!98731 lambda!98723))))

(declare-fun bs!475771 () Bool)

(assert (= bs!475771 (and d!746587 b!2631525)))

(assert (=> bs!475771 (= lambda!98731 lambda!98724)))

(declare-fun b!2631650 () Bool)

(declare-fun e!1660510 () Bool)

(assert (=> b!2631650 (= e!1660510 true)))

(declare-fun b!2631649 () Bool)

(declare-fun e!1660509 () Bool)

(assert (=> b!2631649 (= e!1660509 e!1660510)))

(declare-fun b!2631648 () Bool)

(declare-fun e!1660508 () Bool)

(assert (=> b!2631648 (= e!1660508 e!1660509)))

(assert (=> d!746587 e!1660508))

(assert (= b!2631649 b!2631650))

(assert (= b!2631648 b!2631649))

(assert (= (and d!746587 (is-Cons!30487 rules!1726)) b!2631648))

(assert (=> b!2631650 (< (dynLambda!13051 order!16517 (toValue!6550 (transformation!4636 (h!35907 rules!1726)))) (dynLambda!13052 order!16519 lambda!98731))))

(assert (=> b!2631650 (< (dynLambda!13053 order!16521 (toChars!6409 (transformation!4636 (h!35907 rules!1726)))) (dynLambda!13052 order!16519 lambda!98731))))

(assert (=> d!746587 true))

(declare-fun e!1660507 () Bool)

(assert (=> d!746587 e!1660507))

(declare-fun res!1108048 () Bool)

(assert (=> d!746587 (=> (not res!1108048) (not e!1660507))))

(declare-fun lt!926091 () Bool)

(assert (=> d!746587 (= res!1108048 (= lt!926091 (forall!6379 (list!11461 v!6381) lambda!98731)))))

(assert (=> d!746587 (= lt!926091 (forall!6377 v!6381 lambda!98731))))

(assert (=> d!746587 (not (isEmpty!17382 rules!1726))))

(assert (=> d!746587 (= (rulesProduceEachTokenIndividually!1053 thiss!14197 rules!1726 v!6381) lt!926091)))

(declare-fun b!2631647 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1465 (LexerInterface!4233 List!30587 List!30588) Bool)

(assert (=> b!2631647 (= e!1660507 (= lt!926091 (rulesProduceEachTokenIndividuallyList!1465 thiss!14197 rules!1726 (list!11461 v!6381))))))

(assert (= (and d!746587 res!1108048) b!2631647))

(assert (=> d!746587 m!2974197))

(assert (=> d!746587 m!2974197))

(declare-fun m!2974771 () Bool)

(assert (=> d!746587 m!2974771))

(declare-fun m!2974773 () Bool)

(assert (=> d!746587 m!2974773))

(assert (=> d!746587 m!2974199))

(assert (=> b!2631647 m!2974197))

(assert (=> b!2631647 m!2974197))

(declare-fun m!2974775 () Bool)

(assert (=> b!2631647 m!2974775))

(assert (=> b!2631222 d!746587))

(declare-fun b!2631653 () Bool)

(declare-fun e!1660513 () Bool)

(assert (=> b!2631653 (= e!1660513 true)))

(declare-fun b!2631652 () Bool)

(declare-fun e!1660512 () Bool)

(assert (=> b!2631652 (= e!1660512 e!1660513)))

(declare-fun b!2631651 () Bool)

(declare-fun e!1660511 () Bool)

(assert (=> b!2631651 (= e!1660511 e!1660512)))

(assert (=> b!2631249 e!1660511))

(assert (= b!2631652 b!2631653))

(assert (= b!2631651 b!2631652))

(assert (= (and b!2631249 (is-Cons!30487 (t!216404 rules!1726))) b!2631651))

(assert (=> b!2631653 (< (dynLambda!13051 order!16517 (toValue!6550 (transformation!4636 (h!35907 (t!216404 rules!1726))))) (dynLambda!13052 order!16519 lambda!98706))))

(assert (=> b!2631653 (< (dynLambda!13053 order!16521 (toChars!6409 (transformation!4636 (h!35907 (t!216404 rules!1726))))) (dynLambda!13052 order!16519 lambda!98706))))

(declare-fun b!2631666 () Bool)

(declare-fun e!1660516 () Bool)

(declare-fun tp!834319 () Bool)

(assert (=> b!2631666 (= e!1660516 tp!834319)))

(declare-fun b!2631665 () Bool)

(declare-fun tp!834321 () Bool)

(declare-fun tp!834320 () Bool)

(assert (=> b!2631665 (= e!1660516 (and tp!834321 tp!834320))))

(assert (=> b!2631224 (= tp!834273 e!1660516)))

(declare-fun b!2631664 () Bool)

(declare-fun tp_is_empty!13755 () Bool)

(assert (=> b!2631664 (= e!1660516 tp_is_empty!13755)))

(declare-fun b!2631667 () Bool)

(declare-fun tp!834318 () Bool)

(declare-fun tp!834322 () Bool)

(assert (=> b!2631667 (= e!1660516 (and tp!834318 tp!834322))))

(assert (= (and b!2631224 (is-ElementMatch!7780 (regex!4636 (h!35907 rules!1726)))) b!2631664))

(assert (= (and b!2631224 (is-Concat!12638 (regex!4636 (h!35907 rules!1726)))) b!2631665))

(assert (= (and b!2631224 (is-Star!7780 (regex!4636 (h!35907 rules!1726)))) b!2631666))

(assert (= (and b!2631224 (is-Union!7780 (regex!4636 (h!35907 rules!1726)))) b!2631667))

(declare-fun b!2631674 () Bool)

(declare-fun e!1660521 () Bool)

(declare-fun tp!834325 () Bool)

(assert (=> b!2631674 (= e!1660521 (and tp_is_empty!13755 tp!834325))))

(assert (=> b!2631230 (= tp!834265 e!1660521)))

(assert (= (and b!2631230 (is-Cons!30486 (originalCharacters!5402 separatorToken!156))) b!2631674))

(declare-fun b!2631679 () Bool)

(declare-fun e!1660524 () Bool)

(declare-fun tp!834327 () Bool)

(assert (=> b!2631679 (= e!1660524 tp!834327)))

(declare-fun b!2631678 () Bool)

(declare-fun tp!834329 () Bool)

(declare-fun tp!834328 () Bool)

(assert (=> b!2631678 (= e!1660524 (and tp!834329 tp!834328))))

(assert (=> b!2631237 (= tp!834270 e!1660524)))

(declare-fun b!2631677 () Bool)

(assert (=> b!2631677 (= e!1660524 tp_is_empty!13755)))

(declare-fun b!2631680 () Bool)

(declare-fun tp!834326 () Bool)

(declare-fun tp!834330 () Bool)

(assert (=> b!2631680 (= e!1660524 (and tp!834326 tp!834330))))

(assert (= (and b!2631237 (is-ElementMatch!7780 (regex!4636 (rule!7018 separatorToken!156)))) b!2631677))

(assert (= (and b!2631237 (is-Concat!12638 (regex!4636 (rule!7018 separatorToken!156)))) b!2631678))

(assert (= (and b!2631237 (is-Star!7780 (regex!4636 (rule!7018 separatorToken!156)))) b!2631679))

(assert (= (and b!2631237 (is-Union!7780 (regex!4636 (rule!7018 separatorToken!156)))) b!2631680))

(declare-fun b!2631693 () Bool)

(declare-fun b_free!74213 () Bool)

(declare-fun b_next!74917 () Bool)

(assert (=> b!2631693 (= b_free!74213 (not b_next!74917))))

(declare-fun tp!834341 () Bool)

(declare-fun b_and!192799 () Bool)

(assert (=> b!2631693 (= tp!834341 b_and!192799)))

(declare-fun b_free!74215 () Bool)

(declare-fun b_next!74919 () Bool)

(assert (=> b!2631693 (= b_free!74215 (not b_next!74919))))

(declare-fun t!216443 () Bool)

(declare-fun tb!143595 () Bool)

(assert (=> (and b!2631693 (= (toChars!6409 (transformation!4636 (h!35907 (t!216404 rules!1726)))) (toChars!6409 (transformation!4636 (rule!7018 separatorToken!156)))) t!216443) tb!143595))

(declare-fun result!178460 () Bool)

(assert (= result!178460 result!178438))

(assert (=> b!2631355 t!216443))

(declare-fun t!216445 () Bool)

(declare-fun tb!143597 () Bool)

(assert (=> (and b!2631693 (= (toChars!6409 (transformation!4636 (h!35907 (t!216404 rules!1726)))) (toChars!6409 (transformation!4636 (rule!7018 lt!925809)))) t!216445) tb!143597))

(declare-fun result!178462 () Bool)

(assert (= result!178462 result!178444))

(assert (=> d!746577 t!216445))

(declare-fun tp!834340 () Bool)

(declare-fun b_and!192801 () Bool)

(assert (=> b!2631693 (= tp!834340 (and (=> t!216443 result!178460) (=> t!216445 result!178462) b_and!192801))))

(declare-fun e!1660535 () Bool)

(assert (=> b!2631693 (= e!1660535 (and tp!834341 tp!834340))))

(declare-fun e!1660533 () Bool)

(declare-fun tp!834339 () Bool)

(declare-fun b!2631692 () Bool)

(assert (=> b!2631692 (= e!1660533 (and tp!834339 (inv!41327 (tag!5130 (h!35907 (t!216404 rules!1726)))) (inv!41330 (transformation!4636 (h!35907 (t!216404 rules!1726)))) e!1660535))))

(declare-fun b!2631691 () Bool)

(declare-fun e!1660536 () Bool)

(declare-fun tp!834342 () Bool)

(assert (=> b!2631691 (= e!1660536 (and e!1660533 tp!834342))))

(assert (=> b!2631231 (= tp!834271 e!1660536)))

(assert (= b!2631692 b!2631693))

(assert (= b!2631691 b!2631692))

(assert (= (and b!2631231 (is-Cons!30487 (t!216404 rules!1726))) b!2631691))

(declare-fun m!2974777 () Bool)

(assert (=> b!2631692 m!2974777))

(declare-fun m!2974779 () Bool)

(assert (=> b!2631692 m!2974779))

(declare-fun tp!834349 () Bool)

(declare-fun b!2631705 () Bool)

(declare-fun tp!834350 () Bool)

(declare-fun e!1660544 () Bool)

(assert (=> b!2631705 (= e!1660544 (and (inv!41331 (left!23551 (c!422981 v!6381))) tp!834349 (inv!41331 (right!23881 (c!422981 v!6381))) tp!834350))))

(declare-fun b!2631707 () Bool)

(declare-fun e!1660543 () Bool)

(declare-fun tp!834351 () Bool)

(assert (=> b!2631707 (= e!1660543 tp!834351)))

(declare-fun b!2631706 () Bool)

(declare-fun inv!41342 (IArray!19035) Bool)

(assert (=> b!2631706 (= e!1660544 (and (inv!41342 (xs!12515 (c!422981 v!6381))) e!1660543))))

(assert (=> b!2631226 (= tp!834272 (and (inv!41331 (c!422981 v!6381)) e!1660544))))

(assert (= (and b!2631226 (is-Node!9515 (c!422981 v!6381))) b!2631705))

(assert (= b!2631706 b!2631707))

(assert (= (and b!2631226 (is-Leaf!14574 (c!422981 v!6381))) b!2631706))

(declare-fun m!2974799 () Bool)

(assert (=> b!2631705 m!2974799))

(declare-fun m!2974801 () Bool)

(assert (=> b!2631705 m!2974801))

(declare-fun m!2974803 () Bool)

(assert (=> b!2631706 m!2974803))

(assert (=> b!2631226 m!2974167))

(declare-fun b_lambda!79233 () Bool)

(assert (= b_lambda!79231 (or b!2631233 b_lambda!79233)))

(declare-fun bs!475772 () Bool)

(declare-fun d!746597 () Bool)

(assert (= bs!475772 (and d!746597 b!2631233)))

(assert (=> bs!475772 (= (dynLambda!13058 lambda!98706 lt!925809) (rulesProduceIndividualToken!1945 thiss!14197 rules!1726 lt!925809))))

(declare-fun m!2974805 () Bool)

(assert (=> bs!475772 m!2974805))

(assert (=> d!746585 d!746597))

(declare-fun b_lambda!79235 () Bool)

(assert (= b_lambda!79223 (or (and b!2631229 b_free!74199 (= (toChars!6409 (transformation!4636 (h!35907 rules!1726))) (toChars!6409 (transformation!4636 (rule!7018 separatorToken!156))))) (and b!2631236 b_free!74203) (and b!2631693 b_free!74215 (= (toChars!6409 (transformation!4636 (h!35907 (t!216404 rules!1726)))) (toChars!6409 (transformation!4636 (rule!7018 separatorToken!156))))) b_lambda!79235)))

(push 1)

(assert (not d!746513))

(assert (not b!2631426))

(assert (not b_next!74919))

(assert (not b!2631648))

(assert (not b!2631343))

(assert (not d!746537))

(assert (not b_next!74905))

(assert (not b!2631332))

(assert b_and!192771)

(assert (not d!746545))

(assert b_and!192799)

(assert b_and!192791)

(assert (not b!2631373))

(assert (not b!2631604))

(assert (not bm!169232))

(assert (not b!2631558))

(assert (not d!746533))

(assert (not b!2631368))

(assert (not b!2631370))

(assert (not b!2631647))

(assert (not b!2631437))

(assert (not b_next!74903))

(assert (not d!746585))

(assert (not b!2631427))

(assert (not d!746579))

(assert (not b!2631705))

(assert (not b!2631345))

(assert tp_is_empty!13755)

(assert (not d!746529))

(assert (not b!2631602))

(assert (not d!746507))

(assert (not b!2631560))

(assert (not d!746497))

(assert (not b!2631522))

(assert (not b!2631526))

(assert (not d!746489))

(assert (not b!2631692))

(assert (not d!746525))

(assert (not d!746549))

(assert (not b_next!74917))

(assert (not b!2631350))

(assert (not b!2631380))

(assert (not b!2631226))

(assert (not b!2631691))

(assert (not b!2631415))

(assert (not d!746567))

(assert (not bm!169230))

(assert (not d!746539))

(assert (not d!746551))

(assert (not b!2631680))

(assert (not b!2631449))

(assert (not b!2631707))

(assert (not b!2631559))

(assert b_and!192775)

(assert (not b!2631617))

(assert (not tb!143587))

(assert (not bm!169206))

(assert (not d!746571))

(assert (not b!2631389))

(assert (not b!2631531))

(assert (not b!2631331))

(assert (not d!746515))

(assert (not b!2631452))

(assert (not b!2631428))

(assert (not d!746509))

(assert (not b_next!74901))

(assert (not d!746569))

(assert (not b!2631442))

(assert (not bm!169243))

(assert (not d!746517))

(assert (not bm!169229))

(assert (not b!2631361))

(assert (not b!2631678))

(assert (not b!2631434))

(assert (not b_lambda!79235))

(assert (not b!2631561))

(assert (not b!2631674))

(assert (not b!2631525))

(assert (not d!746587))

(assert (not b!2631485))

(assert (not d!746547))

(assert b_and!192793)

(assert (not bm!169207))

(assert (not b!2631387))

(assert b_and!192801)

(assert (not b!2631527))

(assert (not b!2631667))

(assert (not b!2631679))

(assert (not b!2631355))

(assert (not b!2631665))

(assert (not b!2631608))

(assert (not b!2631483))

(assert (not b!2631651))

(assert (not d!746505))

(assert (not b!2631382))

(assert (not b!2631484))

(assert (not b_lambda!79233))

(assert (not d!746501))

(assert (not b!2631706))

(assert (not d!746511))

(assert (not tb!143583))

(assert (not d!746527))

(assert (not b!2631557))

(assert (not b!2631431))

(assert (not b!2631410))

(assert (not b!2631528))

(assert (not b!2631356))

(assert (not b!2631607))

(assert (not b_next!74907))

(assert (not d!746499))

(assert (not b_lambda!79227))

(assert (not b!2631666))

(assert (not b!2631419))

(assert (not d!746577))

(assert (not bs!475772))

(assert (not d!746543))

(assert (not b!2631606))

(assert (not b!2631347))

(assert (not b!2631605))

(assert (not b!2631609))

(assert (not bm!169228))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!74905))

(assert (not b_next!74903))

(assert (not b_next!74917))

(assert b_and!192775)

(assert (not b_next!74901))

(assert b_and!192793)

(assert b_and!192801)

(assert (not b_next!74919))

(assert (not b_next!74907))

(assert b_and!192771)

(assert b_and!192799)

(assert b_and!192791)

(check-sat)

(pop 1)

