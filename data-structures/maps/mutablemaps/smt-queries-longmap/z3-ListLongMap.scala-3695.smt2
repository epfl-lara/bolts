; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50806 () Bool)

(assert start!50806)

(declare-fun b!555435 () Bool)

(declare-fun res!347998 () Bool)

(declare-fun e!320115 () Bool)

(assert (=> b!555435 (=> (not res!347998) (not e!320115))))

(declare-datatypes ((array!34985 0))(
  ( (array!34986 (arr!16798 (Array (_ BitVec 32) (_ BitVec 64))) (size!17162 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34985)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34985 (_ BitVec 32)) Bool)

(assert (=> b!555435 (= res!347998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555436 () Bool)

(declare-fun res!348001 () Bool)

(declare-fun e!320114 () Bool)

(assert (=> b!555436 (=> (not res!348001) (not e!320114))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555436 (= res!348001 (validKeyInArray!0 k0!1914))))

(declare-fun b!555437 () Bool)

(declare-fun res!347999 () Bool)

(assert (=> b!555437 (=> (not res!347999) (not e!320114))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!555437 (= res!347999 (validKeyInArray!0 (select (arr!16798 a!3118) j!142)))))

(declare-fun res!348005 () Bool)

(assert (=> start!50806 (=> (not res!348005) (not e!320114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50806 (= res!348005 (validMask!0 mask!3119))))

(assert (=> start!50806 e!320114))

(assert (=> start!50806 true))

(declare-fun array_inv!12572 (array!34985) Bool)

(assert (=> start!50806 (array_inv!12572 a!3118)))

(declare-fun b!555438 () Bool)

(declare-fun res!348000 () Bool)

(assert (=> b!555438 (=> (not res!348000) (not e!320114))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555438 (= res!348000 (and (= (size!17162 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17162 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17162 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555439 () Bool)

(declare-fun res!348003 () Bool)

(assert (=> b!555439 (=> (not res!348003) (not e!320114))))

(declare-fun arrayContainsKey!0 (array!34985 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555439 (= res!348003 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555440 () Bool)

(assert (=> b!555440 (= e!320114 e!320115)))

(declare-fun res!347997 () Bool)

(assert (=> b!555440 (=> (not res!347997) (not e!320115))))

(declare-datatypes ((SeekEntryResult!5254 0))(
  ( (MissingZero!5254 (index!23243 (_ BitVec 32))) (Found!5254 (index!23244 (_ BitVec 32))) (Intermediate!5254 (undefined!6066 Bool) (index!23245 (_ BitVec 32)) (x!52171 (_ BitVec 32))) (Undefined!5254) (MissingVacant!5254 (index!23246 (_ BitVec 32))) )
))
(declare-fun lt!252507 () SeekEntryResult!5254)

(assert (=> b!555440 (= res!347997 (or (= lt!252507 (MissingZero!5254 i!1132)) (= lt!252507 (MissingVacant!5254 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34985 (_ BitVec 32)) SeekEntryResult!5254)

(assert (=> b!555440 (= lt!252507 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!555441 () Bool)

(declare-fun e!320116 () Bool)

(assert (=> b!555441 (= e!320115 e!320116)))

(declare-fun res!348002 () Bool)

(assert (=> b!555441 (=> (not res!348002) (not e!320116))))

(declare-fun lt!252504 () SeekEntryResult!5254)

(declare-fun lt!252509 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34985 (_ BitVec 32)) SeekEntryResult!5254)

(assert (=> b!555441 (= res!348002 (= lt!252504 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252509 (select (store (arr!16798 a!3118) i!1132 k0!1914) j!142) (array!34986 (store (arr!16798 a!3118) i!1132 k0!1914) (size!17162 a!3118)) mask!3119)))))

(declare-fun lt!252505 () (_ BitVec 32))

(assert (=> b!555441 (= lt!252504 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252505 (select (arr!16798 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555441 (= lt!252509 (toIndex!0 (select (store (arr!16798 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!555441 (= lt!252505 (toIndex!0 (select (arr!16798 a!3118) j!142) mask!3119))))

(declare-fun b!555442 () Bool)

(assert (=> b!555442 (= e!320116 (not true))))

(declare-fun lt!252508 () SeekEntryResult!5254)

(get-info :version)

(assert (=> b!555442 (and (= lt!252508 (Found!5254 j!142)) (or (undefined!6066 lt!252504) (not ((_ is Intermediate!5254) lt!252504)) (= (select (arr!16798 a!3118) (index!23245 lt!252504)) (select (arr!16798 a!3118) j!142)) (not (= (select (arr!16798 a!3118) (index!23245 lt!252504)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252508 (MissingZero!5254 (index!23245 lt!252504)))))))

(assert (=> b!555442 (= lt!252508 (seekEntryOrOpen!0 (select (arr!16798 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!555442 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17282 0))(
  ( (Unit!17283) )
))
(declare-fun lt!252506 () Unit!17282)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34985 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17282)

(assert (=> b!555442 (= lt!252506 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555443 () Bool)

(declare-fun res!348004 () Bool)

(assert (=> b!555443 (=> (not res!348004) (not e!320115))))

(declare-datatypes ((List!10931 0))(
  ( (Nil!10928) (Cons!10927 (h!11912 (_ BitVec 64)) (t!17167 List!10931)) )
))
(declare-fun arrayNoDuplicates!0 (array!34985 (_ BitVec 32) List!10931) Bool)

(assert (=> b!555443 (= res!348004 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10928))))

(assert (= (and start!50806 res!348005) b!555438))

(assert (= (and b!555438 res!348000) b!555437))

(assert (= (and b!555437 res!347999) b!555436))

(assert (= (and b!555436 res!348001) b!555439))

(assert (= (and b!555439 res!348003) b!555440))

(assert (= (and b!555440 res!347997) b!555435))

(assert (= (and b!555435 res!347998) b!555443))

(assert (= (and b!555443 res!348004) b!555441))

(assert (= (and b!555441 res!348002) b!555442))

(declare-fun m!533235 () Bool)

(assert (=> start!50806 m!533235))

(declare-fun m!533237 () Bool)

(assert (=> start!50806 m!533237))

(declare-fun m!533239 () Bool)

(assert (=> b!555437 m!533239))

(assert (=> b!555437 m!533239))

(declare-fun m!533241 () Bool)

(assert (=> b!555437 m!533241))

(assert (=> b!555442 m!533239))

(declare-fun m!533243 () Bool)

(assert (=> b!555442 m!533243))

(declare-fun m!533245 () Bool)

(assert (=> b!555442 m!533245))

(declare-fun m!533247 () Bool)

(assert (=> b!555442 m!533247))

(assert (=> b!555442 m!533239))

(declare-fun m!533249 () Bool)

(assert (=> b!555442 m!533249))

(declare-fun m!533251 () Bool)

(assert (=> b!555443 m!533251))

(declare-fun m!533253 () Bool)

(assert (=> b!555435 m!533253))

(assert (=> b!555441 m!533239))

(declare-fun m!533255 () Bool)

(assert (=> b!555441 m!533255))

(assert (=> b!555441 m!533239))

(assert (=> b!555441 m!533239))

(declare-fun m!533257 () Bool)

(assert (=> b!555441 m!533257))

(declare-fun m!533259 () Bool)

(assert (=> b!555441 m!533259))

(declare-fun m!533261 () Bool)

(assert (=> b!555441 m!533261))

(assert (=> b!555441 m!533259))

(declare-fun m!533263 () Bool)

(assert (=> b!555441 m!533263))

(assert (=> b!555441 m!533259))

(declare-fun m!533265 () Bool)

(assert (=> b!555441 m!533265))

(declare-fun m!533267 () Bool)

(assert (=> b!555439 m!533267))

(declare-fun m!533269 () Bool)

(assert (=> b!555436 m!533269))

(declare-fun m!533271 () Bool)

(assert (=> b!555440 m!533271))

(check-sat (not b!555439) (not b!555437) (not b!555436) (not b!555441) (not b!555442) (not b!555443) (not b!555435) (not b!555440) (not start!50806))
(check-sat)
