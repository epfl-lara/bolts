; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47708 () Bool)

(assert start!47708)

(declare-fun b!524254 () Bool)

(declare-fun e!305756 () Bool)

(assert (=> b!524254 (= e!305756 false)))

(declare-fun b!524255 () Bool)

(declare-fun res!321310 () Bool)

(declare-fun e!305754 () Bool)

(assert (=> b!524255 (=> res!321310 e!305754)))

(declare-datatypes ((SeekEntryResult!4475 0))(
  ( (MissingZero!4475 (index!20112 (_ BitVec 32))) (Found!4475 (index!20113 (_ BitVec 32))) (Intermediate!4475 (undefined!5287 Bool) (index!20114 (_ BitVec 32)) (x!49123 (_ BitVec 32))) (Undefined!4475) (MissingVacant!4475 (index!20115 (_ BitVec 32))) )
))
(declare-fun lt!240662 () SeekEntryResult!4475)

(assert (=> b!524255 (= res!321310 (or (undefined!5287 lt!240662) (not (is-Intermediate!4475 lt!240662))))))

(declare-fun b!524256 () Bool)

(declare-fun res!321316 () Bool)

(declare-fun e!305755 () Bool)

(assert (=> b!524256 (=> (not res!321316) (not e!305755))))

(declare-datatypes ((array!33305 0))(
  ( (array!33306 (arr!16001 (Array (_ BitVec 32) (_ BitVec 64))) (size!16365 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33305)

(declare-datatypes ((List!10212 0))(
  ( (Nil!10209) (Cons!10208 (h!11139 (_ BitVec 64)) (t!16448 List!10212)) )
))
(declare-fun arrayNoDuplicates!0 (array!33305 (_ BitVec 32) List!10212) Bool)

(assert (=> b!524256 (= res!321316 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10209))))

(declare-fun b!524257 () Bool)

(declare-datatypes ((Unit!16366 0))(
  ( (Unit!16367) )
))
(declare-fun e!305757 () Unit!16366)

(declare-fun Unit!16368 () Unit!16366)

(assert (=> b!524257 (= e!305757 Unit!16368)))

(declare-fun b!524258 () Bool)

(declare-fun res!321311 () Bool)

(declare-fun e!305752 () Bool)

(assert (=> b!524258 (=> (not res!321311) (not e!305752))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!524258 (= res!321311 (and (= (size!16365 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16365 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16365 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524259 () Bool)

(declare-fun e!305758 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33305 (_ BitVec 32)) SeekEntryResult!4475)

(assert (=> b!524259 (= e!305758 (= (seekEntryOrOpen!0 (select (arr!16001 a!3235) j!176) a!3235 mask!3524) (Found!4475 j!176)))))

(declare-fun b!524260 () Bool)

(declare-fun res!321320 () Bool)

(assert (=> b!524260 (=> (not res!321320) (not e!305752))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524260 (= res!321320 (validKeyInArray!0 k!2280))))

(declare-fun b!524261 () Bool)

(assert (=> b!524261 (= e!305754 true)))

(assert (=> b!524261 (and (or (= (select (arr!16001 a!3235) (index!20114 lt!240662)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16001 a!3235) (index!20114 lt!240662)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16001 a!3235) (index!20114 lt!240662)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16001 a!3235) (index!20114 lt!240662)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240660 () Unit!16366)

(assert (=> b!524261 (= lt!240660 e!305757)))

(declare-fun c!61778 () Bool)

(assert (=> b!524261 (= c!61778 (= (select (arr!16001 a!3235) (index!20114 lt!240662)) (select (arr!16001 a!3235) j!176)))))

(assert (=> b!524261 (and (bvslt (x!49123 lt!240662) #b01111111111111111111111111111110) (or (= (select (arr!16001 a!3235) (index!20114 lt!240662)) (select (arr!16001 a!3235) j!176)) (= (select (arr!16001 a!3235) (index!20114 lt!240662)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16001 a!3235) (index!20114 lt!240662)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!321313 () Bool)

(assert (=> start!47708 (=> (not res!321313) (not e!305752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47708 (= res!321313 (validMask!0 mask!3524))))

(assert (=> start!47708 e!305752))

(assert (=> start!47708 true))

(declare-fun array_inv!11775 (array!33305) Bool)

(assert (=> start!47708 (array_inv!11775 a!3235)))

(declare-fun b!524262 () Bool)

(declare-fun Unit!16369 () Unit!16366)

(assert (=> b!524262 (= e!305757 Unit!16369)))

(declare-fun lt!240661 () Unit!16366)

(declare-fun lt!240659 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33305 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16366)

(assert (=> b!524262 (= lt!240661 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240659 #b00000000000000000000000000000000 (index!20114 lt!240662) (x!49123 lt!240662) mask!3524))))

(declare-fun lt!240665 () (_ BitVec 64))

(declare-fun lt!240657 () array!33305)

(declare-fun res!321314 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33305 (_ BitVec 32)) SeekEntryResult!4475)

(assert (=> b!524262 (= res!321314 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240659 lt!240665 lt!240657 mask!3524) (Intermediate!4475 false (index!20114 lt!240662) (x!49123 lt!240662))))))

(assert (=> b!524262 (=> (not res!321314) (not e!305756))))

(assert (=> b!524262 e!305756))

(declare-fun b!524263 () Bool)

(declare-fun res!321315 () Bool)

(assert (=> b!524263 (=> (not res!321315) (not e!305752))))

(assert (=> b!524263 (= res!321315 (validKeyInArray!0 (select (arr!16001 a!3235) j!176)))))

(declare-fun b!524264 () Bool)

(assert (=> b!524264 (= e!305752 e!305755)))

(declare-fun res!321319 () Bool)

(assert (=> b!524264 (=> (not res!321319) (not e!305755))))

(declare-fun lt!240658 () SeekEntryResult!4475)

(assert (=> b!524264 (= res!321319 (or (= lt!240658 (MissingZero!4475 i!1204)) (= lt!240658 (MissingVacant!4475 i!1204))))))

(assert (=> b!524264 (= lt!240658 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!524265 () Bool)

(declare-fun res!321317 () Bool)

(assert (=> b!524265 (=> (not res!321317) (not e!305755))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33305 (_ BitVec 32)) Bool)

(assert (=> b!524265 (= res!321317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524266 () Bool)

(assert (=> b!524266 (= e!305755 (not e!305754))))

(declare-fun res!321312 () Bool)

(assert (=> b!524266 (=> res!321312 e!305754)))

(declare-fun lt!240663 () (_ BitVec 32))

(assert (=> b!524266 (= res!321312 (= lt!240662 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240663 lt!240665 lt!240657 mask!3524)))))

(assert (=> b!524266 (= lt!240662 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240659 (select (arr!16001 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524266 (= lt!240663 (toIndex!0 lt!240665 mask!3524))))

(assert (=> b!524266 (= lt!240665 (select (store (arr!16001 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!524266 (= lt!240659 (toIndex!0 (select (arr!16001 a!3235) j!176) mask!3524))))

(assert (=> b!524266 (= lt!240657 (array!33306 (store (arr!16001 a!3235) i!1204 k!2280) (size!16365 a!3235)))))

(assert (=> b!524266 e!305758))

(declare-fun res!321309 () Bool)

(assert (=> b!524266 (=> (not res!321309) (not e!305758))))

(assert (=> b!524266 (= res!321309 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240664 () Unit!16366)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33305 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16366)

(assert (=> b!524266 (= lt!240664 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524267 () Bool)

(declare-fun res!321318 () Bool)

(assert (=> b!524267 (=> (not res!321318) (not e!305752))))

(declare-fun arrayContainsKey!0 (array!33305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524267 (= res!321318 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!47708 res!321313) b!524258))

(assert (= (and b!524258 res!321311) b!524263))

(assert (= (and b!524263 res!321315) b!524260))

(assert (= (and b!524260 res!321320) b!524267))

(assert (= (and b!524267 res!321318) b!524264))

(assert (= (and b!524264 res!321319) b!524265))

(assert (= (and b!524265 res!321317) b!524256))

(assert (= (and b!524256 res!321316) b!524266))

(assert (= (and b!524266 res!321309) b!524259))

(assert (= (and b!524266 (not res!321312)) b!524255))

(assert (= (and b!524255 (not res!321310)) b!524261))

(assert (= (and b!524261 c!61778) b!524262))

(assert (= (and b!524261 (not c!61778)) b!524257))

(assert (= (and b!524262 res!321314) b!524254))

(declare-fun m!504925 () Bool)

(assert (=> b!524256 m!504925))

(declare-fun m!504927 () Bool)

(assert (=> b!524260 m!504927))

(declare-fun m!504929 () Bool)

(assert (=> b!524262 m!504929))

(declare-fun m!504931 () Bool)

(assert (=> b!524262 m!504931))

(declare-fun m!504933 () Bool)

(assert (=> b!524266 m!504933))

(declare-fun m!504935 () Bool)

(assert (=> b!524266 m!504935))

(declare-fun m!504937 () Bool)

(assert (=> b!524266 m!504937))

(declare-fun m!504939 () Bool)

(assert (=> b!524266 m!504939))

(declare-fun m!504941 () Bool)

(assert (=> b!524266 m!504941))

(declare-fun m!504943 () Bool)

(assert (=> b!524266 m!504943))

(declare-fun m!504945 () Bool)

(assert (=> b!524266 m!504945))

(assert (=> b!524266 m!504943))

(declare-fun m!504947 () Bool)

(assert (=> b!524266 m!504947))

(assert (=> b!524266 m!504943))

(declare-fun m!504949 () Bool)

(assert (=> b!524266 m!504949))

(declare-fun m!504951 () Bool)

(assert (=> b!524264 m!504951))

(declare-fun m!504953 () Bool)

(assert (=> start!47708 m!504953))

(declare-fun m!504955 () Bool)

(assert (=> start!47708 m!504955))

(assert (=> b!524259 m!504943))

(assert (=> b!524259 m!504943))

(declare-fun m!504957 () Bool)

(assert (=> b!524259 m!504957))

(declare-fun m!504959 () Bool)

(assert (=> b!524265 m!504959))

(assert (=> b!524263 m!504943))

(assert (=> b!524263 m!504943))

(declare-fun m!504961 () Bool)

(assert (=> b!524263 m!504961))

(declare-fun m!504963 () Bool)

(assert (=> b!524261 m!504963))

(assert (=> b!524261 m!504943))

(declare-fun m!504965 () Bool)

(assert (=> b!524267 m!504965))

(push 1)

