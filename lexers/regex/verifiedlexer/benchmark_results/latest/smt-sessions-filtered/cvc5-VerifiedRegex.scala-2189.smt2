; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!107984 () Bool)

(assert start!107984)

(declare-fun b!1210768 () Bool)

(declare-fun e!776754 () Bool)

(declare-fun tp_is_empty!6225 () Bool)

(declare-fun tp!342924 () Bool)

(assert (=> b!1210768 (= e!776754 (and tp_is_empty!6225 tp!342924))))

(declare-fun b!1210769 () Bool)

(declare-fun e!776753 () Bool)

(declare-datatypes ((B!1367 0))(
  ( (B!1368 (val!4041 Int)) )
))
(declare-datatypes ((List!12288 0))(
  ( (Nil!12230) (Cons!12230 (h!17631 B!1367) (t!112672 List!12288)) )
))
(declare-fun l!3821 () List!12288)

(declare-fun ListPrimitiveSize!91 (List!12288) Int)

(assert (=> b!1210769 (= e!776753 (>= (ListPrimitiveSize!91 (t!112672 l!3821)) (ListPrimitiveSize!91 l!3821)))))

(declare-fun b!1210770 () Bool)

(declare-fun res!544601 () Bool)

(assert (=> b!1210770 (=> (not res!544601) (not e!776753))))

(declare-fun e!9491 () B!1367)

(assert (=> b!1210770 (= res!544601 (and (is-Cons!12230 l!3821) (= (h!17631 l!3821) e!9491)))))

(declare-fun res!544599 () Bool)

(assert (=> start!107984 (=> (not res!544599) (not e!776753))))

(declare-fun contains!2047 (List!12288 B!1367) Bool)

(assert (=> start!107984 (= res!544599 (contains!2047 l!3821 e!9491))))

(assert (=> start!107984 e!776753))

(assert (=> start!107984 e!776754))

(assert (=> start!107984 tp_is_empty!6225))

(declare-fun b!1210771 () Bool)

(declare-fun res!544598 () Bool)

(assert (=> b!1210771 (=> (not res!544598) (not e!776753))))

(declare-fun -!91 (List!12288 B!1367) List!12288)

(assert (=> b!1210771 (= res!544598 (= (-!91 l!3821 e!9491) (-!91 (t!112672 l!3821) e!9491)))))

(declare-fun b!1210772 () Bool)

(declare-fun res!544600 () Bool)

(assert (=> b!1210772 (=> (not res!544600) (not e!776753))))

(assert (=> b!1210772 (= res!544600 (contains!2047 (t!112672 l!3821) e!9491))))

(assert (= (and start!107984 res!544599) b!1210770))

(assert (= (and b!1210770 res!544601) b!1210771))

(assert (= (and b!1210771 res!544598) b!1210772))

(assert (= (and b!1210772 res!544600) b!1210769))

(assert (= (and start!107984 (is-Cons!12230 l!3821)) b!1210768))

(declare-fun m!1386603 () Bool)

(assert (=> b!1210769 m!1386603))

(declare-fun m!1386605 () Bool)

(assert (=> b!1210769 m!1386605))

(declare-fun m!1386607 () Bool)

(assert (=> start!107984 m!1386607))

(declare-fun m!1386609 () Bool)

(assert (=> b!1210771 m!1386609))

(declare-fun m!1386611 () Bool)

(assert (=> b!1210771 m!1386611))

(declare-fun m!1386613 () Bool)

(assert (=> b!1210772 m!1386613))

(push 1)

(assert tp_is_empty!6225)

(assert (not start!107984))

(assert (not b!1210768))

(assert (not b!1210772))

(assert (not b!1210771))

(assert (not b!1210769))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1210802 () Bool)

(declare-fun e!776772 () List!12288)

(declare-fun call!84450 () List!12288)

(assert (=> b!1210802 (= e!776772 (Cons!12230 (h!17631 l!3821) call!84450))))

(declare-fun b!1210803 () Bool)

(assert (=> b!1210803 (= e!776772 call!84450)))

(declare-fun b!1210804 () Bool)

(declare-fun e!776774 () List!12288)

(assert (=> b!1210804 (= e!776774 e!776772)))

(declare-fun c!202787 () Bool)

(assert (=> b!1210804 (= c!202787 (= e!9491 (h!17631 l!3821)))))

(declare-fun b!1210805 () Bool)

(assert (=> b!1210805 (= e!776774 Nil!12230)))

(declare-fun d!346384 () Bool)

(declare-fun e!776773 () Bool)

(assert (=> d!346384 e!776773))

(declare-fun res!544620 () Bool)

(assert (=> d!346384 (=> (not res!544620) (not e!776773))))

(declare-fun lt!414420 () List!12288)

(declare-fun size!9746 (List!12288) Int)

(assert (=> d!346384 (= res!544620 (<= (size!9746 lt!414420) (size!9746 l!3821)))))

(assert (=> d!346384 (= lt!414420 e!776774)))

(declare-fun c!202786 () Bool)

(assert (=> d!346384 (= c!202786 (is-Cons!12230 l!3821))))

(assert (=> d!346384 (= (-!91 l!3821 e!9491) lt!414420)))

(declare-fun b!1210806 () Bool)

(declare-fun content!1744 (List!12288) (Set B!1367))

(assert (=> b!1210806 (= e!776773 (= (content!1744 lt!414420) (set.minus (content!1744 l!3821) (set.insert e!9491 (as set.empty (Set B!1367))))))))

(declare-fun bm!84445 () Bool)

(assert (=> bm!84445 (= call!84450 (-!91 (t!112672 l!3821) e!9491))))

(assert (= (and d!346384 c!202786) b!1210804))

(assert (= (and d!346384 (not c!202786)) b!1210805))

(assert (= (and b!1210804 c!202787) b!1210803))

(assert (= (and b!1210804 (not c!202787)) b!1210802))

(assert (= (or b!1210803 b!1210802) bm!84445))

(assert (= (and d!346384 res!544620) b!1210806))

(declare-fun m!1386627 () Bool)

(assert (=> d!346384 m!1386627))

(declare-fun m!1386629 () Bool)

(assert (=> d!346384 m!1386629))

(declare-fun m!1386631 () Bool)

(assert (=> b!1210806 m!1386631))

(declare-fun m!1386633 () Bool)

(assert (=> b!1210806 m!1386633))

(declare-fun m!1386635 () Bool)

(assert (=> b!1210806 m!1386635))

(assert (=> bm!84445 m!1386611))

(assert (=> b!1210771 d!346384))

(declare-fun b!1210807 () Bool)

(declare-fun e!776775 () List!12288)

(declare-fun call!84451 () List!12288)

(assert (=> b!1210807 (= e!776775 (Cons!12230 (h!17631 (t!112672 l!3821)) call!84451))))

(declare-fun b!1210808 () Bool)

(assert (=> b!1210808 (= e!776775 call!84451)))

(declare-fun b!1210809 () Bool)

(declare-fun e!776777 () List!12288)

(assert (=> b!1210809 (= e!776777 e!776775)))

(declare-fun c!202789 () Bool)

(assert (=> b!1210809 (= c!202789 (= e!9491 (h!17631 (t!112672 l!3821))))))

(declare-fun b!1210810 () Bool)

(assert (=> b!1210810 (= e!776777 Nil!12230)))

(declare-fun d!346388 () Bool)

(declare-fun e!776776 () Bool)

(assert (=> d!346388 e!776776))

(declare-fun res!544621 () Bool)

(assert (=> d!346388 (=> (not res!544621) (not e!776776))))

(declare-fun lt!414421 () List!12288)

(assert (=> d!346388 (= res!544621 (<= (size!9746 lt!414421) (size!9746 (t!112672 l!3821))))))

(assert (=> d!346388 (= lt!414421 e!776777)))

(declare-fun c!202788 () Bool)

(assert (=> d!346388 (= c!202788 (is-Cons!12230 (t!112672 l!3821)))))

(assert (=> d!346388 (= (-!91 (t!112672 l!3821) e!9491) lt!414421)))

(declare-fun b!1210811 () Bool)

(assert (=> b!1210811 (= e!776776 (= (content!1744 lt!414421) (set.minus (content!1744 (t!112672 l!3821)) (set.insert e!9491 (as set.empty (Set B!1367))))))))

(declare-fun bm!84446 () Bool)

(assert (=> bm!84446 (= call!84451 (-!91 (t!112672 (t!112672 l!3821)) e!9491))))

(assert (= (and d!346388 c!202788) b!1210809))

(assert (= (and d!346388 (not c!202788)) b!1210810))

(assert (= (and b!1210809 c!202789) b!1210808))

(assert (= (and b!1210809 (not c!202789)) b!1210807))

(assert (= (or b!1210808 b!1210807) bm!84446))

(assert (= (and d!346388 res!544621) b!1210811))

(declare-fun m!1386637 () Bool)

(assert (=> d!346388 m!1386637))

(declare-fun m!1386639 () Bool)

(assert (=> d!346388 m!1386639))

(declare-fun m!1386641 () Bool)

(assert (=> b!1210811 m!1386641))

(declare-fun m!1386643 () Bool)

(assert (=> b!1210811 m!1386643))

(assert (=> b!1210811 m!1386635))

(declare-fun m!1386645 () Bool)

(assert (=> bm!84446 m!1386645))

(assert (=> b!1210771 d!346388))

(declare-fun d!346390 () Bool)

(declare-fun lt!414425 () Bool)

(assert (=> d!346390 (= lt!414425 (set.member e!9491 (content!1744 l!3821)))))

(declare-fun e!776785 () Bool)

(assert (=> d!346390 (= lt!414425 e!776785)))

(declare-fun res!544629 () Bool)

(assert (=> d!346390 (=> (not res!544629) (not e!776785))))

(assert (=> d!346390 (= res!544629 (is-Cons!12230 l!3821))))

(assert (=> d!346390 (= (contains!2047 l!3821 e!9491) lt!414425)))

(declare-fun b!1210818 () Bool)

(declare-fun e!776784 () Bool)

(assert (=> b!1210818 (= e!776785 e!776784)))

(declare-fun res!544628 () Bool)

(assert (=> b!1210818 (=> res!544628 e!776784)))

(assert (=> b!1210818 (= res!544628 (= (h!17631 l!3821) e!9491))))

(declare-fun b!1210819 () Bool)

(assert (=> b!1210819 (= e!776784 (contains!2047 (t!112672 l!3821) e!9491))))

(assert (= (and d!346390 res!544629) b!1210818))

(assert (= (and b!1210818 (not res!544628)) b!1210819))

(assert (=> d!346390 m!1386633))

(declare-fun m!1386651 () Bool)

(assert (=> d!346390 m!1386651))

(assert (=> b!1210819 m!1386613))

(assert (=> start!107984 d!346390))

(declare-fun d!346394 () Bool)

(declare-fun lt!414430 () Int)

(assert (=> d!346394 (>= lt!414430 0)))

(declare-fun e!776790 () Int)

(assert (=> d!346394 (= lt!414430 e!776790)))

(declare-fun c!202794 () Bool)

(assert (=> d!346394 (= c!202794 (is-Nil!12230 (t!112672 l!3821)))))

(assert (=> d!346394 (= (ListPrimitiveSize!91 (t!112672 l!3821)) lt!414430)))

(declare-fun b!1210828 () Bool)

(assert (=> b!1210828 (= e!776790 0)))

(declare-fun b!1210829 () Bool)

(assert (=> b!1210829 (= e!776790 (+ 1 (ListPrimitiveSize!91 (t!112672 (t!112672 l!3821)))))))

(assert (= (and d!346394 c!202794) b!1210828))

(assert (= (and d!346394 (not c!202794)) b!1210829))

(declare-fun m!1386653 () Bool)

(assert (=> b!1210829 m!1386653))

(assert (=> b!1210769 d!346394))

(declare-fun d!346396 () Bool)

(declare-fun lt!414431 () Int)

(assert (=> d!346396 (>= lt!414431 0)))

(declare-fun e!776791 () Int)

(assert (=> d!346396 (= lt!414431 e!776791)))

(declare-fun c!202795 () Bool)

(assert (=> d!346396 (= c!202795 (is-Nil!12230 l!3821))))

(assert (=> d!346396 (= (ListPrimitiveSize!91 l!3821) lt!414431)))

(declare-fun b!1210830 () Bool)

(assert (=> b!1210830 (= e!776791 0)))

(declare-fun b!1210831 () Bool)

(assert (=> b!1210831 (= e!776791 (+ 1 (ListPrimitiveSize!91 (t!112672 l!3821))))))

(assert (= (and d!346396 c!202795) b!1210830))

(assert (= (and d!346396 (not c!202795)) b!1210831))

(assert (=> b!1210831 m!1386603))

(assert (=> b!1210769 d!346396))

(declare-fun d!346398 () Bool)

(declare-fun lt!414432 () Bool)

(assert (=> d!346398 (= lt!414432 (set.member e!9491 (content!1744 (t!112672 l!3821))))))

(declare-fun e!776793 () Bool)

(assert (=> d!346398 (= lt!414432 e!776793)))

(declare-fun res!544631 () Bool)

(assert (=> d!346398 (=> (not res!544631) (not e!776793))))

(assert (=> d!346398 (= res!544631 (is-Cons!12230 (t!112672 l!3821)))))

(assert (=> d!346398 (= (contains!2047 (t!112672 l!3821) e!9491) lt!414432)))

(declare-fun b!1210832 () Bool)

(declare-fun e!776792 () Bool)

(assert (=> b!1210832 (= e!776793 e!776792)))

(declare-fun res!544630 () Bool)

(assert (=> b!1210832 (=> res!544630 e!776792)))

(assert (=> b!1210832 (= res!544630 (= (h!17631 (t!112672 l!3821)) e!9491))))

(declare-fun b!1210833 () Bool)

(assert (=> b!1210833 (= e!776792 (contains!2047 (t!112672 (t!112672 l!3821)) e!9491))))

(assert (= (and d!346398 res!544631) b!1210832))

(assert (= (and b!1210832 (not res!544630)) b!1210833))

(assert (=> d!346398 m!1386643))

(declare-fun m!1386655 () Bool)

(assert (=> d!346398 m!1386655))

(declare-fun m!1386657 () Bool)

(assert (=> b!1210833 m!1386657))

(assert (=> b!1210772 d!346398))

(declare-fun b!1210838 () Bool)

(declare-fun e!776796 () Bool)

(declare-fun tp!342930 () Bool)

(assert (=> b!1210838 (= e!776796 (and tp_is_empty!6225 tp!342930))))

(assert (=> b!1210768 (= tp!342924 e!776796)))

(assert (= (and b!1210768 (is-Cons!12230 (t!112672 l!3821))) b!1210838))

(push 1)

(assert (not d!346398))

(assert tp_is_empty!6225)

(assert (not d!346388))

(assert (not b!1210811))

(assert (not b!1210833))

(assert (not b!1210806))

(assert (not d!346384))

(assert (not b!1210829))

(assert (not bm!84446))

(assert (not b!1210819))

(assert (not bm!84445))

(assert (not d!346390))

(assert (not b!1210838))

(assert (not b!1210831))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

