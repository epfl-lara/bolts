; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50818 () Bool)

(assert start!50818)

(declare-fun b!555597 () Bool)

(declare-fun res!348164 () Bool)

(declare-fun e!320187 () Bool)

(assert (=> b!555597 (=> (not res!348164) (not e!320187))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34997 0))(
  ( (array!34998 (arr!16804 (Array (_ BitVec 32) (_ BitVec 64))) (size!17168 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34997)

(assert (=> b!555597 (= res!348164 (and (= (size!17168 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17168 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17168 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555599 () Bool)

(declare-fun e!320185 () Bool)

(assert (=> b!555599 (= e!320187 e!320185)))

(declare-fun res!348160 () Bool)

(assert (=> b!555599 (=> (not res!348160) (not e!320185))))

(declare-datatypes ((SeekEntryResult!5260 0))(
  ( (MissingZero!5260 (index!23267 (_ BitVec 32))) (Found!5260 (index!23268 (_ BitVec 32))) (Intermediate!5260 (undefined!6072 Bool) (index!23269 (_ BitVec 32)) (x!52193 (_ BitVec 32))) (Undefined!5260) (MissingVacant!5260 (index!23270 (_ BitVec 32))) )
))
(declare-fun lt!252614 () SeekEntryResult!5260)

(assert (=> b!555599 (= res!348160 (or (= lt!252614 (MissingZero!5260 i!1132)) (= lt!252614 (MissingVacant!5260 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34997 (_ BitVec 32)) SeekEntryResult!5260)

(assert (=> b!555599 (= lt!252614 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!555600 () Bool)

(declare-fun res!348167 () Bool)

(assert (=> b!555600 (=> (not res!348167) (not e!320187))))

(declare-fun arrayContainsKey!0 (array!34997 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555600 (= res!348167 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555601 () Bool)

(declare-fun res!348159 () Bool)

(assert (=> b!555601 (=> (not res!348159) (not e!320185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34997 (_ BitVec 32)) Bool)

(assert (=> b!555601 (= res!348159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555602 () Bool)

(declare-fun res!348162 () Bool)

(assert (=> b!555602 (=> (not res!348162) (not e!320187))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555602 (= res!348162 (validKeyInArray!0 (select (arr!16804 a!3118) j!142)))))

(declare-fun b!555603 () Bool)

(declare-fun e!320188 () Bool)

(assert (=> b!555603 (= e!320185 e!320188)))

(declare-fun res!348165 () Bool)

(assert (=> b!555603 (=> (not res!348165) (not e!320188))))

(declare-fun lt!252616 () SeekEntryResult!5260)

(declare-fun lt!252617 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34997 (_ BitVec 32)) SeekEntryResult!5260)

(assert (=> b!555603 (= res!348165 (= lt!252616 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252617 (select (store (arr!16804 a!3118) i!1132 k0!1914) j!142) (array!34998 (store (arr!16804 a!3118) i!1132 k0!1914) (size!17168 a!3118)) mask!3119)))))

(declare-fun lt!252613 () (_ BitVec 32))

(assert (=> b!555603 (= lt!252616 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252613 (select (arr!16804 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555603 (= lt!252617 (toIndex!0 (select (store (arr!16804 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!555603 (= lt!252613 (toIndex!0 (select (arr!16804 a!3118) j!142) mask!3119))))

(declare-fun res!348166 () Bool)

(assert (=> start!50818 (=> (not res!348166) (not e!320187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50818 (= res!348166 (validMask!0 mask!3119))))

(assert (=> start!50818 e!320187))

(assert (=> start!50818 true))

(declare-fun array_inv!12578 (array!34997) Bool)

(assert (=> start!50818 (array_inv!12578 a!3118)))

(declare-fun b!555598 () Bool)

(declare-fun res!348161 () Bool)

(assert (=> b!555598 (=> (not res!348161) (not e!320187))))

(assert (=> b!555598 (= res!348161 (validKeyInArray!0 k0!1914))))

(declare-fun b!555604 () Bool)

(declare-fun res!348163 () Bool)

(assert (=> b!555604 (=> (not res!348163) (not e!320185))))

(declare-datatypes ((List!10937 0))(
  ( (Nil!10934) (Cons!10933 (h!11918 (_ BitVec 64)) (t!17173 List!10937)) )
))
(declare-fun arrayNoDuplicates!0 (array!34997 (_ BitVec 32) List!10937) Bool)

(assert (=> b!555604 (= res!348163 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10934))))

(declare-fun b!555605 () Bool)

(assert (=> b!555605 (= e!320188 (not true))))

(declare-fun lt!252612 () SeekEntryResult!5260)

(get-info :version)

(assert (=> b!555605 (and (= lt!252612 (Found!5260 j!142)) (or (undefined!6072 lt!252616) (not ((_ is Intermediate!5260) lt!252616)) (= (select (arr!16804 a!3118) (index!23269 lt!252616)) (select (arr!16804 a!3118) j!142)) (not (= (select (arr!16804 a!3118) (index!23269 lt!252616)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252612 (MissingZero!5260 (index!23269 lt!252616)))))))

(assert (=> b!555605 (= lt!252612 (seekEntryOrOpen!0 (select (arr!16804 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!555605 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17294 0))(
  ( (Unit!17295) )
))
(declare-fun lt!252615 () Unit!17294)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34997 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17294)

(assert (=> b!555605 (= lt!252615 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!50818 res!348166) b!555597))

(assert (= (and b!555597 res!348164) b!555602))

(assert (= (and b!555602 res!348162) b!555598))

(assert (= (and b!555598 res!348161) b!555600))

(assert (= (and b!555600 res!348167) b!555599))

(assert (= (and b!555599 res!348160) b!555601))

(assert (= (and b!555601 res!348159) b!555604))

(assert (= (and b!555604 res!348163) b!555603))

(assert (= (and b!555603 res!348165) b!555605))

(declare-fun m!533463 () Bool)

(assert (=> b!555599 m!533463))

(declare-fun m!533465 () Bool)

(assert (=> b!555602 m!533465))

(assert (=> b!555602 m!533465))

(declare-fun m!533467 () Bool)

(assert (=> b!555602 m!533467))

(declare-fun m!533469 () Bool)

(assert (=> b!555601 m!533469))

(declare-fun m!533471 () Bool)

(assert (=> start!50818 m!533471))

(declare-fun m!533473 () Bool)

(assert (=> start!50818 m!533473))

(assert (=> b!555603 m!533465))

(declare-fun m!533475 () Bool)

(assert (=> b!555603 m!533475))

(assert (=> b!555603 m!533465))

(declare-fun m!533477 () Bool)

(assert (=> b!555603 m!533477))

(assert (=> b!555603 m!533465))

(declare-fun m!533479 () Bool)

(assert (=> b!555603 m!533479))

(assert (=> b!555603 m!533479))

(declare-fun m!533481 () Bool)

(assert (=> b!555603 m!533481))

(declare-fun m!533483 () Bool)

(assert (=> b!555603 m!533483))

(assert (=> b!555603 m!533479))

(declare-fun m!533485 () Bool)

(assert (=> b!555603 m!533485))

(declare-fun m!533487 () Bool)

(assert (=> b!555600 m!533487))

(declare-fun m!533489 () Bool)

(assert (=> b!555605 m!533489))

(declare-fun m!533491 () Bool)

(assert (=> b!555605 m!533491))

(assert (=> b!555605 m!533465))

(declare-fun m!533493 () Bool)

(assert (=> b!555605 m!533493))

(declare-fun m!533495 () Bool)

(assert (=> b!555605 m!533495))

(assert (=> b!555605 m!533465))

(declare-fun m!533497 () Bool)

(assert (=> b!555604 m!533497))

(declare-fun m!533499 () Bool)

(assert (=> b!555598 m!533499))

(check-sat (not b!555604) (not b!555598) (not b!555599) (not b!555600) (not start!50818) (not b!555605) (not b!555601) (not b!555602) (not b!555603))
(check-sat)
