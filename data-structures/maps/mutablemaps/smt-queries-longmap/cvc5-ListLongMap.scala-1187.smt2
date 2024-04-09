; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25474 () Bool)

(assert start!25474)

(declare-fun b!264982 () Bool)

(declare-fun res!129533 () Bool)

(declare-fun e!171622 () Bool)

(assert (=> b!264982 (=> (not res!129533) (not e!171622))))

(declare-datatypes ((array!12757 0))(
  ( (array!12758 (arr!6037 (Array (_ BitVec 32) (_ BitVec 64))) (size!6389 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12757)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12757 (_ BitVec 32)) Bool)

(assert (=> b!264982 (= res!129533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!264983 () Bool)

(declare-fun res!129537 () Bool)

(declare-fun e!171621 () Bool)

(assert (=> b!264983 (=> (not res!129537) (not e!171621))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264983 (= res!129537 (and (= (size!6389 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6389 a!3436))))))

(declare-fun res!129536 () Bool)

(assert (=> start!25474 (=> (not res!129536) (not e!171621))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25474 (= res!129536 (validMask!0 mask!4002))))

(assert (=> start!25474 e!171621))

(assert (=> start!25474 true))

(declare-fun array_inv!3991 (array!12757) Bool)

(assert (=> start!25474 (array_inv!3991 a!3436)))

(declare-fun b!264984 () Bool)

(declare-fun res!129534 () Bool)

(assert (=> b!264984 (=> (not res!129534) (not e!171621))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264984 (= res!129534 (validKeyInArray!0 k!2698))))

(declare-fun b!264985 () Bool)

(assert (=> b!264985 (= e!171621 e!171622)))

(declare-fun res!129532 () Bool)

(assert (=> b!264985 (=> (not res!129532) (not e!171622))))

(declare-datatypes ((SeekEntryResult!1239 0))(
  ( (MissingZero!1239 (index!7126 (_ BitVec 32))) (Found!1239 (index!7127 (_ BitVec 32))) (Intermediate!1239 (undefined!2051 Bool) (index!7128 (_ BitVec 32)) (x!25420 (_ BitVec 32))) (Undefined!1239) (MissingVacant!1239 (index!7129 (_ BitVec 32))) )
))
(declare-fun lt!133982 () SeekEntryResult!1239)

(assert (=> b!264985 (= res!129532 (or (= lt!133982 (MissingZero!1239 i!1355)) (= lt!133982 (MissingVacant!1239 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12757 (_ BitVec 32)) SeekEntryResult!1239)

(assert (=> b!264985 (= lt!133982 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!264986 () Bool)

(declare-fun res!129535 () Bool)

(assert (=> b!264986 (=> (not res!129535) (not e!171621))))

(declare-fun arrayContainsKey!0 (array!12757 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264986 (= res!129535 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264987 () Bool)

(assert (=> b!264987 (= e!171622 (and (bvsle #b00000000000000000000000000000000 (size!6389 a!3436)) (bvsge (size!6389 a!3436) #b01111111111111111111111111111111)))))

(assert (= (and start!25474 res!129536) b!264983))

(assert (= (and b!264983 res!129537) b!264984))

(assert (= (and b!264984 res!129534) b!264986))

(assert (= (and b!264986 res!129535) b!264985))

(assert (= (and b!264985 res!129532) b!264982))

(assert (= (and b!264982 res!129533) b!264987))

(declare-fun m!281939 () Bool)

(assert (=> b!264985 m!281939))

(declare-fun m!281941 () Bool)

(assert (=> b!264986 m!281941))

(declare-fun m!281943 () Bool)

(assert (=> b!264982 m!281943))

(declare-fun m!281945 () Bool)

(assert (=> b!264984 m!281945))

(declare-fun m!281947 () Bool)

(assert (=> start!25474 m!281947))

(declare-fun m!281949 () Bool)

(assert (=> start!25474 m!281949))

(push 1)

(assert (not b!264986))

(assert (not b!264982))

(assert (not b!264985))

(assert (not b!264984))

(assert (not start!25474))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!64025 () Bool)

(declare-fun res!129578 () Bool)

(declare-fun e!171645 () Bool)

(assert (=> d!64025 (=> res!129578 e!171645)))

(assert (=> d!64025 (= res!129578 (= (select (arr!6037 a!3436) #b00000000000000000000000000000000) k!2698))))

(assert (=> d!64025 (= (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000) e!171645)))

(declare-fun b!265028 () Bool)

(declare-fun e!171646 () Bool)

(assert (=> b!265028 (= e!171645 e!171646)))

(declare-fun res!129579 () Bool)

(assert (=> b!265028 (=> (not res!129579) (not e!171646))))

(assert (=> b!265028 (= res!129579 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6389 a!3436)))))

(declare-fun b!265029 () Bool)

(assert (=> b!265029 (= e!171646 (arrayContainsKey!0 a!3436 k!2698 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64025 (not res!129578)) b!265028))

(assert (= (and b!265028 res!129579) b!265029))

(declare-fun m!281975 () Bool)

(assert (=> d!64025 m!281975))

(declare-fun m!281977 () Bool)

(assert (=> b!265029 m!281977))

(assert (=> b!264986 d!64025))

(declare-fun d!64033 () Bool)

