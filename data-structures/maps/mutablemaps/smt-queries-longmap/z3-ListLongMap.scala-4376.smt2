; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60302 () Bool)

(assert start!60302)

(declare-fun b!676195 () Bool)

(declare-fun e!385660 () Bool)

(declare-datatypes ((List!12935 0))(
  ( (Nil!12932) (Cons!12931 (h!13976 (_ BitVec 64)) (t!19171 List!12935)) )
))
(declare-fun acc!681 () List!12935)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3478 (List!12935 (_ BitVec 64)) Bool)

(assert (=> b!676195 (= e!385660 (not (contains!3478 acc!681 k0!2843)))))

(declare-fun b!676196 () Bool)

(declare-fun res!442813 () Bool)

(declare-fun e!385657 () Bool)

(assert (=> b!676196 (=> (not res!442813) (not e!385657))))

(declare-fun e!385663 () Bool)

(assert (=> b!676196 (= res!442813 e!385663)))

(declare-fun res!442803 () Bool)

(assert (=> b!676196 (=> res!442803 e!385663)))

(declare-fun e!385658 () Bool)

(assert (=> b!676196 (= res!442803 e!385658)))

(declare-fun res!442802 () Bool)

(assert (=> b!676196 (=> (not res!442802) (not e!385658))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!676196 (= res!442802 (bvsgt from!3004 i!1382))))

(declare-fun b!676197 () Bool)

(declare-fun res!442811 () Bool)

(assert (=> b!676197 (=> (not res!442811) (not e!385657))))

(declare-datatypes ((array!39305 0))(
  ( (array!39306 (arr!18841 (Array (_ BitVec 32) (_ BitVec 64))) (size!19205 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39305)

(declare-fun arrayContainsKey!0 (array!39305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!676197 (= res!442811 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!676198 () Bool)

(declare-fun res!442806 () Bool)

(assert (=> b!676198 (=> (not res!442806) (not e!385657))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!676198 (= res!442806 (not (validKeyInArray!0 (select (arr!18841 a!3626) from!3004))))))

(declare-fun b!676199 () Bool)

(declare-fun e!385656 () Bool)

(declare-fun e!385661 () Bool)

(assert (=> b!676199 (= e!385656 e!385661)))

(declare-fun res!442812 () Bool)

(assert (=> b!676199 (=> (not res!442812) (not e!385661))))

(assert (=> b!676199 (= res!442812 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676200 () Bool)

(declare-fun res!442798 () Bool)

(assert (=> b!676200 (=> (not res!442798) (not e!385657))))

(declare-fun noDuplicate!725 (List!12935) Bool)

(assert (=> b!676200 (= res!442798 (noDuplicate!725 acc!681))))

(declare-fun b!676201 () Bool)

(declare-fun res!442814 () Bool)

(assert (=> b!676201 (=> (not res!442814) (not e!385657))))

(assert (=> b!676201 (= res!442814 (not (contains!3478 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676202 () Bool)

(declare-fun res!442807 () Bool)

(assert (=> b!676202 (=> (not res!442807) (not e!385657))))

(assert (=> b!676202 (= res!442807 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!676204 () Bool)

(declare-fun res!442796 () Bool)

(assert (=> b!676204 (=> (not res!442796) (not e!385657))))

(assert (=> b!676204 (= res!442796 e!385656)))

(declare-fun res!442805 () Bool)

(assert (=> b!676204 (=> res!442805 e!385656)))

(declare-fun e!385662 () Bool)

(assert (=> b!676204 (= res!442805 e!385662)))

(declare-fun res!442797 () Bool)

(assert (=> b!676204 (=> (not res!442797) (not e!385662))))

(assert (=> b!676204 (= res!442797 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676205 () Bool)

(declare-fun res!442809 () Bool)

(assert (=> b!676205 (=> (not res!442809) (not e!385657))))

(declare-fun arrayNoDuplicates!0 (array!39305 (_ BitVec 32) List!12935) Bool)

(assert (=> b!676205 (= res!442809 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!676206 () Bool)

(declare-fun res!442804 () Bool)

(assert (=> b!676206 (=> (not res!442804) (not e!385657))))

(assert (=> b!676206 (= res!442804 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19205 a!3626))))))

(declare-fun b!676207 () Bool)

(assert (=> b!676207 (= e!385663 e!385660)))

(declare-fun res!442808 () Bool)

(assert (=> b!676207 (=> (not res!442808) (not e!385660))))

(assert (=> b!676207 (= res!442808 (bvsle from!3004 i!1382))))

(declare-fun b!676208 () Bool)

(declare-fun res!442801 () Bool)

(assert (=> b!676208 (=> (not res!442801) (not e!385657))))

(assert (=> b!676208 (= res!442801 (validKeyInArray!0 k0!2843))))

(declare-fun b!676209 () Bool)

(assert (=> b!676209 (= e!385661 (not (contains!3478 acc!681 k0!2843)))))

(declare-fun b!676210 () Bool)

(assert (=> b!676210 (= e!385662 (contains!3478 acc!681 k0!2843))))

(declare-fun b!676211 () Bool)

(assert (=> b!676211 (= e!385658 (contains!3478 acc!681 k0!2843))))

(declare-fun b!676212 () Bool)

(assert (=> b!676212 (= e!385657 false)))

(declare-fun lt!312714 () Bool)

(assert (=> b!676212 (= lt!312714 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676213 () Bool)

(declare-fun res!442799 () Bool)

(assert (=> b!676213 (=> (not res!442799) (not e!385657))))

(assert (=> b!676213 (= res!442799 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19205 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!676214 () Bool)

(declare-fun res!442795 () Bool)

(assert (=> b!676214 (=> (not res!442795) (not e!385657))))

(assert (=> b!676214 (= res!442795 (not (contains!3478 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676203 () Bool)

(declare-fun res!442810 () Bool)

(assert (=> b!676203 (=> (not res!442810) (not e!385657))))

(assert (=> b!676203 (= res!442810 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12932))))

(declare-fun res!442800 () Bool)

(assert (=> start!60302 (=> (not res!442800) (not e!385657))))

(assert (=> start!60302 (= res!442800 (and (bvslt (size!19205 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19205 a!3626))))))

(assert (=> start!60302 e!385657))

(assert (=> start!60302 true))

(declare-fun array_inv!14615 (array!39305) Bool)

(assert (=> start!60302 (array_inv!14615 a!3626)))

(assert (= (and start!60302 res!442800) b!676200))

(assert (= (and b!676200 res!442798) b!676201))

(assert (= (and b!676201 res!442814) b!676214))

(assert (= (and b!676214 res!442795) b!676196))

(assert (= (and b!676196 res!442802) b!676211))

(assert (= (and b!676196 (not res!442803)) b!676207))

(assert (= (and b!676207 res!442808) b!676195))

(assert (= (and b!676196 res!442813) b!676203))

(assert (= (and b!676203 res!442810) b!676205))

(assert (= (and b!676205 res!442809) b!676206))

(assert (= (and b!676206 res!442804) b!676208))

(assert (= (and b!676208 res!442801) b!676197))

(assert (= (and b!676197 res!442811) b!676213))

(assert (= (and b!676213 res!442799) b!676198))

(assert (= (and b!676198 res!442806) b!676202))

(assert (= (and b!676202 res!442807) b!676204))

(assert (= (and b!676204 res!442797) b!676210))

(assert (= (and b!676204 (not res!442805)) b!676199))

(assert (= (and b!676199 res!442812) b!676209))

(assert (= (and b!676204 res!442796) b!676212))

(declare-fun m!643137 () Bool)

(assert (=> b!676209 m!643137))

(declare-fun m!643139 () Bool)

(assert (=> b!676198 m!643139))

(assert (=> b!676198 m!643139))

(declare-fun m!643141 () Bool)

(assert (=> b!676198 m!643141))

(declare-fun m!643143 () Bool)

(assert (=> b!676205 m!643143))

(declare-fun m!643145 () Bool)

(assert (=> start!60302 m!643145))

(declare-fun m!643147 () Bool)

(assert (=> b!676197 m!643147))

(declare-fun m!643149 () Bool)

(assert (=> b!676201 m!643149))

(assert (=> b!676195 m!643137))

(declare-fun m!643151 () Bool)

(assert (=> b!676203 m!643151))

(declare-fun m!643153 () Bool)

(assert (=> b!676214 m!643153))

(assert (=> b!676211 m!643137))

(declare-fun m!643155 () Bool)

(assert (=> b!676200 m!643155))

(declare-fun m!643157 () Bool)

(assert (=> b!676208 m!643157))

(assert (=> b!676210 m!643137))

(declare-fun m!643159 () Bool)

(assert (=> b!676212 m!643159))

(check-sat (not b!676195) (not b!676214) (not b!676205) (not b!676212) (not b!676198) (not start!60302) (not b!676197) (not b!676200) (not b!676201) (not b!676203) (not b!676211) (not b!676208) (not b!676210) (not b!676209))
(check-sat)
