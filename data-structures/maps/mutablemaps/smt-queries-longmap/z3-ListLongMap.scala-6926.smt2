; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87090 () Bool)

(assert start!87090)

(declare-fun b!1009686 () Bool)

(declare-fun e!568084 () Bool)

(declare-fun e!568088 () Bool)

(assert (=> b!1009686 (= e!568084 e!568088)))

(declare-fun res!678376 () Bool)

(assert (=> b!1009686 (=> (not res!678376) (not e!568088))))

(declare-datatypes ((SeekEntryResult!9552 0))(
  ( (MissingZero!9552 (index!40578 (_ BitVec 32))) (Found!9552 (index!40579 (_ BitVec 32))) (Intermediate!9552 (undefined!10364 Bool) (index!40580 (_ BitVec 32)) (x!88006 (_ BitVec 32))) (Undefined!9552) (MissingVacant!9552 (index!40581 (_ BitVec 32))) )
))
(declare-fun lt!446263 () SeekEntryResult!9552)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1009686 (= res!678376 (or (= lt!446263 (MissingVacant!9552 i!1194)) (= lt!446263 (MissingZero!9552 i!1194))))))

(declare-datatypes ((array!63609 0))(
  ( (array!63610 (arr!30620 (Array (_ BitVec 32) (_ BitVec 64))) (size!31123 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63609)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63609 (_ BitVec 32)) SeekEntryResult!9552)

(assert (=> b!1009686 (= lt!446263 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1009687 () Bool)

(declare-fun res!678381 () Bool)

(assert (=> b!1009687 (=> (not res!678381) (not e!568084))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1009687 (= res!678381 (validKeyInArray!0 k0!2224))))

(declare-fun b!1009688 () Bool)

(declare-fun res!678383 () Bool)

(declare-fun e!568085 () Bool)

(assert (=> b!1009688 (=> (not res!678383) (not e!568085))))

(declare-fun lt!446268 () SeekEntryResult!9552)

(declare-fun lt!446264 () (_ BitVec 64))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!446262 () array!63609)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63609 (_ BitVec 32)) SeekEntryResult!9552)

(assert (=> b!1009688 (= res!678383 (not (= lt!446268 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446264 lt!446262 mask!3464))))))

(declare-fun b!1009689 () Bool)

(declare-fun res!678378 () Bool)

(assert (=> b!1009689 (=> (not res!678378) (not e!568084))))

(declare-fun arrayContainsKey!0 (array!63609 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1009689 (= res!678378 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1009690 () Bool)

(declare-fun res!678379 () Bool)

(assert (=> b!1009690 (=> (not res!678379) (not e!568084))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1009690 (= res!678379 (and (= (size!31123 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31123 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31123 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1009691 () Bool)

(declare-fun e!568087 () Bool)

(assert (=> b!1009691 (= e!568087 e!568085)))

(declare-fun res!678387 () Bool)

(assert (=> b!1009691 (=> (not res!678387) (not e!568085))))

(declare-fun lt!446267 () SeekEntryResult!9552)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009691 (= res!678387 (not (= lt!446267 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446264 mask!3464) lt!446264 lt!446262 mask!3464))))))

(assert (=> b!1009691 (= lt!446264 (select (store (arr!30620 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1009691 (= lt!446262 (array!63610 (store (arr!30620 a!3219) i!1194 k0!2224) (size!31123 a!3219)))))

(declare-fun res!678385 () Bool)

(assert (=> start!87090 (=> (not res!678385) (not e!568084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87090 (= res!678385 (validMask!0 mask!3464))))

(assert (=> start!87090 e!568084))

(declare-fun array_inv!23610 (array!63609) Bool)

(assert (=> start!87090 (array_inv!23610 a!3219)))

(assert (=> start!87090 true))

(declare-fun b!1009692 () Bool)

(declare-fun res!678377 () Bool)

(assert (=> b!1009692 (=> (not res!678377) (not e!568084))))

(assert (=> b!1009692 (= res!678377 (validKeyInArray!0 (select (arr!30620 a!3219) j!170)))))

(declare-fun b!1009693 () Bool)

(declare-fun res!678382 () Bool)

(assert (=> b!1009693 (=> (not res!678382) (not e!568085))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1009693 (= res!678382 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1009694 () Bool)

(declare-fun res!678386 () Bool)

(assert (=> b!1009694 (=> (not res!678386) (not e!568088))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1009694 (= res!678386 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31123 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31123 a!3219))))))

(declare-fun b!1009695 () Bool)

(declare-fun res!678380 () Bool)

(assert (=> b!1009695 (=> (not res!678380) (not e!568088))))

(declare-datatypes ((List!21422 0))(
  ( (Nil!21419) (Cons!21418 (h!22607 (_ BitVec 64)) (t!30431 List!21422)) )
))
(declare-fun arrayNoDuplicates!0 (array!63609 (_ BitVec 32) List!21422) Bool)

(assert (=> b!1009695 (= res!678380 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21419))))

(declare-fun b!1009696 () Bool)

(declare-fun e!568083 () Bool)

(assert (=> b!1009696 (= e!568083 e!568087)))

(declare-fun res!678384 () Bool)

(assert (=> b!1009696 (=> (not res!678384) (not e!568087))))

(declare-fun lt!446266 () SeekEntryResult!9552)

(assert (=> b!1009696 (= res!678384 (= lt!446268 lt!446266))))

(assert (=> b!1009696 (= lt!446268 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30620 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009697 () Bool)

(declare-fun res!678388 () Bool)

(assert (=> b!1009697 (=> (not res!678388) (not e!568088))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63609 (_ BitVec 32)) Bool)

(assert (=> b!1009697 (= res!678388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1009698 () Bool)

(assert (=> b!1009698 (= e!568088 e!568083)))

(declare-fun res!678375 () Bool)

(assert (=> b!1009698 (=> (not res!678375) (not e!568083))))

(assert (=> b!1009698 (= res!678375 (= lt!446267 lt!446266))))

(assert (=> b!1009698 (= lt!446266 (Intermediate!9552 false resIndex!38 resX!38))))

(assert (=> b!1009698 (= lt!446267 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30620 a!3219) j!170) mask!3464) (select (arr!30620 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009699 () Bool)

(declare-fun lt!446265 () (_ BitVec 32))

(assert (=> b!1009699 (= e!568085 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (or (bvslt lt!446265 #b00000000000000000000000000000000) (bvsge lt!446265 (size!31123 a!3219)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009699 (= lt!446265 (nextIndex!0 index!1507 x!1245 mask!3464))))

(assert (= (and start!87090 res!678385) b!1009690))

(assert (= (and b!1009690 res!678379) b!1009692))

(assert (= (and b!1009692 res!678377) b!1009687))

(assert (= (and b!1009687 res!678381) b!1009689))

(assert (= (and b!1009689 res!678378) b!1009686))

(assert (= (and b!1009686 res!678376) b!1009697))

(assert (= (and b!1009697 res!678388) b!1009695))

(assert (= (and b!1009695 res!678380) b!1009694))

(assert (= (and b!1009694 res!678386) b!1009698))

(assert (= (and b!1009698 res!678375) b!1009696))

(assert (= (and b!1009696 res!678384) b!1009691))

(assert (= (and b!1009691 res!678387) b!1009688))

(assert (= (and b!1009688 res!678383) b!1009693))

(assert (= (and b!1009693 res!678382) b!1009699))

(declare-fun m!934317 () Bool)

(assert (=> b!1009687 m!934317))

(declare-fun m!934319 () Bool)

(assert (=> b!1009695 m!934319))

(declare-fun m!934321 () Bool)

(assert (=> b!1009688 m!934321))

(declare-fun m!934323 () Bool)

(assert (=> b!1009691 m!934323))

(assert (=> b!1009691 m!934323))

(declare-fun m!934325 () Bool)

(assert (=> b!1009691 m!934325))

(declare-fun m!934327 () Bool)

(assert (=> b!1009691 m!934327))

(declare-fun m!934329 () Bool)

(assert (=> b!1009691 m!934329))

(declare-fun m!934331 () Bool)

(assert (=> b!1009689 m!934331))

(declare-fun m!934333 () Bool)

(assert (=> b!1009697 m!934333))

(declare-fun m!934335 () Bool)

(assert (=> b!1009692 m!934335))

(assert (=> b!1009692 m!934335))

(declare-fun m!934337 () Bool)

(assert (=> b!1009692 m!934337))

(declare-fun m!934339 () Bool)

(assert (=> start!87090 m!934339))

(declare-fun m!934341 () Bool)

(assert (=> start!87090 m!934341))

(assert (=> b!1009696 m!934335))

(assert (=> b!1009696 m!934335))

(declare-fun m!934343 () Bool)

(assert (=> b!1009696 m!934343))

(declare-fun m!934345 () Bool)

(assert (=> b!1009699 m!934345))

(declare-fun m!934347 () Bool)

(assert (=> b!1009686 m!934347))

(assert (=> b!1009698 m!934335))

(assert (=> b!1009698 m!934335))

(declare-fun m!934349 () Bool)

(assert (=> b!1009698 m!934349))

(assert (=> b!1009698 m!934349))

(assert (=> b!1009698 m!934335))

(declare-fun m!934351 () Bool)

(assert (=> b!1009698 m!934351))

(check-sat (not b!1009696) (not b!1009697) (not start!87090) (not b!1009698) (not b!1009686) (not b!1009691) (not b!1009687) (not b!1009699) (not b!1009692) (not b!1009688) (not b!1009695) (not b!1009689))
(check-sat)
(get-model)

(declare-fun d!119865 () Bool)

(assert (=> d!119865 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1009687 d!119865))

(declare-fun b!1009760 () Bool)

(declare-fun e!568118 () Bool)

(declare-fun lt!446295 () SeekEntryResult!9552)

(assert (=> b!1009760 (= e!568118 (bvsge (x!88006 lt!446295) #b01111111111111111111111111111110))))

(declare-fun e!568119 () SeekEntryResult!9552)

(declare-fun b!1009761 () Bool)

(assert (=> b!1009761 (= e!568119 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30620 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30620 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009762 () Bool)

(assert (=> b!1009762 (and (bvsge (index!40580 lt!446295) #b00000000000000000000000000000000) (bvslt (index!40580 lt!446295) (size!31123 a!3219)))))

(declare-fun res!678438 () Bool)

(assert (=> b!1009762 (= res!678438 (= (select (arr!30620 a!3219) (index!40580 lt!446295)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568120 () Bool)

(assert (=> b!1009762 (=> res!678438 e!568120)))

(declare-fun e!568117 () SeekEntryResult!9552)

(declare-fun b!1009763 () Bool)

(assert (=> b!1009763 (= e!568117 (Intermediate!9552 true (toIndex!0 (select (arr!30620 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1009764 () Bool)

(declare-fun e!568121 () Bool)

(assert (=> b!1009764 (= e!568118 e!568121)))

(declare-fun res!678439 () Bool)

(get-info :version)

(assert (=> b!1009764 (= res!678439 (and ((_ is Intermediate!9552) lt!446295) (not (undefined!10364 lt!446295)) (bvslt (x!88006 lt!446295) #b01111111111111111111111111111110) (bvsge (x!88006 lt!446295) #b00000000000000000000000000000000) (bvsge (x!88006 lt!446295) #b00000000000000000000000000000000)))))

(assert (=> b!1009764 (=> (not res!678439) (not e!568121))))

(declare-fun b!1009765 () Bool)

(assert (=> b!1009765 (and (bvsge (index!40580 lt!446295) #b00000000000000000000000000000000) (bvslt (index!40580 lt!446295) (size!31123 a!3219)))))

(declare-fun res!678437 () Bool)

(assert (=> b!1009765 (= res!678437 (= (select (arr!30620 a!3219) (index!40580 lt!446295)) (select (arr!30620 a!3219) j!170)))))

(assert (=> b!1009765 (=> res!678437 e!568120)))

(assert (=> b!1009765 (= e!568121 e!568120)))

(declare-fun b!1009766 () Bool)

(assert (=> b!1009766 (= e!568119 (Intermediate!9552 false (toIndex!0 (select (arr!30620 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1009767 () Bool)

(assert (=> b!1009767 (and (bvsge (index!40580 lt!446295) #b00000000000000000000000000000000) (bvslt (index!40580 lt!446295) (size!31123 a!3219)))))

(assert (=> b!1009767 (= e!568120 (= (select (arr!30620 a!3219) (index!40580 lt!446295)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009768 () Bool)

(assert (=> b!1009768 (= e!568117 e!568119)))

(declare-fun lt!446294 () (_ BitVec 64))

(declare-fun c!101823 () Bool)

(assert (=> b!1009768 (= c!101823 (or (= lt!446294 (select (arr!30620 a!3219) j!170)) (= (bvadd lt!446294 lt!446294) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!119867 () Bool)

(assert (=> d!119867 e!568118))

(declare-fun c!101822 () Bool)

(assert (=> d!119867 (= c!101822 (and ((_ is Intermediate!9552) lt!446295) (undefined!10364 lt!446295)))))

(assert (=> d!119867 (= lt!446295 e!568117)))

(declare-fun c!101821 () Bool)

(assert (=> d!119867 (= c!101821 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119867 (= lt!446294 (select (arr!30620 a!3219) (toIndex!0 (select (arr!30620 a!3219) j!170) mask!3464)))))

(assert (=> d!119867 (validMask!0 mask!3464)))

(assert (=> d!119867 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30620 a!3219) j!170) mask!3464) (select (arr!30620 a!3219) j!170) a!3219 mask!3464) lt!446295)))

(assert (= (and d!119867 c!101821) b!1009763))

(assert (= (and d!119867 (not c!101821)) b!1009768))

(assert (= (and b!1009768 c!101823) b!1009766))

(assert (= (and b!1009768 (not c!101823)) b!1009761))

(assert (= (and d!119867 c!101822) b!1009760))

(assert (= (and d!119867 (not c!101822)) b!1009764))

(assert (= (and b!1009764 res!678439) b!1009765))

(assert (= (and b!1009765 (not res!678437)) b!1009762))

(assert (= (and b!1009762 (not res!678438)) b!1009767))

(declare-fun m!934389 () Bool)

(assert (=> b!1009765 m!934389))

(assert (=> b!1009767 m!934389))

(assert (=> b!1009761 m!934349))

(declare-fun m!934391 () Bool)

(assert (=> b!1009761 m!934391))

(assert (=> b!1009761 m!934391))

(assert (=> b!1009761 m!934335))

(declare-fun m!934393 () Bool)

(assert (=> b!1009761 m!934393))

(assert (=> b!1009762 m!934389))

(assert (=> d!119867 m!934349))

(declare-fun m!934395 () Bool)

(assert (=> d!119867 m!934395))

(assert (=> d!119867 m!934339))

(assert (=> b!1009698 d!119867))

(declare-fun d!119871 () Bool)

(declare-fun lt!446301 () (_ BitVec 32))

(declare-fun lt!446300 () (_ BitVec 32))

(assert (=> d!119871 (= lt!446301 (bvmul (bvxor lt!446300 (bvlshr lt!446300 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119871 (= lt!446300 ((_ extract 31 0) (bvand (bvxor (select (arr!30620 a!3219) j!170) (bvlshr (select (arr!30620 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119871 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!678440 (let ((h!22609 ((_ extract 31 0) (bvand (bvxor (select (arr!30620 a!3219) j!170) (bvlshr (select (arr!30620 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88009 (bvmul (bvxor h!22609 (bvlshr h!22609 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88009 (bvlshr x!88009 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!678440 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!678440 #b00000000000000000000000000000000))))))

(assert (=> d!119871 (= (toIndex!0 (select (arr!30620 a!3219) j!170) mask!3464) (bvand (bvxor lt!446301 (bvlshr lt!446301 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1009698 d!119871))

(declare-fun b!1009779 () Bool)

(declare-fun e!568131 () Bool)

(declare-fun lt!446303 () SeekEntryResult!9552)

(assert (=> b!1009779 (= e!568131 (bvsge (x!88006 lt!446303) #b01111111111111111111111111111110))))

(declare-fun b!1009780 () Bool)

(declare-fun e!568132 () SeekEntryResult!9552)

(assert (=> b!1009780 (= e!568132 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!446264 lt!446262 mask!3464))))

(declare-fun b!1009781 () Bool)

(assert (=> b!1009781 (and (bvsge (index!40580 lt!446303) #b00000000000000000000000000000000) (bvslt (index!40580 lt!446303) (size!31123 lt!446262)))))

(declare-fun res!678448 () Bool)

(assert (=> b!1009781 (= res!678448 (= (select (arr!30620 lt!446262) (index!40580 lt!446303)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568133 () Bool)

(assert (=> b!1009781 (=> res!678448 e!568133)))

(declare-fun b!1009782 () Bool)

(declare-fun e!568130 () SeekEntryResult!9552)

(assert (=> b!1009782 (= e!568130 (Intermediate!9552 true index!1507 x!1245))))

(declare-fun b!1009783 () Bool)

(declare-fun e!568134 () Bool)

(assert (=> b!1009783 (= e!568131 e!568134)))

(declare-fun res!678449 () Bool)

(assert (=> b!1009783 (= res!678449 (and ((_ is Intermediate!9552) lt!446303) (not (undefined!10364 lt!446303)) (bvslt (x!88006 lt!446303) #b01111111111111111111111111111110) (bvsge (x!88006 lt!446303) #b00000000000000000000000000000000) (bvsge (x!88006 lt!446303) x!1245)))))

(assert (=> b!1009783 (=> (not res!678449) (not e!568134))))

(declare-fun b!1009784 () Bool)

(assert (=> b!1009784 (and (bvsge (index!40580 lt!446303) #b00000000000000000000000000000000) (bvslt (index!40580 lt!446303) (size!31123 lt!446262)))))

(declare-fun res!678447 () Bool)

(assert (=> b!1009784 (= res!678447 (= (select (arr!30620 lt!446262) (index!40580 lt!446303)) lt!446264))))

(assert (=> b!1009784 (=> res!678447 e!568133)))

(assert (=> b!1009784 (= e!568134 e!568133)))

(declare-fun b!1009785 () Bool)

(assert (=> b!1009785 (= e!568132 (Intermediate!9552 false index!1507 x!1245))))

(declare-fun b!1009786 () Bool)

(assert (=> b!1009786 (and (bvsge (index!40580 lt!446303) #b00000000000000000000000000000000) (bvslt (index!40580 lt!446303) (size!31123 lt!446262)))))

(assert (=> b!1009786 (= e!568133 (= (select (arr!30620 lt!446262) (index!40580 lt!446303)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009787 () Bool)

(assert (=> b!1009787 (= e!568130 e!568132)))

(declare-fun c!101828 () Bool)

(declare-fun lt!446302 () (_ BitVec 64))

(assert (=> b!1009787 (= c!101828 (or (= lt!446302 lt!446264) (= (bvadd lt!446302 lt!446302) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!119873 () Bool)

(assert (=> d!119873 e!568131))

(declare-fun c!101827 () Bool)

(assert (=> d!119873 (= c!101827 (and ((_ is Intermediate!9552) lt!446303) (undefined!10364 lt!446303)))))

(assert (=> d!119873 (= lt!446303 e!568130)))

(declare-fun c!101826 () Bool)

(assert (=> d!119873 (= c!101826 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119873 (= lt!446302 (select (arr!30620 lt!446262) index!1507))))

(assert (=> d!119873 (validMask!0 mask!3464)))

(assert (=> d!119873 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446264 lt!446262 mask!3464) lt!446303)))

(assert (= (and d!119873 c!101826) b!1009782))

(assert (= (and d!119873 (not c!101826)) b!1009787))

(assert (= (and b!1009787 c!101828) b!1009785))

(assert (= (and b!1009787 (not c!101828)) b!1009780))

(assert (= (and d!119873 c!101827) b!1009779))

(assert (= (and d!119873 (not c!101827)) b!1009783))

(assert (= (and b!1009783 res!678449) b!1009784))

(assert (= (and b!1009784 (not res!678447)) b!1009781))

(assert (= (and b!1009781 (not res!678448)) b!1009786))

(declare-fun m!934397 () Bool)

(assert (=> b!1009784 m!934397))

(assert (=> b!1009786 m!934397))

(assert (=> b!1009780 m!934345))

(assert (=> b!1009780 m!934345))

(declare-fun m!934401 () Bool)

(assert (=> b!1009780 m!934401))

(assert (=> b!1009781 m!934397))

(declare-fun m!934405 () Bool)

(assert (=> d!119873 m!934405))

(assert (=> d!119873 m!934339))

(assert (=> b!1009688 d!119873))

(declare-fun d!119875 () Bool)

(declare-fun lt!446306 () (_ BitVec 32))

(assert (=> d!119875 (and (bvsge lt!446306 #b00000000000000000000000000000000) (bvslt lt!446306 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!119875 (= lt!446306 (choose!52 index!1507 x!1245 mask!3464))))

(assert (=> d!119875 (validMask!0 mask!3464)))

(assert (=> d!119875 (= (nextIndex!0 index!1507 x!1245 mask!3464) lt!446306)))

(declare-fun bs!28709 () Bool)

(assert (= bs!28709 d!119875))

(declare-fun m!934411 () Bool)

(assert (=> bs!28709 m!934411))

(assert (=> bs!28709 m!934339))

(assert (=> b!1009699 d!119875))

(declare-fun d!119879 () Bool)

(declare-fun res!678457 () Bool)

(declare-fun e!568143 () Bool)

(assert (=> d!119879 (=> res!678457 e!568143)))

(assert (=> d!119879 (= res!678457 (= (select (arr!30620 a!3219) #b00000000000000000000000000000000) k0!2224))))

(assert (=> d!119879 (= (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000) e!568143)))

(declare-fun b!1009797 () Bool)

(declare-fun e!568144 () Bool)

(assert (=> b!1009797 (= e!568143 e!568144)))

(declare-fun res!678458 () Bool)

(assert (=> b!1009797 (=> (not res!678458) (not e!568144))))

(assert (=> b!1009797 (= res!678458 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31123 a!3219)))))

(declare-fun b!1009798 () Bool)

(assert (=> b!1009798 (= e!568144 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119879 (not res!678457)) b!1009797))

(assert (= (and b!1009797 res!678458) b!1009798))

(declare-fun m!934413 () Bool)

(assert (=> d!119879 m!934413))

(declare-fun m!934415 () Bool)

(assert (=> b!1009798 m!934415))

(assert (=> b!1009689 d!119879))

(declare-fun b!1009809 () Bool)

(declare-fun e!568156 () Bool)

(declare-fun e!568154 () Bool)

(assert (=> b!1009809 (= e!568156 e!568154)))

(declare-fun res!678465 () Bool)

(assert (=> b!1009809 (=> (not res!678465) (not e!568154))))

(declare-fun e!568153 () Bool)

(assert (=> b!1009809 (= res!678465 (not e!568153))))

(declare-fun res!678467 () Bool)

(assert (=> b!1009809 (=> (not res!678467) (not e!568153))))

(assert (=> b!1009809 (= res!678467 (validKeyInArray!0 (select (arr!30620 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42394 () Bool)

(declare-fun call!42397 () Bool)

(declare-fun c!101832 () Bool)

(assert (=> bm!42394 (= call!42397 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101832 (Cons!21418 (select (arr!30620 a!3219) #b00000000000000000000000000000000) Nil!21419) Nil!21419)))))

(declare-fun d!119881 () Bool)

(declare-fun res!678466 () Bool)

(assert (=> d!119881 (=> res!678466 e!568156)))

(assert (=> d!119881 (= res!678466 (bvsge #b00000000000000000000000000000000 (size!31123 a!3219)))))

(assert (=> d!119881 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21419) e!568156)))

(declare-fun b!1009810 () Bool)

(declare-fun e!568155 () Bool)

(assert (=> b!1009810 (= e!568154 e!568155)))

(assert (=> b!1009810 (= c!101832 (validKeyInArray!0 (select (arr!30620 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1009811 () Bool)

(assert (=> b!1009811 (= e!568155 call!42397)))

(declare-fun b!1009812 () Bool)

(assert (=> b!1009812 (= e!568155 call!42397)))

(declare-fun b!1009813 () Bool)

(declare-fun contains!5901 (List!21422 (_ BitVec 64)) Bool)

(assert (=> b!1009813 (= e!568153 (contains!5901 Nil!21419 (select (arr!30620 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119881 (not res!678466)) b!1009809))

(assert (= (and b!1009809 res!678467) b!1009813))

(assert (= (and b!1009809 res!678465) b!1009810))

(assert (= (and b!1009810 c!101832) b!1009812))

(assert (= (and b!1009810 (not c!101832)) b!1009811))

(assert (= (or b!1009812 b!1009811) bm!42394))

(assert (=> b!1009809 m!934413))

(assert (=> b!1009809 m!934413))

(declare-fun m!934417 () Bool)

(assert (=> b!1009809 m!934417))

(assert (=> bm!42394 m!934413))

(declare-fun m!934419 () Bool)

(assert (=> bm!42394 m!934419))

(assert (=> b!1009810 m!934413))

(assert (=> b!1009810 m!934413))

(assert (=> b!1009810 m!934417))

(assert (=> b!1009813 m!934413))

(assert (=> b!1009813 m!934413))

(declare-fun m!934421 () Bool)

(assert (=> b!1009813 m!934421))

(assert (=> b!1009695 d!119881))

(declare-fun b!1009814 () Bool)

(declare-fun e!568158 () Bool)

(declare-fun lt!446308 () SeekEntryResult!9552)

(assert (=> b!1009814 (= e!568158 (bvsge (x!88006 lt!446308) #b01111111111111111111111111111110))))

(declare-fun e!568159 () SeekEntryResult!9552)

(declare-fun b!1009815 () Bool)

(assert (=> b!1009815 (= e!568159 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30620 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009816 () Bool)

(assert (=> b!1009816 (and (bvsge (index!40580 lt!446308) #b00000000000000000000000000000000) (bvslt (index!40580 lt!446308) (size!31123 a!3219)))))

(declare-fun res!678469 () Bool)

(assert (=> b!1009816 (= res!678469 (= (select (arr!30620 a!3219) (index!40580 lt!446308)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568160 () Bool)

(assert (=> b!1009816 (=> res!678469 e!568160)))

(declare-fun b!1009817 () Bool)

(declare-fun e!568157 () SeekEntryResult!9552)

(assert (=> b!1009817 (= e!568157 (Intermediate!9552 true index!1507 x!1245))))

(declare-fun b!1009818 () Bool)

(declare-fun e!568161 () Bool)

(assert (=> b!1009818 (= e!568158 e!568161)))

(declare-fun res!678470 () Bool)

(assert (=> b!1009818 (= res!678470 (and ((_ is Intermediate!9552) lt!446308) (not (undefined!10364 lt!446308)) (bvslt (x!88006 lt!446308) #b01111111111111111111111111111110) (bvsge (x!88006 lt!446308) #b00000000000000000000000000000000) (bvsge (x!88006 lt!446308) x!1245)))))

(assert (=> b!1009818 (=> (not res!678470) (not e!568161))))

(declare-fun b!1009819 () Bool)

(assert (=> b!1009819 (and (bvsge (index!40580 lt!446308) #b00000000000000000000000000000000) (bvslt (index!40580 lt!446308) (size!31123 a!3219)))))

(declare-fun res!678468 () Bool)

(assert (=> b!1009819 (= res!678468 (= (select (arr!30620 a!3219) (index!40580 lt!446308)) (select (arr!30620 a!3219) j!170)))))

(assert (=> b!1009819 (=> res!678468 e!568160)))

(assert (=> b!1009819 (= e!568161 e!568160)))

(declare-fun b!1009820 () Bool)

(assert (=> b!1009820 (= e!568159 (Intermediate!9552 false index!1507 x!1245))))

(declare-fun b!1009821 () Bool)

(assert (=> b!1009821 (and (bvsge (index!40580 lt!446308) #b00000000000000000000000000000000) (bvslt (index!40580 lt!446308) (size!31123 a!3219)))))

(assert (=> b!1009821 (= e!568160 (= (select (arr!30620 a!3219) (index!40580 lt!446308)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009822 () Bool)

(assert (=> b!1009822 (= e!568157 e!568159)))

(declare-fun lt!446307 () (_ BitVec 64))

(declare-fun c!101835 () Bool)

(assert (=> b!1009822 (= c!101835 (or (= lt!446307 (select (arr!30620 a!3219) j!170)) (= (bvadd lt!446307 lt!446307) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!119887 () Bool)

(assert (=> d!119887 e!568158))

(declare-fun c!101834 () Bool)

(assert (=> d!119887 (= c!101834 (and ((_ is Intermediate!9552) lt!446308) (undefined!10364 lt!446308)))))

(assert (=> d!119887 (= lt!446308 e!568157)))

(declare-fun c!101833 () Bool)

(assert (=> d!119887 (= c!101833 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119887 (= lt!446307 (select (arr!30620 a!3219) index!1507))))

(assert (=> d!119887 (validMask!0 mask!3464)))

(assert (=> d!119887 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30620 a!3219) j!170) a!3219 mask!3464) lt!446308)))

(assert (= (and d!119887 c!101833) b!1009817))

(assert (= (and d!119887 (not c!101833)) b!1009822))

(assert (= (and b!1009822 c!101835) b!1009820))

(assert (= (and b!1009822 (not c!101835)) b!1009815))

(assert (= (and d!119887 c!101834) b!1009814))

(assert (= (and d!119887 (not c!101834)) b!1009818))

(assert (= (and b!1009818 res!678470) b!1009819))

(assert (= (and b!1009819 (not res!678468)) b!1009816))

(assert (= (and b!1009816 (not res!678469)) b!1009821))

(declare-fun m!934423 () Bool)

(assert (=> b!1009819 m!934423))

(assert (=> b!1009821 m!934423))

(assert (=> b!1009815 m!934345))

(assert (=> b!1009815 m!934345))

(assert (=> b!1009815 m!934335))

(declare-fun m!934425 () Bool)

(assert (=> b!1009815 m!934425))

(assert (=> b!1009816 m!934423))

(declare-fun m!934427 () Bool)

(assert (=> d!119887 m!934427))

(assert (=> d!119887 m!934339))

(assert (=> b!1009696 d!119887))

(declare-fun b!1009889 () Bool)

(declare-fun e!568199 () SeekEntryResult!9552)

(assert (=> b!1009889 (= e!568199 Undefined!9552)))

(declare-fun e!568200 () SeekEntryResult!9552)

(declare-fun lt!446333 () SeekEntryResult!9552)

(declare-fun b!1009890 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63609 (_ BitVec 32)) SeekEntryResult!9552)

(assert (=> b!1009890 (= e!568200 (seekKeyOrZeroReturnVacant!0 (x!88006 lt!446333) (index!40580 lt!446333) (index!40580 lt!446333) k0!2224 a!3219 mask!3464))))

(declare-fun b!1009892 () Bool)

(declare-fun e!568198 () SeekEntryResult!9552)

(assert (=> b!1009892 (= e!568199 e!568198)))

(declare-fun lt!446335 () (_ BitVec 64))

(assert (=> b!1009892 (= lt!446335 (select (arr!30620 a!3219) (index!40580 lt!446333)))))

(declare-fun c!101862 () Bool)

(assert (=> b!1009892 (= c!101862 (= lt!446335 k0!2224))))

(declare-fun b!1009893 () Bool)

(assert (=> b!1009893 (= e!568200 (MissingZero!9552 (index!40580 lt!446333)))))

(declare-fun b!1009894 () Bool)

(assert (=> b!1009894 (= e!568198 (Found!9552 (index!40580 lt!446333)))))

(declare-fun b!1009891 () Bool)

(declare-fun c!101861 () Bool)

(assert (=> b!1009891 (= c!101861 (= lt!446335 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009891 (= e!568198 e!568200)))

(declare-fun d!119889 () Bool)

(declare-fun lt!446334 () SeekEntryResult!9552)

(assert (=> d!119889 (and (or ((_ is Undefined!9552) lt!446334) (not ((_ is Found!9552) lt!446334)) (and (bvsge (index!40579 lt!446334) #b00000000000000000000000000000000) (bvslt (index!40579 lt!446334) (size!31123 a!3219)))) (or ((_ is Undefined!9552) lt!446334) ((_ is Found!9552) lt!446334) (not ((_ is MissingZero!9552) lt!446334)) (and (bvsge (index!40578 lt!446334) #b00000000000000000000000000000000) (bvslt (index!40578 lt!446334) (size!31123 a!3219)))) (or ((_ is Undefined!9552) lt!446334) ((_ is Found!9552) lt!446334) ((_ is MissingZero!9552) lt!446334) (not ((_ is MissingVacant!9552) lt!446334)) (and (bvsge (index!40581 lt!446334) #b00000000000000000000000000000000) (bvslt (index!40581 lt!446334) (size!31123 a!3219)))) (or ((_ is Undefined!9552) lt!446334) (ite ((_ is Found!9552) lt!446334) (= (select (arr!30620 a!3219) (index!40579 lt!446334)) k0!2224) (ite ((_ is MissingZero!9552) lt!446334) (= (select (arr!30620 a!3219) (index!40578 lt!446334)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9552) lt!446334) (= (select (arr!30620 a!3219) (index!40581 lt!446334)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119889 (= lt!446334 e!568199)))

(declare-fun c!101860 () Bool)

(assert (=> d!119889 (= c!101860 (and ((_ is Intermediate!9552) lt!446333) (undefined!10364 lt!446333)))))

(assert (=> d!119889 (= lt!446333 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464))))

(assert (=> d!119889 (validMask!0 mask!3464)))

(assert (=> d!119889 (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) lt!446334)))

(assert (= (and d!119889 c!101860) b!1009889))

(assert (= (and d!119889 (not c!101860)) b!1009892))

(assert (= (and b!1009892 c!101862) b!1009894))

(assert (= (and b!1009892 (not c!101862)) b!1009891))

(assert (= (and b!1009891 c!101861) b!1009893))

(assert (= (and b!1009891 (not c!101861)) b!1009890))

(declare-fun m!934443 () Bool)

(assert (=> b!1009890 m!934443))

(declare-fun m!934445 () Bool)

(assert (=> b!1009892 m!934445))

(assert (=> d!119889 m!934339))

(declare-fun m!934447 () Bool)

(assert (=> d!119889 m!934447))

(declare-fun m!934449 () Bool)

(assert (=> d!119889 m!934449))

(declare-fun m!934451 () Bool)

(assert (=> d!119889 m!934451))

(assert (=> d!119889 m!934449))

(declare-fun m!934453 () Bool)

(assert (=> d!119889 m!934453))

(declare-fun m!934455 () Bool)

(assert (=> d!119889 m!934455))

(assert (=> b!1009686 d!119889))

(declare-fun b!1009927 () Bool)

(declare-fun e!568223 () Bool)

(declare-fun call!42400 () Bool)

(assert (=> b!1009927 (= e!568223 call!42400)))

(declare-fun b!1009928 () Bool)

(declare-fun e!568225 () Bool)

(declare-fun e!568224 () Bool)

(assert (=> b!1009928 (= e!568225 e!568224)))

(declare-fun c!101871 () Bool)

(assert (=> b!1009928 (= c!101871 (validKeyInArray!0 (select (arr!30620 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1009929 () Bool)

(assert (=> b!1009929 (= e!568224 e!568223)))

(declare-fun lt!446349 () (_ BitVec 64))

(assert (=> b!1009929 (= lt!446349 (select (arr!30620 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32966 0))(
  ( (Unit!32967) )
))
(declare-fun lt!446348 () Unit!32966)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63609 (_ BitVec 64) (_ BitVec 32)) Unit!32966)

(assert (=> b!1009929 (= lt!446348 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!446349 #b00000000000000000000000000000000))))

(assert (=> b!1009929 (arrayContainsKey!0 a!3219 lt!446349 #b00000000000000000000000000000000)))

(declare-fun lt!446350 () Unit!32966)

(assert (=> b!1009929 (= lt!446350 lt!446348)))

(declare-fun res!678507 () Bool)

(assert (=> b!1009929 (= res!678507 (= (seekEntryOrOpen!0 (select (arr!30620 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9552 #b00000000000000000000000000000000)))))

(assert (=> b!1009929 (=> (not res!678507) (not e!568223))))

(declare-fun d!119897 () Bool)

(declare-fun res!678506 () Bool)

(assert (=> d!119897 (=> res!678506 e!568225)))

(assert (=> d!119897 (= res!678506 (bvsge #b00000000000000000000000000000000 (size!31123 a!3219)))))

(assert (=> d!119897 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!568225)))

(declare-fun bm!42397 () Bool)

(assert (=> bm!42397 (= call!42400 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!1009930 () Bool)

(assert (=> b!1009930 (= e!568224 call!42400)))

(assert (= (and d!119897 (not res!678506)) b!1009928))

(assert (= (and b!1009928 c!101871) b!1009929))

(assert (= (and b!1009928 (not c!101871)) b!1009930))

(assert (= (and b!1009929 res!678507) b!1009927))

(assert (= (or b!1009927 b!1009930) bm!42397))

(assert (=> b!1009928 m!934413))

(assert (=> b!1009928 m!934413))

(assert (=> b!1009928 m!934417))

(assert (=> b!1009929 m!934413))

(declare-fun m!934473 () Bool)

(assert (=> b!1009929 m!934473))

(declare-fun m!934475 () Bool)

(assert (=> b!1009929 m!934475))

(assert (=> b!1009929 m!934413))

(declare-fun m!934477 () Bool)

(assert (=> b!1009929 m!934477))

(declare-fun m!934479 () Bool)

(assert (=> bm!42397 m!934479))

(assert (=> b!1009697 d!119897))

(declare-fun d!119913 () Bool)

(assert (=> d!119913 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!87090 d!119913))

(declare-fun d!119923 () Bool)

(assert (=> d!119923 (= (array_inv!23610 a!3219) (bvsge (size!31123 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!87090 d!119923))

(declare-fun b!1009983 () Bool)

(declare-fun e!568261 () Bool)

(declare-fun lt!446374 () SeekEntryResult!9552)

(assert (=> b!1009983 (= e!568261 (bvsge (x!88006 lt!446374) #b01111111111111111111111111111110))))

(declare-fun b!1009984 () Bool)

(declare-fun e!568262 () SeekEntryResult!9552)

(assert (=> b!1009984 (= e!568262 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!446264 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!446264 lt!446262 mask!3464))))

(declare-fun b!1009985 () Bool)

(assert (=> b!1009985 (and (bvsge (index!40580 lt!446374) #b00000000000000000000000000000000) (bvslt (index!40580 lt!446374) (size!31123 lt!446262)))))

(declare-fun res!678527 () Bool)

(assert (=> b!1009985 (= res!678527 (= (select (arr!30620 lt!446262) (index!40580 lt!446374)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568263 () Bool)

(assert (=> b!1009985 (=> res!678527 e!568263)))

(declare-fun b!1009986 () Bool)

(declare-fun e!568260 () SeekEntryResult!9552)

(assert (=> b!1009986 (= e!568260 (Intermediate!9552 true (toIndex!0 lt!446264 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1009987 () Bool)

(declare-fun e!568264 () Bool)

(assert (=> b!1009987 (= e!568261 e!568264)))

(declare-fun res!678528 () Bool)

(assert (=> b!1009987 (= res!678528 (and ((_ is Intermediate!9552) lt!446374) (not (undefined!10364 lt!446374)) (bvslt (x!88006 lt!446374) #b01111111111111111111111111111110) (bvsge (x!88006 lt!446374) #b00000000000000000000000000000000) (bvsge (x!88006 lt!446374) #b00000000000000000000000000000000)))))

(assert (=> b!1009987 (=> (not res!678528) (not e!568264))))

(declare-fun b!1009988 () Bool)

(assert (=> b!1009988 (and (bvsge (index!40580 lt!446374) #b00000000000000000000000000000000) (bvslt (index!40580 lt!446374) (size!31123 lt!446262)))))

(declare-fun res!678526 () Bool)

(assert (=> b!1009988 (= res!678526 (= (select (arr!30620 lt!446262) (index!40580 lt!446374)) lt!446264))))

(assert (=> b!1009988 (=> res!678526 e!568263)))

(assert (=> b!1009988 (= e!568264 e!568263)))

(declare-fun b!1009989 () Bool)

(assert (=> b!1009989 (= e!568262 (Intermediate!9552 false (toIndex!0 lt!446264 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1009990 () Bool)

(assert (=> b!1009990 (and (bvsge (index!40580 lt!446374) #b00000000000000000000000000000000) (bvslt (index!40580 lt!446374) (size!31123 lt!446262)))))

(assert (=> b!1009990 (= e!568263 (= (select (arr!30620 lt!446262) (index!40580 lt!446374)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009991 () Bool)

(assert (=> b!1009991 (= e!568260 e!568262)))

(declare-fun c!101892 () Bool)

(declare-fun lt!446373 () (_ BitVec 64))

(assert (=> b!1009991 (= c!101892 (or (= lt!446373 lt!446264) (= (bvadd lt!446373 lt!446373) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!119927 () Bool)

(assert (=> d!119927 e!568261))

(declare-fun c!101891 () Bool)

(assert (=> d!119927 (= c!101891 (and ((_ is Intermediate!9552) lt!446374) (undefined!10364 lt!446374)))))

(assert (=> d!119927 (= lt!446374 e!568260)))

(declare-fun c!101890 () Bool)

(assert (=> d!119927 (= c!101890 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119927 (= lt!446373 (select (arr!30620 lt!446262) (toIndex!0 lt!446264 mask!3464)))))

(assert (=> d!119927 (validMask!0 mask!3464)))

(assert (=> d!119927 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446264 mask!3464) lt!446264 lt!446262 mask!3464) lt!446374)))

(assert (= (and d!119927 c!101890) b!1009986))

(assert (= (and d!119927 (not c!101890)) b!1009991))

(assert (= (and b!1009991 c!101892) b!1009989))

(assert (= (and b!1009991 (not c!101892)) b!1009984))

(assert (= (and d!119927 c!101891) b!1009983))

(assert (= (and d!119927 (not c!101891)) b!1009987))

(assert (= (and b!1009987 res!678528) b!1009988))

(assert (= (and b!1009988 (not res!678526)) b!1009985))

(assert (= (and b!1009985 (not res!678527)) b!1009990))

(declare-fun m!934515 () Bool)

(assert (=> b!1009988 m!934515))

(assert (=> b!1009990 m!934515))

(assert (=> b!1009984 m!934323))

(declare-fun m!934517 () Bool)

(assert (=> b!1009984 m!934517))

(assert (=> b!1009984 m!934517))

(declare-fun m!934519 () Bool)

(assert (=> b!1009984 m!934519))

(assert (=> b!1009985 m!934515))

(assert (=> d!119927 m!934323))

(declare-fun m!934521 () Bool)

(assert (=> d!119927 m!934521))

(assert (=> d!119927 m!934339))

(assert (=> b!1009691 d!119927))

(declare-fun d!119929 () Bool)

(declare-fun lt!446376 () (_ BitVec 32))

(declare-fun lt!446375 () (_ BitVec 32))

(assert (=> d!119929 (= lt!446376 (bvmul (bvxor lt!446375 (bvlshr lt!446375 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119929 (= lt!446375 ((_ extract 31 0) (bvand (bvxor lt!446264 (bvlshr lt!446264 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119929 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!678440 (let ((h!22609 ((_ extract 31 0) (bvand (bvxor lt!446264 (bvlshr lt!446264 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88009 (bvmul (bvxor h!22609 (bvlshr h!22609 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88009 (bvlshr x!88009 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!678440 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!678440 #b00000000000000000000000000000000))))))

(assert (=> d!119929 (= (toIndex!0 lt!446264 mask!3464) (bvand (bvxor lt!446376 (bvlshr lt!446376 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1009691 d!119929))

(declare-fun d!119931 () Bool)

(assert (=> d!119931 (= (validKeyInArray!0 (select (arr!30620 a!3219) j!170)) (and (not (= (select (arr!30620 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30620 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1009692 d!119931))

(check-sat (not b!1009761) (not b!1009984) (not d!119867) (not d!119887) (not b!1009815) (not d!119875) (not b!1009890) (not bm!42397) (not d!119927) (not b!1009798) (not b!1009813) (not b!1009928) (not b!1009929) (not d!119889) (not d!119873) (not b!1009810) (not bm!42394) (not b!1009780) (not b!1009809))
(check-sat)
