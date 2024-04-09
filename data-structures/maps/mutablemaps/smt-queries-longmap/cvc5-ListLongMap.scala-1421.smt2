; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27562 () Bool)

(assert start!27562)

(declare-fun b!284638 () Bool)

(declare-fun res!147188 () Bool)

(declare-fun e!180535 () Bool)

(assert (=> b!284638 (=> (not res!147188) (not e!180535))))

(declare-datatypes ((array!14201 0))(
  ( (array!14202 (arr!6739 (Array (_ BitVec 32) (_ BitVec 64))) (size!7091 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14201)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!284638 (= res!147188 (and (= (size!7091 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7091 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7091 a!3325))))))

(declare-fun b!284639 () Bool)

(declare-fun e!180534 () Bool)

(assert (=> b!284639 (= e!180534 false)))

(declare-fun lt!140606 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14201 (_ BitVec 32)) Bool)

(assert (=> b!284639 (= lt!140606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284640 () Bool)

(assert (=> b!284640 (= e!180535 e!180534)))

(declare-fun res!147187 () Bool)

(assert (=> b!284640 (=> (not res!147187) (not e!180534))))

(declare-datatypes ((SeekEntryResult!1908 0))(
  ( (MissingZero!1908 (index!9802 (_ BitVec 32))) (Found!1908 (index!9803 (_ BitVec 32))) (Intermediate!1908 (undefined!2720 Bool) (index!9804 (_ BitVec 32)) (x!27979 (_ BitVec 32))) (Undefined!1908) (MissingVacant!1908 (index!9805 (_ BitVec 32))) )
))
(declare-fun lt!140605 () SeekEntryResult!1908)

(assert (=> b!284640 (= res!147187 (or (= lt!140605 (MissingZero!1908 i!1267)) (= lt!140605 (MissingVacant!1908 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14201 (_ BitVec 32)) SeekEntryResult!1908)

(assert (=> b!284640 (= lt!140605 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284641 () Bool)

(declare-fun res!147185 () Bool)

(assert (=> b!284641 (=> (not res!147185) (not e!180535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284641 (= res!147185 (validKeyInArray!0 k!2581))))

(declare-fun b!284642 () Bool)

(declare-fun res!147186 () Bool)

(assert (=> b!284642 (=> (not res!147186) (not e!180535))))

(declare-datatypes ((List!4568 0))(
  ( (Nil!4565) (Cons!4564 (h!5237 (_ BitVec 64)) (t!9658 List!4568)) )
))
(declare-fun arrayNoDuplicates!0 (array!14201 (_ BitVec 32) List!4568) Bool)

(assert (=> b!284642 (= res!147186 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4565))))

(declare-fun b!284643 () Bool)

(declare-fun res!147184 () Bool)

(assert (=> b!284643 (=> (not res!147184) (not e!180535))))

(declare-fun arrayContainsKey!0 (array!14201 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284643 (= res!147184 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!147189 () Bool)

(assert (=> start!27562 (=> (not res!147189) (not e!180535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27562 (= res!147189 (validMask!0 mask!3868))))

(assert (=> start!27562 e!180535))

(declare-fun array_inv!4693 (array!14201) Bool)

(assert (=> start!27562 (array_inv!4693 a!3325)))

(assert (=> start!27562 true))

(assert (= (and start!27562 res!147189) b!284638))

(assert (= (and b!284638 res!147188) b!284641))

(assert (= (and b!284641 res!147185) b!284642))

(assert (= (and b!284642 res!147186) b!284643))

(assert (= (and b!284643 res!147184) b!284640))

(assert (= (and b!284640 res!147187) b!284639))

(declare-fun m!299641 () Bool)

(assert (=> b!284641 m!299641))

(declare-fun m!299643 () Bool)

(assert (=> start!27562 m!299643))

(declare-fun m!299645 () Bool)

(assert (=> start!27562 m!299645))

(declare-fun m!299647 () Bool)

(assert (=> b!284642 m!299647))

(declare-fun m!299649 () Bool)

(assert (=> b!284639 m!299649))

(declare-fun m!299651 () Bool)

(assert (=> b!284643 m!299651))

(declare-fun m!299653 () Bool)

(assert (=> b!284640 m!299653))

(push 1)

(assert (not start!27562))

(assert (not b!284642))

