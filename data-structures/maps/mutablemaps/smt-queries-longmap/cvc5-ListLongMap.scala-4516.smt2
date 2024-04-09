; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62580 () Bool)

(assert start!62580)

(declare-fun b!705221 () Bool)

(declare-fun res!469207 () Bool)

(declare-fun e!397720 () Bool)

(assert (=> b!705221 (=> (not res!469207) (not e!397720))))

(declare-datatypes ((array!40215 0))(
  ( (array!40216 (arr!19260 (Array (_ BitVec 32) (_ BitVec 64))) (size!19643 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40215)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13354 0))(
  ( (Nil!13351) (Cons!13350 (h!14395 (_ BitVec 64)) (t!19644 List!13354)) )
))
(declare-fun acc!652 () List!13354)

(declare-fun arrayNoDuplicates!0 (array!40215 (_ BitVec 32) List!13354) Bool)

(assert (=> b!705221 (= res!469207 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!705222 () Bool)

(declare-fun res!469217 () Bool)

(assert (=> b!705222 (=> (not res!469217) (not e!397720))))

(assert (=> b!705222 (= res!469217 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!705223 () Bool)

(declare-fun res!469205 () Bool)

(assert (=> b!705223 (=> (not res!469205) (not e!397720))))

(declare-fun newAcc!49 () List!13354)

(declare-fun contains!3897 (List!13354 (_ BitVec 64)) Bool)

(assert (=> b!705223 (= res!469205 (not (contains!3897 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705224 () Bool)

(declare-fun res!469223 () Bool)

(assert (=> b!705224 (=> (not res!469223) (not e!397720))))

(assert (=> b!705224 (= res!469223 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19643 a!3591)))))

(declare-fun b!705225 () Bool)

(declare-fun res!469219 () Bool)

(assert (=> b!705225 (=> (not res!469219) (not e!397720))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun -!306 (List!13354 (_ BitVec 64)) List!13354)

(assert (=> b!705225 (= res!469219 (= (-!306 newAcc!49 k!2824) acc!652))))

(declare-fun b!705226 () Bool)

(declare-fun res!469210 () Bool)

(assert (=> b!705226 (=> (not res!469210) (not e!397720))))

(assert (=> b!705226 (= res!469210 (not (contains!3897 acc!652 k!2824)))))

(declare-fun b!705227 () Bool)

(declare-fun res!469211 () Bool)

(assert (=> b!705227 (=> (not res!469211) (not e!397720))))

(assert (=> b!705227 (= res!469211 (not (contains!3897 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705228 () Bool)

(declare-fun res!469218 () Bool)

(assert (=> b!705228 (=> (not res!469218) (not e!397720))))

(declare-fun noDuplicate!1144 (List!13354) Bool)

(assert (=> b!705228 (= res!469218 (noDuplicate!1144 newAcc!49))))

(declare-fun b!705229 () Bool)

(assert (=> b!705229 (= e!397720 (not (bvsle from!2969 (size!19643 a!3591))))))

(assert (=> b!705229 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49)))

(declare-datatypes ((Unit!24586 0))(
  ( (Unit!24587) )
))
(declare-fun lt!317841 () Unit!24586)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40215 (_ BitVec 64) (_ BitVec 32) List!13354 List!13354) Unit!24586)

(assert (=> b!705229 (= lt!317841 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49))))

(declare-fun b!705230 () Bool)

(declare-fun res!469214 () Bool)

(assert (=> b!705230 (=> (not res!469214) (not e!397720))))

(declare-fun subseq!341 (List!13354 List!13354) Bool)

(assert (=> b!705230 (= res!469214 (subseq!341 acc!652 newAcc!49))))

(declare-fun b!705231 () Bool)

(declare-fun res!469212 () Bool)

(assert (=> b!705231 (=> (not res!469212) (not e!397720))))

(declare-fun arrayContainsKey!0 (array!40215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705231 (= res!469212 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!705232 () Bool)

(declare-fun res!469213 () Bool)

(assert (=> b!705232 (=> (not res!469213) (not e!397720))))

(assert (=> b!705232 (= res!469213 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!705233 () Bool)

(declare-fun res!469222 () Bool)

(assert (=> b!705233 (=> (not res!469222) (not e!397720))))

(assert (=> b!705233 (= res!469222 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705234 () Bool)

(declare-fun res!469221 () Bool)

(assert (=> b!705234 (=> (not res!469221) (not e!397720))))

(assert (=> b!705234 (= res!469221 (noDuplicate!1144 acc!652))))

(declare-fun res!469215 () Bool)

(assert (=> start!62580 (=> (not res!469215) (not e!397720))))

(assert (=> start!62580 (= res!469215 (and (bvslt (size!19643 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19643 a!3591))))))

(assert (=> start!62580 e!397720))

(assert (=> start!62580 true))

(declare-fun array_inv!15034 (array!40215) Bool)

(assert (=> start!62580 (array_inv!15034 a!3591)))

(declare-fun b!705235 () Bool)

(declare-fun res!469208 () Bool)

(assert (=> b!705235 (=> (not res!469208) (not e!397720))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705235 (= res!469208 (validKeyInArray!0 k!2824))))

(declare-fun b!705236 () Bool)

(declare-fun res!469216 () Bool)

(assert (=> b!705236 (=> (not res!469216) (not e!397720))))

(assert (=> b!705236 (= res!469216 (contains!3897 newAcc!49 k!2824))))

(declare-fun b!705237 () Bool)

(declare-fun res!469209 () Bool)

(assert (=> b!705237 (=> (not res!469209) (not e!397720))))

(assert (=> b!705237 (= res!469209 (not (validKeyInArray!0 (select (arr!19260 a!3591) from!2969))))))

(declare-fun b!705238 () Bool)

(declare-fun res!469220 () Bool)

(assert (=> b!705238 (=> (not res!469220) (not e!397720))))

(assert (=> b!705238 (= res!469220 (not (contains!3897 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705239 () Bool)

(declare-fun res!469206 () Bool)

(assert (=> b!705239 (=> (not res!469206) (not e!397720))))

(assert (=> b!705239 (= res!469206 (not (contains!3897 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62580 res!469215) b!705234))

(assert (= (and b!705234 res!469221) b!705228))

(assert (= (and b!705228 res!469218) b!705227))

(assert (= (and b!705227 res!469211) b!705238))

(assert (= (and b!705238 res!469220) b!705231))

(assert (= (and b!705231 res!469212) b!705226))

(assert (= (and b!705226 res!469210) b!705235))

(assert (= (and b!705235 res!469208) b!705233))

(assert (= (and b!705233 res!469222) b!705230))

(assert (= (and b!705230 res!469214) b!705236))

(assert (= (and b!705236 res!469216) b!705225))

(assert (= (and b!705225 res!469219) b!705223))

(assert (= (and b!705223 res!469205) b!705239))

(assert (= (and b!705239 res!469206) b!705224))

(assert (= (and b!705224 res!469223) b!705237))

(assert (= (and b!705237 res!469209) b!705222))

(assert (= (and b!705222 res!469217) b!705232))

(assert (= (and b!705232 res!469213) b!705221))

(assert (= (and b!705221 res!469207) b!705229))

(declare-fun m!663471 () Bool)

(assert (=> b!705229 m!663471))

(declare-fun m!663473 () Bool)

(assert (=> b!705229 m!663473))

(declare-fun m!663475 () Bool)

(assert (=> b!705230 m!663475))

(declare-fun m!663477 () Bool)

(assert (=> b!705233 m!663477))

(declare-fun m!663479 () Bool)

(assert (=> b!705226 m!663479))

(declare-fun m!663481 () Bool)

(assert (=> b!705228 m!663481))

(declare-fun m!663483 () Bool)

(assert (=> b!705239 m!663483))

(declare-fun m!663485 () Bool)

(assert (=> b!705232 m!663485))

(declare-fun m!663487 () Bool)

(assert (=> b!705235 m!663487))

(declare-fun m!663489 () Bool)

(assert (=> b!705238 m!663489))

(declare-fun m!663491 () Bool)

(assert (=> b!705236 m!663491))

(declare-fun m!663493 () Bool)

(assert (=> b!705227 m!663493))

(declare-fun m!663495 () Bool)

(assert (=> b!705223 m!663495))

(declare-fun m!663497 () Bool)

(assert (=> b!705231 m!663497))

(declare-fun m!663499 () Bool)

(assert (=> b!705221 m!663499))

(declare-fun m!663501 () Bool)

(assert (=> start!62580 m!663501))

(declare-fun m!663503 () Bool)

(assert (=> b!705237 m!663503))

(assert (=> b!705237 m!663503))

(declare-fun m!663505 () Bool)

(assert (=> b!705237 m!663505))

(declare-fun m!663507 () Bool)

(assert (=> b!705225 m!663507))

(declare-fun m!663509 () Bool)

(assert (=> b!705234 m!663509))

(push 1)

(assert (not b!705236))

(assert (not b!705234))

(assert (not b!705230))

(assert (not b!705221))

(assert (not b!705232))

(assert (not b!705225))

(assert (not b!705226))

(assert (not b!705227))

(assert (not b!705231))

(assert (not b!705237))

(assert (not b!705233))

(assert (not start!62580))

(assert (not b!705229))

(assert (not b!705239))

(assert (not b!705238))

(assert (not b!705235))

(assert (not b!705228))

(assert (not b!705223))

(check-sat)

(pop 1)

