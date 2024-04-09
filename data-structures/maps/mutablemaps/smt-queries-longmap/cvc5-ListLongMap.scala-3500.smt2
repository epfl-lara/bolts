; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48586 () Bool)

(assert start!48586)

(declare-fun b!533069 () Bool)

(declare-fun e!310249 () Bool)

(declare-fun mask!3216 () (_ BitVec 32))

(assert (=> b!533069 (= e!310249 (bvslt mask!3216 #b00000000000000000000000000000000))))

(declare-fun b!533070 () Bool)

(declare-fun res!328428 () Bool)

(declare-fun e!310248 () Bool)

(assert (=> b!533070 (=> (not res!328428) (not e!310248))))

(declare-datatypes ((array!33754 0))(
  ( (array!33755 (arr!16212 (Array (_ BitVec 32) (_ BitVec 64))) (size!16576 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33754)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533070 (= res!328428 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun res!328425 () Bool)

(assert (=> start!48586 (=> (not res!328425) (not e!310248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48586 (= res!328425 (validMask!0 mask!3216))))

(assert (=> start!48586 e!310248))

(assert (=> start!48586 true))

(declare-fun array_inv!11986 (array!33754) Bool)

(assert (=> start!48586 (array_inv!11986 a!3154)))

(declare-fun b!533071 () Bool)

(declare-fun res!328431 () Bool)

(assert (=> b!533071 (=> (not res!328431) (not e!310248))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533071 (= res!328431 (validKeyInArray!0 (select (arr!16212 a!3154) j!147)))))

(declare-fun b!533072 () Bool)

(declare-fun res!328426 () Bool)

(assert (=> b!533072 (=> (not res!328426) (not e!310249))))

(declare-datatypes ((List!10384 0))(
  ( (Nil!10381) (Cons!10380 (h!11323 (_ BitVec 64)) (t!16620 List!10384)) )
))
(declare-fun arrayNoDuplicates!0 (array!33754 (_ BitVec 32) List!10384) Bool)

(assert (=> b!533072 (= res!328426 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10381))))

(declare-fun b!533073 () Bool)

(declare-fun res!328424 () Bool)

(assert (=> b!533073 (=> (not res!328424) (not e!310249))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4677 0))(
  ( (MissingZero!4677 (index!20932 (_ BitVec 32))) (Found!4677 (index!20933 (_ BitVec 32))) (Intermediate!4677 (undefined!5489 Bool) (index!20934 (_ BitVec 32)) (x!49935 (_ BitVec 32))) (Undefined!4677) (MissingVacant!4677 (index!20935 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33754 (_ BitVec 32)) SeekEntryResult!4677)

(assert (=> b!533073 (= res!328424 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16212 a!3154) j!147) a!3154 mask!3216) (Intermediate!4677 false resIndex!32 resX!32)))))

(declare-fun b!533074 () Bool)

(declare-fun res!328430 () Bool)

(assert (=> b!533074 (=> (not res!328430) (not e!310248))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533074 (= res!328430 (and (= (size!16576 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16576 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16576 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533075 () Bool)

(assert (=> b!533075 (= e!310248 e!310249)))

(declare-fun res!328427 () Bool)

(assert (=> b!533075 (=> (not res!328427) (not e!310249))))

(declare-fun lt!245381 () SeekEntryResult!4677)

(assert (=> b!533075 (= res!328427 (or (= lt!245381 (MissingZero!4677 i!1153)) (= lt!245381 (MissingVacant!4677 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33754 (_ BitVec 32)) SeekEntryResult!4677)

(assert (=> b!533075 (= lt!245381 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533076 () Bool)

(declare-fun res!328433 () Bool)

(assert (=> b!533076 (=> (not res!328433) (not e!310248))))

(assert (=> b!533076 (= res!328433 (validKeyInArray!0 k!1998))))

(declare-fun b!533077 () Bool)

(declare-fun res!328429 () Bool)

(assert (=> b!533077 (=> (not res!328429) (not e!310249))))

(assert (=> b!533077 (= res!328429 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16576 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16576 a!3154)) (= (select (arr!16212 a!3154) resIndex!32) (select (arr!16212 a!3154) j!147))))))

(declare-fun b!533078 () Bool)

(declare-fun res!328432 () Bool)

(assert (=> b!533078 (=> (not res!328432) (not e!310249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33754 (_ BitVec 32)) Bool)

(assert (=> b!533078 (= res!328432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48586 res!328425) b!533074))

(assert (= (and b!533074 res!328430) b!533071))

(assert (= (and b!533071 res!328431) b!533076))

(assert (= (and b!533076 res!328433) b!533070))

(assert (= (and b!533070 res!328428) b!533075))

(assert (= (and b!533075 res!328427) b!533078))

(assert (= (and b!533078 res!328432) b!533072))

(assert (= (and b!533072 res!328426) b!533077))

(assert (= (and b!533077 res!328429) b!533073))

(assert (= (and b!533073 res!328424) b!533069))

(declare-fun m!513025 () Bool)

(assert (=> b!533072 m!513025))

(declare-fun m!513027 () Bool)

(assert (=> b!533071 m!513027))

(assert (=> b!533071 m!513027))

(declare-fun m!513029 () Bool)

(assert (=> b!533071 m!513029))

(declare-fun m!513031 () Bool)

(assert (=> b!533075 m!513031))

(declare-fun m!513033 () Bool)

(assert (=> start!48586 m!513033))

(declare-fun m!513035 () Bool)

(assert (=> start!48586 m!513035))

(declare-fun m!513037 () Bool)

(assert (=> b!533077 m!513037))

(assert (=> b!533077 m!513027))

(declare-fun m!513039 () Bool)

(assert (=> b!533078 m!513039))

(assert (=> b!533073 m!513027))

(assert (=> b!533073 m!513027))

(declare-fun m!513041 () Bool)

(assert (=> b!533073 m!513041))

(declare-fun m!513043 () Bool)

(assert (=> b!533076 m!513043))

(declare-fun m!513045 () Bool)

(assert (=> b!533070 m!513045))

(push 1)

(assert (not b!533073))

