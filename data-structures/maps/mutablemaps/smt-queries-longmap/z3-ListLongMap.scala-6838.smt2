; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86100 () Bool)

(assert start!86100)

(declare-fun b!996906 () Bool)

(declare-fun res!667180 () Bool)

(declare-fun e!562362 () Bool)

(assert (=> b!996906 (=> (not res!667180) (not e!562362))))

(declare-datatypes ((array!63057 0))(
  ( (array!63058 (arr!30356 (Array (_ BitVec 32) (_ BitVec 64))) (size!30859 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63057)

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63057 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996906 (= res!667180 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996907 () Bool)

(declare-fun res!667176 () Bool)

(declare-fun e!562364 () Bool)

(assert (=> b!996907 (=> (not res!667176) (not e!562364))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63057 (_ BitVec 32)) Bool)

(assert (=> b!996907 (= res!667176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996908 () Bool)

(declare-fun res!667184 () Bool)

(assert (=> b!996908 (=> (not res!667184) (not e!562364))))

(declare-datatypes ((List!21158 0))(
  ( (Nil!21155) (Cons!21154 (h!22319 (_ BitVec 64)) (t!30167 List!21158)) )
))
(declare-fun arrayNoDuplicates!0 (array!63057 (_ BitVec 32) List!21158) Bool)

(assert (=> b!996908 (= res!667184 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21155))))

(declare-fun b!996909 () Bool)

(declare-fun res!667178 () Bool)

(assert (=> b!996909 (=> (not res!667178) (not e!562362))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996909 (= res!667178 (validKeyInArray!0 (select (arr!30356 a!3219) j!170)))))

(declare-fun res!667177 () Bool)

(assert (=> start!86100 (=> (not res!667177) (not e!562362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86100 (= res!667177 (validMask!0 mask!3464))))

(assert (=> start!86100 e!562362))

(declare-fun array_inv!23346 (array!63057) Bool)

(assert (=> start!86100 (array_inv!23346 a!3219)))

(assert (=> start!86100 true))

(declare-fun b!996910 () Bool)

(declare-fun res!667183 () Bool)

(declare-fun e!562361 () Bool)

(assert (=> b!996910 (=> (not res!667183) (not e!562361))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9288 0))(
  ( (MissingZero!9288 (index!39522 (_ BitVec 32))) (Found!9288 (index!39523 (_ BitVec 32))) (Intermediate!9288 (undefined!10100 Bool) (index!39524 (_ BitVec 32)) (x!86981 (_ BitVec 32))) (Undefined!9288) (MissingVacant!9288 (index!39525 (_ BitVec 32))) )
))
(declare-fun lt!441281 () SeekEntryResult!9288)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63057 (_ BitVec 32)) SeekEntryResult!9288)

(assert (=> b!996910 (= res!667183 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30356 a!3219) j!170) a!3219 mask!3464) lt!441281))))

(declare-fun b!996911 () Bool)

(declare-fun res!667179 () Bool)

(assert (=> b!996911 (=> (not res!667179) (not e!562362))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996911 (= res!667179 (and (= (size!30859 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30859 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30859 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996912 () Bool)

(declare-fun res!667182 () Bool)

(assert (=> b!996912 (=> (not res!667182) (not e!562364))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996912 (= res!667182 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30859 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30859 a!3219))))))

(declare-fun b!996913 () Bool)

(assert (=> b!996913 (= e!562362 e!562364)))

(declare-fun res!667186 () Bool)

(assert (=> b!996913 (=> (not res!667186) (not e!562364))))

(declare-fun lt!441282 () SeekEntryResult!9288)

(assert (=> b!996913 (= res!667186 (or (= lt!441282 (MissingVacant!9288 i!1194)) (= lt!441282 (MissingZero!9288 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63057 (_ BitVec 32)) SeekEntryResult!9288)

(assert (=> b!996913 (= lt!441282 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!996914 () Bool)

(declare-fun res!667185 () Bool)

(assert (=> b!996914 (=> (not res!667185) (not e!562362))))

(assert (=> b!996914 (= res!667185 (validKeyInArray!0 k0!2224))))

(declare-fun b!996915 () Bool)

(assert (=> b!996915 (= e!562364 e!562361)))

(declare-fun res!667181 () Bool)

(assert (=> b!996915 (=> (not res!667181) (not e!562361))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996915 (= res!667181 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30356 a!3219) j!170) mask!3464) (select (arr!30356 a!3219) j!170) a!3219 mask!3464) lt!441281))))

(assert (=> b!996915 (= lt!441281 (Intermediate!9288 false resIndex!38 resX!38))))

(declare-fun b!996916 () Bool)

(assert (=> b!996916 (= e!562361 (bvslt mask!3464 #b00000000000000000000000000000000))))

(assert (= (and start!86100 res!667177) b!996911))

(assert (= (and b!996911 res!667179) b!996909))

(assert (= (and b!996909 res!667178) b!996914))

(assert (= (and b!996914 res!667185) b!996906))

(assert (= (and b!996906 res!667180) b!996913))

(assert (= (and b!996913 res!667186) b!996907))

(assert (= (and b!996907 res!667176) b!996908))

(assert (= (and b!996908 res!667184) b!996912))

(assert (= (and b!996912 res!667182) b!996915))

(assert (= (and b!996915 res!667181) b!996910))

(assert (= (and b!996910 res!667183) b!996916))

(declare-fun m!923997 () Bool)

(assert (=> start!86100 m!923997))

(declare-fun m!923999 () Bool)

(assert (=> start!86100 m!923999))

(declare-fun m!924001 () Bool)

(assert (=> b!996907 m!924001))

(declare-fun m!924003 () Bool)

(assert (=> b!996908 m!924003))

(declare-fun m!924005 () Bool)

(assert (=> b!996906 m!924005))

(declare-fun m!924007 () Bool)

(assert (=> b!996915 m!924007))

(assert (=> b!996915 m!924007))

(declare-fun m!924009 () Bool)

(assert (=> b!996915 m!924009))

(assert (=> b!996915 m!924009))

(assert (=> b!996915 m!924007))

(declare-fun m!924011 () Bool)

(assert (=> b!996915 m!924011))

(declare-fun m!924013 () Bool)

(assert (=> b!996914 m!924013))

(declare-fun m!924015 () Bool)

(assert (=> b!996913 m!924015))

(assert (=> b!996909 m!924007))

(assert (=> b!996909 m!924007))

(declare-fun m!924017 () Bool)

(assert (=> b!996909 m!924017))

(assert (=> b!996910 m!924007))

(assert (=> b!996910 m!924007))

(declare-fun m!924019 () Bool)

(assert (=> b!996910 m!924019))

(check-sat (not b!996915) (not b!996910) (not b!996914) (not b!996908) (not b!996906) (not b!996907) (not b!996913) (not b!996909) (not start!86100))
(check-sat)
