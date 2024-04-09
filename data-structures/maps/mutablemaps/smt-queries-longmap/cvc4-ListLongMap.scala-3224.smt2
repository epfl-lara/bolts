; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45104 () Bool)

(assert start!45104)

(declare-fun b!494878 () Bool)

(declare-fun res!297608 () Bool)

(declare-fun e!290342 () Bool)

(assert (=> b!494878 (=> (not res!297608) (not e!290342))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494878 (= res!297608 (validKeyInArray!0 k!2280))))

(declare-fun b!494879 () Bool)

(declare-fun res!297605 () Bool)

(declare-fun e!290340 () Bool)

(assert (=> b!494879 (=> res!297605 e!290340)))

(declare-datatypes ((SeekEntryResult!3860 0))(
  ( (MissingZero!3860 (index!17619 (_ BitVec 32))) (Found!3860 (index!17620 (_ BitVec 32))) (Intermediate!3860 (undefined!4672 Bool) (index!17621 (_ BitVec 32)) (x!46709 (_ BitVec 32))) (Undefined!3860) (MissingVacant!3860 (index!17622 (_ BitVec 32))) )
))
(declare-fun lt!224087 () SeekEntryResult!3860)

(assert (=> b!494879 (= res!297605 (or (undefined!4672 lt!224087) (not (is-Intermediate!3860 lt!224087))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32009 0))(
  ( (array!32010 (arr!15386 (Array (_ BitVec 32) (_ BitVec 64))) (size!15750 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32009)

(declare-fun b!494880 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!494880 (= e!290340 (or (not (= (select (arr!15386 a!3235) (index!17621 lt!224087)) (select (arr!15386 a!3235) j!176))) (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> b!494880 (and (bvslt (x!46709 lt!224087) #b01111111111111111111111111111110) (or (= (select (arr!15386 a!3235) (index!17621 lt!224087)) (select (arr!15386 a!3235) j!176)) (= (select (arr!15386 a!3235) (index!17621 lt!224087)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15386 a!3235) (index!17621 lt!224087)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!297601 () Bool)

(assert (=> start!45104 (=> (not res!297601) (not e!290342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45104 (= res!297601 (validMask!0 mask!3524))))

(assert (=> start!45104 e!290342))

(assert (=> start!45104 true))

(declare-fun array_inv!11160 (array!32009) Bool)

(assert (=> start!45104 (array_inv!11160 a!3235)))

(declare-fun b!494881 () Bool)

(declare-fun res!297600 () Bool)

(declare-fun e!290341 () Bool)

(assert (=> b!494881 (=> (not res!297600) (not e!290341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32009 (_ BitVec 32)) Bool)

(assert (=> b!494881 (= res!297600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494882 () Bool)

(declare-fun res!297604 () Bool)

(assert (=> b!494882 (=> (not res!297604) (not e!290342))))

(declare-fun arrayContainsKey!0 (array!32009 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494882 (= res!297604 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun e!290344 () Bool)

(declare-fun b!494883 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32009 (_ BitVec 32)) SeekEntryResult!3860)

(assert (=> b!494883 (= e!290344 (= (seekEntryOrOpen!0 (select (arr!15386 a!3235) j!176) a!3235 mask!3524) (Found!3860 j!176)))))

(declare-fun b!494884 () Bool)

(declare-fun res!297602 () Bool)

(assert (=> b!494884 (=> (not res!297602) (not e!290341))))

(declare-datatypes ((List!9597 0))(
  ( (Nil!9594) (Cons!9593 (h!10461 (_ BitVec 64)) (t!15833 List!9597)) )
))
(declare-fun arrayNoDuplicates!0 (array!32009 (_ BitVec 32) List!9597) Bool)

(assert (=> b!494884 (= res!297602 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9594))))

(declare-fun b!494885 () Bool)

(declare-fun res!297606 () Bool)

(assert (=> b!494885 (=> (not res!297606) (not e!290342))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494885 (= res!297606 (and (= (size!15750 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15750 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15750 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494886 () Bool)

(assert (=> b!494886 (= e!290341 (not e!290340))))

(declare-fun res!297598 () Bool)

(assert (=> b!494886 (=> res!297598 e!290340)))

(declare-fun lt!224090 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32009 (_ BitVec 32)) SeekEntryResult!3860)

(assert (=> b!494886 (= res!297598 (= lt!224087 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224090 (select (store (arr!15386 a!3235) i!1204 k!2280) j!176) (array!32010 (store (arr!15386 a!3235) i!1204 k!2280) (size!15750 a!3235)) mask!3524)))))

(declare-fun lt!224089 () (_ BitVec 32))

(assert (=> b!494886 (= lt!224087 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224089 (select (arr!15386 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494886 (= lt!224090 (toIndex!0 (select (store (arr!15386 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494886 (= lt!224089 (toIndex!0 (select (arr!15386 a!3235) j!176) mask!3524))))

(assert (=> b!494886 e!290344))

(declare-fun res!297607 () Bool)

(assert (=> b!494886 (=> (not res!297607) (not e!290344))))

(assert (=> b!494886 (= res!297607 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14658 0))(
  ( (Unit!14659) )
))
(declare-fun lt!224088 () Unit!14658)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32009 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14658)

(assert (=> b!494886 (= lt!224088 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494887 () Bool)

(assert (=> b!494887 (= e!290342 e!290341)))

(declare-fun res!297603 () Bool)

(assert (=> b!494887 (=> (not res!297603) (not e!290341))))

(declare-fun lt!224086 () SeekEntryResult!3860)

(assert (=> b!494887 (= res!297603 (or (= lt!224086 (MissingZero!3860 i!1204)) (= lt!224086 (MissingVacant!3860 i!1204))))))

(assert (=> b!494887 (= lt!224086 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!494888 () Bool)

(declare-fun res!297599 () Bool)

(assert (=> b!494888 (=> (not res!297599) (not e!290342))))

(assert (=> b!494888 (= res!297599 (validKeyInArray!0 (select (arr!15386 a!3235) j!176)))))

(assert (= (and start!45104 res!297601) b!494885))

(assert (= (and b!494885 res!297606) b!494888))

(assert (= (and b!494888 res!297599) b!494878))

(assert (= (and b!494878 res!297608) b!494882))

(assert (= (and b!494882 res!297604) b!494887))

(assert (= (and b!494887 res!297603) b!494881))

(assert (= (and b!494881 res!297600) b!494884))

(assert (= (and b!494884 res!297602) b!494886))

(assert (= (and b!494886 res!297607) b!494883))

(assert (= (and b!494886 (not res!297598)) b!494879))

(assert (= (and b!494879 (not res!297605)) b!494880))

(declare-fun m!476075 () Bool)

(assert (=> b!494884 m!476075))

(declare-fun m!476077 () Bool)

(assert (=> b!494888 m!476077))

(assert (=> b!494888 m!476077))

(declare-fun m!476079 () Bool)

(assert (=> b!494888 m!476079))

(declare-fun m!476081 () Bool)

(assert (=> start!45104 m!476081))

(declare-fun m!476083 () Bool)

(assert (=> start!45104 m!476083))

(assert (=> b!494883 m!476077))

(assert (=> b!494883 m!476077))

(declare-fun m!476085 () Bool)

(assert (=> b!494883 m!476085))

(declare-fun m!476087 () Bool)

(assert (=> b!494882 m!476087))

(declare-fun m!476089 () Bool)

(assert (=> b!494881 m!476089))

(declare-fun m!476091 () Bool)

(assert (=> b!494887 m!476091))

(declare-fun m!476093 () Bool)

(assert (=> b!494880 m!476093))

(assert (=> b!494880 m!476077))

(declare-fun m!476095 () Bool)

(assert (=> b!494886 m!476095))

(declare-fun m!476097 () Bool)

(assert (=> b!494886 m!476097))

(assert (=> b!494886 m!476077))

(declare-fun m!476099 () Bool)

(assert (=> b!494886 m!476099))

(assert (=> b!494886 m!476077))

(declare-fun m!476101 () Bool)

(assert (=> b!494886 m!476101))

(assert (=> b!494886 m!476097))

(declare-fun m!476103 () Bool)

(assert (=> b!494886 m!476103))

(assert (=> b!494886 m!476097))

(declare-fun m!476105 () Bool)

(assert (=> b!494886 m!476105))

(assert (=> b!494886 m!476077))

(declare-fun m!476107 () Bool)

(assert (=> b!494886 m!476107))

(declare-fun m!476109 () Bool)

(assert (=> b!494886 m!476109))

(declare-fun m!476111 () Bool)

(assert (=> b!494878 m!476111))

(push 1)

(assert (not b!494888))

(assert (not b!494878))

(assert (not b!494886))

(assert (not start!45104))

(assert (not b!494887))

(assert (not b!494883))

(assert (not b!494884))

(assert (not b!494882))

(assert (not b!494881))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!78131 () Bool)

(declare-fun res!297637 () Bool)

(declare-fun e!290382 () Bool)

(assert (=> d!78131 (=> res!297637 e!290382)))

(assert (=> d!78131 (= res!297637 (= (select (arr!15386 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!78131 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!290382)))

(declare-fun b!494935 () Bool)

(declare-fun e!290383 () Bool)

(assert (=> b!494935 (= e!290382 e!290383)))

(declare-fun res!297638 () Bool)

(assert (=> b!494935 (=> (not res!297638) (not e!290383))))

(assert (=> b!494935 (= res!297638 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15750 a!3235)))))

(declare-fun b!494936 () Bool)

(assert (=> b!494936 (= e!290383 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78131 (not res!297637)) b!494935))

(assert (= (and b!494935 res!297638) b!494936))

(declare-fun m!476137 () Bool)

(assert (=> d!78131 m!476137))

(declare-fun m!476139 () Bool)

(assert (=> b!494936 m!476139))

(assert (=> b!494882 d!78131))

(declare-fun b!495001 () Bool)

(declare-fun e!290425 () SeekEntryResult!3860)

(assert (=> b!495001 (= e!290425 Undefined!3860)))

(declare-fun b!495002 () Bool)

(declare-fun e!290424 () SeekEntryResult!3860)

(declare-fun lt!224134 () SeekEntryResult!3860)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32009 (_ BitVec 32)) SeekEntryResult!3860)

(assert (=> b!495002 (= e!290424 (seekKeyOrZeroReturnVacant!0 (x!46709 lt!224134) (index!17621 lt!224134) (index!17621 lt!224134) (select (arr!15386 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!78133 () Bool)

(declare-fun lt!224133 () SeekEntryResult!3860)

(assert (=> d!78133 (and (or (is-Undefined!3860 lt!224133) (not (is-Found!3860 lt!224133)) (and (bvsge (index!17620 lt!224133) #b00000000000000000000000000000000) (bvslt (index!17620 lt!224133) (size!15750 a!3235)))) (or (is-Undefined!3860 lt!224133) (is-Found!3860 lt!224133) (not (is-MissingZero!3860 lt!224133)) (and (bvsge (index!17619 lt!224133) #b00000000000000000000000000000000) (bvslt (index!17619 lt!224133) (size!15750 a!3235)))) (or (is-Undefined!3860 lt!224133) (is-Found!3860 lt!224133) (is-MissingZero!3860 lt!224133) (not (is-MissingVacant!3860 lt!224133)) (and (bvsge (index!17622 lt!224133) #b00000000000000000000000000000000) (bvslt (index!17622 lt!224133) (size!15750 a!3235)))) (or (is-Undefined!3860 lt!224133) (ite (is-Found!3860 lt!224133) (= (select (arr!15386 a!3235) (index!17620 lt!224133)) (select (arr!15386 a!3235) j!176)) (ite (is-MissingZero!3860 lt!224133) (= (select (arr!15386 a!3235) (index!17619 lt!224133)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3860 lt!224133) (= (select (arr!15386 a!3235) (index!17622 lt!224133)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78133 (= lt!224133 e!290425)))

(declare-fun c!58948 () Bool)

(assert (=> d!78133 (= c!58948 (and (is-Intermediate!3860 lt!224134) (undefined!4672 lt!224134)))))

(assert (=> d!78133 (= lt!224134 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15386 a!3235) j!176) mask!3524) (select (arr!15386 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78133 (validMask!0 mask!3524)))

(assert (=> d!78133 (= (seekEntryOrOpen!0 (select (arr!15386 a!3235) j!176) a!3235 mask!3524) lt!224133)))

(declare-fun b!495003 () Bool)

(declare-fun c!58950 () Bool)

(declare-fun lt!224135 () (_ BitVec 64))

(assert (=> b!495003 (= c!58950 (= lt!224135 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!290423 () SeekEntryResult!3860)

(assert (=> b!495003 (= e!290423 e!290424)))

(declare-fun b!495004 () Bool)

(assert (=> b!495004 (= e!290423 (Found!3860 (index!17621 lt!224134)))))

(declare-fun b!495005 () Bool)

(assert (=> b!495005 (= e!290425 e!290423)))

(assert (=> b!495005 (= lt!224135 (select (arr!15386 a!3235) (index!17621 lt!224134)))))

(declare-fun c!58949 () Bool)

(assert (=> b!495005 (= c!58949 (= lt!224135 (select (arr!15386 a!3235) j!176)))))

(declare-fun b!495006 () Bool)

(assert (=> b!495006 (= e!290424 (MissingZero!3860 (index!17621 lt!224134)))))

(assert (= (and d!78133 c!58948) b!495001))

(assert (= (and d!78133 (not c!58948)) b!495005))

(assert (= (and b!495005 c!58949) b!495004))

(assert (= (and b!495005 (not c!58949)) b!495003))

(assert (= (and b!495003 c!58950) b!495006))

(assert (= (and b!495003 (not c!58950)) b!495002))

(assert (=> b!495002 m!476077))

(declare-fun m!476177 () Bool)

(assert (=> b!495002 m!476177))

(assert (=> d!78133 m!476099))

(assert (=> d!78133 m!476077))

(declare-fun m!476179 () Bool)

(assert (=> d!78133 m!476179))

(assert (=> d!78133 m!476081))

(declare-fun m!476181 () Bool)

(assert (=> d!78133 m!476181))

(declare-fun m!476183 () Bool)

(assert (=> d!78133 m!476183))

(assert (=> d!78133 m!476077))

(assert (=> d!78133 m!476099))

(declare-fun m!476185 () Bool)

(assert (=> d!78133 m!476185))

(declare-fun m!476187 () Bool)

(assert (=> b!495005 m!476187))

(assert (=> b!494883 d!78133))

(declare-fun d!78155 () Bool)

(assert (=> d!78155 (= (validKeyInArray!0 (select (arr!15386 a!3235) j!176)) (and (not (= (select (arr!15386 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15386 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!494888 d!78155))

(declare-fun d!78157 () Bool)

(assert (=> d!78157 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!45104 d!78157))

(declare-fun d!78165 () Bool)

(assert (=> d!78165 (= (array_inv!11160 a!3235) (bvsge (size!15750 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!45104 d!78165))

(declare-fun b!495094 () Bool)

(declare-fun e!290480 () Bool)

(declare-fun call!31423 () Bool)

(assert (=> b!495094 (= e!290480 call!31423)))

(declare-fun b!495095 () Bool)

(declare-fun e!290481 () Bool)

(declare-fun e!290479 () Bool)

(assert (=> b!495095 (= e!290481 e!290479)))

(declare-fun c!58978 () Bool)

(assert (=> b!495095 (= c!58978 (validKeyInArray!0 (select (arr!15386 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78167 () Bool)

(declare-fun res!297688 () Bool)

(assert (=> d!78167 (=> res!297688 e!290481)))

(assert (=> d!78167 (= res!297688 (bvsge #b00000000000000000000000000000000 (size!15750 a!3235)))))

(assert (=> d!78167 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!290481)))

(declare-fun bm!31420 () Bool)

(assert (=> bm!31420 (= call!31423 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!495096 () Bool)

(assert (=> b!495096 (= e!290479 e!290480)))

(declare-fun lt!224176 () (_ BitVec 64))

(assert (=> b!495096 (= lt!224176 (select (arr!15386 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!224175 () Unit!14658)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32009 (_ BitVec 64) (_ BitVec 32)) Unit!14658)

(assert (=> b!495096 (= lt!224175 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!224176 #b00000000000000000000000000000000))))

(assert (=> b!495096 (arrayContainsKey!0 a!3235 lt!224176 #b00000000000000000000000000000000)))

(declare-fun lt!224174 () Unit!14658)

(assert (=> b!495096 (= lt!224174 lt!224175)))

(declare-fun res!297689 () Bool)

(assert (=> b!495096 (= res!297689 (= (seekEntryOrOpen!0 (select (arr!15386 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3860 #b00000000000000000000000000000000)))))

(assert (=> b!495096 (=> (not res!297689) (not e!290480))))

(declare-fun b!495097 () Bool)

(assert (=> b!495097 (= e!290479 call!31423)))

(assert (= (and d!78167 (not res!297688)) b!495095))

(assert (= (and b!495095 c!58978) b!495096))

(assert (= (and b!495095 (not c!58978)) b!495097))

(assert (= (and b!495096 res!297689) b!495094))

(assert (= (or b!495094 b!495097) bm!31420))

(assert (=> b!495095 m!476137))

(assert (=> b!495095 m!476137))

(declare-fun m!476227 () Bool)

(assert (=> b!495095 m!476227))

(declare-fun m!476229 () Bool)

(assert (=> bm!31420 m!476229))

(assert (=> b!495096 m!476137))

(declare-fun m!476231 () Bool)

(assert (=> b!495096 m!476231))

(declare-fun m!476233 () Bool)

(assert (=> b!495096 m!476233))

(assert (=> b!495096 m!476137))

(declare-fun m!476235 () Bool)

(assert (=> b!495096 m!476235))

(assert (=> b!494881 d!78167))

(declare-fun d!78175 () Bool)

(declare-fun lt!224200 () (_ BitVec 32))

(declare-fun lt!224199 () (_ BitVec 32))

(assert (=> d!78175 (= lt!224200 (bvmul (bvxor lt!224199 (bvlshr lt!224199 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78175 (= lt!224199 ((_ extract 31 0) (bvand (bvxor (select (arr!15386 a!3235) j!176) (bvlshr (select (arr!15386 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78175 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!297690 (let ((h!10464 ((_ extract 31 0) (bvand (bvxor (select (arr!15386 a!3235) j!176) (bvlshr (select (arr!15386 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46714 (bvmul (bvxor h!10464 (bvlshr h!10464 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46714 (bvlshr x!46714 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!297690 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!297690 #b00000000000000000000000000000000))))))

(assert (=> d!78175 (= (toIndex!0 (select (arr!15386 a!3235) j!176) mask!3524) (bvand (bvxor lt!224200 (bvlshr lt!224200 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!494886 d!78175))

(declare-fun b!495119 () Bool)

(declare-fun e!290494 () Bool)

(declare-fun call!31424 () Bool)

(assert (=> b!495119 (= e!290494 call!31424)))

(declare-fun b!495120 () Bool)

(declare-fun e!290495 () Bool)

(declare-fun e!290493 () Bool)

(assert (=> b!495120 (= e!290495 e!290493)))

(declare-fun c!58988 () Bool)

(assert (=> b!495120 (= c!58988 (validKeyInArray!0 (select (arr!15386 a!3235) j!176)))))

(declare-fun d!78189 () Bool)

(declare-fun res!297694 () Bool)

(assert (=> d!78189 (=> res!297694 e!290495)))

(assert (=> d!78189 (= res!297694 (bvsge j!176 (size!15750 a!3235)))))

(assert (=> d!78189 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!290495)))

(declare-fun bm!31421 () Bool)

(assert (=> bm!31421 (= call!31424 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!495121 () Bool)

(assert (=> b!495121 (= e!290493 e!290494)))

(declare-fun lt!224203 () (_ BitVec 64))

(assert (=> b!495121 (= lt!224203 (select (arr!15386 a!3235) j!176))))

(declare-fun lt!224202 () Unit!14658)

(assert (=> b!495121 (= lt!224202 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!224203 j!176))))

(assert (=> b!495121 (arrayContainsKey!0 a!3235 lt!224203 #b00000000000000000000000000000000)))

(declare-fun lt!224201 () Unit!14658)

(assert (=> b!495121 (= lt!224201 lt!224202)))

(declare-fun res!297695 () Bool)

(assert (=> b!495121 (= res!297695 (= (seekEntryOrOpen!0 (select (arr!15386 a!3235) j!176) a!3235 mask!3524) (Found!3860 j!176)))))

(assert (=> b!495121 (=> (not res!297695) (not e!290494))))

(declare-fun b!495122 () Bool)

(assert (=> b!495122 (= e!290493 call!31424)))

(assert (= (and d!78189 (not res!297694)) b!495120))

(assert (= (and b!495120 c!58988) b!495121))

(assert (= (and b!495120 (not c!58988)) b!495122))

(assert (= (and b!495121 res!297695) b!495119))

(assert (= (or b!495119 b!495122) bm!31421))

(assert (=> b!495120 m!476077))

(assert (=> b!495120 m!476077))

(assert (=> b!495120 m!476079))

(declare-fun m!476275 () Bool)

(assert (=> bm!31421 m!476275))

(assert (=> b!495121 m!476077))

(declare-fun m!476277 () Bool)

(assert (=> b!495121 m!476277))

(declare-fun m!476279 () Bool)

(assert (=> b!495121 m!476279))

(assert (=> b!495121 m!476077))

(assert (=> b!495121 m!476085))

(assert (=> b!494886 d!78189))

(declare-fun b!495141 () Bool)

(declare-fun e!290508 () SeekEntryResult!3860)

(assert (=> b!495141 (= e!290508 (Intermediate!3860 false lt!224090 #b00000000000000000000000000000000))))

(declare-fun lt!224209 () SeekEntryResult!3860)

(declare-fun b!495142 () Bool)

(assert (=> b!495142 (and (bvsge (index!17621 lt!224209) #b00000000000000000000000000000000) (bvslt (index!17621 lt!224209) (size!15750 (array!32010 (store (arr!15386 a!3235) i!1204 k!2280) (size!15750 a!3235)))))))

(declare-fun res!297702 () Bool)

(assert (=> b!495142 (= res!297702 (= (select (arr!15386 (array!32010 (store (arr!15386 a!3235) i!1204 k!2280) (size!15750 a!3235))) (index!17621 lt!224209)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!290507 () Bool)

(assert (=> b!495142 (=> res!297702 e!290507)))

(declare-fun b!495143 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495143 (= e!290508 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!224090 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15386 a!3235) i!1204 k!2280) j!176) (array!32010 (store (arr!15386 a!3235) i!1204 k!2280) (size!15750 a!3235)) mask!3524))))

(declare-fun b!495144 () Bool)

(assert (=> b!495144 (and (bvsge (index!17621 lt!224209) #b00000000000000000000000000000000) (bvslt (index!17621 lt!224209) (size!15750 (array!32010 (store (arr!15386 a!3235) i!1204 k!2280) (size!15750 a!3235)))))))

(declare-fun res!297704 () Bool)

(assert (=> b!495144 (= res!297704 (= (select (arr!15386 (array!32010 (store (arr!15386 a!3235) i!1204 k!2280) (size!15750 a!3235))) (index!17621 lt!224209)) (select (store (arr!15386 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!495144 (=> res!297704 e!290507)))

(declare-fun e!290510 () Bool)

(assert (=> b!495144 (= e!290510 e!290507)))

(declare-fun d!78191 () Bool)

(declare-fun e!290506 () Bool)

(assert (=> d!78191 e!290506))

(declare-fun c!58996 () Bool)

(assert (=> d!78191 (= c!58996 (and (is-Intermediate!3860 lt!224209) (undefined!4672 lt!224209)))))

(declare-fun e!290509 () SeekEntryResult!3860)

(assert (=> d!78191 (= lt!224209 e!290509)))

(declare-fun c!58997 () Bool)

(assert (=> d!78191 (= c!58997 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!224208 () (_ BitVec 64))

(assert (=> d!78191 (= lt!224208 (select (arr!15386 (array!32010 (store (arr!15386 a!3235) i!1204 k!2280) (size!15750 a!3235))) lt!224090))))

(assert (=> d!78191 (validMask!0 mask!3524)))

(assert (=> d!78191 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224090 (select (store (arr!15386 a!3235) i!1204 k!2280) j!176) (array!32010 (store (arr!15386 a!3235) i!1204 k!2280) (size!15750 a!3235)) mask!3524) lt!224209)))

(declare-fun b!495145 () Bool)

(assert (=> b!495145 (= e!290506 (bvsge (x!46709 lt!224209) #b01111111111111111111111111111110))))

(declare-fun b!495146 () Bool)

(assert (=> b!495146 (= e!290509 (Intermediate!3860 true lt!224090 #b00000000000000000000000000000000))))

(declare-fun b!495147 () Bool)

(assert (=> b!495147 (= e!290509 e!290508)))

(declare-fun c!58995 () Bool)

(assert (=> b!495147 (= c!58995 (or (= lt!224208 (select (store (arr!15386 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!224208 lt!224208) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495148 () Bool)

(assert (=> b!495148 (and (bvsge (index!17621 lt!224209) #b00000000000000000000000000000000) (bvslt (index!17621 lt!224209) (size!15750 (array!32010 (store (arr!15386 a!3235) i!1204 k!2280) (size!15750 a!3235)))))))

(assert (=> b!495148 (= e!290507 (= (select (arr!15386 (array!32010 (store (arr!15386 a!3235) i!1204 k!2280) (size!15750 a!3235))) (index!17621 lt!224209)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!495149 () Bool)

(assert (=> b!495149 (= e!290506 e!290510)))

(declare-fun res!297703 () Bool)

(assert (=> b!495149 (= res!297703 (and (is-Intermediate!3860 lt!224209) (not (undefined!4672 lt!224209)) (bvslt (x!46709 lt!224209) #b01111111111111111111111111111110) (bvsge (x!46709 lt!224209) #b00000000000000000000000000000000) (bvsge (x!46709 lt!224209) #b00000000000000000000000000000000)))))

(assert (=> b!495149 (=> (not res!297703) (not e!290510))))

(assert (= (and d!78191 c!58997) b!495146))

(assert (= (and d!78191 (not c!58997)) b!495147))

(assert (= (and b!495147 c!58995) b!495141))

(assert (= (and b!495147 (not c!58995)) b!495143))

(assert (= (and d!78191 c!58996) b!495145))

(assert (= (and d!78191 (not c!58996)) b!495149))

(assert (= (and b!495149 res!297703) b!495144))

(assert (= (and b!495144 (not res!297704)) b!495142))

(assert (= (and b!495142 (not res!297702)) b!495148))

(declare-fun m!476281 () Bool)

(assert (=> b!495142 m!476281))

(declare-fun m!476283 () Bool)

(assert (=> b!495143 m!476283))

(assert (=> b!495143 m!476283))

