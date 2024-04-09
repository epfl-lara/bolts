; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53200 () Bool)

(assert start!53200)

(declare-fun b!577898 () Bool)

(declare-fun res!365864 () Bool)

(declare-fun e!332402 () Bool)

(assert (=> b!577898 (=> (not res!365864) (not e!332402))))

(declare-datatypes ((array!36055 0))(
  ( (array!36056 (arr!17298 (Array (_ BitVec 32) (_ BitVec 64))) (size!17662 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36055)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36055 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577898 (= res!365864 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577899 () Bool)

(declare-fun res!365869 () Bool)

(assert (=> b!577899 (=> (not res!365869) (not e!332402))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577899 (= res!365869 (validKeyInArray!0 (select (arr!17298 a!2986) j!136)))))

(declare-fun res!365865 () Bool)

(assert (=> start!53200 (=> (not res!365865) (not e!332402))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53200 (= res!365865 (validMask!0 mask!3053))))

(assert (=> start!53200 e!332402))

(assert (=> start!53200 true))

(declare-fun array_inv!13072 (array!36055) Bool)

(assert (=> start!53200 (array_inv!13072 a!2986)))

(declare-fun b!577900 () Bool)

(declare-fun res!365870 () Bool)

(declare-fun e!332403 () Bool)

(assert (=> b!577900 (=> (not res!365870) (not e!332403))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36055 (_ BitVec 32)) Bool)

(assert (=> b!577900 (= res!365870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!577901 () Bool)

(declare-fun res!365867 () Bool)

(assert (=> b!577901 (=> (not res!365867) (not e!332402))))

(assert (=> b!577901 (= res!365867 (validKeyInArray!0 k!1786))))

(declare-fun b!577902 () Bool)

(assert (=> b!577902 (= e!332403 false)))

(declare-fun lt!264136 () Bool)

(declare-datatypes ((List!11392 0))(
  ( (Nil!11389) (Cons!11388 (h!12433 (_ BitVec 64)) (t!17628 List!11392)) )
))
(declare-fun arrayNoDuplicates!0 (array!36055 (_ BitVec 32) List!11392) Bool)

(assert (=> b!577902 (= lt!264136 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11389))))

(declare-fun b!577903 () Bool)

(assert (=> b!577903 (= e!332402 e!332403)))

(declare-fun res!365866 () Bool)

(assert (=> b!577903 (=> (not res!365866) (not e!332403))))

(declare-datatypes ((SeekEntryResult!5745 0))(
  ( (MissingZero!5745 (index!25207 (_ BitVec 32))) (Found!5745 (index!25208 (_ BitVec 32))) (Intermediate!5745 (undefined!6557 Bool) (index!25209 (_ BitVec 32)) (x!54145 (_ BitVec 32))) (Undefined!5745) (MissingVacant!5745 (index!25210 (_ BitVec 32))) )
))
(declare-fun lt!264137 () SeekEntryResult!5745)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577903 (= res!365866 (or (= lt!264137 (MissingZero!5745 i!1108)) (= lt!264137 (MissingVacant!5745 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36055 (_ BitVec 32)) SeekEntryResult!5745)

(assert (=> b!577903 (= lt!264137 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!577904 () Bool)

(declare-fun res!365868 () Bool)

(assert (=> b!577904 (=> (not res!365868) (not e!332402))))

(assert (=> b!577904 (= res!365868 (and (= (size!17662 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17662 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17662 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53200 res!365865) b!577904))

(assert (= (and b!577904 res!365868) b!577899))

(assert (= (and b!577899 res!365869) b!577901))

(assert (= (and b!577901 res!365867) b!577898))

(assert (= (and b!577898 res!365864) b!577903))

(assert (= (and b!577903 res!365866) b!577900))

(assert (= (and b!577900 res!365870) b!577902))

(declare-fun m!556675 () Bool)

(assert (=> b!577902 m!556675))

(declare-fun m!556677 () Bool)

(assert (=> start!53200 m!556677))

(declare-fun m!556679 () Bool)

(assert (=> start!53200 m!556679))

(declare-fun m!556681 () Bool)

(assert (=> b!577900 m!556681))

(declare-fun m!556683 () Bool)

(assert (=> b!577901 m!556683))

(declare-fun m!556685 () Bool)

(assert (=> b!577898 m!556685))

(declare-fun m!556687 () Bool)

(assert (=> b!577899 m!556687))

(assert (=> b!577899 m!556687))

(declare-fun m!556689 () Bool)

(assert (=> b!577899 m!556689))

(declare-fun m!556691 () Bool)

(assert (=> b!577903 m!556691))

(push 1)

