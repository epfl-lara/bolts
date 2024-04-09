; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86184 () Bool)

(assert start!86184)

(declare-fun b!997644 () Bool)

(declare-fun res!667755 () Bool)

(declare-fun e!562692 () Bool)

(assert (=> b!997644 (=> (not res!667755) (not e!562692))))

(declare-datatypes ((array!63090 0))(
  ( (array!63091 (arr!30371 (Array (_ BitVec 32) (_ BitVec 64))) (size!30874 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63090)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!997644 (= res!667755 (and (= (size!30874 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30874 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30874 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!667762 () Bool)

(assert (=> start!86184 (=> (not res!667762) (not e!562692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86184 (= res!667762 (validMask!0 mask!3464))))

(assert (=> start!86184 e!562692))

(declare-fun array_inv!23361 (array!63090) Bool)

(assert (=> start!86184 (array_inv!23361 a!3219)))

(assert (=> start!86184 true))

(declare-fun b!997645 () Bool)

(declare-fun res!667761 () Bool)

(declare-fun e!562693 () Bool)

(assert (=> b!997645 (=> (not res!667761) (not e!562693))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!997645 (= res!667761 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30874 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30874 a!3219))))))

(declare-fun b!997646 () Bool)

(declare-fun res!667758 () Bool)

(declare-fun e!562691 () Bool)

(assert (=> b!997646 (=> (not res!667758) (not e!562691))))

(declare-datatypes ((SeekEntryResult!9303 0))(
  ( (MissingZero!9303 (index!39582 (_ BitVec 32))) (Found!9303 (index!39583 (_ BitVec 32))) (Intermediate!9303 (undefined!10115 Bool) (index!39584 (_ BitVec 32)) (x!87042 (_ BitVec 32))) (Undefined!9303) (MissingVacant!9303 (index!39585 (_ BitVec 32))) )
))
(declare-fun lt!441473 () SeekEntryResult!9303)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63090 (_ BitVec 32)) SeekEntryResult!9303)

(assert (=> b!997646 (= res!667758 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30371 a!3219) j!170) a!3219 mask!3464) lt!441473))))

(declare-fun b!997647 () Bool)

(declare-fun lt!441472 () (_ BitVec 32))

(assert (=> b!997647 (= e!562691 (and (bvsge mask!3464 #b00000000000000000000000000000000) (or (bvslt lt!441472 #b00000000000000000000000000000000) (bvsge lt!441472 (bvadd #b00000000000000000000000000000001 mask!3464)))))))

(declare-fun b!997648 () Bool)

(declare-fun res!667757 () Bool)

(assert (=> b!997648 (=> (not res!667757) (not e!562692))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!997648 (= res!667757 (validKeyInArray!0 (select (arr!30371 a!3219) j!170)))))

(declare-fun b!997649 () Bool)

(assert (=> b!997649 (= e!562692 e!562693)))

(declare-fun res!667763 () Bool)

(assert (=> b!997649 (=> (not res!667763) (not e!562693))))

(declare-fun lt!441474 () SeekEntryResult!9303)

(assert (=> b!997649 (= res!667763 (or (= lt!441474 (MissingVacant!9303 i!1194)) (= lt!441474 (MissingZero!9303 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63090 (_ BitVec 32)) SeekEntryResult!9303)

(assert (=> b!997649 (= lt!441474 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!997650 () Bool)

(declare-fun res!667760 () Bool)

(assert (=> b!997650 (=> (not res!667760) (not e!562692))))

(declare-fun arrayContainsKey!0 (array!63090 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!997650 (= res!667760 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!997651 () Bool)

(declare-fun res!667759 () Bool)

(assert (=> b!997651 (=> (not res!667759) (not e!562693))))

(declare-datatypes ((List!21173 0))(
  ( (Nil!21170) (Cons!21169 (h!22337 (_ BitVec 64)) (t!30182 List!21173)) )
))
(declare-fun arrayNoDuplicates!0 (array!63090 (_ BitVec 32) List!21173) Bool)

(assert (=> b!997651 (= res!667759 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21170))))

(declare-fun b!997652 () Bool)

(declare-fun res!667764 () Bool)

(assert (=> b!997652 (=> (not res!667764) (not e!562692))))

(assert (=> b!997652 (= res!667764 (validKeyInArray!0 k0!2224))))

(declare-fun b!997653 () Bool)

(declare-fun res!667756 () Bool)

(assert (=> b!997653 (=> (not res!667756) (not e!562693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63090 (_ BitVec 32)) Bool)

(assert (=> b!997653 (= res!667756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!997654 () Bool)

(assert (=> b!997654 (= e!562693 e!562691)))

(declare-fun res!667765 () Bool)

(assert (=> b!997654 (=> (not res!667765) (not e!562691))))

(assert (=> b!997654 (= res!667765 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!441472 (select (arr!30371 a!3219) j!170) a!3219 mask!3464) lt!441473))))

(assert (=> b!997654 (= lt!441473 (Intermediate!9303 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997654 (= lt!441472 (toIndex!0 (select (arr!30371 a!3219) j!170) mask!3464))))

(assert (= (and start!86184 res!667762) b!997644))

(assert (= (and b!997644 res!667755) b!997648))

(assert (= (and b!997648 res!667757) b!997652))

(assert (= (and b!997652 res!667764) b!997650))

(assert (= (and b!997650 res!667760) b!997649))

(assert (= (and b!997649 res!667763) b!997653))

(assert (= (and b!997653 res!667756) b!997651))

(assert (= (and b!997651 res!667759) b!997645))

(assert (= (and b!997645 res!667761) b!997654))

(assert (= (and b!997654 res!667765) b!997646))

(assert (= (and b!997646 res!667758) b!997647))

(declare-fun m!924501 () Bool)

(assert (=> b!997651 m!924501))

(declare-fun m!924503 () Bool)

(assert (=> b!997650 m!924503))

(declare-fun m!924505 () Bool)

(assert (=> b!997646 m!924505))

(assert (=> b!997646 m!924505))

(declare-fun m!924507 () Bool)

(assert (=> b!997646 m!924507))

(declare-fun m!924509 () Bool)

(assert (=> start!86184 m!924509))

(declare-fun m!924511 () Bool)

(assert (=> start!86184 m!924511))

(assert (=> b!997648 m!924505))

(assert (=> b!997648 m!924505))

(declare-fun m!924513 () Bool)

(assert (=> b!997648 m!924513))

(declare-fun m!924515 () Bool)

(assert (=> b!997652 m!924515))

(assert (=> b!997654 m!924505))

(assert (=> b!997654 m!924505))

(declare-fun m!924517 () Bool)

(assert (=> b!997654 m!924517))

(assert (=> b!997654 m!924505))

(declare-fun m!924519 () Bool)

(assert (=> b!997654 m!924519))

(declare-fun m!924521 () Bool)

(assert (=> b!997653 m!924521))

(declare-fun m!924523 () Bool)

(assert (=> b!997649 m!924523))

(check-sat (not b!997652) (not b!997648) (not b!997649) (not b!997654) (not b!997651) (not b!997646) (not b!997653) (not b!997650) (not start!86184))
(check-sat)
(get-model)

(declare-fun b!997700 () Bool)

(declare-fun e!562715 () SeekEntryResult!9303)

(declare-fun e!562714 () SeekEntryResult!9303)

(assert (=> b!997700 (= e!562715 e!562714)))

(declare-fun lt!441491 () (_ BitVec 64))

(declare-fun lt!441490 () SeekEntryResult!9303)

(assert (=> b!997700 (= lt!441491 (select (arr!30371 a!3219) (index!39584 lt!441490)))))

(declare-fun c!101096 () Bool)

(assert (=> b!997700 (= c!101096 (= lt!441491 k0!2224))))

(declare-fun e!562713 () SeekEntryResult!9303)

(declare-fun b!997701 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63090 (_ BitVec 32)) SeekEntryResult!9303)

(assert (=> b!997701 (= e!562713 (seekKeyOrZeroReturnVacant!0 (x!87042 lt!441490) (index!39584 lt!441490) (index!39584 lt!441490) k0!2224 a!3219 mask!3464))))

(declare-fun b!997702 () Bool)

(assert (=> b!997702 (= e!562715 Undefined!9303)))

(declare-fun b!997703 () Bool)

(assert (=> b!997703 (= e!562714 (Found!9303 (index!39584 lt!441490)))))

(declare-fun b!997704 () Bool)

(declare-fun c!101097 () Bool)

(assert (=> b!997704 (= c!101097 (= lt!441491 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!997704 (= e!562714 e!562713)))

(declare-fun d!119045 () Bool)

(declare-fun lt!441492 () SeekEntryResult!9303)

(get-info :version)

(assert (=> d!119045 (and (or ((_ is Undefined!9303) lt!441492) (not ((_ is Found!9303) lt!441492)) (and (bvsge (index!39583 lt!441492) #b00000000000000000000000000000000) (bvslt (index!39583 lt!441492) (size!30874 a!3219)))) (or ((_ is Undefined!9303) lt!441492) ((_ is Found!9303) lt!441492) (not ((_ is MissingZero!9303) lt!441492)) (and (bvsge (index!39582 lt!441492) #b00000000000000000000000000000000) (bvslt (index!39582 lt!441492) (size!30874 a!3219)))) (or ((_ is Undefined!9303) lt!441492) ((_ is Found!9303) lt!441492) ((_ is MissingZero!9303) lt!441492) (not ((_ is MissingVacant!9303) lt!441492)) (and (bvsge (index!39585 lt!441492) #b00000000000000000000000000000000) (bvslt (index!39585 lt!441492) (size!30874 a!3219)))) (or ((_ is Undefined!9303) lt!441492) (ite ((_ is Found!9303) lt!441492) (= (select (arr!30371 a!3219) (index!39583 lt!441492)) k0!2224) (ite ((_ is MissingZero!9303) lt!441492) (= (select (arr!30371 a!3219) (index!39582 lt!441492)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9303) lt!441492) (= (select (arr!30371 a!3219) (index!39585 lt!441492)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119045 (= lt!441492 e!562715)))

(declare-fun c!101095 () Bool)

(assert (=> d!119045 (= c!101095 (and ((_ is Intermediate!9303) lt!441490) (undefined!10115 lt!441490)))))

(assert (=> d!119045 (= lt!441490 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464))))

(assert (=> d!119045 (validMask!0 mask!3464)))

(assert (=> d!119045 (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) lt!441492)))

(declare-fun b!997705 () Bool)

(assert (=> b!997705 (= e!562713 (MissingZero!9303 (index!39584 lt!441490)))))

(assert (= (and d!119045 c!101095) b!997702))

(assert (= (and d!119045 (not c!101095)) b!997700))

(assert (= (and b!997700 c!101096) b!997703))

(assert (= (and b!997700 (not c!101096)) b!997704))

(assert (= (and b!997704 c!101097) b!997705))

(assert (= (and b!997704 (not c!101097)) b!997701))

(declare-fun m!924549 () Bool)

(assert (=> b!997700 m!924549))

(declare-fun m!924551 () Bool)

(assert (=> b!997701 m!924551))

(declare-fun m!924553 () Bool)

(assert (=> d!119045 m!924553))

(declare-fun m!924555 () Bool)

(assert (=> d!119045 m!924555))

(declare-fun m!924557 () Bool)

(assert (=> d!119045 m!924557))

(assert (=> d!119045 m!924509))

(declare-fun m!924559 () Bool)

(assert (=> d!119045 m!924559))

(declare-fun m!924561 () Bool)

(assert (=> d!119045 m!924561))

(assert (=> d!119045 m!924553))

(assert (=> b!997649 d!119045))

(declare-fun e!562760 () SeekEntryResult!9303)

(declare-fun b!997775 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997775 (= e!562760 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!441472 #b00000000000000000000000000000000 mask!3464) (select (arr!30371 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997776 () Bool)

(declare-fun e!562756 () Bool)

(declare-fun e!562757 () Bool)

(assert (=> b!997776 (= e!562756 e!562757)))

(declare-fun res!667822 () Bool)

(declare-fun lt!441512 () SeekEntryResult!9303)

(assert (=> b!997776 (= res!667822 (and ((_ is Intermediate!9303) lt!441512) (not (undefined!10115 lt!441512)) (bvslt (x!87042 lt!441512) #b01111111111111111111111111111110) (bvsge (x!87042 lt!441512) #b00000000000000000000000000000000) (bvsge (x!87042 lt!441512) #b00000000000000000000000000000000)))))

(assert (=> b!997776 (=> (not res!667822) (not e!562757))))

(declare-fun b!997777 () Bool)

(assert (=> b!997777 (and (bvsge (index!39584 lt!441512) #b00000000000000000000000000000000) (bvslt (index!39584 lt!441512) (size!30874 a!3219)))))

(declare-fun res!667821 () Bool)

(assert (=> b!997777 (= res!667821 (= (select (arr!30371 a!3219) (index!39584 lt!441512)) (select (arr!30371 a!3219) j!170)))))

(declare-fun e!562759 () Bool)

(assert (=> b!997777 (=> res!667821 e!562759)))

(assert (=> b!997777 (= e!562757 e!562759)))

(declare-fun b!997778 () Bool)

(assert (=> b!997778 (= e!562760 (Intermediate!9303 false lt!441472 #b00000000000000000000000000000000))))

(declare-fun b!997779 () Bool)

(assert (=> b!997779 (and (bvsge (index!39584 lt!441512) #b00000000000000000000000000000000) (bvslt (index!39584 lt!441512) (size!30874 a!3219)))))

(assert (=> b!997779 (= e!562759 (= (select (arr!30371 a!3219) (index!39584 lt!441512)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119053 () Bool)

(assert (=> d!119053 e!562756))

(declare-fun c!101124 () Bool)

(assert (=> d!119053 (= c!101124 (and ((_ is Intermediate!9303) lt!441512) (undefined!10115 lt!441512)))))

(declare-fun e!562758 () SeekEntryResult!9303)

(assert (=> d!119053 (= lt!441512 e!562758)))

(declare-fun c!101122 () Bool)

(assert (=> d!119053 (= c!101122 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!441513 () (_ BitVec 64))

(assert (=> d!119053 (= lt!441513 (select (arr!30371 a!3219) lt!441472))))

(assert (=> d!119053 (validMask!0 mask!3464)))

(assert (=> d!119053 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!441472 (select (arr!30371 a!3219) j!170) a!3219 mask!3464) lt!441512)))

(declare-fun b!997780 () Bool)

(assert (=> b!997780 (and (bvsge (index!39584 lt!441512) #b00000000000000000000000000000000) (bvslt (index!39584 lt!441512) (size!30874 a!3219)))))

(declare-fun res!667820 () Bool)

(assert (=> b!997780 (= res!667820 (= (select (arr!30371 a!3219) (index!39584 lt!441512)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!997780 (=> res!667820 e!562759)))

(declare-fun b!997781 () Bool)

(assert (=> b!997781 (= e!562758 e!562760)))

(declare-fun c!101123 () Bool)

(assert (=> b!997781 (= c!101123 (or (= lt!441513 (select (arr!30371 a!3219) j!170)) (= (bvadd lt!441513 lt!441513) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!997782 () Bool)

(assert (=> b!997782 (= e!562756 (bvsge (x!87042 lt!441512) #b01111111111111111111111111111110))))

(declare-fun b!997783 () Bool)

(assert (=> b!997783 (= e!562758 (Intermediate!9303 true lt!441472 #b00000000000000000000000000000000))))

(assert (= (and d!119053 c!101122) b!997783))

(assert (= (and d!119053 (not c!101122)) b!997781))

(assert (= (and b!997781 c!101123) b!997778))

(assert (= (and b!997781 (not c!101123)) b!997775))

(assert (= (and d!119053 c!101124) b!997782))

(assert (= (and d!119053 (not c!101124)) b!997776))

(assert (= (and b!997776 res!667822) b!997777))

(assert (= (and b!997777 (not res!667821)) b!997780))

(assert (= (and b!997780 (not res!667820)) b!997779))

(declare-fun m!924589 () Bool)

(assert (=> b!997777 m!924589))

(declare-fun m!924591 () Bool)

(assert (=> b!997775 m!924591))

(assert (=> b!997775 m!924591))

(assert (=> b!997775 m!924505))

(declare-fun m!924593 () Bool)

(assert (=> b!997775 m!924593))

(declare-fun m!924595 () Bool)

(assert (=> d!119053 m!924595))

(assert (=> d!119053 m!924509))

(assert (=> b!997780 m!924589))

(assert (=> b!997779 m!924589))

(assert (=> b!997654 d!119053))

(declare-fun d!119061 () Bool)

(declare-fun lt!441531 () (_ BitVec 32))

(declare-fun lt!441530 () (_ BitVec 32))

(assert (=> d!119061 (= lt!441531 (bvmul (bvxor lt!441530 (bvlshr lt!441530 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119061 (= lt!441530 ((_ extract 31 0) (bvand (bvxor (select (arr!30371 a!3219) j!170) (bvlshr (select (arr!30371 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119061 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!667824 (let ((h!22340 ((_ extract 31 0) (bvand (bvxor (select (arr!30371 a!3219) j!170) (bvlshr (select (arr!30371 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87047 (bvmul (bvxor h!22340 (bvlshr h!22340 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87047 (bvlshr x!87047 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!667824 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!667824 #b00000000000000000000000000000000))))))

(assert (=> d!119061 (= (toIndex!0 (select (arr!30371 a!3219) j!170) mask!3464) (bvand (bvxor lt!441531 (bvlshr lt!441531 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!997654 d!119061))

(declare-fun d!119065 () Bool)

(assert (=> d!119065 (= (validKeyInArray!0 (select (arr!30371 a!3219) j!170)) (and (not (= (select (arr!30371 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30371 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!997648 d!119065))

(declare-fun d!119067 () Bool)

(declare-fun res!667835 () Bool)

(declare-fun e!562774 () Bool)

(assert (=> d!119067 (=> res!667835 e!562774)))

(assert (=> d!119067 (= res!667835 (= (select (arr!30371 a!3219) #b00000000000000000000000000000000) k0!2224))))

(assert (=> d!119067 (= (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000) e!562774)))

(declare-fun b!997800 () Bool)

(declare-fun e!562775 () Bool)

(assert (=> b!997800 (= e!562774 e!562775)))

(declare-fun res!667836 () Bool)

(assert (=> b!997800 (=> (not res!667836) (not e!562775))))

(assert (=> b!997800 (= res!667836 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30874 a!3219)))))

(declare-fun b!997801 () Bool)

(assert (=> b!997801 (= e!562775 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119067 (not res!667835)) b!997800))

(assert (= (and b!997800 res!667836) b!997801))

(declare-fun m!924607 () Bool)

(assert (=> d!119067 m!924607))

(declare-fun m!924609 () Bool)

(assert (=> b!997801 m!924609))

(assert (=> b!997650 d!119067))

(declare-fun b!997802 () Bool)

(declare-fun e!562780 () SeekEntryResult!9303)

(assert (=> b!997802 (= e!562780 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30371 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997803 () Bool)

(declare-fun e!562776 () Bool)

(declare-fun e!562777 () Bool)

(assert (=> b!997803 (= e!562776 e!562777)))

(declare-fun res!667839 () Bool)

(declare-fun lt!441535 () SeekEntryResult!9303)

(assert (=> b!997803 (= res!667839 (and ((_ is Intermediate!9303) lt!441535) (not (undefined!10115 lt!441535)) (bvslt (x!87042 lt!441535) #b01111111111111111111111111111110) (bvsge (x!87042 lt!441535) #b00000000000000000000000000000000) (bvsge (x!87042 lt!441535) x!1245)))))

(assert (=> b!997803 (=> (not res!667839) (not e!562777))))

(declare-fun b!997804 () Bool)

(assert (=> b!997804 (and (bvsge (index!39584 lt!441535) #b00000000000000000000000000000000) (bvslt (index!39584 lt!441535) (size!30874 a!3219)))))

(declare-fun res!667838 () Bool)

(assert (=> b!997804 (= res!667838 (= (select (arr!30371 a!3219) (index!39584 lt!441535)) (select (arr!30371 a!3219) j!170)))))

(declare-fun e!562779 () Bool)

(assert (=> b!997804 (=> res!667838 e!562779)))

(assert (=> b!997804 (= e!562777 e!562779)))

(declare-fun b!997805 () Bool)

(assert (=> b!997805 (= e!562780 (Intermediate!9303 false index!1507 x!1245))))

(declare-fun b!997806 () Bool)

(assert (=> b!997806 (and (bvsge (index!39584 lt!441535) #b00000000000000000000000000000000) (bvslt (index!39584 lt!441535) (size!30874 a!3219)))))

(assert (=> b!997806 (= e!562779 (= (select (arr!30371 a!3219) (index!39584 lt!441535)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119071 () Bool)

(assert (=> d!119071 e!562776))

(declare-fun c!101130 () Bool)

(assert (=> d!119071 (= c!101130 (and ((_ is Intermediate!9303) lt!441535) (undefined!10115 lt!441535)))))

(declare-fun e!562778 () SeekEntryResult!9303)

(assert (=> d!119071 (= lt!441535 e!562778)))

(declare-fun c!101128 () Bool)

(assert (=> d!119071 (= c!101128 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!441536 () (_ BitVec 64))

(assert (=> d!119071 (= lt!441536 (select (arr!30371 a!3219) index!1507))))

(assert (=> d!119071 (validMask!0 mask!3464)))

(assert (=> d!119071 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30371 a!3219) j!170) a!3219 mask!3464) lt!441535)))

(declare-fun b!997807 () Bool)

(assert (=> b!997807 (and (bvsge (index!39584 lt!441535) #b00000000000000000000000000000000) (bvslt (index!39584 lt!441535) (size!30874 a!3219)))))

(declare-fun res!667837 () Bool)

(assert (=> b!997807 (= res!667837 (= (select (arr!30371 a!3219) (index!39584 lt!441535)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!997807 (=> res!667837 e!562779)))

(declare-fun b!997808 () Bool)

(assert (=> b!997808 (= e!562778 e!562780)))

(declare-fun c!101129 () Bool)

(assert (=> b!997808 (= c!101129 (or (= lt!441536 (select (arr!30371 a!3219) j!170)) (= (bvadd lt!441536 lt!441536) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!997809 () Bool)

(assert (=> b!997809 (= e!562776 (bvsge (x!87042 lt!441535) #b01111111111111111111111111111110))))

(declare-fun b!997810 () Bool)

(assert (=> b!997810 (= e!562778 (Intermediate!9303 true index!1507 x!1245))))

(assert (= (and d!119071 c!101128) b!997810))

(assert (= (and d!119071 (not c!101128)) b!997808))

(assert (= (and b!997808 c!101129) b!997805))

(assert (= (and b!997808 (not c!101129)) b!997802))

(assert (= (and d!119071 c!101130) b!997809))

(assert (= (and d!119071 (not c!101130)) b!997803))

(assert (= (and b!997803 res!667839) b!997804))

(assert (= (and b!997804 (not res!667838)) b!997807))

(assert (= (and b!997807 (not res!667837)) b!997806))

(declare-fun m!924611 () Bool)

(assert (=> b!997804 m!924611))

(declare-fun m!924613 () Bool)

(assert (=> b!997802 m!924613))

(assert (=> b!997802 m!924613))

(assert (=> b!997802 m!924505))

(declare-fun m!924615 () Bool)

(assert (=> b!997802 m!924615))

(declare-fun m!924617 () Bool)

(assert (=> d!119071 m!924617))

(assert (=> d!119071 m!924509))

(assert (=> b!997807 m!924611))

(assert (=> b!997806 m!924611))

(assert (=> b!997646 d!119071))

(declare-fun bm!42265 () Bool)

(declare-fun call!42268 () Bool)

(declare-fun c!101136 () Bool)

(assert (=> bm!42265 (= call!42268 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101136 (Cons!21169 (select (arr!30371 a!3219) #b00000000000000000000000000000000) Nil!21170) Nil!21170)))))

(declare-fun b!997836 () Bool)

(declare-fun e!562803 () Bool)

(assert (=> b!997836 (= e!562803 call!42268)))

(declare-fun b!997837 () Bool)

(declare-fun e!562802 () Bool)

(assert (=> b!997837 (= e!562802 e!562803)))

(assert (=> b!997837 (= c!101136 (validKeyInArray!0 (select (arr!30371 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!997838 () Bool)

(declare-fun e!562801 () Bool)

(declare-fun contains!5880 (List!21173 (_ BitVec 64)) Bool)

(assert (=> b!997838 (= e!562801 (contains!5880 Nil!21170 (select (arr!30371 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!997839 () Bool)

(declare-fun e!562804 () Bool)

(assert (=> b!997839 (= e!562804 e!562802)))

(declare-fun res!667856 () Bool)

(assert (=> b!997839 (=> (not res!667856) (not e!562802))))

(assert (=> b!997839 (= res!667856 (not e!562801))))

(declare-fun res!667857 () Bool)

(assert (=> b!997839 (=> (not res!667857) (not e!562801))))

(assert (=> b!997839 (= res!667857 (validKeyInArray!0 (select (arr!30371 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!119073 () Bool)

(declare-fun res!667855 () Bool)

(assert (=> d!119073 (=> res!667855 e!562804)))

(assert (=> d!119073 (= res!667855 (bvsge #b00000000000000000000000000000000 (size!30874 a!3219)))))

(assert (=> d!119073 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21170) e!562804)))

(declare-fun b!997840 () Bool)

(assert (=> b!997840 (= e!562803 call!42268)))

(assert (= (and d!119073 (not res!667855)) b!997839))

(assert (= (and b!997839 res!667857) b!997838))

(assert (= (and b!997839 res!667856) b!997837))

(assert (= (and b!997837 c!101136) b!997840))

(assert (= (and b!997837 (not c!101136)) b!997836))

(assert (= (or b!997840 b!997836) bm!42265))

(assert (=> bm!42265 m!924607))

(declare-fun m!924623 () Bool)

(assert (=> bm!42265 m!924623))

(assert (=> b!997837 m!924607))

(assert (=> b!997837 m!924607))

(declare-fun m!924625 () Bool)

(assert (=> b!997837 m!924625))

(assert (=> b!997838 m!924607))

(assert (=> b!997838 m!924607))

(declare-fun m!924627 () Bool)

(assert (=> b!997838 m!924627))

(assert (=> b!997839 m!924607))

(assert (=> b!997839 m!924607))

(assert (=> b!997839 m!924625))

(assert (=> b!997651 d!119073))

(declare-fun bm!42268 () Bool)

(declare-fun call!42271 () Bool)

(assert (=> bm!42268 (= call!42271 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!997849 () Bool)

(declare-fun e!562813 () Bool)

(assert (=> b!997849 (= e!562813 call!42271)))

(declare-fun d!119081 () Bool)

(declare-fun res!667863 () Bool)

(declare-fun e!562812 () Bool)

(assert (=> d!119081 (=> res!667863 e!562812)))

(assert (=> d!119081 (= res!667863 (bvsge #b00000000000000000000000000000000 (size!30874 a!3219)))))

(assert (=> d!119081 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!562812)))

(declare-fun b!997850 () Bool)

(declare-fun e!562811 () Bool)

(assert (=> b!997850 (= e!562813 e!562811)))

(declare-fun lt!441545 () (_ BitVec 64))

(assert (=> b!997850 (= lt!441545 (select (arr!30371 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32928 0))(
  ( (Unit!32929) )
))
(declare-fun lt!441543 () Unit!32928)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63090 (_ BitVec 64) (_ BitVec 32)) Unit!32928)

(assert (=> b!997850 (= lt!441543 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!441545 #b00000000000000000000000000000000))))

(assert (=> b!997850 (arrayContainsKey!0 a!3219 lt!441545 #b00000000000000000000000000000000)))

(declare-fun lt!441544 () Unit!32928)

(assert (=> b!997850 (= lt!441544 lt!441543)))

(declare-fun res!667862 () Bool)

(assert (=> b!997850 (= res!667862 (= (seekEntryOrOpen!0 (select (arr!30371 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9303 #b00000000000000000000000000000000)))))

(assert (=> b!997850 (=> (not res!667862) (not e!562811))))

(declare-fun b!997851 () Bool)

(assert (=> b!997851 (= e!562812 e!562813)))

(declare-fun c!101139 () Bool)

(assert (=> b!997851 (= c!101139 (validKeyInArray!0 (select (arr!30371 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!997852 () Bool)

(assert (=> b!997852 (= e!562811 call!42271)))

(assert (= (and d!119081 (not res!667863)) b!997851))

(assert (= (and b!997851 c!101139) b!997850))

(assert (= (and b!997851 (not c!101139)) b!997849))

(assert (= (and b!997850 res!667862) b!997852))

(assert (= (or b!997852 b!997849) bm!42268))

(declare-fun m!924629 () Bool)

(assert (=> bm!42268 m!924629))

(assert (=> b!997850 m!924607))

(declare-fun m!924631 () Bool)

(assert (=> b!997850 m!924631))

(declare-fun m!924633 () Bool)

(assert (=> b!997850 m!924633))

(assert (=> b!997850 m!924607))

(declare-fun m!924635 () Bool)

(assert (=> b!997850 m!924635))

(assert (=> b!997851 m!924607))

(assert (=> b!997851 m!924607))

(assert (=> b!997851 m!924625))

(assert (=> b!997653 d!119081))

(declare-fun d!119083 () Bool)

(assert (=> d!119083 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86184 d!119083))

(declare-fun d!119089 () Bool)

(assert (=> d!119089 (= (array_inv!23361 a!3219) (bvsge (size!30874 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86184 d!119089))

(declare-fun d!119093 () Bool)

(assert (=> d!119093 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!997652 d!119093))

(check-sat (not d!119071) (not b!997837) (not b!997802) (not b!997701) (not bm!42265) (not b!997801) (not b!997851) (not b!997839) (not d!119045) (not bm!42268) (not b!997775) (not b!997838) (not d!119053) (not b!997850))
(check-sat)
