; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53204 () Bool)

(assert start!53204)

(declare-fun b!577940 () Bool)

(declare-fun res!365908 () Bool)

(declare-fun e!332421 () Bool)

(assert (=> b!577940 (=> (not res!365908) (not e!332421))))

(declare-datatypes ((array!36059 0))(
  ( (array!36060 (arr!17300 (Array (_ BitVec 32) (_ BitVec 64))) (size!17664 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36059)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36059 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577940 (= res!365908 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577941 () Bool)

(declare-fun e!332422 () Bool)

(assert (=> b!577941 (= e!332422 false)))

(declare-fun lt!264149 () Bool)

(declare-datatypes ((List!11394 0))(
  ( (Nil!11391) (Cons!11390 (h!12435 (_ BitVec 64)) (t!17630 List!11394)) )
))
(declare-fun arrayNoDuplicates!0 (array!36059 (_ BitVec 32) List!11394) Bool)

(assert (=> b!577941 (= lt!264149 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11391))))

(declare-fun b!577942 () Bool)

(declare-fun res!365910 () Bool)

(assert (=> b!577942 (=> (not res!365910) (not e!332421))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577942 (= res!365910 (validKeyInArray!0 (select (arr!17300 a!2986) j!136)))))

(declare-fun res!365911 () Bool)

(assert (=> start!53204 (=> (not res!365911) (not e!332421))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53204 (= res!365911 (validMask!0 mask!3053))))

(assert (=> start!53204 e!332421))

(assert (=> start!53204 true))

(declare-fun array_inv!13074 (array!36059) Bool)

(assert (=> start!53204 (array_inv!13074 a!2986)))

(declare-fun b!577943 () Bool)

(declare-fun res!365906 () Bool)

(assert (=> b!577943 (=> (not res!365906) (not e!332421))))

(assert (=> b!577943 (= res!365906 (validKeyInArray!0 k!1786))))

(declare-fun b!577944 () Bool)

(assert (=> b!577944 (= e!332421 e!332422)))

(declare-fun res!365907 () Bool)

(assert (=> b!577944 (=> (not res!365907) (not e!332422))))

(declare-datatypes ((SeekEntryResult!5747 0))(
  ( (MissingZero!5747 (index!25215 (_ BitVec 32))) (Found!5747 (index!25216 (_ BitVec 32))) (Intermediate!5747 (undefined!6559 Bool) (index!25217 (_ BitVec 32)) (x!54147 (_ BitVec 32))) (Undefined!5747) (MissingVacant!5747 (index!25218 (_ BitVec 32))) )
))
(declare-fun lt!264148 () SeekEntryResult!5747)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577944 (= res!365907 (or (= lt!264148 (MissingZero!5747 i!1108)) (= lt!264148 (MissingVacant!5747 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36059 (_ BitVec 32)) SeekEntryResult!5747)

(assert (=> b!577944 (= lt!264148 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!577945 () Bool)

(declare-fun res!365909 () Bool)

(assert (=> b!577945 (=> (not res!365909) (not e!332421))))

(assert (=> b!577945 (= res!365909 (and (= (size!17664 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17664 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17664 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577946 () Bool)

(declare-fun res!365912 () Bool)

(assert (=> b!577946 (=> (not res!365912) (not e!332422))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36059 (_ BitVec 32)) Bool)

(assert (=> b!577946 (= res!365912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53204 res!365911) b!577945))

(assert (= (and b!577945 res!365909) b!577942))

(assert (= (and b!577942 res!365910) b!577943))

(assert (= (and b!577943 res!365906) b!577940))

(assert (= (and b!577940 res!365908) b!577944))

(assert (= (and b!577944 res!365907) b!577946))

(assert (= (and b!577946 res!365912) b!577941))

(declare-fun m!556711 () Bool)

(assert (=> b!577944 m!556711))

(declare-fun m!556713 () Bool)

(assert (=> b!577943 m!556713))

(declare-fun m!556715 () Bool)

(assert (=> start!53204 m!556715))

(declare-fun m!556717 () Bool)

(assert (=> start!53204 m!556717))

(declare-fun m!556719 () Bool)

(assert (=> b!577946 m!556719))

(declare-fun m!556721 () Bool)

(assert (=> b!577942 m!556721))

(assert (=> b!577942 m!556721))

(declare-fun m!556723 () Bool)

(assert (=> b!577942 m!556723))

(declare-fun m!556725 () Bool)

(assert (=> b!577940 m!556725))

(declare-fun m!556727 () Bool)

(assert (=> b!577941 m!556727))

(push 1)

(assert (not b!577942))

(assert (not b!577941))

(assert (not b!577943))

