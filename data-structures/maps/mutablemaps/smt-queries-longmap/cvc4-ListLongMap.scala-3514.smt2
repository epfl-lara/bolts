; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48674 () Bool)

(assert start!48674)

(declare-fun b!534371 () Bool)

(declare-fun res!329727 () Bool)

(declare-fun e!310643 () Bool)

(assert (=> b!534371 (=> (not res!329727) (not e!310643))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33842 0))(
  ( (array!33843 (arr!16256 (Array (_ BitVec 32) (_ BitVec 64))) (size!16620 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33842)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534371 (= res!329727 (and (= (size!16620 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16620 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16620 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534372 () Bool)

(declare-fun res!329733 () Bool)

(declare-fun e!310645 () Bool)

(assert (=> b!534372 (=> (not res!329733) (not e!310645))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4721 0))(
  ( (MissingZero!4721 (index!21108 (_ BitVec 32))) (Found!4721 (index!21109 (_ BitVec 32))) (Intermediate!4721 (undefined!5533 Bool) (index!21110 (_ BitVec 32)) (x!50091 (_ BitVec 32))) (Undefined!4721) (MissingVacant!4721 (index!21111 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33842 (_ BitVec 32)) SeekEntryResult!4721)

(assert (=> b!534372 (= res!329733 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16256 a!3154) j!147) a!3154 mask!3216) (Intermediate!4721 false resIndex!32 resX!32)))))

(declare-fun b!534373 () Bool)

(declare-fun res!329735 () Bool)

(assert (=> b!534373 (=> (not res!329735) (not e!310645))))

(assert (=> b!534373 (= res!329735 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16620 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16620 a!3154)) (= (select (arr!16256 a!3154) resIndex!32) (select (arr!16256 a!3154) j!147))))))

(declare-fun b!534374 () Bool)

(declare-fun res!329732 () Bool)

(assert (=> b!534374 (=> (not res!329732) (not e!310643))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534374 (= res!329732 (validKeyInArray!0 (select (arr!16256 a!3154) j!147)))))

(declare-fun b!534375 () Bool)

(assert (=> b!534375 (= e!310645 false)))

(declare-fun lt!245621 () SeekEntryResult!4721)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534375 (= lt!245621 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16256 a!3154) j!147) mask!3216) (select (arr!16256 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534376 () Bool)

(declare-fun res!329726 () Bool)

(assert (=> b!534376 (=> (not res!329726) (not e!310643))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!534376 (= res!329726 (validKeyInArray!0 k!1998))))

(declare-fun b!534377 () Bool)

(declare-fun res!329730 () Bool)

(assert (=> b!534377 (=> (not res!329730) (not e!310645))))

(declare-datatypes ((List!10428 0))(
  ( (Nil!10425) (Cons!10424 (h!11367 (_ BitVec 64)) (t!16664 List!10428)) )
))
(declare-fun arrayNoDuplicates!0 (array!33842 (_ BitVec 32) List!10428) Bool)

(assert (=> b!534377 (= res!329730 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10425))))

(declare-fun res!329731 () Bool)

(assert (=> start!48674 (=> (not res!329731) (not e!310643))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48674 (= res!329731 (validMask!0 mask!3216))))

(assert (=> start!48674 e!310643))

(assert (=> start!48674 true))

(declare-fun array_inv!12030 (array!33842) Bool)

(assert (=> start!48674 (array_inv!12030 a!3154)))

(declare-fun b!534378 () Bool)

(assert (=> b!534378 (= e!310643 e!310645)))

(declare-fun res!329734 () Bool)

(assert (=> b!534378 (=> (not res!329734) (not e!310645))))

(declare-fun lt!245620 () SeekEntryResult!4721)

(assert (=> b!534378 (= res!329734 (or (= lt!245620 (MissingZero!4721 i!1153)) (= lt!245620 (MissingVacant!4721 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33842 (_ BitVec 32)) SeekEntryResult!4721)

(assert (=> b!534378 (= lt!245620 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534379 () Bool)

(declare-fun res!329728 () Bool)

(assert (=> b!534379 (=> (not res!329728) (not e!310643))))

(declare-fun arrayContainsKey!0 (array!33842 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534379 (= res!329728 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534380 () Bool)

(declare-fun res!329729 () Bool)

(assert (=> b!534380 (=> (not res!329729) (not e!310645))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33842 (_ BitVec 32)) Bool)

(assert (=> b!534380 (= res!329729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48674 res!329731) b!534371))

(assert (= (and b!534371 res!329727) b!534374))

(assert (= (and b!534374 res!329732) b!534376))

(assert (= (and b!534376 res!329726) b!534379))

(assert (= (and b!534379 res!329728) b!534378))

(assert (= (and b!534378 res!329734) b!534380))

(assert (= (and b!534380 res!329729) b!534377))

(assert (= (and b!534377 res!329730) b!534373))

(assert (= (and b!534373 res!329735) b!534372))

(assert (= (and b!534372 res!329733) b!534375))

(declare-fun m!514109 () Bool)

(assert (=> b!534373 m!514109))

(declare-fun m!514111 () Bool)

(assert (=> b!534373 m!514111))

(declare-fun m!514113 () Bool)

(assert (=> b!534376 m!514113))

(declare-fun m!514115 () Bool)

(assert (=> b!534377 m!514115))

(assert (=> b!534375 m!514111))

(assert (=> b!534375 m!514111))

(declare-fun m!514117 () Bool)

(assert (=> b!534375 m!514117))

(assert (=> b!534375 m!514117))

(assert (=> b!534375 m!514111))

(declare-fun m!514119 () Bool)

(assert (=> b!534375 m!514119))

(assert (=> b!534374 m!514111))

(assert (=> b!534374 m!514111))

(declare-fun m!514121 () Bool)

(assert (=> b!534374 m!514121))

(declare-fun m!514123 () Bool)

(assert (=> b!534379 m!514123))

(declare-fun m!514125 () Bool)

(assert (=> start!48674 m!514125))

(declare-fun m!514127 () Bool)

(assert (=> start!48674 m!514127))

(declare-fun m!514129 () Bool)

(assert (=> b!534378 m!514129))

(assert (=> b!534372 m!514111))

(assert (=> b!534372 m!514111))

(declare-fun m!514131 () Bool)

(assert (=> b!534372 m!514131))

(declare-fun m!514133 () Bool)

(assert (=> b!534380 m!514133))

(push 1)

