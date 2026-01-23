; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14186 () Bool)

(assert start!14186)

(declare-fun b!135702 () Bool)

(declare-fun e!78829 () Bool)

(declare-datatypes ((B!869 0))(
  ( (B!870 (val!920 Int)) )
))
(declare-datatypes ((List!2238 0))(
  ( (Nil!2232) (Cons!2232 (h!7629 B!869) (t!22824 List!2238)) )
))
(declare-fun l1!1230 () List!2238)

(declare-fun isEmpty!874 (List!2238) Bool)

(assert (=> b!135702 (= e!78829 (not (isEmpty!874 l1!1230)))))

(declare-fun res!63596 () Bool)

(declare-fun e!78824 () Bool)

(assert (=> start!14186 (=> (not res!63596) (not e!78824))))

(declare-fun sub!16 () List!2238)

(declare-fun lt!40776 () List!2238)

(declare-fun subseq!79 (List!2238 List!2238) Bool)

(assert (=> start!14186 (= res!63596 (subseq!79 sub!16 lt!40776))))

(declare-fun l2!1199 () List!2238)

(declare-fun ++!506 (List!2238 List!2238) List!2238)

(assert (=> start!14186 (= lt!40776 (++!506 l1!1230 l2!1199))))

(assert (=> start!14186 e!78824))

(declare-fun e!78826 () Bool)

(assert (=> start!14186 e!78826))

(declare-fun e!78823 () Bool)

(assert (=> start!14186 e!78823))

(declare-fun e!78822 () Bool)

(assert (=> start!14186 e!78822))

(declare-fun e!78825 () Bool)

(assert (=> start!14186 e!78825))

(declare-fun b!135703 () Bool)

(declare-fun tp_is_empty!1513 () Bool)

(declare-fun tp!71020 () Bool)

(assert (=> b!135703 (= e!78823 (and tp_is_empty!1513 tp!71020))))

(declare-fun l3!231 () List!2238)

(declare-fun b!135704 () Bool)

(declare-fun e!78828 () Bool)

(assert (=> b!135704 (= e!78828 (not (subseq!79 sub!16 (++!506 (++!506 l1!1230 l3!231) l2!1199))))))

(declare-fun lt!40778 () List!2238)

(assert (=> b!135704 (subseq!79 (t!22824 sub!16) (++!506 (++!506 lt!40778 l3!231) l2!1199))))

(declare-datatypes ((Unit!1768 0))(
  ( (Unit!1769) )
))
(declare-fun lt!40775 () Unit!1768)

(declare-fun lemmaBiggerSndListPreservesSubSeq!14 (List!2238 List!2238 List!2238 List!2238) Unit!1768)

(assert (=> b!135704 (= lt!40775 (lemmaBiggerSndListPreservesSubSeq!14 (t!22824 sub!16) lt!40778 l2!1199 l3!231))))

(declare-fun b!135705 () Bool)

(declare-fun res!63595 () Bool)

(assert (=> b!135705 (=> (not res!63595) (not e!78824))))

(get-info :version)

(assert (=> b!135705 (= res!63595 (not ((_ is Nil!2232) sub!16)))))

(declare-fun b!135706 () Bool)

(declare-fun tp!71019 () Bool)

(assert (=> b!135706 (= e!78822 (and tp_is_empty!1513 tp!71019))))

(declare-fun b!135707 () Bool)

(declare-fun tp!71021 () Bool)

(assert (=> b!135707 (= e!78826 (and tp_is_empty!1513 tp!71021))))

(declare-fun b!135708 () Bool)

(declare-fun tp!71022 () Bool)

(assert (=> b!135708 (= e!78825 (and tp_is_empty!1513 tp!71022))))

(declare-fun b!135709 () Bool)

(declare-fun e!78827 () Bool)

(assert (=> b!135709 (= e!78824 e!78827)))

(declare-fun res!63598 () Bool)

(assert (=> b!135709 (=> (not res!63598) (not e!78827))))

(assert (=> b!135709 (= res!63598 e!78829)))

(declare-fun res!63599 () Bool)

(assert (=> b!135709 (=> res!63599 e!78829)))

(declare-fun lt!40777 () Bool)

(assert (=> b!135709 (= res!63599 lt!40777)))

(assert (=> b!135709 (= lt!40777 (not ((_ is Cons!2232) lt!40776)))))

(declare-fun b!135710 () Bool)

(declare-fun res!63597 () Bool)

(assert (=> b!135710 (=> (not res!63597) (not e!78827))))

(assert (=> b!135710 (= res!63597 (and (not lt!40777) (= (h!7629 sub!16) (h!7629 lt!40776))))))

(declare-fun b!135711 () Bool)

(assert (=> b!135711 (= e!78827 e!78828)))

(declare-fun res!63600 () Bool)

(assert (=> b!135711 (=> (not res!63600) (not e!78828))))

(assert (=> b!135711 (= res!63600 (subseq!79 (t!22824 sub!16) (++!506 lt!40778 l2!1199)))))

(declare-fun tail!300 (List!2238) List!2238)

(assert (=> b!135711 (= lt!40778 (tail!300 l1!1230))))

(declare-fun b!135712 () Bool)

(declare-fun res!63594 () Bool)

(assert (=> b!135712 (=> (not res!63594) (not e!78827))))

(assert (=> b!135712 (= res!63594 (subseq!79 (t!22824 sub!16) (t!22824 lt!40776)))))

(assert (= (and start!14186 res!63596) b!135705))

(assert (= (and b!135705 res!63595) b!135709))

(assert (= (and b!135709 (not res!63599)) b!135702))

(assert (= (and b!135709 res!63598) b!135710))

(assert (= (and b!135710 res!63597) b!135712))

(assert (= (and b!135712 res!63594) b!135711))

(assert (= (and b!135711 res!63600) b!135704))

(assert (= (and start!14186 ((_ is Cons!2232) sub!16)) b!135707))

(assert (= (and start!14186 ((_ is Cons!2232) l3!231)) b!135703))

(assert (= (and start!14186 ((_ is Cons!2232) l1!1230)) b!135706))

(assert (= (and start!14186 ((_ is Cons!2232) l2!1199)) b!135708))

(declare-fun m!120381 () Bool)

(assert (=> b!135711 m!120381))

(assert (=> b!135711 m!120381))

(declare-fun m!120383 () Bool)

(assert (=> b!135711 m!120383))

(declare-fun m!120385 () Bool)

(assert (=> b!135711 m!120385))

(declare-fun m!120387 () Bool)

(assert (=> b!135704 m!120387))

(declare-fun m!120389 () Bool)

(assert (=> b!135704 m!120389))

(declare-fun m!120391 () Bool)

(assert (=> b!135704 m!120391))

(assert (=> b!135704 m!120391))

(declare-fun m!120393 () Bool)

(assert (=> b!135704 m!120393))

(assert (=> b!135704 m!120389))

(declare-fun m!120395 () Bool)

(assert (=> b!135704 m!120395))

(declare-fun m!120397 () Bool)

(assert (=> b!135704 m!120397))

(declare-fun m!120399 () Bool)

(assert (=> b!135704 m!120399))

(assert (=> b!135704 m!120387))

(assert (=> b!135704 m!120397))

(declare-fun m!120401 () Bool)

(assert (=> b!135712 m!120401))

(declare-fun m!120403 () Bool)

(assert (=> b!135702 m!120403))

(declare-fun m!120405 () Bool)

(assert (=> start!14186 m!120405))

(declare-fun m!120407 () Bool)

(assert (=> start!14186 m!120407))

(check-sat (not b!135712) (not b!135706) (not b!135703) (not start!14186) (not b!135708) (not b!135704) (not b!135711) tp_is_empty!1513 (not b!135707) (not b!135702))
(check-sat)
(get-model)

(declare-fun b!135730 () Bool)

(declare-fun e!78844 () Bool)

(declare-fun e!78842 () Bool)

(assert (=> b!135730 (= e!78844 e!78842)))

(declare-fun res!63615 () Bool)

(assert (=> b!135730 (=> res!63615 e!78842)))

(declare-fun e!78845 () Bool)

(assert (=> b!135730 (= res!63615 e!78845)))

(declare-fun res!63614 () Bool)

(assert (=> b!135730 (=> (not res!63614) (not e!78845))))

(assert (=> b!135730 (= res!63614 (= (h!7629 (t!22824 sub!16)) (h!7629 (t!22824 lt!40776))))))

(declare-fun b!135729 () Bool)

(declare-fun e!78843 () Bool)

(assert (=> b!135729 (= e!78843 e!78844)))

(declare-fun res!63613 () Bool)

(assert (=> b!135729 (=> (not res!63613) (not e!78844))))

(assert (=> b!135729 (= res!63613 ((_ is Cons!2232) (t!22824 lt!40776)))))

(declare-fun b!135731 () Bool)

(assert (=> b!135731 (= e!78845 (subseq!79 (t!22824 (t!22824 sub!16)) (t!22824 (t!22824 lt!40776))))))

(declare-fun d!32523 () Bool)

(declare-fun res!63616 () Bool)

(assert (=> d!32523 (=> res!63616 e!78843)))

(assert (=> d!32523 (= res!63616 ((_ is Nil!2232) (t!22824 sub!16)))))

(assert (=> d!32523 (= (subseq!79 (t!22824 sub!16) (t!22824 lt!40776)) e!78843)))

(declare-fun b!135732 () Bool)

(assert (=> b!135732 (= e!78842 (subseq!79 (t!22824 sub!16) (t!22824 (t!22824 lt!40776))))))

(assert (= (and d!32523 (not res!63616)) b!135729))

(assert (= (and b!135729 res!63613) b!135730))

(assert (= (and b!135730 res!63614) b!135731))

(assert (= (and b!135730 (not res!63615)) b!135732))

(declare-fun m!120409 () Bool)

(assert (=> b!135731 m!120409))

(declare-fun m!120411 () Bool)

(assert (=> b!135732 m!120411))

(assert (=> b!135712 d!32523))

(declare-fun d!32525 () Bool)

(assert (=> d!32525 (= (isEmpty!874 l1!1230) ((_ is Nil!2232) l1!1230))))

(assert (=> b!135702 d!32525))

(declare-fun b!135742 () Bool)

(declare-fun e!78852 () Bool)

(declare-fun e!78850 () Bool)

(assert (=> b!135742 (= e!78852 e!78850)))

(declare-fun res!63623 () Bool)

(assert (=> b!135742 (=> res!63623 e!78850)))

(declare-fun e!78853 () Bool)

(assert (=> b!135742 (= res!63623 e!78853)))

(declare-fun res!63622 () Bool)

(assert (=> b!135742 (=> (not res!63622) (not e!78853))))

(assert (=> b!135742 (= res!63622 (= (h!7629 (t!22824 sub!16)) (h!7629 (++!506 lt!40778 l2!1199))))))

(declare-fun b!135741 () Bool)

(declare-fun e!78851 () Bool)

(assert (=> b!135741 (= e!78851 e!78852)))

(declare-fun res!63621 () Bool)

(assert (=> b!135741 (=> (not res!63621) (not e!78852))))

(assert (=> b!135741 (= res!63621 ((_ is Cons!2232) (++!506 lt!40778 l2!1199)))))

(declare-fun b!135743 () Bool)

(assert (=> b!135743 (= e!78853 (subseq!79 (t!22824 (t!22824 sub!16)) (t!22824 (++!506 lt!40778 l2!1199))))))

(declare-fun d!32529 () Bool)

(declare-fun res!63624 () Bool)

(assert (=> d!32529 (=> res!63624 e!78851)))

(assert (=> d!32529 (= res!63624 ((_ is Nil!2232) (t!22824 sub!16)))))

(assert (=> d!32529 (= (subseq!79 (t!22824 sub!16) (++!506 lt!40778 l2!1199)) e!78851)))

(declare-fun b!135744 () Bool)

(assert (=> b!135744 (= e!78850 (subseq!79 (t!22824 sub!16) (t!22824 (++!506 lt!40778 l2!1199))))))

(assert (= (and d!32529 (not res!63624)) b!135741))

(assert (= (and b!135741 res!63621) b!135742))

(assert (= (and b!135742 res!63622) b!135743))

(assert (= (and b!135742 (not res!63623)) b!135744))

(declare-fun m!120441 () Bool)

(assert (=> b!135743 m!120441))

(declare-fun m!120443 () Bool)

(assert (=> b!135744 m!120443))

(assert (=> b!135711 d!32529))

(declare-fun lt!40788 () List!2238)

(declare-fun e!78858 () Bool)

(declare-fun b!135756 () Bool)

(assert (=> b!135756 (= e!78858 (or (not (= l2!1199 Nil!2232)) (= lt!40788 lt!40778)))))

(declare-fun b!135753 () Bool)

(declare-fun e!78859 () List!2238)

(assert (=> b!135753 (= e!78859 l2!1199)))

(declare-fun b!135754 () Bool)

(assert (=> b!135754 (= e!78859 (Cons!2232 (h!7629 lt!40778) (++!506 (t!22824 lt!40778) l2!1199)))))

(declare-fun d!32533 () Bool)

(assert (=> d!32533 e!78858))

(declare-fun res!63629 () Bool)

(assert (=> d!32533 (=> (not res!63629) (not e!78858))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!333 (List!2238) (InoxSet B!869))

(assert (=> d!32533 (= res!63629 (= (content!333 lt!40788) ((_ map or) (content!333 lt!40778) (content!333 l2!1199))))))

(assert (=> d!32533 (= lt!40788 e!78859)))

(declare-fun c!28857 () Bool)

(assert (=> d!32533 (= c!28857 ((_ is Nil!2232) lt!40778))))

(assert (=> d!32533 (= (++!506 lt!40778 l2!1199) lt!40788)))

(declare-fun b!135755 () Bool)

(declare-fun res!63630 () Bool)

(assert (=> b!135755 (=> (not res!63630) (not e!78858))))

(declare-fun size!2021 (List!2238) Int)

(assert (=> b!135755 (= res!63630 (= (size!2021 lt!40788) (+ (size!2021 lt!40778) (size!2021 l2!1199))))))

(assert (= (and d!32533 c!28857) b!135753))

(assert (= (and d!32533 (not c!28857)) b!135754))

(assert (= (and d!32533 res!63629) b!135755))

(assert (= (and b!135755 res!63630) b!135756))

(declare-fun m!120447 () Bool)

(assert (=> b!135754 m!120447))

(declare-fun m!120449 () Bool)

(assert (=> d!32533 m!120449))

(declare-fun m!120451 () Bool)

(assert (=> d!32533 m!120451))

(declare-fun m!120453 () Bool)

(assert (=> d!32533 m!120453))

(declare-fun m!120455 () Bool)

(assert (=> b!135755 m!120455))

(declare-fun m!120457 () Bool)

(assert (=> b!135755 m!120457))

(declare-fun m!120459 () Bool)

(assert (=> b!135755 m!120459))

(assert (=> b!135711 d!32533))

(declare-fun d!32537 () Bool)

(assert (=> d!32537 (= (tail!300 l1!1230) (t!22824 l1!1230))))

(assert (=> b!135711 d!32537))

(declare-fun b!135768 () Bool)

(declare-fun e!78868 () Bool)

(declare-fun lt!40789 () List!2238)

(assert (=> b!135768 (= e!78868 (or (not (= l3!231 Nil!2232)) (= lt!40789 lt!40778)))))

(declare-fun b!135765 () Bool)

(declare-fun e!78869 () List!2238)

(assert (=> b!135765 (= e!78869 l3!231)))

(declare-fun b!135766 () Bool)

(assert (=> b!135766 (= e!78869 (Cons!2232 (h!7629 lt!40778) (++!506 (t!22824 lt!40778) l3!231)))))

(declare-fun d!32539 () Bool)

(assert (=> d!32539 e!78868))

(declare-fun res!63639 () Bool)

(assert (=> d!32539 (=> (not res!63639) (not e!78868))))

(assert (=> d!32539 (= res!63639 (= (content!333 lt!40789) ((_ map or) (content!333 lt!40778) (content!333 l3!231))))))

(assert (=> d!32539 (= lt!40789 e!78869)))

(declare-fun c!28858 () Bool)

(assert (=> d!32539 (= c!28858 ((_ is Nil!2232) lt!40778))))

(assert (=> d!32539 (= (++!506 lt!40778 l3!231) lt!40789)))

(declare-fun b!135767 () Bool)

(declare-fun res!63640 () Bool)

(assert (=> b!135767 (=> (not res!63640) (not e!78868))))

(assert (=> b!135767 (= res!63640 (= (size!2021 lt!40789) (+ (size!2021 lt!40778) (size!2021 l3!231))))))

(assert (= (and d!32539 c!28858) b!135765))

(assert (= (and d!32539 (not c!28858)) b!135766))

(assert (= (and d!32539 res!63639) b!135767))

(assert (= (and b!135767 res!63640) b!135768))

(declare-fun m!120461 () Bool)

(assert (=> b!135766 m!120461))

(declare-fun m!120463 () Bool)

(assert (=> d!32539 m!120463))

(assert (=> d!32539 m!120451))

(declare-fun m!120465 () Bool)

(assert (=> d!32539 m!120465))

(declare-fun m!120467 () Bool)

(assert (=> b!135767 m!120467))

(assert (=> b!135767 m!120457))

(declare-fun m!120469 () Bool)

(assert (=> b!135767 m!120469))

(assert (=> b!135704 d!32539))

(declare-fun d!32541 () Bool)

(assert (=> d!32541 (subseq!79 (t!22824 sub!16) (++!506 (++!506 lt!40778 l3!231) l2!1199))))

(declare-fun lt!40794 () Unit!1768)

(declare-fun choose!1706 (List!2238 List!2238 List!2238 List!2238) Unit!1768)

(assert (=> d!32541 (= lt!40794 (choose!1706 (t!22824 sub!16) lt!40778 l2!1199 l3!231))))

(assert (=> d!32541 (subseq!79 (t!22824 sub!16) (++!506 lt!40778 l2!1199))))

(assert (=> d!32541 (= (lemmaBiggerSndListPreservesSubSeq!14 (t!22824 sub!16) lt!40778 l2!1199 l3!231) lt!40794)))

(declare-fun bs!12733 () Bool)

(assert (= bs!12733 d!32541))

(assert (=> bs!12733 m!120381))

(assert (=> bs!12733 m!120383))

(assert (=> bs!12733 m!120387))

(assert (=> bs!12733 m!120397))

(assert (=> bs!12733 m!120399))

(assert (=> bs!12733 m!120387))

(assert (=> bs!12733 m!120397))

(declare-fun m!120499 () Bool)

(assert (=> bs!12733 m!120499))

(assert (=> bs!12733 m!120381))

(assert (=> b!135704 d!32541))

(declare-fun b!135790 () Bool)

(declare-fun e!78888 () Bool)

(declare-fun e!78886 () Bool)

(assert (=> b!135790 (= e!78888 e!78886)))

(declare-fun res!63659 () Bool)

(assert (=> b!135790 (=> res!63659 e!78886)))

(declare-fun e!78889 () Bool)

(assert (=> b!135790 (= res!63659 e!78889)))

(declare-fun res!63658 () Bool)

(assert (=> b!135790 (=> (not res!63658) (not e!78889))))

(assert (=> b!135790 (= res!63658 (= (h!7629 (t!22824 sub!16)) (h!7629 (++!506 (++!506 lt!40778 l3!231) l2!1199))))))

(declare-fun b!135789 () Bool)

(declare-fun e!78887 () Bool)

(assert (=> b!135789 (= e!78887 e!78888)))

(declare-fun res!63657 () Bool)

(assert (=> b!135789 (=> (not res!63657) (not e!78888))))

(assert (=> b!135789 (= res!63657 ((_ is Cons!2232) (++!506 (++!506 lt!40778 l3!231) l2!1199)))))

(declare-fun b!135791 () Bool)

(assert (=> b!135791 (= e!78889 (subseq!79 (t!22824 (t!22824 sub!16)) (t!22824 (++!506 (++!506 lt!40778 l3!231) l2!1199))))))

(declare-fun d!32553 () Bool)

(declare-fun res!63660 () Bool)

(assert (=> d!32553 (=> res!63660 e!78887)))

(assert (=> d!32553 (= res!63660 ((_ is Nil!2232) (t!22824 sub!16)))))

(assert (=> d!32553 (= (subseq!79 (t!22824 sub!16) (++!506 (++!506 lt!40778 l3!231) l2!1199)) e!78887)))

(declare-fun b!135792 () Bool)

(assert (=> b!135792 (= e!78886 (subseq!79 (t!22824 sub!16) (t!22824 (++!506 (++!506 lt!40778 l3!231) l2!1199))))))

(assert (= (and d!32553 (not res!63660)) b!135789))

(assert (= (and b!135789 res!63657) b!135790))

(assert (= (and b!135790 res!63658) b!135791))

(assert (= (and b!135790 (not res!63659)) b!135792))

(declare-fun m!120507 () Bool)

(assert (=> b!135791 m!120507))

(declare-fun m!120509 () Bool)

(assert (=> b!135792 m!120509))

(assert (=> b!135704 d!32553))

(declare-fun lt!40796 () List!2238)

(declare-fun b!135804 () Bool)

(declare-fun e!78896 () Bool)

(assert (=> b!135804 (= e!78896 (or (not (= l2!1199 Nil!2232)) (= lt!40796 (++!506 lt!40778 l3!231))))))

(declare-fun b!135801 () Bool)

(declare-fun e!78897 () List!2238)

(assert (=> b!135801 (= e!78897 l2!1199)))

(declare-fun b!135802 () Bool)

(assert (=> b!135802 (= e!78897 (Cons!2232 (h!7629 (++!506 lt!40778 l3!231)) (++!506 (t!22824 (++!506 lt!40778 l3!231)) l2!1199)))))

(declare-fun d!32559 () Bool)

(assert (=> d!32559 e!78896))

(declare-fun res!63667 () Bool)

(assert (=> d!32559 (=> (not res!63667) (not e!78896))))

(assert (=> d!32559 (= res!63667 (= (content!333 lt!40796) ((_ map or) (content!333 (++!506 lt!40778 l3!231)) (content!333 l2!1199))))))

(assert (=> d!32559 (= lt!40796 e!78897)))

(declare-fun c!28862 () Bool)

(assert (=> d!32559 (= c!28862 ((_ is Nil!2232) (++!506 lt!40778 l3!231)))))

(assert (=> d!32559 (= (++!506 (++!506 lt!40778 l3!231) l2!1199) lt!40796)))

(declare-fun b!135803 () Bool)

(declare-fun res!63668 () Bool)

(assert (=> b!135803 (=> (not res!63668) (not e!78896))))

(assert (=> b!135803 (= res!63668 (= (size!2021 lt!40796) (+ (size!2021 (++!506 lt!40778 l3!231)) (size!2021 l2!1199))))))

(assert (= (and d!32559 c!28862) b!135801))

(assert (= (and d!32559 (not c!28862)) b!135802))

(assert (= (and d!32559 res!63667) b!135803))

(assert (= (and b!135803 res!63668) b!135804))

(declare-fun m!120517 () Bool)

(assert (=> b!135802 m!120517))

(declare-fun m!120519 () Bool)

(assert (=> d!32559 m!120519))

(assert (=> d!32559 m!120387))

(declare-fun m!120521 () Bool)

(assert (=> d!32559 m!120521))

(assert (=> d!32559 m!120453))

(declare-fun m!120523 () Bool)

(assert (=> b!135803 m!120523))

(assert (=> b!135803 m!120387))

(declare-fun m!120525 () Bool)

(assert (=> b!135803 m!120525))

(assert (=> b!135803 m!120459))

(assert (=> b!135704 d!32559))

(declare-fun lt!40797 () List!2238)

(declare-fun e!78902 () Bool)

(declare-fun b!135812 () Bool)

(assert (=> b!135812 (= e!78902 (or (not (= l2!1199 Nil!2232)) (= lt!40797 (++!506 l1!1230 l3!231))))))

(declare-fun b!135809 () Bool)

(declare-fun e!78903 () List!2238)

(assert (=> b!135809 (= e!78903 l2!1199)))

(declare-fun b!135810 () Bool)

(assert (=> b!135810 (= e!78903 (Cons!2232 (h!7629 (++!506 l1!1230 l3!231)) (++!506 (t!22824 (++!506 l1!1230 l3!231)) l2!1199)))))

(declare-fun d!32563 () Bool)

(assert (=> d!32563 e!78902))

(declare-fun res!63673 () Bool)

(assert (=> d!32563 (=> (not res!63673) (not e!78902))))

(assert (=> d!32563 (= res!63673 (= (content!333 lt!40797) ((_ map or) (content!333 (++!506 l1!1230 l3!231)) (content!333 l2!1199))))))

(assert (=> d!32563 (= lt!40797 e!78903)))

(declare-fun c!28863 () Bool)

(assert (=> d!32563 (= c!28863 ((_ is Nil!2232) (++!506 l1!1230 l3!231)))))

(assert (=> d!32563 (= (++!506 (++!506 l1!1230 l3!231) l2!1199) lt!40797)))

(declare-fun b!135811 () Bool)

(declare-fun res!63674 () Bool)

(assert (=> b!135811 (=> (not res!63674) (not e!78902))))

(assert (=> b!135811 (= res!63674 (= (size!2021 lt!40797) (+ (size!2021 (++!506 l1!1230 l3!231)) (size!2021 l2!1199))))))

(assert (= (and d!32563 c!28863) b!135809))

(assert (= (and d!32563 (not c!28863)) b!135810))

(assert (= (and d!32563 res!63673) b!135811))

(assert (= (and b!135811 res!63674) b!135812))

(declare-fun m!120531 () Bool)

(assert (=> b!135810 m!120531))

(declare-fun m!120533 () Bool)

(assert (=> d!32563 m!120533))

(assert (=> d!32563 m!120389))

(declare-fun m!120535 () Bool)

(assert (=> d!32563 m!120535))

(assert (=> d!32563 m!120453))

(declare-fun m!120537 () Bool)

(assert (=> b!135811 m!120537))

(assert (=> b!135811 m!120389))

(declare-fun m!120539 () Bool)

(assert (=> b!135811 m!120539))

(assert (=> b!135811 m!120459))

(assert (=> b!135704 d!32563))

(declare-fun lt!40799 () List!2238)

(declare-fun b!135820 () Bool)

(declare-fun e!78906 () Bool)

(assert (=> b!135820 (= e!78906 (or (not (= l3!231 Nil!2232)) (= lt!40799 l1!1230)))))

(declare-fun b!135817 () Bool)

(declare-fun e!78907 () List!2238)

(assert (=> b!135817 (= e!78907 l3!231)))

(declare-fun b!135818 () Bool)

(assert (=> b!135818 (= e!78907 (Cons!2232 (h!7629 l1!1230) (++!506 (t!22824 l1!1230) l3!231)))))

(declare-fun d!32567 () Bool)

(assert (=> d!32567 e!78906))

(declare-fun res!63677 () Bool)

(assert (=> d!32567 (=> (not res!63677) (not e!78906))))

(assert (=> d!32567 (= res!63677 (= (content!333 lt!40799) ((_ map or) (content!333 l1!1230) (content!333 l3!231))))))

(assert (=> d!32567 (= lt!40799 e!78907)))

(declare-fun c!28865 () Bool)

(assert (=> d!32567 (= c!28865 ((_ is Nil!2232) l1!1230))))

(assert (=> d!32567 (= (++!506 l1!1230 l3!231) lt!40799)))

(declare-fun b!135819 () Bool)

(declare-fun res!63678 () Bool)

(assert (=> b!135819 (=> (not res!63678) (not e!78906))))

(assert (=> b!135819 (= res!63678 (= (size!2021 lt!40799) (+ (size!2021 l1!1230) (size!2021 l3!231))))))

(assert (= (and d!32567 c!28865) b!135817))

(assert (= (and d!32567 (not c!28865)) b!135818))

(assert (= (and d!32567 res!63677) b!135819))

(assert (= (and b!135819 res!63678) b!135820))

(declare-fun m!120547 () Bool)

(assert (=> b!135818 m!120547))

(declare-fun m!120549 () Bool)

(assert (=> d!32567 m!120549))

(declare-fun m!120551 () Bool)

(assert (=> d!32567 m!120551))

(assert (=> d!32567 m!120465))

(declare-fun m!120553 () Bool)

(assert (=> b!135819 m!120553))

(declare-fun m!120555 () Bool)

(assert (=> b!135819 m!120555))

(assert (=> b!135819 m!120469))

(assert (=> b!135704 d!32567))

(declare-fun b!135822 () Bool)

(declare-fun e!78910 () Bool)

(declare-fun e!78908 () Bool)

(assert (=> b!135822 (= e!78910 e!78908)))

(declare-fun res!63681 () Bool)

(assert (=> b!135822 (=> res!63681 e!78908)))

(declare-fun e!78911 () Bool)

(assert (=> b!135822 (= res!63681 e!78911)))

(declare-fun res!63680 () Bool)

(assert (=> b!135822 (=> (not res!63680) (not e!78911))))

(assert (=> b!135822 (= res!63680 (= (h!7629 sub!16) (h!7629 (++!506 (++!506 l1!1230 l3!231) l2!1199))))))

(declare-fun b!135821 () Bool)

(declare-fun e!78909 () Bool)

(assert (=> b!135821 (= e!78909 e!78910)))

(declare-fun res!63679 () Bool)

(assert (=> b!135821 (=> (not res!63679) (not e!78910))))

(assert (=> b!135821 (= res!63679 ((_ is Cons!2232) (++!506 (++!506 l1!1230 l3!231) l2!1199)))))

(declare-fun b!135823 () Bool)

(assert (=> b!135823 (= e!78911 (subseq!79 (t!22824 sub!16) (t!22824 (++!506 (++!506 l1!1230 l3!231) l2!1199))))))

(declare-fun d!32571 () Bool)

(declare-fun res!63682 () Bool)

(assert (=> d!32571 (=> res!63682 e!78909)))

(assert (=> d!32571 (= res!63682 ((_ is Nil!2232) sub!16))))

(assert (=> d!32571 (= (subseq!79 sub!16 (++!506 (++!506 l1!1230 l3!231) l2!1199)) e!78909)))

(declare-fun b!135824 () Bool)

(assert (=> b!135824 (= e!78908 (subseq!79 sub!16 (t!22824 (++!506 (++!506 l1!1230 l3!231) l2!1199))))))

(assert (= (and d!32571 (not res!63682)) b!135821))

(assert (= (and b!135821 res!63679) b!135822))

(assert (= (and b!135822 res!63680) b!135823))

(assert (= (and b!135822 (not res!63681)) b!135824))

(declare-fun m!120557 () Bool)

(assert (=> b!135823 m!120557))

(declare-fun m!120559 () Bool)

(assert (=> b!135824 m!120559))

(assert (=> b!135704 d!32571))

(declare-fun b!135830 () Bool)

(declare-fun e!78916 () Bool)

(declare-fun e!78914 () Bool)

(assert (=> b!135830 (= e!78916 e!78914)))

(declare-fun res!63685 () Bool)

(assert (=> b!135830 (=> res!63685 e!78914)))

(declare-fun e!78917 () Bool)

(assert (=> b!135830 (= res!63685 e!78917)))

(declare-fun res!63684 () Bool)

(assert (=> b!135830 (=> (not res!63684) (not e!78917))))

(assert (=> b!135830 (= res!63684 (= (h!7629 sub!16) (h!7629 lt!40776)))))

(declare-fun b!135829 () Bool)

(declare-fun e!78915 () Bool)

(assert (=> b!135829 (= e!78915 e!78916)))

(declare-fun res!63683 () Bool)

(assert (=> b!135829 (=> (not res!63683) (not e!78916))))

(assert (=> b!135829 (= res!63683 ((_ is Cons!2232) lt!40776))))

(declare-fun b!135831 () Bool)

(assert (=> b!135831 (= e!78917 (subseq!79 (t!22824 sub!16) (t!22824 lt!40776)))))

(declare-fun d!32573 () Bool)

(declare-fun res!63686 () Bool)

(assert (=> d!32573 (=> res!63686 e!78915)))

(assert (=> d!32573 (= res!63686 ((_ is Nil!2232) sub!16))))

(assert (=> d!32573 (= (subseq!79 sub!16 lt!40776) e!78915)))

(declare-fun b!135832 () Bool)

(assert (=> b!135832 (= e!78914 (subseq!79 sub!16 (t!22824 lt!40776)))))

(assert (= (and d!32573 (not res!63686)) b!135829))

(assert (= (and b!135829 res!63683) b!135830))

(assert (= (and b!135830 res!63684) b!135831))

(assert (= (and b!135830 (not res!63685)) b!135832))

(assert (=> b!135831 m!120401))

(declare-fun m!120561 () Bool)

(assert (=> b!135832 m!120561))

(assert (=> start!14186 d!32573))

(declare-fun lt!40800 () List!2238)

(declare-fun b!135838 () Bool)

(declare-fun e!78920 () Bool)

(assert (=> b!135838 (= e!78920 (or (not (= l2!1199 Nil!2232)) (= lt!40800 l1!1230)))))

(declare-fun b!135835 () Bool)

(declare-fun e!78921 () List!2238)

(assert (=> b!135835 (= e!78921 l2!1199)))

(declare-fun b!135836 () Bool)

(assert (=> b!135836 (= e!78921 (Cons!2232 (h!7629 l1!1230) (++!506 (t!22824 l1!1230) l2!1199)))))

(declare-fun d!32575 () Bool)

(assert (=> d!32575 e!78920))

(declare-fun res!63687 () Bool)

(assert (=> d!32575 (=> (not res!63687) (not e!78920))))

(assert (=> d!32575 (= res!63687 (= (content!333 lt!40800) ((_ map or) (content!333 l1!1230) (content!333 l2!1199))))))

(assert (=> d!32575 (= lt!40800 e!78921)))

(declare-fun c!28866 () Bool)

(assert (=> d!32575 (= c!28866 ((_ is Nil!2232) l1!1230))))

(assert (=> d!32575 (= (++!506 l1!1230 l2!1199) lt!40800)))

(declare-fun b!135837 () Bool)

(declare-fun res!63688 () Bool)

(assert (=> b!135837 (=> (not res!63688) (not e!78920))))

(assert (=> b!135837 (= res!63688 (= (size!2021 lt!40800) (+ (size!2021 l1!1230) (size!2021 l2!1199))))))

(assert (= (and d!32575 c!28866) b!135835))

(assert (= (and d!32575 (not c!28866)) b!135836))

(assert (= (and d!32575 res!63687) b!135837))

(assert (= (and b!135837 res!63688) b!135838))

(declare-fun m!120563 () Bool)

(assert (=> b!135836 m!120563))

(declare-fun m!120565 () Bool)

(assert (=> d!32575 m!120565))

(assert (=> d!32575 m!120551))

(assert (=> d!32575 m!120453))

(declare-fun m!120567 () Bool)

(assert (=> b!135837 m!120567))

(assert (=> b!135837 m!120555))

(assert (=> b!135837 m!120459))

(assert (=> start!14186 d!32575))

(declare-fun b!135845 () Bool)

(declare-fun e!78926 () Bool)

(declare-fun tp!71031 () Bool)

(assert (=> b!135845 (= e!78926 (and tp_is_empty!1513 tp!71031))))

(assert (=> b!135707 (= tp!71021 e!78926)))

(assert (= (and b!135707 ((_ is Cons!2232) (t!22824 sub!16))) b!135845))

(declare-fun b!135846 () Bool)

(declare-fun e!78927 () Bool)

(declare-fun tp!71032 () Bool)

(assert (=> b!135846 (= e!78927 (and tp_is_empty!1513 tp!71032))))

(assert (=> b!135706 (= tp!71019 e!78927)))

(assert (= (and b!135706 ((_ is Cons!2232) (t!22824 l1!1230))) b!135846))

(declare-fun b!135847 () Bool)

(declare-fun e!78928 () Bool)

(declare-fun tp!71033 () Bool)

(assert (=> b!135847 (= e!78928 (and tp_is_empty!1513 tp!71033))))

(assert (=> b!135708 (= tp!71022 e!78928)))

(assert (= (and b!135708 ((_ is Cons!2232) (t!22824 l2!1199))) b!135847))

(declare-fun b!135848 () Bool)

(declare-fun e!78929 () Bool)

(declare-fun tp!71034 () Bool)

(assert (=> b!135848 (= e!78929 (and tp_is_empty!1513 tp!71034))))

(assert (=> b!135703 (= tp!71020 e!78929)))

(assert (= (and b!135703 ((_ is Cons!2232) (t!22824 l3!231))) b!135848))

(check-sat (not b!135845) (not d!32575) (not b!135846) (not b!135831) (not b!135818) (not b!135824) (not d!32539) (not b!135743) (not b!135732) (not b!135836) (not b!135847) (not b!135792) (not b!135819) (not d!32567) (not b!135811) (not b!135823) tp_is_empty!1513 (not b!135731) (not b!135832) (not b!135767) (not b!135766) (not b!135802) (not d!32563) (not b!135803) (not d!32559) (not d!32533) (not b!135810) (not b!135837) (not b!135744) (not b!135754) (not b!135848) (not b!135791) (not d!32541) (not b!135755))
(check-sat)
