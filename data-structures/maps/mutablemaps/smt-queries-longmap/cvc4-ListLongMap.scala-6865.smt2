; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86480 () Bool)

(assert start!86480)

(declare-fun b!1000699 () Bool)

(declare-fun res!670340 () Bool)

(declare-fun e!563991 () Bool)

(assert (=> b!1000699 (=> (not res!670340) (not e!563991))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000699 (= res!670340 (validKeyInArray!0 k!2224))))

(declare-fun b!1000700 () Bool)

(declare-fun res!670337 () Bool)

(declare-fun e!563992 () Bool)

(assert (=> b!1000700 (=> (not res!670337) (not e!563992))))

(declare-datatypes ((array!63233 0))(
  ( (array!63234 (arr!30438 (Array (_ BitVec 32) (_ BitVec 64))) (size!30941 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63233)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9370 0))(
  ( (MissingZero!9370 (index!39850 (_ BitVec 32))) (Found!9370 (index!39851 (_ BitVec 32))) (Intermediate!9370 (undefined!10182 Bool) (index!39852 (_ BitVec 32)) (x!87303 (_ BitVec 32))) (Undefined!9370) (MissingVacant!9370 (index!39853 (_ BitVec 32))) )
))
(declare-fun lt!442335 () SeekEntryResult!9370)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63233 (_ BitVec 32)) SeekEntryResult!9370)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000700 (= res!670337 (not (= lt!442335 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30438 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30438 a!3219) i!1194 k!2224) j!170) (array!63234 (store (arr!30438 a!3219) i!1194 k!2224) (size!30941 a!3219)) mask!3464))))))

(declare-fun b!1000701 () Bool)

(declare-fun res!670341 () Bool)

(declare-fun e!563990 () Bool)

(assert (=> b!1000701 (=> (not res!670341) (not e!563990))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63233 (_ BitVec 32)) Bool)

(assert (=> b!1000701 (= res!670341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000702 () Bool)

(assert (=> b!1000702 (= e!563992 (not (validKeyInArray!0 (select (store (arr!30438 a!3219) i!1194 k!2224) j!170))))))

(declare-fun b!1000703 () Bool)

(declare-fun res!670339 () Bool)

(assert (=> b!1000703 (=> (not res!670339) (not e!563991))))

(assert (=> b!1000703 (= res!670339 (validKeyInArray!0 (select (arr!30438 a!3219) j!170)))))

(declare-fun b!1000704 () Bool)

(declare-fun res!670338 () Bool)

(assert (=> b!1000704 (=> (not res!670338) (not e!563991))))

(assert (=> b!1000704 (= res!670338 (and (= (size!30941 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30941 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30941 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000705 () Bool)

(declare-fun res!670344 () Bool)

(assert (=> b!1000705 (=> (not res!670344) (not e!563991))))

(declare-fun arrayContainsKey!0 (array!63233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000705 (= res!670344 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000706 () Bool)

(declare-fun res!670335 () Bool)

(assert (=> b!1000706 (=> (not res!670335) (not e!563990))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000706 (= res!670335 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30941 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30941 a!3219))))))

(declare-fun b!1000707 () Bool)

(declare-fun res!670333 () Bool)

(assert (=> b!1000707 (=> (not res!670333) (not e!563992))))

(declare-fun lt!442333 () SeekEntryResult!9370)

(assert (=> b!1000707 (= res!670333 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30438 a!3219) j!170) a!3219 mask!3464) lt!442333))))

(declare-fun b!1000708 () Bool)

(assert (=> b!1000708 (= e!563990 e!563992)))

(declare-fun res!670345 () Bool)

(assert (=> b!1000708 (=> (not res!670345) (not e!563992))))

(assert (=> b!1000708 (= res!670345 (= lt!442335 lt!442333))))

(assert (=> b!1000708 (= lt!442333 (Intermediate!9370 false resIndex!38 resX!38))))

(assert (=> b!1000708 (= lt!442335 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30438 a!3219) j!170) mask!3464) (select (arr!30438 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!670334 () Bool)

(assert (=> start!86480 (=> (not res!670334) (not e!563991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86480 (= res!670334 (validMask!0 mask!3464))))

(assert (=> start!86480 e!563991))

(declare-fun array_inv!23428 (array!63233) Bool)

(assert (=> start!86480 (array_inv!23428 a!3219)))

(assert (=> start!86480 true))

(declare-fun b!1000709 () Bool)

(declare-fun res!670343 () Bool)

(assert (=> b!1000709 (=> (not res!670343) (not e!563992))))

(assert (=> b!1000709 (= res!670343 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvslt index!1507 (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsle x!1245 #b01111111111111111111111111111110)))))

(declare-fun b!1000710 () Bool)

(declare-fun res!670336 () Bool)

(assert (=> b!1000710 (=> (not res!670336) (not e!563990))))

(declare-datatypes ((List!21240 0))(
  ( (Nil!21237) (Cons!21236 (h!22413 (_ BitVec 64)) (t!30249 List!21240)) )
))
(declare-fun arrayNoDuplicates!0 (array!63233 (_ BitVec 32) List!21240) Bool)

(assert (=> b!1000710 (= res!670336 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21237))))

(declare-fun b!1000711 () Bool)

(assert (=> b!1000711 (= e!563991 e!563990)))

(declare-fun res!670342 () Bool)

(assert (=> b!1000711 (=> (not res!670342) (not e!563990))))

(declare-fun lt!442334 () SeekEntryResult!9370)

(assert (=> b!1000711 (= res!670342 (or (= lt!442334 (MissingVacant!9370 i!1194)) (= lt!442334 (MissingZero!9370 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63233 (_ BitVec 32)) SeekEntryResult!9370)

(assert (=> b!1000711 (= lt!442334 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!86480 res!670334) b!1000704))

(assert (= (and b!1000704 res!670338) b!1000703))

(assert (= (and b!1000703 res!670339) b!1000699))

(assert (= (and b!1000699 res!670340) b!1000705))

(assert (= (and b!1000705 res!670344) b!1000711))

(assert (= (and b!1000711 res!670342) b!1000701))

(assert (= (and b!1000701 res!670341) b!1000710))

(assert (= (and b!1000710 res!670336) b!1000706))

(assert (= (and b!1000706 res!670335) b!1000708))

(assert (= (and b!1000708 res!670345) b!1000707))

(assert (= (and b!1000707 res!670333) b!1000700))

(assert (= (and b!1000700 res!670337) b!1000709))

(assert (= (and b!1000709 res!670343) b!1000702))

(declare-fun m!926939 () Bool)

(assert (=> b!1000699 m!926939))

(declare-fun m!926941 () Bool)

(assert (=> b!1000700 m!926941))

(declare-fun m!926943 () Bool)

(assert (=> b!1000700 m!926943))

(assert (=> b!1000700 m!926943))

(declare-fun m!926945 () Bool)

(assert (=> b!1000700 m!926945))

(assert (=> b!1000700 m!926945))

(assert (=> b!1000700 m!926943))

(declare-fun m!926947 () Bool)

(assert (=> b!1000700 m!926947))

(declare-fun m!926949 () Bool)

(assert (=> b!1000703 m!926949))

(assert (=> b!1000703 m!926949))

(declare-fun m!926951 () Bool)

(assert (=> b!1000703 m!926951))

(declare-fun m!926953 () Bool)

(assert (=> b!1000711 m!926953))

(declare-fun m!926955 () Bool)

(assert (=> b!1000705 m!926955))

(assert (=> b!1000707 m!926949))

(assert (=> b!1000707 m!926949))

(declare-fun m!926957 () Bool)

(assert (=> b!1000707 m!926957))

(assert (=> b!1000708 m!926949))

(assert (=> b!1000708 m!926949))

(declare-fun m!926959 () Bool)

(assert (=> b!1000708 m!926959))

(assert (=> b!1000708 m!926959))

(assert (=> b!1000708 m!926949))

(declare-fun m!926961 () Bool)

(assert (=> b!1000708 m!926961))

(declare-fun m!926963 () Bool)

(assert (=> b!1000701 m!926963))

(assert (=> b!1000702 m!926941))

(assert (=> b!1000702 m!926943))

(assert (=> b!1000702 m!926943))

(declare-fun m!926965 () Bool)

(assert (=> b!1000702 m!926965))

(declare-fun m!926967 () Bool)

(assert (=> b!1000710 m!926967))

(declare-fun m!926969 () Bool)

(assert (=> start!86480 m!926969))

(declare-fun m!926971 () Bool)

(assert (=> start!86480 m!926971))

(push 1)

(assert (not b!1000707))

(assert (not b!1000701))

(assert (not b!1000711))

(assert (not b!1000703))

(assert (not b!1000710))

(assert (not b!1000700))

(assert (not b!1000699))

