; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86462 () Bool)

(assert start!86462)

(declare-fun b!1000368 () Bool)

(declare-fun res!670010 () Bool)

(declare-fun e!563885 () Bool)

(assert (=> b!1000368 (=> (not res!670010) (not e!563885))))

(declare-datatypes ((array!63215 0))(
  ( (array!63216 (arr!30429 (Array (_ BitVec 32) (_ BitVec 64))) (size!30932 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63215)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9361 0))(
  ( (MissingZero!9361 (index!39814 (_ BitVec 32))) (Found!9361 (index!39815 (_ BitVec 32))) (Intermediate!9361 (undefined!10173 Bool) (index!39816 (_ BitVec 32)) (x!87270 (_ BitVec 32))) (Undefined!9361) (MissingVacant!9361 (index!39817 (_ BitVec 32))) )
))
(declare-fun lt!442252 () SeekEntryResult!9361)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63215 (_ BitVec 32)) SeekEntryResult!9361)

(assert (=> b!1000368 (= res!670010 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30429 a!3219) j!170) a!3219 mask!3464) lt!442252))))

(declare-fun b!1000369 () Bool)

(declare-fun res!670004 () Bool)

(declare-fun e!563883 () Bool)

(assert (=> b!1000369 (=> (not res!670004) (not e!563883))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000369 (= res!670004 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30932 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30932 a!3219))))))

(declare-fun b!1000370 () Bool)

(declare-fun res!670005 () Bool)

(declare-fun e!563884 () Bool)

(assert (=> b!1000370 (=> (not res!670005) (not e!563884))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000370 (= res!670005 (and (= (size!30932 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30932 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30932 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000371 () Bool)

(declare-fun res!670012 () Bool)

(assert (=> b!1000371 (=> (not res!670012) (not e!563884))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000371 (= res!670012 (validKeyInArray!0 (select (arr!30429 a!3219) j!170)))))

(declare-fun b!1000372 () Bool)

(declare-fun res!670003 () Bool)

(assert (=> b!1000372 (=> (not res!670003) (not e!563883))))

(declare-datatypes ((List!21231 0))(
  ( (Nil!21228) (Cons!21227 (h!22404 (_ BitVec 64)) (t!30240 List!21231)) )
))
(declare-fun arrayNoDuplicates!0 (array!63215 (_ BitVec 32) List!21231) Bool)

(assert (=> b!1000372 (= res!670003 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21228))))

(declare-fun res!670008 () Bool)

(assert (=> start!86462 (=> (not res!670008) (not e!563884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86462 (= res!670008 (validMask!0 mask!3464))))

(assert (=> start!86462 e!563884))

(declare-fun array_inv!23419 (array!63215) Bool)

(assert (=> start!86462 (array_inv!23419 a!3219)))

(assert (=> start!86462 true))

(declare-fun b!1000373 () Bool)

(assert (=> b!1000373 (= e!563885 false)))

(declare-fun lt!442253 () SeekEntryResult!9361)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000373 (= lt!442253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30429 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30429 a!3219) i!1194 k!2224) j!170) (array!63216 (store (arr!30429 a!3219) i!1194 k!2224) (size!30932 a!3219)) mask!3464))))

(declare-fun b!1000374 () Bool)

(assert (=> b!1000374 (= e!563884 e!563883)))

(declare-fun res!670007 () Bool)

(assert (=> b!1000374 (=> (not res!670007) (not e!563883))))

(declare-fun lt!442254 () SeekEntryResult!9361)

(assert (=> b!1000374 (= res!670007 (or (= lt!442254 (MissingVacant!9361 i!1194)) (= lt!442254 (MissingZero!9361 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63215 (_ BitVec 32)) SeekEntryResult!9361)

(assert (=> b!1000374 (= lt!442254 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1000375 () Bool)

(assert (=> b!1000375 (= e!563883 e!563885)))

(declare-fun res!670011 () Bool)

(assert (=> b!1000375 (=> (not res!670011) (not e!563885))))

(assert (=> b!1000375 (= res!670011 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30429 a!3219) j!170) mask!3464) (select (arr!30429 a!3219) j!170) a!3219 mask!3464) lt!442252))))

(assert (=> b!1000375 (= lt!442252 (Intermediate!9361 false resIndex!38 resX!38))))

(declare-fun b!1000376 () Bool)

(declare-fun res!670009 () Bool)

(assert (=> b!1000376 (=> (not res!670009) (not e!563884))))

(declare-fun arrayContainsKey!0 (array!63215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000376 (= res!670009 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000377 () Bool)

(declare-fun res!670002 () Bool)

(assert (=> b!1000377 (=> (not res!670002) (not e!563883))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63215 (_ BitVec 32)) Bool)

(assert (=> b!1000377 (= res!670002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000378 () Bool)

(declare-fun res!670006 () Bool)

(assert (=> b!1000378 (=> (not res!670006) (not e!563884))))

(assert (=> b!1000378 (= res!670006 (validKeyInArray!0 k!2224))))

(assert (= (and start!86462 res!670008) b!1000370))

(assert (= (and b!1000370 res!670005) b!1000371))

(assert (= (and b!1000371 res!670012) b!1000378))

(assert (= (and b!1000378 res!670006) b!1000376))

(assert (= (and b!1000376 res!670009) b!1000374))

(assert (= (and b!1000374 res!670007) b!1000377))

(assert (= (and b!1000377 res!670002) b!1000372))

(assert (= (and b!1000372 res!670003) b!1000369))

(assert (= (and b!1000369 res!670004) b!1000375))

(assert (= (and b!1000375 res!670011) b!1000368))

(assert (= (and b!1000368 res!670010) b!1000373))

(declare-fun m!926647 () Bool)

(assert (=> b!1000368 m!926647))

(assert (=> b!1000368 m!926647))

(declare-fun m!926649 () Bool)

(assert (=> b!1000368 m!926649))

(declare-fun m!926651 () Bool)

(assert (=> b!1000374 m!926651))

(declare-fun m!926653 () Bool)

(assert (=> b!1000373 m!926653))

(declare-fun m!926655 () Bool)

(assert (=> b!1000373 m!926655))

(assert (=> b!1000373 m!926655))

(declare-fun m!926657 () Bool)

(assert (=> b!1000373 m!926657))

(assert (=> b!1000373 m!926657))

(assert (=> b!1000373 m!926655))

(declare-fun m!926659 () Bool)

(assert (=> b!1000373 m!926659))

(declare-fun m!926661 () Bool)

(assert (=> b!1000378 m!926661))

(declare-fun m!926663 () Bool)

(assert (=> b!1000377 m!926663))

(declare-fun m!926665 () Bool)

(assert (=> b!1000376 m!926665))

(declare-fun m!926667 () Bool)

(assert (=> start!86462 m!926667))

(declare-fun m!926669 () Bool)

(assert (=> start!86462 m!926669))

(assert (=> b!1000375 m!926647))

(assert (=> b!1000375 m!926647))

(declare-fun m!926671 () Bool)

(assert (=> b!1000375 m!926671))

(assert (=> b!1000375 m!926671))

(assert (=> b!1000375 m!926647))

(declare-fun m!926673 () Bool)

(assert (=> b!1000375 m!926673))

(declare-fun m!926675 () Bool)

(assert (=> b!1000372 m!926675))

(assert (=> b!1000371 m!926647))

(assert (=> b!1000371 m!926647))

(declare-fun m!926677 () Bool)

(assert (=> b!1000371 m!926677))

(push 1)

(assert (not b!1000378))

(assert (not b!1000377))

(assert (not start!86462))

