; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25718 () Bool)

(assert start!25718)

(declare-fun b!266536 () Bool)

(declare-fun res!130875 () Bool)

(declare-fun e!172437 () Bool)

(assert (=> b!266536 (=> (not res!130875) (not e!172437))))

(declare-datatypes ((array!12884 0))(
  ( (array!12885 (arr!6096 (Array (_ BitVec 32) (_ BitVec 64))) (size!6448 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12884)

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12884 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266536 (= res!130875 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266537 () Bool)

(declare-fun e!172436 () Bool)

(assert (=> b!266537 (= e!172437 e!172436)))

(declare-fun res!130870 () Bool)

(assert (=> b!266537 (=> (not res!130870) (not e!172436))))

(declare-datatypes ((SeekEntryResult!1298 0))(
  ( (MissingZero!1298 (index!7362 (_ BitVec 32))) (Found!1298 (index!7363 (_ BitVec 32))) (Intermediate!1298 (undefined!2110 Bool) (index!7364 (_ BitVec 32)) (x!25631 (_ BitVec 32))) (Undefined!1298) (MissingVacant!1298 (index!7365 (_ BitVec 32))) )
))
(declare-fun lt!134486 () SeekEntryResult!1298)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266537 (= res!130870 (or (= lt!134486 (MissingZero!1298 i!1355)) (= lt!134486 (MissingVacant!1298 i!1355))))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12884 (_ BitVec 32)) SeekEntryResult!1298)

(assert (=> b!266537 (= lt!134486 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266538 () Bool)

(declare-fun res!130871 () Bool)

(assert (=> b!266538 (=> (not res!130871) (not e!172437))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266538 (= res!130871 (validKeyInArray!0 k!2698))))

(declare-fun b!266539 () Bool)

(declare-fun res!130874 () Bool)

(assert (=> b!266539 (=> (not res!130874) (not e!172436))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12884 (_ BitVec 32)) Bool)

(assert (=> b!266539 (= res!130874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266541 () Bool)

(assert (=> b!266541 (= e!172436 false)))

(declare-fun lt!134485 () Bool)

(declare-datatypes ((List!3931 0))(
  ( (Nil!3928) (Cons!3927 (h!4594 (_ BitVec 64)) (t!9021 List!3931)) )
))
(declare-fun arrayNoDuplicates!0 (array!12884 (_ BitVec 32) List!3931) Bool)

(assert (=> b!266541 (= lt!134485 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3928))))

(declare-fun res!130873 () Bool)

(assert (=> start!25718 (=> (not res!130873) (not e!172437))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25718 (= res!130873 (validMask!0 mask!4002))))

(assert (=> start!25718 e!172437))

(assert (=> start!25718 true))

(declare-fun array_inv!4050 (array!12884) Bool)

(assert (=> start!25718 (array_inv!4050 a!3436)))

(declare-fun b!266540 () Bool)

(declare-fun res!130872 () Bool)

(assert (=> b!266540 (=> (not res!130872) (not e!172437))))

(assert (=> b!266540 (= res!130872 (and (= (size!6448 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6448 a!3436))))))

(assert (= (and start!25718 res!130873) b!266540))

(assert (= (and b!266540 res!130872) b!266538))

(assert (= (and b!266538 res!130871) b!266536))

(assert (= (and b!266536 res!130875) b!266537))

(assert (= (and b!266537 res!130870) b!266539))

(assert (= (and b!266539 res!130874) b!266541))

(declare-fun m!283149 () Bool)

(assert (=> b!266538 m!283149))

(declare-fun m!283151 () Bool)

(assert (=> b!266541 m!283151))

(declare-fun m!283153 () Bool)

(assert (=> b!266537 m!283153))

(declare-fun m!283155 () Bool)

(assert (=> start!25718 m!283155))

(declare-fun m!283157 () Bool)

(assert (=> start!25718 m!283157))

(declare-fun m!283159 () Bool)

(assert (=> b!266536 m!283159))

(declare-fun m!283161 () Bool)

(assert (=> b!266539 m!283161))

(push 1)

(assert (not b!266539))

(assert (not b!266537))

(assert (not b!266536))

(assert (not b!266541))

(assert (not start!25718))

(assert (not b!266538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

