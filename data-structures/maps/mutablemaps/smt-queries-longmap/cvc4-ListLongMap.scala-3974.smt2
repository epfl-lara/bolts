; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53936 () Bool)

(assert start!53936)

(declare-fun b!588178 () Bool)

(declare-fun e!335884 () Bool)

(assert (=> b!588178 (= e!335884 (not true))))

(declare-fun e!335885 () Bool)

(assert (=> b!588178 e!335885))

(declare-fun res!375964 () Bool)

(assert (=> b!588178 (=> (not res!375964) (not e!335885))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6083 0))(
  ( (MissingZero!6083 (index!26562 (_ BitVec 32))) (Found!6083 (index!26563 (_ BitVec 32))) (Intermediate!6083 (undefined!6895 Bool) (index!26564 (_ BitVec 32)) (x!55388 (_ BitVec 32))) (Undefined!6083) (MissingVacant!6083 (index!26565 (_ BitVec 32))) )
))
(declare-fun lt!266726 () SeekEntryResult!6083)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!266724 () (_ BitVec 32))

(declare-datatypes ((array!36734 0))(
  ( (array!36735 (arr!17636 (Array (_ BitVec 32) (_ BitVec 64))) (size!18000 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36734)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36734 (_ BitVec 32)) SeekEntryResult!6083)

(assert (=> b!588178 (= res!375964 (= lt!266726 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266724 vacantSpotIndex!68 (select (store (arr!17636 a!2986) i!1108 k!1786) j!136) (array!36735 (store (arr!17636 a!2986) i!1108 k!1786) (size!18000 a!2986)) mask!3053)))))

(assert (=> b!588178 (= lt!266726 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266724 vacantSpotIndex!68 (select (arr!17636 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18290 0))(
  ( (Unit!18291) )
))
(declare-fun lt!266722 () Unit!18290)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36734 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18290)

(assert (=> b!588178 (= lt!266722 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266724 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588178 (= lt!266724 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588179 () Bool)

(declare-fun e!335887 () Bool)

(declare-fun e!335886 () Bool)

(assert (=> b!588179 (= e!335887 e!335886)))

(declare-fun res!375973 () Bool)

(assert (=> b!588179 (=> (not res!375973) (not e!335886))))

(declare-fun lt!266725 () SeekEntryResult!6083)

(assert (=> b!588179 (= res!375973 (or (= lt!266725 (MissingZero!6083 i!1108)) (= lt!266725 (MissingVacant!6083 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36734 (_ BitVec 32)) SeekEntryResult!6083)

(assert (=> b!588179 (= lt!266725 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!588180 () Bool)

(declare-fun res!375965 () Bool)

(assert (=> b!588180 (=> (not res!375965) (not e!335887))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588180 (= res!375965 (validKeyInArray!0 k!1786))))

(declare-fun b!588181 () Bool)

(declare-fun res!375968 () Bool)

(assert (=> b!588181 (=> (not res!375968) (not e!335886))))

(assert (=> b!588181 (= res!375968 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17636 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17636 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!375974 () Bool)

(assert (=> start!53936 (=> (not res!375974) (not e!335887))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53936 (= res!375974 (validMask!0 mask!3053))))

(assert (=> start!53936 e!335887))

(assert (=> start!53936 true))

(declare-fun array_inv!13410 (array!36734) Bool)

(assert (=> start!53936 (array_inv!13410 a!2986)))

(declare-fun b!588182 () Bool)

(declare-fun res!375966 () Bool)

(assert (=> b!588182 (=> (not res!375966) (not e!335887))))

(assert (=> b!588182 (= res!375966 (validKeyInArray!0 (select (arr!17636 a!2986) j!136)))))

(declare-fun b!588183 () Bool)

(declare-fun res!375970 () Bool)

(assert (=> b!588183 (=> (not res!375970) (not e!335887))))

(declare-fun arrayContainsKey!0 (array!36734 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588183 (= res!375970 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588184 () Bool)

(assert (=> b!588184 (= e!335886 e!335884)))

(declare-fun res!375972 () Bool)

(assert (=> b!588184 (=> (not res!375972) (not e!335884))))

(declare-fun lt!266723 () SeekEntryResult!6083)

(assert (=> b!588184 (= res!375972 (and (= lt!266723 (Found!6083 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17636 a!2986) index!984) (select (arr!17636 a!2986) j!136))) (not (= (select (arr!17636 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588184 (= lt!266723 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17636 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588185 () Bool)

(declare-fun res!375971 () Bool)

(assert (=> b!588185 (=> (not res!375971) (not e!335886))))

(declare-datatypes ((List!11730 0))(
  ( (Nil!11727) (Cons!11726 (h!12771 (_ BitVec 64)) (t!17966 List!11730)) )
))
(declare-fun arrayNoDuplicates!0 (array!36734 (_ BitVec 32) List!11730) Bool)

(assert (=> b!588185 (= res!375971 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11727))))

(declare-fun b!588186 () Bool)

(assert (=> b!588186 (= e!335885 (= lt!266723 lt!266726))))

(declare-fun b!588187 () Bool)

(declare-fun res!375967 () Bool)

(assert (=> b!588187 (=> (not res!375967) (not e!335886))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36734 (_ BitVec 32)) Bool)

(assert (=> b!588187 (= res!375967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588188 () Bool)

(declare-fun res!375969 () Bool)

(assert (=> b!588188 (=> (not res!375969) (not e!335887))))

(assert (=> b!588188 (= res!375969 (and (= (size!18000 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18000 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18000 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53936 res!375974) b!588188))

(assert (= (and b!588188 res!375969) b!588182))

(assert (= (and b!588182 res!375966) b!588180))

(assert (= (and b!588180 res!375965) b!588183))

(assert (= (and b!588183 res!375970) b!588179))

(assert (= (and b!588179 res!375973) b!588187))

(assert (= (and b!588187 res!375967) b!588185))

(assert (= (and b!588185 res!375971) b!588181))

(assert (= (and b!588181 res!375968) b!588184))

(assert (= (and b!588184 res!375972) b!588178))

(assert (= (and b!588178 res!375964) b!588186))

(declare-fun m!566771 () Bool)

(assert (=> b!588178 m!566771))

(declare-fun m!566773 () Bool)

(assert (=> b!588178 m!566773))

(declare-fun m!566775 () Bool)

(assert (=> b!588178 m!566775))

(declare-fun m!566777 () Bool)

(assert (=> b!588178 m!566777))

(assert (=> b!588178 m!566773))

(declare-fun m!566779 () Bool)

(assert (=> b!588178 m!566779))

(assert (=> b!588178 m!566775))

(declare-fun m!566781 () Bool)

(assert (=> b!588178 m!566781))

(declare-fun m!566783 () Bool)

(assert (=> b!588178 m!566783))

(declare-fun m!566785 () Bool)

(assert (=> b!588179 m!566785))

(declare-fun m!566787 () Bool)

(assert (=> b!588185 m!566787))

(assert (=> b!588182 m!566775))

(assert (=> b!588182 m!566775))

(declare-fun m!566789 () Bool)

(assert (=> b!588182 m!566789))

(declare-fun m!566791 () Bool)

(assert (=> start!53936 m!566791))

(declare-fun m!566793 () Bool)

(assert (=> start!53936 m!566793))

(declare-fun m!566795 () Bool)

(assert (=> b!588183 m!566795))

(declare-fun m!566797 () Bool)

(assert (=> b!588181 m!566797))

(assert (=> b!588181 m!566777))

(declare-fun m!566799 () Bool)

(assert (=> b!588181 m!566799))

(declare-fun m!566801 () Bool)

(assert (=> b!588184 m!566801))

(assert (=> b!588184 m!566775))

(assert (=> b!588184 m!566775))

(declare-fun m!566803 () Bool)

(assert (=> b!588184 m!566803))

(declare-fun m!566805 () Bool)

(assert (=> b!588187 m!566805))

(declare-fun m!566807 () Bool)

(assert (=> b!588180 m!566807))

(push 1)

