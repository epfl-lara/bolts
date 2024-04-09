; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102558 () Bool)

(assert start!102558)

(declare-fun b!1232823 () Bool)

(declare-fun res!821237 () Bool)

(declare-fun e!699318 () Bool)

(assert (=> b!1232823 (=> (not res!821237) (not e!699318))))

(declare-datatypes ((array!79479 0))(
  ( (array!79480 (arr!38348 (Array (_ BitVec 32) (_ BitVec 64))) (size!38885 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79479)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232823 (= res!821237 (validKeyInArray!0 (select (arr!38348 a!3806) from!3184)))))

(declare-fun b!1232824 () Bool)

(declare-fun e!699321 () Bool)

(declare-datatypes ((List!27299 0))(
  ( (Nil!27296) (Cons!27295 (h!28504 (_ BitVec 64)) (t!40769 List!27299)) )
))
(declare-fun arrayNoDuplicates!0 (array!79479 (_ BitVec 32) List!27299) Bool)

(assert (=> b!1232824 (= e!699321 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27295 (select (arr!38348 a!3806) from!3184) Nil!27296)))))

(declare-fun res!821236 () Bool)

(assert (=> start!102558 (=> (not res!821236) (not e!699318))))

(assert (=> start!102558 (= res!821236 (bvslt (size!38885 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102558 e!699318))

(declare-fun array_inv!29124 (array!79479) Bool)

(assert (=> start!102558 (array_inv!29124 a!3806)))

(assert (=> start!102558 true))

(declare-fun b!1232825 () Bool)

(declare-fun res!821235 () Bool)

(assert (=> b!1232825 (=> (not res!821235) (not e!699318))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79479 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232825 (= res!821235 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1232826 () Bool)

(declare-fun res!821239 () Bool)

(assert (=> b!1232826 (=> (not res!821239) (not e!699318))))

(assert (=> b!1232826 (= res!821239 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38885 a!3806)) (bvslt from!3184 (size!38885 a!3806))))))

(declare-fun b!1232827 () Bool)

(declare-fun res!821234 () Bool)

(assert (=> b!1232827 (=> (not res!821234) (not e!699318))))

(declare-fun acc!823 () List!27299)

(declare-fun noDuplicate!1821 (List!27299) Bool)

(assert (=> b!1232827 (= res!821234 (noDuplicate!1821 acc!823))))

(declare-fun b!1232828 () Bool)

(declare-fun res!821242 () Bool)

(assert (=> b!1232828 (=> (not res!821242) (not e!699318))))

(assert (=> b!1232828 (= res!821242 (validKeyInArray!0 k!2913))))

(declare-fun b!1232829 () Bool)

(declare-fun res!821246 () Bool)

(assert (=> b!1232829 (=> (not res!821246) (not e!699318))))

(assert (=> b!1232829 (= res!821246 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1232830 () Bool)

(declare-fun e!699319 () Bool)

(assert (=> b!1232830 (= e!699318 (not e!699319))))

(declare-fun res!821243 () Bool)

(assert (=> b!1232830 (=> res!821243 e!699319)))

(assert (=> b!1232830 (= res!821243 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-fun lt!559525 () List!27299)

(assert (=> b!1232830 (= lt!559525 (Cons!27295 (select (arr!38348 a!3806) from!3184) Nil!27296))))

(assert (=> b!1232830 e!699321))

(declare-fun res!821245 () Bool)

(assert (=> b!1232830 (=> (not res!821245) (not e!699321))))

(assert (=> b!1232830 (= res!821245 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27296))))

(declare-datatypes ((Unit!40776 0))(
  ( (Unit!40777) )
))
(declare-fun lt!559524 () Unit!40776)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79479 List!27299 List!27299 (_ BitVec 32)) Unit!40776)

(assert (=> b!1232830 (= lt!559524 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27296 from!3184))))

(assert (=> b!1232830 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27295 (select (arr!38348 a!3806) from!3184) acc!823))))

(declare-fun b!1232831 () Bool)

(declare-fun e!699320 () Bool)

(assert (=> b!1232831 (= e!699319 e!699320)))

(declare-fun res!821240 () Bool)

(assert (=> b!1232831 (=> (not res!821240) (not e!699320))))

(declare-fun contains!7214 (List!27299 (_ BitVec 64)) Bool)

(assert (=> b!1232831 (= res!821240 (not (contains!7214 lt!559525 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232832 () Bool)

(declare-fun res!821238 () Bool)

(assert (=> b!1232832 (=> (not res!821238) (not e!699318))))

(assert (=> b!1232832 (= res!821238 (not (contains!7214 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232833 () Bool)

(assert (=> b!1232833 (= e!699320 (not (contains!7214 lt!559525 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232834 () Bool)

(declare-fun res!821244 () Bool)

(assert (=> b!1232834 (=> (not res!821244) (not e!699318))))

(assert (=> b!1232834 (= res!821244 (not (contains!7214 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232835 () Bool)

(declare-fun res!821241 () Bool)

(assert (=> b!1232835 (=> res!821241 e!699319)))

(assert (=> b!1232835 (= res!821241 (not (noDuplicate!1821 lt!559525)))))

(assert (= (and start!102558 res!821236) b!1232828))

(assert (= (and b!1232828 res!821242) b!1232826))

(assert (= (and b!1232826 res!821239) b!1232827))

(assert (= (and b!1232827 res!821234) b!1232834))

(assert (= (and b!1232834 res!821244) b!1232832))

(assert (= (and b!1232832 res!821238) b!1232825))

(assert (= (and b!1232825 res!821235) b!1232829))

(assert (= (and b!1232829 res!821246) b!1232823))

(assert (= (and b!1232823 res!821237) b!1232830))

(assert (= (and b!1232830 res!821245) b!1232824))

(assert (= (and b!1232830 (not res!821243)) b!1232835))

(assert (= (and b!1232835 (not res!821241)) b!1232831))

(assert (= (and b!1232831 res!821240) b!1232833))

(declare-fun m!1136895 () Bool)

(assert (=> b!1232833 m!1136895))

(declare-fun m!1136897 () Bool)

(assert (=> b!1232825 m!1136897))

(declare-fun m!1136899 () Bool)

(assert (=> b!1232830 m!1136899))

(declare-fun m!1136901 () Bool)

(assert (=> b!1232830 m!1136901))

(declare-fun m!1136903 () Bool)

(assert (=> b!1232830 m!1136903))

(declare-fun m!1136905 () Bool)

(assert (=> b!1232830 m!1136905))

(declare-fun m!1136907 () Bool)

(assert (=> b!1232831 m!1136907))

(declare-fun m!1136909 () Bool)

(assert (=> b!1232827 m!1136909))

(declare-fun m!1136911 () Bool)

(assert (=> b!1232834 m!1136911))

(declare-fun m!1136913 () Bool)

(assert (=> b!1232832 m!1136913))

(assert (=> b!1232823 m!1136899))

(assert (=> b!1232823 m!1136899))

(declare-fun m!1136915 () Bool)

(assert (=> b!1232823 m!1136915))

(declare-fun m!1136917 () Bool)

(assert (=> start!102558 m!1136917))

(assert (=> b!1232824 m!1136899))

(declare-fun m!1136919 () Bool)

(assert (=> b!1232824 m!1136919))

(declare-fun m!1136921 () Bool)

(assert (=> b!1232835 m!1136921))

(declare-fun m!1136923 () Bool)

(assert (=> b!1232829 m!1136923))

(declare-fun m!1136925 () Bool)

(assert (=> b!1232828 m!1136925))

(push 1)

(assert (not b!1232835))

(assert (not b!1232831))

(assert (not b!1232827))

(assert (not b!1232829))

(assert (not start!102558))

(assert (not b!1232824))

(assert (not b!1232823))

(assert (not b!1232834))

(assert (not b!1232825))

(assert (not b!1232828))

(assert (not b!1232830))

(assert (not b!1232832))

(assert (not b!1232833))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134997 () Bool)

(declare-fun lt!559535 () Bool)

(declare-fun content!581 (List!27299) (Set (_ BitVec 64)))

(assert (=> d!134997 (= lt!559535 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!581 acc!823)))))

(declare-fun e!699357 () Bool)

(assert (=> d!134997 (= lt!559535 e!699357)))

(declare-fun res!821279 () Bool)

(assert (=> d!134997 (=> (not res!821279) (not e!699357))))

(assert (=> d!134997 (= res!821279 (is-Cons!27295 acc!823))))

(assert (=> d!134997 (= (contains!7214 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559535)))

(declare-fun b!1232873 () Bool)

(declare-fun e!699358 () Bool)

(assert (=> b!1232873 (= e!699357 e!699358)))

(declare-fun res!821278 () Bool)

(assert (=> b!1232873 (=> res!821278 e!699358)))

(assert (=> b!1232873 (= res!821278 (= (h!28504 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232874 () Bool)

(assert (=> b!1232874 (= e!699358 (contains!7214 (t!40769 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134997 res!821279) b!1232873))

(assert (= (and b!1232873 (not res!821278)) b!1232874))

(declare-fun m!1136947 () Bool)

(assert (=> d!134997 m!1136947))

(declare-fun m!1136950 () Bool)

(assert (=> d!134997 m!1136950))

(declare-fun m!1136955 () Bool)

(assert (=> b!1232874 m!1136955))

(assert (=> b!1232832 d!134997))

(declare-fun d!135008 () Bool)

(declare-fun lt!559536 () Bool)

(assert (=> d!135008 (= lt!559536 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!581 lt!559525)))))

(declare-fun e!699361 () Bool)

(assert (=> d!135008 (= lt!559536 e!699361)))

(declare-fun res!821283 () Bool)

(assert (=> d!135008 (=> (not res!821283) (not e!699361))))

(assert (=> d!135008 (= res!821283 (is-Cons!27295 lt!559525))))

(assert (=> d!135008 (= (contains!7214 lt!559525 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559536)))

(declare-fun b!1232877 () Bool)

(declare-fun e!699362 () Bool)

(assert (=> b!1232877 (= e!699361 e!699362)))

(declare-fun res!821282 () Bool)

(assert (=> b!1232877 (=> res!821282 e!699362)))

(assert (=> b!1232877 (= res!821282 (= (h!28504 lt!559525) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232878 () Bool)

(assert (=> b!1232878 (= e!699362 (contains!7214 (t!40769 lt!559525) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135008 res!821283) b!1232877))

(assert (= (and b!1232877 (not res!821282)) b!1232878))

(declare-fun m!1136961 () Bool)

(assert (=> d!135008 m!1136961))

(declare-fun m!1136967 () Bool)

(assert (=> d!135008 m!1136967))

(declare-fun m!1136969 () Bool)

(assert (=> b!1232878 m!1136969))

(assert (=> b!1232833 d!135008))

(declare-fun d!135015 () Bool)

(assert (=> d!135015 (= (validKeyInArray!0 (select (arr!38348 a!3806) from!3184)) (and (not (= (select (arr!38348 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38348 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1232823 d!135015))

(declare-fun d!135021 () Bool)

(declare-fun lt!559539 () Bool)

(assert (=> d!135021 (= lt!559539 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!581 acc!823)))))

(declare-fun e!699369 () Bool)

(assert (=> d!135021 (= lt!559539 e!699369)))

(declare-fun res!821291 () Bool)

(assert (=> d!135021 (=> (not res!821291) (not e!699369))))

(assert (=> d!135021 (= res!821291 (is-Cons!27295 acc!823))))

(assert (=> d!135021 (= (contains!7214 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559539)))

(declare-fun b!1232885 () Bool)

(declare-fun e!699370 () Bool)

(assert (=> b!1232885 (= e!699369 e!699370)))

(declare-fun res!821290 () Bool)

(assert (=> b!1232885 (=> res!821290 e!699370)))

(assert (=> b!1232885 (= res!821290 (= (h!28504 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232886 () Bool)

(assert (=> b!1232886 (= e!699370 (contains!7214 (t!40769 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135021 res!821291) b!1232885))

(assert (= (and b!1232885 (not res!821290)) b!1232886))

(assert (=> d!135021 m!1136947))

(declare-fun m!1136977 () Bool)

(assert (=> d!135021 m!1136977))

(declare-fun m!1136979 () Bool)

(assert (=> b!1232886 m!1136979))

(assert (=> b!1232834 d!135021))

(declare-fun d!135023 () Bool)

(declare-fun res!821309 () Bool)

(declare-fun e!699389 () Bool)

(assert (=> d!135023 (=> res!821309 e!699389)))

(assert (=> d!135023 (= res!821309 (is-Nil!27296 lt!559525))))

(assert (=> d!135023 (= (noDuplicate!1821 lt!559525) e!699389)))

(declare-fun b!1232906 () Bool)

(declare-fun e!699390 () Bool)

(assert (=> b!1232906 (= e!699389 e!699390)))

(declare-fun res!821310 () Bool)

(assert (=> b!1232906 (=> (not res!821310) (not e!699390))))

(assert (=> b!1232906 (= res!821310 (not (contains!7214 (t!40769 lt!559525) (h!28504 lt!559525))))))

(declare-fun b!1232907 () Bool)

(assert (=> b!1232907 (= e!699390 (noDuplicate!1821 (t!40769 lt!559525)))))

(assert (= (and d!135023 (not res!821309)) b!1232906))

(assert (= (and b!1232906 res!821310) b!1232907))

(declare-fun m!1136991 () Bool)

(assert (=> b!1232906 m!1136991))

(declare-fun m!1136993 () Bool)

(assert (=> b!1232907 m!1136993))

(assert (=> b!1232835 d!135023))

(declare-fun b!1232954 () Bool)

(declare-fun e!699429 () Bool)

(declare-fun call!60948 () Bool)

(assert (=> b!1232954 (= e!699429 call!60948)))

(declare-fun b!1232955 () Bool)

(assert (=> b!1232955 (= e!699429 call!60948)))

(declare-fun c!120669 () Bool)

(declare-fun bm!60945 () Bool)

(assert (=> bm!60945 (= call!60948 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120669 (Cons!27295 (select (arr!38348 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27295 (select (arr!38348 a!3806) from!3184) Nil!27296)) (Cons!27295 (select (arr!38348 a!3806) from!3184) Nil!27296))))))

(declare-fun d!135033 () Bool)

(declare-fun res!821342 () Bool)

(declare-fun e!699432 () Bool)

(assert (=> d!135033 (=> res!821342 e!699432)))

(assert (=> d!135033 (= res!821342 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38885 a!3806)))))

(assert (=> d!135033 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27295 (select (arr!38348 a!3806) from!3184) Nil!27296)) e!699432)))

(declare-fun b!1232956 () Bool)

(declare-fun e!699431 () Bool)

(assert (=> b!1232956 (= e!699432 e!699431)))

(declare-fun res!821341 () Bool)

(assert (=> b!1232956 (=> (not res!821341) (not e!699431))))

(declare-fun e!699430 () Bool)

(assert (=> b!1232956 (= res!821341 (not e!699430))))

(declare-fun res!821343 () Bool)

(assert (=> b!1232956 (=> (not res!821343) (not e!699430))))

(assert (=> b!1232956 (= res!821343 (validKeyInArray!0 (select (arr!38348 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232957 () Bool)

(assert (=> b!1232957 (= e!699430 (contains!7214 (Cons!27295 (select (arr!38348 a!3806) from!3184) Nil!27296) (select (arr!38348 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232958 () Bool)

(assert (=> b!1232958 (= e!699431 e!699429)))

(assert (=> b!1232958 (= c!120669 (validKeyInArray!0 (select (arr!38348 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!135033 (not res!821342)) b!1232956))

(assert (= (and b!1232956 res!821343) b!1232957))

(assert (= (and b!1232956 res!821341) b!1232958))

(assert (= (and b!1232958 c!120669) b!1232954))

(assert (= (and b!1232958 (not c!120669)) b!1232955))

(assert (= (or b!1232954 b!1232955) bm!60945))

(declare-fun m!1137025 () Bool)

(assert (=> bm!60945 m!1137025))

(declare-fun m!1137030 () Bool)

(assert (=> bm!60945 m!1137030))

(assert (=> b!1232956 m!1137025))

(assert (=> b!1232956 m!1137025))

(declare-fun m!1137039 () Bool)

(assert (=> b!1232956 m!1137039))

(assert (=> b!1232957 m!1137025))

(assert (=> b!1232957 m!1137025))

(declare-fun m!1137041 () Bool)

(assert (=> b!1232957 m!1137041))

(assert (=> b!1232958 m!1137025))

(assert (=> b!1232958 m!1137025))

(assert (=> b!1232958 m!1137039))

(assert (=> b!1232824 d!135033))

(declare-fun d!135055 () Bool)

(declare-fun res!821364 () Bool)

(declare-fun e!699455 () Bool)

(assert (=> d!135055 (=> res!821364 e!699455)))

(assert (=> d!135055 (= res!821364 (= (select (arr!38348 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k!2913))))

(assert (=> d!135055 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!699455)))

(declare-fun b!1232983 () Bool)

(declare-fun e!699456 () Bool)

(assert (=> b!1232983 (= e!699455 e!699456)))

(declare-fun res!821365 () Bool)

(assert (=> b!1232983 (=> (not res!821365) (not e!699456))))

(assert (=> b!1232983 (= res!821365 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38885 a!3806)))))

(declare-fun b!1232984 () Bool)

(assert (=> b!1232984 (= e!699456 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!135055 (not res!821364)) b!1232983))

(assert (= (and b!1232983 res!821365) b!1232984))

(assert (=> d!135055 m!1137025))

(declare-fun m!1137059 () Bool)

(assert (=> b!1232984 m!1137059))

(assert (=> b!1232825 d!135055))

(declare-fun d!135063 () Bool)

(declare-fun res!821366 () Bool)

(declare-fun e!699457 () Bool)

(assert (=> d!135063 (=> res!821366 e!699457)))

(assert (=> d!135063 (= res!821366 (is-Nil!27296 acc!823))))

(assert (=> d!135063 (= (noDuplicate!1821 acc!823) e!699457)))

(declare-fun b!1232985 () Bool)

(declare-fun e!699458 () Bool)

(assert (=> b!1232985 (= e!699457 e!699458)))

(declare-fun res!821367 () Bool)

(assert (=> b!1232985 (=> (not res!821367) (not e!699458))))

(assert (=> b!1232985 (= res!821367 (not (contains!7214 (t!40769 acc!823) (h!28504 acc!823))))))

(declare-fun b!1232986 () Bool)

(assert (=> b!1232986 (= e!699458 (noDuplicate!1821 (t!40769 acc!823)))))

(assert (= (and d!135063 (not res!821366)) b!1232985))

(assert (= (and b!1232985 res!821367) b!1232986))

(declare-fun m!1137061 () Bool)

(assert (=> b!1232985 m!1137061))

(declare-fun m!1137063 () Bool)

(assert (=> b!1232986 m!1137063))

(assert (=> b!1232827 d!135063))

(declare-fun d!135065 () Bool)

(assert (=> d!135065 (= (validKeyInArray!0 k!2913) (and (not (= k!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1232828 d!135065))

(declare-fun b!1232987 () Bool)

(declare-fun e!699459 () Bool)

(declare-fun call!60951 () Bool)

(assert (=> b!1232987 (= e!699459 call!60951)))

(declare-fun b!1232988 () Bool)

(assert (=> b!1232988 (= e!699459 call!60951)))

(declare-fun c!120672 () Bool)

(declare-fun bm!60948 () Bool)

(assert (=> bm!60948 (= call!60951 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120672 (Cons!27295 (select (arr!38348 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun d!135067 () Bool)

(declare-fun res!821369 () Bool)

(declare-fun e!699462 () Bool)

(assert (=> d!135067 (=> res!821369 e!699462)))

(assert (=> d!135067 (= res!821369 (bvsge from!3184 (size!38885 a!3806)))))

(assert (=> d!135067 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!699462)))

(declare-fun b!1232989 () Bool)

(declare-fun e!699461 () Bool)

(assert (=> b!1232989 (= e!699462 e!699461)))

(declare-fun res!821368 () Bool)

(assert (=> b!1232989 (=> (not res!821368) (not e!699461))))

(declare-fun e!699460 () Bool)

(assert (=> b!1232989 (= res!821368 (not e!699460))))

(declare-fun res!821370 () Bool)

(assert (=> b!1232989 (=> (not res!821370) (not e!699460))))

(assert (=> b!1232989 (= res!821370 (validKeyInArray!0 (select (arr!38348 a!3806) from!3184)))))

(declare-fun b!1232990 () Bool)

(assert (=> b!1232990 (= e!699460 (contains!7214 acc!823 (select (arr!38348 a!3806) from!3184)))))

(declare-fun b!1232991 () Bool)

(assert (=> b!1232991 (= e!699461 e!699459)))

(assert (=> b!1232991 (= c!120672 (validKeyInArray!0 (select (arr!38348 a!3806) from!3184)))))

(assert (= (and d!135067 (not res!821369)) b!1232989))

(assert (= (and b!1232989 res!821370) b!1232990))

(assert (= (and b!1232989 res!821368) b!1232991))

(assert (= (and b!1232991 c!120672) b!1232987))

(assert (= (and b!1232991 (not c!120672)) b!1232988))

(assert (= (or b!1232987 b!1232988) bm!60948))

(assert (=> bm!60948 m!1136899))

(declare-fun m!1137065 () Bool)

(assert (=> bm!60948 m!1137065))

(assert (=> b!1232989 m!1136899))

(assert (=> b!1232989 m!1136899))

(assert (=> b!1232989 m!1136915))

(assert (=> b!1232990 m!1136899))

(assert (=> b!1232990 m!1136899))

(declare-fun m!1137067 () Bool)

(assert (=> b!1232990 m!1137067))

(assert (=> b!1232991 m!1136899))

(assert (=> b!1232991 m!1136899))

(assert (=> b!1232991 m!1136915))

(assert (=> b!1232829 d!135067))

(declare-fun b!1232992 () Bool)

(declare-fun e!699463 () Bool)

(declare-fun call!60952 () Bool)

(assert (=> b!1232992 (= e!699463 call!60952)))

(declare-fun b!1232993 () Bool)

(assert (=> b!1232993 (= e!699463 call!60952)))

(declare-fun bm!60949 () Bool)

(declare-fun c!120673 () Bool)

(assert (=> bm!60949 (= call!60952 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120673 (Cons!27295 (select (arr!38348 a!3806) from!3184) Nil!27296) Nil!27296)))))

(declare-fun d!135069 () Bool)

(declare-fun res!821372 () Bool)

(declare-fun e!699466 () Bool)

(assert (=> d!135069 (=> res!821372 e!699466)))

(assert (=> d!135069 (= res!821372 (bvsge from!3184 (size!38885 a!3806)))))

(assert (=> d!135069 (= (arrayNoDuplicates!0 a!3806 from!3184 Nil!27296) e!699466)))

(declare-fun b!1232994 () Bool)

(declare-fun e!699465 () Bool)

(assert (=> b!1232994 (= e!699466 e!699465)))

(declare-fun res!821371 () Bool)

(assert (=> b!1232994 (=> (not res!821371) (not e!699465))))

(declare-fun e!699464 () Bool)

(assert (=> b!1232994 (= res!821371 (not e!699464))))

(declare-fun res!821373 () Bool)

(assert (=> b!1232994 (=> (not res!821373) (not e!699464))))

(assert (=> b!1232994 (= res!821373 (validKeyInArray!0 (select (arr!38348 a!3806) from!3184)))))

(declare-fun b!1232995 () Bool)

(assert (=> b!1232995 (= e!699464 (contains!7214 Nil!27296 (select (arr!38348 a!3806) from!3184)))))

(declare-fun b!1232996 () Bool)

(assert (=> b!1232996 (= e!699465 e!699463)))

(assert (=> b!1232996 (= c!120673 (validKeyInArray!0 (select (arr!38348 a!3806) from!3184)))))

(assert (= (and d!135069 (not res!821372)) b!1232994))

(assert (= (and b!1232994 res!821373) b!1232995))

(assert (= (and b!1232994 res!821371) b!1232996))

(assert (= (and b!1232996 c!120673) b!1232992))

(assert (= (and b!1232996 (not c!120673)) b!1232993))

(assert (= (or b!1232992 b!1232993) bm!60949))

(assert (=> bm!60949 m!1136899))

(declare-fun m!1137069 () Bool)

(assert (=> bm!60949 m!1137069))

(assert (=> b!1232994 m!1136899))

(assert (=> b!1232994 m!1136899))

(assert (=> b!1232994 m!1136915))

(assert (=> b!1232995 m!1136899))

(assert (=> b!1232995 m!1136899))

(declare-fun m!1137071 () Bool)

(assert (=> b!1232995 m!1137071))

(assert (=> b!1232996 m!1136899))

(assert (=> b!1232996 m!1136899))

(assert (=> b!1232996 m!1136915))

(assert (=> b!1232830 d!135069))

(declare-fun d!135071 () Bool)

(assert (=> d!135071 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27296)))

(declare-fun lt!559551 () Unit!40776)

(declare-fun choose!80 (array!79479 List!27299 List!27299 (_ BitVec 32)) Unit!40776)

(assert (=> d!135071 (= lt!559551 (choose!80 a!3806 acc!823 Nil!27296 from!3184))))

(assert (=> d!135071 (bvslt (size!38885 a!3806) #b01111111111111111111111111111111)))

(assert (=> d!135071 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27296 from!3184) lt!559551)))

(declare-fun bs!34642 () Bool)

(assert (= bs!34642 d!135071))

(assert (=> bs!34642 m!1136901))

(declare-fun m!1137073 () Bool)

(assert (=> bs!34642 m!1137073))

(assert (=> b!1232830 d!135071))

(declare-fun b!1232997 () Bool)

(declare-fun e!699467 () Bool)

(declare-fun call!60953 () Bool)

(assert (=> b!1232997 (= e!699467 call!60953)))

(declare-fun b!1232998 () Bool)

(assert (=> b!1232998 (= e!699467 call!60953)))

(declare-fun bm!60950 () Bool)

(declare-fun c!120674 () Bool)

(assert (=> bm!60950 (= call!60953 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120674 (Cons!27295 (select (arr!38348 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27295 (select (arr!38348 a!3806) from!3184) acc!823)) (Cons!27295 (select (arr!38348 a!3806) from!3184) acc!823))))))

(declare-fun d!135073 () Bool)

(declare-fun res!821375 () Bool)

(declare-fun e!699470 () Bool)

(assert (=> d!135073 (=> res!821375 e!699470)))

(assert (=> d!135073 (= res!821375 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38885 a!3806)))))

(assert (=> d!135073 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27295 (select (arr!38348 a!3806) from!3184) acc!823)) e!699470)))

(declare-fun b!1232999 () Bool)

(declare-fun e!699469 () Bool)

(assert (=> b!1232999 (= e!699470 e!699469)))

(declare-fun res!821374 () Bool)

(assert (=> b!1232999 (=> (not res!821374) (not e!699469))))

(declare-fun e!699468 () Bool)

(assert (=> b!1232999 (= res!821374 (not e!699468))))

(declare-fun res!821376 () Bool)

(assert (=> b!1232999 (=> (not res!821376) (not e!699468))))

(assert (=> b!1232999 (= res!821376 (validKeyInArray!0 (select (arr!38348 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1233000 () Bool)

(assert (=> b!1233000 (= e!699468 (contains!7214 (Cons!27295 (select (arr!38348 a!3806) from!3184) acc!823) (select (arr!38348 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1233001 () Bool)

(assert (=> b!1233001 (= e!699469 e!699467)))

(assert (=> b!1233001 (= c!120674 (validKeyInArray!0 (select (arr!38348 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!135073 (not res!821375)) b!1232999))

(assert (= (and b!1232999 res!821376) b!1233000))

(assert (= (and b!1232999 res!821374) b!1233001))

(assert (= (and b!1233001 c!120674) b!1232997))

(assert (= (and b!1233001 (not c!120674)) b!1232998))

(assert (= (or b!1232997 b!1232998) bm!60950))

(assert (=> bm!60950 m!1137025))

(declare-fun m!1137075 () Bool)

(assert (=> bm!60950 m!1137075))

(assert (=> b!1232999 m!1137025))

(assert (=> b!1232999 m!1137025))

(assert (=> b!1232999 m!1137039))

(assert (=> b!1233000 m!1137025))

(assert (=> b!1233000 m!1137025))

(declare-fun m!1137077 () Bool)

(assert (=> b!1233000 m!1137077))

(assert (=> b!1233001 m!1137025))

(assert (=> b!1233001 m!1137025))

(assert (=> b!1233001 m!1137039))

(assert (=> b!1232830 d!135073))

(declare-fun d!135075 () Bool)

(assert (=> d!135075 (= (array_inv!29124 a!3806) (bvsge (size!38885 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102558 d!135075))

(declare-fun d!135077 () Bool)

(declare-fun lt!559552 () Bool)

(assert (=> d!135077 (= lt!559552 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!581 lt!559525)))))

(declare-fun e!699471 () Bool)

(assert (=> d!135077 (= lt!559552 e!699471)))

(declare-fun res!821378 () Bool)

(assert (=> d!135077 (=> (not res!821378) (not e!699471))))

(assert (=> d!135077 (= res!821378 (is-Cons!27295 lt!559525))))

(assert (=> d!135077 (= (contains!7214 lt!559525 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559552)))

(declare-fun b!1233002 () Bool)

(declare-fun e!699472 () Bool)

(assert (=> b!1233002 (= e!699471 e!699472)))

(declare-fun res!821377 () Bool)

(assert (=> b!1233002 (=> res!821377 e!699472)))

(assert (=> b!1233002 (= res!821377 (= (h!28504 lt!559525) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233003 () Bool)

(assert (=> b!1233003 (= e!699472 (contains!7214 (t!40769 lt!559525) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135077 res!821378) b!1233002))

(assert (= (and b!1233002 (not res!821377)) b!1233003))

(assert (=> d!135077 m!1136961))

(declare-fun m!1137079 () Bool)

(assert (=> d!135077 m!1137079))

(declare-fun m!1137081 () Bool)

(assert (=> b!1233003 m!1137081))

(assert (=> b!1232831 d!135077))

(push 1)

(assert (not b!1232907))

(assert (not b!1232906))

(assert (not b!1232986))

(assert (not bm!60945))

(assert (not b!1232984))

(assert (not b!1232957))

(assert (not b!1232990))

(assert (not b!1233001))

(assert (not b!1233000))

(assert (not bm!60949))

(assert (not bm!60950))

(assert (not b!1232958))

(assert (not b!1232996))

(assert (not d!135077))

(assert (not b!1232956))

(assert (not b!1232991))

(assert (not b!1232999))

(assert (not d!135071))

(assert (not b!1232878))

(assert (not b!1233003))

(assert (not d!134997))

(assert (not b!1232989))

(assert (not b!1232886))

(assert (not b!1232985))

(assert (not b!1232874))

(assert (not b!1232994))

(assert (not bm!60948))

(assert (not b!1232995))

(assert (not d!135021))

(assert (not d!135008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!135163 () Bool)

(declare-fun c!120693 () Bool)

(assert (=> d!135163 (= c!120693 (is-Nil!27296 acc!823))))

(declare-fun e!699567 () (Set (_ BitVec 64)))

(assert (=> d!135163 (= (content!581 acc!823) e!699567)))

(declare-fun b!1233116 () Bool)

(assert (=> b!1233116 (= e!699567 (as emptyset (Set (_ BitVec 64))))))

(declare-fun b!1233117 () Bool)

(assert (=> b!1233117 (= e!699567 (union (insert (h!28504 acc!823) (as emptyset (Set (_ BitVec 64)))) (content!581 (t!40769 acc!823))))))

(assert (= (and d!135163 c!120693) b!1233116))

(assert (= (and d!135163 (not c!120693)) b!1233117))

(declare-fun m!1137259 () Bool)

(assert (=> b!1233117 m!1137259))

(declare-fun m!1137261 () Bool)

(assert (=> b!1233117 m!1137261))

(assert (=> d!135021 d!135163))

(declare-fun d!135165 () Bool)

(declare-fun c!120694 () Bool)

(assert (=> d!135165 (= c!120694 (is-Nil!27296 lt!559525))))

(declare-fun e!699568 () (Set (_ BitVec 64)))

(assert (=> d!135165 (= (content!581 lt!559525) e!699568)))

(declare-fun b!1233118 () Bool)

(assert (=> b!1233118 (= e!699568 (as emptyset (Set (_ BitVec 64))))))

(declare-fun b!1233119 () Bool)

(assert (=> b!1233119 (= e!699568 (union (insert (h!28504 lt!559525) (as emptyset (Set (_ BitVec 64)))) (content!581 (t!40769 lt!559525))))))

(assert (= (and d!135165 c!120694) b!1233118))

(assert (= (and d!135165 (not c!120694)) b!1233119))

(declare-fun m!1137263 () Bool)

(assert (=> b!1233119 m!1137263))

(declare-fun m!1137265 () Bool)

(assert (=> b!1233119 m!1137265))

(assert (=> d!135077 d!135165))

(assert (=> d!135071 d!135069))

(declare-fun d!135167 () Bool)

(assert (=> d!135167 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27296)))

(assert (=> d!135167 true))

(declare-fun _$70!104 () Unit!40776)

(assert (=> d!135167 (= (choose!80 a!3806 acc!823 Nil!27296 from!3184) _$70!104)))

(declare-fun bs!34645 () Bool)

(assert (= bs!34645 d!135167))

(assert (=> bs!34645 m!1136901))

(assert (=> d!135071 d!135167))

(declare-fun d!135169 () Bool)

(declare-fun lt!559573 () Bool)

(assert (=> d!135169 (= lt!559573 (member (h!28504 acc!823) (content!581 (t!40769 acc!823))))))

(declare-fun e!699569 () Bool)

(assert (=> d!135169 (= lt!559573 e!699569)))

(declare-fun res!821456 () Bool)

(assert (=> d!135169 (=> (not res!821456) (not e!699569))))

(assert (=> d!135169 (= res!821456 (is-Cons!27295 (t!40769 acc!823)))))

(assert (=> d!135169 (= (contains!7214 (t!40769 acc!823) (h!28504 acc!823)) lt!559573)))

(declare-fun b!1233120 () Bool)

(declare-fun e!699570 () Bool)

(assert (=> b!1233120 (= e!699569 e!699570)))

(declare-fun res!821455 () Bool)

(assert (=> b!1233120 (=> res!821455 e!699570)))

(assert (=> b!1233120 (= res!821455 (= (h!28504 (t!40769 acc!823)) (h!28504 acc!823)))))

(declare-fun b!1233121 () Bool)

(assert (=> b!1233121 (= e!699570 (contains!7214 (t!40769 (t!40769 acc!823)) (h!28504 acc!823)))))

(assert (= (and d!135169 res!821456) b!1233120))

(assert (= (and b!1233120 (not res!821455)) b!1233121))

(assert (=> d!135169 m!1137261))

(declare-fun m!1137267 () Bool)

(assert (=> d!135169 m!1137267))

(declare-fun m!1137269 () Bool)

(assert (=> b!1233121 m!1137269))

(assert (=> b!1232985 d!135169))

(assert (=> b!1232994 d!135015))

(assert (=> b!1232989 d!135015))

(declare-fun d!135171 () Bool)

(declare-fun res!821457 () Bool)

(declare-fun e!699571 () Bool)

(assert (=> d!135171 (=> res!821457 e!699571)))

(assert (=> d!135171 (= res!821457 (is-Nil!27296 (t!40769 acc!823)))))

(assert (=> d!135171 (= (noDuplicate!1821 (t!40769 acc!823)) e!699571)))

(declare-fun b!1233122 () Bool)

(declare-fun e!699572 () Bool)

(assert (=> b!1233122 (= e!699571 e!699572)))

(declare-fun res!821458 () Bool)

(assert (=> b!1233122 (=> (not res!821458) (not e!699572))))

(assert (=> b!1233122 (= res!821458 (not (contains!7214 (t!40769 (t!40769 acc!823)) (h!28504 (t!40769 acc!823)))))))

(declare-fun b!1233123 () Bool)

(assert (=> b!1233123 (= e!699572 (noDuplicate!1821 (t!40769 (t!40769 acc!823))))))

(assert (= (and d!135171 (not res!821457)) b!1233122))

(assert (= (and b!1233122 res!821458) b!1233123))

(declare-fun m!1137271 () Bool)

(assert (=> b!1233122 m!1137271))

(declare-fun m!1137273 () Bool)

(assert (=> b!1233123 m!1137273))

(assert (=> b!1232986 d!135171))

(declare-fun d!135173 () Bool)

(declare-fun lt!559574 () Bool)

(assert (=> d!135173 (= lt!559574 (member (select (arr!38348 a!3806) from!3184) (content!581 Nil!27296)))))

(declare-fun e!699573 () Bool)

(assert (=> d!135173 (= lt!559574 e!699573)))

(declare-fun res!821460 () Bool)

(assert (=> d!135173 (=> (not res!821460) (not e!699573))))

(assert (=> d!135173 (= res!821460 (is-Cons!27295 Nil!27296))))

(assert (=> d!135173 (= (contains!7214 Nil!27296 (select (arr!38348 a!3806) from!3184)) lt!559574)))

(declare-fun b!1233124 () Bool)

(declare-fun e!699574 () Bool)

(assert (=> b!1233124 (= e!699573 e!699574)))

(declare-fun res!821459 () Bool)

(assert (=> b!1233124 (=> res!821459 e!699574)))

(assert (=> b!1233124 (= res!821459 (= (h!28504 Nil!27296) (select (arr!38348 a!3806) from!3184)))))

(declare-fun b!1233125 () Bool)

(assert (=> b!1233125 (= e!699574 (contains!7214 (t!40769 Nil!27296) (select (arr!38348 a!3806) from!3184)))))

(assert (= (and d!135173 res!821460) b!1233124))

(assert (= (and b!1233124 (not res!821459)) b!1233125))

