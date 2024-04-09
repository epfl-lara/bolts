; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66592 () Bool)

(assert start!66592)

(declare-fun b!767102 () Bool)

(declare-fun res!519061 () Bool)

(declare-fun e!427199 () Bool)

(assert (=> b!767102 (=> (not res!519061) (not e!427199))))

(declare-datatypes ((array!42255 0))(
  ( (array!42256 (arr!20227 (Array (_ BitVec 32) (_ BitVec 64))) (size!20648 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42255)

(declare-datatypes ((List!14282 0))(
  ( (Nil!14279) (Cons!14278 (h!15371 (_ BitVec 64)) (t!20605 List!14282)) )
))
(declare-fun arrayNoDuplicates!0 (array!42255 (_ BitVec 32) List!14282) Bool)

(assert (=> b!767102 (= res!519061 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14279))))

(declare-fun res!519057 () Bool)

(declare-fun e!427196 () Bool)

(assert (=> start!66592 (=> (not res!519057) (not e!427196))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66592 (= res!519057 (validMask!0 mask!3328))))

(assert (=> start!66592 e!427196))

(assert (=> start!66592 true))

(declare-fun array_inv!16001 (array!42255) Bool)

(assert (=> start!66592 (array_inv!16001 a!3186)))

(declare-fun b!767103 () Bool)

(declare-fun e!427194 () Bool)

(declare-fun e!427202 () Bool)

(assert (=> b!767103 (= e!427194 e!427202)))

(declare-fun res!519054 () Bool)

(assert (=> b!767103 (=> res!519054 e!427202)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!767103 (= res!519054 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!341261 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767103 (= lt!341261 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!767104 () Bool)

(declare-fun e!427201 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7834 0))(
  ( (MissingZero!7834 (index!33703 (_ BitVec 32))) (Found!7834 (index!33704 (_ BitVec 32))) (Intermediate!7834 (undefined!8646 Bool) (index!33705 (_ BitVec 32)) (x!64645 (_ BitVec 32))) (Undefined!7834) (MissingVacant!7834 (index!33706 (_ BitVec 32))) )
))
(declare-fun lt!341262 () SeekEntryResult!7834)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42255 (_ BitVec 32)) SeekEntryResult!7834)

(assert (=> b!767104 (= e!427201 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20227 a!3186) j!159) a!3186 mask!3328) lt!341262))))

(declare-fun b!767105 () Bool)

(declare-fun e!427193 () Bool)

(declare-fun e!427195 () Bool)

(assert (=> b!767105 (= e!427193 e!427195)))

(declare-fun res!519055 () Bool)

(assert (=> b!767105 (=> (not res!519055) (not e!427195))))

(declare-fun lt!341266 () SeekEntryResult!7834)

(declare-fun lt!341258 () SeekEntryResult!7834)

(assert (=> b!767105 (= res!519055 (= lt!341266 lt!341258))))

(declare-fun lt!341259 () array!42255)

(declare-fun lt!341263 () (_ BitVec 64))

(assert (=> b!767105 (= lt!341258 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341263 lt!341259 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767105 (= lt!341266 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341263 mask!3328) lt!341263 lt!341259 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!767105 (= lt!341263 (select (store (arr!20227 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!767105 (= lt!341259 (array!42256 (store (arr!20227 a!3186) i!1173 k0!2102) (size!20648 a!3186)))))

(declare-fun b!767106 () Bool)

(assert (=> b!767106 (= e!427202 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!341260 () SeekEntryResult!7834)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42255 (_ BitVec 32)) SeekEntryResult!7834)

(assert (=> b!767106 (= lt!341260 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20227 a!3186) j!159) a!3186 mask!3328))))

(declare-fun e!427197 () Bool)

(declare-fun b!767107 () Bool)

(declare-fun lt!341264 () SeekEntryResult!7834)

(assert (=> b!767107 (= e!427197 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20227 a!3186) j!159) a!3186 mask!3328) lt!341264))))

(declare-fun b!767108 () Bool)

(declare-fun res!519060 () Bool)

(assert (=> b!767108 (=> (not res!519060) (not e!427199))))

(assert (=> b!767108 (= res!519060 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20648 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20648 a!3186))))))

(declare-fun b!767109 () Bool)

(declare-fun res!519056 () Bool)

(assert (=> b!767109 (=> (not res!519056) (not e!427196))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!767109 (= res!519056 (validKeyInArray!0 k0!2102))))

(declare-fun b!767110 () Bool)

(declare-fun res!519053 () Bool)

(assert (=> b!767110 (=> (not res!519053) (not e!427196))))

(declare-fun arrayContainsKey!0 (array!42255 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!767110 (= res!519053 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!767111 () Bool)

(assert (=> b!767111 (= e!427196 e!427199)))

(declare-fun res!519066 () Bool)

(assert (=> b!767111 (=> (not res!519066) (not e!427199))))

(declare-fun lt!341265 () SeekEntryResult!7834)

(assert (=> b!767111 (= res!519066 (or (= lt!341265 (MissingZero!7834 i!1173)) (= lt!341265 (MissingVacant!7834 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42255 (_ BitVec 32)) SeekEntryResult!7834)

(assert (=> b!767111 (= lt!341265 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!767112 () Bool)

(declare-fun res!519059 () Bool)

(assert (=> b!767112 (=> (not res!519059) (not e!427193))))

(assert (=> b!767112 (= res!519059 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20227 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!767113 () Bool)

(assert (=> b!767113 (= e!427195 (not e!427194))))

(declare-fun res!519062 () Bool)

(assert (=> b!767113 (=> res!519062 e!427194)))

(get-info :version)

(assert (=> b!767113 (= res!519062 (or (not ((_ is Intermediate!7834) lt!341258)) (bvsge x!1131 (x!64645 lt!341258))))))

(declare-fun e!427198 () Bool)

(assert (=> b!767113 e!427198))

(declare-fun res!519058 () Bool)

(assert (=> b!767113 (=> (not res!519058) (not e!427198))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42255 (_ BitVec 32)) Bool)

(assert (=> b!767113 (= res!519058 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26394 0))(
  ( (Unit!26395) )
))
(declare-fun lt!341257 () Unit!26394)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42255 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26394)

(assert (=> b!767113 (= lt!341257 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!767114 () Bool)

(declare-fun res!519065 () Bool)

(assert (=> b!767114 (=> (not res!519065) (not e!427193))))

(assert (=> b!767114 (= res!519065 e!427201)))

(declare-fun c!84417 () Bool)

(assert (=> b!767114 (= c!84417 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!767115 () Bool)

(declare-fun res!519051 () Bool)

(assert (=> b!767115 (=> (not res!519051) (not e!427199))))

(assert (=> b!767115 (= res!519051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!767116 () Bool)

(declare-fun res!519052 () Bool)

(assert (=> b!767116 (=> (not res!519052) (not e!427196))))

(assert (=> b!767116 (= res!519052 (and (= (size!20648 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20648 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20648 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!767117 () Bool)

(declare-fun res!519063 () Bool)

(assert (=> b!767117 (=> (not res!519063) (not e!427196))))

(assert (=> b!767117 (= res!519063 (validKeyInArray!0 (select (arr!20227 a!3186) j!159)))))

(declare-fun b!767118 () Bool)

(assert (=> b!767118 (= e!427199 e!427193)))

(declare-fun res!519050 () Bool)

(assert (=> b!767118 (=> (not res!519050) (not e!427193))))

(assert (=> b!767118 (= res!519050 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20227 a!3186) j!159) mask!3328) (select (arr!20227 a!3186) j!159) a!3186 mask!3328) lt!341262))))

(assert (=> b!767118 (= lt!341262 (Intermediate!7834 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!767119 () Bool)

(assert (=> b!767119 (= e!427201 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20227 a!3186) j!159) a!3186 mask!3328) (Found!7834 j!159)))))

(declare-fun b!767120 () Bool)

(assert (=> b!767120 (= e!427198 e!427197)))

(declare-fun res!519064 () Bool)

(assert (=> b!767120 (=> (not res!519064) (not e!427197))))

(assert (=> b!767120 (= res!519064 (= (seekEntryOrOpen!0 (select (arr!20227 a!3186) j!159) a!3186 mask!3328) lt!341264))))

(assert (=> b!767120 (= lt!341264 (Found!7834 j!159))))

(assert (= (and start!66592 res!519057) b!767116))

(assert (= (and b!767116 res!519052) b!767117))

(assert (= (and b!767117 res!519063) b!767109))

(assert (= (and b!767109 res!519056) b!767110))

(assert (= (and b!767110 res!519053) b!767111))

(assert (= (and b!767111 res!519066) b!767115))

(assert (= (and b!767115 res!519051) b!767102))

(assert (= (and b!767102 res!519061) b!767108))

(assert (= (and b!767108 res!519060) b!767118))

(assert (= (and b!767118 res!519050) b!767112))

(assert (= (and b!767112 res!519059) b!767114))

(assert (= (and b!767114 c!84417) b!767104))

(assert (= (and b!767114 (not c!84417)) b!767119))

(assert (= (and b!767114 res!519065) b!767105))

(assert (= (and b!767105 res!519055) b!767113))

(assert (= (and b!767113 res!519058) b!767120))

(assert (= (and b!767120 res!519064) b!767107))

(assert (= (and b!767113 (not res!519062)) b!767103))

(assert (= (and b!767103 (not res!519054)) b!767106))

(declare-fun m!712985 () Bool)

(assert (=> b!767117 m!712985))

(assert (=> b!767117 m!712985))

(declare-fun m!712987 () Bool)

(assert (=> b!767117 m!712987))

(declare-fun m!712989 () Bool)

(assert (=> b!767112 m!712989))

(assert (=> b!767120 m!712985))

(assert (=> b!767120 m!712985))

(declare-fun m!712991 () Bool)

(assert (=> b!767120 m!712991))

(assert (=> b!767118 m!712985))

(assert (=> b!767118 m!712985))

(declare-fun m!712993 () Bool)

(assert (=> b!767118 m!712993))

(assert (=> b!767118 m!712993))

(assert (=> b!767118 m!712985))

(declare-fun m!712995 () Bool)

(assert (=> b!767118 m!712995))

(assert (=> b!767106 m!712985))

(assert (=> b!767106 m!712985))

(declare-fun m!712997 () Bool)

(assert (=> b!767106 m!712997))

(declare-fun m!712999 () Bool)

(assert (=> b!767105 m!712999))

(declare-fun m!713001 () Bool)

(assert (=> b!767105 m!713001))

(declare-fun m!713003 () Bool)

(assert (=> b!767105 m!713003))

(declare-fun m!713005 () Bool)

(assert (=> b!767105 m!713005))

(declare-fun m!713007 () Bool)

(assert (=> b!767105 m!713007))

(assert (=> b!767105 m!713001))

(declare-fun m!713009 () Bool)

(assert (=> start!66592 m!713009))

(declare-fun m!713011 () Bool)

(assert (=> start!66592 m!713011))

(declare-fun m!713013 () Bool)

(assert (=> b!767102 m!713013))

(assert (=> b!767104 m!712985))

(assert (=> b!767104 m!712985))

(declare-fun m!713015 () Bool)

(assert (=> b!767104 m!713015))

(declare-fun m!713017 () Bool)

(assert (=> b!767113 m!713017))

(declare-fun m!713019 () Bool)

(assert (=> b!767113 m!713019))

(declare-fun m!713021 () Bool)

(assert (=> b!767115 m!713021))

(assert (=> b!767119 m!712985))

(assert (=> b!767119 m!712985))

(assert (=> b!767119 m!712997))

(declare-fun m!713023 () Bool)

(assert (=> b!767111 m!713023))

(declare-fun m!713025 () Bool)

(assert (=> b!767103 m!713025))

(assert (=> b!767107 m!712985))

(assert (=> b!767107 m!712985))

(declare-fun m!713027 () Bool)

(assert (=> b!767107 m!713027))

(declare-fun m!713029 () Bool)

(assert (=> b!767109 m!713029))

(declare-fun m!713031 () Bool)

(assert (=> b!767110 m!713031))

(check-sat (not b!767106) (not b!767118) (not b!767104) (not b!767102) (not b!767103) (not start!66592) (not b!767117) (not b!767119) (not b!767120) (not b!767105) (not b!767113) (not b!767115) (not b!767109) (not b!767110) (not b!767111) (not b!767107))
(check-sat)
