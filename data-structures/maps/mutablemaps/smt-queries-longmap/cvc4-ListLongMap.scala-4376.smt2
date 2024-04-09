; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60304 () Bool)

(assert start!60304)

(declare-fun b!676255 () Bool)

(declare-fun e!385682 () Bool)

(declare-datatypes ((List!12936 0))(
  ( (Nil!12933) (Cons!12932 (h!13977 (_ BitVec 64)) (t!19172 List!12936)) )
))
(declare-fun acc!681 () List!12936)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3479 (List!12936 (_ BitVec 64)) Bool)

(assert (=> b!676255 (= e!385682 (contains!3479 acc!681 k!2843))))

(declare-fun b!676256 () Bool)

(declare-fun res!442856 () Bool)

(declare-fun e!385686 () Bool)

(assert (=> b!676256 (=> (not res!442856) (not e!385686))))

(declare-datatypes ((array!39307 0))(
  ( (array!39308 (arr!18842 (Array (_ BitVec 32) (_ BitVec 64))) (size!19206 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39307)

(declare-fun arrayContainsKey!0 (array!39307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!676256 (= res!442856 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!676257 () Bool)

(declare-fun res!442873 () Bool)

(assert (=> b!676257 (=> (not res!442873) (not e!385686))))

(assert (=> b!676257 (= res!442873 (not (contains!3479 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676258 () Bool)

(declare-fun res!442865 () Bool)

(assert (=> b!676258 (=> (not res!442865) (not e!385686))))

(declare-fun e!385683 () Bool)

(assert (=> b!676258 (= res!442865 e!385683)))

(declare-fun res!442874 () Bool)

(assert (=> b!676258 (=> res!442874 e!385683)))

(declare-fun e!385684 () Bool)

(assert (=> b!676258 (= res!442874 e!385684)))

(declare-fun res!442862 () Bool)

(assert (=> b!676258 (=> (not res!442862) (not e!385684))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!676258 (= res!442862 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676259 () Bool)

(declare-fun e!385687 () Bool)

(declare-fun e!385681 () Bool)

(assert (=> b!676259 (= e!385687 e!385681)))

(declare-fun res!442858 () Bool)

(assert (=> b!676259 (=> (not res!442858) (not e!385681))))

(assert (=> b!676259 (= res!442858 (bvsle from!3004 i!1382))))

(declare-fun b!676260 () Bool)

(declare-fun res!442863 () Bool)

(assert (=> b!676260 (=> (not res!442863) (not e!385686))))

(assert (=> b!676260 (= res!442863 (not (contains!3479 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676261 () Bool)

(declare-fun res!442871 () Bool)

(assert (=> b!676261 (=> (not res!442871) (not e!385686))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!676261 (= res!442871 (not (validKeyInArray!0 (select (arr!18842 a!3626) from!3004))))))

(declare-fun b!676262 () Bool)

(declare-fun res!442872 () Bool)

(assert (=> b!676262 (=> (not res!442872) (not e!385686))))

(declare-fun arrayNoDuplicates!0 (array!39307 (_ BitVec 32) List!12936) Bool)

(assert (=> b!676262 (= res!442872 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!676263 () Bool)

(declare-fun res!442861 () Bool)

(assert (=> b!676263 (=> (not res!442861) (not e!385686))))

(assert (=> b!676263 (= res!442861 (validKeyInArray!0 k!2843))))

(declare-fun b!676264 () Bool)

(declare-fun res!442855 () Bool)

(assert (=> b!676264 (=> (not res!442855) (not e!385686))))

(assert (=> b!676264 (= res!442855 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19206 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!676265 () Bool)

(declare-fun e!385685 () Bool)

(assert (=> b!676265 (= e!385683 e!385685)))

(declare-fun res!442868 () Bool)

(assert (=> b!676265 (=> (not res!442868) (not e!385685))))

(assert (=> b!676265 (= res!442868 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!442869 () Bool)

(assert (=> start!60304 (=> (not res!442869) (not e!385686))))

(assert (=> start!60304 (= res!442869 (and (bvslt (size!19206 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19206 a!3626))))))

(assert (=> start!60304 e!385686))

(assert (=> start!60304 true))

(declare-fun array_inv!14616 (array!39307) Bool)

(assert (=> start!60304 (array_inv!14616 a!3626)))

(declare-fun b!676266 () Bool)

(declare-fun res!442859 () Bool)

(assert (=> b!676266 (=> (not res!442859) (not e!385686))))

(declare-fun noDuplicate!726 (List!12936) Bool)

(assert (=> b!676266 (= res!442859 (noDuplicate!726 acc!681))))

(declare-fun b!676267 () Bool)

(declare-fun res!442867 () Bool)

(assert (=> b!676267 (=> (not res!442867) (not e!385686))))

(assert (=> b!676267 (= res!442867 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!676268 () Bool)

(assert (=> b!676268 (= e!385686 false)))

(declare-fun lt!312717 () Bool)

(assert (=> b!676268 (= lt!312717 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676269 () Bool)

(assert (=> b!676269 (= e!385685 (not (contains!3479 acc!681 k!2843)))))

(declare-fun b!676270 () Bool)

(declare-fun res!442860 () Bool)

(assert (=> b!676270 (=> (not res!442860) (not e!385686))))

(assert (=> b!676270 (= res!442860 e!385687)))

(declare-fun res!442857 () Bool)

(assert (=> b!676270 (=> res!442857 e!385687)))

(assert (=> b!676270 (= res!442857 e!385682)))

(declare-fun res!442864 () Bool)

(assert (=> b!676270 (=> (not res!442864) (not e!385682))))

(assert (=> b!676270 (= res!442864 (bvsgt from!3004 i!1382))))

(declare-fun b!676271 () Bool)

(assert (=> b!676271 (= e!385681 (not (contains!3479 acc!681 k!2843)))))

(declare-fun b!676272 () Bool)

(declare-fun res!442866 () Bool)

(assert (=> b!676272 (=> (not res!442866) (not e!385686))))

(assert (=> b!676272 (= res!442866 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19206 a!3626))))))

(declare-fun b!676273 () Bool)

(assert (=> b!676273 (= e!385684 (contains!3479 acc!681 k!2843))))

(declare-fun b!676274 () Bool)

(declare-fun res!442870 () Bool)

(assert (=> b!676274 (=> (not res!442870) (not e!385686))))

(assert (=> b!676274 (= res!442870 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12933))))

(assert (= (and start!60304 res!442869) b!676266))

(assert (= (and b!676266 res!442859) b!676260))

(assert (= (and b!676260 res!442863) b!676257))

(assert (= (and b!676257 res!442873) b!676270))

(assert (= (and b!676270 res!442864) b!676255))

(assert (= (and b!676270 (not res!442857)) b!676259))

(assert (= (and b!676259 res!442858) b!676271))

(assert (= (and b!676270 res!442860) b!676274))

(assert (= (and b!676274 res!442870) b!676262))

(assert (= (and b!676262 res!442872) b!676272))

(assert (= (and b!676272 res!442866) b!676263))

(assert (= (and b!676263 res!442861) b!676256))

(assert (= (and b!676256 res!442856) b!676264))

(assert (= (and b!676264 res!442855) b!676261))

(assert (= (and b!676261 res!442871) b!676267))

(assert (= (and b!676267 res!442867) b!676258))

(assert (= (and b!676258 res!442862) b!676273))

(assert (= (and b!676258 (not res!442874)) b!676265))

(assert (= (and b!676265 res!442868) b!676269))

(assert (= (and b!676258 res!442865) b!676268))

(declare-fun m!643161 () Bool)

(assert (=> b!676262 m!643161))

(declare-fun m!643163 () Bool)

(assert (=> b!676261 m!643163))

(assert (=> b!676261 m!643163))

(declare-fun m!643165 () Bool)

(assert (=> b!676261 m!643165))

(declare-fun m!643167 () Bool)

(assert (=> b!676255 m!643167))

(declare-fun m!643169 () Bool)

(assert (=> b!676260 m!643169))

(assert (=> b!676271 m!643167))

(declare-fun m!643171 () Bool)

(assert (=> b!676263 m!643171))

(declare-fun m!643173 () Bool)

(assert (=> b!676268 m!643173))

(declare-fun m!643175 () Bool)

(assert (=> start!60304 m!643175))

(assert (=> b!676269 m!643167))

(declare-fun m!643177 () Bool)

(assert (=> b!676266 m!643177))

(assert (=> b!676273 m!643167))

(declare-fun m!643179 () Bool)

(assert (=> b!676256 m!643179))

(declare-fun m!643181 () Bool)

(assert (=> b!676274 m!643181))

(declare-fun m!643183 () Bool)

(assert (=> b!676257 m!643183))

(push 1)

(assert (not b!676273))

(assert (not b!676271))

(assert (not b!676260))

(assert (not b!676274))

(assert (not b!676255))

(assert (not start!60304))

(assert (not b!676256))

(assert (not b!676269))

(assert (not b!676268))

(assert (not b!676266))

(assert (not b!676263))

(assert (not b!676257))

(assert (not b!676262))

(assert (not b!676261))

