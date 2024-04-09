; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27110 () Bool)

(assert start!27110)

(declare-fun b!280020 () Bool)

(declare-fun res!143133 () Bool)

(declare-fun e!178435 () Bool)

(assert (=> b!280020 (=> (not res!143133) (not e!178435))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280020 (= res!143133 (validKeyInArray!0 k!2581))))

(declare-fun b!280021 () Bool)

(declare-fun e!178433 () Bool)

(assert (=> b!280021 (= e!178433 false)))

(declare-fun lt!138791 () Bool)

(declare-datatypes ((List!4429 0))(
  ( (Nil!4426) (Cons!4425 (h!5095 (_ BitVec 64)) (t!9519 List!4429)) )
))
(declare-fun contains!1979 (List!4429 (_ BitVec 64)) Bool)

(assert (=> b!280021 (= lt!138791 (contains!1979 Nil!4426 k!2581))))

(declare-fun b!280022 () Bool)

(assert (=> b!280022 (= e!178435 e!178433)))

(declare-fun res!143135 () Bool)

(assert (=> b!280022 (=> (not res!143135) (not e!178433))))

(declare-datatypes ((SeekEntryResult!1769 0))(
  ( (MissingZero!1769 (index!9246 (_ BitVec 32))) (Found!1769 (index!9247 (_ BitVec 32))) (Intermediate!1769 (undefined!2581 Bool) (index!9248 (_ BitVec 32)) (x!27455 (_ BitVec 32))) (Undefined!1769) (MissingVacant!1769 (index!9249 (_ BitVec 32))) )
))
(declare-fun lt!138790 () SeekEntryResult!1769)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280022 (= res!143135 (or (= lt!138790 (MissingZero!1769 i!1267)) (= lt!138790 (MissingVacant!1769 i!1267))))))

(declare-datatypes ((array!13917 0))(
  ( (array!13918 (arr!6600 (Array (_ BitVec 32) (_ BitVec 64))) (size!6952 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13917)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13917 (_ BitVec 32)) SeekEntryResult!1769)

(assert (=> b!280022 (= lt!138790 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!143127 () Bool)

(assert (=> start!27110 (=> (not res!143127) (not e!178435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27110 (= res!143127 (validMask!0 mask!3868))))

(assert (=> start!27110 e!178435))

(declare-fun array_inv!4554 (array!13917) Bool)

(assert (=> start!27110 (array_inv!4554 a!3325)))

(assert (=> start!27110 true))

(declare-fun b!280023 () Bool)

(declare-fun res!143139 () Bool)

(assert (=> b!280023 (=> (not res!143139) (not e!178433))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!280023 (= res!143139 (not (= startIndex!26 i!1267)))))

(declare-fun b!280024 () Bool)

(declare-fun res!143129 () Bool)

(assert (=> b!280024 (=> (not res!143129) (not e!178433))))

(assert (=> b!280024 (= res!143129 (validKeyInArray!0 (select (arr!6600 a!3325) startIndex!26)))))

(declare-fun b!280025 () Bool)

(declare-fun res!143134 () Bool)

(assert (=> b!280025 (=> (not res!143134) (not e!178433))))

(declare-fun noDuplicate!163 (List!4429) Bool)

(assert (=> b!280025 (= res!143134 (noDuplicate!163 Nil!4426))))

(declare-fun b!280026 () Bool)

(declare-fun res!143131 () Bool)

(assert (=> b!280026 (=> (not res!143131) (not e!178435))))

(assert (=> b!280026 (= res!143131 (and (= (size!6952 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6952 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6952 a!3325))))))

(declare-fun b!280027 () Bool)

(declare-fun res!143130 () Bool)

(assert (=> b!280027 (=> (not res!143130) (not e!178435))))

(declare-fun arrayContainsKey!0 (array!13917 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280027 (= res!143130 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280028 () Bool)

(declare-fun res!143138 () Bool)

(assert (=> b!280028 (=> (not res!143138) (not e!178433))))

(assert (=> b!280028 (= res!143138 (not (contains!1979 Nil!4426 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!280029 () Bool)

(declare-fun res!143128 () Bool)

(assert (=> b!280029 (=> (not res!143128) (not e!178435))))

(declare-fun arrayNoDuplicates!0 (array!13917 (_ BitVec 32) List!4429) Bool)

(assert (=> b!280029 (= res!143128 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4426))))

(declare-fun b!280030 () Bool)

(declare-fun res!143132 () Bool)

(assert (=> b!280030 (=> (not res!143132) (not e!178433))))

(assert (=> b!280030 (= res!143132 (and (bvslt (size!6952 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6952 a!3325))))))

(declare-fun b!280031 () Bool)

(declare-fun res!143136 () Bool)

(assert (=> b!280031 (=> (not res!143136) (not e!178433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13917 (_ BitVec 32)) Bool)

(assert (=> b!280031 (= res!143136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280032 () Bool)

(declare-fun res!143137 () Bool)

(assert (=> b!280032 (=> (not res!143137) (not e!178433))))

(assert (=> b!280032 (= res!143137 (not (contains!1979 Nil!4426 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!27110 res!143127) b!280026))

(assert (= (and b!280026 res!143131) b!280020))

(assert (= (and b!280020 res!143133) b!280029))

(assert (= (and b!280029 res!143128) b!280027))

(assert (= (and b!280027 res!143130) b!280022))

(assert (= (and b!280022 res!143135) b!280031))

(assert (= (and b!280031 res!143136) b!280023))

(assert (= (and b!280023 res!143139) b!280024))

(assert (= (and b!280024 res!143129) b!280030))

(assert (= (and b!280030 res!143132) b!280025))

(assert (= (and b!280025 res!143134) b!280028))

(assert (= (and b!280028 res!143138) b!280032))

(assert (= (and b!280032 res!143137) b!280021))

(declare-fun m!294617 () Bool)

(assert (=> b!280022 m!294617))

(declare-fun m!294619 () Bool)

(assert (=> start!27110 m!294619))

(declare-fun m!294621 () Bool)

(assert (=> start!27110 m!294621))

(declare-fun m!294623 () Bool)

(assert (=> b!280027 m!294623))

(declare-fun m!294625 () Bool)

(assert (=> b!280032 m!294625))

(declare-fun m!294627 () Bool)

(assert (=> b!280029 m!294627))

(declare-fun m!294629 () Bool)

(assert (=> b!280020 m!294629))

(declare-fun m!294631 () Bool)

(assert (=> b!280024 m!294631))

(assert (=> b!280024 m!294631))

(declare-fun m!294633 () Bool)

(assert (=> b!280024 m!294633))

(declare-fun m!294635 () Bool)

(assert (=> b!280021 m!294635))

(declare-fun m!294637 () Bool)

(assert (=> b!280031 m!294637))

(declare-fun m!294639 () Bool)

(assert (=> b!280025 m!294639))

(declare-fun m!294641 () Bool)

(assert (=> b!280028 m!294641))

(push 1)

