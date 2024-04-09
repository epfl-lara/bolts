; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86472 () Bool)

(assert start!86472)

(declare-fun b!1000547 () Bool)

(declare-fun res!670184 () Bool)

(declare-fun e!563944 () Bool)

(assert (=> b!1000547 (=> (not res!670184) (not e!563944))))

(declare-datatypes ((array!63225 0))(
  ( (array!63226 (arr!30434 (Array (_ BitVec 32) (_ BitVec 64))) (size!30937 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63225)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9366 0))(
  ( (MissingZero!9366 (index!39834 (_ BitVec 32))) (Found!9366 (index!39835 (_ BitVec 32))) (Intermediate!9366 (undefined!10178 Bool) (index!39836 (_ BitVec 32)) (x!87291 (_ BitVec 32))) (Undefined!9366) (MissingVacant!9366 (index!39837 (_ BitVec 32))) )
))
(declare-fun lt!442298 () SeekEntryResult!9366)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63225 (_ BitVec 32)) SeekEntryResult!9366)

(assert (=> b!1000547 (= res!670184 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30434 a!3219) j!170) a!3219 mask!3464) lt!442298))))

(declare-fun b!1000548 () Bool)

(declare-fun res!670192 () Bool)

(declare-fun e!563943 () Bool)

(assert (=> b!1000548 (=> (not res!670192) (not e!563943))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000548 (= res!670192 (validKeyInArray!0 (select (arr!30434 a!3219) j!170)))))

(declare-fun b!1000549 () Bool)

(declare-fun res!670183 () Bool)

(assert (=> b!1000549 (=> (not res!670183) (not e!563943))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63225 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000549 (= res!670183 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000550 () Bool)

(declare-fun res!670188 () Bool)

(assert (=> b!1000550 (=> (not res!670188) (not e!563943))))

(assert (=> b!1000550 (= res!670188 (validKeyInArray!0 k0!2224))))

(declare-fun b!1000551 () Bool)

(declare-fun res!670191 () Bool)

(declare-fun e!563945 () Bool)

(assert (=> b!1000551 (=> (not res!670191) (not e!563945))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000551 (= res!670191 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30937 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30937 a!3219))))))

(declare-fun res!670182 () Bool)

(assert (=> start!86472 (=> (not res!670182) (not e!563943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86472 (= res!670182 (validMask!0 mask!3464))))

(assert (=> start!86472 e!563943))

(declare-fun array_inv!23424 (array!63225) Bool)

(assert (=> start!86472 (array_inv!23424 a!3219)))

(assert (=> start!86472 true))

(declare-fun b!1000552 () Bool)

(declare-fun res!670189 () Bool)

(assert (=> b!1000552 (=> (not res!670189) (not e!563944))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun lt!442297 () SeekEntryResult!9366)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000552 (= res!670189 (not (= lt!442297 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30434 a!3219) i!1194 k0!2224) j!170) mask!3464) (select (store (arr!30434 a!3219) i!1194 k0!2224) j!170) (array!63226 (store (arr!30434 a!3219) i!1194 k0!2224) (size!30937 a!3219)) mask!3464))))))

(declare-fun b!1000553 () Bool)

(assert (=> b!1000553 (= e!563943 e!563945)))

(declare-fun res!670185 () Bool)

(assert (=> b!1000553 (=> (not res!670185) (not e!563945))))

(declare-fun lt!442299 () SeekEntryResult!9366)

(assert (=> b!1000553 (= res!670185 (or (= lt!442299 (MissingVacant!9366 i!1194)) (= lt!442299 (MissingZero!9366 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63225 (_ BitVec 32)) SeekEntryResult!9366)

(assert (=> b!1000553 (= lt!442299 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1000554 () Bool)

(assert (=> b!1000554 (= e!563944 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvslt index!1507 (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsgt x!1245 #b01111111111111111111111111111110)))))

(declare-fun b!1000555 () Bool)

(declare-fun res!670187 () Bool)

(assert (=> b!1000555 (=> (not res!670187) (not e!563945))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63225 (_ BitVec 32)) Bool)

(assert (=> b!1000555 (= res!670187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000556 () Bool)

(declare-fun res!670181 () Bool)

(assert (=> b!1000556 (=> (not res!670181) (not e!563945))))

(declare-datatypes ((List!21236 0))(
  ( (Nil!21233) (Cons!21232 (h!22409 (_ BitVec 64)) (t!30245 List!21236)) )
))
(declare-fun arrayNoDuplicates!0 (array!63225 (_ BitVec 32) List!21236) Bool)

(assert (=> b!1000556 (= res!670181 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21233))))

(declare-fun b!1000557 () Bool)

(assert (=> b!1000557 (= e!563945 e!563944)))

(declare-fun res!670190 () Bool)

(assert (=> b!1000557 (=> (not res!670190) (not e!563944))))

(assert (=> b!1000557 (= res!670190 (= lt!442297 lt!442298))))

(assert (=> b!1000557 (= lt!442298 (Intermediate!9366 false resIndex!38 resX!38))))

(assert (=> b!1000557 (= lt!442297 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30434 a!3219) j!170) mask!3464) (select (arr!30434 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000558 () Bool)

(declare-fun res!670186 () Bool)

(assert (=> b!1000558 (=> (not res!670186) (not e!563943))))

(assert (=> b!1000558 (= res!670186 (and (= (size!30937 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30937 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30937 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86472 res!670182) b!1000558))

(assert (= (and b!1000558 res!670186) b!1000548))

(assert (= (and b!1000548 res!670192) b!1000550))

(assert (= (and b!1000550 res!670188) b!1000549))

(assert (= (and b!1000549 res!670183) b!1000553))

(assert (= (and b!1000553 res!670185) b!1000555))

(assert (= (and b!1000555 res!670187) b!1000556))

(assert (= (and b!1000556 res!670181) b!1000551))

(assert (= (and b!1000551 res!670191) b!1000557))

(assert (= (and b!1000557 res!670190) b!1000547))

(assert (= (and b!1000547 res!670184) b!1000552))

(assert (= (and b!1000552 res!670189) b!1000554))

(declare-fun m!926807 () Bool)

(assert (=> b!1000556 m!926807))

(declare-fun m!926809 () Bool)

(assert (=> b!1000547 m!926809))

(assert (=> b!1000547 m!926809))

(declare-fun m!926811 () Bool)

(assert (=> b!1000547 m!926811))

(assert (=> b!1000548 m!926809))

(assert (=> b!1000548 m!926809))

(declare-fun m!926813 () Bool)

(assert (=> b!1000548 m!926813))

(declare-fun m!926815 () Bool)

(assert (=> start!86472 m!926815))

(declare-fun m!926817 () Bool)

(assert (=> start!86472 m!926817))

(declare-fun m!926819 () Bool)

(assert (=> b!1000552 m!926819))

(declare-fun m!926821 () Bool)

(assert (=> b!1000552 m!926821))

(assert (=> b!1000552 m!926821))

(declare-fun m!926823 () Bool)

(assert (=> b!1000552 m!926823))

(assert (=> b!1000552 m!926823))

(assert (=> b!1000552 m!926821))

(declare-fun m!926825 () Bool)

(assert (=> b!1000552 m!926825))

(declare-fun m!926827 () Bool)

(assert (=> b!1000549 m!926827))

(declare-fun m!926829 () Bool)

(assert (=> b!1000550 m!926829))

(declare-fun m!926831 () Bool)

(assert (=> b!1000553 m!926831))

(assert (=> b!1000557 m!926809))

(assert (=> b!1000557 m!926809))

(declare-fun m!926833 () Bool)

(assert (=> b!1000557 m!926833))

(assert (=> b!1000557 m!926833))

(assert (=> b!1000557 m!926809))

(declare-fun m!926835 () Bool)

(assert (=> b!1000557 m!926835))

(declare-fun m!926837 () Bool)

(assert (=> b!1000555 m!926837))

(check-sat (not b!1000552) (not b!1000553) (not b!1000555) (not b!1000556) (not start!86472) (not b!1000547) (not b!1000557) (not b!1000550) (not b!1000548) (not b!1000549))
(check-sat)
