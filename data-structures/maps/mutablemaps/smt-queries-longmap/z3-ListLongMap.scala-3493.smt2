; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48492 () Bool)

(assert start!48492)

(declare-fun b!532244 () Bool)

(declare-fun res!327747 () Bool)

(declare-fun e!309916 () Bool)

(assert (=> b!532244 (=> (not res!327747) (not e!309916))))

(declare-datatypes ((array!33711 0))(
  ( (array!33712 (arr!16192 (Array (_ BitVec 32) (_ BitVec 64))) (size!16556 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33711)

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33711 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532244 (= res!327747 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532245 () Bool)

(declare-fun e!309915 () Bool)

(assert (=> b!532245 (= e!309915 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun lt!245173 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532245 (= lt!245173 (toIndex!0 (select (arr!16192 a!3154) j!147) mask!3216))))

(declare-fun b!532246 () Bool)

(declare-fun res!327740 () Bool)

(assert (=> b!532246 (=> (not res!327740) (not e!309915))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!532246 (= res!327740 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16556 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16556 a!3154)) (= (select (arr!16192 a!3154) resIndex!32) (select (arr!16192 a!3154) j!147))))))

(declare-fun b!532247 () Bool)

(declare-fun res!327744 () Bool)

(assert (=> b!532247 (=> (not res!327744) (not e!309915))))

(declare-datatypes ((SeekEntryResult!4657 0))(
  ( (MissingZero!4657 (index!20852 (_ BitVec 32))) (Found!4657 (index!20853 (_ BitVec 32))) (Intermediate!4657 (undefined!5469 Bool) (index!20854 (_ BitVec 32)) (x!49853 (_ BitVec 32))) (Undefined!4657) (MissingVacant!4657 (index!20855 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33711 (_ BitVec 32)) SeekEntryResult!4657)

(assert (=> b!532247 (= res!327744 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16192 a!3154) j!147) a!3154 mask!3216) (Intermediate!4657 false resIndex!32 resX!32)))))

(declare-fun res!327746 () Bool)

(assert (=> start!48492 (=> (not res!327746) (not e!309916))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48492 (= res!327746 (validMask!0 mask!3216))))

(assert (=> start!48492 e!309916))

(assert (=> start!48492 true))

(declare-fun array_inv!11966 (array!33711) Bool)

(assert (=> start!48492 (array_inv!11966 a!3154)))

(declare-fun b!532248 () Bool)

(assert (=> b!532248 (= e!309916 e!309915)))

(declare-fun res!327741 () Bool)

(assert (=> b!532248 (=> (not res!327741) (not e!309915))))

(declare-fun lt!245174 () SeekEntryResult!4657)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532248 (= res!327741 (or (= lt!245174 (MissingZero!4657 i!1153)) (= lt!245174 (MissingVacant!4657 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33711 (_ BitVec 32)) SeekEntryResult!4657)

(assert (=> b!532248 (= lt!245174 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!532249 () Bool)

(declare-fun res!327749 () Bool)

(assert (=> b!532249 (=> (not res!327749) (not e!309916))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532249 (= res!327749 (validKeyInArray!0 (select (arr!16192 a!3154) j!147)))))

(declare-fun b!532250 () Bool)

(declare-fun res!327743 () Bool)

(assert (=> b!532250 (=> (not res!327743) (not e!309916))))

(assert (=> b!532250 (= res!327743 (and (= (size!16556 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16556 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16556 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!532251 () Bool)

(declare-fun res!327748 () Bool)

(assert (=> b!532251 (=> (not res!327748) (not e!309915))))

(declare-datatypes ((List!10364 0))(
  ( (Nil!10361) (Cons!10360 (h!11300 (_ BitVec 64)) (t!16600 List!10364)) )
))
(declare-fun arrayNoDuplicates!0 (array!33711 (_ BitVec 32) List!10364) Bool)

(assert (=> b!532251 (= res!327748 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10361))))

(declare-fun b!532252 () Bool)

(declare-fun res!327742 () Bool)

(assert (=> b!532252 (=> (not res!327742) (not e!309915))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33711 (_ BitVec 32)) Bool)

(assert (=> b!532252 (= res!327742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!532253 () Bool)

(declare-fun res!327745 () Bool)

(assert (=> b!532253 (=> (not res!327745) (not e!309916))))

(assert (=> b!532253 (= res!327745 (validKeyInArray!0 k0!1998))))

(assert (= (and start!48492 res!327746) b!532250))

(assert (= (and b!532250 res!327743) b!532249))

(assert (= (and b!532249 res!327749) b!532253))

(assert (= (and b!532253 res!327745) b!532244))

(assert (= (and b!532244 res!327747) b!532248))

(assert (= (and b!532248 res!327741) b!532252))

(assert (= (and b!532252 res!327742) b!532251))

(assert (= (and b!532251 res!327748) b!532246))

(assert (= (and b!532246 res!327740) b!532247))

(assert (= (and b!532247 res!327744) b!532245))

(declare-fun m!512431 () Bool)

(assert (=> b!532251 m!512431))

(declare-fun m!512433 () Bool)

(assert (=> b!532253 m!512433))

(declare-fun m!512435 () Bool)

(assert (=> b!532245 m!512435))

(assert (=> b!532245 m!512435))

(declare-fun m!512437 () Bool)

(assert (=> b!532245 m!512437))

(declare-fun m!512439 () Bool)

(assert (=> b!532244 m!512439))

(assert (=> b!532249 m!512435))

(assert (=> b!532249 m!512435))

(declare-fun m!512441 () Bool)

(assert (=> b!532249 m!512441))

(declare-fun m!512443 () Bool)

(assert (=> b!532252 m!512443))

(declare-fun m!512445 () Bool)

(assert (=> b!532248 m!512445))

(declare-fun m!512447 () Bool)

(assert (=> start!48492 m!512447))

(declare-fun m!512449 () Bool)

(assert (=> start!48492 m!512449))

(assert (=> b!532247 m!512435))

(assert (=> b!532247 m!512435))

(declare-fun m!512451 () Bool)

(assert (=> b!532247 m!512451))

(declare-fun m!512453 () Bool)

(assert (=> b!532246 m!512453))

(assert (=> b!532246 m!512435))

(check-sat (not b!532253) (not b!532244) (not b!532245) (not b!532249) (not b!532247) (not start!48492) (not b!532252) (not b!532248) (not b!532251))
(check-sat)
