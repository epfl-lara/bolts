; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45052 () Bool)

(assert start!45052)

(declare-fun b!494081 () Bool)

(declare-fun res!296805 () Bool)

(declare-fun e!290013 () Bool)

(assert (=> b!494081 (=> (not res!296805) (not e!290013))))

(declare-datatypes ((array!31957 0))(
  ( (array!31958 (arr!15360 (Array (_ BitVec 32) (_ BitVec 64))) (size!15724 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31957)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494081 (= res!296805 (validKeyInArray!0 (select (arr!15360 a!3235) j!176)))))

(declare-fun b!494082 () Bool)

(declare-fun e!290014 () Bool)

(declare-fun e!290011 () Bool)

(assert (=> b!494082 (= e!290014 (not e!290011))))

(declare-fun res!296808 () Bool)

(assert (=> b!494082 (=> res!296808 e!290011)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3834 0))(
  ( (MissingZero!3834 (index!17515 (_ BitVec 32))) (Found!3834 (index!17516 (_ BitVec 32))) (Intermediate!3834 (undefined!4646 Bool) (index!17517 (_ BitVec 32)) (x!46619 (_ BitVec 32))) (Undefined!3834) (MissingVacant!3834 (index!17518 (_ BitVec 32))) )
))
(declare-fun lt!223635 () SeekEntryResult!3834)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!223640 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31957 (_ BitVec 32)) SeekEntryResult!3834)

(assert (=> b!494082 (= res!296808 (= lt!223635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223640 (select (store (arr!15360 a!3235) i!1204 k!2280) j!176) (array!31958 (store (arr!15360 a!3235) i!1204 k!2280) (size!15724 a!3235)) mask!3524)))))

(declare-fun lt!223639 () (_ BitVec 32))

(assert (=> b!494082 (= lt!223635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223639 (select (arr!15360 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494082 (= lt!223640 (toIndex!0 (select (store (arr!15360 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494082 (= lt!223639 (toIndex!0 (select (arr!15360 a!3235) j!176) mask!3524))))

(declare-fun lt!223636 () SeekEntryResult!3834)

(assert (=> b!494082 (= lt!223636 (Found!3834 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31957 (_ BitVec 32)) SeekEntryResult!3834)

(assert (=> b!494082 (= lt!223636 (seekEntryOrOpen!0 (select (arr!15360 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31957 (_ BitVec 32)) Bool)

(assert (=> b!494082 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14606 0))(
  ( (Unit!14607) )
))
(declare-fun lt!223637 () Unit!14606)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31957 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14606)

(assert (=> b!494082 (= lt!223637 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494083 () Bool)

(declare-fun res!296809 () Bool)

(assert (=> b!494083 (=> (not res!296809) (not e!290013))))

(assert (=> b!494083 (= res!296809 (and (= (size!15724 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15724 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15724 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494084 () Bool)

(declare-fun res!296806 () Bool)

(assert (=> b!494084 (=> (not res!296806) (not e!290013))))

(assert (=> b!494084 (= res!296806 (validKeyInArray!0 k!2280))))

(declare-fun b!494085 () Bool)

(declare-fun res!296803 () Bool)

(assert (=> b!494085 (=> (not res!296803) (not e!290013))))

(declare-fun arrayContainsKey!0 (array!31957 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494085 (= res!296803 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494086 () Bool)

(declare-fun res!296804 () Bool)

(assert (=> b!494086 (=> (not res!296804) (not e!290014))))

(declare-datatypes ((List!9571 0))(
  ( (Nil!9568) (Cons!9567 (h!10435 (_ BitVec 64)) (t!15807 List!9571)) )
))
(declare-fun arrayNoDuplicates!0 (array!31957 (_ BitVec 32) List!9571) Bool)

(assert (=> b!494086 (= res!296804 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9568))))

(declare-fun b!494087 () Bool)

(declare-fun res!296801 () Bool)

(assert (=> b!494087 (=> res!296801 e!290011)))

(assert (=> b!494087 (= res!296801 (or (not (is-Intermediate!3834 lt!223635)) (not (undefined!4646 lt!223635))))))

(declare-fun b!494088 () Bool)

(declare-fun res!296807 () Bool)

(assert (=> b!494088 (=> (not res!296807) (not e!290014))))

(assert (=> b!494088 (= res!296807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!296802 () Bool)

(assert (=> start!45052 (=> (not res!296802) (not e!290013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45052 (= res!296802 (validMask!0 mask!3524))))

(assert (=> start!45052 e!290013))

(assert (=> start!45052 true))

(declare-fun array_inv!11134 (array!31957) Bool)

(assert (=> start!45052 (array_inv!11134 a!3235)))

(declare-fun b!494089 () Bool)

(assert (=> b!494089 (= e!290011 true)))

(assert (=> b!494089 (= lt!223636 Undefined!3834)))

(declare-fun b!494090 () Bool)

(assert (=> b!494090 (= e!290013 e!290014)))

(declare-fun res!296810 () Bool)

(assert (=> b!494090 (=> (not res!296810) (not e!290014))))

(declare-fun lt!223638 () SeekEntryResult!3834)

(assert (=> b!494090 (= res!296810 (or (= lt!223638 (MissingZero!3834 i!1204)) (= lt!223638 (MissingVacant!3834 i!1204))))))

(assert (=> b!494090 (= lt!223638 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45052 res!296802) b!494083))

(assert (= (and b!494083 res!296809) b!494081))

(assert (= (and b!494081 res!296805) b!494084))

(assert (= (and b!494084 res!296806) b!494085))

(assert (= (and b!494085 res!296803) b!494090))

(assert (= (and b!494090 res!296810) b!494088))

(assert (= (and b!494088 res!296807) b!494086))

(assert (= (and b!494086 res!296804) b!494082))

(assert (= (and b!494082 (not res!296808)) b!494087))

(assert (= (and b!494087 (not res!296801)) b!494089))

(declare-fun m!475129 () Bool)

(assert (=> b!494088 m!475129))

(declare-fun m!475131 () Bool)

(assert (=> start!45052 m!475131))

(declare-fun m!475133 () Bool)

(assert (=> start!45052 m!475133))

(declare-fun m!475135 () Bool)

(assert (=> b!494090 m!475135))

(declare-fun m!475137 () Bool)

(assert (=> b!494081 m!475137))

(assert (=> b!494081 m!475137))

(declare-fun m!475139 () Bool)

(assert (=> b!494081 m!475139))

(declare-fun m!475141 () Bool)

(assert (=> b!494084 m!475141))

(declare-fun m!475143 () Bool)

(assert (=> b!494082 m!475143))

(declare-fun m!475145 () Bool)

(assert (=> b!494082 m!475145))

(declare-fun m!475147 () Bool)

(assert (=> b!494082 m!475147))

(assert (=> b!494082 m!475137))

(declare-fun m!475149 () Bool)

(assert (=> b!494082 m!475149))

(assert (=> b!494082 m!475137))

(declare-fun m!475151 () Bool)

(assert (=> b!494082 m!475151))

(assert (=> b!494082 m!475137))

(declare-fun m!475153 () Bool)

(assert (=> b!494082 m!475153))

(assert (=> b!494082 m!475147))

(declare-fun m!475155 () Bool)

(assert (=> b!494082 m!475155))

(assert (=> b!494082 m!475147))

(declare-fun m!475157 () Bool)

(assert (=> b!494082 m!475157))

(assert (=> b!494082 m!475137))

(declare-fun m!475159 () Bool)

(assert (=> b!494082 m!475159))

(declare-fun m!475161 () Bool)

(assert (=> b!494085 m!475161))

(declare-fun m!475163 () Bool)

(assert (=> b!494086 m!475163))

(push 1)

