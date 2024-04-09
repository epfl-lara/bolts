; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60300 () Bool)

(assert start!60300)

(declare-fun b!676135 () Bool)

(declare-fun e!385635 () Bool)

(declare-datatypes ((List!12934 0))(
  ( (Nil!12931) (Cons!12930 (h!13975 (_ BitVec 64)) (t!19170 List!12934)) )
))
(declare-fun acc!681 () List!12934)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3477 (List!12934 (_ BitVec 64)) Bool)

(assert (=> b!676135 (= e!385635 (not (contains!3477 acc!681 k!2843)))))

(declare-fun b!676136 () Bool)

(declare-fun res!442746 () Bool)

(declare-fun e!385634 () Bool)

(assert (=> b!676136 (=> (not res!442746) (not e!385634))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39303 0))(
  ( (array!39304 (arr!18840 (Array (_ BitVec 32) (_ BitVec 64))) (size!19204 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39303)

(assert (=> b!676136 (= res!442746 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19204 a!3626))))))

(declare-fun b!676137 () Bool)

(declare-fun res!442747 () Bool)

(assert (=> b!676137 (=> (not res!442747) (not e!385634))))

(declare-fun noDuplicate!724 (List!12934) Bool)

(assert (=> b!676137 (= res!442747 (noDuplicate!724 acc!681))))

(declare-fun b!676138 () Bool)

(declare-fun res!442743 () Bool)

(assert (=> b!676138 (=> (not res!442743) (not e!385634))))

(assert (=> b!676138 (= res!442743 (not (contains!3477 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676139 () Bool)

(declare-fun e!385636 () Bool)

(assert (=> b!676139 (= e!385636 e!385635)))

(declare-fun res!442738 () Bool)

(assert (=> b!676139 (=> (not res!442738) (not e!385635))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!676139 (= res!442738 (bvsle from!3004 i!1382))))

(declare-fun b!676140 () Bool)

(declare-fun res!442737 () Bool)

(assert (=> b!676140 (=> (not res!442737) (not e!385634))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!676140 (= res!442737 (not (validKeyInArray!0 (select (arr!18840 a!3626) from!3004))))))

(declare-fun b!676142 () Bool)

(declare-fun res!442745 () Bool)

(assert (=> b!676142 (=> (not res!442745) (not e!385634))))

(assert (=> b!676142 (= res!442745 (not (contains!3477 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676143 () Bool)

(declare-fun res!442741 () Bool)

(assert (=> b!676143 (=> (not res!442741) (not e!385634))))

(assert (=> b!676143 (= res!442741 e!385636)))

(declare-fun res!442749 () Bool)

(assert (=> b!676143 (=> res!442749 e!385636)))

(declare-fun e!385639 () Bool)

(assert (=> b!676143 (= res!442749 e!385639)))

(declare-fun res!442752 () Bool)

(assert (=> b!676143 (=> (not res!442752) (not e!385639))))

(assert (=> b!676143 (= res!442752 (bvsgt from!3004 i!1382))))

(declare-fun b!676144 () Bool)

(declare-fun res!442735 () Bool)

(assert (=> b!676144 (=> (not res!442735) (not e!385634))))

(declare-fun e!385638 () Bool)

(assert (=> b!676144 (= res!442735 e!385638)))

(declare-fun res!442748 () Bool)

(assert (=> b!676144 (=> res!442748 e!385638)))

(declare-fun e!385637 () Bool)

(assert (=> b!676144 (= res!442748 e!385637)))

(declare-fun res!442740 () Bool)

(assert (=> b!676144 (=> (not res!442740) (not e!385637))))

(assert (=> b!676144 (= res!442740 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676145 () Bool)

(declare-fun res!442754 () Bool)

(assert (=> b!676145 (=> (not res!442754) (not e!385634))))

(declare-fun arrayContainsKey!0 (array!39303 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!676145 (= res!442754 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!676146 () Bool)

(assert (=> b!676146 (= e!385639 (contains!3477 acc!681 k!2843))))

(declare-fun b!676147 () Bool)

(assert (=> b!676147 (= e!385637 (contains!3477 acc!681 k!2843))))

(declare-fun b!676148 () Bool)

(declare-fun e!385633 () Bool)

(assert (=> b!676148 (= e!385633 (not (contains!3477 acc!681 k!2843)))))

(declare-fun b!676149 () Bool)

(declare-fun res!442742 () Bool)

(assert (=> b!676149 (=> (not res!442742) (not e!385634))))

(assert (=> b!676149 (= res!442742 (validKeyInArray!0 k!2843))))

(declare-fun b!676150 () Bool)

(declare-fun res!442736 () Bool)

(assert (=> b!676150 (=> (not res!442736) (not e!385634))))

(assert (=> b!676150 (= res!442736 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19204 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!676151 () Bool)

(assert (=> b!676151 (= e!385638 e!385633)))

(declare-fun res!442753 () Bool)

(assert (=> b!676151 (=> (not res!442753) (not e!385633))))

(assert (=> b!676151 (= res!442753 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676152 () Bool)

(assert (=> b!676152 (= e!385634 false)))

(declare-fun lt!312711 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39303 (_ BitVec 32) List!12934) Bool)

(assert (=> b!676152 (= lt!312711 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676153 () Bool)

(declare-fun res!442739 () Bool)

(assert (=> b!676153 (=> (not res!442739) (not e!385634))))

(assert (=> b!676153 (= res!442739 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12931))))

(declare-fun b!676154 () Bool)

(declare-fun res!442751 () Bool)

(assert (=> b!676154 (=> (not res!442751) (not e!385634))))

(assert (=> b!676154 (= res!442751 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun res!442744 () Bool)

(assert (=> start!60300 (=> (not res!442744) (not e!385634))))

(assert (=> start!60300 (= res!442744 (and (bvslt (size!19204 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19204 a!3626))))))

(assert (=> start!60300 e!385634))

(assert (=> start!60300 true))

(declare-fun array_inv!14614 (array!39303) Bool)

(assert (=> start!60300 (array_inv!14614 a!3626)))

(declare-fun b!676141 () Bool)

(declare-fun res!442750 () Bool)

(assert (=> b!676141 (=> (not res!442750) (not e!385634))))

(assert (=> b!676141 (= res!442750 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!60300 res!442744) b!676137))

(assert (= (and b!676137 res!442747) b!676138))

(assert (= (and b!676138 res!442743) b!676142))

(assert (= (and b!676142 res!442745) b!676143))

(assert (= (and b!676143 res!442752) b!676146))

(assert (= (and b!676143 (not res!442749)) b!676139))

(assert (= (and b!676139 res!442738) b!676135))

(assert (= (and b!676143 res!442741) b!676153))

(assert (= (and b!676153 res!442739) b!676141))

(assert (= (and b!676141 res!442750) b!676136))

(assert (= (and b!676136 res!442746) b!676149))

(assert (= (and b!676149 res!442742) b!676145))

(assert (= (and b!676145 res!442754) b!676150))

(assert (= (and b!676150 res!442736) b!676140))

(assert (= (and b!676140 res!442737) b!676154))

(assert (= (and b!676154 res!442751) b!676144))

(assert (= (and b!676144 res!442740) b!676147))

(assert (= (and b!676144 (not res!442748)) b!676151))

(assert (= (and b!676151 res!442753) b!676148))

(assert (= (and b!676144 res!442735) b!676152))

(declare-fun m!643113 () Bool)

(assert (=> b!676145 m!643113))

(declare-fun m!643115 () Bool)

(assert (=> b!676148 m!643115))

(assert (=> b!676135 m!643115))

(declare-fun m!643117 () Bool)

(assert (=> b!676153 m!643117))

(declare-fun m!643119 () Bool)

(assert (=> b!676152 m!643119))

(declare-fun m!643121 () Bool)

(assert (=> b!676142 m!643121))

(declare-fun m!643123 () Bool)

(assert (=> b!676137 m!643123))

(declare-fun m!643125 () Bool)

(assert (=> b!676141 m!643125))

(declare-fun m!643127 () Bool)

(assert (=> start!60300 m!643127))

(declare-fun m!643129 () Bool)

(assert (=> b!676140 m!643129))

(assert (=> b!676140 m!643129))

(declare-fun m!643131 () Bool)

(assert (=> b!676140 m!643131))

(declare-fun m!643133 () Bool)

(assert (=> b!676138 m!643133))

(declare-fun m!643135 () Bool)

(assert (=> b!676149 m!643135))

(assert (=> b!676147 m!643115))

(assert (=> b!676146 m!643115))

(push 1)

(assert (not b!676138))

(assert (not b!676149))

(assert (not b!676146))

(assert (not b!676148))

(assert (not b!676135))

(assert (not b!676152))

(assert (not b!676153))

(assert (not b!676147))

(assert (not b!676142))

(assert (not b!676137))

(assert (not b!676140))

(assert (not b!676145))

(assert (not b!676141))

(assert (not start!60300))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

