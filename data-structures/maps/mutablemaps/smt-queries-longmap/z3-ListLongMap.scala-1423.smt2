; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27576 () Bool)

(assert start!27576)

(declare-fun b!284764 () Bool)

(declare-fun res!147314 () Bool)

(declare-fun e!180597 () Bool)

(assert (=> b!284764 (=> (not res!147314) (not e!180597))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284764 (= res!147314 (validKeyInArray!0 k0!2581))))

(declare-fun b!284765 () Bool)

(declare-fun e!180596 () Bool)

(assert (=> b!284765 (= e!180597 e!180596)))

(declare-fun res!147313 () Bool)

(assert (=> b!284765 (=> (not res!147313) (not e!180596))))

(declare-datatypes ((SeekEntryResult!1915 0))(
  ( (MissingZero!1915 (index!9830 (_ BitVec 32))) (Found!1915 (index!9831 (_ BitVec 32))) (Intermediate!1915 (undefined!2727 Bool) (index!9832 (_ BitVec 32)) (x!28002 (_ BitVec 32))) (Undefined!1915) (MissingVacant!1915 (index!9833 (_ BitVec 32))) )
))
(declare-fun lt!140647 () SeekEntryResult!1915)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!284765 (= res!147313 (or (= lt!140647 (MissingZero!1915 i!1267)) (= lt!140647 (MissingVacant!1915 i!1267))))))

(declare-datatypes ((array!14215 0))(
  ( (array!14216 (arr!6746 (Array (_ BitVec 32) (_ BitVec 64))) (size!7098 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14215)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14215 (_ BitVec 32)) SeekEntryResult!1915)

(assert (=> b!284765 (= lt!140647 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!284766 () Bool)

(declare-fun res!147315 () Bool)

(assert (=> b!284766 (=> (not res!147315) (not e!180597))))

(declare-datatypes ((List!4575 0))(
  ( (Nil!4572) (Cons!4571 (h!5244 (_ BitVec 64)) (t!9665 List!4575)) )
))
(declare-fun arrayNoDuplicates!0 (array!14215 (_ BitVec 32) List!4575) Bool)

(assert (=> b!284766 (= res!147315 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4572))))

(declare-fun b!284767 () Bool)

(declare-fun res!147312 () Bool)

(assert (=> b!284767 (=> (not res!147312) (not e!180597))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284767 (= res!147312 (and (= (size!7098 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7098 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7098 a!3325))))))

(declare-fun res!147311 () Bool)

(assert (=> start!27576 (=> (not res!147311) (not e!180597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27576 (= res!147311 (validMask!0 mask!3868))))

(assert (=> start!27576 e!180597))

(declare-fun array_inv!4700 (array!14215) Bool)

(assert (=> start!27576 (array_inv!4700 a!3325)))

(assert (=> start!27576 true))

(declare-fun b!284768 () Bool)

(assert (=> b!284768 (= e!180596 false)))

(declare-fun lt!140648 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14215 (_ BitVec 32)) Bool)

(assert (=> b!284768 (= lt!140648 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284769 () Bool)

(declare-fun res!147310 () Bool)

(assert (=> b!284769 (=> (not res!147310) (not e!180597))))

(declare-fun arrayContainsKey!0 (array!14215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284769 (= res!147310 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!27576 res!147311) b!284767))

(assert (= (and b!284767 res!147312) b!284764))

(assert (= (and b!284764 res!147314) b!284766))

(assert (= (and b!284766 res!147315) b!284769))

(assert (= (and b!284769 res!147310) b!284765))

(assert (= (and b!284765 res!147313) b!284768))

(declare-fun m!299739 () Bool)

(assert (=> start!27576 m!299739))

(declare-fun m!299741 () Bool)

(assert (=> start!27576 m!299741))

(declare-fun m!299743 () Bool)

(assert (=> b!284769 m!299743))

(declare-fun m!299745 () Bool)

(assert (=> b!284766 m!299745))

(declare-fun m!299747 () Bool)

(assert (=> b!284764 m!299747))

(declare-fun m!299749 () Bool)

(assert (=> b!284765 m!299749))

(declare-fun m!299751 () Bool)

(assert (=> b!284768 m!299751))

(check-sat (not b!284765) (not start!27576) (not b!284764) (not b!284766) (not b!284768) (not b!284769))
(check-sat)
