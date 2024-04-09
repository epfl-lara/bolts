; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50656 () Bool)

(assert start!50656)

(declare-fun res!345861 () Bool)

(declare-fun e!319170 () Bool)

(assert (=> start!50656 (=> (not res!345861) (not e!319170))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50656 (= res!345861 (validMask!0 mask!3119))))

(assert (=> start!50656 e!319170))

(assert (=> start!50656 true))

(declare-datatypes ((array!34835 0))(
  ( (array!34836 (arr!16723 (Array (_ BitVec 32) (_ BitVec 64))) (size!17087 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34835)

(declare-fun array_inv!12497 (array!34835) Bool)

(assert (=> start!50656 (array_inv!12497 a!3118)))

(declare-fun b!553298 () Bool)

(declare-fun res!345860 () Bool)

(declare-fun e!319168 () Bool)

(assert (=> b!553298 (=> (not res!345860) (not e!319168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34835 (_ BitVec 32)) Bool)

(assert (=> b!553298 (= res!345860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553299 () Bool)

(declare-fun res!345862 () Bool)

(assert (=> b!553299 (=> (not res!345862) (not e!319170))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553299 (= res!345862 (validKeyInArray!0 (select (arr!16723 a!3118) j!142)))))

(declare-fun b!553300 () Bool)

(assert (=> b!553300 (= e!319168 (not true))))

(declare-fun e!319171 () Bool)

(assert (=> b!553300 e!319171))

(declare-fun res!345864 () Bool)

(assert (=> b!553300 (=> (not res!345864) (not e!319171))))

(assert (=> b!553300 (= res!345864 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17132 0))(
  ( (Unit!17133) )
))
(declare-fun lt!251459 () Unit!17132)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34835 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17132)

(assert (=> b!553300 (= lt!251459 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553301 () Bool)

(declare-fun res!345868 () Bool)

(assert (=> b!553301 (=> (not res!345868) (not e!319168))))

(declare-datatypes ((List!10856 0))(
  ( (Nil!10853) (Cons!10852 (h!11837 (_ BitVec 64)) (t!17092 List!10856)) )
))
(declare-fun arrayNoDuplicates!0 (array!34835 (_ BitVec 32) List!10856) Bool)

(assert (=> b!553301 (= res!345868 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10853))))

(declare-fun b!553302 () Bool)

(declare-fun res!345866 () Bool)

(assert (=> b!553302 (=> (not res!345866) (not e!319168))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5179 0))(
  ( (MissingZero!5179 (index!22943 (_ BitVec 32))) (Found!5179 (index!22944 (_ BitVec 32))) (Intermediate!5179 (undefined!5991 Bool) (index!22945 (_ BitVec 32)) (x!51896 (_ BitVec 32))) (Undefined!5179) (MissingVacant!5179 (index!22946 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34835 (_ BitVec 32)) SeekEntryResult!5179)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553302 (= res!345866 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16723 a!3118) j!142) mask!3119) (select (arr!16723 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16723 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16723 a!3118) i!1132 k0!1914) j!142) (array!34836 (store (arr!16723 a!3118) i!1132 k0!1914) (size!17087 a!3118)) mask!3119)))))

(declare-fun b!553303 () Bool)

(declare-fun res!345869 () Bool)

(assert (=> b!553303 (=> (not res!345869) (not e!319170))))

(declare-fun arrayContainsKey!0 (array!34835 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553303 (= res!345869 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553304 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34835 (_ BitVec 32)) SeekEntryResult!5179)

(assert (=> b!553304 (= e!319171 (= (seekEntryOrOpen!0 (select (arr!16723 a!3118) j!142) a!3118 mask!3119) (Found!5179 j!142)))))

(declare-fun b!553305 () Bool)

(assert (=> b!553305 (= e!319170 e!319168)))

(declare-fun res!345867 () Bool)

(assert (=> b!553305 (=> (not res!345867) (not e!319168))))

(declare-fun lt!251458 () SeekEntryResult!5179)

(assert (=> b!553305 (= res!345867 (or (= lt!251458 (MissingZero!5179 i!1132)) (= lt!251458 (MissingVacant!5179 i!1132))))))

(assert (=> b!553305 (= lt!251458 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!553306 () Bool)

(declare-fun res!345863 () Bool)

(assert (=> b!553306 (=> (not res!345863) (not e!319170))))

(assert (=> b!553306 (= res!345863 (validKeyInArray!0 k0!1914))))

(declare-fun b!553307 () Bool)

(declare-fun res!345865 () Bool)

(assert (=> b!553307 (=> (not res!345865) (not e!319170))))

(assert (=> b!553307 (= res!345865 (and (= (size!17087 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17087 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17087 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50656 res!345861) b!553307))

(assert (= (and b!553307 res!345865) b!553299))

(assert (= (and b!553299 res!345862) b!553306))

(assert (= (and b!553306 res!345863) b!553303))

(assert (= (and b!553303 res!345869) b!553305))

(assert (= (and b!553305 res!345867) b!553298))

(assert (= (and b!553298 res!345860) b!553301))

(assert (= (and b!553301 res!345868) b!553302))

(assert (= (and b!553302 res!345866) b!553300))

(assert (= (and b!553300 res!345864) b!553304))

(declare-fun m!530425 () Bool)

(assert (=> b!553303 m!530425))

(declare-fun m!530427 () Bool)

(assert (=> b!553301 m!530427))

(declare-fun m!530429 () Bool)

(assert (=> b!553300 m!530429))

(declare-fun m!530431 () Bool)

(assert (=> b!553300 m!530431))

(declare-fun m!530433 () Bool)

(assert (=> b!553305 m!530433))

(declare-fun m!530435 () Bool)

(assert (=> b!553306 m!530435))

(declare-fun m!530437 () Bool)

(assert (=> b!553298 m!530437))

(declare-fun m!530439 () Bool)

(assert (=> b!553304 m!530439))

(assert (=> b!553304 m!530439))

(declare-fun m!530441 () Bool)

(assert (=> b!553304 m!530441))

(assert (=> b!553299 m!530439))

(assert (=> b!553299 m!530439))

(declare-fun m!530443 () Bool)

(assert (=> b!553299 m!530443))

(declare-fun m!530445 () Bool)

(assert (=> start!50656 m!530445))

(declare-fun m!530447 () Bool)

(assert (=> start!50656 m!530447))

(assert (=> b!553302 m!530439))

(declare-fun m!530449 () Bool)

(assert (=> b!553302 m!530449))

(assert (=> b!553302 m!530439))

(declare-fun m!530451 () Bool)

(assert (=> b!553302 m!530451))

(declare-fun m!530453 () Bool)

(assert (=> b!553302 m!530453))

(assert (=> b!553302 m!530451))

(declare-fun m!530455 () Bool)

(assert (=> b!553302 m!530455))

(assert (=> b!553302 m!530449))

(assert (=> b!553302 m!530439))

(declare-fun m!530457 () Bool)

(assert (=> b!553302 m!530457))

(declare-fun m!530459 () Bool)

(assert (=> b!553302 m!530459))

(assert (=> b!553302 m!530451))

(assert (=> b!553302 m!530453))

(check-sat (not b!553303) (not b!553300) (not b!553305) (not b!553304) (not b!553306) (not b!553301) (not start!50656) (not b!553298) (not b!553299) (not b!553302))
(check-sat)
