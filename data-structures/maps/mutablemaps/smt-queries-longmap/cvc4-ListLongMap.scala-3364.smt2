; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46250 () Bool)

(assert start!46250)

(declare-fun b!511895 () Bool)

(declare-fun res!312710 () Bool)

(declare-fun e!299017 () Bool)

(assert (=> b!511895 (=> (not res!312710) (not e!299017))))

(declare-datatypes ((array!32864 0))(
  ( (array!32865 (arr!15806 (Array (_ BitVec 32) (_ BitVec 64))) (size!16170 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32864)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32864 (_ BitVec 32)) Bool)

(assert (=> b!511895 (= res!312710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511896 () Bool)

(declare-fun e!299020 () Bool)

(assert (=> b!511896 (= e!299020 e!299017)))

(declare-fun res!312714 () Bool)

(assert (=> b!511896 (=> (not res!312714) (not e!299017))))

(declare-datatypes ((SeekEntryResult!4280 0))(
  ( (MissingZero!4280 (index!19308 (_ BitVec 32))) (Found!4280 (index!19309 (_ BitVec 32))) (Intermediate!4280 (undefined!5092 Bool) (index!19310 (_ BitVec 32)) (x!48282 (_ BitVec 32))) (Undefined!4280) (MissingVacant!4280 (index!19311 (_ BitVec 32))) )
))
(declare-fun lt!234335 () SeekEntryResult!4280)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!511896 (= res!312714 (or (= lt!234335 (MissingZero!4280 i!1204)) (= lt!234335 (MissingVacant!4280 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32864 (_ BitVec 32)) SeekEntryResult!4280)

(assert (=> b!511896 (= lt!234335 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!511897 () Bool)

(declare-fun res!312709 () Bool)

(assert (=> b!511897 (=> (not res!312709) (not e!299020))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511897 (= res!312709 (validKeyInArray!0 k!2280))))

(declare-fun b!511898 () Bool)

(declare-fun res!312711 () Bool)

(assert (=> b!511898 (=> (not res!312711) (not e!299020))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!511898 (= res!312711 (validKeyInArray!0 (select (arr!15806 a!3235) j!176)))))

(declare-fun b!511899 () Bool)

(declare-fun res!312716 () Bool)

(assert (=> b!511899 (=> (not res!312716) (not e!299017))))

(declare-datatypes ((List!10017 0))(
  ( (Nil!10014) (Cons!10013 (h!10893 (_ BitVec 64)) (t!16253 List!10017)) )
))
(declare-fun arrayNoDuplicates!0 (array!32864 (_ BitVec 32) List!10017) Bool)

(assert (=> b!511899 (= res!312716 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10014))))

(declare-fun b!511901 () Bool)

(declare-fun res!312712 () Bool)

(declare-fun e!299019 () Bool)

(assert (=> b!511901 (=> res!312712 e!299019)))

(declare-fun lt!234334 () SeekEntryResult!4280)

(assert (=> b!511901 (= res!312712 (or (not (is-Intermediate!4280 lt!234334)) (not (undefined!5092 lt!234334))))))

(declare-fun b!511902 () Bool)

(declare-fun res!312715 () Bool)

(assert (=> b!511902 (=> (not res!312715) (not e!299020))))

(assert (=> b!511902 (= res!312715 (and (= (size!16170 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16170 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16170 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511903 () Bool)

(assert (=> b!511903 (= e!299017 (not e!299019))))

(declare-fun res!312707 () Bool)

(assert (=> b!511903 (=> res!312707 e!299019)))

(declare-fun lt!234338 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32864 (_ BitVec 32)) SeekEntryResult!4280)

(assert (=> b!511903 (= res!312707 (= lt!234334 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234338 (select (store (arr!15806 a!3235) i!1204 k!2280) j!176) (array!32865 (store (arr!15806 a!3235) i!1204 k!2280) (size!16170 a!3235)) mask!3524)))))

(declare-fun lt!234336 () (_ BitVec 32))

(assert (=> b!511903 (= lt!234334 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234336 (select (arr!15806 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511903 (= lt!234338 (toIndex!0 (select (store (arr!15806 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511903 (= lt!234336 (toIndex!0 (select (arr!15806 a!3235) j!176) mask!3524))))

(declare-fun lt!234333 () SeekEntryResult!4280)

(assert (=> b!511903 (= lt!234333 (Found!4280 j!176))))

(assert (=> b!511903 (= lt!234333 (seekEntryOrOpen!0 (select (arr!15806 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!511903 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15810 0))(
  ( (Unit!15811) )
))
(declare-fun lt!234337 () Unit!15810)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32864 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15810)

(assert (=> b!511903 (= lt!234337 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511904 () Bool)

(declare-fun res!312713 () Bool)

(assert (=> b!511904 (=> (not res!312713) (not e!299020))))

(declare-fun arrayContainsKey!0 (array!32864 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511904 (= res!312713 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511900 () Bool)

(assert (=> b!511900 (= e!299019 false)))

(assert (=> b!511900 (= lt!234333 Undefined!4280)))

(declare-fun res!312708 () Bool)

(assert (=> start!46250 (=> (not res!312708) (not e!299020))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46250 (= res!312708 (validMask!0 mask!3524))))

(assert (=> start!46250 e!299020))

(assert (=> start!46250 true))

(declare-fun array_inv!11580 (array!32864) Bool)

(assert (=> start!46250 (array_inv!11580 a!3235)))

(assert (= (and start!46250 res!312708) b!511902))

(assert (= (and b!511902 res!312715) b!511898))

(assert (= (and b!511898 res!312711) b!511897))

(assert (= (and b!511897 res!312709) b!511904))

(assert (= (and b!511904 res!312713) b!511896))

(assert (= (and b!511896 res!312714) b!511895))

(assert (= (and b!511895 res!312710) b!511899))

(assert (= (and b!511899 res!312716) b!511903))

(assert (= (and b!511903 (not res!312707)) b!511901))

(assert (= (and b!511901 (not res!312712)) b!511900))

(declare-fun m!493519 () Bool)

(assert (=> b!511898 m!493519))

(assert (=> b!511898 m!493519))

(declare-fun m!493521 () Bool)

(assert (=> b!511898 m!493521))

(declare-fun m!493523 () Bool)

(assert (=> b!511904 m!493523))

(declare-fun m!493525 () Bool)

(assert (=> b!511903 m!493525))

(declare-fun m!493527 () Bool)

(assert (=> b!511903 m!493527))

(assert (=> b!511903 m!493519))

(declare-fun m!493529 () Bool)

(assert (=> b!511903 m!493529))

(assert (=> b!511903 m!493519))

(declare-fun m!493531 () Bool)

(assert (=> b!511903 m!493531))

(assert (=> b!511903 m!493519))

(declare-fun m!493533 () Bool)

(assert (=> b!511903 m!493533))

(declare-fun m!493535 () Bool)

(assert (=> b!511903 m!493535))

(declare-fun m!493537 () Bool)

(assert (=> b!511903 m!493537))

(assert (=> b!511903 m!493535))

(declare-fun m!493539 () Bool)

(assert (=> b!511903 m!493539))

(assert (=> b!511903 m!493519))

(declare-fun m!493541 () Bool)

(assert (=> b!511903 m!493541))

(assert (=> b!511903 m!493535))

(declare-fun m!493543 () Bool)

(assert (=> b!511896 m!493543))

(declare-fun m!493545 () Bool)

(assert (=> b!511899 m!493545))

(declare-fun m!493547 () Bool)

(assert (=> start!46250 m!493547))

(declare-fun m!493549 () Bool)

(assert (=> start!46250 m!493549))

(declare-fun m!493551 () Bool)

(assert (=> b!511895 m!493551))

(declare-fun m!493553 () Bool)

(assert (=> b!511897 m!493553))

(push 1)

