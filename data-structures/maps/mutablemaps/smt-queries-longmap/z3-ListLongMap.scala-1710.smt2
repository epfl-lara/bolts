; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31448 () Bool)

(assert start!31448)

(declare-fun b!314731 () Bool)

(declare-fun res!170503 () Bool)

(declare-fun e!195972 () Bool)

(assert (=> b!314731 (=> (not res!170503) (not e!195972))))

(declare-datatypes ((array!16072 0))(
  ( (array!16073 (arr!7607 (Array (_ BitVec 32) (_ BitVec 64))) (size!7959 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16072)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!314731 (= res!170503 (and (= (select (arr!7607 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7959 a!3293))))))

(declare-fun b!314732 () Bool)

(declare-fun res!170500 () Bool)

(declare-fun e!195970 () Bool)

(assert (=> b!314732 (=> (not res!170500) (not e!195970))))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!314732 (= res!170500 (and (= (size!7959 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7959 a!3293))))))

(declare-fun b!314733 () Bool)

(declare-fun res!170497 () Bool)

(assert (=> b!314733 (=> (not res!170497) (not e!195970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16072 (_ BitVec 32)) Bool)

(assert (=> b!314733 (= res!170497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!314734 () Bool)

(declare-fun e!195971 () Bool)

(assert (=> b!314734 (= e!195972 e!195971)))

(declare-fun res!170505 () Bool)

(assert (=> b!314734 (=> (not res!170505) (not e!195971))))

(declare-datatypes ((SeekEntryResult!2758 0))(
  ( (MissingZero!2758 (index!13208 (_ BitVec 32))) (Found!2758 (index!13209 (_ BitVec 32))) (Intermediate!2758 (undefined!3570 Bool) (index!13210 (_ BitVec 32)) (x!31405 (_ BitVec 32))) (Undefined!2758) (MissingVacant!2758 (index!13211 (_ BitVec 32))) )
))
(declare-fun lt!154019 () SeekEntryResult!2758)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun lt!154018 () SeekEntryResult!2758)

(assert (=> b!314734 (= res!170505 (and (= lt!154018 lt!154019) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7607 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7607 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7607 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16072 (_ BitVec 32)) SeekEntryResult!2758)

(assert (=> b!314734 (= lt!154018 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!314735 () Bool)

(declare-fun res!170504 () Bool)

(assert (=> b!314735 (=> (not res!170504) (not e!195970))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16072 (_ BitVec 32)) SeekEntryResult!2758)

(assert (=> b!314735 (= res!170504 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2758 i!1240)))))

(declare-fun res!170502 () Bool)

(assert (=> start!31448 (=> (not res!170502) (not e!195970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31448 (= res!170502 (validMask!0 mask!3709))))

(assert (=> start!31448 e!195970))

(declare-fun array_inv!5561 (array!16072) Bool)

(assert (=> start!31448 (array_inv!5561 a!3293)))

(assert (=> start!31448 true))

(declare-fun b!314736 () Bool)

(declare-fun res!170499 () Bool)

(assert (=> b!314736 (=> (not res!170499) (not e!195970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314736 (= res!170499 (validKeyInArray!0 k0!2441))))

(declare-fun b!314737 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314737 (= e!195971 (not (= lt!154018 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))))

(declare-fun b!314738 () Bool)

(declare-fun res!170498 () Bool)

(assert (=> b!314738 (=> (not res!170498) (not e!195970))))

(declare-fun arrayContainsKey!0 (array!16072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314738 (= res!170498 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!314739 () Bool)

(assert (=> b!314739 (= e!195970 e!195972)))

(declare-fun res!170501 () Bool)

(assert (=> b!314739 (=> (not res!170501) (not e!195972))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314739 (= res!170501 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154019))))

(assert (=> b!314739 (= lt!154019 (Intermediate!2758 false resIndex!52 resX!52))))

(assert (= (and start!31448 res!170502) b!314732))

(assert (= (and b!314732 res!170500) b!314736))

(assert (= (and b!314736 res!170499) b!314738))

(assert (= (and b!314738 res!170498) b!314735))

(assert (= (and b!314735 res!170504) b!314733))

(assert (= (and b!314733 res!170497) b!314739))

(assert (= (and b!314739 res!170501) b!314731))

(assert (= (and b!314731 res!170503) b!314734))

(assert (= (and b!314734 res!170505) b!314737))

(declare-fun m!324189 () Bool)

(assert (=> b!314738 m!324189))

(declare-fun m!324191 () Bool)

(assert (=> start!31448 m!324191))

(declare-fun m!324193 () Bool)

(assert (=> start!31448 m!324193))

(declare-fun m!324195 () Bool)

(assert (=> b!314737 m!324195))

(assert (=> b!314737 m!324195))

(declare-fun m!324197 () Bool)

(assert (=> b!314737 m!324197))

(declare-fun m!324199 () Bool)

(assert (=> b!314736 m!324199))

(declare-fun m!324201 () Bool)

(assert (=> b!314733 m!324201))

(declare-fun m!324203 () Bool)

(assert (=> b!314731 m!324203))

(declare-fun m!324205 () Bool)

(assert (=> b!314735 m!324205))

(declare-fun m!324207 () Bool)

(assert (=> b!314734 m!324207))

(declare-fun m!324209 () Bool)

(assert (=> b!314734 m!324209))

(declare-fun m!324211 () Bool)

(assert (=> b!314739 m!324211))

(assert (=> b!314739 m!324211))

(declare-fun m!324213 () Bool)

(assert (=> b!314739 m!324213))

(check-sat (not b!314736) (not b!314739) (not b!314734) (not b!314735) (not start!31448) (not b!314738) (not b!314733) (not b!314737))
(check-sat)
(get-model)

(declare-fun d!68693 () Bool)

(assert (=> d!68693 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!314736 d!68693))

(declare-fun b!314791 () Bool)

(declare-fun e!196003 () SeekEntryResult!2758)

(declare-fun e!196004 () SeekEntryResult!2758)

(assert (=> b!314791 (= e!196003 e!196004)))

(declare-fun c!49738 () Bool)

(declare-fun lt!154030 () (_ BitVec 64))

(assert (=> b!314791 (= c!49738 (or (= lt!154030 k0!2441) (= (bvadd lt!154030 lt!154030) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!314792 () Bool)

(assert (=> b!314792 (= e!196004 (Intermediate!2758 false (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun d!68695 () Bool)

(declare-fun e!196002 () Bool)

(assert (=> d!68695 e!196002))

(declare-fun c!49737 () Bool)

(declare-fun lt!154031 () SeekEntryResult!2758)

(get-info :version)

(assert (=> d!68695 (= c!49737 (and ((_ is Intermediate!2758) lt!154031) (undefined!3570 lt!154031)))))

(assert (=> d!68695 (= lt!154031 e!196003)))

(declare-fun c!49739 () Bool)

(assert (=> d!68695 (= c!49739 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(assert (=> d!68695 (= lt!154030 (select (arr!7607 a!3293) (nextIndex!0 index!1781 x!1427 mask!3709)))))

(assert (=> d!68695 (validMask!0 mask!3709)))

(assert (=> d!68695 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709) lt!154031)))

(declare-fun b!314793 () Bool)

(assert (=> b!314793 (= e!196004 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!314794 () Bool)

(assert (=> b!314794 (= e!196002 (bvsge (x!31405 lt!154031) #b01111111111111111111111111111110))))

(declare-fun b!314795 () Bool)

(declare-fun e!196005 () Bool)

(assert (=> b!314795 (= e!196002 e!196005)))

(declare-fun res!170545 () Bool)

(assert (=> b!314795 (= res!170545 (and ((_ is Intermediate!2758) lt!154031) (not (undefined!3570 lt!154031)) (bvslt (x!31405 lt!154031) #b01111111111111111111111111111110) (bvsge (x!31405 lt!154031) #b00000000000000000000000000000000) (bvsge (x!31405 lt!154031) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!314795 (=> (not res!170545) (not e!196005))))

(declare-fun b!314796 () Bool)

(assert (=> b!314796 (and (bvsge (index!13210 lt!154031) #b00000000000000000000000000000000) (bvslt (index!13210 lt!154031) (size!7959 a!3293)))))

(declare-fun res!170546 () Bool)

(assert (=> b!314796 (= res!170546 (= (select (arr!7607 a!3293) (index!13210 lt!154031)) k0!2441))))

(declare-fun e!196006 () Bool)

(assert (=> b!314796 (=> res!170546 e!196006)))

(assert (=> b!314796 (= e!196005 e!196006)))

(declare-fun b!314797 () Bool)

(assert (=> b!314797 (and (bvsge (index!13210 lt!154031) #b00000000000000000000000000000000) (bvslt (index!13210 lt!154031) (size!7959 a!3293)))))

(assert (=> b!314797 (= e!196006 (= (select (arr!7607 a!3293) (index!13210 lt!154031)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314798 () Bool)

(assert (=> b!314798 (and (bvsge (index!13210 lt!154031) #b00000000000000000000000000000000) (bvslt (index!13210 lt!154031) (size!7959 a!3293)))))

(declare-fun res!170547 () Bool)

(assert (=> b!314798 (= res!170547 (= (select (arr!7607 a!3293) (index!13210 lt!154031)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314798 (=> res!170547 e!196006)))

(declare-fun b!314799 () Bool)

(assert (=> b!314799 (= e!196003 (Intermediate!2758 true (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(assert (= (and d!68695 c!49739) b!314799))

(assert (= (and d!68695 (not c!49739)) b!314791))

(assert (= (and b!314791 c!49738) b!314792))

(assert (= (and b!314791 (not c!49738)) b!314793))

(assert (= (and d!68695 c!49737) b!314794))

(assert (= (and d!68695 (not c!49737)) b!314795))

(assert (= (and b!314795 res!170545) b!314796))

(assert (= (and b!314796 (not res!170546)) b!314798))

(assert (= (and b!314798 (not res!170547)) b!314797))

(declare-fun m!324245 () Bool)

(assert (=> b!314796 m!324245))

(assert (=> d!68695 m!324195))

(declare-fun m!324247 () Bool)

(assert (=> d!68695 m!324247))

(assert (=> d!68695 m!324191))

(assert (=> b!314798 m!324245))

(assert (=> b!314797 m!324245))

(assert (=> b!314793 m!324195))

(declare-fun m!324249 () Bool)

(assert (=> b!314793 m!324249))

(assert (=> b!314793 m!324249))

(declare-fun m!324251 () Bool)

(assert (=> b!314793 m!324251))

(assert (=> b!314737 d!68695))

(declare-fun d!68703 () Bool)

(declare-fun lt!154034 () (_ BitVec 32))

(assert (=> d!68703 (and (bvsge lt!154034 #b00000000000000000000000000000000) (bvslt lt!154034 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68703 (= lt!154034 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68703 (validMask!0 mask!3709)))

(assert (=> d!68703 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!154034)))

(declare-fun bs!11014 () Bool)

(assert (= bs!11014 d!68703))

(declare-fun m!324253 () Bool)

(assert (=> bs!11014 m!324253))

(assert (=> bs!11014 m!324191))

(assert (=> b!314737 d!68703))

(declare-fun d!68705 () Bool)

(assert (=> d!68705 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31448 d!68705))

(declare-fun d!68715 () Bool)

(assert (=> d!68715 (= (array_inv!5561 a!3293) (bvsge (size!7959 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31448 d!68715))

(declare-fun b!314812 () Bool)

(declare-fun e!196017 () SeekEntryResult!2758)

(declare-fun e!196018 () SeekEntryResult!2758)

(assert (=> b!314812 (= e!196017 e!196018)))

(declare-fun c!49744 () Bool)

(declare-fun lt!154044 () (_ BitVec 64))

(assert (=> b!314812 (= c!49744 (or (= lt!154044 k0!2441) (= (bvadd lt!154044 lt!154044) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!314813 () Bool)

(assert (=> b!314813 (= e!196018 (Intermediate!2758 false (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun d!68717 () Bool)

(declare-fun e!196016 () Bool)

(assert (=> d!68717 e!196016))

(declare-fun c!49743 () Bool)

(declare-fun lt!154045 () SeekEntryResult!2758)

(assert (=> d!68717 (= c!49743 (and ((_ is Intermediate!2758) lt!154045) (undefined!3570 lt!154045)))))

(assert (=> d!68717 (= lt!154045 e!196017)))

(declare-fun c!49745 () Bool)

(assert (=> d!68717 (= c!49745 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68717 (= lt!154044 (select (arr!7607 a!3293) (toIndex!0 k0!2441 mask!3709)))))

(assert (=> d!68717 (validMask!0 mask!3709)))

(assert (=> d!68717 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154045)))

(declare-fun b!314814 () Bool)

(assert (=> b!314814 (= e!196018 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!314815 () Bool)

(assert (=> b!314815 (= e!196016 (bvsge (x!31405 lt!154045) #b01111111111111111111111111111110))))

(declare-fun b!314816 () Bool)

(declare-fun e!196019 () Bool)

(assert (=> b!314816 (= e!196016 e!196019)))

(declare-fun res!170554 () Bool)

(assert (=> b!314816 (= res!170554 (and ((_ is Intermediate!2758) lt!154045) (not (undefined!3570 lt!154045)) (bvslt (x!31405 lt!154045) #b01111111111111111111111111111110) (bvsge (x!31405 lt!154045) #b00000000000000000000000000000000) (bvsge (x!31405 lt!154045) #b00000000000000000000000000000000)))))

(assert (=> b!314816 (=> (not res!170554) (not e!196019))))

(declare-fun b!314817 () Bool)

(assert (=> b!314817 (and (bvsge (index!13210 lt!154045) #b00000000000000000000000000000000) (bvslt (index!13210 lt!154045) (size!7959 a!3293)))))

(declare-fun res!170555 () Bool)

(assert (=> b!314817 (= res!170555 (= (select (arr!7607 a!3293) (index!13210 lt!154045)) k0!2441))))

(declare-fun e!196020 () Bool)

(assert (=> b!314817 (=> res!170555 e!196020)))

(assert (=> b!314817 (= e!196019 e!196020)))

(declare-fun b!314818 () Bool)

(assert (=> b!314818 (and (bvsge (index!13210 lt!154045) #b00000000000000000000000000000000) (bvslt (index!13210 lt!154045) (size!7959 a!3293)))))

(assert (=> b!314818 (= e!196020 (= (select (arr!7607 a!3293) (index!13210 lt!154045)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314819 () Bool)

(assert (=> b!314819 (and (bvsge (index!13210 lt!154045) #b00000000000000000000000000000000) (bvslt (index!13210 lt!154045) (size!7959 a!3293)))))

(declare-fun res!170556 () Bool)

(assert (=> b!314819 (= res!170556 (= (select (arr!7607 a!3293) (index!13210 lt!154045)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314819 (=> res!170556 e!196020)))

(declare-fun b!314820 () Bool)

(assert (=> b!314820 (= e!196017 (Intermediate!2758 true (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(assert (= (and d!68717 c!49745) b!314820))

(assert (= (and d!68717 (not c!49745)) b!314812))

(assert (= (and b!314812 c!49744) b!314813))

(assert (= (and b!314812 (not c!49744)) b!314814))

(assert (= (and d!68717 c!49743) b!314815))

(assert (= (and d!68717 (not c!49743)) b!314816))

(assert (= (and b!314816 res!170554) b!314817))

(assert (= (and b!314817 (not res!170555)) b!314819))

(assert (= (and b!314819 (not res!170556)) b!314818))

(declare-fun m!324265 () Bool)

(assert (=> b!314817 m!324265))

(assert (=> d!68717 m!324211))

(declare-fun m!324267 () Bool)

(assert (=> d!68717 m!324267))

(assert (=> d!68717 m!324191))

(assert (=> b!314819 m!324265))

(assert (=> b!314818 m!324265))

(assert (=> b!314814 m!324211))

(declare-fun m!324269 () Bool)

(assert (=> b!314814 m!324269))

(assert (=> b!314814 m!324269))

(declare-fun m!324271 () Bool)

(assert (=> b!314814 m!324271))

(assert (=> b!314739 d!68717))

(declare-fun d!68721 () Bool)

(declare-fun lt!154060 () (_ BitVec 32))

(declare-fun lt!154059 () (_ BitVec 32))

(assert (=> d!68721 (= lt!154060 (bvmul (bvxor lt!154059 (bvlshr lt!154059 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68721 (= lt!154059 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68721 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!170557 (let ((h!5384 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31409 (bvmul (bvxor h!5384 (bvlshr h!5384 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31409 (bvlshr x!31409 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!170557 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!170557 #b00000000000000000000000000000000))))))

(assert (=> d!68721 (= (toIndex!0 k0!2441 mask!3709) (bvand (bvxor lt!154060 (bvlshr lt!154060 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!314739 d!68721))

(declare-fun bm!25982 () Bool)

(declare-fun call!25985 () Bool)

(assert (=> bm!25982 (= call!25985 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun d!68723 () Bool)

(declare-fun res!170569 () Bool)

(declare-fun e!196042 () Bool)

(assert (=> d!68723 (=> res!170569 e!196042)))

(assert (=> d!68723 (= res!170569 (bvsge #b00000000000000000000000000000000 (size!7959 a!3293)))))

(assert (=> d!68723 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!196042)))

(declare-fun b!314849 () Bool)

(declare-fun e!196041 () Bool)

(assert (=> b!314849 (= e!196041 call!25985)))

(declare-fun b!314850 () Bool)

(declare-fun e!196040 () Bool)

(assert (=> b!314850 (= e!196040 call!25985)))

(declare-fun b!314851 () Bool)

(assert (=> b!314851 (= e!196040 e!196041)))

(declare-fun lt!154072 () (_ BitVec 64))

(assert (=> b!314851 (= lt!154072 (select (arr!7607 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9692 0))(
  ( (Unit!9693) )
))
(declare-fun lt!154071 () Unit!9692)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16072 (_ BitVec 64) (_ BitVec 32)) Unit!9692)

(assert (=> b!314851 (= lt!154071 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!154072 #b00000000000000000000000000000000))))

(assert (=> b!314851 (arrayContainsKey!0 a!3293 lt!154072 #b00000000000000000000000000000000)))

(declare-fun lt!154073 () Unit!9692)

(assert (=> b!314851 (= lt!154073 lt!154071)))

(declare-fun res!170568 () Bool)

(assert (=> b!314851 (= res!170568 (= (seekEntryOrOpen!0 (select (arr!7607 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2758 #b00000000000000000000000000000000)))))

(assert (=> b!314851 (=> (not res!170568) (not e!196041))))

(declare-fun b!314852 () Bool)

(assert (=> b!314852 (= e!196042 e!196040)))

(declare-fun c!49755 () Bool)

(assert (=> b!314852 (= c!49755 (validKeyInArray!0 (select (arr!7607 a!3293) #b00000000000000000000000000000000)))))

(assert (= (and d!68723 (not res!170569)) b!314852))

(assert (= (and b!314852 c!49755) b!314851))

(assert (= (and b!314852 (not c!49755)) b!314850))

(assert (= (and b!314851 res!170568) b!314849))

(assert (= (or b!314849 b!314850) bm!25982))

(declare-fun m!324285 () Bool)

(assert (=> bm!25982 m!324285))

(declare-fun m!324287 () Bool)

(assert (=> b!314851 m!324287))

(declare-fun m!324289 () Bool)

(assert (=> b!314851 m!324289))

(declare-fun m!324291 () Bool)

(assert (=> b!314851 m!324291))

(assert (=> b!314851 m!324287))

(declare-fun m!324293 () Bool)

(assert (=> b!314851 m!324293))

(assert (=> b!314852 m!324287))

(assert (=> b!314852 m!324287))

(declare-fun m!324295 () Bool)

(assert (=> b!314852 m!324295))

(assert (=> b!314733 d!68723))

(declare-fun d!68727 () Bool)

(declare-fun res!170580 () Bool)

(declare-fun e!196053 () Bool)

(assert (=> d!68727 (=> res!170580 e!196053)))

(assert (=> d!68727 (= res!170580 (= (select (arr!7607 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!68727 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!196053)))

(declare-fun b!314867 () Bool)

(declare-fun e!196054 () Bool)

(assert (=> b!314867 (= e!196053 e!196054)))

(declare-fun res!170581 () Bool)

(assert (=> b!314867 (=> (not res!170581) (not e!196054))))

(assert (=> b!314867 (= res!170581 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7959 a!3293)))))

(declare-fun b!314868 () Bool)

(assert (=> b!314868 (= e!196054 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68727 (not res!170580)) b!314867))

(assert (= (and b!314867 res!170581) b!314868))

(assert (=> d!68727 m!324287))

(declare-fun m!324297 () Bool)

(assert (=> b!314868 m!324297))

(assert (=> b!314738 d!68727))

(declare-fun b!314944 () Bool)

(declare-fun lt!154114 () SeekEntryResult!2758)

(declare-fun e!196096 () SeekEntryResult!2758)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16072 (_ BitVec 32)) SeekEntryResult!2758)

(assert (=> b!314944 (= e!196096 (seekKeyOrZeroReturnVacant!0 (x!31405 lt!154114) (index!13210 lt!154114) (index!13210 lt!154114) k0!2441 a!3293 mask!3709))))

(declare-fun b!314945 () Bool)

(declare-fun e!196097 () SeekEntryResult!2758)

(assert (=> b!314945 (= e!196097 (Found!2758 (index!13210 lt!154114)))))

(declare-fun b!314946 () Bool)

(declare-fun e!196098 () SeekEntryResult!2758)

(assert (=> b!314946 (= e!196098 Undefined!2758)))

(declare-fun b!314947 () Bool)

(assert (=> b!314947 (= e!196098 e!196097)))

(declare-fun lt!154112 () (_ BitVec 64))

(assert (=> b!314947 (= lt!154112 (select (arr!7607 a!3293) (index!13210 lt!154114)))))

(declare-fun c!49787 () Bool)

(assert (=> b!314947 (= c!49787 (= lt!154112 k0!2441))))

(declare-fun b!314948 () Bool)

(declare-fun c!49786 () Bool)

(assert (=> b!314948 (= c!49786 (= lt!154112 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314948 (= e!196097 e!196096)))

(declare-fun d!68729 () Bool)

(declare-fun lt!154113 () SeekEntryResult!2758)

(assert (=> d!68729 (and (or ((_ is Undefined!2758) lt!154113) (not ((_ is Found!2758) lt!154113)) (and (bvsge (index!13209 lt!154113) #b00000000000000000000000000000000) (bvslt (index!13209 lt!154113) (size!7959 a!3293)))) (or ((_ is Undefined!2758) lt!154113) ((_ is Found!2758) lt!154113) (not ((_ is MissingZero!2758) lt!154113)) (and (bvsge (index!13208 lt!154113) #b00000000000000000000000000000000) (bvslt (index!13208 lt!154113) (size!7959 a!3293)))) (or ((_ is Undefined!2758) lt!154113) ((_ is Found!2758) lt!154113) ((_ is MissingZero!2758) lt!154113) (not ((_ is MissingVacant!2758) lt!154113)) (and (bvsge (index!13211 lt!154113) #b00000000000000000000000000000000) (bvslt (index!13211 lt!154113) (size!7959 a!3293)))) (or ((_ is Undefined!2758) lt!154113) (ite ((_ is Found!2758) lt!154113) (= (select (arr!7607 a!3293) (index!13209 lt!154113)) k0!2441) (ite ((_ is MissingZero!2758) lt!154113) (= (select (arr!7607 a!3293) (index!13208 lt!154113)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2758) lt!154113) (= (select (arr!7607 a!3293) (index!13211 lt!154113)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68729 (= lt!154113 e!196098)))

(declare-fun c!49785 () Bool)

(assert (=> d!68729 (= c!49785 (and ((_ is Intermediate!2758) lt!154114) (undefined!3570 lt!154114)))))

(assert (=> d!68729 (= lt!154114 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!68729 (validMask!0 mask!3709)))

(assert (=> d!68729 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!154113)))

(declare-fun b!314949 () Bool)

(assert (=> b!314949 (= e!196096 (MissingZero!2758 (index!13210 lt!154114)))))

(assert (= (and d!68729 c!49785) b!314946))

(assert (= (and d!68729 (not c!49785)) b!314947))

(assert (= (and b!314947 c!49787) b!314945))

(assert (= (and b!314947 (not c!49787)) b!314948))

(assert (= (and b!314948 c!49786) b!314949))

(assert (= (and b!314948 (not c!49786)) b!314944))

(declare-fun m!324339 () Bool)

(assert (=> b!314944 m!324339))

(declare-fun m!324341 () Bool)

(assert (=> b!314947 m!324341))

(declare-fun m!324343 () Bool)

(assert (=> d!68729 m!324343))

(declare-fun m!324345 () Bool)

(assert (=> d!68729 m!324345))

(assert (=> d!68729 m!324191))

(assert (=> d!68729 m!324211))

(assert (=> d!68729 m!324213))

(assert (=> d!68729 m!324211))

(declare-fun m!324347 () Bool)

(assert (=> d!68729 m!324347))

(assert (=> b!314735 d!68729))

(declare-fun b!314954 () Bool)

(declare-fun e!196104 () SeekEntryResult!2758)

(declare-fun e!196105 () SeekEntryResult!2758)

(assert (=> b!314954 (= e!196104 e!196105)))

(declare-fun c!49789 () Bool)

(declare-fun lt!154115 () (_ BitVec 64))

(assert (=> b!314954 (= c!49789 (or (= lt!154115 k0!2441) (= (bvadd lt!154115 lt!154115) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!314955 () Bool)

(assert (=> b!314955 (= e!196105 (Intermediate!2758 false index!1781 x!1427))))

(declare-fun d!68751 () Bool)

(declare-fun e!196103 () Bool)

(assert (=> d!68751 e!196103))

(declare-fun c!49788 () Bool)

(declare-fun lt!154116 () SeekEntryResult!2758)

(assert (=> d!68751 (= c!49788 (and ((_ is Intermediate!2758) lt!154116) (undefined!3570 lt!154116)))))

(assert (=> d!68751 (= lt!154116 e!196104)))

(declare-fun c!49790 () Bool)

(assert (=> d!68751 (= c!49790 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!68751 (= lt!154115 (select (arr!7607 a!3293) index!1781))))

(assert (=> d!68751 (validMask!0 mask!3709)))

(assert (=> d!68751 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!154116)))

(declare-fun b!314956 () Bool)

(assert (=> b!314956 (= e!196105 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!314957 () Bool)

(assert (=> b!314957 (= e!196103 (bvsge (x!31405 lt!154116) #b01111111111111111111111111111110))))

(declare-fun b!314958 () Bool)

(declare-fun e!196106 () Bool)

(assert (=> b!314958 (= e!196103 e!196106)))

(declare-fun res!170609 () Bool)

(assert (=> b!314958 (= res!170609 (and ((_ is Intermediate!2758) lt!154116) (not (undefined!3570 lt!154116)) (bvslt (x!31405 lt!154116) #b01111111111111111111111111111110) (bvsge (x!31405 lt!154116) #b00000000000000000000000000000000) (bvsge (x!31405 lt!154116) x!1427)))))

(assert (=> b!314958 (=> (not res!170609) (not e!196106))))

(declare-fun b!314959 () Bool)

(assert (=> b!314959 (and (bvsge (index!13210 lt!154116) #b00000000000000000000000000000000) (bvslt (index!13210 lt!154116) (size!7959 a!3293)))))

(declare-fun res!170610 () Bool)

(assert (=> b!314959 (= res!170610 (= (select (arr!7607 a!3293) (index!13210 lt!154116)) k0!2441))))

(declare-fun e!196107 () Bool)

(assert (=> b!314959 (=> res!170610 e!196107)))

(assert (=> b!314959 (= e!196106 e!196107)))

(declare-fun b!314960 () Bool)

(assert (=> b!314960 (and (bvsge (index!13210 lt!154116) #b00000000000000000000000000000000) (bvslt (index!13210 lt!154116) (size!7959 a!3293)))))

(assert (=> b!314960 (= e!196107 (= (select (arr!7607 a!3293) (index!13210 lt!154116)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314961 () Bool)

(assert (=> b!314961 (and (bvsge (index!13210 lt!154116) #b00000000000000000000000000000000) (bvslt (index!13210 lt!154116) (size!7959 a!3293)))))

(declare-fun res!170611 () Bool)

(assert (=> b!314961 (= res!170611 (= (select (arr!7607 a!3293) (index!13210 lt!154116)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314961 (=> res!170611 e!196107)))

(declare-fun b!314962 () Bool)

(assert (=> b!314962 (= e!196104 (Intermediate!2758 true index!1781 x!1427))))

(assert (= (and d!68751 c!49790) b!314962))

(assert (= (and d!68751 (not c!49790)) b!314954))

(assert (= (and b!314954 c!49789) b!314955))

(assert (= (and b!314954 (not c!49789)) b!314956))

(assert (= (and d!68751 c!49788) b!314957))

(assert (= (and d!68751 (not c!49788)) b!314958))

(assert (= (and b!314958 res!170609) b!314959))

(assert (= (and b!314959 (not res!170610)) b!314961))

(assert (= (and b!314961 (not res!170611)) b!314960))

(declare-fun m!324351 () Bool)

(assert (=> b!314959 m!324351))

(assert (=> d!68751 m!324207))

(assert (=> d!68751 m!324191))

(assert (=> b!314961 m!324351))

(assert (=> b!314960 m!324351))

(assert (=> b!314956 m!324195))

(assert (=> b!314956 m!324195))

(declare-fun m!324353 () Bool)

(assert (=> b!314956 m!324353))

(assert (=> b!314734 d!68751))

(check-sat (not b!314868) (not b!314852) (not d!68717) (not b!314956) (not d!68703) (not b!314851) (not bm!25982) (not d!68729) (not b!314793) (not d!68695) (not b!314814) (not d!68751) (not b!314944))
(check-sat)
