; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30350 () Bool)

(assert start!30350)

(declare-fun b!303774 () Bool)

(declare-fun e!191016 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!150257 () (_ BitVec 32))

(assert (=> b!303774 (= e!191016 (and (bvsge mask!3709 #b00000000000000000000000000000000) (or (bvslt lt!150257 #b00000000000000000000000000000000) (bvsge lt!150257 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303774 (= lt!150257 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!303775 () Bool)

(declare-fun res!161426 () Bool)

(declare-fun e!191015 () Bool)

(assert (=> b!303775 (=> (not res!161426) (not e!191015))))

(declare-datatypes ((array!15454 0))(
  ( (array!15455 (arr!7313 (Array (_ BitVec 32) (_ BitVec 64))) (size!7665 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15454)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2464 0))(
  ( (MissingZero!2464 (index!12032 (_ BitVec 32))) (Found!2464 (index!12033 (_ BitVec 32))) (Intermediate!2464 (undefined!3276 Bool) (index!12034 (_ BitVec 32)) (x!30252 (_ BitVec 32))) (Undefined!2464) (MissingVacant!2464 (index!12035 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15454 (_ BitVec 32)) SeekEntryResult!2464)

(assert (=> b!303775 (= res!161426 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2464 i!1240)))))

(declare-fun b!303776 () Bool)

(declare-fun res!161423 () Bool)

(assert (=> b!303776 (=> (not res!161423) (not e!191016))))

(declare-fun lt!150256 () SeekEntryResult!2464)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15454 (_ BitVec 32)) SeekEntryResult!2464)

(assert (=> b!303776 (= res!161423 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150256))))

(declare-fun b!303777 () Bool)

(declare-fun res!161422 () Bool)

(assert (=> b!303777 (=> (not res!161422) (not e!191015))))

(declare-fun arrayContainsKey!0 (array!15454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303777 (= res!161422 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303778 () Bool)

(declare-fun res!161420 () Bool)

(assert (=> b!303778 (=> (not res!161420) (not e!191015))))

(assert (=> b!303778 (= res!161420 (and (= (size!7665 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7665 a!3293))))))

(declare-fun res!161418 () Bool)

(assert (=> start!30350 (=> (not res!161418) (not e!191015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30350 (= res!161418 (validMask!0 mask!3709))))

(assert (=> start!30350 e!191015))

(declare-fun array_inv!5267 (array!15454) Bool)

(assert (=> start!30350 (array_inv!5267 a!3293)))

(assert (=> start!30350 true))

(declare-fun b!303779 () Bool)

(declare-fun res!161425 () Bool)

(assert (=> b!303779 (=> (not res!161425) (not e!191015))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15454 (_ BitVec 32)) Bool)

(assert (=> b!303779 (= res!161425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303780 () Bool)

(declare-fun res!161424 () Bool)

(assert (=> b!303780 (=> (not res!161424) (not e!191016))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!303780 (= res!161424 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7313 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7313 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7313 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!303781 () Bool)

(declare-fun res!161421 () Bool)

(assert (=> b!303781 (=> (not res!161421) (not e!191016))))

(assert (=> b!303781 (= res!161421 (and (= (select (arr!7313 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7665 a!3293))))))

(declare-fun b!303782 () Bool)

(declare-fun res!161427 () Bool)

(assert (=> b!303782 (=> (not res!161427) (not e!191015))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303782 (= res!161427 (validKeyInArray!0 k0!2441))))

(declare-fun b!303783 () Bool)

(assert (=> b!303783 (= e!191015 e!191016)))

(declare-fun res!161419 () Bool)

(assert (=> b!303783 (=> (not res!161419) (not e!191016))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303783 (= res!161419 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150256))))

(assert (=> b!303783 (= lt!150256 (Intermediate!2464 false resIndex!52 resX!52))))

(assert (= (and start!30350 res!161418) b!303778))

(assert (= (and b!303778 res!161420) b!303782))

(assert (= (and b!303782 res!161427) b!303777))

(assert (= (and b!303777 res!161422) b!303775))

(assert (= (and b!303775 res!161426) b!303779))

(assert (= (and b!303779 res!161425) b!303783))

(assert (= (and b!303783 res!161419) b!303781))

(assert (= (and b!303781 res!161421) b!303776))

(assert (= (and b!303776 res!161423) b!303780))

(assert (= (and b!303780 res!161424) b!303774))

(declare-fun m!315061 () Bool)

(assert (=> b!303783 m!315061))

(assert (=> b!303783 m!315061))

(declare-fun m!315063 () Bool)

(assert (=> b!303783 m!315063))

(declare-fun m!315065 () Bool)

(assert (=> start!30350 m!315065))

(declare-fun m!315067 () Bool)

(assert (=> start!30350 m!315067))

(declare-fun m!315069 () Bool)

(assert (=> b!303779 m!315069))

(declare-fun m!315071 () Bool)

(assert (=> b!303782 m!315071))

(declare-fun m!315073 () Bool)

(assert (=> b!303780 m!315073))

(declare-fun m!315075 () Bool)

(assert (=> b!303776 m!315075))

(declare-fun m!315077 () Bool)

(assert (=> b!303781 m!315077))

(declare-fun m!315079 () Bool)

(assert (=> b!303777 m!315079))

(declare-fun m!315081 () Bool)

(assert (=> b!303774 m!315081))

(declare-fun m!315083 () Bool)

(assert (=> b!303775 m!315083))

(check-sat (not b!303777) (not b!303774) (not b!303783) (not b!303779) (not start!30350) (not b!303782) (not b!303775) (not b!303776))
(check-sat)
(get-model)

(declare-fun b!303832 () Bool)

(declare-fun e!191037 () Bool)

(declare-fun e!191040 () Bool)

(assert (=> b!303832 (= e!191037 e!191040)))

(declare-fun res!161465 () Bool)

(declare-fun lt!150271 () SeekEntryResult!2464)

(get-info :version)

(assert (=> b!303832 (= res!161465 (and ((_ is Intermediate!2464) lt!150271) (not (undefined!3276 lt!150271)) (bvslt (x!30252 lt!150271) #b01111111111111111111111111111110) (bvsge (x!30252 lt!150271) #b00000000000000000000000000000000) (bvsge (x!30252 lt!150271) x!1427)))))

(assert (=> b!303832 (=> (not res!161465) (not e!191040))))

(declare-fun b!303833 () Bool)

(assert (=> b!303833 (= e!191037 (bvsge (x!30252 lt!150271) #b01111111111111111111111111111110))))

(declare-fun b!303834 () Bool)

(assert (=> b!303834 (and (bvsge (index!12034 lt!150271) #b00000000000000000000000000000000) (bvslt (index!12034 lt!150271) (size!7665 a!3293)))))

(declare-fun res!161466 () Bool)

(assert (=> b!303834 (= res!161466 (= (select (arr!7313 a!3293) (index!12034 lt!150271)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!191039 () Bool)

(assert (=> b!303834 (=> res!161466 e!191039)))

(declare-fun e!191041 () SeekEntryResult!2464)

(declare-fun b!303835 () Bool)

(assert (=> b!303835 (= e!191041 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!303836 () Bool)

(assert (=> b!303836 (= e!191041 (Intermediate!2464 false index!1781 x!1427))))

(declare-fun d!67915 () Bool)

(assert (=> d!67915 e!191037))

(declare-fun c!48785 () Bool)

(assert (=> d!67915 (= c!48785 (and ((_ is Intermediate!2464) lt!150271) (undefined!3276 lt!150271)))))

(declare-fun e!191038 () SeekEntryResult!2464)

(assert (=> d!67915 (= lt!150271 e!191038)))

(declare-fun c!48784 () Bool)

(assert (=> d!67915 (= c!48784 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!150272 () (_ BitVec 64))

(assert (=> d!67915 (= lt!150272 (select (arr!7313 a!3293) index!1781))))

(assert (=> d!67915 (validMask!0 mask!3709)))

(assert (=> d!67915 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150271)))

(declare-fun b!303837 () Bool)

(assert (=> b!303837 (and (bvsge (index!12034 lt!150271) #b00000000000000000000000000000000) (bvslt (index!12034 lt!150271) (size!7665 a!3293)))))

(assert (=> b!303837 (= e!191039 (= (select (arr!7313 a!3293) (index!12034 lt!150271)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!303838 () Bool)

(assert (=> b!303838 (= e!191038 e!191041)))

(declare-fun c!48783 () Bool)

(assert (=> b!303838 (= c!48783 (or (= lt!150272 k0!2441) (= (bvadd lt!150272 lt!150272) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!303839 () Bool)

(assert (=> b!303839 (and (bvsge (index!12034 lt!150271) #b00000000000000000000000000000000) (bvslt (index!12034 lt!150271) (size!7665 a!3293)))))

(declare-fun res!161464 () Bool)

(assert (=> b!303839 (= res!161464 (= (select (arr!7313 a!3293) (index!12034 lt!150271)) k0!2441))))

(assert (=> b!303839 (=> res!161464 e!191039)))

(assert (=> b!303839 (= e!191040 e!191039)))

(declare-fun b!303840 () Bool)

(assert (=> b!303840 (= e!191038 (Intermediate!2464 true index!1781 x!1427))))

(assert (= (and d!67915 c!48784) b!303840))

(assert (= (and d!67915 (not c!48784)) b!303838))

(assert (= (and b!303838 c!48783) b!303836))

(assert (= (and b!303838 (not c!48783)) b!303835))

(assert (= (and d!67915 c!48785) b!303833))

(assert (= (and d!67915 (not c!48785)) b!303832))

(assert (= (and b!303832 res!161465) b!303839))

(assert (= (and b!303839 (not res!161464)) b!303834))

(assert (= (and b!303834 (not res!161466)) b!303837))

(assert (=> d!67915 m!315073))

(assert (=> d!67915 m!315065))

(assert (=> b!303835 m!315081))

(assert (=> b!303835 m!315081))

(declare-fun m!315111 () Bool)

(assert (=> b!303835 m!315111))

(declare-fun m!315113 () Bool)

(assert (=> b!303839 m!315113))

(assert (=> b!303834 m!315113))

(assert (=> b!303837 m!315113))

(assert (=> b!303776 d!67915))

(declare-fun d!67921 () Bool)

(declare-fun lt!150275 () (_ BitVec 32))

(assert (=> d!67921 (and (bvsge lt!150275 #b00000000000000000000000000000000) (bvslt lt!150275 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!67921 (= lt!150275 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!67921 (validMask!0 mask!3709)))

(assert (=> d!67921 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!150275)))

(declare-fun bs!10706 () Bool)

(assert (= bs!10706 d!67921))

(declare-fun m!315115 () Bool)

(assert (=> bs!10706 m!315115))

(assert (=> bs!10706 m!315065))

(assert (=> b!303774 d!67921))

(declare-fun d!67923 () Bool)

(declare-fun lt!150301 () SeekEntryResult!2464)

(assert (=> d!67923 (and (or ((_ is Undefined!2464) lt!150301) (not ((_ is Found!2464) lt!150301)) (and (bvsge (index!12033 lt!150301) #b00000000000000000000000000000000) (bvslt (index!12033 lt!150301) (size!7665 a!3293)))) (or ((_ is Undefined!2464) lt!150301) ((_ is Found!2464) lt!150301) (not ((_ is MissingZero!2464) lt!150301)) (and (bvsge (index!12032 lt!150301) #b00000000000000000000000000000000) (bvslt (index!12032 lt!150301) (size!7665 a!3293)))) (or ((_ is Undefined!2464) lt!150301) ((_ is Found!2464) lt!150301) ((_ is MissingZero!2464) lt!150301) (not ((_ is MissingVacant!2464) lt!150301)) (and (bvsge (index!12035 lt!150301) #b00000000000000000000000000000000) (bvslt (index!12035 lt!150301) (size!7665 a!3293)))) (or ((_ is Undefined!2464) lt!150301) (ite ((_ is Found!2464) lt!150301) (= (select (arr!7313 a!3293) (index!12033 lt!150301)) k0!2441) (ite ((_ is MissingZero!2464) lt!150301) (= (select (arr!7313 a!3293) (index!12032 lt!150301)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2464) lt!150301) (= (select (arr!7313 a!3293) (index!12035 lt!150301)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!191074 () SeekEntryResult!2464)

(assert (=> d!67923 (= lt!150301 e!191074)))

(declare-fun c!48809 () Bool)

(declare-fun lt!150303 () SeekEntryResult!2464)

(assert (=> d!67923 (= c!48809 (and ((_ is Intermediate!2464) lt!150303) (undefined!3276 lt!150303)))))

(assert (=> d!67923 (= lt!150303 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!67923 (validMask!0 mask!3709)))

(assert (=> d!67923 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!150301)))

(declare-fun b!303898 () Bool)

(declare-fun e!191075 () SeekEntryResult!2464)

(assert (=> b!303898 (= e!191075 (Found!2464 (index!12034 lt!150303)))))

(declare-fun b!303899 () Bool)

(declare-fun e!191073 () SeekEntryResult!2464)

(assert (=> b!303899 (= e!191073 (MissingZero!2464 (index!12034 lt!150303)))))

(declare-fun b!303900 () Bool)

(assert (=> b!303900 (= e!191074 Undefined!2464)))

(declare-fun b!303901 () Bool)

(assert (=> b!303901 (= e!191074 e!191075)))

(declare-fun lt!150302 () (_ BitVec 64))

(assert (=> b!303901 (= lt!150302 (select (arr!7313 a!3293) (index!12034 lt!150303)))))

(declare-fun c!48807 () Bool)

(assert (=> b!303901 (= c!48807 (= lt!150302 k0!2441))))

(declare-fun b!303902 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15454 (_ BitVec 32)) SeekEntryResult!2464)

(assert (=> b!303902 (= e!191073 (seekKeyOrZeroReturnVacant!0 (x!30252 lt!150303) (index!12034 lt!150303) (index!12034 lt!150303) k0!2441 a!3293 mask!3709))))

(declare-fun b!303903 () Bool)

(declare-fun c!48808 () Bool)

(assert (=> b!303903 (= c!48808 (= lt!150302 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!303903 (= e!191075 e!191073)))

(assert (= (and d!67923 c!48809) b!303900))

(assert (= (and d!67923 (not c!48809)) b!303901))

(assert (= (and b!303901 c!48807) b!303898))

(assert (= (and b!303901 (not c!48807)) b!303903))

(assert (= (and b!303903 c!48808) b!303899))

(assert (= (and b!303903 (not c!48808)) b!303902))

(assert (=> d!67923 m!315061))

(declare-fun m!315127 () Bool)

(assert (=> d!67923 m!315127))

(assert (=> d!67923 m!315065))

(declare-fun m!315129 () Bool)

(assert (=> d!67923 m!315129))

(assert (=> d!67923 m!315061))

(assert (=> d!67923 m!315063))

(declare-fun m!315131 () Bool)

(assert (=> d!67923 m!315131))

(declare-fun m!315133 () Bool)

(assert (=> b!303901 m!315133))

(declare-fun m!315135 () Bool)

(assert (=> b!303902 m!315135))

(assert (=> b!303775 d!67923))

(declare-fun b!303951 () Bool)

(declare-fun e!191111 () Bool)

(declare-fun call!25889 () Bool)

(assert (=> b!303951 (= e!191111 call!25889)))

(declare-fun b!303952 () Bool)

(declare-fun e!191109 () Bool)

(assert (=> b!303952 (= e!191109 e!191111)))

(declare-fun c!48821 () Bool)

(assert (=> b!303952 (= c!48821 (validKeyInArray!0 (select (arr!7313 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!303953 () Bool)

(declare-fun e!191110 () Bool)

(assert (=> b!303953 (= e!191111 e!191110)))

(declare-fun lt!150316 () (_ BitVec 64))

(assert (=> b!303953 (= lt!150316 (select (arr!7313 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9378 0))(
  ( (Unit!9379) )
))
(declare-fun lt!150318 () Unit!9378)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15454 (_ BitVec 64) (_ BitVec 32)) Unit!9378)

(assert (=> b!303953 (= lt!150318 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!150316 #b00000000000000000000000000000000))))

(assert (=> b!303953 (arrayContainsKey!0 a!3293 lt!150316 #b00000000000000000000000000000000)))

(declare-fun lt!150317 () Unit!9378)

(assert (=> b!303953 (= lt!150317 lt!150318)))

(declare-fun res!161510 () Bool)

(assert (=> b!303953 (= res!161510 (= (seekEntryOrOpen!0 (select (arr!7313 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2464 #b00000000000000000000000000000000)))))

(assert (=> b!303953 (=> (not res!161510) (not e!191110))))

(declare-fun b!303954 () Bool)

(assert (=> b!303954 (= e!191110 call!25889)))

(declare-fun d!67933 () Bool)

(declare-fun res!161509 () Bool)

(assert (=> d!67933 (=> res!161509 e!191109)))

(assert (=> d!67933 (= res!161509 (bvsge #b00000000000000000000000000000000 (size!7665 a!3293)))))

(assert (=> d!67933 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!191109)))

(declare-fun bm!25886 () Bool)

(assert (=> bm!25886 (= call!25889 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(assert (= (and d!67933 (not res!161509)) b!303952))

(assert (= (and b!303952 c!48821) b!303953))

(assert (= (and b!303952 (not c!48821)) b!303951))

(assert (= (and b!303953 res!161510) b!303954))

(assert (= (or b!303954 b!303951) bm!25886))

(declare-fun m!315161 () Bool)

(assert (=> b!303952 m!315161))

(assert (=> b!303952 m!315161))

(declare-fun m!315163 () Bool)

(assert (=> b!303952 m!315163))

(assert (=> b!303953 m!315161))

(declare-fun m!315165 () Bool)

(assert (=> b!303953 m!315165))

(declare-fun m!315167 () Bool)

(assert (=> b!303953 m!315167))

(assert (=> b!303953 m!315161))

(declare-fun m!315169 () Bool)

(assert (=> b!303953 m!315169))

(declare-fun m!315171 () Bool)

(assert (=> bm!25886 m!315171))

(assert (=> b!303779 d!67933))

(declare-fun d!67947 () Bool)

(assert (=> d!67947 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!303782 d!67947))

(declare-fun d!67949 () Bool)

(declare-fun res!161515 () Bool)

(declare-fun e!191116 () Bool)

(assert (=> d!67949 (=> res!161515 e!191116)))

(assert (=> d!67949 (= res!161515 (= (select (arr!7313 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!67949 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!191116)))

(declare-fun b!303959 () Bool)

(declare-fun e!191117 () Bool)

(assert (=> b!303959 (= e!191116 e!191117)))

(declare-fun res!161516 () Bool)

(assert (=> b!303959 (=> (not res!161516) (not e!191117))))

(assert (=> b!303959 (= res!161516 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7665 a!3293)))))

(declare-fun b!303960 () Bool)

(assert (=> b!303960 (= e!191117 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67949 (not res!161515)) b!303959))

(assert (= (and b!303959 res!161516) b!303960))

(assert (=> d!67949 m!315161))

(declare-fun m!315173 () Bool)

(assert (=> b!303960 m!315173))

(assert (=> b!303777 d!67949))

(declare-fun d!67955 () Bool)

(assert (=> d!67955 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30350 d!67955))

(declare-fun d!67963 () Bool)

(assert (=> d!67963 (= (array_inv!5267 a!3293) (bvsge (size!7665 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30350 d!67963))

(declare-fun b!303961 () Bool)

(declare-fun e!191118 () Bool)

(declare-fun e!191121 () Bool)

(assert (=> b!303961 (= e!191118 e!191121)))

(declare-fun res!161518 () Bool)

(declare-fun lt!150325 () SeekEntryResult!2464)

(assert (=> b!303961 (= res!161518 (and ((_ is Intermediate!2464) lt!150325) (not (undefined!3276 lt!150325)) (bvslt (x!30252 lt!150325) #b01111111111111111111111111111110) (bvsge (x!30252 lt!150325) #b00000000000000000000000000000000) (bvsge (x!30252 lt!150325) #b00000000000000000000000000000000)))))

(assert (=> b!303961 (=> (not res!161518) (not e!191121))))

(declare-fun b!303962 () Bool)

(assert (=> b!303962 (= e!191118 (bvsge (x!30252 lt!150325) #b01111111111111111111111111111110))))

(declare-fun b!303963 () Bool)

(assert (=> b!303963 (and (bvsge (index!12034 lt!150325) #b00000000000000000000000000000000) (bvslt (index!12034 lt!150325) (size!7665 a!3293)))))

(declare-fun res!161519 () Bool)

(assert (=> b!303963 (= res!161519 (= (select (arr!7313 a!3293) (index!12034 lt!150325)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!191120 () Bool)

(assert (=> b!303963 (=> res!161519 e!191120)))

(declare-fun e!191122 () SeekEntryResult!2464)

(declare-fun b!303964 () Bool)

(assert (=> b!303964 (= e!191122 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!303965 () Bool)

(assert (=> b!303965 (= e!191122 (Intermediate!2464 false (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun d!67965 () Bool)

(assert (=> d!67965 e!191118))

(declare-fun c!48824 () Bool)

(assert (=> d!67965 (= c!48824 (and ((_ is Intermediate!2464) lt!150325) (undefined!3276 lt!150325)))))

(declare-fun e!191119 () SeekEntryResult!2464)

(assert (=> d!67965 (= lt!150325 e!191119)))

(declare-fun c!48823 () Bool)

(assert (=> d!67965 (= c!48823 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!150326 () (_ BitVec 64))

(assert (=> d!67965 (= lt!150326 (select (arr!7313 a!3293) (toIndex!0 k0!2441 mask!3709)))))

(assert (=> d!67965 (validMask!0 mask!3709)))

(assert (=> d!67965 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150325)))

(declare-fun b!303966 () Bool)

(assert (=> b!303966 (and (bvsge (index!12034 lt!150325) #b00000000000000000000000000000000) (bvslt (index!12034 lt!150325) (size!7665 a!3293)))))

(assert (=> b!303966 (= e!191120 (= (select (arr!7313 a!3293) (index!12034 lt!150325)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!303967 () Bool)

(assert (=> b!303967 (= e!191119 e!191122)))

(declare-fun c!48822 () Bool)

(assert (=> b!303967 (= c!48822 (or (= lt!150326 k0!2441) (= (bvadd lt!150326 lt!150326) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!303968 () Bool)

(assert (=> b!303968 (and (bvsge (index!12034 lt!150325) #b00000000000000000000000000000000) (bvslt (index!12034 lt!150325) (size!7665 a!3293)))))

(declare-fun res!161517 () Bool)

(assert (=> b!303968 (= res!161517 (= (select (arr!7313 a!3293) (index!12034 lt!150325)) k0!2441))))

(assert (=> b!303968 (=> res!161517 e!191120)))

(assert (=> b!303968 (= e!191121 e!191120)))

(declare-fun b!303969 () Bool)

(assert (=> b!303969 (= e!191119 (Intermediate!2464 true (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(assert (= (and d!67965 c!48823) b!303969))

(assert (= (and d!67965 (not c!48823)) b!303967))

(assert (= (and b!303967 c!48822) b!303965))

(assert (= (and b!303967 (not c!48822)) b!303964))

(assert (= (and d!67965 c!48824) b!303962))

(assert (= (and d!67965 (not c!48824)) b!303961))

(assert (= (and b!303961 res!161518) b!303968))

(assert (= (and b!303968 (not res!161517)) b!303963))

(assert (= (and b!303963 (not res!161519)) b!303966))

(assert (=> d!67965 m!315061))

(declare-fun m!315175 () Bool)

(assert (=> d!67965 m!315175))

(assert (=> d!67965 m!315065))

(assert (=> b!303964 m!315061))

(declare-fun m!315177 () Bool)

(assert (=> b!303964 m!315177))

(assert (=> b!303964 m!315177))

(declare-fun m!315179 () Bool)

(assert (=> b!303964 m!315179))

(declare-fun m!315181 () Bool)

(assert (=> b!303968 m!315181))

(assert (=> b!303963 m!315181))

(assert (=> b!303966 m!315181))

(assert (=> b!303783 d!67965))

(declare-fun d!67967 () Bool)

(declare-fun lt!150332 () (_ BitVec 32))

(declare-fun lt!150331 () (_ BitVec 32))

(assert (=> d!67967 (= lt!150332 (bvmul (bvxor lt!150331 (bvlshr lt!150331 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67967 (= lt!150331 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67967 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!161520 (let ((h!5356 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!30262 (bvmul (bvxor h!5356 (bvlshr h!5356 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!30262 (bvlshr x!30262 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!161520 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!161520 #b00000000000000000000000000000000))))))

(assert (=> d!67967 (= (toIndex!0 k0!2441 mask!3709) (bvand (bvxor lt!150332 (bvlshr lt!150332 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!303783 d!67967))

(check-sat (not d!67923) (not d!67921) (not d!67915) (not b!303964) (not b!303953) (not b!303960) (not b!303835) (not b!303952) (not bm!25886) (not b!303902) (not d!67965))
(check-sat)
