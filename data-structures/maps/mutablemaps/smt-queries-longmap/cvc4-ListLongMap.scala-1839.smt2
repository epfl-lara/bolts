; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33310 () Bool)

(assert start!33310)

(declare-fun b!330985 () Bool)

(declare-fun e!203073 () Bool)

(declare-fun e!203072 () Bool)

(assert (=> b!330985 (= e!203073 e!203072)))

(declare-fun res!182553 () Bool)

(assert (=> b!330985 (=> (not res!182553) (not e!203072))))

(declare-datatypes ((array!16914 0))(
  ( (array!16915 (arr!7995 (Array (_ BitVec 32) (_ BitVec 64))) (size!8347 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16914)

(declare-datatypes ((SeekEntryResult!3137 0))(
  ( (MissingZero!3137 (index!14724 (_ BitVec 32))) (Found!3137 (index!14725 (_ BitVec 32))) (Intermediate!3137 (undefined!3949 Bool) (index!14726 (_ BitVec 32)) (x!32972 (_ BitVec 32))) (Undefined!3137) (MissingVacant!3137 (index!14727 (_ BitVec 32))) )
))
(declare-fun lt!158702 () SeekEntryResult!3137)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16914 (_ BitVec 32)) SeekEntryResult!3137)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330985 (= res!182553 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158702))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!330985 (= lt!158702 (Intermediate!3137 false resIndex!58 resX!58))))

(declare-fun b!330986 () Bool)

(declare-fun res!182545 () Bool)

(assert (=> b!330986 (=> (not res!182545) (not e!203072))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!330986 (= res!182545 (and (= (select (arr!7995 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8347 a!3305))))))

(declare-fun b!330987 () Bool)

(declare-fun res!182549 () Bool)

(assert (=> b!330987 (=> (not res!182549) (not e!203073))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330987 (= res!182549 (validKeyInArray!0 k!2497))))

(declare-fun b!330988 () Bool)

(declare-fun res!182551 () Bool)

(assert (=> b!330988 (=> (not res!182551) (not e!203073))))

(declare-fun arrayContainsKey!0 (array!16914 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330988 (= res!182551 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!330989 () Bool)

(declare-fun res!182546 () Bool)

(assert (=> b!330989 (=> (not res!182546) (not e!203073))))

(assert (=> b!330989 (= res!182546 (and (= (size!8347 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8347 a!3305))))))

(declare-fun res!182552 () Bool)

(assert (=> start!33310 (=> (not res!182552) (not e!203073))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33310 (= res!182552 (validMask!0 mask!3777))))

(assert (=> start!33310 e!203073))

(declare-fun array_inv!5949 (array!16914) Bool)

(assert (=> start!33310 (array_inv!5949 a!3305)))

(assert (=> start!33310 true))

(declare-fun b!330990 () Bool)

(declare-fun res!182548 () Bool)

(assert (=> b!330990 (=> (not res!182548) (not e!203073))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16914 (_ BitVec 32)) SeekEntryResult!3137)

(assert (=> b!330990 (= res!182548 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3137 i!1250)))))

(declare-fun b!330991 () Bool)

(declare-fun e!203071 () Bool)

(declare-fun lt!158701 () SeekEntryResult!3137)

(assert (=> b!330991 (= e!203071 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 (array!16915 (store (arr!7995 a!3305) i!1250 k!2497) (size!8347 a!3305)) mask!3777) lt!158701)))))

(declare-datatypes ((Unit!10332 0))(
  ( (Unit!10333) )
))
(declare-fun lt!158700 () Unit!10332)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16914 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10332)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330991 (= lt!158700 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!330992 () Bool)

(declare-fun res!182547 () Bool)

(assert (=> b!330992 (=> (not res!182547) (not e!203073))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16914 (_ BitVec 32)) Bool)

(assert (=> b!330992 (= res!182547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!330993 () Bool)

(assert (=> b!330993 (= e!203072 e!203071)))

(declare-fun res!182550 () Bool)

(assert (=> b!330993 (=> (not res!182550) (not e!203071))))

(assert (=> b!330993 (= res!182550 (and (= lt!158701 lt!158702) (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7995 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(assert (=> b!330993 (= lt!158701 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(assert (= (and start!33310 res!182552) b!330989))

(assert (= (and b!330989 res!182546) b!330987))

(assert (= (and b!330987 res!182549) b!330988))

(assert (= (and b!330988 res!182551) b!330990))

(assert (= (and b!330990 res!182548) b!330992))

(assert (= (and b!330992 res!182547) b!330985))

(assert (= (and b!330985 res!182553) b!330986))

(assert (= (and b!330986 res!182545) b!330993))

(assert (= (and b!330993 res!182550) b!330991))

(declare-fun m!336031 () Bool)

(assert (=> b!330985 m!336031))

(assert (=> b!330985 m!336031))

(declare-fun m!336033 () Bool)

(assert (=> b!330985 m!336033))

(declare-fun m!336035 () Bool)

(assert (=> b!330988 m!336035))

(declare-fun m!336037 () Bool)

(assert (=> b!330987 m!336037))

(declare-fun m!336039 () Bool)

(assert (=> b!330992 m!336039))

(declare-fun m!336041 () Bool)

(assert (=> start!33310 m!336041))

(declare-fun m!336043 () Bool)

(assert (=> start!33310 m!336043))

(declare-fun m!336045 () Bool)

(assert (=> b!330991 m!336045))

(declare-fun m!336047 () Bool)

(assert (=> b!330991 m!336047))

(declare-fun m!336049 () Bool)

(assert (=> b!330991 m!336049))

(assert (=> b!330991 m!336049))

(declare-fun m!336051 () Bool)

(assert (=> b!330991 m!336051))

(declare-fun m!336053 () Bool)

(assert (=> b!330993 m!336053))

(declare-fun m!336055 () Bool)

(assert (=> b!330993 m!336055))

(declare-fun m!336057 () Bool)

(assert (=> b!330990 m!336057))

(declare-fun m!336059 () Bool)

(assert (=> b!330986 m!336059))

(push 1)

(assert (not b!330988))

(assert (not b!330991))

(assert (not b!330987))

(assert (not b!330993))

(assert (not b!330992))

(assert (not start!33310))

(assert (not b!330990))

(assert (not b!330985))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!331085 () Bool)

(declare-fun e!203124 () SeekEntryResult!3137)

(assert (=> b!331085 (= e!203124 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!331086 () Bool)

(declare-fun e!203127 () Bool)

(declare-fun lt!158729 () SeekEntryResult!3137)

(assert (=> b!331086 (= e!203127 (bvsge (x!32972 lt!158729) #b01111111111111111111111111111110))))

(declare-fun b!331087 () Bool)

(declare-fun e!203128 () Bool)

(assert (=> b!331087 (= e!203127 e!203128)))

(declare-fun res!182579 () Bool)

(assert (=> b!331087 (= res!182579 (and (is-Intermediate!3137 lt!158729) (not (undefined!3949 lt!158729)) (bvslt (x!32972 lt!158729) #b01111111111111111111111111111110) (bvsge (x!32972 lt!158729) #b00000000000000000000000000000000) (bvsge (x!32972 lt!158729) x!1490)))))

(assert (=> b!331087 (=> (not res!182579) (not e!203128))))

(declare-fun b!331088 () Bool)

(assert (=> b!331088 (and (bvsge (index!14726 lt!158729) #b00000000000000000000000000000000) (bvslt (index!14726 lt!158729) (size!8347 a!3305)))))

(declare-fun e!203126 () Bool)

(assert (=> b!331088 (= e!203126 (= (select (arr!7995 a!3305) (index!14726 lt!158729)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!331089 () Bool)

(declare-fun e!203125 () SeekEntryResult!3137)

(assert (=> b!331089 (= e!203125 e!203124)))

(declare-fun c!51898 () Bool)

(declare-fun lt!158728 () (_ BitVec 64))

(assert (=> b!331089 (= c!51898 (or (= lt!158728 k!2497) (= (bvadd lt!158728 lt!158728) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!331090 () Bool)

(assert (=> b!331090 (and (bvsge (index!14726 lt!158729) #b00000000000000000000000000000000) (bvslt (index!14726 lt!158729) (size!8347 a!3305)))))

(declare-fun res!182580 () Bool)

(assert (=> b!331090 (= res!182580 (= (select (arr!7995 a!3305) (index!14726 lt!158729)) k!2497))))

(assert (=> b!331090 (=> res!182580 e!203126)))

(assert (=> b!331090 (= e!203128 e!203126)))

(declare-fun d!70247 () Bool)

(assert (=> d!70247 e!203127))

(declare-fun c!51897 () Bool)

(assert (=> d!70247 (= c!51897 (and (is-Intermediate!3137 lt!158729) (undefined!3949 lt!158729)))))

(assert (=> d!70247 (= lt!158729 e!203125)))

(declare-fun c!51899 () Bool)

(assert (=> d!70247 (= c!51899 (bvsge x!1490 #b01111111111111111111111111111110))))

(assert (=> d!70247 (= lt!158728 (select (arr!7995 a!3305) index!1840))))

(assert (=> d!70247 (validMask!0 mask!3777)))

(assert (=> d!70247 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158729)))

(declare-fun b!331084 () Bool)

(assert (=> b!331084 (= e!203125 (Intermediate!3137 true index!1840 x!1490))))

(declare-fun b!331091 () Bool)

(assert (=> b!331091 (= e!203124 (Intermediate!3137 false index!1840 x!1490))))

(declare-fun b!331092 () Bool)

(assert (=> b!331092 (and (bvsge (index!14726 lt!158729) #b00000000000000000000000000000000) (bvslt (index!14726 lt!158729) (size!8347 a!3305)))))

(declare-fun res!182578 () Bool)

(assert (=> b!331092 (= res!182578 (= (select (arr!7995 a!3305) (index!14726 lt!158729)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!331092 (=> res!182578 e!203126)))

(assert (= (and d!70247 c!51899) b!331084))

(assert (= (and d!70247 (not c!51899)) b!331089))

(assert (= (and b!331089 c!51898) b!331091))

(assert (= (and b!331089 (not c!51898)) b!331085))

(assert (= (and d!70247 c!51897) b!331086))

(assert (= (and d!70247 (not c!51897)) b!331087))

(assert (= (and b!331087 res!182579) b!331090))

(assert (= (and b!331090 (not res!182580)) b!331092))

(assert (= (and b!331092 (not res!182578)) b!331088))

(declare-fun m!336083 () Bool)

(assert (=> b!331088 m!336083))

(assert (=> b!331085 m!336049))

(assert (=> b!331085 m!336049))

(declare-fun m!336087 () Bool)

(assert (=> b!331085 m!336087))

(assert (=> b!331090 m!336083))

(assert (=> d!70247 m!336053))

(assert (=> d!70247 m!336041))

(assert (=> b!331092 m!336083))

(assert (=> b!330993 d!70247))

(declare-fun d!70255 () Bool)

(assert (=> d!70255 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!33310 d!70255))

(declare-fun d!70261 () Bool)

(assert (=> d!70261 (= (array_inv!5949 a!3305) (bvsge (size!8347 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!33310 d!70261))

(declare-fun d!70263 () Bool)

(declare-fun res!182587 () Bool)

(declare-fun e!203133 () Bool)

(assert (=> d!70263 (=> res!182587 e!203133)))

(assert (=> d!70263 (= res!182587 (= (select (arr!7995 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!70263 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!203133)))

(declare-fun b!331097 () Bool)

(declare-fun e!203134 () Bool)

(assert (=> b!331097 (= e!203133 e!203134)))

(declare-fun res!182588 () Bool)

(assert (=> b!331097 (=> (not res!182588) (not e!203134))))

(assert (=> b!331097 (= res!182588 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8347 a!3305)))))

(declare-fun b!331098 () Bool)

(assert (=> b!331098 (= e!203134 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70263 (not res!182587)) b!331097))

(assert (= (and b!331097 res!182588) b!331098))

(declare-fun m!336091 () Bool)

(assert (=> d!70263 m!336091))

(declare-fun m!336093 () Bool)

(assert (=> b!331098 m!336093))

(assert (=> b!330988 d!70263))

(declare-fun d!70265 () Bool)

(assert (=> d!70265 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!330987 d!70265))

(declare-fun b!331131 () Bool)

(declare-fun e!203156 () Bool)

(declare-fun e!203158 () Bool)

(assert (=> b!331131 (= e!203156 e!203158)))

(declare-fun c!51911 () Bool)

(assert (=> b!331131 (= c!51911 (validKeyInArray!0 (select (arr!7995 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!331132 () Bool)

(declare-fun e!203157 () Bool)

(declare-fun call!26171 () Bool)

(assert (=> b!331132 (= e!203157 call!26171)))

(declare-fun b!331133 () Bool)

(assert (=> b!331133 (= e!203158 e!203157)))

(declare-fun lt!158765 () (_ BitVec 64))

(assert (=> b!331133 (= lt!158765 (select (arr!7995 a!3305) #b00000000000000000000000000000000))))

(declare-fun lt!158764 () Unit!10332)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16914 (_ BitVec 64) (_ BitVec 32)) Unit!10332)

(assert (=> b!331133 (= lt!158764 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!158765 #b00000000000000000000000000000000))))

(assert (=> b!331133 (arrayContainsKey!0 a!3305 lt!158765 #b00000000000000000000000000000000)))

(declare-fun lt!158763 () Unit!10332)

(assert (=> b!331133 (= lt!158763 lt!158764)))

(declare-fun res!182600 () Bool)

(assert (=> b!331133 (= res!182600 (= (seekEntryOrOpen!0 (select (arr!7995 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3137 #b00000000000000000000000000000000)))))

(assert (=> b!331133 (=> (not res!182600) (not e!203157))))

(declare-fun b!331134 () Bool)

(assert (=> b!331134 (= e!203158 call!26171)))

(declare-fun d!70271 () Bool)

(declare-fun res!182599 () Bool)

(assert (=> d!70271 (=> res!182599 e!203156)))

(assert (=> d!70271 (= res!182599 (bvsge #b00000000000000000000000000000000 (size!8347 a!3305)))))

(assert (=> d!70271 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!203156)))

(declare-fun bm!26168 () Bool)

(assert (=> bm!26168 (= call!26171 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(assert (= (and d!70271 (not res!182599)) b!331131))

(assert (= (and b!331131 c!51911) b!331133))

(assert (= (and b!331131 (not c!51911)) b!331134))

(assert (= (and b!331133 res!182600) b!331132))

(assert (= (or b!331132 b!331134) bm!26168))

(assert (=> b!331131 m!336091))

(assert (=> b!331131 m!336091))

(declare-fun m!336107 () Bool)

(assert (=> b!331131 m!336107))

(assert (=> b!331133 m!336091))

(declare-fun m!336109 () Bool)

(assert (=> b!331133 m!336109))

(declare-fun m!336111 () Bool)

(assert (=> b!331133 m!336111))

(assert (=> b!331133 m!336091))

(declare-fun m!336113 () Bool)

(assert (=> b!331133 m!336113))

(declare-fun m!336115 () Bool)

(assert (=> bm!26168 m!336115))

(assert (=> b!330992 d!70271))

(declare-fun e!203159 () SeekEntryResult!3137)

(declare-fun b!331136 () Bool)

(assert (=> b!331136 (= e!203159 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!331137 () Bool)

(declare-fun e!203162 () Bool)

(declare-fun lt!158767 () SeekEntryResult!3137)

(assert (=> b!331137 (= e!203162 (bvsge (x!32972 lt!158767) #b01111111111111111111111111111110))))

(declare-fun b!331138 () Bool)

(declare-fun e!203163 () Bool)

(assert (=> b!331138 (= e!203162 e!203163)))

(declare-fun res!182602 () Bool)

(assert (=> b!331138 (= res!182602 (and (is-Intermediate!3137 lt!158767) (not (undefined!3949 lt!158767)) (bvslt (x!32972 lt!158767) #b01111111111111111111111111111110) (bvsge (x!32972 lt!158767) #b00000000000000000000000000000000) (bvsge (x!32972 lt!158767) #b00000000000000000000000000000000)))))

(assert (=> b!331138 (=> (not res!182602) (not e!203163))))

(declare-fun b!331139 () Bool)

(assert (=> b!331139 (and (bvsge (index!14726 lt!158767) #b00000000000000000000000000000000) (bvslt (index!14726 lt!158767) (size!8347 a!3305)))))

(declare-fun e!203161 () Bool)

(assert (=> b!331139 (= e!203161 (= (select (arr!7995 a!3305) (index!14726 lt!158767)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!331140 () Bool)

(declare-fun e!203160 () SeekEntryResult!3137)

(assert (=> b!331140 (= e!203160 e!203159)))

(declare-fun c!51913 () Bool)

(declare-fun lt!158766 () (_ BitVec 64))

(assert (=> b!331140 (= c!51913 (or (= lt!158766 k!2497) (= (bvadd lt!158766 lt!158766) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!331141 () Bool)

(assert (=> b!331141 (and (bvsge (index!14726 lt!158767) #b00000000000000000000000000000000) (bvslt (index!14726 lt!158767) (size!8347 a!3305)))))

(declare-fun res!182603 () Bool)

(assert (=> b!331141 (= res!182603 (= (select (arr!7995 a!3305) (index!14726 lt!158767)) k!2497))))

(assert (=> b!331141 (=> res!182603 e!203161)))

(assert (=> b!331141 (= e!203163 e!203161)))

(declare-fun d!70275 () Bool)

(assert (=> d!70275 e!203162))

(declare-fun c!51912 () Bool)

(assert (=> d!70275 (= c!51912 (and (is-Intermediate!3137 lt!158767) (undefined!3949 lt!158767)))))

(assert (=> d!70275 (= lt!158767 e!203160)))

(declare-fun c!51914 () Bool)

(assert (=> d!70275 (= c!51914 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!70275 (= lt!158766 (select (arr!7995 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!70275 (validMask!0 mask!3777)))

(assert (=> d!70275 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158767)))

(declare-fun b!331135 () Bool)

(assert (=> b!331135 (= e!203160 (Intermediate!3137 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!331142 () Bool)

(assert (=> b!331142 (= e!203159 (Intermediate!3137 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!331143 () Bool)

(assert (=> b!331143 (and (bvsge (index!14726 lt!158767) #b00000000000000000000000000000000) (bvslt (index!14726 lt!158767) (size!8347 a!3305)))))

(declare-fun res!182601 () Bool)

(assert (=> b!331143 (= res!182601 (= (select (arr!7995 a!3305) (index!14726 lt!158767)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!331143 (=> res!182601 e!203161)))

(assert (= (and d!70275 c!51914) b!331135))

(assert (= (and d!70275 (not c!51914)) b!331140))

(assert (= (and b!331140 c!51913) b!331142))

(assert (= (and b!331140 (not c!51913)) b!331136))

(assert (= (and d!70275 c!51912) b!331137))

(assert (= (and d!70275 (not c!51912)) b!331138))

(assert (= (and b!331138 res!182602) b!331141))

(assert (= (and b!331141 (not res!182603)) b!331143))

(assert (= (and b!331143 (not res!182601)) b!331139))

(declare-fun m!336117 () Bool)

(assert (=> b!331139 m!336117))

(assert (=> b!331136 m!336031))

(declare-fun m!336119 () Bool)

(assert (=> b!331136 m!336119))

(assert (=> b!331136 m!336119))

(declare-fun m!336121 () Bool)

(assert (=> b!331136 m!336121))

(assert (=> b!331141 m!336117))

(assert (=> d!70275 m!336031))

(declare-fun m!336123 () Bool)

(assert (=> d!70275 m!336123))

(assert (=> d!70275 m!336041))

(assert (=> b!331143 m!336117))

(assert (=> b!330985 d!70275))

(declare-fun d!70277 () Bool)

(declare-fun lt!158782 () (_ BitVec 32))

(declare-fun lt!158781 () (_ BitVec 32))

(assert (=> d!70277 (= lt!158782 (bvmul (bvxor lt!158781 (bvlshr lt!158781 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!70277 (= lt!158781 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!70277 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!182608 (let ((h!5446 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32978 (bvmul (bvxor h!5446 (bvlshr h!5446 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32978 (bvlshr x!32978 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!182608 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!182608 #b00000000000000000000000000000000))))))

(assert (=> d!70277 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!158782 (bvlshr lt!158782 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!330985 d!70277))

(declare-fun b!331235 () Bool)

(declare-fun e!203215 () SeekEntryResult!3137)

(declare-fun e!203214 () SeekEntryResult!3137)

(assert (=> b!331235 (= e!203215 e!203214)))

(declare-fun lt!158807 () (_ BitVec 64))

(declare-fun lt!158809 () SeekEntryResult!3137)

(assert (=> b!331235 (= lt!158807 (select (arr!7995 a!3305) (index!14726 lt!158809)))))

(declare-fun c!51955 () Bool)

(assert (=> b!331235 (= c!51955 (= lt!158807 k!2497))))

(declare-fun b!331236 () Bool)

(declare-fun e!203216 () SeekEntryResult!3137)

(assert (=> b!331236 (= e!203216 (MissingZero!3137 (index!14726 lt!158809)))))

(declare-fun b!331237 () Bool)

(assert (=> b!331237 (= e!203214 (Found!3137 (index!14726 lt!158809)))))

(declare-fun d!70289 () Bool)

(declare-fun lt!158808 () SeekEntryResult!3137)

(assert (=> d!70289 (and (or (is-Undefined!3137 lt!158808) (not (is-Found!3137 lt!158808)) (and (bvsge (index!14725 lt!158808) #b00000000000000000000000000000000) (bvslt (index!14725 lt!158808) (size!8347 a!3305)))) (or (is-Undefined!3137 lt!158808) (is-Found!3137 lt!158808) (not (is-MissingZero!3137 lt!158808)) (and (bvsge (index!14724 lt!158808) #b00000000000000000000000000000000) (bvslt (index!14724 lt!158808) (size!8347 a!3305)))) (or (is-Undefined!3137 lt!158808) (is-Found!3137 lt!158808) (is-MissingZero!3137 lt!158808) (not (is-MissingVacant!3137 lt!158808)) (and (bvsge (index!14727 lt!158808) #b00000000000000000000000000000000) (bvslt (index!14727 lt!158808) (size!8347 a!3305)))) (or (is-Undefined!3137 lt!158808) (ite (is-Found!3137 lt!158808) (= (select (arr!7995 a!3305) (index!14725 lt!158808)) k!2497) (ite (is-MissingZero!3137 lt!158808) (= (select (arr!7995 a!3305) (index!14724 lt!158808)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3137 lt!158808) (= (select (arr!7995 a!3305) (index!14727 lt!158808)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70289 (= lt!158808 e!203215)))

(declare-fun c!51953 () Bool)

(assert (=> d!70289 (= c!51953 (and (is-Intermediate!3137 lt!158809) (undefined!3949 lt!158809)))))

(assert (=> d!70289 (= lt!158809 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!70289 (validMask!0 mask!3777)))

(assert (=> d!70289 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!158808)))

(declare-fun b!331238 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16914 (_ BitVec 32)) SeekEntryResult!3137)

(assert (=> b!331238 (= e!203216 (seekKeyOrZeroReturnVacant!0 (x!32972 lt!158809) (index!14726 lt!158809) (index!14726 lt!158809) k!2497 a!3305 mask!3777))))

(declare-fun b!331239 () Bool)

(declare-fun c!51954 () Bool)

(assert (=> b!331239 (= c!51954 (= lt!158807 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!331239 (= e!203214 e!203216)))

(declare-fun b!331240 () Bool)

(assert (=> b!331240 (= e!203215 Undefined!3137)))

(assert (= (and d!70289 c!51953) b!331240))

(assert (= (and d!70289 (not c!51953)) b!331235))

(assert (= (and b!331235 c!51955) b!331237))

(assert (= (and b!331235 (not c!51955)) b!331239))

(assert (= (and b!331239 c!51954) b!331236))

(assert (= (and b!331239 (not c!51954)) b!331238))

(declare-fun m!336153 () Bool)

(assert (=> b!331235 m!336153))

(declare-fun m!336155 () Bool)

(assert (=> d!70289 m!336155))

(declare-fun m!336157 () Bool)

(assert (=> d!70289 m!336157))

(declare-fun m!336159 () Bool)

(assert (=> d!70289 m!336159))

(assert (=> d!70289 m!336031))

(assert (=> d!70289 m!336033))

(assert (=> d!70289 m!336031))

(assert (=> d!70289 m!336041))

(declare-fun m!336161 () Bool)

(assert (=> b!331238 m!336161))

(assert (=> b!330990 d!70289))

(declare-fun e!203219 () SeekEntryResult!3137)

(declare-fun b!331244 () Bool)

(assert (=> b!331244 (= e!203219 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 (array!16915 (store (arr!7995 a!3305) i!1250 k!2497) (size!8347 a!3305)) mask!3777))))

(declare-fun b!331245 () Bool)

(declare-fun e!203222 () Bool)

(declare-fun lt!158813 () SeekEntryResult!3137)

(assert (=> b!331245 (= e!203222 (bvsge (x!32972 lt!158813) #b01111111111111111111111111111110))))

(declare-fun b!331246 () Bool)

(declare-fun e!203223 () Bool)

(assert (=> b!331246 (= e!203222 e!203223)))

(declare-fun res!182623 () Bool)

(assert (=> b!331246 (= res!182623 (and (is-Intermediate!3137 lt!158813) (not (undefined!3949 lt!158813)) (bvslt (x!32972 lt!158813) #b01111111111111111111111111111110) (bvsge (x!32972 lt!158813) #b00000000000000000000000000000000) (bvsge (x!32972 lt!158813) x!1490)))))

(assert (=> b!331246 (=> (not res!182623) (not e!203223))))

(declare-fun b!331247 () Bool)

(assert (=> b!331247 (and (bvsge (index!14726 lt!158813) #b00000000000000000000000000000000) (bvslt (index!14726 lt!158813) (size!8347 (array!16915 (store (arr!7995 a!3305) i!1250 k!2497) (size!8347 a!3305)))))))

(declare-fun e!203221 () Bool)

(assert (=> b!331247 (= e!203221 (= (select (arr!7995 (array!16915 (store (arr!7995 a!3305) i!1250 k!2497) (size!8347 a!3305))) (index!14726 lt!158813)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!331248 () Bool)

(declare-fun e!203220 () SeekEntryResult!3137)

(assert (=> b!331248 (= e!203220 e!203219)))

(declare-fun c!51957 () Bool)

(declare-fun lt!158812 () (_ BitVec 64))

(assert (=> b!331248 (= c!51957 (or (= lt!158812 k!2497) (= (bvadd lt!158812 lt!158812) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!331249 () Bool)

(assert (=> b!331249 (and (bvsge (index!14726 lt!158813) #b00000000000000000000000000000000) (bvslt (index!14726 lt!158813) (size!8347 (array!16915 (store (arr!7995 a!3305) i!1250 k!2497) (size!8347 a!3305)))))))

(declare-fun res!182624 () Bool)

(assert (=> b!331249 (= res!182624 (= (select (arr!7995 (array!16915 (store (arr!7995 a!3305) i!1250 k!2497) (size!8347 a!3305))) (index!14726 lt!158813)) k!2497))))

(assert (=> b!331249 (=> res!182624 e!203221)))

(assert (=> b!331249 (= e!203223 e!203221)))

(declare-fun d!70291 () Bool)

(assert (=> d!70291 e!203222))

(declare-fun c!51956 () Bool)

(assert (=> d!70291 (= c!51956 (and (is-Intermediate!3137 lt!158813) (undefined!3949 lt!158813)))))

(assert (=> d!70291 (= lt!158813 e!203220)))

(declare-fun c!51958 () Bool)

(assert (=> d!70291 (= c!51958 (bvsge x!1490 #b01111111111111111111111111111110))))

(assert (=> d!70291 (= lt!158812 (select (arr!7995 (array!16915 (store (arr!7995 a!3305) i!1250 k!2497) (size!8347 a!3305))) index!1840))))

(assert (=> d!70291 (validMask!0 mask!3777)))

(assert (=> d!70291 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 (array!16915 (store (arr!7995 a!3305) i!1250 k!2497) (size!8347 a!3305)) mask!3777) lt!158813)))

(declare-fun b!331243 () Bool)

(assert (=> b!331243 (= e!203220 (Intermediate!3137 true index!1840 x!1490))))

(declare-fun b!331250 () Bool)

(assert (=> b!331250 (= e!203219 (Intermediate!3137 false index!1840 x!1490))))

(declare-fun b!331251 () Bool)

(assert (=> b!331251 (and (bvsge (index!14726 lt!158813) #b00000000000000000000000000000000) (bvslt (index!14726 lt!158813) (size!8347 (array!16915 (store (arr!7995 a!3305) i!1250 k!2497) (size!8347 a!3305)))))))

(declare-fun res!182622 () Bool)

(assert (=> b!331251 (= res!182622 (= (select (arr!7995 (array!16915 (store (arr!7995 a!3305) i!1250 k!2497) (size!8347 a!3305))) (index!14726 lt!158813)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!331251 (=> res!182622 e!203221)))

(assert (= (and d!70291 c!51958) b!331243))

(assert (= (and d!70291 (not c!51958)) b!331248))

(assert (= (and b!331248 c!51957) b!331250))

(assert (= (and b!331248 (not c!51957)) b!331244))

(assert (= (and d!70291 c!51956) b!331245))

(assert (= (and d!70291 (not c!51956)) b!331246))

(assert (= (and b!331246 res!182623) b!331249))

(assert (= (and b!331249 (not res!182624)) b!331251))

(assert (= (and b!331251 (not res!182622)) b!331247))

(declare-fun m!336163 () Bool)

(assert (=> b!331247 m!336163))

(assert (=> b!331244 m!336049))

(assert (=> b!331244 m!336049))

(declare-fun m!336165 () Bool)

(assert (=> b!331244 m!336165))

(assert (=> b!331249 m!336163))

(declare-fun m!336167 () Bool)

(assert (=> d!70291 m!336167))

(assert (=> d!70291 m!336041))

(assert (=> b!331251 m!336163))

(assert (=> b!330991 d!70291))

(declare-fun b!331325 () Bool)

(declare-fun e!203271 () Unit!10332)

(declare-fun Unit!10350 () Unit!10332)

(assert (=> b!331325 (= e!203271 Unit!10350)))

(declare-fun call!26192 () SeekEntryResult!3137)

(assert (=> b!331325 (= call!26192 (Intermediate!3137 false (nextIndex!0 index!1840 x!1490 mask!3777) resX!58))))

(declare-fun lt!158853 () Unit!10332)

(declare-fun Unit!10351 () Unit!10332)

(assert (=> b!331325 (= lt!158853 Unit!10351)))

