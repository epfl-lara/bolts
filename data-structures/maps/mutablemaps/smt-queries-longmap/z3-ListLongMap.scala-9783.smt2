; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116026 () Bool)

(assert start!116026)

(declare-fun b!1370546 () Bool)

(declare-fun res!914096 () Bool)

(declare-fun e!776365 () Bool)

(assert (=> b!1370546 (=> (not res!914096) (not e!776365))))

(declare-datatypes ((array!92985 0))(
  ( (array!92986 (arr!44906 (Array (_ BitVec 32) (_ BitVec 64))) (size!45457 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92985)

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((List!32154 0))(
  ( (Nil!32151) (Cons!32150 (h!33359 (_ BitVec 64)) (t!46855 List!32154)) )
))
(declare-fun acc!866 () List!32154)

(declare-fun contains!9692 (List!32154 (_ BitVec 64)) Bool)

(assert (=> b!1370546 (= res!914096 (not (contains!9692 acc!866 (select (arr!44906 a!3861) from!3239))))))

(declare-fun b!1370547 () Bool)

(declare-fun res!914095 () Bool)

(assert (=> b!1370547 (=> (not res!914095) (not e!776365))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1370547 (= res!914095 (validKeyInArray!0 (select (arr!44906 a!3861) from!3239)))))

(declare-fun b!1370548 () Bool)

(declare-fun res!914103 () Bool)

(assert (=> b!1370548 (=> (not res!914103) (not e!776365))))

(assert (=> b!1370548 (= res!914103 (bvslt from!3239 (size!45457 a!3861)))))

(declare-fun b!1370549 () Bool)

(declare-fun e!776362 () Bool)

(assert (=> b!1370549 (= e!776362 e!776365)))

(declare-fun res!914099 () Bool)

(assert (=> b!1370549 (=> (not res!914099) (not e!776365))))

(declare-fun arrayNoDuplicates!0 (array!92985 (_ BitVec 32) List!32154) Bool)

(assert (=> b!1370549 (= res!914099 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45247 0))(
  ( (Unit!45248) )
))
(declare-fun lt!602416 () Unit!45247)

(declare-fun newAcc!98 () List!32154)

(declare-fun noDuplicateSubseq!270 (List!32154 List!32154) Unit!45247)

(assert (=> b!1370549 (= lt!602416 (noDuplicateSubseq!270 newAcc!98 acc!866))))

(declare-fun res!914100 () Bool)

(assert (=> start!116026 (=> (not res!914100) (not e!776362))))

(assert (=> start!116026 (= res!914100 (and (bvslt (size!45457 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45457 a!3861))))))

(assert (=> start!116026 e!776362))

(declare-fun array_inv!33851 (array!92985) Bool)

(assert (=> start!116026 (array_inv!33851 a!3861)))

(assert (=> start!116026 true))

(declare-fun b!1370550 () Bool)

(declare-fun res!914097 () Bool)

(declare-fun e!776361 () Bool)

(assert (=> b!1370550 (=> (not res!914097) (not e!776361))))

(declare-fun lt!602417 () List!32154)

(assert (=> b!1370550 (= res!914097 (not (contains!9692 lt!602417 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1370551 () Bool)

(declare-fun res!914105 () Bool)

(assert (=> b!1370551 (=> (not res!914105) (not e!776362))))

(assert (=> b!1370551 (= res!914105 (not (contains!9692 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1370552 () Bool)

(declare-fun res!914092 () Bool)

(assert (=> b!1370552 (=> (not res!914092) (not e!776362))))

(assert (=> b!1370552 (= res!914092 (not (contains!9692 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1370553 () Bool)

(declare-fun res!914106 () Bool)

(assert (=> b!1370553 (=> (not res!914106) (not e!776362))))

(assert (=> b!1370553 (= res!914106 (not (contains!9692 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1370554 () Bool)

(declare-fun res!914104 () Bool)

(assert (=> b!1370554 (=> (not res!914104) (not e!776362))))

(declare-fun subseq!1083 (List!32154 List!32154) Bool)

(assert (=> b!1370554 (= res!914104 (subseq!1083 newAcc!98 acc!866))))

(declare-fun b!1370555 () Bool)

(declare-fun res!914101 () Bool)

(assert (=> b!1370555 (=> (not res!914101) (not e!776362))))

(assert (=> b!1370555 (= res!914101 (not (contains!9692 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1370556 () Bool)

(declare-fun e!776364 () Bool)

(declare-fun lt!602415 () List!32154)

(assert (=> b!1370556 (= e!776364 (contains!9692 lt!602415 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370557 () Bool)

(assert (=> b!1370557 (= e!776365 e!776361)))

(declare-fun res!914093 () Bool)

(assert (=> b!1370557 (=> (not res!914093) (not e!776361))))

(assert (=> b!1370557 (= res!914093 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (=> b!1370557 (= lt!602415 (Cons!32150 (select (arr!44906 a!3861) from!3239) newAcc!98))))

(assert (=> b!1370557 (= lt!602417 (Cons!32150 (select (arr!44906 a!3861) from!3239) acc!866))))

(declare-fun b!1370558 () Bool)

(declare-fun res!914094 () Bool)

(assert (=> b!1370558 (=> (not res!914094) (not e!776361))))

(assert (=> b!1370558 (= res!914094 (not (contains!9692 lt!602417 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1370559 () Bool)

(declare-fun res!914098 () Bool)

(assert (=> b!1370559 (=> (not res!914098) (not e!776361))))

(declare-fun noDuplicate!2571 (List!32154) Bool)

(assert (=> b!1370559 (= res!914098 (noDuplicate!2571 lt!602417))))

(declare-fun b!1370560 () Bool)

(declare-fun res!914102 () Bool)

(assert (=> b!1370560 (=> (not res!914102) (not e!776362))))

(assert (=> b!1370560 (= res!914102 (noDuplicate!2571 acc!866))))

(declare-fun b!1370561 () Bool)

(assert (=> b!1370561 (= e!776361 e!776364)))

(declare-fun res!914091 () Bool)

(assert (=> b!1370561 (=> res!914091 e!776364)))

(assert (=> b!1370561 (= res!914091 (contains!9692 lt!602415 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!116026 res!914100) b!1370560))

(assert (= (and b!1370560 res!914102) b!1370555))

(assert (= (and b!1370555 res!914101) b!1370551))

(assert (= (and b!1370551 res!914105) b!1370553))

(assert (= (and b!1370553 res!914106) b!1370552))

(assert (= (and b!1370552 res!914092) b!1370554))

(assert (= (and b!1370554 res!914104) b!1370549))

(assert (= (and b!1370549 res!914099) b!1370548))

(assert (= (and b!1370548 res!914103) b!1370547))

(assert (= (and b!1370547 res!914095) b!1370546))

(assert (= (and b!1370546 res!914096) b!1370557))

(assert (= (and b!1370557 res!914093) b!1370559))

(assert (= (and b!1370559 res!914098) b!1370558))

(assert (= (and b!1370558 res!914094) b!1370550))

(assert (= (and b!1370550 res!914097) b!1370561))

(assert (= (and b!1370561 (not res!914091)) b!1370556))

(declare-fun m!1254113 () Bool)

(assert (=> b!1370549 m!1254113))

(declare-fun m!1254115 () Bool)

(assert (=> b!1370549 m!1254115))

(declare-fun m!1254117 () Bool)

(assert (=> b!1370547 m!1254117))

(assert (=> b!1370547 m!1254117))

(declare-fun m!1254119 () Bool)

(assert (=> b!1370547 m!1254119))

(declare-fun m!1254121 () Bool)

(assert (=> b!1370559 m!1254121))

(declare-fun m!1254123 () Bool)

(assert (=> b!1370553 m!1254123))

(declare-fun m!1254125 () Bool)

(assert (=> b!1370550 m!1254125))

(declare-fun m!1254127 () Bool)

(assert (=> b!1370560 m!1254127))

(declare-fun m!1254129 () Bool)

(assert (=> start!116026 m!1254129))

(declare-fun m!1254131 () Bool)

(assert (=> b!1370556 m!1254131))

(declare-fun m!1254133 () Bool)

(assert (=> b!1370554 m!1254133))

(declare-fun m!1254135 () Bool)

(assert (=> b!1370552 m!1254135))

(assert (=> b!1370546 m!1254117))

(assert (=> b!1370546 m!1254117))

(declare-fun m!1254137 () Bool)

(assert (=> b!1370546 m!1254137))

(declare-fun m!1254139 () Bool)

(assert (=> b!1370551 m!1254139))

(declare-fun m!1254141 () Bool)

(assert (=> b!1370558 m!1254141))

(declare-fun m!1254143 () Bool)

(assert (=> b!1370561 m!1254143))

(assert (=> b!1370557 m!1254117))

(declare-fun m!1254145 () Bool)

(assert (=> b!1370555 m!1254145))

(check-sat (not b!1370551) (not b!1370547) (not b!1370558) (not b!1370556) (not b!1370555) (not b!1370550) (not start!116026) (not b!1370549) (not b!1370553) (not b!1370546) (not b!1370559) (not b!1370561) (not b!1370554) (not b!1370552) (not b!1370560))
(check-sat)
(get-model)

(declare-fun d!147157 () Bool)

(declare-fun lt!602429 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!738 (List!32154) (InoxSet (_ BitVec 64)))

(assert (=> d!147157 (= lt!602429 (select (content!738 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!776385 () Bool)

(assert (=> d!147157 (= lt!602429 e!776385)))

(declare-fun res!914159 () Bool)

(assert (=> d!147157 (=> (not res!914159) (not e!776385))))

(get-info :version)

(assert (=> d!147157 (= res!914159 ((_ is Cons!32150) newAcc!98))))

(assert (=> d!147157 (= (contains!9692 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602429)))

(declare-fun b!1370614 () Bool)

(declare-fun e!776386 () Bool)

(assert (=> b!1370614 (= e!776385 e!776386)))

(declare-fun res!914160 () Bool)

(assert (=> b!1370614 (=> res!914160 e!776386)))

(assert (=> b!1370614 (= res!914160 (= (h!33359 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370615 () Bool)

(assert (=> b!1370615 (= e!776386 (contains!9692 (t!46855 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147157 res!914159) b!1370614))

(assert (= (and b!1370614 (not res!914160)) b!1370615))

(declare-fun m!1254181 () Bool)

(assert (=> d!147157 m!1254181))

(declare-fun m!1254183 () Bool)

(assert (=> d!147157 m!1254183))

(declare-fun m!1254185 () Bool)

(assert (=> b!1370615 m!1254185))

(assert (=> b!1370553 d!147157))

(declare-fun d!147159 () Bool)

(declare-fun lt!602430 () Bool)

(assert (=> d!147159 (= lt!602430 (select (content!738 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!776387 () Bool)

(assert (=> d!147159 (= lt!602430 e!776387)))

(declare-fun res!914161 () Bool)

(assert (=> d!147159 (=> (not res!914161) (not e!776387))))

(assert (=> d!147159 (= res!914161 ((_ is Cons!32150) newAcc!98))))

(assert (=> d!147159 (= (contains!9692 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602430)))

(declare-fun b!1370616 () Bool)

(declare-fun e!776388 () Bool)

(assert (=> b!1370616 (= e!776387 e!776388)))

(declare-fun res!914162 () Bool)

(assert (=> b!1370616 (=> res!914162 e!776388)))

(assert (=> b!1370616 (= res!914162 (= (h!33359 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370617 () Bool)

(assert (=> b!1370617 (= e!776388 (contains!9692 (t!46855 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147159 res!914161) b!1370616))

(assert (= (and b!1370616 (not res!914162)) b!1370617))

(assert (=> d!147159 m!1254181))

(declare-fun m!1254187 () Bool)

(assert (=> d!147159 m!1254187))

(declare-fun m!1254189 () Bool)

(assert (=> b!1370617 m!1254189))

(assert (=> b!1370552 d!147159))

(declare-fun d!147161 () Bool)

(declare-fun lt!602431 () Bool)

(assert (=> d!147161 (= lt!602431 (select (content!738 lt!602415) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!776389 () Bool)

(assert (=> d!147161 (= lt!602431 e!776389)))

(declare-fun res!914163 () Bool)

(assert (=> d!147161 (=> (not res!914163) (not e!776389))))

(assert (=> d!147161 (= res!914163 ((_ is Cons!32150) lt!602415))))

(assert (=> d!147161 (= (contains!9692 lt!602415 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602431)))

(declare-fun b!1370618 () Bool)

(declare-fun e!776390 () Bool)

(assert (=> b!1370618 (= e!776389 e!776390)))

(declare-fun res!914164 () Bool)

(assert (=> b!1370618 (=> res!914164 e!776390)))

(assert (=> b!1370618 (= res!914164 (= (h!33359 lt!602415) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370619 () Bool)

(assert (=> b!1370619 (= e!776390 (contains!9692 (t!46855 lt!602415) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147161 res!914163) b!1370618))

(assert (= (and b!1370618 (not res!914164)) b!1370619))

(declare-fun m!1254191 () Bool)

(assert (=> d!147161 m!1254191))

(declare-fun m!1254193 () Bool)

(assert (=> d!147161 m!1254193))

(declare-fun m!1254195 () Bool)

(assert (=> b!1370619 m!1254195))

(assert (=> b!1370556 d!147161))

(declare-fun d!147163 () Bool)

(declare-fun res!914174 () Bool)

(declare-fun e!776399 () Bool)

(assert (=> d!147163 (=> res!914174 e!776399)))

(assert (=> d!147163 (= res!914174 ((_ is Nil!32151) newAcc!98))))

(assert (=> d!147163 (= (subseq!1083 newAcc!98 acc!866) e!776399)))

(declare-fun b!1370629 () Bool)

(declare-fun e!776400 () Bool)

(declare-fun e!776402 () Bool)

(assert (=> b!1370629 (= e!776400 e!776402)))

(declare-fun res!914173 () Bool)

(assert (=> b!1370629 (=> res!914173 e!776402)))

(declare-fun e!776401 () Bool)

(assert (=> b!1370629 (= res!914173 e!776401)))

(declare-fun res!914176 () Bool)

(assert (=> b!1370629 (=> (not res!914176) (not e!776401))))

(assert (=> b!1370629 (= res!914176 (= (h!33359 newAcc!98) (h!33359 acc!866)))))

(declare-fun b!1370631 () Bool)

(assert (=> b!1370631 (= e!776402 (subseq!1083 newAcc!98 (t!46855 acc!866)))))

(declare-fun b!1370630 () Bool)

(assert (=> b!1370630 (= e!776401 (subseq!1083 (t!46855 newAcc!98) (t!46855 acc!866)))))

(declare-fun b!1370628 () Bool)

(assert (=> b!1370628 (= e!776399 e!776400)))

(declare-fun res!914175 () Bool)

(assert (=> b!1370628 (=> (not res!914175) (not e!776400))))

(assert (=> b!1370628 (= res!914175 ((_ is Cons!32150) acc!866))))

(assert (= (and d!147163 (not res!914174)) b!1370628))

(assert (= (and b!1370628 res!914175) b!1370629))

(assert (= (and b!1370629 res!914176) b!1370630))

(assert (= (and b!1370629 (not res!914173)) b!1370631))

(declare-fun m!1254197 () Bool)

(assert (=> b!1370631 m!1254197))

(declare-fun m!1254199 () Bool)

(assert (=> b!1370630 m!1254199))

(assert (=> b!1370554 d!147163))

(declare-fun d!147165 () Bool)

(declare-fun lt!602432 () Bool)

(assert (=> d!147165 (= lt!602432 (select (content!738 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!776403 () Bool)

(assert (=> d!147165 (= lt!602432 e!776403)))

(declare-fun res!914177 () Bool)

(assert (=> d!147165 (=> (not res!914177) (not e!776403))))

(assert (=> d!147165 (= res!914177 ((_ is Cons!32150) acc!866))))

(assert (=> d!147165 (= (contains!9692 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602432)))

(declare-fun b!1370632 () Bool)

(declare-fun e!776404 () Bool)

(assert (=> b!1370632 (= e!776403 e!776404)))

(declare-fun res!914178 () Bool)

(assert (=> b!1370632 (=> res!914178 e!776404)))

(assert (=> b!1370632 (= res!914178 (= (h!33359 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370633 () Bool)

(assert (=> b!1370633 (= e!776404 (contains!9692 (t!46855 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147165 res!914177) b!1370632))

(assert (= (and b!1370632 (not res!914178)) b!1370633))

(declare-fun m!1254201 () Bool)

(assert (=> d!147165 m!1254201))

(declare-fun m!1254203 () Bool)

(assert (=> d!147165 m!1254203))

(declare-fun m!1254205 () Bool)

(assert (=> b!1370633 m!1254205))

(assert (=> b!1370555 d!147165))

(declare-fun d!147167 () Bool)

(declare-fun lt!602433 () Bool)

(assert (=> d!147167 (= lt!602433 (select (content!738 lt!602417) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!776405 () Bool)

(assert (=> d!147167 (= lt!602433 e!776405)))

(declare-fun res!914179 () Bool)

(assert (=> d!147167 (=> (not res!914179) (not e!776405))))

(assert (=> d!147167 (= res!914179 ((_ is Cons!32150) lt!602417))))

(assert (=> d!147167 (= (contains!9692 lt!602417 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602433)))

(declare-fun b!1370634 () Bool)

(declare-fun e!776406 () Bool)

(assert (=> b!1370634 (= e!776405 e!776406)))

(declare-fun res!914180 () Bool)

(assert (=> b!1370634 (=> res!914180 e!776406)))

(assert (=> b!1370634 (= res!914180 (= (h!33359 lt!602417) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370635 () Bool)

(assert (=> b!1370635 (= e!776406 (contains!9692 (t!46855 lt!602417) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147167 res!914179) b!1370634))

(assert (= (and b!1370634 (not res!914180)) b!1370635))

(declare-fun m!1254207 () Bool)

(assert (=> d!147167 m!1254207))

(declare-fun m!1254209 () Bool)

(assert (=> d!147167 m!1254209))

(declare-fun m!1254211 () Bool)

(assert (=> b!1370635 m!1254211))

(assert (=> b!1370558 d!147167))

(declare-fun d!147171 () Bool)

(assert (=> d!147171 (= (array_inv!33851 a!3861) (bvsge (size!45457 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!116026 d!147171))

(declare-fun d!147175 () Bool)

(declare-fun res!914185 () Bool)

(declare-fun e!776411 () Bool)

(assert (=> d!147175 (=> res!914185 e!776411)))

(assert (=> d!147175 (= res!914185 ((_ is Nil!32151) lt!602417))))

(assert (=> d!147175 (= (noDuplicate!2571 lt!602417) e!776411)))

(declare-fun b!1370640 () Bool)

(declare-fun e!776412 () Bool)

(assert (=> b!1370640 (= e!776411 e!776412)))

(declare-fun res!914186 () Bool)

(assert (=> b!1370640 (=> (not res!914186) (not e!776412))))

(assert (=> b!1370640 (= res!914186 (not (contains!9692 (t!46855 lt!602417) (h!33359 lt!602417))))))

(declare-fun b!1370641 () Bool)

(assert (=> b!1370641 (= e!776412 (noDuplicate!2571 (t!46855 lt!602417)))))

(assert (= (and d!147175 (not res!914185)) b!1370640))

(assert (= (and b!1370640 res!914186) b!1370641))

(declare-fun m!1254213 () Bool)

(assert (=> b!1370640 m!1254213))

(declare-fun m!1254215 () Bool)

(assert (=> b!1370641 m!1254215))

(assert (=> b!1370559 d!147175))

(declare-fun lt!602436 () Bool)

(declare-fun d!147179 () Bool)

(assert (=> d!147179 (= lt!602436 (select (content!738 acc!866) (select (arr!44906 a!3861) from!3239)))))

(declare-fun e!776417 () Bool)

(assert (=> d!147179 (= lt!602436 e!776417)))

(declare-fun res!914191 () Bool)

(assert (=> d!147179 (=> (not res!914191) (not e!776417))))

(assert (=> d!147179 (= res!914191 ((_ is Cons!32150) acc!866))))

(assert (=> d!147179 (= (contains!9692 acc!866 (select (arr!44906 a!3861) from!3239)) lt!602436)))

(declare-fun b!1370646 () Bool)

(declare-fun e!776418 () Bool)

(assert (=> b!1370646 (= e!776417 e!776418)))

(declare-fun res!914192 () Bool)

(assert (=> b!1370646 (=> res!914192 e!776418)))

(assert (=> b!1370646 (= res!914192 (= (h!33359 acc!866) (select (arr!44906 a!3861) from!3239)))))

(declare-fun b!1370647 () Bool)

(assert (=> b!1370647 (= e!776418 (contains!9692 (t!46855 acc!866) (select (arr!44906 a!3861) from!3239)))))

(assert (= (and d!147179 res!914191) b!1370646))

(assert (= (and b!1370646 (not res!914192)) b!1370647))

(assert (=> d!147179 m!1254201))

(assert (=> d!147179 m!1254117))

(declare-fun m!1254217 () Bool)

(assert (=> d!147179 m!1254217))

(assert (=> b!1370647 m!1254117))

(declare-fun m!1254219 () Bool)

(assert (=> b!1370647 m!1254219))

(assert (=> b!1370546 d!147179))

(declare-fun d!147181 () Bool)

(assert (=> d!147181 (= (validKeyInArray!0 (select (arr!44906 a!3861) from!3239)) (and (not (= (select (arr!44906 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44906 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1370547 d!147181))

(declare-fun d!147183 () Bool)

(declare-fun lt!602438 () Bool)

(assert (=> d!147183 (= lt!602438 (select (content!738 lt!602417) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!776429 () Bool)

(assert (=> d!147183 (= lt!602438 e!776429)))

(declare-fun res!914201 () Bool)

(assert (=> d!147183 (=> (not res!914201) (not e!776429))))

(assert (=> d!147183 (= res!914201 ((_ is Cons!32150) lt!602417))))

(assert (=> d!147183 (= (contains!9692 lt!602417 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602438)))

(declare-fun b!1370660 () Bool)

(declare-fun e!776430 () Bool)

(assert (=> b!1370660 (= e!776429 e!776430)))

(declare-fun res!914202 () Bool)

(assert (=> b!1370660 (=> res!914202 e!776430)))

(assert (=> b!1370660 (= res!914202 (= (h!33359 lt!602417) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370661 () Bool)

(assert (=> b!1370661 (= e!776430 (contains!9692 (t!46855 lt!602417) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147183 res!914201) b!1370660))

(assert (= (and b!1370660 (not res!914202)) b!1370661))

(assert (=> d!147183 m!1254207))

(declare-fun m!1254227 () Bool)

(assert (=> d!147183 m!1254227))

(declare-fun m!1254231 () Bool)

(assert (=> b!1370661 m!1254231))

(assert (=> b!1370550 d!147183))

(declare-fun d!147187 () Bool)

(declare-fun lt!602440 () Bool)

(assert (=> d!147187 (= lt!602440 (select (content!738 lt!602415) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!776433 () Bool)

(assert (=> d!147187 (= lt!602440 e!776433)))

(declare-fun res!914205 () Bool)

(assert (=> d!147187 (=> (not res!914205) (not e!776433))))

(assert (=> d!147187 (= res!914205 ((_ is Cons!32150) lt!602415))))

(assert (=> d!147187 (= (contains!9692 lt!602415 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602440)))

(declare-fun b!1370664 () Bool)

(declare-fun e!776434 () Bool)

(assert (=> b!1370664 (= e!776433 e!776434)))

(declare-fun res!914206 () Bool)

(assert (=> b!1370664 (=> res!914206 e!776434)))

(assert (=> b!1370664 (= res!914206 (= (h!33359 lt!602415) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370665 () Bool)

(assert (=> b!1370665 (= e!776434 (contains!9692 (t!46855 lt!602415) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147187 res!914205) b!1370664))

(assert (= (and b!1370664 (not res!914206)) b!1370665))

(assert (=> d!147187 m!1254191))

(declare-fun m!1254235 () Bool)

(assert (=> d!147187 m!1254235))

(declare-fun m!1254237 () Bool)

(assert (=> b!1370665 m!1254237))

(assert (=> b!1370561 d!147187))

(declare-fun d!147191 () Bool)

(declare-fun lt!602441 () Bool)

(assert (=> d!147191 (= lt!602441 (select (content!738 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!776435 () Bool)

(assert (=> d!147191 (= lt!602441 e!776435)))

(declare-fun res!914207 () Bool)

(assert (=> d!147191 (=> (not res!914207) (not e!776435))))

(assert (=> d!147191 (= res!914207 ((_ is Cons!32150) acc!866))))

(assert (=> d!147191 (= (contains!9692 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602441)))

(declare-fun b!1370666 () Bool)

(declare-fun e!776436 () Bool)

(assert (=> b!1370666 (= e!776435 e!776436)))

(declare-fun res!914208 () Bool)

(assert (=> b!1370666 (=> res!914208 e!776436)))

(assert (=> b!1370666 (= res!914208 (= (h!33359 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370667 () Bool)

(assert (=> b!1370667 (= e!776436 (contains!9692 (t!46855 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147191 res!914207) b!1370666))

(assert (= (and b!1370666 (not res!914208)) b!1370667))

(assert (=> d!147191 m!1254201))

(declare-fun m!1254239 () Bool)

(assert (=> d!147191 m!1254239))

(declare-fun m!1254241 () Bool)

(assert (=> b!1370667 m!1254241))

(assert (=> b!1370551 d!147191))

(declare-fun b!1370701 () Bool)

(declare-fun e!776464 () Bool)

(declare-fun e!776466 () Bool)

(assert (=> b!1370701 (= e!776464 e!776466)))

(declare-fun res!914232 () Bool)

(assert (=> b!1370701 (=> (not res!914232) (not e!776466))))

(declare-fun e!776467 () Bool)

(assert (=> b!1370701 (= res!914232 (not e!776467))))

(declare-fun res!914230 () Bool)

(assert (=> b!1370701 (=> (not res!914230) (not e!776467))))

(assert (=> b!1370701 (= res!914230 (validKeyInArray!0 (select (arr!44906 a!3861) from!3239)))))

(declare-fun d!147193 () Bool)

(declare-fun res!914231 () Bool)

(assert (=> d!147193 (=> res!914231 e!776464)))

(assert (=> d!147193 (= res!914231 (bvsge from!3239 (size!45457 a!3861)))))

(assert (=> d!147193 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!776464)))

(declare-fun b!1370702 () Bool)

(declare-fun e!776465 () Bool)

(assert (=> b!1370702 (= e!776466 e!776465)))

(declare-fun c!127678 () Bool)

(assert (=> b!1370702 (= c!127678 (validKeyInArray!0 (select (arr!44906 a!3861) from!3239)))))

(declare-fun bm!65536 () Bool)

(declare-fun call!65539 () Bool)

(assert (=> bm!65536 (= call!65539 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127678 (Cons!32150 (select (arr!44906 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1370703 () Bool)

(assert (=> b!1370703 (= e!776465 call!65539)))

(declare-fun b!1370704 () Bool)

(assert (=> b!1370704 (= e!776465 call!65539)))

(declare-fun b!1370705 () Bool)

(assert (=> b!1370705 (= e!776467 (contains!9692 acc!866 (select (arr!44906 a!3861) from!3239)))))

(assert (= (and d!147193 (not res!914231)) b!1370701))

(assert (= (and b!1370701 res!914230) b!1370705))

(assert (= (and b!1370701 res!914232) b!1370702))

(assert (= (and b!1370702 c!127678) b!1370704))

(assert (= (and b!1370702 (not c!127678)) b!1370703))

(assert (= (or b!1370704 b!1370703) bm!65536))

(assert (=> b!1370701 m!1254117))

(assert (=> b!1370701 m!1254117))

(assert (=> b!1370701 m!1254119))

(assert (=> b!1370702 m!1254117))

(assert (=> b!1370702 m!1254117))

(assert (=> b!1370702 m!1254119))

(assert (=> bm!65536 m!1254117))

(declare-fun m!1254251 () Bool)

(assert (=> bm!65536 m!1254251))

(assert (=> b!1370705 m!1254117))

(assert (=> b!1370705 m!1254117))

(assert (=> b!1370705 m!1254137))

(assert (=> b!1370549 d!147193))

(declare-fun d!147201 () Bool)

(assert (=> d!147201 (noDuplicate!2571 newAcc!98)))

(declare-fun lt!602457 () Unit!45247)

(declare-fun choose!2017 (List!32154 List!32154) Unit!45247)

(assert (=> d!147201 (= lt!602457 (choose!2017 newAcc!98 acc!866))))

(declare-fun e!776487 () Bool)

(assert (=> d!147201 e!776487))

(declare-fun res!914252 () Bool)

(assert (=> d!147201 (=> (not res!914252) (not e!776487))))

(assert (=> d!147201 (= res!914252 (subseq!1083 newAcc!98 acc!866))))

(assert (=> d!147201 (= (noDuplicateSubseq!270 newAcc!98 acc!866) lt!602457)))

(declare-fun b!1370725 () Bool)

(assert (=> b!1370725 (= e!776487 (noDuplicate!2571 acc!866))))

(assert (= (and d!147201 res!914252) b!1370725))

(declare-fun m!1254285 () Bool)

(assert (=> d!147201 m!1254285))

(declare-fun m!1254287 () Bool)

(assert (=> d!147201 m!1254287))

(assert (=> d!147201 m!1254133))

(assert (=> b!1370725 m!1254127))

(assert (=> b!1370549 d!147201))

(declare-fun d!147215 () Bool)

(declare-fun res!914255 () Bool)

(declare-fun e!776490 () Bool)

(assert (=> d!147215 (=> res!914255 e!776490)))

(assert (=> d!147215 (= res!914255 ((_ is Nil!32151) acc!866))))

(assert (=> d!147215 (= (noDuplicate!2571 acc!866) e!776490)))

(declare-fun b!1370728 () Bool)

(declare-fun e!776491 () Bool)

(assert (=> b!1370728 (= e!776490 e!776491)))

(declare-fun res!914256 () Bool)

(assert (=> b!1370728 (=> (not res!914256) (not e!776491))))

(assert (=> b!1370728 (= res!914256 (not (contains!9692 (t!46855 acc!866) (h!33359 acc!866))))))

(declare-fun b!1370729 () Bool)

(assert (=> b!1370729 (= e!776491 (noDuplicate!2571 (t!46855 acc!866)))))

(assert (= (and d!147215 (not res!914255)) b!1370728))

(assert (= (and b!1370728 res!914256) b!1370729))

(declare-fun m!1254295 () Bool)

(assert (=> b!1370728 m!1254295))

(declare-fun m!1254297 () Bool)

(assert (=> b!1370729 m!1254297))

(assert (=> b!1370560 d!147215))

(check-sat (not d!147167) (not b!1370615) (not b!1370702) (not b!1370661) (not b!1370640) (not d!147159) (not b!1370728) (not d!147201) (not b!1370641) (not b!1370667) (not b!1370725) (not b!1370647) (not d!147157) (not d!147179) (not d!147165) (not b!1370729) (not d!147187) (not d!147191) (not b!1370665) (not b!1370617) (not b!1370630) (not b!1370635) (not b!1370619) (not bm!65536) (not b!1370631) (not b!1370705) (not d!147161) (not b!1370701) (not d!147183) (not b!1370633))
(check-sat)
