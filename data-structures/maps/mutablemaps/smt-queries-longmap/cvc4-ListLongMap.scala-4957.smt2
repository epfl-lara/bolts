; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68276 () Bool)

(assert start!68276)

(declare-fun b!792778 () Bool)

(declare-fun res!537472 () Bool)

(declare-fun e!440502 () Bool)

(assert (=> b!792778 (=> (not res!537472) (not e!440502))))

(declare-datatypes ((array!43017 0))(
  ( (array!43018 (arr!20585 (Array (_ BitVec 32) (_ BitVec 64))) (size!21006 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43017)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43017 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792778 (= res!537472 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792779 () Bool)

(declare-fun res!537468 () Bool)

(declare-fun e!440503 () Bool)

(assert (=> b!792779 (=> (not res!537468) (not e!440503))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43017 (_ BitVec 32)) Bool)

(assert (=> b!792779 (= res!537468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun b!792780 () Bool)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792780 (= e!440503 (not (validKeyInArray!0 (select (store (arr!20585 a!3170) i!1163 k!2044) j!153))))))

(declare-fun b!792781 () Bool)

(declare-fun res!537467 () Bool)

(assert (=> b!792781 (=> (not res!537467) (not e!440502))))

(assert (=> b!792781 (= res!537467 (validKeyInArray!0 (select (arr!20585 a!3170) j!153)))))

(declare-fun b!792782 () Bool)

(declare-fun res!537473 () Bool)

(assert (=> b!792782 (=> (not res!537473) (not e!440502))))

(assert (=> b!792782 (= res!537473 (and (= (size!21006 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21006 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21006 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!537475 () Bool)

(assert (=> start!68276 (=> (not res!537475) (not e!440502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68276 (= res!537475 (validMask!0 mask!3266))))

(assert (=> start!68276 e!440502))

(assert (=> start!68276 true))

(declare-fun array_inv!16359 (array!43017) Bool)

(assert (=> start!68276 (array_inv!16359 a!3170)))

(declare-fun b!792783 () Bool)

(declare-fun res!537469 () Bool)

(assert (=> b!792783 (=> (not res!537469) (not e!440503))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!792783 (= res!537469 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21006 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20585 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21006 a!3170)) (= (select (arr!20585 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvsge mask!3266 #b00000000000000000000000000000000)))))

(declare-fun b!792784 () Bool)

(assert (=> b!792784 (= e!440502 e!440503)))

(declare-fun res!537470 () Bool)

(assert (=> b!792784 (=> (not res!537470) (not e!440503))))

(declare-datatypes ((SeekEntryResult!8183 0))(
  ( (MissingZero!8183 (index!35099 (_ BitVec 32))) (Found!8183 (index!35100 (_ BitVec 32))) (Intermediate!8183 (undefined!8995 Bool) (index!35101 (_ BitVec 32)) (x!66070 (_ BitVec 32))) (Undefined!8183) (MissingVacant!8183 (index!35102 (_ BitVec 32))) )
))
(declare-fun lt!353557 () SeekEntryResult!8183)

(assert (=> b!792784 (= res!537470 (or (= lt!353557 (MissingZero!8183 i!1163)) (= lt!353557 (MissingVacant!8183 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43017 (_ BitVec 32)) SeekEntryResult!8183)

(assert (=> b!792784 (= lt!353557 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!792785 () Bool)

(declare-fun res!537474 () Bool)

(assert (=> b!792785 (=> (not res!537474) (not e!440502))))

(assert (=> b!792785 (= res!537474 (validKeyInArray!0 k!2044))))

(declare-fun b!792786 () Bool)

(declare-fun res!537471 () Bool)

(assert (=> b!792786 (=> (not res!537471) (not e!440503))))

(declare-datatypes ((List!14601 0))(
  ( (Nil!14598) (Cons!14597 (h!15726 (_ BitVec 64)) (t!20924 List!14601)) )
))
(declare-fun arrayNoDuplicates!0 (array!43017 (_ BitVec 32) List!14601) Bool)

(assert (=> b!792786 (= res!537471 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14598))))

(assert (= (and start!68276 res!537475) b!792782))

(assert (= (and b!792782 res!537473) b!792781))

(assert (= (and b!792781 res!537467) b!792785))

(assert (= (and b!792785 res!537474) b!792778))

(assert (= (and b!792778 res!537472) b!792784))

(assert (= (and b!792784 res!537470) b!792779))

(assert (= (and b!792779 res!537468) b!792786))

(assert (= (and b!792786 res!537471) b!792783))

(assert (= (and b!792783 res!537469) b!792780))

(declare-fun m!733377 () Bool)

(assert (=> b!792780 m!733377))

(declare-fun m!733379 () Bool)

(assert (=> b!792780 m!733379))

(assert (=> b!792780 m!733379))

(declare-fun m!733381 () Bool)

(assert (=> b!792780 m!733381))

(declare-fun m!733383 () Bool)

(assert (=> b!792784 m!733383))

(declare-fun m!733385 () Bool)

(assert (=> b!792779 m!733385))

(declare-fun m!733387 () Bool)

(assert (=> start!68276 m!733387))

(declare-fun m!733389 () Bool)

(assert (=> start!68276 m!733389))

(declare-fun m!733391 () Bool)

(assert (=> b!792783 m!733391))

(declare-fun m!733393 () Bool)

(assert (=> b!792783 m!733393))

(declare-fun m!733395 () Bool)

(assert (=> b!792785 m!733395))

(declare-fun m!733397 () Bool)

(assert (=> b!792786 m!733397))

(declare-fun m!733399 () Bool)

(assert (=> b!792781 m!733399))

(assert (=> b!792781 m!733399))

(declare-fun m!733401 () Bool)

(assert (=> b!792781 m!733401))

(declare-fun m!733403 () Bool)

(assert (=> b!792778 m!733403))

(push 1)

(assert (not b!792785))

(assert (not b!792779))

(assert (not b!792781))

(assert (not b!792784))

(assert (not b!792786))

(assert (not b!792778))

(assert (not b!792780))

(assert (not start!68276))

(check-sat)

