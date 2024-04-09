; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27530 () Bool)

(assert start!27530)

(declare-fun b!284323 () Bool)

(declare-fun e!180389 () Bool)

(assert (=> b!284323 (= e!180389 false)))

(declare-fun lt!140519 () Bool)

(declare-datatypes ((array!14169 0))(
  ( (array!14170 (arr!6723 (Array (_ BitVec 32) (_ BitVec 64))) (size!7075 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14169)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14169 (_ BitVec 32)) Bool)

(assert (=> b!284323 (= lt!140519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!146874 () Bool)

(declare-fun e!180391 () Bool)

(assert (=> start!27530 (=> (not res!146874) (not e!180391))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27530 (= res!146874 (validMask!0 mask!3868))))

(assert (=> start!27530 e!180391))

(declare-fun array_inv!4677 (array!14169) Bool)

(assert (=> start!27530 (array_inv!4677 a!3325)))

(assert (=> start!27530 true))

(declare-fun b!284324 () Bool)

(assert (=> b!284324 (= e!180391 e!180389)))

(declare-fun res!146872 () Bool)

(assert (=> b!284324 (=> (not res!146872) (not e!180389))))

(declare-datatypes ((SeekEntryResult!1892 0))(
  ( (MissingZero!1892 (index!9738 (_ BitVec 32))) (Found!1892 (index!9739 (_ BitVec 32))) (Intermediate!1892 (undefined!2704 Bool) (index!9740 (_ BitVec 32)) (x!27915 (_ BitVec 32))) (Undefined!1892) (MissingVacant!1892 (index!9741 (_ BitVec 32))) )
))
(declare-fun lt!140518 () SeekEntryResult!1892)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!284324 (= res!146872 (or (= lt!140518 (MissingZero!1892 i!1267)) (= lt!140518 (MissingVacant!1892 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14169 (_ BitVec 32)) SeekEntryResult!1892)

(assert (=> b!284324 (= lt!140518 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284325 () Bool)

(declare-fun res!146870 () Bool)

(assert (=> b!284325 (=> (not res!146870) (not e!180391))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284325 (= res!146870 (and (= (size!7075 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7075 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7075 a!3325))))))

(declare-fun b!284326 () Bool)

(declare-fun res!146873 () Bool)

(assert (=> b!284326 (=> (not res!146873) (not e!180391))))

(declare-datatypes ((List!4552 0))(
  ( (Nil!4549) (Cons!4548 (h!5221 (_ BitVec 64)) (t!9642 List!4552)) )
))
(declare-fun arrayNoDuplicates!0 (array!14169 (_ BitVec 32) List!4552) Bool)

(assert (=> b!284326 (= res!146873 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4549))))

(declare-fun b!284327 () Bool)

(declare-fun res!146869 () Bool)

(assert (=> b!284327 (=> (not res!146869) (not e!180391))))

(declare-fun arrayContainsKey!0 (array!14169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284327 (= res!146869 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284328 () Bool)

(declare-fun res!146871 () Bool)

(assert (=> b!284328 (=> (not res!146871) (not e!180391))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284328 (= res!146871 (validKeyInArray!0 k!2581))))

(assert (= (and start!27530 res!146874) b!284325))

(assert (= (and b!284325 res!146870) b!284328))

(assert (= (and b!284328 res!146871) b!284326))

(assert (= (and b!284326 res!146873) b!284327))

(assert (= (and b!284327 res!146869) b!284324))

(assert (= (and b!284324 res!146872) b!284323))

(declare-fun m!299405 () Bool)

(assert (=> b!284326 m!299405))

(declare-fun m!299407 () Bool)

(assert (=> b!284324 m!299407))

(declare-fun m!299409 () Bool)

(assert (=> start!27530 m!299409))

(declare-fun m!299411 () Bool)

(assert (=> start!27530 m!299411))

(declare-fun m!299413 () Bool)

(assert (=> b!284328 m!299413))

(declare-fun m!299415 () Bool)

(assert (=> b!284323 m!299415))

(declare-fun m!299417 () Bool)

(assert (=> b!284327 m!299417))

(push 1)

(assert (not b!284324))

(assert (not b!284326))

(assert (not b!284323))

(assert (not b!284328))

(assert (not start!27530))

(assert (not b!284327))

(check-sat)

