; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46128 () Bool)

(assert start!46128)

(declare-fun b!510696 () Bool)

(declare-fun res!311699 () Bool)

(declare-fun e!298460 () Bool)

(assert (=> b!510696 (=> (not res!311699) (not e!298460))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32799 0))(
  ( (array!32800 (arr!15775 (Array (_ BitVec 32) (_ BitVec 64))) (size!16139 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32799)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!510696 (= res!311699 (and (= (size!16139 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16139 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16139 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510697 () Bool)

(declare-fun res!311694 () Bool)

(assert (=> b!510697 (=> (not res!311694) (not e!298460))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32799 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510697 (= res!311694 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510698 () Bool)

(declare-fun e!298462 () Bool)

(assert (=> b!510698 (= e!298460 e!298462)))

(declare-fun res!311696 () Bool)

(assert (=> b!510698 (=> (not res!311696) (not e!298462))))

(declare-datatypes ((SeekEntryResult!4249 0))(
  ( (MissingZero!4249 (index!19184 (_ BitVec 32))) (Found!4249 (index!19185 (_ BitVec 32))) (Intermediate!4249 (undefined!5061 Bool) (index!19186 (_ BitVec 32)) (x!48165 (_ BitVec 32))) (Undefined!4249) (MissingVacant!4249 (index!19187 (_ BitVec 32))) )
))
(declare-fun lt!233650 () SeekEntryResult!4249)

(assert (=> b!510698 (= res!311696 (or (= lt!233650 (MissingZero!4249 i!1204)) (= lt!233650 (MissingVacant!4249 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32799 (_ BitVec 32)) SeekEntryResult!4249)

(assert (=> b!510698 (= lt!233650 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!510699 () Bool)

(declare-fun e!298459 () Bool)

(assert (=> b!510699 (= e!298459 (= (seekEntryOrOpen!0 (select (arr!15775 a!3235) j!176) a!3235 mask!3524) (Found!4249 j!176)))))

(declare-fun b!510700 () Bool)

(declare-fun res!311697 () Bool)

(assert (=> b!510700 (=> (not res!311697) (not e!298460))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510700 (= res!311697 (validKeyInArray!0 k0!2280))))

(declare-fun res!311692 () Bool)

(assert (=> start!46128 (=> (not res!311692) (not e!298460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46128 (= res!311692 (validMask!0 mask!3524))))

(assert (=> start!46128 e!298460))

(assert (=> start!46128 true))

(declare-fun array_inv!11549 (array!32799) Bool)

(assert (=> start!46128 (array_inv!11549 a!3235)))

(declare-fun b!510701 () Bool)

(declare-fun res!311695 () Bool)

(assert (=> b!510701 (=> (not res!311695) (not e!298462))))

(declare-datatypes ((List!9986 0))(
  ( (Nil!9983) (Cons!9982 (h!10859 (_ BitVec 64)) (t!16222 List!9986)) )
))
(declare-fun arrayNoDuplicates!0 (array!32799 (_ BitVec 32) List!9986) Bool)

(assert (=> b!510701 (= res!311695 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9983))))

(declare-fun b!510702 () Bool)

(declare-fun res!311691 () Bool)

(assert (=> b!510702 (=> (not res!311691) (not e!298462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32799 (_ BitVec 32)) Bool)

(assert (=> b!510702 (= res!311691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510703 () Bool)

(declare-fun res!311698 () Bool)

(assert (=> b!510703 (=> (not res!311698) (not e!298460))))

(assert (=> b!510703 (= res!311698 (validKeyInArray!0 (select (arr!15775 a!3235) j!176)))))

(declare-fun b!510704 () Bool)

(assert (=> b!510704 (= e!298462 (not true))))

(declare-fun lt!233648 () (_ BitVec 32))

(declare-fun lt!233651 () SeekEntryResult!4249)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32799 (_ BitVec 32)) SeekEntryResult!4249)

(assert (=> b!510704 (= lt!233651 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233648 (select (store (arr!15775 a!3235) i!1204 k0!2280) j!176) (array!32800 (store (arr!15775 a!3235) i!1204 k0!2280) (size!16139 a!3235)) mask!3524))))

(declare-fun lt!233646 () SeekEntryResult!4249)

(declare-fun lt!233647 () (_ BitVec 32))

(assert (=> b!510704 (= lt!233646 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233647 (select (arr!15775 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510704 (= lt!233648 (toIndex!0 (select (store (arr!15775 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!510704 (= lt!233647 (toIndex!0 (select (arr!15775 a!3235) j!176) mask!3524))))

(assert (=> b!510704 e!298459))

(declare-fun res!311693 () Bool)

(assert (=> b!510704 (=> (not res!311693) (not e!298459))))

(assert (=> b!510704 (= res!311693 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15748 0))(
  ( (Unit!15749) )
))
(declare-fun lt!233649 () Unit!15748)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32799 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15748)

(assert (=> b!510704 (= lt!233649 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46128 res!311692) b!510696))

(assert (= (and b!510696 res!311699) b!510703))

(assert (= (and b!510703 res!311698) b!510700))

(assert (= (and b!510700 res!311697) b!510697))

(assert (= (and b!510697 res!311694) b!510698))

(assert (= (and b!510698 res!311696) b!510702))

(assert (= (and b!510702 res!311691) b!510701))

(assert (= (and b!510701 res!311695) b!510704))

(assert (= (and b!510704 res!311693) b!510699))

(declare-fun m!492199 () Bool)

(assert (=> start!46128 m!492199))

(declare-fun m!492201 () Bool)

(assert (=> start!46128 m!492201))

(declare-fun m!492203 () Bool)

(assert (=> b!510702 m!492203))

(declare-fun m!492205 () Bool)

(assert (=> b!510699 m!492205))

(assert (=> b!510699 m!492205))

(declare-fun m!492207 () Bool)

(assert (=> b!510699 m!492207))

(declare-fun m!492209 () Bool)

(assert (=> b!510698 m!492209))

(declare-fun m!492211 () Bool)

(assert (=> b!510704 m!492211))

(declare-fun m!492213 () Bool)

(assert (=> b!510704 m!492213))

(declare-fun m!492215 () Bool)

(assert (=> b!510704 m!492215))

(assert (=> b!510704 m!492205))

(declare-fun m!492217 () Bool)

(assert (=> b!510704 m!492217))

(assert (=> b!510704 m!492205))

(declare-fun m!492219 () Bool)

(assert (=> b!510704 m!492219))

(assert (=> b!510704 m!492215))

(declare-fun m!492221 () Bool)

(assert (=> b!510704 m!492221))

(assert (=> b!510704 m!492215))

(declare-fun m!492223 () Bool)

(assert (=> b!510704 m!492223))

(assert (=> b!510704 m!492205))

(declare-fun m!492225 () Bool)

(assert (=> b!510704 m!492225))

(declare-fun m!492227 () Bool)

(assert (=> b!510700 m!492227))

(declare-fun m!492229 () Bool)

(assert (=> b!510697 m!492229))

(declare-fun m!492231 () Bool)

(assert (=> b!510701 m!492231))

(assert (=> b!510703 m!492205))

(assert (=> b!510703 m!492205))

(declare-fun m!492233 () Bool)

(assert (=> b!510703 m!492233))

(check-sat (not b!510698) (not b!510699) (not b!510702) (not b!510700) (not b!510703) (not start!46128) (not b!510697) (not b!510701) (not b!510704))
(check-sat)
