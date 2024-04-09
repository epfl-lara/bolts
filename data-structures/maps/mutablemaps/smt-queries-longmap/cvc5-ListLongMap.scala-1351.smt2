; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26674 () Bool)

(assert start!26674)

(declare-fun b!276721 () Bool)

(declare-fun res!140749 () Bool)

(declare-fun e!176744 () Bool)

(assert (=> b!276721 (=> (not res!140749) (not e!176744))))

(declare-datatypes ((array!13760 0))(
  ( (array!13761 (arr!6529 (Array (_ BitVec 32) (_ BitVec 64))) (size!6881 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13760)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13760 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276721 (= res!140749 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276722 () Bool)

(declare-fun res!140753 () Bool)

(assert (=> b!276722 (=> (not res!140753) (not e!176744))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276722 (= res!140753 (validKeyInArray!0 k!2581))))

(declare-fun b!276723 () Bool)

(declare-fun res!140751 () Bool)

(assert (=> b!276723 (=> (not res!140751) (not e!176744))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!276723 (= res!140751 (and (= (size!6881 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6881 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6881 a!3325))))))

(declare-fun b!276724 () Bool)

(declare-fun res!140752 () Bool)

(assert (=> b!276724 (=> (not res!140752) (not e!176744))))

(declare-datatypes ((List!4358 0))(
  ( (Nil!4355) (Cons!4354 (h!5021 (_ BitVec 64)) (t!9448 List!4358)) )
))
(declare-fun arrayNoDuplicates!0 (array!13760 (_ BitVec 32) List!4358) Bool)

(assert (=> b!276724 (= res!140752 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4355))))

(declare-fun b!276725 () Bool)

(declare-fun e!176746 () Bool)

(assert (=> b!276725 (= e!176744 e!176746)))

(declare-fun res!140750 () Bool)

(assert (=> b!276725 (=> (not res!140750) (not e!176746))))

(declare-datatypes ((SeekEntryResult!1698 0))(
  ( (MissingZero!1698 (index!8962 (_ BitVec 32))) (Found!1698 (index!8963 (_ BitVec 32))) (Intermediate!1698 (undefined!2510 Bool) (index!8964 (_ BitVec 32)) (x!27191 (_ BitVec 32))) (Undefined!1698) (MissingVacant!1698 (index!8965 (_ BitVec 32))) )
))
(declare-fun lt!137762 () SeekEntryResult!1698)

(assert (=> b!276725 (= res!140750 (or (= lt!137762 (MissingZero!1698 i!1267)) (= lt!137762 (MissingVacant!1698 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13760 (_ BitVec 32)) SeekEntryResult!1698)

(assert (=> b!276725 (= lt!137762 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276726 () Bool)

(assert (=> b!276726 (= e!176746 false)))

(declare-fun lt!137761 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13760 (_ BitVec 32)) Bool)

(assert (=> b!276726 (= lt!137761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!140754 () Bool)

(assert (=> start!26674 (=> (not res!140754) (not e!176744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26674 (= res!140754 (validMask!0 mask!3868))))

(assert (=> start!26674 e!176744))

(declare-fun array_inv!4483 (array!13760) Bool)

(assert (=> start!26674 (array_inv!4483 a!3325)))

(assert (=> start!26674 true))

(assert (= (and start!26674 res!140754) b!276723))

(assert (= (and b!276723 res!140751) b!276722))

(assert (= (and b!276722 res!140753) b!276724))

(assert (= (and b!276724 res!140752) b!276721))

(assert (= (and b!276721 res!140749) b!276725))

(assert (= (and b!276725 res!140750) b!276726))

(declare-fun m!292021 () Bool)

(assert (=> b!276725 m!292021))

(declare-fun m!292023 () Bool)

(assert (=> b!276724 m!292023))

(declare-fun m!292025 () Bool)

(assert (=> start!26674 m!292025))

(declare-fun m!292027 () Bool)

(assert (=> start!26674 m!292027))

(declare-fun m!292029 () Bool)

(assert (=> b!276721 m!292029))

(declare-fun m!292031 () Bool)

(assert (=> b!276722 m!292031))

(declare-fun m!292033 () Bool)

(assert (=> b!276726 m!292033))

(push 1)

(assert (not start!26674))

