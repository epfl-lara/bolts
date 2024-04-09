; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31990 () Bool)

(assert start!31990)

(declare-fun b!319220 () Bool)

(declare-fun res!173760 () Bool)

(declare-fun e!198283 () Bool)

(assert (=> b!319220 (=> (not res!173760) (not e!198283))))

(declare-datatypes ((array!16293 0))(
  ( (array!16294 (arr!7707 (Array (_ BitVec 32) (_ BitVec 64))) (size!8059 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16293)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16293 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319220 (= res!173760 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319219 () Bool)

(declare-fun res!173762 () Bool)

(assert (=> b!319219 (=> (not res!173762) (not e!198283))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319219 (= res!173762 (validKeyInArray!0 k!2497))))

(declare-fun b!319221 () Bool)

(assert (=> b!319221 (= e!198283 false)))

(declare-datatypes ((SeekEntryResult!2849 0))(
  ( (MissingZero!2849 (index!13572 (_ BitVec 32))) (Found!2849 (index!13573 (_ BitVec 32))) (Intermediate!2849 (undefined!3661 Bool) (index!13574 (_ BitVec 32)) (x!31814 (_ BitVec 32))) (Undefined!2849) (MissingVacant!2849 (index!13575 (_ BitVec 32))) )
))
(declare-fun lt!155756 () SeekEntryResult!2849)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16293 (_ BitVec 32)) SeekEntryResult!2849)

(assert (=> b!319221 (= lt!155756 (seekEntryOrOpen!0 k!2497 a!3305 mask!3777))))

(declare-fun b!319218 () Bool)

(declare-fun res!173761 () Bool)

(assert (=> b!319218 (=> (not res!173761) (not e!198283))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319218 (= res!173761 (and (= (size!8059 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8059 a!3305))))))

(declare-fun res!173763 () Bool)

(assert (=> start!31990 (=> (not res!173763) (not e!198283))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31990 (= res!173763 (validMask!0 mask!3777))))

(assert (=> start!31990 e!198283))

(assert (=> start!31990 true))

(declare-fun array_inv!5661 (array!16293) Bool)

(assert (=> start!31990 (array_inv!5661 a!3305)))

(assert (= (and start!31990 res!173763) b!319218))

(assert (= (and b!319218 res!173761) b!319219))

(assert (= (and b!319219 res!173762) b!319220))

(assert (= (and b!319220 res!173760) b!319221))

(declare-fun m!327867 () Bool)

(assert (=> b!319220 m!327867))

(declare-fun m!327869 () Bool)

(assert (=> b!319219 m!327869))

(declare-fun m!327871 () Bool)

(assert (=> b!319221 m!327871))

(declare-fun m!327873 () Bool)

(assert (=> start!31990 m!327873))

(declare-fun m!327875 () Bool)

(assert (=> start!31990 m!327875))

(push 1)

(assert (not b!319221))

(assert (not b!319219))

(assert (not start!31990))

(assert (not b!319220))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

