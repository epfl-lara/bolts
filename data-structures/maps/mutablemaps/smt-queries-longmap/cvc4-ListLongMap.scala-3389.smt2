; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46760 () Bool)

(assert start!46760)

(declare-fun b!516043 () Bool)

(declare-fun res!315758 () Bool)

(declare-fun e!301205 () Bool)

(assert (=> b!516043 (=> res!315758 e!301205)))

(declare-datatypes ((SeekEntryResult!4355 0))(
  ( (MissingZero!4355 (index!19608 (_ BitVec 32))) (Found!4355 (index!19609 (_ BitVec 32))) (Intermediate!4355 (undefined!5167 Bool) (index!19610 (_ BitVec 32)) (x!48593 (_ BitVec 32))) (Undefined!4355) (MissingVacant!4355 (index!19611 (_ BitVec 32))) )
))
(declare-fun lt!236290 () SeekEntryResult!4355)

(assert (=> b!516043 (= res!315758 (or (undefined!5167 lt!236290) (not (is-Intermediate!4355 lt!236290))))))

(declare-fun b!516044 () Bool)

(declare-fun e!301203 () Bool)

(declare-fun e!301206 () Bool)

(assert (=> b!516044 (= e!301203 e!301206)))

(declare-fun res!315762 () Bool)

(assert (=> b!516044 (=> (not res!315762) (not e!301206))))

(declare-fun lt!236291 () SeekEntryResult!4355)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!516044 (= res!315762 (or (= lt!236291 (MissingZero!4355 i!1204)) (= lt!236291 (MissingVacant!4355 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((array!33032 0))(
  ( (array!33033 (arr!15881 (Array (_ BitVec 32) (_ BitVec 64))) (size!16245 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33032)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33032 (_ BitVec 32)) SeekEntryResult!4355)

(assert (=> b!516044 (= lt!236291 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!516045 () Bool)

(assert (=> b!516045 (= e!301205 true)))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!516045 (and (bvslt (x!48593 lt!236290) #b01111111111111111111111111111110) (or (= (select (arr!15881 a!3235) (index!19610 lt!236290)) (select (arr!15881 a!3235) j!176)) (= (select (arr!15881 a!3235) (index!19610 lt!236290)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15881 a!3235) (index!19610 lt!236290)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516046 () Bool)

(declare-fun res!315760 () Bool)

(assert (=> b!516046 (=> (not res!315760) (not e!301206))))

(declare-datatypes ((List!10092 0))(
  ( (Nil!10089) (Cons!10088 (h!10986 (_ BitVec 64)) (t!16328 List!10092)) )
))
(declare-fun arrayNoDuplicates!0 (array!33032 (_ BitVec 32) List!10092) Bool)

(assert (=> b!516046 (= res!315760 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10089))))

(declare-fun b!516047 () Bool)

(declare-fun res!315757 () Bool)

(assert (=> b!516047 (=> (not res!315757) (not e!301206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33032 (_ BitVec 32)) Bool)

(assert (=> b!516047 (= res!315757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516048 () Bool)

(assert (=> b!516048 (= e!301206 (not e!301205))))

(declare-fun res!315761 () Bool)

(assert (=> b!516048 (=> res!315761 e!301205)))

(declare-fun lt!236288 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33032 (_ BitVec 32)) SeekEntryResult!4355)

(assert (=> b!516048 (= res!315761 (= lt!236290 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236288 (select (store (arr!15881 a!3235) i!1204 k!2280) j!176) (array!33033 (store (arr!15881 a!3235) i!1204 k!2280) (size!16245 a!3235)) mask!3524)))))

(declare-fun lt!236287 () (_ BitVec 32))

(assert (=> b!516048 (= lt!236290 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236287 (select (arr!15881 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516048 (= lt!236288 (toIndex!0 (select (store (arr!15881 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!516048 (= lt!236287 (toIndex!0 (select (arr!15881 a!3235) j!176) mask!3524))))

(declare-fun e!301207 () Bool)

(assert (=> b!516048 e!301207))

(declare-fun res!315766 () Bool)

(assert (=> b!516048 (=> (not res!315766) (not e!301207))))

(assert (=> b!516048 (= res!315766 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15960 0))(
  ( (Unit!15961) )
))
(declare-fun lt!236289 () Unit!15960)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33032 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15960)

(assert (=> b!516048 (= lt!236289 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!516049 () Bool)

(declare-fun res!315759 () Bool)

(assert (=> b!516049 (=> (not res!315759) (not e!301203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516049 (= res!315759 (validKeyInArray!0 (select (arr!15881 a!3235) j!176)))))

(declare-fun res!315764 () Bool)

(assert (=> start!46760 (=> (not res!315764) (not e!301203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46760 (= res!315764 (validMask!0 mask!3524))))

(assert (=> start!46760 e!301203))

(assert (=> start!46760 true))

(declare-fun array_inv!11655 (array!33032) Bool)

(assert (=> start!46760 (array_inv!11655 a!3235)))

(declare-fun b!516050 () Bool)

(assert (=> b!516050 (= e!301207 (= (seekEntryOrOpen!0 (select (arr!15881 a!3235) j!176) a!3235 mask!3524) (Found!4355 j!176)))))

(declare-fun b!516051 () Bool)

(declare-fun res!315767 () Bool)

(assert (=> b!516051 (=> (not res!315767) (not e!301203))))

(declare-fun arrayContainsKey!0 (array!33032 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516051 (= res!315767 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516052 () Bool)

(declare-fun res!315763 () Bool)

(assert (=> b!516052 (=> (not res!315763) (not e!301203))))

(assert (=> b!516052 (= res!315763 (validKeyInArray!0 k!2280))))

(declare-fun b!516053 () Bool)

(declare-fun res!315765 () Bool)

(assert (=> b!516053 (=> (not res!315765) (not e!301203))))

(assert (=> b!516053 (= res!315765 (and (= (size!16245 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16245 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16245 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!46760 res!315764) b!516053))

(assert (= (and b!516053 res!315765) b!516049))

(assert (= (and b!516049 res!315759) b!516052))

(assert (= (and b!516052 res!315763) b!516051))

(assert (= (and b!516051 res!315767) b!516044))

(assert (= (and b!516044 res!315762) b!516047))

(assert (= (and b!516047 res!315757) b!516046))

(assert (= (and b!516046 res!315760) b!516048))

(assert (= (and b!516048 res!315766) b!516050))

(assert (= (and b!516048 (not res!315761)) b!516043))

(assert (= (and b!516043 (not res!315758)) b!516045))

(declare-fun m!497537 () Bool)

(assert (=> b!516046 m!497537))

(declare-fun m!497539 () Bool)

(assert (=> b!516045 m!497539))

(declare-fun m!497541 () Bool)

(assert (=> b!516045 m!497541))

(assert (=> b!516050 m!497541))

(assert (=> b!516050 m!497541))

(declare-fun m!497543 () Bool)

(assert (=> b!516050 m!497543))

(assert (=> b!516049 m!497541))

(assert (=> b!516049 m!497541))

(declare-fun m!497545 () Bool)

(assert (=> b!516049 m!497545))

(declare-fun m!497547 () Bool)

(assert (=> b!516044 m!497547))

(declare-fun m!497549 () Bool)

(assert (=> b!516047 m!497549))

(declare-fun m!497551 () Bool)

(assert (=> start!46760 m!497551))

(declare-fun m!497553 () Bool)

(assert (=> start!46760 m!497553))

(declare-fun m!497555 () Bool)

(assert (=> b!516052 m!497555))

(declare-fun m!497557 () Bool)

(assert (=> b!516051 m!497557))

(declare-fun m!497559 () Bool)

(assert (=> b!516048 m!497559))

(declare-fun m!497561 () Bool)

(assert (=> b!516048 m!497561))

(declare-fun m!497563 () Bool)

(assert (=> b!516048 m!497563))

(assert (=> b!516048 m!497541))

(declare-fun m!497565 () Bool)

(assert (=> b!516048 m!497565))

(assert (=> b!516048 m!497541))

(assert (=> b!516048 m!497541))

(declare-fun m!497567 () Bool)

(assert (=> b!516048 m!497567))

(declare-fun m!497569 () Bool)

(assert (=> b!516048 m!497569))

(assert (=> b!516048 m!497563))

(declare-fun m!497571 () Bool)

(assert (=> b!516048 m!497571))

(assert (=> b!516048 m!497563))

(declare-fun m!497573 () Bool)

(assert (=> b!516048 m!497573))

(push 1)

