; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27518 () Bool)

(assert start!27518)

(declare-fun b!284215 () Bool)

(declare-fun res!146765 () Bool)

(declare-fun e!180335 () Bool)

(assert (=> b!284215 (=> (not res!146765) (not e!180335))))

(declare-datatypes ((array!14157 0))(
  ( (array!14158 (arr!6717 (Array (_ BitVec 32) (_ BitVec 64))) (size!7069 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14157)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284215 (= res!146765 (and (= (size!7069 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7069 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7069 a!3325))))))

(declare-fun b!284216 () Bool)

(declare-fun res!146764 () Bool)

(assert (=> b!284216 (=> (not res!146764) (not e!180335))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284216 (= res!146764 (validKeyInArray!0 k!2581))))

(declare-fun res!146762 () Bool)

(assert (=> start!27518 (=> (not res!146762) (not e!180335))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27518 (= res!146762 (validMask!0 mask!3868))))

(assert (=> start!27518 e!180335))

(declare-fun array_inv!4671 (array!14157) Bool)

(assert (=> start!27518 (array_inv!4671 a!3325)))

(assert (=> start!27518 true))

(declare-fun b!284217 () Bool)

(declare-fun e!180336 () Bool)

(assert (=> b!284217 (= e!180336 false)))

(declare-fun lt!140482 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14157 (_ BitVec 32)) Bool)

(assert (=> b!284217 (= lt!140482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284218 () Bool)

(declare-fun res!146761 () Bool)

(assert (=> b!284218 (=> (not res!146761) (not e!180335))))

(declare-fun arrayContainsKey!0 (array!14157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284218 (= res!146761 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284219 () Bool)

(assert (=> b!284219 (= e!180335 e!180336)))

(declare-fun res!146766 () Bool)

(assert (=> b!284219 (=> (not res!146766) (not e!180336))))

(declare-datatypes ((SeekEntryResult!1886 0))(
  ( (MissingZero!1886 (index!9714 (_ BitVec 32))) (Found!1886 (index!9715 (_ BitVec 32))) (Intermediate!1886 (undefined!2698 Bool) (index!9716 (_ BitVec 32)) (x!27893 (_ BitVec 32))) (Undefined!1886) (MissingVacant!1886 (index!9717 (_ BitVec 32))) )
))
(declare-fun lt!140483 () SeekEntryResult!1886)

(assert (=> b!284219 (= res!146766 (or (= lt!140483 (MissingZero!1886 i!1267)) (= lt!140483 (MissingVacant!1886 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14157 (_ BitVec 32)) SeekEntryResult!1886)

(assert (=> b!284219 (= lt!140483 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284220 () Bool)

(declare-fun res!146763 () Bool)

(assert (=> b!284220 (=> (not res!146763) (not e!180335))))

(declare-datatypes ((List!4546 0))(
  ( (Nil!4543) (Cons!4542 (h!5215 (_ BitVec 64)) (t!9636 List!4546)) )
))
(declare-fun arrayNoDuplicates!0 (array!14157 (_ BitVec 32) List!4546) Bool)

(assert (=> b!284220 (= res!146763 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4543))))

(assert (= (and start!27518 res!146762) b!284215))

(assert (= (and b!284215 res!146765) b!284216))

(assert (= (and b!284216 res!146764) b!284220))

(assert (= (and b!284220 res!146763) b!284218))

(assert (= (and b!284218 res!146761) b!284219))

(assert (= (and b!284219 res!146766) b!284217))

(declare-fun m!299321 () Bool)

(assert (=> b!284216 m!299321))

(declare-fun m!299323 () Bool)

(assert (=> start!27518 m!299323))

(declare-fun m!299325 () Bool)

(assert (=> start!27518 m!299325))

(declare-fun m!299327 () Bool)

(assert (=> b!284217 m!299327))

(declare-fun m!299329 () Bool)

(assert (=> b!284219 m!299329))

(declare-fun m!299331 () Bool)

(assert (=> b!284218 m!299331))

(declare-fun m!299333 () Bool)

(assert (=> b!284220 m!299333))

(push 1)

(assert (not start!27518))

(assert (not b!284219))

(assert (not b!284216))

(assert (not b!284218))

(assert (not b!284217))

(assert (not b!284220))

(check-sat)

