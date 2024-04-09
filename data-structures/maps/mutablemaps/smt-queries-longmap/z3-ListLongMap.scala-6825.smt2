; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85934 () Bool)

(assert start!85934)

(declare-fun res!665965 () Bool)

(declare-fun e!561791 () Bool)

(assert (=> start!85934 (=> (not res!665965) (not e!561791))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85934 (= res!665965 (validMask!0 mask!3464))))

(assert (=> start!85934 e!561791))

(declare-datatypes ((array!62974 0))(
  ( (array!62975 (arr!30317 (Array (_ BitVec 32) (_ BitVec 64))) (size!30820 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62974)

(declare-fun array_inv!23307 (array!62974) Bool)

(assert (=> start!85934 (array_inv!23307 a!3219)))

(assert (=> start!85934 true))

(declare-fun b!995514 () Bool)

(declare-fun res!665968 () Bool)

(assert (=> b!995514 (=> (not res!665968) (not e!561791))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995514 (= res!665968 (validKeyInArray!0 (select (arr!30317 a!3219) j!170)))))

(declare-fun b!995515 () Bool)

(declare-fun res!665966 () Bool)

(assert (=> b!995515 (=> (not res!665966) (not e!561791))))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!995515 (= res!665966 (validKeyInArray!0 k0!2224))))

(declare-fun b!995516 () Bool)

(declare-fun res!665967 () Bool)

(assert (=> b!995516 (=> (not res!665967) (not e!561791))))

(declare-fun arrayContainsKey!0 (array!62974 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995516 (= res!665967 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!995517 () Bool)

(declare-fun res!665961 () Bool)

(declare-fun e!561790 () Bool)

(assert (=> b!995517 (=> (not res!665961) (not e!561790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62974 (_ BitVec 32)) Bool)

(assert (=> b!995517 (= res!665961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995518 () Bool)

(declare-fun res!665962 () Bool)

(assert (=> b!995518 (=> (not res!665962) (not e!561791))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995518 (= res!665962 (and (= (size!30820 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30820 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30820 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!995519 () Bool)

(declare-fun res!665963 () Bool)

(assert (=> b!995519 (=> (not res!665963) (not e!561790))))

(declare-datatypes ((List!21119 0))(
  ( (Nil!21116) (Cons!21115 (h!22277 (_ BitVec 64)) (t!30128 List!21119)) )
))
(declare-fun arrayNoDuplicates!0 (array!62974 (_ BitVec 32) List!21119) Bool)

(assert (=> b!995519 (= res!665963 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21116))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun b!995520 () Bool)

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!995520 (= e!561790 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30820 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30820 a!3219)) (bvsge mask!3464 #b00000000000000000000000000000000) (bvsgt mask!3464 #b00111111111111111111111111111111)))))

(declare-fun b!995521 () Bool)

(assert (=> b!995521 (= e!561791 e!561790)))

(declare-fun res!665964 () Bool)

(assert (=> b!995521 (=> (not res!665964) (not e!561790))))

(declare-datatypes ((SeekEntryResult!9249 0))(
  ( (MissingZero!9249 (index!39366 (_ BitVec 32))) (Found!9249 (index!39367 (_ BitVec 32))) (Intermediate!9249 (undefined!10061 Bool) (index!39368 (_ BitVec 32)) (x!86835 (_ BitVec 32))) (Undefined!9249) (MissingVacant!9249 (index!39369 (_ BitVec 32))) )
))
(declare-fun lt!440952 () SeekEntryResult!9249)

(assert (=> b!995521 (= res!665964 (or (= lt!440952 (MissingVacant!9249 i!1194)) (= lt!440952 (MissingZero!9249 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62974 (_ BitVec 32)) SeekEntryResult!9249)

(assert (=> b!995521 (= lt!440952 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(assert (= (and start!85934 res!665965) b!995518))

(assert (= (and b!995518 res!665962) b!995514))

(assert (= (and b!995514 res!665968) b!995515))

(assert (= (and b!995515 res!665966) b!995516))

(assert (= (and b!995516 res!665967) b!995521))

(assert (= (and b!995521 res!665964) b!995517))

(assert (= (and b!995517 res!665961) b!995519))

(assert (= (and b!995519 res!665963) b!995520))

(declare-fun m!922997 () Bool)

(assert (=> b!995521 m!922997))

(declare-fun m!922999 () Bool)

(assert (=> start!85934 m!922999))

(declare-fun m!923001 () Bool)

(assert (=> start!85934 m!923001))

(declare-fun m!923003 () Bool)

(assert (=> b!995517 m!923003))

(declare-fun m!923005 () Bool)

(assert (=> b!995514 m!923005))

(assert (=> b!995514 m!923005))

(declare-fun m!923007 () Bool)

(assert (=> b!995514 m!923007))

(declare-fun m!923009 () Bool)

(assert (=> b!995519 m!923009))

(declare-fun m!923011 () Bool)

(assert (=> b!995515 m!923011))

(declare-fun m!923013 () Bool)

(assert (=> b!995516 m!923013))

(check-sat (not b!995516) (not b!995514) (not b!995519) (not start!85934) (not b!995521) (not b!995515) (not b!995517))
(check-sat)
(get-model)

(declare-fun d!118847 () Bool)

(declare-fun res!665998 () Bool)

(declare-fun e!561807 () Bool)

(assert (=> d!118847 (=> res!665998 e!561807)))

(assert (=> d!118847 (= res!665998 (bvsge #b00000000000000000000000000000000 (size!30820 a!3219)))))

(assert (=> d!118847 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!561807)))

(declare-fun b!995554 () Bool)

(declare-fun e!561808 () Bool)

(assert (=> b!995554 (= e!561807 e!561808)))

(declare-fun c!100920 () Bool)

(assert (=> b!995554 (= c!100920 (validKeyInArray!0 (select (arr!30317 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!995555 () Bool)

(declare-fun e!561809 () Bool)

(assert (=> b!995555 (= e!561808 e!561809)))

(declare-fun lt!440963 () (_ BitVec 64))

(assert (=> b!995555 (= lt!440963 (select (arr!30317 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32914 0))(
  ( (Unit!32915) )
))
(declare-fun lt!440962 () Unit!32914)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62974 (_ BitVec 64) (_ BitVec 32)) Unit!32914)

(assert (=> b!995555 (= lt!440962 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!440963 #b00000000000000000000000000000000))))

(assert (=> b!995555 (arrayContainsKey!0 a!3219 lt!440963 #b00000000000000000000000000000000)))

(declare-fun lt!440964 () Unit!32914)

(assert (=> b!995555 (= lt!440964 lt!440962)))

(declare-fun res!665997 () Bool)

(assert (=> b!995555 (= res!665997 (= (seekEntryOrOpen!0 (select (arr!30317 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9249 #b00000000000000000000000000000000)))))

(assert (=> b!995555 (=> (not res!665997) (not e!561809))))

(declare-fun b!995556 () Bool)

(declare-fun call!42208 () Bool)

(assert (=> b!995556 (= e!561808 call!42208)))

(declare-fun b!995557 () Bool)

(assert (=> b!995557 (= e!561809 call!42208)))

(declare-fun bm!42205 () Bool)

(assert (=> bm!42205 (= call!42208 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(assert (= (and d!118847 (not res!665998)) b!995554))

(assert (= (and b!995554 c!100920) b!995555))

(assert (= (and b!995554 (not c!100920)) b!995556))

(assert (= (and b!995555 res!665997) b!995557))

(assert (= (or b!995557 b!995556) bm!42205))

(declare-fun m!923033 () Bool)

(assert (=> b!995554 m!923033))

(assert (=> b!995554 m!923033))

(declare-fun m!923035 () Bool)

(assert (=> b!995554 m!923035))

(assert (=> b!995555 m!923033))

(declare-fun m!923037 () Bool)

(assert (=> b!995555 m!923037))

(declare-fun m!923039 () Bool)

(assert (=> b!995555 m!923039))

(assert (=> b!995555 m!923033))

(declare-fun m!923041 () Bool)

(assert (=> b!995555 m!923041))

(declare-fun m!923043 () Bool)

(assert (=> bm!42205 m!923043))

(assert (=> b!995517 d!118847))

(declare-fun e!561840 () SeekEntryResult!9249)

(declare-fun lt!440972 () SeekEntryResult!9249)

(declare-fun b!995600 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62974 (_ BitVec 32)) SeekEntryResult!9249)

(assert (=> b!995600 (= e!561840 (seekKeyOrZeroReturnVacant!0 (x!86835 lt!440972) (index!39368 lt!440972) (index!39368 lt!440972) k0!2224 a!3219 mask!3464))))

(declare-fun b!995601 () Bool)

(declare-fun e!561842 () SeekEntryResult!9249)

(declare-fun e!561841 () SeekEntryResult!9249)

(assert (=> b!995601 (= e!561842 e!561841)))

(declare-fun lt!440973 () (_ BitVec 64))

(assert (=> b!995601 (= lt!440973 (select (arr!30317 a!3219) (index!39368 lt!440972)))))

(declare-fun c!100935 () Bool)

(assert (=> b!995601 (= c!100935 (= lt!440973 k0!2224))))

(declare-fun b!995602 () Bool)

(declare-fun c!100933 () Bool)

(assert (=> b!995602 (= c!100933 (= lt!440973 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!995602 (= e!561841 e!561840)))

(declare-fun b!995603 () Bool)

(assert (=> b!995603 (= e!561840 (MissingZero!9249 (index!39368 lt!440972)))))

(declare-fun b!995604 () Bool)

(assert (=> b!995604 (= e!561842 Undefined!9249)))

(declare-fun b!995605 () Bool)

(assert (=> b!995605 (= e!561841 (Found!9249 (index!39368 lt!440972)))))

(declare-fun d!118849 () Bool)

(declare-fun lt!440971 () SeekEntryResult!9249)

(get-info :version)

(assert (=> d!118849 (and (or ((_ is Undefined!9249) lt!440971) (not ((_ is Found!9249) lt!440971)) (and (bvsge (index!39367 lt!440971) #b00000000000000000000000000000000) (bvslt (index!39367 lt!440971) (size!30820 a!3219)))) (or ((_ is Undefined!9249) lt!440971) ((_ is Found!9249) lt!440971) (not ((_ is MissingZero!9249) lt!440971)) (and (bvsge (index!39366 lt!440971) #b00000000000000000000000000000000) (bvslt (index!39366 lt!440971) (size!30820 a!3219)))) (or ((_ is Undefined!9249) lt!440971) ((_ is Found!9249) lt!440971) ((_ is MissingZero!9249) lt!440971) (not ((_ is MissingVacant!9249) lt!440971)) (and (bvsge (index!39369 lt!440971) #b00000000000000000000000000000000) (bvslt (index!39369 lt!440971) (size!30820 a!3219)))) (or ((_ is Undefined!9249) lt!440971) (ite ((_ is Found!9249) lt!440971) (= (select (arr!30317 a!3219) (index!39367 lt!440971)) k0!2224) (ite ((_ is MissingZero!9249) lt!440971) (= (select (arr!30317 a!3219) (index!39366 lt!440971)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9249) lt!440971) (= (select (arr!30317 a!3219) (index!39369 lt!440971)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!118849 (= lt!440971 e!561842)))

(declare-fun c!100934 () Bool)

(assert (=> d!118849 (= c!100934 (and ((_ is Intermediate!9249) lt!440972) (undefined!10061 lt!440972)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62974 (_ BitVec 32)) SeekEntryResult!9249)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!118849 (= lt!440972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464))))

(assert (=> d!118849 (validMask!0 mask!3464)))

(assert (=> d!118849 (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) lt!440971)))

(assert (= (and d!118849 c!100934) b!995604))

(assert (= (and d!118849 (not c!100934)) b!995601))

(assert (= (and b!995601 c!100935) b!995605))

(assert (= (and b!995601 (not c!100935)) b!995602))

(assert (= (and b!995602 c!100933) b!995603))

(assert (= (and b!995602 (not c!100933)) b!995600))

(declare-fun m!923061 () Bool)

(assert (=> b!995600 m!923061))

(declare-fun m!923063 () Bool)

(assert (=> b!995601 m!923063))

(declare-fun m!923065 () Bool)

(assert (=> d!118849 m!923065))

(declare-fun m!923067 () Bool)

(assert (=> d!118849 m!923067))

(declare-fun m!923069 () Bool)

(assert (=> d!118849 m!923069))

(declare-fun m!923071 () Bool)

(assert (=> d!118849 m!923071))

(assert (=> d!118849 m!922999))

(declare-fun m!923073 () Bool)

(assert (=> d!118849 m!923073))

(assert (=> d!118849 m!923069))

(assert (=> b!995521 d!118849))

(declare-fun d!118859 () Bool)

(declare-fun res!666021 () Bool)

(declare-fun e!561847 () Bool)

(assert (=> d!118859 (=> res!666021 e!561847)))

(assert (=> d!118859 (= res!666021 (= (select (arr!30317 a!3219) #b00000000000000000000000000000000) k0!2224))))

(assert (=> d!118859 (= (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000) e!561847)))

(declare-fun b!995610 () Bool)

(declare-fun e!561848 () Bool)

(assert (=> b!995610 (= e!561847 e!561848)))

(declare-fun res!666022 () Bool)

(assert (=> b!995610 (=> (not res!666022) (not e!561848))))

(assert (=> b!995610 (= res!666022 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30820 a!3219)))))

(declare-fun b!995611 () Bool)

(assert (=> b!995611 (= e!561848 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!118859 (not res!666021)) b!995610))

(assert (= (and b!995610 res!666022) b!995611))

(assert (=> d!118859 m!923033))

(declare-fun m!923075 () Bool)

(assert (=> b!995611 m!923075))

(assert (=> b!995516 d!118859))

(declare-fun d!118861 () Bool)

(assert (=> d!118861 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!85934 d!118861))

(declare-fun d!118863 () Bool)

(assert (=> d!118863 (= (array_inv!23307 a!3219) (bvsge (size!30820 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!85934 d!118863))

(declare-fun d!118865 () Bool)

(assert (=> d!118865 (= (validKeyInArray!0 (select (arr!30317 a!3219) j!170)) (and (not (= (select (arr!30317 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30317 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!995514 d!118865))

(declare-fun d!118867 () Bool)

(assert (=> d!118867 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!995515 d!118867))

(declare-fun b!995634 () Bool)

(declare-fun e!561863 () Bool)

(declare-fun e!561864 () Bool)

(assert (=> b!995634 (= e!561863 e!561864)))

(declare-fun c!100944 () Bool)

(assert (=> b!995634 (= c!100944 (validKeyInArray!0 (select (arr!30317 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!995635 () Bool)

(declare-fun e!561866 () Bool)

(declare-fun contains!5872 (List!21119 (_ BitVec 64)) Bool)

(assert (=> b!995635 (= e!561866 (contains!5872 Nil!21116 (select (arr!30317 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42214 () Bool)

(declare-fun call!42217 () Bool)

(assert (=> bm!42214 (= call!42217 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!100944 (Cons!21115 (select (arr!30317 a!3219) #b00000000000000000000000000000000) Nil!21116) Nil!21116)))))

(declare-fun b!995636 () Bool)

(assert (=> b!995636 (= e!561864 call!42217)))

(declare-fun d!118869 () Bool)

(declare-fun res!666031 () Bool)

(declare-fun e!561865 () Bool)

(assert (=> d!118869 (=> res!666031 e!561865)))

(assert (=> d!118869 (= res!666031 (bvsge #b00000000000000000000000000000000 (size!30820 a!3219)))))

(assert (=> d!118869 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21116) e!561865)))

(declare-fun b!995637 () Bool)

(assert (=> b!995637 (= e!561864 call!42217)))

(declare-fun b!995638 () Bool)

(assert (=> b!995638 (= e!561865 e!561863)))

(declare-fun res!666030 () Bool)

(assert (=> b!995638 (=> (not res!666030) (not e!561863))))

(assert (=> b!995638 (= res!666030 (not e!561866))))

(declare-fun res!666029 () Bool)

(assert (=> b!995638 (=> (not res!666029) (not e!561866))))

(assert (=> b!995638 (= res!666029 (validKeyInArray!0 (select (arr!30317 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!118869 (not res!666031)) b!995638))

(assert (= (and b!995638 res!666029) b!995635))

(assert (= (and b!995638 res!666030) b!995634))

(assert (= (and b!995634 c!100944) b!995636))

(assert (= (and b!995634 (not c!100944)) b!995637))

(assert (= (or b!995636 b!995637) bm!42214))

(assert (=> b!995634 m!923033))

(assert (=> b!995634 m!923033))

(assert (=> b!995634 m!923035))

(assert (=> b!995635 m!923033))

(assert (=> b!995635 m!923033))

(declare-fun m!923077 () Bool)

(assert (=> b!995635 m!923077))

(assert (=> bm!42214 m!923033))

(declare-fun m!923079 () Bool)

(assert (=> bm!42214 m!923079))

(assert (=> b!995638 m!923033))

(assert (=> b!995638 m!923033))

(assert (=> b!995638 m!923035))

(assert (=> b!995519 d!118869))

(check-sat (not bm!42214) (not b!995554) (not bm!42205) (not b!995600) (not b!995638) (not b!995611) (not b!995635) (not d!118849) (not b!995634) (not b!995555))
(check-sat)
