; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131222 () Bool)

(assert start!131222)

(declare-fun b!1538936 () Bool)

(declare-fun res!1056054 () Bool)

(declare-fun e!856088 () Bool)

(assert (=> b!1538936 (=> (not res!1056054) (not e!856088))))

(declare-datatypes ((array!102214 0))(
  ( (array!102215 (arr!49317 (Array (_ BitVec 32) (_ BitVec 64))) (size!49868 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102214)

(declare-datatypes ((List!35971 0))(
  ( (Nil!35968) (Cons!35967 (h!37413 (_ BitVec 64)) (t!50672 List!35971)) )
))
(declare-fun arrayNoDuplicates!0 (array!102214 (_ BitVec 32) List!35971) Bool)

(assert (=> b!1538936 (= res!1056054 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35968))))

(declare-fun b!1538937 () Bool)

(declare-fun res!1056060 () Bool)

(assert (=> b!1538937 (=> (not res!1056060) (not e!856088))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538937 (= res!1056060 (validKeyInArray!0 (select (arr!49317 a!2792) i!951)))))

(declare-fun b!1538938 () Bool)

(declare-fun res!1056055 () Bool)

(assert (=> b!1538938 (=> (not res!1056055) (not e!856088))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102214 (_ BitVec 32)) Bool)

(assert (=> b!1538938 (= res!1056055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538939 () Bool)

(assert (=> b!1538939 (= e!856088 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664891 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538939 (= lt!664891 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538940 () Bool)

(declare-fun res!1056053 () Bool)

(assert (=> b!1538940 (=> (not res!1056053) (not e!856088))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1538940 (= res!1056053 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49868 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49868 a!2792)) (= (select (arr!49317 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538941 () Bool)

(declare-fun res!1056057 () Bool)

(assert (=> b!1538941 (=> (not res!1056057) (not e!856088))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1538941 (= res!1056057 (and (= (size!49868 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49868 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49868 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538942 () Bool)

(declare-fun res!1056059 () Bool)

(assert (=> b!1538942 (=> (not res!1056059) (not e!856088))))

(assert (=> b!1538942 (= res!1056059 (validKeyInArray!0 (select (arr!49317 a!2792) j!64)))))

(declare-fun b!1538944 () Bool)

(declare-fun res!1056058 () Bool)

(assert (=> b!1538944 (=> (not res!1056058) (not e!856088))))

(assert (=> b!1538944 (= res!1056058 (not (= (select (arr!49317 a!2792) index!463) (select (arr!49317 a!2792) j!64))))))

(declare-fun res!1056056 () Bool)

(assert (=> start!131222 (=> (not res!1056056) (not e!856088))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131222 (= res!1056056 (validMask!0 mask!2480))))

(assert (=> start!131222 e!856088))

(assert (=> start!131222 true))

(declare-fun array_inv!38262 (array!102214) Bool)

(assert (=> start!131222 (array_inv!38262 a!2792)))

(declare-fun b!1538943 () Bool)

(declare-fun res!1056052 () Bool)

(assert (=> b!1538943 (=> (not res!1056052) (not e!856088))))

(declare-datatypes ((SeekEntryResult!13466 0))(
  ( (MissingZero!13466 (index!56258 (_ BitVec 32))) (Found!13466 (index!56259 (_ BitVec 32))) (Intermediate!13466 (undefined!14278 Bool) (index!56260 (_ BitVec 32)) (x!137986 (_ BitVec 32))) (Undefined!13466) (MissingVacant!13466 (index!56261 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102214 (_ BitVec 32)) SeekEntryResult!13466)

(assert (=> b!1538943 (= res!1056052 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49317 a!2792) j!64) a!2792 mask!2480) (Found!13466 j!64)))))

(assert (= (and start!131222 res!1056056) b!1538941))

(assert (= (and b!1538941 res!1056057) b!1538937))

(assert (= (and b!1538937 res!1056060) b!1538942))

(assert (= (and b!1538942 res!1056059) b!1538938))

(assert (= (and b!1538938 res!1056055) b!1538936))

(assert (= (and b!1538936 res!1056054) b!1538940))

(assert (= (and b!1538940 res!1056053) b!1538943))

(assert (= (and b!1538943 res!1056052) b!1538944))

(assert (= (and b!1538944 res!1056058) b!1538939))

(declare-fun m!1421349 () Bool)

(assert (=> b!1538940 m!1421349))

(declare-fun m!1421351 () Bool)

(assert (=> b!1538938 m!1421351))

(declare-fun m!1421353 () Bool)

(assert (=> b!1538939 m!1421353))

(declare-fun m!1421355 () Bool)

(assert (=> b!1538943 m!1421355))

(assert (=> b!1538943 m!1421355))

(declare-fun m!1421357 () Bool)

(assert (=> b!1538943 m!1421357))

(declare-fun m!1421359 () Bool)

(assert (=> b!1538937 m!1421359))

(assert (=> b!1538937 m!1421359))

(declare-fun m!1421361 () Bool)

(assert (=> b!1538937 m!1421361))

(assert (=> b!1538942 m!1421355))

(assert (=> b!1538942 m!1421355))

(declare-fun m!1421363 () Bool)

(assert (=> b!1538942 m!1421363))

(declare-fun m!1421365 () Bool)

(assert (=> b!1538936 m!1421365))

(declare-fun m!1421367 () Bool)

(assert (=> b!1538944 m!1421367))

(assert (=> b!1538944 m!1421355))

(declare-fun m!1421369 () Bool)

(assert (=> start!131222 m!1421369))

(declare-fun m!1421371 () Bool)

(assert (=> start!131222 m!1421371))

(push 1)

(assert (not b!1538938))

(assert (not b!1538943))

(assert (not b!1538942))

(assert (not b!1538939))

(assert (not b!1538936))

(assert (not start!131222))

(assert (not b!1538937))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

