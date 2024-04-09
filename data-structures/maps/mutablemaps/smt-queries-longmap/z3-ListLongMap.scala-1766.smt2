; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32252 () Bool)

(assert start!32252)

(declare-fun b!320954 () Bool)

(declare-fun res!175235 () Bool)

(declare-fun e!198979 () Bool)

(assert (=> b!320954 (=> (not res!175235) (not e!198979))))

(declare-datatypes ((array!16438 0))(
  ( (array!16439 (arr!7775 (Array (_ BitVec 32) (_ BitVec 64))) (size!8127 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16438)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16438 (_ BitVec 32)) Bool)

(assert (=> b!320954 (= res!175235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320955 () Bool)

(declare-fun res!175232 () Bool)

(assert (=> b!320955 (=> (not res!175232) (not e!198979))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320955 (= res!175232 (and (= (size!8127 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8127 a!3305))))))

(declare-fun res!175239 () Bool)

(assert (=> start!32252 (=> (not res!175239) (not e!198979))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32252 (= res!175239 (validMask!0 mask!3777))))

(assert (=> start!32252 e!198979))

(declare-fun array_inv!5729 (array!16438) Bool)

(assert (=> start!32252 (array_inv!5729 a!3305)))

(assert (=> start!32252 true))

(declare-fun b!320956 () Bool)

(assert (=> b!320956 (= e!198979 false)))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2917 0))(
  ( (MissingZero!2917 (index!13844 (_ BitVec 32))) (Found!2917 (index!13845 (_ BitVec 32))) (Intermediate!2917 (undefined!3729 Bool) (index!13846 (_ BitVec 32)) (x!32075 (_ BitVec 32))) (Undefined!2917) (MissingVacant!2917 (index!13847 (_ BitVec 32))) )
))
(declare-fun lt!156122 () SeekEntryResult!2917)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16438 (_ BitVec 32)) SeekEntryResult!2917)

(assert (=> b!320956 (= lt!156122 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777))))

(declare-fun b!320957 () Bool)

(declare-fun res!175234 () Bool)

(assert (=> b!320957 (=> (not res!175234) (not e!198979))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!320957 (= res!175234 (and (= (select (arr!7775 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8127 a!3305))))))

(declare-fun b!320958 () Bool)

(declare-fun res!175237 () Bool)

(assert (=> b!320958 (=> (not res!175237) (not e!198979))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320958 (= res!175237 (validKeyInArray!0 k0!2497))))

(declare-fun b!320959 () Bool)

(declare-fun res!175236 () Bool)

(assert (=> b!320959 (=> (not res!175236) (not e!198979))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16438 (_ BitVec 32)) SeekEntryResult!2917)

(assert (=> b!320959 (= res!175236 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2917 i!1250)))))

(declare-fun b!320960 () Bool)

(declare-fun res!175233 () Bool)

(assert (=> b!320960 (=> (not res!175233) (not e!198979))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320960 (= res!175233 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) (Intermediate!2917 false resIndex!58 resX!58)))))

(declare-fun b!320961 () Bool)

(declare-fun res!175238 () Bool)

(assert (=> b!320961 (=> (not res!175238) (not e!198979))))

(declare-fun arrayContainsKey!0 (array!16438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320961 (= res!175238 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!32252 res!175239) b!320955))

(assert (= (and b!320955 res!175232) b!320958))

(assert (= (and b!320958 res!175237) b!320961))

(assert (= (and b!320961 res!175238) b!320959))

(assert (= (and b!320959 res!175236) b!320954))

(assert (= (and b!320954 res!175235) b!320960))

(assert (= (and b!320960 res!175233) b!320957))

(assert (= (and b!320957 res!175234) b!320956))

(declare-fun m!329193 () Bool)

(assert (=> start!32252 m!329193))

(declare-fun m!329195 () Bool)

(assert (=> start!32252 m!329195))

(declare-fun m!329197 () Bool)

(assert (=> b!320956 m!329197))

(declare-fun m!329199 () Bool)

(assert (=> b!320961 m!329199))

(declare-fun m!329201 () Bool)

(assert (=> b!320960 m!329201))

(assert (=> b!320960 m!329201))

(declare-fun m!329203 () Bool)

(assert (=> b!320960 m!329203))

(declare-fun m!329205 () Bool)

(assert (=> b!320957 m!329205))

(declare-fun m!329207 () Bool)

(assert (=> b!320954 m!329207))

(declare-fun m!329209 () Bool)

(assert (=> b!320958 m!329209))

(declare-fun m!329211 () Bool)

(assert (=> b!320959 m!329211))

(check-sat (not b!320960) (not b!320959) (not start!32252) (not b!320961) (not b!320954) (not b!320958) (not b!320956))
