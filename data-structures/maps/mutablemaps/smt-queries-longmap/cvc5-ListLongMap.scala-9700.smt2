; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114626 () Bool)

(assert start!114626)

(declare-fun b!1359662 () Bool)

(declare-fun res!904214 () Bool)

(declare-fun e!771480 () Bool)

(assert (=> b!1359662 (=> (not res!904214) (not e!771480))))

(declare-datatypes ((List!31904 0))(
  ( (Nil!31901) (Cons!31900 (h!33109 (_ BitVec 64)) (t!46584 List!31904)) )
))
(declare-fun acc!759 () List!31904)

(declare-datatypes ((array!92494 0))(
  ( (array!92495 (arr!44683 (Array (_ BitVec 32) (_ BitVec 64))) (size!45234 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92494)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92494 (_ BitVec 32) List!31904) Bool)

(assert (=> b!1359662 (= res!904214 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359663 () Bool)

(declare-fun lt!599634 () array!92494)

(assert (=> b!1359663 (= e!771480 (not (arrayNoDuplicates!0 lt!599634 from!3120 acc!759)))))

(assert (=> b!1359663 (arrayNoDuplicates!0 lt!599634 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1359663 (= lt!599634 (array!92495 (store (arr!44683 a!3742) i!1404 l!3587) (size!45234 a!3742)))))

(declare-datatypes ((Unit!44732 0))(
  ( (Unit!44733) )
))
(declare-fun lt!599636 () Unit!44732)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92494 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31904) Unit!44732)

(assert (=> b!1359663 (= lt!599636 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359664 () Bool)

(declare-fun res!904210 () Bool)

(declare-fun e!771481 () Bool)

(assert (=> b!1359664 (=> (not res!904210) (not e!771481))))

(declare-fun contains!9469 (List!31904 (_ BitVec 64)) Bool)

(assert (=> b!1359664 (= res!904210 (not (contains!9469 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359665 () Bool)

(declare-fun res!904205 () Bool)

(assert (=> b!1359665 (=> (not res!904205) (not e!771481))))

(assert (=> b!1359665 (= res!904205 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31901))))

(declare-fun res!904211 () Bool)

(assert (=> start!114626 (=> (not res!904211) (not e!771481))))

(assert (=> start!114626 (= res!904211 (and (bvslt (size!45234 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45234 a!3742))))))

(assert (=> start!114626 e!771481))

(assert (=> start!114626 true))

(declare-fun array_inv!33628 (array!92494) Bool)

(assert (=> start!114626 (array_inv!33628 a!3742)))

(declare-fun b!1359666 () Bool)

(declare-fun res!904209 () Bool)

(assert (=> b!1359666 (=> (not res!904209) (not e!771481))))

(assert (=> b!1359666 (= res!904209 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1359667 () Bool)

(declare-fun res!904212 () Bool)

(assert (=> b!1359667 (=> (not res!904212) (not e!771481))))

(assert (=> b!1359667 (= res!904212 (not (contains!9469 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359668 () Bool)

(declare-fun res!904207 () Bool)

(assert (=> b!1359668 (=> (not res!904207) (not e!771481))))

(declare-fun noDuplicate!2348 (List!31904) Bool)

(assert (=> b!1359668 (= res!904207 (noDuplicate!2348 acc!759))))

(declare-fun b!1359669 () Bool)

(assert (=> b!1359669 (= e!771481 e!771480)))

(declare-fun res!904206 () Bool)

(assert (=> b!1359669 (=> (not res!904206) (not e!771480))))

(assert (=> b!1359669 (= res!904206 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599635 () Unit!44732)

(declare-fun e!771479 () Unit!44732)

(assert (=> b!1359669 (= lt!599635 e!771479)))

(declare-fun c!127171 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359669 (= c!127171 (validKeyInArray!0 (select (arr!44683 a!3742) from!3120)))))

(declare-fun b!1359670 () Bool)

(declare-fun Unit!44734 () Unit!44732)

(assert (=> b!1359670 (= e!771479 Unit!44734)))

(declare-fun b!1359671 () Bool)

(declare-fun res!904213 () Bool)

(assert (=> b!1359671 (=> (not res!904213) (not e!771481))))

(assert (=> b!1359671 (= res!904213 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45234 a!3742)))))

(declare-fun b!1359672 () Bool)

(declare-fun res!904208 () Bool)

(assert (=> b!1359672 (=> (not res!904208) (not e!771481))))

(assert (=> b!1359672 (= res!904208 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45234 a!3742))))))

(declare-fun b!1359673 () Bool)

(declare-fun res!904215 () Bool)

(assert (=> b!1359673 (=> (not res!904215) (not e!771481))))

(assert (=> b!1359673 (= res!904215 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1359674 () Bool)

(declare-fun lt!599632 () Unit!44732)

(assert (=> b!1359674 (= e!771479 lt!599632)))

(declare-fun lt!599633 () Unit!44732)

(declare-fun lemmaListSubSeqRefl!0 (List!31904) Unit!44732)

(assert (=> b!1359674 (= lt!599633 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!860 (List!31904 List!31904) Bool)

(assert (=> b!1359674 (subseq!860 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92494 List!31904 List!31904 (_ BitVec 32)) Unit!44732)

(declare-fun $colon$colon!865 (List!31904 (_ BitVec 64)) List!31904)

(assert (=> b!1359674 (= lt!599632 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!865 acc!759 (select (arr!44683 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1359674 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!114626 res!904211) b!1359668))

(assert (= (and b!1359668 res!904207) b!1359664))

(assert (= (and b!1359664 res!904210) b!1359667))

(assert (= (and b!1359667 res!904212) b!1359665))

(assert (= (and b!1359665 res!904205) b!1359666))

(assert (= (and b!1359666 res!904209) b!1359672))

(assert (= (and b!1359672 res!904208) b!1359673))

(assert (= (and b!1359673 res!904215) b!1359671))

(assert (= (and b!1359671 res!904213) b!1359669))

(assert (= (and b!1359669 c!127171) b!1359674))

(assert (= (and b!1359669 (not c!127171)) b!1359670))

(assert (= (and b!1359669 res!904206) b!1359662))

(assert (= (and b!1359662 res!904214) b!1359663))

(declare-fun m!1245043 () Bool)

(assert (=> b!1359673 m!1245043))

(declare-fun m!1245045 () Bool)

(assert (=> b!1359663 m!1245045))

(declare-fun m!1245047 () Bool)

(assert (=> b!1359663 m!1245047))

(declare-fun m!1245049 () Bool)

(assert (=> b!1359663 m!1245049))

(declare-fun m!1245051 () Bool)

(assert (=> b!1359663 m!1245051))

(declare-fun m!1245053 () Bool)

(assert (=> b!1359668 m!1245053))

(declare-fun m!1245055 () Bool)

(assert (=> b!1359664 m!1245055))

(declare-fun m!1245057 () Bool)

(assert (=> b!1359662 m!1245057))

(declare-fun m!1245059 () Bool)

(assert (=> b!1359665 m!1245059))

(declare-fun m!1245061 () Bool)

(assert (=> b!1359674 m!1245061))

(declare-fun m!1245063 () Bool)

(assert (=> b!1359674 m!1245063))

(declare-fun m!1245065 () Bool)

(assert (=> b!1359674 m!1245065))

(declare-fun m!1245067 () Bool)

(assert (=> b!1359674 m!1245067))

(assert (=> b!1359674 m!1245057))

(assert (=> b!1359674 m!1245063))

(assert (=> b!1359674 m!1245065))

(declare-fun m!1245069 () Bool)

(assert (=> b!1359674 m!1245069))

(assert (=> b!1359669 m!1245063))

(assert (=> b!1359669 m!1245063))

(declare-fun m!1245071 () Bool)

(assert (=> b!1359669 m!1245071))

(declare-fun m!1245073 () Bool)

(assert (=> b!1359667 m!1245073))

(declare-fun m!1245075 () Bool)

(assert (=> b!1359666 m!1245075))

(declare-fun m!1245077 () Bool)

(assert (=> start!114626 m!1245077))

(push 1)

(assert (not b!1359663))

(assert (not b!1359669))

(assert (not b!1359662))

(assert (not b!1359665))

(assert (not b!1359673))

(assert (not b!1359664))

(assert (not b!1359674))

(assert (not b!1359666))

(assert (not b!1359667))

(assert (not start!114626))

(assert (not b!1359668))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145493 () Bool)

(assert (=> d!145493 (= (validKeyInArray!0 (select (arr!44683 a!3742) from!3120)) (and (not (= (select (arr!44683 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44683 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1359669 d!145493))

(declare-fun d!145497 () Bool)

(declare-fun lt!599682 () Bool)

(declare-fun content!695 (List!31904) (Set (_ BitVec 64)))

(assert (=> d!145497 (= lt!599682 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!695 acc!759)))))

(declare-fun e!771589 () Bool)

(assert (=> d!145497 (= lt!599682 e!771589)))

(declare-fun res!904355 () Bool)

(assert (=> d!145497 (=> (not res!904355) (not e!771589))))

(assert (=> d!145497 (= res!904355 (is-Cons!31900 acc!759))))

(assert (=> d!145497 (= (contains!9469 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599682)))

(declare-fun b!1359847 () Bool)

(declare-fun e!771590 () Bool)

(assert (=> b!1359847 (= e!771589 e!771590)))

(declare-fun res!904354 () Bool)

(assert (=> b!1359847 (=> res!904354 e!771590)))

(assert (=> b!1359847 (= res!904354 (= (h!33109 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1359848 () Bool)

(assert (=> b!1359848 (= e!771590 (contains!9469 (t!46584 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145497 res!904355) b!1359847))

(assert (= (and b!1359847 (not res!904354)) b!1359848))

(declare-fun m!1245229 () Bool)

(assert (=> d!145497 m!1245229))

(declare-fun m!1245231 () Bool)

(assert (=> d!145497 m!1245231))

(declare-fun m!1245233 () Bool)

(assert (=> b!1359848 m!1245233))

(assert (=> b!1359664 d!145497))

(declare-fun d!145505 () Bool)

(declare-fun res!904378 () Bool)

(declare-fun e!771617 () Bool)

(assert (=> d!145505 (=> res!904378 e!771617)))

(assert (=> d!145505 (= res!904378 (bvsge from!3120 (size!45234 a!3742)))))

(assert (=> d!145505 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!771617)))

(declare-fun call!65317 () Bool)

(declare-fun c!127192 () Bool)

(declare-fun bm!65314 () Bool)

(assert (=> bm!65314 (= call!65317 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127192 (Cons!31900 (select (arr!44683 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun b!1359876 () Bool)

(declare-fun e!771615 () Bool)

(assert (=> b!1359876 (= e!771615 call!65317)))

(declare-fun b!1359877 () Bool)

(declare-fun e!771616 () Bool)

(assert (=> b!1359877 (= e!771617 e!771616)))

(declare-fun res!904377 () Bool)

(assert (=> b!1359877 (=> (not res!904377) (not e!771616))))

(declare-fun e!771618 () Bool)

(assert (=> b!1359877 (= res!904377 (not e!771618))))

(declare-fun res!904379 () Bool)

(assert (=> b!1359877 (=> (not res!904379) (not e!771618))))

(assert (=> b!1359877 (= res!904379 (validKeyInArray!0 (select (arr!44683 a!3742) from!3120)))))

(declare-fun b!1359878 () Bool)

(assert (=> b!1359878 (= e!771618 (contains!9469 acc!759 (select (arr!44683 a!3742) from!3120)))))

(declare-fun b!1359879 () Bool)

(assert (=> b!1359879 (= e!771615 call!65317)))

(declare-fun b!1359880 () Bool)

(assert (=> b!1359880 (= e!771616 e!771615)))

(assert (=> b!1359880 (= c!127192 (validKeyInArray!0 (select (arr!44683 a!3742) from!3120)))))

(assert (= (and d!145505 (not res!904378)) b!1359877))

(assert (= (and b!1359877 res!904379) b!1359878))

(assert (= (and b!1359877 res!904377) b!1359880))

(assert (= (and b!1359880 c!127192) b!1359876))

(assert (= (and b!1359880 (not c!127192)) b!1359879))

(assert (= (or b!1359876 b!1359879) bm!65314))

(assert (=> bm!65314 m!1245063))

(declare-fun m!1245249 () Bool)

(assert (=> bm!65314 m!1245249))

(assert (=> b!1359877 m!1245063))

(assert (=> b!1359877 m!1245063))

(assert (=> b!1359877 m!1245071))

(assert (=> b!1359878 m!1245063))

(assert (=> b!1359878 m!1245063))

(declare-fun m!1245251 () Bool)

(assert (=> b!1359878 m!1245251))

(assert (=> b!1359880 m!1245063))

(assert (=> b!1359880 m!1245063))

(assert (=> b!1359880 m!1245071))

(assert (=> b!1359666 d!145505))

(declare-fun d!145515 () Bool)

(declare-fun res!904381 () Bool)

(declare-fun e!771621 () Bool)

(assert (=> d!145515 (=> res!904381 e!771621)))

(assert (=> d!145515 (= res!904381 (bvsge #b00000000000000000000000000000000 (size!45234 a!3742)))))

(assert (=> d!145515 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31901) e!771621)))

(declare-fun bm!65315 () Bool)

(declare-fun call!65318 () Bool)

(declare-fun c!127193 () Bool)

(assert (=> bm!65315 (= call!65318 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127193 (Cons!31900 (select (arr!44683 a!3742) #b00000000000000000000000000000000) Nil!31901) Nil!31901)))))

(declare-fun b!1359881 () Bool)

(declare-fun e!771619 () Bool)

(assert (=> b!1359881 (= e!771619 call!65318)))

(declare-fun b!1359882 () Bool)

(declare-fun e!771620 () Bool)

(assert (=> b!1359882 (= e!771621 e!771620)))

(declare-fun res!904380 () Bool)

(assert (=> b!1359882 (=> (not res!904380) (not e!771620))))

(declare-fun e!771622 () Bool)

(assert (=> b!1359882 (= res!904380 (not e!771622))))

(declare-fun res!904382 () Bool)

(assert (=> b!1359882 (=> (not res!904382) (not e!771622))))

(assert (=> b!1359882 (= res!904382 (validKeyInArray!0 (select (arr!44683 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1359883 () Bool)

(assert (=> b!1359883 (= e!771622 (contains!9469 Nil!31901 (select (arr!44683 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1359884 () Bool)

(assert (=> b!1359884 (= e!771619 call!65318)))

(declare-fun b!1359885 () Bool)

(assert (=> b!1359885 (= e!771620 e!771619)))

(assert (=> b!1359885 (= c!127193 (validKeyInArray!0 (select (arr!44683 a!3742) #b00000000000000000000000000000000)))))

(assert (= (and d!145515 (not res!904381)) b!1359882))

(assert (= (and b!1359882 res!904382) b!1359883))

(assert (= (and b!1359882 res!904380) b!1359885))

(assert (= (and b!1359885 c!127193) b!1359881))

(assert (= (and b!1359885 (not c!127193)) b!1359884))

(assert (= (or b!1359881 b!1359884) bm!65315))

(declare-fun m!1245253 () Bool)

(assert (=> bm!65315 m!1245253))

(declare-fun m!1245257 () Bool)

(assert (=> bm!65315 m!1245257))

(assert (=> b!1359882 m!1245253))

(assert (=> b!1359882 m!1245253))

(declare-fun m!1245259 () Bool)

(assert (=> b!1359882 m!1245259))

(assert (=> b!1359883 m!1245253))

(assert (=> b!1359883 m!1245253))

(declare-fun m!1245261 () Bool)

(assert (=> b!1359883 m!1245261))

(assert (=> b!1359885 m!1245253))

(assert (=> b!1359885 m!1245253))

(assert (=> b!1359885 m!1245259))

(assert (=> b!1359665 d!145515))

(declare-fun d!145519 () Bool)

(declare-fun lt!599689 () Bool)

(assert (=> d!145519 (= lt!599689 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!695 acc!759)))))

(declare-fun e!771627 () Bool)

(assert (=> d!145519 (= lt!599689 e!771627)))

(declare-fun res!904387 () Bool)

(assert (=> d!145519 (=> (not res!904387) (not e!771627))))

(assert (=> d!145519 (= res!904387 (is-Cons!31900 acc!759))))

(assert (=> d!145519 (= (contains!9469 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599689)))

(declare-fun b!1359891 () Bool)

(declare-fun e!771628 () Bool)

(assert (=> b!1359891 (= e!771627 e!771628)))

(declare-fun res!904386 () Bool)

(assert (=> b!1359891 (=> res!904386 e!771628)))

(assert (=> b!1359891 (= res!904386 (= (h!33109 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1359892 () Bool)

(assert (=> b!1359892 (= e!771628 (contains!9469 (t!46584 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145519 res!904387) b!1359891))

(assert (= (and b!1359891 (not res!904386)) b!1359892))

(assert (=> d!145519 m!1245229))

(declare-fun m!1245269 () Bool)

(assert (=> d!145519 m!1245269))

(declare-fun m!1245273 () Bool)

(assert (=> b!1359892 m!1245273))

(assert (=> b!1359667 d!145519))

(declare-fun d!145521 () Bool)

