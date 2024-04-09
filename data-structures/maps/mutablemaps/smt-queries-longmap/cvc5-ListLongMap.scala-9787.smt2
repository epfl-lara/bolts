; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116174 () Bool)

(assert start!116174)

(declare-fun b!1371700 () Bool)

(declare-fun res!915189 () Bool)

(declare-fun e!777058 () Bool)

(assert (=> b!1371700 (=> (not res!915189) (not e!777058))))

(declare-datatypes ((List!32165 0))(
  ( (Nil!32162) (Cons!32161 (h!33370 (_ BitVec 64)) (t!46866 List!32165)) )
))
(declare-fun newAcc!98 () List!32165)

(declare-fun contains!9703 (List!32165 (_ BitVec 64)) Bool)

(assert (=> b!1371700 (= res!915189 (not (contains!9703 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371701 () Bool)

(declare-fun res!915186 () Bool)

(assert (=> b!1371701 (=> (not res!915186) (not e!777058))))

(declare-fun acc!866 () List!32165)

(declare-fun subseq!1094 (List!32165 List!32165) Bool)

(assert (=> b!1371701 (= res!915186 (subseq!1094 newAcc!98 acc!866))))

(declare-datatypes ((array!93016 0))(
  ( (array!93017 (arr!44917 (Array (_ BitVec 32) (_ BitVec 64))) (size!45468 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93016)

(declare-fun b!1371703 () Bool)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun e!777057 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93016 (_ BitVec 32) List!32165) Bool)

(assert (=> b!1371703 (= e!777057 (not (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98)))))

(declare-datatypes ((Unit!45269 0))(
  ( (Unit!45270) )
))
(declare-fun lt!602665 () Unit!45269)

(declare-fun lt!602668 () List!32165)

(declare-fun lt!602669 () List!32165)

(declare-fun noDuplicateSubseq!281 (List!32165 List!32165) Unit!45269)

(assert (=> b!1371703 (= lt!602665 (noDuplicateSubseq!281 lt!602668 lt!602669))))

(assert (=> b!1371703 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!602668)))

(declare-fun lt!602667 () Unit!45269)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!93016 List!32165 List!32165 (_ BitVec 32)) Unit!45269)

(assert (=> b!1371703 (= lt!602667 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!602669 lt!602668 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1371703 (= lt!602668 (Cons!32161 (select (arr!44917 a!3861) from!3239) newAcc!98))))

(assert (=> b!1371703 (= lt!602669 (Cons!32161 (select (arr!44917 a!3861) from!3239) acc!866))))

(declare-fun b!1371704 () Bool)

(declare-fun res!915192 () Bool)

(assert (=> b!1371704 (=> (not res!915192) (not e!777057))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1371704 (= res!915192 (validKeyInArray!0 (select (arr!44917 a!3861) from!3239)))))

(declare-fun b!1371705 () Bool)

(declare-fun res!915187 () Bool)

(assert (=> b!1371705 (=> (not res!915187) (not e!777058))))

(assert (=> b!1371705 (= res!915187 (not (contains!9703 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371706 () Bool)

(declare-fun res!915193 () Bool)

(assert (=> b!1371706 (=> (not res!915193) (not e!777058))))

(assert (=> b!1371706 (= res!915193 (not (contains!9703 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371707 () Bool)

(declare-fun res!915195 () Bool)

(assert (=> b!1371707 (=> (not res!915195) (not e!777058))))

(assert (=> b!1371707 (= res!915195 (not (contains!9703 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371708 () Bool)

(declare-fun res!915191 () Bool)

(assert (=> b!1371708 (=> (not res!915191) (not e!777058))))

(declare-fun noDuplicate!2582 (List!32165) Bool)

(assert (=> b!1371708 (= res!915191 (noDuplicate!2582 acc!866))))

(declare-fun b!1371702 () Bool)

(declare-fun res!915185 () Bool)

(assert (=> b!1371702 (=> (not res!915185) (not e!777057))))

(assert (=> b!1371702 (= res!915185 (not (contains!9703 acc!866 (select (arr!44917 a!3861) from!3239))))))

(declare-fun res!915190 () Bool)

(assert (=> start!116174 (=> (not res!915190) (not e!777058))))

(assert (=> start!116174 (= res!915190 (and (bvslt (size!45468 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45468 a!3861))))))

(assert (=> start!116174 e!777058))

(declare-fun array_inv!33862 (array!93016) Bool)

(assert (=> start!116174 (array_inv!33862 a!3861)))

(assert (=> start!116174 true))

(declare-fun b!1371709 () Bool)

(declare-fun res!915188 () Bool)

(assert (=> b!1371709 (=> (not res!915188) (not e!777057))))

(assert (=> b!1371709 (= res!915188 (bvslt from!3239 (size!45468 a!3861)))))

(declare-fun b!1371710 () Bool)

(assert (=> b!1371710 (= e!777058 e!777057)))

(declare-fun res!915194 () Bool)

(assert (=> b!1371710 (=> (not res!915194) (not e!777057))))

(assert (=> b!1371710 (= res!915194 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!602666 () Unit!45269)

(assert (=> b!1371710 (= lt!602666 (noDuplicateSubseq!281 newAcc!98 acc!866))))

(assert (= (and start!116174 res!915190) b!1371708))

(assert (= (and b!1371708 res!915191) b!1371707))

(assert (= (and b!1371707 res!915195) b!1371705))

(assert (= (and b!1371705 res!915187) b!1371700))

(assert (= (and b!1371700 res!915189) b!1371706))

(assert (= (and b!1371706 res!915193) b!1371701))

(assert (= (and b!1371701 res!915186) b!1371710))

(assert (= (and b!1371710 res!915194) b!1371709))

(assert (= (and b!1371709 res!915188) b!1371704))

(assert (= (and b!1371704 res!915192) b!1371702))

(assert (= (and b!1371702 res!915185) b!1371703))

(declare-fun m!1255147 () Bool)

(assert (=> b!1371706 m!1255147))

(declare-fun m!1255149 () Bool)

(assert (=> b!1371704 m!1255149))

(assert (=> b!1371704 m!1255149))

(declare-fun m!1255151 () Bool)

(assert (=> b!1371704 m!1255151))

(assert (=> b!1371702 m!1255149))

(assert (=> b!1371702 m!1255149))

(declare-fun m!1255153 () Bool)

(assert (=> b!1371702 m!1255153))

(declare-fun m!1255155 () Bool)

(assert (=> start!116174 m!1255155))

(declare-fun m!1255157 () Bool)

(assert (=> b!1371700 m!1255157))

(declare-fun m!1255159 () Bool)

(assert (=> b!1371703 m!1255159))

(assert (=> b!1371703 m!1255149))

(declare-fun m!1255161 () Bool)

(assert (=> b!1371703 m!1255161))

(declare-fun m!1255163 () Bool)

(assert (=> b!1371703 m!1255163))

(declare-fun m!1255165 () Bool)

(assert (=> b!1371703 m!1255165))

(declare-fun m!1255167 () Bool)

(assert (=> b!1371710 m!1255167))

(declare-fun m!1255169 () Bool)

(assert (=> b!1371710 m!1255169))

(declare-fun m!1255171 () Bool)

(assert (=> b!1371707 m!1255171))

(declare-fun m!1255173 () Bool)

(assert (=> b!1371705 m!1255173))

(declare-fun m!1255175 () Bool)

(assert (=> b!1371708 m!1255175))

(declare-fun m!1255177 () Bool)

(assert (=> b!1371701 m!1255177))

(push 1)

(assert (not b!1371702))

(assert (not b!1371704))

(assert (not b!1371705))

(assert (not b!1371703))

(assert (not b!1371701))

(assert (not start!116174))

(assert (not b!1371708))

(assert (not b!1371706))

(assert (not b!1371700))

(assert (not b!1371707))

(assert (not b!1371710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!147479 () Bool)

(assert (=> d!147479 (= (array_inv!33862 a!3861) (bvsge (size!45468 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!116174 d!147479))

(declare-fun d!147481 () Bool)

(declare-fun lt!602709 () Bool)

(declare-fun content!748 (List!32165) (Set (_ BitVec 64)))

(assert (=> d!147481 (= lt!602709 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!748 acc!866)))))

(declare-fun e!777096 () Bool)

(assert (=> d!147481 (= lt!602709 e!777096)))

(declare-fun res!915281 () Bool)

(assert (=> d!147481 (=> (not res!915281) (not e!777096))))

(assert (=> d!147481 (= res!915281 (is-Cons!32161 acc!866))))

(assert (=> d!147481 (= (contains!9703 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602709)))

(declare-fun b!1371795 () Bool)

(declare-fun e!777095 () Bool)

(assert (=> b!1371795 (= e!777096 e!777095)))

(declare-fun res!915280 () Bool)

(assert (=> b!1371795 (=> res!915280 e!777095)))

(assert (=> b!1371795 (= res!915280 (= (h!33370 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1371796 () Bool)

(assert (=> b!1371796 (= e!777095 (contains!9703 (t!46866 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147481 res!915281) b!1371795))

(assert (= (and b!1371795 (not res!915280)) b!1371796))

(declare-fun m!1255257 () Bool)

(assert (=> d!147481 m!1255257))

(declare-fun m!1255259 () Bool)

(assert (=> d!147481 m!1255259))

(declare-fun m!1255261 () Bool)

(assert (=> b!1371796 m!1255261))

(assert (=> b!1371705 d!147481))

(declare-fun d!147491 () Bool)

(assert (=> d!147491 (= (validKeyInArray!0 (select (arr!44917 a!3861) from!3239)) (and (not (= (select (arr!44917 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44917 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1371704 d!147491))

(declare-fun b!1371838 () Bool)

(declare-fun e!777136 () Bool)

(declare-fun e!777134 () Bool)

(assert (=> b!1371838 (= e!777136 e!777134)))

(declare-fun res!915314 () Bool)

(assert (=> b!1371838 (=> (not res!915314) (not e!777134))))

(declare-fun e!777133 () Bool)

(assert (=> b!1371838 (= res!915314 (not e!777133))))

(declare-fun res!915315 () Bool)

(assert (=> b!1371838 (=> (not res!915315) (not e!777133))))

(assert (=> b!1371838 (= res!915315 (validKeyInArray!0 (select (arr!44917 a!3861) from!3239)))))

(declare-fun b!1371839 () Bool)

(declare-fun e!777135 () Bool)

(declare-fun call!65566 () Bool)

(assert (=> b!1371839 (= e!777135 call!65566)))

(declare-fun b!1371840 () Bool)

(assert (=> b!1371840 (= e!777133 (contains!9703 newAcc!98 (select (arr!44917 a!3861) from!3239)))))

(declare-fun d!147493 () Bool)

(declare-fun res!915313 () Bool)

(assert (=> d!147493 (=> res!915313 e!777136)))

(assert (=> d!147493 (= res!915313 (bvsge from!3239 (size!45468 a!3861)))))

(assert (=> d!147493 (= (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98) e!777136)))

(declare-fun bm!65563 () Bool)

(declare-fun c!127705 () Bool)

(assert (=> bm!65563 (= call!65566 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127705 (Cons!32161 (select (arr!44917 a!3861) from!3239) newAcc!98) newAcc!98)))))

(declare-fun b!1371841 () Bool)

(assert (=> b!1371841 (= e!777135 call!65566)))

(declare-fun b!1371842 () Bool)

(assert (=> b!1371842 (= e!777134 e!777135)))

(assert (=> b!1371842 (= c!127705 (validKeyInArray!0 (select (arr!44917 a!3861) from!3239)))))

(assert (= (and d!147493 (not res!915313)) b!1371838))

(assert (= (and b!1371838 res!915315) b!1371840))

(assert (= (and b!1371838 res!915314) b!1371842))

(assert (= (and b!1371842 c!127705) b!1371839))

(assert (= (and b!1371842 (not c!127705)) b!1371841))

(assert (= (or b!1371839 b!1371841) bm!65563))

(assert (=> b!1371838 m!1255149))

(assert (=> b!1371838 m!1255149))

(assert (=> b!1371838 m!1255151))

(assert (=> b!1371840 m!1255149))

(assert (=> b!1371840 m!1255149))

(declare-fun m!1255281 () Bool)

(assert (=> b!1371840 m!1255281))

(assert (=> bm!65563 m!1255149))

(declare-fun m!1255283 () Bool)

(assert (=> bm!65563 m!1255283))

(assert (=> b!1371842 m!1255149))

(assert (=> b!1371842 m!1255149))

(assert (=> b!1371842 m!1255151))

(assert (=> b!1371703 d!147493))

(declare-fun d!147505 () Bool)

(assert (=> d!147505 (noDuplicate!2582 lt!602668)))

(declare-fun lt!602718 () Unit!45269)

(declare-fun choose!2024 (List!32165 List!32165) Unit!45269)

(assert (=> d!147505 (= lt!602718 (choose!2024 lt!602668 lt!602669))))

(declare-fun e!777152 () Bool)

(assert (=> d!147505 e!777152))

(declare-fun res!915329 () Bool)

(assert (=> d!147505 (=> (not res!915329) (not e!777152))))

(assert (=> d!147505 (= res!915329 (subseq!1094 lt!602668 lt!602669))))

(assert (=> d!147505 (= (noDuplicateSubseq!281 lt!602668 lt!602669) lt!602718)))

(declare-fun b!1371860 () Bool)

(assert (=> b!1371860 (= e!777152 (noDuplicate!2582 lt!602669))))

(assert (= (and d!147505 res!915329) b!1371860))

(declare-fun m!1255295 () Bool)

(assert (=> d!147505 m!1255295))

(declare-fun m!1255297 () Bool)

(assert (=> d!147505 m!1255297))

(declare-fun m!1255299 () Bool)

(assert (=> d!147505 m!1255299))

(declare-fun m!1255301 () Bool)

(assert (=> b!1371860 m!1255301))

(assert (=> b!1371703 d!147505))

(declare-fun b!1371861 () Bool)

(declare-fun e!777156 () Bool)

(declare-fun e!777154 () Bool)

(assert (=> b!1371861 (= e!777156 e!777154)))

(declare-fun res!915331 () Bool)

(assert (=> b!1371861 (=> (not res!915331) (not e!777154))))

(declare-fun e!777153 () Bool)

(assert (=> b!1371861 (= res!915331 (not e!777153))))

(declare-fun res!915332 () Bool)

(assert (=> b!1371861 (=> (not res!915332) (not e!777153))))

(assert (=> b!1371861 (= res!915332 (validKeyInArray!0 (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1371862 () Bool)

(declare-fun e!777155 () Bool)

(declare-fun call!65569 () Bool)

(assert (=> b!1371862 (= e!777155 call!65569)))

(declare-fun b!1371863 () Bool)

(assert (=> b!1371863 (= e!777153 (contains!9703 lt!602668 (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun d!147511 () Bool)

(declare-fun res!915330 () Bool)

(assert (=> d!147511 (=> res!915330 e!777156)))

(assert (=> d!147511 (= res!915330 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45468 a!3861)))))

(assert (=> d!147511 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!602668) e!777156)))

(declare-fun c!127708 () Bool)

(declare-fun bm!65566 () Bool)

(assert (=> bm!65566 (= call!65569 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127708 (Cons!32161 (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) lt!602668) lt!602668)))))

(declare-fun b!1371864 () Bool)

(assert (=> b!1371864 (= e!777155 call!65569)))

(declare-fun b!1371865 () Bool)

(assert (=> b!1371865 (= e!777154 e!777155)))

(assert (=> b!1371865 (= c!127708 (validKeyInArray!0 (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(assert (= (and d!147511 (not res!915330)) b!1371861))

(assert (= (and b!1371861 res!915332) b!1371863))

(assert (= (and b!1371861 res!915331) b!1371865))

(assert (= (and b!1371865 c!127708) b!1371862))

(assert (= (and b!1371865 (not c!127708)) b!1371864))

(assert (= (or b!1371862 b!1371864) bm!65566))

(declare-fun m!1255303 () Bool)

(assert (=> b!1371861 m!1255303))

(assert (=> b!1371861 m!1255303))

(declare-fun m!1255305 () Bool)

(assert (=> b!1371861 m!1255305))

(assert (=> b!1371863 m!1255303))

(assert (=> b!1371863 m!1255303))

(declare-fun m!1255307 () Bool)

(assert (=> b!1371863 m!1255307))

(assert (=> bm!65566 m!1255303))

(declare-fun m!1255309 () Bool)

(assert (=> bm!65566 m!1255309))

(assert (=> b!1371865 m!1255303))

(assert (=> b!1371865 m!1255303))

(assert (=> b!1371865 m!1255305))

(assert (=> b!1371703 d!147511))

(declare-fun d!147513 () Bool)

(assert (=> d!147513 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!602668)))

(declare-fun lt!602721 () Unit!45269)

(declare-fun choose!80 (array!93016 List!32165 List!32165 (_ BitVec 32)) Unit!45269)

(assert (=> d!147513 (= lt!602721 (choose!80 a!3861 lt!602669 lt!602668 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> d!147513 (bvslt (size!45468 a!3861) #b01111111111111111111111111111111)))

(assert (=> d!147513 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!602669 lt!602668 (bvadd #b00000000000000000000000000000001 from!3239)) lt!602721)))

(declare-fun bs!39314 () Bool)

(assert (= bs!39314 d!147513))

(assert (=> bs!39314 m!1255161))

(declare-fun m!1255319 () Bool)

(assert (=> bs!39314 m!1255319))

(assert (=> b!1371703 d!147513))

(declare-fun d!147519 () Bool)

(declare-fun lt!602722 () Bool)

(assert (=> d!147519 (= lt!602722 (set.member (select (arr!44917 a!3861) from!3239) (content!748 acc!866)))))

(declare-fun e!777178 () Bool)

(assert (=> d!147519 (= lt!602722 e!777178)))

(declare-fun res!915352 () Bool)

(assert (=> d!147519 (=> (not res!915352) (not e!777178))))

(assert (=> d!147519 (= res!915352 (is-Cons!32161 acc!866))))

(assert (=> d!147519 (= (contains!9703 acc!866 (select (arr!44917 a!3861) from!3239)) lt!602722)))

(declare-fun b!1371888 () Bool)

(declare-fun e!777177 () Bool)

(assert (=> b!1371888 (= e!777178 e!777177)))

(declare-fun res!915351 () Bool)

(assert (=> b!1371888 (=> res!915351 e!777177)))

(assert (=> b!1371888 (= res!915351 (= (h!33370 acc!866) (select (arr!44917 a!3861) from!3239)))))

(declare-fun b!1371889 () Bool)

(assert (=> b!1371889 (= e!777177 (contains!9703 (t!46866 acc!866) (select (arr!44917 a!3861) from!3239)))))

(assert (= (and d!147519 res!915352) b!1371888))

(assert (= (and b!1371888 (not res!915351)) b!1371889))

(assert (=> d!147519 m!1255257))

(assert (=> d!147519 m!1255149))

(declare-fun m!1255323 () Bool)

(assert (=> d!147519 m!1255323))

(assert (=> b!1371889 m!1255149))

(declare-fun m!1255327 () Bool)

(assert (=> b!1371889 m!1255327))

(assert (=> b!1371702 d!147519))

(declare-fun b!1371914 () Bool)

(declare-fun e!777202 () Bool)

(assert (=> b!1371914 (= e!777202 (subseq!1094 newAcc!98 (t!46866 acc!866)))))

(declare-fun b!1371913 () Bool)

(declare-fun e!777200 () Bool)

(assert (=> b!1371913 (= e!777200 (subseq!1094 (t!46866 newAcc!98) (t!46866 acc!866)))))

(declare-fun b!1371912 () Bool)

(declare-fun e!777199 () Bool)

(assert (=> b!1371912 (= e!777199 e!777202)))

(declare-fun res!915375 () Bool)

(assert (=> b!1371912 (=> res!915375 e!777202)))

(assert (=> b!1371912 (= res!915375 e!777200)))

(declare-fun res!915373 () Bool)

(assert (=> b!1371912 (=> (not res!915373) (not e!777200))))

(assert (=> b!1371912 (= res!915373 (= (h!33370 newAcc!98) (h!33370 acc!866)))))

(declare-fun b!1371911 () Bool)

(declare-fun e!777201 () Bool)

(assert (=> b!1371911 (= e!777201 e!777199)))

(declare-fun res!915372 () Bool)

(assert (=> b!1371911 (=> (not res!915372) (not e!777199))))

(assert (=> b!1371911 (= res!915372 (is-Cons!32161 acc!866))))

(declare-fun d!147523 () Bool)

(declare-fun res!915374 () Bool)

(assert (=> d!147523 (=> res!915374 e!777201)))

(assert (=> d!147523 (= res!915374 (is-Nil!32162 newAcc!98))))

(assert (=> d!147523 (= (subseq!1094 newAcc!98 acc!866) e!777201)))

(assert (= (and d!147523 (not res!915374)) b!1371911))

(assert (= (and b!1371911 res!915372) b!1371912))

(assert (= (and b!1371912 res!915373) b!1371913))

(assert (= (and b!1371912 (not res!915375)) b!1371914))

(declare-fun m!1255349 () Bool)

(assert (=> b!1371914 m!1255349))

(declare-fun m!1255351 () Bool)

(assert (=> b!1371913 m!1255351))

(assert (=> b!1371701 d!147523))

(declare-fun d!147537 () Bool)

(declare-fun lt!602730 () Bool)

(assert (=> d!147537 (= lt!602730 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!748 newAcc!98)))))

(declare-fun e!777206 () Bool)

(assert (=> d!147537 (= lt!602730 e!777206)))

(declare-fun res!915379 () Bool)

(assert (=> d!147537 (=> (not res!915379) (not e!777206))))

(assert (=> d!147537 (= res!915379 (is-Cons!32161 newAcc!98))))

(assert (=> d!147537 (= (contains!9703 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602730)))

(declare-fun b!1371917 () Bool)

(declare-fun e!777205 () Bool)

(assert (=> b!1371917 (= e!777206 e!777205)))

(declare-fun res!915378 () Bool)

(assert (=> b!1371917 (=> res!915378 e!777205)))

(assert (=> b!1371917 (= res!915378 (= (h!33370 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1371918 () Bool)

(assert (=> b!1371918 (= e!777205 (contains!9703 (t!46866 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147537 res!915379) b!1371917))

(assert (= (and b!1371917 (not res!915378)) b!1371918))

(declare-fun m!1255357 () Bool)

(assert (=> d!147537 m!1255357))

(declare-fun m!1255359 () Bool)

(assert (=> d!147537 m!1255359))

(declare-fun m!1255361 () Bool)

(assert (=> b!1371918 m!1255361))

(assert (=> b!1371700 d!147537))

(declare-fun b!1371921 () Bool)

(declare-fun e!777212 () Bool)

(declare-fun e!777210 () Bool)

(assert (=> b!1371921 (= e!777212 e!777210)))

(declare-fun res!915383 () Bool)

(assert (=> b!1371921 (=> (not res!915383) (not e!777210))))

(declare-fun e!777209 () Bool)

(assert (=> b!1371921 (= res!915383 (not e!777209))))

(declare-fun res!915384 () Bool)

(assert (=> b!1371921 (=> (not res!915384) (not e!777209))))

(assert (=> b!1371921 (= res!915384 (validKeyInArray!0 (select (arr!44917 a!3861) from!3239)))))

(declare-fun b!1371922 () Bool)

(declare-fun e!777211 () Bool)

(declare-fun call!65573 () Bool)

(assert (=> b!1371922 (= e!777211 call!65573)))

(declare-fun b!1371923 () Bool)

(assert (=> b!1371923 (= e!777209 (contains!9703 acc!866 (select (arr!44917 a!3861) from!3239)))))

(declare-fun d!147541 () Bool)

(declare-fun res!915382 () Bool)

(assert (=> d!147541 (=> res!915382 e!777212)))

(assert (=> d!147541 (= res!915382 (bvsge from!3239 (size!45468 a!3861)))))

(assert (=> d!147541 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!777212)))

(declare-fun bm!65570 () Bool)

(declare-fun c!127712 () Bool)

(assert (=> bm!65570 (= call!65573 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127712 (Cons!32161 (select (arr!44917 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1371924 () Bool)

(assert (=> b!1371924 (= e!777211 call!65573)))

(declare-fun b!1371925 () Bool)

(assert (=> b!1371925 (= e!777210 e!777211)))

(assert (=> b!1371925 (= c!127712 (validKeyInArray!0 (select (arr!44917 a!3861) from!3239)))))

(assert (= (and d!147541 (not res!915382)) b!1371921))

(assert (= (and b!1371921 res!915384) b!1371923))

(assert (= (and b!1371921 res!915383) b!1371925))

(assert (= (and b!1371925 c!127712) b!1371922))

(assert (= (and b!1371925 (not c!127712)) b!1371924))

(assert (= (or b!1371922 b!1371924) bm!65570))

(assert (=> b!1371921 m!1255149))

(assert (=> b!1371921 m!1255149))

(assert (=> b!1371921 m!1255151))

(assert (=> b!1371923 m!1255149))

(assert (=> b!1371923 m!1255149))

(assert (=> b!1371923 m!1255153))

(assert (=> bm!65570 m!1255149))

(declare-fun m!1255371 () Bool)

(assert (=> bm!65570 m!1255371))

(assert (=> b!1371925 m!1255149))

(assert (=> b!1371925 m!1255149))

(assert (=> b!1371925 m!1255151))

(assert (=> b!1371710 d!147541))

(declare-fun d!147549 () Bool)

(assert (=> d!147549 (noDuplicate!2582 newAcc!98)))

(declare-fun lt!602735 () Unit!45269)

(assert (=> d!147549 (= lt!602735 (choose!2024 newAcc!98 acc!866))))

(declare-fun e!777219 () Bool)

(assert (=> d!147549 e!777219))

(declare-fun res!915391 () Bool)

(assert (=> d!147549 (=> (not res!915391) (not e!777219))))

(assert (=> d!147549 (= res!915391 (subseq!1094 newAcc!98 acc!866))))

(assert (=> d!147549 (= (noDuplicateSubseq!281 newAcc!98 acc!866) lt!602735)))

(declare-fun b!1371932 () Bool)

(assert (=> b!1371932 (= e!777219 (noDuplicate!2582 acc!866))))

(assert (= (and d!147549 res!915391) b!1371932))

(declare-fun m!1255381 () Bool)

(assert (=> d!147549 m!1255381))

(declare-fun m!1255383 () Bool)

(assert (=> d!147549 m!1255383))

(assert (=> d!147549 m!1255177))

(assert (=> b!1371932 m!1255175))

(assert (=> b!1371710 d!147549))

(declare-fun d!147555 () Bool)

(declare-fun res!915409 () Bool)

(declare-fun e!777239 () Bool)

(assert (=> d!147555 (=> res!915409 e!777239)))

(assert (=> d!147555 (= res!915409 (is-Nil!32162 acc!866))))

(assert (=> d!147555 (= (noDuplicate!2582 acc!866) e!777239)))

(declare-fun b!1371954 () Bool)

(declare-fun e!777240 () Bool)

(assert (=> b!1371954 (= e!777239 e!777240)))

(declare-fun res!915410 () Bool)

(assert (=> b!1371954 (=> (not res!915410) (not e!777240))))

(assert (=> b!1371954 (= res!915410 (not (contains!9703 (t!46866 acc!866) (h!33370 acc!866))))))

(declare-fun b!1371955 () Bool)

(assert (=> b!1371955 (= e!777240 (noDuplicate!2582 (t!46866 acc!866)))))

(assert (= (and d!147555 (not res!915409)) b!1371954))

(assert (= (and b!1371954 res!915410) b!1371955))

(declare-fun m!1255409 () Bool)

(assert (=> b!1371954 m!1255409))

(declare-fun m!1255411 () Bool)

(assert (=> b!1371955 m!1255411))

(assert (=> b!1371708 d!147555))

(declare-fun d!147563 () Bool)

(declare-fun lt!602737 () Bool)

(assert (=> d!147563 (= lt!602737 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!748 acc!866)))))

(declare-fun e!777242 () Bool)

(assert (=> d!147563 (= lt!602737 e!777242)))

(declare-fun res!915412 () Bool)

(assert (=> d!147563 (=> (not res!915412) (not e!777242))))

(assert (=> d!147563 (= res!915412 (is-Cons!32161 acc!866))))

(assert (=> d!147563 (= (contains!9703 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602737)))

(declare-fun b!1371956 () Bool)

(declare-fun e!777241 () Bool)

(assert (=> b!1371956 (= e!777242 e!777241)))

(declare-fun res!915411 () Bool)

(assert (=> b!1371956 (=> res!915411 e!777241)))

(assert (=> b!1371956 (= res!915411 (= (h!33370 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1371957 () Bool)

(assert (=> b!1371957 (= e!777241 (contains!9703 (t!46866 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147563 res!915412) b!1371956))

(assert (= (and b!1371956 (not res!915411)) b!1371957))

(assert (=> d!147563 m!1255257))

(declare-fun m!1255413 () Bool)

(assert (=> d!147563 m!1255413))

(declare-fun m!1255415 () Bool)

(assert (=> b!1371957 m!1255415))

(assert (=> b!1371707 d!147563))

(declare-fun d!147565 () Bool)

(declare-fun lt!602738 () Bool)

(assert (=> d!147565 (= lt!602738 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!748 newAcc!98)))))

(declare-fun e!777244 () Bool)

(assert (=> d!147565 (= lt!602738 e!777244)))

(declare-fun res!915414 () Bool)

(assert (=> d!147565 (=> (not res!915414) (not e!777244))))

(assert (=> d!147565 (= res!915414 (is-Cons!32161 newAcc!98))))

(assert (=> d!147565 (= (contains!9703 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602738)))

(declare-fun b!1371958 () Bool)

(declare-fun e!777243 () Bool)

(assert (=> b!1371958 (= e!777244 e!777243)))

(declare-fun res!915413 () Bool)

(assert (=> b!1371958 (=> res!915413 e!777243)))

(assert (=> b!1371958 (= res!915413 (= (h!33370 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1371959 () Bool)

(assert (=> b!1371959 (= e!777243 (contains!9703 (t!46866 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147565 res!915414) b!1371958))

(assert (= (and b!1371958 (not res!915413)) b!1371959))

(assert (=> d!147565 m!1255357))

(declare-fun m!1255417 () Bool)

(assert (=> d!147565 m!1255417))

(declare-fun m!1255419 () Bool)

(assert (=> b!1371959 m!1255419))

(assert (=> b!1371706 d!147565))

(push 1)

(assert (not b!1371860))

(assert (not d!147537))

(assert (not b!1371865))

(assert (not b!1371932))

(assert (not b!1371842))

(assert (not b!1371796))

(assert (not b!1371921))

(assert (not b!1371923))

(assert (not d!147563))

(assert (not d!147513))

(assert (not d!147549))

(assert (not b!1371954))

(assert (not b!1371955))

(assert (not b!1371914))

(assert (not b!1371861))

(assert (not d!147565))

(assert (not bm!65566))

(assert (not b!1371863))

(assert (not b!1371913))

(assert (not b!1371889))

(assert (not d!147505))

(assert (not b!1371925))

(assert (not d!147519))

(assert (not b!1371918))

(assert (not d!147481))

(assert (not b!1371959))

(assert (not bm!65563))

(assert (not b!1371957))

(assert (not b!1371840))

(assert (not bm!65570))

(assert (not b!1371838))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!147615 () Bool)

(declare-fun lt!602750 () Bool)

(assert (=> d!147615 (= lt!602750 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!748 (t!46866 newAcc!98))))))

(declare-fun e!777298 () Bool)

(assert (=> d!147615 (= lt!602750 e!777298)))

(declare-fun res!915461 () Bool)

(assert (=> d!147615 (=> (not res!915461) (not e!777298))))

(assert (=> d!147615 (= res!915461 (is-Cons!32161 (t!46866 newAcc!98)))))

(assert (=> d!147615 (= (contains!9703 (t!46866 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000) lt!602750)))

(declare-fun b!1372019 () Bool)

(declare-fun e!777297 () Bool)

(assert (=> b!1372019 (= e!777298 e!777297)))

(declare-fun res!915460 () Bool)

(assert (=> b!1372019 (=> res!915460 e!777297)))

(assert (=> b!1372019 (= res!915460 (= (h!33370 (t!46866 newAcc!98)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372020 () Bool)

(assert (=> b!1372020 (= e!777297 (contains!9703 (t!46866 (t!46866 newAcc!98)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147615 res!915461) b!1372019))

(assert (= (and b!1372019 (not res!915460)) b!1372020))

(declare-fun m!1255511 () Bool)

(assert (=> d!147615 m!1255511))

(declare-fun m!1255513 () Bool)

(assert (=> d!147615 m!1255513))

(declare-fun m!1255515 () Bool)

(assert (=> b!1372020 m!1255515))

(assert (=> b!1371918 d!147615))

(assert (=> b!1371838 d!147491))

(declare-fun d!147617 () Bool)

(declare-fun c!127724 () Bool)

(assert (=> d!147617 (= c!127724 (is-Nil!32162 acc!866))))

(declare-fun e!777301 () (Set (_ BitVec 64)))

(assert (=> d!147617 (= (content!748 acc!866) e!777301)))

(declare-fun b!1372025 () Bool)

(assert (=> b!1372025 (= e!777301 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!1372026 () Bool)

(assert (=> b!1372026 (= e!777301 (set.union (set.insert (h!33370 acc!866) (as set.empty (Set (_ BitVec 64)))) (content!748 (t!46866 acc!866))))))

(assert (= (and d!147617 c!127724) b!1372025))

(assert (= (and d!147617 (not c!127724)) b!1372026))

(declare-fun m!1255517 () Bool)

(assert (=> b!1372026 m!1255517))

(declare-fun m!1255519 () Bool)

(assert (=> b!1372026 m!1255519))

(assert (=> d!147563 d!147617))

(declare-fun d!147619 () Bool)

(declare-fun lt!602751 () Bool)

(assert (=> d!147619 (= lt!602751 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!748 (t!46866 acc!866))))))

(declare-fun e!777303 () Bool)

(assert (=> d!147619 (= lt!602751 e!777303)))

(declare-fun res!915463 () Bool)

(assert (=> d!147619 (=> (not res!915463) (not e!777303))))

(assert (=> d!147619 (= res!915463 (is-Cons!32161 (t!46866 acc!866)))))

(assert (=> d!147619 (= (contains!9703 (t!46866 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000) lt!602751)))

(declare-fun b!1372027 () Bool)

(declare-fun e!777302 () Bool)

(assert (=> b!1372027 (= e!777303 e!777302)))

(declare-fun res!915462 () Bool)

(assert (=> b!1372027 (=> res!915462 e!777302)))

(assert (=> b!1372027 (= res!915462 (= (h!33370 (t!46866 acc!866)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372028 () Bool)

(assert (=> b!1372028 (= e!777302 (contains!9703 (t!46866 (t!46866 acc!866)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147619 res!915463) b!1372027))

(assert (= (and b!1372027 (not res!915462)) b!1372028))

(assert (=> d!147619 m!1255519))

(declare-fun m!1255521 () Bool)

(assert (=> d!147619 m!1255521))

(declare-fun m!1255523 () Bool)

(assert (=> b!1372028 m!1255523))

(assert (=> b!1371796 d!147619))

(declare-fun b!1372032 () Bool)

(declare-fun e!777307 () Bool)

(assert (=> b!1372032 (= e!777307 (subseq!1094 newAcc!98 (t!46866 (t!46866 acc!866))))))

(declare-fun b!1372031 () Bool)

(declare-fun e!777305 () Bool)

(assert (=> b!1372031 (= e!777305 (subseq!1094 (t!46866 newAcc!98) (t!46866 (t!46866 acc!866))))))

(declare-fun b!1372030 () Bool)

(declare-fun e!777304 () Bool)

(assert (=> b!1372030 (= e!777304 e!777307)))

(declare-fun res!915467 () Bool)

(assert (=> b!1372030 (=> res!915467 e!777307)))

(assert (=> b!1372030 (= res!915467 e!777305)))

(declare-fun res!915465 () Bool)

(assert (=> b!1372030 (=> (not res!915465) (not e!777305))))

(assert (=> b!1372030 (= res!915465 (= (h!33370 newAcc!98) (h!33370 (t!46866 acc!866))))))

(declare-fun b!1372029 () Bool)

(declare-fun e!777306 () Bool)

(assert (=> b!1372029 (= e!777306 e!777304)))

(declare-fun res!915464 () Bool)

(assert (=> b!1372029 (=> (not res!915464) (not e!777304))))

(assert (=> b!1372029 (= res!915464 (is-Cons!32161 (t!46866 acc!866)))))

(declare-fun d!147621 () Bool)

(declare-fun res!915466 () Bool)

(assert (=> d!147621 (=> res!915466 e!777306)))

(assert (=> d!147621 (= res!915466 (is-Nil!32162 newAcc!98))))

(assert (=> d!147621 (= (subseq!1094 newAcc!98 (t!46866 acc!866)) e!777306)))

(assert (= (and d!147621 (not res!915466)) b!1372029))

(assert (= (and b!1372029 res!915464) b!1372030))

(assert (= (and b!1372030 res!915465) b!1372031))

(assert (= (and b!1372030 (not res!915467)) b!1372032))

(declare-fun m!1255525 () Bool)

(assert (=> b!1372032 m!1255525))

(declare-fun m!1255527 () Bool)

(assert (=> b!1372031 m!1255527))

(assert (=> b!1371914 d!147621))

(declare-fun d!147623 () Bool)

(declare-fun lt!602752 () Bool)

(assert (=> d!147623 (= lt!602752 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!748 (t!46866 newAcc!98))))))

(declare-fun e!777309 () Bool)

(assert (=> d!147623 (= lt!602752 e!777309)))

(declare-fun res!915469 () Bool)

(assert (=> d!147623 (=> (not res!915469) (not e!777309))))

(assert (=> d!147623 (= res!915469 (is-Cons!32161 (t!46866 newAcc!98)))))

(assert (=> d!147623 (= (contains!9703 (t!46866 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000) lt!602752)))

(declare-fun b!1372033 () Bool)

(declare-fun e!777308 () Bool)

(assert (=> b!1372033 (= e!777309 e!777308)))

(declare-fun res!915468 () Bool)

(assert (=> b!1372033 (=> res!915468 e!777308)))

(assert (=> b!1372033 (= res!915468 (= (h!33370 (t!46866 newAcc!98)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372034 () Bool)

(assert (=> b!1372034 (= e!777308 (contains!9703 (t!46866 (t!46866 newAcc!98)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147623 res!915469) b!1372033))

(assert (= (and b!1372033 (not res!915468)) b!1372034))

(assert (=> d!147623 m!1255511))

(declare-fun m!1255529 () Bool)

(assert (=> d!147623 m!1255529))

(declare-fun m!1255531 () Bool)

(assert (=> b!1372034 m!1255531))

(assert (=> b!1371959 d!147623))

(declare-fun b!1372038 () Bool)

(declare-fun e!777313 () Bool)

(assert (=> b!1372038 (= e!777313 (subseq!1094 (t!46866 newAcc!98) (t!46866 (t!46866 acc!866))))))

(declare-fun b!1372037 () Bool)

(declare-fun e!777311 () Bool)

(assert (=> b!1372037 (= e!777311 (subseq!1094 (t!46866 (t!46866 newAcc!98)) (t!46866 (t!46866 acc!866))))))

(declare-fun b!1372036 () Bool)

(declare-fun e!777310 () Bool)

(assert (=> b!1372036 (= e!777310 e!777313)))

(declare-fun res!915473 () Bool)

(assert (=> b!1372036 (=> res!915473 e!777313)))

(assert (=> b!1372036 (= res!915473 e!777311)))

(declare-fun res!915471 () Bool)

(assert (=> b!1372036 (=> (not res!915471) (not e!777311))))

(assert (=> b!1372036 (= res!915471 (= (h!33370 (t!46866 newAcc!98)) (h!33370 (t!46866 acc!866))))))

(declare-fun b!1372035 () Bool)

(declare-fun e!777312 () Bool)

(assert (=> b!1372035 (= e!777312 e!777310)))

(declare-fun res!915470 () Bool)

(assert (=> b!1372035 (=> (not res!915470) (not e!777310))))

(assert (=> b!1372035 (= res!915470 (is-Cons!32161 (t!46866 acc!866)))))

(declare-fun d!147625 () Bool)

(declare-fun res!915472 () Bool)

(assert (=> d!147625 (=> res!915472 e!777312)))

(assert (=> d!147625 (= res!915472 (is-Nil!32162 (t!46866 newAcc!98)))))

(assert (=> d!147625 (= (subseq!1094 (t!46866 newAcc!98) (t!46866 acc!866)) e!777312)))

(assert (= (and d!147625 (not res!915472)) b!1372035))

(assert (= (and b!1372035 res!915470) b!1372036))

(assert (= (and b!1372036 res!915471) b!1372037))

(assert (= (and b!1372036 (not res!915473)) b!1372038))

(assert (=> b!1372038 m!1255527))

(declare-fun m!1255533 () Bool)

(assert (=> b!1372037 m!1255533))

(assert (=> b!1371913 d!147625))

(declare-fun d!147627 () Bool)

(declare-fun res!915474 () Bool)

(declare-fun e!777314 () Bool)

(assert (=> d!147627 (=> res!915474 e!777314)))

(assert (=> d!147627 (= res!915474 (is-Nil!32162 newAcc!98))))

(assert (=> d!147627 (= (noDuplicate!2582 newAcc!98) e!777314)))

(declare-fun b!1372039 () Bool)

(declare-fun e!777315 () Bool)

(assert (=> b!1372039 (= e!777314 e!777315)))

(declare-fun res!915475 () Bool)

(assert (=> b!1372039 (=> (not res!915475) (not e!777315))))

(assert (=> b!1372039 (= res!915475 (not (contains!9703 (t!46866 newAcc!98) (h!33370 newAcc!98))))))

(declare-fun b!1372040 () Bool)

(assert (=> b!1372040 (= e!777315 (noDuplicate!2582 (t!46866 newAcc!98)))))

(assert (= (and d!147627 (not res!915474)) b!1372039))

(assert (= (and b!1372039 res!915475) b!1372040))

(declare-fun m!1255535 () Bool)

(assert (=> b!1372039 m!1255535))

(declare-fun m!1255537 () Bool)

(assert (=> b!1372040 m!1255537))

(assert (=> d!147549 d!147627))

(declare-fun d!147629 () Bool)

(assert (=> d!147629 (noDuplicate!2582 newAcc!98)))

(assert (=> d!147629 true))

(declare-fun _$12!475 () Unit!45269)

(assert (=> d!147629 (= (choose!2024 newAcc!98 acc!866) _$12!475)))

(declare-fun bs!39320 () Bool)

(assert (= bs!39320 d!147629))

(assert (=> bs!39320 m!1255381))

(assert (=> d!147549 d!147629))

(assert (=> d!147549 d!147523))

(declare-fun d!147631 () Bool)

(assert (=> d!147631 (= (validKeyInArray!0 (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))) (and (not (= (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1371865 d!147631))

(assert (=> d!147519 d!147617))

(declare-fun b!1372041 () Bool)

(declare-fun e!777319 () Bool)

(declare-fun e!777317 () Bool)

(assert (=> b!1372041 (= e!777319 e!777317)))

(declare-fun res!915477 () Bool)

(assert (=> b!1372041 (=> (not res!915477) (not e!777317))))

(declare-fun e!777316 () Bool)

(assert (=> b!1372041 (= res!915477 (not e!777316))))

(declare-fun res!915478 () Bool)

(assert (=> b!1372041 (=> (not res!915478) (not e!777316))))

(assert (=> b!1372041 (= res!915478 (validKeyInArray!0 (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001))))))

(declare-fun b!1372042 () Bool)

(declare-fun e!777318 () Bool)

(declare-fun call!65579 () Bool)

(assert (=> b!1372042 (= e!777318 call!65579)))

(declare-fun b!1372043 () Bool)

(assert (=> b!1372043 (= e!777316 (contains!9703 (ite c!127708 (Cons!32161 (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) lt!602668) lt!602668) (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001))))))

(declare-fun d!147633 () Bool)

(declare-fun res!915476 () Bool)

(assert (=> d!147633 (=> res!915476 e!777319)))

(assert (=> d!147633 (= res!915476 (bvsge (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (size!45468 a!3861)))))

(assert (=> d!147633 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127708 (Cons!32161 (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) lt!602668) lt!602668)) e!777319)))

(declare-fun c!127725 () Bool)

(declare-fun bm!65576 () Bool)

(assert (=> bm!65576 (= call!65579 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!127725 (Cons!32161 (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001)) (ite c!127708 (Cons!32161 (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) lt!602668) lt!602668)) (ite c!127708 (Cons!32161 (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) lt!602668) lt!602668))))))

(declare-fun b!1372044 () Bool)

(assert (=> b!1372044 (= e!777318 call!65579)))

(declare-fun b!1372045 () Bool)

(assert (=> b!1372045 (= e!777317 e!777318)))

(assert (=> b!1372045 (= c!127725 (validKeyInArray!0 (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001))))))

(assert (= (and d!147633 (not res!915476)) b!1372041))

(assert (= (and b!1372041 res!915478) b!1372043))

(assert (= (and b!1372041 res!915477) b!1372045))

(assert (= (and b!1372045 c!127725) b!1372042))

(assert (= (and b!1372045 (not c!127725)) b!1372044))

(assert (= (or b!1372042 b!1372044) bm!65576))

(declare-fun m!1255539 () Bool)

(assert (=> b!1372041 m!1255539))

(assert (=> b!1372041 m!1255539))

(declare-fun m!1255541 () Bool)

(assert (=> b!1372041 m!1255541))

(assert (=> b!1372043 m!1255539))

(assert (=> b!1372043 m!1255539))

(declare-fun m!1255543 () Bool)

(assert (=> b!1372043 m!1255543))

(assert (=> bm!65576 m!1255539))

(declare-fun m!1255545 () Bool)

(assert (=> bm!65576 m!1255545))

(assert (=> b!1372045 m!1255539))

(assert (=> b!1372045 m!1255539))

(assert (=> b!1372045 m!1255541))

(assert (=> bm!65566 d!147633))

(assert (=> b!1371925 d!147491))

(declare-fun d!147635 () Bool)

(declare-fun c!127726 () Bool)

(assert (=> d!147635 (= c!127726 (is-Nil!32162 newAcc!98))))

(declare-fun e!777320 () (Set (_ BitVec 64)))

(assert (=> d!147635 (= (content!748 newAcc!98) e!777320)))

(declare-fun b!1372046 () Bool)

(assert (=> b!1372046 (= e!777320 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!1372047 () Bool)

(assert (=> b!1372047 (= e!777320 (set.union (set.insert (h!33370 newAcc!98) (as set.empty (Set (_ BitVec 64)))) (content!748 (t!46866 newAcc!98))))))

(assert (= (and d!147635 c!127726) b!1372046))

(assert (= (and d!147635 (not c!127726)) b!1372047))

(declare-fun m!1255547 () Bool)

(assert (=> b!1372047 m!1255547))

(assert (=> b!1372047 m!1255511))

(assert (=> d!147537 d!147635))

(declare-fun d!147637 () Bool)

(declare-fun lt!602753 () Bool)

(assert (=> d!147637 (= lt!602753 (set.member (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) (content!748 lt!602668)))))

(declare-fun e!777322 () Bool)

(assert (=> d!147637 (= lt!602753 e!777322)))

(declare-fun res!915480 () Bool)

(assert (=> d!147637 (=> (not res!915480) (not e!777322))))

(assert (=> d!147637 (= res!915480 (is-Cons!32161 lt!602668))))

(assert (=> d!147637 (= (contains!9703 lt!602668 (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))) lt!602753)))

(declare-fun b!1372048 () Bool)

(declare-fun e!777321 () Bool)

(assert (=> b!1372048 (= e!777322 e!777321)))

(declare-fun res!915479 () Bool)

(assert (=> b!1372048 (=> res!915479 e!777321)))

(assert (=> b!1372048 (= res!915479 (= (h!33370 lt!602668) (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1372049 () Bool)

(assert (=> b!1372049 (= e!777321 (contains!9703 (t!46866 lt!602668) (select (arr!44917 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(assert (= (and d!147637 res!915480) b!1372048))

(assert (= (and b!1372048 (not res!915479)) b!1372049))

(declare-fun m!1255549 () Bool)

(assert (=> d!147637 m!1255549))

(assert (=> d!147637 m!1255303))

(declare-fun m!1255551 () Bool)

(assert (=> d!147637 m!1255551))

(assert (=> b!1372049 m!1255303))

(declare-fun m!1255553 () Bool)

(assert (=> b!1372049 m!1255553))

(assert (=> b!1371863 d!147637))

(declare-fun d!147639 () Bool)

(declare-fun res!915481 () Bool)

(declare-fun e!777323 () Bool)

(assert (=> d!147639 (=> res!915481 e!777323)))

(assert (=> d!147639 (= res!915481 (is-Nil!32162 (t!46866 acc!866)))))

(assert (=> d!147639 (= (noDuplicate!2582 (t!46866 acc!866)) e!777323)))

(declare-fun b!1372050 () Bool)

(declare-fun e!777324 () Bool)

(assert (=> b!1372050 (= e!777323 e!777324)))

(declare-fun res!915482 () Bool)

(assert (=> b!1372050 (=> (not res!915482) (not e!777324))))

(assert (=> b!1372050 (= res!915482 (not (contains!9703 (t!46866 (t!46866 acc!866)) (h!33370 (t!46866 acc!866)))))))

(declare-fun b!1372051 () Bool)

(assert (=> b!1372051 (= e!777324 (noDuplicate!2582 (t!46866 (t!46866 acc!866))))))

(assert (= (and d!147639 (not res!915481)) b!1372050))

(assert (= (and b!1372050 res!915482) b!1372051))

(declare-fun m!1255555 () Bool)

(assert (=> b!1372050 m!1255555))

(declare-fun m!1255557 () Bool)

(assert (=> b!1372051 m!1255557))

(assert (=> b!1371955 d!147639))

(declare-fun b!1372052 () Bool)

(declare-fun e!777328 () Bool)

(declare-fun e!777326 () Bool)

(assert (=> b!1372052 (= e!777328 e!777326)))

(declare-fun res!915484 () Bool)

(assert (=> b!1372052 (=> (not res!915484) (not e!777326))))

(declare-fun e!777325 () Bool)

(assert (=> b!1372052 (= res!915484 (not e!777325))))

(declare-fun res!915485 () Bool)

(assert (=> b!1372052 (=> (not res!915485) (not e!777325))))

(assert (=> b!1372052 (= res!915485 (validKeyInArray!0 (select (arr!44917 a!3861) (bvadd from!3239 #b00000000000000000000000000000001))))))

(declare-fun b!1372053 () Bool)

(declare-fun e!777327 () Bool)

(declare-fun call!65580 () Bool)

(assert (=> b!1372053 (= e!777327 call!65580)))

(declare-fun b!1372054 () Bool)

(assert (=> b!1372054 (= e!777325 (contains!9703 (ite c!127712 (Cons!32161 (select (arr!44917 a!3861) from!3239) acc!866) acc!866) (select (arr!44917 a!3861) (bvadd from!3239 #b00000000000000000000000000000001))))))

(declare-fun d!147641 () Bool)

(declare-fun res!915483 () Bool)

(assert (=> d!147641 (=> res!915483 e!777328)))

(assert (=> d!147641 (= res!915483 (bvsge (bvadd from!3239 #b00000000000000000000000000000001) (size!45468 a!3861)))))

(assert (=> d!147641 (= (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127712 (Cons!32161 (select (arr!44917 a!3861) from!3239) acc!866) acc!866)) e!777328)))

(declare-fun bm!65577 () Bool)

(declare-fun c!127727 () Bool)

(assert (=> bm!65577 (= call!65580 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!127727 (Cons!32161 (select (arr!44917 a!3861) (bvadd from!3239 #b00000000000000000000000000000001)) (ite c!127712 (Cons!32161 (select (arr!44917 a!3861) from!3239) acc!866) acc!866)) (ite c!127712 (Cons!32161 (select (arr!44917 a!3861) from!3239) acc!866) acc!866))))))

(declare-fun b!1372055 () Bool)

(assert (=> b!1372055 (= e!777327 call!65580)))

(declare-fun b!1372056 () Bool)

(assert (=> b!1372056 (= e!777326 e!777327)))

(assert (=> b!1372056 (= c!127727 (validKeyInArray!0 (select (arr!44917 a!3861) (bvadd from!3239 #b00000000000000000000000000000001))))))

(assert (= (and d!147641 (not res!915483)) b!1372052))

(assert (= (and b!1372052 res!915485) b!1372054))

(assert (= (and b!1372052 res!915484) b!1372056))

(assert (= (and b!1372056 c!127727) b!1372053))

(assert (= (and b!1372056 (not c!127727)) b!1372055))

(assert (= (or b!1372053 b!1372055) bm!65577))

(declare-fun m!1255559 () Bool)

(assert (=> b!1372052 m!1255559))

(assert (=> b!1372052 m!1255559))

(declare-fun m!1255561 () Bool)

(assert (=> b!1372052 m!1255561))

(assert (=> b!1372054 m!1255559))

(assert (=> b!1372054 m!1255559))

(declare-fun m!1255563 () Bool)

(assert (=> b!1372054 m!1255563))

(assert (=> bm!65577 m!1255559))

(declare-fun m!1255565 () Bool)

(assert (=> bm!65577 m!1255565))

(assert (=> b!1372056 m!1255559))

(assert (=> b!1372056 m!1255559))

(assert (=> b!1372056 m!1255561))

(assert (=> bm!65570 d!147641))

(declare-fun d!147643 () Bool)

(declare-fun res!915486 () Bool)

(declare-fun e!777329 () Bool)

(assert (=> d!147643 (=> res!915486 e!777329)))

(assert (=> d!147643 (= res!915486 (is-Nil!32162 lt!602669))))

(assert (=> d!147643 (= (noDuplicate!2582 lt!602669) e!777329)))

(declare-fun b!1372057 () Bool)

(declare-fun e!777330 () Bool)

(assert (=> b!1372057 (= e!777329 e!777330)))

(declare-fun res!915487 () Bool)

(assert (=> b!1372057 (=> (not res!915487) (not e!777330))))

(assert (=> b!1372057 (= res!915487 (not (contains!9703 (t!46866 lt!602669) (h!33370 lt!602669))))))

(declare-fun b!1372058 () Bool)

(assert (=> b!1372058 (= e!777330 (noDuplicate!2582 (t!46866 lt!602669)))))

(assert (= (and d!147643 (not res!915486)) b!1372057))

(assert (= (and b!1372057 res!915487) b!1372058))

(declare-fun m!1255567 () Bool)

(assert (=> b!1372057 m!1255567))

(declare-fun m!1255569 () Bool)

(assert (=> b!1372058 m!1255569))

(assert (=> b!1371860 d!147643))

(declare-fun d!147645 () Bool)

(declare-fun lt!602754 () Bool)

(assert (=> d!147645 (= lt!602754 (set.member (h!33370 acc!866) (content!748 (t!46866 acc!866))))))

(declare-fun e!777332 () Bool)

(assert (=> d!147645 (= lt!602754 e!777332)))

(declare-fun res!915489 () Bool)

(assert (=> d!147645 (=> (not res!915489) (not e!777332))))

(assert (=> d!147645 (= res!915489 (is-Cons!32161 (t!46866 acc!866)))))

(assert (=> d!147645 (= (contains!9703 (t!46866 acc!866) (h!33370 acc!866)) lt!602754)))

(declare-fun b!1372059 () Bool)

(declare-fun e!777331 () Bool)

(assert (=> b!1372059 (= e!777332 e!777331)))

(declare-fun res!915488 () Bool)

(assert (=> b!1372059 (=> res!915488 e!777331)))

(assert (=> b!1372059 (= res!915488 (= (h!33370 (t!46866 acc!866)) (h!33370 acc!866)))))

(declare-fun b!1372060 () Bool)

(assert (=> b!1372060 (= e!777331 (contains!9703 (t!46866 (t!46866 acc!866)) (h!33370 acc!866)))))

(assert (= (and d!147645 res!915489) b!1372059))

(assert (= (and b!1372059 (not res!915488)) b!1372060))

(assert (=> d!147645 m!1255519))

(declare-fun m!1255571 () Bool)

(assert (=> d!147645 m!1255571))

(declare-fun m!1255573 () Bool)

(assert (=> b!1372060 m!1255573))

(assert (=> b!1371954 d!147645))

(assert (=> d!147565 d!147635))

(assert (=> b!1371861 d!147631))

(assert (=> b!1371923 d!147519))

(declare-fun d!147647 () Bool)

(declare-fun res!915490 () Bool)

(declare-fun e!777333 () Bool)

(assert (=> d!147647 (=> res!915490 e!777333)))

(assert (=> d!147647 (= res!915490 (is-Nil!32162 lt!602668))))

(assert (=> d!147647 (= (noDuplicate!2582 lt!602668) e!777333)))

(declare-fun b!1372061 () Bool)

(declare-fun e!777334 () Bool)

(assert (=> b!1372061 (= e!777333 e!777334)))

(declare-fun res!915491 () Bool)

(assert (=> b!1372061 (=> (not res!915491) (not e!777334))))

(assert (=> b!1372061 (= res!915491 (not (contains!9703 (t!46866 lt!602668) (h!33370 lt!602668))))))

(declare-fun b!1372062 () Bool)

(assert (=> b!1372062 (= e!777334 (noDuplicate!2582 (t!46866 lt!602668)))))

(assert (= (and d!147647 (not res!915490)) b!1372061))

(assert (= (and b!1372061 res!915491) b!1372062))

(declare-fun m!1255575 () Bool)

(assert (=> b!1372061 m!1255575))

(declare-fun m!1255577 () Bool)

(assert (=> b!1372062 m!1255577))

(assert (=> d!147505 d!147647))

(declare-fun d!147649 () Bool)

(assert (=> d!147649 (noDuplicate!2582 lt!602668)))

(assert (=> d!147649 true))

(declare-fun _$12!476 () Unit!45269)

(assert (=> d!147649 (= (choose!2024 lt!602668 lt!602669) _$12!476)))

(declare-fun bs!39321 () Bool)

(assert (= bs!39321 d!147649))

(assert (=> bs!39321 m!1255295))

(assert (=> d!147505 d!147649))

(declare-fun b!1372066 () Bool)

(declare-fun e!777338 () Bool)

(assert (=> b!1372066 (= e!777338 (subseq!1094 lt!602668 (t!46866 lt!602669)))))

(declare-fun b!1372065 () Bool)

(declare-fun e!777336 () Bool)

(assert (=> b!1372065 (= e!777336 (subseq!1094 (t!46866 lt!602668) (t!46866 lt!602669)))))

(declare-fun b!1372064 () Bool)

(declare-fun e!777335 () Bool)

(assert (=> b!1372064 (= e!777335 e!777338)))

(declare-fun res!915495 () Bool)

(assert (=> b!1372064 (=> res!915495 e!777338)))

(assert (=> b!1372064 (= res!915495 e!777336)))

(declare-fun res!915493 () Bool)

(assert (=> b!1372064 (=> (not res!915493) (not e!777336))))

(assert (=> b!1372064 (= res!915493 (= (h!33370 lt!602668) (h!33370 lt!602669)))))

(declare-fun b!1372063 () Bool)

(declare-fun e!777337 () Bool)

(assert (=> b!1372063 (= e!777337 e!777335)))

(declare-fun res!915492 () Bool)

(assert (=> b!1372063 (=> (not res!915492) (not e!777335))))

(assert (=> b!1372063 (= res!915492 (is-Cons!32161 lt!602669))))

(declare-fun d!147651 () Bool)

(declare-fun res!915494 () Bool)

(assert (=> d!147651 (=> res!915494 e!777337)))

(assert (=> d!147651 (= res!915494 (is-Nil!32162 lt!602668))))

(assert (=> d!147651 (= (subseq!1094 lt!602668 lt!602669) e!777337)))

(assert (= (and d!147651 (not res!915494)) b!1372063))

(assert (= (and b!1372063 res!915492) b!1372064))

(assert (= (and b!1372064 res!915493) b!1372065))

(assert (= (and b!1372064 (not res!915495)) b!1372066))

(declare-fun m!1255579 () Bool)

(assert (=> b!1372066 m!1255579))

(declare-fun m!1255581 () Bool)

(assert (=> b!1372065 m!1255581))

(assert (=> d!147505 d!147651))

(assert (=> b!1371921 d!147491))

(assert (=> d!147513 d!147511))

(declare-fun d!147653 () Bool)

(assert (=> d!147653 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!602668)))

(assert (=> d!147653 true))

(declare-fun _$70!110 () Unit!45269)

(assert (=> d!147653 (= (choose!80 a!3861 lt!602669 lt!602668 (bvadd #b00000000000000000000000000000001 from!3239)) _$70!110)))

(declare-fun bs!39322 () Bool)

(assert (= bs!39322 d!147653))

(assert (=> bs!39322 m!1255161))

(assert (=> d!147513 d!147653))

(assert (=> d!147481 d!147617))

(declare-fun d!147655 () Bool)

(declare-fun lt!602755 () Bool)

(assert (=> d!147655 (= lt!602755 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!748 (t!46866 acc!866))))))

(declare-fun e!777340 () Bool)

(assert (=> d!147655 (= lt!602755 e!777340)))

(declare-fun res!915497 () Bool)

(assert (=> d!147655 (=> (not res!915497) (not e!777340))))

(assert (=> d!147655 (= res!915497 (is-Cons!32161 (t!46866 acc!866)))))

(assert (=> d!147655 (= (contains!9703 (t!46866 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000) lt!602755)))

(declare-fun b!1372067 () Bool)

(declare-fun e!777339 () Bool)

(assert (=> b!1372067 (= e!777340 e!777339)))

(declare-fun res!915496 () Bool)

(assert (=> b!1372067 (=> res!915496 e!777339)))

(assert (=> b!1372067 (= res!915496 (= (h!33370 (t!46866 acc!866)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372068 () Bool)

(assert (=> b!1372068 (= e!777339 (contains!9703 (t!46866 (t!46866 acc!866)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147655 res!915497) b!1372067))

(assert (= (and b!1372067 (not res!915496)) b!1372068))

(assert (=> d!147655 m!1255519))

(declare-fun m!1255583 () Bool)

(assert (=> d!147655 m!1255583))

(declare-fun m!1255585 () Bool)

(assert (=> b!1372068 m!1255585))

(assert (=> b!1371957 d!147655))

(assert (=> b!1371842 d!147491))

(assert (=> b!1371932 d!147555))

(declare-fun b!1372069 () Bool)

(declare-fun e!777344 () Bool)

(declare-fun e!777342 () Bool)

(assert (=> b!1372069 (= e!777344 e!777342)))

(declare-fun res!915499 () Bool)

(assert (=> b!1372069 (=> (not res!915499) (not e!777342))))

(declare-fun e!777341 () Bool)

(assert (=> b!1372069 (= res!915499 (not e!777341))))

(declare-fun res!915500 () Bool)

(assert (=> b!1372069 (=> (not res!915500) (not e!777341))))

(assert (=> b!1372069 (= res!915500 (validKeyInArray!0 (select (arr!44917 a!3861) (bvadd from!3239 #b00000000000000000000000000000001))))))

(declare-fun b!1372070 () Bool)

(declare-fun e!777343 () Bool)

(declare-fun call!65581 () Bool)

(assert (=> b!1372070 (= e!777343 call!65581)))

(declare-fun b!1372071 () Bool)

(assert (=> b!1372071 (= e!777341 (contains!9703 (ite c!127705 (Cons!32161 (select (arr!44917 a!3861) from!3239) newAcc!98) newAcc!98) (select (arr!44917 a!3861) (bvadd from!3239 #b00000000000000000000000000000001))))))

(declare-fun d!147657 () Bool)

(declare-fun res!915498 () Bool)

(assert (=> d!147657 (=> res!915498 e!777344)))

(assert (=> d!147657 (= res!915498 (bvsge (bvadd from!3239 #b00000000000000000000000000000001) (size!45468 a!3861)))))

(assert (=> d!147657 (= (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127705 (Cons!32161 (select (arr!44917 a!3861) from!3239) newAcc!98) newAcc!98)) e!777344)))

(declare-fun bm!65578 () Bool)

(declare-fun c!127728 () Bool)

(assert (=> bm!65578 (= call!65581 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!127728 (Cons!32161 (select (arr!44917 a!3861) (bvadd from!3239 #b00000000000000000000000000000001)) (ite c!127705 (Cons!32161 (select (arr!44917 a!3861) from!3239) newAcc!98) newAcc!98)) (ite c!127705 (Cons!32161 (select (arr!44917 a!3861) from!3239) newAcc!98) newAcc!98))))))

(declare-fun b!1372072 () Bool)

(assert (=> b!1372072 (= e!777343 call!65581)))

(declare-fun b!1372073 () Bool)

(assert (=> b!1372073 (= e!777342 e!777343)))

(assert (=> b!1372073 (= c!127728 (validKeyInArray!0 (select (arr!44917 a!3861) (bvadd from!3239 #b00000000000000000000000000000001))))))

(assert (= (and d!147657 (not res!915498)) b!1372069))

(assert (= (and b!1372069 res!915500) b!1372071))

(assert (= (and b!1372069 res!915499) b!1372073))

(assert (= (and b!1372073 c!127728) b!1372070))

(assert (= (and b!1372073 (not c!127728)) b!1372072))

(assert (= (or b!1372070 b!1372072) bm!65578))

(assert (=> b!1372069 m!1255559))

(assert (=> b!1372069 m!1255559))

(assert (=> b!1372069 m!1255561))

(assert (=> b!1372071 m!1255559))

(assert (=> b!1372071 m!1255559))

(declare-fun m!1255587 () Bool)

(assert (=> b!1372071 m!1255587))

(assert (=> bm!65578 m!1255559))

(declare-fun m!1255589 () Bool)

(assert (=> bm!65578 m!1255589))

(assert (=> b!1372073 m!1255559))

(assert (=> b!1372073 m!1255559))

(assert (=> b!1372073 m!1255561))

(assert (=> bm!65563 d!147657))

(declare-fun d!147659 () Bool)

(declare-fun lt!602756 () Bool)

(assert (=> d!147659 (= lt!602756 (set.member (select (arr!44917 a!3861) from!3239) (content!748 newAcc!98)))))

(declare-fun e!777346 () Bool)

(assert (=> d!147659 (= lt!602756 e!777346)))

(declare-fun res!915502 () Bool)

(assert (=> d!147659 (=> (not res!915502) (not e!777346))))

(assert (=> d!147659 (= res!915502 (is-Cons!32161 newAcc!98))))

(assert (=> d!147659 (= (contains!9703 newAcc!98 (select (arr!44917 a!3861) from!3239)) lt!602756)))

(declare-fun b!1372074 () Bool)

(declare-fun e!777345 () Bool)

(assert (=> b!1372074 (= e!777346 e!777345)))

(declare-fun res!915501 () Bool)

(assert (=> b!1372074 (=> res!915501 e!777345)))

(assert (=> b!1372074 (= res!915501 (= (h!33370 newAcc!98) (select (arr!44917 a!3861) from!3239)))))

(declare-fun b!1372075 () Bool)

(assert (=> b!1372075 (= e!777345 (contains!9703 (t!46866 newAcc!98) (select (arr!44917 a!3861) from!3239)))))

(assert (= (and d!147659 res!915502) b!1372074))

(assert (= (and b!1372074 (not res!915501)) b!1372075))

(assert (=> d!147659 m!1255357))

(assert (=> d!147659 m!1255149))

(declare-fun m!1255591 () Bool)

(assert (=> d!147659 m!1255591))

(assert (=> b!1372075 m!1255149))

(declare-fun m!1255593 () Bool)

(assert (=> b!1372075 m!1255593))

(assert (=> b!1371840 d!147659))

(declare-fun lt!602757 () Bool)

(declare-fun d!147661 () Bool)

(assert (=> d!147661 (= lt!602757 (set.member (select (arr!44917 a!3861) from!3239) (content!748 (t!46866 acc!866))))))

(declare-fun e!777348 () Bool)

(assert (=> d!147661 (= lt!602757 e!777348)))

(declare-fun res!915504 () Bool)

(assert (=> d!147661 (=> (not res!915504) (not e!777348))))

(assert (=> d!147661 (= res!915504 (is-Cons!32161 (t!46866 acc!866)))))

(assert (=> d!147661 (= (contains!9703 (t!46866 acc!866) (select (arr!44917 a!3861) from!3239)) lt!602757)))

(declare-fun b!1372076 () Bool)

(declare-fun e!777347 () Bool)

(assert (=> b!1372076 (= e!777348 e!777347)))

(declare-fun res!915503 () Bool)

(assert (=> b!1372076 (=> res!915503 e!777347)))

(assert (=> b!1372076 (= res!915503 (= (h!33370 (t!46866 acc!866)) (select (arr!44917 a!3861) from!3239)))))

(declare-fun b!1372077 () Bool)

(assert (=> b!1372077 (= e!777347 (contains!9703 (t!46866 (t!46866 acc!866)) (select (arr!44917 a!3861) from!3239)))))

(assert (= (and d!147661 res!915504) b!1372076))

(assert (= (and b!1372076 (not res!915503)) b!1372077))

(assert (=> d!147661 m!1255519))

(assert (=> d!147661 m!1255149))

(declare-fun m!1255595 () Bool)

(assert (=> d!147661 m!1255595))

(assert (=> b!1372077 m!1255149))

(declare-fun m!1255597 () Bool)

(assert (=> b!1372077 m!1255597))

(assert (=> b!1371889 d!147661))

(push 1)

