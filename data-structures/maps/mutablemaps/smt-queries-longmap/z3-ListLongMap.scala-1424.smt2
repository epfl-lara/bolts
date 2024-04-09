; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27582 () Bool)

(assert start!27582)

(declare-fun b!284818 () Bool)

(declare-fun e!180623 () Bool)

(assert (=> b!284818 (= e!180623 false)))

(declare-fun lt!140666 () Bool)

(declare-datatypes ((array!14221 0))(
  ( (array!14222 (arr!6749 (Array (_ BitVec 32) (_ BitVec 64))) (size!7101 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14221)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14221 (_ BitVec 32)) Bool)

(assert (=> b!284818 (= lt!140666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!147367 () Bool)

(declare-fun e!180625 () Bool)

(assert (=> start!27582 (=> (not res!147367) (not e!180625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27582 (= res!147367 (validMask!0 mask!3868))))

(assert (=> start!27582 e!180625))

(declare-fun array_inv!4703 (array!14221) Bool)

(assert (=> start!27582 (array_inv!4703 a!3325)))

(assert (=> start!27582 true))

(declare-fun b!284819 () Bool)

(declare-fun res!147365 () Bool)

(assert (=> b!284819 (=> (not res!147365) (not e!180625))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14221 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284819 (= res!147365 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284820 () Bool)

(declare-fun res!147368 () Bool)

(assert (=> b!284820 (=> (not res!147368) (not e!180625))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284820 (= res!147368 (validKeyInArray!0 k0!2581))))

(declare-fun b!284821 () Bool)

(assert (=> b!284821 (= e!180625 e!180623)))

(declare-fun res!147366 () Bool)

(assert (=> b!284821 (=> (not res!147366) (not e!180623))))

(declare-datatypes ((SeekEntryResult!1918 0))(
  ( (MissingZero!1918 (index!9842 (_ BitVec 32))) (Found!1918 (index!9843 (_ BitVec 32))) (Intermediate!1918 (undefined!2730 Bool) (index!9844 (_ BitVec 32)) (x!28013 (_ BitVec 32))) (Undefined!1918) (MissingVacant!1918 (index!9845 (_ BitVec 32))) )
))
(declare-fun lt!140665 () SeekEntryResult!1918)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!284821 (= res!147366 (or (= lt!140665 (MissingZero!1918 i!1267)) (= lt!140665 (MissingVacant!1918 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14221 (_ BitVec 32)) SeekEntryResult!1918)

(assert (=> b!284821 (= lt!140665 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!284822 () Bool)

(declare-fun res!147369 () Bool)

(assert (=> b!284822 (=> (not res!147369) (not e!180625))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284822 (= res!147369 (and (= (size!7101 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7101 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7101 a!3325))))))

(declare-fun b!284823 () Bool)

(declare-fun res!147364 () Bool)

(assert (=> b!284823 (=> (not res!147364) (not e!180625))))

(declare-datatypes ((List!4578 0))(
  ( (Nil!4575) (Cons!4574 (h!5247 (_ BitVec 64)) (t!9668 List!4578)) )
))
(declare-fun arrayNoDuplicates!0 (array!14221 (_ BitVec 32) List!4578) Bool)

(assert (=> b!284823 (= res!147364 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4575))))

(assert (= (and start!27582 res!147367) b!284822))

(assert (= (and b!284822 res!147369) b!284820))

(assert (= (and b!284820 res!147368) b!284823))

(assert (= (and b!284823 res!147364) b!284819))

(assert (= (and b!284819 res!147365) b!284821))

(assert (= (and b!284821 res!147366) b!284818))

(declare-fun m!299781 () Bool)

(assert (=> start!27582 m!299781))

(declare-fun m!299783 () Bool)

(assert (=> start!27582 m!299783))

(declare-fun m!299785 () Bool)

(assert (=> b!284823 m!299785))

(declare-fun m!299787 () Bool)

(assert (=> b!284820 m!299787))

(declare-fun m!299789 () Bool)

(assert (=> b!284821 m!299789))

(declare-fun m!299791 () Bool)

(assert (=> b!284818 m!299791))

(declare-fun m!299793 () Bool)

(assert (=> b!284819 m!299793))

(check-sat (not b!284819) (not start!27582) (not b!284823) (not b!284821) (not b!284818) (not b!284820))
(check-sat)
