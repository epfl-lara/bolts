; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44068 () Bool)

(assert start!44068)

(declare-fun b!485443 () Bool)

(declare-fun res!289199 () Bool)

(declare-fun e!285831 () Bool)

(assert (=> b!485443 (=> (not res!289199) (not e!285831))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31396 0))(
  ( (array!31397 (arr!15093 (Array (_ BitVec 32) (_ BitVec 64))) (size!15457 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31396)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485443 (= res!289199 (and (= (size!15457 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15457 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15457 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485444 () Bool)

(declare-fun res!289195 () Bool)

(assert (=> b!485444 (=> (not res!289195) (not e!285831))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485444 (= res!289195 (validKeyInArray!0 k!2280))))

(declare-fun res!289198 () Bool)

(assert (=> start!44068 (=> (not res!289198) (not e!285831))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44068 (= res!289198 (validMask!0 mask!3524))))

(assert (=> start!44068 e!285831))

(assert (=> start!44068 true))

(declare-fun array_inv!10867 (array!31396) Bool)

(assert (=> start!44068 (array_inv!10867 a!3235)))

(declare-fun b!485445 () Bool)

(declare-fun res!289196 () Bool)

(assert (=> b!485445 (=> (not res!289196) (not e!285831))))

(assert (=> b!485445 (= res!289196 (validKeyInArray!0 (select (arr!15093 a!3235) j!176)))))

(declare-fun b!485446 () Bool)

(assert (=> b!485446 (= e!285831 false)))

(declare-datatypes ((SeekEntryResult!3567 0))(
  ( (MissingZero!3567 (index!16447 (_ BitVec 32))) (Found!3567 (index!16448 (_ BitVec 32))) (Intermediate!3567 (undefined!4379 Bool) (index!16449 (_ BitVec 32)) (x!45622 (_ BitVec 32))) (Undefined!3567) (MissingVacant!3567 (index!16450 (_ BitVec 32))) )
))
(declare-fun lt!219512 () SeekEntryResult!3567)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31396 (_ BitVec 32)) SeekEntryResult!3567)

(assert (=> b!485446 (= lt!219512 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!485447 () Bool)

(declare-fun res!289197 () Bool)

(assert (=> b!485447 (=> (not res!289197) (not e!285831))))

(declare-fun arrayContainsKey!0 (array!31396 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485447 (= res!289197 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44068 res!289198) b!485443))

(assert (= (and b!485443 res!289199) b!485445))

(assert (= (and b!485445 res!289196) b!485444))

(assert (= (and b!485444 res!289195) b!485447))

(assert (= (and b!485447 res!289197) b!485446))

(declare-fun m!465571 () Bool)

(assert (=> start!44068 m!465571))

(declare-fun m!465573 () Bool)

(assert (=> start!44068 m!465573))

(declare-fun m!465575 () Bool)

(assert (=> b!485444 m!465575))

(declare-fun m!465577 () Bool)

(assert (=> b!485445 m!465577))

(assert (=> b!485445 m!465577))

(declare-fun m!465579 () Bool)

(assert (=> b!485445 m!465579))

(declare-fun m!465581 () Bool)

(assert (=> b!485447 m!465581))

(declare-fun m!465583 () Bool)

(assert (=> b!485446 m!465583))

(push 1)

(assert (not b!485444))

(assert (not b!485445))

(assert (not start!44068))

(assert (not b!485447))

(assert (not b!485446))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

