; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86828 () Bool)

(assert start!86828)

(declare-fun b!1006263 () Bool)

(declare-fun res!675513 () Bool)

(declare-fun e!566450 () Bool)

(assert (=> b!1006263 (=> (not res!675513) (not e!566450))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006263 (= res!675513 (validKeyInArray!0 k!2224))))

(declare-fun b!1006264 () Bool)

(declare-fun e!566448 () Bool)

(assert (=> b!1006264 (= e!566450 e!566448)))

(declare-fun res!675515 () Bool)

(assert (=> b!1006264 (=> (not res!675515) (not e!566448))))

(declare-datatypes ((SeekEntryResult!9490 0))(
  ( (MissingZero!9490 (index!40330 (_ BitVec 32))) (Found!9490 (index!40331 (_ BitVec 32))) (Intermediate!9490 (undefined!10302 Bool) (index!40332 (_ BitVec 32)) (x!87755 (_ BitVec 32))) (Undefined!9490) (MissingVacant!9490 (index!40333 (_ BitVec 32))) )
))
(declare-fun lt!444723 () SeekEntryResult!9490)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1006264 (= res!675515 (or (= lt!444723 (MissingVacant!9490 i!1194)) (= lt!444723 (MissingZero!9490 i!1194))))))

(declare-datatypes ((array!63479 0))(
  ( (array!63480 (arr!30558 (Array (_ BitVec 32) (_ BitVec 64))) (size!31061 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63479)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63479 (_ BitVec 32)) SeekEntryResult!9490)

(assert (=> b!1006264 (= lt!444723 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1006265 () Bool)

(declare-fun res!675517 () Bool)

(assert (=> b!1006265 (=> (not res!675517) (not e!566450))))

(declare-fun arrayContainsKey!0 (array!63479 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006265 (= res!675517 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1006266 () Bool)

(declare-fun res!675511 () Bool)

(assert (=> b!1006266 (=> (not res!675511) (not e!566448))))

(declare-datatypes ((List!21360 0))(
  ( (Nil!21357) (Cons!21356 (h!22539 (_ BitVec 64)) (t!30369 List!21360)) )
))
(declare-fun arrayNoDuplicates!0 (array!63479 (_ BitVec 32) List!21360) Bool)

(assert (=> b!1006266 (= res!675511 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21357))))

(declare-fun b!1006267 () Bool)

(declare-fun e!566447 () Bool)

(assert (=> b!1006267 (= e!566447 false)))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!444722 () SeekEntryResult!9490)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63479 (_ BitVec 32)) SeekEntryResult!9490)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006267 (= lt!444722 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30558 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30558 a!3219) i!1194 k!2224) j!170) (array!63480 (store (arr!30558 a!3219) i!1194 k!2224) (size!31061 a!3219)) mask!3464))))

(declare-fun b!1006268 () Bool)

(declare-fun res!675510 () Bool)

(assert (=> b!1006268 (=> (not res!675510) (not e!566448))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63479 (_ BitVec 32)) Bool)

(assert (=> b!1006268 (= res!675510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006269 () Bool)

(declare-fun res!675512 () Bool)

(assert (=> b!1006269 (=> (not res!675512) (not e!566447))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!444721 () SeekEntryResult!9490)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1006269 (= res!675512 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30558 a!3219) j!170) a!3219 mask!3464) lt!444721))))

(declare-fun b!1006270 () Bool)

(declare-fun res!675509 () Bool)

(assert (=> b!1006270 (=> (not res!675509) (not e!566450))))

(assert (=> b!1006270 (= res!675509 (and (= (size!31061 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31061 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31061 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1006271 () Bool)

(assert (=> b!1006271 (= e!566448 e!566447)))

(declare-fun res!675507 () Bool)

(assert (=> b!1006271 (=> (not res!675507) (not e!566447))))

(assert (=> b!1006271 (= res!675507 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30558 a!3219) j!170) mask!3464) (select (arr!30558 a!3219) j!170) a!3219 mask!3464) lt!444721))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006271 (= lt!444721 (Intermediate!9490 false resIndex!38 resX!38))))

(declare-fun b!1006272 () Bool)

(declare-fun res!675516 () Bool)

(assert (=> b!1006272 (=> (not res!675516) (not e!566448))))

(assert (=> b!1006272 (= res!675516 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31061 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31061 a!3219))))))

(declare-fun b!1006273 () Bool)

(declare-fun res!675508 () Bool)

(assert (=> b!1006273 (=> (not res!675508) (not e!566450))))

(assert (=> b!1006273 (= res!675508 (validKeyInArray!0 (select (arr!30558 a!3219) j!170)))))

(declare-fun res!675514 () Bool)

(assert (=> start!86828 (=> (not res!675514) (not e!566450))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86828 (= res!675514 (validMask!0 mask!3464))))

(assert (=> start!86828 e!566450))

(declare-fun array_inv!23548 (array!63479) Bool)

(assert (=> start!86828 (array_inv!23548 a!3219)))

(assert (=> start!86828 true))

(assert (= (and start!86828 res!675514) b!1006270))

(assert (= (and b!1006270 res!675509) b!1006273))

(assert (= (and b!1006273 res!675508) b!1006263))

(assert (= (and b!1006263 res!675513) b!1006265))

(assert (= (and b!1006265 res!675517) b!1006264))

(assert (= (and b!1006264 res!675515) b!1006268))

(assert (= (and b!1006268 res!675510) b!1006266))

(assert (= (and b!1006266 res!675511) b!1006272))

(assert (= (and b!1006272 res!675516) b!1006271))

(assert (= (and b!1006271 res!675507) b!1006269))

(assert (= (and b!1006269 res!675512) b!1006267))

(declare-fun m!931477 () Bool)

(assert (=> b!1006265 m!931477))

(declare-fun m!931479 () Bool)

(assert (=> b!1006267 m!931479))

(declare-fun m!931481 () Bool)

(assert (=> b!1006267 m!931481))

(assert (=> b!1006267 m!931481))

(declare-fun m!931483 () Bool)

(assert (=> b!1006267 m!931483))

(assert (=> b!1006267 m!931483))

(assert (=> b!1006267 m!931481))

(declare-fun m!931485 () Bool)

(assert (=> b!1006267 m!931485))

(declare-fun m!931487 () Bool)

(assert (=> b!1006271 m!931487))

(assert (=> b!1006271 m!931487))

(declare-fun m!931489 () Bool)

(assert (=> b!1006271 m!931489))

(assert (=> b!1006271 m!931489))

(assert (=> b!1006271 m!931487))

(declare-fun m!931491 () Bool)

(assert (=> b!1006271 m!931491))

(assert (=> b!1006273 m!931487))

(assert (=> b!1006273 m!931487))

(declare-fun m!931493 () Bool)

(assert (=> b!1006273 m!931493))

(declare-fun m!931495 () Bool)

(assert (=> b!1006264 m!931495))

(declare-fun m!931497 () Bool)

(assert (=> start!86828 m!931497))

(declare-fun m!931499 () Bool)

(assert (=> start!86828 m!931499))

(assert (=> b!1006269 m!931487))

(assert (=> b!1006269 m!931487))

(declare-fun m!931501 () Bool)

(assert (=> b!1006269 m!931501))

(declare-fun m!931503 () Bool)

(assert (=> b!1006268 m!931503))

(declare-fun m!931505 () Bool)

(assert (=> b!1006263 m!931505))

(declare-fun m!931507 () Bool)

(assert (=> b!1006266 m!931507))

(push 1)

