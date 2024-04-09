; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27588 () Bool)

(assert start!27588)

(declare-fun b!284887 () Bool)

(declare-fun e!180651 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!14227 0))(
  ( (array!14228 (arr!6752 (Array (_ BitVec 32) (_ BitVec 64))) (size!7104 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14227)

(assert (=> b!284887 (= e!180651 (and (bvslt startIndex!26 (bvsub (size!7104 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000) (bvsge (bvsub (size!7104 a!3325) (bvadd #b00000000000000000000000000000001 startIndex!26)) (bvsub (size!7104 a!3325) startIndex!26))))))

(declare-fun b!284888 () Bool)

(declare-fun e!180652 () Bool)

(assert (=> b!284888 (= e!180652 e!180651)))

(declare-fun res!147436 () Bool)

(assert (=> b!284888 (=> (not res!147436) (not e!180651))))

(declare-datatypes ((SeekEntryResult!1921 0))(
  ( (MissingZero!1921 (index!9854 (_ BitVec 32))) (Found!1921 (index!9855 (_ BitVec 32))) (Intermediate!1921 (undefined!2733 Bool) (index!9856 (_ BitVec 32)) (x!28024 (_ BitVec 32))) (Undefined!1921) (MissingVacant!1921 (index!9857 (_ BitVec 32))) )
))
(declare-fun lt!140678 () SeekEntryResult!1921)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!284888 (= res!147436 (or (= lt!140678 (MissingZero!1921 i!1267)) (= lt!140678 (MissingVacant!1921 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14227 (_ BitVec 32)) SeekEntryResult!1921)

(assert (=> b!284888 (= lt!140678 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!284889 () Bool)

(declare-fun res!147439 () Bool)

(assert (=> b!284889 (=> (not res!147439) (not e!180652))))

(assert (=> b!284889 (= res!147439 (and (= (size!7104 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7104 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7104 a!3325))))))

(declare-fun b!284890 () Bool)

(declare-fun res!147438 () Bool)

(assert (=> b!284890 (=> (not res!147438) (not e!180652))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284890 (= res!147438 (validKeyInArray!0 k0!2581))))

(declare-fun res!147440 () Bool)

(assert (=> start!27588 (=> (not res!147440) (not e!180652))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27588 (= res!147440 (validMask!0 mask!3868))))

(assert (=> start!27588 e!180652))

(declare-fun array_inv!4706 (array!14227) Bool)

(assert (=> start!27588 (array_inv!4706 a!3325)))

(assert (=> start!27588 true))

(declare-fun b!284891 () Bool)

(declare-fun res!147434 () Bool)

(assert (=> b!284891 (=> (not res!147434) (not e!180651))))

(assert (=> b!284891 (= res!147434 (not (validKeyInArray!0 (select (arr!6752 a!3325) startIndex!26))))))

(declare-fun b!284892 () Bool)

(declare-fun res!147441 () Bool)

(assert (=> b!284892 (=> (not res!147441) (not e!180652))))

(declare-datatypes ((List!4581 0))(
  ( (Nil!4578) (Cons!4577 (h!5250 (_ BitVec 64)) (t!9671 List!4581)) )
))
(declare-fun arrayNoDuplicates!0 (array!14227 (_ BitVec 32) List!4581) Bool)

(assert (=> b!284892 (= res!147441 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4578))))

(declare-fun b!284893 () Bool)

(declare-fun res!147433 () Bool)

(assert (=> b!284893 (=> (not res!147433) (not e!180651))))

(assert (=> b!284893 (= res!147433 (not (= startIndex!26 i!1267)))))

(declare-fun b!284894 () Bool)

(declare-fun res!147435 () Bool)

(assert (=> b!284894 (=> (not res!147435) (not e!180651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14227 (_ BitVec 32)) Bool)

(assert (=> b!284894 (= res!147435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284895 () Bool)

(declare-fun res!147437 () Bool)

(assert (=> b!284895 (=> (not res!147437) (not e!180652))))

(declare-fun arrayContainsKey!0 (array!14227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284895 (= res!147437 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!27588 res!147440) b!284889))

(assert (= (and b!284889 res!147439) b!284890))

(assert (= (and b!284890 res!147438) b!284892))

(assert (= (and b!284892 res!147441) b!284895))

(assert (= (and b!284895 res!147437) b!284888))

(assert (= (and b!284888 res!147436) b!284894))

(assert (= (and b!284894 res!147435) b!284893))

(assert (= (and b!284893 res!147433) b!284891))

(assert (= (and b!284891 res!147434) b!284887))

(declare-fun m!299827 () Bool)

(assert (=> b!284891 m!299827))

(assert (=> b!284891 m!299827))

(declare-fun m!299829 () Bool)

(assert (=> b!284891 m!299829))

(declare-fun m!299831 () Bool)

(assert (=> b!284890 m!299831))

(declare-fun m!299833 () Bool)

(assert (=> b!284888 m!299833))

(declare-fun m!299835 () Bool)

(assert (=> b!284894 m!299835))

(declare-fun m!299837 () Bool)

(assert (=> b!284892 m!299837))

(declare-fun m!299839 () Bool)

(assert (=> start!27588 m!299839))

(declare-fun m!299841 () Bool)

(assert (=> start!27588 m!299841))

(declare-fun m!299843 () Bool)

(assert (=> b!284895 m!299843))

(check-sat (not b!284888) (not b!284892) (not b!284891) (not b!284894) (not b!284895) (not b!284890) (not start!27588))
(check-sat)
