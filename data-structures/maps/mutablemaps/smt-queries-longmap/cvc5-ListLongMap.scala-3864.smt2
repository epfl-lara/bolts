; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53212 () Bool)

(assert start!53212)

(declare-fun b!578033 () Bool)

(declare-fun res!366002 () Bool)

(declare-fun e!332457 () Bool)

(assert (=> b!578033 (=> (not res!366002) (not e!332457))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36067 0))(
  ( (array!36068 (arr!17304 (Array (_ BitVec 32) (_ BitVec 64))) (size!17668 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36067)

(assert (=> b!578033 (= res!366002 (and (= (size!17668 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17668 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17668 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578034 () Bool)

(declare-fun res!366003 () Bool)

(assert (=> b!578034 (=> (not res!366003) (not e!332457))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578034 (= res!366003 (validKeyInArray!0 (select (arr!17304 a!2986) j!136)))))

(declare-fun res!366005 () Bool)

(assert (=> start!53212 (=> (not res!366005) (not e!332457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53212 (= res!366005 (validMask!0 mask!3053))))

(assert (=> start!53212 e!332457))

(assert (=> start!53212 true))

(declare-fun array_inv!13078 (array!36067) Bool)

(assert (=> start!53212 (array_inv!13078 a!2986)))

(declare-fun b!578035 () Bool)

(declare-fun e!332456 () Bool)

(assert (=> b!578035 (= e!332457 e!332456)))

(declare-fun res!366004 () Bool)

(assert (=> b!578035 (=> (not res!366004) (not e!332456))))

(declare-datatypes ((SeekEntryResult!5751 0))(
  ( (MissingZero!5751 (index!25231 (_ BitVec 32))) (Found!5751 (index!25232 (_ BitVec 32))) (Intermediate!5751 (undefined!6563 Bool) (index!25233 (_ BitVec 32)) (x!54167 (_ BitVec 32))) (Undefined!5751) (MissingVacant!5751 (index!25234 (_ BitVec 32))) )
))
(declare-fun lt!264163 () SeekEntryResult!5751)

(assert (=> b!578035 (= res!366004 (or (= lt!264163 (MissingZero!5751 i!1108)) (= lt!264163 (MissingVacant!5751 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36067 (_ BitVec 32)) SeekEntryResult!5751)

(assert (=> b!578035 (= lt!264163 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578036 () Bool)

(assert (=> b!578036 (= e!332456 false)))

(declare-fun lt!264164 () Bool)

(declare-datatypes ((List!11398 0))(
  ( (Nil!11395) (Cons!11394 (h!12439 (_ BitVec 64)) (t!17634 List!11398)) )
))
(declare-fun arrayNoDuplicates!0 (array!36067 (_ BitVec 32) List!11398) Bool)

(assert (=> b!578036 (= lt!264164 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11395))))

(declare-fun b!578037 () Bool)

(declare-fun res!366001 () Bool)

(assert (=> b!578037 (=> (not res!366001) (not e!332457))))

(declare-fun arrayContainsKey!0 (array!36067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578037 (= res!366001 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578038 () Bool)

(declare-fun res!365999 () Bool)

(assert (=> b!578038 (=> (not res!365999) (not e!332456))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36067 (_ BitVec 32)) Bool)

(assert (=> b!578038 (= res!365999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578039 () Bool)

(declare-fun res!366000 () Bool)

(assert (=> b!578039 (=> (not res!366000) (not e!332457))))

(assert (=> b!578039 (= res!366000 (validKeyInArray!0 k!1786))))

(assert (= (and start!53212 res!366005) b!578033))

(assert (= (and b!578033 res!366002) b!578034))

(assert (= (and b!578034 res!366003) b!578039))

(assert (= (and b!578039 res!366000) b!578037))

(assert (= (and b!578037 res!366001) b!578035))

(assert (= (and b!578035 res!366004) b!578038))

(assert (= (and b!578038 res!365999) b!578036))

(declare-fun m!556801 () Bool)

(assert (=> b!578037 m!556801))

(declare-fun m!556803 () Bool)

(assert (=> start!53212 m!556803))

(declare-fun m!556805 () Bool)

(assert (=> start!53212 m!556805))

(declare-fun m!556807 () Bool)

(assert (=> b!578039 m!556807))

(declare-fun m!556809 () Bool)

(assert (=> b!578035 m!556809))

(declare-fun m!556811 () Bool)

(assert (=> b!578034 m!556811))

(assert (=> b!578034 m!556811))

(declare-fun m!556813 () Bool)

(assert (=> b!578034 m!556813))

(declare-fun m!556815 () Bool)

(assert (=> b!578036 m!556815))

(declare-fun m!556817 () Bool)

(assert (=> b!578038 m!556817))

(push 1)

