; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25660 () Bool)

(assert start!25660)

(declare-fun b!265942 () Bool)

(declare-fun res!130277 () Bool)

(declare-fun e!172177 () Bool)

(assert (=> b!265942 (=> (not res!130277) (not e!172177))))

(declare-datatypes ((array!12826 0))(
  ( (array!12827 (arr!6067 (Array (_ BitVec 32) (_ BitVec 64))) (size!6419 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12826)

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265942 (= res!130277 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265943 () Bool)

(declare-fun res!130281 () Bool)

(assert (=> b!265943 (=> (not res!130281) (not e!172177))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265943 (= res!130281 (and (= (size!6419 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6419 a!3436))))))

(declare-fun b!265944 () Bool)

(declare-fun e!172175 () Bool)

(assert (=> b!265944 (= e!172175 false)))

(declare-fun lt!134312 () Bool)

(declare-datatypes ((List!3902 0))(
  ( (Nil!3899) (Cons!3898 (h!4565 (_ BitVec 64)) (t!8992 List!3902)) )
))
(declare-fun arrayNoDuplicates!0 (array!12826 (_ BitVec 32) List!3902) Bool)

(assert (=> b!265944 (= lt!134312 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3899))))

(declare-fun b!265945 () Bool)

(declare-fun res!130280 () Bool)

(assert (=> b!265945 (=> (not res!130280) (not e!172175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12826 (_ BitVec 32)) Bool)

(assert (=> b!265945 (= res!130280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265946 () Bool)

(declare-fun res!130279 () Bool)

(assert (=> b!265946 (=> (not res!130279) (not e!172177))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265946 (= res!130279 (validKeyInArray!0 k!2698))))

(declare-fun b!265947 () Bool)

(assert (=> b!265947 (= e!172177 e!172175)))

(declare-fun res!130276 () Bool)

(assert (=> b!265947 (=> (not res!130276) (not e!172175))))

(declare-datatypes ((SeekEntryResult!1269 0))(
  ( (MissingZero!1269 (index!7246 (_ BitVec 32))) (Found!1269 (index!7247 (_ BitVec 32))) (Intermediate!1269 (undefined!2081 Bool) (index!7248 (_ BitVec 32)) (x!25530 (_ BitVec 32))) (Undefined!1269) (MissingVacant!1269 (index!7249 (_ BitVec 32))) )
))
(declare-fun lt!134311 () SeekEntryResult!1269)

(assert (=> b!265947 (= res!130276 (or (= lt!134311 (MissingZero!1269 i!1355)) (= lt!134311 (MissingVacant!1269 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12826 (_ BitVec 32)) SeekEntryResult!1269)

(assert (=> b!265947 (= lt!134311 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun res!130278 () Bool)

(assert (=> start!25660 (=> (not res!130278) (not e!172177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25660 (= res!130278 (validMask!0 mask!4002))))

(assert (=> start!25660 e!172177))

(assert (=> start!25660 true))

(declare-fun array_inv!4021 (array!12826) Bool)

(assert (=> start!25660 (array_inv!4021 a!3436)))

(assert (= (and start!25660 res!130278) b!265943))

(assert (= (and b!265943 res!130281) b!265946))

(assert (= (and b!265946 res!130279) b!265942))

(assert (= (and b!265942 res!130277) b!265947))

(assert (= (and b!265947 res!130276) b!265945))

(assert (= (and b!265945 res!130280) b!265944))

(declare-fun m!282671 () Bool)

(assert (=> b!265945 m!282671))

(declare-fun m!282673 () Bool)

(assert (=> b!265947 m!282673))

(declare-fun m!282675 () Bool)

(assert (=> start!25660 m!282675))

(declare-fun m!282677 () Bool)

(assert (=> start!25660 m!282677))

(declare-fun m!282679 () Bool)

(assert (=> b!265944 m!282679))

(declare-fun m!282681 () Bool)

(assert (=> b!265942 m!282681))

(declare-fun m!282683 () Bool)

(assert (=> b!265946 m!282683))

(push 1)

