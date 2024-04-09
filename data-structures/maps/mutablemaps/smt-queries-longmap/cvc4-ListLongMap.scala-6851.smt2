; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86342 () Bool)

(assert start!86342)

(declare-fun b!998973 () Bool)

(declare-fun res!668770 () Bool)

(declare-fun e!563310 () Bool)

(assert (=> b!998973 (=> (not res!668770) (not e!563310))))

(declare-datatypes ((array!63146 0))(
  ( (array!63147 (arr!30396 (Array (_ BitVec 32) (_ BitVec 64))) (size!30899 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63146)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998973 (= res!668770 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30899 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30899 a!3219))))))

(declare-fun b!998974 () Bool)

(declare-fun e!563312 () Bool)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun lt!441855 () (_ BitVec 32))

(assert (=> b!998974 (= e!563312 (and (bvsge mask!3464 #b00000000000000000000000000000000) (or (bvslt lt!441855 #b00000000000000000000000000000000) (bvsge lt!441855 (bvadd #b00000000000000000000000000000001 mask!3464)))))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998974 (= lt!441855 (toIndex!0 (select (store (arr!30396 a!3219) i!1194 k!2224) j!170) mask!3464))))

(declare-fun b!998975 () Bool)

(declare-fun res!668773 () Bool)

(declare-fun e!563311 () Bool)

(assert (=> b!998975 (=> (not res!668773) (not e!563311))))

(assert (=> b!998975 (= res!668773 (and (= (size!30899 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30899 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30899 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998976 () Bool)

(declare-fun res!668767 () Bool)

(assert (=> b!998976 (=> (not res!668767) (not e!563310))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63146 (_ BitVec 32)) Bool)

(assert (=> b!998976 (= res!668767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998977 () Bool)

(declare-fun res!668771 () Bool)

(assert (=> b!998977 (=> (not res!668771) (not e!563312))))

(declare-datatypes ((SeekEntryResult!9328 0))(
  ( (MissingZero!9328 (index!39682 (_ BitVec 32))) (Found!9328 (index!39683 (_ BitVec 32))) (Intermediate!9328 (undefined!10140 Bool) (index!39684 (_ BitVec 32)) (x!87143 (_ BitVec 32))) (Undefined!9328) (MissingVacant!9328 (index!39685 (_ BitVec 32))) )
))
(declare-fun lt!441853 () SeekEntryResult!9328)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63146 (_ BitVec 32)) SeekEntryResult!9328)

(assert (=> b!998977 (= res!668771 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30396 a!3219) j!170) a!3219 mask!3464) lt!441853))))

(declare-fun b!998978 () Bool)

(declare-fun res!668775 () Bool)

(assert (=> b!998978 (=> (not res!668775) (not e!563311))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998978 (= res!668775 (validKeyInArray!0 k!2224))))

(declare-fun res!668772 () Bool)

(assert (=> start!86342 (=> (not res!668772) (not e!563311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86342 (= res!668772 (validMask!0 mask!3464))))

(assert (=> start!86342 e!563311))

(declare-fun array_inv!23386 (array!63146) Bool)

(assert (=> start!86342 (array_inv!23386 a!3219)))

(assert (=> start!86342 true))

(declare-fun b!998979 () Bool)

(declare-fun res!668774 () Bool)

(assert (=> b!998979 (=> (not res!668774) (not e!563310))))

(declare-datatypes ((List!21198 0))(
  ( (Nil!21195) (Cons!21194 (h!22368 (_ BitVec 64)) (t!30207 List!21198)) )
))
(declare-fun arrayNoDuplicates!0 (array!63146 (_ BitVec 32) List!21198) Bool)

(assert (=> b!998979 (= res!668774 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21195))))

(declare-fun b!998980 () Bool)

(assert (=> b!998980 (= e!563310 e!563312)))

(declare-fun res!668768 () Bool)

(assert (=> b!998980 (=> (not res!668768) (not e!563312))))

(assert (=> b!998980 (= res!668768 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30396 a!3219) j!170) mask!3464) (select (arr!30396 a!3219) j!170) a!3219 mask!3464) lt!441853))))

(assert (=> b!998980 (= lt!441853 (Intermediate!9328 false resIndex!38 resX!38))))

(declare-fun b!998981 () Bool)

(declare-fun res!668766 () Bool)

(assert (=> b!998981 (=> (not res!668766) (not e!563311))))

(assert (=> b!998981 (= res!668766 (validKeyInArray!0 (select (arr!30396 a!3219) j!170)))))

(declare-fun b!998982 () Bool)

(declare-fun res!668769 () Bool)

(assert (=> b!998982 (=> (not res!668769) (not e!563311))))

(declare-fun arrayContainsKey!0 (array!63146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998982 (= res!668769 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998983 () Bool)

(assert (=> b!998983 (= e!563311 e!563310)))

(declare-fun res!668776 () Bool)

(assert (=> b!998983 (=> (not res!668776) (not e!563310))))

(declare-fun lt!441854 () SeekEntryResult!9328)

(assert (=> b!998983 (= res!668776 (or (= lt!441854 (MissingVacant!9328 i!1194)) (= lt!441854 (MissingZero!9328 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63146 (_ BitVec 32)) SeekEntryResult!9328)

(assert (=> b!998983 (= lt!441854 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!86342 res!668772) b!998975))

(assert (= (and b!998975 res!668773) b!998981))

(assert (= (and b!998981 res!668766) b!998978))

(assert (= (and b!998978 res!668775) b!998982))

(assert (= (and b!998982 res!668769) b!998983))

(assert (= (and b!998983 res!668776) b!998976))

(assert (= (and b!998976 res!668767) b!998979))

(assert (= (and b!998979 res!668774) b!998973))

(assert (= (and b!998973 res!668770) b!998980))

(assert (= (and b!998980 res!668768) b!998977))

(assert (= (and b!998977 res!668771) b!998974))

(declare-fun m!925455 () Bool)

(assert (=> b!998979 m!925455))

(declare-fun m!925457 () Bool)

(assert (=> b!998974 m!925457))

(declare-fun m!925459 () Bool)

(assert (=> b!998974 m!925459))

(assert (=> b!998974 m!925459))

(declare-fun m!925461 () Bool)

(assert (=> b!998974 m!925461))

(declare-fun m!925463 () Bool)

(assert (=> b!998983 m!925463))

(declare-fun m!925465 () Bool)

(assert (=> b!998980 m!925465))

(assert (=> b!998980 m!925465))

(declare-fun m!925467 () Bool)

(assert (=> b!998980 m!925467))

(assert (=> b!998980 m!925467))

(assert (=> b!998980 m!925465))

(declare-fun m!925469 () Bool)

(assert (=> b!998980 m!925469))

(declare-fun m!925471 () Bool)

(assert (=> b!998976 m!925471))

(assert (=> b!998981 m!925465))

(assert (=> b!998981 m!925465))

(declare-fun m!925473 () Bool)

(assert (=> b!998981 m!925473))

(declare-fun m!925475 () Bool)

(assert (=> b!998982 m!925475))

(declare-fun m!925477 () Bool)

(assert (=> start!86342 m!925477))

(declare-fun m!925479 () Bool)

(assert (=> start!86342 m!925479))

(assert (=> b!998977 m!925465))

(assert (=> b!998977 m!925465))

(declare-fun m!925481 () Bool)

(assert (=> b!998977 m!925481))

(declare-fun m!925483 () Bool)

(assert (=> b!998978 m!925483))

(push 1)

(assert (not b!998981))

(assert (not b!998979))

(assert (not b!998974))

(assert (not start!86342))

(assert (not b!998982))

(assert (not b!998978))

(assert (not b!998980))

(assert (not b!998976))

(assert (not b!998983))

(assert (not b!998977))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!119203 () Bool)

(declare-fun res!668797 () Bool)

(declare-fun e!563340 () Bool)

(assert (=> d!119203 (=> res!668797 e!563340)))

(assert (=> d!119203 (= res!668797 (bvsge #b00000000000000000000000000000000 (size!30899 a!3219)))))

(assert (=> d!119203 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21195) e!563340)))

(declare-fun bm!42300 () Bool)

(declare-fun call!42303 () Bool)

(declare-fun c!101258 () Bool)

(assert (=> bm!42300 (= call!42303 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101258 (Cons!21194 (select (arr!30396 a!3219) #b00000000000000000000000000000000) Nil!21195) Nil!21195)))))

(declare-fun b!999016 () Bool)

(declare-fun e!563341 () Bool)

(declare-fun contains!5886 (List!21198 (_ BitVec 64)) Bool)

(assert (=> b!999016 (= e!563341 (contains!5886 Nil!21195 (select (arr!30396 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!999017 () Bool)

(declare-fun e!563339 () Bool)

(declare-fun e!563338 () Bool)

(assert (=> b!999017 (= e!563339 e!563338)))

(assert (=> b!999017 (= c!101258 (validKeyInArray!0 (select (arr!30396 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!999018 () Bool)

(assert (=> b!999018 (= e!563338 call!42303)))

(declare-fun b!999019 () Bool)

(assert (=> b!999019 (= e!563340 e!563339)))

(declare-fun res!668796 () Bool)

(assert (=> b!999019 (=> (not res!668796) (not e!563339))))

(assert (=> b!999019 (= res!668796 (not e!563341))))

(declare-fun res!668795 () Bool)

(assert (=> b!999019 (=> (not res!668795) (not e!563341))))

(assert (=> b!999019 (= res!668795 (validKeyInArray!0 (select (arr!30396 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!999020 () Bool)

(assert (=> b!999020 (= e!563338 call!42303)))

(assert (= (and d!119203 (not res!668797)) b!999019))

(assert (= (and b!999019 res!668795) b!999016))

(assert (= (and b!999019 res!668796) b!999017))

(assert (= (and b!999017 c!101258) b!999020))

(assert (= (and b!999017 (not c!101258)) b!999018))

(assert (= (or b!999020 b!999018) bm!42300))

(declare-fun m!925497 () Bool)

(assert (=> bm!42300 m!925497))

(declare-fun m!925499 () Bool)

(assert (=> bm!42300 m!925499))

(assert (=> b!999016 m!925497))

(assert (=> b!999016 m!925497))

(declare-fun m!925501 () Bool)

(assert (=> b!999016 m!925501))

(assert (=> b!999017 m!925497))

(assert (=> b!999017 m!925497))

(declare-fun m!925503 () Bool)

(assert (=> b!999017 m!925503))

(assert (=> b!999019 m!925497))

(assert (=> b!999019 m!925497))

(assert (=> b!999019 m!925503))

(assert (=> b!998979 d!119203))

(declare-fun d!119207 () Bool)

(declare-fun lt!441876 () (_ BitVec 32))

(declare-fun lt!441875 () (_ BitVec 32))

(assert (=> d!119207 (= lt!441876 (bvmul (bvxor lt!441875 (bvlshr lt!441875 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119207 (= lt!441875 ((_ extract 31 0) (bvand (bvxor (select (store (arr!30396 a!3219) i!1194 k!2224) j!170) (bvlshr (select (store (arr!30396 a!3219) i!1194 k!2224) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119207 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!668801 (let ((h!22369 ((_ extract 31 0) (bvand (bvxor (select (store (arr!30396 a!3219) i!1194 k!2224) j!170) (bvlshr (select (store (arr!30396 a!3219) i!1194 k!2224) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87144 (bvmul (bvxor h!22369 (bvlshr h!22369 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87144 (bvlshr x!87144 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!668801 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!668801 #b00000000000000000000000000000000))))))

(assert (=> d!119207 (= (toIndex!0 (select (store (arr!30396 a!3219) i!1194 k!2224) j!170) mask!3464) (bvand (bvxor lt!441876 (bvlshr lt!441876 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!998974 d!119207))

(declare-fun d!119211 () Bool)

(declare-fun lt!441898 () SeekEntryResult!9328)

(assert (=> d!119211 (and (or (is-Undefined!9328 lt!441898) (not (is-Found!9328 lt!441898)) (and (bvsge (index!39683 lt!441898) #b00000000000000000000000000000000) (bvslt (index!39683 lt!441898) (size!30899 a!3219)))) (or (is-Undefined!9328 lt!441898) (is-Found!9328 lt!441898) (not (is-MissingZero!9328 lt!441898)) (and (bvsge (index!39682 lt!441898) #b00000000000000000000000000000000) (bvslt (index!39682 lt!441898) (size!30899 a!3219)))) (or (is-Undefined!9328 lt!441898) (is-Found!9328 lt!441898) (is-MissingZero!9328 lt!441898) (not (is-MissingVacant!9328 lt!441898)) (and (bvsge (index!39685 lt!441898) #b00000000000000000000000000000000) (bvslt (index!39685 lt!441898) (size!30899 a!3219)))) (or (is-Undefined!9328 lt!441898) (ite (is-Found!9328 lt!441898) (= (select (arr!30396 a!3219) (index!39683 lt!441898)) k!2224) (ite (is-MissingZero!9328 lt!441898) (= (select (arr!30396 a!3219) (index!39682 lt!441898)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9328 lt!441898) (= (select (arr!30396 a!3219) (index!39685 lt!441898)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!563387 () SeekEntryResult!9328)

(assert (=> d!119211 (= lt!441898 e!563387)))

(declare-fun c!101292 () Bool)

(declare-fun lt!441897 () SeekEntryResult!9328)

(assert (=> d!119211 (= c!101292 (and (is-Intermediate!9328 lt!441897) (undefined!10140 lt!441897)))))

(assert (=> d!119211 (= lt!441897 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!119211 (validMask!0 mask!3464)))

(assert (=> d!119211 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!441898)))

(declare-fun b!999101 () Bool)

(declare-fun e!563386 () SeekEntryResult!9328)

(assert (=> b!999101 (= e!563387 e!563386)))

(declare-fun lt!441896 () (_ BitVec 64))

(assert (=> b!999101 (= lt!441896 (select (arr!30396 a!3219) (index!39684 lt!441897)))))

(declare-fun c!101290 () Bool)

(assert (=> b!999101 (= c!101290 (= lt!441896 k!2224))))

(declare-fun b!999102 () Bool)

(assert (=> b!999102 (= e!563386 (Found!9328 (index!39684 lt!441897)))))

(declare-fun b!999103 () Bool)

(declare-fun c!101291 () Bool)

(assert (=> b!999103 (= c!101291 (= lt!441896 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!563388 () SeekEntryResult!9328)

(assert (=> b!999103 (= e!563386 e!563388)))

(declare-fun b!999104 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63146 (_ BitVec 32)) SeekEntryResult!9328)

(assert (=> b!999104 (= e!563388 (seekKeyOrZeroReturnVacant!0 (x!87143 lt!441897) (index!39684 lt!441897) (index!39684 lt!441897) k!2224 a!3219 mask!3464))))

(declare-fun b!999105 () Bool)

(assert (=> b!999105 (= e!563387 Undefined!9328)))

(declare-fun b!999106 () Bool)

(assert (=> b!999106 (= e!563388 (MissingZero!9328 (index!39684 lt!441897)))))

(assert (= (and d!119211 c!101292) b!999105))

(assert (= (and d!119211 (not c!101292)) b!999101))

(assert (= (and b!999101 c!101290) b!999102))

(assert (= (and b!999101 (not c!101290)) b!999103))

(assert (= (and b!999103 c!101291) b!999106))

(assert (= (and b!999103 (not c!101291)) b!999104))

(declare-fun m!925531 () Bool)

(assert (=> d!119211 m!925531))

(declare-fun m!925533 () Bool)

(assert (=> d!119211 m!925533))

(assert (=> d!119211 m!925477))

(declare-fun m!925535 () Bool)

(assert (=> d!119211 m!925535))

(declare-fun m!925537 () Bool)

(assert (=> d!119211 m!925537))

(assert (=> d!119211 m!925531))

(declare-fun m!925539 () Bool)

(assert (=> d!119211 m!925539))

(declare-fun m!925541 () Bool)

(assert (=> b!999101 m!925541))

(declare-fun m!925543 () Bool)

(assert (=> b!999104 m!925543))

(assert (=> b!998983 d!119211))

(declare-fun d!119217 () Bool)

(assert (=> d!119217 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!998978 d!119217))

(declare-fun b!999133 () Bool)

(declare-fun e!563406 () Bool)

(declare-fun call!42307 () Bool)

(assert (=> b!999133 (= e!563406 call!42307)))

(declare-fun d!119219 () Bool)

(declare-fun res!668830 () Bool)

(declare-fun e!563407 () Bool)

(assert (=> d!119219 (=> res!668830 e!563407)))

(assert (=> d!119219 (= res!668830 (bvsge #b00000000000000000000000000000000 (size!30899 a!3219)))))

(assert (=> d!119219 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!563407)))

(declare-fun b!999134 () Bool)

(declare-fun e!563405 () Bool)

(assert (=> b!999134 (= e!563405 call!42307)))

(declare-fun bm!42304 () Bool)

(assert (=> bm!42304 (= call!42307 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!999135 () Bool)

(assert (=> b!999135 (= e!563406 e!563405)))

(declare-fun lt!441921 () (_ BitVec 64))

(assert (=> b!999135 (= lt!441921 (select (arr!30396 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32938 0))(
  ( (Unit!32939) )
))
(declare-fun lt!441922 () Unit!32938)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63146 (_ BitVec 64) (_ BitVec 32)) Unit!32938)

(assert (=> b!999135 (= lt!441922 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!441921 #b00000000000000000000000000000000))))

(assert (=> b!999135 (arrayContainsKey!0 a!3219 lt!441921 #b00000000000000000000000000000000)))

(declare-fun lt!441923 () Unit!32938)

(assert (=> b!999135 (= lt!441923 lt!441922)))

(declare-fun res!668829 () Bool)

(assert (=> b!999135 (= res!668829 (= (seekEntryOrOpen!0 (select (arr!30396 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9328 #b00000000000000000000000000000000)))))

(assert (=> b!999135 (=> (not res!668829) (not e!563405))))

(declare-fun b!999136 () Bool)

(assert (=> b!999136 (= e!563407 e!563406)))

(declare-fun c!101301 () Bool)

(assert (=> b!999136 (= c!101301 (validKeyInArray!0 (select (arr!30396 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119219 (not res!668830)) b!999136))

(assert (= (and b!999136 c!101301) b!999135))

(assert (= (and b!999136 (not c!101301)) b!999133))

(assert (= (and b!999135 res!668829) b!999134))

(assert (= (or b!999134 b!999133) bm!42304))

(declare-fun m!925561 () Bool)

(assert (=> bm!42304 m!925561))

(assert (=> b!999135 m!925497))

(declare-fun m!925563 () Bool)

(assert (=> b!999135 m!925563))

(declare-fun m!925565 () Bool)

(assert (=> b!999135 m!925565))

(assert (=> b!999135 m!925497))

(declare-fun m!925567 () Bool)

(assert (=> b!999135 m!925567))

(assert (=> b!999136 m!925497))

(assert (=> b!999136 m!925497))

(assert (=> b!999136 m!925503))

(assert (=> b!998976 d!119219))

(declare-fun d!119233 () Bool)

(assert (=> d!119233 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86342 d!119233))

(declare-fun d!119241 () Bool)

(assert (=> d!119241 (= (array_inv!23386 a!3219) (bvsge (size!30899 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86342 d!119241))

(declare-fun d!119243 () Bool)

(declare-fun res!668850 () Bool)

(declare-fun e!563439 () Bool)

(assert (=> d!119243 (=> res!668850 e!563439)))

(assert (=> d!119243 (= res!668850 (= (select (arr!30396 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!119243 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!563439)))

(declare-fun b!999180 () Bool)

(declare-fun e!563440 () Bool)

(assert (=> b!999180 (= e!563439 e!563440)))

(declare-fun res!668851 () Bool)

(assert (=> b!999180 (=> (not res!668851) (not e!563440))))

(assert (=> b!999180 (= res!668851 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30899 a!3219)))))

(declare-fun b!999181 () Bool)

(assert (=> b!999181 (= e!563440 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119243 (not res!668850)) b!999180))

(assert (= (and b!999180 res!668851) b!999181))

(assert (=> d!119243 m!925497))

(declare-fun m!925593 () Bool)

(assert (=> b!999181 m!925593))

(assert (=> b!998982 d!119243))

(declare-fun b!999227 () Bool)

(declare-fun e!563472 () SeekEntryResult!9328)

(assert (=> b!999227 (= e!563472 (Intermediate!9328 false index!1507 x!1245))))

(declare-fun b!999228 () Bool)

(declare-fun lt!441952 () SeekEntryResult!9328)

(assert (=> b!999228 (and (bvsge (index!39684 lt!441952) #b00000000000000000000000000000000) (bvslt (index!39684 lt!441952) (size!30899 a!3219)))))

(declare-fun e!563475 () Bool)

(assert (=> b!999228 (= e!563475 (= (select (arr!30396 a!3219) (index!39684 lt!441952)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!999229 () Bool)

(declare-fun e!563471 () SeekEntryResult!9328)

(assert (=> b!999229 (= e!563471 (Intermediate!9328 true index!1507 x!1245))))

(declare-fun b!999230 () Bool)

(declare-fun e!563474 () Bool)

(assert (=> b!999230 (= e!563474 (bvsge (x!87143 lt!441952) #b01111111111111111111111111111110))))

(declare-fun d!119249 () Bool)

(assert (=> d!119249 e!563474))

(declare-fun c!101328 () Bool)

(assert (=> d!119249 (= c!101328 (and (is-Intermediate!9328 lt!441952) (undefined!10140 lt!441952)))))

(assert (=> d!119249 (= lt!441952 e!563471)))

(declare-fun c!101326 () Bool)

(assert (=> d!119249 (= c!101326 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!441953 () (_ BitVec 64))

(assert (=> d!119249 (= lt!441953 (select (arr!30396 a!3219) index!1507))))

(assert (=> d!119249 (validMask!0 mask!3464)))

(assert (=> d!119249 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30396 a!3219) j!170) a!3219 mask!3464) lt!441952)))

(declare-fun b!999231 () Bool)

(assert (=> b!999231 (and (bvsge (index!39684 lt!441952) #b00000000000000000000000000000000) (bvslt (index!39684 lt!441952) (size!30899 a!3219)))))

(declare-fun res!668873 () Bool)

(assert (=> b!999231 (= res!668873 (= (select (arr!30396 a!3219) (index!39684 lt!441952)) (select (arr!30396 a!3219) j!170)))))

(assert (=> b!999231 (=> res!668873 e!563475)))

(declare-fun e!563473 () Bool)

(assert (=> b!999231 (= e!563473 e!563475)))

(declare-fun b!999232 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999232 (= e!563472 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30396 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!999233 () Bool)

(assert (=> b!999233 (= e!563471 e!563472)))

(declare-fun c!101327 () Bool)

(assert (=> b!999233 (= c!101327 (or (= lt!441953 (select (arr!30396 a!3219) j!170)) (= (bvadd lt!441953 lt!441953) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!999234 () Bool)

(assert (=> b!999234 (= e!563474 e!563473)))

(declare-fun res!668875 () Bool)

(assert (=> b!999234 (= res!668875 (and (is-Intermediate!9328 lt!441952) (not (undefined!10140 lt!441952)) (bvslt (x!87143 lt!441952) #b01111111111111111111111111111110) (bvsge (x!87143 lt!441952) #b00000000000000000000000000000000) (bvsge (x!87143 lt!441952) x!1245)))))

(assert (=> b!999234 (=> (not res!668875) (not e!563473))))

(declare-fun b!999235 () Bool)

(assert (=> b!999235 (and (bvsge (index!39684 lt!441952) #b00000000000000000000000000000000) (bvslt (index!39684 lt!441952) (size!30899 a!3219)))))

(declare-fun res!668874 () Bool)

(assert (=> b!999235 (= res!668874 (= (select (arr!30396 a!3219) (index!39684 lt!441952)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!999235 (=> res!668874 e!563475)))

(assert (= (and d!119249 c!101326) b!999229))

(assert (= (and d!119249 (not c!101326)) b!999233))

(assert (= (and b!999233 c!101327) b!999227))

(assert (= (and b!999233 (not c!101327)) b!999232))

(assert (= (and d!119249 c!101328) b!999230))

(assert (= (and d!119249 (not c!101328)) b!999234))

(assert (= (and b!999234 res!668875) b!999231))

(assert (= (and b!999231 (not res!668873)) b!999235))

(assert (= (and b!999235 (not res!668874)) b!999228))

(declare-fun m!925613 () Bool)

(assert (=> b!999228 m!925613))

(declare-fun m!925615 () Bool)

(assert (=> d!119249 m!925615))

(assert (=> d!119249 m!925477))

(assert (=> b!999235 m!925613))

(assert (=> b!999231 m!925613))

(declare-fun m!925617 () Bool)

(assert (=> b!999232 m!925617))

(assert (=> b!999232 m!925617))

(assert (=> b!999232 m!925465))

(declare-fun m!925619 () Bool)

(assert (=> b!999232 m!925619))

(assert (=> b!998977 d!119249))

(declare-fun b!999236 () Bool)

(declare-fun e!563477 () SeekEntryResult!9328)

(assert (=> b!999236 (= e!563477 (Intermediate!9328 false (toIndex!0 (select (arr!30396 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!999237 () Bool)

(declare-fun lt!441954 () SeekEntryResult!9328)

(assert (=> b!999237 (and (bvsge (index!39684 lt!441954) #b00000000000000000000000000000000) (bvslt (index!39684 lt!441954) (size!30899 a!3219)))))

(declare-fun e!563480 () Bool)

(assert (=> b!999237 (= e!563480 (= (select (arr!30396 a!3219) (index!39684 lt!441954)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!563476 () SeekEntryResult!9328)

(declare-fun b!999238 () Bool)

(assert (=> b!999238 (= e!563476 (Intermediate!9328 true (toIndex!0 (select (arr!30396 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!999239 () Bool)

(declare-fun e!563479 () Bool)

(assert (=> b!999239 (= e!563479 (bvsge (x!87143 lt!441954) #b01111111111111111111111111111110))))

(declare-fun d!119259 () Bool)

(assert (=> d!119259 e!563479))

(declare-fun c!101331 () Bool)

(assert (=> d!119259 (= c!101331 (and (is-Intermediate!9328 lt!441954) (undefined!10140 lt!441954)))))

(assert (=> d!119259 (= lt!441954 e!563476)))

(declare-fun c!101329 () Bool)

(assert (=> d!119259 (= c!101329 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!441955 () (_ BitVec 64))

(assert (=> d!119259 (= lt!441955 (select (arr!30396 a!3219) (toIndex!0 (select (arr!30396 a!3219) j!170) mask!3464)))))

(assert (=> d!119259 (validMask!0 mask!3464)))

(assert (=> d!119259 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30396 a!3219) j!170) mask!3464) (select (arr!30396 a!3219) j!170) a!3219 mask!3464) lt!441954)))

(declare-fun b!999240 () Bool)

(assert (=> b!999240 (and (bvsge (index!39684 lt!441954) #b00000000000000000000000000000000) (bvslt (index!39684 lt!441954) (size!30899 a!3219)))))

(declare-fun res!668876 () Bool)

(assert (=> b!999240 (= res!668876 (= (select (arr!30396 a!3219) (index!39684 lt!441954)) (select (arr!30396 a!3219) j!170)))))

(assert (=> b!999240 (=> res!668876 e!563480)))

(declare-fun e!563478 () Bool)

(assert (=> b!999240 (= e!563478 e!563480)))

(declare-fun b!999241 () Bool)

(assert (=> b!999241 (= e!563477 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30396 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30396 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!999242 () Bool)

(assert (=> b!999242 (= e!563476 e!563477)))

(declare-fun c!101330 () Bool)

(assert (=> b!999242 (= c!101330 (or (= lt!441955 (select (arr!30396 a!3219) j!170)) (= (bvadd lt!441955 lt!441955) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!999243 () Bool)

(assert (=> b!999243 (= e!563479 e!563478)))

(declare-fun res!668878 () Bool)

(assert (=> b!999243 (= res!668878 (and (is-Intermediate!9328 lt!441954) (not (undefined!10140 lt!441954)) (bvslt (x!87143 lt!441954) #b01111111111111111111111111111110) (bvsge (x!87143 lt!441954) #b00000000000000000000000000000000) (bvsge (x!87143 lt!441954) #b00000000000000000000000000000000)))))

(assert (=> b!999243 (=> (not res!668878) (not e!563478))))

(declare-fun b!999244 () Bool)

(assert (=> b!999244 (and (bvsge (index!39684 lt!441954) #b00000000000000000000000000000000) (bvslt (index!39684 lt!441954) (size!30899 a!3219)))))

(declare-fun res!668877 () Bool)

(assert (=> b!999244 (= res!668877 (= (select (arr!30396 a!3219) (index!39684 lt!441954)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!999244 (=> res!668877 e!563480)))

(assert (= (and d!119259 c!101329) b!999238))

(assert (= (and d!119259 (not c!101329)) b!999242))

(assert (= (and b!999242 c!101330) b!999236))

(assert (= (and b!999242 (not c!101330)) b!999241))

(assert (= (and d!119259 c!101331) b!999239))

(assert (= (and d!119259 (not c!101331)) b!999243))

(assert (= (and b!999243 res!668878) b!999240))

(assert (= (and b!999240 (not res!668876)) b!999244))

(assert (= (and b!999244 (not res!668877)) b!999237))

(declare-fun m!925621 () Bool)

(assert (=> b!999237 m!925621))

(assert (=> d!119259 m!925467))

(declare-fun m!925623 () Bool)

(assert (=> d!119259 m!925623))

(assert (=> d!119259 m!925477))

(assert (=> b!999244 m!925621))

(assert (=> b!999240 m!925621))

(assert (=> b!999241 m!925467))

(declare-fun m!925625 () Bool)

(assert (=> b!999241 m!925625))

(assert (=> b!999241 m!925625))

(assert (=> b!999241 m!925465))

(declare-fun m!925627 () Bool)

(assert (=> b!999241 m!925627))

(assert (=> b!998980 d!119259))

(declare-fun d!119261 () Bool)

(declare-fun lt!441957 () (_ BitVec 32))

(declare-fun lt!441956 () (_ BitVec 32))

(assert (=> d!119261 (= lt!441957 (bvmul (bvxor lt!441956 (bvlshr lt!441956 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119261 (= lt!441956 ((_ extract 31 0) (bvand (bvxor (select (arr!30396 a!3219) j!170) (bvlshr (select (arr!30396 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119261 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!668801 (let ((h!22369 ((_ extract 31 0) (bvand (bvxor (select (arr!30396 a!3219) j!170) (bvlshr (select (arr!30396 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87144 (bvmul (bvxor h!22369 (bvlshr h!22369 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87144 (bvlshr x!87144 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!668801 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!668801 #b00000000000000000000000000000000))))))

(assert (=> d!119261 (= (toIndex!0 (select (arr!30396 a!3219) j!170) mask!3464) (bvand (bvxor lt!441957 (bvlshr lt!441957 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!998980 d!119261))

(declare-fun d!119263 () Bool)

(assert (=> d!119263 (= (validKeyInArray!0 (select (arr!30396 a!3219) j!170)) (and (not (= (select (arr!30396 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30396 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!998981 d!119263))

(push 1)

