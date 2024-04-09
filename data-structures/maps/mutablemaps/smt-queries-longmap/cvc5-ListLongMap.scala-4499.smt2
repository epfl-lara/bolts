; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62478 () Bool)

(assert start!62478)

(declare-fun b!702190 () Bool)

(declare-fun res!466191 () Bool)

(declare-fun e!397389 () Bool)

(assert (=> b!702190 (=> (not res!466191) (not e!397389))))

(declare-datatypes ((array!40113 0))(
  ( (array!40114 (arr!19209 (Array (_ BitVec 32) (_ BitVec 64))) (size!19592 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40113)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40113 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!702190 (= res!466191 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!702191 () Bool)

(assert (=> b!702191 (= e!397389 (not true))))

(declare-datatypes ((List!13303 0))(
  ( (Nil!13300) (Cons!13299 (h!14344 (_ BitVec 64)) (t!19593 List!13303)) )
))
(declare-fun lt!317638 () List!13303)

(declare-fun arrayNoDuplicates!0 (array!40113 (_ BitVec 32) List!13303) Bool)

(assert (=> b!702191 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317638)))

(declare-fun lt!317640 () List!13303)

(declare-datatypes ((Unit!24568 0))(
  ( (Unit!24569) )
))
(declare-fun lt!317639 () Unit!24568)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40113 (_ BitVec 64) (_ BitVec 32) List!13303 List!13303) Unit!24568)

(assert (=> b!702191 (= lt!317639 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!317640 lt!317638))))

(declare-fun b!702192 () Bool)

(declare-fun res!466190 () Bool)

(declare-fun e!397388 () Bool)

(assert (=> b!702192 (=> (not res!466190) (not e!397388))))

(declare-fun newAcc!49 () List!13303)

(declare-fun contains!3846 (List!13303 (_ BitVec 64)) Bool)

(assert (=> b!702192 (= res!466190 (not (contains!3846 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!466199 () Bool)

(assert (=> start!62478 (=> (not res!466199) (not e!397388))))

(assert (=> start!62478 (= res!466199 (and (bvslt (size!19592 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19592 a!3591))))))

(assert (=> start!62478 e!397388))

(assert (=> start!62478 true))

(declare-fun array_inv!14983 (array!40113) Bool)

(assert (=> start!62478 (array_inv!14983 a!3591)))

(declare-fun b!702193 () Bool)

(declare-fun res!466200 () Bool)

(assert (=> b!702193 (=> (not res!466200) (not e!397388))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!702193 (= res!466200 (validKeyInArray!0 k!2824))))

(declare-fun b!702194 () Bool)

(declare-fun res!466176 () Bool)

(assert (=> b!702194 (=> (not res!466176) (not e!397389))))

(declare-fun -!255 (List!13303 (_ BitVec 64)) List!13303)

(assert (=> b!702194 (= res!466176 (= (-!255 lt!317638 k!2824) lt!317640))))

(declare-fun b!702195 () Bool)

(declare-fun res!466185 () Bool)

(assert (=> b!702195 (=> (not res!466185) (not e!397388))))

(assert (=> b!702195 (= res!466185 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!702196 () Bool)

(declare-fun res!466187 () Bool)

(assert (=> b!702196 (=> (not res!466187) (not e!397389))))

(assert (=> b!702196 (= res!466187 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317640))))

(declare-fun b!702197 () Bool)

(declare-fun res!466175 () Bool)

(assert (=> b!702197 (=> (not res!466175) (not e!397389))))

(declare-fun noDuplicate!1093 (List!13303) Bool)

(assert (=> b!702197 (= res!466175 (noDuplicate!1093 lt!317638))))

(declare-fun b!702198 () Bool)

(declare-fun res!466196 () Bool)

(assert (=> b!702198 (=> (not res!466196) (not e!397389))))

(assert (=> b!702198 (= res!466196 (not (contains!3846 lt!317640 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702199 () Bool)

(declare-fun res!466192 () Bool)

(assert (=> b!702199 (=> (not res!466192) (not e!397388))))

(declare-fun acc!652 () List!13303)

(assert (=> b!702199 (= res!466192 (noDuplicate!1093 acc!652))))

(declare-fun b!702200 () Bool)

(declare-fun res!466188 () Bool)

(assert (=> b!702200 (=> (not res!466188) (not e!397388))))

(assert (=> b!702200 (= res!466188 (contains!3846 newAcc!49 k!2824))))

(declare-fun b!702201 () Bool)

(declare-fun res!466198 () Bool)

(assert (=> b!702201 (=> (not res!466198) (not e!397389))))

(assert (=> b!702201 (= res!466198 (contains!3846 lt!317638 k!2824))))

(declare-fun b!702202 () Bool)

(declare-fun res!466197 () Bool)

(assert (=> b!702202 (=> (not res!466197) (not e!397388))))

(assert (=> b!702202 (= res!466197 (not (contains!3846 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702203 () Bool)

(declare-fun res!466180 () Bool)

(assert (=> b!702203 (=> (not res!466180) (not e!397389))))

(assert (=> b!702203 (= res!466180 (not (contains!3846 lt!317640 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702204 () Bool)

(declare-fun res!466174 () Bool)

(assert (=> b!702204 (=> (not res!466174) (not e!397389))))

(assert (=> b!702204 (= res!466174 (not (contains!3846 lt!317638 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702205 () Bool)

(declare-fun res!466202 () Bool)

(assert (=> b!702205 (=> (not res!466202) (not e!397389))))

(declare-fun subseq!290 (List!13303 List!13303) Bool)

(assert (=> b!702205 (= res!466202 (subseq!290 lt!317640 lt!317638))))

(declare-fun b!702206 () Bool)

(declare-fun res!466182 () Bool)

(assert (=> b!702206 (=> (not res!466182) (not e!397388))))

(assert (=> b!702206 (= res!466182 (not (contains!3846 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702207 () Bool)

(declare-fun res!466184 () Bool)

(assert (=> b!702207 (=> (not res!466184) (not e!397388))))

(assert (=> b!702207 (= res!466184 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19592 a!3591)))))

(declare-fun b!702208 () Bool)

(declare-fun res!466177 () Bool)

(assert (=> b!702208 (=> (not res!466177) (not e!397388))))

(assert (=> b!702208 (= res!466177 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!702209 () Bool)

(declare-fun res!466179 () Bool)

(assert (=> b!702209 (=> (not res!466179) (not e!397388))))

(assert (=> b!702209 (= res!466179 (not (contains!3846 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702210 () Bool)

(declare-fun res!466178 () Bool)

(assert (=> b!702210 (=> (not res!466178) (not e!397388))))

(assert (=> b!702210 (= res!466178 (validKeyInArray!0 (select (arr!19209 a!3591) from!2969)))))

(declare-fun b!702211 () Bool)

(declare-fun res!466193 () Bool)

(assert (=> b!702211 (=> (not res!466193) (not e!397388))))

(assert (=> b!702211 (= res!466193 (subseq!290 acc!652 newAcc!49))))

(declare-fun b!702212 () Bool)

(declare-fun res!466194 () Bool)

(assert (=> b!702212 (=> (not res!466194) (not e!397388))))

(assert (=> b!702212 (= res!466194 (= (-!255 newAcc!49 k!2824) acc!652))))

(declare-fun b!702213 () Bool)

(declare-fun res!466181 () Bool)

(assert (=> b!702213 (=> (not res!466181) (not e!397389))))

(assert (=> b!702213 (= res!466181 (noDuplicate!1093 lt!317640))))

(declare-fun b!702214 () Bool)

(declare-fun res!466201 () Bool)

(assert (=> b!702214 (=> (not res!466201) (not e!397389))))

(assert (=> b!702214 (= res!466201 (not (contains!3846 lt!317638 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702215 () Bool)

(declare-fun res!466183 () Bool)

(assert (=> b!702215 (=> (not res!466183) (not e!397388))))

(assert (=> b!702215 (= res!466183 (not (contains!3846 acc!652 k!2824)))))

(declare-fun b!702216 () Bool)

(declare-fun res!466189 () Bool)

(assert (=> b!702216 (=> (not res!466189) (not e!397388))))

(assert (=> b!702216 (= res!466189 (noDuplicate!1093 newAcc!49))))

(declare-fun b!702217 () Bool)

(assert (=> b!702217 (= e!397388 e!397389)))

(declare-fun res!466195 () Bool)

(assert (=> b!702217 (=> (not res!466195) (not e!397389))))

(assert (=> b!702217 (= res!466195 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!487 (List!13303 (_ BitVec 64)) List!13303)

(assert (=> b!702217 (= lt!317638 ($colon$colon!487 newAcc!49 (select (arr!19209 a!3591) from!2969)))))

(assert (=> b!702217 (= lt!317640 ($colon$colon!487 acc!652 (select (arr!19209 a!3591) from!2969)))))

(declare-fun b!702218 () Bool)

(declare-fun res!466186 () Bool)

(assert (=> b!702218 (=> (not res!466186) (not e!397389))))

(assert (=> b!702218 (= res!466186 (not (contains!3846 lt!317640 k!2824)))))

(assert (= (and start!62478 res!466199) b!702199))

(assert (= (and b!702199 res!466192) b!702216))

(assert (= (and b!702216 res!466189) b!702209))

(assert (= (and b!702209 res!466179) b!702202))

(assert (= (and b!702202 res!466197) b!702195))

(assert (= (and b!702195 res!466185) b!702215))

(assert (= (and b!702215 res!466183) b!702193))

(assert (= (and b!702193 res!466200) b!702208))

(assert (= (and b!702208 res!466177) b!702211))

(assert (= (and b!702211 res!466193) b!702200))

(assert (= (and b!702200 res!466188) b!702212))

(assert (= (and b!702212 res!466194) b!702206))

(assert (= (and b!702206 res!466182) b!702192))

(assert (= (and b!702192 res!466190) b!702207))

(assert (= (and b!702207 res!466184) b!702210))

(assert (= (and b!702210 res!466178) b!702217))

(assert (= (and b!702217 res!466195) b!702213))

(assert (= (and b!702213 res!466181) b!702197))

(assert (= (and b!702197 res!466175) b!702198))

(assert (= (and b!702198 res!466196) b!702203))

(assert (= (and b!702203 res!466180) b!702190))

(assert (= (and b!702190 res!466191) b!702218))

(assert (= (and b!702218 res!466186) b!702196))

(assert (= (and b!702196 res!466187) b!702205))

(assert (= (and b!702205 res!466202) b!702201))

(assert (= (and b!702201 res!466198) b!702194))

(assert (= (and b!702194 res!466176) b!702214))

(assert (= (and b!702214 res!466201) b!702204))

(assert (= (and b!702204 res!466174) b!702191))

(declare-fun m!661383 () Bool)

(assert (=> b!702192 m!661383))

(declare-fun m!661385 () Bool)

(assert (=> b!702195 m!661385))

(declare-fun m!661387 () Bool)

(assert (=> b!702194 m!661387))

(declare-fun m!661389 () Bool)

(assert (=> b!702190 m!661389))

(declare-fun m!661391 () Bool)

(assert (=> b!702193 m!661391))

(declare-fun m!661393 () Bool)

(assert (=> b!702209 m!661393))

(declare-fun m!661395 () Bool)

(assert (=> b!702213 m!661395))

(declare-fun m!661397 () Bool)

(assert (=> b!702218 m!661397))

(declare-fun m!661399 () Bool)

(assert (=> b!702196 m!661399))

(declare-fun m!661401 () Bool)

(assert (=> b!702215 m!661401))

(declare-fun m!661403 () Bool)

(assert (=> b!702206 m!661403))

(declare-fun m!661405 () Bool)

(assert (=> b!702212 m!661405))

(declare-fun m!661407 () Bool)

(assert (=> b!702214 m!661407))

(declare-fun m!661409 () Bool)

(assert (=> b!702204 m!661409))

(declare-fun m!661411 () Bool)

(assert (=> b!702203 m!661411))

(declare-fun m!661413 () Bool)

(assert (=> b!702200 m!661413))

(declare-fun m!661415 () Bool)

(assert (=> b!702211 m!661415))

(declare-fun m!661417 () Bool)

(assert (=> b!702216 m!661417))

(declare-fun m!661419 () Bool)

(assert (=> start!62478 m!661419))

(declare-fun m!661421 () Bool)

(assert (=> b!702197 m!661421))

(declare-fun m!661423 () Bool)

(assert (=> b!702191 m!661423))

(declare-fun m!661425 () Bool)

(assert (=> b!702191 m!661425))

(declare-fun m!661427 () Bool)

(assert (=> b!702210 m!661427))

(assert (=> b!702210 m!661427))

(declare-fun m!661429 () Bool)

(assert (=> b!702210 m!661429))

(declare-fun m!661431 () Bool)

(assert (=> b!702201 m!661431))

(declare-fun m!661433 () Bool)

(assert (=> b!702199 m!661433))

(declare-fun m!661435 () Bool)

(assert (=> b!702205 m!661435))

(declare-fun m!661437 () Bool)

(assert (=> b!702202 m!661437))

(declare-fun m!661439 () Bool)

(assert (=> b!702208 m!661439))

(declare-fun m!661441 () Bool)

(assert (=> b!702198 m!661441))

(assert (=> b!702217 m!661427))

(assert (=> b!702217 m!661427))

(declare-fun m!661443 () Bool)

(assert (=> b!702217 m!661443))

(assert (=> b!702217 m!661427))

(declare-fun m!661445 () Bool)

(assert (=> b!702217 m!661445))

(push 1)

