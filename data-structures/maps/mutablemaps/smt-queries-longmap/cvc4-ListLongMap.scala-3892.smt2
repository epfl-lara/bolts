; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53384 () Bool)

(assert start!53384)

(declare-fun b!580260 () Bool)

(declare-fun e!333231 () Bool)

(declare-fun e!333232 () Bool)

(assert (=> b!580260 (= e!333231 e!333232)))

(declare-fun res!368228 () Bool)

(assert (=> b!580260 (=> (not res!368228) (not e!333232))))

(declare-datatypes ((SeekEntryResult!5837 0))(
  ( (MissingZero!5837 (index!25575 (_ BitVec 32))) (Found!5837 (index!25576 (_ BitVec 32))) (Intermediate!5837 (undefined!6649 Bool) (index!25577 (_ BitVec 32)) (x!54477 (_ BitVec 32))) (Undefined!5837) (MissingVacant!5837 (index!25578 (_ BitVec 32))) )
))
(declare-fun lt!264670 () SeekEntryResult!5837)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580260 (= res!368228 (or (= lt!264670 (MissingZero!5837 i!1108)) (= lt!264670 (MissingVacant!5837 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36239 0))(
  ( (array!36240 (arr!17390 (Array (_ BitVec 32) (_ BitVec 64))) (size!17754 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36239)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36239 (_ BitVec 32)) SeekEntryResult!5837)

(assert (=> b!580260 (= lt!264670 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580261 () Bool)

(declare-fun res!368229 () Bool)

(assert (=> b!580261 (=> (not res!368229) (not e!333232))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36239 (_ BitVec 32)) Bool)

(assert (=> b!580261 (= res!368229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580262 () Bool)

(declare-fun res!368230 () Bool)

(assert (=> b!580262 (=> (not res!368230) (not e!333232))))

(declare-datatypes ((List!11484 0))(
  ( (Nil!11481) (Cons!11480 (h!12525 (_ BitVec 64)) (t!17720 List!11484)) )
))
(declare-fun arrayNoDuplicates!0 (array!36239 (_ BitVec 32) List!11484) Bool)

(assert (=> b!580262 (= res!368230 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11481))))

(declare-fun b!580263 () Bool)

(assert (=> b!580263 (= e!333232 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!264671 () SeekEntryResult!5837)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36239 (_ BitVec 32)) SeekEntryResult!5837)

(assert (=> b!580263 (= lt!264671 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17390 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!368231 () Bool)

(assert (=> start!53384 (=> (not res!368231) (not e!333231))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53384 (= res!368231 (validMask!0 mask!3053))))

(assert (=> start!53384 e!333231))

(assert (=> start!53384 true))

(declare-fun array_inv!13164 (array!36239) Bool)

(assert (=> start!53384 (array_inv!13164 a!2986)))

(declare-fun b!580264 () Bool)

(declare-fun res!368233 () Bool)

(assert (=> b!580264 (=> (not res!368233) (not e!333231))))

(declare-fun arrayContainsKey!0 (array!36239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580264 (= res!368233 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580265 () Bool)

(declare-fun res!368234 () Bool)

(assert (=> b!580265 (=> (not res!368234) (not e!333231))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580265 (= res!368234 (validKeyInArray!0 (select (arr!17390 a!2986) j!136)))))

(declare-fun b!580266 () Bool)

(declare-fun res!368227 () Bool)

(assert (=> b!580266 (=> (not res!368227) (not e!333231))))

(assert (=> b!580266 (= res!368227 (and (= (size!17754 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17754 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17754 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580267 () Bool)

(declare-fun res!368226 () Bool)

(assert (=> b!580267 (=> (not res!368226) (not e!333232))))

(assert (=> b!580267 (= res!368226 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17390 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17390 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580268 () Bool)

(declare-fun res!368232 () Bool)

(assert (=> b!580268 (=> (not res!368232) (not e!333231))))

(assert (=> b!580268 (= res!368232 (validKeyInArray!0 k!1786))))

(assert (= (and start!53384 res!368231) b!580266))

(assert (= (and b!580266 res!368227) b!580265))

(assert (= (and b!580265 res!368234) b!580268))

(assert (= (and b!580268 res!368232) b!580264))

(assert (= (and b!580264 res!368233) b!580260))

(assert (= (and b!580260 res!368228) b!580261))

(assert (= (and b!580261 res!368229) b!580262))

(assert (= (and b!580262 res!368230) b!580267))

(assert (= (and b!580267 res!368226) b!580263))

(declare-fun m!558893 () Bool)

(assert (=> b!580265 m!558893))

(assert (=> b!580265 m!558893))

(declare-fun m!558895 () Bool)

(assert (=> b!580265 m!558895))

(declare-fun m!558897 () Bool)

(assert (=> b!580267 m!558897))

(declare-fun m!558899 () Bool)

(assert (=> b!580267 m!558899))

(declare-fun m!558901 () Bool)

(assert (=> b!580267 m!558901))

(declare-fun m!558903 () Bool)

(assert (=> b!580261 m!558903))

(declare-fun m!558905 () Bool)

(assert (=> b!580260 m!558905))

(declare-fun m!558907 () Bool)

(assert (=> start!53384 m!558907))

(declare-fun m!558909 () Bool)

(assert (=> start!53384 m!558909))

(declare-fun m!558911 () Bool)

(assert (=> b!580268 m!558911))

(declare-fun m!558913 () Bool)

(assert (=> b!580262 m!558913))

(declare-fun m!558915 () Bool)

(assert (=> b!580264 m!558915))

(assert (=> b!580263 m!558893))

(assert (=> b!580263 m!558893))

(declare-fun m!558917 () Bool)

(assert (=> b!580263 m!558917))

(push 1)

(assert (not b!580268))

(assert (not b!580262))

