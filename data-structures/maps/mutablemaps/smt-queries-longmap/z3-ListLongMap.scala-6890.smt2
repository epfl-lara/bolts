; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86628 () Bool)

(assert start!86628)

(declare-fun b!1004132 () Bool)

(declare-fun res!673771 () Bool)

(declare-fun e!565497 () Bool)

(assert (=> b!1004132 (=> (not res!673771) (not e!565497))))

(declare-datatypes ((array!63381 0))(
  ( (array!63382 (arr!30512 (Array (_ BitVec 32) (_ BitVec 64))) (size!31015 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63381)

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1004132 (= res!673771 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31015 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31015 a!3219))))))

(declare-fun b!1004133 () Bool)

(declare-fun e!565496 () Bool)

(declare-fun e!565499 () Bool)

(assert (=> b!1004133 (= e!565496 e!565499)))

(declare-fun res!673778 () Bool)

(assert (=> b!1004133 (=> (not res!673778) (not e!565499))))

(declare-fun lt!444033 () (_ BitVec 32))

(assert (=> b!1004133 (= res!673778 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!444033 #b00000000000000000000000000000000) (bvslt lt!444033 (size!31015 a!3219))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004133 (= lt!444033 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1004134 () Bool)

(declare-fun res!673770 () Bool)

(assert (=> b!1004134 (=> (not res!673770) (not e!565496))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1004134 (= res!673770 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1004135 () Bool)

(declare-fun res!673772 () Bool)

(declare-fun e!565502 () Bool)

(assert (=> b!1004135 (=> (not res!673772) (not e!565502))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1004135 (= res!673772 (validKeyInArray!0 (select (arr!30512 a!3219) j!170)))))

(declare-fun b!1004136 () Bool)

(declare-fun res!673768 () Bool)

(assert (=> b!1004136 (=> (not res!673768) (not e!565502))))

(assert (=> b!1004136 (= res!673768 (and (= (size!31015 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31015 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31015 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1004137 () Bool)

(declare-fun res!673780 () Bool)

(assert (=> b!1004137 (=> (not res!673780) (not e!565497))))

(declare-datatypes ((List!21314 0))(
  ( (Nil!21311) (Cons!21310 (h!22487 (_ BitVec 64)) (t!30323 List!21314)) )
))
(declare-fun arrayNoDuplicates!0 (array!63381 (_ BitVec 32) List!21314) Bool)

(assert (=> b!1004137 (= res!673780 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21311))))

(declare-fun b!1004138 () Bool)

(declare-fun e!565498 () Bool)

(assert (=> b!1004138 (= e!565498 e!565496)))

(declare-fun res!673779 () Bool)

(assert (=> b!1004138 (=> (not res!673779) (not e!565496))))

(declare-datatypes ((SeekEntryResult!9444 0))(
  ( (MissingZero!9444 (index!40146 (_ BitVec 32))) (Found!9444 (index!40147 (_ BitVec 32))) (Intermediate!9444 (undefined!10256 Bool) (index!40148 (_ BitVec 32)) (x!87577 (_ BitVec 32))) (Undefined!9444) (MissingVacant!9444 (index!40149 (_ BitVec 32))) )
))
(declare-fun lt!444039 () SeekEntryResult!9444)

(declare-fun lt!444037 () array!63381)

(declare-fun lt!444038 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63381 (_ BitVec 32)) SeekEntryResult!9444)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004138 (= res!673779 (not (= lt!444039 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444038 mask!3464) lt!444038 lt!444037 mask!3464))))))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1004138 (= lt!444038 (select (store (arr!30512 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1004138 (= lt!444037 (array!63382 (store (arr!30512 a!3219) i!1194 k0!2224) (size!31015 a!3219)))))

(declare-fun b!1004139 () Bool)

(declare-fun res!673773 () Bool)

(assert (=> b!1004139 (=> (not res!673773) (not e!565499))))

(declare-fun lt!444036 () SeekEntryResult!9444)

(assert (=> b!1004139 (= res!673773 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!444033 (select (arr!30512 a!3219) j!170) a!3219 mask!3464) lt!444036))))

(declare-fun b!1004140 () Bool)

(declare-fun res!673767 () Bool)

(assert (=> b!1004140 (=> (not res!673767) (not e!565497))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63381 (_ BitVec 32)) Bool)

(assert (=> b!1004140 (= res!673767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1004141 () Bool)

(assert (=> b!1004141 (= e!565502 e!565497)))

(declare-fun res!673774 () Bool)

(assert (=> b!1004141 (=> (not res!673774) (not e!565497))))

(declare-fun lt!444032 () SeekEntryResult!9444)

(assert (=> b!1004141 (= res!673774 (or (= lt!444032 (MissingVacant!9444 i!1194)) (= lt!444032 (MissingZero!9444 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63381 (_ BitVec 32)) SeekEntryResult!9444)

(assert (=> b!1004141 (= lt!444032 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1004142 () Bool)

(declare-fun res!673776 () Bool)

(assert (=> b!1004142 (=> (not res!673776) (not e!565502))))

(declare-fun arrayContainsKey!0 (array!63381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1004142 (= res!673776 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun res!673766 () Bool)

(assert (=> start!86628 (=> (not res!673766) (not e!565502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86628 (= res!673766 (validMask!0 mask!3464))))

(assert (=> start!86628 e!565502))

(declare-fun array_inv!23502 (array!63381) Bool)

(assert (=> start!86628 (array_inv!23502 a!3219)))

(assert (=> start!86628 true))

(declare-fun b!1004131 () Bool)

(assert (=> b!1004131 (= e!565499 false)))

(declare-fun lt!444034 () SeekEntryResult!9444)

(assert (=> b!1004131 (= lt!444034 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!444033 lt!444038 lt!444037 mask!3464))))

(declare-fun b!1004143 () Bool)

(declare-fun res!673777 () Bool)

(assert (=> b!1004143 (=> (not res!673777) (not e!565496))))

(declare-fun lt!444035 () SeekEntryResult!9444)

(assert (=> b!1004143 (= res!673777 (not (= lt!444035 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444038 lt!444037 mask!3464))))))

(declare-fun b!1004144 () Bool)

(declare-fun e!565501 () Bool)

(assert (=> b!1004144 (= e!565497 e!565501)))

(declare-fun res!673765 () Bool)

(assert (=> b!1004144 (=> (not res!673765) (not e!565501))))

(assert (=> b!1004144 (= res!673765 (= lt!444039 lt!444036))))

(assert (=> b!1004144 (= lt!444036 (Intermediate!9444 false resIndex!38 resX!38))))

(assert (=> b!1004144 (= lt!444039 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30512 a!3219) j!170) mask!3464) (select (arr!30512 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004145 () Bool)

(declare-fun res!673775 () Bool)

(assert (=> b!1004145 (=> (not res!673775) (not e!565502))))

(assert (=> b!1004145 (= res!673775 (validKeyInArray!0 k0!2224))))

(declare-fun b!1004146 () Bool)

(assert (=> b!1004146 (= e!565501 e!565498)))

(declare-fun res!673769 () Bool)

(assert (=> b!1004146 (=> (not res!673769) (not e!565498))))

(assert (=> b!1004146 (= res!673769 (= lt!444035 lt!444036))))

(assert (=> b!1004146 (= lt!444035 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30512 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!86628 res!673766) b!1004136))

(assert (= (and b!1004136 res!673768) b!1004135))

(assert (= (and b!1004135 res!673772) b!1004145))

(assert (= (and b!1004145 res!673775) b!1004142))

(assert (= (and b!1004142 res!673776) b!1004141))

(assert (= (and b!1004141 res!673774) b!1004140))

(assert (= (and b!1004140 res!673767) b!1004137))

(assert (= (and b!1004137 res!673780) b!1004132))

(assert (= (and b!1004132 res!673771) b!1004144))

(assert (= (and b!1004144 res!673765) b!1004146))

(assert (= (and b!1004146 res!673769) b!1004138))

(assert (= (and b!1004138 res!673779) b!1004143))

(assert (= (and b!1004143 res!673777) b!1004134))

(assert (= (and b!1004134 res!673770) b!1004133))

(assert (= (and b!1004133 res!673778) b!1004139))

(assert (= (and b!1004139 res!673773) b!1004131))

(declare-fun m!929821 () Bool)

(assert (=> b!1004138 m!929821))

(assert (=> b!1004138 m!929821))

(declare-fun m!929823 () Bool)

(assert (=> b!1004138 m!929823))

(declare-fun m!929825 () Bool)

(assert (=> b!1004138 m!929825))

(declare-fun m!929827 () Bool)

(assert (=> b!1004138 m!929827))

(declare-fun m!929829 () Bool)

(assert (=> b!1004131 m!929829))

(declare-fun m!929831 () Bool)

(assert (=> b!1004143 m!929831))

(declare-fun m!929833 () Bool)

(assert (=> b!1004142 m!929833))

(declare-fun m!929835 () Bool)

(assert (=> b!1004144 m!929835))

(assert (=> b!1004144 m!929835))

(declare-fun m!929837 () Bool)

(assert (=> b!1004144 m!929837))

(assert (=> b!1004144 m!929837))

(assert (=> b!1004144 m!929835))

(declare-fun m!929839 () Bool)

(assert (=> b!1004144 m!929839))

(declare-fun m!929841 () Bool)

(assert (=> b!1004141 m!929841))

(declare-fun m!929843 () Bool)

(assert (=> b!1004145 m!929843))

(declare-fun m!929845 () Bool)

(assert (=> b!1004137 m!929845))

(assert (=> b!1004135 m!929835))

(assert (=> b!1004135 m!929835))

(declare-fun m!929847 () Bool)

(assert (=> b!1004135 m!929847))

(assert (=> b!1004146 m!929835))

(assert (=> b!1004146 m!929835))

(declare-fun m!929849 () Bool)

(assert (=> b!1004146 m!929849))

(assert (=> b!1004139 m!929835))

(assert (=> b!1004139 m!929835))

(declare-fun m!929851 () Bool)

(assert (=> b!1004139 m!929851))

(declare-fun m!929853 () Bool)

(assert (=> start!86628 m!929853))

(declare-fun m!929855 () Bool)

(assert (=> start!86628 m!929855))

(declare-fun m!929857 () Bool)

(assert (=> b!1004140 m!929857))

(declare-fun m!929859 () Bool)

(assert (=> b!1004133 m!929859))

(check-sat (not b!1004141) (not b!1004142) (not b!1004135) (not b!1004131) (not b!1004146) (not b!1004139) (not start!86628) (not b!1004145) (not b!1004144) (not b!1004140) (not b!1004138) (not b!1004143) (not b!1004133) (not b!1004137))
(check-sat)
