; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27116 () Bool)

(assert start!27116)

(declare-fun b!280137 () Bool)

(declare-fun res!143244 () Bool)

(declare-fun e!178462 () Bool)

(assert (=> b!280137 (=> (not res!143244) (not e!178462))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280137 (= res!143244 (not (= startIndex!26 i!1267)))))

(declare-fun b!280138 () Bool)

(declare-fun e!178460 () Bool)

(assert (=> b!280138 (= e!178460 e!178462)))

(declare-fun res!143254 () Bool)

(assert (=> b!280138 (=> (not res!143254) (not e!178462))))

(declare-datatypes ((SeekEntryResult!1772 0))(
  ( (MissingZero!1772 (index!9258 (_ BitVec 32))) (Found!1772 (index!9259 (_ BitVec 32))) (Intermediate!1772 (undefined!2584 Bool) (index!9260 (_ BitVec 32)) (x!27466 (_ BitVec 32))) (Undefined!1772) (MissingVacant!1772 (index!9261 (_ BitVec 32))) )
))
(declare-fun lt!138808 () SeekEntryResult!1772)

(assert (=> b!280138 (= res!143254 (or (= lt!138808 (MissingZero!1772 i!1267)) (= lt!138808 (MissingVacant!1772 i!1267))))))

(declare-datatypes ((array!13923 0))(
  ( (array!13924 (arr!6603 (Array (_ BitVec 32) (_ BitVec 64))) (size!6955 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13923)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13923 (_ BitVec 32)) SeekEntryResult!1772)

(assert (=> b!280138 (= lt!138808 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!280140 () Bool)

(declare-fun res!143246 () Bool)

(assert (=> b!280140 (=> (not res!143246) (not e!178462))))

(declare-datatypes ((List!4432 0))(
  ( (Nil!4429) (Cons!4428 (h!5098 (_ BitVec 64)) (t!9522 List!4432)) )
))
(declare-fun contains!1982 (List!4432 (_ BitVec 64)) Bool)

(assert (=> b!280140 (= res!143246 (not (contains!1982 Nil!4429 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!280141 () Bool)

(declare-fun res!143252 () Bool)

(assert (=> b!280141 (=> (not res!143252) (not e!178462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13923 (_ BitVec 32)) Bool)

(assert (=> b!280141 (= res!143252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280142 () Bool)

(declare-fun res!143256 () Bool)

(assert (=> b!280142 (=> (not res!143256) (not e!178462))))

(assert (=> b!280142 (= res!143256 (and (bvslt (size!6955 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6955 a!3325))))))

(declare-fun b!280143 () Bool)

(declare-fun res!143250 () Bool)

(assert (=> b!280143 (=> (not res!143250) (not e!178460))))

(assert (=> b!280143 (= res!143250 (and (= (size!6955 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6955 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6955 a!3325))))))

(declare-fun b!280144 () Bool)

(declare-fun res!143253 () Bool)

(assert (=> b!280144 (=> (not res!143253) (not e!178462))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280144 (= res!143253 (validKeyInArray!0 (select (arr!6603 a!3325) startIndex!26)))))

(declare-fun b!280145 () Bool)

(assert (=> b!280145 (= e!178462 false)))

(declare-fun lt!138809 () Bool)

(assert (=> b!280145 (= lt!138809 (contains!1982 Nil!4429 k!2581))))

(declare-fun b!280146 () Bool)

(declare-fun res!143245 () Bool)

(assert (=> b!280146 (=> (not res!143245) (not e!178462))))

(assert (=> b!280146 (= res!143245 (not (contains!1982 Nil!4429 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!280147 () Bool)

(declare-fun res!143249 () Bool)

(assert (=> b!280147 (=> (not res!143249) (not e!178460))))

(assert (=> b!280147 (= res!143249 (validKeyInArray!0 k!2581))))

(declare-fun b!280139 () Bool)

(declare-fun res!143251 () Bool)

(assert (=> b!280139 (=> (not res!143251) (not e!178462))))

(declare-fun noDuplicate!166 (List!4432) Bool)

(assert (=> b!280139 (= res!143251 (noDuplicate!166 Nil!4429))))

(declare-fun res!143247 () Bool)

(assert (=> start!27116 (=> (not res!143247) (not e!178460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27116 (= res!143247 (validMask!0 mask!3868))))

(assert (=> start!27116 e!178460))

(declare-fun array_inv!4557 (array!13923) Bool)

(assert (=> start!27116 (array_inv!4557 a!3325)))

(assert (=> start!27116 true))

(declare-fun b!280148 () Bool)

(declare-fun res!143248 () Bool)

(assert (=> b!280148 (=> (not res!143248) (not e!178460))))

(declare-fun arrayNoDuplicates!0 (array!13923 (_ BitVec 32) List!4432) Bool)

(assert (=> b!280148 (= res!143248 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4429))))

(declare-fun b!280149 () Bool)

(declare-fun res!143255 () Bool)

(assert (=> b!280149 (=> (not res!143255) (not e!178460))))

(declare-fun arrayContainsKey!0 (array!13923 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280149 (= res!143255 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!27116 res!143247) b!280143))

(assert (= (and b!280143 res!143250) b!280147))

(assert (= (and b!280147 res!143249) b!280148))

(assert (= (and b!280148 res!143248) b!280149))

(assert (= (and b!280149 res!143255) b!280138))

(assert (= (and b!280138 res!143254) b!280141))

(assert (= (and b!280141 res!143252) b!280137))

(assert (= (and b!280137 res!143244) b!280144))

(assert (= (and b!280144 res!143253) b!280142))

(assert (= (and b!280142 res!143256) b!280139))

(assert (= (and b!280139 res!143251) b!280140))

(assert (= (and b!280140 res!143246) b!280146))

(assert (= (and b!280146 res!143245) b!280145))

(declare-fun m!294695 () Bool)

(assert (=> start!27116 m!294695))

(declare-fun m!294697 () Bool)

(assert (=> start!27116 m!294697))

(declare-fun m!294699 () Bool)

(assert (=> b!280140 m!294699))

(declare-fun m!294701 () Bool)

(assert (=> b!280138 m!294701))

(declare-fun m!294703 () Bool)

(assert (=> b!280148 m!294703))

(declare-fun m!294705 () Bool)

(assert (=> b!280147 m!294705))

(declare-fun m!294707 () Bool)

(assert (=> b!280145 m!294707))

(declare-fun m!294709 () Bool)

(assert (=> b!280144 m!294709))

(assert (=> b!280144 m!294709))

(declare-fun m!294711 () Bool)

(assert (=> b!280144 m!294711))

(declare-fun m!294713 () Bool)

(assert (=> b!280141 m!294713))

(declare-fun m!294715 () Bool)

(assert (=> b!280139 m!294715))

(declare-fun m!294717 () Bool)

(assert (=> b!280149 m!294717))

(declare-fun m!294719 () Bool)

(assert (=> b!280146 m!294719))

(push 1)

