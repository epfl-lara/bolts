; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50440 () Bool)

(assert start!50440)

(declare-fun b!551258 () Bool)

(declare-fun res!344188 () Bool)

(declare-fun e!318157 () Bool)

(assert (=> b!551258 (=> (not res!344188) (not e!318157))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34733 0))(
  ( (array!34734 (arr!16675 (Array (_ BitVec 32) (_ BitVec 64))) (size!17039 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34733)

(declare-datatypes ((SeekEntryResult!5131 0))(
  ( (MissingZero!5131 (index!22751 (_ BitVec 32))) (Found!5131 (index!22752 (_ BitVec 32))) (Intermediate!5131 (undefined!5943 Bool) (index!22753 (_ BitVec 32)) (x!51708 (_ BitVec 32))) (Undefined!5131) (MissingVacant!5131 (index!22754 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34733 (_ BitVec 32)) SeekEntryResult!5131)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551258 (= res!344188 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16675 a!3118) j!142) mask!3119) (select (arr!16675 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16675 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16675 a!3118) i!1132 k0!1914) j!142) (array!34734 (store (arr!16675 a!3118) i!1132 k0!1914) (size!17039 a!3118)) mask!3119)))))

(declare-fun b!551259 () Bool)

(declare-fun res!344187 () Bool)

(declare-fun e!318158 () Bool)

(assert (=> b!551259 (=> (not res!344187) (not e!318158))))

(assert (=> b!551259 (= res!344187 (and (= (size!17039 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17039 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17039 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551260 () Bool)

(assert (=> b!551260 (= e!318157 (not (bvsge mask!3119 #b00000000000000000000000000000000)))))

(declare-fun e!318160 () Bool)

(assert (=> b!551260 e!318160))

(declare-fun res!344193 () Bool)

(assert (=> b!551260 (=> (not res!344193) (not e!318160))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34733 (_ BitVec 32)) Bool)

(assert (=> b!551260 (= res!344193 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17036 0))(
  ( (Unit!17037) )
))
(declare-fun lt!250795 () Unit!17036)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34733 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17036)

(assert (=> b!551260 (= lt!250795 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!344190 () Bool)

(assert (=> start!50440 (=> (not res!344190) (not e!318158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50440 (= res!344190 (validMask!0 mask!3119))))

(assert (=> start!50440 e!318158))

(assert (=> start!50440 true))

(declare-fun array_inv!12449 (array!34733) Bool)

(assert (=> start!50440 (array_inv!12449 a!3118)))

(declare-fun b!551261 () Bool)

(declare-fun res!344189 () Bool)

(assert (=> b!551261 (=> (not res!344189) (not e!318157))))

(declare-datatypes ((List!10808 0))(
  ( (Nil!10805) (Cons!10804 (h!11783 (_ BitVec 64)) (t!17044 List!10808)) )
))
(declare-fun arrayNoDuplicates!0 (array!34733 (_ BitVec 32) List!10808) Bool)

(assert (=> b!551261 (= res!344189 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10805))))

(declare-fun b!551262 () Bool)

(declare-fun res!344191 () Bool)

(assert (=> b!551262 (=> (not res!344191) (not e!318157))))

(assert (=> b!551262 (= res!344191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551263 () Bool)

(declare-fun res!344194 () Bool)

(assert (=> b!551263 (=> (not res!344194) (not e!318158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551263 (= res!344194 (validKeyInArray!0 (select (arr!16675 a!3118) j!142)))))

(declare-fun b!551264 () Bool)

(declare-fun res!344195 () Bool)

(assert (=> b!551264 (=> (not res!344195) (not e!318158))))

(declare-fun arrayContainsKey!0 (array!34733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551264 (= res!344195 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551265 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34733 (_ BitVec 32)) SeekEntryResult!5131)

(assert (=> b!551265 (= e!318160 (= (seekEntryOrOpen!0 (select (arr!16675 a!3118) j!142) a!3118 mask!3119) (Found!5131 j!142)))))

(declare-fun b!551266 () Bool)

(declare-fun res!344186 () Bool)

(assert (=> b!551266 (=> (not res!344186) (not e!318158))))

(assert (=> b!551266 (= res!344186 (validKeyInArray!0 k0!1914))))

(declare-fun b!551267 () Bool)

(assert (=> b!551267 (= e!318158 e!318157)))

(declare-fun res!344192 () Bool)

(assert (=> b!551267 (=> (not res!344192) (not e!318157))))

(declare-fun lt!250796 () SeekEntryResult!5131)

(assert (=> b!551267 (= res!344192 (or (= lt!250796 (MissingZero!5131 i!1132)) (= lt!250796 (MissingVacant!5131 i!1132))))))

(assert (=> b!551267 (= lt!250796 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!50440 res!344190) b!551259))

(assert (= (and b!551259 res!344187) b!551263))

(assert (= (and b!551263 res!344194) b!551266))

(assert (= (and b!551266 res!344186) b!551264))

(assert (= (and b!551264 res!344195) b!551267))

(assert (= (and b!551267 res!344192) b!551262))

(assert (= (and b!551262 res!344191) b!551261))

(assert (= (and b!551261 res!344189) b!551258))

(assert (= (and b!551258 res!344188) b!551260))

(assert (= (and b!551260 res!344193) b!551265))

(declare-fun m!528283 () Bool)

(assert (=> b!551266 m!528283))

(declare-fun m!528285 () Bool)

(assert (=> b!551263 m!528285))

(assert (=> b!551263 m!528285))

(declare-fun m!528287 () Bool)

(assert (=> b!551263 m!528287))

(declare-fun m!528289 () Bool)

(assert (=> start!50440 m!528289))

(declare-fun m!528291 () Bool)

(assert (=> start!50440 m!528291))

(declare-fun m!528293 () Bool)

(assert (=> b!551264 m!528293))

(declare-fun m!528295 () Bool)

(assert (=> b!551261 m!528295))

(declare-fun m!528297 () Bool)

(assert (=> b!551260 m!528297))

(declare-fun m!528299 () Bool)

(assert (=> b!551260 m!528299))

(declare-fun m!528301 () Bool)

(assert (=> b!551267 m!528301))

(assert (=> b!551258 m!528285))

(declare-fun m!528303 () Bool)

(assert (=> b!551258 m!528303))

(assert (=> b!551258 m!528285))

(declare-fun m!528305 () Bool)

(assert (=> b!551258 m!528305))

(declare-fun m!528307 () Bool)

(assert (=> b!551258 m!528307))

(assert (=> b!551258 m!528305))

(declare-fun m!528309 () Bool)

(assert (=> b!551258 m!528309))

(assert (=> b!551258 m!528303))

(assert (=> b!551258 m!528285))

(declare-fun m!528311 () Bool)

(assert (=> b!551258 m!528311))

(declare-fun m!528313 () Bool)

(assert (=> b!551258 m!528313))

(assert (=> b!551258 m!528305))

(assert (=> b!551258 m!528307))

(assert (=> b!551265 m!528285))

(assert (=> b!551265 m!528285))

(declare-fun m!528315 () Bool)

(assert (=> b!551265 m!528315))

(declare-fun m!528317 () Bool)

(assert (=> b!551262 m!528317))

(check-sat (not b!551265) (not start!50440) (not b!551263) (not b!551264) (not b!551258) (not b!551262) (not b!551261) (not b!551266) (not b!551260) (not b!551267))
(check-sat)
