; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26922 () Bool)

(assert start!26922)

(declare-fun b!278881 () Bool)

(declare-fun e!177850 () Bool)

(declare-fun e!177849 () Bool)

(assert (=> b!278881 (= e!177850 e!177849)))

(declare-fun res!142265 () Bool)

(assert (=> b!278881 (=> (not res!142265) (not e!177849))))

(declare-datatypes ((SeekEntryResult!1753 0))(
  ( (MissingZero!1753 (index!9182 (_ BitVec 32))) (Found!1753 (index!9183 (_ BitVec 32))) (Intermediate!1753 (undefined!2565 Bool) (index!9184 (_ BitVec 32)) (x!27399 (_ BitVec 32))) (Undefined!1753) (MissingVacant!1753 (index!9185 (_ BitVec 32))) )
))
(declare-fun lt!138536 () SeekEntryResult!1753)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!278881 (= res!142265 (or (= lt!138536 (MissingZero!1753 i!1267)) (= lt!138536 (MissingVacant!1753 i!1267))))))

(declare-datatypes ((array!13876 0))(
  ( (array!13877 (arr!6584 (Array (_ BitVec 32) (_ BitVec 64))) (size!6936 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13876)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13876 (_ BitVec 32)) SeekEntryResult!1753)

(assert (=> b!278881 (= lt!138536 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!142261 () Bool)

(assert (=> start!26922 (=> (not res!142261) (not e!177850))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26922 (= res!142261 (validMask!0 mask!3868))))

(assert (=> start!26922 e!177850))

(declare-fun array_inv!4538 (array!13876) Bool)

(assert (=> start!26922 (array_inv!4538 a!3325)))

(assert (=> start!26922 true))

(declare-fun b!278882 () Bool)

(declare-fun res!142258 () Bool)

(assert (=> b!278882 (=> (not res!142258) (not e!177849))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!278882 (= res!142258 (not (= startIndex!26 i!1267)))))

(declare-fun b!278883 () Bool)

(declare-fun res!142266 () Bool)

(assert (=> b!278883 (=> (not res!142266) (not e!177849))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!278883 (= res!142266 (validKeyInArray!0 (select (arr!6584 a!3325) startIndex!26)))))

(declare-fun b!278884 () Bool)

(assert (=> b!278884 (= e!177849 (and (bvslt (size!6936 a!3325) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!6936 a!3325))))))

(declare-fun b!278885 () Bool)

(declare-fun res!142262 () Bool)

(assert (=> b!278885 (=> (not res!142262) (not e!177850))))

(assert (=> b!278885 (= res!142262 (and (= (size!6936 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6936 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6936 a!3325))))))

(declare-fun b!278886 () Bool)

(declare-fun res!142264 () Bool)

(assert (=> b!278886 (=> (not res!142264) (not e!177849))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13876 (_ BitVec 32)) Bool)

(assert (=> b!278886 (= res!142264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!278887 () Bool)

(declare-fun res!142263 () Bool)

(assert (=> b!278887 (=> (not res!142263) (not e!177850))))

(declare-datatypes ((List!4413 0))(
  ( (Nil!4410) (Cons!4409 (h!5079 (_ BitVec 64)) (t!9503 List!4413)) )
))
(declare-fun arrayNoDuplicates!0 (array!13876 (_ BitVec 32) List!4413) Bool)

(assert (=> b!278887 (= res!142263 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4410))))

(declare-fun b!278888 () Bool)

(declare-fun res!142260 () Bool)

(assert (=> b!278888 (=> (not res!142260) (not e!177850))))

(assert (=> b!278888 (= res!142260 (validKeyInArray!0 k0!2581))))

(declare-fun b!278889 () Bool)

(declare-fun res!142259 () Bool)

(assert (=> b!278889 (=> (not res!142259) (not e!177850))))

(declare-fun arrayContainsKey!0 (array!13876 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!278889 (= res!142259 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26922 res!142261) b!278885))

(assert (= (and b!278885 res!142262) b!278888))

(assert (= (and b!278888 res!142260) b!278887))

(assert (= (and b!278887 res!142263) b!278889))

(assert (= (and b!278889 res!142259) b!278881))

(assert (= (and b!278881 res!142265) b!278886))

(assert (= (and b!278886 res!142264) b!278882))

(assert (= (and b!278882 res!142258) b!278883))

(assert (= (and b!278883 res!142266) b!278884))

(declare-fun m!293845 () Bool)

(assert (=> b!278887 m!293845))

(declare-fun m!293847 () Bool)

(assert (=> b!278881 m!293847))

(declare-fun m!293849 () Bool)

(assert (=> b!278883 m!293849))

(assert (=> b!278883 m!293849))

(declare-fun m!293851 () Bool)

(assert (=> b!278883 m!293851))

(declare-fun m!293853 () Bool)

(assert (=> b!278886 m!293853))

(declare-fun m!293855 () Bool)

(assert (=> start!26922 m!293855))

(declare-fun m!293857 () Bool)

(assert (=> start!26922 m!293857))

(declare-fun m!293859 () Bool)

(assert (=> b!278889 m!293859))

(declare-fun m!293861 () Bool)

(assert (=> b!278888 m!293861))

(check-sat (not b!278889) (not start!26922) (not b!278888) (not b!278887) (not b!278886) (not b!278881) (not b!278883))
(check-sat)
