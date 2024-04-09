; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53018 () Bool)

(assert start!53018)

(declare-fun res!365168 () Bool)

(declare-fun e!331912 () Bool)

(assert (=> start!53018 (=> (not res!365168) (not e!331912))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53018 (= res!365168 (validMask!0 mask!3053))))

(assert (=> start!53018 e!331912))

(assert (=> start!53018 true))

(declare-datatypes ((array!35990 0))(
  ( (array!35991 (arr!17270 (Array (_ BitVec 32) (_ BitVec 64))) (size!17634 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35990)

(declare-fun array_inv!13044 (array!35990) Bool)

(assert (=> start!53018 (array_inv!13044 a!2986)))

(declare-fun b!576982 () Bool)

(declare-fun res!365164 () Bool)

(assert (=> b!576982 (=> (not res!365164) (not e!331912))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576982 (= res!365164 (validKeyInArray!0 k!1786))))

(declare-fun b!576983 () Bool)

(assert (=> b!576983 (= e!331912 false)))

(declare-datatypes ((SeekEntryResult!5717 0))(
  ( (MissingZero!5717 (index!25095 (_ BitVec 32))) (Found!5717 (index!25096 (_ BitVec 32))) (Intermediate!5717 (undefined!6529 Bool) (index!25097 (_ BitVec 32)) (x!54037 (_ BitVec 32))) (Undefined!5717) (MissingVacant!5717 (index!25098 (_ BitVec 32))) )
))
(declare-fun lt!263876 () SeekEntryResult!5717)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35990 (_ BitVec 32)) SeekEntryResult!5717)

(assert (=> b!576983 (= lt!263876 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!576984 () Bool)

(declare-fun res!365167 () Bool)

(assert (=> b!576984 (=> (not res!365167) (not e!331912))))

(declare-fun arrayContainsKey!0 (array!35990 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576984 (= res!365167 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!576985 () Bool)

(declare-fun res!365165 () Bool)

(assert (=> b!576985 (=> (not res!365165) (not e!331912))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!576985 (= res!365165 (and (= (size!17634 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17634 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17634 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!576986 () Bool)

(declare-fun res!365166 () Bool)

(assert (=> b!576986 (=> (not res!365166) (not e!331912))))

(assert (=> b!576986 (= res!365166 (validKeyInArray!0 (select (arr!17270 a!2986) j!136)))))

(assert (= (and start!53018 res!365168) b!576985))

(assert (= (and b!576985 res!365165) b!576986))

(assert (= (and b!576986 res!365166) b!576982))

(assert (= (and b!576982 res!365164) b!576984))

(assert (= (and b!576984 res!365167) b!576983))

(declare-fun m!555929 () Bool)

(assert (=> b!576982 m!555929))

(declare-fun m!555931 () Bool)

(assert (=> b!576983 m!555931))

(declare-fun m!555933 () Bool)

(assert (=> b!576984 m!555933))

(declare-fun m!555935 () Bool)

(assert (=> start!53018 m!555935))

(declare-fun m!555937 () Bool)

(assert (=> start!53018 m!555937))

(declare-fun m!555939 () Bool)

(assert (=> b!576986 m!555939))

(assert (=> b!576986 m!555939))

(declare-fun m!555941 () Bool)

(assert (=> b!576986 m!555941))

(push 1)

(assert (not b!576982))

(assert (not start!53018))

(assert (not b!576983))

(assert (not b!576984))

(assert (not b!576986))

(check-sat)

