; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50254 () Bool)

(assert start!50254)

(declare-fun b!549708 () Bool)

(declare-fun res!343004 () Bool)

(declare-fun e!317404 () Bool)

(assert (=> b!549708 (=> (not res!343004) (not e!317404))))

(declare-datatypes ((array!34661 0))(
  ( (array!34662 (arr!16642 (Array (_ BitVec 32) (_ BitVec 64))) (size!17006 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34661)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549708 (= res!343004 (validKeyInArray!0 (select (arr!16642 a!3118) j!142)))))

(declare-fun b!549709 () Bool)

(declare-fun e!317403 () Bool)

(assert (=> b!549709 (= e!317404 e!317403)))

(declare-fun res!343007 () Bool)

(assert (=> b!549709 (=> (not res!343007) (not e!317403))))

(declare-datatypes ((SeekEntryResult!5098 0))(
  ( (MissingZero!5098 (index!22619 (_ BitVec 32))) (Found!5098 (index!22620 (_ BitVec 32))) (Intermediate!5098 (undefined!5910 Bool) (index!22621 (_ BitVec 32)) (x!51575 (_ BitVec 32))) (Undefined!5098) (MissingVacant!5098 (index!22622 (_ BitVec 32))) )
))
(declare-fun lt!250330 () SeekEntryResult!5098)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549709 (= res!343007 (or (= lt!250330 (MissingZero!5098 i!1132)) (= lt!250330 (MissingVacant!5098 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34661 (_ BitVec 32)) SeekEntryResult!5098)

(assert (=> b!549709 (= lt!250330 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!549710 () Bool)

(declare-fun res!343008 () Bool)

(assert (=> b!549710 (=> (not res!343008) (not e!317404))))

(declare-fun arrayContainsKey!0 (array!34661 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549710 (= res!343008 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!343006 () Bool)

(assert (=> start!50254 (=> (not res!343006) (not e!317404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50254 (= res!343006 (validMask!0 mask!3119))))

(assert (=> start!50254 e!317404))

(assert (=> start!50254 true))

(declare-fun array_inv!12416 (array!34661) Bool)

(assert (=> start!50254 (array_inv!12416 a!3118)))

(declare-fun b!549711 () Bool)

(declare-fun res!343003 () Bool)

(assert (=> b!549711 (=> (not res!343003) (not e!317404))))

(assert (=> b!549711 (= res!343003 (validKeyInArray!0 k0!1914))))

(declare-fun b!549712 () Bool)

(assert (=> b!549712 (= e!317403 (not (bvsge mask!3119 #b00000000000000000000000000000000)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34661 (_ BitVec 32)) Bool)

(assert (=> b!549712 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!16970 0))(
  ( (Unit!16971) )
))
(declare-fun lt!250331 () Unit!16970)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34661 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16970)

(assert (=> b!549712 (= lt!250331 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!549713 () Bool)

(declare-fun res!343002 () Bool)

(assert (=> b!549713 (=> (not res!343002) (not e!317403))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34661 (_ BitVec 32)) SeekEntryResult!5098)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549713 (= res!343002 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16642 a!3118) j!142) mask!3119) (select (arr!16642 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16642 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16642 a!3118) i!1132 k0!1914) j!142) (array!34662 (store (arr!16642 a!3118) i!1132 k0!1914) (size!17006 a!3118)) mask!3119)))))

(declare-fun b!549714 () Bool)

(declare-fun res!343010 () Bool)

(assert (=> b!549714 (=> (not res!343010) (not e!317404))))

(assert (=> b!549714 (= res!343010 (and (= (size!17006 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17006 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17006 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549715 () Bool)

(declare-fun res!343005 () Bool)

(assert (=> b!549715 (=> (not res!343005) (not e!317403))))

(declare-datatypes ((List!10775 0))(
  ( (Nil!10772) (Cons!10771 (h!11744 (_ BitVec 64)) (t!17011 List!10775)) )
))
(declare-fun arrayNoDuplicates!0 (array!34661 (_ BitVec 32) List!10775) Bool)

(assert (=> b!549715 (= res!343005 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10772))))

(declare-fun b!549716 () Bool)

(declare-fun res!343009 () Bool)

(assert (=> b!549716 (=> (not res!343009) (not e!317403))))

(assert (=> b!549716 (= res!343009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50254 res!343006) b!549714))

(assert (= (and b!549714 res!343010) b!549708))

(assert (= (and b!549708 res!343004) b!549711))

(assert (= (and b!549711 res!343003) b!549710))

(assert (= (and b!549710 res!343008) b!549709))

(assert (= (and b!549709 res!343007) b!549716))

(assert (= (and b!549716 res!343009) b!549715))

(assert (= (and b!549715 res!343005) b!549713))

(assert (= (and b!549713 res!343002) b!549712))

(declare-fun m!526709 () Bool)

(assert (=> b!549709 m!526709))

(declare-fun m!526711 () Bool)

(assert (=> b!549715 m!526711))

(declare-fun m!526713 () Bool)

(assert (=> start!50254 m!526713))

(declare-fun m!526715 () Bool)

(assert (=> start!50254 m!526715))

(declare-fun m!526717 () Bool)

(assert (=> b!549716 m!526717))

(declare-fun m!526719 () Bool)

(assert (=> b!549711 m!526719))

(declare-fun m!526721 () Bool)

(assert (=> b!549708 m!526721))

(assert (=> b!549708 m!526721))

(declare-fun m!526723 () Bool)

(assert (=> b!549708 m!526723))

(declare-fun m!526725 () Bool)

(assert (=> b!549710 m!526725))

(assert (=> b!549713 m!526721))

(declare-fun m!526727 () Bool)

(assert (=> b!549713 m!526727))

(assert (=> b!549713 m!526721))

(declare-fun m!526729 () Bool)

(assert (=> b!549713 m!526729))

(declare-fun m!526731 () Bool)

(assert (=> b!549713 m!526731))

(assert (=> b!549713 m!526729))

(declare-fun m!526733 () Bool)

(assert (=> b!549713 m!526733))

(assert (=> b!549713 m!526727))

(assert (=> b!549713 m!526721))

(declare-fun m!526735 () Bool)

(assert (=> b!549713 m!526735))

(declare-fun m!526737 () Bool)

(assert (=> b!549713 m!526737))

(assert (=> b!549713 m!526729))

(assert (=> b!549713 m!526731))

(declare-fun m!526739 () Bool)

(assert (=> b!549712 m!526739))

(declare-fun m!526741 () Bool)

(assert (=> b!549712 m!526741))

(check-sat (not b!549708) (not b!549709) (not b!549716) (not b!549713) (not b!549715) (not start!50254) (not b!549712) (not b!549710) (not b!549711))
(check-sat)
