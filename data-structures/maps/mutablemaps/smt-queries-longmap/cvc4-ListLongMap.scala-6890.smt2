; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86630 () Bool)

(assert start!86630)

(declare-fun b!1004179 () Bool)

(declare-fun e!565520 () Bool)

(declare-fun e!565518 () Bool)

(assert (=> b!1004179 (= e!565520 e!565518)))

(declare-fun res!673825 () Bool)

(assert (=> b!1004179 (=> (not res!673825) (not e!565518))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9445 0))(
  ( (MissingZero!9445 (index!40150 (_ BitVec 32))) (Found!9445 (index!40151 (_ BitVec 32))) (Intermediate!9445 (undefined!10257 Bool) (index!40152 (_ BitVec 32)) (x!87578 (_ BitVec 32))) (Undefined!9445) (MissingVacant!9445 (index!40153 (_ BitVec 32))) )
))
(declare-fun lt!444061 () SeekEntryResult!9445)

(declare-fun lt!444060 () (_ BitVec 64))

(declare-datatypes ((array!63383 0))(
  ( (array!63384 (arr!30513 (Array (_ BitVec 32) (_ BitVec 64))) (size!31016 (_ BitVec 32))) )
))
(declare-fun lt!444059 () array!63383)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63383 (_ BitVec 32)) SeekEntryResult!9445)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004179 (= res!673825 (not (= lt!444061 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444060 mask!3464) lt!444060 lt!444059 mask!3464))))))

(declare-fun a!3219 () array!63383)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1004179 (= lt!444060 (select (store (arr!30513 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1004179 (= lt!444059 (array!63384 (store (arr!30513 a!3219) i!1194 k!2224) (size!31016 a!3219)))))

(declare-fun b!1004180 () Bool)

(declare-fun res!673822 () Bool)

(declare-fun e!565519 () Bool)

(assert (=> b!1004180 (=> (not res!673822) (not e!565519))))

(declare-datatypes ((List!21315 0))(
  ( (Nil!21312) (Cons!21311 (h!22488 (_ BitVec 64)) (t!30324 List!21315)) )
))
(declare-fun arrayNoDuplicates!0 (array!63383 (_ BitVec 32) List!21315) Bool)

(assert (=> b!1004180 (= res!673822 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21312))))

(declare-fun b!1004181 () Bool)

(declare-fun e!565522 () Bool)

(assert (=> b!1004181 (= e!565518 e!565522)))

(declare-fun res!673814 () Bool)

(assert (=> b!1004181 (=> (not res!673814) (not e!565522))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!444063 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1004181 (= res!673814 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!444063 #b00000000000000000000000000000000) (bvslt lt!444063 (size!31016 a!3219))))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004181 (= lt!444063 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1004182 () Bool)

(declare-fun res!673827 () Bool)

(assert (=> b!1004182 (=> (not res!673827) (not e!565518))))

(declare-fun lt!444056 () SeekEntryResult!9445)

(assert (=> b!1004182 (= res!673827 (not (= lt!444056 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444060 lt!444059 mask!3464))))))

(declare-fun b!1004183 () Bool)

(declare-fun e!565523 () Bool)

(assert (=> b!1004183 (= e!565519 e!565523)))

(declare-fun res!673819 () Bool)

(assert (=> b!1004183 (=> (not res!673819) (not e!565523))))

(declare-fun lt!444057 () SeekEntryResult!9445)

(assert (=> b!1004183 (= res!673819 (= lt!444061 lt!444057))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1004183 (= lt!444057 (Intermediate!9445 false resIndex!38 resX!38))))

(assert (=> b!1004183 (= lt!444061 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30513 a!3219) j!170) mask!3464) (select (arr!30513 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004184 () Bool)

(declare-fun res!673817 () Bool)

(assert (=> b!1004184 (=> (not res!673817) (not e!565518))))

(assert (=> b!1004184 (= res!673817 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1004185 () Bool)

(declare-fun res!673815 () Bool)

(declare-fun e!565517 () Bool)

(assert (=> b!1004185 (=> (not res!673815) (not e!565517))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1004185 (= res!673815 (validKeyInArray!0 (select (arr!30513 a!3219) j!170)))))

(declare-fun b!1004186 () Bool)

(declare-fun res!673816 () Bool)

(assert (=> b!1004186 (=> (not res!673816) (not e!565522))))

(assert (=> b!1004186 (= res!673816 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!444063 (select (arr!30513 a!3219) j!170) a!3219 mask!3464) lt!444057))))

(declare-fun b!1004187 () Bool)

(declare-fun res!673818 () Bool)

(assert (=> b!1004187 (=> (not res!673818) (not e!565517))))

(assert (=> b!1004187 (= res!673818 (validKeyInArray!0 k!2224))))

(declare-fun b!1004188 () Bool)

(declare-fun res!673828 () Bool)

(assert (=> b!1004188 (=> (not res!673828) (not e!565517))))

(assert (=> b!1004188 (= res!673828 (and (= (size!31016 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31016 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31016 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1004190 () Bool)

(declare-fun res!673826 () Bool)

(assert (=> b!1004190 (=> (not res!673826) (not e!565517))))

(declare-fun arrayContainsKey!0 (array!63383 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1004190 (= res!673826 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1004191 () Bool)

(declare-fun res!673821 () Bool)

(assert (=> b!1004191 (=> (not res!673821) (not e!565519))))

(assert (=> b!1004191 (= res!673821 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31016 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31016 a!3219))))))

(declare-fun b!1004192 () Bool)

(assert (=> b!1004192 (= e!565523 e!565520)))

(declare-fun res!673813 () Bool)

(assert (=> b!1004192 (=> (not res!673813) (not e!565520))))

(assert (=> b!1004192 (= res!673813 (= lt!444056 lt!444057))))

(assert (=> b!1004192 (= lt!444056 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30513 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004193 () Bool)

(declare-fun res!673820 () Bool)

(assert (=> b!1004193 (=> (not res!673820) (not e!565519))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63383 (_ BitVec 32)) Bool)

(assert (=> b!1004193 (= res!673820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1004194 () Bool)

(assert (=> b!1004194 (= e!565522 false)))

(declare-fun lt!444062 () SeekEntryResult!9445)

(assert (=> b!1004194 (= lt!444062 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!444063 lt!444060 lt!444059 mask!3464))))

(declare-fun b!1004189 () Bool)

(assert (=> b!1004189 (= e!565517 e!565519)))

(declare-fun res!673824 () Bool)

(assert (=> b!1004189 (=> (not res!673824) (not e!565519))))

(declare-fun lt!444058 () SeekEntryResult!9445)

(assert (=> b!1004189 (= res!673824 (or (= lt!444058 (MissingVacant!9445 i!1194)) (= lt!444058 (MissingZero!9445 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63383 (_ BitVec 32)) SeekEntryResult!9445)

(assert (=> b!1004189 (= lt!444058 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!673823 () Bool)

(assert (=> start!86630 (=> (not res!673823) (not e!565517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86630 (= res!673823 (validMask!0 mask!3464))))

(assert (=> start!86630 e!565517))

(declare-fun array_inv!23503 (array!63383) Bool)

(assert (=> start!86630 (array_inv!23503 a!3219)))

(assert (=> start!86630 true))

(assert (= (and start!86630 res!673823) b!1004188))

(assert (= (and b!1004188 res!673828) b!1004185))

(assert (= (and b!1004185 res!673815) b!1004187))

(assert (= (and b!1004187 res!673818) b!1004190))

(assert (= (and b!1004190 res!673826) b!1004189))

(assert (= (and b!1004189 res!673824) b!1004193))

(assert (= (and b!1004193 res!673820) b!1004180))

(assert (= (and b!1004180 res!673822) b!1004191))

(assert (= (and b!1004191 res!673821) b!1004183))

(assert (= (and b!1004183 res!673819) b!1004192))

(assert (= (and b!1004192 res!673813) b!1004179))

(assert (= (and b!1004179 res!673825) b!1004182))

(assert (= (and b!1004182 res!673827) b!1004184))

(assert (= (and b!1004184 res!673817) b!1004181))

(assert (= (and b!1004181 res!673814) b!1004186))

(assert (= (and b!1004186 res!673816) b!1004194))

(declare-fun m!929861 () Bool)

(assert (=> b!1004189 m!929861))

(declare-fun m!929863 () Bool)

(assert (=> start!86630 m!929863))

(declare-fun m!929865 () Bool)

(assert (=> start!86630 m!929865))

(declare-fun m!929867 () Bool)

(assert (=> b!1004180 m!929867))

(declare-fun m!929869 () Bool)

(assert (=> b!1004194 m!929869))

(declare-fun m!929871 () Bool)

(assert (=> b!1004183 m!929871))

(assert (=> b!1004183 m!929871))

(declare-fun m!929873 () Bool)

(assert (=> b!1004183 m!929873))

(assert (=> b!1004183 m!929873))

(assert (=> b!1004183 m!929871))

(declare-fun m!929875 () Bool)

(assert (=> b!1004183 m!929875))

(declare-fun m!929877 () Bool)

(assert (=> b!1004182 m!929877))

(declare-fun m!929879 () Bool)

(assert (=> b!1004190 m!929879))

(assert (=> b!1004186 m!929871))

(assert (=> b!1004186 m!929871))

(declare-fun m!929881 () Bool)

(assert (=> b!1004186 m!929881))

(declare-fun m!929883 () Bool)

(assert (=> b!1004187 m!929883))

(declare-fun m!929885 () Bool)

(assert (=> b!1004193 m!929885))

(declare-fun m!929887 () Bool)

(assert (=> b!1004181 m!929887))

(assert (=> b!1004192 m!929871))

(assert (=> b!1004192 m!929871))

(declare-fun m!929889 () Bool)

(assert (=> b!1004192 m!929889))

(assert (=> b!1004185 m!929871))

(assert (=> b!1004185 m!929871))

(declare-fun m!929891 () Bool)

(assert (=> b!1004185 m!929891))

(declare-fun m!929893 () Bool)

(assert (=> b!1004179 m!929893))

(assert (=> b!1004179 m!929893))

(declare-fun m!929895 () Bool)

(assert (=> b!1004179 m!929895))

(declare-fun m!929897 () Bool)

(assert (=> b!1004179 m!929897))

(declare-fun m!929899 () Bool)

(assert (=> b!1004179 m!929899))

(push 1)

