; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116250 () Bool)

(assert start!116250)

(declare-fun b!1372225 () Bool)

(declare-fun res!915646 () Bool)

(declare-fun e!777425 () Bool)

(assert (=> b!1372225 (=> (not res!915646) (not e!777425))))

(declare-datatypes ((List!32170 0))(
  ( (Nil!32167) (Cons!32166 (h!33375 (_ BitVec 64)) (t!46871 List!32170)) )
))
(declare-fun acc!866 () List!32170)

(declare-fun noDuplicate!2587 (List!32170) Bool)

(assert (=> b!1372225 (= res!915646 (noDuplicate!2587 acc!866))))

(declare-fun res!915638 () Bool)

(assert (=> start!116250 (=> (not res!915638) (not e!777425))))

(declare-datatypes ((array!93029 0))(
  ( (array!93030 (arr!44922 (Array (_ BitVec 32) (_ BitVec 64))) (size!45473 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93029)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!116250 (= res!915638 (and (bvslt (size!45473 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45473 a!3861))))))

(assert (=> start!116250 e!777425))

(declare-fun array_inv!33867 (array!93029) Bool)

(assert (=> start!116250 (array_inv!33867 a!3861)))

(assert (=> start!116250 true))

(declare-fun b!1372226 () Bool)

(declare-fun res!915641 () Bool)

(assert (=> b!1372226 (=> (not res!915641) (not e!777425))))

(declare-fun contains!9708 (List!32170 (_ BitVec 64)) Bool)

(assert (=> b!1372226 (= res!915641 (not (contains!9708 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372227 () Bool)

(declare-fun res!915640 () Bool)

(declare-fun e!777426 () Bool)

(assert (=> b!1372227 (=> (not res!915640) (not e!777426))))

(assert (=> b!1372227 (= res!915640 (contains!9708 acc!866 (select (arr!44922 a!3861) from!3239)))))

(declare-fun b!1372228 () Bool)

(declare-fun res!915647 () Bool)

(assert (=> b!1372228 (=> (not res!915647) (not e!777425))))

(assert (=> b!1372228 (= res!915647 (not (contains!9708 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372229 () Bool)

(declare-fun res!915644 () Bool)

(assert (=> b!1372229 (=> (not res!915644) (not e!777425))))

(declare-fun newAcc!98 () List!32170)

(declare-fun subseq!1099 (List!32170 List!32170) Bool)

(assert (=> b!1372229 (= res!915644 (subseq!1099 newAcc!98 acc!866))))

(declare-fun b!1372230 () Bool)

(assert (=> b!1372230 (= e!777425 e!777426)))

(declare-fun res!915645 () Bool)

(assert (=> b!1372230 (=> (not res!915645) (not e!777426))))

(declare-fun arrayNoDuplicates!0 (array!93029 (_ BitVec 32) List!32170) Bool)

(assert (=> b!1372230 (= res!915645 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45279 0))(
  ( (Unit!45280) )
))
(declare-fun lt!602774 () Unit!45279)

(declare-fun noDuplicateSubseq!286 (List!32170 List!32170) Unit!45279)

(assert (=> b!1372230 (= lt!602774 (noDuplicateSubseq!286 newAcc!98 acc!866))))

(declare-fun b!1372231 () Bool)

(declare-fun res!915639 () Bool)

(assert (=> b!1372231 (=> (not res!915639) (not e!777425))))

(assert (=> b!1372231 (= res!915639 (not (contains!9708 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372232 () Bool)

(declare-fun res!915648 () Bool)

(assert (=> b!1372232 (=> (not res!915648) (not e!777426))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1372232 (= res!915648 (validKeyInArray!0 (select (arr!44922 a!3861) from!3239)))))

(declare-fun b!1372233 () Bool)

(assert (=> b!1372233 (= e!777426 (not (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98)))))

(declare-fun b!1372234 () Bool)

(declare-fun res!915642 () Bool)

(assert (=> b!1372234 (=> (not res!915642) (not e!777425))))

(assert (=> b!1372234 (= res!915642 (not (contains!9708 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372235 () Bool)

(declare-fun res!915643 () Bool)

(assert (=> b!1372235 (=> (not res!915643) (not e!777426))))

(assert (=> b!1372235 (= res!915643 (bvslt from!3239 (size!45473 a!3861)))))

(assert (= (and start!116250 res!915638) b!1372225))

(assert (= (and b!1372225 res!915646) b!1372226))

(assert (= (and b!1372226 res!915641) b!1372228))

(assert (= (and b!1372228 res!915647) b!1372234))

(assert (= (and b!1372234 res!915642) b!1372231))

(assert (= (and b!1372231 res!915639) b!1372229))

(assert (= (and b!1372229 res!915644) b!1372230))

(assert (= (and b!1372230 res!915645) b!1372235))

(assert (= (and b!1372235 res!915643) b!1372232))

(assert (= (and b!1372232 res!915648) b!1372227))

(assert (= (and b!1372227 res!915640) b!1372233))

(declare-fun m!1255739 () Bool)

(assert (=> b!1372232 m!1255739))

(assert (=> b!1372232 m!1255739))

(declare-fun m!1255741 () Bool)

(assert (=> b!1372232 m!1255741))

(declare-fun m!1255743 () Bool)

(assert (=> b!1372233 m!1255743))

(declare-fun m!1255745 () Bool)

(assert (=> b!1372231 m!1255745))

(declare-fun m!1255747 () Bool)

(assert (=> b!1372230 m!1255747))

(declare-fun m!1255749 () Bool)

(assert (=> b!1372230 m!1255749))

(declare-fun m!1255751 () Bool)

(assert (=> b!1372226 m!1255751))

(declare-fun m!1255753 () Bool)

(assert (=> b!1372225 m!1255753))

(declare-fun m!1255755 () Bool)

(assert (=> b!1372234 m!1255755))

(declare-fun m!1255757 () Bool)

(assert (=> b!1372228 m!1255757))

(declare-fun m!1255759 () Bool)

(assert (=> b!1372229 m!1255759))

(declare-fun m!1255761 () Bool)

(assert (=> start!116250 m!1255761))

(assert (=> b!1372227 m!1255739))

(assert (=> b!1372227 m!1255739))

(declare-fun m!1255763 () Bool)

(assert (=> b!1372227 m!1255763))

(push 1)

(assert (not start!116250))

(assert (not b!1372232))

(assert (not b!1372228))

(assert (not b!1372231))

(assert (not b!1372226))

(assert (not b!1372225))

(assert (not b!1372230))

(assert (not b!1372234))

(assert (not b!1372229))

(assert (not b!1372233))

(assert (not b!1372227))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1372276 () Bool)

(declare-fun e!777468 () Bool)

(declare-fun e!777469 () Bool)

(assert (=> b!1372276 (= e!777468 e!777469)))

(declare-fun res!915686 () Bool)

(assert (=> b!1372276 (=> (not res!915686) (not e!777469))))

(declare-fun e!777466 () Bool)

(assert (=> b!1372276 (= res!915686 (not e!777466))))

(declare-fun res!915685 () Bool)

(assert (=> b!1372276 (=> (not res!915685) (not e!777466))))

(assert (=> b!1372276 (= res!915685 (validKeyInArray!0 (select (arr!44922 a!3861) from!3239)))))

(declare-fun b!1372277 () Bool)

(assert (=> b!1372277 (= e!777466 (contains!9708 newAcc!98 (select (arr!44922 a!3861) from!3239)))))

(declare-fun b!1372278 () Bool)

(declare-fun e!777467 () Bool)

(assert (=> b!1372278 (= e!777469 e!777467)))

(declare-fun c!127738 () Bool)

(assert (=> b!1372278 (= c!127738 (validKeyInArray!0 (select (arr!44922 a!3861) from!3239)))))

(declare-fun d!147721 () Bool)

(declare-fun res!915687 () Bool)

(assert (=> d!147721 (=> res!915687 e!777468)))

(assert (=> d!147721 (= res!915687 (bvsge from!3239 (size!45473 a!3861)))))

(assert (=> d!147721 (= (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98) e!777468)))

(declare-fun b!1372279 () Bool)

(declare-fun call!65587 () Bool)

(assert (=> b!1372279 (= e!777467 call!65587)))

(declare-fun b!1372280 () Bool)

(assert (=> b!1372280 (= e!777467 call!65587)))

(declare-fun bm!65584 () Bool)

(assert (=> bm!65584 (= call!65587 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127738 (Cons!32166 (select (arr!44922 a!3861) from!3239) newAcc!98) newAcc!98)))))

(assert (= (and d!147721 (not res!915687)) b!1372276))

(assert (= (and b!1372276 res!915685) b!1372277))

(assert (= (and b!1372276 res!915686) b!1372278))

(assert (= (and b!1372278 c!127738) b!1372279))

(assert (= (and b!1372278 (not c!127738)) b!1372280))

(assert (= (or b!1372279 b!1372280) bm!65584))

(assert (=> b!1372276 m!1255739))

(assert (=> b!1372276 m!1255739))

(assert (=> b!1372276 m!1255741))

(assert (=> b!1372277 m!1255739))

(assert (=> b!1372277 m!1255739))

(declare-fun m!1255797 () Bool)

(assert (=> b!1372277 m!1255797))

(assert (=> b!1372278 m!1255739))

(assert (=> b!1372278 m!1255739))

(assert (=> b!1372278 m!1255741))

(assert (=> bm!65584 m!1255739))

(declare-fun m!1255799 () Bool)

(assert (=> bm!65584 m!1255799))

(assert (=> b!1372233 d!147721))

(declare-fun d!147737 () Bool)

(declare-fun lt!602788 () Bool)

(declare-fun content!752 (List!32170) (Set (_ BitVec 64)))

(assert (=> d!147737 (= lt!602788 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!752 acc!866)))))

(declare-fun e!777501 () Bool)

(assert (=> d!147737 (= lt!602788 e!777501)))

(declare-fun res!915719 () Bool)

(assert (=> d!147737 (=> (not res!915719) (not e!777501))))

(assert (=> d!147737 (= res!915719 (is-Cons!32166 acc!866))))

(assert (=> d!147737 (= (contains!9708 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602788)))

(declare-fun b!1372311 () Bool)

(declare-fun e!777500 () Bool)

(assert (=> b!1372311 (= e!777501 e!777500)))

(declare-fun res!915718 () Bool)

(assert (=> b!1372311 (=> res!915718 e!777500)))

(assert (=> b!1372311 (= res!915718 (= (h!33375 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372312 () Bool)

(assert (=> b!1372312 (= e!777500 (contains!9708 (t!46871 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147737 res!915719) b!1372311))

(assert (= (and b!1372311 (not res!915718)) b!1372312))

(declare-fun m!1255817 () Bool)

(assert (=> d!147737 m!1255817))

(declare-fun m!1255819 () Bool)

(assert (=> d!147737 m!1255819))

(declare-fun m!1255821 () Bool)

(assert (=> b!1372312 m!1255821))

(assert (=> b!1372228 d!147737))

(declare-fun d!147747 () Bool)

(declare-fun lt!602789 () Bool)

(assert (=> d!147747 (= lt!602789 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!752 acc!866)))))

(declare-fun e!777503 () Bool)

(assert (=> d!147747 (= lt!602789 e!777503)))

(declare-fun res!915721 () Bool)

(assert (=> d!147747 (=> (not res!915721) (not e!777503))))

(assert (=> d!147747 (= res!915721 (is-Cons!32166 acc!866))))

(assert (=> d!147747 (= (contains!9708 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602789)))

(declare-fun b!1372313 () Bool)

(declare-fun e!777502 () Bool)

(assert (=> b!1372313 (= e!777503 e!777502)))

(declare-fun res!915720 () Bool)

(assert (=> b!1372313 (=> res!915720 e!777502)))

(assert (=> b!1372313 (= res!915720 (= (h!33375 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372314 () Bool)

(assert (=> b!1372314 (= e!777502 (contains!9708 (t!46871 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147747 res!915721) b!1372313))

(assert (= (and b!1372313 (not res!915720)) b!1372314))

(assert (=> d!147747 m!1255817))

(declare-fun m!1255823 () Bool)

(assert (=> d!147747 m!1255823))

(declare-fun m!1255825 () Bool)

(assert (=> b!1372314 m!1255825))

(assert (=> b!1372226 d!147747))

(declare-fun d!147749 () Bool)

(assert (=> d!147749 (= (array_inv!33867 a!3861) (bvsge (size!45473 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!116250 d!147749))

(declare-fun d!147753 () Bool)

(assert (=> d!147753 (= (validKeyInArray!0 (select (arr!44922 a!3861) from!3239)) (and (not (= (select (arr!44922 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44922 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1372232 d!147753))

(declare-fun d!147757 () Bool)

(declare-fun lt!602791 () Bool)

(assert (=> d!147757 (= lt!602791 (member (select (arr!44922 a!3861) from!3239) (content!752 acc!866)))))

(declare-fun e!777517 () Bool)

(assert (=> d!147757 (= lt!602791 e!777517)))

(declare-fun res!915733 () Bool)

(assert (=> d!147757 (=> (not res!915733) (not e!777517))))

(assert (=> d!147757 (= res!915733 (is-Cons!32166 acc!866))))

(assert (=> d!147757 (= (contains!9708 acc!866 (select (arr!44922 a!3861) from!3239)) lt!602791)))

(declare-fun b!1372329 () Bool)

(declare-fun e!777516 () Bool)

(assert (=> b!1372329 (= e!777517 e!777516)))

(declare-fun res!915732 () Bool)

(assert (=> b!1372329 (=> res!915732 e!777516)))

(assert (=> b!1372329 (= res!915732 (= (h!33375 acc!866) (select (arr!44922 a!3861) from!3239)))))

(declare-fun b!1372330 () Bool)

(assert (=> b!1372330 (= e!777516 (contains!9708 (t!46871 acc!866) (select (arr!44922 a!3861) from!3239)))))

(assert (= (and d!147757 res!915733) b!1372329))

(assert (= (and b!1372329 (not res!915732)) b!1372330))

(assert (=> d!147757 m!1255817))

(assert (=> d!147757 m!1255739))

(declare-fun m!1255835 () Bool)

(assert (=> d!147757 m!1255835))

(assert (=> b!1372330 m!1255739))

(declare-fun m!1255837 () Bool)

(assert (=> b!1372330 m!1255837))

(assert (=> b!1372227 d!147757))

(declare-fun b!1372331 () Bool)

(declare-fun e!777520 () Bool)

(declare-fun e!777521 () Bool)

(assert (=> b!1372331 (= e!777520 e!777521)))

(declare-fun res!915735 () Bool)

(assert (=> b!1372331 (=> (not res!915735) (not e!777521))))

(declare-fun e!777518 () Bool)

(assert (=> b!1372331 (= res!915735 (not e!777518))))

(declare-fun res!915734 () Bool)

(assert (=> b!1372331 (=> (not res!915734) (not e!777518))))

(assert (=> b!1372331 (= res!915734 (validKeyInArray!0 (select (arr!44922 a!3861) from!3239)))))

(declare-fun b!1372332 () Bool)

(assert (=> b!1372332 (= e!777518 (contains!9708 acc!866 (select (arr!44922 a!3861) from!3239)))))

(declare-fun b!1372333 () Bool)

(declare-fun e!777519 () Bool)

(assert (=> b!1372333 (= e!777521 e!777519)))

(declare-fun c!127741 () Bool)

(assert (=> b!1372333 (= c!127741 (validKeyInArray!0 (select (arr!44922 a!3861) from!3239)))))

(declare-fun d!147761 () Bool)

(declare-fun res!915736 () Bool)

(assert (=> d!147761 (=> res!915736 e!777520)))

(assert (=> d!147761 (= res!915736 (bvsge from!3239 (size!45473 a!3861)))))

(assert (=> d!147761 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!777520)))

(declare-fun b!1372334 () Bool)

(declare-fun call!65590 () Bool)

(assert (=> b!1372334 (= e!777519 call!65590)))

(declare-fun b!1372335 () Bool)

(assert (=> b!1372335 (= e!777519 call!65590)))

(declare-fun bm!65587 () Bool)

(assert (=> bm!65587 (= call!65590 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127741 (Cons!32166 (select (arr!44922 a!3861) from!3239) acc!866) acc!866)))))

(assert (= (and d!147761 (not res!915736)) b!1372331))

(assert (= (and b!1372331 res!915734) b!1372332))

(assert (= (and b!1372331 res!915735) b!1372333))

(assert (= (and b!1372333 c!127741) b!1372334))

(assert (= (and b!1372333 (not c!127741)) b!1372335))

(assert (= (or b!1372334 b!1372335) bm!65587))

(assert (=> b!1372331 m!1255739))

(assert (=> b!1372331 m!1255739))

(assert (=> b!1372331 m!1255741))

(assert (=> b!1372332 m!1255739))

(assert (=> b!1372332 m!1255739))

(assert (=> b!1372332 m!1255763))

(assert (=> b!1372333 m!1255739))

(assert (=> b!1372333 m!1255739))

(assert (=> b!1372333 m!1255741))

(assert (=> bm!65587 m!1255739))

(declare-fun m!1255839 () Bool)

(assert (=> bm!65587 m!1255839))

(assert (=> b!1372230 d!147761))

(declare-fun d!147763 () Bool)

(assert (=> d!147763 (noDuplicate!2587 newAcc!98)))

(declare-fun lt!602794 () Unit!45279)

(declare-fun choose!2028 (List!32170 List!32170) Unit!45279)

(assert (=> d!147763 (= lt!602794 (choose!2028 newAcc!98 acc!866))))

(declare-fun e!777536 () Bool)

(assert (=> d!147763 e!777536))

(declare-fun res!915748 () Bool)

(assert (=> d!147763 (=> (not res!915748) (not e!777536))))

(assert (=> d!147763 (= res!915748 (subseq!1099 newAcc!98 acc!866))))

(assert (=> d!147763 (= (noDuplicateSubseq!286 newAcc!98 acc!866) lt!602794)))

(declare-fun b!1372353 () Bool)

(assert (=> b!1372353 (= e!777536 (noDuplicate!2587 acc!866))))

(assert (= (and d!147763 res!915748) b!1372353))

(declare-fun m!1255843 () Bool)

(assert (=> d!147763 m!1255843))

(declare-fun m!1255845 () Bool)

(assert (=> d!147763 m!1255845))

(assert (=> d!147763 m!1255759))

(assert (=> b!1372353 m!1255753))

(assert (=> b!1372230 d!147763))

(declare-fun d!147767 () Bool)

(declare-fun res!915762 () Bool)

(declare-fun e!777552 () Bool)

(assert (=> d!147767 (=> res!915762 e!777552)))

(assert (=> d!147767 (= res!915762 (is-Nil!32167 acc!866))))

(assert (=> d!147767 (= (noDuplicate!2587 acc!866) e!777552)))

(declare-fun b!1372371 () Bool)

(declare-fun e!777553 () Bool)

(assert (=> b!1372371 (= e!777552 e!777553)))

(declare-fun res!915763 () Bool)

(assert (=> b!1372371 (=> (not res!915763) (not e!777553))))

(assert (=> b!1372371 (= res!915763 (not (contains!9708 (t!46871 acc!866) (h!33375 acc!866))))))

(declare-fun b!1372372 () Bool)

(assert (=> b!1372372 (= e!777553 (noDuplicate!2587 (t!46871 acc!866)))))

(assert (= (and d!147767 (not res!915762)) b!1372371))

(assert (= (and b!1372371 res!915763) b!1372372))

(declare-fun m!1255855 () Bool)

(assert (=> b!1372371 m!1255855))

(declare-fun m!1255859 () Bool)

(assert (=> b!1372372 m!1255859))

(assert (=> b!1372225 d!147767))

(declare-fun d!147773 () Bool)

(declare-fun lt!602799 () Bool)

(assert (=> d!147773 (= lt!602799 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!752 newAcc!98)))))

(declare-fun e!777557 () Bool)

