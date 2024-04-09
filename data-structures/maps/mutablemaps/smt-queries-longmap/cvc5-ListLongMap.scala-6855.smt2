; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86416 () Bool)

(assert start!86416)

(declare-fun b!999575 () Bool)

(declare-fun res!669216 () Bool)

(declare-fun e!563607 () Bool)

(assert (=> b!999575 (=> (not res!669216) (not e!563607))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999575 (= res!669216 (validKeyInArray!0 k!2224))))

(declare-fun b!999576 () Bool)

(declare-fun res!669214 () Bool)

(assert (=> b!999576 (=> (not res!669214) (not e!563607))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-datatypes ((array!63169 0))(
  ( (array!63170 (arr!30406 (Array (_ BitVec 32) (_ BitVec 64))) (size!30909 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63169)

(assert (=> b!999576 (= res!669214 (and (= (size!30909 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30909 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30909 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!999577 () Bool)

(declare-fun res!669211 () Bool)

(declare-fun e!563609 () Bool)

(assert (=> b!999577 (=> (not res!669211) (not e!563609))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63169 (_ BitVec 32)) Bool)

(assert (=> b!999577 (= res!669211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999578 () Bool)

(declare-fun res!669212 () Bool)

(assert (=> b!999578 (=> (not res!669212) (not e!563609))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999578 (= res!669212 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30909 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30909 a!3219))))))

(declare-fun b!999579 () Bool)

(assert (=> b!999579 (= e!563607 e!563609)))

(declare-fun res!669218 () Bool)

(assert (=> b!999579 (=> (not res!669218) (not e!563609))))

(declare-datatypes ((SeekEntryResult!9338 0))(
  ( (MissingZero!9338 (index!39722 (_ BitVec 32))) (Found!9338 (index!39723 (_ BitVec 32))) (Intermediate!9338 (undefined!10150 Bool) (index!39724 (_ BitVec 32)) (x!87191 (_ BitVec 32))) (Undefined!9338) (MissingVacant!9338 (index!39725 (_ BitVec 32))) )
))
(declare-fun lt!442045 () SeekEntryResult!9338)

(assert (=> b!999579 (= res!669218 (or (= lt!442045 (MissingVacant!9338 i!1194)) (= lt!442045 (MissingZero!9338 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63169 (_ BitVec 32)) SeekEntryResult!9338)

(assert (=> b!999579 (= lt!442045 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!999580 () Bool)

(declare-fun res!669220 () Bool)

(declare-fun e!563608 () Bool)

(assert (=> b!999580 (=> (not res!669220) (not e!563608))))

(declare-fun lt!442047 () SeekEntryResult!9338)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63169 (_ BitVec 32)) SeekEntryResult!9338)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999580 (= res!669220 (not (= lt!442047 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30406 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30406 a!3219) i!1194 k!2224) j!170) (array!63170 (store (arr!30406 a!3219) i!1194 k!2224) (size!30909 a!3219)) mask!3464))))))

(declare-fun res!669217 () Bool)

(assert (=> start!86416 (=> (not res!669217) (not e!563607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86416 (= res!669217 (validMask!0 mask!3464))))

(assert (=> start!86416 e!563607))

(declare-fun array_inv!23396 (array!63169) Bool)

(assert (=> start!86416 (array_inv!23396 a!3219)))

(assert (=> start!86416 true))

(declare-fun b!999581 () Bool)

(declare-fun res!669215 () Bool)

(assert (=> b!999581 (=> (not res!669215) (not e!563607))))

(assert (=> b!999581 (= res!669215 (validKeyInArray!0 (select (arr!30406 a!3219) j!170)))))

(declare-fun b!999582 () Bool)

(assert (=> b!999582 (= e!563609 e!563608)))

(declare-fun res!669210 () Bool)

(assert (=> b!999582 (=> (not res!669210) (not e!563608))))

(declare-fun lt!442046 () SeekEntryResult!9338)

(assert (=> b!999582 (= res!669210 (= lt!442047 lt!442046))))

(assert (=> b!999582 (= lt!442046 (Intermediate!9338 false resIndex!38 resX!38))))

(assert (=> b!999582 (= lt!442047 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30406 a!3219) j!170) mask!3464) (select (arr!30406 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!999583 () Bool)

(declare-fun res!669213 () Bool)

(assert (=> b!999583 (=> (not res!669213) (not e!563608))))

(assert (=> b!999583 (= res!669213 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30406 a!3219) j!170) a!3219 mask!3464) lt!442046))))

(declare-fun b!999584 () Bool)

(assert (=> b!999584 (= e!563608 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!999585 () Bool)

(declare-fun res!669219 () Bool)

(assert (=> b!999585 (=> (not res!669219) (not e!563609))))

(declare-datatypes ((List!21208 0))(
  ( (Nil!21205) (Cons!21204 (h!22381 (_ BitVec 64)) (t!30217 List!21208)) )
))
(declare-fun arrayNoDuplicates!0 (array!63169 (_ BitVec 32) List!21208) Bool)

(assert (=> b!999585 (= res!669219 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21205))))

(declare-fun b!999586 () Bool)

(declare-fun res!669209 () Bool)

(assert (=> b!999586 (=> (not res!669209) (not e!563607))))

(declare-fun arrayContainsKey!0 (array!63169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999586 (= res!669209 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86416 res!669217) b!999576))

(assert (= (and b!999576 res!669214) b!999581))

(assert (= (and b!999581 res!669215) b!999575))

(assert (= (and b!999575 res!669216) b!999586))

(assert (= (and b!999586 res!669209) b!999579))

(assert (= (and b!999579 res!669218) b!999577))

(assert (= (and b!999577 res!669211) b!999585))

(assert (= (and b!999585 res!669219) b!999578))

(assert (= (and b!999578 res!669212) b!999582))

(assert (= (and b!999582 res!669210) b!999583))

(assert (= (and b!999583 res!669213) b!999580))

(assert (= (and b!999580 res!669220) b!999584))

(declare-fun m!925911 () Bool)

(assert (=> b!999583 m!925911))

(assert (=> b!999583 m!925911))

(declare-fun m!925913 () Bool)

(assert (=> b!999583 m!925913))

(declare-fun m!925915 () Bool)

(assert (=> b!999577 m!925915))

(declare-fun m!925917 () Bool)

(assert (=> b!999586 m!925917))

(declare-fun m!925919 () Bool)

(assert (=> start!86416 m!925919))

(declare-fun m!925921 () Bool)

(assert (=> start!86416 m!925921))

(assert (=> b!999581 m!925911))

(assert (=> b!999581 m!925911))

(declare-fun m!925923 () Bool)

(assert (=> b!999581 m!925923))

(declare-fun m!925925 () Bool)

(assert (=> b!999575 m!925925))

(declare-fun m!925927 () Bool)

(assert (=> b!999580 m!925927))

(declare-fun m!925929 () Bool)

(assert (=> b!999580 m!925929))

(assert (=> b!999580 m!925929))

(declare-fun m!925931 () Bool)

(assert (=> b!999580 m!925931))

(assert (=> b!999580 m!925931))

(assert (=> b!999580 m!925929))

(declare-fun m!925933 () Bool)

(assert (=> b!999580 m!925933))

(declare-fun m!925935 () Bool)

(assert (=> b!999585 m!925935))

(declare-fun m!925937 () Bool)

(assert (=> b!999579 m!925937))

(assert (=> b!999582 m!925911))

(assert (=> b!999582 m!925911))

(declare-fun m!925939 () Bool)

(assert (=> b!999582 m!925939))

(assert (=> b!999582 m!925939))

(assert (=> b!999582 m!925911))

(declare-fun m!925941 () Bool)

(assert (=> b!999582 m!925941))

(push 1)

