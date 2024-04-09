; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86260 () Bool)

(assert start!86260)

(declare-fun res!668203 () Bool)

(declare-fun e!562975 () Bool)

(assert (=> start!86260 (=> (not res!668203) (not e!562975))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86260 (= res!668203 (validMask!0 mask!3464))))

(assert (=> start!86260 e!562975))

(declare-datatypes ((array!63115 0))(
  ( (array!63116 (arr!30382 (Array (_ BitVec 32) (_ BitVec 64))) (size!30885 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63115)

(declare-fun array_inv!23372 (array!63115) Bool)

(assert (=> start!86260 (array_inv!23372 a!3219)))

(assert (=> start!86260 true))

(declare-fun b!998250 () Bool)

(declare-fun res!668206 () Bool)

(assert (=> b!998250 (=> (not res!668206) (not e!562975))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63115 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998250 (= res!668206 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998251 () Bool)

(declare-fun res!668212 () Bool)

(declare-fun e!562976 () Bool)

(assert (=> b!998251 (=> (not res!668212) (not e!562976))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9314 0))(
  ( (MissingZero!9314 (index!39626 (_ BitVec 32))) (Found!9314 (index!39627 (_ BitVec 32))) (Intermediate!9314 (undefined!10126 Bool) (index!39628 (_ BitVec 32)) (x!87091 (_ BitVec 32))) (Undefined!9314) (MissingVacant!9314 (index!39629 (_ BitVec 32))) )
))
(declare-fun lt!441639 () SeekEntryResult!9314)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63115 (_ BitVec 32)) SeekEntryResult!9314)

(assert (=> b!998251 (= res!668212 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30382 a!3219) j!170) a!3219 mask!3464) lt!441639))))

(declare-fun b!998252 () Bool)

(declare-fun e!562973 () Bool)

(assert (=> b!998252 (= e!562975 e!562973)))

(declare-fun res!668209 () Bool)

(assert (=> b!998252 (=> (not res!668209) (not e!562973))))

(declare-fun lt!441638 () SeekEntryResult!9314)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998252 (= res!668209 (or (= lt!441638 (MissingVacant!9314 i!1194)) (= lt!441638 (MissingZero!9314 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63115 (_ BitVec 32)) SeekEntryResult!9314)

(assert (=> b!998252 (= lt!441638 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!998253 () Bool)

(declare-fun res!668208 () Bool)

(assert (=> b!998253 (=> (not res!668208) (not e!562975))))

(assert (=> b!998253 (= res!668208 (and (= (size!30885 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30885 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30885 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998254 () Bool)

(declare-fun res!668207 () Bool)

(assert (=> b!998254 (=> (not res!668207) (not e!562975))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998254 (= res!668207 (validKeyInArray!0 (select (arr!30382 a!3219) j!170)))))

(declare-fun b!998255 () Bool)

(assert (=> b!998255 (= e!562973 e!562976)))

(declare-fun res!668205 () Bool)

(assert (=> b!998255 (=> (not res!668205) (not e!562976))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998255 (= res!668205 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30382 a!3219) j!170) mask!3464) (select (arr!30382 a!3219) j!170) a!3219 mask!3464) lt!441639))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998255 (= lt!441639 (Intermediate!9314 false resIndex!38 resX!38))))

(declare-fun b!998256 () Bool)

(declare-fun res!668210 () Bool)

(assert (=> b!998256 (=> (not res!668210) (not e!562973))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63115 (_ BitVec 32)) Bool)

(assert (=> b!998256 (= res!668210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998257 () Bool)

(declare-fun res!668204 () Bool)

(assert (=> b!998257 (=> (not res!668204) (not e!562973))))

(assert (=> b!998257 (= res!668204 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30885 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30885 a!3219))))))

(declare-fun b!998258 () Bool)

(declare-fun res!668202 () Bool)

(assert (=> b!998258 (=> (not res!668202) (not e!562975))))

(assert (=> b!998258 (= res!668202 (validKeyInArray!0 k!2224))))

(declare-fun b!998259 () Bool)

(declare-fun res!668211 () Bool)

(assert (=> b!998259 (=> (not res!668211) (not e!562973))))

(declare-datatypes ((List!21184 0))(
  ( (Nil!21181) (Cons!21180 (h!22351 (_ BitVec 64)) (t!30193 List!21184)) )
))
(declare-fun arrayNoDuplicates!0 (array!63115 (_ BitVec 32) List!21184) Bool)

(assert (=> b!998259 (= res!668211 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21181))))

(declare-fun b!998260 () Bool)

(assert (=> b!998260 (= e!562976 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsgt mask!3464 #b00111111111111111111111111111111)))))

(assert (= (and start!86260 res!668203) b!998253))

(assert (= (and b!998253 res!668208) b!998254))

(assert (= (and b!998254 res!668207) b!998258))

(assert (= (and b!998258 res!668202) b!998250))

(assert (= (and b!998250 res!668206) b!998252))

(assert (= (and b!998252 res!668209) b!998256))

(assert (= (and b!998256 res!668210) b!998259))

(assert (= (and b!998259 res!668211) b!998257))

(assert (= (and b!998257 res!668204) b!998255))

(assert (= (and b!998255 res!668205) b!998251))

(assert (= (and b!998251 res!668212) b!998260))

(declare-fun m!924909 () Bool)

(assert (=> b!998254 m!924909))

(assert (=> b!998254 m!924909))

(declare-fun m!924911 () Bool)

(assert (=> b!998254 m!924911))

(declare-fun m!924913 () Bool)

(assert (=> b!998256 m!924913))

(declare-fun m!924915 () Bool)

(assert (=> b!998250 m!924915))

(assert (=> b!998251 m!924909))

(assert (=> b!998251 m!924909))

(declare-fun m!924917 () Bool)

(assert (=> b!998251 m!924917))

(assert (=> b!998255 m!924909))

(assert (=> b!998255 m!924909))

(declare-fun m!924919 () Bool)

(assert (=> b!998255 m!924919))

(assert (=> b!998255 m!924919))

(assert (=> b!998255 m!924909))

(declare-fun m!924921 () Bool)

(assert (=> b!998255 m!924921))

(declare-fun m!924923 () Bool)

(assert (=> b!998258 m!924923))

(declare-fun m!924925 () Bool)

(assert (=> b!998259 m!924925))

(declare-fun m!924927 () Bool)

(assert (=> start!86260 m!924927))

(declare-fun m!924929 () Bool)

(assert (=> start!86260 m!924929))

(declare-fun m!924931 () Bool)

(assert (=> b!998252 m!924931))

(push 1)

(assert (not b!998251))

(assert (not b!998250))

(assert (not b!998255))

(assert (not b!998254))

(assert (not start!86260))

(assert (not b!998252))

(assert (not b!998258))

(assert (not b!998256))

(assert (not b!998259))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!998337 () Bool)

(declare-fun e!563011 () Bool)

(declare-fun contains!5882 (List!21184 (_ BitVec 64)) Bool)

(assert (=> b!998337 (= e!563011 (contains!5882 Nil!21181 (select (arr!30382 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!998338 () Bool)

(declare-fun e!563009 () Bool)

(declare-fun e!563010 () Bool)

(assert (=> b!998338 (= e!563009 e!563010)))

(declare-fun c!101172 () Bool)

(assert (=> b!998338 (= c!101172 (validKeyInArray!0 (select (arr!30382 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!998339 () Bool)

(declare-fun call!42280 () Bool)

(assert (=> b!998339 (= e!563010 call!42280)))

(declare-fun bm!42277 () Bool)

(assert (=> bm!42277 (= call!42280 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101172 (Cons!21180 (select (arr!30382 a!3219) #b00000000000000000000000000000000) Nil!21181) Nil!21181)))))

(declare-fun d!119123 () Bool)

(declare-fun res!668287 () Bool)

(declare-fun e!563012 () Bool)

(assert (=> d!119123 (=> res!668287 e!563012)))

(assert (=> d!119123 (= res!668287 (bvsge #b00000000000000000000000000000000 (size!30885 a!3219)))))

(assert (=> d!119123 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21181) e!563012)))

(declare-fun b!998340 () Bool)

(assert (=> b!998340 (= e!563010 call!42280)))

(declare-fun b!998341 () Bool)

(assert (=> b!998341 (= e!563012 e!563009)))

(declare-fun res!668285 () Bool)

(assert (=> b!998341 (=> (not res!668285) (not e!563009))))

(assert (=> b!998341 (= res!668285 (not e!563011))))

(declare-fun res!668286 () Bool)

(assert (=> b!998341 (=> (not res!668286) (not e!563011))))

(assert (=> b!998341 (= res!668286 (validKeyInArray!0 (select (arr!30382 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119123 (not res!668287)) b!998341))

(assert (= (and b!998341 res!668286) b!998337))

(assert (= (and b!998341 res!668285) b!998338))

(assert (= (and b!998338 c!101172) b!998339))

(assert (= (and b!998338 (not c!101172)) b!998340))

(assert (= (or b!998339 b!998340) bm!42277))

(declare-fun m!924981 () Bool)

(assert (=> b!998337 m!924981))

(assert (=> b!998337 m!924981))

(declare-fun m!924983 () Bool)

(assert (=> b!998337 m!924983))

(assert (=> b!998338 m!924981))

(assert (=> b!998338 m!924981))

(declare-fun m!924985 () Bool)

(assert (=> b!998338 m!924985))

(assert (=> bm!42277 m!924981))

(declare-fun m!924987 () Bool)

(assert (=> bm!42277 m!924987))

(assert (=> b!998341 m!924981))

(assert (=> b!998341 m!924981))

(assert (=> b!998341 m!924985))

(assert (=> b!998259 d!119123))

(declare-fun d!119125 () Bool)

(assert (=> d!119125 (= (validKeyInArray!0 (select (arr!30382 a!3219) j!170)) (and (not (= (select (arr!30382 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30382 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!998254 d!119125))

(declare-fun e!563041 () SeekEntryResult!9314)

(declare-fun b!998387 () Bool)

(assert (=> b!998387 (= e!563041 (Intermediate!9314 true (toIndex!0 (select (arr!30382 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!998388 () Bool)

(declare-fun lt!441668 () SeekEntryResult!9314)

(assert (=> b!998388 (and (bvsge (index!39628 lt!441668) #b00000000000000000000000000000000) (bvslt (index!39628 lt!441668) (size!30885 a!3219)))))

(declare-fun e!563039 () Bool)

(assert (=> b!998388 (= e!563039 (= (select (arr!30382 a!3219) (index!39628 lt!441668)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!563040 () SeekEntryResult!9314)

(declare-fun b!998389 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998389 (= e!563040 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30382 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30382 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!998390 () Bool)

(declare-fun e!563038 () Bool)

(assert (=> b!998390 (= e!563038 (bvsge (x!87091 lt!441668) #b01111111111111111111111111111110))))

(declare-fun d!119127 () Bool)

(assert (=> d!119127 e!563038))

(declare-fun c!101189 () Bool)

(assert (=> d!119127 (= c!101189 (and (is-Intermediate!9314 lt!441668) (undefined!10126 lt!441668)))))

(assert (=> d!119127 (= lt!441668 e!563041)))

(declare-fun c!101188 () Bool)

(assert (=> d!119127 (= c!101188 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!441669 () (_ BitVec 64))

(assert (=> d!119127 (= lt!441669 (select (arr!30382 a!3219) (toIndex!0 (select (arr!30382 a!3219) j!170) mask!3464)))))

(assert (=> d!119127 (validMask!0 mask!3464)))

(assert (=> d!119127 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30382 a!3219) j!170) mask!3464) (select (arr!30382 a!3219) j!170) a!3219 mask!3464) lt!441668)))

(declare-fun b!998391 () Bool)

(assert (=> b!998391 (and (bvsge (index!39628 lt!441668) #b00000000000000000000000000000000) (bvslt (index!39628 lt!441668) (size!30885 a!3219)))))

(declare-fun res!668304 () Bool)

(assert (=> b!998391 (= res!668304 (= (select (arr!30382 a!3219) (index!39628 lt!441668)) (select (arr!30382 a!3219) j!170)))))

(assert (=> b!998391 (=> res!668304 e!563039)))

(declare-fun e!563042 () Bool)

(assert (=> b!998391 (= e!563042 e!563039)))

(declare-fun b!998392 () Bool)

(assert (=> b!998392 (= e!563040 (Intermediate!9314 false (toIndex!0 (select (arr!30382 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!998393 () Bool)

(assert (=> b!998393 (and (bvsge (index!39628 lt!441668) #b00000000000000000000000000000000) (bvslt (index!39628 lt!441668) (size!30885 a!3219)))))

(declare-fun res!668305 () Bool)

(assert (=> b!998393 (= res!668305 (= (select (arr!30382 a!3219) (index!39628 lt!441668)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!998393 (=> res!668305 e!563039)))

(declare-fun b!998394 () Bool)

(assert (=> b!998394 (= e!563041 e!563040)))

(declare-fun c!101190 () Bool)

(assert (=> b!998394 (= c!101190 (or (= lt!441669 (select (arr!30382 a!3219) j!170)) (= (bvadd lt!441669 lt!441669) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!998395 () Bool)

(assert (=> b!998395 (= e!563038 e!563042)))

(declare-fun res!668306 () Bool)

(assert (=> b!998395 (= res!668306 (and (is-Intermediate!9314 lt!441668) (not (undefined!10126 lt!441668)) (bvslt (x!87091 lt!441668) #b01111111111111111111111111111110) (bvsge (x!87091 lt!441668) #b00000000000000000000000000000000) (bvsge (x!87091 lt!441668) #b00000000000000000000000000000000)))))

(assert (=> b!998395 (=> (not res!668306) (not e!563042))))

(assert (= (and d!119127 c!101188) b!998387))

(assert (= (and d!119127 (not c!101188)) b!998394))

(assert (= (and b!998394 c!101190) b!998392))

(assert (= (and b!998394 (not c!101190)) b!998389))

(assert (= (and d!119127 c!101189) b!998390))

(assert (= (and d!119127 (not c!101189)) b!998395))

(assert (= (and b!998395 res!668306) b!998391))

(assert (= (and b!998391 (not res!668304)) b!998393))

(assert (= (and b!998393 (not res!668305)) b!998388))

(assert (=> d!119127 m!924919))

(declare-fun m!924997 () Bool)

(assert (=> d!119127 m!924997))

(assert (=> d!119127 m!924927))

(declare-fun m!924999 () Bool)

(assert (=> b!998391 m!924999))

(assert (=> b!998393 m!924999))

(assert (=> b!998389 m!924919))

(declare-fun m!925001 () Bool)

(assert (=> b!998389 m!925001))

(assert (=> b!998389 m!925001))

(assert (=> b!998389 m!924909))

(declare-fun m!925003 () Bool)

(assert (=> b!998389 m!925003))

(assert (=> b!998388 m!924999))

(assert (=> b!998255 d!119127))

(declare-fun d!119135 () Bool)

(declare-fun lt!441684 () (_ BitVec 32))

(declare-fun lt!441683 () (_ BitVec 32))

(assert (=> d!119135 (= lt!441684 (bvmul (bvxor lt!441683 (bvlshr lt!441683 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119135 (= lt!441683 ((_ extract 31 0) (bvand (bvxor (select (arr!30382 a!3219) j!170) (bvlshr (select (arr!30382 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119135 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!668307 (let ((h!22355 ((_ extract 31 0) (bvand (bvxor (select (arr!30382 a!3219) j!170) (bvlshr (select (arr!30382 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87097 (bvmul (bvxor h!22355 (bvlshr h!22355 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87097 (bvlshr x!87097 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!668307 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!668307 #b00000000000000000000000000000000))))))

(assert (=> d!119135 (= (toIndex!0 (select (arr!30382 a!3219) j!170) mask!3464) (bvand (bvxor lt!441684 (bvlshr lt!441684 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!998255 d!119135))

(declare-fun d!119137 () Bool)

(declare-fun res!668312 () Bool)

(declare-fun e!563056 () Bool)

(assert (=> d!119137 (=> res!668312 e!563056)))

(assert (=> d!119137 (= res!668312 (= (select (arr!30382 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!119137 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!563056)))

(declare-fun b!998418 () Bool)

(declare-fun e!563057 () Bool)

(assert (=> b!998418 (= e!563056 e!563057)))

(declare-fun res!668313 () Bool)

(assert (=> b!998418 (=> (not res!668313) (not e!563057))))

(assert (=> b!998418 (= res!668313 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30885 a!3219)))))

(declare-fun b!998419 () Bool)

(assert (=> b!998419 (= e!563057 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119137 (not res!668312)) b!998418))

(assert (= (and b!998418 res!668313) b!998419))

(assert (=> d!119137 m!924981))

(declare-fun m!925019 () Bool)

(assert (=> b!998419 m!925019))

(assert (=> b!998250 d!119137))

(declare-fun b!998446 () Bool)

(declare-fun e!563075 () Bool)

(declare-fun call!42283 () Bool)

(assert (=> b!998446 (= e!563075 call!42283)))

(declare-fun d!119141 () Bool)

(declare-fun res!668319 () Bool)

(declare-fun e!563074 () Bool)

(assert (=> d!119141 (=> res!668319 e!563074)))

(assert (=> d!119141 (= res!668319 (bvsge #b00000000000000000000000000000000 (size!30885 a!3219)))))

(assert (=> d!119141 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!563074)))

(declare-fun b!998447 () Bool)

(declare-fun e!563073 () Bool)

(assert (=> b!998447 (= e!563073 call!42283)))

(declare-fun bm!42280 () Bool)

(assert (=> bm!42280 (= call!42283 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!998448 () Bool)

(assert (=> b!998448 (= e!563075 e!563073)))

(declare-fun lt!441702 () (_ BitVec 64))

(assert (=> b!998448 (= lt!441702 (select (arr!30382 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32932 0))(
  ( (Unit!32933) )
))
(declare-fun lt!441701 () Unit!32932)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63115 (_ BitVec 64) (_ BitVec 32)) Unit!32932)

(assert (=> b!998448 (= lt!441701 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!441702 #b00000000000000000000000000000000))))

(assert (=> b!998448 (arrayContainsKey!0 a!3219 lt!441702 #b00000000000000000000000000000000)))

(declare-fun lt!441700 () Unit!32932)

(assert (=> b!998448 (= lt!441700 lt!441701)))

(declare-fun res!668318 () Bool)

(assert (=> b!998448 (= res!668318 (= (seekEntryOrOpen!0 (select (arr!30382 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9314 #b00000000000000000000000000000000)))))

(assert (=> b!998448 (=> (not res!668318) (not e!563073))))

(declare-fun b!998449 () Bool)

(assert (=> b!998449 (= e!563074 e!563075)))

(declare-fun c!101211 () Bool)

(assert (=> b!998449 (= c!101211 (validKeyInArray!0 (select (arr!30382 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119141 (not res!668319)) b!998449))

(assert (= (and b!998449 c!101211) b!998448))

(assert (= (and b!998449 (not c!101211)) b!998446))

(assert (= (and b!998448 res!668318) b!998447))

(assert (= (or b!998447 b!998446) bm!42280))

(declare-fun m!925035 () Bool)

(assert (=> bm!42280 m!925035))

(assert (=> b!998448 m!924981))

(declare-fun m!925037 () Bool)

(assert (=> b!998448 m!925037))

(declare-fun m!925039 () Bool)

(assert (=> b!998448 m!925039))

(assert (=> b!998448 m!924981))

(declare-fun m!925041 () Bool)

(assert (=> b!998448 m!925041))

(assert (=> b!998449 m!924981))

(assert (=> b!998449 m!924981))

(assert (=> b!998449 m!924985))

(assert (=> b!998256 d!119141))

(declare-fun d!119151 () Bool)

(assert (=> d!119151 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86260 d!119151))

(declare-fun d!119157 () Bool)

(assert (=> d!119157 (= (array_inv!23372 a!3219) (bvsge (size!30885 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86260 d!119157))

(declare-fun b!998474 () Bool)

(declare-fun e!563097 () SeekEntryResult!9314)

(assert (=> b!998474 (= e!563097 (Intermediate!9314 true index!1507 x!1245))))

(declare-fun b!998475 () Bool)

(declare-fun lt!441721 () SeekEntryResult!9314)

(assert (=> b!998475 (and (bvsge (index!39628 lt!441721) #b00000000000000000000000000000000) (bvslt (index!39628 lt!441721) (size!30885 a!3219)))))

(declare-fun e!563095 () Bool)

(assert (=> b!998475 (= e!563095 (= (select (arr!30382 a!3219) (index!39628 lt!441721)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!563096 () SeekEntryResult!9314)

(declare-fun b!998476 () Bool)

(assert (=> b!998476 (= e!563096 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30382 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!998477 () Bool)

(declare-fun e!563094 () Bool)

(assert (=> b!998477 (= e!563094 (bvsge (x!87091 lt!441721) #b01111111111111111111111111111110))))

(declare-fun d!119159 () Bool)

(assert (=> d!119159 e!563094))

(declare-fun c!101219 () Bool)

(assert (=> d!119159 (= c!101219 (and (is-Intermediate!9314 lt!441721) (undefined!10126 lt!441721)))))

(assert (=> d!119159 (= lt!441721 e!563097)))

(declare-fun c!101218 () Bool)

(assert (=> d!119159 (= c!101218 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!441722 () (_ BitVec 64))

(assert (=> d!119159 (= lt!441722 (select (arr!30382 a!3219) index!1507))))

(assert (=> d!119159 (validMask!0 mask!3464)))

(assert (=> d!119159 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30382 a!3219) j!170) a!3219 mask!3464) lt!441721)))

(declare-fun b!998478 () Bool)

(assert (=> b!998478 (and (bvsge (index!39628 lt!441721) #b00000000000000000000000000000000) (bvslt (index!39628 lt!441721) (size!30885 a!3219)))))

(declare-fun res!668332 () Bool)

(assert (=> b!998478 (= res!668332 (= (select (arr!30382 a!3219) (index!39628 lt!441721)) (select (arr!30382 a!3219) j!170)))))

(assert (=> b!998478 (=> res!668332 e!563095)))

(declare-fun e!563098 () Bool)

(assert (=> b!998478 (= e!563098 e!563095)))

(declare-fun b!998479 () Bool)

(assert (=> b!998479 (= e!563096 (Intermediate!9314 false index!1507 x!1245))))

(declare-fun b!998480 () Bool)

(assert (=> b!998480 (and (bvsge (index!39628 lt!441721) #b00000000000000000000000000000000) (bvslt (index!39628 lt!441721) (size!30885 a!3219)))))

(declare-fun res!668333 () Bool)

(assert (=> b!998480 (= res!668333 (= (select (arr!30382 a!3219) (index!39628 lt!441721)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!998480 (=> res!668333 e!563095)))

(declare-fun b!998481 () Bool)

(assert (=> b!998481 (= e!563097 e!563096)))

(declare-fun c!101220 () Bool)

(assert (=> b!998481 (= c!101220 (or (= lt!441722 (select (arr!30382 a!3219) j!170)) (= (bvadd lt!441722 lt!441722) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!998482 () Bool)

(assert (=> b!998482 (= e!563094 e!563098)))

(declare-fun res!668334 () Bool)

(assert (=> b!998482 (= res!668334 (and (is-Intermediate!9314 lt!441721) (not (undefined!10126 lt!441721)) (bvslt (x!87091 lt!441721) #b01111111111111111111111111111110) (bvsge (x!87091 lt!441721) #b00000000000000000000000000000000) (bvsge (x!87091 lt!441721) x!1245)))))

(assert (=> b!998482 (=> (not res!668334) (not e!563098))))

(assert (= (and d!119159 c!101218) b!998474))

(assert (= (and d!119159 (not c!101218)) b!998481))

(assert (= (and b!998481 c!101220) b!998479))

(assert (= (and b!998481 (not c!101220)) b!998476))

(assert (= (and d!119159 c!101219) b!998477))

(assert (= (and d!119159 (not c!101219)) b!998482))

(assert (= (and b!998482 res!668334) b!998478))

(assert (= (and b!998478 (not res!668332)) b!998480))

(assert (= (and b!998480 (not res!668333)) b!998475))

(declare-fun m!925067 () Bool)

(assert (=> d!119159 m!925067))

(assert (=> d!119159 m!924927))

(declare-fun m!925069 () Bool)

(assert (=> b!998478 m!925069))

(assert (=> b!998480 m!925069))

(declare-fun m!925071 () Bool)

(assert (=> b!998476 m!925071))

(assert (=> b!998476 m!925071))

(assert (=> b!998476 m!924909))

(declare-fun m!925073 () Bool)

(assert (=> b!998476 m!925073))

(assert (=> b!998475 m!925069))

(assert (=> b!998251 d!119159))

(declare-fun b!998546 () Bool)

(declare-fun c!101236 () Bool)

(declare-fun lt!441731 () (_ BitVec 64))

(assert (=> b!998546 (= c!101236 (= lt!441731 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!563146 () SeekEntryResult!9314)

(declare-fun e!563147 () SeekEntryResult!9314)

(assert (=> b!998546 (= e!563146 e!563147)))

(declare-fun lt!441733 () SeekEntryResult!9314)

(declare-fun b!998547 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63115 (_ BitVec 32)) SeekEntryResult!9314)

(assert (=> b!998547 (= e!563147 (seekKeyOrZeroReturnVacant!0 (x!87091 lt!441733) (index!39628 lt!441733) (index!39628 lt!441733) k!2224 a!3219 mask!3464))))

(declare-fun d!119161 () Bool)

(declare-fun lt!441732 () SeekEntryResult!9314)

(assert (=> d!119161 (and (or (is-Undefined!9314 lt!441732) (not (is-Found!9314 lt!441732)) (and (bvsge (index!39627 lt!441732) #b00000000000000000000000000000000) (bvslt (index!39627 lt!441732) (size!30885 a!3219)))) (or (is-Undefined!9314 lt!441732) (is-Found!9314 lt!441732) (not (is-MissingZero!9314 lt!441732)) (and (bvsge (index!39626 lt!441732) #b00000000000000000000000000000000) (bvslt (index!39626 lt!441732) (size!30885 a!3219)))) (or (is-Undefined!9314 lt!441732) (is-Found!9314 lt!441732) (is-MissingZero!9314 lt!441732) (not (is-MissingVacant!9314 lt!441732)) (and (bvsge (index!39629 lt!441732) #b00000000000000000000000000000000) (bvslt (index!39629 lt!441732) (size!30885 a!3219)))) (or (is-Undefined!9314 lt!441732) (ite (is-Found!9314 lt!441732) (= (select (arr!30382 a!3219) (index!39627 lt!441732)) k!2224) (ite (is-MissingZero!9314 lt!441732) (= (select (arr!30382 a!3219) (index!39626 lt!441732)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9314 lt!441732) (= (select (arr!30382 a!3219) (index!39629 lt!441732)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!563148 () SeekEntryResult!9314)

(assert (=> d!119161 (= lt!441732 e!563148)))

(declare-fun c!101237 () Bool)

(assert (=> d!119161 (= c!101237 (and (is-Intermediate!9314 lt!441733) (undefined!10126 lt!441733)))))

(assert (=> d!119161 (= lt!441733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!119161 (validMask!0 mask!3464)))

(assert (=> d!119161 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!441732)))

(declare-fun b!998548 () Bool)

(assert (=> b!998548 (= e!563148 Undefined!9314)))

(declare-fun b!998549 () Bool)

(assert (=> b!998549 (= e!563146 (Found!9314 (index!39628 lt!441733)))))

(declare-fun b!998550 () Bool)

(assert (=> b!998550 (= e!563148 e!563146)))

(assert (=> b!998550 (= lt!441731 (select (arr!30382 a!3219) (index!39628 lt!441733)))))

(declare-fun c!101238 () Bool)

(assert (=> b!998550 (= c!101238 (= lt!441731 k!2224))))

(declare-fun b!998551 () Bool)

(assert (=> b!998551 (= e!563147 (MissingZero!9314 (index!39628 lt!441733)))))

(assert (= (and d!119161 c!101237) b!998548))

(assert (= (and d!119161 (not c!101237)) b!998550))

(assert (= (and b!998550 c!101238) b!998549))

(assert (= (and b!998550 (not c!101238)) b!998546))

(assert (= (and b!998546 c!101236) b!998551))

(assert (= (and b!998546 (not c!101236)) b!998547))

(declare-fun m!925095 () Bool)

(assert (=> b!998547 m!925095))

(assert (=> d!119161 m!924927))

(declare-fun m!925097 () Bool)

(assert (=> d!119161 m!925097))

(declare-fun m!925099 () Bool)

(assert (=> d!119161 m!925099))

(assert (=> d!119161 m!925099))

(declare-fun m!925101 () Bool)

(assert (=> d!119161 m!925101))

(declare-fun m!925103 () Bool)

(assert (=> d!119161 m!925103))

(declare-fun m!925105 () Bool)

(assert (=> d!119161 m!925105))

(declare-fun m!925107 () Bool)

(assert (=> b!998550 m!925107))

(assert (=> b!998252 d!119161))

(declare-fun d!119177 () Bool)

(assert (=> d!119177 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!998258 d!119177))

(push 1)

