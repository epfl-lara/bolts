; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53656 () Bool)

(assert start!53656)

(declare-fun res!372166 () Bool)

(declare-fun e!334530 () Bool)

(assert (=> start!53656 (=> (not res!372166) (not e!334530))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53656 (= res!372166 (validMask!0 mask!3053))))

(assert (=> start!53656 e!334530))

(assert (=> start!53656 true))

(declare-datatypes ((array!36511 0))(
  ( (array!36512 (arr!17526 (Array (_ BitVec 32) (_ BitVec 64))) (size!17890 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36511)

(declare-fun array_inv!13300 (array!36511) Bool)

(assert (=> start!53656 (array_inv!13300 a!2986)))

(declare-fun b!584199 () Bool)

(declare-fun res!372167 () Bool)

(declare-fun e!334528 () Bool)

(assert (=> b!584199 (=> (not res!372167) (not e!334528))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!584199 (= res!372167 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17526 a!2986) index!984) (select (arr!17526 a!2986) j!136))) (not (= (select (arr!17526 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584200 () Bool)

(declare-fun res!372171 () Bool)

(assert (=> b!584200 (=> (not res!372171) (not e!334530))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584200 (= res!372171 (and (= (size!17890 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17890 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17890 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584201 () Bool)

(declare-fun res!372168 () Bool)

(assert (=> b!584201 (=> (not res!372168) (not e!334528))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!584201 (= res!372168 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17526 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17526 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584202 () Bool)

(declare-fun e!334531 () Bool)

(assert (=> b!584202 (= e!334531 false)))

(declare-fun lt!265526 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5973 0))(
  ( (MissingZero!5973 (index!26119 (_ BitVec 32))) (Found!5973 (index!26120 (_ BitVec 32))) (Intermediate!5973 (undefined!6785 Bool) (index!26121 (_ BitVec 32)) (x!54981 (_ BitVec 32))) (Undefined!5973) (MissingVacant!5973 (index!26122 (_ BitVec 32))) )
))
(declare-fun lt!265525 () SeekEntryResult!5973)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36511 (_ BitVec 32)) SeekEntryResult!5973)

(assert (=> b!584202 (= lt!265525 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265526 vacantSpotIndex!68 (select (arr!17526 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584203 () Bool)

(declare-fun res!372165 () Bool)

(assert (=> b!584203 (=> (not res!372165) (not e!334528))))

(declare-datatypes ((List!11620 0))(
  ( (Nil!11617) (Cons!11616 (h!12661 (_ BitVec 64)) (t!17856 List!11620)) )
))
(declare-fun arrayNoDuplicates!0 (array!36511 (_ BitVec 32) List!11620) Bool)

(assert (=> b!584203 (= res!372165 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11617))))

(declare-fun b!584204 () Bool)

(declare-fun res!372169 () Bool)

(assert (=> b!584204 (=> (not res!372169) (not e!334528))))

(assert (=> b!584204 (= res!372169 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17526 a!2986) j!136) a!2986 mask!3053) (Found!5973 j!136)))))

(declare-fun b!584205 () Bool)

(declare-fun res!372175 () Bool)

(assert (=> b!584205 (=> (not res!372175) (not e!334530))))

(declare-fun arrayContainsKey!0 (array!36511 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584205 (= res!372175 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584206 () Bool)

(declare-fun res!372174 () Bool)

(assert (=> b!584206 (=> (not res!372174) (not e!334530))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584206 (= res!372174 (validKeyInArray!0 (select (arr!17526 a!2986) j!136)))))

(declare-fun b!584207 () Bool)

(declare-fun res!372173 () Bool)

(assert (=> b!584207 (=> (not res!372173) (not e!334528))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36511 (_ BitVec 32)) Bool)

(assert (=> b!584207 (= res!372173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584208 () Bool)

(assert (=> b!584208 (= e!334528 e!334531)))

(declare-fun res!372176 () Bool)

(assert (=> b!584208 (=> (not res!372176) (not e!334531))))

(assert (=> b!584208 (= res!372176 (and (bvsge lt!265526 #b00000000000000000000000000000000) (bvslt lt!265526 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584208 (= lt!265526 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584209 () Bool)

(assert (=> b!584209 (= e!334530 e!334528)))

(declare-fun res!372172 () Bool)

(assert (=> b!584209 (=> (not res!372172) (not e!334528))))

(declare-fun lt!265524 () SeekEntryResult!5973)

(assert (=> b!584209 (= res!372172 (or (= lt!265524 (MissingZero!5973 i!1108)) (= lt!265524 (MissingVacant!5973 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36511 (_ BitVec 32)) SeekEntryResult!5973)

(assert (=> b!584209 (= lt!265524 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!584210 () Bool)

(declare-fun res!372170 () Bool)

(assert (=> b!584210 (=> (not res!372170) (not e!334530))))

(assert (=> b!584210 (= res!372170 (validKeyInArray!0 k!1786))))

(assert (= (and start!53656 res!372166) b!584200))

(assert (= (and b!584200 res!372171) b!584206))

(assert (= (and b!584206 res!372174) b!584210))

(assert (= (and b!584210 res!372170) b!584205))

(assert (= (and b!584205 res!372175) b!584209))

(assert (= (and b!584209 res!372172) b!584207))

(assert (= (and b!584207 res!372173) b!584203))

(assert (= (and b!584203 res!372165) b!584201))

(assert (= (and b!584201 res!372168) b!584204))

(assert (= (and b!584204 res!372169) b!584199))

(assert (= (and b!584199 res!372167) b!584208))

(assert (= (and b!584208 res!372176) b!584202))

(declare-fun m!562609 () Bool)

(assert (=> b!584205 m!562609))

(declare-fun m!562611 () Bool)

(assert (=> b!584206 m!562611))

(assert (=> b!584206 m!562611))

(declare-fun m!562613 () Bool)

(assert (=> b!584206 m!562613))

(assert (=> b!584204 m!562611))

(assert (=> b!584204 m!562611))

(declare-fun m!562615 () Bool)

(assert (=> b!584204 m!562615))

(declare-fun m!562617 () Bool)

(assert (=> b!584201 m!562617))

(declare-fun m!562619 () Bool)

(assert (=> b!584201 m!562619))

(declare-fun m!562621 () Bool)

(assert (=> b!584201 m!562621))

(declare-fun m!562623 () Bool)

(assert (=> b!584199 m!562623))

(assert (=> b!584199 m!562611))

(declare-fun m!562625 () Bool)

(assert (=> b!584208 m!562625))

(declare-fun m!562627 () Bool)

(assert (=> b!584207 m!562627))

(declare-fun m!562629 () Bool)

(assert (=> b!584210 m!562629))

(assert (=> b!584202 m!562611))

(assert (=> b!584202 m!562611))

(declare-fun m!562631 () Bool)

(assert (=> b!584202 m!562631))

(declare-fun m!562633 () Bool)

(assert (=> start!53656 m!562633))

(declare-fun m!562635 () Bool)

(assert (=> start!53656 m!562635))

(declare-fun m!562637 () Bool)

(assert (=> b!584209 m!562637))

(declare-fun m!562639 () Bool)

(assert (=> b!584203 m!562639))

(push 1)

