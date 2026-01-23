; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!131138 () Bool)

(assert start!131138)

(declare-fun b!1422445 () Bool)

(declare-fun e!908050 () Bool)

(declare-datatypes ((C!7942 0))(
  ( (C!7943 (val!4541 Int)) )
))
(declare-datatypes ((List!14761 0))(
  ( (Nil!14695) (Cons!14695 (h!20096 C!7942) (t!124580 List!14761)) )
))
(declare-fun lt!481335 () List!14761)

(assert (=> b!1422445 (= e!908050 (= lt!481335 Nil!14695))))

(declare-fun b!1422446 () Bool)

(declare-fun e!908051 () List!14761)

(assert (=> b!1422446 (= e!908051 Nil!14695)))

(declare-fun b!1422447 () Bool)

(declare-fun e!908059 () Bool)

(declare-fun e!908054 () Bool)

(assert (=> b!1422447 (= e!908059 (not e!908054))))

(declare-fun res!644053 () Bool)

(assert (=> b!1422447 (=> res!644053 e!908054)))

(declare-datatypes ((IArray!9929 0))(
  ( (IArray!9930 (innerList!5022 List!14761)) )
))
(declare-datatypes ((Conc!4962 0))(
  ( (Node!4962 (left!12549 Conc!4962) (right!12879 Conc!4962) (csize!10154 Int) (cheight!5173 Int)) (Leaf!7448 (xs!7691 IArray!9929) (csize!10155 Int)) (Empty!4962) )
))
(declare-datatypes ((BalanceConc!9864 0))(
  ( (BalanceConc!9865 (c!233851 Conc!4962)) )
))
(declare-fun lt!481347 () BalanceConc!9864)

(assert (=> b!1422447 (= res!644053 (not (= lt!481347 (BalanceConc!9865 Empty!4962))))))

(declare-fun e!908056 () Bool)

(assert (=> b!1422447 e!908056))

(declare-fun res!644055 () Bool)

(assert (=> b!1422447 (=> (not res!644055) (not e!908056))))

(declare-fun lt!481340 () BalanceConc!9864)

(declare-fun lt!481341 () BalanceConc!9864)

(assert (=> b!1422447 (= res!644055 (= lt!481340 lt!481341))))

(declare-datatypes ((List!14762 0))(
  ( (Nil!14696) (Cons!14696 (h!20097 (_ BitVec 16)) (t!124581 List!14762)) )
))
(declare-datatypes ((TokenValue!2658 0))(
  ( (FloatLiteralValue!5316 (text!19051 List!14762)) (TokenValueExt!2657 (__x!9116 Int)) (Broken!13290 (value!82811 List!14762)) (Object!2723) (End!2658) (Def!2658) (Underscore!2658) (Match!2658) (Else!2658) (Error!2658) (Case!2658) (If!2658) (Extends!2658) (Abstract!2658) (Class!2658) (Val!2658) (DelimiterValue!5316 (del!2718 List!14762)) (KeywordValue!2664 (value!82812 List!14762)) (CommentValue!5316 (value!82813 List!14762)) (WhitespaceValue!5316 (value!82814 List!14762)) (IndentationValue!2658 (value!82815 List!14762)) (String!17547) (Int32!2658) (Broken!13291 (value!82816 List!14762)) (Boolean!2659) (Unit!22050) (OperatorValue!2661 (op!2718 List!14762)) (IdentifierValue!5316 (value!82817 List!14762)) (IdentifierValue!5317 (value!82818 List!14762)) (WhitespaceValue!5317 (value!82819 List!14762)) (True!5316) (False!5316) (Broken!13292 (value!82820 List!14762)) (Broken!13293 (value!82821 List!14762)) (True!5317) (RightBrace!2658) (RightBracket!2658) (Colon!2658) (Null!2658) (Comma!2658) (LeftBracket!2658) (False!5317) (LeftBrace!2658) (ImaginaryLiteralValue!2658 (text!19052 List!14762)) (StringLiteralValue!7974 (value!82822 List!14762)) (EOFValue!2658 (value!82823 List!14762)) (IdentValue!2658 (value!82824 List!14762)) (DelimiterValue!5317 (value!82825 List!14762)) (DedentValue!2658 (value!82826 List!14762)) (NewLineValue!2658 (value!82827 List!14762)) (IntegerValue!7974 (value!82828 (_ BitVec 32)) (text!19053 List!14762)) (IntegerValue!7975 (value!82829 Int) (text!19054 List!14762)) (Times!2658) (Or!2658) (Equal!2658) (Minus!2658) (Broken!13294 (value!82830 List!14762)) (And!2658) (Div!2658) (LessEqual!2658) (Mod!2658) (Concat!6540) (Not!2658) (Plus!2658) (SpaceValue!2658 (value!82831 List!14762)) (IntegerValue!7976 (value!82832 Int) (text!19055 List!14762)) (StringLiteralValue!7975 (text!19056 List!14762)) (FloatLiteralValue!5317 (text!19057 List!14762)) (BytesLiteralValue!2658 (value!82833 List!14762)) (CommentValue!5317 (value!82834 List!14762)) (StringLiteralValue!7976 (value!82835 List!14762)) (ErrorTokenValue!2658 (msg!2719 List!14762)) )
))
(declare-datatypes ((Regex!3882 0))(
  ( (ElementMatch!3882 (c!233852 C!7942)) (Concat!6541 (regOne!8276 Regex!3882) (regTwo!8276 Regex!3882)) (EmptyExpr!3882) (Star!3882 (reg!4211 Regex!3882)) (EmptyLang!3882) (Union!3882 (regOne!8277 Regex!3882) (regTwo!8277 Regex!3882)) )
))
(declare-datatypes ((String!17548 0))(
  ( (String!17549 (value!82836 String)) )
))
(declare-datatypes ((TokenValueInjection!4976 0))(
  ( (TokenValueInjection!4977 (toValue!3867 Int) (toChars!3726 Int)) )
))
(declare-datatypes ((Rule!4936 0))(
  ( (Rule!4937 (regex!2568 Regex!3882) (tag!2830 String!17548) (isSeparator!2568 Bool) (transformation!2568 TokenValueInjection!4976)) )
))
(declare-datatypes ((Token!4798 0))(
  ( (Token!4799 (value!82837 TokenValue!2658) (rule!4331 Rule!4936) (size!12089 Int) (originalCharacters!3430 List!14761)) )
))
(declare-datatypes ((List!14763 0))(
  ( (Nil!14697) (Cons!14697 (h!20098 Token!4798) (t!124582 List!14763)) )
))
(declare-datatypes ((IArray!9931 0))(
  ( (IArray!9932 (innerList!5023 List!14763)) )
))
(declare-datatypes ((Conc!4963 0))(
  ( (Node!4963 (left!12550 Conc!4963) (right!12880 Conc!4963) (csize!10156 Int) (cheight!5174 Int)) (Leaf!7449 (xs!7692 IArray!9931) (csize!10157 Int)) (Empty!4963) )
))
(declare-datatypes ((BalanceConc!9866 0))(
  ( (BalanceConc!9867 (c!233853 Conc!4963)) )
))
(declare-datatypes ((List!14764 0))(
  ( (Nil!14698) (Cons!14698 (h!20099 Rule!4936) (t!124583 List!14764)) )
))
(declare-datatypes ((PrintableTokens!918 0))(
  ( (PrintableTokens!919 (rules!11195 List!14764) (tokens!1887 BalanceConc!9866)) )
))
(declare-fun other!32 () PrintableTokens!918)

(declare-datatypes ((LexerInterface!2234 0))(
  ( (LexerInterfaceExt!2231 (__x!9117 Int)) (Lexer!2232) )
))
(declare-fun print!1023 (LexerInterface!2234 BalanceConc!9866) BalanceConc!9864)

(assert (=> b!1422447 (= lt!481341 (print!1023 Lexer!2232 (tokens!1887 other!32)))))

(declare-fun print!1024 (PrintableTokens!918) BalanceConc!9864)

(assert (=> b!1422447 (= lt!481340 (print!1024 other!32))))

(declare-datatypes ((Unit!22051 0))(
  ( (Unit!22052) )
))
(declare-fun lt!481338 () Unit!22051)

(declare-fun lt!481336 () List!14763)

(declare-fun theoremInvertabilityWhenTokenListSeparable!54 (LexerInterface!2234 List!14764 List!14763) Unit!22051)

(assert (=> b!1422447 (= lt!481338 (theoremInvertabilityWhenTokenListSeparable!54 Lexer!2232 (rules!11195 other!32) lt!481336))))

(declare-fun lt!481345 () BalanceConc!9864)

(assert (=> b!1422447 (= lt!481345 lt!481347)))

(declare-fun thiss!10022 () PrintableTokens!918)

(assert (=> b!1422447 (= lt!481347 (print!1023 Lexer!2232 (tokens!1887 thiss!10022)))))

(assert (=> b!1422447 (= lt!481345 (print!1024 thiss!10022))))

(declare-fun lt!481342 () Unit!22051)

(declare-fun lt!481348 () List!14763)

(assert (=> b!1422447 (= lt!481342 (theoremInvertabilityWhenTokenListSeparable!54 Lexer!2232 (rules!11195 thiss!10022) lt!481348))))

(assert (=> b!1422447 e!908050))

(declare-fun res!644049 () Bool)

(assert (=> b!1422447 (=> (not res!644049) (not e!908050))))

(declare-fun lt!481333 () List!14761)

(declare-fun lt!481337 () List!14763)

(declare-fun printList!688 (LexerInterface!2234 List!14763) List!14761)

(declare-fun ++!3894 (List!14761 List!14761) List!14761)

(assert (=> b!1422447 (= res!644049 (= (printList!688 Lexer!2232 lt!481337) (++!3894 lt!481335 lt!481333)))))

(assert (=> b!1422447 (= lt!481333 (printList!688 Lexer!2232 lt!481336))))

(assert (=> b!1422447 (= lt!481335 (printList!688 Lexer!2232 Nil!14697))))

(declare-fun ++!3895 (List!14763 List!14763) List!14763)

(assert (=> b!1422447 (= lt!481337 (++!3895 Nil!14697 lt!481336))))

(declare-fun lt!481346 () Unit!22051)

(declare-fun lemmaPrintConcatSameAsConcatPrint!53 (LexerInterface!2234 List!14763 List!14763) Unit!22051)

(assert (=> b!1422447 (= lt!481346 (lemmaPrintConcatSameAsConcatPrint!53 Lexer!2232 Nil!14697 lt!481336))))

(declare-fun b!1422448 () Bool)

(declare-fun e!908060 () Bool)

(assert (=> b!1422448 (= e!908054 e!908060)))

(declare-fun res!644047 () Bool)

(assert (=> b!1422448 (=> res!644047 e!908060)))

(declare-datatypes ((Option!2817 0))(
  ( (None!2816) (Some!2816 (v!22240 PrintableTokens!918)) )
))
(declare-fun lt!481334 () Option!2817)

(declare-fun isEmpty!9075 (Option!2817) Bool)

(assert (=> b!1422448 (= res!644047 (isEmpty!9075 lt!481334))))

(assert (=> b!1422448 (= lt!481334 (Some!2816 other!32))))

(declare-fun b!1422449 () Bool)

(declare-fun e!908061 () Bool)

(declare-fun tp!403245 () Bool)

(declare-fun inv!19467 (Conc!4963) Bool)

(assert (=> b!1422449 (= e!908061 (and (inv!19467 (c!233853 (tokens!1887 other!32))) tp!403245))))

(declare-fun tp!403247 () Bool)

(declare-fun b!1422451 () Bool)

(declare-fun e!908053 () Bool)

(declare-fun inv!19468 (BalanceConc!9866) Bool)

(assert (=> b!1422451 (= e!908053 (and tp!403247 (inv!19468 (tokens!1887 other!32)) e!908061))))

(declare-fun b!1422452 () Bool)

(declare-fun res!644054 () Bool)

(assert (=> b!1422452 (=> (not res!644054) (not e!908056))))

(declare-fun printTailRec!662 (LexerInterface!2234 BalanceConc!9866 Int BalanceConc!9864) BalanceConc!9864)

(assert (=> b!1422452 (= res!644054 (= lt!481341 (printTailRec!662 Lexer!2232 (tokens!1887 other!32) 0 (BalanceConc!9865 Empty!4962))))))

(declare-fun b!1422453 () Bool)

(declare-fun isDefined!2278 (Option!2817) Bool)

(assert (=> b!1422453 (= e!908060 (isDefined!2278 lt!481334))))

(declare-fun b!1422454 () Bool)

(declare-fun list!5824 (BalanceConc!9864) List!14761)

(declare-fun charsOf!1493 (Token!4798) BalanceConc!9864)

(assert (=> b!1422454 (= e!908051 (++!3894 (list!5824 (charsOf!1493 (h!20098 lt!481336))) (printList!688 Lexer!2232 (t!124582 lt!481336))))))

(declare-fun b!1422455 () Bool)

(declare-fun e!908055 () Bool)

(declare-fun tp!403246 () Bool)

(assert (=> b!1422455 (= e!908055 (and (inv!19467 (c!233853 (tokens!1887 thiss!10022))) tp!403246))))

(declare-fun b!1422456 () Bool)

(declare-fun e!908062 () Bool)

(declare-fun e!908052 () Bool)

(assert (=> b!1422456 (= e!908062 e!908052)))

(declare-fun res!644056 () Bool)

(assert (=> b!1422456 (=> (not res!644056) (not e!908052))))

(declare-fun isEmpty!9076 (List!14763) Bool)

(assert (=> b!1422456 (= res!644056 (isEmpty!9076 lt!481348))))

(declare-fun list!5825 (BalanceConc!9866) List!14763)

(assert (=> b!1422456 (= lt!481348 (list!5825 (tokens!1887 thiss!10022)))))

(declare-fun b!1422450 () Bool)

(assert (=> b!1422450 (= e!908052 e!908059)))

(declare-fun res!644048 () Bool)

(assert (=> b!1422450 (=> (not res!644048) (not e!908059))))

(declare-fun lt!481344 () List!14763)

(assert (=> b!1422450 (= res!644048 (= lt!481336 (++!3895 lt!481344 lt!481336)))))

(assert (=> b!1422450 (= lt!481336 (list!5825 (tokens!1887 other!32)))))

(assert (=> b!1422450 (= lt!481344 (list!5825 (BalanceConc!9867 Empty!4963)))))

(declare-fun res!644051 () Bool)

(declare-fun e!908058 () Bool)

(assert (=> start!131138 (=> (not res!644051) (not e!908058))))

(assert (=> start!131138 (= res!644051 (= (rules!11195 thiss!10022) (rules!11195 other!32)))))

(assert (=> start!131138 e!908058))

(declare-fun e!908057 () Bool)

(declare-fun inv!19469 (PrintableTokens!918) Bool)

(assert (=> start!131138 (and (inv!19469 thiss!10022) e!908057)))

(assert (=> start!131138 (and (inv!19469 other!32) e!908053)))

(declare-fun b!1422457 () Bool)

(declare-fun res!644050 () Bool)

(assert (=> b!1422457 (=> (not res!644050) (not e!908062))))

(declare-fun isEmpty!9077 (BalanceConc!9866) Bool)

(assert (=> b!1422457 (= res!644050 (isEmpty!9077 (tokens!1887 thiss!10022)))))

(declare-fun b!1422458 () Bool)

(declare-fun tp!403248 () Bool)

(assert (=> b!1422458 (= e!908057 (and tp!403248 (inv!19468 (tokens!1887 thiss!10022)) e!908055))))

(declare-fun b!1422459 () Bool)

(assert (=> b!1422459 (= e!908056 (= lt!481333 e!908051))))

(declare-fun c!233850 () Bool)

(assert (=> b!1422459 (= c!233850 (is-Cons!14697 lt!481336))))

(declare-fun b!1422460 () Bool)

(assert (=> b!1422460 (= e!908058 e!908062)))

(declare-fun res!644052 () Bool)

(assert (=> b!1422460 (=> (not res!644052) (not e!908062))))

(assert (=> b!1422460 (= res!644052 (not (isEmpty!9077 (tokens!1887 other!32))))))

(declare-fun lt!481339 () Unit!22051)

(declare-fun lemmaInvariant!264 (PrintableTokens!918) Unit!22051)

(assert (=> b!1422460 (= lt!481339 (lemmaInvariant!264 thiss!10022))))

(declare-fun lt!481343 () Unit!22051)

(assert (=> b!1422460 (= lt!481343 (lemmaInvariant!264 other!32))))

(assert (= (and start!131138 res!644051) b!1422460))

(assert (= (and b!1422460 res!644052) b!1422457))

(assert (= (and b!1422457 res!644050) b!1422456))

(assert (= (and b!1422456 res!644056) b!1422450))

(assert (= (and b!1422450 res!644048) b!1422447))

(assert (= (and b!1422447 res!644049) b!1422445))

(assert (= (and b!1422447 res!644055) b!1422452))

(assert (= (and b!1422452 res!644054) b!1422459))

(assert (= (and b!1422459 c!233850) b!1422454))

(assert (= (and b!1422459 (not c!233850)) b!1422446))

(assert (= (and b!1422447 (not res!644053)) b!1422448))

(assert (= (and b!1422448 (not res!644047)) b!1422453))

(assert (= b!1422458 b!1422455))

(assert (= start!131138 b!1422458))

(assert (= b!1422451 b!1422449))

(assert (= start!131138 b!1422451))

(declare-fun m!1614049 () Bool)

(assert (=> b!1422457 m!1614049))

(declare-fun m!1614051 () Bool)

(assert (=> b!1422451 m!1614051))

(declare-fun m!1614053 () Bool)

(assert (=> b!1422458 m!1614053))

(declare-fun m!1614055 () Bool)

(assert (=> b!1422448 m!1614055))

(declare-fun m!1614057 () Bool)

(assert (=> b!1422450 m!1614057))

(declare-fun m!1614059 () Bool)

(assert (=> b!1422450 m!1614059))

(declare-fun m!1614061 () Bool)

(assert (=> b!1422450 m!1614061))

(declare-fun m!1614063 () Bool)

(assert (=> b!1422455 m!1614063))

(declare-fun m!1614065 () Bool)

(assert (=> b!1422447 m!1614065))

(declare-fun m!1614067 () Bool)

(assert (=> b!1422447 m!1614067))

(declare-fun m!1614069 () Bool)

(assert (=> b!1422447 m!1614069))

(declare-fun m!1614071 () Bool)

(assert (=> b!1422447 m!1614071))

(declare-fun m!1614073 () Bool)

(assert (=> b!1422447 m!1614073))

(declare-fun m!1614075 () Bool)

(assert (=> b!1422447 m!1614075))

(declare-fun m!1614077 () Bool)

(assert (=> b!1422447 m!1614077))

(declare-fun m!1614079 () Bool)

(assert (=> b!1422447 m!1614079))

(declare-fun m!1614081 () Bool)

(assert (=> b!1422447 m!1614081))

(declare-fun m!1614083 () Bool)

(assert (=> b!1422447 m!1614083))

(declare-fun m!1614085 () Bool)

(assert (=> b!1422447 m!1614085))

(declare-fun m!1614087 () Bool)

(assert (=> b!1422447 m!1614087))

(declare-fun m!1614089 () Bool)

(assert (=> b!1422456 m!1614089))

(declare-fun m!1614091 () Bool)

(assert (=> b!1422456 m!1614091))

(declare-fun m!1614093 () Bool)

(assert (=> b!1422454 m!1614093))

(assert (=> b!1422454 m!1614093))

(declare-fun m!1614095 () Bool)

(assert (=> b!1422454 m!1614095))

(declare-fun m!1614097 () Bool)

(assert (=> b!1422454 m!1614097))

(assert (=> b!1422454 m!1614095))

(assert (=> b!1422454 m!1614097))

(declare-fun m!1614099 () Bool)

(assert (=> b!1422454 m!1614099))

(declare-fun m!1614101 () Bool)

(assert (=> b!1422449 m!1614101))

(declare-fun m!1614103 () Bool)

(assert (=> b!1422453 m!1614103))

(declare-fun m!1614105 () Bool)

(assert (=> b!1422452 m!1614105))

(declare-fun m!1614107 () Bool)

(assert (=> start!131138 m!1614107))

(declare-fun m!1614109 () Bool)

(assert (=> start!131138 m!1614109))

(declare-fun m!1614111 () Bool)

(assert (=> b!1422460 m!1614111))

(declare-fun m!1614113 () Bool)

(assert (=> b!1422460 m!1614113))

(declare-fun m!1614115 () Bool)

(assert (=> b!1422460 m!1614115))

(push 1)

(assert (not start!131138))

(assert (not b!1422452))

(assert (not b!1422449))

(assert (not b!1422455))

(assert (not b!1422454))

(assert (not b!1422457))

(assert (not b!1422456))

(assert (not b!1422450))

(assert (not b!1422447))

(assert (not b!1422451))

(assert (not b!1422453))

(assert (not b!1422458))

(assert (not b!1422448))

(assert (not b!1422460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1422517 () Bool)

(declare-fun e!908106 () List!14761)

(assert (=> b!1422517 (= e!908106 (printList!688 Lexer!2232 (t!124582 lt!481336)))))

(declare-fun b!1422519 () Bool)

(declare-fun res!644095 () Bool)

(declare-fun e!908107 () Bool)

(assert (=> b!1422519 (=> (not res!644095) (not e!908107))))

(declare-fun lt!481399 () List!14761)

(declare-fun size!12091 (List!14761) Int)

(assert (=> b!1422519 (= res!644095 (= (size!12091 lt!481399) (+ (size!12091 (list!5824 (charsOf!1493 (h!20098 lt!481336)))) (size!12091 (printList!688 Lexer!2232 (t!124582 lt!481336))))))))

(declare-fun d!407418 () Bool)

(assert (=> d!407418 e!908107))

(declare-fun res!644096 () Bool)

(assert (=> d!407418 (=> (not res!644096) (not e!908107))))

(declare-fun content!2165 (List!14761) (Set C!7942))

(assert (=> d!407418 (= res!644096 (= (content!2165 lt!481399) (set.union (content!2165 (list!5824 (charsOf!1493 (h!20098 lt!481336)))) (content!2165 (printList!688 Lexer!2232 (t!124582 lt!481336))))))))

(assert (=> d!407418 (= lt!481399 e!908106)))

(declare-fun c!233863 () Bool)

(assert (=> d!407418 (= c!233863 (is-Nil!14695 (list!5824 (charsOf!1493 (h!20098 lt!481336)))))))

(assert (=> d!407418 (= (++!3894 (list!5824 (charsOf!1493 (h!20098 lt!481336))) (printList!688 Lexer!2232 (t!124582 lt!481336))) lt!481399)))

(declare-fun b!1422520 () Bool)

(assert (=> b!1422520 (= e!908107 (or (not (= (printList!688 Lexer!2232 (t!124582 lt!481336)) Nil!14695)) (= lt!481399 (list!5824 (charsOf!1493 (h!20098 lt!481336))))))))

(declare-fun b!1422518 () Bool)

(assert (=> b!1422518 (= e!908106 (Cons!14695 (h!20096 (list!5824 (charsOf!1493 (h!20098 lt!481336)))) (++!3894 (t!124580 (list!5824 (charsOf!1493 (h!20098 lt!481336)))) (printList!688 Lexer!2232 (t!124582 lt!481336)))))))

(assert (= (and d!407418 c!233863) b!1422517))

(assert (= (and d!407418 (not c!233863)) b!1422518))

(assert (= (and d!407418 res!644096) b!1422519))

(assert (= (and b!1422519 res!644095) b!1422520))

(declare-fun m!1614185 () Bool)

(assert (=> b!1422519 m!1614185))

(assert (=> b!1422519 m!1614095))

(declare-fun m!1614187 () Bool)

(assert (=> b!1422519 m!1614187))

(assert (=> b!1422519 m!1614097))

(declare-fun m!1614189 () Bool)

(assert (=> b!1422519 m!1614189))

(declare-fun m!1614191 () Bool)

(assert (=> d!407418 m!1614191))

(assert (=> d!407418 m!1614095))

(declare-fun m!1614193 () Bool)

(assert (=> d!407418 m!1614193))

(assert (=> d!407418 m!1614097))

(declare-fun m!1614195 () Bool)

(assert (=> d!407418 m!1614195))

(assert (=> b!1422518 m!1614097))

(declare-fun m!1614197 () Bool)

(assert (=> b!1422518 m!1614197))

(assert (=> b!1422454 d!407418))

(declare-fun d!407420 () Bool)

(declare-fun list!5828 (Conc!4962) List!14761)

(assert (=> d!407420 (= (list!5824 (charsOf!1493 (h!20098 lt!481336))) (list!5828 (c!233851 (charsOf!1493 (h!20098 lt!481336)))))))

(declare-fun bs!339857 () Bool)

(assert (= bs!339857 d!407420))

(declare-fun m!1614199 () Bool)

(assert (=> bs!339857 m!1614199))

(assert (=> b!1422454 d!407420))

(declare-fun d!407422 () Bool)

(declare-fun lt!481402 () BalanceConc!9864)

(assert (=> d!407422 (= (list!5824 lt!481402) (originalCharacters!3430 (h!20098 lt!481336)))))

(declare-fun dynLambda!6735 (Int TokenValue!2658) BalanceConc!9864)

(assert (=> d!407422 (= lt!481402 (dynLambda!6735 (toChars!3726 (transformation!2568 (rule!4331 (h!20098 lt!481336)))) (value!82837 (h!20098 lt!481336))))))

(assert (=> d!407422 (= (charsOf!1493 (h!20098 lt!481336)) lt!481402)))

(declare-fun b_lambda!44639 () Bool)

(assert (=> (not b_lambda!44639) (not d!407422)))

(declare-fun bs!339858 () Bool)

(assert (= bs!339858 d!407422))

(declare-fun m!1614201 () Bool)

(assert (=> bs!339858 m!1614201))

(declare-fun m!1614203 () Bool)

(assert (=> bs!339858 m!1614203))

(assert (=> b!1422454 d!407422))

(declare-fun d!407424 () Bool)

(declare-fun c!233866 () Bool)

(assert (=> d!407424 (= c!233866 (is-Cons!14697 (t!124582 lt!481336)))))

(declare-fun e!908110 () List!14761)

(assert (=> d!407424 (= (printList!688 Lexer!2232 (t!124582 lt!481336)) e!908110)))

(declare-fun b!1422525 () Bool)

(assert (=> b!1422525 (= e!908110 (++!3894 (list!5824 (charsOf!1493 (h!20098 (t!124582 lt!481336)))) (printList!688 Lexer!2232 (t!124582 (t!124582 lt!481336)))))))

(declare-fun b!1422526 () Bool)

(assert (=> b!1422526 (= e!908110 Nil!14695)))

(assert (= (and d!407424 c!233866) b!1422525))

(assert (= (and d!407424 (not c!233866)) b!1422526))

(declare-fun m!1614205 () Bool)

(assert (=> b!1422525 m!1614205))

(assert (=> b!1422525 m!1614205))

(declare-fun m!1614207 () Bool)

(assert (=> b!1422525 m!1614207))

(declare-fun m!1614209 () Bool)

(assert (=> b!1422525 m!1614209))

(assert (=> b!1422525 m!1614207))

(assert (=> b!1422525 m!1614209))

(declare-fun m!1614211 () Bool)

(assert (=> b!1422525 m!1614211))

(assert (=> b!1422454 d!407424))

(declare-fun d!407426 () Bool)

(assert (=> d!407426 (= (isDefined!2278 lt!481334) (not (isEmpty!9075 lt!481334)))))

(declare-fun bs!339859 () Bool)

(assert (= bs!339859 d!407426))

(assert (=> bs!339859 m!1614055))

(assert (=> b!1422453 d!407426))

(declare-fun d!407428 () Bool)

(declare-fun lt!481420 () BalanceConc!9864)

(declare-fun printListTailRec!272 (LexerInterface!2234 List!14763 List!14761) List!14761)

(declare-fun dropList!445 (BalanceConc!9866 Int) List!14763)

(assert (=> d!407428 (= (list!5824 lt!481420) (printListTailRec!272 Lexer!2232 (dropList!445 (tokens!1887 other!32) 0) (list!5824 (BalanceConc!9865 Empty!4962))))))

(declare-fun e!908116 () BalanceConc!9864)

(assert (=> d!407428 (= lt!481420 e!908116)))

(declare-fun c!233869 () Bool)

(declare-fun size!12092 (BalanceConc!9866) Int)

(assert (=> d!407428 (= c!233869 (>= 0 (size!12092 (tokens!1887 other!32))))))

(declare-fun e!908115 () Bool)

(assert (=> d!407428 e!908115))

(declare-fun res!644099 () Bool)

(assert (=> d!407428 (=> (not res!644099) (not e!908115))))

(assert (=> d!407428 (= res!644099 (>= 0 0))))

(assert (=> d!407428 (= (printTailRec!662 Lexer!2232 (tokens!1887 other!32) 0 (BalanceConc!9865 Empty!4962)) lt!481420)))

(declare-fun b!1422533 () Bool)

(assert (=> b!1422533 (= e!908115 (<= 0 (size!12092 (tokens!1887 other!32))))))

(declare-fun b!1422534 () Bool)

(assert (=> b!1422534 (= e!908116 (BalanceConc!9865 Empty!4962))))

(declare-fun b!1422535 () Bool)

(declare-fun ++!3898 (BalanceConc!9864 BalanceConc!9864) BalanceConc!9864)

(declare-fun apply!3743 (BalanceConc!9866 Int) Token!4798)

(assert (=> b!1422535 (= e!908116 (printTailRec!662 Lexer!2232 (tokens!1887 other!32) (+ 0 1) (++!3898 (BalanceConc!9865 Empty!4962) (charsOf!1493 (apply!3743 (tokens!1887 other!32) 0)))))))

(declare-fun lt!481419 () List!14763)

(assert (=> b!1422535 (= lt!481419 (list!5825 (tokens!1887 other!32)))))

(declare-fun lt!481421 () Unit!22051)

(declare-fun lemmaDropApply!467 (List!14763 Int) Unit!22051)

(assert (=> b!1422535 (= lt!481421 (lemmaDropApply!467 lt!481419 0))))

(declare-fun head!2800 (List!14763) Token!4798)

(declare-fun drop!713 (List!14763 Int) List!14763)

(declare-fun apply!3744 (List!14763 Int) Token!4798)

(assert (=> b!1422535 (= (head!2800 (drop!713 lt!481419 0)) (apply!3744 lt!481419 0))))

(declare-fun lt!481417 () Unit!22051)

(assert (=> b!1422535 (= lt!481417 lt!481421)))

(declare-fun lt!481422 () List!14763)

(assert (=> b!1422535 (= lt!481422 (list!5825 (tokens!1887 other!32)))))

(declare-fun lt!481418 () Unit!22051)

(declare-fun lemmaDropTail!447 (List!14763 Int) Unit!22051)

(assert (=> b!1422535 (= lt!481418 (lemmaDropTail!447 lt!481422 0))))

(declare-fun tail!2137 (List!14763) List!14763)

(assert (=> b!1422535 (= (tail!2137 (drop!713 lt!481422 0)) (drop!713 lt!481422 (+ 0 1)))))

(declare-fun lt!481423 () Unit!22051)

(assert (=> b!1422535 (= lt!481423 lt!481418)))

(assert (= (and d!407428 res!644099) b!1422533))

(assert (= (and d!407428 c!233869) b!1422534))

(assert (= (and d!407428 (not c!233869)) b!1422535))

(declare-fun m!1614213 () Bool)

(assert (=> d!407428 m!1614213))

(declare-fun m!1614215 () Bool)

(assert (=> d!407428 m!1614215))

(declare-fun m!1614217 () Bool)

(assert (=> d!407428 m!1614217))

(assert (=> d!407428 m!1614213))

(declare-fun m!1614219 () Bool)

(assert (=> d!407428 m!1614219))

(assert (=> d!407428 m!1614217))

(declare-fun m!1614221 () Bool)

(assert (=> d!407428 m!1614221))

(assert (=> b!1422533 m!1614215))

(declare-fun m!1614223 () Bool)

(assert (=> b!1422535 m!1614223))

(declare-fun m!1614225 () Bool)

(assert (=> b!1422535 m!1614225))

(declare-fun m!1614227 () Bool)

(assert (=> b!1422535 m!1614227))

(declare-fun m!1614229 () Bool)

(assert (=> b!1422535 m!1614229))

(declare-fun m!1614231 () Bool)

(assert (=> b!1422535 m!1614231))

(declare-fun m!1614233 () Bool)

(assert (=> b!1422535 m!1614233))

(declare-fun m!1614235 () Bool)

(assert (=> b!1422535 m!1614235))

(assert (=> b!1422535 m!1614059))

(assert (=> b!1422535 m!1614223))

(declare-fun m!1614237 () Bool)

(assert (=> b!1422535 m!1614237))

(assert (=> b!1422535 m!1614229))

(declare-fun m!1614239 () Bool)

(assert (=> b!1422535 m!1614239))

(assert (=> b!1422535 m!1614239))

(declare-fun m!1614241 () Bool)

(assert (=> b!1422535 m!1614241))

(declare-fun m!1614243 () Bool)

(assert (=> b!1422535 m!1614243))

(declare-fun m!1614245 () Bool)

(assert (=> b!1422535 m!1614245))

(assert (=> b!1422535 m!1614233))

(assert (=> b!1422535 m!1614227))

(assert (=> b!1422452 d!407428))

(declare-fun d!407430 () Bool)

(declare-fun res!644109 () Bool)

(declare-fun e!908125 () Bool)

(assert (=> d!407430 (=> (not res!644109) (not e!908125))))

(declare-fun isEmpty!9081 (List!14764) Bool)

(assert (=> d!407430 (= res!644109 (not (isEmpty!9081 (rules!11195 thiss!10022))))))

(assert (=> d!407430 (= (inv!19469 thiss!10022) e!908125)))

(declare-fun b!1422551 () Bool)

(declare-fun res!644110 () Bool)

(assert (=> b!1422551 (=> (not res!644110) (not e!908125))))

(declare-fun rulesInvariant!2088 (LexerInterface!2234 List!14764) Bool)

(assert (=> b!1422551 (= res!644110 (rulesInvariant!2088 Lexer!2232 (rules!11195 thiss!10022)))))

(declare-fun b!1422552 () Bool)

(declare-fun res!644111 () Bool)

(assert (=> b!1422552 (=> (not res!644111) (not e!908125))))

(declare-fun rulesProduceEachTokenIndividually!815 (LexerInterface!2234 List!14764 BalanceConc!9866) Bool)

(assert (=> b!1422552 (= res!644111 (rulesProduceEachTokenIndividually!815 Lexer!2232 (rules!11195 thiss!10022) (tokens!1887 thiss!10022)))))

(declare-fun b!1422553 () Bool)

(declare-fun separableTokens!200 (LexerInterface!2234 BalanceConc!9866 List!14764) Bool)

(assert (=> b!1422553 (= e!908125 (separableTokens!200 Lexer!2232 (tokens!1887 thiss!10022) (rules!11195 thiss!10022)))))

(assert (= (and d!407430 res!644109) b!1422551))

(assert (= (and b!1422551 res!644110) b!1422552))

(assert (= (and b!1422552 res!644111) b!1422553))

(declare-fun m!1614289 () Bool)

(assert (=> d!407430 m!1614289))

(declare-fun m!1614291 () Bool)

(assert (=> b!1422551 m!1614291))

(declare-fun m!1614293 () Bool)

(assert (=> b!1422552 m!1614293))

(declare-fun m!1614295 () Bool)

(assert (=> b!1422553 m!1614295))

(assert (=> start!131138 d!407430))

(declare-fun d!407440 () Bool)

(declare-fun res!644112 () Bool)

(declare-fun e!908126 () Bool)

(assert (=> d!407440 (=> (not res!644112) (not e!908126))))

(assert (=> d!407440 (= res!644112 (not (isEmpty!9081 (rules!11195 other!32))))))

(assert (=> d!407440 (= (inv!19469 other!32) e!908126)))

(declare-fun b!1422554 () Bool)

(declare-fun res!644113 () Bool)

(assert (=> b!1422554 (=> (not res!644113) (not e!908126))))

(assert (=> b!1422554 (= res!644113 (rulesInvariant!2088 Lexer!2232 (rules!11195 other!32)))))

(declare-fun b!1422555 () Bool)

(declare-fun res!644114 () Bool)

(assert (=> b!1422555 (=> (not res!644114) (not e!908126))))

(assert (=> b!1422555 (= res!644114 (rulesProduceEachTokenIndividually!815 Lexer!2232 (rules!11195 other!32) (tokens!1887 other!32)))))

(declare-fun b!1422556 () Bool)

(assert (=> b!1422556 (= e!908126 (separableTokens!200 Lexer!2232 (tokens!1887 other!32) (rules!11195 other!32)))))

(assert (= (and d!407440 res!644112) b!1422554))

(assert (= (and b!1422554 res!644113) b!1422555))

(assert (= (and b!1422555 res!644114) b!1422556))

(declare-fun m!1614297 () Bool)

(assert (=> d!407440 m!1614297))

(declare-fun m!1614299 () Bool)

(assert (=> b!1422554 m!1614299))

(declare-fun m!1614301 () Bool)

(assert (=> b!1422555 m!1614301))

(declare-fun m!1614303 () Bool)

(assert (=> b!1422556 m!1614303))

(assert (=> start!131138 d!407440))

(declare-fun d!407442 () Bool)

(declare-fun isBalanced!1473 (Conc!4963) Bool)

(assert (=> d!407442 (= (inv!19468 (tokens!1887 other!32)) (isBalanced!1473 (c!233853 (tokens!1887 other!32))))))

(declare-fun bs!339862 () Bool)

(assert (= bs!339862 d!407442))

(declare-fun m!1614305 () Bool)

(assert (=> bs!339862 m!1614305))

(assert (=> b!1422451 d!407442))

(declare-fun b!1422567 () Bool)

(declare-fun res!644120 () Bool)

(declare-fun e!908131 () Bool)

(assert (=> b!1422567 (=> (not res!644120) (not e!908131))))

(declare-fun lt!481451 () List!14763)

(declare-fun size!12093 (List!14763) Int)

(assert (=> b!1422567 (= res!644120 (= (size!12093 lt!481451) (+ (size!12093 lt!481344) (size!12093 lt!481336))))))

(declare-fun b!1422565 () Bool)

(declare-fun e!908132 () List!14763)

(assert (=> b!1422565 (= e!908132 lt!481336)))

(declare-fun b!1422566 () Bool)

(assert (=> b!1422566 (= e!908132 (Cons!14697 (h!20098 lt!481344) (++!3895 (t!124582 lt!481344) lt!481336)))))

(declare-fun b!1422568 () Bool)

(assert (=> b!1422568 (= e!908131 (or (not (= lt!481336 Nil!14697)) (= lt!481451 lt!481344)))))

(declare-fun d!407444 () Bool)

(assert (=> d!407444 e!908131))

(declare-fun res!644119 () Bool)

(assert (=> d!407444 (=> (not res!644119) (not e!908131))))

(declare-fun content!2166 (List!14763) (Set Token!4798))

(assert (=> d!407444 (= res!644119 (= (content!2166 lt!481451) (set.union (content!2166 lt!481344) (content!2166 lt!481336))))))

(assert (=> d!407444 (= lt!481451 e!908132)))

(declare-fun c!233875 () Bool)

(assert (=> d!407444 (= c!233875 (is-Nil!14697 lt!481344))))

(assert (=> d!407444 (= (++!3895 lt!481344 lt!481336) lt!481451)))

(assert (= (and d!407444 c!233875) b!1422565))

(assert (= (and d!407444 (not c!233875)) b!1422566))

(assert (= (and d!407444 res!644119) b!1422567))

(assert (= (and b!1422567 res!644120) b!1422568))

(declare-fun m!1614307 () Bool)

(assert (=> b!1422567 m!1614307))

(declare-fun m!1614309 () Bool)

(assert (=> b!1422567 m!1614309))

(declare-fun m!1614311 () Bool)

(assert (=> b!1422567 m!1614311))

(declare-fun m!1614313 () Bool)

(assert (=> b!1422566 m!1614313))

(declare-fun m!1614315 () Bool)

(assert (=> d!407444 m!1614315))

(declare-fun m!1614317 () Bool)

(assert (=> d!407444 m!1614317))

(declare-fun m!1614319 () Bool)

(assert (=> d!407444 m!1614319))

(assert (=> b!1422450 d!407444))

(declare-fun d!407446 () Bool)

(declare-fun list!5829 (Conc!4963) List!14763)

(assert (=> d!407446 (= (list!5825 (tokens!1887 other!32)) (list!5829 (c!233853 (tokens!1887 other!32))))))

(declare-fun bs!339863 () Bool)

(assert (= bs!339863 d!407446))

(declare-fun m!1614321 () Bool)

(assert (=> bs!339863 m!1614321))

(assert (=> b!1422450 d!407446))

(declare-fun d!407448 () Bool)

(assert (=> d!407448 (= (list!5825 (BalanceConc!9867 Empty!4963)) (list!5829 (c!233853 (BalanceConc!9867 Empty!4963))))))

(declare-fun bs!339864 () Bool)

(assert (= bs!339864 d!407448))

(declare-fun m!1614323 () Bool)

(assert (=> bs!339864 m!1614323))

(assert (=> b!1422450 d!407448))

(declare-fun d!407450 () Bool)

(declare-fun lt!481454 () Bool)

(assert (=> d!407450 (= lt!481454 (isEmpty!9076 (list!5825 (tokens!1887 other!32))))))

(declare-fun isEmpty!9082 (Conc!4963) Bool)

(assert (=> d!407450 (= lt!481454 (isEmpty!9082 (c!233853 (tokens!1887 other!32))))))

(assert (=> d!407450 (= (isEmpty!9077 (tokens!1887 other!32)) lt!481454)))

(declare-fun bs!339865 () Bool)

(assert (= bs!339865 d!407450))

(assert (=> bs!339865 m!1614059))

(assert (=> bs!339865 m!1614059))

(declare-fun m!1614325 () Bool)

(assert (=> bs!339865 m!1614325))

(declare-fun m!1614327 () Bool)

(assert (=> bs!339865 m!1614327))

(assert (=> b!1422460 d!407450))

(declare-fun d!407452 () Bool)

(declare-fun e!908139 () Bool)

(assert (=> d!407452 e!908139))

(declare-fun res!644133 () Bool)

(assert (=> d!407452 (=> (not res!644133) (not e!908139))))

(assert (=> d!407452 (= res!644133 (rulesInvariant!2088 Lexer!2232 (rules!11195 thiss!10022)))))

(declare-fun Unit!22056 () Unit!22051)

(assert (=> d!407452 (= (lemmaInvariant!264 thiss!10022) Unit!22056)))

(declare-fun b!1422581 () Bool)

(declare-fun res!644134 () Bool)

(assert (=> b!1422581 (=> (not res!644134) (not e!908139))))

(assert (=> b!1422581 (= res!644134 (rulesProduceEachTokenIndividually!815 Lexer!2232 (rules!11195 thiss!10022) (tokens!1887 thiss!10022)))))

(declare-fun b!1422582 () Bool)

(assert (=> b!1422582 (= e!908139 (separableTokens!200 Lexer!2232 (tokens!1887 thiss!10022) (rules!11195 thiss!10022)))))

(assert (= (and d!407452 res!644133) b!1422581))

(assert (= (and b!1422581 res!644134) b!1422582))

(assert (=> d!407452 m!1614291))

(assert (=> b!1422581 m!1614293))

(assert (=> b!1422582 m!1614295))

(assert (=> b!1422460 d!407452))

(declare-fun d!407458 () Bool)

(declare-fun e!908140 () Bool)

(assert (=> d!407458 e!908140))

(declare-fun res!644135 () Bool)

(assert (=> d!407458 (=> (not res!644135) (not e!908140))))

(assert (=> d!407458 (= res!644135 (rulesInvariant!2088 Lexer!2232 (rules!11195 other!32)))))

(declare-fun Unit!22057 () Unit!22051)

(assert (=> d!407458 (= (lemmaInvariant!264 other!32) Unit!22057)))

(declare-fun b!1422583 () Bool)

(declare-fun res!644136 () Bool)

(assert (=> b!1422583 (=> (not res!644136) (not e!908140))))

(assert (=> b!1422583 (= res!644136 (rulesProduceEachTokenIndividually!815 Lexer!2232 (rules!11195 other!32) (tokens!1887 other!32)))))

(declare-fun b!1422584 () Bool)

(assert (=> b!1422584 (= e!908140 (separableTokens!200 Lexer!2232 (tokens!1887 other!32) (rules!11195 other!32)))))

(assert (= (and d!407458 res!644135) b!1422583))

(assert (= (and b!1422583 res!644136) b!1422584))

(assert (=> d!407458 m!1614299))

(assert (=> b!1422583 m!1614301))

(assert (=> b!1422584 m!1614303))

(assert (=> b!1422460 d!407458))

(declare-fun d!407460 () Bool)

(declare-fun c!233878 () Bool)

(assert (=> d!407460 (= c!233878 (is-Node!4963 (c!233853 (tokens!1887 other!32))))))

(declare-fun e!908145 () Bool)

(assert (=> d!407460 (= (inv!19467 (c!233853 (tokens!1887 other!32))) e!908145)))

(declare-fun b!1422591 () Bool)

(declare-fun inv!19473 (Conc!4963) Bool)

(assert (=> b!1422591 (= e!908145 (inv!19473 (c!233853 (tokens!1887 other!32))))))

(declare-fun b!1422592 () Bool)

(declare-fun e!908146 () Bool)

(assert (=> b!1422592 (= e!908145 e!908146)))

(declare-fun res!644139 () Bool)

(assert (=> b!1422592 (= res!644139 (not (is-Leaf!7449 (c!233853 (tokens!1887 other!32)))))))

(assert (=> b!1422592 (=> res!644139 e!908146)))

(declare-fun b!1422593 () Bool)

(declare-fun inv!19474 (Conc!4963) Bool)

(assert (=> b!1422593 (= e!908146 (inv!19474 (c!233853 (tokens!1887 other!32))))))

(assert (= (and d!407460 c!233878) b!1422591))

(assert (= (and d!407460 (not c!233878)) b!1422592))

(assert (= (and b!1422592 (not res!644139)) b!1422593))

(declare-fun m!1614341 () Bool)

(assert (=> b!1422591 m!1614341))

(declare-fun m!1614343 () Bool)

(assert (=> b!1422593 m!1614343))

(assert (=> b!1422449 d!407460))

(declare-fun d!407462 () Bool)

(assert (=> d!407462 (= (isEmpty!9075 lt!481334) (not (is-Some!2816 lt!481334)))))

(assert (=> b!1422448 d!407462))

(declare-fun d!407464 () Bool)

(assert (=> d!407464 (= (inv!19468 (tokens!1887 thiss!10022)) (isBalanced!1473 (c!233853 (tokens!1887 thiss!10022))))))

(declare-fun bs!339866 () Bool)

(assert (= bs!339866 d!407464))

(declare-fun m!1614345 () Bool)

(assert (=> bs!339866 m!1614345))

(assert (=> b!1422458 d!407464))

(declare-fun d!407466 () Bool)

(declare-fun e!908171 () Bool)

(assert (=> d!407466 e!908171))

(declare-fun res!644164 () Bool)

(assert (=> d!407466 (=> (not res!644164) (not e!908171))))

(declare-datatypes ((tuple2!14032 0))(
  ( (tuple2!14033 (_1!7902 BalanceConc!9866) (_2!7902 BalanceConc!9864)) )
))
(declare-fun lex!1020 (LexerInterface!2234 List!14764 BalanceConc!9864) tuple2!14032)

(declare-fun seqFromList!1682 (List!14763) BalanceConc!9866)

(assert (=> d!407466 (= res!644164 (= (list!5825 (_1!7902 (lex!1020 Lexer!2232 (rules!11195 thiss!10022) (print!1023 Lexer!2232 (seqFromList!1682 lt!481348))))) lt!481348))))

(declare-fun lt!481518 () Unit!22051)

(declare-fun e!908172 () Unit!22051)

(assert (=> d!407466 (= lt!481518 e!908172)))

(declare-fun c!233889 () Bool)

(assert (=> d!407466 (= c!233889 (or (is-Nil!14697 lt!481348) (is-Nil!14697 (t!124582 lt!481348))))))

(assert (=> d!407466 (not (isEmpty!9081 (rules!11195 thiss!10022)))))

(assert (=> d!407466 (= (theoremInvertabilityWhenTokenListSeparable!54 Lexer!2232 (rules!11195 thiss!10022) lt!481348) lt!481518)))

(declare-fun b!1422638 () Bool)

(declare-fun Unit!22058 () Unit!22051)

(assert (=> b!1422638 (= e!908172 Unit!22058)))

(declare-fun b!1422639 () Bool)

(declare-fun Unit!22059 () Unit!22051)

(assert (=> b!1422639 (= e!908172 Unit!22059)))

(declare-fun lt!481523 () BalanceConc!9864)

(assert (=> b!1422639 (= lt!481523 (print!1023 Lexer!2232 (seqFromList!1682 lt!481348)))))

(declare-fun lt!481531 () BalanceConc!9864)

(assert (=> b!1422639 (= lt!481531 (print!1023 Lexer!2232 (seqFromList!1682 (t!124582 lt!481348))))))

(declare-fun lt!481535 () tuple2!14032)

(assert (=> b!1422639 (= lt!481535 (lex!1020 Lexer!2232 (rules!11195 thiss!10022) lt!481531))))

(declare-fun lt!481529 () List!14761)

(assert (=> b!1422639 (= lt!481529 (list!5824 (charsOf!1493 (h!20098 lt!481348))))))

(declare-fun lt!481536 () List!14761)

(assert (=> b!1422639 (= lt!481536 (list!5824 lt!481531))))

(declare-fun lt!481521 () Unit!22051)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!746 (List!14761 List!14761) Unit!22051)

(assert (=> b!1422639 (= lt!481521 (lemmaConcatTwoListThenFirstIsPrefix!746 lt!481529 lt!481536))))

(declare-fun isPrefix!1179 (List!14761 List!14761) Bool)

(assert (=> b!1422639 (isPrefix!1179 lt!481529 (++!3894 lt!481529 lt!481536))))

(declare-fun lt!481522 () Unit!22051)

(assert (=> b!1422639 (= lt!481522 lt!481521)))

(declare-fun lt!481543 () Unit!22051)

(assert (=> b!1422639 (= lt!481543 (theoremInvertabilityWhenTokenListSeparable!54 Lexer!2232 (rules!11195 thiss!10022) (t!124582 lt!481348)))))

(declare-fun lt!481525 () Unit!22051)

(declare-fun seqFromListBHdTlConstructive!75 (Token!4798 List!14763 BalanceConc!9866) Unit!22051)

(assert (=> b!1422639 (= lt!481525 (seqFromListBHdTlConstructive!75 (h!20098 (t!124582 lt!481348)) (t!124582 (t!124582 lt!481348)) (_1!7902 lt!481535)))))

(declare-fun prepend!391 (BalanceConc!9866 Token!4798) BalanceConc!9866)

(assert (=> b!1422639 (= (list!5825 (_1!7902 lt!481535)) (list!5825 (prepend!391 (seqFromList!1682 (t!124582 (t!124582 lt!481348))) (h!20098 (t!124582 lt!481348)))))))

(declare-fun lt!481532 () Unit!22051)

(assert (=> b!1422639 (= lt!481532 lt!481525)))

(declare-datatypes ((tuple2!14034 0))(
  ( (tuple2!14035 (_1!7903 Token!4798) (_2!7903 List!14761)) )
))
(declare-datatypes ((Option!2819 0))(
  ( (None!2818) (Some!2818 (v!22250 tuple2!14034)) )
))
(declare-fun lt!481526 () Option!2819)

(declare-fun maxPrefix!1169 (LexerInterface!2234 List!14764 List!14761) Option!2819)

(assert (=> b!1422639 (= lt!481526 (maxPrefix!1169 Lexer!2232 (rules!11195 thiss!10022) (list!5824 lt!481523)))))

(declare-fun singletonSeq!1183 (Token!4798) BalanceConc!9866)

(assert (=> b!1422639 (= (print!1023 Lexer!2232 (singletonSeq!1183 (h!20098 lt!481348))) (printTailRec!662 Lexer!2232 (singletonSeq!1183 (h!20098 lt!481348)) 0 (BalanceConc!9865 Empty!4962)))))

(declare-fun lt!481539 () Unit!22051)

(declare-fun Unit!22060 () Unit!22051)

(assert (=> b!1422639 (= lt!481539 Unit!22060)))

(declare-fun lt!481528 () Unit!22051)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!219 (LexerInterface!2234 List!14764 List!14761 List!14761) Unit!22051)

(assert (=> b!1422639 (= lt!481528 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!219 Lexer!2232 (rules!11195 thiss!10022) (list!5824 (charsOf!1493 (h!20098 lt!481348))) (list!5824 lt!481531)))))

(assert (=> b!1422639 (= (list!5824 (charsOf!1493 (h!20098 lt!481348))) (originalCharacters!3430 (h!20098 lt!481348)))))

(declare-fun lt!481537 () Unit!22051)

(declare-fun Unit!22061 () Unit!22051)

(assert (=> b!1422639 (= lt!481537 Unit!22061)))

(declare-fun singletonSeq!1184 (C!7942) BalanceConc!9864)

(declare-fun apply!3745 (BalanceConc!9864 Int) C!7942)

(declare-fun head!2801 (List!14761) C!7942)

(assert (=> b!1422639 (= (list!5824 (singletonSeq!1184 (apply!3745 (charsOf!1493 (h!20098 (t!124582 lt!481348))) 0))) (Cons!14695 (head!2801 (originalCharacters!3430 (h!20098 (t!124582 lt!481348)))) Nil!14695))))

(declare-fun lt!481520 () Unit!22051)

(declare-fun Unit!22062 () Unit!22051)

(assert (=> b!1422639 (= lt!481520 Unit!22062)))

(assert (=> b!1422639 (= (list!5824 (singletonSeq!1184 (apply!3745 (charsOf!1493 (h!20098 (t!124582 lt!481348))) 0))) (Cons!14695 (head!2801 (list!5824 lt!481531)) Nil!14695))))

(declare-fun lt!481540 () Unit!22051)

(declare-fun Unit!22063 () Unit!22051)

(assert (=> b!1422639 (= lt!481540 Unit!22063)))

(declare-fun head!2802 (BalanceConc!9864) C!7942)

(assert (=> b!1422639 (= (list!5824 (singletonSeq!1184 (apply!3745 (charsOf!1493 (h!20098 (t!124582 lt!481348))) 0))) (Cons!14695 (head!2802 lt!481531) Nil!14695))))

(declare-fun lt!481524 () Unit!22051)

(declare-fun Unit!22064 () Unit!22051)

(assert (=> b!1422639 (= lt!481524 Unit!22064)))

(declare-fun isDefined!2280 (Option!2819) Bool)

(assert (=> b!1422639 (isDefined!2280 (maxPrefix!1169 Lexer!2232 (rules!11195 thiss!10022) (originalCharacters!3430 (h!20098 lt!481348))))))

(declare-fun lt!481534 () Unit!22051)

(declare-fun Unit!22065 () Unit!22051)

(assert (=> b!1422639 (= lt!481534 Unit!22065)))

(assert (=> b!1422639 (isDefined!2280 (maxPrefix!1169 Lexer!2232 (rules!11195 thiss!10022) (list!5824 (charsOf!1493 (h!20098 lt!481348)))))))

(declare-fun lt!481542 () Unit!22051)

(declare-fun Unit!22066 () Unit!22051)

(assert (=> b!1422639 (= lt!481542 Unit!22066)))

(declare-fun lt!481527 () Unit!22051)

(declare-fun Unit!22067 () Unit!22051)

(assert (=> b!1422639 (= lt!481527 Unit!22067)))

(declare-fun get!4514 (Option!2819) tuple2!14034)

(assert (=> b!1422639 (= (_1!7903 (get!4514 (maxPrefix!1169 Lexer!2232 (rules!11195 thiss!10022) (list!5824 (charsOf!1493 (h!20098 lt!481348)))))) (h!20098 lt!481348))))

(declare-fun lt!481533 () Unit!22051)

(declare-fun Unit!22068 () Unit!22051)

(assert (=> b!1422639 (= lt!481533 Unit!22068)))

(declare-fun isEmpty!9083 (List!14761) Bool)

(assert (=> b!1422639 (isEmpty!9083 (_2!7903 (get!4514 (maxPrefix!1169 Lexer!2232 (rules!11195 thiss!10022) (list!5824 (charsOf!1493 (h!20098 lt!481348)))))))))

(declare-fun lt!481530 () Unit!22051)

(declare-fun Unit!22069 () Unit!22051)

(assert (=> b!1422639 (= lt!481530 Unit!22069)))

(declare-fun matchR!1805 (Regex!3882 List!14761) Bool)

(assert (=> b!1422639 (matchR!1805 (regex!2568 (rule!4331 (h!20098 lt!481348))) (list!5824 (charsOf!1493 (h!20098 lt!481348))))))

(declare-fun lt!481541 () Unit!22051)

(declare-fun Unit!22070 () Unit!22051)

(assert (=> b!1422639 (= lt!481541 Unit!22070)))

(assert (=> b!1422639 (= (rule!4331 (h!20098 lt!481348)) (rule!4331 (h!20098 lt!481348)))))

(declare-fun lt!481538 () Unit!22051)

(declare-fun Unit!22071 () Unit!22051)

(assert (=> b!1422639 (= lt!481538 Unit!22071)))

(declare-fun lt!481519 () Unit!22051)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!17 (LexerInterface!2234 List!14764 Token!4798 Rule!4936 List!14761) Unit!22051)

(assert (=> b!1422639 (= lt!481519 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!17 Lexer!2232 (rules!11195 thiss!10022) (h!20098 lt!481348) (rule!4331 (h!20098 lt!481348)) (list!5824 lt!481531)))))

(declare-fun b!1422640 () Bool)

(declare-fun isEmpty!9084 (BalanceConc!9864) Bool)

(assert (=> b!1422640 (= e!908171 (isEmpty!9084 (_2!7902 (lex!1020 Lexer!2232 (rules!11195 thiss!10022) (print!1023 Lexer!2232 (seqFromList!1682 lt!481348))))))))

(assert (= (and d!407466 c!233889) b!1422638))

(assert (= (and d!407466 (not c!233889)) b!1422639))

(assert (= (and d!407466 res!644164) b!1422640))

(declare-fun m!1614379 () Bool)

(assert (=> d!407466 m!1614379))

(declare-fun m!1614381 () Bool)

(assert (=> d!407466 m!1614381))

(assert (=> d!407466 m!1614289))

(assert (=> d!407466 m!1614381))

(declare-fun m!1614383 () Bool)

(assert (=> d!407466 m!1614383))

(assert (=> d!407466 m!1614379))

(declare-fun m!1614385 () Bool)

(assert (=> d!407466 m!1614385))

(declare-fun m!1614387 () Bool)

(assert (=> b!1422639 m!1614387))

(declare-fun m!1614389 () Bool)

(assert (=> b!1422639 m!1614389))

(declare-fun m!1614391 () Bool)

(assert (=> b!1422639 m!1614391))

(declare-fun m!1614393 () Bool)

(assert (=> b!1422639 m!1614393))

(declare-fun m!1614395 () Bool)

(assert (=> b!1422639 m!1614395))

(declare-fun m!1614397 () Bool)

(assert (=> b!1422639 m!1614397))

(declare-fun m!1614399 () Bool)

(assert (=> b!1422639 m!1614399))

(declare-fun m!1614401 () Bool)

(assert (=> b!1422639 m!1614401))

(declare-fun m!1614403 () Bool)

(assert (=> b!1422639 m!1614403))

(assert (=> b!1422639 m!1614379))

(assert (=> b!1422639 m!1614381))

(declare-fun m!1614405 () Bool)

(assert (=> b!1422639 m!1614405))

(declare-fun m!1614407 () Bool)

(assert (=> b!1422639 m!1614407))

(declare-fun m!1614409 () Bool)

(assert (=> b!1422639 m!1614409))

(declare-fun m!1614411 () Bool)

(assert (=> b!1422639 m!1614411))

(assert (=> b!1422639 m!1614401))

(declare-fun m!1614413 () Bool)

(assert (=> b!1422639 m!1614413))

(declare-fun m!1614415 () Bool)

(assert (=> b!1422639 m!1614415))

(declare-fun m!1614417 () Bool)

(assert (=> b!1422639 m!1614417))

(assert (=> b!1422639 m!1614411))

(declare-fun m!1614419 () Bool)

(assert (=> b!1422639 m!1614419))

(declare-fun m!1614421 () Bool)

(assert (=> b!1422639 m!1614421))

(declare-fun m!1614423 () Bool)

(assert (=> b!1422639 m!1614423))

(declare-fun m!1614425 () Bool)

(assert (=> b!1422639 m!1614425))

(declare-fun m!1614427 () Bool)

(assert (=> b!1422639 m!1614427))

(assert (=> b!1422639 m!1614397))

(declare-fun m!1614429 () Bool)

(assert (=> b!1422639 m!1614429))

(assert (=> b!1422639 m!1614407))

(assert (=> b!1422639 m!1614415))

(assert (=> b!1422639 m!1614409))

(declare-fun m!1614431 () Bool)

(assert (=> b!1422639 m!1614431))

(declare-fun m!1614433 () Bool)

(assert (=> b!1422639 m!1614433))

(assert (=> b!1422639 m!1614405))

(declare-fun m!1614435 () Bool)

(assert (=> b!1422639 m!1614435))

(assert (=> b!1422639 m!1614379))

(assert (=> b!1422639 m!1614401))

(assert (=> b!1422639 m!1614427))

(declare-fun m!1614437 () Bool)

(assert (=> b!1422639 m!1614437))

(declare-fun m!1614439 () Bool)

(assert (=> b!1422639 m!1614439))

(assert (=> b!1422639 m!1614407))

(declare-fun m!1614441 () Bool)

(assert (=> b!1422639 m!1614441))

(assert (=> b!1422639 m!1614423))

(declare-fun m!1614443 () Bool)

(assert (=> b!1422639 m!1614443))

(assert (=> b!1422639 m!1614395))

(declare-fun m!1614445 () Bool)

(assert (=> b!1422639 m!1614445))

(assert (=> b!1422639 m!1614437))

(declare-fun m!1614447 () Bool)

(assert (=> b!1422639 m!1614447))

(assert (=> b!1422639 m!1614415))

(declare-fun m!1614449 () Bool)

(assert (=> b!1422639 m!1614449))

(declare-fun m!1614451 () Bool)

(assert (=> b!1422639 m!1614451))

(assert (=> b!1422639 m!1614451))

(assert (=> b!1422639 m!1614393))

(assert (=> b!1422639 m!1614407))

(assert (=> b!1422639 m!1614397))

(declare-fun m!1614453 () Bool)

(assert (=> b!1422639 m!1614453))

(assert (=> b!1422639 m!1614389))

(declare-fun m!1614455 () Bool)

(assert (=> b!1422639 m!1614455))

(assert (=> b!1422639 m!1614397))

(declare-fun m!1614457 () Bool)

(assert (=> b!1422639 m!1614457))

(assert (=> b!1422640 m!1614379))

(assert (=> b!1422640 m!1614379))

(assert (=> b!1422640 m!1614381))

(assert (=> b!1422640 m!1614381))

(assert (=> b!1422640 m!1614383))

(declare-fun m!1614459 () Bool)

(assert (=> b!1422640 m!1614459))

(assert (=> b!1422447 d!407466))

(declare-fun d!407480 () Bool)

(declare-fun c!233890 () Bool)

(assert (=> d!407480 (= c!233890 (is-Cons!14697 lt!481336))))

(declare-fun e!908173 () List!14761)

(assert (=> d!407480 (= (printList!688 Lexer!2232 lt!481336) e!908173)))

(declare-fun b!1422641 () Bool)

(assert (=> b!1422641 (= e!908173 (++!3894 (list!5824 (charsOf!1493 (h!20098 lt!481336))) (printList!688 Lexer!2232 (t!124582 lt!481336))))))

(declare-fun b!1422642 () Bool)

(assert (=> b!1422642 (= e!908173 Nil!14695)))

(assert (= (and d!407480 c!233890) b!1422641))

(assert (= (and d!407480 (not c!233890)) b!1422642))

(assert (=> b!1422641 m!1614093))

(assert (=> b!1422641 m!1614093))

(assert (=> b!1422641 m!1614095))

(assert (=> b!1422641 m!1614097))

(assert (=> b!1422641 m!1614095))

(assert (=> b!1422641 m!1614097))

(assert (=> b!1422641 m!1614099))

(assert (=> b!1422447 d!407480))

(declare-fun d!407482 () Bool)

(declare-fun c!233891 () Bool)

(assert (=> d!407482 (= c!233891 (is-Cons!14697 lt!481337))))

(declare-fun e!908174 () List!14761)

(assert (=> d!407482 (= (printList!688 Lexer!2232 lt!481337) e!908174)))

(declare-fun b!1422643 () Bool)

(assert (=> b!1422643 (= e!908174 (++!3894 (list!5824 (charsOf!1493 (h!20098 lt!481337))) (printList!688 Lexer!2232 (t!124582 lt!481337))))))

(declare-fun b!1422644 () Bool)

(assert (=> b!1422644 (= e!908174 Nil!14695)))

(assert (= (and d!407482 c!233891) b!1422643))

(assert (= (and d!407482 (not c!233891)) b!1422644))

(declare-fun m!1614461 () Bool)

(assert (=> b!1422643 m!1614461))

(assert (=> b!1422643 m!1614461))

(declare-fun m!1614463 () Bool)

(assert (=> b!1422643 m!1614463))

(declare-fun m!1614465 () Bool)

(assert (=> b!1422643 m!1614465))

(assert (=> b!1422643 m!1614463))

(assert (=> b!1422643 m!1614465))

(declare-fun m!1614467 () Bool)

(assert (=> b!1422643 m!1614467))

(assert (=> b!1422447 d!407482))

(declare-fun d!407484 () Bool)

(declare-fun c!233892 () Bool)

(assert (=> d!407484 (= c!233892 (is-Cons!14697 Nil!14697))))

(declare-fun e!908175 () List!14761)

(assert (=> d!407484 (= (printList!688 Lexer!2232 Nil!14697) e!908175)))

(declare-fun b!1422645 () Bool)

(assert (=> b!1422645 (= e!908175 (++!3894 (list!5824 (charsOf!1493 (h!20098 Nil!14697))) (printList!688 Lexer!2232 (t!124582 Nil!14697))))))

(declare-fun b!1422646 () Bool)

(assert (=> b!1422646 (= e!908175 Nil!14695)))

(assert (= (and d!407484 c!233892) b!1422645))

(assert (= (and d!407484 (not c!233892)) b!1422646))

(declare-fun m!1614469 () Bool)

(assert (=> b!1422645 m!1614469))

(assert (=> b!1422645 m!1614469))

(declare-fun m!1614471 () Bool)

(assert (=> b!1422645 m!1614471))

(declare-fun m!1614473 () Bool)

(assert (=> b!1422645 m!1614473))

(assert (=> b!1422645 m!1614471))

(assert (=> b!1422645 m!1614473))

(declare-fun m!1614475 () Bool)

(assert (=> b!1422645 m!1614475))

(assert (=> b!1422447 d!407484))

(declare-fun d!407486 () Bool)

(declare-fun e!908187 () Bool)

(assert (=> d!407486 e!908187))

(declare-fun res!644175 () Bool)

(assert (=> d!407486 (=> (not res!644175) (not e!908187))))

(declare-fun lt!481555 () BalanceConc!9864)

(assert (=> d!407486 (= res!644175 (= (list!5825 (_1!7902 (lex!1020 Lexer!2232 (rules!11195 other!32) lt!481555))) (list!5825 (tokens!1887 other!32))))))

(assert (=> d!407486 (= lt!481555 (print!1023 Lexer!2232 (tokens!1887 other!32)))))

(declare-fun lt!481556 () Unit!22051)

(assert (=> d!407486 (= lt!481556 (theoremInvertabilityWhenTokenListSeparable!54 Lexer!2232 (rules!11195 other!32) (list!5825 (tokens!1887 other!32))))))

(assert (=> d!407486 (= (print!1024 other!32) lt!481555)))

(declare-fun b!1422667 () Bool)

(assert (=> b!1422667 (= e!908187 (isEmpty!9083 (list!5824 (_2!7902 (lex!1020 Lexer!2232 (rules!11195 other!32) lt!481555)))))))

(assert (= (and d!407486 res!644175) b!1422667))

(declare-fun m!1614517 () Bool)

(assert (=> d!407486 m!1614517))

(assert (=> d!407486 m!1614059))

(declare-fun m!1614519 () Bool)

(assert (=> d!407486 m!1614519))

(assert (=> d!407486 m!1614059))

(declare-fun m!1614521 () Bool)

(assert (=> d!407486 m!1614521))

(assert (=> d!407486 m!1614079))

(assert (=> b!1422667 m!1614517))

(declare-fun m!1614523 () Bool)

(assert (=> b!1422667 m!1614523))

(assert (=> b!1422667 m!1614523))

(declare-fun m!1614525 () Bool)

(assert (=> b!1422667 m!1614525))

(assert (=> b!1422447 d!407486))

(declare-fun b!1422670 () Bool)

(declare-fun res!644177 () Bool)

(declare-fun e!908188 () Bool)

(assert (=> b!1422670 (=> (not res!644177) (not e!908188))))

(declare-fun lt!481557 () List!14763)

(assert (=> b!1422670 (= res!644177 (= (size!12093 lt!481557) (+ (size!12093 Nil!14697) (size!12093 lt!481336))))))

(declare-fun b!1422668 () Bool)

(declare-fun e!908189 () List!14763)

(assert (=> b!1422668 (= e!908189 lt!481336)))

(declare-fun b!1422669 () Bool)

(assert (=> b!1422669 (= e!908189 (Cons!14697 (h!20098 Nil!14697) (++!3895 (t!124582 Nil!14697) lt!481336)))))

(declare-fun b!1422671 () Bool)

(assert (=> b!1422671 (= e!908188 (or (not (= lt!481336 Nil!14697)) (= lt!481557 Nil!14697)))))

(declare-fun d!407496 () Bool)

(assert (=> d!407496 e!908188))

(declare-fun res!644176 () Bool)

(assert (=> d!407496 (=> (not res!644176) (not e!908188))))

(assert (=> d!407496 (= res!644176 (= (content!2166 lt!481557) (set.union (content!2166 Nil!14697) (content!2166 lt!481336))))))

(assert (=> d!407496 (= lt!481557 e!908189)))

(declare-fun c!233898 () Bool)

(assert (=> d!407496 (= c!233898 (is-Nil!14697 Nil!14697))))

(assert (=> d!407496 (= (++!3895 Nil!14697 lt!481336) lt!481557)))

(assert (= (and d!407496 c!233898) b!1422668))

(assert (= (and d!407496 (not c!233898)) b!1422669))

(assert (= (and d!407496 res!644176) b!1422670))

(assert (= (and b!1422670 res!644177) b!1422671))

(declare-fun m!1614527 () Bool)

(assert (=> b!1422670 m!1614527))

(declare-fun m!1614529 () Bool)

(assert (=> b!1422670 m!1614529))

(assert (=> b!1422670 m!1614311))

(declare-fun m!1614531 () Bool)

(assert (=> b!1422669 m!1614531))

(declare-fun m!1614533 () Bool)

(assert (=> d!407496 m!1614533))

(declare-fun m!1614535 () Bool)

(assert (=> d!407496 m!1614535))

(assert (=> d!407496 m!1614319))

(assert (=> b!1422447 d!407496))

(declare-fun b!1422672 () Bool)

(declare-fun e!908190 () List!14761)

(assert (=> b!1422672 (= e!908190 lt!481333)))

(declare-fun b!1422674 () Bool)

(declare-fun res!644178 () Bool)

(declare-fun e!908191 () Bool)

(assert (=> b!1422674 (=> (not res!644178) (not e!908191))))

(declare-fun lt!481558 () List!14761)

(assert (=> b!1422674 (= res!644178 (= (size!12091 lt!481558) (+ (size!12091 lt!481335) (size!12091 lt!481333))))))

(declare-fun d!407498 () Bool)

(assert (=> d!407498 e!908191))

(declare-fun res!644179 () Bool)

(assert (=> d!407498 (=> (not res!644179) (not e!908191))))

(assert (=> d!407498 (= res!644179 (= (content!2165 lt!481558) (set.union (content!2165 lt!481335) (content!2165 lt!481333))))))

(assert (=> d!407498 (= lt!481558 e!908190)))

(declare-fun c!233899 () Bool)

(assert (=> d!407498 (= c!233899 (is-Nil!14695 lt!481335))))

(assert (=> d!407498 (= (++!3894 lt!481335 lt!481333) lt!481558)))

(declare-fun b!1422675 () Bool)

(assert (=> b!1422675 (= e!908191 (or (not (= lt!481333 Nil!14695)) (= lt!481558 lt!481335)))))

(declare-fun b!1422673 () Bool)

(assert (=> b!1422673 (= e!908190 (Cons!14695 (h!20096 lt!481335) (++!3894 (t!124580 lt!481335) lt!481333)))))

(assert (= (and d!407498 c!233899) b!1422672))

(assert (= (and d!407498 (not c!233899)) b!1422673))

(assert (= (and d!407498 res!644179) b!1422674))

(assert (= (and b!1422674 res!644178) b!1422675))

(declare-fun m!1614537 () Bool)

(assert (=> b!1422674 m!1614537))

(declare-fun m!1614539 () Bool)

(assert (=> b!1422674 m!1614539))

(declare-fun m!1614541 () Bool)

(assert (=> b!1422674 m!1614541))

(declare-fun m!1614543 () Bool)

(assert (=> d!407498 m!1614543))

(declare-fun m!1614545 () Bool)

(assert (=> d!407498 m!1614545))

(declare-fun m!1614547 () Bool)

(assert (=> d!407498 m!1614547))

(declare-fun m!1614549 () Bool)

(assert (=> b!1422673 m!1614549))

(assert (=> b!1422447 d!407498))

(declare-fun d!407500 () Bool)

(assert (=> d!407500 (= (printList!688 Lexer!2232 (++!3895 Nil!14697 lt!481336)) (++!3894 (printList!688 Lexer!2232 Nil!14697) (printList!688 Lexer!2232 lt!481336)))))

(declare-fun lt!481561 () Unit!22051)

(declare-fun choose!8756 (LexerInterface!2234 List!14763 List!14763) Unit!22051)

(assert (=> d!407500 (= lt!481561 (choose!8756 Lexer!2232 Nil!14697 lt!481336))))

(assert (=> d!407500 (= (lemmaPrintConcatSameAsConcatPrint!53 Lexer!2232 Nil!14697 lt!481336) lt!481561)))

(declare-fun bs!339869 () Bool)

(assert (= bs!339869 d!407500))

(assert (=> bs!339869 m!1614087))

(assert (=> bs!339869 m!1614083))

(declare-fun m!1614551 () Bool)

(assert (=> bs!339869 m!1614551))

(assert (=> bs!339869 m!1614065))

(assert (=> bs!339869 m!1614087))

(declare-fun m!1614553 () Bool)

(assert (=> bs!339869 m!1614553))

(assert (=> bs!339869 m!1614065))

(declare-fun m!1614555 () Bool)

(assert (=> bs!339869 m!1614555))

(assert (=> bs!339869 m!1614083))

(assert (=> b!1422447 d!407500))

(declare-fun d!407502 () Bool)

(declare-fun e!908192 () Bool)

(assert (=> d!407502 e!908192))

(declare-fun res!644180 () Bool)

(assert (=> d!407502 (=> (not res!644180) (not e!908192))))

(assert (=> d!407502 (= res!644180 (= (list!5825 (_1!7902 (lex!1020 Lexer!2232 (rules!11195 other!32) (print!1023 Lexer!2232 (seqFromList!1682 lt!481336))))) lt!481336))))

(declare-fun lt!481562 () Unit!22051)

(declare-fun e!908193 () Unit!22051)

(assert (=> d!407502 (= lt!481562 e!908193)))

(declare-fun c!233900 () Bool)

(assert (=> d!407502 (= c!233900 (or (is-Nil!14697 lt!481336) (is-Nil!14697 (t!124582 lt!481336))))))

(assert (=> d!407502 (not (isEmpty!9081 (rules!11195 other!32)))))

(assert (=> d!407502 (= (theoremInvertabilityWhenTokenListSeparable!54 Lexer!2232 (rules!11195 other!32) lt!481336) lt!481562)))

(declare-fun b!1422676 () Bool)

(declare-fun Unit!22072 () Unit!22051)

(assert (=> b!1422676 (= e!908193 Unit!22072)))

(declare-fun b!1422677 () Bool)

(declare-fun Unit!22073 () Unit!22051)

(assert (=> b!1422677 (= e!908193 Unit!22073)))

(declare-fun lt!481567 () BalanceConc!9864)

(assert (=> b!1422677 (= lt!481567 (print!1023 Lexer!2232 (seqFromList!1682 lt!481336)))))

(declare-fun lt!481575 () BalanceConc!9864)

(assert (=> b!1422677 (= lt!481575 (print!1023 Lexer!2232 (seqFromList!1682 (t!124582 lt!481336))))))

(declare-fun lt!481579 () tuple2!14032)

(assert (=> b!1422677 (= lt!481579 (lex!1020 Lexer!2232 (rules!11195 other!32) lt!481575))))

(declare-fun lt!481573 () List!14761)

(assert (=> b!1422677 (= lt!481573 (list!5824 (charsOf!1493 (h!20098 lt!481336))))))

(declare-fun lt!481580 () List!14761)

(assert (=> b!1422677 (= lt!481580 (list!5824 lt!481575))))

(declare-fun lt!481565 () Unit!22051)

(assert (=> b!1422677 (= lt!481565 (lemmaConcatTwoListThenFirstIsPrefix!746 lt!481573 lt!481580))))

(assert (=> b!1422677 (isPrefix!1179 lt!481573 (++!3894 lt!481573 lt!481580))))

(declare-fun lt!481566 () Unit!22051)

(assert (=> b!1422677 (= lt!481566 lt!481565)))

(declare-fun lt!481587 () Unit!22051)

(assert (=> b!1422677 (= lt!481587 (theoremInvertabilityWhenTokenListSeparable!54 Lexer!2232 (rules!11195 other!32) (t!124582 lt!481336)))))

(declare-fun lt!481569 () Unit!22051)

(assert (=> b!1422677 (= lt!481569 (seqFromListBHdTlConstructive!75 (h!20098 (t!124582 lt!481336)) (t!124582 (t!124582 lt!481336)) (_1!7902 lt!481579)))))

(assert (=> b!1422677 (= (list!5825 (_1!7902 lt!481579)) (list!5825 (prepend!391 (seqFromList!1682 (t!124582 (t!124582 lt!481336))) (h!20098 (t!124582 lt!481336)))))))

(declare-fun lt!481576 () Unit!22051)

(assert (=> b!1422677 (= lt!481576 lt!481569)))

(declare-fun lt!481570 () Option!2819)

(assert (=> b!1422677 (= lt!481570 (maxPrefix!1169 Lexer!2232 (rules!11195 other!32) (list!5824 lt!481567)))))

(assert (=> b!1422677 (= (print!1023 Lexer!2232 (singletonSeq!1183 (h!20098 lt!481336))) (printTailRec!662 Lexer!2232 (singletonSeq!1183 (h!20098 lt!481336)) 0 (BalanceConc!9865 Empty!4962)))))

(declare-fun lt!481583 () Unit!22051)

(declare-fun Unit!22074 () Unit!22051)

(assert (=> b!1422677 (= lt!481583 Unit!22074)))

(declare-fun lt!481572 () Unit!22051)

(assert (=> b!1422677 (= lt!481572 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!219 Lexer!2232 (rules!11195 other!32) (list!5824 (charsOf!1493 (h!20098 lt!481336))) (list!5824 lt!481575)))))

(assert (=> b!1422677 (= (list!5824 (charsOf!1493 (h!20098 lt!481336))) (originalCharacters!3430 (h!20098 lt!481336)))))

(declare-fun lt!481581 () Unit!22051)

(declare-fun Unit!22075 () Unit!22051)

(assert (=> b!1422677 (= lt!481581 Unit!22075)))

(assert (=> b!1422677 (= (list!5824 (singletonSeq!1184 (apply!3745 (charsOf!1493 (h!20098 (t!124582 lt!481336))) 0))) (Cons!14695 (head!2801 (originalCharacters!3430 (h!20098 (t!124582 lt!481336)))) Nil!14695))))

(declare-fun lt!481564 () Unit!22051)

(declare-fun Unit!22076 () Unit!22051)

(assert (=> b!1422677 (= lt!481564 Unit!22076)))

(assert (=> b!1422677 (= (list!5824 (singletonSeq!1184 (apply!3745 (charsOf!1493 (h!20098 (t!124582 lt!481336))) 0))) (Cons!14695 (head!2801 (list!5824 lt!481575)) Nil!14695))))

(declare-fun lt!481584 () Unit!22051)

(declare-fun Unit!22077 () Unit!22051)

(assert (=> b!1422677 (= lt!481584 Unit!22077)))

(assert (=> b!1422677 (= (list!5824 (singletonSeq!1184 (apply!3745 (charsOf!1493 (h!20098 (t!124582 lt!481336))) 0))) (Cons!14695 (head!2802 lt!481575) Nil!14695))))

(declare-fun lt!481568 () Unit!22051)

(declare-fun Unit!22078 () Unit!22051)

(assert (=> b!1422677 (= lt!481568 Unit!22078)))

(assert (=> b!1422677 (isDefined!2280 (maxPrefix!1169 Lexer!2232 (rules!11195 other!32) (originalCharacters!3430 (h!20098 lt!481336))))))

(declare-fun lt!481578 () Unit!22051)

(declare-fun Unit!22079 () Unit!22051)

(assert (=> b!1422677 (= lt!481578 Unit!22079)))

(assert (=> b!1422677 (isDefined!2280 (maxPrefix!1169 Lexer!2232 (rules!11195 other!32) (list!5824 (charsOf!1493 (h!20098 lt!481336)))))))

(declare-fun lt!481586 () Unit!22051)

(declare-fun Unit!22080 () Unit!22051)

(assert (=> b!1422677 (= lt!481586 Unit!22080)))

(declare-fun lt!481571 () Unit!22051)

(declare-fun Unit!22081 () Unit!22051)

(assert (=> b!1422677 (= lt!481571 Unit!22081)))

(assert (=> b!1422677 (= (_1!7903 (get!4514 (maxPrefix!1169 Lexer!2232 (rules!11195 other!32) (list!5824 (charsOf!1493 (h!20098 lt!481336)))))) (h!20098 lt!481336))))

(declare-fun lt!481577 () Unit!22051)

(declare-fun Unit!22082 () Unit!22051)

(assert (=> b!1422677 (= lt!481577 Unit!22082)))

(assert (=> b!1422677 (isEmpty!9083 (_2!7903 (get!4514 (maxPrefix!1169 Lexer!2232 (rules!11195 other!32) (list!5824 (charsOf!1493 (h!20098 lt!481336)))))))))

(declare-fun lt!481574 () Unit!22051)

(declare-fun Unit!22083 () Unit!22051)

(assert (=> b!1422677 (= lt!481574 Unit!22083)))

(assert (=> b!1422677 (matchR!1805 (regex!2568 (rule!4331 (h!20098 lt!481336))) (list!5824 (charsOf!1493 (h!20098 lt!481336))))))

(declare-fun lt!481585 () Unit!22051)

(declare-fun Unit!22084 () Unit!22051)

(assert (=> b!1422677 (= lt!481585 Unit!22084)))

(assert (=> b!1422677 (= (rule!4331 (h!20098 lt!481336)) (rule!4331 (h!20098 lt!481336)))))

(declare-fun lt!481582 () Unit!22051)

(declare-fun Unit!22085 () Unit!22051)

(assert (=> b!1422677 (= lt!481582 Unit!22085)))

(declare-fun lt!481563 () Unit!22051)

(assert (=> b!1422677 (= lt!481563 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!17 Lexer!2232 (rules!11195 other!32) (h!20098 lt!481336) (rule!4331 (h!20098 lt!481336)) (list!5824 lt!481575)))))

(declare-fun b!1422678 () Bool)

(assert (=> b!1422678 (= e!908192 (isEmpty!9084 (_2!7902 (lex!1020 Lexer!2232 (rules!11195 other!32) (print!1023 Lexer!2232 (seqFromList!1682 lt!481336))))))))

(assert (= (and d!407502 c!233900) b!1422676))

(assert (= (and d!407502 (not c!233900)) b!1422677))

(assert (= (and d!407502 res!644180) b!1422678))

(declare-fun m!1614557 () Bool)

(assert (=> d!407502 m!1614557))

(declare-fun m!1614559 () Bool)

(assert (=> d!407502 m!1614559))

(assert (=> d!407502 m!1614297))

(assert (=> d!407502 m!1614559))

(declare-fun m!1614561 () Bool)

(assert (=> d!407502 m!1614561))

(assert (=> d!407502 m!1614557))

(declare-fun m!1614563 () Bool)

(assert (=> d!407502 m!1614563))

(declare-fun m!1614565 () Bool)

(assert (=> b!1422677 m!1614565))

(declare-fun m!1614567 () Bool)

(assert (=> b!1422677 m!1614567))

(declare-fun m!1614569 () Bool)

(assert (=> b!1422677 m!1614569))

(declare-fun m!1614571 () Bool)

(assert (=> b!1422677 m!1614571))

(declare-fun m!1614573 () Bool)

(assert (=> b!1422677 m!1614573))

(declare-fun m!1614575 () Bool)

(assert (=> b!1422677 m!1614575))

(declare-fun m!1614577 () Bool)

(assert (=> b!1422677 m!1614577))

(declare-fun m!1614579 () Bool)

(assert (=> b!1422677 m!1614579))

(declare-fun m!1614581 () Bool)

(assert (=> b!1422677 m!1614581))

(assert (=> b!1422677 m!1614557))

(assert (=> b!1422677 m!1614559))

(assert (=> b!1422677 m!1614093))

(assert (=> b!1422677 m!1614095))

(declare-fun m!1614583 () Bool)

(assert (=> b!1422677 m!1614583))

(declare-fun m!1614585 () Bool)

(assert (=> b!1422677 m!1614585))

(assert (=> b!1422677 m!1614579))

(declare-fun m!1614587 () Bool)

(assert (=> b!1422677 m!1614587))

(declare-fun m!1614589 () Bool)

(assert (=> b!1422677 m!1614589))

(declare-fun m!1614591 () Bool)

(assert (=> b!1422677 m!1614591))

(assert (=> b!1422677 m!1614585))

(declare-fun m!1614593 () Bool)

(assert (=> b!1422677 m!1614593))

(declare-fun m!1614595 () Bool)

(assert (=> b!1422677 m!1614595))

(declare-fun m!1614597 () Bool)

(assert (=> b!1422677 m!1614597))

(declare-fun m!1614599 () Bool)

(assert (=> b!1422677 m!1614599))

(declare-fun m!1614601 () Bool)

(assert (=> b!1422677 m!1614601))

(assert (=> b!1422677 m!1614575))

(declare-fun m!1614603 () Bool)

(assert (=> b!1422677 m!1614603))

(assert (=> b!1422677 m!1614095))

(assert (=> b!1422677 m!1614589))

(assert (=> b!1422677 m!1614583))

(declare-fun m!1614605 () Bool)

(assert (=> b!1422677 m!1614605))

(declare-fun m!1614607 () Bool)

(assert (=> b!1422677 m!1614607))

(assert (=> b!1422677 m!1614093))

(declare-fun m!1614609 () Bool)

(assert (=> b!1422677 m!1614609))

(assert (=> b!1422677 m!1614557))

(assert (=> b!1422677 m!1614579))

(assert (=> b!1422677 m!1614601))

(declare-fun m!1614611 () Bool)

(assert (=> b!1422677 m!1614611))

(declare-fun m!1614613 () Bool)

(assert (=> b!1422677 m!1614613))

(assert (=> b!1422677 m!1614095))

(declare-fun m!1614615 () Bool)

(assert (=> b!1422677 m!1614615))

(assert (=> b!1422677 m!1614597))

(declare-fun m!1614617 () Bool)

(assert (=> b!1422677 m!1614617))

(assert (=> b!1422677 m!1614573))

(declare-fun m!1614619 () Bool)

(assert (=> b!1422677 m!1614619))

(assert (=> b!1422677 m!1614611))

(declare-fun m!1614621 () Bool)

(assert (=> b!1422677 m!1614621))

(assert (=> b!1422677 m!1614589))

(declare-fun m!1614623 () Bool)

(assert (=> b!1422677 m!1614623))

(assert (=> b!1422677 m!1614205))

(assert (=> b!1422677 m!1614205))

(assert (=> b!1422677 m!1614571))

(assert (=> b!1422677 m!1614095))

(assert (=> b!1422677 m!1614575))

(declare-fun m!1614625 () Bool)

(assert (=> b!1422677 m!1614625))

(assert (=> b!1422677 m!1614567))

(declare-fun m!1614627 () Bool)

(assert (=> b!1422677 m!1614627))

(assert (=> b!1422677 m!1614575))

(declare-fun m!1614629 () Bool)

(assert (=> b!1422677 m!1614629))

(assert (=> b!1422678 m!1614557))

(assert (=> b!1422678 m!1614557))

(assert (=> b!1422678 m!1614559))

(assert (=> b!1422678 m!1614559))

(assert (=> b!1422678 m!1614561))

(declare-fun m!1614631 () Bool)

(assert (=> b!1422678 m!1614631))

(assert (=> b!1422447 d!407502))

(declare-fun d!407504 () Bool)

(declare-fun lt!481590 () BalanceConc!9864)

(assert (=> d!407504 (= (list!5824 lt!481590) (printList!688 Lexer!2232 (list!5825 (tokens!1887 other!32))))))

(assert (=> d!407504 (= lt!481590 (printTailRec!662 Lexer!2232 (tokens!1887 other!32) 0 (BalanceConc!9865 Empty!4962)))))

(assert (=> d!407504 (= (print!1023 Lexer!2232 (tokens!1887 other!32)) lt!481590)))

(declare-fun bs!339870 () Bool)

(assert (= bs!339870 d!407504))

(declare-fun m!1614633 () Bool)

(assert (=> bs!339870 m!1614633))

(assert (=> bs!339870 m!1614059))

(assert (=> bs!339870 m!1614059))

(declare-fun m!1614635 () Bool)

(assert (=> bs!339870 m!1614635))

(assert (=> bs!339870 m!1614105))

(assert (=> b!1422447 d!407504))

(declare-fun d!407506 () Bool)

(declare-fun lt!481591 () BalanceConc!9864)

(assert (=> d!407506 (= (list!5824 lt!481591) (printList!688 Lexer!2232 (list!5825 (tokens!1887 thiss!10022))))))

(assert (=> d!407506 (= lt!481591 (printTailRec!662 Lexer!2232 (tokens!1887 thiss!10022) 0 (BalanceConc!9865 Empty!4962)))))

(assert (=> d!407506 (= (print!1023 Lexer!2232 (tokens!1887 thiss!10022)) lt!481591)))

(declare-fun bs!339871 () Bool)

(assert (= bs!339871 d!407506))

(declare-fun m!1614637 () Bool)

(assert (=> bs!339871 m!1614637))

(assert (=> bs!339871 m!1614091))

(assert (=> bs!339871 m!1614091))

(declare-fun m!1614639 () Bool)

(assert (=> bs!339871 m!1614639))

(declare-fun m!1614641 () Bool)

(assert (=> bs!339871 m!1614641))

(assert (=> b!1422447 d!407506))

(declare-fun d!407508 () Bool)

(declare-fun e!908194 () Bool)

(assert (=> d!407508 e!908194))

(declare-fun res!644181 () Bool)

(assert (=> d!407508 (=> (not res!644181) (not e!908194))))

(declare-fun lt!481592 () BalanceConc!9864)

(assert (=> d!407508 (= res!644181 (= (list!5825 (_1!7902 (lex!1020 Lexer!2232 (rules!11195 thiss!10022) lt!481592))) (list!5825 (tokens!1887 thiss!10022))))))

(assert (=> d!407508 (= lt!481592 (print!1023 Lexer!2232 (tokens!1887 thiss!10022)))))

(declare-fun lt!481593 () Unit!22051)

(assert (=> d!407508 (= lt!481593 (theoremInvertabilityWhenTokenListSeparable!54 Lexer!2232 (rules!11195 thiss!10022) (list!5825 (tokens!1887 thiss!10022))))))

(assert (=> d!407508 (= (print!1024 thiss!10022) lt!481592)))

(declare-fun b!1422679 () Bool)

(assert (=> b!1422679 (= e!908194 (isEmpty!9083 (list!5824 (_2!7902 (lex!1020 Lexer!2232 (rules!11195 thiss!10022) lt!481592)))))))

(assert (= (and d!407508 res!644181) b!1422679))

(declare-fun m!1614643 () Bool)

(assert (=> d!407508 m!1614643))

(assert (=> d!407508 m!1614091))

(declare-fun m!1614645 () Bool)

(assert (=> d!407508 m!1614645))

(assert (=> d!407508 m!1614091))

(declare-fun m!1614647 () Bool)

(assert (=> d!407508 m!1614647))

(assert (=> d!407508 m!1614073))

(assert (=> b!1422679 m!1614643))

(declare-fun m!1614649 () Bool)

(assert (=> b!1422679 m!1614649))

(assert (=> b!1422679 m!1614649))

(declare-fun m!1614651 () Bool)

(assert (=> b!1422679 m!1614651))

(assert (=> b!1422447 d!407508))

(declare-fun d!407510 () Bool)

(declare-fun lt!481594 () Bool)

(assert (=> d!407510 (= lt!481594 (isEmpty!9076 (list!5825 (tokens!1887 thiss!10022))))))

(assert (=> d!407510 (= lt!481594 (isEmpty!9082 (c!233853 (tokens!1887 thiss!10022))))))

(assert (=> d!407510 (= (isEmpty!9077 (tokens!1887 thiss!10022)) lt!481594)))

(declare-fun bs!339872 () Bool)

(assert (= bs!339872 d!407510))

(assert (=> bs!339872 m!1614091))

(assert (=> bs!339872 m!1614091))

(declare-fun m!1614653 () Bool)

(assert (=> bs!339872 m!1614653))

(declare-fun m!1614655 () Bool)

(assert (=> bs!339872 m!1614655))

(assert (=> b!1422457 d!407510))

(declare-fun d!407512 () Bool)

(assert (=> d!407512 (= (isEmpty!9076 lt!481348) (is-Nil!14697 lt!481348))))

(assert (=> b!1422456 d!407512))

(declare-fun d!407514 () Bool)

(assert (=> d!407514 (= (list!5825 (tokens!1887 thiss!10022)) (list!5829 (c!233853 (tokens!1887 thiss!10022))))))

(declare-fun bs!339873 () Bool)

(assert (= bs!339873 d!407514))

(declare-fun m!1614657 () Bool)

(assert (=> bs!339873 m!1614657))

(assert (=> b!1422456 d!407514))

(declare-fun d!407516 () Bool)

(declare-fun c!233901 () Bool)

(assert (=> d!407516 (= c!233901 (is-Node!4963 (c!233853 (tokens!1887 thiss!10022))))))

(declare-fun e!908195 () Bool)

(assert (=> d!407516 (= (inv!19467 (c!233853 (tokens!1887 thiss!10022))) e!908195)))

(declare-fun b!1422680 () Bool)

(assert (=> b!1422680 (= e!908195 (inv!19473 (c!233853 (tokens!1887 thiss!10022))))))

(declare-fun b!1422681 () Bool)

(declare-fun e!908196 () Bool)

(assert (=> b!1422681 (= e!908195 e!908196)))

(declare-fun res!644182 () Bool)

(assert (=> b!1422681 (= res!644182 (not (is-Leaf!7449 (c!233853 (tokens!1887 thiss!10022)))))))

(assert (=> b!1422681 (=> res!644182 e!908196)))

(declare-fun b!1422682 () Bool)

(assert (=> b!1422682 (= e!908196 (inv!19474 (c!233853 (tokens!1887 thiss!10022))))))

(assert (= (and d!407516 c!233901) b!1422680))

(assert (= (and d!407516 (not c!233901)) b!1422681))

(assert (= (and b!1422681 (not res!644182)) b!1422682))

(declare-fun m!1614659 () Bool)

(assert (=> b!1422680 m!1614659))

(declare-fun m!1614661 () Bool)

(assert (=> b!1422682 m!1614661))

(assert (=> b!1422455 d!407516))

(declare-fun b!1422691 () Bool)

(declare-fun e!908202 () Bool)

(declare-fun tp!403268 () Bool)

(declare-fun tp!403269 () Bool)

(assert (=> b!1422691 (= e!908202 (and (inv!19467 (left!12550 (c!233853 (tokens!1887 other!32)))) tp!403269 (inv!19467 (right!12880 (c!233853 (tokens!1887 other!32)))) tp!403268))))

(declare-fun b!1422693 () Bool)

(declare-fun e!908201 () Bool)

(declare-fun tp!403267 () Bool)

(assert (=> b!1422693 (= e!908201 tp!403267)))

(declare-fun b!1422692 () Bool)

(declare-fun inv!19477 (IArray!9931) Bool)

(assert (=> b!1422692 (= e!908202 (and (inv!19477 (xs!7692 (c!233853 (tokens!1887 other!32)))) e!908201))))

(assert (=> b!1422449 (= tp!403245 (and (inv!19467 (c!233853 (tokens!1887 other!32))) e!908202))))

(assert (= (and b!1422449 (is-Node!4963 (c!233853 (tokens!1887 other!32)))) b!1422691))

(assert (= b!1422692 b!1422693))

(assert (= (and b!1422449 (is-Leaf!7449 (c!233853 (tokens!1887 other!32)))) b!1422692))

(declare-fun m!1614663 () Bool)

(assert (=> b!1422691 m!1614663))

(declare-fun m!1614665 () Bool)

(assert (=> b!1422691 m!1614665))

(declare-fun m!1614667 () Bool)

(assert (=> b!1422692 m!1614667))

(assert (=> b!1422449 m!1614101))

(declare-fun b!1422704 () Bool)

(declare-fun b_free!35063 () Bool)

(declare-fun b_next!35767 () Bool)

(assert (=> b!1422704 (= b_free!35063 (not b_next!35767))))

(declare-fun tp!403281 () Bool)

(declare-fun b_and!95079 () Bool)

(assert (=> b!1422704 (= tp!403281 b_and!95079)))

(declare-fun b_free!35065 () Bool)

(declare-fun b_next!35769 () Bool)

(assert (=> b!1422704 (= b_free!35065 (not b_next!35769))))

(declare-fun tb!73617 () Bool)

(declare-fun t!124589 () Bool)

(assert (=> (and b!1422704 (= (toChars!3726 (transformation!2568 (h!20099 (rules!11195 thiss!10022)))) (toChars!3726 (transformation!2568 (rule!4331 (h!20098 lt!481336))))) t!124589) tb!73617))

(declare-fun b!1422709 () Bool)

(declare-fun e!908217 () Bool)

(declare-fun tp!403284 () Bool)

(declare-fun inv!19478 (Conc!4962) Bool)

(assert (=> b!1422709 (= e!908217 (and (inv!19478 (c!233851 (dynLambda!6735 (toChars!3726 (transformation!2568 (rule!4331 (h!20098 lt!481336)))) (value!82837 (h!20098 lt!481336))))) tp!403284))))

(declare-fun result!89782 () Bool)

(declare-fun inv!19479 (BalanceConc!9864) Bool)

(assert (=> tb!73617 (= result!89782 (and (inv!19479 (dynLambda!6735 (toChars!3726 (transformation!2568 (rule!4331 (h!20098 lt!481336)))) (value!82837 (h!20098 lt!481336)))) e!908217))))

(assert (= tb!73617 b!1422709))

(declare-fun m!1614669 () Bool)

(assert (=> b!1422709 m!1614669))

(declare-fun m!1614671 () Bool)

(assert (=> tb!73617 m!1614671))

(assert (=> d!407422 t!124589))

(declare-fun tp!403279 () Bool)

(declare-fun b_and!95081 () Bool)

(assert (=> b!1422704 (= tp!403279 (and (=> t!124589 result!89782) b_and!95081))))

(declare-fun e!908214 () Bool)

(assert (=> b!1422704 (= e!908214 (and tp!403281 tp!403279))))

(declare-fun e!908212 () Bool)

(declare-fun b!1422703 () Bool)

(declare-fun tp!403280 () Bool)

(declare-fun inv!19464 (String!17548) Bool)

(declare-fun inv!19480 (TokenValueInjection!4976) Bool)

(assert (=> b!1422703 (= e!908212 (and tp!403280 (inv!19464 (tag!2830 (h!20099 (rules!11195 thiss!10022)))) (inv!19480 (transformation!2568 (h!20099 (rules!11195 thiss!10022)))) e!908214))))

(declare-fun b!1422702 () Bool)

(declare-fun e!908213 () Bool)

(declare-fun tp!403278 () Bool)

(assert (=> b!1422702 (= e!908213 (and e!908212 tp!403278))))

(assert (=> b!1422458 (= tp!403248 e!908213)))

(assert (= b!1422703 b!1422704))

(assert (= b!1422702 b!1422703))

(assert (= (and b!1422458 (is-Cons!14698 (rules!11195 thiss!10022))) b!1422702))

(declare-fun m!1614673 () Bool)

(assert (=> b!1422703 m!1614673))

(declare-fun m!1614675 () Bool)

(assert (=> b!1422703 m!1614675))

(declare-fun b!1422712 () Bool)

(declare-fun b_free!35067 () Bool)

(declare-fun b_next!35771 () Bool)

(assert (=> b!1422712 (= b_free!35067 (not b_next!35771))))

(declare-fun tp!403288 () Bool)

(declare-fun b_and!95083 () Bool)

(assert (=> b!1422712 (= tp!403288 b_and!95083)))

(declare-fun b_free!35069 () Bool)

(declare-fun b_next!35773 () Bool)

(assert (=> b!1422712 (= b_free!35069 (not b_next!35773))))

(declare-fun tb!73619 () Bool)

(declare-fun t!124591 () Bool)

(assert (=> (and b!1422712 (= (toChars!3726 (transformation!2568 (h!20099 (rules!11195 other!32)))) (toChars!3726 (transformation!2568 (rule!4331 (h!20098 lt!481336))))) t!124591) tb!73619))

(declare-fun result!89786 () Bool)

(assert (= result!89786 result!89782))

(assert (=> d!407422 t!124591))

(declare-fun b_and!95085 () Bool)

(declare-fun tp!403286 () Bool)

(assert (=> b!1422712 (= tp!403286 (and (=> t!124591 result!89786) b_and!95085))))

(declare-fun e!908221 () Bool)

(assert (=> b!1422712 (= e!908221 (and tp!403288 tp!403286))))

(declare-fun b!1422711 () Bool)

(declare-fun e!908219 () Bool)

(declare-fun tp!403287 () Bool)

(assert (=> b!1422711 (= e!908219 (and tp!403287 (inv!19464 (tag!2830 (h!20099 (rules!11195 other!32)))) (inv!19480 (transformation!2568 (h!20099 (rules!11195 other!32)))) e!908221))))

(declare-fun b!1422710 () Bool)

(declare-fun e!908220 () Bool)

(declare-fun tp!403285 () Bool)

(assert (=> b!1422710 (= e!908220 (and e!908219 tp!403285))))

(assert (=> b!1422451 (= tp!403247 e!908220)))

(assert (= b!1422711 b!1422712))

(assert (= b!1422710 b!1422711))

(assert (= (and b!1422451 (is-Cons!14698 (rules!11195 other!32))) b!1422710))

(declare-fun m!1614677 () Bool)

(assert (=> b!1422711 m!1614677))

(declare-fun m!1614679 () Bool)

(assert (=> b!1422711 m!1614679))

(declare-fun e!908223 () Bool)

(declare-fun b!1422713 () Bool)

(declare-fun tp!403290 () Bool)

(declare-fun tp!403291 () Bool)

(assert (=> b!1422713 (= e!908223 (and (inv!19467 (left!12550 (c!233853 (tokens!1887 thiss!10022)))) tp!403291 (inv!19467 (right!12880 (c!233853 (tokens!1887 thiss!10022)))) tp!403290))))

(declare-fun b!1422715 () Bool)

(declare-fun e!908222 () Bool)

(declare-fun tp!403289 () Bool)

(assert (=> b!1422715 (= e!908222 tp!403289)))

(declare-fun b!1422714 () Bool)

(assert (=> b!1422714 (= e!908223 (and (inv!19477 (xs!7692 (c!233853 (tokens!1887 thiss!10022)))) e!908222))))

(assert (=> b!1422455 (= tp!403246 (and (inv!19467 (c!233853 (tokens!1887 thiss!10022))) e!908223))))

(assert (= (and b!1422455 (is-Node!4963 (c!233853 (tokens!1887 thiss!10022)))) b!1422713))

(assert (= b!1422714 b!1422715))

(assert (= (and b!1422455 (is-Leaf!7449 (c!233853 (tokens!1887 thiss!10022)))) b!1422714))

(declare-fun m!1614681 () Bool)

(assert (=> b!1422713 m!1614681))

(declare-fun m!1614683 () Bool)

(assert (=> b!1422713 m!1614683))

(declare-fun m!1614685 () Bool)

(assert (=> b!1422714 m!1614685))

(assert (=> b!1422455 m!1614063))

(push 1)

(assert b_and!95085)

(assert b_and!95079)

(assert (not d!407420))

(assert (not b!1422552))

(assert (not d!407450))

(assert (not d!407458))

(assert (not d!407508))

(assert (not b!1422670))

(assert (not b!1422674))

(assert (not d!407452))

(assert (not b!1422645))

(assert (not b_next!35771))

(assert (not b!1422581))

(assert (not b!1422678))

(assert (not b!1422714))

(assert (not d!407514))

(assert (not b!1422533))

(assert (not b!1422556))

(assert (not b!1422677))

(assert b_and!95083)

(assert (not b!1422566))

(assert (not d!407506))

(assert (not b!1422554))

(assert (not d!407446))

(assert (not tb!73617))

(assert (not b!1422525))

(assert (not b!1422449))

(assert (not d!407440))

(assert (not d!407442))

(assert (not b!1422711))

(assert (not b!1422591))

(assert (not b!1422455))

(assert (not b!1422593))

(assert (not b!1422640))

(assert (not b!1422639))

(assert (not d!407510))

(assert (not d!407426))

(assert (not b!1422702))

(assert (not d!407496))

(assert (not b!1422643))

(assert (not b!1422551))

(assert (not d!407502))

(assert (not d!407430))

(assert (not d!407466))

(assert (not b!1422584))

(assert (not b!1422553))

(assert (not b!1422709))

(assert (not b!1422679))

(assert (not b!1422682))

(assert (not b!1422555))

(assert (not b!1422710))

(assert (not b!1422667))

(assert (not b!1422680))

(assert (not d!407504))

(assert (not d!407422))

(assert (not b!1422669))

(assert (not b!1422518))

(assert (not d!407486))

(assert (not d!407444))

(assert (not b_lambda!44639))

(assert (not b!1422583))

(assert b_and!95081)

(assert (not d!407448))

(assert (not b!1422535))

(assert (not b_next!35767))

(assert (not b!1422641))

(assert (not d!407498))

(assert (not b!1422567))

(assert (not b!1422713))

(assert (not d!407500))

(assert (not b!1422715))

(assert (not b!1422703))

(assert (not d!407464))

(assert (not b_next!35773))

(assert (not b!1422692))

(assert (not b!1422582))

(assert (not b!1422519))

(assert (not b!1422693))

(assert (not b!1422691))

(assert (not d!407418))

(assert (not b_next!35769))

(assert (not d!407428))

(assert (not b!1422673))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!35771))

(assert b_and!95085)

(assert b_and!95083)

(assert b_and!95079)

(assert (not b_next!35773))

(assert (not b_next!35769))

(assert b_and!95081)

(assert (not b_next!35767))

(check-sat)

(pop 1)

