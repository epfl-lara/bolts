; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86934 () Bool)

(assert start!86934)

(declare-fun b!1007595 () Bool)

(declare-fun res!676649 () Bool)

(declare-fun e!567076 () Bool)

(assert (=> b!1007595 (=> (not res!676649) (not e!567076))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9516 0))(
  ( (MissingZero!9516 (index!40434 (_ BitVec 32))) (Found!9516 (index!40435 (_ BitVec 32))) (Intermediate!9516 (undefined!10328 Bool) (index!40436 (_ BitVec 32)) (x!87859 (_ BitVec 32))) (Undefined!9516) (MissingVacant!9516 (index!40437 (_ BitVec 32))) )
))
(declare-fun lt!445292 () SeekEntryResult!9516)

(declare-datatypes ((array!63534 0))(
  ( (array!63535 (arr!30584 (Array (_ BitVec 32) (_ BitVec 64))) (size!31087 (_ BitVec 32))) )
))
(declare-fun lt!445290 () array!63534)

(declare-fun lt!445291 () (_ BitVec 64))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63534 (_ BitVec 32)) SeekEntryResult!9516)

(assert (=> b!1007595 (= res!676649 (not (= lt!445292 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445291 lt!445290 mask!3464))))))

(declare-fun b!1007596 () Bool)

(declare-fun res!676644 () Bool)

(declare-fun e!567079 () Bool)

(assert (=> b!1007596 (=> (not res!676644) (not e!567079))))

(declare-fun a!3219 () array!63534)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007596 (= res!676644 (validKeyInArray!0 (select (arr!30584 a!3219) j!170)))))

(declare-fun b!1007597 () Bool)

(declare-fun res!676653 () Bool)

(declare-fun e!567080 () Bool)

(assert (=> b!1007597 (=> (not res!676653) (not e!567080))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63534 (_ BitVec 32)) Bool)

(assert (=> b!1007597 (= res!676653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007598 () Bool)

(declare-fun res!676656 () Bool)

(assert (=> b!1007598 (=> (not res!676656) (not e!567080))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007598 (= res!676656 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31087 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31087 a!3219))))))

(declare-fun res!676652 () Bool)

(assert (=> start!86934 (=> (not res!676652) (not e!567079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86934 (= res!676652 (validMask!0 mask!3464))))

(assert (=> start!86934 e!567079))

(declare-fun array_inv!23574 (array!63534) Bool)

(assert (=> start!86934 (array_inv!23574 a!3219)))

(assert (=> start!86934 true))

(declare-fun b!1007599 () Bool)

(declare-fun res!676650 () Bool)

(assert (=> b!1007599 (=> (not res!676650) (not e!567080))))

(declare-datatypes ((List!21386 0))(
  ( (Nil!21383) (Cons!21382 (h!22568 (_ BitVec 64)) (t!30395 List!21386)) )
))
(declare-fun arrayNoDuplicates!0 (array!63534 (_ BitVec 32) List!21386) Bool)

(assert (=> b!1007599 (= res!676650 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21383))))

(declare-fun b!1007600 () Bool)

(declare-fun res!676648 () Bool)

(assert (=> b!1007600 (=> (not res!676648) (not e!567079))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63534 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007600 (= res!676648 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007601 () Bool)

(declare-fun res!676645 () Bool)

(assert (=> b!1007601 (=> (not res!676645) (not e!567079))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007601 (= res!676645 (and (= (size!31087 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31087 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31087 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007602 () Bool)

(declare-fun res!676647 () Bool)

(assert (=> b!1007602 (=> (not res!676647) (not e!567079))))

(assert (=> b!1007602 (= res!676647 (validKeyInArray!0 k0!2224))))

(declare-fun b!1007603 () Bool)

(declare-fun res!676646 () Bool)

(assert (=> b!1007603 (=> (not res!676646) (not e!567076))))

(assert (=> b!1007603 (= res!676646 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007604 () Bool)

(declare-fun e!567078 () Bool)

(declare-fun e!567075 () Bool)

(assert (=> b!1007604 (= e!567078 e!567075)))

(declare-fun res!676654 () Bool)

(assert (=> b!1007604 (=> (not res!676654) (not e!567075))))

(declare-fun lt!445288 () SeekEntryResult!9516)

(assert (=> b!1007604 (= res!676654 (= lt!445292 lt!445288))))

(assert (=> b!1007604 (= lt!445292 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30584 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007605 () Bool)

(assert (=> b!1007605 (= e!567080 e!567078)))

(declare-fun res!676657 () Bool)

(assert (=> b!1007605 (=> (not res!676657) (not e!567078))))

(declare-fun lt!445289 () SeekEntryResult!9516)

(assert (=> b!1007605 (= res!676657 (= lt!445289 lt!445288))))

(assert (=> b!1007605 (= lt!445288 (Intermediate!9516 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007605 (= lt!445289 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30584 a!3219) j!170) mask!3464) (select (arr!30584 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007606 () Bool)

(assert (=> b!1007606 (= e!567076 false)))

(declare-fun lt!445287 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007606 (= lt!445287 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007607 () Bool)

(assert (=> b!1007607 (= e!567075 e!567076)))

(declare-fun res!676655 () Bool)

(assert (=> b!1007607 (=> (not res!676655) (not e!567076))))

(assert (=> b!1007607 (= res!676655 (not (= lt!445289 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445291 mask!3464) lt!445291 lt!445290 mask!3464))))))

(assert (=> b!1007607 (= lt!445291 (select (store (arr!30584 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1007607 (= lt!445290 (array!63535 (store (arr!30584 a!3219) i!1194 k0!2224) (size!31087 a!3219)))))

(declare-fun b!1007608 () Bool)

(assert (=> b!1007608 (= e!567079 e!567080)))

(declare-fun res!676651 () Bool)

(assert (=> b!1007608 (=> (not res!676651) (not e!567080))))

(declare-fun lt!445293 () SeekEntryResult!9516)

(assert (=> b!1007608 (= res!676651 (or (= lt!445293 (MissingVacant!9516 i!1194)) (= lt!445293 (MissingZero!9516 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63534 (_ BitVec 32)) SeekEntryResult!9516)

(assert (=> b!1007608 (= lt!445293 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(assert (= (and start!86934 res!676652) b!1007601))

(assert (= (and b!1007601 res!676645) b!1007596))

(assert (= (and b!1007596 res!676644) b!1007602))

(assert (= (and b!1007602 res!676647) b!1007600))

(assert (= (and b!1007600 res!676648) b!1007608))

(assert (= (and b!1007608 res!676651) b!1007597))

(assert (= (and b!1007597 res!676653) b!1007599))

(assert (= (and b!1007599 res!676650) b!1007598))

(assert (= (and b!1007598 res!676656) b!1007605))

(assert (= (and b!1007605 res!676657) b!1007604))

(assert (= (and b!1007604 res!676654) b!1007607))

(assert (= (and b!1007607 res!676655) b!1007595))

(assert (= (and b!1007595 res!676649) b!1007603))

(assert (= (and b!1007603 res!676646) b!1007606))

(declare-fun m!932559 () Bool)

(assert (=> b!1007597 m!932559))

(declare-fun m!932561 () Bool)

(assert (=> b!1007605 m!932561))

(assert (=> b!1007605 m!932561))

(declare-fun m!932563 () Bool)

(assert (=> b!1007605 m!932563))

(assert (=> b!1007605 m!932563))

(assert (=> b!1007605 m!932561))

(declare-fun m!932565 () Bool)

(assert (=> b!1007605 m!932565))

(assert (=> b!1007596 m!932561))

(assert (=> b!1007596 m!932561))

(declare-fun m!932567 () Bool)

(assert (=> b!1007596 m!932567))

(declare-fun m!932569 () Bool)

(assert (=> b!1007606 m!932569))

(declare-fun m!932571 () Bool)

(assert (=> b!1007607 m!932571))

(assert (=> b!1007607 m!932571))

(declare-fun m!932573 () Bool)

(assert (=> b!1007607 m!932573))

(declare-fun m!932575 () Bool)

(assert (=> b!1007607 m!932575))

(declare-fun m!932577 () Bool)

(assert (=> b!1007607 m!932577))

(assert (=> b!1007604 m!932561))

(assert (=> b!1007604 m!932561))

(declare-fun m!932579 () Bool)

(assert (=> b!1007604 m!932579))

(declare-fun m!932581 () Bool)

(assert (=> b!1007602 m!932581))

(declare-fun m!932583 () Bool)

(assert (=> b!1007600 m!932583))

(declare-fun m!932585 () Bool)

(assert (=> b!1007599 m!932585))

(declare-fun m!932587 () Bool)

(assert (=> start!86934 m!932587))

(declare-fun m!932589 () Bool)

(assert (=> start!86934 m!932589))

(declare-fun m!932591 () Bool)

(assert (=> b!1007608 m!932591))

(declare-fun m!932593 () Bool)

(assert (=> b!1007595 m!932593))

(check-sat (not b!1007599) (not start!86934) (not b!1007597) (not b!1007602) (not b!1007606) (not b!1007605) (not b!1007607) (not b!1007595) (not b!1007596) (not b!1007600) (not b!1007604) (not b!1007608))
(check-sat)
