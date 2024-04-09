; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27592 () Bool)

(assert start!27592)

(declare-fun b!284943 () Bool)

(declare-fun res!147490 () Bool)

(declare-fun e!180670 () Bool)

(assert (=> b!284943 (=> (not res!147490) (not e!180670))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!284943 (= res!147490 (not (= startIndex!26 i!1267)))))

(declare-fun b!284944 () Bool)

(declare-fun res!147497 () Bool)

(declare-fun e!180668 () Bool)

(assert (=> b!284944 (=> (not res!147497) (not e!180668))))

(declare-datatypes ((array!14231 0))(
  ( (array!14232 (arr!6754 (Array (_ BitVec 32) (_ BitVec 64))) (size!7106 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14231)

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284944 (= res!147497 (and (= (size!7106 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7106 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7106 a!3325))))))

(declare-fun b!284945 () Bool)

(declare-fun res!147495 () Bool)

(assert (=> b!284945 (=> (not res!147495) (not e!180668))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284945 (= res!147495 (validKeyInArray!0 k!2581))))

(declare-fun b!284946 () Bool)

(declare-fun res!147493 () Bool)

(assert (=> b!284946 (=> (not res!147493) (not e!180670))))

(assert (=> b!284946 (= res!147493 (not (validKeyInArray!0 (select (arr!6754 a!3325) startIndex!26))))))

(declare-fun b!284947 () Bool)

(declare-fun res!147492 () Bool)

(assert (=> b!284947 (=> (not res!147492) (not e!180670))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14231 (_ BitVec 32)) Bool)

(assert (=> b!284947 (= res!147492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284948 () Bool)

(declare-fun res!147491 () Bool)

(assert (=> b!284948 (=> (not res!147491) (not e!180670))))

(assert (=> b!284948 (= res!147491 (and (bvslt startIndex!26 (bvsub (size!7106 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun res!147494 () Bool)

(assert (=> start!27592 (=> (not res!147494) (not e!180668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27592 (= res!147494 (validMask!0 mask!3868))))

(assert (=> start!27592 e!180668))

(declare-fun array_inv!4708 (array!14231) Bool)

(assert (=> start!27592 (array_inv!4708 a!3325)))

(assert (=> start!27592 true))

(declare-fun b!284949 () Bool)

(assert (=> b!284949 (= e!180668 e!180670)))

(declare-fun res!147496 () Bool)

(assert (=> b!284949 (=> (not res!147496) (not e!180670))))

(declare-datatypes ((SeekEntryResult!1923 0))(
  ( (MissingZero!1923 (index!9862 (_ BitVec 32))) (Found!1923 (index!9863 (_ BitVec 32))) (Intermediate!1923 (undefined!2735 Bool) (index!9864 (_ BitVec 32)) (x!28034 (_ BitVec 32))) (Undefined!1923) (MissingVacant!1923 (index!9865 (_ BitVec 32))) )
))
(declare-fun lt!140687 () SeekEntryResult!1923)

(assert (=> b!284949 (= res!147496 (or (= lt!140687 (MissingZero!1923 i!1267)) (= lt!140687 (MissingVacant!1923 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14231 (_ BitVec 32)) SeekEntryResult!1923)

(assert (=> b!284949 (= lt!140687 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284950 () Bool)

(assert (=> b!284950 (= e!180670 (not true))))

(assert (=> b!284950 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!14232 (store (arr!6754 a!3325) i!1267 k!2581) (size!7106 a!3325)) mask!3868)))

(declare-datatypes ((Unit!9031 0))(
  ( (Unit!9032) )
))
(declare-fun lt!140686 () Unit!9031)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!14231 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9031)

(assert (=> b!284950 (= lt!140686 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!284951 () Bool)

(declare-fun res!147498 () Bool)

(assert (=> b!284951 (=> (not res!147498) (not e!180668))))

(declare-fun arrayContainsKey!0 (array!14231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284951 (= res!147498 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284952 () Bool)

(declare-fun res!147489 () Bool)

(assert (=> b!284952 (=> (not res!147489) (not e!180668))))

(declare-datatypes ((List!4583 0))(
  ( (Nil!4580) (Cons!4579 (h!5252 (_ BitVec 64)) (t!9673 List!4583)) )
))
(declare-fun arrayNoDuplicates!0 (array!14231 (_ BitVec 32) List!4583) Bool)

(assert (=> b!284952 (= res!147489 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4580))))

(assert (= (and start!27592 res!147494) b!284944))

(assert (= (and b!284944 res!147497) b!284945))

(assert (= (and b!284945 res!147495) b!284952))

(assert (= (and b!284952 res!147489) b!284951))

(assert (= (and b!284951 res!147498) b!284949))

(assert (= (and b!284949 res!147496) b!284947))

(assert (= (and b!284947 res!147492) b!284943))

(assert (= (and b!284943 res!147490) b!284946))

(assert (= (and b!284946 res!147493) b!284948))

(assert (= (and b!284948 res!147491) b!284950))

(declare-fun m!299863 () Bool)

(assert (=> start!27592 m!299863))

(declare-fun m!299865 () Bool)

(assert (=> start!27592 m!299865))

(declare-fun m!299867 () Bool)

(assert (=> b!284946 m!299867))

(assert (=> b!284946 m!299867))

(declare-fun m!299869 () Bool)

(assert (=> b!284946 m!299869))

(declare-fun m!299871 () Bool)

(assert (=> b!284947 m!299871))

(declare-fun m!299873 () Bool)

(assert (=> b!284951 m!299873))

(declare-fun m!299875 () Bool)

(assert (=> b!284952 m!299875))

(declare-fun m!299877 () Bool)

(assert (=> b!284945 m!299877))

(declare-fun m!299879 () Bool)

(assert (=> b!284950 m!299879))

(declare-fun m!299881 () Bool)

(assert (=> b!284950 m!299881))

(declare-fun m!299883 () Bool)

(assert (=> b!284950 m!299883))

(declare-fun m!299885 () Bool)

(assert (=> b!284949 m!299885))

(push 1)

