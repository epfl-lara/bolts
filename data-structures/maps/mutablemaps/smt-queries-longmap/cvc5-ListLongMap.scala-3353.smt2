; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46120 () Bool)

(assert start!46120)

(declare-fun b!510588 () Bool)

(declare-fun res!311589 () Bool)

(declare-fun e!298413 () Bool)

(assert (=> b!510588 (=> (not res!311589) (not e!298413))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510588 (= res!311589 (validKeyInArray!0 k!2280))))

(declare-fun e!298411 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32791 0))(
  ( (array!32792 (arr!15771 (Array (_ BitVec 32) (_ BitVec 64))) (size!16135 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32791)

(declare-fun b!510589 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4245 0))(
  ( (MissingZero!4245 (index!19168 (_ BitVec 32))) (Found!4245 (index!19169 (_ BitVec 32))) (Intermediate!4245 (undefined!5057 Bool) (index!19170 (_ BitVec 32)) (x!48153 (_ BitVec 32))) (Undefined!4245) (MissingVacant!4245 (index!19171 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32791 (_ BitVec 32)) SeekEntryResult!4245)

(assert (=> b!510589 (= e!298411 (= (seekEntryOrOpen!0 (select (arr!15771 a!3235) j!176) a!3235 mask!3524) (Found!4245 j!176)))))

(declare-fun res!311591 () Bool)

(assert (=> start!46120 (=> (not res!311591) (not e!298413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46120 (= res!311591 (validMask!0 mask!3524))))

(assert (=> start!46120 e!298413))

(assert (=> start!46120 true))

(declare-fun array_inv!11545 (array!32791) Bool)

(assert (=> start!46120 (array_inv!11545 a!3235)))

(declare-fun b!510590 () Bool)

(declare-fun res!311587 () Bool)

(assert (=> b!510590 (=> (not res!311587) (not e!298413))))

(assert (=> b!510590 (= res!311587 (validKeyInArray!0 (select (arr!15771 a!3235) j!176)))))

(declare-fun b!510591 () Bool)

(declare-fun res!311588 () Bool)

(declare-fun e!298414 () Bool)

(assert (=> b!510591 (=> (not res!311588) (not e!298414))))

(declare-datatypes ((List!9982 0))(
  ( (Nil!9979) (Cons!9978 (h!10855 (_ BitVec 64)) (t!16218 List!9982)) )
))
(declare-fun arrayNoDuplicates!0 (array!32791 (_ BitVec 32) List!9982) Bool)

(assert (=> b!510591 (= res!311588 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9979))))

(declare-fun b!510592 () Bool)

(declare-fun res!311584 () Bool)

(assert (=> b!510592 (=> (not res!311584) (not e!298413))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510592 (= res!311584 (and (= (size!16135 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16135 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16135 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510593 () Bool)

(declare-fun res!311586 () Bool)

(assert (=> b!510593 (=> (not res!311586) (not e!298413))))

(declare-fun arrayContainsKey!0 (array!32791 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510593 (= res!311586 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510594 () Bool)

(assert (=> b!510594 (= e!298413 e!298414)))

(declare-fun res!311590 () Bool)

(assert (=> b!510594 (=> (not res!311590) (not e!298414))))

(declare-fun lt!233574 () SeekEntryResult!4245)

(assert (=> b!510594 (= res!311590 (or (= lt!233574 (MissingZero!4245 i!1204)) (= lt!233574 (MissingVacant!4245 i!1204))))))

(assert (=> b!510594 (= lt!233574 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510595 () Bool)

(assert (=> b!510595 (= e!298414 (not true))))

(declare-fun lt!233579 () (_ BitVec 32))

(declare-fun lt!233577 () SeekEntryResult!4245)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32791 (_ BitVec 32)) SeekEntryResult!4245)

(assert (=> b!510595 (= lt!233577 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233579 (select (store (arr!15771 a!3235) i!1204 k!2280) j!176) (array!32792 (store (arr!15771 a!3235) i!1204 k!2280) (size!16135 a!3235)) mask!3524))))

(declare-fun lt!233576 () (_ BitVec 32))

(declare-fun lt!233578 () SeekEntryResult!4245)

(assert (=> b!510595 (= lt!233578 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233576 (select (arr!15771 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510595 (= lt!233579 (toIndex!0 (select (store (arr!15771 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!510595 (= lt!233576 (toIndex!0 (select (arr!15771 a!3235) j!176) mask!3524))))

(assert (=> b!510595 e!298411))

(declare-fun res!311585 () Bool)

(assert (=> b!510595 (=> (not res!311585) (not e!298411))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32791 (_ BitVec 32)) Bool)

(assert (=> b!510595 (= res!311585 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15740 0))(
  ( (Unit!15741) )
))
(declare-fun lt!233575 () Unit!15740)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15740)

(assert (=> b!510595 (= lt!233575 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510596 () Bool)

(declare-fun res!311583 () Bool)

(assert (=> b!510596 (=> (not res!311583) (not e!298414))))

(assert (=> b!510596 (= res!311583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46120 res!311591) b!510592))

(assert (= (and b!510592 res!311584) b!510590))

(assert (= (and b!510590 res!311587) b!510588))

(assert (= (and b!510588 res!311589) b!510593))

(assert (= (and b!510593 res!311586) b!510594))

(assert (= (and b!510594 res!311590) b!510596))

(assert (= (and b!510596 res!311583) b!510591))

(assert (= (and b!510591 res!311588) b!510595))

(assert (= (and b!510595 res!311585) b!510589))

(declare-fun m!492055 () Bool)

(assert (=> start!46120 m!492055))

(declare-fun m!492057 () Bool)

(assert (=> start!46120 m!492057))

(declare-fun m!492059 () Bool)

(assert (=> b!510588 m!492059))

(declare-fun m!492061 () Bool)

(assert (=> b!510595 m!492061))

(declare-fun m!492063 () Bool)

(assert (=> b!510595 m!492063))

(declare-fun m!492065 () Bool)

(assert (=> b!510595 m!492065))

(declare-fun m!492067 () Bool)

(assert (=> b!510595 m!492067))

(assert (=> b!510595 m!492065))

(declare-fun m!492069 () Bool)

(assert (=> b!510595 m!492069))

(assert (=> b!510595 m!492063))

(declare-fun m!492071 () Bool)

(assert (=> b!510595 m!492071))

(assert (=> b!510595 m!492063))

(declare-fun m!492073 () Bool)

(assert (=> b!510595 m!492073))

(declare-fun m!492075 () Bool)

(assert (=> b!510595 m!492075))

(assert (=> b!510595 m!492065))

(declare-fun m!492077 () Bool)

(assert (=> b!510595 m!492077))

(declare-fun m!492079 () Bool)

(assert (=> b!510593 m!492079))

(declare-fun m!492081 () Bool)

(assert (=> b!510594 m!492081))

(assert (=> b!510590 m!492065))

(assert (=> b!510590 m!492065))

(declare-fun m!492083 () Bool)

(assert (=> b!510590 m!492083))

(declare-fun m!492085 () Bool)

(assert (=> b!510591 m!492085))

(declare-fun m!492087 () Bool)

(assert (=> b!510596 m!492087))

(assert (=> b!510589 m!492065))

(assert (=> b!510589 m!492065))

(declare-fun m!492089 () Bool)

(assert (=> b!510589 m!492089))

(push 1)

