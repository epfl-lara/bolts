; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50650 () Bool)

(assert start!50650)

(declare-fun b!553204 () Bool)

(declare-fun e!319124 () Bool)

(declare-fun e!319127 () Bool)

(assert (=> b!553204 (= e!319124 (not e!319127))))

(declare-fun res!345772 () Bool)

(assert (=> b!553204 (=> res!345772 e!319127)))

(declare-datatypes ((SeekEntryResult!5176 0))(
  ( (MissingZero!5176 (index!22931 (_ BitVec 32))) (Found!5176 (index!22932 (_ BitVec 32))) (Intermediate!5176 (undefined!5988 Bool) (index!22933 (_ BitVec 32)) (x!51885 (_ BitVec 32))) (Undefined!5176) (MissingVacant!5176 (index!22934 (_ BitVec 32))) )
))
(declare-fun lt!251428 () SeekEntryResult!5176)

(declare-fun mask!3119 () (_ BitVec 32))

(get-info :version)

(assert (=> b!553204 (= res!345772 (or (not ((_ is Intermediate!5176) lt!251428)) (not (undefined!5988 lt!251428)) (bvslt mask!3119 #b00000000000000000000000000000000)))))

(declare-fun e!319129 () Bool)

(assert (=> b!553204 e!319129))

(declare-fun res!345771 () Bool)

(assert (=> b!553204 (=> (not res!345771) (not e!319129))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((array!34829 0))(
  ( (array!34830 (arr!16720 (Array (_ BitVec 32) (_ BitVec 64))) (size!17084 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34829)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34829 (_ BitVec 32)) Bool)

(assert (=> b!553204 (= res!345771 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17126 0))(
  ( (Unit!17127) )
))
(declare-fun lt!251431 () Unit!17126)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34829 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17126)

(assert (=> b!553204 (= lt!251431 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553205 () Bool)

(declare-fun e!319125 () Bool)

(declare-fun e!319128 () Bool)

(assert (=> b!553205 (= e!319125 e!319128)))

(declare-fun res!345769 () Bool)

(assert (=> b!553205 (=> (not res!345769) (not e!319128))))

(declare-fun lt!251430 () SeekEntryResult!5176)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!553205 (= res!345769 (or (= lt!251430 (MissingZero!5176 i!1132)) (= lt!251430 (MissingVacant!5176 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34829 (_ BitVec 32)) SeekEntryResult!5176)

(assert (=> b!553205 (= lt!251430 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!553206 () Bool)

(declare-fun res!345773 () Bool)

(assert (=> b!553206 (=> (not res!345773) (not e!319128))))

(declare-datatypes ((List!10853 0))(
  ( (Nil!10850) (Cons!10849 (h!11834 (_ BitVec 64)) (t!17089 List!10853)) )
))
(declare-fun arrayNoDuplicates!0 (array!34829 (_ BitVec 32) List!10853) Bool)

(assert (=> b!553206 (= res!345773 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10850))))

(declare-fun b!553207 () Bool)

(assert (=> b!553207 (= e!319128 e!319124)))

(declare-fun res!345770 () Bool)

(assert (=> b!553207 (=> (not res!345770) (not e!319124))))

(declare-fun lt!251432 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34829 (_ BitVec 32)) SeekEntryResult!5176)

(assert (=> b!553207 (= res!345770 (= lt!251428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251432 (select (store (arr!16720 a!3118) i!1132 k0!1914) j!142) (array!34830 (store (arr!16720 a!3118) i!1132 k0!1914) (size!17084 a!3118)) mask!3119)))))

(declare-fun lt!251429 () (_ BitVec 32))

(assert (=> b!553207 (= lt!251428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251429 (select (arr!16720 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553207 (= lt!251432 (toIndex!0 (select (store (arr!16720 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!553207 (= lt!251429 (toIndex!0 (select (arr!16720 a!3118) j!142) mask!3119))))

(declare-fun b!553208 () Bool)

(declare-fun res!345775 () Bool)

(assert (=> b!553208 (=> (not res!345775) (not e!319125))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553208 (= res!345775 (validKeyInArray!0 (select (arr!16720 a!3118) j!142)))))

(declare-fun b!553209 () Bool)

(declare-fun res!345766 () Bool)

(assert (=> b!553209 (=> (not res!345766) (not e!319125))))

(declare-fun arrayContainsKey!0 (array!34829 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553209 (= res!345766 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553211 () Bool)

(assert (=> b!553211 (= e!319127 (validKeyInArray!0 (select (store (arr!16720 a!3118) i!1132 k0!1914) j!142)))))

(declare-fun b!553212 () Bool)

(declare-fun res!345767 () Bool)

(assert (=> b!553212 (=> (not res!345767) (not e!319125))))

(assert (=> b!553212 (= res!345767 (and (= (size!17084 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17084 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17084 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553213 () Bool)

(declare-fun res!345768 () Bool)

(assert (=> b!553213 (=> (not res!345768) (not e!319128))))

(assert (=> b!553213 (= res!345768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553214 () Bool)

(declare-fun res!345776 () Bool)

(assert (=> b!553214 (=> (not res!345776) (not e!319125))))

(assert (=> b!553214 (= res!345776 (validKeyInArray!0 k0!1914))))

(declare-fun res!345774 () Bool)

(assert (=> start!50650 (=> (not res!345774) (not e!319125))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50650 (= res!345774 (validMask!0 mask!3119))))

(assert (=> start!50650 e!319125))

(assert (=> start!50650 true))

(declare-fun array_inv!12494 (array!34829) Bool)

(assert (=> start!50650 (array_inv!12494 a!3118)))

(declare-fun b!553210 () Bool)

(assert (=> b!553210 (= e!319129 (= (seekEntryOrOpen!0 (select (arr!16720 a!3118) j!142) a!3118 mask!3119) (Found!5176 j!142)))))

(assert (= (and start!50650 res!345774) b!553212))

(assert (= (and b!553212 res!345767) b!553208))

(assert (= (and b!553208 res!345775) b!553214))

(assert (= (and b!553214 res!345776) b!553209))

(assert (= (and b!553209 res!345766) b!553205))

(assert (= (and b!553205 res!345769) b!553213))

(assert (= (and b!553213 res!345768) b!553206))

(assert (= (and b!553206 res!345773) b!553207))

(assert (= (and b!553207 res!345770) b!553204))

(assert (= (and b!553204 res!345771) b!553210))

(assert (= (and b!553204 (not res!345772)) b!553211))

(declare-fun m!530313 () Bool)

(assert (=> b!553205 m!530313))

(declare-fun m!530315 () Bool)

(assert (=> b!553208 m!530315))

(assert (=> b!553208 m!530315))

(declare-fun m!530317 () Bool)

(assert (=> b!553208 m!530317))

(declare-fun m!530319 () Bool)

(assert (=> b!553209 m!530319))

(assert (=> b!553210 m!530315))

(assert (=> b!553210 m!530315))

(declare-fun m!530321 () Bool)

(assert (=> b!553210 m!530321))

(declare-fun m!530323 () Bool)

(assert (=> start!50650 m!530323))

(declare-fun m!530325 () Bool)

(assert (=> start!50650 m!530325))

(declare-fun m!530327 () Bool)

(assert (=> b!553206 m!530327))

(declare-fun m!530329 () Bool)

(assert (=> b!553214 m!530329))

(declare-fun m!530331 () Bool)

(assert (=> b!553204 m!530331))

(declare-fun m!530333 () Bool)

(assert (=> b!553204 m!530333))

(declare-fun m!530335 () Bool)

(assert (=> b!553211 m!530335))

(declare-fun m!530337 () Bool)

(assert (=> b!553211 m!530337))

(assert (=> b!553211 m!530337))

(declare-fun m!530339 () Bool)

(assert (=> b!553211 m!530339))

(declare-fun m!530341 () Bool)

(assert (=> b!553213 m!530341))

(assert (=> b!553207 m!530315))

(declare-fun m!530343 () Bool)

(assert (=> b!553207 m!530343))

(assert (=> b!553207 m!530315))

(assert (=> b!553207 m!530337))

(assert (=> b!553207 m!530315))

(declare-fun m!530345 () Bool)

(assert (=> b!553207 m!530345))

(assert (=> b!553207 m!530335))

(assert (=> b!553207 m!530337))

(declare-fun m!530347 () Bool)

(assert (=> b!553207 m!530347))

(assert (=> b!553207 m!530337))

(declare-fun m!530349 () Bool)

(assert (=> b!553207 m!530349))

(check-sat (not b!553211) (not b!553206) (not b!553204) (not b!553213) (not start!50650) (not b!553214) (not b!553205) (not b!553207) (not b!553210) (not b!553209) (not b!553208))
(check-sat)
