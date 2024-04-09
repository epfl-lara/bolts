; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53506 () Bool)

(assert start!53506)

(declare-fun b!581943 () Bool)

(declare-fun res!369912 () Bool)

(declare-fun e!333780 () Bool)

(assert (=> b!581943 (=> (not res!369912) (not e!333780))))

(declare-datatypes ((array!36361 0))(
  ( (array!36362 (arr!17451 (Array (_ BitVec 32) (_ BitVec 64))) (size!17815 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36361)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581943 (= res!369912 (validKeyInArray!0 (select (arr!17451 a!2986) j!136)))))

(declare-fun b!581944 () Bool)

(declare-fun res!369916 () Bool)

(assert (=> b!581944 (=> (not res!369916) (not e!333780))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581944 (= res!369916 (and (= (size!17815 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17815 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17815 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581945 () Bool)

(declare-fun e!333779 () Bool)

(assert (=> b!581945 (= e!333780 e!333779)))

(declare-fun res!369914 () Bool)

(assert (=> b!581945 (=> (not res!369914) (not e!333779))))

(declare-datatypes ((SeekEntryResult!5898 0))(
  ( (MissingZero!5898 (index!25819 (_ BitVec 32))) (Found!5898 (index!25820 (_ BitVec 32))) (Intermediate!5898 (undefined!6710 Bool) (index!25821 (_ BitVec 32)) (x!54706 (_ BitVec 32))) (Undefined!5898) (MissingVacant!5898 (index!25822 (_ BitVec 32))) )
))
(declare-fun lt!265010 () SeekEntryResult!5898)

(assert (=> b!581945 (= res!369914 (or (= lt!265010 (MissingZero!5898 i!1108)) (= lt!265010 (MissingVacant!5898 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36361 (_ BitVec 32)) SeekEntryResult!5898)

(assert (=> b!581945 (= lt!265010 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581946 () Bool)

(declare-fun res!369910 () Bool)

(assert (=> b!581946 (=> (not res!369910) (not e!333780))))

(declare-fun arrayContainsKey!0 (array!36361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581946 (= res!369910 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581947 () Bool)

(declare-fun res!369915 () Bool)

(assert (=> b!581947 (=> (not res!369915) (not e!333779))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!581947 (= res!369915 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17451 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17451 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581948 () Bool)

(declare-fun res!369911 () Bool)

(assert (=> b!581948 (=> (not res!369911) (not e!333779))))

(declare-datatypes ((List!11545 0))(
  ( (Nil!11542) (Cons!11541 (h!12586 (_ BitVec 64)) (t!17781 List!11545)) )
))
(declare-fun arrayNoDuplicates!0 (array!36361 (_ BitVec 32) List!11545) Bool)

(assert (=> b!581948 (= res!369911 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11542))))

(declare-fun b!581949 () Bool)

(declare-fun res!369917 () Bool)

(assert (=> b!581949 (=> (not res!369917) (not e!333780))))

(assert (=> b!581949 (= res!369917 (validKeyInArray!0 k!1786))))

(declare-fun b!581951 () Bool)

(assert (=> b!581951 (= e!333779 false)))

(declare-fun lt!265009 () SeekEntryResult!5898)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36361 (_ BitVec 32)) SeekEntryResult!5898)

(assert (=> b!581951 (= lt!265009 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17451 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581950 () Bool)

(declare-fun res!369913 () Bool)

(assert (=> b!581950 (=> (not res!369913) (not e!333779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36361 (_ BitVec 32)) Bool)

(assert (=> b!581950 (= res!369913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!369909 () Bool)

(assert (=> start!53506 (=> (not res!369909) (not e!333780))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53506 (= res!369909 (validMask!0 mask!3053))))

(assert (=> start!53506 e!333780))

(assert (=> start!53506 true))

(declare-fun array_inv!13225 (array!36361) Bool)

(assert (=> start!53506 (array_inv!13225 a!2986)))

(assert (= (and start!53506 res!369909) b!581944))

(assert (= (and b!581944 res!369916) b!581943))

(assert (= (and b!581943 res!369912) b!581949))

(assert (= (and b!581949 res!369917) b!581946))

(assert (= (and b!581946 res!369910) b!581945))

(assert (= (and b!581945 res!369914) b!581950))

(assert (= (and b!581950 res!369913) b!581948))

(assert (= (and b!581948 res!369911) b!581947))

(assert (= (and b!581947 res!369915) b!581951))

(declare-fun m!560509 () Bool)

(assert (=> b!581946 m!560509))

(declare-fun m!560511 () Bool)

(assert (=> b!581947 m!560511))

(declare-fun m!560513 () Bool)

(assert (=> b!581947 m!560513))

(declare-fun m!560515 () Bool)

(assert (=> b!581947 m!560515))

(declare-fun m!560517 () Bool)

(assert (=> b!581943 m!560517))

(assert (=> b!581943 m!560517))

(declare-fun m!560519 () Bool)

(assert (=> b!581943 m!560519))

(declare-fun m!560521 () Bool)

(assert (=> b!581949 m!560521))

(assert (=> b!581951 m!560517))

(assert (=> b!581951 m!560517))

(declare-fun m!560523 () Bool)

(assert (=> b!581951 m!560523))

(declare-fun m!560525 () Bool)

(assert (=> start!53506 m!560525))

(declare-fun m!560527 () Bool)

(assert (=> start!53506 m!560527))

(declare-fun m!560529 () Bool)

(assert (=> b!581948 m!560529))

(declare-fun m!560531 () Bool)

(assert (=> b!581945 m!560531))

(declare-fun m!560533 () Bool)

(assert (=> b!581950 m!560533))

(push 1)

