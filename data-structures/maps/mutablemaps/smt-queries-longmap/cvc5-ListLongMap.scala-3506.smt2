; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48622 () Bool)

(assert start!48622)

(declare-fun b!533591 () Bool)

(declare-fun res!328948 () Bool)

(declare-fun e!310411 () Bool)

(assert (=> b!533591 (=> (not res!328948) (not e!310411))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33790 0))(
  ( (array!33791 (arr!16230 (Array (_ BitVec 32) (_ BitVec 64))) (size!16594 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33790)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533591 (= res!328948 (and (= (size!16594 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16594 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16594 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533592 () Bool)

(declare-fun res!328952 () Bool)

(declare-fun e!310409 () Bool)

(assert (=> b!533592 (=> (not res!328952) (not e!310409))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33790 (_ BitVec 32)) Bool)

(assert (=> b!533592 (= res!328952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!328950 () Bool)

(assert (=> start!48622 (=> (not res!328950) (not e!310411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48622 (= res!328950 (validMask!0 mask!3216))))

(assert (=> start!48622 e!310411))

(assert (=> start!48622 true))

(declare-fun array_inv!12004 (array!33790) Bool)

(assert (=> start!48622 (array_inv!12004 a!3154)))

(declare-fun b!533593 () Bool)

(declare-fun res!328946 () Bool)

(assert (=> b!533593 (=> (not res!328946) (not e!310409))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4695 0))(
  ( (MissingZero!4695 (index!21004 (_ BitVec 32))) (Found!4695 (index!21005 (_ BitVec 32))) (Intermediate!4695 (undefined!5507 Bool) (index!21006 (_ BitVec 32)) (x!50001 (_ BitVec 32))) (Undefined!4695) (MissingVacant!4695 (index!21007 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33790 (_ BitVec 32)) SeekEntryResult!4695)

(assert (=> b!533593 (= res!328946 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16230 a!3154) j!147) a!3154 mask!3216) (Intermediate!4695 false resIndex!32 resX!32)))))

(declare-fun b!533594 () Bool)

(declare-fun res!328954 () Bool)

(assert (=> b!533594 (=> (not res!328954) (not e!310411))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533594 (= res!328954 (validKeyInArray!0 k!1998))))

(declare-fun b!533595 () Bool)

(declare-fun res!328947 () Bool)

(assert (=> b!533595 (=> (not res!328947) (not e!310409))))

(assert (=> b!533595 (= res!328947 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16594 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16594 a!3154)) (= (select (arr!16230 a!3154) resIndex!32) (select (arr!16230 a!3154) j!147))))))

(declare-fun b!533596 () Bool)

(declare-fun res!328951 () Bool)

(assert (=> b!533596 (=> (not res!328951) (not e!310409))))

(declare-datatypes ((List!10402 0))(
  ( (Nil!10399) (Cons!10398 (h!11341 (_ BitVec 64)) (t!16638 List!10402)) )
))
(declare-fun arrayNoDuplicates!0 (array!33790 (_ BitVec 32) List!10402) Bool)

(assert (=> b!533596 (= res!328951 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10399))))

(declare-fun b!533597 () Bool)

(declare-fun res!328949 () Bool)

(assert (=> b!533597 (=> (not res!328949) (not e!310411))))

(assert (=> b!533597 (= res!328949 (validKeyInArray!0 (select (arr!16230 a!3154) j!147)))))

(declare-fun b!533598 () Bool)

(assert (=> b!533598 (= e!310411 e!310409)))

(declare-fun res!328955 () Bool)

(assert (=> b!533598 (=> (not res!328955) (not e!310409))))

(declare-fun lt!245465 () SeekEntryResult!4695)

(assert (=> b!533598 (= res!328955 (or (= lt!245465 (MissingZero!4695 i!1153)) (= lt!245465 (MissingVacant!4695 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33790 (_ BitVec 32)) SeekEntryResult!4695)

(assert (=> b!533598 (= lt!245465 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533599 () Bool)

(declare-fun res!328953 () Bool)

(assert (=> b!533599 (=> (not res!328953) (not e!310411))))

(declare-fun arrayContainsKey!0 (array!33790 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533599 (= res!328953 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533600 () Bool)

(assert (=> b!533600 (= e!310409 false)))

(declare-fun lt!245464 () SeekEntryResult!4695)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533600 (= lt!245464 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16230 a!3154) j!147) mask!3216) (select (arr!16230 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48622 res!328950) b!533591))

(assert (= (and b!533591 res!328948) b!533597))

(assert (= (and b!533597 res!328949) b!533594))

(assert (= (and b!533594 res!328954) b!533599))

(assert (= (and b!533599 res!328953) b!533598))

(assert (= (and b!533598 res!328955) b!533592))

(assert (= (and b!533592 res!328952) b!533596))

(assert (= (and b!533596 res!328951) b!533595))

(assert (= (and b!533595 res!328947) b!533593))

(assert (= (and b!533593 res!328946) b!533600))

(declare-fun m!513433 () Bool)

(assert (=> b!533598 m!513433))

(declare-fun m!513435 () Bool)

(assert (=> b!533594 m!513435))

(declare-fun m!513437 () Bool)

(assert (=> b!533592 m!513437))

(declare-fun m!513439 () Bool)

(assert (=> b!533593 m!513439))

(assert (=> b!533593 m!513439))

(declare-fun m!513441 () Bool)

(assert (=> b!533593 m!513441))

(assert (=> b!533600 m!513439))

(assert (=> b!533600 m!513439))

(declare-fun m!513443 () Bool)

(assert (=> b!533600 m!513443))

(assert (=> b!533600 m!513443))

(assert (=> b!533600 m!513439))

(declare-fun m!513445 () Bool)

(assert (=> b!533600 m!513445))

(declare-fun m!513447 () Bool)

(assert (=> b!533595 m!513447))

(assert (=> b!533595 m!513439))

(declare-fun m!513449 () Bool)

(assert (=> start!48622 m!513449))

(declare-fun m!513451 () Bool)

(assert (=> start!48622 m!513451))

(assert (=> b!533597 m!513439))

(assert (=> b!533597 m!513439))

(declare-fun m!513453 () Bool)

(assert (=> b!533597 m!513453))

(declare-fun m!513455 () Bool)

(assert (=> b!533596 m!513455))

(declare-fun m!513457 () Bool)

(assert (=> b!533599 m!513457))

(push 1)

(assert (not b!533597))

(assert (not start!48622))

(assert (not b!533600))

(assert (not b!533596))

(assert (not b!533599))

(assert (not b!533594))

(assert (not b!533592))

(assert (not b!533598))

(assert (not b!533593))

(check-sat)

(pop 1)

