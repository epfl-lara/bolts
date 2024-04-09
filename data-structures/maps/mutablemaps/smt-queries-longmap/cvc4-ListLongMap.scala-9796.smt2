; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116340 () Bool)

(assert start!116340)

(declare-fun b!1372957 () Bool)

(declare-fun res!916352 () Bool)

(declare-fun e!777742 () Bool)

(assert (=> b!1372957 (=> (not res!916352) (not e!777742))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!93080 0))(
  ( (array!93081 (arr!44946 (Array (_ BitVec 32) (_ BitVec 64))) (size!45497 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93080)

(assert (=> b!1372957 (= res!916352 (bvslt from!3239 (size!45497 a!3861)))))

(declare-fun res!916351 () Bool)

(declare-fun e!777741 () Bool)

(assert (=> start!116340 (=> (not res!916351) (not e!777741))))

(assert (=> start!116340 (= res!916351 (and (bvslt (size!45497 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45497 a!3861))))))

(assert (=> start!116340 e!777741))

(declare-fun array_inv!33891 (array!93080) Bool)

(assert (=> start!116340 (array_inv!33891 a!3861)))

(assert (=> start!116340 true))

(declare-fun b!1372958 () Bool)

(declare-fun res!916354 () Bool)

(assert (=> b!1372958 (=> (not res!916354) (not e!777741))))

(declare-datatypes ((List!32194 0))(
  ( (Nil!32191) (Cons!32190 (h!33399 (_ BitVec 64)) (t!46895 List!32194)) )
))
(declare-fun acc!866 () List!32194)

(declare-fun contains!9732 (List!32194 (_ BitVec 64)) Bool)

(assert (=> b!1372958 (= res!916354 (not (contains!9732 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372959 () Bool)

(declare-fun res!916350 () Bool)

(assert (=> b!1372959 (=> (not res!916350) (not e!777742))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1372959 (= res!916350 (not (validKeyInArray!0 (select (arr!44946 a!3861) from!3239))))))

(declare-fun b!1372960 () Bool)

(assert (=> b!1372960 (= e!777741 e!777742)))

(declare-fun res!916353 () Bool)

(assert (=> b!1372960 (=> (not res!916353) (not e!777742))))

(declare-fun arrayNoDuplicates!0 (array!93080 (_ BitVec 32) List!32194) Bool)

(assert (=> b!1372960 (= res!916353 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45327 0))(
  ( (Unit!45328) )
))
(declare-fun lt!602930 () Unit!45327)

(declare-fun newAcc!98 () List!32194)

(declare-fun noDuplicateSubseq!310 (List!32194 List!32194) Unit!45327)

(assert (=> b!1372960 (= lt!602930 (noDuplicateSubseq!310 newAcc!98 acc!866))))

(declare-fun b!1372961 () Bool)

(declare-fun res!916347 () Bool)

(assert (=> b!1372961 (=> (not res!916347) (not e!777741))))

(assert (=> b!1372961 (= res!916347 (not (contains!9732 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372962 () Bool)

(declare-fun res!916349 () Bool)

(assert (=> b!1372962 (=> (not res!916349) (not e!777741))))

(assert (=> b!1372962 (= res!916349 (not (contains!9732 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372963 () Bool)

(declare-fun res!916356 () Bool)

(assert (=> b!1372963 (=> (not res!916356) (not e!777741))))

(declare-fun subseq!1123 (List!32194 List!32194) Bool)

(assert (=> b!1372963 (= res!916356 (subseq!1123 newAcc!98 acc!866))))

(declare-fun b!1372964 () Bool)

(declare-fun res!916346 () Bool)

(assert (=> b!1372964 (=> (not res!916346) (not e!777741))))

(declare-fun noDuplicate!2611 (List!32194) Bool)

(assert (=> b!1372964 (= res!916346 (noDuplicate!2611 acc!866))))

(declare-fun b!1372965 () Bool)

(assert (=> b!1372965 (= e!777742 (not (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866)))))

(declare-fun b!1372966 () Bool)

(declare-fun res!916355 () Bool)

(assert (=> b!1372966 (=> (not res!916355) (not e!777742))))

(assert (=> b!1372966 (= res!916355 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1372967 () Bool)

(declare-fun res!916348 () Bool)

(assert (=> b!1372967 (=> (not res!916348) (not e!777741))))

(assert (=> b!1372967 (= res!916348 (not (contains!9732 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!116340 res!916351) b!1372964))

(assert (= (and b!1372964 res!916346) b!1372961))

(assert (= (and b!1372961 res!916347) b!1372958))

(assert (= (and b!1372958 res!916354) b!1372967))

(assert (= (and b!1372967 res!916348) b!1372962))

(assert (= (and b!1372962 res!916349) b!1372963))

(assert (= (and b!1372963 res!916356) b!1372960))

(assert (= (and b!1372960 res!916353) b!1372957))

(assert (= (and b!1372957 res!916352) b!1372959))

(assert (= (and b!1372959 res!916350) b!1372966))

(assert (= (and b!1372966 res!916355) b!1372965))

(declare-fun m!1256329 () Bool)

(assert (=> b!1372964 m!1256329))

(declare-fun m!1256331 () Bool)

(assert (=> b!1372962 m!1256331))

(declare-fun m!1256333 () Bool)

(assert (=> b!1372965 m!1256333))

(declare-fun m!1256335 () Bool)

(assert (=> start!116340 m!1256335))

(declare-fun m!1256337 () Bool)

(assert (=> b!1372961 m!1256337))

(declare-fun m!1256339 () Bool)

(assert (=> b!1372959 m!1256339))

(assert (=> b!1372959 m!1256339))

(declare-fun m!1256341 () Bool)

(assert (=> b!1372959 m!1256341))

(declare-fun m!1256343 () Bool)

(assert (=> b!1372963 m!1256343))

(declare-fun m!1256345 () Bool)

(assert (=> b!1372958 m!1256345))

(declare-fun m!1256347 () Bool)

(assert (=> b!1372967 m!1256347))

(declare-fun m!1256349 () Bool)

(assert (=> b!1372960 m!1256349))

(declare-fun m!1256351 () Bool)

(assert (=> b!1372960 m!1256351))

(push 1)

(assert (not start!116340))

(assert (not b!1372958))

(assert (not b!1372964))

(assert (not b!1372961))

(assert (not b!1372962))

(assert (not b!1372967))

(assert (not b!1372965))

(assert (not b!1372960))

(assert (not b!1372959))

(assert (not b!1372963))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!147811 () Bool)

(declare-fun lt!602939 () Bool)

(declare-fun content!754 (List!32194) (Set (_ BitVec 64)))

(assert (=> d!147811 (= lt!602939 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!754 acc!866)))))

(declare-fun e!777777 () Bool)

(assert (=> d!147811 (= lt!602939 e!777777)))

(declare-fun res!916389 () Bool)

(assert (=> d!147811 (=> (not res!916389) (not e!777777))))

(assert (=> d!147811 (= res!916389 (is-Cons!32190 acc!866))))

(assert (=> d!147811 (= (contains!9732 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602939)))

(declare-fun b!1373005 () Bool)

(declare-fun e!777778 () Bool)

(assert (=> b!1373005 (= e!777777 e!777778)))

(declare-fun res!916388 () Bool)

(assert (=> b!1373005 (=> res!916388 e!777778)))

(assert (=> b!1373005 (= res!916388 (= (h!33399 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373006 () Bool)

(assert (=> b!1373006 (= e!777778 (contains!9732 (t!46895 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147811 res!916389) b!1373005))

(assert (= (and b!1373005 (not res!916388)) b!1373006))

(declare-fun m!1256373 () Bool)

(assert (=> d!147811 m!1256373))

(declare-fun m!1256375 () Bool)

(assert (=> d!147811 m!1256375))

(declare-fun m!1256379 () Bool)

(assert (=> b!1373006 m!1256379))

(assert (=> b!1372961 d!147811))

(declare-fun d!147815 () Bool)

(declare-fun lt!602940 () Bool)

(assert (=> d!147815 (= lt!602940 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!754 newAcc!98)))))

(declare-fun e!777779 () Bool)

(assert (=> d!147815 (= lt!602940 e!777779)))

(declare-fun res!916391 () Bool)

(assert (=> d!147815 (=> (not res!916391) (not e!777779))))

(assert (=> d!147815 (= res!916391 (is-Cons!32190 newAcc!98))))

(assert (=> d!147815 (= (contains!9732 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602940)))

(declare-fun b!1373007 () Bool)

(declare-fun e!777780 () Bool)

(assert (=> b!1373007 (= e!777779 e!777780)))

(declare-fun res!916390 () Bool)

(assert (=> b!1373007 (=> res!916390 e!777780)))

(assert (=> b!1373007 (= res!916390 (= (h!33399 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373008 () Bool)

(assert (=> b!1373008 (= e!777780 (contains!9732 (t!46895 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147815 res!916391) b!1373007))

(assert (= (and b!1373007 (not res!916390)) b!1373008))

(declare-fun m!1256383 () Bool)

(assert (=> d!147815 m!1256383))

(declare-fun m!1256385 () Bool)

(assert (=> d!147815 m!1256385))

(declare-fun m!1256387 () Bool)

(assert (=> b!1373008 m!1256387))

(assert (=> b!1372967 d!147815))

(declare-fun d!147819 () Bool)

(declare-fun lt!602942 () Bool)

(assert (=> d!147819 (= lt!602942 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!754 newAcc!98)))))

(declare-fun e!777783 () Bool)

(assert (=> d!147819 (= lt!602942 e!777783)))

(declare-fun res!916395 () Bool)

(assert (=> d!147819 (=> (not res!916395) (not e!777783))))

(assert (=> d!147819 (= res!916395 (is-Cons!32190 newAcc!98))))

(assert (=> d!147819 (= (contains!9732 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602942)))

(declare-fun b!1373011 () Bool)

(declare-fun e!777784 () Bool)

(assert (=> b!1373011 (= e!777783 e!777784)))

(declare-fun res!916394 () Bool)

(assert (=> b!1373011 (=> res!916394 e!777784)))

(assert (=> b!1373011 (= res!916394 (= (h!33399 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373012 () Bool)

(assert (=> b!1373012 (= e!777784 (contains!9732 (t!46895 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147819 res!916395) b!1373011))

(assert (= (and b!1373011 (not res!916394)) b!1373012))

(assert (=> d!147819 m!1256383))

(declare-fun m!1256393 () Bool)

(assert (=> d!147819 m!1256393))

(declare-fun m!1256395 () Bool)

(assert (=> b!1373012 m!1256395))

(assert (=> b!1372962 d!147819))

(declare-fun b!1373044 () Bool)

(declare-fun e!777813 () Bool)

(declare-fun e!777816 () Bool)

(assert (=> b!1373044 (= e!777813 e!777816)))

(declare-fun res!916423 () Bool)

(assert (=> b!1373044 (=> (not res!916423) (not e!777816))))

(assert (=> b!1373044 (= res!916423 (is-Cons!32190 acc!866))))

(declare-fun b!1373045 () Bool)

(declare-fun e!777814 () Bool)

(assert (=> b!1373045 (= e!777816 e!777814)))

(declare-fun res!916424 () Bool)

(assert (=> b!1373045 (=> res!916424 e!777814)))

(declare-fun e!777815 () Bool)

(assert (=> b!1373045 (= res!916424 e!777815)))

(declare-fun res!916422 () Bool)

(assert (=> b!1373045 (=> (not res!916422) (not e!777815))))

(assert (=> b!1373045 (= res!916422 (= (h!33399 newAcc!98) (h!33399 acc!866)))))

(declare-fun d!147823 () Bool)

(declare-fun res!916421 () Bool)

(assert (=> d!147823 (=> res!916421 e!777813)))

(assert (=> d!147823 (= res!916421 (is-Nil!32191 newAcc!98))))

(assert (=> d!147823 (= (subseq!1123 newAcc!98 acc!866) e!777813)))

(declare-fun b!1373046 () Bool)

(assert (=> b!1373046 (= e!777815 (subseq!1123 (t!46895 newAcc!98) (t!46895 acc!866)))))

(declare-fun b!1373047 () Bool)

(assert (=> b!1373047 (= e!777814 (subseq!1123 newAcc!98 (t!46895 acc!866)))))

(assert (= (and d!147823 (not res!916421)) b!1373044))

(assert (= (and b!1373044 res!916423) b!1373045))

(assert (= (and b!1373045 res!916422) b!1373046))

(assert (= (and b!1373045 (not res!916424)) b!1373047))

(declare-fun m!1256411 () Bool)

(assert (=> b!1373046 m!1256411))

(declare-fun m!1256413 () Bool)

(assert (=> b!1373047 m!1256413))

(assert (=> b!1372963 d!147823))

(declare-fun d!147833 () Bool)

(declare-fun lt!602944 () Bool)

(assert (=> d!147833 (= lt!602944 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!754 acc!866)))))

(declare-fun e!777817 () Bool)

(assert (=> d!147833 (= lt!602944 e!777817)))

(declare-fun res!916426 () Bool)

(assert (=> d!147833 (=> (not res!916426) (not e!777817))))

(assert (=> d!147833 (= res!916426 (is-Cons!32190 acc!866))))

(assert (=> d!147833 (= (contains!9732 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602944)))

(declare-fun b!1373048 () Bool)

(declare-fun e!777818 () Bool)

(assert (=> b!1373048 (= e!777817 e!777818)))

(declare-fun res!916425 () Bool)

(assert (=> b!1373048 (=> res!916425 e!777818)))

(assert (=> b!1373048 (= res!916425 (= (h!33399 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373049 () Bool)

(assert (=> b!1373049 (= e!777818 (contains!9732 (t!46895 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147833 res!916426) b!1373048))

(assert (= (and b!1373048 (not res!916425)) b!1373049))

(assert (=> d!147833 m!1256373))

(declare-fun m!1256415 () Bool)

(assert (=> d!147833 m!1256415))

(declare-fun m!1256417 () Bool)

(assert (=> b!1373049 m!1256417))

(assert (=> b!1372958 d!147833))

(declare-fun d!147835 () Bool)

(assert (=> d!147835 (= (array_inv!33891 a!3861) (bvsge (size!45497 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!116340 d!147835))

(declare-fun d!147837 () Bool)

(declare-fun res!916439 () Bool)

(declare-fun e!777832 () Bool)

(assert (=> d!147837 (=> res!916439 e!777832)))

(assert (=> d!147837 (= res!916439 (is-Nil!32191 acc!866))))

(assert (=> d!147837 (= (noDuplicate!2611 acc!866) e!777832)))

(declare-fun b!1373064 () Bool)

(declare-fun e!777833 () Bool)

(assert (=> b!1373064 (= e!777832 e!777833)))

(declare-fun res!916440 () Bool)

(assert (=> b!1373064 (=> (not res!916440) (not e!777833))))

(assert (=> b!1373064 (= res!916440 (not (contains!9732 (t!46895 acc!866) (h!33399 acc!866))))))

(declare-fun b!1373065 () Bool)

(assert (=> b!1373065 (= e!777833 (noDuplicate!2611 (t!46895 acc!866)))))

(assert (= (and d!147837 (not res!916439)) b!1373064))

(assert (= (and b!1373064 res!916440) b!1373065))

(declare-fun m!1256431 () Bool)

(assert (=> b!1373064 m!1256431))

