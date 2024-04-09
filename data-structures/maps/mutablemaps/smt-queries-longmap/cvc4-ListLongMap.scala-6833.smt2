; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86072 () Bool)

(assert start!86072)

(declare-fun b!996499 () Bool)

(declare-fun res!666776 () Bool)

(declare-fun e!562232 () Bool)

(assert (=> b!996499 (=> (not res!666776) (not e!562232))))

(declare-datatypes ((array!63029 0))(
  ( (array!63030 (arr!30342 (Array (_ BitVec 32) (_ BitVec 64))) (size!30845 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63029)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(assert (=> b!996499 (= res!666776 (and (= (size!30845 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30845 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30845 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996500 () Bool)

(declare-fun res!666773 () Bool)

(declare-fun e!562230 () Bool)

(assert (=> b!996500 (=> (not res!666773) (not e!562230))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9274 0))(
  ( (MissingZero!9274 (index!39466 (_ BitVec 32))) (Found!9274 (index!39467 (_ BitVec 32))) (Intermediate!9274 (undefined!10086 Bool) (index!39468 (_ BitVec 32)) (x!86927 (_ BitVec 32))) (Undefined!9274) (MissingVacant!9274 (index!39469 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63029 (_ BitVec 32)) SeekEntryResult!9274)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996500 (= res!666773 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30342 a!3219) j!170) mask!3464) (select (arr!30342 a!3219) j!170) a!3219 mask!3464) (Intermediate!9274 false resIndex!38 resX!38)))))

(declare-fun b!996501 () Bool)

(declare-fun res!666778 () Bool)

(assert (=> b!996501 (=> (not res!666778) (not e!562230))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63029 (_ BitVec 32)) Bool)

(assert (=> b!996501 (= res!666778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996502 () Bool)

(declare-fun res!666769 () Bool)

(assert (=> b!996502 (=> (not res!666769) (not e!562230))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!996502 (= res!666769 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30845 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30845 a!3219))))))

(declare-fun b!996503 () Bool)

(declare-fun res!666774 () Bool)

(assert (=> b!996503 (=> (not res!666774) (not e!562232))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996503 (= res!666774 (validKeyInArray!0 (select (arr!30342 a!3219) j!170)))))

(declare-fun b!996504 () Bool)

(declare-fun res!666772 () Bool)

(assert (=> b!996504 (=> (not res!666772) (not e!562232))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63029 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996504 (= res!666772 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!666775 () Bool)

(assert (=> start!86072 (=> (not res!666775) (not e!562232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86072 (= res!666775 (validMask!0 mask!3464))))

(assert (=> start!86072 e!562232))

(declare-fun array_inv!23332 (array!63029) Bool)

(assert (=> start!86072 (array_inv!23332 a!3219)))

(assert (=> start!86072 true))

(declare-fun b!996505 () Bool)

(declare-fun res!666770 () Bool)

(assert (=> b!996505 (=> (not res!666770) (not e!562232))))

(assert (=> b!996505 (= res!666770 (validKeyInArray!0 k!2224))))

(declare-fun b!996506 () Bool)

(assert (=> b!996506 (= e!562230 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!996507 () Bool)

(declare-fun res!666777 () Bool)

(assert (=> b!996507 (=> (not res!666777) (not e!562230))))

(declare-datatypes ((List!21144 0))(
  ( (Nil!21141) (Cons!21140 (h!22305 (_ BitVec 64)) (t!30153 List!21144)) )
))
(declare-fun arrayNoDuplicates!0 (array!63029 (_ BitVec 32) List!21144) Bool)

(assert (=> b!996507 (= res!666777 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21141))))

(declare-fun b!996508 () Bool)

(assert (=> b!996508 (= e!562232 e!562230)))

(declare-fun res!666771 () Bool)

(assert (=> b!996508 (=> (not res!666771) (not e!562230))))

(declare-fun lt!441216 () SeekEntryResult!9274)

(assert (=> b!996508 (= res!666771 (or (= lt!441216 (MissingVacant!9274 i!1194)) (= lt!441216 (MissingZero!9274 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63029 (_ BitVec 32)) SeekEntryResult!9274)

(assert (=> b!996508 (= lt!441216 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!86072 res!666775) b!996499))

(assert (= (and b!996499 res!666776) b!996503))

(assert (= (and b!996503 res!666774) b!996505))

(assert (= (and b!996505 res!666770) b!996504))

(assert (= (and b!996504 res!666772) b!996508))

(assert (= (and b!996508 res!666771) b!996501))

(assert (= (and b!996501 res!666778) b!996507))

(assert (= (and b!996507 res!666777) b!996502))

(assert (= (and b!996502 res!666769) b!996500))

(assert (= (and b!996500 res!666773) b!996506))

(declare-fun m!923687 () Bool)

(assert (=> b!996500 m!923687))

(assert (=> b!996500 m!923687))

(declare-fun m!923689 () Bool)

(assert (=> b!996500 m!923689))

(assert (=> b!996500 m!923689))

(assert (=> b!996500 m!923687))

(declare-fun m!923691 () Bool)

(assert (=> b!996500 m!923691))

(declare-fun m!923693 () Bool)

(assert (=> start!86072 m!923693))

(declare-fun m!923695 () Bool)

(assert (=> start!86072 m!923695))

(assert (=> b!996503 m!923687))

(assert (=> b!996503 m!923687))

(declare-fun m!923697 () Bool)

(assert (=> b!996503 m!923697))

(declare-fun m!923699 () Bool)

(assert (=> b!996504 m!923699))

(declare-fun m!923701 () Bool)

(assert (=> b!996501 m!923701))

(declare-fun m!923703 () Bool)

(assert (=> b!996505 m!923703))

(declare-fun m!923705 () Bool)

(assert (=> b!996507 m!923705))

(declare-fun m!923707 () Bool)

(assert (=> b!996508 m!923707))

(push 1)

(assert (not start!86072))

(assert (not b!996500))

(assert (not b!996505))

(assert (not b!996503))

(assert (not b!996507))

(assert (not b!996501))

(assert (not b!996508))

