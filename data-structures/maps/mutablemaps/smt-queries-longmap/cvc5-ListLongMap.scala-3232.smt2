; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45208 () Bool)

(assert start!45208)

(declare-fun b!495895 () Bool)

(declare-fun e!290860 () Bool)

(assert (=> b!495895 (= e!290860 true)))

(declare-datatypes ((SeekEntryResult!3882 0))(
  ( (MissingZero!3882 (index!17707 (_ BitVec 32))) (Found!3882 (index!17708 (_ BitVec 32))) (Intermediate!3882 (undefined!4694 Bool) (index!17709 (_ BitVec 32)) (x!46801 (_ BitVec 32))) (Undefined!3882) (MissingVacant!3882 (index!17710 (_ BitVec 32))) )
))
(declare-fun lt!224545 () SeekEntryResult!3882)

(declare-datatypes ((array!32056 0))(
  ( (array!32057 (arr!15408 (Array (_ BitVec 32) (_ BitVec 64))) (size!15772 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32056)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!495895 (and (bvslt (x!46801 lt!224545) #b01111111111111111111111111111110) (or (= (select (arr!15408 a!3235) (index!17709 lt!224545)) (select (arr!15408 a!3235) j!176)) (= (select (arr!15408 a!3235) (index!17709 lt!224545)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15408 a!3235) (index!17709 lt!224545)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495896 () Bool)

(declare-fun e!290856 () Bool)

(assert (=> b!495896 (= e!290856 (not e!290860))))

(declare-fun res!298442 () Bool)

(assert (=> b!495896 (=> res!298442 e!290860)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!224546 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32056 (_ BitVec 32)) SeekEntryResult!3882)

(assert (=> b!495896 (= res!298442 (= lt!224545 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224546 (select (store (arr!15408 a!3235) i!1204 k!2280) j!176) (array!32057 (store (arr!15408 a!3235) i!1204 k!2280) (size!15772 a!3235)) mask!3524)))))

(declare-fun lt!224547 () (_ BitVec 32))

(assert (=> b!495896 (= lt!224545 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224547 (select (arr!15408 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495896 (= lt!224546 (toIndex!0 (select (store (arr!15408 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!495896 (= lt!224547 (toIndex!0 (select (arr!15408 a!3235) j!176) mask!3524))))

(declare-fun e!290857 () Bool)

(assert (=> b!495896 e!290857))

(declare-fun res!298441 () Bool)

(assert (=> b!495896 (=> (not res!298441) (not e!290857))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32056 (_ BitVec 32)) Bool)

(assert (=> b!495896 (= res!298441 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14702 0))(
  ( (Unit!14703) )
))
(declare-fun lt!224549 () Unit!14702)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32056 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14702)

(assert (=> b!495896 (= lt!224549 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495897 () Bool)

(declare-fun res!298436 () Bool)

(declare-fun e!290858 () Bool)

(assert (=> b!495897 (=> (not res!298436) (not e!290858))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495897 (= res!298436 (validKeyInArray!0 (select (arr!15408 a!3235) j!176)))))

(declare-fun res!298440 () Bool)

(assert (=> start!45208 (=> (not res!298440) (not e!290858))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45208 (= res!298440 (validMask!0 mask!3524))))

(assert (=> start!45208 e!290858))

(assert (=> start!45208 true))

(declare-fun array_inv!11182 (array!32056) Bool)

(assert (=> start!45208 (array_inv!11182 a!3235)))

(declare-fun b!495898 () Bool)

(declare-fun res!298432 () Bool)

(assert (=> b!495898 (=> (not res!298432) (not e!290858))))

(assert (=> b!495898 (= res!298432 (validKeyInArray!0 k!2280))))

(declare-fun b!495899 () Bool)

(declare-fun res!298437 () Bool)

(assert (=> b!495899 (=> (not res!298437) (not e!290858))))

(assert (=> b!495899 (= res!298437 (and (= (size!15772 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15772 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15772 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495900 () Bool)

(declare-fun res!298435 () Bool)

(assert (=> b!495900 (=> (not res!298435) (not e!290856))))

(assert (=> b!495900 (= res!298435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495901 () Bool)

(declare-fun res!298434 () Bool)

(assert (=> b!495901 (=> res!298434 e!290860)))

(assert (=> b!495901 (= res!298434 (or (undefined!4694 lt!224545) (not (is-Intermediate!3882 lt!224545))))))

(declare-fun b!495902 () Bool)

(declare-fun res!298433 () Bool)

(assert (=> b!495902 (=> (not res!298433) (not e!290856))))

(declare-datatypes ((List!9619 0))(
  ( (Nil!9616) (Cons!9615 (h!10486 (_ BitVec 64)) (t!15855 List!9619)) )
))
(declare-fun arrayNoDuplicates!0 (array!32056 (_ BitVec 32) List!9619) Bool)

(assert (=> b!495902 (= res!298433 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9616))))

(declare-fun b!495903 () Bool)

(assert (=> b!495903 (= e!290858 e!290856)))

(declare-fun res!298438 () Bool)

(assert (=> b!495903 (=> (not res!298438) (not e!290856))))

(declare-fun lt!224548 () SeekEntryResult!3882)

(assert (=> b!495903 (= res!298438 (or (= lt!224548 (MissingZero!3882 i!1204)) (= lt!224548 (MissingVacant!3882 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32056 (_ BitVec 32)) SeekEntryResult!3882)

(assert (=> b!495903 (= lt!224548 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!495904 () Bool)

(assert (=> b!495904 (= e!290857 (= (seekEntryOrOpen!0 (select (arr!15408 a!3235) j!176) a!3235 mask!3524) (Found!3882 j!176)))))

(declare-fun b!495905 () Bool)

(declare-fun res!298439 () Bool)

(assert (=> b!495905 (=> (not res!298439) (not e!290858))))

(declare-fun arrayContainsKey!0 (array!32056 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495905 (= res!298439 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45208 res!298440) b!495899))

(assert (= (and b!495899 res!298437) b!495897))

(assert (= (and b!495897 res!298436) b!495898))

(assert (= (and b!495898 res!298432) b!495905))

(assert (= (and b!495905 res!298439) b!495903))

(assert (= (and b!495903 res!298438) b!495900))

(assert (= (and b!495900 res!298435) b!495902))

(assert (= (and b!495902 res!298433) b!495896))

(assert (= (and b!495896 res!298441) b!495904))

(assert (= (and b!495896 (not res!298442)) b!495901))

(assert (= (and b!495901 (not res!298434)) b!495895))

(declare-fun m!477115 () Bool)

(assert (=> b!495900 m!477115))

(declare-fun m!477117 () Bool)

(assert (=> b!495898 m!477117))

(declare-fun m!477119 () Bool)

(assert (=> b!495902 m!477119))

(declare-fun m!477121 () Bool)

(assert (=> b!495897 m!477121))

(assert (=> b!495897 m!477121))

(declare-fun m!477123 () Bool)

(assert (=> b!495897 m!477123))

(declare-fun m!477125 () Bool)

(assert (=> b!495896 m!477125))

(declare-fun m!477127 () Bool)

(assert (=> b!495896 m!477127))

(declare-fun m!477129 () Bool)

(assert (=> b!495896 m!477129))

(assert (=> b!495896 m!477121))

(declare-fun m!477131 () Bool)

(assert (=> b!495896 m!477131))

(assert (=> b!495896 m!477121))

(assert (=> b!495896 m!477129))

(declare-fun m!477133 () Bool)

(assert (=> b!495896 m!477133))

(declare-fun m!477135 () Bool)

(assert (=> b!495896 m!477135))

(assert (=> b!495896 m!477129))

(declare-fun m!477137 () Bool)

(assert (=> b!495896 m!477137))

(assert (=> b!495896 m!477121))

(declare-fun m!477139 () Bool)

(assert (=> b!495896 m!477139))

(declare-fun m!477141 () Bool)

(assert (=> start!45208 m!477141))

(declare-fun m!477143 () Bool)

(assert (=> start!45208 m!477143))

(assert (=> b!495904 m!477121))

(assert (=> b!495904 m!477121))

(declare-fun m!477145 () Bool)

(assert (=> b!495904 m!477145))

(declare-fun m!477147 () Bool)

(assert (=> b!495895 m!477147))

(assert (=> b!495895 m!477121))

(declare-fun m!477149 () Bool)

(assert (=> b!495903 m!477149))

(declare-fun m!477151 () Bool)

(assert (=> b!495905 m!477151))

(push 1)

