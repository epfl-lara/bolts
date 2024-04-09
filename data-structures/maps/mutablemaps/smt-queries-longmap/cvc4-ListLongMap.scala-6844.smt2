; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86246 () Bool)

(assert start!86246)

(declare-fun b!998029 () Bool)

(declare-fun res!667986 () Bool)

(declare-fun e!562901 () Bool)

(assert (=> b!998029 (=> (not res!667986) (not e!562901))))

(declare-datatypes ((array!63101 0))(
  ( (array!63102 (arr!30375 (Array (_ BitVec 32) (_ BitVec 64))) (size!30878 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63101)

(declare-datatypes ((List!21177 0))(
  ( (Nil!21174) (Cons!21173 (h!22344 (_ BitVec 64)) (t!30186 List!21177)) )
))
(declare-fun arrayNoDuplicates!0 (array!63101 (_ BitVec 32) List!21177) Bool)

(assert (=> b!998029 (= res!667986 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21174))))

(declare-fun res!667987 () Bool)

(declare-fun e!562900 () Bool)

(assert (=> start!86246 (=> (not res!667987) (not e!562900))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86246 (= res!667987 (validMask!0 mask!3464))))

(assert (=> start!86246 e!562900))

(declare-fun array_inv!23365 (array!63101) Bool)

(assert (=> start!86246 (array_inv!23365 a!3219)))

(assert (=> start!86246 true))

(declare-fun b!998030 () Bool)

(declare-fun res!667989 () Bool)

(assert (=> b!998030 (=> (not res!667989) (not e!562900))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998030 (= res!667989 (and (= (size!30878 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30878 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30878 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998031 () Bool)

(declare-fun res!667981 () Bool)

(assert (=> b!998031 (=> (not res!667981) (not e!562901))))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9307 0))(
  ( (MissingZero!9307 (index!39598 (_ BitVec 32))) (Found!9307 (index!39599 (_ BitVec 32))) (Intermediate!9307 (undefined!10119 Bool) (index!39600 (_ BitVec 32)) (x!87060 (_ BitVec 32))) (Undefined!9307) (MissingVacant!9307 (index!39601 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63101 (_ BitVec 32)) SeekEntryResult!9307)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998031 (= res!667981 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30375 a!3219) j!170) mask!3464) (select (arr!30375 a!3219) j!170) a!3219 mask!3464) (Intermediate!9307 false resIndex!38 resX!38)))))

(declare-fun b!998032 () Bool)

(assert (=> b!998032 (= e!562901 false)))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!441597 () SeekEntryResult!9307)

(assert (=> b!998032 (= lt!441597 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30375 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!998033 () Bool)

(declare-fun res!667985 () Bool)

(assert (=> b!998033 (=> (not res!667985) (not e!562901))))

(assert (=> b!998033 (= res!667985 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30878 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30878 a!3219))))))

(declare-fun b!998034 () Bool)

(declare-fun res!667990 () Bool)

(assert (=> b!998034 (=> (not res!667990) (not e!562901))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63101 (_ BitVec 32)) Bool)

(assert (=> b!998034 (= res!667990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998035 () Bool)

(declare-fun res!667983 () Bool)

(assert (=> b!998035 (=> (not res!667983) (not e!562900))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998035 (= res!667983 (validKeyInArray!0 k!2224))))

(declare-fun b!998036 () Bool)

(assert (=> b!998036 (= e!562900 e!562901)))

(declare-fun res!667984 () Bool)

(assert (=> b!998036 (=> (not res!667984) (not e!562901))))

(declare-fun lt!441596 () SeekEntryResult!9307)

(assert (=> b!998036 (= res!667984 (or (= lt!441596 (MissingVacant!9307 i!1194)) (= lt!441596 (MissingZero!9307 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63101 (_ BitVec 32)) SeekEntryResult!9307)

(assert (=> b!998036 (= lt!441596 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!998037 () Bool)

(declare-fun res!667988 () Bool)

(assert (=> b!998037 (=> (not res!667988) (not e!562900))))

(declare-fun arrayContainsKey!0 (array!63101 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998037 (= res!667988 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998038 () Bool)

(declare-fun res!667982 () Bool)

(assert (=> b!998038 (=> (not res!667982) (not e!562900))))

(assert (=> b!998038 (= res!667982 (validKeyInArray!0 (select (arr!30375 a!3219) j!170)))))

(assert (= (and start!86246 res!667987) b!998030))

(assert (= (and b!998030 res!667989) b!998038))

(assert (= (and b!998038 res!667982) b!998035))

(assert (= (and b!998035 res!667983) b!998037))

(assert (= (and b!998037 res!667988) b!998036))

(assert (= (and b!998036 res!667984) b!998034))

(assert (= (and b!998034 res!667990) b!998029))

(assert (= (and b!998029 res!667986) b!998033))

(assert (= (and b!998033 res!667985) b!998031))

(assert (= (and b!998031 res!667981) b!998032))

(declare-fun m!924741 () Bool)

(assert (=> b!998034 m!924741))

(declare-fun m!924743 () Bool)

(assert (=> b!998029 m!924743))

(declare-fun m!924745 () Bool)

(assert (=> b!998036 m!924745))

(declare-fun m!924747 () Bool)

(assert (=> b!998038 m!924747))

(assert (=> b!998038 m!924747))

(declare-fun m!924749 () Bool)

(assert (=> b!998038 m!924749))

(declare-fun m!924751 () Bool)

(assert (=> b!998037 m!924751))

(assert (=> b!998031 m!924747))

(assert (=> b!998031 m!924747))

(declare-fun m!924753 () Bool)

(assert (=> b!998031 m!924753))

(assert (=> b!998031 m!924753))

(assert (=> b!998031 m!924747))

(declare-fun m!924755 () Bool)

(assert (=> b!998031 m!924755))

(assert (=> b!998032 m!924747))

(assert (=> b!998032 m!924747))

(declare-fun m!924757 () Bool)

(assert (=> b!998032 m!924757))

(declare-fun m!924759 () Bool)

(assert (=> start!86246 m!924759))

(declare-fun m!924761 () Bool)

(assert (=> start!86246 m!924761))

(declare-fun m!924763 () Bool)

(assert (=> b!998035 m!924763))

(push 1)

(assert (not b!998038))

(assert (not b!998031))

(assert (not b!998032))

(assert (not b!998034))

(assert (not b!998037))

(assert (not b!998036))

(assert (not b!998035))

(assert (not start!86246))

(assert (not b!998029))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

