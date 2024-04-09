; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59852 () Bool)

(assert start!59852)

(declare-fun b!661082 () Bool)

(declare-fun res!429323 () Bool)

(declare-fun e!379777 () Bool)

(assert (=> b!661082 (=> (not res!429323) (not e!379777))))

(declare-datatypes ((array!38855 0))(
  ( (array!38856 (arr!18616 (Array (_ BitVec 32) (_ BitVec 64))) (size!18980 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38855)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38855 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661082 (= res!429323 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661083 () Bool)

(declare-fun res!429321 () Bool)

(assert (=> b!661083 (=> (not res!429321) (not e!379777))))

(declare-datatypes ((List!12710 0))(
  ( (Nil!12707) (Cons!12706 (h!13751 (_ BitVec 64)) (t!18946 List!12710)) )
))
(declare-fun acc!681 () List!12710)

(declare-fun noDuplicate!500 (List!12710) Bool)

(assert (=> b!661083 (= res!429321 (noDuplicate!500 acc!681))))

(declare-fun b!661084 () Bool)

(declare-fun e!379775 () Bool)

(declare-fun contains!3253 (List!12710 (_ BitVec 64)) Bool)

(assert (=> b!661084 (= e!379775 (contains!3253 acc!681 k0!2843))))

(declare-fun b!661085 () Bool)

(declare-fun res!429330 () Bool)

(assert (=> b!661085 (=> (not res!429330) (not e!379777))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!38855 (_ BitVec 32) List!12710) Bool)

(assert (=> b!661085 (= res!429330 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!661086 () Bool)

(declare-fun res!429326 () Bool)

(assert (=> b!661086 (=> (not res!429326) (not e!379777))))

(assert (=> b!661086 (= res!429326 (not (contains!3253 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!429322 () Bool)

(assert (=> start!59852 (=> (not res!429322) (not e!379777))))

(assert (=> start!59852 (= res!429322 (and (bvslt (size!18980 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18980 a!3626))))))

(assert (=> start!59852 e!379777))

(assert (=> start!59852 true))

(declare-fun array_inv!14390 (array!38855) Bool)

(assert (=> start!59852 (array_inv!14390 a!3626)))

(declare-fun b!661081 () Bool)

(declare-fun res!429325 () Bool)

(assert (=> b!661081 (=> (not res!429325) (not e!379777))))

(assert (=> b!661081 (= res!429325 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12707))))

(declare-fun b!661087 () Bool)

(declare-fun res!429331 () Bool)

(assert (=> b!661087 (=> (not res!429331) (not e!379777))))

(declare-fun e!379776 () Bool)

(assert (=> b!661087 (= res!429331 e!379776)))

(declare-fun res!429329 () Bool)

(assert (=> b!661087 (=> res!429329 e!379776)))

(assert (=> b!661087 (= res!429329 e!379775)))

(declare-fun res!429328 () Bool)

(assert (=> b!661087 (=> (not res!429328) (not e!379775))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!661087 (= res!429328 (bvsgt from!3004 i!1382))))

(declare-fun b!661088 () Bool)

(declare-fun res!429319 () Bool)

(assert (=> b!661088 (=> (not res!429319) (not e!379777))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661088 (= res!429319 (validKeyInArray!0 k0!2843))))

(declare-fun b!661089 () Bool)

(declare-fun res!429327 () Bool)

(assert (=> b!661089 (=> (not res!429327) (not e!379777))))

(assert (=> b!661089 (= res!429327 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18980 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!661090 () Bool)

(declare-fun e!379773 () Bool)

(assert (=> b!661090 (= e!379776 e!379773)))

(declare-fun res!429324 () Bool)

(assert (=> b!661090 (=> (not res!429324) (not e!379773))))

(assert (=> b!661090 (= res!429324 (bvsle from!3004 i!1382))))

(declare-fun b!661091 () Bool)

(assert (=> b!661091 (= e!379777 (not true))))

(assert (=> b!661091 (arrayContainsKey!0 (array!38856 (store (arr!18616 a!3626) i!1382 k0!2843) (size!18980 a!3626)) k0!2843 from!3004)))

(declare-fun b!661092 () Bool)

(declare-fun res!429332 () Bool)

(assert (=> b!661092 (=> (not res!429332) (not e!379777))))

(assert (=> b!661092 (= res!429332 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18980 a!3626))))))

(declare-fun b!661093 () Bool)

(declare-fun res!429320 () Bool)

(assert (=> b!661093 (=> (not res!429320) (not e!379777))))

(assert (=> b!661093 (= res!429320 (not (contains!3253 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661094 () Bool)

(assert (=> b!661094 (= e!379773 (not (contains!3253 acc!681 k0!2843)))))

(assert (= (and start!59852 res!429322) b!661083))

(assert (= (and b!661083 res!429321) b!661093))

(assert (= (and b!661093 res!429320) b!661086))

(assert (= (and b!661086 res!429326) b!661087))

(assert (= (and b!661087 res!429328) b!661084))

(assert (= (and b!661087 (not res!429329)) b!661090))

(assert (= (and b!661090 res!429324) b!661094))

(assert (= (and b!661087 res!429331) b!661081))

(assert (= (and b!661081 res!429325) b!661085))

(assert (= (and b!661085 res!429330) b!661092))

(assert (= (and b!661092 res!429332) b!661088))

(assert (= (and b!661088 res!429319) b!661082))

(assert (= (and b!661082 res!429323) b!661089))

(assert (= (and b!661089 res!429327) b!661091))

(declare-fun m!633409 () Bool)

(assert (=> b!661088 m!633409))

(declare-fun m!633411 () Bool)

(assert (=> b!661082 m!633411))

(declare-fun m!633413 () Bool)

(assert (=> b!661085 m!633413))

(declare-fun m!633415 () Bool)

(assert (=> b!661091 m!633415))

(declare-fun m!633417 () Bool)

(assert (=> b!661091 m!633417))

(declare-fun m!633419 () Bool)

(assert (=> b!661086 m!633419))

(declare-fun m!633421 () Bool)

(assert (=> b!661093 m!633421))

(declare-fun m!633423 () Bool)

(assert (=> b!661083 m!633423))

(declare-fun m!633425 () Bool)

(assert (=> b!661094 m!633425))

(assert (=> b!661084 m!633425))

(declare-fun m!633427 () Bool)

(assert (=> start!59852 m!633427))

(declare-fun m!633429 () Bool)

(assert (=> b!661081 m!633429))

(check-sat (not b!661085) (not b!661083) (not start!59852) (not b!661088) (not b!661094) (not b!661086) (not b!661082) (not b!661091) (not b!661081) (not b!661093) (not b!661084))
