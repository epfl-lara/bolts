; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48634 () Bool)

(assert start!48634)

(declare-fun res!329128 () Bool)

(declare-fun e!310463 () Bool)

(assert (=> start!48634 (=> (not res!329128) (not e!310463))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48634 (= res!329128 (validMask!0 mask!3216))))

(assert (=> start!48634 e!310463))

(assert (=> start!48634 true))

(declare-datatypes ((array!33802 0))(
  ( (array!33803 (arr!16236 (Array (_ BitVec 32) (_ BitVec 64))) (size!16600 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33802)

(declare-fun array_inv!12010 (array!33802) Bool)

(assert (=> start!48634 (array_inv!12010 a!3154)))

(declare-fun b!533771 () Bool)

(declare-fun res!329131 () Bool)

(declare-fun e!310465 () Bool)

(assert (=> b!533771 (=> (not res!329131) (not e!310465))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33802 (_ BitVec 32)) Bool)

(assert (=> b!533771 (= res!329131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533772 () Bool)

(declare-fun res!329135 () Bool)

(assert (=> b!533772 (=> (not res!329135) (not e!310463))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533772 (= res!329135 (validKeyInArray!0 (select (arr!16236 a!3154) j!147)))))

(declare-fun b!533773 () Bool)

(declare-fun res!329130 () Bool)

(assert (=> b!533773 (=> (not res!329130) (not e!310463))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533773 (= res!329130 (and (= (size!16600 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16600 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16600 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533774 () Bool)

(declare-fun res!329126 () Bool)

(assert (=> b!533774 (=> (not res!329126) (not e!310465))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533774 (= res!329126 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16600 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16600 a!3154)) (= (select (arr!16236 a!3154) resIndex!32) (select (arr!16236 a!3154) j!147))))))

(declare-fun b!533775 () Bool)

(declare-fun res!329127 () Bool)

(assert (=> b!533775 (=> (not res!329127) (not e!310463))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!533775 (= res!329127 (validKeyInArray!0 k!1998))))

(declare-fun b!533776 () Bool)

(declare-fun res!329133 () Bool)

(assert (=> b!533776 (=> (not res!329133) (not e!310465))))

(declare-datatypes ((List!10408 0))(
  ( (Nil!10405) (Cons!10404 (h!11347 (_ BitVec 64)) (t!16644 List!10408)) )
))
(declare-fun arrayNoDuplicates!0 (array!33802 (_ BitVec 32) List!10408) Bool)

(assert (=> b!533776 (= res!329133 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10405))))

(declare-fun b!533777 () Bool)

(assert (=> b!533777 (= e!310463 e!310465)))

(declare-fun res!329134 () Bool)

(assert (=> b!533777 (=> (not res!329134) (not e!310465))))

(declare-datatypes ((SeekEntryResult!4701 0))(
  ( (MissingZero!4701 (index!21028 (_ BitVec 32))) (Found!4701 (index!21029 (_ BitVec 32))) (Intermediate!4701 (undefined!5513 Bool) (index!21030 (_ BitVec 32)) (x!50023 (_ BitVec 32))) (Undefined!4701) (MissingVacant!4701 (index!21031 (_ BitVec 32))) )
))
(declare-fun lt!245501 () SeekEntryResult!4701)

(assert (=> b!533777 (= res!329134 (or (= lt!245501 (MissingZero!4701 i!1153)) (= lt!245501 (MissingVacant!4701 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33802 (_ BitVec 32)) SeekEntryResult!4701)

(assert (=> b!533777 (= lt!245501 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533778 () Bool)

(declare-fun res!329132 () Bool)

(assert (=> b!533778 (=> (not res!329132) (not e!310465))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33802 (_ BitVec 32)) SeekEntryResult!4701)

(assert (=> b!533778 (= res!329132 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16236 a!3154) j!147) a!3154 mask!3216) (Intermediate!4701 false resIndex!32 resX!32)))))

(declare-fun b!533779 () Bool)

(declare-fun res!329129 () Bool)

(assert (=> b!533779 (=> (not res!329129) (not e!310463))))

(declare-fun arrayContainsKey!0 (array!33802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533779 (= res!329129 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533780 () Bool)

(assert (=> b!533780 (= e!310465 false)))

(declare-fun lt!245500 () SeekEntryResult!4701)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533780 (= lt!245500 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16236 a!3154) j!147) mask!3216) (select (arr!16236 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48634 res!329128) b!533773))

(assert (= (and b!533773 res!329130) b!533772))

(assert (= (and b!533772 res!329135) b!533775))

(assert (= (and b!533775 res!329127) b!533779))

(assert (= (and b!533779 res!329129) b!533777))

(assert (= (and b!533777 res!329134) b!533771))

(assert (= (and b!533771 res!329131) b!533776))

(assert (= (and b!533776 res!329133) b!533774))

(assert (= (and b!533774 res!329126) b!533778))

(assert (= (and b!533778 res!329132) b!533780))

(declare-fun m!513589 () Bool)

(assert (=> start!48634 m!513589))

(declare-fun m!513591 () Bool)

(assert (=> start!48634 m!513591))

(declare-fun m!513593 () Bool)

(assert (=> b!533775 m!513593))

(declare-fun m!513595 () Bool)

(assert (=> b!533779 m!513595))

(declare-fun m!513597 () Bool)

(assert (=> b!533776 m!513597))

(declare-fun m!513599 () Bool)

(assert (=> b!533778 m!513599))

(assert (=> b!533778 m!513599))

(declare-fun m!513601 () Bool)

(assert (=> b!533778 m!513601))

(declare-fun m!513603 () Bool)

(assert (=> b!533777 m!513603))

(assert (=> b!533780 m!513599))

(assert (=> b!533780 m!513599))

(declare-fun m!513605 () Bool)

(assert (=> b!533780 m!513605))

(assert (=> b!533780 m!513605))

(assert (=> b!533780 m!513599))

(declare-fun m!513607 () Bool)

(assert (=> b!533780 m!513607))

(declare-fun m!513609 () Bool)

(assert (=> b!533771 m!513609))

(declare-fun m!513611 () Bool)

(assert (=> b!533774 m!513611))

(assert (=> b!533774 m!513599))

(assert (=> b!533772 m!513599))

(assert (=> b!533772 m!513599))

(declare-fun m!513613 () Bool)

(assert (=> b!533772 m!513613))

(push 1)

