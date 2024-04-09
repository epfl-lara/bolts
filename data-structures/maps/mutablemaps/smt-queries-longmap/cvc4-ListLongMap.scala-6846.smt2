; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86258 () Bool)

(assert start!86258)

(declare-fun b!998217 () Bool)

(declare-fun e!562964 () Bool)

(declare-fun mask!3464 () (_ BitVec 32))

(assert (=> b!998217 (= e!562964 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!998218 () Bool)

(declare-fun res!668170 () Bool)

(declare-fun e!562963 () Bool)

(assert (=> b!998218 (=> (not res!668170) (not e!562963))))

(declare-datatypes ((array!63113 0))(
  ( (array!63114 (arr!30381 (Array (_ BitVec 32) (_ BitVec 64))) (size!30884 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63113)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63113 (_ BitVec 32)) Bool)

(assert (=> b!998218 (= res!668170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!668175 () Bool)

(declare-fun e!562961 () Bool)

(assert (=> start!86258 (=> (not res!668175) (not e!562961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86258 (= res!668175 (validMask!0 mask!3464))))

(assert (=> start!86258 e!562961))

(declare-fun array_inv!23371 (array!63113) Bool)

(assert (=> start!86258 (array_inv!23371 a!3219)))

(assert (=> start!86258 true))

(declare-fun b!998219 () Bool)

(assert (=> b!998219 (= e!562961 e!562963)))

(declare-fun res!668176 () Bool)

(assert (=> b!998219 (=> (not res!668176) (not e!562963))))

(declare-datatypes ((SeekEntryResult!9313 0))(
  ( (MissingZero!9313 (index!39622 (_ BitVec 32))) (Found!9313 (index!39623 (_ BitVec 32))) (Intermediate!9313 (undefined!10125 Bool) (index!39624 (_ BitVec 32)) (x!87082 (_ BitVec 32))) (Undefined!9313) (MissingVacant!9313 (index!39625 (_ BitVec 32))) )
))
(declare-fun lt!441633 () SeekEntryResult!9313)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998219 (= res!668176 (or (= lt!441633 (MissingVacant!9313 i!1194)) (= lt!441633 (MissingZero!9313 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63113 (_ BitVec 32)) SeekEntryResult!9313)

(assert (=> b!998219 (= lt!441633 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!998220 () Bool)

(declare-fun res!668171 () Bool)

(assert (=> b!998220 (=> (not res!668171) (not e!562963))))

(declare-datatypes ((List!21183 0))(
  ( (Nil!21180) (Cons!21179 (h!22350 (_ BitVec 64)) (t!30192 List!21183)) )
))
(declare-fun arrayNoDuplicates!0 (array!63113 (_ BitVec 32) List!21183) Bool)

(assert (=> b!998220 (= res!668171 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21180))))

(declare-fun b!998221 () Bool)

(declare-fun res!668173 () Bool)

(assert (=> b!998221 (=> (not res!668173) (not e!562963))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998221 (= res!668173 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30884 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30884 a!3219))))))

(declare-fun b!998222 () Bool)

(declare-fun res!668179 () Bool)

(assert (=> b!998222 (=> (not res!668179) (not e!562961))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998222 (= res!668179 (validKeyInArray!0 (select (arr!30381 a!3219) j!170)))))

(declare-fun b!998223 () Bool)

(declare-fun res!668174 () Bool)

(assert (=> b!998223 (=> (not res!668174) (not e!562964))))

(declare-fun lt!441632 () SeekEntryResult!9313)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63113 (_ BitVec 32)) SeekEntryResult!9313)

(assert (=> b!998223 (= res!668174 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30381 a!3219) j!170) a!3219 mask!3464) lt!441632))))

(declare-fun b!998224 () Bool)

(declare-fun res!668169 () Bool)

(assert (=> b!998224 (=> (not res!668169) (not e!562961))))

(assert (=> b!998224 (= res!668169 (and (= (size!30884 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30884 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30884 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998225 () Bool)

(declare-fun res!668172 () Bool)

(assert (=> b!998225 (=> (not res!668172) (not e!562961))))

(assert (=> b!998225 (= res!668172 (validKeyInArray!0 k!2224))))

(declare-fun b!998226 () Bool)

(assert (=> b!998226 (= e!562963 e!562964)))

(declare-fun res!668177 () Bool)

(assert (=> b!998226 (=> (not res!668177) (not e!562964))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998226 (= res!668177 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30381 a!3219) j!170) mask!3464) (select (arr!30381 a!3219) j!170) a!3219 mask!3464) lt!441632))))

(assert (=> b!998226 (= lt!441632 (Intermediate!9313 false resIndex!38 resX!38))))

(declare-fun b!998227 () Bool)

(declare-fun res!668178 () Bool)

(assert (=> b!998227 (=> (not res!668178) (not e!562961))))

(declare-fun arrayContainsKey!0 (array!63113 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998227 (= res!668178 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86258 res!668175) b!998224))

(assert (= (and b!998224 res!668169) b!998222))

(assert (= (and b!998222 res!668179) b!998225))

(assert (= (and b!998225 res!668172) b!998227))

(assert (= (and b!998227 res!668178) b!998219))

(assert (= (and b!998219 res!668176) b!998218))

(assert (= (and b!998218 res!668170) b!998220))

(assert (= (and b!998220 res!668171) b!998221))

(assert (= (and b!998221 res!668173) b!998226))

(assert (= (and b!998226 res!668177) b!998223))

(assert (= (and b!998223 res!668174) b!998217))

(declare-fun m!924885 () Bool)

(assert (=> b!998225 m!924885))

(declare-fun m!924887 () Bool)

(assert (=> b!998222 m!924887))

(assert (=> b!998222 m!924887))

(declare-fun m!924889 () Bool)

(assert (=> b!998222 m!924889))

(declare-fun m!924891 () Bool)

(assert (=> b!998220 m!924891))

(declare-fun m!924893 () Bool)

(assert (=> b!998219 m!924893))

(declare-fun m!924895 () Bool)

(assert (=> start!86258 m!924895))

(declare-fun m!924897 () Bool)

(assert (=> start!86258 m!924897))

(declare-fun m!924899 () Bool)

(assert (=> b!998218 m!924899))

(assert (=> b!998226 m!924887))

(assert (=> b!998226 m!924887))

(declare-fun m!924901 () Bool)

(assert (=> b!998226 m!924901))

(assert (=> b!998226 m!924901))

(assert (=> b!998226 m!924887))

(declare-fun m!924903 () Bool)

(assert (=> b!998226 m!924903))

(assert (=> b!998223 m!924887))

(assert (=> b!998223 m!924887))

(declare-fun m!924905 () Bool)

(assert (=> b!998223 m!924905))

(declare-fun m!924907 () Bool)

(assert (=> b!998227 m!924907))

(push 1)

(assert (not b!998218))

(assert (not b!998219))

(assert (not b!998225))

(assert (not b!998226))

(assert (not b!998220))

(assert (not start!86258))

(assert (not b!998223))

(assert (not b!998222))

