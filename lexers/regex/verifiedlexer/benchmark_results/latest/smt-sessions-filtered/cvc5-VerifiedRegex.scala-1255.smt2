; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!65454 () Bool)

(assert start!65454)

(assert (=> start!65454 true))

(declare-fun b!684617 () Bool)

(declare-fun e!429845 () Bool)

(declare-datatypes ((List!7317 0))(
  ( (Nil!7303) (Cons!7303 (h!12704 (_ BitVec 16)) (t!87028 List!7317)) )
))
(declare-datatypes ((IArray!5191 0))(
  ( (IArray!5192 (innerList!2653 List!7317)) )
))
(declare-datatypes ((Conc!2595 0))(
  ( (Node!2595 (left!5902 Conc!2595) (right!6232 Conc!2595) (csize!5420 Int) (cheight!2806 Int)) (Leaf!3851 (xs!5244 IArray!5191) (csize!5421 Int)) (Empty!2595) )
))
(declare-datatypes ((BalanceConc!5202 0))(
  ( (BalanceConc!5203 (c!121060 Conc!2595)) )
))
(declare-fun x!149799 () BalanceConc!5202)

(declare-fun tp!203097 () Bool)

(declare-fun inv!9374 (Conc!2595) Bool)

(assert (=> b!684617 (= e!429845 (and (inv!9374 (c!121060 x!149799)) tp!203097))))

(declare-fun inst!422 () Bool)

(declare-datatypes ((SpaceValueInjection!4 0))(
  ( (SpaceValueInjection!5) )
))
(declare-fun thiss!4519 () SpaceValueInjection!4)

(declare-fun inv!9375 (BalanceConc!5202) Bool)

(declare-fun list!3077 (BalanceConc!5202) List!7317)

(declare-datatypes ((TokenValue!1512 0))(
  ( (FloatLiteralValue!3024 (text!11029 List!7317)) (TokenValueExt!1511 (__x!5171 Int)) (Broken!7560 (value!47505 List!7317)) (Object!1525) (End!1512) (Def!1512) (Underscore!1512) (Match!1512) (Else!1512) (Error!1512) (Case!1512) (If!1512) (Extends!1512) (Abstract!1512) (Class!1512) (Val!1512) (DelimiterValue!3024 (del!1572 List!7317)) (KeywordValue!1518 (value!47506 List!7317)) (CommentValue!3024 (value!47507 List!7317)) (WhitespaceValue!3024 (value!47508 List!7317)) (IndentationValue!1512 (value!47509 List!7317)) (String!9301) (Int32!1512) (Broken!7561 (value!47510 List!7317)) (Boolean!1513) (Unit!12594) (OperatorValue!1515 (op!1572 List!7317)) (IdentifierValue!3024 (value!47511 List!7317)) (IdentifierValue!3025 (value!47512 List!7317)) (WhitespaceValue!3025 (value!47513 List!7317)) (True!3024) (False!3024) (Broken!7562 (value!47514 List!7317)) (Broken!7563 (value!47515 List!7317)) (True!3025) (RightBrace!1512) (RightBracket!1512) (Colon!1512) (Null!1512) (Comma!1512) (LeftBracket!1512) (False!3025) (LeftBrace!1512) (ImaginaryLiteralValue!1512 (text!11030 List!7317)) (StringLiteralValue!4536 (value!47516 List!7317)) (EOFValue!1512 (value!47517 List!7317)) (IdentValue!1512 (value!47518 List!7317)) (DelimiterValue!3025 (value!47519 List!7317)) (DedentValue!1512 (value!47520 List!7317)) (NewLineValue!1512 (value!47521 List!7317)) (IntegerValue!4536 (value!47522 (_ BitVec 32)) (text!11031 List!7317)) (IntegerValue!4537 (value!47523 Int) (text!11032 List!7317)) (Times!1512) (Or!1512) (Equal!1512) (Minus!1512) (Broken!7564 (value!47524 List!7317)) (And!1512) (Div!1512) (LessEqual!1512) (Mod!1512) (Concat!3326) (Not!1512) (Plus!1512) (SpaceValue!1512 (value!47525 List!7317)) (IntegerValue!4538 (value!47526 Int) (text!11033 List!7317)) (StringLiteralValue!4537 (text!11034 List!7317)) (FloatLiteralValue!3025 (text!11035 List!7317)) (BytesLiteralValue!1512 (value!47527 List!7317)) (CommentValue!3025 (value!47528 List!7317)) (StringLiteralValue!4538 (value!47529 List!7317)) (ErrorTokenValue!1512 (msg!1573 List!7317)) )
))
(declare-fun toCharacters!19 (SpaceValueInjection!4 TokenValue!1512) BalanceConc!5202)

(declare-fun toValue!26 (SpaceValueInjection!4 BalanceConc!5202) TokenValue!1512)

(assert (=> start!65454 (= inst!422 (=> (and (inv!9375 x!149799) e!429845) (= (list!3077 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149799))) (list!3077 x!149799))))))

(assert (= start!65454 b!684617))

(declare-fun m!941379 () Bool)

(assert (=> b!684617 m!941379))

(declare-fun m!941381 () Bool)

(assert (=> start!65454 m!941381))

(declare-fun m!941383 () Bool)

(assert (=> start!65454 m!941383))

(declare-fun m!941385 () Bool)

(assert (=> start!65454 m!941385))

(declare-fun m!941387 () Bool)

(assert (=> start!65454 m!941387))

(declare-fun m!941389 () Bool)

(assert (=> start!65454 m!941389))

(assert (=> start!65454 m!941389))

(assert (=> start!65454 m!941383))

(declare-fun bs!131023 () Bool)

(declare-fun neg-inst!422 () Bool)

(declare-fun s!77523 () Bool)

(assert (= bs!131023 (and neg-inst!422 s!77523)))

(assert (=> bs!131023 (=> true (= (list!3077 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149799))) (list!3077 x!149799)))))

(assert (=> m!941389 m!941383))

(assert (=> m!941389 m!941385))

(assert (=> m!941389 m!941387))

(assert (=> m!941389 s!77523))

(assert (=> m!941387 s!77523))

(declare-fun bs!131024 () Bool)

(assert (= bs!131024 (and neg-inst!422 start!65454)))

(assert (=> bs!131024 (= true inst!422)))

(declare-fun lambda!20980 () Int)

(declare-fun Forall!342 (Int) Bool)

(assert (=> start!65454 (= (Forall!342 lambda!20980) inst!422)))

(assert (=> start!65454 (not (Forall!342 lambda!20980))))

(assert (=> start!65454 true))

(assert (= neg-inst!422 inst!422))

(declare-fun m!941391 () Bool)

(assert (=> start!65454 m!941391))

(assert (=> start!65454 m!941391))

(push 1)

(assert (not b!684617))

(assert (not start!65454))

(assert (not bs!131023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!230840 () Bool)

(declare-fun list!3079 (Conc!2595) List!7317)

(assert (=> d!230840 (= (list!3077 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149799))) (list!3079 (c!121060 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149799)))))))

(declare-fun bs!131027 () Bool)

(assert (= bs!131027 d!230840))

(declare-fun m!941407 () Bool)

(assert (=> bs!131027 m!941407))

(assert (=> bs!131023 d!230840))

(declare-fun d!230842 () Bool)

(declare-fun c!121065 () Bool)

(assert (=> d!230842 (= c!121065 (is-SpaceValue!1512 (toValue!26 thiss!4519 x!149799)))))

(declare-fun e!429851 () BalanceConc!5202)

(assert (=> d!230842 (= (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149799)) e!429851)))

(declare-fun b!684627 () Bool)

(declare-fun seqFromList!1470 (List!7317) BalanceConc!5202)

(assert (=> b!684627 (= e!429851 (seqFromList!1470 (value!47525 (toValue!26 thiss!4519 x!149799))))))

(declare-fun b!684628 () Bool)

(assert (=> b!684628 (= e!429851 (BalanceConc!5203 Empty!2595))))

(assert (= (and d!230842 c!121065) b!684627))

(assert (= (and d!230842 (not c!121065)) b!684628))

(declare-fun m!941409 () Bool)

(assert (=> b!684627 m!941409))

(assert (=> bs!131023 d!230842))

(declare-fun d!230846 () Bool)

(declare-fun efficientList!93 (BalanceConc!5202) List!7317)

(assert (=> d!230846 (= (toValue!26 thiss!4519 x!149799) (SpaceValue!1512 (efficientList!93 x!149799)))))

(declare-fun bs!131029 () Bool)

(assert (= bs!131029 d!230846))

(declare-fun m!941413 () Bool)

(assert (=> bs!131029 m!941413))

(assert (=> bs!131023 d!230846))

(declare-fun d!230850 () Bool)

(assert (=> d!230850 (= (list!3077 x!149799) (list!3079 (c!121060 x!149799)))))

(declare-fun bs!131030 () Bool)

(assert (= bs!131030 d!230850))

(declare-fun m!941415 () Bool)

(assert (=> bs!131030 m!941415))

(assert (=> bs!131023 d!230850))

(push 1)

(assert (not d!230850))

(assert (not d!230840))

(assert (not d!230846))

(assert (not start!65454))

(assert (not b!684627))

(assert (not b!684617))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!230856 () Bool)

(declare-fun lt!283710 () List!7317)

(assert (=> d!230856 (= lt!283710 (list!3077 x!149799))))

(declare-fun efficientList!95 (Conc!2595 List!7317) List!7317)

(declare-fun efficientList$default$2!31 (Conc!2595) List!7317)

(assert (=> d!230856 (= lt!283710 (efficientList!95 (c!121060 x!149799) (efficientList$default$2!31 (c!121060 x!149799))))))

(assert (=> d!230856 (= (efficientList!93 x!149799) lt!283710)))

(declare-fun bs!131033 () Bool)

(assert (= bs!131033 d!230856))

(assert (=> bs!131033 m!941387))

(declare-fun m!941423 () Bool)

(assert (=> bs!131033 m!941423))

(assert (=> bs!131033 m!941423))

(declare-fun m!941425 () Bool)

(assert (=> bs!131033 m!941425))

(assert (=> d!230846 d!230856))

(declare-fun b!684645 () Bool)

(declare-fun e!429860 () List!7317)

(declare-fun list!3081 (IArray!5191) List!7317)

(assert (=> b!684645 (= e!429860 (list!3081 (xs!5244 (c!121060 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149799))))))))

(declare-fun b!684643 () Bool)

(declare-fun e!429859 () List!7317)

(assert (=> b!684643 (= e!429859 Nil!7303)))

(declare-fun b!684644 () Bool)

(assert (=> b!684644 (= e!429859 e!429860)))

(declare-fun c!121075 () Bool)

(assert (=> b!684644 (= c!121075 (is-Leaf!3851 (c!121060 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149799)))))))

(declare-fun b!684646 () Bool)

(declare-fun ++!1925 (List!7317 List!7317) List!7317)

(assert (=> b!684646 (= e!429860 (++!1925 (list!3079 (left!5902 (c!121060 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149799))))) (list!3079 (right!6232 (c!121060 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149799)))))))))

(declare-fun d!230858 () Bool)

(declare-fun c!121074 () Bool)

(assert (=> d!230858 (= c!121074 (is-Empty!2595 (c!121060 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149799)))))))

(assert (=> d!230858 (= (list!3079 (c!121060 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149799)))) e!429859)))

(assert (= (and d!230858 c!121074) b!684643))

(assert (= (and d!230858 (not c!121074)) b!684644))

(assert (= (and b!684644 c!121075) b!684645))

(assert (= (and b!684644 (not c!121075)) b!684646))

(declare-fun m!941427 () Bool)

(assert (=> b!684645 m!941427))

(declare-fun m!941429 () Bool)

(assert (=> b!684646 m!941429))

(declare-fun m!941431 () Bool)

(assert (=> b!684646 m!941431))

(assert (=> b!684646 m!941429))

(assert (=> b!684646 m!941431))

(declare-fun m!941433 () Bool)

(assert (=> b!684646 m!941433))

(assert (=> d!230840 d!230858))

(declare-fun b!684649 () Bool)

(declare-fun e!429862 () List!7317)

(assert (=> b!684649 (= e!429862 (list!3081 (xs!5244 (c!121060 x!149799))))))

(declare-fun b!684647 () Bool)

(declare-fun e!429861 () List!7317)

(assert (=> b!684647 (= e!429861 Nil!7303)))

(declare-fun b!684648 () Bool)

(assert (=> b!684648 (= e!429861 e!429862)))

(declare-fun c!121077 () Bool)

(assert (=> b!684648 (= c!121077 (is-Leaf!3851 (c!121060 x!149799)))))

(declare-fun b!684650 () Bool)

(assert (=> b!684650 (= e!429862 (++!1925 (list!3079 (left!5902 (c!121060 x!149799))) (list!3079 (right!6232 (c!121060 x!149799)))))))

(declare-fun d!230860 () Bool)

(declare-fun c!121076 () Bool)

(assert (=> d!230860 (= c!121076 (is-Empty!2595 (c!121060 x!149799)))))

(assert (=> d!230860 (= (list!3079 (c!121060 x!149799)) e!429861)))

(assert (= (and d!230860 c!121076) b!684647))

(assert (= (and d!230860 (not c!121076)) b!684648))

(assert (= (and b!684648 c!121077) b!684649))

(assert (= (and b!684648 (not c!121077)) b!684650))

(declare-fun m!941435 () Bool)

(assert (=> b!684649 m!941435))

(declare-fun m!941437 () Bool)

(assert (=> b!684650 m!941437))

(declare-fun m!941439 () Bool)

(assert (=> b!684650 m!941439))

(assert (=> b!684650 m!941437))

(assert (=> b!684650 m!941439))

(declare-fun m!941441 () Bool)

(assert (=> b!684650 m!941441))

(assert (=> d!230850 d!230860))

(push 1)

(assert (not b!684646))

(assert (not b!684645))

(assert (not b!684627))

(assert (not b!684617))

(assert (not b!684649))

(assert (not d!230856))

(assert (not b!684650))

(assert (not start!65454))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!230856 d!230850))

(declare-fun b!684679 () Bool)

(declare-fun e!429879 () List!7317)

(declare-fun call!43511 () List!7317)

(assert (=> b!684679 (= e!429879 call!43511)))

(declare-fun b!684680 () Bool)

(declare-fun e!429878 () List!7317)

(declare-fun lt!283724 () List!7317)

(assert (=> b!684680 (= e!429878 lt!283724)))

(declare-fun d!230868 () Bool)

(declare-fun lt!283725 () List!7317)

(assert (=> d!230868 (= lt!283725 (++!1925 (list!3079 (c!121060 x!149799)) (efficientList$default$2!31 (c!121060 x!149799))))))

(declare-fun e!429877 () List!7317)

(assert (=> d!230868 (= lt!283725 e!429877)))

(declare-fun c!121093 () Bool)

(assert (=> d!230868 (= c!121093 (is-Empty!2595 (c!121060 x!149799)))))

(assert (=> d!230868 (= (efficientList!95 (c!121060 x!149799) (efficientList$default$2!31 (c!121060 x!149799))) lt!283725)))

(declare-fun bm!43506 () Bool)

(declare-fun c!121094 () Bool)

(declare-fun c!121092 () Bool)

(assert (=> bm!43506 (= c!121094 c!121092)))

(assert (=> bm!43506 (= call!43511 (++!1925 e!429878 (efficientList$default$2!31 (c!121060 x!149799))))))

(declare-fun b!684681 () Bool)

(assert (=> b!684681 (= e!429877 (efficientList$default$2!31 (c!121060 x!149799)))))

(declare-fun b!684682 () Bool)

(assert (=> b!684682 (= e!429877 e!429879)))

(assert (=> b!684682 (= c!121092 (is-Leaf!3851 (c!121060 x!149799)))))

(declare-fun b!684683 () Bool)

(declare-fun efficientList!97 (IArray!5191) List!7317)

(assert (=> b!684683 (= e!429878 (efficientList!97 (xs!5244 (c!121060 x!149799))))))

(declare-fun b!684684 () Bool)

(declare-datatypes ((Unit!12596 0))(
  ( (Unit!12597) )
))
(declare-fun lt!283728 () Unit!12596)

(declare-fun lt!283726 () Unit!12596)

(assert (=> b!684684 (= lt!283728 lt!283726)))

(declare-fun lt!283727 () List!7317)

(assert (=> b!684684 (= (++!1925 (++!1925 lt!283727 lt!283724) (efficientList$default$2!31 (c!121060 x!149799))) (++!1925 lt!283727 call!43511))))

(declare-fun lemmaConcatAssociativity!642 (List!7317 List!7317 List!7317) Unit!12596)

(assert (=> b!684684 (= lt!283726 (lemmaConcatAssociativity!642 lt!283727 lt!283724 (efficientList$default$2!31 (c!121060 x!149799))))))

(assert (=> b!684684 (= lt!283724 (list!3079 (right!6232 (c!121060 x!149799))))))

(assert (=> b!684684 (= lt!283727 (list!3079 (left!5902 (c!121060 x!149799))))))

(assert (=> b!684684 (= e!429879 (efficientList!95 (left!5902 (c!121060 x!149799)) (efficientList!95 (right!6232 (c!121060 x!149799)) (efficientList$default$2!31 (c!121060 x!149799)))))))

(assert (= (and d!230868 c!121093) b!684681))

(assert (= (and d!230868 (not c!121093)) b!684682))

(assert (= (and b!684682 c!121092) b!684679))

(assert (= (and b!684682 (not c!121092)) b!684684))

(assert (= (or b!684679 b!684684) bm!43506))

(assert (= (and bm!43506 c!121094) b!684683))

(assert (= (and bm!43506 (not c!121094)) b!684680))

(assert (=> d!230868 m!941415))

(assert (=> d!230868 m!941415))

(assert (=> d!230868 m!941423))

(declare-fun m!941463 () Bool)

(assert (=> d!230868 m!941463))

(assert (=> bm!43506 m!941423))

(declare-fun m!941465 () Bool)

(assert (=> bm!43506 m!941465))

(declare-fun m!941467 () Bool)

(assert (=> b!684683 m!941467))

(assert (=> b!684684 m!941423))

(declare-fun m!941469 () Bool)

(assert (=> b!684684 m!941469))

(declare-fun m!941471 () Bool)

(assert (=> b!684684 m!941471))

(assert (=> b!684684 m!941423))

(declare-fun m!941473 () Bool)

(assert (=> b!684684 m!941473))

(assert (=> b!684684 m!941439))

(assert (=> b!684684 m!941423))

(declare-fun m!941475 () Bool)

(assert (=> b!684684 m!941475))

(assert (=> b!684684 m!941475))

(declare-fun m!941477 () Bool)

(assert (=> b!684684 m!941477))

(assert (=> b!684684 m!941471))

(declare-fun m!941479 () Bool)

(assert (=> b!684684 m!941479))

(assert (=> b!684684 m!941437))

(assert (=> d!230856 d!230868))

(declare-fun d!230870 () Bool)

(assert (=> d!230870 (= (efficientList$default$2!31 (c!121060 x!149799)) Nil!7303)))

(assert (=> d!230856 d!230870))

(declare-fun d!230872 () Bool)

(declare-fun fromListB!641 (List!7317) BalanceConc!5202)

(assert (=> d!230872 (= (seqFromList!1470 (value!47525 (toValue!26 thiss!4519 x!149799))) (fromListB!641 (value!47525 (toValue!26 thiss!4519 x!149799))))))

(declare-fun bs!131035 () Bool)

(assert (= bs!131035 d!230872))

(declare-fun m!941481 () Bool)

(assert (=> bs!131035 m!941481))

(assert (=> b!684627 d!230872))

(declare-fun d!230874 () Bool)

(declare-fun c!121097 () Bool)

(assert (=> d!230874 (= c!121097 (is-Node!2595 (c!121060 x!149799)))))

(declare-fun e!429884 () Bool)

(assert (=> d!230874 (= (inv!9374 (c!121060 x!149799)) e!429884)))

(declare-fun b!684691 () Bool)

(declare-fun inv!9378 (Conc!2595) Bool)

(assert (=> b!684691 (= e!429884 (inv!9378 (c!121060 x!149799)))))

(declare-fun b!684692 () Bool)

(declare-fun e!429885 () Bool)

(assert (=> b!684692 (= e!429884 e!429885)))

(declare-fun res!311759 () Bool)

(assert (=> b!684692 (= res!311759 (not (is-Leaf!3851 (c!121060 x!149799))))))

(assert (=> b!684692 (=> res!311759 e!429885)))

(declare-fun b!684693 () Bool)

(declare-fun inv!9379 (Conc!2595) Bool)

(assert (=> b!684693 (= e!429885 (inv!9379 (c!121060 x!149799)))))

(assert (= (and d!230874 c!121097) b!684691))

(assert (= (and d!230874 (not c!121097)) b!684692))

(assert (= (and b!684692 (not res!311759)) b!684693))

(declare-fun m!941483 () Bool)

(assert (=> b!684691 m!941483))

(declare-fun m!941485 () Bool)

(assert (=> b!684693 m!941485))

(assert (=> b!684617 d!230874))

(assert (=> start!65454 d!230840))

(declare-fun d!230876 () Bool)

(declare-fun choose!4687 (Int) Bool)

(assert (=> d!230876 (= (Forall!342 lambda!20980) (choose!4687 lambda!20980))))

(declare-fun bs!131036 () Bool)

(assert (= bs!131036 d!230876))

(declare-fun m!941487 () Bool)

(assert (=> bs!131036 m!941487))

(assert (=> start!65454 d!230876))

(assert (=> start!65454 d!230842))

(assert (=> start!65454 d!230846))

(declare-fun d!230878 () Bool)

(declare-fun isBalanced!683 (Conc!2595) Bool)

(assert (=> d!230878 (= (inv!9375 x!149799) (isBalanced!683 (c!121060 x!149799)))))

(declare-fun bs!131037 () Bool)

(assert (= bs!131037 d!230878))

(declare-fun m!941489 () Bool)

(assert (=> bs!131037 m!941489))

(assert (=> start!65454 d!230878))

(assert (=> start!65454 d!230850))

(declare-fun tp!203105 () Bool)

(declare-fun e!429890 () Bool)

(declare-fun b!684700 () Bool)

(declare-fun tp!203106 () Bool)

(assert (=> b!684700 (= e!429890 (and (inv!9374 (left!5902 (c!121060 x!149799))) tp!203105 (inv!9374 (right!6232 (c!121060 x!149799))) tp!203106))))

(declare-fun b!684701 () Bool)

(declare-fun inv!9380 (IArray!5191) Bool)

(assert (=> b!684701 (= e!429890 (inv!9380 (xs!5244 (c!121060 x!149799))))))

(assert (=> b!684617 (= tp!203097 (and (inv!9374 (c!121060 x!149799)) e!429890))))

(assert (= (and b!684617 (is-Node!2595 (c!121060 x!149799))) b!684700))

(assert (= (and b!684617 (is-Leaf!3851 (c!121060 x!149799))) b!684701))

(declare-fun m!941491 () Bool)

(assert (=> b!684700 m!941491))

(declare-fun m!941493 () Bool)

(assert (=> b!684700 m!941493))

(declare-fun m!941495 () Bool)

(assert (=> b!684701 m!941495))

(assert (=> b!684617 m!941379))

(push 1)

(assert (not b!684700))

(assert (not d!230868))

(assert (not bm!43506))

(assert (not b!684683))

(assert (not b!684693))

(assert (not d!230872))

(assert (not d!230878))

(assert (not b!684701))

(assert (not b!684649))

(assert (not b!684650))

(assert (not d!230876))

(assert (not b!684617))

(assert (not b!684646))

(assert (not b!684691))

(assert (not b!684645))

(assert (not b!684684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!684745 () Bool)

(declare-fun e!429918 () List!7317)

(assert (=> b!684745 (= e!429918 (efficientList$default$2!31 (c!121060 x!149799)))))

(declare-fun b!684748 () Bool)

(declare-fun e!429917 () Bool)

(declare-fun lt!283746 () List!7317)

(assert (=> b!684748 (= e!429917 (or (not (= (efficientList$default$2!31 (c!121060 x!149799)) Nil!7303)) (= lt!283746 (list!3079 (c!121060 x!149799)))))))

(declare-fun b!684746 () Bool)

(assert (=> b!684746 (= e!429918 (Cons!7303 (h!12704 (list!3079 (c!121060 x!149799))) (++!1925 (t!87028 (list!3079 (c!121060 x!149799))) (efficientList$default$2!31 (c!121060 x!149799)))))))

(declare-fun d!230892 () Bool)

(assert (=> d!230892 e!429917))

(declare-fun res!311768 () Bool)

(assert (=> d!230892 (=> (not res!311768) (not e!429917))))

(declare-fun content!1178 (List!7317) (Set (_ BitVec 16)))

(assert (=> d!230892 (= res!311768 (= (content!1178 lt!283746) (set.union (content!1178 (list!3079 (c!121060 x!149799))) (content!1178 (efficientList$default$2!31 (c!121060 x!149799))))))))

(assert (=> d!230892 (= lt!283746 e!429918)))

(declare-fun c!121112 () Bool)

(assert (=> d!230892 (= c!121112 (is-Nil!7303 (list!3079 (c!121060 x!149799))))))

(assert (=> d!230892 (= (++!1925 (list!3079 (c!121060 x!149799)) (efficientList$default$2!31 (c!121060 x!149799))) lt!283746)))

(declare-fun b!684747 () Bool)

(declare-fun res!311767 () Bool)

(assert (=> b!684747 (=> (not res!311767) (not e!429917))))

(declare-fun size!6008 (List!7317) Int)

(assert (=> b!684747 (= res!311767 (= (size!6008 lt!283746) (+ (size!6008 (list!3079 (c!121060 x!149799))) (size!6008 (efficientList$default$2!31 (c!121060 x!149799))))))))

(assert (= (and d!230892 c!121112) b!684745))

(assert (= (and d!230892 (not c!121112)) b!684746))

(assert (= (and d!230892 res!311768) b!684747))

(assert (= (and b!684747 res!311767) b!684748))

(assert (=> b!684746 m!941423))

(declare-fun m!941531 () Bool)

(assert (=> b!684746 m!941531))

(declare-fun m!941533 () Bool)

(assert (=> d!230892 m!941533))

(assert (=> d!230892 m!941415))

(declare-fun m!941535 () Bool)

(assert (=> d!230892 m!941535))

(assert (=> d!230892 m!941423))

(declare-fun m!941537 () Bool)

(assert (=> d!230892 m!941537))

(declare-fun m!941539 () Bool)

(assert (=> b!684747 m!941539))

(assert (=> b!684747 m!941415))

(declare-fun m!941541 () Bool)

(assert (=> b!684747 m!941541))

(assert (=> b!684747 m!941423))

(declare-fun m!941543 () Bool)

(assert (=> b!684747 m!941543))

(assert (=> d!230868 d!230892))

(assert (=> d!230868 d!230860))

(declare-fun d!230894 () Bool)

(declare-fun e!429921 () Bool)

(assert (=> d!230894 e!429921))

(declare-fun res!311771 () Bool)

(assert (=> d!230894 (=> (not res!311771) (not e!429921))))

(declare-fun lt!283749 () BalanceConc!5202)

(assert (=> d!230894 (= res!311771 (= (list!3077 lt!283749) (value!47525 (toValue!26 thiss!4519 x!149799))))))

(declare-fun fromList!299 (List!7317) Conc!2595)

(assert (=> d!230894 (= lt!283749 (BalanceConc!5203 (fromList!299 (value!47525 (toValue!26 thiss!4519 x!149799)))))))

(assert (=> d!230894 (= (fromListB!641 (value!47525 (toValue!26 thiss!4519 x!149799))) lt!283749)))

(declare-fun b!684751 () Bool)

(assert (=> b!684751 (= e!429921 (isBalanced!683 (fromList!299 (value!47525 (toValue!26 thiss!4519 x!149799)))))))

(assert (= (and d!230894 res!311771) b!684751))

(declare-fun m!941545 () Bool)

(assert (=> d!230894 m!941545))

(declare-fun m!941547 () Bool)

(assert (=> d!230894 m!941547))

(assert (=> b!684751 m!941547))

(assert (=> b!684751 m!941547))

(declare-fun m!941549 () Bool)

(assert (=> b!684751 m!941549))

(assert (=> d!230872 d!230894))

(push 1)

(assert (not b!684700))

(assert (not d!230894))

(assert (not b!684683))

(assert (not d!230878))

(assert (not b!684701))

(assert (not b!684747))

(assert (not b!684650))

(assert (not d!230876))

(assert (not b!684617))

(assert (not b!684646))

(assert (not b!684691))

(assert (not bm!43506))

(assert (not d!230892))

(assert (not b!684751))

(assert (not b!684693))

(assert (not b!684649))

(assert (not b!684746))

(assert (not b!684645))

(assert (not b!684684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

