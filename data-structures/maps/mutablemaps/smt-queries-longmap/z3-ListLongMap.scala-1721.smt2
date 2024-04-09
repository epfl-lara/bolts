; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31730 () Bool)

(assert start!31730)

(declare-fun b!316846 () Bool)

(declare-fun res!171785 () Bool)

(declare-fun e!197034 () Bool)

(assert (=> b!316846 (=> (not res!171785) (not e!197034))))

(declare-datatypes ((array!16150 0))(
  ( (array!16151 (arr!7640 (Array (_ BitVec 32) (_ BitVec 64))) (size!7992 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16150)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16150 (_ BitVec 32)) Bool)

(assert (=> b!316846 (= res!171785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!316847 () Bool)

(declare-fun res!171786 () Bool)

(assert (=> b!316847 (=> (not res!171786) (not e!197034))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!316847 (= res!171786 (and (= (size!7992 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7992 a!3293))))))

(declare-fun b!316848 () Bool)

(declare-fun e!197035 () Bool)

(assert (=> b!316848 (= e!197034 e!197035)))

(declare-fun res!171779 () Bool)

(assert (=> b!316848 (=> (not res!171779) (not e!197035))))

(declare-datatypes ((SeekEntryResult!2791 0))(
  ( (MissingZero!2791 (index!13340 (_ BitVec 32))) (Found!2791 (index!13341 (_ BitVec 32))) (Intermediate!2791 (undefined!3603 Bool) (index!13342 (_ BitVec 32)) (x!31562 (_ BitVec 32))) (Undefined!2791) (MissingVacant!2791 (index!13343 (_ BitVec 32))) )
))
(declare-fun lt!154749 () SeekEntryResult!2791)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16150 (_ BitVec 32)) SeekEntryResult!2791)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316848 (= res!171779 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154749))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!316848 (= lt!154749 (Intermediate!2791 false resIndex!52 resX!52))))

(declare-fun lt!154751 () array!16150)

(declare-fun e!197032 () Bool)

(declare-fun lt!154748 () (_ BitVec 32))

(declare-fun b!316849 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!316849 (= e!197032 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!154751 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154748 k0!2441 lt!154751 mask!3709))))))

(assert (=> b!316849 (= lt!154751 (array!16151 (store (arr!7640 a!3293) i!1240 k0!2441) (size!7992 a!3293)))))

(declare-fun lt!154750 () SeekEntryResult!2791)

(assert (=> b!316849 (= lt!154750 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154748 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316849 (= lt!154748 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!316850 () Bool)

(declare-fun res!171781 () Bool)

(assert (=> b!316850 (=> (not res!171781) (not e!197034))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16150 (_ BitVec 32)) SeekEntryResult!2791)

(assert (=> b!316850 (= res!171781 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2791 i!1240)))))

(declare-fun b!316851 () Bool)

(declare-fun res!171778 () Bool)

(assert (=> b!316851 (=> (not res!171778) (not e!197034))))

(declare-fun arrayContainsKey!0 (array!16150 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!316851 (= res!171778 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!316852 () Bool)

(assert (=> b!316852 (= e!197035 e!197032)))

(declare-fun res!171780 () Bool)

(assert (=> b!316852 (=> (not res!171780) (not e!197032))))

(assert (=> b!316852 (= res!171780 (and (= lt!154750 lt!154749) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7640 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!316852 (= lt!154750 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!316853 () Bool)

(declare-fun res!171782 () Bool)

(assert (=> b!316853 (=> (not res!171782) (not e!197034))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!316853 (= res!171782 (validKeyInArray!0 k0!2441))))

(declare-fun res!171784 () Bool)

(assert (=> start!31730 (=> (not res!171784) (not e!197034))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31730 (= res!171784 (validMask!0 mask!3709))))

(assert (=> start!31730 e!197034))

(declare-fun array_inv!5594 (array!16150) Bool)

(assert (=> start!31730 (array_inv!5594 a!3293)))

(assert (=> start!31730 true))

(declare-fun b!316854 () Bool)

(declare-fun res!171783 () Bool)

(assert (=> b!316854 (=> (not res!171783) (not e!197035))))

(assert (=> b!316854 (= res!171783 (and (= (select (arr!7640 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7992 a!3293))))))

(assert (= (and start!31730 res!171784) b!316847))

(assert (= (and b!316847 res!171786) b!316853))

(assert (= (and b!316853 res!171782) b!316851))

(assert (= (and b!316851 res!171778) b!316850))

(assert (= (and b!316850 res!171781) b!316846))

(assert (= (and b!316846 res!171785) b!316848))

(assert (= (and b!316848 res!171779) b!316854))

(assert (= (and b!316854 res!171783) b!316852))

(assert (= (and b!316852 res!171780) b!316849))

(declare-fun m!325635 () Bool)

(assert (=> b!316852 m!325635))

(declare-fun m!325637 () Bool)

(assert (=> b!316852 m!325637))

(declare-fun m!325639 () Bool)

(assert (=> b!316846 m!325639))

(declare-fun m!325641 () Bool)

(assert (=> start!31730 m!325641))

(declare-fun m!325643 () Bool)

(assert (=> start!31730 m!325643))

(declare-fun m!325645 () Bool)

(assert (=> b!316851 m!325645))

(declare-fun m!325647 () Bool)

(assert (=> b!316854 m!325647))

(declare-fun m!325649 () Bool)

(assert (=> b!316848 m!325649))

(assert (=> b!316848 m!325649))

(declare-fun m!325651 () Bool)

(assert (=> b!316848 m!325651))

(declare-fun m!325653 () Bool)

(assert (=> b!316849 m!325653))

(declare-fun m!325655 () Bool)

(assert (=> b!316849 m!325655))

(declare-fun m!325657 () Bool)

(assert (=> b!316849 m!325657))

(declare-fun m!325659 () Bool)

(assert (=> b!316849 m!325659))

(declare-fun m!325661 () Bool)

(assert (=> b!316849 m!325661))

(declare-fun m!325663 () Bool)

(assert (=> b!316850 m!325663))

(declare-fun m!325665 () Bool)

(assert (=> b!316853 m!325665))

(check-sat (not b!316850) (not b!316846) (not b!316848) (not b!316851) (not b!316849) (not b!316853) (not start!31730) (not b!316852))
(check-sat)
(get-model)

(declare-fun b!316902 () Bool)

(declare-fun e!197063 () Bool)

(declare-fun e!197064 () Bool)

(assert (=> b!316902 (= e!197063 e!197064)))

(declare-fun c!50159 () Bool)

(assert (=> b!316902 (= c!50159 (validKeyInArray!0 (select (arr!7640 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!316903 () Bool)

(declare-fun e!197065 () Bool)

(declare-fun call!26018 () Bool)

(assert (=> b!316903 (= e!197065 call!26018)))

(declare-fun bm!26015 () Bool)

(assert (=> bm!26015 (= call!26018 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun d!68991 () Bool)

(declare-fun res!171825 () Bool)

(assert (=> d!68991 (=> res!171825 e!197063)))

(assert (=> d!68991 (= res!171825 (bvsge #b00000000000000000000000000000000 (size!7992 a!3293)))))

(assert (=> d!68991 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!197063)))

(declare-fun b!316904 () Bool)

(assert (=> b!316904 (= e!197064 e!197065)))

(declare-fun lt!154779 () (_ BitVec 64))

(assert (=> b!316904 (= lt!154779 (select (arr!7640 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9783 0))(
  ( (Unit!9784) )
))
(declare-fun lt!154780 () Unit!9783)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16150 (_ BitVec 64) (_ BitVec 32)) Unit!9783)

(assert (=> b!316904 (= lt!154780 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!154779 #b00000000000000000000000000000000))))

(assert (=> b!316904 (arrayContainsKey!0 a!3293 lt!154779 #b00000000000000000000000000000000)))

(declare-fun lt!154781 () Unit!9783)

(assert (=> b!316904 (= lt!154781 lt!154780)))

(declare-fun res!171824 () Bool)

(assert (=> b!316904 (= res!171824 (= (seekEntryOrOpen!0 (select (arr!7640 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2791 #b00000000000000000000000000000000)))))

(assert (=> b!316904 (=> (not res!171824) (not e!197065))))

(declare-fun b!316905 () Bool)

(assert (=> b!316905 (= e!197064 call!26018)))

(assert (= (and d!68991 (not res!171825)) b!316902))

(assert (= (and b!316902 c!50159) b!316904))

(assert (= (and b!316902 (not c!50159)) b!316905))

(assert (= (and b!316904 res!171824) b!316903))

(assert (= (or b!316903 b!316905) bm!26015))

(declare-fun m!325711 () Bool)

(assert (=> b!316902 m!325711))

(assert (=> b!316902 m!325711))

(declare-fun m!325713 () Bool)

(assert (=> b!316902 m!325713))

(declare-fun m!325715 () Bool)

(assert (=> bm!26015 m!325715))

(assert (=> b!316904 m!325711))

(declare-fun m!325717 () Bool)

(assert (=> b!316904 m!325717))

(declare-fun m!325719 () Bool)

(assert (=> b!316904 m!325719))

(assert (=> b!316904 m!325711))

(declare-fun m!325721 () Bool)

(assert (=> b!316904 m!325721))

(assert (=> b!316846 d!68991))

(declare-fun d!68995 () Bool)

(assert (=> d!68995 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31730 d!68995))

(declare-fun d!68999 () Bool)

(assert (=> d!68999 (= (array_inv!5594 a!3293) (bvsge (size!7992 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31730 d!68999))

(declare-fun d!69001 () Bool)

(declare-fun res!171830 () Bool)

(declare-fun e!197070 () Bool)

(assert (=> d!69001 (=> res!171830 e!197070)))

(assert (=> d!69001 (= res!171830 (= (select (arr!7640 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!69001 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!197070)))

(declare-fun b!316910 () Bool)

(declare-fun e!197071 () Bool)

(assert (=> b!316910 (= e!197070 e!197071)))

(declare-fun res!171831 () Bool)

(assert (=> b!316910 (=> (not res!171831) (not e!197071))))

(assert (=> b!316910 (= res!171831 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7992 a!3293)))))

(declare-fun b!316911 () Bool)

(assert (=> b!316911 (= e!197071 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69001 (not res!171830)) b!316910))

(assert (= (and b!316910 res!171831) b!316911))

(assert (=> d!69001 m!325711))

(declare-fun m!325723 () Bool)

(assert (=> b!316911 m!325723))

(assert (=> b!316851 d!69001))

(declare-fun d!69003 () Bool)

(assert (=> d!69003 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!316853 d!69003))

(declare-fun b!317008 () Bool)

(declare-fun e!197128 () Bool)

(declare-fun e!197127 () Bool)

(assert (=> b!317008 (= e!197128 e!197127)))

(declare-fun res!171863 () Bool)

(declare-fun lt!154811 () SeekEntryResult!2791)

(get-info :version)

(assert (=> b!317008 (= res!171863 (and ((_ is Intermediate!2791) lt!154811) (not (undefined!3603 lt!154811)) (bvslt (x!31562 lt!154811) #b01111111111111111111111111111110) (bvsge (x!31562 lt!154811) #b00000000000000000000000000000000) (bvsge (x!31562 lt!154811) x!1427)))))

(assert (=> b!317008 (=> (not res!171863) (not e!197127))))

(declare-fun b!317009 () Bool)

(declare-fun e!197130 () SeekEntryResult!2791)

(assert (=> b!317009 (= e!197130 (Intermediate!2791 true index!1781 x!1427))))

(declare-fun d!69005 () Bool)

(assert (=> d!69005 e!197128))

(declare-fun c!50195 () Bool)

(assert (=> d!69005 (= c!50195 (and ((_ is Intermediate!2791) lt!154811) (undefined!3603 lt!154811)))))

(assert (=> d!69005 (= lt!154811 e!197130)))

(declare-fun c!50194 () Bool)

(assert (=> d!69005 (= c!50194 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!154810 () (_ BitVec 64))

(assert (=> d!69005 (= lt!154810 (select (arr!7640 a!3293) index!1781))))

(assert (=> d!69005 (validMask!0 mask!3709)))

(assert (=> d!69005 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!154811)))

(declare-fun b!317010 () Bool)

(assert (=> b!317010 (and (bvsge (index!13342 lt!154811) #b00000000000000000000000000000000) (bvslt (index!13342 lt!154811) (size!7992 a!3293)))))

(declare-fun res!171862 () Bool)

(assert (=> b!317010 (= res!171862 (= (select (arr!7640 a!3293) (index!13342 lt!154811)) k0!2441))))

(declare-fun e!197131 () Bool)

(assert (=> b!317010 (=> res!171862 e!197131)))

(assert (=> b!317010 (= e!197127 e!197131)))

(declare-fun b!317011 () Bool)

(assert (=> b!317011 (and (bvsge (index!13342 lt!154811) #b00000000000000000000000000000000) (bvslt (index!13342 lt!154811) (size!7992 a!3293)))))

(declare-fun res!171864 () Bool)

(assert (=> b!317011 (= res!171864 (= (select (arr!7640 a!3293) (index!13342 lt!154811)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!317011 (=> res!171864 e!197131)))

(declare-fun b!317012 () Bool)

(assert (=> b!317012 (and (bvsge (index!13342 lt!154811) #b00000000000000000000000000000000) (bvslt (index!13342 lt!154811) (size!7992 a!3293)))))

(assert (=> b!317012 (= e!197131 (= (select (arr!7640 a!3293) (index!13342 lt!154811)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!317013 () Bool)

(declare-fun e!197129 () SeekEntryResult!2791)

(assert (=> b!317013 (= e!197130 e!197129)))

(declare-fun c!50193 () Bool)

(assert (=> b!317013 (= c!50193 (or (= lt!154810 k0!2441) (= (bvadd lt!154810 lt!154810) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!317014 () Bool)

(assert (=> b!317014 (= e!197129 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!317015 () Bool)

(assert (=> b!317015 (= e!197128 (bvsge (x!31562 lt!154811) #b01111111111111111111111111111110))))

(declare-fun b!317016 () Bool)

(assert (=> b!317016 (= e!197129 (Intermediate!2791 false index!1781 x!1427))))

(assert (= (and d!69005 c!50194) b!317009))

(assert (= (and d!69005 (not c!50194)) b!317013))

(assert (= (and b!317013 c!50193) b!317016))

(assert (= (and b!317013 (not c!50193)) b!317014))

(assert (= (and d!69005 c!50195) b!317015))

(assert (= (and d!69005 (not c!50195)) b!317008))

(assert (= (and b!317008 res!171863) b!317010))

(assert (= (and b!317010 (not res!171862)) b!317011))

(assert (= (and b!317011 (not res!171864)) b!317012))

(assert (=> b!317014 m!325657))

(assert (=> b!317014 m!325657))

(declare-fun m!325765 () Bool)

(assert (=> b!317014 m!325765))

(declare-fun m!325767 () Bool)

(assert (=> b!317012 m!325767))

(assert (=> d!69005 m!325635))

(assert (=> d!69005 m!325641))

(assert (=> b!317011 m!325767))

(assert (=> b!317010 m!325767))

(assert (=> b!316852 d!69005))

(declare-fun b!317025 () Bool)

(declare-fun e!197137 () Bool)

(declare-fun e!197136 () Bool)

(assert (=> b!317025 (= e!197137 e!197136)))

(declare-fun res!171866 () Bool)

(declare-fun lt!154817 () SeekEntryResult!2791)

(assert (=> b!317025 (= res!171866 (and ((_ is Intermediate!2791) lt!154817) (not (undefined!3603 lt!154817)) (bvslt (x!31562 lt!154817) #b01111111111111111111111111111110) (bvsge (x!31562 lt!154817) #b00000000000000000000000000000000) (bvsge (x!31562 lt!154817) x!1427)))))

(assert (=> b!317025 (=> (not res!171866) (not e!197136))))

(declare-fun b!317026 () Bool)

(declare-fun e!197139 () SeekEntryResult!2791)

(assert (=> b!317026 (= e!197139 (Intermediate!2791 true index!1781 x!1427))))

(declare-fun d!69025 () Bool)

(assert (=> d!69025 e!197137))

(declare-fun c!50202 () Bool)

(assert (=> d!69025 (= c!50202 (and ((_ is Intermediate!2791) lt!154817) (undefined!3603 lt!154817)))))

(assert (=> d!69025 (= lt!154817 e!197139)))

(declare-fun c!50201 () Bool)

(assert (=> d!69025 (= c!50201 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!154816 () (_ BitVec 64))

(assert (=> d!69025 (= lt!154816 (select (arr!7640 lt!154751) index!1781))))

(assert (=> d!69025 (validMask!0 mask!3709)))

(assert (=> d!69025 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!154751 mask!3709) lt!154817)))

(declare-fun b!317027 () Bool)

(assert (=> b!317027 (and (bvsge (index!13342 lt!154817) #b00000000000000000000000000000000) (bvslt (index!13342 lt!154817) (size!7992 lt!154751)))))

(declare-fun res!171865 () Bool)

(assert (=> b!317027 (= res!171865 (= (select (arr!7640 lt!154751) (index!13342 lt!154817)) k0!2441))))

(declare-fun e!197140 () Bool)

(assert (=> b!317027 (=> res!171865 e!197140)))

(assert (=> b!317027 (= e!197136 e!197140)))

(declare-fun b!317028 () Bool)

(assert (=> b!317028 (and (bvsge (index!13342 lt!154817) #b00000000000000000000000000000000) (bvslt (index!13342 lt!154817) (size!7992 lt!154751)))))

(declare-fun res!171867 () Bool)

(assert (=> b!317028 (= res!171867 (= (select (arr!7640 lt!154751) (index!13342 lt!154817)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!317028 (=> res!171867 e!197140)))

(declare-fun b!317029 () Bool)

(assert (=> b!317029 (and (bvsge (index!13342 lt!154817) #b00000000000000000000000000000000) (bvslt (index!13342 lt!154817) (size!7992 lt!154751)))))

(assert (=> b!317029 (= e!197140 (= (select (arr!7640 lt!154751) (index!13342 lt!154817)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!317030 () Bool)

(declare-fun e!197138 () SeekEntryResult!2791)

(assert (=> b!317030 (= e!197139 e!197138)))

(declare-fun c!50200 () Bool)

(assert (=> b!317030 (= c!50200 (or (= lt!154816 k0!2441) (= (bvadd lt!154816 lt!154816) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!317031 () Bool)

(assert (=> b!317031 (= e!197138 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 lt!154751 mask!3709))))

(declare-fun b!317032 () Bool)

(assert (=> b!317032 (= e!197137 (bvsge (x!31562 lt!154817) #b01111111111111111111111111111110))))

(declare-fun b!317033 () Bool)

(assert (=> b!317033 (= e!197138 (Intermediate!2791 false index!1781 x!1427))))

(assert (= (and d!69025 c!50201) b!317026))

(assert (= (and d!69025 (not c!50201)) b!317030))

(assert (= (and b!317030 c!50200) b!317033))

(assert (= (and b!317030 (not c!50200)) b!317031))

(assert (= (and d!69025 c!50202) b!317032))

(assert (= (and d!69025 (not c!50202)) b!317025))

(assert (= (and b!317025 res!171866) b!317027))

(assert (= (and b!317027 (not res!171865)) b!317028))

(assert (= (and b!317028 (not res!171867)) b!317029))

(assert (=> b!317031 m!325657))

(assert (=> b!317031 m!325657))

(declare-fun m!325769 () Bool)

(assert (=> b!317031 m!325769))

(declare-fun m!325771 () Bool)

(assert (=> b!317029 m!325771))

(declare-fun m!325773 () Bool)

(assert (=> d!69025 m!325773))

(assert (=> d!69025 m!325641))

(assert (=> b!317028 m!325771))

(assert (=> b!317027 m!325771))

(assert (=> b!316849 d!69025))

(declare-fun b!317040 () Bool)

(declare-fun e!197146 () Bool)

(declare-fun e!197145 () Bool)

(assert (=> b!317040 (= e!197146 e!197145)))

(declare-fun res!171871 () Bool)

(declare-fun lt!154819 () SeekEntryResult!2791)

(assert (=> b!317040 (= res!171871 (and ((_ is Intermediate!2791) lt!154819) (not (undefined!3603 lt!154819)) (bvslt (x!31562 lt!154819) #b01111111111111111111111111111110) (bvsge (x!31562 lt!154819) #b00000000000000000000000000000000) (bvsge (x!31562 lt!154819) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!317040 (=> (not res!171871) (not e!197145))))

(declare-fun b!317041 () Bool)

(declare-fun e!197148 () SeekEntryResult!2791)

(assert (=> b!317041 (= e!197148 (Intermediate!2791 true lt!154748 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun d!69027 () Bool)

(assert (=> d!69027 e!197146))

(declare-fun c!50207 () Bool)

(assert (=> d!69027 (= c!50207 (and ((_ is Intermediate!2791) lt!154819) (undefined!3603 lt!154819)))))

(assert (=> d!69027 (= lt!154819 e!197148)))

(declare-fun c!50206 () Bool)

(assert (=> d!69027 (= c!50206 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!154818 () (_ BitVec 64))

(assert (=> d!69027 (= lt!154818 (select (arr!7640 lt!154751) lt!154748))))

(assert (=> d!69027 (validMask!0 mask!3709)))

(assert (=> d!69027 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154748 k0!2441 lt!154751 mask!3709) lt!154819)))

(declare-fun b!317042 () Bool)

(assert (=> b!317042 (and (bvsge (index!13342 lt!154819) #b00000000000000000000000000000000) (bvslt (index!13342 lt!154819) (size!7992 lt!154751)))))

(declare-fun res!171870 () Bool)

(assert (=> b!317042 (= res!171870 (= (select (arr!7640 lt!154751) (index!13342 lt!154819)) k0!2441))))

(declare-fun e!197149 () Bool)

(assert (=> b!317042 (=> res!171870 e!197149)))

(assert (=> b!317042 (= e!197145 e!197149)))

(declare-fun b!317043 () Bool)

(assert (=> b!317043 (and (bvsge (index!13342 lt!154819) #b00000000000000000000000000000000) (bvslt (index!13342 lt!154819) (size!7992 lt!154751)))))

(declare-fun res!171872 () Bool)

(assert (=> b!317043 (= res!171872 (= (select (arr!7640 lt!154751) (index!13342 lt!154819)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!317043 (=> res!171872 e!197149)))

(declare-fun b!317044 () Bool)

(assert (=> b!317044 (and (bvsge (index!13342 lt!154819) #b00000000000000000000000000000000) (bvslt (index!13342 lt!154819) (size!7992 lt!154751)))))

(assert (=> b!317044 (= e!197149 (= (select (arr!7640 lt!154751) (index!13342 lt!154819)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!317045 () Bool)

(declare-fun e!197147 () SeekEntryResult!2791)

(assert (=> b!317045 (= e!197148 e!197147)))

(declare-fun c!50205 () Bool)

(assert (=> b!317045 (= c!50205 (or (= lt!154818 k0!2441) (= (bvadd lt!154818 lt!154818) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!317046 () Bool)

(assert (=> b!317046 (= e!197147 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 lt!154748 (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k0!2441 lt!154751 mask!3709))))

(declare-fun b!317047 () Bool)

(assert (=> b!317047 (= e!197146 (bvsge (x!31562 lt!154819) #b01111111111111111111111111111110))))

(declare-fun b!317048 () Bool)

(assert (=> b!317048 (= e!197147 (Intermediate!2791 false lt!154748 (bvadd #b00000000000000000000000000000001 x!1427)))))

(assert (= (and d!69027 c!50206) b!317041))

(assert (= (and d!69027 (not c!50206)) b!317045))

(assert (= (and b!317045 c!50205) b!317048))

(assert (= (and b!317045 (not c!50205)) b!317046))

(assert (= (and d!69027 c!50207) b!317047))

(assert (= (and d!69027 (not c!50207)) b!317040))

(assert (= (and b!317040 res!171871) b!317042))

(assert (= (and b!317042 (not res!171870)) b!317043))

(assert (= (and b!317043 (not res!171872)) b!317044))

(declare-fun m!325775 () Bool)

(assert (=> b!317046 m!325775))

(assert (=> b!317046 m!325775))

(declare-fun m!325777 () Bool)

(assert (=> b!317046 m!325777))

(declare-fun m!325779 () Bool)

(assert (=> b!317044 m!325779))

(declare-fun m!325781 () Bool)

(assert (=> d!69027 m!325781))

(assert (=> d!69027 m!325641))

(assert (=> b!317043 m!325779))

(assert (=> b!317042 m!325779))

(assert (=> b!316849 d!69027))

(declare-fun b!317053 () Bool)

(declare-fun e!197153 () Bool)

(declare-fun e!197152 () Bool)

(assert (=> b!317053 (= e!197153 e!197152)))

(declare-fun res!171878 () Bool)

(declare-fun lt!154821 () SeekEntryResult!2791)

(assert (=> b!317053 (= res!171878 (and ((_ is Intermediate!2791) lt!154821) (not (undefined!3603 lt!154821)) (bvslt (x!31562 lt!154821) #b01111111111111111111111111111110) (bvsge (x!31562 lt!154821) #b00000000000000000000000000000000) (bvsge (x!31562 lt!154821) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!317053 (=> (not res!171878) (not e!197152))))

(declare-fun b!317054 () Bool)

(declare-fun e!197155 () SeekEntryResult!2791)

(assert (=> b!317054 (= e!197155 (Intermediate!2791 true lt!154748 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun d!69029 () Bool)

(assert (=> d!69029 e!197153))

(declare-fun c!50210 () Bool)

(assert (=> d!69029 (= c!50210 (and ((_ is Intermediate!2791) lt!154821) (undefined!3603 lt!154821)))))

(assert (=> d!69029 (= lt!154821 e!197155)))

(declare-fun c!50209 () Bool)

(assert (=> d!69029 (= c!50209 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!154820 () (_ BitVec 64))

(assert (=> d!69029 (= lt!154820 (select (arr!7640 a!3293) lt!154748))))

(assert (=> d!69029 (validMask!0 mask!3709)))

(assert (=> d!69029 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154748 k0!2441 a!3293 mask!3709) lt!154821)))

(declare-fun b!317055 () Bool)

(assert (=> b!317055 (and (bvsge (index!13342 lt!154821) #b00000000000000000000000000000000) (bvslt (index!13342 lt!154821) (size!7992 a!3293)))))

(declare-fun res!171877 () Bool)

(assert (=> b!317055 (= res!171877 (= (select (arr!7640 a!3293) (index!13342 lt!154821)) k0!2441))))

(declare-fun e!197156 () Bool)

(assert (=> b!317055 (=> res!171877 e!197156)))

(assert (=> b!317055 (= e!197152 e!197156)))

(declare-fun b!317056 () Bool)

(assert (=> b!317056 (and (bvsge (index!13342 lt!154821) #b00000000000000000000000000000000) (bvslt (index!13342 lt!154821) (size!7992 a!3293)))))

(declare-fun res!171879 () Bool)

(assert (=> b!317056 (= res!171879 (= (select (arr!7640 a!3293) (index!13342 lt!154821)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!317056 (=> res!171879 e!197156)))

(declare-fun b!317057 () Bool)

(assert (=> b!317057 (and (bvsge (index!13342 lt!154821) #b00000000000000000000000000000000) (bvslt (index!13342 lt!154821) (size!7992 a!3293)))))

(assert (=> b!317057 (= e!197156 (= (select (arr!7640 a!3293) (index!13342 lt!154821)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!317058 () Bool)

(declare-fun e!197154 () SeekEntryResult!2791)

(assert (=> b!317058 (= e!197155 e!197154)))

(declare-fun c!50208 () Bool)

(assert (=> b!317058 (= c!50208 (or (= lt!154820 k0!2441) (= (bvadd lt!154820 lt!154820) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!317059 () Bool)

(assert (=> b!317059 (= e!197154 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 lt!154748 (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!317060 () Bool)

(assert (=> b!317060 (= e!197153 (bvsge (x!31562 lt!154821) #b01111111111111111111111111111110))))

(declare-fun b!317061 () Bool)

(assert (=> b!317061 (= e!197154 (Intermediate!2791 false lt!154748 (bvadd #b00000000000000000000000000000001 x!1427)))))

(assert (= (and d!69029 c!50209) b!317054))

(assert (= (and d!69029 (not c!50209)) b!317058))

(assert (= (and b!317058 c!50208) b!317061))

(assert (= (and b!317058 (not c!50208)) b!317059))

(assert (= (and d!69029 c!50210) b!317060))

(assert (= (and d!69029 (not c!50210)) b!317053))

(assert (= (and b!317053 res!171878) b!317055))

(assert (= (and b!317055 (not res!171877)) b!317056))

(assert (= (and b!317056 (not res!171879)) b!317057))

(assert (=> b!317059 m!325775))

(assert (=> b!317059 m!325775))

(declare-fun m!325783 () Bool)

(assert (=> b!317059 m!325783))

(declare-fun m!325785 () Bool)

(assert (=> b!317057 m!325785))

(declare-fun m!325787 () Bool)

(assert (=> d!69029 m!325787))

(assert (=> d!69029 m!325641))

(assert (=> b!317056 m!325785))

(assert (=> b!317055 m!325785))

(assert (=> b!316849 d!69029))

(declare-fun d!69031 () Bool)

(declare-fun lt!154826 () (_ BitVec 32))

(assert (=> d!69031 (and (bvsge lt!154826 #b00000000000000000000000000000000) (bvslt lt!154826 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69031 (= lt!154826 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!69031 (validMask!0 mask!3709)))

(assert (=> d!69031 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!154826)))

(declare-fun bs!11060 () Bool)

(assert (= bs!11060 d!69031))

(declare-fun m!325789 () Bool)

(assert (=> bs!11060 m!325789))

(assert (=> bs!11060 m!325641))

(assert (=> b!316849 d!69031))

(declare-fun b!317071 () Bool)

(declare-fun e!197163 () Bool)

(declare-fun e!197162 () Bool)

(assert (=> b!317071 (= e!197163 e!197162)))

(declare-fun res!171884 () Bool)

(declare-fun lt!154828 () SeekEntryResult!2791)

(assert (=> b!317071 (= res!171884 (and ((_ is Intermediate!2791) lt!154828) (not (undefined!3603 lt!154828)) (bvslt (x!31562 lt!154828) #b01111111111111111111111111111110) (bvsge (x!31562 lt!154828) #b00000000000000000000000000000000) (bvsge (x!31562 lt!154828) #b00000000000000000000000000000000)))))

(assert (=> b!317071 (=> (not res!171884) (not e!197162))))

(declare-fun b!317072 () Bool)

(declare-fun e!197165 () SeekEntryResult!2791)

(assert (=> b!317072 (= e!197165 (Intermediate!2791 true (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun d!69033 () Bool)

(assert (=> d!69033 e!197163))

(declare-fun c!50216 () Bool)

(assert (=> d!69033 (= c!50216 (and ((_ is Intermediate!2791) lt!154828) (undefined!3603 lt!154828)))))

(assert (=> d!69033 (= lt!154828 e!197165)))

(declare-fun c!50215 () Bool)

(assert (=> d!69033 (= c!50215 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!154827 () (_ BitVec 64))

(assert (=> d!69033 (= lt!154827 (select (arr!7640 a!3293) (toIndex!0 k0!2441 mask!3709)))))

(assert (=> d!69033 (validMask!0 mask!3709)))

(assert (=> d!69033 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154828)))

(declare-fun b!317073 () Bool)

(assert (=> b!317073 (and (bvsge (index!13342 lt!154828) #b00000000000000000000000000000000) (bvslt (index!13342 lt!154828) (size!7992 a!3293)))))

(declare-fun res!171883 () Bool)

(assert (=> b!317073 (= res!171883 (= (select (arr!7640 a!3293) (index!13342 lt!154828)) k0!2441))))

(declare-fun e!197166 () Bool)

(assert (=> b!317073 (=> res!171883 e!197166)))

(assert (=> b!317073 (= e!197162 e!197166)))

(declare-fun b!317074 () Bool)

(assert (=> b!317074 (and (bvsge (index!13342 lt!154828) #b00000000000000000000000000000000) (bvslt (index!13342 lt!154828) (size!7992 a!3293)))))

(declare-fun res!171885 () Bool)

(assert (=> b!317074 (= res!171885 (= (select (arr!7640 a!3293) (index!13342 lt!154828)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!317074 (=> res!171885 e!197166)))

(declare-fun b!317075 () Bool)

(assert (=> b!317075 (and (bvsge (index!13342 lt!154828) #b00000000000000000000000000000000) (bvslt (index!13342 lt!154828) (size!7992 a!3293)))))

(assert (=> b!317075 (= e!197166 (= (select (arr!7640 a!3293) (index!13342 lt!154828)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!317076 () Bool)

(declare-fun e!197164 () SeekEntryResult!2791)

(assert (=> b!317076 (= e!197165 e!197164)))

(declare-fun c!50214 () Bool)

(assert (=> b!317076 (= c!50214 (or (= lt!154827 k0!2441) (= (bvadd lt!154827 lt!154827) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!317077 () Bool)

(assert (=> b!317077 (= e!197164 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!317078 () Bool)

(assert (=> b!317078 (= e!197163 (bvsge (x!31562 lt!154828) #b01111111111111111111111111111110))))

(declare-fun b!317079 () Bool)

(assert (=> b!317079 (= e!197164 (Intermediate!2791 false (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(assert (= (and d!69033 c!50215) b!317072))

(assert (= (and d!69033 (not c!50215)) b!317076))

(assert (= (and b!317076 c!50214) b!317079))

(assert (= (and b!317076 (not c!50214)) b!317077))

(assert (= (and d!69033 c!50216) b!317078))

(assert (= (and d!69033 (not c!50216)) b!317071))

(assert (= (and b!317071 res!171884) b!317073))

(assert (= (and b!317073 (not res!171883)) b!317074))

(assert (= (and b!317074 (not res!171885)) b!317075))

(assert (=> b!317077 m!325649))

(declare-fun m!325799 () Bool)

(assert (=> b!317077 m!325799))

(assert (=> b!317077 m!325799))

(declare-fun m!325801 () Bool)

(assert (=> b!317077 m!325801))

(declare-fun m!325803 () Bool)

(assert (=> b!317075 m!325803))

(assert (=> d!69033 m!325649))

(declare-fun m!325805 () Bool)

(assert (=> d!69033 m!325805))

(assert (=> d!69033 m!325641))

(assert (=> b!317074 m!325803))

(assert (=> b!317073 m!325803))

(assert (=> b!316848 d!69033))

(declare-fun d!69037 () Bool)

(declare-fun lt!154842 () (_ BitVec 32))

(declare-fun lt!154841 () (_ BitVec 32))

(assert (=> d!69037 (= lt!154842 (bvmul (bvxor lt!154841 (bvlshr lt!154841 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69037 (= lt!154841 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69037 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!171887 (let ((h!5397 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31570 (bvmul (bvxor h!5397 (bvlshr h!5397 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31570 (bvlshr x!31570 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!171887 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!171887 #b00000000000000000000000000000000))))))

(assert (=> d!69037 (= (toIndex!0 k0!2441 mask!3709) (bvand (bvxor lt!154842 (bvlshr lt!154842 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!316848 d!69037))

(declare-fun b!317173 () Bool)

(declare-fun e!197222 () SeekEntryResult!2791)

(assert (=> b!317173 (= e!197222 Undefined!2791)))

(declare-fun d!69041 () Bool)

(declare-fun lt!154886 () SeekEntryResult!2791)

(assert (=> d!69041 (and (or ((_ is Undefined!2791) lt!154886) (not ((_ is Found!2791) lt!154886)) (and (bvsge (index!13341 lt!154886) #b00000000000000000000000000000000) (bvslt (index!13341 lt!154886) (size!7992 a!3293)))) (or ((_ is Undefined!2791) lt!154886) ((_ is Found!2791) lt!154886) (not ((_ is MissingZero!2791) lt!154886)) (and (bvsge (index!13340 lt!154886) #b00000000000000000000000000000000) (bvslt (index!13340 lt!154886) (size!7992 a!3293)))) (or ((_ is Undefined!2791) lt!154886) ((_ is Found!2791) lt!154886) ((_ is MissingZero!2791) lt!154886) (not ((_ is MissingVacant!2791) lt!154886)) (and (bvsge (index!13343 lt!154886) #b00000000000000000000000000000000) (bvslt (index!13343 lt!154886) (size!7992 a!3293)))) (or ((_ is Undefined!2791) lt!154886) (ite ((_ is Found!2791) lt!154886) (= (select (arr!7640 a!3293) (index!13341 lt!154886)) k0!2441) (ite ((_ is MissingZero!2791) lt!154886) (= (select (arr!7640 a!3293) (index!13340 lt!154886)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2791) lt!154886) (= (select (arr!7640 a!3293) (index!13343 lt!154886)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69041 (= lt!154886 e!197222)))

(declare-fun c!50250 () Bool)

(declare-fun lt!154884 () SeekEntryResult!2791)

(assert (=> d!69041 (= c!50250 (and ((_ is Intermediate!2791) lt!154884) (undefined!3603 lt!154884)))))

(assert (=> d!69041 (= lt!154884 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!69041 (validMask!0 mask!3709)))

(assert (=> d!69041 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!154886)))

(declare-fun b!317174 () Bool)

(declare-fun e!197224 () SeekEntryResult!2791)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16150 (_ BitVec 32)) SeekEntryResult!2791)

(assert (=> b!317174 (= e!197224 (seekKeyOrZeroReturnVacant!0 (x!31562 lt!154884) (index!13342 lt!154884) (index!13342 lt!154884) k0!2441 a!3293 mask!3709))))

(declare-fun b!317175 () Bool)

(declare-fun e!197223 () SeekEntryResult!2791)

(assert (=> b!317175 (= e!197223 (Found!2791 (index!13342 lt!154884)))))

(declare-fun b!317176 () Bool)

(assert (=> b!317176 (= e!197222 e!197223)))

(declare-fun lt!154885 () (_ BitVec 64))

(assert (=> b!317176 (= lt!154885 (select (arr!7640 a!3293) (index!13342 lt!154884)))))

(declare-fun c!50251 () Bool)

(assert (=> b!317176 (= c!50251 (= lt!154885 k0!2441))))

(declare-fun b!317177 () Bool)

(declare-fun c!50252 () Bool)

(assert (=> b!317177 (= c!50252 (= lt!154885 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!317177 (= e!197223 e!197224)))

(declare-fun b!317178 () Bool)

(assert (=> b!317178 (= e!197224 (MissingZero!2791 (index!13342 lt!154884)))))

(assert (= (and d!69041 c!50250) b!317173))

(assert (= (and d!69041 (not c!50250)) b!317176))

(assert (= (and b!317176 c!50251) b!317175))

(assert (= (and b!317176 (not c!50251)) b!317177))

(assert (= (and b!317177 c!50252) b!317178))

(assert (= (and b!317177 (not c!50252)) b!317174))

(declare-fun m!325863 () Bool)

(assert (=> d!69041 m!325863))

(assert (=> d!69041 m!325649))

(assert (=> d!69041 m!325651))

(assert (=> d!69041 m!325649))

(declare-fun m!325865 () Bool)

(assert (=> d!69041 m!325865))

(assert (=> d!69041 m!325641))

(declare-fun m!325867 () Bool)

(assert (=> d!69041 m!325867))

(declare-fun m!325869 () Bool)

(assert (=> b!317174 m!325869))

(declare-fun m!325871 () Bool)

(assert (=> b!317176 m!325871))

(assert (=> b!316850 d!69041))

(check-sat (not b!317031) (not d!69005) (not b!316902) (not d!69025) (not bm!26015) (not d!69029) (not b!317014) (not b!316911) (not b!316904) (not b!317077) (not b!317059) (not b!317174) (not d!69033) (not b!317046) (not d!69041) (not d!69027) (not d!69031))
(check-sat)
