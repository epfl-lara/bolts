; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116390 () Bool)

(assert start!116390)

(declare-fun b!1373259 () Bool)

(declare-fun res!916629 () Bool)

(declare-fun e!777923 () Bool)

(assert (=> b!1373259 (=> (not res!916629) (not e!777923))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!93091 0))(
  ( (array!93092 (arr!44950 (Array (_ BitVec 32) (_ BitVec 64))) (size!45501 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93091)

(assert (=> b!1373259 (= res!916629 (bvslt from!3239 (size!45501 a!3861)))))

(declare-datatypes ((List!32198 0))(
  ( (Nil!32195) (Cons!32194 (h!33403 (_ BitVec 64)) (t!46899 List!32198)) )
))
(declare-fun newAcc!98 () List!32198)

(declare-fun b!1373260 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93091 (_ BitVec 32) List!32198) Bool)

(assert (=> b!1373260 (= e!777923 (not (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98)))))

(assert (=> b!1373260 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-datatypes ((Unit!45335 0))(
  ( (Unit!45336) )
))
(declare-fun lt!602971 () Unit!45335)

(declare-fun acc!866 () List!32198)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!93091 List!32198 List!32198 (_ BitVec 32)) Unit!45335)

(assert (=> b!1373260 (= lt!602971 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(declare-fun b!1373261 () Bool)

(declare-fun res!916632 () Bool)

(assert (=> b!1373261 (=> (not res!916632) (not e!777923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373261 (= res!916632 (not (validKeyInArray!0 (select (arr!44950 a!3861) from!3239))))))

(declare-fun b!1373262 () Bool)

(declare-fun e!777925 () Bool)

(assert (=> b!1373262 (= e!777925 e!777923)))

(declare-fun res!916633 () Bool)

(assert (=> b!1373262 (=> (not res!916633) (not e!777923))))

(assert (=> b!1373262 (= res!916633 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!602972 () Unit!45335)

(declare-fun noDuplicateSubseq!314 (List!32198 List!32198) Unit!45335)

(assert (=> b!1373262 (= lt!602972 (noDuplicateSubseq!314 newAcc!98 acc!866))))

(declare-fun b!1373263 () Bool)

(declare-fun res!916635 () Bool)

(assert (=> b!1373263 (=> (not res!916635) (not e!777925))))

(declare-fun contains!9736 (List!32198 (_ BitVec 64)) Bool)

(assert (=> b!1373263 (= res!916635 (not (contains!9736 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373264 () Bool)

(declare-fun res!916634 () Bool)

(assert (=> b!1373264 (=> (not res!916634) (not e!777925))))

(assert (=> b!1373264 (= res!916634 (not (contains!9736 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!916625 () Bool)

(assert (=> start!116390 (=> (not res!916625) (not e!777925))))

(assert (=> start!116390 (= res!916625 (and (bvslt (size!45501 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45501 a!3861))))))

(assert (=> start!116390 e!777925))

(declare-fun array_inv!33895 (array!93091) Bool)

(assert (=> start!116390 (array_inv!33895 a!3861)))

(assert (=> start!116390 true))

(declare-fun b!1373265 () Bool)

(declare-fun res!916624 () Bool)

(assert (=> b!1373265 (=> (not res!916624) (not e!777925))))

(declare-fun noDuplicate!2615 (List!32198) Bool)

(assert (=> b!1373265 (= res!916624 (noDuplicate!2615 acc!866))))

(declare-fun b!1373266 () Bool)

(declare-fun res!916628 () Bool)

(assert (=> b!1373266 (=> (not res!916628) (not e!777925))))

(assert (=> b!1373266 (= res!916628 (not (contains!9736 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373267 () Bool)

(declare-fun res!916630 () Bool)

(assert (=> b!1373267 (=> (not res!916630) (not e!777925))))

(assert (=> b!1373267 (= res!916630 (not (contains!9736 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373268 () Bool)

(declare-fun res!916626 () Bool)

(assert (=> b!1373268 (=> (not res!916626) (not e!777923))))

(assert (=> b!1373268 (= res!916626 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1373269 () Bool)

(declare-fun res!916627 () Bool)

(assert (=> b!1373269 (=> (not res!916627) (not e!777923))))

(assert (=> b!1373269 (= res!916627 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1373270 () Bool)

(declare-fun res!916631 () Bool)

(assert (=> b!1373270 (=> (not res!916631) (not e!777925))))

(declare-fun subseq!1127 (List!32198 List!32198) Bool)

(assert (=> b!1373270 (= res!916631 (subseq!1127 newAcc!98 acc!866))))

(assert (= (and start!116390 res!916625) b!1373265))

(assert (= (and b!1373265 res!916624) b!1373264))

(assert (= (and b!1373264 res!916634) b!1373267))

(assert (= (and b!1373267 res!916630) b!1373266))

(assert (= (and b!1373266 res!916628) b!1373263))

(assert (= (and b!1373263 res!916635) b!1373270))

(assert (= (and b!1373270 res!916631) b!1373262))

(assert (= (and b!1373262 res!916633) b!1373259))

(assert (= (and b!1373259 res!916629) b!1373261))

(assert (= (and b!1373261 res!916632) b!1373268))

(assert (= (and b!1373268 res!916626) b!1373269))

(assert (= (and b!1373269 res!916627) b!1373260))

(declare-fun m!1256557 () Bool)

(assert (=> b!1373264 m!1256557))

(declare-fun m!1256559 () Bool)

(assert (=> b!1373262 m!1256559))

(declare-fun m!1256561 () Bool)

(assert (=> b!1373262 m!1256561))

(declare-fun m!1256563 () Bool)

(assert (=> b!1373270 m!1256563))

(declare-fun m!1256565 () Bool)

(assert (=> b!1373269 m!1256565))

(declare-fun m!1256567 () Bool)

(assert (=> b!1373265 m!1256567))

(declare-fun m!1256569 () Bool)

(assert (=> b!1373260 m!1256569))

(declare-fun m!1256571 () Bool)

(assert (=> b!1373260 m!1256571))

(declare-fun m!1256573 () Bool)

(assert (=> b!1373260 m!1256573))

(declare-fun m!1256575 () Bool)

(assert (=> b!1373267 m!1256575))

(declare-fun m!1256577 () Bool)

(assert (=> b!1373266 m!1256577))

(declare-fun m!1256579 () Bool)

(assert (=> b!1373263 m!1256579))

(declare-fun m!1256581 () Bool)

(assert (=> b!1373261 m!1256581))

(assert (=> b!1373261 m!1256581))

(declare-fun m!1256583 () Bool)

(assert (=> b!1373261 m!1256583))

(declare-fun m!1256585 () Bool)

(assert (=> start!116390 m!1256585))

(push 1)

(assert (not b!1373262))

(assert (not b!1373263))

(assert (not b!1373270))

(assert (not b!1373264))

(assert (not b!1373261))

(assert (not b!1373266))

(assert (not b!1373265))

(assert (not start!116390))

(assert (not b!1373267))

(assert (not b!1373260))

(assert (not b!1373269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1373400 () Bool)

(declare-fun e!777995 () Bool)

(declare-fun call!65618 () Bool)

(assert (=> b!1373400 (= e!777995 call!65618)))

(declare-fun b!1373401 () Bool)

(declare-fun e!777992 () Bool)

(assert (=> b!1373401 (= e!777992 e!777995)))

(declare-fun c!127769 () Bool)

(assert (=> b!1373401 (= c!127769 (validKeyInArray!0 (select (arr!44950 a!3861) from!3239)))))

(declare-fun d!147875 () Bool)

(declare-fun res!916749 () Bool)

(declare-fun e!777993 () Bool)

(assert (=> d!147875 (=> res!916749 e!777993)))

(assert (=> d!147875 (= res!916749 (bvsge from!3239 (size!45501 a!3861)))))

(assert (=> d!147875 (= (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98) e!777993)))

(declare-fun bm!65615 () Bool)

(assert (=> bm!65615 (= call!65618 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127769 (Cons!32194 (select (arr!44950 a!3861) from!3239) newAcc!98) newAcc!98)))))

(declare-fun b!1373402 () Bool)

(assert (=> b!1373402 (= e!777993 e!777992)))

(declare-fun res!916747 () Bool)

(assert (=> b!1373402 (=> (not res!916747) (not e!777992))))

(declare-fun e!777994 () Bool)

(assert (=> b!1373402 (= res!916747 (not e!777994))))

(declare-fun res!916748 () Bool)

(assert (=> b!1373402 (=> (not res!916748) (not e!777994))))

(assert (=> b!1373402 (= res!916748 (validKeyInArray!0 (select (arr!44950 a!3861) from!3239)))))

(declare-fun b!1373403 () Bool)

(assert (=> b!1373403 (= e!777994 (contains!9736 newAcc!98 (select (arr!44950 a!3861) from!3239)))))

(declare-fun b!1373404 () Bool)

(assert (=> b!1373404 (= e!777995 call!65618)))

(assert (= (and d!147875 (not res!916749)) b!1373402))

(assert (= (and b!1373402 res!916748) b!1373403))

(assert (= (and b!1373402 res!916747) b!1373401))

(assert (= (and b!1373401 c!127769) b!1373400))

(assert (= (and b!1373401 (not c!127769)) b!1373404))

(assert (= (or b!1373400 b!1373404) bm!65615))

(assert (=> b!1373401 m!1256581))

(assert (=> b!1373401 m!1256581))

(assert (=> b!1373401 m!1256583))

(assert (=> bm!65615 m!1256581))

(declare-fun m!1256681 () Bool)

(assert (=> bm!65615 m!1256681))

(assert (=> b!1373402 m!1256581))

(assert (=> b!1373402 m!1256581))

(assert (=> b!1373402 m!1256583))

(assert (=> b!1373403 m!1256581))

(assert (=> b!1373403 m!1256581))

(declare-fun m!1256685 () Bool)

(assert (=> b!1373403 m!1256685))

(assert (=> b!1373260 d!147875))

(declare-fun b!1373412 () Bool)

(declare-fun e!778005 () Bool)

(declare-fun call!65620 () Bool)

(assert (=> b!1373412 (= e!778005 call!65620)))

(declare-fun b!1373413 () Bool)

(declare-fun e!778002 () Bool)

(assert (=> b!1373413 (= e!778002 e!778005)))

(declare-fun c!127771 () Bool)

(assert (=> b!1373413 (= c!127771 (validKeyInArray!0 (select (arr!44950 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun d!147891 () Bool)

(declare-fun res!916757 () Bool)

(declare-fun e!778003 () Bool)

(assert (=> d!147891 (=> res!916757 e!778003)))

(assert (=> d!147891 (= res!916757 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45501 a!3861)))))

(assert (=> d!147891 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98) e!778003)))

(declare-fun bm!65617 () Bool)

(assert (=> bm!65617 (= call!65620 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127771 (Cons!32194 (select (arr!44950 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) newAcc!98) newAcc!98)))))

(declare-fun b!1373414 () Bool)

(assert (=> b!1373414 (= e!778003 e!778002)))

(declare-fun res!916755 () Bool)

(assert (=> b!1373414 (=> (not res!916755) (not e!778002))))

(declare-fun e!778004 () Bool)

(assert (=> b!1373414 (= res!916755 (not e!778004))))

(declare-fun res!916756 () Bool)

(assert (=> b!1373414 (=> (not res!916756) (not e!778004))))

(assert (=> b!1373414 (= res!916756 (validKeyInArray!0 (select (arr!44950 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1373415 () Bool)

(assert (=> b!1373415 (= e!778004 (contains!9736 newAcc!98 (select (arr!44950 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1373416 () Bool)

(assert (=> b!1373416 (= e!778005 call!65620)))

(assert (= (and d!147891 (not res!916757)) b!1373414))

(assert (= (and b!1373414 res!916756) b!1373415))

(assert (= (and b!1373414 res!916755) b!1373413))

(assert (= (and b!1373413 c!127771) b!1373412))

(assert (= (and b!1373413 (not c!127771)) b!1373416))

(assert (= (or b!1373412 b!1373416) bm!65617))

(declare-fun m!1256693 () Bool)

(assert (=> b!1373413 m!1256693))

(assert (=> b!1373413 m!1256693))

(declare-fun m!1256695 () Bool)

(assert (=> b!1373413 m!1256695))

(assert (=> bm!65617 m!1256693))

(declare-fun m!1256697 () Bool)

(assert (=> bm!65617 m!1256697))

(assert (=> b!1373414 m!1256693))

(assert (=> b!1373414 m!1256693))

(assert (=> b!1373414 m!1256695))

(assert (=> b!1373415 m!1256693))

(assert (=> b!1373415 m!1256693))

(declare-fun m!1256699 () Bool)

(assert (=> b!1373415 m!1256699))

(assert (=> b!1373260 d!147891))

(declare-fun d!147897 () Bool)

(assert (=> d!147897 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-fun lt!603000 () Unit!45335)

(declare-fun choose!80 (array!93091 List!32198 List!32198 (_ BitVec 32)) Unit!45335)

(assert (=> d!147897 (= lt!603000 (choose!80 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> d!147897 (bvslt (size!45501 a!3861) #b01111111111111111111111111111111)))

(assert (=> d!147897 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)) lt!603000)))

(declare-fun bs!39360 () Bool)

(assert (= bs!39360 d!147897))

(assert (=> bs!39360 m!1256571))

(declare-fun m!1256711 () Bool)

(assert (=> bs!39360 m!1256711))

(assert (=> b!1373260 d!147897))

(declare-fun d!147905 () Bool)

(declare-fun res!916784 () Bool)

(declare-fun e!778033 () Bool)

(assert (=> d!147905 (=> res!916784 e!778033)))

(assert (=> d!147905 (= res!916784 (is-Nil!32195 acc!866))))

(assert (=> d!147905 (= (noDuplicate!2615 acc!866) e!778033)))

(declare-fun b!1373445 () Bool)

(declare-fun e!778034 () Bool)

(assert (=> b!1373445 (= e!778033 e!778034)))

(declare-fun res!916785 () Bool)

(assert (=> b!1373445 (=> (not res!916785) (not e!778034))))

(assert (=> b!1373445 (= res!916785 (not (contains!9736 (t!46899 acc!866) (h!33403 acc!866))))))

(declare-fun b!1373446 () Bool)

(assert (=> b!1373446 (= e!778034 (noDuplicate!2615 (t!46899 acc!866)))))

(assert (= (and d!147905 (not res!916784)) b!1373445))

(assert (= (and b!1373445 res!916785) b!1373446))

(declare-fun m!1256731 () Bool)

(assert (=> b!1373445 m!1256731))

(declare-fun m!1256733 () Bool)

(assert (=> b!1373446 m!1256733))

(assert (=> b!1373265 d!147905))

(declare-fun b!1373488 () Bool)

(declare-fun e!778071 () Bool)

(assert (=> b!1373488 (= e!778071 (subseq!1127 newAcc!98 (t!46899 acc!866)))))

(declare-fun b!1373486 () Bool)

(declare-fun e!778070 () Bool)

(assert (=> b!1373486 (= e!778070 e!778071)))

(declare-fun res!916820 () Bool)

(assert (=> b!1373486 (=> res!916820 e!778071)))

(declare-fun e!778072 () Bool)

(assert (=> b!1373486 (= res!916820 e!778072)))

(declare-fun res!916819 () Bool)

(assert (=> b!1373486 (=> (not res!916819) (not e!778072))))

(assert (=> b!1373486 (= res!916819 (= (h!33403 newAcc!98) (h!33403 acc!866)))))

(declare-fun b!1373487 () Bool)

(assert (=> b!1373487 (= e!778072 (subseq!1127 (t!46899 newAcc!98) (t!46899 acc!866)))))

(declare-fun d!147919 () Bool)

(declare-fun res!916821 () Bool)

(declare-fun e!778073 () Bool)

(assert (=> d!147919 (=> res!916821 e!778073)))

(assert (=> d!147919 (= res!916821 (is-Nil!32195 newAcc!98))))

(assert (=> d!147919 (= (subseq!1127 newAcc!98 acc!866) e!778073)))

(declare-fun b!1373485 () Bool)

(assert (=> b!1373485 (= e!778073 e!778070)))

(declare-fun res!916818 () Bool)

(assert (=> b!1373485 (=> (not res!916818) (not e!778070))))

(assert (=> b!1373485 (= res!916818 (is-Cons!32194 acc!866))))

(assert (= (and d!147919 (not res!916821)) b!1373485))

(assert (= (and b!1373485 res!916818) b!1373486))

(assert (= (and b!1373486 res!916819) b!1373487))

(assert (= (and b!1373486 (not res!916820)) b!1373488))

(declare-fun m!1256757 () Bool)

(assert (=> b!1373488 m!1256757))

(declare-fun m!1256761 () Bool)

(assert (=> b!1373487 m!1256761))

(assert (=> b!1373270 d!147919))

(declare-fun d!147933 () Bool)

(declare-fun lt!603014 () Bool)

(declare-fun content!758 (List!32198) (Set (_ BitVec 64)))

(assert (=> d!147933 (= lt!603014 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!758 acc!866)))))

(declare-fun e!778093 () Bool)

(assert (=> d!147933 (= lt!603014 e!778093)))

(declare-fun res!916840 () Bool)

(assert (=> d!147933 (=> (not res!916840) (not e!778093))))

(assert (=> d!147933 (= res!916840 (is-Cons!32194 acc!866))))

(assert (=> d!147933 (= (contains!9736 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!603014)))

(declare-fun b!1373507 () Bool)

(declare-fun e!778092 () Bool)

(assert (=> b!1373507 (= e!778093 e!778092)))

(declare-fun res!916841 () Bool)

(assert (=> b!1373507 (=> res!916841 e!778092)))

(assert (=> b!1373507 (= res!916841 (= (h!33403 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373508 () Bool)

(assert (=> b!1373508 (= e!778092 (contains!9736 (t!46899 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147933 res!916840) b!1373507))

(assert (= (and b!1373507 (not res!916841)) b!1373508))

(declare-fun m!1256773 () Bool)

(assert (=> d!147933 m!1256773))

(declare-fun m!1256775 () Bool)

(assert (=> d!147933 m!1256775))

(declare-fun m!1256777 () Bool)

(assert (=> b!1373508 m!1256777))

(assert (=> b!1373264 d!147933))

(declare-fun b!1373509 () Bool)

(declare-fun e!778097 () Bool)

(declare-fun call!65625 () Bool)

(assert (=> b!1373509 (= e!778097 call!65625)))

(declare-fun b!1373510 () Bool)

(declare-fun e!778094 () Bool)

(assert (=> b!1373510 (= e!778094 e!778097)))

(declare-fun c!127776 () Bool)

(assert (=> b!1373510 (= c!127776 (validKeyInArray!0 (select (arr!44950 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun d!147939 () Bool)

(declare-fun res!916844 () Bool)

(declare-fun e!778095 () Bool)

(assert (=> d!147939 (=> res!916844 e!778095)))

(assert (=> d!147939 (= res!916844 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45501 a!3861)))))

(assert (=> d!147939 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866) e!778095)))

(declare-fun bm!65622 () Bool)

(assert (=> bm!65622 (= call!65625 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127776 (Cons!32194 (select (arr!44950 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) acc!866) acc!866)))))

(declare-fun b!1373511 () Bool)

(assert (=> b!1373511 (= e!778095 e!778094)))

(declare-fun res!916842 () Bool)

(assert (=> b!1373511 (=> (not res!916842) (not e!778094))))

(declare-fun e!778096 () Bool)

(assert (=> b!1373511 (= res!916842 (not e!778096))))

(declare-fun res!916843 () Bool)

(assert (=> b!1373511 (=> (not res!916843) (not e!778096))))

(assert (=> b!1373511 (= res!916843 (validKeyInArray!0 (select (arr!44950 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1373512 () Bool)

(assert (=> b!1373512 (= e!778096 (contains!9736 acc!866 (select (arr!44950 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1373513 () Bool)

(assert (=> b!1373513 (= e!778097 call!65625)))

(assert (= (and d!147939 (not res!916844)) b!1373511))

(assert (= (and b!1373511 res!916843) b!1373512))

(assert (= (and b!1373511 res!916842) b!1373510))

(assert (= (and b!1373510 c!127776) b!1373509))

(assert (= (and b!1373510 (not c!127776)) b!1373513))

(assert (= (or b!1373509 b!1373513) bm!65622))

(assert (=> b!1373510 m!1256693))

(assert (=> b!1373510 m!1256693))

(assert (=> b!1373510 m!1256695))

(assert (=> bm!65622 m!1256693))

(declare-fun m!1256779 () Bool)

(assert (=> bm!65622 m!1256779))

(assert (=> b!1373511 m!1256693))

(assert (=> b!1373511 m!1256693))

(assert (=> b!1373511 m!1256695))

(assert (=> b!1373512 m!1256693))

(assert (=> b!1373512 m!1256693))

(declare-fun m!1256781 () Bool)

(assert (=> b!1373512 m!1256781))

(assert (=> b!1373269 d!147939))

(declare-fun d!147941 () Bool)

(assert (=> d!147941 (= (array_inv!33895 a!3861) (bvsge (size!45501 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!116390 d!147941))

(declare-fun d!147943 () Bool)

(declare-fun lt!603015 () Bool)

(assert (=> d!147943 (= lt!603015 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!758 newAcc!98)))))

(declare-fun e!778103 () Bool)

(assert (=> d!147943 (= lt!603015 e!778103)))

(declare-fun res!916849 () Bool)

(assert (=> d!147943 (=> (not res!916849) (not e!778103))))

(assert (=> d!147943 (= res!916849 (is-Cons!32194 newAcc!98))))

(assert (=> d!147943 (= (contains!9736 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!603015)))

(declare-fun b!1373518 () Bool)

(declare-fun e!778102 () Bool)

(assert (=> b!1373518 (= e!778103 e!778102)))

(declare-fun res!916850 () Bool)

(assert (=> b!1373518 (=> res!916850 e!778102)))

(assert (=> b!1373518 (= res!916850 (= (h!33403 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373519 () Bool)

(assert (=> b!1373519 (= e!778102 (contains!9736 (t!46899 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147943 res!916849) b!1373518))

(assert (= (and b!1373518 (not res!916850)) b!1373519))

(declare-fun m!1256787 () Bool)

(assert (=> d!147943 m!1256787))

(declare-fun m!1256789 () Bool)

(assert (=> d!147943 m!1256789))

(declare-fun m!1256791 () Bool)

(assert (=> b!1373519 m!1256791))

(assert (=> b!1373263 d!147943))

(declare-fun b!1373520 () Bool)

(declare-fun e!778107 () Bool)

(declare-fun call!65626 () Bool)

(assert (=> b!1373520 (= e!778107 call!65626)))

(declare-fun b!1373521 () Bool)

(declare-fun e!778104 () Bool)

(assert (=> b!1373521 (= e!778104 e!778107)))

(declare-fun c!127777 () Bool)

(assert (=> b!1373521 (= c!127777 (validKeyInArray!0 (select (arr!44950 a!3861) from!3239)))))

(declare-fun d!147945 () Bool)

(declare-fun res!916853 () Bool)

(declare-fun e!778105 () Bool)

(assert (=> d!147945 (=> res!916853 e!778105)))

(assert (=> d!147945 (= res!916853 (bvsge from!3239 (size!45501 a!3861)))))

(assert (=> d!147945 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!778105)))

(declare-fun bm!65623 () Bool)

(assert (=> bm!65623 (= call!65626 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127777 (Cons!32194 (select (arr!44950 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1373522 () Bool)

(assert (=> b!1373522 (= e!778105 e!778104)))

(declare-fun res!916851 () Bool)

(assert (=> b!1373522 (=> (not res!916851) (not e!778104))))

(declare-fun e!778106 () Bool)

(assert (=> b!1373522 (= res!916851 (not e!778106))))

(declare-fun res!916852 () Bool)

(assert (=> b!1373522 (=> (not res!916852) (not e!778106))))

(assert (=> b!1373522 (= res!916852 (validKeyInArray!0 (select (arr!44950 a!3861) from!3239)))))

(declare-fun b!1373523 () Bool)

(assert (=> b!1373523 (= e!778106 (contains!9736 acc!866 (select (arr!44950 a!3861) from!3239)))))

(declare-fun b!1373524 () Bool)

(assert (=> b!1373524 (= e!778107 call!65626)))

(assert (= (and d!147945 (not res!916853)) b!1373522))

(assert (= (and b!1373522 res!916852) b!1373523))

(assert (= (and b!1373522 res!916851) b!1373521))

(assert (= (and b!1373521 c!127777) b!1373520))

(assert (= (and b!1373521 (not c!127777)) b!1373524))

(assert (= (or b!1373520 b!1373524) bm!65623))

(assert (=> b!1373521 m!1256581))

(assert (=> b!1373521 m!1256581))

