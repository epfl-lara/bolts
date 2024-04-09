; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45470 () Bool)

(assert start!45470)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32255 0))(
  ( (array!32256 (arr!15506 (Array (_ BitVec 32) (_ BitVec 64))) (size!15870 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32255)

(declare-fun e!293032 () Bool)

(declare-fun b!500118 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3980 0))(
  ( (MissingZero!3980 (index!18102 (_ BitVec 32))) (Found!3980 (index!18103 (_ BitVec 32))) (Intermediate!3980 (undefined!4792 Bool) (index!18104 (_ BitVec 32)) (x!47164 (_ BitVec 32))) (Undefined!3980) (MissingVacant!3980 (index!18105 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32255 (_ BitVec 32)) SeekEntryResult!3980)

(assert (=> b!500118 (= e!293032 (= (seekEntryOrOpen!0 (select (arr!15506 a!3235) j!176) a!3235 mask!3524) (Found!3980 j!176)))))

(declare-fun b!500119 () Bool)

(declare-fun res!302125 () Bool)

(declare-fun e!293035 () Bool)

(assert (=> b!500119 (=> (not res!302125) (not e!293035))))

(declare-datatypes ((List!9717 0))(
  ( (Nil!9714) (Cons!9713 (h!10587 (_ BitVec 64)) (t!15953 List!9717)) )
))
(declare-fun arrayNoDuplicates!0 (array!32255 (_ BitVec 32) List!9717) Bool)

(assert (=> b!500119 (= res!302125 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9714))))

(declare-fun b!500120 () Bool)

(declare-fun e!293033 () Bool)

(assert (=> b!500120 (= e!293033 false)))

(declare-fun b!500121 () Bool)

(declare-fun e!293030 () Bool)

(assert (=> b!500121 (= e!293035 (not e!293030))))

(declare-fun res!302120 () Bool)

(assert (=> b!500121 (=> res!302120 e!293030)))

(declare-fun lt!226992 () array!32255)

(declare-fun lt!226997 () (_ BitVec 64))

(declare-fun lt!226995 () SeekEntryResult!3980)

(declare-fun lt!226991 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32255 (_ BitVec 32)) SeekEntryResult!3980)

(assert (=> b!500121 (= res!302120 (= lt!226995 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226991 lt!226997 lt!226992 mask!3524)))))

(declare-fun lt!226993 () (_ BitVec 32))

(assert (=> b!500121 (= lt!226995 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226993 (select (arr!15506 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500121 (= lt!226991 (toIndex!0 lt!226997 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500121 (= lt!226997 (select (store (arr!15506 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!500121 (= lt!226993 (toIndex!0 (select (arr!15506 a!3235) j!176) mask!3524))))

(assert (=> b!500121 (= lt!226992 (array!32256 (store (arr!15506 a!3235) i!1204 k!2280) (size!15870 a!3235)))))

(assert (=> b!500121 e!293032))

(declare-fun res!302118 () Bool)

(assert (=> b!500121 (=> (not res!302118) (not e!293032))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32255 (_ BitVec 32)) Bool)

(assert (=> b!500121 (= res!302118 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15010 0))(
  ( (Unit!15011) )
))
(declare-fun lt!226999 () Unit!15010)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32255 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15010)

(assert (=> b!500121 (= lt!226999 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500122 () Bool)

(declare-fun res!302126 () Bool)

(declare-fun e!293028 () Bool)

(assert (=> b!500122 (=> (not res!302126) (not e!293028))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500122 (= res!302126 (validKeyInArray!0 (select (arr!15506 a!3235) j!176)))))

(declare-fun b!500123 () Bool)

(declare-fun e!293031 () Unit!15010)

(declare-fun Unit!15012 () Unit!15010)

(assert (=> b!500123 (= e!293031 Unit!15012)))

(declare-fun lt!227000 () Unit!15010)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32255 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15010)

(assert (=> b!500123 (= lt!227000 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226993 #b00000000000000000000000000000000 (index!18104 lt!226995) (x!47164 lt!226995) mask!3524))))

(declare-fun res!302122 () Bool)

(assert (=> b!500123 (= res!302122 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226993 lt!226997 lt!226992 mask!3524) (Intermediate!3980 false (index!18104 lt!226995) (x!47164 lt!226995))))))

(assert (=> b!500123 (=> (not res!302122) (not e!293033))))

(assert (=> b!500123 e!293033))

(declare-fun b!500124 () Bool)

(declare-fun res!302121 () Bool)

(assert (=> b!500124 (=> res!302121 e!293030)))

(assert (=> b!500124 (= res!302121 (or (undefined!4792 lt!226995) (not (is-Intermediate!3980 lt!226995))))))

(declare-fun b!500125 () Bool)

(declare-fun res!302115 () Bool)

(assert (=> b!500125 (=> (not res!302115) (not e!293035))))

(assert (=> b!500125 (= res!302115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500126 () Bool)

(declare-fun e!293034 () Bool)

(assert (=> b!500126 (= e!293034 true)))

(declare-fun lt!226998 () SeekEntryResult!3980)

(assert (=> b!500126 (= lt!226998 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226993 lt!226997 lt!226992 mask!3524))))

(declare-fun res!302123 () Bool)

(assert (=> start!45470 (=> (not res!302123) (not e!293028))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45470 (= res!302123 (validMask!0 mask!3524))))

(assert (=> start!45470 e!293028))

(assert (=> start!45470 true))

(declare-fun array_inv!11280 (array!32255) Bool)

(assert (=> start!45470 (array_inv!11280 a!3235)))

(declare-fun b!500127 () Bool)

(assert (=> b!500127 (= e!293028 e!293035)))

(declare-fun res!302124 () Bool)

(assert (=> b!500127 (=> (not res!302124) (not e!293035))))

(declare-fun lt!226994 () SeekEntryResult!3980)

(assert (=> b!500127 (= res!302124 (or (= lt!226994 (MissingZero!3980 i!1204)) (= lt!226994 (MissingVacant!3980 i!1204))))))

(assert (=> b!500127 (= lt!226994 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!500128 () Bool)

(assert (=> b!500128 (= e!293030 e!293034)))

(declare-fun res!302119 () Bool)

(assert (=> b!500128 (=> res!302119 e!293034)))

(assert (=> b!500128 (= res!302119 (or (bvsgt #b00000000000000000000000000000000 (x!47164 lt!226995)) (bvsgt (x!47164 lt!226995) #b01111111111111111111111111111110) (bvslt lt!226993 #b00000000000000000000000000000000) (bvsge lt!226993 (size!15870 a!3235)) (bvslt (index!18104 lt!226995) #b00000000000000000000000000000000) (bvsge (index!18104 lt!226995) (size!15870 a!3235)) (not (= lt!226995 (Intermediate!3980 false (index!18104 lt!226995) (x!47164 lt!226995))))))))

(assert (=> b!500128 (and (or (= (select (arr!15506 a!3235) (index!18104 lt!226995)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15506 a!3235) (index!18104 lt!226995)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15506 a!3235) (index!18104 lt!226995)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15506 a!3235) (index!18104 lt!226995)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226996 () Unit!15010)

(assert (=> b!500128 (= lt!226996 e!293031)))

(declare-fun c!59279 () Bool)

(assert (=> b!500128 (= c!59279 (= (select (arr!15506 a!3235) (index!18104 lt!226995)) (select (arr!15506 a!3235) j!176)))))

(assert (=> b!500128 (and (bvslt (x!47164 lt!226995) #b01111111111111111111111111111110) (or (= (select (arr!15506 a!3235) (index!18104 lt!226995)) (select (arr!15506 a!3235) j!176)) (= (select (arr!15506 a!3235) (index!18104 lt!226995)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15506 a!3235) (index!18104 lt!226995)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500129 () Bool)

(declare-fun res!302116 () Bool)

(assert (=> b!500129 (=> (not res!302116) (not e!293028))))

(declare-fun arrayContainsKey!0 (array!32255 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500129 (= res!302116 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500130 () Bool)

(declare-fun res!302117 () Bool)

(assert (=> b!500130 (=> (not res!302117) (not e!293028))))

(assert (=> b!500130 (= res!302117 (and (= (size!15870 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15870 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15870 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500131 () Bool)

(declare-fun res!302114 () Bool)

(assert (=> b!500131 (=> (not res!302114) (not e!293028))))

(assert (=> b!500131 (= res!302114 (validKeyInArray!0 k!2280))))

(declare-fun b!500132 () Bool)

(declare-fun Unit!15013 () Unit!15010)

(assert (=> b!500132 (= e!293031 Unit!15013)))

(assert (= (and start!45470 res!302123) b!500130))

(assert (= (and b!500130 res!302117) b!500122))

(assert (= (and b!500122 res!302126) b!500131))

(assert (= (and b!500131 res!302114) b!500129))

(assert (= (and b!500129 res!302116) b!500127))

(assert (= (and b!500127 res!302124) b!500125))

(assert (= (and b!500125 res!302115) b!500119))

(assert (= (and b!500119 res!302125) b!500121))

(assert (= (and b!500121 res!302118) b!500118))

(assert (= (and b!500121 (not res!302120)) b!500124))

(assert (= (and b!500124 (not res!302121)) b!500128))

(assert (= (and b!500128 c!59279) b!500123))

(assert (= (and b!500128 (not c!59279)) b!500132))

(assert (= (and b!500123 res!302122) b!500120))

(assert (= (and b!500128 (not res!302119)) b!500126))

(declare-fun m!481297 () Bool)

(assert (=> b!500119 m!481297))

(declare-fun m!481299 () Bool)

(assert (=> b!500127 m!481299))

(declare-fun m!481301 () Bool)

(assert (=> b!500128 m!481301))

(declare-fun m!481303 () Bool)

(assert (=> b!500128 m!481303))

(declare-fun m!481305 () Bool)

(assert (=> b!500123 m!481305))

(declare-fun m!481307 () Bool)

(assert (=> b!500123 m!481307))

(assert (=> b!500118 m!481303))

(assert (=> b!500118 m!481303))

(declare-fun m!481309 () Bool)

(assert (=> b!500118 m!481309))

(declare-fun m!481311 () Bool)

(assert (=> b!500125 m!481311))

(declare-fun m!481313 () Bool)

(assert (=> b!500131 m!481313))

(assert (=> b!500122 m!481303))

(assert (=> b!500122 m!481303))

(declare-fun m!481315 () Bool)

(assert (=> b!500122 m!481315))

(declare-fun m!481317 () Bool)

(assert (=> b!500129 m!481317))

(assert (=> b!500126 m!481307))

(declare-fun m!481319 () Bool)

(assert (=> b!500121 m!481319))

(assert (=> b!500121 m!481303))

(declare-fun m!481321 () Bool)

(assert (=> b!500121 m!481321))

(declare-fun m!481323 () Bool)

(assert (=> b!500121 m!481323))

(declare-fun m!481325 () Bool)

(assert (=> b!500121 m!481325))

(declare-fun m!481327 () Bool)

(assert (=> b!500121 m!481327))

(assert (=> b!500121 m!481303))

(declare-fun m!481329 () Bool)

(assert (=> b!500121 m!481329))

(assert (=> b!500121 m!481303))

(declare-fun m!481331 () Bool)

(assert (=> b!500121 m!481331))

(declare-fun m!481333 () Bool)

(assert (=> b!500121 m!481333))

(declare-fun m!481335 () Bool)

(assert (=> start!45470 m!481335))

(declare-fun m!481337 () Bool)

(assert (=> start!45470 m!481337))

(push 1)

