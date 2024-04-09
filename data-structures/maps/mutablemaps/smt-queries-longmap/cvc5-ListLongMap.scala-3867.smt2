; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53230 () Bool)

(assert start!53230)

(declare-fun b!578222 () Bool)

(declare-fun e!332539 () Bool)

(declare-fun e!332537 () Bool)

(assert (=> b!578222 (= e!332539 e!332537)))

(declare-fun res!366193 () Bool)

(assert (=> b!578222 (=> (not res!366193) (not e!332537))))

(declare-datatypes ((SeekEntryResult!5760 0))(
  ( (MissingZero!5760 (index!25267 (_ BitVec 32))) (Found!5760 (index!25268 (_ BitVec 32))) (Intermediate!5760 (undefined!6572 Bool) (index!25269 (_ BitVec 32)) (x!54200 (_ BitVec 32))) (Undefined!5760) (MissingVacant!5760 (index!25270 (_ BitVec 32))) )
))
(declare-fun lt!264218 () SeekEntryResult!5760)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578222 (= res!366193 (or (= lt!264218 (MissingZero!5760 i!1108)) (= lt!264218 (MissingVacant!5760 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36085 0))(
  ( (array!36086 (arr!17313 (Array (_ BitVec 32) (_ BitVec 64))) (size!17677 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36085)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36085 (_ BitVec 32)) SeekEntryResult!5760)

(assert (=> b!578222 (= lt!264218 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578223 () Bool)

(declare-fun res!366188 () Bool)

(assert (=> b!578223 (=> (not res!366188) (not e!332539))))

(declare-fun arrayContainsKey!0 (array!36085 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578223 (= res!366188 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!366194 () Bool)

(assert (=> start!53230 (=> (not res!366194) (not e!332539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53230 (= res!366194 (validMask!0 mask!3053))))

(assert (=> start!53230 e!332539))

(assert (=> start!53230 true))

(declare-fun array_inv!13087 (array!36085) Bool)

(assert (=> start!53230 (array_inv!13087 a!2986)))

(declare-fun b!578224 () Bool)

(declare-fun res!366191 () Bool)

(assert (=> b!578224 (=> (not res!366191) (not e!332537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36085 (_ BitVec 32)) Bool)

(assert (=> b!578224 (= res!366191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578225 () Bool)

(declare-fun res!366192 () Bool)

(assert (=> b!578225 (=> (not res!366192) (not e!332539))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578225 (= res!366192 (validKeyInArray!0 (select (arr!17313 a!2986) j!136)))))

(declare-fun b!578226 () Bool)

(assert (=> b!578226 (= e!332537 false)))

(declare-fun lt!264217 () Bool)

(declare-datatypes ((List!11407 0))(
  ( (Nil!11404) (Cons!11403 (h!12448 (_ BitVec 64)) (t!17643 List!11407)) )
))
(declare-fun arrayNoDuplicates!0 (array!36085 (_ BitVec 32) List!11407) Bool)

(assert (=> b!578226 (= lt!264217 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11404))))

(declare-fun b!578227 () Bool)

(declare-fun res!366189 () Bool)

(assert (=> b!578227 (=> (not res!366189) (not e!332539))))

(assert (=> b!578227 (= res!366189 (validKeyInArray!0 k!1786))))

(declare-fun b!578228 () Bool)

(declare-fun res!366190 () Bool)

(assert (=> b!578228 (=> (not res!366190) (not e!332539))))

(assert (=> b!578228 (= res!366190 (and (= (size!17677 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17677 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17677 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53230 res!366194) b!578228))

(assert (= (and b!578228 res!366190) b!578225))

(assert (= (and b!578225 res!366192) b!578227))

(assert (= (and b!578227 res!366189) b!578223))

(assert (= (and b!578223 res!366188) b!578222))

(assert (= (and b!578222 res!366193) b!578224))

(assert (= (and b!578224 res!366191) b!578226))

(declare-fun m!556963 () Bool)

(assert (=> b!578224 m!556963))

(declare-fun m!556965 () Bool)

(assert (=> b!578226 m!556965))

(declare-fun m!556967 () Bool)

(assert (=> b!578225 m!556967))

(assert (=> b!578225 m!556967))

(declare-fun m!556969 () Bool)

(assert (=> b!578225 m!556969))

(declare-fun m!556971 () Bool)

(assert (=> start!53230 m!556971))

(declare-fun m!556973 () Bool)

(assert (=> start!53230 m!556973))

(declare-fun m!556975 () Bool)

(assert (=> b!578227 m!556975))

(declare-fun m!556977 () Bool)

(assert (=> b!578223 m!556977))

(declare-fun m!556979 () Bool)

(assert (=> b!578222 m!556979))

(push 1)

