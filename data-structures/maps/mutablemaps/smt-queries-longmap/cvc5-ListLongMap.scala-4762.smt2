; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65650 () Bool)

(assert start!65650)

(declare-fun b!751103 () Bool)

(declare-fun e!419040 () Bool)

(declare-fun e!419039 () Bool)

(assert (=> b!751103 (= e!419040 (not e!419039))))

(declare-fun res!507165 () Bool)

(assert (=> b!751103 (=> res!507165 e!419039)))

(declare-datatypes ((SeekEntryResult!7605 0))(
  ( (MissingZero!7605 (index!32787 (_ BitVec 32))) (Found!7605 (index!32788 (_ BitVec 32))) (Intermediate!7605 (undefined!8417 Bool) (index!32789 (_ BitVec 32)) (x!63740 (_ BitVec 32))) (Undefined!7605) (MissingVacant!7605 (index!32790 (_ BitVec 32))) )
))
(declare-fun lt!334040 () SeekEntryResult!7605)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!751103 (= res!507165 (or (not (is-Intermediate!7605 lt!334040)) (bvslt x!1131 (x!63740 lt!334040)) (not (= x!1131 (x!63740 lt!334040))) (not (= index!1321 (index!32789 lt!334040)))))))

(declare-fun e!419041 () Bool)

(assert (=> b!751103 e!419041))

(declare-fun res!507161 () Bool)

(assert (=> b!751103 (=> (not res!507161) (not e!419041))))

(declare-fun lt!334046 () SeekEntryResult!7605)

(declare-fun lt!334039 () SeekEntryResult!7605)

(assert (=> b!751103 (= res!507161 (= lt!334046 lt!334039))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!751103 (= lt!334039 (Found!7605 j!159))))

(declare-datatypes ((array!41776 0))(
  ( (array!41777 (arr!19998 (Array (_ BitVec 32) (_ BitVec 64))) (size!20419 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41776)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41776 (_ BitVec 32)) SeekEntryResult!7605)

(assert (=> b!751103 (= lt!334046 (seekEntryOrOpen!0 (select (arr!19998 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41776 (_ BitVec 32)) Bool)

(assert (=> b!751103 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25822 0))(
  ( (Unit!25823) )
))
(declare-fun lt!334045 () Unit!25822)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41776 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25822)

(assert (=> b!751103 (= lt!334045 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!751104 () Bool)

(declare-fun res!507166 () Bool)

(declare-fun e!419043 () Bool)

(assert (=> b!751104 (=> (not res!507166) (not e!419043))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!751104 (= res!507166 (validKeyInArray!0 k!2102))))

(declare-fun lt!334043 () array!41776)

(declare-fun b!751105 () Bool)

(declare-fun e!419042 () Bool)

(declare-fun lt!334047 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41776 (_ BitVec 32)) SeekEntryResult!7605)

(assert (=> b!751105 (= e!419042 (= (seekEntryOrOpen!0 lt!334047 lt!334043 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334047 lt!334043 mask!3328)))))

(declare-fun b!751106 () Bool)

(declare-fun res!507171 () Bool)

(declare-fun e!419045 () Bool)

(assert (=> b!751106 (=> (not res!507171) (not e!419045))))

(declare-datatypes ((List!14053 0))(
  ( (Nil!14050) (Cons!14049 (h!15121 (_ BitVec 64)) (t!20376 List!14053)) )
))
(declare-fun arrayNoDuplicates!0 (array!41776 (_ BitVec 32) List!14053) Bool)

(assert (=> b!751106 (= res!507171 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14050))))

(declare-fun b!751107 () Bool)

(declare-fun res!507154 () Bool)

(declare-fun e!419044 () Bool)

(assert (=> b!751107 (=> (not res!507154) (not e!419044))))

(declare-fun e!419046 () Bool)

(assert (=> b!751107 (= res!507154 e!419046)))

(declare-fun c!82355 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!751107 (= c!82355 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!751108 () Bool)

(assert (=> b!751108 (= e!419043 e!419045)))

(declare-fun res!507162 () Bool)

(assert (=> b!751108 (=> (not res!507162) (not e!419045))))

(declare-fun lt!334049 () SeekEntryResult!7605)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!751108 (= res!507162 (or (= lt!334049 (MissingZero!7605 i!1173)) (= lt!334049 (MissingVacant!7605 i!1173))))))

(assert (=> b!751108 (= lt!334049 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!751109 () Bool)

(declare-fun e!419048 () Bool)

(assert (=> b!751109 (= e!419039 e!419048)))

(declare-fun res!507167 () Bool)

(assert (=> b!751109 (=> res!507167 e!419048)))

(declare-fun lt!334044 () (_ BitVec 64))

(assert (=> b!751109 (= res!507167 (= lt!334044 lt!334047))))

(assert (=> b!751109 (= lt!334044 (select (store (arr!19998 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!751110 () Bool)

(declare-fun lt!334042 () SeekEntryResult!7605)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41776 (_ BitVec 32)) SeekEntryResult!7605)

(assert (=> b!751110 (= e!419046 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19998 a!3186) j!159) a!3186 mask!3328) lt!334042))))

(declare-fun b!751111 () Bool)

(declare-fun res!507160 () Bool)

(assert (=> b!751111 (=> (not res!507160) (not e!419043))))

(declare-fun arrayContainsKey!0 (array!41776 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!751111 (= res!507160 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!751112 () Bool)

(assert (=> b!751112 (= e!419041 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19998 a!3186) j!159) a!3186 mask!3328) lt!334039))))

(declare-fun b!751113 () Bool)

(declare-fun res!507157 () Bool)

(assert (=> b!751113 (=> res!507157 e!419039)))

(assert (=> b!751113 (= res!507157 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19998 a!3186) j!159) a!3186 mask!3328) lt!334039)))))

(declare-fun b!751114 () Bool)

(declare-fun res!507164 () Bool)

(assert (=> b!751114 (=> (not res!507164) (not e!419043))))

(assert (=> b!751114 (= res!507164 (validKeyInArray!0 (select (arr!19998 a!3186) j!159)))))

(declare-fun res!507168 () Bool)

(assert (=> start!65650 (=> (not res!507168) (not e!419043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65650 (= res!507168 (validMask!0 mask!3328))))

(assert (=> start!65650 e!419043))

(assert (=> start!65650 true))

(declare-fun array_inv!15772 (array!41776) Bool)

(assert (=> start!65650 (array_inv!15772 a!3186)))

(declare-fun b!751115 () Bool)

(declare-fun res!507158 () Bool)

(assert (=> b!751115 (=> (not res!507158) (not e!419044))))

(assert (=> b!751115 (= res!507158 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19998 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!751116 () Bool)

(declare-fun e!419047 () Unit!25822)

(declare-fun Unit!25824 () Unit!25822)

(assert (=> b!751116 (= e!419047 Unit!25824)))

(declare-fun b!751117 () Bool)

(assert (=> b!751117 (= e!419046 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19998 a!3186) j!159) a!3186 mask!3328) (Found!7605 j!159)))))

(declare-fun b!751118 () Bool)

(assert (=> b!751118 (= e!419048 true)))

(assert (=> b!751118 e!419042))

(declare-fun res!507155 () Bool)

(assert (=> b!751118 (=> (not res!507155) (not e!419042))))

(assert (=> b!751118 (= res!507155 (= lt!334044 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334041 () Unit!25822)

(assert (=> b!751118 (= lt!334041 e!419047)))

(declare-fun c!82356 () Bool)

(assert (=> b!751118 (= c!82356 (= lt!334044 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!751119 () Bool)

(assert (=> b!751119 (= e!419045 e!419044)))

(declare-fun res!507163 () Bool)

(assert (=> b!751119 (=> (not res!507163) (not e!419044))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!751119 (= res!507163 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19998 a!3186) j!159) mask!3328) (select (arr!19998 a!3186) j!159) a!3186 mask!3328) lt!334042))))

(assert (=> b!751119 (= lt!334042 (Intermediate!7605 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!751120 () Bool)

(declare-fun res!507156 () Bool)

(assert (=> b!751120 (=> (not res!507156) (not e!419045))))

(assert (=> b!751120 (= res!507156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!751121 () Bool)

(assert (=> b!751121 (= e!419044 e!419040)))

(declare-fun res!507159 () Bool)

(assert (=> b!751121 (=> (not res!507159) (not e!419040))))

(declare-fun lt!334048 () SeekEntryResult!7605)

(assert (=> b!751121 (= res!507159 (= lt!334048 lt!334040))))

(assert (=> b!751121 (= lt!334040 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334047 lt!334043 mask!3328))))

(assert (=> b!751121 (= lt!334048 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334047 mask!3328) lt!334047 lt!334043 mask!3328))))

(assert (=> b!751121 (= lt!334047 (select (store (arr!19998 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!751121 (= lt!334043 (array!41777 (store (arr!19998 a!3186) i!1173 k!2102) (size!20419 a!3186)))))

(declare-fun b!751122 () Bool)

(declare-fun res!507170 () Bool)

(assert (=> b!751122 (=> (not res!507170) (not e!419043))))

(assert (=> b!751122 (= res!507170 (and (= (size!20419 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20419 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20419 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!751123 () Bool)

(declare-fun res!507169 () Bool)

(assert (=> b!751123 (=> (not res!507169) (not e!419045))))

(assert (=> b!751123 (= res!507169 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20419 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20419 a!3186))))))

(declare-fun b!751124 () Bool)

(declare-fun Unit!25825 () Unit!25822)

(assert (=> b!751124 (= e!419047 Unit!25825)))

(assert (=> b!751124 false))

(assert (= (and start!65650 res!507168) b!751122))

(assert (= (and b!751122 res!507170) b!751114))

(assert (= (and b!751114 res!507164) b!751104))

(assert (= (and b!751104 res!507166) b!751111))

(assert (= (and b!751111 res!507160) b!751108))

(assert (= (and b!751108 res!507162) b!751120))

(assert (= (and b!751120 res!507156) b!751106))

(assert (= (and b!751106 res!507171) b!751123))

(assert (= (and b!751123 res!507169) b!751119))

(assert (= (and b!751119 res!507163) b!751115))

(assert (= (and b!751115 res!507158) b!751107))

(assert (= (and b!751107 c!82355) b!751110))

(assert (= (and b!751107 (not c!82355)) b!751117))

(assert (= (and b!751107 res!507154) b!751121))

(assert (= (and b!751121 res!507159) b!751103))

(assert (= (and b!751103 res!507161) b!751112))

(assert (= (and b!751103 (not res!507165)) b!751113))

(assert (= (and b!751113 (not res!507157)) b!751109))

(assert (= (and b!751109 (not res!507167)) b!751118))

(assert (= (and b!751118 c!82356) b!751124))

(assert (= (and b!751118 (not c!82356)) b!751116))

(assert (= (and b!751118 res!507155) b!751105))

(declare-fun m!700429 () Bool)

(assert (=> b!751111 m!700429))

(declare-fun m!700431 () Bool)

(assert (=> b!751119 m!700431))

(assert (=> b!751119 m!700431))

(declare-fun m!700433 () Bool)

(assert (=> b!751119 m!700433))

(assert (=> b!751119 m!700433))

(assert (=> b!751119 m!700431))

(declare-fun m!700435 () Bool)

(assert (=> b!751119 m!700435))

(declare-fun m!700437 () Bool)

(assert (=> b!751115 m!700437))

(assert (=> b!751113 m!700431))

(assert (=> b!751113 m!700431))

(declare-fun m!700439 () Bool)

(assert (=> b!751113 m!700439))

(assert (=> b!751103 m!700431))

(assert (=> b!751103 m!700431))

(declare-fun m!700441 () Bool)

(assert (=> b!751103 m!700441))

(declare-fun m!700443 () Bool)

(assert (=> b!751103 m!700443))

(declare-fun m!700445 () Bool)

(assert (=> b!751103 m!700445))

(declare-fun m!700447 () Bool)

(assert (=> start!65650 m!700447))

(declare-fun m!700449 () Bool)

(assert (=> start!65650 m!700449))

(declare-fun m!700451 () Bool)

(assert (=> b!751108 m!700451))

(assert (=> b!751110 m!700431))

(assert (=> b!751110 m!700431))

(declare-fun m!700453 () Bool)

(assert (=> b!751110 m!700453))

(declare-fun m!700455 () Bool)

(assert (=> b!751105 m!700455))

(declare-fun m!700457 () Bool)

(assert (=> b!751105 m!700457))

(assert (=> b!751117 m!700431))

(assert (=> b!751117 m!700431))

(assert (=> b!751117 m!700439))

(declare-fun m!700459 () Bool)

(assert (=> b!751106 m!700459))

(declare-fun m!700461 () Bool)

(assert (=> b!751120 m!700461))

(assert (=> b!751112 m!700431))

(assert (=> b!751112 m!700431))

(declare-fun m!700463 () Bool)

(assert (=> b!751112 m!700463))

(declare-fun m!700465 () Bool)

(assert (=> b!751104 m!700465))

(declare-fun m!700467 () Bool)

(assert (=> b!751109 m!700467))

(declare-fun m!700469 () Bool)

(assert (=> b!751109 m!700469))

(declare-fun m!700471 () Bool)

(assert (=> b!751121 m!700471))

(declare-fun m!700473 () Bool)

(assert (=> b!751121 m!700473))

(declare-fun m!700475 () Bool)

(assert (=> b!751121 m!700475))

(assert (=> b!751121 m!700467))

(declare-fun m!700477 () Bool)

(assert (=> b!751121 m!700477))

(assert (=> b!751121 m!700471))

(assert (=> b!751114 m!700431))

(assert (=> b!751114 m!700431))

(declare-fun m!700479 () Bool)

(assert (=> b!751114 m!700479))

(push 1)

