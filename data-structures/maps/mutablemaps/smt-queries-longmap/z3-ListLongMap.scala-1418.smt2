; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27546 () Bool)

(assert start!27546)

(declare-fun b!284494 () Bool)

(declare-fun res!147042 () Bool)

(declare-fun e!180461 () Bool)

(assert (=> b!284494 (=> (not res!147042) (not e!180461))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284494 (= res!147042 (validKeyInArray!0 k0!2581))))

(declare-fun b!284496 () Bool)

(declare-fun res!147040 () Bool)

(assert (=> b!284496 (=> (not res!147040) (not e!180461))))

(declare-datatypes ((array!14185 0))(
  ( (array!14186 (arr!6731 (Array (_ BitVec 32) (_ BitVec 64))) (size!7083 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14185)

(declare-fun arrayContainsKey!0 (array!14185 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284496 (= res!147040 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284497 () Bool)

(declare-fun res!147044 () Bool)

(assert (=> b!284497 (=> (not res!147044) (not e!180461))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284497 (= res!147044 (and (= (size!7083 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7083 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7083 a!3325))))))

(declare-fun res!147045 () Bool)

(assert (=> start!27546 (=> (not res!147045) (not e!180461))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27546 (= res!147045 (validMask!0 mask!3868))))

(assert (=> start!27546 e!180461))

(declare-fun array_inv!4685 (array!14185) Bool)

(assert (=> start!27546 (array_inv!4685 a!3325)))

(assert (=> start!27546 true))

(declare-fun b!284495 () Bool)

(declare-fun res!147043 () Bool)

(assert (=> b!284495 (=> (not res!147043) (not e!180461))))

(declare-datatypes ((List!4560 0))(
  ( (Nil!4557) (Cons!4556 (h!5229 (_ BitVec 64)) (t!9650 List!4560)) )
))
(declare-fun arrayNoDuplicates!0 (array!14185 (_ BitVec 32) List!4560) Bool)

(assert (=> b!284495 (= res!147043 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4557))))

(declare-fun b!284498 () Bool)

(declare-fun e!180462 () Bool)

(assert (=> b!284498 (= e!180462 false)))

(declare-fun lt!140558 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14185 (_ BitVec 32)) Bool)

(assert (=> b!284498 (= lt!140558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284499 () Bool)

(assert (=> b!284499 (= e!180461 e!180462)))

(declare-fun res!147041 () Bool)

(assert (=> b!284499 (=> (not res!147041) (not e!180462))))

(declare-datatypes ((SeekEntryResult!1900 0))(
  ( (MissingZero!1900 (index!9770 (_ BitVec 32))) (Found!1900 (index!9771 (_ BitVec 32))) (Intermediate!1900 (undefined!2712 Bool) (index!9772 (_ BitVec 32)) (x!27947 (_ BitVec 32))) (Undefined!1900) (MissingVacant!1900 (index!9773 (_ BitVec 32))) )
))
(declare-fun lt!140557 () SeekEntryResult!1900)

(assert (=> b!284499 (= res!147041 (or (= lt!140557 (MissingZero!1900 i!1267)) (= lt!140557 (MissingVacant!1900 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14185 (_ BitVec 32)) SeekEntryResult!1900)

(assert (=> b!284499 (= lt!140557 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(assert (= (and start!27546 res!147045) b!284497))

(assert (= (and b!284497 res!147044) b!284494))

(assert (= (and b!284494 res!147042) b!284495))

(assert (= (and b!284495 res!147043) b!284496))

(assert (= (and b!284496 res!147040) b!284499))

(assert (= (and b!284499 res!147041) b!284498))

(declare-fun m!299529 () Bool)

(assert (=> start!27546 m!299529))

(declare-fun m!299531 () Bool)

(assert (=> start!27546 m!299531))

(declare-fun m!299533 () Bool)

(assert (=> b!284494 m!299533))

(declare-fun m!299535 () Bool)

(assert (=> b!284499 m!299535))

(declare-fun m!299537 () Bool)

(assert (=> b!284496 m!299537))

(declare-fun m!299539 () Bool)

(assert (=> b!284498 m!299539))

(declare-fun m!299541 () Bool)

(assert (=> b!284495 m!299541))

(check-sat (not b!284496) (not b!284498) (not b!284494) (not b!284495) (not start!27546) (not b!284499))
(check-sat)
