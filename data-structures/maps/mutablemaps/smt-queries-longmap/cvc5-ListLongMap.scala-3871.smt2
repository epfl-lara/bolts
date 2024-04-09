; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53254 () Bool)

(assert start!53254)

(declare-fun b!578498 () Bool)

(declare-fun res!366464 () Bool)

(declare-fun e!332645 () Bool)

(assert (=> b!578498 (=> (not res!366464) (not e!332645))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36109 0))(
  ( (array!36110 (arr!17325 (Array (_ BitVec 32) (_ BitVec 64))) (size!17689 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36109)

(declare-datatypes ((SeekEntryResult!5772 0))(
  ( (MissingZero!5772 (index!25315 (_ BitVec 32))) (Found!5772 (index!25316 (_ BitVec 32))) (Intermediate!5772 (undefined!6584 Bool) (index!25317 (_ BitVec 32)) (x!54244 (_ BitVec 32))) (Undefined!5772) (MissingVacant!5772 (index!25318 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36109 (_ BitVec 32)) SeekEntryResult!5772)

(assert (=> b!578498 (= res!366464 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17325 a!2986) j!136) a!2986 mask!3053) (Found!5772 j!136)))))

(declare-fun b!578499 () Bool)

(declare-fun res!366468 () Bool)

(declare-fun e!332647 () Bool)

(assert (=> b!578499 (=> (not res!366468) (not e!332647))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578499 (= res!366468 (validKeyInArray!0 (select (arr!17325 a!2986) j!136)))))

(declare-fun b!578500 () Bool)

(declare-fun res!366470 () Bool)

(assert (=> b!578500 (=> (not res!366470) (not e!332645))))

(declare-datatypes ((List!11419 0))(
  ( (Nil!11416) (Cons!11415 (h!12460 (_ BitVec 64)) (t!17655 List!11419)) )
))
(declare-fun arrayNoDuplicates!0 (array!36109 (_ BitVec 32) List!11419) Bool)

(assert (=> b!578500 (= res!366470 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11416))))

(declare-fun b!578501 () Bool)

(declare-fun res!366472 () Bool)

(assert (=> b!578501 (=> (not res!366472) (not e!332645))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!578501 (= res!366472 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17325 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17325 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578502 () Bool)

(declare-fun res!366471 () Bool)

(assert (=> b!578502 (=> (not res!366471) (not e!332647))))

(assert (=> b!578502 (= res!366471 (validKeyInArray!0 k!1786))))

(declare-fun b!578503 () Bool)

(declare-fun res!366466 () Bool)

(assert (=> b!578503 (=> (not res!366466) (not e!332647))))

(declare-fun arrayContainsKey!0 (array!36109 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578503 (= res!366466 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578504 () Bool)

(declare-fun res!366465 () Bool)

(assert (=> b!578504 (=> (not res!366465) (not e!332647))))

(assert (=> b!578504 (= res!366465 (and (= (size!17689 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17689 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17689 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!366469 () Bool)

(assert (=> start!53254 (=> (not res!366469) (not e!332647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53254 (= res!366469 (validMask!0 mask!3053))))

(assert (=> start!53254 e!332647))

(assert (=> start!53254 true))

(declare-fun array_inv!13099 (array!36109) Bool)

(assert (=> start!53254 (array_inv!13099 a!2986)))

(declare-fun b!578505 () Bool)

(assert (=> b!578505 (= e!332645 (bvslt mask!3053 #b00000000000000000000000000000000))))

(declare-fun b!578506 () Bool)

(assert (=> b!578506 (= e!332647 e!332645)))

(declare-fun res!366467 () Bool)

(assert (=> b!578506 (=> (not res!366467) (not e!332645))))

(declare-fun lt!264287 () SeekEntryResult!5772)

(assert (=> b!578506 (= res!366467 (or (= lt!264287 (MissingZero!5772 i!1108)) (= lt!264287 (MissingVacant!5772 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36109 (_ BitVec 32)) SeekEntryResult!5772)

(assert (=> b!578506 (= lt!264287 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578507 () Bool)

(declare-fun res!366473 () Bool)

(assert (=> b!578507 (=> (not res!366473) (not e!332645))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36109 (_ BitVec 32)) Bool)

(assert (=> b!578507 (= res!366473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53254 res!366469) b!578504))

(assert (= (and b!578504 res!366465) b!578499))

(assert (= (and b!578499 res!366468) b!578502))

(assert (= (and b!578502 res!366471) b!578503))

(assert (= (and b!578503 res!366466) b!578506))

(assert (= (and b!578506 res!366467) b!578507))

(assert (= (and b!578507 res!366473) b!578500))

(assert (= (and b!578500 res!366470) b!578501))

(assert (= (and b!578501 res!366472) b!578498))

(assert (= (and b!578498 res!366464) b!578505))

(declare-fun m!557203 () Bool)

(assert (=> b!578499 m!557203))

(assert (=> b!578499 m!557203))

(declare-fun m!557205 () Bool)

(assert (=> b!578499 m!557205))

(declare-fun m!557207 () Bool)

(assert (=> b!578503 m!557207))

(declare-fun m!557209 () Bool)

(assert (=> b!578507 m!557209))

(declare-fun m!557211 () Bool)

(assert (=> b!578501 m!557211))

(declare-fun m!557213 () Bool)

(assert (=> b!578501 m!557213))

(declare-fun m!557215 () Bool)

(assert (=> b!578501 m!557215))

(assert (=> b!578498 m!557203))

(assert (=> b!578498 m!557203))

(declare-fun m!557217 () Bool)

(assert (=> b!578498 m!557217))

(declare-fun m!557219 () Bool)

(assert (=> b!578500 m!557219))

(declare-fun m!557221 () Bool)

(assert (=> b!578506 m!557221))

(declare-fun m!557223 () Bool)

(assert (=> start!53254 m!557223))

(declare-fun m!557225 () Bool)

(assert (=> start!53254 m!557225))

(declare-fun m!557227 () Bool)

(assert (=> b!578502 m!557227))

(push 1)

