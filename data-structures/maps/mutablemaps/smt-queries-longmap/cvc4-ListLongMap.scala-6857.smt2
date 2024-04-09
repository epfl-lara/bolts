; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86432 () Bool)

(assert start!86432)

(declare-fun b!999854 () Bool)

(declare-fun e!563704 () Bool)

(declare-fun e!563702 () Bool)

(assert (=> b!999854 (= e!563704 e!563702)))

(declare-fun res!669498 () Bool)

(assert (=> b!999854 (=> (not res!669498) (not e!563702))))

(declare-datatypes ((SeekEntryResult!9346 0))(
  ( (MissingZero!9346 (index!39754 (_ BitVec 32))) (Found!9346 (index!39755 (_ BitVec 32))) (Intermediate!9346 (undefined!10158 Bool) (index!39756 (_ BitVec 32)) (x!87215 (_ BitVec 32))) (Undefined!9346) (MissingVacant!9346 (index!39757 (_ BitVec 32))) )
))
(declare-fun lt!442119 () SeekEntryResult!9346)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!999854 (= res!669498 (or (= lt!442119 (MissingVacant!9346 i!1194)) (= lt!442119 (MissingZero!9346 i!1194))))))

(declare-datatypes ((array!63185 0))(
  ( (array!63186 (arr!30414 (Array (_ BitVec 32) (_ BitVec 64))) (size!30917 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63185)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63185 (_ BitVec 32)) SeekEntryResult!9346)

(assert (=> b!999854 (= lt!442119 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!999855 () Bool)

(declare-fun res!669499 () Bool)

(declare-fun e!563705 () Bool)

(assert (=> b!999855 (=> (not res!669499) (not e!563705))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!442117 () SeekEntryResult!9346)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63185 (_ BitVec 32)) SeekEntryResult!9346)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999855 (= res!669499 (not (= lt!442117 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30414 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30414 a!3219) i!1194 k!2224) j!170) (array!63186 (store (arr!30414 a!3219) i!1194 k!2224) (size!30917 a!3219)) mask!3464))))))

(declare-fun b!999856 () Bool)

(declare-fun res!669490 () Bool)

(assert (=> b!999856 (=> (not res!669490) (not e!563702))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999856 (= res!669490 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30917 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30917 a!3219))))))

(declare-fun b!999857 () Bool)

(assert (=> b!999857 (= e!563702 e!563705)))

(declare-fun res!669493 () Bool)

(assert (=> b!999857 (=> (not res!669493) (not e!563705))))

(declare-fun lt!442118 () SeekEntryResult!9346)

(assert (=> b!999857 (= res!669493 (= lt!442117 lt!442118))))

(assert (=> b!999857 (= lt!442118 (Intermediate!9346 false resIndex!38 resX!38))))

(assert (=> b!999857 (= lt!442117 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30414 a!3219) j!170) mask!3464) (select (arr!30414 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!999858 () Bool)

(declare-fun res!669491 () Bool)

(assert (=> b!999858 (=> (not res!669491) (not e!563704))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999858 (= res!669491 (validKeyInArray!0 (select (arr!30414 a!3219) j!170)))))

(declare-fun b!999859 () Bool)

(declare-fun res!669496 () Bool)

(assert (=> b!999859 (=> (not res!669496) (not e!563704))))

(declare-fun arrayContainsKey!0 (array!63185 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999859 (= res!669496 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!999860 () Bool)

(declare-fun res!669489 () Bool)

(assert (=> b!999860 (=> (not res!669489) (not e!563704))))

(assert (=> b!999860 (= res!669489 (validKeyInArray!0 k!2224))))

(declare-fun b!999861 () Bool)

(declare-fun res!669497 () Bool)

(assert (=> b!999861 (=> (not res!669497) (not e!563704))))

(assert (=> b!999861 (= res!669497 (and (= (size!30917 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30917 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30917 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!999862 () Bool)

(declare-fun res!669488 () Bool)

(assert (=> b!999862 (=> (not res!669488) (not e!563702))))

(declare-datatypes ((List!21216 0))(
  ( (Nil!21213) (Cons!21212 (h!22389 (_ BitVec 64)) (t!30225 List!21216)) )
))
(declare-fun arrayNoDuplicates!0 (array!63185 (_ BitVec 32) List!21216) Bool)

(assert (=> b!999862 (= res!669488 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21213))))

(declare-fun res!669494 () Bool)

(assert (=> start!86432 (=> (not res!669494) (not e!563704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86432 (= res!669494 (validMask!0 mask!3464))))

(assert (=> start!86432 e!563704))

(declare-fun array_inv!23404 (array!63185) Bool)

(assert (=> start!86432 (array_inv!23404 a!3219)))

(assert (=> start!86432 true))

(declare-fun b!999863 () Bool)

(assert (=> b!999863 (= e!563705 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsge index!1507 (bvadd #b00000000000000000000000000000001 mask!3464))))))

(declare-fun b!999864 () Bool)

(declare-fun res!669495 () Bool)

(assert (=> b!999864 (=> (not res!669495) (not e!563702))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63185 (_ BitVec 32)) Bool)

(assert (=> b!999864 (= res!669495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999865 () Bool)

(declare-fun res!669492 () Bool)

(assert (=> b!999865 (=> (not res!669492) (not e!563705))))

(assert (=> b!999865 (= res!669492 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30414 a!3219) j!170) a!3219 mask!3464) lt!442118))))

(assert (= (and start!86432 res!669494) b!999861))

(assert (= (and b!999861 res!669497) b!999858))

(assert (= (and b!999858 res!669491) b!999860))

(assert (= (and b!999860 res!669489) b!999859))

(assert (= (and b!999859 res!669496) b!999854))

(assert (= (and b!999854 res!669498) b!999864))

(assert (= (and b!999864 res!669495) b!999862))

(assert (= (and b!999862 res!669488) b!999856))

(assert (= (and b!999856 res!669490) b!999857))

(assert (= (and b!999857 res!669493) b!999865))

(assert (= (and b!999865 res!669492) b!999855))

(assert (= (and b!999855 res!669499) b!999863))

(declare-fun m!926167 () Bool)

(assert (=> b!999857 m!926167))

(assert (=> b!999857 m!926167))

(declare-fun m!926169 () Bool)

(assert (=> b!999857 m!926169))

(assert (=> b!999857 m!926169))

(assert (=> b!999857 m!926167))

(declare-fun m!926171 () Bool)

(assert (=> b!999857 m!926171))

(declare-fun m!926173 () Bool)

(assert (=> b!999854 m!926173))

(declare-fun m!926175 () Bool)

(assert (=> b!999862 m!926175))

(assert (=> b!999865 m!926167))

(assert (=> b!999865 m!926167))

(declare-fun m!926177 () Bool)

(assert (=> b!999865 m!926177))

(assert (=> b!999858 m!926167))

(assert (=> b!999858 m!926167))

(declare-fun m!926179 () Bool)

(assert (=> b!999858 m!926179))

(declare-fun m!926181 () Bool)

(assert (=> b!999864 m!926181))

(declare-fun m!926183 () Bool)

(assert (=> b!999855 m!926183))

(declare-fun m!926185 () Bool)

(assert (=> b!999855 m!926185))

(assert (=> b!999855 m!926185))

(declare-fun m!926187 () Bool)

(assert (=> b!999855 m!926187))

(assert (=> b!999855 m!926187))

(assert (=> b!999855 m!926185))

(declare-fun m!926189 () Bool)

(assert (=> b!999855 m!926189))

(declare-fun m!926191 () Bool)

(assert (=> b!999859 m!926191))

(declare-fun m!926193 () Bool)

(assert (=> b!999860 m!926193))

(declare-fun m!926195 () Bool)

(assert (=> start!86432 m!926195))

(declare-fun m!926197 () Bool)

(assert (=> start!86432 m!926197))

(push 1)

(assert (not b!999859))

(assert (not b!999864))

(assert (not b!999858))

(assert (not start!86432))

(assert (not b!999862))

(assert (not b!999855))

(assert (not b!999854))

(assert (not b!999857))

(assert (not b!999860))

(assert (not b!999865))

(check-sat)

(pop 1)

(push 1)

(check-sat)

