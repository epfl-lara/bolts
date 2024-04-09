; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26690 () Bool)

(assert start!26690)

(declare-fun res!140898 () Bool)

(declare-fun e!176816 () Bool)

(assert (=> start!26690 (=> (not res!140898) (not e!176816))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26690 (= res!140898 (validMask!0 mask!3868))))

(assert (=> start!26690 e!176816))

(declare-datatypes ((array!13776 0))(
  ( (array!13777 (arr!6537 (Array (_ BitVec 32) (_ BitVec 64))) (size!6889 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13776)

(declare-fun array_inv!4491 (array!13776) Bool)

(assert (=> start!26690 (array_inv!4491 a!3325)))

(assert (=> start!26690 true))

(declare-fun b!276865 () Bool)

(declare-fun res!140895 () Bool)

(assert (=> b!276865 (=> (not res!140895) (not e!176816))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276865 (= res!140895 (validKeyInArray!0 k!2581))))

(declare-fun b!276866 () Bool)

(declare-fun e!176818 () Bool)

(assert (=> b!276866 (= e!176818 false)))

(declare-fun lt!137809 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13776 (_ BitVec 32)) Bool)

(assert (=> b!276866 (= lt!137809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276867 () Bool)

(declare-fun res!140893 () Bool)

(assert (=> b!276867 (=> (not res!140893) (not e!176816))))

(declare-datatypes ((List!4366 0))(
  ( (Nil!4363) (Cons!4362 (h!5029 (_ BitVec 64)) (t!9456 List!4366)) )
))
(declare-fun arrayNoDuplicates!0 (array!13776 (_ BitVec 32) List!4366) Bool)

(assert (=> b!276867 (= res!140893 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4363))))

(declare-fun b!276868 () Bool)

(declare-fun res!140896 () Bool)

(assert (=> b!276868 (=> (not res!140896) (not e!176816))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276868 (= res!140896 (and (= (size!6889 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6889 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6889 a!3325))))))

(declare-fun b!276869 () Bool)

(declare-fun res!140897 () Bool)

(assert (=> b!276869 (=> (not res!140897) (not e!176816))))

(declare-fun arrayContainsKey!0 (array!13776 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276869 (= res!140897 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276870 () Bool)

(assert (=> b!276870 (= e!176816 e!176818)))

(declare-fun res!140894 () Bool)

(assert (=> b!276870 (=> (not res!140894) (not e!176818))))

(declare-datatypes ((SeekEntryResult!1706 0))(
  ( (MissingZero!1706 (index!8994 (_ BitVec 32))) (Found!1706 (index!8995 (_ BitVec 32))) (Intermediate!1706 (undefined!2518 Bool) (index!8996 (_ BitVec 32)) (x!27215 (_ BitVec 32))) (Undefined!1706) (MissingVacant!1706 (index!8997 (_ BitVec 32))) )
))
(declare-fun lt!137810 () SeekEntryResult!1706)

(assert (=> b!276870 (= res!140894 (or (= lt!137810 (MissingZero!1706 i!1267)) (= lt!137810 (MissingVacant!1706 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13776 (_ BitVec 32)) SeekEntryResult!1706)

(assert (=> b!276870 (= lt!137810 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26690 res!140898) b!276868))

(assert (= (and b!276868 res!140896) b!276865))

(assert (= (and b!276865 res!140895) b!276867))

(assert (= (and b!276867 res!140893) b!276869))

(assert (= (and b!276869 res!140897) b!276870))

(assert (= (and b!276870 res!140894) b!276866))

(declare-fun m!292133 () Bool)

(assert (=> b!276866 m!292133))

(declare-fun m!292135 () Bool)

(assert (=> b!276870 m!292135))

(declare-fun m!292137 () Bool)

(assert (=> b!276867 m!292137))

(declare-fun m!292139 () Bool)

(assert (=> b!276869 m!292139))

(declare-fun m!292141 () Bool)

(assert (=> start!26690 m!292141))

(declare-fun m!292143 () Bool)

(assert (=> start!26690 m!292143))

(declare-fun m!292145 () Bool)

(assert (=> b!276865 m!292145))

(push 1)

(assert (not b!276870))

(assert (not b!276869))

(assert (not b!276865))

(assert (not start!26690))

(assert (not b!276866))

(assert (not b!276867))

(check-sat)

(pop 1)

