; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25762 () Bool)

(assert start!25762)

(declare-fun b!266941 () Bool)

(declare-fun res!131275 () Bool)

(declare-fun e!172635 () Bool)

(assert (=> b!266941 (=> (not res!131275) (not e!172635))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266941 (= res!131275 (validKeyInArray!0 k!2698))))

(declare-fun res!131279 () Bool)

(assert (=> start!25762 (=> (not res!131279) (not e!172635))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25762 (= res!131279 (validMask!0 mask!4002))))

(assert (=> start!25762 e!172635))

(assert (=> start!25762 true))

(declare-datatypes ((array!12928 0))(
  ( (array!12929 (arr!6118 (Array (_ BitVec 32) (_ BitVec 64))) (size!6470 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12928)

(declare-fun array_inv!4072 (array!12928) Bool)

(assert (=> start!25762 (array_inv!4072 a!3436)))

(declare-fun b!266942 () Bool)

(declare-fun e!172634 () Bool)

(assert (=> b!266942 (= e!172634 false)))

(declare-fun lt!134609 () Bool)

(declare-datatypes ((List!3953 0))(
  ( (Nil!3950) (Cons!3949 (h!4616 (_ BitVec 64)) (t!9043 List!3953)) )
))
(declare-fun arrayNoDuplicates!0 (array!12928 (_ BitVec 32) List!3953) Bool)

(assert (=> b!266942 (= lt!134609 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3950))))

(declare-fun b!266943 () Bool)

(declare-fun res!131277 () Bool)

(assert (=> b!266943 (=> (not res!131277) (not e!172635))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266943 (= res!131277 (and (= (size!6470 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6470 a!3436))))))

(declare-fun b!266944 () Bool)

(declare-fun res!131276 () Bool)

(assert (=> b!266944 (=> (not res!131276) (not e!172635))))

(declare-fun arrayContainsKey!0 (array!12928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266944 (= res!131276 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266945 () Bool)

(declare-fun res!131280 () Bool)

(assert (=> b!266945 (=> (not res!131280) (not e!172634))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12928 (_ BitVec 32)) Bool)

(assert (=> b!266945 (= res!131280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266946 () Bool)

(assert (=> b!266946 (= e!172635 e!172634)))

(declare-fun res!131278 () Bool)

(assert (=> b!266946 (=> (not res!131278) (not e!172634))))

(declare-datatypes ((SeekEntryResult!1320 0))(
  ( (MissingZero!1320 (index!7450 (_ BitVec 32))) (Found!1320 (index!7451 (_ BitVec 32))) (Intermediate!1320 (undefined!2132 Bool) (index!7452 (_ BitVec 32)) (x!25717 (_ BitVec 32))) (Undefined!1320) (MissingVacant!1320 (index!7453 (_ BitVec 32))) )
))
(declare-fun lt!134608 () SeekEntryResult!1320)

(assert (=> b!266946 (= res!131278 (or (= lt!134608 (MissingZero!1320 i!1355)) (= lt!134608 (MissingVacant!1320 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12928 (_ BitVec 32)) SeekEntryResult!1320)

(assert (=> b!266946 (= lt!134608 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(assert (= (and start!25762 res!131279) b!266943))

(assert (= (and b!266943 res!131277) b!266941))

(assert (= (and b!266941 res!131275) b!266944))

(assert (= (and b!266944 res!131276) b!266946))

(assert (= (and b!266946 res!131278) b!266945))

(assert (= (and b!266945 res!131280) b!266942))

(declare-fun m!283457 () Bool)

(assert (=> b!266945 m!283457))

(declare-fun m!283459 () Bool)

(assert (=> b!266944 m!283459))

(declare-fun m!283461 () Bool)

(assert (=> start!25762 m!283461))

(declare-fun m!283463 () Bool)

(assert (=> start!25762 m!283463))

(declare-fun m!283465 () Bool)

(assert (=> b!266941 m!283465))

(declare-fun m!283467 () Bool)

(assert (=> b!266942 m!283467))

(declare-fun m!283469 () Bool)

(assert (=> b!266946 m!283469))

(push 1)

