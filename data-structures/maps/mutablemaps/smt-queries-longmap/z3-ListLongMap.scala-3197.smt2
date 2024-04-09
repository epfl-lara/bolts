; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44880 () Bool)

(assert start!44880)

(declare-fun b!492164 () Bool)

(declare-fun e!289133 () Bool)

(declare-fun e!289134 () Bool)

(assert (=> b!492164 (= e!289133 e!289134)))

(declare-fun res!295072 () Bool)

(assert (=> b!492164 (=> (not res!295072) (not e!289134))))

(declare-datatypes ((SeekEntryResult!3778 0))(
  ( (MissingZero!3778 (index!17291 (_ BitVec 32))) (Found!3778 (index!17292 (_ BitVec 32))) (Intermediate!3778 (undefined!4590 Bool) (index!17293 (_ BitVec 32)) (x!46405 (_ BitVec 32))) (Undefined!3778) (MissingVacant!3778 (index!17294 (_ BitVec 32))) )
))
(declare-fun lt!222551 () SeekEntryResult!3778)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!492164 (= res!295072 (or (= lt!222551 (MissingZero!3778 i!1204)) (= lt!222551 (MissingVacant!3778 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31842 0))(
  ( (array!31843 (arr!15304 (Array (_ BitVec 32) (_ BitVec 64))) (size!15668 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31842)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31842 (_ BitVec 32)) SeekEntryResult!3778)

(assert (=> b!492164 (= lt!222551 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!295074 () Bool)

(assert (=> start!44880 (=> (not res!295074) (not e!289133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44880 (= res!295074 (validMask!0 mask!3524))))

(assert (=> start!44880 e!289133))

(assert (=> start!44880 true))

(declare-fun array_inv!11078 (array!31842) Bool)

(assert (=> start!44880 (array_inv!11078 a!3235)))

(declare-fun b!492165 () Bool)

(declare-fun res!295071 () Bool)

(assert (=> b!492165 (=> (not res!295071) (not e!289133))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492165 (= res!295071 (validKeyInArray!0 k0!2280))))

(declare-fun b!492166 () Bool)

(declare-fun e!289131 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!492166 (= e!289131 (= (seekEntryOrOpen!0 (select (arr!15304 a!3235) j!176) a!3235 mask!3524) (Found!3778 j!176)))))

(declare-fun b!492167 () Bool)

(declare-fun res!295076 () Bool)

(assert (=> b!492167 (=> (not res!295076) (not e!289133))))

(assert (=> b!492167 (= res!295076 (validKeyInArray!0 (select (arr!15304 a!3235) j!176)))))

(declare-fun b!492168 () Bool)

(declare-fun res!295068 () Bool)

(assert (=> b!492168 (=> (not res!295068) (not e!289134))))

(declare-datatypes ((List!9515 0))(
  ( (Nil!9512) (Cons!9511 (h!10376 (_ BitVec 64)) (t!15751 List!9515)) )
))
(declare-fun arrayNoDuplicates!0 (array!31842 (_ BitVec 32) List!9515) Bool)

(assert (=> b!492168 (= res!295068 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9512))))

(declare-fun b!492169 () Bool)

(declare-fun e!289135 () Bool)

(assert (=> b!492169 (= e!289135 (bvsge mask!3524 #b00000000000000000000000000000000))))

(declare-fun b!492170 () Bool)

(assert (=> b!492170 (= e!289134 (not e!289135))))

(declare-fun res!295073 () Bool)

(assert (=> b!492170 (=> res!295073 e!289135)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31842 (_ BitVec 32)) SeekEntryResult!3778)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492170 (= res!295073 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15304 a!3235) j!176) mask!3524) (select (arr!15304 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15304 a!3235) i!1204 k0!2280) j!176) mask!3524) (select (store (arr!15304 a!3235) i!1204 k0!2280) j!176) (array!31843 (store (arr!15304 a!3235) i!1204 k0!2280) (size!15668 a!3235)) mask!3524)))))

(assert (=> b!492170 e!289131))

(declare-fun res!295070 () Bool)

(assert (=> b!492170 (=> (not res!295070) (not e!289131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31842 (_ BitVec 32)) Bool)

(assert (=> b!492170 (= res!295070 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14494 0))(
  ( (Unit!14495) )
))
(declare-fun lt!222550 () Unit!14494)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31842 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14494)

(assert (=> b!492170 (= lt!222550 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!492171 () Bool)

(declare-fun res!295075 () Bool)

(assert (=> b!492171 (=> (not res!295075) (not e!289134))))

(assert (=> b!492171 (= res!295075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492172 () Bool)

(declare-fun res!295069 () Bool)

(assert (=> b!492172 (=> (not res!295069) (not e!289133))))

(assert (=> b!492172 (= res!295069 (and (= (size!15668 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15668 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15668 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492173 () Bool)

(declare-fun res!295067 () Bool)

(assert (=> b!492173 (=> (not res!295067) (not e!289133))))

(declare-fun arrayContainsKey!0 (array!31842 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492173 (= res!295067 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44880 res!295074) b!492172))

(assert (= (and b!492172 res!295069) b!492167))

(assert (= (and b!492167 res!295076) b!492165))

(assert (= (and b!492165 res!295071) b!492173))

(assert (= (and b!492173 res!295067) b!492164))

(assert (= (and b!492164 res!295072) b!492171))

(assert (= (and b!492171 res!295075) b!492168))

(assert (= (and b!492168 res!295068) b!492170))

(assert (= (and b!492170 res!295070) b!492166))

(assert (= (and b!492170 (not res!295073)) b!492169))

(declare-fun m!472909 () Bool)

(assert (=> b!492171 m!472909))

(declare-fun m!472911 () Bool)

(assert (=> b!492170 m!472911))

(declare-fun m!472913 () Bool)

(assert (=> b!492170 m!472913))

(declare-fun m!472915 () Bool)

(assert (=> b!492170 m!472915))

(declare-fun m!472917 () Bool)

(assert (=> b!492170 m!472917))

(declare-fun m!472919 () Bool)

(assert (=> b!492170 m!472919))

(declare-fun m!472921 () Bool)

(assert (=> b!492170 m!472921))

(assert (=> b!492170 m!472919))

(assert (=> b!492170 m!472917))

(declare-fun m!472923 () Bool)

(assert (=> b!492170 m!472923))

(assert (=> b!492170 m!472915))

(declare-fun m!472925 () Bool)

(assert (=> b!492170 m!472925))

(assert (=> b!492170 m!472919))

(declare-fun m!472927 () Bool)

(assert (=> b!492170 m!472927))

(assert (=> b!492170 m!472915))

(assert (=> b!492170 m!472923))

(declare-fun m!472929 () Bool)

(assert (=> start!44880 m!472929))

(declare-fun m!472931 () Bool)

(assert (=> start!44880 m!472931))

(declare-fun m!472933 () Bool)

(assert (=> b!492168 m!472933))

(assert (=> b!492166 m!472919))

(assert (=> b!492166 m!472919))

(declare-fun m!472935 () Bool)

(assert (=> b!492166 m!472935))

(declare-fun m!472937 () Bool)

(assert (=> b!492173 m!472937))

(assert (=> b!492167 m!472919))

(assert (=> b!492167 m!472919))

(declare-fun m!472939 () Bool)

(assert (=> b!492167 m!472939))

(declare-fun m!472941 () Bool)

(assert (=> b!492164 m!472941))

(declare-fun m!472943 () Bool)

(assert (=> b!492165 m!472943))

(check-sat (not b!492165) (not b!492168) (not b!492171) (not start!44880) (not b!492167) (not b!492166) (not b!492173) (not b!492164) (not b!492170))
(check-sat)
