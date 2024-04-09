; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48394 () Bool)

(assert start!48394)

(declare-fun b!531389 () Bool)

(declare-fun res!327030 () Bool)

(declare-fun e!309536 () Bool)

(assert (=> b!531389 (=> (not res!327030) (not e!309536))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33658 0))(
  ( (array!33659 (arr!16167 (Array (_ BitVec 32) (_ BitVec 64))) (size!16531 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33658)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531389 (= res!327030 (and (= (size!16531 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16531 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16531 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531390 () Bool)

(declare-fun res!327035 () Bool)

(assert (=> b!531390 (=> (not res!327035) (not e!309536))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531390 (= res!327035 (validKeyInArray!0 k!1998))))

(declare-fun b!531391 () Bool)

(declare-fun res!327029 () Bool)

(assert (=> b!531391 (=> (not res!327029) (not e!309536))))

(declare-fun arrayContainsKey!0 (array!33658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531391 (= res!327029 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531393 () Bool)

(declare-fun res!327031 () Bool)

(declare-fun e!309538 () Bool)

(assert (=> b!531393 (=> (not res!327031) (not e!309538))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33658 (_ BitVec 32)) Bool)

(assert (=> b!531393 (= res!327031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531394 () Bool)

(assert (=> b!531394 (= e!309536 e!309538)))

(declare-fun res!327032 () Bool)

(assert (=> b!531394 (=> (not res!327032) (not e!309538))))

(declare-datatypes ((SeekEntryResult!4632 0))(
  ( (MissingZero!4632 (index!20752 (_ BitVec 32))) (Found!4632 (index!20753 (_ BitVec 32))) (Intermediate!4632 (undefined!5444 Bool) (index!20754 (_ BitVec 32)) (x!49761 (_ BitVec 32))) (Undefined!4632) (MissingVacant!4632 (index!20755 (_ BitVec 32))) )
))
(declare-fun lt!244996 () SeekEntryResult!4632)

(assert (=> b!531394 (= res!327032 (or (= lt!244996 (MissingZero!4632 i!1153)) (= lt!244996 (MissingVacant!4632 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33658 (_ BitVec 32)) SeekEntryResult!4632)

(assert (=> b!531394 (= lt!244996 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!531395 () Bool)

(declare-fun res!327034 () Bool)

(assert (=> b!531395 (=> (not res!327034) (not e!309536))))

(assert (=> b!531395 (= res!327034 (validKeyInArray!0 (select (arr!16167 a!3154) j!147)))))

(declare-fun res!327033 () Bool)

(assert (=> start!48394 (=> (not res!327033) (not e!309536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48394 (= res!327033 (validMask!0 mask!3216))))

(assert (=> start!48394 e!309536))

(assert (=> start!48394 true))

(declare-fun array_inv!11941 (array!33658) Bool)

(assert (=> start!48394 (array_inv!11941 a!3154)))

(declare-fun b!531392 () Bool)

(assert (=> b!531392 (= e!309538 false)))

(declare-fun lt!244997 () Bool)

(declare-datatypes ((List!10339 0))(
  ( (Nil!10336) (Cons!10335 (h!11275 (_ BitVec 64)) (t!16575 List!10339)) )
))
(declare-fun arrayNoDuplicates!0 (array!33658 (_ BitVec 32) List!10339) Bool)

(assert (=> b!531392 (= lt!244997 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10336))))

(assert (= (and start!48394 res!327033) b!531389))

(assert (= (and b!531389 res!327030) b!531395))

(assert (= (and b!531395 res!327034) b!531390))

(assert (= (and b!531390 res!327035) b!531391))

(assert (= (and b!531391 res!327029) b!531394))

(assert (= (and b!531394 res!327032) b!531393))

(assert (= (and b!531393 res!327031) b!531392))

(declare-fun m!511813 () Bool)

(assert (=> b!531394 m!511813))

(declare-fun m!511815 () Bool)

(assert (=> start!48394 m!511815))

(declare-fun m!511817 () Bool)

(assert (=> start!48394 m!511817))

(declare-fun m!511819 () Bool)

(assert (=> b!531395 m!511819))

(assert (=> b!531395 m!511819))

(declare-fun m!511821 () Bool)

(assert (=> b!531395 m!511821))

(declare-fun m!511823 () Bool)

(assert (=> b!531391 m!511823))

(declare-fun m!511825 () Bool)

(assert (=> b!531393 m!511825))

(declare-fun m!511827 () Bool)

(assert (=> b!531390 m!511827))

(declare-fun m!511829 () Bool)

(assert (=> b!531392 m!511829))

(push 1)

