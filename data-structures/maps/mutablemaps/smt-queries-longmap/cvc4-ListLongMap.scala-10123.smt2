; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119330 () Bool)

(assert start!119330)

(declare-fun b!1390996 () Bool)

(declare-fun res!931119 () Bool)

(declare-fun e!787722 () Bool)

(assert (=> b!1390996 (=> (not res!931119) (not e!787722))))

(declare-datatypes ((array!95134 0))(
  ( (array!95135 (arr!45927 (Array (_ BitVec 32) (_ BitVec 64))) (size!46478 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95134)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390996 (= res!931119 (validKeyInArray!0 (select (arr!45927 a!2901) i!1037)))))

(declare-fun b!1390997 () Bool)

(declare-fun res!931123 () Bool)

(assert (=> b!1390997 (=> (not res!931123) (not e!787722))))

(declare-datatypes ((List!32626 0))(
  ( (Nil!32623) (Cons!32622 (h!33843 (_ BitVec 64)) (t!47327 List!32626)) )
))
(declare-fun arrayNoDuplicates!0 (array!95134 (_ BitVec 32) List!32626) Bool)

(assert (=> b!1390997 (= res!931123 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32623))))

(declare-fun res!931124 () Bool)

(assert (=> start!119330 (=> (not res!931124) (not e!787722))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119330 (= res!931124 (validMask!0 mask!2840))))

(assert (=> start!119330 e!787722))

(assert (=> start!119330 true))

(declare-fun array_inv!34872 (array!95134) Bool)

(assert (=> start!119330 (array_inv!34872 a!2901)))

(declare-fun b!1390998 () Bool)

(declare-fun res!931125 () Bool)

(assert (=> b!1390998 (=> (not res!931125) (not e!787722))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1390998 (= res!931125 (validKeyInArray!0 (select (arr!45927 a!2901) j!112)))))

(declare-fun b!1390999 () Bool)

(declare-fun res!931122 () Bool)

(assert (=> b!1390999 (=> (not res!931122) (not e!787722))))

(assert (=> b!1390999 (= res!931122 (and (= (size!46478 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46478 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46478 a!2901)) (not (= i!1037 j!112))))))

(declare-datatypes ((SeekEntryResult!10266 0))(
  ( (MissingZero!10266 (index!43434 (_ BitVec 32))) (Found!10266 (index!43435 (_ BitVec 32))) (Intermediate!10266 (undefined!11078 Bool) (index!43436 (_ BitVec 32)) (x!125113 (_ BitVec 32))) (Undefined!10266) (MissingVacant!10266 (index!43437 (_ BitVec 32))) )
))
(declare-fun lt!610998 () SeekEntryResult!10266)

(declare-fun b!1391000 () Bool)

(declare-fun lt!610997 () (_ BitVec 32))

(assert (=> b!1391000 (= e!787722 (not (or (not (is-Intermediate!10266 lt!610998)) (undefined!11078 lt!610998) (bvslt mask!2840 #b00000000000000000000000000000000) (and (bvsge lt!610997 #b00000000000000000000000000000000) (bvslt lt!610997 (bvadd #b00000000000000000000000000000001 mask!2840))))))))

(declare-fun e!787723 () Bool)

(assert (=> b!1391000 e!787723))

(declare-fun res!931121 () Bool)

(assert (=> b!1391000 (=> (not res!931121) (not e!787723))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95134 (_ BitVec 32)) Bool)

(assert (=> b!1391000 (= res!931121 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46486 0))(
  ( (Unit!46487) )
))
(declare-fun lt!610999 () Unit!46486)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95134 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46486)

(assert (=> b!1391000 (= lt!610999 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95134 (_ BitVec 32)) SeekEntryResult!10266)

(assert (=> b!1391000 (= lt!610998 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!610997 (select (arr!45927 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391000 (= lt!610997 (toIndex!0 (select (arr!45927 a!2901) j!112) mask!2840))))

(declare-fun b!1391001 () Bool)

(declare-fun res!931120 () Bool)

(assert (=> b!1391001 (=> (not res!931120) (not e!787722))))

(assert (=> b!1391001 (= res!931120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391002 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95134 (_ BitVec 32)) SeekEntryResult!10266)

(assert (=> b!1391002 (= e!787723 (= (seekEntryOrOpen!0 (select (arr!45927 a!2901) j!112) a!2901 mask!2840) (Found!10266 j!112)))))

(assert (= (and start!119330 res!931124) b!1390999))

(assert (= (and b!1390999 res!931122) b!1390996))

(assert (= (and b!1390996 res!931119) b!1390998))

(assert (= (and b!1390998 res!931125) b!1391001))

(assert (= (and b!1391001 res!931120) b!1390997))

(assert (= (and b!1390997 res!931123) b!1391000))

(assert (= (and b!1391000 res!931121) b!1391002))

(declare-fun m!1276899 () Bool)

(assert (=> start!119330 m!1276899))

(declare-fun m!1276901 () Bool)

(assert (=> start!119330 m!1276901))

(declare-fun m!1276903 () Bool)

(assert (=> b!1390998 m!1276903))

(assert (=> b!1390998 m!1276903))

(declare-fun m!1276905 () Bool)

(assert (=> b!1390998 m!1276905))

(declare-fun m!1276907 () Bool)

(assert (=> b!1390996 m!1276907))

(assert (=> b!1390996 m!1276907))

(declare-fun m!1276909 () Bool)

(assert (=> b!1390996 m!1276909))

(assert (=> b!1391000 m!1276903))

(declare-fun m!1276911 () Bool)

(assert (=> b!1391000 m!1276911))

(assert (=> b!1391000 m!1276903))

(declare-fun m!1276913 () Bool)

(assert (=> b!1391000 m!1276913))

(assert (=> b!1391000 m!1276903))

(declare-fun m!1276915 () Bool)

(assert (=> b!1391000 m!1276915))

(declare-fun m!1276917 () Bool)

(assert (=> b!1391000 m!1276917))

(declare-fun m!1276919 () Bool)

(assert (=> b!1391001 m!1276919))

(assert (=> b!1391002 m!1276903))

(assert (=> b!1391002 m!1276903))

(declare-fun m!1276921 () Bool)

(assert (=> b!1391002 m!1276921))

(declare-fun m!1276923 () Bool)

(assert (=> b!1390997 m!1276923))

(push 1)

(assert (not b!1391001))

(assert (not b!1390998))

(assert (not start!119330))

(assert (not b!1390997))

(assert (not b!1390996))

(assert (not b!1391002))

(assert (not b!1391000))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!150207 () Bool)

(assert (=> d!150207 (= (validKeyInArray!0 (select (arr!45927 a!2901) j!112)) (and (not (= (select (arr!45927 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45927 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1390998 d!150207))

(declare-fun b!1391033 () Bool)

(declare-fun e!787748 () Bool)

(declare-fun e!787750 () Bool)

(assert (=> b!1391033 (= e!787748 e!787750)))

(declare-fun c!129394 () Bool)

(assert (=> b!1391033 (= c!129394 (validKeyInArray!0 (select (arr!45927 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1391034 () Bool)

(declare-fun e!787749 () Bool)

(declare-fun contains!9776 (List!32626 (_ BitVec 64)) Bool)

(assert (=> b!1391034 (= e!787749 (contains!9776 Nil!32623 (select (arr!45927 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150209 () Bool)

(declare-fun res!931144 () Bool)

(declare-fun e!787751 () Bool)

(assert (=> d!150209 (=> res!931144 e!787751)))

(assert (=> d!150209 (= res!931144 (bvsge #b00000000000000000000000000000000 (size!46478 a!2901)))))

(assert (=> d!150209 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32623) e!787751)))

(declare-fun b!1391035 () Bool)

(declare-fun call!66725 () Bool)

(assert (=> b!1391035 (= e!787750 call!66725)))

(declare-fun b!1391036 () Bool)

(assert (=> b!1391036 (= e!787750 call!66725)))

(declare-fun b!1391037 () Bool)

(assert (=> b!1391037 (= e!787751 e!787748)))

(declare-fun res!931143 () Bool)

(assert (=> b!1391037 (=> (not res!931143) (not e!787748))))

(assert (=> b!1391037 (= res!931143 (not e!787749))))

(declare-fun res!931142 () Bool)

(assert (=> b!1391037 (=> (not res!931142) (not e!787749))))

(assert (=> b!1391037 (= res!931142 (validKeyInArray!0 (select (arr!45927 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66720 () Bool)

(assert (=> bm!66720 (= call!66725 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129394 (Cons!32622 (select (arr!45927 a!2901) #b00000000000000000000000000000000) Nil!32623) Nil!32623)))))

(assert (= (and d!150209 (not res!931144)) b!1391037))

(assert (= (and b!1391037 res!931142) b!1391034))

(assert (= (and b!1391037 res!931143) b!1391033))

(assert (= (and b!1391033 c!129394) b!1391036))

(assert (= (and b!1391033 (not c!129394)) b!1391035))

(assert (= (or b!1391036 b!1391035) bm!66720))

(declare-fun m!1276937 () Bool)

(assert (=> b!1391033 m!1276937))

(assert (=> b!1391033 m!1276937))

(declare-fun m!1276939 () Bool)

(assert (=> b!1391033 m!1276939))

(assert (=> b!1391034 m!1276937))

(assert (=> b!1391034 m!1276937))

(declare-fun m!1276941 () Bool)

(assert (=> b!1391034 m!1276941))

(assert (=> b!1391037 m!1276937))

(assert (=> b!1391037 m!1276937))

(assert (=> b!1391037 m!1276939))

(assert (=> bm!66720 m!1276937))

(declare-fun m!1276943 () Bool)

(assert (=> bm!66720 m!1276943))

(assert (=> b!1390997 d!150209))

(declare-fun d!150215 () Bool)

(declare-fun lt!611025 () SeekEntryResult!10266)

(assert (=> d!150215 (and (or (is-Undefined!10266 lt!611025) (not (is-Found!10266 lt!611025)) (and (bvsge (index!43435 lt!611025) #b00000000000000000000000000000000) (bvslt (index!43435 lt!611025) (size!46478 a!2901)))) (or (is-Undefined!10266 lt!611025) (is-Found!10266 lt!611025) (not (is-MissingZero!10266 lt!611025)) (and (bvsge (index!43434 lt!611025) #b00000000000000000000000000000000) (bvslt (index!43434 lt!611025) (size!46478 a!2901)))) (or (is-Undefined!10266 lt!611025) (is-Found!10266 lt!611025) (is-MissingZero!10266 lt!611025) (not (is-MissingVacant!10266 lt!611025)) (and (bvsge (index!43437 lt!611025) #b00000000000000000000000000000000) (bvslt (index!43437 lt!611025) (size!46478 a!2901)))) (or (is-Undefined!10266 lt!611025) (ite (is-Found!10266 lt!611025) (= (select (arr!45927 a!2901) (index!43435 lt!611025)) (select (arr!45927 a!2901) j!112)) (ite (is-MissingZero!10266 lt!611025) (= (select (arr!45927 a!2901) (index!43434 lt!611025)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10266 lt!611025) (= (select (arr!45927 a!2901) (index!43437 lt!611025)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!787775 () SeekEntryResult!10266)

(assert (=> d!150215 (= lt!611025 e!787775)))

(declare-fun c!129407 () Bool)

(declare-fun lt!611024 () SeekEntryResult!10266)

(assert (=> d!150215 (= c!129407 (and (is-Intermediate!10266 lt!611024) (undefined!11078 lt!611024)))))

(assert (=> d!150215 (= lt!611024 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45927 a!2901) j!112) mask!2840) (select (arr!45927 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150215 (validMask!0 mask!2840)))

(assert (=> d!150215 (= (seekEntryOrOpen!0 (select (arr!45927 a!2901) j!112) a!2901 mask!2840) lt!611025)))

(declare-fun b!1391069 () Bool)

(declare-fun c!129406 () Bool)

(declare-fun lt!611026 () (_ BitVec 64))

(assert (=> b!1391069 (= c!129406 (= lt!611026 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!787773 () SeekEntryResult!10266)

(declare-fun e!787774 () SeekEntryResult!10266)

(assert (=> b!1391069 (= e!787773 e!787774)))

(declare-fun b!1391070 () Bool)

(assert (=> b!1391070 (= e!787775 e!787773)))

(assert (=> b!1391070 (= lt!611026 (select (arr!45927 a!2901) (index!43436 lt!611024)))))

(declare-fun c!129405 () Bool)

(assert (=> b!1391070 (= c!129405 (= lt!611026 (select (arr!45927 a!2901) j!112)))))

(declare-fun b!1391071 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95134 (_ BitVec 32)) SeekEntryResult!10266)

(assert (=> b!1391071 (= e!787774 (seekKeyOrZeroReturnVacant!0 (x!125113 lt!611024) (index!43436 lt!611024) (index!43436 lt!611024) (select (arr!45927 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391072 () Bool)

(assert (=> b!1391072 (= e!787773 (Found!10266 (index!43436 lt!611024)))))

(declare-fun b!1391073 () Bool)

(assert (=> b!1391073 (= e!787774 (MissingZero!10266 (index!43436 lt!611024)))))

(declare-fun b!1391074 () Bool)

(assert (=> b!1391074 (= e!787775 Undefined!10266)))

(assert (= (and d!150215 c!129407) b!1391074))

(assert (= (and d!150215 (not c!129407)) b!1391070))

(assert (= (and b!1391070 c!129405) b!1391072))

(assert (= (and b!1391070 (not c!129405)) b!1391069))

(assert (= (and b!1391069 c!129406) b!1391073))

(assert (= (and b!1391069 (not c!129406)) b!1391071))

(assert (=> d!150215 m!1276913))

(assert (=> d!150215 m!1276903))

(declare-fun m!1276961 () Bool)

(assert (=> d!150215 m!1276961))

(declare-fun m!1276963 () Bool)

(assert (=> d!150215 m!1276963))

(declare-fun m!1276965 () Bool)

(assert (=> d!150215 m!1276965))

(assert (=> d!150215 m!1276903))

(assert (=> d!150215 m!1276913))

(declare-fun m!1276967 () Bool)

(assert (=> d!150215 m!1276967))

(assert (=> d!150215 m!1276899))

(declare-fun m!1276969 () Bool)

(assert (=> b!1391070 m!1276969))

(assert (=> b!1391071 m!1276903))

(declare-fun m!1276971 () Bool)

(assert (=> b!1391071 m!1276971))

(assert (=> b!1391002 d!150215))

(declare-fun d!150223 () Bool)

(assert (=> d!150223 (= (validKeyInArray!0 (select (arr!45927 a!2901) i!1037)) (and (not (= (select (arr!45927 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45927 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1390996 d!150223))

(declare-fun b!1391087 () Bool)

(declare-fun e!787785 () Bool)

(declare-fun call!66733 () Bool)

(assert (=> b!1391087 (= e!787785 call!66733)))

(declare-fun d!150225 () Bool)

(declare-fun res!931162 () Bool)

(declare-fun e!787787 () Bool)

(assert (=> d!150225 (=> res!931162 e!787787)))

(assert (=> d!150225 (= res!931162 (bvsge #b00000000000000000000000000000000 (size!46478 a!2901)))))

(assert (=> d!150225 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!787787)))

(declare-fun b!1391088 () Bool)

(declare-fun e!787786 () Bool)

(assert (=> b!1391088 (= e!787786 e!787785)))

(declare-fun lt!611038 () (_ BitVec 64))

(assert (=> b!1391088 (= lt!611038 (select (arr!45927 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!611036 () Unit!46486)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95134 (_ BitVec 64) (_ BitVec 32)) Unit!46486)

(assert (=> b!1391088 (= lt!611036 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611038 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!95134 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1391088 (arrayContainsKey!0 a!2901 lt!611038 #b00000000000000000000000000000000)))

(declare-fun lt!611037 () Unit!46486)

(assert (=> b!1391088 (= lt!611037 lt!611036)))

(declare-fun res!931163 () Bool)

(assert (=> b!1391088 (= res!931163 (= (seekEntryOrOpen!0 (select (arr!45927 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10266 #b00000000000000000000000000000000)))))

(assert (=> b!1391088 (=> (not res!931163) (not e!787785))))

(declare-fun b!1391089 () Bool)

(assert (=> b!1391089 (= e!787786 call!66733)))

(declare-fun b!1391090 () Bool)

(assert (=> b!1391090 (= e!787787 e!787786)))

(declare-fun c!129411 () Bool)

(assert (=> b!1391090 (= c!129411 (validKeyInArray!0 (select (arr!45927 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66730 () Bool)

(assert (=> bm!66730 (= call!66733 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!150225 (not res!931162)) b!1391090))

(assert (= (and b!1391090 c!129411) b!1391088))

(assert (= (and b!1391090 (not c!129411)) b!1391089))

(assert (= (and b!1391088 res!931163) b!1391087))

(assert (= (or b!1391087 b!1391089) bm!66730))

(assert (=> b!1391088 m!1276937))

(declare-fun m!1276979 () Bool)

(assert (=> b!1391088 m!1276979))

(declare-fun m!1276981 () Bool)

(assert (=> b!1391088 m!1276981))

(assert (=> b!1391088 m!1276937))

(declare-fun m!1276983 () Bool)

(assert (=> b!1391088 m!1276983))

(assert (=> b!1391090 m!1276937))

(assert (=> b!1391090 m!1276937))

(assert (=> b!1391090 m!1276939))

(declare-fun m!1276985 () Bool)

(assert (=> bm!66730 m!1276985))

(assert (=> b!1391001 d!150225))

(declare-fun d!150237 () Bool)

(assert (=> d!150237 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119330 d!150237))

(declare-fun d!150241 () Bool)

(assert (=> d!150241 (= (array_inv!34872 a!2901) (bvsge (size!46478 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119330 d!150241))

(declare-fun b!1391091 () Bool)

(declare-fun e!787788 () Bool)

(declare-fun call!66734 () Bool)

(assert (=> b!1391091 (= e!787788 call!66734)))

(declare-fun d!150243 () Bool)

(declare-fun res!931164 () Bool)

(declare-fun e!787790 () Bool)

(assert (=> d!150243 (=> res!931164 e!787790)))

(assert (=> d!150243 (= res!931164 (bvsge j!112 (size!46478 a!2901)))))

(assert (=> d!150243 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!787790)))

(declare-fun b!1391092 () Bool)

(declare-fun e!787789 () Bool)

(assert (=> b!1391092 (= e!787789 e!787788)))

(declare-fun lt!611044 () (_ BitVec 64))

(assert (=> b!1391092 (= lt!611044 (select (arr!45927 a!2901) j!112))))

(declare-fun lt!611042 () Unit!46486)

(assert (=> b!1391092 (= lt!611042 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611044 j!112))))

(assert (=> b!1391092 (arrayContainsKey!0 a!2901 lt!611044 #b00000000000000000000000000000000)))

(declare-fun lt!611043 () Unit!46486)

(assert (=> b!1391092 (= lt!611043 lt!611042)))

(declare-fun res!931165 () Bool)

(assert (=> b!1391092 (= res!931165 (= (seekEntryOrOpen!0 (select (arr!45927 a!2901) j!112) a!2901 mask!2840) (Found!10266 j!112)))))

(assert (=> b!1391092 (=> (not res!931165) (not e!787788))))

(declare-fun b!1391093 () Bool)

(assert (=> b!1391093 (= e!787789 call!66734)))

(declare-fun b!1391094 () Bool)

(assert (=> b!1391094 (= e!787790 e!787789)))

(declare-fun c!129412 () Bool)

(assert (=> b!1391094 (= c!129412 (validKeyInArray!0 (select (arr!45927 a!2901) j!112)))))

(declare-fun bm!66731 () Bool)

(assert (=> bm!66731 (= call!66734 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!150243 (not res!931164)) b!1391094))

(assert (= (and b!1391094 c!129412) b!1391092))

(assert (= (and b!1391094 (not c!129412)) b!1391093))

(assert (= (and b!1391092 res!931165) b!1391091))

(assert (= (or b!1391091 b!1391093) bm!66731))

(assert (=> b!1391092 m!1276903))

(declare-fun m!1276989 () Bool)

(assert (=> b!1391092 m!1276989))

(declare-fun m!1276991 () Bool)

(assert (=> b!1391092 m!1276991))

(assert (=> b!1391092 m!1276903))

(assert (=> b!1391092 m!1276921))

(assert (=> b!1391094 m!1276903))

(assert (=> b!1391094 m!1276903))

(assert (=> b!1391094 m!1276905))

(declare-fun m!1276993 () Bool)

(assert (=> bm!66731 m!1276993))

(assert (=> b!1391000 d!150243))

(declare-fun d!150245 () Bool)

(assert (=> d!150245 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!611047 () Unit!46486)

(declare-fun choose!38 (array!95134 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46486)

(assert (=> d!150245 (= lt!611047 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150245 (validMask!0 mask!2840)))

(assert (=> d!150245 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!611047)))

(declare-fun bs!40464 () Bool)

(assert (= bs!40464 d!150245))

(assert (=> bs!40464 m!1276917))

(declare-fun m!1276995 () Bool)

(assert (=> bs!40464 m!1276995))

(assert (=> bs!40464 m!1276899))

(assert (=> b!1391000 d!150245))

(declare-fun b!1391153 () Bool)

(declare-fun lt!611071 () SeekEntryResult!10266)

(assert (=> b!1391153 (and (bvsge (index!43436 lt!611071) #b00000000000000000000000000000000) (bvslt (index!43436 lt!611071) (size!46478 a!2901)))))

(declare-fun res!931181 () Bool)

(assert (=> b!1391153 (= res!931181 (= (select (arr!45927 a!2901) (index!43436 lt!611071)) (select (arr!45927 a!2901) j!112)))))

(declare-fun e!787825 () Bool)

(assert (=> b!1391153 (=> res!931181 e!787825)))

(declare-fun e!787824 () Bool)

(assert (=> b!1391153 (= e!787824 e!787825)))

(declare-fun b!1391154 () Bool)

(declare-fun e!787826 () Bool)

(assert (=> b!1391154 (= e!787826 e!787824)))

(declare-fun res!931182 () Bool)

(assert (=> b!1391154 (= res!931182 (and (is-Intermediate!10266 lt!611071) (not (undefined!11078 lt!611071)) (bvslt (x!125113 lt!611071) #b01111111111111111111111111111110) (bvsge (x!125113 lt!611071) #b00000000000000000000000000000000) (bvsge (x!125113 lt!611071) #b00000000000000000000000000000000)))))

(assert (=> b!1391154 (=> (not res!931182) (not e!787824))))

(declare-fun b!1391155 () Bool)

(assert (=> b!1391155 (= e!787826 (bvsge (x!125113 lt!611071) #b01111111111111111111111111111110))))

(declare-fun b!1391156 () Bool)

(assert (=> b!1391156 (and (bvsge (index!43436 lt!611071) #b00000000000000000000000000000000) (bvslt (index!43436 lt!611071) (size!46478 a!2901)))))

(declare-fun res!931180 () Bool)

(assert (=> b!1391156 (= res!931180 (= (select (arr!45927 a!2901) (index!43436 lt!611071)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1391156 (=> res!931180 e!787825)))

(declare-fun e!787823 () SeekEntryResult!10266)

(declare-fun b!1391157 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391157 (= e!787823 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!610997 #b00000000000000000000000000000000 mask!2840) (select (arr!45927 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!150247 () Bool)

(assert (=> d!150247 e!787826))

(declare-fun c!129436 () Bool)

(assert (=> d!150247 (= c!129436 (and (is-Intermediate!10266 lt!611071) (undefined!11078 lt!611071)))))

(declare-fun e!787827 () SeekEntryResult!10266)

(assert (=> d!150247 (= lt!611071 e!787827)))

(declare-fun c!129435 () Bool)

(assert (=> d!150247 (= c!129435 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!611072 () (_ BitVec 64))

(assert (=> d!150247 (= lt!611072 (select (arr!45927 a!2901) lt!610997))))

(assert (=> d!150247 (validMask!0 mask!2840)))

(assert (=> d!150247 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!610997 (select (arr!45927 a!2901) j!112) a!2901 mask!2840) lt!611071)))

(declare-fun b!1391158 () Bool)

(assert (=> b!1391158 (= e!787827 e!787823)))

(declare-fun c!129437 () Bool)

(assert (=> b!1391158 (= c!129437 (or (= lt!611072 (select (arr!45927 a!2901) j!112)) (= (bvadd lt!611072 lt!611072) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1391159 () Bool)

(assert (=> b!1391159 (and (bvsge (index!43436 lt!611071) #b00000000000000000000000000000000) (bvslt (index!43436 lt!611071) (size!46478 a!2901)))))

(assert (=> b!1391159 (= e!787825 (= (select (arr!45927 a!2901) (index!43436 lt!611071)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1391160 () Bool)

(assert (=> b!1391160 (= e!787823 (Intermediate!10266 false lt!610997 #b00000000000000000000000000000000))))

(declare-fun b!1391161 () Bool)

(assert (=> b!1391161 (= e!787827 (Intermediate!10266 true lt!610997 #b00000000000000000000000000000000))))

(assert (= (and d!150247 c!129435) b!1391161))

(assert (= (and d!150247 (not c!129435)) b!1391158))

(assert (= (and b!1391158 c!129437) b!1391160))

(assert (= (and b!1391158 (not c!129437)) b!1391157))

(assert (= (and d!150247 c!129436) b!1391155))

(assert (= (and d!150247 (not c!129436)) b!1391154))

(assert (= (and b!1391154 res!931182) b!1391153))

(assert (= (and b!1391153 (not res!931181)) b!1391156))

(assert (= (and b!1391156 (not res!931180)) b!1391159))

(declare-fun m!1277017 () Bool)

(assert (=> b!1391153 m!1277017))

(declare-fun m!1277019 () Bool)

(assert (=> b!1391157 m!1277019))

(assert (=> b!1391157 m!1277019))

(assert (=> b!1391157 m!1276903))

(declare-fun m!1277021 () Bool)

(assert (=> b!1391157 m!1277021))

(declare-fun m!1277023 () Bool)

(assert (=> d!150247 m!1277023))

(assert (=> d!150247 m!1276899))

(assert (=> b!1391156 m!1277017))

(assert (=> b!1391159 m!1277017))

(assert (=> b!1391000 d!150247))

(declare-fun d!150257 () Bool)

(declare-fun lt!611080 () (_ BitVec 32))

(declare-fun lt!611079 () (_ BitVec 32))

(assert (=> d!150257 (= lt!611080 (bvmul (bvxor lt!611079 (bvlshr lt!611079 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150257 (= lt!611079 ((_ extract 31 0) (bvand (bvxor (select (arr!45927 a!2901) j!112) (bvlshr (select (arr!45927 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150257 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!931186 (let ((h!33844 ((_ extract 31 0) (bvand (bvxor (select (arr!45927 a!2901) j!112) (bvlshr (select (arr!45927 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125116 (bvmul (bvxor h!33844 (bvlshr h!33844 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125116 (bvlshr x!125116 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!931186 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!931186 #b00000000000000000000000000000000))))))

(assert (=> d!150257 (= (toIndex!0 (select (arr!45927 a!2901) j!112) mask!2840) (bvand (bvxor lt!611080 (bvlshr lt!611080 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1391000 d!150257))

(push 1)

(assert (not b!1391034))

(assert (not bm!66720))

(assert (not d!150247))

(assert (not d!150215))

(assert (not b!1391088))

(assert (not bm!66731))

(assert (not b!1391094))

(assert (not b!1391071))

(assert (not d!150245))

(assert (not b!1391092))

(assert (not b!1391090))

(assert (not b!1391157))

(assert (not b!1391037))

(assert (not bm!66730))

(assert (not b!1391033))

(check-sat)

(pop 1)

(push 1)

(check-sat)

