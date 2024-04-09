; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86970 () Bool)

(assert start!86970)

(declare-fun b!1008351 () Bool)

(declare-fun res!677407 () Bool)

(declare-fun e!567401 () Bool)

(assert (=> b!1008351 (=> (not res!677407) (not e!567401))))

(declare-datatypes ((array!63570 0))(
  ( (array!63571 (arr!30602 (Array (_ BitVec 32) (_ BitVec 64))) (size!31105 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63570)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008351 (= res!677407 (validKeyInArray!0 (select (arr!30602 a!3219) j!170)))))

(declare-fun b!1008352 () Bool)

(declare-fun e!567404 () Bool)

(declare-fun e!567399 () Bool)

(assert (=> b!1008352 (= e!567404 e!567399)))

(declare-fun res!677406 () Bool)

(assert (=> b!1008352 (=> (not res!677406) (not e!567399))))

(declare-datatypes ((SeekEntryResult!9534 0))(
  ( (MissingZero!9534 (index!40506 (_ BitVec 32))) (Found!9534 (index!40507 (_ BitVec 32))) (Intermediate!9534 (undefined!10346 Bool) (index!40508 (_ BitVec 32)) (x!87925 (_ BitVec 32))) (Undefined!9534) (MissingVacant!9534 (index!40509 (_ BitVec 32))) )
))
(declare-fun lt!445670 () SeekEntryResult!9534)

(declare-fun lt!445667 () SeekEntryResult!9534)

(assert (=> b!1008352 (= res!677406 (= lt!445670 lt!445667))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63570 (_ BitVec 32)) SeekEntryResult!9534)

(assert (=> b!1008352 (= lt!445670 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30602 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008353 () Bool)

(declare-fun e!567403 () Bool)

(assert (=> b!1008353 (= e!567399 e!567403)))

(declare-fun res!677402 () Bool)

(assert (=> b!1008353 (=> (not res!677402) (not e!567403))))

(declare-fun lt!445665 () array!63570)

(declare-fun lt!445671 () SeekEntryResult!9534)

(declare-fun lt!445668 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008353 (= res!677402 (not (= lt!445671 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445668 mask!3464) lt!445668 lt!445665 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1008353 (= lt!445668 (select (store (arr!30602 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1008353 (= lt!445665 (array!63571 (store (arr!30602 a!3219) i!1194 k0!2224) (size!31105 a!3219)))))

(declare-fun b!1008354 () Bool)

(declare-fun e!567400 () Bool)

(assert (=> b!1008354 (= e!567401 e!567400)))

(declare-fun res!677400 () Bool)

(assert (=> b!1008354 (=> (not res!677400) (not e!567400))))

(declare-fun lt!445666 () SeekEntryResult!9534)

(assert (=> b!1008354 (= res!677400 (or (= lt!445666 (MissingVacant!9534 i!1194)) (= lt!445666 (MissingZero!9534 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63570 (_ BitVec 32)) SeekEntryResult!9534)

(assert (=> b!1008354 (= lt!445666 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1008355 () Bool)

(declare-fun res!677411 () Bool)

(assert (=> b!1008355 (=> (not res!677411) (not e!567401))))

(declare-fun arrayContainsKey!0 (array!63570 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008355 (= res!677411 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1008356 () Bool)

(declare-fun res!677403 () Bool)

(assert (=> b!1008356 (=> (not res!677403) (not e!567400))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63570 (_ BitVec 32)) Bool)

(assert (=> b!1008356 (= res!677403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1008357 () Bool)

(declare-fun res!677412 () Bool)

(assert (=> b!1008357 (=> (not res!677412) (not e!567400))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008357 (= res!677412 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31105 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31105 a!3219))))))

(declare-fun b!1008358 () Bool)

(declare-fun res!677410 () Bool)

(assert (=> b!1008358 (=> (not res!677410) (not e!567401))))

(assert (=> b!1008358 (= res!677410 (validKeyInArray!0 k0!2224))))

(declare-fun b!1008359 () Bool)

(assert (=> b!1008359 (= e!567403 false)))

(declare-fun lt!445669 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008359 (= lt!445669 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1008361 () Bool)

(declare-fun res!677409 () Bool)

(assert (=> b!1008361 (=> (not res!677409) (not e!567400))))

(declare-datatypes ((List!21404 0))(
  ( (Nil!21401) (Cons!21400 (h!22586 (_ BitVec 64)) (t!30413 List!21404)) )
))
(declare-fun arrayNoDuplicates!0 (array!63570 (_ BitVec 32) List!21404) Bool)

(assert (=> b!1008361 (= res!677409 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21401))))

(declare-fun b!1008362 () Bool)

(declare-fun res!677408 () Bool)

(assert (=> b!1008362 (=> (not res!677408) (not e!567403))))

(assert (=> b!1008362 (= res!677408 (not (= lt!445670 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445668 lt!445665 mask!3464))))))

(declare-fun b!1008363 () Bool)

(declare-fun res!677404 () Bool)

(assert (=> b!1008363 (=> (not res!677404) (not e!567401))))

(assert (=> b!1008363 (= res!677404 (and (= (size!31105 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31105 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31105 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1008364 () Bool)

(assert (=> b!1008364 (= e!567400 e!567404)))

(declare-fun res!677405 () Bool)

(assert (=> b!1008364 (=> (not res!677405) (not e!567404))))

(assert (=> b!1008364 (= res!677405 (= lt!445671 lt!445667))))

(assert (=> b!1008364 (= lt!445667 (Intermediate!9534 false resIndex!38 resX!38))))

(assert (=> b!1008364 (= lt!445671 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30602 a!3219) j!170) mask!3464) (select (arr!30602 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!677413 () Bool)

(assert (=> start!86970 (=> (not res!677413) (not e!567401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86970 (= res!677413 (validMask!0 mask!3464))))

(assert (=> start!86970 e!567401))

(declare-fun array_inv!23592 (array!63570) Bool)

(assert (=> start!86970 (array_inv!23592 a!3219)))

(assert (=> start!86970 true))

(declare-fun b!1008360 () Bool)

(declare-fun res!677401 () Bool)

(assert (=> b!1008360 (=> (not res!677401) (not e!567403))))

(assert (=> b!1008360 (= res!677401 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(assert (= (and start!86970 res!677413) b!1008363))

(assert (= (and b!1008363 res!677404) b!1008351))

(assert (= (and b!1008351 res!677407) b!1008358))

(assert (= (and b!1008358 res!677410) b!1008355))

(assert (= (and b!1008355 res!677411) b!1008354))

(assert (= (and b!1008354 res!677400) b!1008356))

(assert (= (and b!1008356 res!677403) b!1008361))

(assert (= (and b!1008361 res!677409) b!1008357))

(assert (= (and b!1008357 res!677412) b!1008364))

(assert (= (and b!1008364 res!677405) b!1008352))

(assert (= (and b!1008352 res!677406) b!1008353))

(assert (= (and b!1008353 res!677402) b!1008362))

(assert (= (and b!1008362 res!677408) b!1008360))

(assert (= (and b!1008360 res!677401) b!1008359))

(declare-fun m!933207 () Bool)

(assert (=> b!1008352 m!933207))

(assert (=> b!1008352 m!933207))

(declare-fun m!933209 () Bool)

(assert (=> b!1008352 m!933209))

(declare-fun m!933211 () Bool)

(assert (=> b!1008358 m!933211))

(declare-fun m!933213 () Bool)

(assert (=> b!1008362 m!933213))

(assert (=> b!1008364 m!933207))

(assert (=> b!1008364 m!933207))

(declare-fun m!933215 () Bool)

(assert (=> b!1008364 m!933215))

(assert (=> b!1008364 m!933215))

(assert (=> b!1008364 m!933207))

(declare-fun m!933217 () Bool)

(assert (=> b!1008364 m!933217))

(assert (=> b!1008351 m!933207))

(assert (=> b!1008351 m!933207))

(declare-fun m!933219 () Bool)

(assert (=> b!1008351 m!933219))

(declare-fun m!933221 () Bool)

(assert (=> b!1008354 m!933221))

(declare-fun m!933223 () Bool)

(assert (=> start!86970 m!933223))

(declare-fun m!933225 () Bool)

(assert (=> start!86970 m!933225))

(declare-fun m!933227 () Bool)

(assert (=> b!1008356 m!933227))

(declare-fun m!933229 () Bool)

(assert (=> b!1008355 m!933229))

(declare-fun m!933231 () Bool)

(assert (=> b!1008353 m!933231))

(assert (=> b!1008353 m!933231))

(declare-fun m!933233 () Bool)

(assert (=> b!1008353 m!933233))

(declare-fun m!933235 () Bool)

(assert (=> b!1008353 m!933235))

(declare-fun m!933237 () Bool)

(assert (=> b!1008353 m!933237))

(declare-fun m!933239 () Bool)

(assert (=> b!1008361 m!933239))

(declare-fun m!933241 () Bool)

(assert (=> b!1008359 m!933241))

(check-sat (not b!1008352) (not start!86970) (not b!1008351) (not b!1008354) (not b!1008355) (not b!1008356) (not b!1008364) (not b!1008362) (not b!1008358) (not b!1008361) (not b!1008359) (not b!1008353))
(check-sat)
