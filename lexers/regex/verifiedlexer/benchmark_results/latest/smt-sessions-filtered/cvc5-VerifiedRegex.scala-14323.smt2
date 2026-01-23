; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!747924 () Bool)

(assert start!747924)

(declare-fun b!7918753 () Bool)

(declare-fun e!4674105 () Bool)

(declare-fun e!4674107 () Bool)

(assert (=> b!7918753 (= e!4674105 e!4674107)))

(declare-fun res!3142826 () Bool)

(assert (=> b!7918753 (=> (not res!3142826) (not e!4674107))))

(declare-datatypes ((T!145690 0))(
  ( (T!145691 (val!32043 Int)) )
))
(declare-datatypes ((List!74555 0))(
  ( (Nil!74431) (Cons!74431 (h!80879 T!145690) (t!390108 List!74555)) )
))
(declare-fun lt!2691285 () List!74555)

(declare-fun lt!2691280 () List!74555)

(assert (=> b!7918753 (= res!3142826 (= lt!2691285 lt!2691280))))

(declare-fun lt!2691279 () List!74555)

(declare-fun lt!2691281 () List!74555)

(declare-fun ++!18247 (List!74555 List!74555) List!74555)

(assert (=> b!7918753 (= lt!2691280 (++!18247 lt!2691279 lt!2691281))))

(declare-fun ll!14 () List!74555)

(assert (=> b!7918753 (= lt!2691281 (Cons!74431 (h!80879 ll!14) Nil!74431))))

(declare-datatypes ((IArray!31831 0))(
  ( (IArray!31832 (innerList!15973 List!74555)) )
))
(declare-datatypes ((Conc!15885 0))(
  ( (Node!15885 (left!56848 Conc!15885) (right!57178 Conc!15885) (csize!32000 Int) (cheight!16096 Int)) (Leaf!30209 (xs!19271 IArray!31831) (csize!32001 Int)) (Empty!15885) )
))
(declare-fun c!5365 () Conc!15885)

(declare-fun list!19386 (Conc!15885) List!74555)

(assert (=> b!7918753 (= lt!2691279 (list!19386 c!5365))))

(declare-fun b!7918754 () Bool)

(declare-fun e!4674108 () Bool)

(assert (=> b!7918754 (= e!4674108 e!4674105)))

(declare-fun res!3142821 () Bool)

(assert (=> b!7918754 (=> (not res!3142821) (not e!4674105))))

(declare-fun lt!2691278 () List!74555)

(assert (=> b!7918754 (= res!3142821 (= lt!2691278 (++!18247 lt!2691285 (t!390108 ll!14))))))

(declare-fun lt!2691283 () Conc!15885)

(assert (=> b!7918754 (= lt!2691278 (list!19386 lt!2691283))))

(declare-fun lt!2691276 () Conc!15885)

(assert (=> b!7918754 (= lt!2691285 (list!19386 lt!2691276))))

(declare-fun rec!60 (List!74555 Conc!15885) Conc!15885)

(assert (=> b!7918754 (= lt!2691283 (rec!60 (t!390108 ll!14) lt!2691276))))

(declare-fun append!1135 (Conc!15885 T!145690) Conc!15885)

(assert (=> b!7918754 (= lt!2691276 (append!1135 c!5365 (h!80879 ll!14)))))

(declare-fun b!7918755 () Bool)

(declare-fun res!3142825 () Bool)

(assert (=> b!7918755 (=> (not res!3142825) (not e!4674108))))

(assert (=> b!7918755 (= res!3142825 (not (is-Nil!74431 ll!14)))))

(declare-fun b!7918756 () Bool)

(declare-fun e!4674101 () Bool)

(declare-fun isBalanced!4511 (Conc!15885) Bool)

(assert (=> b!7918756 (= e!4674101 (isBalanced!4511 lt!2691283))))

(declare-fun tp!2357804 () Bool)

(declare-fun e!4674102 () Bool)

(declare-fun tp!2357806 () Bool)

(declare-fun b!7918757 () Bool)

(declare-fun inv!95631 (Conc!15885) Bool)

(assert (=> b!7918757 (= e!4674102 (and (inv!95631 (left!56848 c!5365)) tp!2357804 (inv!95631 (right!57178 c!5365)) tp!2357806))))

(declare-fun b!7918758 () Bool)

(declare-fun e!4674103 () Bool)

(declare-fun tp!2357803 () Bool)

(assert (=> b!7918758 (= e!4674103 tp!2357803)))

(declare-fun b!7918759 () Bool)

(declare-fun e!4674106 () Bool)

(assert (=> b!7918759 (= e!4674106 e!4674101)))

(declare-fun res!3142824 () Bool)

(assert (=> b!7918759 (=> (not res!3142824) (not e!4674101))))

(assert (=> b!7918759 (= res!3142824 (= lt!2691278 (++!18247 lt!2691279 ll!14)))))

(declare-fun b!7918760 () Bool)

(declare-fun e!4674104 () Bool)

(declare-fun tp_is_empty!53195 () Bool)

(declare-fun tp!2357805 () Bool)

(assert (=> b!7918760 (= e!4674104 (and tp_is_empty!53195 tp!2357805))))

(declare-fun b!7918762 () Bool)

(declare-fun inv!95632 (IArray!31831) Bool)

(assert (=> b!7918762 (= e!4674102 (and (inv!95632 (xs!19271 c!5365)) e!4674103))))

(declare-fun b!7918761 () Bool)

(assert (=> b!7918761 (= e!4674107 (not e!4674106))))

(declare-fun res!3142822 () Bool)

(assert (=> b!7918761 (=> res!3142822 e!4674106)))

(declare-fun lt!2691277 () List!74555)

(declare-fun $colon$colon!3422 (List!74555 T!145690) List!74555)

(assert (=> b!7918761 (= res!3142822 (not (= lt!2691277 (++!18247 lt!2691279 ($colon$colon!3422 (t!390108 ll!14) (h!80879 ll!14))))))))

(declare-fun lt!2691284 () List!74555)

(assert (=> b!7918761 (= lt!2691277 (++!18247 lt!2691279 lt!2691284))))

(assert (=> b!7918761 (= lt!2691277 (++!18247 lt!2691280 (t!390108 ll!14)))))

(assert (=> b!7918761 (= lt!2691284 (++!18247 lt!2691281 (t!390108 ll!14)))))

(declare-datatypes ((Unit!169555 0))(
  ( (Unit!169556) )
))
(declare-fun lt!2691282 () Unit!169555)

(declare-fun lemmaConcatAssociativity!3155 (List!74555 List!74555 List!74555) Unit!169555)

(assert (=> b!7918761 (= lt!2691282 (lemmaConcatAssociativity!3155 lt!2691279 lt!2691281 (t!390108 ll!14)))))

(declare-fun res!3142823 () Bool)

(assert (=> start!747924 (=> (not res!3142823) (not e!4674108))))

(assert (=> start!747924 (= res!3142823 (isBalanced!4511 c!5365))))

(assert (=> start!747924 e!4674108))

(assert (=> start!747924 (and (inv!95631 c!5365) e!4674102)))

(assert (=> start!747924 e!4674104))

(assert (= (and start!747924 res!3142823) b!7918755))

(assert (= (and b!7918755 res!3142825) b!7918754))

(assert (= (and b!7918754 res!3142821) b!7918753))

(assert (= (and b!7918753 res!3142826) b!7918761))

(assert (= (and b!7918761 (not res!3142822)) b!7918759))

(assert (= (and b!7918759 res!3142824) b!7918756))

(assert (= (and start!747924 (is-Node!15885 c!5365)) b!7918757))

(assert (= b!7918762 b!7918758))

(assert (= (and start!747924 (is-Leaf!30209 c!5365)) b!7918762))

(assert (= (and start!747924 (is-Cons!74431 ll!14)) b!7918760))

(declare-fun m!8294628 () Bool)

(assert (=> b!7918762 m!8294628))

(declare-fun m!8294630 () Bool)

(assert (=> b!7918757 m!8294630))

(declare-fun m!8294632 () Bool)

(assert (=> b!7918757 m!8294632))

(declare-fun m!8294634 () Bool)

(assert (=> b!7918756 m!8294634))

(declare-fun m!8294636 () Bool)

(assert (=> b!7918753 m!8294636))

(declare-fun m!8294638 () Bool)

(assert (=> b!7918753 m!8294638))

(declare-fun m!8294640 () Bool)

(assert (=> b!7918759 m!8294640))

(declare-fun m!8294642 () Bool)

(assert (=> start!747924 m!8294642))

(declare-fun m!8294644 () Bool)

(assert (=> start!747924 m!8294644))

(declare-fun m!8294646 () Bool)

(assert (=> b!7918761 m!8294646))

(declare-fun m!8294648 () Bool)

(assert (=> b!7918761 m!8294648))

(assert (=> b!7918761 m!8294648))

(declare-fun m!8294650 () Bool)

(assert (=> b!7918761 m!8294650))

(declare-fun m!8294652 () Bool)

(assert (=> b!7918761 m!8294652))

(declare-fun m!8294654 () Bool)

(assert (=> b!7918761 m!8294654))

(declare-fun m!8294656 () Bool)

(assert (=> b!7918761 m!8294656))

(declare-fun m!8294658 () Bool)

(assert (=> b!7918754 m!8294658))

(declare-fun m!8294660 () Bool)

(assert (=> b!7918754 m!8294660))

(declare-fun m!8294662 () Bool)

(assert (=> b!7918754 m!8294662))

(declare-fun m!8294664 () Bool)

(assert (=> b!7918754 m!8294664))

(declare-fun m!8294666 () Bool)

(assert (=> b!7918754 m!8294666))

(push 1)

(assert (not start!747924))

(assert (not b!7918760))

(assert (not b!7918756))

(assert tp_is_empty!53195)

(assert (not b!7918761))

(assert (not b!7918758))

(assert (not b!7918762))

(assert (not b!7918754))

(assert (not b!7918753))

(assert (not b!7918759))

(assert (not b!7918757))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7918805 () Bool)

(declare-fun e!4674137 () Bool)

(declare-fun e!4674138 () Bool)

(assert (=> b!7918805 (= e!4674137 e!4674138)))

(declare-fun res!3142860 () Bool)

(assert (=> b!7918805 (=> (not res!3142860) (not e!4674138))))

(declare-fun height!2201 (Conc!15885) Int)

(assert (=> b!7918805 (= res!3142860 (<= (- 1) (- (height!2201 (left!56848 lt!2691283)) (height!2201 (right!57178 lt!2691283)))))))

(declare-fun b!7918806 () Bool)

(declare-fun res!3142862 () Bool)

(assert (=> b!7918806 (=> (not res!3142862) (not e!4674138))))

(assert (=> b!7918806 (= res!3142862 (isBalanced!4511 (right!57178 lt!2691283)))))

(declare-fun b!7918807 () Bool)

(declare-fun res!3142859 () Bool)

(assert (=> b!7918807 (=> (not res!3142859) (not e!4674138))))

(assert (=> b!7918807 (= res!3142859 (<= (- (height!2201 (left!56848 lt!2691283)) (height!2201 (right!57178 lt!2691283))) 1))))

(declare-fun b!7918808 () Bool)

(declare-fun res!3142861 () Bool)

(assert (=> b!7918808 (=> (not res!3142861) (not e!4674138))))

(declare-fun isEmpty!42750 (Conc!15885) Bool)

(assert (=> b!7918808 (= res!3142861 (not (isEmpty!42750 (left!56848 lt!2691283))))))

(declare-fun d!2362570 () Bool)

(declare-fun res!3142858 () Bool)

(assert (=> d!2362570 (=> res!3142858 e!4674137)))

(assert (=> d!2362570 (= res!3142858 (not (is-Node!15885 lt!2691283)))))

(assert (=> d!2362570 (= (isBalanced!4511 lt!2691283) e!4674137)))

(declare-fun b!7918809 () Bool)

(assert (=> b!7918809 (= e!4674138 (not (isEmpty!42750 (right!57178 lt!2691283))))))

(declare-fun b!7918810 () Bool)

(declare-fun res!3142857 () Bool)

(assert (=> b!7918810 (=> (not res!3142857) (not e!4674138))))

(assert (=> b!7918810 (= res!3142857 (isBalanced!4511 (left!56848 lt!2691283)))))

(assert (= (and d!2362570 (not res!3142858)) b!7918805))

(assert (= (and b!7918805 res!3142860) b!7918807))

(assert (= (and b!7918807 res!3142859) b!7918810))

(assert (= (and b!7918810 res!3142857) b!7918806))

(assert (= (and b!7918806 res!3142862) b!7918808))

(assert (= (and b!7918808 res!3142861) b!7918809))

(declare-fun m!8294708 () Bool)

(assert (=> b!7918808 m!8294708))

(declare-fun m!8294710 () Bool)

(assert (=> b!7918805 m!8294710))

(declare-fun m!8294712 () Bool)

(assert (=> b!7918805 m!8294712))

(assert (=> b!7918807 m!8294710))

(assert (=> b!7918807 m!8294712))

(declare-fun m!8294714 () Bool)

(assert (=> b!7918809 m!8294714))

(declare-fun m!8294716 () Bool)

(assert (=> b!7918806 m!8294716))

(declare-fun m!8294718 () Bool)

(assert (=> b!7918810 m!8294718))

(assert (=> b!7918756 d!2362570))

(declare-fun b!7918819 () Bool)

(declare-fun e!4674144 () List!74555)

(assert (=> b!7918819 (= e!4674144 lt!2691284)))

(declare-fun b!7918820 () Bool)

(assert (=> b!7918820 (= e!4674144 (Cons!74431 (h!80879 lt!2691279) (++!18247 (t!390108 lt!2691279) lt!2691284)))))

(declare-fun d!2362574 () Bool)

(declare-fun e!4674143 () Bool)

(assert (=> d!2362574 e!4674143))

(declare-fun res!3142867 () Bool)

(assert (=> d!2362574 (=> (not res!3142867) (not e!4674143))))

(declare-fun lt!2691318 () List!74555)

(declare-fun content!15771 (List!74555) (Set T!145690))

(assert (=> d!2362574 (= res!3142867 (= (content!15771 lt!2691318) (set.union (content!15771 lt!2691279) (content!15771 lt!2691284))))))

(assert (=> d!2362574 (= lt!2691318 e!4674144)))

(declare-fun c!1453197 () Bool)

(assert (=> d!2362574 (= c!1453197 (is-Nil!74431 lt!2691279))))

(assert (=> d!2362574 (= (++!18247 lt!2691279 lt!2691284) lt!2691318)))

(declare-fun b!7918821 () Bool)

(declare-fun res!3142868 () Bool)

(assert (=> b!7918821 (=> (not res!3142868) (not e!4674143))))

(declare-fun size!43216 (List!74555) Int)

(assert (=> b!7918821 (= res!3142868 (= (size!43216 lt!2691318) (+ (size!43216 lt!2691279) (size!43216 lt!2691284))))))

(declare-fun b!7918822 () Bool)

(assert (=> b!7918822 (= e!4674143 (or (not (= lt!2691284 Nil!74431)) (= lt!2691318 lt!2691279)))))

(assert (= (and d!2362574 c!1453197) b!7918819))

(assert (= (and d!2362574 (not c!1453197)) b!7918820))

(assert (= (and d!2362574 res!3142867) b!7918821))

(assert (= (and b!7918821 res!3142868) b!7918822))

(declare-fun m!8294720 () Bool)

(assert (=> b!7918820 m!8294720))

(declare-fun m!8294722 () Bool)

(assert (=> d!2362574 m!8294722))

(declare-fun m!8294724 () Bool)

(assert (=> d!2362574 m!8294724))

(declare-fun m!8294726 () Bool)

(assert (=> d!2362574 m!8294726))

(declare-fun m!8294728 () Bool)

(assert (=> b!7918821 m!8294728))

(declare-fun m!8294730 () Bool)

(assert (=> b!7918821 m!8294730))

(declare-fun m!8294732 () Bool)

(assert (=> b!7918821 m!8294732))

(assert (=> b!7918761 d!2362574))

(declare-fun b!7918823 () Bool)

(declare-fun e!4674146 () List!74555)

(assert (=> b!7918823 (= e!4674146 (t!390108 ll!14))))

(declare-fun b!7918824 () Bool)

(assert (=> b!7918824 (= e!4674146 (Cons!74431 (h!80879 lt!2691280) (++!18247 (t!390108 lt!2691280) (t!390108 ll!14))))))

(declare-fun d!2362576 () Bool)

(declare-fun e!4674145 () Bool)

(assert (=> d!2362576 e!4674145))

(declare-fun res!3142869 () Bool)

(assert (=> d!2362576 (=> (not res!3142869) (not e!4674145))))

(declare-fun lt!2691319 () List!74555)

(assert (=> d!2362576 (= res!3142869 (= (content!15771 lt!2691319) (set.union (content!15771 lt!2691280) (content!15771 (t!390108 ll!14)))))))

(assert (=> d!2362576 (= lt!2691319 e!4674146)))

(declare-fun c!1453198 () Bool)

(assert (=> d!2362576 (= c!1453198 (is-Nil!74431 lt!2691280))))

(assert (=> d!2362576 (= (++!18247 lt!2691280 (t!390108 ll!14)) lt!2691319)))

(declare-fun b!7918825 () Bool)

(declare-fun res!3142870 () Bool)

(assert (=> b!7918825 (=> (not res!3142870) (not e!4674145))))

(assert (=> b!7918825 (= res!3142870 (= (size!43216 lt!2691319) (+ (size!43216 lt!2691280) (size!43216 (t!390108 ll!14)))))))

(declare-fun b!7918826 () Bool)

(assert (=> b!7918826 (= e!4674145 (or (not (= (t!390108 ll!14) Nil!74431)) (= lt!2691319 lt!2691280)))))

(assert (= (and d!2362576 c!1453198) b!7918823))

(assert (= (and d!2362576 (not c!1453198)) b!7918824))

(assert (= (and d!2362576 res!3142869) b!7918825))

(assert (= (and b!7918825 res!3142870) b!7918826))

(declare-fun m!8294734 () Bool)

(assert (=> b!7918824 m!8294734))

(declare-fun m!8294736 () Bool)

(assert (=> d!2362576 m!8294736))

(declare-fun m!8294738 () Bool)

(assert (=> d!2362576 m!8294738))

(declare-fun m!8294740 () Bool)

(assert (=> d!2362576 m!8294740))

(declare-fun m!8294742 () Bool)

(assert (=> b!7918825 m!8294742))

(declare-fun m!8294744 () Bool)

(assert (=> b!7918825 m!8294744))

(declare-fun m!8294746 () Bool)

(assert (=> b!7918825 m!8294746))

(assert (=> b!7918761 d!2362576))

(declare-fun b!7918827 () Bool)

(declare-fun e!4674148 () List!74555)

(assert (=> b!7918827 (= e!4674148 ($colon$colon!3422 (t!390108 ll!14) (h!80879 ll!14)))))

(declare-fun b!7918828 () Bool)

(assert (=> b!7918828 (= e!4674148 (Cons!74431 (h!80879 lt!2691279) (++!18247 (t!390108 lt!2691279) ($colon$colon!3422 (t!390108 ll!14) (h!80879 ll!14)))))))

(declare-fun d!2362578 () Bool)

(declare-fun e!4674147 () Bool)

(assert (=> d!2362578 e!4674147))

(declare-fun res!3142871 () Bool)

(assert (=> d!2362578 (=> (not res!3142871) (not e!4674147))))

(declare-fun lt!2691320 () List!74555)

(assert (=> d!2362578 (= res!3142871 (= (content!15771 lt!2691320) (set.union (content!15771 lt!2691279) (content!15771 ($colon$colon!3422 (t!390108 ll!14) (h!80879 ll!14))))))))

(assert (=> d!2362578 (= lt!2691320 e!4674148)))

(declare-fun c!1453199 () Bool)

(assert (=> d!2362578 (= c!1453199 (is-Nil!74431 lt!2691279))))

(assert (=> d!2362578 (= (++!18247 lt!2691279 ($colon$colon!3422 (t!390108 ll!14) (h!80879 ll!14))) lt!2691320)))

(declare-fun b!7918829 () Bool)

(declare-fun res!3142872 () Bool)

(assert (=> b!7918829 (=> (not res!3142872) (not e!4674147))))

(assert (=> b!7918829 (= res!3142872 (= (size!43216 lt!2691320) (+ (size!43216 lt!2691279) (size!43216 ($colon$colon!3422 (t!390108 ll!14) (h!80879 ll!14))))))))

(declare-fun b!7918830 () Bool)

(assert (=> b!7918830 (= e!4674147 (or (not (= ($colon$colon!3422 (t!390108 ll!14) (h!80879 ll!14)) Nil!74431)) (= lt!2691320 lt!2691279)))))

(assert (= (and d!2362578 c!1453199) b!7918827))

(assert (= (and d!2362578 (not c!1453199)) b!7918828))

(assert (= (and d!2362578 res!3142871) b!7918829))

(assert (= (and b!7918829 res!3142872) b!7918830))

(assert (=> b!7918828 m!8294648))

(declare-fun m!8294748 () Bool)

(assert (=> b!7918828 m!8294748))

(declare-fun m!8294750 () Bool)

(assert (=> d!2362578 m!8294750))

(assert (=> d!2362578 m!8294724))

(assert (=> d!2362578 m!8294648))

(declare-fun m!8294752 () Bool)

(assert (=> d!2362578 m!8294752))

(declare-fun m!8294754 () Bool)

(assert (=> b!7918829 m!8294754))

(assert (=> b!7918829 m!8294730))

(assert (=> b!7918829 m!8294648))

(declare-fun m!8294756 () Bool)

(assert (=> b!7918829 m!8294756))

(assert (=> b!7918761 d!2362578))

(declare-fun d!2362580 () Bool)

(assert (=> d!2362580 (= ($colon$colon!3422 (t!390108 ll!14) (h!80879 ll!14)) (Cons!74431 (h!80879 ll!14) (t!390108 ll!14)))))

(assert (=> b!7918761 d!2362580))

(declare-fun d!2362582 () Bool)

(assert (=> d!2362582 (= (++!18247 (++!18247 lt!2691279 lt!2691281) (t!390108 ll!14)) (++!18247 lt!2691279 (++!18247 lt!2691281 (t!390108 ll!14))))))

(declare-fun lt!2691323 () Unit!169555)

(declare-fun choose!59810 (List!74555 List!74555 List!74555) Unit!169555)

(assert (=> d!2362582 (= lt!2691323 (choose!59810 lt!2691279 lt!2691281 (t!390108 ll!14)))))

(assert (=> d!2362582 (= (lemmaConcatAssociativity!3155 lt!2691279 lt!2691281 (t!390108 ll!14)) lt!2691323)))

(declare-fun bs!1968519 () Bool)

(assert (= bs!1968519 d!2362582))

(declare-fun m!8294758 () Bool)

(assert (=> bs!1968519 m!8294758))

(assert (=> bs!1968519 m!8294654))

(declare-fun m!8294760 () Bool)

(assert (=> bs!1968519 m!8294760))

(assert (=> bs!1968519 m!8294636))

(assert (=> bs!1968519 m!8294636))

(declare-fun m!8294762 () Bool)

(assert (=> bs!1968519 m!8294762))

(assert (=> bs!1968519 m!8294654))

(assert (=> b!7918761 d!2362582))

(declare-fun b!7918843 () Bool)

(declare-fun e!4674154 () List!74555)

(assert (=> b!7918843 (= e!4674154 (t!390108 ll!14))))

(declare-fun b!7918844 () Bool)

(assert (=> b!7918844 (= e!4674154 (Cons!74431 (h!80879 lt!2691281) (++!18247 (t!390108 lt!2691281) (t!390108 ll!14))))))

(declare-fun d!2362584 () Bool)

(declare-fun e!4674153 () Bool)

(assert (=> d!2362584 e!4674153))

(declare-fun res!3142885 () Bool)

(assert (=> d!2362584 (=> (not res!3142885) (not e!4674153))))

(declare-fun lt!2691324 () List!74555)

(assert (=> d!2362584 (= res!3142885 (= (content!15771 lt!2691324) (set.union (content!15771 lt!2691281) (content!15771 (t!390108 ll!14)))))))

(assert (=> d!2362584 (= lt!2691324 e!4674154)))

(declare-fun c!1453200 () Bool)

(assert (=> d!2362584 (= c!1453200 (is-Nil!74431 lt!2691281))))

(assert (=> d!2362584 (= (++!18247 lt!2691281 (t!390108 ll!14)) lt!2691324)))

(declare-fun b!7918845 () Bool)

(declare-fun res!3142886 () Bool)

(assert (=> b!7918845 (=> (not res!3142886) (not e!4674153))))

(assert (=> b!7918845 (= res!3142886 (= (size!43216 lt!2691324) (+ (size!43216 lt!2691281) (size!43216 (t!390108 ll!14)))))))

(declare-fun b!7918846 () Bool)

(assert (=> b!7918846 (= e!4674153 (or (not (= (t!390108 ll!14) Nil!74431)) (= lt!2691324 lt!2691281)))))

(assert (= (and d!2362584 c!1453200) b!7918843))

(assert (= (and d!2362584 (not c!1453200)) b!7918844))

(assert (= (and d!2362584 res!3142885) b!7918845))

(assert (= (and b!7918845 res!3142886) b!7918846))

(declare-fun m!8294764 () Bool)

(assert (=> b!7918844 m!8294764))

(declare-fun m!8294766 () Bool)

(assert (=> d!2362584 m!8294766))

(declare-fun m!8294768 () Bool)

(assert (=> d!2362584 m!8294768))

(assert (=> d!2362584 m!8294740))

(declare-fun m!8294770 () Bool)

(assert (=> b!7918845 m!8294770))

(declare-fun m!8294772 () Bool)

(assert (=> b!7918845 m!8294772))

(assert (=> b!7918845 m!8294746))

(assert (=> b!7918761 d!2362584))

(declare-fun d!2362586 () Bool)

(assert (=> d!2362586 (= (inv!95632 (xs!19271 c!5365)) (<= (size!43216 (innerList!15973 (xs!19271 c!5365))) 2147483647))))

(declare-fun bs!1968520 () Bool)

(assert (= bs!1968520 d!2362586))

(declare-fun m!8294774 () Bool)

(assert (=> bs!1968520 m!8294774))

(assert (=> b!7918762 d!2362586))

(declare-fun b!7918847 () Bool)

(declare-fun e!4674156 () List!74555)

(assert (=> b!7918847 (= e!4674156 lt!2691281)))

(declare-fun b!7918848 () Bool)

(assert (=> b!7918848 (= e!4674156 (Cons!74431 (h!80879 lt!2691279) (++!18247 (t!390108 lt!2691279) lt!2691281)))))

(declare-fun d!2362588 () Bool)

(declare-fun e!4674155 () Bool)

(assert (=> d!2362588 e!4674155))

(declare-fun res!3142887 () Bool)

(assert (=> d!2362588 (=> (not res!3142887) (not e!4674155))))

(declare-fun lt!2691325 () List!74555)

(assert (=> d!2362588 (= res!3142887 (= (content!15771 lt!2691325) (set.union (content!15771 lt!2691279) (content!15771 lt!2691281))))))

(assert (=> d!2362588 (= lt!2691325 e!4674156)))

(declare-fun c!1453201 () Bool)

(assert (=> d!2362588 (= c!1453201 (is-Nil!74431 lt!2691279))))

(assert (=> d!2362588 (= (++!18247 lt!2691279 lt!2691281) lt!2691325)))

(declare-fun b!7918849 () Bool)

(declare-fun res!3142888 () Bool)

(assert (=> b!7918849 (=> (not res!3142888) (not e!4674155))))

(assert (=> b!7918849 (= res!3142888 (= (size!43216 lt!2691325) (+ (size!43216 lt!2691279) (size!43216 lt!2691281))))))

(declare-fun b!7918850 () Bool)

(assert (=> b!7918850 (= e!4674155 (or (not (= lt!2691281 Nil!74431)) (= lt!2691325 lt!2691279)))))

(assert (= (and d!2362588 c!1453201) b!7918847))

(assert (= (and d!2362588 (not c!1453201)) b!7918848))

(assert (= (and d!2362588 res!3142887) b!7918849))

(assert (= (and b!7918849 res!3142888) b!7918850))

(declare-fun m!8294776 () Bool)

(assert (=> b!7918848 m!8294776))

(declare-fun m!8294778 () Bool)

(assert (=> d!2362588 m!8294778))

(assert (=> d!2362588 m!8294724))

(assert (=> d!2362588 m!8294768))

(declare-fun m!8294780 () Bool)

(assert (=> b!7918849 m!8294780))

(assert (=> b!7918849 m!8294730))

(assert (=> b!7918849 m!8294772))

(assert (=> b!7918753 d!2362588))

(declare-fun b!7918866 () Bool)

(declare-fun e!4674163 () List!74555)

(declare-fun e!4674164 () List!74555)

(assert (=> b!7918866 (= e!4674163 e!4674164)))

(declare-fun c!1453207 () Bool)

(assert (=> b!7918866 (= c!1453207 (is-Leaf!30209 c!5365))))

(declare-fun b!7918865 () Bool)

(assert (=> b!7918865 (= e!4674163 Nil!74431)))

(declare-fun d!2362590 () Bool)

(declare-fun c!1453206 () Bool)

(assert (=> d!2362590 (= c!1453206 (is-Empty!15885 c!5365))))

(assert (=> d!2362590 (= (list!19386 c!5365) e!4674163)))

(declare-fun b!7918867 () Bool)

(declare-fun list!19388 (IArray!31831) List!74555)

(assert (=> b!7918867 (= e!4674164 (list!19388 (xs!19271 c!5365)))))

(declare-fun b!7918868 () Bool)

(assert (=> b!7918868 (= e!4674164 (++!18247 (list!19386 (left!56848 c!5365)) (list!19386 (right!57178 c!5365))))))

(assert (= (and d!2362590 c!1453206) b!7918865))

(assert (= (and d!2362590 (not c!1453206)) b!7918866))

(assert (= (and b!7918866 c!1453207) b!7918867))

(assert (= (and b!7918866 (not c!1453207)) b!7918868))

(declare-fun m!8294782 () Bool)

(assert (=> b!7918867 m!8294782))

(declare-fun m!8294784 () Bool)

(assert (=> b!7918868 m!8294784))

(declare-fun m!8294786 () Bool)

(assert (=> b!7918868 m!8294786))

(assert (=> b!7918868 m!8294784))

(assert (=> b!7918868 m!8294786))

(declare-fun m!8294788 () Bool)

(assert (=> b!7918868 m!8294788))

(assert (=> b!7918753 d!2362590))

(declare-fun b!7918870 () Bool)

(declare-fun e!4674165 () List!74555)

(declare-fun e!4674166 () List!74555)

(assert (=> b!7918870 (= e!4674165 e!4674166)))

(declare-fun c!1453209 () Bool)

(assert (=> b!7918870 (= c!1453209 (is-Leaf!30209 lt!2691276))))

(declare-fun b!7918869 () Bool)

(assert (=> b!7918869 (= e!4674165 Nil!74431)))

(declare-fun d!2362592 () Bool)

(declare-fun c!1453208 () Bool)

(assert (=> d!2362592 (= c!1453208 (is-Empty!15885 lt!2691276))))

(assert (=> d!2362592 (= (list!19386 lt!2691276) e!4674165)))

(declare-fun b!7918871 () Bool)

(assert (=> b!7918871 (= e!4674166 (list!19388 (xs!19271 lt!2691276)))))

(declare-fun b!7918872 () Bool)

(assert (=> b!7918872 (= e!4674166 (++!18247 (list!19386 (left!56848 lt!2691276)) (list!19386 (right!57178 lt!2691276))))))

(assert (= (and d!2362592 c!1453208) b!7918869))

(assert (= (and d!2362592 (not c!1453208)) b!7918870))

(assert (= (and b!7918870 c!1453209) b!7918871))

(assert (= (and b!7918870 (not c!1453209)) b!7918872))

(declare-fun m!8294790 () Bool)

(assert (=> b!7918871 m!8294790))

(declare-fun m!8294792 () Bool)

(assert (=> b!7918872 m!8294792))

(declare-fun m!8294794 () Bool)

(assert (=> b!7918872 m!8294794))

(assert (=> b!7918872 m!8294792))

(assert (=> b!7918872 m!8294794))

(declare-fun m!8294796 () Bool)

(assert (=> b!7918872 m!8294796))

(assert (=> b!7918754 d!2362592))

(declare-fun b!7918874 () Bool)

(declare-fun e!4674167 () List!74555)

(declare-fun e!4674168 () List!74555)

(assert (=> b!7918874 (= e!4674167 e!4674168)))

(declare-fun c!1453211 () Bool)

(assert (=> b!7918874 (= c!1453211 (is-Leaf!30209 lt!2691283))))

(declare-fun b!7918873 () Bool)

(assert (=> b!7918873 (= e!4674167 Nil!74431)))

(declare-fun d!2362594 () Bool)

(declare-fun c!1453210 () Bool)

(assert (=> d!2362594 (= c!1453210 (is-Empty!15885 lt!2691283))))

(assert (=> d!2362594 (= (list!19386 lt!2691283) e!4674167)))

(declare-fun b!7918875 () Bool)

(assert (=> b!7918875 (= e!4674168 (list!19388 (xs!19271 lt!2691283)))))

(declare-fun b!7918876 () Bool)

(assert (=> b!7918876 (= e!4674168 (++!18247 (list!19386 (left!56848 lt!2691283)) (list!19386 (right!57178 lt!2691283))))))

(assert (= (and d!2362594 c!1453210) b!7918873))

(assert (= (and d!2362594 (not c!1453210)) b!7918874))

(assert (= (and b!7918874 c!1453211) b!7918875))

(assert (= (and b!7918874 (not c!1453211)) b!7918876))

(declare-fun m!8294806 () Bool)

(assert (=> b!7918875 m!8294806))

(declare-fun m!8294808 () Bool)

(assert (=> b!7918876 m!8294808))

(declare-fun m!8294810 () Bool)

(assert (=> b!7918876 m!8294810))

(assert (=> b!7918876 m!8294808))

(assert (=> b!7918876 m!8294810))

(declare-fun m!8294816 () Bool)

(assert (=> b!7918876 m!8294816))

(assert (=> b!7918754 d!2362594))

(declare-fun b!7918877 () Bool)

(declare-fun e!4674170 () List!74555)

(assert (=> b!7918877 (= e!4674170 (t!390108 ll!14))))

(declare-fun b!7918878 () Bool)

(assert (=> b!7918878 (= e!4674170 (Cons!74431 (h!80879 lt!2691285) (++!18247 (t!390108 lt!2691285) (t!390108 ll!14))))))

(declare-fun d!2362596 () Bool)

(declare-fun e!4674169 () Bool)

(assert (=> d!2362596 e!4674169))

(declare-fun res!3142895 () Bool)

(assert (=> d!2362596 (=> (not res!3142895) (not e!4674169))))

(declare-fun lt!2691326 () List!74555)

(assert (=> d!2362596 (= res!3142895 (= (content!15771 lt!2691326) (set.union (content!15771 lt!2691285) (content!15771 (t!390108 ll!14)))))))

(assert (=> d!2362596 (= lt!2691326 e!4674170)))

(declare-fun c!1453212 () Bool)

(assert (=> d!2362596 (= c!1453212 (is-Nil!74431 lt!2691285))))

(assert (=> d!2362596 (= (++!18247 lt!2691285 (t!390108 ll!14)) lt!2691326)))

(declare-fun b!7918879 () Bool)

(declare-fun res!3142896 () Bool)

(assert (=> b!7918879 (=> (not res!3142896) (not e!4674169))))

(assert (=> b!7918879 (= res!3142896 (= (size!43216 lt!2691326) (+ (size!43216 lt!2691285) (size!43216 (t!390108 ll!14)))))))

(declare-fun b!7918880 () Bool)

(assert (=> b!7918880 (= e!4674169 (or (not (= (t!390108 ll!14) Nil!74431)) (= lt!2691326 lt!2691285)))))

(assert (= (and d!2362596 c!1453212) b!7918877))

(assert (= (and d!2362596 (not c!1453212)) b!7918878))

(assert (= (and d!2362596 res!3142895) b!7918879))

(assert (= (and b!7918879 res!3142896) b!7918880))

(declare-fun m!8294818 () Bool)

(assert (=> b!7918878 m!8294818))

(declare-fun m!8294820 () Bool)

(assert (=> d!2362596 m!8294820))

(declare-fun m!8294822 () Bool)

(assert (=> d!2362596 m!8294822))

(assert (=> d!2362596 m!8294740))

(declare-fun m!8294824 () Bool)

(assert (=> b!7918879 m!8294824))

(declare-fun m!8294826 () Bool)

(assert (=> b!7918879 m!8294826))

(assert (=> b!7918879 m!8294746))

(assert (=> b!7918754 d!2362596))

(declare-fun d!2362600 () Bool)

(declare-fun e!4674184 () Bool)

(assert (=> d!2362600 e!4674184))

(declare-fun res!3142908 () Bool)

(assert (=> d!2362600 (=> (not res!3142908) (not e!4674184))))

(declare-fun lt!2691340 () Conc!15885)

(assert (=> d!2362600 (= res!3142908 (= (list!19386 lt!2691340) (++!18247 (list!19386 lt!2691276) (t!390108 ll!14))))))

(declare-fun e!4674183 () Conc!15885)

(assert (=> d!2362600 (= lt!2691340 e!4674183)))

(declare-fun c!1453219 () Bool)

(assert (=> d!2362600 (= c!1453219 (is-Nil!74431 (t!390108 ll!14)))))

(assert (=> d!2362600 (isBalanced!4511 lt!2691276)))

(assert (=> d!2362600 (= (rec!60 (t!390108 ll!14) lt!2691276) lt!2691340)))

(declare-fun b!7918902 () Bool)

(assert (=> b!7918902 (= e!4674183 lt!2691276)))

(declare-fun b!7918903 () Bool)

(assert (=> b!7918903 (= e!4674183 (rec!60 (t!390108 (t!390108 ll!14)) (append!1135 lt!2691276 (h!80879 (t!390108 ll!14)))))))

(declare-fun lt!2691341 () List!74555)

(assert (=> b!7918903 (= lt!2691341 (list!19386 lt!2691276))))

(declare-fun lt!2691339 () List!74555)

(assert (=> b!7918903 (= lt!2691339 (Cons!74431 (h!80879 (t!390108 ll!14)) Nil!74431))))

(declare-fun lt!2691337 () Unit!169555)

(assert (=> b!7918903 (= lt!2691337 (lemmaConcatAssociativity!3155 lt!2691341 lt!2691339 (t!390108 (t!390108 ll!14))))))

(assert (=> b!7918903 (= (++!18247 (++!18247 lt!2691341 lt!2691339) (t!390108 (t!390108 ll!14))) (++!18247 lt!2691341 (++!18247 lt!2691339 (t!390108 (t!390108 ll!14)))))))

(declare-fun lt!2691338 () Unit!169555)

(assert (=> b!7918903 (= lt!2691338 lt!2691337)))

(declare-fun b!7918904 () Bool)

(assert (=> b!7918904 (= e!4674184 (isBalanced!4511 lt!2691340))))

(assert (= (and d!2362600 c!1453219) b!7918902))

(assert (= (and d!2362600 (not c!1453219)) b!7918903))

(assert (= (and d!2362600 res!3142908) b!7918904))

(declare-fun m!8294844 () Bool)

(assert (=> d!2362600 m!8294844))

(assert (=> d!2362600 m!8294658))

(assert (=> d!2362600 m!8294658))

(declare-fun m!8294846 () Bool)

(assert (=> d!2362600 m!8294846))

(declare-fun m!8294848 () Bool)

(assert (=> d!2362600 m!8294848))

(declare-fun m!8294850 () Bool)

(assert (=> b!7918903 m!8294850))

(declare-fun m!8294852 () Bool)

(assert (=> b!7918903 m!8294852))

(assert (=> b!7918903 m!8294850))

(declare-fun m!8294854 () Bool)

(assert (=> b!7918903 m!8294854))

(declare-fun m!8294856 () Bool)

(assert (=> b!7918903 m!8294856))

(declare-fun m!8294858 () Bool)

(assert (=> b!7918903 m!8294858))

(assert (=> b!7918903 m!8294854))

(declare-fun m!8294860 () Bool)

(assert (=> b!7918903 m!8294860))

(assert (=> b!7918903 m!8294658))

(assert (=> b!7918903 m!8294858))

(declare-fun m!8294862 () Bool)

(assert (=> b!7918903 m!8294862))

(declare-fun m!8294864 () Bool)

(assert (=> b!7918904 m!8294864))

(assert (=> b!7918754 d!2362600))

(declare-fun bm!734844 () Bool)

(declare-fun call!734850 () List!74555)

(declare-fun c!1453243 () Bool)

(assert (=> bm!734844 (= call!734850 (list!19386 (ite c!1453243 (right!57178 c!5365) (left!56848 c!5365))))))

(declare-fun b!7918971 () Bool)

(declare-fun e!4674222 () Conc!15885)

(declare-fun call!734857 () IArray!31831)

(assert (=> b!7918971 (= e!4674222 (Leaf!30209 call!734857 1))))

(declare-fun bm!734845 () Bool)

(declare-fun call!734849 () List!74555)

(assert (=> bm!734845 (= call!734849 (list!19386 (ite c!1453243 (left!56848 c!5365) (right!57178 c!5365))))))

(declare-fun bm!734846 () Bool)

(declare-fun call!734852 () Conc!15885)

(declare-fun call!734858 () Conc!15885)

(assert (=> bm!734846 (= call!734852 call!734858)))

(declare-fun b!7918973 () Bool)

(declare-fun e!4674221 () Conc!15885)

(declare-fun e!4674217 () Conc!15885)

(assert (=> b!7918973 (= e!4674221 e!4674217)))

(declare-fun c!1453244 () Bool)

(assert (=> b!7918973 (= c!1453244 (is-Node!15885 c!5365))))

(declare-fun b!7918974 () Bool)

(declare-fun e!4674220 () Conc!15885)

(assert (=> b!7918974 (= e!4674220 call!734858)))

(declare-fun b!7918975 () Bool)

(declare-fun e!4674219 () Bool)

(declare-fun lt!2691388 () Conc!15885)

(declare-fun $colon+!304 (List!74555 T!145690) List!74555)

(assert (=> b!7918975 (= e!4674219 (= (list!19386 lt!2691388) ($colon+!304 (list!19386 c!5365) (h!80879 ll!14))))))

(declare-fun b!7918976 () Bool)

(assert (=> b!7918976 (= e!4674221 (Leaf!30209 call!734857 1))))

(declare-fun b!7918977 () Bool)

(declare-fun e!4674218 () Conc!15885)

(declare-fun lt!2691390 () Conc!15885)

(declare-fun <>!419 (Conc!15885 Conc!15885) Conc!15885)

(assert (=> b!7918977 (= e!4674218 (<>!419 call!734852 (right!57178 lt!2691390)))))

(declare-fun lt!2691396 () List!74555)

(assert (=> b!7918977 (= lt!2691396 call!734850)))

(declare-fun lt!2691404 () List!74555)

(assert (=> b!7918977 (= lt!2691404 (list!19386 (left!56848 lt!2691390)))))

(declare-fun lt!2691392 () List!74555)

(assert (=> b!7918977 (= lt!2691392 (list!19386 (right!57178 lt!2691390)))))

(declare-fun lt!2691389 () Unit!169555)

(declare-fun lemmaConcatAssociativity!3157 (List!74555 List!74555 List!74555) Unit!169555)

(assert (=> b!7918977 (= lt!2691389 (lemmaConcatAssociativity!3157 lt!2691396 lt!2691404 lt!2691392))))

(declare-fun call!734856 () List!74555)

(declare-fun call!734853 () List!74555)

(assert (=> b!7918977 (= (++!18247 call!734856 lt!2691392) (++!18247 lt!2691396 call!734853))))

(declare-fun lt!2691395 () Unit!169555)

(assert (=> b!7918977 (= lt!2691395 lt!2691389)))

(declare-fun lt!2691394 () List!74555)

(assert (=> b!7918977 (= lt!2691394 call!734850)))

(declare-fun lt!2691401 () List!74555)

(assert (=> b!7918977 (= lt!2691401 call!734849)))

(declare-fun lt!2691400 () List!74555)

(assert (=> b!7918977 (= lt!2691400 (Cons!74431 (h!80879 ll!14) Nil!74431))))

(declare-fun lt!2691397 () Unit!169555)

(declare-fun call!734854 () Unit!169555)

(assert (=> b!7918977 (= lt!2691397 call!734854)))

(declare-fun call!734851 () List!74555)

(declare-fun call!734855 () List!74555)

(assert (=> b!7918977 (= (++!18247 call!734855 lt!2691400) (++!18247 lt!2691394 call!734851))))

(declare-fun lt!2691403 () Unit!169555)

(assert (=> b!7918977 (= lt!2691403 lt!2691397)))

(declare-fun b!7918978 () Bool)

(declare-fun res!3142929 () Bool)

(assert (=> b!7918978 (=> (not res!3142929) (not e!4674219))))

(assert (=> b!7918978 (= res!3142929 (<= (height!2201 lt!2691388) (+ (height!2201 c!5365) 1)))))

(declare-fun b!7918979 () Bool)

(assert (=> b!7918979 (= e!4674218 call!734852)))

(declare-fun lt!2691391 () List!74555)

(assert (=> b!7918979 (= lt!2691391 call!734849)))

(declare-fun lt!2691398 () List!74555)

(assert (=> b!7918979 (= lt!2691398 call!734850)))

(declare-fun lt!2691405 () List!74555)

(assert (=> b!7918979 (= lt!2691405 (Cons!74431 (h!80879 ll!14) Nil!74431))))

(declare-fun lt!2691402 () Unit!169555)

(assert (=> b!7918979 (= lt!2691402 call!734854)))

(assert (=> b!7918979 (= call!734855 call!734856)))

(declare-fun lt!2691393 () Unit!169555)

(assert (=> b!7918979 (= lt!2691393 lt!2691402)))

(declare-fun bm!734847 () Bool)

(assert (=> bm!734847 (= call!734854 (lemmaConcatAssociativity!3157 (ite c!1453243 lt!2691391 lt!2691394) (ite c!1453243 lt!2691398 lt!2691401) (ite c!1453243 lt!2691405 lt!2691400)))))

(declare-fun bm!734848 () Bool)

(assert (=> bm!734848 (= call!734851 (++!18247 (ite c!1453243 lt!2691391 lt!2691401) (ite c!1453243 lt!2691398 lt!2691400)))))

(declare-fun bm!734849 () Bool)

(assert (=> bm!734849 (= call!734853 (++!18247 (ite c!1453243 lt!2691398 lt!2691404) (ite c!1453243 lt!2691405 lt!2691392)))))

(declare-fun bm!734850 () Bool)

(declare-fun c!1453245 () Bool)

(assert (=> bm!734850 (= c!1453245 c!1453244)))

(assert (=> bm!734850 (= call!734858 (<>!419 (ite c!1453244 (left!56848 c!5365) c!5365) e!4674222))))

(declare-fun b!7918980 () Bool)

(declare-fun res!3142931 () Bool)

(assert (=> b!7918980 (=> (not res!3142931) (not e!4674219))))

(assert (=> b!7918980 (= res!3142931 (<= (height!2201 c!5365) (height!2201 lt!2691388)))))

(declare-fun b!7918981 () Bool)

(declare-fun c!1453246 () Bool)

(assert (=> b!7918981 (= c!1453246 (< (csize!32001 c!5365) 512))))

(assert (=> b!7918981 (= e!4674217 e!4674220)))

(declare-fun b!7918982 () Bool)

(declare-fun append!1137 (IArray!31831 T!145690) IArray!31831)

(assert (=> b!7918982 (= e!4674220 (Leaf!30209 (append!1137 (xs!19271 c!5365) (h!80879 ll!14)) (+ (csize!32001 c!5365) 1)))))

(declare-fun lt!2691399 () List!74555)

(assert (=> b!7918982 (= lt!2691399 ($colon+!304 (list!19388 (xs!19271 c!5365)) (h!80879 ll!14)))))

(declare-fun d!2362606 () Bool)

(assert (=> d!2362606 e!4674219))

(declare-fun res!3142930 () Bool)

(assert (=> d!2362606 (=> (not res!3142930) (not e!4674219))))

(assert (=> d!2362606 (= res!3142930 (isBalanced!4511 lt!2691388))))

(assert (=> d!2362606 (= lt!2691388 e!4674221)))

(declare-fun c!1453247 () Bool)

(assert (=> d!2362606 (= c!1453247 (is-Empty!15885 c!5365))))

(assert (=> d!2362606 (isBalanced!4511 c!5365)))

(assert (=> d!2362606 (= (append!1135 c!5365 (h!80879 ll!14)) lt!2691388)))

(declare-fun b!7918972 () Bool)

(assert (=> b!7918972 (= e!4674222 (ite c!1453243 lt!2691390 (left!56848 lt!2691390)))))

(declare-fun bm!734851 () Bool)

(declare-fun fill!264 (Int T!145690) IArray!31831)

(assert (=> bm!734851 (= call!734857 (fill!264 1 (h!80879 ll!14)))))

(declare-fun b!7918983 () Bool)

(assert (=> b!7918983 (= c!1453243 (<= (height!2201 lt!2691390) (+ (height!2201 (left!56848 c!5365)) 1)))))

(assert (=> b!7918983 (= lt!2691390 (append!1135 (right!57178 c!5365) (h!80879 ll!14)))))

(assert (=> b!7918983 (= e!4674217 e!4674218)))

(declare-fun bm!734852 () Bool)

(assert (=> bm!734852 (= call!734856 (++!18247 (ite c!1453243 lt!2691391 lt!2691396) (ite c!1453243 call!734853 lt!2691404)))))

(declare-fun bm!734853 () Bool)

(assert (=> bm!734853 (= call!734855 (++!18247 (ite c!1453243 call!734851 lt!2691394) (ite c!1453243 lt!2691405 lt!2691401)))))

(assert (= (and d!2362606 c!1453247) b!7918976))

(assert (= (and d!2362606 (not c!1453247)) b!7918973))

(assert (= (and b!7918973 c!1453244) b!7918983))

(assert (= (and b!7918973 (not c!1453244)) b!7918981))

(assert (= (and b!7918983 c!1453243) b!7918979))

(assert (= (and b!7918983 (not c!1453243)) b!7918977))

(assert (= (or b!7918979 b!7918977) bm!734848))

(assert (= (or b!7918979 b!7918977) bm!734844))

(assert (= (or b!7918979 b!7918977) bm!734845))

(assert (= (or b!7918979 b!7918977) bm!734846))

(assert (= (or b!7918979 b!7918977) bm!734849))

(assert (= (or b!7918979 b!7918977) bm!734847))

(assert (= (or b!7918979 b!7918977) bm!734853))

(assert (= (or b!7918979 b!7918977) bm!734852))

(assert (= (and b!7918981 c!1453246) b!7918982))

(assert (= (and b!7918981 (not c!1453246)) b!7918974))

(assert (= (or bm!734846 b!7918974) bm!734850))

(assert (= (and bm!734850 c!1453245) b!7918972))

(assert (= (and bm!734850 (not c!1453245)) b!7918971))

(assert (= (or b!7918976 b!7918971) bm!734851))

(assert (= (and d!2362606 res!3142930) b!7918980))

(assert (= (and b!7918980 res!3142931) b!7918978))

(assert (= (and b!7918978 res!3142929) b!7918975))

(declare-fun m!8294938 () Bool)

(assert (=> bm!734844 m!8294938))

(declare-fun m!8294940 () Bool)

(assert (=> bm!734851 m!8294940))

(declare-fun m!8294942 () Bool)

(assert (=> bm!734853 m!8294942))

(declare-fun m!8294944 () Bool)

(assert (=> bm!734845 m!8294944))

(declare-fun m!8294946 () Bool)

(assert (=> bm!734847 m!8294946))

(declare-fun m!8294948 () Bool)

(assert (=> bm!734849 m!8294948))

(declare-fun m!8294950 () Bool)

(assert (=> b!7918977 m!8294950))

(declare-fun m!8294952 () Bool)

(assert (=> b!7918977 m!8294952))

(declare-fun m!8294954 () Bool)

(assert (=> b!7918977 m!8294954))

(declare-fun m!8294956 () Bool)

(assert (=> b!7918977 m!8294956))

(declare-fun m!8294958 () Bool)

(assert (=> b!7918977 m!8294958))

(declare-fun m!8294960 () Bool)

(assert (=> b!7918977 m!8294960))

(declare-fun m!8294962 () Bool)

(assert (=> b!7918977 m!8294962))

(declare-fun m!8294964 () Bool)

(assert (=> b!7918977 m!8294964))

(declare-fun m!8294966 () Bool)

(assert (=> bm!734848 m!8294966))

(declare-fun m!8294968 () Bool)

(assert (=> bm!734852 m!8294968))

(declare-fun m!8294970 () Bool)

(assert (=> b!7918978 m!8294970))

(declare-fun m!8294972 () Bool)

(assert (=> b!7918978 m!8294972))

(declare-fun m!8294974 () Bool)

(assert (=> d!2362606 m!8294974))

(assert (=> d!2362606 m!8294642))

(assert (=> b!7918980 m!8294972))

(assert (=> b!7918980 m!8294970))

(declare-fun m!8294976 () Bool)

(assert (=> b!7918982 m!8294976))

(assert (=> b!7918982 m!8294782))

(assert (=> b!7918982 m!8294782))

(declare-fun m!8294978 () Bool)

(assert (=> b!7918982 m!8294978))

(declare-fun m!8294980 () Bool)

(assert (=> bm!734850 m!8294980))

(declare-fun m!8294982 () Bool)

(assert (=> b!7918983 m!8294982))

(declare-fun m!8294984 () Bool)

(assert (=> b!7918983 m!8294984))

(declare-fun m!8294986 () Bool)

(assert (=> b!7918983 m!8294986))

(declare-fun m!8294988 () Bool)

(assert (=> b!7918975 m!8294988))

(assert (=> b!7918975 m!8294638))

(assert (=> b!7918975 m!8294638))

(declare-fun m!8294990 () Bool)

(assert (=> b!7918975 m!8294990))

(assert (=> b!7918754 d!2362606))

(declare-fun b!7918984 () Bool)

(declare-fun e!4674224 () List!74555)

(assert (=> b!7918984 (= e!4674224 ll!14)))

(declare-fun b!7918985 () Bool)

(assert (=> b!7918985 (= e!4674224 (Cons!74431 (h!80879 lt!2691279) (++!18247 (t!390108 lt!2691279) ll!14)))))

(declare-fun d!2362624 () Bool)

(declare-fun e!4674223 () Bool)

(assert (=> d!2362624 e!4674223))

(declare-fun res!3142932 () Bool)

(assert (=> d!2362624 (=> (not res!3142932) (not e!4674223))))

(declare-fun lt!2691406 () List!74555)

(assert (=> d!2362624 (= res!3142932 (= (content!15771 lt!2691406) (set.union (content!15771 lt!2691279) (content!15771 ll!14))))))

(assert (=> d!2362624 (= lt!2691406 e!4674224)))

(declare-fun c!1453248 () Bool)

(assert (=> d!2362624 (= c!1453248 (is-Nil!74431 lt!2691279))))

(assert (=> d!2362624 (= (++!18247 lt!2691279 ll!14) lt!2691406)))

(declare-fun b!7918986 () Bool)

(declare-fun res!3142933 () Bool)

(assert (=> b!7918986 (=> (not res!3142933) (not e!4674223))))

(assert (=> b!7918986 (= res!3142933 (= (size!43216 lt!2691406) (+ (size!43216 lt!2691279) (size!43216 ll!14))))))

(declare-fun b!7918987 () Bool)

(assert (=> b!7918987 (= e!4674223 (or (not (= ll!14 Nil!74431)) (= lt!2691406 lt!2691279)))))

(assert (= (and d!2362624 c!1453248) b!7918984))

(assert (= (and d!2362624 (not c!1453248)) b!7918985))

(assert (= (and d!2362624 res!3142932) b!7918986))

(assert (= (and b!7918986 res!3142933) b!7918987))

(declare-fun m!8294992 () Bool)

(assert (=> b!7918985 m!8294992))

(declare-fun m!8294994 () Bool)

(assert (=> d!2362624 m!8294994))

(assert (=> d!2362624 m!8294724))

(declare-fun m!8294996 () Bool)

(assert (=> d!2362624 m!8294996))

(declare-fun m!8294998 () Bool)

(assert (=> b!7918986 m!8294998))

(assert (=> b!7918986 m!8294730))

(declare-fun m!8295000 () Bool)

(assert (=> b!7918986 m!8295000))

(assert (=> b!7918759 d!2362624))

(declare-fun d!2362626 () Bool)

(declare-fun c!1453251 () Bool)

(assert (=> d!2362626 (= c!1453251 (is-Node!15885 (left!56848 c!5365)))))

(declare-fun e!4674229 () Bool)

(assert (=> d!2362626 (= (inv!95631 (left!56848 c!5365)) e!4674229)))

(declare-fun b!7918994 () Bool)

(declare-fun inv!95635 (Conc!15885) Bool)

(assert (=> b!7918994 (= e!4674229 (inv!95635 (left!56848 c!5365)))))

(declare-fun b!7918995 () Bool)

(declare-fun e!4674230 () Bool)

(assert (=> b!7918995 (= e!4674229 e!4674230)))

(declare-fun res!3142936 () Bool)

(assert (=> b!7918995 (= res!3142936 (not (is-Leaf!30209 (left!56848 c!5365))))))

(assert (=> b!7918995 (=> res!3142936 e!4674230)))

(declare-fun b!7918996 () Bool)

(declare-fun inv!95636 (Conc!15885) Bool)

(assert (=> b!7918996 (= e!4674230 (inv!95636 (left!56848 c!5365)))))

(assert (= (and d!2362626 c!1453251) b!7918994))

(assert (= (and d!2362626 (not c!1453251)) b!7918995))

(assert (= (and b!7918995 (not res!3142936)) b!7918996))

(declare-fun m!8295002 () Bool)

(assert (=> b!7918994 m!8295002))

(declare-fun m!8295004 () Bool)

(assert (=> b!7918996 m!8295004))

(assert (=> b!7918757 d!2362626))

(declare-fun d!2362628 () Bool)

(declare-fun c!1453252 () Bool)

(assert (=> d!2362628 (= c!1453252 (is-Node!15885 (right!57178 c!5365)))))

(declare-fun e!4674231 () Bool)

(assert (=> d!2362628 (= (inv!95631 (right!57178 c!5365)) e!4674231)))

(declare-fun b!7918997 () Bool)

(assert (=> b!7918997 (= e!4674231 (inv!95635 (right!57178 c!5365)))))

(declare-fun b!7918998 () Bool)

(declare-fun e!4674232 () Bool)

(assert (=> b!7918998 (= e!4674231 e!4674232)))

(declare-fun res!3142937 () Bool)

(assert (=> b!7918998 (= res!3142937 (not (is-Leaf!30209 (right!57178 c!5365))))))

(assert (=> b!7918998 (=> res!3142937 e!4674232)))

(declare-fun b!7918999 () Bool)

(assert (=> b!7918999 (= e!4674232 (inv!95636 (right!57178 c!5365)))))

(assert (= (and d!2362628 c!1453252) b!7918997))

(assert (= (and d!2362628 (not c!1453252)) b!7918998))

(assert (= (and b!7918998 (not res!3142937)) b!7918999))

(declare-fun m!8295006 () Bool)

(assert (=> b!7918997 m!8295006))

(declare-fun m!8295008 () Bool)

(assert (=> b!7918999 m!8295008))

(assert (=> b!7918757 d!2362628))

(declare-fun b!7919000 () Bool)

(declare-fun e!4674233 () Bool)

(declare-fun e!4674234 () Bool)

(assert (=> b!7919000 (= e!4674233 e!4674234)))

(declare-fun res!3142941 () Bool)

(assert (=> b!7919000 (=> (not res!3142941) (not e!4674234))))

(assert (=> b!7919000 (= res!3142941 (<= (- 1) (- (height!2201 (left!56848 c!5365)) (height!2201 (right!57178 c!5365)))))))

(declare-fun b!7919001 () Bool)

(declare-fun res!3142943 () Bool)

(assert (=> b!7919001 (=> (not res!3142943) (not e!4674234))))

(assert (=> b!7919001 (= res!3142943 (isBalanced!4511 (right!57178 c!5365)))))

(declare-fun b!7919002 () Bool)

(declare-fun res!3142940 () Bool)

(assert (=> b!7919002 (=> (not res!3142940) (not e!4674234))))

(assert (=> b!7919002 (= res!3142940 (<= (- (height!2201 (left!56848 c!5365)) (height!2201 (right!57178 c!5365))) 1))))

(declare-fun b!7919003 () Bool)

(declare-fun res!3142942 () Bool)

(assert (=> b!7919003 (=> (not res!3142942) (not e!4674234))))

(assert (=> b!7919003 (= res!3142942 (not (isEmpty!42750 (left!56848 c!5365))))))

(declare-fun d!2362630 () Bool)

(declare-fun res!3142939 () Bool)

(assert (=> d!2362630 (=> res!3142939 e!4674233)))

(assert (=> d!2362630 (= res!3142939 (not (is-Node!15885 c!5365)))))

(assert (=> d!2362630 (= (isBalanced!4511 c!5365) e!4674233)))

(declare-fun b!7919004 () Bool)

(assert (=> b!7919004 (= e!4674234 (not (isEmpty!42750 (right!57178 c!5365))))))

(declare-fun b!7919005 () Bool)

(declare-fun res!3142938 () Bool)

(assert (=> b!7919005 (=> (not res!3142938) (not e!4674234))))

(assert (=> b!7919005 (= res!3142938 (isBalanced!4511 (left!56848 c!5365)))))

(assert (= (and d!2362630 (not res!3142939)) b!7919000))

(assert (= (and b!7919000 res!3142941) b!7919002))

(assert (= (and b!7919002 res!3142940) b!7919005))

(assert (= (and b!7919005 res!3142938) b!7919001))

(assert (= (and b!7919001 res!3142943) b!7919003))

(assert (= (and b!7919003 res!3142942) b!7919004))

(declare-fun m!8295010 () Bool)

(assert (=> b!7919003 m!8295010))

(assert (=> b!7919000 m!8294984))

(declare-fun m!8295012 () Bool)

(assert (=> b!7919000 m!8295012))

(assert (=> b!7919002 m!8294984))

(assert (=> b!7919002 m!8295012))

(declare-fun m!8295014 () Bool)

(assert (=> b!7919004 m!8295014))

(declare-fun m!8295016 () Bool)

(assert (=> b!7919001 m!8295016))

(declare-fun m!8295018 () Bool)

(assert (=> b!7919005 m!8295018))

(assert (=> start!747924 d!2362630))

(declare-fun d!2362632 () Bool)

(declare-fun c!1453253 () Bool)

(assert (=> d!2362632 (= c!1453253 (is-Node!15885 c!5365))))

(declare-fun e!4674235 () Bool)

(assert (=> d!2362632 (= (inv!95631 c!5365) e!4674235)))

(declare-fun b!7919006 () Bool)

(assert (=> b!7919006 (= e!4674235 (inv!95635 c!5365))))

(declare-fun b!7919007 () Bool)

(declare-fun e!4674236 () Bool)

(assert (=> b!7919007 (= e!4674235 e!4674236)))

(declare-fun res!3142944 () Bool)

(assert (=> b!7919007 (= res!3142944 (not (is-Leaf!30209 c!5365)))))

(assert (=> b!7919007 (=> res!3142944 e!4674236)))

(declare-fun b!7919008 () Bool)

(assert (=> b!7919008 (= e!4674236 (inv!95636 c!5365))))

(assert (= (and d!2362632 c!1453253) b!7919006))

(assert (= (and d!2362632 (not c!1453253)) b!7919007))

(assert (= (and b!7919007 (not res!3142944)) b!7919008))

(declare-fun m!8295020 () Bool)

(assert (=> b!7919006 m!8295020))

(declare-fun m!8295022 () Bool)

(assert (=> b!7919008 m!8295022))

(assert (=> start!747924 d!2362632))

(declare-fun b!7919013 () Bool)

(declare-fun e!4674239 () Bool)

(declare-fun tp!2357821 () Bool)

(assert (=> b!7919013 (= e!4674239 (and tp_is_empty!53195 tp!2357821))))

(assert (=> b!7918760 (= tp!2357805 e!4674239)))

(assert (= (and b!7918760 (is-Cons!74431 (t!390108 ll!14))) b!7919013))

(declare-fun tp!2357830 () Bool)

(declare-fun tp!2357828 () Bool)

(declare-fun e!4674244 () Bool)

(declare-fun b!7919022 () Bool)

(assert (=> b!7919022 (= e!4674244 (and (inv!95631 (left!56848 (left!56848 c!5365))) tp!2357830 (inv!95631 (right!57178 (left!56848 c!5365))) tp!2357828))))

(declare-fun b!7919024 () Bool)

(declare-fun e!4674245 () Bool)

(declare-fun tp!2357829 () Bool)

(assert (=> b!7919024 (= e!4674245 tp!2357829)))

(declare-fun b!7919023 () Bool)

(assert (=> b!7919023 (= e!4674244 (and (inv!95632 (xs!19271 (left!56848 c!5365))) e!4674245))))

(assert (=> b!7918757 (= tp!2357804 (and (inv!95631 (left!56848 c!5365)) e!4674244))))

(assert (= (and b!7918757 (is-Node!15885 (left!56848 c!5365))) b!7919022))

(assert (= b!7919023 b!7919024))

(assert (= (and b!7918757 (is-Leaf!30209 (left!56848 c!5365))) b!7919023))

(declare-fun m!8295024 () Bool)

(assert (=> b!7919022 m!8295024))

(declare-fun m!8295026 () Bool)

(assert (=> b!7919022 m!8295026))

(declare-fun m!8295028 () Bool)

(assert (=> b!7919023 m!8295028))

(assert (=> b!7918757 m!8294630))

(declare-fun tp!2357833 () Bool)

(declare-fun e!4674246 () Bool)

(declare-fun b!7919025 () Bool)

(declare-fun tp!2357831 () Bool)

(assert (=> b!7919025 (= e!4674246 (and (inv!95631 (left!56848 (right!57178 c!5365))) tp!2357833 (inv!95631 (right!57178 (right!57178 c!5365))) tp!2357831))))

(declare-fun b!7919027 () Bool)

(declare-fun e!4674247 () Bool)

(declare-fun tp!2357832 () Bool)

(assert (=> b!7919027 (= e!4674247 tp!2357832)))

(declare-fun b!7919026 () Bool)

(assert (=> b!7919026 (= e!4674246 (and (inv!95632 (xs!19271 (right!57178 c!5365))) e!4674247))))

(assert (=> b!7918757 (= tp!2357806 (and (inv!95631 (right!57178 c!5365)) e!4674246))))

(assert (= (and b!7918757 (is-Node!15885 (right!57178 c!5365))) b!7919025))

(assert (= b!7919026 b!7919027))

(assert (= (and b!7918757 (is-Leaf!30209 (right!57178 c!5365))) b!7919026))

(declare-fun m!8295030 () Bool)

(assert (=> b!7919025 m!8295030))

(declare-fun m!8295032 () Bool)

(assert (=> b!7919025 m!8295032))

(declare-fun m!8295034 () Bool)

(assert (=> b!7919026 m!8295034))

(assert (=> b!7918757 m!8294632))

(declare-fun b!7919028 () Bool)

(declare-fun e!4674248 () Bool)

(declare-fun tp!2357834 () Bool)

(assert (=> b!7919028 (= e!4674248 (and tp_is_empty!53195 tp!2357834))))

(assert (=> b!7918758 (= tp!2357803 e!4674248)))

(assert (= (and b!7918758 (is-Cons!74431 (innerList!15973 (xs!19271 c!5365)))) b!7919028))

(push 1)

(assert (not b!7918820))

(assert (not d!2362586))

(assert (not b!7918997))

(assert (not d!2362600))

(assert (not b!7919003))

(assert (not b!7919026))

(assert (not bm!734851))

(assert (not b!7918879))

(assert (not b!7919006))

(assert (not d!2362582))

(assert (not b!7918844))

(assert (not b!7919022))

(assert (not b!7918999))

(assert (not b!7918849))

(assert (not b!7919023))

(assert (not bm!734848))

(assert (not d!2362574))

(assert (not b!7918978))

(assert (not d!2362584))

(assert (not bm!734845))

(assert (not b!7918805))

(assert (not b!7918757))

(assert (not d!2362624))

(assert (not d!2362588))

(assert (not b!7918867))

(assert (not b!7918878))

(assert (not b!7918808))

(assert (not b!7919002))

(assert (not b!7918821))

(assert (not b!7918875))

(assert (not b!7918845))

(assert (not b!7918868))

(assert (not bm!734849))

(assert (not b!7918806))

(assert (not b!7918980))

(assert (not b!7918824))

(assert (not b!7919013))

(assert (not bm!734852))

(assert (not b!7919000))

(assert (not b!7918982))

(assert tp_is_empty!53195)

(assert (not b!7918996))

(assert (not b!7918986))

(assert (not d!2362576))

(assert (not b!7918983))

(assert (not bm!734844))

(assert (not b!7918977))

(assert (not b!7918829))

(assert (not b!7919008))

(assert (not b!7918872))

(assert (not b!7918876))

(assert (not b!7918904))

(assert (not b!7918848))

(assert (not b!7918825))

(assert (not b!7918985))

(assert (not d!2362606))

(assert (not b!7919028))

(assert (not bm!734847))

(assert (not b!7918994))

(assert (not d!2362578))

(assert (not b!7919024))

(assert (not d!2362596))

(assert (not b!7918807))

(assert (not b!7919005))

(assert (not bm!734850))

(assert (not b!7918810))

(assert (not b!7918903))

(assert (not b!7919004))

(assert (not b!7919001))

(assert (not b!7918809))

(assert (not b!7918871))

(assert (not b!7918828))

(assert (not b!7919025))

(assert (not b!7919027))

(assert (not b!7918975))

(assert (not bm!734853))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

