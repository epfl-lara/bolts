; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25472 () Bool)

(assert start!25472)

(declare-fun res!129515 () Bool)

(declare-fun e!171611 () Bool)

(assert (=> start!25472 (=> (not res!129515) (not e!171611))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25472 (= res!129515 (validMask!0 mask!4002))))

(assert (=> start!25472 e!171611))

(assert (=> start!25472 true))

(declare-datatypes ((array!12755 0))(
  ( (array!12756 (arr!6036 (Array (_ BitVec 32) (_ BitVec 64))) (size!6388 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12755)

(declare-fun array_inv!3990 (array!12755) Bool)

(assert (=> start!25472 (array_inv!3990 a!3436)))

(declare-fun b!264964 () Bool)

(declare-fun res!129516 () Bool)

(assert (=> b!264964 (=> (not res!129516) (not e!171611))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264964 (= res!129516 (and (= (size!6388 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6388 a!3436))))))

(declare-fun b!264965 () Bool)

(declare-fun e!171612 () Bool)

(assert (=> b!264965 (= e!171612 (bvsgt #b00000000000000000000000000000000 (size!6388 a!3436)))))

(declare-fun b!264966 () Bool)

(assert (=> b!264966 (= e!171611 e!171612)))

(declare-fun res!129519 () Bool)

(assert (=> b!264966 (=> (not res!129519) (not e!171612))))

(declare-datatypes ((SeekEntryResult!1238 0))(
  ( (MissingZero!1238 (index!7122 (_ BitVec 32))) (Found!1238 (index!7123 (_ BitVec 32))) (Intermediate!1238 (undefined!2050 Bool) (index!7124 (_ BitVec 32)) (x!25411 (_ BitVec 32))) (Undefined!1238) (MissingVacant!1238 (index!7125 (_ BitVec 32))) )
))
(declare-fun lt!133979 () SeekEntryResult!1238)

(assert (=> b!264966 (= res!129519 (or (= lt!133979 (MissingZero!1238 i!1355)) (= lt!133979 (MissingVacant!1238 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12755 (_ BitVec 32)) SeekEntryResult!1238)

(assert (=> b!264966 (= lt!133979 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!264967 () Bool)

(declare-fun res!129514 () Bool)

(assert (=> b!264967 (=> (not res!129514) (not e!171612))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12755 (_ BitVec 32)) Bool)

(assert (=> b!264967 (= res!129514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!264968 () Bool)

(declare-fun res!129517 () Bool)

(assert (=> b!264968 (=> (not res!129517) (not e!171611))))

(declare-fun arrayContainsKey!0 (array!12755 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264968 (= res!129517 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264969 () Bool)

(declare-fun res!129518 () Bool)

(assert (=> b!264969 (=> (not res!129518) (not e!171611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264969 (= res!129518 (validKeyInArray!0 k!2698))))

(assert (= (and start!25472 res!129515) b!264964))

(assert (= (and b!264964 res!129516) b!264969))

(assert (= (and b!264969 res!129518) b!264968))

(assert (= (and b!264968 res!129517) b!264966))

(assert (= (and b!264966 res!129519) b!264967))

(assert (= (and b!264967 res!129514) b!264965))

(declare-fun m!281927 () Bool)

(assert (=> b!264969 m!281927))

(declare-fun m!281929 () Bool)

(assert (=> b!264966 m!281929))

(declare-fun m!281931 () Bool)

(assert (=> start!25472 m!281931))

(declare-fun m!281933 () Bool)

(assert (=> start!25472 m!281933))

(declare-fun m!281935 () Bool)

(assert (=> b!264967 m!281935))

(declare-fun m!281937 () Bool)

(assert (=> b!264968 m!281937))

(push 1)

(assert (not b!264967))

(assert (not b!264969))

(assert (not start!25472))

(assert (not b!264966))

(assert (not b!264968))

