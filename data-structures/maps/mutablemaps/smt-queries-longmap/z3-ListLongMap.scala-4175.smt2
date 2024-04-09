; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56918 () Bool)

(assert start!56918)

(declare-fun b!629830 () Bool)

(declare-fun e!360164 () Bool)

(assert (=> b!629830 (= e!360164 (not true))))

(declare-fun e!360165 () Bool)

(assert (=> b!629830 e!360165))

(declare-fun res!407230 () Bool)

(assert (=> b!629830 (=> (not res!407230) (not e!360165))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!290945 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!38012 0))(
  ( (array!38013 (arr!18238 (Array (_ BitVec 32) (_ BitVec 64))) (size!18602 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38012)

(declare-datatypes ((SeekEntryResult!6685 0))(
  ( (MissingZero!6685 (index!29026 (_ BitVec 32))) (Found!6685 (index!29027 (_ BitVec 32))) (Intermediate!6685 (undefined!7497 Bool) (index!29028 (_ BitVec 32)) (x!57791 (_ BitVec 32))) (Undefined!6685) (MissingVacant!6685 (index!29029 (_ BitVec 32))) )
))
(declare-fun lt!290942 () SeekEntryResult!6685)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38012 (_ BitVec 32)) SeekEntryResult!6685)

(assert (=> b!629830 (= res!407230 (= lt!290942 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290945 vacantSpotIndex!68 (select (store (arr!18238 a!2986) i!1108 k0!1786) j!136) (array!38013 (store (arr!18238 a!2986) i!1108 k0!1786) (size!18602 a!2986)) mask!3053)))))

(assert (=> b!629830 (= lt!290942 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290945 vacantSpotIndex!68 (select (arr!18238 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!21114 0))(
  ( (Unit!21115) )
))
(declare-fun lt!290944 () Unit!21114)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38012 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21114)

(assert (=> b!629830 (= lt!290944 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290945 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629830 (= lt!290945 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629831 () Bool)

(declare-fun res!407226 () Bool)

(declare-fun e!360163 () Bool)

(assert (=> b!629831 (=> (not res!407226) (not e!360163))))

(declare-datatypes ((List!12332 0))(
  ( (Nil!12329) (Cons!12328 (h!13373 (_ BitVec 64)) (t!18568 List!12332)) )
))
(declare-fun arrayNoDuplicates!0 (array!38012 (_ BitVec 32) List!12332) Bool)

(assert (=> b!629831 (= res!407226 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12329))))

(declare-fun b!629832 () Bool)

(declare-fun res!407233 () Bool)

(assert (=> b!629832 (=> (not res!407233) (not e!360163))))

(assert (=> b!629832 (= res!407233 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18238 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18238 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!629833 () Bool)

(declare-fun lt!290943 () SeekEntryResult!6685)

(assert (=> b!629833 (= e!360165 (= lt!290943 lt!290942))))

(declare-fun b!629834 () Bool)

(declare-fun e!360162 () Bool)

(assert (=> b!629834 (= e!360162 e!360163)))

(declare-fun res!407227 () Bool)

(assert (=> b!629834 (=> (not res!407227) (not e!360163))))

(declare-fun lt!290946 () SeekEntryResult!6685)

(assert (=> b!629834 (= res!407227 (or (= lt!290946 (MissingZero!6685 i!1108)) (= lt!290946 (MissingVacant!6685 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38012 (_ BitVec 32)) SeekEntryResult!6685)

(assert (=> b!629834 (= lt!290946 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!629835 () Bool)

(declare-fun res!407232 () Bool)

(assert (=> b!629835 (=> (not res!407232) (not e!360162))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629835 (= res!407232 (validKeyInArray!0 k0!1786))))

(declare-fun b!629836 () Bool)

(assert (=> b!629836 (= e!360163 e!360164)))

(declare-fun res!407234 () Bool)

(assert (=> b!629836 (=> (not res!407234) (not e!360164))))

(assert (=> b!629836 (= res!407234 (and (= lt!290943 (Found!6685 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18238 a!2986) index!984) (select (arr!18238 a!2986) j!136))) (not (= (select (arr!18238 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!629836 (= lt!290943 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18238 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!629837 () Bool)

(declare-fun res!407225 () Bool)

(assert (=> b!629837 (=> (not res!407225) (not e!360162))))

(assert (=> b!629837 (= res!407225 (and (= (size!18602 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18602 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18602 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629838 () Bool)

(declare-fun res!407229 () Bool)

(assert (=> b!629838 (=> (not res!407229) (not e!360163))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38012 (_ BitVec 32)) Bool)

(assert (=> b!629838 (= res!407229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!629839 () Bool)

(declare-fun res!407228 () Bool)

(assert (=> b!629839 (=> (not res!407228) (not e!360162))))

(assert (=> b!629839 (= res!407228 (validKeyInArray!0 (select (arr!18238 a!2986) j!136)))))

(declare-fun b!629840 () Bool)

(declare-fun res!407231 () Bool)

(assert (=> b!629840 (=> (not res!407231) (not e!360162))))

(declare-fun arrayContainsKey!0 (array!38012 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629840 (= res!407231 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!407224 () Bool)

(assert (=> start!56918 (=> (not res!407224) (not e!360162))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56918 (= res!407224 (validMask!0 mask!3053))))

(assert (=> start!56918 e!360162))

(assert (=> start!56918 true))

(declare-fun array_inv!14012 (array!38012) Bool)

(assert (=> start!56918 (array_inv!14012 a!2986)))

(assert (= (and start!56918 res!407224) b!629837))

(assert (= (and b!629837 res!407225) b!629839))

(assert (= (and b!629839 res!407228) b!629835))

(assert (= (and b!629835 res!407232) b!629840))

(assert (= (and b!629840 res!407231) b!629834))

(assert (= (and b!629834 res!407227) b!629838))

(assert (= (and b!629838 res!407229) b!629831))

(assert (= (and b!629831 res!407226) b!629832))

(assert (= (and b!629832 res!407233) b!629836))

(assert (= (and b!629836 res!407234) b!629830))

(assert (= (and b!629830 res!407230) b!629833))

(declare-fun m!604889 () Bool)

(assert (=> b!629831 m!604889))

(declare-fun m!604891 () Bool)

(assert (=> b!629839 m!604891))

(assert (=> b!629839 m!604891))

(declare-fun m!604893 () Bool)

(assert (=> b!629839 m!604893))

(declare-fun m!604895 () Bool)

(assert (=> b!629832 m!604895))

(declare-fun m!604897 () Bool)

(assert (=> b!629832 m!604897))

(declare-fun m!604899 () Bool)

(assert (=> b!629832 m!604899))

(declare-fun m!604901 () Bool)

(assert (=> b!629834 m!604901))

(declare-fun m!604903 () Bool)

(assert (=> b!629830 m!604903))

(declare-fun m!604905 () Bool)

(assert (=> b!629830 m!604905))

(assert (=> b!629830 m!604905))

(declare-fun m!604907 () Bool)

(assert (=> b!629830 m!604907))

(assert (=> b!629830 m!604897))

(assert (=> b!629830 m!604891))

(declare-fun m!604909 () Bool)

(assert (=> b!629830 m!604909))

(assert (=> b!629830 m!604891))

(declare-fun m!604911 () Bool)

(assert (=> b!629830 m!604911))

(declare-fun m!604913 () Bool)

(assert (=> start!56918 m!604913))

(declare-fun m!604915 () Bool)

(assert (=> start!56918 m!604915))

(declare-fun m!604917 () Bool)

(assert (=> b!629836 m!604917))

(assert (=> b!629836 m!604891))

(assert (=> b!629836 m!604891))

(declare-fun m!604919 () Bool)

(assert (=> b!629836 m!604919))

(declare-fun m!604921 () Bool)

(assert (=> b!629835 m!604921))

(declare-fun m!604923 () Bool)

(assert (=> b!629838 m!604923))

(declare-fun m!604925 () Bool)

(assert (=> b!629840 m!604925))

(check-sat (not b!629836) (not b!629839) (not b!629838) (not start!56918) (not b!629840) (not b!629835) (not b!629830) (not b!629834) (not b!629831))
(check-sat)
