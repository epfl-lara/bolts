; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25468 () Bool)

(assert start!25468)

(declare-fun b!264928 () Bool)

(declare-fun res!129478 () Bool)

(declare-fun e!171595 () Bool)

(assert (=> b!264928 (=> (not res!129478) (not e!171595))))

(declare-datatypes ((array!12751 0))(
  ( (array!12752 (arr!6034 (Array (_ BitVec 32) (_ BitVec 64))) (size!6386 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12751)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12751 (_ BitVec 32)) Bool)

(assert (=> b!264928 (= res!129478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!264929 () Bool)

(declare-fun res!129483 () Bool)

(declare-fun e!171594 () Bool)

(assert (=> b!264929 (=> (not res!129483) (not e!171594))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12751 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264929 (= res!129483 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264930 () Bool)

(declare-fun res!129482 () Bool)

(assert (=> b!264930 (=> (not res!129482) (not e!171594))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264930 (= res!129482 (and (= (size!6386 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6386 a!3436))))))

(declare-fun b!264931 () Bool)

(declare-fun res!129481 () Bool)

(assert (=> b!264931 (=> (not res!129481) (not e!171594))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264931 (= res!129481 (validKeyInArray!0 k!2698))))

(declare-fun res!129479 () Bool)

(assert (=> start!25468 (=> (not res!129479) (not e!171594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25468 (= res!129479 (validMask!0 mask!4002))))

(assert (=> start!25468 e!171594))

(assert (=> start!25468 true))

(declare-fun array_inv!3988 (array!12751) Bool)

(assert (=> start!25468 (array_inv!3988 a!3436)))

(declare-fun b!264932 () Bool)

(assert (=> b!264932 (= e!171594 e!171595)))

(declare-fun res!129480 () Bool)

(assert (=> b!264932 (=> (not res!129480) (not e!171595))))

(declare-datatypes ((SeekEntryResult!1236 0))(
  ( (MissingZero!1236 (index!7114 (_ BitVec 32))) (Found!1236 (index!7115 (_ BitVec 32))) (Intermediate!1236 (undefined!2048 Bool) (index!7116 (_ BitVec 32)) (x!25409 (_ BitVec 32))) (Undefined!1236) (MissingVacant!1236 (index!7117 (_ BitVec 32))) )
))
(declare-fun lt!133973 () SeekEntryResult!1236)

(assert (=> b!264932 (= res!129480 (or (= lt!133973 (MissingZero!1236 i!1355)) (= lt!133973 (MissingVacant!1236 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12751 (_ BitVec 32)) SeekEntryResult!1236)

(assert (=> b!264932 (= lt!133973 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!264933 () Bool)

(assert (=> b!264933 (= e!171595 (bvsgt #b00000000000000000000000000000000 (size!6386 a!3436)))))

(assert (= (and start!25468 res!129479) b!264930))

(assert (= (and b!264930 res!129482) b!264931))

(assert (= (and b!264931 res!129481) b!264929))

(assert (= (and b!264929 res!129483) b!264932))

(assert (= (and b!264932 res!129480) b!264928))

(assert (= (and b!264928 res!129478) b!264933))

(declare-fun m!281903 () Bool)

(assert (=> b!264929 m!281903))

(declare-fun m!281905 () Bool)

(assert (=> b!264932 m!281905))

(declare-fun m!281907 () Bool)

(assert (=> start!25468 m!281907))

(declare-fun m!281909 () Bool)

(assert (=> start!25468 m!281909))

(declare-fun m!281911 () Bool)

(assert (=> b!264931 m!281911))

(declare-fun m!281913 () Bool)

(assert (=> b!264928 m!281913))

(push 1)

