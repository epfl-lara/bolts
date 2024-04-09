; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48620 () Bool)

(assert start!48620)

(declare-fun b!533561 () Bool)

(declare-fun e!310402 () Bool)

(assert (=> b!533561 (= e!310402 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4694 0))(
  ( (MissingZero!4694 (index!21000 (_ BitVec 32))) (Found!4694 (index!21001 (_ BitVec 32))) (Intermediate!4694 (undefined!5506 Bool) (index!21002 (_ BitVec 32)) (x!49992 (_ BitVec 32))) (Undefined!4694) (MissingVacant!4694 (index!21003 (_ BitVec 32))) )
))
(declare-fun lt!245458 () SeekEntryResult!4694)

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33788 0))(
  ( (array!33789 (arr!16229 (Array (_ BitVec 32) (_ BitVec 64))) (size!16593 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33788)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33788 (_ BitVec 32)) SeekEntryResult!4694)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533561 (= lt!245458 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16229 a!3154) j!147) mask!3216) (select (arr!16229 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!533562 () Bool)

(declare-fun res!328924 () Bool)

(declare-fun e!310400 () Bool)

(assert (=> b!533562 (=> (not res!328924) (not e!310400))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33788 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533562 (= res!328924 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533563 () Bool)

(declare-fun res!328919 () Bool)

(assert (=> b!533563 (=> (not res!328919) (not e!310402))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33788 (_ BitVec 32)) Bool)

(assert (=> b!533563 (= res!328919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533564 () Bool)

(declare-fun res!328921 () Bool)

(assert (=> b!533564 (=> (not res!328921) (not e!310402))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533564 (= res!328921 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16229 a!3154) j!147) a!3154 mask!3216) (Intermediate!4694 false resIndex!32 resX!32)))))

(declare-fun res!328917 () Bool)

(assert (=> start!48620 (=> (not res!328917) (not e!310400))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48620 (= res!328917 (validMask!0 mask!3216))))

(assert (=> start!48620 e!310400))

(assert (=> start!48620 true))

(declare-fun array_inv!12003 (array!33788) Bool)

(assert (=> start!48620 (array_inv!12003 a!3154)))

(declare-fun b!533565 () Bool)

(declare-fun res!328925 () Bool)

(assert (=> b!533565 (=> (not res!328925) (not e!310400))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533565 (= res!328925 (validKeyInArray!0 (select (arr!16229 a!3154) j!147)))))

(declare-fun b!533566 () Bool)

(declare-fun res!328918 () Bool)

(assert (=> b!533566 (=> (not res!328918) (not e!310402))))

(declare-datatypes ((List!10401 0))(
  ( (Nil!10398) (Cons!10397 (h!11340 (_ BitVec 64)) (t!16637 List!10401)) )
))
(declare-fun arrayNoDuplicates!0 (array!33788 (_ BitVec 32) List!10401) Bool)

(assert (=> b!533566 (= res!328918 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10398))))

(declare-fun b!533567 () Bool)

(assert (=> b!533567 (= e!310400 e!310402)))

(declare-fun res!328920 () Bool)

(assert (=> b!533567 (=> (not res!328920) (not e!310402))))

(declare-fun lt!245459 () SeekEntryResult!4694)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533567 (= res!328920 (or (= lt!245459 (MissingZero!4694 i!1153)) (= lt!245459 (MissingVacant!4694 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33788 (_ BitVec 32)) SeekEntryResult!4694)

(assert (=> b!533567 (= lt!245459 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533568 () Bool)

(declare-fun res!328922 () Bool)

(assert (=> b!533568 (=> (not res!328922) (not e!310400))))

(assert (=> b!533568 (= res!328922 (validKeyInArray!0 k!1998))))

(declare-fun b!533569 () Bool)

(declare-fun res!328916 () Bool)

(assert (=> b!533569 (=> (not res!328916) (not e!310400))))

(assert (=> b!533569 (= res!328916 (and (= (size!16593 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16593 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16593 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533570 () Bool)

(declare-fun res!328923 () Bool)

(assert (=> b!533570 (=> (not res!328923) (not e!310402))))

(assert (=> b!533570 (= res!328923 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16593 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16593 a!3154)) (= (select (arr!16229 a!3154) resIndex!32) (select (arr!16229 a!3154) j!147))))))

(assert (= (and start!48620 res!328917) b!533569))

(assert (= (and b!533569 res!328916) b!533565))

(assert (= (and b!533565 res!328925) b!533568))

(assert (= (and b!533568 res!328922) b!533562))

(assert (= (and b!533562 res!328924) b!533567))

(assert (= (and b!533567 res!328920) b!533563))

(assert (= (and b!533563 res!328919) b!533566))

(assert (= (and b!533566 res!328918) b!533570))

(assert (= (and b!533570 res!328923) b!533564))

(assert (= (and b!533564 res!328921) b!533561))

(declare-fun m!513407 () Bool)

(assert (=> b!533562 m!513407))

(declare-fun m!513409 () Bool)

(assert (=> b!533563 m!513409))

(declare-fun m!513411 () Bool)

(assert (=> b!533561 m!513411))

(assert (=> b!533561 m!513411))

(declare-fun m!513413 () Bool)

(assert (=> b!533561 m!513413))

(assert (=> b!533561 m!513413))

(assert (=> b!533561 m!513411))

(declare-fun m!513415 () Bool)

(assert (=> b!533561 m!513415))

(declare-fun m!513417 () Bool)

(assert (=> b!533567 m!513417))

(assert (=> b!533564 m!513411))

(assert (=> b!533564 m!513411))

(declare-fun m!513419 () Bool)

(assert (=> b!533564 m!513419))

(assert (=> b!533565 m!513411))

(assert (=> b!533565 m!513411))

(declare-fun m!513421 () Bool)

(assert (=> b!533565 m!513421))

(declare-fun m!513423 () Bool)

(assert (=> b!533568 m!513423))

(declare-fun m!513425 () Bool)

(assert (=> start!48620 m!513425))

(declare-fun m!513427 () Bool)

(assert (=> start!48620 m!513427))

(declare-fun m!513429 () Bool)

(assert (=> b!533566 m!513429))

(declare-fun m!513431 () Bool)

(assert (=> b!533570 m!513431))

(assert (=> b!533570 m!513411))

(push 1)

(assert (not b!533561))

(assert (not b!533563))

(assert (not b!533562))

(assert (not b!533568))

(assert (not b!533566))

(assert (not start!48620))

(assert (not b!533567))

(assert (not b!533564))

