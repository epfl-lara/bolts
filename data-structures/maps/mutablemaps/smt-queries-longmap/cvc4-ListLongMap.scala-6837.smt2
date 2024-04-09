; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86096 () Bool)

(assert start!86096)

(declare-fun b!996843 () Bool)

(declare-fun res!667113 () Bool)

(declare-fun e!562340 () Bool)

(assert (=> b!996843 (=> (not res!667113) (not e!562340))))

(declare-datatypes ((array!63053 0))(
  ( (array!63054 (arr!30354 (Array (_ BitVec 32) (_ BitVec 64))) (size!30857 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63053)

(declare-datatypes ((List!21156 0))(
  ( (Nil!21153) (Cons!21152 (h!22317 (_ BitVec 64)) (t!30165 List!21156)) )
))
(declare-fun arrayNoDuplicates!0 (array!63053 (_ BitVec 32) List!21156) Bool)

(assert (=> b!996843 (= res!667113 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21153))))

(declare-fun b!996844 () Bool)

(declare-fun e!562338 () Bool)

(assert (=> b!996844 (= e!562338 e!562340)))

(declare-fun res!667120 () Bool)

(assert (=> b!996844 (=> (not res!667120) (not e!562340))))

(declare-datatypes ((SeekEntryResult!9286 0))(
  ( (MissingZero!9286 (index!39514 (_ BitVec 32))) (Found!9286 (index!39515 (_ BitVec 32))) (Intermediate!9286 (undefined!10098 Bool) (index!39516 (_ BitVec 32)) (x!86971 (_ BitVec 32))) (Undefined!9286) (MissingVacant!9286 (index!39517 (_ BitVec 32))) )
))
(declare-fun lt!441270 () SeekEntryResult!9286)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996844 (= res!667120 (or (= lt!441270 (MissingVacant!9286 i!1194)) (= lt!441270 (MissingZero!9286 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63053 (_ BitVec 32)) SeekEntryResult!9286)

(assert (=> b!996844 (= lt!441270 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!996845 () Bool)

(declare-fun res!667112 () Bool)

(assert (=> b!996845 (=> (not res!667112) (not e!562338))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!996845 (= res!667112 (and (= (size!30857 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30857 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30857 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996846 () Bool)

(declare-fun res!667119 () Bool)

(assert (=> b!996846 (=> (not res!667119) (not e!562338))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996846 (= res!667119 (validKeyInArray!0 k!2224))))

(declare-fun b!996847 () Bool)

(declare-fun res!667114 () Bool)

(assert (=> b!996847 (=> (not res!667114) (not e!562338))))

(assert (=> b!996847 (= res!667114 (validKeyInArray!0 (select (arr!30354 a!3219) j!170)))))

(declare-fun b!996848 () Bool)

(assert (=> b!996848 (= e!562340 false)))

(declare-fun lt!441269 () SeekEntryResult!9286)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63053 (_ BitVec 32)) SeekEntryResult!9286)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996848 (= lt!441269 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30354 a!3219) j!170) mask!3464) (select (arr!30354 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!996842 () Bool)

(declare-fun res!667118 () Bool)

(assert (=> b!996842 (=> (not res!667118) (not e!562340))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63053 (_ BitVec 32)) Bool)

(assert (=> b!996842 (= res!667118 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!667116 () Bool)

(assert (=> start!86096 (=> (not res!667116) (not e!562338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86096 (= res!667116 (validMask!0 mask!3464))))

(assert (=> start!86096 e!562338))

(declare-fun array_inv!23344 (array!63053) Bool)

(assert (=> start!86096 (array_inv!23344 a!3219)))

(assert (=> start!86096 true))

(declare-fun b!996849 () Bool)

(declare-fun res!667115 () Bool)

(assert (=> b!996849 (=> (not res!667115) (not e!562340))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996849 (= res!667115 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30857 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30857 a!3219))))))

(declare-fun b!996850 () Bool)

(declare-fun res!667117 () Bool)

(assert (=> b!996850 (=> (not res!667117) (not e!562338))))

(declare-fun arrayContainsKey!0 (array!63053 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996850 (= res!667117 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86096 res!667116) b!996845))

(assert (= (and b!996845 res!667112) b!996847))

(assert (= (and b!996847 res!667114) b!996846))

(assert (= (and b!996846 res!667119) b!996850))

(assert (= (and b!996850 res!667117) b!996844))

(assert (= (and b!996844 res!667120) b!996842))

(assert (= (and b!996842 res!667118) b!996843))

(assert (= (and b!996843 res!667113) b!996849))

(assert (= (and b!996849 res!667115) b!996848))

(declare-fun m!923951 () Bool)

(assert (=> b!996842 m!923951))

(declare-fun m!923953 () Bool)

(assert (=> b!996850 m!923953))

(declare-fun m!923955 () Bool)

(assert (=> b!996847 m!923955))

(assert (=> b!996847 m!923955))

(declare-fun m!923957 () Bool)

(assert (=> b!996847 m!923957))

(declare-fun m!923959 () Bool)

(assert (=> b!996846 m!923959))

(declare-fun m!923961 () Bool)

(assert (=> b!996844 m!923961))

(declare-fun m!923963 () Bool)

(assert (=> b!996843 m!923963))

(assert (=> b!996848 m!923955))

(assert (=> b!996848 m!923955))

(declare-fun m!923965 () Bool)

(assert (=> b!996848 m!923965))

(assert (=> b!996848 m!923965))

(assert (=> b!996848 m!923955))

(declare-fun m!923967 () Bool)

(assert (=> b!996848 m!923967))

(declare-fun m!923969 () Bool)

(assert (=> start!86096 m!923969))

(declare-fun m!923971 () Bool)

(assert (=> start!86096 m!923971))

(push 1)

(assert (not b!996846))

(assert (not start!86096))

(assert (not b!996847))

(assert (not b!996843))

(assert (not b!996848))

(assert (not b!996850))

(assert (not b!996842))

(assert (not b!996844))

(check-sat)

