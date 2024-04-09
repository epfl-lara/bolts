; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116178 () Bool)

(assert start!116178)

(declare-fun b!1371766 () Bool)

(declare-fun res!915257 () Bool)

(declare-fun e!777075 () Bool)

(assert (=> b!1371766 (=> (not res!915257) (not e!777075))))

(declare-datatypes ((List!32167 0))(
  ( (Nil!32164) (Cons!32163 (h!33372 (_ BitVec 64)) (t!46868 List!32167)) )
))
(declare-fun acc!866 () List!32167)

(declare-fun noDuplicate!2584 (List!32167) Bool)

(assert (=> b!1371766 (= res!915257 (noDuplicate!2584 acc!866))))

(declare-fun b!1371767 () Bool)

(declare-fun e!777076 () Bool)

(assert (=> b!1371767 (= e!777075 e!777076)))

(declare-fun res!915258 () Bool)

(assert (=> b!1371767 (=> (not res!915258) (not e!777076))))

(declare-datatypes ((array!93020 0))(
  ( (array!93021 (arr!44919 (Array (_ BitVec 32) (_ BitVec 64))) (size!45470 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93020)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!93020 (_ BitVec 32) List!32167) Bool)

(assert (=> b!1371767 (= res!915258 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45273 0))(
  ( (Unit!45274) )
))
(declare-fun lt!602698 () Unit!45273)

(declare-fun newAcc!98 () List!32167)

(declare-fun noDuplicateSubseq!283 (List!32167 List!32167) Unit!45273)

(assert (=> b!1371767 (= lt!602698 (noDuplicateSubseq!283 newAcc!98 acc!866))))

(declare-fun b!1371768 () Bool)

(declare-fun res!915259 () Bool)

(assert (=> b!1371768 (=> (not res!915259) (not e!777075))))

(declare-fun subseq!1096 (List!32167 List!32167) Bool)

(assert (=> b!1371768 (= res!915259 (subseq!1096 newAcc!98 acc!866))))

(declare-fun b!1371769 () Bool)

(declare-fun res!915256 () Bool)

(assert (=> b!1371769 (=> (not res!915256) (not e!777076))))

(assert (=> b!1371769 (= res!915256 (bvslt from!3239 (size!45470 a!3861)))))

(declare-fun b!1371770 () Bool)

(declare-fun res!915254 () Bool)

(assert (=> b!1371770 (=> (not res!915254) (not e!777075))))

(declare-fun contains!9705 (List!32167 (_ BitVec 64)) Bool)

(assert (=> b!1371770 (= res!915254 (not (contains!9705 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!915261 () Bool)

(assert (=> start!116178 (=> (not res!915261) (not e!777075))))

(assert (=> start!116178 (= res!915261 (and (bvslt (size!45470 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45470 a!3861))))))

(assert (=> start!116178 e!777075))

(declare-fun array_inv!33864 (array!93020) Bool)

(assert (=> start!116178 (array_inv!33864 a!3861)))

(assert (=> start!116178 true))

(declare-fun b!1371771 () Bool)

(declare-fun res!915252 () Bool)

(assert (=> b!1371771 (=> (not res!915252) (not e!777075))))

(assert (=> b!1371771 (= res!915252 (not (contains!9705 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371772 () Bool)

(declare-fun res!915251 () Bool)

(assert (=> b!1371772 (=> (not res!915251) (not e!777075))))

(assert (=> b!1371772 (= res!915251 (not (contains!9705 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371773 () Bool)

(declare-fun res!915255 () Bool)

(assert (=> b!1371773 (=> (not res!915255) (not e!777076))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1371773 (= res!915255 (validKeyInArray!0 (select (arr!44919 a!3861) from!3239)))))

(declare-fun b!1371774 () Bool)

(declare-fun res!915253 () Bool)

(assert (=> b!1371774 (=> (not res!915253) (not e!777075))))

(assert (=> b!1371774 (= res!915253 (not (contains!9705 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371775 () Bool)

(assert (=> b!1371775 (= e!777076 (not (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98)))))

(declare-fun lt!602699 () Unit!45273)

(declare-fun lt!602696 () List!32167)

(declare-fun lt!602695 () List!32167)

(assert (=> b!1371775 (= lt!602699 (noDuplicateSubseq!283 lt!602696 lt!602695))))

(assert (=> b!1371775 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!602696)))

(declare-fun lt!602697 () Unit!45273)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!93020 List!32167 List!32167 (_ BitVec 32)) Unit!45273)

(assert (=> b!1371775 (= lt!602697 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!602695 lt!602696 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1371775 (= lt!602696 (Cons!32163 (select (arr!44919 a!3861) from!3239) newAcc!98))))

(assert (=> b!1371775 (= lt!602695 (Cons!32163 (select (arr!44919 a!3861) from!3239) acc!866))))

(declare-fun b!1371776 () Bool)

(declare-fun res!915260 () Bool)

(assert (=> b!1371776 (=> (not res!915260) (not e!777076))))

(assert (=> b!1371776 (= res!915260 (not (contains!9705 acc!866 (select (arr!44919 a!3861) from!3239))))))

(assert (= (and start!116178 res!915261) b!1371766))

(assert (= (and b!1371766 res!915257) b!1371774))

(assert (= (and b!1371774 res!915253) b!1371771))

(assert (= (and b!1371771 res!915252) b!1371770))

(assert (= (and b!1371770 res!915254) b!1371772))

(assert (= (and b!1371772 res!915251) b!1371768))

(assert (= (and b!1371768 res!915259) b!1371767))

(assert (= (and b!1371767 res!915258) b!1371769))

(assert (= (and b!1371769 res!915256) b!1371773))

(assert (= (and b!1371773 res!915255) b!1371776))

(assert (= (and b!1371776 res!915260) b!1371775))

(declare-fun m!1255211 () Bool)

(assert (=> b!1371772 m!1255211))

(declare-fun m!1255213 () Bool)

(assert (=> b!1371768 m!1255213))

(declare-fun m!1255215 () Bool)

(assert (=> b!1371767 m!1255215))

(declare-fun m!1255217 () Bool)

(assert (=> b!1371767 m!1255217))

(declare-fun m!1255219 () Bool)

(assert (=> b!1371774 m!1255219))

(declare-fun m!1255221 () Bool)

(assert (=> start!116178 m!1255221))

(declare-fun m!1255223 () Bool)

(assert (=> b!1371766 m!1255223))

(declare-fun m!1255225 () Bool)

(assert (=> b!1371773 m!1255225))

(assert (=> b!1371773 m!1255225))

(declare-fun m!1255227 () Bool)

(assert (=> b!1371773 m!1255227))

(declare-fun m!1255229 () Bool)

(assert (=> b!1371770 m!1255229))

(declare-fun m!1255231 () Bool)

(assert (=> b!1371771 m!1255231))

(declare-fun m!1255233 () Bool)

(assert (=> b!1371775 m!1255233))

(assert (=> b!1371775 m!1255225))

(declare-fun m!1255235 () Bool)

(assert (=> b!1371775 m!1255235))

(declare-fun m!1255237 () Bool)

(assert (=> b!1371775 m!1255237))

(declare-fun m!1255239 () Bool)

(assert (=> b!1371775 m!1255239))

(assert (=> b!1371776 m!1255225))

(assert (=> b!1371776 m!1255225))

(declare-fun m!1255241 () Bool)

(assert (=> b!1371776 m!1255241))

(push 1)

(assert (not b!1371775))

(assert (not start!116178))

(assert (not b!1371773))

(assert (not b!1371766))

(assert (not b!1371772))

(assert (not b!1371767))

(assert (not b!1371770))

(assert (not b!1371768))

(assert (not b!1371774))

(assert (not b!1371776))

(assert (not b!1371771))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!147483 () Bool)

(declare-fun lt!602710 () Bool)

(declare-fun content!749 (List!32167) (Set (_ BitVec 64)))

(assert (=> d!147483 (= lt!602710 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!749 acc!866)))))

(declare-fun e!777098 () Bool)

(assert (=> d!147483 (= lt!602710 e!777098)))

(declare-fun res!915282 () Bool)

(assert (=> d!147483 (=> (not res!915282) (not e!777098))))

(assert (=> d!147483 (= res!915282 (is-Cons!32163 acc!866))))

(assert (=> d!147483 (= (contains!9705 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602710)))

(declare-fun b!1371797 () Bool)

(declare-fun e!777097 () Bool)

(assert (=> b!1371797 (= e!777098 e!777097)))

(declare-fun res!915283 () Bool)

(assert (=> b!1371797 (=> res!915283 e!777097)))

(assert (=> b!1371797 (= res!915283 (= (h!33372 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1371798 () Bool)

(assert (=> b!1371798 (= e!777097 (contains!9705 (t!46868 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147483 res!915282) b!1371797))

(assert (= (and b!1371797 (not res!915283)) b!1371798))

(declare-fun m!1255263 () Bool)

(assert (=> d!147483 m!1255263))

(declare-fun m!1255265 () Bool)

(assert (=> d!147483 m!1255265))

(declare-fun m!1255267 () Bool)

(assert (=> b!1371798 m!1255267))

(assert (=> b!1371774 d!147483))

(declare-fun b!1371829 () Bool)

(declare-fun e!777124 () Bool)

(assert (=> b!1371829 (= e!777124 (subseq!1096 (t!46868 newAcc!98) (t!46868 acc!866)))))

(declare-fun b!1371830 () Bool)

(declare-fun e!777125 () Bool)

(assert (=> b!1371830 (= e!777125 (subseq!1096 newAcc!98 (t!46868 acc!866)))))

(declare-fun b!1371828 () Bool)

(declare-fun e!777123 () Bool)

(assert (=> b!1371828 (= e!777123 e!777125)))

(declare-fun res!915307 () Bool)

(assert (=> b!1371828 (=> res!915307 e!777125)))

(assert (=> b!1371828 (= res!915307 e!777124)))

(declare-fun res!915304 () Bool)

(assert (=> b!1371828 (=> (not res!915304) (not e!777124))))

(assert (=> b!1371828 (= res!915304 (= (h!33372 newAcc!98) (h!33372 acc!866)))))

(declare-fun d!147495 () Bool)

(declare-fun res!915305 () Bool)

(declare-fun e!777126 () Bool)

(assert (=> d!147495 (=> res!915305 e!777126)))

(assert (=> d!147495 (= res!915305 (is-Nil!32164 newAcc!98))))

(assert (=> d!147495 (= (subseq!1096 newAcc!98 acc!866) e!777126)))

(declare-fun b!1371827 () Bool)

(assert (=> b!1371827 (= e!777126 e!777123)))

(declare-fun res!915306 () Bool)

(assert (=> b!1371827 (=> (not res!915306) (not e!777123))))

(assert (=> b!1371827 (= res!915306 (is-Cons!32163 acc!866))))

(assert (= (and d!147495 (not res!915305)) b!1371827))

(assert (= (and b!1371827 res!915306) b!1371828))

(assert (= (and b!1371828 res!915304) b!1371829))

(assert (= (and b!1371828 (not res!915307)) b!1371830))

(declare-fun m!1255269 () Bool)

(assert (=> b!1371829 m!1255269))

(declare-fun m!1255271 () Bool)

(assert (=> b!1371830 m!1255271))

(assert (=> b!1371768 d!147495))

(declare-fun d!147497 () Bool)

(assert (=> d!147497 (= (validKeyInArray!0 (select (arr!44919 a!3861) from!3239)) (and (not (= (select (arr!44919 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44919 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1371773 d!147497))

(declare-fun d!147501 () Bool)

(declare-fun lt!602711 () Bool)

(assert (=> d!147501 (= lt!602711 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!749 newAcc!98)))))

(declare-fun e!777132 () Bool)

(assert (=> d!147501 (= lt!602711 e!777132)))

(declare-fun res!915311 () Bool)

(assert (=> d!147501 (=> (not res!915311) (not e!777132))))

(assert (=> d!147501 (= res!915311 (is-Cons!32163 newAcc!98))))

(assert (=> d!147501 (= (contains!9705 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602711)))

(declare-fun b!1371836 () Bool)

(declare-fun e!777131 () Bool)

(assert (=> b!1371836 (= e!777132 e!777131)))

(declare-fun res!915312 () Bool)

(assert (=> b!1371836 (=> res!915312 e!777131)))

(assert (=> b!1371836 (= res!915312 (= (h!33372 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1371837 () Bool)

(assert (=> b!1371837 (= e!777131 (contains!9705 (t!46868 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147501 res!915311) b!1371836))

(assert (= (and b!1371836 (not res!915312)) b!1371837))

(declare-fun m!1255275 () Bool)

(assert (=> d!147501 m!1255275))

(declare-fun m!1255277 () Bool)

(assert (=> d!147501 m!1255277))

(declare-fun m!1255279 () Bool)

(assert (=> b!1371837 m!1255279))

(assert (=> b!1371772 d!147501))

(declare-fun b!1371874 () Bool)

(declare-fun e!777165 () Bool)

(declare-fun call!65570 () Bool)

(assert (=> b!1371874 (= e!777165 call!65570)))

(declare-fun d!147503 () Bool)

(declare-fun res!915342 () Bool)

(declare-fun e!777167 () Bool)

(assert (=> d!147503 (=> res!915342 e!777167)))

(assert (=> d!147503 (= res!915342 (bvsge from!3239 (size!45470 a!3861)))))

(assert (=> d!147503 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!777167)))

(declare-fun b!1371875 () Bool)

(assert (=> b!1371875 (= e!777165 call!65570)))

(declare-fun b!1371876 () Bool)

(declare-fun e!777166 () Bool)

(assert (=> b!1371876 (= e!777166 e!777165)))

(declare-fun c!127709 () Bool)

(assert (=> b!1371876 (= c!127709 (validKeyInArray!0 (select (arr!44919 a!3861) from!3239)))))

(declare-fun b!1371877 () Bool)

(assert (=> b!1371877 (= e!777167 e!777166)))

(declare-fun res!915341 () Bool)

(assert (=> b!1371877 (=> (not res!915341) (not e!777166))))

(declare-fun e!777168 () Bool)

(assert (=> b!1371877 (= res!915341 (not e!777168))))

(declare-fun res!915343 () Bool)

(assert (=> b!1371877 (=> (not res!915343) (not e!777168))))

(assert (=> b!1371877 (= res!915343 (validKeyInArray!0 (select (arr!44919 a!3861) from!3239)))))

(declare-fun b!1371878 () Bool)

(assert (=> b!1371878 (= e!777168 (contains!9705 acc!866 (select (arr!44919 a!3861) from!3239)))))

(declare-fun bm!65567 () Bool)

(assert (=> bm!65567 (= call!65570 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127709 (Cons!32163 (select (arr!44919 a!3861) from!3239) acc!866) acc!866)))))

(assert (= (and d!147503 (not res!915342)) b!1371877))

(assert (= (and b!1371877 res!915343) b!1371878))

(assert (= (and b!1371877 res!915341) b!1371876))

(assert (= (and b!1371876 c!127709) b!1371875))

(assert (= (and b!1371876 (not c!127709)) b!1371874))

(assert (= (or b!1371875 b!1371874) bm!65567))

(assert (=> b!1371876 m!1255225))

(assert (=> b!1371876 m!1255225))

(assert (=> b!1371876 m!1255227))

(assert (=> b!1371877 m!1255225))

(assert (=> b!1371877 m!1255225))

(assert (=> b!1371877 m!1255227))

(assert (=> b!1371878 m!1255225))

(assert (=> b!1371878 m!1255225))

(assert (=> b!1371878 m!1255241))

(assert (=> bm!65567 m!1255225))

(declare-fun m!1255311 () Bool)

(assert (=> bm!65567 m!1255311))

(assert (=> b!1371767 d!147503))

(declare-fun d!147515 () Bool)

(assert (=> d!147515 (noDuplicate!2584 newAcc!98)))

(declare-fun lt!602726 () Unit!45273)

(declare-fun choose!2026 (List!32167 List!32167) Unit!45273)

(assert (=> d!147515 (= lt!602726 (choose!2026 newAcc!98 acc!866))))

(declare-fun e!777186 () Bool)

(assert (=> d!147515 e!777186))

(declare-fun res!915359 () Bool)

(assert (=> d!147515 (=> (not res!915359) (not e!777186))))

(assert (=> d!147515 (= res!915359 (subseq!1096 newAcc!98 acc!866))))

(assert (=> d!147515 (= (noDuplicateSubseq!283 newAcc!98 acc!866) lt!602726)))

(declare-fun b!1371898 () Bool)

(assert (=> b!1371898 (= e!777186 (noDuplicate!2584 acc!866))))

(assert (= (and d!147515 res!915359) b!1371898))

(declare-fun m!1255343 () Bool)

(assert (=> d!147515 m!1255343))

(declare-fun m!1255345 () Bool)

(assert (=> d!147515 m!1255345))

(assert (=> d!147515 m!1255213))

(assert (=> b!1371898 m!1255223))

(assert (=> b!1371767 d!147515))

(declare-fun d!147529 () Bool)

(assert (=> d!147529 (= (array_inv!33864 a!3861) (bvsge (size!45470 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!116178 d!147529))

(declare-fun d!147531 () Bool)

(declare-fun res!915376 () Bool)

(declare-fun e!777203 () Bool)

(assert (=> d!147531 (=> res!915376 e!777203)))

(assert (=> d!147531 (= res!915376 (is-Nil!32164 acc!866))))

(assert (=> d!147531 (= (noDuplicate!2584 acc!866) e!777203)))

(declare-fun b!1371915 () Bool)

(declare-fun e!777204 () Bool)

(assert (=> b!1371915 (= e!777203 e!777204)))

(declare-fun res!915377 () Bool)

(assert (=> b!1371915 (=> (not res!915377) (not e!777204))))

(assert (=> b!1371915 (= res!915377 (not (contains!9705 (t!46868 acc!866) (h!33372 acc!866))))))

(declare-fun b!1371916 () Bool)

(assert (=> b!1371916 (= e!777204 (noDuplicate!2584 (t!46868 acc!866)))))

(assert (= (and d!147531 (not res!915376)) b!1371915))

(assert (= (and b!1371915 res!915377) b!1371916))

(declare-fun m!1255353 () Bool)

(assert (=> b!1371915 m!1255353))

(declare-fun m!1255355 () Bool)

(assert (=> b!1371916 m!1255355))

(assert (=> b!1371766 d!147531))

(declare-fun lt!602731 () Bool)

(declare-fun d!147539 () Bool)

(assert (=> d!147539 (= lt!602731 (member (select (arr!44919 a!3861) from!3239) (content!749 acc!866)))))

(declare-fun e!777208 () Bool)

(assert (=> d!147539 (= lt!602731 e!777208)))

(declare-fun res!915380 () Bool)

(assert (=> d!147539 (=> (not res!915380) (not e!777208))))

(assert (=> d!147539 (= res!915380 (is-Cons!32163 acc!866))))

(assert (=> d!147539 (= (contains!9705 acc!866 (select (arr!44919 a!3861) from!3239)) lt!602731)))

(declare-fun b!1371919 () Bool)

(declare-fun e!777207 () Bool)

(assert (=> b!1371919 (= e!777208 e!777207)))

(declare-fun res!915381 () Bool)

(assert (=> b!1371919 (=> res!915381 e!777207)))

(assert (=> b!1371919 (= res!915381 (= (h!33372 acc!866) (select (arr!44919 a!3861) from!3239)))))

(declare-fun b!1371920 () Bool)

(assert (=> b!1371920 (= e!777207 (contains!9705 (t!46868 acc!866) (select (arr!44919 a!3861) from!3239)))))

(assert (= (and d!147539 res!915380) b!1371919))

(assert (= (and b!1371919 (not res!915381)) b!1371920))

(assert (=> d!147539 m!1255263))

(assert (=> d!147539 m!1255225))

(declare-fun m!1255363 () Bool)

(assert (=> d!147539 m!1255363))

(assert (=> b!1371920 m!1255225))

(declare-fun m!1255365 () Bool)

(assert (=> b!1371920 m!1255365))

(assert (=> b!1371776 d!147539))

(declare-fun d!147543 () Bool)

(declare-fun lt!602732 () Bool)

(assert (=> d!147543 (= lt!602732 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!749 acc!866)))))

(declare-fun e!777214 () Bool)

(assert (=> d!147543 (= lt!602732 e!777214)))

(declare-fun res!915385 () Bool)

(assert (=> d!147543 (=> (not res!915385) (not e!777214))))

(assert (=> d!147543 (= res!915385 (is-Cons!32163 acc!866))))

(assert (=> d!147543 (= (contains!9705 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602732)))

(declare-fun b!1371926 () Bool)

(declare-fun e!777213 () Bool)

(assert (=> b!1371926 (= e!777214 e!777213)))

(declare-fun res!915386 () Bool)

(assert (=> b!1371926 (=> res!915386 e!777213)))

(assert (=> b!1371926 (= res!915386 (= (h!33372 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1371927 () Bool)

(assert (=> b!1371927 (= e!777213 (contains!9705 (t!46868 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147543 res!915385) b!1371926))

(assert (= (and b!1371926 (not res!915386)) b!1371927))

(assert (=> d!147543 m!1255263))

(declare-fun m!1255367 () Bool)

(assert (=> d!147543 m!1255367))

(declare-fun m!1255369 () Bool)

(assert (=> b!1371927 m!1255369))

(assert (=> b!1371771 d!147543))

(declare-fun d!147547 () Bool)

(declare-fun lt!602734 () Bool)

(assert (=> d!147547 (= lt!602734 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!749 newAcc!98)))))

(declare-fun e!777218 () Bool)

(assert (=> d!147547 (= lt!602734 e!777218)))

(declare-fun res!915389 () Bool)

(assert (=> d!147547 (=> (not res!915389) (not e!777218))))

(assert (=> d!147547 (= res!915389 (is-Cons!32163 newAcc!98))))

(assert (=> d!147547 (= (contains!9705 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602734)))

(declare-fun b!1371930 () Bool)

(declare-fun e!777217 () Bool)

(assert (=> b!1371930 (= e!777218 e!777217)))

(declare-fun res!915390 () Bool)

(assert (=> b!1371930 (=> res!915390 e!777217)))

(assert (=> b!1371930 (= res!915390 (= (h!33372 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1371931 () Bool)

(assert (=> b!1371931 (= e!777217 (contains!9705 (t!46868 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147547 res!915389) b!1371930))

(assert (= (and b!1371930 (not res!915390)) b!1371931))

(assert (=> d!147547 m!1255275))

(declare-fun m!1255377 () Bool)

(assert (=> d!147547 m!1255377))

(declare-fun m!1255379 () Bool)

(assert (=> b!1371931 m!1255379))

(assert (=> b!1371770 d!147547))

(declare-fun b!1371933 () Bool)

(declare-fun e!777220 () Bool)

(declare-fun call!65574 () Bool)

(assert (=> b!1371933 (= e!777220 call!65574)))

(declare-fun d!147553 () Bool)

(declare-fun res!915393 () Bool)

(declare-fun e!777222 () Bool)

(assert (=> d!147553 (=> res!915393 e!777222)))

(assert (=> d!147553 (= res!915393 (bvsge from!3239 (size!45470 a!3861)))))

(assert (=> d!147553 (= (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98) e!777222)))

(declare-fun b!1371934 () Bool)

(assert (=> b!1371934 (= e!777220 call!65574)))

(declare-fun b!1371935 () Bool)

(declare-fun e!777221 () Bool)

(assert (=> b!1371935 (= e!777221 e!777220)))

(declare-fun c!127713 () Bool)

(assert (=> b!1371935 (= c!127713 (validKeyInArray!0 (select (arr!44919 a!3861) from!3239)))))

(declare-fun b!1371936 () Bool)

(assert (=> b!1371936 (= e!777222 e!777221)))

(declare-fun res!915392 () Bool)

(assert (=> b!1371936 (=> (not res!915392) (not e!777221))))

(declare-fun e!777223 () Bool)

(assert (=> b!1371936 (= res!915392 (not e!777223))))

(declare-fun res!915394 () Bool)

(assert (=> b!1371936 (=> (not res!915394) (not e!777223))))

(assert (=> b!1371936 (= res!915394 (validKeyInArray!0 (select (arr!44919 a!3861) from!3239)))))

(declare-fun b!1371937 () Bool)

(assert (=> b!1371937 (= e!777223 (contains!9705 newAcc!98 (select (arr!44919 a!3861) from!3239)))))

(declare-fun bm!65571 () Bool)

(assert (=> bm!65571 (= call!65574 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127713 (Cons!32163 (select (arr!44919 a!3861) from!3239) newAcc!98) newAcc!98)))))

(assert (= (and d!147553 (not res!915393)) b!1371936))

(assert (= (and b!1371936 res!915394) b!1371937))

(assert (= (and b!1371936 res!915392) b!1371935))

(assert (= (and b!1371935 c!127713) b!1371934))

(assert (= (and b!1371935 (not c!127713)) b!1371933))

(assert (= (or b!1371934 b!1371933) bm!65571))

(assert (=> b!1371935 m!1255225))

(assert (=> b!1371935 m!1255225))

(assert (=> b!1371935 m!1255227))

(assert (=> b!1371936 m!1255225))

(assert (=> b!1371936 m!1255225))

(assert (=> b!1371936 m!1255227))

(assert (=> b!1371937 m!1255225))

(assert (=> b!1371937 m!1255225))

(declare-fun m!1255385 () Bool)

(assert (=> b!1371937 m!1255385))

(assert (=> bm!65571 m!1255225))

(declare-fun m!1255387 () Bool)

(assert (=> bm!65571 m!1255387))

(assert (=> b!1371775 d!147553))

(declare-fun d!147557 () Bool)

(assert (=> d!147557 (noDuplicate!2584 lt!602696)))

(declare-fun lt!602736 () Unit!45273)

(assert (=> d!147557 (= lt!602736 (choose!2026 lt!602696 lt!602695))))

(declare-fun e!777226 () Bool)

(assert (=> d!147557 e!777226))

(declare-fun res!915397 () Bool)

(assert (=> d!147557 (=> (not res!915397) (not e!777226))))

(assert (=> d!147557 (= res!915397 (subseq!1096 lt!602696 lt!602695))))

(assert (=> d!147557 (= (noDuplicateSubseq!283 lt!602696 lt!602695) lt!602736)))

(declare-fun b!1371940 () Bool)

(assert (=> b!1371940 (= e!777226 (noDuplicate!2584 lt!602695))))

(assert (= (and d!147557 res!915397) b!1371940))

(declare-fun m!1255389 () Bool)

(assert (=> d!147557 m!1255389))

(declare-fun m!1255391 () Bool)

(assert (=> d!147557 m!1255391))

(declare-fun m!1255393 () Bool)

(assert (=> d!147557 m!1255393))

(declare-fun m!1255395 () Bool)

(assert (=> b!1371940 m!1255395))

(assert (=> b!1371775 d!147557))

(declare-fun b!1371947 () Bool)

(declare-fun e!777233 () Bool)

(declare-fun call!65575 () Bool)

(assert (=> b!1371947 (= e!777233 call!65575)))

(declare-fun d!147559 () Bool)

(declare-fun res!915405 () Bool)

(declare-fun e!777235 () Bool)

(assert (=> d!147559 (=> res!915405 e!777235)))

(assert (=> d!147559 (= res!915405 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45470 a!3861)))))

(assert (=> d!147559 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!602696) e!777235)))

(declare-fun b!1371948 () Bool)

(assert (=> b!1371948 (= e!777233 call!65575)))

(declare-fun b!1371949 () Bool)

(declare-fun e!777234 () Bool)

(assert (=> b!1371949 (= e!777234 e!777233)))

(declare-fun c!127714 () Bool)

(assert (=> b!1371949 (= c!127714 (validKeyInArray!0 (select (arr!44919 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1371950 () Bool)

(assert (=> b!1371950 (= e!777235 e!777234)))

(declare-fun res!915404 () Bool)

(assert (=> b!1371950 (=> (not res!915404) (not e!777234))))

(declare-fun e!777236 () Bool)

(assert (=> b!1371950 (= res!915404 (not e!777236))))

(declare-fun res!915406 () Bool)

(assert (=> b!1371950 (=> (not res!915406) (not e!777236))))

(assert (=> b!1371950 (= res!915406 (validKeyInArray!0 (select (arr!44919 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1371951 () Bool)

(assert (=> b!1371951 (= e!777236 (contains!9705 lt!602696 (select (arr!44919 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun bm!65572 () Bool)

(assert (=> bm!65572 (= call!65575 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127714 (Cons!32163 (select (arr!44919 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) lt!602696) lt!602696)))))

(assert (= (and d!147559 (not res!915405)) b!1371950))

(assert (= (and b!1371950 res!915406) b!1371951))

(assert (= (and b!1371950 res!915404) b!1371949))

(assert (= (and b!1371949 c!127714) b!1371948))

(assert (= (and b!1371949 (not c!127714)) b!1371947))

(assert (= (or b!1371948 b!1371947) bm!65572))

(declare-fun m!1255397 () Bool)

(assert (=> b!1371949 m!1255397))

(assert (=> b!1371949 m!1255397))

(declare-fun m!1255399 () Bool)

(assert (=> b!1371949 m!1255399))

(assert (=> b!1371950 m!1255397))

(assert (=> b!1371950 m!1255397))

(assert (=> b!1371950 m!1255399))

(assert (=> b!1371951 m!1255397))

(assert (=> b!1371951 m!1255397))

(declare-fun m!1255401 () Bool)

(assert (=> b!1371951 m!1255401))

(assert (=> bm!65572 m!1255397))

(declare-fun m!1255403 () Bool)

(assert (=> bm!65572 m!1255403))

(assert (=> b!1371775 d!147559))

(declare-fun d!147561 () Bool)

(assert (=> d!147561 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!602696)))

(declare-fun lt!602741 () Unit!45273)

(declare-fun choose!80 (array!93020 List!32167 List!32167 (_ BitVec 32)) Unit!45273)

(assert (=> d!147561 (= lt!602741 (choose!80 a!3861 lt!602695 lt!602696 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> d!147561 (bvslt (size!45470 a!3861) #b01111111111111111111111111111111)))

(assert (=> d!147561 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!602695 lt!602696 (bvadd #b00000000000000000000000000000001 from!3239)) lt!602741)))

(declare-fun bs!39316 () Bool)

(assert (= bs!39316 d!147561))

(assert (=> bs!39316 m!1255239))

(declare-fun m!1255421 () Bool)

(assert (=> bs!39316 m!1255421))

(assert (=> b!1371775 d!147561))

(push 1)

(assert (not b!1371877))

(assert (not b!1371829))

(assert (not b!1371940))

(assert (not b!1371915))

(assert (not d!147557))

(assert (not b!1371951))

(assert (not bm!65567))

(assert (not d!147515))

(assert (not d!147547))

(assert (not b!1371920))

(assert (not b!1371936))

(assert (not d!147543))

(assert (not b!1371937))

(assert (not b!1371931))

(assert (not d!147539))

(assert (not b!1371898))

(assert (not d!147561))

(assert (not b!1371837))

(assert (not b!1371927))

(assert (not b!1371950))

(assert (not bm!65571))

(assert (not bm!65572))

(assert (not b!1371935))

(assert (not b!1371830))

(assert (not b!1371949))

(assert (not b!1371878))

(assert (not b!1371876))

(assert (not d!147501))

(assert (not b!1371916))

(assert (not b!1371798))

(assert (not d!147483))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!1371936 d!147497))

(declare-fun d!147663 () Bool)

(declare-fun c!127731 () Bool)

(assert (=> d!147663 (= c!127731 (is-Nil!32164 acc!866))))

(declare-fun e!777351 () (Set (_ BitVec 64)))

(assert (=> d!147663 (= (content!749 acc!866) e!777351)))

(declare-fun b!1372082 () Bool)

(assert (=> b!1372082 (= e!777351 (as emptyset (Set (_ BitVec 64))))))

(declare-fun b!1372083 () Bool)

(assert (=> b!1372083 (= e!777351 (union (insert (h!33372 acc!866) (as emptyset (Set (_ BitVec 64)))) (content!749 (t!46868 acc!866))))))

(assert (= (and d!147663 c!127731) b!1372082))

(assert (= (and d!147663 (not c!127731)) b!1372083))

(declare-fun m!1255599 () Bool)

(assert (=> b!1372083 m!1255599))

(declare-fun m!1255601 () Bool)

(assert (=> b!1372083 m!1255601))

(assert (=> d!147483 d!147663))

(assert (=> b!1371935 d!147497))

(declare-fun d!147665 () Bool)

(declare-fun res!915505 () Bool)

(declare-fun e!777352 () Bool)

(assert (=> d!147665 (=> res!915505 e!777352)))

(assert (=> d!147665 (= res!915505 (is-Nil!32164 lt!602696))))

(assert (=> d!147665 (= (noDuplicate!2584 lt!602696) e!777352)))

(declare-fun b!1372084 () Bool)

(declare-fun e!777353 () Bool)

(assert (=> b!1372084 (= e!777352 e!777353)))

(declare-fun res!915506 () Bool)

(assert (=> b!1372084 (=> (not res!915506) (not e!777353))))

(assert (=> b!1372084 (= res!915506 (not (contains!9705 (t!46868 lt!602696) (h!33372 lt!602696))))))

(declare-fun b!1372085 () Bool)

(assert (=> b!1372085 (= e!777353 (noDuplicate!2584 (t!46868 lt!602696)))))

(assert (= (and d!147665 (not res!915505)) b!1372084))

(assert (= (and b!1372084 res!915506) b!1372085))

(declare-fun m!1255603 () Bool)

(assert (=> b!1372084 m!1255603))

(declare-fun m!1255605 () Bool)

(assert (=> b!1372085 m!1255605))

(assert (=> d!147557 d!147665))

(declare-fun d!147667 () Bool)

(assert (=> d!147667 (noDuplicate!2584 lt!602696)))

(assert (=> d!147667 true))

(declare-fun _$12!479 () Unit!45273)

(assert (=> d!147667 (= (choose!2026 lt!602696 lt!602695) _$12!479)))

(declare-fun bs!39323 () Bool)

(assert (= bs!39323 d!147667))

(assert (=> bs!39323 m!1255389))

(assert (=> d!147557 d!147667))

(declare-fun b!1372088 () Bool)

(declare-fun e!777355 () Bool)

(assert (=> b!1372088 (= e!777355 (subseq!1096 (t!46868 lt!602696) (t!46868 lt!602695)))))

(declare-fun b!1372089 () Bool)

(declare-fun e!777356 () Bool)

(assert (=> b!1372089 (= e!777356 (subseq!1096 lt!602696 (t!46868 lt!602695)))))

(declare-fun b!1372087 () Bool)

(declare-fun e!777354 () Bool)

(assert (=> b!1372087 (= e!777354 e!777356)))

(declare-fun res!915510 () Bool)

(assert (=> b!1372087 (=> res!915510 e!777356)))

(assert (=> b!1372087 (= res!915510 e!777355)))

(declare-fun res!915507 () Bool)

(assert (=> b!1372087 (=> (not res!915507) (not e!777355))))

(assert (=> b!1372087 (= res!915507 (= (h!33372 lt!602696) (h!33372 lt!602695)))))

(declare-fun d!147669 () Bool)

(declare-fun res!915508 () Bool)

(declare-fun e!777357 () Bool)

(assert (=> d!147669 (=> res!915508 e!777357)))

