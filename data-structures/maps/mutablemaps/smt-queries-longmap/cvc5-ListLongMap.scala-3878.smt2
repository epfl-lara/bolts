; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53296 () Bool)

(assert start!53296)

(declare-fun b!579072 () Bool)

(declare-fun res!367046 () Bool)

(declare-fun e!332835 () Bool)

(assert (=> b!579072 (=> (not res!367046) (not e!332835))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36151 0))(
  ( (array!36152 (arr!17346 (Array (_ BitVec 32) (_ BitVec 64))) (size!17710 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36151)

(assert (=> b!579072 (= res!367046 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17346 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17346 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579073 () Bool)

(declare-fun res!367044 () Bool)

(declare-fun e!332834 () Bool)

(assert (=> b!579073 (=> (not res!367044) (not e!332834))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579073 (= res!367044 (validKeyInArray!0 (select (arr!17346 a!2986) j!136)))))

(declare-fun b!579074 () Bool)

(declare-fun res!367042 () Bool)

(assert (=> b!579074 (=> (not res!367042) (not e!332835))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36151 (_ BitVec 32)) Bool)

(assert (=> b!579074 (= res!367042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579075 () Bool)

(declare-fun res!367040 () Bool)

(assert (=> b!579075 (=> (not res!367040) (not e!332834))))

(assert (=> b!579075 (= res!367040 (and (= (size!17710 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17710 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17710 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579076 () Bool)

(declare-fun res!367041 () Bool)

(assert (=> b!579076 (=> (not res!367041) (not e!332834))))

(declare-fun arrayContainsKey!0 (array!36151 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579076 (= res!367041 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579078 () Bool)

(assert (=> b!579078 (= e!332834 e!332835)))

(declare-fun res!367039 () Bool)

(assert (=> b!579078 (=> (not res!367039) (not e!332835))))

(declare-datatypes ((SeekEntryResult!5793 0))(
  ( (MissingZero!5793 (index!25399 (_ BitVec 32))) (Found!5793 (index!25400 (_ BitVec 32))) (Intermediate!5793 (undefined!6605 Bool) (index!25401 (_ BitVec 32)) (x!54321 (_ BitVec 32))) (Undefined!5793) (MissingVacant!5793 (index!25402 (_ BitVec 32))) )
))
(declare-fun lt!264407 () SeekEntryResult!5793)

(assert (=> b!579078 (= res!367039 (or (= lt!264407 (MissingZero!5793 i!1108)) (= lt!264407 (MissingVacant!5793 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36151 (_ BitVec 32)) SeekEntryResult!5793)

(assert (=> b!579078 (= lt!264407 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!367043 () Bool)

(assert (=> start!53296 (=> (not res!367043) (not e!332834))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53296 (= res!367043 (validMask!0 mask!3053))))

(assert (=> start!53296 e!332834))

(assert (=> start!53296 true))

(declare-fun array_inv!13120 (array!36151) Bool)

(assert (=> start!53296 (array_inv!13120 a!2986)))

(declare-fun b!579077 () Bool)

(declare-fun res!367038 () Bool)

(assert (=> b!579077 (=> (not res!367038) (not e!332835))))

(declare-datatypes ((List!11440 0))(
  ( (Nil!11437) (Cons!11436 (h!12481 (_ BitVec 64)) (t!17676 List!11440)) )
))
(declare-fun arrayNoDuplicates!0 (array!36151 (_ BitVec 32) List!11440) Bool)

(assert (=> b!579077 (= res!367038 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11437))))

(declare-fun b!579079 () Bool)

(declare-fun res!367045 () Bool)

(assert (=> b!579079 (=> (not res!367045) (not e!332834))))

(assert (=> b!579079 (= res!367045 (validKeyInArray!0 k!1786))))

(declare-fun b!579080 () Bool)

(assert (=> b!579080 (= e!332835 false)))

(declare-fun lt!264406 () SeekEntryResult!5793)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36151 (_ BitVec 32)) SeekEntryResult!5793)

(assert (=> b!579080 (= lt!264406 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17346 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53296 res!367043) b!579075))

(assert (= (and b!579075 res!367040) b!579073))

(assert (= (and b!579073 res!367044) b!579079))

(assert (= (and b!579079 res!367045) b!579076))

(assert (= (and b!579076 res!367041) b!579078))

(assert (= (and b!579078 res!367039) b!579074))

(assert (= (and b!579074 res!367042) b!579077))

(assert (= (and b!579077 res!367038) b!579072))

(assert (= (and b!579072 res!367046) b!579080))

(declare-fun m!557749 () Bool)

(assert (=> b!579077 m!557749))

(declare-fun m!557751 () Bool)

(assert (=> b!579073 m!557751))

(assert (=> b!579073 m!557751))

(declare-fun m!557753 () Bool)

(assert (=> b!579073 m!557753))

(declare-fun m!557755 () Bool)

(assert (=> b!579076 m!557755))

(declare-fun m!557757 () Bool)

(assert (=> b!579072 m!557757))

(declare-fun m!557759 () Bool)

(assert (=> b!579072 m!557759))

(declare-fun m!557761 () Bool)

(assert (=> b!579072 m!557761))

(declare-fun m!557763 () Bool)

(assert (=> b!579074 m!557763))

(declare-fun m!557765 () Bool)

(assert (=> b!579079 m!557765))

(declare-fun m!557767 () Bool)

(assert (=> start!53296 m!557767))

(declare-fun m!557769 () Bool)

(assert (=> start!53296 m!557769))

(assert (=> b!579080 m!557751))

(assert (=> b!579080 m!557751))

(declare-fun m!557771 () Bool)

(assert (=> b!579080 m!557771))

(declare-fun m!557773 () Bool)

(assert (=> b!579078 m!557773))

(push 1)

