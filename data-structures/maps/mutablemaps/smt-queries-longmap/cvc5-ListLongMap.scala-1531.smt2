; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29022 () Bool)

(assert start!29022)

(declare-fun b!294780 () Bool)

(declare-fun res!154987 () Bool)

(declare-fun e!186345 () Bool)

(assert (=> b!294780 (=> (not res!154987) (not e!186345))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14912 0))(
  ( (array!14913 (arr!7069 (Array (_ BitVec 32) (_ BitVec 64))) (size!7421 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14912)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!294780 (= res!154987 (and (= (size!7421 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7421 a!3312))))))

(declare-fun lt!146194 () Bool)

(declare-datatypes ((SeekEntryResult!2229 0))(
  ( (MissingZero!2229 (index!11086 (_ BitVec 32))) (Found!2229 (index!11087 (_ BitVec 32))) (Intermediate!2229 (undefined!3041 Bool) (index!11088 (_ BitVec 32)) (x!29266 (_ BitVec 32))) (Undefined!2229) (MissingVacant!2229 (index!11089 (_ BitVec 32))) )
))
(declare-fun lt!146193 () SeekEntryResult!2229)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun e!186347 () Bool)

(declare-fun b!294781 () Bool)

(assert (=> b!294781 (= e!186347 (and lt!146194 (let ((bdg!6247 (not (is-Intermediate!2229 lt!146193)))) (and (or bdg!6247 (not (undefined!3041 lt!146193))) (or bdg!6247 (not (= (select (arr!7069 a!3312) (index!11088 lt!146193)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or bdg!6247 (not (= (select (arr!7069 a!3312) (index!11088 lt!146193)) k!2524))) (not bdg!6247) (not (= (select (arr!7069 a!3312) (index!11088 lt!146193)) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!146192 () (_ BitVec 32))

(declare-fun lt!146195 () SeekEntryResult!2229)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14912 (_ BitVec 32)) SeekEntryResult!2229)

(assert (=> b!294781 (= lt!146195 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146192 k!2524 (array!14913 (store (arr!7069 a!3312) i!1256 k!2524) (size!7421 a!3312)) mask!3809))))

(assert (=> b!294781 (= lt!146193 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146192 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294781 (= lt!146192 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!294782 () Bool)

(declare-fun res!154986 () Bool)

(assert (=> b!294782 (=> (not res!154986) (not e!186347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14912 (_ BitVec 32)) Bool)

(assert (=> b!294782 (= res!154986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!294783 () Bool)

(declare-fun res!154989 () Bool)

(assert (=> b!294783 (=> (not res!154989) (not e!186345))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!294783 (= res!154989 (validKeyInArray!0 k!2524))))

(declare-fun b!294784 () Bool)

(declare-fun res!154985 () Bool)

(assert (=> b!294784 (=> (not res!154985) (not e!186345))))

(declare-fun arrayContainsKey!0 (array!14912 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!294784 (= res!154985 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!154988 () Bool)

(assert (=> start!29022 (=> (not res!154988) (not e!186345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29022 (= res!154988 (validMask!0 mask!3809))))

(assert (=> start!29022 e!186345))

(assert (=> start!29022 true))

(declare-fun array_inv!5023 (array!14912) Bool)

(assert (=> start!29022 (array_inv!5023 a!3312)))

(declare-fun b!294785 () Bool)

(assert (=> b!294785 (= e!186345 e!186347)))

(declare-fun res!154984 () Bool)

(assert (=> b!294785 (=> (not res!154984) (not e!186347))))

(declare-fun lt!146191 () SeekEntryResult!2229)

(assert (=> b!294785 (= res!154984 (or lt!146194 (= lt!146191 (MissingVacant!2229 i!1256))))))

(assert (=> b!294785 (= lt!146194 (= lt!146191 (MissingZero!2229 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14912 (_ BitVec 32)) SeekEntryResult!2229)

(assert (=> b!294785 (= lt!146191 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!29022 res!154988) b!294780))

(assert (= (and b!294780 res!154987) b!294783))

(assert (= (and b!294783 res!154989) b!294784))

(assert (= (and b!294784 res!154985) b!294785))

(assert (= (and b!294785 res!154984) b!294782))

(assert (= (and b!294782 res!154986) b!294781))

(declare-fun m!308111 () Bool)

(assert (=> start!29022 m!308111))

(declare-fun m!308113 () Bool)

(assert (=> start!29022 m!308113))

(declare-fun m!308115 () Bool)

(assert (=> b!294782 m!308115))

(declare-fun m!308117 () Bool)

(assert (=> b!294785 m!308117))

(declare-fun m!308119 () Bool)

(assert (=> b!294784 m!308119))

(declare-fun m!308121 () Bool)

(assert (=> b!294783 m!308121))

(declare-fun m!308123 () Bool)

(assert (=> b!294781 m!308123))

(declare-fun m!308125 () Bool)

(assert (=> b!294781 m!308125))

(declare-fun m!308127 () Bool)

(assert (=> b!294781 m!308127))

(declare-fun m!308129 () Bool)

(assert (=> b!294781 m!308129))

(declare-fun m!308131 () Bool)

(assert (=> b!294781 m!308131))

(push 1)

(assert (not b!294784))

(assert (not b!294781))

(assert (not start!29022))

(assert (not b!294782))

(assert (not b!294783))

(assert (not b!294785))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66793 () Bool)

(declare-fun res!155042 () Bool)

(declare-fun e!186385 () Bool)

(assert (=> d!66793 (=> res!155042 e!186385)))

(assert (=> d!66793 (= res!155042 (= (select (arr!7069 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66793 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!186385)))

(declare-fun b!294844 () Bool)

(declare-fun e!186386 () Bool)

(assert (=> b!294844 (= e!186385 e!186386)))

(declare-fun res!155043 () Bool)

(assert (=> b!294844 (=> (not res!155043) (not e!186386))))

(assert (=> b!294844 (= res!155043 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7421 a!3312)))))

(declare-fun b!294845 () Bool)

(assert (=> b!294845 (= e!186386 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66793 (not res!155042)) b!294844))

(assert (= (and b!294844 res!155043) b!294845))

(declare-fun m!308191 () Bool)

(assert (=> d!66793 m!308191))

(declare-fun m!308193 () Bool)

(assert (=> b!294845 m!308193))

(assert (=> b!294784 d!66793))

(declare-fun d!66801 () Bool)

(assert (=> d!66801 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29022 d!66801))

(declare-fun d!66805 () Bool)

(assert (=> d!66805 (= (array_inv!5023 a!3312) (bvsge (size!7421 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29022 d!66805))

(declare-fun d!66807 () Bool)

(assert (=> d!66807 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!294783 d!66807))

(declare-fun b!294918 () Bool)

(declare-fun e!186426 () SeekEntryResult!2229)

(assert (=> b!294918 (= e!186426 (Intermediate!2229 true lt!146192 #b00000000000000000000000000000000))))

(declare-fun d!66809 () Bool)

(declare-fun e!186429 () Bool)

(assert (=> d!66809 e!186429))

(declare-fun c!47504 () Bool)

(declare-fun lt!146262 () SeekEntryResult!2229)

(assert (=> d!66809 (= c!47504 (and (is-Intermediate!2229 lt!146262) (undefined!3041 lt!146262)))))

(assert (=> d!66809 (= lt!146262 e!186426)))

(declare-fun c!47505 () Bool)

(assert (=> d!66809 (= c!47505 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!146263 () (_ BitVec 64))

(assert (=> d!66809 (= lt!146263 (select (arr!7069 (array!14913 (store (arr!7069 a!3312) i!1256 k!2524) (size!7421 a!3312))) lt!146192))))

(assert (=> d!66809 (validMask!0 mask!3809)))

(assert (=> d!66809 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146192 k!2524 (array!14913 (store (arr!7069 a!3312) i!1256 k!2524) (size!7421 a!3312)) mask!3809) lt!146262)))

(declare-fun b!294919 () Bool)

(declare-fun e!186430 () Bool)

(assert (=> b!294919 (= e!186429 e!186430)))

(declare-fun res!155065 () Bool)

(assert (=> b!294919 (= res!155065 (and (is-Intermediate!2229 lt!146262) (not (undefined!3041 lt!146262)) (bvslt (x!29266 lt!146262) #b01111111111111111111111111111110) (bvsge (x!29266 lt!146262) #b00000000000000000000000000000000) (bvsge (x!29266 lt!146262) #b00000000000000000000000000000000)))))

(assert (=> b!294919 (=> (not res!155065) (not e!186430))))

(declare-fun b!294920 () Bool)

(declare-fun e!186428 () SeekEntryResult!2229)

(assert (=> b!294920 (= e!186426 e!186428)))

(declare-fun c!47503 () Bool)

(assert (=> b!294920 (= c!47503 (or (= lt!146263 k!2524) (= (bvadd lt!146263 lt!146263) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294921 () Bool)

(assert (=> b!294921 (and (bvsge (index!11088 lt!146262) #b00000000000000000000000000000000) (bvslt (index!11088 lt!146262) (size!7421 (array!14913 (store (arr!7069 a!3312) i!1256 k!2524) (size!7421 a!3312)))))))

(declare-fun e!186427 () Bool)

(assert (=> b!294921 (= e!186427 (= (select (arr!7069 (array!14913 (store (arr!7069 a!3312) i!1256 k!2524) (size!7421 a!3312))) (index!11088 lt!146262)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!294922 () Bool)

(assert (=> b!294922 (= e!186428 (Intermediate!2229 false lt!146192 #b00000000000000000000000000000000))))

(declare-fun b!294923 () Bool)

(assert (=> b!294923 (and (bvsge (index!11088 lt!146262) #b00000000000000000000000000000000) (bvslt (index!11088 lt!146262) (size!7421 (array!14913 (store (arr!7069 a!3312) i!1256 k!2524) (size!7421 a!3312)))))))

(declare-fun res!155064 () Bool)

(assert (=> b!294923 (= res!155064 (= (select (arr!7069 (array!14913 (store (arr!7069 a!3312) i!1256 k!2524) (size!7421 a!3312))) (index!11088 lt!146262)) k!2524))))

(assert (=> b!294923 (=> res!155064 e!186427)))

(assert (=> b!294923 (= e!186430 e!186427)))

(declare-fun b!294924 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294924 (= e!186428 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146192 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14913 (store (arr!7069 a!3312) i!1256 k!2524) (size!7421 a!3312)) mask!3809))))

(declare-fun b!294925 () Bool)

(assert (=> b!294925 (and (bvsge (index!11088 lt!146262) #b00000000000000000000000000000000) (bvslt (index!11088 lt!146262) (size!7421 (array!14913 (store (arr!7069 a!3312) i!1256 k!2524) (size!7421 a!3312)))))))

(declare-fun res!155063 () Bool)

(assert (=> b!294925 (= res!155063 (= (select (arr!7069 (array!14913 (store (arr!7069 a!3312) i!1256 k!2524) (size!7421 a!3312))) (index!11088 lt!146262)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294925 (=> res!155063 e!186427)))

(declare-fun b!294926 () Bool)

(assert (=> b!294926 (= e!186429 (bvsge (x!29266 lt!146262) #b01111111111111111111111111111110))))

(assert (= (and d!66809 c!47505) b!294918))

(assert (= (and d!66809 (not c!47505)) b!294920))

(assert (= (and b!294920 c!47503) b!294922))

(assert (= (and b!294920 (not c!47503)) b!294924))

(assert (= (and d!66809 c!47504) b!294926))

(assert (= (and d!66809 (not c!47504)) b!294919))

(assert (= (and b!294919 res!155065) b!294923))

(assert (= (and b!294923 (not res!155064)) b!294925))

(assert (= (and b!294925 (not res!155063)) b!294921))

(declare-fun m!308221 () Bool)

(assert (=> d!66809 m!308221))

(assert (=> d!66809 m!308111))

(declare-fun m!308223 () Bool)

(assert (=> b!294925 m!308223))

(declare-fun m!308225 () Bool)

(assert (=> b!294924 m!308225))

(assert (=> b!294924 m!308225))

(declare-fun m!308227 () Bool)

(assert (=> b!294924 m!308227))

(assert (=> b!294921 m!308223))

(assert (=> b!294923 m!308223))

(assert (=> b!294781 d!66809))

(declare-fun b!294927 () Bool)

(declare-fun e!186431 () SeekEntryResult!2229)

(assert (=> b!294927 (= e!186431 (Intermediate!2229 true lt!146192 #b00000000000000000000000000000000))))

(declare-fun d!66819 () Bool)

(declare-fun e!186434 () Bool)

(assert (=> d!66819 e!186434))

(declare-fun c!47507 () Bool)

(declare-fun lt!146264 () SeekEntryResult!2229)

(assert (=> d!66819 (= c!47507 (and (is-Intermediate!2229 lt!146264) (undefined!3041 lt!146264)))))

(assert (=> d!66819 (= lt!146264 e!186431)))

(declare-fun c!47508 () Bool)

(assert (=> d!66819 (= c!47508 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!146265 () (_ BitVec 64))

(assert (=> d!66819 (= lt!146265 (select (arr!7069 a!3312) lt!146192))))

(assert (=> d!66819 (validMask!0 mask!3809)))

(assert (=> d!66819 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146192 k!2524 a!3312 mask!3809) lt!146264)))

(declare-fun b!294928 () Bool)

(declare-fun e!186435 () Bool)

(assert (=> b!294928 (= e!186434 e!186435)))

(declare-fun res!155068 () Bool)

(assert (=> b!294928 (= res!155068 (and (is-Intermediate!2229 lt!146264) (not (undefined!3041 lt!146264)) (bvslt (x!29266 lt!146264) #b01111111111111111111111111111110) (bvsge (x!29266 lt!146264) #b00000000000000000000000000000000) (bvsge (x!29266 lt!146264) #b00000000000000000000000000000000)))))

(assert (=> b!294928 (=> (not res!155068) (not e!186435))))

(declare-fun b!294929 () Bool)

(declare-fun e!186433 () SeekEntryResult!2229)

(assert (=> b!294929 (= e!186431 e!186433)))

(declare-fun c!47506 () Bool)

(assert (=> b!294929 (= c!47506 (or (= lt!146265 k!2524) (= (bvadd lt!146265 lt!146265) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294930 () Bool)

(assert (=> b!294930 (and (bvsge (index!11088 lt!146264) #b00000000000000000000000000000000) (bvslt (index!11088 lt!146264) (size!7421 a!3312)))))

(declare-fun e!186432 () Bool)

(assert (=> b!294930 (= e!186432 (= (select (arr!7069 a!3312) (index!11088 lt!146264)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!294931 () Bool)

(assert (=> b!294931 (= e!186433 (Intermediate!2229 false lt!146192 #b00000000000000000000000000000000))))

(declare-fun b!294932 () Bool)

(assert (=> b!294932 (and (bvsge (index!11088 lt!146264) #b00000000000000000000000000000000) (bvslt (index!11088 lt!146264) (size!7421 a!3312)))))

(declare-fun res!155067 () Bool)

(assert (=> b!294932 (= res!155067 (= (select (arr!7069 a!3312) (index!11088 lt!146264)) k!2524))))

(assert (=> b!294932 (=> res!155067 e!186432)))

(assert (=> b!294932 (= e!186435 e!186432)))

(declare-fun b!294933 () Bool)

(assert (=> b!294933 (= e!186433 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146192 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!294934 () Bool)

(assert (=> b!294934 (and (bvsge (index!11088 lt!146264) #b00000000000000000000000000000000) (bvslt (index!11088 lt!146264) (size!7421 a!3312)))))

(declare-fun res!155066 () Bool)

(assert (=> b!294934 (= res!155066 (= (select (arr!7069 a!3312) (index!11088 lt!146264)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294934 (=> res!155066 e!186432)))

(declare-fun b!294935 () Bool)

(assert (=> b!294935 (= e!186434 (bvsge (x!29266 lt!146264) #b01111111111111111111111111111110))))

(assert (= (and d!66819 c!47508) b!294927))

(assert (= (and d!66819 (not c!47508)) b!294929))

(assert (= (and b!294929 c!47506) b!294931))

(assert (= (and b!294929 (not c!47506)) b!294933))

(assert (= (and d!66819 c!47507) b!294935))

(assert (= (and d!66819 (not c!47507)) b!294928))

(assert (= (and b!294928 res!155068) b!294932))

(assert (= (and b!294932 (not res!155067)) b!294934))

(assert (= (and b!294934 (not res!155066)) b!294930))

(declare-fun m!308229 () Bool)

(assert (=> d!66819 m!308229))

(assert (=> d!66819 m!308111))

(declare-fun m!308231 () Bool)

(assert (=> b!294934 m!308231))

(assert (=> b!294933 m!308225))

(assert (=> b!294933 m!308225))

(declare-fun m!308233 () Bool)

(assert (=> b!294933 m!308233))

(assert (=> b!294930 m!308231))

(assert (=> b!294932 m!308231))

(assert (=> b!294781 d!66819))

(declare-fun d!66821 () Bool)

(declare-fun lt!146284 () (_ BitVec 32))

(declare-fun lt!146283 () (_ BitVec 32))

(assert (=> d!66821 (= lt!146284 (bvmul (bvxor lt!146283 (bvlshr lt!146283 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66821 (= lt!146283 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66821 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!155073 (let ((h!5307 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29272 (bvmul (bvxor h!5307 (bvlshr h!5307 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29272 (bvlshr x!29272 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!155073 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!155073 #b00000000000000000000000000000000))))))

(assert (=> d!66821 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!146284 (bvlshr lt!146284 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!294781 d!66821))

(declare-fun b!294992 () Bool)

(declare-fun e!186472 () Bool)

(declare-fun e!186473 () Bool)

(assert (=> b!294992 (= e!186472 e!186473)))

(declare-fun c!47526 () Bool)

(assert (=> b!294992 (= c!47526 (validKeyInArray!0 (select (arr!7069 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!294993 () Bool)

(declare-fun e!186471 () Bool)

(declare-fun call!25722 () Bool)

(assert (=> b!294993 (= e!186471 call!25722)))

(declare-fun d!66825 () Bool)

(declare-fun res!155094 () Bool)

(assert (=> d!66825 (=> res!155094 e!186472)))

(assert (=> d!66825 (= res!155094 (bvsge #b00000000000000000000000000000000 (size!7421 a!3312)))))

(assert (=> d!66825 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!186472)))

(declare-fun b!294994 () Bool)

(assert (=> b!294994 (= e!186473 call!25722)))

(declare-fun b!294995 () Bool)

(assert (=> b!294995 (= e!186473 e!186471)))

(declare-fun lt!146296 () (_ BitVec 64))

(assert (=> b!294995 (= lt!146296 (select (arr!7069 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9205 0))(
  ( (Unit!9206) )
))
(declare-fun lt!146295 () Unit!9205)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14912 (_ BitVec 64) (_ BitVec 32)) Unit!9205)

(assert (=> b!294995 (= lt!146295 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!146296 #b00000000000000000000000000000000))))

(assert (=> b!294995 (arrayContainsKey!0 a!3312 lt!146296 #b00000000000000000000000000000000)))

(declare-fun lt!146297 () Unit!9205)

(assert (=> b!294995 (= lt!146297 lt!146295)))

(declare-fun res!155093 () Bool)

(assert (=> b!294995 (= res!155093 (= (seekEntryOrOpen!0 (select (arr!7069 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2229 #b00000000000000000000000000000000)))))

(assert (=> b!294995 (=> (not res!155093) (not e!186471))))

(declare-fun bm!25719 () Bool)

(assert (=> bm!25719 (= call!25722 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!66825 (not res!155094)) b!294992))

(assert (= (and b!294992 c!47526) b!294995))

(assert (= (and b!294992 (not c!47526)) b!294994))

(assert (= (and b!294995 res!155093) b!294993))

(assert (= (or b!294993 b!294994) bm!25719))

(assert (=> b!294992 m!308191))

(assert (=> b!294992 m!308191))

(declare-fun m!308261 () Bool)

(assert (=> b!294992 m!308261))

(assert (=> b!294995 m!308191))

(declare-fun m!308263 () Bool)

(assert (=> b!294995 m!308263))

(declare-fun m!308265 () Bool)

(assert (=> b!294995 m!308265))

(assert (=> b!294995 m!308191))

(declare-fun m!308267 () Bool)

(assert (=> b!294995 m!308267))

(declare-fun m!308269 () Bool)

(assert (=> bm!25719 m!308269))

(assert (=> b!294782 d!66825))

(declare-fun b!295026 () Bool)

(declare-fun lt!146321 () SeekEntryResult!2229)

(declare-fun e!186491 () SeekEntryResult!2229)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14912 (_ BitVec 32)) SeekEntryResult!2229)

(assert (=> b!295026 (= e!186491 (seekKeyOrZeroReturnVacant!0 (x!29266 lt!146321) (index!11088 lt!146321) (index!11088 lt!146321) k!2524 a!3312 mask!3809))))

(declare-fun b!295027 () Bool)

(declare-fun e!186490 () SeekEntryResult!2229)

(assert (=> b!295027 (= e!186490 (Found!2229 (index!11088 lt!146321)))))

(declare-fun b!295028 () Bool)

(declare-fun e!186489 () SeekEntryResult!2229)

(assert (=> b!295028 (= e!186489 Undefined!2229)))

(declare-fun d!66835 () Bool)

(declare-fun lt!146319 () SeekEntryResult!2229)

(assert (=> d!66835 (and (or (is-Undefined!2229 lt!146319) (not (is-Found!2229 lt!146319)) (and (bvsge (index!11087 lt!146319) #b00000000000000000000000000000000) (bvslt (index!11087 lt!146319) (size!7421 a!3312)))) (or (is-Undefined!2229 lt!146319) (is-Found!2229 lt!146319) (not (is-MissingZero!2229 lt!146319)) (and (bvsge (index!11086 lt!146319) #b00000000000000000000000000000000) (bvslt (index!11086 lt!146319) (size!7421 a!3312)))) (or (is-Undefined!2229 lt!146319) (is-Found!2229 lt!146319) (is-MissingZero!2229 lt!146319) (not (is-MissingVacant!2229 lt!146319)) (and (bvsge (index!11089 lt!146319) #b00000000000000000000000000000000) (bvslt (index!11089 lt!146319) (size!7421 a!3312)))) (or (is-Undefined!2229 lt!146319) (ite (is-Found!2229 lt!146319) (= (select (arr!7069 a!3312) (index!11087 lt!146319)) k!2524) (ite (is-MissingZero!2229 lt!146319) (= (select (arr!7069 a!3312) (index!11086 lt!146319)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2229 lt!146319) (= (select (arr!7069 a!3312) (index!11089 lt!146319)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66835 (= lt!146319 e!186489)))

(declare-fun c!47543 () Bool)

(assert (=> d!66835 (= c!47543 (and (is-Intermediate!2229 lt!146321) (undefined!3041 lt!146321)))))

(assert (=> d!66835 (= lt!146321 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66835 (validMask!0 mask!3809)))

(assert (=> d!66835 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!146319)))

(declare-fun b!295029 () Bool)

(assert (=> b!295029 (= e!186489 e!186490)))

(declare-fun lt!146320 () (_ BitVec 64))

(assert (=> b!295029 (= lt!146320 (select (arr!7069 a!3312) (index!11088 lt!146321)))))

(declare-fun c!47544 () Bool)

(assert (=> b!295029 (= c!47544 (= lt!146320 k!2524))))

(declare-fun b!295030 () Bool)

(declare-fun c!47542 () Bool)

(assert (=> b!295030 (= c!47542 (= lt!146320 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!295030 (= e!186490 e!186491)))

(declare-fun b!295031 () Bool)

(assert (=> b!295031 (= e!186491 (MissingZero!2229 (index!11088 lt!146321)))))

(assert (= (and d!66835 c!47543) b!295028))

(assert (= (and d!66835 (not c!47543)) b!295029))

(assert (= (and b!295029 c!47544) b!295027))

(assert (= (and b!295029 (not c!47544)) b!295030))

(assert (= (and b!295030 c!47542) b!295031))

(assert (= (and b!295030 (not c!47542)) b!295026))

(declare-fun m!308283 () Bool)

(assert (=> b!295026 m!308283))

(assert (=> d!66835 m!308131))

(declare-fun m!308285 () Bool)

(assert (=> d!66835 m!308285))

(declare-fun m!308287 () Bool)

(assert (=> d!66835 m!308287))

(assert (=> d!66835 m!308111))

(assert (=> d!66835 m!308131))

(declare-fun m!308289 () Bool)

(assert (=> d!66835 m!308289))

(declare-fun m!308291 () Bool)

(assert (=> d!66835 m!308291))

(declare-fun m!308293 () Bool)

(assert (=> b!295029 m!308293))

(assert (=> b!294785 d!66835))

(push 1)

