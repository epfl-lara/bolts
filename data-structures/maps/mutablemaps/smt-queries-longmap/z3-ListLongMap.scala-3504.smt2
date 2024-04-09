; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48612 () Bool)

(assert start!48612)

(declare-fun b!533445 () Bool)

(declare-fun res!328802 () Bool)

(declare-fun e!310364 () Bool)

(assert (=> b!533445 (=> (not res!328802) (not e!310364))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533445 (= res!328802 (validKeyInArray!0 k0!1998))))

(declare-fun b!533446 () Bool)

(declare-fun res!328805 () Bool)

(declare-fun e!310365 () Bool)

(assert (=> b!533446 (=> (not res!328805) (not e!310365))))

(declare-datatypes ((array!33780 0))(
  ( (array!33781 (arr!16225 (Array (_ BitVec 32) (_ BitVec 64))) (size!16589 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33780)

(declare-datatypes ((List!10397 0))(
  ( (Nil!10394) (Cons!10393 (h!11336 (_ BitVec 64)) (t!16633 List!10397)) )
))
(declare-fun arrayNoDuplicates!0 (array!33780 (_ BitVec 32) List!10397) Bool)

(assert (=> b!533446 (= res!328805 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10394))))

(declare-fun b!533447 () Bool)

(assert (=> b!533447 (= e!310364 e!310365)))

(declare-fun res!328804 () Bool)

(assert (=> b!533447 (=> (not res!328804) (not e!310365))))

(declare-datatypes ((SeekEntryResult!4690 0))(
  ( (MissingZero!4690 (index!20984 (_ BitVec 32))) (Found!4690 (index!20985 (_ BitVec 32))) (Intermediate!4690 (undefined!5502 Bool) (index!20986 (_ BitVec 32)) (x!49980 (_ BitVec 32))) (Undefined!4690) (MissingVacant!4690 (index!20987 (_ BitVec 32))) )
))
(declare-fun lt!245434 () SeekEntryResult!4690)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533447 (= res!328804 (or (= lt!245434 (MissingZero!4690 i!1153)) (= lt!245434 (MissingVacant!4690 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33780 (_ BitVec 32)) SeekEntryResult!4690)

(assert (=> b!533447 (= lt!245434 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!533448 () Bool)

(declare-fun res!328808 () Bool)

(assert (=> b!533448 (=> (not res!328808) (not e!310365))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33780 (_ BitVec 32)) Bool)

(assert (=> b!533448 (= res!328808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533449 () Bool)

(declare-fun res!328803 () Bool)

(assert (=> b!533449 (=> (not res!328803) (not e!310364))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!533449 (= res!328803 (validKeyInArray!0 (select (arr!16225 a!3154) j!147)))))

(declare-fun b!533450 () Bool)

(declare-fun res!328800 () Bool)

(assert (=> b!533450 (=> (not res!328800) (not e!310364))))

(declare-fun arrayContainsKey!0 (array!33780 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533450 (= res!328800 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533451 () Bool)

(assert (=> b!533451 (= e!310365 false)))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun lt!245435 () SeekEntryResult!4690)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33780 (_ BitVec 32)) SeekEntryResult!4690)

(assert (=> b!533451 (= lt!245435 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16225 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!533452 () Bool)

(declare-fun res!328801 () Bool)

(assert (=> b!533452 (=> (not res!328801) (not e!310364))))

(assert (=> b!533452 (= res!328801 (and (= (size!16589 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16589 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16589 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!328807 () Bool)

(assert (=> start!48612 (=> (not res!328807) (not e!310364))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48612 (= res!328807 (validMask!0 mask!3216))))

(assert (=> start!48612 e!310364))

(assert (=> start!48612 true))

(declare-fun array_inv!11999 (array!33780) Bool)

(assert (=> start!48612 (array_inv!11999 a!3154)))

(declare-fun b!533453 () Bool)

(declare-fun res!328806 () Bool)

(assert (=> b!533453 (=> (not res!328806) (not e!310365))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533453 (= res!328806 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16589 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16589 a!3154)) (= (select (arr!16225 a!3154) resIndex!32) (select (arr!16225 a!3154) j!147))))))

(assert (= (and start!48612 res!328807) b!533452))

(assert (= (and b!533452 res!328801) b!533449))

(assert (= (and b!533449 res!328803) b!533445))

(assert (= (and b!533445 res!328802) b!533450))

(assert (= (and b!533450 res!328800) b!533447))

(assert (= (and b!533447 res!328804) b!533448))

(assert (= (and b!533448 res!328808) b!533446))

(assert (= (and b!533446 res!328805) b!533453))

(assert (= (and b!533453 res!328806) b!533451))

(declare-fun m!513311 () Bool)

(assert (=> b!533449 m!513311))

(assert (=> b!533449 m!513311))

(declare-fun m!513313 () Bool)

(assert (=> b!533449 m!513313))

(declare-fun m!513315 () Bool)

(assert (=> b!533448 m!513315))

(declare-fun m!513317 () Bool)

(assert (=> b!533446 m!513317))

(declare-fun m!513319 () Bool)

(assert (=> b!533453 m!513319))

(assert (=> b!533453 m!513311))

(declare-fun m!513321 () Bool)

(assert (=> start!48612 m!513321))

(declare-fun m!513323 () Bool)

(assert (=> start!48612 m!513323))

(declare-fun m!513325 () Bool)

(assert (=> b!533450 m!513325))

(assert (=> b!533451 m!513311))

(assert (=> b!533451 m!513311))

(declare-fun m!513327 () Bool)

(assert (=> b!533451 m!513327))

(declare-fun m!513329 () Bool)

(assert (=> b!533447 m!513329))

(declare-fun m!513331 () Bool)

(assert (=> b!533445 m!513331))

(check-sat (not b!533448) (not b!533451) (not start!48612) (not b!533449) (not b!533445) (not b!533446) (not b!533447) (not b!533450))
(check-sat)
