; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45202 () Bool)

(assert start!45202)

(declare-fun b!495796 () Bool)

(declare-fun res!298340 () Bool)

(declare-fun e!290812 () Bool)

(assert (=> b!495796 (=> (not res!298340) (not e!290812))))

(declare-datatypes ((array!32050 0))(
  ( (array!32051 (arr!15405 (Array (_ BitVec 32) (_ BitVec 64))) (size!15769 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32050)

(declare-datatypes ((List!9616 0))(
  ( (Nil!9613) (Cons!9612 (h!10483 (_ BitVec 64)) (t!15852 List!9616)) )
))
(declare-fun arrayNoDuplicates!0 (array!32050 (_ BitVec 32) List!9616) Bool)

(assert (=> b!495796 (= res!298340 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9613))))

(declare-fun b!495797 () Bool)

(declare-fun res!298339 () Bool)

(assert (=> b!495797 (=> (not res!298339) (not e!290812))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32050 (_ BitVec 32)) Bool)

(assert (=> b!495797 (= res!298339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!298341 () Bool)

(declare-fun e!290814 () Bool)

(assert (=> start!45202 (=> (not res!298341) (not e!290814))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45202 (= res!298341 (validMask!0 mask!3524))))

(assert (=> start!45202 e!290814))

(assert (=> start!45202 true))

(declare-fun array_inv!11179 (array!32050) Bool)

(assert (=> start!45202 (array_inv!11179 a!3235)))

(declare-fun b!495798 () Bool)

(declare-fun e!290813 () Bool)

(assert (=> b!495798 (= e!290813 true)))

(declare-datatypes ((SeekEntryResult!3879 0))(
  ( (MissingZero!3879 (index!17695 (_ BitVec 32))) (Found!3879 (index!17696 (_ BitVec 32))) (Intermediate!3879 (undefined!4691 Bool) (index!17697 (_ BitVec 32)) (x!46790 (_ BitVec 32))) (Undefined!3879) (MissingVacant!3879 (index!17698 (_ BitVec 32))) )
))
(declare-fun lt!224501 () SeekEntryResult!3879)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!495798 (and (bvslt (x!46790 lt!224501) #b01111111111111111111111111111110) (or (= (select (arr!15405 a!3235) (index!17697 lt!224501)) (select (arr!15405 a!3235) j!176)) (= (select (arr!15405 a!3235) (index!17697 lt!224501)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15405 a!3235) (index!17697 lt!224501)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495799 () Bool)

(declare-fun res!298336 () Bool)

(assert (=> b!495799 (=> (not res!298336) (not e!290814))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495799 (= res!298336 (validKeyInArray!0 (select (arr!15405 a!3235) j!176)))))

(declare-fun b!495800 () Bool)

(declare-fun res!298342 () Bool)

(assert (=> b!495800 (=> (not res!298342) (not e!290814))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!495800 (= res!298342 (validKeyInArray!0 k!2280))))

(declare-fun e!290811 () Bool)

(declare-fun b!495801 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32050 (_ BitVec 32)) SeekEntryResult!3879)

(assert (=> b!495801 (= e!290811 (= (seekEntryOrOpen!0 (select (arr!15405 a!3235) j!176) a!3235 mask!3524) (Found!3879 j!176)))))

(declare-fun b!495802 () Bool)

(declare-fun res!298338 () Bool)

(assert (=> b!495802 (=> (not res!298338) (not e!290814))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!495802 (= res!298338 (and (= (size!15769 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15769 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15769 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495803 () Bool)

(assert (=> b!495803 (= e!290814 e!290812)))

(declare-fun res!298343 () Bool)

(assert (=> b!495803 (=> (not res!298343) (not e!290812))))

(declare-fun lt!224502 () SeekEntryResult!3879)

(assert (=> b!495803 (= res!298343 (or (= lt!224502 (MissingZero!3879 i!1204)) (= lt!224502 (MissingVacant!3879 i!1204))))))

(assert (=> b!495803 (= lt!224502 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!495804 () Bool)

(declare-fun res!298335 () Bool)

(assert (=> b!495804 (=> res!298335 e!290813)))

(assert (=> b!495804 (= res!298335 (or (undefined!4691 lt!224501) (not (is-Intermediate!3879 lt!224501))))))

(declare-fun b!495805 () Bool)

(assert (=> b!495805 (= e!290812 (not e!290813))))

(declare-fun res!298337 () Bool)

(assert (=> b!495805 (=> res!298337 e!290813)))

(declare-fun lt!224500 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32050 (_ BitVec 32)) SeekEntryResult!3879)

(assert (=> b!495805 (= res!298337 (= lt!224501 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224500 (select (store (arr!15405 a!3235) i!1204 k!2280) j!176) (array!32051 (store (arr!15405 a!3235) i!1204 k!2280) (size!15769 a!3235)) mask!3524)))))

(declare-fun lt!224503 () (_ BitVec 32))

(assert (=> b!495805 (= lt!224501 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224503 (select (arr!15405 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495805 (= lt!224500 (toIndex!0 (select (store (arr!15405 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!495805 (= lt!224503 (toIndex!0 (select (arr!15405 a!3235) j!176) mask!3524))))

(assert (=> b!495805 e!290811))

(declare-fun res!298333 () Bool)

(assert (=> b!495805 (=> (not res!298333) (not e!290811))))

(assert (=> b!495805 (= res!298333 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14696 0))(
  ( (Unit!14697) )
))
(declare-fun lt!224504 () Unit!14696)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32050 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14696)

(assert (=> b!495805 (= lt!224504 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495806 () Bool)

(declare-fun res!298334 () Bool)

(assert (=> b!495806 (=> (not res!298334) (not e!290814))))

(declare-fun arrayContainsKey!0 (array!32050 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495806 (= res!298334 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45202 res!298341) b!495802))

(assert (= (and b!495802 res!298338) b!495799))

(assert (= (and b!495799 res!298336) b!495800))

(assert (= (and b!495800 res!298342) b!495806))

(assert (= (and b!495806 res!298334) b!495803))

(assert (= (and b!495803 res!298343) b!495797))

(assert (= (and b!495797 res!298339) b!495796))

(assert (= (and b!495796 res!298340) b!495805))

(assert (= (and b!495805 res!298333) b!495801))

(assert (= (and b!495805 (not res!298337)) b!495804))

(assert (= (and b!495804 (not res!298335)) b!495798))

(declare-fun m!477001 () Bool)

(assert (=> b!495800 m!477001))

(declare-fun m!477003 () Bool)

(assert (=> b!495797 m!477003))

(declare-fun m!477005 () Bool)

(assert (=> b!495806 m!477005))

(declare-fun m!477007 () Bool)

(assert (=> b!495801 m!477007))

(assert (=> b!495801 m!477007))

(declare-fun m!477009 () Bool)

(assert (=> b!495801 m!477009))

(declare-fun m!477011 () Bool)

(assert (=> b!495798 m!477011))

(assert (=> b!495798 m!477007))

(declare-fun m!477013 () Bool)

(assert (=> b!495796 m!477013))

(assert (=> b!495799 m!477007))

(assert (=> b!495799 m!477007))

(declare-fun m!477015 () Bool)

(assert (=> b!495799 m!477015))

(declare-fun m!477017 () Bool)

(assert (=> b!495803 m!477017))

(declare-fun m!477019 () Bool)

(assert (=> b!495805 m!477019))

(declare-fun m!477021 () Bool)

(assert (=> b!495805 m!477021))

(declare-fun m!477023 () Bool)

(assert (=> b!495805 m!477023))

(declare-fun m!477025 () Bool)

(assert (=> b!495805 m!477025))

(assert (=> b!495805 m!477021))

(assert (=> b!495805 m!477007))

(declare-fun m!477027 () Bool)

(assert (=> b!495805 m!477027))

(assert (=> b!495805 m!477007))

(declare-fun m!477029 () Bool)

(assert (=> b!495805 m!477029))

(assert (=> b!495805 m!477007))

(declare-fun m!477031 () Bool)

(assert (=> b!495805 m!477031))

(assert (=> b!495805 m!477021))

(declare-fun m!477033 () Bool)

(assert (=> b!495805 m!477033))

(declare-fun m!477035 () Bool)

(assert (=> start!45202 m!477035))

(declare-fun m!477037 () Bool)

(assert (=> start!45202 m!477037))

(push 1)

