; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26688 () Bool)

(assert start!26688)

(declare-fun b!276847 () Bool)

(declare-fun res!140877 () Bool)

(declare-fun e!176807 () Bool)

(assert (=> b!276847 (=> (not res!140877) (not e!176807))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276847 (= res!140877 (validKeyInArray!0 k0!2581))))

(declare-fun b!276848 () Bool)

(declare-fun e!176809 () Bool)

(assert (=> b!276848 (= e!176807 e!176809)))

(declare-fun res!140878 () Bool)

(assert (=> b!276848 (=> (not res!140878) (not e!176809))))

(declare-datatypes ((SeekEntryResult!1705 0))(
  ( (MissingZero!1705 (index!8990 (_ BitVec 32))) (Found!1705 (index!8991 (_ BitVec 32))) (Intermediate!1705 (undefined!2517 Bool) (index!8992 (_ BitVec 32)) (x!27214 (_ BitVec 32))) (Undefined!1705) (MissingVacant!1705 (index!8993 (_ BitVec 32))) )
))
(declare-fun lt!137803 () SeekEntryResult!1705)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276848 (= res!140878 (or (= lt!137803 (MissingZero!1705 i!1267)) (= lt!137803 (MissingVacant!1705 i!1267))))))

(declare-datatypes ((array!13774 0))(
  ( (array!13775 (arr!6536 (Array (_ BitVec 32) (_ BitVec 64))) (size!6888 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13774)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13774 (_ BitVec 32)) SeekEntryResult!1705)

(assert (=> b!276848 (= lt!137803 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!276849 () Bool)

(declare-fun res!140880 () Bool)

(assert (=> b!276849 (=> (not res!140880) (not e!176807))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276849 (= res!140880 (and (= (size!6888 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6888 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6888 a!3325))))))

(declare-fun b!276851 () Bool)

(declare-fun res!140879 () Bool)

(assert (=> b!276851 (=> (not res!140879) (not e!176807))))

(declare-datatypes ((List!4365 0))(
  ( (Nil!4362) (Cons!4361 (h!5028 (_ BitVec 64)) (t!9455 List!4365)) )
))
(declare-fun arrayNoDuplicates!0 (array!13774 (_ BitVec 32) List!4365) Bool)

(assert (=> b!276851 (= res!140879 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4362))))

(declare-fun b!276852 () Bool)

(declare-fun res!140876 () Bool)

(assert (=> b!276852 (=> (not res!140876) (not e!176807))))

(declare-fun arrayContainsKey!0 (array!13774 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276852 (= res!140876 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!140875 () Bool)

(assert (=> start!26688 (=> (not res!140875) (not e!176807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26688 (= res!140875 (validMask!0 mask!3868))))

(assert (=> start!26688 e!176807))

(declare-fun array_inv!4490 (array!13774) Bool)

(assert (=> start!26688 (array_inv!4490 a!3325)))

(assert (=> start!26688 true))

(declare-fun b!276850 () Bool)

(assert (=> b!276850 (= e!176809 false)))

(declare-fun lt!137804 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13774 (_ BitVec 32)) Bool)

(assert (=> b!276850 (= lt!137804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26688 res!140875) b!276849))

(assert (= (and b!276849 res!140880) b!276847))

(assert (= (and b!276847 res!140877) b!276851))

(assert (= (and b!276851 res!140879) b!276852))

(assert (= (and b!276852 res!140876) b!276848))

(assert (= (and b!276848 res!140878) b!276850))

(declare-fun m!292119 () Bool)

(assert (=> b!276848 m!292119))

(declare-fun m!292121 () Bool)

(assert (=> b!276847 m!292121))

(declare-fun m!292123 () Bool)

(assert (=> start!26688 m!292123))

(declare-fun m!292125 () Bool)

(assert (=> start!26688 m!292125))

(declare-fun m!292127 () Bool)

(assert (=> b!276852 m!292127))

(declare-fun m!292129 () Bool)

(assert (=> b!276851 m!292129))

(declare-fun m!292131 () Bool)

(assert (=> b!276850 m!292131))

(check-sat (not b!276847) (not b!276848) (not b!276851) (not b!276852) (not b!276850) (not start!26688))
(check-sat)
