; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86586 () Bool)

(assert start!86586)

(declare-fun res!672762 () Bool)

(declare-fun e!565056 () Bool)

(assert (=> start!86586 (=> (not res!672762) (not e!565056))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86586 (= res!672762 (validMask!0 mask!3464))))

(assert (=> start!86586 e!565056))

(declare-datatypes ((array!63339 0))(
  ( (array!63340 (arr!30491 (Array (_ BitVec 32) (_ BitVec 64))) (size!30994 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63339)

(declare-fun array_inv!23481 (array!63339) Bool)

(assert (=> start!86586 (array_inv!23481 a!3219)))

(assert (=> start!86586 true))

(declare-fun b!1003123 () Bool)

(declare-fun res!672757 () Bool)

(declare-fun e!565058 () Bool)

(assert (=> b!1003123 (=> (not res!672757) (not e!565058))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003123 (= res!672757 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30994 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30994 a!3219))))))

(declare-fun b!1003124 () Bool)

(declare-fun res!672764 () Bool)

(declare-fun e!565057 () Bool)

(assert (=> b!1003124 (=> (not res!672764) (not e!565057))))

(declare-fun lt!443529 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9423 0))(
  ( (MissingZero!9423 (index!40062 (_ BitVec 32))) (Found!9423 (index!40063 (_ BitVec 32))) (Intermediate!9423 (undefined!10235 Bool) (index!40064 (_ BitVec 32)) (x!87500 (_ BitVec 32))) (Undefined!9423) (MissingVacant!9423 (index!40065 (_ BitVec 32))) )
))
(declare-fun lt!443528 () SeekEntryResult!9423)

(declare-fun lt!443535 () array!63339)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63339 (_ BitVec 32)) SeekEntryResult!9423)

(assert (=> b!1003124 (= res!672764 (not (= lt!443528 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443529 lt!443535 mask!3464))))))

(declare-fun b!1003125 () Bool)

(declare-fun res!672763 () Bool)

(assert (=> b!1003125 (=> (not res!672763) (not e!565056))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1003125 (= res!672763 (and (= (size!30994 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30994 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30994 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003126 () Bool)

(declare-fun res!672771 () Bool)

(declare-fun e!565059 () Bool)

(assert (=> b!1003126 (=> (not res!672771) (not e!565059))))

(declare-fun lt!443530 () (_ BitVec 32))

(declare-fun lt!443533 () SeekEntryResult!9423)

(assert (=> b!1003126 (= res!672771 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443530 (select (arr!30491 a!3219) j!170) a!3219 mask!3464) lt!443533))))

(declare-fun b!1003127 () Bool)

(declare-fun res!672761 () Bool)

(assert (=> b!1003127 (=> (not res!672761) (not e!565056))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003127 (= res!672761 (validKeyInArray!0 (select (arr!30491 a!3219) j!170)))))

(declare-fun b!1003128 () Bool)

(declare-fun res!672767 () Bool)

(assert (=> b!1003128 (=> (not res!672767) (not e!565058))))

(declare-datatypes ((List!21293 0))(
  ( (Nil!21290) (Cons!21289 (h!22466 (_ BitVec 64)) (t!30302 List!21293)) )
))
(declare-fun arrayNoDuplicates!0 (array!63339 (_ BitVec 32) List!21293) Bool)

(assert (=> b!1003128 (= res!672767 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21290))))

(declare-fun b!1003129 () Bool)

(declare-fun e!565060 () Bool)

(assert (=> b!1003129 (= e!565058 e!565060)))

(declare-fun res!672772 () Bool)

(assert (=> b!1003129 (=> (not res!672772) (not e!565060))))

(declare-fun lt!443534 () SeekEntryResult!9423)

(assert (=> b!1003129 (= res!672772 (= lt!443534 lt!443533))))

(assert (=> b!1003129 (= lt!443533 (Intermediate!9423 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003129 (= lt!443534 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30491 a!3219) j!170) mask!3464) (select (arr!30491 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003130 () Bool)

(assert (=> b!1003130 (= e!565057 e!565059)))

(declare-fun res!672766 () Bool)

(assert (=> b!1003130 (=> (not res!672766) (not e!565059))))

(assert (=> b!1003130 (= res!672766 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443530 #b00000000000000000000000000000000) (bvslt lt!443530 (size!30994 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003130 (= lt!443530 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1003131 () Bool)

(declare-fun res!672758 () Bool)

(assert (=> b!1003131 (=> (not res!672758) (not e!565058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63339 (_ BitVec 32)) Bool)

(assert (=> b!1003131 (= res!672758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003132 () Bool)

(declare-fun res!672769 () Bool)

(assert (=> b!1003132 (=> (not res!672769) (not e!565056))))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1003132 (= res!672769 (validKeyInArray!0 k0!2224))))

(declare-fun b!1003133 () Bool)

(assert (=> b!1003133 (= e!565056 e!565058)))

(declare-fun res!672768 () Bool)

(assert (=> b!1003133 (=> (not res!672768) (not e!565058))))

(declare-fun lt!443531 () SeekEntryResult!9423)

(assert (=> b!1003133 (= res!672768 (or (= lt!443531 (MissingVacant!9423 i!1194)) (= lt!443531 (MissingZero!9423 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63339 (_ BitVec 32)) SeekEntryResult!9423)

(assert (=> b!1003133 (= lt!443531 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1003134 () Bool)

(declare-fun e!565055 () Bool)

(assert (=> b!1003134 (= e!565060 e!565055)))

(declare-fun res!672770 () Bool)

(assert (=> b!1003134 (=> (not res!672770) (not e!565055))))

(assert (=> b!1003134 (= res!672770 (= lt!443528 lt!443533))))

(assert (=> b!1003134 (= lt!443528 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30491 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003135 () Bool)

(declare-fun res!672759 () Bool)

(assert (=> b!1003135 (=> (not res!672759) (not e!565057))))

(assert (=> b!1003135 (= res!672759 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003136 () Bool)

(declare-fun res!672760 () Bool)

(assert (=> b!1003136 (=> (not res!672760) (not e!565056))))

(declare-fun arrayContainsKey!0 (array!63339 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003136 (= res!672760 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003137 () Bool)

(assert (=> b!1003137 (= e!565059 false)))

(declare-fun lt!443532 () SeekEntryResult!9423)

(assert (=> b!1003137 (= lt!443532 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443530 lt!443529 lt!443535 mask!3464))))

(declare-fun b!1003138 () Bool)

(assert (=> b!1003138 (= e!565055 e!565057)))

(declare-fun res!672765 () Bool)

(assert (=> b!1003138 (=> (not res!672765) (not e!565057))))

(assert (=> b!1003138 (= res!672765 (not (= lt!443534 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443529 mask!3464) lt!443529 lt!443535 mask!3464))))))

(assert (=> b!1003138 (= lt!443529 (select (store (arr!30491 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1003138 (= lt!443535 (array!63340 (store (arr!30491 a!3219) i!1194 k0!2224) (size!30994 a!3219)))))

(assert (= (and start!86586 res!672762) b!1003125))

(assert (= (and b!1003125 res!672763) b!1003127))

(assert (= (and b!1003127 res!672761) b!1003132))

(assert (= (and b!1003132 res!672769) b!1003136))

(assert (= (and b!1003136 res!672760) b!1003133))

(assert (= (and b!1003133 res!672768) b!1003131))

(assert (= (and b!1003131 res!672758) b!1003128))

(assert (= (and b!1003128 res!672767) b!1003123))

(assert (= (and b!1003123 res!672757) b!1003129))

(assert (= (and b!1003129 res!672772) b!1003134))

(assert (= (and b!1003134 res!672770) b!1003138))

(assert (= (and b!1003138 res!672765) b!1003124))

(assert (= (and b!1003124 res!672764) b!1003135))

(assert (= (and b!1003135 res!672759) b!1003130))

(assert (= (and b!1003130 res!672766) b!1003126))

(assert (= (and b!1003126 res!672771) b!1003137))

(declare-fun m!928981 () Bool)

(assert (=> b!1003137 m!928981))

(declare-fun m!928983 () Bool)

(assert (=> b!1003130 m!928983))

(declare-fun m!928985 () Bool)

(assert (=> b!1003138 m!928985))

(assert (=> b!1003138 m!928985))

(declare-fun m!928987 () Bool)

(assert (=> b!1003138 m!928987))

(declare-fun m!928989 () Bool)

(assert (=> b!1003138 m!928989))

(declare-fun m!928991 () Bool)

(assert (=> b!1003138 m!928991))

(declare-fun m!928993 () Bool)

(assert (=> b!1003133 m!928993))

(declare-fun m!928995 () Bool)

(assert (=> b!1003126 m!928995))

(assert (=> b!1003126 m!928995))

(declare-fun m!928997 () Bool)

(assert (=> b!1003126 m!928997))

(assert (=> b!1003129 m!928995))

(assert (=> b!1003129 m!928995))

(declare-fun m!928999 () Bool)

(assert (=> b!1003129 m!928999))

(assert (=> b!1003129 m!928999))

(assert (=> b!1003129 m!928995))

(declare-fun m!929001 () Bool)

(assert (=> b!1003129 m!929001))

(declare-fun m!929003 () Bool)

(assert (=> b!1003128 m!929003))

(declare-fun m!929005 () Bool)

(assert (=> b!1003132 m!929005))

(declare-fun m!929007 () Bool)

(assert (=> b!1003131 m!929007))

(declare-fun m!929009 () Bool)

(assert (=> start!86586 m!929009))

(declare-fun m!929011 () Bool)

(assert (=> start!86586 m!929011))

(assert (=> b!1003127 m!928995))

(assert (=> b!1003127 m!928995))

(declare-fun m!929013 () Bool)

(assert (=> b!1003127 m!929013))

(declare-fun m!929015 () Bool)

(assert (=> b!1003136 m!929015))

(declare-fun m!929017 () Bool)

(assert (=> b!1003124 m!929017))

(assert (=> b!1003134 m!928995))

(assert (=> b!1003134 m!928995))

(declare-fun m!929019 () Bool)

(assert (=> b!1003134 m!929019))

(check-sat (not b!1003128) (not b!1003133) (not b!1003127) (not b!1003134) (not b!1003131) (not b!1003124) (not start!86586) (not b!1003137) (not b!1003130) (not b!1003138) (not b!1003129) (not b!1003136) (not b!1003126) (not b!1003132))
(check-sat)
