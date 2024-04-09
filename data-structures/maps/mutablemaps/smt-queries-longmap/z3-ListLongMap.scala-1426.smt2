; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27594 () Bool)

(assert start!27594)

(declare-fun b!284973 () Bool)

(declare-fun res!147524 () Bool)

(declare-fun e!180679 () Bool)

(assert (=> b!284973 (=> (not res!147524) (not e!180679))))

(declare-datatypes ((array!14233 0))(
  ( (array!14234 (arr!6755 (Array (_ BitVec 32) (_ BitVec 64))) (size!7107 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14233)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284973 (= res!147524 (and (= (size!7107 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7107 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7107 a!3325))))))

(declare-fun b!284974 () Bool)

(declare-fun e!180678 () Bool)

(assert (=> b!284974 (= e!180678 (not true))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14233 (_ BitVec 32)) Bool)

(assert (=> b!284974 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!14234 (store (arr!6755 a!3325) i!1267 k0!2581) (size!7107 a!3325)) mask!3868)))

(declare-datatypes ((Unit!9033 0))(
  ( (Unit!9034) )
))
(declare-fun lt!140692 () Unit!9033)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!14233 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9033)

(assert (=> b!284974 (= lt!140692 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!284975 () Bool)

(assert (=> b!284975 (= e!180679 e!180678)))

(declare-fun res!147523 () Bool)

(assert (=> b!284975 (=> (not res!147523) (not e!180678))))

(declare-datatypes ((SeekEntryResult!1924 0))(
  ( (MissingZero!1924 (index!9866 (_ BitVec 32))) (Found!1924 (index!9867 (_ BitVec 32))) (Intermediate!1924 (undefined!2736 Bool) (index!9868 (_ BitVec 32)) (x!28035 (_ BitVec 32))) (Undefined!1924) (MissingVacant!1924 (index!9869 (_ BitVec 32))) )
))
(declare-fun lt!140693 () SeekEntryResult!1924)

(assert (=> b!284975 (= res!147523 (or (= lt!140693 (MissingZero!1924 i!1267)) (= lt!140693 (MissingVacant!1924 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14233 (_ BitVec 32)) SeekEntryResult!1924)

(assert (=> b!284975 (= lt!140693 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!284976 () Bool)

(declare-fun res!147522 () Bool)

(assert (=> b!284976 (=> (not res!147522) (not e!180678))))

(assert (=> b!284976 (= res!147522 (not (= startIndex!26 i!1267)))))

(declare-fun b!284977 () Bool)

(declare-fun res!147525 () Bool)

(assert (=> b!284977 (=> (not res!147525) (not e!180679))))

(declare-datatypes ((List!4584 0))(
  ( (Nil!4581) (Cons!4580 (h!5253 (_ BitVec 64)) (t!9674 List!4584)) )
))
(declare-fun arrayNoDuplicates!0 (array!14233 (_ BitVec 32) List!4584) Bool)

(assert (=> b!284977 (= res!147525 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4581))))

(declare-fun b!284978 () Bool)

(declare-fun res!147528 () Bool)

(assert (=> b!284978 (=> (not res!147528) (not e!180678))))

(assert (=> b!284978 (= res!147528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284979 () Bool)

(declare-fun res!147527 () Bool)

(assert (=> b!284979 (=> (not res!147527) (not e!180678))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284979 (= res!147527 (not (validKeyInArray!0 (select (arr!6755 a!3325) startIndex!26))))))

(declare-fun b!284980 () Bool)

(declare-fun res!147521 () Bool)

(assert (=> b!284980 (=> (not res!147521) (not e!180679))))

(assert (=> b!284980 (= res!147521 (validKeyInArray!0 k0!2581))))

(declare-fun b!284981 () Bool)

(declare-fun res!147520 () Bool)

(assert (=> b!284981 (=> (not res!147520) (not e!180678))))

(assert (=> b!284981 (= res!147520 (and (bvslt startIndex!26 (bvsub (size!7107 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!284982 () Bool)

(declare-fun res!147519 () Bool)

(assert (=> b!284982 (=> (not res!147519) (not e!180679))))

(declare-fun arrayContainsKey!0 (array!14233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284982 (= res!147519 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!147526 () Bool)

(assert (=> start!27594 (=> (not res!147526) (not e!180679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27594 (= res!147526 (validMask!0 mask!3868))))

(assert (=> start!27594 e!180679))

(declare-fun array_inv!4709 (array!14233) Bool)

(assert (=> start!27594 (array_inv!4709 a!3325)))

(assert (=> start!27594 true))

(assert (= (and start!27594 res!147526) b!284973))

(assert (= (and b!284973 res!147524) b!284980))

(assert (= (and b!284980 res!147521) b!284977))

(assert (= (and b!284977 res!147525) b!284982))

(assert (= (and b!284982 res!147519) b!284975))

(assert (= (and b!284975 res!147523) b!284978))

(assert (= (and b!284978 res!147528) b!284976))

(assert (= (and b!284976 res!147522) b!284979))

(assert (= (and b!284979 res!147527) b!284981))

(assert (= (and b!284981 res!147520) b!284974))

(declare-fun m!299887 () Bool)

(assert (=> b!284982 m!299887))

(declare-fun m!299889 () Bool)

(assert (=> b!284975 m!299889))

(declare-fun m!299891 () Bool)

(assert (=> b!284974 m!299891))

(declare-fun m!299893 () Bool)

(assert (=> b!284974 m!299893))

(declare-fun m!299895 () Bool)

(assert (=> b!284974 m!299895))

(declare-fun m!299897 () Bool)

(assert (=> b!284977 m!299897))

(declare-fun m!299899 () Bool)

(assert (=> b!284980 m!299899))

(declare-fun m!299901 () Bool)

(assert (=> start!27594 m!299901))

(declare-fun m!299903 () Bool)

(assert (=> start!27594 m!299903))

(declare-fun m!299905 () Bool)

(assert (=> b!284979 m!299905))

(assert (=> b!284979 m!299905))

(declare-fun m!299907 () Bool)

(assert (=> b!284979 m!299907))

(declare-fun m!299909 () Bool)

(assert (=> b!284978 m!299909))

(check-sat (not b!284974) (not start!27594) (not b!284977) (not b!284980) (not b!284975) (not b!284982) (not b!284979) (not b!284978))
(check-sat)
