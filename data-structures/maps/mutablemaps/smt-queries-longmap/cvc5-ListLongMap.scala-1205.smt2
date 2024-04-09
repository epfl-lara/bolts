; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25708 () Bool)

(assert start!25708)

(declare-fun b!266432 () Bool)

(declare-fun res!130766 () Bool)

(declare-fun e!172391 () Bool)

(assert (=> b!266432 (=> (not res!130766) (not e!172391))))

(declare-datatypes ((array!12874 0))(
  ( (array!12875 (arr!6091 (Array (_ BitVec 32) (_ BitVec 64))) (size!6443 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12874)

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266432 (= res!130766 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266433 () Bool)

(declare-fun e!172393 () Bool)

(assert (=> b!266433 (= e!172391 e!172393)))

(declare-fun res!130773 () Bool)

(assert (=> b!266433 (=> (not res!130773) (not e!172393))))

(declare-datatypes ((SeekEntryResult!1293 0))(
  ( (MissingZero!1293 (index!7342 (_ BitVec 32))) (Found!1293 (index!7343 (_ BitVec 32))) (Intermediate!1293 (undefined!2105 Bool) (index!7344 (_ BitVec 32)) (x!25618 (_ BitVec 32))) (Undefined!1293) (MissingVacant!1293 (index!7345 (_ BitVec 32))) )
))
(declare-fun lt!134456 () SeekEntryResult!1293)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266433 (= res!130773 (or (= lt!134456 (MissingZero!1293 i!1355)) (= lt!134456 (MissingVacant!1293 i!1355))))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12874 (_ BitVec 32)) SeekEntryResult!1293)

(assert (=> b!266433 (= lt!134456 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266434 () Bool)

(assert (=> b!266434 (= e!172393 (not (bvsle #b00000000000000000000000000000000 (size!6443 a!3436))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12874 (_ BitVec 32)) Bool)

(assert (=> b!266434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12875 (store (arr!6091 a!3436) i!1355 k!2698) (size!6443 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8286 0))(
  ( (Unit!8287) )
))
(declare-fun lt!134455 () Unit!8286)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12874 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8286)

(assert (=> b!266434 (= lt!134455 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k!2698 #b00000000000000000000000000000000 mask!4002))))

(declare-fun b!266435 () Bool)

(declare-fun res!130772 () Bool)

(assert (=> b!266435 (=> (not res!130772) (not e!172391))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266435 (= res!130772 (validKeyInArray!0 k!2698))))

(declare-fun b!266436 () Bool)

(declare-fun res!130768 () Bool)

(assert (=> b!266436 (=> (not res!130768) (not e!172391))))

(assert (=> b!266436 (= res!130768 (and (= (size!6443 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6443 a!3436))))))

(declare-fun res!130769 () Bool)

(assert (=> start!25708 (=> (not res!130769) (not e!172391))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25708 (= res!130769 (validMask!0 mask!4002))))

(assert (=> start!25708 e!172391))

(assert (=> start!25708 true))

(declare-fun array_inv!4045 (array!12874) Bool)

(assert (=> start!25708 (array_inv!4045 a!3436)))

(declare-fun b!266437 () Bool)

(declare-fun res!130770 () Bool)

(assert (=> b!266437 (=> (not res!130770) (not e!172393))))

(assert (=> b!266437 (= res!130770 (bvslt #b00000000000000000000000000000000 (size!6443 a!3436)))))

(declare-fun b!266438 () Bool)

(declare-fun res!130767 () Bool)

(assert (=> b!266438 (=> (not res!130767) (not e!172393))))

(declare-datatypes ((List!3926 0))(
  ( (Nil!3923) (Cons!3922 (h!4589 (_ BitVec 64)) (t!9016 List!3926)) )
))
(declare-fun arrayNoDuplicates!0 (array!12874 (_ BitVec 32) List!3926) Bool)

(assert (=> b!266438 (= res!130767 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3923))))

(declare-fun b!266439 () Bool)

(declare-fun res!130771 () Bool)

(assert (=> b!266439 (=> (not res!130771) (not e!172393))))

(assert (=> b!266439 (= res!130771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(assert (= (and start!25708 res!130769) b!266436))

(assert (= (and b!266436 res!130768) b!266435))

(assert (= (and b!266435 res!130772) b!266432))

(assert (= (and b!266432 res!130766) b!266433))

(assert (= (and b!266433 res!130773) b!266439))

(assert (= (and b!266439 res!130771) b!266438))

(assert (= (and b!266438 res!130767) b!266437))

(assert (= (and b!266437 res!130770) b!266434))

(declare-fun m!283061 () Bool)

(assert (=> b!266439 m!283061))

(declare-fun m!283063 () Bool)

(assert (=> b!266432 m!283063))

(declare-fun m!283065 () Bool)

(assert (=> b!266433 m!283065))

(declare-fun m!283067 () Bool)

(assert (=> b!266438 m!283067))

(declare-fun m!283069 () Bool)

(assert (=> b!266434 m!283069))

(declare-fun m!283071 () Bool)

(assert (=> b!266434 m!283071))

(declare-fun m!283073 () Bool)

(assert (=> b!266434 m!283073))

(declare-fun m!283075 () Bool)

(assert (=> start!25708 m!283075))

(declare-fun m!283077 () Bool)

(assert (=> start!25708 m!283077))

(declare-fun m!283079 () Bool)

(assert (=> b!266435 m!283079))

(push 1)

