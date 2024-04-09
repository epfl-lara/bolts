; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27572 () Bool)

(assert start!27572)

(declare-fun b!284728 () Bool)

(declare-fun res!147277 () Bool)

(declare-fun e!180579 () Bool)

(assert (=> b!284728 (=> (not res!147277) (not e!180579))))

(declare-datatypes ((array!14211 0))(
  ( (array!14212 (arr!6744 (Array (_ BitVec 32) (_ BitVec 64))) (size!7096 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14211)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14211 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284728 (= res!147277 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284729 () Bool)

(declare-fun res!147278 () Bool)

(assert (=> b!284729 (=> (not res!147278) (not e!180579))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284729 (= res!147278 (and (= (size!7096 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7096 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7096 a!3325))))))

(declare-fun res!147274 () Bool)

(assert (=> start!27572 (=> (not res!147274) (not e!180579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27572 (= res!147274 (validMask!0 mask!3868))))

(assert (=> start!27572 e!180579))

(declare-fun array_inv!4698 (array!14211) Bool)

(assert (=> start!27572 (array_inv!4698 a!3325)))

(assert (=> start!27572 true))

(declare-fun b!284730 () Bool)

(declare-fun e!180578 () Bool)

(assert (=> b!284730 (= e!180579 e!180578)))

(declare-fun res!147279 () Bool)

(assert (=> b!284730 (=> (not res!147279) (not e!180578))))

(declare-datatypes ((SeekEntryResult!1913 0))(
  ( (MissingZero!1913 (index!9822 (_ BitVec 32))) (Found!1913 (index!9823 (_ BitVec 32))) (Intermediate!1913 (undefined!2725 Bool) (index!9824 (_ BitVec 32)) (x!27992 (_ BitVec 32))) (Undefined!1913) (MissingVacant!1913 (index!9825 (_ BitVec 32))) )
))
(declare-fun lt!140635 () SeekEntryResult!1913)

(assert (=> b!284730 (= res!147279 (or (= lt!140635 (MissingZero!1913 i!1267)) (= lt!140635 (MissingVacant!1913 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14211 (_ BitVec 32)) SeekEntryResult!1913)

(assert (=> b!284730 (= lt!140635 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284731 () Bool)

(declare-fun res!147275 () Bool)

(assert (=> b!284731 (=> (not res!147275) (not e!180579))))

(declare-datatypes ((List!4573 0))(
  ( (Nil!4570) (Cons!4569 (h!5242 (_ BitVec 64)) (t!9663 List!4573)) )
))
(declare-fun arrayNoDuplicates!0 (array!14211 (_ BitVec 32) List!4573) Bool)

(assert (=> b!284731 (= res!147275 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4570))))

(declare-fun b!284732 () Bool)

(declare-fun res!147276 () Bool)

(assert (=> b!284732 (=> (not res!147276) (not e!180579))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284732 (= res!147276 (validKeyInArray!0 k!2581))))

(declare-fun b!284733 () Bool)

(assert (=> b!284733 (= e!180578 false)))

(declare-fun lt!140636 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14211 (_ BitVec 32)) Bool)

(assert (=> b!284733 (= lt!140636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!27572 res!147274) b!284729))

(assert (= (and b!284729 res!147278) b!284732))

(assert (= (and b!284732 res!147276) b!284731))

(assert (= (and b!284731 res!147275) b!284728))

(assert (= (and b!284728 res!147277) b!284730))

(assert (= (and b!284730 res!147279) b!284733))

(declare-fun m!299711 () Bool)

(assert (=> b!284731 m!299711))

(declare-fun m!299713 () Bool)

(assert (=> start!27572 m!299713))

(declare-fun m!299715 () Bool)

(assert (=> start!27572 m!299715))

(declare-fun m!299717 () Bool)

(assert (=> b!284732 m!299717))

(declare-fun m!299719 () Bool)

(assert (=> b!284733 m!299719))

(declare-fun m!299721 () Bool)

(assert (=> b!284728 m!299721))

(declare-fun m!299723 () Bool)

(assert (=> b!284730 m!299723))

(push 1)

