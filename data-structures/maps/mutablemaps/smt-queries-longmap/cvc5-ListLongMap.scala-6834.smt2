; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86074 () Bool)

(assert start!86074)

(declare-fun b!996527 () Bool)

(declare-fun res!666798 () Bool)

(declare-fun e!562240 () Bool)

(assert (=> b!996527 (=> (not res!666798) (not e!562240))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996527 (= res!666798 (validKeyInArray!0 k!2224))))

(declare-fun b!996528 () Bool)

(declare-fun res!666802 () Bool)

(declare-fun e!562241 () Bool)

(assert (=> b!996528 (=> (not res!666802) (not e!562241))))

(declare-datatypes ((array!63031 0))(
  ( (array!63032 (arr!30343 (Array (_ BitVec 32) (_ BitVec 64))) (size!30846 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63031)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996528 (= res!666802 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30846 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30846 a!3219))))))

(declare-fun b!996529 () Bool)

(declare-fun res!666801 () Bool)

(assert (=> b!996529 (=> (not res!666801) (not e!562240))))

(declare-fun arrayContainsKey!0 (array!63031 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996529 (= res!666801 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996530 () Bool)

(declare-fun res!666805 () Bool)

(assert (=> b!996530 (=> (not res!666805) (not e!562240))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996530 (= res!666805 (and (= (size!30846 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30846 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30846 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996531 () Bool)

(declare-fun res!666804 () Bool)

(assert (=> b!996531 (=> (not res!666804) (not e!562241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63031 (_ BitVec 32)) Bool)

(assert (=> b!996531 (= res!666804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996532 () Bool)

(declare-fun res!666803 () Bool)

(assert (=> b!996532 (=> (not res!666803) (not e!562240))))

(assert (=> b!996532 (= res!666803 (validKeyInArray!0 (select (arr!30343 a!3219) j!170)))))

(declare-fun b!996533 () Bool)

(declare-fun res!666797 () Bool)

(assert (=> b!996533 (=> (not res!666797) (not e!562241))))

(declare-datatypes ((List!21145 0))(
  ( (Nil!21142) (Cons!21141 (h!22306 (_ BitVec 64)) (t!30154 List!21145)) )
))
(declare-fun arrayNoDuplicates!0 (array!63031 (_ BitVec 32) List!21145) Bool)

(assert (=> b!996533 (= res!666797 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21142))))

(declare-fun res!666800 () Bool)

(assert (=> start!86074 (=> (not res!666800) (not e!562240))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86074 (= res!666800 (validMask!0 mask!3464))))

(assert (=> start!86074 e!562240))

(declare-fun array_inv!23333 (array!63031) Bool)

(assert (=> start!86074 (array_inv!23333 a!3219)))

(assert (=> start!86074 true))

(declare-fun b!996534 () Bool)

(assert (=> b!996534 (= e!562240 e!562241)))

(declare-fun res!666799 () Bool)

(assert (=> b!996534 (=> (not res!666799) (not e!562241))))

(declare-datatypes ((SeekEntryResult!9275 0))(
  ( (MissingZero!9275 (index!39470 (_ BitVec 32))) (Found!9275 (index!39471 (_ BitVec 32))) (Intermediate!9275 (undefined!10087 Bool) (index!39472 (_ BitVec 32)) (x!86936 (_ BitVec 32))) (Undefined!9275) (MissingVacant!9275 (index!39473 (_ BitVec 32))) )
))
(declare-fun lt!441221 () SeekEntryResult!9275)

(assert (=> b!996534 (= res!666799 (or (= lt!441221 (MissingVacant!9275 i!1194)) (= lt!441221 (MissingZero!9275 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63031 (_ BitVec 32)) SeekEntryResult!9275)

(assert (=> b!996534 (= lt!441221 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!996535 () Bool)

(assert (=> b!996535 (= e!562241 false)))

(declare-fun lt!441222 () SeekEntryResult!9275)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63031 (_ BitVec 32)) SeekEntryResult!9275)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996535 (= lt!441222 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30343 a!3219) j!170) mask!3464) (select (arr!30343 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!86074 res!666800) b!996530))

(assert (= (and b!996530 res!666805) b!996532))

(assert (= (and b!996532 res!666803) b!996527))

(assert (= (and b!996527 res!666798) b!996529))

(assert (= (and b!996529 res!666801) b!996534))

(assert (= (and b!996534 res!666799) b!996531))

(assert (= (and b!996531 res!666804) b!996533))

(assert (= (and b!996533 res!666797) b!996528))

(assert (= (and b!996528 res!666802) b!996535))

(declare-fun m!923709 () Bool)

(assert (=> b!996531 m!923709))

(declare-fun m!923711 () Bool)

(assert (=> b!996527 m!923711))

(declare-fun m!923713 () Bool)

(assert (=> b!996534 m!923713))

(declare-fun m!923715 () Bool)

(assert (=> b!996533 m!923715))

(declare-fun m!923717 () Bool)

(assert (=> b!996535 m!923717))

(assert (=> b!996535 m!923717))

(declare-fun m!923719 () Bool)

(assert (=> b!996535 m!923719))

(assert (=> b!996535 m!923719))

(assert (=> b!996535 m!923717))

(declare-fun m!923721 () Bool)

(assert (=> b!996535 m!923721))

(declare-fun m!923723 () Bool)

(assert (=> b!996529 m!923723))

(declare-fun m!923725 () Bool)

(assert (=> start!86074 m!923725))

(declare-fun m!923727 () Bool)

(assert (=> start!86074 m!923727))

(assert (=> b!996532 m!923717))

(assert (=> b!996532 m!923717))

(declare-fun m!923729 () Bool)

(assert (=> b!996532 m!923729))

(push 1)

