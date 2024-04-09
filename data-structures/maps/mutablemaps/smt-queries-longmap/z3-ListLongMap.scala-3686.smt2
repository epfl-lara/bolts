; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50752 () Bool)

(assert start!50752)

(declare-fun b!554706 () Bool)

(declare-fun e!319790 () Bool)

(declare-fun e!319789 () Bool)

(assert (=> b!554706 (= e!319790 e!319789)))

(declare-fun res!347271 () Bool)

(assert (=> b!554706 (=> (not res!347271) (not e!319789))))

(declare-datatypes ((SeekEntryResult!5227 0))(
  ( (MissingZero!5227 (index!23135 (_ BitVec 32))) (Found!5227 (index!23136 (_ BitVec 32))) (Intermediate!5227 (undefined!6039 Bool) (index!23137 (_ BitVec 32)) (x!52072 (_ BitVec 32))) (Undefined!5227) (MissingVacant!5227 (index!23138 (_ BitVec 32))) )
))
(declare-fun lt!252020 () SeekEntryResult!5227)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554706 (= res!347271 (or (= lt!252020 (MissingZero!5227 i!1132)) (= lt!252020 (MissingVacant!5227 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!34931 0))(
  ( (array!34932 (arr!16771 (Array (_ BitVec 32) (_ BitVec 64))) (size!17135 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34931)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34931 (_ BitVec 32)) SeekEntryResult!5227)

(assert (=> b!554706 (= lt!252020 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!554707 () Bool)

(declare-fun res!347274 () Bool)

(assert (=> b!554707 (=> (not res!347274) (not e!319789))))

(declare-datatypes ((List!10904 0))(
  ( (Nil!10901) (Cons!10900 (h!11885 (_ BitVec 64)) (t!17140 List!10904)) )
))
(declare-fun arrayNoDuplicates!0 (array!34931 (_ BitVec 32) List!10904) Bool)

(assert (=> b!554707 (= res!347274 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10901))))

(declare-fun b!554708 () Bool)

(declare-fun res!347270 () Bool)

(assert (=> b!554708 (=> (not res!347270) (not e!319790))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!554708 (= res!347270 (and (= (size!17135 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17135 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17135 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!347276 () Bool)

(assert (=> start!50752 (=> (not res!347276) (not e!319790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50752 (= res!347276 (validMask!0 mask!3119))))

(assert (=> start!50752 e!319790))

(assert (=> start!50752 true))

(declare-fun array_inv!12545 (array!34931) Bool)

(assert (=> start!50752 (array_inv!12545 a!3118)))

(declare-fun b!554709 () Bool)

(declare-fun e!319792 () Bool)

(assert (=> b!554709 (= e!319789 e!319792)))

(declare-fun res!347272 () Bool)

(assert (=> b!554709 (=> (not res!347272) (not e!319792))))

(declare-fun lt!252023 () (_ BitVec 32))

(declare-fun lt!252021 () SeekEntryResult!5227)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34931 (_ BitVec 32)) SeekEntryResult!5227)

(assert (=> b!554709 (= res!347272 (= lt!252021 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252023 (select (store (arr!16771 a!3118) i!1132 k0!1914) j!142) (array!34932 (store (arr!16771 a!3118) i!1132 k0!1914) (size!17135 a!3118)) mask!3119)))))

(declare-fun lt!252018 () (_ BitVec 32))

(assert (=> b!554709 (= lt!252021 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252018 (select (arr!16771 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554709 (= lt!252023 (toIndex!0 (select (store (arr!16771 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!554709 (= lt!252018 (toIndex!0 (select (arr!16771 a!3118) j!142) mask!3119))))

(declare-fun b!554710 () Bool)

(declare-fun res!347269 () Bool)

(assert (=> b!554710 (=> (not res!347269) (not e!319789))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34931 (_ BitVec 32)) Bool)

(assert (=> b!554710 (= res!347269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554711 () Bool)

(assert (=> b!554711 (= e!319792 (not true))))

(declare-fun lt!252022 () SeekEntryResult!5227)

(get-info :version)

(assert (=> b!554711 (and (= lt!252022 (Found!5227 j!142)) (or (undefined!6039 lt!252021) (not ((_ is Intermediate!5227) lt!252021)) (= (select (arr!16771 a!3118) (index!23137 lt!252021)) (select (arr!16771 a!3118) j!142)) (not (= (select (arr!16771 a!3118) (index!23137 lt!252021)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252022 (MissingZero!5227 (index!23137 lt!252021)))))))

(assert (=> b!554711 (= lt!252022 (seekEntryOrOpen!0 (select (arr!16771 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!554711 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17228 0))(
  ( (Unit!17229) )
))
(declare-fun lt!252019 () Unit!17228)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34931 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17228)

(assert (=> b!554711 (= lt!252019 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554712 () Bool)

(declare-fun res!347268 () Bool)

(assert (=> b!554712 (=> (not res!347268) (not e!319790))))

(declare-fun arrayContainsKey!0 (array!34931 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554712 (= res!347268 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554713 () Bool)

(declare-fun res!347275 () Bool)

(assert (=> b!554713 (=> (not res!347275) (not e!319790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554713 (= res!347275 (validKeyInArray!0 (select (arr!16771 a!3118) j!142)))))

(declare-fun b!554714 () Bool)

(declare-fun res!347273 () Bool)

(assert (=> b!554714 (=> (not res!347273) (not e!319790))))

(assert (=> b!554714 (= res!347273 (validKeyInArray!0 k0!1914))))

(assert (= (and start!50752 res!347276) b!554708))

(assert (= (and b!554708 res!347270) b!554713))

(assert (= (and b!554713 res!347275) b!554714))

(assert (= (and b!554714 res!347273) b!554712))

(assert (= (and b!554712 res!347268) b!554706))

(assert (= (and b!554706 res!347271) b!554710))

(assert (= (and b!554710 res!347269) b!554707))

(assert (= (and b!554707 res!347274) b!554709))

(assert (= (and b!554709 res!347272) b!554711))

(declare-fun m!532209 () Bool)

(assert (=> b!554707 m!532209))

(declare-fun m!532211 () Bool)

(assert (=> b!554713 m!532211))

(assert (=> b!554713 m!532211))

(declare-fun m!532213 () Bool)

(assert (=> b!554713 m!532213))

(declare-fun m!532215 () Bool)

(assert (=> b!554706 m!532215))

(declare-fun m!532217 () Bool)

(assert (=> b!554712 m!532217))

(declare-fun m!532219 () Bool)

(assert (=> b!554710 m!532219))

(assert (=> b!554709 m!532211))

(declare-fun m!532221 () Bool)

(assert (=> b!554709 m!532221))

(assert (=> b!554709 m!532211))

(declare-fun m!532223 () Bool)

(assert (=> b!554709 m!532223))

(assert (=> b!554709 m!532211))

(declare-fun m!532225 () Bool)

(assert (=> b!554709 m!532225))

(assert (=> b!554709 m!532225))

(declare-fun m!532227 () Bool)

(assert (=> b!554709 m!532227))

(declare-fun m!532229 () Bool)

(assert (=> b!554709 m!532229))

(assert (=> b!554709 m!532225))

(declare-fun m!532231 () Bool)

(assert (=> b!554709 m!532231))

(declare-fun m!532233 () Bool)

(assert (=> b!554714 m!532233))

(assert (=> b!554711 m!532211))

(declare-fun m!532235 () Bool)

(assert (=> b!554711 m!532235))

(declare-fun m!532237 () Bool)

(assert (=> b!554711 m!532237))

(declare-fun m!532239 () Bool)

(assert (=> b!554711 m!532239))

(assert (=> b!554711 m!532211))

(declare-fun m!532241 () Bool)

(assert (=> b!554711 m!532241))

(declare-fun m!532243 () Bool)

(assert (=> start!50752 m!532243))

(declare-fun m!532245 () Bool)

(assert (=> start!50752 m!532245))

(check-sat (not b!554714) (not start!50752) (not b!554710) (not b!554713) (not b!554712) (not b!554706) (not b!554707) (not b!554711) (not b!554709))
(check-sat)
