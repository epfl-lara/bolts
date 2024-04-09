; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63366 () Bool)

(assert start!63366)

(declare-fun b!713255 () Bool)

(declare-fun res!476519 () Bool)

(declare-fun e!401154 () Bool)

(assert (=> b!713255 (=> (not res!476519) (not e!401154))))

(declare-datatypes ((List!13442 0))(
  ( (Nil!13439) (Cons!13438 (h!14483 (_ BitVec 64)) (t!19765 List!13442)) )
))
(declare-fun acc!652 () List!13442)

(declare-fun contains!3985 (List!13442 (_ BitVec 64)) Bool)

(assert (=> b!713255 (= res!476519 (not (contains!3985 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713257 () Bool)

(declare-fun res!476516 () Bool)

(assert (=> b!713257 (=> (not res!476516) (not e!401154))))

(declare-datatypes ((array!40424 0))(
  ( (array!40425 (arr!19348 (Array (_ BitVec 32) (_ BitVec 64))) (size!19760 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40424)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40424 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713257 (= res!476516 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!713258 () Bool)

(declare-fun res!476517 () Bool)

(assert (=> b!713258 (=> (not res!476517) (not e!401154))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713258 (= res!476517 (not (validKeyInArray!0 (select (arr!19348 a!3591) from!2969))))))

(declare-fun b!713259 () Bool)

(declare-fun res!476512 () Bool)

(assert (=> b!713259 (=> (not res!476512) (not e!401154))))

(assert (=> b!713259 (= res!476512 (not (contains!3985 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713260 () Bool)

(declare-fun res!476510 () Bool)

(assert (=> b!713260 (=> (not res!476510) (not e!401154))))

(assert (=> b!713260 (= res!476510 (not (contains!3985 acc!652 k0!2824)))))

(declare-fun b!713261 () Bool)

(declare-fun res!476518 () Bool)

(assert (=> b!713261 (=> (not res!476518) (not e!401154))))

(declare-fun newAcc!49 () List!13442)

(declare-fun subseq!429 (List!13442 List!13442) Bool)

(assert (=> b!713261 (= res!476518 (subseq!429 acc!652 newAcc!49))))

(declare-fun b!713262 () Bool)

(declare-fun res!476515 () Bool)

(assert (=> b!713262 (=> (not res!476515) (not e!401154))))

(assert (=> b!713262 (= res!476515 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19760 a!3591)))))

(declare-fun b!713263 () Bool)

(declare-fun res!476514 () Bool)

(assert (=> b!713263 (=> (not res!476514) (not e!401154))))

(assert (=> b!713263 (= res!476514 (validKeyInArray!0 k0!2824))))

(declare-fun b!713264 () Bool)

(declare-fun res!476506 () Bool)

(assert (=> b!713264 (=> (not res!476506) (not e!401154))))

(declare-fun arrayNoDuplicates!0 (array!40424 (_ BitVec 32) List!13442) Bool)

(assert (=> b!713264 (= res!476506 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!713265 () Bool)

(declare-fun res!476511 () Bool)

(assert (=> b!713265 (=> (not res!476511) (not e!401154))))

(declare-fun -!394 (List!13442 (_ BitVec 64)) List!13442)

(assert (=> b!713265 (= res!476511 (= (-!394 newAcc!49 k0!2824) acc!652))))

(declare-fun b!713266 () Bool)

(declare-fun res!476520 () Bool)

(assert (=> b!713266 (=> (not res!476520) (not e!401154))))

(declare-fun noDuplicate!1232 (List!13442) Bool)

(assert (=> b!713266 (= res!476520 (noDuplicate!1232 newAcc!49))))

(declare-fun res!476509 () Bool)

(assert (=> start!63366 (=> (not res!476509) (not e!401154))))

(assert (=> start!63366 (= res!476509 (and (bvslt (size!19760 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19760 a!3591))))))

(assert (=> start!63366 e!401154))

(assert (=> start!63366 true))

(declare-fun array_inv!15122 (array!40424) Bool)

(assert (=> start!63366 (array_inv!15122 a!3591)))

(declare-fun b!713256 () Bool)

(declare-fun res!476505 () Bool)

(assert (=> b!713256 (=> (not res!476505) (not e!401154))))

(assert (=> b!713256 (= res!476505 (not (contains!3985 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713267 () Bool)

(declare-fun res!476513 () Bool)

(assert (=> b!713267 (=> (not res!476513) (not e!401154))))

(assert (=> b!713267 (= res!476513 (not (contains!3985 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713268 () Bool)

(declare-fun res!476507 () Bool)

(assert (=> b!713268 (=> (not res!476507) (not e!401154))))

(assert (=> b!713268 (= res!476507 (noDuplicate!1232 acc!652))))

(declare-fun b!713269 () Bool)

(declare-fun res!476508 () Bool)

(assert (=> b!713269 (=> (not res!476508) (not e!401154))))

(assert (=> b!713269 (= res!476508 (contains!3985 newAcc!49 k0!2824))))

(declare-fun b!713270 () Bool)

(assert (=> b!713270 (= e!401154 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(assert (= (and start!63366 res!476509) b!713268))

(assert (= (and b!713268 res!476507) b!713266))

(assert (= (and b!713266 res!476520) b!713259))

(assert (= (and b!713259 res!476512) b!713255))

(assert (= (and b!713255 res!476519) b!713257))

(assert (= (and b!713257 res!476516) b!713260))

(assert (= (and b!713260 res!476510) b!713263))

(assert (= (and b!713263 res!476514) b!713264))

(assert (= (and b!713264 res!476506) b!713261))

(assert (= (and b!713261 res!476518) b!713269))

(assert (= (and b!713269 res!476508) b!713265))

(assert (= (and b!713265 res!476511) b!713256))

(assert (= (and b!713256 res!476505) b!713267))

(assert (= (and b!713267 res!476513) b!713262))

(assert (= (and b!713262 res!476515) b!713258))

(assert (= (and b!713258 res!476517) b!713270))

(declare-fun m!670145 () Bool)

(assert (=> b!713256 m!670145))

(declare-fun m!670147 () Bool)

(assert (=> b!713258 m!670147))

(assert (=> b!713258 m!670147))

(declare-fun m!670149 () Bool)

(assert (=> b!713258 m!670149))

(declare-fun m!670151 () Bool)

(assert (=> b!713263 m!670151))

(declare-fun m!670153 () Bool)

(assert (=> b!713255 m!670153))

(declare-fun m!670155 () Bool)

(assert (=> b!713261 m!670155))

(declare-fun m!670157 () Bool)

(assert (=> b!713265 m!670157))

(declare-fun m!670159 () Bool)

(assert (=> b!713267 m!670159))

(declare-fun m!670161 () Bool)

(assert (=> b!713257 m!670161))

(declare-fun m!670163 () Bool)

(assert (=> b!713269 m!670163))

(declare-fun m!670165 () Bool)

(assert (=> b!713264 m!670165))

(declare-fun m!670167 () Bool)

(assert (=> b!713259 m!670167))

(declare-fun m!670169 () Bool)

(assert (=> b!713266 m!670169))

(declare-fun m!670171 () Bool)

(assert (=> b!713268 m!670171))

(declare-fun m!670173 () Bool)

(assert (=> start!63366 m!670173))

(declare-fun m!670175 () Bool)

(assert (=> b!713260 m!670175))

(check-sat (not b!713259) (not b!713257) (not b!713263) (not b!713265) (not b!713264) (not start!63366) (not b!713260) (not b!713261) (not b!713268) (not b!713267) (not b!713266) (not b!713256) (not b!713269) (not b!713255) (not b!713258))
(check-sat)
