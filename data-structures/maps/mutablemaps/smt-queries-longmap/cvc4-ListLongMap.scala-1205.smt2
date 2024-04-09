; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25712 () Bool)

(assert start!25712)

(declare-fun b!266480 () Bool)

(declare-fun res!130820 () Bool)

(declare-fun e!172409 () Bool)

(assert (=> b!266480 (=> (not res!130820) (not e!172409))))

(declare-datatypes ((array!12878 0))(
  ( (array!12879 (arr!6093 (Array (_ BitVec 32) (_ BitVec 64))) (size!6445 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12878)

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266480 (= res!130820 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266481 () Bool)

(declare-fun res!130815 () Bool)

(assert (=> b!266481 (=> (not res!130815) (not e!172409))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266481 (= res!130815 (validKeyInArray!0 k!2698))))

(declare-fun b!266482 () Bool)

(declare-fun res!130818 () Bool)

(declare-fun e!172411 () Bool)

(assert (=> b!266482 (=> (not res!130818) (not e!172411))))

(assert (=> b!266482 (= res!130818 (bvslt #b00000000000000000000000000000000 (size!6445 a!3436)))))

(declare-fun b!266483 () Bool)

(assert (=> b!266483 (= e!172409 e!172411)))

(declare-fun res!130817 () Bool)

(assert (=> b!266483 (=> (not res!130817) (not e!172411))))

(declare-datatypes ((SeekEntryResult!1295 0))(
  ( (MissingZero!1295 (index!7350 (_ BitVec 32))) (Found!1295 (index!7351 (_ BitVec 32))) (Intermediate!1295 (undefined!2107 Bool) (index!7352 (_ BitVec 32)) (x!25620 (_ BitVec 32))) (Undefined!1295) (MissingVacant!1295 (index!7353 (_ BitVec 32))) )
))
(declare-fun lt!134468 () SeekEntryResult!1295)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266483 (= res!130817 (or (= lt!134468 (MissingZero!1295 i!1355)) (= lt!134468 (MissingVacant!1295 i!1355))))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12878 (_ BitVec 32)) SeekEntryResult!1295)

(assert (=> b!266483 (= lt!134468 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266484 () Bool)

(declare-fun res!130816 () Bool)

(assert (=> b!266484 (=> (not res!130816) (not e!172409))))

(assert (=> b!266484 (= res!130816 (and (= (size!6445 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6445 a!3436))))))

(declare-fun b!266486 () Bool)

(declare-fun res!130821 () Bool)

(assert (=> b!266486 (=> (not res!130821) (not e!172411))))

(declare-datatypes ((List!3928 0))(
  ( (Nil!3925) (Cons!3924 (h!4591 (_ BitVec 64)) (t!9018 List!3928)) )
))
(declare-fun arrayNoDuplicates!0 (array!12878 (_ BitVec 32) List!3928) Bool)

(assert (=> b!266486 (= res!130821 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3925))))

(declare-fun b!266487 () Bool)

(declare-fun res!130814 () Bool)

(assert (=> b!266487 (=> (not res!130814) (not e!172411))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12878 (_ BitVec 32)) Bool)

(assert (=> b!266487 (= res!130814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun res!130819 () Bool)

(assert (=> start!25712 (=> (not res!130819) (not e!172409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25712 (= res!130819 (validMask!0 mask!4002))))

(assert (=> start!25712 e!172409))

(assert (=> start!25712 true))

(declare-fun array_inv!4047 (array!12878) Bool)

(assert (=> start!25712 (array_inv!4047 a!3436)))

(declare-fun b!266485 () Bool)

(assert (=> b!266485 (= e!172411 (not (bvsle #b00000000000000000000000000000000 (size!6445 a!3436))))))

(assert (=> b!266485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12879 (store (arr!6093 a!3436) i!1355 k!2698) (size!6445 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8290 0))(
  ( (Unit!8291) )
))
(declare-fun lt!134467 () Unit!8290)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12878 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8290)

(assert (=> b!266485 (= lt!134467 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k!2698 #b00000000000000000000000000000000 mask!4002))))

(assert (= (and start!25712 res!130819) b!266484))

(assert (= (and b!266484 res!130816) b!266481))

(assert (= (and b!266481 res!130815) b!266480))

(assert (= (and b!266480 res!130820) b!266483))

(assert (= (and b!266483 res!130817) b!266487))

(assert (= (and b!266487 res!130814) b!266486))

(assert (= (and b!266486 res!130821) b!266482))

(assert (= (and b!266482 res!130818) b!266485))

(declare-fun m!283101 () Bool)

(assert (=> b!266486 m!283101))

(declare-fun m!283103 () Bool)

(assert (=> b!266487 m!283103))

(declare-fun m!283105 () Bool)

(assert (=> b!266483 m!283105))

(declare-fun m!283107 () Bool)

(assert (=> b!266485 m!283107))

(declare-fun m!283109 () Bool)

(assert (=> b!266485 m!283109))

(declare-fun m!283111 () Bool)

(assert (=> b!266485 m!283111))

(declare-fun m!283113 () Bool)

(assert (=> start!25712 m!283113))

(declare-fun m!283115 () Bool)

(assert (=> start!25712 m!283115))

(declare-fun m!283117 () Bool)

(assert (=> b!266480 m!283117))

(declare-fun m!283119 () Bool)

(assert (=> b!266481 m!283119))

(push 1)

(assert (not start!25712))

(assert (not b!266480))

