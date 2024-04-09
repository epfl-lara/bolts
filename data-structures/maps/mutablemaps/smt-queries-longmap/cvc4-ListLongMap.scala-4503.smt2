; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62506 () Bool)

(assert start!62506)

(declare-fun b!703221 () Bool)

(declare-fun res!467210 () Bool)

(declare-fun e!397498 () Bool)

(assert (=> b!703221 (=> (not res!467210) (not e!397498))))

(declare-datatypes ((List!13317 0))(
  ( (Nil!13314) (Cons!13313 (h!14358 (_ BitVec 64)) (t!19607 List!13317)) )
))
(declare-fun acc!652 () List!13317)

(declare-fun noDuplicate!1107 (List!13317) Bool)

(assert (=> b!703221 (= res!467210 (noDuplicate!1107 acc!652))))

(declare-fun b!703222 () Bool)

(assert (=> b!703222 (= e!397498 false)))

(declare-fun lt!317730 () Bool)

(declare-datatypes ((array!40141 0))(
  ( (array!40142 (arr!19223 (Array (_ BitVec 32) (_ BitVec 64))) (size!19606 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40141)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40141 (_ BitVec 32) List!13317) Bool)

(assert (=> b!703222 (= lt!317730 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!703223 () Bool)

(declare-fun res!467213 () Bool)

(assert (=> b!703223 (=> (not res!467213) (not e!397498))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3860 (List!13317 (_ BitVec 64)) Bool)

(assert (=> b!703223 (= res!467213 (not (contains!3860 acc!652 k!2824)))))

(declare-fun b!703224 () Bool)

(declare-fun res!467211 () Bool)

(assert (=> b!703224 (=> (not res!467211) (not e!397498))))

(declare-fun newAcc!49 () List!13317)

(assert (=> b!703224 (= res!467211 (not (contains!3860 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703226 () Bool)

(declare-fun res!467214 () Bool)

(assert (=> b!703226 (=> (not res!467214) (not e!397498))))

(declare-fun -!269 (List!13317 (_ BitVec 64)) List!13317)

(assert (=> b!703226 (= res!467214 (= (-!269 newAcc!49 k!2824) acc!652))))

(declare-fun b!703227 () Bool)

(declare-fun res!467222 () Bool)

(assert (=> b!703227 (=> (not res!467222) (not e!397498))))

(declare-fun arrayContainsKey!0 (array!40141 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!703227 (= res!467222 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!703228 () Bool)

(declare-fun res!467209 () Bool)

(assert (=> b!703228 (=> (not res!467209) (not e!397498))))

(assert (=> b!703228 (= res!467209 (contains!3860 newAcc!49 k!2824))))

(declare-fun b!703229 () Bool)

(declare-fun res!467207 () Bool)

(assert (=> b!703229 (=> (not res!467207) (not e!397498))))

(assert (=> b!703229 (= res!467207 (noDuplicate!1107 newAcc!49))))

(declare-fun b!703230 () Bool)

(declare-fun res!467216 () Bool)

(assert (=> b!703230 (=> (not res!467216) (not e!397498))))

(assert (=> b!703230 (= res!467216 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!703231 () Bool)

(declare-fun res!467219 () Bool)

(assert (=> b!703231 (=> (not res!467219) (not e!397498))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!703231 (= res!467219 (not (validKeyInArray!0 (select (arr!19223 a!3591) from!2969))))))

(declare-fun b!703232 () Bool)

(declare-fun res!467217 () Bool)

(assert (=> b!703232 (=> (not res!467217) (not e!397498))))

(assert (=> b!703232 (= res!467217 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!703233 () Bool)

(declare-fun res!467221 () Bool)

(assert (=> b!703233 (=> (not res!467221) (not e!397498))))

(assert (=> b!703233 (= res!467221 (validKeyInArray!0 k!2824))))

(declare-fun b!703234 () Bool)

(declare-fun res!467206 () Bool)

(assert (=> b!703234 (=> (not res!467206) (not e!397498))))

(assert (=> b!703234 (= res!467206 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!703235 () Bool)

(declare-fun res!467220 () Bool)

(assert (=> b!703235 (=> (not res!467220) (not e!397498))))

(assert (=> b!703235 (= res!467220 (not (contains!3860 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703236 () Bool)

(declare-fun res!467218 () Bool)

(assert (=> b!703236 (=> (not res!467218) (not e!397498))))

(assert (=> b!703236 (= res!467218 (not (contains!3860 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!467205 () Bool)

(assert (=> start!62506 (=> (not res!467205) (not e!397498))))

(assert (=> start!62506 (= res!467205 (and (bvslt (size!19606 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19606 a!3591))))))

(assert (=> start!62506 e!397498))

(assert (=> start!62506 true))

(declare-fun array_inv!14997 (array!40141) Bool)

(assert (=> start!62506 (array_inv!14997 a!3591)))

(declare-fun b!703225 () Bool)

(declare-fun res!467212 () Bool)

(assert (=> b!703225 (=> (not res!467212) (not e!397498))))

(assert (=> b!703225 (= res!467212 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19606 a!3591)))))

(declare-fun b!703237 () Bool)

(declare-fun res!467215 () Bool)

(assert (=> b!703237 (=> (not res!467215) (not e!397498))))

(declare-fun subseq!304 (List!13317 List!13317) Bool)

(assert (=> b!703237 (= res!467215 (subseq!304 acc!652 newAcc!49))))

(declare-fun b!703238 () Bool)

(declare-fun res!467208 () Bool)

(assert (=> b!703238 (=> (not res!467208) (not e!397498))))

(assert (=> b!703238 (= res!467208 (not (contains!3860 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62506 res!467205) b!703221))

(assert (= (and b!703221 res!467210) b!703229))

(assert (= (and b!703229 res!467207) b!703235))

(assert (= (and b!703235 res!467220) b!703238))

(assert (= (and b!703238 res!467208) b!703227))

(assert (= (and b!703227 res!467222) b!703223))

(assert (= (and b!703223 res!467213) b!703233))

(assert (= (and b!703233 res!467221) b!703232))

(assert (= (and b!703232 res!467217) b!703237))

(assert (= (and b!703237 res!467215) b!703228))

(assert (= (and b!703228 res!467209) b!703226))

(assert (= (and b!703226 res!467214) b!703224))

(assert (= (and b!703224 res!467211) b!703236))

(assert (= (and b!703236 res!467218) b!703225))

(assert (= (and b!703225 res!467212) b!703231))

(assert (= (and b!703231 res!467219) b!703234))

(assert (= (and b!703234 res!467206) b!703230))

(assert (= (and b!703230 res!467216) b!703222))

(declare-fun m!662139 () Bool)

(assert (=> b!703222 m!662139))

(declare-fun m!662141 () Bool)

(assert (=> b!703236 m!662141))

(declare-fun m!662143 () Bool)

(assert (=> b!703232 m!662143))

(declare-fun m!662145 () Bool)

(assert (=> b!703235 m!662145))

(declare-fun m!662147 () Bool)

(assert (=> b!703233 m!662147))

(declare-fun m!662149 () Bool)

(assert (=> b!703230 m!662149))

(declare-fun m!662151 () Bool)

(assert (=> b!703223 m!662151))

(declare-fun m!662153 () Bool)

(assert (=> b!703226 m!662153))

(declare-fun m!662155 () Bool)

(assert (=> b!703228 m!662155))

(declare-fun m!662157 () Bool)

(assert (=> b!703238 m!662157))

(declare-fun m!662159 () Bool)

(assert (=> b!703224 m!662159))

(declare-fun m!662161 () Bool)

(assert (=> b!703221 m!662161))

(declare-fun m!662163 () Bool)

(assert (=> start!62506 m!662163))

(declare-fun m!662165 () Bool)

(assert (=> b!703229 m!662165))

(declare-fun m!662167 () Bool)

(assert (=> b!703227 m!662167))

(declare-fun m!662169 () Bool)

(assert (=> b!703231 m!662169))

(assert (=> b!703231 m!662169))

(declare-fun m!662171 () Bool)

(assert (=> b!703231 m!662171))

(declare-fun m!662173 () Bool)

(assert (=> b!703237 m!662173))

(push 1)

(assert (not b!703230))

(assert (not b!703227))

(assert (not b!703223))

(assert (not b!703228))

(assert (not b!703236))

(assert (not b!703237))

(assert (not b!703238))

(assert (not start!62506))

(assert (not b!703235))

(assert (not b!703222))

(assert (not b!703229))

(assert (not b!703231))

(assert (not b!703226))

