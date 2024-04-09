; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47802 () Bool)

(assert start!47802)

(declare-fun b!526237 () Bool)

(declare-fun res!323021 () Bool)

(declare-fun e!306754 () Bool)

(assert (=> b!526237 (=> (not res!323021) (not e!306754))))

(declare-datatypes ((array!33399 0))(
  ( (array!33400 (arr!16048 (Array (_ BitVec 32) (_ BitVec 64))) (size!16412 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33399)

(declare-datatypes ((List!10259 0))(
  ( (Nil!10256) (Cons!10255 (h!11186 (_ BitVec 64)) (t!16495 List!10259)) )
))
(declare-fun arrayNoDuplicates!0 (array!33399 (_ BitVec 32) List!10259) Bool)

(assert (=> b!526237 (= res!323021 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10256))))

(declare-fun b!526238 () Bool)

(declare-fun res!323020 () Bool)

(declare-fun e!306753 () Bool)

(assert (=> b!526238 (=> (not res!323020) (not e!306753))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!526238 (= res!323020 (and (= (size!16412 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16412 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16412 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!323012 () Bool)

(assert (=> start!47802 (=> (not res!323012) (not e!306753))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47802 (= res!323012 (validMask!0 mask!3524))))

(assert (=> start!47802 e!306753))

(assert (=> start!47802 true))

(declare-fun array_inv!11822 (array!33399) Bool)

(assert (=> start!47802 (array_inv!11822 a!3235)))

(declare-fun b!526239 () Bool)

(declare-fun res!323017 () Bool)

(assert (=> b!526239 (=> (not res!323017) (not e!306754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33399 (_ BitVec 32)) Bool)

(assert (=> b!526239 (= res!323017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!526240 () Bool)

(declare-fun res!323014 () Bool)

(assert (=> b!526240 (=> (not res!323014) (not e!306753))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526240 (= res!323014 (validKeyInArray!0 k0!2280))))

(declare-fun b!526241 () Bool)

(declare-fun e!306749 () Bool)

(assert (=> b!526241 (= e!306754 (not e!306749))))

(declare-fun res!323018 () Bool)

(assert (=> b!526241 (=> res!323018 e!306749)))

(declare-fun lt!242070 () (_ BitVec 32))

(declare-fun lt!242066 () array!33399)

(declare-datatypes ((SeekEntryResult!4522 0))(
  ( (MissingZero!4522 (index!20300 (_ BitVec 32))) (Found!4522 (index!20301 (_ BitVec 32))) (Intermediate!4522 (undefined!5334 Bool) (index!20302 (_ BitVec 32)) (x!49298 (_ BitVec 32))) (Undefined!4522) (MissingVacant!4522 (index!20303 (_ BitVec 32))) )
))
(declare-fun lt!242069 () SeekEntryResult!4522)

(declare-fun lt!242072 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33399 (_ BitVec 32)) SeekEntryResult!4522)

(assert (=> b!526241 (= res!323018 (= lt!242069 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242070 lt!242072 lt!242066 mask!3524)))))

(declare-fun lt!242075 () (_ BitVec 32))

(assert (=> b!526241 (= lt!242069 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242075 (select (arr!16048 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526241 (= lt!242070 (toIndex!0 lt!242072 mask!3524))))

(assert (=> b!526241 (= lt!242072 (select (store (arr!16048 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!526241 (= lt!242075 (toIndex!0 (select (arr!16048 a!3235) j!176) mask!3524))))

(assert (=> b!526241 (= lt!242066 (array!33400 (store (arr!16048 a!3235) i!1204 k0!2280) (size!16412 a!3235)))))

(declare-fun e!306752 () Bool)

(assert (=> b!526241 e!306752))

(declare-fun res!323015 () Bool)

(assert (=> b!526241 (=> (not res!323015) (not e!306752))))

(assert (=> b!526241 (= res!323015 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16554 0))(
  ( (Unit!16555) )
))
(declare-fun lt!242071 () Unit!16554)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33399 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16554)

(assert (=> b!526241 (= lt!242071 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!526242 () Bool)

(assert (=> b!526242 (= e!306753 e!306754)))

(declare-fun res!323010 () Bool)

(assert (=> b!526242 (=> (not res!323010) (not e!306754))))

(declare-fun lt!242068 () SeekEntryResult!4522)

(assert (=> b!526242 (= res!323010 (or (= lt!242068 (MissingZero!4522 i!1204)) (= lt!242068 (MissingVacant!4522 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33399 (_ BitVec 32)) SeekEntryResult!4522)

(assert (=> b!526242 (= lt!242068 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!526243 () Bool)

(declare-fun e!306751 () Bool)

(assert (=> b!526243 (= e!306751 false)))

(declare-fun b!526244 () Bool)

(declare-fun res!323013 () Bool)

(assert (=> b!526244 (=> (not res!323013) (not e!306753))))

(declare-fun arrayContainsKey!0 (array!33399 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526244 (= res!323013 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!526245 () Bool)

(declare-fun res!323016 () Bool)

(assert (=> b!526245 (=> res!323016 e!306749)))

(get-info :version)

(assert (=> b!526245 (= res!323016 (or (undefined!5334 lt!242069) (not ((_ is Intermediate!4522) lt!242069))))))

(declare-fun b!526246 () Bool)

(assert (=> b!526246 (= e!306749 true)))

(assert (=> b!526246 (= (index!20302 lt!242069) i!1204)))

(declare-fun lt!242067 () Unit!16554)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33399 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16554)

(assert (=> b!526246 (= lt!242067 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!242075 #b00000000000000000000000000000000 (index!20302 lt!242069) (x!49298 lt!242069) mask!3524))))

(assert (=> b!526246 (and (or (= (select (arr!16048 a!3235) (index!20302 lt!242069)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16048 a!3235) (index!20302 lt!242069)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16048 a!3235) (index!20302 lt!242069)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16048 a!3235) (index!20302 lt!242069)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242074 () Unit!16554)

(declare-fun e!306748 () Unit!16554)

(assert (=> b!526246 (= lt!242074 e!306748)))

(declare-fun c!61919 () Bool)

(assert (=> b!526246 (= c!61919 (= (select (arr!16048 a!3235) (index!20302 lt!242069)) (select (arr!16048 a!3235) j!176)))))

(assert (=> b!526246 (and (bvslt (x!49298 lt!242069) #b01111111111111111111111111111110) (or (= (select (arr!16048 a!3235) (index!20302 lt!242069)) (select (arr!16048 a!3235) j!176)) (= (select (arr!16048 a!3235) (index!20302 lt!242069)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16048 a!3235) (index!20302 lt!242069)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526247 () Bool)

(assert (=> b!526247 (= e!306752 (= (seekEntryOrOpen!0 (select (arr!16048 a!3235) j!176) a!3235 mask!3524) (Found!4522 j!176)))))

(declare-fun b!526248 () Bool)

(declare-fun Unit!16556 () Unit!16554)

(assert (=> b!526248 (= e!306748 Unit!16556)))

(declare-fun lt!242073 () Unit!16554)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33399 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16554)

(assert (=> b!526248 (= lt!242073 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!242075 #b00000000000000000000000000000000 (index!20302 lt!242069) (x!49298 lt!242069) mask!3524))))

(declare-fun res!323019 () Bool)

(assert (=> b!526248 (= res!323019 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242075 lt!242072 lt!242066 mask!3524) (Intermediate!4522 false (index!20302 lt!242069) (x!49298 lt!242069))))))

(assert (=> b!526248 (=> (not res!323019) (not e!306751))))

(assert (=> b!526248 e!306751))

(declare-fun b!526249 () Bool)

(declare-fun res!323011 () Bool)

(assert (=> b!526249 (=> (not res!323011) (not e!306753))))

(assert (=> b!526249 (= res!323011 (validKeyInArray!0 (select (arr!16048 a!3235) j!176)))))

(declare-fun b!526250 () Bool)

(declare-fun Unit!16557 () Unit!16554)

(assert (=> b!526250 (= e!306748 Unit!16557)))

(assert (= (and start!47802 res!323012) b!526238))

(assert (= (and b!526238 res!323020) b!526249))

(assert (= (and b!526249 res!323011) b!526240))

(assert (= (and b!526240 res!323014) b!526244))

(assert (= (and b!526244 res!323013) b!526242))

(assert (= (and b!526242 res!323010) b!526239))

(assert (= (and b!526239 res!323017) b!526237))

(assert (= (and b!526237 res!323021) b!526241))

(assert (= (and b!526241 res!323015) b!526247))

(assert (= (and b!526241 (not res!323018)) b!526245))

(assert (= (and b!526245 (not res!323016)) b!526246))

(assert (= (and b!526246 c!61919) b!526248))

(assert (= (and b!526246 (not c!61919)) b!526250))

(assert (= (and b!526248 res!323019) b!526243))

(declare-fun m!506979 () Bool)

(assert (=> b!526240 m!506979))

(declare-fun m!506981 () Bool)

(assert (=> b!526248 m!506981))

(declare-fun m!506983 () Bool)

(assert (=> b!526248 m!506983))

(declare-fun m!506985 () Bool)

(assert (=> b!526244 m!506985))

(declare-fun m!506987 () Bool)

(assert (=> b!526237 m!506987))

(declare-fun m!506989 () Bool)

(assert (=> b!526241 m!506989))

(declare-fun m!506991 () Bool)

(assert (=> b!526241 m!506991))

(declare-fun m!506993 () Bool)

(assert (=> b!526241 m!506993))

(declare-fun m!506995 () Bool)

(assert (=> b!526241 m!506995))

(declare-fun m!506997 () Bool)

(assert (=> b!526241 m!506997))

(declare-fun m!506999 () Bool)

(assert (=> b!526241 m!506999))

(assert (=> b!526241 m!506997))

(declare-fun m!507001 () Bool)

(assert (=> b!526241 m!507001))

(assert (=> b!526241 m!506997))

(declare-fun m!507003 () Bool)

(assert (=> b!526241 m!507003))

(declare-fun m!507005 () Bool)

(assert (=> b!526241 m!507005))

(declare-fun m!507007 () Bool)

(assert (=> b!526246 m!507007))

(declare-fun m!507009 () Bool)

(assert (=> b!526246 m!507009))

(assert (=> b!526246 m!506997))

(declare-fun m!507011 () Bool)

(assert (=> start!47802 m!507011))

(declare-fun m!507013 () Bool)

(assert (=> start!47802 m!507013))

(declare-fun m!507015 () Bool)

(assert (=> b!526242 m!507015))

(declare-fun m!507017 () Bool)

(assert (=> b!526239 m!507017))

(assert (=> b!526249 m!506997))

(assert (=> b!526249 m!506997))

(declare-fun m!507019 () Bool)

(assert (=> b!526249 m!507019))

(assert (=> b!526247 m!506997))

(assert (=> b!526247 m!506997))

(declare-fun m!507021 () Bool)

(assert (=> b!526247 m!507021))

(check-sat (not b!526249) (not b!526240) (not b!526237) (not b!526242) (not b!526241) (not b!526247) (not start!47802) (not b!526239) (not b!526246) (not b!526248) (not b!526244))
(check-sat)
