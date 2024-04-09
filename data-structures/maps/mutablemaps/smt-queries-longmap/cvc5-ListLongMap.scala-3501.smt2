; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48592 () Bool)

(assert start!48592)

(declare-fun b!533157 () Bool)

(declare-fun e!310275 () Bool)

(declare-fun e!310274 () Bool)

(assert (=> b!533157 (= e!310275 e!310274)))

(declare-fun res!328518 () Bool)

(assert (=> b!533157 (=> (not res!328518) (not e!310274))))

(declare-datatypes ((SeekEntryResult!4680 0))(
  ( (MissingZero!4680 (index!20944 (_ BitVec 32))) (Found!4680 (index!20945 (_ BitVec 32))) (Intermediate!4680 (undefined!5492 Bool) (index!20946 (_ BitVec 32)) (x!49946 (_ BitVec 32))) (Undefined!4680) (MissingVacant!4680 (index!20947 (_ BitVec 32))) )
))
(declare-fun lt!245393 () SeekEntryResult!4680)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533157 (= res!328518 (or (= lt!245393 (MissingZero!4680 i!1153)) (= lt!245393 (MissingVacant!4680 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!33760 0))(
  ( (array!33761 (arr!16215 (Array (_ BitVec 32) (_ BitVec 64))) (size!16579 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33760)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33760 (_ BitVec 32)) SeekEntryResult!4680)

(assert (=> b!533157 (= lt!245393 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533158 () Bool)

(declare-fun res!328513 () Bool)

(assert (=> b!533158 (=> (not res!328513) (not e!310274))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533158 (= res!328513 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16579 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16579 a!3154)) (= (select (arr!16215 a!3154) resIndex!32) (select (arr!16215 a!3154) j!147))))))

(declare-fun b!533159 () Bool)

(declare-fun res!328512 () Bool)

(assert (=> b!533159 (=> (not res!328512) (not e!310274))))

(declare-datatypes ((List!10387 0))(
  ( (Nil!10384) (Cons!10383 (h!11326 (_ BitVec 64)) (t!16623 List!10387)) )
))
(declare-fun arrayNoDuplicates!0 (array!33760 (_ BitVec 32) List!10387) Bool)

(assert (=> b!533159 (= res!328512 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10384))))

(declare-fun b!533160 () Bool)

(assert (=> b!533160 (= e!310274 false)))

(declare-fun lt!245392 () SeekEntryResult!4680)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33760 (_ BitVec 32)) SeekEntryResult!4680)

(assert (=> b!533160 (= lt!245392 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16215 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!533161 () Bool)

(declare-fun res!328517 () Bool)

(assert (=> b!533161 (=> (not res!328517) (not e!310275))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533161 (= res!328517 (validKeyInArray!0 k!1998))))

(declare-fun b!533162 () Bool)

(declare-fun res!328514 () Bool)

(assert (=> b!533162 (=> (not res!328514) (not e!310275))))

(assert (=> b!533162 (= res!328514 (validKeyInArray!0 (select (arr!16215 a!3154) j!147)))))

(declare-fun b!533163 () Bool)

(declare-fun res!328519 () Bool)

(assert (=> b!533163 (=> (not res!328519) (not e!310275))))

(assert (=> b!533163 (= res!328519 (and (= (size!16579 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16579 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16579 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533164 () Bool)

(declare-fun res!328515 () Bool)

(assert (=> b!533164 (=> (not res!328515) (not e!310275))))

(declare-fun arrayContainsKey!0 (array!33760 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533164 (= res!328515 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533165 () Bool)

(declare-fun res!328520 () Bool)

(assert (=> b!533165 (=> (not res!328520) (not e!310274))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33760 (_ BitVec 32)) Bool)

(assert (=> b!533165 (= res!328520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!328516 () Bool)

(assert (=> start!48592 (=> (not res!328516) (not e!310275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48592 (= res!328516 (validMask!0 mask!3216))))

(assert (=> start!48592 e!310275))

(assert (=> start!48592 true))

(declare-fun array_inv!11989 (array!33760) Bool)

(assert (=> start!48592 (array_inv!11989 a!3154)))

(assert (= (and start!48592 res!328516) b!533163))

(assert (= (and b!533163 res!328519) b!533162))

(assert (= (and b!533162 res!328514) b!533161))

(assert (= (and b!533161 res!328517) b!533164))

(assert (= (and b!533164 res!328515) b!533157))

(assert (= (and b!533157 res!328518) b!533165))

(assert (= (and b!533165 res!328520) b!533159))

(assert (= (and b!533159 res!328512) b!533158))

(assert (= (and b!533158 res!328513) b!533160))

(declare-fun m!513091 () Bool)

(assert (=> start!48592 m!513091))

(declare-fun m!513093 () Bool)

(assert (=> start!48592 m!513093))

(declare-fun m!513095 () Bool)

(assert (=> b!533165 m!513095))

(declare-fun m!513097 () Bool)

(assert (=> b!533162 m!513097))

(assert (=> b!533162 m!513097))

(declare-fun m!513099 () Bool)

(assert (=> b!533162 m!513099))

(declare-fun m!513101 () Bool)

(assert (=> b!533161 m!513101))

(declare-fun m!513103 () Bool)

(assert (=> b!533159 m!513103))

(declare-fun m!513105 () Bool)

(assert (=> b!533157 m!513105))

(assert (=> b!533160 m!513097))

(assert (=> b!533160 m!513097))

(declare-fun m!513107 () Bool)

(assert (=> b!533160 m!513107))

(declare-fun m!513109 () Bool)

(assert (=> b!533164 m!513109))

(declare-fun m!513111 () Bool)

(assert (=> b!533158 m!513111))

(assert (=> b!533158 m!513097))

(push 1)

(assert (not b!533161))

(assert (not b!533160))

(assert (not b!533162))

(assert (not start!48592))

(assert (not b!533165))

(assert (not b!533164))

(assert (not b!533159))

(assert (not b!533157))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

