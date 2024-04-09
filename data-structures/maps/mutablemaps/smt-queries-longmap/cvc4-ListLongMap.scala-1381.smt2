; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27152 () Bool)

(assert start!27152)

(declare-fun b!280699 () Bool)

(declare-fun e!178623 () Bool)

(assert (=> b!280699 (= e!178623 (not true))))

(declare-datatypes ((array!13959 0))(
  ( (array!13960 (arr!6621 (Array (_ BitVec 32) (_ BitVec 64))) (size!6973 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13959)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4450 0))(
  ( (Nil!4447) (Cons!4446 (h!5116 (_ BitVec 64)) (t!9540 List!4450)) )
))
(declare-fun arrayNoDuplicates!0 (array!13959 (_ BitVec 32) List!4450) Bool)

(assert (=> b!280699 (arrayNoDuplicates!0 (array!13960 (store (arr!6621 a!3325) i!1267 k!2581) (size!6973 a!3325)) #b00000000000000000000000000000000 Nil!4447)))

(declare-datatypes ((Unit!8843 0))(
  ( (Unit!8844) )
))
(declare-fun lt!138917 () Unit!8843)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13959 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4450) Unit!8843)

(assert (=> b!280699 (= lt!138917 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4447))))

(declare-fun b!280700 () Bool)

(declare-fun res!143806 () Bool)

(declare-fun e!178624 () Bool)

(assert (=> b!280700 (=> (not res!143806) (not e!178624))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280700 (= res!143806 (validKeyInArray!0 k!2581))))

(declare-fun b!280701 () Bool)

(declare-fun res!143814 () Bool)

(assert (=> b!280701 (=> (not res!143814) (not e!178624))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!280701 (= res!143814 (and (= (size!6973 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6973 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6973 a!3325))))))

(declare-fun b!280702 () Bool)

(declare-fun res!143810 () Bool)

(assert (=> b!280702 (=> (not res!143810) (not e!178623))))

(assert (=> b!280702 (= res!143810 (not (= startIndex!26 i!1267)))))

(declare-fun b!280703 () Bool)

(declare-fun res!143813 () Bool)

(assert (=> b!280703 (=> (not res!143813) (not e!178623))))

(assert (=> b!280703 (= res!143813 (validKeyInArray!0 (select (arr!6621 a!3325) startIndex!26)))))

(declare-fun b!280704 () Bool)

(declare-fun res!143808 () Bool)

(assert (=> b!280704 (=> (not res!143808) (not e!178624))))

(declare-fun arrayContainsKey!0 (array!13959 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280704 (= res!143808 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280705 () Bool)

(declare-fun res!143809 () Bool)

(assert (=> b!280705 (=> (not res!143809) (not e!178623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13959 (_ BitVec 32)) Bool)

(assert (=> b!280705 (= res!143809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!143812 () Bool)

(assert (=> start!27152 (=> (not res!143812) (not e!178624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27152 (= res!143812 (validMask!0 mask!3868))))

(assert (=> start!27152 e!178624))

(declare-fun array_inv!4575 (array!13959) Bool)

(assert (=> start!27152 (array_inv!4575 a!3325)))

(assert (=> start!27152 true))

(declare-fun b!280706 () Bool)

(declare-fun res!143807 () Bool)

(assert (=> b!280706 (=> (not res!143807) (not e!178624))))

(assert (=> b!280706 (= res!143807 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4447))))

(declare-fun b!280707 () Bool)

(assert (=> b!280707 (= e!178624 e!178623)))

(declare-fun res!143811 () Bool)

(assert (=> b!280707 (=> (not res!143811) (not e!178623))))

(declare-datatypes ((SeekEntryResult!1790 0))(
  ( (MissingZero!1790 (index!9330 (_ BitVec 32))) (Found!1790 (index!9331 (_ BitVec 32))) (Intermediate!1790 (undefined!2602 Bool) (index!9332 (_ BitVec 32)) (x!27532 (_ BitVec 32))) (Undefined!1790) (MissingVacant!1790 (index!9333 (_ BitVec 32))) )
))
(declare-fun lt!138916 () SeekEntryResult!1790)

(assert (=> b!280707 (= res!143811 (or (= lt!138916 (MissingZero!1790 i!1267)) (= lt!138916 (MissingVacant!1790 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13959 (_ BitVec 32)) SeekEntryResult!1790)

(assert (=> b!280707 (= lt!138916 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27152 res!143812) b!280701))

(assert (= (and b!280701 res!143814) b!280700))

(assert (= (and b!280700 res!143806) b!280706))

(assert (= (and b!280706 res!143807) b!280704))

(assert (= (and b!280704 res!143808) b!280707))

(assert (= (and b!280707 res!143811) b!280705))

(assert (= (and b!280705 res!143809) b!280702))

(assert (= (and b!280702 res!143810) b!280703))

(assert (= (and b!280703 res!143813) b!280699))

(declare-fun m!295141 () Bool)

(assert (=> b!280704 m!295141))

(declare-fun m!295143 () Bool)

(assert (=> b!280703 m!295143))

(assert (=> b!280703 m!295143))

(declare-fun m!295145 () Bool)

(assert (=> b!280703 m!295145))

(declare-fun m!295147 () Bool)

(assert (=> b!280700 m!295147))

(declare-fun m!295149 () Bool)

(assert (=> start!27152 m!295149))

(declare-fun m!295151 () Bool)

(assert (=> start!27152 m!295151))

(declare-fun m!295153 () Bool)

(assert (=> b!280707 m!295153))

(declare-fun m!295155 () Bool)

(assert (=> b!280699 m!295155))

(declare-fun m!295157 () Bool)

(assert (=> b!280699 m!295157))

(declare-fun m!295159 () Bool)

(assert (=> b!280699 m!295159))

(declare-fun m!295161 () Bool)

(assert (=> b!280706 m!295161))

(declare-fun m!295163 () Bool)

(assert (=> b!280705 m!295163))

(push 1)

