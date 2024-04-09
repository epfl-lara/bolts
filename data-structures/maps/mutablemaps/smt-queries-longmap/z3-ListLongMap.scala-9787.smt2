; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116176 () Bool)

(assert start!116176)

(declare-fun b!1371733 () Bool)

(declare-fun res!915222 () Bool)

(declare-fun e!777067 () Bool)

(assert (=> b!1371733 (=> (not res!915222) (not e!777067))))

(declare-datatypes ((array!93018 0))(
  ( (array!93019 (arr!44918 (Array (_ BitVec 32) (_ BitVec 64))) (size!45469 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93018)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1371733 (= res!915222 (validKeyInArray!0 (select (arr!44918 a!3861) from!3239)))))

(declare-datatypes ((List!32166 0))(
  ( (Nil!32163) (Cons!32162 (h!33371 (_ BitVec 64)) (t!46867 List!32166)) )
))
(declare-fun newAcc!98 () List!32166)

(declare-fun b!1371734 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93018 (_ BitVec 32) List!32166) Bool)

(assert (=> b!1371734 (= e!777067 (not (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98)))))

(declare-datatypes ((Unit!45271 0))(
  ( (Unit!45272) )
))
(declare-fun lt!602683 () Unit!45271)

(declare-fun lt!602680 () List!32166)

(declare-fun lt!602682 () List!32166)

(declare-fun noDuplicateSubseq!282 (List!32166 List!32166) Unit!45271)

(assert (=> b!1371734 (= lt!602683 (noDuplicateSubseq!282 lt!602680 lt!602682))))

(assert (=> b!1371734 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!602680)))

(declare-fun lt!602681 () Unit!45271)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!93018 List!32166 List!32166 (_ BitVec 32)) Unit!45271)

(assert (=> b!1371734 (= lt!602681 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!602682 lt!602680 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1371734 (= lt!602680 (Cons!32162 (select (arr!44918 a!3861) from!3239) newAcc!98))))

(declare-fun acc!866 () List!32166)

(assert (=> b!1371734 (= lt!602682 (Cons!32162 (select (arr!44918 a!3861) from!3239) acc!866))))

(declare-fun b!1371735 () Bool)

(declare-fun e!777066 () Bool)

(assert (=> b!1371735 (= e!777066 e!777067)))

(declare-fun res!915220 () Bool)

(assert (=> b!1371735 (=> (not res!915220) (not e!777067))))

(assert (=> b!1371735 (= res!915220 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!602684 () Unit!45271)

(assert (=> b!1371735 (= lt!602684 (noDuplicateSubseq!282 newAcc!98 acc!866))))

(declare-fun b!1371737 () Bool)

(declare-fun res!915221 () Bool)

(assert (=> b!1371737 (=> (not res!915221) (not e!777066))))

(declare-fun contains!9704 (List!32166 (_ BitVec 64)) Bool)

(assert (=> b!1371737 (= res!915221 (not (contains!9704 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371738 () Bool)

(declare-fun res!915219 () Bool)

(assert (=> b!1371738 (=> (not res!915219) (not e!777066))))

(declare-fun noDuplicate!2583 (List!32166) Bool)

(assert (=> b!1371738 (= res!915219 (noDuplicate!2583 acc!866))))

(declare-fun b!1371739 () Bool)

(declare-fun res!915218 () Bool)

(assert (=> b!1371739 (=> (not res!915218) (not e!777066))))

(declare-fun subseq!1095 (List!32166 List!32166) Bool)

(assert (=> b!1371739 (= res!915218 (subseq!1095 newAcc!98 acc!866))))

(declare-fun b!1371740 () Bool)

(declare-fun res!915228 () Bool)

(assert (=> b!1371740 (=> (not res!915228) (not e!777066))))

(assert (=> b!1371740 (= res!915228 (not (contains!9704 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371741 () Bool)

(declare-fun res!915227 () Bool)

(assert (=> b!1371741 (=> (not res!915227) (not e!777067))))

(assert (=> b!1371741 (= res!915227 (bvslt from!3239 (size!45469 a!3861)))))

(declare-fun res!915224 () Bool)

(assert (=> start!116176 (=> (not res!915224) (not e!777066))))

(assert (=> start!116176 (= res!915224 (and (bvslt (size!45469 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45469 a!3861))))))

(assert (=> start!116176 e!777066))

(declare-fun array_inv!33863 (array!93018) Bool)

(assert (=> start!116176 (array_inv!33863 a!3861)))

(assert (=> start!116176 true))

(declare-fun b!1371736 () Bool)

(declare-fun res!915226 () Bool)

(assert (=> b!1371736 (=> (not res!915226) (not e!777066))))

(assert (=> b!1371736 (= res!915226 (not (contains!9704 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371742 () Bool)

(declare-fun res!915223 () Bool)

(assert (=> b!1371742 (=> (not res!915223) (not e!777067))))

(assert (=> b!1371742 (= res!915223 (not (contains!9704 acc!866 (select (arr!44918 a!3861) from!3239))))))

(declare-fun b!1371743 () Bool)

(declare-fun res!915225 () Bool)

(assert (=> b!1371743 (=> (not res!915225) (not e!777066))))

(assert (=> b!1371743 (= res!915225 (not (contains!9704 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!116176 res!915224) b!1371738))

(assert (= (and b!1371738 res!915219) b!1371737))

(assert (= (and b!1371737 res!915221) b!1371736))

(assert (= (and b!1371736 res!915226) b!1371740))

(assert (= (and b!1371740 res!915228) b!1371743))

(assert (= (and b!1371743 res!915225) b!1371739))

(assert (= (and b!1371739 res!915218) b!1371735))

(assert (= (and b!1371735 res!915220) b!1371741))

(assert (= (and b!1371741 res!915227) b!1371733))

(assert (= (and b!1371733 res!915222) b!1371742))

(assert (= (and b!1371742 res!915223) b!1371734))

(declare-fun m!1255179 () Bool)

(assert (=> b!1371737 m!1255179))

(declare-fun m!1255181 () Bool)

(assert (=> b!1371743 m!1255181))

(declare-fun m!1255183 () Bool)

(assert (=> b!1371739 m!1255183))

(declare-fun m!1255185 () Bool)

(assert (=> b!1371738 m!1255185))

(declare-fun m!1255187 () Bool)

(assert (=> start!116176 m!1255187))

(declare-fun m!1255189 () Bool)

(assert (=> b!1371733 m!1255189))

(assert (=> b!1371733 m!1255189))

(declare-fun m!1255191 () Bool)

(assert (=> b!1371733 m!1255191))

(declare-fun m!1255193 () Bool)

(assert (=> b!1371734 m!1255193))

(assert (=> b!1371734 m!1255189))

(declare-fun m!1255195 () Bool)

(assert (=> b!1371734 m!1255195))

(declare-fun m!1255197 () Bool)

(assert (=> b!1371734 m!1255197))

(declare-fun m!1255199 () Bool)

(assert (=> b!1371734 m!1255199))

(assert (=> b!1371742 m!1255189))

(assert (=> b!1371742 m!1255189))

(declare-fun m!1255201 () Bool)

(assert (=> b!1371742 m!1255201))

(declare-fun m!1255203 () Bool)

(assert (=> b!1371735 m!1255203))

(declare-fun m!1255205 () Bool)

(assert (=> b!1371735 m!1255205))

(declare-fun m!1255207 () Bool)

(assert (=> b!1371736 m!1255207))

(declare-fun m!1255209 () Bool)

(assert (=> b!1371740 m!1255209))

(check-sat (not b!1371742) (not b!1371734) (not b!1371740) (not b!1371733) (not b!1371739) (not b!1371738) (not b!1371735) (not start!116176) (not b!1371743) (not b!1371736) (not b!1371737))
(check-sat)
(get-model)

(declare-fun d!147477 () Bool)

(declare-fun lt!602702 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!747 (List!32166) (InoxSet (_ BitVec 64)))

(assert (=> d!147477 (= lt!602702 (select (content!747 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777081 () Bool)

(assert (=> d!147477 (= lt!602702 e!777081)))

(declare-fun res!915266 () Bool)

(assert (=> d!147477 (=> (not res!915266) (not e!777081))))

(get-info :version)

(assert (=> d!147477 (= res!915266 ((_ is Cons!32162) acc!866))))

(assert (=> d!147477 (= (contains!9704 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602702)))

(declare-fun b!1371781 () Bool)

(declare-fun e!777082 () Bool)

(assert (=> b!1371781 (= e!777081 e!777082)))

(declare-fun res!915267 () Bool)

(assert (=> b!1371781 (=> res!915267 e!777082)))

(assert (=> b!1371781 (= res!915267 (= (h!33371 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1371782 () Bool)

(assert (=> b!1371782 (= e!777082 (contains!9704 (t!46867 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147477 res!915266) b!1371781))

(assert (= (and b!1371781 (not res!915267)) b!1371782))

(declare-fun m!1255243 () Bool)

(assert (=> d!147477 m!1255243))

(declare-fun m!1255245 () Bool)

(assert (=> d!147477 m!1255245))

(declare-fun m!1255247 () Bool)

(assert (=> b!1371782 m!1255247))

(assert (=> b!1371737 d!147477))

(declare-fun lt!602703 () Bool)

(declare-fun d!147485 () Bool)

(assert (=> d!147485 (= lt!602703 (select (content!747 acc!866) (select (arr!44918 a!3861) from!3239)))))

(declare-fun e!777083 () Bool)

(assert (=> d!147485 (= lt!602703 e!777083)))

(declare-fun res!915268 () Bool)

(assert (=> d!147485 (=> (not res!915268) (not e!777083))))

(assert (=> d!147485 (= res!915268 ((_ is Cons!32162) acc!866))))

(assert (=> d!147485 (= (contains!9704 acc!866 (select (arr!44918 a!3861) from!3239)) lt!602703)))

(declare-fun b!1371783 () Bool)

(declare-fun e!777084 () Bool)

(assert (=> b!1371783 (= e!777083 e!777084)))

(declare-fun res!915269 () Bool)

(assert (=> b!1371783 (=> res!915269 e!777084)))

(assert (=> b!1371783 (= res!915269 (= (h!33371 acc!866) (select (arr!44918 a!3861) from!3239)))))

(declare-fun b!1371784 () Bool)

(assert (=> b!1371784 (= e!777084 (contains!9704 (t!46867 acc!866) (select (arr!44918 a!3861) from!3239)))))

(assert (= (and d!147485 res!915268) b!1371783))

(assert (= (and b!1371783 (not res!915269)) b!1371784))

(assert (=> d!147485 m!1255243))

(assert (=> d!147485 m!1255189))

(declare-fun m!1255249 () Bool)

(assert (=> d!147485 m!1255249))

(assert (=> b!1371784 m!1255189))

(declare-fun m!1255251 () Bool)

(assert (=> b!1371784 m!1255251))

(assert (=> b!1371742 d!147485))

(declare-fun d!147487 () Bool)

(declare-fun lt!602706 () Bool)

(assert (=> d!147487 (= lt!602706 (select (content!747 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777089 () Bool)

(assert (=> d!147487 (= lt!602706 e!777089)))

(declare-fun res!915274 () Bool)

(assert (=> d!147487 (=> (not res!915274) (not e!777089))))

(assert (=> d!147487 (= res!915274 ((_ is Cons!32162) acc!866))))

(assert (=> d!147487 (= (contains!9704 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602706)))

(declare-fun b!1371789 () Bool)

(declare-fun e!777090 () Bool)

(assert (=> b!1371789 (= e!777089 e!777090)))

(declare-fun res!915275 () Bool)

(assert (=> b!1371789 (=> res!915275 e!777090)))

(assert (=> b!1371789 (= res!915275 (= (h!33371 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1371790 () Bool)

(assert (=> b!1371790 (= e!777090 (contains!9704 (t!46867 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147487 res!915274) b!1371789))

(assert (= (and b!1371789 (not res!915275)) b!1371790))

(assert (=> d!147487 m!1255243))

(declare-fun m!1255253 () Bool)

(assert (=> d!147487 m!1255253))

(declare-fun m!1255255 () Bool)

(assert (=> b!1371790 m!1255255))

(assert (=> b!1371736 d!147487))

(declare-fun d!147489 () Bool)

(declare-fun res!915309 () Bool)

(declare-fun e!777130 () Bool)

(assert (=> d!147489 (=> res!915309 e!777130)))

(assert (=> d!147489 (= res!915309 (bvsge from!3239 (size!45469 a!3861)))))

(assert (=> d!147489 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!777130)))

(declare-fun b!1371831 () Bool)

(declare-fun e!777128 () Bool)

(declare-fun call!65565 () Bool)

(assert (=> b!1371831 (= e!777128 call!65565)))

(declare-fun b!1371832 () Bool)

(assert (=> b!1371832 (= e!777128 call!65565)))

(declare-fun b!1371833 () Bool)

(declare-fun e!777127 () Bool)

(assert (=> b!1371833 (= e!777127 (contains!9704 acc!866 (select (arr!44918 a!3861) from!3239)))))

(declare-fun b!1371834 () Bool)

(declare-fun e!777129 () Bool)

(assert (=> b!1371834 (= e!777129 e!777128)))

(declare-fun c!127704 () Bool)

(assert (=> b!1371834 (= c!127704 (validKeyInArray!0 (select (arr!44918 a!3861) from!3239)))))

(declare-fun b!1371835 () Bool)

(assert (=> b!1371835 (= e!777130 e!777129)))

(declare-fun res!915310 () Bool)

(assert (=> b!1371835 (=> (not res!915310) (not e!777129))))

(assert (=> b!1371835 (= res!915310 (not e!777127))))

(declare-fun res!915308 () Bool)

(assert (=> b!1371835 (=> (not res!915308) (not e!777127))))

(assert (=> b!1371835 (= res!915308 (validKeyInArray!0 (select (arr!44918 a!3861) from!3239)))))

(declare-fun bm!65562 () Bool)

(assert (=> bm!65562 (= call!65565 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127704 (Cons!32162 (select (arr!44918 a!3861) from!3239) acc!866) acc!866)))))

(assert (= (and d!147489 (not res!915309)) b!1371835))

(assert (= (and b!1371835 res!915308) b!1371833))

(assert (= (and b!1371835 res!915310) b!1371834))

(assert (= (and b!1371834 c!127704) b!1371832))

(assert (= (and b!1371834 (not c!127704)) b!1371831))

(assert (= (or b!1371832 b!1371831) bm!65562))

(assert (=> b!1371833 m!1255189))

(assert (=> b!1371833 m!1255189))

(assert (=> b!1371833 m!1255201))

(assert (=> b!1371834 m!1255189))

(assert (=> b!1371834 m!1255189))

(assert (=> b!1371834 m!1255191))

(assert (=> b!1371835 m!1255189))

(assert (=> b!1371835 m!1255189))

(assert (=> b!1371835 m!1255191))

(assert (=> bm!65562 m!1255189))

(declare-fun m!1255273 () Bool)

(assert (=> bm!65562 m!1255273))

(assert (=> b!1371735 d!147489))

(declare-fun d!147499 () Bool)

(assert (=> d!147499 (noDuplicate!2583 newAcc!98)))

(declare-fun lt!602714 () Unit!45271)

(declare-fun choose!2025 (List!32166 List!32166) Unit!45271)

(assert (=> d!147499 (= lt!602714 (choose!2025 newAcc!98 acc!866))))

(declare-fun e!777139 () Bool)

(assert (=> d!147499 e!777139))

(declare-fun res!915318 () Bool)

(assert (=> d!147499 (=> (not res!915318) (not e!777139))))

(assert (=> d!147499 (= res!915318 (subseq!1095 newAcc!98 acc!866))))

(assert (=> d!147499 (= (noDuplicateSubseq!282 newAcc!98 acc!866) lt!602714)))

(declare-fun b!1371845 () Bool)

(assert (=> b!1371845 (= e!777139 (noDuplicate!2583 acc!866))))

(assert (= (and d!147499 res!915318) b!1371845))

(declare-fun m!1255285 () Bool)

(assert (=> d!147499 m!1255285))

(declare-fun m!1255287 () Bool)

(assert (=> d!147499 m!1255287))

(assert (=> d!147499 m!1255183))

(assert (=> b!1371845 m!1255185))

(assert (=> b!1371735 d!147499))

(declare-fun d!147507 () Bool)

(declare-fun lt!602715 () Bool)

(assert (=> d!147507 (= lt!602715 (select (content!747 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777140 () Bool)

(assert (=> d!147507 (= lt!602715 e!777140)))

(declare-fun res!915319 () Bool)

(assert (=> d!147507 (=> (not res!915319) (not e!777140))))

(assert (=> d!147507 (= res!915319 ((_ is Cons!32162) newAcc!98))))

(assert (=> d!147507 (= (contains!9704 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602715)))

(declare-fun b!1371846 () Bool)

(declare-fun e!777141 () Bool)

(assert (=> b!1371846 (= e!777140 e!777141)))

(declare-fun res!915320 () Bool)

(assert (=> b!1371846 (=> res!915320 e!777141)))

(assert (=> b!1371846 (= res!915320 (= (h!33371 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1371847 () Bool)

(assert (=> b!1371847 (= e!777141 (contains!9704 (t!46867 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147507 res!915319) b!1371846))

(assert (= (and b!1371846 (not res!915320)) b!1371847))

(declare-fun m!1255289 () Bool)

(assert (=> d!147507 m!1255289))

(declare-fun m!1255291 () Bool)

(assert (=> d!147507 m!1255291))

(declare-fun m!1255293 () Bool)

(assert (=> b!1371847 m!1255293))

(assert (=> b!1371740 d!147507))

(declare-fun b!1371879 () Bool)

(declare-fun e!777170 () Bool)

(declare-fun e!777169 () Bool)

(assert (=> b!1371879 (= e!777170 e!777169)))

(declare-fun res!915345 () Bool)

(assert (=> b!1371879 (=> (not res!915345) (not e!777169))))

(assert (=> b!1371879 (= res!915345 ((_ is Cons!32162) acc!866))))

(declare-fun b!1371881 () Bool)

(declare-fun e!777171 () Bool)

(assert (=> b!1371881 (= e!777171 (subseq!1095 (t!46867 newAcc!98) (t!46867 acc!866)))))

(declare-fun b!1371880 () Bool)

(declare-fun e!777172 () Bool)

(assert (=> b!1371880 (= e!777169 e!777172)))

(declare-fun res!915344 () Bool)

(assert (=> b!1371880 (=> res!915344 e!777172)))

(assert (=> b!1371880 (= res!915344 e!777171)))

(declare-fun res!915346 () Bool)

(assert (=> b!1371880 (=> (not res!915346) (not e!777171))))

(assert (=> b!1371880 (= res!915346 (= (h!33371 newAcc!98) (h!33371 acc!866)))))

(declare-fun b!1371882 () Bool)

(assert (=> b!1371882 (= e!777172 (subseq!1095 newAcc!98 (t!46867 acc!866)))))

(declare-fun d!147509 () Bool)

(declare-fun res!915347 () Bool)

(assert (=> d!147509 (=> res!915347 e!777170)))

(assert (=> d!147509 (= res!915347 ((_ is Nil!32163) newAcc!98))))

(assert (=> d!147509 (= (subseq!1095 newAcc!98 acc!866) e!777170)))

(assert (= (and d!147509 (not res!915347)) b!1371879))

(assert (= (and b!1371879 res!915345) b!1371880))

(assert (= (and b!1371880 res!915346) b!1371881))

(assert (= (and b!1371880 (not res!915344)) b!1371882))

(declare-fun m!1255313 () Bool)

(assert (=> b!1371881 m!1255313))

(declare-fun m!1255315 () Bool)

(assert (=> b!1371882 m!1255315))

(assert (=> b!1371739 d!147509))

(declare-fun d!147517 () Bool)

(declare-fun res!915349 () Bool)

(declare-fun e!777176 () Bool)

(assert (=> d!147517 (=> res!915349 e!777176)))

(assert (=> d!147517 (= res!915349 (bvsge from!3239 (size!45469 a!3861)))))

(assert (=> d!147517 (= (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98) e!777176)))

(declare-fun b!1371883 () Bool)

(declare-fun e!777174 () Bool)

(declare-fun call!65571 () Bool)

(assert (=> b!1371883 (= e!777174 call!65571)))

(declare-fun b!1371884 () Bool)

(assert (=> b!1371884 (= e!777174 call!65571)))

(declare-fun b!1371885 () Bool)

(declare-fun e!777173 () Bool)

(assert (=> b!1371885 (= e!777173 (contains!9704 newAcc!98 (select (arr!44918 a!3861) from!3239)))))

(declare-fun b!1371886 () Bool)

(declare-fun e!777175 () Bool)

(assert (=> b!1371886 (= e!777175 e!777174)))

(declare-fun c!127710 () Bool)

(assert (=> b!1371886 (= c!127710 (validKeyInArray!0 (select (arr!44918 a!3861) from!3239)))))

(declare-fun b!1371887 () Bool)

(assert (=> b!1371887 (= e!777176 e!777175)))

(declare-fun res!915350 () Bool)

(assert (=> b!1371887 (=> (not res!915350) (not e!777175))))

(assert (=> b!1371887 (= res!915350 (not e!777173))))

(declare-fun res!915348 () Bool)

(assert (=> b!1371887 (=> (not res!915348) (not e!777173))))

(assert (=> b!1371887 (= res!915348 (validKeyInArray!0 (select (arr!44918 a!3861) from!3239)))))

(declare-fun bm!65568 () Bool)

(assert (=> bm!65568 (= call!65571 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127710 (Cons!32162 (select (arr!44918 a!3861) from!3239) newAcc!98) newAcc!98)))))

(assert (= (and d!147517 (not res!915349)) b!1371887))

(assert (= (and b!1371887 res!915348) b!1371885))

(assert (= (and b!1371887 res!915350) b!1371886))

(assert (= (and b!1371886 c!127710) b!1371884))

(assert (= (and b!1371886 (not c!127710)) b!1371883))

(assert (= (or b!1371884 b!1371883) bm!65568))

(assert (=> b!1371885 m!1255189))

(assert (=> b!1371885 m!1255189))

(declare-fun m!1255317 () Bool)

(assert (=> b!1371885 m!1255317))

(assert (=> b!1371886 m!1255189))

(assert (=> b!1371886 m!1255189))

(assert (=> b!1371886 m!1255191))

(assert (=> b!1371887 m!1255189))

(assert (=> b!1371887 m!1255189))

(assert (=> b!1371887 m!1255191))

(assert (=> bm!65568 m!1255189))

(declare-fun m!1255321 () Bool)

(assert (=> bm!65568 m!1255321))

(assert (=> b!1371734 d!147517))

(declare-fun d!147521 () Bool)

(assert (=> d!147521 (noDuplicate!2583 lt!602680)))

(declare-fun lt!602723 () Unit!45271)

(assert (=> d!147521 (= lt!602723 (choose!2025 lt!602680 lt!602682))))

(declare-fun e!777179 () Bool)

(assert (=> d!147521 e!777179))

(declare-fun res!915353 () Bool)

(assert (=> d!147521 (=> (not res!915353) (not e!777179))))

(assert (=> d!147521 (= res!915353 (subseq!1095 lt!602680 lt!602682))))

(assert (=> d!147521 (= (noDuplicateSubseq!282 lt!602680 lt!602682) lt!602723)))

(declare-fun b!1371890 () Bool)

(assert (=> b!1371890 (= e!777179 (noDuplicate!2583 lt!602682))))

(assert (= (and d!147521 res!915353) b!1371890))

(declare-fun m!1255325 () Bool)

(assert (=> d!147521 m!1255325))

(declare-fun m!1255329 () Bool)

(assert (=> d!147521 m!1255329))

(declare-fun m!1255331 () Bool)

(assert (=> d!147521 m!1255331))

(declare-fun m!1255333 () Bool)

(assert (=> b!1371890 m!1255333))

(assert (=> b!1371734 d!147521))

(declare-fun d!147525 () Bool)

(declare-fun res!915355 () Bool)

(declare-fun e!777183 () Bool)

(assert (=> d!147525 (=> res!915355 e!777183)))

(assert (=> d!147525 (= res!915355 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45469 a!3861)))))

(assert (=> d!147525 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!602680) e!777183)))

(declare-fun b!1371891 () Bool)

(declare-fun e!777181 () Bool)

(declare-fun call!65572 () Bool)

(assert (=> b!1371891 (= e!777181 call!65572)))

(declare-fun b!1371892 () Bool)

(assert (=> b!1371892 (= e!777181 call!65572)))

(declare-fun b!1371893 () Bool)

(declare-fun e!777180 () Bool)

(assert (=> b!1371893 (= e!777180 (contains!9704 lt!602680 (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1371894 () Bool)

(declare-fun e!777182 () Bool)

(assert (=> b!1371894 (= e!777182 e!777181)))

(declare-fun c!127711 () Bool)

(assert (=> b!1371894 (= c!127711 (validKeyInArray!0 (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1371895 () Bool)

(assert (=> b!1371895 (= e!777183 e!777182)))

(declare-fun res!915356 () Bool)

(assert (=> b!1371895 (=> (not res!915356) (not e!777182))))

(assert (=> b!1371895 (= res!915356 (not e!777180))))

(declare-fun res!915354 () Bool)

(assert (=> b!1371895 (=> (not res!915354) (not e!777180))))

(assert (=> b!1371895 (= res!915354 (validKeyInArray!0 (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun bm!65569 () Bool)

(assert (=> bm!65569 (= call!65572 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127711 (Cons!32162 (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) lt!602680) lt!602680)))))

(assert (= (and d!147525 (not res!915355)) b!1371895))

(assert (= (and b!1371895 res!915354) b!1371893))

(assert (= (and b!1371895 res!915356) b!1371894))

(assert (= (and b!1371894 c!127711) b!1371892))

(assert (= (and b!1371894 (not c!127711)) b!1371891))

(assert (= (or b!1371892 b!1371891) bm!65569))

(declare-fun m!1255335 () Bool)

(assert (=> b!1371893 m!1255335))

(assert (=> b!1371893 m!1255335))

(declare-fun m!1255337 () Bool)

(assert (=> b!1371893 m!1255337))

(assert (=> b!1371894 m!1255335))

(assert (=> b!1371894 m!1255335))

(declare-fun m!1255339 () Bool)

(assert (=> b!1371894 m!1255339))

(assert (=> b!1371895 m!1255335))

(assert (=> b!1371895 m!1255335))

(assert (=> b!1371895 m!1255339))

(assert (=> bm!65569 m!1255335))

(declare-fun m!1255341 () Bool)

(assert (=> bm!65569 m!1255341))

(assert (=> b!1371734 d!147525))

(declare-fun d!147527 () Bool)

(assert (=> d!147527 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!602680)))

(declare-fun lt!602729 () Unit!45271)

(declare-fun choose!80 (array!93018 List!32166 List!32166 (_ BitVec 32)) Unit!45271)

(assert (=> d!147527 (= lt!602729 (choose!80 a!3861 lt!602682 lt!602680 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> d!147527 (bvslt (size!45469 a!3861) #b01111111111111111111111111111111)))

(assert (=> d!147527 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!602682 lt!602680 (bvadd #b00000000000000000000000000000001 from!3239)) lt!602729)))

(declare-fun bs!39315 () Bool)

(assert (= bs!39315 d!147527))

(assert (=> bs!39315 m!1255195))

(declare-fun m!1255347 () Bool)

(assert (=> bs!39315 m!1255347))

(assert (=> b!1371734 d!147527))

(declare-fun d!147533 () Bool)

(assert (=> d!147533 (= (array_inv!33863 a!3861) (bvsge (size!45469 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!116176 d!147533))

(declare-fun d!147535 () Bool)

(assert (=> d!147535 (= (validKeyInArray!0 (select (arr!44918 a!3861) from!3239)) (and (not (= (select (arr!44918 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44918 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1371733 d!147535))

(declare-fun d!147545 () Bool)

(declare-fun lt!602733 () Bool)

(assert (=> d!147545 (= lt!602733 (select (content!747 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777215 () Bool)

(assert (=> d!147545 (= lt!602733 e!777215)))

(declare-fun res!915387 () Bool)

(assert (=> d!147545 (=> (not res!915387) (not e!777215))))

(assert (=> d!147545 (= res!915387 ((_ is Cons!32162) newAcc!98))))

(assert (=> d!147545 (= (contains!9704 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602733)))

(declare-fun b!1371928 () Bool)

(declare-fun e!777216 () Bool)

(assert (=> b!1371928 (= e!777215 e!777216)))

(declare-fun res!915388 () Bool)

(assert (=> b!1371928 (=> res!915388 e!777216)))

(assert (=> b!1371928 (= res!915388 (= (h!33371 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1371929 () Bool)

(assert (=> b!1371929 (= e!777216 (contains!9704 (t!46867 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147545 res!915387) b!1371928))

(assert (= (and b!1371928 (not res!915388)) b!1371929))

(assert (=> d!147545 m!1255289))

(declare-fun m!1255373 () Bool)

(assert (=> d!147545 m!1255373))

(declare-fun m!1255375 () Bool)

(assert (=> b!1371929 m!1255375))

(assert (=> b!1371743 d!147545))

(declare-fun d!147551 () Bool)

(declare-fun res!915407 () Bool)

(declare-fun e!777237 () Bool)

(assert (=> d!147551 (=> res!915407 e!777237)))

(assert (=> d!147551 (= res!915407 ((_ is Nil!32163) acc!866))))

(assert (=> d!147551 (= (noDuplicate!2583 acc!866) e!777237)))

(declare-fun b!1371952 () Bool)

(declare-fun e!777238 () Bool)

(assert (=> b!1371952 (= e!777237 e!777238)))

(declare-fun res!915408 () Bool)

(assert (=> b!1371952 (=> (not res!915408) (not e!777238))))

(assert (=> b!1371952 (= res!915408 (not (contains!9704 (t!46867 acc!866) (h!33371 acc!866))))))

(declare-fun b!1371953 () Bool)

(assert (=> b!1371953 (= e!777238 (noDuplicate!2583 (t!46867 acc!866)))))

(assert (= (and d!147551 (not res!915407)) b!1371952))

(assert (= (and b!1371952 res!915408) b!1371953))

(declare-fun m!1255405 () Bool)

(assert (=> b!1371952 m!1255405))

(declare-fun m!1255407 () Bool)

(assert (=> b!1371953 m!1255407))

(assert (=> b!1371738 d!147551))

(check-sat (not b!1371834) (not b!1371952) (not b!1371790) (not b!1371782) (not b!1371929) (not b!1371881) (not bm!65562) (not b!1371833) (not d!147485) (not d!147477) (not d!147487) (not b!1371887) (not b!1371895) (not b!1371953) (not b!1371894) (not b!1371847) (not b!1371784) (not b!1371835) (not bm!65568) (not d!147499) (not d!147521) (not d!147545) (not b!1371885) (not b!1371893) (not b!1371882) (not bm!65569) (not d!147527) (not d!147507) (not b!1371845) (not b!1371886) (not b!1371890))
(check-sat)
(get-model)

(assert (=> b!1371835 d!147535))

(declare-fun d!147567 () Bool)

(declare-fun res!915415 () Bool)

(declare-fun e!777245 () Bool)

(assert (=> d!147567 (=> res!915415 e!777245)))

(assert (=> d!147567 (= res!915415 ((_ is Nil!32163) (t!46867 acc!866)))))

(assert (=> d!147567 (= (noDuplicate!2583 (t!46867 acc!866)) e!777245)))

(declare-fun b!1371960 () Bool)

(declare-fun e!777246 () Bool)

(assert (=> b!1371960 (= e!777245 e!777246)))

(declare-fun res!915416 () Bool)

(assert (=> b!1371960 (=> (not res!915416) (not e!777246))))

(assert (=> b!1371960 (= res!915416 (not (contains!9704 (t!46867 (t!46867 acc!866)) (h!33371 (t!46867 acc!866)))))))

(declare-fun b!1371961 () Bool)

(assert (=> b!1371961 (= e!777246 (noDuplicate!2583 (t!46867 (t!46867 acc!866))))))

(assert (= (and d!147567 (not res!915415)) b!1371960))

(assert (= (and b!1371960 res!915416) b!1371961))

(declare-fun m!1255423 () Bool)

(assert (=> b!1371960 m!1255423))

(declare-fun m!1255425 () Bool)

(assert (=> b!1371961 m!1255425))

(assert (=> b!1371953 d!147567))

(assert (=> b!1371834 d!147535))

(declare-fun d!147569 () Bool)

(declare-fun lt!602742 () Bool)

(assert (=> d!147569 (= lt!602742 (select (content!747 (t!46867 acc!866)) (select (arr!44918 a!3861) from!3239)))))

(declare-fun e!777247 () Bool)

(assert (=> d!147569 (= lt!602742 e!777247)))

(declare-fun res!915417 () Bool)

(assert (=> d!147569 (=> (not res!915417) (not e!777247))))

(assert (=> d!147569 (= res!915417 ((_ is Cons!32162) (t!46867 acc!866)))))

(assert (=> d!147569 (= (contains!9704 (t!46867 acc!866) (select (arr!44918 a!3861) from!3239)) lt!602742)))

(declare-fun b!1371962 () Bool)

(declare-fun e!777248 () Bool)

(assert (=> b!1371962 (= e!777247 e!777248)))

(declare-fun res!915418 () Bool)

(assert (=> b!1371962 (=> res!915418 e!777248)))

(assert (=> b!1371962 (= res!915418 (= (h!33371 (t!46867 acc!866)) (select (arr!44918 a!3861) from!3239)))))

(declare-fun b!1371963 () Bool)

(assert (=> b!1371963 (= e!777248 (contains!9704 (t!46867 (t!46867 acc!866)) (select (arr!44918 a!3861) from!3239)))))

(assert (= (and d!147569 res!915417) b!1371962))

(assert (= (and b!1371962 (not res!915418)) b!1371963))

(declare-fun m!1255427 () Bool)

(assert (=> d!147569 m!1255427))

(assert (=> d!147569 m!1255189))

(declare-fun m!1255429 () Bool)

(assert (=> d!147569 m!1255429))

(assert (=> b!1371963 m!1255189))

(declare-fun m!1255431 () Bool)

(assert (=> b!1371963 m!1255431))

(assert (=> b!1371784 d!147569))

(declare-fun b!1371964 () Bool)

(declare-fun e!777250 () Bool)

(declare-fun e!777249 () Bool)

(assert (=> b!1371964 (= e!777250 e!777249)))

(declare-fun res!915420 () Bool)

(assert (=> b!1371964 (=> (not res!915420) (not e!777249))))

(assert (=> b!1371964 (= res!915420 ((_ is Cons!32162) (t!46867 acc!866)))))

(declare-fun b!1371966 () Bool)

(declare-fun e!777251 () Bool)

(assert (=> b!1371966 (= e!777251 (subseq!1095 (t!46867 newAcc!98) (t!46867 (t!46867 acc!866))))))

(declare-fun b!1371965 () Bool)

(declare-fun e!777252 () Bool)

(assert (=> b!1371965 (= e!777249 e!777252)))

(declare-fun res!915419 () Bool)

(assert (=> b!1371965 (=> res!915419 e!777252)))

(assert (=> b!1371965 (= res!915419 e!777251)))

(declare-fun res!915421 () Bool)

(assert (=> b!1371965 (=> (not res!915421) (not e!777251))))

(assert (=> b!1371965 (= res!915421 (= (h!33371 newAcc!98) (h!33371 (t!46867 acc!866))))))

(declare-fun b!1371967 () Bool)

(assert (=> b!1371967 (= e!777252 (subseq!1095 newAcc!98 (t!46867 (t!46867 acc!866))))))

(declare-fun d!147571 () Bool)

(declare-fun res!915422 () Bool)

(assert (=> d!147571 (=> res!915422 e!777250)))

(assert (=> d!147571 (= res!915422 ((_ is Nil!32163) newAcc!98))))

(assert (=> d!147571 (= (subseq!1095 newAcc!98 (t!46867 acc!866)) e!777250)))

(assert (= (and d!147571 (not res!915422)) b!1371964))

(assert (= (and b!1371964 res!915420) b!1371965))

(assert (= (and b!1371965 res!915421) b!1371966))

(assert (= (and b!1371965 (not res!915419)) b!1371967))

(declare-fun m!1255433 () Bool)

(assert (=> b!1371966 m!1255433))

(declare-fun m!1255435 () Bool)

(assert (=> b!1371967 m!1255435))

(assert (=> b!1371882 d!147571))

(declare-fun b!1371968 () Bool)

(declare-fun e!777254 () Bool)

(declare-fun e!777253 () Bool)

(assert (=> b!1371968 (= e!777254 e!777253)))

(declare-fun res!915424 () Bool)

(assert (=> b!1371968 (=> (not res!915424) (not e!777253))))

(assert (=> b!1371968 (= res!915424 ((_ is Cons!32162) (t!46867 acc!866)))))

(declare-fun b!1371970 () Bool)

(declare-fun e!777255 () Bool)

(assert (=> b!1371970 (= e!777255 (subseq!1095 (t!46867 (t!46867 newAcc!98)) (t!46867 (t!46867 acc!866))))))

(declare-fun b!1371969 () Bool)

(declare-fun e!777256 () Bool)

(assert (=> b!1371969 (= e!777253 e!777256)))

(declare-fun res!915423 () Bool)

(assert (=> b!1371969 (=> res!915423 e!777256)))

(assert (=> b!1371969 (= res!915423 e!777255)))

(declare-fun res!915425 () Bool)

(assert (=> b!1371969 (=> (not res!915425) (not e!777255))))

(assert (=> b!1371969 (= res!915425 (= (h!33371 (t!46867 newAcc!98)) (h!33371 (t!46867 acc!866))))))

(declare-fun b!1371971 () Bool)

(assert (=> b!1371971 (= e!777256 (subseq!1095 (t!46867 newAcc!98) (t!46867 (t!46867 acc!866))))))

(declare-fun d!147573 () Bool)

(declare-fun res!915426 () Bool)

(assert (=> d!147573 (=> res!915426 e!777254)))

(assert (=> d!147573 (= res!915426 ((_ is Nil!32163) (t!46867 newAcc!98)))))

(assert (=> d!147573 (= (subseq!1095 (t!46867 newAcc!98) (t!46867 acc!866)) e!777254)))

(assert (= (and d!147573 (not res!915426)) b!1371968))

(assert (= (and b!1371968 res!915424) b!1371969))

(assert (= (and b!1371969 res!915425) b!1371970))

(assert (= (and b!1371969 (not res!915423)) b!1371971))

(declare-fun m!1255437 () Bool)

(assert (=> b!1371970 m!1255437))

(assert (=> b!1371971 m!1255433))

(assert (=> b!1371881 d!147573))

(declare-fun d!147575 () Bool)

(declare-fun lt!602743 () Bool)

(assert (=> d!147575 (= lt!602743 (select (content!747 (t!46867 acc!866)) (h!33371 acc!866)))))

(declare-fun e!777257 () Bool)

(assert (=> d!147575 (= lt!602743 e!777257)))

(declare-fun res!915427 () Bool)

(assert (=> d!147575 (=> (not res!915427) (not e!777257))))

(assert (=> d!147575 (= res!915427 ((_ is Cons!32162) (t!46867 acc!866)))))

(assert (=> d!147575 (= (contains!9704 (t!46867 acc!866) (h!33371 acc!866)) lt!602743)))

(declare-fun b!1371972 () Bool)

(declare-fun e!777258 () Bool)

(assert (=> b!1371972 (= e!777257 e!777258)))

(declare-fun res!915428 () Bool)

(assert (=> b!1371972 (=> res!915428 e!777258)))

(assert (=> b!1371972 (= res!915428 (= (h!33371 (t!46867 acc!866)) (h!33371 acc!866)))))

(declare-fun b!1371973 () Bool)

(assert (=> b!1371973 (= e!777258 (contains!9704 (t!46867 (t!46867 acc!866)) (h!33371 acc!866)))))

(assert (= (and d!147575 res!915427) b!1371972))

(assert (= (and b!1371972 (not res!915428)) b!1371973))

(assert (=> d!147575 m!1255427))

(declare-fun m!1255439 () Bool)

(assert (=> d!147575 m!1255439))

(declare-fun m!1255441 () Bool)

(assert (=> b!1371973 m!1255441))

(assert (=> b!1371952 d!147575))

(assert (=> d!147527 d!147525))

(declare-fun d!147577 () Bool)

(assert (=> d!147577 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!602680)))

(assert (=> d!147577 true))

(declare-fun _$70!107 () Unit!45271)

(assert (=> d!147577 (= (choose!80 a!3861 lt!602682 lt!602680 (bvadd #b00000000000000000000000000000001 from!3239)) _$70!107)))

(declare-fun bs!39317 () Bool)

(assert (= bs!39317 d!147577))

(assert (=> bs!39317 m!1255195))

(assert (=> d!147527 d!147577))

(assert (=> b!1371833 d!147485))

(declare-fun d!147579 () Bool)

(declare-fun res!915430 () Bool)

(declare-fun e!777262 () Bool)

(assert (=> d!147579 (=> res!915430 e!777262)))

(assert (=> d!147579 (= res!915430 (bvsge (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (size!45469 a!3861)))))

(assert (=> d!147579 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127711 (Cons!32162 (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) lt!602680) lt!602680)) e!777262)))

(declare-fun b!1371974 () Bool)

(declare-fun e!777260 () Bool)

(declare-fun call!65576 () Bool)

(assert (=> b!1371974 (= e!777260 call!65576)))

(declare-fun b!1371975 () Bool)

(assert (=> b!1371975 (= e!777260 call!65576)))

(declare-fun e!777259 () Bool)

(declare-fun b!1371976 () Bool)

(assert (=> b!1371976 (= e!777259 (contains!9704 (ite c!127711 (Cons!32162 (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) lt!602680) lt!602680) (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001))))))

(declare-fun b!1371977 () Bool)

(declare-fun e!777261 () Bool)

(assert (=> b!1371977 (= e!777261 e!777260)))

(declare-fun c!127715 () Bool)

(assert (=> b!1371977 (= c!127715 (validKeyInArray!0 (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001))))))

(declare-fun b!1371978 () Bool)

(assert (=> b!1371978 (= e!777262 e!777261)))

(declare-fun res!915431 () Bool)

(assert (=> b!1371978 (=> (not res!915431) (not e!777261))))

(assert (=> b!1371978 (= res!915431 (not e!777259))))

(declare-fun res!915429 () Bool)

(assert (=> b!1371978 (=> (not res!915429) (not e!777259))))

(assert (=> b!1371978 (= res!915429 (validKeyInArray!0 (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001))))))

(declare-fun bm!65573 () Bool)

(assert (=> bm!65573 (= call!65576 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!127715 (Cons!32162 (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001)) (ite c!127711 (Cons!32162 (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) lt!602680) lt!602680)) (ite c!127711 (Cons!32162 (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) lt!602680) lt!602680))))))

(assert (= (and d!147579 (not res!915430)) b!1371978))

(assert (= (and b!1371978 res!915429) b!1371976))

(assert (= (and b!1371978 res!915431) b!1371977))

(assert (= (and b!1371977 c!127715) b!1371975))

(assert (= (and b!1371977 (not c!127715)) b!1371974))

(assert (= (or b!1371975 b!1371974) bm!65573))

(declare-fun m!1255443 () Bool)

(assert (=> b!1371976 m!1255443))

(assert (=> b!1371976 m!1255443))

(declare-fun m!1255445 () Bool)

(assert (=> b!1371976 m!1255445))

(assert (=> b!1371977 m!1255443))

(assert (=> b!1371977 m!1255443))

(declare-fun m!1255447 () Bool)

(assert (=> b!1371977 m!1255447))

(assert (=> b!1371978 m!1255443))

(assert (=> b!1371978 m!1255443))

(assert (=> b!1371978 m!1255447))

(assert (=> bm!65573 m!1255443))

(declare-fun m!1255449 () Bool)

(assert (=> bm!65573 m!1255449))

(assert (=> bm!65569 d!147579))

(declare-fun d!147581 () Bool)

(declare-fun lt!602744 () Bool)

(assert (=> d!147581 (= lt!602744 (select (content!747 (t!46867 newAcc!98)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777263 () Bool)

(assert (=> d!147581 (= lt!602744 e!777263)))

(declare-fun res!915432 () Bool)

(assert (=> d!147581 (=> (not res!915432) (not e!777263))))

(assert (=> d!147581 (= res!915432 ((_ is Cons!32162) (t!46867 newAcc!98)))))

(assert (=> d!147581 (= (contains!9704 (t!46867 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000) lt!602744)))

(declare-fun b!1371979 () Bool)

(declare-fun e!777264 () Bool)

(assert (=> b!1371979 (= e!777263 e!777264)))

(declare-fun res!915433 () Bool)

(assert (=> b!1371979 (=> res!915433 e!777264)))

(assert (=> b!1371979 (= res!915433 (= (h!33371 (t!46867 newAcc!98)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1371980 () Bool)

(assert (=> b!1371980 (= e!777264 (contains!9704 (t!46867 (t!46867 newAcc!98)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147581 res!915432) b!1371979))

(assert (= (and b!1371979 (not res!915433)) b!1371980))

(declare-fun m!1255451 () Bool)

(assert (=> d!147581 m!1255451))

(declare-fun m!1255453 () Bool)

(assert (=> d!147581 m!1255453))

(declare-fun m!1255455 () Bool)

(assert (=> b!1371980 m!1255455))

(assert (=> b!1371847 d!147581))

(declare-fun d!147583 () Bool)

(assert (=> d!147583 (= (validKeyInArray!0 (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))) (and (not (= (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1371895 d!147583))

(assert (=> b!1371894 d!147583))

(declare-fun d!147585 () Bool)

(declare-fun lt!602745 () Bool)

(assert (=> d!147585 (= lt!602745 (select (content!747 (t!46867 newAcc!98)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777265 () Bool)

(assert (=> d!147585 (= lt!602745 e!777265)))

(declare-fun res!915434 () Bool)

(assert (=> d!147585 (=> (not res!915434) (not e!777265))))

(assert (=> d!147585 (= res!915434 ((_ is Cons!32162) (t!46867 newAcc!98)))))

(assert (=> d!147585 (= (contains!9704 (t!46867 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000) lt!602745)))

(declare-fun b!1371981 () Bool)

(declare-fun e!777266 () Bool)

(assert (=> b!1371981 (= e!777265 e!777266)))

(declare-fun res!915435 () Bool)

(assert (=> b!1371981 (=> res!915435 e!777266)))

(assert (=> b!1371981 (= res!915435 (= (h!33371 (t!46867 newAcc!98)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1371982 () Bool)

(assert (=> b!1371982 (= e!777266 (contains!9704 (t!46867 (t!46867 newAcc!98)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147585 res!915434) b!1371981))

(assert (= (and b!1371981 (not res!915435)) b!1371982))

(assert (=> d!147585 m!1255451))

(declare-fun m!1255457 () Bool)

(assert (=> d!147585 m!1255457))

(declare-fun m!1255459 () Bool)

(assert (=> b!1371982 m!1255459))

(assert (=> b!1371929 d!147585))

(declare-fun lt!602746 () Bool)

(declare-fun d!147587 () Bool)

(assert (=> d!147587 (= lt!602746 (select (content!747 lt!602680) (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun e!777267 () Bool)

(assert (=> d!147587 (= lt!602746 e!777267)))

(declare-fun res!915436 () Bool)

(assert (=> d!147587 (=> (not res!915436) (not e!777267))))

(assert (=> d!147587 (= res!915436 ((_ is Cons!32162) lt!602680))))

(assert (=> d!147587 (= (contains!9704 lt!602680 (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))) lt!602746)))

(declare-fun b!1371983 () Bool)

(declare-fun e!777268 () Bool)

(assert (=> b!1371983 (= e!777267 e!777268)))

(declare-fun res!915437 () Bool)

(assert (=> b!1371983 (=> res!915437 e!777268)))

(assert (=> b!1371983 (= res!915437 (= (h!33371 lt!602680) (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1371984 () Bool)

(assert (=> b!1371984 (= e!777268 (contains!9704 (t!46867 lt!602680) (select (arr!44918 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(assert (= (and d!147587 res!915436) b!1371983))

(assert (= (and b!1371983 (not res!915437)) b!1371984))

(declare-fun m!1255461 () Bool)

(assert (=> d!147587 m!1255461))

(assert (=> d!147587 m!1255335))

(declare-fun m!1255463 () Bool)

(assert (=> d!147587 m!1255463))

(assert (=> b!1371984 m!1255335))

(declare-fun m!1255465 () Bool)

(assert (=> b!1371984 m!1255465))

(assert (=> b!1371893 d!147587))

(declare-fun d!147589 () Bool)

(declare-fun c!127718 () Bool)

(assert (=> d!147589 (= c!127718 ((_ is Nil!32163) acc!866))))

(declare-fun e!777271 () (InoxSet (_ BitVec 64)))

(assert (=> d!147589 (= (content!747 acc!866) e!777271)))

(declare-fun b!1371989 () Bool)

(assert (=> b!1371989 (= e!777271 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!1371990 () Bool)

(assert (=> b!1371990 (= e!777271 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!33371 acc!866) true) (content!747 (t!46867 acc!866))))))

(assert (= (and d!147589 c!127718) b!1371989))

(assert (= (and d!147589 (not c!127718)) b!1371990))

(declare-fun m!1255467 () Bool)

(assert (=> b!1371990 m!1255467))

(assert (=> b!1371990 m!1255427))

(assert (=> d!147477 d!147589))

(assert (=> d!147485 d!147589))

(declare-fun d!147591 () Bool)

(declare-fun res!915438 () Bool)

(declare-fun e!777272 () Bool)

(assert (=> d!147591 (=> res!915438 e!777272)))

(assert (=> d!147591 (= res!915438 ((_ is Nil!32163) newAcc!98))))

(assert (=> d!147591 (= (noDuplicate!2583 newAcc!98) e!777272)))

(declare-fun b!1371991 () Bool)

(declare-fun e!777273 () Bool)

(assert (=> b!1371991 (= e!777272 e!777273)))

(declare-fun res!915439 () Bool)

(assert (=> b!1371991 (=> (not res!915439) (not e!777273))))

(assert (=> b!1371991 (= res!915439 (not (contains!9704 (t!46867 newAcc!98) (h!33371 newAcc!98))))))

(declare-fun b!1371992 () Bool)

(assert (=> b!1371992 (= e!777273 (noDuplicate!2583 (t!46867 newAcc!98)))))

(assert (= (and d!147591 (not res!915438)) b!1371991))

(assert (= (and b!1371991 res!915439) b!1371992))

(declare-fun m!1255469 () Bool)

(assert (=> b!1371991 m!1255469))

(declare-fun m!1255471 () Bool)

(assert (=> b!1371992 m!1255471))

(assert (=> d!147499 d!147591))

(declare-fun d!147593 () Bool)

(assert (=> d!147593 (noDuplicate!2583 newAcc!98)))

(assert (=> d!147593 true))

(declare-fun _$12!471 () Unit!45271)

(assert (=> d!147593 (= (choose!2025 newAcc!98 acc!866) _$12!471)))

(declare-fun bs!39318 () Bool)

(assert (= bs!39318 d!147593))

(assert (=> bs!39318 m!1255285))

(assert (=> d!147499 d!147593))

(assert (=> d!147499 d!147509))

(declare-fun d!147595 () Bool)

(declare-fun c!127719 () Bool)

(assert (=> d!147595 (= c!127719 ((_ is Nil!32163) newAcc!98))))

(declare-fun e!777274 () (InoxSet (_ BitVec 64)))

(assert (=> d!147595 (= (content!747 newAcc!98) e!777274)))

(declare-fun b!1371993 () Bool)

(assert (=> b!1371993 (= e!777274 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!1371994 () Bool)

(assert (=> b!1371994 (= e!777274 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!33371 newAcc!98) true) (content!747 (t!46867 newAcc!98))))))

(assert (= (and d!147595 c!127719) b!1371993))

(assert (= (and d!147595 (not c!127719)) b!1371994))

(declare-fun m!1255473 () Bool)

(assert (=> b!1371994 m!1255473))

(assert (=> b!1371994 m!1255451))

(assert (=> d!147507 d!147595))

(assert (=> d!147545 d!147595))

(declare-fun d!147597 () Bool)

(declare-fun lt!602747 () Bool)

(assert (=> d!147597 (= lt!602747 (select (content!747 (t!46867 acc!866)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777275 () Bool)

(assert (=> d!147597 (= lt!602747 e!777275)))

(declare-fun res!915440 () Bool)

(assert (=> d!147597 (=> (not res!915440) (not e!777275))))

(assert (=> d!147597 (= res!915440 ((_ is Cons!32162) (t!46867 acc!866)))))

(assert (=> d!147597 (= (contains!9704 (t!46867 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000) lt!602747)))

(declare-fun b!1371995 () Bool)

(declare-fun e!777276 () Bool)

(assert (=> b!1371995 (= e!777275 e!777276)))

(declare-fun res!915441 () Bool)

(assert (=> b!1371995 (=> res!915441 e!777276)))

(assert (=> b!1371995 (= res!915441 (= (h!33371 (t!46867 acc!866)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1371996 () Bool)

(assert (=> b!1371996 (= e!777276 (contains!9704 (t!46867 (t!46867 acc!866)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147597 res!915440) b!1371995))

(assert (= (and b!1371995 (not res!915441)) b!1371996))

(assert (=> d!147597 m!1255427))

(declare-fun m!1255475 () Bool)

(assert (=> d!147597 m!1255475))

(declare-fun m!1255477 () Bool)

(assert (=> b!1371996 m!1255477))

(assert (=> b!1371790 d!147597))

(declare-fun d!147599 () Bool)

(declare-fun res!915442 () Bool)

(declare-fun e!777277 () Bool)

(assert (=> d!147599 (=> res!915442 e!777277)))

(assert (=> d!147599 (= res!915442 ((_ is Nil!32163) lt!602682))))

(assert (=> d!147599 (= (noDuplicate!2583 lt!602682) e!777277)))

(declare-fun b!1371997 () Bool)

(declare-fun e!777278 () Bool)

(assert (=> b!1371997 (= e!777277 e!777278)))

(declare-fun res!915443 () Bool)

(assert (=> b!1371997 (=> (not res!915443) (not e!777278))))

(assert (=> b!1371997 (= res!915443 (not (contains!9704 (t!46867 lt!602682) (h!33371 lt!602682))))))

(declare-fun b!1371998 () Bool)

(assert (=> b!1371998 (= e!777278 (noDuplicate!2583 (t!46867 lt!602682)))))

(assert (= (and d!147599 (not res!915442)) b!1371997))

(assert (= (and b!1371997 res!915443) b!1371998))

(declare-fun m!1255479 () Bool)

(assert (=> b!1371997 m!1255479))

(declare-fun m!1255481 () Bool)

(assert (=> b!1371998 m!1255481))

(assert (=> b!1371890 d!147599))

(declare-fun d!147601 () Bool)

(declare-fun res!915445 () Bool)

(declare-fun e!777282 () Bool)

(assert (=> d!147601 (=> res!915445 e!777282)))

(assert (=> d!147601 (= res!915445 (bvsge (bvadd from!3239 #b00000000000000000000000000000001) (size!45469 a!3861)))))

(assert (=> d!147601 (= (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127710 (Cons!32162 (select (arr!44918 a!3861) from!3239) newAcc!98) newAcc!98)) e!777282)))

(declare-fun b!1371999 () Bool)

(declare-fun e!777280 () Bool)

(declare-fun call!65577 () Bool)

(assert (=> b!1371999 (= e!777280 call!65577)))

(declare-fun b!1372000 () Bool)

(assert (=> b!1372000 (= e!777280 call!65577)))

(declare-fun e!777279 () Bool)

(declare-fun b!1372001 () Bool)

(assert (=> b!1372001 (= e!777279 (contains!9704 (ite c!127710 (Cons!32162 (select (arr!44918 a!3861) from!3239) newAcc!98) newAcc!98) (select (arr!44918 a!3861) (bvadd from!3239 #b00000000000000000000000000000001))))))

(declare-fun b!1372002 () Bool)

(declare-fun e!777281 () Bool)

(assert (=> b!1372002 (= e!777281 e!777280)))

(declare-fun c!127720 () Bool)

(assert (=> b!1372002 (= c!127720 (validKeyInArray!0 (select (arr!44918 a!3861) (bvadd from!3239 #b00000000000000000000000000000001))))))

(declare-fun b!1372003 () Bool)

(assert (=> b!1372003 (= e!777282 e!777281)))

(declare-fun res!915446 () Bool)

(assert (=> b!1372003 (=> (not res!915446) (not e!777281))))

(assert (=> b!1372003 (= res!915446 (not e!777279))))

(declare-fun res!915444 () Bool)

(assert (=> b!1372003 (=> (not res!915444) (not e!777279))))

(assert (=> b!1372003 (= res!915444 (validKeyInArray!0 (select (arr!44918 a!3861) (bvadd from!3239 #b00000000000000000000000000000001))))))

(declare-fun bm!65574 () Bool)

(assert (=> bm!65574 (= call!65577 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!127720 (Cons!32162 (select (arr!44918 a!3861) (bvadd from!3239 #b00000000000000000000000000000001)) (ite c!127710 (Cons!32162 (select (arr!44918 a!3861) from!3239) newAcc!98) newAcc!98)) (ite c!127710 (Cons!32162 (select (arr!44918 a!3861) from!3239) newAcc!98) newAcc!98))))))

(assert (= (and d!147601 (not res!915445)) b!1372003))

(assert (= (and b!1372003 res!915444) b!1372001))

(assert (= (and b!1372003 res!915446) b!1372002))

(assert (= (and b!1372002 c!127720) b!1372000))

(assert (= (and b!1372002 (not c!127720)) b!1371999))

(assert (= (or b!1372000 b!1371999) bm!65574))

(declare-fun m!1255483 () Bool)

(assert (=> b!1372001 m!1255483))

(assert (=> b!1372001 m!1255483))

(declare-fun m!1255485 () Bool)

(assert (=> b!1372001 m!1255485))

(assert (=> b!1372002 m!1255483))

(assert (=> b!1372002 m!1255483))

(declare-fun m!1255487 () Bool)

(assert (=> b!1372002 m!1255487))

(assert (=> b!1372003 m!1255483))

(assert (=> b!1372003 m!1255483))

(assert (=> b!1372003 m!1255487))

(assert (=> bm!65574 m!1255483))

(declare-fun m!1255489 () Bool)

(assert (=> bm!65574 m!1255489))

(assert (=> bm!65568 d!147601))

(declare-fun d!147603 () Bool)

(declare-fun lt!602748 () Bool)

(assert (=> d!147603 (= lt!602748 (select (content!747 (t!46867 acc!866)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777283 () Bool)

(assert (=> d!147603 (= lt!602748 e!777283)))

(declare-fun res!915447 () Bool)

(assert (=> d!147603 (=> (not res!915447) (not e!777283))))

(assert (=> d!147603 (= res!915447 ((_ is Cons!32162) (t!46867 acc!866)))))

(assert (=> d!147603 (= (contains!9704 (t!46867 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000) lt!602748)))

(declare-fun b!1372004 () Bool)

(declare-fun e!777284 () Bool)

(assert (=> b!1372004 (= e!777283 e!777284)))

(declare-fun res!915448 () Bool)

(assert (=> b!1372004 (=> res!915448 e!777284)))

(assert (=> b!1372004 (= res!915448 (= (h!33371 (t!46867 acc!866)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372005 () Bool)

(assert (=> b!1372005 (= e!777284 (contains!9704 (t!46867 (t!46867 acc!866)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147603 res!915447) b!1372004))

(assert (= (and b!1372004 (not res!915448)) b!1372005))

(assert (=> d!147603 m!1255427))

(declare-fun m!1255491 () Bool)

(assert (=> d!147603 m!1255491))

(declare-fun m!1255493 () Bool)

(assert (=> b!1372005 m!1255493))

(assert (=> b!1371782 d!147603))

(assert (=> b!1371887 d!147535))

(assert (=> b!1371886 d!147535))

(declare-fun d!147605 () Bool)

(declare-fun res!915449 () Bool)

(declare-fun e!777285 () Bool)

(assert (=> d!147605 (=> res!915449 e!777285)))

(assert (=> d!147605 (= res!915449 ((_ is Nil!32163) lt!602680))))

(assert (=> d!147605 (= (noDuplicate!2583 lt!602680) e!777285)))

(declare-fun b!1372006 () Bool)

(declare-fun e!777286 () Bool)

(assert (=> b!1372006 (= e!777285 e!777286)))

(declare-fun res!915450 () Bool)

(assert (=> b!1372006 (=> (not res!915450) (not e!777286))))

(assert (=> b!1372006 (= res!915450 (not (contains!9704 (t!46867 lt!602680) (h!33371 lt!602680))))))

(declare-fun b!1372007 () Bool)

(assert (=> b!1372007 (= e!777286 (noDuplicate!2583 (t!46867 lt!602680)))))

(assert (= (and d!147605 (not res!915449)) b!1372006))

(assert (= (and b!1372006 res!915450) b!1372007))

(declare-fun m!1255495 () Bool)

(assert (=> b!1372006 m!1255495))

(declare-fun m!1255497 () Bool)

(assert (=> b!1372007 m!1255497))

(assert (=> d!147521 d!147605))

(declare-fun d!147607 () Bool)

(assert (=> d!147607 (noDuplicate!2583 lt!602680)))

(assert (=> d!147607 true))

(declare-fun _$12!472 () Unit!45271)

(assert (=> d!147607 (= (choose!2025 lt!602680 lt!602682) _$12!472)))

(declare-fun bs!39319 () Bool)

(assert (= bs!39319 d!147607))

(assert (=> bs!39319 m!1255325))

(assert (=> d!147521 d!147607))

(declare-fun b!1372008 () Bool)

(declare-fun e!777288 () Bool)

(declare-fun e!777287 () Bool)

(assert (=> b!1372008 (= e!777288 e!777287)))

(declare-fun res!915452 () Bool)

(assert (=> b!1372008 (=> (not res!915452) (not e!777287))))

(assert (=> b!1372008 (= res!915452 ((_ is Cons!32162) lt!602682))))

(declare-fun b!1372010 () Bool)

(declare-fun e!777289 () Bool)

(assert (=> b!1372010 (= e!777289 (subseq!1095 (t!46867 lt!602680) (t!46867 lt!602682)))))

(declare-fun b!1372009 () Bool)

(declare-fun e!777290 () Bool)

(assert (=> b!1372009 (= e!777287 e!777290)))

(declare-fun res!915451 () Bool)

(assert (=> b!1372009 (=> res!915451 e!777290)))

(assert (=> b!1372009 (= res!915451 e!777289)))

(declare-fun res!915453 () Bool)

(assert (=> b!1372009 (=> (not res!915453) (not e!777289))))

(assert (=> b!1372009 (= res!915453 (= (h!33371 lt!602680) (h!33371 lt!602682)))))

(declare-fun b!1372011 () Bool)

(assert (=> b!1372011 (= e!777290 (subseq!1095 lt!602680 (t!46867 lt!602682)))))

(declare-fun d!147609 () Bool)

(declare-fun res!915454 () Bool)

(assert (=> d!147609 (=> res!915454 e!777288)))

(assert (=> d!147609 (= res!915454 ((_ is Nil!32163) lt!602680))))

(assert (=> d!147609 (= (subseq!1095 lt!602680 lt!602682) e!777288)))

(assert (= (and d!147609 (not res!915454)) b!1372008))

(assert (= (and b!1372008 res!915452) b!1372009))

(assert (= (and b!1372009 res!915453) b!1372010))

(assert (= (and b!1372009 (not res!915451)) b!1372011))

(declare-fun m!1255499 () Bool)

(assert (=> b!1372010 m!1255499))

(declare-fun m!1255501 () Bool)

(assert (=> b!1372011 m!1255501))

(assert (=> d!147521 d!147609))

(assert (=> b!1371845 d!147551))

(declare-fun d!147611 () Bool)

(declare-fun lt!602749 () Bool)

(assert (=> d!147611 (= lt!602749 (select (content!747 newAcc!98) (select (arr!44918 a!3861) from!3239)))))

(declare-fun e!777291 () Bool)

(assert (=> d!147611 (= lt!602749 e!777291)))

(declare-fun res!915455 () Bool)

(assert (=> d!147611 (=> (not res!915455) (not e!777291))))

(assert (=> d!147611 (= res!915455 ((_ is Cons!32162) newAcc!98))))

(assert (=> d!147611 (= (contains!9704 newAcc!98 (select (arr!44918 a!3861) from!3239)) lt!602749)))

(declare-fun b!1372012 () Bool)

(declare-fun e!777292 () Bool)

(assert (=> b!1372012 (= e!777291 e!777292)))

(declare-fun res!915456 () Bool)

(assert (=> b!1372012 (=> res!915456 e!777292)))

(assert (=> b!1372012 (= res!915456 (= (h!33371 newAcc!98) (select (arr!44918 a!3861) from!3239)))))

(declare-fun b!1372013 () Bool)

(assert (=> b!1372013 (= e!777292 (contains!9704 (t!46867 newAcc!98) (select (arr!44918 a!3861) from!3239)))))

(assert (= (and d!147611 res!915455) b!1372012))

(assert (= (and b!1372012 (not res!915456)) b!1372013))

(assert (=> d!147611 m!1255289))

(assert (=> d!147611 m!1255189))

(declare-fun m!1255503 () Bool)

(assert (=> d!147611 m!1255503))

(assert (=> b!1372013 m!1255189))

(declare-fun m!1255505 () Bool)

(assert (=> b!1372013 m!1255505))

(assert (=> b!1371885 d!147611))

(assert (=> d!147487 d!147589))

(declare-fun d!147613 () Bool)

(declare-fun res!915458 () Bool)

(declare-fun e!777296 () Bool)

(assert (=> d!147613 (=> res!915458 e!777296)))

(assert (=> d!147613 (= res!915458 (bvsge (bvadd from!3239 #b00000000000000000000000000000001) (size!45469 a!3861)))))

(assert (=> d!147613 (= (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127704 (Cons!32162 (select (arr!44918 a!3861) from!3239) acc!866) acc!866)) e!777296)))

(declare-fun b!1372014 () Bool)

(declare-fun e!777294 () Bool)

(declare-fun call!65578 () Bool)

(assert (=> b!1372014 (= e!777294 call!65578)))

(declare-fun b!1372015 () Bool)

(assert (=> b!1372015 (= e!777294 call!65578)))

(declare-fun e!777293 () Bool)

(declare-fun b!1372016 () Bool)

(assert (=> b!1372016 (= e!777293 (contains!9704 (ite c!127704 (Cons!32162 (select (arr!44918 a!3861) from!3239) acc!866) acc!866) (select (arr!44918 a!3861) (bvadd from!3239 #b00000000000000000000000000000001))))))

(declare-fun b!1372017 () Bool)

(declare-fun e!777295 () Bool)

(assert (=> b!1372017 (= e!777295 e!777294)))

(declare-fun c!127721 () Bool)

(assert (=> b!1372017 (= c!127721 (validKeyInArray!0 (select (arr!44918 a!3861) (bvadd from!3239 #b00000000000000000000000000000001))))))

(declare-fun b!1372018 () Bool)

(assert (=> b!1372018 (= e!777296 e!777295)))

(declare-fun res!915459 () Bool)

(assert (=> b!1372018 (=> (not res!915459) (not e!777295))))

(assert (=> b!1372018 (= res!915459 (not e!777293))))

(declare-fun res!915457 () Bool)

(assert (=> b!1372018 (=> (not res!915457) (not e!777293))))

(assert (=> b!1372018 (= res!915457 (validKeyInArray!0 (select (arr!44918 a!3861) (bvadd from!3239 #b00000000000000000000000000000001))))))

(declare-fun bm!65575 () Bool)

(assert (=> bm!65575 (= call!65578 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!127721 (Cons!32162 (select (arr!44918 a!3861) (bvadd from!3239 #b00000000000000000000000000000001)) (ite c!127704 (Cons!32162 (select (arr!44918 a!3861) from!3239) acc!866) acc!866)) (ite c!127704 (Cons!32162 (select (arr!44918 a!3861) from!3239) acc!866) acc!866))))))

(assert (= (and d!147613 (not res!915458)) b!1372018))

(assert (= (and b!1372018 res!915457) b!1372016))

(assert (= (and b!1372018 res!915459) b!1372017))

(assert (= (and b!1372017 c!127721) b!1372015))

(assert (= (and b!1372017 (not c!127721)) b!1372014))

(assert (= (or b!1372015 b!1372014) bm!65575))

(assert (=> b!1372016 m!1255483))

(assert (=> b!1372016 m!1255483))

(declare-fun m!1255507 () Bool)

(assert (=> b!1372016 m!1255507))

(assert (=> b!1372017 m!1255483))

(assert (=> b!1372017 m!1255483))

(assert (=> b!1372017 m!1255487))

(assert (=> b!1372018 m!1255483))

(assert (=> b!1372018 m!1255483))

(assert (=> b!1372018 m!1255487))

(assert (=> bm!65575 m!1255483))

(declare-fun m!1255509 () Bool)

(assert (=> bm!65575 m!1255509))

(assert (=> bm!65562 d!147613))

(check-sat (not d!147575) (not b!1371984) (not b!1371966) (not b!1371967) (not b!1372005) (not b!1371996) (not d!147597) (not b!1372018) (not b!1372011) (not b!1372003) (not d!147611) (not b!1371994) (not bm!65574) (not b!1372002) (not d!147585) (not b!1371961) (not d!147607) (not b!1371971) (not b!1372016) (not b!1371976) (not b!1371997) (not b!1371992) (not b!1372010) (not d!147603) (not d!147593) (not b!1371990) (not b!1371980) (not bm!65573) (not b!1371963) (not b!1371991) (not b!1371977) (not b!1372001) (not bm!65575) (not b!1371982) (not b!1372017) (not b!1372006) (not b!1371973) (not b!1371998) (not b!1372013) (not d!147587) (not b!1371978) (not d!147569) (not d!147581) (not b!1371960) (not d!147577) (not b!1372007) (not b!1371970))
(check-sat)
