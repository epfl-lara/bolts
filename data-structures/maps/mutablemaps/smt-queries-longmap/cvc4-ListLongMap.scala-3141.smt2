; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44282 () Bool)

(assert start!44282)

(declare-fun b!486656 () Bool)

(declare-fun res!290198 () Bool)

(declare-fun e!286443 () Bool)

(assert (=> b!486656 (=> (not res!290198) (not e!286443))))

(declare-datatypes ((array!31493 0))(
  ( (array!31494 (arr!15137 (Array (_ BitVec 32) (_ BitVec 64))) (size!15501 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31493)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31493 (_ BitVec 32)) Bool)

(assert (=> b!486656 (= res!290198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486657 () Bool)

(declare-fun res!290193 () Bool)

(declare-fun e!286444 () Bool)

(assert (=> b!486657 (=> (not res!290193) (not e!286444))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486657 (= res!290193 (validKeyInArray!0 (select (arr!15137 a!3235) j!176)))))

(declare-fun b!486658 () Bool)

(declare-fun res!290192 () Bool)

(assert (=> b!486658 (=> (not res!290192) (not e!286444))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!486658 (= res!290192 (validKeyInArray!0 k!2280))))

(declare-fun b!486659 () Bool)

(declare-fun res!290195 () Bool)

(assert (=> b!486659 (=> (not res!290195) (not e!286444))))

(declare-fun arrayContainsKey!0 (array!31493 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486659 (= res!290195 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486660 () Bool)

(assert (=> b!486660 (= e!286444 e!286443)))

(declare-fun res!290194 () Bool)

(assert (=> b!486660 (=> (not res!290194) (not e!286443))))

(declare-datatypes ((SeekEntryResult!3611 0))(
  ( (MissingZero!3611 (index!16623 (_ BitVec 32))) (Found!3611 (index!16624 (_ BitVec 32))) (Intermediate!3611 (undefined!4423 Bool) (index!16625 (_ BitVec 32)) (x!45778 (_ BitVec 32))) (Undefined!3611) (MissingVacant!3611 (index!16626 (_ BitVec 32))) )
))
(declare-fun lt!219836 () SeekEntryResult!3611)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486660 (= res!290194 (or (= lt!219836 (MissingZero!3611 i!1204)) (= lt!219836 (MissingVacant!3611 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31493 (_ BitVec 32)) SeekEntryResult!3611)

(assert (=> b!486660 (= lt!219836 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!486661 () Bool)

(declare-fun res!290196 () Bool)

(assert (=> b!486661 (=> (not res!290196) (not e!286444))))

(assert (=> b!486661 (= res!290196 (and (= (size!15501 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15501 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15501 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!290197 () Bool)

(assert (=> start!44282 (=> (not res!290197) (not e!286444))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44282 (= res!290197 (validMask!0 mask!3524))))

(assert (=> start!44282 e!286444))

(assert (=> start!44282 true))

(declare-fun array_inv!10911 (array!31493) Bool)

(assert (=> start!44282 (array_inv!10911 a!3235)))

(declare-fun b!486662 () Bool)

(assert (=> b!486662 (= e!286443 false)))

(declare-fun lt!219835 () Bool)

(declare-datatypes ((List!9348 0))(
  ( (Nil!9345) (Cons!9344 (h!10200 (_ BitVec 64)) (t!15584 List!9348)) )
))
(declare-fun arrayNoDuplicates!0 (array!31493 (_ BitVec 32) List!9348) Bool)

(assert (=> b!486662 (= lt!219835 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9345))))

(assert (= (and start!44282 res!290197) b!486661))

(assert (= (and b!486661 res!290196) b!486657))

(assert (= (and b!486657 res!290193) b!486658))

(assert (= (and b!486658 res!290192) b!486659))

(assert (= (and b!486659 res!290195) b!486660))

(assert (= (and b!486660 res!290194) b!486656))

(assert (= (and b!486656 res!290198) b!486662))

(declare-fun m!466573 () Bool)

(assert (=> b!486656 m!466573))

(declare-fun m!466575 () Bool)

(assert (=> b!486659 m!466575))

(declare-fun m!466577 () Bool)

(assert (=> b!486660 m!466577))

(declare-fun m!466579 () Bool)

(assert (=> b!486657 m!466579))

(assert (=> b!486657 m!466579))

(declare-fun m!466581 () Bool)

(assert (=> b!486657 m!466581))

(declare-fun m!466583 () Bool)

(assert (=> b!486662 m!466583))

(declare-fun m!466585 () Bool)

(assert (=> start!44282 m!466585))

(declare-fun m!466587 () Bool)

(assert (=> start!44282 m!466587))

(declare-fun m!466589 () Bool)

(assert (=> b!486658 m!466589))

(push 1)

(assert (not b!486662))

(assert (not start!44282))

(assert (not b!486659))

(assert (not b!486657))

(assert (not b!486656))

