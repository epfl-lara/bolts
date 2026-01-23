; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353236 () Bool)

(assert start!353236)

(declare-fun b!3761471 () Bool)

(declare-fun e!2326476 () Bool)

(declare-datatypes ((C!22308 0))(
  ( (C!22309 (val!13230 Int)) )
))
(declare-datatypes ((List!40263 0))(
  ( (Nil!40139) (Cons!40139 (h!45559 C!22308) (t!303912 List!40263)) )
))
(declare-datatypes ((IArray!24601 0))(
  ( (IArray!24602 (innerList!12358 List!40263)) )
))
(declare-datatypes ((Conc!12298 0))(
  ( (Node!12298 (left!31073 Conc!12298) (right!31403 Conc!12298) (csize!24826 Int) (cheight!12509 Int)) (Leaf!19074 (xs!15504 IArray!24601) (csize!24827 Int)) (Empty!12298) )
))
(declare-datatypes ((BalanceConc!24190 0))(
  ( (BalanceConc!24191 (c!651313 Conc!12298)) )
))
(declare-fun acc!400 () BalanceConc!24190)

(declare-fun tp!1149468 () Bool)

(declare-fun inv!53851 (Conc!12298) Bool)

(assert (=> b!3761471 (= e!2326476 (and (inv!53851 (c!651313 acc!400)) tp!1149468))))

(declare-fun res!1523158 () Bool)

(declare-fun e!2326474 () Bool)

(assert (=> start!353236 (=> (not res!1523158) (not e!2326474))))

(declare-datatypes ((LexerInterface!5745 0))(
  ( (LexerInterfaceExt!5742 (__x!24989 Int)) (Lexer!5743) )
))
(declare-fun thiss!13650 () LexerInterface!5745)

(declare-fun from!841 () Int)

(get-info :version)

(assert (=> start!353236 (= res!1523158 (and ((_ is Lexer!5743) thiss!13650) (>= from!841 0)))))

(assert (=> start!353236 e!2326474))

(assert (=> start!353236 true))

(declare-fun inv!53852 (BalanceConc!24190) Bool)

(assert (=> start!353236 (and (inv!53852 acc!400) e!2326476)))

(declare-datatypes ((List!40264 0))(
  ( (Nil!40140) (Cons!40140 (h!45560 (_ BitVec 16)) (t!303913 List!40264)) )
))
(declare-datatypes ((TokenValue!6386 0))(
  ( (FloatLiteralValue!12772 (text!45147 List!40264)) (TokenValueExt!6385 (__x!24990 Int)) (Broken!31930 (value!196027 List!40264)) (Object!6509) (End!6386) (Def!6386) (Underscore!6386) (Match!6386) (Else!6386) (Error!6386) (Case!6386) (If!6386) (Extends!6386) (Abstract!6386) (Class!6386) (Val!6386) (DelimiterValue!12772 (del!6446 List!40264)) (KeywordValue!6392 (value!196028 List!40264)) (CommentValue!12772 (value!196029 List!40264)) (WhitespaceValue!12772 (value!196030 List!40264)) (IndentationValue!6386 (value!196031 List!40264)) (String!45611) (Int32!6386) (Broken!31931 (value!196032 List!40264)) (Boolean!6387) (Unit!57861) (OperatorValue!6389 (op!6446 List!40264)) (IdentifierValue!12772 (value!196033 List!40264)) (IdentifierValue!12773 (value!196034 List!40264)) (WhitespaceValue!12773 (value!196035 List!40264)) (True!12772) (False!12772) (Broken!31932 (value!196036 List!40264)) (Broken!31933 (value!196037 List!40264)) (True!12773) (RightBrace!6386) (RightBracket!6386) (Colon!6386) (Null!6386) (Comma!6386) (LeftBracket!6386) (False!12773) (LeftBrace!6386) (ImaginaryLiteralValue!6386 (text!45148 List!40264)) (StringLiteralValue!19158 (value!196038 List!40264)) (EOFValue!6386 (value!196039 List!40264)) (IdentValue!6386 (value!196040 List!40264)) (DelimiterValue!12773 (value!196041 List!40264)) (DedentValue!6386 (value!196042 List!40264)) (NewLineValue!6386 (value!196043 List!40264)) (IntegerValue!19158 (value!196044 (_ BitVec 32)) (text!45149 List!40264)) (IntegerValue!19159 (value!196045 Int) (text!45150 List!40264)) (Times!6386) (Or!6386) (Equal!6386) (Minus!6386) (Broken!31934 (value!196046 List!40264)) (And!6386) (Div!6386) (LessEqual!6386) (Mod!6386) (Concat!17447) (Not!6386) (Plus!6386) (SpaceValue!6386 (value!196047 List!40264)) (IntegerValue!19160 (value!196048 Int) (text!45151 List!40264)) (StringLiteralValue!19159 (text!45152 List!40264)) (FloatLiteralValue!12773 (text!45153 List!40264)) (BytesLiteralValue!6386 (value!196049 List!40264)) (CommentValue!12773 (value!196050 List!40264)) (StringLiteralValue!19160 (value!196051 List!40264)) (ErrorTokenValue!6386 (msg!6447 List!40264)) )
))
(declare-datatypes ((Regex!11061 0))(
  ( (ElementMatch!11061 (c!651314 C!22308)) (Concat!17448 (regOne!22634 Regex!11061) (regTwo!22634 Regex!11061)) (EmptyExpr!11061) (Star!11061 (reg!11390 Regex!11061)) (EmptyLang!11061) (Union!11061 (regOne!22635 Regex!11061) (regTwo!22635 Regex!11061)) )
))
(declare-datatypes ((String!45612 0))(
  ( (String!45613 (value!196052 String)) )
))
(declare-datatypes ((TokenValueInjection!12200 0))(
  ( (TokenValueInjection!12201 (toValue!8512 Int) (toChars!8371 Int)) )
))
(declare-datatypes ((Rule!12112 0))(
  ( (Rule!12113 (regex!6156 Regex!11061) (tag!7016 String!45612) (isSeparator!6156 Bool) (transformation!6156 TokenValueInjection!12200)) )
))
(declare-datatypes ((Token!11450 0))(
  ( (Token!11451 (value!196053 TokenValue!6386) (rule!8920 Rule!12112) (size!30206 Int) (originalCharacters!6756 List!40263)) )
))
(declare-datatypes ((List!40265 0))(
  ( (Nil!40141) (Cons!40141 (h!45561 Token!11450) (t!303914 List!40265)) )
))
(declare-datatypes ((IArray!24603 0))(
  ( (IArray!24604 (innerList!12359 List!40265)) )
))
(declare-datatypes ((Conc!12299 0))(
  ( (Node!12299 (left!31074 Conc!12299) (right!31404 Conc!12299) (csize!24828 Int) (cheight!12510 Int)) (Leaf!19075 (xs!15505 IArray!24603) (csize!24829 Int)) (Empty!12299) )
))
(declare-datatypes ((BalanceConc!24192 0))(
  ( (BalanceConc!24193 (c!651315 Conc!12299)) )
))
(declare-fun v!6347 () BalanceConc!24192)

(declare-fun e!2326473 () Bool)

(declare-fun inv!53853 (BalanceConc!24192) Bool)

(assert (=> start!353236 (and (inv!53853 v!6347) e!2326473)))

(declare-fun b!3761469 () Bool)

(declare-fun e!2326475 () Bool)

(assert (=> b!3761469 (= e!2326474 e!2326475)))

(declare-fun res!1523157 () Bool)

(assert (=> b!3761469 (=> (not res!1523157) (not e!2326475))))

(declare-fun lt!1302053 () Int)

(assert (=> b!3761469 (= res!1523157 (and (<= from!841 lt!1302053) (>= from!841 lt!1302053)))))

(declare-fun size!30207 (BalanceConc!24192) Int)

(assert (=> b!3761469 (= lt!1302053 (size!30207 v!6347))))

(declare-fun b!3761470 () Bool)

(declare-fun lt!1302052 () List!40265)

(declare-fun lt!1302051 () List!40263)

(declare-fun printListTailRec!746 (LexerInterface!5745 List!40265 List!40263) List!40263)

(assert (=> b!3761470 (= e!2326475 (not (= lt!1302051 (printListTailRec!746 thiss!13650 lt!1302052 lt!1302051))))))

(declare-fun list!14816 (BalanceConc!24190) List!40263)

(assert (=> b!3761470 (= lt!1302051 (list!14816 acc!400))))

(declare-fun dropList!1275 (BalanceConc!24192 Int) List!40265)

(assert (=> b!3761470 (= lt!1302052 (dropList!1275 v!6347 from!841))))

(declare-fun b!3761472 () Bool)

(declare-fun tp!1149467 () Bool)

(declare-fun inv!53854 (Conc!12299) Bool)

(assert (=> b!3761472 (= e!2326473 (and (inv!53854 (c!651315 v!6347)) tp!1149467))))

(assert (= (and start!353236 res!1523158) b!3761469))

(assert (= (and b!3761469 res!1523157) b!3761470))

(assert (= start!353236 b!3761471))

(assert (= start!353236 b!3761472))

(declare-fun m!4255641 () Bool)

(assert (=> b!3761470 m!4255641))

(declare-fun m!4255643 () Bool)

(assert (=> b!3761470 m!4255643))

(declare-fun m!4255645 () Bool)

(assert (=> b!3761470 m!4255645))

(declare-fun m!4255647 () Bool)

(assert (=> start!353236 m!4255647))

(declare-fun m!4255649 () Bool)

(assert (=> start!353236 m!4255649))

(declare-fun m!4255651 () Bool)

(assert (=> b!3761472 m!4255651))

(declare-fun m!4255653 () Bool)

(assert (=> b!3761469 m!4255653))

(declare-fun m!4255655 () Bool)

(assert (=> b!3761471 m!4255655))

(check-sat (not b!3761471) (not b!3761469) (not start!353236) (not b!3761470) (not b!3761472))
(check-sat)
(get-model)

(declare-fun d!1098706 () Bool)

(declare-fun c!651321 () Bool)

(assert (=> d!1098706 (= c!651321 ((_ is Node!12299) (c!651315 v!6347)))))

(declare-fun e!2326487 () Bool)

(assert (=> d!1098706 (= (inv!53854 (c!651315 v!6347)) e!2326487)))

(declare-fun b!3761488 () Bool)

(declare-fun inv!53855 (Conc!12299) Bool)

(assert (=> b!3761488 (= e!2326487 (inv!53855 (c!651315 v!6347)))))

(declare-fun b!3761489 () Bool)

(declare-fun e!2326488 () Bool)

(assert (=> b!3761489 (= e!2326487 e!2326488)))

(declare-fun res!1523164 () Bool)

(assert (=> b!3761489 (= res!1523164 (not ((_ is Leaf!19075) (c!651315 v!6347))))))

(assert (=> b!3761489 (=> res!1523164 e!2326488)))

(declare-fun b!3761490 () Bool)

(declare-fun inv!53857 (Conc!12299) Bool)

(assert (=> b!3761490 (= e!2326488 (inv!53857 (c!651315 v!6347)))))

(assert (= (and d!1098706 c!651321) b!3761488))

(assert (= (and d!1098706 (not c!651321)) b!3761489))

(assert (= (and b!3761489 (not res!1523164)) b!3761490))

(declare-fun m!4255661 () Bool)

(assert (=> b!3761488 m!4255661))

(declare-fun m!4255663 () Bool)

(assert (=> b!3761490 m!4255663))

(assert (=> b!3761472 d!1098706))

(declare-fun d!1098712 () Bool)

(declare-fun c!651324 () Bool)

(assert (=> d!1098712 (= c!651324 ((_ is Node!12298) (c!651313 acc!400)))))

(declare-fun e!2326493 () Bool)

(assert (=> d!1098712 (= (inv!53851 (c!651313 acc!400)) e!2326493)))

(declare-fun b!3761497 () Bool)

(declare-fun inv!53859 (Conc!12298) Bool)

(assert (=> b!3761497 (= e!2326493 (inv!53859 (c!651313 acc!400)))))

(declare-fun b!3761498 () Bool)

(declare-fun e!2326494 () Bool)

(assert (=> b!3761498 (= e!2326493 e!2326494)))

(declare-fun res!1523167 () Bool)

(assert (=> b!3761498 (= res!1523167 (not ((_ is Leaf!19074) (c!651313 acc!400))))))

(assert (=> b!3761498 (=> res!1523167 e!2326494)))

(declare-fun b!3761499 () Bool)

(declare-fun inv!53860 (Conc!12298) Bool)

(assert (=> b!3761499 (= e!2326494 (inv!53860 (c!651313 acc!400)))))

(assert (= (and d!1098712 c!651324) b!3761497))

(assert (= (and d!1098712 (not c!651324)) b!3761498))

(assert (= (and b!3761498 (not res!1523167)) b!3761499))

(declare-fun m!4255665 () Bool)

(assert (=> b!3761497 m!4255665))

(declare-fun m!4255667 () Bool)

(assert (=> b!3761499 m!4255667))

(assert (=> b!3761471 d!1098712))

(declare-fun lt!1302083 () List!40263)

(declare-fun d!1098714 () Bool)

(declare-fun ++!9954 (List!40263 List!40263) List!40263)

(declare-fun printList!1661 (LexerInterface!5745 List!40265) List!40263)

(assert (=> d!1098714 (= lt!1302083 (++!9954 lt!1302051 (printList!1661 thiss!13650 lt!1302052)))))

(declare-fun e!2326500 () List!40263)

(assert (=> d!1098714 (= lt!1302083 e!2326500)))

(declare-fun c!651330 () Bool)

(assert (=> d!1098714 (= c!651330 ((_ is Cons!40141) lt!1302052))))

(assert (=> d!1098714 (= (printListTailRec!746 thiss!13650 lt!1302052 lt!1302051) lt!1302083)))

(declare-fun b!3761510 () Bool)

(declare-fun charsOf!4006 (Token!11450) BalanceConc!24190)

(assert (=> b!3761510 (= e!2326500 (printListTailRec!746 thiss!13650 (t!303914 lt!1302052) (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))

(declare-fun lt!1302080 () List!40263)

(assert (=> b!3761510 (= lt!1302080 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))

(declare-fun lt!1302082 () List!40263)

(assert (=> b!3761510 (= lt!1302082 (printList!1661 thiss!13650 (t!303914 lt!1302052)))))

(declare-datatypes ((Unit!57864 0))(
  ( (Unit!57865) )
))
(declare-fun lt!1302081 () Unit!57864)

(declare-fun lemmaConcatAssociativity!2104 (List!40263 List!40263 List!40263) Unit!57864)

(assert (=> b!3761510 (= lt!1302081 (lemmaConcatAssociativity!2104 lt!1302051 lt!1302080 lt!1302082))))

(assert (=> b!3761510 (= (++!9954 (++!9954 lt!1302051 lt!1302080) lt!1302082) (++!9954 lt!1302051 (++!9954 lt!1302080 lt!1302082)))))

(declare-fun lt!1302079 () Unit!57864)

(assert (=> b!3761510 (= lt!1302079 lt!1302081)))

(declare-fun b!3761511 () Bool)

(assert (=> b!3761511 (= e!2326500 lt!1302051)))

(assert (= (and d!1098714 c!651330) b!3761510))

(assert (= (and d!1098714 (not c!651330)) b!3761511))

(declare-fun m!4255695 () Bool)

(assert (=> d!1098714 m!4255695))

(assert (=> d!1098714 m!4255695))

(declare-fun m!4255697 () Bool)

(assert (=> d!1098714 m!4255697))

(declare-fun m!4255699 () Bool)

(assert (=> b!3761510 m!4255699))

(declare-fun m!4255701 () Bool)

(assert (=> b!3761510 m!4255701))

(declare-fun m!4255703 () Bool)

(assert (=> b!3761510 m!4255703))

(declare-fun m!4255705 () Bool)

(assert (=> b!3761510 m!4255705))

(assert (=> b!3761510 m!4255701))

(declare-fun m!4255707 () Bool)

(assert (=> b!3761510 m!4255707))

(declare-fun m!4255709 () Bool)

(assert (=> b!3761510 m!4255709))

(declare-fun m!4255711 () Bool)

(assert (=> b!3761510 m!4255711))

(declare-fun m!4255713 () Bool)

(assert (=> b!3761510 m!4255713))

(assert (=> b!3761510 m!4255711))

(assert (=> b!3761510 m!4255707))

(declare-fun m!4255715 () Bool)

(assert (=> b!3761510 m!4255715))

(declare-fun m!4255717 () Bool)

(assert (=> b!3761510 m!4255717))

(assert (=> b!3761510 m!4255699))

(assert (=> b!3761510 m!4255703))

(assert (=> b!3761470 d!1098714))

(declare-fun d!1098720 () Bool)

(declare-fun list!14819 (Conc!12298) List!40263)

(assert (=> d!1098720 (= (list!14816 acc!400) (list!14819 (c!651313 acc!400)))))

(declare-fun bs!575803 () Bool)

(assert (= bs!575803 d!1098720))

(declare-fun m!4255723 () Bool)

(assert (=> bs!575803 m!4255723))

(assert (=> b!3761470 d!1098720))

(declare-fun d!1098724 () Bool)

(declare-fun drop!2101 (List!40265 Int) List!40265)

(declare-fun list!14820 (Conc!12299) List!40265)

(assert (=> d!1098724 (= (dropList!1275 v!6347 from!841) (drop!2101 (list!14820 (c!651315 v!6347)) from!841))))

(declare-fun bs!575806 () Bool)

(assert (= bs!575806 d!1098724))

(declare-fun m!4255729 () Bool)

(assert (=> bs!575806 m!4255729))

(assert (=> bs!575806 m!4255729))

(declare-fun m!4255731 () Bool)

(assert (=> bs!575806 m!4255731))

(assert (=> b!3761470 d!1098724))

(declare-fun d!1098730 () Bool)

(declare-fun isBalanced!3537 (Conc!12298) Bool)

(assert (=> d!1098730 (= (inv!53852 acc!400) (isBalanced!3537 (c!651313 acc!400)))))

(declare-fun bs!575807 () Bool)

(assert (= bs!575807 d!1098730))

(declare-fun m!4255733 () Bool)

(assert (=> bs!575807 m!4255733))

(assert (=> start!353236 d!1098730))

(declare-fun d!1098732 () Bool)

(declare-fun isBalanced!3538 (Conc!12299) Bool)

(assert (=> d!1098732 (= (inv!53853 v!6347) (isBalanced!3538 (c!651315 v!6347)))))

(declare-fun bs!575809 () Bool)

(assert (= bs!575809 d!1098732))

(declare-fun m!4255741 () Bool)

(assert (=> bs!575809 m!4255741))

(assert (=> start!353236 d!1098732))

(declare-fun d!1098736 () Bool)

(declare-fun lt!1302089 () Int)

(declare-fun size!30210 (List!40265) Int)

(declare-fun list!14822 (BalanceConc!24192) List!40265)

(assert (=> d!1098736 (= lt!1302089 (size!30210 (list!14822 v!6347)))))

(declare-fun size!30211 (Conc!12299) Int)

(assert (=> d!1098736 (= lt!1302089 (size!30211 (c!651315 v!6347)))))

(assert (=> d!1098736 (= (size!30207 v!6347) lt!1302089)))

(declare-fun bs!575810 () Bool)

(assert (= bs!575810 d!1098736))

(declare-fun m!4255747 () Bool)

(assert (=> bs!575810 m!4255747))

(assert (=> bs!575810 m!4255747))

(declare-fun m!4255749 () Bool)

(assert (=> bs!575810 m!4255749))

(declare-fun m!4255751 () Bool)

(assert (=> bs!575810 m!4255751))

(assert (=> b!3761469 d!1098736))

(declare-fun tp!1149486 () Bool)

(declare-fun tp!1149485 () Bool)

(declare-fun b!3761540 () Bool)

(declare-fun e!2326517 () Bool)

(assert (=> b!3761540 (= e!2326517 (and (inv!53854 (left!31074 (c!651315 v!6347))) tp!1149485 (inv!53854 (right!31404 (c!651315 v!6347))) tp!1149486))))

(declare-fun b!3761542 () Bool)

(declare-fun e!2326518 () Bool)

(declare-fun tp!1149484 () Bool)

(assert (=> b!3761542 (= e!2326518 tp!1149484)))

(declare-fun b!3761541 () Bool)

(declare-fun inv!53863 (IArray!24603) Bool)

(assert (=> b!3761541 (= e!2326517 (and (inv!53863 (xs!15505 (c!651315 v!6347))) e!2326518))))

(assert (=> b!3761472 (= tp!1149467 (and (inv!53854 (c!651315 v!6347)) e!2326517))))

(assert (= (and b!3761472 ((_ is Node!12299) (c!651315 v!6347))) b!3761540))

(assert (= b!3761541 b!3761542))

(assert (= (and b!3761472 ((_ is Leaf!19075) (c!651315 v!6347))) b!3761541))

(declare-fun m!4255759 () Bool)

(assert (=> b!3761540 m!4255759))

(declare-fun m!4255761 () Bool)

(assert (=> b!3761540 m!4255761))

(declare-fun m!4255763 () Bool)

(assert (=> b!3761541 m!4255763))

(assert (=> b!3761472 m!4255651))

(declare-fun tp!1149504 () Bool)

(declare-fun e!2326530 () Bool)

(declare-fun b!3761562 () Bool)

(declare-fun tp!1149502 () Bool)

(assert (=> b!3761562 (= e!2326530 (and (inv!53851 (left!31073 (c!651313 acc!400))) tp!1149504 (inv!53851 (right!31403 (c!651313 acc!400))) tp!1149502))))

(declare-fun b!3761564 () Bool)

(declare-fun e!2326529 () Bool)

(declare-fun tp!1149503 () Bool)

(assert (=> b!3761564 (= e!2326529 tp!1149503)))

(declare-fun b!3761563 () Bool)

(declare-fun inv!53865 (IArray!24601) Bool)

(assert (=> b!3761563 (= e!2326530 (and (inv!53865 (xs!15504 (c!651313 acc!400))) e!2326529))))

(assert (=> b!3761471 (= tp!1149468 (and (inv!53851 (c!651313 acc!400)) e!2326530))))

(assert (= (and b!3761471 ((_ is Node!12298) (c!651313 acc!400))) b!3761562))

(assert (= b!3761563 b!3761564))

(assert (= (and b!3761471 ((_ is Leaf!19074) (c!651313 acc!400))) b!3761563))

(declare-fun m!4255771 () Bool)

(assert (=> b!3761562 m!4255771))

(declare-fun m!4255773 () Bool)

(assert (=> b!3761562 m!4255773))

(declare-fun m!4255775 () Bool)

(assert (=> b!3761563 m!4255775))

(assert (=> b!3761471 m!4255655))

(check-sat (not b!3761471) (not d!1098736) (not d!1098714) (not d!1098730) (not b!3761542) (not b!3761499) (not b!3761488) (not b!3761562) (not b!3761564) (not b!3761490) (not d!1098732) (not b!3761563) (not b!3761497) (not b!3761540) (not b!3761541) (not b!3761510) (not d!1098720) (not d!1098724) (not b!3761472))
(check-sat)
(get-model)

(assert (=> b!3761472 d!1098706))

(declare-fun b!3761586 () Bool)

(declare-fun e!2326541 () List!40263)

(declare-fun e!2326542 () List!40263)

(assert (=> b!3761586 (= e!2326541 e!2326542)))

(declare-fun c!651345 () Bool)

(assert (=> b!3761586 (= c!651345 ((_ is Leaf!19074) (c!651313 acc!400)))))

(declare-fun b!3761588 () Bool)

(assert (=> b!3761588 (= e!2326542 (++!9954 (list!14819 (left!31073 (c!651313 acc!400))) (list!14819 (right!31403 (c!651313 acc!400)))))))

(declare-fun d!1098738 () Bool)

(declare-fun c!651344 () Bool)

(assert (=> d!1098738 (= c!651344 ((_ is Empty!12298) (c!651313 acc!400)))))

(assert (=> d!1098738 (= (list!14819 (c!651313 acc!400)) e!2326541)))

(declare-fun b!3761585 () Bool)

(assert (=> b!3761585 (= e!2326541 Nil!40139)))

(declare-fun b!3761587 () Bool)

(declare-fun list!14824 (IArray!24601) List!40263)

(assert (=> b!3761587 (= e!2326542 (list!14824 (xs!15504 (c!651313 acc!400))))))

(assert (= (and d!1098738 c!651344) b!3761585))

(assert (= (and d!1098738 (not c!651344)) b!3761586))

(assert (= (and b!3761586 c!651345) b!3761587))

(assert (= (and b!3761586 (not c!651345)) b!3761588))

(declare-fun m!4255785 () Bool)

(assert (=> b!3761588 m!4255785))

(declare-fun m!4255787 () Bool)

(assert (=> b!3761588 m!4255787))

(assert (=> b!3761588 m!4255785))

(assert (=> b!3761588 m!4255787))

(declare-fun m!4255789 () Bool)

(assert (=> b!3761588 m!4255789))

(declare-fun m!4255791 () Bool)

(assert (=> b!3761587 m!4255791))

(assert (=> d!1098720 d!1098738))

(assert (=> b!3761471 d!1098712))

(declare-fun d!1098744 () Bool)

(declare-fun res!1523181 () Bool)

(declare-fun e!2326549 () Bool)

(assert (=> d!1098744 (=> (not res!1523181) (not e!2326549))))

(declare-fun size!30213 (List!40263) Int)

(assert (=> d!1098744 (= res!1523181 (<= (size!30213 (list!14824 (xs!15504 (c!651313 acc!400)))) 512))))

(assert (=> d!1098744 (= (inv!53860 (c!651313 acc!400)) e!2326549)))

(declare-fun b!3761599 () Bool)

(declare-fun res!1523182 () Bool)

(assert (=> b!3761599 (=> (not res!1523182) (not e!2326549))))

(assert (=> b!3761599 (= res!1523182 (= (csize!24827 (c!651313 acc!400)) (size!30213 (list!14824 (xs!15504 (c!651313 acc!400))))))))

(declare-fun b!3761600 () Bool)

(assert (=> b!3761600 (= e!2326549 (and (> (csize!24827 (c!651313 acc!400)) 0) (<= (csize!24827 (c!651313 acc!400)) 512)))))

(assert (= (and d!1098744 res!1523181) b!3761599))

(assert (= (and b!3761599 res!1523182) b!3761600))

(assert (=> d!1098744 m!4255791))

(assert (=> d!1098744 m!4255791))

(declare-fun m!4255793 () Bool)

(assert (=> d!1098744 m!4255793))

(assert (=> b!3761599 m!4255791))

(assert (=> b!3761599 m!4255791))

(assert (=> b!3761599 m!4255793))

(assert (=> b!3761499 d!1098744))

(declare-fun b!3761637 () Bool)

(declare-fun e!2326572 () Int)

(declare-fun call!275423 () Int)

(assert (=> b!3761637 (= e!2326572 call!275423)))

(declare-fun b!3761638 () Bool)

(declare-fun e!2326570 () Int)

(assert (=> b!3761638 (= e!2326570 0)))

(declare-fun b!3761639 () Bool)

(declare-fun e!2326571 () List!40265)

(assert (=> b!3761639 (= e!2326571 (list!14820 (c!651315 v!6347)))))

(declare-fun d!1098746 () Bool)

(declare-fun e!2326569 () Bool)

(assert (=> d!1098746 e!2326569))

(declare-fun res!1523195 () Bool)

(assert (=> d!1098746 (=> (not res!1523195) (not e!2326569))))

(declare-fun lt!1302095 () List!40265)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5892 (List!40265) (InoxSet Token!11450))

(assert (=> d!1098746 (= res!1523195 (= ((_ map implies) (content!5892 lt!1302095) (content!5892 (list!14820 (c!651315 v!6347)))) ((as const (InoxSet Token!11450)) true)))))

(declare-fun e!2326568 () List!40265)

(assert (=> d!1098746 (= lt!1302095 e!2326568)))

(declare-fun c!651361 () Bool)

(assert (=> d!1098746 (= c!651361 ((_ is Nil!40141) (list!14820 (c!651315 v!6347))))))

(assert (=> d!1098746 (= (drop!2101 (list!14820 (c!651315 v!6347)) from!841) lt!1302095)))

(declare-fun b!3761640 () Bool)

(assert (=> b!3761640 (= e!2326571 (drop!2101 (t!303914 (list!14820 (c!651315 v!6347))) (- from!841 1)))))

(declare-fun b!3761641 () Bool)

(assert (=> b!3761641 (= e!2326568 e!2326571)))

(declare-fun c!651362 () Bool)

(assert (=> b!3761641 (= c!651362 (<= from!841 0))))

(declare-fun b!3761642 () Bool)

(assert (=> b!3761642 (= e!2326572 e!2326570)))

(declare-fun c!651363 () Bool)

(assert (=> b!3761642 (= c!651363 (>= from!841 call!275423))))

(declare-fun b!3761643 () Bool)

(assert (=> b!3761643 (= e!2326568 Nil!40141)))

(declare-fun b!3761644 () Bool)

(assert (=> b!3761644 (= e!2326570 (- call!275423 from!841))))

(declare-fun b!3761645 () Bool)

(assert (=> b!3761645 (= e!2326569 (= (size!30210 lt!1302095) e!2326572))))

(declare-fun c!651360 () Bool)

(assert (=> b!3761645 (= c!651360 (<= from!841 0))))

(declare-fun bm!275418 () Bool)

(assert (=> bm!275418 (= call!275423 (size!30210 (list!14820 (c!651315 v!6347))))))

(assert (= (and d!1098746 c!651361) b!3761643))

(assert (= (and d!1098746 (not c!651361)) b!3761641))

(assert (= (and b!3761641 c!651362) b!3761639))

(assert (= (and b!3761641 (not c!651362)) b!3761640))

(assert (= (and d!1098746 res!1523195) b!3761645))

(assert (= (and b!3761645 c!651360) b!3761637))

(assert (= (and b!3761645 (not c!651360)) b!3761642))

(assert (= (and b!3761642 c!651363) b!3761638))

(assert (= (and b!3761642 (not c!651363)) b!3761644))

(assert (= (or b!3761637 b!3761642 b!3761644) bm!275418))

(declare-fun m!4255817 () Bool)

(assert (=> d!1098746 m!4255817))

(assert (=> d!1098746 m!4255729))

(declare-fun m!4255819 () Bool)

(assert (=> d!1098746 m!4255819))

(declare-fun m!4255821 () Bool)

(assert (=> b!3761640 m!4255821))

(declare-fun m!4255823 () Bool)

(assert (=> b!3761645 m!4255823))

(assert (=> bm!275418 m!4255729))

(declare-fun m!4255825 () Bool)

(assert (=> bm!275418 m!4255825))

(assert (=> d!1098724 d!1098746))

(declare-fun b!3761661 () Bool)

(declare-fun e!2326580 () List!40265)

(declare-fun e!2326581 () List!40265)

(assert (=> b!3761661 (= e!2326580 e!2326581)))

(declare-fun c!651369 () Bool)

(assert (=> b!3761661 (= c!651369 ((_ is Leaf!19075) (c!651315 v!6347)))))

(declare-fun d!1098756 () Bool)

(declare-fun c!651368 () Bool)

(assert (=> d!1098756 (= c!651368 ((_ is Empty!12299) (c!651315 v!6347)))))

(assert (=> d!1098756 (= (list!14820 (c!651315 v!6347)) e!2326580)))

(declare-fun b!3761663 () Bool)

(declare-fun ++!9955 (List!40265 List!40265) List!40265)

(assert (=> b!3761663 (= e!2326581 (++!9955 (list!14820 (left!31074 (c!651315 v!6347))) (list!14820 (right!31404 (c!651315 v!6347)))))))

(declare-fun b!3761660 () Bool)

(assert (=> b!3761660 (= e!2326580 Nil!40141)))

(declare-fun b!3761662 () Bool)

(declare-fun list!14826 (IArray!24603) List!40265)

(assert (=> b!3761662 (= e!2326581 (list!14826 (xs!15505 (c!651315 v!6347))))))

(assert (= (and d!1098756 c!651368) b!3761660))

(assert (= (and d!1098756 (not c!651368)) b!3761661))

(assert (= (and b!3761661 c!651369) b!3761662))

(assert (= (and b!3761661 (not c!651369)) b!3761663))

(declare-fun m!4255829 () Bool)

(assert (=> b!3761663 m!4255829))

(declare-fun m!4255831 () Bool)

(assert (=> b!3761663 m!4255831))

(assert (=> b!3761663 m!4255829))

(assert (=> b!3761663 m!4255831))

(declare-fun m!4255833 () Bool)

(assert (=> b!3761663 m!4255833))

(declare-fun m!4255835 () Bool)

(assert (=> b!3761662 m!4255835))

(assert (=> d!1098724 d!1098756))

(declare-fun b!3761709 () Bool)

(declare-fun e!2326604 () Bool)

(declare-fun e!2326603 () Bool)

(assert (=> b!3761709 (= e!2326604 e!2326603)))

(declare-fun res!1523232 () Bool)

(assert (=> b!3761709 (=> (not res!1523232) (not e!2326603))))

(declare-fun height!1754 (Conc!12299) Int)

(assert (=> b!3761709 (= res!1523232 (<= (- 1) (- (height!1754 (left!31074 (c!651315 v!6347))) (height!1754 (right!31404 (c!651315 v!6347))))))))

(declare-fun b!3761710 () Bool)

(declare-fun res!1523231 () Bool)

(assert (=> b!3761710 (=> (not res!1523231) (not e!2326603))))

(declare-fun isEmpty!23583 (Conc!12299) Bool)

(assert (=> b!3761710 (= res!1523231 (not (isEmpty!23583 (left!31074 (c!651315 v!6347)))))))

(declare-fun d!1098760 () Bool)

(declare-fun res!1523228 () Bool)

(assert (=> d!1098760 (=> res!1523228 e!2326604)))

(assert (=> d!1098760 (= res!1523228 (not ((_ is Node!12299) (c!651315 v!6347))))))

(assert (=> d!1098760 (= (isBalanced!3538 (c!651315 v!6347)) e!2326604)))

(declare-fun b!3761711 () Bool)

(declare-fun res!1523227 () Bool)

(assert (=> b!3761711 (=> (not res!1523227) (not e!2326603))))

(assert (=> b!3761711 (= res!1523227 (isBalanced!3538 (right!31404 (c!651315 v!6347))))))

(declare-fun b!3761712 () Bool)

(declare-fun res!1523230 () Bool)

(assert (=> b!3761712 (=> (not res!1523230) (not e!2326603))))

(assert (=> b!3761712 (= res!1523230 (isBalanced!3538 (left!31074 (c!651315 v!6347))))))

(declare-fun b!3761713 () Bool)

(declare-fun res!1523229 () Bool)

(assert (=> b!3761713 (=> (not res!1523229) (not e!2326603))))

(assert (=> b!3761713 (= res!1523229 (<= (- (height!1754 (left!31074 (c!651315 v!6347))) (height!1754 (right!31404 (c!651315 v!6347)))) 1))))

(declare-fun b!3761714 () Bool)

(assert (=> b!3761714 (= e!2326603 (not (isEmpty!23583 (right!31404 (c!651315 v!6347)))))))

(assert (= (and d!1098760 (not res!1523228)) b!3761709))

(assert (= (and b!3761709 res!1523232) b!3761713))

(assert (= (and b!3761713 res!1523229) b!3761712))

(assert (= (and b!3761712 res!1523230) b!3761711))

(assert (= (and b!3761711 res!1523227) b!3761710))

(assert (= (and b!3761710 res!1523231) b!3761714))

(declare-fun m!4255855 () Bool)

(assert (=> b!3761712 m!4255855))

(declare-fun m!4255857 () Bool)

(assert (=> b!3761711 m!4255857))

(declare-fun m!4255859 () Bool)

(assert (=> b!3761714 m!4255859))

(declare-fun m!4255861 () Bool)

(assert (=> b!3761713 m!4255861))

(declare-fun m!4255863 () Bool)

(assert (=> b!3761713 m!4255863))

(assert (=> b!3761709 m!4255861))

(assert (=> b!3761709 m!4255863))

(declare-fun m!4255865 () Bool)

(assert (=> b!3761710 m!4255865))

(assert (=> d!1098732 d!1098760))

(declare-fun d!1098768 () Bool)

(assert (=> d!1098768 (= (inv!53863 (xs!15505 (c!651315 v!6347))) (<= (size!30210 (innerList!12359 (xs!15505 (c!651315 v!6347)))) 2147483647))))

(declare-fun bs!575812 () Bool)

(assert (= bs!575812 d!1098768))

(declare-fun m!4255867 () Bool)

(assert (=> bs!575812 m!4255867))

(assert (=> b!3761541 d!1098768))

(declare-fun d!1098770 () Bool)

(declare-fun res!1523240 () Bool)

(declare-fun e!2326616 () Bool)

(assert (=> d!1098770 (=> (not res!1523240) (not e!2326616))))

(declare-fun size!30214 (Conc!12298) Int)

(assert (=> d!1098770 (= res!1523240 (= (csize!24826 (c!651313 acc!400)) (+ (size!30214 (left!31073 (c!651313 acc!400))) (size!30214 (right!31403 (c!651313 acc!400))))))))

(assert (=> d!1098770 (= (inv!53859 (c!651313 acc!400)) e!2326616)))

(declare-fun b!3761738 () Bool)

(declare-fun res!1523241 () Bool)

(assert (=> b!3761738 (=> (not res!1523241) (not e!2326616))))

(assert (=> b!3761738 (= res!1523241 (and (not (= (left!31073 (c!651313 acc!400)) Empty!12298)) (not (= (right!31403 (c!651313 acc!400)) Empty!12298))))))

(declare-fun b!3761739 () Bool)

(declare-fun res!1523242 () Bool)

(assert (=> b!3761739 (=> (not res!1523242) (not e!2326616))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1755 (Conc!12298) Int)

(assert (=> b!3761739 (= res!1523242 (= (cheight!12509 (c!651313 acc!400)) (+ (max!0 (height!1755 (left!31073 (c!651313 acc!400))) (height!1755 (right!31403 (c!651313 acc!400)))) 1)))))

(declare-fun b!3761740 () Bool)

(assert (=> b!3761740 (= e!2326616 (<= 0 (cheight!12509 (c!651313 acc!400))))))

(assert (= (and d!1098770 res!1523240) b!3761738))

(assert (= (and b!3761738 res!1523241) b!3761739))

(assert (= (and b!3761739 res!1523242) b!3761740))

(declare-fun m!4255879 () Bool)

(assert (=> d!1098770 m!4255879))

(declare-fun m!4255881 () Bool)

(assert (=> d!1098770 m!4255881))

(declare-fun m!4255883 () Bool)

(assert (=> b!3761739 m!4255883))

(declare-fun m!4255885 () Bool)

(assert (=> b!3761739 m!4255885))

(assert (=> b!3761739 m!4255883))

(assert (=> b!3761739 m!4255885))

(declare-fun m!4255887 () Bool)

(assert (=> b!3761739 m!4255887))

(assert (=> b!3761497 d!1098770))

(declare-fun d!1098774 () Bool)

(declare-fun c!651390 () Bool)

(assert (=> d!1098774 (= c!651390 ((_ is Node!12299) (left!31074 (c!651315 v!6347))))))

(declare-fun e!2326619 () Bool)

(assert (=> d!1098774 (= (inv!53854 (left!31074 (c!651315 v!6347))) e!2326619)))

(declare-fun b!3761745 () Bool)

(assert (=> b!3761745 (= e!2326619 (inv!53855 (left!31074 (c!651315 v!6347))))))

(declare-fun b!3761746 () Bool)

(declare-fun e!2326620 () Bool)

(assert (=> b!3761746 (= e!2326619 e!2326620)))

(declare-fun res!1523243 () Bool)

(assert (=> b!3761746 (= res!1523243 (not ((_ is Leaf!19075) (left!31074 (c!651315 v!6347)))))))

(assert (=> b!3761746 (=> res!1523243 e!2326620)))

(declare-fun b!3761747 () Bool)

(assert (=> b!3761747 (= e!2326620 (inv!53857 (left!31074 (c!651315 v!6347))))))

(assert (= (and d!1098774 c!651390) b!3761745))

(assert (= (and d!1098774 (not c!651390)) b!3761746))

(assert (= (and b!3761746 (not res!1523243)) b!3761747))

(declare-fun m!4255889 () Bool)

(assert (=> b!3761745 m!4255889))

(declare-fun m!4255891 () Bool)

(assert (=> b!3761747 m!4255891))

(assert (=> b!3761540 d!1098774))

(declare-fun d!1098776 () Bool)

(declare-fun c!651391 () Bool)

(assert (=> d!1098776 (= c!651391 ((_ is Node!12299) (right!31404 (c!651315 v!6347))))))

(declare-fun e!2326621 () Bool)

(assert (=> d!1098776 (= (inv!53854 (right!31404 (c!651315 v!6347))) e!2326621)))

(declare-fun b!3761748 () Bool)

(assert (=> b!3761748 (= e!2326621 (inv!53855 (right!31404 (c!651315 v!6347))))))

(declare-fun b!3761749 () Bool)

(declare-fun e!2326622 () Bool)

(assert (=> b!3761749 (= e!2326621 e!2326622)))

(declare-fun res!1523244 () Bool)

(assert (=> b!3761749 (= res!1523244 (not ((_ is Leaf!19075) (right!31404 (c!651315 v!6347)))))))

(assert (=> b!3761749 (=> res!1523244 e!2326622)))

(declare-fun b!3761750 () Bool)

(assert (=> b!3761750 (= e!2326622 (inv!53857 (right!31404 (c!651315 v!6347))))))

(assert (= (and d!1098776 c!651391) b!3761748))

(assert (= (and d!1098776 (not c!651391)) b!3761749))

(assert (= (and b!3761749 (not res!1523244)) b!3761750))

(declare-fun m!4255899 () Bool)

(assert (=> b!3761748 m!4255899))

(declare-fun m!4255901 () Bool)

(assert (=> b!3761750 m!4255901))

(assert (=> b!3761540 d!1098776))

(declare-fun b!3761767 () Bool)

(declare-fun res!1523256 () Bool)

(declare-fun e!2326629 () Bool)

(assert (=> b!3761767 (=> (not res!1523256) (not e!2326629))))

(declare-fun lt!1302101 () List!40263)

(assert (=> b!3761767 (= res!1523256 (= (size!30213 lt!1302101) (+ (size!30213 lt!1302051) (size!30213 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(declare-fun d!1098780 () Bool)

(assert (=> d!1098780 e!2326629))

(declare-fun res!1523255 () Bool)

(assert (=> d!1098780 (=> (not res!1523255) (not e!2326629))))

(declare-fun content!5894 (List!40263) (InoxSet C!22308))

(assert (=> d!1098780 (= res!1523255 (= (content!5894 lt!1302101) ((_ map or) (content!5894 lt!1302051) (content!5894 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(declare-fun e!2326630 () List!40263)

(assert (=> d!1098780 (= lt!1302101 e!2326630)))

(declare-fun c!651394 () Bool)

(assert (=> d!1098780 (= c!651394 ((_ is Nil!40139) lt!1302051))))

(assert (=> d!1098780 (= (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302101)))

(declare-fun b!3761765 () Bool)

(assert (=> b!3761765 (= e!2326630 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))

(declare-fun b!3761766 () Bool)

(assert (=> b!3761766 (= e!2326630 (Cons!40139 (h!45559 lt!1302051) (++!9954 (t!303912 lt!1302051) (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))

(declare-fun b!3761768 () Bool)

(assert (=> b!3761768 (= e!2326629 (or (not (= (list!14816 (charsOf!4006 (h!45561 lt!1302052))) Nil!40139)) (= lt!1302101 lt!1302051)))))

(assert (= (and d!1098780 c!651394) b!3761765))

(assert (= (and d!1098780 (not c!651394)) b!3761766))

(assert (= (and d!1098780 res!1523255) b!3761767))

(assert (= (and b!3761767 res!1523256) b!3761768))

(declare-fun m!4255905 () Bool)

(assert (=> b!3761767 m!4255905))

(declare-fun m!4255907 () Bool)

(assert (=> b!3761767 m!4255907))

(assert (=> b!3761767 m!4255701))

(declare-fun m!4255909 () Bool)

(assert (=> b!3761767 m!4255909))

(declare-fun m!4255911 () Bool)

(assert (=> d!1098780 m!4255911))

(declare-fun m!4255913 () Bool)

(assert (=> d!1098780 m!4255913))

(assert (=> d!1098780 m!4255701))

(declare-fun m!4255915 () Bool)

(assert (=> d!1098780 m!4255915))

(assert (=> b!3761766 m!4255701))

(declare-fun m!4255917 () Bool)

(assert (=> b!3761766 m!4255917))

(assert (=> b!3761510 d!1098780))

(declare-fun d!1098784 () Bool)

(declare-fun c!651400 () Bool)

(assert (=> d!1098784 (= c!651400 ((_ is Cons!40141) (t!303914 lt!1302052)))))

(declare-fun e!2326637 () List!40263)

(assert (=> d!1098784 (= (printList!1661 thiss!13650 (t!303914 lt!1302052)) e!2326637)))

(declare-fun b!3761782 () Bool)

(assert (=> b!3761782 (= e!2326637 (++!9954 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))) (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))))))

(declare-fun b!3761783 () Bool)

(assert (=> b!3761783 (= e!2326637 Nil!40139)))

(assert (= (and d!1098784 c!651400) b!3761782))

(assert (= (and d!1098784 (not c!651400)) b!3761783))

(declare-fun m!4255931 () Bool)

(assert (=> b!3761782 m!4255931))

(assert (=> b!3761782 m!4255931))

(declare-fun m!4255933 () Bool)

(assert (=> b!3761782 m!4255933))

(declare-fun m!4255935 () Bool)

(assert (=> b!3761782 m!4255935))

(assert (=> b!3761782 m!4255933))

(assert (=> b!3761782 m!4255935))

(declare-fun m!4255937 () Bool)

(assert (=> b!3761782 m!4255937))

(assert (=> b!3761510 d!1098784))

(declare-fun b!3761786 () Bool)

(declare-fun res!1523261 () Bool)

(declare-fun e!2326638 () Bool)

(assert (=> b!3761786 (=> (not res!1523261) (not e!2326638))))

(declare-fun lt!1302105 () List!40263)

(assert (=> b!3761786 (= res!1523261 (= (size!30213 lt!1302105) (+ (size!30213 lt!1302051) (size!30213 lt!1302080))))))

(declare-fun d!1098790 () Bool)

(assert (=> d!1098790 e!2326638))

(declare-fun res!1523260 () Bool)

(assert (=> d!1098790 (=> (not res!1523260) (not e!2326638))))

(assert (=> d!1098790 (= res!1523260 (= (content!5894 lt!1302105) ((_ map or) (content!5894 lt!1302051) (content!5894 lt!1302080))))))

(declare-fun e!2326639 () List!40263)

(assert (=> d!1098790 (= lt!1302105 e!2326639)))

(declare-fun c!651401 () Bool)

(assert (=> d!1098790 (= c!651401 ((_ is Nil!40139) lt!1302051))))

(assert (=> d!1098790 (= (++!9954 lt!1302051 lt!1302080) lt!1302105)))

(declare-fun b!3761784 () Bool)

(assert (=> b!3761784 (= e!2326639 lt!1302080)))

(declare-fun b!3761785 () Bool)

(assert (=> b!3761785 (= e!2326639 (Cons!40139 (h!45559 lt!1302051) (++!9954 (t!303912 lt!1302051) lt!1302080)))))

(declare-fun b!3761787 () Bool)

(assert (=> b!3761787 (= e!2326638 (or (not (= lt!1302080 Nil!40139)) (= lt!1302105 lt!1302051)))))

(assert (= (and d!1098790 c!651401) b!3761784))

(assert (= (and d!1098790 (not c!651401)) b!3761785))

(assert (= (and d!1098790 res!1523260) b!3761786))

(assert (= (and b!3761786 res!1523261) b!3761787))

(declare-fun m!4255939 () Bool)

(assert (=> b!3761786 m!4255939))

(assert (=> b!3761786 m!4255907))

(declare-fun m!4255941 () Bool)

(assert (=> b!3761786 m!4255941))

(declare-fun m!4255943 () Bool)

(assert (=> d!1098790 m!4255943))

(assert (=> d!1098790 m!4255913))

(declare-fun m!4255945 () Bool)

(assert (=> d!1098790 m!4255945))

(declare-fun m!4255947 () Bool)

(assert (=> b!3761785 m!4255947))

(assert (=> b!3761510 d!1098790))

(declare-fun b!3761790 () Bool)

(declare-fun res!1523263 () Bool)

(declare-fun e!2326640 () Bool)

(assert (=> b!3761790 (=> (not res!1523263) (not e!2326640))))

(declare-fun lt!1302106 () List!40263)

(assert (=> b!3761790 (= res!1523263 (= (size!30213 lt!1302106) (+ (size!30213 lt!1302051) (size!30213 (++!9954 lt!1302080 lt!1302082)))))))

(declare-fun d!1098792 () Bool)

(assert (=> d!1098792 e!2326640))

(declare-fun res!1523262 () Bool)

(assert (=> d!1098792 (=> (not res!1523262) (not e!2326640))))

(assert (=> d!1098792 (= res!1523262 (= (content!5894 lt!1302106) ((_ map or) (content!5894 lt!1302051) (content!5894 (++!9954 lt!1302080 lt!1302082)))))))

(declare-fun e!2326641 () List!40263)

(assert (=> d!1098792 (= lt!1302106 e!2326641)))

(declare-fun c!651402 () Bool)

(assert (=> d!1098792 (= c!651402 ((_ is Nil!40139) lt!1302051))))

(assert (=> d!1098792 (= (++!9954 lt!1302051 (++!9954 lt!1302080 lt!1302082)) lt!1302106)))

(declare-fun b!3761788 () Bool)

(assert (=> b!3761788 (= e!2326641 (++!9954 lt!1302080 lt!1302082))))

(declare-fun b!3761789 () Bool)

(assert (=> b!3761789 (= e!2326641 (Cons!40139 (h!45559 lt!1302051) (++!9954 (t!303912 lt!1302051) (++!9954 lt!1302080 lt!1302082))))))

(declare-fun b!3761791 () Bool)

(assert (=> b!3761791 (= e!2326640 (or (not (= (++!9954 lt!1302080 lt!1302082) Nil!40139)) (= lt!1302106 lt!1302051)))))

(assert (= (and d!1098792 c!651402) b!3761788))

(assert (= (and d!1098792 (not c!651402)) b!3761789))

(assert (= (and d!1098792 res!1523262) b!3761790))

(assert (= (and b!3761790 res!1523263) b!3761791))

(declare-fun m!4255949 () Bool)

(assert (=> b!3761790 m!4255949))

(assert (=> b!3761790 m!4255907))

(assert (=> b!3761790 m!4255711))

(declare-fun m!4255951 () Bool)

(assert (=> b!3761790 m!4255951))

(declare-fun m!4255953 () Bool)

(assert (=> d!1098792 m!4255953))

(assert (=> d!1098792 m!4255913))

(assert (=> d!1098792 m!4255711))

(declare-fun m!4255955 () Bool)

(assert (=> d!1098792 m!4255955))

(assert (=> b!3761789 m!4255711))

(declare-fun m!4255957 () Bool)

(assert (=> b!3761789 m!4255957))

(assert (=> b!3761510 d!1098792))

(declare-fun lt!1302111 () List!40263)

(declare-fun d!1098796 () Bool)

(assert (=> d!1098796 (= lt!1302111 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (printList!1661 thiss!13650 (t!303914 lt!1302052))))))

(declare-fun e!2326642 () List!40263)

(assert (=> d!1098796 (= lt!1302111 e!2326642)))

(declare-fun c!651403 () Bool)

(assert (=> d!1098796 (= c!651403 ((_ is Cons!40141) (t!303914 lt!1302052)))))

(assert (=> d!1098796 (= (printListTailRec!746 thiss!13650 (t!303914 lt!1302052) (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) lt!1302111)))

(declare-fun b!3761792 () Bool)

(assert (=> b!3761792 (= e!2326642 (printListTailRec!746 thiss!13650 (t!303914 (t!303914 lt!1302052)) (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))))))

(declare-fun lt!1302108 () List!40263)

(assert (=> b!3761792 (= lt!1302108 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))))

(declare-fun lt!1302110 () List!40263)

(assert (=> b!3761792 (= lt!1302110 (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052))))))

(declare-fun lt!1302109 () Unit!57864)

(assert (=> b!3761792 (= lt!1302109 (lemmaConcatAssociativity!2104 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108 lt!1302110))))

(assert (=> b!3761792 (= (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108) lt!1302110) (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (++!9954 lt!1302108 lt!1302110)))))

(declare-fun lt!1302107 () Unit!57864)

(assert (=> b!3761792 (= lt!1302107 lt!1302109)))

(declare-fun b!3761793 () Bool)

(assert (=> b!3761793 (= e!2326642 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))

(assert (= (and d!1098796 c!651403) b!3761792))

(assert (= (and d!1098796 (not c!651403)) b!3761793))

(assert (=> d!1098796 m!4255717))

(assert (=> d!1098796 m!4255707))

(assert (=> d!1098796 m!4255717))

(declare-fun m!4255959 () Bool)

(assert (=> d!1098796 m!4255959))

(assert (=> b!3761792 m!4255931))

(assert (=> b!3761792 m!4255933))

(declare-fun m!4255961 () Bool)

(assert (=> b!3761792 m!4255961))

(declare-fun m!4255963 () Bool)

(assert (=> b!3761792 m!4255963))

(assert (=> b!3761792 m!4255707))

(assert (=> b!3761792 m!4255933))

(declare-fun m!4255965 () Bool)

(assert (=> b!3761792 m!4255965))

(assert (=> b!3761792 m!4255707))

(declare-fun m!4255967 () Bool)

(assert (=> b!3761792 m!4255967))

(assert (=> b!3761792 m!4255707))

(declare-fun m!4255969 () Bool)

(assert (=> b!3761792 m!4255969))

(declare-fun m!4255971 () Bool)

(assert (=> b!3761792 m!4255971))

(assert (=> b!3761792 m!4255969))

(assert (=> b!3761792 m!4255965))

(declare-fun m!4255973 () Bool)

(assert (=> b!3761792 m!4255973))

(assert (=> b!3761792 m!4255935))

(assert (=> b!3761792 m!4255931))

(assert (=> b!3761792 m!4255707))

(assert (=> b!3761792 m!4255961))

(assert (=> b!3761510 d!1098796))

(declare-fun d!1098798 () Bool)

(declare-fun lt!1302117 () BalanceConc!24190)

(assert (=> d!1098798 (= (list!14816 lt!1302117) (originalCharacters!6756 (h!45561 lt!1302052)))))

(declare-fun dynLambda!17337 (Int TokenValue!6386) BalanceConc!24190)

(assert (=> d!1098798 (= lt!1302117 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))

(assert (=> d!1098798 (= (charsOf!4006 (h!45561 lt!1302052)) lt!1302117)))

(declare-fun b_lambda!110395 () Bool)

(assert (=> (not b_lambda!110395) (not d!1098798)))

(declare-fun bs!575816 () Bool)

(assert (= bs!575816 d!1098798))

(declare-fun m!4255983 () Bool)

(assert (=> bs!575816 m!4255983))

(declare-fun m!4255985 () Bool)

(assert (=> bs!575816 m!4255985))

(assert (=> b!3761510 d!1098798))

(declare-fun b!3761802 () Bool)

(declare-fun res!1523267 () Bool)

(declare-fun e!2326647 () Bool)

(assert (=> b!3761802 (=> (not res!1523267) (not e!2326647))))

(declare-fun lt!1302118 () List!40263)

(assert (=> b!3761802 (= res!1523267 (= (size!30213 lt!1302118) (+ (size!30213 lt!1302080) (size!30213 lt!1302082))))))

(declare-fun d!1098806 () Bool)

(assert (=> d!1098806 e!2326647))

(declare-fun res!1523266 () Bool)

(assert (=> d!1098806 (=> (not res!1523266) (not e!2326647))))

(assert (=> d!1098806 (= res!1523266 (= (content!5894 lt!1302118) ((_ map or) (content!5894 lt!1302080) (content!5894 lt!1302082))))))

(declare-fun e!2326648 () List!40263)

(assert (=> d!1098806 (= lt!1302118 e!2326648)))

(declare-fun c!651406 () Bool)

(assert (=> d!1098806 (= c!651406 ((_ is Nil!40139) lt!1302080))))

(assert (=> d!1098806 (= (++!9954 lt!1302080 lt!1302082) lt!1302118)))

(declare-fun b!3761800 () Bool)

(assert (=> b!3761800 (= e!2326648 lt!1302082)))

(declare-fun b!3761801 () Bool)

(assert (=> b!3761801 (= e!2326648 (Cons!40139 (h!45559 lt!1302080) (++!9954 (t!303912 lt!1302080) lt!1302082)))))

(declare-fun b!3761803 () Bool)

(assert (=> b!3761803 (= e!2326647 (or (not (= lt!1302082 Nil!40139)) (= lt!1302118 lt!1302080)))))

(assert (= (and d!1098806 c!651406) b!3761800))

(assert (= (and d!1098806 (not c!651406)) b!3761801))

(assert (= (and d!1098806 res!1523266) b!3761802))

(assert (= (and b!3761802 res!1523267) b!3761803))

(declare-fun m!4255987 () Bool)

(assert (=> b!3761802 m!4255987))

(assert (=> b!3761802 m!4255941))

(declare-fun m!4255989 () Bool)

(assert (=> b!3761802 m!4255989))

(declare-fun m!4255991 () Bool)

(assert (=> d!1098806 m!4255991))

(assert (=> d!1098806 m!4255945))

(declare-fun m!4255993 () Bool)

(assert (=> d!1098806 m!4255993))

(declare-fun m!4255995 () Bool)

(assert (=> b!3761801 m!4255995))

(assert (=> b!3761510 d!1098806))

(declare-fun d!1098808 () Bool)

(assert (=> d!1098808 (= (list!14816 (charsOf!4006 (h!45561 lt!1302052))) (list!14819 (c!651313 (charsOf!4006 (h!45561 lt!1302052)))))))

(declare-fun bs!575817 () Bool)

(assert (= bs!575817 d!1098808))

(declare-fun m!4255997 () Bool)

(assert (=> bs!575817 m!4255997))

(assert (=> b!3761510 d!1098808))

(declare-fun d!1098810 () Bool)

(assert (=> d!1098810 (= (++!9954 (++!9954 lt!1302051 lt!1302080) lt!1302082) (++!9954 lt!1302051 (++!9954 lt!1302080 lt!1302082)))))

(declare-fun lt!1302121 () Unit!57864)

(declare-fun choose!22287 (List!40263 List!40263 List!40263) Unit!57864)

(assert (=> d!1098810 (= lt!1302121 (choose!22287 lt!1302051 lt!1302080 lt!1302082))))

(assert (=> d!1098810 (= (lemmaConcatAssociativity!2104 lt!1302051 lt!1302080 lt!1302082) lt!1302121)))

(declare-fun bs!575818 () Bool)

(assert (= bs!575818 d!1098810))

(assert (=> bs!575818 m!4255703))

(assert (=> bs!575818 m!4255711))

(assert (=> bs!575818 m!4255713))

(declare-fun m!4255999 () Bool)

(assert (=> bs!575818 m!4255999))

(assert (=> bs!575818 m!4255711))

(assert (=> bs!575818 m!4255703))

(assert (=> bs!575818 m!4255705))

(assert (=> b!3761510 d!1098810))

(declare-fun b!3761818 () Bool)

(declare-fun res!1523281 () Bool)

(declare-fun e!2326653 () Bool)

(assert (=> b!3761818 (=> (not res!1523281) (not e!2326653))))

(declare-fun lt!1302122 () List!40263)

(assert (=> b!3761818 (= res!1523281 (= (size!30213 lt!1302122) (+ (size!30213 (++!9954 lt!1302051 lt!1302080)) (size!30213 lt!1302082))))))

(declare-fun d!1098812 () Bool)

(assert (=> d!1098812 e!2326653))

(declare-fun res!1523280 () Bool)

(assert (=> d!1098812 (=> (not res!1523280) (not e!2326653))))

(assert (=> d!1098812 (= res!1523280 (= (content!5894 lt!1302122) ((_ map or) (content!5894 (++!9954 lt!1302051 lt!1302080)) (content!5894 lt!1302082))))))

(declare-fun e!2326654 () List!40263)

(assert (=> d!1098812 (= lt!1302122 e!2326654)))

(declare-fun c!651407 () Bool)

(assert (=> d!1098812 (= c!651407 ((_ is Nil!40139) (++!9954 lt!1302051 lt!1302080)))))

(assert (=> d!1098812 (= (++!9954 (++!9954 lt!1302051 lt!1302080) lt!1302082) lt!1302122)))

(declare-fun b!3761816 () Bool)

(assert (=> b!3761816 (= e!2326654 lt!1302082)))

(declare-fun b!3761817 () Bool)

(assert (=> b!3761817 (= e!2326654 (Cons!40139 (h!45559 (++!9954 lt!1302051 lt!1302080)) (++!9954 (t!303912 (++!9954 lt!1302051 lt!1302080)) lt!1302082)))))

(declare-fun b!3761819 () Bool)

(assert (=> b!3761819 (= e!2326653 (or (not (= lt!1302082 Nil!40139)) (= lt!1302122 (++!9954 lt!1302051 lt!1302080))))))

(assert (= (and d!1098812 c!651407) b!3761816))

(assert (= (and d!1098812 (not c!651407)) b!3761817))

(assert (= (and d!1098812 res!1523280) b!3761818))

(assert (= (and b!3761818 res!1523281) b!3761819))

(declare-fun m!4256001 () Bool)

(assert (=> b!3761818 m!4256001))

(assert (=> b!3761818 m!4255703))

(declare-fun m!4256003 () Bool)

(assert (=> b!3761818 m!4256003))

(assert (=> b!3761818 m!4255989))

(declare-fun m!4256005 () Bool)

(assert (=> d!1098812 m!4256005))

(assert (=> d!1098812 m!4255703))

(declare-fun m!4256007 () Bool)

(assert (=> d!1098812 m!4256007))

(assert (=> d!1098812 m!4255993))

(declare-fun m!4256009 () Bool)

(assert (=> b!3761817 m!4256009))

(assert (=> b!3761510 d!1098812))

(declare-fun d!1098814 () Bool)

(declare-fun res!1523292 () Bool)

(declare-fun e!2326659 () Bool)

(assert (=> d!1098814 (=> (not res!1523292) (not e!2326659))))

(assert (=> d!1098814 (= res!1523292 (<= (size!30210 (list!14826 (xs!15505 (c!651315 v!6347)))) 512))))

(assert (=> d!1098814 (= (inv!53857 (c!651315 v!6347)) e!2326659)))

(declare-fun b!3761830 () Bool)

(declare-fun res!1523293 () Bool)

(assert (=> b!3761830 (=> (not res!1523293) (not e!2326659))))

(assert (=> b!3761830 (= res!1523293 (= (csize!24829 (c!651315 v!6347)) (size!30210 (list!14826 (xs!15505 (c!651315 v!6347))))))))

(declare-fun b!3761831 () Bool)

(assert (=> b!3761831 (= e!2326659 (and (> (csize!24829 (c!651315 v!6347)) 0) (<= (csize!24829 (c!651315 v!6347)) 512)))))

(assert (= (and d!1098814 res!1523292) b!3761830))

(assert (= (and b!3761830 res!1523293) b!3761831))

(assert (=> d!1098814 m!4255835))

(assert (=> d!1098814 m!4255835))

(declare-fun m!4256019 () Bool)

(assert (=> d!1098814 m!4256019))

(assert (=> b!3761830 m!4255835))

(assert (=> b!3761830 m!4255835))

(assert (=> b!3761830 m!4256019))

(assert (=> b!3761490 d!1098814))

(declare-fun d!1098818 () Bool)

(assert (=> d!1098818 (= (inv!53865 (xs!15504 (c!651313 acc!400))) (<= (size!30213 (innerList!12358 (xs!15504 (c!651313 acc!400)))) 2147483647))))

(declare-fun bs!575819 () Bool)

(assert (= bs!575819 d!1098818))

(declare-fun m!4256021 () Bool)

(assert (=> bs!575819 m!4256021))

(assert (=> b!3761563 d!1098818))

(declare-fun b!3761834 () Bool)

(declare-fun res!1523295 () Bool)

(declare-fun e!2326660 () Bool)

(assert (=> b!3761834 (=> (not res!1523295) (not e!2326660))))

(declare-fun lt!1302125 () List!40263)

(assert (=> b!3761834 (= res!1523295 (= (size!30213 lt!1302125) (+ (size!30213 lt!1302051) (size!30213 (printList!1661 thiss!13650 lt!1302052)))))))

(declare-fun d!1098820 () Bool)

(assert (=> d!1098820 e!2326660))

(declare-fun res!1523294 () Bool)

(assert (=> d!1098820 (=> (not res!1523294) (not e!2326660))))

(assert (=> d!1098820 (= res!1523294 (= (content!5894 lt!1302125) ((_ map or) (content!5894 lt!1302051) (content!5894 (printList!1661 thiss!13650 lt!1302052)))))))

(declare-fun e!2326661 () List!40263)

(assert (=> d!1098820 (= lt!1302125 e!2326661)))

(declare-fun c!651408 () Bool)

(assert (=> d!1098820 (= c!651408 ((_ is Nil!40139) lt!1302051))))

(assert (=> d!1098820 (= (++!9954 lt!1302051 (printList!1661 thiss!13650 lt!1302052)) lt!1302125)))

(declare-fun b!3761832 () Bool)

(assert (=> b!3761832 (= e!2326661 (printList!1661 thiss!13650 lt!1302052))))

(declare-fun b!3761833 () Bool)

(assert (=> b!3761833 (= e!2326661 (Cons!40139 (h!45559 lt!1302051) (++!9954 (t!303912 lt!1302051) (printList!1661 thiss!13650 lt!1302052))))))

(declare-fun b!3761835 () Bool)

(assert (=> b!3761835 (= e!2326660 (or (not (= (printList!1661 thiss!13650 lt!1302052) Nil!40139)) (= lt!1302125 lt!1302051)))))

(assert (= (and d!1098820 c!651408) b!3761832))

(assert (= (and d!1098820 (not c!651408)) b!3761833))

(assert (= (and d!1098820 res!1523294) b!3761834))

(assert (= (and b!3761834 res!1523295) b!3761835))

(declare-fun m!4256025 () Bool)

(assert (=> b!3761834 m!4256025))

(assert (=> b!3761834 m!4255907))

(assert (=> b!3761834 m!4255695))

(declare-fun m!4256027 () Bool)

(assert (=> b!3761834 m!4256027))

(declare-fun m!4256029 () Bool)

(assert (=> d!1098820 m!4256029))

(assert (=> d!1098820 m!4255913))

(assert (=> d!1098820 m!4255695))

(declare-fun m!4256031 () Bool)

(assert (=> d!1098820 m!4256031))

(assert (=> b!3761833 m!4255695))

(declare-fun m!4256033 () Bool)

(assert (=> b!3761833 m!4256033))

(assert (=> d!1098714 d!1098820))

(declare-fun d!1098824 () Bool)

(declare-fun c!651410 () Bool)

(assert (=> d!1098824 (= c!651410 ((_ is Cons!40141) lt!1302052))))

(declare-fun e!2326664 () List!40263)

(assert (=> d!1098824 (= (printList!1661 thiss!13650 lt!1302052) e!2326664)))

(declare-fun b!3761840 () Bool)

(assert (=> b!3761840 (= e!2326664 (++!9954 (list!14816 (charsOf!4006 (h!45561 lt!1302052))) (printList!1661 thiss!13650 (t!303914 lt!1302052))))))

(declare-fun b!3761841 () Bool)

(assert (=> b!3761841 (= e!2326664 Nil!40139)))

(assert (= (and d!1098824 c!651410) b!3761840))

(assert (= (and d!1098824 (not c!651410)) b!3761841))

(assert (=> b!3761840 m!4255699))

(assert (=> b!3761840 m!4255699))

(assert (=> b!3761840 m!4255701))

(assert (=> b!3761840 m!4255717))

(assert (=> b!3761840 m!4255701))

(assert (=> b!3761840 m!4255717))

(declare-fun m!4256041 () Bool)

(assert (=> b!3761840 m!4256041))

(assert (=> d!1098714 d!1098824))

(declare-fun d!1098826 () Bool)

(declare-fun c!651411 () Bool)

(assert (=> d!1098826 (= c!651411 ((_ is Node!12298) (left!31073 (c!651313 acc!400))))))

(declare-fun e!2326665 () Bool)

(assert (=> d!1098826 (= (inv!53851 (left!31073 (c!651313 acc!400))) e!2326665)))

(declare-fun b!3761842 () Bool)

(assert (=> b!3761842 (= e!2326665 (inv!53859 (left!31073 (c!651313 acc!400))))))

(declare-fun b!3761843 () Bool)

(declare-fun e!2326666 () Bool)

(assert (=> b!3761843 (= e!2326665 e!2326666)))

(declare-fun res!1523298 () Bool)

(assert (=> b!3761843 (= res!1523298 (not ((_ is Leaf!19074) (left!31073 (c!651313 acc!400)))))))

(assert (=> b!3761843 (=> res!1523298 e!2326666)))

(declare-fun b!3761844 () Bool)

(assert (=> b!3761844 (= e!2326666 (inv!53860 (left!31073 (c!651313 acc!400))))))

(assert (= (and d!1098826 c!651411) b!3761842))

(assert (= (and d!1098826 (not c!651411)) b!3761843))

(assert (= (and b!3761843 (not res!1523298)) b!3761844))

(declare-fun m!4256051 () Bool)

(assert (=> b!3761842 m!4256051))

(declare-fun m!4256053 () Bool)

(assert (=> b!3761844 m!4256053))

(assert (=> b!3761562 d!1098826))

(declare-fun d!1098830 () Bool)

(declare-fun c!651412 () Bool)

(assert (=> d!1098830 (= c!651412 ((_ is Node!12298) (right!31403 (c!651313 acc!400))))))

(declare-fun e!2326667 () Bool)

(assert (=> d!1098830 (= (inv!53851 (right!31403 (c!651313 acc!400))) e!2326667)))

(declare-fun b!3761845 () Bool)

(assert (=> b!3761845 (= e!2326667 (inv!53859 (right!31403 (c!651313 acc!400))))))

(declare-fun b!3761846 () Bool)

(declare-fun e!2326668 () Bool)

(assert (=> b!3761846 (= e!2326667 e!2326668)))

(declare-fun res!1523299 () Bool)

(assert (=> b!3761846 (= res!1523299 (not ((_ is Leaf!19074) (right!31403 (c!651313 acc!400)))))))

(assert (=> b!3761846 (=> res!1523299 e!2326668)))

(declare-fun b!3761847 () Bool)

(assert (=> b!3761847 (= e!2326668 (inv!53860 (right!31403 (c!651313 acc!400))))))

(assert (= (and d!1098830 c!651412) b!3761845))

(assert (= (and d!1098830 (not c!651412)) b!3761846))

(assert (= (and b!3761846 (not res!1523299)) b!3761847))

(declare-fun m!4256055 () Bool)

(assert (=> b!3761845 m!4256055))

(declare-fun m!4256057 () Bool)

(assert (=> b!3761847 m!4256057))

(assert (=> b!3761562 d!1098830))

(declare-fun d!1098832 () Bool)

(declare-fun lt!1302134 () Int)

(assert (=> d!1098832 (>= lt!1302134 0)))

(declare-fun e!2326673 () Int)

(assert (=> d!1098832 (= lt!1302134 e!2326673)))

(declare-fun c!651416 () Bool)

(assert (=> d!1098832 (= c!651416 ((_ is Nil!40141) (list!14822 v!6347)))))

(assert (=> d!1098832 (= (size!30210 (list!14822 v!6347)) lt!1302134)))

(declare-fun b!3761856 () Bool)

(assert (=> b!3761856 (= e!2326673 0)))

(declare-fun b!3761857 () Bool)

(assert (=> b!3761857 (= e!2326673 (+ 1 (size!30210 (t!303914 (list!14822 v!6347)))))))

(assert (= (and d!1098832 c!651416) b!3761856))

(assert (= (and d!1098832 (not c!651416)) b!3761857))

(declare-fun m!4256073 () Bool)

(assert (=> b!3761857 m!4256073))

(assert (=> d!1098736 d!1098832))

(declare-fun d!1098838 () Bool)

(assert (=> d!1098838 (= (list!14822 v!6347) (list!14820 (c!651315 v!6347)))))

(declare-fun bs!575823 () Bool)

(assert (= bs!575823 d!1098838))

(assert (=> bs!575823 m!4255729))

(assert (=> d!1098736 d!1098838))

(declare-fun d!1098848 () Bool)

(declare-fun lt!1302145 () Int)

(assert (=> d!1098848 (= lt!1302145 (size!30210 (list!14820 (c!651315 v!6347))))))

(assert (=> d!1098848 (= lt!1302145 (ite ((_ is Empty!12299) (c!651315 v!6347)) 0 (ite ((_ is Leaf!19075) (c!651315 v!6347)) (csize!24829 (c!651315 v!6347)) (csize!24828 (c!651315 v!6347)))))))

(assert (=> d!1098848 (= (size!30211 (c!651315 v!6347)) lt!1302145)))

(declare-fun bs!575824 () Bool)

(assert (= bs!575824 d!1098848))

(assert (=> bs!575824 m!4255729))

(assert (=> bs!575824 m!4255729))

(assert (=> bs!575824 m!4255825))

(assert (=> d!1098736 d!1098848))

(declare-fun b!3761927 () Bool)

(declare-fun res!1523343 () Bool)

(declare-fun e!2326710 () Bool)

(assert (=> b!3761927 (=> (not res!1523343) (not e!2326710))))

(assert (=> b!3761927 (= res!1523343 (<= (- (height!1755 (left!31073 (c!651313 acc!400))) (height!1755 (right!31403 (c!651313 acc!400)))) 1))))

(declare-fun b!3761928 () Bool)

(declare-fun isEmpty!23585 (Conc!12298) Bool)

(assert (=> b!3761928 (= e!2326710 (not (isEmpty!23585 (right!31403 (c!651313 acc!400)))))))

(declare-fun b!3761929 () Bool)

(declare-fun res!1523341 () Bool)

(assert (=> b!3761929 (=> (not res!1523341) (not e!2326710))))

(assert (=> b!3761929 (= res!1523341 (isBalanced!3537 (right!31403 (c!651313 acc!400))))))

(declare-fun d!1098854 () Bool)

(declare-fun res!1523338 () Bool)

(declare-fun e!2326707 () Bool)

(assert (=> d!1098854 (=> res!1523338 e!2326707)))

(assert (=> d!1098854 (= res!1523338 (not ((_ is Node!12298) (c!651313 acc!400))))))

(assert (=> d!1098854 (= (isBalanced!3537 (c!651313 acc!400)) e!2326707)))

(declare-fun b!3761930 () Bool)

(declare-fun res!1523340 () Bool)

(assert (=> b!3761930 (=> (not res!1523340) (not e!2326710))))

(assert (=> b!3761930 (= res!1523340 (isBalanced!3537 (left!31073 (c!651313 acc!400))))))

(declare-fun b!3761931 () Bool)

(declare-fun res!1523339 () Bool)

(assert (=> b!3761931 (=> (not res!1523339) (not e!2326710))))

(assert (=> b!3761931 (= res!1523339 (not (isEmpty!23585 (left!31073 (c!651313 acc!400)))))))

(declare-fun b!3761932 () Bool)

(assert (=> b!3761932 (= e!2326707 e!2326710)))

(declare-fun res!1523342 () Bool)

(assert (=> b!3761932 (=> (not res!1523342) (not e!2326710))))

(assert (=> b!3761932 (= res!1523342 (<= (- 1) (- (height!1755 (left!31073 (c!651313 acc!400))) (height!1755 (right!31403 (c!651313 acc!400))))))))

(assert (= (and d!1098854 (not res!1523338)) b!3761932))

(assert (= (and b!3761932 res!1523342) b!3761927))

(assert (= (and b!3761927 res!1523343) b!3761930))

(assert (= (and b!3761930 res!1523340) b!3761929))

(assert (= (and b!3761929 res!1523341) b!3761931))

(assert (= (and b!3761931 res!1523339) b!3761928))

(declare-fun m!4256159 () Bool)

(assert (=> b!3761930 m!4256159))

(declare-fun m!4256161 () Bool)

(assert (=> b!3761929 m!4256161))

(declare-fun m!4256163 () Bool)

(assert (=> b!3761931 m!4256163))

(assert (=> b!3761932 m!4255883))

(assert (=> b!3761932 m!4255885))

(assert (=> b!3761927 m!4255883))

(assert (=> b!3761927 m!4255885))

(declare-fun m!4256165 () Bool)

(assert (=> b!3761928 m!4256165))

(assert (=> d!1098730 d!1098854))

(declare-fun d!1098856 () Bool)

(declare-fun res!1523350 () Bool)

(declare-fun e!2326728 () Bool)

(assert (=> d!1098856 (=> (not res!1523350) (not e!2326728))))

(assert (=> d!1098856 (= res!1523350 (= (csize!24828 (c!651315 v!6347)) (+ (size!30211 (left!31074 (c!651315 v!6347))) (size!30211 (right!31404 (c!651315 v!6347))))))))

(assert (=> d!1098856 (= (inv!53855 (c!651315 v!6347)) e!2326728)))

(declare-fun b!3761952 () Bool)

(declare-fun res!1523351 () Bool)

(assert (=> b!3761952 (=> (not res!1523351) (not e!2326728))))

(assert (=> b!3761952 (= res!1523351 (and (not (= (left!31074 (c!651315 v!6347)) Empty!12299)) (not (= (right!31404 (c!651315 v!6347)) Empty!12299))))))

(declare-fun b!3761953 () Bool)

(declare-fun res!1523352 () Bool)

(assert (=> b!3761953 (=> (not res!1523352) (not e!2326728))))

(assert (=> b!3761953 (= res!1523352 (= (cheight!12510 (c!651315 v!6347)) (+ (max!0 (height!1754 (left!31074 (c!651315 v!6347))) (height!1754 (right!31404 (c!651315 v!6347)))) 1)))))

(declare-fun b!3761954 () Bool)

(assert (=> b!3761954 (= e!2326728 (<= 0 (cheight!12510 (c!651315 v!6347))))))

(assert (= (and d!1098856 res!1523350) b!3761952))

(assert (= (and b!3761952 res!1523351) b!3761953))

(assert (= (and b!3761953 res!1523352) b!3761954))

(declare-fun m!4256179 () Bool)

(assert (=> d!1098856 m!4256179))

(declare-fun m!4256181 () Bool)

(assert (=> d!1098856 m!4256181))

(assert (=> b!3761953 m!4255861))

(assert (=> b!3761953 m!4255863))

(assert (=> b!3761953 m!4255861))

(assert (=> b!3761953 m!4255863))

(declare-fun m!4256183 () Bool)

(assert (=> b!3761953 m!4256183))

(assert (=> b!3761488 d!1098856))

(declare-fun b!3761955 () Bool)

(declare-fun tp!1149540 () Bool)

(declare-fun e!2326729 () Bool)

(declare-fun tp!1149539 () Bool)

(assert (=> b!3761955 (= e!2326729 (and (inv!53854 (left!31074 (left!31074 (c!651315 v!6347)))) tp!1149539 (inv!53854 (right!31404 (left!31074 (c!651315 v!6347)))) tp!1149540))))

(declare-fun b!3761957 () Bool)

(declare-fun e!2326730 () Bool)

(declare-fun tp!1149538 () Bool)

(assert (=> b!3761957 (= e!2326730 tp!1149538)))

(declare-fun b!3761956 () Bool)

(assert (=> b!3761956 (= e!2326729 (and (inv!53863 (xs!15505 (left!31074 (c!651315 v!6347)))) e!2326730))))

(assert (=> b!3761540 (= tp!1149485 (and (inv!53854 (left!31074 (c!651315 v!6347))) e!2326729))))

(assert (= (and b!3761540 ((_ is Node!12299) (left!31074 (c!651315 v!6347)))) b!3761955))

(assert (= b!3761956 b!3761957))

(assert (= (and b!3761540 ((_ is Leaf!19075) (left!31074 (c!651315 v!6347)))) b!3761956))

(declare-fun m!4256185 () Bool)

(assert (=> b!3761955 m!4256185))

(declare-fun m!4256187 () Bool)

(assert (=> b!3761955 m!4256187))

(declare-fun m!4256189 () Bool)

(assert (=> b!3761956 m!4256189))

(assert (=> b!3761540 m!4255759))

(declare-fun b!3761958 () Bool)

(declare-fun tp!1149543 () Bool)

(declare-fun e!2326731 () Bool)

(declare-fun tp!1149542 () Bool)

(assert (=> b!3761958 (= e!2326731 (and (inv!53854 (left!31074 (right!31404 (c!651315 v!6347)))) tp!1149542 (inv!53854 (right!31404 (right!31404 (c!651315 v!6347)))) tp!1149543))))

(declare-fun b!3761960 () Bool)

(declare-fun e!2326732 () Bool)

(declare-fun tp!1149541 () Bool)

(assert (=> b!3761960 (= e!2326732 tp!1149541)))

(declare-fun b!3761959 () Bool)

(assert (=> b!3761959 (= e!2326731 (and (inv!53863 (xs!15505 (right!31404 (c!651315 v!6347)))) e!2326732))))

(assert (=> b!3761540 (= tp!1149486 (and (inv!53854 (right!31404 (c!651315 v!6347))) e!2326731))))

(assert (= (and b!3761540 ((_ is Node!12299) (right!31404 (c!651315 v!6347)))) b!3761958))

(assert (= b!3761959 b!3761960))

(assert (= (and b!3761540 ((_ is Leaf!19075) (right!31404 (c!651315 v!6347)))) b!3761959))

(declare-fun m!4256191 () Bool)

(assert (=> b!3761958 m!4256191))

(declare-fun m!4256193 () Bool)

(assert (=> b!3761958 m!4256193))

(declare-fun m!4256195 () Bool)

(assert (=> b!3761959 m!4256195))

(assert (=> b!3761540 m!4255761))

(declare-fun b!3761965 () Bool)

(declare-fun e!2326735 () Bool)

(declare-fun tp_is_empty!19125 () Bool)

(declare-fun tp!1149546 () Bool)

(assert (=> b!3761965 (= e!2326735 (and tp_is_empty!19125 tp!1149546))))

(assert (=> b!3761564 (= tp!1149503 e!2326735)))

(assert (= (and b!3761564 ((_ is Cons!40139) (innerList!12358 (xs!15504 (c!651313 acc!400))))) b!3761965))

(declare-fun tp!1149549 () Bool)

(declare-fun e!2326737 () Bool)

(declare-fun tp!1149547 () Bool)

(declare-fun b!3761966 () Bool)

(assert (=> b!3761966 (= e!2326737 (and (inv!53851 (left!31073 (left!31073 (c!651313 acc!400)))) tp!1149549 (inv!53851 (right!31403 (left!31073 (c!651313 acc!400)))) tp!1149547))))

(declare-fun b!3761968 () Bool)

(declare-fun e!2326736 () Bool)

(declare-fun tp!1149548 () Bool)

(assert (=> b!3761968 (= e!2326736 tp!1149548)))

(declare-fun b!3761967 () Bool)

(assert (=> b!3761967 (= e!2326737 (and (inv!53865 (xs!15504 (left!31073 (c!651313 acc!400)))) e!2326736))))

(assert (=> b!3761562 (= tp!1149504 (and (inv!53851 (left!31073 (c!651313 acc!400))) e!2326737))))

(assert (= (and b!3761562 ((_ is Node!12298) (left!31073 (c!651313 acc!400)))) b!3761966))

(assert (= b!3761967 b!3761968))

(assert (= (and b!3761562 ((_ is Leaf!19074) (left!31073 (c!651313 acc!400)))) b!3761967))

(declare-fun m!4256197 () Bool)

(assert (=> b!3761966 m!4256197))

(declare-fun m!4256199 () Bool)

(assert (=> b!3761966 m!4256199))

(declare-fun m!4256201 () Bool)

(assert (=> b!3761967 m!4256201))

(assert (=> b!3761562 m!4255771))

(declare-fun b!3761969 () Bool)

(declare-fun e!2326739 () Bool)

(declare-fun tp!1149552 () Bool)

(declare-fun tp!1149550 () Bool)

(assert (=> b!3761969 (= e!2326739 (and (inv!53851 (left!31073 (right!31403 (c!651313 acc!400)))) tp!1149552 (inv!53851 (right!31403 (right!31403 (c!651313 acc!400)))) tp!1149550))))

(declare-fun b!3761971 () Bool)

(declare-fun e!2326738 () Bool)

(declare-fun tp!1149551 () Bool)

(assert (=> b!3761971 (= e!2326738 tp!1149551)))

(declare-fun b!3761970 () Bool)

(assert (=> b!3761970 (= e!2326739 (and (inv!53865 (xs!15504 (right!31403 (c!651313 acc!400)))) e!2326738))))

(assert (=> b!3761562 (= tp!1149502 (and (inv!53851 (right!31403 (c!651313 acc!400))) e!2326739))))

(assert (= (and b!3761562 ((_ is Node!12298) (right!31403 (c!651313 acc!400)))) b!3761969))

(assert (= b!3761970 b!3761971))

(assert (= (and b!3761562 ((_ is Leaf!19074) (right!31403 (c!651313 acc!400)))) b!3761970))

(declare-fun m!4256203 () Bool)

(assert (=> b!3761969 m!4256203))

(declare-fun m!4256205 () Bool)

(assert (=> b!3761969 m!4256205))

(declare-fun m!4256207 () Bool)

(assert (=> b!3761970 m!4256207))

(assert (=> b!3761562 m!4255773))

(declare-fun b!3761985 () Bool)

(declare-fun b_free!100733 () Bool)

(declare-fun b_next!101437 () Bool)

(assert (=> b!3761985 (= b_free!100733 (not b_next!101437))))

(declare-fun tp!1149564 () Bool)

(declare-fun b_and!279455 () Bool)

(assert (=> b!3761985 (= tp!1149564 b_and!279455)))

(declare-fun b_free!100735 () Bool)

(declare-fun b_next!101439 () Bool)

(assert (=> b!3761985 (= b_free!100735 (not b_next!101439))))

(declare-fun tb!215255 () Bool)

(declare-fun t!303928 () Bool)

(assert (=> (and b!3761985 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052))))) t!303928) tb!215255))

(declare-fun b!3761990 () Bool)

(declare-fun e!2326760 () Bool)

(declare-fun tp!1149570 () Bool)

(assert (=> b!3761990 (= e!2326760 (and (inv!53851 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))) tp!1149570))))

(declare-fun result!262902 () Bool)

(assert (=> tb!215255 (= result!262902 (and (inv!53852 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))) e!2326760))))

(assert (= tb!215255 b!3761990))

(declare-fun m!4256209 () Bool)

(assert (=> b!3761990 m!4256209))

(declare-fun m!4256211 () Bool)

(assert (=> tb!215255 m!4256211))

(assert (=> d!1098798 t!303928))

(declare-fun tp!1149566 () Bool)

(declare-fun b_and!279457 () Bool)

(assert (=> b!3761985 (= tp!1149566 (and (=> t!303928 result!262902) b_and!279457))))

(declare-fun e!2326755 () Bool)

(assert (=> b!3761542 (= tp!1149484 e!2326755)))

(declare-fun tp!1149563 () Bool)

(declare-fun e!2326754 () Bool)

(declare-fun b!3761982 () Bool)

(declare-fun inv!53867 (Token!11450) Bool)

(assert (=> b!3761982 (= e!2326755 (and (inv!53867 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))) e!2326754 tp!1149563))))

(declare-fun e!2326752 () Bool)

(declare-fun tp!1149565 () Bool)

(declare-fun b!3761983 () Bool)

(declare-fun inv!21 (TokenValue!6386) Bool)

(assert (=> b!3761983 (= e!2326754 (and (inv!21 (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))) e!2326752 tp!1149565))))

(declare-fun e!2326753 () Bool)

(assert (=> b!3761985 (= e!2326753 (and tp!1149564 tp!1149566))))

(declare-fun tp!1149567 () Bool)

(declare-fun b!3761984 () Bool)

(declare-fun inv!53846 (String!45612) Bool)

(declare-fun inv!53868 (TokenValueInjection!12200) Bool)

(assert (=> b!3761984 (= e!2326752 (and tp!1149567 (inv!53846 (tag!7016 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (inv!53868 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) e!2326753))))

(assert (= b!3761984 b!3761985))

(assert (= b!3761983 b!3761984))

(assert (= b!3761982 b!3761983))

(assert (= (and b!3761542 ((_ is Cons!40141) (innerList!12359 (xs!15505 (c!651315 v!6347))))) b!3761982))

(declare-fun m!4256213 () Bool)

(assert (=> b!3761982 m!4256213))

(declare-fun m!4256215 () Bool)

(assert (=> b!3761983 m!4256215))

(declare-fun m!4256217 () Bool)

(assert (=> b!3761984 m!4256217))

(declare-fun m!4256219 () Bool)

(assert (=> b!3761984 m!4256219))

(check-sat (not b!3761745) (not b!3761967) (not b_lambda!110395) (not b!3761931) (not b!3761982) (not b!3761739) (not d!1098818) (not b!3761842) (not d!1098780) (not b!3761662) (not b!3761956) (not b!3761960) (not b!3761710) (not d!1098746) (not b!3761965) (not d!1098770) (not b!3761785) (not b!3761955) (not b!3761714) (not b!3761766) (not d!1098820) (not b!3761748) (not d!1098838) (not b!3761932) (not tb!215255) (not d!1098792) (not b!3761588) (not b!3761790) (not b!3761970) (not d!1098810) (not b!3761990) (not bm!275418) (not b!3761640) (not d!1098812) (not d!1098790) (not b!3761927) (not d!1098814) (not b!3761969) (not b!3761958) (not b!3761930) (not b!3761857) (not b!3761844) (not b!3761818) (not b!3761540) (not d!1098796) (not b!3761929) (not b!3761833) (not b!3761953) (not b!3761983) (not b!3761984) tp_is_empty!19125 (not b!3761747) (not d!1098798) (not b!3761847) (not b!3761709) (not b!3761840) (not b_next!101439) (not d!1098808) (not b!3761712) (not b!3761966) (not b!3761713) (not b!3761802) (not b!3761711) (not d!1098744) (not b!3761801) (not b!3761599) (not b!3761792) (not b!3761845) (not b!3761767) (not b!3761663) (not b!3761968) (not d!1098848) (not b!3761789) (not b!3761928) (not b!3761971) b_and!279457 (not b!3761587) (not d!1098768) (not b!3761562) (not b_next!101437) (not d!1098806) (not b!3761830) (not b!3761786) (not b!3761959) b_and!279455 (not b!3761645) (not b!3761782) (not b!3761834) (not b!3761957) (not b!3761817) (not b!3761750) (not d!1098856))
(check-sat b_and!279457 b_and!279455 (not b_next!101437) (not b_next!101439))
(get-model)

(declare-fun d!1098858 () Bool)

(declare-fun c!651424 () Bool)

(assert (=> d!1098858 (= c!651424 ((_ is Nil!40139) lt!1302125))))

(declare-fun e!2326763 () (InoxSet C!22308))

(assert (=> d!1098858 (= (content!5894 lt!1302125) e!2326763)))

(declare-fun b!3761995 () Bool)

(assert (=> b!3761995 (= e!2326763 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3761996 () Bool)

(assert (=> b!3761996 (= e!2326763 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302125) true) (content!5894 (t!303912 lt!1302125))))))

(assert (= (and d!1098858 c!651424) b!3761995))

(assert (= (and d!1098858 (not c!651424)) b!3761996))

(declare-fun m!4256221 () Bool)

(assert (=> b!3761996 m!4256221))

(declare-fun m!4256223 () Bool)

(assert (=> b!3761996 m!4256223))

(assert (=> d!1098820 d!1098858))

(declare-fun d!1098860 () Bool)

(declare-fun c!651425 () Bool)

(assert (=> d!1098860 (= c!651425 ((_ is Nil!40139) lt!1302051))))

(declare-fun e!2326764 () (InoxSet C!22308))

(assert (=> d!1098860 (= (content!5894 lt!1302051) e!2326764)))

(declare-fun b!3761997 () Bool)

(assert (=> b!3761997 (= e!2326764 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3761998 () Bool)

(assert (=> b!3761998 (= e!2326764 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302051) true) (content!5894 (t!303912 lt!1302051))))))

(assert (= (and d!1098860 c!651425) b!3761997))

(assert (= (and d!1098860 (not c!651425)) b!3761998))

(declare-fun m!4256225 () Bool)

(assert (=> b!3761998 m!4256225))

(declare-fun m!4256227 () Bool)

(assert (=> b!3761998 m!4256227))

(assert (=> d!1098820 d!1098860))

(declare-fun d!1098862 () Bool)

(declare-fun c!651426 () Bool)

(assert (=> d!1098862 (= c!651426 ((_ is Nil!40139) (printList!1661 thiss!13650 lt!1302052)))))

(declare-fun e!2326765 () (InoxSet C!22308))

(assert (=> d!1098862 (= (content!5894 (printList!1661 thiss!13650 lt!1302052)) e!2326765)))

(declare-fun b!3761999 () Bool)

(assert (=> b!3761999 (= e!2326765 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762000 () Bool)

(assert (=> b!3762000 (= e!2326765 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (printList!1661 thiss!13650 lt!1302052)) true) (content!5894 (t!303912 (printList!1661 thiss!13650 lt!1302052)))))))

(assert (= (and d!1098862 c!651426) b!3761999))

(assert (= (and d!1098862 (not c!651426)) b!3762000))

(declare-fun m!4256229 () Bool)

(assert (=> b!3762000 m!4256229))

(declare-fun m!4256231 () Bool)

(assert (=> b!3762000 m!4256231))

(assert (=> d!1098820 d!1098862))

(declare-fun d!1098864 () Bool)

(declare-fun c!651427 () Bool)

(assert (=> d!1098864 (= c!651427 ((_ is Nil!40139) lt!1302106))))

(declare-fun e!2326766 () (InoxSet C!22308))

(assert (=> d!1098864 (= (content!5894 lt!1302106) e!2326766)))

(declare-fun b!3762001 () Bool)

(assert (=> b!3762001 (= e!2326766 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762002 () Bool)

(assert (=> b!3762002 (= e!2326766 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302106) true) (content!5894 (t!303912 lt!1302106))))))

(assert (= (and d!1098864 c!651427) b!3762001))

(assert (= (and d!1098864 (not c!651427)) b!3762002))

(declare-fun m!4256233 () Bool)

(assert (=> b!3762002 m!4256233))

(declare-fun m!4256235 () Bool)

(assert (=> b!3762002 m!4256235))

(assert (=> d!1098792 d!1098864))

(assert (=> d!1098792 d!1098860))

(declare-fun d!1098866 () Bool)

(declare-fun c!651428 () Bool)

(assert (=> d!1098866 (= c!651428 ((_ is Nil!40139) (++!9954 lt!1302080 lt!1302082)))))

(declare-fun e!2326767 () (InoxSet C!22308))

(assert (=> d!1098866 (= (content!5894 (++!9954 lt!1302080 lt!1302082)) e!2326767)))

(declare-fun b!3762003 () Bool)

(assert (=> b!3762003 (= e!2326767 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762004 () Bool)

(assert (=> b!3762004 (= e!2326767 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (++!9954 lt!1302080 lt!1302082)) true) (content!5894 (t!303912 (++!9954 lt!1302080 lt!1302082)))))))

(assert (= (and d!1098866 c!651428) b!3762003))

(assert (= (and d!1098866 (not c!651428)) b!3762004))

(declare-fun m!4256237 () Bool)

(assert (=> b!3762004 m!4256237))

(declare-fun m!4256239 () Bool)

(assert (=> b!3762004 m!4256239))

(assert (=> d!1098792 d!1098866))

(declare-fun d!1098868 () Bool)

(declare-fun lt!1302148 () Int)

(assert (=> d!1098868 (= lt!1302148 (size!30213 (list!14819 (left!31073 (c!651313 acc!400)))))))

(assert (=> d!1098868 (= lt!1302148 (ite ((_ is Empty!12298) (left!31073 (c!651313 acc!400))) 0 (ite ((_ is Leaf!19074) (left!31073 (c!651313 acc!400))) (csize!24827 (left!31073 (c!651313 acc!400))) (csize!24826 (left!31073 (c!651313 acc!400))))))))

(assert (=> d!1098868 (= (size!30214 (left!31073 (c!651313 acc!400))) lt!1302148)))

(declare-fun bs!575825 () Bool)

(assert (= bs!575825 d!1098868))

(assert (=> bs!575825 m!4255785))

(assert (=> bs!575825 m!4255785))

(declare-fun m!4256241 () Bool)

(assert (=> bs!575825 m!4256241))

(assert (=> d!1098770 d!1098868))

(declare-fun d!1098870 () Bool)

(declare-fun lt!1302149 () Int)

(assert (=> d!1098870 (= lt!1302149 (size!30213 (list!14819 (right!31403 (c!651313 acc!400)))))))

(assert (=> d!1098870 (= lt!1302149 (ite ((_ is Empty!12298) (right!31403 (c!651313 acc!400))) 0 (ite ((_ is Leaf!19074) (right!31403 (c!651313 acc!400))) (csize!24827 (right!31403 (c!651313 acc!400))) (csize!24826 (right!31403 (c!651313 acc!400))))))))

(assert (=> d!1098870 (= (size!30214 (right!31403 (c!651313 acc!400))) lt!1302149)))

(declare-fun bs!575826 () Bool)

(assert (= bs!575826 d!1098870))

(assert (=> bs!575826 m!4255787))

(assert (=> bs!575826 m!4255787))

(declare-fun m!4256243 () Bool)

(assert (=> bs!575826 m!4256243))

(assert (=> d!1098770 d!1098870))

(declare-fun d!1098872 () Bool)

(declare-fun c!651429 () Bool)

(assert (=> d!1098872 (= c!651429 ((_ is Node!12299) (left!31074 (right!31404 (c!651315 v!6347)))))))

(declare-fun e!2326768 () Bool)

(assert (=> d!1098872 (= (inv!53854 (left!31074 (right!31404 (c!651315 v!6347)))) e!2326768)))

(declare-fun b!3762005 () Bool)

(assert (=> b!3762005 (= e!2326768 (inv!53855 (left!31074 (right!31404 (c!651315 v!6347)))))))

(declare-fun b!3762006 () Bool)

(declare-fun e!2326769 () Bool)

(assert (=> b!3762006 (= e!2326768 e!2326769)))

(declare-fun res!1523356 () Bool)

(assert (=> b!3762006 (= res!1523356 (not ((_ is Leaf!19075) (left!31074 (right!31404 (c!651315 v!6347))))))))

(assert (=> b!3762006 (=> res!1523356 e!2326769)))

(declare-fun b!3762007 () Bool)

(assert (=> b!3762007 (= e!2326769 (inv!53857 (left!31074 (right!31404 (c!651315 v!6347)))))))

(assert (= (and d!1098872 c!651429) b!3762005))

(assert (= (and d!1098872 (not c!651429)) b!3762006))

(assert (= (and b!3762006 (not res!1523356)) b!3762007))

(declare-fun m!4256245 () Bool)

(assert (=> b!3762005 m!4256245))

(declare-fun m!4256247 () Bool)

(assert (=> b!3762007 m!4256247))

(assert (=> b!3761958 d!1098872))

(declare-fun d!1098874 () Bool)

(declare-fun c!651430 () Bool)

(assert (=> d!1098874 (= c!651430 ((_ is Node!12299) (right!31404 (right!31404 (c!651315 v!6347)))))))

(declare-fun e!2326770 () Bool)

(assert (=> d!1098874 (= (inv!53854 (right!31404 (right!31404 (c!651315 v!6347)))) e!2326770)))

(declare-fun b!3762008 () Bool)

(assert (=> b!3762008 (= e!2326770 (inv!53855 (right!31404 (right!31404 (c!651315 v!6347)))))))

(declare-fun b!3762009 () Bool)

(declare-fun e!2326771 () Bool)

(assert (=> b!3762009 (= e!2326770 e!2326771)))

(declare-fun res!1523357 () Bool)

(assert (=> b!3762009 (= res!1523357 (not ((_ is Leaf!19075) (right!31404 (right!31404 (c!651315 v!6347))))))))

(assert (=> b!3762009 (=> res!1523357 e!2326771)))

(declare-fun b!3762010 () Bool)

(assert (=> b!3762010 (= e!2326771 (inv!53857 (right!31404 (right!31404 (c!651315 v!6347)))))))

(assert (= (and d!1098874 c!651430) b!3762008))

(assert (= (and d!1098874 (not c!651430)) b!3762009))

(assert (= (and b!3762009 (not res!1523357)) b!3762010))

(declare-fun m!4256249 () Bool)

(assert (=> b!3762008 m!4256249))

(declare-fun m!4256251 () Bool)

(assert (=> b!3762010 m!4256251))

(assert (=> b!3761958 d!1098874))

(declare-fun b!3762011 () Bool)

(declare-fun e!2326776 () Int)

(declare-fun call!275427 () Int)

(assert (=> b!3762011 (= e!2326776 call!275427)))

(declare-fun b!3762012 () Bool)

(declare-fun e!2326774 () Int)

(assert (=> b!3762012 (= e!2326774 0)))

(declare-fun b!3762013 () Bool)

(declare-fun e!2326775 () List!40265)

(assert (=> b!3762013 (= e!2326775 (t!303914 (list!14820 (c!651315 v!6347))))))

(declare-fun d!1098876 () Bool)

(declare-fun e!2326773 () Bool)

(assert (=> d!1098876 e!2326773))

(declare-fun res!1523358 () Bool)

(assert (=> d!1098876 (=> (not res!1523358) (not e!2326773))))

(declare-fun lt!1302150 () List!40265)

(assert (=> d!1098876 (= res!1523358 (= ((_ map implies) (content!5892 lt!1302150) (content!5892 (t!303914 (list!14820 (c!651315 v!6347))))) ((as const (InoxSet Token!11450)) true)))))

(declare-fun e!2326772 () List!40265)

(assert (=> d!1098876 (= lt!1302150 e!2326772)))

(declare-fun c!651432 () Bool)

(assert (=> d!1098876 (= c!651432 ((_ is Nil!40141) (t!303914 (list!14820 (c!651315 v!6347)))))))

(assert (=> d!1098876 (= (drop!2101 (t!303914 (list!14820 (c!651315 v!6347))) (- from!841 1)) lt!1302150)))

(declare-fun b!3762014 () Bool)

(assert (=> b!3762014 (= e!2326775 (drop!2101 (t!303914 (t!303914 (list!14820 (c!651315 v!6347)))) (- (- from!841 1) 1)))))

(declare-fun b!3762015 () Bool)

(assert (=> b!3762015 (= e!2326772 e!2326775)))

(declare-fun c!651433 () Bool)

(assert (=> b!3762015 (= c!651433 (<= (- from!841 1) 0))))

(declare-fun b!3762016 () Bool)

(assert (=> b!3762016 (= e!2326776 e!2326774)))

(declare-fun c!651434 () Bool)

(assert (=> b!3762016 (= c!651434 (>= (- from!841 1) call!275427))))

(declare-fun b!3762017 () Bool)

(assert (=> b!3762017 (= e!2326772 Nil!40141)))

(declare-fun b!3762018 () Bool)

(assert (=> b!3762018 (= e!2326774 (- call!275427 (- from!841 1)))))

(declare-fun b!3762019 () Bool)

(assert (=> b!3762019 (= e!2326773 (= (size!30210 lt!1302150) e!2326776))))

(declare-fun c!651431 () Bool)

(assert (=> b!3762019 (= c!651431 (<= (- from!841 1) 0))))

(declare-fun bm!275422 () Bool)

(assert (=> bm!275422 (= call!275427 (size!30210 (t!303914 (list!14820 (c!651315 v!6347)))))))

(assert (= (and d!1098876 c!651432) b!3762017))

(assert (= (and d!1098876 (not c!651432)) b!3762015))

(assert (= (and b!3762015 c!651433) b!3762013))

(assert (= (and b!3762015 (not c!651433)) b!3762014))

(assert (= (and d!1098876 res!1523358) b!3762019))

(assert (= (and b!3762019 c!651431) b!3762011))

(assert (= (and b!3762019 (not c!651431)) b!3762016))

(assert (= (and b!3762016 c!651434) b!3762012))

(assert (= (and b!3762016 (not c!651434)) b!3762018))

(assert (= (or b!3762011 b!3762016 b!3762018) bm!275422))

(declare-fun m!4256253 () Bool)

(assert (=> d!1098876 m!4256253))

(declare-fun m!4256255 () Bool)

(assert (=> d!1098876 m!4256255))

(declare-fun m!4256257 () Bool)

(assert (=> b!3762014 m!4256257))

(declare-fun m!4256259 () Bool)

(assert (=> b!3762019 m!4256259))

(declare-fun m!4256261 () Bool)

(assert (=> bm!275422 m!4256261))

(assert (=> b!3761640 d!1098876))

(declare-fun d!1098878 () Bool)

(assert (=> d!1098878 (= (height!1754 (left!31074 (c!651315 v!6347))) (ite ((_ is Empty!12299) (left!31074 (c!651315 v!6347))) 0 (ite ((_ is Leaf!19075) (left!31074 (c!651315 v!6347))) 1 (cheight!12510 (left!31074 (c!651315 v!6347))))))))

(assert (=> b!3761713 d!1098878))

(declare-fun d!1098880 () Bool)

(assert (=> d!1098880 (= (height!1754 (right!31404 (c!651315 v!6347))) (ite ((_ is Empty!12299) (right!31404 (c!651315 v!6347))) 0 (ite ((_ is Leaf!19075) (right!31404 (c!651315 v!6347))) 1 (cheight!12510 (right!31404 (c!651315 v!6347))))))))

(assert (=> b!3761713 d!1098880))

(declare-fun b!3762020 () Bool)

(declare-fun e!2326778 () Bool)

(declare-fun e!2326777 () Bool)

(assert (=> b!3762020 (= e!2326778 e!2326777)))

(declare-fun res!1523365 () Bool)

(assert (=> b!3762020 (=> (not res!1523365) (not e!2326777))))

(assert (=> b!3762020 (= res!1523365 (<= (- 1) (- (height!1754 (left!31074 (right!31404 (c!651315 v!6347)))) (height!1754 (right!31404 (right!31404 (c!651315 v!6347)))))))))

(declare-fun b!3762021 () Bool)

(declare-fun res!1523364 () Bool)

(assert (=> b!3762021 (=> (not res!1523364) (not e!2326777))))

(assert (=> b!3762021 (= res!1523364 (not (isEmpty!23583 (left!31074 (right!31404 (c!651315 v!6347))))))))

(declare-fun d!1098882 () Bool)

(declare-fun res!1523361 () Bool)

(assert (=> d!1098882 (=> res!1523361 e!2326778)))

(assert (=> d!1098882 (= res!1523361 (not ((_ is Node!12299) (right!31404 (c!651315 v!6347)))))))

(assert (=> d!1098882 (= (isBalanced!3538 (right!31404 (c!651315 v!6347))) e!2326778)))

(declare-fun b!3762022 () Bool)

(declare-fun res!1523360 () Bool)

(assert (=> b!3762022 (=> (not res!1523360) (not e!2326777))))

(assert (=> b!3762022 (= res!1523360 (isBalanced!3538 (right!31404 (right!31404 (c!651315 v!6347)))))))

(declare-fun b!3762023 () Bool)

(declare-fun res!1523363 () Bool)

(assert (=> b!3762023 (=> (not res!1523363) (not e!2326777))))

(assert (=> b!3762023 (= res!1523363 (isBalanced!3538 (left!31074 (right!31404 (c!651315 v!6347)))))))

(declare-fun b!3762024 () Bool)

(declare-fun res!1523362 () Bool)

(assert (=> b!3762024 (=> (not res!1523362) (not e!2326777))))

(assert (=> b!3762024 (= res!1523362 (<= (- (height!1754 (left!31074 (right!31404 (c!651315 v!6347)))) (height!1754 (right!31404 (right!31404 (c!651315 v!6347))))) 1))))

(declare-fun b!3762025 () Bool)

(assert (=> b!3762025 (= e!2326777 (not (isEmpty!23583 (right!31404 (right!31404 (c!651315 v!6347))))))))

(assert (= (and d!1098882 (not res!1523361)) b!3762020))

(assert (= (and b!3762020 res!1523365) b!3762024))

(assert (= (and b!3762024 res!1523362) b!3762023))

(assert (= (and b!3762023 res!1523363) b!3762022))

(assert (= (and b!3762022 res!1523360) b!3762021))

(assert (= (and b!3762021 res!1523364) b!3762025))

(declare-fun m!4256263 () Bool)

(assert (=> b!3762023 m!4256263))

(declare-fun m!4256265 () Bool)

(assert (=> b!3762022 m!4256265))

(declare-fun m!4256267 () Bool)

(assert (=> b!3762025 m!4256267))

(declare-fun m!4256269 () Bool)

(assert (=> b!3762024 m!4256269))

(declare-fun m!4256271 () Bool)

(assert (=> b!3762024 m!4256271))

(assert (=> b!3762020 m!4256269))

(assert (=> b!3762020 m!4256271))

(declare-fun m!4256273 () Bool)

(assert (=> b!3762021 m!4256273))

(assert (=> b!3761711 d!1098882))

(declare-fun d!1098884 () Bool)

(declare-fun lt!1302153 () Int)

(assert (=> d!1098884 (>= lt!1302153 0)))

(declare-fun e!2326781 () Int)

(assert (=> d!1098884 (= lt!1302153 e!2326781)))

(declare-fun c!651437 () Bool)

(assert (=> d!1098884 (= c!651437 ((_ is Nil!40139) lt!1302101))))

(assert (=> d!1098884 (= (size!30213 lt!1302101) lt!1302153)))

(declare-fun b!3762030 () Bool)

(assert (=> b!3762030 (= e!2326781 0)))

(declare-fun b!3762031 () Bool)

(assert (=> b!3762031 (= e!2326781 (+ 1 (size!30213 (t!303912 lt!1302101))))))

(assert (= (and d!1098884 c!651437) b!3762030))

(assert (= (and d!1098884 (not c!651437)) b!3762031))

(declare-fun m!4256275 () Bool)

(assert (=> b!3762031 m!4256275))

(assert (=> b!3761767 d!1098884))

(declare-fun d!1098886 () Bool)

(declare-fun lt!1302154 () Int)

(assert (=> d!1098886 (>= lt!1302154 0)))

(declare-fun e!2326782 () Int)

(assert (=> d!1098886 (= lt!1302154 e!2326782)))

(declare-fun c!651438 () Bool)

(assert (=> d!1098886 (= c!651438 ((_ is Nil!40139) lt!1302051))))

(assert (=> d!1098886 (= (size!30213 lt!1302051) lt!1302154)))

(declare-fun b!3762032 () Bool)

(assert (=> b!3762032 (= e!2326782 0)))

(declare-fun b!3762033 () Bool)

(assert (=> b!3762033 (= e!2326782 (+ 1 (size!30213 (t!303912 lt!1302051))))))

(assert (= (and d!1098886 c!651438) b!3762032))

(assert (= (and d!1098886 (not c!651438)) b!3762033))

(declare-fun m!4256277 () Bool)

(assert (=> b!3762033 m!4256277))

(assert (=> b!3761767 d!1098886))

(declare-fun d!1098888 () Bool)

(declare-fun lt!1302155 () Int)

(assert (=> d!1098888 (>= lt!1302155 0)))

(declare-fun e!2326783 () Int)

(assert (=> d!1098888 (= lt!1302155 e!2326783)))

(declare-fun c!651439 () Bool)

(assert (=> d!1098888 (= c!651439 ((_ is Nil!40139) (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))

(assert (=> d!1098888 (= (size!30213 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302155)))

(declare-fun b!3762034 () Bool)

(assert (=> b!3762034 (= e!2326783 0)))

(declare-fun b!3762035 () Bool)

(assert (=> b!3762035 (= e!2326783 (+ 1 (size!30213 (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(assert (= (and d!1098888 c!651439) b!3762034))

(assert (= (and d!1098888 (not c!651439)) b!3762035))

(declare-fun m!4256279 () Bool)

(assert (=> b!3762035 m!4256279))

(assert (=> b!3761767 d!1098888))

(declare-fun b!3762037 () Bool)

(declare-fun e!2326784 () List!40263)

(declare-fun e!2326785 () List!40263)

(assert (=> b!3762037 (= e!2326784 e!2326785)))

(declare-fun c!651441 () Bool)

(assert (=> b!3762037 (= c!651441 ((_ is Leaf!19074) (c!651313 (charsOf!4006 (h!45561 lt!1302052)))))))

(declare-fun b!3762039 () Bool)

(assert (=> b!3762039 (= e!2326785 (++!9954 (list!14819 (left!31073 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))) (list!14819 (right!31403 (c!651313 (charsOf!4006 (h!45561 lt!1302052)))))))))

(declare-fun d!1098890 () Bool)

(declare-fun c!651440 () Bool)

(assert (=> d!1098890 (= c!651440 ((_ is Empty!12298) (c!651313 (charsOf!4006 (h!45561 lt!1302052)))))))

(assert (=> d!1098890 (= (list!14819 (c!651313 (charsOf!4006 (h!45561 lt!1302052)))) e!2326784)))

(declare-fun b!3762036 () Bool)

(assert (=> b!3762036 (= e!2326784 Nil!40139)))

(declare-fun b!3762038 () Bool)

(assert (=> b!3762038 (= e!2326785 (list!14824 (xs!15504 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))))))

(assert (= (and d!1098890 c!651440) b!3762036))

(assert (= (and d!1098890 (not c!651440)) b!3762037))

(assert (= (and b!3762037 c!651441) b!3762038))

(assert (= (and b!3762037 (not c!651441)) b!3762039))

(declare-fun m!4256281 () Bool)

(assert (=> b!3762039 m!4256281))

(declare-fun m!4256283 () Bool)

(assert (=> b!3762039 m!4256283))

(assert (=> b!3762039 m!4256281))

(assert (=> b!3762039 m!4256283))

(declare-fun m!4256285 () Bool)

(assert (=> b!3762039 m!4256285))

(declare-fun m!4256287 () Bool)

(assert (=> b!3762038 m!4256287))

(assert (=> d!1098808 d!1098890))

(declare-fun d!1098892 () Bool)

(declare-fun c!651442 () Bool)

(assert (=> d!1098892 (= c!651442 ((_ is Nil!40139) lt!1302105))))

(declare-fun e!2326786 () (InoxSet C!22308))

(assert (=> d!1098892 (= (content!5894 lt!1302105) e!2326786)))

(declare-fun b!3762040 () Bool)

(assert (=> b!3762040 (= e!2326786 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762041 () Bool)

(assert (=> b!3762041 (= e!2326786 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302105) true) (content!5894 (t!303912 lt!1302105))))))

(assert (= (and d!1098892 c!651442) b!3762040))

(assert (= (and d!1098892 (not c!651442)) b!3762041))

(declare-fun m!4256289 () Bool)

(assert (=> b!3762041 m!4256289))

(declare-fun m!4256291 () Bool)

(assert (=> b!3762041 m!4256291))

(assert (=> d!1098790 d!1098892))

(assert (=> d!1098790 d!1098860))

(declare-fun d!1098894 () Bool)

(declare-fun c!651443 () Bool)

(assert (=> d!1098894 (= c!651443 ((_ is Nil!40139) lt!1302080))))

(declare-fun e!2326787 () (InoxSet C!22308))

(assert (=> d!1098894 (= (content!5894 lt!1302080) e!2326787)))

(declare-fun b!3762042 () Bool)

(assert (=> b!3762042 (= e!2326787 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762043 () Bool)

(assert (=> b!3762043 (= e!2326787 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302080) true) (content!5894 (t!303912 lt!1302080))))))

(assert (= (and d!1098894 c!651443) b!3762042))

(assert (= (and d!1098894 (not c!651443)) b!3762043))

(declare-fun m!4256293 () Bool)

(assert (=> b!3762043 m!4256293))

(declare-fun m!4256295 () Bool)

(assert (=> b!3762043 m!4256295))

(assert (=> d!1098790 d!1098894))

(declare-fun d!1098896 () Bool)

(declare-fun res!1523367 () Bool)

(declare-fun e!2326788 () Bool)

(assert (=> d!1098896 (=> (not res!1523367) (not e!2326788))))

(assert (=> d!1098896 (= res!1523367 (<= (size!30213 (list!14824 (xs!15504 (right!31403 (c!651313 acc!400))))) 512))))

(assert (=> d!1098896 (= (inv!53860 (right!31403 (c!651313 acc!400))) e!2326788)))

(declare-fun b!3762044 () Bool)

(declare-fun res!1523368 () Bool)

(assert (=> b!3762044 (=> (not res!1523368) (not e!2326788))))

(assert (=> b!3762044 (= res!1523368 (= (csize!24827 (right!31403 (c!651313 acc!400))) (size!30213 (list!14824 (xs!15504 (right!31403 (c!651313 acc!400)))))))))

(declare-fun b!3762045 () Bool)

(assert (=> b!3762045 (= e!2326788 (and (> (csize!24827 (right!31403 (c!651313 acc!400))) 0) (<= (csize!24827 (right!31403 (c!651313 acc!400))) 512)))))

(assert (= (and d!1098896 res!1523367) b!3762044))

(assert (= (and b!3762044 res!1523368) b!3762045))

(declare-fun m!4256297 () Bool)

(assert (=> d!1098896 m!4256297))

(assert (=> d!1098896 m!4256297))

(declare-fun m!4256299 () Bool)

(assert (=> d!1098896 m!4256299))

(assert (=> b!3762044 m!4256297))

(assert (=> b!3762044 m!4256297))

(assert (=> b!3762044 m!4256299))

(assert (=> b!3761847 d!1098896))

(declare-fun d!1098898 () Bool)

(assert (=> d!1098898 (= (inv!53846 (tag!7016 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (= (mod (str.len (value!196052 (tag!7016 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) 2) 0))))

(assert (=> b!3761984 d!1098898))

(declare-fun d!1098900 () Bool)

(declare-fun res!1523371 () Bool)

(declare-fun e!2326791 () Bool)

(assert (=> d!1098900 (=> (not res!1523371) (not e!2326791))))

(declare-fun semiInverseModEq!2634 (Int Int) Bool)

(assert (=> d!1098900 (= res!1523371 (semiInverseModEq!2634 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (toValue!8512 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))))

(assert (=> d!1098900 (= (inv!53868 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) e!2326791)))

(declare-fun b!3762048 () Bool)

(declare-fun equivClasses!2533 (Int Int) Bool)

(assert (=> b!3762048 (= e!2326791 (equivClasses!2533 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (toValue!8512 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))))

(assert (= (and d!1098900 res!1523371) b!3762048))

(declare-fun m!4256301 () Bool)

(assert (=> d!1098900 m!4256301))

(declare-fun m!4256303 () Bool)

(assert (=> b!3762048 m!4256303))

(assert (=> b!3761984 d!1098900))

(declare-fun d!1098902 () Bool)

(declare-fun res!1523372 () Bool)

(declare-fun e!2326792 () Bool)

(assert (=> d!1098902 (=> (not res!1523372) (not e!2326792))))

(assert (=> d!1098902 (= res!1523372 (= (csize!24826 (right!31403 (c!651313 acc!400))) (+ (size!30214 (left!31073 (right!31403 (c!651313 acc!400)))) (size!30214 (right!31403 (right!31403 (c!651313 acc!400)))))))))

(assert (=> d!1098902 (= (inv!53859 (right!31403 (c!651313 acc!400))) e!2326792)))

(declare-fun b!3762049 () Bool)

(declare-fun res!1523373 () Bool)

(assert (=> b!3762049 (=> (not res!1523373) (not e!2326792))))

(assert (=> b!3762049 (= res!1523373 (and (not (= (left!31073 (right!31403 (c!651313 acc!400))) Empty!12298)) (not (= (right!31403 (right!31403 (c!651313 acc!400))) Empty!12298))))))

(declare-fun b!3762050 () Bool)

(declare-fun res!1523374 () Bool)

(assert (=> b!3762050 (=> (not res!1523374) (not e!2326792))))

(assert (=> b!3762050 (= res!1523374 (= (cheight!12509 (right!31403 (c!651313 acc!400))) (+ (max!0 (height!1755 (left!31073 (right!31403 (c!651313 acc!400)))) (height!1755 (right!31403 (right!31403 (c!651313 acc!400))))) 1)))))

(declare-fun b!3762051 () Bool)

(assert (=> b!3762051 (= e!2326792 (<= 0 (cheight!12509 (right!31403 (c!651313 acc!400)))))))

(assert (= (and d!1098902 res!1523372) b!3762049))

(assert (= (and b!3762049 res!1523373) b!3762050))

(assert (= (and b!3762050 res!1523374) b!3762051))

(declare-fun m!4256305 () Bool)

(assert (=> d!1098902 m!4256305))

(declare-fun m!4256307 () Bool)

(assert (=> d!1098902 m!4256307))

(declare-fun m!4256309 () Bool)

(assert (=> b!3762050 m!4256309))

(declare-fun m!4256311 () Bool)

(assert (=> b!3762050 m!4256311))

(assert (=> b!3762050 m!4256309))

(assert (=> b!3762050 m!4256311))

(declare-fun m!4256313 () Bool)

(assert (=> b!3762050 m!4256313))

(assert (=> b!3761845 d!1098902))

(assert (=> b!3761709 d!1098878))

(assert (=> b!3761709 d!1098880))

(declare-fun d!1098904 () Bool)

(assert (=> d!1098904 (= (list!14816 lt!1302117) (list!14819 (c!651313 lt!1302117)))))

(declare-fun bs!575827 () Bool)

(assert (= bs!575827 d!1098904))

(declare-fun m!4256315 () Bool)

(assert (=> bs!575827 m!4256315))

(assert (=> d!1098798 d!1098904))

(declare-fun d!1098906 () Bool)

(declare-fun res!1523379 () Bool)

(declare-fun e!2326795 () Bool)

(assert (=> d!1098906 (=> (not res!1523379) (not e!2326795))))

(declare-fun isEmpty!23587 (List!40263) Bool)

(assert (=> d!1098906 (= res!1523379 (not (isEmpty!23587 (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))))

(assert (=> d!1098906 (= (inv!53867 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))) e!2326795)))

(declare-fun b!3762056 () Bool)

(declare-fun res!1523380 () Bool)

(assert (=> b!3762056 (=> (not res!1523380) (not e!2326795))))

(assert (=> b!3762056 (= res!1523380 (= (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))) (list!14816 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))))

(declare-fun b!3762057 () Bool)

(assert (=> b!3762057 (= e!2326795 (= (size!30206 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))) (size!30213 (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))))

(assert (= (and d!1098906 res!1523379) b!3762056))

(assert (= (and b!3762056 res!1523380) b!3762057))

(declare-fun b_lambda!110399 () Bool)

(assert (=> (not b_lambda!110399) (not b!3762056)))

(declare-fun t!303932 () Bool)

(declare-fun tb!215257 () Bool)

(assert (=> (and b!3761985 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) t!303932) tb!215257))

(declare-fun b!3762058 () Bool)

(declare-fun e!2326796 () Bool)

(declare-fun tp!1149571 () Bool)

(assert (=> b!3762058 (= e!2326796 (and (inv!53851 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) tp!1149571))))

(declare-fun result!262906 () Bool)

(assert (=> tb!215257 (= result!262906 (and (inv!53852 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) e!2326796))))

(assert (= tb!215257 b!3762058))

(declare-fun m!4256317 () Bool)

(assert (=> b!3762058 m!4256317))

(declare-fun m!4256319 () Bool)

(assert (=> tb!215257 m!4256319))

(assert (=> b!3762056 t!303932))

(declare-fun b_and!279459 () Bool)

(assert (= b_and!279457 (and (=> t!303932 result!262906) b_and!279459)))

(declare-fun m!4256321 () Bool)

(assert (=> d!1098906 m!4256321))

(declare-fun m!4256323 () Bool)

(assert (=> b!3762056 m!4256323))

(assert (=> b!3762056 m!4256323))

(declare-fun m!4256325 () Bool)

(assert (=> b!3762056 m!4256325))

(declare-fun m!4256327 () Bool)

(assert (=> b!3762057 m!4256327))

(assert (=> b!3761982 d!1098906))

(assert (=> b!3761562 d!1098826))

(assert (=> b!3761562 d!1098830))

(declare-fun d!1098908 () Bool)

(declare-fun lt!1302156 () Int)

(assert (=> d!1098908 (>= lt!1302156 0)))

(declare-fun e!2326797 () Int)

(assert (=> d!1098908 (= lt!1302156 e!2326797)))

(declare-fun c!651444 () Bool)

(assert (=> d!1098908 (= c!651444 ((_ is Nil!40141) (innerList!12359 (xs!15505 (c!651315 v!6347)))))))

(assert (=> d!1098908 (= (size!30210 (innerList!12359 (xs!15505 (c!651315 v!6347)))) lt!1302156)))

(declare-fun b!3762059 () Bool)

(assert (=> b!3762059 (= e!2326797 0)))

(declare-fun b!3762060 () Bool)

(assert (=> b!3762060 (= e!2326797 (+ 1 (size!30210 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))

(assert (= (and d!1098908 c!651444) b!3762059))

(assert (= (and d!1098908 (not c!651444)) b!3762060))

(declare-fun m!4256329 () Bool)

(assert (=> b!3762060 m!4256329))

(assert (=> d!1098768 d!1098908))

(declare-fun d!1098910 () Bool)

(assert (=> d!1098910 (= (inv!53852 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))) (isBalanced!3537 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))))

(declare-fun bs!575828 () Bool)

(assert (= bs!575828 d!1098910))

(declare-fun m!4256331 () Bool)

(assert (=> bs!575828 m!4256331))

(assert (=> tb!215255 d!1098910))

(declare-fun d!1098912 () Bool)

(assert (=> d!1098912 (= (max!0 (height!1755 (left!31073 (c!651313 acc!400))) (height!1755 (right!31403 (c!651313 acc!400)))) (ite (< (height!1755 (left!31073 (c!651313 acc!400))) (height!1755 (right!31403 (c!651313 acc!400)))) (height!1755 (right!31403 (c!651313 acc!400))) (height!1755 (left!31073 (c!651313 acc!400)))))))

(assert (=> b!3761739 d!1098912))

(declare-fun d!1098914 () Bool)

(assert (=> d!1098914 (= (height!1755 (left!31073 (c!651313 acc!400))) (ite ((_ is Empty!12298) (left!31073 (c!651313 acc!400))) 0 (ite ((_ is Leaf!19074) (left!31073 (c!651313 acc!400))) 1 (cheight!12509 (left!31073 (c!651313 acc!400))))))))

(assert (=> b!3761739 d!1098914))

(declare-fun d!1098916 () Bool)

(assert (=> d!1098916 (= (height!1755 (right!31403 (c!651313 acc!400))) (ite ((_ is Empty!12298) (right!31403 (c!651313 acc!400))) 0 (ite ((_ is Leaf!19074) (right!31403 (c!651313 acc!400))) 1 (cheight!12509 (right!31403 (c!651313 acc!400))))))))

(assert (=> b!3761739 d!1098916))

(declare-fun b!3762063 () Bool)

(declare-fun res!1523382 () Bool)

(declare-fun e!2326798 () Bool)

(assert (=> b!3762063 (=> (not res!1523382) (not e!2326798))))

(declare-fun lt!1302157 () List!40263)

(assert (=> b!3762063 (= res!1523382 (= (size!30213 lt!1302157) (+ (size!30213 (t!303912 (++!9954 lt!1302051 lt!1302080))) (size!30213 lt!1302082))))))

(declare-fun d!1098918 () Bool)

(assert (=> d!1098918 e!2326798))

(declare-fun res!1523381 () Bool)

(assert (=> d!1098918 (=> (not res!1523381) (not e!2326798))))

(assert (=> d!1098918 (= res!1523381 (= (content!5894 lt!1302157) ((_ map or) (content!5894 (t!303912 (++!9954 lt!1302051 lt!1302080))) (content!5894 lt!1302082))))))

(declare-fun e!2326799 () List!40263)

(assert (=> d!1098918 (= lt!1302157 e!2326799)))

(declare-fun c!651445 () Bool)

(assert (=> d!1098918 (= c!651445 ((_ is Nil!40139) (t!303912 (++!9954 lt!1302051 lt!1302080))))))

(assert (=> d!1098918 (= (++!9954 (t!303912 (++!9954 lt!1302051 lt!1302080)) lt!1302082) lt!1302157)))

(declare-fun b!3762061 () Bool)

(assert (=> b!3762061 (= e!2326799 lt!1302082)))

(declare-fun b!3762062 () Bool)

(assert (=> b!3762062 (= e!2326799 (Cons!40139 (h!45559 (t!303912 (++!9954 lt!1302051 lt!1302080))) (++!9954 (t!303912 (t!303912 (++!9954 lt!1302051 lt!1302080))) lt!1302082)))))

(declare-fun b!3762064 () Bool)

(assert (=> b!3762064 (= e!2326798 (or (not (= lt!1302082 Nil!40139)) (= lt!1302157 (t!303912 (++!9954 lt!1302051 lt!1302080)))))))

(assert (= (and d!1098918 c!651445) b!3762061))

(assert (= (and d!1098918 (not c!651445)) b!3762062))

(assert (= (and d!1098918 res!1523381) b!3762063))

(assert (= (and b!3762063 res!1523382) b!3762064))

(declare-fun m!4256333 () Bool)

(assert (=> b!3762063 m!4256333))

(declare-fun m!4256335 () Bool)

(assert (=> b!3762063 m!4256335))

(assert (=> b!3762063 m!4255989))

(declare-fun m!4256337 () Bool)

(assert (=> d!1098918 m!4256337))

(declare-fun m!4256339 () Bool)

(assert (=> d!1098918 m!4256339))

(assert (=> d!1098918 m!4255993))

(declare-fun m!4256341 () Bool)

(assert (=> b!3762062 m!4256341))

(assert (=> b!3761817 d!1098918))

(declare-fun d!1098920 () Bool)

(declare-fun c!651446 () Bool)

(assert (=> d!1098920 (= c!651446 ((_ is Node!12298) (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))))

(declare-fun e!2326800 () Bool)

(assert (=> d!1098920 (= (inv!53851 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))) e!2326800)))

(declare-fun b!3762065 () Bool)

(assert (=> b!3762065 (= e!2326800 (inv!53859 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))))

(declare-fun b!3762066 () Bool)

(declare-fun e!2326801 () Bool)

(assert (=> b!3762066 (= e!2326800 e!2326801)))

(declare-fun res!1523383 () Bool)

(assert (=> b!3762066 (= res!1523383 (not ((_ is Leaf!19074) (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))))))

(assert (=> b!3762066 (=> res!1523383 e!2326801)))

(declare-fun b!3762067 () Bool)

(assert (=> b!3762067 (= e!2326801 (inv!53860 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))))

(assert (= (and d!1098920 c!651446) b!3762065))

(assert (= (and d!1098920 (not c!651446)) b!3762066))

(assert (= (and b!3762066 (not res!1523383)) b!3762067))

(declare-fun m!4256343 () Bool)

(assert (=> b!3762065 m!4256343))

(declare-fun m!4256345 () Bool)

(assert (=> b!3762067 m!4256345))

(assert (=> b!3761990 d!1098920))

(declare-fun d!1098922 () Bool)

(assert (=> d!1098922 (= (inv!53865 (xs!15504 (left!31073 (c!651313 acc!400)))) (<= (size!30213 (innerList!12358 (xs!15504 (left!31073 (c!651313 acc!400))))) 2147483647))))

(declare-fun bs!575829 () Bool)

(assert (= bs!575829 d!1098922))

(declare-fun m!4256347 () Bool)

(assert (=> bs!575829 m!4256347))

(assert (=> b!3761967 d!1098922))

(declare-fun d!1098924 () Bool)

(declare-fun lt!1302158 () Int)

(assert (=> d!1098924 (>= lt!1302158 0)))

(declare-fun e!2326802 () Int)

(assert (=> d!1098924 (= lt!1302158 e!2326802)))

(declare-fun c!651447 () Bool)

(assert (=> d!1098924 (= c!651447 ((_ is Nil!40139) lt!1302125))))

(assert (=> d!1098924 (= (size!30213 lt!1302125) lt!1302158)))

(declare-fun b!3762068 () Bool)

(assert (=> b!3762068 (= e!2326802 0)))

(declare-fun b!3762069 () Bool)

(assert (=> b!3762069 (= e!2326802 (+ 1 (size!30213 (t!303912 lt!1302125))))))

(assert (= (and d!1098924 c!651447) b!3762068))

(assert (= (and d!1098924 (not c!651447)) b!3762069))

(declare-fun m!4256349 () Bool)

(assert (=> b!3762069 m!4256349))

(assert (=> b!3761834 d!1098924))

(assert (=> b!3761834 d!1098886))

(declare-fun d!1098926 () Bool)

(declare-fun lt!1302159 () Int)

(assert (=> d!1098926 (>= lt!1302159 0)))

(declare-fun e!2326803 () Int)

(assert (=> d!1098926 (= lt!1302159 e!2326803)))

(declare-fun c!651448 () Bool)

(assert (=> d!1098926 (= c!651448 ((_ is Nil!40139) (printList!1661 thiss!13650 lt!1302052)))))

(assert (=> d!1098926 (= (size!30213 (printList!1661 thiss!13650 lt!1302052)) lt!1302159)))

(declare-fun b!3762070 () Bool)

(assert (=> b!3762070 (= e!2326803 0)))

(declare-fun b!3762071 () Bool)

(assert (=> b!3762071 (= e!2326803 (+ 1 (size!30213 (t!303912 (printList!1661 thiss!13650 lt!1302052)))))))

(assert (= (and d!1098926 c!651448) b!3762070))

(assert (= (and d!1098926 (not c!651448)) b!3762071))

(declare-fun m!4256351 () Bool)

(assert (=> b!3762071 m!4256351))

(assert (=> b!3761834 d!1098926))

(declare-fun d!1098928 () Bool)

(declare-fun lt!1302160 () Int)

(assert (=> d!1098928 (>= lt!1302160 0)))

(declare-fun e!2326804 () Int)

(assert (=> d!1098928 (= lt!1302160 e!2326804)))

(declare-fun c!651449 () Bool)

(assert (=> d!1098928 (= c!651449 ((_ is Nil!40139) lt!1302106))))

(assert (=> d!1098928 (= (size!30213 lt!1302106) lt!1302160)))

(declare-fun b!3762072 () Bool)

(assert (=> b!3762072 (= e!2326804 0)))

(declare-fun b!3762073 () Bool)

(assert (=> b!3762073 (= e!2326804 (+ 1 (size!30213 (t!303912 lt!1302106))))))

(assert (= (and d!1098928 c!651449) b!3762072))

(assert (= (and d!1098928 (not c!651449)) b!3762073))

(declare-fun m!4256353 () Bool)

(assert (=> b!3762073 m!4256353))

(assert (=> b!3761790 d!1098928))

(assert (=> b!3761790 d!1098886))

(declare-fun d!1098930 () Bool)

(declare-fun lt!1302161 () Int)

(assert (=> d!1098930 (>= lt!1302161 0)))

(declare-fun e!2326805 () Int)

(assert (=> d!1098930 (= lt!1302161 e!2326805)))

(declare-fun c!651450 () Bool)

(assert (=> d!1098930 (= c!651450 ((_ is Nil!40139) (++!9954 lt!1302080 lt!1302082)))))

(assert (=> d!1098930 (= (size!30213 (++!9954 lt!1302080 lt!1302082)) lt!1302161)))

(declare-fun b!3762074 () Bool)

(assert (=> b!3762074 (= e!2326805 0)))

(declare-fun b!3762075 () Bool)

(assert (=> b!3762075 (= e!2326805 (+ 1 (size!30213 (t!303912 (++!9954 lt!1302080 lt!1302082)))))))

(assert (= (and d!1098930 c!651450) b!3762074))

(assert (= (and d!1098930 (not c!651450)) b!3762075))

(declare-fun m!4256355 () Bool)

(assert (=> b!3762075 m!4256355))

(assert (=> b!3761790 d!1098930))

(declare-fun d!1098932 () Bool)

(declare-fun c!651453 () Bool)

(assert (=> d!1098932 (= c!651453 ((_ is Nil!40141) lt!1302095))))

(declare-fun e!2326808 () (InoxSet Token!11450))

(assert (=> d!1098932 (= (content!5892 lt!1302095) e!2326808)))

(declare-fun b!3762080 () Bool)

(assert (=> b!3762080 (= e!2326808 ((as const (Array Token!11450 Bool)) false))))

(declare-fun b!3762081 () Bool)

(assert (=> b!3762081 (= e!2326808 ((_ map or) (store ((as const (Array Token!11450 Bool)) false) (h!45561 lt!1302095) true) (content!5892 (t!303914 lt!1302095))))))

(assert (= (and d!1098932 c!651453) b!3762080))

(assert (= (and d!1098932 (not c!651453)) b!3762081))

(declare-fun m!4256357 () Bool)

(assert (=> b!3762081 m!4256357))

(declare-fun m!4256359 () Bool)

(assert (=> b!3762081 m!4256359))

(assert (=> d!1098746 d!1098932))

(declare-fun d!1098934 () Bool)

(declare-fun c!651454 () Bool)

(assert (=> d!1098934 (= c!651454 ((_ is Nil!40141) (list!14820 (c!651315 v!6347))))))

(declare-fun e!2326809 () (InoxSet Token!11450))

(assert (=> d!1098934 (= (content!5892 (list!14820 (c!651315 v!6347))) e!2326809)))

(declare-fun b!3762082 () Bool)

(assert (=> b!3762082 (= e!2326809 ((as const (Array Token!11450 Bool)) false))))

(declare-fun b!3762083 () Bool)

(assert (=> b!3762083 (= e!2326809 ((_ map or) (store ((as const (Array Token!11450 Bool)) false) (h!45561 (list!14820 (c!651315 v!6347))) true) (content!5892 (t!303914 (list!14820 (c!651315 v!6347))))))))

(assert (= (and d!1098934 c!651454) b!3762082))

(assert (= (and d!1098934 (not c!651454)) b!3762083))

(declare-fun m!4256361 () Bool)

(assert (=> b!3762083 m!4256361))

(assert (=> b!3762083 m!4256255))

(assert (=> d!1098746 d!1098934))

(declare-fun d!1098936 () Bool)

(declare-fun lt!1302162 () Int)

(assert (=> d!1098936 (>= lt!1302162 0)))

(declare-fun e!2326810 () Int)

(assert (=> d!1098936 (= lt!1302162 e!2326810)))

(declare-fun c!651455 () Bool)

(assert (=> d!1098936 (= c!651455 ((_ is Nil!40141) (list!14820 (c!651315 v!6347))))))

(assert (=> d!1098936 (= (size!30210 (list!14820 (c!651315 v!6347))) lt!1302162)))

(declare-fun b!3762084 () Bool)

(assert (=> b!3762084 (= e!2326810 0)))

(declare-fun b!3762085 () Bool)

(assert (=> b!3762085 (= e!2326810 (+ 1 (size!30210 (t!303914 (list!14820 (c!651315 v!6347))))))))

(assert (= (and d!1098936 c!651455) b!3762084))

(assert (= (and d!1098936 (not c!651455)) b!3762085))

(assert (=> b!3762085 m!4256261))

(assert (=> d!1098848 d!1098936))

(assert (=> d!1098848 d!1098756))

(declare-fun d!1098938 () Bool)

(declare-fun lt!1302165 () Bool)

(assert (=> d!1098938 (= lt!1302165 (isEmpty!23587 (list!14819 (left!31073 (c!651313 acc!400)))))))

(assert (=> d!1098938 (= lt!1302165 (= (size!30214 (left!31073 (c!651313 acc!400))) 0))))

(assert (=> d!1098938 (= (isEmpty!23585 (left!31073 (c!651313 acc!400))) lt!1302165)))

(declare-fun bs!575830 () Bool)

(assert (= bs!575830 d!1098938))

(assert (=> bs!575830 m!4255785))

(assert (=> bs!575830 m!4255785))

(declare-fun m!4256363 () Bool)

(assert (=> bs!575830 m!4256363))

(assert (=> bs!575830 m!4255879))

(assert (=> b!3761931 d!1098938))

(declare-fun d!1098942 () Bool)

(assert (=> d!1098942 (= (inv!53863 (xs!15505 (left!31074 (c!651315 v!6347)))) (<= (size!30210 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))) 2147483647))))

(declare-fun bs!575831 () Bool)

(assert (= bs!575831 d!1098942))

(declare-fun m!4256365 () Bool)

(assert (=> bs!575831 m!4256365))

(assert (=> b!3761956 d!1098942))

(declare-fun d!1098944 () Bool)

(declare-fun lt!1302167 () Int)

(assert (=> d!1098944 (>= lt!1302167 0)))

(declare-fun e!2326813 () Int)

(assert (=> d!1098944 (= lt!1302167 e!2326813)))

(declare-fun c!651457 () Bool)

(assert (=> d!1098944 (= c!651457 ((_ is Nil!40139) (list!14824 (xs!15504 (c!651313 acc!400)))))))

(assert (=> d!1098944 (= (size!30213 (list!14824 (xs!15504 (c!651313 acc!400)))) lt!1302167)))

(declare-fun b!3762090 () Bool)

(assert (=> b!3762090 (= e!2326813 0)))

(declare-fun b!3762091 () Bool)

(assert (=> b!3762091 (= e!2326813 (+ 1 (size!30213 (t!303912 (list!14824 (xs!15504 (c!651313 acc!400)))))))))

(assert (= (and d!1098944 c!651457) b!3762090))

(assert (= (and d!1098944 (not c!651457)) b!3762091))

(declare-fun m!4256367 () Bool)

(assert (=> b!3762091 m!4256367))

(assert (=> d!1098744 d!1098944))

(declare-fun d!1098946 () Bool)

(assert (=> d!1098946 (= (list!14824 (xs!15504 (c!651313 acc!400))) (innerList!12358 (xs!15504 (c!651313 acc!400))))))

(assert (=> d!1098744 d!1098946))

(assert (=> b!3761587 d!1098946))

(declare-fun d!1098948 () Bool)

(declare-fun lt!1302168 () Int)

(assert (=> d!1098948 (>= lt!1302168 0)))

(declare-fun e!2326814 () Int)

(assert (=> d!1098948 (= lt!1302168 e!2326814)))

(declare-fun c!651458 () Bool)

(assert (=> d!1098948 (= c!651458 ((_ is Nil!40139) lt!1302105))))

(assert (=> d!1098948 (= (size!30213 lt!1302105) lt!1302168)))

(declare-fun b!3762092 () Bool)

(assert (=> b!3762092 (= e!2326814 0)))

(declare-fun b!3762093 () Bool)

(assert (=> b!3762093 (= e!2326814 (+ 1 (size!30213 (t!303912 lt!1302105))))))

(assert (= (and d!1098948 c!651458) b!3762092))

(assert (= (and d!1098948 (not c!651458)) b!3762093))

(declare-fun m!4256373 () Bool)

(assert (=> b!3762093 m!4256373))

(assert (=> b!3761786 d!1098948))

(assert (=> b!3761786 d!1098886))

(declare-fun d!1098950 () Bool)

(declare-fun lt!1302169 () Int)

(assert (=> d!1098950 (>= lt!1302169 0)))

(declare-fun e!2326815 () Int)

(assert (=> d!1098950 (= lt!1302169 e!2326815)))

(declare-fun c!651459 () Bool)

(assert (=> d!1098950 (= c!651459 ((_ is Nil!40139) lt!1302080))))

(assert (=> d!1098950 (= (size!30213 lt!1302080) lt!1302169)))

(declare-fun b!3762094 () Bool)

(assert (=> b!3762094 (= e!2326815 0)))

(declare-fun b!3762095 () Bool)

(assert (=> b!3762095 (= e!2326815 (+ 1 (size!30213 (t!303912 lt!1302080))))))

(assert (= (and d!1098950 c!651459) b!3762094))

(assert (= (and d!1098950 (not c!651459)) b!3762095))

(declare-fun m!4256379 () Bool)

(assert (=> b!3762095 m!4256379))

(assert (=> b!3761786 d!1098950))

(declare-fun d!1098952 () Bool)

(declare-fun lt!1302170 () Int)

(assert (=> d!1098952 (>= lt!1302170 0)))

(declare-fun e!2326816 () Int)

(assert (=> d!1098952 (= lt!1302170 e!2326816)))

(declare-fun c!651460 () Bool)

(assert (=> d!1098952 (= c!651460 ((_ is Nil!40141) lt!1302095))))

(assert (=> d!1098952 (= (size!30210 lt!1302095) lt!1302170)))

(declare-fun b!3762096 () Bool)

(assert (=> b!3762096 (= e!2326816 0)))

(declare-fun b!3762097 () Bool)

(assert (=> b!3762097 (= e!2326816 (+ 1 (size!30210 (t!303914 lt!1302095))))))

(assert (= (and d!1098952 c!651460) b!3762096))

(assert (= (and d!1098952 (not c!651460)) b!3762097))

(declare-fun m!4256387 () Bool)

(assert (=> b!3762097 m!4256387))

(assert (=> b!3761645 d!1098952))

(declare-fun b!3762100 () Bool)

(declare-fun res!1523391 () Bool)

(declare-fun e!2326820 () Bool)

(assert (=> b!3762100 (=> (not res!1523391) (not e!2326820))))

(assert (=> b!3762100 (= res!1523391 (<= (- (height!1755 (left!31073 (right!31403 (c!651313 acc!400)))) (height!1755 (right!31403 (right!31403 (c!651313 acc!400))))) 1))))

(declare-fun b!3762102 () Bool)

(assert (=> b!3762102 (= e!2326820 (not (isEmpty!23585 (right!31403 (right!31403 (c!651313 acc!400))))))))

(declare-fun b!3762104 () Bool)

(declare-fun res!1523389 () Bool)

(assert (=> b!3762104 (=> (not res!1523389) (not e!2326820))))

(assert (=> b!3762104 (= res!1523389 (isBalanced!3537 (right!31403 (right!31403 (c!651313 acc!400)))))))

(declare-fun d!1098956 () Bool)

(declare-fun res!1523386 () Bool)

(declare-fun e!2326817 () Bool)

(assert (=> d!1098956 (=> res!1523386 e!2326817)))

(assert (=> d!1098956 (= res!1523386 (not ((_ is Node!12298) (right!31403 (c!651313 acc!400)))))))

(assert (=> d!1098956 (= (isBalanced!3537 (right!31403 (c!651313 acc!400))) e!2326817)))

(declare-fun b!3762105 () Bool)

(declare-fun res!1523388 () Bool)

(assert (=> b!3762105 (=> (not res!1523388) (not e!2326820))))

(assert (=> b!3762105 (= res!1523388 (isBalanced!3537 (left!31073 (right!31403 (c!651313 acc!400)))))))

(declare-fun b!3762106 () Bool)

(declare-fun res!1523387 () Bool)

(assert (=> b!3762106 (=> (not res!1523387) (not e!2326820))))

(assert (=> b!3762106 (= res!1523387 (not (isEmpty!23585 (left!31073 (right!31403 (c!651313 acc!400))))))))

(declare-fun b!3762107 () Bool)

(assert (=> b!3762107 (= e!2326817 e!2326820)))

(declare-fun res!1523390 () Bool)

(assert (=> b!3762107 (=> (not res!1523390) (not e!2326820))))

(assert (=> b!3762107 (= res!1523390 (<= (- 1) (- (height!1755 (left!31073 (right!31403 (c!651313 acc!400)))) (height!1755 (right!31403 (right!31403 (c!651313 acc!400)))))))))

(assert (= (and d!1098956 (not res!1523386)) b!3762107))

(assert (= (and b!3762107 res!1523390) b!3762100))

(assert (= (and b!3762100 res!1523391) b!3762105))

(assert (= (and b!3762105 res!1523388) b!3762104))

(assert (= (and b!3762104 res!1523389) b!3762106))

(assert (= (and b!3762106 res!1523387) b!3762102))

(declare-fun m!4256389 () Bool)

(assert (=> b!3762105 m!4256389))

(declare-fun m!4256393 () Bool)

(assert (=> b!3762104 m!4256393))

(declare-fun m!4256395 () Bool)

(assert (=> b!3762106 m!4256395))

(assert (=> b!3762107 m!4256309))

(assert (=> b!3762107 m!4256311))

(assert (=> b!3762100 m!4256309))

(assert (=> b!3762100 m!4256311))

(declare-fun m!4256401 () Bool)

(assert (=> b!3762102 m!4256401))

(assert (=> b!3761929 d!1098956))

(declare-fun d!1098958 () Bool)

(declare-fun c!651463 () Bool)

(assert (=> d!1098958 (= c!651463 ((_ is Nil!40139) lt!1302101))))

(declare-fun e!2326821 () (InoxSet C!22308))

(assert (=> d!1098958 (= (content!5894 lt!1302101) e!2326821)))

(declare-fun b!3762108 () Bool)

(assert (=> b!3762108 (= e!2326821 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762109 () Bool)

(assert (=> b!3762109 (= e!2326821 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302101) true) (content!5894 (t!303912 lt!1302101))))))

(assert (= (and d!1098958 c!651463) b!3762108))

(assert (= (and d!1098958 (not c!651463)) b!3762109))

(declare-fun m!4256405 () Bool)

(assert (=> b!3762109 m!4256405))

(declare-fun m!4256407 () Bool)

(assert (=> b!3762109 m!4256407))

(assert (=> d!1098780 d!1098958))

(assert (=> d!1098780 d!1098860))

(declare-fun d!1098962 () Bool)

(declare-fun c!651466 () Bool)

(assert (=> d!1098962 (= c!651466 ((_ is Nil!40139) (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))

(declare-fun e!2326824 () (InoxSet C!22308))

(assert (=> d!1098962 (= (content!5894 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) e!2326824)))

(declare-fun b!3762114 () Bool)

(assert (=> b!3762114 (= e!2326824 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762115 () Bool)

(assert (=> b!3762115 (= e!2326824 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) true) (content!5894 (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(assert (= (and d!1098962 c!651466) b!3762114))

(assert (= (and d!1098962 (not c!651466)) b!3762115))

(declare-fun m!4256409 () Bool)

(assert (=> b!3762115 m!4256409))

(declare-fun m!4256411 () Bool)

(assert (=> b!3762115 m!4256411))

(assert (=> d!1098780 d!1098962))

(assert (=> b!3761927 d!1098914))

(assert (=> b!3761927 d!1098916))

(declare-fun d!1098964 () Bool)

(assert (=> d!1098964 (= (list!14826 (xs!15505 (c!651315 v!6347))) (innerList!12359 (xs!15505 (c!651315 v!6347))))))

(assert (=> b!3761662 d!1098964))

(declare-fun d!1098968 () Bool)

(declare-fun c!651467 () Bool)

(assert (=> d!1098968 (= c!651467 ((_ is Nil!40139) lt!1302122))))

(declare-fun e!2326825 () (InoxSet C!22308))

(assert (=> d!1098968 (= (content!5894 lt!1302122) e!2326825)))

(declare-fun b!3762116 () Bool)

(assert (=> b!3762116 (= e!2326825 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762117 () Bool)

(assert (=> b!3762117 (= e!2326825 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302122) true) (content!5894 (t!303912 lt!1302122))))))

(assert (= (and d!1098968 c!651467) b!3762116))

(assert (= (and d!1098968 (not c!651467)) b!3762117))

(declare-fun m!4256421 () Bool)

(assert (=> b!3762117 m!4256421))

(declare-fun m!4256423 () Bool)

(assert (=> b!3762117 m!4256423))

(assert (=> d!1098812 d!1098968))

(declare-fun d!1098970 () Bool)

(declare-fun c!651469 () Bool)

(assert (=> d!1098970 (= c!651469 ((_ is Nil!40139) (++!9954 lt!1302051 lt!1302080)))))

(declare-fun e!2326828 () (InoxSet C!22308))

(assert (=> d!1098970 (= (content!5894 (++!9954 lt!1302051 lt!1302080)) e!2326828)))

(declare-fun b!3762121 () Bool)

(assert (=> b!3762121 (= e!2326828 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762122 () Bool)

(assert (=> b!3762122 (= e!2326828 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (++!9954 lt!1302051 lt!1302080)) true) (content!5894 (t!303912 (++!9954 lt!1302051 lt!1302080)))))))

(assert (= (and d!1098970 c!651469) b!3762121))

(assert (= (and d!1098970 (not c!651469)) b!3762122))

(declare-fun m!4256427 () Bool)

(assert (=> b!3762122 m!4256427))

(assert (=> b!3762122 m!4256339))

(assert (=> d!1098812 d!1098970))

(declare-fun d!1098972 () Bool)

(declare-fun c!651470 () Bool)

(assert (=> d!1098972 (= c!651470 ((_ is Nil!40139) lt!1302082))))

(declare-fun e!2326829 () (InoxSet C!22308))

(assert (=> d!1098972 (= (content!5894 lt!1302082) e!2326829)))

(declare-fun b!3762123 () Bool)

(assert (=> b!3762123 (= e!2326829 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762124 () Bool)

(assert (=> b!3762124 (= e!2326829 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302082) true) (content!5894 (t!303912 lt!1302082))))))

(assert (= (and d!1098972 c!651470) b!3762123))

(assert (= (and d!1098972 (not c!651470)) b!3762124))

(declare-fun m!4256431 () Bool)

(assert (=> b!3762124 m!4256431))

(declare-fun m!4256433 () Bool)

(assert (=> b!3762124 m!4256433))

(assert (=> d!1098812 d!1098972))

(declare-fun d!1098976 () Bool)

(declare-fun c!651472 () Bool)

(assert (=> d!1098976 (= c!651472 ((_ is Node!12298) (left!31073 (right!31403 (c!651313 acc!400)))))))

(declare-fun e!2326832 () Bool)

(assert (=> d!1098976 (= (inv!53851 (left!31073 (right!31403 (c!651313 acc!400)))) e!2326832)))

(declare-fun b!3762128 () Bool)

(assert (=> b!3762128 (= e!2326832 (inv!53859 (left!31073 (right!31403 (c!651313 acc!400)))))))

(declare-fun b!3762129 () Bool)

(declare-fun e!2326833 () Bool)

(assert (=> b!3762129 (= e!2326832 e!2326833)))

(declare-fun res!1523394 () Bool)

(assert (=> b!3762129 (= res!1523394 (not ((_ is Leaf!19074) (left!31073 (right!31403 (c!651313 acc!400))))))))

(assert (=> b!3762129 (=> res!1523394 e!2326833)))

(declare-fun b!3762130 () Bool)

(assert (=> b!3762130 (= e!2326833 (inv!53860 (left!31073 (right!31403 (c!651313 acc!400)))))))

(assert (= (and d!1098976 c!651472) b!3762128))

(assert (= (and d!1098976 (not c!651472)) b!3762129))

(assert (= (and b!3762129 (not res!1523394)) b!3762130))

(declare-fun m!4256437 () Bool)

(assert (=> b!3762128 m!4256437))

(declare-fun m!4256441 () Bool)

(assert (=> b!3762130 m!4256441))

(assert (=> b!3761969 d!1098976))

(declare-fun d!1098978 () Bool)

(declare-fun c!651473 () Bool)

(assert (=> d!1098978 (= c!651473 ((_ is Node!12298) (right!31403 (right!31403 (c!651313 acc!400)))))))

(declare-fun e!2326834 () Bool)

(assert (=> d!1098978 (= (inv!53851 (right!31403 (right!31403 (c!651313 acc!400)))) e!2326834)))

(declare-fun b!3762131 () Bool)

(assert (=> b!3762131 (= e!2326834 (inv!53859 (right!31403 (right!31403 (c!651313 acc!400)))))))

(declare-fun b!3762132 () Bool)

(declare-fun e!2326835 () Bool)

(assert (=> b!3762132 (= e!2326834 e!2326835)))

(declare-fun res!1523395 () Bool)

(assert (=> b!3762132 (= res!1523395 (not ((_ is Leaf!19074) (right!31403 (right!31403 (c!651313 acc!400))))))))

(assert (=> b!3762132 (=> res!1523395 e!2326835)))

(declare-fun b!3762133 () Bool)

(assert (=> b!3762133 (= e!2326835 (inv!53860 (right!31403 (right!31403 (c!651313 acc!400)))))))

(assert (= (and d!1098978 c!651473) b!3762131))

(assert (= (and d!1098978 (not c!651473)) b!3762132))

(assert (= (and b!3762132 (not res!1523395)) b!3762133))

(declare-fun m!4256443 () Bool)

(assert (=> b!3762131 m!4256443))

(declare-fun m!4256445 () Bool)

(assert (=> b!3762133 m!4256445))

(assert (=> b!3761969 d!1098978))

(declare-fun d!1098982 () Bool)

(declare-fun lt!1302171 () Int)

(assert (=> d!1098982 (>= lt!1302171 0)))

(declare-fun e!2326836 () Int)

(assert (=> d!1098982 (= lt!1302171 e!2326836)))

(declare-fun c!651474 () Bool)

(assert (=> d!1098982 (= c!651474 ((_ is Nil!40141) (t!303914 (list!14822 v!6347))))))

(assert (=> d!1098982 (= (size!30210 (t!303914 (list!14822 v!6347))) lt!1302171)))

(declare-fun b!3762134 () Bool)

(assert (=> b!3762134 (= e!2326836 0)))

(declare-fun b!3762135 () Bool)

(assert (=> b!3762135 (= e!2326836 (+ 1 (size!30210 (t!303914 (t!303914 (list!14822 v!6347))))))))

(assert (= (and d!1098982 c!651474) b!3762134))

(assert (= (and d!1098982 (not c!651474)) b!3762135))

(declare-fun m!4256447 () Bool)

(assert (=> b!3762135 m!4256447))

(assert (=> b!3761857 d!1098982))

(declare-fun b!3762138 () Bool)

(declare-fun res!1523397 () Bool)

(declare-fun e!2326837 () Bool)

(assert (=> b!3762138 (=> (not res!1523397) (not e!2326837))))

(declare-fun lt!1302172 () List!40263)

(assert (=> b!3762138 (= res!1523397 (= (size!30213 lt!1302172) (+ (size!30213 (t!303912 lt!1302080)) (size!30213 lt!1302082))))))

(declare-fun d!1098984 () Bool)

(assert (=> d!1098984 e!2326837))

(declare-fun res!1523396 () Bool)

(assert (=> d!1098984 (=> (not res!1523396) (not e!2326837))))

(assert (=> d!1098984 (= res!1523396 (= (content!5894 lt!1302172) ((_ map or) (content!5894 (t!303912 lt!1302080)) (content!5894 lt!1302082))))))

(declare-fun e!2326838 () List!40263)

(assert (=> d!1098984 (= lt!1302172 e!2326838)))

(declare-fun c!651475 () Bool)

(assert (=> d!1098984 (= c!651475 ((_ is Nil!40139) (t!303912 lt!1302080)))))

(assert (=> d!1098984 (= (++!9954 (t!303912 lt!1302080) lt!1302082) lt!1302172)))

(declare-fun b!3762136 () Bool)

(assert (=> b!3762136 (= e!2326838 lt!1302082)))

(declare-fun b!3762137 () Bool)

(assert (=> b!3762137 (= e!2326838 (Cons!40139 (h!45559 (t!303912 lt!1302080)) (++!9954 (t!303912 (t!303912 lt!1302080)) lt!1302082)))))

(declare-fun b!3762139 () Bool)

(assert (=> b!3762139 (= e!2326837 (or (not (= lt!1302082 Nil!40139)) (= lt!1302172 (t!303912 lt!1302080))))))

(assert (= (and d!1098984 c!651475) b!3762136))

(assert (= (and d!1098984 (not c!651475)) b!3762137))

(assert (= (and d!1098984 res!1523396) b!3762138))

(assert (= (and b!3762138 res!1523397) b!3762139))

(declare-fun m!4256449 () Bool)

(assert (=> b!3762138 m!4256449))

(assert (=> b!3762138 m!4256379))

(assert (=> b!3762138 m!4255989))

(declare-fun m!4256451 () Bool)

(assert (=> d!1098984 m!4256451))

(assert (=> d!1098984 m!4256295))

(assert (=> d!1098984 m!4255993))

(declare-fun m!4256453 () Bool)

(assert (=> b!3762137 m!4256453))

(assert (=> b!3761801 d!1098984))

(assert (=> d!1098810 d!1098806))

(declare-fun d!1098986 () Bool)

(assert (=> d!1098986 (= (++!9954 (++!9954 lt!1302051 lt!1302080) lt!1302082) (++!9954 lt!1302051 (++!9954 lt!1302080 lt!1302082)))))

(assert (=> d!1098986 true))

(declare-fun _$52!2103 () Unit!57864)

(assert (=> d!1098986 (= (choose!22287 lt!1302051 lt!1302080 lt!1302082) _$52!2103)))

(declare-fun bs!575832 () Bool)

(assert (= bs!575832 d!1098986))

(assert (=> bs!575832 m!4255703))

(assert (=> bs!575832 m!4255703))

(assert (=> bs!575832 m!4255705))

(assert (=> bs!575832 m!4255711))

(assert (=> bs!575832 m!4255711))

(assert (=> bs!575832 m!4255713))

(assert (=> d!1098810 d!1098986))

(assert (=> d!1098810 d!1098812))

(assert (=> d!1098810 d!1098790))

(assert (=> d!1098810 d!1098792))

(declare-fun d!1098990 () Bool)

(declare-fun lt!1302173 () Int)

(assert (=> d!1098990 (>= lt!1302173 0)))

(declare-fun e!2326839 () Int)

(assert (=> d!1098990 (= lt!1302173 e!2326839)))

(declare-fun c!651476 () Bool)

(assert (=> d!1098990 (= c!651476 ((_ is Nil!40141) (list!14826 (xs!15505 (c!651315 v!6347)))))))

(assert (=> d!1098990 (= (size!30210 (list!14826 (xs!15505 (c!651315 v!6347)))) lt!1302173)))

(declare-fun b!3762140 () Bool)

(assert (=> b!3762140 (= e!2326839 0)))

(declare-fun b!3762141 () Bool)

(assert (=> b!3762141 (= e!2326839 (+ 1 (size!30210 (t!303914 (list!14826 (xs!15505 (c!651315 v!6347)))))))))

(assert (= (and d!1098990 c!651476) b!3762140))

(assert (= (and d!1098990 (not c!651476)) b!3762141))

(declare-fun m!4256455 () Bool)

(assert (=> b!3762141 m!4256455))

(assert (=> b!3761830 d!1098990))

(assert (=> b!3761830 d!1098964))

(declare-fun d!1098992 () Bool)

(declare-fun lt!1302174 () Int)

(assert (=> d!1098992 (= lt!1302174 (size!30210 (list!14820 (left!31074 (c!651315 v!6347)))))))

(assert (=> d!1098992 (= lt!1302174 (ite ((_ is Empty!12299) (left!31074 (c!651315 v!6347))) 0 (ite ((_ is Leaf!19075) (left!31074 (c!651315 v!6347))) (csize!24829 (left!31074 (c!651315 v!6347))) (csize!24828 (left!31074 (c!651315 v!6347))))))))

(assert (=> d!1098992 (= (size!30211 (left!31074 (c!651315 v!6347))) lt!1302174)))

(declare-fun bs!575833 () Bool)

(assert (= bs!575833 d!1098992))

(assert (=> bs!575833 m!4255829))

(assert (=> bs!575833 m!4255829))

(declare-fun m!4256457 () Bool)

(assert (=> bs!575833 m!4256457))

(assert (=> d!1098856 d!1098992))

(declare-fun d!1098994 () Bool)

(declare-fun lt!1302175 () Int)

(assert (=> d!1098994 (= lt!1302175 (size!30210 (list!14820 (right!31404 (c!651315 v!6347)))))))

(assert (=> d!1098994 (= lt!1302175 (ite ((_ is Empty!12299) (right!31404 (c!651315 v!6347))) 0 (ite ((_ is Leaf!19075) (right!31404 (c!651315 v!6347))) (csize!24829 (right!31404 (c!651315 v!6347))) (csize!24828 (right!31404 (c!651315 v!6347))))))))

(assert (=> d!1098994 (= (size!30211 (right!31404 (c!651315 v!6347))) lt!1302175)))

(declare-fun bs!575834 () Bool)

(assert (= bs!575834 d!1098994))

(assert (=> bs!575834 m!4255831))

(assert (=> bs!575834 m!4255831))

(declare-fun m!4256459 () Bool)

(assert (=> bs!575834 m!4256459))

(assert (=> d!1098856 d!1098994))

(declare-fun d!1098996 () Bool)

(assert (=> d!1098996 (= (inv!53863 (xs!15505 (right!31404 (c!651315 v!6347)))) (<= (size!30210 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))) 2147483647))))

(declare-fun bs!575835 () Bool)

(assert (= bs!575835 d!1098996))

(declare-fun m!4256461 () Bool)

(assert (=> bs!575835 m!4256461))

(assert (=> b!3761959 d!1098996))

(declare-fun d!1098998 () Bool)

(declare-fun lt!1302178 () Bool)

(declare-fun isEmpty!23590 (List!40265) Bool)

(assert (=> d!1098998 (= lt!1302178 (isEmpty!23590 (list!14820 (right!31404 (c!651315 v!6347)))))))

(assert (=> d!1098998 (= lt!1302178 (= (size!30211 (right!31404 (c!651315 v!6347))) 0))))

(assert (=> d!1098998 (= (isEmpty!23583 (right!31404 (c!651315 v!6347))) lt!1302178)))

(declare-fun bs!575836 () Bool)

(assert (= bs!575836 d!1098998))

(assert (=> bs!575836 m!4255831))

(assert (=> bs!575836 m!4255831))

(declare-fun m!4256463 () Bool)

(assert (=> bs!575836 m!4256463))

(assert (=> bs!575836 m!4256181))

(assert (=> b!3761714 d!1098998))

(assert (=> d!1098838 d!1098756))

(declare-fun b!3762144 () Bool)

(declare-fun res!1523399 () Bool)

(declare-fun e!2326840 () Bool)

(assert (=> b!3762144 (=> (not res!1523399) (not e!2326840))))

(declare-fun lt!1302179 () List!40263)

(assert (=> b!3762144 (= res!1523399 (= (size!30213 lt!1302179) (+ (size!30213 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (size!30213 (printList!1661 thiss!13650 (t!303914 lt!1302052))))))))

(declare-fun d!1099000 () Bool)

(assert (=> d!1099000 e!2326840))

(declare-fun res!1523398 () Bool)

(assert (=> d!1099000 (=> (not res!1523398) (not e!2326840))))

(assert (=> d!1099000 (= res!1523398 (= (content!5894 lt!1302179) ((_ map or) (content!5894 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (content!5894 (printList!1661 thiss!13650 (t!303914 lt!1302052))))))))

(declare-fun e!2326841 () List!40263)

(assert (=> d!1099000 (= lt!1302179 e!2326841)))

(declare-fun c!651477 () Bool)

(assert (=> d!1099000 (= c!651477 ((_ is Nil!40139) (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))

(assert (=> d!1099000 (= (++!9954 (list!14816 (charsOf!4006 (h!45561 lt!1302052))) (printList!1661 thiss!13650 (t!303914 lt!1302052))) lt!1302179)))

(declare-fun b!3762142 () Bool)

(assert (=> b!3762142 (= e!2326841 (printList!1661 thiss!13650 (t!303914 lt!1302052)))))

(declare-fun b!3762143 () Bool)

(assert (=> b!3762143 (= e!2326841 (Cons!40139 (h!45559 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (++!9954 (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (printList!1661 thiss!13650 (t!303914 lt!1302052)))))))

(declare-fun b!3762145 () Bool)

(assert (=> b!3762145 (= e!2326840 (or (not (= (printList!1661 thiss!13650 (t!303914 lt!1302052)) Nil!40139)) (= lt!1302179 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))

(assert (= (and d!1099000 c!651477) b!3762142))

(assert (= (and d!1099000 (not c!651477)) b!3762143))

(assert (= (and d!1099000 res!1523398) b!3762144))

(assert (= (and b!3762144 res!1523399) b!3762145))

(declare-fun m!4256465 () Bool)

(assert (=> b!3762144 m!4256465))

(assert (=> b!3762144 m!4255701))

(assert (=> b!3762144 m!4255909))

(assert (=> b!3762144 m!4255717))

(declare-fun m!4256467 () Bool)

(assert (=> b!3762144 m!4256467))

(declare-fun m!4256469 () Bool)

(assert (=> d!1099000 m!4256469))

(assert (=> d!1099000 m!4255701))

(assert (=> d!1099000 m!4255915))

(assert (=> d!1099000 m!4255717))

(declare-fun m!4256471 () Bool)

(assert (=> d!1099000 m!4256471))

(assert (=> b!3762143 m!4255717))

(declare-fun m!4256473 () Bool)

(assert (=> b!3762143 m!4256473))

(assert (=> b!3761840 d!1099000))

(assert (=> b!3761840 d!1098808))

(assert (=> b!3761840 d!1098798))

(assert (=> b!3761840 d!1098784))

(declare-fun b!3762148 () Bool)

(declare-fun e!2326845 () Bool)

(declare-fun e!2326844 () Bool)

(assert (=> b!3762148 (= e!2326845 e!2326844)))

(declare-fun res!1523407 () Bool)

(assert (=> b!3762148 (=> (not res!1523407) (not e!2326844))))

(assert (=> b!3762148 (= res!1523407 (<= (- 1) (- (height!1754 (left!31074 (left!31074 (c!651315 v!6347)))) (height!1754 (right!31404 (left!31074 (c!651315 v!6347)))))))))

(declare-fun b!3762149 () Bool)

(declare-fun res!1523406 () Bool)

(assert (=> b!3762149 (=> (not res!1523406) (not e!2326844))))

(assert (=> b!3762149 (= res!1523406 (not (isEmpty!23583 (left!31074 (left!31074 (c!651315 v!6347))))))))

(declare-fun d!1099002 () Bool)

(declare-fun res!1523403 () Bool)

(assert (=> d!1099002 (=> res!1523403 e!2326845)))

(assert (=> d!1099002 (= res!1523403 (not ((_ is Node!12299) (left!31074 (c!651315 v!6347)))))))

(assert (=> d!1099002 (= (isBalanced!3538 (left!31074 (c!651315 v!6347))) e!2326845)))

(declare-fun b!3762150 () Bool)

(declare-fun res!1523402 () Bool)

(assert (=> b!3762150 (=> (not res!1523402) (not e!2326844))))

(assert (=> b!3762150 (= res!1523402 (isBalanced!3538 (right!31404 (left!31074 (c!651315 v!6347)))))))

(declare-fun b!3762151 () Bool)

(declare-fun res!1523405 () Bool)

(assert (=> b!3762151 (=> (not res!1523405) (not e!2326844))))

(assert (=> b!3762151 (= res!1523405 (isBalanced!3538 (left!31074 (left!31074 (c!651315 v!6347)))))))

(declare-fun b!3762152 () Bool)

(declare-fun res!1523404 () Bool)

(assert (=> b!3762152 (=> (not res!1523404) (not e!2326844))))

(assert (=> b!3762152 (= res!1523404 (<= (- (height!1754 (left!31074 (left!31074 (c!651315 v!6347)))) (height!1754 (right!31404 (left!31074 (c!651315 v!6347))))) 1))))

(declare-fun b!3762153 () Bool)

(assert (=> b!3762153 (= e!2326844 (not (isEmpty!23583 (right!31404 (left!31074 (c!651315 v!6347))))))))

(assert (= (and d!1099002 (not res!1523403)) b!3762148))

(assert (= (and b!3762148 res!1523407) b!3762152))

(assert (= (and b!3762152 res!1523404) b!3762151))

(assert (= (and b!3762151 res!1523405) b!3762150))

(assert (= (and b!3762150 res!1523402) b!3762149))

(assert (= (and b!3762149 res!1523406) b!3762153))

(declare-fun m!4256475 () Bool)

(assert (=> b!3762151 m!4256475))

(declare-fun m!4256477 () Bool)

(assert (=> b!3762150 m!4256477))

(declare-fun m!4256479 () Bool)

(assert (=> b!3762153 m!4256479))

(declare-fun m!4256481 () Bool)

(assert (=> b!3762152 m!4256481))

(declare-fun m!4256483 () Bool)

(assert (=> b!3762152 m!4256483))

(assert (=> b!3762148 m!4256481))

(assert (=> b!3762148 m!4256483))

(declare-fun m!4256485 () Bool)

(assert (=> b!3762149 m!4256485))

(assert (=> b!3761712 d!1099002))

(declare-fun d!1099004 () Bool)

(declare-fun res!1523408 () Bool)

(declare-fun e!2326846 () Bool)

(assert (=> d!1099004 (=> (not res!1523408) (not e!2326846))))

(assert (=> d!1099004 (= res!1523408 (<= (size!30210 (list!14826 (xs!15505 (left!31074 (c!651315 v!6347))))) 512))))

(assert (=> d!1099004 (= (inv!53857 (left!31074 (c!651315 v!6347))) e!2326846)))

(declare-fun b!3762154 () Bool)

(declare-fun res!1523409 () Bool)

(assert (=> b!3762154 (=> (not res!1523409) (not e!2326846))))

(assert (=> b!3762154 (= res!1523409 (= (csize!24829 (left!31074 (c!651315 v!6347))) (size!30210 (list!14826 (xs!15505 (left!31074 (c!651315 v!6347)))))))))

(declare-fun b!3762155 () Bool)

(assert (=> b!3762155 (= e!2326846 (and (> (csize!24829 (left!31074 (c!651315 v!6347))) 0) (<= (csize!24829 (left!31074 (c!651315 v!6347))) 512)))))

(assert (= (and d!1099004 res!1523408) b!3762154))

(assert (= (and b!3762154 res!1523409) b!3762155))

(declare-fun m!4256487 () Bool)

(assert (=> d!1099004 m!4256487))

(assert (=> d!1099004 m!4256487))

(declare-fun m!4256489 () Bool)

(assert (=> d!1099004 m!4256489))

(assert (=> b!3762154 m!4256487))

(assert (=> b!3762154 m!4256487))

(assert (=> b!3762154 m!4256489))

(assert (=> b!3761747 d!1099004))

(declare-fun d!1099006 () Bool)

(declare-fun c!651485 () Bool)

(assert (=> d!1099006 (= c!651485 ((_ is IntegerValue!19158) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))

(declare-fun e!2326857 () Bool)

(assert (=> d!1099006 (= (inv!21 (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))) e!2326857)))

(declare-fun b!3762171 () Bool)

(declare-fun inv!16 (TokenValue!6386) Bool)

(assert (=> b!3762171 (= e!2326857 (inv!16 (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))

(declare-fun b!3762172 () Bool)

(declare-fun res!1523413 () Bool)

(declare-fun e!2326858 () Bool)

(assert (=> b!3762172 (=> res!1523413 e!2326858)))

(assert (=> b!3762172 (= res!1523413 (not ((_ is IntegerValue!19160) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))))

(declare-fun e!2326856 () Bool)

(assert (=> b!3762172 (= e!2326856 e!2326858)))

(declare-fun b!3762173 () Bool)

(declare-fun inv!17 (TokenValue!6386) Bool)

(assert (=> b!3762173 (= e!2326856 (inv!17 (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))

(declare-fun b!3762174 () Bool)

(declare-fun inv!15 (TokenValue!6386) Bool)

(assert (=> b!3762174 (= e!2326858 (inv!15 (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))

(declare-fun b!3762175 () Bool)

(assert (=> b!3762175 (= e!2326857 e!2326856)))

(declare-fun c!651484 () Bool)

(assert (=> b!3762175 (= c!651484 ((_ is IntegerValue!19159) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))

(assert (= (and d!1099006 c!651485) b!3762171))

(assert (= (and d!1099006 (not c!651485)) b!3762175))

(assert (= (and b!3762175 c!651484) b!3762173))

(assert (= (and b!3762175 (not c!651484)) b!3762172))

(assert (= (and b!3762172 (not res!1523413)) b!3762174))

(declare-fun m!4256495 () Bool)

(assert (=> b!3762171 m!4256495))

(declare-fun m!4256497 () Bool)

(assert (=> b!3762173 m!4256497))

(declare-fun m!4256499 () Bool)

(assert (=> b!3762174 m!4256499))

(assert (=> b!3761983 d!1099006))

(declare-fun d!1099010 () Bool)

(declare-fun lt!1302182 () Bool)

(assert (=> d!1099010 (= lt!1302182 (isEmpty!23590 (list!14820 (left!31074 (c!651315 v!6347)))))))

(assert (=> d!1099010 (= lt!1302182 (= (size!30211 (left!31074 (c!651315 v!6347))) 0))))

(assert (=> d!1099010 (= (isEmpty!23583 (left!31074 (c!651315 v!6347))) lt!1302182)))

(declare-fun bs!575837 () Bool)

(assert (= bs!575837 d!1099010))

(assert (=> bs!575837 m!4255829))

(assert (=> bs!575837 m!4255829))

(declare-fun m!4256501 () Bool)

(assert (=> bs!575837 m!4256501))

(assert (=> bs!575837 m!4256179))

(assert (=> b!3761710 d!1099010))

(declare-fun d!1099012 () Bool)

(declare-fun res!1523414 () Bool)

(declare-fun e!2326860 () Bool)

(assert (=> d!1099012 (=> (not res!1523414) (not e!2326860))))

(assert (=> d!1099012 (= res!1523414 (= (csize!24828 (left!31074 (c!651315 v!6347))) (+ (size!30211 (left!31074 (left!31074 (c!651315 v!6347)))) (size!30211 (right!31404 (left!31074 (c!651315 v!6347)))))))))

(assert (=> d!1099012 (= (inv!53855 (left!31074 (c!651315 v!6347))) e!2326860)))

(declare-fun b!3762178 () Bool)

(declare-fun res!1523415 () Bool)

(assert (=> b!3762178 (=> (not res!1523415) (not e!2326860))))

(assert (=> b!3762178 (= res!1523415 (and (not (= (left!31074 (left!31074 (c!651315 v!6347))) Empty!12299)) (not (= (right!31404 (left!31074 (c!651315 v!6347))) Empty!12299))))))

(declare-fun b!3762179 () Bool)

(declare-fun res!1523416 () Bool)

(assert (=> b!3762179 (=> (not res!1523416) (not e!2326860))))

(assert (=> b!3762179 (= res!1523416 (= (cheight!12510 (left!31074 (c!651315 v!6347))) (+ (max!0 (height!1754 (left!31074 (left!31074 (c!651315 v!6347)))) (height!1754 (right!31404 (left!31074 (c!651315 v!6347))))) 1)))))

(declare-fun b!3762180 () Bool)

(assert (=> b!3762180 (= e!2326860 (<= 0 (cheight!12510 (left!31074 (c!651315 v!6347)))))))

(assert (= (and d!1099012 res!1523414) b!3762178))

(assert (= (and b!3762178 res!1523415) b!3762179))

(assert (= (and b!3762179 res!1523416) b!3762180))

(declare-fun m!4256505 () Bool)

(assert (=> d!1099012 m!4256505))

(declare-fun m!4256507 () Bool)

(assert (=> d!1099012 m!4256507))

(assert (=> b!3762179 m!4256481))

(assert (=> b!3762179 m!4256483))

(assert (=> b!3762179 m!4256481))

(assert (=> b!3762179 m!4256483))

(declare-fun m!4256509 () Bool)

(assert (=> b!3762179 m!4256509))

(assert (=> b!3761745 d!1099012))

(declare-fun b!3762185 () Bool)

(declare-fun res!1523418 () Bool)

(declare-fun e!2326862 () Bool)

(assert (=> b!3762185 (=> (not res!1523418) (not e!2326862))))

(declare-fun lt!1302185 () List!40263)

(assert (=> b!3762185 (= res!1523418 (= (size!30213 lt!1302185) (+ (size!30213 (t!303912 lt!1302051)) (size!30213 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(declare-fun d!1099016 () Bool)

(assert (=> d!1099016 e!2326862))

(declare-fun res!1523417 () Bool)

(assert (=> d!1099016 (=> (not res!1523417) (not e!2326862))))

(assert (=> d!1099016 (= res!1523417 (= (content!5894 lt!1302185) ((_ map or) (content!5894 (t!303912 lt!1302051)) (content!5894 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(declare-fun e!2326863 () List!40263)

(assert (=> d!1099016 (= lt!1302185 e!2326863)))

(declare-fun c!651488 () Bool)

(assert (=> d!1099016 (= c!651488 ((_ is Nil!40139) (t!303912 lt!1302051)))))

(assert (=> d!1099016 (= (++!9954 (t!303912 lt!1302051) (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302185)))

(declare-fun b!3762183 () Bool)

(assert (=> b!3762183 (= e!2326863 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))

(declare-fun b!3762184 () Bool)

(assert (=> b!3762184 (= e!2326863 (Cons!40139 (h!45559 (t!303912 lt!1302051)) (++!9954 (t!303912 (t!303912 lt!1302051)) (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))

(declare-fun b!3762186 () Bool)

(assert (=> b!3762186 (= e!2326862 (or (not (= (list!14816 (charsOf!4006 (h!45561 lt!1302052))) Nil!40139)) (= lt!1302185 (t!303912 lt!1302051))))))

(assert (= (and d!1099016 c!651488) b!3762183))

(assert (= (and d!1099016 (not c!651488)) b!3762184))

(assert (= (and d!1099016 res!1523417) b!3762185))

(assert (= (and b!3762185 res!1523418) b!3762186))

(declare-fun m!4256513 () Bool)

(assert (=> b!3762185 m!4256513))

(assert (=> b!3762185 m!4256277))

(assert (=> b!3762185 m!4255701))

(assert (=> b!3762185 m!4255909))

(declare-fun m!4256517 () Bool)

(assert (=> d!1099016 m!4256517))

(assert (=> d!1099016 m!4256227))

(assert (=> d!1099016 m!4255701))

(assert (=> d!1099016 m!4255915))

(assert (=> b!3762184 m!4255701))

(declare-fun m!4256519 () Bool)

(assert (=> b!3762184 m!4256519))

(assert (=> b!3761766 d!1099016))

(declare-fun d!1099022 () Bool)

(declare-fun c!651491 () Bool)

(assert (=> d!1099022 (= c!651491 ((_ is Nil!40139) lt!1302118))))

(declare-fun e!2326867 () (InoxSet C!22308))

(assert (=> d!1099022 (= (content!5894 lt!1302118) e!2326867)))

(declare-fun b!3762190 () Bool)

(assert (=> b!3762190 (= e!2326867 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762192 () Bool)

(assert (=> b!3762192 (= e!2326867 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302118) true) (content!5894 (t!303912 lt!1302118))))))

(assert (= (and d!1099022 c!651491) b!3762190))

(assert (= (and d!1099022 (not c!651491)) b!3762192))

(declare-fun m!4256521 () Bool)

(assert (=> b!3762192 m!4256521))

(declare-fun m!4256523 () Bool)

(assert (=> b!3762192 m!4256523))

(assert (=> d!1098806 d!1099022))

(assert (=> d!1098806 d!1098894))

(assert (=> d!1098806 d!1098972))

(declare-fun d!1099024 () Bool)

(assert (=> d!1099024 (= (max!0 (height!1754 (left!31074 (c!651315 v!6347))) (height!1754 (right!31404 (c!651315 v!6347)))) (ite (< (height!1754 (left!31074 (c!651315 v!6347))) (height!1754 (right!31404 (c!651315 v!6347)))) (height!1754 (right!31404 (c!651315 v!6347))) (height!1754 (left!31074 (c!651315 v!6347)))))))

(assert (=> b!3761953 d!1099024))

(assert (=> b!3761953 d!1098878))

(assert (=> b!3761953 d!1098880))

(declare-fun b!3762196 () Bool)

(declare-fun res!1523421 () Bool)

(declare-fun e!2326868 () Bool)

(assert (=> b!3762196 (=> (not res!1523421) (not e!2326868))))

(declare-fun lt!1302187 () List!40263)

(assert (=> b!3762196 (= res!1523421 (= (size!30213 lt!1302187) (+ (size!30213 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (size!30213 lt!1302108))))))

(declare-fun d!1099026 () Bool)

(assert (=> d!1099026 e!2326868))

(declare-fun res!1523420 () Bool)

(assert (=> d!1099026 (=> (not res!1523420) (not e!2326868))))

(assert (=> d!1099026 (= res!1523420 (= (content!5894 lt!1302187) ((_ map or) (content!5894 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (content!5894 lt!1302108))))))

(declare-fun e!2326869 () List!40263)

(assert (=> d!1099026 (= lt!1302187 e!2326869)))

(declare-fun c!651492 () Bool)

(assert (=> d!1099026 (= c!651492 ((_ is Nil!40139) (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))

(assert (=> d!1099026 (= (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108) lt!1302187)))

(declare-fun b!3762194 () Bool)

(assert (=> b!3762194 (= e!2326869 lt!1302108)))

(declare-fun b!3762195 () Bool)

(assert (=> b!3762195 (= e!2326869 (Cons!40139 (h!45559 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (++!9954 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) lt!1302108)))))

(declare-fun b!3762197 () Bool)

(assert (=> b!3762197 (= e!2326868 (or (not (= lt!1302108 Nil!40139)) (= lt!1302187 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(assert (= (and d!1099026 c!651492) b!3762194))

(assert (= (and d!1099026 (not c!651492)) b!3762195))

(assert (= (and d!1099026 res!1523420) b!3762196))

(assert (= (and b!3762196 res!1523421) b!3762197))

(declare-fun m!4256529 () Bool)

(assert (=> b!3762196 m!4256529))

(assert (=> b!3762196 m!4255707))

(declare-fun m!4256531 () Bool)

(assert (=> b!3762196 m!4256531))

(declare-fun m!4256535 () Bool)

(assert (=> b!3762196 m!4256535))

(declare-fun m!4256537 () Bool)

(assert (=> d!1099026 m!4256537))

(assert (=> d!1099026 m!4255707))

(declare-fun m!4256539 () Bool)

(assert (=> d!1099026 m!4256539))

(declare-fun m!4256541 () Bool)

(assert (=> d!1099026 m!4256541))

(declare-fun m!4256543 () Bool)

(assert (=> b!3762195 m!4256543))

(assert (=> b!3761792 d!1099026))

(declare-fun b!3762200 () Bool)

(declare-fun res!1523423 () Bool)

(declare-fun e!2326870 () Bool)

(assert (=> b!3762200 (=> (not res!1523423) (not e!2326870))))

(declare-fun lt!1302190 () List!40263)

(assert (=> b!3762200 (= res!1523423 (= (size!30213 lt!1302190) (+ (size!30213 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108)) (size!30213 lt!1302110))))))

(declare-fun d!1099032 () Bool)

(assert (=> d!1099032 e!2326870))

(declare-fun res!1523422 () Bool)

(assert (=> d!1099032 (=> (not res!1523422) (not e!2326870))))

(assert (=> d!1099032 (= res!1523422 (= (content!5894 lt!1302190) ((_ map or) (content!5894 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108)) (content!5894 lt!1302110))))))

(declare-fun e!2326871 () List!40263)

(assert (=> d!1099032 (= lt!1302190 e!2326871)))

(declare-fun c!651493 () Bool)

(assert (=> d!1099032 (= c!651493 ((_ is Nil!40139) (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108)))))

(assert (=> d!1099032 (= (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108) lt!1302110) lt!1302190)))

(declare-fun b!3762198 () Bool)

(assert (=> b!3762198 (= e!2326871 lt!1302110)))

(declare-fun b!3762199 () Bool)

(assert (=> b!3762199 (= e!2326871 (Cons!40139 (h!45559 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108)) (++!9954 (t!303912 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108)) lt!1302110)))))

(declare-fun b!3762201 () Bool)

(assert (=> b!3762201 (= e!2326870 (or (not (= lt!1302110 Nil!40139)) (= lt!1302190 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108))))))

(assert (= (and d!1099032 c!651493) b!3762198))

(assert (= (and d!1099032 (not c!651493)) b!3762199))

(assert (= (and d!1099032 res!1523422) b!3762200))

(assert (= (and b!3762200 res!1523423) b!3762201))

(declare-fun m!4256547 () Bool)

(assert (=> b!3762200 m!4256547))

(assert (=> b!3762200 m!4255961))

(declare-fun m!4256549 () Bool)

(assert (=> b!3762200 m!4256549))

(declare-fun m!4256551 () Bool)

(assert (=> b!3762200 m!4256551))

(declare-fun m!4256553 () Bool)

(assert (=> d!1099032 m!4256553))

(assert (=> d!1099032 m!4255961))

(declare-fun m!4256555 () Bool)

(assert (=> d!1099032 m!4256555))

(declare-fun m!4256557 () Bool)

(assert (=> d!1099032 m!4256557))

(declare-fun m!4256559 () Bool)

(assert (=> b!3762199 m!4256559))

(assert (=> b!3761792 d!1099032))

(declare-fun b!3762204 () Bool)

(declare-fun res!1523425 () Bool)

(declare-fun e!2326872 () Bool)

(assert (=> b!3762204 (=> (not res!1523425) (not e!2326872))))

(declare-fun lt!1302191 () List!40263)

(assert (=> b!3762204 (= res!1523425 (= (size!30213 lt!1302191) (+ (size!30213 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (size!30213 (++!9954 lt!1302108 lt!1302110)))))))

(declare-fun d!1099036 () Bool)

(assert (=> d!1099036 e!2326872))

(declare-fun res!1523424 () Bool)

(assert (=> d!1099036 (=> (not res!1523424) (not e!2326872))))

(assert (=> d!1099036 (= res!1523424 (= (content!5894 lt!1302191) ((_ map or) (content!5894 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (content!5894 (++!9954 lt!1302108 lt!1302110)))))))

(declare-fun e!2326873 () List!40263)

(assert (=> d!1099036 (= lt!1302191 e!2326873)))

(declare-fun c!651494 () Bool)

(assert (=> d!1099036 (= c!651494 ((_ is Nil!40139) (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))

(assert (=> d!1099036 (= (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (++!9954 lt!1302108 lt!1302110)) lt!1302191)))

(declare-fun b!3762202 () Bool)

(assert (=> b!3762202 (= e!2326873 (++!9954 lt!1302108 lt!1302110))))

(declare-fun b!3762203 () Bool)

(assert (=> b!3762203 (= e!2326873 (Cons!40139 (h!45559 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (++!9954 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (++!9954 lt!1302108 lt!1302110))))))

(declare-fun b!3762205 () Bool)

(assert (=> b!3762205 (= e!2326872 (or (not (= (++!9954 lt!1302108 lt!1302110) Nil!40139)) (= lt!1302191 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(assert (= (and d!1099036 c!651494) b!3762202))

(assert (= (and d!1099036 (not c!651494)) b!3762203))

(assert (= (and d!1099036 res!1523424) b!3762204))

(assert (= (and b!3762204 res!1523425) b!3762205))

(declare-fun m!4256561 () Bool)

(assert (=> b!3762204 m!4256561))

(assert (=> b!3762204 m!4255707))

(assert (=> b!3762204 m!4256531))

(assert (=> b!3762204 m!4255969))

(declare-fun m!4256563 () Bool)

(assert (=> b!3762204 m!4256563))

(declare-fun m!4256565 () Bool)

(assert (=> d!1099036 m!4256565))

(assert (=> d!1099036 m!4255707))

(assert (=> d!1099036 m!4256539))

(assert (=> d!1099036 m!4255969))

(declare-fun m!4256567 () Bool)

(assert (=> d!1099036 m!4256567))

(assert (=> b!3762203 m!4255969))

(declare-fun m!4256569 () Bool)

(assert (=> b!3762203 m!4256569))

(assert (=> b!3761792 d!1099036))

(declare-fun d!1099038 () Bool)

(declare-fun c!651495 () Bool)

(assert (=> d!1099038 (= c!651495 ((_ is Cons!40141) (t!303914 (t!303914 lt!1302052))))))

(declare-fun e!2326874 () List!40263)

(assert (=> d!1099038 (= (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052))) e!2326874)))

(declare-fun b!3762206 () Bool)

(assert (=> b!3762206 (= e!2326874 (++!9954 (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052))))) (printList!1661 thiss!13650 (t!303914 (t!303914 (t!303914 lt!1302052))))))))

(declare-fun b!3762207 () Bool)

(assert (=> b!3762207 (= e!2326874 Nil!40139)))

(assert (= (and d!1099038 c!651495) b!3762206))

(assert (= (and d!1099038 (not c!651495)) b!3762207))

(declare-fun m!4256571 () Bool)

(assert (=> b!3762206 m!4256571))

(assert (=> b!3762206 m!4256571))

(declare-fun m!4256573 () Bool)

(assert (=> b!3762206 m!4256573))

(declare-fun m!4256575 () Bool)

(assert (=> b!3762206 m!4256575))

(assert (=> b!3762206 m!4256573))

(assert (=> b!3762206 m!4256575))

(declare-fun m!4256577 () Bool)

(assert (=> b!3762206 m!4256577))

(assert (=> b!3761792 d!1099038))

(declare-fun d!1099040 () Bool)

(declare-fun lt!1302192 () BalanceConc!24190)

(assert (=> d!1099040 (= (list!14816 lt!1302192) (originalCharacters!6756 (h!45561 (t!303914 lt!1302052))))))

(assert (=> d!1099040 (= lt!1302192 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))) (value!196053 (h!45561 (t!303914 lt!1302052)))))))

(assert (=> d!1099040 (= (charsOf!4006 (h!45561 (t!303914 lt!1302052))) lt!1302192)))

(declare-fun b_lambda!110401 () Bool)

(assert (=> (not b_lambda!110401) (not d!1099040)))

(declare-fun tb!215259 () Bool)

(declare-fun t!303937 () Bool)

(assert (=> (and b!3761985 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052)))))) t!303937) tb!215259))

(declare-fun b!3762208 () Bool)

(declare-fun e!2326875 () Bool)

(declare-fun tp!1149572 () Bool)

(assert (=> b!3762208 (= e!2326875 (and (inv!53851 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))) (value!196053 (h!45561 (t!303914 lt!1302052)))))) tp!1149572))))

(declare-fun result!262908 () Bool)

(assert (=> tb!215259 (= result!262908 (and (inv!53852 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))) (value!196053 (h!45561 (t!303914 lt!1302052))))) e!2326875))))

(assert (= tb!215259 b!3762208))

(declare-fun m!4256579 () Bool)

(assert (=> b!3762208 m!4256579))

(declare-fun m!4256581 () Bool)

(assert (=> tb!215259 m!4256581))

(assert (=> d!1099040 t!303937))

(declare-fun b_and!279461 () Bool)

(assert (= b_and!279459 (and (=> t!303937 result!262908) b_and!279461)))

(declare-fun m!4256583 () Bool)

(assert (=> d!1099040 m!4256583))

(declare-fun m!4256585 () Bool)

(assert (=> d!1099040 m!4256585))

(assert (=> b!3761792 d!1099040))

(declare-fun b!3762211 () Bool)

(declare-fun res!1523427 () Bool)

(declare-fun e!2326876 () Bool)

(assert (=> b!3762211 (=> (not res!1523427) (not e!2326876))))

(declare-fun lt!1302193 () List!40263)

(assert (=> b!3762211 (= res!1523427 (= (size!30213 lt!1302193) (+ (size!30213 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (size!30213 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))))

(declare-fun d!1099042 () Bool)

(assert (=> d!1099042 e!2326876))

(declare-fun res!1523426 () Bool)

(assert (=> d!1099042 (=> (not res!1523426) (not e!2326876))))

(assert (=> d!1099042 (= res!1523426 (= (content!5894 lt!1302193) ((_ map or) (content!5894 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (content!5894 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))))

(declare-fun e!2326877 () List!40263)

(assert (=> d!1099042 (= lt!1302193 e!2326877)))

(declare-fun c!651496 () Bool)

(assert (=> d!1099042 (= c!651496 ((_ is Nil!40139) (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))

(assert (=> d!1099042 (= (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) lt!1302193)))

(declare-fun b!3762209 () Bool)

(assert (=> b!3762209 (= e!2326877 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))))

(declare-fun b!3762210 () Bool)

(assert (=> b!3762210 (= e!2326877 (Cons!40139 (h!45559 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (++!9954 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))))))

(declare-fun b!3762212 () Bool)

(assert (=> b!3762212 (= e!2326876 (or (not (= (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))) Nil!40139)) (= lt!1302193 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(assert (= (and d!1099042 c!651496) b!3762209))

(assert (= (and d!1099042 (not c!651496)) b!3762210))

(assert (= (and d!1099042 res!1523426) b!3762211))

(assert (= (and b!3762211 res!1523427) b!3762212))

(declare-fun m!4256587 () Bool)

(assert (=> b!3762211 m!4256587))

(assert (=> b!3762211 m!4255707))

(assert (=> b!3762211 m!4256531))

(assert (=> b!3762211 m!4255933))

(declare-fun m!4256589 () Bool)

(assert (=> b!3762211 m!4256589))

(declare-fun m!4256591 () Bool)

(assert (=> d!1099042 m!4256591))

(assert (=> d!1099042 m!4255707))

(assert (=> d!1099042 m!4256539))

(assert (=> d!1099042 m!4255933))

(declare-fun m!4256593 () Bool)

(assert (=> d!1099042 m!4256593))

(assert (=> b!3762210 m!4255933))

(declare-fun m!4256595 () Bool)

(assert (=> b!3762210 m!4256595))

(assert (=> b!3761792 d!1099042))

(declare-fun d!1099044 () Bool)

(assert (=> d!1099044 (= (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108) lt!1302110) (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (++!9954 lt!1302108 lt!1302110)))))

(declare-fun lt!1302194 () Unit!57864)

(assert (=> d!1099044 (= lt!1302194 (choose!22287 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108 lt!1302110))))

(assert (=> d!1099044 (= (lemmaConcatAssociativity!2104 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108 lt!1302110) lt!1302194)))

(declare-fun bs!575840 () Bool)

(assert (= bs!575840 d!1099044))

(assert (=> bs!575840 m!4255707))

(assert (=> bs!575840 m!4255961))

(assert (=> bs!575840 m!4255707))

(assert (=> bs!575840 m!4255969))

(assert (=> bs!575840 m!4255971))

(assert (=> bs!575840 m!4255707))

(declare-fun m!4256597 () Bool)

(assert (=> bs!575840 m!4256597))

(assert (=> bs!575840 m!4255969))

(assert (=> bs!575840 m!4255961))

(assert (=> bs!575840 m!4255963))

(assert (=> b!3761792 d!1099044))

(declare-fun b!3762219 () Bool)

(declare-fun res!1523433 () Bool)

(declare-fun e!2326880 () Bool)

(assert (=> b!3762219 (=> (not res!1523433) (not e!2326880))))

(declare-fun lt!1302195 () List!40263)

(assert (=> b!3762219 (= res!1523433 (= (size!30213 lt!1302195) (+ (size!30213 lt!1302108) (size!30213 lt!1302110))))))

(declare-fun d!1099046 () Bool)

(assert (=> d!1099046 e!2326880))

(declare-fun res!1523432 () Bool)

(assert (=> d!1099046 (=> (not res!1523432) (not e!2326880))))

(assert (=> d!1099046 (= res!1523432 (= (content!5894 lt!1302195) ((_ map or) (content!5894 lt!1302108) (content!5894 lt!1302110))))))

(declare-fun e!2326881 () List!40263)

(assert (=> d!1099046 (= lt!1302195 e!2326881)))

(declare-fun c!651497 () Bool)

(assert (=> d!1099046 (= c!651497 ((_ is Nil!40139) lt!1302108))))

(assert (=> d!1099046 (= (++!9954 lt!1302108 lt!1302110) lt!1302195)))

(declare-fun b!3762217 () Bool)

(assert (=> b!3762217 (= e!2326881 lt!1302110)))

(declare-fun b!3762218 () Bool)

(assert (=> b!3762218 (= e!2326881 (Cons!40139 (h!45559 lt!1302108) (++!9954 (t!303912 lt!1302108) lt!1302110)))))

(declare-fun b!3762220 () Bool)

(assert (=> b!3762220 (= e!2326880 (or (not (= lt!1302110 Nil!40139)) (= lt!1302195 lt!1302108)))))

(assert (= (and d!1099046 c!651497) b!3762217))

(assert (= (and d!1099046 (not c!651497)) b!3762218))

(assert (= (and d!1099046 res!1523432) b!3762219))

(assert (= (and b!3762219 res!1523433) b!3762220))

(declare-fun m!4256599 () Bool)

(assert (=> b!3762219 m!4256599))

(assert (=> b!3762219 m!4256535))

(assert (=> b!3762219 m!4256551))

(declare-fun m!4256601 () Bool)

(assert (=> d!1099046 m!4256601))

(assert (=> d!1099046 m!4256541))

(assert (=> d!1099046 m!4256557))

(declare-fun m!4256603 () Bool)

(assert (=> b!3762218 m!4256603))

(assert (=> b!3761792 d!1099046))

(declare-fun d!1099048 () Bool)

(assert (=> d!1099048 (= (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))) (list!14819 (c!651313 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))

(declare-fun bs!575841 () Bool)

(assert (= bs!575841 d!1099048))

(declare-fun m!4256605 () Bool)

(assert (=> bs!575841 m!4256605))

(assert (=> b!3761792 d!1099048))

(declare-fun lt!1302200 () List!40263)

(declare-fun d!1099050 () Bool)

(assert (=> d!1099050 (= lt!1302200 (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))))))

(declare-fun e!2326882 () List!40263)

(assert (=> d!1099050 (= lt!1302200 e!2326882)))

(declare-fun c!651498 () Bool)

(assert (=> d!1099050 (= c!651498 ((_ is Cons!40141) (t!303914 (t!303914 lt!1302052))))))

(assert (=> d!1099050 (= (printListTailRec!746 thiss!13650 (t!303914 (t!303914 lt!1302052)) (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) lt!1302200)))

(declare-fun b!3762221 () Bool)

(assert (=> b!3762221 (= e!2326882 (printListTailRec!746 thiss!13650 (t!303914 (t!303914 (t!303914 lt!1302052))) (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052))))))))))

(declare-fun lt!1302197 () List!40263)

(assert (=> b!3762221 (= lt!1302197 (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052))))))))

(declare-fun lt!1302199 () List!40263)

(assert (=> b!3762221 (= lt!1302199 (printList!1661 thiss!13650 (t!303914 (t!303914 (t!303914 lt!1302052)))))))

(declare-fun lt!1302198 () Unit!57864)

(assert (=> b!3762221 (= lt!1302198 (lemmaConcatAssociativity!2104 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) lt!1302197 lt!1302199))))

(assert (=> b!3762221 (= (++!9954 (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) lt!1302197) lt!1302199) (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (++!9954 lt!1302197 lt!1302199)))))

(declare-fun lt!1302196 () Unit!57864)

(assert (=> b!3762221 (= lt!1302196 lt!1302198)))

(declare-fun b!3762222 () Bool)

(assert (=> b!3762222 (= e!2326882 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))

(assert (= (and d!1099050 c!651498) b!3762221))

(assert (= (and d!1099050 (not c!651498)) b!3762222))

(assert (=> d!1099050 m!4255935))

(assert (=> d!1099050 m!4255965))

(assert (=> d!1099050 m!4255935))

(declare-fun m!4256607 () Bool)

(assert (=> d!1099050 m!4256607))

(assert (=> b!3762221 m!4256571))

(assert (=> b!3762221 m!4256573))

(declare-fun m!4256609 () Bool)

(assert (=> b!3762221 m!4256609))

(declare-fun m!4256611 () Bool)

(assert (=> b!3762221 m!4256611))

(assert (=> b!3762221 m!4255965))

(assert (=> b!3762221 m!4256573))

(declare-fun m!4256613 () Bool)

(assert (=> b!3762221 m!4256613))

(assert (=> b!3762221 m!4255965))

(declare-fun m!4256615 () Bool)

(assert (=> b!3762221 m!4256615))

(assert (=> b!3762221 m!4255965))

(declare-fun m!4256617 () Bool)

(assert (=> b!3762221 m!4256617))

(declare-fun m!4256619 () Bool)

(assert (=> b!3762221 m!4256619))

(assert (=> b!3762221 m!4256617))

(assert (=> b!3762221 m!4256613))

(declare-fun m!4256621 () Bool)

(assert (=> b!3762221 m!4256621))

(assert (=> b!3762221 m!4256575))

(assert (=> b!3762221 m!4256571))

(assert (=> b!3762221 m!4255965))

(assert (=> b!3762221 m!4256609))

(assert (=> b!3761792 d!1099050))

(declare-fun d!1099052 () Bool)

(declare-fun c!651499 () Bool)

(assert (=> d!1099052 (= c!651499 ((_ is Node!12298) (left!31073 (left!31073 (c!651313 acc!400)))))))

(declare-fun e!2326884 () Bool)

(assert (=> d!1099052 (= (inv!53851 (left!31073 (left!31073 (c!651313 acc!400)))) e!2326884)))

(declare-fun b!3762225 () Bool)

(assert (=> b!3762225 (= e!2326884 (inv!53859 (left!31073 (left!31073 (c!651313 acc!400)))))))

(declare-fun b!3762226 () Bool)

(declare-fun e!2326885 () Bool)

(assert (=> b!3762226 (= e!2326884 e!2326885)))

(declare-fun res!1523436 () Bool)

(assert (=> b!3762226 (= res!1523436 (not ((_ is Leaf!19074) (left!31073 (left!31073 (c!651313 acc!400))))))))

(assert (=> b!3762226 (=> res!1523436 e!2326885)))

(declare-fun b!3762227 () Bool)

(assert (=> b!3762227 (= e!2326885 (inv!53860 (left!31073 (left!31073 (c!651313 acc!400)))))))

(assert (= (and d!1099052 c!651499) b!3762225))

(assert (= (and d!1099052 (not c!651499)) b!3762226))

(assert (= (and b!3762226 (not res!1523436)) b!3762227))

(declare-fun m!4256623 () Bool)

(assert (=> b!3762225 m!4256623))

(declare-fun m!4256625 () Bool)

(assert (=> b!3762227 m!4256625))

(assert (=> b!3761966 d!1099052))

(declare-fun d!1099054 () Bool)

(declare-fun c!651500 () Bool)

(assert (=> d!1099054 (= c!651500 ((_ is Node!12298) (right!31403 (left!31073 (c!651313 acc!400)))))))

(declare-fun e!2326886 () Bool)

(assert (=> d!1099054 (= (inv!53851 (right!31403 (left!31073 (c!651313 acc!400)))) e!2326886)))

(declare-fun b!3762228 () Bool)

(assert (=> b!3762228 (= e!2326886 (inv!53859 (right!31403 (left!31073 (c!651313 acc!400)))))))

(declare-fun b!3762229 () Bool)

(declare-fun e!2326887 () Bool)

(assert (=> b!3762229 (= e!2326886 e!2326887)))

(declare-fun res!1523437 () Bool)

(assert (=> b!3762229 (= res!1523437 (not ((_ is Leaf!19074) (right!31403 (left!31073 (c!651313 acc!400))))))))

(assert (=> b!3762229 (=> res!1523437 e!2326887)))

(declare-fun b!3762230 () Bool)

(assert (=> b!3762230 (= e!2326887 (inv!53860 (right!31403 (left!31073 (c!651313 acc!400)))))))

(assert (= (and d!1099054 c!651500) b!3762228))

(assert (= (and d!1099054 (not c!651500)) b!3762229))

(assert (= (and b!3762229 (not res!1523437)) b!3762230))

(declare-fun m!4256627 () Bool)

(assert (=> b!3762228 m!4256627))

(declare-fun m!4256629 () Bool)

(assert (=> b!3762230 m!4256629))

(assert (=> b!3761966 d!1099054))

(declare-fun d!1099056 () Bool)

(declare-fun res!1523438 () Bool)

(declare-fun e!2326888 () Bool)

(assert (=> d!1099056 (=> (not res!1523438) (not e!2326888))))

(assert (=> d!1099056 (= res!1523438 (<= (size!30210 (list!14826 (xs!15505 (right!31404 (c!651315 v!6347))))) 512))))

(assert (=> d!1099056 (= (inv!53857 (right!31404 (c!651315 v!6347))) e!2326888)))

(declare-fun b!3762231 () Bool)

(declare-fun res!1523439 () Bool)

(assert (=> b!3762231 (=> (not res!1523439) (not e!2326888))))

(assert (=> b!3762231 (= res!1523439 (= (csize!24829 (right!31404 (c!651315 v!6347))) (size!30210 (list!14826 (xs!15505 (right!31404 (c!651315 v!6347)))))))))

(declare-fun b!3762232 () Bool)

(assert (=> b!3762232 (= e!2326888 (and (> (csize!24829 (right!31404 (c!651315 v!6347))) 0) (<= (csize!24829 (right!31404 (c!651315 v!6347))) 512)))))

(assert (= (and d!1099056 res!1523438) b!3762231))

(assert (= (and b!3762231 res!1523439) b!3762232))

(declare-fun m!4256631 () Bool)

(assert (=> d!1099056 m!4256631))

(assert (=> d!1099056 m!4256631))

(declare-fun m!4256633 () Bool)

(assert (=> d!1099056 m!4256633))

(assert (=> b!3762231 m!4256631))

(assert (=> b!3762231 m!4256631))

(assert (=> b!3762231 m!4256633))

(assert (=> b!3761750 d!1099056))

(declare-fun d!1099058 () Bool)

(declare-fun lt!1302201 () Int)

(assert (=> d!1099058 (>= lt!1302201 0)))

(declare-fun e!2326890 () Int)

(assert (=> d!1099058 (= lt!1302201 e!2326890)))

(declare-fun c!651501 () Bool)

(assert (=> d!1099058 (= c!651501 ((_ is Nil!40139) lt!1302122))))

(assert (=> d!1099058 (= (size!30213 lt!1302122) lt!1302201)))

(declare-fun b!3762234 () Bool)

(assert (=> b!3762234 (= e!2326890 0)))

(declare-fun b!3762235 () Bool)

(assert (=> b!3762235 (= e!2326890 (+ 1 (size!30213 (t!303912 lt!1302122))))))

(assert (= (and d!1099058 c!651501) b!3762234))

(assert (= (and d!1099058 (not c!651501)) b!3762235))

(declare-fun m!4256639 () Bool)

(assert (=> b!3762235 m!4256639))

(assert (=> b!3761818 d!1099058))

(declare-fun d!1099060 () Bool)

(declare-fun lt!1302202 () Int)

(assert (=> d!1099060 (>= lt!1302202 0)))

(declare-fun e!2326891 () Int)

(assert (=> d!1099060 (= lt!1302202 e!2326891)))

(declare-fun c!651502 () Bool)

(assert (=> d!1099060 (= c!651502 ((_ is Nil!40139) (++!9954 lt!1302051 lt!1302080)))))

(assert (=> d!1099060 (= (size!30213 (++!9954 lt!1302051 lt!1302080)) lt!1302202)))

(declare-fun b!3762236 () Bool)

(assert (=> b!3762236 (= e!2326891 0)))

(declare-fun b!3762237 () Bool)

(assert (=> b!3762237 (= e!2326891 (+ 1 (size!30213 (t!303912 (++!9954 lt!1302051 lt!1302080)))))))

(assert (= (and d!1099060 c!651502) b!3762236))

(assert (= (and d!1099060 (not c!651502)) b!3762237))

(assert (=> b!3762237 m!4256335))

(assert (=> b!3761818 d!1099060))

(declare-fun d!1099062 () Bool)

(declare-fun lt!1302203 () Int)

(assert (=> d!1099062 (>= lt!1302203 0)))

(declare-fun e!2326892 () Int)

(assert (=> d!1099062 (= lt!1302203 e!2326892)))

(declare-fun c!651503 () Bool)

(assert (=> d!1099062 (= c!651503 ((_ is Nil!40139) lt!1302082))))

(assert (=> d!1099062 (= (size!30213 lt!1302082) lt!1302203)))

(declare-fun b!3762238 () Bool)

(assert (=> b!3762238 (= e!2326892 0)))

(declare-fun b!3762239 () Bool)

(assert (=> b!3762239 (= e!2326892 (+ 1 (size!30213 (t!303912 lt!1302082))))))

(assert (= (and d!1099062 c!651503) b!3762238))

(assert (= (and d!1099062 (not c!651503)) b!3762239))

(declare-fun m!4256649 () Bool)

(assert (=> b!3762239 m!4256649))

(assert (=> b!3761818 d!1099062))

(assert (=> b!3761932 d!1098914))

(assert (=> b!3761932 d!1098916))

(declare-fun d!1099064 () Bool)

(declare-fun res!1523440 () Bool)

(declare-fun e!2326893 () Bool)

(assert (=> d!1099064 (=> (not res!1523440) (not e!2326893))))

(assert (=> d!1099064 (= res!1523440 (= (csize!24828 (right!31404 (c!651315 v!6347))) (+ (size!30211 (left!31074 (right!31404 (c!651315 v!6347)))) (size!30211 (right!31404 (right!31404 (c!651315 v!6347)))))))))

(assert (=> d!1099064 (= (inv!53855 (right!31404 (c!651315 v!6347))) e!2326893)))

(declare-fun b!3762240 () Bool)

(declare-fun res!1523441 () Bool)

(assert (=> b!3762240 (=> (not res!1523441) (not e!2326893))))

(assert (=> b!3762240 (= res!1523441 (and (not (= (left!31074 (right!31404 (c!651315 v!6347))) Empty!12299)) (not (= (right!31404 (right!31404 (c!651315 v!6347))) Empty!12299))))))

(declare-fun b!3762241 () Bool)

(declare-fun res!1523442 () Bool)

(assert (=> b!3762241 (=> (not res!1523442) (not e!2326893))))

(assert (=> b!3762241 (= res!1523442 (= (cheight!12510 (right!31404 (c!651315 v!6347))) (+ (max!0 (height!1754 (left!31074 (right!31404 (c!651315 v!6347)))) (height!1754 (right!31404 (right!31404 (c!651315 v!6347))))) 1)))))

(declare-fun b!3762242 () Bool)

(assert (=> b!3762242 (= e!2326893 (<= 0 (cheight!12510 (right!31404 (c!651315 v!6347)))))))

(assert (= (and d!1099064 res!1523440) b!3762240))

(assert (= (and b!3762240 res!1523441) b!3762241))

(assert (= (and b!3762241 res!1523442) b!3762242))

(declare-fun m!4256651 () Bool)

(assert (=> d!1099064 m!4256651))

(declare-fun m!4256653 () Bool)

(assert (=> d!1099064 m!4256653))

(assert (=> b!3762241 m!4256269))

(assert (=> b!3762241 m!4256271))

(assert (=> b!3762241 m!4256269))

(assert (=> b!3762241 m!4256271))

(declare-fun m!4256655 () Bool)

(assert (=> b!3762241 m!4256655))

(assert (=> b!3761748 d!1099064))

(declare-fun b!3762249 () Bool)

(declare-fun res!1523446 () Bool)

(declare-fun e!2326896 () Bool)

(assert (=> b!3762249 (=> (not res!1523446) (not e!2326896))))

(declare-fun lt!1302205 () List!40263)

(assert (=> b!3762249 (= res!1523446 (= (size!30213 lt!1302205) (+ (size!30213 (list!14819 (left!31073 (c!651313 acc!400)))) (size!30213 (list!14819 (right!31403 (c!651313 acc!400)))))))))

(declare-fun d!1099068 () Bool)

(assert (=> d!1099068 e!2326896))

(declare-fun res!1523445 () Bool)

(assert (=> d!1099068 (=> (not res!1523445) (not e!2326896))))

(assert (=> d!1099068 (= res!1523445 (= (content!5894 lt!1302205) ((_ map or) (content!5894 (list!14819 (left!31073 (c!651313 acc!400)))) (content!5894 (list!14819 (right!31403 (c!651313 acc!400)))))))))

(declare-fun e!2326897 () List!40263)

(assert (=> d!1099068 (= lt!1302205 e!2326897)))

(declare-fun c!651505 () Bool)

(assert (=> d!1099068 (= c!651505 ((_ is Nil!40139) (list!14819 (left!31073 (c!651313 acc!400)))))))

(assert (=> d!1099068 (= (++!9954 (list!14819 (left!31073 (c!651313 acc!400))) (list!14819 (right!31403 (c!651313 acc!400)))) lt!1302205)))

(declare-fun b!3762247 () Bool)

(assert (=> b!3762247 (= e!2326897 (list!14819 (right!31403 (c!651313 acc!400))))))

(declare-fun b!3762248 () Bool)

(assert (=> b!3762248 (= e!2326897 (Cons!40139 (h!45559 (list!14819 (left!31073 (c!651313 acc!400)))) (++!9954 (t!303912 (list!14819 (left!31073 (c!651313 acc!400)))) (list!14819 (right!31403 (c!651313 acc!400))))))))

(declare-fun b!3762250 () Bool)

(assert (=> b!3762250 (= e!2326896 (or (not (= (list!14819 (right!31403 (c!651313 acc!400))) Nil!40139)) (= lt!1302205 (list!14819 (left!31073 (c!651313 acc!400))))))))

(assert (= (and d!1099068 c!651505) b!3762247))

(assert (= (and d!1099068 (not c!651505)) b!3762248))

(assert (= (and d!1099068 res!1523445) b!3762249))

(assert (= (and b!3762249 res!1523446) b!3762250))

(declare-fun m!4256659 () Bool)

(assert (=> b!3762249 m!4256659))

(assert (=> b!3762249 m!4255785))

(assert (=> b!3762249 m!4256241))

(assert (=> b!3762249 m!4255787))

(assert (=> b!3762249 m!4256243))

(declare-fun m!4256665 () Bool)

(assert (=> d!1099068 m!4256665))

(assert (=> d!1099068 m!4255785))

(declare-fun m!4256669 () Bool)

(assert (=> d!1099068 m!4256669))

(assert (=> d!1099068 m!4255787))

(declare-fun m!4256671 () Bool)

(assert (=> d!1099068 m!4256671))

(assert (=> b!3762248 m!4255787))

(declare-fun m!4256673 () Bool)

(assert (=> b!3762248 m!4256673))

(assert (=> b!3761588 d!1099068))

(declare-fun b!3762252 () Bool)

(declare-fun e!2326898 () List!40263)

(declare-fun e!2326899 () List!40263)

(assert (=> b!3762252 (= e!2326898 e!2326899)))

(declare-fun c!651507 () Bool)

(assert (=> b!3762252 (= c!651507 ((_ is Leaf!19074) (left!31073 (c!651313 acc!400))))))

(declare-fun b!3762254 () Bool)

(assert (=> b!3762254 (= e!2326899 (++!9954 (list!14819 (left!31073 (left!31073 (c!651313 acc!400)))) (list!14819 (right!31403 (left!31073 (c!651313 acc!400))))))))

(declare-fun d!1099072 () Bool)

(declare-fun c!651506 () Bool)

(assert (=> d!1099072 (= c!651506 ((_ is Empty!12298) (left!31073 (c!651313 acc!400))))))

(assert (=> d!1099072 (= (list!14819 (left!31073 (c!651313 acc!400))) e!2326898)))

(declare-fun b!3762251 () Bool)

(assert (=> b!3762251 (= e!2326898 Nil!40139)))

(declare-fun b!3762253 () Bool)

(assert (=> b!3762253 (= e!2326899 (list!14824 (xs!15504 (left!31073 (c!651313 acc!400)))))))

(assert (= (and d!1099072 c!651506) b!3762251))

(assert (= (and d!1099072 (not c!651506)) b!3762252))

(assert (= (and b!3762252 c!651507) b!3762253))

(assert (= (and b!3762252 (not c!651507)) b!3762254))

(declare-fun m!4256675 () Bool)

(assert (=> b!3762254 m!4256675))

(declare-fun m!4256677 () Bool)

(assert (=> b!3762254 m!4256677))

(assert (=> b!3762254 m!4256675))

(assert (=> b!3762254 m!4256677))

(declare-fun m!4256679 () Bool)

(assert (=> b!3762254 m!4256679))

(declare-fun m!4256681 () Bool)

(assert (=> b!3762253 m!4256681))

(assert (=> b!3761588 d!1099072))

(declare-fun b!3762260 () Bool)

(declare-fun e!2326902 () List!40263)

(declare-fun e!2326903 () List!40263)

(assert (=> b!3762260 (= e!2326902 e!2326903)))

(declare-fun c!651510 () Bool)

(assert (=> b!3762260 (= c!651510 ((_ is Leaf!19074) (right!31403 (c!651313 acc!400))))))

(declare-fun b!3762262 () Bool)

(assert (=> b!3762262 (= e!2326903 (++!9954 (list!14819 (left!31073 (right!31403 (c!651313 acc!400)))) (list!14819 (right!31403 (right!31403 (c!651313 acc!400))))))))

(declare-fun d!1099074 () Bool)

(declare-fun c!651509 () Bool)

(assert (=> d!1099074 (= c!651509 ((_ is Empty!12298) (right!31403 (c!651313 acc!400))))))

(assert (=> d!1099074 (= (list!14819 (right!31403 (c!651313 acc!400))) e!2326902)))

(declare-fun b!3762259 () Bool)

(assert (=> b!3762259 (= e!2326902 Nil!40139)))

(declare-fun b!3762261 () Bool)

(assert (=> b!3762261 (= e!2326903 (list!14824 (xs!15504 (right!31403 (c!651313 acc!400)))))))

(assert (= (and d!1099074 c!651509) b!3762259))

(assert (= (and d!1099074 (not c!651509)) b!3762260))

(assert (= (and b!3762260 c!651510) b!3762261))

(assert (= (and b!3762260 (not c!651510)) b!3762262))

(declare-fun m!4256683 () Bool)

(assert (=> b!3762262 m!4256683))

(declare-fun m!4256685 () Bool)

(assert (=> b!3762262 m!4256685))

(assert (=> b!3762262 m!4256683))

(assert (=> b!3762262 m!4256685))

(declare-fun m!4256689 () Bool)

(assert (=> b!3762262 m!4256689))

(assert (=> b!3762261 m!4256297))

(assert (=> b!3761588 d!1099074))

(declare-fun b!3762265 () Bool)

(declare-fun res!1523450 () Bool)

(declare-fun e!2326904 () Bool)

(assert (=> b!3762265 (=> (not res!1523450) (not e!2326904))))

(declare-fun lt!1302207 () List!40263)

(assert (=> b!3762265 (= res!1523450 (= (size!30213 lt!1302207) (+ (size!30213 (t!303912 lt!1302051)) (size!30213 (printList!1661 thiss!13650 lt!1302052)))))))

(declare-fun d!1099076 () Bool)

(assert (=> d!1099076 e!2326904))

(declare-fun res!1523449 () Bool)

(assert (=> d!1099076 (=> (not res!1523449) (not e!2326904))))

(assert (=> d!1099076 (= res!1523449 (= (content!5894 lt!1302207) ((_ map or) (content!5894 (t!303912 lt!1302051)) (content!5894 (printList!1661 thiss!13650 lt!1302052)))))))

(declare-fun e!2326905 () List!40263)

(assert (=> d!1099076 (= lt!1302207 e!2326905)))

(declare-fun c!651511 () Bool)

(assert (=> d!1099076 (= c!651511 ((_ is Nil!40139) (t!303912 lt!1302051)))))

(assert (=> d!1099076 (= (++!9954 (t!303912 lt!1302051) (printList!1661 thiss!13650 lt!1302052)) lt!1302207)))

(declare-fun b!3762263 () Bool)

(assert (=> b!3762263 (= e!2326905 (printList!1661 thiss!13650 lt!1302052))))

(declare-fun b!3762264 () Bool)

(assert (=> b!3762264 (= e!2326905 (Cons!40139 (h!45559 (t!303912 lt!1302051)) (++!9954 (t!303912 (t!303912 lt!1302051)) (printList!1661 thiss!13650 lt!1302052))))))

(declare-fun b!3762266 () Bool)

(assert (=> b!3762266 (= e!2326904 (or (not (= (printList!1661 thiss!13650 lt!1302052) Nil!40139)) (= lt!1302207 (t!303912 lt!1302051))))))

(assert (= (and d!1099076 c!651511) b!3762263))

(assert (= (and d!1099076 (not c!651511)) b!3762264))

(assert (= (and d!1099076 res!1523449) b!3762265))

(assert (= (and b!3762265 res!1523450) b!3762266))

(declare-fun m!4256695 () Bool)

(assert (=> b!3762265 m!4256695))

(assert (=> b!3762265 m!4256277))

(assert (=> b!3762265 m!4255695))

(assert (=> b!3762265 m!4256027))

(declare-fun m!4256697 () Bool)

(assert (=> d!1099076 m!4256697))

(assert (=> d!1099076 m!4256227))

(assert (=> d!1099076 m!4255695))

(assert (=> d!1099076 m!4256031))

(assert (=> b!3762264 m!4255695))

(declare-fun m!4256699 () Bool)

(assert (=> b!3762264 m!4256699))

(assert (=> b!3761833 d!1099076))

(declare-fun b!3762271 () Bool)

(declare-fun res!1523454 () Bool)

(declare-fun e!2326907 () Bool)

(assert (=> b!3762271 (=> (not res!1523454) (not e!2326907))))

(declare-fun lt!1302208 () List!40263)

(assert (=> b!3762271 (= res!1523454 (= (size!30213 lt!1302208) (+ (size!30213 (t!303912 lt!1302051)) (size!30213 (++!9954 lt!1302080 lt!1302082)))))))

(declare-fun d!1099080 () Bool)

(assert (=> d!1099080 e!2326907))

(declare-fun res!1523453 () Bool)

(assert (=> d!1099080 (=> (not res!1523453) (not e!2326907))))

(assert (=> d!1099080 (= res!1523453 (= (content!5894 lt!1302208) ((_ map or) (content!5894 (t!303912 lt!1302051)) (content!5894 (++!9954 lt!1302080 lt!1302082)))))))

(declare-fun e!2326908 () List!40263)

(assert (=> d!1099080 (= lt!1302208 e!2326908)))

(declare-fun c!651512 () Bool)

(assert (=> d!1099080 (= c!651512 ((_ is Nil!40139) (t!303912 lt!1302051)))))

(assert (=> d!1099080 (= (++!9954 (t!303912 lt!1302051) (++!9954 lt!1302080 lt!1302082)) lt!1302208)))

(declare-fun b!3762269 () Bool)

(assert (=> b!3762269 (= e!2326908 (++!9954 lt!1302080 lt!1302082))))

(declare-fun b!3762270 () Bool)

(assert (=> b!3762270 (= e!2326908 (Cons!40139 (h!45559 (t!303912 lt!1302051)) (++!9954 (t!303912 (t!303912 lt!1302051)) (++!9954 lt!1302080 lt!1302082))))))

(declare-fun b!3762272 () Bool)

(assert (=> b!3762272 (= e!2326907 (or (not (= (++!9954 lt!1302080 lt!1302082) Nil!40139)) (= lt!1302208 (t!303912 lt!1302051))))))

(assert (= (and d!1099080 c!651512) b!3762269))

(assert (= (and d!1099080 (not c!651512)) b!3762270))

(assert (= (and d!1099080 res!1523453) b!3762271))

(assert (= (and b!3762271 res!1523454) b!3762272))

(declare-fun m!4256703 () Bool)

(assert (=> b!3762271 m!4256703))

(assert (=> b!3762271 m!4256277))

(assert (=> b!3762271 m!4255711))

(assert (=> b!3762271 m!4255951))

(declare-fun m!4256705 () Bool)

(assert (=> d!1099080 m!4256705))

(assert (=> d!1099080 m!4256227))

(assert (=> d!1099080 m!4255711))

(assert (=> d!1099080 m!4255955))

(assert (=> b!3762270 m!4255711))

(declare-fun m!4256707 () Bool)

(assert (=> b!3762270 m!4256707))

(assert (=> b!3761789 d!1099080))

(assert (=> bm!275418 d!1098936))

(declare-fun d!1099084 () Bool)

(declare-fun lt!1302209 () Int)

(assert (=> d!1099084 (>= lt!1302209 0)))

(declare-fun e!2326909 () Int)

(assert (=> d!1099084 (= lt!1302209 e!2326909)))

(declare-fun c!651513 () Bool)

(assert (=> d!1099084 (= c!651513 ((_ is Nil!40139) (innerList!12358 (xs!15504 (c!651313 acc!400)))))))

(assert (=> d!1099084 (= (size!30213 (innerList!12358 (xs!15504 (c!651313 acc!400)))) lt!1302209)))

(declare-fun b!3762273 () Bool)

(assert (=> b!3762273 (= e!2326909 0)))

(declare-fun b!3762274 () Bool)

(assert (=> b!3762274 (= e!2326909 (+ 1 (size!30213 (t!303912 (innerList!12358 (xs!15504 (c!651313 acc!400)))))))))

(assert (= (and d!1099084 c!651513) b!3762273))

(assert (= (and d!1099084 (not c!651513)) b!3762274))

(declare-fun m!4256709 () Bool)

(assert (=> b!3762274 m!4256709))

(assert (=> d!1098818 d!1099084))

(declare-fun b!3762275 () Bool)

(declare-fun res!1523460 () Bool)

(declare-fun e!2326911 () Bool)

(assert (=> b!3762275 (=> (not res!1523460) (not e!2326911))))

(assert (=> b!3762275 (= res!1523460 (<= (- (height!1755 (left!31073 (left!31073 (c!651313 acc!400)))) (height!1755 (right!31403 (left!31073 (c!651313 acc!400))))) 1))))

(declare-fun b!3762276 () Bool)

(assert (=> b!3762276 (= e!2326911 (not (isEmpty!23585 (right!31403 (left!31073 (c!651313 acc!400))))))))

(declare-fun b!3762277 () Bool)

(declare-fun res!1523458 () Bool)

(assert (=> b!3762277 (=> (not res!1523458) (not e!2326911))))

(assert (=> b!3762277 (= res!1523458 (isBalanced!3537 (right!31403 (left!31073 (c!651313 acc!400)))))))

(declare-fun d!1099086 () Bool)

(declare-fun res!1523455 () Bool)

(declare-fun e!2326910 () Bool)

(assert (=> d!1099086 (=> res!1523455 e!2326910)))

(assert (=> d!1099086 (= res!1523455 (not ((_ is Node!12298) (left!31073 (c!651313 acc!400)))))))

(assert (=> d!1099086 (= (isBalanced!3537 (left!31073 (c!651313 acc!400))) e!2326910)))

(declare-fun b!3762278 () Bool)

(declare-fun res!1523457 () Bool)

(assert (=> b!3762278 (=> (not res!1523457) (not e!2326911))))

(assert (=> b!3762278 (= res!1523457 (isBalanced!3537 (left!31073 (left!31073 (c!651313 acc!400)))))))

(declare-fun b!3762279 () Bool)

(declare-fun res!1523456 () Bool)

(assert (=> b!3762279 (=> (not res!1523456) (not e!2326911))))

(assert (=> b!3762279 (= res!1523456 (not (isEmpty!23585 (left!31073 (left!31073 (c!651313 acc!400))))))))

(declare-fun b!3762280 () Bool)

(assert (=> b!3762280 (= e!2326910 e!2326911)))

(declare-fun res!1523459 () Bool)

(assert (=> b!3762280 (=> (not res!1523459) (not e!2326911))))

(assert (=> b!3762280 (= res!1523459 (<= (- 1) (- (height!1755 (left!31073 (left!31073 (c!651313 acc!400)))) (height!1755 (right!31403 (left!31073 (c!651313 acc!400)))))))))

(assert (= (and d!1099086 (not res!1523455)) b!3762280))

(assert (= (and b!3762280 res!1523459) b!3762275))

(assert (= (and b!3762275 res!1523460) b!3762278))

(assert (= (and b!3762278 res!1523457) b!3762277))

(assert (= (and b!3762277 res!1523458) b!3762279))

(assert (= (and b!3762279 res!1523456) b!3762276))

(declare-fun m!4256711 () Bool)

(assert (=> b!3762278 m!4256711))

(declare-fun m!4256713 () Bool)

(assert (=> b!3762277 m!4256713))

(declare-fun m!4256715 () Bool)

(assert (=> b!3762279 m!4256715))

(declare-fun m!4256717 () Bool)

(assert (=> b!3762280 m!4256717))

(declare-fun m!4256719 () Bool)

(assert (=> b!3762280 m!4256719))

(assert (=> b!3762275 m!4256717))

(assert (=> b!3762275 m!4256719))

(declare-fun m!4256721 () Bool)

(assert (=> b!3762276 m!4256721))

(assert (=> b!3761930 d!1099086))

(declare-fun d!1099088 () Bool)

(declare-fun c!651514 () Bool)

(assert (=> d!1099088 (= c!651514 ((_ is Node!12299) (left!31074 (left!31074 (c!651315 v!6347)))))))

(declare-fun e!2326912 () Bool)

(assert (=> d!1099088 (= (inv!53854 (left!31074 (left!31074 (c!651315 v!6347)))) e!2326912)))

(declare-fun b!3762281 () Bool)

(assert (=> b!3762281 (= e!2326912 (inv!53855 (left!31074 (left!31074 (c!651315 v!6347)))))))

(declare-fun b!3762282 () Bool)

(declare-fun e!2326913 () Bool)

(assert (=> b!3762282 (= e!2326912 e!2326913)))

(declare-fun res!1523461 () Bool)

(assert (=> b!3762282 (= res!1523461 (not ((_ is Leaf!19075) (left!31074 (left!31074 (c!651315 v!6347))))))))

(assert (=> b!3762282 (=> res!1523461 e!2326913)))

(declare-fun b!3762283 () Bool)

(assert (=> b!3762283 (= e!2326913 (inv!53857 (left!31074 (left!31074 (c!651315 v!6347)))))))

(assert (= (and d!1099088 c!651514) b!3762281))

(assert (= (and d!1099088 (not c!651514)) b!3762282))

(assert (= (and b!3762282 (not res!1523461)) b!3762283))

(declare-fun m!4256723 () Bool)

(assert (=> b!3762281 m!4256723))

(declare-fun m!4256725 () Bool)

(assert (=> b!3762283 m!4256725))

(assert (=> b!3761955 d!1099088))

(declare-fun d!1099090 () Bool)

(declare-fun c!651515 () Bool)

(assert (=> d!1099090 (= c!651515 ((_ is Node!12299) (right!31404 (left!31074 (c!651315 v!6347)))))))

(declare-fun e!2326914 () Bool)

(assert (=> d!1099090 (= (inv!53854 (right!31404 (left!31074 (c!651315 v!6347)))) e!2326914)))

(declare-fun b!3762284 () Bool)

(assert (=> b!3762284 (= e!2326914 (inv!53855 (right!31404 (left!31074 (c!651315 v!6347)))))))

(declare-fun b!3762285 () Bool)

(declare-fun e!2326915 () Bool)

(assert (=> b!3762285 (= e!2326914 e!2326915)))

(declare-fun res!1523462 () Bool)

(assert (=> b!3762285 (= res!1523462 (not ((_ is Leaf!19075) (right!31404 (left!31074 (c!651315 v!6347))))))))

(assert (=> b!3762285 (=> res!1523462 e!2326915)))

(declare-fun b!3762286 () Bool)

(assert (=> b!3762286 (= e!2326915 (inv!53857 (right!31404 (left!31074 (c!651315 v!6347)))))))

(assert (= (and d!1099090 c!651515) b!3762284))

(assert (= (and d!1099090 (not c!651515)) b!3762285))

(assert (= (and b!3762285 (not res!1523462)) b!3762286))

(declare-fun m!4256727 () Bool)

(assert (=> b!3762284 m!4256727))

(declare-fun m!4256729 () Bool)

(assert (=> b!3762286 m!4256729))

(assert (=> b!3761955 d!1099090))

(assert (=> b!3761540 d!1098774))

(assert (=> b!3761540 d!1098776))

(declare-fun d!1099092 () Bool)

(declare-fun lt!1302210 () Bool)

(assert (=> d!1099092 (= lt!1302210 (isEmpty!23587 (list!14819 (right!31403 (c!651313 acc!400)))))))

(assert (=> d!1099092 (= lt!1302210 (= (size!30214 (right!31403 (c!651313 acc!400))) 0))))

(assert (=> d!1099092 (= (isEmpty!23585 (right!31403 (c!651313 acc!400))) lt!1302210)))

(declare-fun bs!575842 () Bool)

(assert (= bs!575842 d!1099092))

(assert (=> bs!575842 m!4255787))

(assert (=> bs!575842 m!4255787))

(declare-fun m!4256731 () Bool)

(assert (=> bs!575842 m!4256731))

(assert (=> bs!575842 m!4255881))

(assert (=> b!3761928 d!1099092))

(declare-fun b!3762301 () Bool)

(declare-fun res!1523470 () Bool)

(declare-fun e!2326923 () Bool)

(assert (=> b!3762301 (=> (not res!1523470) (not e!2326923))))

(declare-fun lt!1302217 () List!40265)

(assert (=> b!3762301 (= res!1523470 (= (size!30210 lt!1302217) (+ (size!30210 (list!14820 (left!31074 (c!651315 v!6347)))) (size!30210 (list!14820 (right!31404 (c!651315 v!6347)))))))))

(declare-fun b!3762302 () Bool)

(assert (=> b!3762302 (= e!2326923 (or (not (= (list!14820 (right!31404 (c!651315 v!6347))) Nil!40141)) (= lt!1302217 (list!14820 (left!31074 (c!651315 v!6347))))))))

(declare-fun b!3762299 () Bool)

(declare-fun e!2326922 () List!40265)

(assert (=> b!3762299 (= e!2326922 (list!14820 (right!31404 (c!651315 v!6347))))))

(declare-fun b!3762300 () Bool)

(assert (=> b!3762300 (= e!2326922 (Cons!40141 (h!45561 (list!14820 (left!31074 (c!651315 v!6347)))) (++!9955 (t!303914 (list!14820 (left!31074 (c!651315 v!6347)))) (list!14820 (right!31404 (c!651315 v!6347))))))))

(declare-fun d!1099094 () Bool)

(assert (=> d!1099094 e!2326923))

(declare-fun res!1523469 () Bool)

(assert (=> d!1099094 (=> (not res!1523469) (not e!2326923))))

(assert (=> d!1099094 (= res!1523469 (= (content!5892 lt!1302217) ((_ map or) (content!5892 (list!14820 (left!31074 (c!651315 v!6347)))) (content!5892 (list!14820 (right!31404 (c!651315 v!6347)))))))))

(assert (=> d!1099094 (= lt!1302217 e!2326922)))

(declare-fun c!651519 () Bool)

(assert (=> d!1099094 (= c!651519 ((_ is Nil!40141) (list!14820 (left!31074 (c!651315 v!6347)))))))

(assert (=> d!1099094 (= (++!9955 (list!14820 (left!31074 (c!651315 v!6347))) (list!14820 (right!31404 (c!651315 v!6347)))) lt!1302217)))

(assert (= (and d!1099094 c!651519) b!3762299))

(assert (= (and d!1099094 (not c!651519)) b!3762300))

(assert (= (and d!1099094 res!1523469) b!3762301))

(assert (= (and b!3762301 res!1523470) b!3762302))

(declare-fun m!4256745 () Bool)

(assert (=> b!3762301 m!4256745))

(assert (=> b!3762301 m!4255829))

(assert (=> b!3762301 m!4256457))

(assert (=> b!3762301 m!4255831))

(assert (=> b!3762301 m!4256459))

(assert (=> b!3762300 m!4255831))

(declare-fun m!4256747 () Bool)

(assert (=> b!3762300 m!4256747))

(declare-fun m!4256749 () Bool)

(assert (=> d!1099094 m!4256749))

(assert (=> d!1099094 m!4255829))

(declare-fun m!4256751 () Bool)

(assert (=> d!1099094 m!4256751))

(assert (=> d!1099094 m!4255831))

(declare-fun m!4256753 () Bool)

(assert (=> d!1099094 m!4256753))

(assert (=> b!3761663 d!1099094))

(declare-fun b!3762304 () Bool)

(declare-fun e!2326924 () List!40265)

(declare-fun e!2326925 () List!40265)

(assert (=> b!3762304 (= e!2326924 e!2326925)))

(declare-fun c!651521 () Bool)

(assert (=> b!3762304 (= c!651521 ((_ is Leaf!19075) (left!31074 (c!651315 v!6347))))))

(declare-fun d!1099100 () Bool)

(declare-fun c!651520 () Bool)

(assert (=> d!1099100 (= c!651520 ((_ is Empty!12299) (left!31074 (c!651315 v!6347))))))

(assert (=> d!1099100 (= (list!14820 (left!31074 (c!651315 v!6347))) e!2326924)))

(declare-fun b!3762306 () Bool)

(assert (=> b!3762306 (= e!2326925 (++!9955 (list!14820 (left!31074 (left!31074 (c!651315 v!6347)))) (list!14820 (right!31404 (left!31074 (c!651315 v!6347))))))))

(declare-fun b!3762303 () Bool)

(assert (=> b!3762303 (= e!2326924 Nil!40141)))

(declare-fun b!3762305 () Bool)

(assert (=> b!3762305 (= e!2326925 (list!14826 (xs!15505 (left!31074 (c!651315 v!6347)))))))

(assert (= (and d!1099100 c!651520) b!3762303))

(assert (= (and d!1099100 (not c!651520)) b!3762304))

(assert (= (and b!3762304 c!651521) b!3762305))

(assert (= (and b!3762304 (not c!651521)) b!3762306))

(declare-fun m!4256755 () Bool)

(assert (=> b!3762306 m!4256755))

(declare-fun m!4256757 () Bool)

(assert (=> b!3762306 m!4256757))

(assert (=> b!3762306 m!4256755))

(assert (=> b!3762306 m!4256757))

(declare-fun m!4256759 () Bool)

(assert (=> b!3762306 m!4256759))

(assert (=> b!3762305 m!4256487))

(assert (=> b!3761663 d!1099100))

(declare-fun b!3762308 () Bool)

(declare-fun e!2326926 () List!40265)

(declare-fun e!2326927 () List!40265)

(assert (=> b!3762308 (= e!2326926 e!2326927)))

(declare-fun c!651523 () Bool)

(assert (=> b!3762308 (= c!651523 ((_ is Leaf!19075) (right!31404 (c!651315 v!6347))))))

(declare-fun d!1099102 () Bool)

(declare-fun c!651522 () Bool)

(assert (=> d!1099102 (= c!651522 ((_ is Empty!12299) (right!31404 (c!651315 v!6347))))))

(assert (=> d!1099102 (= (list!14820 (right!31404 (c!651315 v!6347))) e!2326926)))

(declare-fun b!3762310 () Bool)

(assert (=> b!3762310 (= e!2326927 (++!9955 (list!14820 (left!31074 (right!31404 (c!651315 v!6347)))) (list!14820 (right!31404 (right!31404 (c!651315 v!6347))))))))

(declare-fun b!3762307 () Bool)

(assert (=> b!3762307 (= e!2326926 Nil!40141)))

(declare-fun b!3762309 () Bool)

(assert (=> b!3762309 (= e!2326927 (list!14826 (xs!15505 (right!31404 (c!651315 v!6347)))))))

(assert (= (and d!1099102 c!651522) b!3762307))

(assert (= (and d!1099102 (not c!651522)) b!3762308))

(assert (= (and b!3762308 c!651523) b!3762309))

(assert (= (and b!3762308 (not c!651523)) b!3762310))

(declare-fun m!4256761 () Bool)

(assert (=> b!3762310 m!4256761))

(declare-fun m!4256763 () Bool)

(assert (=> b!3762310 m!4256763))

(assert (=> b!3762310 m!4256761))

(assert (=> b!3762310 m!4256763))

(declare-fun m!4256765 () Bool)

(assert (=> b!3762310 m!4256765))

(assert (=> b!3762309 m!4256631))

(assert (=> b!3761663 d!1099102))

(declare-fun b!3762313 () Bool)

(declare-fun res!1523472 () Bool)

(declare-fun e!2326928 () Bool)

(assert (=> b!3762313 (=> (not res!1523472) (not e!2326928))))

(declare-fun lt!1302221 () List!40263)

(assert (=> b!3762313 (= res!1523472 (= (size!30213 lt!1302221) (+ (size!30213 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (size!30213 (printList!1661 thiss!13650 (t!303914 lt!1302052))))))))

(declare-fun d!1099104 () Bool)

(assert (=> d!1099104 e!2326928))

(declare-fun res!1523471 () Bool)

(assert (=> d!1099104 (=> (not res!1523471) (not e!2326928))))

(assert (=> d!1099104 (= res!1523471 (= (content!5894 lt!1302221) ((_ map or) (content!5894 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (content!5894 (printList!1661 thiss!13650 (t!303914 lt!1302052))))))))

(declare-fun e!2326929 () List!40263)

(assert (=> d!1099104 (= lt!1302221 e!2326929)))

(declare-fun c!651524 () Bool)

(assert (=> d!1099104 (= c!651524 ((_ is Nil!40139) (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))

(assert (=> d!1099104 (= (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (printList!1661 thiss!13650 (t!303914 lt!1302052))) lt!1302221)))

(declare-fun b!3762311 () Bool)

(assert (=> b!3762311 (= e!2326929 (printList!1661 thiss!13650 (t!303914 lt!1302052)))))

(declare-fun b!3762312 () Bool)

(assert (=> b!3762312 (= e!2326929 (Cons!40139 (h!45559 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (++!9954 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (printList!1661 thiss!13650 (t!303914 lt!1302052)))))))

(declare-fun b!3762314 () Bool)

(assert (=> b!3762314 (= e!2326928 (or (not (= (printList!1661 thiss!13650 (t!303914 lt!1302052)) Nil!40139)) (= lt!1302221 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(assert (= (and d!1099104 c!651524) b!3762311))

(assert (= (and d!1099104 (not c!651524)) b!3762312))

(assert (= (and d!1099104 res!1523471) b!3762313))

(assert (= (and b!3762313 res!1523472) b!3762314))

(declare-fun m!4256769 () Bool)

(assert (=> b!3762313 m!4256769))

(assert (=> b!3762313 m!4255707))

(assert (=> b!3762313 m!4256531))

(assert (=> b!3762313 m!4255717))

(assert (=> b!3762313 m!4256467))

(declare-fun m!4256771 () Bool)

(assert (=> d!1099104 m!4256771))

(assert (=> d!1099104 m!4255707))

(assert (=> d!1099104 m!4256539))

(assert (=> d!1099104 m!4255717))

(assert (=> d!1099104 m!4256471))

(assert (=> b!3762312 m!4255717))

(declare-fun m!4256773 () Bool)

(assert (=> b!3762312 m!4256773))

(assert (=> d!1098796 d!1099104))

(assert (=> d!1098796 d!1098784))

(declare-fun d!1099108 () Bool)

(assert (=> d!1099108 (= (inv!53865 (xs!15504 (right!31403 (c!651313 acc!400)))) (<= (size!30213 (innerList!12358 (xs!15504 (right!31403 (c!651313 acc!400))))) 2147483647))))

(declare-fun bs!575845 () Bool)

(assert (= bs!575845 d!1099108))

(declare-fun m!4256775 () Bool)

(assert (=> bs!575845 m!4256775))

(assert (=> b!3761970 d!1099108))

(declare-fun d!1099110 () Bool)

(declare-fun lt!1302222 () Int)

(assert (=> d!1099110 (>= lt!1302222 0)))

(declare-fun e!2326932 () Int)

(assert (=> d!1099110 (= lt!1302222 e!2326932)))

(declare-fun c!651525 () Bool)

(assert (=> d!1099110 (= c!651525 ((_ is Nil!40139) lt!1302118))))

(assert (=> d!1099110 (= (size!30213 lt!1302118) lt!1302222)))

(declare-fun b!3762321 () Bool)

(assert (=> b!3762321 (= e!2326932 0)))

(declare-fun b!3762322 () Bool)

(assert (=> b!3762322 (= e!2326932 (+ 1 (size!30213 (t!303912 lt!1302118))))))

(assert (= (and d!1099110 c!651525) b!3762321))

(assert (= (and d!1099110 (not c!651525)) b!3762322))

(declare-fun m!4256777 () Bool)

(assert (=> b!3762322 m!4256777))

(assert (=> b!3761802 d!1099110))

(assert (=> b!3761802 d!1098950))

(assert (=> b!3761802 d!1099062))

(declare-fun b!3762325 () Bool)

(declare-fun res!1523480 () Bool)

(declare-fun e!2326933 () Bool)

(assert (=> b!3762325 (=> (not res!1523480) (not e!2326933))))

(declare-fun lt!1302223 () List!40263)

(assert (=> b!3762325 (= res!1523480 (= (size!30213 lt!1302223) (+ (size!30213 (t!303912 lt!1302051)) (size!30213 lt!1302080))))))

(declare-fun d!1099112 () Bool)

(assert (=> d!1099112 e!2326933))

(declare-fun res!1523479 () Bool)

(assert (=> d!1099112 (=> (not res!1523479) (not e!2326933))))

(assert (=> d!1099112 (= res!1523479 (= (content!5894 lt!1302223) ((_ map or) (content!5894 (t!303912 lt!1302051)) (content!5894 lt!1302080))))))

(declare-fun e!2326934 () List!40263)

(assert (=> d!1099112 (= lt!1302223 e!2326934)))

(declare-fun c!651526 () Bool)

(assert (=> d!1099112 (= c!651526 ((_ is Nil!40139) (t!303912 lt!1302051)))))

(assert (=> d!1099112 (= (++!9954 (t!303912 lt!1302051) lt!1302080) lt!1302223)))

(declare-fun b!3762323 () Bool)

(assert (=> b!3762323 (= e!2326934 lt!1302080)))

(declare-fun b!3762324 () Bool)

(assert (=> b!3762324 (= e!2326934 (Cons!40139 (h!45559 (t!303912 lt!1302051)) (++!9954 (t!303912 (t!303912 lt!1302051)) lt!1302080)))))

(declare-fun b!3762326 () Bool)

(assert (=> b!3762326 (= e!2326933 (or (not (= lt!1302080 Nil!40139)) (= lt!1302223 (t!303912 lt!1302051))))))

(assert (= (and d!1099112 c!651526) b!3762323))

(assert (= (and d!1099112 (not c!651526)) b!3762324))

(assert (= (and d!1099112 res!1523479) b!3762325))

(assert (= (and b!3762325 res!1523480) b!3762326))

(declare-fun m!4256791 () Bool)

(assert (=> b!3762325 m!4256791))

(assert (=> b!3762325 m!4256277))

(assert (=> b!3762325 m!4255941))

(declare-fun m!4256793 () Bool)

(assert (=> d!1099112 m!4256793))

(assert (=> d!1099112 m!4256227))

(assert (=> d!1099112 m!4255945))

(declare-fun m!4256797 () Bool)

(assert (=> b!3762324 m!4256797))

(assert (=> b!3761785 d!1099112))

(declare-fun b!3762331 () Bool)

(declare-fun res!1523482 () Bool)

(declare-fun e!2326936 () Bool)

(assert (=> b!3762331 (=> (not res!1523482) (not e!2326936))))

(declare-fun lt!1302224 () List!40263)

(assert (=> b!3762331 (= res!1523482 (= (size!30213 lt!1302224) (+ (size!30213 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (size!30213 (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))))))))

(declare-fun d!1099116 () Bool)

(assert (=> d!1099116 e!2326936))

(declare-fun res!1523481 () Bool)

(assert (=> d!1099116 (=> (not res!1523481) (not e!2326936))))

(assert (=> d!1099116 (= res!1523481 (= (content!5894 lt!1302224) ((_ map or) (content!5894 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (content!5894 (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))))))))

(declare-fun e!2326937 () List!40263)

(assert (=> d!1099116 (= lt!1302224 e!2326937)))

(declare-fun c!651527 () Bool)

(assert (=> d!1099116 (= c!651527 ((_ is Nil!40139) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))

(assert (=> d!1099116 (= (++!9954 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))) (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))) lt!1302224)))

(declare-fun b!3762329 () Bool)

(assert (=> b!3762329 (= e!2326937 (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052))))))

(declare-fun b!3762330 () Bool)

(assert (=> b!3762330 (= e!2326937 (Cons!40139 (h!45559 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (++!9954 (t!303912 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052))))))))

(declare-fun b!3762332 () Bool)

(assert (=> b!3762332 (= e!2326936 (or (not (= (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052))) Nil!40139)) (= lt!1302224 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))))))

(assert (= (and d!1099116 c!651527) b!3762329))

(assert (= (and d!1099116 (not c!651527)) b!3762330))

(assert (= (and d!1099116 res!1523481) b!3762331))

(assert (= (and b!3762331 res!1523482) b!3762332))

(declare-fun m!4256801 () Bool)

(assert (=> b!3762331 m!4256801))

(assert (=> b!3762331 m!4255933))

(assert (=> b!3762331 m!4256589))

(assert (=> b!3762331 m!4255935))

(declare-fun m!4256803 () Bool)

(assert (=> b!3762331 m!4256803))

(declare-fun m!4256805 () Bool)

(assert (=> d!1099116 m!4256805))

(assert (=> d!1099116 m!4255933))

(assert (=> d!1099116 m!4256593))

(assert (=> d!1099116 m!4255935))

(declare-fun m!4256807 () Bool)

(assert (=> d!1099116 m!4256807))

(assert (=> b!3762330 m!4255935))

(declare-fun m!4256809 () Bool)

(assert (=> b!3762330 m!4256809))

(assert (=> b!3761782 d!1099116))

(assert (=> b!3761782 d!1099048))

(assert (=> b!3761782 d!1099040))

(assert (=> b!3761782 d!1099038))

(assert (=> d!1098814 d!1098990))

(assert (=> d!1098814 d!1098964))

(declare-fun d!1099122 () Bool)

(declare-fun res!1523483 () Bool)

(declare-fun e!2326939 () Bool)

(assert (=> d!1099122 (=> (not res!1523483) (not e!2326939))))

(assert (=> d!1099122 (= res!1523483 (<= (size!30213 (list!14824 (xs!15504 (left!31073 (c!651313 acc!400))))) 512))))

(assert (=> d!1099122 (= (inv!53860 (left!31073 (c!651313 acc!400))) e!2326939)))

(declare-fun b!3762335 () Bool)

(declare-fun res!1523484 () Bool)

(assert (=> b!3762335 (=> (not res!1523484) (not e!2326939))))

(assert (=> b!3762335 (= res!1523484 (= (csize!24827 (left!31073 (c!651313 acc!400))) (size!30213 (list!14824 (xs!15504 (left!31073 (c!651313 acc!400)))))))))

(declare-fun b!3762336 () Bool)

(assert (=> b!3762336 (= e!2326939 (and (> (csize!24827 (left!31073 (c!651313 acc!400))) 0) (<= (csize!24827 (left!31073 (c!651313 acc!400))) 512)))))

(assert (= (and d!1099122 res!1523483) b!3762335))

(assert (= (and b!3762335 res!1523484) b!3762336))

(assert (=> d!1099122 m!4256681))

(assert (=> d!1099122 m!4256681))

(declare-fun m!4256813 () Bool)

(assert (=> d!1099122 m!4256813))

(assert (=> b!3762335 m!4256681))

(assert (=> b!3762335 m!4256681))

(assert (=> b!3762335 m!4256813))

(assert (=> b!3761844 d!1099122))

(declare-fun d!1099126 () Bool)

(declare-fun res!1523485 () Bool)

(declare-fun e!2326941 () Bool)

(assert (=> d!1099126 (=> (not res!1523485) (not e!2326941))))

(assert (=> d!1099126 (= res!1523485 (= (csize!24826 (left!31073 (c!651313 acc!400))) (+ (size!30214 (left!31073 (left!31073 (c!651313 acc!400)))) (size!30214 (right!31403 (left!31073 (c!651313 acc!400)))))))))

(assert (=> d!1099126 (= (inv!53859 (left!31073 (c!651313 acc!400))) e!2326941)))

(declare-fun b!3762339 () Bool)

(declare-fun res!1523486 () Bool)

(assert (=> b!3762339 (=> (not res!1523486) (not e!2326941))))

(assert (=> b!3762339 (= res!1523486 (and (not (= (left!31073 (left!31073 (c!651313 acc!400))) Empty!12298)) (not (= (right!31403 (left!31073 (c!651313 acc!400))) Empty!12298))))))

(declare-fun b!3762340 () Bool)

(declare-fun res!1523487 () Bool)

(assert (=> b!3762340 (=> (not res!1523487) (not e!2326941))))

(assert (=> b!3762340 (= res!1523487 (= (cheight!12509 (left!31073 (c!651313 acc!400))) (+ (max!0 (height!1755 (left!31073 (left!31073 (c!651313 acc!400)))) (height!1755 (right!31403 (left!31073 (c!651313 acc!400))))) 1)))))

(declare-fun b!3762341 () Bool)

(assert (=> b!3762341 (= e!2326941 (<= 0 (cheight!12509 (left!31073 (c!651313 acc!400)))))))

(assert (= (and d!1099126 res!1523485) b!3762339))

(assert (= (and b!3762339 res!1523486) b!3762340))

(assert (= (and b!3762340 res!1523487) b!3762341))

(declare-fun m!4256817 () Bool)

(assert (=> d!1099126 m!4256817))

(declare-fun m!4256819 () Bool)

(assert (=> d!1099126 m!4256819))

(assert (=> b!3762340 m!4256717))

(assert (=> b!3762340 m!4256719))

(assert (=> b!3762340 m!4256717))

(assert (=> b!3762340 m!4256719))

(declare-fun m!4256821 () Bool)

(assert (=> b!3762340 m!4256821))

(assert (=> b!3761842 d!1099126))

(assert (=> b!3761599 d!1098944))

(assert (=> b!3761599 d!1098946))

(declare-fun e!2326944 () Bool)

(declare-fun tp!1149576 () Bool)

(declare-fun b!3762345 () Bool)

(declare-fun tp!1149574 () Bool)

(assert (=> b!3762345 (= e!2326944 (and (inv!53851 (left!31073 (left!31073 (left!31073 (c!651313 acc!400))))) tp!1149576 (inv!53851 (right!31403 (left!31073 (left!31073 (c!651313 acc!400))))) tp!1149574))))

(declare-fun b!3762347 () Bool)

(declare-fun e!2326943 () Bool)

(declare-fun tp!1149575 () Bool)

(assert (=> b!3762347 (= e!2326943 tp!1149575)))

(declare-fun b!3762346 () Bool)

(assert (=> b!3762346 (= e!2326944 (and (inv!53865 (xs!15504 (left!31073 (left!31073 (c!651313 acc!400))))) e!2326943))))

(assert (=> b!3761966 (= tp!1149549 (and (inv!53851 (left!31073 (left!31073 (c!651313 acc!400)))) e!2326944))))

(assert (= (and b!3761966 ((_ is Node!12298) (left!31073 (left!31073 (c!651313 acc!400))))) b!3762345))

(assert (= b!3762346 b!3762347))

(assert (= (and b!3761966 ((_ is Leaf!19074) (left!31073 (left!31073 (c!651313 acc!400))))) b!3762346))

(declare-fun m!4256833 () Bool)

(assert (=> b!3762345 m!4256833))

(declare-fun m!4256835 () Bool)

(assert (=> b!3762345 m!4256835))

(declare-fun m!4256837 () Bool)

(assert (=> b!3762346 m!4256837))

(assert (=> b!3761966 m!4256197))

(declare-fun e!2326946 () Bool)

(declare-fun tp!1149577 () Bool)

(declare-fun tp!1149579 () Bool)

(declare-fun b!3762348 () Bool)

(assert (=> b!3762348 (= e!2326946 (and (inv!53851 (left!31073 (right!31403 (left!31073 (c!651313 acc!400))))) tp!1149579 (inv!53851 (right!31403 (right!31403 (left!31073 (c!651313 acc!400))))) tp!1149577))))

(declare-fun b!3762350 () Bool)

(declare-fun e!2326945 () Bool)

(declare-fun tp!1149578 () Bool)

(assert (=> b!3762350 (= e!2326945 tp!1149578)))

(declare-fun b!3762349 () Bool)

(assert (=> b!3762349 (= e!2326946 (and (inv!53865 (xs!15504 (right!31403 (left!31073 (c!651313 acc!400))))) e!2326945))))

(assert (=> b!3761966 (= tp!1149547 (and (inv!53851 (right!31403 (left!31073 (c!651313 acc!400)))) e!2326946))))

(assert (= (and b!3761966 ((_ is Node!12298) (right!31403 (left!31073 (c!651313 acc!400))))) b!3762348))

(assert (= b!3762349 b!3762350))

(assert (= (and b!3761966 ((_ is Leaf!19074) (right!31403 (left!31073 (c!651313 acc!400))))) b!3762349))

(declare-fun m!4256839 () Bool)

(assert (=> b!3762348 m!4256839))

(declare-fun m!4256841 () Bool)

(assert (=> b!3762348 m!4256841))

(declare-fun m!4256843 () Bool)

(assert (=> b!3762349 m!4256843))

(assert (=> b!3761966 m!4256199))

(declare-fun tp!1149580 () Bool)

(declare-fun e!2326948 () Bool)

(declare-fun tp!1149582 () Bool)

(declare-fun b!3762351 () Bool)

(assert (=> b!3762351 (= e!2326948 (and (inv!53851 (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))) tp!1149582 (inv!53851 (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))) tp!1149580))))

(declare-fun b!3762353 () Bool)

(declare-fun e!2326947 () Bool)

(declare-fun tp!1149581 () Bool)

(assert (=> b!3762353 (= e!2326947 tp!1149581)))

(declare-fun b!3762352 () Bool)

(assert (=> b!3762352 (= e!2326948 (and (inv!53865 (xs!15504 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))) e!2326947))))

(assert (=> b!3761990 (= tp!1149570 (and (inv!53851 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))) e!2326948))))

(assert (= (and b!3761990 ((_ is Node!12298) (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))) b!3762351))

(assert (= b!3762352 b!3762353))

(assert (= (and b!3761990 ((_ is Leaf!19074) (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))) b!3762352))

(declare-fun m!4256845 () Bool)

(assert (=> b!3762351 m!4256845))

(declare-fun m!4256847 () Bool)

(assert (=> b!3762351 m!4256847))

(declare-fun m!4256849 () Bool)

(assert (=> b!3762352 m!4256849))

(assert (=> b!3761990 m!4256209))

(declare-fun b!3762354 () Bool)

(declare-fun tp!1149585 () Bool)

(declare-fun e!2326949 () Bool)

(declare-fun tp!1149584 () Bool)

(assert (=> b!3762354 (= e!2326949 (and (inv!53854 (left!31074 (left!31074 (right!31404 (c!651315 v!6347))))) tp!1149584 (inv!53854 (right!31404 (left!31074 (right!31404 (c!651315 v!6347))))) tp!1149585))))

(declare-fun b!3762356 () Bool)

(declare-fun e!2326950 () Bool)

(declare-fun tp!1149583 () Bool)

(assert (=> b!3762356 (= e!2326950 tp!1149583)))

(declare-fun b!3762355 () Bool)

(assert (=> b!3762355 (= e!2326949 (and (inv!53863 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))) e!2326950))))

(assert (=> b!3761958 (= tp!1149542 (and (inv!53854 (left!31074 (right!31404 (c!651315 v!6347)))) e!2326949))))

(assert (= (and b!3761958 ((_ is Node!12299) (left!31074 (right!31404 (c!651315 v!6347))))) b!3762354))

(assert (= b!3762355 b!3762356))

(assert (= (and b!3761958 ((_ is Leaf!19075) (left!31074 (right!31404 (c!651315 v!6347))))) b!3762355))

(declare-fun m!4256851 () Bool)

(assert (=> b!3762354 m!4256851))

(declare-fun m!4256853 () Bool)

(assert (=> b!3762354 m!4256853))

(declare-fun m!4256855 () Bool)

(assert (=> b!3762355 m!4256855))

(assert (=> b!3761958 m!4256191))

(declare-fun tp!1149587 () Bool)

(declare-fun tp!1149588 () Bool)

(declare-fun e!2326951 () Bool)

(declare-fun b!3762357 () Bool)

(assert (=> b!3762357 (= e!2326951 (and (inv!53854 (left!31074 (right!31404 (right!31404 (c!651315 v!6347))))) tp!1149587 (inv!53854 (right!31404 (right!31404 (right!31404 (c!651315 v!6347))))) tp!1149588))))

(declare-fun b!3762359 () Bool)

(declare-fun e!2326952 () Bool)

(declare-fun tp!1149586 () Bool)

(assert (=> b!3762359 (= e!2326952 tp!1149586)))

(declare-fun b!3762358 () Bool)

(assert (=> b!3762358 (= e!2326951 (and (inv!53863 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))) e!2326952))))

(assert (=> b!3761958 (= tp!1149543 (and (inv!53854 (right!31404 (right!31404 (c!651315 v!6347)))) e!2326951))))

(assert (= (and b!3761958 ((_ is Node!12299) (right!31404 (right!31404 (c!651315 v!6347))))) b!3762357))

(assert (= b!3762358 b!3762359))

(assert (= (and b!3761958 ((_ is Leaf!19075) (right!31404 (right!31404 (c!651315 v!6347))))) b!3762358))

(declare-fun m!4256857 () Bool)

(assert (=> b!3762357 m!4256857))

(declare-fun m!4256859 () Bool)

(assert (=> b!3762357 m!4256859))

(declare-fun m!4256861 () Bool)

(assert (=> b!3762358 m!4256861))

(assert (=> b!3761958 m!4256193))

(declare-fun b!3762367 () Bool)

(declare-fun b_free!100737 () Bool)

(declare-fun b_next!101441 () Bool)

(assert (=> b!3762367 (= b_free!100737 (not b_next!101441))))

(declare-fun tp!1149590 () Bool)

(declare-fun b_and!279465 () Bool)

(assert (=> b!3762367 (= tp!1149590 b_and!279465)))

(declare-fun b_free!100739 () Bool)

(declare-fun b_next!101443 () Bool)

(assert (=> b!3762367 (= b_free!100739 (not b_next!101443))))

(declare-fun tb!215263 () Bool)

(declare-fun t!303943 () Bool)

(assert (=> (and b!3762367 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052))))) t!303943) tb!215263))

(declare-fun result!262912 () Bool)

(assert (= result!262912 result!262902))

(assert (=> d!1098798 t!303943))

(declare-fun t!303945 () Bool)

(declare-fun tb!215265 () Bool)

(assert (=> (and b!3762367 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) t!303945) tb!215265))

(declare-fun result!262914 () Bool)

(assert (= result!262914 result!262906))

(assert (=> b!3762056 t!303945))

(declare-fun t!303947 () Bool)

(declare-fun tb!215267 () Bool)

(assert (=> (and b!3762367 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052)))))) t!303947) tb!215267))

(declare-fun result!262916 () Bool)

(assert (= result!262916 result!262908))

(assert (=> d!1099040 t!303947))

(declare-fun tp!1149592 () Bool)

(declare-fun b_and!279467 () Bool)

(assert (=> b!3762367 (= tp!1149592 (and (=> t!303943 result!262912) (=> t!303945 result!262914) (=> t!303947 result!262916) b_and!279467))))

(declare-fun e!2326958 () Bool)

(assert (=> b!3761957 (= tp!1149538 e!2326958)))

(declare-fun e!2326957 () Bool)

(declare-fun tp!1149589 () Bool)

(declare-fun b!3762364 () Bool)

(assert (=> b!3762364 (= e!2326958 (and (inv!53867 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))) e!2326957 tp!1149589))))

(declare-fun b!3762365 () Bool)

(declare-fun tp!1149591 () Bool)

(declare-fun e!2326955 () Bool)

(assert (=> b!3762365 (= e!2326957 (and (inv!21 (value!196053 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))) e!2326955 tp!1149591))))

(declare-fun e!2326956 () Bool)

(assert (=> b!3762367 (= e!2326956 (and tp!1149590 tp!1149592))))

(declare-fun tp!1149593 () Bool)

(declare-fun b!3762366 () Bool)

(assert (=> b!3762366 (= e!2326955 (and tp!1149593 (inv!53846 (tag!7016 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (inv!53868 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) e!2326956))))

(assert (= b!3762366 b!3762367))

(assert (= b!3762365 b!3762366))

(assert (= b!3762364 b!3762365))

(assert (= (and b!3761957 ((_ is Cons!40141) (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))) b!3762364))

(declare-fun m!4256863 () Bool)

(assert (=> b!3762364 m!4256863))

(declare-fun m!4256865 () Bool)

(assert (=> b!3762365 m!4256865))

(declare-fun m!4256867 () Bool)

(assert (=> b!3762366 m!4256867))

(declare-fun m!4256869 () Bool)

(assert (=> b!3762366 m!4256869))

(declare-fun b!3762368 () Bool)

(declare-fun e!2326961 () Bool)

(declare-fun tp!1149594 () Bool)

(assert (=> b!3762368 (= e!2326961 (and tp_is_empty!19125 tp!1149594))))

(assert (=> b!3761983 (= tp!1149565 e!2326961)))

(assert (= (and b!3761983 ((_ is Cons!40139) (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) b!3762368))

(declare-fun tp!1149596 () Bool)

(declare-fun e!2326962 () Bool)

(declare-fun tp!1149597 () Bool)

(declare-fun b!3762369 () Bool)

(assert (=> b!3762369 (= e!2326962 (and (inv!53854 (left!31074 (left!31074 (left!31074 (c!651315 v!6347))))) tp!1149596 (inv!53854 (right!31404 (left!31074 (left!31074 (c!651315 v!6347))))) tp!1149597))))

(declare-fun b!3762371 () Bool)

(declare-fun e!2326963 () Bool)

(declare-fun tp!1149595 () Bool)

(assert (=> b!3762371 (= e!2326963 tp!1149595)))

(declare-fun b!3762370 () Bool)

(assert (=> b!3762370 (= e!2326962 (and (inv!53863 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))) e!2326963))))

(assert (=> b!3761955 (= tp!1149539 (and (inv!53854 (left!31074 (left!31074 (c!651315 v!6347)))) e!2326962))))

(assert (= (and b!3761955 ((_ is Node!12299) (left!31074 (left!31074 (c!651315 v!6347))))) b!3762369))

(assert (= b!3762370 b!3762371))

(assert (= (and b!3761955 ((_ is Leaf!19075) (left!31074 (left!31074 (c!651315 v!6347))))) b!3762370))

(declare-fun m!4256871 () Bool)

(assert (=> b!3762369 m!4256871))

(declare-fun m!4256873 () Bool)

(assert (=> b!3762369 m!4256873))

(declare-fun m!4256875 () Bool)

(assert (=> b!3762370 m!4256875))

(assert (=> b!3761955 m!4256185))

(declare-fun tp!1149599 () Bool)

(declare-fun e!2326964 () Bool)

(declare-fun b!3762372 () Bool)

(declare-fun tp!1149600 () Bool)

(assert (=> b!3762372 (= e!2326964 (and (inv!53854 (left!31074 (right!31404 (left!31074 (c!651315 v!6347))))) tp!1149599 (inv!53854 (right!31404 (right!31404 (left!31074 (c!651315 v!6347))))) tp!1149600))))

(declare-fun b!3762374 () Bool)

(declare-fun e!2326965 () Bool)

(declare-fun tp!1149598 () Bool)

(assert (=> b!3762374 (= e!2326965 tp!1149598)))

(declare-fun b!3762373 () Bool)

(assert (=> b!3762373 (= e!2326964 (and (inv!53863 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))) e!2326965))))

(assert (=> b!3761955 (= tp!1149540 (and (inv!53854 (right!31404 (left!31074 (c!651315 v!6347)))) e!2326964))))

(assert (= (and b!3761955 ((_ is Node!12299) (right!31404 (left!31074 (c!651315 v!6347))))) b!3762372))

(assert (= b!3762373 b!3762374))

(assert (= (and b!3761955 ((_ is Leaf!19075) (right!31404 (left!31074 (c!651315 v!6347))))) b!3762373))

(declare-fun m!4256877 () Bool)

(assert (=> b!3762372 m!4256877))

(declare-fun m!4256879 () Bool)

(assert (=> b!3762372 m!4256879))

(declare-fun m!4256881 () Bool)

(assert (=> b!3762373 m!4256881))

(assert (=> b!3761955 m!4256187))

(declare-fun e!2326972 () Bool)

(assert (=> b!3761984 (= tp!1149567 e!2326972)))

(declare-fun b!3762396 () Bool)

(declare-fun tp!1149614 () Bool)

(declare-fun tp!1149611 () Bool)

(assert (=> b!3762396 (= e!2326972 (and tp!1149614 tp!1149611))))

(declare-fun b!3762398 () Bool)

(declare-fun tp!1149613 () Bool)

(declare-fun tp!1149612 () Bool)

(assert (=> b!3762398 (= e!2326972 (and tp!1149613 tp!1149612))))

(declare-fun b!3762395 () Bool)

(assert (=> b!3762395 (= e!2326972 tp_is_empty!19125)))

(declare-fun b!3762397 () Bool)

(declare-fun tp!1149615 () Bool)

(assert (=> b!3762397 (= e!2326972 tp!1149615)))

(assert (= (and b!3761984 ((_ is ElementMatch!11061) (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) b!3762395))

(assert (= (and b!3761984 ((_ is Concat!17448) (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) b!3762396))

(assert (= (and b!3761984 ((_ is Star!11061) (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) b!3762397))

(assert (= (and b!3761984 ((_ is Union!11061) (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) b!3762398))

(declare-fun b!3762399 () Bool)

(declare-fun e!2326973 () Bool)

(declare-fun tp!1149616 () Bool)

(assert (=> b!3762399 (= e!2326973 (and tp_is_empty!19125 tp!1149616))))

(assert (=> b!3761971 (= tp!1149551 e!2326973)))

(assert (= (and b!3761971 ((_ is Cons!40139) (innerList!12358 (xs!15504 (right!31403 (c!651313 acc!400)))))) b!3762399))

(declare-fun b!3762403 () Bool)

(declare-fun b_free!100741 () Bool)

(declare-fun b_next!101445 () Bool)

(assert (=> b!3762403 (= b_free!100741 (not b_next!101445))))

(declare-fun tp!1149618 () Bool)

(declare-fun b_and!279469 () Bool)

(assert (=> b!3762403 (= tp!1149618 b_and!279469)))

(declare-fun b_free!100743 () Bool)

(declare-fun b_next!101447 () Bool)

(assert (=> b!3762403 (= b_free!100743 (not b_next!101447))))

(declare-fun t!303949 () Bool)

(declare-fun tb!215269 () Bool)

(assert (=> (and b!3762403 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052))))) t!303949) tb!215269))

(declare-fun result!262920 () Bool)

(assert (= result!262920 result!262902))

(assert (=> d!1098798 t!303949))

(declare-fun t!303951 () Bool)

(declare-fun tb!215271 () Bool)

(assert (=> (and b!3762403 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) t!303951) tb!215271))

(declare-fun result!262922 () Bool)

(assert (= result!262922 result!262906))

(assert (=> b!3762056 t!303951))

(declare-fun tb!215273 () Bool)

(declare-fun t!303953 () Bool)

(assert (=> (and b!3762403 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052)))))) t!303953) tb!215273))

(declare-fun result!262924 () Bool)

(assert (= result!262924 result!262908))

(assert (=> d!1099040 t!303953))

(declare-fun b_and!279471 () Bool)

(declare-fun tp!1149620 () Bool)

(assert (=> b!3762403 (= tp!1149620 (and (=> t!303949 result!262920) (=> t!303951 result!262922) (=> t!303953 result!262924) b_and!279471))))

(declare-fun e!2326977 () Bool)

(assert (=> b!3761982 (= tp!1149563 e!2326977)))

(declare-fun tp!1149617 () Bool)

(declare-fun e!2326976 () Bool)

(declare-fun b!3762400 () Bool)

(assert (=> b!3762400 (= e!2326977 (and (inv!53867 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))) e!2326976 tp!1149617))))

(declare-fun b!3762401 () Bool)

(declare-fun e!2326974 () Bool)

(declare-fun tp!1149619 () Bool)

(assert (=> b!3762401 (= e!2326976 (and (inv!21 (value!196053 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) e!2326974 tp!1149619))))

(declare-fun e!2326975 () Bool)

(assert (=> b!3762403 (= e!2326975 (and tp!1149618 tp!1149620))))

(declare-fun tp!1149621 () Bool)

(declare-fun b!3762402 () Bool)

(assert (=> b!3762402 (= e!2326974 (and tp!1149621 (inv!53846 (tag!7016 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (inv!53868 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) e!2326975))))

(assert (= b!3762402 b!3762403))

(assert (= b!3762401 b!3762402))

(assert (= b!3762400 b!3762401))

(assert (= (and b!3761982 ((_ is Cons!40141) (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))) b!3762400))

(declare-fun m!4256901 () Bool)

(assert (=> b!3762400 m!4256901))

(declare-fun m!4256903 () Bool)

(assert (=> b!3762401 m!4256903))

(declare-fun m!4256907 () Bool)

(assert (=> b!3762402 m!4256907))

(declare-fun m!4256909 () Bool)

(assert (=> b!3762402 m!4256909))

(declare-fun b!3762404 () Bool)

(declare-fun e!2326980 () Bool)

(declare-fun tp!1149622 () Bool)

(assert (=> b!3762404 (= e!2326980 (and tp_is_empty!19125 tp!1149622))))

(assert (=> b!3761965 (= tp!1149546 e!2326980)))

(assert (= (and b!3761965 ((_ is Cons!40139) (t!303912 (innerList!12358 (xs!15504 (c!651313 acc!400)))))) b!3762404))

(declare-fun b!3762408 () Bool)

(declare-fun b_free!100745 () Bool)

(declare-fun b_next!101449 () Bool)

(assert (=> b!3762408 (= b_free!100745 (not b_next!101449))))

(declare-fun tp!1149624 () Bool)

(declare-fun b_and!279473 () Bool)

(assert (=> b!3762408 (= tp!1149624 b_and!279473)))

(declare-fun b_free!100747 () Bool)

(declare-fun b_next!101451 () Bool)

(assert (=> b!3762408 (= b_free!100747 (not b_next!101451))))

(declare-fun tb!215275 () Bool)

(declare-fun t!303955 () Bool)

(assert (=> (and b!3762408 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052))))) t!303955) tb!215275))

(declare-fun result!262926 () Bool)

(assert (= result!262926 result!262902))

(assert (=> d!1098798 t!303955))

(declare-fun t!303957 () Bool)

(declare-fun tb!215277 () Bool)

(assert (=> (and b!3762408 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) t!303957) tb!215277))

(declare-fun result!262928 () Bool)

(assert (= result!262928 result!262906))

(assert (=> b!3762056 t!303957))

(declare-fun t!303959 () Bool)

(declare-fun tb!215279 () Bool)

(assert (=> (and b!3762408 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052)))))) t!303959) tb!215279))

(declare-fun result!262930 () Bool)

(assert (= result!262930 result!262908))

(assert (=> d!1099040 t!303959))

(declare-fun tp!1149626 () Bool)

(declare-fun b_and!279475 () Bool)

(assert (=> b!3762408 (= tp!1149626 (and (=> t!303955 result!262926) (=> t!303957 result!262928) (=> t!303959 result!262930) b_and!279475))))

(declare-fun e!2326984 () Bool)

(assert (=> b!3761960 (= tp!1149541 e!2326984)))

(declare-fun e!2326983 () Bool)

(declare-fun b!3762405 () Bool)

(declare-fun tp!1149623 () Bool)

(assert (=> b!3762405 (= e!2326984 (and (inv!53867 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))) e!2326983 tp!1149623))))

(declare-fun b!3762406 () Bool)

(declare-fun e!2326981 () Bool)

(declare-fun tp!1149625 () Bool)

(assert (=> b!3762406 (= e!2326983 (and (inv!21 (value!196053 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))) e!2326981 tp!1149625))))

(declare-fun e!2326982 () Bool)

(assert (=> b!3762408 (= e!2326982 (and tp!1149624 tp!1149626))))

(declare-fun b!3762407 () Bool)

(declare-fun tp!1149627 () Bool)

(assert (=> b!3762407 (= e!2326981 (and tp!1149627 (inv!53846 (tag!7016 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (inv!53868 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) e!2326982))))

(assert (= b!3762407 b!3762408))

(assert (= b!3762406 b!3762407))

(assert (= b!3762405 b!3762406))

(assert (= (and b!3761960 ((_ is Cons!40141) (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))) b!3762405))

(declare-fun m!4256911 () Bool)

(assert (=> b!3762405 m!4256911))

(declare-fun m!4256913 () Bool)

(assert (=> b!3762406 m!4256913))

(declare-fun m!4256915 () Bool)

(assert (=> b!3762407 m!4256915))

(declare-fun m!4256917 () Bool)

(assert (=> b!3762407 m!4256917))

(declare-fun tp!1149630 () Bool)

(declare-fun b!3762409 () Bool)

(declare-fun tp!1149628 () Bool)

(declare-fun e!2326988 () Bool)

(assert (=> b!3762409 (= e!2326988 (and (inv!53851 (left!31073 (left!31073 (right!31403 (c!651313 acc!400))))) tp!1149630 (inv!53851 (right!31403 (left!31073 (right!31403 (c!651313 acc!400))))) tp!1149628))))

(declare-fun b!3762411 () Bool)

(declare-fun e!2326987 () Bool)

(declare-fun tp!1149629 () Bool)

(assert (=> b!3762411 (= e!2326987 tp!1149629)))

(declare-fun b!3762410 () Bool)

(assert (=> b!3762410 (= e!2326988 (and (inv!53865 (xs!15504 (left!31073 (right!31403 (c!651313 acc!400))))) e!2326987))))

(assert (=> b!3761969 (= tp!1149552 (and (inv!53851 (left!31073 (right!31403 (c!651313 acc!400)))) e!2326988))))

(assert (= (and b!3761969 ((_ is Node!12298) (left!31073 (right!31403 (c!651313 acc!400))))) b!3762409))

(assert (= b!3762410 b!3762411))

(assert (= (and b!3761969 ((_ is Leaf!19074) (left!31073 (right!31403 (c!651313 acc!400))))) b!3762410))

(declare-fun m!4256919 () Bool)

(assert (=> b!3762409 m!4256919))

(declare-fun m!4256921 () Bool)

(assert (=> b!3762409 m!4256921))

(declare-fun m!4256923 () Bool)

(assert (=> b!3762410 m!4256923))

(assert (=> b!3761969 m!4256203))

(declare-fun b!3762412 () Bool)

(declare-fun tp!1149631 () Bool)

(declare-fun e!2326990 () Bool)

(declare-fun tp!1149633 () Bool)

(assert (=> b!3762412 (= e!2326990 (and (inv!53851 (left!31073 (right!31403 (right!31403 (c!651313 acc!400))))) tp!1149633 (inv!53851 (right!31403 (right!31403 (right!31403 (c!651313 acc!400))))) tp!1149631))))

(declare-fun b!3762414 () Bool)

(declare-fun e!2326989 () Bool)

(declare-fun tp!1149632 () Bool)

(assert (=> b!3762414 (= e!2326989 tp!1149632)))

(declare-fun b!3762413 () Bool)

(assert (=> b!3762413 (= e!2326990 (and (inv!53865 (xs!15504 (right!31403 (right!31403 (c!651313 acc!400))))) e!2326989))))

(assert (=> b!3761969 (= tp!1149550 (and (inv!53851 (right!31403 (right!31403 (c!651313 acc!400)))) e!2326990))))

(assert (= (and b!3761969 ((_ is Node!12298) (right!31403 (right!31403 (c!651313 acc!400))))) b!3762412))

(assert (= b!3762413 b!3762414))

(assert (= (and b!3761969 ((_ is Leaf!19074) (right!31403 (right!31403 (c!651313 acc!400))))) b!3762413))

(declare-fun m!4256925 () Bool)

(assert (=> b!3762412 m!4256925))

(declare-fun m!4256927 () Bool)

(assert (=> b!3762412 m!4256927))

(declare-fun m!4256929 () Bool)

(assert (=> b!3762413 m!4256929))

(assert (=> b!3761969 m!4256205))

(declare-fun b!3762415 () Bool)

(declare-fun e!2326991 () Bool)

(declare-fun tp!1149634 () Bool)

(assert (=> b!3762415 (= e!2326991 (and tp_is_empty!19125 tp!1149634))))

(assert (=> b!3761968 (= tp!1149548 e!2326991)))

(assert (= (and b!3761968 ((_ is Cons!40139) (innerList!12358 (xs!15504 (left!31073 (c!651313 acc!400)))))) b!3762415))

(declare-fun b_lambda!110405 () Bool)

(assert (= b_lambda!110399 (or (and b!3761985 b_free!100735) (and b!3762367 b_free!100739 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) (and b!3762403 b_free!100743 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) (and b!3762408 b_free!100747 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b_lambda!110405)))

(declare-fun b_lambda!110407 () Bool)

(assert (= b_lambda!110395 (or (and b!3761985 b_free!100735 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))))) (and b!3762367 b_free!100739 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))))) (and b!3762403 b_free!100743 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))))) (and b!3762408 b_free!100747 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))))) b_lambda!110407)))

(check-sat (not d!1098996) (not b!3762221) (not b!3762406) b_and!279461 (not d!1099046) (not d!1098922) (not b!3762031) (not b!3762372) (not b!3762364) (not b!3762237) (not b!3762106) (not b!3762014) (not b_next!101451) (not b!3762038) (not b!3762253) (not b!3762137) (not b!3762058) (not b!3762227) (not b!3762184) (not b!3762324) (not b!3762005) (not d!1098992) (not d!1099076) (not b!3762081) (not b!3762241) (not b!3762248) (not d!1098942) (not bm!275422) (not b!3762331) (not b!3762359) (not b!3762305) (not b!3762402) (not b!3762192) (not b!3762022) (not b!3761955) (not d!1098876) (not b!3762083) (not b_next!101441) (not b!3762350) (not b!3762143) (not d!1098900) (not b!3762141) (not d!1099032) (not d!1099004) (not b!3762008) (not b!3762152) (not b!3762356) (not d!1099036) (not b!3762355) (not b!3762351) (not b!3762133) (not b!3762275) (not b!3762208) (not b!3762399) (not b!3762396) (not b!3762274) (not b!3762067) (not b!3762366) (not b!3762171) (not b!3762230) (not b!3762104) (not b!3762225) (not d!1099010) (not b!3762154) (not b!3761990) (not b!3762071) (not d!1099126) (not b!3762019) (not b!3762411) (not b!3762371) (not b!3762097) (not b!3762041) (not b!3762270) (not d!1099064) (not b!3762148) (not b!3762348) (not d!1099094) (not d!1099042) (not b!3762277) (not b!3762278) (not b!3762254) b_and!279465 (not b!3761969) (not b!3762398) (not b!3762150) (not b!3761958) (not b!3762219) (not b!3762057) (not b!3762122) (not b!3762346) (not b!3762060) (not b!3762415) (not b!3762218) (not b_next!101447) (not b!3762330) (not b!3762000) (not b!3762102) (not d!1098904) (not b!3762206) (not b!3762174) (not b!3762023) (not b!3762173) (not d!1099080) (not b!3762368) (not b!3762276) (not b!3762199) (not b!3762284) (not b!3762144) (not b!3762115) (not b!3762312) (not b!3762004) (not b!3762281) (not b!3762280) (not b!3762325) (not b!3762310) tp_is_empty!19125 (not b!3762069) (not d!1099044) (not b!3762056) (not d!1099000) (not b!3762407) (not b_next!101445) (not d!1099040) (not b!3762352) (not d!1099056) (not b!3762073) (not b!3762373) (not b!3762353) (not d!1098906) (not b_lambda!110401) (not b!3762109) (not b!3762301) (not b!3762107) (not b!3761998) (not d!1099012) (not b!3762239) (not b!3762010) (not b!3762062) (not b!3762204) (not b!3762007) (not b!3762039) (not b!3762365) (not b!3762413) (not b!3762405) (not b!3762370) (not b!3762265) (not b!3762210) (not b_next!101439) b_and!279473 (not d!1098870) (not b!3762065) (not b!3762261) (not d!1099092) (not d!1098986) (not d!1099068) (not b!3762149) (not b!3762075) (not b!3762262) (not b!3762105) (not b!3762179) (not d!1099116) (not b!3762131) (not b!3761966) (not d!1099026) (not b!3762033) (not b_next!101449) (not b_next!101443) (not b!3762279) (not b!3762124) (not b!3762211) (not d!1098918) (not b!3762357) (not b!3762354) b_and!279471 (not b!3762135) (not b!3762249) (not d!1098984) (not b!3762400) (not b!3762093) (not d!1099050) (not d!1099122) (not d!1098998) (not b!3762340) (not b_lambda!110405) (not b!3762203) (not b!3762306) (not d!1098896) (not b!3762151) (not b!3762369) (not b!3762048) (not b!3762264) (not b!3762035) (not b!3762409) (not b!3762117) (not b!3762025) b_and!279467 (not tb!215259) (not b!3762195) (not b!3762322) (not b!3762196) (not b!3762050) (not b!3762414) (not b!3762063) (not d!1099108) (not d!1098938) (not b_next!101437) (not b!3762404) (not b!3762349) (not b!3762200) (not b!3762235) (not b!3762231) (not b!3761996) (not d!1098994) (not b!3762271) (not b!3762128) (not b!3762283) (not b!3762091) (not b!3762130) (not b!3762335) (not b!3762095) (not d!1099048) (not b!3762300) (not b!3762401) (not b!3762138) (not b!3762228) (not d!1098910) (not b!3762024) (not b!3762002) (not b!3762347) (not d!1099104) (not b!3762358) (not b!3762185) (not b!3762043) (not b!3762286) (not b!3762309) (not tb!215257) (not b_lambda!110407) (not b!3762345) (not b!3762021) b_and!279455 (not b!3762410) (not b!3762085) (not b!3762044) (not d!1099112) (not b!3762313) b_and!279469 (not b!3762374) (not d!1098868) (not b!3762100) (not b!3762020) (not d!1099016) (not b!3762397) b_and!279475 (not b!3762412) (not b!3762153) (not d!1098902))
(check-sat (not b_next!101441) b_and!279465 (not b_next!101447) (not b_next!101445) b_and!279471 b_and!279467 (not b_next!101437) b_and!279455 b_and!279469 b_and!279475 b_and!279461 (not b_next!101451) b_and!279473 (not b_next!101439) (not b_next!101449) (not b_next!101443))
(get-model)

(declare-fun b!3762675 () Bool)

(declare-fun res!1523572 () Bool)

(declare-fun e!2327137 () Bool)

(assert (=> b!3762675 (=> (not res!1523572) (not e!2327137))))

(declare-fun lt!1302270 () List!40263)

(assert (=> b!3762675 (= res!1523572 (= (size!30213 lt!1302270) (+ (size!30213 (list!14819 (left!31073 (c!651313 (charsOf!4006 (h!45561 lt!1302052)))))) (size!30213 (list!14819 (right!31403 (c!651313 (charsOf!4006 (h!45561 lt!1302052)))))))))))

(declare-fun d!1099298 () Bool)

(assert (=> d!1099298 e!2327137))

(declare-fun res!1523571 () Bool)

(assert (=> d!1099298 (=> (not res!1523571) (not e!2327137))))

(assert (=> d!1099298 (= res!1523571 (= (content!5894 lt!1302270) ((_ map or) (content!5894 (list!14819 (left!31073 (c!651313 (charsOf!4006 (h!45561 lt!1302052)))))) (content!5894 (list!14819 (right!31403 (c!651313 (charsOf!4006 (h!45561 lt!1302052)))))))))))

(declare-fun e!2327138 () List!40263)

(assert (=> d!1099298 (= lt!1302270 e!2327138)))

(declare-fun c!651602 () Bool)

(assert (=> d!1099298 (= c!651602 ((_ is Nil!40139) (list!14819 (left!31073 (c!651313 (charsOf!4006 (h!45561 lt!1302052)))))))))

(assert (=> d!1099298 (= (++!9954 (list!14819 (left!31073 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))) (list!14819 (right!31403 (c!651313 (charsOf!4006 (h!45561 lt!1302052)))))) lt!1302270)))

(declare-fun b!3762673 () Bool)

(assert (=> b!3762673 (= e!2327138 (list!14819 (right!31403 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))))))

(declare-fun b!3762674 () Bool)

(assert (=> b!3762674 (= e!2327138 (Cons!40139 (h!45559 (list!14819 (left!31073 (c!651313 (charsOf!4006 (h!45561 lt!1302052)))))) (++!9954 (t!303912 (list!14819 (left!31073 (c!651313 (charsOf!4006 (h!45561 lt!1302052)))))) (list!14819 (right!31403 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))))))))

(declare-fun b!3762676 () Bool)

(assert (=> b!3762676 (= e!2327137 (or (not (= (list!14819 (right!31403 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))) Nil!40139)) (= lt!1302270 (list!14819 (left!31073 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))))))))

(assert (= (and d!1099298 c!651602) b!3762673))

(assert (= (and d!1099298 (not c!651602)) b!3762674))

(assert (= (and d!1099298 res!1523571) b!3762675))

(assert (= (and b!3762675 res!1523572) b!3762676))

(declare-fun m!4257345 () Bool)

(assert (=> b!3762675 m!4257345))

(assert (=> b!3762675 m!4256281))

(declare-fun m!4257347 () Bool)

(assert (=> b!3762675 m!4257347))

(assert (=> b!3762675 m!4256283))

(declare-fun m!4257349 () Bool)

(assert (=> b!3762675 m!4257349))

(declare-fun m!4257351 () Bool)

(assert (=> d!1099298 m!4257351))

(assert (=> d!1099298 m!4256281))

(declare-fun m!4257353 () Bool)

(assert (=> d!1099298 m!4257353))

(assert (=> d!1099298 m!4256283))

(declare-fun m!4257355 () Bool)

(assert (=> d!1099298 m!4257355))

(assert (=> b!3762674 m!4256283))

(declare-fun m!4257357 () Bool)

(assert (=> b!3762674 m!4257357))

(assert (=> b!3762039 d!1099298))

(declare-fun b!3762678 () Bool)

(declare-fun e!2327139 () List!40263)

(declare-fun e!2327140 () List!40263)

(assert (=> b!3762678 (= e!2327139 e!2327140)))

(declare-fun c!651604 () Bool)

(assert (=> b!3762678 (= c!651604 ((_ is Leaf!19074) (left!31073 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))))))

(declare-fun b!3762680 () Bool)

(assert (=> b!3762680 (= e!2327140 (++!9954 (list!14819 (left!31073 (left!31073 (c!651313 (charsOf!4006 (h!45561 lt!1302052)))))) (list!14819 (right!31403 (left!31073 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))))))))

(declare-fun d!1099300 () Bool)

(declare-fun c!651603 () Bool)

(assert (=> d!1099300 (= c!651603 ((_ is Empty!12298) (left!31073 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))))))

(assert (=> d!1099300 (= (list!14819 (left!31073 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))) e!2327139)))

(declare-fun b!3762677 () Bool)

(assert (=> b!3762677 (= e!2327139 Nil!40139)))

(declare-fun b!3762679 () Bool)

(assert (=> b!3762679 (= e!2327140 (list!14824 (xs!15504 (left!31073 (c!651313 (charsOf!4006 (h!45561 lt!1302052)))))))))

(assert (= (and d!1099300 c!651603) b!3762677))

(assert (= (and d!1099300 (not c!651603)) b!3762678))

(assert (= (and b!3762678 c!651604) b!3762679))

(assert (= (and b!3762678 (not c!651604)) b!3762680))

(declare-fun m!4257359 () Bool)

(assert (=> b!3762680 m!4257359))

(declare-fun m!4257361 () Bool)

(assert (=> b!3762680 m!4257361))

(assert (=> b!3762680 m!4257359))

(assert (=> b!3762680 m!4257361))

(declare-fun m!4257363 () Bool)

(assert (=> b!3762680 m!4257363))

(declare-fun m!4257365 () Bool)

(assert (=> b!3762679 m!4257365))

(assert (=> b!3762039 d!1099300))

(declare-fun b!3762682 () Bool)

(declare-fun e!2327141 () List!40263)

(declare-fun e!2327142 () List!40263)

(assert (=> b!3762682 (= e!2327141 e!2327142)))

(declare-fun c!651606 () Bool)

(assert (=> b!3762682 (= c!651606 ((_ is Leaf!19074) (right!31403 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))))))

(declare-fun b!3762684 () Bool)

(assert (=> b!3762684 (= e!2327142 (++!9954 (list!14819 (left!31073 (right!31403 (c!651313 (charsOf!4006 (h!45561 lt!1302052)))))) (list!14819 (right!31403 (right!31403 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))))))))

(declare-fun d!1099302 () Bool)

(declare-fun c!651605 () Bool)

(assert (=> d!1099302 (= c!651605 ((_ is Empty!12298) (right!31403 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))))))

(assert (=> d!1099302 (= (list!14819 (right!31403 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))) e!2327141)))

(declare-fun b!3762681 () Bool)

(assert (=> b!3762681 (= e!2327141 Nil!40139)))

(declare-fun b!3762683 () Bool)

(assert (=> b!3762683 (= e!2327142 (list!14824 (xs!15504 (right!31403 (c!651313 (charsOf!4006 (h!45561 lt!1302052)))))))))

(assert (= (and d!1099302 c!651605) b!3762681))

(assert (= (and d!1099302 (not c!651605)) b!3762682))

(assert (= (and b!3762682 c!651606) b!3762683))

(assert (= (and b!3762682 (not c!651606)) b!3762684))

(declare-fun m!4257367 () Bool)

(assert (=> b!3762684 m!4257367))

(declare-fun m!4257369 () Bool)

(assert (=> b!3762684 m!4257369))

(assert (=> b!3762684 m!4257367))

(assert (=> b!3762684 m!4257369))

(declare-fun m!4257371 () Bool)

(assert (=> b!3762684 m!4257371))

(declare-fun m!4257373 () Bool)

(assert (=> b!3762683 m!4257373))

(assert (=> b!3762039 d!1099302))

(declare-fun d!1099304 () Bool)

(declare-fun lt!1302271 () Int)

(assert (=> d!1099304 (= lt!1302271 (size!30210 (list!14820 (left!31074 (left!31074 (c!651315 v!6347))))))))

(assert (=> d!1099304 (= lt!1302271 (ite ((_ is Empty!12299) (left!31074 (left!31074 (c!651315 v!6347)))) 0 (ite ((_ is Leaf!19075) (left!31074 (left!31074 (c!651315 v!6347)))) (csize!24829 (left!31074 (left!31074 (c!651315 v!6347)))) (csize!24828 (left!31074 (left!31074 (c!651315 v!6347)))))))))

(assert (=> d!1099304 (= (size!30211 (left!31074 (left!31074 (c!651315 v!6347)))) lt!1302271)))

(declare-fun bs!575859 () Bool)

(assert (= bs!575859 d!1099304))

(assert (=> bs!575859 m!4256755))

(assert (=> bs!575859 m!4256755))

(declare-fun m!4257375 () Bool)

(assert (=> bs!575859 m!4257375))

(assert (=> d!1099012 d!1099304))

(declare-fun d!1099306 () Bool)

(declare-fun lt!1302272 () Int)

(assert (=> d!1099306 (= lt!1302272 (size!30210 (list!14820 (right!31404 (left!31074 (c!651315 v!6347))))))))

(assert (=> d!1099306 (= lt!1302272 (ite ((_ is Empty!12299) (right!31404 (left!31074 (c!651315 v!6347)))) 0 (ite ((_ is Leaf!19075) (right!31404 (left!31074 (c!651315 v!6347)))) (csize!24829 (right!31404 (left!31074 (c!651315 v!6347)))) (csize!24828 (right!31404 (left!31074 (c!651315 v!6347)))))))))

(assert (=> d!1099306 (= (size!30211 (right!31404 (left!31074 (c!651315 v!6347)))) lt!1302272)))

(declare-fun bs!575860 () Bool)

(assert (= bs!575860 d!1099306))

(assert (=> bs!575860 m!4256757))

(assert (=> bs!575860 m!4256757))

(declare-fun m!4257377 () Bool)

(assert (=> bs!575860 m!4257377))

(assert (=> d!1099012 d!1099306))

(declare-fun d!1099308 () Bool)

(assert (=> d!1099308 (= (list!14826 (xs!15505 (left!31074 (c!651315 v!6347)))) (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))

(assert (=> b!3762305 d!1099308))

(declare-fun d!1099310 () Bool)

(declare-fun c!651607 () Bool)

(assert (=> d!1099310 (= c!651607 ((_ is Node!12299) (left!31074 (left!31074 (right!31404 (c!651315 v!6347))))))))

(declare-fun e!2327143 () Bool)

(assert (=> d!1099310 (= (inv!53854 (left!31074 (left!31074 (right!31404 (c!651315 v!6347))))) e!2327143)))

(declare-fun b!3762685 () Bool)

(assert (=> b!3762685 (= e!2327143 (inv!53855 (left!31074 (left!31074 (right!31404 (c!651315 v!6347))))))))

(declare-fun b!3762686 () Bool)

(declare-fun e!2327144 () Bool)

(assert (=> b!3762686 (= e!2327143 e!2327144)))

(declare-fun res!1523573 () Bool)

(assert (=> b!3762686 (= res!1523573 (not ((_ is Leaf!19075) (left!31074 (left!31074 (right!31404 (c!651315 v!6347)))))))))

(assert (=> b!3762686 (=> res!1523573 e!2327144)))

(declare-fun b!3762687 () Bool)

(assert (=> b!3762687 (= e!2327144 (inv!53857 (left!31074 (left!31074 (right!31404 (c!651315 v!6347))))))))

(assert (= (and d!1099310 c!651607) b!3762685))

(assert (= (and d!1099310 (not c!651607)) b!3762686))

(assert (= (and b!3762686 (not res!1523573)) b!3762687))

(declare-fun m!4257379 () Bool)

(assert (=> b!3762685 m!4257379))

(declare-fun m!4257381 () Bool)

(assert (=> b!3762687 m!4257381))

(assert (=> b!3762354 d!1099310))

(declare-fun d!1099312 () Bool)

(declare-fun c!651608 () Bool)

(assert (=> d!1099312 (= c!651608 ((_ is Node!12299) (right!31404 (left!31074 (right!31404 (c!651315 v!6347))))))))

(declare-fun e!2327145 () Bool)

(assert (=> d!1099312 (= (inv!53854 (right!31404 (left!31074 (right!31404 (c!651315 v!6347))))) e!2327145)))

(declare-fun b!3762688 () Bool)

(assert (=> b!3762688 (= e!2327145 (inv!53855 (right!31404 (left!31074 (right!31404 (c!651315 v!6347))))))))

(declare-fun b!3762689 () Bool)

(declare-fun e!2327146 () Bool)

(assert (=> b!3762689 (= e!2327145 e!2327146)))

(declare-fun res!1523574 () Bool)

(assert (=> b!3762689 (= res!1523574 (not ((_ is Leaf!19075) (right!31404 (left!31074 (right!31404 (c!651315 v!6347)))))))))

(assert (=> b!3762689 (=> res!1523574 e!2327146)))

(declare-fun b!3762690 () Bool)

(assert (=> b!3762690 (= e!2327146 (inv!53857 (right!31404 (left!31074 (right!31404 (c!651315 v!6347))))))))

(assert (= (and d!1099312 c!651608) b!3762688))

(assert (= (and d!1099312 (not c!651608)) b!3762689))

(assert (= (and b!3762689 (not res!1523574)) b!3762690))

(declare-fun m!4257383 () Bool)

(assert (=> b!3762688 m!4257383))

(declare-fun m!4257385 () Bool)

(assert (=> b!3762690 m!4257385))

(assert (=> b!3762354 d!1099312))

(declare-fun b!3762693 () Bool)

(declare-fun res!1523576 () Bool)

(declare-fun e!2327147 () Bool)

(assert (=> b!3762693 (=> (not res!1523576) (not e!2327147))))

(declare-fun lt!1302273 () List!40263)

(assert (=> b!3762693 (= res!1523576 (= (size!30213 lt!1302273) (+ (size!30213 (t!303912 (t!303912 (++!9954 lt!1302051 lt!1302080)))) (size!30213 lt!1302082))))))

(declare-fun d!1099314 () Bool)

(assert (=> d!1099314 e!2327147))

(declare-fun res!1523575 () Bool)

(assert (=> d!1099314 (=> (not res!1523575) (not e!2327147))))

(assert (=> d!1099314 (= res!1523575 (= (content!5894 lt!1302273) ((_ map or) (content!5894 (t!303912 (t!303912 (++!9954 lt!1302051 lt!1302080)))) (content!5894 lt!1302082))))))

(declare-fun e!2327148 () List!40263)

(assert (=> d!1099314 (= lt!1302273 e!2327148)))

(declare-fun c!651609 () Bool)

(assert (=> d!1099314 (= c!651609 ((_ is Nil!40139) (t!303912 (t!303912 (++!9954 lt!1302051 lt!1302080)))))))

(assert (=> d!1099314 (= (++!9954 (t!303912 (t!303912 (++!9954 lt!1302051 lt!1302080))) lt!1302082) lt!1302273)))

(declare-fun b!3762691 () Bool)

(assert (=> b!3762691 (= e!2327148 lt!1302082)))

(declare-fun b!3762692 () Bool)

(assert (=> b!3762692 (= e!2327148 (Cons!40139 (h!45559 (t!303912 (t!303912 (++!9954 lt!1302051 lt!1302080)))) (++!9954 (t!303912 (t!303912 (t!303912 (++!9954 lt!1302051 lt!1302080)))) lt!1302082)))))

(declare-fun b!3762694 () Bool)

(assert (=> b!3762694 (= e!2327147 (or (not (= lt!1302082 Nil!40139)) (= lt!1302273 (t!303912 (t!303912 (++!9954 lt!1302051 lt!1302080))))))))

(assert (= (and d!1099314 c!651609) b!3762691))

(assert (= (and d!1099314 (not c!651609)) b!3762692))

(assert (= (and d!1099314 res!1523575) b!3762693))

(assert (= (and b!3762693 res!1523576) b!3762694))

(declare-fun m!4257387 () Bool)

(assert (=> b!3762693 m!4257387))

(declare-fun m!4257389 () Bool)

(assert (=> b!3762693 m!4257389))

(assert (=> b!3762693 m!4255989))

(declare-fun m!4257391 () Bool)

(assert (=> d!1099314 m!4257391))

(declare-fun m!4257393 () Bool)

(assert (=> d!1099314 m!4257393))

(assert (=> d!1099314 m!4255993))

(declare-fun m!4257395 () Bool)

(assert (=> b!3762692 m!4257395))

(assert (=> b!3762062 d!1099314))

(declare-fun d!1099316 () Bool)

(declare-fun lt!1302274 () Int)

(assert (=> d!1099316 (>= lt!1302274 0)))

(declare-fun e!2327149 () Int)

(assert (=> d!1099316 (= lt!1302274 e!2327149)))

(declare-fun c!651610 () Bool)

(assert (=> d!1099316 (= c!651610 ((_ is Nil!40141) lt!1302217))))

(assert (=> d!1099316 (= (size!30210 lt!1302217) lt!1302274)))

(declare-fun b!3762695 () Bool)

(assert (=> b!3762695 (= e!2327149 0)))

(declare-fun b!3762696 () Bool)

(assert (=> b!3762696 (= e!2327149 (+ 1 (size!30210 (t!303914 lt!1302217))))))

(assert (= (and d!1099316 c!651610) b!3762695))

(assert (= (and d!1099316 (not c!651610)) b!3762696))

(declare-fun m!4257397 () Bool)

(assert (=> b!3762696 m!4257397))

(assert (=> b!3762301 d!1099316))

(declare-fun d!1099318 () Bool)

(declare-fun lt!1302275 () Int)

(assert (=> d!1099318 (>= lt!1302275 0)))

(declare-fun e!2327150 () Int)

(assert (=> d!1099318 (= lt!1302275 e!2327150)))

(declare-fun c!651611 () Bool)

(assert (=> d!1099318 (= c!651611 ((_ is Nil!40141) (list!14820 (left!31074 (c!651315 v!6347)))))))

(assert (=> d!1099318 (= (size!30210 (list!14820 (left!31074 (c!651315 v!6347)))) lt!1302275)))

(declare-fun b!3762697 () Bool)

(assert (=> b!3762697 (= e!2327150 0)))

(declare-fun b!3762698 () Bool)

(assert (=> b!3762698 (= e!2327150 (+ 1 (size!30210 (t!303914 (list!14820 (left!31074 (c!651315 v!6347)))))))))

(assert (= (and d!1099318 c!651611) b!3762697))

(assert (= (and d!1099318 (not c!651611)) b!3762698))

(declare-fun m!4257399 () Bool)

(assert (=> b!3762698 m!4257399))

(assert (=> b!3762301 d!1099318))

(declare-fun d!1099320 () Bool)

(declare-fun lt!1302276 () Int)

(assert (=> d!1099320 (>= lt!1302276 0)))

(declare-fun e!2327151 () Int)

(assert (=> d!1099320 (= lt!1302276 e!2327151)))

(declare-fun c!651612 () Bool)

(assert (=> d!1099320 (= c!651612 ((_ is Nil!40141) (list!14820 (right!31404 (c!651315 v!6347)))))))

(assert (=> d!1099320 (= (size!30210 (list!14820 (right!31404 (c!651315 v!6347)))) lt!1302276)))

(declare-fun b!3762699 () Bool)

(assert (=> b!3762699 (= e!2327151 0)))

(declare-fun b!3762700 () Bool)

(assert (=> b!3762700 (= e!2327151 (+ 1 (size!30210 (t!303914 (list!14820 (right!31404 (c!651315 v!6347)))))))))

(assert (= (and d!1099320 c!651612) b!3762699))

(assert (= (and d!1099320 (not c!651612)) b!3762700))

(declare-fun m!4257401 () Bool)

(assert (=> b!3762700 m!4257401))

(assert (=> b!3762301 d!1099320))

(declare-fun d!1099322 () Bool)

(declare-fun c!651613 () Bool)

(assert (=> d!1099322 (= c!651613 ((_ is Nil!40139) (t!303912 lt!1302106)))))

(declare-fun e!2327152 () (InoxSet C!22308))

(assert (=> d!1099322 (= (content!5894 (t!303912 lt!1302106)) e!2327152)))

(declare-fun b!3762701 () Bool)

(assert (=> b!3762701 (= e!2327152 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762702 () Bool)

(assert (=> b!3762702 (= e!2327152 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (t!303912 lt!1302106)) true) (content!5894 (t!303912 (t!303912 lt!1302106)))))))

(assert (= (and d!1099322 c!651613) b!3762701))

(assert (= (and d!1099322 (not c!651613)) b!3762702))

(declare-fun m!4257403 () Bool)

(assert (=> b!3762702 m!4257403))

(declare-fun m!4257405 () Bool)

(assert (=> b!3762702 m!4257405))

(assert (=> b!3762002 d!1099322))

(declare-fun d!1099324 () Bool)

(declare-fun lt!1302277 () Int)

(assert (=> d!1099324 (>= lt!1302277 0)))

(declare-fun e!2327153 () Int)

(assert (=> d!1099324 (= lt!1302277 e!2327153)))

(declare-fun c!651614 () Bool)

(assert (=> d!1099324 (= c!651614 ((_ is Nil!40139) (t!303912 lt!1302105)))))

(assert (=> d!1099324 (= (size!30213 (t!303912 lt!1302105)) lt!1302277)))

(declare-fun b!3762703 () Bool)

(assert (=> b!3762703 (= e!2327153 0)))

(declare-fun b!3762704 () Bool)

(assert (=> b!3762704 (= e!2327153 (+ 1 (size!30213 (t!303912 (t!303912 lt!1302105)))))))

(assert (= (and d!1099324 c!651614) b!3762703))

(assert (= (and d!1099324 (not c!651614)) b!3762704))

(declare-fun m!4257407 () Bool)

(assert (=> b!3762704 m!4257407))

(assert (=> b!3762093 d!1099324))

(declare-fun d!1099326 () Bool)

(declare-fun lt!1302278 () Int)

(assert (=> d!1099326 (= lt!1302278 (size!30213 (list!14819 (left!31073 (left!31073 (c!651313 acc!400))))))))

(assert (=> d!1099326 (= lt!1302278 (ite ((_ is Empty!12298) (left!31073 (left!31073 (c!651313 acc!400)))) 0 (ite ((_ is Leaf!19074) (left!31073 (left!31073 (c!651313 acc!400)))) (csize!24827 (left!31073 (left!31073 (c!651313 acc!400)))) (csize!24826 (left!31073 (left!31073 (c!651313 acc!400)))))))))

(assert (=> d!1099326 (= (size!30214 (left!31073 (left!31073 (c!651313 acc!400)))) lt!1302278)))

(declare-fun bs!575861 () Bool)

(assert (= bs!575861 d!1099326))

(assert (=> bs!575861 m!4256675))

(assert (=> bs!575861 m!4256675))

(declare-fun m!4257409 () Bool)

(assert (=> bs!575861 m!4257409))

(assert (=> d!1099126 d!1099326))

(declare-fun d!1099328 () Bool)

(declare-fun lt!1302279 () Int)

(assert (=> d!1099328 (= lt!1302279 (size!30213 (list!14819 (right!31403 (left!31073 (c!651313 acc!400))))))))

(assert (=> d!1099328 (= lt!1302279 (ite ((_ is Empty!12298) (right!31403 (left!31073 (c!651313 acc!400)))) 0 (ite ((_ is Leaf!19074) (right!31403 (left!31073 (c!651313 acc!400)))) (csize!24827 (right!31403 (left!31073 (c!651313 acc!400)))) (csize!24826 (right!31403 (left!31073 (c!651313 acc!400)))))))))

(assert (=> d!1099328 (= (size!30214 (right!31403 (left!31073 (c!651313 acc!400)))) lt!1302279)))

(declare-fun bs!575862 () Bool)

(assert (= bs!575862 d!1099328))

(assert (=> bs!575862 m!4256677))

(assert (=> bs!575862 m!4256677))

(declare-fun m!4257411 () Bool)

(assert (=> bs!575862 m!4257411))

(assert (=> d!1099126 d!1099328))

(declare-fun d!1099330 () Bool)

(declare-fun c!651615 () Bool)

(assert (=> d!1099330 (= c!651615 ((_ is Node!12299) (left!31074 (right!31404 (left!31074 (c!651315 v!6347))))))))

(declare-fun e!2327154 () Bool)

(assert (=> d!1099330 (= (inv!53854 (left!31074 (right!31404 (left!31074 (c!651315 v!6347))))) e!2327154)))

(declare-fun b!3762705 () Bool)

(assert (=> b!3762705 (= e!2327154 (inv!53855 (left!31074 (right!31404 (left!31074 (c!651315 v!6347))))))))

(declare-fun b!3762706 () Bool)

(declare-fun e!2327155 () Bool)

(assert (=> b!3762706 (= e!2327154 e!2327155)))

(declare-fun res!1523577 () Bool)

(assert (=> b!3762706 (= res!1523577 (not ((_ is Leaf!19075) (left!31074 (right!31404 (left!31074 (c!651315 v!6347)))))))))

(assert (=> b!3762706 (=> res!1523577 e!2327155)))

(declare-fun b!3762707 () Bool)

(assert (=> b!3762707 (= e!2327155 (inv!53857 (left!31074 (right!31404 (left!31074 (c!651315 v!6347))))))))

(assert (= (and d!1099330 c!651615) b!3762705))

(assert (= (and d!1099330 (not c!651615)) b!3762706))

(assert (= (and b!3762706 (not res!1523577)) b!3762707))

(declare-fun m!4257413 () Bool)

(assert (=> b!3762705 m!4257413))

(declare-fun m!4257415 () Bool)

(assert (=> b!3762707 m!4257415))

(assert (=> b!3762372 d!1099330))

(declare-fun d!1099332 () Bool)

(declare-fun c!651616 () Bool)

(assert (=> d!1099332 (= c!651616 ((_ is Node!12299) (right!31404 (right!31404 (left!31074 (c!651315 v!6347))))))))

(declare-fun e!2327156 () Bool)

(assert (=> d!1099332 (= (inv!53854 (right!31404 (right!31404 (left!31074 (c!651315 v!6347))))) e!2327156)))

(declare-fun b!3762708 () Bool)

(assert (=> b!3762708 (= e!2327156 (inv!53855 (right!31404 (right!31404 (left!31074 (c!651315 v!6347))))))))

(declare-fun b!3762709 () Bool)

(declare-fun e!2327157 () Bool)

(assert (=> b!3762709 (= e!2327156 e!2327157)))

(declare-fun res!1523578 () Bool)

(assert (=> b!3762709 (= res!1523578 (not ((_ is Leaf!19075) (right!31404 (right!31404 (left!31074 (c!651315 v!6347)))))))))

(assert (=> b!3762709 (=> res!1523578 e!2327157)))

(declare-fun b!3762710 () Bool)

(assert (=> b!3762710 (= e!2327157 (inv!53857 (right!31404 (right!31404 (left!31074 (c!651315 v!6347))))))))

(assert (= (and d!1099332 c!651616) b!3762708))

(assert (= (and d!1099332 (not c!651616)) b!3762709))

(assert (= (and b!3762709 (not res!1523578)) b!3762710))

(declare-fun m!4257417 () Bool)

(assert (=> b!3762708 m!4257417))

(declare-fun m!4257419 () Bool)

(assert (=> b!3762710 m!4257419))

(assert (=> b!3762372 d!1099332))

(declare-fun d!1099334 () Bool)

(declare-fun c!651617 () Bool)

(assert (=> d!1099334 (= c!651617 ((_ is Node!12298) (left!31073 (left!31073 (right!31403 (c!651313 acc!400))))))))

(declare-fun e!2327158 () Bool)

(assert (=> d!1099334 (= (inv!53851 (left!31073 (left!31073 (right!31403 (c!651313 acc!400))))) e!2327158)))

(declare-fun b!3762711 () Bool)

(assert (=> b!3762711 (= e!2327158 (inv!53859 (left!31073 (left!31073 (right!31403 (c!651313 acc!400))))))))

(declare-fun b!3762712 () Bool)

(declare-fun e!2327159 () Bool)

(assert (=> b!3762712 (= e!2327158 e!2327159)))

(declare-fun res!1523579 () Bool)

(assert (=> b!3762712 (= res!1523579 (not ((_ is Leaf!19074) (left!31073 (left!31073 (right!31403 (c!651313 acc!400)))))))))

(assert (=> b!3762712 (=> res!1523579 e!2327159)))

(declare-fun b!3762713 () Bool)

(assert (=> b!3762713 (= e!2327159 (inv!53860 (left!31073 (left!31073 (right!31403 (c!651313 acc!400))))))))

(assert (= (and d!1099334 c!651617) b!3762711))

(assert (= (and d!1099334 (not c!651617)) b!3762712))

(assert (= (and b!3762712 (not res!1523579)) b!3762713))

(declare-fun m!4257421 () Bool)

(assert (=> b!3762711 m!4257421))

(declare-fun m!4257423 () Bool)

(assert (=> b!3762713 m!4257423))

(assert (=> b!3762409 d!1099334))

(declare-fun d!1099336 () Bool)

(declare-fun c!651618 () Bool)

(assert (=> d!1099336 (= c!651618 ((_ is Node!12298) (right!31403 (left!31073 (right!31403 (c!651313 acc!400))))))))

(declare-fun e!2327160 () Bool)

(assert (=> d!1099336 (= (inv!53851 (right!31403 (left!31073 (right!31403 (c!651313 acc!400))))) e!2327160)))

(declare-fun b!3762714 () Bool)

(assert (=> b!3762714 (= e!2327160 (inv!53859 (right!31403 (left!31073 (right!31403 (c!651313 acc!400))))))))

(declare-fun b!3762715 () Bool)

(declare-fun e!2327161 () Bool)

(assert (=> b!3762715 (= e!2327160 e!2327161)))

(declare-fun res!1523580 () Bool)

(assert (=> b!3762715 (= res!1523580 (not ((_ is Leaf!19074) (right!31403 (left!31073 (right!31403 (c!651313 acc!400)))))))))

(assert (=> b!3762715 (=> res!1523580 e!2327161)))

(declare-fun b!3762716 () Bool)

(assert (=> b!3762716 (= e!2327161 (inv!53860 (right!31403 (left!31073 (right!31403 (c!651313 acc!400))))))))

(assert (= (and d!1099336 c!651618) b!3762714))

(assert (= (and d!1099336 (not c!651618)) b!3762715))

(assert (= (and b!3762715 (not res!1523580)) b!3762716))

(declare-fun m!4257425 () Bool)

(assert (=> b!3762714 m!4257425))

(declare-fun m!4257427 () Bool)

(assert (=> b!3762716 m!4257427))

(assert (=> b!3762409 d!1099336))

(declare-fun b!3762719 () Bool)

(declare-fun res!1523582 () Bool)

(declare-fun e!2327163 () Bool)

(assert (=> b!3762719 (=> (not res!1523582) (not e!2327163))))

(declare-fun lt!1302280 () List!40265)

(assert (=> b!3762719 (= res!1523582 (= (size!30210 lt!1302280) (+ (size!30210 (list!14820 (left!31074 (right!31404 (c!651315 v!6347))))) (size!30210 (list!14820 (right!31404 (right!31404 (c!651315 v!6347))))))))))

(declare-fun b!3762720 () Bool)

(assert (=> b!3762720 (= e!2327163 (or (not (= (list!14820 (right!31404 (right!31404 (c!651315 v!6347)))) Nil!40141)) (= lt!1302280 (list!14820 (left!31074 (right!31404 (c!651315 v!6347)))))))))

(declare-fun b!3762717 () Bool)

(declare-fun e!2327162 () List!40265)

(assert (=> b!3762717 (= e!2327162 (list!14820 (right!31404 (right!31404 (c!651315 v!6347)))))))

(declare-fun b!3762718 () Bool)

(assert (=> b!3762718 (= e!2327162 (Cons!40141 (h!45561 (list!14820 (left!31074 (right!31404 (c!651315 v!6347))))) (++!9955 (t!303914 (list!14820 (left!31074 (right!31404 (c!651315 v!6347))))) (list!14820 (right!31404 (right!31404 (c!651315 v!6347)))))))))

(declare-fun d!1099338 () Bool)

(assert (=> d!1099338 e!2327163))

(declare-fun res!1523581 () Bool)

(assert (=> d!1099338 (=> (not res!1523581) (not e!2327163))))

(assert (=> d!1099338 (= res!1523581 (= (content!5892 lt!1302280) ((_ map or) (content!5892 (list!14820 (left!31074 (right!31404 (c!651315 v!6347))))) (content!5892 (list!14820 (right!31404 (right!31404 (c!651315 v!6347))))))))))

(assert (=> d!1099338 (= lt!1302280 e!2327162)))

(declare-fun c!651619 () Bool)

(assert (=> d!1099338 (= c!651619 ((_ is Nil!40141) (list!14820 (left!31074 (right!31404 (c!651315 v!6347))))))))

(assert (=> d!1099338 (= (++!9955 (list!14820 (left!31074 (right!31404 (c!651315 v!6347)))) (list!14820 (right!31404 (right!31404 (c!651315 v!6347))))) lt!1302280)))

(assert (= (and d!1099338 c!651619) b!3762717))

(assert (= (and d!1099338 (not c!651619)) b!3762718))

(assert (= (and d!1099338 res!1523581) b!3762719))

(assert (= (and b!3762719 res!1523582) b!3762720))

(declare-fun m!4257429 () Bool)

(assert (=> b!3762719 m!4257429))

(assert (=> b!3762719 m!4256761))

(declare-fun m!4257431 () Bool)

(assert (=> b!3762719 m!4257431))

(assert (=> b!3762719 m!4256763))

(declare-fun m!4257433 () Bool)

(assert (=> b!3762719 m!4257433))

(assert (=> b!3762718 m!4256763))

(declare-fun m!4257435 () Bool)

(assert (=> b!3762718 m!4257435))

(declare-fun m!4257437 () Bool)

(assert (=> d!1099338 m!4257437))

(assert (=> d!1099338 m!4256761))

(declare-fun m!4257439 () Bool)

(assert (=> d!1099338 m!4257439))

(assert (=> d!1099338 m!4256763))

(declare-fun m!4257441 () Bool)

(assert (=> d!1099338 m!4257441))

(assert (=> b!3762310 d!1099338))

(declare-fun b!3762722 () Bool)

(declare-fun e!2327164 () List!40265)

(declare-fun e!2327165 () List!40265)

(assert (=> b!3762722 (= e!2327164 e!2327165)))

(declare-fun c!651621 () Bool)

(assert (=> b!3762722 (= c!651621 ((_ is Leaf!19075) (left!31074 (right!31404 (c!651315 v!6347)))))))

(declare-fun d!1099340 () Bool)

(declare-fun c!651620 () Bool)

(assert (=> d!1099340 (= c!651620 ((_ is Empty!12299) (left!31074 (right!31404 (c!651315 v!6347)))))))

(assert (=> d!1099340 (= (list!14820 (left!31074 (right!31404 (c!651315 v!6347)))) e!2327164)))

(declare-fun b!3762724 () Bool)

(assert (=> b!3762724 (= e!2327165 (++!9955 (list!14820 (left!31074 (left!31074 (right!31404 (c!651315 v!6347))))) (list!14820 (right!31404 (left!31074 (right!31404 (c!651315 v!6347)))))))))

(declare-fun b!3762721 () Bool)

(assert (=> b!3762721 (= e!2327164 Nil!40141)))

(declare-fun b!3762723 () Bool)

(assert (=> b!3762723 (= e!2327165 (list!14826 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))))

(assert (= (and d!1099340 c!651620) b!3762721))

(assert (= (and d!1099340 (not c!651620)) b!3762722))

(assert (= (and b!3762722 c!651621) b!3762723))

(assert (= (and b!3762722 (not c!651621)) b!3762724))

(declare-fun m!4257443 () Bool)

(assert (=> b!3762724 m!4257443))

(declare-fun m!4257445 () Bool)

(assert (=> b!3762724 m!4257445))

(assert (=> b!3762724 m!4257443))

(assert (=> b!3762724 m!4257445))

(declare-fun m!4257447 () Bool)

(assert (=> b!3762724 m!4257447))

(declare-fun m!4257449 () Bool)

(assert (=> b!3762723 m!4257449))

(assert (=> b!3762310 d!1099340))

(declare-fun b!3762726 () Bool)

(declare-fun e!2327166 () List!40265)

(declare-fun e!2327167 () List!40265)

(assert (=> b!3762726 (= e!2327166 e!2327167)))

(declare-fun c!651623 () Bool)

(assert (=> b!3762726 (= c!651623 ((_ is Leaf!19075) (right!31404 (right!31404 (c!651315 v!6347)))))))

(declare-fun d!1099342 () Bool)

(declare-fun c!651622 () Bool)

(assert (=> d!1099342 (= c!651622 ((_ is Empty!12299) (right!31404 (right!31404 (c!651315 v!6347)))))))

(assert (=> d!1099342 (= (list!14820 (right!31404 (right!31404 (c!651315 v!6347)))) e!2327166)))

(declare-fun b!3762728 () Bool)

(assert (=> b!3762728 (= e!2327167 (++!9955 (list!14820 (left!31074 (right!31404 (right!31404 (c!651315 v!6347))))) (list!14820 (right!31404 (right!31404 (right!31404 (c!651315 v!6347)))))))))

(declare-fun b!3762725 () Bool)

(assert (=> b!3762725 (= e!2327166 Nil!40141)))

(declare-fun b!3762727 () Bool)

(assert (=> b!3762727 (= e!2327167 (list!14826 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))))

(assert (= (and d!1099342 c!651622) b!3762725))

(assert (= (and d!1099342 (not c!651622)) b!3762726))

(assert (= (and b!3762726 c!651623) b!3762727))

(assert (= (and b!3762726 (not c!651623)) b!3762728))

(declare-fun m!4257451 () Bool)

(assert (=> b!3762728 m!4257451))

(declare-fun m!4257453 () Bool)

(assert (=> b!3762728 m!4257453))

(assert (=> b!3762728 m!4257451))

(assert (=> b!3762728 m!4257453))

(declare-fun m!4257455 () Bool)

(assert (=> b!3762728 m!4257455))

(declare-fun m!4257457 () Bool)

(assert (=> b!3762727 m!4257457))

(assert (=> b!3762310 d!1099342))

(declare-fun b!3762731 () Bool)

(declare-fun res!1523584 () Bool)

(declare-fun e!2327168 () Bool)

(assert (=> b!3762731 (=> (not res!1523584) (not e!2327168))))

(declare-fun lt!1302281 () List!40263)

(assert (=> b!3762731 (= res!1523584 (= (size!30213 lt!1302281) (+ (size!30213 (t!303912 (t!303912 lt!1302051))) (size!30213 (printList!1661 thiss!13650 lt!1302052)))))))

(declare-fun d!1099344 () Bool)

(assert (=> d!1099344 e!2327168))

(declare-fun res!1523583 () Bool)

(assert (=> d!1099344 (=> (not res!1523583) (not e!2327168))))

(assert (=> d!1099344 (= res!1523583 (= (content!5894 lt!1302281) ((_ map or) (content!5894 (t!303912 (t!303912 lt!1302051))) (content!5894 (printList!1661 thiss!13650 lt!1302052)))))))

(declare-fun e!2327169 () List!40263)

(assert (=> d!1099344 (= lt!1302281 e!2327169)))

(declare-fun c!651624 () Bool)

(assert (=> d!1099344 (= c!651624 ((_ is Nil!40139) (t!303912 (t!303912 lt!1302051))))))

(assert (=> d!1099344 (= (++!9954 (t!303912 (t!303912 lt!1302051)) (printList!1661 thiss!13650 lt!1302052)) lt!1302281)))

(declare-fun b!3762729 () Bool)

(assert (=> b!3762729 (= e!2327169 (printList!1661 thiss!13650 lt!1302052))))

(declare-fun b!3762730 () Bool)

(assert (=> b!3762730 (= e!2327169 (Cons!40139 (h!45559 (t!303912 (t!303912 lt!1302051))) (++!9954 (t!303912 (t!303912 (t!303912 lt!1302051))) (printList!1661 thiss!13650 lt!1302052))))))

(declare-fun b!3762732 () Bool)

(assert (=> b!3762732 (= e!2327168 (or (not (= (printList!1661 thiss!13650 lt!1302052) Nil!40139)) (= lt!1302281 (t!303912 (t!303912 lt!1302051)))))))

(assert (= (and d!1099344 c!651624) b!3762729))

(assert (= (and d!1099344 (not c!651624)) b!3762730))

(assert (= (and d!1099344 res!1523583) b!3762731))

(assert (= (and b!3762731 res!1523584) b!3762732))

(declare-fun m!4257459 () Bool)

(assert (=> b!3762731 m!4257459))

(declare-fun m!4257461 () Bool)

(assert (=> b!3762731 m!4257461))

(assert (=> b!3762731 m!4255695))

(assert (=> b!3762731 m!4256027))

(declare-fun m!4257463 () Bool)

(assert (=> d!1099344 m!4257463))

(declare-fun m!4257465 () Bool)

(assert (=> d!1099344 m!4257465))

(assert (=> d!1099344 m!4255695))

(assert (=> d!1099344 m!4256031))

(assert (=> b!3762730 m!4255695))

(declare-fun m!4257467 () Bool)

(assert (=> b!3762730 m!4257467))

(assert (=> b!3762264 d!1099344))

(declare-fun d!1099346 () Bool)

(declare-fun c!651625 () Bool)

(assert (=> d!1099346 (= c!651625 ((_ is Nil!40141) lt!1302150))))

(declare-fun e!2327170 () (InoxSet Token!11450))

(assert (=> d!1099346 (= (content!5892 lt!1302150) e!2327170)))

(declare-fun b!3762733 () Bool)

(assert (=> b!3762733 (= e!2327170 ((as const (Array Token!11450 Bool)) false))))

(declare-fun b!3762734 () Bool)

(assert (=> b!3762734 (= e!2327170 ((_ map or) (store ((as const (Array Token!11450 Bool)) false) (h!45561 lt!1302150) true) (content!5892 (t!303914 lt!1302150))))))

(assert (= (and d!1099346 c!651625) b!3762733))

(assert (= (and d!1099346 (not c!651625)) b!3762734))

(declare-fun m!4257469 () Bool)

(assert (=> b!3762734 m!4257469))

(declare-fun m!4257471 () Bool)

(assert (=> b!3762734 m!4257471))

(assert (=> d!1098876 d!1099346))

(declare-fun d!1099348 () Bool)

(declare-fun c!651626 () Bool)

(assert (=> d!1099348 (= c!651626 ((_ is Nil!40141) (t!303914 (list!14820 (c!651315 v!6347)))))))

(declare-fun e!2327171 () (InoxSet Token!11450))

(assert (=> d!1099348 (= (content!5892 (t!303914 (list!14820 (c!651315 v!6347)))) e!2327171)))

(declare-fun b!3762735 () Bool)

(assert (=> b!3762735 (= e!2327171 ((as const (Array Token!11450 Bool)) false))))

(declare-fun b!3762736 () Bool)

(assert (=> b!3762736 (= e!2327171 ((_ map or) (store ((as const (Array Token!11450 Bool)) false) (h!45561 (t!303914 (list!14820 (c!651315 v!6347)))) true) (content!5892 (t!303914 (t!303914 (list!14820 (c!651315 v!6347)))))))))

(assert (= (and d!1099348 c!651626) b!3762735))

(assert (= (and d!1099348 (not c!651626)) b!3762736))

(declare-fun m!4257473 () Bool)

(assert (=> b!3762736 m!4257473))

(declare-fun m!4257475 () Bool)

(assert (=> b!3762736 m!4257475))

(assert (=> d!1098876 d!1099348))

(declare-fun d!1099350 () Bool)

(declare-fun lt!1302282 () Bool)

(assert (=> d!1099350 (= lt!1302282 (isEmpty!23587 (list!14819 (left!31073 (right!31403 (c!651313 acc!400))))))))

(assert (=> d!1099350 (= lt!1302282 (= (size!30214 (left!31073 (right!31403 (c!651313 acc!400)))) 0))))

(assert (=> d!1099350 (= (isEmpty!23585 (left!31073 (right!31403 (c!651313 acc!400)))) lt!1302282)))

(declare-fun bs!575863 () Bool)

(assert (= bs!575863 d!1099350))

(assert (=> bs!575863 m!4256683))

(assert (=> bs!575863 m!4256683))

(declare-fun m!4257477 () Bool)

(assert (=> bs!575863 m!4257477))

(assert (=> bs!575863 m!4256305))

(assert (=> b!3762106 d!1099350))

(assert (=> b!3761990 d!1098920))

(declare-fun d!1099352 () Bool)

(declare-fun c!651627 () Bool)

(assert (=> d!1099352 (= c!651627 ((_ is Nil!40139) lt!1302157))))

(declare-fun e!2327172 () (InoxSet C!22308))

(assert (=> d!1099352 (= (content!5894 lt!1302157) e!2327172)))

(declare-fun b!3762737 () Bool)

(assert (=> b!3762737 (= e!2327172 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762738 () Bool)

(assert (=> b!3762738 (= e!2327172 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302157) true) (content!5894 (t!303912 lt!1302157))))))

(assert (= (and d!1099352 c!651627) b!3762737))

(assert (= (and d!1099352 (not c!651627)) b!3762738))

(declare-fun m!4257479 () Bool)

(assert (=> b!3762738 m!4257479))

(declare-fun m!4257481 () Bool)

(assert (=> b!3762738 m!4257481))

(assert (=> d!1098918 d!1099352))

(declare-fun d!1099354 () Bool)

(declare-fun c!651628 () Bool)

(assert (=> d!1099354 (= c!651628 ((_ is Nil!40139) (t!303912 (++!9954 lt!1302051 lt!1302080))))))

(declare-fun e!2327173 () (InoxSet C!22308))

(assert (=> d!1099354 (= (content!5894 (t!303912 (++!9954 lt!1302051 lt!1302080))) e!2327173)))

(declare-fun b!3762739 () Bool)

(assert (=> b!3762739 (= e!2327173 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762740 () Bool)

(assert (=> b!3762740 (= e!2327173 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (t!303912 (++!9954 lt!1302051 lt!1302080))) true) (content!5894 (t!303912 (t!303912 (++!9954 lt!1302051 lt!1302080))))))))

(assert (= (and d!1099354 c!651628) b!3762739))

(assert (= (and d!1099354 (not c!651628)) b!3762740))

(declare-fun m!4257483 () Bool)

(assert (=> b!3762740 m!4257483))

(assert (=> b!3762740 m!4257393))

(assert (=> d!1098918 d!1099354))

(assert (=> d!1098918 d!1098972))

(declare-fun d!1099356 () Bool)

(declare-fun lt!1302283 () Int)

(assert (=> d!1099356 (>= lt!1302283 0)))

(declare-fun e!2327174 () Int)

(assert (=> d!1099356 (= lt!1302283 e!2327174)))

(declare-fun c!651629 () Bool)

(assert (=> d!1099356 (= c!651629 ((_ is Nil!40139) (list!14824 (xs!15504 (right!31403 (c!651313 acc!400))))))))

(assert (=> d!1099356 (= (size!30213 (list!14824 (xs!15504 (right!31403 (c!651313 acc!400))))) lt!1302283)))

(declare-fun b!3762741 () Bool)

(assert (=> b!3762741 (= e!2327174 0)))

(declare-fun b!3762742 () Bool)

(assert (=> b!3762742 (= e!2327174 (+ 1 (size!30213 (t!303912 (list!14824 (xs!15504 (right!31403 (c!651313 acc!400))))))))))

(assert (= (and d!1099356 c!651629) b!3762741))

(assert (= (and d!1099356 (not c!651629)) b!3762742))

(declare-fun m!4257485 () Bool)

(assert (=> b!3762742 m!4257485))

(assert (=> b!3762044 d!1099356))

(declare-fun d!1099358 () Bool)

(assert (=> d!1099358 (= (list!14824 (xs!15504 (right!31403 (c!651313 acc!400)))) (innerList!12358 (xs!15504 (right!31403 (c!651313 acc!400)))))))

(assert (=> b!3762044 d!1099358))

(declare-fun b!3762745 () Bool)

(declare-fun res!1523586 () Bool)

(declare-fun e!2327175 () Bool)

(assert (=> b!3762745 (=> (not res!1523586) (not e!2327175))))

(declare-fun lt!1302284 () List!40263)

(assert (=> b!3762745 (= res!1523586 (= (size!30213 lt!1302284) (+ (size!30213 (t!303912 (t!303912 lt!1302051))) (size!30213 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(declare-fun d!1099360 () Bool)

(assert (=> d!1099360 e!2327175))

(declare-fun res!1523585 () Bool)

(assert (=> d!1099360 (=> (not res!1523585) (not e!2327175))))

(assert (=> d!1099360 (= res!1523585 (= (content!5894 lt!1302284) ((_ map or) (content!5894 (t!303912 (t!303912 lt!1302051))) (content!5894 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(declare-fun e!2327176 () List!40263)

(assert (=> d!1099360 (= lt!1302284 e!2327176)))

(declare-fun c!651630 () Bool)

(assert (=> d!1099360 (= c!651630 ((_ is Nil!40139) (t!303912 (t!303912 lt!1302051))))))

(assert (=> d!1099360 (= (++!9954 (t!303912 (t!303912 lt!1302051)) (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302284)))

(declare-fun b!3762743 () Bool)

(assert (=> b!3762743 (= e!2327176 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))

(declare-fun b!3762744 () Bool)

(assert (=> b!3762744 (= e!2327176 (Cons!40139 (h!45559 (t!303912 (t!303912 lt!1302051))) (++!9954 (t!303912 (t!303912 (t!303912 lt!1302051))) (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))

(declare-fun b!3762746 () Bool)

(assert (=> b!3762746 (= e!2327175 (or (not (= (list!14816 (charsOf!4006 (h!45561 lt!1302052))) Nil!40139)) (= lt!1302284 (t!303912 (t!303912 lt!1302051)))))))

(assert (= (and d!1099360 c!651630) b!3762743))

(assert (= (and d!1099360 (not c!651630)) b!3762744))

(assert (= (and d!1099360 res!1523585) b!3762745))

(assert (= (and b!3762745 res!1523586) b!3762746))

(declare-fun m!4257487 () Bool)

(assert (=> b!3762745 m!4257487))

(assert (=> b!3762745 m!4257461))

(assert (=> b!3762745 m!4255701))

(assert (=> b!3762745 m!4255909))

(declare-fun m!4257489 () Bool)

(assert (=> d!1099360 m!4257489))

(assert (=> d!1099360 m!4257465))

(assert (=> d!1099360 m!4255701))

(assert (=> d!1099360 m!4255915))

(assert (=> b!3762744 m!4255701))

(declare-fun m!4257491 () Bool)

(assert (=> b!3762744 m!4257491))

(assert (=> b!3762184 d!1099360))

(declare-fun d!1099362 () Bool)

(declare-fun c!651631 () Bool)

(assert (=> d!1099362 (= c!651631 ((_ is Nil!40139) lt!1302187))))

(declare-fun e!2327177 () (InoxSet C!22308))

(assert (=> d!1099362 (= (content!5894 lt!1302187) e!2327177)))

(declare-fun b!3762747 () Bool)

(assert (=> b!3762747 (= e!2327177 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762748 () Bool)

(assert (=> b!3762748 (= e!2327177 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302187) true) (content!5894 (t!303912 lt!1302187))))))

(assert (= (and d!1099362 c!651631) b!3762747))

(assert (= (and d!1099362 (not c!651631)) b!3762748))

(declare-fun m!4257493 () Bool)

(assert (=> b!3762748 m!4257493))

(declare-fun m!4257495 () Bool)

(assert (=> b!3762748 m!4257495))

(assert (=> d!1099026 d!1099362))

(declare-fun d!1099364 () Bool)

(declare-fun c!651632 () Bool)

(assert (=> d!1099364 (= c!651632 ((_ is Nil!40139) (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))

(declare-fun e!2327178 () (InoxSet C!22308))

(assert (=> d!1099364 (= (content!5894 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) e!2327178)))

(declare-fun b!3762749 () Bool)

(assert (=> b!3762749 (= e!2327178 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762750 () Bool)

(assert (=> b!3762750 (= e!2327178 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) true) (content!5894 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))))

(assert (= (and d!1099364 c!651632) b!3762749))

(assert (= (and d!1099364 (not c!651632)) b!3762750))

(declare-fun m!4257497 () Bool)

(assert (=> b!3762750 m!4257497))

(declare-fun m!4257499 () Bool)

(assert (=> b!3762750 m!4257499))

(assert (=> d!1099026 d!1099364))

(declare-fun d!1099366 () Bool)

(declare-fun c!651633 () Bool)

(assert (=> d!1099366 (= c!651633 ((_ is Nil!40139) lt!1302108))))

(declare-fun e!2327179 () (InoxSet C!22308))

(assert (=> d!1099366 (= (content!5894 lt!1302108) e!2327179)))

(declare-fun b!3762751 () Bool)

(assert (=> b!3762751 (= e!2327179 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762752 () Bool)

(assert (=> b!3762752 (= e!2327179 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302108) true) (content!5894 (t!303912 lt!1302108))))))

(assert (= (and d!1099366 c!651633) b!3762751))

(assert (= (and d!1099366 (not c!651633)) b!3762752))

(declare-fun m!4257501 () Bool)

(assert (=> b!3762752 m!4257501))

(declare-fun m!4257503 () Bool)

(assert (=> b!3762752 m!4257503))

(assert (=> d!1099026 d!1099366))

(declare-fun d!1099368 () Bool)

(assert (=> d!1099368 (= (height!1755 (left!31073 (left!31073 (c!651313 acc!400)))) (ite ((_ is Empty!12298) (left!31073 (left!31073 (c!651313 acc!400)))) 0 (ite ((_ is Leaf!19074) (left!31073 (left!31073 (c!651313 acc!400)))) 1 (cheight!12509 (left!31073 (left!31073 (c!651313 acc!400)))))))))

(assert (=> b!3762275 d!1099368))

(declare-fun d!1099370 () Bool)

(assert (=> d!1099370 (= (height!1755 (right!31403 (left!31073 (c!651313 acc!400)))) (ite ((_ is Empty!12298) (right!31403 (left!31073 (c!651313 acc!400)))) 0 (ite ((_ is Leaf!19074) (right!31403 (left!31073 (c!651313 acc!400)))) 1 (cheight!12509 (right!31403 (left!31073 (c!651313 acc!400)))))))))

(assert (=> b!3762275 d!1099370))

(declare-fun b!3762753 () Bool)

(declare-fun e!2327181 () Bool)

(declare-fun e!2327180 () Bool)

(assert (=> b!3762753 (= e!2327181 e!2327180)))

(declare-fun res!1523592 () Bool)

(assert (=> b!3762753 (=> (not res!1523592) (not e!2327180))))

(assert (=> b!3762753 (= res!1523592 (<= (- 1) (- (height!1754 (left!31074 (left!31074 (right!31404 (c!651315 v!6347))))) (height!1754 (right!31404 (left!31074 (right!31404 (c!651315 v!6347))))))))))

(declare-fun b!3762754 () Bool)

(declare-fun res!1523591 () Bool)

(assert (=> b!3762754 (=> (not res!1523591) (not e!2327180))))

(assert (=> b!3762754 (= res!1523591 (not (isEmpty!23583 (left!31074 (left!31074 (right!31404 (c!651315 v!6347)))))))))

(declare-fun d!1099372 () Bool)

(declare-fun res!1523588 () Bool)

(assert (=> d!1099372 (=> res!1523588 e!2327181)))

(assert (=> d!1099372 (= res!1523588 (not ((_ is Node!12299) (left!31074 (right!31404 (c!651315 v!6347))))))))

(assert (=> d!1099372 (= (isBalanced!3538 (left!31074 (right!31404 (c!651315 v!6347)))) e!2327181)))

(declare-fun b!3762755 () Bool)

(declare-fun res!1523587 () Bool)

(assert (=> b!3762755 (=> (not res!1523587) (not e!2327180))))

(assert (=> b!3762755 (= res!1523587 (isBalanced!3538 (right!31404 (left!31074 (right!31404 (c!651315 v!6347))))))))

(declare-fun b!3762756 () Bool)

(declare-fun res!1523590 () Bool)

(assert (=> b!3762756 (=> (not res!1523590) (not e!2327180))))

(assert (=> b!3762756 (= res!1523590 (isBalanced!3538 (left!31074 (left!31074 (right!31404 (c!651315 v!6347))))))))

(declare-fun b!3762757 () Bool)

(declare-fun res!1523589 () Bool)

(assert (=> b!3762757 (=> (not res!1523589) (not e!2327180))))

(assert (=> b!3762757 (= res!1523589 (<= (- (height!1754 (left!31074 (left!31074 (right!31404 (c!651315 v!6347))))) (height!1754 (right!31404 (left!31074 (right!31404 (c!651315 v!6347)))))) 1))))

(declare-fun b!3762758 () Bool)

(assert (=> b!3762758 (= e!2327180 (not (isEmpty!23583 (right!31404 (left!31074 (right!31404 (c!651315 v!6347)))))))))

(assert (= (and d!1099372 (not res!1523588)) b!3762753))

(assert (= (and b!3762753 res!1523592) b!3762757))

(assert (= (and b!3762757 res!1523589) b!3762756))

(assert (= (and b!3762756 res!1523590) b!3762755))

(assert (= (and b!3762755 res!1523587) b!3762754))

(assert (= (and b!3762754 res!1523591) b!3762758))

(declare-fun m!4257505 () Bool)

(assert (=> b!3762756 m!4257505))

(declare-fun m!4257507 () Bool)

(assert (=> b!3762755 m!4257507))

(declare-fun m!4257509 () Bool)

(assert (=> b!3762758 m!4257509))

(declare-fun m!4257511 () Bool)

(assert (=> b!3762757 m!4257511))

(declare-fun m!4257513 () Bool)

(assert (=> b!3762757 m!4257513))

(assert (=> b!3762753 m!4257511))

(assert (=> b!3762753 m!4257513))

(declare-fun m!4257515 () Bool)

(assert (=> b!3762754 m!4257515))

(assert (=> b!3762023 d!1099372))

(declare-fun d!1099374 () Bool)

(declare-fun res!1523593 () Bool)

(declare-fun e!2327182 () Bool)

(assert (=> d!1099374 (=> (not res!1523593) (not e!2327182))))

(assert (=> d!1099374 (= res!1523593 (= (csize!24828 (right!31404 (right!31404 (c!651315 v!6347)))) (+ (size!30211 (left!31074 (right!31404 (right!31404 (c!651315 v!6347))))) (size!30211 (right!31404 (right!31404 (right!31404 (c!651315 v!6347))))))))))

(assert (=> d!1099374 (= (inv!53855 (right!31404 (right!31404 (c!651315 v!6347)))) e!2327182)))

(declare-fun b!3762759 () Bool)

(declare-fun res!1523594 () Bool)

(assert (=> b!3762759 (=> (not res!1523594) (not e!2327182))))

(assert (=> b!3762759 (= res!1523594 (and (not (= (left!31074 (right!31404 (right!31404 (c!651315 v!6347)))) Empty!12299)) (not (= (right!31404 (right!31404 (right!31404 (c!651315 v!6347)))) Empty!12299))))))

(declare-fun b!3762760 () Bool)

(declare-fun res!1523595 () Bool)

(assert (=> b!3762760 (=> (not res!1523595) (not e!2327182))))

(assert (=> b!3762760 (= res!1523595 (= (cheight!12510 (right!31404 (right!31404 (c!651315 v!6347)))) (+ (max!0 (height!1754 (left!31074 (right!31404 (right!31404 (c!651315 v!6347))))) (height!1754 (right!31404 (right!31404 (right!31404 (c!651315 v!6347)))))) 1)))))

(declare-fun b!3762761 () Bool)

(assert (=> b!3762761 (= e!2327182 (<= 0 (cheight!12510 (right!31404 (right!31404 (c!651315 v!6347))))))))

(assert (= (and d!1099374 res!1523593) b!3762759))

(assert (= (and b!3762759 res!1523594) b!3762760))

(assert (= (and b!3762760 res!1523595) b!3762761))

(declare-fun m!4257517 () Bool)

(assert (=> d!1099374 m!4257517))

(declare-fun m!4257519 () Bool)

(assert (=> d!1099374 m!4257519))

(declare-fun m!4257521 () Bool)

(assert (=> b!3762760 m!4257521))

(declare-fun m!4257523 () Bool)

(assert (=> b!3762760 m!4257523))

(assert (=> b!3762760 m!4257521))

(assert (=> b!3762760 m!4257523))

(declare-fun m!4257525 () Bool)

(assert (=> b!3762760 m!4257525))

(assert (=> b!3762008 d!1099374))

(declare-fun d!1099376 () Bool)

(declare-fun lt!1302285 () Int)

(assert (=> d!1099376 (>= lt!1302285 0)))

(declare-fun e!2327183 () Int)

(assert (=> d!1099376 (= lt!1302285 e!2327183)))

(declare-fun c!651634 () Bool)

(assert (=> d!1099376 (= c!651634 ((_ is Nil!40139) (t!303912 (++!9954 lt!1302051 lt!1302080))))))

(assert (=> d!1099376 (= (size!30213 (t!303912 (++!9954 lt!1302051 lt!1302080))) lt!1302285)))

(declare-fun b!3762762 () Bool)

(assert (=> b!3762762 (= e!2327183 0)))

(declare-fun b!3762763 () Bool)

(assert (=> b!3762763 (= e!2327183 (+ 1 (size!30213 (t!303912 (t!303912 (++!9954 lt!1302051 lt!1302080))))))))

(assert (= (and d!1099376 c!651634) b!3762762))

(assert (= (and d!1099376 (not c!651634)) b!3762763))

(assert (=> b!3762763 m!4257389))

(assert (=> b!3762237 d!1099376))

(declare-fun d!1099378 () Bool)

(declare-fun lt!1302286 () Bool)

(assert (=> d!1099378 (= lt!1302286 (isEmpty!23590 (list!14820 (right!31404 (left!31074 (c!651315 v!6347))))))))

(assert (=> d!1099378 (= lt!1302286 (= (size!30211 (right!31404 (left!31074 (c!651315 v!6347)))) 0))))

(assert (=> d!1099378 (= (isEmpty!23583 (right!31404 (left!31074 (c!651315 v!6347)))) lt!1302286)))

(declare-fun bs!575864 () Bool)

(assert (= bs!575864 d!1099378))

(assert (=> bs!575864 m!4256757))

(assert (=> bs!575864 m!4256757))

(declare-fun m!4257527 () Bool)

(assert (=> bs!575864 m!4257527))

(assert (=> bs!575864 m!4256507))

(assert (=> b!3762153 d!1099378))

(declare-fun d!1099380 () Bool)

(declare-fun res!1523596 () Bool)

(declare-fun e!2327184 () Bool)

(assert (=> d!1099380 (=> (not res!1523596) (not e!2327184))))

(assert (=> d!1099380 (= res!1523596 (not (isEmpty!23587 (originalCharacters!6756 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))))

(assert (=> d!1099380 (= (inv!53867 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))) e!2327184)))

(declare-fun b!3762764 () Bool)

(declare-fun res!1523597 () Bool)

(assert (=> b!3762764 (=> (not res!1523597) (not e!2327184))))

(assert (=> b!3762764 (= res!1523597 (= (originalCharacters!6756 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))) (list!14816 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (value!196053 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))))))

(declare-fun b!3762765 () Bool)

(assert (=> b!3762765 (= e!2327184 (= (size!30206 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))) (size!30213 (originalCharacters!6756 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))))

(assert (= (and d!1099380 res!1523596) b!3762764))

(assert (= (and b!3762764 res!1523597) b!3762765))

(declare-fun b_lambda!110415 () Bool)

(assert (=> (not b_lambda!110415) (not b!3762764)))

(declare-fun t!303984 () Bool)

(declare-fun tb!215301 () Bool)

(assert (=> (and b!3761985 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) t!303984) tb!215301))

(declare-fun b!3762766 () Bool)

(declare-fun e!2327185 () Bool)

(declare-fun tp!1149697 () Bool)

(assert (=> b!3762766 (= e!2327185 (and (inv!53851 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (value!196053 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) tp!1149697))))

(declare-fun result!262954 () Bool)

(assert (=> tb!215301 (= result!262954 (and (inv!53852 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (value!196053 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) e!2327185))))

(assert (= tb!215301 b!3762766))

(declare-fun m!4257529 () Bool)

(assert (=> b!3762766 m!4257529))

(declare-fun m!4257531 () Bool)

(assert (=> tb!215301 m!4257531))

(assert (=> b!3762764 t!303984))

(declare-fun b_and!279491 () Bool)

(assert (= b_and!279461 (and (=> t!303984 result!262954) b_and!279491)))

(declare-fun t!303986 () Bool)

(declare-fun tb!215303 () Bool)

(assert (=> (and b!3762367 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) t!303986) tb!215303))

(declare-fun result!262956 () Bool)

(assert (= result!262956 result!262954))

(assert (=> b!3762764 t!303986))

(declare-fun b_and!279493 () Bool)

(assert (= b_and!279467 (and (=> t!303986 result!262956) b_and!279493)))

(declare-fun t!303988 () Bool)

(declare-fun tb!215305 () Bool)

(assert (=> (and b!3762403 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) t!303988) tb!215305))

(declare-fun result!262958 () Bool)

(assert (= result!262958 result!262954))

(assert (=> b!3762764 t!303988))

(declare-fun b_and!279495 () Bool)

(assert (= b_and!279471 (and (=> t!303988 result!262958) b_and!279495)))

(declare-fun t!303990 () Bool)

(declare-fun tb!215307 () Bool)

(assert (=> (and b!3762408 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) t!303990) tb!215307))

(declare-fun result!262960 () Bool)

(assert (= result!262960 result!262954))

(assert (=> b!3762764 t!303990))

(declare-fun b_and!279497 () Bool)

(assert (= b_and!279475 (and (=> t!303990 result!262960) b_and!279497)))

(declare-fun m!4257533 () Bool)

(assert (=> d!1099380 m!4257533))

(declare-fun m!4257535 () Bool)

(assert (=> b!3762764 m!4257535))

(assert (=> b!3762764 m!4257535))

(declare-fun m!4257537 () Bool)

(assert (=> b!3762764 m!4257537))

(declare-fun m!4257539 () Bool)

(assert (=> b!3762765 m!4257539))

(assert (=> b!3762400 d!1099380))

(assert (=> b!3761969 d!1098976))

(assert (=> b!3761969 d!1098978))

(assert (=> b!3762083 d!1099348))

(declare-fun d!1099382 () Bool)

(declare-fun c!651635 () Bool)

(assert (=> d!1099382 (= c!651635 ((_ is Nil!40139) lt!1302185))))

(declare-fun e!2327186 () (InoxSet C!22308))

(assert (=> d!1099382 (= (content!5894 lt!1302185) e!2327186)))

(declare-fun b!3762767 () Bool)

(assert (=> b!3762767 (= e!2327186 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762768 () Bool)

(assert (=> b!3762768 (= e!2327186 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302185) true) (content!5894 (t!303912 lt!1302185))))))

(assert (= (and d!1099382 c!651635) b!3762767))

(assert (= (and d!1099382 (not c!651635)) b!3762768))

(declare-fun m!4257541 () Bool)

(assert (=> b!3762768 m!4257541))

(declare-fun m!4257543 () Bool)

(assert (=> b!3762768 m!4257543))

(assert (=> d!1099016 d!1099382))

(declare-fun d!1099384 () Bool)

(declare-fun c!651636 () Bool)

(assert (=> d!1099384 (= c!651636 ((_ is Nil!40139) (t!303912 lt!1302051)))))

(declare-fun e!2327187 () (InoxSet C!22308))

(assert (=> d!1099384 (= (content!5894 (t!303912 lt!1302051)) e!2327187)))

(declare-fun b!3762769 () Bool)

(assert (=> b!3762769 (= e!2327187 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762770 () Bool)

(assert (=> b!3762770 (= e!2327187 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (t!303912 lt!1302051)) true) (content!5894 (t!303912 (t!303912 lt!1302051)))))))

(assert (= (and d!1099384 c!651636) b!3762769))

(assert (= (and d!1099384 (not c!651636)) b!3762770))

(declare-fun m!4257545 () Bool)

(assert (=> b!3762770 m!4257545))

(assert (=> b!3762770 m!4257465))

(assert (=> d!1099016 d!1099384))

(assert (=> d!1099016 d!1098962))

(assert (=> d!1098994 d!1099320))

(assert (=> d!1098994 d!1099102))

(declare-fun b!3762773 () Bool)

(declare-fun res!1523599 () Bool)

(declare-fun e!2327188 () Bool)

(assert (=> b!3762773 (=> (not res!1523599) (not e!2327188))))

(declare-fun lt!1302287 () List!40263)

(assert (=> b!3762773 (= res!1523599 (= (size!30213 lt!1302287) (+ (size!30213 (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) lt!1302197)) (size!30213 lt!1302199))))))

(declare-fun d!1099386 () Bool)

(assert (=> d!1099386 e!2327188))

(declare-fun res!1523598 () Bool)

(assert (=> d!1099386 (=> (not res!1523598) (not e!2327188))))

(assert (=> d!1099386 (= res!1523598 (= (content!5894 lt!1302287) ((_ map or) (content!5894 (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) lt!1302197)) (content!5894 lt!1302199))))))

(declare-fun e!2327189 () List!40263)

(assert (=> d!1099386 (= lt!1302287 e!2327189)))

(declare-fun c!651637 () Bool)

(assert (=> d!1099386 (= c!651637 ((_ is Nil!40139) (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) lt!1302197)))))

(assert (=> d!1099386 (= (++!9954 (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) lt!1302197) lt!1302199) lt!1302287)))

(declare-fun b!3762771 () Bool)

(assert (=> b!3762771 (= e!2327189 lt!1302199)))

(declare-fun b!3762772 () Bool)

(assert (=> b!3762772 (= e!2327189 (Cons!40139 (h!45559 (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) lt!1302197)) (++!9954 (t!303912 (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) lt!1302197)) lt!1302199)))))

(declare-fun b!3762774 () Bool)

(assert (=> b!3762774 (= e!2327188 (or (not (= lt!1302199 Nil!40139)) (= lt!1302287 (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) lt!1302197))))))

(assert (= (and d!1099386 c!651637) b!3762771))

(assert (= (and d!1099386 (not c!651637)) b!3762772))

(assert (= (and d!1099386 res!1523598) b!3762773))

(assert (= (and b!3762773 res!1523599) b!3762774))

(declare-fun m!4257547 () Bool)

(assert (=> b!3762773 m!4257547))

(assert (=> b!3762773 m!4256609))

(declare-fun m!4257549 () Bool)

(assert (=> b!3762773 m!4257549))

(declare-fun m!4257551 () Bool)

(assert (=> b!3762773 m!4257551))

(declare-fun m!4257553 () Bool)

(assert (=> d!1099386 m!4257553))

(assert (=> d!1099386 m!4256609))

(declare-fun m!4257555 () Bool)

(assert (=> d!1099386 m!4257555))

(declare-fun m!4257557 () Bool)

(assert (=> d!1099386 m!4257557))

(declare-fun m!4257559 () Bool)

(assert (=> b!3762772 m!4257559))

(assert (=> b!3762221 d!1099386))

(declare-fun d!1099388 () Bool)

(declare-fun lt!1302288 () BalanceConc!24190)

(assert (=> d!1099388 (= (list!14816 lt!1302288) (originalCharacters!6756 (h!45561 (t!303914 (t!303914 lt!1302052)))))))

(assert (=> d!1099388 (= lt!1302288 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 lt!1302052)))))) (value!196053 (h!45561 (t!303914 (t!303914 lt!1302052))))))))

(assert (=> d!1099388 (= (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052)))) lt!1302288)))

(declare-fun b_lambda!110417 () Bool)

(assert (=> (not b_lambda!110417) (not d!1099388)))

(declare-fun t!303992 () Bool)

(declare-fun tb!215309 () Bool)

(assert (=> (and b!3761985 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 lt!1302052))))))) t!303992) tb!215309))

(declare-fun b!3762775 () Bool)

(declare-fun e!2327190 () Bool)

(declare-fun tp!1149698 () Bool)

(assert (=> b!3762775 (= e!2327190 (and (inv!53851 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 lt!1302052)))))) (value!196053 (h!45561 (t!303914 (t!303914 lt!1302052))))))) tp!1149698))))

(declare-fun result!262962 () Bool)

(assert (=> tb!215309 (= result!262962 (and (inv!53852 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 lt!1302052)))))) (value!196053 (h!45561 (t!303914 (t!303914 lt!1302052)))))) e!2327190))))

(assert (= tb!215309 b!3762775))

(declare-fun m!4257561 () Bool)

(assert (=> b!3762775 m!4257561))

(declare-fun m!4257563 () Bool)

(assert (=> tb!215309 m!4257563))

(assert (=> d!1099388 t!303992))

(declare-fun b_and!279499 () Bool)

(assert (= b_and!279491 (and (=> t!303992 result!262962) b_and!279499)))

(declare-fun t!303994 () Bool)

(declare-fun tb!215311 () Bool)

(assert (=> (and b!3762367 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 lt!1302052))))))) t!303994) tb!215311))

(declare-fun result!262964 () Bool)

(assert (= result!262964 result!262962))

(assert (=> d!1099388 t!303994))

(declare-fun b_and!279501 () Bool)

(assert (= b_and!279493 (and (=> t!303994 result!262964) b_and!279501)))

(declare-fun tb!215313 () Bool)

(declare-fun t!303996 () Bool)

(assert (=> (and b!3762403 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 lt!1302052))))))) t!303996) tb!215313))

(declare-fun result!262966 () Bool)

(assert (= result!262966 result!262962))

(assert (=> d!1099388 t!303996))

(declare-fun b_and!279503 () Bool)

(assert (= b_and!279495 (and (=> t!303996 result!262966) b_and!279503)))

(declare-fun tb!215315 () Bool)

(declare-fun t!303998 () Bool)

(assert (=> (and b!3762408 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 lt!1302052))))))) t!303998) tb!215315))

(declare-fun result!262968 () Bool)

(assert (= result!262968 result!262962))

(assert (=> d!1099388 t!303998))

(declare-fun b_and!279505 () Bool)

(assert (= b_and!279497 (and (=> t!303998 result!262968) b_and!279505)))

(declare-fun m!4257565 () Bool)

(assert (=> d!1099388 m!4257565))

(declare-fun m!4257567 () Bool)

(assert (=> d!1099388 m!4257567))

(assert (=> b!3762221 d!1099388))

(declare-fun b!3762778 () Bool)

(declare-fun res!1523601 () Bool)

(declare-fun e!2327191 () Bool)

(assert (=> b!3762778 (=> (not res!1523601) (not e!2327191))))

(declare-fun lt!1302289 () List!40263)

(assert (=> b!3762778 (= res!1523601 (= (size!30213 lt!1302289) (+ (size!30213 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (size!30213 (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052)))))))))))

(declare-fun d!1099390 () Bool)

(assert (=> d!1099390 e!2327191))

(declare-fun res!1523600 () Bool)

(assert (=> d!1099390 (=> (not res!1523600) (not e!2327191))))

(assert (=> d!1099390 (= res!1523600 (= (content!5894 lt!1302289) ((_ map or) (content!5894 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (content!5894 (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052)))))))))))

(declare-fun e!2327192 () List!40263)

(assert (=> d!1099390 (= lt!1302289 e!2327192)))

(declare-fun c!651638 () Bool)

(assert (=> d!1099390 (= c!651638 ((_ is Nil!40139) (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))))))

(assert (=> d!1099390 (= (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052)))))) lt!1302289)))

(declare-fun b!3762776 () Bool)

(assert (=> b!3762776 (= e!2327192 (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052))))))))

(declare-fun b!3762777 () Bool)

(assert (=> b!3762777 (= e!2327192 (Cons!40139 (h!45559 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (++!9954 (t!303912 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052))))))))))

(declare-fun b!3762779 () Bool)

(assert (=> b!3762779 (= e!2327191 (or (not (= (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052))))) Nil!40139)) (= lt!1302289 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))))

(assert (= (and d!1099390 c!651638) b!3762776))

(assert (= (and d!1099390 (not c!651638)) b!3762777))

(assert (= (and d!1099390 res!1523600) b!3762778))

(assert (= (and b!3762778 res!1523601) b!3762779))

(declare-fun m!4257569 () Bool)

(assert (=> b!3762778 m!4257569))

(assert (=> b!3762778 m!4255965))

(declare-fun m!4257571 () Bool)

(assert (=> b!3762778 m!4257571))

(assert (=> b!3762778 m!4256573))

(declare-fun m!4257573 () Bool)

(assert (=> b!3762778 m!4257573))

(declare-fun m!4257575 () Bool)

(assert (=> d!1099390 m!4257575))

(assert (=> d!1099390 m!4255965))

(declare-fun m!4257577 () Bool)

(assert (=> d!1099390 m!4257577))

(assert (=> d!1099390 m!4256573))

(declare-fun m!4257579 () Bool)

(assert (=> d!1099390 m!4257579))

(assert (=> b!3762777 m!4256573))

(declare-fun m!4257581 () Bool)

(assert (=> b!3762777 m!4257581))

(assert (=> b!3762221 d!1099390))

(declare-fun b!3762782 () Bool)

(declare-fun res!1523603 () Bool)

(declare-fun e!2327193 () Bool)

(assert (=> b!3762782 (=> (not res!1523603) (not e!2327193))))

(declare-fun lt!1302290 () List!40263)

(assert (=> b!3762782 (= res!1523603 (= (size!30213 lt!1302290) (+ (size!30213 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (size!30213 lt!1302197))))))

(declare-fun d!1099392 () Bool)

(assert (=> d!1099392 e!2327193))

(declare-fun res!1523602 () Bool)

(assert (=> d!1099392 (=> (not res!1523602) (not e!2327193))))

(assert (=> d!1099392 (= res!1523602 (= (content!5894 lt!1302290) ((_ map or) (content!5894 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (content!5894 lt!1302197))))))

(declare-fun e!2327194 () List!40263)

(assert (=> d!1099392 (= lt!1302290 e!2327194)))

(declare-fun c!651639 () Bool)

(assert (=> d!1099392 (= c!651639 ((_ is Nil!40139) (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))))))

(assert (=> d!1099392 (= (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) lt!1302197) lt!1302290)))

(declare-fun b!3762780 () Bool)

(assert (=> b!3762780 (= e!2327194 lt!1302197)))

(declare-fun b!3762781 () Bool)

(assert (=> b!3762781 (= e!2327194 (Cons!40139 (h!45559 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (++!9954 (t!303912 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) lt!1302197)))))

(declare-fun b!3762783 () Bool)

(assert (=> b!3762783 (= e!2327193 (or (not (= lt!1302197 Nil!40139)) (= lt!1302290 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))))

(assert (= (and d!1099392 c!651639) b!3762780))

(assert (= (and d!1099392 (not c!651639)) b!3762781))

(assert (= (and d!1099392 res!1523602) b!3762782))

(assert (= (and b!3762782 res!1523603) b!3762783))

(declare-fun m!4257583 () Bool)

(assert (=> b!3762782 m!4257583))

(assert (=> b!3762782 m!4255965))

(assert (=> b!3762782 m!4257571))

(declare-fun m!4257585 () Bool)

(assert (=> b!3762782 m!4257585))

(declare-fun m!4257587 () Bool)

(assert (=> d!1099392 m!4257587))

(assert (=> d!1099392 m!4255965))

(assert (=> d!1099392 m!4257577))

(declare-fun m!4257589 () Bool)

(assert (=> d!1099392 m!4257589))

(declare-fun m!4257591 () Bool)

(assert (=> b!3762781 m!4257591))

(assert (=> b!3762221 d!1099392))

(declare-fun d!1099394 () Bool)

(assert (=> d!1099394 (= (++!9954 (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) lt!1302197) lt!1302199) (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (++!9954 lt!1302197 lt!1302199)))))

(declare-fun lt!1302291 () Unit!57864)

(assert (=> d!1099394 (= lt!1302291 (choose!22287 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) lt!1302197 lt!1302199))))

(assert (=> d!1099394 (= (lemmaConcatAssociativity!2104 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) lt!1302197 lt!1302199) lt!1302291)))

(declare-fun bs!575865 () Bool)

(assert (= bs!575865 d!1099394))

(assert (=> bs!575865 m!4255965))

(assert (=> bs!575865 m!4256609))

(assert (=> bs!575865 m!4255965))

(assert (=> bs!575865 m!4256617))

(assert (=> bs!575865 m!4256619))

(assert (=> bs!575865 m!4255965))

(declare-fun m!4257593 () Bool)

(assert (=> bs!575865 m!4257593))

(assert (=> bs!575865 m!4256617))

(assert (=> bs!575865 m!4256609))

(assert (=> bs!575865 m!4256611))

(assert (=> b!3762221 d!1099394))

(declare-fun b!3762786 () Bool)

(declare-fun res!1523605 () Bool)

(declare-fun e!2327195 () Bool)

(assert (=> b!3762786 (=> (not res!1523605) (not e!2327195))))

(declare-fun lt!1302292 () List!40263)

(assert (=> b!3762786 (= res!1523605 (= (size!30213 lt!1302292) (+ (size!30213 lt!1302197) (size!30213 lt!1302199))))))

(declare-fun d!1099396 () Bool)

(assert (=> d!1099396 e!2327195))

(declare-fun res!1523604 () Bool)

(assert (=> d!1099396 (=> (not res!1523604) (not e!2327195))))

(assert (=> d!1099396 (= res!1523604 (= (content!5894 lt!1302292) ((_ map or) (content!5894 lt!1302197) (content!5894 lt!1302199))))))

(declare-fun e!2327196 () List!40263)

(assert (=> d!1099396 (= lt!1302292 e!2327196)))

(declare-fun c!651640 () Bool)

(assert (=> d!1099396 (= c!651640 ((_ is Nil!40139) lt!1302197))))

(assert (=> d!1099396 (= (++!9954 lt!1302197 lt!1302199) lt!1302292)))

(declare-fun b!3762784 () Bool)

(assert (=> b!3762784 (= e!2327196 lt!1302199)))

(declare-fun b!3762785 () Bool)

(assert (=> b!3762785 (= e!2327196 (Cons!40139 (h!45559 lt!1302197) (++!9954 (t!303912 lt!1302197) lt!1302199)))))

(declare-fun b!3762787 () Bool)

(assert (=> b!3762787 (= e!2327195 (or (not (= lt!1302199 Nil!40139)) (= lt!1302292 lt!1302197)))))

(assert (= (and d!1099396 c!651640) b!3762784))

(assert (= (and d!1099396 (not c!651640)) b!3762785))

(assert (= (and d!1099396 res!1523604) b!3762786))

(assert (= (and b!3762786 res!1523605) b!3762787))

(declare-fun m!4257595 () Bool)

(assert (=> b!3762786 m!4257595))

(assert (=> b!3762786 m!4257585))

(assert (=> b!3762786 m!4257551))

(declare-fun m!4257597 () Bool)

(assert (=> d!1099396 m!4257597))

(assert (=> d!1099396 m!4257589))

(assert (=> d!1099396 m!4257557))

(declare-fun m!4257599 () Bool)

(assert (=> b!3762785 m!4257599))

(assert (=> b!3762221 d!1099396))

(declare-fun b!3762790 () Bool)

(declare-fun res!1523607 () Bool)

(declare-fun e!2327197 () Bool)

(assert (=> b!3762790 (=> (not res!1523607) (not e!2327197))))

(declare-fun lt!1302293 () List!40263)

(assert (=> b!3762790 (= res!1523607 (= (size!30213 lt!1302293) (+ (size!30213 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (size!30213 (++!9954 lt!1302197 lt!1302199)))))))

(declare-fun d!1099398 () Bool)

(assert (=> d!1099398 e!2327197))

(declare-fun res!1523606 () Bool)

(assert (=> d!1099398 (=> (not res!1523606) (not e!2327197))))

(assert (=> d!1099398 (= res!1523606 (= (content!5894 lt!1302293) ((_ map or) (content!5894 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (content!5894 (++!9954 lt!1302197 lt!1302199)))))))

(declare-fun e!2327198 () List!40263)

(assert (=> d!1099398 (= lt!1302293 e!2327198)))

(declare-fun c!651641 () Bool)

(assert (=> d!1099398 (= c!651641 ((_ is Nil!40139) (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))))))

(assert (=> d!1099398 (= (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (++!9954 lt!1302197 lt!1302199)) lt!1302293)))

(declare-fun b!3762788 () Bool)

(assert (=> b!3762788 (= e!2327198 (++!9954 lt!1302197 lt!1302199))))

(declare-fun b!3762789 () Bool)

(assert (=> b!3762789 (= e!2327198 (Cons!40139 (h!45559 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (++!9954 (t!303912 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (++!9954 lt!1302197 lt!1302199))))))

(declare-fun b!3762791 () Bool)

(assert (=> b!3762791 (= e!2327197 (or (not (= (++!9954 lt!1302197 lt!1302199) Nil!40139)) (= lt!1302293 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))))

(assert (= (and d!1099398 c!651641) b!3762788))

(assert (= (and d!1099398 (not c!651641)) b!3762789))

(assert (= (and d!1099398 res!1523606) b!3762790))

(assert (= (and b!3762790 res!1523607) b!3762791))

(declare-fun m!4257601 () Bool)

(assert (=> b!3762790 m!4257601))

(assert (=> b!3762790 m!4255965))

(assert (=> b!3762790 m!4257571))

(assert (=> b!3762790 m!4256617))

(declare-fun m!4257603 () Bool)

(assert (=> b!3762790 m!4257603))

(declare-fun m!4257605 () Bool)

(assert (=> d!1099398 m!4257605))

(assert (=> d!1099398 m!4255965))

(assert (=> d!1099398 m!4257577))

(assert (=> d!1099398 m!4256617))

(declare-fun m!4257607 () Bool)

(assert (=> d!1099398 m!4257607))

(assert (=> b!3762789 m!4256617))

(declare-fun m!4257609 () Bool)

(assert (=> b!3762789 m!4257609))

(assert (=> b!3762221 d!1099398))

(declare-fun d!1099400 () Bool)

(assert (=> d!1099400 (= (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052))))) (list!14819 (c!651313 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052)))))))))

(declare-fun bs!575866 () Bool)

(assert (= bs!575866 d!1099400))

(declare-fun m!4257611 () Bool)

(assert (=> bs!575866 m!4257611))

(assert (=> b!3762221 d!1099400))

(declare-fun d!1099402 () Bool)

(declare-fun lt!1302298 () List!40263)

(assert (=> d!1099402 (= lt!1302298 (++!9954 (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052)))))) (printList!1661 thiss!13650 (t!303914 (t!303914 (t!303914 lt!1302052))))))))

(declare-fun e!2327199 () List!40263)

(assert (=> d!1099402 (= lt!1302298 e!2327199)))

(declare-fun c!651642 () Bool)

(assert (=> d!1099402 (= c!651642 ((_ is Cons!40141) (t!303914 (t!303914 (t!303914 lt!1302052)))))))

(assert (=> d!1099402 (= (printListTailRec!746 thiss!13650 (t!303914 (t!303914 (t!303914 lt!1302052))) (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052))))))) lt!1302298)))

(declare-fun b!3762792 () Bool)

(assert (=> b!3762792 (= e!2327199 (printListTailRec!746 thiss!13650 (t!303914 (t!303914 (t!303914 (t!303914 lt!1302052)))) (++!9954 (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052)))))) (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 (t!303914 lt!1302052)))))))))))

(declare-fun lt!1302295 () List!40263)

(assert (=> b!3762792 (= lt!1302295 (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 (t!303914 lt!1302052)))))))))

(declare-fun lt!1302297 () List!40263)

(assert (=> b!3762792 (= lt!1302297 (printList!1661 thiss!13650 (t!303914 (t!303914 (t!303914 (t!303914 lt!1302052))))))))

(declare-fun lt!1302296 () Unit!57864)

(assert (=> b!3762792 (= lt!1302296 (lemmaConcatAssociativity!2104 (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052)))))) lt!1302295 lt!1302297))))

(assert (=> b!3762792 (= (++!9954 (++!9954 (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052)))))) lt!1302295) lt!1302297) (++!9954 (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052)))))) (++!9954 lt!1302295 lt!1302297)))))

(declare-fun lt!1302294 () Unit!57864)

(assert (=> b!3762792 (= lt!1302294 lt!1302296)))

(declare-fun b!3762793 () Bool)

(assert (=> b!3762793 (= e!2327199 (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052)))))))))

(assert (= (and d!1099402 c!651642) b!3762792))

(assert (= (and d!1099402 (not c!651642)) b!3762793))

(assert (=> d!1099402 m!4256575))

(assert (=> d!1099402 m!4256613))

(assert (=> d!1099402 m!4256575))

(declare-fun m!4257613 () Bool)

(assert (=> d!1099402 m!4257613))

(declare-fun m!4257615 () Bool)

(assert (=> b!3762792 m!4257615))

(declare-fun m!4257617 () Bool)

(assert (=> b!3762792 m!4257617))

(declare-fun m!4257619 () Bool)

(assert (=> b!3762792 m!4257619))

(declare-fun m!4257621 () Bool)

(assert (=> b!3762792 m!4257621))

(assert (=> b!3762792 m!4256613))

(assert (=> b!3762792 m!4257617))

(declare-fun m!4257623 () Bool)

(assert (=> b!3762792 m!4257623))

(assert (=> b!3762792 m!4256613))

(declare-fun m!4257625 () Bool)

(assert (=> b!3762792 m!4257625))

(assert (=> b!3762792 m!4256613))

(declare-fun m!4257627 () Bool)

(assert (=> b!3762792 m!4257627))

(declare-fun m!4257629 () Bool)

(assert (=> b!3762792 m!4257629))

(assert (=> b!3762792 m!4257627))

(assert (=> b!3762792 m!4257623))

(declare-fun m!4257631 () Bool)

(assert (=> b!3762792 m!4257631))

(declare-fun m!4257633 () Bool)

(assert (=> b!3762792 m!4257633))

(assert (=> b!3762792 m!4257615))

(assert (=> b!3762792 m!4256613))

(assert (=> b!3762792 m!4257619))

(assert (=> b!3762221 d!1099402))

(declare-fun d!1099404 () Bool)

(declare-fun c!651643 () Bool)

(assert (=> d!1099404 (= c!651643 ((_ is Cons!40141) (t!303914 (t!303914 (t!303914 lt!1302052)))))))

(declare-fun e!2327200 () List!40263)

(assert (=> d!1099404 (= (printList!1661 thiss!13650 (t!303914 (t!303914 (t!303914 lt!1302052)))) e!2327200)))

(declare-fun b!3762794 () Bool)

(assert (=> b!3762794 (= e!2327200 (++!9954 (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 (t!303914 lt!1302052)))))) (printList!1661 thiss!13650 (t!303914 (t!303914 (t!303914 (t!303914 lt!1302052)))))))))

(declare-fun b!3762795 () Bool)

(assert (=> b!3762795 (= e!2327200 Nil!40139)))

(assert (= (and d!1099404 c!651643) b!3762794))

(assert (= (and d!1099404 (not c!651643)) b!3762795))

(assert (=> b!3762794 m!4257615))

(assert (=> b!3762794 m!4257615))

(assert (=> b!3762794 m!4257617))

(assert (=> b!3762794 m!4257633))

(assert (=> b!3762794 m!4257617))

(assert (=> b!3762794 m!4257633))

(declare-fun m!4257635 () Bool)

(assert (=> b!3762794 m!4257635))

(assert (=> b!3762221 d!1099404))

(declare-fun d!1099406 () Bool)

(declare-fun res!1523608 () Bool)

(declare-fun e!2327201 () Bool)

(assert (=> d!1099406 (=> (not res!1523608) (not e!2327201))))

(assert (=> d!1099406 (= res!1523608 (= (csize!24826 (right!31403 (left!31073 (c!651313 acc!400)))) (+ (size!30214 (left!31073 (right!31403 (left!31073 (c!651313 acc!400))))) (size!30214 (right!31403 (right!31403 (left!31073 (c!651313 acc!400))))))))))

(assert (=> d!1099406 (= (inv!53859 (right!31403 (left!31073 (c!651313 acc!400)))) e!2327201)))

(declare-fun b!3762796 () Bool)

(declare-fun res!1523609 () Bool)

(assert (=> b!3762796 (=> (not res!1523609) (not e!2327201))))

(assert (=> b!3762796 (= res!1523609 (and (not (= (left!31073 (right!31403 (left!31073 (c!651313 acc!400)))) Empty!12298)) (not (= (right!31403 (right!31403 (left!31073 (c!651313 acc!400)))) Empty!12298))))))

(declare-fun b!3762797 () Bool)

(declare-fun res!1523610 () Bool)

(assert (=> b!3762797 (=> (not res!1523610) (not e!2327201))))

(assert (=> b!3762797 (= res!1523610 (= (cheight!12509 (right!31403 (left!31073 (c!651313 acc!400)))) (+ (max!0 (height!1755 (left!31073 (right!31403 (left!31073 (c!651313 acc!400))))) (height!1755 (right!31403 (right!31403 (left!31073 (c!651313 acc!400)))))) 1)))))

(declare-fun b!3762798 () Bool)

(assert (=> b!3762798 (= e!2327201 (<= 0 (cheight!12509 (right!31403 (left!31073 (c!651313 acc!400))))))))

(assert (= (and d!1099406 res!1523608) b!3762796))

(assert (= (and b!3762796 res!1523609) b!3762797))

(assert (= (and b!3762797 res!1523610) b!3762798))

(declare-fun m!4257637 () Bool)

(assert (=> d!1099406 m!4257637))

(declare-fun m!4257639 () Bool)

(assert (=> d!1099406 m!4257639))

(declare-fun m!4257641 () Bool)

(assert (=> b!3762797 m!4257641))

(declare-fun m!4257643 () Bool)

(assert (=> b!3762797 m!4257643))

(assert (=> b!3762797 m!4257641))

(assert (=> b!3762797 m!4257643))

(declare-fun m!4257645 () Bool)

(assert (=> b!3762797 m!4257645))

(assert (=> b!3762228 d!1099406))

(declare-fun b!3762801 () Bool)

(declare-fun res!1523612 () Bool)

(declare-fun e!2327202 () Bool)

(assert (=> b!3762801 (=> (not res!1523612) (not e!2327202))))

(declare-fun lt!1302299 () List!40263)

(assert (=> b!3762801 (= res!1523612 (= (size!30213 lt!1302299) (+ (size!30213 (t!303912 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (size!30213 (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))))))))

(declare-fun d!1099408 () Bool)

(assert (=> d!1099408 e!2327202))

(declare-fun res!1523611 () Bool)

(assert (=> d!1099408 (=> (not res!1523611) (not e!2327202))))

(assert (=> d!1099408 (= res!1523611 (= (content!5894 lt!1302299) ((_ map or) (content!5894 (t!303912 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (content!5894 (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))))))))

(declare-fun e!2327203 () List!40263)

(assert (=> d!1099408 (= lt!1302299 e!2327203)))

(declare-fun c!651644 () Bool)

(assert (=> d!1099408 (= c!651644 ((_ is Nil!40139) (t!303912 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))))))

(assert (=> d!1099408 (= (++!9954 (t!303912 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))) lt!1302299)))

(declare-fun b!3762799 () Bool)

(assert (=> b!3762799 (= e!2327203 (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052))))))

(declare-fun b!3762800 () Bool)

(assert (=> b!3762800 (= e!2327203 (Cons!40139 (h!45559 (t!303912 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (++!9954 (t!303912 (t!303912 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052))))))))

(declare-fun b!3762802 () Bool)

(assert (=> b!3762802 (= e!2327202 (or (not (= (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052))) Nil!40139)) (= lt!1302299 (t!303912 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))))

(assert (= (and d!1099408 c!651644) b!3762799))

(assert (= (and d!1099408 (not c!651644)) b!3762800))

(assert (= (and d!1099408 res!1523611) b!3762801))

(assert (= (and b!3762801 res!1523612) b!3762802))

(declare-fun m!4257647 () Bool)

(assert (=> b!3762801 m!4257647))

(declare-fun m!4257649 () Bool)

(assert (=> b!3762801 m!4257649))

(assert (=> b!3762801 m!4255935))

(assert (=> b!3762801 m!4256803))

(declare-fun m!4257651 () Bool)

(assert (=> d!1099408 m!4257651))

(declare-fun m!4257653 () Bool)

(assert (=> d!1099408 m!4257653))

(assert (=> d!1099408 m!4255935))

(assert (=> d!1099408 m!4256807))

(assert (=> b!3762800 m!4255935))

(declare-fun m!4257655 () Bool)

(assert (=> b!3762800 m!4257655))

(assert (=> b!3762330 d!1099408))

(declare-fun d!1099410 () Bool)

(assert (=> d!1099410 (= (inv!53863 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))) (<= (size!30210 (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347)))))) 2147483647))))

(declare-fun bs!575867 () Bool)

(assert (= bs!575867 d!1099410))

(declare-fun m!4257657 () Bool)

(assert (=> bs!575867 m!4257657))

(assert (=> b!3762373 d!1099410))

(declare-fun d!1099412 () Bool)

(declare-fun c!651645 () Bool)

(assert (=> d!1099412 (= c!651645 ((_ is Node!12298) (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))) (value!196053 (h!45561 (t!303914 lt!1302052)))))))))

(declare-fun e!2327204 () Bool)

(assert (=> d!1099412 (= (inv!53851 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))) (value!196053 (h!45561 (t!303914 lt!1302052)))))) e!2327204)))

(declare-fun b!3762803 () Bool)

(assert (=> b!3762803 (= e!2327204 (inv!53859 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))) (value!196053 (h!45561 (t!303914 lt!1302052)))))))))

(declare-fun b!3762804 () Bool)

(declare-fun e!2327205 () Bool)

(assert (=> b!3762804 (= e!2327204 e!2327205)))

(declare-fun res!1523613 () Bool)

(assert (=> b!3762804 (= res!1523613 (not ((_ is Leaf!19074) (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))) (value!196053 (h!45561 (t!303914 lt!1302052))))))))))

(assert (=> b!3762804 (=> res!1523613 e!2327205)))

(declare-fun b!3762805 () Bool)

(assert (=> b!3762805 (= e!2327205 (inv!53860 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))) (value!196053 (h!45561 (t!303914 lt!1302052)))))))))

(assert (= (and d!1099412 c!651645) b!3762803))

(assert (= (and d!1099412 (not c!651645)) b!3762804))

(assert (= (and b!3762804 (not res!1523613)) b!3762805))

(declare-fun m!4257659 () Bool)

(assert (=> b!3762803 m!4257659))

(declare-fun m!4257661 () Bool)

(assert (=> b!3762805 m!4257661))

(assert (=> b!3762208 d!1099412))

(declare-fun b!3762808 () Bool)

(declare-fun res!1523615 () Bool)

(declare-fun e!2327207 () Bool)

(assert (=> b!3762808 (=> (not res!1523615) (not e!2327207))))

(declare-fun lt!1302300 () List!40265)

(assert (=> b!3762808 (= res!1523615 (= (size!30210 lt!1302300) (+ (size!30210 (list!14820 (left!31074 (left!31074 (c!651315 v!6347))))) (size!30210 (list!14820 (right!31404 (left!31074 (c!651315 v!6347))))))))))

(declare-fun b!3762809 () Bool)

(assert (=> b!3762809 (= e!2327207 (or (not (= (list!14820 (right!31404 (left!31074 (c!651315 v!6347)))) Nil!40141)) (= lt!1302300 (list!14820 (left!31074 (left!31074 (c!651315 v!6347)))))))))

(declare-fun b!3762806 () Bool)

(declare-fun e!2327206 () List!40265)

(assert (=> b!3762806 (= e!2327206 (list!14820 (right!31404 (left!31074 (c!651315 v!6347)))))))

(declare-fun b!3762807 () Bool)

(assert (=> b!3762807 (= e!2327206 (Cons!40141 (h!45561 (list!14820 (left!31074 (left!31074 (c!651315 v!6347))))) (++!9955 (t!303914 (list!14820 (left!31074 (left!31074 (c!651315 v!6347))))) (list!14820 (right!31404 (left!31074 (c!651315 v!6347)))))))))

(declare-fun d!1099414 () Bool)

(assert (=> d!1099414 e!2327207))

(declare-fun res!1523614 () Bool)

(assert (=> d!1099414 (=> (not res!1523614) (not e!2327207))))

(assert (=> d!1099414 (= res!1523614 (= (content!5892 lt!1302300) ((_ map or) (content!5892 (list!14820 (left!31074 (left!31074 (c!651315 v!6347))))) (content!5892 (list!14820 (right!31404 (left!31074 (c!651315 v!6347))))))))))

(assert (=> d!1099414 (= lt!1302300 e!2327206)))

(declare-fun c!651646 () Bool)

(assert (=> d!1099414 (= c!651646 ((_ is Nil!40141) (list!14820 (left!31074 (left!31074 (c!651315 v!6347))))))))

(assert (=> d!1099414 (= (++!9955 (list!14820 (left!31074 (left!31074 (c!651315 v!6347)))) (list!14820 (right!31404 (left!31074 (c!651315 v!6347))))) lt!1302300)))

(assert (= (and d!1099414 c!651646) b!3762806))

(assert (= (and d!1099414 (not c!651646)) b!3762807))

(assert (= (and d!1099414 res!1523614) b!3762808))

(assert (= (and b!3762808 res!1523615) b!3762809))

(declare-fun m!4257663 () Bool)

(assert (=> b!3762808 m!4257663))

(assert (=> b!3762808 m!4256755))

(assert (=> b!3762808 m!4257375))

(assert (=> b!3762808 m!4256757))

(assert (=> b!3762808 m!4257377))

(assert (=> b!3762807 m!4256757))

(declare-fun m!4257665 () Bool)

(assert (=> b!3762807 m!4257665))

(declare-fun m!4257667 () Bool)

(assert (=> d!1099414 m!4257667))

(assert (=> d!1099414 m!4256755))

(declare-fun m!4257669 () Bool)

(assert (=> d!1099414 m!4257669))

(assert (=> d!1099414 m!4256757))

(declare-fun m!4257671 () Bool)

(assert (=> d!1099414 m!4257671))

(assert (=> b!3762306 d!1099414))

(declare-fun b!3762811 () Bool)

(declare-fun e!2327208 () List!40265)

(declare-fun e!2327209 () List!40265)

(assert (=> b!3762811 (= e!2327208 e!2327209)))

(declare-fun c!651648 () Bool)

(assert (=> b!3762811 (= c!651648 ((_ is Leaf!19075) (left!31074 (left!31074 (c!651315 v!6347)))))))

(declare-fun d!1099416 () Bool)

(declare-fun c!651647 () Bool)

(assert (=> d!1099416 (= c!651647 ((_ is Empty!12299) (left!31074 (left!31074 (c!651315 v!6347)))))))

(assert (=> d!1099416 (= (list!14820 (left!31074 (left!31074 (c!651315 v!6347)))) e!2327208)))

(declare-fun b!3762813 () Bool)

(assert (=> b!3762813 (= e!2327209 (++!9955 (list!14820 (left!31074 (left!31074 (left!31074 (c!651315 v!6347))))) (list!14820 (right!31404 (left!31074 (left!31074 (c!651315 v!6347)))))))))

(declare-fun b!3762810 () Bool)

(assert (=> b!3762810 (= e!2327208 Nil!40141)))

(declare-fun b!3762812 () Bool)

(assert (=> b!3762812 (= e!2327209 (list!14826 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))))

(assert (= (and d!1099416 c!651647) b!3762810))

(assert (= (and d!1099416 (not c!651647)) b!3762811))

(assert (= (and b!3762811 c!651648) b!3762812))

(assert (= (and b!3762811 (not c!651648)) b!3762813))

(declare-fun m!4257673 () Bool)

(assert (=> b!3762813 m!4257673))

(declare-fun m!4257675 () Bool)

(assert (=> b!3762813 m!4257675))

(assert (=> b!3762813 m!4257673))

(assert (=> b!3762813 m!4257675))

(declare-fun m!4257677 () Bool)

(assert (=> b!3762813 m!4257677))

(declare-fun m!4257679 () Bool)

(assert (=> b!3762812 m!4257679))

(assert (=> b!3762306 d!1099416))

(declare-fun b!3762815 () Bool)

(declare-fun e!2327210 () List!40265)

(declare-fun e!2327211 () List!40265)

(assert (=> b!3762815 (= e!2327210 e!2327211)))

(declare-fun c!651650 () Bool)

(assert (=> b!3762815 (= c!651650 ((_ is Leaf!19075) (right!31404 (left!31074 (c!651315 v!6347)))))))

(declare-fun d!1099418 () Bool)

(declare-fun c!651649 () Bool)

(assert (=> d!1099418 (= c!651649 ((_ is Empty!12299) (right!31404 (left!31074 (c!651315 v!6347)))))))

(assert (=> d!1099418 (= (list!14820 (right!31404 (left!31074 (c!651315 v!6347)))) e!2327210)))

(declare-fun b!3762817 () Bool)

(assert (=> b!3762817 (= e!2327211 (++!9955 (list!14820 (left!31074 (right!31404 (left!31074 (c!651315 v!6347))))) (list!14820 (right!31404 (right!31404 (left!31074 (c!651315 v!6347)))))))))

(declare-fun b!3762814 () Bool)

(assert (=> b!3762814 (= e!2327210 Nil!40141)))

(declare-fun b!3762816 () Bool)

(assert (=> b!3762816 (= e!2327211 (list!14826 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))))

(assert (= (and d!1099418 c!651649) b!3762814))

(assert (= (and d!1099418 (not c!651649)) b!3762815))

(assert (= (and b!3762815 c!651650) b!3762816))

(assert (= (and b!3762815 (not c!651650)) b!3762817))

(declare-fun m!4257681 () Bool)

(assert (=> b!3762817 m!4257681))

(declare-fun m!4257683 () Bool)

(assert (=> b!3762817 m!4257683))

(assert (=> b!3762817 m!4257681))

(assert (=> b!3762817 m!4257683))

(declare-fun m!4257685 () Bool)

(assert (=> b!3762817 m!4257685))

(declare-fun m!4257687 () Bool)

(assert (=> b!3762816 m!4257687))

(assert (=> b!3762306 d!1099418))

(declare-fun d!1099420 () Bool)

(declare-fun lt!1302301 () Int)

(assert (=> d!1099420 (>= lt!1302301 0)))

(declare-fun e!2327212 () Int)

(assert (=> d!1099420 (= lt!1302301 e!2327212)))

(declare-fun c!651651 () Bool)

(assert (=> d!1099420 (= c!651651 ((_ is Nil!40139) lt!1302157))))

(assert (=> d!1099420 (= (size!30213 lt!1302157) lt!1302301)))

(declare-fun b!3762818 () Bool)

(assert (=> b!3762818 (= e!2327212 0)))

(declare-fun b!3762819 () Bool)

(assert (=> b!3762819 (= e!2327212 (+ 1 (size!30213 (t!303912 lt!1302157))))))

(assert (= (and d!1099420 c!651651) b!3762818))

(assert (= (and d!1099420 (not c!651651)) b!3762819))

(declare-fun m!4257689 () Bool)

(assert (=> b!3762819 m!4257689))

(assert (=> b!3762063 d!1099420))

(assert (=> b!3762063 d!1099376))

(assert (=> b!3762063 d!1099062))

(declare-fun d!1099422 () Bool)

(assert (=> d!1099422 (= (inv!53865 (xs!15504 (left!31073 (right!31403 (c!651313 acc!400))))) (<= (size!30213 (innerList!12358 (xs!15504 (left!31073 (right!31403 (c!651313 acc!400)))))) 2147483647))))

(declare-fun bs!575868 () Bool)

(assert (= bs!575868 d!1099422))

(declare-fun m!4257691 () Bool)

(assert (=> bs!575868 m!4257691))

(assert (=> b!3762410 d!1099422))

(declare-fun d!1099424 () Bool)

(assert (=> d!1099424 (= (inv!53863 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))) (<= (size!30210 (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347)))))) 2147483647))))

(declare-fun bs!575869 () Bool)

(assert (= bs!575869 d!1099424))

(declare-fun m!4257693 () Bool)

(assert (=> bs!575869 m!4257693))

(assert (=> b!3762355 d!1099424))

(declare-fun d!1099426 () Bool)

(declare-fun c!651652 () Bool)

(assert (=> d!1099426 (= c!651652 ((_ is Nil!40141) lt!1302217))))

(declare-fun e!2327213 () (InoxSet Token!11450))

(assert (=> d!1099426 (= (content!5892 lt!1302217) e!2327213)))

(declare-fun b!3762820 () Bool)

(assert (=> b!3762820 (= e!2327213 ((as const (Array Token!11450 Bool)) false))))

(declare-fun b!3762821 () Bool)

(assert (=> b!3762821 (= e!2327213 ((_ map or) (store ((as const (Array Token!11450 Bool)) false) (h!45561 lt!1302217) true) (content!5892 (t!303914 lt!1302217))))))

(assert (= (and d!1099426 c!651652) b!3762820))

(assert (= (and d!1099426 (not c!651652)) b!3762821))

(declare-fun m!4257695 () Bool)

(assert (=> b!3762821 m!4257695))

(declare-fun m!4257697 () Bool)

(assert (=> b!3762821 m!4257697))

(assert (=> d!1099094 d!1099426))

(declare-fun d!1099428 () Bool)

(declare-fun c!651653 () Bool)

(assert (=> d!1099428 (= c!651653 ((_ is Nil!40141) (list!14820 (left!31074 (c!651315 v!6347)))))))

(declare-fun e!2327214 () (InoxSet Token!11450))

(assert (=> d!1099428 (= (content!5892 (list!14820 (left!31074 (c!651315 v!6347)))) e!2327214)))

(declare-fun b!3762822 () Bool)

(assert (=> b!3762822 (= e!2327214 ((as const (Array Token!11450 Bool)) false))))

(declare-fun b!3762823 () Bool)

(assert (=> b!3762823 (= e!2327214 ((_ map or) (store ((as const (Array Token!11450 Bool)) false) (h!45561 (list!14820 (left!31074 (c!651315 v!6347)))) true) (content!5892 (t!303914 (list!14820 (left!31074 (c!651315 v!6347)))))))))

(assert (= (and d!1099428 c!651653) b!3762822))

(assert (= (and d!1099428 (not c!651653)) b!3762823))

(declare-fun m!4257699 () Bool)

(assert (=> b!3762823 m!4257699))

(declare-fun m!4257701 () Bool)

(assert (=> b!3762823 m!4257701))

(assert (=> d!1099094 d!1099428))

(declare-fun d!1099430 () Bool)

(declare-fun c!651654 () Bool)

(assert (=> d!1099430 (= c!651654 ((_ is Nil!40141) (list!14820 (right!31404 (c!651315 v!6347)))))))

(declare-fun e!2327215 () (InoxSet Token!11450))

(assert (=> d!1099430 (= (content!5892 (list!14820 (right!31404 (c!651315 v!6347)))) e!2327215)))

(declare-fun b!3762824 () Bool)

(assert (=> b!3762824 (= e!2327215 ((as const (Array Token!11450 Bool)) false))))

(declare-fun b!3762825 () Bool)

(assert (=> b!3762825 (= e!2327215 ((_ map or) (store ((as const (Array Token!11450 Bool)) false) (h!45561 (list!14820 (right!31404 (c!651315 v!6347)))) true) (content!5892 (t!303914 (list!14820 (right!31404 (c!651315 v!6347)))))))))

(assert (= (and d!1099430 c!651654) b!3762824))

(assert (= (and d!1099430 (not c!651654)) b!3762825))

(declare-fun m!4257703 () Bool)

(assert (=> b!3762825 m!4257703))

(declare-fun m!4257705 () Bool)

(assert (=> b!3762825 m!4257705))

(assert (=> d!1099094 d!1099430))

(declare-fun d!1099432 () Bool)

(assert (=> d!1099432 (= (height!1755 (left!31073 (right!31403 (c!651313 acc!400)))) (ite ((_ is Empty!12298) (left!31073 (right!31403 (c!651313 acc!400)))) 0 (ite ((_ is Leaf!19074) (left!31073 (right!31403 (c!651313 acc!400)))) 1 (cheight!12509 (left!31073 (right!31403 (c!651313 acc!400)))))))))

(assert (=> b!3762107 d!1099432))

(declare-fun d!1099434 () Bool)

(assert (=> d!1099434 (= (height!1755 (right!31403 (right!31403 (c!651313 acc!400)))) (ite ((_ is Empty!12298) (right!31403 (right!31403 (c!651313 acc!400)))) 0 (ite ((_ is Leaf!19074) (right!31403 (right!31403 (c!651313 acc!400)))) 1 (cheight!12509 (right!31403 (right!31403 (c!651313 acc!400)))))))))

(assert (=> b!3762107 d!1099434))

(declare-fun d!1099436 () Bool)

(declare-fun lt!1302302 () Int)

(assert (=> d!1099436 (>= lt!1302302 0)))

(declare-fun e!2327216 () Int)

(assert (=> d!1099436 (= lt!1302302 e!2327216)))

(declare-fun c!651655 () Bool)

(assert (=> d!1099436 (= c!651655 ((_ is Nil!40141) (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))

(assert (=> d!1099436 (= (size!30210 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))) lt!1302302)))

(declare-fun b!3762826 () Bool)

(assert (=> b!3762826 (= e!2327216 0)))

(declare-fun b!3762827 () Bool)

(assert (=> b!3762827 (= e!2327216 (+ 1 (size!30210 (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))))

(assert (= (and d!1099436 c!651655) b!3762826))

(assert (= (and d!1099436 (not c!651655)) b!3762827))

(declare-fun m!4257707 () Bool)

(assert (=> b!3762827 m!4257707))

(assert (=> d!1098942 d!1099436))

(declare-fun d!1099438 () Bool)

(declare-fun lt!1302303 () Int)

(assert (=> d!1099438 (>= lt!1302303 0)))

(declare-fun e!2327217 () Int)

(assert (=> d!1099438 (= lt!1302303 e!2327217)))

(declare-fun c!651656 () Bool)

(assert (=> d!1099438 (= c!651656 ((_ is Nil!40139) lt!1302185))))

(assert (=> d!1099438 (= (size!30213 lt!1302185) lt!1302303)))

(declare-fun b!3762828 () Bool)

(assert (=> b!3762828 (= e!2327217 0)))

(declare-fun b!3762829 () Bool)

(assert (=> b!3762829 (= e!2327217 (+ 1 (size!30213 (t!303912 lt!1302185))))))

(assert (= (and d!1099438 c!651656) b!3762828))

(assert (= (and d!1099438 (not c!651656)) b!3762829))

(declare-fun m!4257709 () Bool)

(assert (=> b!3762829 m!4257709))

(assert (=> b!3762185 d!1099438))

(declare-fun d!1099440 () Bool)

(declare-fun lt!1302304 () Int)

(assert (=> d!1099440 (>= lt!1302304 0)))

(declare-fun e!2327218 () Int)

(assert (=> d!1099440 (= lt!1302304 e!2327218)))

(declare-fun c!651657 () Bool)

(assert (=> d!1099440 (= c!651657 ((_ is Nil!40139) (t!303912 lt!1302051)))))

(assert (=> d!1099440 (= (size!30213 (t!303912 lt!1302051)) lt!1302304)))

(declare-fun b!3762830 () Bool)

(assert (=> b!3762830 (= e!2327218 0)))

(declare-fun b!3762831 () Bool)

(assert (=> b!3762831 (= e!2327218 (+ 1 (size!30213 (t!303912 (t!303912 lt!1302051)))))))

(assert (= (and d!1099440 c!651657) b!3762830))

(assert (= (and d!1099440 (not c!651657)) b!3762831))

(assert (=> b!3762831 m!4257461))

(assert (=> b!3762185 d!1099440))

(assert (=> b!3762185 d!1098888))

(declare-fun d!1099442 () Bool)

(declare-fun lt!1302305 () Int)

(assert (=> d!1099442 (>= lt!1302305 0)))

(declare-fun e!2327219 () Int)

(assert (=> d!1099442 (= lt!1302305 e!2327219)))

(declare-fun c!651658 () Bool)

(assert (=> d!1099442 (= c!651658 ((_ is Nil!40141) (t!303914 (list!14820 (c!651315 v!6347)))))))

(assert (=> d!1099442 (= (size!30210 (t!303914 (list!14820 (c!651315 v!6347)))) lt!1302305)))

(declare-fun b!3762832 () Bool)

(assert (=> b!3762832 (= e!2327219 0)))

(declare-fun b!3762833 () Bool)

(assert (=> b!3762833 (= e!2327219 (+ 1 (size!30210 (t!303914 (t!303914 (list!14820 (c!651315 v!6347)))))))))

(assert (= (and d!1099442 c!651658) b!3762832))

(assert (= (and d!1099442 (not c!651658)) b!3762833))

(declare-fun m!4257711 () Bool)

(assert (=> b!3762833 m!4257711))

(assert (=> b!3762085 d!1099442))

(declare-fun b!3762836 () Bool)

(declare-fun res!1523617 () Bool)

(declare-fun e!2327220 () Bool)

(assert (=> b!3762836 (=> (not res!1523617) (not e!2327220))))

(declare-fun lt!1302306 () List!40263)

(assert (=> b!3762836 (= res!1523617 (= (size!30213 lt!1302306) (+ (size!30213 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (size!30213 (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))))))))

(declare-fun d!1099444 () Bool)

(assert (=> d!1099444 e!2327220))

(declare-fun res!1523616 () Bool)

(assert (=> d!1099444 (=> (not res!1523616) (not e!2327220))))

(assert (=> d!1099444 (= res!1523616 (= (content!5894 lt!1302306) ((_ map or) (content!5894 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (content!5894 (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))))))))

(declare-fun e!2327221 () List!40263)

(assert (=> d!1099444 (= lt!1302306 e!2327221)))

(declare-fun c!651659 () Bool)

(assert (=> d!1099444 (= c!651659 ((_ is Nil!40139) (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))))))

(assert (=> d!1099444 (= (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))) lt!1302306)))

(declare-fun b!3762834 () Bool)

(assert (=> b!3762834 (= e!2327221 (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052))))))

(declare-fun b!3762835 () Bool)

(assert (=> b!3762835 (= e!2327221 (Cons!40139 (h!45559 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (++!9954 (t!303912 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052))))))))

(declare-fun b!3762837 () Bool)

(assert (=> b!3762837 (= e!2327220 (or (not (= (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052))) Nil!40139)) (= lt!1302306 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))))

(assert (= (and d!1099444 c!651659) b!3762834))

(assert (= (and d!1099444 (not c!651659)) b!3762835))

(assert (= (and d!1099444 res!1523616) b!3762836))

(assert (= (and b!3762836 res!1523617) b!3762837))

(declare-fun m!4257713 () Bool)

(assert (=> b!3762836 m!4257713))

(assert (=> b!3762836 m!4255965))

(assert (=> b!3762836 m!4257571))

(assert (=> b!3762836 m!4255935))

(assert (=> b!3762836 m!4256803))

(declare-fun m!4257715 () Bool)

(assert (=> d!1099444 m!4257715))

(assert (=> d!1099444 m!4255965))

(assert (=> d!1099444 m!4257577))

(assert (=> d!1099444 m!4255935))

(assert (=> d!1099444 m!4256807))

(assert (=> b!3762835 m!4255935))

(declare-fun m!4257717 () Bool)

(assert (=> b!3762835 m!4257717))

(assert (=> d!1099050 d!1099444))

(assert (=> d!1099050 d!1099038))

(declare-fun d!1099446 () Bool)

(declare-fun c!651660 () Bool)

(assert (=> d!1099446 (= c!651660 ((_ is Nil!40139) lt!1302223))))

(declare-fun e!2327222 () (InoxSet C!22308))

(assert (=> d!1099446 (= (content!5894 lt!1302223) e!2327222)))

(declare-fun b!3762838 () Bool)

(assert (=> b!3762838 (= e!2327222 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762839 () Bool)

(assert (=> b!3762839 (= e!2327222 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302223) true) (content!5894 (t!303912 lt!1302223))))))

(assert (= (and d!1099446 c!651660) b!3762838))

(assert (= (and d!1099446 (not c!651660)) b!3762839))

(declare-fun m!4257719 () Bool)

(assert (=> b!3762839 m!4257719))

(declare-fun m!4257721 () Bool)

(assert (=> b!3762839 m!4257721))

(assert (=> d!1099112 d!1099446))

(assert (=> d!1099112 d!1099384))

(assert (=> d!1099112 d!1098894))

(declare-fun d!1099448 () Bool)

(declare-fun res!1523618 () Bool)

(declare-fun e!2327223 () Bool)

(assert (=> d!1099448 (=> (not res!1523618) (not e!2327223))))

(assert (=> d!1099448 (= res!1523618 (<= (size!30210 (list!14826 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347)))))) 512))))

(assert (=> d!1099448 (= (inv!53857 (left!31074 (left!31074 (c!651315 v!6347)))) e!2327223)))

(declare-fun b!3762840 () Bool)

(declare-fun res!1523619 () Bool)

(assert (=> b!3762840 (=> (not res!1523619) (not e!2327223))))

(assert (=> b!3762840 (= res!1523619 (= (csize!24829 (left!31074 (left!31074 (c!651315 v!6347)))) (size!30210 (list!14826 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))))))

(declare-fun b!3762841 () Bool)

(assert (=> b!3762841 (= e!2327223 (and (> (csize!24829 (left!31074 (left!31074 (c!651315 v!6347)))) 0) (<= (csize!24829 (left!31074 (left!31074 (c!651315 v!6347)))) 512)))))

(assert (= (and d!1099448 res!1523618) b!3762840))

(assert (= (and b!3762840 res!1523619) b!3762841))

(assert (=> d!1099448 m!4257679))

(assert (=> d!1099448 m!4257679))

(declare-fun m!4257723 () Bool)

(assert (=> d!1099448 m!4257723))

(assert (=> b!3762840 m!4257679))

(assert (=> b!3762840 m!4257679))

(assert (=> b!3762840 m!4257723))

(assert (=> b!3762283 d!1099448))

(declare-fun d!1099450 () Bool)

(declare-fun c!651661 () Bool)

(assert (=> d!1099450 (= c!651661 ((_ is Nil!40139) (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))

(declare-fun e!2327224 () (InoxSet C!22308))

(assert (=> d!1099450 (= (content!5894 (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) e!2327224)))

(declare-fun b!3762842 () Bool)

(assert (=> b!3762842 (= e!2327224 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762843 () Bool)

(assert (=> b!3762843 (= e!2327224 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) true) (content!5894 (t!303912 (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))))

(assert (= (and d!1099450 c!651661) b!3762842))

(assert (= (and d!1099450 (not c!651661)) b!3762843))

(declare-fun m!4257725 () Bool)

(assert (=> b!3762843 m!4257725))

(declare-fun m!4257727 () Bool)

(assert (=> b!3762843 m!4257727))

(assert (=> b!3762115 d!1099450))

(assert (=> b!3762122 d!1099354))

(declare-fun d!1099452 () Bool)

(declare-fun lt!1302307 () Int)

(assert (=> d!1099452 (>= lt!1302307 0)))

(declare-fun e!2327225 () Int)

(assert (=> d!1099452 (= lt!1302307 e!2327225)))

(declare-fun c!651662 () Bool)

(assert (=> d!1099452 (= c!651662 ((_ is Nil!40139) lt!1302207))))

(assert (=> d!1099452 (= (size!30213 lt!1302207) lt!1302307)))

(declare-fun b!3762844 () Bool)

(assert (=> b!3762844 (= e!2327225 0)))

(declare-fun b!3762845 () Bool)

(assert (=> b!3762845 (= e!2327225 (+ 1 (size!30213 (t!303912 lt!1302207))))))

(assert (= (and d!1099452 c!651662) b!3762844))

(assert (= (and d!1099452 (not c!651662)) b!3762845))

(declare-fun m!4257729 () Bool)

(assert (=> b!3762845 m!4257729))

(assert (=> b!3762265 d!1099452))

(assert (=> b!3762265 d!1099440))

(assert (=> b!3762265 d!1098926))

(assert (=> d!1099044 d!1099026))

(assert (=> d!1099044 d!1099032))

(assert (=> d!1099044 d!1099036))

(declare-fun d!1099454 () Bool)

(assert (=> d!1099454 (= (++!9954 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108) lt!1302110) (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (++!9954 lt!1302108 lt!1302110)))))

(assert (=> d!1099454 true))

(declare-fun _$52!2107 () Unit!57864)

(assert (=> d!1099454 (= (choose!22287 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108 lt!1302110) _$52!2107)))

(declare-fun bs!575870 () Bool)

(assert (= bs!575870 d!1099454))

(assert (=> bs!575870 m!4255707))

(assert (=> bs!575870 m!4255961))

(assert (=> bs!575870 m!4255961))

(assert (=> bs!575870 m!4255963))

(assert (=> bs!575870 m!4255969))

(assert (=> bs!575870 m!4255707))

(assert (=> bs!575870 m!4255969))

(assert (=> bs!575870 m!4255971))

(assert (=> d!1099044 d!1099454))

(assert (=> d!1099044 d!1099046))

(declare-fun d!1099456 () Bool)

(assert (=> d!1099456 (= (height!1754 (left!31074 (right!31404 (c!651315 v!6347)))) (ite ((_ is Empty!12299) (left!31074 (right!31404 (c!651315 v!6347)))) 0 (ite ((_ is Leaf!19075) (left!31074 (right!31404 (c!651315 v!6347)))) 1 (cheight!12510 (left!31074 (right!31404 (c!651315 v!6347)))))))))

(assert (=> b!3762024 d!1099456))

(declare-fun d!1099458 () Bool)

(assert (=> d!1099458 (= (height!1754 (right!31404 (right!31404 (c!651315 v!6347)))) (ite ((_ is Empty!12299) (right!31404 (right!31404 (c!651315 v!6347)))) 0 (ite ((_ is Leaf!19075) (right!31404 (right!31404 (c!651315 v!6347)))) 1 (cheight!12510 (right!31404 (right!31404 (c!651315 v!6347)))))))))

(assert (=> b!3762024 d!1099458))

(declare-fun d!1099460 () Bool)

(declare-fun c!651663 () Bool)

(assert (=> d!1099460 (= c!651663 ((_ is Nil!40139) (t!303912 (++!9954 lt!1302080 lt!1302082))))))

(declare-fun e!2327226 () (InoxSet C!22308))

(assert (=> d!1099460 (= (content!5894 (t!303912 (++!9954 lt!1302080 lt!1302082))) e!2327226)))

(declare-fun b!3762846 () Bool)

(assert (=> b!3762846 (= e!2327226 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762847 () Bool)

(assert (=> b!3762847 (= e!2327226 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (t!303912 (++!9954 lt!1302080 lt!1302082))) true) (content!5894 (t!303912 (t!303912 (++!9954 lt!1302080 lt!1302082))))))))

(assert (= (and d!1099460 c!651663) b!3762846))

(assert (= (and d!1099460 (not c!651663)) b!3762847))

(declare-fun m!4257731 () Bool)

(assert (=> b!3762847 m!4257731))

(declare-fun m!4257733 () Bool)

(assert (=> b!3762847 m!4257733))

(assert (=> b!3762004 d!1099460))

(declare-fun d!1099464 () Bool)

(declare-fun c!651665 () Bool)

(assert (=> d!1099464 (= c!651665 ((_ is IntegerValue!19158) (value!196053 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))))

(declare-fun e!2327228 () Bool)

(assert (=> d!1099464 (= (inv!21 (value!196053 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) e!2327228)))

(declare-fun b!3762848 () Bool)

(assert (=> b!3762848 (= e!2327228 (inv!16 (value!196053 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))))

(declare-fun b!3762849 () Bool)

(declare-fun res!1523620 () Bool)

(declare-fun e!2327229 () Bool)

(assert (=> b!3762849 (=> res!1523620 e!2327229)))

(assert (=> b!3762849 (= res!1523620 (not ((_ is IntegerValue!19160) (value!196053 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))))

(declare-fun e!2327227 () Bool)

(assert (=> b!3762849 (= e!2327227 e!2327229)))

(declare-fun b!3762850 () Bool)

(assert (=> b!3762850 (= e!2327227 (inv!17 (value!196053 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))))

(declare-fun b!3762851 () Bool)

(assert (=> b!3762851 (= e!2327229 (inv!15 (value!196053 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))))

(declare-fun b!3762852 () Bool)

(assert (=> b!3762852 (= e!2327228 e!2327227)))

(declare-fun c!651664 () Bool)

(assert (=> b!3762852 (= c!651664 ((_ is IntegerValue!19159) (value!196053 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))))

(assert (= (and d!1099464 c!651665) b!3762848))

(assert (= (and d!1099464 (not c!651665)) b!3762852))

(assert (= (and b!3762852 c!651664) b!3762850))

(assert (= (and b!3762852 (not c!651664)) b!3762849))

(assert (= (and b!3762849 (not res!1523620)) b!3762851))

(declare-fun m!4257735 () Bool)

(assert (=> b!3762848 m!4257735))

(declare-fun m!4257737 () Bool)

(assert (=> b!3762850 m!4257737))

(declare-fun m!4257739 () Bool)

(assert (=> b!3762851 m!4257739))

(assert (=> b!3762401 d!1099464))

(declare-fun d!1099466 () Bool)

(declare-fun lt!1302308 () Bool)

(assert (=> d!1099466 (= lt!1302308 (isEmpty!23587 (list!14819 (right!31403 (left!31073 (c!651313 acc!400))))))))

(assert (=> d!1099466 (= lt!1302308 (= (size!30214 (right!31403 (left!31073 (c!651313 acc!400)))) 0))))

(assert (=> d!1099466 (= (isEmpty!23585 (right!31403 (left!31073 (c!651313 acc!400)))) lt!1302308)))

(declare-fun bs!575871 () Bool)

(assert (= bs!575871 d!1099466))

(assert (=> bs!575871 m!4256677))

(assert (=> bs!575871 m!4256677))

(declare-fun m!4257741 () Bool)

(assert (=> bs!575871 m!4257741))

(assert (=> bs!575871 m!4256819))

(assert (=> b!3762276 d!1099466))

(declare-fun d!1099468 () Bool)

(declare-fun res!1523621 () Bool)

(declare-fun e!2327231 () Bool)

(assert (=> d!1099468 (=> (not res!1523621) (not e!2327231))))

(assert (=> d!1099468 (= res!1523621 (<= (size!30213 (list!14824 (xs!15504 (left!31073 (right!31403 (c!651313 acc!400)))))) 512))))

(assert (=> d!1099468 (= (inv!53860 (left!31073 (right!31403 (c!651313 acc!400)))) e!2327231)))

(declare-fun b!3762855 () Bool)

(declare-fun res!1523622 () Bool)

(assert (=> b!3762855 (=> (not res!1523622) (not e!2327231))))

(assert (=> b!3762855 (= res!1523622 (= (csize!24827 (left!31073 (right!31403 (c!651313 acc!400)))) (size!30213 (list!14824 (xs!15504 (left!31073 (right!31403 (c!651313 acc!400))))))))))

(declare-fun b!3762856 () Bool)

(assert (=> b!3762856 (= e!2327231 (and (> (csize!24827 (left!31073 (right!31403 (c!651313 acc!400)))) 0) (<= (csize!24827 (left!31073 (right!31403 (c!651313 acc!400)))) 512)))))

(assert (= (and d!1099468 res!1523621) b!3762855))

(assert (= (and b!3762855 res!1523622) b!3762856))

(declare-fun m!4257745 () Bool)

(assert (=> d!1099468 m!4257745))

(assert (=> d!1099468 m!4257745))

(declare-fun m!4257747 () Bool)

(assert (=> d!1099468 m!4257747))

(assert (=> b!3762855 m!4257745))

(assert (=> b!3762855 m!4257745))

(assert (=> b!3762855 m!4257747))

(assert (=> b!3762130 d!1099468))

(declare-fun b!3762859 () Bool)

(declare-fun res!1523624 () Bool)

(declare-fun e!2327232 () Bool)

(assert (=> b!3762859 (=> (not res!1523624) (not e!2327232))))

(declare-fun lt!1302309 () List!40263)

(assert (=> b!3762859 (= res!1523624 (= (size!30213 lt!1302309) (+ (size!30213 (t!303912 (t!303912 lt!1302080))) (size!30213 lt!1302082))))))

(declare-fun d!1099470 () Bool)

(assert (=> d!1099470 e!2327232))

(declare-fun res!1523623 () Bool)

(assert (=> d!1099470 (=> (not res!1523623) (not e!2327232))))

(assert (=> d!1099470 (= res!1523623 (= (content!5894 lt!1302309) ((_ map or) (content!5894 (t!303912 (t!303912 lt!1302080))) (content!5894 lt!1302082))))))

(declare-fun e!2327233 () List!40263)

(assert (=> d!1099470 (= lt!1302309 e!2327233)))

(declare-fun c!651667 () Bool)

(assert (=> d!1099470 (= c!651667 ((_ is Nil!40139) (t!303912 (t!303912 lt!1302080))))))

(assert (=> d!1099470 (= (++!9954 (t!303912 (t!303912 lt!1302080)) lt!1302082) lt!1302309)))

(declare-fun b!3762857 () Bool)

(assert (=> b!3762857 (= e!2327233 lt!1302082)))

(declare-fun b!3762858 () Bool)

(assert (=> b!3762858 (= e!2327233 (Cons!40139 (h!45559 (t!303912 (t!303912 lt!1302080))) (++!9954 (t!303912 (t!303912 (t!303912 lt!1302080))) lt!1302082)))))

(declare-fun b!3762860 () Bool)

(assert (=> b!3762860 (= e!2327232 (or (not (= lt!1302082 Nil!40139)) (= lt!1302309 (t!303912 (t!303912 lt!1302080)))))))

(assert (= (and d!1099470 c!651667) b!3762857))

(assert (= (and d!1099470 (not c!651667)) b!3762858))

(assert (= (and d!1099470 res!1523623) b!3762859))

(assert (= (and b!3762859 res!1523624) b!3762860))

(declare-fun m!4257751 () Bool)

(assert (=> b!3762859 m!4257751))

(declare-fun m!4257753 () Bool)

(assert (=> b!3762859 m!4257753))

(assert (=> b!3762859 m!4255989))

(declare-fun m!4257755 () Bool)

(assert (=> d!1099470 m!4257755))

(declare-fun m!4257757 () Bool)

(assert (=> d!1099470 m!4257757))

(assert (=> d!1099470 m!4255993))

(declare-fun m!4257759 () Bool)

(assert (=> b!3762858 m!4257759))

(assert (=> b!3762137 d!1099470))

(declare-fun d!1099474 () Bool)

(assert (=> d!1099474 (= (list!14824 (xs!15504 (left!31073 (c!651313 acc!400)))) (innerList!12358 (xs!15504 (left!31073 (c!651313 acc!400)))))))

(assert (=> b!3762253 d!1099474))

(declare-fun d!1099476 () Bool)

(declare-fun lt!1302310 () Int)

(assert (=> d!1099476 (>= lt!1302310 0)))

(declare-fun e!2327235 () Int)

(assert (=> d!1099476 (= lt!1302310 e!2327235)))

(declare-fun c!651668 () Bool)

(assert (=> d!1099476 (= c!651668 ((_ is Nil!40141) (list!14826 (xs!15505 (left!31074 (c!651315 v!6347))))))))

(assert (=> d!1099476 (= (size!30210 (list!14826 (xs!15505 (left!31074 (c!651315 v!6347))))) lt!1302310)))

(declare-fun b!3762863 () Bool)

(assert (=> b!3762863 (= e!2327235 0)))

(declare-fun b!3762864 () Bool)

(assert (=> b!3762864 (= e!2327235 (+ 1 (size!30210 (t!303914 (list!14826 (xs!15505 (left!31074 (c!651315 v!6347))))))))))

(assert (= (and d!1099476 c!651668) b!3762863))

(assert (= (and d!1099476 (not c!651668)) b!3762864))

(declare-fun m!4257765 () Bool)

(assert (=> b!3762864 m!4257765))

(assert (=> b!3762154 d!1099476))

(assert (=> b!3762154 d!1099308))

(declare-fun d!1099478 () Bool)

(declare-fun lt!1302311 () Int)

(assert (=> d!1099478 (>= lt!1302311 0)))

(declare-fun e!2327236 () Int)

(assert (=> d!1099478 (= lt!1302311 e!2327236)))

(declare-fun c!651669 () Bool)

(assert (=> d!1099478 (= c!651669 ((_ is Nil!40139) (innerList!12358 (xs!15504 (left!31073 (c!651313 acc!400))))))))

(assert (=> d!1099478 (= (size!30213 (innerList!12358 (xs!15504 (left!31073 (c!651313 acc!400))))) lt!1302311)))

(declare-fun b!3762865 () Bool)

(assert (=> b!3762865 (= e!2327236 0)))

(declare-fun b!3762866 () Bool)

(assert (=> b!3762866 (= e!2327236 (+ 1 (size!30213 (t!303912 (innerList!12358 (xs!15504 (left!31073 (c!651313 acc!400))))))))))

(assert (= (and d!1099478 c!651669) b!3762865))

(assert (= (and d!1099478 (not c!651669)) b!3762866))

(declare-fun m!4257767 () Bool)

(assert (=> b!3762866 m!4257767))

(assert (=> d!1098922 d!1099478))

(declare-fun d!1099482 () Bool)

(declare-fun lt!1302312 () Int)

(assert (=> d!1099482 (>= lt!1302312 0)))

(declare-fun e!2327238 () Int)

(assert (=> d!1099482 (= lt!1302312 e!2327238)))

(declare-fun c!651671 () Bool)

(assert (=> d!1099482 (= c!651671 ((_ is Nil!40139) (list!14819 (right!31403 (c!651313 acc!400)))))))

(assert (=> d!1099482 (= (size!30213 (list!14819 (right!31403 (c!651313 acc!400)))) lt!1302312)))

(declare-fun b!3762869 () Bool)

(assert (=> b!3762869 (= e!2327238 0)))

(declare-fun b!3762870 () Bool)

(assert (=> b!3762870 (= e!2327238 (+ 1 (size!30213 (t!303912 (list!14819 (right!31403 (c!651313 acc!400)))))))))

(assert (= (and d!1099482 c!651671) b!3762869))

(assert (= (and d!1099482 (not c!651671)) b!3762870))

(declare-fun m!4257771 () Bool)

(assert (=> b!3762870 m!4257771))

(assert (=> d!1098870 d!1099482))

(assert (=> d!1098870 d!1099074))

(assert (=> b!3761958 d!1098872))

(assert (=> b!3761958 d!1098874))

(assert (=> d!1098986 d!1098812))

(assert (=> d!1098986 d!1098790))

(assert (=> d!1098986 d!1098792))

(assert (=> d!1098986 d!1098806))

(assert (=> d!1099004 d!1099476))

(assert (=> d!1099004 d!1099308))

(declare-fun d!1099484 () Bool)

(declare-fun lt!1302313 () Int)

(assert (=> d!1099484 (>= lt!1302313 0)))

(declare-fun e!2327239 () Int)

(assert (=> d!1099484 (= lt!1302313 e!2327239)))

(declare-fun c!651672 () Bool)

(assert (=> d!1099484 (= c!651672 ((_ is Nil!40139) lt!1302221))))

(assert (=> d!1099484 (= (size!30213 lt!1302221) lt!1302313)))

(declare-fun b!3762871 () Bool)

(assert (=> b!3762871 (= e!2327239 0)))

(declare-fun b!3762872 () Bool)

(assert (=> b!3762872 (= e!2327239 (+ 1 (size!30213 (t!303912 lt!1302221))))))

(assert (= (and d!1099484 c!651672) b!3762871))

(assert (= (and d!1099484 (not c!651672)) b!3762872))

(declare-fun m!4257775 () Bool)

(assert (=> b!3762872 m!4257775))

(assert (=> b!3762313 d!1099484))

(declare-fun d!1099488 () Bool)

(declare-fun lt!1302314 () Int)

(assert (=> d!1099488 (>= lt!1302314 0)))

(declare-fun e!2327240 () Int)

(assert (=> d!1099488 (= lt!1302314 e!2327240)))

(declare-fun c!651673 () Bool)

(assert (=> d!1099488 (= c!651673 ((_ is Nil!40139) (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))

(assert (=> d!1099488 (= (size!30213 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) lt!1302314)))

(declare-fun b!3762873 () Bool)

(assert (=> b!3762873 (= e!2327240 0)))

(declare-fun b!3762874 () Bool)

(assert (=> b!3762874 (= e!2327240 (+ 1 (size!30213 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))))

(assert (= (and d!1099488 c!651673) b!3762873))

(assert (= (and d!1099488 (not c!651673)) b!3762874))

(declare-fun m!4257777 () Bool)

(assert (=> b!3762874 m!4257777))

(assert (=> b!3762313 d!1099488))

(declare-fun d!1099490 () Bool)

(declare-fun lt!1302315 () Int)

(assert (=> d!1099490 (>= lt!1302315 0)))

(declare-fun e!2327241 () Int)

(assert (=> d!1099490 (= lt!1302315 e!2327241)))

(declare-fun c!651674 () Bool)

(assert (=> d!1099490 (= c!651674 ((_ is Nil!40139) (printList!1661 thiss!13650 (t!303914 lt!1302052))))))

(assert (=> d!1099490 (= (size!30213 (printList!1661 thiss!13650 (t!303914 lt!1302052))) lt!1302315)))

(declare-fun b!3762875 () Bool)

(assert (=> b!3762875 (= e!2327241 0)))

(declare-fun b!3762876 () Bool)

(assert (=> b!3762876 (= e!2327241 (+ 1 (size!30213 (t!303912 (printList!1661 thiss!13650 (t!303914 lt!1302052))))))))

(assert (= (and d!1099490 c!651674) b!3762875))

(assert (= (and d!1099490 (not c!651674)) b!3762876))

(declare-fun m!4257779 () Bool)

(assert (=> b!3762876 m!4257779))

(assert (=> b!3762313 d!1099490))

(declare-fun d!1099492 () Bool)

(declare-fun c!651675 () Bool)

(assert (=> d!1099492 (= c!651675 ((_ is Nil!40139) (t!303912 lt!1302101)))))

(declare-fun e!2327242 () (InoxSet C!22308))

(assert (=> d!1099492 (= (content!5894 (t!303912 lt!1302101)) e!2327242)))

(declare-fun b!3762877 () Bool)

(assert (=> b!3762877 (= e!2327242 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762878 () Bool)

(assert (=> b!3762878 (= e!2327242 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (t!303912 lt!1302101)) true) (content!5894 (t!303912 (t!303912 lt!1302101)))))))

(assert (= (and d!1099492 c!651675) b!3762877))

(assert (= (and d!1099492 (not c!651675)) b!3762878))

(declare-fun m!4257781 () Bool)

(assert (=> b!3762878 m!4257781))

(declare-fun m!4257783 () Bool)

(assert (=> b!3762878 m!4257783))

(assert (=> b!3762109 d!1099492))

(declare-fun d!1099494 () Bool)

(declare-fun res!1523627 () Bool)

(declare-fun e!2327243 () Bool)

(assert (=> d!1099494 (=> (not res!1523627) (not e!2327243))))

(assert (=> d!1099494 (= res!1523627 (<= (size!30210 (list!14826 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347)))))) 512))))

(assert (=> d!1099494 (= (inv!53857 (left!31074 (right!31404 (c!651315 v!6347)))) e!2327243)))

(declare-fun b!3762879 () Bool)

(declare-fun res!1523628 () Bool)

(assert (=> b!3762879 (=> (not res!1523628) (not e!2327243))))

(assert (=> b!3762879 (= res!1523628 (= (csize!24829 (left!31074 (right!31404 (c!651315 v!6347)))) (size!30210 (list!14826 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))))))

(declare-fun b!3762880 () Bool)

(assert (=> b!3762880 (= e!2327243 (and (> (csize!24829 (left!31074 (right!31404 (c!651315 v!6347)))) 0) (<= (csize!24829 (left!31074 (right!31404 (c!651315 v!6347)))) 512)))))

(assert (= (and d!1099494 res!1523627) b!3762879))

(assert (= (and b!3762879 res!1523628) b!3762880))

(assert (=> d!1099494 m!4257449))

(assert (=> d!1099494 m!4257449))

(declare-fun m!4257785 () Bool)

(assert (=> d!1099494 m!4257785))

(assert (=> b!3762879 m!4257449))

(assert (=> b!3762879 m!4257449))

(assert (=> b!3762879 m!4257785))

(assert (=> b!3762007 d!1099494))

(declare-fun b!3762883 () Bool)

(declare-fun res!1523630 () Bool)

(declare-fun e!2327244 () Bool)

(assert (=> b!3762883 (=> (not res!1523630) (not e!2327244))))

(declare-fun lt!1302316 () List!40263)

(assert (=> b!3762883 (= res!1523630 (= (size!30213 lt!1302316) (+ (size!30213 (t!303912 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108))) (size!30213 lt!1302110))))))

(declare-fun d!1099496 () Bool)

(assert (=> d!1099496 e!2327244))

(declare-fun res!1523629 () Bool)

(assert (=> d!1099496 (=> (not res!1523629) (not e!2327244))))

(assert (=> d!1099496 (= res!1523629 (= (content!5894 lt!1302316) ((_ map or) (content!5894 (t!303912 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108))) (content!5894 lt!1302110))))))

(declare-fun e!2327245 () List!40263)

(assert (=> d!1099496 (= lt!1302316 e!2327245)))

(declare-fun c!651676 () Bool)

(assert (=> d!1099496 (= c!651676 ((_ is Nil!40139) (t!303912 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108))))))

(assert (=> d!1099496 (= (++!9954 (t!303912 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108)) lt!1302110) lt!1302316)))

(declare-fun b!3762881 () Bool)

(assert (=> b!3762881 (= e!2327245 lt!1302110)))

(declare-fun b!3762882 () Bool)

(assert (=> b!3762882 (= e!2327245 (Cons!40139 (h!45559 (t!303912 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108))) (++!9954 (t!303912 (t!303912 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108))) lt!1302110)))))

(declare-fun b!3762884 () Bool)

(assert (=> b!3762884 (= e!2327244 (or (not (= lt!1302110 Nil!40139)) (= lt!1302316 (t!303912 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108)))))))

(assert (= (and d!1099496 c!651676) b!3762881))

(assert (= (and d!1099496 (not c!651676)) b!3762882))

(assert (= (and d!1099496 res!1523629) b!3762883))

(assert (= (and b!3762883 res!1523630) b!3762884))

(declare-fun m!4257787 () Bool)

(assert (=> b!3762883 m!4257787))

(declare-fun m!4257789 () Bool)

(assert (=> b!3762883 m!4257789))

(assert (=> b!3762883 m!4256551))

(declare-fun m!4257791 () Bool)

(assert (=> d!1099496 m!4257791))

(declare-fun m!4257793 () Bool)

(assert (=> d!1099496 m!4257793))

(assert (=> d!1099496 m!4256557))

(declare-fun m!4257795 () Bool)

(assert (=> b!3762882 m!4257795))

(assert (=> b!3762199 d!1099496))

(declare-fun d!1099498 () Bool)

(declare-fun lt!1302317 () Int)

(assert (=> d!1099498 (>= lt!1302317 0)))

(declare-fun e!2327246 () Int)

(assert (=> d!1099498 (= lt!1302317 e!2327246)))

(declare-fun c!651677 () Bool)

(assert (=> d!1099498 (= c!651677 ((_ is Nil!40139) (t!303912 lt!1302080)))))

(assert (=> d!1099498 (= (size!30213 (t!303912 lt!1302080)) lt!1302317)))

(declare-fun b!3762885 () Bool)

(assert (=> b!3762885 (= e!2327246 0)))

(declare-fun b!3762886 () Bool)

(assert (=> b!3762886 (= e!2327246 (+ 1 (size!30213 (t!303912 (t!303912 lt!1302080)))))))

(assert (= (and d!1099498 c!651677) b!3762885))

(assert (= (and d!1099498 (not c!651677)) b!3762886))

(assert (=> b!3762886 m!4257753))

(assert (=> b!3762095 d!1099498))

(declare-fun d!1099500 () Bool)

(declare-fun lt!1302318 () Int)

(assert (=> d!1099500 (>= lt!1302318 0)))

(declare-fun e!2327247 () Int)

(assert (=> d!1099500 (= lt!1302318 e!2327247)))

(declare-fun c!651678 () Bool)

(assert (=> d!1099500 (= c!651678 ((_ is Nil!40141) (list!14826 (xs!15505 (right!31404 (c!651315 v!6347))))))))

(assert (=> d!1099500 (= (size!30210 (list!14826 (xs!15505 (right!31404 (c!651315 v!6347))))) lt!1302318)))

(declare-fun b!3762887 () Bool)

(assert (=> b!3762887 (= e!2327247 0)))

(declare-fun b!3762888 () Bool)

(assert (=> b!3762888 (= e!2327247 (+ 1 (size!30210 (t!303914 (list!14826 (xs!15505 (right!31404 (c!651315 v!6347))))))))))

(assert (= (and d!1099500 c!651678) b!3762887))

(assert (= (and d!1099500 (not c!651678)) b!3762888))

(declare-fun m!4257797 () Bool)

(assert (=> b!3762888 m!4257797))

(assert (=> d!1099056 d!1099500))

(declare-fun d!1099502 () Bool)

(assert (=> d!1099502 (= (list!14826 (xs!15505 (right!31404 (c!651315 v!6347)))) (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))

(assert (=> d!1099056 d!1099502))

(declare-fun b!3762889 () Bool)

(declare-fun res!1523636 () Bool)

(declare-fun e!2327249 () Bool)

(assert (=> b!3762889 (=> (not res!1523636) (not e!2327249))))

(assert (=> b!3762889 (= res!1523636 (<= (- (height!1755 (left!31073 (right!31403 (right!31403 (c!651313 acc!400))))) (height!1755 (right!31403 (right!31403 (right!31403 (c!651313 acc!400)))))) 1))))

(declare-fun b!3762890 () Bool)

(assert (=> b!3762890 (= e!2327249 (not (isEmpty!23585 (right!31403 (right!31403 (right!31403 (c!651313 acc!400)))))))))

(declare-fun b!3762891 () Bool)

(declare-fun res!1523634 () Bool)

(assert (=> b!3762891 (=> (not res!1523634) (not e!2327249))))

(assert (=> b!3762891 (= res!1523634 (isBalanced!3537 (right!31403 (right!31403 (right!31403 (c!651313 acc!400))))))))

(declare-fun d!1099504 () Bool)

(declare-fun res!1523631 () Bool)

(declare-fun e!2327248 () Bool)

(assert (=> d!1099504 (=> res!1523631 e!2327248)))

(assert (=> d!1099504 (= res!1523631 (not ((_ is Node!12298) (right!31403 (right!31403 (c!651313 acc!400))))))))

(assert (=> d!1099504 (= (isBalanced!3537 (right!31403 (right!31403 (c!651313 acc!400)))) e!2327248)))

(declare-fun b!3762892 () Bool)

(declare-fun res!1523633 () Bool)

(assert (=> b!3762892 (=> (not res!1523633) (not e!2327249))))

(assert (=> b!3762892 (= res!1523633 (isBalanced!3537 (left!31073 (right!31403 (right!31403 (c!651313 acc!400))))))))

(declare-fun b!3762893 () Bool)

(declare-fun res!1523632 () Bool)

(assert (=> b!3762893 (=> (not res!1523632) (not e!2327249))))

(assert (=> b!3762893 (= res!1523632 (not (isEmpty!23585 (left!31073 (right!31403 (right!31403 (c!651313 acc!400)))))))))

(declare-fun b!3762894 () Bool)

(assert (=> b!3762894 (= e!2327248 e!2327249)))

(declare-fun res!1523635 () Bool)

(assert (=> b!3762894 (=> (not res!1523635) (not e!2327249))))

(assert (=> b!3762894 (= res!1523635 (<= (- 1) (- (height!1755 (left!31073 (right!31403 (right!31403 (c!651313 acc!400))))) (height!1755 (right!31403 (right!31403 (right!31403 (c!651313 acc!400))))))))))

(assert (= (and d!1099504 (not res!1523631)) b!3762894))

(assert (= (and b!3762894 res!1523635) b!3762889))

(assert (= (and b!3762889 res!1523636) b!3762892))

(assert (= (and b!3762892 res!1523633) b!3762891))

(assert (= (and b!3762891 res!1523634) b!3762893))

(assert (= (and b!3762893 res!1523632) b!3762890))

(declare-fun m!4257799 () Bool)

(assert (=> b!3762892 m!4257799))

(declare-fun m!4257801 () Bool)

(assert (=> b!3762891 m!4257801))

(declare-fun m!4257803 () Bool)

(assert (=> b!3762893 m!4257803))

(declare-fun m!4257805 () Bool)

(assert (=> b!3762894 m!4257805))

(declare-fun m!4257807 () Bool)

(assert (=> b!3762894 m!4257807))

(assert (=> b!3762889 m!4257805))

(assert (=> b!3762889 m!4257807))

(declare-fun m!4257809 () Bool)

(assert (=> b!3762890 m!4257809))

(assert (=> b!3762104 d!1099504))

(declare-fun d!1099506 () Bool)

(declare-fun lt!1302319 () Int)

(assert (=> d!1099506 (>= lt!1302319 0)))

(declare-fun e!2327250 () Int)

(assert (=> d!1099506 (= lt!1302319 e!2327250)))

(declare-fun c!651679 () Bool)

(assert (=> d!1099506 (= c!651679 ((_ is Nil!40139) lt!1302179))))

(assert (=> d!1099506 (= (size!30213 lt!1302179) lt!1302319)))

(declare-fun b!3762895 () Bool)

(assert (=> b!3762895 (= e!2327250 0)))

(declare-fun b!3762896 () Bool)

(assert (=> b!3762896 (= e!2327250 (+ 1 (size!30213 (t!303912 lt!1302179))))))

(assert (= (and d!1099506 c!651679) b!3762895))

(assert (= (and d!1099506 (not c!651679)) b!3762896))

(declare-fun m!4257811 () Bool)

(assert (=> b!3762896 m!4257811))

(assert (=> b!3762144 d!1099506))

(assert (=> b!3762144 d!1098888))

(assert (=> b!3762144 d!1099490))

(declare-fun d!1099508 () Bool)

(declare-fun lt!1302320 () Int)

(assert (=> d!1099508 (>= lt!1302320 0)))

(declare-fun e!2327251 () Int)

(assert (=> d!1099508 (= lt!1302320 e!2327251)))

(declare-fun c!651680 () Bool)

(assert (=> d!1099508 (= c!651680 ((_ is Nil!40141) (t!303914 (t!303914 (list!14822 v!6347)))))))

(assert (=> d!1099508 (= (size!30210 (t!303914 (t!303914 (list!14822 v!6347)))) lt!1302320)))

(declare-fun b!3762897 () Bool)

(assert (=> b!3762897 (= e!2327251 0)))

(declare-fun b!3762898 () Bool)

(assert (=> b!3762898 (= e!2327251 (+ 1 (size!30210 (t!303914 (t!303914 (t!303914 (list!14822 v!6347)))))))))

(assert (= (and d!1099508 c!651680) b!3762897))

(assert (= (and d!1099508 (not c!651680)) b!3762898))

(declare-fun m!4257813 () Bool)

(assert (=> b!3762898 m!4257813))

(assert (=> b!3762135 d!1099508))

(declare-fun d!1099510 () Bool)

(declare-fun res!1523637 () Bool)

(declare-fun e!2327252 () Bool)

(assert (=> d!1099510 (=> (not res!1523637) (not e!2327252))))

(assert (=> d!1099510 (= res!1523637 (<= (size!30213 (list!14824 (xs!15504 (left!31073 (left!31073 (c!651313 acc!400)))))) 512))))

(assert (=> d!1099510 (= (inv!53860 (left!31073 (left!31073 (c!651313 acc!400)))) e!2327252)))

(declare-fun b!3762899 () Bool)

(declare-fun res!1523638 () Bool)

(assert (=> b!3762899 (=> (not res!1523638) (not e!2327252))))

(assert (=> b!3762899 (= res!1523638 (= (csize!24827 (left!31073 (left!31073 (c!651313 acc!400)))) (size!30213 (list!14824 (xs!15504 (left!31073 (left!31073 (c!651313 acc!400))))))))))

(declare-fun b!3762900 () Bool)

(assert (=> b!3762900 (= e!2327252 (and (> (csize!24827 (left!31073 (left!31073 (c!651313 acc!400)))) 0) (<= (csize!24827 (left!31073 (left!31073 (c!651313 acc!400)))) 512)))))

(assert (= (and d!1099510 res!1523637) b!3762899))

(assert (= (and b!3762899 res!1523638) b!3762900))

(declare-fun m!4257815 () Bool)

(assert (=> d!1099510 m!4257815))

(assert (=> d!1099510 m!4257815))

(declare-fun m!4257817 () Bool)

(assert (=> d!1099510 m!4257817))

(assert (=> b!3762899 m!4257815))

(assert (=> b!3762899 m!4257815))

(assert (=> b!3762899 m!4257817))

(assert (=> b!3762227 d!1099510))

(declare-fun d!1099512 () Bool)

(assert (=> d!1099512 (= (inv!53865 (xs!15504 (right!31403 (right!31403 (c!651313 acc!400))))) (<= (size!30213 (innerList!12358 (xs!15504 (right!31403 (right!31403 (c!651313 acc!400)))))) 2147483647))))

(declare-fun bs!575872 () Bool)

(assert (= bs!575872 d!1099512))

(declare-fun m!4257819 () Bool)

(assert (=> bs!575872 m!4257819))

(assert (=> b!3762413 d!1099512))

(declare-fun d!1099514 () Bool)

(assert (=> d!1099514 (= (inv!53863 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))) (<= (size!30210 (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347)))))) 2147483647))))

(declare-fun bs!575873 () Bool)

(assert (= bs!575873 d!1099514))

(declare-fun m!4257821 () Bool)

(assert (=> bs!575873 m!4257821))

(assert (=> b!3762358 d!1099514))

(declare-fun d!1099516 () Bool)

(assert (=> d!1099516 (= (inv!53865 (xs!15504 (right!31403 (left!31073 (c!651313 acc!400))))) (<= (size!30213 (innerList!12358 (xs!15504 (right!31403 (left!31073 (c!651313 acc!400)))))) 2147483647))))

(declare-fun bs!575874 () Bool)

(assert (= bs!575874 d!1099516))

(declare-fun m!4257823 () Bool)

(assert (=> bs!575874 m!4257823))

(assert (=> b!3762349 d!1099516))

(declare-fun d!1099518 () Bool)

(declare-fun lt!1302321 () Bool)

(assert (=> d!1099518 (= lt!1302321 (isEmpty!23590 (list!14820 (left!31074 (right!31404 (c!651315 v!6347))))))))

(assert (=> d!1099518 (= lt!1302321 (= (size!30211 (left!31074 (right!31404 (c!651315 v!6347)))) 0))))

(assert (=> d!1099518 (= (isEmpty!23583 (left!31074 (right!31404 (c!651315 v!6347)))) lt!1302321)))

(declare-fun bs!575875 () Bool)

(assert (= bs!575875 d!1099518))

(assert (=> bs!575875 m!4256761))

(assert (=> bs!575875 m!4256761))

(declare-fun m!4257825 () Bool)

(assert (=> bs!575875 m!4257825))

(assert (=> bs!575875 m!4256651))

(assert (=> b!3762021 d!1099518))

(declare-fun d!1099520 () Bool)

(declare-fun c!651681 () Bool)

(assert (=> d!1099520 (= c!651681 ((_ is Nil!40139) (t!303912 (printList!1661 thiss!13650 lt!1302052))))))

(declare-fun e!2327253 () (InoxSet C!22308))

(assert (=> d!1099520 (= (content!5894 (t!303912 (printList!1661 thiss!13650 lt!1302052))) e!2327253)))

(declare-fun b!3762901 () Bool)

(assert (=> b!3762901 (= e!2327253 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762902 () Bool)

(assert (=> b!3762902 (= e!2327253 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (t!303912 (printList!1661 thiss!13650 lt!1302052))) true) (content!5894 (t!303912 (t!303912 (printList!1661 thiss!13650 lt!1302052))))))))

(assert (= (and d!1099520 c!651681) b!3762901))

(assert (= (and d!1099520 (not c!651681)) b!3762902))

(declare-fun m!4257827 () Bool)

(assert (=> b!3762902 m!4257827))

(declare-fun m!4257831 () Bool)

(assert (=> b!3762902 m!4257831))

(assert (=> b!3762000 d!1099520))

(declare-fun d!1099522 () Bool)

(declare-fun lt!1302322 () Int)

(assert (=> d!1099522 (>= lt!1302322 0)))

(declare-fun e!2327254 () Int)

(assert (=> d!1099522 (= lt!1302322 e!2327254)))

(declare-fun c!651682 () Bool)

(assert (=> d!1099522 (= c!651682 ((_ is Nil!40141) (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))

(assert (=> d!1099522 (= (size!30210 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))) lt!1302322)))

(declare-fun b!3762903 () Bool)

(assert (=> b!3762903 (= e!2327254 0)))

(declare-fun b!3762904 () Bool)

(assert (=> b!3762904 (= e!2327254 (+ 1 (size!30210 (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))))

(assert (= (and d!1099522 c!651682) b!3762903))

(assert (= (and d!1099522 (not c!651682)) b!3762904))

(declare-fun m!4257833 () Bool)

(assert (=> b!3762904 m!4257833))

(assert (=> d!1098996 d!1099522))

(declare-fun d!1099526 () Bool)

(declare-fun c!651683 () Bool)

(assert (=> d!1099526 (= c!651683 ((_ is Nil!40139) (t!303912 lt!1302082)))))

(declare-fun e!2327255 () (InoxSet C!22308))

(assert (=> d!1099526 (= (content!5894 (t!303912 lt!1302082)) e!2327255)))

(declare-fun b!3762905 () Bool)

(assert (=> b!3762905 (= e!2327255 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762906 () Bool)

(assert (=> b!3762906 (= e!2327255 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (t!303912 lt!1302082)) true) (content!5894 (t!303912 (t!303912 lt!1302082)))))))

(assert (= (and d!1099526 c!651683) b!3762905))

(assert (= (and d!1099526 (not c!651683)) b!3762906))

(declare-fun m!4257835 () Bool)

(assert (=> b!3762906 m!4257835))

(declare-fun m!4257837 () Bool)

(assert (=> b!3762906 m!4257837))

(assert (=> b!3762124 d!1099526))

(declare-fun d!1099528 () Bool)

(declare-fun charsToBigInt!0 (List!40264 Int) Int)

(assert (=> d!1099528 (= (inv!15 (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))) (= (charsToBigInt!0 (text!45151 (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))) 0) (value!196048 (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))))

(declare-fun bs!575877 () Bool)

(assert (= bs!575877 d!1099528))

(declare-fun m!4257867 () Bool)

(assert (=> bs!575877 m!4257867))

(assert (=> b!3762174 d!1099528))

(declare-fun d!1099534 () Bool)

(declare-fun c!651689 () Bool)

(assert (=> d!1099534 (= c!651689 ((_ is Nil!40139) lt!1302207))))

(declare-fun e!2327262 () (InoxSet C!22308))

(assert (=> d!1099534 (= (content!5894 lt!1302207) e!2327262)))

(declare-fun b!3762919 () Bool)

(assert (=> b!3762919 (= e!2327262 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762920 () Bool)

(assert (=> b!3762920 (= e!2327262 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302207) true) (content!5894 (t!303912 lt!1302207))))))

(assert (= (and d!1099534 c!651689) b!3762919))

(assert (= (and d!1099534 (not c!651689)) b!3762920))

(declare-fun m!4257871 () Bool)

(assert (=> b!3762920 m!4257871))

(declare-fun m!4257873 () Bool)

(assert (=> b!3762920 m!4257873))

(assert (=> d!1099076 d!1099534))

(assert (=> d!1099076 d!1099384))

(assert (=> d!1099076 d!1098862))

(declare-fun d!1099538 () Bool)

(declare-fun c!651691 () Bool)

(assert (=> d!1099538 (= c!651691 ((_ is Nil!40139) (t!303912 lt!1302080)))))

(declare-fun e!2327265 () (InoxSet C!22308))

(assert (=> d!1099538 (= (content!5894 (t!303912 lt!1302080)) e!2327265)))

(declare-fun b!3762924 () Bool)

(assert (=> b!3762924 (= e!2327265 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3762925 () Bool)

(assert (=> b!3762925 (= e!2327265 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (t!303912 lt!1302080)) true) (content!5894 (t!303912 (t!303912 lt!1302080)))))))

(assert (= (and d!1099538 c!651691) b!3762924))

(assert (= (and d!1099538 (not c!651691)) b!3762925))

(declare-fun m!4257877 () Bool)

(assert (=> b!3762925 m!4257877))

(assert (=> b!3762925 m!4257757))

(assert (=> b!3762043 d!1099538))

(declare-fun b!3762926 () Bool)

(declare-fun e!2327267 () Bool)

(declare-fun e!2327266 () Bool)

(assert (=> b!3762926 (= e!2327267 e!2327266)))

(declare-fun res!1523647 () Bool)

(assert (=> b!3762926 (=> (not res!1523647) (not e!2327266))))

(assert (=> b!3762926 (= res!1523647 (<= (- 1) (- (height!1754 (left!31074 (left!31074 (left!31074 (c!651315 v!6347))))) (height!1754 (right!31404 (left!31074 (left!31074 (c!651315 v!6347))))))))))

(declare-fun b!3762927 () Bool)

(declare-fun res!1523646 () Bool)

(assert (=> b!3762927 (=> (not res!1523646) (not e!2327266))))

(assert (=> b!3762927 (= res!1523646 (not (isEmpty!23583 (left!31074 (left!31074 (left!31074 (c!651315 v!6347)))))))))

(declare-fun d!1099540 () Bool)

(declare-fun res!1523643 () Bool)

(assert (=> d!1099540 (=> res!1523643 e!2327267)))

(assert (=> d!1099540 (= res!1523643 (not ((_ is Node!12299) (left!31074 (left!31074 (c!651315 v!6347))))))))

(assert (=> d!1099540 (= (isBalanced!3538 (left!31074 (left!31074 (c!651315 v!6347)))) e!2327267)))

(declare-fun b!3762928 () Bool)

(declare-fun res!1523642 () Bool)

(assert (=> b!3762928 (=> (not res!1523642) (not e!2327266))))

(assert (=> b!3762928 (= res!1523642 (isBalanced!3538 (right!31404 (left!31074 (left!31074 (c!651315 v!6347))))))))

(declare-fun b!3762929 () Bool)

(declare-fun res!1523645 () Bool)

(assert (=> b!3762929 (=> (not res!1523645) (not e!2327266))))

(assert (=> b!3762929 (= res!1523645 (isBalanced!3538 (left!31074 (left!31074 (left!31074 (c!651315 v!6347))))))))

(declare-fun b!3762930 () Bool)

(declare-fun res!1523644 () Bool)

(assert (=> b!3762930 (=> (not res!1523644) (not e!2327266))))

(assert (=> b!3762930 (= res!1523644 (<= (- (height!1754 (left!31074 (left!31074 (left!31074 (c!651315 v!6347))))) (height!1754 (right!31404 (left!31074 (left!31074 (c!651315 v!6347)))))) 1))))

(declare-fun b!3762931 () Bool)

(assert (=> b!3762931 (= e!2327266 (not (isEmpty!23583 (right!31404 (left!31074 (left!31074 (c!651315 v!6347)))))))))

(assert (= (and d!1099540 (not res!1523643)) b!3762926))

(assert (= (and b!3762926 res!1523647) b!3762930))

(assert (= (and b!3762930 res!1523644) b!3762929))

(assert (= (and b!3762929 res!1523645) b!3762928))

(assert (= (and b!3762928 res!1523642) b!3762927))

(assert (= (and b!3762927 res!1523646) b!3762931))

(declare-fun m!4257885 () Bool)

(assert (=> b!3762929 m!4257885))

(declare-fun m!4257887 () Bool)

(assert (=> b!3762928 m!4257887))

(declare-fun m!4257889 () Bool)

(assert (=> b!3762931 m!4257889))

(declare-fun m!4257891 () Bool)

(assert (=> b!3762930 m!4257891))

(declare-fun m!4257893 () Bool)

(assert (=> b!3762930 m!4257893))

(assert (=> b!3762926 m!4257891))

(assert (=> b!3762926 m!4257893))

(declare-fun m!4257895 () Bool)

(assert (=> b!3762927 m!4257895))

(assert (=> b!3762151 d!1099540))

(declare-fun d!1099546 () Bool)

(declare-fun lt!1302325 () Int)

(assert (=> d!1099546 (>= lt!1302325 0)))

(declare-fun e!2327271 () Int)

(assert (=> d!1099546 (= lt!1302325 e!2327271)))

(declare-fun c!651694 () Bool)

(assert (=> d!1099546 (= c!651694 ((_ is Nil!40139) (list!14824 (xs!15504 (left!31073 (c!651313 acc!400))))))))

(assert (=> d!1099546 (= (size!30213 (list!14824 (xs!15504 (left!31073 (c!651313 acc!400))))) lt!1302325)))

(declare-fun b!3762937 () Bool)

(assert (=> b!3762937 (= e!2327271 0)))

(declare-fun b!3762938 () Bool)

(assert (=> b!3762938 (= e!2327271 (+ 1 (size!30213 (t!303912 (list!14824 (xs!15504 (left!31073 (c!651313 acc!400))))))))))

(assert (= (and d!1099546 c!651694) b!3762937))

(assert (= (and d!1099546 (not c!651694)) b!3762938))

(declare-fun m!4257899 () Bool)

(assert (=> b!3762938 m!4257899))

(assert (=> d!1099122 d!1099546))

(assert (=> d!1099122 d!1099474))

(declare-fun b!3762942 () Bool)

(declare-fun e!2327273 () List!40263)

(declare-fun e!2327274 () List!40263)

(assert (=> b!3762942 (= e!2327273 e!2327274)))

(declare-fun c!651697 () Bool)

(assert (=> b!3762942 (= c!651697 ((_ is Leaf!19074) (c!651313 lt!1302117)))))

(declare-fun b!3762944 () Bool)

(assert (=> b!3762944 (= e!2327274 (++!9954 (list!14819 (left!31073 (c!651313 lt!1302117))) (list!14819 (right!31403 (c!651313 lt!1302117)))))))

(declare-fun d!1099550 () Bool)

(declare-fun c!651696 () Bool)

(assert (=> d!1099550 (= c!651696 ((_ is Empty!12298) (c!651313 lt!1302117)))))

(assert (=> d!1099550 (= (list!14819 (c!651313 lt!1302117)) e!2327273)))

(declare-fun b!3762941 () Bool)

(assert (=> b!3762941 (= e!2327273 Nil!40139)))

(declare-fun b!3762943 () Bool)

(assert (=> b!3762943 (= e!2327274 (list!14824 (xs!15504 (c!651313 lt!1302117))))))

(assert (= (and d!1099550 c!651696) b!3762941))

(assert (= (and d!1099550 (not c!651696)) b!3762942))

(assert (= (and b!3762942 c!651697) b!3762943))

(assert (= (and b!3762942 (not c!651697)) b!3762944))

(declare-fun m!4257903 () Bool)

(assert (=> b!3762944 m!4257903))

(declare-fun m!4257905 () Bool)

(assert (=> b!3762944 m!4257905))

(assert (=> b!3762944 m!4257903))

(assert (=> b!3762944 m!4257905))

(declare-fun m!4257907 () Bool)

(assert (=> b!3762944 m!4257907))

(declare-fun m!4257909 () Bool)

(assert (=> b!3762943 m!4257909))

(assert (=> d!1098904 d!1099550))

(declare-fun d!1099554 () Bool)

(declare-fun lt!1302328 () Int)

(assert (=> d!1099554 (>= lt!1302328 0)))

(declare-fun e!2327276 () Int)

(assert (=> d!1099554 (= lt!1302328 e!2327276)))

(declare-fun c!651699 () Bool)

(assert (=> d!1099554 (= c!651699 ((_ is Nil!40139) lt!1302190))))

(assert (=> d!1099554 (= (size!30213 lt!1302190) lt!1302328)))

(declare-fun b!3762947 () Bool)

(assert (=> b!3762947 (= e!2327276 0)))

(declare-fun b!3762948 () Bool)

(assert (=> b!3762948 (= e!2327276 (+ 1 (size!30213 (t!303912 lt!1302190))))))

(assert (= (and d!1099554 c!651699) b!3762947))

(assert (= (and d!1099554 (not c!651699)) b!3762948))

(declare-fun m!4257911 () Bool)

(assert (=> b!3762948 m!4257911))

(assert (=> b!3762200 d!1099554))

(declare-fun d!1099556 () Bool)

(declare-fun lt!1302330 () Int)

(assert (=> d!1099556 (>= lt!1302330 0)))

(declare-fun e!2327278 () Int)

(assert (=> d!1099556 (= lt!1302330 e!2327278)))

(declare-fun c!651701 () Bool)

(assert (=> d!1099556 (= c!651701 ((_ is Nil!40139) (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108)))))

(assert (=> d!1099556 (= (size!30213 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108)) lt!1302330)))

(declare-fun b!3762951 () Bool)

(assert (=> b!3762951 (= e!2327278 0)))

(declare-fun b!3762952 () Bool)

(assert (=> b!3762952 (= e!2327278 (+ 1 (size!30213 (t!303912 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108)))))))

(assert (= (and d!1099556 c!651701) b!3762951))

(assert (= (and d!1099556 (not c!651701)) b!3762952))

(assert (=> b!3762952 m!4257789))

(assert (=> b!3762200 d!1099556))

(declare-fun d!1099560 () Bool)

(declare-fun lt!1302331 () Int)

(assert (=> d!1099560 (>= lt!1302331 0)))

(declare-fun e!2327279 () Int)

(assert (=> d!1099560 (= lt!1302331 e!2327279)))

(declare-fun c!651702 () Bool)

(assert (=> d!1099560 (= c!651702 ((_ is Nil!40139) lt!1302110))))

(assert (=> d!1099560 (= (size!30213 lt!1302110) lt!1302331)))

(declare-fun b!3762953 () Bool)

(assert (=> b!3762953 (= e!2327279 0)))

(declare-fun b!3762954 () Bool)

(assert (=> b!3762954 (= e!2327279 (+ 1 (size!30213 (t!303912 lt!1302110))))))

(assert (= (and d!1099560 c!651702) b!3762953))

(assert (= (and d!1099560 (not c!651702)) b!3762954))

(declare-fun m!4257917 () Bool)

(assert (=> b!3762954 m!4257917))

(assert (=> b!3762200 d!1099560))

(declare-fun d!1099564 () Bool)

(assert (=> d!1099564 (= (list!14824 (xs!15504 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))) (innerList!12358 (xs!15504 (c!651313 (charsOf!4006 (h!45561 lt!1302052))))))))

(assert (=> b!3762038 d!1099564))

(declare-fun d!1099566 () Bool)

(declare-fun c!651704 () Bool)

(assert (=> d!1099566 (= c!651704 ((_ is Nil!40141) (t!303914 lt!1302095)))))

(declare-fun e!2327281 () (InoxSet Token!11450))

(assert (=> d!1099566 (= (content!5892 (t!303914 lt!1302095)) e!2327281)))

(declare-fun b!3762957 () Bool)

(assert (=> b!3762957 (= e!2327281 ((as const (Array Token!11450 Bool)) false))))

(declare-fun b!3762958 () Bool)

(assert (=> b!3762958 (= e!2327281 ((_ map or) (store ((as const (Array Token!11450 Bool)) false) (h!45561 (t!303914 lt!1302095)) true) (content!5892 (t!303914 (t!303914 lt!1302095)))))))

(assert (= (and d!1099566 c!651704) b!3762957))

(assert (= (and d!1099566 (not c!651704)) b!3762958))

(declare-fun m!4257921 () Bool)

(assert (=> b!3762958 m!4257921))

(declare-fun m!4257923 () Bool)

(assert (=> b!3762958 m!4257923))

(assert (=> b!3762081 d!1099566))

(declare-fun b!3762961 () Bool)

(declare-fun res!1523650 () Bool)

(declare-fun e!2327283 () Bool)

(assert (=> b!3762961 (=> (not res!1523650) (not e!2327283))))

(declare-fun lt!1302333 () List!40265)

(assert (=> b!3762961 (= res!1523650 (= (size!30210 lt!1302333) (+ (size!30210 (t!303914 (list!14820 (left!31074 (c!651315 v!6347))))) (size!30210 (list!14820 (right!31404 (c!651315 v!6347)))))))))

(declare-fun b!3762962 () Bool)

(assert (=> b!3762962 (= e!2327283 (or (not (= (list!14820 (right!31404 (c!651315 v!6347))) Nil!40141)) (= lt!1302333 (t!303914 (list!14820 (left!31074 (c!651315 v!6347)))))))))

(declare-fun b!3762959 () Bool)

(declare-fun e!2327282 () List!40265)

(assert (=> b!3762959 (= e!2327282 (list!14820 (right!31404 (c!651315 v!6347))))))

(declare-fun b!3762960 () Bool)

(assert (=> b!3762960 (= e!2327282 (Cons!40141 (h!45561 (t!303914 (list!14820 (left!31074 (c!651315 v!6347))))) (++!9955 (t!303914 (t!303914 (list!14820 (left!31074 (c!651315 v!6347))))) (list!14820 (right!31404 (c!651315 v!6347))))))))

(declare-fun d!1099570 () Bool)

(assert (=> d!1099570 e!2327283))

(declare-fun res!1523649 () Bool)

(assert (=> d!1099570 (=> (not res!1523649) (not e!2327283))))

(assert (=> d!1099570 (= res!1523649 (= (content!5892 lt!1302333) ((_ map or) (content!5892 (t!303914 (list!14820 (left!31074 (c!651315 v!6347))))) (content!5892 (list!14820 (right!31404 (c!651315 v!6347)))))))))

(assert (=> d!1099570 (= lt!1302333 e!2327282)))

(declare-fun c!651705 () Bool)

(assert (=> d!1099570 (= c!651705 ((_ is Nil!40141) (t!303914 (list!14820 (left!31074 (c!651315 v!6347))))))))

(assert (=> d!1099570 (= (++!9955 (t!303914 (list!14820 (left!31074 (c!651315 v!6347)))) (list!14820 (right!31404 (c!651315 v!6347)))) lt!1302333)))

(assert (= (and d!1099570 c!651705) b!3762959))

(assert (= (and d!1099570 (not c!651705)) b!3762960))

(assert (= (and d!1099570 res!1523649) b!3762961))

(assert (= (and b!3762961 res!1523650) b!3762962))

(declare-fun m!4257925 () Bool)

(assert (=> b!3762961 m!4257925))

(assert (=> b!3762961 m!4257399))

(assert (=> b!3762961 m!4255831))

(assert (=> b!3762961 m!4256459))

(assert (=> b!3762960 m!4255831))

(declare-fun m!4257927 () Bool)

(assert (=> b!3762960 m!4257927))

(declare-fun m!4257929 () Bool)

(assert (=> d!1099570 m!4257929))

(assert (=> d!1099570 m!4257701))

(assert (=> d!1099570 m!4255831))

(assert (=> d!1099570 m!4256753))

(assert (=> b!3762300 d!1099570))

(assert (=> b!3762309 d!1099502))

(declare-fun b!3762967 () Bool)

(declare-fun res!1523658 () Bool)

(declare-fun e!2327287 () Bool)

(assert (=> b!3762967 (=> (not res!1523658) (not e!2327287))))

(assert (=> b!3762967 (= res!1523658 (<= (- (height!1755 (left!31073 (left!31073 (right!31403 (c!651313 acc!400))))) (height!1755 (right!31403 (left!31073 (right!31403 (c!651313 acc!400)))))) 1))))

(declare-fun b!3762968 () Bool)

(assert (=> b!3762968 (= e!2327287 (not (isEmpty!23585 (right!31403 (left!31073 (right!31403 (c!651313 acc!400)))))))))

(declare-fun b!3762969 () Bool)

(declare-fun res!1523656 () Bool)

(assert (=> b!3762969 (=> (not res!1523656) (not e!2327287))))

(assert (=> b!3762969 (= res!1523656 (isBalanced!3537 (right!31403 (left!31073 (right!31403 (c!651313 acc!400))))))))

(declare-fun d!1099572 () Bool)

(declare-fun res!1523653 () Bool)

(declare-fun e!2327286 () Bool)

(assert (=> d!1099572 (=> res!1523653 e!2327286)))

(assert (=> d!1099572 (= res!1523653 (not ((_ is Node!12298) (left!31073 (right!31403 (c!651313 acc!400))))))))

(assert (=> d!1099572 (= (isBalanced!3537 (left!31073 (right!31403 (c!651313 acc!400)))) e!2327286)))

(declare-fun b!3762970 () Bool)

(declare-fun res!1523655 () Bool)

(assert (=> b!3762970 (=> (not res!1523655) (not e!2327287))))

(assert (=> b!3762970 (= res!1523655 (isBalanced!3537 (left!31073 (left!31073 (right!31403 (c!651313 acc!400))))))))

(declare-fun b!3762971 () Bool)

(declare-fun res!1523654 () Bool)

(assert (=> b!3762971 (=> (not res!1523654) (not e!2327287))))

(assert (=> b!3762971 (= res!1523654 (not (isEmpty!23585 (left!31073 (left!31073 (right!31403 (c!651313 acc!400)))))))))

(declare-fun b!3762972 () Bool)

(assert (=> b!3762972 (= e!2327286 e!2327287)))

(declare-fun res!1523657 () Bool)

(assert (=> b!3762972 (=> (not res!1523657) (not e!2327287))))

(assert (=> b!3762972 (= res!1523657 (<= (- 1) (- (height!1755 (left!31073 (left!31073 (right!31403 (c!651313 acc!400))))) (height!1755 (right!31403 (left!31073 (right!31403 (c!651313 acc!400))))))))))

(assert (= (and d!1099572 (not res!1523653)) b!3762972))

(assert (= (and b!3762972 res!1523657) b!3762967))

(assert (= (and b!3762967 res!1523658) b!3762970))

(assert (= (and b!3762970 res!1523655) b!3762969))

(assert (= (and b!3762969 res!1523656) b!3762971))

(assert (= (and b!3762971 res!1523654) b!3762968))

(declare-fun m!4257935 () Bool)

(assert (=> b!3762970 m!4257935))

(declare-fun m!4257939 () Bool)

(assert (=> b!3762969 m!4257939))

(declare-fun m!4257941 () Bool)

(assert (=> b!3762971 m!4257941))

(declare-fun m!4257943 () Bool)

(assert (=> b!3762972 m!4257943))

(declare-fun m!4257945 () Bool)

(assert (=> b!3762972 m!4257945))

(assert (=> b!3762967 m!4257943))

(assert (=> b!3762967 m!4257945))

(declare-fun m!4257949 () Bool)

(assert (=> b!3762968 m!4257949))

(assert (=> b!3762105 d!1099572))

(declare-fun b!3762973 () Bool)

(declare-fun res!1523664 () Bool)

(declare-fun e!2327289 () Bool)

(assert (=> b!3762973 (=> (not res!1523664) (not e!2327289))))

(assert (=> b!3762973 (= res!1523664 (<= (- (height!1755 (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))) (height!1755 (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))) 1))))

(declare-fun b!3762974 () Bool)

(assert (=> b!3762974 (= e!2327289 (not (isEmpty!23585 (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))))))

(declare-fun b!3762975 () Bool)

(declare-fun res!1523662 () Bool)

(assert (=> b!3762975 (=> (not res!1523662) (not e!2327289))))

(assert (=> b!3762975 (= res!1523662 (isBalanced!3537 (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))))))

(declare-fun d!1099574 () Bool)

(declare-fun res!1523659 () Bool)

(declare-fun e!2327288 () Bool)

(assert (=> d!1099574 (=> res!1523659 e!2327288)))

(assert (=> d!1099574 (= res!1523659 (not ((_ is Node!12298) (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))))))

(assert (=> d!1099574 (= (isBalanced!3537 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))) e!2327288)))

(declare-fun b!3762976 () Bool)

(declare-fun res!1523661 () Bool)

(assert (=> b!3762976 (=> (not res!1523661) (not e!2327289))))

(assert (=> b!3762976 (= res!1523661 (isBalanced!3537 (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))))))

(declare-fun b!3762977 () Bool)

(declare-fun res!1523660 () Bool)

(assert (=> b!3762977 (=> (not res!1523660) (not e!2327289))))

(assert (=> b!3762977 (= res!1523660 (not (isEmpty!23585 (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))))))

(declare-fun b!3762978 () Bool)

(assert (=> b!3762978 (= e!2327288 e!2327289)))

(declare-fun res!1523663 () Bool)

(assert (=> b!3762978 (=> (not res!1523663) (not e!2327289))))

(assert (=> b!3762978 (= res!1523663 (<= (- 1) (- (height!1755 (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))) (height!1755 (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))))))))

(assert (= (and d!1099574 (not res!1523659)) b!3762978))

(assert (= (and b!3762978 res!1523663) b!3762973))

(assert (= (and b!3762973 res!1523664) b!3762976))

(assert (= (and b!3762976 res!1523661) b!3762975))

(assert (= (and b!3762975 res!1523662) b!3762977))

(assert (= (and b!3762977 res!1523660) b!3762974))

(declare-fun m!4257957 () Bool)

(assert (=> b!3762976 m!4257957))

(declare-fun m!4257959 () Bool)

(assert (=> b!3762975 m!4257959))

(declare-fun m!4257961 () Bool)

(assert (=> b!3762977 m!4257961))

(declare-fun m!4257963 () Bool)

(assert (=> b!3762978 m!4257963))

(declare-fun m!4257965 () Bool)

(assert (=> b!3762978 m!4257965))

(assert (=> b!3762973 m!4257963))

(assert (=> b!3762973 m!4257965))

(declare-fun m!4257967 () Bool)

(assert (=> b!3762974 m!4257967))

(assert (=> d!1098910 d!1099574))

(declare-fun d!1099578 () Bool)

(assert (=> d!1099578 true))

(declare-fun lambda!125284 () Int)

(declare-fun order!21905 () Int)

(declare-fun order!21903 () Int)

(declare-fun dynLambda!17339 (Int Int) Int)

(declare-fun dynLambda!17340 (Int Int) Int)

(assert (=> d!1099578 (< (dynLambda!17339 order!21903 (toValue!8512 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (dynLambda!17340 order!21905 lambda!125284))))

(declare-fun Forall2!999 (Int) Bool)

(assert (=> d!1099578 (= (equivClasses!2533 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (toValue!8512 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (Forall2!999 lambda!125284))))

(declare-fun bs!575895 () Bool)

(assert (= bs!575895 d!1099578))

(declare-fun m!4258693 () Bool)

(assert (=> bs!575895 m!4258693))

(assert (=> b!3762048 d!1099578))

(declare-fun d!1099930 () Bool)

(declare-fun lt!1302405 () Int)

(assert (=> d!1099930 (>= lt!1302405 0)))

(declare-fun e!2327484 () Int)

(assert (=> d!1099930 (= lt!1302405 e!2327484)))

(declare-fun c!651833 () Bool)

(assert (=> d!1099930 (= c!651833 ((_ is Nil!40141) (t!303914 (list!14826 (xs!15505 (c!651315 v!6347))))))))

(assert (=> d!1099930 (= (size!30210 (t!303914 (list!14826 (xs!15505 (c!651315 v!6347))))) lt!1302405)))

(declare-fun b!3763365 () Bool)

(assert (=> b!3763365 (= e!2327484 0)))

(declare-fun b!3763366 () Bool)

(assert (=> b!3763366 (= e!2327484 (+ 1 (size!30210 (t!303914 (t!303914 (list!14826 (xs!15505 (c!651315 v!6347))))))))))

(assert (= (and d!1099930 c!651833) b!3763365))

(assert (= (and d!1099930 (not c!651833)) b!3763366))

(declare-fun m!4258695 () Bool)

(assert (=> b!3763366 m!4258695))

(assert (=> b!3762141 d!1099930))

(declare-fun d!1099932 () Bool)

(declare-fun lt!1302406 () Int)

(assert (=> d!1099932 (>= lt!1302406 0)))

(declare-fun e!2327485 () Int)

(assert (=> d!1099932 (= lt!1302406 e!2327485)))

(declare-fun c!651834 () Bool)

(assert (=> d!1099932 (= c!651834 ((_ is Nil!40139) (list!14819 (left!31073 (c!651313 acc!400)))))))

(assert (=> d!1099932 (= (size!30213 (list!14819 (left!31073 (c!651313 acc!400)))) lt!1302406)))

(declare-fun b!3763367 () Bool)

(assert (=> b!3763367 (= e!2327485 0)))

(declare-fun b!3763368 () Bool)

(assert (=> b!3763368 (= e!2327485 (+ 1 (size!30213 (t!303912 (list!14819 (left!31073 (c!651313 acc!400)))))))))

(assert (= (and d!1099932 c!651834) b!3763367))

(assert (= (and d!1099932 (not c!651834)) b!3763368))

(declare-fun m!4258697 () Bool)

(assert (=> b!3763368 m!4258697))

(assert (=> d!1098868 d!1099932))

(assert (=> d!1098868 d!1099072))

(declare-fun d!1099934 () Bool)

(declare-fun res!1523794 () Bool)

(declare-fun e!2327486 () Bool)

(assert (=> d!1099934 (=> (not res!1523794) (not e!2327486))))

(assert (=> d!1099934 (= res!1523794 (= (csize!24828 (left!31074 (left!31074 (c!651315 v!6347)))) (+ (size!30211 (left!31074 (left!31074 (left!31074 (c!651315 v!6347))))) (size!30211 (right!31404 (left!31074 (left!31074 (c!651315 v!6347))))))))))

(assert (=> d!1099934 (= (inv!53855 (left!31074 (left!31074 (c!651315 v!6347)))) e!2327486)))

(declare-fun b!3763369 () Bool)

(declare-fun res!1523795 () Bool)

(assert (=> b!3763369 (=> (not res!1523795) (not e!2327486))))

(assert (=> b!3763369 (= res!1523795 (and (not (= (left!31074 (left!31074 (left!31074 (c!651315 v!6347)))) Empty!12299)) (not (= (right!31404 (left!31074 (left!31074 (c!651315 v!6347)))) Empty!12299))))))

(declare-fun b!3763370 () Bool)

(declare-fun res!1523796 () Bool)

(assert (=> b!3763370 (=> (not res!1523796) (not e!2327486))))

(assert (=> b!3763370 (= res!1523796 (= (cheight!12510 (left!31074 (left!31074 (c!651315 v!6347)))) (+ (max!0 (height!1754 (left!31074 (left!31074 (left!31074 (c!651315 v!6347))))) (height!1754 (right!31404 (left!31074 (left!31074 (c!651315 v!6347)))))) 1)))))

(declare-fun b!3763371 () Bool)

(assert (=> b!3763371 (= e!2327486 (<= 0 (cheight!12510 (left!31074 (left!31074 (c!651315 v!6347))))))))

(assert (= (and d!1099934 res!1523794) b!3763369))

(assert (= (and b!3763369 res!1523795) b!3763370))

(assert (= (and b!3763370 res!1523796) b!3763371))

(declare-fun m!4258699 () Bool)

(assert (=> d!1099934 m!4258699))

(declare-fun m!4258701 () Bool)

(assert (=> d!1099934 m!4258701))

(assert (=> b!3763370 m!4257891))

(assert (=> b!3763370 m!4257893))

(assert (=> b!3763370 m!4257891))

(assert (=> b!3763370 m!4257893))

(declare-fun m!4258703 () Bool)

(assert (=> b!3763370 m!4258703))

(assert (=> b!3762281 d!1099934))

(declare-fun d!1099936 () Bool)

(assert (=> d!1099936 (= (isEmpty!23590 (list!14820 (left!31074 (c!651315 v!6347)))) ((_ is Nil!40141) (list!14820 (left!31074 (c!651315 v!6347)))))))

(assert (=> d!1099010 d!1099936))

(assert (=> d!1099010 d!1099100))

(assert (=> d!1099010 d!1098992))

(declare-fun d!1099938 () Bool)

(assert (=> d!1099938 (= (max!0 (height!1754 (left!31074 (left!31074 (c!651315 v!6347)))) (height!1754 (right!31404 (left!31074 (c!651315 v!6347))))) (ite (< (height!1754 (left!31074 (left!31074 (c!651315 v!6347)))) (height!1754 (right!31404 (left!31074 (c!651315 v!6347))))) (height!1754 (right!31404 (left!31074 (c!651315 v!6347)))) (height!1754 (left!31074 (left!31074 (c!651315 v!6347))))))))

(assert (=> b!3762179 d!1099938))

(declare-fun d!1099940 () Bool)

(assert (=> d!1099940 (= (height!1754 (left!31074 (left!31074 (c!651315 v!6347)))) (ite ((_ is Empty!12299) (left!31074 (left!31074 (c!651315 v!6347)))) 0 (ite ((_ is Leaf!19075) (left!31074 (left!31074 (c!651315 v!6347)))) 1 (cheight!12510 (left!31074 (left!31074 (c!651315 v!6347)))))))))

(assert (=> b!3762179 d!1099940))

(declare-fun d!1099942 () Bool)

(assert (=> d!1099942 (= (height!1754 (right!31404 (left!31074 (c!651315 v!6347)))) (ite ((_ is Empty!12299) (right!31404 (left!31074 (c!651315 v!6347)))) 0 (ite ((_ is Leaf!19075) (right!31404 (left!31074 (c!651315 v!6347)))) 1 (cheight!12510 (right!31404 (left!31074 (c!651315 v!6347)))))))))

(assert (=> b!3762179 d!1099942))

(declare-fun d!1099944 () Bool)

(declare-fun c!651835 () Bool)

(assert (=> d!1099944 (= c!651835 ((_ is Node!12298) (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))))

(declare-fun e!2327487 () Bool)

(assert (=> d!1099944 (= (inv!53851 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) e!2327487)))

(declare-fun b!3763372 () Bool)

(assert (=> b!3763372 (= e!2327487 (inv!53859 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))))

(declare-fun b!3763373 () Bool)

(declare-fun e!2327488 () Bool)

(assert (=> b!3763373 (= e!2327487 e!2327488)))

(declare-fun res!1523797 () Bool)

(assert (=> b!3763373 (= res!1523797 (not ((_ is Leaf!19074) (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))))))

(assert (=> b!3763373 (=> res!1523797 e!2327488)))

(declare-fun b!3763374 () Bool)

(assert (=> b!3763374 (= e!2327488 (inv!53860 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))))

(assert (= (and d!1099944 c!651835) b!3763372))

(assert (= (and d!1099944 (not c!651835)) b!3763373))

(assert (= (and b!3763373 (not res!1523797)) b!3763374))

(declare-fun m!4258705 () Bool)

(assert (=> b!3763372 m!4258705))

(declare-fun m!4258707 () Bool)

(assert (=> b!3763374 m!4258707))

(assert (=> b!3762058 d!1099944))

(declare-fun b!3763375 () Bool)

(declare-fun e!2327493 () Int)

(declare-fun call!275430 () Int)

(assert (=> b!3763375 (= e!2327493 call!275430)))

(declare-fun b!3763376 () Bool)

(declare-fun e!2327491 () Int)

(assert (=> b!3763376 (= e!2327491 0)))

(declare-fun b!3763377 () Bool)

(declare-fun e!2327492 () List!40265)

(assert (=> b!3763377 (= e!2327492 (t!303914 (t!303914 (list!14820 (c!651315 v!6347)))))))

(declare-fun d!1099946 () Bool)

(declare-fun e!2327490 () Bool)

(assert (=> d!1099946 e!2327490))

(declare-fun res!1523798 () Bool)

(assert (=> d!1099946 (=> (not res!1523798) (not e!2327490))))

(declare-fun lt!1302407 () List!40265)

(assert (=> d!1099946 (= res!1523798 (= ((_ map implies) (content!5892 lt!1302407) (content!5892 (t!303914 (t!303914 (list!14820 (c!651315 v!6347)))))) ((as const (InoxSet Token!11450)) true)))))

(declare-fun e!2327489 () List!40265)

(assert (=> d!1099946 (= lt!1302407 e!2327489)))

(declare-fun c!651837 () Bool)

(assert (=> d!1099946 (= c!651837 ((_ is Nil!40141) (t!303914 (t!303914 (list!14820 (c!651315 v!6347))))))))

(assert (=> d!1099946 (= (drop!2101 (t!303914 (t!303914 (list!14820 (c!651315 v!6347)))) (- (- from!841 1) 1)) lt!1302407)))

(declare-fun b!3763378 () Bool)

(assert (=> b!3763378 (= e!2327492 (drop!2101 (t!303914 (t!303914 (t!303914 (list!14820 (c!651315 v!6347))))) (- (- (- from!841 1) 1) 1)))))

(declare-fun b!3763379 () Bool)

(assert (=> b!3763379 (= e!2327489 e!2327492)))

(declare-fun c!651838 () Bool)

(assert (=> b!3763379 (= c!651838 (<= (- (- from!841 1) 1) 0))))

(declare-fun b!3763380 () Bool)

(assert (=> b!3763380 (= e!2327493 e!2327491)))

(declare-fun c!651839 () Bool)

(assert (=> b!3763380 (= c!651839 (>= (- (- from!841 1) 1) call!275430))))

(declare-fun b!3763381 () Bool)

(assert (=> b!3763381 (= e!2327489 Nil!40141)))

(declare-fun b!3763382 () Bool)

(assert (=> b!3763382 (= e!2327491 (- call!275430 (- (- from!841 1) 1)))))

(declare-fun b!3763383 () Bool)

(assert (=> b!3763383 (= e!2327490 (= (size!30210 lt!1302407) e!2327493))))

(declare-fun c!651836 () Bool)

(assert (=> b!3763383 (= c!651836 (<= (- (- from!841 1) 1) 0))))

(declare-fun bm!275425 () Bool)

(assert (=> bm!275425 (= call!275430 (size!30210 (t!303914 (t!303914 (list!14820 (c!651315 v!6347))))))))

(assert (= (and d!1099946 c!651837) b!3763381))

(assert (= (and d!1099946 (not c!651837)) b!3763379))

(assert (= (and b!3763379 c!651838) b!3763377))

(assert (= (and b!3763379 (not c!651838)) b!3763378))

(assert (= (and d!1099946 res!1523798) b!3763383))

(assert (= (and b!3763383 c!651836) b!3763375))

(assert (= (and b!3763383 (not c!651836)) b!3763380))

(assert (= (and b!3763380 c!651839) b!3763376))

(assert (= (and b!3763380 (not c!651839)) b!3763382))

(assert (= (or b!3763375 b!3763380 b!3763382) bm!275425))

(declare-fun m!4258709 () Bool)

(assert (=> d!1099946 m!4258709))

(assert (=> d!1099946 m!4257475))

(declare-fun m!4258711 () Bool)

(assert (=> b!3763378 m!4258711))

(declare-fun m!4258713 () Bool)

(assert (=> b!3763383 m!4258713))

(assert (=> bm!275425 m!4257711))

(assert (=> b!3762014 d!1099946))

(declare-fun d!1099948 () Bool)

(assert (=> d!1099948 (= (inv!53865 (xs!15504 (left!31073 (left!31073 (c!651313 acc!400))))) (<= (size!30213 (innerList!12358 (xs!15504 (left!31073 (left!31073 (c!651313 acc!400)))))) 2147483647))))

(declare-fun bs!575896 () Bool)

(assert (= bs!575896 d!1099948))

(declare-fun m!4258715 () Bool)

(assert (=> bs!575896 m!4258715))

(assert (=> b!3762346 d!1099948))

(assert (=> b!3761955 d!1099088))

(assert (=> b!3761955 d!1099090))

(declare-fun b!3763384 () Bool)

(declare-fun e!2327495 () Bool)

(declare-fun e!2327494 () Bool)

(assert (=> b!3763384 (= e!2327495 e!2327494)))

(declare-fun res!1523804 () Bool)

(assert (=> b!3763384 (=> (not res!1523804) (not e!2327494))))

(assert (=> b!3763384 (= res!1523804 (<= (- 1) (- (height!1754 (left!31074 (right!31404 (right!31404 (c!651315 v!6347))))) (height!1754 (right!31404 (right!31404 (right!31404 (c!651315 v!6347))))))))))

(declare-fun b!3763385 () Bool)

(declare-fun res!1523803 () Bool)

(assert (=> b!3763385 (=> (not res!1523803) (not e!2327494))))

(assert (=> b!3763385 (= res!1523803 (not (isEmpty!23583 (left!31074 (right!31404 (right!31404 (c!651315 v!6347)))))))))

(declare-fun d!1099950 () Bool)

(declare-fun res!1523800 () Bool)

(assert (=> d!1099950 (=> res!1523800 e!2327495)))

(assert (=> d!1099950 (= res!1523800 (not ((_ is Node!12299) (right!31404 (right!31404 (c!651315 v!6347))))))))

(assert (=> d!1099950 (= (isBalanced!3538 (right!31404 (right!31404 (c!651315 v!6347)))) e!2327495)))

(declare-fun b!3763386 () Bool)

(declare-fun res!1523799 () Bool)

(assert (=> b!3763386 (=> (not res!1523799) (not e!2327494))))

(assert (=> b!3763386 (= res!1523799 (isBalanced!3538 (right!31404 (right!31404 (right!31404 (c!651315 v!6347))))))))

(declare-fun b!3763387 () Bool)

(declare-fun res!1523802 () Bool)

(assert (=> b!3763387 (=> (not res!1523802) (not e!2327494))))

(assert (=> b!3763387 (= res!1523802 (isBalanced!3538 (left!31074 (right!31404 (right!31404 (c!651315 v!6347))))))))

(declare-fun b!3763388 () Bool)

(declare-fun res!1523801 () Bool)

(assert (=> b!3763388 (=> (not res!1523801) (not e!2327494))))

(assert (=> b!3763388 (= res!1523801 (<= (- (height!1754 (left!31074 (right!31404 (right!31404 (c!651315 v!6347))))) (height!1754 (right!31404 (right!31404 (right!31404 (c!651315 v!6347)))))) 1))))

(declare-fun b!3763389 () Bool)

(assert (=> b!3763389 (= e!2327494 (not (isEmpty!23583 (right!31404 (right!31404 (right!31404 (c!651315 v!6347)))))))))

(assert (= (and d!1099950 (not res!1523800)) b!3763384))

(assert (= (and b!3763384 res!1523804) b!3763388))

(assert (= (and b!3763388 res!1523801) b!3763387))

(assert (= (and b!3763387 res!1523802) b!3763386))

(assert (= (and b!3763386 res!1523799) b!3763385))

(assert (= (and b!3763385 res!1523803) b!3763389))

(declare-fun m!4258717 () Bool)

(assert (=> b!3763387 m!4258717))

(declare-fun m!4258719 () Bool)

(assert (=> b!3763386 m!4258719))

(declare-fun m!4258721 () Bool)

(assert (=> b!3763389 m!4258721))

(assert (=> b!3763388 m!4257521))

(assert (=> b!3763388 m!4257523))

(assert (=> b!3763384 m!4257521))

(assert (=> b!3763384 m!4257523))

(declare-fun m!4258723 () Bool)

(assert (=> b!3763385 m!4258723))

(assert (=> b!3762022 d!1099950))

(assert (=> b!3762152 d!1099940))

(assert (=> b!3762152 d!1099942))

(declare-fun d!1099952 () Bool)

(declare-fun c!651840 () Bool)

(assert (=> d!1099952 (= c!651840 ((_ is Nil!40139) (t!303912 lt!1302118)))))

(declare-fun e!2327496 () (InoxSet C!22308))

(assert (=> d!1099952 (= (content!5894 (t!303912 lt!1302118)) e!2327496)))

(declare-fun b!3763390 () Bool)

(assert (=> b!3763390 (= e!2327496 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763391 () Bool)

(assert (=> b!3763391 (= e!2327496 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (t!303912 lt!1302118)) true) (content!5894 (t!303912 (t!303912 lt!1302118)))))))

(assert (= (and d!1099952 c!651840) b!3763390))

(assert (= (and d!1099952 (not c!651840)) b!3763391))

(declare-fun m!4258725 () Bool)

(assert (=> b!3763391 m!4258725))

(declare-fun m!4258727 () Bool)

(assert (=> b!3763391 m!4258727))

(assert (=> b!3762192 d!1099952))

(declare-fun d!1099954 () Bool)

(declare-fun res!1523805 () Bool)

(declare-fun e!2327497 () Bool)

(assert (=> d!1099954 (=> (not res!1523805) (not e!2327497))))

(assert (=> d!1099954 (= res!1523805 (= (csize!24826 (left!31073 (right!31403 (c!651313 acc!400)))) (+ (size!30214 (left!31073 (left!31073 (right!31403 (c!651313 acc!400))))) (size!30214 (right!31403 (left!31073 (right!31403 (c!651313 acc!400))))))))))

(assert (=> d!1099954 (= (inv!53859 (left!31073 (right!31403 (c!651313 acc!400)))) e!2327497)))

(declare-fun b!3763392 () Bool)

(declare-fun res!1523806 () Bool)

(assert (=> b!3763392 (=> (not res!1523806) (not e!2327497))))

(assert (=> b!3763392 (= res!1523806 (and (not (= (left!31073 (left!31073 (right!31403 (c!651313 acc!400)))) Empty!12298)) (not (= (right!31403 (left!31073 (right!31403 (c!651313 acc!400)))) Empty!12298))))))

(declare-fun b!3763393 () Bool)

(declare-fun res!1523807 () Bool)

(assert (=> b!3763393 (=> (not res!1523807) (not e!2327497))))

(assert (=> b!3763393 (= res!1523807 (= (cheight!12509 (left!31073 (right!31403 (c!651313 acc!400)))) (+ (max!0 (height!1755 (left!31073 (left!31073 (right!31403 (c!651313 acc!400))))) (height!1755 (right!31403 (left!31073 (right!31403 (c!651313 acc!400)))))) 1)))))

(declare-fun b!3763394 () Bool)

(assert (=> b!3763394 (= e!2327497 (<= 0 (cheight!12509 (left!31073 (right!31403 (c!651313 acc!400))))))))

(assert (= (and d!1099954 res!1523805) b!3763392))

(assert (= (and b!3763392 res!1523806) b!3763393))

(assert (= (and b!3763393 res!1523807) b!3763394))

(declare-fun m!4258729 () Bool)

(assert (=> d!1099954 m!4258729))

(declare-fun m!4258731 () Bool)

(assert (=> d!1099954 m!4258731))

(assert (=> b!3763393 m!4257943))

(assert (=> b!3763393 m!4257945))

(assert (=> b!3763393 m!4257943))

(assert (=> b!3763393 m!4257945))

(declare-fun m!4258733 () Bool)

(assert (=> b!3763393 m!4258733))

(assert (=> b!3762128 d!1099954))

(declare-fun d!1099956 () Bool)

(declare-fun c!651841 () Bool)

(assert (=> d!1099956 (= c!651841 ((_ is Nil!40139) (t!303912 lt!1302122)))))

(declare-fun e!2327498 () (InoxSet C!22308))

(assert (=> d!1099956 (= (content!5894 (t!303912 lt!1302122)) e!2327498)))

(declare-fun b!3763395 () Bool)

(assert (=> b!3763395 (= e!2327498 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763396 () Bool)

(assert (=> b!3763396 (= e!2327498 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (t!303912 lt!1302122)) true) (content!5894 (t!303912 (t!303912 lt!1302122)))))))

(assert (= (and d!1099956 c!651841) b!3763395))

(assert (= (and d!1099956 (not c!651841)) b!3763396))

(declare-fun m!4258735 () Bool)

(assert (=> b!3763396 m!4258735))

(declare-fun m!4258737 () Bool)

(assert (=> b!3763396 m!4258737))

(assert (=> b!3762117 d!1099956))

(declare-fun d!1099958 () Bool)

(declare-fun charsToInt!0 (List!40264) (_ BitVec 32))

(assert (=> d!1099958 (= (inv!16 (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))) (= (charsToInt!0 (text!45149 (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196044 (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))))

(declare-fun bs!575897 () Bool)

(assert (= bs!575897 d!1099958))

(declare-fun m!4258739 () Bool)

(assert (=> bs!575897 m!4258739))

(assert (=> b!3762171 d!1099958))

(declare-fun d!1099960 () Bool)

(declare-fun lt!1302408 () Int)

(assert (=> d!1099960 (>= lt!1302408 0)))

(declare-fun e!2327499 () Int)

(assert (=> d!1099960 (= lt!1302408 e!2327499)))

(declare-fun c!651842 () Bool)

(assert (=> d!1099960 (= c!651842 ((_ is Nil!40139) (t!303912 (printList!1661 thiss!13650 lt!1302052))))))

(assert (=> d!1099960 (= (size!30213 (t!303912 (printList!1661 thiss!13650 lt!1302052))) lt!1302408)))

(declare-fun b!3763397 () Bool)

(assert (=> b!3763397 (= e!2327499 0)))

(declare-fun b!3763398 () Bool)

(assert (=> b!3763398 (= e!2327499 (+ 1 (size!30213 (t!303912 (t!303912 (printList!1661 thiss!13650 lt!1302052))))))))

(assert (= (and d!1099960 c!651842) b!3763397))

(assert (= (and d!1099960 (not c!651842)) b!3763398))

(declare-fun m!4258741 () Bool)

(assert (=> b!3763398 m!4258741))

(assert (=> b!3762071 d!1099960))

(declare-fun b!3763401 () Bool)

(declare-fun res!1523809 () Bool)

(declare-fun e!2327500 () Bool)

(assert (=> b!3763401 (=> (not res!1523809) (not e!2327500))))

(declare-fun lt!1302409 () List!40263)

(assert (=> b!3763401 (= res!1523809 (= (size!30213 lt!1302409) (+ (size!30213 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))) (size!30213 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))))

(declare-fun d!1099962 () Bool)

(assert (=> d!1099962 e!2327500))

(declare-fun res!1523808 () Bool)

(assert (=> d!1099962 (=> (not res!1523808) (not e!2327500))))

(assert (=> d!1099962 (= res!1523808 (= (content!5894 lt!1302409) ((_ map or) (content!5894 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))) (content!5894 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))))

(declare-fun e!2327501 () List!40263)

(assert (=> d!1099962 (= lt!1302409 e!2327501)))

(declare-fun c!651843 () Bool)

(assert (=> d!1099962 (= c!651843 ((_ is Nil!40139) (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(assert (=> d!1099962 (= (++!9954 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) lt!1302409)))

(declare-fun b!3763399 () Bool)

(assert (=> b!3763399 (= e!2327501 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))))

(declare-fun b!3763400 () Bool)

(assert (=> b!3763400 (= e!2327501 (Cons!40139 (h!45559 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))) (++!9954 (t!303912 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))))))

(declare-fun b!3763402 () Bool)

(assert (=> b!3763402 (= e!2327500 (or (not (= (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))) Nil!40139)) (= lt!1302409 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))))

(assert (= (and d!1099962 c!651843) b!3763399))

(assert (= (and d!1099962 (not c!651843)) b!3763400))

(assert (= (and d!1099962 res!1523808) b!3763401))

(assert (= (and b!3763401 res!1523809) b!3763402))

(declare-fun m!4258743 () Bool)

(assert (=> b!3763401 m!4258743))

(assert (=> b!3763401 m!4257777))

(assert (=> b!3763401 m!4255933))

(assert (=> b!3763401 m!4256589))

(declare-fun m!4258745 () Bool)

(assert (=> d!1099962 m!4258745))

(assert (=> d!1099962 m!4257499))

(assert (=> d!1099962 m!4255933))

(assert (=> d!1099962 m!4256593))

(assert (=> b!3763400 m!4255933))

(declare-fun m!4258747 () Bool)

(assert (=> b!3763400 m!4258747))

(assert (=> b!3762210 d!1099962))

(assert (=> b!3762033 d!1099440))

(declare-fun d!1099964 () Bool)

(declare-fun lt!1302410 () Int)

(assert (=> d!1099964 (>= lt!1302410 0)))

(declare-fun e!2327502 () Int)

(assert (=> d!1099964 (= lt!1302410 e!2327502)))

(declare-fun c!651844 () Bool)

(assert (=> d!1099964 (= c!651844 ((_ is Nil!40139) lt!1302195))))

(assert (=> d!1099964 (= (size!30213 lt!1302195) lt!1302410)))

(declare-fun b!3763403 () Bool)

(assert (=> b!3763403 (= e!2327502 0)))

(declare-fun b!3763404 () Bool)

(assert (=> b!3763404 (= e!2327502 (+ 1 (size!30213 (t!303912 lt!1302195))))))

(assert (= (and d!1099964 c!651844) b!3763403))

(assert (= (and d!1099964 (not c!651844)) b!3763404))

(declare-fun m!4258749 () Bool)

(assert (=> b!3763404 m!4258749))

(assert (=> b!3762219 d!1099964))

(declare-fun d!1099966 () Bool)

(declare-fun lt!1302411 () Int)

(assert (=> d!1099966 (>= lt!1302411 0)))

(declare-fun e!2327503 () Int)

(assert (=> d!1099966 (= lt!1302411 e!2327503)))

(declare-fun c!651845 () Bool)

(assert (=> d!1099966 (= c!651845 ((_ is Nil!40139) lt!1302108))))

(assert (=> d!1099966 (= (size!30213 lt!1302108) lt!1302411)))

(declare-fun b!3763405 () Bool)

(assert (=> b!3763405 (= e!2327503 0)))

(declare-fun b!3763406 () Bool)

(assert (=> b!3763406 (= e!2327503 (+ 1 (size!30213 (t!303912 lt!1302108))))))

(assert (= (and d!1099966 c!651845) b!3763405))

(assert (= (and d!1099966 (not c!651845)) b!3763406))

(declare-fun m!4258751 () Bool)

(assert (=> b!3763406 m!4258751))

(assert (=> b!3762219 d!1099966))

(assert (=> b!3762219 d!1099560))

(declare-fun d!1099968 () Bool)

(declare-fun lt!1302412 () Int)

(assert (=> d!1099968 (>= lt!1302412 0)))

(declare-fun e!2327504 () Int)

(assert (=> d!1099968 (= lt!1302412 e!2327504)))

(declare-fun c!651846 () Bool)

(assert (=> d!1099968 (= c!651846 ((_ is Nil!40139) (innerList!12358 (xs!15504 (right!31403 (c!651313 acc!400))))))))

(assert (=> d!1099968 (= (size!30213 (innerList!12358 (xs!15504 (right!31403 (c!651313 acc!400))))) lt!1302412)))

(declare-fun b!3763407 () Bool)

(assert (=> b!3763407 (= e!2327504 0)))

(declare-fun b!3763408 () Bool)

(assert (=> b!3763408 (= e!2327504 (+ 1 (size!30213 (t!303912 (innerList!12358 (xs!15504 (right!31403 (c!651313 acc!400))))))))))

(assert (= (and d!1099968 c!651846) b!3763407))

(assert (= (and d!1099968 (not c!651846)) b!3763408))

(declare-fun m!4258753 () Bool)

(assert (=> b!3763408 m!4258753))

(assert (=> d!1099108 d!1099968))

(declare-fun d!1099970 () Bool)

(declare-fun c!651848 () Bool)

(assert (=> d!1099970 (= c!651848 ((_ is IntegerValue!19158) (value!196053 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))))

(declare-fun e!2327506 () Bool)

(assert (=> d!1099970 (= (inv!21 (value!196053 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))) e!2327506)))

(declare-fun b!3763409 () Bool)

(assert (=> b!3763409 (= e!2327506 (inv!16 (value!196053 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))))

(declare-fun b!3763410 () Bool)

(declare-fun res!1523810 () Bool)

(declare-fun e!2327507 () Bool)

(assert (=> b!3763410 (=> res!1523810 e!2327507)))

(assert (=> b!3763410 (= res!1523810 (not ((_ is IntegerValue!19160) (value!196053 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))))))

(declare-fun e!2327505 () Bool)

(assert (=> b!3763410 (= e!2327505 e!2327507)))

(declare-fun b!3763411 () Bool)

(assert (=> b!3763411 (= e!2327505 (inv!17 (value!196053 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))))

(declare-fun b!3763412 () Bool)

(assert (=> b!3763412 (= e!2327507 (inv!15 (value!196053 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))))

(declare-fun b!3763413 () Bool)

(assert (=> b!3763413 (= e!2327506 e!2327505)))

(declare-fun c!651847 () Bool)

(assert (=> b!3763413 (= c!651847 ((_ is IntegerValue!19159) (value!196053 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))))

(assert (= (and d!1099970 c!651848) b!3763409))

(assert (= (and d!1099970 (not c!651848)) b!3763413))

(assert (= (and b!3763413 c!651847) b!3763411))

(assert (= (and b!3763413 (not c!651847)) b!3763410))

(assert (= (and b!3763410 (not res!1523810)) b!3763412))

(declare-fun m!4258755 () Bool)

(assert (=> b!3763409 m!4258755))

(declare-fun m!4258757 () Bool)

(assert (=> b!3763411 m!4258757))

(declare-fun m!4258759 () Bool)

(assert (=> b!3763412 m!4258759))

(assert (=> b!3762365 d!1099970))

(assert (=> b!3762148 d!1099940))

(assert (=> b!3762148 d!1099942))

(declare-fun d!1099972 () Bool)

(assert (=> d!1099972 (= (list!14816 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (list!14819 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))))

(declare-fun bs!575898 () Bool)

(assert (= bs!575898 d!1099972))

(declare-fun m!4258761 () Bool)

(assert (=> bs!575898 m!4258761))

(assert (=> b!3762056 d!1099972))

(declare-fun d!1099974 () Bool)

(assert (=> d!1099974 (= (inv!53852 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))) (value!196053 (h!45561 (t!303914 lt!1302052))))) (isBalanced!3537 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))) (value!196053 (h!45561 (t!303914 lt!1302052)))))))))

(declare-fun bs!575899 () Bool)

(assert (= bs!575899 d!1099974))

(declare-fun m!4258763 () Bool)

(assert (=> bs!575899 m!4258763))

(assert (=> tb!215259 d!1099974))

(declare-fun b!3763416 () Bool)

(declare-fun res!1523812 () Bool)

(declare-fun e!2327508 () Bool)

(assert (=> b!3763416 (=> (not res!1523812) (not e!2327508))))

(declare-fun lt!1302413 () List!40263)

(assert (=> b!3763416 (= res!1523812 (= (size!30213 lt!1302413) (+ (size!30213 (t!303912 (list!14819 (left!31073 (c!651313 acc!400))))) (size!30213 (list!14819 (right!31403 (c!651313 acc!400)))))))))

(declare-fun d!1099976 () Bool)

(assert (=> d!1099976 e!2327508))

(declare-fun res!1523811 () Bool)

(assert (=> d!1099976 (=> (not res!1523811) (not e!2327508))))

(assert (=> d!1099976 (= res!1523811 (= (content!5894 lt!1302413) ((_ map or) (content!5894 (t!303912 (list!14819 (left!31073 (c!651313 acc!400))))) (content!5894 (list!14819 (right!31403 (c!651313 acc!400)))))))))

(declare-fun e!2327509 () List!40263)

(assert (=> d!1099976 (= lt!1302413 e!2327509)))

(declare-fun c!651849 () Bool)

(assert (=> d!1099976 (= c!651849 ((_ is Nil!40139) (t!303912 (list!14819 (left!31073 (c!651313 acc!400))))))))

(assert (=> d!1099976 (= (++!9954 (t!303912 (list!14819 (left!31073 (c!651313 acc!400)))) (list!14819 (right!31403 (c!651313 acc!400)))) lt!1302413)))

(declare-fun b!3763414 () Bool)

(assert (=> b!3763414 (= e!2327509 (list!14819 (right!31403 (c!651313 acc!400))))))

(declare-fun b!3763415 () Bool)

(assert (=> b!3763415 (= e!2327509 (Cons!40139 (h!45559 (t!303912 (list!14819 (left!31073 (c!651313 acc!400))))) (++!9954 (t!303912 (t!303912 (list!14819 (left!31073 (c!651313 acc!400))))) (list!14819 (right!31403 (c!651313 acc!400))))))))

(declare-fun b!3763417 () Bool)

(assert (=> b!3763417 (= e!2327508 (or (not (= (list!14819 (right!31403 (c!651313 acc!400))) Nil!40139)) (= lt!1302413 (t!303912 (list!14819 (left!31073 (c!651313 acc!400)))))))))

(assert (= (and d!1099976 c!651849) b!3763414))

(assert (= (and d!1099976 (not c!651849)) b!3763415))

(assert (= (and d!1099976 res!1523811) b!3763416))

(assert (= (and b!3763416 res!1523812) b!3763417))

(declare-fun m!4258765 () Bool)

(assert (=> b!3763416 m!4258765))

(assert (=> b!3763416 m!4258697))

(assert (=> b!3763416 m!4255787))

(assert (=> b!3763416 m!4256243))

(declare-fun m!4258767 () Bool)

(assert (=> d!1099976 m!4258767))

(declare-fun m!4258769 () Bool)

(assert (=> d!1099976 m!4258769))

(assert (=> d!1099976 m!4255787))

(assert (=> d!1099976 m!4256671))

(assert (=> b!3763415 m!4255787))

(declare-fun m!4258771 () Bool)

(assert (=> b!3763415 m!4258771))

(assert (=> b!3762248 d!1099976))

(declare-fun d!1099978 () Bool)

(declare-fun lt!1302414 () Int)

(assert (=> d!1099978 (>= lt!1302414 0)))

(declare-fun e!2327510 () Int)

(assert (=> d!1099978 (= lt!1302414 e!2327510)))

(declare-fun c!651850 () Bool)

(assert (=> d!1099978 (= c!651850 ((_ is Nil!40139) (t!303912 (innerList!12358 (xs!15504 (c!651313 acc!400))))))))

(assert (=> d!1099978 (= (size!30213 (t!303912 (innerList!12358 (xs!15504 (c!651313 acc!400))))) lt!1302414)))

(declare-fun b!3763418 () Bool)

(assert (=> b!3763418 (= e!2327510 0)))

(declare-fun b!3763419 () Bool)

(assert (=> b!3763419 (= e!2327510 (+ 1 (size!30213 (t!303912 (t!303912 (innerList!12358 (xs!15504 (c!651313 acc!400))))))))))

(assert (= (and d!1099978 c!651850) b!3763418))

(assert (= (and d!1099978 (not c!651850)) b!3763419))

(declare-fun m!4258773 () Bool)

(assert (=> b!3763419 m!4258773))

(assert (=> b!3762274 d!1099978))

(declare-fun d!1099980 () Bool)

(declare-fun res!1523813 () Bool)

(declare-fun e!2327511 () Bool)

(assert (=> d!1099980 (=> (not res!1523813) (not e!2327511))))

(assert (=> d!1099980 (= res!1523813 (<= (size!30213 (list!14824 (xs!15504 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))) 512))))

(assert (=> d!1099980 (= (inv!53860 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))) e!2327511)))

(declare-fun b!3763420 () Bool)

(declare-fun res!1523814 () Bool)

(assert (=> b!3763420 (=> (not res!1523814) (not e!2327511))))

(assert (=> b!3763420 (= res!1523814 (= (csize!24827 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))) (size!30213 (list!14824 (xs!15504 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))))))))

(declare-fun b!3763421 () Bool)

(assert (=> b!3763421 (= e!2327511 (and (> (csize!24827 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))) 0) (<= (csize!24827 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))) 512)))))

(assert (= (and d!1099980 res!1523813) b!3763420))

(assert (= (and b!3763420 res!1523814) b!3763421))

(declare-fun m!4258775 () Bool)

(assert (=> d!1099980 m!4258775))

(assert (=> d!1099980 m!4258775))

(declare-fun m!4258777 () Bool)

(assert (=> d!1099980 m!4258777))

(assert (=> b!3763420 m!4258775))

(assert (=> b!3763420 m!4258775))

(assert (=> b!3763420 m!4258777))

(assert (=> b!3762067 d!1099980))

(assert (=> b!3762261 d!1099358))

(declare-fun d!1099982 () Bool)

(declare-fun c!651851 () Bool)

(assert (=> d!1099982 (= c!651851 ((_ is Nil!40139) lt!1302193))))

(declare-fun e!2327512 () (InoxSet C!22308))

(assert (=> d!1099982 (= (content!5894 lt!1302193) e!2327512)))

(declare-fun b!3763422 () Bool)

(assert (=> b!3763422 (= e!2327512 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763423 () Bool)

(assert (=> b!3763423 (= e!2327512 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302193) true) (content!5894 (t!303912 lt!1302193))))))

(assert (= (and d!1099982 c!651851) b!3763422))

(assert (= (and d!1099982 (not c!651851)) b!3763423))

(declare-fun m!4258779 () Bool)

(assert (=> b!3763423 m!4258779))

(declare-fun m!4258781 () Bool)

(assert (=> b!3763423 m!4258781))

(assert (=> d!1099042 d!1099982))

(assert (=> d!1099042 d!1099364))

(declare-fun d!1099984 () Bool)

(declare-fun c!651852 () Bool)

(assert (=> d!1099984 (= c!651852 ((_ is Nil!40139) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))

(declare-fun e!2327513 () (InoxSet C!22308))

(assert (=> d!1099984 (= (content!5894 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) e!2327513)))

(declare-fun b!3763424 () Bool)

(assert (=> b!3763424 (= e!2327513 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763425 () Bool)

(assert (=> b!3763425 (= e!2327513 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) true) (content!5894 (t!303912 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))))

(assert (= (and d!1099984 c!651852) b!3763424))

(assert (= (and d!1099984 (not c!651852)) b!3763425))

(declare-fun m!4258783 () Bool)

(assert (=> b!3763425 m!4258783))

(assert (=> b!3763425 m!4257653))

(assert (=> d!1099042 d!1099984))

(declare-fun d!1099986 () Bool)

(declare-fun c!651854 () Bool)

(assert (=> d!1099986 (= c!651854 ((_ is IntegerValue!19158) (value!196053 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))))

(declare-fun e!2327515 () Bool)

(assert (=> d!1099986 (= (inv!21 (value!196053 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))) e!2327515)))

(declare-fun b!3763426 () Bool)

(assert (=> b!3763426 (= e!2327515 (inv!16 (value!196053 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))))

(declare-fun b!3763427 () Bool)

(declare-fun res!1523815 () Bool)

(declare-fun e!2327516 () Bool)

(assert (=> b!3763427 (=> res!1523815 e!2327516)))

(assert (=> b!3763427 (= res!1523815 (not ((_ is IntegerValue!19160) (value!196053 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))))))

(declare-fun e!2327514 () Bool)

(assert (=> b!3763427 (= e!2327514 e!2327516)))

(declare-fun b!3763428 () Bool)

(assert (=> b!3763428 (= e!2327514 (inv!17 (value!196053 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))))

(declare-fun b!3763429 () Bool)

(assert (=> b!3763429 (= e!2327516 (inv!15 (value!196053 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))))

(declare-fun b!3763430 () Bool)

(assert (=> b!3763430 (= e!2327515 e!2327514)))

(declare-fun c!651853 () Bool)

(assert (=> b!3763430 (= c!651853 ((_ is IntegerValue!19159) (value!196053 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))))

(assert (= (and d!1099986 c!651854) b!3763426))

(assert (= (and d!1099986 (not c!651854)) b!3763430))

(assert (= (and b!3763430 c!651853) b!3763428))

(assert (= (and b!3763430 (not c!651853)) b!3763427))

(assert (= (and b!3763427 (not res!1523815)) b!3763429))

(declare-fun m!4258785 () Bool)

(assert (=> b!3763426 m!4258785))

(declare-fun m!4258787 () Bool)

(assert (=> b!3763428 m!4258787))

(declare-fun m!4258789 () Bool)

(assert (=> b!3763429 m!4258789))

(assert (=> b!3762406 d!1099986))

(declare-fun d!1099988 () Bool)

(declare-fun res!1523816 () Bool)

(declare-fun e!2327517 () Bool)

(assert (=> d!1099988 (=> (not res!1523816) (not e!2327517))))

(assert (=> d!1099988 (= res!1523816 (= (csize!24828 (left!31074 (right!31404 (c!651315 v!6347)))) (+ (size!30211 (left!31074 (left!31074 (right!31404 (c!651315 v!6347))))) (size!30211 (right!31404 (left!31074 (right!31404 (c!651315 v!6347))))))))))

(assert (=> d!1099988 (= (inv!53855 (left!31074 (right!31404 (c!651315 v!6347)))) e!2327517)))

(declare-fun b!3763431 () Bool)

(declare-fun res!1523817 () Bool)

(assert (=> b!3763431 (=> (not res!1523817) (not e!2327517))))

(assert (=> b!3763431 (= res!1523817 (and (not (= (left!31074 (left!31074 (right!31404 (c!651315 v!6347)))) Empty!12299)) (not (= (right!31404 (left!31074 (right!31404 (c!651315 v!6347)))) Empty!12299))))))

(declare-fun b!3763432 () Bool)

(declare-fun res!1523818 () Bool)

(assert (=> b!3763432 (=> (not res!1523818) (not e!2327517))))

(assert (=> b!3763432 (= res!1523818 (= (cheight!12510 (left!31074 (right!31404 (c!651315 v!6347)))) (+ (max!0 (height!1754 (left!31074 (left!31074 (right!31404 (c!651315 v!6347))))) (height!1754 (right!31404 (left!31074 (right!31404 (c!651315 v!6347)))))) 1)))))

(declare-fun b!3763433 () Bool)

(assert (=> b!3763433 (= e!2327517 (<= 0 (cheight!12510 (left!31074 (right!31404 (c!651315 v!6347))))))))

(assert (= (and d!1099988 res!1523816) b!3763431))

(assert (= (and b!3763431 res!1523817) b!3763432))

(assert (= (and b!3763432 res!1523818) b!3763433))

(declare-fun m!4258791 () Bool)

(assert (=> d!1099988 m!4258791))

(declare-fun m!4258793 () Bool)

(assert (=> d!1099988 m!4258793))

(assert (=> b!3763432 m!4257511))

(assert (=> b!3763432 m!4257513))

(assert (=> b!3763432 m!4257511))

(assert (=> b!3763432 m!4257513))

(declare-fun m!4258795 () Bool)

(assert (=> b!3763432 m!4258795))

(assert (=> b!3762005 d!1099988))

(declare-fun d!1099990 () Bool)

(declare-fun lt!1302415 () Int)

(assert (=> d!1099990 (>= lt!1302415 0)))

(declare-fun e!2327518 () Int)

(assert (=> d!1099990 (= lt!1302415 e!2327518)))

(declare-fun c!651855 () Bool)

(assert (=> d!1099990 (= c!651855 ((_ is Nil!40141) lt!1302150))))

(assert (=> d!1099990 (= (size!30210 lt!1302150) lt!1302415)))

(declare-fun b!3763434 () Bool)

(assert (=> b!3763434 (= e!2327518 0)))

(declare-fun b!3763435 () Bool)

(assert (=> b!3763435 (= e!2327518 (+ 1 (size!30210 (t!303914 lt!1302150))))))

(assert (= (and d!1099990 c!651855) b!3763434))

(assert (= (and d!1099990 (not c!651855)) b!3763435))

(declare-fun m!4258797 () Bool)

(assert (=> b!3763435 m!4258797))

(assert (=> b!3762019 d!1099990))

(declare-fun d!1099992 () Bool)

(declare-fun lt!1302416 () Bool)

(assert (=> d!1099992 (= lt!1302416 (isEmpty!23587 (list!14819 (right!31403 (right!31403 (c!651313 acc!400))))))))

(assert (=> d!1099992 (= lt!1302416 (= (size!30214 (right!31403 (right!31403 (c!651313 acc!400)))) 0))))

(assert (=> d!1099992 (= (isEmpty!23585 (right!31403 (right!31403 (c!651313 acc!400)))) lt!1302416)))

(declare-fun bs!575900 () Bool)

(assert (= bs!575900 d!1099992))

(assert (=> bs!575900 m!4256685))

(assert (=> bs!575900 m!4256685))

(declare-fun m!4258799 () Bool)

(assert (=> bs!575900 m!4258799))

(assert (=> bs!575900 m!4256307))

(assert (=> b!3762102 d!1099992))

(declare-fun d!1099994 () Bool)

(declare-fun c!651856 () Bool)

(assert (=> d!1099994 (= c!651856 ((_ is Nil!40139) lt!1302205))))

(declare-fun e!2327519 () (InoxSet C!22308))

(assert (=> d!1099994 (= (content!5894 lt!1302205) e!2327519)))

(declare-fun b!3763436 () Bool)

(assert (=> b!3763436 (= e!2327519 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763437 () Bool)

(assert (=> b!3763437 (= e!2327519 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302205) true) (content!5894 (t!303912 lt!1302205))))))

(assert (= (and d!1099994 c!651856) b!3763436))

(assert (= (and d!1099994 (not c!651856)) b!3763437))

(declare-fun m!4258801 () Bool)

(assert (=> b!3763437 m!4258801))

(declare-fun m!4258803 () Bool)

(assert (=> b!3763437 m!4258803))

(assert (=> d!1099068 d!1099994))

(declare-fun d!1099996 () Bool)

(declare-fun c!651857 () Bool)

(assert (=> d!1099996 (= c!651857 ((_ is Nil!40139) (list!14819 (left!31073 (c!651313 acc!400)))))))

(declare-fun e!2327520 () (InoxSet C!22308))

(assert (=> d!1099996 (= (content!5894 (list!14819 (left!31073 (c!651313 acc!400)))) e!2327520)))

(declare-fun b!3763438 () Bool)

(assert (=> b!3763438 (= e!2327520 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763439 () Bool)

(assert (=> b!3763439 (= e!2327520 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (list!14819 (left!31073 (c!651313 acc!400)))) true) (content!5894 (t!303912 (list!14819 (left!31073 (c!651313 acc!400)))))))))

(assert (= (and d!1099996 c!651857) b!3763438))

(assert (= (and d!1099996 (not c!651857)) b!3763439))

(declare-fun m!4258805 () Bool)

(assert (=> b!3763439 m!4258805))

(assert (=> b!3763439 m!4258769))

(assert (=> d!1099068 d!1099996))

(declare-fun d!1099998 () Bool)

(declare-fun c!651858 () Bool)

(assert (=> d!1099998 (= c!651858 ((_ is Nil!40139) (list!14819 (right!31403 (c!651313 acc!400)))))))

(declare-fun e!2327521 () (InoxSet C!22308))

(assert (=> d!1099998 (= (content!5894 (list!14819 (right!31403 (c!651313 acc!400)))) e!2327521)))

(declare-fun b!3763440 () Bool)

(assert (=> b!3763440 (= e!2327521 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763441 () Bool)

(assert (=> b!3763441 (= e!2327521 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (list!14819 (right!31403 (c!651313 acc!400)))) true) (content!5894 (t!303912 (list!14819 (right!31403 (c!651313 acc!400)))))))))

(assert (= (and d!1099998 c!651858) b!3763440))

(assert (= (and d!1099998 (not c!651858)) b!3763441))

(declare-fun m!4258807 () Bool)

(assert (=> b!3763441 m!4258807))

(declare-fun m!4258809 () Bool)

(assert (=> b!3763441 m!4258809))

(assert (=> d!1099068 d!1099998))

(declare-fun d!1100000 () Bool)

(declare-fun lt!1302417 () Bool)

(assert (=> d!1100000 (= lt!1302417 (isEmpty!23587 (list!14819 (left!31073 (left!31073 (c!651313 acc!400))))))))

(assert (=> d!1100000 (= lt!1302417 (= (size!30214 (left!31073 (left!31073 (c!651313 acc!400)))) 0))))

(assert (=> d!1100000 (= (isEmpty!23585 (left!31073 (left!31073 (c!651313 acc!400)))) lt!1302417)))

(declare-fun bs!575901 () Bool)

(assert (= bs!575901 d!1100000))

(assert (=> bs!575901 m!4256675))

(assert (=> bs!575901 m!4256675))

(declare-fun m!4258811 () Bool)

(assert (=> bs!575901 m!4258811))

(assert (=> bs!575901 m!4256817))

(assert (=> b!3762279 d!1100000))

(declare-fun d!1100002 () Bool)

(declare-fun res!1523819 () Bool)

(declare-fun e!2327522 () Bool)

(assert (=> d!1100002 (=> (not res!1523819) (not e!2327522))))

(assert (=> d!1100002 (= res!1523819 (= (csize!24826 (left!31073 (left!31073 (c!651313 acc!400)))) (+ (size!30214 (left!31073 (left!31073 (left!31073 (c!651313 acc!400))))) (size!30214 (right!31403 (left!31073 (left!31073 (c!651313 acc!400))))))))))

(assert (=> d!1100002 (= (inv!53859 (left!31073 (left!31073 (c!651313 acc!400)))) e!2327522)))

(declare-fun b!3763442 () Bool)

(declare-fun res!1523820 () Bool)

(assert (=> b!3763442 (=> (not res!1523820) (not e!2327522))))

(assert (=> b!3763442 (= res!1523820 (and (not (= (left!31073 (left!31073 (left!31073 (c!651313 acc!400)))) Empty!12298)) (not (= (right!31403 (left!31073 (left!31073 (c!651313 acc!400)))) Empty!12298))))))

(declare-fun b!3763443 () Bool)

(declare-fun res!1523821 () Bool)

(assert (=> b!3763443 (=> (not res!1523821) (not e!2327522))))

(assert (=> b!3763443 (= res!1523821 (= (cheight!12509 (left!31073 (left!31073 (c!651313 acc!400)))) (+ (max!0 (height!1755 (left!31073 (left!31073 (left!31073 (c!651313 acc!400))))) (height!1755 (right!31403 (left!31073 (left!31073 (c!651313 acc!400)))))) 1)))))

(declare-fun b!3763444 () Bool)

(assert (=> b!3763444 (= e!2327522 (<= 0 (cheight!12509 (left!31073 (left!31073 (c!651313 acc!400))))))))

(assert (= (and d!1100002 res!1523819) b!3763442))

(assert (= (and b!3763442 res!1523820) b!3763443))

(assert (= (and b!3763443 res!1523821) b!3763444))

(declare-fun m!4258813 () Bool)

(assert (=> d!1100002 m!4258813))

(declare-fun m!4258815 () Bool)

(assert (=> d!1100002 m!4258815))

(declare-fun m!4258817 () Bool)

(assert (=> b!3763443 m!4258817))

(declare-fun m!4258819 () Bool)

(assert (=> b!3763443 m!4258819))

(assert (=> b!3763443 m!4258817))

(assert (=> b!3763443 m!4258819))

(declare-fun m!4258821 () Bool)

(assert (=> b!3763443 m!4258821))

(assert (=> b!3762225 d!1100002))

(assert (=> d!1098896 d!1099356))

(assert (=> d!1098896 d!1099358))

(assert (=> b!3762335 d!1099546))

(assert (=> b!3762335 d!1099474))

(declare-fun d!1100004 () Bool)

(declare-fun lt!1302418 () Int)

(assert (=> d!1100004 (>= lt!1302418 0)))

(declare-fun e!2327523 () Int)

(assert (=> d!1100004 (= lt!1302418 e!2327523)))

(declare-fun c!651859 () Bool)

(assert (=> d!1100004 (= c!651859 ((_ is Nil!40139) (t!303912 lt!1302106)))))

(assert (=> d!1100004 (= (size!30213 (t!303912 lt!1302106)) lt!1302418)))

(declare-fun b!3763445 () Bool)

(assert (=> b!3763445 (= e!2327523 0)))

(declare-fun b!3763446 () Bool)

(assert (=> b!3763446 (= e!2327523 (+ 1 (size!30213 (t!303912 (t!303912 lt!1302106)))))))

(assert (= (and d!1100004 c!651859) b!3763445))

(assert (= (and d!1100004 (not c!651859)) b!3763446))

(declare-fun m!4258823 () Bool)

(assert (=> b!3763446 m!4258823))

(assert (=> b!3762073 d!1100004))

(declare-fun b!3763448 () Bool)

(declare-fun e!2327524 () List!40263)

(declare-fun e!2327525 () List!40263)

(assert (=> b!3763448 (= e!2327524 e!2327525)))

(declare-fun c!651861 () Bool)

(assert (=> b!3763448 (= c!651861 ((_ is Leaf!19074) (c!651313 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))

(declare-fun b!3763450 () Bool)

(assert (=> b!3763450 (= e!2327525 (++!9954 (list!14819 (left!31073 (c!651313 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))) (list!14819 (right!31403 (c!651313 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))))

(declare-fun d!1100006 () Bool)

(declare-fun c!651860 () Bool)

(assert (=> d!1100006 (= c!651860 ((_ is Empty!12298) (c!651313 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))

(assert (=> d!1100006 (= (list!14819 (c!651313 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) e!2327524)))

(declare-fun b!3763447 () Bool)

(assert (=> b!3763447 (= e!2327524 Nil!40139)))

(declare-fun b!3763449 () Bool)

(assert (=> b!3763449 (= e!2327525 (list!14824 (xs!15504 (c!651313 (charsOf!4006 (h!45561 (t!303914 lt!1302052)))))))))

(assert (= (and d!1100006 c!651860) b!3763447))

(assert (= (and d!1100006 (not c!651860)) b!3763448))

(assert (= (and b!3763448 c!651861) b!3763449))

(assert (= (and b!3763448 (not c!651861)) b!3763450))

(declare-fun m!4258825 () Bool)

(assert (=> b!3763450 m!4258825))

(declare-fun m!4258827 () Bool)

(assert (=> b!3763450 m!4258827))

(assert (=> b!3763450 m!4258825))

(assert (=> b!3763450 m!4258827))

(declare-fun m!4258829 () Bool)

(assert (=> b!3763450 m!4258829))

(declare-fun m!4258831 () Bool)

(assert (=> b!3763449 m!4258831))

(assert (=> d!1099048 d!1100006))

(declare-fun d!1100008 () Bool)

(declare-fun lt!1302419 () Int)

(assert (=> d!1100008 (>= lt!1302419 0)))

(declare-fun e!2327526 () Int)

(assert (=> d!1100008 (= lt!1302419 e!2327526)))

(declare-fun c!651862 () Bool)

(assert (=> d!1100008 (= c!651862 ((_ is Nil!40139) (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))

(assert (=> d!1100008 (= (size!30213 (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) lt!1302419)))

(declare-fun b!3763451 () Bool)

(assert (=> b!3763451 (= e!2327526 0)))

(declare-fun b!3763452 () Bool)

(assert (=> b!3763452 (= e!2327526 (+ 1 (size!30213 (t!303912 (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))))

(assert (= (and d!1100008 c!651862) b!3763451))

(assert (= (and d!1100008 (not c!651862)) b!3763452))

(declare-fun m!4258833 () Bool)

(assert (=> b!3763452 m!4258833))

(assert (=> b!3762035 d!1100008))

(declare-fun d!1100010 () Bool)

(declare-fun c!651863 () Bool)

(assert (=> d!1100010 (= c!651863 ((_ is Node!12298) (left!31073 (left!31073 (left!31073 (c!651313 acc!400))))))))

(declare-fun e!2327527 () Bool)

(assert (=> d!1100010 (= (inv!53851 (left!31073 (left!31073 (left!31073 (c!651313 acc!400))))) e!2327527)))

(declare-fun b!3763453 () Bool)

(assert (=> b!3763453 (= e!2327527 (inv!53859 (left!31073 (left!31073 (left!31073 (c!651313 acc!400))))))))

(declare-fun b!3763454 () Bool)

(declare-fun e!2327528 () Bool)

(assert (=> b!3763454 (= e!2327527 e!2327528)))

(declare-fun res!1523822 () Bool)

(assert (=> b!3763454 (= res!1523822 (not ((_ is Leaf!19074) (left!31073 (left!31073 (left!31073 (c!651313 acc!400)))))))))

(assert (=> b!3763454 (=> res!1523822 e!2327528)))

(declare-fun b!3763455 () Bool)

(assert (=> b!3763455 (= e!2327528 (inv!53860 (left!31073 (left!31073 (left!31073 (c!651313 acc!400))))))))

(assert (= (and d!1100010 c!651863) b!3763453))

(assert (= (and d!1100010 (not c!651863)) b!3763454))

(assert (= (and b!3763454 (not res!1523822)) b!3763455))

(declare-fun m!4258835 () Bool)

(assert (=> b!3763453 m!4258835))

(declare-fun m!4258837 () Bool)

(assert (=> b!3763455 m!4258837))

(assert (=> b!3762345 d!1100010))

(declare-fun d!1100012 () Bool)

(declare-fun c!651864 () Bool)

(assert (=> d!1100012 (= c!651864 ((_ is Node!12298) (right!31403 (left!31073 (left!31073 (c!651313 acc!400))))))))

(declare-fun e!2327529 () Bool)

(assert (=> d!1100012 (= (inv!53851 (right!31403 (left!31073 (left!31073 (c!651313 acc!400))))) e!2327529)))

(declare-fun b!3763456 () Bool)

(assert (=> b!3763456 (= e!2327529 (inv!53859 (right!31403 (left!31073 (left!31073 (c!651313 acc!400))))))))

(declare-fun b!3763457 () Bool)

(declare-fun e!2327530 () Bool)

(assert (=> b!3763457 (= e!2327529 e!2327530)))

(declare-fun res!1523823 () Bool)

(assert (=> b!3763457 (= res!1523823 (not ((_ is Leaf!19074) (right!31403 (left!31073 (left!31073 (c!651313 acc!400)))))))))

(assert (=> b!3763457 (=> res!1523823 e!2327530)))

(declare-fun b!3763458 () Bool)

(assert (=> b!3763458 (= e!2327530 (inv!53860 (right!31403 (left!31073 (left!31073 (c!651313 acc!400))))))))

(assert (= (and d!1100012 c!651864) b!3763456))

(assert (= (and d!1100012 (not c!651864)) b!3763457))

(assert (= (and b!3763457 (not res!1523823)) b!3763458))

(declare-fun m!4258839 () Bool)

(assert (=> b!3763456 m!4258839))

(declare-fun m!4258841 () Bool)

(assert (=> b!3763458 m!4258841))

(assert (=> b!3762345 d!1100012))

(declare-fun d!1100014 () Bool)

(declare-fun lt!1302420 () Bool)

(assert (=> d!1100014 (= lt!1302420 (isEmpty!23590 (list!14820 (left!31074 (left!31074 (c!651315 v!6347))))))))

(assert (=> d!1100014 (= lt!1302420 (= (size!30211 (left!31074 (left!31074 (c!651315 v!6347)))) 0))))

(assert (=> d!1100014 (= (isEmpty!23583 (left!31074 (left!31074 (c!651315 v!6347)))) lt!1302420)))

(declare-fun bs!575902 () Bool)

(assert (= bs!575902 d!1100014))

(assert (=> bs!575902 m!4256755))

(assert (=> bs!575902 m!4256755))

(declare-fun m!4258843 () Bool)

(assert (=> bs!575902 m!4258843))

(assert (=> bs!575902 m!4256505))

(assert (=> b!3762149 d!1100014))

(declare-fun b!3763461 () Bool)

(declare-fun res!1523825 () Bool)

(declare-fun e!2327531 () Bool)

(assert (=> b!3763461 (=> (not res!1523825) (not e!2327531))))

(declare-fun lt!1302421 () List!40263)

(assert (=> b!3763461 (= res!1523825 (= (size!30213 lt!1302421) (+ (size!30213 (t!303912 (t!303912 lt!1302051))) (size!30213 lt!1302080))))))

(declare-fun d!1100016 () Bool)

(assert (=> d!1100016 e!2327531))

(declare-fun res!1523824 () Bool)

(assert (=> d!1100016 (=> (not res!1523824) (not e!2327531))))

(assert (=> d!1100016 (= res!1523824 (= (content!5894 lt!1302421) ((_ map or) (content!5894 (t!303912 (t!303912 lt!1302051))) (content!5894 lt!1302080))))))

(declare-fun e!2327532 () List!40263)

(assert (=> d!1100016 (= lt!1302421 e!2327532)))

(declare-fun c!651865 () Bool)

(assert (=> d!1100016 (= c!651865 ((_ is Nil!40139) (t!303912 (t!303912 lt!1302051))))))

(assert (=> d!1100016 (= (++!9954 (t!303912 (t!303912 lt!1302051)) lt!1302080) lt!1302421)))

(declare-fun b!3763459 () Bool)

(assert (=> b!3763459 (= e!2327532 lt!1302080)))

(declare-fun b!3763460 () Bool)

(assert (=> b!3763460 (= e!2327532 (Cons!40139 (h!45559 (t!303912 (t!303912 lt!1302051))) (++!9954 (t!303912 (t!303912 (t!303912 lt!1302051))) lt!1302080)))))

(declare-fun b!3763462 () Bool)

(assert (=> b!3763462 (= e!2327531 (or (not (= lt!1302080 Nil!40139)) (= lt!1302421 (t!303912 (t!303912 lt!1302051)))))))

(assert (= (and d!1100016 c!651865) b!3763459))

(assert (= (and d!1100016 (not c!651865)) b!3763460))

(assert (= (and d!1100016 res!1523824) b!3763461))

(assert (= (and b!3763461 res!1523825) b!3763462))

(declare-fun m!4258845 () Bool)

(assert (=> b!3763461 m!4258845))

(assert (=> b!3763461 m!4257461))

(assert (=> b!3763461 m!4255941))

(declare-fun m!4258847 () Bool)

(assert (=> d!1100016 m!4258847))

(assert (=> d!1100016 m!4257465))

(assert (=> d!1100016 m!4255945))

(declare-fun m!4258849 () Bool)

(assert (=> b!3763460 m!4258849))

(assert (=> b!3762324 d!1100016))

(declare-fun d!1100018 () Bool)

(declare-fun lt!1302422 () Int)

(assert (=> d!1100018 (>= lt!1302422 0)))

(declare-fun e!2327533 () Int)

(assert (=> d!1100018 (= lt!1302422 e!2327533)))

(declare-fun c!651866 () Bool)

(assert (=> d!1100018 (= c!651866 ((_ is Nil!40139) lt!1302187))))

(assert (=> d!1100018 (= (size!30213 lt!1302187) lt!1302422)))

(declare-fun b!3763463 () Bool)

(assert (=> b!3763463 (= e!2327533 0)))

(declare-fun b!3763464 () Bool)

(assert (=> b!3763464 (= e!2327533 (+ 1 (size!30213 (t!303912 lt!1302187))))))

(assert (= (and d!1100018 c!651866) b!3763463))

(assert (= (and d!1100018 (not c!651866)) b!3763464))

(declare-fun m!4258851 () Bool)

(assert (=> b!3763464 m!4258851))

(assert (=> b!3762196 d!1100018))

(assert (=> b!3762196 d!1099488))

(assert (=> b!3762196 d!1099966))

(assert (=> b!3761998 d!1099384))

(declare-fun d!1100020 () Bool)

(declare-fun lt!1302423 () Int)

(assert (=> d!1100020 (= lt!1302423 (size!30213 (list!14819 (left!31073 (right!31403 (c!651313 acc!400))))))))

(assert (=> d!1100020 (= lt!1302423 (ite ((_ is Empty!12298) (left!31073 (right!31403 (c!651313 acc!400)))) 0 (ite ((_ is Leaf!19074) (left!31073 (right!31403 (c!651313 acc!400)))) (csize!24827 (left!31073 (right!31403 (c!651313 acc!400)))) (csize!24826 (left!31073 (right!31403 (c!651313 acc!400)))))))))

(assert (=> d!1100020 (= (size!30214 (left!31073 (right!31403 (c!651313 acc!400)))) lt!1302423)))

(declare-fun bs!575903 () Bool)

(assert (= bs!575903 d!1100020))

(assert (=> bs!575903 m!4256683))

(assert (=> bs!575903 m!4256683))

(declare-fun m!4258853 () Bool)

(assert (=> bs!575903 m!4258853))

(assert (=> d!1098902 d!1100020))

(declare-fun d!1100022 () Bool)

(declare-fun lt!1302424 () Int)

(assert (=> d!1100022 (= lt!1302424 (size!30213 (list!14819 (right!31403 (right!31403 (c!651313 acc!400))))))))

(assert (=> d!1100022 (= lt!1302424 (ite ((_ is Empty!12298) (right!31403 (right!31403 (c!651313 acc!400)))) 0 (ite ((_ is Leaf!19074) (right!31403 (right!31403 (c!651313 acc!400)))) (csize!24827 (right!31403 (right!31403 (c!651313 acc!400)))) (csize!24826 (right!31403 (right!31403 (c!651313 acc!400)))))))))

(assert (=> d!1100022 (= (size!30214 (right!31403 (right!31403 (c!651313 acc!400)))) lt!1302424)))

(declare-fun bs!575904 () Bool)

(assert (= bs!575904 d!1100022))

(assert (=> bs!575904 m!4256685))

(assert (=> bs!575904 m!4256685))

(declare-fun m!4258855 () Bool)

(assert (=> bs!575904 m!4258855))

(assert (=> d!1098902 d!1100022))

(declare-fun d!1100024 () Bool)

(declare-fun lt!1302425 () Int)

(assert (=> d!1100024 (>= lt!1302425 0)))

(declare-fun e!2327534 () Int)

(assert (=> d!1100024 (= lt!1302425 e!2327534)))

(declare-fun c!651867 () Bool)

(assert (=> d!1100024 (= c!651867 ((_ is Nil!40139) lt!1302193))))

(assert (=> d!1100024 (= (size!30213 lt!1302193) lt!1302425)))

(declare-fun b!3763465 () Bool)

(assert (=> b!3763465 (= e!2327534 0)))

(declare-fun b!3763466 () Bool)

(assert (=> b!3763466 (= e!2327534 (+ 1 (size!30213 (t!303912 lt!1302193))))))

(assert (= (and d!1100024 c!651867) b!3763465))

(assert (= (and d!1100024 (not c!651867)) b!3763466))

(declare-fun m!4258857 () Bool)

(assert (=> b!3763466 m!4258857))

(assert (=> b!3762211 d!1100024))

(assert (=> b!3762211 d!1099488))

(declare-fun d!1100026 () Bool)

(declare-fun lt!1302426 () Int)

(assert (=> d!1100026 (>= lt!1302426 0)))

(declare-fun e!2327535 () Int)

(assert (=> d!1100026 (= lt!1302426 e!2327535)))

(declare-fun c!651868 () Bool)

(assert (=> d!1100026 (= c!651868 ((_ is Nil!40139) (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))

(assert (=> d!1100026 (= (size!30213 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))) lt!1302426)))

(declare-fun b!3763467 () Bool)

(assert (=> b!3763467 (= e!2327535 0)))

(declare-fun b!3763468 () Bool)

(assert (=> b!3763468 (= e!2327535 (+ 1 (size!30213 (t!303912 (list!14816 (charsOf!4006 (h!45561 (t!303914 lt!1302052))))))))))

(assert (= (and d!1100026 c!651868) b!3763467))

(assert (= (and d!1100026 (not c!651868)) b!3763468))

(assert (=> b!3763468 m!4257649))

(assert (=> b!3762211 d!1100026))

(declare-fun d!1100028 () Bool)

(assert (=> d!1100028 (= (inv!53846 (tag!7016 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (= (mod (str.len (value!196052 (tag!7016 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) 2) 0))))

(assert (=> b!3762366 d!1100028))

(declare-fun d!1100030 () Bool)

(declare-fun res!1523826 () Bool)

(declare-fun e!2327536 () Bool)

(assert (=> d!1100030 (=> (not res!1523826) (not e!2327536))))

(assert (=> d!1100030 (= res!1523826 (semiInverseModEq!2634 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (toValue!8512 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))))))

(assert (=> d!1100030 (= (inv!53868 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) e!2327536)))

(declare-fun b!3763469 () Bool)

(assert (=> b!3763469 (= e!2327536 (equivClasses!2533 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (toValue!8512 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))))))

(assert (= (and d!1100030 res!1523826) b!3763469))

(declare-fun m!4258859 () Bool)

(assert (=> d!1100030 m!4258859))

(declare-fun m!4258861 () Bool)

(assert (=> b!3763469 m!4258861))

(assert (=> b!3762366 d!1100030))

(declare-fun d!1100032 () Bool)

(declare-fun lt!1302427 () Int)

(assert (=> d!1100032 (>= lt!1302427 0)))

(declare-fun e!2327537 () Int)

(assert (=> d!1100032 (= lt!1302427 e!2327537)))

(declare-fun c!651869 () Bool)

(assert (=> d!1100032 (= c!651869 ((_ is Nil!40139) (t!303912 (++!9954 lt!1302080 lt!1302082))))))

(assert (=> d!1100032 (= (size!30213 (t!303912 (++!9954 lt!1302080 lt!1302082))) lt!1302427)))

(declare-fun b!3763470 () Bool)

(assert (=> b!3763470 (= e!2327537 0)))

(declare-fun b!3763471 () Bool)

(assert (=> b!3763471 (= e!2327537 (+ 1 (size!30213 (t!303912 (t!303912 (++!9954 lt!1302080 lt!1302082))))))))

(assert (= (and d!1100032 c!651869) b!3763470))

(assert (= (and d!1100032 (not c!651869)) b!3763471))

(declare-fun m!4258863 () Bool)

(assert (=> b!3763471 m!4258863))

(assert (=> b!3762075 d!1100032))

(declare-fun b!3763474 () Bool)

(declare-fun res!1523828 () Bool)

(declare-fun e!2327538 () Bool)

(assert (=> b!3763474 (=> (not res!1523828) (not e!2327538))))

(declare-fun lt!1302428 () List!40263)

(assert (=> b!3763474 (= res!1523828 (= (size!30213 lt!1302428) (+ (size!30213 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))) (size!30213 (printList!1661 thiss!13650 (t!303914 lt!1302052))))))))

(declare-fun d!1100034 () Bool)

(assert (=> d!1100034 e!2327538))

(declare-fun res!1523827 () Bool)

(assert (=> d!1100034 (=> (not res!1523827) (not e!2327538))))

(assert (=> d!1100034 (= res!1523827 (= (content!5894 lt!1302428) ((_ map or) (content!5894 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))) (content!5894 (printList!1661 thiss!13650 (t!303914 lt!1302052))))))))

(declare-fun e!2327539 () List!40263)

(assert (=> d!1100034 (= lt!1302428 e!2327539)))

(declare-fun c!651870 () Bool)

(assert (=> d!1100034 (= c!651870 ((_ is Nil!40139) (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(assert (=> d!1100034 (= (++!9954 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (printList!1661 thiss!13650 (t!303914 lt!1302052))) lt!1302428)))

(declare-fun b!3763472 () Bool)

(assert (=> b!3763472 (= e!2327539 (printList!1661 thiss!13650 (t!303914 lt!1302052)))))

(declare-fun b!3763473 () Bool)

(assert (=> b!3763473 (= e!2327539 (Cons!40139 (h!45559 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))) (++!9954 (t!303912 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))) (printList!1661 thiss!13650 (t!303914 lt!1302052)))))))

(declare-fun b!3763475 () Bool)

(assert (=> b!3763475 (= e!2327538 (or (not (= (printList!1661 thiss!13650 (t!303914 lt!1302052)) Nil!40139)) (= lt!1302428 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))))

(assert (= (and d!1100034 c!651870) b!3763472))

(assert (= (and d!1100034 (not c!651870)) b!3763473))

(assert (= (and d!1100034 res!1523827) b!3763474))

(assert (= (and b!3763474 res!1523828) b!3763475))

(declare-fun m!4258865 () Bool)

(assert (=> b!3763474 m!4258865))

(assert (=> b!3763474 m!4257777))

(assert (=> b!3763474 m!4255717))

(assert (=> b!3763474 m!4256467))

(declare-fun m!4258867 () Bool)

(assert (=> d!1100034 m!4258867))

(assert (=> d!1100034 m!4257499))

(assert (=> d!1100034 m!4255717))

(assert (=> d!1100034 m!4256471))

(assert (=> b!3763473 m!4255717))

(declare-fun m!4258869 () Bool)

(assert (=> b!3763473 m!4258869))

(assert (=> b!3762312 d!1100034))

(declare-fun d!1100036 () Bool)

(declare-fun lt!1302429 () Int)

(assert (=> d!1100036 (>= lt!1302429 0)))

(declare-fun e!2327540 () Int)

(assert (=> d!1100036 (= lt!1302429 e!2327540)))

(declare-fun c!651871 () Bool)

(assert (=> d!1100036 (= c!651871 ((_ is Nil!40139) (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))

(assert (=> d!1100036 (= (size!30213 (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))) lt!1302429)))

(declare-fun b!3763476 () Bool)

(assert (=> b!3763476 (= e!2327540 0)))

(declare-fun b!3763477 () Bool)

(assert (=> b!3763477 (= e!2327540 (+ 1 (size!30213 (t!303912 (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))))

(assert (= (and d!1100036 c!651871) b!3763476))

(assert (= (and d!1100036 (not c!651871)) b!3763477))

(declare-fun m!4258871 () Bool)

(assert (=> b!3763477 m!4258871))

(assert (=> b!3762057 d!1100036))

(declare-fun d!1100038 () Bool)

(declare-fun lt!1302430 () Int)

(assert (=> d!1100038 (>= lt!1302430 0)))

(declare-fun e!2327541 () Int)

(assert (=> d!1100038 (= lt!1302430 e!2327541)))

(declare-fun c!651872 () Bool)

(assert (=> d!1100038 (= c!651872 ((_ is Nil!40139) lt!1302205))))

(assert (=> d!1100038 (= (size!30213 lt!1302205) lt!1302430)))

(declare-fun b!3763478 () Bool)

(assert (=> b!3763478 (= e!2327541 0)))

(declare-fun b!3763479 () Bool)

(assert (=> b!3763479 (= e!2327541 (+ 1 (size!30213 (t!303912 lt!1302205))))))

(assert (= (and d!1100038 c!651872) b!3763478))

(assert (= (and d!1100038 (not c!651872)) b!3763479))

(declare-fun m!4258873 () Bool)

(assert (=> b!3763479 m!4258873))

(assert (=> b!3762249 d!1100038))

(assert (=> b!3762249 d!1099932))

(assert (=> b!3762249 d!1099482))

(assert (=> bm!275422 d!1099442))

(declare-fun d!1100040 () Bool)

(declare-fun c!651873 () Bool)

(assert (=> d!1100040 (= c!651873 ((_ is Nil!40139) (t!303912 lt!1302105)))))

(declare-fun e!2327542 () (InoxSet C!22308))

(assert (=> d!1100040 (= (content!5894 (t!303912 lt!1302105)) e!2327542)))

(declare-fun b!3763480 () Bool)

(assert (=> b!3763480 (= e!2327542 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763481 () Bool)

(assert (=> b!3763481 (= e!2327542 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (t!303912 lt!1302105)) true) (content!5894 (t!303912 (t!303912 lt!1302105)))))))

(assert (= (and d!1100040 c!651873) b!3763480))

(assert (= (and d!1100040 (not c!651873)) b!3763481))

(declare-fun m!4258875 () Bool)

(assert (=> b!3763481 m!4258875))

(declare-fun m!4258877 () Bool)

(assert (=> b!3763481 m!4258877))

(assert (=> b!3762041 d!1100040))

(assert (=> b!3762280 d!1099368))

(assert (=> b!3762280 d!1099370))

(declare-fun b!3763484 () Bool)

(declare-fun res!1523830 () Bool)

(declare-fun e!2327543 () Bool)

(assert (=> b!3763484 (=> (not res!1523830) (not e!2327543))))

(declare-fun lt!1302431 () List!40263)

(assert (=> b!3763484 (= res!1523830 (= (size!30213 lt!1302431) (+ (size!30213 (list!14819 (left!31073 (right!31403 (c!651313 acc!400))))) (size!30213 (list!14819 (right!31403 (right!31403 (c!651313 acc!400))))))))))

(declare-fun d!1100042 () Bool)

(assert (=> d!1100042 e!2327543))

(declare-fun res!1523829 () Bool)

(assert (=> d!1100042 (=> (not res!1523829) (not e!2327543))))

(assert (=> d!1100042 (= res!1523829 (= (content!5894 lt!1302431) ((_ map or) (content!5894 (list!14819 (left!31073 (right!31403 (c!651313 acc!400))))) (content!5894 (list!14819 (right!31403 (right!31403 (c!651313 acc!400))))))))))

(declare-fun e!2327544 () List!40263)

(assert (=> d!1100042 (= lt!1302431 e!2327544)))

(declare-fun c!651874 () Bool)

(assert (=> d!1100042 (= c!651874 ((_ is Nil!40139) (list!14819 (left!31073 (right!31403 (c!651313 acc!400))))))))

(assert (=> d!1100042 (= (++!9954 (list!14819 (left!31073 (right!31403 (c!651313 acc!400)))) (list!14819 (right!31403 (right!31403 (c!651313 acc!400))))) lt!1302431)))

(declare-fun b!3763482 () Bool)

(assert (=> b!3763482 (= e!2327544 (list!14819 (right!31403 (right!31403 (c!651313 acc!400)))))))

(declare-fun b!3763483 () Bool)

(assert (=> b!3763483 (= e!2327544 (Cons!40139 (h!45559 (list!14819 (left!31073 (right!31403 (c!651313 acc!400))))) (++!9954 (t!303912 (list!14819 (left!31073 (right!31403 (c!651313 acc!400))))) (list!14819 (right!31403 (right!31403 (c!651313 acc!400)))))))))

(declare-fun b!3763485 () Bool)

(assert (=> b!3763485 (= e!2327543 (or (not (= (list!14819 (right!31403 (right!31403 (c!651313 acc!400)))) Nil!40139)) (= lt!1302431 (list!14819 (left!31073 (right!31403 (c!651313 acc!400)))))))))

(assert (= (and d!1100042 c!651874) b!3763482))

(assert (= (and d!1100042 (not c!651874)) b!3763483))

(assert (= (and d!1100042 res!1523829) b!3763484))

(assert (= (and b!3763484 res!1523830) b!3763485))

(declare-fun m!4258879 () Bool)

(assert (=> b!3763484 m!4258879))

(assert (=> b!3763484 m!4256683))

(assert (=> b!3763484 m!4258853))

(assert (=> b!3763484 m!4256685))

(assert (=> b!3763484 m!4258855))

(declare-fun m!4258881 () Bool)

(assert (=> d!1100042 m!4258881))

(assert (=> d!1100042 m!4256683))

(declare-fun m!4258883 () Bool)

(assert (=> d!1100042 m!4258883))

(assert (=> d!1100042 m!4256685))

(declare-fun m!4258885 () Bool)

(assert (=> d!1100042 m!4258885))

(assert (=> b!3763483 m!4256685))

(declare-fun m!4258887 () Bool)

(assert (=> b!3763483 m!4258887))

(assert (=> b!3762262 d!1100042))

(declare-fun b!3763487 () Bool)

(declare-fun e!2327545 () List!40263)

(declare-fun e!2327546 () List!40263)

(assert (=> b!3763487 (= e!2327545 e!2327546)))

(declare-fun c!651876 () Bool)

(assert (=> b!3763487 (= c!651876 ((_ is Leaf!19074) (left!31073 (right!31403 (c!651313 acc!400)))))))

(declare-fun b!3763489 () Bool)

(assert (=> b!3763489 (= e!2327546 (++!9954 (list!14819 (left!31073 (left!31073 (right!31403 (c!651313 acc!400))))) (list!14819 (right!31403 (left!31073 (right!31403 (c!651313 acc!400)))))))))

(declare-fun d!1100044 () Bool)

(declare-fun c!651875 () Bool)

(assert (=> d!1100044 (= c!651875 ((_ is Empty!12298) (left!31073 (right!31403 (c!651313 acc!400)))))))

(assert (=> d!1100044 (= (list!14819 (left!31073 (right!31403 (c!651313 acc!400)))) e!2327545)))

(declare-fun b!3763486 () Bool)

(assert (=> b!3763486 (= e!2327545 Nil!40139)))

(declare-fun b!3763488 () Bool)

(assert (=> b!3763488 (= e!2327546 (list!14824 (xs!15504 (left!31073 (right!31403 (c!651313 acc!400))))))))

(assert (= (and d!1100044 c!651875) b!3763486))

(assert (= (and d!1100044 (not c!651875)) b!3763487))

(assert (= (and b!3763487 c!651876) b!3763488))

(assert (= (and b!3763487 (not c!651876)) b!3763489))

(declare-fun m!4258889 () Bool)

(assert (=> b!3763489 m!4258889))

(declare-fun m!4258891 () Bool)

(assert (=> b!3763489 m!4258891))

(assert (=> b!3763489 m!4258889))

(assert (=> b!3763489 m!4258891))

(declare-fun m!4258893 () Bool)

(assert (=> b!3763489 m!4258893))

(assert (=> b!3763488 m!4257745))

(assert (=> b!3762262 d!1100044))

(declare-fun b!3763491 () Bool)

(declare-fun e!2327547 () List!40263)

(declare-fun e!2327548 () List!40263)

(assert (=> b!3763491 (= e!2327547 e!2327548)))

(declare-fun c!651878 () Bool)

(assert (=> b!3763491 (= c!651878 ((_ is Leaf!19074) (right!31403 (right!31403 (c!651313 acc!400)))))))

(declare-fun b!3763493 () Bool)

(assert (=> b!3763493 (= e!2327548 (++!9954 (list!14819 (left!31073 (right!31403 (right!31403 (c!651313 acc!400))))) (list!14819 (right!31403 (right!31403 (right!31403 (c!651313 acc!400)))))))))

(declare-fun d!1100046 () Bool)

(declare-fun c!651877 () Bool)

(assert (=> d!1100046 (= c!651877 ((_ is Empty!12298) (right!31403 (right!31403 (c!651313 acc!400)))))))

(assert (=> d!1100046 (= (list!14819 (right!31403 (right!31403 (c!651313 acc!400)))) e!2327547)))

(declare-fun b!3763490 () Bool)

(assert (=> b!3763490 (= e!2327547 Nil!40139)))

(declare-fun b!3763492 () Bool)

(assert (=> b!3763492 (= e!2327548 (list!14824 (xs!15504 (right!31403 (right!31403 (c!651313 acc!400))))))))

(assert (= (and d!1100046 c!651877) b!3763490))

(assert (= (and d!1100046 (not c!651877)) b!3763491))

(assert (= (and b!3763491 c!651878) b!3763492))

(assert (= (and b!3763491 (not c!651878)) b!3763493))

(declare-fun m!4258895 () Bool)

(assert (=> b!3763493 m!4258895))

(declare-fun m!4258897 () Bool)

(assert (=> b!3763493 m!4258897))

(assert (=> b!3763493 m!4258895))

(assert (=> b!3763493 m!4258897))

(declare-fun m!4258899 () Bool)

(assert (=> b!3763493 m!4258899))

(declare-fun m!4258901 () Bool)

(assert (=> b!3763492 m!4258901))

(assert (=> b!3762262 d!1100046))

(declare-fun d!1100048 () Bool)

(assert (=> d!1100048 (= (inv!53846 (tag!7016 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (= (mod (str.len (value!196052 (tag!7016 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) 2) 0))))

(assert (=> b!3762407 d!1100048))

(declare-fun d!1100050 () Bool)

(declare-fun res!1523831 () Bool)

(declare-fun e!2327549 () Bool)

(assert (=> d!1100050 (=> (not res!1523831) (not e!2327549))))

(assert (=> d!1100050 (= res!1523831 (semiInverseModEq!2634 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (toValue!8512 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))))))

(assert (=> d!1100050 (= (inv!53868 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) e!2327549)))

(declare-fun b!3763494 () Bool)

(assert (=> b!3763494 (= e!2327549 (equivClasses!2533 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (toValue!8512 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))))))

(assert (= (and d!1100050 res!1523831) b!3763494))

(declare-fun m!4258903 () Bool)

(assert (=> d!1100050 m!4258903))

(declare-fun m!4258905 () Bool)

(assert (=> b!3763494 m!4258905))

(assert (=> b!3762407 d!1100050))

(declare-fun d!1100052 () Bool)

(assert (=> d!1100052 (= (list!14816 lt!1302192) (list!14819 (c!651313 lt!1302192)))))

(declare-fun bs!575905 () Bool)

(assert (= bs!575905 d!1100052))

(declare-fun m!4258907 () Bool)

(assert (=> bs!575905 m!4258907))

(assert (=> d!1099040 d!1100052))

(declare-fun d!1100054 () Bool)

(declare-fun c!651879 () Bool)

(assert (=> d!1100054 (= c!651879 ((_ is Node!12299) (left!31074 (right!31404 (right!31404 (c!651315 v!6347))))))))

(declare-fun e!2327550 () Bool)

(assert (=> d!1100054 (= (inv!53854 (left!31074 (right!31404 (right!31404 (c!651315 v!6347))))) e!2327550)))

(declare-fun b!3763495 () Bool)

(assert (=> b!3763495 (= e!2327550 (inv!53855 (left!31074 (right!31404 (right!31404 (c!651315 v!6347))))))))

(declare-fun b!3763496 () Bool)

(declare-fun e!2327551 () Bool)

(assert (=> b!3763496 (= e!2327550 e!2327551)))

(declare-fun res!1523832 () Bool)

(assert (=> b!3763496 (= res!1523832 (not ((_ is Leaf!19075) (left!31074 (right!31404 (right!31404 (c!651315 v!6347)))))))))

(assert (=> b!3763496 (=> res!1523832 e!2327551)))

(declare-fun b!3763497 () Bool)

(assert (=> b!3763497 (= e!2327551 (inv!53857 (left!31074 (right!31404 (right!31404 (c!651315 v!6347))))))))

(assert (= (and d!1100054 c!651879) b!3763495))

(assert (= (and d!1100054 (not c!651879)) b!3763496))

(assert (= (and b!3763496 (not res!1523832)) b!3763497))

(declare-fun m!4258909 () Bool)

(assert (=> b!3763495 m!4258909))

(declare-fun m!4258911 () Bool)

(assert (=> b!3763497 m!4258911))

(assert (=> b!3762357 d!1100054))

(declare-fun d!1100056 () Bool)

(declare-fun c!651880 () Bool)

(assert (=> d!1100056 (= c!651880 ((_ is Node!12299) (right!31404 (right!31404 (right!31404 (c!651315 v!6347))))))))

(declare-fun e!2327552 () Bool)

(assert (=> d!1100056 (= (inv!53854 (right!31404 (right!31404 (right!31404 (c!651315 v!6347))))) e!2327552)))

(declare-fun b!3763498 () Bool)

(assert (=> b!3763498 (= e!2327552 (inv!53855 (right!31404 (right!31404 (right!31404 (c!651315 v!6347))))))))

(declare-fun b!3763499 () Bool)

(declare-fun e!2327553 () Bool)

(assert (=> b!3763499 (= e!2327552 e!2327553)))

(declare-fun res!1523833 () Bool)

(assert (=> b!3763499 (= res!1523833 (not ((_ is Leaf!19075) (right!31404 (right!31404 (right!31404 (c!651315 v!6347)))))))))

(assert (=> b!3763499 (=> res!1523833 e!2327553)))

(declare-fun b!3763500 () Bool)

(assert (=> b!3763500 (= e!2327553 (inv!53857 (right!31404 (right!31404 (right!31404 (c!651315 v!6347))))))))

(assert (= (and d!1100056 c!651880) b!3763498))

(assert (= (and d!1100056 (not c!651880)) b!3763499))

(assert (= (and b!3763499 (not res!1523833)) b!3763500))

(declare-fun m!4258913 () Bool)

(assert (=> b!3763498 m!4258913))

(declare-fun m!4258915 () Bool)

(assert (=> b!3763500 m!4258915))

(assert (=> b!3762357 d!1100056))

(declare-fun b!3763503 () Bool)

(declare-fun res!1523835 () Bool)

(declare-fun e!2327554 () Bool)

(assert (=> b!3763503 (=> (not res!1523835) (not e!2327554))))

(declare-fun lt!1302432 () List!40263)

(assert (=> b!3763503 (= res!1523835 (= (size!30213 lt!1302432) (+ (size!30213 (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (size!30213 (printList!1661 thiss!13650 (t!303914 lt!1302052))))))))

(declare-fun d!1100058 () Bool)

(assert (=> d!1100058 e!2327554))

(declare-fun res!1523834 () Bool)

(assert (=> d!1100058 (=> (not res!1523834) (not e!2327554))))

(assert (=> d!1100058 (= res!1523834 (= (content!5894 lt!1302432) ((_ map or) (content!5894 (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (content!5894 (printList!1661 thiss!13650 (t!303914 lt!1302052))))))))

(declare-fun e!2327555 () List!40263)

(assert (=> d!1100058 (= lt!1302432 e!2327555)))

(declare-fun c!651881 () Bool)

(assert (=> d!1100058 (= c!651881 ((_ is Nil!40139) (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))

(assert (=> d!1100058 (= (++!9954 (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) (printList!1661 thiss!13650 (t!303914 lt!1302052))) lt!1302432)))

(declare-fun b!3763501 () Bool)

(assert (=> b!3763501 (= e!2327555 (printList!1661 thiss!13650 (t!303914 lt!1302052)))))

(declare-fun b!3763502 () Bool)

(assert (=> b!3763502 (= e!2327555 (Cons!40139 (h!45559 (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (++!9954 (t!303912 (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (printList!1661 thiss!13650 (t!303914 lt!1302052)))))))

(declare-fun b!3763504 () Bool)

(assert (=> b!3763504 (= e!2327554 (or (not (= (printList!1661 thiss!13650 (t!303914 lt!1302052)) Nil!40139)) (= lt!1302432 (t!303912 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(assert (= (and d!1100058 c!651881) b!3763501))

(assert (= (and d!1100058 (not c!651881)) b!3763502))

(assert (= (and d!1100058 res!1523834) b!3763503))

(assert (= (and b!3763503 res!1523835) b!3763504))

(declare-fun m!4258917 () Bool)

(assert (=> b!3763503 m!4258917))

(assert (=> b!3763503 m!4256279))

(assert (=> b!3763503 m!4255717))

(assert (=> b!3763503 m!4256467))

(declare-fun m!4258919 () Bool)

(assert (=> d!1100058 m!4258919))

(assert (=> d!1100058 m!4256411))

(assert (=> d!1100058 m!4255717))

(assert (=> d!1100058 m!4256471))

(assert (=> b!3763502 m!4255717))

(declare-fun m!4258921 () Bool)

(assert (=> b!3763502 m!4258921))

(assert (=> b!3762143 d!1100058))

(declare-fun d!1100060 () Bool)

(declare-fun c!651882 () Bool)

(assert (=> d!1100060 (= c!651882 ((_ is Node!12298) (left!31073 (right!31403 (left!31073 (c!651313 acc!400))))))))

(declare-fun e!2327556 () Bool)

(assert (=> d!1100060 (= (inv!53851 (left!31073 (right!31403 (left!31073 (c!651313 acc!400))))) e!2327556)))

(declare-fun b!3763505 () Bool)

(assert (=> b!3763505 (= e!2327556 (inv!53859 (left!31073 (right!31403 (left!31073 (c!651313 acc!400))))))))

(declare-fun b!3763506 () Bool)

(declare-fun e!2327557 () Bool)

(assert (=> b!3763506 (= e!2327556 e!2327557)))

(declare-fun res!1523836 () Bool)

(assert (=> b!3763506 (= res!1523836 (not ((_ is Leaf!19074) (left!31073 (right!31403 (left!31073 (c!651313 acc!400)))))))))

(assert (=> b!3763506 (=> res!1523836 e!2327557)))

(declare-fun b!3763507 () Bool)

(assert (=> b!3763507 (= e!2327557 (inv!53860 (left!31073 (right!31403 (left!31073 (c!651313 acc!400))))))))

(assert (= (and d!1100060 c!651882) b!3763505))

(assert (= (and d!1100060 (not c!651882)) b!3763506))

(assert (= (and b!3763506 (not res!1523836)) b!3763507))

(declare-fun m!4258923 () Bool)

(assert (=> b!3763505 m!4258923))

(declare-fun m!4258925 () Bool)

(assert (=> b!3763507 m!4258925))

(assert (=> b!3762348 d!1100060))

(declare-fun d!1100062 () Bool)

(declare-fun c!651883 () Bool)

(assert (=> d!1100062 (= c!651883 ((_ is Node!12298) (right!31403 (right!31403 (left!31073 (c!651313 acc!400))))))))

(declare-fun e!2327558 () Bool)

(assert (=> d!1100062 (= (inv!53851 (right!31403 (right!31403 (left!31073 (c!651313 acc!400))))) e!2327558)))

(declare-fun b!3763508 () Bool)

(assert (=> b!3763508 (= e!2327558 (inv!53859 (right!31403 (right!31403 (left!31073 (c!651313 acc!400))))))))

(declare-fun b!3763509 () Bool)

(declare-fun e!2327559 () Bool)

(assert (=> b!3763509 (= e!2327558 e!2327559)))

(declare-fun res!1523837 () Bool)

(assert (=> b!3763509 (= res!1523837 (not ((_ is Leaf!19074) (right!31403 (right!31403 (left!31073 (c!651313 acc!400)))))))))

(assert (=> b!3763509 (=> res!1523837 e!2327559)))

(declare-fun b!3763510 () Bool)

(assert (=> b!3763510 (= e!2327559 (inv!53860 (right!31403 (right!31403 (left!31073 (c!651313 acc!400))))))))

(assert (= (and d!1100062 c!651883) b!3763508))

(assert (= (and d!1100062 (not c!651883)) b!3763509))

(assert (= (and b!3763509 (not res!1523837)) b!3763510))

(declare-fun m!4258927 () Bool)

(assert (=> b!3763508 m!4258927))

(declare-fun m!4258929 () Bool)

(assert (=> b!3763510 m!4258929))

(assert (=> b!3762348 d!1100062))

(declare-fun d!1100064 () Bool)

(declare-fun c!651884 () Bool)

(assert (=> d!1100064 (= c!651884 ((_ is Nil!40139) lt!1302190))))

(declare-fun e!2327560 () (InoxSet C!22308))

(assert (=> d!1100064 (= (content!5894 lt!1302190) e!2327560)))

(declare-fun b!3763511 () Bool)

(assert (=> b!3763511 (= e!2327560 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763512 () Bool)

(assert (=> b!3763512 (= e!2327560 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302190) true) (content!5894 (t!303912 lt!1302190))))))

(assert (= (and d!1100064 c!651884) b!3763511))

(assert (= (and d!1100064 (not c!651884)) b!3763512))

(declare-fun m!4258931 () Bool)

(assert (=> b!3763512 m!4258931))

(declare-fun m!4258933 () Bool)

(assert (=> b!3763512 m!4258933))

(assert (=> d!1099032 d!1100064))

(declare-fun d!1100066 () Bool)

(declare-fun c!651885 () Bool)

(assert (=> d!1100066 (= c!651885 ((_ is Nil!40139) (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108)))))

(declare-fun e!2327561 () (InoxSet C!22308))

(assert (=> d!1100066 (= (content!5894 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108)) e!2327561)))

(declare-fun b!3763513 () Bool)

(assert (=> b!3763513 (= e!2327561 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763514 () Bool)

(assert (=> b!3763514 (= e!2327561 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108)) true) (content!5894 (t!303912 (++!9954 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))) lt!1302108)))))))

(assert (= (and d!1100066 c!651885) b!3763513))

(assert (= (and d!1100066 (not c!651885)) b!3763514))

(declare-fun m!4258935 () Bool)

(assert (=> b!3763514 m!4258935))

(assert (=> b!3763514 m!4257793))

(assert (=> d!1099032 d!1100066))

(declare-fun d!1100068 () Bool)

(declare-fun c!651886 () Bool)

(assert (=> d!1100068 (= c!651886 ((_ is Nil!40139) lt!1302110))))

(declare-fun e!2327562 () (InoxSet C!22308))

(assert (=> d!1100068 (= (content!5894 lt!1302110) e!2327562)))

(declare-fun b!3763515 () Bool)

(assert (=> b!3763515 (= e!2327562 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763516 () Bool)

(assert (=> b!3763516 (= e!2327562 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302110) true) (content!5894 (t!303912 lt!1302110))))))

(assert (= (and d!1100068 c!651886) b!3763515))

(assert (= (and d!1100068 (not c!651886)) b!3763516))

(declare-fun m!4258937 () Bool)

(assert (=> b!3763516 m!4258937))

(declare-fun m!4258939 () Bool)

(assert (=> b!3763516 m!4258939))

(assert (=> d!1099032 d!1100068))

(declare-fun d!1100070 () Bool)

(declare-fun lt!1302433 () Int)

(assert (=> d!1100070 (>= lt!1302433 0)))

(declare-fun e!2327563 () Int)

(assert (=> d!1100070 (= lt!1302433 e!2327563)))

(declare-fun c!651887 () Bool)

(assert (=> d!1100070 (= c!651887 ((_ is Nil!40139) (t!303912 lt!1302118)))))

(assert (=> d!1100070 (= (size!30213 (t!303912 lt!1302118)) lt!1302433)))

(declare-fun b!3763517 () Bool)

(assert (=> b!3763517 (= e!2327563 0)))

(declare-fun b!3763518 () Bool)

(assert (=> b!3763518 (= e!2327563 (+ 1 (size!30213 (t!303912 (t!303912 lt!1302118)))))))

(assert (= (and d!1100070 c!651887) b!3763517))

(assert (= (and d!1100070 (not c!651887)) b!3763518))

(declare-fun m!4258941 () Bool)

(assert (=> b!3763518 m!4258941))

(assert (=> b!3762322 d!1100070))

(declare-fun d!1100072 () Bool)

(declare-fun c!651888 () Bool)

(assert (=> d!1100072 (= c!651888 ((_ is Node!12298) (left!31073 (right!31403 (right!31403 (c!651313 acc!400))))))))

(declare-fun e!2327564 () Bool)

(assert (=> d!1100072 (= (inv!53851 (left!31073 (right!31403 (right!31403 (c!651313 acc!400))))) e!2327564)))

(declare-fun b!3763519 () Bool)

(assert (=> b!3763519 (= e!2327564 (inv!53859 (left!31073 (right!31403 (right!31403 (c!651313 acc!400))))))))

(declare-fun b!3763520 () Bool)

(declare-fun e!2327565 () Bool)

(assert (=> b!3763520 (= e!2327564 e!2327565)))

(declare-fun res!1523838 () Bool)

(assert (=> b!3763520 (= res!1523838 (not ((_ is Leaf!19074) (left!31073 (right!31403 (right!31403 (c!651313 acc!400)))))))))

(assert (=> b!3763520 (=> res!1523838 e!2327565)))

(declare-fun b!3763521 () Bool)

(assert (=> b!3763521 (= e!2327565 (inv!53860 (left!31073 (right!31403 (right!31403 (c!651313 acc!400))))))))

(assert (= (and d!1100072 c!651888) b!3763519))

(assert (= (and d!1100072 (not c!651888)) b!3763520))

(assert (= (and b!3763520 (not res!1523838)) b!3763521))

(declare-fun m!4258943 () Bool)

(assert (=> b!3763519 m!4258943))

(declare-fun m!4258945 () Bool)

(assert (=> b!3763521 m!4258945))

(assert (=> b!3762412 d!1100072))

(declare-fun d!1100074 () Bool)

(declare-fun c!651889 () Bool)

(assert (=> d!1100074 (= c!651889 ((_ is Node!12298) (right!31403 (right!31403 (right!31403 (c!651313 acc!400))))))))

(declare-fun e!2327566 () Bool)

(assert (=> d!1100074 (= (inv!53851 (right!31403 (right!31403 (right!31403 (c!651313 acc!400))))) e!2327566)))

(declare-fun b!3763522 () Bool)

(assert (=> b!3763522 (= e!2327566 (inv!53859 (right!31403 (right!31403 (right!31403 (c!651313 acc!400))))))))

(declare-fun b!3763523 () Bool)

(declare-fun e!2327567 () Bool)

(assert (=> b!3763523 (= e!2327566 e!2327567)))

(declare-fun res!1523839 () Bool)

(assert (=> b!3763523 (= res!1523839 (not ((_ is Leaf!19074) (right!31403 (right!31403 (right!31403 (c!651313 acc!400)))))))))

(assert (=> b!3763523 (=> res!1523839 e!2327567)))

(declare-fun b!3763524 () Bool)

(assert (=> b!3763524 (= e!2327567 (inv!53860 (right!31403 (right!31403 (right!31403 (c!651313 acc!400))))))))

(assert (= (and d!1100074 c!651889) b!3763522))

(assert (= (and d!1100074 (not c!651889)) b!3763523))

(assert (= (and b!3763523 (not res!1523839)) b!3763524))

(declare-fun m!4258947 () Bool)

(assert (=> b!3763522 m!4258947))

(declare-fun m!4258949 () Bool)

(assert (=> b!3763524 m!4258949))

(assert (=> b!3762412 d!1100074))

(declare-fun d!1100076 () Bool)

(declare-fun lt!1302434 () Int)

(assert (=> d!1100076 (>= lt!1302434 0)))

(declare-fun e!2327568 () Int)

(assert (=> d!1100076 (= lt!1302434 e!2327568)))

(declare-fun c!651890 () Bool)

(assert (=> d!1100076 (= c!651890 ((_ is Nil!40139) lt!1302223))))

(assert (=> d!1100076 (= (size!30213 lt!1302223) lt!1302434)))

(declare-fun b!3763525 () Bool)

(assert (=> b!3763525 (= e!2327568 0)))

(declare-fun b!3763526 () Bool)

(assert (=> b!3763526 (= e!2327568 (+ 1 (size!30213 (t!303912 lt!1302223))))))

(assert (= (and d!1100076 c!651890) b!3763525))

(assert (= (and d!1100076 (not c!651890)) b!3763526))

(declare-fun m!4258951 () Bool)

(assert (=> b!3763526 m!4258951))

(assert (=> b!3762325 d!1100076))

(assert (=> b!3762325 d!1099440))

(assert (=> b!3762325 d!1098950))

(assert (=> b!3762020 d!1099456))

(assert (=> b!3762020 d!1099458))

(declare-fun d!1100078 () Bool)

(declare-fun charsToBigInt!1 (List!40264) Int)

(assert (=> d!1100078 (= (inv!17 (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))) (= (charsToBigInt!1 (text!45150 (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196045 (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))))

(declare-fun bs!575906 () Bool)

(assert (= bs!575906 d!1100078))

(declare-fun m!4258953 () Bool)

(assert (=> bs!575906 m!4258953))

(assert (=> b!3762173 d!1100078))

(declare-fun d!1100080 () Bool)

(assert (=> d!1100080 (= (max!0 (height!1755 (left!31073 (left!31073 (c!651313 acc!400)))) (height!1755 (right!31403 (left!31073 (c!651313 acc!400))))) (ite (< (height!1755 (left!31073 (left!31073 (c!651313 acc!400)))) (height!1755 (right!31403 (left!31073 (c!651313 acc!400))))) (height!1755 (right!31403 (left!31073 (c!651313 acc!400)))) (height!1755 (left!31073 (left!31073 (c!651313 acc!400))))))))

(assert (=> b!3762340 d!1100080))

(assert (=> b!3762340 d!1099368))

(assert (=> b!3762340 d!1099370))

(declare-fun d!1100082 () Bool)

(declare-fun c!651891 () Bool)

(assert (=> d!1100082 (= c!651891 ((_ is Nil!40139) lt!1302179))))

(declare-fun e!2327569 () (InoxSet C!22308))

(assert (=> d!1100082 (= (content!5894 lt!1302179) e!2327569)))

(declare-fun b!3763527 () Bool)

(assert (=> b!3763527 (= e!2327569 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763528 () Bool)

(assert (=> b!3763528 (= e!2327569 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302179) true) (content!5894 (t!303912 lt!1302179))))))

(assert (= (and d!1100082 c!651891) b!3763527))

(assert (= (and d!1100082 (not c!651891)) b!3763528))

(declare-fun m!4258955 () Bool)

(assert (=> b!3763528 m!4258955))

(declare-fun m!4258957 () Bool)

(assert (=> b!3763528 m!4258957))

(assert (=> d!1099000 d!1100082))

(assert (=> d!1099000 d!1098962))

(declare-fun d!1100084 () Bool)

(declare-fun c!651892 () Bool)

(assert (=> d!1100084 (= c!651892 ((_ is Nil!40139) (printList!1661 thiss!13650 (t!303914 lt!1302052))))))

(declare-fun e!2327570 () (InoxSet C!22308))

(assert (=> d!1100084 (= (content!5894 (printList!1661 thiss!13650 (t!303914 lt!1302052))) e!2327570)))

(declare-fun b!3763529 () Bool)

(assert (=> b!3763529 (= e!2327570 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763530 () Bool)

(assert (=> b!3763530 (= e!2327570 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (printList!1661 thiss!13650 (t!303914 lt!1302052))) true) (content!5894 (t!303912 (printList!1661 thiss!13650 (t!303914 lt!1302052))))))))

(assert (= (and d!1100084 c!651892) b!3763529))

(assert (= (and d!1100084 (not c!651892)) b!3763530))

(declare-fun m!4258959 () Bool)

(assert (=> b!3763530 m!4258959))

(declare-fun m!4258961 () Bool)

(assert (=> b!3763530 m!4258961))

(assert (=> d!1099000 d!1100084))

(declare-fun d!1100086 () Bool)

(declare-fun res!1523840 () Bool)

(declare-fun e!2327571 () Bool)

(assert (=> d!1100086 (=> (not res!1523840) (not e!2327571))))

(assert (=> d!1100086 (= res!1523840 (<= (size!30210 (list!14826 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347)))))) 512))))

(assert (=> d!1100086 (= (inv!53857 (right!31404 (left!31074 (c!651315 v!6347)))) e!2327571)))

(declare-fun b!3763531 () Bool)

(declare-fun res!1523841 () Bool)

(assert (=> b!3763531 (=> (not res!1523841) (not e!2327571))))

(assert (=> b!3763531 (= res!1523841 (= (csize!24829 (right!31404 (left!31074 (c!651315 v!6347)))) (size!30210 (list!14826 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))))))

(declare-fun b!3763532 () Bool)

(assert (=> b!3763532 (= e!2327571 (and (> (csize!24829 (right!31404 (left!31074 (c!651315 v!6347)))) 0) (<= (csize!24829 (right!31404 (left!31074 (c!651315 v!6347)))) 512)))))

(assert (= (and d!1100086 res!1523840) b!3763531))

(assert (= (and b!3763531 res!1523841) b!3763532))

(assert (=> d!1100086 m!4257687))

(assert (=> d!1100086 m!4257687))

(declare-fun m!4258963 () Bool)

(assert (=> d!1100086 m!4258963))

(assert (=> b!3763531 m!4257687))

(assert (=> b!3763531 m!4257687))

(assert (=> b!3763531 m!4258963))

(assert (=> b!3762286 d!1100086))

(declare-fun b!3763533 () Bool)

(declare-fun e!2327573 () Bool)

(declare-fun e!2327572 () Bool)

(assert (=> b!3763533 (= e!2327573 e!2327572)))

(declare-fun res!1523847 () Bool)

(assert (=> b!3763533 (=> (not res!1523847) (not e!2327572))))

(assert (=> b!3763533 (= res!1523847 (<= (- 1) (- (height!1754 (left!31074 (right!31404 (left!31074 (c!651315 v!6347))))) (height!1754 (right!31404 (right!31404 (left!31074 (c!651315 v!6347))))))))))

(declare-fun b!3763534 () Bool)

(declare-fun res!1523846 () Bool)

(assert (=> b!3763534 (=> (not res!1523846) (not e!2327572))))

(assert (=> b!3763534 (= res!1523846 (not (isEmpty!23583 (left!31074 (right!31404 (left!31074 (c!651315 v!6347)))))))))

(declare-fun d!1100088 () Bool)

(declare-fun res!1523843 () Bool)

(assert (=> d!1100088 (=> res!1523843 e!2327573)))

(assert (=> d!1100088 (= res!1523843 (not ((_ is Node!12299) (right!31404 (left!31074 (c!651315 v!6347))))))))

(assert (=> d!1100088 (= (isBalanced!3538 (right!31404 (left!31074 (c!651315 v!6347)))) e!2327573)))

(declare-fun b!3763535 () Bool)

(declare-fun res!1523842 () Bool)

(assert (=> b!3763535 (=> (not res!1523842) (not e!2327572))))

(assert (=> b!3763535 (= res!1523842 (isBalanced!3538 (right!31404 (right!31404 (left!31074 (c!651315 v!6347))))))))

(declare-fun b!3763536 () Bool)

(declare-fun res!1523845 () Bool)

(assert (=> b!3763536 (=> (not res!1523845) (not e!2327572))))

(assert (=> b!3763536 (= res!1523845 (isBalanced!3538 (left!31074 (right!31404 (left!31074 (c!651315 v!6347))))))))

(declare-fun b!3763537 () Bool)

(declare-fun res!1523844 () Bool)

(assert (=> b!3763537 (=> (not res!1523844) (not e!2327572))))

(assert (=> b!3763537 (= res!1523844 (<= (- (height!1754 (left!31074 (right!31404 (left!31074 (c!651315 v!6347))))) (height!1754 (right!31404 (right!31404 (left!31074 (c!651315 v!6347)))))) 1))))

(declare-fun b!3763538 () Bool)

(assert (=> b!3763538 (= e!2327572 (not (isEmpty!23583 (right!31404 (right!31404 (left!31074 (c!651315 v!6347)))))))))

(assert (= (and d!1100088 (not res!1523843)) b!3763533))

(assert (= (and b!3763533 res!1523847) b!3763537))

(assert (= (and b!3763537 res!1523844) b!3763536))

(assert (= (and b!3763536 res!1523845) b!3763535))

(assert (= (and b!3763535 res!1523842) b!3763534))

(assert (= (and b!3763534 res!1523846) b!3763538))

(declare-fun m!4258965 () Bool)

(assert (=> b!3763536 m!4258965))

(declare-fun m!4258967 () Bool)

(assert (=> b!3763535 m!4258967))

(declare-fun m!4258969 () Bool)

(assert (=> b!3763538 m!4258969))

(declare-fun m!4258971 () Bool)

(assert (=> b!3763537 m!4258971))

(declare-fun m!4258973 () Bool)

(assert (=> b!3763537 m!4258973))

(assert (=> b!3763533 m!4258971))

(assert (=> b!3763533 m!4258973))

(declare-fun m!4258975 () Bool)

(assert (=> b!3763534 m!4258975))

(assert (=> b!3762150 d!1100088))

(declare-fun d!1100090 () Bool)

(declare-fun res!1523848 () Bool)

(declare-fun e!2327574 () Bool)

(assert (=> d!1100090 (=> (not res!1523848) (not e!2327574))))

(assert (=> d!1100090 (= res!1523848 (= (csize!24826 (right!31403 (right!31403 (c!651313 acc!400)))) (+ (size!30214 (left!31073 (right!31403 (right!31403 (c!651313 acc!400))))) (size!30214 (right!31403 (right!31403 (right!31403 (c!651313 acc!400))))))))))

(assert (=> d!1100090 (= (inv!53859 (right!31403 (right!31403 (c!651313 acc!400)))) e!2327574)))

(declare-fun b!3763539 () Bool)

(declare-fun res!1523849 () Bool)

(assert (=> b!3763539 (=> (not res!1523849) (not e!2327574))))

(assert (=> b!3763539 (= res!1523849 (and (not (= (left!31073 (right!31403 (right!31403 (c!651313 acc!400)))) Empty!12298)) (not (= (right!31403 (right!31403 (right!31403 (c!651313 acc!400)))) Empty!12298))))))

(declare-fun b!3763540 () Bool)

(declare-fun res!1523850 () Bool)

(assert (=> b!3763540 (=> (not res!1523850) (not e!2327574))))

(assert (=> b!3763540 (= res!1523850 (= (cheight!12509 (right!31403 (right!31403 (c!651313 acc!400)))) (+ (max!0 (height!1755 (left!31073 (right!31403 (right!31403 (c!651313 acc!400))))) (height!1755 (right!31403 (right!31403 (right!31403 (c!651313 acc!400)))))) 1)))))

(declare-fun b!3763541 () Bool)

(assert (=> b!3763541 (= e!2327574 (<= 0 (cheight!12509 (right!31403 (right!31403 (c!651313 acc!400))))))))

(assert (= (and d!1100090 res!1523848) b!3763539))

(assert (= (and b!3763539 res!1523849) b!3763540))

(assert (= (and b!3763540 res!1523850) b!3763541))

(declare-fun m!4258977 () Bool)

(assert (=> d!1100090 m!4258977))

(declare-fun m!4258979 () Bool)

(assert (=> d!1100090 m!4258979))

(assert (=> b!3763540 m!4257805))

(assert (=> b!3763540 m!4257807))

(assert (=> b!3763540 m!4257805))

(assert (=> b!3763540 m!4257807))

(declare-fun m!4258981 () Bool)

(assert (=> b!3763540 m!4258981))

(assert (=> b!3762131 d!1100090))

(declare-fun d!1100092 () Bool)

(declare-fun lt!1302435 () Int)

(assert (=> d!1100092 (>= lt!1302435 0)))

(declare-fun e!2327575 () Int)

(assert (=> d!1100092 (= lt!1302435 e!2327575)))

(declare-fun c!651893 () Bool)

(assert (=> d!1100092 (= c!651893 ((_ is Nil!40139) lt!1302224))))

(assert (=> d!1100092 (= (size!30213 lt!1302224) lt!1302435)))

(declare-fun b!3763542 () Bool)

(assert (=> b!3763542 (= e!2327575 0)))

(declare-fun b!3763543 () Bool)

(assert (=> b!3763543 (= e!2327575 (+ 1 (size!30213 (t!303912 lt!1302224))))))

(assert (= (and d!1100092 c!651893) b!3763542))

(assert (= (and d!1100092 (not c!651893)) b!3763543))

(declare-fun m!4258983 () Bool)

(assert (=> b!3763543 m!4258983))

(assert (=> b!3762331 d!1100092))

(assert (=> b!3762331 d!1100026))

(declare-fun d!1100094 () Bool)

(declare-fun lt!1302436 () Int)

(assert (=> d!1100094 (>= lt!1302436 0)))

(declare-fun e!2327576 () Int)

(assert (=> d!1100094 (= lt!1302436 e!2327576)))

(declare-fun c!651894 () Bool)

(assert (=> d!1100094 (= c!651894 ((_ is Nil!40139) (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))))))

(assert (=> d!1100094 (= (size!30213 (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))) lt!1302436)))

(declare-fun b!3763544 () Bool)

(assert (=> b!3763544 (= e!2327576 0)))

(declare-fun b!3763545 () Bool)

(assert (=> b!3763545 (= e!2327576 (+ 1 (size!30213 (t!303912 (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))))))))

(assert (= (and d!1100094 c!651894) b!3763544))

(assert (= (and d!1100094 (not c!651894)) b!3763545))

(declare-fun m!4258985 () Bool)

(assert (=> b!3763545 m!4258985))

(assert (=> b!3762331 d!1100094))

(declare-fun b!3763548 () Bool)

(declare-fun res!1523852 () Bool)

(declare-fun e!2327577 () Bool)

(assert (=> b!3763548 (=> (not res!1523852) (not e!2327577))))

(declare-fun lt!1302437 () List!40263)

(assert (=> b!3763548 (= res!1523852 (= (size!30213 lt!1302437) (+ (size!30213 (t!303912 (t!303912 lt!1302051))) (size!30213 (++!9954 lt!1302080 lt!1302082)))))))

(declare-fun d!1100096 () Bool)

(assert (=> d!1100096 e!2327577))

(declare-fun res!1523851 () Bool)

(assert (=> d!1100096 (=> (not res!1523851) (not e!2327577))))

(assert (=> d!1100096 (= res!1523851 (= (content!5894 lt!1302437) ((_ map or) (content!5894 (t!303912 (t!303912 lt!1302051))) (content!5894 (++!9954 lt!1302080 lt!1302082)))))))

(declare-fun e!2327578 () List!40263)

(assert (=> d!1100096 (= lt!1302437 e!2327578)))

(declare-fun c!651895 () Bool)

(assert (=> d!1100096 (= c!651895 ((_ is Nil!40139) (t!303912 (t!303912 lt!1302051))))))

(assert (=> d!1100096 (= (++!9954 (t!303912 (t!303912 lt!1302051)) (++!9954 lt!1302080 lt!1302082)) lt!1302437)))

(declare-fun b!3763546 () Bool)

(assert (=> b!3763546 (= e!2327578 (++!9954 lt!1302080 lt!1302082))))

(declare-fun b!3763547 () Bool)

(assert (=> b!3763547 (= e!2327578 (Cons!40139 (h!45559 (t!303912 (t!303912 lt!1302051))) (++!9954 (t!303912 (t!303912 (t!303912 lt!1302051))) (++!9954 lt!1302080 lt!1302082))))))

(declare-fun b!3763549 () Bool)

(assert (=> b!3763549 (= e!2327577 (or (not (= (++!9954 lt!1302080 lt!1302082) Nil!40139)) (= lt!1302437 (t!303912 (t!303912 lt!1302051)))))))

(assert (= (and d!1100096 c!651895) b!3763546))

(assert (= (and d!1100096 (not c!651895)) b!3763547))

(assert (= (and d!1100096 res!1523851) b!3763548))

(assert (= (and b!3763548 res!1523852) b!3763549))

(declare-fun m!4258987 () Bool)

(assert (=> b!3763548 m!4258987))

(assert (=> b!3763548 m!4257461))

(assert (=> b!3763548 m!4255711))

(assert (=> b!3763548 m!4255951))

(declare-fun m!4258989 () Bool)

(assert (=> d!1100096 m!4258989))

(assert (=> d!1100096 m!4257465))

(assert (=> d!1100096 m!4255711))

(assert (=> d!1100096 m!4255955))

(assert (=> b!3763547 m!4255711))

(declare-fun m!4258991 () Bool)

(assert (=> b!3763547 m!4258991))

(assert (=> b!3762270 d!1100096))

(declare-fun d!1100098 () Bool)

(declare-fun c!651896 () Bool)

(assert (=> d!1100098 (= c!651896 ((_ is Nil!40139) lt!1302172))))

(declare-fun e!2327579 () (InoxSet C!22308))

(assert (=> d!1100098 (= (content!5894 lt!1302172) e!2327579)))

(declare-fun b!3763550 () Bool)

(assert (=> b!3763550 (= e!2327579 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763551 () Bool)

(assert (=> b!3763551 (= e!2327579 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302172) true) (content!5894 (t!303912 lt!1302172))))))

(assert (= (and d!1100098 c!651896) b!3763550))

(assert (= (and d!1100098 (not c!651896)) b!3763551))

(declare-fun m!4258993 () Bool)

(assert (=> b!3763551 m!4258993))

(declare-fun m!4258995 () Bool)

(assert (=> b!3763551 m!4258995))

(assert (=> d!1098984 d!1100098))

(assert (=> d!1098984 d!1099538))

(assert (=> d!1098984 d!1098972))

(declare-fun d!1100100 () Bool)

(declare-fun res!1523853 () Bool)

(declare-fun e!2327580 () Bool)

(assert (=> d!1100100 (=> (not res!1523853) (not e!2327580))))

(assert (=> d!1100100 (= res!1523853 (= (csize!24826 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))) (+ (size!30214 (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))) (size!30214 (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))))))))

(assert (=> d!1100100 (= (inv!53859 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))) e!2327580)))

(declare-fun b!3763552 () Bool)

(declare-fun res!1523854 () Bool)

(assert (=> b!3763552 (=> (not res!1523854) (not e!2327580))))

(assert (=> b!3763552 (= res!1523854 (and (not (= (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))) Empty!12298)) (not (= (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))) Empty!12298))))))

(declare-fun b!3763553 () Bool)

(declare-fun res!1523855 () Bool)

(assert (=> b!3763553 (=> (not res!1523855) (not e!2327580))))

(assert (=> b!3763553 (= res!1523855 (= (cheight!12509 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))) (+ (max!0 (height!1755 (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))) (height!1755 (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))) 1)))))

(declare-fun b!3763554 () Bool)

(assert (=> b!3763554 (= e!2327580 (<= 0 (cheight!12509 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))))))

(assert (= (and d!1100100 res!1523853) b!3763552))

(assert (= (and b!3763552 res!1523854) b!3763553))

(assert (= (and b!3763553 res!1523855) b!3763554))

(declare-fun m!4258997 () Bool)

(assert (=> d!1100100 m!4258997))

(declare-fun m!4258999 () Bool)

(assert (=> d!1100100 m!4258999))

(assert (=> b!3763553 m!4257963))

(assert (=> b!3763553 m!4257965))

(assert (=> b!3763553 m!4257963))

(assert (=> b!3763553 m!4257965))

(declare-fun m!4259001 () Bool)

(assert (=> b!3763553 m!4259001))

(assert (=> b!3762065 d!1100100))

(assert (=> b!3762231 d!1099500))

(assert (=> b!3762231 d!1099502))

(declare-fun d!1100102 () Bool)

(declare-fun lt!1302438 () Int)

(assert (=> d!1100102 (>= lt!1302438 0)))

(declare-fun e!2327581 () Int)

(assert (=> d!1100102 (= lt!1302438 e!2327581)))

(declare-fun c!651897 () Bool)

(assert (=> d!1100102 (= c!651897 ((_ is Nil!40139) (t!303912 lt!1302122)))))

(assert (=> d!1100102 (= (size!30213 (t!303912 lt!1302122)) lt!1302438)))

(declare-fun b!3763555 () Bool)

(assert (=> b!3763555 (= e!2327581 0)))

(declare-fun b!3763556 () Bool)

(assert (=> b!3763556 (= e!2327581 (+ 1 (size!30213 (t!303912 (t!303912 lt!1302122)))))))

(assert (= (and d!1100102 c!651897) b!3763555))

(assert (= (and d!1100102 (not c!651897)) b!3763556))

(declare-fun m!4259003 () Bool)

(assert (=> b!3763556 m!4259003))

(assert (=> b!3762235 d!1100102))

(declare-fun d!1100104 () Bool)

(assert (=> d!1100104 (= (max!0 (height!1754 (left!31074 (right!31404 (c!651315 v!6347)))) (height!1754 (right!31404 (right!31404 (c!651315 v!6347))))) (ite (< (height!1754 (left!31074 (right!31404 (c!651315 v!6347)))) (height!1754 (right!31404 (right!31404 (c!651315 v!6347))))) (height!1754 (right!31404 (right!31404 (c!651315 v!6347)))) (height!1754 (left!31074 (right!31404 (c!651315 v!6347))))))))

(assert (=> b!3762241 d!1100104))

(assert (=> b!3762241 d!1099456))

(assert (=> b!3762241 d!1099458))

(declare-fun d!1100106 () Bool)

(declare-fun c!651898 () Bool)

(assert (=> d!1100106 (= c!651898 ((_ is Nil!40139) lt!1302208))))

(declare-fun e!2327582 () (InoxSet C!22308))

(assert (=> d!1100106 (= (content!5894 lt!1302208) e!2327582)))

(declare-fun b!3763557 () Bool)

(assert (=> b!3763557 (= e!2327582 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763558 () Bool)

(assert (=> b!3763558 (= e!2327582 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302208) true) (content!5894 (t!303912 lt!1302208))))))

(assert (= (and d!1100106 c!651898) b!3763557))

(assert (= (and d!1100106 (not c!651898)) b!3763558))

(declare-fun m!4259005 () Bool)

(assert (=> b!3763558 m!4259005))

(declare-fun m!4259007 () Bool)

(assert (=> b!3763558 m!4259007))

(assert (=> d!1099080 d!1100106))

(assert (=> d!1099080 d!1099384))

(assert (=> d!1099080 d!1098866))

(declare-fun b!3763559 () Bool)

(declare-fun res!1523861 () Bool)

(declare-fun e!2327584 () Bool)

(assert (=> b!3763559 (=> (not res!1523861) (not e!2327584))))

(assert (=> b!3763559 (= res!1523861 (<= (- (height!1755 (left!31073 (right!31403 (left!31073 (c!651313 acc!400))))) (height!1755 (right!31403 (right!31403 (left!31073 (c!651313 acc!400)))))) 1))))

(declare-fun b!3763560 () Bool)

(assert (=> b!3763560 (= e!2327584 (not (isEmpty!23585 (right!31403 (right!31403 (left!31073 (c!651313 acc!400)))))))))

(declare-fun b!3763561 () Bool)

(declare-fun res!1523859 () Bool)

(assert (=> b!3763561 (=> (not res!1523859) (not e!2327584))))

(assert (=> b!3763561 (= res!1523859 (isBalanced!3537 (right!31403 (right!31403 (left!31073 (c!651313 acc!400))))))))

(declare-fun d!1100108 () Bool)

(declare-fun res!1523856 () Bool)

(declare-fun e!2327583 () Bool)

(assert (=> d!1100108 (=> res!1523856 e!2327583)))

(assert (=> d!1100108 (= res!1523856 (not ((_ is Node!12298) (right!31403 (left!31073 (c!651313 acc!400))))))))

(assert (=> d!1100108 (= (isBalanced!3537 (right!31403 (left!31073 (c!651313 acc!400)))) e!2327583)))

(declare-fun b!3763562 () Bool)

(declare-fun res!1523858 () Bool)

(assert (=> b!3763562 (=> (not res!1523858) (not e!2327584))))

(assert (=> b!3763562 (= res!1523858 (isBalanced!3537 (left!31073 (right!31403 (left!31073 (c!651313 acc!400))))))))

(declare-fun b!3763563 () Bool)

(declare-fun res!1523857 () Bool)

(assert (=> b!3763563 (=> (not res!1523857) (not e!2327584))))

(assert (=> b!3763563 (= res!1523857 (not (isEmpty!23585 (left!31073 (right!31403 (left!31073 (c!651313 acc!400)))))))))

(declare-fun b!3763564 () Bool)

(assert (=> b!3763564 (= e!2327583 e!2327584)))

(declare-fun res!1523860 () Bool)

(assert (=> b!3763564 (=> (not res!1523860) (not e!2327584))))

(assert (=> b!3763564 (= res!1523860 (<= (- 1) (- (height!1755 (left!31073 (right!31403 (left!31073 (c!651313 acc!400))))) (height!1755 (right!31403 (right!31403 (left!31073 (c!651313 acc!400))))))))))

(assert (= (and d!1100108 (not res!1523856)) b!3763564))

(assert (= (and b!3763564 res!1523860) b!3763559))

(assert (= (and b!3763559 res!1523861) b!3763562))

(assert (= (and b!3763562 res!1523858) b!3763561))

(assert (= (and b!3763561 res!1523859) b!3763563))

(assert (= (and b!3763563 res!1523857) b!3763560))

(declare-fun m!4259009 () Bool)

(assert (=> b!3763562 m!4259009))

(declare-fun m!4259011 () Bool)

(assert (=> b!3763561 m!4259011))

(declare-fun m!4259013 () Bool)

(assert (=> b!3763563 m!4259013))

(assert (=> b!3763564 m!4257641))

(assert (=> b!3763564 m!4257643))

(assert (=> b!3763559 m!4257641))

(assert (=> b!3763559 m!4257643))

(declare-fun m!4259015 () Bool)

(assert (=> b!3763560 m!4259015))

(assert (=> b!3762277 d!1100108))

(declare-fun d!1100110 () Bool)

(declare-fun lt!1302439 () Bool)

(assert (=> d!1100110 (= lt!1302439 (isEmpty!23590 (list!14820 (right!31404 (right!31404 (c!651315 v!6347))))))))

(assert (=> d!1100110 (= lt!1302439 (= (size!30211 (right!31404 (right!31404 (c!651315 v!6347)))) 0))))

(assert (=> d!1100110 (= (isEmpty!23583 (right!31404 (right!31404 (c!651315 v!6347)))) lt!1302439)))

(declare-fun bs!575907 () Bool)

(assert (= bs!575907 d!1100110))

(assert (=> bs!575907 m!4256763))

(assert (=> bs!575907 m!4256763))

(declare-fun m!4259017 () Bool)

(assert (=> bs!575907 m!4259017))

(assert (=> bs!575907 m!4256653))

(assert (=> b!3762025 d!1100110))

(declare-fun b!3763567 () Bool)

(declare-fun res!1523863 () Bool)

(declare-fun e!2327585 () Bool)

(assert (=> b!3763567 (=> (not res!1523863) (not e!2327585))))

(declare-fun lt!1302440 () List!40263)

(assert (=> b!3763567 (= res!1523863 (= (size!30213 lt!1302440) (+ (size!30213 (list!14819 (left!31073 (left!31073 (c!651313 acc!400))))) (size!30213 (list!14819 (right!31403 (left!31073 (c!651313 acc!400))))))))))

(declare-fun d!1100112 () Bool)

(assert (=> d!1100112 e!2327585))

(declare-fun res!1523862 () Bool)

(assert (=> d!1100112 (=> (not res!1523862) (not e!2327585))))

(assert (=> d!1100112 (= res!1523862 (= (content!5894 lt!1302440) ((_ map or) (content!5894 (list!14819 (left!31073 (left!31073 (c!651313 acc!400))))) (content!5894 (list!14819 (right!31403 (left!31073 (c!651313 acc!400))))))))))

(declare-fun e!2327586 () List!40263)

(assert (=> d!1100112 (= lt!1302440 e!2327586)))

(declare-fun c!651899 () Bool)

(assert (=> d!1100112 (= c!651899 ((_ is Nil!40139) (list!14819 (left!31073 (left!31073 (c!651313 acc!400))))))))

(assert (=> d!1100112 (= (++!9954 (list!14819 (left!31073 (left!31073 (c!651313 acc!400)))) (list!14819 (right!31403 (left!31073 (c!651313 acc!400))))) lt!1302440)))

(declare-fun b!3763565 () Bool)

(assert (=> b!3763565 (= e!2327586 (list!14819 (right!31403 (left!31073 (c!651313 acc!400)))))))

(declare-fun b!3763566 () Bool)

(assert (=> b!3763566 (= e!2327586 (Cons!40139 (h!45559 (list!14819 (left!31073 (left!31073 (c!651313 acc!400))))) (++!9954 (t!303912 (list!14819 (left!31073 (left!31073 (c!651313 acc!400))))) (list!14819 (right!31403 (left!31073 (c!651313 acc!400)))))))))

(declare-fun b!3763568 () Bool)

(assert (=> b!3763568 (= e!2327585 (or (not (= (list!14819 (right!31403 (left!31073 (c!651313 acc!400)))) Nil!40139)) (= lt!1302440 (list!14819 (left!31073 (left!31073 (c!651313 acc!400)))))))))

(assert (= (and d!1100112 c!651899) b!3763565))

(assert (= (and d!1100112 (not c!651899)) b!3763566))

(assert (= (and d!1100112 res!1523862) b!3763567))

(assert (= (and b!3763567 res!1523863) b!3763568))

(declare-fun m!4259019 () Bool)

(assert (=> b!3763567 m!4259019))

(assert (=> b!3763567 m!4256675))

(assert (=> b!3763567 m!4257409))

(assert (=> b!3763567 m!4256677))

(assert (=> b!3763567 m!4257411))

(declare-fun m!4259021 () Bool)

(assert (=> d!1100112 m!4259021))

(assert (=> d!1100112 m!4256675))

(declare-fun m!4259023 () Bool)

(assert (=> d!1100112 m!4259023))

(assert (=> d!1100112 m!4256677))

(declare-fun m!4259025 () Bool)

(assert (=> d!1100112 m!4259025))

(assert (=> b!3763566 m!4256677))

(declare-fun m!4259027 () Bool)

(assert (=> b!3763566 m!4259027))

(assert (=> b!3762254 d!1100112))

(declare-fun b!3763570 () Bool)

(declare-fun e!2327587 () List!40263)

(declare-fun e!2327588 () List!40263)

(assert (=> b!3763570 (= e!2327587 e!2327588)))

(declare-fun c!651901 () Bool)

(assert (=> b!3763570 (= c!651901 ((_ is Leaf!19074) (left!31073 (left!31073 (c!651313 acc!400)))))))

(declare-fun b!3763572 () Bool)

(assert (=> b!3763572 (= e!2327588 (++!9954 (list!14819 (left!31073 (left!31073 (left!31073 (c!651313 acc!400))))) (list!14819 (right!31403 (left!31073 (left!31073 (c!651313 acc!400)))))))))

(declare-fun d!1100114 () Bool)

(declare-fun c!651900 () Bool)

(assert (=> d!1100114 (= c!651900 ((_ is Empty!12298) (left!31073 (left!31073 (c!651313 acc!400)))))))

(assert (=> d!1100114 (= (list!14819 (left!31073 (left!31073 (c!651313 acc!400)))) e!2327587)))

(declare-fun b!3763569 () Bool)

(assert (=> b!3763569 (= e!2327587 Nil!40139)))

(declare-fun b!3763571 () Bool)

(assert (=> b!3763571 (= e!2327588 (list!14824 (xs!15504 (left!31073 (left!31073 (c!651313 acc!400))))))))

(assert (= (and d!1100114 c!651900) b!3763569))

(assert (= (and d!1100114 (not c!651900)) b!3763570))

(assert (= (and b!3763570 c!651901) b!3763571))

(assert (= (and b!3763570 (not c!651901)) b!3763572))

(declare-fun m!4259029 () Bool)

(assert (=> b!3763572 m!4259029))

(declare-fun m!4259031 () Bool)

(assert (=> b!3763572 m!4259031))

(assert (=> b!3763572 m!4259029))

(assert (=> b!3763572 m!4259031))

(declare-fun m!4259033 () Bool)

(assert (=> b!3763572 m!4259033))

(assert (=> b!3763571 m!4257815))

(assert (=> b!3762254 d!1100114))

(declare-fun b!3763574 () Bool)

(declare-fun e!2327589 () List!40263)

(declare-fun e!2327590 () List!40263)

(assert (=> b!3763574 (= e!2327589 e!2327590)))

(declare-fun c!651903 () Bool)

(assert (=> b!3763574 (= c!651903 ((_ is Leaf!19074) (right!31403 (left!31073 (c!651313 acc!400)))))))

(declare-fun b!3763576 () Bool)

(assert (=> b!3763576 (= e!2327590 (++!9954 (list!14819 (left!31073 (right!31403 (left!31073 (c!651313 acc!400))))) (list!14819 (right!31403 (right!31403 (left!31073 (c!651313 acc!400)))))))))

(declare-fun d!1100116 () Bool)

(declare-fun c!651902 () Bool)

(assert (=> d!1100116 (= c!651902 ((_ is Empty!12298) (right!31403 (left!31073 (c!651313 acc!400)))))))

(assert (=> d!1100116 (= (list!14819 (right!31403 (left!31073 (c!651313 acc!400)))) e!2327589)))

(declare-fun b!3763573 () Bool)

(assert (=> b!3763573 (= e!2327589 Nil!40139)))

(declare-fun b!3763575 () Bool)

(assert (=> b!3763575 (= e!2327590 (list!14824 (xs!15504 (right!31403 (left!31073 (c!651313 acc!400))))))))

(assert (= (and d!1100116 c!651902) b!3763573))

(assert (= (and d!1100116 (not c!651902)) b!3763574))

(assert (= (and b!3763574 c!651903) b!3763575))

(assert (= (and b!3763574 (not c!651903)) b!3763576))

(declare-fun m!4259035 () Bool)

(assert (=> b!3763576 m!4259035))

(declare-fun m!4259037 () Bool)

(assert (=> b!3763576 m!4259037))

(assert (=> b!3763576 m!4259035))

(assert (=> b!3763576 m!4259037))

(declare-fun m!4259039 () Bool)

(assert (=> b!3763576 m!4259039))

(declare-fun m!4259041 () Bool)

(assert (=> b!3763575 m!4259041))

(assert (=> b!3762254 d!1100116))

(declare-fun d!1100118 () Bool)

(assert (=> d!1100118 (= (inv!53846 (tag!7016 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (= (mod (str.len (value!196052 (tag!7016 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) 2) 0))))

(assert (=> b!3762402 d!1100118))

(declare-fun d!1100120 () Bool)

(declare-fun res!1523864 () Bool)

(declare-fun e!2327591 () Bool)

(assert (=> d!1100120 (=> (not res!1523864) (not e!2327591))))

(assert (=> d!1100120 (= res!1523864 (semiInverseModEq!2634 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (toValue!8512 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))))))

(assert (=> d!1100120 (= (inv!53868 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) e!2327591)))

(declare-fun b!3763577 () Bool)

(assert (=> b!3763577 (= e!2327591 (equivClasses!2533 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (toValue!8512 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))))))

(assert (= (and d!1100120 res!1523864) b!3763577))

(declare-fun m!4259043 () Bool)

(assert (=> d!1100120 m!4259043))

(declare-fun m!4259045 () Bool)

(assert (=> b!3763577 m!4259045))

(assert (=> b!3762402 d!1100120))

(declare-fun d!1100122 () Bool)

(declare-fun res!1523865 () Bool)

(declare-fun e!2327592 () Bool)

(assert (=> d!1100122 (=> (not res!1523865) (not e!2327592))))

(assert (=> d!1100122 (= res!1523865 (<= (size!30210 (list!14826 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347)))))) 512))))

(assert (=> d!1100122 (= (inv!53857 (right!31404 (right!31404 (c!651315 v!6347)))) e!2327592)))

(declare-fun b!3763578 () Bool)

(declare-fun res!1523866 () Bool)

(assert (=> b!3763578 (=> (not res!1523866) (not e!2327592))))

(assert (=> b!3763578 (= res!1523866 (= (csize!24829 (right!31404 (right!31404 (c!651315 v!6347)))) (size!30210 (list!14826 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))))))

(declare-fun b!3763579 () Bool)

(assert (=> b!3763579 (= e!2327592 (and (> (csize!24829 (right!31404 (right!31404 (c!651315 v!6347)))) 0) (<= (csize!24829 (right!31404 (right!31404 (c!651315 v!6347)))) 512)))))

(assert (= (and d!1100122 res!1523865) b!3763578))

(assert (= (and b!3763578 res!1523866) b!3763579))

(assert (=> d!1100122 m!4257457))

(assert (=> d!1100122 m!4257457))

(declare-fun m!4259047 () Bool)

(assert (=> d!1100122 m!4259047))

(assert (=> b!3763578 m!4257457))

(assert (=> b!3763578 m!4257457))

(assert (=> b!3763578 m!4259047))

(assert (=> b!3762010 d!1100122))

(assert (=> b!3762100 d!1099432))

(assert (=> b!3762100 d!1099434))

(declare-fun d!1100124 () Bool)

(declare-fun lt!1302441 () Int)

(assert (=> d!1100124 (>= lt!1302441 0)))

(declare-fun e!2327593 () Int)

(assert (=> d!1100124 (= lt!1302441 e!2327593)))

(declare-fun c!651904 () Bool)

(assert (=> d!1100124 (= c!651904 ((_ is Nil!40139) (t!303912 (list!14824 (xs!15504 (c!651313 acc!400))))))))

(assert (=> d!1100124 (= (size!30213 (t!303912 (list!14824 (xs!15504 (c!651313 acc!400))))) lt!1302441)))

(declare-fun b!3763580 () Bool)

(assert (=> b!3763580 (= e!2327593 0)))

(declare-fun b!3763581 () Bool)

(assert (=> b!3763581 (= e!2327593 (+ 1 (size!30213 (t!303912 (t!303912 (list!14824 (xs!15504 (c!651313 acc!400))))))))))

(assert (= (and d!1100124 c!651904) b!3763580))

(assert (= (and d!1100124 (not c!651904)) b!3763581))

(declare-fun m!4259049 () Bool)

(assert (=> b!3763581 m!4259049))

(assert (=> b!3762091 d!1100124))

(declare-fun d!1100126 () Bool)

(assert (=> d!1100126 (= (max!0 (height!1755 (left!31073 (right!31403 (c!651313 acc!400)))) (height!1755 (right!31403 (right!31403 (c!651313 acc!400))))) (ite (< (height!1755 (left!31073 (right!31403 (c!651313 acc!400)))) (height!1755 (right!31403 (right!31403 (c!651313 acc!400))))) (height!1755 (right!31403 (right!31403 (c!651313 acc!400)))) (height!1755 (left!31073 (right!31403 (c!651313 acc!400))))))))

(assert (=> b!3762050 d!1100126))

(assert (=> b!3762050 d!1099432))

(assert (=> b!3762050 d!1099434))

(declare-fun d!1100128 () Bool)

(declare-fun lt!1302442 () Int)

(assert (=> d!1100128 (>= lt!1302442 0)))

(declare-fun e!2327594 () Int)

(assert (=> d!1100128 (= lt!1302442 e!2327594)))

(declare-fun c!651905 () Bool)

(assert (=> d!1100128 (= c!651905 ((_ is Nil!40141) (t!303914 lt!1302095)))))

(assert (=> d!1100128 (= (size!30210 (t!303914 lt!1302095)) lt!1302442)))

(declare-fun b!3763582 () Bool)

(assert (=> b!3763582 (= e!2327594 0)))

(declare-fun b!3763583 () Bool)

(assert (=> b!3763583 (= e!2327594 (+ 1 (size!30210 (t!303914 (t!303914 lt!1302095)))))))

(assert (= (and d!1100128 c!651905) b!3763582))

(assert (= (and d!1100128 (not c!651905)) b!3763583))

(declare-fun m!4259051 () Bool)

(assert (=> b!3763583 m!4259051))

(assert (=> b!3762097 d!1100128))

(declare-fun d!1100130 () Bool)

(declare-fun lt!1302443 () Int)

(assert (=> d!1100130 (= lt!1302443 (size!30210 (list!14820 (left!31074 (right!31404 (c!651315 v!6347))))))))

(assert (=> d!1100130 (= lt!1302443 (ite ((_ is Empty!12299) (left!31074 (right!31404 (c!651315 v!6347)))) 0 (ite ((_ is Leaf!19075) (left!31074 (right!31404 (c!651315 v!6347)))) (csize!24829 (left!31074 (right!31404 (c!651315 v!6347)))) (csize!24828 (left!31074 (right!31404 (c!651315 v!6347)))))))))

(assert (=> d!1100130 (= (size!30211 (left!31074 (right!31404 (c!651315 v!6347)))) lt!1302443)))

(declare-fun bs!575908 () Bool)

(assert (= bs!575908 d!1100130))

(assert (=> bs!575908 m!4256761))

(assert (=> bs!575908 m!4256761))

(assert (=> bs!575908 m!4257431))

(assert (=> d!1099064 d!1100130))

(declare-fun d!1100132 () Bool)

(declare-fun lt!1302444 () Int)

(assert (=> d!1100132 (= lt!1302444 (size!30210 (list!14820 (right!31404 (right!31404 (c!651315 v!6347))))))))

(assert (=> d!1100132 (= lt!1302444 (ite ((_ is Empty!12299) (right!31404 (right!31404 (c!651315 v!6347)))) 0 (ite ((_ is Leaf!19075) (right!31404 (right!31404 (c!651315 v!6347)))) (csize!24829 (right!31404 (right!31404 (c!651315 v!6347)))) (csize!24828 (right!31404 (right!31404 (c!651315 v!6347)))))))))

(assert (=> d!1100132 (= (size!30211 (right!31404 (right!31404 (c!651315 v!6347)))) lt!1302444)))

(declare-fun bs!575909 () Bool)

(assert (= bs!575909 d!1100132))

(assert (=> bs!575909 m!4256763))

(assert (=> bs!575909 m!4256763))

(assert (=> bs!575909 m!4257433))

(assert (=> d!1099064 d!1100132))

(declare-fun d!1100134 () Bool)

(assert (=> d!1100134 (= (inv!53852 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (isBalanced!3537 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))))

(declare-fun bs!575910 () Bool)

(assert (= bs!575910 d!1100134))

(declare-fun m!4259053 () Bool)

(assert (=> bs!575910 m!4259053))

(assert (=> tb!215257 d!1100134))

(declare-fun d!1100136 () Bool)

(declare-fun c!651906 () Bool)

(assert (=> d!1100136 (= c!651906 ((_ is Node!12299) (left!31074 (left!31074 (left!31074 (c!651315 v!6347))))))))

(declare-fun e!2327595 () Bool)

(assert (=> d!1100136 (= (inv!53854 (left!31074 (left!31074 (left!31074 (c!651315 v!6347))))) e!2327595)))

(declare-fun b!3763584 () Bool)

(assert (=> b!3763584 (= e!2327595 (inv!53855 (left!31074 (left!31074 (left!31074 (c!651315 v!6347))))))))

(declare-fun b!3763585 () Bool)

(declare-fun e!2327596 () Bool)

(assert (=> b!3763585 (= e!2327595 e!2327596)))

(declare-fun res!1523867 () Bool)

(assert (=> b!3763585 (= res!1523867 (not ((_ is Leaf!19075) (left!31074 (left!31074 (left!31074 (c!651315 v!6347)))))))))

(assert (=> b!3763585 (=> res!1523867 e!2327596)))

(declare-fun b!3763586 () Bool)

(assert (=> b!3763586 (= e!2327596 (inv!53857 (left!31074 (left!31074 (left!31074 (c!651315 v!6347))))))))

(assert (= (and d!1100136 c!651906) b!3763584))

(assert (= (and d!1100136 (not c!651906)) b!3763585))

(assert (= (and b!3763585 (not res!1523867)) b!3763586))

(declare-fun m!4259055 () Bool)

(assert (=> b!3763584 m!4259055))

(declare-fun m!4259057 () Bool)

(assert (=> b!3763586 m!4259057))

(assert (=> b!3762369 d!1100136))

(declare-fun d!1100138 () Bool)

(declare-fun c!651907 () Bool)

(assert (=> d!1100138 (= c!651907 ((_ is Node!12299) (right!31404 (left!31074 (left!31074 (c!651315 v!6347))))))))

(declare-fun e!2327597 () Bool)

(assert (=> d!1100138 (= (inv!53854 (right!31404 (left!31074 (left!31074 (c!651315 v!6347))))) e!2327597)))

(declare-fun b!3763587 () Bool)

(assert (=> b!3763587 (= e!2327597 (inv!53855 (right!31404 (left!31074 (left!31074 (c!651315 v!6347))))))))

(declare-fun b!3763588 () Bool)

(declare-fun e!2327598 () Bool)

(assert (=> b!3763588 (= e!2327597 e!2327598)))

(declare-fun res!1523868 () Bool)

(assert (=> b!3763588 (= res!1523868 (not ((_ is Leaf!19075) (right!31404 (left!31074 (left!31074 (c!651315 v!6347)))))))))

(assert (=> b!3763588 (=> res!1523868 e!2327598)))

(declare-fun b!3763589 () Bool)

(assert (=> b!3763589 (= e!2327598 (inv!53857 (right!31404 (left!31074 (left!31074 (c!651315 v!6347))))))))

(assert (= (and d!1100138 c!651907) b!3763587))

(assert (= (and d!1100138 (not c!651907)) b!3763588))

(assert (= (and b!3763588 (not res!1523868)) b!3763589))

(declare-fun m!4259059 () Bool)

(assert (=> b!3763587 m!4259059))

(declare-fun m!4259061 () Bool)

(assert (=> b!3763589 m!4259061))

(assert (=> b!3762369 d!1100138))

(declare-fun d!1100140 () Bool)

(declare-fun c!651908 () Bool)

(assert (=> d!1100140 (= c!651908 ((_ is Nil!40139) lt!1302224))))

(declare-fun e!2327599 () (InoxSet C!22308))

(assert (=> d!1100140 (= (content!5894 lt!1302224) e!2327599)))

(declare-fun b!3763590 () Bool)

(assert (=> b!3763590 (= e!2327599 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763591 () Bool)

(assert (=> b!3763591 (= e!2327599 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302224) true) (content!5894 (t!303912 lt!1302224))))))

(assert (= (and d!1100140 c!651908) b!3763590))

(assert (= (and d!1100140 (not c!651908)) b!3763591))

(declare-fun m!4259063 () Bool)

(assert (=> b!3763591 m!4259063))

(declare-fun m!4259065 () Bool)

(assert (=> b!3763591 m!4259065))

(assert (=> d!1099116 d!1100140))

(assert (=> d!1099116 d!1099984))

(declare-fun d!1100142 () Bool)

(declare-fun c!651909 () Bool)

(assert (=> d!1100142 (= c!651909 ((_ is Nil!40139) (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))))))

(declare-fun e!2327600 () (InoxSet C!22308))

(assert (=> d!1100142 (= (content!5894 (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))) e!2327600)))

(declare-fun b!3763592 () Bool)

(assert (=> b!3763592 (= e!2327600 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763593 () Bool)

(assert (=> b!3763593 (= e!2327600 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))) true) (content!5894 (t!303912 (printList!1661 thiss!13650 (t!303914 (t!303914 lt!1302052)))))))))

(assert (= (and d!1100142 c!651909) b!3763592))

(assert (= (and d!1100142 (not c!651909)) b!3763593))

(declare-fun m!4259067 () Bool)

(assert (=> b!3763593 m!4259067))

(declare-fun m!4259069 () Bool)

(assert (=> b!3763593 m!4259069))

(assert (=> d!1099116 d!1100142))

(declare-fun d!1100144 () Bool)

(declare-fun lt!1302445 () Int)

(assert (=> d!1100144 (>= lt!1302445 0)))

(declare-fun e!2327601 () Int)

(assert (=> d!1100144 (= lt!1302445 e!2327601)))

(declare-fun c!651910 () Bool)

(assert (=> d!1100144 (= c!651910 ((_ is Nil!40139) lt!1302172))))

(assert (=> d!1100144 (= (size!30213 lt!1302172) lt!1302445)))

(declare-fun b!3763594 () Bool)

(assert (=> b!3763594 (= e!2327601 0)))

(declare-fun b!3763595 () Bool)

(assert (=> b!3763595 (= e!2327601 (+ 1 (size!30213 (t!303912 lt!1302172))))))

(assert (= (and d!1100144 c!651910) b!3763594))

(assert (= (and d!1100144 (not c!651910)) b!3763595))

(declare-fun m!4259071 () Bool)

(assert (=> b!3763595 m!4259071))

(assert (=> b!3762138 d!1100144))

(assert (=> b!3762138 d!1099498))

(assert (=> b!3762138 d!1099062))

(declare-fun b!3763598 () Bool)

(declare-fun res!1523870 () Bool)

(declare-fun e!2327602 () Bool)

(assert (=> b!3763598 (=> (not res!1523870) (not e!2327602))))

(declare-fun lt!1302446 () List!40263)

(assert (=> b!3763598 (= res!1523870 (= (size!30213 lt!1302446) (+ (size!30213 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))) (size!30213 (++!9954 lt!1302108 lt!1302110)))))))

(declare-fun d!1100146 () Bool)

(assert (=> d!1100146 e!2327602))

(declare-fun res!1523869 () Bool)

(assert (=> d!1100146 (=> (not res!1523869) (not e!2327602))))

(assert (=> d!1100146 (= res!1523869 (= (content!5894 lt!1302446) ((_ map or) (content!5894 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))) (content!5894 (++!9954 lt!1302108 lt!1302110)))))))

(declare-fun e!2327603 () List!40263)

(assert (=> d!1100146 (= lt!1302446 e!2327603)))

(declare-fun c!651911 () Bool)

(assert (=> d!1100146 (= c!651911 ((_ is Nil!40139) (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(assert (=> d!1100146 (= (++!9954 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) (++!9954 lt!1302108 lt!1302110)) lt!1302446)))

(declare-fun b!3763596 () Bool)

(assert (=> b!3763596 (= e!2327603 (++!9954 lt!1302108 lt!1302110))))

(declare-fun b!3763597 () Bool)

(assert (=> b!3763597 (= e!2327603 (Cons!40139 (h!45559 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))) (++!9954 (t!303912 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))) (++!9954 lt!1302108 lt!1302110))))))

(declare-fun b!3763599 () Bool)

(assert (=> b!3763599 (= e!2327602 (or (not (= (++!9954 lt!1302108 lt!1302110) Nil!40139)) (= lt!1302446 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))))

(assert (= (and d!1100146 c!651911) b!3763596))

(assert (= (and d!1100146 (not c!651911)) b!3763597))

(assert (= (and d!1100146 res!1523869) b!3763598))

(assert (= (and b!3763598 res!1523870) b!3763599))

(declare-fun m!4259073 () Bool)

(assert (=> b!3763598 m!4259073))

(assert (=> b!3763598 m!4257777))

(assert (=> b!3763598 m!4255969))

(assert (=> b!3763598 m!4256563))

(declare-fun m!4259075 () Bool)

(assert (=> d!1100146 m!4259075))

(assert (=> d!1100146 m!4257499))

(assert (=> d!1100146 m!4255969))

(assert (=> d!1100146 m!4256567))

(assert (=> b!3763597 m!4255969))

(declare-fun m!4259077 () Bool)

(assert (=> b!3763597 m!4259077))

(assert (=> b!3762203 d!1100146))

(declare-fun d!1100148 () Bool)

(declare-fun c!651912 () Bool)

(assert (=> d!1100148 (= c!651912 ((_ is Node!12298) (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))))))

(declare-fun e!2327604 () Bool)

(assert (=> d!1100148 (= (inv!53851 (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))) e!2327604)))

(declare-fun b!3763600 () Bool)

(assert (=> b!3763600 (= e!2327604 (inv!53859 (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))))))

(declare-fun b!3763601 () Bool)

(declare-fun e!2327605 () Bool)

(assert (=> b!3763601 (= e!2327604 e!2327605)))

(declare-fun res!1523871 () Bool)

(assert (=> b!3763601 (= res!1523871 (not ((_ is Leaf!19074) (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))))))

(assert (=> b!3763601 (=> res!1523871 e!2327605)))

(declare-fun b!3763602 () Bool)

(assert (=> b!3763602 (= e!2327605 (inv!53860 (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))))))

(assert (= (and d!1100148 c!651912) b!3763600))

(assert (= (and d!1100148 (not c!651912)) b!3763601))

(assert (= (and b!3763601 (not res!1523871)) b!3763602))

(declare-fun m!4259079 () Bool)

(assert (=> b!3763600 m!4259079))

(declare-fun m!4259081 () Bool)

(assert (=> b!3763602 m!4259081))

(assert (=> b!3762351 d!1100148))

(declare-fun d!1100150 () Bool)

(declare-fun c!651913 () Bool)

(assert (=> d!1100150 (= c!651913 ((_ is Node!12298) (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))))))

(declare-fun e!2327606 () Bool)

(assert (=> d!1100150 (= (inv!53851 (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))) e!2327606)))

(declare-fun b!3763603 () Bool)

(assert (=> b!3763603 (= e!2327606 (inv!53859 (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))))))

(declare-fun b!3763604 () Bool)

(declare-fun e!2327607 () Bool)

(assert (=> b!3763604 (= e!2327606 e!2327607)))

(declare-fun res!1523872 () Bool)

(assert (=> b!3763604 (= res!1523872 (not ((_ is Leaf!19074) (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))))))

(assert (=> b!3763604 (=> res!1523872 e!2327607)))

(declare-fun b!3763605 () Bool)

(assert (=> b!3763605 (= e!2327607 (inv!53860 (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))))))

(assert (= (and d!1100150 c!651913) b!3763603))

(assert (= (and d!1100150 (not c!651913)) b!3763604))

(assert (= (and b!3763604 (not res!1523872)) b!3763605))

(declare-fun m!4259083 () Bool)

(assert (=> b!3763603 m!4259083))

(declare-fun m!4259085 () Bool)

(assert (=> b!3763605 m!4259085))

(assert (=> b!3762351 d!1100150))

(declare-fun b!3763608 () Bool)

(declare-fun res!1523874 () Bool)

(declare-fun e!2327608 () Bool)

(assert (=> b!3763608 (=> (not res!1523874) (not e!2327608))))

(declare-fun lt!1302447 () List!40263)

(assert (=> b!3763608 (= res!1523874 (= (size!30213 lt!1302447) (+ (size!30213 (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052)))))) (size!30213 (printList!1661 thiss!13650 (t!303914 (t!303914 (t!303914 lt!1302052))))))))))

(declare-fun d!1100152 () Bool)

(assert (=> d!1100152 e!2327608))

(declare-fun res!1523873 () Bool)

(assert (=> d!1100152 (=> (not res!1523873) (not e!2327608))))

(assert (=> d!1100152 (= res!1523873 (= (content!5894 lt!1302447) ((_ map or) (content!5894 (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052)))))) (content!5894 (printList!1661 thiss!13650 (t!303914 (t!303914 (t!303914 lt!1302052))))))))))

(declare-fun e!2327609 () List!40263)

(assert (=> d!1100152 (= lt!1302447 e!2327609)))

(declare-fun c!651914 () Bool)

(assert (=> d!1100152 (= c!651914 ((_ is Nil!40139) (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052)))))))))

(assert (=> d!1100152 (= (++!9954 (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052))))) (printList!1661 thiss!13650 (t!303914 (t!303914 (t!303914 lt!1302052))))) lt!1302447)))

(declare-fun b!3763606 () Bool)

(assert (=> b!3763606 (= e!2327609 (printList!1661 thiss!13650 (t!303914 (t!303914 (t!303914 lt!1302052)))))))

(declare-fun b!3763607 () Bool)

(assert (=> b!3763607 (= e!2327609 (Cons!40139 (h!45559 (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052)))))) (++!9954 (t!303912 (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052)))))) (printList!1661 thiss!13650 (t!303914 (t!303914 (t!303914 lt!1302052)))))))))

(declare-fun b!3763609 () Bool)

(assert (=> b!3763609 (= e!2327608 (or (not (= (printList!1661 thiss!13650 (t!303914 (t!303914 (t!303914 lt!1302052)))) Nil!40139)) (= lt!1302447 (list!14816 (charsOf!4006 (h!45561 (t!303914 (t!303914 lt!1302052))))))))))

(assert (= (and d!1100152 c!651914) b!3763606))

(assert (= (and d!1100152 (not c!651914)) b!3763607))

(assert (= (and d!1100152 res!1523873) b!3763608))

(assert (= (and b!3763608 res!1523874) b!3763609))

(declare-fun m!4259087 () Bool)

(assert (=> b!3763608 m!4259087))

(assert (=> b!3763608 m!4256573))

(assert (=> b!3763608 m!4257573))

(assert (=> b!3763608 m!4256575))

(declare-fun m!4259089 () Bool)

(assert (=> b!3763608 m!4259089))

(declare-fun m!4259091 () Bool)

(assert (=> d!1100152 m!4259091))

(assert (=> d!1100152 m!4256573))

(assert (=> d!1100152 m!4257579))

(assert (=> d!1100152 m!4256575))

(declare-fun m!4259093 () Bool)

(assert (=> d!1100152 m!4259093))

(assert (=> b!3763607 m!4256575))

(declare-fun m!4259095 () Bool)

(assert (=> b!3763607 m!4259095))

(assert (=> b!3762206 d!1100152))

(assert (=> b!3762206 d!1099400))

(assert (=> b!3762206 d!1099388))

(assert (=> b!3762206 d!1099404))

(declare-fun d!1100154 () Bool)

(declare-fun res!1523875 () Bool)

(declare-fun e!2327610 () Bool)

(assert (=> d!1100154 (=> (not res!1523875) (not e!2327610))))

(assert (=> d!1100154 (= res!1523875 (<= (size!30213 (list!14824 (xs!15504 (right!31403 (left!31073 (c!651313 acc!400)))))) 512))))

(assert (=> d!1100154 (= (inv!53860 (right!31403 (left!31073 (c!651313 acc!400)))) e!2327610)))

(declare-fun b!3763610 () Bool)

(declare-fun res!1523876 () Bool)

(assert (=> b!3763610 (=> (not res!1523876) (not e!2327610))))

(assert (=> b!3763610 (= res!1523876 (= (csize!24827 (right!31403 (left!31073 (c!651313 acc!400)))) (size!30213 (list!14824 (xs!15504 (right!31403 (left!31073 (c!651313 acc!400))))))))))

(declare-fun b!3763611 () Bool)

(assert (=> b!3763611 (= e!2327610 (and (> (csize!24827 (right!31403 (left!31073 (c!651313 acc!400)))) 0) (<= (csize!24827 (right!31403 (left!31073 (c!651313 acc!400)))) 512)))))

(assert (= (and d!1100154 res!1523875) b!3763610))

(assert (= (and b!3763610 res!1523876) b!3763611))

(assert (=> d!1100154 m!4259041))

(assert (=> d!1100154 m!4259041))

(declare-fun m!4259097 () Bool)

(assert (=> d!1100154 m!4259097))

(assert (=> b!3763610 m!4259041))

(assert (=> b!3763610 m!4259041))

(assert (=> b!3763610 m!4259097))

(assert (=> b!3762230 d!1100154))

(assert (=> d!1098992 d!1099318))

(assert (=> d!1098992 d!1099100))

(declare-fun d!1100156 () Bool)

(declare-fun lt!1302448 () Int)

(assert (=> d!1100156 (>= lt!1302448 0)))

(declare-fun e!2327611 () Int)

(assert (=> d!1100156 (= lt!1302448 e!2327611)))

(declare-fun c!651915 () Bool)

(assert (=> d!1100156 (= c!651915 ((_ is Nil!40139) (t!303912 lt!1302082)))))

(assert (=> d!1100156 (= (size!30213 (t!303912 lt!1302082)) lt!1302448)))

(declare-fun b!3763612 () Bool)

(assert (=> b!3763612 (= e!2327611 0)))

(declare-fun b!3763613 () Bool)

(assert (=> b!3763613 (= e!2327611 (+ 1 (size!30213 (t!303912 (t!303912 lt!1302082)))))))

(assert (= (and d!1100156 c!651915) b!3763612))

(assert (= (and d!1100156 (not c!651915)) b!3763613))

(declare-fun m!4259099 () Bool)

(assert (=> b!3763613 m!4259099))

(assert (=> b!3762239 d!1100156))

(declare-fun b!3763616 () Bool)

(declare-fun res!1523878 () Bool)

(declare-fun e!2327612 () Bool)

(assert (=> b!3763616 (=> (not res!1523878) (not e!2327612))))

(declare-fun lt!1302449 () List!40263)

(assert (=> b!3763616 (= res!1523878 (= (size!30213 lt!1302449) (+ (size!30213 (t!303912 lt!1302108)) (size!30213 lt!1302110))))))

(declare-fun d!1100158 () Bool)

(assert (=> d!1100158 e!2327612))

(declare-fun res!1523877 () Bool)

(assert (=> d!1100158 (=> (not res!1523877) (not e!2327612))))

(assert (=> d!1100158 (= res!1523877 (= (content!5894 lt!1302449) ((_ map or) (content!5894 (t!303912 lt!1302108)) (content!5894 lt!1302110))))))

(declare-fun e!2327613 () List!40263)

(assert (=> d!1100158 (= lt!1302449 e!2327613)))

(declare-fun c!651916 () Bool)

(assert (=> d!1100158 (= c!651916 ((_ is Nil!40139) (t!303912 lt!1302108)))))

(assert (=> d!1100158 (= (++!9954 (t!303912 lt!1302108) lt!1302110) lt!1302449)))

(declare-fun b!3763614 () Bool)

(assert (=> b!3763614 (= e!2327613 lt!1302110)))

(declare-fun b!3763615 () Bool)

(assert (=> b!3763615 (= e!2327613 (Cons!40139 (h!45559 (t!303912 lt!1302108)) (++!9954 (t!303912 (t!303912 lt!1302108)) lt!1302110)))))

(declare-fun b!3763617 () Bool)

(assert (=> b!3763617 (= e!2327612 (or (not (= lt!1302110 Nil!40139)) (= lt!1302449 (t!303912 lt!1302108))))))

(assert (= (and d!1100158 c!651916) b!3763614))

(assert (= (and d!1100158 (not c!651916)) b!3763615))

(assert (= (and d!1100158 res!1523877) b!3763616))

(assert (= (and b!3763616 res!1523878) b!3763617))

(declare-fun m!4259101 () Bool)

(assert (=> b!3763616 m!4259101))

(assert (=> b!3763616 m!4258751))

(assert (=> b!3763616 m!4256551))

(declare-fun m!4259103 () Bool)

(assert (=> d!1100158 m!4259103))

(assert (=> d!1100158 m!4257503))

(assert (=> d!1100158 m!4256557))

(declare-fun m!4259105 () Bool)

(assert (=> b!3763615 m!4259105))

(assert (=> b!3762218 d!1100158))

(declare-fun d!1100160 () Bool)

(declare-fun res!1523879 () Bool)

(declare-fun e!2327614 () Bool)

(assert (=> d!1100160 (=> (not res!1523879) (not e!2327614))))

(assert (=> d!1100160 (= res!1523879 (not (isEmpty!23587 (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))))))

(assert (=> d!1100160 (= (inv!53867 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))) e!2327614)))

(declare-fun b!3763618 () Bool)

(declare-fun res!1523880 () Bool)

(assert (=> b!3763618 (=> (not res!1523880) (not e!2327614))))

(assert (=> b!3763618 (= res!1523880 (= (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))) (list!14816 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))))))

(declare-fun b!3763619 () Bool)

(assert (=> b!3763619 (= e!2327614 (= (size!30206 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))) (size!30213 (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))))))

(assert (= (and d!1100160 res!1523879) b!3763618))

(assert (= (and b!3763618 res!1523880) b!3763619))

(declare-fun b_lambda!110425 () Bool)

(assert (=> (not b_lambda!110425) (not b!3763618)))

(declare-fun t!304024 () Bool)

(declare-fun tb!215341 () Bool)

(assert (=> (and b!3761985 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) t!304024) tb!215341))

(declare-fun b!3763620 () Bool)

(declare-fun e!2327615 () Bool)

(declare-fun tp!1149702 () Bool)

(assert (=> b!3763620 (= e!2327615 (and (inv!53851 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) tp!1149702))))

(declare-fun result!262994 () Bool)

(assert (=> tb!215341 (= result!262994 (and (inv!53852 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) e!2327615))))

(assert (= tb!215341 b!3763620))

(declare-fun m!4259107 () Bool)

(assert (=> b!3763620 m!4259107))

(declare-fun m!4259109 () Bool)

(assert (=> tb!215341 m!4259109))

(assert (=> b!3763618 t!304024))

(declare-fun b_and!279531 () Bool)

(assert (= b_and!279499 (and (=> t!304024 result!262994) b_and!279531)))

(declare-fun t!304026 () Bool)

(declare-fun tb!215343 () Bool)

(assert (=> (and b!3762367 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) t!304026) tb!215343))

(declare-fun result!262996 () Bool)

(assert (= result!262996 result!262994))

(assert (=> b!3763618 t!304026))

(declare-fun b_and!279533 () Bool)

(assert (= b_and!279501 (and (=> t!304026 result!262996) b_and!279533)))

(declare-fun t!304028 () Bool)

(declare-fun tb!215345 () Bool)

(assert (=> (and b!3762403 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) t!304028) tb!215345))

(declare-fun result!262998 () Bool)

(assert (= result!262998 result!262994))

(assert (=> b!3763618 t!304028))

(declare-fun b_and!279535 () Bool)

(assert (= b_and!279503 (and (=> t!304028 result!262998) b_and!279535)))

(declare-fun t!304030 () Bool)

(declare-fun tb!215347 () Bool)

(assert (=> (and b!3762408 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) t!304030) tb!215347))

(declare-fun result!263000 () Bool)

(assert (= result!263000 result!262994))

(assert (=> b!3763618 t!304030))

(declare-fun b_and!279537 () Bool)

(assert (= b_and!279505 (and (=> t!304030 result!263000) b_and!279537)))

(declare-fun m!4259111 () Bool)

(assert (=> d!1100160 m!4259111))

(declare-fun m!4259113 () Bool)

(assert (=> b!3763618 m!4259113))

(assert (=> b!3763618 m!4259113))

(declare-fun m!4259115 () Bool)

(assert (=> b!3763618 m!4259115))

(declare-fun m!4259117 () Bool)

(assert (=> b!3763619 m!4259117))

(assert (=> b!3762364 d!1100160))

(declare-fun d!1100162 () Bool)

(declare-fun lt!1302450 () Int)

(assert (=> d!1100162 (>= lt!1302450 0)))

(declare-fun e!2327616 () Int)

(assert (=> d!1100162 (= lt!1302450 e!2327616)))

(declare-fun c!651917 () Bool)

(assert (=> d!1100162 (= c!651917 ((_ is Nil!40139) lt!1302208))))

(assert (=> d!1100162 (= (size!30213 lt!1302208) lt!1302450)))

(declare-fun b!3763621 () Bool)

(assert (=> b!3763621 (= e!2327616 0)))

(declare-fun b!3763622 () Bool)

(assert (=> b!3763622 (= e!2327616 (+ 1 (size!30213 (t!303912 lt!1302208))))))

(assert (= (and d!1100162 c!651917) b!3763621))

(assert (= (and d!1100162 (not c!651917)) b!3763622))

(declare-fun m!4259119 () Bool)

(assert (=> b!3763622 m!4259119))

(assert (=> b!3762271 d!1100162))

(assert (=> b!3762271 d!1099440))

(assert (=> b!3762271 d!1098930))

(declare-fun d!1100164 () Bool)

(assert (=> d!1100164 (= (isEmpty!23587 (list!14819 (left!31073 (c!651313 acc!400)))) ((_ is Nil!40139) (list!14819 (left!31073 (c!651313 acc!400)))))))

(assert (=> d!1098938 d!1100164))

(assert (=> d!1098938 d!1099072))

(assert (=> d!1098938 d!1098868))

(declare-fun d!1100166 () Bool)

(declare-fun c!651918 () Bool)

(assert (=> d!1100166 (= c!651918 ((_ is Nil!40139) lt!1302191))))

(declare-fun e!2327617 () (InoxSet C!22308))

(assert (=> d!1100166 (= (content!5894 lt!1302191) e!2327617)))

(declare-fun b!3763623 () Bool)

(assert (=> b!3763623 (= e!2327617 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763624 () Bool)

(assert (=> b!3763624 (= e!2327617 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302191) true) (content!5894 (t!303912 lt!1302191))))))

(assert (= (and d!1100166 c!651918) b!3763623))

(assert (= (and d!1100166 (not c!651918)) b!3763624))

(declare-fun m!4259121 () Bool)

(assert (=> b!3763624 m!4259121))

(declare-fun m!4259123 () Bool)

(assert (=> b!3763624 m!4259123))

(assert (=> d!1099036 d!1100166))

(assert (=> d!1099036 d!1099364))

(declare-fun d!1100168 () Bool)

(declare-fun c!651919 () Bool)

(assert (=> d!1100168 (= c!651919 ((_ is Nil!40139) (++!9954 lt!1302108 lt!1302110)))))

(declare-fun e!2327618 () (InoxSet C!22308))

(assert (=> d!1100168 (= (content!5894 (++!9954 lt!1302108 lt!1302110)) e!2327618)))

(declare-fun b!3763625 () Bool)

(assert (=> b!3763625 (= e!2327618 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763626 () Bool)

(assert (=> b!3763626 (= e!2327618 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (++!9954 lt!1302108 lt!1302110)) true) (content!5894 (t!303912 (++!9954 lt!1302108 lt!1302110)))))))

(assert (= (and d!1100168 c!651919) b!3763625))

(assert (= (and d!1100168 (not c!651919)) b!3763626))

(declare-fun m!4259125 () Bool)

(assert (=> b!3763626 m!4259125))

(declare-fun m!4259127 () Bool)

(assert (=> b!3763626 m!4259127))

(assert (=> d!1099036 d!1100168))

(declare-fun d!1100170 () Bool)

(declare-fun res!1523881 () Bool)

(declare-fun e!2327619 () Bool)

(assert (=> d!1100170 (=> (not res!1523881) (not e!2327619))))

(assert (=> d!1100170 (= res!1523881 (not (isEmpty!23587 (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))))))

(assert (=> d!1100170 (= (inv!53867 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))) e!2327619)))

(declare-fun b!3763627 () Bool)

(declare-fun res!1523882 () Bool)

(assert (=> b!3763627 (=> (not res!1523882) (not e!2327619))))

(assert (=> b!3763627 (= res!1523882 (= (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))) (list!14816 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))))))

(declare-fun b!3763628 () Bool)

(assert (=> b!3763628 (= e!2327619 (= (size!30206 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))) (size!30213 (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))))))

(assert (= (and d!1100170 res!1523881) b!3763627))

(assert (= (and b!3763627 res!1523882) b!3763628))

(declare-fun b_lambda!110427 () Bool)

(assert (=> (not b_lambda!110427) (not b!3763627)))

(declare-fun t!304032 () Bool)

(declare-fun tb!215349 () Bool)

(assert (=> (and b!3761985 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) t!304032) tb!215349))

(declare-fun b!3763629 () Bool)

(declare-fun e!2327620 () Bool)

(declare-fun tp!1149703 () Bool)

(assert (=> b!3763629 (= e!2327620 (and (inv!53851 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) tp!1149703))))

(declare-fun result!263002 () Bool)

(assert (=> tb!215349 (= result!263002 (and (inv!53852 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) e!2327620))))

(assert (= tb!215349 b!3763629))

(declare-fun m!4259129 () Bool)

(assert (=> b!3763629 m!4259129))

(declare-fun m!4259131 () Bool)

(assert (=> tb!215349 m!4259131))

(assert (=> b!3763627 t!304032))

(declare-fun b_and!279539 () Bool)

(assert (= b_and!279531 (and (=> t!304032 result!263002) b_and!279539)))

(declare-fun t!304034 () Bool)

(declare-fun tb!215351 () Bool)

(assert (=> (and b!3762367 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) t!304034) tb!215351))

(declare-fun result!263004 () Bool)

(assert (= result!263004 result!263002))

(assert (=> b!3763627 t!304034))

(declare-fun b_and!279541 () Bool)

(assert (= b_and!279533 (and (=> t!304034 result!263004) b_and!279541)))

(declare-fun t!304036 () Bool)

(declare-fun tb!215353 () Bool)

(assert (=> (and b!3762403 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) t!304036) tb!215353))

(declare-fun result!263006 () Bool)

(assert (= result!263006 result!263002))

(assert (=> b!3763627 t!304036))

(declare-fun b_and!279543 () Bool)

(assert (= b_and!279535 (and (=> t!304036 result!263006) b_and!279543)))

(declare-fun t!304038 () Bool)

(declare-fun tb!215355 () Bool)

(assert (=> (and b!3762408 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) t!304038) tb!215355))

(declare-fun result!263008 () Bool)

(assert (= result!263008 result!263002))

(assert (=> b!3763627 t!304038))

(declare-fun b_and!279545 () Bool)

(assert (= b_and!279537 (and (=> t!304038 result!263008) b_and!279545)))

(declare-fun m!4259133 () Bool)

(assert (=> d!1100170 m!4259133))

(declare-fun m!4259135 () Bool)

(assert (=> b!3763627 m!4259135))

(assert (=> b!3763627 m!4259135))

(declare-fun m!4259137 () Bool)

(assert (=> b!3763627 m!4259137))

(declare-fun m!4259139 () Bool)

(assert (=> b!3763628 m!4259139))

(assert (=> b!3762405 d!1100170))

(declare-fun d!1100172 () Bool)

(assert (=> d!1100172 (= (isEmpty!23590 (list!14820 (right!31404 (c!651315 v!6347)))) ((_ is Nil!40141) (list!14820 (right!31404 (c!651315 v!6347)))))))

(assert (=> d!1098998 d!1100172))

(assert (=> d!1098998 d!1099102))

(assert (=> d!1098998 d!1098994))

(assert (=> b!3761966 d!1099052))

(assert (=> b!3761966 d!1099054))

(declare-fun d!1100174 () Bool)

(declare-fun c!651920 () Bool)

(assert (=> d!1100174 (= c!651920 ((_ is Nil!40139) (t!303912 lt!1302125)))))

(declare-fun e!2327621 () (InoxSet C!22308))

(assert (=> d!1100174 (= (content!5894 (t!303912 lt!1302125)) e!2327621)))

(declare-fun b!3763630 () Bool)

(assert (=> b!3763630 (= e!2327621 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763631 () Bool)

(assert (=> b!3763631 (= e!2327621 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 (t!303912 lt!1302125)) true) (content!5894 (t!303912 (t!303912 lt!1302125)))))))

(assert (= (and d!1100174 c!651920) b!3763630))

(assert (= (and d!1100174 (not c!651920)) b!3763631))

(declare-fun m!4259141 () Bool)

(assert (=> b!3763631 m!4259141))

(declare-fun m!4259143 () Bool)

(assert (=> b!3763631 m!4259143))

(assert (=> b!3761996 d!1100174))

(declare-fun b!3763632 () Bool)

(declare-fun res!1523888 () Bool)

(declare-fun e!2327623 () Bool)

(assert (=> b!3763632 (=> (not res!1523888) (not e!2327623))))

(assert (=> b!3763632 (= res!1523888 (<= (- (height!1755 (left!31073 (left!31073 (left!31073 (c!651313 acc!400))))) (height!1755 (right!31403 (left!31073 (left!31073 (c!651313 acc!400)))))) 1))))

(declare-fun b!3763633 () Bool)

(assert (=> b!3763633 (= e!2327623 (not (isEmpty!23585 (right!31403 (left!31073 (left!31073 (c!651313 acc!400)))))))))

(declare-fun b!3763634 () Bool)

(declare-fun res!1523886 () Bool)

(assert (=> b!3763634 (=> (not res!1523886) (not e!2327623))))

(assert (=> b!3763634 (= res!1523886 (isBalanced!3537 (right!31403 (left!31073 (left!31073 (c!651313 acc!400))))))))

(declare-fun d!1100176 () Bool)

(declare-fun res!1523883 () Bool)

(declare-fun e!2327622 () Bool)

(assert (=> d!1100176 (=> res!1523883 e!2327622)))

(assert (=> d!1100176 (= res!1523883 (not ((_ is Node!12298) (left!31073 (left!31073 (c!651313 acc!400))))))))

(assert (=> d!1100176 (= (isBalanced!3537 (left!31073 (left!31073 (c!651313 acc!400)))) e!2327622)))

(declare-fun b!3763635 () Bool)

(declare-fun res!1523885 () Bool)

(assert (=> b!3763635 (=> (not res!1523885) (not e!2327623))))

(assert (=> b!3763635 (= res!1523885 (isBalanced!3537 (left!31073 (left!31073 (left!31073 (c!651313 acc!400))))))))

(declare-fun b!3763636 () Bool)

(declare-fun res!1523884 () Bool)

(assert (=> b!3763636 (=> (not res!1523884) (not e!2327623))))

(assert (=> b!3763636 (= res!1523884 (not (isEmpty!23585 (left!31073 (left!31073 (left!31073 (c!651313 acc!400)))))))))

(declare-fun b!3763637 () Bool)

(assert (=> b!3763637 (= e!2327622 e!2327623)))

(declare-fun res!1523887 () Bool)

(assert (=> b!3763637 (=> (not res!1523887) (not e!2327623))))

(assert (=> b!3763637 (= res!1523887 (<= (- 1) (- (height!1755 (left!31073 (left!31073 (left!31073 (c!651313 acc!400))))) (height!1755 (right!31403 (left!31073 (left!31073 (c!651313 acc!400))))))))))

(assert (= (and d!1100176 (not res!1523883)) b!3763637))

(assert (= (and b!3763637 res!1523887) b!3763632))

(assert (= (and b!3763632 res!1523888) b!3763635))

(assert (= (and b!3763635 res!1523885) b!3763634))

(assert (= (and b!3763634 res!1523886) b!3763636))

(assert (= (and b!3763636 res!1523884) b!3763633))

(declare-fun m!4259145 () Bool)

(assert (=> b!3763635 m!4259145))

(declare-fun m!4259147 () Bool)

(assert (=> b!3763634 m!4259147))

(declare-fun m!4259149 () Bool)

(assert (=> b!3763636 m!4259149))

(assert (=> b!3763637 m!4258817))

(assert (=> b!3763637 m!4258819))

(assert (=> b!3763632 m!4258817))

(assert (=> b!3763632 m!4258819))

(declare-fun m!4259151 () Bool)

(assert (=> b!3763633 m!4259151))

(assert (=> b!3762278 d!1100176))

(declare-fun d!1100178 () Bool)

(assert (=> d!1100178 (= (isEmpty!23587 (list!14819 (right!31403 (c!651313 acc!400)))) ((_ is Nil!40139) (list!14819 (right!31403 (c!651313 acc!400)))))))

(assert (=> d!1099092 d!1100178))

(assert (=> d!1099092 d!1099074))

(assert (=> d!1099092 d!1098870))

(declare-fun d!1100180 () Bool)

(declare-fun lt!1302451 () Int)

(assert (=> d!1100180 (>= lt!1302451 0)))

(declare-fun e!2327624 () Int)

(assert (=> d!1100180 (= lt!1302451 e!2327624)))

(declare-fun c!651921 () Bool)

(assert (=> d!1100180 (= c!651921 ((_ is Nil!40139) (t!303912 lt!1302125)))))

(assert (=> d!1100180 (= (size!30213 (t!303912 lt!1302125)) lt!1302451)))

(declare-fun b!3763638 () Bool)

(assert (=> b!3763638 (= e!2327624 0)))

(declare-fun b!3763639 () Bool)

(assert (=> b!3763639 (= e!2327624 (+ 1 (size!30213 (t!303912 (t!303912 lt!1302125)))))))

(assert (= (and d!1100180 c!651921) b!3763638))

(assert (= (and d!1100180 (not c!651921)) b!3763639))

(declare-fun m!4259153 () Bool)

(assert (=> b!3763639 m!4259153))

(assert (=> b!3762069 d!1100180))

(declare-fun d!1100182 () Bool)

(declare-fun c!651922 () Bool)

(assert (=> d!1100182 (= c!651922 ((_ is Nil!40139) lt!1302195))))

(declare-fun e!2327625 () (InoxSet C!22308))

(assert (=> d!1100182 (= (content!5894 lt!1302195) e!2327625)))

(declare-fun b!3763640 () Bool)

(assert (=> b!3763640 (= e!2327625 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763641 () Bool)

(assert (=> b!3763641 (= e!2327625 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302195) true) (content!5894 (t!303912 lt!1302195))))))

(assert (= (and d!1100182 c!651922) b!3763640))

(assert (= (and d!1100182 (not c!651922)) b!3763641))

(declare-fun m!4259155 () Bool)

(assert (=> b!3763641 m!4259155))

(declare-fun m!4259157 () Bool)

(assert (=> b!3763641 m!4259157))

(assert (=> d!1099046 d!1100182))

(assert (=> d!1099046 d!1099366))

(assert (=> d!1099046 d!1100068))

(declare-fun d!1100184 () Bool)

(declare-fun lt!1302452 () Int)

(assert (=> d!1100184 (>= lt!1302452 0)))

(declare-fun e!2327626 () Int)

(assert (=> d!1100184 (= lt!1302452 e!2327626)))

(declare-fun c!651923 () Bool)

(assert (=> d!1100184 (= c!651923 ((_ is Nil!40139) (t!303912 lt!1302101)))))

(assert (=> d!1100184 (= (size!30213 (t!303912 lt!1302101)) lt!1302452)))

(declare-fun b!3763642 () Bool)

(assert (=> b!3763642 (= e!2327626 0)))

(declare-fun b!3763643 () Bool)

(assert (=> b!3763643 (= e!2327626 (+ 1 (size!30213 (t!303912 (t!303912 lt!1302101)))))))

(assert (= (and d!1100184 c!651923) b!3763642))

(assert (= (and d!1100184 (not c!651923)) b!3763643))

(declare-fun m!4259159 () Bool)

(assert (=> b!3763643 m!4259159))

(assert (=> b!3762031 d!1100184))

(declare-fun d!1100186 () Bool)

(declare-fun c!651924 () Bool)

(assert (=> d!1100186 (= c!651924 ((_ is Nil!40139) lt!1302221))))

(declare-fun e!2327627 () (InoxSet C!22308))

(assert (=> d!1100186 (= (content!5894 lt!1302221) e!2327627)))

(declare-fun b!3763644 () Bool)

(assert (=> b!3763644 (= e!2327627 ((as const (Array C!22308 Bool)) false))))

(declare-fun b!3763645 () Bool)

(assert (=> b!3763645 (= e!2327627 ((_ map or) (store ((as const (Array C!22308 Bool)) false) (h!45559 lt!1302221) true) (content!5894 (t!303912 lt!1302221))))))

(assert (= (and d!1100186 c!651924) b!3763644))

(assert (= (and d!1100186 (not c!651924)) b!3763645))

(declare-fun m!4259161 () Bool)

(assert (=> b!3763645 m!4259161))

(declare-fun m!4259163 () Bool)

(assert (=> b!3763645 m!4259163))

(assert (=> d!1099104 d!1100186))

(assert (=> d!1099104 d!1099364))

(assert (=> d!1099104 d!1100084))

(declare-fun d!1100188 () Bool)

(assert (=> d!1100188 (= (inv!53863 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))) (<= (size!30210 (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347)))))) 2147483647))))

(declare-fun bs!575911 () Bool)

(assert (= bs!575911 d!1100188))

(declare-fun m!4259165 () Bool)

(assert (=> bs!575911 m!4259165))

(assert (=> b!3762370 d!1100188))

(declare-fun d!1100190 () Bool)

(declare-fun lt!1302453 () Int)

(assert (=> d!1100190 (>= lt!1302453 0)))

(declare-fun e!2327628 () Int)

(assert (=> d!1100190 (= lt!1302453 e!2327628)))

(declare-fun c!651925 () Bool)

(assert (=> d!1100190 (= c!651925 ((_ is Nil!40141) (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))

(assert (=> d!1100190 (= (size!30210 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))) lt!1302453)))

(declare-fun b!3763646 () Bool)

(assert (=> b!3763646 (= e!2327628 0)))

(declare-fun b!3763647 () Bool)

(assert (=> b!3763647 (= e!2327628 (+ 1 (size!30210 (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))))

(assert (= (and d!1100190 c!651925) b!3763646))

(assert (= (and d!1100190 (not c!651925)) b!3763647))

(declare-fun m!4259167 () Bool)

(assert (=> b!3763647 m!4259167))

(assert (=> b!3762060 d!1100190))

(declare-fun d!1100192 () Bool)

(declare-fun lt!1302454 () Int)

(assert (=> d!1100192 (>= lt!1302454 0)))

(declare-fun e!2327629 () Int)

(assert (=> d!1100192 (= lt!1302454 e!2327629)))

(declare-fun c!651926 () Bool)

(assert (=> d!1100192 (= c!651926 ((_ is Nil!40139) lt!1302191))))

(assert (=> d!1100192 (= (size!30213 lt!1302191) lt!1302454)))

(declare-fun b!3763648 () Bool)

(assert (=> b!3763648 (= e!2327629 0)))

(declare-fun b!3763649 () Bool)

(assert (=> b!3763649 (= e!2327629 (+ 1 (size!30213 (t!303912 lt!1302191))))))

(assert (= (and d!1100192 c!651926) b!3763648))

(assert (= (and d!1100192 (not c!651926)) b!3763649))

(declare-fun m!4259169 () Bool)

(assert (=> b!3763649 m!4259169))

(assert (=> b!3762204 d!1100192))

(assert (=> b!3762204 d!1099488))

(declare-fun d!1100194 () Bool)

(declare-fun lt!1302455 () Int)

(assert (=> d!1100194 (>= lt!1302455 0)))

(declare-fun e!2327630 () Int)

(assert (=> d!1100194 (= lt!1302455 e!2327630)))

(declare-fun c!651927 () Bool)

(assert (=> d!1100194 (= c!651927 ((_ is Nil!40139) (++!9954 lt!1302108 lt!1302110)))))

(assert (=> d!1100194 (= (size!30213 (++!9954 lt!1302108 lt!1302110)) lt!1302455)))

(declare-fun b!3763650 () Bool)

(assert (=> b!3763650 (= e!2327630 0)))

(declare-fun b!3763651 () Bool)

(assert (=> b!3763651 (= e!2327630 (+ 1 (size!30213 (t!303912 (++!9954 lt!1302108 lt!1302110)))))))

(assert (= (and d!1100194 c!651927) b!3763650))

(assert (= (and d!1100194 (not c!651927)) b!3763651))

(declare-fun m!4259171 () Bool)

(assert (=> b!3763651 m!4259171))

(assert (=> b!3762204 d!1100194))

(declare-fun d!1100196 () Bool)

(assert (=> d!1100196 (= (inv!53865 (xs!15504 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))) (<= (size!30213 (innerList!12358 (xs!15504 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))) 2147483647))))

(declare-fun bs!575912 () Bool)

(assert (= bs!575912 d!1100196))

(declare-fun m!4259173 () Bool)

(assert (=> bs!575912 m!4259173))

(assert (=> b!3762352 d!1100196))

(declare-fun d!1100198 () Bool)

(assert (=> d!1100198 true))

(declare-fun lambda!125287 () Int)

(declare-fun order!21909 () Int)

(declare-fun order!21907 () Int)

(declare-fun dynLambda!17344 (Int Int) Int)

(declare-fun dynLambda!17345 (Int Int) Int)

(assert (=> d!1100198 (< (dynLambda!17344 order!21907 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (dynLambda!17345 order!21909 lambda!125287))))

(assert (=> d!1100198 true))

(assert (=> d!1100198 (< (dynLambda!17339 order!21903 (toValue!8512 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (dynLambda!17345 order!21909 lambda!125287))))

(declare-fun Forall!1402 (Int) Bool)

(assert (=> d!1100198 (= (semiInverseModEq!2634 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (toValue!8512 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (Forall!1402 lambda!125287))))

(declare-fun bs!575913 () Bool)

(assert (= bs!575913 d!1100198))

(declare-fun m!4259175 () Bool)

(assert (=> bs!575913 m!4259175))

(assert (=> d!1098900 d!1100198))

(declare-fun d!1100200 () Bool)

(assert (=> d!1100200 (= (isEmpty!23587 (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))) ((_ is Nil!40139) (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))

(assert (=> d!1098906 d!1100200))

(declare-fun b!3763658 () Bool)

(declare-fun res!1523890 () Bool)

(declare-fun e!2327631 () Bool)

(assert (=> b!3763658 (=> (not res!1523890) (not e!2327631))))

(declare-fun lt!1302456 () List!40263)

(assert (=> b!3763658 (= res!1523890 (= (size!30213 lt!1302456) (+ (size!30213 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))) (size!30213 lt!1302108))))))

(declare-fun d!1100202 () Bool)

(assert (=> d!1100202 e!2327631))

(declare-fun res!1523889 () Bool)

(assert (=> d!1100202 (=> (not res!1523889) (not e!2327631))))

(assert (=> d!1100202 (= res!1523889 (= (content!5894 lt!1302456) ((_ map or) (content!5894 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))) (content!5894 lt!1302108))))))

(declare-fun e!2327632 () List!40263)

(assert (=> d!1100202 (= lt!1302456 e!2327632)))

(declare-fun c!651928 () Bool)

(assert (=> d!1100202 (= c!651928 ((_ is Nil!40139) (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))))))

(assert (=> d!1100202 (= (++!9954 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))) lt!1302108) lt!1302456)))

(declare-fun b!3763656 () Bool)

(assert (=> b!3763656 (= e!2327632 lt!1302108)))

(declare-fun b!3763657 () Bool)

(assert (=> b!3763657 (= e!2327632 (Cons!40139 (h!45559 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))) (++!9954 (t!303912 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052)))))) lt!1302108)))))

(declare-fun b!3763659 () Bool)

(assert (=> b!3763659 (= e!2327631 (or (not (= lt!1302108 Nil!40139)) (= lt!1302456 (t!303912 (++!9954 lt!1302051 (list!14816 (charsOf!4006 (h!45561 lt!1302052))))))))))

(assert (= (and d!1100202 c!651928) b!3763656))

(assert (= (and d!1100202 (not c!651928)) b!3763657))

(assert (= (and d!1100202 res!1523889) b!3763658))

(assert (= (and b!3763658 res!1523890) b!3763659))

(declare-fun m!4259177 () Bool)

(assert (=> b!3763658 m!4259177))

(assert (=> b!3763658 m!4257777))

(assert (=> b!3763658 m!4256535))

(declare-fun m!4259179 () Bool)

(assert (=> d!1100202 m!4259179))

(assert (=> d!1100202 m!4257499))

(assert (=> d!1100202 m!4256541))

(declare-fun m!4259181 () Bool)

(assert (=> b!3763657 m!4259181))

(assert (=> b!3762195 d!1100202))

(declare-fun d!1100204 () Bool)

(declare-fun res!1523891 () Bool)

(declare-fun e!2327633 () Bool)

(assert (=> d!1100204 (=> (not res!1523891) (not e!2327633))))

(assert (=> d!1100204 (= res!1523891 (= (csize!24828 (right!31404 (left!31074 (c!651315 v!6347)))) (+ (size!30211 (left!31074 (right!31404 (left!31074 (c!651315 v!6347))))) (size!30211 (right!31404 (right!31404 (left!31074 (c!651315 v!6347))))))))))

(assert (=> d!1100204 (= (inv!53855 (right!31404 (left!31074 (c!651315 v!6347)))) e!2327633)))

(declare-fun b!3763660 () Bool)

(declare-fun res!1523892 () Bool)

(assert (=> b!3763660 (=> (not res!1523892) (not e!2327633))))

(assert (=> b!3763660 (= res!1523892 (and (not (= (left!31074 (right!31404 (left!31074 (c!651315 v!6347)))) Empty!12299)) (not (= (right!31404 (right!31404 (left!31074 (c!651315 v!6347)))) Empty!12299))))))

(declare-fun b!3763661 () Bool)

(declare-fun res!1523893 () Bool)

(assert (=> b!3763661 (=> (not res!1523893) (not e!2327633))))

(assert (=> b!3763661 (= res!1523893 (= (cheight!12510 (right!31404 (left!31074 (c!651315 v!6347)))) (+ (max!0 (height!1754 (left!31074 (right!31404 (left!31074 (c!651315 v!6347))))) (height!1754 (right!31404 (right!31404 (left!31074 (c!651315 v!6347)))))) 1)))))

(declare-fun b!3763662 () Bool)

(assert (=> b!3763662 (= e!2327633 (<= 0 (cheight!12510 (right!31404 (left!31074 (c!651315 v!6347))))))))

(assert (= (and d!1100204 res!1523891) b!3763660))

(assert (= (and b!3763660 res!1523892) b!3763661))

(assert (= (and b!3763661 res!1523893) b!3763662))

(declare-fun m!4259183 () Bool)

(assert (=> d!1100204 m!4259183))

(declare-fun m!4259185 () Bool)

(assert (=> d!1100204 m!4259185))

(assert (=> b!3763661 m!4258971))

(assert (=> b!3763661 m!4258973))

(assert (=> b!3763661 m!4258971))

(assert (=> b!3763661 m!4258973))

(declare-fun m!4259187 () Bool)

(assert (=> b!3763661 m!4259187))

(assert (=> b!3762284 d!1100204))

(declare-fun d!1100206 () Bool)

(declare-fun res!1523894 () Bool)

(declare-fun e!2327634 () Bool)

(assert (=> d!1100206 (=> (not res!1523894) (not e!2327634))))

(assert (=> d!1100206 (= res!1523894 (<= (size!30213 (list!14824 (xs!15504 (right!31403 (right!31403 (c!651313 acc!400)))))) 512))))

(assert (=> d!1100206 (= (inv!53860 (right!31403 (right!31403 (c!651313 acc!400)))) e!2327634)))

(declare-fun b!3763663 () Bool)

(declare-fun res!1523895 () Bool)

(assert (=> b!3763663 (=> (not res!1523895) (not e!2327634))))

(assert (=> b!3763663 (= res!1523895 (= (csize!24827 (right!31403 (right!31403 (c!651313 acc!400)))) (size!30213 (list!14824 (xs!15504 (right!31403 (right!31403 (c!651313 acc!400))))))))))

(declare-fun b!3763664 () Bool)

(assert (=> b!3763664 (= e!2327634 (and (> (csize!24827 (right!31403 (right!31403 (c!651313 acc!400)))) 0) (<= (csize!24827 (right!31403 (right!31403 (c!651313 acc!400)))) 512)))))

(assert (= (and d!1100206 res!1523894) b!3763663))

(assert (= (and b!3763663 res!1523895) b!3763664))

(assert (=> d!1100206 m!4258901))

(assert (=> d!1100206 m!4258901))

(declare-fun m!4259189 () Bool)

(assert (=> d!1100206 m!4259189))

(assert (=> b!3763663 m!4258901))

(assert (=> b!3763663 m!4258901))

(assert (=> b!3763663 m!4259189))

(assert (=> b!3762133 d!1100206))

(declare-fun b!3763665 () Bool)

(declare-fun e!2327635 () Bool)

(declare-fun tp!1149704 () Bool)

(assert (=> b!3763665 (= e!2327635 (and tp_is_empty!19125 tp!1149704))))

(assert (=> b!3762415 (= tp!1149634 e!2327635)))

(assert (= (and b!3762415 ((_ is Cons!40139) (t!303912 (innerList!12358 (xs!15504 (left!31073 (c!651313 acc!400))))))) b!3763665))

(declare-fun b!3763666 () Bool)

(declare-fun e!2327636 () Bool)

(declare-fun tp!1149705 () Bool)

(assert (=> b!3763666 (= e!2327636 (and tp_is_empty!19125 tp!1149705))))

(assert (=> b!3762368 (= tp!1149594 e!2327636)))

(assert (= (and b!3762368 ((_ is Cons!40139) (t!303912 (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) b!3763666))

(declare-fun b!3763667 () Bool)

(declare-fun e!2327637 () Bool)

(declare-fun tp!1149706 () Bool)

(assert (=> b!3763667 (= e!2327637 (and tp_is_empty!19125 tp!1149706))))

(assert (=> b!3762365 (= tp!1149591 e!2327637)))

(assert (= (and b!3762365 ((_ is Cons!40139) (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) b!3763667))

(declare-fun e!2327638 () Bool)

(assert (=> b!3762366 (= tp!1149593 e!2327638)))

(declare-fun b!3763669 () Bool)

(declare-fun tp!1149710 () Bool)

(declare-fun tp!1149707 () Bool)

(assert (=> b!3763669 (= e!2327638 (and tp!1149710 tp!1149707))))

(declare-fun b!3763671 () Bool)

(declare-fun tp!1149709 () Bool)

(declare-fun tp!1149708 () Bool)

(assert (=> b!3763671 (= e!2327638 (and tp!1149709 tp!1149708))))

(declare-fun b!3763668 () Bool)

(assert (=> b!3763668 (= e!2327638 tp_is_empty!19125)))

(declare-fun b!3763670 () Bool)

(declare-fun tp!1149711 () Bool)

(assert (=> b!3763670 (= e!2327638 tp!1149711)))

(assert (= (and b!3762366 ((_ is ElementMatch!11061) (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) b!3763668))

(assert (= (and b!3762366 ((_ is Concat!17448) (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) b!3763669))

(assert (= (and b!3762366 ((_ is Star!11061) (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) b!3763670))

(assert (= (and b!3762366 ((_ is Union!11061) (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) b!3763671))

(declare-fun b!3763675 () Bool)

(declare-fun b_free!100761 () Bool)

(declare-fun b_next!101465 () Bool)

(assert (=> b!3763675 (= b_free!100761 (not b_next!101465))))

(declare-fun tp!1149713 () Bool)

(declare-fun b_and!279547 () Bool)

(assert (=> b!3763675 (= tp!1149713 b_and!279547)))

(declare-fun b_free!100763 () Bool)

(declare-fun b_next!101467 () Bool)

(assert (=> b!3763675 (= b_free!100763 (not b_next!101467))))

(declare-fun t!304040 () Bool)

(declare-fun tb!215357 () Bool)

(assert (=> (and b!3763675 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) t!304040) tb!215357))

(declare-fun result!263010 () Bool)

(assert (= result!263010 result!262906))

(assert (=> b!3762056 t!304040))

(declare-fun t!304042 () Bool)

(declare-fun tb!215359 () Bool)

(assert (=> (and b!3763675 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) t!304042) tb!215359))

(declare-fun result!263012 () Bool)

(assert (= result!263012 result!262954))

(assert (=> b!3762764 t!304042))

(declare-fun t!304044 () Bool)

(declare-fun tb!215361 () Bool)

(assert (=> (and b!3763675 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052)))))) t!304044) tb!215361))

(declare-fun result!263014 () Bool)

(assert (= result!263014 result!262908))

(assert (=> d!1099040 t!304044))

(declare-fun t!304046 () Bool)

(declare-fun tb!215363 () Bool)

(assert (=> (and b!3763675 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) t!304046) tb!215363))

(declare-fun result!263016 () Bool)

(assert (= result!263016 result!263002))

(assert (=> b!3763627 t!304046))

(declare-fun tb!215365 () Bool)

(declare-fun t!304048 () Bool)

(assert (=> (and b!3763675 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 lt!1302052))))))) t!304048) tb!215365))

(declare-fun result!263018 () Bool)

(assert (= result!263018 result!262962))

(assert (=> d!1099388 t!304048))

(declare-fun t!304050 () Bool)

(declare-fun tb!215367 () Bool)

(assert (=> (and b!3763675 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052))))) t!304050) tb!215367))

(declare-fun result!263020 () Bool)

(assert (= result!263020 result!262902))

(assert (=> d!1098798 t!304050))

(declare-fun t!304052 () Bool)

(declare-fun tb!215369 () Bool)

(assert (=> (and b!3763675 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) t!304052) tb!215369))

(declare-fun result!263022 () Bool)

(assert (= result!263022 result!262994))

(assert (=> b!3763618 t!304052))

(declare-fun b_and!279549 () Bool)

(declare-fun tp!1149715 () Bool)

(assert (=> b!3763675 (= tp!1149715 (and (=> t!304042 result!263012) (=> t!304048 result!263018) (=> t!304040 result!263010) (=> t!304052 result!263022) (=> t!304050 result!263020) (=> t!304044 result!263014) (=> t!304046 result!263016) b_and!279549))))

(declare-fun e!2327642 () Bool)

(assert (=> b!3762374 (= tp!1149598 e!2327642)))

(declare-fun b!3763672 () Bool)

(declare-fun tp!1149712 () Bool)

(declare-fun e!2327641 () Bool)

(assert (=> b!3763672 (= e!2327642 (and (inv!53867 (h!45561 (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))) e!2327641 tp!1149712))))

(declare-fun tp!1149714 () Bool)

(declare-fun e!2327639 () Bool)

(declare-fun b!3763673 () Bool)

(assert (=> b!3763673 (= e!2327641 (and (inv!21 (value!196053 (h!45561 (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347)))))))) e!2327639 tp!1149714))))

(declare-fun e!2327640 () Bool)

(assert (=> b!3763675 (= e!2327640 (and tp!1149713 tp!1149715))))

(declare-fun b!3763674 () Bool)

(declare-fun tp!1149716 () Bool)

(assert (=> b!3763674 (= e!2327639 (and tp!1149716 (inv!53846 (tag!7016 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))))) (inv!53868 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))))) e!2327640))))

(assert (= b!3763674 b!3763675))

(assert (= b!3763673 b!3763674))

(assert (= b!3763672 b!3763673))

(assert (= (and b!3762374 ((_ is Cons!40141) (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))) b!3763672))

(declare-fun m!4259191 () Bool)

(assert (=> b!3763672 m!4259191))

(declare-fun m!4259193 () Bool)

(assert (=> b!3763673 m!4259193))

(declare-fun m!4259195 () Bool)

(assert (=> b!3763674 m!4259195))

(declare-fun m!4259197 () Bool)

(assert (=> b!3763674 m!4259197))

(declare-fun b!3763676 () Bool)

(declare-fun tp!1149717 () Bool)

(declare-fun tp!1149719 () Bool)

(declare-fun e!2327646 () Bool)

(assert (=> b!3763676 (= e!2327646 (and (inv!53851 (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))) (value!196053 (h!45561 (t!303914 lt!1302052))))))) tp!1149719 (inv!53851 (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))) (value!196053 (h!45561 (t!303914 lt!1302052))))))) tp!1149717))))

(declare-fun b!3763678 () Bool)

(declare-fun e!2327645 () Bool)

(declare-fun tp!1149718 () Bool)

(assert (=> b!3763678 (= e!2327645 tp!1149718)))

(declare-fun b!3763677 () Bool)

(assert (=> b!3763677 (= e!2327646 (and (inv!53865 (xs!15504 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))) (value!196053 (h!45561 (t!303914 lt!1302052))))))) e!2327645))))

(assert (=> b!3762208 (= tp!1149572 (and (inv!53851 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))) (value!196053 (h!45561 (t!303914 lt!1302052)))))) e!2327646))))

(assert (= (and b!3762208 ((_ is Node!12298) (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))) (value!196053 (h!45561 (t!303914 lt!1302052))))))) b!3763676))

(assert (= b!3763677 b!3763678))

(assert (= (and b!3762208 ((_ is Leaf!19074) (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))) (value!196053 (h!45561 (t!303914 lt!1302052))))))) b!3763677))

(declare-fun m!4259199 () Bool)

(assert (=> b!3763676 m!4259199))

(declare-fun m!4259201 () Bool)

(assert (=> b!3763676 m!4259201))

(declare-fun m!4259203 () Bool)

(assert (=> b!3763677 m!4259203))

(assert (=> b!3762208 m!4256579))

(declare-fun b!3763679 () Bool)

(declare-fun e!2327647 () Bool)

(declare-fun tp!1149720 () Bool)

(assert (=> b!3763679 (= e!2327647 (and tp_is_empty!19125 tp!1149720))))

(assert (=> b!3762404 (= tp!1149622 e!2327647)))

(assert (= (and b!3762404 ((_ is Cons!40139) (t!303912 (t!303912 (innerList!12358 (xs!15504 (c!651313 acc!400))))))) b!3763679))

(declare-fun e!2327648 () Bool)

(declare-fun b!3763680 () Bool)

(declare-fun tp!1149722 () Bool)

(declare-fun tp!1149723 () Bool)

(assert (=> b!3763680 (= e!2327648 (and (inv!53854 (left!31074 (left!31074 (left!31074 (right!31404 (c!651315 v!6347)))))) tp!1149722 (inv!53854 (right!31404 (left!31074 (left!31074 (right!31404 (c!651315 v!6347)))))) tp!1149723))))

(declare-fun b!3763682 () Bool)

(declare-fun e!2327649 () Bool)

(declare-fun tp!1149721 () Bool)

(assert (=> b!3763682 (= e!2327649 tp!1149721)))

(declare-fun b!3763681 () Bool)

(assert (=> b!3763681 (= e!2327648 (and (inv!53863 (xs!15505 (left!31074 (left!31074 (right!31404 (c!651315 v!6347)))))) e!2327649))))

(assert (=> b!3762354 (= tp!1149584 (and (inv!53854 (left!31074 (left!31074 (right!31404 (c!651315 v!6347))))) e!2327648))))

(assert (= (and b!3762354 ((_ is Node!12299) (left!31074 (left!31074 (right!31404 (c!651315 v!6347)))))) b!3763680))

(assert (= b!3763681 b!3763682))

(assert (= (and b!3762354 ((_ is Leaf!19075) (left!31074 (left!31074 (right!31404 (c!651315 v!6347)))))) b!3763681))

(declare-fun m!4259205 () Bool)

(assert (=> b!3763680 m!4259205))

(declare-fun m!4259207 () Bool)

(assert (=> b!3763680 m!4259207))

(declare-fun m!4259209 () Bool)

(assert (=> b!3763681 m!4259209))

(assert (=> b!3762354 m!4256851))

(declare-fun tp!1149726 () Bool)

(declare-fun tp!1149725 () Bool)

(declare-fun b!3763683 () Bool)

(declare-fun e!2327650 () Bool)

(assert (=> b!3763683 (= e!2327650 (and (inv!53854 (left!31074 (right!31404 (left!31074 (right!31404 (c!651315 v!6347)))))) tp!1149725 (inv!53854 (right!31404 (right!31404 (left!31074 (right!31404 (c!651315 v!6347)))))) tp!1149726))))

(declare-fun b!3763685 () Bool)

(declare-fun e!2327651 () Bool)

(declare-fun tp!1149724 () Bool)

(assert (=> b!3763685 (= e!2327651 tp!1149724)))

(declare-fun b!3763684 () Bool)

(assert (=> b!3763684 (= e!2327650 (and (inv!53863 (xs!15505 (right!31404 (left!31074 (right!31404 (c!651315 v!6347)))))) e!2327651))))

(assert (=> b!3762354 (= tp!1149585 (and (inv!53854 (right!31404 (left!31074 (right!31404 (c!651315 v!6347))))) e!2327650))))

(assert (= (and b!3762354 ((_ is Node!12299) (right!31404 (left!31074 (right!31404 (c!651315 v!6347)))))) b!3763683))

(assert (= b!3763684 b!3763685))

(assert (= (and b!3762354 ((_ is Leaf!19075) (right!31404 (left!31074 (right!31404 (c!651315 v!6347)))))) b!3763684))

(declare-fun m!4259211 () Bool)

(assert (=> b!3763683 m!4259211))

(declare-fun m!4259213 () Bool)

(assert (=> b!3763683 m!4259213))

(declare-fun m!4259215 () Bool)

(assert (=> b!3763684 m!4259215))

(assert (=> b!3762354 m!4256853))

(declare-fun b!3763686 () Bool)

(declare-fun e!2327652 () Bool)

(declare-fun tp!1149727 () Bool)

(assert (=> b!3763686 (= e!2327652 (and tp_is_empty!19125 tp!1149727))))

(assert (=> b!3762411 (= tp!1149629 e!2327652)))

(assert (= (and b!3762411 ((_ is Cons!40139) (innerList!12358 (xs!15504 (left!31073 (right!31403 (c!651313 acc!400))))))) b!3763686))

(declare-fun b!3763690 () Bool)

(declare-fun b_free!100765 () Bool)

(declare-fun b_next!101469 () Bool)

(assert (=> b!3763690 (= b_free!100765 (not b_next!101469))))

(declare-fun tp!1149729 () Bool)

(declare-fun b_and!279551 () Bool)

(assert (=> b!3763690 (= tp!1149729 b_and!279551)))

(declare-fun b_free!100767 () Bool)

(declare-fun b_next!101471 () Bool)

(assert (=> b!3763690 (= b_free!100767 (not b_next!101471))))

(declare-fun t!304054 () Bool)

(declare-fun tb!215371 () Bool)

(assert (=> (and b!3763690 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) t!304054) tb!215371))

(declare-fun result!263024 () Bool)

(assert (= result!263024 result!262906))

(assert (=> b!3762056 t!304054))

(declare-fun t!304056 () Bool)

(declare-fun tb!215373 () Bool)

(assert (=> (and b!3763690 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) t!304056) tb!215373))

(declare-fun result!263026 () Bool)

(assert (= result!263026 result!262954))

(assert (=> b!3762764 t!304056))

(declare-fun tb!215375 () Bool)

(declare-fun t!304058 () Bool)

(assert (=> (and b!3763690 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052)))))) t!304058) tb!215375))

(declare-fun result!263028 () Bool)

(assert (= result!263028 result!262908))

(assert (=> d!1099040 t!304058))

(declare-fun t!304060 () Bool)

(declare-fun tb!215377 () Bool)

(assert (=> (and b!3763690 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) t!304060) tb!215377))

(declare-fun result!263030 () Bool)

(assert (= result!263030 result!263002))

(assert (=> b!3763627 t!304060))

(declare-fun tb!215379 () Bool)

(declare-fun t!304062 () Bool)

(assert (=> (and b!3763690 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 lt!1302052))))))) t!304062) tb!215379))

(declare-fun result!263032 () Bool)

(assert (= result!263032 result!262962))

(assert (=> d!1099388 t!304062))

(declare-fun tb!215381 () Bool)

(declare-fun t!304064 () Bool)

(assert (=> (and b!3763690 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052))))) t!304064) tb!215381))

(declare-fun result!263034 () Bool)

(assert (= result!263034 result!262902))

(assert (=> d!1098798 t!304064))

(declare-fun t!304066 () Bool)

(declare-fun tb!215383 () Bool)

(assert (=> (and b!3763690 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) t!304066) tb!215383))

(declare-fun result!263036 () Bool)

(assert (= result!263036 result!262994))

(assert (=> b!3763618 t!304066))

(declare-fun b_and!279553 () Bool)

(declare-fun tp!1149731 () Bool)

(assert (=> b!3763690 (= tp!1149731 (and (=> t!304060 result!263030) (=> t!304066 result!263036) (=> t!304064 result!263034) (=> t!304058 result!263028) (=> t!304056 result!263026) (=> t!304062 result!263032) (=> t!304054 result!263024) b_and!279553))))

(declare-fun e!2327656 () Bool)

(assert (=> b!3762364 (= tp!1149589 e!2327656)))

(declare-fun tp!1149728 () Bool)

(declare-fun e!2327655 () Bool)

(declare-fun b!3763687 () Bool)

(assert (=> b!3763687 (= e!2327656 (and (inv!53867 (h!45561 (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))) e!2327655 tp!1149728))))

(declare-fun b!3763688 () Bool)

(declare-fun e!2327653 () Bool)

(declare-fun tp!1149730 () Bool)

(assert (=> b!3763688 (= e!2327655 (and (inv!21 (value!196053 (h!45561 (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) e!2327653 tp!1149730))))

(declare-fun e!2327654 () Bool)

(assert (=> b!3763690 (= e!2327654 (and tp!1149729 tp!1149731))))

(declare-fun tp!1149732 () Bool)

(declare-fun b!3763689 () Bool)

(assert (=> b!3763689 (= e!2327653 (and tp!1149732 (inv!53846 (tag!7016 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) (inv!53868 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) e!2327654))))

(assert (= b!3763689 b!3763690))

(assert (= b!3763688 b!3763689))

(assert (= b!3763687 b!3763688))

(assert (= (and b!3762364 ((_ is Cons!40141) (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))) b!3763687))

(declare-fun m!4259217 () Bool)

(assert (=> b!3763687 m!4259217))

(declare-fun m!4259219 () Bool)

(assert (=> b!3763688 m!4259219))

(declare-fun m!4259221 () Bool)

(assert (=> b!3763689 m!4259221))

(declare-fun m!4259223 () Bool)

(assert (=> b!3763689 m!4259223))

(declare-fun tp!1149735 () Bool)

(declare-fun b!3763691 () Bool)

(declare-fun e!2327659 () Bool)

(declare-fun tp!1149734 () Bool)

(assert (=> b!3763691 (= e!2327659 (and (inv!53854 (left!31074 (left!31074 (right!31404 (left!31074 (c!651315 v!6347)))))) tp!1149734 (inv!53854 (right!31404 (left!31074 (right!31404 (left!31074 (c!651315 v!6347)))))) tp!1149735))))

(declare-fun b!3763693 () Bool)

(declare-fun e!2327660 () Bool)

(declare-fun tp!1149733 () Bool)

(assert (=> b!3763693 (= e!2327660 tp!1149733)))

(declare-fun b!3763692 () Bool)

(assert (=> b!3763692 (= e!2327659 (and (inv!53863 (xs!15505 (left!31074 (right!31404 (left!31074 (c!651315 v!6347)))))) e!2327660))))

(assert (=> b!3762372 (= tp!1149599 (and (inv!53854 (left!31074 (right!31404 (left!31074 (c!651315 v!6347))))) e!2327659))))

(assert (= (and b!3762372 ((_ is Node!12299) (left!31074 (right!31404 (left!31074 (c!651315 v!6347)))))) b!3763691))

(assert (= b!3763692 b!3763693))

(assert (= (and b!3762372 ((_ is Leaf!19075) (left!31074 (right!31404 (left!31074 (c!651315 v!6347)))))) b!3763692))

(declare-fun m!4259225 () Bool)

(assert (=> b!3763691 m!4259225))

(declare-fun m!4259227 () Bool)

(assert (=> b!3763691 m!4259227))

(declare-fun m!4259229 () Bool)

(assert (=> b!3763692 m!4259229))

(assert (=> b!3762372 m!4256877))

(declare-fun tp!1149738 () Bool)

(declare-fun tp!1149737 () Bool)

(declare-fun b!3763694 () Bool)

(declare-fun e!2327661 () Bool)

(assert (=> b!3763694 (= e!2327661 (and (inv!53854 (left!31074 (right!31404 (right!31404 (left!31074 (c!651315 v!6347)))))) tp!1149737 (inv!53854 (right!31404 (right!31404 (right!31404 (left!31074 (c!651315 v!6347)))))) tp!1149738))))

(declare-fun b!3763696 () Bool)

(declare-fun e!2327662 () Bool)

(declare-fun tp!1149736 () Bool)

(assert (=> b!3763696 (= e!2327662 tp!1149736)))

(declare-fun b!3763695 () Bool)

(assert (=> b!3763695 (= e!2327661 (and (inv!53863 (xs!15505 (right!31404 (right!31404 (left!31074 (c!651315 v!6347)))))) e!2327662))))

(assert (=> b!3762372 (= tp!1149600 (and (inv!53854 (right!31404 (right!31404 (left!31074 (c!651315 v!6347))))) e!2327661))))

(assert (= (and b!3762372 ((_ is Node!12299) (right!31404 (right!31404 (left!31074 (c!651315 v!6347)))))) b!3763694))

(assert (= b!3763695 b!3763696))

(assert (= (and b!3762372 ((_ is Leaf!19075) (right!31404 (right!31404 (left!31074 (c!651315 v!6347)))))) b!3763695))

(declare-fun m!4259231 () Bool)

(assert (=> b!3763694 m!4259231))

(declare-fun m!4259233 () Bool)

(assert (=> b!3763694 m!4259233))

(declare-fun m!4259235 () Bool)

(assert (=> b!3763695 m!4259235))

(assert (=> b!3762372 m!4256879))

(declare-fun b!3763700 () Bool)

(declare-fun b_free!100769 () Bool)

(declare-fun b_next!101473 () Bool)

(assert (=> b!3763700 (= b_free!100769 (not b_next!101473))))

(declare-fun tp!1149740 () Bool)

(declare-fun b_and!279555 () Bool)

(assert (=> b!3763700 (= tp!1149740 b_and!279555)))

(declare-fun b_free!100771 () Bool)

(declare-fun b_next!101475 () Bool)

(assert (=> b!3763700 (= b_free!100771 (not b_next!101475))))

(declare-fun t!304068 () Bool)

(declare-fun tb!215385 () Bool)

(assert (=> (and b!3763700 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) t!304068) tb!215385))

(declare-fun result!263038 () Bool)

(assert (= result!263038 result!262906))

(assert (=> b!3762056 t!304068))

(declare-fun t!304070 () Bool)

(declare-fun tb!215387 () Bool)

(assert (=> (and b!3763700 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) t!304070) tb!215387))

(declare-fun result!263040 () Bool)

(assert (= result!263040 result!262954))

(assert (=> b!3762764 t!304070))

(declare-fun t!304072 () Bool)

(declare-fun tb!215389 () Bool)

(assert (=> (and b!3763700 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052)))))) t!304072) tb!215389))

(declare-fun result!263042 () Bool)

(assert (= result!263042 result!262908))

(assert (=> d!1099040 t!304072))

(declare-fun t!304074 () Bool)

(declare-fun tb!215391 () Bool)

(assert (=> (and b!3763700 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) t!304074) tb!215391))

(declare-fun result!263044 () Bool)

(assert (= result!263044 result!263002))

(assert (=> b!3763627 t!304074))

(declare-fun t!304076 () Bool)

(declare-fun tb!215393 () Bool)

(assert (=> (and b!3763700 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 lt!1302052))))))) t!304076) tb!215393))

(declare-fun result!263046 () Bool)

(assert (= result!263046 result!262962))

(assert (=> d!1099388 t!304076))

(declare-fun tb!215395 () Bool)

(declare-fun t!304078 () Bool)

(assert (=> (and b!3763700 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052))))) t!304078) tb!215395))

(declare-fun result!263048 () Bool)

(assert (= result!263048 result!262902))

(assert (=> d!1098798 t!304078))

(declare-fun t!304080 () Bool)

(declare-fun tb!215397 () Bool)

(assert (=> (and b!3763700 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) t!304080) tb!215397))

(declare-fun result!263050 () Bool)

(assert (= result!263050 result!262994))

(assert (=> b!3763618 t!304080))

(declare-fun b_and!279557 () Bool)

(declare-fun tp!1149742 () Bool)

(assert (=> b!3763700 (= tp!1149742 (and (=> t!304076 result!263046) (=> t!304074 result!263044) (=> t!304080 result!263050) (=> t!304078 result!263048) (=> t!304072 result!263042) (=> t!304068 result!263038) (=> t!304070 result!263040) b_and!279557))))

(declare-fun e!2327666 () Bool)

(assert (=> b!3762356 (= tp!1149583 e!2327666)))

(declare-fun b!3763697 () Bool)

(declare-fun e!2327665 () Bool)

(declare-fun tp!1149739 () Bool)

(assert (=> b!3763697 (= e!2327666 (and (inv!53867 (h!45561 (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))) e!2327665 tp!1149739))))

(declare-fun b!3763698 () Bool)

(declare-fun tp!1149741 () Bool)

(declare-fun e!2327663 () Bool)

(assert (=> b!3763698 (= e!2327665 (and (inv!21 (value!196053 (h!45561 (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347)))))))) e!2327663 tp!1149741))))

(declare-fun e!2327664 () Bool)

(assert (=> b!3763700 (= e!2327664 (and tp!1149740 tp!1149742))))

(declare-fun b!3763699 () Bool)

(declare-fun tp!1149743 () Bool)

(assert (=> b!3763699 (= e!2327663 (and tp!1149743 (inv!53846 (tag!7016 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))))) (inv!53868 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))))) e!2327664))))

(assert (= b!3763699 b!3763700))

(assert (= b!3763698 b!3763699))

(assert (= b!3763697 b!3763698))

(assert (= (and b!3762356 ((_ is Cons!40141) (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))) b!3763697))

(declare-fun m!4259237 () Bool)

(assert (=> b!3763697 m!4259237))

(declare-fun m!4259239 () Bool)

(assert (=> b!3763698 m!4259239))

(declare-fun m!4259241 () Bool)

(assert (=> b!3763699 m!4259241))

(declare-fun m!4259243 () Bool)

(assert (=> b!3763699 m!4259243))

(declare-fun b!3763701 () Bool)

(declare-fun e!2327669 () Bool)

(declare-fun tp!1149744 () Bool)

(assert (=> b!3763701 (= e!2327669 (and tp_is_empty!19125 tp!1149744))))

(assert (=> b!3762399 (= tp!1149616 e!2327669)))

(assert (= (and b!3762399 ((_ is Cons!40139) (t!303912 (innerList!12358 (xs!15504 (right!31403 (c!651313 acc!400))))))) b!3763701))

(declare-fun b!3763702 () Bool)

(declare-fun tp!1149745 () Bool)

(declare-fun tp!1149747 () Bool)

(declare-fun e!2327671 () Bool)

(assert (=> b!3763702 (= e!2327671 (and (inv!53851 (left!31073 (left!31073 (left!31073 (right!31403 (c!651313 acc!400)))))) tp!1149747 (inv!53851 (right!31403 (left!31073 (left!31073 (right!31403 (c!651313 acc!400)))))) tp!1149745))))

(declare-fun b!3763704 () Bool)

(declare-fun e!2327670 () Bool)

(declare-fun tp!1149746 () Bool)

(assert (=> b!3763704 (= e!2327670 tp!1149746)))

(declare-fun b!3763703 () Bool)

(assert (=> b!3763703 (= e!2327671 (and (inv!53865 (xs!15504 (left!31073 (left!31073 (right!31403 (c!651313 acc!400)))))) e!2327670))))

(assert (=> b!3762409 (= tp!1149630 (and (inv!53851 (left!31073 (left!31073 (right!31403 (c!651313 acc!400))))) e!2327671))))

(assert (= (and b!3762409 ((_ is Node!12298) (left!31073 (left!31073 (right!31403 (c!651313 acc!400)))))) b!3763702))

(assert (= b!3763703 b!3763704))

(assert (= (and b!3762409 ((_ is Leaf!19074) (left!31073 (left!31073 (right!31403 (c!651313 acc!400)))))) b!3763703))

(declare-fun m!4259245 () Bool)

(assert (=> b!3763702 m!4259245))

(declare-fun m!4259247 () Bool)

(assert (=> b!3763702 m!4259247))

(declare-fun m!4259249 () Bool)

(assert (=> b!3763703 m!4259249))

(assert (=> b!3762409 m!4256919))

(declare-fun tp!1149748 () Bool)

(declare-fun e!2327673 () Bool)

(declare-fun tp!1149750 () Bool)

(declare-fun b!3763705 () Bool)

(assert (=> b!3763705 (= e!2327673 (and (inv!53851 (left!31073 (right!31403 (left!31073 (right!31403 (c!651313 acc!400)))))) tp!1149750 (inv!53851 (right!31403 (right!31403 (left!31073 (right!31403 (c!651313 acc!400)))))) tp!1149748))))

(declare-fun b!3763707 () Bool)

(declare-fun e!2327672 () Bool)

(declare-fun tp!1149749 () Bool)

(assert (=> b!3763707 (= e!2327672 tp!1149749)))

(declare-fun b!3763706 () Bool)

(assert (=> b!3763706 (= e!2327673 (and (inv!53865 (xs!15504 (right!31403 (left!31073 (right!31403 (c!651313 acc!400)))))) e!2327672))))

(assert (=> b!3762409 (= tp!1149628 (and (inv!53851 (right!31403 (left!31073 (right!31403 (c!651313 acc!400))))) e!2327673))))

(assert (= (and b!3762409 ((_ is Node!12298) (right!31403 (left!31073 (right!31403 (c!651313 acc!400)))))) b!3763705))

(assert (= b!3763706 b!3763707))

(assert (= (and b!3762409 ((_ is Leaf!19074) (right!31403 (left!31073 (right!31403 (c!651313 acc!400)))))) b!3763706))

(declare-fun m!4259251 () Bool)

(assert (=> b!3763705 m!4259251))

(declare-fun m!4259253 () Bool)

(assert (=> b!3763705 m!4259253))

(declare-fun m!4259255 () Bool)

(assert (=> b!3763706 m!4259255))

(assert (=> b!3762409 m!4256921))

(declare-fun e!2327674 () Bool)

(assert (=> b!3762398 (= tp!1149613 e!2327674)))

(declare-fun b!3763709 () Bool)

(declare-fun tp!1149754 () Bool)

(declare-fun tp!1149751 () Bool)

(assert (=> b!3763709 (= e!2327674 (and tp!1149754 tp!1149751))))

(declare-fun b!3763711 () Bool)

(declare-fun tp!1149753 () Bool)

(declare-fun tp!1149752 () Bool)

(assert (=> b!3763711 (= e!2327674 (and tp!1149753 tp!1149752))))

(declare-fun b!3763708 () Bool)

(assert (=> b!3763708 (= e!2327674 tp_is_empty!19125)))

(declare-fun b!3763710 () Bool)

(declare-fun tp!1149755 () Bool)

(assert (=> b!3763710 (= e!2327674 tp!1149755)))

(assert (= (and b!3762398 ((_ is ElementMatch!11061) (regOne!22635 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763708))

(assert (= (and b!3762398 ((_ is Concat!17448) (regOne!22635 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763709))

(assert (= (and b!3762398 ((_ is Star!11061) (regOne!22635 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763710))

(assert (= (and b!3762398 ((_ is Union!11061) (regOne!22635 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763711))

(declare-fun e!2327675 () Bool)

(assert (=> b!3762398 (= tp!1149612 e!2327675)))

(declare-fun b!3763713 () Bool)

(declare-fun tp!1149759 () Bool)

(declare-fun tp!1149756 () Bool)

(assert (=> b!3763713 (= e!2327675 (and tp!1149759 tp!1149756))))

(declare-fun b!3763715 () Bool)

(declare-fun tp!1149758 () Bool)

(declare-fun tp!1149757 () Bool)

(assert (=> b!3763715 (= e!2327675 (and tp!1149758 tp!1149757))))

(declare-fun b!3763712 () Bool)

(assert (=> b!3763712 (= e!2327675 tp_is_empty!19125)))

(declare-fun b!3763714 () Bool)

(declare-fun tp!1149760 () Bool)

(assert (=> b!3763714 (= e!2327675 tp!1149760)))

(assert (= (and b!3762398 ((_ is ElementMatch!11061) (regTwo!22635 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763712))

(assert (= (and b!3762398 ((_ is Concat!17448) (regTwo!22635 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763713))

(assert (= (and b!3762398 ((_ is Star!11061) (regTwo!22635 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763714))

(assert (= (and b!3762398 ((_ is Union!11061) (regTwo!22635 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763715))

(declare-fun b!3763719 () Bool)

(declare-fun b_free!100773 () Bool)

(declare-fun b_next!101477 () Bool)

(assert (=> b!3763719 (= b_free!100773 (not b_next!101477))))

(declare-fun tp!1149762 () Bool)

(declare-fun b_and!279559 () Bool)

(assert (=> b!3763719 (= tp!1149762 b_and!279559)))

(declare-fun b_free!100775 () Bool)

(declare-fun b_next!101479 () Bool)

(assert (=> b!3763719 (= b_free!100775 (not b_next!101479))))

(declare-fun t!304082 () Bool)

(declare-fun tb!215399 () Bool)

(assert (=> (and b!3763719 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) t!304082) tb!215399))

(declare-fun result!263052 () Bool)

(assert (= result!263052 result!262906))

(assert (=> b!3762056 t!304082))

(declare-fun t!304084 () Bool)

(declare-fun tb!215401 () Bool)

(assert (=> (and b!3763719 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) t!304084) tb!215401))

(declare-fun result!263054 () Bool)

(assert (= result!263054 result!262954))

(assert (=> b!3762764 t!304084))

(declare-fun t!304086 () Bool)

(declare-fun tb!215403 () Bool)

(assert (=> (and b!3763719 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052)))))) t!304086) tb!215403))

(declare-fun result!263056 () Bool)

(assert (= result!263056 result!262908))

(assert (=> d!1099040 t!304086))

(declare-fun t!304088 () Bool)

(declare-fun tb!215405 () Bool)

(assert (=> (and b!3763719 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) t!304088) tb!215405))

(declare-fun result!263058 () Bool)

(assert (= result!263058 result!263002))

(assert (=> b!3763627 t!304088))

(declare-fun t!304090 () Bool)

(declare-fun tb!215407 () Bool)

(assert (=> (and b!3763719 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 lt!1302052))))))) t!304090) tb!215407))

(declare-fun result!263060 () Bool)

(assert (= result!263060 result!262962))

(assert (=> d!1099388 t!304090))

(declare-fun tb!215409 () Bool)

(declare-fun t!304092 () Bool)

(assert (=> (and b!3763719 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052))))) t!304092) tb!215409))

(declare-fun result!263062 () Bool)

(assert (= result!263062 result!262902))

(assert (=> d!1098798 t!304092))

(declare-fun t!304094 () Bool)

(declare-fun tb!215411 () Bool)

(assert (=> (and b!3763719 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) t!304094) tb!215411))

(declare-fun result!263064 () Bool)

(assert (= result!263064 result!262994))

(assert (=> b!3763618 t!304094))

(declare-fun b_and!279561 () Bool)

(declare-fun tp!1149764 () Bool)

(assert (=> b!3763719 (= tp!1149764 (and (=> t!304092 result!263062) (=> t!304094 result!263064) (=> t!304088 result!263058) (=> t!304090 result!263060) (=> t!304084 result!263054) (=> t!304082 result!263052) (=> t!304086 result!263056) b_and!279561))))

(declare-fun e!2327679 () Bool)

(assert (=> b!3762405 (= tp!1149623 e!2327679)))

(declare-fun b!3763716 () Bool)

(declare-fun tp!1149761 () Bool)

(declare-fun e!2327678 () Bool)

(assert (=> b!3763716 (= e!2327679 (and (inv!53867 (h!45561 (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))) e!2327678 tp!1149761))))

(declare-fun e!2327676 () Bool)

(declare-fun b!3763717 () Bool)

(declare-fun tp!1149763 () Bool)

(assert (=> b!3763717 (= e!2327678 (and (inv!21 (value!196053 (h!45561 (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) e!2327676 tp!1149763))))

(declare-fun e!2327677 () Bool)

(assert (=> b!3763719 (= e!2327677 (and tp!1149762 tp!1149764))))

(declare-fun b!3763718 () Bool)

(declare-fun tp!1149765 () Bool)

(assert (=> b!3763718 (= e!2327676 (and tp!1149765 (inv!53846 (tag!7016 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) (inv!53868 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) e!2327677))))

(assert (= b!3763718 b!3763719))

(assert (= b!3763717 b!3763718))

(assert (= b!3763716 b!3763717))

(assert (= (and b!3762405 ((_ is Cons!40141) (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))) b!3763716))

(declare-fun m!4259257 () Bool)

(assert (=> b!3763716 m!4259257))

(declare-fun m!4259259 () Bool)

(assert (=> b!3763717 m!4259259))

(declare-fun m!4259261 () Bool)

(assert (=> b!3763718 m!4259261))

(declare-fun m!4259263 () Bool)

(assert (=> b!3763718 m!4259263))

(declare-fun b!3763723 () Bool)

(declare-fun b_free!100777 () Bool)

(declare-fun b_next!101481 () Bool)

(assert (=> b!3763723 (= b_free!100777 (not b_next!101481))))

(declare-fun tp!1149767 () Bool)

(declare-fun b_and!279563 () Bool)

(assert (=> b!3763723 (= tp!1149767 b_and!279563)))

(declare-fun b_free!100779 () Bool)

(declare-fun b_next!101483 () Bool)

(assert (=> b!3763723 (= b_free!100779 (not b_next!101483))))

(declare-fun t!304096 () Bool)

(declare-fun tb!215413 () Bool)

(assert (=> (and b!3763723 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) t!304096) tb!215413))

(declare-fun result!263066 () Bool)

(assert (= result!263066 result!262906))

(assert (=> b!3762056 t!304096))

(declare-fun t!304098 () Bool)

(declare-fun tb!215415 () Bool)

(assert (=> (and b!3763723 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) t!304098) tb!215415))

(declare-fun result!263068 () Bool)

(assert (= result!263068 result!262954))

(assert (=> b!3762764 t!304098))

(declare-fun tb!215417 () Bool)

(declare-fun t!304100 () Bool)

(assert (=> (and b!3763723 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052)))))) t!304100) tb!215417))

(declare-fun result!263070 () Bool)

(assert (= result!263070 result!262908))

(assert (=> d!1099040 t!304100))

(declare-fun t!304102 () Bool)

(declare-fun tb!215419 () Bool)

(assert (=> (and b!3763723 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) t!304102) tb!215419))

(declare-fun result!263072 () Bool)

(assert (= result!263072 result!263002))

(assert (=> b!3763627 t!304102))

(declare-fun tb!215421 () Bool)

(declare-fun t!304104 () Bool)

(assert (=> (and b!3763723 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 lt!1302052))))))) t!304104) tb!215421))

(declare-fun result!263074 () Bool)

(assert (= result!263074 result!262962))

(assert (=> d!1099388 t!304104))

(declare-fun tb!215423 () Bool)

(declare-fun t!304106 () Bool)

(assert (=> (and b!3763723 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052))))) t!304106) tb!215423))

(declare-fun result!263076 () Bool)

(assert (= result!263076 result!262902))

(assert (=> d!1098798 t!304106))

(declare-fun t!304108 () Bool)

(declare-fun tb!215425 () Bool)

(assert (=> (and b!3763723 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) t!304108) tb!215425))

(declare-fun result!263078 () Bool)

(assert (= result!263078 result!262994))

(assert (=> b!3763618 t!304108))

(declare-fun b_and!279565 () Bool)

(declare-fun tp!1149769 () Bool)

(assert (=> b!3763723 (= tp!1149769 (and (=> t!304096 result!263066) (=> t!304098 result!263068) (=> t!304102 result!263072) (=> t!304108 result!263078) (=> t!304106 result!263076) (=> t!304104 result!263074) (=> t!304100 result!263070) b_and!279565))))

(declare-fun e!2327685 () Bool)

(assert (=> b!3762359 (= tp!1149586 e!2327685)))

(declare-fun tp!1149766 () Bool)

(declare-fun b!3763720 () Bool)

(declare-fun e!2327684 () Bool)

(assert (=> b!3763720 (= e!2327685 (and (inv!53867 (h!45561 (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))) e!2327684 tp!1149766))))

(declare-fun b!3763721 () Bool)

(declare-fun tp!1149768 () Bool)

(declare-fun e!2327682 () Bool)

(assert (=> b!3763721 (= e!2327684 (and (inv!21 (value!196053 (h!45561 (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347)))))))) e!2327682 tp!1149768))))

(declare-fun e!2327683 () Bool)

(assert (=> b!3763723 (= e!2327683 (and tp!1149767 tp!1149769))))

(declare-fun b!3763722 () Bool)

(declare-fun tp!1149770 () Bool)

(assert (=> b!3763722 (= e!2327682 (and tp!1149770 (inv!53846 (tag!7016 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))))) (inv!53868 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))))) e!2327683))))

(assert (= b!3763722 b!3763723))

(assert (= b!3763721 b!3763722))

(assert (= b!3763720 b!3763721))

(assert (= (and b!3762359 ((_ is Cons!40141) (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))) b!3763720))

(declare-fun m!4259265 () Bool)

(assert (=> b!3763720 m!4259265))

(declare-fun m!4259267 () Bool)

(assert (=> b!3763721 m!4259267))

(declare-fun m!4259269 () Bool)

(assert (=> b!3763722 m!4259269))

(declare-fun m!4259271 () Bool)

(assert (=> b!3763722 m!4259271))

(declare-fun b!3763724 () Bool)

(declare-fun e!2327688 () Bool)

(declare-fun tp!1149771 () Bool)

(assert (=> b!3763724 (= e!2327688 (and tp_is_empty!19125 tp!1149771))))

(assert (=> b!3762406 (= tp!1149625 e!2327688)))

(assert (= (and b!3762406 ((_ is Cons!40139) (originalCharacters!6756 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) b!3763724))

(declare-fun b!3763725 () Bool)

(declare-fun e!2327689 () Bool)

(declare-fun tp!1149772 () Bool)

(assert (=> b!3763725 (= e!2327689 (and tp_is_empty!19125 tp!1149772))))

(assert (=> b!3762350 (= tp!1149578 e!2327689)))

(assert (= (and b!3762350 ((_ is Cons!40139) (innerList!12358 (xs!15504 (right!31403 (left!31073 (c!651313 acc!400))))))) b!3763725))

(declare-fun e!2327690 () Bool)

(assert (=> b!3762407 (= tp!1149627 e!2327690)))

(declare-fun b!3763727 () Bool)

(declare-fun tp!1149776 () Bool)

(declare-fun tp!1149773 () Bool)

(assert (=> b!3763727 (= e!2327690 (and tp!1149776 tp!1149773))))

(declare-fun b!3763729 () Bool)

(declare-fun tp!1149775 () Bool)

(declare-fun tp!1149774 () Bool)

(assert (=> b!3763729 (= e!2327690 (and tp!1149775 tp!1149774))))

(declare-fun b!3763726 () Bool)

(assert (=> b!3763726 (= e!2327690 tp_is_empty!19125)))

(declare-fun b!3763728 () Bool)

(declare-fun tp!1149777 () Bool)

(assert (=> b!3763728 (= e!2327690 tp!1149777)))

(assert (= (and b!3762407 ((_ is ElementMatch!11061) (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) b!3763726))

(assert (= (and b!3762407 ((_ is Concat!17448) (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) b!3763727))

(assert (= (and b!3762407 ((_ is Star!11061) (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) b!3763728))

(assert (= (and b!3762407 ((_ is Union!11061) (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) b!3763729))

(declare-fun b!3763730 () Bool)

(declare-fun e!2327691 () Bool)

(declare-fun tp!1149778 () Bool)

(assert (=> b!3763730 (= e!2327691 (and tp_is_empty!19125 tp!1149778))))

(assert (=> b!3762347 (= tp!1149575 e!2327691)))

(assert (= (and b!3762347 ((_ is Cons!40139) (innerList!12358 (xs!15504 (left!31073 (left!31073 (c!651313 acc!400))))))) b!3763730))

(declare-fun e!2327692 () Bool)

(assert (=> b!3762396 (= tp!1149614 e!2327692)))

(declare-fun b!3763732 () Bool)

(declare-fun tp!1149782 () Bool)

(declare-fun tp!1149779 () Bool)

(assert (=> b!3763732 (= e!2327692 (and tp!1149782 tp!1149779))))

(declare-fun b!3763734 () Bool)

(declare-fun tp!1149781 () Bool)

(declare-fun tp!1149780 () Bool)

(assert (=> b!3763734 (= e!2327692 (and tp!1149781 tp!1149780))))

(declare-fun b!3763731 () Bool)

(assert (=> b!3763731 (= e!2327692 tp_is_empty!19125)))

(declare-fun b!3763733 () Bool)

(declare-fun tp!1149783 () Bool)

(assert (=> b!3763733 (= e!2327692 tp!1149783)))

(assert (= (and b!3762396 ((_ is ElementMatch!11061) (regOne!22634 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763731))

(assert (= (and b!3762396 ((_ is Concat!17448) (regOne!22634 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763732))

(assert (= (and b!3762396 ((_ is Star!11061) (regOne!22634 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763733))

(assert (= (and b!3762396 ((_ is Union!11061) (regOne!22634 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763734))

(declare-fun e!2327693 () Bool)

(assert (=> b!3762396 (= tp!1149611 e!2327693)))

(declare-fun b!3763736 () Bool)

(declare-fun tp!1149787 () Bool)

(declare-fun tp!1149784 () Bool)

(assert (=> b!3763736 (= e!2327693 (and tp!1149787 tp!1149784))))

(declare-fun b!3763738 () Bool)

(declare-fun tp!1149786 () Bool)

(declare-fun tp!1149785 () Bool)

(assert (=> b!3763738 (= e!2327693 (and tp!1149786 tp!1149785))))

(declare-fun b!3763735 () Bool)

(assert (=> b!3763735 (= e!2327693 tp_is_empty!19125)))

(declare-fun b!3763737 () Bool)

(declare-fun tp!1149788 () Bool)

(assert (=> b!3763737 (= e!2327693 tp!1149788)))

(assert (= (and b!3762396 ((_ is ElementMatch!11061) (regTwo!22634 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763735))

(assert (= (and b!3762396 ((_ is Concat!17448) (regTwo!22634 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763736))

(assert (= (and b!3762396 ((_ is Star!11061) (regTwo!22634 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763737))

(assert (= (and b!3762396 ((_ is Union!11061) (regTwo!22634 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763738))

(declare-fun tp!1149790 () Bool)

(declare-fun b!3763739 () Bool)

(declare-fun tp!1149791 () Bool)

(declare-fun e!2327694 () Bool)

(assert (=> b!3763739 (= e!2327694 (and (inv!53854 (left!31074 (left!31074 (right!31404 (right!31404 (c!651315 v!6347)))))) tp!1149790 (inv!53854 (right!31404 (left!31074 (right!31404 (right!31404 (c!651315 v!6347)))))) tp!1149791))))

(declare-fun b!3763741 () Bool)

(declare-fun e!2327695 () Bool)

(declare-fun tp!1149789 () Bool)

(assert (=> b!3763741 (= e!2327695 tp!1149789)))

(declare-fun b!3763740 () Bool)

(assert (=> b!3763740 (= e!2327694 (and (inv!53863 (xs!15505 (left!31074 (right!31404 (right!31404 (c!651315 v!6347)))))) e!2327695))))

(assert (=> b!3762357 (= tp!1149587 (and (inv!53854 (left!31074 (right!31404 (right!31404 (c!651315 v!6347))))) e!2327694))))

(assert (= (and b!3762357 ((_ is Node!12299) (left!31074 (right!31404 (right!31404 (c!651315 v!6347)))))) b!3763739))

(assert (= b!3763740 b!3763741))

(assert (= (and b!3762357 ((_ is Leaf!19075) (left!31074 (right!31404 (right!31404 (c!651315 v!6347)))))) b!3763740))

(declare-fun m!4259273 () Bool)

(assert (=> b!3763739 m!4259273))

(declare-fun m!4259275 () Bool)

(assert (=> b!3763739 m!4259275))

(declare-fun m!4259277 () Bool)

(assert (=> b!3763740 m!4259277))

(assert (=> b!3762357 m!4256857))

(declare-fun e!2327696 () Bool)

(declare-fun tp!1149793 () Bool)

(declare-fun tp!1149794 () Bool)

(declare-fun b!3763742 () Bool)

(assert (=> b!3763742 (= e!2327696 (and (inv!53854 (left!31074 (right!31404 (right!31404 (right!31404 (c!651315 v!6347)))))) tp!1149793 (inv!53854 (right!31404 (right!31404 (right!31404 (right!31404 (c!651315 v!6347)))))) tp!1149794))))

(declare-fun b!3763744 () Bool)

(declare-fun e!2327697 () Bool)

(declare-fun tp!1149792 () Bool)

(assert (=> b!3763744 (= e!2327697 tp!1149792)))

(declare-fun b!3763743 () Bool)

(assert (=> b!3763743 (= e!2327696 (and (inv!53863 (xs!15505 (right!31404 (right!31404 (right!31404 (c!651315 v!6347)))))) e!2327697))))

(assert (=> b!3762357 (= tp!1149588 (and (inv!53854 (right!31404 (right!31404 (right!31404 (c!651315 v!6347))))) e!2327696))))

(assert (= (and b!3762357 ((_ is Node!12299) (right!31404 (right!31404 (right!31404 (c!651315 v!6347)))))) b!3763742))

(assert (= b!3763743 b!3763744))

(assert (= (and b!3762357 ((_ is Leaf!19075) (right!31404 (right!31404 (right!31404 (c!651315 v!6347)))))) b!3763743))

(declare-fun m!4259279 () Bool)

(assert (=> b!3763742 m!4259279))

(declare-fun m!4259281 () Bool)

(assert (=> b!3763742 m!4259281))

(declare-fun m!4259283 () Bool)

(assert (=> b!3763743 m!4259283))

(assert (=> b!3762357 m!4256859))

(declare-fun b!3763745 () Bool)

(declare-fun e!2327698 () Bool)

(declare-fun tp!1149795 () Bool)

(assert (=> b!3763745 (= e!2327698 (and tp_is_empty!19125 tp!1149795))))

(assert (=> b!3762414 (= tp!1149632 e!2327698)))

(assert (= (and b!3762414 ((_ is Cons!40139) (innerList!12358 (xs!15504 (right!31403 (right!31403 (c!651313 acc!400))))))) b!3763745))

(declare-fun tp!1149796 () Bool)

(declare-fun tp!1149798 () Bool)

(declare-fun e!2327700 () Bool)

(declare-fun b!3763746 () Bool)

(assert (=> b!3763746 (= e!2327700 (and (inv!53851 (left!31073 (left!31073 (right!31403 (left!31073 (c!651313 acc!400)))))) tp!1149798 (inv!53851 (right!31403 (left!31073 (right!31403 (left!31073 (c!651313 acc!400)))))) tp!1149796))))

(declare-fun b!3763748 () Bool)

(declare-fun e!2327699 () Bool)

(declare-fun tp!1149797 () Bool)

(assert (=> b!3763748 (= e!2327699 tp!1149797)))

(declare-fun b!3763747 () Bool)

(assert (=> b!3763747 (= e!2327700 (and (inv!53865 (xs!15504 (left!31073 (right!31403 (left!31073 (c!651313 acc!400)))))) e!2327699))))

(assert (=> b!3762348 (= tp!1149579 (and (inv!53851 (left!31073 (right!31403 (left!31073 (c!651313 acc!400))))) e!2327700))))

(assert (= (and b!3762348 ((_ is Node!12298) (left!31073 (right!31403 (left!31073 (c!651313 acc!400)))))) b!3763746))

(assert (= b!3763747 b!3763748))

(assert (= (and b!3762348 ((_ is Leaf!19074) (left!31073 (right!31403 (left!31073 (c!651313 acc!400)))))) b!3763747))

(declare-fun m!4259285 () Bool)

(assert (=> b!3763746 m!4259285))

(declare-fun m!4259287 () Bool)

(assert (=> b!3763746 m!4259287))

(declare-fun m!4259289 () Bool)

(assert (=> b!3763747 m!4259289))

(assert (=> b!3762348 m!4256839))

(declare-fun tp!1149801 () Bool)

(declare-fun b!3763749 () Bool)

(declare-fun e!2327702 () Bool)

(declare-fun tp!1149799 () Bool)

(assert (=> b!3763749 (= e!2327702 (and (inv!53851 (left!31073 (right!31403 (right!31403 (left!31073 (c!651313 acc!400)))))) tp!1149801 (inv!53851 (right!31403 (right!31403 (right!31403 (left!31073 (c!651313 acc!400)))))) tp!1149799))))

(declare-fun b!3763751 () Bool)

(declare-fun e!2327701 () Bool)

(declare-fun tp!1149800 () Bool)

(assert (=> b!3763751 (= e!2327701 tp!1149800)))

(declare-fun b!3763750 () Bool)

(assert (=> b!3763750 (= e!2327702 (and (inv!53865 (xs!15504 (right!31403 (right!31403 (left!31073 (c!651313 acc!400)))))) e!2327701))))

(assert (=> b!3762348 (= tp!1149577 (and (inv!53851 (right!31403 (right!31403 (left!31073 (c!651313 acc!400))))) e!2327702))))

(assert (= (and b!3762348 ((_ is Node!12298) (right!31403 (right!31403 (left!31073 (c!651313 acc!400)))))) b!3763749))

(assert (= b!3763750 b!3763751))

(assert (= (and b!3762348 ((_ is Leaf!19074) (right!31403 (right!31403 (left!31073 (c!651313 acc!400)))))) b!3763750))

(declare-fun m!4259291 () Bool)

(assert (=> b!3763749 m!4259291))

(declare-fun m!4259293 () Bool)

(assert (=> b!3763749 m!4259293))

(declare-fun m!4259295 () Bool)

(assert (=> b!3763750 m!4259295))

(assert (=> b!3762348 m!4256841))

(declare-fun e!2327703 () Bool)

(assert (=> b!3762397 (= tp!1149615 e!2327703)))

(declare-fun b!3763753 () Bool)

(declare-fun tp!1149805 () Bool)

(declare-fun tp!1149802 () Bool)

(assert (=> b!3763753 (= e!2327703 (and tp!1149805 tp!1149802))))

(declare-fun b!3763755 () Bool)

(declare-fun tp!1149804 () Bool)

(declare-fun tp!1149803 () Bool)

(assert (=> b!3763755 (= e!2327703 (and tp!1149804 tp!1149803))))

(declare-fun b!3763752 () Bool)

(assert (=> b!3763752 (= e!2327703 tp_is_empty!19125)))

(declare-fun b!3763754 () Bool)

(declare-fun tp!1149806 () Bool)

(assert (=> b!3763754 (= e!2327703 tp!1149806)))

(assert (= (and b!3762397 ((_ is ElementMatch!11061) (reg!11390 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763752))

(assert (= (and b!3762397 ((_ is Concat!17448) (reg!11390 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763753))

(assert (= (and b!3762397 ((_ is Star!11061) (reg!11390 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763754))

(assert (= (and b!3762397 ((_ is Union!11061) (reg!11390 (regex!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763755))

(declare-fun b!3763756 () Bool)

(declare-fun e!2327704 () Bool)

(declare-fun tp!1149807 () Bool)

(assert (=> b!3763756 (= e!2327704 (and tp_is_empty!19125 tp!1149807))))

(assert (=> b!3762401 (= tp!1149619 e!2327704)))

(assert (= (and b!3762401 ((_ is Cons!40139) (originalCharacters!6756 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) b!3763756))

(declare-fun b!3763760 () Bool)

(declare-fun b_free!100781 () Bool)

(declare-fun b_next!101485 () Bool)

(assert (=> b!3763760 (= b_free!100781 (not b_next!101485))))

(declare-fun tp!1149809 () Bool)

(declare-fun b_and!279567 () Bool)

(assert (=> b!3763760 (= tp!1149809 b_and!279567)))

(declare-fun b_free!100783 () Bool)

(declare-fun b_next!101487 () Bool)

(assert (=> b!3763760 (= b_free!100783 (not b_next!101487))))

(declare-fun t!304110 () Bool)

(declare-fun tb!215427 () Bool)

(assert (=> (and b!3763760 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) t!304110) tb!215427))

(declare-fun result!263080 () Bool)

(assert (= result!263080 result!262906))

(assert (=> b!3762056 t!304110))

(declare-fun t!304112 () Bool)

(declare-fun tb!215429 () Bool)

(assert (=> (and b!3763760 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) t!304112) tb!215429))

(declare-fun result!263082 () Bool)

(assert (= result!263082 result!262954))

(assert (=> b!3762764 t!304112))

(declare-fun t!304114 () Bool)

(declare-fun tb!215431 () Bool)

(assert (=> (and b!3763760 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052)))))) t!304114) tb!215431))

(declare-fun result!263084 () Bool)

(assert (= result!263084 result!262908))

(assert (=> d!1099040 t!304114))

(declare-fun t!304116 () Bool)

(declare-fun tb!215433 () Bool)

(assert (=> (and b!3763760 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) t!304116) tb!215433))

(declare-fun result!263086 () Bool)

(assert (= result!263086 result!263002))

(assert (=> b!3763627 t!304116))

(declare-fun tb!215435 () Bool)

(declare-fun t!304118 () Bool)

(assert (=> (and b!3763760 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 lt!1302052))))))) t!304118) tb!215435))

(declare-fun result!263088 () Bool)

(assert (= result!263088 result!262962))

(assert (=> d!1099388 t!304118))

(declare-fun tb!215437 () Bool)

(declare-fun t!304120 () Bool)

(assert (=> (and b!3763760 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052))))) t!304120) tb!215437))

(declare-fun result!263090 () Bool)

(assert (= result!263090 result!262902))

(assert (=> d!1098798 t!304120))

(declare-fun t!304122 () Bool)

(declare-fun tb!215439 () Bool)

(assert (=> (and b!3763760 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) t!304122) tb!215439))

(declare-fun result!263092 () Bool)

(assert (= result!263092 result!262994))

(assert (=> b!3763618 t!304122))

(declare-fun b_and!279569 () Bool)

(declare-fun tp!1149811 () Bool)

(assert (=> b!3763760 (= tp!1149811 (and (=> t!304118 result!263088) (=> t!304114 result!263084) (=> t!304110 result!263080) (=> t!304122 result!263092) (=> t!304112 result!263082) (=> t!304120 result!263090) (=> t!304116 result!263086) b_and!279569))))

(declare-fun e!2327708 () Bool)

(assert (=> b!3762371 (= tp!1149595 e!2327708)))

(declare-fun tp!1149808 () Bool)

(declare-fun b!3763757 () Bool)

(declare-fun e!2327707 () Bool)

(assert (=> b!3763757 (= e!2327708 (and (inv!53867 (h!45561 (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))) e!2327707 tp!1149808))))

(declare-fun b!3763758 () Bool)

(declare-fun tp!1149810 () Bool)

(declare-fun e!2327705 () Bool)

(assert (=> b!3763758 (= e!2327707 (and (inv!21 (value!196053 (h!45561 (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347)))))))) e!2327705 tp!1149810))))

(declare-fun e!2327706 () Bool)

(assert (=> b!3763760 (= e!2327706 (and tp!1149809 tp!1149811))))

(declare-fun b!3763759 () Bool)

(declare-fun tp!1149812 () Bool)

(assert (=> b!3763759 (= e!2327705 (and tp!1149812 (inv!53846 (tag!7016 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))))) (inv!53868 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))))) e!2327706))))

(assert (= b!3763759 b!3763760))

(assert (= b!3763758 b!3763759))

(assert (= b!3763757 b!3763758))

(assert (= (and b!3762371 ((_ is Cons!40141) (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))) b!3763757))

(declare-fun m!4259297 () Bool)

(assert (=> b!3763757 m!4259297))

(declare-fun m!4259299 () Bool)

(assert (=> b!3763758 m!4259299))

(declare-fun m!4259301 () Bool)

(assert (=> b!3763759 m!4259301))

(declare-fun m!4259303 () Bool)

(assert (=> b!3763759 m!4259303))

(declare-fun tp!1149813 () Bool)

(declare-fun e!2327712 () Bool)

(declare-fun b!3763761 () Bool)

(declare-fun tp!1149815 () Bool)

(assert (=> b!3763761 (= e!2327712 (and (inv!53851 (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) tp!1149815 (inv!53851 (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) tp!1149813))))

(declare-fun b!3763763 () Bool)

(declare-fun e!2327711 () Bool)

(declare-fun tp!1149814 () Bool)

(assert (=> b!3763763 (= e!2327711 tp!1149814)))

(declare-fun b!3763762 () Bool)

(assert (=> b!3763762 (= e!2327712 (and (inv!53865 (xs!15504 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) e!2327711))))

(assert (=> b!3762058 (= tp!1149571 (and (inv!53851 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) e!2327712))))

(assert (= (and b!3762058 ((_ is Node!12298) (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763761))

(assert (= b!3763762 b!3763763))

(assert (= (and b!3762058 ((_ is Leaf!19074) (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (value!196053 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763762))

(declare-fun m!4259305 () Bool)

(assert (=> b!3763761 m!4259305))

(declare-fun m!4259307 () Bool)

(assert (=> b!3763761 m!4259307))

(declare-fun m!4259309 () Bool)

(assert (=> b!3763762 m!4259309))

(assert (=> b!3762058 m!4256317))

(declare-fun e!2327713 () Bool)

(assert (=> b!3762402 (= tp!1149621 e!2327713)))

(declare-fun b!3763765 () Bool)

(declare-fun tp!1149819 () Bool)

(declare-fun tp!1149816 () Bool)

(assert (=> b!3763765 (= e!2327713 (and tp!1149819 tp!1149816))))

(declare-fun b!3763767 () Bool)

(declare-fun tp!1149818 () Bool)

(declare-fun tp!1149817 () Bool)

(assert (=> b!3763767 (= e!2327713 (and tp!1149818 tp!1149817))))

(declare-fun b!3763764 () Bool)

(assert (=> b!3763764 (= e!2327713 tp_is_empty!19125)))

(declare-fun b!3763766 () Bool)

(declare-fun tp!1149820 () Bool)

(assert (=> b!3763766 (= e!2327713 tp!1149820)))

(assert (= (and b!3762402 ((_ is ElementMatch!11061) (regex!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763764))

(assert (= (and b!3762402 ((_ is Concat!17448) (regex!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763765))

(assert (= (and b!3762402 ((_ is Star!11061) (regex!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763766))

(assert (= (and b!3762402 ((_ is Union!11061) (regex!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) b!3763767))

(declare-fun tp!1149823 () Bool)

(declare-fun b!3763768 () Bool)

(declare-fun tp!1149821 () Bool)

(declare-fun e!2327715 () Bool)

(assert (=> b!3763768 (= e!2327715 (and (inv!53851 (left!31073 (left!31073 (right!31403 (right!31403 (c!651313 acc!400)))))) tp!1149823 (inv!53851 (right!31403 (left!31073 (right!31403 (right!31403 (c!651313 acc!400)))))) tp!1149821))))

(declare-fun b!3763770 () Bool)

(declare-fun e!2327714 () Bool)

(declare-fun tp!1149822 () Bool)

(assert (=> b!3763770 (= e!2327714 tp!1149822)))

(declare-fun b!3763769 () Bool)

(assert (=> b!3763769 (= e!2327715 (and (inv!53865 (xs!15504 (left!31073 (right!31403 (right!31403 (c!651313 acc!400)))))) e!2327714))))

(assert (=> b!3762412 (= tp!1149633 (and (inv!53851 (left!31073 (right!31403 (right!31403 (c!651313 acc!400))))) e!2327715))))

(assert (= (and b!3762412 ((_ is Node!12298) (left!31073 (right!31403 (right!31403 (c!651313 acc!400)))))) b!3763768))

(assert (= b!3763769 b!3763770))

(assert (= (and b!3762412 ((_ is Leaf!19074) (left!31073 (right!31403 (right!31403 (c!651313 acc!400)))))) b!3763769))

(declare-fun m!4259311 () Bool)

(assert (=> b!3763768 m!4259311))

(declare-fun m!4259313 () Bool)

(assert (=> b!3763768 m!4259313))

(declare-fun m!4259315 () Bool)

(assert (=> b!3763769 m!4259315))

(assert (=> b!3762412 m!4256925))

(declare-fun tp!1149824 () Bool)

(declare-fun e!2327717 () Bool)

(declare-fun tp!1149826 () Bool)

(declare-fun b!3763771 () Bool)

(assert (=> b!3763771 (= e!2327717 (and (inv!53851 (left!31073 (right!31403 (right!31403 (right!31403 (c!651313 acc!400)))))) tp!1149826 (inv!53851 (right!31403 (right!31403 (right!31403 (right!31403 (c!651313 acc!400)))))) tp!1149824))))

(declare-fun b!3763773 () Bool)

(declare-fun e!2327716 () Bool)

(declare-fun tp!1149825 () Bool)

(assert (=> b!3763773 (= e!2327716 tp!1149825)))

(declare-fun b!3763772 () Bool)

(assert (=> b!3763772 (= e!2327717 (and (inv!53865 (xs!15504 (right!31403 (right!31403 (right!31403 (c!651313 acc!400)))))) e!2327716))))

(assert (=> b!3762412 (= tp!1149631 (and (inv!53851 (right!31403 (right!31403 (right!31403 (c!651313 acc!400))))) e!2327717))))

(assert (= (and b!3762412 ((_ is Node!12298) (right!31403 (right!31403 (right!31403 (c!651313 acc!400)))))) b!3763771))

(assert (= b!3763772 b!3763773))

(assert (= (and b!3762412 ((_ is Leaf!19074) (right!31403 (right!31403 (right!31403 (c!651313 acc!400)))))) b!3763772))

(declare-fun m!4259317 () Bool)

(assert (=> b!3763771 m!4259317))

(declare-fun m!4259319 () Bool)

(assert (=> b!3763771 m!4259319))

(declare-fun m!4259321 () Bool)

(assert (=> b!3763772 m!4259321))

(assert (=> b!3762412 m!4256927))

(declare-fun b!3763774 () Bool)

(declare-fun e!2327719 () Bool)

(declare-fun tp!1149827 () Bool)

(declare-fun tp!1149829 () Bool)

(assert (=> b!3763774 (= e!2327719 (and (inv!53851 (left!31073 (left!31073 (left!31073 (left!31073 (c!651313 acc!400)))))) tp!1149829 (inv!53851 (right!31403 (left!31073 (left!31073 (left!31073 (c!651313 acc!400)))))) tp!1149827))))

(declare-fun b!3763776 () Bool)

(declare-fun e!2327718 () Bool)

(declare-fun tp!1149828 () Bool)

(assert (=> b!3763776 (= e!2327718 tp!1149828)))

(declare-fun b!3763775 () Bool)

(assert (=> b!3763775 (= e!2327719 (and (inv!53865 (xs!15504 (left!31073 (left!31073 (left!31073 (c!651313 acc!400)))))) e!2327718))))

(assert (=> b!3762345 (= tp!1149576 (and (inv!53851 (left!31073 (left!31073 (left!31073 (c!651313 acc!400))))) e!2327719))))

(assert (= (and b!3762345 ((_ is Node!12298) (left!31073 (left!31073 (left!31073 (c!651313 acc!400)))))) b!3763774))

(assert (= b!3763775 b!3763776))

(assert (= (and b!3762345 ((_ is Leaf!19074) (left!31073 (left!31073 (left!31073 (c!651313 acc!400)))))) b!3763775))

(declare-fun m!4259323 () Bool)

(assert (=> b!3763774 m!4259323))

(declare-fun m!4259325 () Bool)

(assert (=> b!3763774 m!4259325))

(declare-fun m!4259327 () Bool)

(assert (=> b!3763775 m!4259327))

(assert (=> b!3762345 m!4256833))

(declare-fun b!3763777 () Bool)

(declare-fun tp!1149832 () Bool)

(declare-fun tp!1149830 () Bool)

(declare-fun e!2327721 () Bool)

(assert (=> b!3763777 (= e!2327721 (and (inv!53851 (left!31073 (right!31403 (left!31073 (left!31073 (c!651313 acc!400)))))) tp!1149832 (inv!53851 (right!31403 (right!31403 (left!31073 (left!31073 (c!651313 acc!400)))))) tp!1149830))))

(declare-fun b!3763779 () Bool)

(declare-fun e!2327720 () Bool)

(declare-fun tp!1149831 () Bool)

(assert (=> b!3763779 (= e!2327720 tp!1149831)))

(declare-fun b!3763778 () Bool)

(assert (=> b!3763778 (= e!2327721 (and (inv!53865 (xs!15504 (right!31403 (left!31073 (left!31073 (c!651313 acc!400)))))) e!2327720))))

(assert (=> b!3762345 (= tp!1149574 (and (inv!53851 (right!31403 (left!31073 (left!31073 (c!651313 acc!400))))) e!2327721))))

(assert (= (and b!3762345 ((_ is Node!12298) (right!31403 (left!31073 (left!31073 (c!651313 acc!400)))))) b!3763777))

(assert (= b!3763778 b!3763779))

(assert (= (and b!3762345 ((_ is Leaf!19074) (right!31403 (left!31073 (left!31073 (c!651313 acc!400)))))) b!3763778))

(declare-fun m!4259329 () Bool)

(assert (=> b!3763777 m!4259329))

(declare-fun m!4259331 () Bool)

(assert (=> b!3763777 m!4259331))

(declare-fun m!4259333 () Bool)

(assert (=> b!3763778 m!4259333))

(assert (=> b!3762345 m!4256835))

(declare-fun e!2327722 () Bool)

(declare-fun b!3763780 () Bool)

(declare-fun tp!1149835 () Bool)

(declare-fun tp!1149834 () Bool)

(assert (=> b!3763780 (= e!2327722 (and (inv!53854 (left!31074 (left!31074 (left!31074 (left!31074 (c!651315 v!6347)))))) tp!1149834 (inv!53854 (right!31404 (left!31074 (left!31074 (left!31074 (c!651315 v!6347)))))) tp!1149835))))

(declare-fun b!3763782 () Bool)

(declare-fun e!2327723 () Bool)

(declare-fun tp!1149833 () Bool)

(assert (=> b!3763782 (= e!2327723 tp!1149833)))

(declare-fun b!3763781 () Bool)

(assert (=> b!3763781 (= e!2327722 (and (inv!53863 (xs!15505 (left!31074 (left!31074 (left!31074 (c!651315 v!6347)))))) e!2327723))))

(assert (=> b!3762369 (= tp!1149596 (and (inv!53854 (left!31074 (left!31074 (left!31074 (c!651315 v!6347))))) e!2327722))))

(assert (= (and b!3762369 ((_ is Node!12299) (left!31074 (left!31074 (left!31074 (c!651315 v!6347)))))) b!3763780))

(assert (= b!3763781 b!3763782))

(assert (= (and b!3762369 ((_ is Leaf!19075) (left!31074 (left!31074 (left!31074 (c!651315 v!6347)))))) b!3763781))

(declare-fun m!4259335 () Bool)

(assert (=> b!3763780 m!4259335))

(declare-fun m!4259337 () Bool)

(assert (=> b!3763780 m!4259337))

(declare-fun m!4259339 () Bool)

(assert (=> b!3763781 m!4259339))

(assert (=> b!3762369 m!4256871))

(declare-fun tp!1149838 () Bool)

(declare-fun e!2327724 () Bool)

(declare-fun tp!1149837 () Bool)

(declare-fun b!3763783 () Bool)

(assert (=> b!3763783 (= e!2327724 (and (inv!53854 (left!31074 (right!31404 (left!31074 (left!31074 (c!651315 v!6347)))))) tp!1149837 (inv!53854 (right!31404 (right!31404 (left!31074 (left!31074 (c!651315 v!6347)))))) tp!1149838))))

(declare-fun b!3763785 () Bool)

(declare-fun e!2327725 () Bool)

(declare-fun tp!1149836 () Bool)

(assert (=> b!3763785 (= e!2327725 tp!1149836)))

(declare-fun b!3763784 () Bool)

(assert (=> b!3763784 (= e!2327724 (and (inv!53863 (xs!15505 (right!31404 (left!31074 (left!31074 (c!651315 v!6347)))))) e!2327725))))

(assert (=> b!3762369 (= tp!1149597 (and (inv!53854 (right!31404 (left!31074 (left!31074 (c!651315 v!6347))))) e!2327724))))

(assert (= (and b!3762369 ((_ is Node!12299) (right!31404 (left!31074 (left!31074 (c!651315 v!6347)))))) b!3763783))

(assert (= b!3763784 b!3763785))

(assert (= (and b!3762369 ((_ is Leaf!19075) (right!31404 (left!31074 (left!31074 (c!651315 v!6347)))))) b!3763784))

(declare-fun m!4259341 () Bool)

(assert (=> b!3763783 m!4259341))

(declare-fun m!4259343 () Bool)

(assert (=> b!3763783 m!4259343))

(declare-fun m!4259345 () Bool)

(assert (=> b!3763784 m!4259345))

(assert (=> b!3762369 m!4256873))

(declare-fun b!3763786 () Bool)

(declare-fun e!2327726 () Bool)

(declare-fun tp!1149839 () Bool)

(assert (=> b!3763786 (= e!2327726 (and tp_is_empty!19125 tp!1149839))))

(assert (=> b!3762353 (= tp!1149581 e!2327726)))

(assert (= (and b!3762353 ((_ is Cons!40139) (innerList!12358 (xs!15504 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))))) b!3763786))

(declare-fun b!3763790 () Bool)

(declare-fun b_free!100785 () Bool)

(declare-fun b_next!101489 () Bool)

(assert (=> b!3763790 (= b_free!100785 (not b_next!101489))))

(declare-fun tp!1149841 () Bool)

(declare-fun b_and!279571 () Bool)

(assert (=> b!3763790 (= tp!1149841 b_and!279571)))

(declare-fun b_free!100787 () Bool)

(declare-fun b_next!101491 () Bool)

(assert (=> b!3763790 (= b_free!100787 (not b_next!101491))))

(declare-fun t!304124 () Bool)

(declare-fun tb!215441 () Bool)

(assert (=> (and b!3763790 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) t!304124) tb!215441))

(declare-fun result!263094 () Bool)

(assert (= result!263094 result!262906))

(assert (=> b!3762056 t!304124))

(declare-fun t!304126 () Bool)

(declare-fun tb!215443 () Bool)

(assert (=> (and b!3763790 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) t!304126) tb!215443))

(declare-fun result!263096 () Bool)

(assert (= result!263096 result!262954))

(assert (=> b!3762764 t!304126))

(declare-fun tb!215445 () Bool)

(declare-fun t!304128 () Bool)

(assert (=> (and b!3763790 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052)))))) t!304128) tb!215445))

(declare-fun result!263098 () Bool)

(assert (= result!263098 result!262908))

(assert (=> d!1099040 t!304128))

(declare-fun t!304130 () Bool)

(declare-fun tb!215447 () Bool)

(assert (=> (and b!3763790 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) t!304130) tb!215447))

(declare-fun result!263100 () Bool)

(assert (= result!263100 result!263002))

(assert (=> b!3763627 t!304130))

(declare-fun tb!215449 () Bool)

(declare-fun t!304132 () Bool)

(assert (=> (and b!3763790 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 lt!1302052))))))) t!304132) tb!215449))

(declare-fun result!263102 () Bool)

(assert (= result!263102 result!262962))

(assert (=> d!1099388 t!304132))

(declare-fun t!304134 () Bool)

(declare-fun tb!215451 () Bool)

(assert (=> (and b!3763790 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052))))) t!304134) tb!215451))

(declare-fun result!263104 () Bool)

(assert (= result!263104 result!262902))

(assert (=> d!1098798 t!304134))

(declare-fun t!304136 () Bool)

(declare-fun tb!215453 () Bool)

(assert (=> (and b!3763790 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) t!304136) tb!215453))

(declare-fun result!263106 () Bool)

(assert (= result!263106 result!262994))

(assert (=> b!3763618 t!304136))

(declare-fun b_and!279573 () Bool)

(declare-fun tp!1149843 () Bool)

(assert (=> b!3763790 (= tp!1149843 (and (=> t!304124 result!263094) (=> t!304128 result!263098) (=> t!304134 result!263104) (=> t!304132 result!263102) (=> t!304126 result!263096) (=> t!304136 result!263106) (=> t!304130 result!263100) b_and!279573))))

(declare-fun e!2327730 () Bool)

(assert (=> b!3762400 (= tp!1149617 e!2327730)))

(declare-fun e!2327729 () Bool)

(declare-fun b!3763787 () Bool)

(declare-fun tp!1149840 () Bool)

(assert (=> b!3763787 (= e!2327730 (and (inv!53867 (h!45561 (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) e!2327729 tp!1149840))))

(declare-fun b!3763788 () Bool)

(declare-fun tp!1149842 () Bool)

(declare-fun e!2327727 () Bool)

(assert (=> b!3763788 (= e!2327729 (and (inv!21 (value!196053 (h!45561 (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) e!2327727 tp!1149842))))

(declare-fun e!2327728 () Bool)

(assert (=> b!3763790 (= e!2327728 (and tp!1149841 tp!1149843))))

(declare-fun b!3763789 () Bool)

(declare-fun tp!1149844 () Bool)

(assert (=> b!3763789 (= e!2327727 (and tp!1149844 (inv!53846 (tag!7016 (rule!8920 (h!45561 (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) (inv!53868 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) e!2327728))))

(assert (= b!3763789 b!3763790))

(assert (= b!3763788 b!3763789))

(assert (= b!3763787 b!3763788))

(assert (= (and b!3762400 ((_ is Cons!40141) (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) b!3763787))

(declare-fun m!4259347 () Bool)

(assert (=> b!3763787 m!4259347))

(declare-fun m!4259349 () Bool)

(assert (=> b!3763788 m!4259349))

(declare-fun m!4259351 () Bool)

(assert (=> b!3763789 m!4259351))

(declare-fun m!4259353 () Bool)

(assert (=> b!3763789 m!4259353))

(declare-fun e!2327734 () Bool)

(declare-fun tp!1149847 () Bool)

(declare-fun b!3763791 () Bool)

(declare-fun tp!1149845 () Bool)

(assert (=> b!3763791 (= e!2327734 (and (inv!53851 (left!31073 (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))) tp!1149847 (inv!53851 (right!31403 (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))) tp!1149845))))

(declare-fun b!3763793 () Bool)

(declare-fun e!2327733 () Bool)

(declare-fun tp!1149846 () Bool)

(assert (=> b!3763793 (= e!2327733 tp!1149846)))

(declare-fun b!3763792 () Bool)

(assert (=> b!3763792 (= e!2327734 (and (inv!53865 (xs!15504 (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))) e!2327733))))

(assert (=> b!3762351 (= tp!1149582 (and (inv!53851 (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))) e!2327734))))

(assert (= (and b!3762351 ((_ is Node!12298) (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))) b!3763791))

(assert (= b!3763792 b!3763793))

(assert (= (and b!3762351 ((_ is Leaf!19074) (left!31073 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))) b!3763792))

(declare-fun m!4259355 () Bool)

(assert (=> b!3763791 m!4259355))

(declare-fun m!4259357 () Bool)

(assert (=> b!3763791 m!4259357))

(declare-fun m!4259359 () Bool)

(assert (=> b!3763792 m!4259359))

(assert (=> b!3762351 m!4256845))

(declare-fun tp!1149848 () Bool)

(declare-fun b!3763794 () Bool)

(declare-fun tp!1149850 () Bool)

(declare-fun e!2327736 () Bool)

(assert (=> b!3763794 (= e!2327736 (and (inv!53851 (left!31073 (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))) tp!1149850 (inv!53851 (right!31403 (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))) tp!1149848))))

(declare-fun b!3763796 () Bool)

(declare-fun e!2327735 () Bool)

(declare-fun tp!1149849 () Bool)

(assert (=> b!3763796 (= e!2327735 tp!1149849)))

(declare-fun b!3763795 () Bool)

(assert (=> b!3763795 (= e!2327736 (and (inv!53865 (xs!15504 (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))) e!2327735))))

(assert (=> b!3762351 (= tp!1149580 (and (inv!53851 (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052)))))) e!2327736))))

(assert (= (and b!3762351 ((_ is Node!12298) (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))) b!3763794))

(assert (= b!3763795 b!3763796))

(assert (= (and b!3762351 ((_ is Leaf!19074) (right!31403 (c!651313 (dynLambda!17337 (toChars!8371 (transformation!6156 (rule!8920 (h!45561 lt!1302052)))) (value!196053 (h!45561 lt!1302052))))))) b!3763795))

(declare-fun m!4259361 () Bool)

(assert (=> b!3763794 m!4259361))

(declare-fun m!4259363 () Bool)

(assert (=> b!3763794 m!4259363))

(declare-fun m!4259365 () Bool)

(assert (=> b!3763795 m!4259365))

(assert (=> b!3762351 m!4256847))

(declare-fun b_lambda!110429 () Bool)

(assert (= b_lambda!110401 (or (and b!3763790 b_free!100787 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))))) (and b!3763723 b_free!100779 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))))) (and b!3763760 b_free!100783 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))))) (and b!3763675 b_free!100763 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))))) (and b!3761985 b_free!100735 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))))) (and b!3763719 b_free!100775 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))))) (and b!3763700 b_free!100771 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))))) (and b!3763690 b_free!100767 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))))) (and b!3762367 b_free!100739 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))))) (and b!3762403 b_free!100743 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))))) (and b!3762408 b_free!100747 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 lt!1302052))))))) b_lambda!110429)))

(declare-fun b_lambda!110431 () Bool)

(assert (= b_lambda!110425 (or (and b!3763719 b_free!100775 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))))) (and b!3763700 b_free!100771 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))))) (and b!3761985 b_free!100735 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))))) (and b!3763790 b_free!100787 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))))) (and b!3762367 b_free!100739) (and b!3763690 b_free!100767 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))))) (and b!3762408 b_free!100747 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))))) (and b!3763675 b_free!100763 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))))) (and b!3763760 b_free!100783 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))))) (and b!3762403 b_free!100743 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))))) (and b!3763723 b_free!100779 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))))) b_lambda!110431)))

(declare-fun b_lambda!110433 () Bool)

(assert (= b_lambda!110427 (or (and b!3762367 b_free!100739 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))))) (and b!3763719 b_free!100775 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))))) (and b!3763675 b_free!100763 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))))) (and b!3763760 b_free!100783 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))))) (and b!3763700 b_free!100771 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))))) (and b!3762408 b_free!100747) (and b!3763790 b_free!100787 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))))) (and b!3761985 b_free!100735 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))))) (and b!3763723 b_free!100779 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))))) (and b!3763690 b_free!100767 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))))) (and b!3762403 b_free!100743 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))))) b_lambda!110433)))

(declare-fun b_lambda!110435 () Bool)

(assert (= b_lambda!110415 (or (and b!3763723 b_free!100779 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))) (and b!3763760 b_free!100783 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))) (and b!3763690 b_free!100767 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))) (and b!3763790 b_free!100787 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))) (and b!3763719 b_free!100775 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))) (and b!3762403 b_free!100743) (and b!3762367 b_free!100739 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))) (and b!3763700 b_free!100771 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (left!31074 (right!31404 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))) (and b!3763675 b_free!100763 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (left!31074 (c!651315 v!6347))))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))) (and b!3762408 b_free!100747 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (right!31404 (c!651315 v!6347)))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))) (and b!3761985 b_free!100735 (= (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (innerList!12359 (xs!15505 (c!651315 v!6347))))))) (toChars!8371 (transformation!6156 (rule!8920 (h!45561 (t!303914 (innerList!12359 (xs!15505 (c!651315 v!6347)))))))))) b_lambda!110435)))

(check-sat (not b!3763766) (not b_next!101469) (not b!3763696) (not b!3763647) (not b!3762972) (not b!3762813) (not b!3763374) (not b!3762930) (not b!3763663) (not b!3762710) (not b!3763510) (not d!1099414) (not d!1099406) (not b!3763717) (not b!3763788) (not b!3762974) (not b!3762876) (not b!3763684) b_and!279553 (not b!3763704) (not b!3762893) (not d!1100152) (not b!3763751) (not b_next!101451) (not b_next!101481) (not b!3763420) (not b!3762801) (not b_lambda!110429) (not d!1100052) (not b!3762777) (not b!3762372) (not b!3762792) (not b!3763665) (not b!3762768) (not b!3763793) (not d!1100120) (not b!3762058) (not b!3763566) (not b!3763636) (not b!3763576) (not b!3762931) (not d!1100134) (not b!3763535) (not b!3763514) (not b!3762833) (not b!3763385) (not b!3763699) (not b!3763738) (not b!3763757) (not d!1100202) (not b!3763671) (not b!3763446) (not b!3762958) (not b!3763629) (not b!3762823) (not b!3763493) (not b!3762892) (not d!1099298) (not b!3763681) (not b!3763571) (not b!3762730) (not b!3762750) (not b!3763622) (not b!3763591) (not b!3762786) (not d!1099470) b_and!279561 (not b!3763605) (not b!3763404) (not b_lambda!110435) (not d!1099304) (not b!3763481) (not b!3763720) (not b!3763401) (not b!3763692) (not d!1100100) (not b!3763787) (not b!3763729) (not b!3763772) (not b!3762674) (not b!3762757) (not b!3763461) (not b!3762858) (not b!3763543) (not b!3763761) (not b!3762886) (not b!3763632) (not b!3763624) (not b!3762894) (not b!3762904) (not b!3763426) (not tb!215309) (not b!3763784) (not b!3762790) (not b!3763518) (not b!3762755) (not d!1099386) (not b!3763597) (not b_next!101441) (not b!3763714) (not b!3762850) (not b!3762808) (not d!1099398) (not b!3763384) (not d!1100188) (not d!1100014) (not b!3763791) (not d!1100000) (not b!3763466) (not b!3763425) (not d!1099528) (not b!3763484) (not b!3763651) (not b!3763658) (not b!3762718) (not b!3763697) (not d!1099946) (not d!1099306) (not b!3763564) (not d!1100078) (not b!3762714) (not b!3762752) (not b!3762684) (not d!1099444) (not b!3763437) (not b!3763524) (not b!3763516) (not b!3763676) (not b!3763634) (not b!3762971) (not d!1099422) (not b!3763627) (not b!3763531) (not b!3762772) (not b!3762687) (not b!3763721) (not b!3763600) (not b!3763409) (not b!3762351) (not b!3763593) (not b!3762899) (not b!3762208) b_and!279539 (not b!3763452) (not b!3763792) (not b_next!101489) (not d!1099510) (not b!3763706) (not b!3762719) (not b!3763456) (not d!1100160) (not b!3763416) (not d!1099454) (not b!3763682) (not d!1099988) (not b!3763771) (not b!3762708) (not b!3763694) (not b!3763412) (not b!3763411) (not b!3763488) (not d!1100034) (not d!1099328) (not d!1099402) (not b!3763688) (not d!1099496) (not b!3763387) (not d!1100022) (not b!3763695) (not b!3762927) (not b!3763689) (not b!3763613) (not b!3763744) (not b!3762348) (not b!3762943) (not b!3763753) (not b!3763619) (not d!1100132) (not b!3763782) (not b!3762928) (not b!3762891) (not d!1100086) (not b_next!101487) (not d!1100154) (not b!3763435) (not b!3762874) (not d!1099374) (not b!3762773) (not b!3763734) (not b!3763649) (not tb!215301) (not d!1099344) (not b!3763672) (not d!1099392) (not b!3762781) (not b!3762744) (not b!3763756) (not b!3762870) (not b!3762816) (not b!3763777) (not b!3762716) (not b!3763770) (not d!1099394) (not b!3762731) (not d!1099516) (not b!3763732) b_and!279465 (not d!1099408) (not b!3763432) (not b!3762785) (not b!3762967) (not b!3762812) (not b!3763396) (not b!3762696) (not b!3763755) (not b_next!101447) (not d!1100050) (not b!3763528) (not b!3762898) (not b!3762704) b_and!279569 (not d!1099326) (not b!3762890) (not d!1099350) (not b!3763526) (not b!3763693) (not d!1100158) (not b!3763641) (not b!3763673) (not b!3763785) (not b!3762680) (not bm!275425) (not b!3763749) (not b!3763769) (not b_next!101473) (not b!3763709) (not b!3763534) (not b!3762807) (not b!3763578) (not b!3762794) (not b!3762847) (not b!3762705) (not b!3762970) b_and!279565 (not d!1100110) (not b!3763388) (not b!3763586) (not b!3763577) (not d!1099974) (not d!1099360) (not b!3763669) (not b!3763583) b_and!279545 (not b!3762855) (not b!3763685) (not b!3762969) (not b!3763730) (not b!3763474) (not b!3762836) (not b!3763389) (not b!3762756) (not b!3762864) (not b!3763763) b_and!279563 (not tb!215341) (not d!1100058) (not b!3763705) (not b!3762690) (not d!1099934) (not b!3763415) (not d!1099578) (not b!3763443) (not b!3762825) (not b!3763522) (not b!3762840) (not b!3763737) (not b!3763561) (not b!3762765) (not b!3763607) (not b!3762926) (not d!1099396) (not b!3763489) (not b!3762851) (not b!3763725) (not b!3763746) (not b_next!101471) (not b!3763400) (not b_next!101445) (not b!3763780) (not b!3762734) (not b!3763794) tp_is_empty!19125 b_and!279549 (not b!3763707) (not b!3763765) (not b!3763786) (not b!3762688) (not b!3763530) (not d!1100130) (not b!3763747) (not d!1100204) (not b!3763473) (not b!3762925) (not b!3763740) (not b!3763453) (not b!3763631) (not b!3763439) (not b!3763666) (not b!3763758) (not b!3763781) (not b!3763519) (not b!3763667) (not b!3762723) (not b!3763637) (not b!3763398) (not b!3763736) (not b!3763713) (not b!3763677) (not b!3763383) (not d!1099388) (not b!3763779) (not b!3763563) (not b!3763553) (not d!1100196) (not d!1099410) (not b!3762736) (not b!3763391) (not d!1100020) (not b_lambda!110431) (not d!1100122) (not b_next!101475) b_and!279473 (not d!1099494) (not b!3762778) (not b!3763368) (not b!3763450) (not d!1099570) (not b!3763562) (not b!3763477) (not b!3762920) (not b!3763739) (not b!3763589) (not d!1100206) (not b!3763419) (not d!1100016) (not d!1100146) (not b!3763615) (not b!3762805) (not b_next!101439) (not b!3763661) (not b!3763610) (not b!3762760) (not b!3762872) (not b!3763408) (not d!1099518) (not b!3763626) (not b!3763795) (not d!1099514) (not b!3763502) (not b_next!101477) (not b!3763657) (not b!3762879) (not b!3763458) (not b!3762938) (not b!3762827) b_and!279551 (not b_lambda!110433) (not b!3763778) (not d!1100198) (not b!3763540) (not d!1099962) (not b!3763479) (not b!3763618) (not d!1100112) (not b!3763469) (not b_next!101449) (not b_next!101443) (not b!3763722) (not b!3763441) (not b!3763370) (not b!3763602) (not b!3762878) (not b!3762978) (not b!3763471) (not d!1099466) (not b!3762848) (not b!3763639) (not b!3763372) (not b!3762728) (not b!3762675) (not d!1099380) (not b!3762357) (not b!3763796) (not b!3763494) (not d!1099448) (not b!3763551) (not b!3762859) (not b!3762354) (not b!3762977) (not b!3762748) (not b!3763428) (not b!3762902) b_and!279573 (not b!3763545) b_and!279567 (not d!1099980) (not b!3763679) (not b!3763581) (not b!3762775) (not b!3762888) (not b!3763724) (not b!3762693) (not b!3762961) (not b!3763678) (not b_next!101465) (not b!3762819) (not b!3763500) (not b!3762866) (not b!3762944) (not b!3763538) (not b!3762685) (not b!3762692) (not d!1100002) (not b!3762906) (not b!3762763) (not b!3763429) (not b!3762960) (not b_lambda!110405) (not b!3762896) (not b!3763497) (not b!3762821) (not b_next!101491) (not d!1099954) (not b!3763587) (not b!3763783) (not b!3763715) b_and!279571 (not b_next!101485) (not b!3763635) (not b!3763674) (not b!3763718) (not b!3763701) (not b!3763537) b_and!279541 (not b!3763633) (not b!3762711) (not b!3762369) (not b!3763608) (not b!3763547) (not d!1099958) (not b!3762740) (not b!3763575) (not b!3763559) (not b!3763507) (not b!3762713) (not b!3763775) (not b!3763460) (not b!3763505) (not b!3762835) (not b!3762952) (not b!3763572) (not d!1100170) b_and!279543 (not b!3763727) (not b_lambda!110417) (not b!3763423) (not tb!215349) (not b!3762800) (not b!3762766) (not b!3762883) (not d!1099314) (not b!3763598) (not b!3763698) (not d!1099400) (not b!3762929) (not b!3763503) (not b!3762409) b_and!279559 (not b_next!101467) (not b!3763683) (not b!3763750) (not b!3763560) (not b_next!101437) (not b!3763773) (not b!3762683) (not b!3763449) (not b!3762742) (not b!3763616) (not d!1099512) (not b!3763680) (not b!3763670) b_and!279547 (not b!3763455) (not b!3762745) (not b!3763687) (not b!3763556) (not b!3763716) (not b!3763468) (not b!3763378) (not b!3762770) (not d!1100090) (not b!3762753) (not b!3763703) (not b!3763711) (not d!1099976) (not b!3763603) (not b!3763702) (not b!3762845) (not b!3763521) (not b!3763584) (not b!3763495) (not b!3763483) (not b!3763768) (not b!3763492) (not b!3763386) (not b!3763645) (not b!3763733) (not b!3763558) (not b!3763762) (not b!3762948) (not b!3763595) (not b!3763754) (not b!3763548) (not b!3763406) (not b!3763710) (not b_next!101479) (not b!3763620) (not b!3762758) (not b!3763728) (not b!3763464) (not d!1099424) (not b!3763567) (not b!3762839) (not d!1100030) (not b!3762976) (not b!3762975) b_and!279455 (not b!3762831) (not b_lambda!110407) (not b!3762345) (not b!3763508) (not b!3763748) (not b!3763366) (not b!3763643) (not b!3762724) (not d!1099468) (not b!3762727) b_and!279555 (not b!3762803) (not b!3763776) (not d!1099378) (not b!3762968) (not d!1099390) (not b!3762679) (not d!1099338) (not b!3763686) (not b!3762700) (not b!3763512) (not b!3762754) (not d!1100096) (not b!3762738) (not b!3762973) (not b!3762702) (not b!3763745) (not b!3763393) (not b!3762889) (not b!3763774) (not b_next!101483) (not d!1099948) (not b!3762817) b_and!279469 (not b!3762789) b_and!279557 (not d!1100042) (not d!1099992) (not b!3763759) (not b!3762782) (not b!3763533) (not b!3763741) (not b!3762882) (not b!3763767) (not b!3762843) (not b!3763691) (not b!3762698) (not b!3762764) (not d!1099972) (not b!3762829) (not b!3763742) (not b!3762707) (not b!3762954) (not b!3763498) (not b!3763789) (not b!3763628) (not b!3763536) (not b!3762797) (not b!3762412) (not b!3763743))
(check-sat b_and!279561 (not b_next!101441) b_and!279539 (not b_next!101489) (not b_next!101487) b_and!279465 (not b_next!101473) b_and!279563 (not b_next!101475) (not b_next!101477) b_and!279541 (not b_next!101479) b_and!279557 (not b_next!101469) b_and!279553 (not b_next!101451) (not b_next!101481) b_and!279569 (not b_next!101447) b_and!279545 b_and!279565 b_and!279549 (not b_next!101471) (not b_next!101445) b_and!279473 (not b_next!101439) b_and!279551 (not b_next!101449) (not b_next!101443) b_and!279573 b_and!279567 (not b_next!101465) (not b_next!101491) b_and!279571 (not b_next!101485) b_and!279543 b_and!279559 (not b_next!101467) (not b_next!101437) b_and!279547 b_and!279455 b_and!279555 b_and!279469 (not b_next!101483))
