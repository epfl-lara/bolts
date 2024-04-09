; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27568 () Bool)

(assert start!27568)

(declare-fun b!284692 () Bool)

(declare-fun res!147243 () Bool)

(declare-fun e!180562 () Bool)

(assert (=> b!284692 (=> (not res!147243) (not e!180562))))

(declare-datatypes ((array!14207 0))(
  ( (array!14208 (arr!6742 (Array (_ BitVec 32) (_ BitVec 64))) (size!7094 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14207)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14207 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284692 (= res!147243 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284693 () Bool)

(declare-fun res!147241 () Bool)

(assert (=> b!284693 (=> (not res!147241) (not e!180562))))

(declare-datatypes ((List!4571 0))(
  ( (Nil!4568) (Cons!4567 (h!5240 (_ BitVec 64)) (t!9661 List!4571)) )
))
(declare-fun arrayNoDuplicates!0 (array!14207 (_ BitVec 32) List!4571) Bool)

(assert (=> b!284693 (= res!147241 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4568))))

(declare-fun b!284695 () Bool)

(declare-fun res!147238 () Bool)

(assert (=> b!284695 (=> (not res!147238) (not e!180562))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284695 (= res!147238 (validKeyInArray!0 k!2581))))

(declare-fun b!284696 () Bool)

(declare-fun res!147239 () Bool)

(assert (=> b!284696 (=> (not res!147239) (not e!180562))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284696 (= res!147239 (and (= (size!7094 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7094 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7094 a!3325))))))

(declare-fun b!284697 () Bool)

(declare-fun e!180560 () Bool)

(assert (=> b!284697 (= e!180562 e!180560)))

(declare-fun res!147240 () Bool)

(assert (=> b!284697 (=> (not res!147240) (not e!180560))))

(declare-datatypes ((SeekEntryResult!1911 0))(
  ( (MissingZero!1911 (index!9814 (_ BitVec 32))) (Found!1911 (index!9815 (_ BitVec 32))) (Intermediate!1911 (undefined!2723 Bool) (index!9816 (_ BitVec 32)) (x!27990 (_ BitVec 32))) (Undefined!1911) (MissingVacant!1911 (index!9817 (_ BitVec 32))) )
))
(declare-fun lt!140624 () SeekEntryResult!1911)

(assert (=> b!284697 (= res!147240 (or (= lt!140624 (MissingZero!1911 i!1267)) (= lt!140624 (MissingVacant!1911 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14207 (_ BitVec 32)) SeekEntryResult!1911)

(assert (=> b!284697 (= lt!140624 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284694 () Bool)

(assert (=> b!284694 (= e!180560 false)))

(declare-fun lt!140623 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14207 (_ BitVec 32)) Bool)

(assert (=> b!284694 (= lt!140623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!147242 () Bool)

(assert (=> start!27568 (=> (not res!147242) (not e!180562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27568 (= res!147242 (validMask!0 mask!3868))))

(assert (=> start!27568 e!180562))

(declare-fun array_inv!4696 (array!14207) Bool)

(assert (=> start!27568 (array_inv!4696 a!3325)))

(assert (=> start!27568 true))

(assert (= (and start!27568 res!147242) b!284696))

(assert (= (and b!284696 res!147239) b!284695))

(assert (= (and b!284695 res!147238) b!284693))

(assert (= (and b!284693 res!147241) b!284692))

(assert (= (and b!284692 res!147243) b!284697))

(assert (= (and b!284697 res!147240) b!284694))

(declare-fun m!299683 () Bool)

(assert (=> b!284692 m!299683))

(declare-fun m!299685 () Bool)

(assert (=> b!284697 m!299685))

(declare-fun m!299687 () Bool)

(assert (=> b!284694 m!299687))

(declare-fun m!299689 () Bool)

(assert (=> b!284695 m!299689))

(declare-fun m!299691 () Bool)

(assert (=> start!27568 m!299691))

(declare-fun m!299693 () Bool)

(assert (=> start!27568 m!299693))

(declare-fun m!299695 () Bool)

(assert (=> b!284693 m!299695))

(push 1)

