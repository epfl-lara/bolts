; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!97052 () Bool)

(assert start!97052)

(declare-fun b!1129887 () Bool)

(assert (=> b!1129887 true))

(declare-fun b!1129883 () Bool)

(declare-fun e!721772 () Bool)

(declare-datatypes ((List!10963 0))(
  ( (Nil!10939) (Cons!10939 (h!16340 (_ BitVec 16)) (t!106763 List!10963)) )
))
(declare-datatypes ((TokenValue!1952 0))(
  ( (FloatLiteralValue!3904 (text!14109 List!10963)) (TokenValueExt!1951 (__x!7627 Int)) (Broken!9760 (value!61723 List!10963)) (Object!1975) (End!1952) (Def!1952) (Underscore!1952) (Match!1952) (Else!1952) (Error!1952) (Case!1952) (If!1952) (Extends!1952) (Abstract!1952) (Class!1952) (Val!1952) (DelimiterValue!3904 (del!2012 List!10963)) (KeywordValue!1958 (value!61724 List!10963)) (CommentValue!3904 (value!61725 List!10963)) (WhitespaceValue!3904 (value!61726 List!10963)) (IndentationValue!1952 (value!61727 List!10963)) (String!13349) (Int32!1952) (Broken!9761 (value!61728 List!10963)) (Boolean!1953) (Unit!16613) (OperatorValue!1955 (op!2012 List!10963)) (IdentifierValue!3904 (value!61729 List!10963)) (IdentifierValue!3905 (value!61730 List!10963)) (WhitespaceValue!3905 (value!61731 List!10963)) (True!3904) (False!3904) (Broken!9762 (value!61732 List!10963)) (Broken!9763 (value!61733 List!10963)) (True!3905) (RightBrace!1952) (RightBracket!1952) (Colon!1952) (Null!1952) (Comma!1952) (LeftBracket!1952) (False!3905) (LeftBrace!1952) (ImaginaryLiteralValue!1952 (text!14110 List!10963)) (StringLiteralValue!5856 (value!61734 List!10963)) (EOFValue!1952 (value!61735 List!10963)) (IdentValue!1952 (value!61736 List!10963)) (DelimiterValue!3905 (value!61737 List!10963)) (DedentValue!1952 (value!61738 List!10963)) (NewLineValue!1952 (value!61739 List!10963)) (IntegerValue!5856 (value!61740 (_ BitVec 32)) (text!14111 List!10963)) (IntegerValue!5857 (value!61741 Int) (text!14112 List!10963)) (Times!1952) (Or!1952) (Equal!1952) (Minus!1952) (Broken!9764 (value!61742 List!10963)) (And!1952) (Div!1952) (LessEqual!1952) (Mod!1952) (Concat!5108) (Not!1952) (Plus!1952) (SpaceValue!1952 (value!61743 List!10963)) (IntegerValue!5858 (value!61744 Int) (text!14113 List!10963)) (StringLiteralValue!5857 (text!14114 List!10963)) (FloatLiteralValue!3905 (text!14115 List!10963)) (BytesLiteralValue!1952 (value!61745 List!10963)) (CommentValue!3905 (value!61746 List!10963)) (StringLiteralValue!5858 (value!61747 List!10963)) (ErrorTokenValue!1952 (msg!2013 List!10963)) )
))
(declare-datatypes ((Regex!3156 0))(
  ( (ElementMatch!3156 (c!189366 (_ BitVec 16))) (Concat!5109 (regOne!6824 Regex!3156) (regTwo!6824 Regex!3156)) (EmptyExpr!3156) (Star!3156 (reg!3485 Regex!3156)) (EmptyLang!3156) (Union!3156 (regOne!6825 Regex!3156) (regTwo!6825 Regex!3156)) )
))
(declare-datatypes ((String!13350 0))(
  ( (String!13351 (value!61748 String)) )
))
(declare-datatypes ((IArray!6961 0))(
  ( (IArray!6962 (innerList!3538 List!10963)) )
))
(declare-datatypes ((Conc!3478 0))(
  ( (Node!3478 (left!9489 Conc!3478) (right!9819 Conc!3478) (csize!7186 Int) (cheight!3689 Int)) (Leaf!5432 (xs!6171 IArray!6961) (csize!7187 Int)) (Empty!3478) )
))
(declare-datatypes ((BalanceConc!6978 0))(
  ( (BalanceConc!6979 (c!189367 Conc!3478)) )
))
(declare-datatypes ((TokenValueInjection!3604 0))(
  ( (TokenValueInjection!3605 (toValue!2975 Int) (toChars!2834 Int)) )
))
(declare-datatypes ((Rule!3572 0))(
  ( (Rule!3573 (regex!1886 Regex!3156) (tag!2148 String!13350) (isSeparator!1886 Bool) (transformation!1886 TokenValueInjection!3604)) )
))
(declare-datatypes ((Token!3434 0))(
  ( (Token!3435 (value!61749 TokenValue!1952) (rule!3307 Rule!3572) (size!8513 Int) (originalCharacters!2440 List!10963)) )
))
(declare-datatypes ((List!10964 0))(
  ( (Nil!10940) (Cons!10940 (h!16341 Token!3434) (t!106764 List!10964)) )
))
(declare-datatypes ((IArray!6963 0))(
  ( (IArray!6964 (innerList!3539 List!10964)) )
))
(declare-datatypes ((Conc!3479 0))(
  ( (Node!3479 (left!9490 Conc!3479) (right!9820 Conc!3479) (csize!7188 Int) (cheight!3690 Int)) (Leaf!5433 (xs!6172 IArray!6963) (csize!7189 Int)) (Empty!3479) )
))
(declare-datatypes ((List!10965 0))(
  ( (Nil!10941) (Cons!10941 (h!16342 Rule!3572) (t!106765 List!10965)) )
))
(declare-datatypes ((BalanceConc!6980 0))(
  ( (BalanceConc!6981 (c!189368 Conc!3479)) )
))
(declare-datatypes ((PrintableTokens!458 0))(
  ( (PrintableTokens!459 (rules!9205 List!10965) (tokens!1447 BalanceConc!6980)) )
))
(declare-datatypes ((List!10966 0))(
  ( (Nil!10942) (Cons!10942 (h!16343 PrintableTokens!458) (t!106766 List!10966)) )
))
(declare-datatypes ((IArray!6965 0))(
  ( (IArray!6966 (innerList!3540 List!10966)) )
))
(declare-datatypes ((Conc!3480 0))(
  ( (Node!3480 (left!9491 Conc!3480) (right!9821 Conc!3480) (csize!7190 Int) (cheight!3691 Int)) (Leaf!5434 (xs!6173 IArray!6965) (csize!7191 Int)) (Empty!3480) )
))
(declare-datatypes ((BalanceConc!6982 0))(
  ( (BalanceConc!6983 (c!189369 Conc!3480)) )
))
(declare-fun acc!225 () BalanceConc!6982)

(declare-fun tp!330699 () Bool)

(declare-fun inv!14119 (Conc!3480) Bool)

(assert (=> b!1129883 (= e!721772 (and (inv!14119 (c!189369 acc!225)) tp!330699))))

(declare-fun lt!378503 () Int)

(declare-fun c!189365 () Bool)

(declare-fun lt!378504 () Int)

(declare-fun pt!21 () PrintableTokens!458)

(declare-fun call!80625 () PrintableTokens!458)

(declare-fun bm!80620 () Bool)

(declare-fun slice!53 (PrintableTokens!458 Int Int) PrintableTokens!458)

(assert (=> bm!80620 (= call!80625 (slice!53 pt!21 (ite c!189365 lt!378504 lt!378503) (ite c!189365 (+ 1 lt!378503) (+ 1 lt!378504))))))

(declare-fun b!1129884 () Bool)

(declare-fun e!721766 () Bool)

(declare-fun e!721770 () Bool)

(assert (=> b!1129884 (= e!721766 e!721770)))

(declare-fun res!507761 () Bool)

(assert (=> b!1129884 (=> (not res!507761) (not e!721770))))

(declare-fun e!721771 () PrintableTokens!458)

(declare-fun usesJsonRules!0 (PrintableTokens!458) Bool)

(assert (=> b!1129884 (= res!507761 (usesJsonRules!0 e!721771))))

(assert (=> b!1129884 (= c!189365 (<= lt!378504 lt!378503))))

(declare-datatypes ((List!10967 0))(
  ( (Nil!10943) (Cons!10943 (h!16344 Int) (t!106767 List!10967)) )
))
(declare-datatypes ((IArray!6967 0))(
  ( (IArray!6968 (innerList!3541 List!10967)) )
))
(declare-datatypes ((Conc!3481 0))(
  ( (Node!3481 (left!9492 Conc!3481) (right!9822 Conc!3481) (csize!7192 Int) (cheight!3692 Int)) (Leaf!5435 (xs!6174 IArray!6967) (csize!7193 Int)) (Empty!3481) )
))
(declare-datatypes ((BalanceConc!6984 0))(
  ( (BalanceConc!6985 (c!189370 Conc!3481)) )
))
(declare-fun indices!2 () BalanceConc!6984)

(declare-fun apply!2252 (BalanceConc!6984 Int) Int)

(assert (=> b!1129884 (= lt!378503 (apply!2252 indices!2 1))))

(assert (=> b!1129884 (= lt!378504 (apply!2252 indices!2 0))))

(declare-fun b!1129885 () Bool)

(assert (=> b!1129885 (= e!721771 call!80625)))

(declare-fun b!1129886 () Bool)

(assert (=> b!1129886 (= e!721771 call!80625)))

(declare-fun res!507765 () Bool)

(assert (=> b!1129887 (=> (not res!507765) (not e!721766))))

(declare-fun lambda!45424 () Int)

(declare-fun forall!2615 (BalanceConc!6984 Int) Bool)

(assert (=> b!1129887 (= res!507765 (forall!2615 indices!2 lambda!45424))))

(declare-fun b!1129888 () Bool)

(declare-fun e!721769 () Bool)

(declare-fun tp!330700 () Bool)

(declare-fun inv!14120 (Conc!3479) Bool)

(assert (=> b!1129888 (= e!721769 (and (inv!14120 (c!189368 (tokens!1447 pt!21))) tp!330700))))

(declare-fun b!1129889 () Bool)

(declare-fun res!507762 () Bool)

(assert (=> b!1129889 (=> (not res!507762) (not e!721766))))

(assert (=> b!1129889 (= res!507762 (usesJsonRules!0 pt!21))))

(declare-fun res!507764 () Bool)

(assert (=> start!97052 (=> (not res!507764) (not e!721766))))

(declare-fun size!108 () Int)

(declare-fun size!8514 (PrintableTokens!458) Int)

(assert (=> start!97052 (= res!507764 (= (size!8514 pt!21) size!108))))

(assert (=> start!97052 e!721766))

(declare-fun e!721767 () Bool)

(declare-fun inv!14121 (PrintableTokens!458) Bool)

(assert (=> start!97052 (and (inv!14121 pt!21) e!721767)))

(assert (=> start!97052 true))

(declare-fun e!721768 () Bool)

(declare-fun inv!14122 (BalanceConc!6984) Bool)

(assert (=> start!97052 (and (inv!14122 indices!2) e!721768)))

(declare-fun inv!14123 (BalanceConc!6982) Bool)

(assert (=> start!97052 (and (inv!14123 acc!225) e!721772)))

(declare-fun b!1129890 () Bool)

(declare-fun res!507766 () Bool)

(assert (=> b!1129890 (=> (not res!507766) (not e!721766))))

(declare-fun lambda!45425 () Int)

(declare-fun forall!2616 (BalanceConc!6982 Int) Bool)

(assert (=> b!1129890 (= res!507766 (forall!2616 acc!225 lambda!45425))))

(declare-fun b!1129891 () Bool)

(declare-fun tp!330698 () Bool)

(declare-fun inv!14124 (BalanceConc!6980) Bool)

(assert (=> b!1129891 (= e!721767 (and tp!330698 (inv!14124 (tokens!1447 pt!21)) e!721769))))

(declare-fun b!1129892 () Bool)

(declare-fun forall!2617 (List!10966 Int) Bool)

(declare-fun list!3946 (BalanceConc!6982) List!10966)

(assert (=> b!1129892 (= e!721770 (not (forall!2617 (list!3946 acc!225) lambda!45425)))))

(declare-fun b!1129893 () Bool)

(declare-fun res!507763 () Bool)

(assert (=> b!1129893 (=> (not res!507763) (not e!721766))))

(declare-fun size!8515 (BalanceConc!6984) Int)

(assert (=> b!1129893 (= res!507763 (>= (size!8515 indices!2) 2))))

(declare-fun b!1129894 () Bool)

(declare-fun tp!330697 () Bool)

(declare-fun inv!14125 (Conc!3481) Bool)

(assert (=> b!1129894 (= e!721768 (and (inv!14125 (c!189370 indices!2)) tp!330697))))

(assert (= (and start!97052 res!507764) b!1129887))

(assert (= (and b!1129887 res!507765) b!1129889))

(assert (= (and b!1129889 res!507762) b!1129890))

(assert (= (and b!1129890 res!507766) b!1129893))

(assert (= (and b!1129893 res!507763) b!1129884))

(assert (= (and b!1129884 c!189365) b!1129885))

(assert (= (and b!1129884 (not c!189365)) b!1129886))

(assert (= (or b!1129885 b!1129886) bm!80620))

(assert (= (and b!1129884 res!507761) b!1129892))

(assert (= b!1129891 b!1129888))

(assert (= start!97052 b!1129891))

(assert (= start!97052 b!1129894))

(assert (= start!97052 b!1129883))

(declare-fun m!1278527 () Bool)

(assert (=> start!97052 m!1278527))

(declare-fun m!1278529 () Bool)

(assert (=> start!97052 m!1278529))

(declare-fun m!1278531 () Bool)

(assert (=> start!97052 m!1278531))

(declare-fun m!1278533 () Bool)

(assert (=> start!97052 m!1278533))

(declare-fun m!1278535 () Bool)

(assert (=> b!1129888 m!1278535))

(declare-fun m!1278537 () Bool)

(assert (=> b!1129887 m!1278537))

(declare-fun m!1278539 () Bool)

(assert (=> b!1129884 m!1278539))

(declare-fun m!1278541 () Bool)

(assert (=> b!1129884 m!1278541))

(declare-fun m!1278543 () Bool)

(assert (=> b!1129884 m!1278543))

(declare-fun m!1278545 () Bool)

(assert (=> b!1129893 m!1278545))

(declare-fun m!1278547 () Bool)

(assert (=> bm!80620 m!1278547))

(declare-fun m!1278549 () Bool)

(assert (=> b!1129890 m!1278549))

(declare-fun m!1278551 () Bool)

(assert (=> b!1129889 m!1278551))

(declare-fun m!1278553 () Bool)

(assert (=> b!1129891 m!1278553))

(declare-fun m!1278555 () Bool)

(assert (=> b!1129892 m!1278555))

(assert (=> b!1129892 m!1278555))

(declare-fun m!1278557 () Bool)

(assert (=> b!1129892 m!1278557))

(declare-fun m!1278559 () Bool)

(assert (=> b!1129894 m!1278559))

(declare-fun m!1278561 () Bool)

(assert (=> b!1129883 m!1278561))

(push 1)

(assert (not bm!80620))

(assert (not b!1129883))

(assert (not b!1129887))

(assert (not b!1129891))

(assert (not b!1129893))

(assert (not b!1129892))

(assert (not b!1129889))

(assert (not b!1129884))

(assert (not start!97052))

(assert (not b!1129890))

(assert (not b!1129888))

(assert (not b!1129894))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!318358 () Bool)

(declare-fun c!189381 () Bool)

(assert (=> d!318358 (= c!189381 (is-Node!3479 (c!189368 (tokens!1447 pt!21))))))

(declare-fun e!721798 () Bool)

(assert (=> d!318358 (= (inv!14120 (c!189368 (tokens!1447 pt!21))) e!721798)))

(declare-fun b!1129941 () Bool)

(declare-fun inv!14133 (Conc!3479) Bool)

(assert (=> b!1129941 (= e!721798 (inv!14133 (c!189368 (tokens!1447 pt!21))))))

(declare-fun b!1129942 () Bool)

(declare-fun e!721799 () Bool)

(assert (=> b!1129942 (= e!721798 e!721799)))

(declare-fun res!507788 () Bool)

(assert (=> b!1129942 (= res!507788 (not (is-Leaf!5433 (c!189368 (tokens!1447 pt!21)))))))

(assert (=> b!1129942 (=> res!507788 e!721799)))

(declare-fun b!1129943 () Bool)

(declare-fun inv!14134 (Conc!3479) Bool)

(assert (=> b!1129943 (= e!721799 (inv!14134 (c!189368 (tokens!1447 pt!21))))))

(assert (= (and d!318358 c!189381) b!1129941))

(assert (= (and d!318358 (not c!189381)) b!1129942))

(assert (= (and b!1129942 (not res!507788)) b!1129943))

(declare-fun m!1278599 () Bool)

(assert (=> b!1129941 m!1278599))

(declare-fun m!1278601 () Bool)

(assert (=> b!1129943 m!1278601))

(assert (=> b!1129888 d!318358))

(declare-fun d!318360 () Bool)

(declare-datatypes ((JsonLexer!304 0))(
  ( (JsonLexer!305) )
))
(declare-fun rules!109 (JsonLexer!304) List!10965)

(assert (=> d!318360 (= (usesJsonRules!0 pt!21) (= (rules!9205 pt!21) (rules!109 JsonLexer!305)))))

(declare-fun bs!277557 () Bool)

(assert (= bs!277557 d!318360))

(declare-fun m!1278603 () Bool)

(assert (=> bs!277557 m!1278603))

(assert (=> b!1129889 d!318360))

(declare-fun d!318362 () Bool)

(declare-fun lt!378513 () Bool)

(assert (=> d!318362 (= lt!378513 (forall!2617 (list!3946 acc!225) lambda!45425))))

(declare-fun forall!2621 (Conc!3480 Int) Bool)

(assert (=> d!318362 (= lt!378513 (forall!2621 (c!189369 acc!225) lambda!45425))))

(assert (=> d!318362 (= (forall!2616 acc!225 lambda!45425) lt!378513)))

(declare-fun bs!277558 () Bool)

(assert (= bs!277558 d!318362))

(assert (=> bs!277558 m!1278555))

(assert (=> bs!277558 m!1278555))

(assert (=> bs!277558 m!1278557))

(declare-fun m!1278605 () Bool)

(assert (=> bs!277558 m!1278605))

(assert (=> b!1129890 d!318362))

(declare-fun d!318364 () Bool)

(declare-fun isBalanced!959 (Conc!3479) Bool)

(assert (=> d!318364 (= (inv!14124 (tokens!1447 pt!21)) (isBalanced!959 (c!189368 (tokens!1447 pt!21))))))

(declare-fun bs!277559 () Bool)

(assert (= bs!277559 d!318364))

(declare-fun m!1278607 () Bool)

(assert (=> bs!277559 m!1278607))

(assert (=> b!1129891 d!318364))

(declare-fun d!318366 () Bool)

(declare-fun res!507793 () Bool)

(declare-fun e!721804 () Bool)

(assert (=> d!318366 (=> res!507793 e!721804)))

(assert (=> d!318366 (= res!507793 (is-Nil!10942 (list!3946 acc!225)))))

(assert (=> d!318366 (= (forall!2617 (list!3946 acc!225) lambda!45425) e!721804)))

(declare-fun b!1129948 () Bool)

(declare-fun e!721805 () Bool)

(assert (=> b!1129948 (= e!721804 e!721805)))

(declare-fun res!507794 () Bool)

(assert (=> b!1129948 (=> (not res!507794) (not e!721805))))

(declare-fun dynLambda!4816 (Int PrintableTokens!458) Bool)

(assert (=> b!1129948 (= res!507794 (dynLambda!4816 lambda!45425 (h!16343 (list!3946 acc!225))))))

(declare-fun b!1129949 () Bool)

(assert (=> b!1129949 (= e!721805 (forall!2617 (t!106766 (list!3946 acc!225)) lambda!45425))))

(assert (= (and d!318366 (not res!507793)) b!1129948))

(assert (= (and b!1129948 res!507794) b!1129949))

(declare-fun b_lambda!33211 () Bool)

(assert (=> (not b_lambda!33211) (not b!1129948)))

(declare-fun m!1278609 () Bool)

(assert (=> b!1129948 m!1278609))

(declare-fun m!1278611 () Bool)

(assert (=> b!1129949 m!1278611))

(assert (=> b!1129892 d!318366))

(declare-fun d!318368 () Bool)

(declare-fun list!3948 (Conc!3480) List!10966)

(assert (=> d!318368 (= (list!3946 acc!225) (list!3948 (c!189369 acc!225)))))

(declare-fun bs!277560 () Bool)

(assert (= bs!277560 d!318368))

(declare-fun m!1278613 () Bool)

(assert (=> bs!277560 m!1278613))

(assert (=> b!1129892 d!318368))

(declare-fun d!318370 () Bool)

(declare-fun c!189384 () Bool)

(assert (=> d!318370 (= c!189384 (is-Node!3480 (c!189369 acc!225)))))

(declare-fun e!721810 () Bool)

(assert (=> d!318370 (= (inv!14119 (c!189369 acc!225)) e!721810)))

(declare-fun b!1129956 () Bool)

(declare-fun inv!14135 (Conc!3480) Bool)

(assert (=> b!1129956 (= e!721810 (inv!14135 (c!189369 acc!225)))))

(declare-fun b!1129957 () Bool)

(declare-fun e!721811 () Bool)

(assert (=> b!1129957 (= e!721810 e!721811)))

(declare-fun res!507797 () Bool)

(assert (=> b!1129957 (= res!507797 (not (is-Leaf!5434 (c!189369 acc!225))))))

(assert (=> b!1129957 (=> res!507797 e!721811)))

(declare-fun b!1129958 () Bool)

(declare-fun inv!14136 (Conc!3480) Bool)

(assert (=> b!1129958 (= e!721811 (inv!14136 (c!189369 acc!225)))))

(assert (= (and d!318370 c!189384) b!1129956))

(assert (= (and d!318370 (not c!189384)) b!1129957))

(assert (= (and b!1129957 (not res!507797)) b!1129958))

(declare-fun m!1278615 () Bool)

(assert (=> b!1129956 m!1278615))

(declare-fun m!1278617 () Bool)

(assert (=> b!1129958 m!1278617))

(assert (=> b!1129883 d!318370))

(declare-fun d!318372 () Bool)

(declare-fun lt!378516 () Int)

(declare-fun size!8519 (List!10967) Int)

(declare-fun list!3949 (BalanceConc!6984) List!10967)

(assert (=> d!318372 (= lt!378516 (size!8519 (list!3949 indices!2)))))

(declare-fun size!8520 (Conc!3481) Int)

(assert (=> d!318372 (= lt!378516 (size!8520 (c!189370 indices!2)))))

(assert (=> d!318372 (= (size!8515 indices!2) lt!378516)))

(declare-fun bs!277561 () Bool)

(assert (= bs!277561 d!318372))

(declare-fun m!1278619 () Bool)

(assert (=> bs!277561 m!1278619))

(assert (=> bs!277561 m!1278619))

(declare-fun m!1278621 () Bool)

(assert (=> bs!277561 m!1278621))

(declare-fun m!1278623 () Bool)

(assert (=> bs!277561 m!1278623))

(assert (=> b!1129893 d!318372))

(declare-fun b!1130008 () Bool)

(declare-fun e!721859 () Bool)

(assert (=> b!1130008 (= e!721859 true)))

(declare-fun b!1130007 () Bool)

(declare-fun e!721858 () Bool)

(assert (=> b!1130007 (= e!721858 e!721859)))

(declare-fun d!318374 () Bool)

(assert (=> d!318374 e!721858))

(assert (= b!1130007 b!1130008))

(assert (= d!318374 b!1130007))

(declare-fun b!1129987 () Bool)

(declare-fun lt!378714 () List!10964)

(declare-datatypes ((LexerInterface!1593 0))(
  ( (LexerInterfaceExt!1590 (__x!7629 Int)) (Lexer!1591) )
))
(declare-fun lt!378676 () LexerInterface!1593)

(declare-fun e!721841 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!67 (LexerInterface!1593 List!10964 List!10965) Bool)

(declare-fun drop!415 (List!10964 Int) List!10964)

(assert (=> b!1129987 (= e!721841 (tokensListTwoByTwoPredicateSeparableList!67 lt!378676 (drop!415 lt!378714 (ite c!189365 lt!378504 lt!378503)) (rules!9205 pt!21)))))

(declare-datatypes ((Unit!16615 0))(
  ( (Unit!16616) )
))
(declare-fun lt!378722 () Unit!16615)

(declare-fun lt!378706 () Unit!16615)

(assert (=> b!1129987 (= lt!378722 lt!378706)))

(declare-fun lt!378680 () List!10964)

(declare-fun lambda!45446 () Int)

(declare-fun forall!2622 (List!10964 Int) Bool)

(assert (=> b!1129987 (forall!2622 lt!378680 lambda!45446)))

(declare-fun lemmaForallSubseq!70 (List!10964 List!10964 Int) Unit!16615)

(assert (=> b!1129987 (= lt!378706 (lemmaForallSubseq!70 lt!378680 lt!378714 lambda!45446))))

(assert (=> b!1129987 (= lt!378680 (drop!415 lt!378714 (ite c!189365 lt!378504 lt!378503)))))

(declare-fun lt!378710 () Unit!16615)

(declare-fun lt!378662 () Unit!16615)

(assert (=> b!1129987 (= lt!378710 lt!378662)))

(declare-fun subseq!170 (List!10964 List!10964) Bool)

(assert (=> b!1129987 (subseq!170 (drop!415 lt!378714 (ite c!189365 lt!378504 lt!378503)) lt!378714)))

(declare-fun lemmaDropSubseq!11 (List!10964 Int) Unit!16615)

(assert (=> b!1129987 (= lt!378662 (lemmaDropSubseq!11 lt!378714 (ite c!189365 lt!378504 lt!378503)))))

(declare-fun lt!378716 () LexerInterface!1593)

(declare-fun e!721844 () Bool)

(declare-fun b!1129988 () Bool)

(declare-fun lt!378698 () List!10964)

(declare-fun rulesProduceEachTokenIndividuallyList!468 (LexerInterface!1593 List!10965 List!10964) Bool)

(assert (=> b!1129988 (= e!721844 (rulesProduceEachTokenIndividuallyList!468 lt!378716 (rules!9205 pt!21) (t!106764 lt!378698)))))

(declare-fun b!1129989 () Bool)

(declare-fun e!721850 () Bool)

(declare-fun size!8521 (BalanceConc!6980) Int)

(assert (=> b!1129989 (= e!721850 (<= (ite c!189365 (+ 1 lt!378503) (+ 1 lt!378504)) (size!8521 (tokens!1447 pt!21))))))

(declare-fun b!1129990 () Bool)

(declare-fun e!721853 () Bool)

(declare-fun e!721851 () Bool)

(assert (=> b!1129990 (= e!721853 e!721851)))

(declare-fun res!507831 () Bool)

(assert (=> b!1129990 (=> (not res!507831) (not e!721851))))

(declare-fun lt!378708 () List!10964)

(declare-fun rulesProduceIndividualToken!640 (LexerInterface!1593 List!10965 Token!3434) Bool)

(assert (=> b!1129990 (= res!507831 (rulesProduceIndividualToken!640 lt!378676 (rules!9205 pt!21) (h!16341 lt!378708)))))

(declare-fun b!1129991 () Bool)

(declare-fun e!721843 () Bool)

(declare-fun e!721840 () Bool)

(assert (=> b!1129991 (= e!721843 e!721840)))

(declare-fun res!507839 () Bool)

(assert (=> b!1129991 (=> (not res!507839) (not e!721840))))

(declare-fun lt!378702 () Int)

(declare-fun lt!378672 () LexerInterface!1593)

(declare-fun separableTokensPredicate!91 (LexerInterface!1593 Token!3434 Token!3434 List!10965) Bool)

(declare-fun apply!2254 (BalanceConc!6980 Int) Token!3434)

(assert (=> b!1129991 (= res!507839 (separableTokensPredicate!91 lt!378672 (apply!2254 (tokens!1447 pt!21) lt!378702) (apply!2254 (tokens!1447 pt!21) (+ lt!378702 1)) (rules!9205 pt!21)))))

(declare-fun lt!378730 () Unit!16615)

(declare-fun Unit!16617 () Unit!16615)

(assert (=> b!1129991 (= lt!378730 Unit!16617)))

(declare-fun size!8522 (BalanceConc!6978) Int)

(declare-fun charsOf!1029 (Token!3434) BalanceConc!6978)

(assert (=> b!1129991 (> (size!8522 (charsOf!1029 (apply!2254 (tokens!1447 pt!21) (+ lt!378702 1)))) 0)))

(declare-fun lt!378689 () Unit!16615)

(declare-fun Unit!16618 () Unit!16615)

(assert (=> b!1129991 (= lt!378689 Unit!16618)))

(assert (=> b!1129991 (rulesProduceIndividualToken!640 lt!378672 (rules!9205 pt!21) (apply!2254 (tokens!1447 pt!21) (+ lt!378702 1)))))

(declare-fun lt!378661 () Unit!16615)

(declare-fun Unit!16619 () Unit!16615)

(assert (=> b!1129991 (= lt!378661 Unit!16619)))

(assert (=> b!1129991 (rulesProduceIndividualToken!640 lt!378672 (rules!9205 pt!21) (apply!2254 (tokens!1447 pt!21) lt!378702))))

(declare-fun lt!378709 () Unit!16615)

(declare-fun lt!378732 () Unit!16615)

(assert (=> b!1129991 (= lt!378709 lt!378732)))

(declare-fun lt!378685 () Token!3434)

(assert (=> b!1129991 (rulesProduceIndividualToken!640 lt!378672 (rules!9205 pt!21) lt!378685)))

(declare-fun lt!378715 () List!10964)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!250 (LexerInterface!1593 List!10965 List!10964 Token!3434) Unit!16615)

(assert (=> b!1129991 (= lt!378732 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!250 lt!378672 (rules!9205 pt!21) lt!378715 lt!378685))))

(assert (=> b!1129991 (= lt!378685 (apply!2254 (tokens!1447 pt!21) (+ lt!378702 1)))))

(declare-fun list!3950 (BalanceConc!6980) List!10964)

(assert (=> b!1129991 (= lt!378715 (list!3950 (tokens!1447 pt!21)))))

(declare-fun lt!378665 () Unit!16615)

(declare-fun lt!378684 () Unit!16615)

(assert (=> b!1129991 (= lt!378665 lt!378684)))

(declare-fun lt!378727 () Token!3434)

(assert (=> b!1129991 (rulesProduceIndividualToken!640 lt!378672 (rules!9205 pt!21) lt!378727)))

(declare-fun lt!378723 () List!10964)

(assert (=> b!1129991 (= lt!378684 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!250 lt!378672 (rules!9205 pt!21) lt!378723 lt!378727))))

(assert (=> b!1129991 (= lt!378727 (apply!2254 (tokens!1447 pt!21) lt!378702))))

(assert (=> b!1129991 (= lt!378723 (list!3950 (tokens!1447 pt!21)))))

(declare-fun lt!378725 () Unit!16615)

(declare-fun lt!378720 () Unit!16615)

(assert (=> b!1129991 (= lt!378725 lt!378720)))

(declare-fun lt!378729 () List!10964)

(declare-fun lt!378705 () Int)

(declare-fun tail!1611 (List!10964) List!10964)

(assert (=> b!1129991 (= (tail!1611 (drop!415 lt!378729 lt!378705)) (drop!415 lt!378729 (+ lt!378705 1)))))

(declare-fun lemmaDropTail!320 (List!10964 Int) Unit!16615)

(assert (=> b!1129991 (= lt!378720 (lemmaDropTail!320 lt!378729 lt!378705))))

(assert (=> b!1129991 (= lt!378705 (+ lt!378702 1))))

(assert (=> b!1129991 (= lt!378729 (list!3950 (tokens!1447 pt!21)))))

(declare-fun lt!378696 () Unit!16615)

(declare-fun lt!378703 () Unit!16615)

(assert (=> b!1129991 (= lt!378696 lt!378703)))

(declare-fun lt!378688 () List!10964)

(assert (=> b!1129991 (= (tail!1611 (drop!415 lt!378688 lt!378702)) (drop!415 lt!378688 (+ lt!378702 1)))))

(assert (=> b!1129991 (= lt!378703 (lemmaDropTail!320 lt!378688 lt!378702))))

(assert (=> b!1129991 (= lt!378688 (list!3950 (tokens!1447 pt!21)))))

(declare-fun lt!378687 () Unit!16615)

(declare-fun lt!378670 () Unit!16615)

(assert (=> b!1129991 (= lt!378687 lt!378670)))

(declare-fun lt!378721 () List!10964)

(declare-fun lt!378697 () Int)

(declare-fun head!2051 (List!10964) Token!3434)

(declare-fun apply!2255 (List!10964 Int) Token!3434)

(assert (=> b!1129991 (= (head!2051 (drop!415 lt!378721 lt!378697)) (apply!2255 lt!378721 lt!378697))))

(declare-fun lemmaDropApply!332 (List!10964 Int) Unit!16615)

(assert (=> b!1129991 (= lt!378670 (lemmaDropApply!332 lt!378721 lt!378697))))

(assert (=> b!1129991 (= lt!378697 (+ lt!378702 1))))

(assert (=> b!1129991 (= lt!378721 (list!3950 (tokens!1447 pt!21)))))

(declare-fun lt!378683 () Unit!16615)

(declare-fun lt!378669 () Unit!16615)

(assert (=> b!1129991 (= lt!378683 lt!378669)))

(declare-fun lt!378667 () List!10964)

(assert (=> b!1129991 (= (head!2051 (drop!415 lt!378667 lt!378702)) (apply!2255 lt!378667 lt!378702))))

(assert (=> b!1129991 (= lt!378669 (lemmaDropApply!332 lt!378667 lt!378702))))

(assert (=> b!1129991 (= lt!378667 (list!3950 (tokens!1447 pt!21)))))

(declare-fun b!1129992 () Bool)

(declare-fun e!721848 () Bool)

(declare-fun e!721846 () Bool)

(assert (=> b!1129992 (= e!721848 e!721846)))

(declare-fun res!507833 () Bool)

(assert (=> b!1129992 (=> (not res!507833) (not e!721846))))

(declare-fun lt!378692 () LexerInterface!1593)

(declare-fun lt!378728 () List!10964)

(assert (=> b!1129992 (= res!507833 (rulesProduceIndividualToken!640 lt!378692 (rules!9205 pt!21) (h!16341 lt!378728)))))

(declare-fun b!1129993 () Bool)

(declare-fun e!721842 () Bool)

(assert (=> b!1129993 (= e!721842 e!721844)))

(declare-fun res!507827 () Bool)

(assert (=> b!1129993 (=> (not res!507827) (not e!721844))))

(assert (=> b!1129993 (= res!507827 (rulesProduceIndividualToken!640 lt!378716 (rules!9205 pt!21) (h!16341 lt!378698)))))

(declare-fun b!1129994 () Bool)

(declare-fun e!721852 () Bool)

(declare-fun lt!378731 () Int)

(declare-fun lt!378699 () List!10964)

(declare-fun take!13 (List!10964 Int) List!10964)

(assert (=> b!1129994 (= e!721852 (tokensListTwoByTwoPredicateSeparableList!67 lt!378692 (take!13 lt!378699 lt!378731) (rules!9205 pt!21)))))

(declare-fun lt!378681 () Unit!16615)

(declare-fun lt!378707 () Unit!16615)

(assert (=> b!1129994 (= lt!378681 lt!378707)))

(declare-fun lt!378677 () List!10964)

(assert (=> b!1129994 (forall!2622 lt!378677 lambda!45446)))

(assert (=> b!1129994 (= lt!378707 (lemmaForallSubseq!70 lt!378677 lt!378699 lambda!45446))))

(assert (=> b!1129994 (= lt!378677 (take!13 lt!378699 lt!378731))))

(declare-fun e!721849 () Bool)

(declare-fun lt!378695 () PrintableTokens!458)

(declare-fun b!1129995 () Bool)

(declare-fun slice!55 (BalanceConc!6980 Int Int) BalanceConc!6980)

(assert (=> b!1129995 (= e!721849 (= (list!3950 (tokens!1447 lt!378695)) (list!3950 (slice!55 (tokens!1447 pt!21) (ite c!189365 lt!378504 lt!378503) (ite c!189365 (+ 1 lt!378503) (+ 1 lt!378504))))))))

(declare-fun b!1129996 () Bool)

(assert (=> b!1129996 (= e!721846 (rulesProduceEachTokenIndividuallyList!468 lt!378692 (rules!9205 pt!21) (t!106764 lt!378728)))))

(assert (=> d!318374 e!721849))

(declare-fun res!507830 () Bool)

(assert (=> d!318374 (=> (not res!507830) (not e!721849))))

(assert (=> d!318374 (= res!507830 (= (rules!9205 lt!378695) (rules!9205 pt!21)))))

(assert (=> d!318374 (= lt!378695 (PrintableTokens!459 (rules!9205 pt!21) (slice!55 (tokens!1447 pt!21) (ite c!189365 lt!378504 lt!378503) (ite c!189365 (+ 1 lt!378503) (+ 1 lt!378504)))))))

(declare-fun lt!378679 () Unit!16615)

(declare-fun lt!378701 () Unit!16615)

(assert (=> d!318374 (= lt!378679 lt!378701)))

(assert (=> d!318374 e!721852))

(declare-fun res!507837 () Bool)

(assert (=> d!318374 (=> (not res!507837) (not e!721852))))

(assert (=> d!318374 (= res!507837 (= (rulesProduceEachTokenIndividuallyList!468 lt!378692 (rules!9205 pt!21) (take!13 lt!378699 lt!378731)) e!721848))))

(declare-fun res!507840 () Bool)

(assert (=> d!318374 (=> res!507840 e!721848)))

(assert (=> d!318374 (= res!507840 (not (is-Cons!10940 lt!378728)))))

(assert (=> d!318374 (= lt!378728 (take!13 lt!378699 lt!378731))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!11 (LexerInterface!1593 List!10964 Int List!10965) Unit!16615)

(assert (=> d!318374 (= lt!378701 (tokensListTwoByTwoPredicateSeparableTokensTakeList!11 lt!378692 lt!378699 lt!378731 (rules!9205 pt!21)))))

(assert (=> d!318374 (= lt!378731 (- (ite c!189365 (+ 1 lt!378503) (+ 1 lt!378504)) (ite c!189365 lt!378504 lt!378503)))))

(assert (=> d!318374 (= lt!378699 (drop!415 (list!3950 (tokens!1447 pt!21)) (ite c!189365 lt!378504 lt!378503)))))

(assert (=> d!318374 (= lt!378692 Lexer!1591)))

(declare-fun lt!378678 () Unit!16615)

(declare-fun lt!378713 () Unit!16615)

(assert (=> d!318374 (= lt!378678 lt!378713)))

(declare-fun lt!378724 () List!10964)

(assert (=> d!318374 (forall!2622 lt!378724 lambda!45446)))

(declare-fun lt!378694 () List!10964)

(assert (=> d!318374 (= lt!378713 (lemmaForallSubseq!70 lt!378724 lt!378694 lambda!45446))))

(assert (=> d!318374 (= lt!378694 (list!3950 (tokens!1447 pt!21)))))

(assert (=> d!318374 (= lt!378724 (drop!415 (list!3950 (tokens!1447 pt!21)) (ite c!189365 lt!378504 lt!378503)))))

(declare-fun lt!378691 () Unit!16615)

(declare-fun lt!378682 () Unit!16615)

(assert (=> d!318374 (= lt!378691 lt!378682)))

(declare-fun lt!378704 () List!10964)

(assert (=> d!318374 (subseq!170 (drop!415 lt!378704 (ite c!189365 lt!378504 lt!378503)) lt!378704)))

(assert (=> d!318374 (= lt!378682 (lemmaDropSubseq!11 lt!378704 (ite c!189365 lt!378504 lt!378503)))))

(assert (=> d!318374 (= lt!378704 (list!3950 (tokens!1447 pt!21)))))

(declare-fun lt!378664 () Unit!16615)

(declare-fun lt!378700 () Unit!16615)

(assert (=> d!318374 (= lt!378664 lt!378700)))

(assert (=> d!318374 e!721841))

(declare-fun res!507829 () Bool)

(assert (=> d!318374 (=> (not res!507829) (not e!721841))))

(assert (=> d!318374 (= res!507829 (= (rulesProduceEachTokenIndividuallyList!468 lt!378676 (rules!9205 pt!21) (drop!415 lt!378714 (ite c!189365 lt!378504 lt!378503))) e!721853))))

(declare-fun res!507838 () Bool)

(assert (=> d!318374 (=> res!507838 e!721853)))

(assert (=> d!318374 (= res!507838 (not (is-Cons!10940 lt!378708)))))

(assert (=> d!318374 (= lt!378708 (drop!415 lt!378714 (ite c!189365 lt!378504 lt!378503)))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!11 (LexerInterface!1593 List!10964 Int List!10965) Unit!16615)

(assert (=> d!318374 (= lt!378700 (tokensListTwoByTwoPredicateSeparableTokensDropList!11 lt!378676 lt!378714 (ite c!189365 lt!378504 lt!378503) (rules!9205 pt!21)))))

(assert (=> d!318374 (= lt!378714 (list!3950 (tokens!1447 pt!21)))))

(assert (=> d!318374 (= lt!378676 Lexer!1591)))

(declare-fun lt!378690 () Unit!16615)

(declare-fun Unit!16620 () Unit!16615)

(assert (=> d!318374 (= lt!378690 Unit!16620)))

(declare-fun tokensListTwoByTwoPredicateSeparable!22 (LexerInterface!1593 BalanceConc!6980 Int List!10965) Bool)

(assert (=> d!318374 (= (tokensListTwoByTwoPredicateSeparable!22 Lexer!1591 (tokens!1447 pt!21) 0 (rules!9205 pt!21)) e!721843)))

(declare-fun res!507836 () Bool)

(assert (=> d!318374 (=> res!507836 e!721843)))

(assert (=> d!318374 (= res!507836 (not (< lt!378702 (- (size!8521 (tokens!1447 pt!21)) 1))))))

(assert (=> d!318374 (= lt!378702 0)))

(assert (=> d!318374 (= lt!378672 Lexer!1591)))

(declare-fun lt!378693 () Unit!16615)

(declare-fun Unit!16621 () Unit!16615)

(assert (=> d!318374 (= lt!378693 Unit!16621)))

(declare-fun separableTokens!62 (LexerInterface!1593 BalanceConc!6980 List!10965) Bool)

(assert (=> d!318374 (= (separableTokens!62 Lexer!1591 (slice!55 (tokens!1447 pt!21) (ite c!189365 lt!378504 lt!378503) (ite c!189365 (+ 1 lt!378503) (+ 1 lt!378504))) (rules!9205 pt!21)) (tokensListTwoByTwoPredicateSeparable!22 Lexer!1591 (slice!55 (tokens!1447 pt!21) (ite c!189365 lt!378504 lt!378503) (ite c!189365 (+ 1 lt!378503) (+ 1 lt!378504))) 0 (rules!9205 pt!21)))))

(declare-fun lt!378671 () Unit!16615)

(declare-fun Unit!16622 () Unit!16615)

(assert (=> d!318374 (= lt!378671 Unit!16622)))

(assert (=> d!318374 (= (rulesProduceEachTokenIndividuallyList!468 Lexer!1591 (rules!9205 pt!21) (list!3950 (slice!55 (tokens!1447 pt!21) (ite c!189365 lt!378504 lt!378503) (ite c!189365 (+ 1 lt!378503) (+ 1 lt!378504))))) e!721842)))

(declare-fun res!507828 () Bool)

(assert (=> d!318374 (=> res!507828 e!721842)))

(assert (=> d!318374 (= res!507828 (not (is-Cons!10940 lt!378698)))))

(assert (=> d!318374 (= lt!378698 (list!3950 (slice!55 (tokens!1447 pt!21) (ite c!189365 lt!378504 lt!378503) (ite c!189365 (+ 1 lt!378503) (+ 1 lt!378504)))))))

(assert (=> d!318374 (= lt!378716 Lexer!1591)))

(declare-fun lt!378726 () Unit!16615)

(declare-fun Unit!16623 () Unit!16615)

(assert (=> d!318374 (= lt!378726 Unit!16623)))

(declare-fun rulesProduceEachTokenIndividually!635 (LexerInterface!1593 List!10965 BalanceConc!6980) Bool)

(declare-fun forall!2623 (BalanceConc!6980 Int) Bool)

(assert (=> d!318374 (= (rulesProduceEachTokenIndividually!635 Lexer!1591 (rules!9205 pt!21) (slice!55 (tokens!1447 pt!21) (ite c!189365 lt!378504 lt!378503) (ite c!189365 (+ 1 lt!378503) (+ 1 lt!378504)))) (forall!2623 (slice!55 (tokens!1447 pt!21) (ite c!189365 lt!378504 lt!378503) (ite c!189365 (+ 1 lt!378503) (+ 1 lt!378504))) lambda!45446))))

(declare-fun lt!378675 () Unit!16615)

(declare-fun lt!378719 () Unit!16615)

(assert (=> d!318374 (= lt!378675 lt!378719)))

(declare-fun lt!378711 () List!10964)

(assert (=> d!318374 (forall!2622 lt!378711 lambda!45446)))

(declare-fun lt!378718 () List!10964)

(assert (=> d!318374 (= lt!378719 (lemmaForallSubseq!70 lt!378711 lt!378718 lambda!45446))))

(assert (=> d!318374 (= lt!378718 (list!3950 (tokens!1447 pt!21)))))

(assert (=> d!318374 (= lt!378711 (list!3950 (slice!55 (tokens!1447 pt!21) (ite c!189365 lt!378504 lt!378503) (ite c!189365 (+ 1 lt!378503) (+ 1 lt!378504)))))))

(declare-fun lt!378674 () Unit!16615)

(declare-fun lt!378673 () Unit!16615)

(assert (=> d!318374 (= lt!378674 lt!378673)))

(declare-fun lt!378666 () List!10964)

(declare-fun slice!56 (List!10964 Int Int) List!10964)

(assert (=> d!318374 (subseq!170 (slice!56 lt!378666 (ite c!189365 lt!378504 lt!378503) (ite c!189365 (+ 1 lt!378503) (+ 1 lt!378504))) lt!378666)))

(declare-fun lemmaSliceSubseq!11 (List!10964 Int Int) Unit!16615)

(assert (=> d!318374 (= lt!378673 (lemmaSliceSubseq!11 lt!378666 (ite c!189365 lt!378504 lt!378503) (ite c!189365 (+ 1 lt!378503) (+ 1 lt!378504))))))

(assert (=> d!318374 (= lt!378666 (list!3950 (tokens!1447 pt!21)))))

(declare-fun lt!378663 () Unit!16615)

(declare-fun Unit!16624 () Unit!16615)

(assert (=> d!318374 (= lt!378663 Unit!16624)))

(declare-fun e!721847 () Bool)

(assert (=> d!318374 (= (rulesProduceEachTokenIndividuallyList!468 Lexer!1591 (rules!9205 pt!21) (list!3950 (tokens!1447 pt!21))) e!721847)))

(declare-fun res!507834 () Bool)

(assert (=> d!318374 (=> res!507834 e!721847)))

(declare-fun lt!378717 () List!10964)

(assert (=> d!318374 (= res!507834 (not (is-Cons!10940 lt!378717)))))

(assert (=> d!318374 (= lt!378717 (list!3950 (tokens!1447 pt!21)))))

(declare-fun lt!378712 () LexerInterface!1593)

(assert (=> d!318374 (= lt!378712 Lexer!1591)))

(declare-fun lt!378686 () Unit!16615)

(declare-fun Unit!16625 () Unit!16615)

(assert (=> d!318374 (= lt!378686 Unit!16625)))

(assert (=> d!318374 (= (rulesProduceEachTokenIndividually!635 Lexer!1591 (rules!9205 pt!21) (tokens!1447 pt!21)) (forall!2623 (tokens!1447 pt!21) lambda!45446))))

(declare-fun lt!378668 () Unit!16615)

(declare-fun lemmaInvariant!85 (PrintableTokens!458) Unit!16615)

(assert (=> d!318374 (= lt!378668 (lemmaInvariant!85 pt!21))))

(assert (=> d!318374 e!721850))

(declare-fun res!507832 () Bool)

(assert (=> d!318374 (=> (not res!507832) (not e!721850))))

(assert (=> d!318374 (= res!507832 (and (<= 0 (ite c!189365 lt!378504 lt!378503)) (<= (ite c!189365 lt!378504 lt!378503) (ite c!189365 (+ 1 lt!378503) (+ 1 lt!378504)))))))

(assert (=> d!318374 (= (slice!53 pt!21 (ite c!189365 lt!378504 lt!378503) (ite c!189365 (+ 1 lt!378503) (+ 1 lt!378504))) lt!378695)))

(declare-fun b!1129997 () Bool)

(assert (=> b!1129997 (= e!721851 (rulesProduceEachTokenIndividuallyList!468 lt!378676 (rules!9205 pt!21) (t!106764 lt!378708)))))

(declare-fun b!1129998 () Bool)

(assert (=> b!1129998 (= e!721840 (tokensListTwoByTwoPredicateSeparable!22 lt!378672 (tokens!1447 pt!21) (+ lt!378702 1) (rules!9205 pt!21)))))

(declare-fun e!721845 () Bool)

(declare-fun b!1129999 () Bool)

(assert (=> b!1129999 (= e!721845 (rulesProduceEachTokenIndividuallyList!468 lt!378712 (rules!9205 pt!21) (t!106764 lt!378717)))))

(declare-fun b!1130000 () Bool)

(assert (=> b!1130000 (= e!721847 e!721845)))

(declare-fun res!507835 () Bool)

(assert (=> b!1130000 (=> (not res!507835) (not e!721845))))

(assert (=> b!1130000 (= res!507835 (rulesProduceIndividualToken!640 lt!378712 (rules!9205 pt!21) (h!16341 lt!378717)))))

(assert (= (and d!318374 res!507832) b!1129989))

(assert (= (and d!318374 (not res!507834)) b!1130000))

(assert (= (and b!1130000 res!507835) b!1129999))

(assert (= (and d!318374 (not res!507828)) b!1129993))

(assert (= (and b!1129993 res!507827) b!1129988))

(assert (= (and d!318374 (not res!507836)) b!1129991))

(assert (= (and b!1129991 res!507839) b!1129998))

(assert (= (and d!318374 (not res!507838)) b!1129990))

(assert (= (and b!1129990 res!507831) b!1129997))

(assert (= (and d!318374 res!507829) b!1129987))

(assert (= (and d!318374 (not res!507840)) b!1129992))

(assert (= (and b!1129992 res!507833) b!1129996))

(assert (= (and d!318374 res!507837) b!1129994))

(assert (= (and d!318374 res!507830) b!1129995))

(declare-fun m!1278627 () Bool)

(assert (=> b!1129990 m!1278627))

(declare-fun m!1278629 () Bool)

(assert (=> b!1129989 m!1278629))

(declare-fun m!1278631 () Bool)

(assert (=> b!1129994 m!1278631))

(assert (=> b!1129994 m!1278631))

(declare-fun m!1278633 () Bool)

(assert (=> b!1129994 m!1278633))

(declare-fun m!1278635 () Bool)

(assert (=> b!1129994 m!1278635))

(declare-fun m!1278637 () Bool)

(assert (=> b!1129994 m!1278637))

(declare-fun m!1278639 () Bool)

(assert (=> b!1129988 m!1278639))

(declare-fun m!1278641 () Bool)

(assert (=> b!1129996 m!1278641))

(declare-fun m!1278643 () Bool)

(assert (=> b!1129992 m!1278643))

(declare-fun m!1278645 () Bool)

(assert (=> b!1129998 m!1278645))

(declare-fun m!1278647 () Bool)

(assert (=> b!1129999 m!1278647))

(declare-fun m!1278649 () Bool)

(assert (=> b!1129987 m!1278649))

(declare-fun m!1278651 () Bool)

(assert (=> b!1129987 m!1278651))

(declare-fun m!1278653 () Bool)

(assert (=> b!1129987 m!1278653))

(declare-fun m!1278655 () Bool)

(assert (=> b!1129987 m!1278655))

(assert (=> b!1129987 m!1278651))

(declare-fun m!1278657 () Bool)

(assert (=> b!1129987 m!1278657))

(declare-fun m!1278659 () Bool)

(assert (=> b!1129987 m!1278659))

(assert (=> b!1129987 m!1278651))

(declare-fun m!1278661 () Bool)

(assert (=> b!1129993 m!1278661))

(declare-fun m!1278663 () Bool)

(assert (=> b!1129991 m!1278663))

(declare-fun m!1278665 () Bool)

(assert (=> b!1129991 m!1278665))

(declare-fun m!1278667 () Bool)

(assert (=> b!1129991 m!1278667))

(assert (=> b!1129991 m!1278665))

(declare-fun m!1278669 () Bool)

(assert (=> b!1129991 m!1278669))

(declare-fun m!1278671 () Bool)

(assert (=> b!1129991 m!1278671))

(declare-fun m!1278673 () Bool)

(assert (=> b!1129991 m!1278673))

(declare-fun m!1278675 () Bool)

(assert (=> b!1129991 m!1278675))

(assert (=> b!1129991 m!1278663))

(declare-fun m!1278677 () Bool)

(assert (=> b!1129991 m!1278677))

(declare-fun m!1278679 () Bool)

(assert (=> b!1129991 m!1278679))

(declare-fun m!1278681 () Bool)

(assert (=> b!1129991 m!1278681))

(declare-fun m!1278683 () Bool)

(assert (=> b!1129991 m!1278683))

(declare-fun m!1278685 () Bool)

(assert (=> b!1129991 m!1278685))

(declare-fun m!1278687 () Bool)

(assert (=> b!1129991 m!1278687))

(declare-fun m!1278689 () Bool)

(assert (=> b!1129991 m!1278689))

(assert (=> b!1129991 m!1278681))

(declare-fun m!1278691 () Bool)

(assert (=> b!1129991 m!1278691))

(declare-fun m!1278693 () Bool)

(assert (=> b!1129991 m!1278693))

(declare-fun m!1278695 () Bool)

(assert (=> b!1129991 m!1278695))

(declare-fun m!1278697 () Bool)

(assert (=> b!1129991 m!1278697))

(declare-fun m!1278699 () Bool)

(assert (=> b!1129991 m!1278699))

(declare-fun m!1278701 () Bool)

(assert (=> b!1129991 m!1278701))

(assert (=> b!1129991 m!1278673))

(assert (=> b!1129991 m!1278663))

(assert (=> b!1129991 m!1278695))

(declare-fun m!1278703 () Bool)

(assert (=> b!1129991 m!1278703))

(declare-fun m!1278705 () Bool)

(assert (=> b!1129991 m!1278705))

(declare-fun m!1278707 () Bool)

(assert (=> b!1129991 m!1278707))

(declare-fun m!1278709 () Bool)

(assert (=> b!1129991 m!1278709))

(assert (=> b!1129991 m!1278705))

(declare-fun m!1278711 () Bool)

(assert (=> b!1129991 m!1278711))

(assert (=> b!1129991 m!1278705))

(assert (=> b!1129991 m!1278663))

(declare-fun m!1278713 () Bool)

(assert (=> b!1129991 m!1278713))

(declare-fun m!1278715 () Bool)

(assert (=> b!1129991 m!1278715))

(declare-fun m!1278717 () Bool)

(assert (=> b!1129991 m!1278717))

(assert (=> b!1129991 m!1278687))

(declare-fun m!1278719 () Bool)

(assert (=> b!1129997 m!1278719))

(assert (=> d!318374 m!1278631))

(declare-fun m!1278721 () Bool)

(assert (=> d!318374 m!1278721))

(declare-fun m!1278723 () Bool)

(assert (=> d!318374 m!1278723))

(declare-fun m!1278725 () Bool)

(assert (=> d!318374 m!1278725))

(declare-fun m!1278727 () Bool)

(assert (=> d!318374 m!1278727))

(assert (=> d!318374 m!1278671))

(assert (=> d!318374 m!1278723))

(assert (=> d!318374 m!1278629))

(declare-fun m!1278729 () Bool)

(assert (=> d!318374 m!1278729))

(assert (=> d!318374 m!1278671))

(declare-fun m!1278731 () Bool)

(assert (=> d!318374 m!1278731))

(declare-fun m!1278733 () Bool)

(assert (=> d!318374 m!1278733))

(assert (=> d!318374 m!1278671))

(declare-fun m!1278735 () Bool)

(assert (=> d!318374 m!1278735))

(declare-fun m!1278739 () Bool)

(assert (=> d!318374 m!1278739))

(assert (=> d!318374 m!1278723))

(declare-fun m!1278743 () Bool)

(assert (=> d!318374 m!1278743))

(declare-fun m!1278747 () Bool)

(assert (=> d!318374 m!1278747))

(assert (=> d!318374 m!1278651))

(declare-fun m!1278749 () Bool)

(assert (=> d!318374 m!1278749))

(assert (=> d!318374 m!1278733))

(declare-fun m!1278751 () Bool)

(assert (=> d!318374 m!1278751))

(assert (=> d!318374 m!1278651))

(declare-fun m!1278753 () Bool)

(assert (=> d!318374 m!1278753))

(declare-fun m!1278755 () Bool)

(assert (=> d!318374 m!1278755))

(assert (=> d!318374 m!1278723))

(declare-fun m!1278757 () Bool)

(assert (=> d!318374 m!1278757))

(assert (=> d!318374 m!1278723))

(declare-fun m!1278759 () Bool)

(assert (=> d!318374 m!1278759))

(assert (=> d!318374 m!1278631))

(declare-fun m!1278761 () Bool)

(assert (=> d!318374 m!1278761))

(declare-fun m!1278763 () Bool)

(assert (=> d!318374 m!1278763))

(declare-fun m!1278765 () Bool)

(assert (=> d!318374 m!1278765))

(assert (=> d!318374 m!1278723))

(declare-fun m!1278767 () Bool)

(assert (=> d!318374 m!1278767))

(assert (=> d!318374 m!1278759))

(declare-fun m!1278769 () Bool)

(assert (=> d!318374 m!1278769))

(declare-fun m!1278771 () Bool)

(assert (=> d!318374 m!1278771))

(declare-fun m!1278773 () Bool)

(assert (=> d!318374 m!1278773))

(declare-fun m!1278775 () Bool)

(assert (=> d!318374 m!1278775))

(assert (=> d!318374 m!1278773))

(declare-fun m!1278777 () Bool)

(assert (=> d!318374 m!1278777))

(declare-fun m!1278779 () Bool)

(assert (=> d!318374 m!1278779))

(declare-fun m!1278781 () Bool)

(assert (=> b!1130000 m!1278781))

(declare-fun m!1278783 () Bool)

(assert (=> b!1129995 m!1278783))

(assert (=> b!1129995 m!1278723))

(assert (=> b!1129995 m!1278723))

(assert (=> b!1129995 m!1278759))

(assert (=> bm!80620 d!318374))

(declare-fun d!318382 () Bool)

(declare-fun c!189387 () Bool)

(assert (=> d!318382 (= c!189387 (is-Node!3481 (c!189370 indices!2)))))

(declare-fun e!721870 () Bool)

(assert (=> d!318382 (= (inv!14125 (c!189370 indices!2)) e!721870)))

(declare-fun b!1130021 () Bool)

(declare-fun inv!14137 (Conc!3481) Bool)

(assert (=> b!1130021 (= e!721870 (inv!14137 (c!189370 indices!2)))))

(declare-fun b!1130022 () Bool)

(declare-fun e!721871 () Bool)

(assert (=> b!1130022 (= e!721870 e!721871)))

(declare-fun res!507849 () Bool)

(assert (=> b!1130022 (= res!507849 (not (is-Leaf!5435 (c!189370 indices!2))))))

(assert (=> b!1130022 (=> res!507849 e!721871)))

(declare-fun b!1130023 () Bool)

(declare-fun inv!14138 (Conc!3481) Bool)

(assert (=> b!1130023 (= e!721871 (inv!14138 (c!189370 indices!2)))))

(assert (= (and d!318382 c!189387) b!1130021))

(assert (= (and d!318382 (not c!189387)) b!1130022))

(assert (= (and b!1130022 (not res!507849)) b!1130023))

(declare-fun m!1278791 () Bool)

(assert (=> b!1130021 m!1278791))

(declare-fun m!1278793 () Bool)

(assert (=> b!1130023 m!1278793))

(assert (=> b!1129894 d!318382))

(declare-fun d!318388 () Bool)

(assert (=> d!318388 (= (usesJsonRules!0 e!721771) (= (rules!9205 e!721771) (rules!109 JsonLexer!305)))))

(declare-fun bs!277565 () Bool)

(assert (= bs!277565 d!318388))

(assert (=> bs!277565 m!1278603))

(assert (=> b!1129884 d!318388))

(declare-fun d!318390 () Bool)

(declare-fun lt!378738 () Int)

(declare-fun apply!2256 (List!10967 Int) Int)

(assert (=> d!318390 (= lt!378738 (apply!2256 (list!3949 indices!2) 1))))

(declare-fun apply!2257 (Conc!3481 Int) Int)

(assert (=> d!318390 (= lt!378738 (apply!2257 (c!189370 indices!2) 1))))

(declare-fun e!721880 () Bool)

(assert (=> d!318390 e!721880))

(declare-fun res!507855 () Bool)

(assert (=> d!318390 (=> (not res!507855) (not e!721880))))

(assert (=> d!318390 (= res!507855 (<= 0 1))))

(assert (=> d!318390 (= (apply!2252 indices!2 1) lt!378738)))

(declare-fun b!1130035 () Bool)

(assert (=> b!1130035 (= e!721880 (< 1 (size!8515 indices!2)))))

(assert (= (and d!318390 res!507855) b!1130035))

(assert (=> d!318390 m!1278619))

(assert (=> d!318390 m!1278619))

(declare-fun m!1278799 () Bool)

(assert (=> d!318390 m!1278799))

(declare-fun m!1278801 () Bool)

(assert (=> d!318390 m!1278801))

(assert (=> b!1130035 m!1278545))

(assert (=> b!1129884 d!318390))

(declare-fun d!318394 () Bool)

(declare-fun lt!378739 () Int)

(assert (=> d!318394 (= lt!378739 (apply!2256 (list!3949 indices!2) 0))))

(assert (=> d!318394 (= lt!378739 (apply!2257 (c!189370 indices!2) 0))))

(declare-fun e!721881 () Bool)

(assert (=> d!318394 e!721881))

(declare-fun res!507856 () Bool)

(assert (=> d!318394 (=> (not res!507856) (not e!721881))))

(assert (=> d!318394 (= res!507856 (<= 0 0))))

(assert (=> d!318394 (= (apply!2252 indices!2 0) lt!378739)))

(declare-fun b!1130036 () Bool)

(assert (=> b!1130036 (= e!721881 (< 0 (size!8515 indices!2)))))

(assert (= (and d!318394 res!507856) b!1130036))

(assert (=> d!318394 m!1278619))

(assert (=> d!318394 m!1278619))

(declare-fun m!1278803 () Bool)

(assert (=> d!318394 m!1278803))

(declare-fun m!1278805 () Bool)

(assert (=> d!318394 m!1278805))

(assert (=> b!1130036 m!1278545))

(assert (=> b!1129884 d!318394))

(declare-fun d!318396 () Bool)

(declare-fun lt!378745 () Bool)

(declare-fun forall!2624 (List!10967 Int) Bool)

(assert (=> d!318396 (= lt!378745 (forall!2624 (list!3949 indices!2) lambda!45424))))

(declare-fun forall!2625 (Conc!3481 Int) Bool)

(assert (=> d!318396 (= lt!378745 (forall!2625 (c!189370 indices!2) lambda!45424))))

(assert (=> d!318396 (= (forall!2615 indices!2 lambda!45424) lt!378745)))

(declare-fun bs!277567 () Bool)

(assert (= bs!277567 d!318396))

(assert (=> bs!277567 m!1278619))

(assert (=> bs!277567 m!1278619))

(declare-fun m!1278809 () Bool)

(assert (=> bs!277567 m!1278809))

(declare-fun m!1278811 () Bool)

(assert (=> bs!277567 m!1278811))

(assert (=> b!1129887 d!318396))

(declare-fun d!318400 () Bool)

(assert (=> d!318400 (= (size!8514 pt!21) (size!8521 (tokens!1447 pt!21)))))

(declare-fun bs!277568 () Bool)

(assert (= bs!277568 d!318400))

(assert (=> bs!277568 m!1278629))

(assert (=> start!97052 d!318400))

(declare-fun d!318402 () Bool)

(declare-fun res!507867 () Bool)

(declare-fun e!721888 () Bool)

(assert (=> d!318402 (=> (not res!507867) (not e!721888))))

(declare-fun isEmpty!6783 (List!10965) Bool)

(assert (=> d!318402 (= res!507867 (not (isEmpty!6783 (rules!9205 pt!21))))))

(assert (=> d!318402 (= (inv!14121 pt!21) e!721888)))

(declare-fun b!1130047 () Bool)

(declare-fun res!507868 () Bool)

(assert (=> b!1130047 (=> (not res!507868) (not e!721888))))

(declare-fun rulesInvariant!1467 (LexerInterface!1593 List!10965) Bool)

(assert (=> b!1130047 (= res!507868 (rulesInvariant!1467 Lexer!1591 (rules!9205 pt!21)))))

(declare-fun b!1130048 () Bool)

(declare-fun res!507869 () Bool)

(assert (=> b!1130048 (=> (not res!507869) (not e!721888))))

(assert (=> b!1130048 (= res!507869 (rulesProduceEachTokenIndividually!635 Lexer!1591 (rules!9205 pt!21) (tokens!1447 pt!21)))))

(declare-fun b!1130049 () Bool)

(assert (=> b!1130049 (= e!721888 (separableTokens!62 Lexer!1591 (tokens!1447 pt!21) (rules!9205 pt!21)))))

(assert (= (and d!318402 res!507867) b!1130047))

(assert (= (and b!1130047 res!507868) b!1130048))

(assert (= (and b!1130048 res!507869) b!1130049))

(declare-fun m!1278829 () Bool)

(assert (=> d!318402 m!1278829))

(declare-fun m!1278831 () Bool)

(assert (=> b!1130047 m!1278831))

(assert (=> b!1130048 m!1278771))

(declare-fun m!1278833 () Bool)

(assert (=> b!1130049 m!1278833))

(assert (=> start!97052 d!318402))

(declare-fun d!318416 () Bool)

(declare-fun isBalanced!960 (Conc!3481) Bool)

(assert (=> d!318416 (= (inv!14122 indices!2) (isBalanced!960 (c!189370 indices!2)))))

(declare-fun bs!277573 () Bool)

(assert (= bs!277573 d!318416))

(declare-fun m!1278835 () Bool)

(assert (=> bs!277573 m!1278835))

(assert (=> start!97052 d!318416))

(declare-fun d!318418 () Bool)

(declare-fun isBalanced!961 (Conc!3480) Bool)

(assert (=> d!318418 (= (inv!14123 acc!225) (isBalanced!961 (c!189369 acc!225)))))

(declare-fun bs!277574 () Bool)

(assert (= bs!277574 d!318418))

(declare-fun m!1278837 () Bool)

(assert (=> bs!277574 m!1278837))

(assert (=> start!97052 d!318418))

(declare-fun tp!330720 () Bool)

(declare-fun b!1130058 () Bool)

(declare-fun e!721893 () Bool)

(declare-fun tp!330719 () Bool)

(assert (=> b!1130058 (= e!721893 (and (inv!14120 (left!9490 (c!189368 (tokens!1447 pt!21)))) tp!330719 (inv!14120 (right!9820 (c!189368 (tokens!1447 pt!21)))) tp!330720))))

(declare-fun b!1130060 () Bool)

(declare-fun e!721894 () Bool)

(declare-fun tp!330721 () Bool)

(assert (=> b!1130060 (= e!721894 tp!330721)))

(declare-fun b!1130059 () Bool)

(declare-fun inv!14139 (IArray!6963) Bool)

(assert (=> b!1130059 (= e!721893 (and (inv!14139 (xs!6172 (c!189368 (tokens!1447 pt!21)))) e!721894))))

(assert (=> b!1129888 (= tp!330700 (and (inv!14120 (c!189368 (tokens!1447 pt!21))) e!721893))))

(assert (= (and b!1129888 (is-Node!3479 (c!189368 (tokens!1447 pt!21)))) b!1130058))

(assert (= b!1130059 b!1130060))

(assert (= (and b!1129888 (is-Leaf!5433 (c!189368 (tokens!1447 pt!21)))) b!1130059))

(declare-fun m!1278839 () Bool)

(assert (=> b!1130058 m!1278839))

(declare-fun m!1278841 () Bool)

(assert (=> b!1130058 m!1278841))

(declare-fun m!1278843 () Bool)

(assert (=> b!1130059 m!1278843))

(assert (=> b!1129888 m!1278535))

(declare-fun tp!330727 () Bool)

(declare-fun e!721899 () Bool)

(declare-fun b!1130067 () Bool)

(declare-fun tp!330726 () Bool)

(assert (=> b!1130067 (= e!721899 (and (inv!14125 (left!9492 (c!189370 indices!2))) tp!330726 (inv!14125 (right!9822 (c!189370 indices!2))) tp!330727))))

(declare-fun b!1130068 () Bool)

(declare-fun inv!14140 (IArray!6967) Bool)

(assert (=> b!1130068 (= e!721899 (inv!14140 (xs!6174 (c!189370 indices!2))))))

(assert (=> b!1129894 (= tp!330697 (and (inv!14125 (c!189370 indices!2)) e!721899))))

(assert (= (and b!1129894 (is-Node!3481 (c!189370 indices!2))) b!1130067))

(assert (= (and b!1129894 (is-Leaf!5435 (c!189370 indices!2))) b!1130068))

(declare-fun m!1278845 () Bool)

(assert (=> b!1130067 m!1278845))

(declare-fun m!1278847 () Bool)

(assert (=> b!1130067 m!1278847))

(declare-fun m!1278849 () Bool)

(assert (=> b!1130068 m!1278849))

(assert (=> b!1129894 m!1278559))

(declare-fun b!1130079 () Bool)

(declare-fun b_free!27313 () Bool)

(declare-fun b_next!28017 () Bool)

(assert (=> b!1130079 (= b_free!27313 (not b_next!28017))))

(declare-fun tp!330736 () Bool)

(declare-fun b_and!79913 () Bool)

(assert (=> b!1130079 (= tp!330736 b_and!79913)))

(declare-fun b_free!27315 () Bool)

(declare-fun b_next!28019 () Bool)

(assert (=> b!1130079 (= b_free!27315 (not b_next!28019))))

(declare-fun tp!330734 () Bool)

(declare-fun b_and!79915 () Bool)

(assert (=> b!1130079 (= tp!330734 b_and!79915)))

(declare-fun e!721911 () Bool)

(assert (=> b!1130079 (= e!721911 (and tp!330736 tp!330734))))

(declare-fun b!1130078 () Bool)

(declare-fun e!721910 () Bool)

(declare-fun inv!14116 (String!13350) Bool)

(declare-fun inv!14141 (TokenValueInjection!3604) Bool)

(assert (=> b!1130078 (= e!721910 (and (inv!14116 (tag!2148 (h!16342 (rules!9205 pt!21)))) (inv!14141 (transformation!1886 (h!16342 (rules!9205 pt!21)))) e!721911))))

(declare-fun b!1130077 () Bool)

(declare-fun e!721909 () Bool)

(declare-fun tp!330735 () Bool)

(assert (=> b!1130077 (= e!721909 (and e!721910 tp!330735))))

(assert (=> b!1129891 (= tp!330698 e!721909)))

(assert (= b!1130078 b!1130079))

(assert (= b!1130077 b!1130078))

(assert (= (and b!1129891 (is-Cons!10941 (rules!9205 pt!21))) b!1130077))

(declare-fun m!1278851 () Bool)

(assert (=> b!1130078 m!1278851))

(declare-fun m!1278853 () Bool)

(assert (=> b!1130078 m!1278853))

(declare-fun tp!330743 () Bool)

(declare-fun tp!330744 () Bool)

(declare-fun e!721917 () Bool)

(declare-fun b!1130088 () Bool)

(assert (=> b!1130088 (= e!721917 (and (inv!14119 (left!9491 (c!189369 acc!225))) tp!330743 (inv!14119 (right!9821 (c!189369 acc!225))) tp!330744))))

(declare-fun b!1130090 () Bool)

(declare-fun e!721918 () Bool)

(declare-fun tp!330745 () Bool)

(assert (=> b!1130090 (= e!721918 tp!330745)))

(declare-fun b!1130089 () Bool)

(declare-fun inv!14142 (IArray!6965) Bool)

(assert (=> b!1130089 (= e!721917 (and (inv!14142 (xs!6173 (c!189369 acc!225))) e!721918))))

(assert (=> b!1129883 (= tp!330699 (and (inv!14119 (c!189369 acc!225)) e!721917))))

(assert (= (and b!1129883 (is-Node!3480 (c!189369 acc!225))) b!1130088))

(assert (= b!1130089 b!1130090))

(assert (= (and b!1129883 (is-Leaf!5434 (c!189369 acc!225))) b!1130089))

(declare-fun m!1278855 () Bool)

(assert (=> b!1130088 m!1278855))

(declare-fun m!1278857 () Bool)

(assert (=> b!1130088 m!1278857))

(declare-fun m!1278859 () Bool)

(assert (=> b!1130089 m!1278859))

(assert (=> b!1129883 m!1278561))

(declare-fun b_lambda!33215 () Bool)

(assert (= b_lambda!33211 (or b!1129890 b_lambda!33215)))

(declare-fun bs!277575 () Bool)

(declare-fun d!318420 () Bool)

(assert (= bs!277575 (and d!318420 b!1129890)))

(assert (=> bs!277575 (= (dynLambda!4816 lambda!45425 (h!16343 (list!3946 acc!225))) (usesJsonRules!0 (h!16343 (list!3946 acc!225))))))

(declare-fun m!1278861 () Bool)

(assert (=> bs!277575 m!1278861))

(assert (=> b!1129948 d!318420))

(push 1)

(assert (not b!1129994))

(assert (not b!1129949))

(assert (not b!1130021))

(assert (not b!1130067))

(assert (not b!1129999))

(assert (not b!1129989))

(assert (not d!318362))

(assert b_and!79913)

(assert (not d!318400))

(assert (not bs!277575))

(assert (not d!318418))

(assert (not b!1130007))

(assert (not b!1129941))

(assert (not d!318396))

(assert (not b!1129995))

(assert (not b!1129883))

(assert (not b!1130068))

(assert (not b!1130036))

(assert (not b!1130089))

(assert (not b!1130023))

(assert (not b!1129988))

(assert (not d!318372))

(assert (not b!1129990))

(assert (not d!318368))

(assert (not b!1130078))

(assert (not b!1130059))

(assert (not b!1129997))

(assert (not d!318364))

(assert (not b_next!28019))

(assert (not b!1130047))

(assert (not b!1130035))

(assert (not d!318388))

(assert (not b!1130088))

(assert (not b!1130048))

(assert (not d!318394))

(assert (not b!1129992))

(assert (not b!1129998))

(assert (not b!1130058))

(assert (not d!318374))

(assert (not b!1130060))

(assert b_and!79915)

(assert (not b!1129991))

(assert (not b!1129996))

(assert (not b_lambda!33215))

(assert (not d!318360))

(assert (not b!1129987))

(assert (not b_next!28017))

(assert (not b!1129958))

(assert (not b!1129993))

(assert (not b!1130090))

(assert (not d!318402))

(assert (not d!318390))

(assert (not b!1129943))

(assert (not b!1130000))

(assert (not b!1129888))

(assert (not b!1130077))

(assert (not b!1129956))

(assert (not b!1129894))

(assert (not d!318416))

(assert (not b!1130049))

(assert (not b!1130008))

(check-sat)

(pop 1)

(push 1)

(assert b_and!79915)

(assert b_and!79913)

(assert (not b_next!28017))

(assert (not b_next!28019))

(check-sat)

(pop 1)

