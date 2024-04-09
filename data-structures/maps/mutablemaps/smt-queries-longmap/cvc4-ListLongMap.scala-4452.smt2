; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61930 () Bool)

(assert start!61930)

(declare-fun b!692675 () Bool)

(declare-fun res!457039 () Bool)

(declare-fun e!394096 () Bool)

(assert (=> b!692675 (=> (not res!457039) (not e!394096))))

(declare-fun e!394097 () Bool)

(assert (=> b!692675 (= res!457039 e!394097)))

(declare-fun res!457059 () Bool)

(assert (=> b!692675 (=> res!457059 e!394097)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!692675 (= res!457059 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!692676 () Bool)

(declare-fun e!394104 () Bool)

(declare-datatypes ((List!13164 0))(
  ( (Nil!13161) (Cons!13160 (h!14205 (_ BitVec 64)) (t!19445 List!13164)) )
))
(declare-fun acc!681 () List!13164)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3707 (List!13164 (_ BitVec 64)) Bool)

(assert (=> b!692676 (= e!394104 (not (contains!3707 acc!681 k!2843)))))

(declare-fun b!692677 () Bool)

(declare-datatypes ((Unit!24450 0))(
  ( (Unit!24451) )
))
(declare-fun e!394099 () Unit!24450)

(declare-fun Unit!24452 () Unit!24450)

(assert (=> b!692677 (= e!394099 Unit!24452)))

(declare-fun b!692678 () Bool)

(declare-fun res!457044 () Bool)

(declare-fun e!394105 () Bool)

(assert (=> b!692678 (=> (not res!457044) (not e!394105))))

(assert (=> b!692678 (= res!457044 (not (contains!3707 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692679 () Bool)

(declare-fun res!457061 () Bool)

(assert (=> b!692679 (=> (not res!457061) (not e!394096))))

(declare-fun lt!316602 () List!13164)

(assert (=> b!692679 (= res!457061 (not (contains!3707 lt!316602 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692680 () Bool)

(declare-fun res!457055 () Bool)

(assert (=> b!692680 (=> (not res!457055) (not e!394096))))

(assert (=> b!692680 (= res!457055 (not (contains!3707 lt!316602 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!457049 () Bool)

(assert (=> start!61930 (=> (not res!457049) (not e!394105))))

(declare-datatypes ((array!39817 0))(
  ( (array!39818 (arr!19070 (Array (_ BitVec 32) (_ BitVec 64))) (size!19453 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39817)

(assert (=> start!61930 (= res!457049 (and (bvslt (size!19453 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19453 a!3626))))))

(assert (=> start!61930 e!394105))

(assert (=> start!61930 true))

(declare-fun array_inv!14844 (array!39817) Bool)

(assert (=> start!61930 (array_inv!14844 a!3626)))

(declare-fun b!692681 () Bool)

(declare-fun e!394100 () Bool)

(assert (=> b!692681 (= e!394100 e!394104)))

(declare-fun res!457054 () Bool)

(assert (=> b!692681 (=> (not res!457054) (not e!394104))))

(assert (=> b!692681 (= res!457054 (bvsle from!3004 i!1382))))

(declare-fun b!692682 () Bool)

(declare-fun e!394102 () Bool)

(assert (=> b!692682 (= e!394096 e!394102)))

(declare-fun res!457042 () Bool)

(assert (=> b!692682 (=> res!457042 e!394102)))

(assert (=> b!692682 (= res!457042 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!692683 () Bool)

(declare-fun res!457041 () Bool)

(assert (=> b!692683 (=> (not res!457041) (not e!394105))))

(assert (=> b!692683 (= res!457041 e!394100)))

(declare-fun res!457056 () Bool)

(assert (=> b!692683 (=> res!457056 e!394100)))

(declare-fun e!394103 () Bool)

(assert (=> b!692683 (= res!457056 e!394103)))

(declare-fun res!457046 () Bool)

(assert (=> b!692683 (=> (not res!457046) (not e!394103))))

(assert (=> b!692683 (= res!457046 (bvsgt from!3004 i!1382))))

(declare-fun b!692684 () Bool)

(declare-fun res!457060 () Bool)

(assert (=> b!692684 (=> (not res!457060) (not e!394105))))

(declare-fun arrayContainsKey!0 (array!39817 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!692684 (= res!457060 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!692685 () Bool)

(declare-fun res!457045 () Bool)

(assert (=> b!692685 (=> (not res!457045) (not e!394105))))

(assert (=> b!692685 (= res!457045 (not (contains!3707 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692686 () Bool)

(declare-fun e!394101 () Bool)

(assert (=> b!692686 (= e!394101 e!394096)))

(declare-fun res!457050 () Bool)

(assert (=> b!692686 (=> (not res!457050) (not e!394096))))

(assert (=> b!692686 (= res!457050 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!417 (List!13164 (_ BitVec 64)) List!13164)

(assert (=> b!692686 (= lt!316602 ($colon$colon!417 acc!681 (select (arr!19070 a!3626) from!3004)))))

(declare-fun b!692687 () Bool)

(assert (=> b!692687 (= e!394097 (not (contains!3707 lt!316602 k!2843)))))

(declare-fun b!692688 () Bool)

(declare-fun Unit!24453 () Unit!24450)

(assert (=> b!692688 (= e!394099 Unit!24453)))

(assert (=> b!692688 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316601 () Unit!24450)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39817 (_ BitVec 64) (_ BitVec 32)) Unit!24450)

(assert (=> b!692688 (= lt!316601 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!692688 false))

(declare-fun b!692689 () Bool)

(declare-fun res!457043 () Bool)

(assert (=> b!692689 (=> (not res!457043) (not e!394105))))

(assert (=> b!692689 (= res!457043 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19453 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!692690 () Bool)

(assert (=> b!692690 (= e!394105 e!394101)))

(declare-fun res!457053 () Bool)

(assert (=> b!692690 (=> (not res!457053) (not e!394101))))

(assert (=> b!692690 (= res!457053 (not (= (select (arr!19070 a!3626) from!3004) k!2843)))))

(declare-fun lt!316600 () Unit!24450)

(assert (=> b!692690 (= lt!316600 e!394099)))

(declare-fun c!78185 () Bool)

(assert (=> b!692690 (= c!78185 (= (select (arr!19070 a!3626) from!3004) k!2843))))

(declare-fun b!692691 () Bool)

(declare-fun res!457047 () Bool)

(assert (=> b!692691 (=> (not res!457047) (not e!394105))))

(declare-fun arrayNoDuplicates!0 (array!39817 (_ BitVec 32) List!13164) Bool)

(assert (=> b!692691 (= res!457047 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13161))))

(declare-fun b!692692 () Bool)

(assert (=> b!692692 (= e!394102 (contains!3707 lt!316602 k!2843))))

(declare-fun b!692693 () Bool)

(declare-fun res!457048 () Bool)

(assert (=> b!692693 (=> (not res!457048) (not e!394105))))

(declare-fun noDuplicate!954 (List!13164) Bool)

(assert (=> b!692693 (= res!457048 (noDuplicate!954 acc!681))))

(declare-fun b!692694 () Bool)

(declare-fun res!457040 () Bool)

(assert (=> b!692694 (=> (not res!457040) (not e!394096))))

(assert (=> b!692694 (= res!457040 (noDuplicate!954 lt!316602))))

(declare-fun b!692695 () Bool)

(declare-fun res!457051 () Bool)

(assert (=> b!692695 (=> (not res!457051) (not e!394105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!692695 (= res!457051 (validKeyInArray!0 k!2843))))

(declare-fun b!692696 () Bool)

(declare-fun res!457057 () Bool)

(assert (=> b!692696 (=> (not res!457057) (not e!394105))))

(assert (=> b!692696 (= res!457057 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!692697 () Bool)

(declare-fun res!457052 () Bool)

(assert (=> b!692697 (=> (not res!457052) (not e!394105))))

(assert (=> b!692697 (= res!457052 (validKeyInArray!0 (select (arr!19070 a!3626) from!3004)))))

(declare-fun b!692698 () Bool)

(assert (=> b!692698 (= e!394103 (contains!3707 acc!681 k!2843))))

(declare-fun b!692699 () Bool)

(declare-fun res!457058 () Bool)

(assert (=> b!692699 (=> (not res!457058) (not e!394105))))

(assert (=> b!692699 (= res!457058 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19453 a!3626))))))

(assert (= (and start!61930 res!457049) b!692693))

(assert (= (and b!692693 res!457048) b!692685))

(assert (= (and b!692685 res!457045) b!692678))

(assert (= (and b!692678 res!457044) b!692683))

(assert (= (and b!692683 res!457046) b!692698))

(assert (= (and b!692683 (not res!457056)) b!692681))

(assert (= (and b!692681 res!457054) b!692676))

(assert (= (and b!692683 res!457041) b!692691))

(assert (= (and b!692691 res!457047) b!692696))

(assert (= (and b!692696 res!457057) b!692699))

(assert (= (and b!692699 res!457058) b!692695))

(assert (= (and b!692695 res!457051) b!692684))

(assert (= (and b!692684 res!457060) b!692689))

(assert (= (and b!692689 res!457043) b!692697))

(assert (= (and b!692697 res!457052) b!692690))

(assert (= (and b!692690 c!78185) b!692688))

(assert (= (and b!692690 (not c!78185)) b!692677))

(assert (= (and b!692690 res!457053) b!692686))

(assert (= (and b!692686 res!457050) b!692694))

(assert (= (and b!692694 res!457040) b!692679))

(assert (= (and b!692679 res!457061) b!692680))

(assert (= (and b!692680 res!457055) b!692675))

(assert (= (and b!692675 (not res!457059)) b!692687))

(assert (= (and b!692675 res!457039) b!692682))

(assert (= (and b!692682 (not res!457042)) b!692692))

(declare-fun m!655185 () Bool)

(assert (=> b!692695 m!655185))

(declare-fun m!655187 () Bool)

(assert (=> b!692691 m!655187))

(declare-fun m!655189 () Bool)

(assert (=> b!692690 m!655189))

(declare-fun m!655191 () Bool)

(assert (=> b!692698 m!655191))

(declare-fun m!655193 () Bool)

(assert (=> b!692685 m!655193))

(declare-fun m!655195 () Bool)

(assert (=> b!692687 m!655195))

(declare-fun m!655197 () Bool)

(assert (=> b!692693 m!655197))

(declare-fun m!655199 () Bool)

(assert (=> b!692688 m!655199))

(declare-fun m!655201 () Bool)

(assert (=> b!692688 m!655201))

(declare-fun m!655203 () Bool)

(assert (=> b!692679 m!655203))

(declare-fun m!655205 () Bool)

(assert (=> b!692696 m!655205))

(declare-fun m!655207 () Bool)

(assert (=> b!692694 m!655207))

(assert (=> b!692686 m!655189))

(assert (=> b!692686 m!655189))

(declare-fun m!655209 () Bool)

(assert (=> b!692686 m!655209))

(declare-fun m!655211 () Bool)

(assert (=> b!692680 m!655211))

(declare-fun m!655213 () Bool)

(assert (=> start!61930 m!655213))

(assert (=> b!692697 m!655189))

(assert (=> b!692697 m!655189))

(declare-fun m!655215 () Bool)

(assert (=> b!692697 m!655215))

(declare-fun m!655217 () Bool)

(assert (=> b!692678 m!655217))

(assert (=> b!692692 m!655195))

(assert (=> b!692676 m!655191))

(declare-fun m!655219 () Bool)

(assert (=> b!692684 m!655219))

(push 1)

(assert (not b!692693))

(assert (not b!692679))

(assert (not b!692685))

(assert (not b!692684))

(assert (not b!692686))

(assert (not b!692698))

(assert (not b!692680))

(assert (not b!692687))

(assert (not b!692692))

(assert (not b!692688))

(assert (not b!692691))

(assert (not b!692678))

(assert (not b!692694))

(assert (not b!692697))

(assert (not b!692696))

(assert (not b!692695))

(assert (not b!692676))

(assert (not start!61930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!95599 () Bool)

(declare-fun res!457097 () Bool)

(declare-fun e!394144 () Bool)

(assert (=> d!95599 (=> res!457097 e!394144)))

(assert (=> d!95599 (= res!457097 (is-Nil!13161 lt!316602))))

(assert (=> d!95599 (= (noDuplicate!954 lt!316602) e!394144)))

(declare-fun b!692741 () Bool)

(declare-fun e!394145 () Bool)

(assert (=> b!692741 (= e!394144 e!394145)))

(declare-fun res!457098 () Bool)

(assert (=> b!692741 (=> (not res!457098) (not e!394145))))

(assert (=> b!692741 (= res!457098 (not (contains!3707 (t!19445 lt!316602) (h!14205 lt!316602))))))

(declare-fun b!692742 () Bool)

(assert (=> b!692742 (= e!394145 (noDuplicate!954 (t!19445 lt!316602)))))

(assert (= (and d!95599 (not res!457097)) b!692741))

(assert (= (and b!692741 res!457098) b!692742))

(declare-fun m!655245 () Bool)

(assert (=> b!692741 m!655245))

(declare-fun m!655247 () Bool)

(assert (=> b!692742 m!655247))

(assert (=> b!692694 d!95599))

(declare-fun d!95601 () Bool)

(assert (=> d!95601 (= (array_inv!14844 a!3626) (bvsge (size!19453 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61930 d!95601))

(declare-fun d!95607 () Bool)

(declare-fun res!457115 () Bool)

(declare-fun e!394162 () Bool)

(assert (=> d!95607 (=> res!457115 e!394162)))

(assert (=> d!95607 (= res!457115 (= (select (arr!19070 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!95607 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!394162)))

(declare-fun b!692759 () Bool)

(declare-fun e!394163 () Bool)

(assert (=> b!692759 (= e!394162 e!394163)))

(declare-fun res!457116 () Bool)

(assert (=> b!692759 (=> (not res!457116) (not e!394163))))

(assert (=> b!692759 (= res!457116 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19453 a!3626)))))

(declare-fun b!692760 () Bool)

(assert (=> b!692760 (= e!394163 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!95607 (not res!457115)) b!692759))

(assert (= (and b!692759 res!457116) b!692760))

(declare-fun m!655265 () Bool)

(assert (=> d!95607 m!655265))

(declare-fun m!655267 () Bool)

(assert (=> b!692760 m!655267))

(assert (=> b!692684 d!95607))

(declare-fun d!95615 () Bool)

(assert (=> d!95615 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!692695 d!95615))

(declare-fun d!95617 () Bool)

(declare-fun lt!316617 () Bool)

(declare-fun content!318 (List!13164) (Set (_ BitVec 64)))

(assert (=> d!95617 (= lt!316617 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!318 acc!681)))))

(declare-fun e!394185 () Bool)

(assert (=> d!95617 (= lt!316617 e!394185)))

(declare-fun res!457136 () Bool)

(assert (=> d!95617 (=> (not res!457136) (not e!394185))))

(assert (=> d!95617 (= res!457136 (is-Cons!13160 acc!681))))

(assert (=> d!95617 (= (contains!3707 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316617)))

(declare-fun b!692783 () Bool)

(declare-fun e!394184 () Bool)

(assert (=> b!692783 (= e!394185 e!394184)))

(declare-fun res!457135 () Bool)

(assert (=> b!692783 (=> res!457135 e!394184)))

(assert (=> b!692783 (= res!457135 (= (h!14205 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692784 () Bool)

(assert (=> b!692784 (= e!394184 (contains!3707 (t!19445 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95617 res!457136) b!692783))

(assert (= (and b!692783 (not res!457135)) b!692784))

(declare-fun m!655283 () Bool)

(assert (=> d!95617 m!655283))

(declare-fun m!655285 () Bool)

(assert (=> d!95617 m!655285))

(declare-fun m!655287 () Bool)

(assert (=> b!692784 m!655287))

(assert (=> b!692685 d!95617))

(declare-fun b!692815 () Bool)

(declare-fun e!394212 () Bool)

(declare-fun call!34257 () Bool)

(assert (=> b!692815 (= e!394212 call!34257)))

(declare-fun e!394214 () Bool)

(declare-fun b!692816 () Bool)

(assert (=> b!692816 (= e!394214 (contains!3707 acc!681 (select (arr!19070 a!3626) from!3004)))))

(declare-fun b!692817 () Bool)

(declare-fun e!394215 () Bool)

(assert (=> b!692817 (= e!394215 e!394212)))

(declare-fun c!78195 () Bool)

(assert (=> b!692817 (= c!78195 (validKeyInArray!0 (select (arr!19070 a!3626) from!3004)))))

(declare-fun b!692819 () Bool)

(declare-fun e!394213 () Bool)

(assert (=> b!692819 (= e!394213 e!394215)))

(declare-fun res!457160 () Bool)

(assert (=> b!692819 (=> (not res!457160) (not e!394215))))

(assert (=> b!692819 (= res!457160 (not e!394214))))

(declare-fun res!457161 () Bool)

(assert (=> b!692819 (=> (not res!457161) (not e!394214))))

(assert (=> b!692819 (= res!457161 (validKeyInArray!0 (select (arr!19070 a!3626) from!3004)))))

(declare-fun bm!34254 () Bool)

(assert (=> bm!34254 (= call!34257 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78195 (Cons!13160 (select (arr!19070 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!692818 () Bool)

(assert (=> b!692818 (= e!394212 call!34257)))

(declare-fun d!95629 () Bool)

(declare-fun res!457159 () Bool)

(assert (=> d!95629 (=> res!457159 e!394213)))

(assert (=> d!95629 (= res!457159 (bvsge from!3004 (size!19453 a!3626)))))

(assert (=> d!95629 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!394213)))

(assert (= (and d!95629 (not res!457159)) b!692819))

(assert (= (and b!692819 res!457161) b!692816))

(assert (= (and b!692819 res!457160) b!692817))

(assert (= (and b!692817 c!78195) b!692818))

(assert (= (and b!692817 (not c!78195)) b!692815))

(assert (= (or b!692818 b!692815) bm!34254))

(assert (=> b!692816 m!655189))

(assert (=> b!692816 m!655189))

(declare-fun m!655313 () Bool)

(assert (=> b!692816 m!655313))

(assert (=> b!692817 m!655189))

(assert (=> b!692817 m!655189))

(assert (=> b!692817 m!655215))

(assert (=> b!692819 m!655189))

(assert (=> b!692819 m!655189))

(assert (=> b!692819 m!655215))

(assert (=> bm!34254 m!655189))

(declare-fun m!655315 () Bool)

(assert (=> bm!34254 m!655315))

(assert (=> b!692696 d!95629))

(declare-fun d!95643 () Bool)

(assert (=> d!95643 (= ($colon$colon!417 acc!681 (select (arr!19070 a!3626) from!3004)) (Cons!13160 (select (arr!19070 a!3626) from!3004) acc!681))))

(assert (=> b!692686 d!95643))

(declare-fun d!95645 () Bool)

(assert (=> d!95645 (= (validKeyInArray!0 (select (arr!19070 a!3626) from!3004)) (and (not (= (select (arr!19070 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19070 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!692697 d!95645))

(declare-fun d!95647 () Bool)

(declare-fun lt!316622 () Bool)

(assert (=> d!95647 (= lt!316622 (member k!2843 (content!318 acc!681)))))

(declare-fun e!394219 () Bool)

(assert (=> d!95647 (= lt!316622 e!394219)))

(declare-fun res!457165 () Bool)

(assert (=> d!95647 (=> (not res!457165) (not e!394219))))

(assert (=> d!95647 (= res!457165 (is-Cons!13160 acc!681))))

(assert (=> d!95647 (= (contains!3707 acc!681 k!2843) lt!316622)))

(declare-fun b!692822 () Bool)

(declare-fun e!394218 () Bool)

(assert (=> b!692822 (= e!394219 e!394218)))

(declare-fun res!457164 () Bool)

(assert (=> b!692822 (=> res!457164 e!394218)))

(assert (=> b!692822 (= res!457164 (= (h!14205 acc!681) k!2843))))

(declare-fun b!692823 () Bool)

(assert (=> b!692823 (= e!394218 (contains!3707 (t!19445 acc!681) k!2843))))

(assert (= (and d!95647 res!457165) b!692822))

(assert (= (and b!692822 (not res!457164)) b!692823))

(assert (=> d!95647 m!655283))

(declare-fun m!655321 () Bool)

(assert (=> d!95647 m!655321))

(declare-fun m!655323 () Bool)

(assert (=> b!692823 m!655323))

(assert (=> b!692676 d!95647))

(declare-fun d!95651 () Bool)

(declare-fun lt!316624 () Bool)

(assert (=> d!95651 (= lt!316624 (member k!2843 (content!318 lt!316602)))))

(declare-fun e!394223 () Bool)

(assert (=> d!95651 (= lt!316624 e!394223)))

(declare-fun res!457169 () Bool)

(assert (=> d!95651 (=> (not res!457169) (not e!394223))))

(assert (=> d!95651 (= res!457169 (is-Cons!13160 lt!316602))))

(assert (=> d!95651 (= (contains!3707 lt!316602 k!2843) lt!316624)))

(declare-fun b!692826 () Bool)

(declare-fun e!394222 () Bool)

(assert (=> b!692826 (= e!394223 e!394222)))

(declare-fun res!457168 () Bool)

(assert (=> b!692826 (=> res!457168 e!394222)))

(assert (=> b!692826 (= res!457168 (= (h!14205 lt!316602) k!2843))))

(declare-fun b!692827 () Bool)

(assert (=> b!692827 (= e!394222 (contains!3707 (t!19445 lt!316602) k!2843))))

(assert (= (and d!95651 res!457169) b!692826))

(assert (= (and b!692826 (not res!457168)) b!692827))

(declare-fun m!655327 () Bool)

(assert (=> d!95651 m!655327))

(declare-fun m!655329 () Bool)

(assert (=> d!95651 m!655329))

(declare-fun m!655333 () Bool)

(assert (=> b!692827 m!655333))

(assert (=> b!692687 d!95651))

(assert (=> b!692698 d!95647))

(declare-fun d!95655 () Bool)

(declare-fun res!457172 () Bool)

(declare-fun e!394226 () Bool)

(assert (=> d!95655 (=> res!457172 e!394226)))

(assert (=> d!95655 (= res!457172 (= (select (arr!19070 a!3626) from!3004) k!2843))))

(assert (=> d!95655 (= (arrayContainsKey!0 a!3626 k!2843 from!3004) e!394226)))

(declare-fun b!692830 () Bool)

(declare-fun e!394227 () Bool)

(assert (=> b!692830 (= e!394226 e!394227)))

(declare-fun res!457173 () Bool)

(assert (=> b!692830 (=> (not res!457173) (not e!394227))))

(assert (=> b!692830 (= res!457173 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19453 a!3626)))))

(declare-fun b!692831 () Bool)

(assert (=> b!692831 (= e!394227 (arrayContainsKey!0 a!3626 k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95655 (not res!457172)) b!692830))

(assert (= (and b!692830 res!457173) b!692831))

(assert (=> d!95655 m!655189))

(declare-fun m!655335 () Bool)

(assert (=> b!692831 m!655335))

(assert (=> b!692688 d!95655))

(declare-fun d!95657 () Bool)

(assert (=> d!95657 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!316628 () Unit!24450)

(declare-fun choose!13 (array!39817 (_ BitVec 64) (_ BitVec 32)) Unit!24450)

(assert (=> d!95657 (= lt!316628 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!95657 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!95657 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!316628)))

(declare-fun bs!20271 () Bool)

(assert (= bs!20271 d!95657))

(assert (=> bs!20271 m!655219))

(declare-fun m!655347 () Bool)

(assert (=> bs!20271 m!655347))

(assert (=> b!692688 d!95657))

(declare-fun d!95665 () Bool)

(declare-fun lt!316629 () Bool)

(assert (=> d!95665 (= lt!316629 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!318 acc!681)))))

(declare-fun e!394233 () Bool)

(assert (=> d!95665 (= lt!316629 e!394233)))

(declare-fun res!457179 () Bool)

(assert (=> d!95665 (=> (not res!457179) (not e!394233))))

(assert (=> d!95665 (= res!457179 (is-Cons!13160 acc!681))))

(assert (=> d!95665 (= (contains!3707 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316629)))

(declare-fun b!692836 () Bool)

(declare-fun e!394232 () Bool)

(assert (=> b!692836 (= e!394233 e!394232)))

(declare-fun res!457178 () Bool)

(assert (=> b!692836 (=> res!457178 e!394232)))

(assert (=> b!692836 (= res!457178 (= (h!14205 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692837 () Bool)

(assert (=> b!692837 (= e!394232 (contains!3707 (t!19445 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95665 res!457179) b!692836))

(assert (= (and b!692836 (not res!457178)) b!692837))

(assert (=> d!95665 m!655283))

(declare-fun m!655349 () Bool)

(assert (=> d!95665 m!655349))

(declare-fun m!655351 () Bool)

(assert (=> b!692837 m!655351))

(assert (=> b!692678 d!95665))

(declare-fun d!95667 () Bool)

(declare-fun lt!316630 () Bool)

(assert (=> d!95667 (= lt!316630 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!318 lt!316602)))))

(declare-fun e!394235 () Bool)

(assert (=> d!95667 (= lt!316630 e!394235)))

(declare-fun res!457181 () Bool)

(assert (=> d!95667 (=> (not res!457181) (not e!394235))))

(assert (=> d!95667 (= res!457181 (is-Cons!13160 lt!316602))))

(assert (=> d!95667 (= (contains!3707 lt!316602 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316630)))

(declare-fun b!692838 () Bool)

(declare-fun e!394234 () Bool)

(assert (=> b!692838 (= e!394235 e!394234)))

(declare-fun res!457180 () Bool)

(assert (=> b!692838 (=> res!457180 e!394234)))

(assert (=> b!692838 (= res!457180 (= (h!14205 lt!316602) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692839 () Bool)

(assert (=> b!692839 (= e!394234 (contains!3707 (t!19445 lt!316602) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95667 res!457181) b!692838))

(assert (= (and b!692838 (not res!457180)) b!692839))

(assert (=> d!95667 m!655327))

(declare-fun m!655353 () Bool)

(assert (=> d!95667 m!655353))

(declare-fun m!655355 () Bool)

(assert (=> b!692839 m!655355))

(assert (=> b!692679 d!95667))

(declare-fun d!95669 () Bool)

(declare-fun lt!316631 () Bool)

(assert (=> d!95669 (= lt!316631 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!318 lt!316602)))))

(declare-fun e!394237 () Bool)

(assert (=> d!95669 (= lt!316631 e!394237)))

(declare-fun res!457183 () Bool)

(assert (=> d!95669 (=> (not res!457183) (not e!394237))))

(assert (=> d!95669 (= res!457183 (is-Cons!13160 lt!316602))))

(assert (=> d!95669 (= (contains!3707 lt!316602 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316631)))

(declare-fun b!692840 () Bool)

(declare-fun e!394236 () Bool)

(assert (=> b!692840 (= e!394237 e!394236)))

(declare-fun res!457182 () Bool)

(assert (=> b!692840 (=> res!457182 e!394236)))

(assert (=> b!692840 (= res!457182 (= (h!14205 lt!316602) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692841 () Bool)

(assert (=> b!692841 (= e!394236 (contains!3707 (t!19445 lt!316602) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95669 res!457183) b!692840))

(assert (= (and b!692840 (not res!457182)) b!692841))

(assert (=> d!95669 m!655327))

(declare-fun m!655357 () Bool)

(assert (=> d!95669 m!655357))

(declare-fun m!655359 () Bool)

(assert (=> b!692841 m!655359))

(assert (=> b!692680 d!95669))

(declare-fun b!692842 () Bool)

(declare-fun e!394238 () Bool)

(declare-fun call!34258 () Bool)

(assert (=> b!692842 (= e!394238 call!34258)))

(declare-fun b!692843 () Bool)

(declare-fun e!394240 () Bool)

(assert (=> b!692843 (= e!394240 (contains!3707 Nil!13161 (select (arr!19070 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!692844 () Bool)

(declare-fun e!394241 () Bool)

(assert (=> b!692844 (= e!394241 e!394238)))

(declare-fun c!78196 () Bool)

(assert (=> b!692844 (= c!78196 (validKeyInArray!0 (select (arr!19070 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!692846 () Bool)

(declare-fun e!394239 () Bool)

(assert (=> b!692846 (= e!394239 e!394241)))

(declare-fun res!457185 () Bool)

(assert (=> b!692846 (=> (not res!457185) (not e!394241))))

(assert (=> b!692846 (= res!457185 (not e!394240))))

(declare-fun res!457186 () Bool)

(assert (=> b!692846 (=> (not res!457186) (not e!394240))))

(assert (=> b!692846 (= res!457186 (validKeyInArray!0 (select (arr!19070 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!34255 () Bool)

(assert (=> bm!34255 (= call!34258 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78196 (Cons!13160 (select (arr!19070 a!3626) #b00000000000000000000000000000000) Nil!13161) Nil!13161)))))

(declare-fun b!692845 () Bool)

(assert (=> b!692845 (= e!394238 call!34258)))

(declare-fun d!95671 () Bool)

(declare-fun res!457184 () Bool)

(assert (=> d!95671 (=> res!457184 e!394239)))

(assert (=> d!95671 (= res!457184 (bvsge #b00000000000000000000000000000000 (size!19453 a!3626)))))

(assert (=> d!95671 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13161) e!394239)))

(assert (= (and d!95671 (not res!457184)) b!692846))

(assert (= (and b!692846 res!457186) b!692843))

(assert (= (and b!692846 res!457185) b!692844))

(assert (= (and b!692844 c!78196) b!692845))

(assert (= (and b!692844 (not c!78196)) b!692842))

(assert (= (or b!692845 b!692842) bm!34255))

(assert (=> b!692843 m!655265))

(assert (=> b!692843 m!655265))

(declare-fun m!655361 () Bool)

(assert (=> b!692843 m!655361))

(assert (=> b!692844 m!655265))

(assert (=> b!692844 m!655265))

(declare-fun m!655363 () Bool)

(assert (=> b!692844 m!655363))

(assert (=> b!692846 m!655265))

(assert (=> b!692846 m!655265))

(assert (=> b!692846 m!655363))

(assert (=> bm!34255 m!655265))

(declare-fun m!655365 () Bool)

(assert (=> bm!34255 m!655365))

(assert (=> b!692691 d!95671))

(assert (=> b!692692 d!95651))

(declare-fun d!95673 () Bool)

(declare-fun res!457187 () Bool)

(declare-fun e!394242 () Bool)

(assert (=> d!95673 (=> res!457187 e!394242)))

(assert (=> d!95673 (= res!457187 (is-Nil!13161 acc!681))))

(assert (=> d!95673 (= (noDuplicate!954 acc!681) e!394242)))

(declare-fun b!692847 () Bool)

(declare-fun e!394243 () Bool)

(assert (=> b!692847 (= e!394242 e!394243)))

(declare-fun res!457188 () Bool)

(assert (=> b!692847 (=> (not res!457188) (not e!394243))))

(assert (=> b!692847 (= res!457188 (not (contains!3707 (t!19445 acc!681) (h!14205 acc!681))))))

(declare-fun b!692848 () Bool)

(assert (=> b!692848 (= e!394243 (noDuplicate!954 (t!19445 acc!681)))))

(assert (= (and d!95673 (not res!457187)) b!692847))

(assert (= (and b!692847 res!457188) b!692848))

(declare-fun m!655369 () Bool)

(assert (=> b!692847 m!655369))

(declare-fun m!655371 () Bool)

(assert (=> b!692848 m!655371))

(assert (=> b!692693 d!95673))

(push 1)

(assert (not b!692837))

(assert (not b!692823))

(assert (not bm!34254))

(assert (not b!692831))

(assert (not b!692847))

(assert (not b!692827))

(assert (not b!692846))

(assert (not b!692817))

(assert (not b!692844))

(assert (not d!95657))

(assert (not b!692741))

(assert (not b!692816))

(assert (not d!95651))

(assert (not b!692742))

(assert (not d!95647))

(assert (not b!692839))

(assert (not d!95669))

(assert (not bm!34255))

(assert (not d!95667))

(assert (not b!692841))

(assert (not b!692843))

(assert (not d!95617))

(assert (not d!95665))

(assert (not b!692848))

(assert (not b!692760))

(assert (not b!692784))

(assert (not b!692819))

(check-sat)

(pop 1)

(push 1)

(check-sat)

