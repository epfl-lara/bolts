; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86932 () Bool)

(assert start!86932)

(declare-fun b!1007553 () Bool)

(declare-fun res!676608 () Bool)

(declare-fun e!567062 () Bool)

(assert (=> b!1007553 (=> (not res!676608) (not e!567062))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007553 (= res!676608 (validKeyInArray!0 k!2224))))

(declare-fun b!1007554 () Bool)

(declare-fun res!676603 () Bool)

(declare-fun e!567059 () Bool)

(assert (=> b!1007554 (=> (not res!676603) (not e!567059))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007554 (= res!676603 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007556 () Bool)

(declare-fun res!676610 () Bool)

(assert (=> b!1007556 (=> (not res!676610) (not e!567062))))

(declare-datatypes ((array!63532 0))(
  ( (array!63533 (arr!30583 (Array (_ BitVec 32) (_ BitVec 64))) (size!31086 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63532)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1007556 (= res!676610 (and (= (size!31086 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31086 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31086 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007557 () Bool)

(declare-fun res!676602 () Bool)

(declare-fun e!567057 () Bool)

(assert (=> b!1007557 (=> (not res!676602) (not e!567057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63532 (_ BitVec 32)) Bool)

(assert (=> b!1007557 (= res!676602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007558 () Bool)

(declare-fun res!676614 () Bool)

(assert (=> b!1007558 (=> (not res!676614) (not e!567059))))

(declare-fun lt!445267 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9515 0))(
  ( (MissingZero!9515 (index!40430 (_ BitVec 32))) (Found!9515 (index!40431 (_ BitVec 32))) (Intermediate!9515 (undefined!10327 Bool) (index!40432 (_ BitVec 32)) (x!87858 (_ BitVec 32))) (Undefined!9515) (MissingVacant!9515 (index!40433 (_ BitVec 32))) )
))
(declare-fun lt!445272 () SeekEntryResult!9515)

(declare-fun lt!445268 () array!63532)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63532 (_ BitVec 32)) SeekEntryResult!9515)

(assert (=> b!1007558 (= res!676614 (not (= lt!445272 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445267 lt!445268 mask!3464))))))

(declare-fun b!1007559 () Bool)

(assert (=> b!1007559 (= e!567059 false)))

(declare-fun lt!445266 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007559 (= lt!445266 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007560 () Bool)

(declare-fun e!567058 () Bool)

(assert (=> b!1007560 (= e!567058 e!567059)))

(declare-fun res!676604 () Bool)

(assert (=> b!1007560 (=> (not res!676604) (not e!567059))))

(declare-fun lt!445269 () SeekEntryResult!9515)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007560 (= res!676604 (not (= lt!445269 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445267 mask!3464) lt!445267 lt!445268 mask!3464))))))

(assert (=> b!1007560 (= lt!445267 (select (store (arr!30583 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1007560 (= lt!445268 (array!63533 (store (arr!30583 a!3219) i!1194 k!2224) (size!31086 a!3219)))))

(declare-fun b!1007561 () Bool)

(declare-fun res!676606 () Bool)

(assert (=> b!1007561 (=> (not res!676606) (not e!567057))))

(declare-datatypes ((List!21385 0))(
  ( (Nil!21382) (Cons!21381 (h!22567 (_ BitVec 64)) (t!30394 List!21385)) )
))
(declare-fun arrayNoDuplicates!0 (array!63532 (_ BitVec 32) List!21385) Bool)

(assert (=> b!1007561 (= res!676606 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21382))))

(declare-fun b!1007562 () Bool)

(assert (=> b!1007562 (= e!567062 e!567057)))

(declare-fun res!676607 () Bool)

(assert (=> b!1007562 (=> (not res!676607) (not e!567057))))

(declare-fun lt!445270 () SeekEntryResult!9515)

(assert (=> b!1007562 (= res!676607 (or (= lt!445270 (MissingVacant!9515 i!1194)) (= lt!445270 (MissingZero!9515 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63532 (_ BitVec 32)) SeekEntryResult!9515)

(assert (=> b!1007562 (= lt!445270 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1007563 () Bool)

(declare-fun e!567061 () Bool)

(assert (=> b!1007563 (= e!567061 e!567058)))

(declare-fun res!676612 () Bool)

(assert (=> b!1007563 (=> (not res!676612) (not e!567058))))

(declare-fun lt!445271 () SeekEntryResult!9515)

(assert (=> b!1007563 (= res!676612 (= lt!445272 lt!445271))))

(assert (=> b!1007563 (= lt!445272 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30583 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007564 () Bool)

(declare-fun res!676609 () Bool)

(assert (=> b!1007564 (=> (not res!676609) (not e!567057))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007564 (= res!676609 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31086 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31086 a!3219))))))

(declare-fun res!676605 () Bool)

(assert (=> start!86932 (=> (not res!676605) (not e!567062))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86932 (= res!676605 (validMask!0 mask!3464))))

(assert (=> start!86932 e!567062))

(declare-fun array_inv!23573 (array!63532) Bool)

(assert (=> start!86932 (array_inv!23573 a!3219)))

(assert (=> start!86932 true))

(declare-fun b!1007555 () Bool)

(declare-fun res!676613 () Bool)

(assert (=> b!1007555 (=> (not res!676613) (not e!567062))))

(assert (=> b!1007555 (= res!676613 (validKeyInArray!0 (select (arr!30583 a!3219) j!170)))))

(declare-fun b!1007565 () Bool)

(assert (=> b!1007565 (= e!567057 e!567061)))

(declare-fun res!676611 () Bool)

(assert (=> b!1007565 (=> (not res!676611) (not e!567061))))

(assert (=> b!1007565 (= res!676611 (= lt!445269 lt!445271))))

(assert (=> b!1007565 (= lt!445271 (Intermediate!9515 false resIndex!38 resX!38))))

(assert (=> b!1007565 (= lt!445269 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30583 a!3219) j!170) mask!3464) (select (arr!30583 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007566 () Bool)

(declare-fun res!676615 () Bool)

(assert (=> b!1007566 (=> (not res!676615) (not e!567062))))

(declare-fun arrayContainsKey!0 (array!63532 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007566 (= res!676615 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86932 res!676605) b!1007556))

(assert (= (and b!1007556 res!676610) b!1007555))

(assert (= (and b!1007555 res!676613) b!1007553))

(assert (= (and b!1007553 res!676608) b!1007566))

(assert (= (and b!1007566 res!676615) b!1007562))

(assert (= (and b!1007562 res!676607) b!1007557))

(assert (= (and b!1007557 res!676602) b!1007561))

(assert (= (and b!1007561 res!676606) b!1007564))

(assert (= (and b!1007564 res!676609) b!1007565))

(assert (= (and b!1007565 res!676611) b!1007563))

(assert (= (and b!1007563 res!676612) b!1007560))

(assert (= (and b!1007560 res!676604) b!1007558))

(assert (= (and b!1007558 res!676614) b!1007554))

(assert (= (and b!1007554 res!676603) b!1007559))

(declare-fun m!932523 () Bool)

(assert (=> b!1007557 m!932523))

(declare-fun m!932525 () Bool)

(assert (=> b!1007565 m!932525))

(assert (=> b!1007565 m!932525))

(declare-fun m!932527 () Bool)

(assert (=> b!1007565 m!932527))

(assert (=> b!1007565 m!932527))

(assert (=> b!1007565 m!932525))

(declare-fun m!932529 () Bool)

(assert (=> b!1007565 m!932529))

(assert (=> b!1007555 m!932525))

(assert (=> b!1007555 m!932525))

(declare-fun m!932531 () Bool)

(assert (=> b!1007555 m!932531))

(declare-fun m!932533 () Bool)

(assert (=> b!1007553 m!932533))

(declare-fun m!932535 () Bool)

(assert (=> b!1007560 m!932535))

(assert (=> b!1007560 m!932535))

(declare-fun m!932537 () Bool)

(assert (=> b!1007560 m!932537))

(declare-fun m!932539 () Bool)

(assert (=> b!1007560 m!932539))

(declare-fun m!932541 () Bool)

(assert (=> b!1007560 m!932541))

(declare-fun m!932543 () Bool)

(assert (=> start!86932 m!932543))

(declare-fun m!932545 () Bool)

(assert (=> start!86932 m!932545))

(declare-fun m!932547 () Bool)

(assert (=> b!1007562 m!932547))

(declare-fun m!932549 () Bool)

(assert (=> b!1007558 m!932549))

(declare-fun m!932551 () Bool)

(assert (=> b!1007559 m!932551))

(declare-fun m!932553 () Bool)

(assert (=> b!1007561 m!932553))

(assert (=> b!1007563 m!932525))

(assert (=> b!1007563 m!932525))

(declare-fun m!932555 () Bool)

(assert (=> b!1007563 m!932555))

(declare-fun m!932557 () Bool)

(assert (=> b!1007566 m!932557))

(push 1)

