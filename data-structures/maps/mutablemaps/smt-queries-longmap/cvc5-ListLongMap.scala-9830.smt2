; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116708 () Bool)

(assert start!116708)

(declare-fun b!1375098 () Bool)

(declare-fun e!779016 () Bool)

(declare-fun e!779018 () Bool)

(assert (=> b!1375098 (= e!779016 (not e!779018))))

(declare-fun res!918275 () Bool)

(assert (=> b!1375098 (=> res!918275 e!779018)))

(declare-datatypes ((array!93295 0))(
  ( (array!93296 (arr!45046 (Array (_ BitVec 32) (_ BitVec 64))) (size!45597 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93295)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1375098 (= res!918275 (or (bvslt (size!45597 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!604157 () (_ BitVec 32))

(declare-fun lt!604163 () (_ BitVec 32))

(declare-fun lt!604155 () (_ BitVec 32))

(assert (=> b!1375098 (= (bvadd lt!604157 lt!604163) lt!604155)))

(declare-fun arrayCountValidKeys!0 (array!93295 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375098 (= lt!604155 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45597 a!4142)))))

(declare-datatypes ((Unit!45479 0))(
  ( (Unit!45480) )
))
(declare-fun lt!604158 () Unit!45479)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93295 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45479)

(assert (=> b!1375098 (= lt!604158 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45597 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!604165 () (_ BitVec 32))

(assert (=> b!1375098 (= lt!604165 lt!604163)))

(assert (=> b!1375098 (= lt!604163 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45597 a!4142)))))

(declare-fun lt!604162 () array!93295)

(assert (=> b!1375098 (= lt!604165 (arrayCountValidKeys!0 lt!604162 (bvadd #b00000000000000000000000000000001 i!1457) (size!45597 a!4142)))))

(declare-fun lt!604156 () Unit!45479)

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93295 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45479)

(assert (=> b!1375098 (= lt!604156 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!604161 () (_ BitVec 32))

(assert (=> b!1375098 (= lt!604161 (bvsub lt!604157 #b00000000000000000000000000000001))))

(assert (=> b!1375098 (= lt!604161 (arrayCountValidKeys!0 lt!604162 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375098 (= lt!604157 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375098 (= lt!604162 (array!93296 (store (arr!45046 a!4142) i!1457 k!2959) (size!45597 a!4142)))))

(declare-fun lt!604160 () Unit!45479)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93295 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45479)

(assert (=> b!1375098 (= lt!604160 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun res!918278 () Bool)

(assert (=> start!116708 (=> (not res!918278) (not e!779016))))

(assert (=> start!116708 (= res!918278 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45597 a!4142))))))

(assert (=> start!116708 e!779016))

(assert (=> start!116708 true))

(declare-fun array_inv!33991 (array!93295) Bool)

(assert (=> start!116708 (array_inv!33991 a!4142)))

(declare-fun b!1375099 () Bool)

(declare-fun res!918276 () Bool)

(assert (=> b!1375099 (=> (not res!918276) (not e!779016))))

(assert (=> b!1375099 (= res!918276 (bvslt (size!45597 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1375100 () Bool)

(declare-fun res!918277 () Bool)

(assert (=> b!1375100 (=> (not res!918277) (not e!779016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375100 (= res!918277 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1375101 () Bool)

(declare-fun res!918279 () Bool)

(assert (=> b!1375101 (=> (not res!918279) (not e!779016))))

(assert (=> b!1375101 (= res!918279 (validKeyInArray!0 (select (arr!45046 a!4142) i!1457)))))

(declare-fun b!1375102 () Bool)

(declare-fun lt!604164 () (_ BitVec 32))

(assert (=> b!1375102 (= e!779018 (= lt!604164 (bvsub lt!604155 #b00000000000000000000000000000001)))))

(assert (=> b!1375102 (= (bvadd lt!604161 lt!604165) lt!604164)))

(assert (=> b!1375102 (= lt!604164 (arrayCountValidKeys!0 lt!604162 #b00000000000000000000000000000000 (size!45597 a!4142)))))

(declare-fun lt!604159 () Unit!45479)

(assert (=> b!1375102 (= lt!604159 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!604162 #b00000000000000000000000000000000 (size!45597 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and start!116708 res!918278) b!1375101))

(assert (= (and b!1375101 res!918279) b!1375100))

(assert (= (and b!1375100 res!918277) b!1375099))

(assert (= (and b!1375099 res!918276) b!1375098))

(assert (= (and b!1375098 (not res!918275)) b!1375102))

(declare-fun m!1258921 () Bool)

(assert (=> b!1375101 m!1258921))

(assert (=> b!1375101 m!1258921))

(declare-fun m!1258923 () Bool)

(assert (=> b!1375101 m!1258923))

(declare-fun m!1258925 () Bool)

(assert (=> b!1375100 m!1258925))

(declare-fun m!1258927 () Bool)

(assert (=> b!1375098 m!1258927))

(declare-fun m!1258929 () Bool)

(assert (=> b!1375098 m!1258929))

(declare-fun m!1258931 () Bool)

(assert (=> b!1375098 m!1258931))

(declare-fun m!1258933 () Bool)

(assert (=> b!1375098 m!1258933))

(declare-fun m!1258935 () Bool)

(assert (=> b!1375098 m!1258935))

(declare-fun m!1258937 () Bool)

(assert (=> b!1375098 m!1258937))

(declare-fun m!1258939 () Bool)

(assert (=> b!1375098 m!1258939))

(declare-fun m!1258941 () Bool)

(assert (=> b!1375098 m!1258941))

(declare-fun m!1258943 () Bool)

(assert (=> b!1375098 m!1258943))

(declare-fun m!1258945 () Bool)

(assert (=> start!116708 m!1258945))

(declare-fun m!1258947 () Bool)

(assert (=> b!1375102 m!1258947))

(declare-fun m!1258949 () Bool)

(assert (=> b!1375102 m!1258949))

(push 1)

(assert (not start!116708))

(assert (not b!1375098))

(assert (not b!1375100))

(assert (not b!1375102))

(assert (not b!1375101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

