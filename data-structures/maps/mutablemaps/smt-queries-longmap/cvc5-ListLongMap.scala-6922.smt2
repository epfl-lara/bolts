; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86980 () Bool)

(assert start!86980)

(declare-fun b!1008561 () Bool)

(declare-fun e!567490 () Bool)

(declare-fun e!567492 () Bool)

(assert (=> b!1008561 (= e!567490 e!567492)))

(declare-fun res!677619 () Bool)

(assert (=> b!1008561 (=> (not res!677619) (not e!567492))))

(declare-datatypes ((SeekEntryResult!9539 0))(
  ( (MissingZero!9539 (index!40526 (_ BitVec 32))) (Found!9539 (index!40527 (_ BitVec 32))) (Intermediate!9539 (undefined!10351 Bool) (index!40528 (_ BitVec 32)) (x!87946 (_ BitVec 32))) (Undefined!9539) (MissingVacant!9539 (index!40529 (_ BitVec 32))) )
))
(declare-fun lt!445772 () SeekEntryResult!9539)

(declare-fun lt!445776 () SeekEntryResult!9539)

(assert (=> b!1008561 (= res!677619 (= lt!445772 lt!445776))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008561 (= lt!445776 (Intermediate!9539 false resIndex!38 resX!38))))

(declare-datatypes ((array!63580 0))(
  ( (array!63581 (arr!30607 (Array (_ BitVec 32) (_ BitVec 64))) (size!31110 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63580)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63580 (_ BitVec 32)) SeekEntryResult!9539)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008561 (= lt!445772 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30607 a!3219) j!170) mask!3464) (select (arr!30607 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008562 () Bool)

(declare-fun res!677618 () Bool)

(declare-fun e!567489 () Bool)

(assert (=> b!1008562 (=> (not res!677618) (not e!567489))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1008562 (= res!677618 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1008563 () Bool)

(declare-fun res!677613 () Bool)

(assert (=> b!1008563 (=> (not res!677613) (not e!567489))))

(declare-fun lt!445770 () array!63580)

(declare-fun lt!445773 () SeekEntryResult!9539)

(declare-fun lt!445775 () (_ BitVec 64))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1008563 (= res!677613 (not (= lt!445773 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445775 lt!445770 mask!3464))))))

(declare-fun b!1008564 () Bool)

(declare-fun res!677610 () Bool)

(declare-fun e!567493 () Bool)

(assert (=> b!1008564 (=> (not res!677610) (not e!567493))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008564 (= res!677610 (validKeyInArray!0 (select (arr!30607 a!3219) j!170)))))

(declare-fun b!1008565 () Bool)

(declare-fun res!677620 () Bool)

(assert (=> b!1008565 (=> (not res!677620) (not e!567490))))

(declare-datatypes ((List!21409 0))(
  ( (Nil!21406) (Cons!21405 (h!22591 (_ BitVec 64)) (t!30418 List!21409)) )
))
(declare-fun arrayNoDuplicates!0 (array!63580 (_ BitVec 32) List!21409) Bool)

(assert (=> b!1008565 (= res!677620 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21406))))

(declare-fun b!1008567 () Bool)

(declare-fun res!677616 () Bool)

(assert (=> b!1008567 (=> (not res!677616) (not e!567493))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63580 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008567 (= res!677616 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1008568 () Bool)

(declare-fun e!567491 () Bool)

(assert (=> b!1008568 (= e!567491 e!567489)))

(declare-fun res!677621 () Bool)

(assert (=> b!1008568 (=> (not res!677621) (not e!567489))))

(assert (=> b!1008568 (= res!677621 (not (= lt!445772 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445775 mask!3464) lt!445775 lt!445770 mask!3464))))))

(assert (=> b!1008568 (= lt!445775 (select (store (arr!30607 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1008568 (= lt!445770 (array!63581 (store (arr!30607 a!3219) i!1194 k!2224) (size!31110 a!3219)))))

(declare-fun b!1008569 () Bool)

(declare-fun res!677612 () Bool)

(assert (=> b!1008569 (=> (not res!677612) (not e!567490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63580 (_ BitVec 32)) Bool)

(assert (=> b!1008569 (= res!677612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1008570 () Bool)

(assert (=> b!1008570 (= e!567493 e!567490)))

(declare-fun res!677617 () Bool)

(assert (=> b!1008570 (=> (not res!677617) (not e!567490))))

(declare-fun lt!445774 () SeekEntryResult!9539)

(assert (=> b!1008570 (= res!677617 (or (= lt!445774 (MissingVacant!9539 i!1194)) (= lt!445774 (MissingZero!9539 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63580 (_ BitVec 32)) SeekEntryResult!9539)

(assert (=> b!1008570 (= lt!445774 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1008571 () Bool)

(assert (=> b!1008571 (= e!567492 e!567491)))

(declare-fun res!677615 () Bool)

(assert (=> b!1008571 (=> (not res!677615) (not e!567491))))

(assert (=> b!1008571 (= res!677615 (= lt!445773 lt!445776))))

(assert (=> b!1008571 (= lt!445773 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30607 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008572 () Bool)

(declare-fun res!677622 () Bool)

(assert (=> b!1008572 (=> (not res!677622) (not e!567493))))

(assert (=> b!1008572 (= res!677622 (validKeyInArray!0 k!2224))))

(declare-fun res!677614 () Bool)

(assert (=> start!86980 (=> (not res!677614) (not e!567493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86980 (= res!677614 (validMask!0 mask!3464))))

(assert (=> start!86980 e!567493))

(declare-fun array_inv!23597 (array!63580) Bool)

(assert (=> start!86980 (array_inv!23597 a!3219)))

(assert (=> start!86980 true))

(declare-fun b!1008566 () Bool)

(assert (=> b!1008566 (= e!567489 false)))

(declare-fun lt!445771 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008566 (= lt!445771 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1008573 () Bool)

(declare-fun res!677623 () Bool)

(assert (=> b!1008573 (=> (not res!677623) (not e!567490))))

(assert (=> b!1008573 (= res!677623 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31110 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31110 a!3219))))))

(declare-fun b!1008574 () Bool)

(declare-fun res!677611 () Bool)

(assert (=> b!1008574 (=> (not res!677611) (not e!567493))))

(assert (=> b!1008574 (= res!677611 (and (= (size!31110 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31110 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31110 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86980 res!677614) b!1008574))

(assert (= (and b!1008574 res!677611) b!1008564))

(assert (= (and b!1008564 res!677610) b!1008572))

(assert (= (and b!1008572 res!677622) b!1008567))

(assert (= (and b!1008567 res!677616) b!1008570))

(assert (= (and b!1008570 res!677617) b!1008569))

(assert (= (and b!1008569 res!677612) b!1008565))

(assert (= (and b!1008565 res!677620) b!1008573))

(assert (= (and b!1008573 res!677623) b!1008561))

(assert (= (and b!1008561 res!677619) b!1008571))

(assert (= (and b!1008571 res!677615) b!1008568))

(assert (= (and b!1008568 res!677621) b!1008563))

(assert (= (and b!1008563 res!677613) b!1008562))

(assert (= (and b!1008562 res!677618) b!1008566))

(declare-fun m!933387 () Bool)

(assert (=> b!1008569 m!933387))

(declare-fun m!933389 () Bool)

(assert (=> b!1008571 m!933389))

(assert (=> b!1008571 m!933389))

(declare-fun m!933391 () Bool)

(assert (=> b!1008571 m!933391))

(declare-fun m!933393 () Bool)

(assert (=> b!1008566 m!933393))

(declare-fun m!933395 () Bool)

(assert (=> b!1008572 m!933395))

(declare-fun m!933397 () Bool)

(assert (=> b!1008568 m!933397))

(assert (=> b!1008568 m!933397))

(declare-fun m!933399 () Bool)

(assert (=> b!1008568 m!933399))

(declare-fun m!933401 () Bool)

(assert (=> b!1008568 m!933401))

(declare-fun m!933403 () Bool)

(assert (=> b!1008568 m!933403))

(assert (=> b!1008561 m!933389))

(assert (=> b!1008561 m!933389))

(declare-fun m!933405 () Bool)

(assert (=> b!1008561 m!933405))

(assert (=> b!1008561 m!933405))

(assert (=> b!1008561 m!933389))

(declare-fun m!933407 () Bool)

(assert (=> b!1008561 m!933407))

(declare-fun m!933409 () Bool)

(assert (=> start!86980 m!933409))

(declare-fun m!933411 () Bool)

(assert (=> start!86980 m!933411))

(declare-fun m!933413 () Bool)

(assert (=> b!1008567 m!933413))

(declare-fun m!933415 () Bool)

(assert (=> b!1008563 m!933415))

(assert (=> b!1008564 m!933389))

(assert (=> b!1008564 m!933389))

(declare-fun m!933417 () Bool)

(assert (=> b!1008564 m!933417))

(declare-fun m!933419 () Bool)

(assert (=> b!1008570 m!933419))

(declare-fun m!933421 () Bool)

(assert (=> b!1008565 m!933421))

(push 1)

