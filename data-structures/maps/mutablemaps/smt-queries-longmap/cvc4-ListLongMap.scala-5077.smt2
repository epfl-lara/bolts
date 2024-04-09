; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68996 () Bool)

(assert start!68996)

(declare-fun res!549125 () Bool)

(declare-fun e!445658 () Bool)

(assert (=> start!68996 (=> (not res!549125) (not e!445658))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68996 (= res!549125 (validMask!0 mask!3266))))

(assert (=> start!68996 e!445658))

(assert (=> start!68996 true))

(declare-datatypes ((array!43737 0))(
  ( (array!43738 (arr!20945 (Array (_ BitVec 32) (_ BitVec 64))) (size!21366 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43737)

(declare-fun array_inv!16719 (array!43737) Bool)

(assert (=> start!68996 (array_inv!16719 a!3170)))

(declare-fun b!804435 () Bool)

(declare-fun res!549127 () Bool)

(assert (=> b!804435 (=> (not res!549127) (not e!445658))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804435 (= res!549127 (validKeyInArray!0 (select (arr!20945 a!3170) j!153)))))

(declare-fun b!804436 () Bool)

(declare-fun e!445660 () Bool)

(assert (=> b!804436 (= e!445658 e!445660)))

(declare-fun res!549129 () Bool)

(assert (=> b!804436 (=> (not res!549129) (not e!445660))))

(declare-datatypes ((SeekEntryResult!8543 0))(
  ( (MissingZero!8543 (index!36539 (_ BitVec 32))) (Found!8543 (index!36540 (_ BitVec 32))) (Intermediate!8543 (undefined!9355 Bool) (index!36541 (_ BitVec 32)) (x!67390 (_ BitVec 32))) (Undefined!8543) (MissingVacant!8543 (index!36542 (_ BitVec 32))) )
))
(declare-fun lt!360144 () SeekEntryResult!8543)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804436 (= res!549129 (or (= lt!360144 (MissingZero!8543 i!1163)) (= lt!360144 (MissingVacant!8543 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43737 (_ BitVec 32)) SeekEntryResult!8543)

(assert (=> b!804436 (= lt!360144 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804437 () Bool)

(declare-fun res!549124 () Bool)

(assert (=> b!804437 (=> (not res!549124) (not e!445660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43737 (_ BitVec 32)) Bool)

(assert (=> b!804437 (= res!549124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804438 () Bool)

(declare-fun res!549126 () Bool)

(assert (=> b!804438 (=> (not res!549126) (not e!445658))))

(declare-fun arrayContainsKey!0 (array!43737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804438 (= res!549126 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804439 () Bool)

(assert (=> b!804439 (= e!445660 false)))

(declare-fun lt!360145 () Bool)

(declare-datatypes ((List!14961 0))(
  ( (Nil!14958) (Cons!14957 (h!16086 (_ BitVec 64)) (t!21284 List!14961)) )
))
(declare-fun arrayNoDuplicates!0 (array!43737 (_ BitVec 32) List!14961) Bool)

(assert (=> b!804439 (= lt!360145 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14958))))

(declare-fun b!804440 () Bool)

(declare-fun res!549130 () Bool)

(assert (=> b!804440 (=> (not res!549130) (not e!445658))))

(assert (=> b!804440 (= res!549130 (validKeyInArray!0 k!2044))))

(declare-fun b!804441 () Bool)

(declare-fun res!549128 () Bool)

(assert (=> b!804441 (=> (not res!549128) (not e!445658))))

(assert (=> b!804441 (= res!549128 (and (= (size!21366 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21366 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21366 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68996 res!549125) b!804441))

(assert (= (and b!804441 res!549128) b!804435))

(assert (= (and b!804435 res!549127) b!804440))

(assert (= (and b!804440 res!549130) b!804438))

(assert (= (and b!804438 res!549126) b!804436))

(assert (= (and b!804436 res!549129) b!804437))

(assert (= (and b!804437 res!549124) b!804439))

(declare-fun m!746383 () Bool)

(assert (=> b!804439 m!746383))

(declare-fun m!746385 () Bool)

(assert (=> b!804437 m!746385))

(declare-fun m!746387 () Bool)

(assert (=> b!804435 m!746387))

(assert (=> b!804435 m!746387))

(declare-fun m!746389 () Bool)

(assert (=> b!804435 m!746389))

(declare-fun m!746391 () Bool)

(assert (=> b!804440 m!746391))

(declare-fun m!746393 () Bool)

(assert (=> b!804438 m!746393))

(declare-fun m!746395 () Bool)

(assert (=> start!68996 m!746395))

(declare-fun m!746397 () Bool)

(assert (=> start!68996 m!746397))

(declare-fun m!746399 () Bool)

(assert (=> b!804436 m!746399))

(push 1)

(assert (not b!804439))

(assert (not b!804435))

(assert (not b!804438))

(assert (not b!804440))

(assert (not b!804436))

(assert (not b!804437))

