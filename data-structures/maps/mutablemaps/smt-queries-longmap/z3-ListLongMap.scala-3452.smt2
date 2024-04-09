; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47916 () Bool)

(assert start!47916)

(declare-fun b!527446 () Bool)

(declare-fun res!323895 () Bool)

(declare-fun e!307402 () Bool)

(assert (=> b!527446 (=> (not res!323895) (not e!307402))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33444 0))(
  ( (array!33445 (arr!16069 (Array (_ BitVec 32) (_ BitVec 64))) (size!16433 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33444)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!527446 (= res!323895 (and (= (size!16433 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16433 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16433 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!527447 () Bool)

(declare-fun e!307404 () Bool)

(declare-fun e!307405 () Bool)

(assert (=> b!527447 (= e!307404 (not e!307405))))

(declare-fun res!323897 () Bool)

(assert (=> b!527447 (=> res!323897 e!307405)))

(declare-fun lt!242858 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4543 0))(
  ( (MissingZero!4543 (index!20390 (_ BitVec 32))) (Found!4543 (index!20391 (_ BitVec 32))) (Intermediate!4543 (undefined!5355 Bool) (index!20392 (_ BitVec 32)) (x!49387 (_ BitVec 32))) (Undefined!4543) (MissingVacant!4543 (index!20393 (_ BitVec 32))) )
))
(declare-fun lt!242854 () SeekEntryResult!4543)

(declare-fun lt!242850 () (_ BitVec 32))

(declare-fun lt!242855 () array!33444)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33444 (_ BitVec 32)) SeekEntryResult!4543)

(assert (=> b!527447 (= res!323897 (= lt!242854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242850 lt!242858 lt!242855 mask!3524)))))

(declare-fun lt!242851 () (_ BitVec 32))

(assert (=> b!527447 (= lt!242854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242851 (select (arr!16069 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527447 (= lt!242850 (toIndex!0 lt!242858 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!527447 (= lt!242858 (select (store (arr!16069 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!527447 (= lt!242851 (toIndex!0 (select (arr!16069 a!3235) j!176) mask!3524))))

(assert (=> b!527447 (= lt!242855 (array!33445 (store (arr!16069 a!3235) i!1204 k0!2280) (size!16433 a!3235)))))

(declare-fun e!307401 () Bool)

(assert (=> b!527447 e!307401))

(declare-fun res!323894 () Bool)

(assert (=> b!527447 (=> (not res!323894) (not e!307401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33444 (_ BitVec 32)) Bool)

(assert (=> b!527447 (= res!323894 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16638 0))(
  ( (Unit!16639) )
))
(declare-fun lt!242857 () Unit!16638)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33444 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16638)

(assert (=> b!527447 (= lt!242857 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!527449 () Bool)

(declare-fun e!307399 () Bool)

(assert (=> b!527449 (= e!307399 false)))

(declare-fun b!527450 () Bool)

(assert (=> b!527450 (= e!307402 e!307404)))

(declare-fun res!323899 () Bool)

(assert (=> b!527450 (=> (not res!323899) (not e!307404))))

(declare-fun lt!242853 () SeekEntryResult!4543)

(assert (=> b!527450 (= res!323899 (or (= lt!242853 (MissingZero!4543 i!1204)) (= lt!242853 (MissingVacant!4543 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33444 (_ BitVec 32)) SeekEntryResult!4543)

(assert (=> b!527450 (= lt!242853 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!527451 () Bool)

(assert (=> b!527451 (= e!307405 true)))

(assert (=> b!527451 (= (index!20392 lt!242854) i!1204)))

(declare-fun lt!242856 () Unit!16638)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33444 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16638)

(assert (=> b!527451 (= lt!242856 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!242851 #b00000000000000000000000000000000 (index!20392 lt!242854) (x!49387 lt!242854) mask!3524))))

(assert (=> b!527451 (and (or (= (select (arr!16069 a!3235) (index!20392 lt!242854)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16069 a!3235) (index!20392 lt!242854)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16069 a!3235) (index!20392 lt!242854)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16069 a!3235) (index!20392 lt!242854)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242849 () Unit!16638)

(declare-fun e!307403 () Unit!16638)

(assert (=> b!527451 (= lt!242849 e!307403)))

(declare-fun c!62084 () Bool)

(assert (=> b!527451 (= c!62084 (= (select (arr!16069 a!3235) (index!20392 lt!242854)) (select (arr!16069 a!3235) j!176)))))

(assert (=> b!527451 (and (bvslt (x!49387 lt!242854) #b01111111111111111111111111111110) (or (= (select (arr!16069 a!3235) (index!20392 lt!242854)) (select (arr!16069 a!3235) j!176)) (= (select (arr!16069 a!3235) (index!20392 lt!242854)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16069 a!3235) (index!20392 lt!242854)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527452 () Bool)

(declare-fun Unit!16640 () Unit!16638)

(assert (=> b!527452 (= e!307403 Unit!16640)))

(declare-fun b!527453 () Bool)

(declare-fun res!323901 () Bool)

(assert (=> b!527453 (=> res!323901 e!307405)))

(get-info :version)

(assert (=> b!527453 (= res!323901 (or (undefined!5355 lt!242854) (not ((_ is Intermediate!4543) lt!242854))))))

(declare-fun b!527454 () Bool)

(declare-fun res!323900 () Bool)

(assert (=> b!527454 (=> (not res!323900) (not e!307402))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!527454 (= res!323900 (validKeyInArray!0 (select (arr!16069 a!3235) j!176)))))

(declare-fun b!527455 () Bool)

(declare-fun Unit!16641 () Unit!16638)

(assert (=> b!527455 (= e!307403 Unit!16641)))

(declare-fun lt!242852 () Unit!16638)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33444 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16638)

(assert (=> b!527455 (= lt!242852 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!242851 #b00000000000000000000000000000000 (index!20392 lt!242854) (x!49387 lt!242854) mask!3524))))

(declare-fun res!323896 () Bool)

(assert (=> b!527455 (= res!323896 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242851 lt!242858 lt!242855 mask!3524) (Intermediate!4543 false (index!20392 lt!242854) (x!49387 lt!242854))))))

(assert (=> b!527455 (=> (not res!323896) (not e!307399))))

(assert (=> b!527455 e!307399))

(declare-fun b!527456 () Bool)

(declare-fun res!323892 () Bool)

(assert (=> b!527456 (=> (not res!323892) (not e!307404))))

(assert (=> b!527456 (= res!323892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!527457 () Bool)

(declare-fun res!323902 () Bool)

(assert (=> b!527457 (=> (not res!323902) (not e!307402))))

(assert (=> b!527457 (= res!323902 (validKeyInArray!0 k0!2280))))

(declare-fun res!323903 () Bool)

(assert (=> start!47916 (=> (not res!323903) (not e!307402))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47916 (= res!323903 (validMask!0 mask!3524))))

(assert (=> start!47916 e!307402))

(assert (=> start!47916 true))

(declare-fun array_inv!11843 (array!33444) Bool)

(assert (=> start!47916 (array_inv!11843 a!3235)))

(declare-fun b!527448 () Bool)

(declare-fun res!323893 () Bool)

(assert (=> b!527448 (=> (not res!323893) (not e!307402))))

(declare-fun arrayContainsKey!0 (array!33444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!527448 (= res!323893 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!527458 () Bool)

(declare-fun res!323898 () Bool)

(assert (=> b!527458 (=> (not res!323898) (not e!307404))))

(declare-datatypes ((List!10280 0))(
  ( (Nil!10277) (Cons!10276 (h!11210 (_ BitVec 64)) (t!16516 List!10280)) )
))
(declare-fun arrayNoDuplicates!0 (array!33444 (_ BitVec 32) List!10280) Bool)

(assert (=> b!527458 (= res!323898 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10277))))

(declare-fun b!527459 () Bool)

(assert (=> b!527459 (= e!307401 (= (seekEntryOrOpen!0 (select (arr!16069 a!3235) j!176) a!3235 mask!3524) (Found!4543 j!176)))))

(assert (= (and start!47916 res!323903) b!527446))

(assert (= (and b!527446 res!323895) b!527454))

(assert (= (and b!527454 res!323900) b!527457))

(assert (= (and b!527457 res!323902) b!527448))

(assert (= (and b!527448 res!323893) b!527450))

(assert (= (and b!527450 res!323899) b!527456))

(assert (= (and b!527456 res!323892) b!527458))

(assert (= (and b!527458 res!323898) b!527447))

(assert (= (and b!527447 res!323894) b!527459))

(assert (= (and b!527447 (not res!323897)) b!527453))

(assert (= (and b!527453 (not res!323901)) b!527451))

(assert (= (and b!527451 c!62084) b!527455))

(assert (= (and b!527451 (not c!62084)) b!527452))

(assert (= (and b!527455 res!323896) b!527449))

(declare-fun m!508143 () Bool)

(assert (=> b!527459 m!508143))

(assert (=> b!527459 m!508143))

(declare-fun m!508145 () Bool)

(assert (=> b!527459 m!508145))

(declare-fun m!508147 () Bool)

(assert (=> b!527456 m!508147))

(declare-fun m!508149 () Bool)

(assert (=> start!47916 m!508149))

(declare-fun m!508151 () Bool)

(assert (=> start!47916 m!508151))

(declare-fun m!508153 () Bool)

(assert (=> b!527450 m!508153))

(declare-fun m!508155 () Bool)

(assert (=> b!527455 m!508155))

(declare-fun m!508157 () Bool)

(assert (=> b!527455 m!508157))

(declare-fun m!508159 () Bool)

(assert (=> b!527447 m!508159))

(declare-fun m!508161 () Bool)

(assert (=> b!527447 m!508161))

(declare-fun m!508163 () Bool)

(assert (=> b!527447 m!508163))

(assert (=> b!527447 m!508143))

(declare-fun m!508165 () Bool)

(assert (=> b!527447 m!508165))

(assert (=> b!527447 m!508143))

(declare-fun m!508167 () Bool)

(assert (=> b!527447 m!508167))

(assert (=> b!527447 m!508143))

(declare-fun m!508169 () Bool)

(assert (=> b!527447 m!508169))

(declare-fun m!508171 () Bool)

(assert (=> b!527447 m!508171))

(declare-fun m!508173 () Bool)

(assert (=> b!527447 m!508173))

(assert (=> b!527454 m!508143))

(assert (=> b!527454 m!508143))

(declare-fun m!508175 () Bool)

(assert (=> b!527454 m!508175))

(declare-fun m!508177 () Bool)

(assert (=> b!527458 m!508177))

(declare-fun m!508179 () Bool)

(assert (=> b!527457 m!508179))

(declare-fun m!508181 () Bool)

(assert (=> b!527448 m!508181))

(declare-fun m!508183 () Bool)

(assert (=> b!527451 m!508183))

(declare-fun m!508185 () Bool)

(assert (=> b!527451 m!508185))

(assert (=> b!527451 m!508143))

(check-sat (not b!527455) (not b!527454) (not b!527456) (not b!527458) (not b!527457) (not b!527448) (not b!527451) (not b!527447) (not start!47916) (not b!527459) (not b!527450))
(check-sat)
