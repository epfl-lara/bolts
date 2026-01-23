; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507374 () Bool)

(assert start!507374)

(declare-fun b!4856679 () Bool)

(declare-fun res!2073320 () Bool)

(declare-fun e!3036400 () Bool)

(assert (=> b!4856679 (=> (not res!2073320) (not e!3036400))))

(declare-datatypes ((T!98602 0))(
  ( (T!98603 (val!22400 Int)) )
))
(declare-datatypes ((List!55868 0))(
  ( (Nil!55744) (Cons!55744 (h!62192 T!98602) (t!363426 List!55868)) )
))
(declare-datatypes ((IArray!29109 0))(
  ( (IArray!29110 (innerList!14612 List!55868)) )
))
(declare-datatypes ((Conc!14524 0))(
  ( (Node!14524 (left!40506 Conc!14524) (right!40836 Conc!14524) (csize!29278 Int) (cheight!14735 Int)) (Leaf!24201 (xs!17830 IArray!29109) (csize!29279 Int)) (Empty!14524) )
))
(declare-fun t!4677 () Conc!14524)

(declare-fun isEmpty!29820 (Conc!14524) Bool)

(assert (=> b!4856679 (= res!2073320 (not (isEmpty!29820 t!4677)))))

(declare-fun tp!1366390 () Bool)

(declare-fun tp!1366391 () Bool)

(declare-fun b!4856680 () Bool)

(declare-fun e!3036402 () Bool)

(declare-fun inv!71552 (Conc!14524) Bool)

(assert (=> b!4856680 (= e!3036402 (and (inv!71552 (left!40506 t!4677)) tp!1366391 (inv!71552 (right!40836 t!4677)) tp!1366390))))

(declare-fun b!4856681 () Bool)

(declare-fun res!2073321 () Bool)

(assert (=> b!4856681 (=> (not res!2073321) (not e!3036400))))

(get-info :version)

(assert (=> b!4856681 (= res!2073321 (and (not ((_ is Leaf!24201) t!4677)) ((_ is Node!14524) t!4677)))))

(declare-fun b!4856682 () Bool)

(declare-fun e!3036401 () Bool)

(declare-fun e!3036398 () Bool)

(assert (=> b!4856682 (= e!3036401 e!3036398)))

(declare-fun res!2073318 () Bool)

(assert (=> b!4856682 (=> (not res!2073318) (not e!3036398))))

(declare-fun lt!1991516 () Bool)

(assert (=> b!4856682 (= res!2073318 (not lt!1991516))))

(declare-fun b!4856683 () Bool)

(declare-fun e!3036397 () Bool)

(declare-fun inv!71553 (IArray!29109) Bool)

(assert (=> b!4856683 (= e!3036402 (and (inv!71553 (xs!17830 t!4677)) e!3036397))))

(declare-fun b!4856684 () Bool)

(declare-fun lt!1991517 () List!55868)

(declare-fun lt!1991515 () List!55868)

(declare-fun last!393 (List!55868) T!98602)

(declare-fun ++!12129 (List!55868 List!55868) List!55868)

(assert (=> b!4856684 (= e!3036398 (= (last!393 (++!12129 lt!1991517 lt!1991515)) (last!393 lt!1991515)))))

(declare-fun res!2073319 () Bool)

(assert (=> start!507374 (=> (not res!2073319) (not e!3036400))))

(declare-fun isBalanced!3930 (Conc!14524) Bool)

(assert (=> start!507374 (= res!2073319 (isBalanced!3930 t!4677))))

(assert (=> start!507374 e!3036400))

(assert (=> start!507374 (and (inv!71552 t!4677) e!3036402)))

(declare-fun b!4856685 () Bool)

(declare-fun isEmpty!29821 (List!55868) Bool)

(declare-fun list!17408 (Conc!14524) List!55868)

(assert (=> b!4856685 (= e!3036400 (not (not (isEmpty!29821 (list!17408 t!4677)))))))

(declare-fun lt!1991514 () T!98602)

(declare-fun last!394 (Conc!14524) T!98602)

(assert (=> b!4856685 (= lt!1991514 (last!394 (right!40836 t!4677)))))

(assert (=> b!4856685 e!3036401))

(declare-fun res!2073317 () Bool)

(assert (=> b!4856685 (=> res!2073317 e!3036401)))

(declare-fun e!3036399 () Bool)

(assert (=> b!4856685 (= res!2073317 e!3036399)))

(declare-fun res!2073316 () Bool)

(assert (=> b!4856685 (=> (not res!2073316) (not e!3036399))))

(assert (=> b!4856685 (= res!2073316 lt!1991516)))

(assert (=> b!4856685 (= lt!1991516 (isEmpty!29821 lt!1991515))))

(declare-datatypes ((Unit!145851 0))(
  ( (Unit!145852) )
))
(declare-fun lt!1991513 () Unit!145851)

(declare-fun lemmaLastOfConcatIsLastOfRhs!32 (List!55868 List!55868) Unit!145851)

(assert (=> b!4856685 (= lt!1991513 (lemmaLastOfConcatIsLastOfRhs!32 lt!1991517 lt!1991515))))

(assert (=> b!4856685 (= lt!1991515 (list!17408 (right!40836 t!4677)))))

(assert (=> b!4856685 (= lt!1991517 (list!17408 (left!40506 t!4677)))))

(declare-fun b!4856686 () Bool)

(assert (=> b!4856686 (= e!3036399 (= (last!393 (++!12129 lt!1991517 lt!1991515)) (last!393 lt!1991517)))))

(declare-fun b!4856687 () Bool)

(declare-fun tp!1366389 () Bool)

(assert (=> b!4856687 (= e!3036397 tp!1366389)))

(assert (= (and start!507374 res!2073319) b!4856679))

(assert (= (and b!4856679 res!2073320) b!4856681))

(assert (= (and b!4856681 res!2073321) b!4856685))

(assert (= (and b!4856685 res!2073316) b!4856686))

(assert (= (and b!4856685 (not res!2073317)) b!4856682))

(assert (= (and b!4856682 res!2073318) b!4856684))

(assert (= (and start!507374 ((_ is Node!14524) t!4677)) b!4856680))

(assert (= b!4856683 b!4856687))

(assert (= (and start!507374 ((_ is Leaf!24201) t!4677)) b!4856683))

(declare-fun m!5854464 () Bool)

(assert (=> b!4856686 m!5854464))

(assert (=> b!4856686 m!5854464))

(declare-fun m!5854466 () Bool)

(assert (=> b!4856686 m!5854466))

(declare-fun m!5854468 () Bool)

(assert (=> b!4856686 m!5854468))

(declare-fun m!5854470 () Bool)

(assert (=> b!4856683 m!5854470))

(declare-fun m!5854472 () Bool)

(assert (=> start!507374 m!5854472))

(declare-fun m!5854474 () Bool)

(assert (=> start!507374 m!5854474))

(declare-fun m!5854476 () Bool)

(assert (=> b!4856679 m!5854476))

(declare-fun m!5854478 () Bool)

(assert (=> b!4856685 m!5854478))

(declare-fun m!5854480 () Bool)

(assert (=> b!4856685 m!5854480))

(declare-fun m!5854482 () Bool)

(assert (=> b!4856685 m!5854482))

(declare-fun m!5854484 () Bool)

(assert (=> b!4856685 m!5854484))

(declare-fun m!5854486 () Bool)

(assert (=> b!4856685 m!5854486))

(assert (=> b!4856685 m!5854478))

(declare-fun m!5854488 () Bool)

(assert (=> b!4856685 m!5854488))

(declare-fun m!5854490 () Bool)

(assert (=> b!4856685 m!5854490))

(declare-fun m!5854492 () Bool)

(assert (=> b!4856680 m!5854492))

(declare-fun m!5854494 () Bool)

(assert (=> b!4856680 m!5854494))

(assert (=> b!4856684 m!5854464))

(assert (=> b!4856684 m!5854464))

(assert (=> b!4856684 m!5854466))

(declare-fun m!5854496 () Bool)

(assert (=> b!4856684 m!5854496))

(check-sat (not b!4856679) (not b!4856687) (not b!4856680) (not start!507374) (not b!4856686) (not b!4856685) (not b!4856684) (not b!4856683))
(check-sat)
(get-model)

(declare-fun d!1558849 () Bool)

(declare-fun c!826174 () Bool)

(assert (=> d!1558849 (= c!826174 ((_ is Node!14524) (left!40506 t!4677)))))

(declare-fun e!3036407 () Bool)

(assert (=> d!1558849 (= (inv!71552 (left!40506 t!4677)) e!3036407)))

(declare-fun b!4856694 () Bool)

(declare-fun inv!71554 (Conc!14524) Bool)

(assert (=> b!4856694 (= e!3036407 (inv!71554 (left!40506 t!4677)))))

(declare-fun b!4856695 () Bool)

(declare-fun e!3036408 () Bool)

(assert (=> b!4856695 (= e!3036407 e!3036408)))

(declare-fun res!2073324 () Bool)

(assert (=> b!4856695 (= res!2073324 (not ((_ is Leaf!24201) (left!40506 t!4677))))))

(assert (=> b!4856695 (=> res!2073324 e!3036408)))

(declare-fun b!4856696 () Bool)

(declare-fun inv!71555 (Conc!14524) Bool)

(assert (=> b!4856696 (= e!3036408 (inv!71555 (left!40506 t!4677)))))

(assert (= (and d!1558849 c!826174) b!4856694))

(assert (= (and d!1558849 (not c!826174)) b!4856695))

(assert (= (and b!4856695 (not res!2073324)) b!4856696))

(declare-fun m!5854498 () Bool)

(assert (=> b!4856694 m!5854498))

(declare-fun m!5854500 () Bool)

(assert (=> b!4856696 m!5854500))

(assert (=> b!4856680 d!1558849))

(declare-fun d!1558851 () Bool)

(declare-fun c!826175 () Bool)

(assert (=> d!1558851 (= c!826175 ((_ is Node!14524) (right!40836 t!4677)))))

(declare-fun e!3036409 () Bool)

(assert (=> d!1558851 (= (inv!71552 (right!40836 t!4677)) e!3036409)))

(declare-fun b!4856697 () Bool)

(assert (=> b!4856697 (= e!3036409 (inv!71554 (right!40836 t!4677)))))

(declare-fun b!4856698 () Bool)

(declare-fun e!3036410 () Bool)

(assert (=> b!4856698 (= e!3036409 e!3036410)))

(declare-fun res!2073325 () Bool)

(assert (=> b!4856698 (= res!2073325 (not ((_ is Leaf!24201) (right!40836 t!4677))))))

(assert (=> b!4856698 (=> res!2073325 e!3036410)))

(declare-fun b!4856699 () Bool)

(assert (=> b!4856699 (= e!3036410 (inv!71555 (right!40836 t!4677)))))

(assert (= (and d!1558851 c!826175) b!4856697))

(assert (= (and d!1558851 (not c!826175)) b!4856698))

(assert (= (and b!4856698 (not res!2073325)) b!4856699))

(declare-fun m!5854502 () Bool)

(assert (=> b!4856697 m!5854502))

(declare-fun m!5854504 () Bool)

(assert (=> b!4856699 m!5854504))

(assert (=> b!4856680 d!1558851))

(declare-fun b!4856718 () Bool)

(declare-fun e!3036419 () Bool)

(assert (=> b!4856718 (= e!3036419 (not (isEmpty!29820 (right!40836 t!4677))))))

(declare-fun b!4856719 () Bool)

(declare-fun e!3036418 () Bool)

(assert (=> b!4856719 (= e!3036418 e!3036419)))

(declare-fun res!2073339 () Bool)

(assert (=> b!4856719 (=> (not res!2073339) (not e!3036419))))

(declare-fun height!1902 (Conc!14524) Int)

(assert (=> b!4856719 (= res!2073339 (<= (- 1) (- (height!1902 (left!40506 t!4677)) (height!1902 (right!40836 t!4677)))))))

(declare-fun b!4856720 () Bool)

(declare-fun res!2073338 () Bool)

(assert (=> b!4856720 (=> (not res!2073338) (not e!3036419))))

(assert (=> b!4856720 (= res!2073338 (isBalanced!3930 (left!40506 t!4677)))))

(declare-fun b!4856721 () Bool)

(declare-fun res!2073343 () Bool)

(assert (=> b!4856721 (=> (not res!2073343) (not e!3036419))))

(assert (=> b!4856721 (= res!2073343 (isBalanced!3930 (right!40836 t!4677)))))

(declare-fun b!4856722 () Bool)

(declare-fun res!2073342 () Bool)

(assert (=> b!4856722 (=> (not res!2073342) (not e!3036419))))

(assert (=> b!4856722 (= res!2073342 (<= (- (height!1902 (left!40506 t!4677)) (height!1902 (right!40836 t!4677))) 1))))

(declare-fun d!1558853 () Bool)

(declare-fun res!2073341 () Bool)

(assert (=> d!1558853 (=> res!2073341 e!3036418)))

(assert (=> d!1558853 (= res!2073341 (not ((_ is Node!14524) t!4677)))))

(assert (=> d!1558853 (= (isBalanced!3930 t!4677) e!3036418)))

(declare-fun b!4856723 () Bool)

(declare-fun res!2073340 () Bool)

(assert (=> b!4856723 (=> (not res!2073340) (not e!3036419))))

(assert (=> b!4856723 (= res!2073340 (not (isEmpty!29820 (left!40506 t!4677))))))

(assert (= (and d!1558853 (not res!2073341)) b!4856719))

(assert (= (and b!4856719 res!2073339) b!4856722))

(assert (= (and b!4856722 res!2073342) b!4856720))

(assert (= (and b!4856720 res!2073338) b!4856721))

(assert (= (and b!4856721 res!2073343) b!4856723))

(assert (= (and b!4856723 res!2073340) b!4856718))

(declare-fun m!5854512 () Bool)

(assert (=> b!4856722 m!5854512))

(declare-fun m!5854514 () Bool)

(assert (=> b!4856722 m!5854514))

(declare-fun m!5854516 () Bool)

(assert (=> b!4856720 m!5854516))

(assert (=> b!4856719 m!5854512))

(assert (=> b!4856719 m!5854514))

(declare-fun m!5854518 () Bool)

(assert (=> b!4856723 m!5854518))

(declare-fun m!5854520 () Bool)

(assert (=> b!4856721 m!5854520))

(declare-fun m!5854522 () Bool)

(assert (=> b!4856718 m!5854522))

(assert (=> start!507374 d!1558853))

(declare-fun d!1558859 () Bool)

(declare-fun c!826179 () Bool)

(assert (=> d!1558859 (= c!826179 ((_ is Node!14524) t!4677))))

(declare-fun e!3036420 () Bool)

(assert (=> d!1558859 (= (inv!71552 t!4677) e!3036420)))

(declare-fun b!4856724 () Bool)

(assert (=> b!4856724 (= e!3036420 (inv!71554 t!4677))))

(declare-fun b!4856725 () Bool)

(declare-fun e!3036421 () Bool)

(assert (=> b!4856725 (= e!3036420 e!3036421)))

(declare-fun res!2073344 () Bool)

(assert (=> b!4856725 (= res!2073344 (not ((_ is Leaf!24201) t!4677)))))

(assert (=> b!4856725 (=> res!2073344 e!3036421)))

(declare-fun b!4856726 () Bool)

(assert (=> b!4856726 (= e!3036421 (inv!71555 t!4677))))

(assert (= (and d!1558859 c!826179) b!4856724))

(assert (= (and d!1558859 (not c!826179)) b!4856725))

(assert (= (and b!4856725 (not res!2073344)) b!4856726))

(declare-fun m!5854524 () Bool)

(assert (=> b!4856724 m!5854524))

(declare-fun m!5854526 () Bool)

(assert (=> b!4856726 m!5854526))

(assert (=> start!507374 d!1558859))

(declare-fun b!4856765 () Bool)

(declare-fun res!2073362 () Bool)

(declare-fun lt!1991540 () List!55868)

(assert (=> b!4856765 (= res!2073362 (not (isEmpty!29821 lt!1991540)))))

(declare-fun e!3036447 () Bool)

(assert (=> b!4856765 (=> (not res!2073362) (not e!3036447))))

(declare-fun e!3036449 () Bool)

(assert (=> b!4856765 (= e!3036449 e!3036447)))

(declare-fun b!4856766 () Bool)

(declare-fun e!3036448 () Bool)

(declare-fun lt!1991541 () List!55868)

(assert (=> b!4856766 (= e!3036448 (= (last!393 (++!12129 lt!1991541 lt!1991540)) (last!393 lt!1991541)))))

(declare-fun b!4856767 () Bool)

(assert (=> b!4856767 (= e!3036447 (= (last!393 (++!12129 lt!1991541 lt!1991540)) (last!393 lt!1991540)))))

(declare-fun d!1558861 () Bool)

(declare-fun lt!1991539 () T!98602)

(assert (=> d!1558861 (= lt!1991539 (last!393 (list!17408 (right!40836 t!4677))))))

(declare-fun e!3036446 () T!98602)

(assert (=> d!1558861 (= lt!1991539 e!3036446)))

(declare-fun c!826191 () Bool)

(assert (=> d!1558861 (= c!826191 ((_ is Leaf!24201) (right!40836 t!4677)))))

(assert (=> d!1558861 (isBalanced!3930 (right!40836 t!4677))))

(assert (=> d!1558861 (= (last!394 (right!40836 t!4677)) lt!1991539)))

(declare-fun b!4856768 () Bool)

(assert (=> b!4856768 (= e!3036446 (last!394 (right!40836 (right!40836 t!4677))))))

(assert (=> b!4856768 (= lt!1991541 (list!17408 (left!40506 (right!40836 t!4677))))))

(assert (=> b!4856768 (= lt!1991540 (list!17408 (right!40836 (right!40836 t!4677))))))

(declare-fun lt!1991542 () Unit!145851)

(assert (=> b!4856768 (= lt!1991542 (lemmaLastOfConcatIsLastOfRhs!32 lt!1991541 lt!1991540))))

(declare-fun res!2073361 () Bool)

(assert (=> b!4856768 (= res!2073361 (isEmpty!29821 lt!1991540))))

(assert (=> b!4856768 (=> (not res!2073361) (not e!3036448))))

(declare-fun res!2073363 () Bool)

(assert (=> b!4856768 (= res!2073363 e!3036448)))

(assert (=> b!4856768 (=> res!2073363 e!3036449)))

(assert (=> b!4856768 e!3036449))

(declare-fun lt!1991543 () Unit!145851)

(assert (=> b!4856768 (= lt!1991543 lt!1991542)))

(declare-fun b!4856769 () Bool)

(declare-fun last!395 (IArray!29109) T!98602)

(assert (=> b!4856769 (= e!3036446 (last!395 (xs!17830 (right!40836 t!4677))))))

(assert (= (and d!1558861 c!826191) b!4856769))

(assert (= (and d!1558861 (not c!826191)) b!4856768))

(assert (= (and b!4856768 res!2073361) b!4856766))

(assert (= (and b!4856768 (not res!2073363)) b!4856765))

(assert (= (and b!4856765 res!2073362) b!4856767))

(declare-fun m!5854564 () Bool)

(assert (=> b!4856766 m!5854564))

(assert (=> b!4856766 m!5854564))

(declare-fun m!5854566 () Bool)

(assert (=> b!4856766 m!5854566))

(declare-fun m!5854568 () Bool)

(assert (=> b!4856766 m!5854568))

(declare-fun m!5854570 () Bool)

(assert (=> b!4856769 m!5854570))

(assert (=> d!1558861 m!5854488))

(assert (=> d!1558861 m!5854488))

(declare-fun m!5854572 () Bool)

(assert (=> d!1558861 m!5854572))

(assert (=> d!1558861 m!5854520))

(declare-fun m!5854574 () Bool)

(assert (=> b!4856768 m!5854574))

(declare-fun m!5854576 () Bool)

(assert (=> b!4856768 m!5854576))

(declare-fun m!5854578 () Bool)

(assert (=> b!4856768 m!5854578))

(declare-fun m!5854580 () Bool)

(assert (=> b!4856768 m!5854580))

(declare-fun m!5854582 () Bool)

(assert (=> b!4856768 m!5854582))

(assert (=> b!4856767 m!5854564))

(assert (=> b!4856767 m!5854564))

(assert (=> b!4856767 m!5854566))

(declare-fun m!5854584 () Bool)

(assert (=> b!4856767 m!5854584))

(assert (=> b!4856765 m!5854574))

(assert (=> b!4856685 d!1558861))

(declare-fun d!1558877 () Bool)

(assert (=> d!1558877 (= (isEmpty!29821 lt!1991515) ((_ is Nil!55744) lt!1991515))))

(assert (=> b!4856685 d!1558877))

(declare-fun d!1558879 () Bool)

(declare-fun e!3036464 () Bool)

(assert (=> d!1558879 e!3036464))

(declare-fun res!2073391 () Bool)

(assert (=> d!1558879 (=> res!2073391 e!3036464)))

(declare-fun e!3036465 () Bool)

(assert (=> d!1558879 (= res!2073391 e!3036465)))

(declare-fun res!2073390 () Bool)

(assert (=> d!1558879 (=> (not res!2073390) (not e!3036465))))

(assert (=> d!1558879 (= res!2073390 (isEmpty!29821 lt!1991515))))

(declare-fun lt!1991546 () Unit!145851)

(declare-fun choose!35557 (List!55868 List!55868) Unit!145851)

(assert (=> d!1558879 (= lt!1991546 (choose!35557 lt!1991517 lt!1991515))))

(assert (=> d!1558879 (not (isEmpty!29821 (++!12129 lt!1991517 lt!1991515)))))

(assert (=> d!1558879 (= (lemmaLastOfConcatIsLastOfRhs!32 lt!1991517 lt!1991515) lt!1991546)))

(declare-fun b!4856797 () Bool)

(assert (=> b!4856797 (= e!3036465 (= (last!393 (++!12129 lt!1991517 lt!1991515)) (last!393 lt!1991517)))))

(declare-fun b!4856798 () Bool)

(declare-fun e!3036466 () Bool)

(assert (=> b!4856798 (= e!3036464 e!3036466)))

(declare-fun res!2073389 () Bool)

(assert (=> b!4856798 (=> (not res!2073389) (not e!3036466))))

(assert (=> b!4856798 (= res!2073389 (not (isEmpty!29821 lt!1991515)))))

(declare-fun b!4856799 () Bool)

(assert (=> b!4856799 (= e!3036466 (= (last!393 (++!12129 lt!1991517 lt!1991515)) (last!393 lt!1991515)))))

(assert (= (and d!1558879 res!2073390) b!4856797))

(assert (= (and d!1558879 (not res!2073391)) b!4856798))

(assert (= (and b!4856798 res!2073389) b!4856799))

(assert (=> d!1558879 m!5854484))

(declare-fun m!5854602 () Bool)

(assert (=> d!1558879 m!5854602))

(assert (=> d!1558879 m!5854464))

(assert (=> d!1558879 m!5854464))

(declare-fun m!5854604 () Bool)

(assert (=> d!1558879 m!5854604))

(assert (=> b!4856797 m!5854464))

(assert (=> b!4856797 m!5854464))

(assert (=> b!4856797 m!5854466))

(assert (=> b!4856797 m!5854468))

(assert (=> b!4856798 m!5854484))

(assert (=> b!4856799 m!5854464))

(assert (=> b!4856799 m!5854464))

(assert (=> b!4856799 m!5854466))

(assert (=> b!4856799 m!5854496))

(assert (=> b!4856685 d!1558879))

(declare-fun b!4856809 () Bool)

(declare-fun e!3036471 () List!55868)

(declare-fun e!3036472 () List!55868)

(assert (=> b!4856809 (= e!3036471 e!3036472)))

(declare-fun c!826198 () Bool)

(assert (=> b!4856809 (= c!826198 ((_ is Leaf!24201) (right!40836 t!4677)))))

(declare-fun b!4856808 () Bool)

(assert (=> b!4856808 (= e!3036471 Nil!55744)))

(declare-fun d!1558885 () Bool)

(declare-fun c!826197 () Bool)

(assert (=> d!1558885 (= c!826197 ((_ is Empty!14524) (right!40836 t!4677)))))

(assert (=> d!1558885 (= (list!17408 (right!40836 t!4677)) e!3036471)))

(declare-fun b!4856810 () Bool)

(declare-fun list!17409 (IArray!29109) List!55868)

(assert (=> b!4856810 (= e!3036472 (list!17409 (xs!17830 (right!40836 t!4677))))))

(declare-fun b!4856811 () Bool)

(assert (=> b!4856811 (= e!3036472 (++!12129 (list!17408 (left!40506 (right!40836 t!4677))) (list!17408 (right!40836 (right!40836 t!4677)))))))

(assert (= (and d!1558885 c!826197) b!4856808))

(assert (= (and d!1558885 (not c!826197)) b!4856809))

(assert (= (and b!4856809 c!826198) b!4856810))

(assert (= (and b!4856809 (not c!826198)) b!4856811))

(declare-fun m!5854606 () Bool)

(assert (=> b!4856810 m!5854606))

(assert (=> b!4856811 m!5854576))

(assert (=> b!4856811 m!5854580))

(assert (=> b!4856811 m!5854576))

(assert (=> b!4856811 m!5854580))

(declare-fun m!5854608 () Bool)

(assert (=> b!4856811 m!5854608))

(assert (=> b!4856685 d!1558885))

(declare-fun b!4856813 () Bool)

(declare-fun e!3036473 () List!55868)

(declare-fun e!3036474 () List!55868)

(assert (=> b!4856813 (= e!3036473 e!3036474)))

(declare-fun c!826200 () Bool)

(assert (=> b!4856813 (= c!826200 ((_ is Leaf!24201) (left!40506 t!4677)))))

(declare-fun b!4856812 () Bool)

(assert (=> b!4856812 (= e!3036473 Nil!55744)))

(declare-fun d!1558887 () Bool)

(declare-fun c!826199 () Bool)

(assert (=> d!1558887 (= c!826199 ((_ is Empty!14524) (left!40506 t!4677)))))

(assert (=> d!1558887 (= (list!17408 (left!40506 t!4677)) e!3036473)))

(declare-fun b!4856814 () Bool)

(assert (=> b!4856814 (= e!3036474 (list!17409 (xs!17830 (left!40506 t!4677))))))

(declare-fun b!4856815 () Bool)

(assert (=> b!4856815 (= e!3036474 (++!12129 (list!17408 (left!40506 (left!40506 t!4677))) (list!17408 (right!40836 (left!40506 t!4677)))))))

(assert (= (and d!1558887 c!826199) b!4856812))

(assert (= (and d!1558887 (not c!826199)) b!4856813))

(assert (= (and b!4856813 c!826200) b!4856814))

(assert (= (and b!4856813 (not c!826200)) b!4856815))

(declare-fun m!5854610 () Bool)

(assert (=> b!4856814 m!5854610))

(declare-fun m!5854612 () Bool)

(assert (=> b!4856815 m!5854612))

(declare-fun m!5854614 () Bool)

(assert (=> b!4856815 m!5854614))

(assert (=> b!4856815 m!5854612))

(assert (=> b!4856815 m!5854614))

(declare-fun m!5854616 () Bool)

(assert (=> b!4856815 m!5854616))

(assert (=> b!4856685 d!1558887))

(declare-fun b!4856817 () Bool)

(declare-fun e!3036475 () List!55868)

(declare-fun e!3036476 () List!55868)

(assert (=> b!4856817 (= e!3036475 e!3036476)))

(declare-fun c!826202 () Bool)

(assert (=> b!4856817 (= c!826202 ((_ is Leaf!24201) t!4677))))

(declare-fun b!4856816 () Bool)

(assert (=> b!4856816 (= e!3036475 Nil!55744)))

(declare-fun d!1558889 () Bool)

(declare-fun c!826201 () Bool)

(assert (=> d!1558889 (= c!826201 ((_ is Empty!14524) t!4677))))

(assert (=> d!1558889 (= (list!17408 t!4677) e!3036475)))

(declare-fun b!4856818 () Bool)

(assert (=> b!4856818 (= e!3036476 (list!17409 (xs!17830 t!4677)))))

(declare-fun b!4856819 () Bool)

(assert (=> b!4856819 (= e!3036476 (++!12129 (list!17408 (left!40506 t!4677)) (list!17408 (right!40836 t!4677))))))

(assert (= (and d!1558889 c!826201) b!4856816))

(assert (= (and d!1558889 (not c!826201)) b!4856817))

(assert (= (and b!4856817 c!826202) b!4856818))

(assert (= (and b!4856817 (not c!826202)) b!4856819))

(declare-fun m!5854618 () Bool)

(assert (=> b!4856818 m!5854618))

(assert (=> b!4856819 m!5854486))

(assert (=> b!4856819 m!5854488))

(assert (=> b!4856819 m!5854486))

(assert (=> b!4856819 m!5854488))

(declare-fun m!5854620 () Bool)

(assert (=> b!4856819 m!5854620))

(assert (=> b!4856685 d!1558889))

(declare-fun d!1558891 () Bool)

(assert (=> d!1558891 (= (isEmpty!29821 (list!17408 t!4677)) ((_ is Nil!55744) (list!17408 t!4677)))))

(assert (=> b!4856685 d!1558891))

(declare-fun d!1558893 () Bool)

(declare-fun lt!1991559 () T!98602)

(declare-fun contains!19361 (List!55868 T!98602) Bool)

(assert (=> d!1558893 (contains!19361 (++!12129 lt!1991517 lt!1991515) lt!1991559)))

(declare-fun e!3036487 () T!98602)

(assert (=> d!1558893 (= lt!1991559 e!3036487)))

(declare-fun c!826207 () Bool)

(assert (=> d!1558893 (= c!826207 (and ((_ is Cons!55744) (++!12129 lt!1991517 lt!1991515)) ((_ is Nil!55744) (t!363426 (++!12129 lt!1991517 lt!1991515)))))))

(assert (=> d!1558893 (not (isEmpty!29821 (++!12129 lt!1991517 lt!1991515)))))

(assert (=> d!1558893 (= (last!393 (++!12129 lt!1991517 lt!1991515)) lt!1991559)))

(declare-fun b!4856834 () Bool)

(assert (=> b!4856834 (= e!3036487 (h!62192 (++!12129 lt!1991517 lt!1991515)))))

(declare-fun b!4856835 () Bool)

(assert (=> b!4856835 (= e!3036487 (last!393 (t!363426 (++!12129 lt!1991517 lt!1991515))))))

(assert (= (and d!1558893 c!826207) b!4856834))

(assert (= (and d!1558893 (not c!826207)) b!4856835))

(assert (=> d!1558893 m!5854464))

(declare-fun m!5854622 () Bool)

(assert (=> d!1558893 m!5854622))

(assert (=> d!1558893 m!5854464))

(assert (=> d!1558893 m!5854604))

(declare-fun m!5854624 () Bool)

(assert (=> b!4856835 m!5854624))

(assert (=> b!4856686 d!1558893))

(declare-fun b!4856864 () Bool)

(declare-fun lt!1991567 () List!55868)

(declare-fun e!3036503 () Bool)

(assert (=> b!4856864 (= e!3036503 (or (not (= lt!1991515 Nil!55744)) (= lt!1991567 lt!1991517)))))

(declare-fun b!4856861 () Bool)

(declare-fun e!3036502 () List!55868)

(assert (=> b!4856861 (= e!3036502 lt!1991515)))

(declare-fun b!4856862 () Bool)

(assert (=> b!4856862 (= e!3036502 (Cons!55744 (h!62192 lt!1991517) (++!12129 (t!363426 lt!1991517) lt!1991515)))))

(declare-fun b!4856863 () Bool)

(declare-fun res!2073405 () Bool)

(assert (=> b!4856863 (=> (not res!2073405) (not e!3036503))))

(declare-fun size!36716 (List!55868) Int)

(assert (=> b!4856863 (= res!2073405 (= (size!36716 lt!1991567) (+ (size!36716 lt!1991517) (size!36716 lt!1991515))))))

(declare-fun d!1558895 () Bool)

(assert (=> d!1558895 e!3036503))

(declare-fun res!2073406 () Bool)

(assert (=> d!1558895 (=> (not res!2073406) (not e!3036503))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9933 (List!55868) (InoxSet T!98602))

(assert (=> d!1558895 (= res!2073406 (= (content!9933 lt!1991567) ((_ map or) (content!9933 lt!1991517) (content!9933 lt!1991515))))))

(assert (=> d!1558895 (= lt!1991567 e!3036502)))

(declare-fun c!826217 () Bool)

(assert (=> d!1558895 (= c!826217 ((_ is Nil!55744) lt!1991517))))

(assert (=> d!1558895 (= (++!12129 lt!1991517 lt!1991515) lt!1991567)))

(assert (= (and d!1558895 c!826217) b!4856861))

(assert (= (and d!1558895 (not c!826217)) b!4856862))

(assert (= (and d!1558895 res!2073406) b!4856863))

(assert (= (and b!4856863 res!2073405) b!4856864))

(declare-fun m!5854658 () Bool)

(assert (=> b!4856862 m!5854658))

(declare-fun m!5854662 () Bool)

(assert (=> b!4856863 m!5854662))

(declare-fun m!5854664 () Bool)

(assert (=> b!4856863 m!5854664))

(declare-fun m!5854666 () Bool)

(assert (=> b!4856863 m!5854666))

(declare-fun m!5854668 () Bool)

(assert (=> d!1558895 m!5854668))

(declare-fun m!5854670 () Bool)

(assert (=> d!1558895 m!5854670))

(declare-fun m!5854672 () Bool)

(assert (=> d!1558895 m!5854672))

(assert (=> b!4856686 d!1558895))

(declare-fun d!1558903 () Bool)

(declare-fun lt!1991568 () T!98602)

(assert (=> d!1558903 (contains!19361 lt!1991517 lt!1991568)))

(declare-fun e!3036506 () T!98602)

(assert (=> d!1558903 (= lt!1991568 e!3036506)))

(declare-fun c!826220 () Bool)

(assert (=> d!1558903 (= c!826220 (and ((_ is Cons!55744) lt!1991517) ((_ is Nil!55744) (t!363426 lt!1991517))))))

(assert (=> d!1558903 (not (isEmpty!29821 lt!1991517))))

(assert (=> d!1558903 (= (last!393 lt!1991517) lt!1991568)))

(declare-fun b!4856869 () Bool)

(assert (=> b!4856869 (= e!3036506 (h!62192 lt!1991517))))

(declare-fun b!4856870 () Bool)

(assert (=> b!4856870 (= e!3036506 (last!393 (t!363426 lt!1991517)))))

(assert (= (and d!1558903 c!826220) b!4856869))

(assert (= (and d!1558903 (not c!826220)) b!4856870))

(declare-fun m!5854674 () Bool)

(assert (=> d!1558903 m!5854674))

(declare-fun m!5854676 () Bool)

(assert (=> d!1558903 m!5854676))

(declare-fun m!5854678 () Bool)

(assert (=> b!4856870 m!5854678))

(assert (=> b!4856686 d!1558903))

(assert (=> b!4856684 d!1558893))

(assert (=> b!4856684 d!1558895))

(declare-fun d!1558905 () Bool)

(declare-fun lt!1991569 () T!98602)

(assert (=> d!1558905 (contains!19361 lt!1991515 lt!1991569)))

(declare-fun e!3036507 () T!98602)

(assert (=> d!1558905 (= lt!1991569 e!3036507)))

(declare-fun c!826221 () Bool)

(assert (=> d!1558905 (= c!826221 (and ((_ is Cons!55744) lt!1991515) ((_ is Nil!55744) (t!363426 lt!1991515))))))

(assert (=> d!1558905 (not (isEmpty!29821 lt!1991515))))

(assert (=> d!1558905 (= (last!393 lt!1991515) lt!1991569)))

(declare-fun b!4856871 () Bool)

(assert (=> b!4856871 (= e!3036507 (h!62192 lt!1991515))))

(declare-fun b!4856872 () Bool)

(assert (=> b!4856872 (= e!3036507 (last!393 (t!363426 lt!1991515)))))

(assert (= (and d!1558905 c!826221) b!4856871))

(assert (= (and d!1558905 (not c!826221)) b!4856872))

(declare-fun m!5854680 () Bool)

(assert (=> d!1558905 m!5854680))

(assert (=> d!1558905 m!5854484))

(declare-fun m!5854682 () Bool)

(assert (=> b!4856872 m!5854682))

(assert (=> b!4856684 d!1558905))

(declare-fun d!1558907 () Bool)

(declare-fun lt!1991574 () Bool)

(assert (=> d!1558907 (= lt!1991574 (isEmpty!29821 (list!17408 t!4677)))))

(declare-fun size!36717 (Conc!14524) Int)

(assert (=> d!1558907 (= lt!1991574 (= (size!36717 t!4677) 0))))

(assert (=> d!1558907 (= (isEmpty!29820 t!4677) lt!1991574)))

(declare-fun bs!1173758 () Bool)

(assert (= bs!1173758 d!1558907))

(assert (=> bs!1173758 m!5854478))

(assert (=> bs!1173758 m!5854478))

(assert (=> bs!1173758 m!5854480))

(declare-fun m!5854684 () Bool)

(assert (=> bs!1173758 m!5854684))

(assert (=> b!4856679 d!1558907))

(declare-fun d!1558909 () Bool)

(assert (=> d!1558909 (= (inv!71553 (xs!17830 t!4677)) (<= (size!36716 (innerList!14612 (xs!17830 t!4677))) 2147483647))))

(declare-fun bs!1173759 () Bool)

(assert (= bs!1173759 d!1558909))

(declare-fun m!5854686 () Bool)

(assert (=> bs!1173759 m!5854686))

(assert (=> b!4856683 d!1558909))

(declare-fun tp!1366398 () Bool)

(declare-fun b!4856894 () Bool)

(declare-fun tp!1366399 () Bool)

(declare-fun e!3036524 () Bool)

(assert (=> b!4856894 (= e!3036524 (and (inv!71552 (left!40506 (left!40506 t!4677))) tp!1366399 (inv!71552 (right!40836 (left!40506 t!4677))) tp!1366398))))

(declare-fun b!4856896 () Bool)

(declare-fun e!3036523 () Bool)

(declare-fun tp!1366400 () Bool)

(assert (=> b!4856896 (= e!3036523 tp!1366400)))

(declare-fun b!4856895 () Bool)

(assert (=> b!4856895 (= e!3036524 (and (inv!71553 (xs!17830 (left!40506 t!4677))) e!3036523))))

(assert (=> b!4856680 (= tp!1366391 (and (inv!71552 (left!40506 t!4677)) e!3036524))))

(assert (= (and b!4856680 ((_ is Node!14524) (left!40506 t!4677))) b!4856894))

(assert (= b!4856895 b!4856896))

(assert (= (and b!4856680 ((_ is Leaf!24201) (left!40506 t!4677))) b!4856895))

(declare-fun m!5854694 () Bool)

(assert (=> b!4856894 m!5854694))

(declare-fun m!5854696 () Bool)

(assert (=> b!4856894 m!5854696))

(declare-fun m!5854698 () Bool)

(assert (=> b!4856895 m!5854698))

(assert (=> b!4856680 m!5854492))

(declare-fun b!4856901 () Bool)

(declare-fun tp!1366401 () Bool)

(declare-fun tp!1366402 () Bool)

(declare-fun e!3036528 () Bool)

(assert (=> b!4856901 (= e!3036528 (and (inv!71552 (left!40506 (right!40836 t!4677))) tp!1366402 (inv!71552 (right!40836 (right!40836 t!4677))) tp!1366401))))

(declare-fun b!4856903 () Bool)

(declare-fun e!3036525 () Bool)

(declare-fun tp!1366403 () Bool)

(assert (=> b!4856903 (= e!3036525 tp!1366403)))

(declare-fun b!4856902 () Bool)

(assert (=> b!4856902 (= e!3036528 (and (inv!71553 (xs!17830 (right!40836 t!4677))) e!3036525))))

(assert (=> b!4856680 (= tp!1366390 (and (inv!71552 (right!40836 t!4677)) e!3036528))))

(assert (= (and b!4856680 ((_ is Node!14524) (right!40836 t!4677))) b!4856901))

(assert (= b!4856902 b!4856903))

(assert (= (and b!4856680 ((_ is Leaf!24201) (right!40836 t!4677))) b!4856902))

(declare-fun m!5854700 () Bool)

(assert (=> b!4856901 m!5854700))

(declare-fun m!5854702 () Bool)

(assert (=> b!4856901 m!5854702))

(declare-fun m!5854704 () Bool)

(assert (=> b!4856902 m!5854704))

(assert (=> b!4856680 m!5854494))

(declare-fun b!4856912 () Bool)

(declare-fun e!3036533 () Bool)

(declare-fun tp_is_empty!35505 () Bool)

(declare-fun tp!1366412 () Bool)

(assert (=> b!4856912 (= e!3036533 (and tp_is_empty!35505 tp!1366412))))

(assert (=> b!4856687 (= tp!1366389 e!3036533)))

(assert (= (and b!4856687 ((_ is Cons!55744) (innerList!14612 (xs!17830 t!4677)))) b!4856912))

(check-sat (not b!4856680) (not b!4856726) tp_is_empty!35505 (not d!1558895) (not b!4856902) (not b!4856863) (not b!4856896) (not b!4856872) (not b!4856862) (not d!1558879) (not b!4856894) (not b!4856718) (not b!4856797) (not b!4856903) (not b!4856818) (not b!4856819) (not b!4856694) (not b!4856912) (not b!4856720) (not d!1558905) (not b!4856798) (not b!4856769) (not b!4856768) (not b!4856723) (not b!4856697) (not b!4856815) (not d!1558893) (not b!4856835) (not b!4856767) (not d!1558907) (not b!4856699) (not b!4856722) (not b!4856721) (not b!4856766) (not b!4856870) (not b!4856765) (not b!4856719) (not b!4856814) (not d!1558909) (not b!4856810) (not d!1558861) (not d!1558903) (not b!4856895) (not b!4856724) (not b!4856901) (not b!4856696) (not b!4856811) (not b!4856799))
(check-sat)
