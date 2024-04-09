; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46126 () Bool)

(assert start!46126)

(declare-fun b!510669 () Bool)

(declare-fun res!311672 () Bool)

(declare-fun e!298450 () Bool)

(assert (=> b!510669 (=> (not res!311672) (not e!298450))))

(declare-datatypes ((array!32797 0))(
  ( (array!32798 (arr!15774 (Array (_ BitVec 32) (_ BitVec 64))) (size!16138 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32797)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32797 (_ BitVec 32)) Bool)

(assert (=> b!510669 (= res!311672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510670 () Bool)

(declare-fun res!311669 () Bool)

(declare-fun e!298448 () Bool)

(assert (=> b!510670 (=> (not res!311669) (not e!298448))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510670 (= res!311669 (validKeyInArray!0 (select (arr!15774 a!3235) j!176)))))

(declare-fun b!510671 () Bool)

(declare-fun res!311670 () Bool)

(assert (=> b!510671 (=> (not res!311670) (not e!298448))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!510671 (= res!311670 (validKeyInArray!0 k!2280))))

(declare-fun b!510672 () Bool)

(declare-fun res!311671 () Bool)

(assert (=> b!510672 (=> (not res!311671) (not e!298448))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510672 (= res!311671 (and (= (size!16138 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16138 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16138 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!311665 () Bool)

(assert (=> start!46126 (=> (not res!311665) (not e!298448))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46126 (= res!311665 (validMask!0 mask!3524))))

(assert (=> start!46126 e!298448))

(assert (=> start!46126 true))

(declare-fun array_inv!11548 (array!32797) Bool)

(assert (=> start!46126 (array_inv!11548 a!3235)))

(declare-fun b!510673 () Bool)

(assert (=> b!510673 (= e!298448 e!298450)))

(declare-fun res!311667 () Bool)

(assert (=> b!510673 (=> (not res!311667) (not e!298450))))

(declare-datatypes ((SeekEntryResult!4248 0))(
  ( (MissingZero!4248 (index!19180 (_ BitVec 32))) (Found!4248 (index!19181 (_ BitVec 32))) (Intermediate!4248 (undefined!5060 Bool) (index!19182 (_ BitVec 32)) (x!48164 (_ BitVec 32))) (Undefined!4248) (MissingVacant!4248 (index!19183 (_ BitVec 32))) )
))
(declare-fun lt!233631 () SeekEntryResult!4248)

(assert (=> b!510673 (= res!311667 (or (= lt!233631 (MissingZero!4248 i!1204)) (= lt!233631 (MissingVacant!4248 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32797 (_ BitVec 32)) SeekEntryResult!4248)

(assert (=> b!510673 (= lt!233631 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510674 () Bool)

(assert (=> b!510674 (= e!298450 (not true))))

(declare-fun lt!233629 () (_ BitVec 32))

(declare-fun lt!233628 () SeekEntryResult!4248)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32797 (_ BitVec 32)) SeekEntryResult!4248)

(assert (=> b!510674 (= lt!233628 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233629 (select (store (arr!15774 a!3235) i!1204 k!2280) j!176) (array!32798 (store (arr!15774 a!3235) i!1204 k!2280) (size!16138 a!3235)) mask!3524))))

(declare-fun lt!233632 () SeekEntryResult!4248)

(declare-fun lt!233630 () (_ BitVec 32))

(assert (=> b!510674 (= lt!233632 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233630 (select (arr!15774 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510674 (= lt!233629 (toIndex!0 (select (store (arr!15774 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!510674 (= lt!233630 (toIndex!0 (select (arr!15774 a!3235) j!176) mask!3524))))

(declare-fun e!298447 () Bool)

(assert (=> b!510674 e!298447))

(declare-fun res!311668 () Bool)

(assert (=> b!510674 (=> (not res!311668) (not e!298447))))

(assert (=> b!510674 (= res!311668 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15746 0))(
  ( (Unit!15747) )
))
(declare-fun lt!233633 () Unit!15746)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32797 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15746)

(assert (=> b!510674 (= lt!233633 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510675 () Bool)

(assert (=> b!510675 (= e!298447 (= (seekEntryOrOpen!0 (select (arr!15774 a!3235) j!176) a!3235 mask!3524) (Found!4248 j!176)))))

(declare-fun b!510676 () Bool)

(declare-fun res!311666 () Bool)

(assert (=> b!510676 (=> (not res!311666) (not e!298448))))

(declare-fun arrayContainsKey!0 (array!32797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510676 (= res!311666 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510677 () Bool)

(declare-fun res!311664 () Bool)

(assert (=> b!510677 (=> (not res!311664) (not e!298450))))

(declare-datatypes ((List!9985 0))(
  ( (Nil!9982) (Cons!9981 (h!10858 (_ BitVec 64)) (t!16221 List!9985)) )
))
(declare-fun arrayNoDuplicates!0 (array!32797 (_ BitVec 32) List!9985) Bool)

(assert (=> b!510677 (= res!311664 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9982))))

(assert (= (and start!46126 res!311665) b!510672))

(assert (= (and b!510672 res!311671) b!510670))

(assert (= (and b!510670 res!311669) b!510671))

(assert (= (and b!510671 res!311670) b!510676))

(assert (= (and b!510676 res!311666) b!510673))

(assert (= (and b!510673 res!311667) b!510669))

(assert (= (and b!510669 res!311672) b!510677))

(assert (= (and b!510677 res!311664) b!510674))

(assert (= (and b!510674 res!311668) b!510675))

(declare-fun m!492163 () Bool)

(assert (=> b!510670 m!492163))

(assert (=> b!510670 m!492163))

(declare-fun m!492165 () Bool)

(assert (=> b!510670 m!492165))

(declare-fun m!492167 () Bool)

(assert (=> b!510674 m!492167))

(declare-fun m!492169 () Bool)

(assert (=> b!510674 m!492169))

(declare-fun m!492171 () Bool)

(assert (=> b!510674 m!492171))

(declare-fun m!492173 () Bool)

(assert (=> b!510674 m!492173))

(assert (=> b!510674 m!492167))

(assert (=> b!510674 m!492163))

(declare-fun m!492175 () Bool)

(assert (=> b!510674 m!492175))

(assert (=> b!510674 m!492163))

(declare-fun m!492177 () Bool)

(assert (=> b!510674 m!492177))

(assert (=> b!510674 m!492163))

(declare-fun m!492179 () Bool)

(assert (=> b!510674 m!492179))

(assert (=> b!510674 m!492167))

(declare-fun m!492181 () Bool)

(assert (=> b!510674 m!492181))

(declare-fun m!492183 () Bool)

(assert (=> start!46126 m!492183))

(declare-fun m!492185 () Bool)

(assert (=> start!46126 m!492185))

(declare-fun m!492187 () Bool)

(assert (=> b!510671 m!492187))

(declare-fun m!492189 () Bool)

(assert (=> b!510673 m!492189))

(assert (=> b!510675 m!492163))

(assert (=> b!510675 m!492163))

(declare-fun m!492191 () Bool)

(assert (=> b!510675 m!492191))

(declare-fun m!492193 () Bool)

(assert (=> b!510676 m!492193))

(declare-fun m!492195 () Bool)

(assert (=> b!510677 m!492195))

(declare-fun m!492197 () Bool)

(assert (=> b!510669 m!492197))

(push 1)

