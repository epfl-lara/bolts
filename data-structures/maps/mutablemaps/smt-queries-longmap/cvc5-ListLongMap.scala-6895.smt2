; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86764 () Bool)

(assert start!86764)

(declare-fun b!1005284 () Bool)

(declare-fun e!566126 () Bool)

(assert (=> b!1005284 (= e!566126 false)))

(declare-datatypes ((array!63415 0))(
  ( (array!63416 (arr!30526 (Array (_ BitVec 32) (_ BitVec 64))) (size!31029 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63415)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!444495 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005284 (= lt!444495 (toIndex!0 (select (arr!30526 a!3219) j!170) mask!3464))))

(declare-fun b!1005285 () Bool)

(declare-fun e!566125 () Bool)

(assert (=> b!1005285 (= e!566125 e!566126)))

(declare-fun res!674536 () Bool)

(assert (=> b!1005285 (=> (not res!674536) (not e!566126))))

(declare-datatypes ((SeekEntryResult!9458 0))(
  ( (MissingZero!9458 (index!40202 (_ BitVec 32))) (Found!9458 (index!40203 (_ BitVec 32))) (Intermediate!9458 (undefined!10270 Bool) (index!40204 (_ BitVec 32)) (x!87643 (_ BitVec 32))) (Undefined!9458) (MissingVacant!9458 (index!40205 (_ BitVec 32))) )
))
(declare-fun lt!444494 () SeekEntryResult!9458)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005285 (= res!674536 (or (= lt!444494 (MissingVacant!9458 i!1194)) (= lt!444494 (MissingZero!9458 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63415 (_ BitVec 32)) SeekEntryResult!9458)

(assert (=> b!1005285 (= lt!444494 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1005286 () Bool)

(declare-fun res!674532 () Bool)

(assert (=> b!1005286 (=> (not res!674532) (not e!566126))))

(declare-datatypes ((List!21328 0))(
  ( (Nil!21325) (Cons!21324 (h!22507 (_ BitVec 64)) (t!30337 List!21328)) )
))
(declare-fun arrayNoDuplicates!0 (array!63415 (_ BitVec 32) List!21328) Bool)

(assert (=> b!1005286 (= res!674532 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21325))))

(declare-fun b!1005287 () Bool)

(declare-fun res!674533 () Bool)

(assert (=> b!1005287 (=> (not res!674533) (not e!566126))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1005287 (= res!674533 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31029 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31029 a!3219))))))

(declare-fun b!1005288 () Bool)

(declare-fun res!674535 () Bool)

(assert (=> b!1005288 (=> (not res!674535) (not e!566125))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005288 (= res!674535 (validKeyInArray!0 (select (arr!30526 a!3219) j!170)))))

(declare-fun b!1005289 () Bool)

(declare-fun res!674529 () Bool)

(assert (=> b!1005289 (=> (not res!674529) (not e!566125))))

(assert (=> b!1005289 (= res!674529 (and (= (size!31029 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31029 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31029 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005290 () Bool)

(declare-fun res!674531 () Bool)

(assert (=> b!1005290 (=> (not res!674531) (not e!566125))))

(assert (=> b!1005290 (= res!674531 (validKeyInArray!0 k!2224))))

(declare-fun b!1005291 () Bool)

(declare-fun res!674534 () Bool)

(assert (=> b!1005291 (=> (not res!674534) (not e!566125))))

(declare-fun arrayContainsKey!0 (array!63415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005291 (= res!674534 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!674530 () Bool)

(assert (=> start!86764 (=> (not res!674530) (not e!566125))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86764 (= res!674530 (validMask!0 mask!3464))))

(assert (=> start!86764 e!566125))

(declare-fun array_inv!23516 (array!63415) Bool)

(assert (=> start!86764 (array_inv!23516 a!3219)))

(assert (=> start!86764 true))

(declare-fun b!1005292 () Bool)

(declare-fun res!674528 () Bool)

(assert (=> b!1005292 (=> (not res!674528) (not e!566126))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63415 (_ BitVec 32)) Bool)

(assert (=> b!1005292 (= res!674528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!86764 res!674530) b!1005289))

(assert (= (and b!1005289 res!674529) b!1005288))

(assert (= (and b!1005288 res!674535) b!1005290))

(assert (= (and b!1005290 res!674531) b!1005291))

(assert (= (and b!1005291 res!674534) b!1005285))

(assert (= (and b!1005285 res!674536) b!1005292))

(assert (= (and b!1005292 res!674528) b!1005286))

(assert (= (and b!1005286 res!674532) b!1005287))

(assert (= (and b!1005287 res!674533) b!1005284))

(declare-fun m!930651 () Bool)

(assert (=> b!1005286 m!930651))

(declare-fun m!930653 () Bool)

(assert (=> start!86764 m!930653))

(declare-fun m!930655 () Bool)

(assert (=> start!86764 m!930655))

(declare-fun m!930657 () Bool)

(assert (=> b!1005292 m!930657))

(declare-fun m!930659 () Bool)

(assert (=> b!1005284 m!930659))

(assert (=> b!1005284 m!930659))

(declare-fun m!930661 () Bool)

(assert (=> b!1005284 m!930661))

(declare-fun m!930663 () Bool)

(assert (=> b!1005291 m!930663))

(assert (=> b!1005288 m!930659))

(assert (=> b!1005288 m!930659))

(declare-fun m!930665 () Bool)

(assert (=> b!1005288 m!930665))

(declare-fun m!930667 () Bool)

(assert (=> b!1005290 m!930667))

(declare-fun m!930669 () Bool)

(assert (=> b!1005285 m!930669))

(push 1)

(assert (not b!1005290))

(assert (not b!1005285))

(assert (not b!1005284))

(assert (not b!1005292))

