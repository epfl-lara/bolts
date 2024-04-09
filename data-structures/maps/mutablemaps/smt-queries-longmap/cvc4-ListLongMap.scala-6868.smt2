; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86498 () Bool)

(assert start!86498)

(declare-fun b!1001041 () Bool)

(declare-fun e!564144 () Bool)

(declare-fun e!564146 () Bool)

(assert (=> b!1001041 (= e!564144 e!564146)))

(declare-fun res!670685 () Bool)

(assert (=> b!1001041 (=> (not res!670685) (not e!564146))))

(declare-datatypes ((SeekEntryResult!9379 0))(
  ( (MissingZero!9379 (index!39886 (_ BitVec 32))) (Found!9379 (index!39887 (_ BitVec 32))) (Intermediate!9379 (undefined!10191 Bool) (index!39888 (_ BitVec 32)) (x!87336 (_ BitVec 32))) (Undefined!9379) (MissingVacant!9379 (index!39889 (_ BitVec 32))) )
))
(declare-fun lt!442493 () SeekEntryResult!9379)

(declare-fun lt!442492 () SeekEntryResult!9379)

(assert (=> b!1001041 (= res!670685 (= lt!442493 lt!442492))))

(declare-datatypes ((array!63251 0))(
  ( (array!63252 (arr!30447 (Array (_ BitVec 32) (_ BitVec 64))) (size!30950 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63251)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63251 (_ BitVec 32)) SeekEntryResult!9379)

(assert (=> b!1001041 (= lt!442493 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30447 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001042 () Bool)

(declare-fun res!670679 () Bool)

(declare-fun e!564142 () Bool)

(assert (=> b!1001042 (=> (not res!670679) (not e!564142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63251 (_ BitVec 32)) Bool)

(assert (=> b!1001042 (= res!670679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001043 () Bool)

(declare-fun res!670682 () Bool)

(declare-fun e!564143 () Bool)

(assert (=> b!1001043 (=> (not res!670682) (not e!564143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001043 (= res!670682 (validKeyInArray!0 (select (arr!30447 a!3219) j!170)))))

(declare-fun b!1001044 () Bool)

(assert (=> b!1001044 (= e!564142 e!564144)))

(declare-fun res!670681 () Bool)

(assert (=> b!1001044 (=> (not res!670681) (not e!564144))))

(declare-fun lt!442497 () SeekEntryResult!9379)

(assert (=> b!1001044 (= res!670681 (= lt!442497 lt!442492))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001044 (= lt!442492 (Intermediate!9379 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001044 (= lt!442497 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30447 a!3219) j!170) mask!3464) (select (arr!30447 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001045 () Bool)

(assert (=> b!1001045 (= e!564143 e!564142)))

(declare-fun res!670675 () Bool)

(assert (=> b!1001045 (=> (not res!670675) (not e!564142))))

(declare-fun lt!442494 () SeekEntryResult!9379)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001045 (= res!670675 (or (= lt!442494 (MissingVacant!9379 i!1194)) (= lt!442494 (MissingZero!9379 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63251 (_ BitVec 32)) SeekEntryResult!9379)

(assert (=> b!1001045 (= lt!442494 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1001046 () Bool)

(declare-fun res!670684 () Bool)

(declare-fun e!564141 () Bool)

(assert (=> b!1001046 (=> (not res!670684) (not e!564141))))

(declare-fun lt!442496 () (_ BitVec 64))

(declare-fun lt!442495 () array!63251)

(assert (=> b!1001046 (= res!670684 (not (= lt!442493 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442496 lt!442495 mask!3464))))))

(declare-fun res!670686 () Bool)

(assert (=> start!86498 (=> (not res!670686) (not e!564143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86498 (= res!670686 (validMask!0 mask!3464))))

(assert (=> start!86498 e!564143))

(declare-fun array_inv!23437 (array!63251) Bool)

(assert (=> start!86498 (array_inv!23437 a!3219)))

(assert (=> start!86498 true))

(declare-fun b!1001047 () Bool)

(declare-fun res!670687 () Bool)

(assert (=> b!1001047 (=> (not res!670687) (not e!564143))))

(assert (=> b!1001047 (= res!670687 (and (= (size!30950 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30950 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30950 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001048 () Bool)

(declare-fun res!670680 () Bool)

(assert (=> b!1001048 (=> (not res!670680) (not e!564143))))

(assert (=> b!1001048 (= res!670680 (validKeyInArray!0 k!2224))))

(declare-fun b!1001049 () Bool)

(assert (=> b!1001049 (= e!564141 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194)) (bvsge mask!3464 #b00000000000000000000000000000000) (bvsge index!1507 (bvadd #b00000000000000000000000000000001 mask!3464))))))

(declare-fun b!1001050 () Bool)

(declare-fun res!670678 () Bool)

(assert (=> b!1001050 (=> (not res!670678) (not e!564143))))

(declare-fun arrayContainsKey!0 (array!63251 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001050 (= res!670678 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001051 () Bool)

(declare-fun res!670676 () Bool)

(assert (=> b!1001051 (=> (not res!670676) (not e!564142))))

(declare-datatypes ((List!21249 0))(
  ( (Nil!21246) (Cons!21245 (h!22422 (_ BitVec 64)) (t!30258 List!21249)) )
))
(declare-fun arrayNoDuplicates!0 (array!63251 (_ BitVec 32) List!21249) Bool)

(assert (=> b!1001051 (= res!670676 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21246))))

(declare-fun b!1001052 () Bool)

(assert (=> b!1001052 (= e!564146 e!564141)))

(declare-fun res!670677 () Bool)

(assert (=> b!1001052 (=> (not res!670677) (not e!564141))))

(assert (=> b!1001052 (= res!670677 (not (= lt!442497 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442496 mask!3464) lt!442496 lt!442495 mask!3464))))))

(assert (=> b!1001052 (= lt!442496 (select (store (arr!30447 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1001052 (= lt!442495 (array!63252 (store (arr!30447 a!3219) i!1194 k!2224) (size!30950 a!3219)))))

(declare-fun b!1001053 () Bool)

(declare-fun res!670683 () Bool)

(assert (=> b!1001053 (=> (not res!670683) (not e!564142))))

(assert (=> b!1001053 (= res!670683 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30950 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30950 a!3219))))))

(assert (= (and start!86498 res!670686) b!1001047))

(assert (= (and b!1001047 res!670687) b!1001043))

(assert (= (and b!1001043 res!670682) b!1001048))

(assert (= (and b!1001048 res!670680) b!1001050))

(assert (= (and b!1001050 res!670678) b!1001045))

(assert (= (and b!1001045 res!670675) b!1001042))

(assert (= (and b!1001042 res!670679) b!1001051))

(assert (= (and b!1001051 res!670676) b!1001053))

(assert (= (and b!1001053 res!670683) b!1001044))

(assert (= (and b!1001044 res!670681) b!1001041))

(assert (= (and b!1001041 res!670685) b!1001052))

(assert (= (and b!1001052 res!670677) b!1001046))

(assert (= (and b!1001046 res!670684) b!1001049))

(declare-fun m!927245 () Bool)

(assert (=> b!1001052 m!927245))

(assert (=> b!1001052 m!927245))

(declare-fun m!927247 () Bool)

(assert (=> b!1001052 m!927247))

(declare-fun m!927249 () Bool)

(assert (=> b!1001052 m!927249))

(declare-fun m!927251 () Bool)

(assert (=> b!1001052 m!927251))

(declare-fun m!927253 () Bool)

(assert (=> b!1001042 m!927253))

(declare-fun m!927255 () Bool)

(assert (=> b!1001045 m!927255))

(declare-fun m!927257 () Bool)

(assert (=> b!1001048 m!927257))

(declare-fun m!927259 () Bool)

(assert (=> b!1001041 m!927259))

(assert (=> b!1001041 m!927259))

(declare-fun m!927261 () Bool)

(assert (=> b!1001041 m!927261))

(assert (=> b!1001043 m!927259))

(assert (=> b!1001043 m!927259))

(declare-fun m!927263 () Bool)

(assert (=> b!1001043 m!927263))

(declare-fun m!927265 () Bool)

(assert (=> b!1001051 m!927265))

(assert (=> b!1001044 m!927259))

(assert (=> b!1001044 m!927259))

(declare-fun m!927267 () Bool)

(assert (=> b!1001044 m!927267))

(assert (=> b!1001044 m!927267))

(assert (=> b!1001044 m!927259))

(declare-fun m!927269 () Bool)

(assert (=> b!1001044 m!927269))

(declare-fun m!927271 () Bool)

(assert (=> start!86498 m!927271))

(declare-fun m!927273 () Bool)

(assert (=> start!86498 m!927273))

(declare-fun m!927275 () Bool)

(assert (=> b!1001050 m!927275))

(declare-fun m!927277 () Bool)

(assert (=> b!1001046 m!927277))

(push 1)

(assert (not b!1001045))

(assert (not b!1001044))

(assert (not start!86498))

(assert (not b!1001042))

(assert (not b!1001041))

(assert (not b!1001048))

(assert (not b!1001052))

(assert (not b!1001050))

(assert (not b!1001051))

(assert (not b!1001046))

(assert (not b!1001043))

(check-sat)

(pop 1)

(push 1)

(check-sat)

