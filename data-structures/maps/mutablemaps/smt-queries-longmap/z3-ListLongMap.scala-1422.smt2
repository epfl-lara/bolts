; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27570 () Bool)

(assert start!27570)

(declare-fun b!284710 () Bool)

(declare-fun e!180571 () Bool)

(assert (=> b!284710 (= e!180571 false)))

(declare-fun lt!140629 () Bool)

(declare-datatypes ((array!14209 0))(
  ( (array!14210 (arr!6743 (Array (_ BitVec 32) (_ BitVec 64))) (size!7095 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14209)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14209 (_ BitVec 32)) Bool)

(assert (=> b!284710 (= lt!140629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284711 () Bool)

(declare-fun e!180570 () Bool)

(assert (=> b!284711 (= e!180570 e!180571)))

(declare-fun res!147260 () Bool)

(assert (=> b!284711 (=> (not res!147260) (not e!180571))))

(declare-datatypes ((SeekEntryResult!1912 0))(
  ( (MissingZero!1912 (index!9818 (_ BitVec 32))) (Found!1912 (index!9819 (_ BitVec 32))) (Intermediate!1912 (undefined!2724 Bool) (index!9820 (_ BitVec 32)) (x!27991 (_ BitVec 32))) (Undefined!1912) (MissingVacant!1912 (index!9821 (_ BitVec 32))) )
))
(declare-fun lt!140630 () SeekEntryResult!1912)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!284711 (= res!147260 (or (= lt!140630 (MissingZero!1912 i!1267)) (= lt!140630 (MissingVacant!1912 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14209 (_ BitVec 32)) SeekEntryResult!1912)

(assert (=> b!284711 (= lt!140630 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!147256 () Bool)

(assert (=> start!27570 (=> (not res!147256) (not e!180570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27570 (= res!147256 (validMask!0 mask!3868))))

(assert (=> start!27570 e!180570))

(declare-fun array_inv!4697 (array!14209) Bool)

(assert (=> start!27570 (array_inv!4697 a!3325)))

(assert (=> start!27570 true))

(declare-fun b!284712 () Bool)

(declare-fun res!147259 () Bool)

(assert (=> b!284712 (=> (not res!147259) (not e!180570))))

(declare-fun arrayContainsKey!0 (array!14209 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284712 (= res!147259 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284713 () Bool)

(declare-fun res!147261 () Bool)

(assert (=> b!284713 (=> (not res!147261) (not e!180570))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284713 (= res!147261 (validKeyInArray!0 k0!2581))))

(declare-fun b!284714 () Bool)

(declare-fun res!147257 () Bool)

(assert (=> b!284714 (=> (not res!147257) (not e!180570))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284714 (= res!147257 (and (= (size!7095 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7095 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7095 a!3325))))))

(declare-fun b!284715 () Bool)

(declare-fun res!147258 () Bool)

(assert (=> b!284715 (=> (not res!147258) (not e!180570))))

(declare-datatypes ((List!4572 0))(
  ( (Nil!4569) (Cons!4568 (h!5241 (_ BitVec 64)) (t!9662 List!4572)) )
))
(declare-fun arrayNoDuplicates!0 (array!14209 (_ BitVec 32) List!4572) Bool)

(assert (=> b!284715 (= res!147258 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4569))))

(assert (= (and start!27570 res!147256) b!284714))

(assert (= (and b!284714 res!147257) b!284713))

(assert (= (and b!284713 res!147261) b!284715))

(assert (= (and b!284715 res!147258) b!284712))

(assert (= (and b!284712 res!147259) b!284711))

(assert (= (and b!284711 res!147260) b!284710))

(declare-fun m!299697 () Bool)

(assert (=> start!27570 m!299697))

(declare-fun m!299699 () Bool)

(assert (=> start!27570 m!299699))

(declare-fun m!299701 () Bool)

(assert (=> b!284710 m!299701))

(declare-fun m!299703 () Bool)

(assert (=> b!284712 m!299703))

(declare-fun m!299705 () Bool)

(assert (=> b!284713 m!299705))

(declare-fun m!299707 () Bool)

(assert (=> b!284715 m!299707))

(declare-fun m!299709 () Bool)

(assert (=> b!284711 m!299709))

(check-sat (not b!284711) (not b!284712) (not start!27570) (not b!284715) (not b!284710) (not b!284713))
(check-sat)
