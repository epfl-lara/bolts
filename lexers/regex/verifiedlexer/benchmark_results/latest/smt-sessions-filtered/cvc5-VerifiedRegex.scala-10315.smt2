; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!536264 () Bool)

(assert start!536264)

(declare-fun b!5089645 () Bool)

(declare-fun e!3174204 () Bool)

(declare-fun i!607 () Int)

(declare-datatypes ((T!105494 0))(
  ( (T!105495 (val!23705 Int)) )
))
(declare-datatypes ((List!58630 0))(
  ( (Nil!58506) (Cons!58506 (h!64954 T!105494) (t!371513 List!58630)) )
))
(declare-datatypes ((IArray!31303 0))(
  ( (IArray!31304 (innerList!15709 List!58630)) )
))
(declare-datatypes ((Conc!15621 0))(
  ( (Node!15621 (left!42904 Conc!15621) (right!43234 Conc!15621) (csize!31472 Int) (cheight!15832 Int)) (Leaf!25937 (xs!19003 IArray!31303) (csize!31473 Int)) (Empty!15621) )
))
(declare-fun t!3643 () Conc!15621)

(declare-fun size!39184 (List!58630) Int)

(declare-fun list!19075 (Conc!15621) List!58630)

(assert (=> b!5089645 (= e!3174204 (>= i!607 (size!39184 (list!19075 t!3643))))))

(declare-fun lt!2092249 () T!105494)

(declare-fun apply!14251 (Conc!15621 Int) T!105494)

(assert (=> b!5089645 (= lt!2092249 (apply!14251 (left!42904 t!3643) i!607))))

(declare-fun b!5089646 () Bool)

(declare-fun res!2166497 () Bool)

(declare-fun e!3174201 () Bool)

(assert (=> b!5089646 (=> (not res!2166497) (not e!3174201))))

(assert (=> b!5089646 (= res!2166497 (and (not (is-Leaf!25937 t!3643)) (is-Node!15621 t!3643)))))

(declare-fun b!5089647 () Bool)

(assert (=> b!5089647 (= e!3174201 e!3174204)))

(declare-fun res!2166498 () Bool)

(assert (=> b!5089647 (=> (not res!2166498) (not e!3174204))))

(declare-fun size!39185 (Conc!15621) Int)

(assert (=> b!5089647 (= res!2166498 (< i!607 (size!39185 (left!42904 t!3643))))))

(declare-fun lt!2092250 () Bool)

(declare-fun appendIndex!412 (List!58630 List!58630 Int) Bool)

(assert (=> b!5089647 (= lt!2092250 (appendIndex!412 (list!19075 (left!42904 t!3643)) (list!19075 (right!43234 t!3643)) i!607))))

(declare-fun b!5089648 () Bool)

(declare-fun e!3174202 () Bool)

(declare-fun tp!1418876 () Bool)

(assert (=> b!5089648 (= e!3174202 tp!1418876)))

(declare-fun b!5089649 () Bool)

(declare-fun res!2166500 () Bool)

(assert (=> b!5089649 (=> (not res!2166500) (not e!3174201))))

(assert (=> b!5089649 (= res!2166500 (< i!607 (size!39185 t!3643)))))

(declare-fun b!5089650 () Bool)

(declare-fun e!3174203 () Bool)

(declare-fun inv!77860 (IArray!31303) Bool)

(assert (=> b!5089650 (= e!3174203 (and (inv!77860 (xs!19003 t!3643)) e!3174202))))

(declare-fun res!2166499 () Bool)

(assert (=> start!536264 (=> (not res!2166499) (not e!3174201))))

(assert (=> start!536264 (= res!2166499 (<= 0 i!607))))

(assert (=> start!536264 e!3174201))

(assert (=> start!536264 true))

(declare-fun inv!77861 (Conc!15621) Bool)

(assert (=> start!536264 (and (inv!77861 t!3643) e!3174203)))

(declare-fun tp!1418877 () Bool)

(declare-fun b!5089651 () Bool)

(declare-fun tp!1418878 () Bool)

(assert (=> b!5089651 (= e!3174203 (and (inv!77861 (left!42904 t!3643)) tp!1418877 (inv!77861 (right!43234 t!3643)) tp!1418878))))

(assert (= (and start!536264 res!2166499) b!5089649))

(assert (= (and b!5089649 res!2166500) b!5089646))

(assert (= (and b!5089646 res!2166497) b!5089647))

(assert (= (and b!5089647 res!2166498) b!5089645))

(assert (= (and start!536264 (is-Node!15621 t!3643)) b!5089651))

(assert (= b!5089650 b!5089648))

(assert (= (and start!536264 (is-Leaf!25937 t!3643)) b!5089650))

(declare-fun m!6147918 () Bool)

(assert (=> b!5089650 m!6147918))

(declare-fun m!6147920 () Bool)

(assert (=> b!5089649 m!6147920))

(declare-fun m!6147922 () Bool)

(assert (=> b!5089651 m!6147922))

(declare-fun m!6147924 () Bool)

(assert (=> b!5089651 m!6147924))

(declare-fun m!6147926 () Bool)

(assert (=> b!5089645 m!6147926))

(assert (=> b!5089645 m!6147926))

(declare-fun m!6147928 () Bool)

(assert (=> b!5089645 m!6147928))

(declare-fun m!6147930 () Bool)

(assert (=> b!5089645 m!6147930))

(declare-fun m!6147932 () Bool)

(assert (=> b!5089647 m!6147932))

(declare-fun m!6147934 () Bool)

(assert (=> b!5089647 m!6147934))

(declare-fun m!6147936 () Bool)

(assert (=> b!5089647 m!6147936))

(assert (=> b!5089647 m!6147934))

(assert (=> b!5089647 m!6147936))

(declare-fun m!6147938 () Bool)

(assert (=> b!5089647 m!6147938))

(declare-fun m!6147940 () Bool)

(assert (=> start!536264 m!6147940))

(push 1)

(assert (not start!536264))

(assert (not b!5089650))

(assert (not b!5089647))

(assert (not b!5089648))

(assert (not b!5089651))

(assert (not b!5089649))

(assert (not b!5089645))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1647616 () Bool)

(declare-fun lt!2092259 () Int)

(assert (=> d!1647616 (= lt!2092259 (size!39184 (list!19075 t!3643)))))

(assert (=> d!1647616 (= lt!2092259 (ite (is-Empty!15621 t!3643) 0 (ite (is-Leaf!25937 t!3643) (csize!31473 t!3643) (csize!31472 t!3643))))))

(assert (=> d!1647616 (= (size!39185 t!3643) lt!2092259)))

(declare-fun bs!1191102 () Bool)

(assert (= bs!1191102 d!1647616))

(assert (=> bs!1191102 m!6147926))

(assert (=> bs!1191102 m!6147926))

(assert (=> bs!1191102 m!6147928))

(assert (=> b!5089649 d!1647616))

(declare-fun d!1647620 () Bool)

(declare-fun lt!2092260 () Int)

(assert (=> d!1647620 (= lt!2092260 (size!39184 (list!19075 (left!42904 t!3643))))))

(assert (=> d!1647620 (= lt!2092260 (ite (is-Empty!15621 (left!42904 t!3643)) 0 (ite (is-Leaf!25937 (left!42904 t!3643)) (csize!31473 (left!42904 t!3643)) (csize!31472 (left!42904 t!3643)))))))

(assert (=> d!1647620 (= (size!39185 (left!42904 t!3643)) lt!2092260)))

(declare-fun bs!1191103 () Bool)

(assert (= bs!1191103 d!1647620))

(assert (=> bs!1191103 m!6147934))

(assert (=> bs!1191103 m!6147934))

(declare-fun m!6147966 () Bool)

(assert (=> bs!1191103 m!6147966))

(assert (=> b!5089647 d!1647620))

(declare-fun b!5089691 () Bool)

(declare-fun e!3174230 () Bool)

(assert (=> b!5089691 (= e!3174230 (appendIndex!412 (t!371513 (list!19075 (left!42904 t!3643))) (list!19075 (right!43234 t!3643)) (- i!607 1)))))

(declare-fun b!5089692 () Bool)

(declare-fun e!3174232 () T!105494)

(declare-fun call!354624 () T!105494)

(assert (=> b!5089692 (= e!3174232 call!354624)))

(declare-fun b!5089693 () Bool)

(declare-fun e!3174231 () Int)

(assert (=> b!5089693 (= e!3174231 i!607)))

(declare-fun b!5089694 () Bool)

(assert (=> b!5089694 (= e!3174231 (- i!607 (size!39184 (list!19075 (left!42904 t!3643)))))))

(declare-fun b!5089695 () Bool)

(declare-fun e!3174229 () Bool)

(assert (=> b!5089695 (= e!3174229 (< i!607 (+ (size!39184 (list!19075 (left!42904 t!3643))) (size!39184 (list!19075 (right!43234 t!3643))))))))

(declare-fun c!874611 () Bool)

(declare-fun bm!354619 () Bool)

(declare-fun apply!14253 (List!58630 Int) T!105494)

(assert (=> bm!354619 (= call!354624 (apply!14253 (ite c!874611 (list!19075 (left!42904 t!3643)) (list!19075 (right!43234 t!3643))) e!3174231))))

(declare-fun c!874612 () Bool)

(assert (=> bm!354619 (= c!874612 c!874611)))

(declare-fun b!5089696 () Bool)

(assert (=> b!5089696 (= e!3174232 call!354624)))

(declare-fun d!1647622 () Bool)

(declare-fun ++!12826 (List!58630 List!58630) List!58630)

(assert (=> d!1647622 (= (apply!14253 (++!12826 (list!19075 (left!42904 t!3643)) (list!19075 (right!43234 t!3643))) i!607) e!3174232)))

(assert (=> d!1647622 (= c!874611 (< i!607 (size!39184 (list!19075 (left!42904 t!3643)))))))

(declare-fun lt!2092263 () Bool)

(assert (=> d!1647622 (= lt!2092263 e!3174230)))

(declare-fun res!2166520 () Bool)

(assert (=> d!1647622 (=> res!2166520 e!3174230)))

(assert (=> d!1647622 (= res!2166520 (or (is-Nil!58506 (list!19075 (left!42904 t!3643))) (= i!607 0)))))

(assert (=> d!1647622 e!3174229))

(declare-fun res!2166519 () Bool)

(assert (=> d!1647622 (=> (not res!2166519) (not e!3174229))))

(assert (=> d!1647622 (= res!2166519 (<= 0 i!607))))

(assert (=> d!1647622 (= (appendIndex!412 (list!19075 (left!42904 t!3643)) (list!19075 (right!43234 t!3643)) i!607) true)))

(assert (= (and d!1647622 res!2166519) b!5089695))

(assert (= (and d!1647622 (not res!2166520)) b!5089691))

(assert (= (and d!1647622 c!874611) b!5089696))

(assert (= (and d!1647622 (not c!874611)) b!5089692))

(assert (= (or b!5089696 b!5089692) bm!354619))

(assert (= (and bm!354619 c!874612) b!5089693))

(assert (= (and bm!354619 (not c!874612)) b!5089694))

(assert (=> b!5089691 m!6147936))

(declare-fun m!6147968 () Bool)

(assert (=> b!5089691 m!6147968))

(assert (=> d!1647622 m!6147934))

(assert (=> d!1647622 m!6147936))

(declare-fun m!6147970 () Bool)

(assert (=> d!1647622 m!6147970))

(assert (=> d!1647622 m!6147970))

(declare-fun m!6147972 () Bool)

(assert (=> d!1647622 m!6147972))

(assert (=> d!1647622 m!6147934))

(assert (=> d!1647622 m!6147966))

(assert (=> b!5089695 m!6147934))

(assert (=> b!5089695 m!6147966))

(assert (=> b!5089695 m!6147936))

(declare-fun m!6147974 () Bool)

(assert (=> b!5089695 m!6147974))

(assert (=> b!5089694 m!6147934))

(assert (=> b!5089694 m!6147966))

(declare-fun m!6147976 () Bool)

(assert (=> bm!354619 m!6147976))

(assert (=> b!5089647 d!1647622))

(declare-fun b!5089713 () Bool)

(declare-fun e!3174242 () List!58630)

(declare-fun list!19077 (IArray!31303) List!58630)

(assert (=> b!5089713 (= e!3174242 (list!19077 (xs!19003 (left!42904 t!3643))))))

(declare-fun b!5089712 () Bool)

(declare-fun e!3174241 () List!58630)

(assert (=> b!5089712 (= e!3174241 e!3174242)))

(declare-fun c!874620 () Bool)

(assert (=> b!5089712 (= c!874620 (is-Leaf!25937 (left!42904 t!3643)))))

(declare-fun b!5089711 () Bool)

(assert (=> b!5089711 (= e!3174241 Nil!58506)))

(declare-fun b!5089714 () Bool)

(assert (=> b!5089714 (= e!3174242 (++!12826 (list!19075 (left!42904 (left!42904 t!3643))) (list!19075 (right!43234 (left!42904 t!3643)))))))

(declare-fun d!1647624 () Bool)

(declare-fun c!874619 () Bool)

(assert (=> d!1647624 (= c!874619 (is-Empty!15621 (left!42904 t!3643)))))

(assert (=> d!1647624 (= (list!19075 (left!42904 t!3643)) e!3174241)))

(assert (= (and d!1647624 c!874619) b!5089711))

(assert (= (and d!1647624 (not c!874619)) b!5089712))

(assert (= (and b!5089712 c!874620) b!5089713))

(assert (= (and b!5089712 (not c!874620)) b!5089714))

(declare-fun m!6147986 () Bool)

(assert (=> b!5089713 m!6147986))

(declare-fun m!6147988 () Bool)

(assert (=> b!5089714 m!6147988))

(declare-fun m!6147990 () Bool)

(assert (=> b!5089714 m!6147990))

(assert (=> b!5089714 m!6147988))

(assert (=> b!5089714 m!6147990))

(declare-fun m!6147992 () Bool)

(assert (=> b!5089714 m!6147992))

(assert (=> b!5089647 d!1647624))

(declare-fun b!5089721 () Bool)

(declare-fun e!3174246 () List!58630)

(assert (=> b!5089721 (= e!3174246 (list!19077 (xs!19003 (right!43234 t!3643))))))

(declare-fun b!5089720 () Bool)

(declare-fun e!3174245 () List!58630)

(assert (=> b!5089720 (= e!3174245 e!3174246)))

(declare-fun c!874624 () Bool)

(assert (=> b!5089720 (= c!874624 (is-Leaf!25937 (right!43234 t!3643)))))

(declare-fun b!5089719 () Bool)

(assert (=> b!5089719 (= e!3174245 Nil!58506)))

(declare-fun b!5089722 () Bool)

(assert (=> b!5089722 (= e!3174246 (++!12826 (list!19075 (left!42904 (right!43234 t!3643))) (list!19075 (right!43234 (right!43234 t!3643)))))))

(declare-fun d!1647630 () Bool)

(declare-fun c!874623 () Bool)

(assert (=> d!1647630 (= c!874623 (is-Empty!15621 (right!43234 t!3643)))))

(assert (=> d!1647630 (= (list!19075 (right!43234 t!3643)) e!3174245)))

(assert (= (and d!1647630 c!874623) b!5089719))

(assert (= (and d!1647630 (not c!874623)) b!5089720))

(assert (= (and b!5089720 c!874624) b!5089721))

(assert (= (and b!5089720 (not c!874624)) b!5089722))

(declare-fun m!6147994 () Bool)

(assert (=> b!5089721 m!6147994))

(declare-fun m!6147996 () Bool)

(assert (=> b!5089722 m!6147996))

(declare-fun m!6147998 () Bool)

(assert (=> b!5089722 m!6147998))

(assert (=> b!5089722 m!6147996))

(assert (=> b!5089722 m!6147998))

(declare-fun m!6148000 () Bool)

(assert (=> b!5089722 m!6148000))

(assert (=> b!5089647 d!1647630))

(declare-fun d!1647632 () Bool)

(declare-fun c!874628 () Bool)

(assert (=> d!1647632 (= c!874628 (is-Node!15621 (left!42904 t!3643)))))

(declare-fun e!3174252 () Bool)

(assert (=> d!1647632 (= (inv!77861 (left!42904 t!3643)) e!3174252)))

(declare-fun b!5089731 () Bool)

(declare-fun inv!77864 (Conc!15621) Bool)

(assert (=> b!5089731 (= e!3174252 (inv!77864 (left!42904 t!3643)))))

(declare-fun b!5089732 () Bool)

(declare-fun e!3174253 () Bool)

(assert (=> b!5089732 (= e!3174252 e!3174253)))

(declare-fun res!2166525 () Bool)

(assert (=> b!5089732 (= res!2166525 (not (is-Leaf!25937 (left!42904 t!3643))))))

(assert (=> b!5089732 (=> res!2166525 e!3174253)))

(declare-fun b!5089733 () Bool)

(declare-fun inv!77865 (Conc!15621) Bool)

(assert (=> b!5089733 (= e!3174253 (inv!77865 (left!42904 t!3643)))))

(assert (= (and d!1647632 c!874628) b!5089731))

(assert (= (and d!1647632 (not c!874628)) b!5089732))

(assert (= (and b!5089732 (not res!2166525)) b!5089733))

(declare-fun m!6148004 () Bool)

(assert (=> b!5089731 m!6148004))

(declare-fun m!6148006 () Bool)

(assert (=> b!5089733 m!6148006))

(assert (=> b!5089651 d!1647632))

(declare-fun d!1647636 () Bool)

(declare-fun c!874629 () Bool)

(assert (=> d!1647636 (= c!874629 (is-Node!15621 (right!43234 t!3643)))))

(declare-fun e!3174254 () Bool)

(assert (=> d!1647636 (= (inv!77861 (right!43234 t!3643)) e!3174254)))

(declare-fun b!5089734 () Bool)

(assert (=> b!5089734 (= e!3174254 (inv!77864 (right!43234 t!3643)))))

(declare-fun b!5089735 () Bool)

(declare-fun e!3174255 () Bool)

(assert (=> b!5089735 (= e!3174254 e!3174255)))

(declare-fun res!2166526 () Bool)

(assert (=> b!5089735 (= res!2166526 (not (is-Leaf!25937 (right!43234 t!3643))))))

(assert (=> b!5089735 (=> res!2166526 e!3174255)))

(declare-fun b!5089736 () Bool)

(assert (=> b!5089736 (= e!3174255 (inv!77865 (right!43234 t!3643)))))

(assert (= (and d!1647636 c!874629) b!5089734))

(assert (= (and d!1647636 (not c!874629)) b!5089735))

(assert (= (and b!5089735 (not res!2166526)) b!5089736))

(declare-fun m!6148008 () Bool)

(assert (=> b!5089734 m!6148008))

(declare-fun m!6148010 () Bool)

(assert (=> b!5089736 m!6148010))

(assert (=> b!5089651 d!1647636))

(declare-fun d!1647638 () Bool)

(declare-fun c!874630 () Bool)

(assert (=> d!1647638 (= c!874630 (is-Node!15621 t!3643))))

(declare-fun e!3174256 () Bool)

(assert (=> d!1647638 (= (inv!77861 t!3643) e!3174256)))

(declare-fun b!5089737 () Bool)

(assert (=> b!5089737 (= e!3174256 (inv!77864 t!3643))))

(declare-fun b!5089738 () Bool)

(declare-fun e!3174257 () Bool)

(assert (=> b!5089738 (= e!3174256 e!3174257)))

(declare-fun res!2166527 () Bool)

(assert (=> b!5089738 (= res!2166527 (not (is-Leaf!25937 t!3643)))))

(assert (=> b!5089738 (=> res!2166527 e!3174257)))

(declare-fun b!5089739 () Bool)

(assert (=> b!5089739 (= e!3174257 (inv!77865 t!3643))))

(assert (= (and d!1647638 c!874630) b!5089737))

(assert (= (and d!1647638 (not c!874630)) b!5089738))

(assert (= (and b!5089738 (not res!2166527)) b!5089739))

(declare-fun m!6148012 () Bool)

(assert (=> b!5089737 m!6148012))

(declare-fun m!6148014 () Bool)

(assert (=> b!5089739 m!6148014))

(assert (=> start!536264 d!1647638))

(declare-fun d!1647640 () Bool)

(declare-fun lt!2092269 () Int)

(assert (=> d!1647640 (>= lt!2092269 0)))

(declare-fun e!3174264 () Int)

(assert (=> d!1647640 (= lt!2092269 e!3174264)))

(declare-fun c!874637 () Bool)

(assert (=> d!1647640 (= c!874637 (is-Nil!58506 (list!19075 t!3643)))))

(assert (=> d!1647640 (= (size!39184 (list!19075 t!3643)) lt!2092269)))

(declare-fun b!5089752 () Bool)

(assert (=> b!5089752 (= e!3174264 0)))

(declare-fun b!5089753 () Bool)

(assert (=> b!5089753 (= e!3174264 (+ 1 (size!39184 (t!371513 (list!19075 t!3643)))))))

(assert (= (and d!1647640 c!874637) b!5089752))

(assert (= (and d!1647640 (not c!874637)) b!5089753))

(declare-fun m!6148016 () Bool)

(assert (=> b!5089753 m!6148016))

(assert (=> b!5089645 d!1647640))

(declare-fun b!5089756 () Bool)

(declare-fun e!3174266 () List!58630)

(assert (=> b!5089756 (= e!3174266 (list!19077 (xs!19003 t!3643)))))

(declare-fun b!5089755 () Bool)

(declare-fun e!3174265 () List!58630)

(assert (=> b!5089755 (= e!3174265 e!3174266)))

(declare-fun c!874639 () Bool)

(assert (=> b!5089755 (= c!874639 (is-Leaf!25937 t!3643))))

(declare-fun b!5089754 () Bool)

(assert (=> b!5089754 (= e!3174265 Nil!58506)))

(declare-fun b!5089757 () Bool)

(assert (=> b!5089757 (= e!3174266 (++!12826 (list!19075 (left!42904 t!3643)) (list!19075 (right!43234 t!3643))))))

(declare-fun d!1647642 () Bool)

(declare-fun c!874638 () Bool)

(assert (=> d!1647642 (= c!874638 (is-Empty!15621 t!3643))))

(assert (=> d!1647642 (= (list!19075 t!3643) e!3174265)))

(assert (= (and d!1647642 c!874638) b!5089754))

(assert (= (and d!1647642 (not c!874638)) b!5089755))

(assert (= (and b!5089755 c!874639) b!5089756))

(assert (= (and b!5089755 (not c!874639)) b!5089757))

(declare-fun m!6148018 () Bool)

(assert (=> b!5089756 m!6148018))

(assert (=> b!5089757 m!6147934))

(assert (=> b!5089757 m!6147936))

(assert (=> b!5089757 m!6147934))

(assert (=> b!5089757 m!6147936))

(assert (=> b!5089757 m!6147970))

(assert (=> b!5089645 d!1647642))

(declare-fun b!5089776 () Bool)

(declare-fun e!3174277 () Bool)

(assert (=> b!5089776 (= e!3174277 (< i!607 (size!39185 (left!42904 t!3643))))))

(declare-fun d!1647644 () Bool)

(declare-fun lt!2092274 () T!105494)

(assert (=> d!1647644 (= lt!2092274 (apply!14253 (list!19075 (left!42904 t!3643)) i!607))))

(declare-fun e!3174280 () T!105494)

(assert (=> d!1647644 (= lt!2092274 e!3174280)))

(declare-fun c!874648 () Bool)

(assert (=> d!1647644 (= c!874648 (is-Leaf!25937 (left!42904 t!3643)))))

(assert (=> d!1647644 e!3174277))

(declare-fun res!2166530 () Bool)

(assert (=> d!1647644 (=> (not res!2166530) (not e!3174277))))

(assert (=> d!1647644 (= res!2166530 (<= 0 i!607))))

(assert (=> d!1647644 (= (apply!14251 (left!42904 t!3643) i!607) lt!2092274)))

(declare-fun b!5089777 () Bool)

(declare-fun apply!14254 (IArray!31303 Int) T!105494)

(assert (=> b!5089777 (= e!3174280 (apply!14254 (xs!19003 (left!42904 t!3643)) i!607))))

(declare-fun bm!354622 () Bool)

(declare-fun c!874650 () Bool)

(declare-fun c!874649 () Bool)

(assert (=> bm!354622 (= c!874650 c!874649)))

(declare-fun call!354627 () T!105494)

(declare-fun e!3174279 () Int)

(assert (=> bm!354622 (= call!354627 (apply!14251 (ite c!874649 (left!42904 (left!42904 t!3643)) (right!43234 (left!42904 t!3643))) e!3174279))))

(declare-fun b!5089778 () Bool)

(declare-fun e!3174278 () T!105494)

(assert (=> b!5089778 (= e!3174280 e!3174278)))

(declare-fun lt!2092275 () Bool)

(assert (=> b!5089778 (= lt!2092275 (appendIndex!412 (list!19075 (left!42904 (left!42904 t!3643))) (list!19075 (right!43234 (left!42904 t!3643))) i!607))))

(assert (=> b!5089778 (= c!874649 (< i!607 (size!39185 (left!42904 (left!42904 t!3643)))))))

(declare-fun b!5089779 () Bool)

(assert (=> b!5089779 (= e!3174278 call!354627)))

(declare-fun b!5089780 () Bool)

(assert (=> b!5089780 (= e!3174278 call!354627)))

(declare-fun b!5089781 () Bool)

(assert (=> b!5089781 (= e!3174279 (- i!607 (size!39185 (left!42904 (left!42904 t!3643)))))))

(declare-fun b!5089782 () Bool)

(assert (=> b!5089782 (= e!3174279 i!607)))

(assert (= (and d!1647644 res!2166530) b!5089776))

(assert (= (and d!1647644 c!874648) b!5089777))

(assert (= (and d!1647644 (not c!874648)) b!5089778))

(assert (= (and b!5089778 c!874649) b!5089780))

(assert (= (and b!5089778 (not c!874649)) b!5089779))

(assert (= (or b!5089780 b!5089779) bm!354622))

(assert (= (and bm!354622 c!874650) b!5089782))

(assert (= (and bm!354622 (not c!874650)) b!5089781))

(declare-fun m!6148024 () Bool)

(assert (=> bm!354622 m!6148024))

(assert (=> b!5089778 m!6147988))

(assert (=> b!5089778 m!6147990))

(assert (=> b!5089778 m!6147988))

(assert (=> b!5089778 m!6147990))

(declare-fun m!6148026 () Bool)

(assert (=> b!5089778 m!6148026))

(declare-fun m!6148028 () Bool)

(assert (=> b!5089778 m!6148028))

(assert (=> b!5089781 m!6148028))

(assert (=> b!5089776 m!6147932))

(assert (=> d!1647644 m!6147934))

(assert (=> d!1647644 m!6147934))

(declare-fun m!6148030 () Bool)

(assert (=> d!1647644 m!6148030))

(declare-fun m!6148032 () Bool)

(assert (=> b!5089777 m!6148032))

(assert (=> b!5089645 d!1647644))

(declare-fun d!1647648 () Bool)

(assert (=> d!1647648 (= (inv!77860 (xs!19003 t!3643)) (<= (size!39184 (innerList!15709 (xs!19003 t!3643))) 2147483647))))

(declare-fun bs!1191104 () Bool)

(assert (= bs!1191104 d!1647648))

(declare-fun m!6148034 () Bool)

(assert (=> bs!1191104 m!6148034))

(assert (=> b!5089650 d!1647648))

(declare-fun b!5089787 () Bool)

(declare-fun e!3174283 () Bool)

(declare-fun tp_is_empty!37121 () Bool)

(declare-fun tp!1418890 () Bool)

(assert (=> b!5089787 (= e!3174283 (and tp_is_empty!37121 tp!1418890))))

(assert (=> b!5089648 (= tp!1418876 e!3174283)))

(assert (= (and b!5089648 (is-Cons!58506 (innerList!15709 (xs!19003 t!3643)))) b!5089787))

(declare-fun b!5089796 () Bool)

(declare-fun tp!1418899 () Bool)

(declare-fun e!3174289 () Bool)

(declare-fun tp!1418898 () Bool)

(assert (=> b!5089796 (= e!3174289 (and (inv!77861 (left!42904 (left!42904 t!3643))) tp!1418899 (inv!77861 (right!43234 (left!42904 t!3643))) tp!1418898))))

(declare-fun b!5089798 () Bool)

(declare-fun e!3174288 () Bool)

(declare-fun tp!1418897 () Bool)

(assert (=> b!5089798 (= e!3174288 tp!1418897)))

(declare-fun b!5089797 () Bool)

(assert (=> b!5089797 (= e!3174289 (and (inv!77860 (xs!19003 (left!42904 t!3643))) e!3174288))))

(assert (=> b!5089651 (= tp!1418877 (and (inv!77861 (left!42904 t!3643)) e!3174289))))

(assert (= (and b!5089651 (is-Node!15621 (left!42904 t!3643))) b!5089796))

(assert (= b!5089797 b!5089798))

(assert (= (and b!5089651 (is-Leaf!25937 (left!42904 t!3643))) b!5089797))

(declare-fun m!6148036 () Bool)

(assert (=> b!5089796 m!6148036))

(declare-fun m!6148038 () Bool)

(assert (=> b!5089796 m!6148038))

(declare-fun m!6148040 () Bool)

(assert (=> b!5089797 m!6148040))

(assert (=> b!5089651 m!6147922))

(declare-fun e!3174291 () Bool)

(declare-fun tp!1418901 () Bool)

(declare-fun tp!1418902 () Bool)

(declare-fun b!5089799 () Bool)

(assert (=> b!5089799 (= e!3174291 (and (inv!77861 (left!42904 (right!43234 t!3643))) tp!1418902 (inv!77861 (right!43234 (right!43234 t!3643))) tp!1418901))))

(declare-fun b!5089801 () Bool)

(declare-fun e!3174290 () Bool)

(declare-fun tp!1418900 () Bool)

(assert (=> b!5089801 (= e!3174290 tp!1418900)))

(declare-fun b!5089800 () Bool)

(assert (=> b!5089800 (= e!3174291 (and (inv!77860 (xs!19003 (right!43234 t!3643))) e!3174290))))

(assert (=> b!5089651 (= tp!1418878 (and (inv!77861 (right!43234 t!3643)) e!3174291))))

(assert (= (and b!5089651 (is-Node!15621 (right!43234 t!3643))) b!5089799))

(assert (= b!5089800 b!5089801))

(assert (= (and b!5089651 (is-Leaf!25937 (right!43234 t!3643))) b!5089800))

(declare-fun m!6148042 () Bool)

(assert (=> b!5089799 m!6148042))

(declare-fun m!6148044 () Bool)

(assert (=> b!5089799 m!6148044))

(declare-fun m!6148046 () Bool)

(assert (=> b!5089800 m!6148046))

(assert (=> b!5089651 m!6147924))

(push 1)

(assert (not b!5089776))

(assert (not b!5089737))

(assert (not d!1647648))

(assert (not b!5089778))

(assert (not b!5089798))

(assert (not b!5089733))

(assert (not bm!354622))

(assert (not b!5089691))

(assert (not d!1647622))

(assert tp_is_empty!37121)

(assert (not b!5089651))

(assert (not b!5089801))

(assert (not b!5089753))

(assert (not b!5089781))

(assert (not b!5089694))

(assert (not b!5089800))

(assert (not b!5089721))

(assert (not d!1647620))

(assert (not b!5089777))

(assert (not bm!354619))

(assert (not b!5089757))

(assert (not b!5089797))

(assert (not b!5089734))

(assert (not b!5089722))

(assert (not b!5089796))

(assert (not b!5089714))

(assert (not b!5089799))

(assert (not d!1647616))

(assert (not d!1647644))

(assert (not b!5089756))

(assert (not b!5089695))

(assert (not b!5089713))

(assert (not b!5089736))

(assert (not b!5089739))

(assert (not b!5089731))

(assert (not b!5089787))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

