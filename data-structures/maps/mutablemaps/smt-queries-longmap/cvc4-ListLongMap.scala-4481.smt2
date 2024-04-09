; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62374 () Bool)

(assert start!62374)

(declare-fun b!698229 () Bool)

(declare-fun res!462216 () Bool)

(declare-fun e!396940 () Bool)

(assert (=> b!698229 (=> (not res!462216) (not e!396940))))

(declare-datatypes ((array!40009 0))(
  ( (array!40010 (arr!19157 (Array (_ BitVec 32) (_ BitVec 64))) (size!19540 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40009)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40009 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!698229 (= res!462216 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!698230 () Bool)

(declare-fun res!462214 () Bool)

(assert (=> b!698230 (=> (not res!462214) (not e!396940))))

(declare-datatypes ((List!13251 0))(
  ( (Nil!13248) (Cons!13247 (h!14292 (_ BitVec 64)) (t!19541 List!13251)) )
))
(declare-fun acc!652 () List!13251)

(declare-fun contains!3794 (List!13251 (_ BitVec 64)) Bool)

(assert (=> b!698230 (= res!462214 (not (contains!3794 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698231 () Bool)

(declare-fun res!462217 () Bool)

(assert (=> b!698231 (=> (not res!462217) (not e!396940))))

(assert (=> b!698231 (= res!462217 (not (contains!3794 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698232 () Bool)

(declare-fun res!462215 () Bool)

(assert (=> b!698232 (=> (not res!462215) (not e!396940))))

(declare-fun newAcc!49 () List!13251)

(declare-fun noDuplicate!1041 (List!13251) Bool)

(assert (=> b!698232 (= res!462215 (noDuplicate!1041 newAcc!49))))

(declare-fun b!698234 () Bool)

(declare-fun res!462213 () Bool)

(assert (=> b!698234 (=> (not res!462213) (not e!396940))))

(assert (=> b!698234 (= res!462213 (noDuplicate!1041 acc!652))))

(declare-fun b!698233 () Bool)

(assert (=> b!698233 (= e!396940 false)))

(declare-fun lt!317208 () Bool)

(assert (=> b!698233 (= lt!317208 (contains!3794 acc!652 k!2824))))

(declare-fun res!462218 () Bool)

(assert (=> start!62374 (=> (not res!462218) (not e!396940))))

(assert (=> start!62374 (= res!462218 (and (bvslt (size!19540 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19540 a!3591))))))

(assert (=> start!62374 e!396940))

(assert (=> start!62374 true))

(declare-fun array_inv!14931 (array!40009) Bool)

(assert (=> start!62374 (array_inv!14931 a!3591)))

(assert (= (and start!62374 res!462218) b!698234))

(assert (= (and b!698234 res!462213) b!698232))

(assert (= (and b!698232 res!462215) b!698230))

(assert (= (and b!698230 res!462214) b!698231))

(assert (= (and b!698231 res!462217) b!698229))

(assert (= (and b!698229 res!462216) b!698233))

(declare-fun m!658573 () Bool)

(assert (=> b!698233 m!658573))

(declare-fun m!658575 () Bool)

(assert (=> b!698234 m!658575))

(declare-fun m!658577 () Bool)

(assert (=> b!698230 m!658577))

(declare-fun m!658579 () Bool)

(assert (=> b!698229 m!658579))

(declare-fun m!658581 () Bool)

(assert (=> b!698232 m!658581))

(declare-fun m!658583 () Bool)

(assert (=> b!698231 m!658583))

(declare-fun m!658585 () Bool)

(assert (=> start!62374 m!658585))

(push 1)

(assert (not b!698229))

(assert (not b!698230))

(assert (not b!698234))

(assert (not b!698231))

(assert (not start!62374))

(assert (not b!698232))

(assert (not b!698233))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

