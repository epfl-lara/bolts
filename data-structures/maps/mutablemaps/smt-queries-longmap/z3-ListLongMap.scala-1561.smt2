; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29654 () Bool)

(assert start!29654)

(declare-fun b!299021 () Bool)

(declare-fun res!157745 () Bool)

(declare-fun e!188900 () Bool)

(assert (=> b!299021 (=> (not res!157745) (not e!188900))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15121 0))(
  ( (array!15122 (arr!7160 (Array (_ BitVec 32) (_ BitVec 64))) (size!7512 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15121)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!299021 (= res!157745 (and (= (size!7512 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7512 a!3312))))))

(declare-fun b!299022 () Bool)

(declare-fun res!157743 () Bool)

(assert (=> b!299022 (=> (not res!157743) (not e!188900))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!299022 (= res!157743 (validKeyInArray!0 k0!2524))))

(declare-fun lt!148763 () array!15121)

(declare-fun e!188902 () Bool)

(declare-fun b!299023 () Bool)

(declare-datatypes ((SeekEntryResult!2320 0))(
  ( (MissingZero!2320 (index!11453 (_ BitVec 32))) (Found!2320 (index!11454 (_ BitVec 32))) (Intermediate!2320 (undefined!3132 Bool) (index!11455 (_ BitVec 32)) (x!29658 (_ BitVec 32))) (Undefined!2320) (MissingVacant!2320 (index!11456 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15121 (_ BitVec 32)) SeekEntryResult!2320)

(assert (=> b!299023 (= e!188902 (not (= (seekEntryOrOpen!0 k0!2524 lt!148763 mask!3809) (Found!2320 i!1256))))))

(declare-fun lt!148765 () (_ BitVec 32))

(declare-fun lt!148769 () SeekEntryResult!2320)

(declare-datatypes ((Unit!9320 0))(
  ( (Unit!9321) )
))
(declare-fun lt!148768 () Unit!9320)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!15121 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9320)

(assert (=> b!299023 (= lt!148768 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!148765 (index!11455 lt!148769) (x!29658 lt!148769) mask!3809))))

(assert (=> b!299023 (= (index!11455 lt!148769) i!1256)))

(declare-fun b!299025 () Bool)

(declare-fun e!188898 () Bool)

(assert (=> b!299025 (= e!188898 e!188902)))

(declare-fun res!157747 () Bool)

(assert (=> b!299025 (=> (not res!157747) (not e!188902))))

(declare-fun lt!148766 () Bool)

(assert (=> b!299025 (= res!157747 (and (or lt!148766 (not (undefined!3132 lt!148769))) (not lt!148766) (= (select (arr!7160 a!3312) (index!11455 lt!148769)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!299025 (= lt!148766 (not ((_ is Intermediate!2320) lt!148769)))))

(declare-fun b!299026 () Bool)

(declare-fun e!188901 () Bool)

(assert (=> b!299026 (= e!188900 e!188901)))

(declare-fun res!157746 () Bool)

(assert (=> b!299026 (=> (not res!157746) (not e!188901))))

(declare-fun lt!148764 () Bool)

(declare-fun lt!148762 () SeekEntryResult!2320)

(assert (=> b!299026 (= res!157746 (or lt!148764 (= lt!148762 (MissingVacant!2320 i!1256))))))

(assert (=> b!299026 (= lt!148764 (= lt!148762 (MissingZero!2320 i!1256)))))

(assert (=> b!299026 (= lt!148762 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!299024 () Bool)

(assert (=> b!299024 (= e!188901 e!188898)))

(declare-fun res!157749 () Bool)

(assert (=> b!299024 (=> (not res!157749) (not e!188898))))

(assert (=> b!299024 (= res!157749 (and (not lt!148764) (= lt!148762 (MissingVacant!2320 i!1256))))))

(declare-fun lt!148767 () SeekEntryResult!2320)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15121 (_ BitVec 32)) SeekEntryResult!2320)

(assert (=> b!299024 (= lt!148767 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148765 k0!2524 lt!148763 mask!3809))))

(assert (=> b!299024 (= lt!148763 (array!15122 (store (arr!7160 a!3312) i!1256 k0!2524) (size!7512 a!3312)))))

(assert (=> b!299024 (= lt!148769 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148765 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299024 (= lt!148765 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!157744 () Bool)

(assert (=> start!29654 (=> (not res!157744) (not e!188900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29654 (= res!157744 (validMask!0 mask!3809))))

(assert (=> start!29654 e!188900))

(assert (=> start!29654 true))

(declare-fun array_inv!5114 (array!15121) Bool)

(assert (=> start!29654 (array_inv!5114 a!3312)))

(declare-fun b!299027 () Bool)

(declare-fun res!157742 () Bool)

(assert (=> b!299027 (=> (not res!157742) (not e!188900))))

(declare-fun arrayContainsKey!0 (array!15121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!299027 (= res!157742 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!299028 () Bool)

(declare-fun res!157748 () Bool)

(assert (=> b!299028 (=> (not res!157748) (not e!188901))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15121 (_ BitVec 32)) Bool)

(assert (=> b!299028 (= res!157748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29654 res!157744) b!299021))

(assert (= (and b!299021 res!157745) b!299022))

(assert (= (and b!299022 res!157743) b!299027))

(assert (= (and b!299027 res!157742) b!299026))

(assert (= (and b!299026 res!157746) b!299028))

(assert (= (and b!299028 res!157748) b!299024))

(assert (= (and b!299024 res!157749) b!299025))

(assert (= (and b!299025 res!157747) b!299023))

(declare-fun m!311415 () Bool)

(assert (=> start!29654 m!311415))

(declare-fun m!311417 () Bool)

(assert (=> start!29654 m!311417))

(declare-fun m!311419 () Bool)

(assert (=> b!299026 m!311419))

(declare-fun m!311421 () Bool)

(assert (=> b!299022 m!311421))

(declare-fun m!311423 () Bool)

(assert (=> b!299028 m!311423))

(declare-fun m!311425 () Bool)

(assert (=> b!299023 m!311425))

(declare-fun m!311427 () Bool)

(assert (=> b!299023 m!311427))

(declare-fun m!311429 () Bool)

(assert (=> b!299027 m!311429))

(declare-fun m!311431 () Bool)

(assert (=> b!299025 m!311431))

(declare-fun m!311433 () Bool)

(assert (=> b!299024 m!311433))

(declare-fun m!311435 () Bool)

(assert (=> b!299024 m!311435))

(declare-fun m!311437 () Bool)

(assert (=> b!299024 m!311437))

(declare-fun m!311439 () Bool)

(assert (=> b!299024 m!311439))

(check-sat (not b!299027) (not start!29654) (not b!299026) (not b!299022) (not b!299024) (not b!299028) (not b!299023))
(check-sat)
(get-model)

(declare-fun d!67387 () Bool)

(declare-fun e!188929 () Bool)

(assert (=> d!67387 e!188929))

(declare-fun c!48236 () Bool)

(declare-fun lt!148799 () SeekEntryResult!2320)

(assert (=> d!67387 (= c!48236 (and ((_ is Intermediate!2320) lt!148799) (undefined!3132 lt!148799)))))

(declare-fun e!188930 () SeekEntryResult!2320)

(assert (=> d!67387 (= lt!148799 e!188930)))

(declare-fun c!48235 () Bool)

(assert (=> d!67387 (= c!48235 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148798 () (_ BitVec 64))

(assert (=> d!67387 (= lt!148798 (select (arr!7160 lt!148763) lt!148765))))

(assert (=> d!67387 (validMask!0 mask!3809)))

(assert (=> d!67387 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148765 k0!2524 lt!148763 mask!3809) lt!148799)))

(declare-fun b!299071 () Bool)

(declare-fun e!188928 () Bool)

(assert (=> b!299071 (= e!188929 e!188928)))

(declare-fun res!157782 () Bool)

(assert (=> b!299071 (= res!157782 (and ((_ is Intermediate!2320) lt!148799) (not (undefined!3132 lt!148799)) (bvslt (x!29658 lt!148799) #b01111111111111111111111111111110) (bvsge (x!29658 lt!148799) #b00000000000000000000000000000000) (bvsge (x!29658 lt!148799) #b00000000000000000000000000000000)))))

(assert (=> b!299071 (=> (not res!157782) (not e!188928))))

(declare-fun b!299072 () Bool)

(assert (=> b!299072 (and (bvsge (index!11455 lt!148799) #b00000000000000000000000000000000) (bvslt (index!11455 lt!148799) (size!7512 lt!148763)))))

(declare-fun res!157780 () Bool)

(assert (=> b!299072 (= res!157780 (= (select (arr!7160 lt!148763) (index!11455 lt!148799)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188931 () Bool)

(assert (=> b!299072 (=> res!157780 e!188931)))

(declare-fun b!299073 () Bool)

(assert (=> b!299073 (= e!188929 (bvsge (x!29658 lt!148799) #b01111111111111111111111111111110))))

(declare-fun b!299074 () Bool)

(declare-fun e!188932 () SeekEntryResult!2320)

(assert (=> b!299074 (= e!188932 (Intermediate!2320 false lt!148765 #b00000000000000000000000000000000))))

(declare-fun b!299075 () Bool)

(assert (=> b!299075 (and (bvsge (index!11455 lt!148799) #b00000000000000000000000000000000) (bvslt (index!11455 lt!148799) (size!7512 lt!148763)))))

(declare-fun res!157781 () Bool)

(assert (=> b!299075 (= res!157781 (= (select (arr!7160 lt!148763) (index!11455 lt!148799)) k0!2524))))

(assert (=> b!299075 (=> res!157781 e!188931)))

(assert (=> b!299075 (= e!188928 e!188931)))

(declare-fun b!299076 () Bool)

(assert (=> b!299076 (= e!188930 e!188932)))

(declare-fun c!48234 () Bool)

(assert (=> b!299076 (= c!48234 (or (= lt!148798 k0!2524) (= (bvadd lt!148798 lt!148798) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!299077 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299077 (= e!188932 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148765 #b00000000000000000000000000000000 mask!3809) k0!2524 lt!148763 mask!3809))))

(declare-fun b!299078 () Bool)

(assert (=> b!299078 (= e!188930 (Intermediate!2320 true lt!148765 #b00000000000000000000000000000000))))

(declare-fun b!299079 () Bool)

(assert (=> b!299079 (and (bvsge (index!11455 lt!148799) #b00000000000000000000000000000000) (bvslt (index!11455 lt!148799) (size!7512 lt!148763)))))

(assert (=> b!299079 (= e!188931 (= (select (arr!7160 lt!148763) (index!11455 lt!148799)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!67387 c!48235) b!299078))

(assert (= (and d!67387 (not c!48235)) b!299076))

(assert (= (and b!299076 c!48234) b!299074))

(assert (= (and b!299076 (not c!48234)) b!299077))

(assert (= (and d!67387 c!48236) b!299073))

(assert (= (and d!67387 (not c!48236)) b!299071))

(assert (= (and b!299071 res!157782) b!299075))

(assert (= (and b!299075 (not res!157781)) b!299072))

(assert (= (and b!299072 (not res!157780)) b!299079))

(declare-fun m!311467 () Bool)

(assert (=> b!299077 m!311467))

(assert (=> b!299077 m!311467))

(declare-fun m!311469 () Bool)

(assert (=> b!299077 m!311469))

(declare-fun m!311471 () Bool)

(assert (=> d!67387 m!311471))

(assert (=> d!67387 m!311415))

(declare-fun m!311473 () Bool)

(assert (=> b!299072 m!311473))

(assert (=> b!299075 m!311473))

(assert (=> b!299079 m!311473))

(assert (=> b!299024 d!67387))

(declare-fun d!67389 () Bool)

(declare-fun e!188934 () Bool)

(assert (=> d!67389 e!188934))

(declare-fun c!48239 () Bool)

(declare-fun lt!148801 () SeekEntryResult!2320)

(assert (=> d!67389 (= c!48239 (and ((_ is Intermediate!2320) lt!148801) (undefined!3132 lt!148801)))))

(declare-fun e!188935 () SeekEntryResult!2320)

(assert (=> d!67389 (= lt!148801 e!188935)))

(declare-fun c!48238 () Bool)

(assert (=> d!67389 (= c!48238 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148800 () (_ BitVec 64))

(assert (=> d!67389 (= lt!148800 (select (arr!7160 a!3312) lt!148765))))

(assert (=> d!67389 (validMask!0 mask!3809)))

(assert (=> d!67389 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148765 k0!2524 a!3312 mask!3809) lt!148801)))

(declare-fun b!299080 () Bool)

(declare-fun e!188933 () Bool)

(assert (=> b!299080 (= e!188934 e!188933)))

(declare-fun res!157785 () Bool)

(assert (=> b!299080 (= res!157785 (and ((_ is Intermediate!2320) lt!148801) (not (undefined!3132 lt!148801)) (bvslt (x!29658 lt!148801) #b01111111111111111111111111111110) (bvsge (x!29658 lt!148801) #b00000000000000000000000000000000) (bvsge (x!29658 lt!148801) #b00000000000000000000000000000000)))))

(assert (=> b!299080 (=> (not res!157785) (not e!188933))))

(declare-fun b!299081 () Bool)

(assert (=> b!299081 (and (bvsge (index!11455 lt!148801) #b00000000000000000000000000000000) (bvslt (index!11455 lt!148801) (size!7512 a!3312)))))

(declare-fun res!157783 () Bool)

(assert (=> b!299081 (= res!157783 (= (select (arr!7160 a!3312) (index!11455 lt!148801)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188936 () Bool)

(assert (=> b!299081 (=> res!157783 e!188936)))

(declare-fun b!299082 () Bool)

(assert (=> b!299082 (= e!188934 (bvsge (x!29658 lt!148801) #b01111111111111111111111111111110))))

(declare-fun b!299083 () Bool)

(declare-fun e!188937 () SeekEntryResult!2320)

(assert (=> b!299083 (= e!188937 (Intermediate!2320 false lt!148765 #b00000000000000000000000000000000))))

(declare-fun b!299084 () Bool)

(assert (=> b!299084 (and (bvsge (index!11455 lt!148801) #b00000000000000000000000000000000) (bvslt (index!11455 lt!148801) (size!7512 a!3312)))))

(declare-fun res!157784 () Bool)

(assert (=> b!299084 (= res!157784 (= (select (arr!7160 a!3312) (index!11455 lt!148801)) k0!2524))))

(assert (=> b!299084 (=> res!157784 e!188936)))

(assert (=> b!299084 (= e!188933 e!188936)))

(declare-fun b!299085 () Bool)

(assert (=> b!299085 (= e!188935 e!188937)))

(declare-fun c!48237 () Bool)

(assert (=> b!299085 (= c!48237 (or (= lt!148800 k0!2524) (= (bvadd lt!148800 lt!148800) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!299086 () Bool)

(assert (=> b!299086 (= e!188937 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148765 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!299087 () Bool)

(assert (=> b!299087 (= e!188935 (Intermediate!2320 true lt!148765 #b00000000000000000000000000000000))))

(declare-fun b!299088 () Bool)

(assert (=> b!299088 (and (bvsge (index!11455 lt!148801) #b00000000000000000000000000000000) (bvslt (index!11455 lt!148801) (size!7512 a!3312)))))

(assert (=> b!299088 (= e!188936 (= (select (arr!7160 a!3312) (index!11455 lt!148801)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!67389 c!48238) b!299087))

(assert (= (and d!67389 (not c!48238)) b!299085))

(assert (= (and b!299085 c!48237) b!299083))

(assert (= (and b!299085 (not c!48237)) b!299086))

(assert (= (and d!67389 c!48239) b!299082))

(assert (= (and d!67389 (not c!48239)) b!299080))

(assert (= (and b!299080 res!157785) b!299084))

(assert (= (and b!299084 (not res!157784)) b!299081))

(assert (= (and b!299081 (not res!157783)) b!299088))

(assert (=> b!299086 m!311467))

(assert (=> b!299086 m!311467))

(declare-fun m!311475 () Bool)

(assert (=> b!299086 m!311475))

(declare-fun m!311477 () Bool)

(assert (=> d!67389 m!311477))

(assert (=> d!67389 m!311415))

(declare-fun m!311479 () Bool)

(assert (=> b!299081 m!311479))

(assert (=> b!299084 m!311479))

(assert (=> b!299088 m!311479))

(assert (=> b!299024 d!67389))

(declare-fun d!67391 () Bool)

(declare-fun lt!148807 () (_ BitVec 32))

(declare-fun lt!148806 () (_ BitVec 32))

(assert (=> d!67391 (= lt!148807 (bvmul (bvxor lt!148806 (bvlshr lt!148806 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67391 (= lt!148806 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67391 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!157786 (let ((h!5333 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29661 (bvmul (bvxor h!5333 (bvlshr h!5333 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29661 (bvlshr x!29661 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!157786 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!157786 #b00000000000000000000000000000000))))))

(assert (=> d!67391 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!148807 (bvlshr lt!148807 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!299024 d!67391))

(declare-fun b!299119 () Bool)

(declare-fun e!188954 () SeekEntryResult!2320)

(declare-fun e!188955 () SeekEntryResult!2320)

(assert (=> b!299119 (= e!188954 e!188955)))

(declare-fun lt!148824 () (_ BitVec 64))

(declare-fun lt!148823 () SeekEntryResult!2320)

(assert (=> b!299119 (= lt!148824 (select (arr!7160 lt!148763) (index!11455 lt!148823)))))

(declare-fun c!48256 () Bool)

(assert (=> b!299119 (= c!48256 (= lt!148824 k0!2524))))

(declare-fun b!299120 () Bool)

(declare-fun c!48257 () Bool)

(assert (=> b!299120 (= c!48257 (= lt!148824 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188953 () SeekEntryResult!2320)

(assert (=> b!299120 (= e!188955 e!188953)))

(declare-fun b!299121 () Bool)

(assert (=> b!299121 (= e!188954 Undefined!2320)))

(declare-fun b!299122 () Bool)

(assert (=> b!299122 (= e!188953 (MissingZero!2320 (index!11455 lt!148823)))))

(declare-fun b!299123 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15121 (_ BitVec 32)) SeekEntryResult!2320)

(assert (=> b!299123 (= e!188953 (seekKeyOrZeroReturnVacant!0 (x!29658 lt!148823) (index!11455 lt!148823) (index!11455 lt!148823) k0!2524 lt!148763 mask!3809))))

(declare-fun d!67395 () Bool)

(declare-fun lt!148825 () SeekEntryResult!2320)

(assert (=> d!67395 (and (or ((_ is Undefined!2320) lt!148825) (not ((_ is Found!2320) lt!148825)) (and (bvsge (index!11454 lt!148825) #b00000000000000000000000000000000) (bvslt (index!11454 lt!148825) (size!7512 lt!148763)))) (or ((_ is Undefined!2320) lt!148825) ((_ is Found!2320) lt!148825) (not ((_ is MissingZero!2320) lt!148825)) (and (bvsge (index!11453 lt!148825) #b00000000000000000000000000000000) (bvslt (index!11453 lt!148825) (size!7512 lt!148763)))) (or ((_ is Undefined!2320) lt!148825) ((_ is Found!2320) lt!148825) ((_ is MissingZero!2320) lt!148825) (not ((_ is MissingVacant!2320) lt!148825)) (and (bvsge (index!11456 lt!148825) #b00000000000000000000000000000000) (bvslt (index!11456 lt!148825) (size!7512 lt!148763)))) (or ((_ is Undefined!2320) lt!148825) (ite ((_ is Found!2320) lt!148825) (= (select (arr!7160 lt!148763) (index!11454 lt!148825)) k0!2524) (ite ((_ is MissingZero!2320) lt!148825) (= (select (arr!7160 lt!148763) (index!11453 lt!148825)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2320) lt!148825) (= (select (arr!7160 lt!148763) (index!11456 lt!148825)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67395 (= lt!148825 e!188954)))

(declare-fun c!48255 () Bool)

(assert (=> d!67395 (= c!48255 (and ((_ is Intermediate!2320) lt!148823) (undefined!3132 lt!148823)))))

(assert (=> d!67395 (= lt!148823 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 lt!148763 mask!3809))))

(assert (=> d!67395 (validMask!0 mask!3809)))

(assert (=> d!67395 (= (seekEntryOrOpen!0 k0!2524 lt!148763 mask!3809) lt!148825)))

(declare-fun b!299124 () Bool)

(assert (=> b!299124 (= e!188955 (Found!2320 (index!11455 lt!148823)))))

(assert (= (and d!67395 c!48255) b!299121))

(assert (= (and d!67395 (not c!48255)) b!299119))

(assert (= (and b!299119 c!48256) b!299124))

(assert (= (and b!299119 (not c!48256)) b!299120))

(assert (= (and b!299120 c!48257) b!299122))

(assert (= (and b!299120 (not c!48257)) b!299123))

(declare-fun m!311493 () Bool)

(assert (=> b!299119 m!311493))

(declare-fun m!311495 () Bool)

(assert (=> b!299123 m!311495))

(declare-fun m!311497 () Bool)

(assert (=> d!67395 m!311497))

(declare-fun m!311499 () Bool)

(assert (=> d!67395 m!311499))

(assert (=> d!67395 m!311439))

(assert (=> d!67395 m!311415))

(assert (=> d!67395 m!311439))

(declare-fun m!311501 () Bool)

(assert (=> d!67395 m!311501))

(declare-fun m!311503 () Bool)

(assert (=> d!67395 m!311503))

(assert (=> b!299023 d!67395))

(declare-fun bm!25804 () Bool)

(declare-fun call!25808 () (_ BitVec 32))

(assert (=> bm!25804 (= call!25808 (nextIndex!0 lt!148765 #b00000000000000000000000000000000 mask!3809))))

(declare-fun b!299216 () Bool)

(declare-fun e!189006 () Unit!9320)

(declare-fun Unit!9324 () Unit!9320)

(assert (=> b!299216 (= e!189006 Unit!9324)))

(declare-fun c!48298 () Bool)

(assert (=> b!299216 (= c!48298 (not (= (index!11455 lt!148769) lt!148765)))))

(declare-fun lt!148866 () Unit!9320)

(declare-fun e!189008 () Unit!9320)

(assert (=> b!299216 (= lt!148866 e!189008)))

(assert (=> b!299216 (= lt!148765 (index!11455 lt!148769))))

(declare-fun lt!148867 () Unit!9320)

(declare-fun Unit!9325 () Unit!9320)

(assert (=> b!299216 (= lt!148867 Unit!9325)))

(assert (=> b!299216 (= (select (arr!7160 a!3312) lt!148765) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun d!67401 () Bool)

(declare-fun e!189009 () Bool)

(assert (=> d!67401 e!189009))

(declare-fun res!157805 () Bool)

(assert (=> d!67401 (=> (not res!157805) (not e!189009))))

(assert (=> d!67401 (= res!157805 (and (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7512 a!3312))))))

(declare-fun lt!148868 () Unit!9320)

(assert (=> d!67401 (= lt!148868 e!189006)))

(declare-fun c!48297 () Bool)

(assert (=> d!67401 (= c!48297 (= #b00000000000000000000000000000000 (x!29658 lt!148769)))))

(assert (=> d!67401 (validMask!0 mask!3809)))

(assert (=> d!67401 (= (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!148765 (index!11455 lt!148769) (x!29658 lt!148769) mask!3809) lt!148868)))

(declare-fun b!299217 () Bool)

(declare-fun c!48299 () Bool)

(assert (=> b!299217 (= c!48299 (or (= (select (arr!7160 a!3312) lt!148765) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7160 a!3312) lt!148765) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!189007 () Unit!9320)

(assert (=> b!299217 (= e!189008 e!189007)))

(declare-fun call!25807 () SeekEntryResult!2320)

(declare-fun bm!25805 () Bool)

(declare-fun e!189011 () (_ BitVec 32))

(assert (=> bm!25805 (= call!25807 (seekKeyOrZeroOrLongMinValue!0 (ite c!48299 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!189011 k0!2524 a!3312 mask!3809))))

(declare-fun c!48295 () Bool)

(assert (=> bm!25805 (= c!48295 c!48299)))

(declare-fun b!299218 () Bool)

(declare-fun e!189010 () Unit!9320)

(declare-fun Unit!9328 () Unit!9320)

(assert (=> b!299218 (= e!189010 Unit!9328)))

(declare-fun b!299219 () Bool)

(assert (=> b!299219 (= e!189011 lt!148765)))

(declare-fun b!299220 () Bool)

(assert (=> b!299220 (= e!189011 call!25808)))

(declare-fun b!299221 () Bool)

(assert (=> b!299221 false))

(declare-fun Unit!9330 () Unit!9320)

(assert (=> b!299221 (= e!189010 Unit!9330)))

(declare-fun b!299222 () Bool)

(assert (=> b!299222 (= e!189009 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148765 k0!2524 (array!15122 (store (arr!7160 a!3312) i!1256 k0!2524) (size!7512 a!3312)) mask!3809) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148765 k0!2524 a!3312 mask!3809)))))

(declare-fun b!299223 () Bool)

(declare-fun Unit!9332 () Unit!9320)

(assert (=> b!299223 (= e!189007 Unit!9332)))

(declare-fun c!48296 () Bool)

(assert (=> b!299223 (= c!48296 ((_ is Intermediate!2320) call!25807))))

(declare-fun lt!148865 () Unit!9320)

(assert (=> b!299223 (= lt!148865 e!189010)))

(assert (=> b!299223 false))

(declare-fun b!299224 () Bool)

(declare-fun Unit!9334 () Unit!9320)

(assert (=> b!299224 (= e!189007 Unit!9334)))

(assert (=> b!299224 (= call!25807 (Intermediate!2320 false lt!148765 (x!29658 lt!148769)))))

(declare-fun lt!148869 () Unit!9320)

(declare-fun Unit!9335 () Unit!9320)

(assert (=> b!299224 (= lt!148869 Unit!9335)))

(assert (=> b!299224 false))

(declare-fun b!299225 () Bool)

(declare-fun Unit!9337 () Unit!9320)

(assert (=> b!299225 (= e!189008 Unit!9337)))

(declare-fun b!299226 () Bool)

(assert (=> b!299226 (= e!189006 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) call!25808 (index!11455 lt!148769) (x!29658 lt!148769) mask!3809))))

(assert (= (and d!67401 c!48297) b!299216))

(assert (= (and d!67401 (not c!48297)) b!299226))

(assert (= (and b!299216 c!48298) b!299217))

(assert (= (and b!299216 (not c!48298)) b!299225))

(assert (= (and b!299217 c!48299) b!299224))

(assert (= (and b!299217 (not c!48299)) b!299223))

(assert (= (and b!299223 c!48296) b!299218))

(assert (= (and b!299223 (not c!48296)) b!299221))

(assert (= (or b!299224 b!299223) bm!25805))

(assert (= (and bm!25805 c!48295) b!299219))

(assert (= (and bm!25805 (not c!48295)) b!299220))

(assert (= (or b!299220 b!299226) bm!25804))

(assert (= (and d!67401 res!157805) b!299222))

(assert (=> b!299216 m!311477))

(assert (=> d!67401 m!311415))

(assert (=> b!299222 m!311435))

(declare-fun m!311529 () Bool)

(assert (=> b!299222 m!311529))

(assert (=> b!299222 m!311437))

(declare-fun m!311531 () Bool)

(assert (=> bm!25805 m!311531))

(assert (=> bm!25804 m!311467))

(assert (=> b!299217 m!311477))

(declare-fun m!311533 () Bool)

(assert (=> b!299226 m!311533))

(assert (=> b!299023 d!67401))

(declare-fun bm!25811 () Bool)

(declare-fun call!25814 () Bool)

(assert (=> bm!25811 (= call!25814 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!299265 () Bool)

(declare-fun e!189036 () Bool)

(assert (=> b!299265 (= e!189036 call!25814)))

(declare-fun b!299266 () Bool)

(declare-fun e!189037 () Bool)

(assert (=> b!299266 (= e!189036 e!189037)))

(declare-fun lt!148896 () (_ BitVec 64))

(assert (=> b!299266 (= lt!148896 (select (arr!7160 a!3312) #b00000000000000000000000000000000))))

(declare-fun lt!148894 () Unit!9320)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15121 (_ BitVec 64) (_ BitVec 32)) Unit!9320)

(assert (=> b!299266 (= lt!148894 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148896 #b00000000000000000000000000000000))))

(assert (=> b!299266 (arrayContainsKey!0 a!3312 lt!148896 #b00000000000000000000000000000000)))

(declare-fun lt!148895 () Unit!9320)

(assert (=> b!299266 (= lt!148895 lt!148894)))

(declare-fun res!157817 () Bool)

(assert (=> b!299266 (= res!157817 (= (seekEntryOrOpen!0 (select (arr!7160 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2320 #b00000000000000000000000000000000)))))

(assert (=> b!299266 (=> (not res!157817) (not e!189037))))

(declare-fun b!299267 () Bool)

(declare-fun e!189038 () Bool)

(assert (=> b!299267 (= e!189038 e!189036)))

(declare-fun c!48314 () Bool)

(assert (=> b!299267 (= c!48314 (validKeyInArray!0 (select (arr!7160 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!299268 () Bool)

(assert (=> b!299268 (= e!189037 call!25814)))

(declare-fun d!67411 () Bool)

(declare-fun res!157816 () Bool)

(assert (=> d!67411 (=> res!157816 e!189038)))

(assert (=> d!67411 (= res!157816 (bvsge #b00000000000000000000000000000000 (size!7512 a!3312)))))

(assert (=> d!67411 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!189038)))

(assert (= (and d!67411 (not res!157816)) b!299267))

(assert (= (and b!299267 c!48314) b!299266))

(assert (= (and b!299267 (not c!48314)) b!299265))

(assert (= (and b!299266 res!157817) b!299268))

(assert (= (or b!299268 b!299265) bm!25811))

(declare-fun m!311559 () Bool)

(assert (=> bm!25811 m!311559))

(declare-fun m!311561 () Bool)

(assert (=> b!299266 m!311561))

(declare-fun m!311563 () Bool)

(assert (=> b!299266 m!311563))

(declare-fun m!311565 () Bool)

(assert (=> b!299266 m!311565))

(assert (=> b!299266 m!311561))

(declare-fun m!311567 () Bool)

(assert (=> b!299266 m!311567))

(assert (=> b!299267 m!311561))

(assert (=> b!299267 m!311561))

(declare-fun m!311569 () Bool)

(assert (=> b!299267 m!311569))

(assert (=> b!299028 d!67411))

(declare-fun d!67417 () Bool)

(declare-fun res!157828 () Bool)

(declare-fun e!189049 () Bool)

(assert (=> d!67417 (=> res!157828 e!189049)))

(assert (=> d!67417 (= res!157828 (= (select (arr!7160 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!67417 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!189049)))

(declare-fun b!299279 () Bool)

(declare-fun e!189050 () Bool)

(assert (=> b!299279 (= e!189049 e!189050)))

(declare-fun res!157829 () Bool)

(assert (=> b!299279 (=> (not res!157829) (not e!189050))))

(assert (=> b!299279 (= res!157829 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7512 a!3312)))))

(declare-fun b!299280 () Bool)

(assert (=> b!299280 (= e!189050 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67417 (not res!157828)) b!299279))

(assert (= (and b!299279 res!157829) b!299280))

(assert (=> d!67417 m!311561))

(declare-fun m!311573 () Bool)

(assert (=> b!299280 m!311573))

(assert (=> b!299027 d!67417))

(declare-fun d!67421 () Bool)

(assert (=> d!67421 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!299022 d!67421))

(declare-fun d!67423 () Bool)

(assert (=> d!67423 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29654 d!67423))

(declare-fun d!67425 () Bool)

(assert (=> d!67425 (= (array_inv!5114 a!3312) (bvsge (size!7512 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29654 d!67425))

(declare-fun b!299281 () Bool)

(declare-fun e!189052 () SeekEntryResult!2320)

(declare-fun e!189053 () SeekEntryResult!2320)

(assert (=> b!299281 (= e!189052 e!189053)))

(declare-fun lt!148898 () (_ BitVec 64))

(declare-fun lt!148897 () SeekEntryResult!2320)

(assert (=> b!299281 (= lt!148898 (select (arr!7160 a!3312) (index!11455 lt!148897)))))

(declare-fun c!48316 () Bool)

(assert (=> b!299281 (= c!48316 (= lt!148898 k0!2524))))

(declare-fun b!299282 () Bool)

(declare-fun c!48317 () Bool)

(assert (=> b!299282 (= c!48317 (= lt!148898 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!189051 () SeekEntryResult!2320)

(assert (=> b!299282 (= e!189053 e!189051)))

(declare-fun b!299283 () Bool)

(assert (=> b!299283 (= e!189052 Undefined!2320)))

(declare-fun b!299284 () Bool)

(assert (=> b!299284 (= e!189051 (MissingZero!2320 (index!11455 lt!148897)))))

(declare-fun b!299285 () Bool)

(assert (=> b!299285 (= e!189051 (seekKeyOrZeroReturnVacant!0 (x!29658 lt!148897) (index!11455 lt!148897) (index!11455 lt!148897) k0!2524 a!3312 mask!3809))))

(declare-fun d!67427 () Bool)

(declare-fun lt!148899 () SeekEntryResult!2320)

(assert (=> d!67427 (and (or ((_ is Undefined!2320) lt!148899) (not ((_ is Found!2320) lt!148899)) (and (bvsge (index!11454 lt!148899) #b00000000000000000000000000000000) (bvslt (index!11454 lt!148899) (size!7512 a!3312)))) (or ((_ is Undefined!2320) lt!148899) ((_ is Found!2320) lt!148899) (not ((_ is MissingZero!2320) lt!148899)) (and (bvsge (index!11453 lt!148899) #b00000000000000000000000000000000) (bvslt (index!11453 lt!148899) (size!7512 a!3312)))) (or ((_ is Undefined!2320) lt!148899) ((_ is Found!2320) lt!148899) ((_ is MissingZero!2320) lt!148899) (not ((_ is MissingVacant!2320) lt!148899)) (and (bvsge (index!11456 lt!148899) #b00000000000000000000000000000000) (bvslt (index!11456 lt!148899) (size!7512 a!3312)))) (or ((_ is Undefined!2320) lt!148899) (ite ((_ is Found!2320) lt!148899) (= (select (arr!7160 a!3312) (index!11454 lt!148899)) k0!2524) (ite ((_ is MissingZero!2320) lt!148899) (= (select (arr!7160 a!3312) (index!11453 lt!148899)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2320) lt!148899) (= (select (arr!7160 a!3312) (index!11456 lt!148899)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67427 (= lt!148899 e!189052)))

(declare-fun c!48315 () Bool)

(assert (=> d!67427 (= c!48315 (and ((_ is Intermediate!2320) lt!148897) (undefined!3132 lt!148897)))))

(assert (=> d!67427 (= lt!148897 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!67427 (validMask!0 mask!3809)))

(assert (=> d!67427 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!148899)))

(declare-fun b!299286 () Bool)

(assert (=> b!299286 (= e!189053 (Found!2320 (index!11455 lt!148897)))))

(assert (= (and d!67427 c!48315) b!299283))

(assert (= (and d!67427 (not c!48315)) b!299281))

(assert (= (and b!299281 c!48316) b!299286))

(assert (= (and b!299281 (not c!48316)) b!299282))

(assert (= (and b!299282 c!48317) b!299284))

(assert (= (and b!299282 (not c!48317)) b!299285))

(declare-fun m!311575 () Bool)

(assert (=> b!299281 m!311575))

(declare-fun m!311577 () Bool)

(assert (=> b!299285 m!311577))

(declare-fun m!311579 () Bool)

(assert (=> d!67427 m!311579))

(declare-fun m!311581 () Bool)

(assert (=> d!67427 m!311581))

(assert (=> d!67427 m!311439))

(assert (=> d!67427 m!311415))

(assert (=> d!67427 m!311439))

(declare-fun m!311583 () Bool)

(assert (=> d!67427 m!311583))

(declare-fun m!311585 () Bool)

(assert (=> d!67427 m!311585))

(assert (=> b!299026 d!67427))

(check-sat (not bm!25804) (not b!299266) (not b!299285) (not bm!25805) (not d!67427) (not b!299226) (not bm!25811) (not b!299077) (not d!67401) (not d!67387) (not b!299123) (not b!299280) (not b!299222) (not d!67389) (not b!299267) (not d!67395) (not b!299086))
(check-sat)
