; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53306 () Bool)

(assert start!53306)

(declare-fun b!579207 () Bool)

(declare-fun res!367178 () Bool)

(declare-fun e!332880 () Bool)

(assert (=> b!579207 (=> (not res!367178) (not e!332880))))

(declare-datatypes ((array!36161 0))(
  ( (array!36162 (arr!17351 (Array (_ BitVec 32) (_ BitVec 64))) (size!17715 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36161)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579207 (= res!367178 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579208 () Bool)

(declare-fun e!332881 () Bool)

(assert (=> b!579208 (= e!332880 e!332881)))

(declare-fun res!367176 () Bool)

(assert (=> b!579208 (=> (not res!367176) (not e!332881))))

(declare-datatypes ((SeekEntryResult!5798 0))(
  ( (MissingZero!5798 (index!25419 (_ BitVec 32))) (Found!5798 (index!25420 (_ BitVec 32))) (Intermediate!5798 (undefined!6610 Bool) (index!25421 (_ BitVec 32)) (x!54334 (_ BitVec 32))) (Undefined!5798) (MissingVacant!5798 (index!25422 (_ BitVec 32))) )
))
(declare-fun lt!264436 () SeekEntryResult!5798)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579208 (= res!367176 (or (= lt!264436 (MissingZero!5798 i!1108)) (= lt!264436 (MissingVacant!5798 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36161 (_ BitVec 32)) SeekEntryResult!5798)

(assert (=> b!579208 (= lt!264436 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579209 () Bool)

(declare-fun res!367179 () Bool)

(assert (=> b!579209 (=> (not res!367179) (not e!332880))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579209 (= res!367179 (validKeyInArray!0 (select (arr!17351 a!2986) j!136)))))

(declare-fun b!579211 () Bool)

(declare-fun res!367175 () Bool)

(assert (=> b!579211 (=> (not res!367175) (not e!332880))))

(assert (=> b!579211 (= res!367175 (validKeyInArray!0 k!1786))))

(declare-fun b!579212 () Bool)

(declare-fun res!367180 () Bool)

(assert (=> b!579212 (=> (not res!367180) (not e!332880))))

(assert (=> b!579212 (= res!367180 (and (= (size!17715 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17715 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17715 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579213 () Bool)

(declare-fun res!367181 () Bool)

(assert (=> b!579213 (=> (not res!367181) (not e!332881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36161 (_ BitVec 32)) Bool)

(assert (=> b!579213 (= res!367181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!367173 () Bool)

(assert (=> start!53306 (=> (not res!367173) (not e!332880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53306 (= res!367173 (validMask!0 mask!3053))))

(assert (=> start!53306 e!332880))

(assert (=> start!53306 true))

(declare-fun array_inv!13125 (array!36161) Bool)

(assert (=> start!53306 (array_inv!13125 a!2986)))

(declare-fun b!579210 () Bool)

(declare-fun res!367174 () Bool)

(assert (=> b!579210 (=> (not res!367174) (not e!332881))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!579210 (= res!367174 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17351 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17351 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579214 () Bool)

(assert (=> b!579214 (= e!332881 false)))

(declare-fun lt!264437 () SeekEntryResult!5798)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36161 (_ BitVec 32)) SeekEntryResult!5798)

(assert (=> b!579214 (= lt!264437 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17351 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579215 () Bool)

(declare-fun res!367177 () Bool)

(assert (=> b!579215 (=> (not res!367177) (not e!332881))))

(declare-datatypes ((List!11445 0))(
  ( (Nil!11442) (Cons!11441 (h!12486 (_ BitVec 64)) (t!17681 List!11445)) )
))
(declare-fun arrayNoDuplicates!0 (array!36161 (_ BitVec 32) List!11445) Bool)

(assert (=> b!579215 (= res!367177 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11442))))

(assert (= (and start!53306 res!367173) b!579212))

(assert (= (and b!579212 res!367180) b!579209))

(assert (= (and b!579209 res!367179) b!579211))

(assert (= (and b!579211 res!367175) b!579207))

(assert (= (and b!579207 res!367178) b!579208))

(assert (= (and b!579208 res!367176) b!579213))

(assert (= (and b!579213 res!367181) b!579215))

(assert (= (and b!579215 res!367177) b!579210))

(assert (= (and b!579210 res!367174) b!579214))

(declare-fun m!557879 () Bool)

(assert (=> b!579211 m!557879))

(declare-fun m!557881 () Bool)

(assert (=> start!53306 m!557881))

(declare-fun m!557883 () Bool)

(assert (=> start!53306 m!557883))

(declare-fun m!557885 () Bool)

(assert (=> b!579209 m!557885))

(assert (=> b!579209 m!557885))

(declare-fun m!557887 () Bool)

(assert (=> b!579209 m!557887))

(declare-fun m!557889 () Bool)

(assert (=> b!579215 m!557889))

(assert (=> b!579214 m!557885))

(assert (=> b!579214 m!557885))

(declare-fun m!557891 () Bool)

(assert (=> b!579214 m!557891))

(declare-fun m!557893 () Bool)

(assert (=> b!579213 m!557893))

(declare-fun m!557895 () Bool)

(assert (=> b!579210 m!557895))

(declare-fun m!557897 () Bool)

(assert (=> b!579210 m!557897))

(declare-fun m!557899 () Bool)

(assert (=> b!579210 m!557899))

(declare-fun m!557901 () Bool)

(assert (=> b!579208 m!557901))

(declare-fun m!557903 () Bool)

(assert (=> b!579207 m!557903))

(push 1)

