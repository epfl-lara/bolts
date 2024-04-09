; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122690 () Bool)

(assert start!122690)

(declare-fun b!1420627 () Bool)

(declare-fun res!956178 () Bool)

(declare-fun e!803451 () Bool)

(assert (=> b!1420627 (=> (not res!956178) (not e!803451))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!96973 0))(
  ( (array!96974 (arr!46800 (Array (_ BitVec 32) (_ BitVec 64))) (size!47351 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96973)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420627 (= res!956178 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47351 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47351 a!2831))))))

(declare-fun b!1420628 () Bool)

(declare-fun res!956177 () Bool)

(declare-fun e!803452 () Bool)

(assert (=> b!1420628 (=> (not res!956177) (not e!803452))))

(declare-datatypes ((SeekEntryResult!11107 0))(
  ( (MissingZero!11107 (index!46819 (_ BitVec 32))) (Found!11107 (index!46820 (_ BitVec 32))) (Intermediate!11107 (undefined!11919 Bool) (index!46821 (_ BitVec 32)) (x!128480 (_ BitVec 32))) (Undefined!11107) (MissingVacant!11107 (index!46822 (_ BitVec 32))) )
))
(declare-fun lt!625909 () SeekEntryResult!11107)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96973 (_ BitVec 32)) SeekEntryResult!11107)

(assert (=> b!1420628 (= res!956177 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46800 a!2831) j!81) a!2831 mask!2608) lt!625909))))

(declare-fun b!1420629 () Bool)

(declare-fun res!956176 () Bool)

(assert (=> b!1420629 (=> (not res!956176) (not e!803451))))

(declare-datatypes ((List!33490 0))(
  ( (Nil!33487) (Cons!33486 (h!34788 (_ BitVec 64)) (t!48191 List!33490)) )
))
(declare-fun arrayNoDuplicates!0 (array!96973 (_ BitVec 32) List!33490) Bool)

(assert (=> b!1420629 (= res!956176 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33487))))

(declare-fun b!1420630 () Bool)

(declare-fun res!956169 () Bool)

(assert (=> b!1420630 (=> (not res!956169) (not e!803451))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420630 (= res!956169 (validKeyInArray!0 (select (arr!46800 a!2831) j!81)))))

(declare-fun b!1420631 () Bool)

(declare-fun res!956175 () Bool)

(assert (=> b!1420631 (=> (not res!956175) (not e!803451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96973 (_ BitVec 32)) Bool)

(assert (=> b!1420631 (= res!956175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420633 () Bool)

(declare-fun e!803450 () Bool)

(assert (=> b!1420633 (= e!803450 e!803452)))

(declare-fun res!956171 () Bool)

(assert (=> b!1420633 (=> (not res!956171) (not e!803452))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun lt!625907 () array!96973)

(declare-fun undefinedAfter!5 () Bool)

(declare-fun lt!625906 () (_ BitVec 64))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420633 (= res!956171 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!625906 mask!2608) lt!625906 lt!625907 mask!2608) (Intermediate!11107 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420633 (= lt!625906 (select (store (arr!46800 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1420633 (= lt!625907 (array!96974 (store (arr!46800 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47351 a!2831)))))

(declare-fun b!1420634 () Bool)

(assert (=> b!1420634 (= e!803452 false)))

(declare-fun lt!625908 () SeekEntryResult!11107)

(assert (=> b!1420634 (= lt!625908 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!625906 lt!625907 mask!2608))))

(declare-fun b!1420635 () Bool)

(assert (=> b!1420635 (= e!803451 e!803450)))

(declare-fun res!956170 () Bool)

(assert (=> b!1420635 (=> (not res!956170) (not e!803450))))

(assert (=> b!1420635 (= res!956170 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46800 a!2831) j!81) mask!2608) (select (arr!46800 a!2831) j!81) a!2831 mask!2608) lt!625909))))

(assert (=> b!1420635 (= lt!625909 (Intermediate!11107 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420636 () Bool)

(declare-fun res!956172 () Bool)

(assert (=> b!1420636 (=> (not res!956172) (not e!803451))))

(assert (=> b!1420636 (= res!956172 (and (= (size!47351 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47351 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47351 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!956173 () Bool)

(assert (=> start!122690 (=> (not res!956173) (not e!803451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122690 (= res!956173 (validMask!0 mask!2608))))

(assert (=> start!122690 e!803451))

(assert (=> start!122690 true))

(declare-fun array_inv!35745 (array!96973) Bool)

(assert (=> start!122690 (array_inv!35745 a!2831)))

(declare-fun b!1420632 () Bool)

(declare-fun res!956174 () Bool)

(assert (=> b!1420632 (=> (not res!956174) (not e!803451))))

(assert (=> b!1420632 (= res!956174 (validKeyInArray!0 (select (arr!46800 a!2831) i!982)))))

(assert (= (and start!122690 res!956173) b!1420636))

(assert (= (and b!1420636 res!956172) b!1420632))

(assert (= (and b!1420632 res!956174) b!1420630))

(assert (= (and b!1420630 res!956169) b!1420631))

(assert (= (and b!1420631 res!956175) b!1420629))

(assert (= (and b!1420629 res!956176) b!1420627))

(assert (= (and b!1420627 res!956178) b!1420635))

(assert (= (and b!1420635 res!956170) b!1420633))

(assert (= (and b!1420633 res!956171) b!1420628))

(assert (= (and b!1420628 res!956177) b!1420634))

(declare-fun m!1311207 () Bool)

(assert (=> b!1420633 m!1311207))

(assert (=> b!1420633 m!1311207))

(declare-fun m!1311209 () Bool)

(assert (=> b!1420633 m!1311209))

(declare-fun m!1311211 () Bool)

(assert (=> b!1420633 m!1311211))

(declare-fun m!1311213 () Bool)

(assert (=> b!1420633 m!1311213))

(declare-fun m!1311215 () Bool)

(assert (=> b!1420634 m!1311215))

(declare-fun m!1311217 () Bool)

(assert (=> b!1420632 m!1311217))

(assert (=> b!1420632 m!1311217))

(declare-fun m!1311219 () Bool)

(assert (=> b!1420632 m!1311219))

(declare-fun m!1311221 () Bool)

(assert (=> b!1420631 m!1311221))

(declare-fun m!1311223 () Bool)

(assert (=> b!1420630 m!1311223))

(assert (=> b!1420630 m!1311223))

(declare-fun m!1311225 () Bool)

(assert (=> b!1420630 m!1311225))

(declare-fun m!1311227 () Bool)

(assert (=> b!1420629 m!1311227))

(assert (=> b!1420635 m!1311223))

(assert (=> b!1420635 m!1311223))

(declare-fun m!1311229 () Bool)

(assert (=> b!1420635 m!1311229))

(assert (=> b!1420635 m!1311229))

(assert (=> b!1420635 m!1311223))

(declare-fun m!1311231 () Bool)

(assert (=> b!1420635 m!1311231))

(declare-fun m!1311233 () Bool)

(assert (=> start!122690 m!1311233))

(declare-fun m!1311235 () Bool)

(assert (=> start!122690 m!1311235))

(assert (=> b!1420628 m!1311223))

(assert (=> b!1420628 m!1311223))

(declare-fun m!1311237 () Bool)

(assert (=> b!1420628 m!1311237))

(push 1)

(assert (not b!1420635))

(assert (not start!122690))

(assert (not b!1420629))

(assert (not b!1420633))

(assert (not b!1420628))

