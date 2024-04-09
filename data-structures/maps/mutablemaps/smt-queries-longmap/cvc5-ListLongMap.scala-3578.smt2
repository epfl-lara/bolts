; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49216 () Bool)

(assert start!49216)

(declare-fun b!541602 () Bool)

(declare-fun res!336485 () Bool)

(declare-fun e!313559 () Bool)

(assert (=> b!541602 (=> (not res!336485) (not e!313559))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541602 (= res!336485 (validKeyInArray!0 k!1998))))

(declare-fun b!541603 () Bool)

(declare-fun res!336480 () Bool)

(assert (=> b!541603 (=> (not res!336480) (not e!313559))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34231 0))(
  ( (array!34232 (arr!16446 (Array (_ BitVec 32) (_ BitVec 64))) (size!16810 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34231)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!541603 (= res!336480 (and (= (size!16810 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16810 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16810 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!541604 () Bool)

(declare-fun res!336482 () Bool)

(declare-fun e!313560 () Bool)

(assert (=> b!541604 (=> (not res!336482) (not e!313560))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!541604 (= res!336482 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16810 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16810 a!3154)) (= (select (arr!16446 a!3154) resIndex!32) (select (arr!16446 a!3154) j!147))))))

(declare-fun b!541605 () Bool)

(declare-fun res!336484 () Bool)

(assert (=> b!541605 (=> (not res!336484) (not e!313559))))

(assert (=> b!541605 (= res!336484 (validKeyInArray!0 (select (arr!16446 a!3154) j!147)))))

(declare-fun b!541606 () Bool)

(declare-fun res!336488 () Bool)

(assert (=> b!541606 (=> (not res!336488) (not e!313559))))

(declare-fun arrayContainsKey!0 (array!34231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541606 (= res!336488 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!541607 () Bool)

(assert (=> b!541607 (= e!313559 e!313560)))

(declare-fun res!336486 () Bool)

(assert (=> b!541607 (=> (not res!336486) (not e!313560))))

(declare-datatypes ((SeekEntryResult!4911 0))(
  ( (MissingZero!4911 (index!21868 (_ BitVec 32))) (Found!4911 (index!21869 (_ BitVec 32))) (Intermediate!4911 (undefined!5723 Bool) (index!21870 (_ BitVec 32)) (x!50811 (_ BitVec 32))) (Undefined!4911) (MissingVacant!4911 (index!21871 (_ BitVec 32))) )
))
(declare-fun lt!247697 () SeekEntryResult!4911)

(assert (=> b!541607 (= res!336486 (or (= lt!247697 (MissingZero!4911 i!1153)) (= lt!247697 (MissingVacant!4911 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34231 (_ BitVec 32)) SeekEntryResult!4911)

(assert (=> b!541607 (= lt!247697 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!541601 () Bool)

(declare-fun res!336487 () Bool)

(assert (=> b!541601 (=> (not res!336487) (not e!313560))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34231 (_ BitVec 32)) SeekEntryResult!4911)

(assert (=> b!541601 (= res!336487 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16446 a!3154) j!147) a!3154 mask!3216) (Intermediate!4911 false resIndex!32 resX!32)))))

(declare-fun res!336483 () Bool)

(assert (=> start!49216 (=> (not res!336483) (not e!313559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49216 (= res!336483 (validMask!0 mask!3216))))

(assert (=> start!49216 e!313559))

(assert (=> start!49216 true))

(declare-fun array_inv!12220 (array!34231) Bool)

(assert (=> start!49216 (array_inv!12220 a!3154)))

(declare-fun b!541608 () Bool)

(assert (=> b!541608 (= e!313560 false)))

(declare-fun lt!247696 () SeekEntryResult!4911)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541608 (= lt!247696 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16446 a!3154) j!147) mask!3216) (select (arr!16446 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541609 () Bool)

(declare-fun res!336481 () Bool)

(assert (=> b!541609 (=> (not res!336481) (not e!313560))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34231 (_ BitVec 32)) Bool)

(assert (=> b!541609 (= res!336481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!541610 () Bool)

(declare-fun res!336479 () Bool)

(assert (=> b!541610 (=> (not res!336479) (not e!313560))))

(declare-datatypes ((List!10618 0))(
  ( (Nil!10615) (Cons!10614 (h!11566 (_ BitVec 64)) (t!16854 List!10618)) )
))
(declare-fun arrayNoDuplicates!0 (array!34231 (_ BitVec 32) List!10618) Bool)

(assert (=> b!541610 (= res!336479 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10615))))

(assert (= (and start!49216 res!336483) b!541603))

(assert (= (and b!541603 res!336480) b!541605))

(assert (= (and b!541605 res!336484) b!541602))

(assert (= (and b!541602 res!336485) b!541606))

(assert (= (and b!541606 res!336488) b!541607))

(assert (= (and b!541607 res!336486) b!541609))

(assert (= (and b!541609 res!336481) b!541610))

(assert (= (and b!541610 res!336479) b!541604))

(assert (= (and b!541604 res!336482) b!541601))

(assert (= (and b!541601 res!336487) b!541608))

(declare-fun m!520075 () Bool)

(assert (=> start!49216 m!520075))

(declare-fun m!520077 () Bool)

(assert (=> start!49216 m!520077))

(declare-fun m!520079 () Bool)

(assert (=> b!541602 m!520079))

(declare-fun m!520081 () Bool)

(assert (=> b!541604 m!520081))

(declare-fun m!520083 () Bool)

(assert (=> b!541604 m!520083))

(declare-fun m!520085 () Bool)

(assert (=> b!541607 m!520085))

(declare-fun m!520087 () Bool)

(assert (=> b!541609 m!520087))

(declare-fun m!520089 () Bool)

(assert (=> b!541606 m!520089))

(declare-fun m!520091 () Bool)

(assert (=> b!541610 m!520091))

(assert (=> b!541605 m!520083))

(assert (=> b!541605 m!520083))

(declare-fun m!520093 () Bool)

(assert (=> b!541605 m!520093))

(assert (=> b!541608 m!520083))

(assert (=> b!541608 m!520083))

(declare-fun m!520095 () Bool)

(assert (=> b!541608 m!520095))

(assert (=> b!541608 m!520095))

(assert (=> b!541608 m!520083))

(declare-fun m!520097 () Bool)

(assert (=> b!541608 m!520097))

(assert (=> b!541601 m!520083))

(assert (=> b!541601 m!520083))

(declare-fun m!520099 () Bool)

(assert (=> b!541601 m!520099))

(push 1)

