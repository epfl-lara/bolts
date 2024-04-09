; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48610 () Bool)

(assert start!48610)

(declare-fun b!533418 () Bool)

(declare-fun res!328773 () Bool)

(declare-fun e!310356 () Bool)

(assert (=> b!533418 (=> (not res!328773) (not e!310356))))

(declare-datatypes ((array!33778 0))(
  ( (array!33779 (arr!16224 (Array (_ BitVec 32) (_ BitVec 64))) (size!16588 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33778)

(declare-datatypes ((List!10396 0))(
  ( (Nil!10393) (Cons!10392 (h!11335 (_ BitVec 64)) (t!16632 List!10396)) )
))
(declare-fun arrayNoDuplicates!0 (array!33778 (_ BitVec 32) List!10396) Bool)

(assert (=> b!533418 (= res!328773 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10393))))

(declare-fun b!533419 () Bool)

(declare-fun e!310355 () Bool)

(assert (=> b!533419 (= e!310355 e!310356)))

(declare-fun res!328780 () Bool)

(assert (=> b!533419 (=> (not res!328780) (not e!310356))))

(declare-datatypes ((SeekEntryResult!4689 0))(
  ( (MissingZero!4689 (index!20980 (_ BitVec 32))) (Found!4689 (index!20981 (_ BitVec 32))) (Intermediate!4689 (undefined!5501 Bool) (index!20982 (_ BitVec 32)) (x!49979 (_ BitVec 32))) (Undefined!4689) (MissingVacant!4689 (index!20983 (_ BitVec 32))) )
))
(declare-fun lt!245429 () SeekEntryResult!4689)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533419 (= res!328780 (or (= lt!245429 (MissingZero!4689 i!1153)) (= lt!245429 (MissingVacant!4689 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33778 (_ BitVec 32)) SeekEntryResult!4689)

(assert (=> b!533419 (= lt!245429 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533420 () Bool)

(declare-fun res!328778 () Bool)

(assert (=> b!533420 (=> (not res!328778) (not e!310355))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!533420 (= res!328778 (and (= (size!16588 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16588 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16588 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533421 () Bool)

(declare-fun res!328776 () Bool)

(assert (=> b!533421 (=> (not res!328776) (not e!310355))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533421 (= res!328776 (validKeyInArray!0 k!1998))))

(declare-fun b!533422 () Bool)

(declare-fun res!328779 () Bool)

(assert (=> b!533422 (=> (not res!328779) (not e!310356))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533422 (= res!328779 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16588 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16588 a!3154)) (= (select (arr!16224 a!3154) resIndex!32) (select (arr!16224 a!3154) j!147))))))

(declare-fun res!328774 () Bool)

(assert (=> start!48610 (=> (not res!328774) (not e!310355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48610 (= res!328774 (validMask!0 mask!3216))))

(assert (=> start!48610 e!310355))

(assert (=> start!48610 true))

(declare-fun array_inv!11998 (array!33778) Bool)

(assert (=> start!48610 (array_inv!11998 a!3154)))

(declare-fun b!533423 () Bool)

(assert (=> b!533423 (= e!310356 false)))

(declare-fun lt!245428 () SeekEntryResult!4689)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33778 (_ BitVec 32)) SeekEntryResult!4689)

(assert (=> b!533423 (= lt!245428 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16224 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!533424 () Bool)

(declare-fun res!328777 () Bool)

(assert (=> b!533424 (=> (not res!328777) (not e!310355))))

(declare-fun arrayContainsKey!0 (array!33778 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533424 (= res!328777 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533425 () Bool)

(declare-fun res!328781 () Bool)

(assert (=> b!533425 (=> (not res!328781) (not e!310356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33778 (_ BitVec 32)) Bool)

(assert (=> b!533425 (= res!328781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533426 () Bool)

(declare-fun res!328775 () Bool)

(assert (=> b!533426 (=> (not res!328775) (not e!310355))))

(assert (=> b!533426 (= res!328775 (validKeyInArray!0 (select (arr!16224 a!3154) j!147)))))

(assert (= (and start!48610 res!328774) b!533420))

(assert (= (and b!533420 res!328778) b!533426))

(assert (= (and b!533426 res!328775) b!533421))

(assert (= (and b!533421 res!328776) b!533424))

(assert (= (and b!533424 res!328777) b!533419))

(assert (= (and b!533419 res!328780) b!533425))

(assert (= (and b!533425 res!328781) b!533418))

(assert (= (and b!533418 res!328773) b!533422))

(assert (= (and b!533422 res!328779) b!533423))

(declare-fun m!513289 () Bool)

(assert (=> b!533424 m!513289))

(declare-fun m!513291 () Bool)

(assert (=> start!48610 m!513291))

(declare-fun m!513293 () Bool)

(assert (=> start!48610 m!513293))

(declare-fun m!513295 () Bool)

(assert (=> b!533422 m!513295))

(declare-fun m!513297 () Bool)

(assert (=> b!533422 m!513297))

(declare-fun m!513299 () Bool)

(assert (=> b!533418 m!513299))

(declare-fun m!513301 () Bool)

(assert (=> b!533421 m!513301))

(declare-fun m!513303 () Bool)

(assert (=> b!533419 m!513303))

(assert (=> b!533423 m!513297))

(assert (=> b!533423 m!513297))

(declare-fun m!513305 () Bool)

(assert (=> b!533423 m!513305))

(declare-fun m!513307 () Bool)

(assert (=> b!533425 m!513307))

(assert (=> b!533426 m!513297))

(assert (=> b!533426 m!513297))

(declare-fun m!513309 () Bool)

(assert (=> b!533426 m!513309))

(push 1)

