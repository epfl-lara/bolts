; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26228 () Bool)

(assert start!26228)

(declare-fun b!271134 () Bool)

(declare-fun res!135166 () Bool)

(declare-fun e!174478 () Bool)

(assert (=> b!271134 (=> (not res!135166) (not e!174478))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((array!13314 0))(
  ( (array!13315 (arr!6306 (Array (_ BitVec 32) (_ BitVec 64))) (size!6658 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13314)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!271134 (= res!135166 (and (= (size!6658 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6658 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6658 a!3325))))))

(declare-fun b!271135 () Bool)

(declare-fun res!135167 () Bool)

(declare-fun e!174476 () Bool)

(assert (=> b!271135 (=> (not res!135167) (not e!174476))))

(declare-datatypes ((List!4135 0))(
  ( (Nil!4132) (Cons!4131 (h!4798 (_ BitVec 64)) (t!9225 List!4135)) )
))
(declare-fun contains!1944 (List!4135 (_ BitVec 64)) Bool)

(assert (=> b!271135 (= res!135167 (not (contains!1944 Nil!4132 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271136 () Bool)

(declare-fun res!135172 () Bool)

(assert (=> b!271136 (=> (not res!135172) (not e!174478))))

(declare-fun arrayNoDuplicates!0 (array!13314 (_ BitVec 32) List!4135) Bool)

(assert (=> b!271136 (= res!135172 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4132))))

(declare-fun b!271137 () Bool)

(declare-fun res!135169 () Bool)

(assert (=> b!271137 (=> (not res!135169) (not e!174476))))

(assert (=> b!271137 (= res!135169 (not (= startIndex!26 i!1267)))))

(declare-fun b!271138 () Bool)

(declare-fun res!135174 () Bool)

(assert (=> b!271138 (=> (not res!135174) (not e!174476))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13314 (_ BitVec 32)) Bool)

(assert (=> b!271138 (= res!135174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271139 () Bool)

(declare-fun res!135170 () Bool)

(assert (=> b!271139 (=> (not res!135170) (not e!174476))))

(declare-fun noDuplicate!133 (List!4135) Bool)

(assert (=> b!271139 (= res!135170 (noDuplicate!133 Nil!4132))))

(declare-fun b!271140 () Bool)

(declare-fun res!135164 () Bool)

(assert (=> b!271140 (=> (not res!135164) (not e!174476))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271140 (= res!135164 (validKeyInArray!0 (select (arr!6306 a!3325) startIndex!26)))))

(declare-fun res!135165 () Bool)

(assert (=> start!26228 (=> (not res!135165) (not e!174478))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26228 (= res!135165 (validMask!0 mask!3868))))

(assert (=> start!26228 e!174478))

(declare-fun array_inv!4260 (array!13314) Bool)

(assert (=> start!26228 (array_inv!4260 a!3325)))

(assert (=> start!26228 true))

(declare-fun b!271141 () Bool)

(declare-fun res!135168 () Bool)

(assert (=> b!271141 (=> (not res!135168) (not e!174476))))

(assert (=> b!271141 (= res!135168 (not (contains!1944 Nil!4132 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271142 () Bool)

(declare-fun res!135162 () Bool)

(assert (=> b!271142 (=> (not res!135162) (not e!174478))))

(declare-fun k!2581 () (_ BitVec 64))

(assert (=> b!271142 (= res!135162 (validKeyInArray!0 k!2581))))

(declare-fun b!271143 () Bool)

(assert (=> b!271143 (= e!174476 false)))

(declare-fun lt!135784 () Bool)

(assert (=> b!271143 (= lt!135784 (contains!1944 Nil!4132 k!2581))))

(declare-fun b!271144 () Bool)

(assert (=> b!271144 (= e!174478 e!174476)))

(declare-fun res!135163 () Bool)

(assert (=> b!271144 (=> (not res!135163) (not e!174476))))

(declare-datatypes ((SeekEntryResult!1475 0))(
  ( (MissingZero!1475 (index!8070 (_ BitVec 32))) (Found!1475 (index!8071 (_ BitVec 32))) (Intermediate!1475 (undefined!2287 Bool) (index!8072 (_ BitVec 32)) (x!26368 (_ BitVec 32))) (Undefined!1475) (MissingVacant!1475 (index!8073 (_ BitVec 32))) )
))
(declare-fun lt!135785 () SeekEntryResult!1475)

(assert (=> b!271144 (= res!135163 (or (= lt!135785 (MissingZero!1475 i!1267)) (= lt!135785 (MissingVacant!1475 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13314 (_ BitVec 32)) SeekEntryResult!1475)

(assert (=> b!271144 (= lt!135785 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!271145 () Bool)

(declare-fun res!135171 () Bool)

(assert (=> b!271145 (=> (not res!135171) (not e!174478))))

(declare-fun arrayContainsKey!0 (array!13314 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271145 (= res!135171 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271146 () Bool)

(declare-fun res!135173 () Bool)

(assert (=> b!271146 (=> (not res!135173) (not e!174476))))

(assert (=> b!271146 (= res!135173 (and (bvslt (size!6658 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6658 a!3325))))))

(assert (= (and start!26228 res!135165) b!271134))

(assert (= (and b!271134 res!135166) b!271142))

(assert (= (and b!271142 res!135162) b!271136))

(assert (= (and b!271136 res!135172) b!271145))

(assert (= (and b!271145 res!135171) b!271144))

(assert (= (and b!271144 res!135163) b!271138))

(assert (= (and b!271138 res!135174) b!271137))

(assert (= (and b!271137 res!135169) b!271140))

(assert (= (and b!271140 res!135164) b!271146))

(assert (= (and b!271146 res!135173) b!271139))

(assert (= (and b!271139 res!135170) b!271141))

(assert (= (and b!271141 res!135168) b!271135))

(assert (= (and b!271135 res!135167) b!271143))

(declare-fun m!286547 () Bool)

(assert (=> b!271142 m!286547))

(declare-fun m!286549 () Bool)

(assert (=> b!271143 m!286549))

(declare-fun m!286551 () Bool)

(assert (=> b!271141 m!286551))

(declare-fun m!286553 () Bool)

(assert (=> b!271138 m!286553))

(declare-fun m!286555 () Bool)

(assert (=> b!271139 m!286555))

(declare-fun m!286557 () Bool)

(assert (=> b!271145 m!286557))

(declare-fun m!286559 () Bool)

(assert (=> b!271144 m!286559))

(declare-fun m!286561 () Bool)

(assert (=> b!271135 m!286561))

(declare-fun m!286563 () Bool)

(assert (=> b!271136 m!286563))

(declare-fun m!286565 () Bool)

(assert (=> b!271140 m!286565))

(assert (=> b!271140 m!286565))

(declare-fun m!286567 () Bool)

(assert (=> b!271140 m!286567))

(declare-fun m!286569 () Bool)

(assert (=> start!26228 m!286569))

(declare-fun m!286571 () Bool)

(assert (=> start!26228 m!286571))

(push 1)

