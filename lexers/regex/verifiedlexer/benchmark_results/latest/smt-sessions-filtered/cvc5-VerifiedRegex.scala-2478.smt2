; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!130958 () Bool)

(assert start!130958)

(declare-fun b!1421419 () Bool)

(declare-fun e!907322 () Bool)

(declare-datatypes ((C!7914 0))(
  ( (C!7915 (val!4527 Int)) )
))
(declare-datatypes ((List!14705 0))(
  ( (Nil!14639) (Cons!14639 (h!20040 C!7914) (t!124508 List!14705)) )
))
(declare-datatypes ((IArray!9873 0))(
  ( (IArray!9874 (innerList!4994 List!14705)) )
))
(declare-datatypes ((Conc!4934 0))(
  ( (Node!4934 (left!12514 Conc!4934) (right!12844 Conc!4934) (csize!10098 Int) (cheight!5145 Int)) (Leaf!7413 (xs!7663 IArray!9873) (csize!10099 Int)) (Empty!4934) )
))
(declare-datatypes ((BalanceConc!9808 0))(
  ( (BalanceConc!9809 (c!233679 Conc!4934)) )
))
(declare-datatypes ((List!14706 0))(
  ( (Nil!14640) (Cons!14640 (h!20041 (_ BitVec 16)) (t!124509 List!14706)) )
))
(declare-datatypes ((TokenValue!2644 0))(
  ( (FloatLiteralValue!5288 (text!18953 List!14706)) (TokenValueExt!2643 (__x!9090 Int)) (Broken!13220 (value!82412 List!14706)) (Object!2709) (End!2644) (Def!2644) (Underscore!2644) (Match!2644) (Else!2644) (Error!2644) (Case!2644) (If!2644) (Extends!2644) (Abstract!2644) (Class!2644) (Val!2644) (DelimiterValue!5288 (del!2704 List!14706)) (KeywordValue!2650 (value!82413 List!14706)) (CommentValue!5288 (value!82414 List!14706)) (WhitespaceValue!5288 (value!82415 List!14706)) (IndentationValue!2644 (value!82416 List!14706)) (String!17477) (Int32!2644) (Broken!13221 (value!82417 List!14706)) (Boolean!2645) (Unit!21888) (OperatorValue!2647 (op!2704 List!14706)) (IdentifierValue!5288 (value!82418 List!14706)) (IdentifierValue!5289 (value!82419 List!14706)) (WhitespaceValue!5289 (value!82420 List!14706)) (True!5288) (False!5288) (Broken!13222 (value!82421 List!14706)) (Broken!13223 (value!82422 List!14706)) (True!5289) (RightBrace!2644) (RightBracket!2644) (Colon!2644) (Null!2644) (Comma!2644) (LeftBracket!2644) (False!5289) (LeftBrace!2644) (ImaginaryLiteralValue!2644 (text!18954 List!14706)) (StringLiteralValue!7932 (value!82423 List!14706)) (EOFValue!2644 (value!82424 List!14706)) (IdentValue!2644 (value!82425 List!14706)) (DelimiterValue!5289 (value!82426 List!14706)) (DedentValue!2644 (value!82427 List!14706)) (NewLineValue!2644 (value!82428 List!14706)) (IntegerValue!7932 (value!82429 (_ BitVec 32)) (text!18955 List!14706)) (IntegerValue!7933 (value!82430 Int) (text!18956 List!14706)) (Times!2644) (Or!2644) (Equal!2644) (Minus!2644) (Broken!13224 (value!82431 List!14706)) (And!2644) (Div!2644) (LessEqual!2644) (Mod!2644) (Concat!6512) (Not!2644) (Plus!2644) (SpaceValue!2644 (value!82432 List!14706)) (IntegerValue!7934 (value!82433 Int) (text!18957 List!14706)) (StringLiteralValue!7933 (text!18958 List!14706)) (FloatLiteralValue!5289 (text!18959 List!14706)) (BytesLiteralValue!2644 (value!82434 List!14706)) (CommentValue!5289 (value!82435 List!14706)) (StringLiteralValue!7934 (value!82436 List!14706)) (ErrorTokenValue!2644 (msg!2705 List!14706)) )
))
(declare-datatypes ((Regex!3868 0))(
  ( (ElementMatch!3868 (c!233680 C!7914)) (Concat!6513 (regOne!8248 Regex!3868) (regTwo!8248 Regex!3868)) (EmptyExpr!3868) (Star!3868 (reg!4197 Regex!3868)) (EmptyLang!3868) (Union!3868 (regOne!8249 Regex!3868) (regTwo!8249 Regex!3868)) )
))
(declare-datatypes ((String!17478 0))(
  ( (String!17479 (value!82437 String)) )
))
(declare-datatypes ((TokenValueInjection!4948 0))(
  ( (TokenValueInjection!4949 (toValue!3853 Int) (toChars!3712 Int)) )
))
(declare-datatypes ((Rule!4908 0))(
  ( (Rule!4909 (regex!2554 Regex!3868) (tag!2816 String!17478) (isSeparator!2554 Bool) (transformation!2554 TokenValueInjection!4948)) )
))
(declare-datatypes ((Token!4770 0))(
  ( (Token!4771 (value!82438 TokenValue!2644) (rule!4317 Rule!4908) (size!12063 Int) (originalCharacters!3416 List!14705)) )
))
(declare-datatypes ((List!14707 0))(
  ( (Nil!14641) (Cons!14641 (h!20042 Token!4770) (t!124510 List!14707)) )
))
(declare-fun lt!480300 () List!14707)

(declare-fun e!907327 () List!14705)

(declare-datatypes ((LexerInterface!2222 0))(
  ( (LexerInterfaceExt!2219 (__x!9091 Int)) (Lexer!2220) )
))
(declare-fun printList!676 (LexerInterface!2222 List!14707) List!14705)

(assert (=> b!1421419 (= e!907322 (= (printList!676 Lexer!2220 lt!480300) e!907327))))

(declare-fun c!233678 () Bool)

(assert (=> b!1421419 (= c!233678 (is-Cons!14641 lt!480300))))

(declare-fun b!1421420 () Bool)

(declare-fun res!643557 () Bool)

(assert (=> b!1421420 (=> (not res!643557) (not e!907322))))

(declare-fun lt!480296 () BalanceConc!9808)

(declare-datatypes ((IArray!9875 0))(
  ( (IArray!9876 (innerList!4995 List!14707)) )
))
(declare-datatypes ((Conc!4935 0))(
  ( (Node!4935 (left!12515 Conc!4935) (right!12845 Conc!4935) (csize!10100 Int) (cheight!5146 Int)) (Leaf!7414 (xs!7664 IArray!9875) (csize!10101 Int)) (Empty!4935) )
))
(declare-datatypes ((BalanceConc!9810 0))(
  ( (BalanceConc!9811 (c!233681 Conc!4935)) )
))
(declare-datatypes ((List!14708 0))(
  ( (Nil!14642) (Cons!14642 (h!20043 Rule!4908) (t!124511 List!14708)) )
))
(declare-datatypes ((PrintableTokens!890 0))(
  ( (PrintableTokens!891 (rules!11177 List!14708) (tokens!1869 BalanceConc!9810)) )
))
(declare-fun other!32 () PrintableTokens!890)

(declare-fun printTailRec!654 (LexerInterface!2222 BalanceConc!9810 Int BalanceConc!9808) BalanceConc!9808)

(assert (=> b!1421420 (= res!643557 (= lt!480296 (printTailRec!654 Lexer!2220 (tokens!1869 other!32) 0 (BalanceConc!9809 Empty!4934))))))

(declare-fun b!1421421 () Bool)

(declare-fun e!907321 () Bool)

(declare-fun tp!402955 () Bool)

(declare-fun inv!19380 (Conc!4935) Bool)

(assert (=> b!1421421 (= e!907321 (and (inv!19380 (c!233681 (tokens!1869 other!32))) tp!402955))))

(declare-fun res!643562 () Bool)

(declare-fun e!907319 () Bool)

(assert (=> start!130958 (=> (not res!643562) (not e!907319))))

(declare-fun thiss!10022 () PrintableTokens!890)

(assert (=> start!130958 (= res!643562 (= (rules!11177 thiss!10022) (rules!11177 other!32)))))

(assert (=> start!130958 e!907319))

(declare-fun e!907318 () Bool)

(declare-fun inv!19381 (PrintableTokens!890) Bool)

(assert (=> start!130958 (and (inv!19381 thiss!10022) e!907318)))

(declare-fun e!907325 () Bool)

(assert (=> start!130958 (and (inv!19381 other!32) e!907325)))

(declare-fun b!1421422 () Bool)

(declare-fun tp!402954 () Bool)

(declare-fun inv!19382 (BalanceConc!9810) Bool)

(assert (=> b!1421422 (= e!907325 (and tp!402954 (inv!19382 (tokens!1869 other!32)) e!907321))))

(declare-fun b!1421423 () Bool)

(declare-fun e!907320 () Bool)

(assert (=> b!1421423 (= e!907319 e!907320)))

(declare-fun res!643560 () Bool)

(assert (=> b!1421423 (=> (not res!643560) (not e!907320))))

(declare-fun isEmpty!9027 (BalanceConc!9810) Bool)

(assert (=> b!1421423 (= res!643560 (isEmpty!9027 (tokens!1869 other!32)))))

(declare-datatypes ((Unit!21889 0))(
  ( (Unit!21890) )
))
(declare-fun lt!480294 () Unit!21889)

(declare-fun lemmaInvariant!250 (PrintableTokens!890) Unit!21889)

(assert (=> b!1421423 (= lt!480294 (lemmaInvariant!250 thiss!10022))))

(declare-fun lt!480302 () Unit!21889)

(assert (=> b!1421423 (= lt!480302 (lemmaInvariant!250 other!32))))

(declare-fun b!1421424 () Bool)

(declare-fun e!907328 () Bool)

(declare-fun lt!480301 () List!14705)

(assert (=> b!1421424 (= e!907328 (= lt!480301 Nil!14639))))

(declare-fun b!1421425 () Bool)

(declare-fun ++!3864 (List!14705 List!14705) List!14705)

(declare-fun list!5796 (BalanceConc!9808) List!14705)

(declare-fun charsOf!1487 (Token!4770) BalanceConc!9808)

(assert (=> b!1421425 (= e!907327 (++!3864 (list!5796 (charsOf!1487 (h!20042 lt!480300))) (printList!676 Lexer!2220 (t!124510 lt!480300))))))

(declare-fun b!1421426 () Bool)

(declare-fun e!907326 () Bool)

(declare-datatypes ((Option!2809 0))(
  ( (None!2808) (Some!2808 (v!22216 PrintableTokens!890)) )
))
(declare-fun lt!480297 () Option!2809)

(declare-fun isDefined!2270 (Option!2809) Bool)

(assert (=> b!1421426 (= e!907326 (isDefined!2270 lt!480297))))

(declare-fun b!1421427 () Bool)

(declare-fun e!907323 () Bool)

(assert (=> b!1421427 (= e!907320 (not e!907323))))

(declare-fun res!643561 () Bool)

(assert (=> b!1421427 (=> res!643561 e!907323)))

(assert (=> b!1421427 (= res!643561 (not (= lt!480296 (BalanceConc!9809 Empty!4934))))))

(assert (=> b!1421427 e!907322))

(declare-fun res!643558 () Bool)

(assert (=> b!1421427 (=> (not res!643558) (not e!907322))))

(declare-fun lt!480305 () BalanceConc!9808)

(assert (=> b!1421427 (= res!643558 (= lt!480305 lt!480296))))

(declare-fun print!1003 (LexerInterface!2222 BalanceConc!9810) BalanceConc!9808)

(assert (=> b!1421427 (= lt!480296 (print!1003 Lexer!2220 (tokens!1869 other!32)))))

(declare-fun print!1004 (PrintableTokens!890) BalanceConc!9808)

(assert (=> b!1421427 (= lt!480305 (print!1004 other!32))))

(declare-fun lt!480293 () Unit!21889)

(declare-fun theoremInvertabilityWhenTokenListSeparable!44 (LexerInterface!2222 List!14708 List!14707) Unit!21889)

(assert (=> b!1421427 (= lt!480293 (theoremInvertabilityWhenTokenListSeparable!44 Lexer!2220 (rules!11177 other!32) lt!480300))))

(declare-fun list!5797 (BalanceConc!9810) List!14707)

(assert (=> b!1421427 (= lt!480300 (list!5797 (tokens!1869 other!32)))))

(assert (=> b!1421427 (= (print!1004 thiss!10022) (print!1003 Lexer!2220 (tokens!1869 thiss!10022)))))

(declare-fun lt!480299 () Unit!21889)

(declare-fun lt!480295 () List!14707)

(assert (=> b!1421427 (= lt!480299 (theoremInvertabilityWhenTokenListSeparable!44 Lexer!2220 (rules!11177 thiss!10022) lt!480295))))

(assert (=> b!1421427 e!907328))

(declare-fun res!643559 () Bool)

(assert (=> b!1421427 (=> (not res!643559) (not e!907328))))

(declare-fun lt!480298 () List!14707)

(declare-fun lt!480304 () List!14705)

(assert (=> b!1421427 (= res!643559 (= (printList!676 Lexer!2220 lt!480298) (++!3864 lt!480304 lt!480301)))))

(assert (=> b!1421427 (= lt!480301 (printList!676 Lexer!2220 Nil!14641))))

(assert (=> b!1421427 (= lt!480304 (printList!676 Lexer!2220 lt!480295))))

(declare-fun ++!3865 (List!14707 List!14707) List!14707)

(assert (=> b!1421427 (= lt!480298 (++!3865 lt!480295 Nil!14641))))

(declare-fun lt!480303 () Unit!21889)

(declare-fun lemmaPrintConcatSameAsConcatPrint!41 (LexerInterface!2222 List!14707 List!14707) Unit!21889)

(assert (=> b!1421427 (= lt!480303 (lemmaPrintConcatSameAsConcatPrint!41 Lexer!2220 lt!480295 Nil!14641))))

(assert (=> b!1421427 (= lt!480295 (list!5797 (tokens!1869 thiss!10022)))))

(declare-fun b!1421428 () Bool)

(assert (=> b!1421428 (= e!907323 e!907326)))

(declare-fun res!643555 () Bool)

(assert (=> b!1421428 (=> res!643555 e!907326)))

(declare-fun isEmpty!9028 (Option!2809) Bool)

(assert (=> b!1421428 (= res!643555 (isEmpty!9028 lt!480297))))

(assert (=> b!1421428 (= lt!480297 (Some!2808 thiss!10022))))

(declare-fun b!1421429 () Bool)

(declare-fun res!643556 () Bool)

(assert (=> b!1421429 (=> res!643556 e!907326)))

(declare-fun get!4499 (Option!2809) PrintableTokens!890)

(assert (=> b!1421429 (= res!643556 (not (= (rules!11177 (get!4499 lt!480297)) (rules!11177 thiss!10022))))))

(declare-fun b!1421430 () Bool)

(assert (=> b!1421430 (= e!907327 Nil!14639)))

(declare-fun e!907324 () Bool)

(declare-fun tp!402953 () Bool)

(declare-fun b!1421431 () Bool)

(assert (=> b!1421431 (= e!907318 (and tp!402953 (inv!19382 (tokens!1869 thiss!10022)) e!907324))))

(declare-fun b!1421432 () Bool)

(declare-fun tp!402956 () Bool)

(assert (=> b!1421432 (= e!907324 (and (inv!19380 (c!233681 (tokens!1869 thiss!10022))) tp!402956))))

(assert (= (and start!130958 res!643562) b!1421423))

(assert (= (and b!1421423 res!643560) b!1421427))

(assert (= (and b!1421427 res!643559) b!1421424))

(assert (= (and b!1421427 res!643558) b!1421420))

(assert (= (and b!1421420 res!643557) b!1421419))

(assert (= (and b!1421419 c!233678) b!1421425))

(assert (= (and b!1421419 (not c!233678)) b!1421430))

(assert (= (and b!1421427 (not res!643561)) b!1421428))

(assert (= (and b!1421428 (not res!643555)) b!1421429))

(assert (= (and b!1421429 (not res!643556)) b!1421426))

(assert (= b!1421431 b!1421432))

(assert (= start!130958 b!1421431))

(assert (= b!1421422 b!1421421))

(assert (= start!130958 b!1421422))

(declare-fun m!1611813 () Bool)

(assert (=> b!1421428 m!1611813))

(declare-fun m!1611815 () Bool)

(assert (=> b!1421421 m!1611815))

(declare-fun m!1611817 () Bool)

(assert (=> b!1421422 m!1611817))

(declare-fun m!1611819 () Bool)

(assert (=> b!1421426 m!1611819))

(declare-fun m!1611821 () Bool)

(assert (=> b!1421429 m!1611821))

(declare-fun m!1611823 () Bool)

(assert (=> b!1421425 m!1611823))

(assert (=> b!1421425 m!1611823))

(declare-fun m!1611825 () Bool)

(assert (=> b!1421425 m!1611825))

(declare-fun m!1611827 () Bool)

(assert (=> b!1421425 m!1611827))

(assert (=> b!1421425 m!1611825))

(assert (=> b!1421425 m!1611827))

(declare-fun m!1611829 () Bool)

(assert (=> b!1421425 m!1611829))

(declare-fun m!1611831 () Bool)

(assert (=> b!1421432 m!1611831))

(declare-fun m!1611833 () Bool)

(assert (=> b!1421419 m!1611833))

(declare-fun m!1611835 () Bool)

(assert (=> b!1421431 m!1611835))

(declare-fun m!1611837 () Bool)

(assert (=> b!1421427 m!1611837))

(declare-fun m!1611839 () Bool)

(assert (=> b!1421427 m!1611839))

(declare-fun m!1611841 () Bool)

(assert (=> b!1421427 m!1611841))

(declare-fun m!1611843 () Bool)

(assert (=> b!1421427 m!1611843))

(declare-fun m!1611845 () Bool)

(assert (=> b!1421427 m!1611845))

(declare-fun m!1611847 () Bool)

(assert (=> b!1421427 m!1611847))

(declare-fun m!1611849 () Bool)

(assert (=> b!1421427 m!1611849))

(declare-fun m!1611851 () Bool)

(assert (=> b!1421427 m!1611851))

(declare-fun m!1611853 () Bool)

(assert (=> b!1421427 m!1611853))

(declare-fun m!1611855 () Bool)

(assert (=> b!1421427 m!1611855))

(declare-fun m!1611857 () Bool)

(assert (=> b!1421427 m!1611857))

(declare-fun m!1611859 () Bool)

(assert (=> b!1421427 m!1611859))

(declare-fun m!1611861 () Bool)

(assert (=> b!1421427 m!1611861))

(declare-fun m!1611863 () Bool)

(assert (=> b!1421427 m!1611863))

(declare-fun m!1611865 () Bool)

(assert (=> b!1421420 m!1611865))

(declare-fun m!1611867 () Bool)

(assert (=> b!1421423 m!1611867))

(declare-fun m!1611869 () Bool)

(assert (=> b!1421423 m!1611869))

(declare-fun m!1611871 () Bool)

(assert (=> b!1421423 m!1611871))

(declare-fun m!1611873 () Bool)

(assert (=> start!130958 m!1611873))

(declare-fun m!1611875 () Bool)

(assert (=> start!130958 m!1611875))

(push 1)

(assert (not b!1421421))

(assert (not b!1421423))

(assert (not b!1421429))

(assert (not b!1421428))

(assert (not b!1421427))

(assert (not b!1421432))

(assert (not b!1421425))

(assert (not start!130958))

(assert (not b!1421426))

(assert (not b!1421419))

(assert (not b!1421422))

(assert (not b!1421420))

(assert (not b!1421431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!407145 () Bool)

(assert (=> d!407145 (= (get!4499 lt!480297) (v!22216 lt!480297))))

(assert (=> b!1421429 d!407145))

(declare-fun d!407147 () Bool)

(declare-fun c!233691 () Bool)

(assert (=> d!407147 (= c!233691 (is-Cons!14641 lt!480300))))

(declare-fun e!907364 () List!14705)

(assert (=> d!407147 (= (printList!676 Lexer!2220 lt!480300) e!907364)))

(declare-fun b!1421479 () Bool)

(assert (=> b!1421479 (= e!907364 (++!3864 (list!5796 (charsOf!1487 (h!20042 lt!480300))) (printList!676 Lexer!2220 (t!124510 lt!480300))))))

(declare-fun b!1421480 () Bool)

(assert (=> b!1421480 (= e!907364 Nil!14639)))

(assert (= (and d!407147 c!233691) b!1421479))

(assert (= (and d!407147 (not c!233691)) b!1421480))

(assert (=> b!1421479 m!1611823))

(assert (=> b!1421479 m!1611823))

(assert (=> b!1421479 m!1611825))

(assert (=> b!1421479 m!1611827))

(assert (=> b!1421479 m!1611825))

(assert (=> b!1421479 m!1611827))

(assert (=> b!1421479 m!1611829))

(assert (=> b!1421419 d!407147))

(declare-fun d!407149 () Bool)

(declare-fun lt!480364 () BalanceConc!9808)

(declare-fun printListTailRec!268 (LexerInterface!2222 List!14707 List!14705) List!14705)

(declare-fun dropList!441 (BalanceConc!9810 Int) List!14707)

(assert (=> d!407149 (= (list!5796 lt!480364) (printListTailRec!268 Lexer!2220 (dropList!441 (tokens!1869 other!32) 0) (list!5796 (BalanceConc!9809 Empty!4934))))))

(declare-fun e!907373 () BalanceConc!9808)

(assert (=> d!407149 (= lt!480364 e!907373)))

(declare-fun c!233697 () Bool)

(declare-fun size!12065 (BalanceConc!9810) Int)

(assert (=> d!407149 (= c!233697 (>= 0 (size!12065 (tokens!1869 other!32))))))

(declare-fun e!907372 () Bool)

(assert (=> d!407149 e!907372))

(declare-fun res!643593 () Bool)

(assert (=> d!407149 (=> (not res!643593) (not e!907372))))

(assert (=> d!407149 (= res!643593 (>= 0 0))))

(assert (=> d!407149 (= (printTailRec!654 Lexer!2220 (tokens!1869 other!32) 0 (BalanceConc!9809 Empty!4934)) lt!480364)))

(declare-fun b!1421493 () Bool)

(assert (=> b!1421493 (= e!907372 (<= 0 (size!12065 (tokens!1869 other!32))))))

(declare-fun b!1421494 () Bool)

(assert (=> b!1421494 (= e!907373 (BalanceConc!9809 Empty!4934))))

(declare-fun b!1421495 () Bool)

(declare-fun ++!3868 (BalanceConc!9808 BalanceConc!9808) BalanceConc!9808)

(declare-fun apply!3731 (BalanceConc!9810 Int) Token!4770)

(assert (=> b!1421495 (= e!907373 (printTailRec!654 Lexer!2220 (tokens!1869 other!32) (+ 0 1) (++!3868 (BalanceConc!9809 Empty!4934) (charsOf!1487 (apply!3731 (tokens!1869 other!32) 0)))))))

(declare-fun lt!480365 () List!14707)

(assert (=> b!1421495 (= lt!480365 (list!5797 (tokens!1869 other!32)))))

(declare-fun lt!480360 () Unit!21889)

(declare-fun lemmaDropApply!463 (List!14707 Int) Unit!21889)

(assert (=> b!1421495 (= lt!480360 (lemmaDropApply!463 lt!480365 0))))

(declare-fun head!2788 (List!14707) Token!4770)

(declare-fun drop!709 (List!14707 Int) List!14707)

(declare-fun apply!3732 (List!14707 Int) Token!4770)

(assert (=> b!1421495 (= (head!2788 (drop!709 lt!480365 0)) (apply!3732 lt!480365 0))))

(declare-fun lt!480359 () Unit!21889)

(assert (=> b!1421495 (= lt!480359 lt!480360)))

(declare-fun lt!480361 () List!14707)

(assert (=> b!1421495 (= lt!480361 (list!5797 (tokens!1869 other!32)))))

(declare-fun lt!480362 () Unit!21889)

(declare-fun lemmaDropTail!443 (List!14707 Int) Unit!21889)

(assert (=> b!1421495 (= lt!480362 (lemmaDropTail!443 lt!480361 0))))

(declare-fun tail!2133 (List!14707) List!14707)

(assert (=> b!1421495 (= (tail!2133 (drop!709 lt!480361 0)) (drop!709 lt!480361 (+ 0 1)))))

(declare-fun lt!480363 () Unit!21889)

(assert (=> b!1421495 (= lt!480363 lt!480362)))

(assert (= (and d!407149 res!643593) b!1421493))

(assert (= (and d!407149 c!233697) b!1421494))

(assert (= (and d!407149 (not c!233697)) b!1421495))

(declare-fun m!1611945 () Bool)

(assert (=> d!407149 m!1611945))

(declare-fun m!1611947 () Bool)

(assert (=> d!407149 m!1611947))

(declare-fun m!1611949 () Bool)

(assert (=> d!407149 m!1611949))

(assert (=> d!407149 m!1611947))

(declare-fun m!1611951 () Bool)

(assert (=> d!407149 m!1611951))

(assert (=> d!407149 m!1611949))

(declare-fun m!1611953 () Bool)

(assert (=> d!407149 m!1611953))

(assert (=> b!1421493 m!1611953))

(declare-fun m!1611955 () Bool)

(assert (=> b!1421495 m!1611955))

(declare-fun m!1611957 () Bool)

(assert (=> b!1421495 m!1611957))

(declare-fun m!1611959 () Bool)

(assert (=> b!1421495 m!1611959))

(declare-fun m!1611961 () Bool)

(assert (=> b!1421495 m!1611961))

(assert (=> b!1421495 m!1611955))

(declare-fun m!1611963 () Bool)

(assert (=> b!1421495 m!1611963))

(declare-fun m!1611965 () Bool)

(assert (=> b!1421495 m!1611965))

(declare-fun m!1611967 () Bool)

(assert (=> b!1421495 m!1611967))

(declare-fun m!1611969 () Bool)

(assert (=> b!1421495 m!1611969))

(assert (=> b!1421495 m!1611863))

(assert (=> b!1421495 m!1611969))

(declare-fun m!1611971 () Bool)

(assert (=> b!1421495 m!1611971))

(declare-fun m!1611973 () Bool)

(assert (=> b!1421495 m!1611973))

(assert (=> b!1421495 m!1611957))

(declare-fun m!1611975 () Bool)

(assert (=> b!1421495 m!1611975))

(assert (=> b!1421495 m!1611971))

(assert (=> b!1421495 m!1611965))

(declare-fun m!1611977 () Bool)

(assert (=> b!1421495 m!1611977))

(assert (=> b!1421420 d!407149))

(declare-fun d!407163 () Bool)

(declare-fun isBalanced!1469 (Conc!4935) Bool)

(assert (=> d!407163 (= (inv!19382 (tokens!1869 thiss!10022)) (isBalanced!1469 (c!233681 (tokens!1869 thiss!10022))))))

(declare-fun bs!339800 () Bool)

(assert (= bs!339800 d!407163))

(declare-fun m!1611979 () Bool)

(assert (=> bs!339800 m!1611979))

(assert (=> b!1421431 d!407163))

(declare-fun d!407165 () Bool)

(assert (=> d!407165 (= (isDefined!2270 lt!480297) (not (isEmpty!9028 lt!480297)))))

(declare-fun bs!339801 () Bool)

(assert (= bs!339801 d!407165))

(assert (=> bs!339801 m!1611813))

(assert (=> b!1421426 d!407165))

(declare-fun d!407167 () Bool)

(declare-fun list!5800 (Conc!4935) List!14707)

(assert (=> d!407167 (= (list!5797 (tokens!1869 other!32)) (list!5800 (c!233681 (tokens!1869 other!32))))))

(declare-fun bs!339802 () Bool)

(assert (= bs!339802 d!407167))

(declare-fun m!1611981 () Bool)

(assert (=> bs!339802 m!1611981))

(assert (=> b!1421427 d!407167))

(declare-fun d!407169 () Bool)

(declare-fun c!233698 () Bool)

(assert (=> d!407169 (= c!233698 (is-Cons!14641 Nil!14641))))

(declare-fun e!907374 () List!14705)

(assert (=> d!407169 (= (printList!676 Lexer!2220 Nil!14641) e!907374)))

(declare-fun b!1421496 () Bool)

(assert (=> b!1421496 (= e!907374 (++!3864 (list!5796 (charsOf!1487 (h!20042 Nil!14641))) (printList!676 Lexer!2220 (t!124510 Nil!14641))))))

(declare-fun b!1421497 () Bool)

(assert (=> b!1421497 (= e!907374 Nil!14639)))

(assert (= (and d!407169 c!233698) b!1421496))

(assert (= (and d!407169 (not c!233698)) b!1421497))

(declare-fun m!1611983 () Bool)

(assert (=> b!1421496 m!1611983))

(assert (=> b!1421496 m!1611983))

(declare-fun m!1611985 () Bool)

(assert (=> b!1421496 m!1611985))

(declare-fun m!1611987 () Bool)

(assert (=> b!1421496 m!1611987))

(assert (=> b!1421496 m!1611985))

(assert (=> b!1421496 m!1611987))

(declare-fun m!1611989 () Bool)

(assert (=> b!1421496 m!1611989))

(assert (=> b!1421427 d!407169))

(declare-fun d!407171 () Bool)

(declare-fun e!907377 () Bool)

(assert (=> d!407171 e!907377))

(declare-fun res!643596 () Bool)

(assert (=> d!407171 (=> (not res!643596) (not e!907377))))

(declare-fun lt!480370 () BalanceConc!9808)

(declare-datatypes ((tuple2!14016 0))(
  ( (tuple2!14017 (_1!7894 BalanceConc!9810) (_2!7894 BalanceConc!9808)) )
))
(declare-fun lex!1016 (LexerInterface!2222 List!14708 BalanceConc!9808) tuple2!14016)

(assert (=> d!407171 (= res!643596 (= (list!5797 (_1!7894 (lex!1016 Lexer!2220 (rules!11177 other!32) lt!480370))) (list!5797 (tokens!1869 other!32))))))

(assert (=> d!407171 (= lt!480370 (print!1003 Lexer!2220 (tokens!1869 other!32)))))

(declare-fun lt!480371 () Unit!21889)

(assert (=> d!407171 (= lt!480371 (theoremInvertabilityWhenTokenListSeparable!44 Lexer!2220 (rules!11177 other!32) (list!5797 (tokens!1869 other!32))))))

(assert (=> d!407171 (= (print!1004 other!32) lt!480370)))

(declare-fun b!1421500 () Bool)

(declare-fun isEmpty!9031 (List!14705) Bool)

(assert (=> b!1421500 (= e!907377 (isEmpty!9031 (list!5796 (_2!7894 (lex!1016 Lexer!2220 (rules!11177 other!32) lt!480370)))))))

(assert (= (and d!407171 res!643596) b!1421500))

(assert (=> d!407171 m!1611863))

(assert (=> d!407171 m!1611861))

(assert (=> d!407171 m!1611863))

(declare-fun m!1611991 () Bool)

(assert (=> d!407171 m!1611991))

(declare-fun m!1611993 () Bool)

(assert (=> d!407171 m!1611993))

(declare-fun m!1611995 () Bool)

(assert (=> d!407171 m!1611995))

(assert (=> b!1421500 m!1611993))

(declare-fun m!1611997 () Bool)

(assert (=> b!1421500 m!1611997))

(assert (=> b!1421500 m!1611997))

(declare-fun m!1611999 () Bool)

(assert (=> b!1421500 m!1611999))

(assert (=> b!1421427 d!407171))

(declare-fun d!407173 () Bool)

(assert (=> d!407173 (= (list!5797 (tokens!1869 thiss!10022)) (list!5800 (c!233681 (tokens!1869 thiss!10022))))))

(declare-fun bs!339803 () Bool)

(assert (= bs!339803 d!407173))

(declare-fun m!1612001 () Bool)

(assert (=> bs!339803 m!1612001))

(assert (=> b!1421427 d!407173))

(declare-fun d!407175 () Bool)

(declare-fun c!233699 () Bool)

(assert (=> d!407175 (= c!233699 (is-Cons!14641 lt!480295))))

(declare-fun e!907378 () List!14705)

(assert (=> d!407175 (= (printList!676 Lexer!2220 lt!480295) e!907378)))

(declare-fun b!1421501 () Bool)

(assert (=> b!1421501 (= e!907378 (++!3864 (list!5796 (charsOf!1487 (h!20042 lt!480295))) (printList!676 Lexer!2220 (t!124510 lt!480295))))))

(declare-fun b!1421502 () Bool)

(assert (=> b!1421502 (= e!907378 Nil!14639)))

(assert (= (and d!407175 c!233699) b!1421501))

(assert (= (and d!407175 (not c!233699)) b!1421502))

(declare-fun m!1612003 () Bool)

(assert (=> b!1421501 m!1612003))

(assert (=> b!1421501 m!1612003))

(declare-fun m!1612005 () Bool)

(assert (=> b!1421501 m!1612005))

(declare-fun m!1612007 () Bool)

(assert (=> b!1421501 m!1612007))

(assert (=> b!1421501 m!1612005))

(assert (=> b!1421501 m!1612007))

(declare-fun m!1612009 () Bool)

(assert (=> b!1421501 m!1612009))

(assert (=> b!1421427 d!407175))

(declare-fun d!407177 () Bool)

(assert (=> d!407177 (= (printList!676 Lexer!2220 (++!3865 lt!480295 Nil!14641)) (++!3864 (printList!676 Lexer!2220 lt!480295) (printList!676 Lexer!2220 Nil!14641)))))

(declare-fun lt!480374 () Unit!21889)

(declare-fun choose!8752 (LexerInterface!2222 List!14707 List!14707) Unit!21889)

(assert (=> d!407177 (= lt!480374 (choose!8752 Lexer!2220 lt!480295 Nil!14641))))

(assert (=> d!407177 (= (lemmaPrintConcatSameAsConcatPrint!41 Lexer!2220 lt!480295 Nil!14641) lt!480374)))

(declare-fun bs!339804 () Bool)

(assert (= bs!339804 d!407177))

(declare-fun m!1612011 () Bool)

(assert (=> bs!339804 m!1612011))

(assert (=> bs!339804 m!1611859))

(assert (=> bs!339804 m!1611837))

(declare-fun m!1612013 () Bool)

(assert (=> bs!339804 m!1612013))

(assert (=> bs!339804 m!1611857))

(assert (=> bs!339804 m!1611859))

(assert (=> bs!339804 m!1611857))

(declare-fun m!1612015 () Bool)

(assert (=> bs!339804 m!1612015))

(assert (=> bs!339804 m!1611837))

(assert (=> b!1421427 d!407177))

(declare-fun b!1421511 () Bool)

(declare-fun e!907383 () List!14705)

(assert (=> b!1421511 (= e!907383 lt!480301)))

(declare-fun b!1421513 () Bool)

(declare-fun res!643601 () Bool)

(declare-fun e!907384 () Bool)

(assert (=> b!1421513 (=> (not res!643601) (not e!907384))))

(declare-fun lt!480377 () List!14705)

(declare-fun size!12066 (List!14705) Int)

(assert (=> b!1421513 (= res!643601 (= (size!12066 lt!480377) (+ (size!12066 lt!480304) (size!12066 lt!480301))))))

(declare-fun b!1421514 () Bool)

(assert (=> b!1421514 (= e!907384 (or (not (= lt!480301 Nil!14639)) (= lt!480377 lt!480304)))))

(declare-fun b!1421512 () Bool)

(assert (=> b!1421512 (= e!907383 (Cons!14639 (h!20040 lt!480304) (++!3864 (t!124508 lt!480304) lt!480301)))))

(declare-fun d!407179 () Bool)

(assert (=> d!407179 e!907384))

(declare-fun res!643602 () Bool)

(assert (=> d!407179 (=> (not res!643602) (not e!907384))))

(declare-fun content!2157 (List!14705) (Set C!7914))

(assert (=> d!407179 (= res!643602 (= (content!2157 lt!480377) (set.union (content!2157 lt!480304) (content!2157 lt!480301))))))

(assert (=> d!407179 (= lt!480377 e!907383)))

(declare-fun c!233702 () Bool)

(assert (=> d!407179 (= c!233702 (is-Nil!14639 lt!480304))))

(assert (=> d!407179 (= (++!3864 lt!480304 lt!480301) lt!480377)))

(assert (= (and d!407179 c!233702) b!1421511))

(assert (= (and d!407179 (not c!233702)) b!1421512))

(assert (= (and d!407179 res!643602) b!1421513))

(assert (= (and b!1421513 res!643601) b!1421514))

(declare-fun m!1612017 () Bool)

(assert (=> b!1421513 m!1612017))

(declare-fun m!1612019 () Bool)

(assert (=> b!1421513 m!1612019))

(declare-fun m!1612021 () Bool)

(assert (=> b!1421513 m!1612021))

(declare-fun m!1612023 () Bool)

(assert (=> b!1421512 m!1612023))

(declare-fun m!1612025 () Bool)

(assert (=> d!407179 m!1612025))

(declare-fun m!1612027 () Bool)

(assert (=> d!407179 m!1612027))

(declare-fun m!1612029 () Bool)

(assert (=> d!407179 m!1612029))

(assert (=> b!1421427 d!407179))

(declare-fun b!1421524 () Bool)

(declare-fun e!907389 () List!14707)

(assert (=> b!1421524 (= e!907389 (Cons!14641 (h!20042 lt!480295) (++!3865 (t!124510 lt!480295) Nil!14641)))))

(declare-fun b!1421525 () Bool)

(declare-fun res!643608 () Bool)

(declare-fun e!907390 () Bool)

(assert (=> b!1421525 (=> (not res!643608) (not e!907390))))

(declare-fun lt!480380 () List!14707)

(declare-fun size!12067 (List!14707) Int)

(assert (=> b!1421525 (= res!643608 (= (size!12067 lt!480380) (+ (size!12067 lt!480295) (size!12067 Nil!14641))))))

(declare-fun b!1421523 () Bool)

(assert (=> b!1421523 (= e!907389 Nil!14641)))

(declare-fun b!1421526 () Bool)

(assert (=> b!1421526 (= e!907390 (or (not (= Nil!14641 Nil!14641)) (= lt!480380 lt!480295)))))

(declare-fun d!407181 () Bool)

(assert (=> d!407181 e!907390))

(declare-fun res!643607 () Bool)

(assert (=> d!407181 (=> (not res!643607) (not e!907390))))

(declare-fun content!2158 (List!14707) (Set Token!4770))

(assert (=> d!407181 (= res!643607 (= (content!2158 lt!480380) (set.union (content!2158 lt!480295) (content!2158 Nil!14641))))))

(assert (=> d!407181 (= lt!480380 e!907389)))

(declare-fun c!233705 () Bool)

(assert (=> d!407181 (= c!233705 (is-Nil!14641 lt!480295))))

(assert (=> d!407181 (= (++!3865 lt!480295 Nil!14641) lt!480380)))

(assert (= (and d!407181 c!233705) b!1421523))

(assert (= (and d!407181 (not c!233705)) b!1421524))

(assert (= (and d!407181 res!643607) b!1421525))

(assert (= (and b!1421525 res!643608) b!1421526))

(declare-fun m!1612031 () Bool)

(assert (=> b!1421524 m!1612031))

(declare-fun m!1612033 () Bool)

(assert (=> b!1421525 m!1612033))

(declare-fun m!1612035 () Bool)

(assert (=> b!1421525 m!1612035))

(declare-fun m!1612037 () Bool)

(assert (=> b!1421525 m!1612037))

(declare-fun m!1612039 () Bool)

(assert (=> d!407181 m!1612039))

(declare-fun m!1612041 () Bool)

(assert (=> d!407181 m!1612041))

(declare-fun m!1612043 () Bool)

(assert (=> d!407181 m!1612043))

(assert (=> b!1421427 d!407181))

(declare-fun d!407183 () Bool)

(declare-fun c!233706 () Bool)

(assert (=> d!407183 (= c!233706 (is-Cons!14641 lt!480298))))

(declare-fun e!907391 () List!14705)

(assert (=> d!407183 (= (printList!676 Lexer!2220 lt!480298) e!907391)))

(declare-fun b!1421527 () Bool)

(assert (=> b!1421527 (= e!907391 (++!3864 (list!5796 (charsOf!1487 (h!20042 lt!480298))) (printList!676 Lexer!2220 (t!124510 lt!480298))))))

(declare-fun b!1421528 () Bool)

(assert (=> b!1421528 (= e!907391 Nil!14639)))

(assert (= (and d!407183 c!233706) b!1421527))

(assert (= (and d!407183 (not c!233706)) b!1421528))

(declare-fun m!1612045 () Bool)

(assert (=> b!1421527 m!1612045))

(assert (=> b!1421527 m!1612045))

(declare-fun m!1612047 () Bool)

(assert (=> b!1421527 m!1612047))

(declare-fun m!1612049 () Bool)

(assert (=> b!1421527 m!1612049))

(assert (=> b!1421527 m!1612047))

(assert (=> b!1421527 m!1612049))

(declare-fun m!1612051 () Bool)

(assert (=> b!1421527 m!1612051))

(assert (=> b!1421427 d!407183))

(declare-fun d!407185 () Bool)

(declare-fun e!907405 () Bool)

(assert (=> d!407185 e!907405))

(declare-fun res!643614 () Bool)

(assert (=> d!407185 (=> (not res!643614) (not e!907405))))

(declare-fun seqFromList!1678 (List!14707) BalanceConc!9810)

(assert (=> d!407185 (= res!643614 (= (list!5797 (_1!7894 (lex!1016 Lexer!2220 (rules!11177 thiss!10022) (print!1003 Lexer!2220 (seqFromList!1678 lt!480295))))) lt!480295))))

(declare-fun lt!480515 () Unit!21889)

(declare-fun e!907404 () Unit!21889)

(assert (=> d!407185 (= lt!480515 e!907404)))

(declare-fun c!233714 () Bool)

(assert (=> d!407185 (= c!233714 (or (is-Nil!14641 lt!480295) (is-Nil!14641 (t!124510 lt!480295))))))

(declare-fun isEmpty!9032 (List!14708) Bool)

(assert (=> d!407185 (not (isEmpty!9032 (rules!11177 thiss!10022)))))

(assert (=> d!407185 (= (theoremInvertabilityWhenTokenListSeparable!44 Lexer!2220 (rules!11177 thiss!10022) lt!480295) lt!480515)))

(declare-fun b!1421548 () Bool)

(declare-fun Unit!21894 () Unit!21889)

(assert (=> b!1421548 (= e!907404 Unit!21894)))

(declare-fun b!1421549 () Bool)

(declare-fun Unit!21895 () Unit!21889)

(assert (=> b!1421549 (= e!907404 Unit!21895)))

(declare-fun lt!480518 () BalanceConc!9808)

(assert (=> b!1421549 (= lt!480518 (print!1003 Lexer!2220 (seqFromList!1678 lt!480295)))))

(declare-fun lt!480520 () BalanceConc!9808)

(assert (=> b!1421549 (= lt!480520 (print!1003 Lexer!2220 (seqFromList!1678 (t!124510 lt!480295))))))

(declare-fun lt!480530 () tuple2!14016)

(assert (=> b!1421549 (= lt!480530 (lex!1016 Lexer!2220 (rules!11177 thiss!10022) lt!480520))))

(declare-fun lt!480528 () List!14705)

(assert (=> b!1421549 (= lt!480528 (list!5796 (charsOf!1487 (h!20042 lt!480295))))))

(declare-fun lt!480532 () List!14705)

(assert (=> b!1421549 (= lt!480532 (list!5796 lt!480520))))

(declare-fun lt!480522 () Unit!21889)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!742 (List!14705 List!14705) Unit!21889)

(assert (=> b!1421549 (= lt!480522 (lemmaConcatTwoListThenFirstIsPrefix!742 lt!480528 lt!480532))))

(declare-fun isPrefix!1175 (List!14705 List!14705) Bool)

(assert (=> b!1421549 (isPrefix!1175 lt!480528 (++!3864 lt!480528 lt!480532))))

(declare-fun lt!480533 () Unit!21889)

(assert (=> b!1421549 (= lt!480533 lt!480522)))

(declare-fun lt!480527 () Unit!21889)

(assert (=> b!1421549 (= lt!480527 (theoremInvertabilityWhenTokenListSeparable!44 Lexer!2220 (rules!11177 thiss!10022) (t!124510 lt!480295)))))

(declare-fun lt!480536 () Unit!21889)

(declare-fun seqFromListBHdTlConstructive!71 (Token!4770 List!14707 BalanceConc!9810) Unit!21889)

(assert (=> b!1421549 (= lt!480536 (seqFromListBHdTlConstructive!71 (h!20042 (t!124510 lt!480295)) (t!124510 (t!124510 lt!480295)) (_1!7894 lt!480530)))))

(declare-fun prepend!387 (BalanceConc!9810 Token!4770) BalanceConc!9810)

(assert (=> b!1421549 (= (list!5797 (_1!7894 lt!480530)) (list!5797 (prepend!387 (seqFromList!1678 (t!124510 (t!124510 lt!480295))) (h!20042 (t!124510 lt!480295)))))))

(declare-fun lt!480531 () Unit!21889)

(assert (=> b!1421549 (= lt!480531 lt!480536)))

(declare-datatypes ((tuple2!14018 0))(
  ( (tuple2!14019 (_1!7895 Token!4770) (_2!7895 List!14705)) )
))
(declare-datatypes ((Option!2811 0))(
  ( (None!2810) (Some!2810 (v!22225 tuple2!14018)) )
))
(declare-fun lt!480529 () Option!2811)

(declare-fun maxPrefix!1165 (LexerInterface!2222 List!14708 List!14705) Option!2811)

(assert (=> b!1421549 (= lt!480529 (maxPrefix!1165 Lexer!2220 (rules!11177 thiss!10022) (list!5796 lt!480518)))))

(declare-fun singletonSeq!1175 (Token!4770) BalanceConc!9810)

(assert (=> b!1421549 (= (print!1003 Lexer!2220 (singletonSeq!1175 (h!20042 lt!480295))) (printTailRec!654 Lexer!2220 (singletonSeq!1175 (h!20042 lt!480295)) 0 (BalanceConc!9809 Empty!4934)))))

(declare-fun lt!480516 () Unit!21889)

(declare-fun Unit!21896 () Unit!21889)

(assert (=> b!1421549 (= lt!480516 Unit!21896)))

(declare-fun lt!480517 () Unit!21889)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!215 (LexerInterface!2222 List!14708 List!14705 List!14705) Unit!21889)

(assert (=> b!1421549 (= lt!480517 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!215 Lexer!2220 (rules!11177 thiss!10022) (list!5796 (charsOf!1487 (h!20042 lt!480295))) (list!5796 lt!480520)))))

(assert (=> b!1421549 (= (list!5796 (charsOf!1487 (h!20042 lt!480295))) (originalCharacters!3416 (h!20042 lt!480295)))))

(declare-fun lt!480526 () Unit!21889)

(declare-fun Unit!21897 () Unit!21889)

(assert (=> b!1421549 (= lt!480526 Unit!21897)))

(declare-fun singletonSeq!1176 (C!7914) BalanceConc!9808)

(declare-fun apply!3733 (BalanceConc!9808 Int) C!7914)

(declare-fun head!2789 (List!14705) C!7914)

(assert (=> b!1421549 (= (list!5796 (singletonSeq!1176 (apply!3733 (charsOf!1487 (h!20042 (t!124510 lt!480295))) 0))) (Cons!14639 (head!2789 (originalCharacters!3416 (h!20042 (t!124510 lt!480295)))) Nil!14639))))

(declare-fun lt!480537 () Unit!21889)

(declare-fun Unit!21898 () Unit!21889)

(assert (=> b!1421549 (= lt!480537 Unit!21898)))

(assert (=> b!1421549 (= (list!5796 (singletonSeq!1176 (apply!3733 (charsOf!1487 (h!20042 (t!124510 lt!480295))) 0))) (Cons!14639 (head!2789 (list!5796 lt!480520)) Nil!14639))))

(declare-fun lt!480524 () Unit!21889)

(declare-fun Unit!21899 () Unit!21889)

(assert (=> b!1421549 (= lt!480524 Unit!21899)))

(declare-fun head!2790 (BalanceConc!9808) C!7914)

(assert (=> b!1421549 (= (list!5796 (singletonSeq!1176 (apply!3733 (charsOf!1487 (h!20042 (t!124510 lt!480295))) 0))) (Cons!14639 (head!2790 lt!480520) Nil!14639))))

(declare-fun lt!480539 () Unit!21889)

(declare-fun Unit!21900 () Unit!21889)

(assert (=> b!1421549 (= lt!480539 Unit!21900)))

(declare-fun isDefined!2272 (Option!2811) Bool)

(assert (=> b!1421549 (isDefined!2272 (maxPrefix!1165 Lexer!2220 (rules!11177 thiss!10022) (originalCharacters!3416 (h!20042 lt!480295))))))

(declare-fun lt!480535 () Unit!21889)

(declare-fun Unit!21901 () Unit!21889)

(assert (=> b!1421549 (= lt!480535 Unit!21901)))

(assert (=> b!1421549 (isDefined!2272 (maxPrefix!1165 Lexer!2220 (rules!11177 thiss!10022) (list!5796 (charsOf!1487 (h!20042 lt!480295)))))))

(declare-fun lt!480538 () Unit!21889)

(declare-fun Unit!21902 () Unit!21889)

(assert (=> b!1421549 (= lt!480538 Unit!21902)))

(declare-fun lt!480514 () Unit!21889)

(declare-fun Unit!21903 () Unit!21889)

(assert (=> b!1421549 (= lt!480514 Unit!21903)))

(declare-fun get!4501 (Option!2811) tuple2!14018)

(assert (=> b!1421549 (= (_1!7895 (get!4501 (maxPrefix!1165 Lexer!2220 (rules!11177 thiss!10022) (list!5796 (charsOf!1487 (h!20042 lt!480295)))))) (h!20042 lt!480295))))

(declare-fun lt!480519 () Unit!21889)

(declare-fun Unit!21904 () Unit!21889)

(assert (=> b!1421549 (= lt!480519 Unit!21904)))

(assert (=> b!1421549 (isEmpty!9031 (_2!7895 (get!4501 (maxPrefix!1165 Lexer!2220 (rules!11177 thiss!10022) (list!5796 (charsOf!1487 (h!20042 lt!480295)))))))))

(declare-fun lt!480534 () Unit!21889)

(declare-fun Unit!21905 () Unit!21889)

(assert (=> b!1421549 (= lt!480534 Unit!21905)))

(declare-fun matchR!1801 (Regex!3868 List!14705) Bool)

(assert (=> b!1421549 (matchR!1801 (regex!2554 (rule!4317 (h!20042 lt!480295))) (list!5796 (charsOf!1487 (h!20042 lt!480295))))))

(declare-fun lt!480525 () Unit!21889)

(declare-fun Unit!21906 () Unit!21889)

(assert (=> b!1421549 (= lt!480525 Unit!21906)))

(assert (=> b!1421549 (= (rule!4317 (h!20042 lt!480295)) (rule!4317 (h!20042 lt!480295)))))

(declare-fun lt!480521 () Unit!21889)

(declare-fun Unit!21907 () Unit!21889)

(assert (=> b!1421549 (= lt!480521 Unit!21907)))

(declare-fun lt!480523 () Unit!21889)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!13 (LexerInterface!2222 List!14708 Token!4770 Rule!4908 List!14705) Unit!21889)

(assert (=> b!1421549 (= lt!480523 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!13 Lexer!2220 (rules!11177 thiss!10022) (h!20042 lt!480295) (rule!4317 (h!20042 lt!480295)) (list!5796 lt!480520)))))

(declare-fun b!1421550 () Bool)

(declare-fun isEmpty!9033 (BalanceConc!9808) Bool)

(assert (=> b!1421550 (= e!907405 (isEmpty!9033 (_2!7894 (lex!1016 Lexer!2220 (rules!11177 thiss!10022) (print!1003 Lexer!2220 (seqFromList!1678 lt!480295))))))))

(assert (= (and d!407185 c!233714) b!1421548))

(assert (= (and d!407185 (not c!233714)) b!1421549))

(assert (= (and d!407185 res!643614) b!1421550))

(declare-fun m!1612161 () Bool)

(assert (=> d!407185 m!1612161))

(declare-fun m!1612163 () Bool)

(assert (=> d!407185 m!1612163))

(assert (=> d!407185 m!1612163))

(declare-fun m!1612165 () Bool)

(assert (=> d!407185 m!1612165))

(declare-fun m!1612167 () Bool)

(assert (=> d!407185 m!1612167))

(assert (=> d!407185 m!1612165))

(declare-fun m!1612169 () Bool)

(assert (=> d!407185 m!1612169))

(declare-fun m!1612171 () Bool)

(assert (=> b!1421549 m!1612171))

(declare-fun m!1612173 () Bool)

(assert (=> b!1421549 m!1612173))

(declare-fun m!1612175 () Bool)

(assert (=> b!1421549 m!1612175))

(declare-fun m!1612177 () Bool)

(assert (=> b!1421549 m!1612177))

(declare-fun m!1612179 () Bool)

(assert (=> b!1421549 m!1612179))

(declare-fun m!1612181 () Bool)

(assert (=> b!1421549 m!1612181))

(assert (=> b!1421549 m!1612163))

(assert (=> b!1421549 m!1612165))

(declare-fun m!1612183 () Bool)

(assert (=> b!1421549 m!1612183))

(declare-fun m!1612185 () Bool)

(assert (=> b!1421549 m!1612185))

(declare-fun m!1612187 () Bool)

(assert (=> b!1421549 m!1612187))

(declare-fun m!1612189 () Bool)

(assert (=> b!1421549 m!1612189))

(assert (=> b!1421549 m!1612005))

(declare-fun m!1612191 () Bool)

(assert (=> b!1421549 m!1612191))

(declare-fun m!1612193 () Bool)

(assert (=> b!1421549 m!1612193))

(assert (=> b!1421549 m!1612005))

(assert (=> b!1421549 m!1612187))

(declare-fun m!1612195 () Bool)

(assert (=> b!1421549 m!1612195))

(declare-fun m!1612197 () Bool)

(assert (=> b!1421549 m!1612197))

(assert (=> b!1421549 m!1612193))

(declare-fun m!1612199 () Bool)

(assert (=> b!1421549 m!1612199))

(declare-fun m!1612201 () Bool)

(assert (=> b!1421549 m!1612201))

(declare-fun m!1612203 () Bool)

(assert (=> b!1421549 m!1612203))

(declare-fun m!1612205 () Bool)

(assert (=> b!1421549 m!1612205))

(assert (=> b!1421549 m!1612163))

(assert (=> b!1421549 m!1612205))

(declare-fun m!1612207 () Bool)

(assert (=> b!1421549 m!1612207))

(declare-fun m!1612209 () Bool)

(assert (=> b!1421549 m!1612209))

(assert (=> b!1421549 m!1612005))

(declare-fun m!1612211 () Bool)

(assert (=> b!1421549 m!1612211))

(assert (=> b!1421549 m!1612003))

(assert (=> b!1421549 m!1612177))

(declare-fun m!1612213 () Bool)

(assert (=> b!1421549 m!1612213))

(declare-fun m!1612215 () Bool)

(assert (=> b!1421549 m!1612215))

(declare-fun m!1612217 () Bool)

(assert (=> b!1421549 m!1612217))

(assert (=> b!1421549 m!1612187))

(declare-fun m!1612219 () Bool)

(assert (=> b!1421549 m!1612219))

(assert (=> b!1421549 m!1612203))

(declare-fun m!1612221 () Bool)

(assert (=> b!1421549 m!1612221))

(declare-fun m!1612223 () Bool)

(assert (=> b!1421549 m!1612223))

(assert (=> b!1421549 m!1612211))

(declare-fun m!1612225 () Bool)

(assert (=> b!1421549 m!1612225))

(assert (=> b!1421549 m!1612187))

(declare-fun m!1612227 () Bool)

(assert (=> b!1421549 m!1612227))

(assert (=> b!1421549 m!1612215))

(declare-fun m!1612229 () Bool)

(assert (=> b!1421549 m!1612229))

(assert (=> b!1421549 m!1612209))

(declare-fun m!1612231 () Bool)

(assert (=> b!1421549 m!1612231))

(declare-fun m!1612233 () Bool)

(assert (=> b!1421549 m!1612233))

(assert (=> b!1421549 m!1612221))

(assert (=> b!1421549 m!1612003))

(assert (=> b!1421549 m!1612005))

(assert (=> b!1421549 m!1612175))

(assert (=> b!1421549 m!1612233))

(assert (=> b!1421549 m!1612183))

(assert (=> b!1421549 m!1612177))

(declare-fun m!1612235 () Bool)

(assert (=> b!1421549 m!1612235))

(assert (=> b!1421549 m!1612211))

(declare-fun m!1612237 () Bool)

(assert (=> b!1421549 m!1612237))

(assert (=> b!1421550 m!1612163))

(assert (=> b!1421550 m!1612163))

(assert (=> b!1421550 m!1612165))

(assert (=> b!1421550 m!1612165))

(assert (=> b!1421550 m!1612169))

(declare-fun m!1612239 () Bool)

(assert (=> b!1421550 m!1612239))

(assert (=> b!1421427 d!407185))

(declare-fun d!407197 () Bool)

(declare-fun lt!480542 () BalanceConc!9808)

(assert (=> d!407197 (= (list!5796 lt!480542) (printList!676 Lexer!2220 (list!5797 (tokens!1869 thiss!10022))))))

(assert (=> d!407197 (= lt!480542 (printTailRec!654 Lexer!2220 (tokens!1869 thiss!10022) 0 (BalanceConc!9809 Empty!4934)))))

(assert (=> d!407197 (= (print!1003 Lexer!2220 (tokens!1869 thiss!10022)) lt!480542)))

(declare-fun bs!339807 () Bool)

(assert (= bs!339807 d!407197))

(declare-fun m!1612241 () Bool)

(assert (=> bs!339807 m!1612241))

(assert (=> bs!339807 m!1611845))

(assert (=> bs!339807 m!1611845))

(declare-fun m!1612243 () Bool)

(assert (=> bs!339807 m!1612243))

(declare-fun m!1612245 () Bool)

(assert (=> bs!339807 m!1612245))

(assert (=> b!1421427 d!407197))

(declare-fun d!407199 () Bool)

(declare-fun e!907406 () Bool)

(assert (=> d!407199 e!907406))

(declare-fun res!643615 () Bool)

(assert (=> d!407199 (=> (not res!643615) (not e!907406))))

(declare-fun lt!480543 () BalanceConc!9808)

(assert (=> d!407199 (= res!643615 (= (list!5797 (_1!7894 (lex!1016 Lexer!2220 (rules!11177 thiss!10022) lt!480543))) (list!5797 (tokens!1869 thiss!10022))))))

(assert (=> d!407199 (= lt!480543 (print!1003 Lexer!2220 (tokens!1869 thiss!10022)))))

(declare-fun lt!480544 () Unit!21889)

(assert (=> d!407199 (= lt!480544 (theoremInvertabilityWhenTokenListSeparable!44 Lexer!2220 (rules!11177 thiss!10022) (list!5797 (tokens!1869 thiss!10022))))))

(assert (=> d!407199 (= (print!1004 thiss!10022) lt!480543)))

(declare-fun b!1421551 () Bool)

(assert (=> b!1421551 (= e!907406 (isEmpty!9031 (list!5796 (_2!7894 (lex!1016 Lexer!2220 (rules!11177 thiss!10022) lt!480543)))))))

(assert (= (and d!407199 res!643615) b!1421551))

(assert (=> d!407199 m!1611845))

(assert (=> d!407199 m!1611843))

(assert (=> d!407199 m!1611845))

(declare-fun m!1612247 () Bool)

(assert (=> d!407199 m!1612247))

(declare-fun m!1612249 () Bool)

(assert (=> d!407199 m!1612249))

(declare-fun m!1612251 () Bool)

(assert (=> d!407199 m!1612251))

(assert (=> b!1421551 m!1612249))

(declare-fun m!1612253 () Bool)

(assert (=> b!1421551 m!1612253))

(assert (=> b!1421551 m!1612253))

(declare-fun m!1612255 () Bool)

(assert (=> b!1421551 m!1612255))

(assert (=> b!1421427 d!407199))

(declare-fun d!407201 () Bool)

(declare-fun lt!480545 () BalanceConc!9808)

(assert (=> d!407201 (= (list!5796 lt!480545) (printList!676 Lexer!2220 (list!5797 (tokens!1869 other!32))))))

(assert (=> d!407201 (= lt!480545 (printTailRec!654 Lexer!2220 (tokens!1869 other!32) 0 (BalanceConc!9809 Empty!4934)))))

(assert (=> d!407201 (= (print!1003 Lexer!2220 (tokens!1869 other!32)) lt!480545)))

(declare-fun bs!339808 () Bool)

(assert (= bs!339808 d!407201))

(declare-fun m!1612257 () Bool)

(assert (=> bs!339808 m!1612257))

(assert (=> bs!339808 m!1611863))

(assert (=> bs!339808 m!1611863))

(declare-fun m!1612259 () Bool)

(assert (=> bs!339808 m!1612259))

(assert (=> bs!339808 m!1611865))

(assert (=> b!1421427 d!407201))

(declare-fun d!407203 () Bool)

(declare-fun e!907408 () Bool)

(assert (=> d!407203 e!907408))

(declare-fun res!643616 () Bool)

(assert (=> d!407203 (=> (not res!643616) (not e!907408))))

(assert (=> d!407203 (= res!643616 (= (list!5797 (_1!7894 (lex!1016 Lexer!2220 (rules!11177 other!32) (print!1003 Lexer!2220 (seqFromList!1678 lt!480300))))) lt!480300))))

(declare-fun lt!480547 () Unit!21889)

(declare-fun e!907407 () Unit!21889)

(assert (=> d!407203 (= lt!480547 e!907407)))

(declare-fun c!233715 () Bool)

(assert (=> d!407203 (= c!233715 (or (is-Nil!14641 lt!480300) (is-Nil!14641 (t!124510 lt!480300))))))

(assert (=> d!407203 (not (isEmpty!9032 (rules!11177 other!32)))))

(assert (=> d!407203 (= (theoremInvertabilityWhenTokenListSeparable!44 Lexer!2220 (rules!11177 other!32) lt!480300) lt!480547)))

(declare-fun b!1421552 () Bool)

(declare-fun Unit!21908 () Unit!21889)

(assert (=> b!1421552 (= e!907407 Unit!21908)))

(declare-fun b!1421553 () Bool)

(declare-fun Unit!21909 () Unit!21889)

(assert (=> b!1421553 (= e!907407 Unit!21909)))

(declare-fun lt!480550 () BalanceConc!9808)

(assert (=> b!1421553 (= lt!480550 (print!1003 Lexer!2220 (seqFromList!1678 lt!480300)))))

(declare-fun lt!480552 () BalanceConc!9808)

(assert (=> b!1421553 (= lt!480552 (print!1003 Lexer!2220 (seqFromList!1678 (t!124510 lt!480300))))))

(declare-fun lt!480562 () tuple2!14016)

(assert (=> b!1421553 (= lt!480562 (lex!1016 Lexer!2220 (rules!11177 other!32) lt!480552))))

(declare-fun lt!480560 () List!14705)

(assert (=> b!1421553 (= lt!480560 (list!5796 (charsOf!1487 (h!20042 lt!480300))))))

(declare-fun lt!480564 () List!14705)

(assert (=> b!1421553 (= lt!480564 (list!5796 lt!480552))))

(declare-fun lt!480554 () Unit!21889)

(assert (=> b!1421553 (= lt!480554 (lemmaConcatTwoListThenFirstIsPrefix!742 lt!480560 lt!480564))))

(assert (=> b!1421553 (isPrefix!1175 lt!480560 (++!3864 lt!480560 lt!480564))))

(declare-fun lt!480565 () Unit!21889)

(assert (=> b!1421553 (= lt!480565 lt!480554)))

(declare-fun lt!480559 () Unit!21889)

(assert (=> b!1421553 (= lt!480559 (theoremInvertabilityWhenTokenListSeparable!44 Lexer!2220 (rules!11177 other!32) (t!124510 lt!480300)))))

(declare-fun lt!480568 () Unit!21889)

(assert (=> b!1421553 (= lt!480568 (seqFromListBHdTlConstructive!71 (h!20042 (t!124510 lt!480300)) (t!124510 (t!124510 lt!480300)) (_1!7894 lt!480562)))))

(assert (=> b!1421553 (= (list!5797 (_1!7894 lt!480562)) (list!5797 (prepend!387 (seqFromList!1678 (t!124510 (t!124510 lt!480300))) (h!20042 (t!124510 lt!480300)))))))

(declare-fun lt!480563 () Unit!21889)

(assert (=> b!1421553 (= lt!480563 lt!480568)))

(declare-fun lt!480561 () Option!2811)

(assert (=> b!1421553 (= lt!480561 (maxPrefix!1165 Lexer!2220 (rules!11177 other!32) (list!5796 lt!480550)))))

(assert (=> b!1421553 (= (print!1003 Lexer!2220 (singletonSeq!1175 (h!20042 lt!480300))) (printTailRec!654 Lexer!2220 (singletonSeq!1175 (h!20042 lt!480300)) 0 (BalanceConc!9809 Empty!4934)))))

(declare-fun lt!480548 () Unit!21889)

(declare-fun Unit!21910 () Unit!21889)

(assert (=> b!1421553 (= lt!480548 Unit!21910)))

(declare-fun lt!480549 () Unit!21889)

(assert (=> b!1421553 (= lt!480549 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!215 Lexer!2220 (rules!11177 other!32) (list!5796 (charsOf!1487 (h!20042 lt!480300))) (list!5796 lt!480552)))))

(assert (=> b!1421553 (= (list!5796 (charsOf!1487 (h!20042 lt!480300))) (originalCharacters!3416 (h!20042 lt!480300)))))

(declare-fun lt!480558 () Unit!21889)

(declare-fun Unit!21911 () Unit!21889)

(assert (=> b!1421553 (= lt!480558 Unit!21911)))

(assert (=> b!1421553 (= (list!5796 (singletonSeq!1176 (apply!3733 (charsOf!1487 (h!20042 (t!124510 lt!480300))) 0))) (Cons!14639 (head!2789 (originalCharacters!3416 (h!20042 (t!124510 lt!480300)))) Nil!14639))))

(declare-fun lt!480569 () Unit!21889)

(declare-fun Unit!21912 () Unit!21889)

(assert (=> b!1421553 (= lt!480569 Unit!21912)))

(assert (=> b!1421553 (= (list!5796 (singletonSeq!1176 (apply!3733 (charsOf!1487 (h!20042 (t!124510 lt!480300))) 0))) (Cons!14639 (head!2789 (list!5796 lt!480552)) Nil!14639))))

(declare-fun lt!480556 () Unit!21889)

(declare-fun Unit!21913 () Unit!21889)

(assert (=> b!1421553 (= lt!480556 Unit!21913)))

(assert (=> b!1421553 (= (list!5796 (singletonSeq!1176 (apply!3733 (charsOf!1487 (h!20042 (t!124510 lt!480300))) 0))) (Cons!14639 (head!2790 lt!480552) Nil!14639))))

(declare-fun lt!480571 () Unit!21889)

(declare-fun Unit!21914 () Unit!21889)

(assert (=> b!1421553 (= lt!480571 Unit!21914)))

(assert (=> b!1421553 (isDefined!2272 (maxPrefix!1165 Lexer!2220 (rules!11177 other!32) (originalCharacters!3416 (h!20042 lt!480300))))))

(declare-fun lt!480567 () Unit!21889)

(declare-fun Unit!21915 () Unit!21889)

(assert (=> b!1421553 (= lt!480567 Unit!21915)))

(assert (=> b!1421553 (isDefined!2272 (maxPrefix!1165 Lexer!2220 (rules!11177 other!32) (list!5796 (charsOf!1487 (h!20042 lt!480300)))))))

(declare-fun lt!480570 () Unit!21889)

(declare-fun Unit!21916 () Unit!21889)

(assert (=> b!1421553 (= lt!480570 Unit!21916)))

(declare-fun lt!480546 () Unit!21889)

(declare-fun Unit!21917 () Unit!21889)

(assert (=> b!1421553 (= lt!480546 Unit!21917)))

(assert (=> b!1421553 (= (_1!7895 (get!4501 (maxPrefix!1165 Lexer!2220 (rules!11177 other!32) (list!5796 (charsOf!1487 (h!20042 lt!480300)))))) (h!20042 lt!480300))))

(declare-fun lt!480551 () Unit!21889)

(declare-fun Unit!21918 () Unit!21889)

(assert (=> b!1421553 (= lt!480551 Unit!21918)))

(assert (=> b!1421553 (isEmpty!9031 (_2!7895 (get!4501 (maxPrefix!1165 Lexer!2220 (rules!11177 other!32) (list!5796 (charsOf!1487 (h!20042 lt!480300)))))))))

(declare-fun lt!480566 () Unit!21889)

(declare-fun Unit!21919 () Unit!21889)

(assert (=> b!1421553 (= lt!480566 Unit!21919)))

(assert (=> b!1421553 (matchR!1801 (regex!2554 (rule!4317 (h!20042 lt!480300))) (list!5796 (charsOf!1487 (h!20042 lt!480300))))))

(declare-fun lt!480557 () Unit!21889)

(declare-fun Unit!21920 () Unit!21889)

(assert (=> b!1421553 (= lt!480557 Unit!21920)))

(assert (=> b!1421553 (= (rule!4317 (h!20042 lt!480300)) (rule!4317 (h!20042 lt!480300)))))

(declare-fun lt!480553 () Unit!21889)

(declare-fun Unit!21921 () Unit!21889)

(assert (=> b!1421553 (= lt!480553 Unit!21921)))

(declare-fun lt!480555 () Unit!21889)

(assert (=> b!1421553 (= lt!480555 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!13 Lexer!2220 (rules!11177 other!32) (h!20042 lt!480300) (rule!4317 (h!20042 lt!480300)) (list!5796 lt!480552)))))

(declare-fun b!1421554 () Bool)

(assert (=> b!1421554 (= e!907408 (isEmpty!9033 (_2!7894 (lex!1016 Lexer!2220 (rules!11177 other!32) (print!1003 Lexer!2220 (seqFromList!1678 lt!480300))))))))

(assert (= (and d!407203 c!233715) b!1421552))

(assert (= (and d!407203 (not c!233715)) b!1421553))

(assert (= (and d!407203 res!643616) b!1421554))

(declare-fun m!1612261 () Bool)

(assert (=> d!407203 m!1612261))

(declare-fun m!1612263 () Bool)

(assert (=> d!407203 m!1612263))

(assert (=> d!407203 m!1612263))

(declare-fun m!1612265 () Bool)

(assert (=> d!407203 m!1612265))

(declare-fun m!1612267 () Bool)

(assert (=> d!407203 m!1612267))

(assert (=> d!407203 m!1612265))

(declare-fun m!1612269 () Bool)

(assert (=> d!407203 m!1612269))

(declare-fun m!1612271 () Bool)

(assert (=> b!1421553 m!1612271))

(declare-fun m!1612273 () Bool)

(assert (=> b!1421553 m!1612273))

(declare-fun m!1612275 () Bool)

(assert (=> b!1421553 m!1612275))

(declare-fun m!1612277 () Bool)

(assert (=> b!1421553 m!1612277))

(declare-fun m!1612279 () Bool)

(assert (=> b!1421553 m!1612279))

(declare-fun m!1612281 () Bool)

(assert (=> b!1421553 m!1612281))

(assert (=> b!1421553 m!1612263))

(assert (=> b!1421553 m!1612265))

(declare-fun m!1612283 () Bool)

(assert (=> b!1421553 m!1612283))

(declare-fun m!1612285 () Bool)

(assert (=> b!1421553 m!1612285))

(declare-fun m!1612287 () Bool)

(assert (=> b!1421553 m!1612287))

(declare-fun m!1612289 () Bool)

(assert (=> b!1421553 m!1612289))

(assert (=> b!1421553 m!1611825))

(declare-fun m!1612291 () Bool)

(assert (=> b!1421553 m!1612291))

(declare-fun m!1612293 () Bool)

(assert (=> b!1421553 m!1612293))

(assert (=> b!1421553 m!1611825))

(assert (=> b!1421553 m!1612287))

(declare-fun m!1612295 () Bool)

(assert (=> b!1421553 m!1612295))

(declare-fun m!1612297 () Bool)

(assert (=> b!1421553 m!1612297))

(assert (=> b!1421553 m!1612293))

(declare-fun m!1612299 () Bool)

(assert (=> b!1421553 m!1612299))

(declare-fun m!1612301 () Bool)

(assert (=> b!1421553 m!1612301))

(declare-fun m!1612303 () Bool)

(assert (=> b!1421553 m!1612303))

(declare-fun m!1612305 () Bool)

(assert (=> b!1421553 m!1612305))

(assert (=> b!1421553 m!1612263))

(assert (=> b!1421553 m!1612305))

(declare-fun m!1612307 () Bool)

(assert (=> b!1421553 m!1612307))

(declare-fun m!1612309 () Bool)

(assert (=> b!1421553 m!1612309))

(assert (=> b!1421553 m!1611825))

(declare-fun m!1612311 () Bool)

(assert (=> b!1421553 m!1612311))

(assert (=> b!1421553 m!1611823))

(assert (=> b!1421553 m!1612277))

(declare-fun m!1612313 () Bool)

(assert (=> b!1421553 m!1612313))

(declare-fun m!1612315 () Bool)

(assert (=> b!1421553 m!1612315))

(declare-fun m!1612317 () Bool)

(assert (=> b!1421553 m!1612317))

(assert (=> b!1421553 m!1612287))

(declare-fun m!1612319 () Bool)

(assert (=> b!1421553 m!1612319))

(assert (=> b!1421553 m!1612303))

(declare-fun m!1612321 () Bool)

(assert (=> b!1421553 m!1612321))

(declare-fun m!1612323 () Bool)

(assert (=> b!1421553 m!1612323))

(assert (=> b!1421553 m!1612311))

(declare-fun m!1612325 () Bool)

(assert (=> b!1421553 m!1612325))

(assert (=> b!1421553 m!1612287))

(declare-fun m!1612327 () Bool)

(assert (=> b!1421553 m!1612327))

(assert (=> b!1421553 m!1612315))

(declare-fun m!1612329 () Bool)

(assert (=> b!1421553 m!1612329))

(assert (=> b!1421553 m!1612309))

(declare-fun m!1612331 () Bool)

(assert (=> b!1421553 m!1612331))

(declare-fun m!1612333 () Bool)

(assert (=> b!1421553 m!1612333))

(assert (=> b!1421553 m!1612321))

(assert (=> b!1421553 m!1611823))

(assert (=> b!1421553 m!1611825))

(assert (=> b!1421553 m!1612275))

(assert (=> b!1421553 m!1612333))

(assert (=> b!1421553 m!1612283))

(assert (=> b!1421553 m!1612277))

(declare-fun m!1612335 () Bool)

(assert (=> b!1421553 m!1612335))

(assert (=> b!1421553 m!1612311))

(declare-fun m!1612337 () Bool)

(assert (=> b!1421553 m!1612337))

(assert (=> b!1421554 m!1612263))

(assert (=> b!1421554 m!1612263))

(assert (=> b!1421554 m!1612265))

(assert (=> b!1421554 m!1612265))

(assert (=> b!1421554 m!1612269))

(declare-fun m!1612339 () Bool)

(assert (=> b!1421554 m!1612339))

(assert (=> b!1421427 d!407203))

(declare-fun d!407205 () Bool)

(assert (=> d!407205 (= (isEmpty!9028 lt!480297) (not (is-Some!2808 lt!480297)))))

(assert (=> b!1421428 d!407205))

(declare-fun b!1421555 () Bool)

(declare-fun e!907409 () List!14705)

(assert (=> b!1421555 (= e!907409 (printList!676 Lexer!2220 (t!124510 lt!480300)))))

(declare-fun b!1421557 () Bool)

(declare-fun res!643617 () Bool)

(declare-fun e!907410 () Bool)

(assert (=> b!1421557 (=> (not res!643617) (not e!907410))))

(declare-fun lt!480572 () List!14705)

(assert (=> b!1421557 (= res!643617 (= (size!12066 lt!480572) (+ (size!12066 (list!5796 (charsOf!1487 (h!20042 lt!480300)))) (size!12066 (printList!676 Lexer!2220 (t!124510 lt!480300))))))))

(declare-fun b!1421558 () Bool)

(assert (=> b!1421558 (= e!907410 (or (not (= (printList!676 Lexer!2220 (t!124510 lt!480300)) Nil!14639)) (= lt!480572 (list!5796 (charsOf!1487 (h!20042 lt!480300))))))))

(declare-fun b!1421556 () Bool)

(assert (=> b!1421556 (= e!907409 (Cons!14639 (h!20040 (list!5796 (charsOf!1487 (h!20042 lt!480300)))) (++!3864 (t!124508 (list!5796 (charsOf!1487 (h!20042 lt!480300)))) (printList!676 Lexer!2220 (t!124510 lt!480300)))))))

(declare-fun d!407207 () Bool)

(assert (=> d!407207 e!907410))

(declare-fun res!643618 () Bool)

(assert (=> d!407207 (=> (not res!643618) (not e!907410))))

(assert (=> d!407207 (= res!643618 (= (content!2157 lt!480572) (set.union (content!2157 (list!5796 (charsOf!1487 (h!20042 lt!480300)))) (content!2157 (printList!676 Lexer!2220 (t!124510 lt!480300))))))))

(assert (=> d!407207 (= lt!480572 e!907409)))

(declare-fun c!233716 () Bool)

(assert (=> d!407207 (= c!233716 (is-Nil!14639 (list!5796 (charsOf!1487 (h!20042 lt!480300)))))))

(assert (=> d!407207 (= (++!3864 (list!5796 (charsOf!1487 (h!20042 lt!480300))) (printList!676 Lexer!2220 (t!124510 lt!480300))) lt!480572)))

(assert (= (and d!407207 c!233716) b!1421555))

(assert (= (and d!407207 (not c!233716)) b!1421556))

(assert (= (and d!407207 res!643618) b!1421557))

(assert (= (and b!1421557 res!643617) b!1421558))

(declare-fun m!1612341 () Bool)

(assert (=> b!1421557 m!1612341))

(assert (=> b!1421557 m!1611825))

(declare-fun m!1612343 () Bool)

(assert (=> b!1421557 m!1612343))

(assert (=> b!1421557 m!1611827))

(declare-fun m!1612345 () Bool)

(assert (=> b!1421557 m!1612345))

(assert (=> b!1421556 m!1611827))

(declare-fun m!1612347 () Bool)

(assert (=> b!1421556 m!1612347))

(declare-fun m!1612349 () Bool)

(assert (=> d!407207 m!1612349))

(assert (=> d!407207 m!1611825))

(declare-fun m!1612351 () Bool)

(assert (=> d!407207 m!1612351))

(assert (=> d!407207 m!1611827))

(declare-fun m!1612353 () Bool)

(assert (=> d!407207 m!1612353))

(assert (=> b!1421425 d!407207))

(declare-fun d!407209 () Bool)

(declare-fun list!5801 (Conc!4934) List!14705)

(assert (=> d!407209 (= (list!5796 (charsOf!1487 (h!20042 lt!480300))) (list!5801 (c!233679 (charsOf!1487 (h!20042 lt!480300)))))))

(declare-fun bs!339809 () Bool)

(assert (= bs!339809 d!407209))

(declare-fun m!1612355 () Bool)

(assert (=> bs!339809 m!1612355))

(assert (=> b!1421425 d!407209))

(declare-fun d!407211 () Bool)

(declare-fun lt!480575 () BalanceConc!9808)

(assert (=> d!407211 (= (list!5796 lt!480575) (originalCharacters!3416 (h!20042 lt!480300)))))

(declare-fun dynLambda!6731 (Int TokenValue!2644) BalanceConc!9808)

(assert (=> d!407211 (= lt!480575 (dynLambda!6731 (toChars!3712 (transformation!2554 (rule!4317 (h!20042 lt!480300)))) (value!82438 (h!20042 lt!480300))))))

(assert (=> d!407211 (= (charsOf!1487 (h!20042 lt!480300)) lt!480575)))

(declare-fun b_lambda!44631 () Bool)

(assert (=> (not b_lambda!44631) (not d!407211)))

(declare-fun bs!339810 () Bool)

(assert (= bs!339810 d!407211))

(declare-fun m!1612357 () Bool)

(assert (=> bs!339810 m!1612357))

(declare-fun m!1612359 () Bool)

(assert (=> bs!339810 m!1612359))

(assert (=> b!1421425 d!407211))

(declare-fun d!407213 () Bool)

(declare-fun c!233717 () Bool)

(assert (=> d!407213 (= c!233717 (is-Cons!14641 (t!124510 lt!480300)))))

(declare-fun e!907411 () List!14705)

(assert (=> d!407213 (= (printList!676 Lexer!2220 (t!124510 lt!480300)) e!907411)))

(declare-fun b!1421559 () Bool)

(assert (=> b!1421559 (= e!907411 (++!3864 (list!5796 (charsOf!1487 (h!20042 (t!124510 lt!480300)))) (printList!676 Lexer!2220 (t!124510 (t!124510 lt!480300)))))))

(declare-fun b!1421560 () Bool)

(assert (=> b!1421560 (= e!907411 Nil!14639)))

(assert (= (and d!407213 c!233717) b!1421559))

(assert (= (and d!407213 (not c!233717)) b!1421560))

(assert (=> b!1421559 m!1612275))

(assert (=> b!1421559 m!1612275))

(declare-fun m!1612361 () Bool)

(assert (=> b!1421559 m!1612361))

(declare-fun m!1612363 () Bool)

(assert (=> b!1421559 m!1612363))

(assert (=> b!1421559 m!1612361))

(assert (=> b!1421559 m!1612363))

(declare-fun m!1612365 () Bool)

(assert (=> b!1421559 m!1612365))

(assert (=> b!1421425 d!407213))

(declare-fun d!407215 () Bool)

(declare-fun c!233720 () Bool)

(assert (=> d!407215 (= c!233720 (is-Node!4935 (c!233681 (tokens!1869 other!32))))))

(declare-fun e!907416 () Bool)

(assert (=> d!407215 (= (inv!19380 (c!233681 (tokens!1869 other!32))) e!907416)))

(declare-fun b!1421567 () Bool)

(declare-fun inv!19386 (Conc!4935) Bool)

(assert (=> b!1421567 (= e!907416 (inv!19386 (c!233681 (tokens!1869 other!32))))))

(declare-fun b!1421568 () Bool)

(declare-fun e!907417 () Bool)

(assert (=> b!1421568 (= e!907416 e!907417)))

(declare-fun res!643621 () Bool)

(assert (=> b!1421568 (= res!643621 (not (is-Leaf!7414 (c!233681 (tokens!1869 other!32)))))))

(assert (=> b!1421568 (=> res!643621 e!907417)))

(declare-fun b!1421569 () Bool)

(declare-fun inv!19387 (Conc!4935) Bool)

(assert (=> b!1421569 (= e!907417 (inv!19387 (c!233681 (tokens!1869 other!32))))))

(assert (= (and d!407215 c!233720) b!1421567))

(assert (= (and d!407215 (not c!233720)) b!1421568))

(assert (= (and b!1421568 (not res!643621)) b!1421569))

(declare-fun m!1612367 () Bool)

(assert (=> b!1421567 m!1612367))

(declare-fun m!1612369 () Bool)

(assert (=> b!1421569 m!1612369))

(assert (=> b!1421421 d!407215))

(declare-fun d!407217 () Bool)

(declare-fun res!643648 () Bool)

(declare-fun e!907445 () Bool)

(assert (=> d!407217 (=> (not res!643648) (not e!907445))))

(assert (=> d!407217 (= res!643648 (not (isEmpty!9032 (rules!11177 thiss!10022))))))

(assert (=> d!407217 (= (inv!19381 thiss!10022) e!907445)))

(declare-fun b!1421618 () Bool)

(declare-fun res!643649 () Bool)

(assert (=> b!1421618 (=> (not res!643649) (not e!907445))))

(declare-fun rulesInvariant!2084 (LexerInterface!2222 List!14708) Bool)

(assert (=> b!1421618 (= res!643649 (rulesInvariant!2084 Lexer!2220 (rules!11177 thiss!10022)))))

(declare-fun b!1421619 () Bool)

(declare-fun res!643650 () Bool)

(assert (=> b!1421619 (=> (not res!643650) (not e!907445))))

(declare-fun rulesProduceEachTokenIndividually!811 (LexerInterface!2222 List!14708 BalanceConc!9810) Bool)

(assert (=> b!1421619 (= res!643650 (rulesProduceEachTokenIndividually!811 Lexer!2220 (rules!11177 thiss!10022) (tokens!1869 thiss!10022)))))

(declare-fun b!1421620 () Bool)

(declare-fun separableTokens!196 (LexerInterface!2222 BalanceConc!9810 List!14708) Bool)

(assert (=> b!1421620 (= e!907445 (separableTokens!196 Lexer!2220 (tokens!1869 thiss!10022) (rules!11177 thiss!10022)))))

(assert (= (and d!407217 res!643648) b!1421618))

(assert (= (and b!1421618 res!643649) b!1421619))

(assert (= (and b!1421619 res!643650) b!1421620))

(assert (=> d!407217 m!1612167))

(declare-fun m!1612519 () Bool)

(assert (=> b!1421618 m!1612519))

(declare-fun m!1612521 () Bool)

(assert (=> b!1421619 m!1612521))

(declare-fun m!1612523 () Bool)

(assert (=> b!1421620 m!1612523))

(assert (=> start!130958 d!407217))

(declare-fun d!407239 () Bool)

(declare-fun res!643651 () Bool)

(declare-fun e!907446 () Bool)

(assert (=> d!407239 (=> (not res!643651) (not e!907446))))

(assert (=> d!407239 (= res!643651 (not (isEmpty!9032 (rules!11177 other!32))))))

(assert (=> d!407239 (= (inv!19381 other!32) e!907446)))

(declare-fun b!1421621 () Bool)

(declare-fun res!643652 () Bool)

(assert (=> b!1421621 (=> (not res!643652) (not e!907446))))

(assert (=> b!1421621 (= res!643652 (rulesInvariant!2084 Lexer!2220 (rules!11177 other!32)))))

(declare-fun b!1421622 () Bool)

(declare-fun res!643653 () Bool)

(assert (=> b!1421622 (=> (not res!643653) (not e!907446))))

(assert (=> b!1421622 (= res!643653 (rulesProduceEachTokenIndividually!811 Lexer!2220 (rules!11177 other!32) (tokens!1869 other!32)))))

(declare-fun b!1421623 () Bool)

(assert (=> b!1421623 (= e!907446 (separableTokens!196 Lexer!2220 (tokens!1869 other!32) (rules!11177 other!32)))))

(assert (= (and d!407239 res!643651) b!1421621))

(assert (= (and b!1421621 res!643652) b!1421622))

(assert (= (and b!1421622 res!643653) b!1421623))

(assert (=> d!407239 m!1612267))

(declare-fun m!1612525 () Bool)

(assert (=> b!1421621 m!1612525))

(declare-fun m!1612527 () Bool)

(assert (=> b!1421622 m!1612527))

(declare-fun m!1612529 () Bool)

(assert (=> b!1421623 m!1612529))

(assert (=> start!130958 d!407239))

(declare-fun d!407241 () Bool)

(declare-fun c!233732 () Bool)

(assert (=> d!407241 (= c!233732 (is-Node!4935 (c!233681 (tokens!1869 thiss!10022))))))

(declare-fun e!907447 () Bool)

(assert (=> d!407241 (= (inv!19380 (c!233681 (tokens!1869 thiss!10022))) e!907447)))

(declare-fun b!1421624 () Bool)

(assert (=> b!1421624 (= e!907447 (inv!19386 (c!233681 (tokens!1869 thiss!10022))))))

(declare-fun b!1421625 () Bool)

(declare-fun e!907448 () Bool)

(assert (=> b!1421625 (= e!907447 e!907448)))

(declare-fun res!643654 () Bool)

(assert (=> b!1421625 (= res!643654 (not (is-Leaf!7414 (c!233681 (tokens!1869 thiss!10022)))))))

(assert (=> b!1421625 (=> res!643654 e!907448)))

(declare-fun b!1421626 () Bool)

(assert (=> b!1421626 (= e!907448 (inv!19387 (c!233681 (tokens!1869 thiss!10022))))))

(assert (= (and d!407241 c!233732) b!1421624))

(assert (= (and d!407241 (not c!233732)) b!1421625))

(assert (= (and b!1421625 (not res!643654)) b!1421626))

(declare-fun m!1612531 () Bool)

(assert (=> b!1421624 m!1612531))

(declare-fun m!1612533 () Bool)

(assert (=> b!1421626 m!1612533))

(assert (=> b!1421432 d!407241))

(declare-fun d!407243 () Bool)

(assert (=> d!407243 (= (inv!19382 (tokens!1869 other!32)) (isBalanced!1469 (c!233681 (tokens!1869 other!32))))))

(declare-fun bs!339814 () Bool)

(assert (= bs!339814 d!407243))

(declare-fun m!1612535 () Bool)

(assert (=> bs!339814 m!1612535))

(assert (=> b!1421422 d!407243))

(declare-fun d!407245 () Bool)

(declare-fun lt!480622 () Bool)

(declare-fun isEmpty!9037 (List!14707) Bool)

(assert (=> d!407245 (= lt!480622 (isEmpty!9037 (list!5797 (tokens!1869 other!32))))))

(declare-fun isEmpty!9038 (Conc!4935) Bool)

(assert (=> d!407245 (= lt!480622 (isEmpty!9038 (c!233681 (tokens!1869 other!32))))))

(assert (=> d!407245 (= (isEmpty!9027 (tokens!1869 other!32)) lt!480622)))

(declare-fun bs!339815 () Bool)

(assert (= bs!339815 d!407245))

(assert (=> bs!339815 m!1611863))

(assert (=> bs!339815 m!1611863))

(declare-fun m!1612537 () Bool)

(assert (=> bs!339815 m!1612537))

(declare-fun m!1612539 () Bool)

(assert (=> bs!339815 m!1612539))

(assert (=> b!1421423 d!407245))

(declare-fun d!407247 () Bool)

(declare-fun e!907457 () Bool)

(assert (=> d!407247 e!907457))

(declare-fun res!643672 () Bool)

(assert (=> d!407247 (=> (not res!643672) (not e!907457))))

(assert (=> d!407247 (= res!643672 (rulesInvariant!2084 Lexer!2220 (rules!11177 thiss!10022)))))

(declare-fun Unit!21936 () Unit!21889)

(assert (=> d!407247 (= (lemmaInvariant!250 thiss!10022) Unit!21936)))

(declare-fun b!1421646 () Bool)

(declare-fun res!643673 () Bool)

(assert (=> b!1421646 (=> (not res!643673) (not e!907457))))

(assert (=> b!1421646 (= res!643673 (rulesProduceEachTokenIndividually!811 Lexer!2220 (rules!11177 thiss!10022) (tokens!1869 thiss!10022)))))

(declare-fun b!1421647 () Bool)

(assert (=> b!1421647 (= e!907457 (separableTokens!196 Lexer!2220 (tokens!1869 thiss!10022) (rules!11177 thiss!10022)))))

(assert (= (and d!407247 res!643672) b!1421646))

(assert (= (and b!1421646 res!643673) b!1421647))

(assert (=> d!407247 m!1612519))

(assert (=> b!1421646 m!1612521))

(assert (=> b!1421647 m!1612523))

(assert (=> b!1421423 d!407247))

(declare-fun d!407257 () Bool)

(declare-fun e!907458 () Bool)

(assert (=> d!407257 e!907458))

(declare-fun res!643674 () Bool)

(assert (=> d!407257 (=> (not res!643674) (not e!907458))))

(assert (=> d!407257 (= res!643674 (rulesInvariant!2084 Lexer!2220 (rules!11177 other!32)))))

(declare-fun Unit!21937 () Unit!21889)

(assert (=> d!407257 (= (lemmaInvariant!250 other!32) Unit!21937)))

(declare-fun b!1421648 () Bool)

(declare-fun res!643675 () Bool)

(assert (=> b!1421648 (=> (not res!643675) (not e!907458))))

(assert (=> b!1421648 (= res!643675 (rulesProduceEachTokenIndividually!811 Lexer!2220 (rules!11177 other!32) (tokens!1869 other!32)))))

(declare-fun b!1421649 () Bool)

(assert (=> b!1421649 (= e!907458 (separableTokens!196 Lexer!2220 (tokens!1869 other!32) (rules!11177 other!32)))))

(assert (= (and d!407257 res!643674) b!1421648))

(assert (= (and b!1421648 res!643675) b!1421649))

(assert (=> d!407257 m!1612525))

(assert (=> b!1421648 m!1612527))

(assert (=> b!1421649 m!1612529))

(assert (=> b!1421423 d!407257))

(declare-fun b!1421660 () Bool)

(declare-fun b_free!35031 () Bool)

(declare-fun b_next!35735 () Bool)

(assert (=> b!1421660 (= b_free!35031 (not b_next!35735))))

(declare-fun tp!402977 () Bool)

(declare-fun b_and!95047 () Bool)

(assert (=> b!1421660 (= tp!402977 b_and!95047)))

(declare-fun b_free!35033 () Bool)

(declare-fun b_next!35737 () Bool)

(assert (=> b!1421660 (= b_free!35033 (not b_next!35737))))

(declare-fun t!124517 () Bool)

(declare-fun tb!73601 () Bool)

(assert (=> (and b!1421660 (= (toChars!3712 (transformation!2554 (h!20043 (rules!11177 thiss!10022)))) (toChars!3712 (transformation!2554 (rule!4317 (h!20042 lt!480300))))) t!124517) tb!73601))

(declare-fun b!1421665 () Bool)

(declare-fun e!907473 () Bool)

(declare-fun tp!402983 () Bool)

(declare-fun inv!19388 (Conc!4934) Bool)

(assert (=> b!1421665 (= e!907473 (and (inv!19388 (c!233679 (dynLambda!6731 (toChars!3712 (transformation!2554 (rule!4317 (h!20042 lt!480300)))) (value!82438 (h!20042 lt!480300))))) tp!402983))))

(declare-fun result!89740 () Bool)

(declare-fun inv!19389 (BalanceConc!9808) Bool)

(assert (=> tb!73601 (= result!89740 (and (inv!19389 (dynLambda!6731 (toChars!3712 (transformation!2554 (rule!4317 (h!20042 lt!480300)))) (value!82438 (h!20042 lt!480300)))) e!907473))))

(assert (= tb!73601 b!1421665))

(declare-fun m!1612561 () Bool)

(assert (=> b!1421665 m!1612561))

(declare-fun m!1612563 () Bool)

(assert (=> tb!73601 m!1612563))

(assert (=> d!407211 t!124517))

(declare-fun b_and!95049 () Bool)

(declare-fun tp!402978 () Bool)

(assert (=> b!1421660 (= tp!402978 (and (=> t!124517 result!89740) b_and!95049))))

(declare-fun e!907467 () Bool)

(assert (=> b!1421660 (= e!907467 (and tp!402977 tp!402978))))

(declare-fun tp!402979 () Bool)

(declare-fun e!907470 () Bool)

(declare-fun b!1421659 () Bool)

(declare-fun inv!19377 (String!17478) Bool)

(declare-fun inv!19390 (TokenValueInjection!4948) Bool)

(assert (=> b!1421659 (= e!907470 (and tp!402979 (inv!19377 (tag!2816 (h!20043 (rules!11177 thiss!10022)))) (inv!19390 (transformation!2554 (h!20043 (rules!11177 thiss!10022)))) e!907467))))

(declare-fun b!1421658 () Bool)

(declare-fun e!907468 () Bool)

(declare-fun tp!402980 () Bool)

(assert (=> b!1421658 (= e!907468 (and e!907470 tp!402980))))

(assert (=> b!1421431 (= tp!402953 e!907468)))

(assert (= b!1421659 b!1421660))

(assert (= b!1421658 b!1421659))

(assert (= (and b!1421431 (is-Cons!14642 (rules!11177 thiss!10022))) b!1421658))

(declare-fun m!1612565 () Bool)

(assert (=> b!1421659 m!1612565))

(declare-fun m!1612567 () Bool)

(assert (=> b!1421659 m!1612567))

(declare-fun tp!402991 () Bool)

(declare-fun tp!402990 () Bool)

(declare-fun b!1421674 () Bool)

(declare-fun e!907478 () Bool)

(assert (=> b!1421674 (= e!907478 (and (inv!19380 (left!12515 (c!233681 (tokens!1869 other!32)))) tp!402991 (inv!19380 (right!12845 (c!233681 (tokens!1869 other!32)))) tp!402990))))

(declare-fun b!1421676 () Bool)

(declare-fun e!907479 () Bool)

(declare-fun tp!402992 () Bool)

(assert (=> b!1421676 (= e!907479 tp!402992)))

(declare-fun b!1421675 () Bool)

(declare-fun inv!19391 (IArray!9875) Bool)

(assert (=> b!1421675 (= e!907478 (and (inv!19391 (xs!7664 (c!233681 (tokens!1869 other!32)))) e!907479))))

(assert (=> b!1421421 (= tp!402955 (and (inv!19380 (c!233681 (tokens!1869 other!32))) e!907478))))

(assert (= (and b!1421421 (is-Node!4935 (c!233681 (tokens!1869 other!32)))) b!1421674))

(assert (= b!1421675 b!1421676))

(assert (= (and b!1421421 (is-Leaf!7414 (c!233681 (tokens!1869 other!32)))) b!1421675))

(declare-fun m!1612569 () Bool)

(assert (=> b!1421674 m!1612569))

(declare-fun m!1612571 () Bool)

(assert (=> b!1421674 m!1612571))

(declare-fun m!1612573 () Bool)

(assert (=> b!1421675 m!1612573))

(assert (=> b!1421421 m!1611815))

(declare-fun b!1421677 () Bool)

(declare-fun e!907480 () Bool)

(declare-fun tp!402993 () Bool)

(declare-fun tp!402994 () Bool)

(assert (=> b!1421677 (= e!907480 (and (inv!19380 (left!12515 (c!233681 (tokens!1869 thiss!10022)))) tp!402994 (inv!19380 (right!12845 (c!233681 (tokens!1869 thiss!10022)))) tp!402993))))

(declare-fun b!1421679 () Bool)

(declare-fun e!907481 () Bool)

(declare-fun tp!402995 () Bool)

(assert (=> b!1421679 (= e!907481 tp!402995)))

(declare-fun b!1421678 () Bool)

(assert (=> b!1421678 (= e!907480 (and (inv!19391 (xs!7664 (c!233681 (tokens!1869 thiss!10022)))) e!907481))))

(assert (=> b!1421432 (= tp!402956 (and (inv!19380 (c!233681 (tokens!1869 thiss!10022))) e!907480))))

(assert (= (and b!1421432 (is-Node!4935 (c!233681 (tokens!1869 thiss!10022)))) b!1421677))

(assert (= b!1421678 b!1421679))

(assert (= (and b!1421432 (is-Leaf!7414 (c!233681 (tokens!1869 thiss!10022)))) b!1421678))

(declare-fun m!1612575 () Bool)

(assert (=> b!1421677 m!1612575))

(declare-fun m!1612577 () Bool)

(assert (=> b!1421677 m!1612577))

(declare-fun m!1612579 () Bool)

(assert (=> b!1421678 m!1612579))

(assert (=> b!1421432 m!1611831))

(declare-fun b!1421682 () Bool)

(declare-fun b_free!35035 () Bool)

(declare-fun b_next!35739 () Bool)

(assert (=> b!1421682 (= b_free!35035 (not b_next!35739))))

(declare-fun tp!402996 () Bool)

(declare-fun b_and!95051 () Bool)

(assert (=> b!1421682 (= tp!402996 b_and!95051)))

(declare-fun b_free!35037 () Bool)

(declare-fun b_next!35741 () Bool)

(assert (=> b!1421682 (= b_free!35037 (not b_next!35741))))

(declare-fun tb!73603 () Bool)

(declare-fun t!124519 () Bool)

(assert (=> (and b!1421682 (= (toChars!3712 (transformation!2554 (h!20043 (rules!11177 other!32)))) (toChars!3712 (transformation!2554 (rule!4317 (h!20042 lt!480300))))) t!124519) tb!73603))

(declare-fun result!89746 () Bool)

(assert (= result!89746 result!89740))

(assert (=> d!407211 t!124519))

(declare-fun b_and!95053 () Bool)

(declare-fun tp!402997 () Bool)

(assert (=> b!1421682 (= tp!402997 (and (=> t!124519 result!89746) b_and!95053))))

(declare-fun e!907482 () Bool)

(assert (=> b!1421682 (= e!907482 (and tp!402996 tp!402997))))

(declare-fun b!1421681 () Bool)

(declare-fun tp!402998 () Bool)

(declare-fun e!907485 () Bool)

(assert (=> b!1421681 (= e!907485 (and tp!402998 (inv!19377 (tag!2816 (h!20043 (rules!11177 other!32)))) (inv!19390 (transformation!2554 (h!20043 (rules!11177 other!32)))) e!907482))))

(declare-fun b!1421680 () Bool)

(declare-fun e!907483 () Bool)

(declare-fun tp!402999 () Bool)

(assert (=> b!1421680 (= e!907483 (and e!907485 tp!402999))))

(assert (=> b!1421422 (= tp!402954 e!907483)))

(assert (= b!1421681 b!1421682))

(assert (= b!1421680 b!1421681))

(assert (= (and b!1421422 (is-Cons!14642 (rules!11177 other!32))) b!1421680))

(declare-fun m!1612581 () Bool)

(assert (=> b!1421681 m!1612581))

(declare-fun m!1612583 () Bool)

(assert (=> b!1421681 m!1612583))

(push 1)

(assert (not b_next!35741))

(assert b_and!95047)

(assert (not b!1421648))

(assert (not b!1421676))

(assert (not d!407207))

(assert (not b!1421493))

(assert (not b!1421513))

(assert (not b!1421681))

(assert (not b!1421626))

(assert (not d!407243))

(assert (not d!407209))

(assert (not b!1421501))

(assert (not b_next!35739))

(assert (not b!1421677))

(assert (not b!1421550))

(assert (not b!1421619))

(assert (not b!1421479))

(assert (not b!1421659))

(assert (not d!407179))

(assert (not b!1421665))

(assert (not b!1421549))

(assert (not b!1421421))

(assert (not b!1421557))

(assert (not b_next!35737))

(assert (not b!1421559))

(assert (not b!1421495))

(assert (not d!407247))

(assert (not b!1421620))

(assert (not b!1421678))

(assert b_and!95053)

(assert (not d!407163))

(assert (not d!407165))

(assert (not b_next!35735))

(assert (not b!1421675))

(assert (not b!1421624))

(assert (not b!1421556))

(assert (not d!407201))

(assert (not b!1421553))

(assert (not b!1421674))

(assert (not b!1421524))

(assert (not d!407197))

(assert (not d!407239))

(assert (not b!1421554))

(assert (not d!407171))

(assert (not b!1421567))

(assert (not d!407177))

(assert (not b!1421647))

(assert (not d!407211))

(assert (not b!1421500))

(assert (not d!407199))

(assert b_and!95049)

(assert (not b!1421622))

(assert (not d!407203))

(assert (not b!1421569))

(assert (not b!1421496))

(assert (not d!407149))

(assert (not d!407185))

(assert (not b!1421623))

(assert (not b!1421618))

(assert (not b!1421646))

(assert (not b!1421621))

(assert (not b!1421527))

(assert (not d!407245))

(assert (not b!1421432))

(assert (not tb!73601))

(assert (not d!407167))

(assert (not b!1421679))

(assert (not d!407257))

(assert (not b!1421649))

(assert (not b!1421658))

(assert (not d!407173))

(assert (not b!1421525))

(assert (not b!1421551))

(assert (not b!1421680))

(assert (not d!407181))

(assert (not b_lambda!44631))

(assert b_and!95051)

(assert (not d!407217))

(assert (not b!1421512))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!35739))

(assert (not b_next!35741))

(assert (not b_next!35737))

(assert b_and!95053)

(assert (not b_next!35735))

(assert b_and!95047)

(assert b_and!95049)

(assert b_and!95051)

(check-sat)

(pop 1)

