; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62040 () Bool)

(assert start!62040)

(declare-fun b!693538 () Bool)

(declare-fun e!394635 () Bool)

(declare-datatypes ((List!13171 0))(
  ( (Nil!13168) (Cons!13167 (h!14212 (_ BitVec 64)) (t!19458 List!13171)) )
))
(declare-fun acc!681 () List!13171)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3714 (List!13171 (_ BitVec 64)) Bool)

(assert (=> b!693538 (= e!394635 (not (contains!3714 acc!681 k!2843)))))

(declare-fun b!693539 () Bool)

(declare-fun e!394632 () Bool)

(assert (=> b!693539 (= e!394632 false)))

(declare-datatypes ((array!39837 0))(
  ( (array!39838 (arr!19077 (Array (_ BitVec 32) (_ BitVec 64))) (size!19460 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39837)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!316741 () Bool)

(declare-fun lt!316740 () List!13171)

(declare-fun arrayNoDuplicates!0 (array!39837 (_ BitVec 32) List!13171) Bool)

(assert (=> b!693539 (= lt!316741 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316740))))

(declare-fun b!693540 () Bool)

(declare-fun res!457815 () Bool)

(declare-fun e!394627 () Bool)

(assert (=> b!693540 (=> (not res!457815) (not e!394627))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!693540 (= res!457815 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19460 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!693541 () Bool)

(declare-fun res!457828 () Bool)

(assert (=> b!693541 (=> (not res!457828) (not e!394632))))

(assert (=> b!693541 (= res!457828 (not (contains!3714 lt!316740 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693542 () Bool)

(declare-fun res!457822 () Bool)

(assert (=> b!693542 (=> (not res!457822) (not e!394627))))

(assert (=> b!693542 (= res!457822 (not (contains!3714 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693543 () Bool)

(declare-fun e!394629 () Bool)

(assert (=> b!693543 (= e!394629 e!394632)))

(declare-fun res!457807 () Bool)

(assert (=> b!693543 (=> (not res!457807) (not e!394632))))

(assert (=> b!693543 (= res!457807 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!424 (List!13171 (_ BitVec 64)) List!13171)

(assert (=> b!693543 (= lt!316740 ($colon$colon!424 acc!681 (select (arr!19077 a!3626) from!3004)))))

(declare-fun b!693544 () Bool)

(declare-datatypes ((Unit!24478 0))(
  ( (Unit!24479) )
))
(declare-fun e!394636 () Unit!24478)

(declare-fun Unit!24480 () Unit!24478)

(assert (=> b!693544 (= e!394636 Unit!24480)))

(declare-fun b!693545 () Bool)

(assert (=> b!693545 (= e!394627 e!394629)))

(declare-fun res!457825 () Bool)

(assert (=> b!693545 (=> (not res!457825) (not e!394629))))

(assert (=> b!693545 (= res!457825 (not (= (select (arr!19077 a!3626) from!3004) k!2843)))))

(declare-fun lt!316742 () Unit!24478)

(assert (=> b!693545 (= lt!316742 e!394636)))

(declare-fun c!78233 () Bool)

(assert (=> b!693545 (= c!78233 (= (select (arr!19077 a!3626) from!3004) k!2843))))

(declare-fun b!693546 () Bool)

(declare-fun e!394633 () Bool)

(assert (=> b!693546 (= e!394633 (contains!3714 acc!681 k!2843))))

(declare-fun b!693547 () Bool)

(declare-fun res!457829 () Bool)

(assert (=> b!693547 (=> (not res!457829) (not e!394632))))

(declare-fun e!394631 () Bool)

(assert (=> b!693547 (= res!457829 e!394631)))

(declare-fun res!457806 () Bool)

(assert (=> b!693547 (=> res!457806 e!394631)))

(declare-fun e!394628 () Bool)

(assert (=> b!693547 (= res!457806 e!394628)))

(declare-fun res!457827 () Bool)

(assert (=> b!693547 (=> (not res!457827) (not e!394628))))

(assert (=> b!693547 (= res!457827 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693548 () Bool)

(declare-fun res!457813 () Bool)

(assert (=> b!693548 (=> (not res!457813) (not e!394627))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!693548 (= res!457813 (validKeyInArray!0 (select (arr!19077 a!3626) from!3004)))))

(declare-fun b!693549 () Bool)

(declare-fun res!457811 () Bool)

(assert (=> b!693549 (=> (not res!457811) (not e!394627))))

(assert (=> b!693549 (= res!457811 (validKeyInArray!0 k!2843))))

(declare-fun b!693550 () Bool)

(declare-fun res!457820 () Bool)

(assert (=> b!693550 (=> (not res!457820) (not e!394632))))

(assert (=> b!693550 (= res!457820 (not (contains!3714 lt!316740 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693551 () Bool)

(declare-fun res!457823 () Bool)

(assert (=> b!693551 (=> (not res!457823) (not e!394627))))

(assert (=> b!693551 (= res!457823 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19460 a!3626))))))

(declare-fun b!693552 () Bool)

(declare-fun res!457824 () Bool)

(assert (=> b!693552 (=> (not res!457824) (not e!394627))))

(declare-fun e!394634 () Bool)

(assert (=> b!693552 (= res!457824 e!394634)))

(declare-fun res!457816 () Bool)

(assert (=> b!693552 (=> res!457816 e!394634)))

(assert (=> b!693552 (= res!457816 e!394633)))

(declare-fun res!457814 () Bool)

(assert (=> b!693552 (=> (not res!457814) (not e!394633))))

(assert (=> b!693552 (= res!457814 (bvsgt from!3004 i!1382))))

(declare-fun b!693553 () Bool)

(assert (=> b!693553 (= e!394634 e!394635)))

(declare-fun res!457817 () Bool)

(assert (=> b!693553 (=> (not res!457817) (not e!394635))))

(assert (=> b!693553 (= res!457817 (bvsle from!3004 i!1382))))

(declare-fun b!693554 () Bool)

(declare-fun res!457812 () Bool)

(assert (=> b!693554 (=> (not res!457812) (not e!394627))))

(assert (=> b!693554 (= res!457812 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!693555 () Bool)

(declare-fun Unit!24481 () Unit!24478)

(assert (=> b!693555 (= e!394636 Unit!24481)))

(declare-fun arrayContainsKey!0 (array!39837 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!693555 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316743 () Unit!24478)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39837 (_ BitVec 64) (_ BitVec 32)) Unit!24478)

(assert (=> b!693555 (= lt!316743 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!693555 false))

(declare-fun res!457818 () Bool)

(assert (=> start!62040 (=> (not res!457818) (not e!394627))))

(assert (=> start!62040 (= res!457818 (and (bvslt (size!19460 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19460 a!3626))))))

(assert (=> start!62040 e!394627))

(assert (=> start!62040 true))

(declare-fun array_inv!14851 (array!39837) Bool)

(assert (=> start!62040 (array_inv!14851 a!3626)))

(declare-fun b!693556 () Bool)

(assert (=> b!693556 (= e!394628 (contains!3714 lt!316740 k!2843))))

(declare-fun b!693557 () Bool)

(declare-fun res!457809 () Bool)

(assert (=> b!693557 (=> (not res!457809) (not e!394627))))

(assert (=> b!693557 (= res!457809 (not (contains!3714 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693558 () Bool)

(declare-fun res!457810 () Bool)

(assert (=> b!693558 (=> (not res!457810) (not e!394627))))

(assert (=> b!693558 (= res!457810 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!693559 () Bool)

(declare-fun e!394626 () Bool)

(assert (=> b!693559 (= e!394631 e!394626)))

(declare-fun res!457819 () Bool)

(assert (=> b!693559 (=> (not res!457819) (not e!394626))))

(assert (=> b!693559 (= res!457819 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693560 () Bool)

(assert (=> b!693560 (= e!394626 (not (contains!3714 lt!316740 k!2843)))))

(declare-fun b!693561 () Bool)

(declare-fun res!457808 () Bool)

(assert (=> b!693561 (=> (not res!457808) (not e!394627))))

(assert (=> b!693561 (= res!457808 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13168))))

(declare-fun b!693562 () Bool)

(declare-fun res!457821 () Bool)

(assert (=> b!693562 (=> (not res!457821) (not e!394632))))

(declare-fun noDuplicate!961 (List!13171) Bool)

(assert (=> b!693562 (= res!457821 (noDuplicate!961 lt!316740))))

(declare-fun b!693563 () Bool)

(declare-fun res!457826 () Bool)

(assert (=> b!693563 (=> (not res!457826) (not e!394627))))

(assert (=> b!693563 (= res!457826 (noDuplicate!961 acc!681))))

(assert (= (and start!62040 res!457818) b!693563))

(assert (= (and b!693563 res!457826) b!693557))

(assert (= (and b!693557 res!457809) b!693542))

(assert (= (and b!693542 res!457822) b!693552))

(assert (= (and b!693552 res!457814) b!693546))

(assert (= (and b!693552 (not res!457816)) b!693553))

(assert (= (and b!693553 res!457817) b!693538))

(assert (= (and b!693552 res!457824) b!693561))

(assert (= (and b!693561 res!457808) b!693554))

(assert (= (and b!693554 res!457812) b!693551))

(assert (= (and b!693551 res!457823) b!693549))

(assert (= (and b!693549 res!457811) b!693558))

(assert (= (and b!693558 res!457810) b!693540))

(assert (= (and b!693540 res!457815) b!693548))

(assert (= (and b!693548 res!457813) b!693545))

(assert (= (and b!693545 c!78233) b!693555))

(assert (= (and b!693545 (not c!78233)) b!693544))

(assert (= (and b!693545 res!457825) b!693543))

(assert (= (and b!693543 res!457807) b!693562))

(assert (= (and b!693562 res!457821) b!693541))

(assert (= (and b!693541 res!457828) b!693550))

(assert (= (and b!693550 res!457820) b!693547))

(assert (= (and b!693547 res!457827) b!693556))

(assert (= (and b!693547 (not res!457806)) b!693559))

(assert (= (and b!693559 res!457819) b!693560))

(assert (= (and b!693547 res!457829) b!693539))

(declare-fun m!655791 () Bool)

(assert (=> b!693543 m!655791))

(assert (=> b!693543 m!655791))

(declare-fun m!655793 () Bool)

(assert (=> b!693543 m!655793))

(declare-fun m!655795 () Bool)

(assert (=> b!693549 m!655795))

(declare-fun m!655797 () Bool)

(assert (=> b!693539 m!655797))

(declare-fun m!655799 () Bool)

(assert (=> b!693560 m!655799))

(declare-fun m!655801 () Bool)

(assert (=> start!62040 m!655801))

(declare-fun m!655803 () Bool)

(assert (=> b!693542 m!655803))

(declare-fun m!655805 () Bool)

(assert (=> b!693550 m!655805))

(declare-fun m!655807 () Bool)

(assert (=> b!693561 m!655807))

(declare-fun m!655809 () Bool)

(assert (=> b!693562 m!655809))

(declare-fun m!655811 () Bool)

(assert (=> b!693558 m!655811))

(declare-fun m!655813 () Bool)

(assert (=> b!693557 m!655813))

(declare-fun m!655815 () Bool)

(assert (=> b!693546 m!655815))

(declare-fun m!655817 () Bool)

(assert (=> b!693555 m!655817))

(declare-fun m!655819 () Bool)

(assert (=> b!693555 m!655819))

(declare-fun m!655821 () Bool)

(assert (=> b!693541 m!655821))

(declare-fun m!655823 () Bool)

(assert (=> b!693554 m!655823))

(assert (=> b!693556 m!655799))

(assert (=> b!693538 m!655815))

(assert (=> b!693548 m!655791))

(assert (=> b!693548 m!655791))

(declare-fun m!655825 () Bool)

(assert (=> b!693548 m!655825))

(assert (=> b!693545 m!655791))

(declare-fun m!655827 () Bool)

(assert (=> b!693563 m!655827))

(push 1)

