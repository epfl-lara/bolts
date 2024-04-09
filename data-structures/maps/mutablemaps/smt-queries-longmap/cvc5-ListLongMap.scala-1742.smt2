; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31980 () Bool)

(assert start!31980)

(declare-fun res!173702 () Bool)

(declare-fun e!198253 () Bool)

(assert (=> start!31980 (=> (not res!173702) (not e!198253))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31980 (= res!173702 (validMask!0 mask!3777))))

(assert (=> start!31980 e!198253))

(assert (=> start!31980 true))

(declare-datatypes ((array!16283 0))(
  ( (array!16284 (arr!7702 (Array (_ BitVec 32) (_ BitVec 64))) (size!8054 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16283)

(declare-fun array_inv!5656 (array!16283) Bool)

(assert (=> start!31980 (array_inv!5656 a!3305)))

(declare-fun b!319159 () Bool)

(declare-fun res!173701 () Bool)

(assert (=> b!319159 (=> (not res!173701) (not e!198253))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319159 (= res!173701 (validKeyInArray!0 k!2497))))

(declare-fun b!319161 () Bool)

(assert (=> b!319161 (= e!198253 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-fun b!319158 () Bool)

(declare-fun res!173700 () Bool)

(assert (=> b!319158 (=> (not res!173700) (not e!198253))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319158 (= res!173700 (and (= (size!8054 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8054 a!3305))))))

(declare-fun b!319160 () Bool)

(declare-fun res!173703 () Bool)

(assert (=> b!319160 (=> (not res!173703) (not e!198253))))

(declare-fun arrayContainsKey!0 (array!16283 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319160 (= res!173703 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!31980 res!173702) b!319158))

(assert (= (and b!319158 res!173700) b!319159))

(assert (= (and b!319159 res!173701) b!319160))

(assert (= (and b!319160 res!173703) b!319161))

(declare-fun m!327823 () Bool)

(assert (=> start!31980 m!327823))

(declare-fun m!327825 () Bool)

(assert (=> start!31980 m!327825))

(declare-fun m!327827 () Bool)

(assert (=> b!319159 m!327827))

(declare-fun m!327829 () Bool)

(assert (=> b!319160 m!327829))

(push 1)

(assert (not start!31980))

(assert (not b!319160))

(assert (not b!319159))

(check-sat)

