; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!94780 () Bool)

(assert start!94780)

(declare-fun bs!259499 () Bool)

(declare-fun b!1101704 () Bool)

(assert (= bs!259499 (and b!1101704 start!94780)))

(declare-fun lambda!43430 () Int)

(declare-fun lambda!43429 () Int)

(assert (=> bs!259499 (not (= lambda!43430 lambda!43429))))

(declare-fun b!1101712 () Bool)

(declare-fun e!697801 () Bool)

(assert (=> b!1101712 (= e!697801 true)))

(declare-fun b!1101711 () Bool)

(declare-fun e!697800 () Bool)

(assert (=> b!1101711 (= e!697800 e!697801)))

(assert (=> b!1101704 e!697800))

(assert (= b!1101711 b!1101712))

(assert (= b!1101704 b!1101711))

(declare-fun lambda!43431 () Int)

(assert (=> bs!259499 (not (= lambda!43431 lambda!43429))))

(assert (=> b!1101704 (not (= lambda!43431 lambda!43430))))

(declare-fun b!1101714 () Bool)

(declare-fun e!697803 () Bool)

(assert (=> b!1101714 (= e!697803 true)))

(declare-fun b!1101713 () Bool)

(declare-fun e!697802 () Bool)

(assert (=> b!1101713 (= e!697802 e!697803)))

(assert (=> b!1101704 e!697802))

(assert (= b!1101713 b!1101714))

(assert (= b!1101704 b!1101713))

(declare-fun lambda!43432 () Int)

(assert (=> bs!259499 (not (= lambda!43432 lambda!43429))))

(assert (=> b!1101704 (not (= lambda!43432 lambda!43430))))

(assert (=> b!1101704 (not (= lambda!43432 lambda!43431))))

(declare-fun b!1101716 () Bool)

(declare-fun e!697805 () Bool)

(assert (=> b!1101716 (= e!697805 true)))

(declare-fun b!1101715 () Bool)

(declare-fun e!697804 () Bool)

(assert (=> b!1101715 (= e!697804 e!697805)))

(assert (=> b!1101704 e!697804))

(assert (= b!1101715 b!1101716))

(assert (= b!1101704 b!1101715))

(declare-fun b!1101690 () Bool)

(declare-fun e!697785 () Bool)

(assert (=> b!1101690 (= e!697785 false)))

(declare-datatypes ((List!10659 0))(
  ( (Nil!10643) (Cons!10643 (h!16044 (_ BitVec 16)) (t!104065 List!10659)) )
))
(declare-datatypes ((TokenValue!1895 0))(
  ( (FloatLiteralValue!3790 (text!13710 List!10659)) (TokenValueExt!1894 (__x!7477 Int)) (Broken!9475 (value!60055 List!10659)) (Object!1910) (End!1895) (Def!1895) (Underscore!1895) (Match!1895) (Else!1895) (Error!1895) (Case!1895) (If!1895) (Extends!1895) (Abstract!1895) (Class!1895) (Val!1895) (DelimiterValue!3790 (del!1955 List!10659)) (KeywordValue!1901 (value!60056 List!10659)) (CommentValue!3790 (value!60057 List!10659)) (WhitespaceValue!3790 (value!60058 List!10659)) (IndentationValue!1895 (value!60059 List!10659)) (String!13046) (Int32!1895) (Broken!9476 (value!60060 List!10659)) (Boolean!1896) (Unit!16241) (OperatorValue!1898 (op!1955 List!10659)) (IdentifierValue!3790 (value!60061 List!10659)) (IdentifierValue!3791 (value!60062 List!10659)) (WhitespaceValue!3791 (value!60063 List!10659)) (True!3790) (False!3790) (Broken!9477 (value!60064 List!10659)) (Broken!9478 (value!60065 List!10659)) (True!3791) (RightBrace!1895) (RightBracket!1895) (Colon!1895) (Null!1895) (Comma!1895) (LeftBracket!1895) (False!3791) (LeftBrace!1895) (ImaginaryLiteralValue!1895 (text!13711 List!10659)) (StringLiteralValue!5685 (value!60066 List!10659)) (EOFValue!1895 (value!60067 List!10659)) (IdentValue!1895 (value!60068 List!10659)) (DelimiterValue!3791 (value!60069 List!10659)) (DedentValue!1895 (value!60070 List!10659)) (NewLineValue!1895 (value!60071 List!10659)) (IntegerValue!5685 (value!60072 (_ BitVec 32)) (text!13712 List!10659)) (IntegerValue!5686 (value!60073 Int) (text!13713 List!10659)) (Times!1895) (Or!1895) (Equal!1895) (Minus!1895) (Broken!9479 (value!60074 List!10659)) (And!1895) (Div!1895) (LessEqual!1895) (Mod!1895) (Concat!4993) (Not!1895) (Plus!1895) (SpaceValue!1895 (value!60075 List!10659)) (IntegerValue!5687 (value!60076 Int) (text!13714 List!10659)) (StringLiteralValue!5686 (text!13715 List!10659)) (FloatLiteralValue!3791 (text!13716 List!10659)) (BytesLiteralValue!1895 (value!60077 List!10659)) (CommentValue!3791 (value!60078 List!10659)) (StringLiteralValue!5687 (value!60079 List!10659)) (ErrorTokenValue!1895 (msg!1956 List!10659)) )
))
(declare-datatypes ((Regex!3098 0))(
  ( (ElementMatch!3098 (c!186999 (_ BitVec 16))) (Concat!4994 (regOne!6708 Regex!3098) (regTwo!6708 Regex!3098)) (EmptyExpr!3098) (Star!3098 (reg!3427 Regex!3098)) (EmptyLang!3098) (Union!3098 (regOne!6709 Regex!3098) (regTwo!6709 Regex!3098)) )
))
(declare-datatypes ((String!13047 0))(
  ( (String!13048 (value!60080 String)) )
))
(declare-datatypes ((IArray!6633 0))(
  ( (IArray!6634 (innerList!3374 List!10659)) )
))
(declare-datatypes ((Conc!3314 0))(
  ( (Node!3314 (left!9206 Conc!3314) (right!9536 Conc!3314) (csize!6858 Int) (cheight!3525 Int)) (Leaf!5235 (xs!6007 IArray!6633) (csize!6859 Int)) (Empty!3314) )
))
(declare-datatypes ((BalanceConc!6642 0))(
  ( (BalanceConc!6643 (c!187000 Conc!3314)) )
))
(declare-datatypes ((TokenValueInjection!3490 0))(
  ( (TokenValueInjection!3491 (toValue!2906 Int) (toChars!2765 Int)) )
))
(declare-datatypes ((Rule!3458 0))(
  ( (Rule!3459 (regex!1829 Regex!3098) (tag!2091 String!13047) (isSeparator!1829 Bool) (transformation!1829 TokenValueInjection!3490)) )
))
(declare-datatypes ((Token!3324 0))(
  ( (Token!3325 (value!60081 TokenValue!1895) (rule!3252 Rule!3458) (size!8263 Int) (originalCharacters!2385 List!10659)) )
))
(declare-datatypes ((List!10660 0))(
  ( (Nil!10644) (Cons!10644 (h!16045 Token!3324) (t!104066 List!10660)) )
))
(declare-datatypes ((IArray!6635 0))(
  ( (IArray!6636 (innerList!3375 List!10660)) )
))
(declare-datatypes ((Conc!3315 0))(
  ( (Node!3315 (left!9207 Conc!3315) (right!9537 Conc!3315) (csize!6860 Int) (cheight!3526 Int)) (Leaf!5236 (xs!6008 IArray!6635) (csize!6861 Int)) (Empty!3315) )
))
(declare-datatypes ((List!10661 0))(
  ( (Nil!10645) (Cons!10645 (h!16046 Rule!3458) (t!104067 List!10661)) )
))
(declare-datatypes ((BalanceConc!6644 0))(
  ( (BalanceConc!6645 (c!187001 Conc!3315)) )
))
(declare-datatypes ((PrintableTokens!374 0))(
  ( (PrintableTokens!375 (rules!9116 List!10661) (tokens!1388 BalanceConc!6644)) )
))
(declare-datatypes ((tuple2!11784 0))(
  ( (tuple2!11785 (_1!6718 Int) (_2!6718 PrintableTokens!374)) )
))
(declare-datatypes ((List!10662 0))(
  ( (Nil!10646) (Cons!10646 (h!16047 tuple2!11784) (t!104068 List!10662)) )
))
(declare-fun lt!372305 () List!10662)

(declare-fun lt!372297 () tuple2!11784)

(declare-datatypes ((Unit!16242 0))(
  ( (Unit!16243) )
))
(declare-fun lt!372304 () Unit!16242)

(declare-fun forallContained!523 (List!10662 Int tuple2!11784) Unit!16242)

(assert (=> b!1101690 (= lt!372304 (forallContained!523 lt!372305 lambda!43432 lt!372297))))

(declare-fun res!488600 () Bool)

(declare-fun e!697795 () Bool)

(assert (=> start!94780 (=> (not res!488600) (not e!697795))))

(declare-datatypes ((IArray!6637 0))(
  ( (IArray!6638 (innerList!3376 List!10662)) )
))
(declare-datatypes ((Conc!3316 0))(
  ( (Node!3316 (left!9208 Conc!3316) (right!9538 Conc!3316) (csize!6862 Int) (cheight!3527 Int)) (Leaf!5237 (xs!6009 IArray!6637) (csize!6863 Int)) (Empty!3316) )
))
(declare-datatypes ((BalanceConc!6646 0))(
  ( (BalanceConc!6647 (c!187002 Conc!3316)) )
))
(declare-fun objs!8 () BalanceConc!6646)

(declare-fun forall!2463 (BalanceConc!6646 Int) Bool)

(assert (=> start!94780 (= res!488600 (forall!2463 objs!8 lambda!43429))))

(assert (=> start!94780 e!697795))

(declare-fun e!697791 () Bool)

(declare-fun inv!13684 (BalanceConc!6646) Bool)

(assert (=> start!94780 (and (inv!13684 objs!8) e!697791)))

(declare-fun b!1101691 () Bool)

(declare-fun e!697789 () Unit!16242)

(declare-fun Unit!16244 () Unit!16242)

(assert (=> b!1101691 (= e!697789 Unit!16244)))

(declare-fun b!1101692 () Bool)

(declare-fun e!697786 () Unit!16242)

(declare-fun err!2644 () Unit!16242)

(assert (=> b!1101692 (= e!697786 err!2644)))

(declare-fun lt!372294 () Unit!16242)

(declare-fun lt!372307 () BalanceConc!6646)

(declare-fun list!3837 (BalanceConc!6646) List!10662)

(assert (=> b!1101692 (= lt!372294 (forallContained!523 (list!3837 lt!372307) lambda!43430 lt!372297))))

(assert (=> b!1101692 true))

(declare-fun b!1101693 () Bool)

(declare-fun Unit!16245 () Unit!16242)

(assert (=> b!1101693 (= e!697786 Unit!16245)))

(declare-fun b!1101694 () Bool)

(declare-fun e!697792 () Unit!16242)

(declare-fun err!2643 () Unit!16242)

(assert (=> b!1101694 (= e!697792 err!2643)))

(declare-fun lt!372303 () Unit!16242)

(assert (=> b!1101694 (= lt!372303 (forallContained!523 (list!3837 objs!8) lambda!43430 lt!372297))))

(assert (=> b!1101694 true))

(declare-fun b!1101695 () Bool)

(declare-fun e!697787 () Bool)

(declare-fun e!697794 () Bool)

(assert (=> b!1101695 (= e!697787 (not e!697794))))

(declare-fun res!488596 () Bool)

(assert (=> b!1101695 (=> res!488596 e!697794)))

(declare-fun lt!372292 () Int)

(declare-fun size!8264 (BalanceConc!6646) Int)

(assert (=> b!1101695 (= res!488596 (>= (size!8264 lt!372307) lt!372292))))

(declare-fun e!697793 () Bool)

(assert (=> b!1101695 e!697793))

(declare-fun res!488598 () Bool)

(assert (=> b!1101695 (=> res!488598 e!697793)))

(declare-fun isEmpty!6694 (List!10662) Bool)

(assert (=> b!1101695 (= res!488598 (isEmpty!6694 lt!372305))))

(declare-fun lt!372300 () Unit!16242)

(declare-fun lemmaNotForallFilterShorter!56 (List!10662 Int) Unit!16242)

(assert (=> b!1101695 (= lt!372300 (lemmaNotForallFilterShorter!56 lt!372305 lambda!43430))))

(assert (=> b!1101695 (= lt!372305 (list!3837 objs!8))))

(declare-fun lt!372301 () Unit!16242)

(assert (=> b!1101695 (= lt!372301 e!697792)))

(declare-fun c!186997 () Bool)

(assert (=> b!1101695 (= c!186997 (forall!2463 objs!8 lambda!43430))))

(declare-fun b!1101696 () Bool)

(assert (=> b!1101696 (= e!697794 e!697785)))

(declare-fun res!488597 () Bool)

(assert (=> b!1101696 (=> res!488597 e!697785)))

(declare-fun lt!372306 () Bool)

(assert (=> b!1101696 (= res!488597 lt!372306)))

(declare-fun lt!372302 () Unit!16242)

(assert (=> b!1101696 (= lt!372302 e!697789)))

(declare-fun c!186996 () Bool)

(assert (=> b!1101696 (= c!186996 lt!372306)))

(declare-fun lt!372296 () BalanceConc!6646)

(declare-fun contains!1876 (BalanceConc!6646 tuple2!11784) Bool)

(assert (=> b!1101696 (= lt!372306 (contains!1876 lt!372296 lt!372297))))

(declare-fun b!1101697 () Bool)

(declare-fun e!697790 () Bool)

(assert (=> b!1101697 (= e!697790 e!697787)))

(declare-fun res!488601 () Bool)

(assert (=> b!1101697 (=> (not res!488601) (not e!697787))))

(declare-fun lt!372293 () Bool)

(assert (=> b!1101697 (= res!488601 (not lt!372293))))

(declare-fun lt!372295 () Unit!16242)

(assert (=> b!1101697 (= lt!372295 e!697786)))

(declare-fun c!186998 () Bool)

(assert (=> b!1101697 (= c!186998 lt!372293)))

(assert (=> b!1101697 (= lt!372293 (contains!1876 lt!372307 lt!372297))))

(declare-fun b!1101698 () Bool)

(declare-fun Unit!16246 () Unit!16242)

(assert (=> b!1101698 (= e!697792 Unit!16246)))

(declare-fun b!1101699 () Bool)

(declare-fun res!488599 () Bool)

(assert (=> b!1101699 (=> res!488599 e!697785)))

(assert (=> b!1101699 (= res!488599 (not (forall!2463 objs!8 lambda!43432)))))

(declare-fun b!1101700 () Bool)

(declare-fun err!2645 () Unit!16242)

(assert (=> b!1101700 (= e!697789 err!2645)))

(declare-fun lt!372298 () Unit!16242)

(assert (=> b!1101700 (= lt!372298 (forallContained!523 (list!3837 lt!372296) lambda!43432 lt!372297))))

(assert (=> b!1101700 true))

(declare-fun b!1101701 () Bool)

(declare-fun size!8265 (List!10662) Int)

(declare-fun filter!352 (List!10662 Int) List!10662)

(assert (=> b!1101701 (= e!697793 (< (size!8265 (filter!352 lt!372305 lambda!43430)) (size!8265 lt!372305)))))

(declare-fun b!1101702 () Bool)

(declare-fun e!697788 () Bool)

(assert (=> b!1101702 (= e!697795 e!697788)))

(declare-fun res!488602 () Bool)

(assert (=> b!1101702 (=> (not res!488602) (not e!697788))))

(assert (=> b!1101702 (= res!488602 (> lt!372292 1))))

(assert (=> b!1101702 (= lt!372292 (size!8264 objs!8))))

(declare-fun b!1101703 () Bool)

(declare-fun tp!327089 () Bool)

(declare-fun inv!13685 (Conc!3316) Bool)

(assert (=> b!1101703 (= e!697791 (and (inv!13685 (c!187002 objs!8)) tp!327089))))

(assert (=> b!1101704 (= e!697788 e!697790)))

(declare-fun res!488603 () Bool)

(assert (=> b!1101704 (=> (not res!488603) (not e!697790))))

(assert (=> b!1101704 (= res!488603 (contains!1876 objs!8 lt!372297))))

(declare-fun filter!353 (BalanceConc!6646 Int) BalanceConc!6646)

(assert (=> b!1101704 (= lt!372296 (filter!353 objs!8 lambda!43432))))

(declare-fun lt!372299 () BalanceConc!6646)

(assert (=> b!1101704 (= lt!372299 (filter!353 objs!8 lambda!43431))))

(assert (=> b!1101704 (= lt!372307 (filter!353 objs!8 lambda!43430))))

(declare-fun apply!2152 (BalanceConc!6646 Int) tuple2!11784)

(assert (=> b!1101704 (= lt!372297 (apply!2152 objs!8 (ite (>= lt!372292 0) (div lt!372292 2) (- (div (- lt!372292) 2)))))))

(assert (= (and start!94780 res!488600) b!1101702))

(assert (= (and b!1101702 res!488602) b!1101704))

(assert (= (and b!1101704 res!488603) b!1101697))

(assert (= (and b!1101697 c!186998) b!1101692))

(assert (= (and b!1101697 (not c!186998)) b!1101693))

(assert (= (and b!1101697 res!488601) b!1101695))

(assert (= (and b!1101695 c!186997) b!1101694))

(assert (= (and b!1101695 (not c!186997)) b!1101698))

(assert (= (and b!1101695 (not res!488598)) b!1101701))

(assert (= (and b!1101695 (not res!488596)) b!1101696))

(assert (= (and b!1101696 c!186996) b!1101700))

(assert (= (and b!1101696 (not c!186996)) b!1101691))

(assert (= (and b!1101696 (not res!488597)) b!1101699))

(assert (= (and b!1101699 (not res!488599)) b!1101690))

(assert (= start!94780 b!1101703))

(declare-fun m!1257627 () Bool)

(assert (=> b!1101694 m!1257627))

(assert (=> b!1101694 m!1257627))

(declare-fun m!1257629 () Bool)

(assert (=> b!1101694 m!1257629))

(declare-fun m!1257631 () Bool)

(assert (=> b!1101699 m!1257631))

(declare-fun m!1257633 () Bool)

(assert (=> b!1101703 m!1257633))

(declare-fun m!1257635 () Bool)

(assert (=> b!1101690 m!1257635))

(assert (=> b!1101695 m!1257627))

(declare-fun m!1257637 () Bool)

(assert (=> b!1101695 m!1257637))

(declare-fun m!1257639 () Bool)

(assert (=> b!1101695 m!1257639))

(declare-fun m!1257641 () Bool)

(assert (=> b!1101695 m!1257641))

(declare-fun m!1257643 () Bool)

(assert (=> b!1101695 m!1257643))

(declare-fun m!1257645 () Bool)

(assert (=> b!1101692 m!1257645))

(assert (=> b!1101692 m!1257645))

(declare-fun m!1257647 () Bool)

(assert (=> b!1101692 m!1257647))

(declare-fun m!1257649 () Bool)

(assert (=> b!1101697 m!1257649))

(declare-fun m!1257651 () Bool)

(assert (=> b!1101700 m!1257651))

(assert (=> b!1101700 m!1257651))

(declare-fun m!1257653 () Bool)

(assert (=> b!1101700 m!1257653))

(declare-fun m!1257655 () Bool)

(assert (=> b!1101702 m!1257655))

(declare-fun m!1257657 () Bool)

(assert (=> start!94780 m!1257657))

(declare-fun m!1257659 () Bool)

(assert (=> start!94780 m!1257659))

(declare-fun m!1257661 () Bool)

(assert (=> b!1101696 m!1257661))

(declare-fun m!1257663 () Bool)

(assert (=> b!1101701 m!1257663))

(assert (=> b!1101701 m!1257663))

(declare-fun m!1257665 () Bool)

(assert (=> b!1101701 m!1257665))

(declare-fun m!1257667 () Bool)

(assert (=> b!1101701 m!1257667))

(declare-fun m!1257669 () Bool)

(assert (=> b!1101704 m!1257669))

(declare-fun m!1257671 () Bool)

(assert (=> b!1101704 m!1257671))

(declare-fun m!1257673 () Bool)

(assert (=> b!1101704 m!1257673))

(declare-fun m!1257675 () Bool)

(assert (=> b!1101704 m!1257675))

(declare-fun m!1257677 () Bool)

(assert (=> b!1101704 m!1257677))

(push 1)

(assert (not b!1101692))

(assert (not b!1101695))

(assert (not b!1101714))

(assert (not b!1101716))

(assert (not b!1101700))

(assert (not b!1101702))

(assert (not start!94780))

(assert (not b!1101715))

(assert (not b!1101690))

(assert (not b!1101699))

(assert (not b!1101696))

(assert (not b!1101704))

(assert (not b!1101713))

(assert (not b!1101701))

(assert (not b!1101711))

(assert (not b!1101694))

(assert (not b!1101712))

(assert (not b!1101703))

(assert (not b!1101697))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!311585 () Bool)

(declare-fun lt!372360 () Bool)

(declare-fun contains!1878 (List!10662 tuple2!11784) Bool)

(assert (=> d!311585 (= lt!372360 (contains!1878 (list!3837 lt!372307) lt!372297))))

(declare-fun contains!1879 (Conc!3316 tuple2!11784) Bool)

(assert (=> d!311585 (= lt!372360 (contains!1879 (c!187002 lt!372307) lt!372297))))

(assert (=> d!311585 (= (contains!1876 lt!372307 lt!372297) lt!372360)))

(declare-fun bs!259501 () Bool)

(assert (= bs!259501 d!311585))

(assert (=> bs!259501 m!1257645))

(assert (=> bs!259501 m!1257645))

(declare-fun m!1257731 () Bool)

(assert (=> bs!259501 m!1257731))

(declare-fun m!1257733 () Bool)

(assert (=> bs!259501 m!1257733))

(assert (=> b!1101697 d!311585))

(declare-fun d!311587 () Bool)

(declare-fun dynLambda!4689 (Int tuple2!11784) Bool)

(assert (=> d!311587 (dynLambda!4689 lambda!43430 lt!372297)))

(declare-fun lt!372364 () Unit!16242)

(declare-fun choose!7102 (List!10662 Int tuple2!11784) Unit!16242)

(assert (=> d!311587 (= lt!372364 (choose!7102 (list!3837 objs!8) lambda!43430 lt!372297))))

(declare-fun e!697854 () Bool)

(assert (=> d!311587 e!697854))

(declare-fun res!488633 () Bool)

(assert (=> d!311587 (=> (not res!488633) (not e!697854))))

(declare-fun forall!2465 (List!10662 Int) Bool)

(assert (=> d!311587 (= res!488633 (forall!2465 (list!3837 objs!8) lambda!43430))))

(assert (=> d!311587 (= (forallContained!523 (list!3837 objs!8) lambda!43430 lt!372297) lt!372364)))

(declare-fun b!1101779 () Bool)

(assert (=> b!1101779 (= e!697854 (contains!1878 (list!3837 objs!8) lt!372297))))

(assert (= (and d!311587 res!488633) b!1101779))

(declare-fun b_lambda!32237 () Bool)

(assert (=> (not b_lambda!32237) (not d!311587)))

(declare-fun m!1257743 () Bool)

(assert (=> d!311587 m!1257743))

(assert (=> d!311587 m!1257627))

(declare-fun m!1257745 () Bool)

(assert (=> d!311587 m!1257745))

(assert (=> d!311587 m!1257627))

(declare-fun m!1257747 () Bool)

(assert (=> d!311587 m!1257747))

(assert (=> b!1101779 m!1257627))

(declare-fun m!1257749 () Bool)

(assert (=> b!1101779 m!1257749))

(assert (=> b!1101694 d!311587))

(declare-fun d!311591 () Bool)

(declare-fun list!3839 (Conc!3316) List!10662)

(assert (=> d!311591 (= (list!3837 objs!8) (list!3839 (c!187002 objs!8)))))

(declare-fun bs!259502 () Bool)

(assert (= bs!259502 d!311591))

(declare-fun m!1257751 () Bool)

(assert (=> bs!259502 m!1257751))

(assert (=> b!1101694 d!311591))

(declare-fun d!311593 () Bool)

(declare-fun e!697859 () Bool)

(assert (=> d!311593 e!697859))

(declare-fun res!488638 () Bool)

(assert (=> d!311593 (=> res!488638 e!697859)))

(assert (=> d!311593 (= res!488638 (isEmpty!6694 lt!372305))))

(declare-fun lt!372369 () Unit!16242)

(declare-fun choose!7103 (List!10662 Int) Unit!16242)

(assert (=> d!311593 (= lt!372369 (choose!7103 lt!372305 lambda!43430))))

(assert (=> d!311593 (not (forall!2465 lt!372305 lambda!43430))))

(assert (=> d!311593 (= (lemmaNotForallFilterShorter!56 lt!372305 lambda!43430) lt!372369)))

(declare-fun b!1101784 () Bool)

(assert (=> b!1101784 (= e!697859 (< (size!8265 (filter!352 lt!372305 lambda!43430)) (size!8265 lt!372305)))))

(assert (= (and d!311593 (not res!488638)) b!1101784))

(assert (=> d!311593 m!1257639))

(declare-fun m!1257773 () Bool)

(assert (=> d!311593 m!1257773))

(declare-fun m!1257775 () Bool)

(assert (=> d!311593 m!1257775))

(assert (=> b!1101784 m!1257663))

(assert (=> b!1101784 m!1257663))

(assert (=> b!1101784 m!1257665))

(assert (=> b!1101784 m!1257667))

(assert (=> b!1101695 d!311593))

(assert (=> b!1101695 d!311591))

(declare-fun d!311605 () Bool)

(assert (=> d!311605 (= (isEmpty!6694 lt!372305) (is-Nil!10646 lt!372305))))

(assert (=> b!1101695 d!311605))

(declare-fun d!311607 () Bool)

(declare-fun lt!372372 () Int)

(assert (=> d!311607 (= lt!372372 (size!8265 (list!3837 lt!372307)))))

(declare-fun size!8269 (Conc!3316) Int)

(assert (=> d!311607 (= lt!372372 (size!8269 (c!187002 lt!372307)))))

(assert (=> d!311607 (= (size!8264 lt!372307) lt!372372)))

(declare-fun bs!259506 () Bool)

(assert (= bs!259506 d!311607))

(assert (=> bs!259506 m!1257645))

(assert (=> bs!259506 m!1257645))

(declare-fun m!1257777 () Bool)

(assert (=> bs!259506 m!1257777))

(declare-fun m!1257779 () Bool)

(assert (=> bs!259506 m!1257779))

(assert (=> b!1101695 d!311607))

(declare-fun d!311611 () Bool)

(declare-fun lt!372375 () Bool)

(assert (=> d!311611 (= lt!372375 (forall!2465 (list!3837 objs!8) lambda!43430))))

(declare-fun forall!2466 (Conc!3316 Int) Bool)

(assert (=> d!311611 (= lt!372375 (forall!2466 (c!187002 objs!8) lambda!43430))))

(assert (=> d!311611 (= (forall!2463 objs!8 lambda!43430) lt!372375)))

(declare-fun bs!259507 () Bool)

(assert (= bs!259507 d!311611))

(assert (=> bs!259507 m!1257627))

(assert (=> bs!259507 m!1257627))

(assert (=> bs!259507 m!1257747))

(declare-fun m!1257781 () Bool)

(assert (=> bs!259507 m!1257781))

(assert (=> b!1101695 d!311611))

(declare-fun d!311613 () Bool)

(declare-fun lt!372376 () Bool)

(assert (=> d!311613 (= lt!372376 (contains!1878 (list!3837 lt!372296) lt!372297))))

(assert (=> d!311613 (= lt!372376 (contains!1879 (c!187002 lt!372296) lt!372297))))

(assert (=> d!311613 (= (contains!1876 lt!372296 lt!372297) lt!372376)))

(declare-fun bs!259508 () Bool)

(assert (= bs!259508 d!311613))

(assert (=> bs!259508 m!1257651))

(assert (=> bs!259508 m!1257651))

(declare-fun m!1257783 () Bool)

(assert (=> bs!259508 m!1257783))

(declare-fun m!1257785 () Bool)

(assert (=> bs!259508 m!1257785))

(assert (=> b!1101696 d!311613))

(declare-fun d!311615 () Bool)

(declare-fun lt!372377 () Int)

(assert (=> d!311615 (= lt!372377 (size!8265 (list!3837 objs!8)))))

(assert (=> d!311615 (= lt!372377 (size!8269 (c!187002 objs!8)))))

(assert (=> d!311615 (= (size!8264 objs!8) lt!372377)))

(declare-fun bs!259509 () Bool)

(assert (= bs!259509 d!311615))

(assert (=> bs!259509 m!1257627))

(assert (=> bs!259509 m!1257627))

(declare-fun m!1257787 () Bool)

(assert (=> bs!259509 m!1257787))

(declare-fun m!1257789 () Bool)

(assert (=> bs!259509 m!1257789))

(assert (=> b!1101702 d!311615))

(declare-fun d!311617 () Bool)

(assert (=> d!311617 (dynLambda!4689 lambda!43430 lt!372297)))

(declare-fun lt!372378 () Unit!16242)

(assert (=> d!311617 (= lt!372378 (choose!7102 (list!3837 lt!372307) lambda!43430 lt!372297))))

(declare-fun e!697860 () Bool)

(assert (=> d!311617 e!697860))

(declare-fun res!488639 () Bool)

(assert (=> d!311617 (=> (not res!488639) (not e!697860))))

(assert (=> d!311617 (= res!488639 (forall!2465 (list!3837 lt!372307) lambda!43430))))

(assert (=> d!311617 (= (forallContained!523 (list!3837 lt!372307) lambda!43430 lt!372297) lt!372378)))

(declare-fun b!1101785 () Bool)

(assert (=> b!1101785 (= e!697860 (contains!1878 (list!3837 lt!372307) lt!372297))))

(assert (= (and d!311617 res!488639) b!1101785))

(declare-fun b_lambda!32243 () Bool)

(assert (=> (not b_lambda!32243) (not d!311617)))

(assert (=> d!311617 m!1257743))

(assert (=> d!311617 m!1257645))

(declare-fun m!1257791 () Bool)

(assert (=> d!311617 m!1257791))

(assert (=> d!311617 m!1257645))

(declare-fun m!1257793 () Bool)

(assert (=> d!311617 m!1257793))

(assert (=> b!1101785 m!1257645))

(assert (=> b!1101785 m!1257731))

(assert (=> b!1101692 d!311617))

(declare-fun d!311619 () Bool)

(assert (=> d!311619 (= (list!3837 lt!372307) (list!3839 (c!187002 lt!372307)))))

(declare-fun bs!259510 () Bool)

(assert (= bs!259510 d!311619))

(declare-fun m!1257795 () Bool)

(assert (=> bs!259510 m!1257795))

(assert (=> b!1101692 d!311619))

(declare-fun d!311621 () Bool)

(declare-fun c!187018 () Bool)

(assert (=> d!311621 (= c!187018 (is-Node!3316 (c!187002 objs!8)))))

(declare-fun e!697868 () Bool)

(assert (=> d!311621 (= (inv!13685 (c!187002 objs!8)) e!697868)))

(declare-fun b!1101795 () Bool)

(declare-fun inv!13688 (Conc!3316) Bool)

(assert (=> b!1101795 (= e!697868 (inv!13688 (c!187002 objs!8)))))

(declare-fun b!1101796 () Bool)

(declare-fun e!697869 () Bool)

(assert (=> b!1101796 (= e!697868 e!697869)))

(declare-fun res!488645 () Bool)

(assert (=> b!1101796 (= res!488645 (not (is-Leaf!5237 (c!187002 objs!8))))))

(assert (=> b!1101796 (=> res!488645 e!697869)))

(declare-fun b!1101797 () Bool)

(declare-fun inv!13689 (Conc!3316) Bool)

(assert (=> b!1101797 (= e!697869 (inv!13689 (c!187002 objs!8)))))

(assert (= (and d!311621 c!187018) b!1101795))

(assert (= (and d!311621 (not c!187018)) b!1101796))

(assert (= (and b!1101796 (not res!488645)) b!1101797))

(declare-fun m!1257797 () Bool)

(assert (=> b!1101795 m!1257797))

(declare-fun m!1257799 () Bool)

(assert (=> b!1101797 m!1257799))

(assert (=> b!1101703 d!311621))

(declare-fun d!311623 () Bool)

(declare-fun lt!372387 () tuple2!11784)

(declare-fun apply!2154 (List!10662 Int) tuple2!11784)

(assert (=> d!311623 (= lt!372387 (apply!2154 (list!3837 objs!8) (ite (>= lt!372292 0) (div lt!372292 2) (- (div (- lt!372292) 2)))))))

(declare-fun apply!2155 (Conc!3316 Int) tuple2!11784)

(assert (=> d!311623 (= lt!372387 (apply!2155 (c!187002 objs!8) (ite (>= lt!372292 0) (div lt!372292 2) (- (div (- lt!372292) 2)))))))

(declare-fun e!697872 () Bool)

(assert (=> d!311623 e!697872))

(declare-fun res!488648 () Bool)

(assert (=> d!311623 (=> (not res!488648) (not e!697872))))

(assert (=> d!311623 (= res!488648 (<= 0 (ite (>= lt!372292 0) (div lt!372292 2) (- (div (- lt!372292) 2)))))))

(assert (=> d!311623 (= (apply!2152 objs!8 (ite (>= lt!372292 0) (div lt!372292 2) (- (div (- lt!372292) 2)))) lt!372387)))

(declare-fun b!1101800 () Bool)

(assert (=> b!1101800 (= e!697872 (< (ite (>= lt!372292 0) (div lt!372292 2) (- (div (- lt!372292) 2))) (size!8264 objs!8)))))

(assert (= (and d!311623 res!488648) b!1101800))

(assert (=> d!311623 m!1257627))

(assert (=> d!311623 m!1257627))

(declare-fun m!1257809 () Bool)

(assert (=> d!311623 m!1257809))

(declare-fun m!1257811 () Bool)

(assert (=> d!311623 m!1257811))

(assert (=> b!1101800 m!1257655))

(assert (=> b!1101704 d!311623))

(declare-fun d!311629 () Bool)

(declare-fun e!697875 () Bool)

(assert (=> d!311629 e!697875))

(declare-fun res!488651 () Bool)

(assert (=> d!311629 (=> (not res!488651) (not e!697875))))

(declare-fun isBalanced!917 (Conc!3316) Bool)

(declare-fun filter!356 (Conc!3316 Int) Conc!3316)

(assert (=> d!311629 (= res!488651 (isBalanced!917 (filter!356 (c!187002 objs!8) lambda!43430)))))

(declare-fun lt!372393 () BalanceConc!6646)

(assert (=> d!311629 (= lt!372393 (BalanceConc!6647 (filter!356 (c!187002 objs!8) lambda!43430)))))

(assert (=> d!311629 (= (filter!353 objs!8 lambda!43430) lt!372393)))

(declare-fun b!1101803 () Bool)

(assert (=> b!1101803 (= e!697875 (= (list!3837 lt!372393) (filter!352 (list!3837 objs!8) lambda!43430)))))

(assert (= (and d!311629 res!488651) b!1101803))

(declare-fun m!1257815 () Bool)

(assert (=> d!311629 m!1257815))

(assert (=> d!311629 m!1257815))

(declare-fun m!1257817 () Bool)

(assert (=> d!311629 m!1257817))

(declare-fun m!1257819 () Bool)

(assert (=> b!1101803 m!1257819))

(assert (=> b!1101803 m!1257627))

(assert (=> b!1101803 m!1257627))

(declare-fun m!1257821 () Bool)

(assert (=> b!1101803 m!1257821))

(assert (=> b!1101704 d!311629))

(declare-fun d!311633 () Bool)

(declare-fun lt!372395 () Bool)

(assert (=> d!311633 (= lt!372395 (contains!1878 (list!3837 objs!8) lt!372297))))

(assert (=> d!311633 (= lt!372395 (contains!1879 (c!187002 objs!8) lt!372297))))

(assert (=> d!311633 (= (contains!1876 objs!8 lt!372297) lt!372395)))

(declare-fun bs!259514 () Bool)

(assert (= bs!259514 d!311633))

(assert (=> bs!259514 m!1257627))

(assert (=> bs!259514 m!1257627))

(assert (=> bs!259514 m!1257749))

(declare-fun m!1257825 () Bool)

(assert (=> bs!259514 m!1257825))

(assert (=> b!1101704 d!311633))

(declare-fun d!311635 () Bool)

(declare-fun e!697876 () Bool)

(assert (=> d!311635 e!697876))

(declare-fun res!488652 () Bool)

(assert (=> d!311635 (=> (not res!488652) (not e!697876))))

(assert (=> d!311635 (= res!488652 (isBalanced!917 (filter!356 (c!187002 objs!8) lambda!43431)))))

(declare-fun lt!372396 () BalanceConc!6646)

(assert (=> d!311635 (= lt!372396 (BalanceConc!6647 (filter!356 (c!187002 objs!8) lambda!43431)))))

(assert (=> d!311635 (= (filter!353 objs!8 lambda!43431) lt!372396)))

(declare-fun b!1101804 () Bool)

(assert (=> b!1101804 (= e!697876 (= (list!3837 lt!372396) (filter!352 (list!3837 objs!8) lambda!43431)))))

(assert (= (and d!311635 res!488652) b!1101804))

(declare-fun m!1257829 () Bool)

(assert (=> d!311635 m!1257829))

(assert (=> d!311635 m!1257829))

(declare-fun m!1257831 () Bool)

(assert (=> d!311635 m!1257831))

(declare-fun m!1257833 () Bool)

(assert (=> b!1101804 m!1257833))

(assert (=> b!1101804 m!1257627))

(assert (=> b!1101804 m!1257627))

(declare-fun m!1257835 () Bool)

(assert (=> b!1101804 m!1257835))

(assert (=> b!1101704 d!311635))

(declare-fun d!311639 () Bool)

(declare-fun e!697877 () Bool)

(assert (=> d!311639 e!697877))

(declare-fun res!488653 () Bool)

(assert (=> d!311639 (=> (not res!488653) (not e!697877))))

(assert (=> d!311639 (= res!488653 (isBalanced!917 (filter!356 (c!187002 objs!8) lambda!43432)))))

(declare-fun lt!372397 () BalanceConc!6646)

(assert (=> d!311639 (= lt!372397 (BalanceConc!6647 (filter!356 (c!187002 objs!8) lambda!43432)))))

(assert (=> d!311639 (= (filter!353 objs!8 lambda!43432) lt!372397)))

(declare-fun b!1101805 () Bool)

(assert (=> b!1101805 (= e!697877 (= (list!3837 lt!372397) (filter!352 (list!3837 objs!8) lambda!43432)))))

(assert (= (and d!311639 res!488653) b!1101805))

(declare-fun m!1257837 () Bool)

(assert (=> d!311639 m!1257837))

(assert (=> d!311639 m!1257837))

(declare-fun m!1257839 () Bool)

(assert (=> d!311639 m!1257839))

(declare-fun m!1257841 () Bool)

(assert (=> b!1101805 m!1257841))

(assert (=> b!1101805 m!1257627))

(assert (=> b!1101805 m!1257627))

(declare-fun m!1257843 () Bool)

(assert (=> b!1101805 m!1257843))

(assert (=> b!1101704 d!311639))

(declare-fun d!311641 () Bool)

(declare-fun lt!372398 () Bool)

(assert (=> d!311641 (= lt!372398 (forall!2465 (list!3837 objs!8) lambda!43429))))

(assert (=> d!311641 (= lt!372398 (forall!2466 (c!187002 objs!8) lambda!43429))))

(assert (=> d!311641 (= (forall!2463 objs!8 lambda!43429) lt!372398)))

(declare-fun bs!259515 () Bool)

(assert (= bs!259515 d!311641))

(assert (=> bs!259515 m!1257627))

(assert (=> bs!259515 m!1257627))

(declare-fun m!1257845 () Bool)

(assert (=> bs!259515 m!1257845))

(declare-fun m!1257847 () Bool)

(assert (=> bs!259515 m!1257847))

(assert (=> start!94780 d!311641))

(declare-fun d!311643 () Bool)

(assert (=> d!311643 (= (inv!13684 objs!8) (isBalanced!917 (c!187002 objs!8)))))

(declare-fun bs!259516 () Bool)

(assert (= bs!259516 d!311643))

(declare-fun m!1257849 () Bool)

(assert (=> bs!259516 m!1257849))

(assert (=> start!94780 d!311643))

(declare-fun d!311645 () Bool)

(declare-fun lt!372401 () Bool)

(assert (=> d!311645 (= lt!372401 (forall!2465 (list!3837 objs!8) lambda!43432))))

(assert (=> d!311645 (= lt!372401 (forall!2466 (c!187002 objs!8) lambda!43432))))

(assert (=> d!311645 (= (forall!2463 objs!8 lambda!43432) lt!372401)))

(declare-fun bs!259517 () Bool)

(assert (= bs!259517 d!311645))

(assert (=> bs!259517 m!1257627))

(assert (=> bs!259517 m!1257627))

(declare-fun m!1257851 () Bool)

(assert (=> bs!259517 m!1257851))

(declare-fun m!1257853 () Bool)

(assert (=> bs!259517 m!1257853))

(assert (=> b!1101699 d!311645))

(declare-fun d!311647 () Bool)

(assert (=> d!311647 (dynLambda!4689 lambda!43432 lt!372297)))

(declare-fun lt!372402 () Unit!16242)

(assert (=> d!311647 (= lt!372402 (choose!7102 (list!3837 lt!372296) lambda!43432 lt!372297))))

(declare-fun e!697880 () Bool)

(assert (=> d!311647 e!697880))

(declare-fun res!488654 () Bool)

(assert (=> d!311647 (=> (not res!488654) (not e!697880))))

(assert (=> d!311647 (= res!488654 (forall!2465 (list!3837 lt!372296) lambda!43432))))

(assert (=> d!311647 (= (forallContained!523 (list!3837 lt!372296) lambda!43432 lt!372297) lt!372402)))

(declare-fun b!1101810 () Bool)

(assert (=> b!1101810 (= e!697880 (contains!1878 (list!3837 lt!372296) lt!372297))))

(assert (= (and d!311647 res!488654) b!1101810))

(declare-fun b_lambda!32245 () Bool)

(assert (=> (not b_lambda!32245) (not d!311647)))

(declare-fun m!1257855 () Bool)

(assert (=> d!311647 m!1257855))

(assert (=> d!311647 m!1257651))

(declare-fun m!1257857 () Bool)

(assert (=> d!311647 m!1257857))

(assert (=> d!311647 m!1257651))

(declare-fun m!1257859 () Bool)

(assert (=> d!311647 m!1257859))

(assert (=> b!1101810 m!1257651))

(assert (=> b!1101810 m!1257783))

(assert (=> b!1101700 d!311647))

(declare-fun d!311649 () Bool)

(assert (=> d!311649 (= (list!3837 lt!372296) (list!3839 (c!187002 lt!372296)))))

(declare-fun bs!259518 () Bool)

(assert (= bs!259518 d!311649))

(declare-fun m!1257861 () Bool)

(assert (=> bs!259518 m!1257861))

(assert (=> b!1101700 d!311649))

(declare-fun d!311651 () Bool)

(assert (=> d!311651 (dynLambda!4689 lambda!43432 lt!372297)))

(declare-fun lt!372403 () Unit!16242)

(assert (=> d!311651 (= lt!372403 (choose!7102 lt!372305 lambda!43432 lt!372297))))

(declare-fun e!697881 () Bool)

(assert (=> d!311651 e!697881))

(declare-fun res!488655 () Bool)

(assert (=> d!311651 (=> (not res!488655) (not e!697881))))

(assert (=> d!311651 (= res!488655 (forall!2465 lt!372305 lambda!43432))))

(assert (=> d!311651 (= (forallContained!523 lt!372305 lambda!43432 lt!372297) lt!372403)))

(declare-fun b!1101811 () Bool)

(assert (=> b!1101811 (= e!697881 (contains!1878 lt!372305 lt!372297))))

(assert (= (and d!311651 res!488655) b!1101811))

(declare-fun b_lambda!32247 () Bool)

(assert (=> (not b_lambda!32247) (not d!311651)))

(assert (=> d!311651 m!1257855))

(declare-fun m!1257863 () Bool)

(assert (=> d!311651 m!1257863))

(declare-fun m!1257865 () Bool)

(assert (=> d!311651 m!1257865))

(declare-fun m!1257867 () Bool)

(assert (=> b!1101811 m!1257867))

(assert (=> b!1101690 d!311651))

(declare-fun d!311653 () Bool)

(declare-fun lt!372407 () Int)

(assert (=> d!311653 (>= lt!372407 0)))

(declare-fun e!697885 () Int)

(assert (=> d!311653 (= lt!372407 e!697885)))

(declare-fun c!187025 () Bool)

(assert (=> d!311653 (= c!187025 (is-Nil!10646 (filter!352 lt!372305 lambda!43430)))))

(assert (=> d!311653 (= (size!8265 (filter!352 lt!372305 lambda!43430)) lt!372407)))

(declare-fun b!1101818 () Bool)

(assert (=> b!1101818 (= e!697885 0)))

(declare-fun b!1101819 () Bool)

(assert (=> b!1101819 (= e!697885 (+ 1 (size!8265 (t!104068 (filter!352 lt!372305 lambda!43430)))))))

(assert (= (and d!311653 c!187025) b!1101818))

(assert (= (and d!311653 (not c!187025)) b!1101819))

(declare-fun m!1257871 () Bool)

(assert (=> b!1101819 m!1257871))

(assert (=> b!1101701 d!311653))

(declare-fun b!1101832 () Bool)

(declare-fun e!697894 () Bool)

(declare-fun lt!372410 () List!10662)

(assert (=> b!1101832 (= e!697894 (forall!2465 lt!372410 lambda!43430))))

(declare-fun d!311657 () Bool)

(assert (=> d!311657 e!697894))

(declare-fun res!488661 () Bool)

(assert (=> d!311657 (=> (not res!488661) (not e!697894))))

(assert (=> d!311657 (= res!488661 (<= (size!8265 lt!372410) (size!8265 lt!372305)))))

(declare-fun e!697893 () List!10662)

(assert (=> d!311657 (= lt!372410 e!697893)))

(declare-fun c!187031 () Bool)

(assert (=> d!311657 (= c!187031 (is-Nil!10646 lt!372305))))

(assert (=> d!311657 (= (filter!352 lt!372305 lambda!43430) lt!372410)))

(declare-fun bm!80432 () Bool)

(declare-fun call!80437 () List!10662)

(assert (=> bm!80432 (= call!80437 (filter!352 (t!104068 lt!372305) lambda!43430))))

(declare-fun b!1101833 () Bool)

(declare-fun res!488660 () Bool)

(assert (=> b!1101833 (=> (not res!488660) (not e!697894))))

(declare-fun content!1535 (List!10662) (Set tuple2!11784))

(assert (=> b!1101833 (= res!488660 (set.subset (content!1535 lt!372410) (content!1535 lt!372305)))))

(declare-fun b!1101834 () Bool)

(declare-fun e!697892 () List!10662)

(assert (=> b!1101834 (= e!697893 e!697892)))

(declare-fun c!187030 () Bool)

(assert (=> b!1101834 (= c!187030 (dynLambda!4689 lambda!43430 (h!16047 lt!372305)))))

(declare-fun b!1101835 () Bool)

(assert (=> b!1101835 (= e!697892 (Cons!10646 (h!16047 lt!372305) call!80437))))

(declare-fun b!1101836 () Bool)

(assert (=> b!1101836 (= e!697892 call!80437)))

(declare-fun b!1101837 () Bool)

(assert (=> b!1101837 (= e!697893 Nil!10646)))

(assert (= (and d!311657 c!187031) b!1101837))

(assert (= (and d!311657 (not c!187031)) b!1101834))

(assert (= (and b!1101834 c!187030) b!1101835))

(assert (= (and b!1101834 (not c!187030)) b!1101836))

(assert (= (or b!1101835 b!1101836) bm!80432))

(assert (= (and d!311657 res!488661) b!1101833))

(assert (= (and b!1101833 res!488660) b!1101832))

(declare-fun b_lambda!32249 () Bool)

(assert (=> (not b_lambda!32249) (not b!1101834)))

(declare-fun m!1257873 () Bool)

(assert (=> b!1101833 m!1257873))

(declare-fun m!1257875 () Bool)

(assert (=> b!1101833 m!1257875))

(declare-fun m!1257877 () Bool)

(assert (=> bm!80432 m!1257877))

(declare-fun m!1257879 () Bool)

(assert (=> b!1101832 m!1257879))

(declare-fun m!1257881 () Bool)

(assert (=> b!1101834 m!1257881))

(declare-fun m!1257883 () Bool)

(assert (=> d!311657 m!1257883))

(assert (=> d!311657 m!1257667))

(assert (=> b!1101701 d!311657))

(declare-fun d!311659 () Bool)

(declare-fun lt!372413 () Int)

(assert (=> d!311659 (>= lt!372413 0)))

(declare-fun e!697899 () Int)

(assert (=> d!311659 (= lt!372413 e!697899)))

(declare-fun c!187036 () Bool)

(assert (=> d!311659 (= c!187036 (is-Nil!10646 lt!372305))))

(assert (=> d!311659 (= (size!8265 lt!372305) lt!372413)))

(declare-fun b!1101846 () Bool)

(assert (=> b!1101846 (= e!697899 0)))

(declare-fun b!1101847 () Bool)

(assert (=> b!1101847 (= e!697899 (+ 1 (size!8265 (t!104068 lt!372305))))))

(assert (= (and d!311659 c!187036) b!1101846))

(assert (= (and d!311659 (not c!187036)) b!1101847))

(declare-fun m!1257885 () Bool)

(assert (=> b!1101847 m!1257885))

(assert (=> b!1101701 d!311659))

(declare-fun b!1101856 () Bool)

(declare-fun e!697904 () Bool)

(assert (=> b!1101856 (= e!697904 true)))

(declare-fun b!1101858 () Bool)

(declare-fun e!697905 () Bool)

(assert (=> b!1101858 (= e!697905 true)))

(declare-fun b!1101857 () Bool)

(assert (=> b!1101857 (= e!697904 e!697905)))

(assert (=> b!1101716 e!697904))

(assert (= (and b!1101716 (is-Node!3315 (c!187001 (tokens!1388 (_2!6718 lt!372297))))) b!1101856))

(assert (= b!1101857 b!1101858))

(assert (= (and b!1101716 (is-Leaf!5236 (c!187001 (tokens!1388 (_2!6718 lt!372297))))) b!1101857))

(declare-fun b!1101859 () Bool)

(declare-fun e!697906 () Bool)

(assert (=> b!1101859 (= e!697906 true)))

(declare-fun b!1101861 () Bool)

(declare-fun e!697907 () Bool)

(assert (=> b!1101861 (= e!697907 true)))

(declare-fun b!1101860 () Bool)

(assert (=> b!1101860 (= e!697906 e!697907)))

(assert (=> b!1101714 e!697906))

(assert (= (and b!1101714 (is-Node!3315 (c!187001 (tokens!1388 (_2!6718 lt!372297))))) b!1101859))

(assert (= b!1101860 b!1101861))

(assert (= (and b!1101714 (is-Leaf!5236 (c!187001 (tokens!1388 (_2!6718 lt!372297))))) b!1101860))

(declare-fun tp!327101 () Bool)

(declare-fun e!697914 () Bool)

(declare-fun b!1101874 () Bool)

(declare-fun tp!327100 () Bool)

(assert (=> b!1101874 (= e!697914 (and (inv!13685 (left!9208 (c!187002 objs!8))) tp!327100 (inv!13685 (right!9538 (c!187002 objs!8))) tp!327101))))

(declare-fun b!1101876 () Bool)

(declare-fun e!697915 () Bool)

(declare-fun tp!327099 () Bool)

(assert (=> b!1101876 (= e!697915 tp!327099)))

(declare-fun b!1101875 () Bool)

(declare-fun inv!13690 (IArray!6637) Bool)

(assert (=> b!1101875 (= e!697914 (and (inv!13690 (xs!6009 (c!187002 objs!8))) e!697915))))

(assert (=> b!1101703 (= tp!327089 (and (inv!13685 (c!187002 objs!8)) e!697914))))

(assert (= (and b!1101703 (is-Node!3316 (c!187002 objs!8))) b!1101874))

(assert (= b!1101875 b!1101876))

(assert (= (and b!1101703 (is-Leaf!5237 (c!187002 objs!8))) b!1101875))

(declare-fun m!1257887 () Bool)

(assert (=> b!1101874 m!1257887))

(declare-fun m!1257889 () Bool)

(assert (=> b!1101874 m!1257889))

(declare-fun m!1257891 () Bool)

(assert (=> b!1101875 m!1257891))

(assert (=> b!1101703 m!1257633))

(declare-fun b!1101887 () Bool)

(declare-fun e!697924 () Bool)

(assert (=> b!1101887 (= e!697924 true)))

(declare-fun b!1101886 () Bool)

(declare-fun e!697923 () Bool)

(assert (=> b!1101886 (= e!697923 e!697924)))

(declare-fun b!1101885 () Bool)

(declare-fun e!697922 () Bool)

(assert (=> b!1101885 (= e!697922 e!697923)))

(assert (=> b!1101711 e!697922))

(assert (= b!1101886 b!1101887))

(assert (= b!1101885 b!1101886))

(assert (= (and b!1101711 (is-Cons!10645 (rules!9116 (_2!6718 lt!372297)))) b!1101885))

(declare-fun order!6491 () Int)

(declare-fun order!6489 () Int)

(declare-fun dynLambda!4691 (Int Int) Int)

(declare-fun dynLambda!4692 (Int Int) Int)

(assert (=> b!1101887 (< (dynLambda!4691 order!6489 (toValue!2906 (transformation!1829 (h!16046 (rules!9116 (_2!6718 lt!372297)))))) (dynLambda!4692 order!6491 lambda!43430))))

(declare-fun order!6493 () Int)

(declare-fun dynLambda!4693 (Int Int) Int)

(assert (=> b!1101887 (< (dynLambda!4693 order!6493 (toChars!2765 (transformation!1829 (h!16046 (rules!9116 (_2!6718 lt!372297)))))) (dynLambda!4692 order!6491 lambda!43430))))

(declare-fun b!1101890 () Bool)

(declare-fun e!697927 () Bool)

(assert (=> b!1101890 (= e!697927 true)))

(declare-fun b!1101889 () Bool)

(declare-fun e!697926 () Bool)

(assert (=> b!1101889 (= e!697926 e!697927)))

(declare-fun b!1101888 () Bool)

(declare-fun e!697925 () Bool)

(assert (=> b!1101888 (= e!697925 e!697926)))

(assert (=> b!1101715 e!697925))

(assert (= b!1101889 b!1101890))

(assert (= b!1101888 b!1101889))

(assert (= (and b!1101715 (is-Cons!10645 (rules!9116 (_2!6718 lt!372297)))) b!1101888))

(assert (=> b!1101890 (< (dynLambda!4691 order!6489 (toValue!2906 (transformation!1829 (h!16046 (rules!9116 (_2!6718 lt!372297)))))) (dynLambda!4692 order!6491 lambda!43432))))

(assert (=> b!1101890 (< (dynLambda!4693 order!6493 (toChars!2765 (transformation!1829 (h!16046 (rules!9116 (_2!6718 lt!372297)))))) (dynLambda!4692 order!6491 lambda!43432))))

(declare-fun b!1101893 () Bool)

(declare-fun e!697930 () Bool)

(assert (=> b!1101893 (= e!697930 true)))

(declare-fun b!1101892 () Bool)

(declare-fun e!697929 () Bool)

(assert (=> b!1101892 (= e!697929 e!697930)))

(declare-fun b!1101891 () Bool)

(declare-fun e!697928 () Bool)

(assert (=> b!1101891 (= e!697928 e!697929)))

(assert (=> b!1101713 e!697928))

(assert (= b!1101892 b!1101893))

(assert (= b!1101891 b!1101892))

(assert (= (and b!1101713 (is-Cons!10645 (rules!9116 (_2!6718 lt!372297)))) b!1101891))

(assert (=> b!1101893 (< (dynLambda!4691 order!6489 (toValue!2906 (transformation!1829 (h!16046 (rules!9116 (_2!6718 lt!372297)))))) (dynLambda!4692 order!6491 lambda!43431))))

(assert (=> b!1101893 (< (dynLambda!4693 order!6493 (toChars!2765 (transformation!1829 (h!16046 (rules!9116 (_2!6718 lt!372297)))))) (dynLambda!4692 order!6491 lambda!43431))))

(declare-fun b!1101894 () Bool)

(declare-fun e!697931 () Bool)

(assert (=> b!1101894 (= e!697931 true)))

(declare-fun b!1101896 () Bool)

(declare-fun e!697932 () Bool)

(assert (=> b!1101896 (= e!697932 true)))

(declare-fun b!1101895 () Bool)

(assert (=> b!1101895 (= e!697931 e!697932)))

(assert (=> b!1101712 e!697931))

(assert (= (and b!1101712 (is-Node!3315 (c!187001 (tokens!1388 (_2!6718 lt!372297))))) b!1101894))

(assert (= b!1101895 b!1101896))

(assert (= (and b!1101712 (is-Leaf!5236 (c!187001 (tokens!1388 (_2!6718 lt!372297))))) b!1101895))

(declare-fun b_lambda!32251 () Bool)

(assert (= b_lambda!32247 (or b!1101704 b_lambda!32251)))

(declare-fun bs!259519 () Bool)

(declare-fun d!311661 () Bool)

(assert (= bs!259519 (and d!311661 b!1101704)))

(assert (=> bs!259519 (= (dynLambda!4689 lambda!43432 lt!372297) (> (_1!6718 lt!372297) (_1!6718 lt!372297)))))

(assert (=> d!311651 d!311661))

(declare-fun b_lambda!32253 () Bool)

(assert (= b_lambda!32245 (or b!1101704 b_lambda!32253)))

(assert (=> d!311647 d!311661))

(declare-fun b_lambda!32255 () Bool)

(assert (= b_lambda!32237 (or b!1101704 b_lambda!32255)))

(declare-fun bs!259520 () Bool)

(declare-fun d!311663 () Bool)

(assert (= bs!259520 (and d!311663 b!1101704)))

(assert (=> bs!259520 (= (dynLambda!4689 lambda!43430 lt!372297) (< (_1!6718 lt!372297) (_1!6718 lt!372297)))))

(assert (=> d!311587 d!311663))

(declare-fun b_lambda!32257 () Bool)

(assert (= b_lambda!32249 (or b!1101704 b_lambda!32257)))

(declare-fun bs!259521 () Bool)

(declare-fun d!311665 () Bool)

(assert (= bs!259521 (and d!311665 b!1101704)))

(assert (=> bs!259521 (= (dynLambda!4689 lambda!43430 (h!16047 lt!372305)) (< (_1!6718 (h!16047 lt!372305)) (_1!6718 lt!372297)))))

(assert (=> b!1101834 d!311665))

(declare-fun b_lambda!32259 () Bool)

(assert (= b_lambda!32243 (or b!1101704 b_lambda!32259)))

(assert (=> d!311617 d!311663))

(push 1)

(assert (not d!311617))

(assert (not b!1101894))

(assert (not d!311647))

(assert (not b!1101875))

(assert (not d!311585))

(assert (not d!311593))

(assert (not b!1101803))

(assert (not b!1101819))

(assert (not d!311591))

(assert (not b!1101861))

(assert (not b!1101856))

(assert (not d!311607))

(assert (not b!1101874))

(assert (not d!311641))

(assert (not d!311611))

(assert (not d!311587))

(assert (not b_lambda!32251))

(assert (not b_lambda!32257))

(assert (not d!311651))

(assert (not b!1101885))

(assert (not b!1101811))

(assert (not b!1101779))

(assert (not b!1101832))

(assert (not b!1101784))

(assert (not b!1101785))

(assert (not bm!80432))

(assert (not b_lambda!32253))

(assert (not d!311629))

(assert (not b_lambda!32259))

(assert (not b!1101810))

(assert (not b_lambda!32255))

(assert (not b!1101891))

(assert (not d!311633))

(assert (not b!1101833))

(assert (not b!1101858))

(assert (not d!311649))

(assert (not b!1101800))

(assert (not d!311619))

(assert (not b!1101795))

(assert (not d!311623))

(assert (not b!1101805))

(assert (not d!311657))

(assert (not b!1101876))

(assert (not d!311643))

(assert (not b!1101888))

(assert (not d!311613))

(assert (not b!1101859))

(assert (not b!1101847))

(assert (not b!1101896))

(assert (not d!311615))

(assert (not b!1101703))

(assert (not d!311635))

(assert (not b!1101797))

(assert (not d!311639))

(assert (not b!1101804))

(assert (not d!311645))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

