; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47906 () Bool)

(assert start!47906)

(declare-fun b!527236 () Bool)

(declare-fun res!323723 () Bool)

(declare-fun e!307298 () Bool)

(assert (=> b!527236 (=> (not res!323723) (not e!307298))))

(declare-datatypes ((array!33434 0))(
  ( (array!33435 (arr!16064 (Array (_ BitVec 32) (_ BitVec 64))) (size!16428 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33434)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!527236 (= res!323723 (validKeyInArray!0 (select (arr!16064 a!3235) j!176)))))

(declare-fun res!323718 () Bool)

(assert (=> start!47906 (=> (not res!323718) (not e!307298))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47906 (= res!323718 (validMask!0 mask!3524))))

(assert (=> start!47906 e!307298))

(assert (=> start!47906 true))

(declare-fun array_inv!11838 (array!33434) Bool)

(assert (=> start!47906 (array_inv!11838 a!3235)))

(declare-fun b!527237 () Bool)

(declare-fun e!307299 () Bool)

(declare-datatypes ((SeekEntryResult!4538 0))(
  ( (MissingZero!4538 (index!20370 (_ BitVec 32))) (Found!4538 (index!20371 (_ BitVec 32))) (Intermediate!4538 (undefined!5350 Bool) (index!20372 (_ BitVec 32)) (x!49366 (_ BitVec 32))) (Undefined!4538) (MissingVacant!4538 (index!20373 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33434 (_ BitVec 32)) SeekEntryResult!4538)

(assert (=> b!527237 (= e!307299 (= (seekEntryOrOpen!0 (select (arr!16064 a!3235) j!176) a!3235 mask!3524) (Found!4538 j!176)))))

(declare-fun b!527238 () Bool)

(declare-fun res!323712 () Bool)

(declare-fun e!307297 () Bool)

(assert (=> b!527238 (=> (not res!323712) (not e!307297))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33434 (_ BitVec 32)) Bool)

(assert (=> b!527238 (= res!323712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!527239 () Bool)

(declare-fun res!323716 () Bool)

(assert (=> b!527239 (=> (not res!323716) (not e!307298))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!527239 (= res!323716 (and (= (size!16428 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16428 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16428 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!527240 () Bool)

(declare-fun e!307296 () Bool)

(assert (=> b!527240 (= e!307296 false)))

(declare-fun b!527241 () Bool)

(declare-fun res!323722 () Bool)

(declare-fun e!307300 () Bool)

(assert (=> b!527241 (=> res!323722 e!307300)))

(declare-fun lt!242699 () SeekEntryResult!4538)

(assert (=> b!527241 (= res!323722 (or (undefined!5350 lt!242699) (not (is-Intermediate!4538 lt!242699))))))

(declare-fun b!527242 () Bool)

(declare-fun res!323719 () Bool)

(assert (=> b!527242 (=> (not res!323719) (not e!307298))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!527242 (= res!323719 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!527243 () Bool)

(declare-datatypes ((Unit!16618 0))(
  ( (Unit!16619) )
))
(declare-fun e!307295 () Unit!16618)

(declare-fun Unit!16620 () Unit!16618)

(assert (=> b!527243 (= e!307295 Unit!16620)))

(declare-fun lt!242702 () (_ BitVec 32))

(declare-fun lt!242707 () Unit!16618)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33434 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16618)

(assert (=> b!527243 (= lt!242707 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242702 #b00000000000000000000000000000000 (index!20372 lt!242699) (x!49366 lt!242699) mask!3524))))

(declare-fun lt!242701 () array!33434)

(declare-fun res!323721 () Bool)

(declare-fun lt!242705 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33434 (_ BitVec 32)) SeekEntryResult!4538)

(assert (=> b!527243 (= res!323721 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242702 lt!242705 lt!242701 mask!3524) (Intermediate!4538 false (index!20372 lt!242699) (x!49366 lt!242699))))))

(assert (=> b!527243 (=> (not res!323721) (not e!307296))))

(assert (=> b!527243 e!307296))

(declare-fun b!527244 () Bool)

(assert (=> b!527244 (= e!307297 (not e!307300))))

(declare-fun res!323720 () Bool)

(assert (=> b!527244 (=> res!323720 e!307300)))

(declare-fun lt!242708 () (_ BitVec 32))

(assert (=> b!527244 (= res!323720 (= lt!242699 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242708 lt!242705 lt!242701 mask!3524)))))

(assert (=> b!527244 (= lt!242699 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242702 (select (arr!16064 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527244 (= lt!242708 (toIndex!0 lt!242705 mask!3524))))

(assert (=> b!527244 (= lt!242705 (select (store (arr!16064 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!527244 (= lt!242702 (toIndex!0 (select (arr!16064 a!3235) j!176) mask!3524))))

(assert (=> b!527244 (= lt!242701 (array!33435 (store (arr!16064 a!3235) i!1204 k!2280) (size!16428 a!3235)))))

(assert (=> b!527244 e!307299))

(declare-fun res!323715 () Bool)

(assert (=> b!527244 (=> (not res!323715) (not e!307299))))

(assert (=> b!527244 (= res!323715 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242703 () Unit!16618)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33434 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16618)

(assert (=> b!527244 (= lt!242703 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!527245 () Bool)

(assert (=> b!527245 (= e!307300 (or (bvsgt (x!49366 lt!242699) #b01111111111111111111111111111110) (bvslt lt!242702 #b00000000000000000000000000000000) (bvsge lt!242702 (size!16428 a!3235)) (and (bvsge (index!20372 lt!242699) #b00000000000000000000000000000000) (bvslt (index!20372 lt!242699) (size!16428 a!3235)))))))

(assert (=> b!527245 (= (index!20372 lt!242699) i!1204)))

(declare-fun lt!242706 () Unit!16618)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33434 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16618)

(assert (=> b!527245 (= lt!242706 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242702 #b00000000000000000000000000000000 (index!20372 lt!242699) (x!49366 lt!242699) mask!3524))))

(assert (=> b!527245 (and (or (= (select (arr!16064 a!3235) (index!20372 lt!242699)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16064 a!3235) (index!20372 lt!242699)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16064 a!3235) (index!20372 lt!242699)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16064 a!3235) (index!20372 lt!242699)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242700 () Unit!16618)

(assert (=> b!527245 (= lt!242700 e!307295)))

(declare-fun c!62069 () Bool)

(assert (=> b!527245 (= c!62069 (= (select (arr!16064 a!3235) (index!20372 lt!242699)) (select (arr!16064 a!3235) j!176)))))

(assert (=> b!527245 (and (bvslt (x!49366 lt!242699) #b01111111111111111111111111111110) (or (= (select (arr!16064 a!3235) (index!20372 lt!242699)) (select (arr!16064 a!3235) j!176)) (= (select (arr!16064 a!3235) (index!20372 lt!242699)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16064 a!3235) (index!20372 lt!242699)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527246 () Bool)

(declare-fun res!323714 () Bool)

(assert (=> b!527246 (=> (not res!323714) (not e!307297))))

(declare-datatypes ((List!10275 0))(
  ( (Nil!10272) (Cons!10271 (h!11205 (_ BitVec 64)) (t!16511 List!10275)) )
))
(declare-fun arrayNoDuplicates!0 (array!33434 (_ BitVec 32) List!10275) Bool)

(assert (=> b!527246 (= res!323714 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10272))))

(declare-fun b!527247 () Bool)

(assert (=> b!527247 (= e!307298 e!307297)))

(declare-fun res!323717 () Bool)

(assert (=> b!527247 (=> (not res!323717) (not e!307297))))

(declare-fun lt!242704 () SeekEntryResult!4538)

(assert (=> b!527247 (= res!323717 (or (= lt!242704 (MissingZero!4538 i!1204)) (= lt!242704 (MissingVacant!4538 i!1204))))))

(assert (=> b!527247 (= lt!242704 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!527248 () Bool)

(declare-fun res!323713 () Bool)

(assert (=> b!527248 (=> (not res!323713) (not e!307298))))

(assert (=> b!527248 (= res!323713 (validKeyInArray!0 k!2280))))

(declare-fun b!527249 () Bool)

(declare-fun Unit!16621 () Unit!16618)

(assert (=> b!527249 (= e!307295 Unit!16621)))

(assert (= (and start!47906 res!323718) b!527239))

(assert (= (and b!527239 res!323716) b!527236))

(assert (= (and b!527236 res!323723) b!527248))

(assert (= (and b!527248 res!323713) b!527242))

(assert (= (and b!527242 res!323719) b!527247))

(assert (= (and b!527247 res!323717) b!527238))

(assert (= (and b!527238 res!323712) b!527246))

(assert (= (and b!527246 res!323714) b!527244))

(assert (= (and b!527244 res!323715) b!527237))

(assert (= (and b!527244 (not res!323720)) b!527241))

(assert (= (and b!527241 (not res!323722)) b!527245))

(assert (= (and b!527245 c!62069) b!527243))

(assert (= (and b!527245 (not c!62069)) b!527249))

(assert (= (and b!527243 res!323721) b!527240))

(declare-fun m!507923 () Bool)

(assert (=> b!527242 m!507923))

(declare-fun m!507925 () Bool)

(assert (=> b!527238 m!507925))

(declare-fun m!507927 () Bool)

(assert (=> b!527247 m!507927))

(declare-fun m!507929 () Bool)

(assert (=> b!527244 m!507929))

(declare-fun m!507931 () Bool)

(assert (=> b!527244 m!507931))

(declare-fun m!507933 () Bool)

(assert (=> b!527244 m!507933))

(declare-fun m!507935 () Bool)

(assert (=> b!527244 m!507935))

(declare-fun m!507937 () Bool)

(assert (=> b!527244 m!507937))

(assert (=> b!527244 m!507935))

(declare-fun m!507939 () Bool)

(assert (=> b!527244 m!507939))

(declare-fun m!507941 () Bool)

(assert (=> b!527244 m!507941))

(declare-fun m!507943 () Bool)

(assert (=> b!527244 m!507943))

(assert (=> b!527244 m!507935))

(declare-fun m!507945 () Bool)

(assert (=> b!527244 m!507945))

(assert (=> b!527237 m!507935))

(assert (=> b!527237 m!507935))

(declare-fun m!507947 () Bool)

(assert (=> b!527237 m!507947))

(declare-fun m!507949 () Bool)

(assert (=> b!527245 m!507949))

(declare-fun m!507951 () Bool)

(assert (=> b!527245 m!507951))

(assert (=> b!527245 m!507935))

(declare-fun m!507953 () Bool)

(assert (=> start!47906 m!507953))

(declare-fun m!507955 () Bool)

(assert (=> start!47906 m!507955))

(assert (=> b!527236 m!507935))

(assert (=> b!527236 m!507935))

(declare-fun m!507957 () Bool)

(assert (=> b!527236 m!507957))

(declare-fun m!507959 () Bool)

(assert (=> b!527243 m!507959))

(declare-fun m!507961 () Bool)

(assert (=> b!527243 m!507961))

(declare-fun m!507963 () Bool)

(assert (=> b!527246 m!507963))

(declare-fun m!507965 () Bool)

(assert (=> b!527248 m!507965))

(push 1)

(assert (not b!527245))

(assert (not b!527248))

(assert (not b!527238))

(assert (not start!47906))

(assert (not b!527236))

(assert (not b!527242))

(assert (not b!527243))

(assert (not b!527237))

(assert (not b!527247))

(assert (not b!527246))

(assert (not b!527244))

(check-sat)

(pop 1)

(push 1)

(check-sat)

