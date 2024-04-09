; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31986 () Bool)

(assert start!31986)

(declare-fun b!319197 () Bool)

(declare-fun e!198270 () Bool)

(assert (=> b!319197 (= e!198270 false)))

(declare-datatypes ((array!16289 0))(
  ( (array!16290 (arr!7705 (Array (_ BitVec 32) (_ BitVec 64))) (size!8057 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16289)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2847 0))(
  ( (MissingZero!2847 (index!13564 (_ BitVec 32))) (Found!2847 (index!13565 (_ BitVec 32))) (Intermediate!2847 (undefined!3659 Bool) (index!13566 (_ BitVec 32)) (x!31812 (_ BitVec 32))) (Undefined!2847) (MissingVacant!2847 (index!13567 (_ BitVec 32))) )
))
(declare-fun lt!155750 () SeekEntryResult!2847)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16289 (_ BitVec 32)) SeekEntryResult!2847)

(assert (=> b!319197 (= lt!155750 (seekEntryOrOpen!0 k!2497 a!3305 mask!3777))))

(declare-fun b!319194 () Bool)

(declare-fun res!173736 () Bool)

(assert (=> b!319194 (=> (not res!173736) (not e!198270))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319194 (= res!173736 (and (= (size!8057 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8057 a!3305))))))

(declare-fun res!173739 () Bool)

(assert (=> start!31986 (=> (not res!173739) (not e!198270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31986 (= res!173739 (validMask!0 mask!3777))))

(assert (=> start!31986 e!198270))

(assert (=> start!31986 true))

(declare-fun array_inv!5659 (array!16289) Bool)

(assert (=> start!31986 (array_inv!5659 a!3305)))

(declare-fun b!319196 () Bool)

(declare-fun res!173738 () Bool)

(assert (=> b!319196 (=> (not res!173738) (not e!198270))))

(declare-fun arrayContainsKey!0 (array!16289 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319196 (= res!173738 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319195 () Bool)

(declare-fun res!173737 () Bool)

(assert (=> b!319195 (=> (not res!173737) (not e!198270))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319195 (= res!173737 (validKeyInArray!0 k!2497))))

(assert (= (and start!31986 res!173739) b!319194))

(assert (= (and b!319194 res!173736) b!319195))

(assert (= (and b!319195 res!173737) b!319196))

(assert (= (and b!319196 res!173738) b!319197))

(declare-fun m!327847 () Bool)

(assert (=> b!319197 m!327847))

(declare-fun m!327849 () Bool)

(assert (=> start!31986 m!327849))

(declare-fun m!327851 () Bool)

(assert (=> start!31986 m!327851))

(declare-fun m!327853 () Bool)

(assert (=> b!319196 m!327853))

(declare-fun m!327855 () Bool)

(assert (=> b!319195 m!327855))

(push 1)

(assert (not b!319197))

(assert (not b!319195))

(assert (not start!31986))

(assert (not b!319196))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

