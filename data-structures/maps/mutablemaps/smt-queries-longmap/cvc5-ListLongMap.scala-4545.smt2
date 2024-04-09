; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63364 () Bool)

(assert start!63364)

(declare-fun b!713207 () Bool)

(declare-fun res!476462 () Bool)

(declare-fun e!401147 () Bool)

(assert (=> b!713207 (=> (not res!476462) (not e!401147))))

(declare-datatypes ((List!13441 0))(
  ( (Nil!13438) (Cons!13437 (h!14482 (_ BitVec 64)) (t!19764 List!13441)) )
))
(declare-fun newAcc!49 () List!13441)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3984 (List!13441 (_ BitVec 64)) Bool)

(assert (=> b!713207 (= res!476462 (contains!3984 newAcc!49 k!2824))))

(declare-fun b!713209 () Bool)

(declare-fun res!476459 () Bool)

(assert (=> b!713209 (=> (not res!476459) (not e!401147))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713209 (= res!476459 (validKeyInArray!0 k!2824))))

(declare-fun b!713210 () Bool)

(declare-fun res!476464 () Bool)

(assert (=> b!713210 (=> (not res!476464) (not e!401147))))

(declare-fun acc!652 () List!13441)

(declare-fun noDuplicate!1231 (List!13441) Bool)

(assert (=> b!713210 (= res!476464 (noDuplicate!1231 acc!652))))

(declare-fun b!713211 () Bool)

(declare-fun res!476463 () Bool)

(assert (=> b!713211 (=> (not res!476463) (not e!401147))))

(assert (=> b!713211 (= res!476463 (not (contains!3984 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713212 () Bool)

(declare-fun res!476466 () Bool)

(assert (=> b!713212 (=> (not res!476466) (not e!401147))))

(declare-fun -!393 (List!13441 (_ BitVec 64)) List!13441)

(assert (=> b!713212 (= res!476466 (= (-!393 newAcc!49 k!2824) acc!652))))

(declare-fun b!713213 () Bool)

(declare-fun res!476467 () Bool)

(assert (=> b!713213 (=> (not res!476467) (not e!401147))))

(declare-datatypes ((array!40422 0))(
  ( (array!40423 (arr!19347 (Array (_ BitVec 32) (_ BitVec 64))) (size!19759 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40422)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40422 (_ BitVec 32) List!13441) Bool)

(assert (=> b!713213 (= res!476467 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!713214 () Bool)

(declare-fun res!476471 () Bool)

(assert (=> b!713214 (=> (not res!476471) (not e!401147))))

(assert (=> b!713214 (= res!476471 (not (validKeyInArray!0 (select (arr!19347 a!3591) from!2969))))))

(declare-fun b!713215 () Bool)

(declare-fun res!476469 () Bool)

(assert (=> b!713215 (=> (not res!476469) (not e!401147))))

(assert (=> b!713215 (= res!476469 (not (contains!3984 acc!652 k!2824)))))

(declare-fun b!713216 () Bool)

(declare-fun res!476465 () Bool)

(assert (=> b!713216 (=> (not res!476465) (not e!401147))))

(assert (=> b!713216 (= res!476465 (not (contains!3984 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713217 () Bool)

(declare-fun res!476458 () Bool)

(assert (=> b!713217 (=> (not res!476458) (not e!401147))))

(assert (=> b!713217 (= res!476458 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19759 a!3591)))))

(declare-fun b!713218 () Bool)

(assert (=> b!713218 (= e!401147 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun res!476470 () Bool)

(assert (=> start!63364 (=> (not res!476470) (not e!401147))))

(assert (=> start!63364 (= res!476470 (and (bvslt (size!19759 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19759 a!3591))))))

(assert (=> start!63364 e!401147))

(assert (=> start!63364 true))

(declare-fun array_inv!15121 (array!40422) Bool)

(assert (=> start!63364 (array_inv!15121 a!3591)))

(declare-fun b!713208 () Bool)

(declare-fun res!476472 () Bool)

(assert (=> b!713208 (=> (not res!476472) (not e!401147))))

(assert (=> b!713208 (= res!476472 (not (contains!3984 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713219 () Bool)

(declare-fun res!476460 () Bool)

(assert (=> b!713219 (=> (not res!476460) (not e!401147))))

(declare-fun arrayContainsKey!0 (array!40422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713219 (= res!476460 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!713220 () Bool)

(declare-fun res!476457 () Bool)

(assert (=> b!713220 (=> (not res!476457) (not e!401147))))

(assert (=> b!713220 (= res!476457 (noDuplicate!1231 newAcc!49))))

(declare-fun b!713221 () Bool)

(declare-fun res!476461 () Bool)

(assert (=> b!713221 (=> (not res!476461) (not e!401147))))

(assert (=> b!713221 (= res!476461 (not (contains!3984 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713222 () Bool)

(declare-fun res!476468 () Bool)

(assert (=> b!713222 (=> (not res!476468) (not e!401147))))

(declare-fun subseq!428 (List!13441 List!13441) Bool)

(assert (=> b!713222 (= res!476468 (subseq!428 acc!652 newAcc!49))))

(assert (= (and start!63364 res!476470) b!713210))

(assert (= (and b!713210 res!476464) b!713220))

(assert (= (and b!713220 res!476457) b!713208))

(assert (= (and b!713208 res!476472) b!713211))

(assert (= (and b!713211 res!476463) b!713219))

(assert (= (and b!713219 res!476460) b!713215))

(assert (= (and b!713215 res!476469) b!713209))

(assert (= (and b!713209 res!476459) b!713213))

(assert (= (and b!713213 res!476467) b!713222))

(assert (= (and b!713222 res!476468) b!713207))

(assert (= (and b!713207 res!476462) b!713212))

(assert (= (and b!713212 res!476466) b!713221))

(assert (= (and b!713221 res!476461) b!713216))

(assert (= (and b!713216 res!476465) b!713217))

(assert (= (and b!713217 res!476458) b!713214))

(assert (= (and b!713214 res!476471) b!713218))

(declare-fun m!670113 () Bool)

(assert (=> b!713209 m!670113))

(declare-fun m!670115 () Bool)

(assert (=> b!713213 m!670115))

(declare-fun m!670117 () Bool)

(assert (=> b!713214 m!670117))

(assert (=> b!713214 m!670117))

(declare-fun m!670119 () Bool)

(assert (=> b!713214 m!670119))

(declare-fun m!670121 () Bool)

(assert (=> b!713212 m!670121))

(declare-fun m!670123 () Bool)

(assert (=> b!713207 m!670123))

(declare-fun m!670125 () Bool)

(assert (=> b!713219 m!670125))

(declare-fun m!670127 () Bool)

(assert (=> b!713222 m!670127))

(declare-fun m!670129 () Bool)

(assert (=> b!713211 m!670129))

(declare-fun m!670131 () Bool)

(assert (=> b!713208 m!670131))

(declare-fun m!670133 () Bool)

(assert (=> b!713210 m!670133))

(declare-fun m!670135 () Bool)

(assert (=> b!713221 m!670135))

(declare-fun m!670137 () Bool)

(assert (=> b!713220 m!670137))

(declare-fun m!670139 () Bool)

(assert (=> b!713215 m!670139))

(declare-fun m!670141 () Bool)

(assert (=> b!713216 m!670141))

(declare-fun m!670143 () Bool)

(assert (=> start!63364 m!670143))

(push 1)

