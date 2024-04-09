; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131224 () Bool)

(assert start!131224)

(declare-fun b!1538963 () Bool)

(declare-fun res!1056084 () Bool)

(declare-fun e!856093 () Bool)

(assert (=> b!1538963 (=> (not res!1056084) (not e!856093))))

(declare-datatypes ((array!102216 0))(
  ( (array!102217 (arr!49318 (Array (_ BitVec 32) (_ BitVec 64))) (size!49869 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102216)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102216 (_ BitVec 32)) Bool)

(assert (=> b!1538963 (= res!1056084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538964 () Bool)

(declare-fun res!1056079 () Bool)

(assert (=> b!1538964 (=> (not res!1056079) (not e!856093))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1538964 (= res!1056079 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49869 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49869 a!2792)) (= (select (arr!49318 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538965 () Bool)

(declare-fun res!1056087 () Bool)

(assert (=> b!1538965 (=> (not res!1056087) (not e!856093))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1538965 (= res!1056087 (not (= (select (arr!49318 a!2792) index!463) (select (arr!49318 a!2792) j!64))))))

(declare-fun res!1056086 () Bool)

(assert (=> start!131224 (=> (not res!1056086) (not e!856093))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131224 (= res!1056086 (validMask!0 mask!2480))))

(assert (=> start!131224 e!856093))

(assert (=> start!131224 true))

(declare-fun array_inv!38263 (array!102216) Bool)

(assert (=> start!131224 (array_inv!38263 a!2792)))

(declare-fun b!1538966 () Bool)

(declare-fun res!1056082 () Bool)

(assert (=> b!1538966 (=> (not res!1056082) (not e!856093))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538966 (= res!1056082 (validKeyInArray!0 (select (arr!49318 a!2792) j!64)))))

(declare-fun b!1538967 () Bool)

(declare-fun res!1056081 () Bool)

(assert (=> b!1538967 (=> (not res!1056081) (not e!856093))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538967 (= res!1056081 (and (= (size!49869 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49869 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49869 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538968 () Bool)

(assert (=> b!1538968 (= e!856093 false)))

(declare-fun lt!664894 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538968 (= lt!664894 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538969 () Bool)

(declare-fun res!1056080 () Bool)

(assert (=> b!1538969 (=> (not res!1056080) (not e!856093))))

(declare-datatypes ((SeekEntryResult!13467 0))(
  ( (MissingZero!13467 (index!56262 (_ BitVec 32))) (Found!13467 (index!56263 (_ BitVec 32))) (Intermediate!13467 (undefined!14279 Bool) (index!56264 (_ BitVec 32)) (x!137995 (_ BitVec 32))) (Undefined!13467) (MissingVacant!13467 (index!56265 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102216 (_ BitVec 32)) SeekEntryResult!13467)

(assert (=> b!1538969 (= res!1056080 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49318 a!2792) j!64) a!2792 mask!2480) (Found!13467 j!64)))))

(declare-fun b!1538970 () Bool)

(declare-fun res!1056083 () Bool)

(assert (=> b!1538970 (=> (not res!1056083) (not e!856093))))

(declare-datatypes ((List!35972 0))(
  ( (Nil!35969) (Cons!35968 (h!37414 (_ BitVec 64)) (t!50673 List!35972)) )
))
(declare-fun arrayNoDuplicates!0 (array!102216 (_ BitVec 32) List!35972) Bool)

(assert (=> b!1538970 (= res!1056083 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35969))))

(declare-fun b!1538971 () Bool)

(declare-fun res!1056085 () Bool)

(assert (=> b!1538971 (=> (not res!1056085) (not e!856093))))

(assert (=> b!1538971 (= res!1056085 (validKeyInArray!0 (select (arr!49318 a!2792) i!951)))))

(assert (= (and start!131224 res!1056086) b!1538967))

(assert (= (and b!1538967 res!1056081) b!1538971))

(assert (= (and b!1538971 res!1056085) b!1538966))

(assert (= (and b!1538966 res!1056082) b!1538963))

(assert (= (and b!1538963 res!1056084) b!1538970))

(assert (= (and b!1538970 res!1056083) b!1538964))

(assert (= (and b!1538964 res!1056079) b!1538969))

(assert (= (and b!1538969 res!1056080) b!1538965))

(assert (= (and b!1538965 res!1056087) b!1538968))

(declare-fun m!1421373 () Bool)

(assert (=> b!1538970 m!1421373))

(declare-fun m!1421375 () Bool)

(assert (=> b!1538965 m!1421375))

(declare-fun m!1421377 () Bool)

(assert (=> b!1538965 m!1421377))

(declare-fun m!1421379 () Bool)

(assert (=> start!131224 m!1421379))

(declare-fun m!1421381 () Bool)

(assert (=> start!131224 m!1421381))

(declare-fun m!1421383 () Bool)

(assert (=> b!1538964 m!1421383))

(assert (=> b!1538969 m!1421377))

(assert (=> b!1538969 m!1421377))

(declare-fun m!1421385 () Bool)

(assert (=> b!1538969 m!1421385))

(assert (=> b!1538966 m!1421377))

(assert (=> b!1538966 m!1421377))

(declare-fun m!1421387 () Bool)

(assert (=> b!1538966 m!1421387))

(declare-fun m!1421389 () Bool)

(assert (=> b!1538971 m!1421389))

(assert (=> b!1538971 m!1421389))

(declare-fun m!1421391 () Bool)

(assert (=> b!1538971 m!1421391))

(declare-fun m!1421393 () Bool)

(assert (=> b!1538963 m!1421393))

(declare-fun m!1421395 () Bool)

(assert (=> b!1538968 m!1421395))

(push 1)

(assert (not b!1538968))

(assert (not b!1538963))

(assert (not start!131224))

(assert (not b!1538971))

(assert (not b!1538966))

(assert (not b!1538970))

(assert (not b!1538969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

