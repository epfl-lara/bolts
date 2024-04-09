; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46124 () Bool)

(assert start!46124)

(declare-fun b!510642 () Bool)

(declare-fun res!311644 () Bool)

(declare-fun e!298437 () Bool)

(assert (=> b!510642 (=> (not res!311644) (not e!298437))))

(declare-datatypes ((array!32795 0))(
  ( (array!32796 (arr!15773 (Array (_ BitVec 32) (_ BitVec 64))) (size!16137 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32795)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32795 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510642 (= res!311644 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510643 () Bool)

(declare-fun res!311637 () Bool)

(assert (=> b!510643 (=> (not res!311637) (not e!298437))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510643 (= res!311637 (validKeyInArray!0 (select (arr!15773 a!3235) j!176)))))

(declare-fun b!510644 () Bool)

(declare-fun res!311639 () Bool)

(declare-fun e!298435 () Bool)

(assert (=> b!510644 (=> (not res!311639) (not e!298435))))

(declare-datatypes ((List!9984 0))(
  ( (Nil!9981) (Cons!9980 (h!10857 (_ BitVec 64)) (t!16220 List!9984)) )
))
(declare-fun arrayNoDuplicates!0 (array!32795 (_ BitVec 32) List!9984) Bool)

(assert (=> b!510644 (= res!311639 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9981))))

(declare-fun b!510645 () Bool)

(declare-fun res!311640 () Bool)

(assert (=> b!510645 (=> (not res!311640) (not e!298437))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510645 (= res!311640 (and (= (size!16137 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16137 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16137 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510646 () Bool)

(declare-fun e!298438 () Bool)

(declare-datatypes ((SeekEntryResult!4247 0))(
  ( (MissingZero!4247 (index!19176 (_ BitVec 32))) (Found!4247 (index!19177 (_ BitVec 32))) (Intermediate!4247 (undefined!5059 Bool) (index!19178 (_ BitVec 32)) (x!48155 (_ BitVec 32))) (Undefined!4247) (MissingVacant!4247 (index!19179 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32795 (_ BitVec 32)) SeekEntryResult!4247)

(assert (=> b!510646 (= e!298438 (= (seekEntryOrOpen!0 (select (arr!15773 a!3235) j!176) a!3235 mask!3524) (Found!4247 j!176)))))

(declare-fun b!510647 () Bool)

(declare-fun res!311645 () Bool)

(assert (=> b!510647 (=> (not res!311645) (not e!298437))))

(assert (=> b!510647 (= res!311645 (validKeyInArray!0 k!2280))))

(declare-fun res!311641 () Bool)

(assert (=> start!46124 (=> (not res!311641) (not e!298437))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46124 (= res!311641 (validMask!0 mask!3524))))

(assert (=> start!46124 e!298437))

(assert (=> start!46124 true))

(declare-fun array_inv!11547 (array!32795) Bool)

(assert (=> start!46124 (array_inv!11547 a!3235)))

(declare-fun b!510648 () Bool)

(assert (=> b!510648 (= e!298435 (not true))))

(declare-fun lt!233613 () SeekEntryResult!4247)

(declare-fun lt!233611 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32795 (_ BitVec 32)) SeekEntryResult!4247)

(assert (=> b!510648 (= lt!233613 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233611 (select (store (arr!15773 a!3235) i!1204 k!2280) j!176) (array!32796 (store (arr!15773 a!3235) i!1204 k!2280) (size!16137 a!3235)) mask!3524))))

(declare-fun lt!233615 () (_ BitVec 32))

(declare-fun lt!233614 () SeekEntryResult!4247)

(assert (=> b!510648 (= lt!233614 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233615 (select (arr!15773 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510648 (= lt!233611 (toIndex!0 (select (store (arr!15773 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!510648 (= lt!233615 (toIndex!0 (select (arr!15773 a!3235) j!176) mask!3524))))

(assert (=> b!510648 e!298438))

(declare-fun res!311638 () Bool)

(assert (=> b!510648 (=> (not res!311638) (not e!298438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32795 (_ BitVec 32)) Bool)

(assert (=> b!510648 (= res!311638 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15744 0))(
  ( (Unit!15745) )
))
(declare-fun lt!233610 () Unit!15744)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32795 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15744)

(assert (=> b!510648 (= lt!233610 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510649 () Bool)

(assert (=> b!510649 (= e!298437 e!298435)))

(declare-fun res!311642 () Bool)

(assert (=> b!510649 (=> (not res!311642) (not e!298435))))

(declare-fun lt!233612 () SeekEntryResult!4247)

(assert (=> b!510649 (= res!311642 (or (= lt!233612 (MissingZero!4247 i!1204)) (= lt!233612 (MissingVacant!4247 i!1204))))))

(assert (=> b!510649 (= lt!233612 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510650 () Bool)

(declare-fun res!311643 () Bool)

(assert (=> b!510650 (=> (not res!311643) (not e!298435))))

(assert (=> b!510650 (= res!311643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46124 res!311641) b!510645))

(assert (= (and b!510645 res!311640) b!510643))

(assert (= (and b!510643 res!311637) b!510647))

(assert (= (and b!510647 res!311645) b!510642))

(assert (= (and b!510642 res!311644) b!510649))

(assert (= (and b!510649 res!311642) b!510650))

(assert (= (and b!510650 res!311643) b!510644))

(assert (= (and b!510644 res!311639) b!510648))

(assert (= (and b!510648 res!311638) b!510646))

(declare-fun m!492127 () Bool)

(assert (=> b!510647 m!492127))

(declare-fun m!492129 () Bool)

(assert (=> b!510642 m!492129))

(declare-fun m!492131 () Bool)

(assert (=> b!510649 m!492131))

(declare-fun m!492133 () Bool)

(assert (=> b!510646 m!492133))

(assert (=> b!510646 m!492133))

(declare-fun m!492135 () Bool)

(assert (=> b!510646 m!492135))

(declare-fun m!492137 () Bool)

(assert (=> b!510644 m!492137))

(assert (=> b!510643 m!492133))

(assert (=> b!510643 m!492133))

(declare-fun m!492139 () Bool)

(assert (=> b!510643 m!492139))

(declare-fun m!492141 () Bool)

(assert (=> b!510650 m!492141))

(declare-fun m!492143 () Bool)

(assert (=> b!510648 m!492143))

(assert (=> b!510648 m!492133))

(declare-fun m!492145 () Bool)

(assert (=> b!510648 m!492145))

(declare-fun m!492147 () Bool)

(assert (=> b!510648 m!492147))

(declare-fun m!492149 () Bool)

(assert (=> b!510648 m!492149))

(assert (=> b!510648 m!492133))

(declare-fun m!492151 () Bool)

(assert (=> b!510648 m!492151))

(assert (=> b!510648 m!492149))

(declare-fun m!492153 () Bool)

(assert (=> b!510648 m!492153))

(assert (=> b!510648 m!492133))

(declare-fun m!492155 () Bool)

(assert (=> b!510648 m!492155))

(assert (=> b!510648 m!492149))

(declare-fun m!492157 () Bool)

(assert (=> b!510648 m!492157))

(declare-fun m!492159 () Bool)

(assert (=> start!46124 m!492159))

(declare-fun m!492161 () Bool)

(assert (=> start!46124 m!492161))

(push 1)

