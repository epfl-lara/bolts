; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61792 () Bool)

(assert start!61792)

(declare-fun b!691207 () Bool)

(declare-datatypes ((Unit!24366 0))(
  ( (Unit!24367) )
))
(declare-fun e!393388 () Unit!24366)

(declare-fun Unit!24368 () Unit!24366)

(assert (=> b!691207 (= e!393388 Unit!24368)))

(declare-fun b!691208 () Bool)

(declare-fun res!455746 () Bool)

(declare-fun e!393391 () Bool)

(assert (=> b!691208 (=> (not res!455746) (not e!393391))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39769 0))(
  ( (array!39770 (arr!19049 (Array (_ BitVec 32) (_ BitVec 64))) (size!19432 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39769)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!691208 (= res!455746 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19432 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun res!455753 () Bool)

(assert (=> start!61792 (=> (not res!455753) (not e!393391))))

(assert (=> start!61792 (= res!455753 (and (bvslt (size!19432 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19432 a!3626))))))

(assert (=> start!61792 e!393391))

(assert (=> start!61792 true))

(declare-fun array_inv!14823 (array!39769) Bool)

(assert (=> start!61792 (array_inv!14823 a!3626)))

(declare-fun b!691209 () Bool)

(assert (=> b!691209 (= e!393391 false)))

(declare-fun lt!316404 () Unit!24366)

(assert (=> b!691209 (= lt!316404 e!393388)))

(declare-fun c!78098 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!691209 (= c!78098 (= (select (arr!19049 a!3626) from!3004) k!2843))))

(declare-fun b!691210 () Bool)

(declare-fun res!455752 () Bool)

(assert (=> b!691210 (=> (not res!455752) (not e!393391))))

(assert (=> b!691210 (= res!455752 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19432 a!3626))))))

(declare-fun b!691211 () Bool)

(declare-fun res!455755 () Bool)

(assert (=> b!691211 (=> (not res!455755) (not e!393391))))

(declare-fun arrayContainsKey!0 (array!39769 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691211 (= res!455755 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691212 () Bool)

(declare-fun res!455749 () Bool)

(assert (=> b!691212 (=> (not res!455749) (not e!393391))))

(declare-datatypes ((List!13143 0))(
  ( (Nil!13140) (Cons!13139 (h!14184 (_ BitVec 64)) (t!19418 List!13143)) )
))
(declare-fun acc!681 () List!13143)

(declare-fun contains!3686 (List!13143 (_ BitVec 64)) Bool)

(assert (=> b!691212 (= res!455749 (not (contains!3686 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691213 () Bool)

(declare-fun res!455754 () Bool)

(assert (=> b!691213 (=> (not res!455754) (not e!393391))))

(assert (=> b!691213 (= res!455754 (not (contains!3686 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691214 () Bool)

(declare-fun e!393386 () Bool)

(assert (=> b!691214 (= e!393386 (contains!3686 acc!681 k!2843))))

(declare-fun b!691215 () Bool)

(declare-fun Unit!24369 () Unit!24366)

(assert (=> b!691215 (= e!393388 Unit!24369)))

(assert (=> b!691215 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316403 () Unit!24366)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39769 (_ BitVec 64) (_ BitVec 32)) Unit!24366)

(assert (=> b!691215 (= lt!316403 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!691215 false))

(declare-fun b!691216 () Bool)

(declare-fun e!393387 () Bool)

(assert (=> b!691216 (= e!393387 (not (contains!3686 acc!681 k!2843)))))

(declare-fun b!691217 () Bool)

(declare-fun res!455756 () Bool)

(assert (=> b!691217 (=> (not res!455756) (not e!393391))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691217 (= res!455756 (validKeyInArray!0 (select (arr!19049 a!3626) from!3004)))))

(declare-fun b!691218 () Bool)

(declare-fun res!455747 () Bool)

(assert (=> b!691218 (=> (not res!455747) (not e!393391))))

(declare-fun arrayNoDuplicates!0 (array!39769 (_ BitVec 32) List!13143) Bool)

(assert (=> b!691218 (= res!455747 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13140))))

(declare-fun b!691219 () Bool)

(declare-fun res!455751 () Bool)

(assert (=> b!691219 (=> (not res!455751) (not e!393391))))

(assert (=> b!691219 (= res!455751 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!691220 () Bool)

(declare-fun res!455745 () Bool)

(assert (=> b!691220 (=> (not res!455745) (not e!393391))))

(declare-fun noDuplicate!933 (List!13143) Bool)

(assert (=> b!691220 (= res!455745 (noDuplicate!933 acc!681))))

(declare-fun b!691221 () Bool)

(declare-fun res!455759 () Bool)

(assert (=> b!691221 (=> (not res!455759) (not e!393391))))

(assert (=> b!691221 (= res!455759 (validKeyInArray!0 k!2843))))

(declare-fun b!691222 () Bool)

(declare-fun e!393390 () Bool)

(assert (=> b!691222 (= e!393390 e!393387)))

(declare-fun res!455748 () Bool)

(assert (=> b!691222 (=> (not res!455748) (not e!393387))))

(assert (=> b!691222 (= res!455748 (bvsle from!3004 i!1382))))

(declare-fun b!691223 () Bool)

(declare-fun res!455750 () Bool)

(assert (=> b!691223 (=> (not res!455750) (not e!393391))))

(assert (=> b!691223 (= res!455750 e!393390)))

(declare-fun res!455757 () Bool)

(assert (=> b!691223 (=> res!455757 e!393390)))

(assert (=> b!691223 (= res!455757 e!393386)))

(declare-fun res!455758 () Bool)

(assert (=> b!691223 (=> (not res!455758) (not e!393386))))

(assert (=> b!691223 (= res!455758 (bvsgt from!3004 i!1382))))

(assert (= (and start!61792 res!455753) b!691220))

(assert (= (and b!691220 res!455745) b!691213))

(assert (= (and b!691213 res!455754) b!691212))

(assert (= (and b!691212 res!455749) b!691223))

(assert (= (and b!691223 res!455758) b!691214))

(assert (= (and b!691223 (not res!455757)) b!691222))

(assert (= (and b!691222 res!455748) b!691216))

(assert (= (and b!691223 res!455750) b!691218))

(assert (= (and b!691218 res!455747) b!691219))

(assert (= (and b!691219 res!455751) b!691210))

(assert (= (and b!691210 res!455752) b!691221))

(assert (= (and b!691221 res!455759) b!691211))

(assert (= (and b!691211 res!455755) b!691208))

(assert (= (and b!691208 res!455746) b!691217))

(assert (= (and b!691217 res!455756) b!691209))

(assert (= (and b!691209 c!78098) b!691215))

(assert (= (and b!691209 (not c!78098)) b!691207))

(declare-fun m!654313 () Bool)

(assert (=> b!691216 m!654313))

(declare-fun m!654315 () Bool)

(assert (=> b!691219 m!654315))

(declare-fun m!654317 () Bool)

(assert (=> b!691211 m!654317))

(declare-fun m!654319 () Bool)

(assert (=> b!691209 m!654319))

(assert (=> b!691214 m!654313))

(declare-fun m!654321 () Bool)

(assert (=> b!691221 m!654321))

(declare-fun m!654323 () Bool)

(assert (=> start!61792 m!654323))

(assert (=> b!691217 m!654319))

(assert (=> b!691217 m!654319))

(declare-fun m!654325 () Bool)

(assert (=> b!691217 m!654325))

(declare-fun m!654327 () Bool)

(assert (=> b!691213 m!654327))

(declare-fun m!654329 () Bool)

(assert (=> b!691218 m!654329))

(declare-fun m!654331 () Bool)

(assert (=> b!691220 m!654331))

(declare-fun m!654333 () Bool)

(assert (=> b!691212 m!654333))

(declare-fun m!654335 () Bool)

(assert (=> b!691215 m!654335))

(declare-fun m!654337 () Bool)

(assert (=> b!691215 m!654337))

(push 1)

(assert (not b!691214))

(assert (not b!691215))

(assert (not b!691221))

(assert (not b!691213))

(assert (not b!691218))

(assert (not b!691220))

(assert (not start!61792))

(assert (not b!691212))

(assert (not b!691211))

(assert (not b!691217))

(assert (not b!691219))

(assert (not b!691216))

(check-sat)

(pop 1)

