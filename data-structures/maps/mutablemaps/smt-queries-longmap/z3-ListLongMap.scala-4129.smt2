; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56330 () Bool)

(assert start!56330)

(declare-fun b!624276 () Bool)

(declare-fun e!357985 () Bool)

(assert (=> b!624276 (= e!357985 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6547 0))(
  ( (MissingZero!6547 (index!28471 (_ BitVec 32))) (Found!6547 (index!28472 (_ BitVec 32))) (Intermediate!6547 (undefined!7359 Bool) (index!28473 (_ BitVec 32)) (x!57255 (_ BitVec 32))) (Undefined!6547) (MissingVacant!6547 (index!28474 (_ BitVec 32))) )
))
(declare-fun lt!289553 () SeekEntryResult!6547)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37718 0))(
  ( (array!37719 (arr!18100 (Array (_ BitVec 32) (_ BitVec 64))) (size!18464 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37718)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37718 (_ BitVec 32)) SeekEntryResult!6547)

(assert (=> b!624276 (= lt!289553 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18100 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!402607 () Bool)

(declare-fun e!357984 () Bool)

(assert (=> start!56330 (=> (not res!402607) (not e!357984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56330 (= res!402607 (validMask!0 mask!3053))))

(assert (=> start!56330 e!357984))

(assert (=> start!56330 true))

(declare-fun array_inv!13874 (array!37718) Bool)

(assert (=> start!56330 (array_inv!13874 a!2986)))

(declare-fun b!624277 () Bool)

(assert (=> b!624277 (= e!357984 e!357985)))

(declare-fun res!402614 () Bool)

(assert (=> b!624277 (=> (not res!402614) (not e!357985))))

(declare-fun lt!289554 () SeekEntryResult!6547)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624277 (= res!402614 (or (= lt!289554 (MissingZero!6547 i!1108)) (= lt!289554 (MissingVacant!6547 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37718 (_ BitVec 32)) SeekEntryResult!6547)

(assert (=> b!624277 (= lt!289554 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!624278 () Bool)

(declare-fun res!402608 () Bool)

(assert (=> b!624278 (=> (not res!402608) (not e!357984))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624278 (= res!402608 (validKeyInArray!0 (select (arr!18100 a!2986) j!136)))))

(declare-fun b!624279 () Bool)

(declare-fun res!402606 () Bool)

(assert (=> b!624279 (=> (not res!402606) (not e!357984))))

(declare-fun arrayContainsKey!0 (array!37718 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624279 (= res!402606 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624280 () Bool)

(declare-fun res!402611 () Bool)

(assert (=> b!624280 (=> (not res!402611) (not e!357984))))

(assert (=> b!624280 (= res!402611 (and (= (size!18464 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18464 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18464 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624281 () Bool)

(declare-fun res!402613 () Bool)

(assert (=> b!624281 (=> (not res!402613) (not e!357985))))

(declare-datatypes ((List!12194 0))(
  ( (Nil!12191) (Cons!12190 (h!13235 (_ BitVec 64)) (t!18430 List!12194)) )
))
(declare-fun arrayNoDuplicates!0 (array!37718 (_ BitVec 32) List!12194) Bool)

(assert (=> b!624281 (= res!402613 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12191))))

(declare-fun b!624282 () Bool)

(declare-fun res!402612 () Bool)

(assert (=> b!624282 (=> (not res!402612) (not e!357984))))

(assert (=> b!624282 (= res!402612 (validKeyInArray!0 k0!1786))))

(declare-fun b!624283 () Bool)

(declare-fun res!402610 () Bool)

(assert (=> b!624283 (=> (not res!402610) (not e!357985))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37718 (_ BitVec 32)) Bool)

(assert (=> b!624283 (= res!402610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624284 () Bool)

(declare-fun res!402609 () Bool)

(assert (=> b!624284 (=> (not res!402609) (not e!357985))))

(assert (=> b!624284 (= res!402609 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18100 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18100 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56330 res!402607) b!624280))

(assert (= (and b!624280 res!402611) b!624278))

(assert (= (and b!624278 res!402608) b!624282))

(assert (= (and b!624282 res!402612) b!624279))

(assert (= (and b!624279 res!402606) b!624277))

(assert (= (and b!624277 res!402614) b!624283))

(assert (= (and b!624283 res!402610) b!624281))

(assert (= (and b!624281 res!402613) b!624284))

(assert (= (and b!624284 res!402609) b!624276))

(declare-fun m!600023 () Bool)

(assert (=> b!624283 m!600023))

(declare-fun m!600025 () Bool)

(assert (=> b!624279 m!600025))

(declare-fun m!600027 () Bool)

(assert (=> b!624281 m!600027))

(declare-fun m!600029 () Bool)

(assert (=> b!624278 m!600029))

(assert (=> b!624278 m!600029))

(declare-fun m!600031 () Bool)

(assert (=> b!624278 m!600031))

(declare-fun m!600033 () Bool)

(assert (=> b!624284 m!600033))

(declare-fun m!600035 () Bool)

(assert (=> b!624284 m!600035))

(declare-fun m!600037 () Bool)

(assert (=> b!624284 m!600037))

(declare-fun m!600039 () Bool)

(assert (=> start!56330 m!600039))

(declare-fun m!600041 () Bool)

(assert (=> start!56330 m!600041))

(declare-fun m!600043 () Bool)

(assert (=> b!624282 m!600043))

(declare-fun m!600045 () Bool)

(assert (=> b!624277 m!600045))

(assert (=> b!624276 m!600029))

(assert (=> b!624276 m!600029))

(declare-fun m!600047 () Bool)

(assert (=> b!624276 m!600047))

(check-sat (not b!624278) (not b!624281) (not b!624283) (not start!56330) (not b!624277) (not b!624282) (not b!624276) (not b!624279))
(check-sat)
