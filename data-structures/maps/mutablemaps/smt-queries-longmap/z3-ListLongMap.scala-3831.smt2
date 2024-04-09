; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52558 () Bool)

(assert start!52558)

(declare-fun b!573392 () Bool)

(declare-fun res!362779 () Bool)

(declare-fun e!329871 () Bool)

(assert (=> b!573392 (=> (not res!362779) (not e!329871))))

(declare-datatypes ((array!35846 0))(
  ( (array!35847 (arr!17206 (Array (_ BitVec 32) (_ BitVec 64))) (size!17570 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35846)

(declare-datatypes ((List!11339 0))(
  ( (Nil!11336) (Cons!11335 (h!12365 (_ BitVec 64)) (t!17575 List!11339)) )
))
(declare-fun arrayNoDuplicates!0 (array!35846 (_ BitVec 32) List!11339) Bool)

(assert (=> b!573392 (= res!362779 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11336))))

(declare-fun b!573393 () Bool)

(declare-fun res!362777 () Bool)

(declare-fun e!329872 () Bool)

(assert (=> b!573393 (=> (not res!362777) (not e!329872))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!573393 (= res!362777 (validKeyInArray!0 k0!1914))))

(declare-fun b!573394 () Bool)

(declare-fun e!329878 () Bool)

(declare-fun e!329873 () Bool)

(assert (=> b!573394 (= e!329878 e!329873)))

(declare-fun res!362781 () Bool)

(assert (=> b!573394 (=> res!362781 e!329873)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!261896 () (_ BitVec 64))

(assert (=> b!573394 (= res!362781 (or (= lt!261896 (select (arr!17206 a!3118) j!142)) (= lt!261896 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5662 0))(
  ( (MissingZero!5662 (index!24875 (_ BitVec 32))) (Found!5662 (index!24876 (_ BitVec 32))) (Intermediate!5662 (undefined!6474 Bool) (index!24877 (_ BitVec 32)) (x!53775 (_ BitVec 32))) (Undefined!5662) (MissingVacant!5662 (index!24878 (_ BitVec 32))) )
))
(declare-fun lt!261897 () SeekEntryResult!5662)

(assert (=> b!573394 (= lt!261896 (select (arr!17206 a!3118) (index!24877 lt!261897)))))

(declare-fun res!362780 () Bool)

(assert (=> start!52558 (=> (not res!362780) (not e!329872))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52558 (= res!362780 (validMask!0 mask!3119))))

(assert (=> start!52558 e!329872))

(assert (=> start!52558 true))

(declare-fun array_inv!12980 (array!35846) Bool)

(assert (=> start!52558 (array_inv!12980 a!3118)))

(declare-fun e!329874 () Bool)

(declare-fun b!573395 () Bool)

(get-info :version)

(assert (=> b!573395 (= e!329874 (not (or (undefined!6474 lt!261897) (not ((_ is Intermediate!5662) lt!261897)) (let ((bdg!17977 (select (arr!17206 a!3118) (index!24877 lt!261897)))) (or (= bdg!17977 (select (arr!17206 a!3118) j!142)) (= bdg!17977 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt (index!24877 lt!261897) #b00000000000000000000000000000000) (bvsge (index!24877 lt!261897) (bvadd #b00000000000000000000000000000001 mask!3119)) (and (bvsle (x!53775 lt!261897) #b01111111111111111111111111111110) (bvsge (x!53775 lt!261897) #b00000000000000000000000000000000)))))))))

(declare-fun e!329875 () Bool)

(assert (=> b!573395 e!329875))

(declare-fun res!362785 () Bool)

(assert (=> b!573395 (=> (not res!362785) (not e!329875))))

(declare-fun lt!261899 () SeekEntryResult!5662)

(assert (=> b!573395 (= res!362785 (= lt!261899 (Found!5662 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35846 (_ BitVec 32)) SeekEntryResult!5662)

(assert (=> b!573395 (= lt!261899 (seekEntryOrOpen!0 (select (arr!17206 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35846 (_ BitVec 32)) Bool)

(assert (=> b!573395 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18026 0))(
  ( (Unit!18027) )
))
(declare-fun lt!261892 () Unit!18026)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35846 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18026)

(assert (=> b!573395 (= lt!261892 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!573396 () Bool)

(assert (=> b!573396 (= e!329872 e!329871)))

(declare-fun res!362786 () Bool)

(assert (=> b!573396 (=> (not res!362786) (not e!329871))))

(declare-fun lt!261893 () SeekEntryResult!5662)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!573396 (= res!362786 (or (= lt!261893 (MissingZero!5662 i!1132)) (= lt!261893 (MissingVacant!5662 i!1132))))))

(assert (=> b!573396 (= lt!261893 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!573397 () Bool)

(assert (=> b!573397 (= e!329871 e!329874)))

(declare-fun res!362787 () Bool)

(assert (=> b!573397 (=> (not res!362787) (not e!329874))))

(declare-fun lt!261891 () (_ BitVec 64))

(declare-fun lt!261894 () (_ BitVec 32))

(declare-fun lt!261895 () array!35846)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35846 (_ BitVec 32)) SeekEntryResult!5662)

(assert (=> b!573397 (= res!362787 (= lt!261897 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261894 lt!261891 lt!261895 mask!3119)))))

(declare-fun lt!261898 () (_ BitVec 32))

(assert (=> b!573397 (= lt!261897 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261898 (select (arr!17206 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!573397 (= lt!261894 (toIndex!0 lt!261891 mask!3119))))

(assert (=> b!573397 (= lt!261891 (select (store (arr!17206 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!573397 (= lt!261898 (toIndex!0 (select (arr!17206 a!3118) j!142) mask!3119))))

(assert (=> b!573397 (= lt!261895 (array!35847 (store (arr!17206 a!3118) i!1132 k0!1914) (size!17570 a!3118)))))

(declare-fun b!573398 () Bool)

(declare-fun res!362782 () Bool)

(assert (=> b!573398 (=> (not res!362782) (not e!329872))))

(assert (=> b!573398 (= res!362782 (and (= (size!17570 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17570 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17570 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!573399 () Bool)

(declare-fun res!362784 () Bool)

(assert (=> b!573399 (=> (not res!362784) (not e!329871))))

(assert (=> b!573399 (= res!362784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!573400 () Bool)

(declare-fun res!362778 () Bool)

(assert (=> b!573400 (=> (not res!362778) (not e!329872))))

(declare-fun arrayContainsKey!0 (array!35846 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!573400 (= res!362778 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!573401 () Bool)

(declare-fun e!329877 () Bool)

(assert (=> b!573401 (= e!329873 e!329877)))

(declare-fun res!362783 () Bool)

(assert (=> b!573401 (=> (not res!362783) (not e!329877))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35846 (_ BitVec 32)) SeekEntryResult!5662)

(assert (=> b!573401 (= res!362783 (= lt!261899 (seekKeyOrZeroReturnVacant!0 (x!53775 lt!261897) (index!24877 lt!261897) (index!24877 lt!261897) (select (arr!17206 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!573402 () Bool)

(assert (=> b!573402 (= e!329875 e!329878)))

(declare-fun res!362788 () Bool)

(assert (=> b!573402 (=> res!362788 e!329878)))

(assert (=> b!573402 (= res!362788 (or (undefined!6474 lt!261897) (not ((_ is Intermediate!5662) lt!261897))))))

(declare-fun b!573403 () Bool)

(declare-fun res!362789 () Bool)

(assert (=> b!573403 (=> (not res!362789) (not e!329872))))

(assert (=> b!573403 (= res!362789 (validKeyInArray!0 (select (arr!17206 a!3118) j!142)))))

(declare-fun b!573404 () Bool)

(assert (=> b!573404 (= e!329877 (= (seekEntryOrOpen!0 lt!261891 lt!261895 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53775 lt!261897) (index!24877 lt!261897) (index!24877 lt!261897) lt!261891 lt!261895 mask!3119)))))

(assert (= (and start!52558 res!362780) b!573398))

(assert (= (and b!573398 res!362782) b!573403))

(assert (= (and b!573403 res!362789) b!573393))

(assert (= (and b!573393 res!362777) b!573400))

(assert (= (and b!573400 res!362778) b!573396))

(assert (= (and b!573396 res!362786) b!573399))

(assert (= (and b!573399 res!362784) b!573392))

(assert (= (and b!573392 res!362779) b!573397))

(assert (= (and b!573397 res!362787) b!573395))

(assert (= (and b!573395 res!362785) b!573402))

(assert (= (and b!573402 (not res!362788)) b!573394))

(assert (= (and b!573394 (not res!362781)) b!573401))

(assert (= (and b!573401 res!362783) b!573404))

(declare-fun m!552411 () Bool)

(assert (=> b!573397 m!552411))

(declare-fun m!552413 () Bool)

(assert (=> b!573397 m!552413))

(assert (=> b!573397 m!552411))

(declare-fun m!552415 () Bool)

(assert (=> b!573397 m!552415))

(assert (=> b!573397 m!552411))

(declare-fun m!552417 () Bool)

(assert (=> b!573397 m!552417))

(declare-fun m!552419 () Bool)

(assert (=> b!573397 m!552419))

(declare-fun m!552421 () Bool)

(assert (=> b!573397 m!552421))

(declare-fun m!552423 () Bool)

(assert (=> b!573397 m!552423))

(declare-fun m!552425 () Bool)

(assert (=> b!573400 m!552425))

(declare-fun m!552427 () Bool)

(assert (=> start!52558 m!552427))

(declare-fun m!552429 () Bool)

(assert (=> start!52558 m!552429))

(assert (=> b!573403 m!552411))

(assert (=> b!573403 m!552411))

(declare-fun m!552431 () Bool)

(assert (=> b!573403 m!552431))

(assert (=> b!573395 m!552411))

(declare-fun m!552433 () Bool)

(assert (=> b!573395 m!552433))

(declare-fun m!552435 () Bool)

(assert (=> b!573395 m!552435))

(declare-fun m!552437 () Bool)

(assert (=> b!573395 m!552437))

(assert (=> b!573395 m!552411))

(declare-fun m!552439 () Bool)

(assert (=> b!573395 m!552439))

(declare-fun m!552441 () Bool)

(assert (=> b!573392 m!552441))

(assert (=> b!573401 m!552411))

(assert (=> b!573401 m!552411))

(declare-fun m!552443 () Bool)

(assert (=> b!573401 m!552443))

(declare-fun m!552445 () Bool)

(assert (=> b!573396 m!552445))

(declare-fun m!552447 () Bool)

(assert (=> b!573393 m!552447))

(assert (=> b!573394 m!552411))

(assert (=> b!573394 m!552435))

(declare-fun m!552449 () Bool)

(assert (=> b!573404 m!552449))

(declare-fun m!552451 () Bool)

(assert (=> b!573404 m!552451))

(declare-fun m!552453 () Bool)

(assert (=> b!573399 m!552453))

(check-sat (not b!573403) (not b!573404) (not b!573400) (not b!573392) (not b!573395) (not b!573399) (not b!573393) (not start!52558) (not b!573401) (not b!573396) (not b!573397))
(check-sat)
(get-model)

(declare-fun d!84847 () Bool)

(declare-fun lt!261935 () SeekEntryResult!5662)

(assert (=> d!84847 (and (or ((_ is Undefined!5662) lt!261935) (not ((_ is Found!5662) lt!261935)) (and (bvsge (index!24876 lt!261935) #b00000000000000000000000000000000) (bvslt (index!24876 lt!261935) (size!17570 a!3118)))) (or ((_ is Undefined!5662) lt!261935) ((_ is Found!5662) lt!261935) (not ((_ is MissingZero!5662) lt!261935)) (and (bvsge (index!24875 lt!261935) #b00000000000000000000000000000000) (bvslt (index!24875 lt!261935) (size!17570 a!3118)))) (or ((_ is Undefined!5662) lt!261935) ((_ is Found!5662) lt!261935) ((_ is MissingZero!5662) lt!261935) (not ((_ is MissingVacant!5662) lt!261935)) (and (bvsge (index!24878 lt!261935) #b00000000000000000000000000000000) (bvslt (index!24878 lt!261935) (size!17570 a!3118)))) (or ((_ is Undefined!5662) lt!261935) (ite ((_ is Found!5662) lt!261935) (= (select (arr!17206 a!3118) (index!24876 lt!261935)) k0!1914) (ite ((_ is MissingZero!5662) lt!261935) (= (select (arr!17206 a!3118) (index!24875 lt!261935)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5662) lt!261935) (= (select (arr!17206 a!3118) (index!24878 lt!261935)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!329909 () SeekEntryResult!5662)

(assert (=> d!84847 (= lt!261935 e!329909)))

(declare-fun c!65673 () Bool)

(declare-fun lt!261934 () SeekEntryResult!5662)

(assert (=> d!84847 (= c!65673 (and ((_ is Intermediate!5662) lt!261934) (undefined!6474 lt!261934)))))

(assert (=> d!84847 (= lt!261934 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!84847 (validMask!0 mask!3119)))

(assert (=> d!84847 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!261935)))

(declare-fun e!329911 () SeekEntryResult!5662)

(declare-fun b!573456 () Bool)

(assert (=> b!573456 (= e!329911 (seekKeyOrZeroReturnVacant!0 (x!53775 lt!261934) (index!24877 lt!261934) (index!24877 lt!261934) k0!1914 a!3118 mask!3119))))

(declare-fun b!573457 () Bool)

(declare-fun c!65675 () Bool)

(declare-fun lt!261933 () (_ BitVec 64))

(assert (=> b!573457 (= c!65675 (= lt!261933 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!329910 () SeekEntryResult!5662)

(assert (=> b!573457 (= e!329910 e!329911)))

(declare-fun b!573458 () Bool)

(assert (=> b!573458 (= e!329910 (Found!5662 (index!24877 lt!261934)))))

(declare-fun b!573459 () Bool)

(assert (=> b!573459 (= e!329909 Undefined!5662)))

(declare-fun b!573460 () Bool)

(assert (=> b!573460 (= e!329909 e!329910)))

(assert (=> b!573460 (= lt!261933 (select (arr!17206 a!3118) (index!24877 lt!261934)))))

(declare-fun c!65674 () Bool)

(assert (=> b!573460 (= c!65674 (= lt!261933 k0!1914))))

(declare-fun b!573461 () Bool)

(assert (=> b!573461 (= e!329911 (MissingZero!5662 (index!24877 lt!261934)))))

(assert (= (and d!84847 c!65673) b!573459))

(assert (= (and d!84847 (not c!65673)) b!573460))

(assert (= (and b!573460 c!65674) b!573458))

(assert (= (and b!573460 (not c!65674)) b!573457))

(assert (= (and b!573457 c!65675) b!573461))

(assert (= (and b!573457 (not c!65675)) b!573456))

(assert (=> d!84847 m!552427))

(declare-fun m!552499 () Bool)

(assert (=> d!84847 m!552499))

(declare-fun m!552501 () Bool)

(assert (=> d!84847 m!552501))

(declare-fun m!552503 () Bool)

(assert (=> d!84847 m!552503))

(assert (=> d!84847 m!552499))

(declare-fun m!552505 () Bool)

(assert (=> d!84847 m!552505))

(declare-fun m!552507 () Bool)

(assert (=> d!84847 m!552507))

(declare-fun m!552509 () Bool)

(assert (=> b!573456 m!552509))

(declare-fun m!552511 () Bool)

(assert (=> b!573460 m!552511))

(assert (=> b!573396 d!84847))

(declare-fun d!84849 () Bool)

(declare-fun lt!261938 () SeekEntryResult!5662)

(assert (=> d!84849 (and (or ((_ is Undefined!5662) lt!261938) (not ((_ is Found!5662) lt!261938)) (and (bvsge (index!24876 lt!261938) #b00000000000000000000000000000000) (bvslt (index!24876 lt!261938) (size!17570 a!3118)))) (or ((_ is Undefined!5662) lt!261938) ((_ is Found!5662) lt!261938) (not ((_ is MissingZero!5662) lt!261938)) (and (bvsge (index!24875 lt!261938) #b00000000000000000000000000000000) (bvslt (index!24875 lt!261938) (size!17570 a!3118)))) (or ((_ is Undefined!5662) lt!261938) ((_ is Found!5662) lt!261938) ((_ is MissingZero!5662) lt!261938) (not ((_ is MissingVacant!5662) lt!261938)) (and (bvsge (index!24878 lt!261938) #b00000000000000000000000000000000) (bvslt (index!24878 lt!261938) (size!17570 a!3118)))) (or ((_ is Undefined!5662) lt!261938) (ite ((_ is Found!5662) lt!261938) (= (select (arr!17206 a!3118) (index!24876 lt!261938)) (select (arr!17206 a!3118) j!142)) (ite ((_ is MissingZero!5662) lt!261938) (= (select (arr!17206 a!3118) (index!24875 lt!261938)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5662) lt!261938) (= (select (arr!17206 a!3118) (index!24878 lt!261938)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!329912 () SeekEntryResult!5662)

(assert (=> d!84849 (= lt!261938 e!329912)))

(declare-fun c!65676 () Bool)

(declare-fun lt!261937 () SeekEntryResult!5662)

(assert (=> d!84849 (= c!65676 (and ((_ is Intermediate!5662) lt!261937) (undefined!6474 lt!261937)))))

(assert (=> d!84849 (= lt!261937 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17206 a!3118) j!142) mask!3119) (select (arr!17206 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84849 (validMask!0 mask!3119)))

(assert (=> d!84849 (= (seekEntryOrOpen!0 (select (arr!17206 a!3118) j!142) a!3118 mask!3119) lt!261938)))

(declare-fun e!329914 () SeekEntryResult!5662)

(declare-fun b!573462 () Bool)

(assert (=> b!573462 (= e!329914 (seekKeyOrZeroReturnVacant!0 (x!53775 lt!261937) (index!24877 lt!261937) (index!24877 lt!261937) (select (arr!17206 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!573463 () Bool)

(declare-fun c!65678 () Bool)

(declare-fun lt!261936 () (_ BitVec 64))

(assert (=> b!573463 (= c!65678 (= lt!261936 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!329913 () SeekEntryResult!5662)

(assert (=> b!573463 (= e!329913 e!329914)))

(declare-fun b!573464 () Bool)

(assert (=> b!573464 (= e!329913 (Found!5662 (index!24877 lt!261937)))))

(declare-fun b!573465 () Bool)

(assert (=> b!573465 (= e!329912 Undefined!5662)))

(declare-fun b!573466 () Bool)

(assert (=> b!573466 (= e!329912 e!329913)))

(assert (=> b!573466 (= lt!261936 (select (arr!17206 a!3118) (index!24877 lt!261937)))))

(declare-fun c!65677 () Bool)

(assert (=> b!573466 (= c!65677 (= lt!261936 (select (arr!17206 a!3118) j!142)))))

(declare-fun b!573467 () Bool)

(assert (=> b!573467 (= e!329914 (MissingZero!5662 (index!24877 lt!261937)))))

(assert (= (and d!84849 c!65676) b!573465))

(assert (= (and d!84849 (not c!65676)) b!573466))

(assert (= (and b!573466 c!65677) b!573464))

(assert (= (and b!573466 (not c!65677)) b!573463))

(assert (= (and b!573463 c!65678) b!573467))

(assert (= (and b!573463 (not c!65678)) b!573462))

(assert (=> d!84849 m!552427))

(assert (=> d!84849 m!552413))

(assert (=> d!84849 m!552411))

(declare-fun m!552513 () Bool)

(assert (=> d!84849 m!552513))

(declare-fun m!552515 () Bool)

(assert (=> d!84849 m!552515))

(assert (=> d!84849 m!552411))

(assert (=> d!84849 m!552413))

(declare-fun m!552517 () Bool)

(assert (=> d!84849 m!552517))

(declare-fun m!552519 () Bool)

(assert (=> d!84849 m!552519))

(assert (=> b!573462 m!552411))

(declare-fun m!552521 () Bool)

(assert (=> b!573462 m!552521))

(declare-fun m!552523 () Bool)

(assert (=> b!573466 m!552523))

(assert (=> b!573395 d!84849))

(declare-fun b!573483 () Bool)

(declare-fun e!329927 () Bool)

(declare-fun call!32645 () Bool)

(assert (=> b!573483 (= e!329927 call!32645)))

(declare-fun bm!32642 () Bool)

(assert (=> bm!32642 (= call!32645 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!573484 () Bool)

(declare-fun e!329928 () Bool)

(assert (=> b!573484 (= e!329928 e!329927)))

(declare-fun lt!261945 () (_ BitVec 64))

(assert (=> b!573484 (= lt!261945 (select (arr!17206 a!3118) j!142))))

(declare-fun lt!261946 () Unit!18026)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35846 (_ BitVec 64) (_ BitVec 32)) Unit!18026)

(assert (=> b!573484 (= lt!261946 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!261945 j!142))))

(assert (=> b!573484 (arrayContainsKey!0 a!3118 lt!261945 #b00000000000000000000000000000000)))

(declare-fun lt!261947 () Unit!18026)

(assert (=> b!573484 (= lt!261947 lt!261946)))

(declare-fun res!362839 () Bool)

(assert (=> b!573484 (= res!362839 (= (seekEntryOrOpen!0 (select (arr!17206 a!3118) j!142) a!3118 mask!3119) (Found!5662 j!142)))))

(assert (=> b!573484 (=> (not res!362839) (not e!329927))))

(declare-fun b!573485 () Bool)

(declare-fun e!329929 () Bool)

(assert (=> b!573485 (= e!329929 e!329928)))

(declare-fun c!65681 () Bool)

(assert (=> b!573485 (= c!65681 (validKeyInArray!0 (select (arr!17206 a!3118) j!142)))))

(declare-fun b!573482 () Bool)

(assert (=> b!573482 (= e!329928 call!32645)))

(declare-fun d!84851 () Bool)

(declare-fun res!362840 () Bool)

(assert (=> d!84851 (=> res!362840 e!329929)))

(assert (=> d!84851 (= res!362840 (bvsge j!142 (size!17570 a!3118)))))

(assert (=> d!84851 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!329929)))

(assert (= (and d!84851 (not res!362840)) b!573485))

(assert (= (and b!573485 c!65681) b!573484))

(assert (= (and b!573485 (not c!65681)) b!573482))

(assert (= (and b!573484 res!362839) b!573483))

(assert (= (or b!573483 b!573482) bm!32642))

(declare-fun m!552529 () Bool)

(assert (=> bm!32642 m!552529))

(assert (=> b!573484 m!552411))

(declare-fun m!552531 () Bool)

(assert (=> b!573484 m!552531))

(declare-fun m!552533 () Bool)

(assert (=> b!573484 m!552533))

(assert (=> b!573484 m!552411))

(assert (=> b!573484 m!552439))

(assert (=> b!573485 m!552411))

(assert (=> b!573485 m!552411))

(assert (=> b!573485 m!552431))

(assert (=> b!573395 d!84851))

(declare-fun d!84859 () Bool)

(assert (=> d!84859 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!261950 () Unit!18026)

(declare-fun choose!38 (array!35846 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18026)

(assert (=> d!84859 (= lt!261950 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84859 (validMask!0 mask!3119)))

(assert (=> d!84859 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!261950)))

(declare-fun bs!17757 () Bool)

(assert (= bs!17757 d!84859))

(assert (=> bs!17757 m!552433))

(declare-fun m!552535 () Bool)

(assert (=> bs!17757 m!552535))

(assert (=> bs!17757 m!552427))

(assert (=> b!573395 d!84859))

(declare-fun d!84863 () Bool)

(declare-fun res!362847 () Bool)

(declare-fun e!329941 () Bool)

(assert (=> d!84863 (=> res!362847 e!329941)))

(assert (=> d!84863 (= res!362847 (bvsge #b00000000000000000000000000000000 (size!17570 a!3118)))))

(assert (=> d!84863 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11336) e!329941)))

(declare-fun bm!32645 () Bool)

(declare-fun call!32648 () Bool)

(declare-fun c!65684 () Bool)

(assert (=> bm!32645 (= call!32648 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65684 (Cons!11335 (select (arr!17206 a!3118) #b00000000000000000000000000000000) Nil!11336) Nil!11336)))))

(declare-fun b!573496 () Bool)

(declare-fun e!329938 () Bool)

(assert (=> b!573496 (= e!329938 call!32648)))

(declare-fun b!573497 () Bool)

(declare-fun e!329939 () Bool)

(declare-fun contains!2890 (List!11339 (_ BitVec 64)) Bool)

(assert (=> b!573497 (= e!329939 (contains!2890 Nil!11336 (select (arr!17206 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!573498 () Bool)

(assert (=> b!573498 (= e!329938 call!32648)))

(declare-fun b!573499 () Bool)

(declare-fun e!329940 () Bool)

(assert (=> b!573499 (= e!329941 e!329940)))

(declare-fun res!362848 () Bool)

(assert (=> b!573499 (=> (not res!362848) (not e!329940))))

(assert (=> b!573499 (= res!362848 (not e!329939))))

(declare-fun res!362849 () Bool)

(assert (=> b!573499 (=> (not res!362849) (not e!329939))))

(assert (=> b!573499 (= res!362849 (validKeyInArray!0 (select (arr!17206 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!573500 () Bool)

(assert (=> b!573500 (= e!329940 e!329938)))

(assert (=> b!573500 (= c!65684 (validKeyInArray!0 (select (arr!17206 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84863 (not res!362847)) b!573499))

(assert (= (and b!573499 res!362849) b!573497))

(assert (= (and b!573499 res!362848) b!573500))

(assert (= (and b!573500 c!65684) b!573498))

(assert (= (and b!573500 (not c!65684)) b!573496))

(assert (= (or b!573498 b!573496) bm!32645))

(declare-fun m!552537 () Bool)

(assert (=> bm!32645 m!552537))

(declare-fun m!552539 () Bool)

(assert (=> bm!32645 m!552539))

(assert (=> b!573497 m!552537))

(assert (=> b!573497 m!552537))

(declare-fun m!552541 () Bool)

(assert (=> b!573497 m!552541))

(assert (=> b!573499 m!552537))

(assert (=> b!573499 m!552537))

(declare-fun m!552543 () Bool)

(assert (=> b!573499 m!552543))

(assert (=> b!573500 m!552537))

(assert (=> b!573500 m!552537))

(assert (=> b!573500 m!552543))

(assert (=> b!573392 d!84863))

(declare-fun d!84865 () Bool)

(declare-fun lt!261953 () SeekEntryResult!5662)

(assert (=> d!84865 (and (or ((_ is Undefined!5662) lt!261953) (not ((_ is Found!5662) lt!261953)) (and (bvsge (index!24876 lt!261953) #b00000000000000000000000000000000) (bvslt (index!24876 lt!261953) (size!17570 lt!261895)))) (or ((_ is Undefined!5662) lt!261953) ((_ is Found!5662) lt!261953) (not ((_ is MissingZero!5662) lt!261953)) (and (bvsge (index!24875 lt!261953) #b00000000000000000000000000000000) (bvslt (index!24875 lt!261953) (size!17570 lt!261895)))) (or ((_ is Undefined!5662) lt!261953) ((_ is Found!5662) lt!261953) ((_ is MissingZero!5662) lt!261953) (not ((_ is MissingVacant!5662) lt!261953)) (and (bvsge (index!24878 lt!261953) #b00000000000000000000000000000000) (bvslt (index!24878 lt!261953) (size!17570 lt!261895)))) (or ((_ is Undefined!5662) lt!261953) (ite ((_ is Found!5662) lt!261953) (= (select (arr!17206 lt!261895) (index!24876 lt!261953)) lt!261891) (ite ((_ is MissingZero!5662) lt!261953) (= (select (arr!17206 lt!261895) (index!24875 lt!261953)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5662) lt!261953) (= (select (arr!17206 lt!261895) (index!24878 lt!261953)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!329942 () SeekEntryResult!5662)

(assert (=> d!84865 (= lt!261953 e!329942)))

(declare-fun c!65685 () Bool)

(declare-fun lt!261952 () SeekEntryResult!5662)

(assert (=> d!84865 (= c!65685 (and ((_ is Intermediate!5662) lt!261952) (undefined!6474 lt!261952)))))

(assert (=> d!84865 (= lt!261952 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!261891 mask!3119) lt!261891 lt!261895 mask!3119))))

(assert (=> d!84865 (validMask!0 mask!3119)))

(assert (=> d!84865 (= (seekEntryOrOpen!0 lt!261891 lt!261895 mask!3119) lt!261953)))

(declare-fun e!329944 () SeekEntryResult!5662)

(declare-fun b!573501 () Bool)

(assert (=> b!573501 (= e!329944 (seekKeyOrZeroReturnVacant!0 (x!53775 lt!261952) (index!24877 lt!261952) (index!24877 lt!261952) lt!261891 lt!261895 mask!3119))))

(declare-fun b!573502 () Bool)

(declare-fun c!65687 () Bool)

(declare-fun lt!261951 () (_ BitVec 64))

(assert (=> b!573502 (= c!65687 (= lt!261951 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!329943 () SeekEntryResult!5662)

(assert (=> b!573502 (= e!329943 e!329944)))

(declare-fun b!573503 () Bool)

(assert (=> b!573503 (= e!329943 (Found!5662 (index!24877 lt!261952)))))

(declare-fun b!573504 () Bool)

(assert (=> b!573504 (= e!329942 Undefined!5662)))

(declare-fun b!573505 () Bool)

(assert (=> b!573505 (= e!329942 e!329943)))

(assert (=> b!573505 (= lt!261951 (select (arr!17206 lt!261895) (index!24877 lt!261952)))))

(declare-fun c!65686 () Bool)

(assert (=> b!573505 (= c!65686 (= lt!261951 lt!261891))))

(declare-fun b!573506 () Bool)

(assert (=> b!573506 (= e!329944 (MissingZero!5662 (index!24877 lt!261952)))))

(assert (= (and d!84865 c!65685) b!573504))

(assert (= (and d!84865 (not c!65685)) b!573505))

(assert (= (and b!573505 c!65686) b!573503))

(assert (= (and b!573505 (not c!65686)) b!573502))

(assert (= (and b!573502 c!65687) b!573506))

(assert (= (and b!573502 (not c!65687)) b!573501))

(assert (=> d!84865 m!552427))

(assert (=> d!84865 m!552423))

(declare-fun m!552545 () Bool)

(assert (=> d!84865 m!552545))

(declare-fun m!552547 () Bool)

(assert (=> d!84865 m!552547))

(assert (=> d!84865 m!552423))

(declare-fun m!552549 () Bool)

(assert (=> d!84865 m!552549))

(declare-fun m!552551 () Bool)

(assert (=> d!84865 m!552551))

(declare-fun m!552553 () Bool)

(assert (=> b!573501 m!552553))

(declare-fun m!552555 () Bool)

(assert (=> b!573505 m!552555))

(assert (=> b!573404 d!84865))

(declare-fun b!573579 () Bool)

(declare-fun e!329984 () SeekEntryResult!5662)

(declare-fun e!329983 () SeekEntryResult!5662)

(assert (=> b!573579 (= e!329984 e!329983)))

(declare-fun c!65718 () Bool)

(declare-fun lt!261986 () (_ BitVec 64))

(assert (=> b!573579 (= c!65718 (= lt!261986 lt!261891))))

(declare-fun b!573580 () Bool)

(assert (=> b!573580 (= e!329984 Undefined!5662)))

(declare-fun b!573581 () Bool)

(declare-fun e!329985 () SeekEntryResult!5662)

(assert (=> b!573581 (= e!329985 (MissingVacant!5662 (index!24877 lt!261897)))))

(declare-fun b!573582 () Bool)

(assert (=> b!573582 (= e!329983 (Found!5662 (index!24877 lt!261897)))))

(declare-fun b!573583 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!573583 (= e!329985 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53775 lt!261897) #b00000000000000000000000000000001) (nextIndex!0 (index!24877 lt!261897) (x!53775 lt!261897) mask!3119) (index!24877 lt!261897) lt!261891 lt!261895 mask!3119))))

(declare-fun lt!261987 () SeekEntryResult!5662)

(declare-fun d!84867 () Bool)

(assert (=> d!84867 (and (or ((_ is Undefined!5662) lt!261987) (not ((_ is Found!5662) lt!261987)) (and (bvsge (index!24876 lt!261987) #b00000000000000000000000000000000) (bvslt (index!24876 lt!261987) (size!17570 lt!261895)))) (or ((_ is Undefined!5662) lt!261987) ((_ is Found!5662) lt!261987) (not ((_ is MissingVacant!5662) lt!261987)) (not (= (index!24878 lt!261987) (index!24877 lt!261897))) (and (bvsge (index!24878 lt!261987) #b00000000000000000000000000000000) (bvslt (index!24878 lt!261987) (size!17570 lt!261895)))) (or ((_ is Undefined!5662) lt!261987) (ite ((_ is Found!5662) lt!261987) (= (select (arr!17206 lt!261895) (index!24876 lt!261987)) lt!261891) (and ((_ is MissingVacant!5662) lt!261987) (= (index!24878 lt!261987) (index!24877 lt!261897)) (= (select (arr!17206 lt!261895) (index!24878 lt!261987)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84867 (= lt!261987 e!329984)))

(declare-fun c!65720 () Bool)

(assert (=> d!84867 (= c!65720 (bvsge (x!53775 lt!261897) #b01111111111111111111111111111110))))

(assert (=> d!84867 (= lt!261986 (select (arr!17206 lt!261895) (index!24877 lt!261897)))))

(assert (=> d!84867 (validMask!0 mask!3119)))

(assert (=> d!84867 (= (seekKeyOrZeroReturnVacant!0 (x!53775 lt!261897) (index!24877 lt!261897) (index!24877 lt!261897) lt!261891 lt!261895 mask!3119) lt!261987)))

(declare-fun b!573584 () Bool)

(declare-fun c!65719 () Bool)

(assert (=> b!573584 (= c!65719 (= lt!261986 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573584 (= e!329983 e!329985)))

(assert (= (and d!84867 c!65720) b!573580))

(assert (= (and d!84867 (not c!65720)) b!573579))

(assert (= (and b!573579 c!65718) b!573582))

(assert (= (and b!573579 (not c!65718)) b!573584))

(assert (= (and b!573584 c!65719) b!573581))

(assert (= (and b!573584 (not c!65719)) b!573583))

(declare-fun m!552599 () Bool)

(assert (=> b!573583 m!552599))

(assert (=> b!573583 m!552599))

(declare-fun m!552601 () Bool)

(assert (=> b!573583 m!552601))

(declare-fun m!552603 () Bool)

(assert (=> d!84867 m!552603))

(declare-fun m!552605 () Bool)

(assert (=> d!84867 m!552605))

(declare-fun m!552607 () Bool)

(assert (=> d!84867 m!552607))

(assert (=> d!84867 m!552427))

(assert (=> b!573404 d!84867))

(declare-fun d!84881 () Bool)

(assert (=> d!84881 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!573393 d!84881))

(declare-fun d!84883 () Bool)

(assert (=> d!84883 (= (validKeyInArray!0 (select (arr!17206 a!3118) j!142)) (and (not (= (select (arr!17206 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17206 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!573403 d!84883))

(declare-fun d!84885 () Bool)

(declare-fun res!362867 () Bool)

(declare-fun e!329990 () Bool)

(assert (=> d!84885 (=> res!362867 e!329990)))

(assert (=> d!84885 (= res!362867 (= (select (arr!17206 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!84885 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!329990)))

(declare-fun b!573589 () Bool)

(declare-fun e!329991 () Bool)

(assert (=> b!573589 (= e!329990 e!329991)))

(declare-fun res!362868 () Bool)

(assert (=> b!573589 (=> (not res!362868) (not e!329991))))

(assert (=> b!573589 (= res!362868 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17570 a!3118)))))

(declare-fun b!573590 () Bool)

(assert (=> b!573590 (= e!329991 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84885 (not res!362867)) b!573589))

(assert (= (and b!573589 res!362868) b!573590))

(assert (=> d!84885 m!552537))

(declare-fun m!552609 () Bool)

(assert (=> b!573590 m!552609))

(assert (=> b!573400 d!84885))

(declare-fun d!84887 () Bool)

(assert (=> d!84887 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52558 d!84887))

(declare-fun d!84891 () Bool)

(assert (=> d!84891 (= (array_inv!12980 a!3118) (bvsge (size!17570 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52558 d!84891))

(declare-fun b!573622 () Bool)

(declare-fun e!330010 () Bool)

(declare-fun call!32652 () Bool)

(assert (=> b!573622 (= e!330010 call!32652)))

(declare-fun bm!32649 () Bool)

(assert (=> bm!32649 (= call!32652 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!573623 () Bool)

(declare-fun e!330011 () Bool)

(assert (=> b!573623 (= e!330011 e!330010)))

(declare-fun lt!262003 () (_ BitVec 64))

(assert (=> b!573623 (= lt!262003 (select (arr!17206 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!262004 () Unit!18026)

(assert (=> b!573623 (= lt!262004 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!262003 #b00000000000000000000000000000000))))

(assert (=> b!573623 (arrayContainsKey!0 a!3118 lt!262003 #b00000000000000000000000000000000)))

(declare-fun lt!262005 () Unit!18026)

(assert (=> b!573623 (= lt!262005 lt!262004)))

(declare-fun res!362875 () Bool)

(assert (=> b!573623 (= res!362875 (= (seekEntryOrOpen!0 (select (arr!17206 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5662 #b00000000000000000000000000000000)))))

(assert (=> b!573623 (=> (not res!362875) (not e!330010))))

(declare-fun b!573624 () Bool)

(declare-fun e!330012 () Bool)

(assert (=> b!573624 (= e!330012 e!330011)))

(declare-fun c!65733 () Bool)

(assert (=> b!573624 (= c!65733 (validKeyInArray!0 (select (arr!17206 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!573621 () Bool)

(assert (=> b!573621 (= e!330011 call!32652)))

(declare-fun d!84895 () Bool)

(declare-fun res!362876 () Bool)

(assert (=> d!84895 (=> res!362876 e!330012)))

(assert (=> d!84895 (= res!362876 (bvsge #b00000000000000000000000000000000 (size!17570 a!3118)))))

(assert (=> d!84895 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!330012)))

(assert (= (and d!84895 (not res!362876)) b!573624))

(assert (= (and b!573624 c!65733) b!573623))

(assert (= (and b!573624 (not c!65733)) b!573621))

(assert (= (and b!573623 res!362875) b!573622))

(assert (= (or b!573622 b!573621) bm!32649))

(declare-fun m!552631 () Bool)

(assert (=> bm!32649 m!552631))

(assert (=> b!573623 m!552537))

(declare-fun m!552633 () Bool)

(assert (=> b!573623 m!552633))

(declare-fun m!552635 () Bool)

(assert (=> b!573623 m!552635))

(assert (=> b!573623 m!552537))

(declare-fun m!552637 () Bool)

(assert (=> b!573623 m!552637))

(assert (=> b!573624 m!552537))

(assert (=> b!573624 m!552537))

(assert (=> b!573624 m!552543))

(assert (=> b!573399 d!84895))

(declare-fun b!573625 () Bool)

(declare-fun e!330014 () SeekEntryResult!5662)

(declare-fun e!330013 () SeekEntryResult!5662)

(assert (=> b!573625 (= e!330014 e!330013)))

(declare-fun lt!262006 () (_ BitVec 64))

(declare-fun c!65734 () Bool)

(assert (=> b!573625 (= c!65734 (= lt!262006 (select (arr!17206 a!3118) j!142)))))

(declare-fun b!573626 () Bool)

(assert (=> b!573626 (= e!330014 Undefined!5662)))

(declare-fun b!573627 () Bool)

(declare-fun e!330015 () SeekEntryResult!5662)

(assert (=> b!573627 (= e!330015 (MissingVacant!5662 (index!24877 lt!261897)))))

(declare-fun b!573628 () Bool)

(assert (=> b!573628 (= e!330013 (Found!5662 (index!24877 lt!261897)))))

(declare-fun b!573629 () Bool)

(assert (=> b!573629 (= e!330015 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53775 lt!261897) #b00000000000000000000000000000001) (nextIndex!0 (index!24877 lt!261897) (x!53775 lt!261897) mask!3119) (index!24877 lt!261897) (select (arr!17206 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!84897 () Bool)

(declare-fun lt!262007 () SeekEntryResult!5662)

(assert (=> d!84897 (and (or ((_ is Undefined!5662) lt!262007) (not ((_ is Found!5662) lt!262007)) (and (bvsge (index!24876 lt!262007) #b00000000000000000000000000000000) (bvslt (index!24876 lt!262007) (size!17570 a!3118)))) (or ((_ is Undefined!5662) lt!262007) ((_ is Found!5662) lt!262007) (not ((_ is MissingVacant!5662) lt!262007)) (not (= (index!24878 lt!262007) (index!24877 lt!261897))) (and (bvsge (index!24878 lt!262007) #b00000000000000000000000000000000) (bvslt (index!24878 lt!262007) (size!17570 a!3118)))) (or ((_ is Undefined!5662) lt!262007) (ite ((_ is Found!5662) lt!262007) (= (select (arr!17206 a!3118) (index!24876 lt!262007)) (select (arr!17206 a!3118) j!142)) (and ((_ is MissingVacant!5662) lt!262007) (= (index!24878 lt!262007) (index!24877 lt!261897)) (= (select (arr!17206 a!3118) (index!24878 lt!262007)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84897 (= lt!262007 e!330014)))

(declare-fun c!65736 () Bool)

(assert (=> d!84897 (= c!65736 (bvsge (x!53775 lt!261897) #b01111111111111111111111111111110))))

(assert (=> d!84897 (= lt!262006 (select (arr!17206 a!3118) (index!24877 lt!261897)))))

(assert (=> d!84897 (validMask!0 mask!3119)))

(assert (=> d!84897 (= (seekKeyOrZeroReturnVacant!0 (x!53775 lt!261897) (index!24877 lt!261897) (index!24877 lt!261897) (select (arr!17206 a!3118) j!142) a!3118 mask!3119) lt!262007)))

(declare-fun b!573630 () Bool)

(declare-fun c!65735 () Bool)

(assert (=> b!573630 (= c!65735 (= lt!262006 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573630 (= e!330013 e!330015)))

(assert (= (and d!84897 c!65736) b!573626))

(assert (= (and d!84897 (not c!65736)) b!573625))

(assert (= (and b!573625 c!65734) b!573628))

(assert (= (and b!573625 (not c!65734)) b!573630))

(assert (= (and b!573630 c!65735) b!573627))

(assert (= (and b!573630 (not c!65735)) b!573629))

(assert (=> b!573629 m!552599))

(assert (=> b!573629 m!552599))

(assert (=> b!573629 m!552411))

(declare-fun m!552639 () Bool)

(assert (=> b!573629 m!552639))

(declare-fun m!552641 () Bool)

(assert (=> d!84897 m!552641))

(declare-fun m!552643 () Bool)

(assert (=> d!84897 m!552643))

(assert (=> d!84897 m!552435))

(assert (=> d!84897 m!552427))

(assert (=> b!573401 d!84897))

(declare-fun b!573667 () Bool)

(declare-fun e!330036 () SeekEntryResult!5662)

(assert (=> b!573667 (= e!330036 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!261894 #b00000000000000000000000000000000 mask!3119) lt!261891 lt!261895 mask!3119))))

(declare-fun b!573668 () Bool)

(declare-fun lt!262021 () SeekEntryResult!5662)

(assert (=> b!573668 (and (bvsge (index!24877 lt!262021) #b00000000000000000000000000000000) (bvslt (index!24877 lt!262021) (size!17570 lt!261895)))))

(declare-fun res!362885 () Bool)

(assert (=> b!573668 (= res!362885 (= (select (arr!17206 lt!261895) (index!24877 lt!262021)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330038 () Bool)

(assert (=> b!573668 (=> res!362885 e!330038)))

(declare-fun b!573669 () Bool)

(declare-fun e!330037 () SeekEntryResult!5662)

(assert (=> b!573669 (= e!330037 (Intermediate!5662 true lt!261894 #b00000000000000000000000000000000))))

(declare-fun b!573670 () Bool)

(assert (=> b!573670 (and (bvsge (index!24877 lt!262021) #b00000000000000000000000000000000) (bvslt (index!24877 lt!262021) (size!17570 lt!261895)))))

(assert (=> b!573670 (= e!330038 (= (select (arr!17206 lt!261895) (index!24877 lt!262021)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!573671 () Bool)

(assert (=> b!573671 (= e!330036 (Intermediate!5662 false lt!261894 #b00000000000000000000000000000000))))

(declare-fun b!573672 () Bool)

(assert (=> b!573672 (and (bvsge (index!24877 lt!262021) #b00000000000000000000000000000000) (bvslt (index!24877 lt!262021) (size!17570 lt!261895)))))

(declare-fun res!362884 () Bool)

(assert (=> b!573672 (= res!362884 (= (select (arr!17206 lt!261895) (index!24877 lt!262021)) lt!261891))))

(assert (=> b!573672 (=> res!362884 e!330038)))

(declare-fun e!330039 () Bool)

(assert (=> b!573672 (= e!330039 e!330038)))

(declare-fun b!573674 () Bool)

(assert (=> b!573674 (= e!330037 e!330036)))

(declare-fun c!65752 () Bool)

(declare-fun lt!262022 () (_ BitVec 64))

(assert (=> b!573674 (= c!65752 (or (= lt!262022 lt!261891) (= (bvadd lt!262022 lt!262022) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!573675 () Bool)

(declare-fun e!330035 () Bool)

(assert (=> b!573675 (= e!330035 e!330039)))

(declare-fun res!362883 () Bool)

(assert (=> b!573675 (= res!362883 (and ((_ is Intermediate!5662) lt!262021) (not (undefined!6474 lt!262021)) (bvslt (x!53775 lt!262021) #b01111111111111111111111111111110) (bvsge (x!53775 lt!262021) #b00000000000000000000000000000000) (bvsge (x!53775 lt!262021) #b00000000000000000000000000000000)))))

(assert (=> b!573675 (=> (not res!362883) (not e!330039))))

(declare-fun d!84899 () Bool)

(assert (=> d!84899 e!330035))

(declare-fun c!65753 () Bool)

(assert (=> d!84899 (= c!65753 (and ((_ is Intermediate!5662) lt!262021) (undefined!6474 lt!262021)))))

(assert (=> d!84899 (= lt!262021 e!330037)))

(declare-fun c!65754 () Bool)

(assert (=> d!84899 (= c!65754 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84899 (= lt!262022 (select (arr!17206 lt!261895) lt!261894))))

(assert (=> d!84899 (validMask!0 mask!3119)))

(assert (=> d!84899 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261894 lt!261891 lt!261895 mask!3119) lt!262021)))

(declare-fun b!573673 () Bool)

(assert (=> b!573673 (= e!330035 (bvsge (x!53775 lt!262021) #b01111111111111111111111111111110))))

(assert (= (and d!84899 c!65754) b!573669))

(assert (= (and d!84899 (not c!65754)) b!573674))

(assert (= (and b!573674 c!65752) b!573671))

(assert (= (and b!573674 (not c!65752)) b!573667))

(assert (= (and d!84899 c!65753) b!573673))

(assert (= (and d!84899 (not c!65753)) b!573675))

(assert (= (and b!573675 res!362883) b!573672))

(assert (= (and b!573672 (not res!362884)) b!573668))

(assert (= (and b!573668 (not res!362885)) b!573670))

(declare-fun m!552657 () Bool)

(assert (=> b!573667 m!552657))

(assert (=> b!573667 m!552657))

(declare-fun m!552659 () Bool)

(assert (=> b!573667 m!552659))

(declare-fun m!552661 () Bool)

(assert (=> b!573670 m!552661))

(declare-fun m!552663 () Bool)

(assert (=> d!84899 m!552663))

(assert (=> d!84899 m!552427))

(assert (=> b!573672 m!552661))

(assert (=> b!573668 m!552661))

(assert (=> b!573397 d!84899))

(declare-fun b!573676 () Bool)

(declare-fun e!330041 () SeekEntryResult!5662)

(assert (=> b!573676 (= e!330041 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!261898 #b00000000000000000000000000000000 mask!3119) (select (arr!17206 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!573677 () Bool)

(declare-fun lt!262023 () SeekEntryResult!5662)

(assert (=> b!573677 (and (bvsge (index!24877 lt!262023) #b00000000000000000000000000000000) (bvslt (index!24877 lt!262023) (size!17570 a!3118)))))

(declare-fun res!362888 () Bool)

(assert (=> b!573677 (= res!362888 (= (select (arr!17206 a!3118) (index!24877 lt!262023)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330043 () Bool)

(assert (=> b!573677 (=> res!362888 e!330043)))

(declare-fun b!573678 () Bool)

(declare-fun e!330042 () SeekEntryResult!5662)

(assert (=> b!573678 (= e!330042 (Intermediate!5662 true lt!261898 #b00000000000000000000000000000000))))

(declare-fun b!573679 () Bool)

(assert (=> b!573679 (and (bvsge (index!24877 lt!262023) #b00000000000000000000000000000000) (bvslt (index!24877 lt!262023) (size!17570 a!3118)))))

(assert (=> b!573679 (= e!330043 (= (select (arr!17206 a!3118) (index!24877 lt!262023)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!573680 () Bool)

(assert (=> b!573680 (= e!330041 (Intermediate!5662 false lt!261898 #b00000000000000000000000000000000))))

(declare-fun b!573681 () Bool)

(assert (=> b!573681 (and (bvsge (index!24877 lt!262023) #b00000000000000000000000000000000) (bvslt (index!24877 lt!262023) (size!17570 a!3118)))))

(declare-fun res!362887 () Bool)

(assert (=> b!573681 (= res!362887 (= (select (arr!17206 a!3118) (index!24877 lt!262023)) (select (arr!17206 a!3118) j!142)))))

(assert (=> b!573681 (=> res!362887 e!330043)))

(declare-fun e!330044 () Bool)

(assert (=> b!573681 (= e!330044 e!330043)))

(declare-fun b!573683 () Bool)

(assert (=> b!573683 (= e!330042 e!330041)))

(declare-fun lt!262024 () (_ BitVec 64))

(declare-fun c!65755 () Bool)

(assert (=> b!573683 (= c!65755 (or (= lt!262024 (select (arr!17206 a!3118) j!142)) (= (bvadd lt!262024 lt!262024) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!573684 () Bool)

(declare-fun e!330040 () Bool)

(assert (=> b!573684 (= e!330040 e!330044)))

(declare-fun res!362886 () Bool)

(assert (=> b!573684 (= res!362886 (and ((_ is Intermediate!5662) lt!262023) (not (undefined!6474 lt!262023)) (bvslt (x!53775 lt!262023) #b01111111111111111111111111111110) (bvsge (x!53775 lt!262023) #b00000000000000000000000000000000) (bvsge (x!53775 lt!262023) #b00000000000000000000000000000000)))))

(assert (=> b!573684 (=> (not res!362886) (not e!330044))))

(declare-fun d!84907 () Bool)

(assert (=> d!84907 e!330040))

(declare-fun c!65756 () Bool)

(assert (=> d!84907 (= c!65756 (and ((_ is Intermediate!5662) lt!262023) (undefined!6474 lt!262023)))))

(assert (=> d!84907 (= lt!262023 e!330042)))

(declare-fun c!65757 () Bool)

(assert (=> d!84907 (= c!65757 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84907 (= lt!262024 (select (arr!17206 a!3118) lt!261898))))

(assert (=> d!84907 (validMask!0 mask!3119)))

(assert (=> d!84907 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261898 (select (arr!17206 a!3118) j!142) a!3118 mask!3119) lt!262023)))

(declare-fun b!573682 () Bool)

(assert (=> b!573682 (= e!330040 (bvsge (x!53775 lt!262023) #b01111111111111111111111111111110))))

(assert (= (and d!84907 c!65757) b!573678))

(assert (= (and d!84907 (not c!65757)) b!573683))

(assert (= (and b!573683 c!65755) b!573680))

(assert (= (and b!573683 (not c!65755)) b!573676))

(assert (= (and d!84907 c!65756) b!573682))

(assert (= (and d!84907 (not c!65756)) b!573684))

(assert (= (and b!573684 res!362886) b!573681))

(assert (= (and b!573681 (not res!362887)) b!573677))

(assert (= (and b!573677 (not res!362888)) b!573679))

(declare-fun m!552665 () Bool)

(assert (=> b!573676 m!552665))

(assert (=> b!573676 m!552665))

(assert (=> b!573676 m!552411))

(declare-fun m!552667 () Bool)

(assert (=> b!573676 m!552667))

(declare-fun m!552669 () Bool)

(assert (=> b!573679 m!552669))

(declare-fun m!552671 () Bool)

(assert (=> d!84907 m!552671))

(assert (=> d!84907 m!552427))

(assert (=> b!573681 m!552669))

(assert (=> b!573677 m!552669))

(assert (=> b!573397 d!84907))

(declare-fun d!84909 () Bool)

(declare-fun lt!262038 () (_ BitVec 32))

(declare-fun lt!262037 () (_ BitVec 32))

(assert (=> d!84909 (= lt!262038 (bvmul (bvxor lt!262037 (bvlshr lt!262037 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84909 (= lt!262037 ((_ extract 31 0) (bvand (bvxor lt!261891 (bvlshr lt!261891 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84909 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!362889 (let ((h!12368 ((_ extract 31 0) (bvand (bvxor lt!261891 (bvlshr lt!261891 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53782 (bvmul (bvxor h!12368 (bvlshr h!12368 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53782 (bvlshr x!53782 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!362889 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!362889 #b00000000000000000000000000000000))))))

(assert (=> d!84909 (= (toIndex!0 lt!261891 mask!3119) (bvand (bvxor lt!262038 (bvlshr lt!262038 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!573397 d!84909))

(declare-fun d!84911 () Bool)

(declare-fun lt!262040 () (_ BitVec 32))

(declare-fun lt!262039 () (_ BitVec 32))

(assert (=> d!84911 (= lt!262040 (bvmul (bvxor lt!262039 (bvlshr lt!262039 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84911 (= lt!262039 ((_ extract 31 0) (bvand (bvxor (select (arr!17206 a!3118) j!142) (bvlshr (select (arr!17206 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84911 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!362889 (let ((h!12368 ((_ extract 31 0) (bvand (bvxor (select (arr!17206 a!3118) j!142) (bvlshr (select (arr!17206 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53782 (bvmul (bvxor h!12368 (bvlshr h!12368 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53782 (bvlshr x!53782 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!362889 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!362889 #b00000000000000000000000000000000))))))

(assert (=> d!84911 (= (toIndex!0 (select (arr!17206 a!3118) j!142) mask!3119) (bvand (bvxor lt!262040 (bvlshr lt!262040 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!573397 d!84911))

(check-sat (not b!573583) (not b!573456) (not b!573499) (not d!84899) (not b!573485) (not d!84847) (not d!84859) (not d!84907) (not b!573501) (not b!573500) (not bm!32649) (not b!573624) (not bm!32642) (not d!84865) (not b!573629) (not b!573497) (not d!84897) (not b!573484) (not b!573462) (not b!573676) (not bm!32645) (not d!84849) (not b!573590) (not b!573623) (not b!573667) (not d!84867))
(check-sat)
