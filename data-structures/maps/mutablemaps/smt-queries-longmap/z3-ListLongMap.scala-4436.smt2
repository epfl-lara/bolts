; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61610 () Bool)

(assert start!61610)

(declare-fun b!689497 () Bool)

(declare-fun res!454194 () Bool)

(declare-fun e!392544 () Bool)

(assert (=> b!689497 (=> res!454194 e!392544)))

(declare-datatypes ((List!13115 0))(
  ( (Nil!13112) (Cons!13111 (h!14156 (_ BitVec 64)) (t!19387 List!13115)) )
))
(declare-fun lt!316217 () List!13115)

(declare-fun contains!3658 (List!13115 (_ BitVec 64)) Bool)

(assert (=> b!689497 (= res!454194 (contains!3658 lt!316217 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689498 () Bool)

(declare-fun res!454190 () Bool)

(declare-fun e!392548 () Bool)

(assert (=> b!689498 (=> (not res!454190) (not e!392548))))

(declare-fun acc!681 () List!13115)

(assert (=> b!689498 (= res!454190 (not (contains!3658 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689499 () Bool)

(declare-datatypes ((Unit!24342 0))(
  ( (Unit!24343) )
))
(declare-fun e!392546 () Unit!24342)

(declare-fun Unit!24344 () Unit!24342)

(assert (=> b!689499 (= e!392546 Unit!24344)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!316214 () Unit!24342)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-datatypes ((array!39707 0))(
  ( (array!39708 (arr!19021 (Array (_ BitVec 32) (_ BitVec 64))) (size!19402 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39707)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39707 (_ BitVec 64) (_ BitVec 32)) Unit!24342)

(assert (=> b!689499 (= lt!316214 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!689499 false))

(declare-fun b!689500 () Bool)

(declare-fun res!454189 () Bool)

(assert (=> b!689500 (=> (not res!454189) (not e!392548))))

(declare-fun arrayNoDuplicates!0 (array!39707 (_ BitVec 32) List!13115) Bool)

(assert (=> b!689500 (= res!454189 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13112))))

(declare-fun b!689501 () Bool)

(declare-fun e!392541 () Bool)

(declare-fun e!392549 () Bool)

(assert (=> b!689501 (= e!392541 e!392549)))

(declare-fun res!454184 () Bool)

(assert (=> b!689501 (=> (not res!454184) (not e!392549))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!689501 (= res!454184 (bvsle from!3004 i!1382))))

(declare-fun b!689502 () Bool)

(declare-fun res!454185 () Bool)

(assert (=> b!689502 (=> res!454185 e!392544)))

(declare-fun noDuplicate!905 (List!13115) Bool)

(assert (=> b!689502 (= res!454185 (not (noDuplicate!905 lt!316217)))))

(declare-fun b!689503 () Bool)

(declare-fun res!454179 () Bool)

(assert (=> b!689503 (=> (not res!454179) (not e!392548))))

(declare-fun arrayContainsKey!0 (array!39707 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!689503 (= res!454179 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!689504 () Bool)

(declare-fun res!454188 () Bool)

(assert (=> b!689504 (=> (not res!454188) (not e!392548))))

(assert (=> b!689504 (= res!454188 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19402 a!3626))))))

(declare-fun b!689505 () Bool)

(declare-fun res!454182 () Bool)

(assert (=> b!689505 (=> (not res!454182) (not e!392548))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!689505 (= res!454182 (validKeyInArray!0 k0!2843))))

(declare-fun b!689506 () Bool)

(declare-fun res!454183 () Bool)

(assert (=> b!689506 (=> (not res!454183) (not e!392548))))

(assert (=> b!689506 (= res!454183 (noDuplicate!905 acc!681))))

(declare-fun b!689507 () Bool)

(declare-fun res!454177 () Bool)

(assert (=> b!689507 (=> (not res!454177) (not e!392548))))

(assert (=> b!689507 (= res!454177 (not (contains!3658 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689508 () Bool)

(declare-fun lt!316220 () array!39707)

(assert (=> b!689508 (= e!392544 (arrayNoDuplicates!0 lt!316220 from!3004 acc!681))))

(assert (=> b!689508 (arrayNoDuplicates!0 lt!316220 (bvadd #b00000000000000000000000000000001 from!3004) lt!316217)))

(declare-fun lt!316223 () Unit!24342)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39707 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13115) Unit!24342)

(assert (=> b!689508 (= lt!316223 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!316217))))

(declare-fun b!689509 () Bool)

(declare-fun Unit!24345 () Unit!24342)

(assert (=> b!689509 (= e!392546 Unit!24345)))

(declare-fun b!689510 () Bool)

(assert (=> b!689510 (= e!392549 (not (contains!3658 acc!681 k0!2843)))))

(declare-fun b!689511 () Bool)

(assert (=> b!689511 (= e!392548 (not e!392544))))

(declare-fun res!454191 () Bool)

(assert (=> b!689511 (=> res!454191 e!392544)))

(assert (=> b!689511 (= res!454191 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!689511 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316217)))

(declare-fun lt!316215 () Unit!24342)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39707 (_ BitVec 64) (_ BitVec 32) List!13115 List!13115) Unit!24342)

(assert (=> b!689511 (= lt!316215 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!316217))))

(declare-fun -!208 (List!13115 (_ BitVec 64)) List!13115)

(assert (=> b!689511 (= (-!208 lt!316217 k0!2843) acc!681)))

(declare-fun $colon$colon!407 (List!13115 (_ BitVec 64)) List!13115)

(assert (=> b!689511 (= lt!316217 ($colon$colon!407 acc!681 k0!2843))))

(declare-fun lt!316218 () Unit!24342)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13115) Unit!24342)

(assert (=> b!689511 (= lt!316218 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!243 (List!13115 List!13115) Bool)

(assert (=> b!689511 (subseq!243 acc!681 acc!681)))

(declare-fun lt!316216 () Unit!24342)

(declare-fun lemmaListSubSeqRefl!0 (List!13115) Unit!24342)

(assert (=> b!689511 (= lt!316216 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!689511 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!316219 () Unit!24342)

(declare-fun e!392551 () Unit!24342)

(assert (=> b!689511 (= lt!316219 e!392551)))

(declare-fun c!78028 () Bool)

(assert (=> b!689511 (= c!78028 (validKeyInArray!0 (select (arr!19021 a!3626) from!3004)))))

(declare-fun lt!316224 () Unit!24342)

(assert (=> b!689511 (= lt!316224 e!392546)))

(declare-fun c!78029 () Bool)

(assert (=> b!689511 (= c!78029 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!689511 (arrayContainsKey!0 lt!316220 k0!2843 from!3004)))

(assert (=> b!689511 (= lt!316220 (array!39708 (store (arr!19021 a!3626) i!1382 k0!2843) (size!19402 a!3626)))))

(declare-fun b!689512 () Bool)

(declare-fun e!392547 () Bool)

(assert (=> b!689512 (= e!392547 (not (contains!3658 lt!316217 k0!2843)))))

(declare-fun b!689513 () Bool)

(declare-fun res!454193 () Bool)

(assert (=> b!689513 (=> res!454193 e!392544)))

(declare-fun e!392543 () Bool)

(assert (=> b!689513 (= res!454193 e!392543)))

(declare-fun res!454178 () Bool)

(assert (=> b!689513 (=> (not res!454178) (not e!392543))))

(assert (=> b!689513 (= res!454178 e!392547)))

(declare-fun res!454186 () Bool)

(assert (=> b!689513 (=> res!454186 e!392547)))

(assert (=> b!689513 (= res!454186 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!689514 () Bool)

(declare-fun res!454181 () Bool)

(assert (=> b!689514 (=> res!454181 e!392544)))

(assert (=> b!689514 (= res!454181 (contains!3658 lt!316217 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689515 () Bool)

(declare-fun e!392542 () Bool)

(assert (=> b!689515 (= e!392542 (contains!3658 acc!681 k0!2843))))

(declare-fun b!689516 () Bool)

(declare-fun res!454176 () Bool)

(assert (=> b!689516 (=> (not res!454176) (not e!392548))))

(assert (=> b!689516 (= res!454176 e!392541)))

(declare-fun res!454196 () Bool)

(assert (=> b!689516 (=> res!454196 e!392541)))

(assert (=> b!689516 (= res!454196 e!392542)))

(declare-fun res!454180 () Bool)

(assert (=> b!689516 (=> (not res!454180) (not e!392542))))

(assert (=> b!689516 (= res!454180 (bvsgt from!3004 i!1382))))

(declare-fun b!689517 () Bool)

(declare-fun e!392545 () Bool)

(assert (=> b!689517 (= e!392545 (contains!3658 lt!316217 k0!2843))))

(declare-fun b!689518 () Bool)

(assert (=> b!689518 (= e!392543 e!392545)))

(declare-fun res!454192 () Bool)

(assert (=> b!689518 (=> res!454192 e!392545)))

(assert (=> b!689518 (= res!454192 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!689519 () Bool)

(declare-fun lt!316222 () Unit!24342)

(assert (=> b!689519 (= e!392551 lt!316222)))

(declare-fun lt!316221 () Unit!24342)

(assert (=> b!689519 (= lt!316221 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!689519 (subseq!243 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39707 List!13115 List!13115 (_ BitVec 32)) Unit!24342)

(assert (=> b!689519 (= lt!316222 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!407 acc!681 (select (arr!19021 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!689519 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!689520 () Bool)

(declare-fun Unit!24346 () Unit!24342)

(assert (=> b!689520 (= e!392551 Unit!24346)))

(declare-fun b!689521 () Bool)

(declare-fun res!454175 () Bool)

(assert (=> b!689521 (=> (not res!454175) (not e!392548))))

(assert (=> b!689521 (= res!454175 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!689522 () Bool)

(declare-fun res!454187 () Bool)

(assert (=> b!689522 (=> (not res!454187) (not e!392548))))

(assert (=> b!689522 (= res!454187 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19402 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!454195 () Bool)

(assert (=> start!61610 (=> (not res!454195) (not e!392548))))

(assert (=> start!61610 (= res!454195 (and (bvslt (size!19402 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19402 a!3626))))))

(assert (=> start!61610 e!392548))

(assert (=> start!61610 true))

(declare-fun array_inv!14795 (array!39707) Bool)

(assert (=> start!61610 (array_inv!14795 a!3626)))

(assert (= (and start!61610 res!454195) b!689506))

(assert (= (and b!689506 res!454183) b!689507))

(assert (= (and b!689507 res!454177) b!689498))

(assert (= (and b!689498 res!454190) b!689516))

(assert (= (and b!689516 res!454180) b!689515))

(assert (= (and b!689516 (not res!454196)) b!689501))

(assert (= (and b!689501 res!454184) b!689510))

(assert (= (and b!689516 res!454176) b!689500))

(assert (= (and b!689500 res!454189) b!689521))

(assert (= (and b!689521 res!454175) b!689504))

(assert (= (and b!689504 res!454188) b!689505))

(assert (= (and b!689505 res!454182) b!689503))

(assert (= (and b!689503 res!454179) b!689522))

(assert (= (and b!689522 res!454187) b!689511))

(assert (= (and b!689511 c!78029) b!689499))

(assert (= (and b!689511 (not c!78029)) b!689509))

(assert (= (and b!689511 c!78028) b!689519))

(assert (= (and b!689511 (not c!78028)) b!689520))

(assert (= (and b!689511 (not res!454191)) b!689502))

(assert (= (and b!689502 (not res!454185)) b!689497))

(assert (= (and b!689497 (not res!454194)) b!689514))

(assert (= (and b!689514 (not res!454181)) b!689513))

(assert (= (and b!689513 (not res!454186)) b!689512))

(assert (= (and b!689513 res!454178) b!689518))

(assert (= (and b!689518 (not res!454192)) b!689517))

(assert (= (and b!689513 (not res!454193)) b!689508))

(declare-fun m!653173 () Bool)

(assert (=> b!689511 m!653173))

(declare-fun m!653175 () Bool)

(assert (=> b!689511 m!653175))

(declare-fun m!653177 () Bool)

(assert (=> b!689511 m!653177))

(declare-fun m!653179 () Bool)

(assert (=> b!689511 m!653179))

(declare-fun m!653181 () Bool)

(assert (=> b!689511 m!653181))

(declare-fun m!653183 () Bool)

(assert (=> b!689511 m!653183))

(declare-fun m!653185 () Bool)

(assert (=> b!689511 m!653185))

(declare-fun m!653187 () Bool)

(assert (=> b!689511 m!653187))

(declare-fun m!653189 () Bool)

(assert (=> b!689511 m!653189))

(declare-fun m!653191 () Bool)

(assert (=> b!689511 m!653191))

(declare-fun m!653193 () Bool)

(assert (=> b!689511 m!653193))

(assert (=> b!689511 m!653187))

(declare-fun m!653195 () Bool)

(assert (=> b!689511 m!653195))

(declare-fun m!653197 () Bool)

(assert (=> b!689511 m!653197))

(declare-fun m!653199 () Bool)

(assert (=> b!689506 m!653199))

(declare-fun m!653201 () Bool)

(assert (=> b!689503 m!653201))

(declare-fun m!653203 () Bool)

(assert (=> b!689517 m!653203))

(declare-fun m!653205 () Bool)

(assert (=> b!689514 m!653205))

(declare-fun m!653207 () Bool)

(assert (=> start!61610 m!653207))

(declare-fun m!653209 () Bool)

(assert (=> b!689510 m!653209))

(declare-fun m!653211 () Bool)

(assert (=> b!689521 m!653211))

(declare-fun m!653213 () Bool)

(assert (=> b!689500 m!653213))

(assert (=> b!689515 m!653209))

(declare-fun m!653215 () Bool)

(assert (=> b!689499 m!653215))

(declare-fun m!653217 () Bool)

(assert (=> b!689498 m!653217))

(declare-fun m!653219 () Bool)

(assert (=> b!689502 m!653219))

(declare-fun m!653221 () Bool)

(assert (=> b!689507 m!653221))

(declare-fun m!653223 () Bool)

(assert (=> b!689505 m!653223))

(assert (=> b!689519 m!653173))

(assert (=> b!689519 m!653187))

(declare-fun m!653225 () Bool)

(assert (=> b!689519 m!653225))

(declare-fun m!653227 () Bool)

(assert (=> b!689519 m!653227))

(assert (=> b!689519 m!653187))

(assert (=> b!689519 m!653225))

(assert (=> b!689519 m!653179))

(assert (=> b!689519 m!653191))

(declare-fun m!653229 () Bool)

(assert (=> b!689508 m!653229))

(declare-fun m!653231 () Bool)

(assert (=> b!689508 m!653231))

(declare-fun m!653233 () Bool)

(assert (=> b!689508 m!653233))

(declare-fun m!653235 () Bool)

(assert (=> b!689497 m!653235))

(assert (=> b!689512 m!653203))

(check-sat (not b!689506) (not b!689499) (not b!689510) (not b!689497) (not b!689500) (not b!689519) (not b!689507) (not b!689498) (not b!689517) (not b!689503) (not b!689508) (not start!61610) (not b!689502) (not b!689511) (not b!689505) (not b!689515) (not b!689512) (not b!689521) (not b!689514))
(check-sat)
(get-model)

(declare-fun d!95125 () Bool)

(declare-fun lt!316260 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!304 (List!13115) (InoxSet (_ BitVec 64)))

(assert (=> d!95125 (= lt!316260 (select (content!304 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!392589 () Bool)

(assert (=> d!95125 (= lt!316260 e!392589)))

(declare-fun res!454268 () Bool)

(assert (=> d!95125 (=> (not res!454268) (not e!392589))))

(get-info :version)

(assert (=> d!95125 (= res!454268 ((_ is Cons!13111) acc!681))))

(assert (=> d!95125 (= (contains!3658 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316260)))

(declare-fun b!689605 () Bool)

(declare-fun e!392590 () Bool)

(assert (=> b!689605 (= e!392589 e!392590)))

(declare-fun res!454267 () Bool)

(assert (=> b!689605 (=> res!454267 e!392590)))

(assert (=> b!689605 (= res!454267 (= (h!14156 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689606 () Bool)

(assert (=> b!689606 (= e!392590 (contains!3658 (t!19387 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95125 res!454268) b!689605))

(assert (= (and b!689605 (not res!454267)) b!689606))

(declare-fun m!653301 () Bool)

(assert (=> d!95125 m!653301))

(declare-fun m!653303 () Bool)

(assert (=> d!95125 m!653303))

(declare-fun m!653305 () Bool)

(assert (=> b!689606 m!653305))

(assert (=> b!689507 d!95125))

(declare-fun c!78038 () Bool)

(declare-fun bm!34178 () Bool)

(declare-fun call!34181 () Bool)

(assert (=> bm!34178 (= call!34181 (arrayNoDuplicates!0 lt!316220 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78038 (Cons!13111 (select (arr!19021 lt!316220) from!3004) acc!681) acc!681)))))

(declare-fun b!689617 () Bool)

(declare-fun e!392602 () Bool)

(assert (=> b!689617 (= e!392602 call!34181)))

(declare-fun b!689618 () Bool)

(declare-fun e!392600 () Bool)

(assert (=> b!689618 (= e!392600 (contains!3658 acc!681 (select (arr!19021 lt!316220) from!3004)))))

(declare-fun b!689619 () Bool)

(declare-fun e!392599 () Bool)

(declare-fun e!392601 () Bool)

(assert (=> b!689619 (= e!392599 e!392601)))

(declare-fun res!454277 () Bool)

(assert (=> b!689619 (=> (not res!454277) (not e!392601))))

(assert (=> b!689619 (= res!454277 (not e!392600))))

(declare-fun res!454276 () Bool)

(assert (=> b!689619 (=> (not res!454276) (not e!392600))))

(assert (=> b!689619 (= res!454276 (validKeyInArray!0 (select (arr!19021 lt!316220) from!3004)))))

(declare-fun b!689620 () Bool)

(assert (=> b!689620 (= e!392602 call!34181)))

(declare-fun d!95127 () Bool)

(declare-fun res!454275 () Bool)

(assert (=> d!95127 (=> res!454275 e!392599)))

(assert (=> d!95127 (= res!454275 (bvsge from!3004 (size!19402 lt!316220)))))

(assert (=> d!95127 (= (arrayNoDuplicates!0 lt!316220 from!3004 acc!681) e!392599)))

(declare-fun b!689621 () Bool)

(assert (=> b!689621 (= e!392601 e!392602)))

(assert (=> b!689621 (= c!78038 (validKeyInArray!0 (select (arr!19021 lt!316220) from!3004)))))

(assert (= (and d!95127 (not res!454275)) b!689619))

(assert (= (and b!689619 res!454276) b!689618))

(assert (= (and b!689619 res!454277) b!689621))

(assert (= (and b!689621 c!78038) b!689620))

(assert (= (and b!689621 (not c!78038)) b!689617))

(assert (= (or b!689620 b!689617) bm!34178))

(declare-fun m!653307 () Bool)

(assert (=> bm!34178 m!653307))

(declare-fun m!653309 () Bool)

(assert (=> bm!34178 m!653309))

(assert (=> b!689618 m!653307))

(assert (=> b!689618 m!653307))

(declare-fun m!653311 () Bool)

(assert (=> b!689618 m!653311))

(assert (=> b!689619 m!653307))

(assert (=> b!689619 m!653307))

(declare-fun m!653313 () Bool)

(assert (=> b!689619 m!653313))

(assert (=> b!689621 m!653307))

(assert (=> b!689621 m!653307))

(assert (=> b!689621 m!653313))

(assert (=> b!689508 d!95127))

(declare-fun bm!34179 () Bool)

(declare-fun call!34182 () Bool)

(declare-fun c!78039 () Bool)

(assert (=> bm!34179 (= call!34182 (arrayNoDuplicates!0 lt!316220 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!78039 (Cons!13111 (select (arr!19021 lt!316220) (bvadd #b00000000000000000000000000000001 from!3004)) lt!316217) lt!316217)))))

(declare-fun b!689622 () Bool)

(declare-fun e!392606 () Bool)

(assert (=> b!689622 (= e!392606 call!34182)))

(declare-fun e!392604 () Bool)

(declare-fun b!689623 () Bool)

(assert (=> b!689623 (= e!392604 (contains!3658 lt!316217 (select (arr!19021 lt!316220) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!689624 () Bool)

(declare-fun e!392603 () Bool)

(declare-fun e!392605 () Bool)

(assert (=> b!689624 (= e!392603 e!392605)))

(declare-fun res!454280 () Bool)

(assert (=> b!689624 (=> (not res!454280) (not e!392605))))

(assert (=> b!689624 (= res!454280 (not e!392604))))

(declare-fun res!454279 () Bool)

(assert (=> b!689624 (=> (not res!454279) (not e!392604))))

(assert (=> b!689624 (= res!454279 (validKeyInArray!0 (select (arr!19021 lt!316220) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!689625 () Bool)

(assert (=> b!689625 (= e!392606 call!34182)))

(declare-fun d!95129 () Bool)

(declare-fun res!454278 () Bool)

(assert (=> d!95129 (=> res!454278 e!392603)))

(assert (=> d!95129 (= res!454278 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19402 lt!316220)))))

(assert (=> d!95129 (= (arrayNoDuplicates!0 lt!316220 (bvadd #b00000000000000000000000000000001 from!3004) lt!316217) e!392603)))

(declare-fun b!689626 () Bool)

(assert (=> b!689626 (= e!392605 e!392606)))

(assert (=> b!689626 (= c!78039 (validKeyInArray!0 (select (arr!19021 lt!316220) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!95129 (not res!454278)) b!689624))

(assert (= (and b!689624 res!454279) b!689623))

(assert (= (and b!689624 res!454280) b!689626))

(assert (= (and b!689626 c!78039) b!689625))

(assert (= (and b!689626 (not c!78039)) b!689622))

(assert (= (or b!689625 b!689622) bm!34179))

(declare-fun m!653315 () Bool)

(assert (=> bm!34179 m!653315))

(declare-fun m!653317 () Bool)

(assert (=> bm!34179 m!653317))

(assert (=> b!689623 m!653315))

(assert (=> b!689623 m!653315))

(declare-fun m!653319 () Bool)

(assert (=> b!689623 m!653319))

(assert (=> b!689624 m!653315))

(assert (=> b!689624 m!653315))

(declare-fun m!653321 () Bool)

(assert (=> b!689624 m!653321))

(assert (=> b!689626 m!653315))

(assert (=> b!689626 m!653315))

(assert (=> b!689626 m!653321))

(assert (=> b!689508 d!95129))

(declare-fun d!95131 () Bool)

(declare-fun e!392615 () Bool)

(assert (=> d!95131 e!392615))

(declare-fun res!454291 () Bool)

(assert (=> d!95131 (=> (not res!454291) (not e!392615))))

(assert (=> d!95131 (= res!454291 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19402 a!3626))))))

(declare-fun lt!316266 () Unit!24342)

(declare-fun choose!41 (array!39707 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13115) Unit!24342)

(assert (=> d!95131 (= lt!316266 (choose!41 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!316217))))

(assert (=> d!95131 (bvslt (size!19402 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!95131 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!316217) lt!316266)))

(declare-fun b!689635 () Bool)

(assert (=> b!689635 (= e!392615 (arrayNoDuplicates!0 (array!39708 (store (arr!19021 a!3626) i!1382 k0!2843) (size!19402 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!316217))))

(assert (= (and d!95131 res!454291) b!689635))

(declare-fun m!653331 () Bool)

(assert (=> d!95131 m!653331))

(assert (=> b!689635 m!653177))

(declare-fun m!653335 () Bool)

(assert (=> b!689635 m!653335))

(assert (=> b!689508 d!95131))

(declare-fun d!95139 () Bool)

(declare-fun lt!316268 () Bool)

(assert (=> d!95139 (= lt!316268 (select (content!304 lt!316217) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!392618 () Bool)

(assert (=> d!95139 (= lt!316268 e!392618)))

(declare-fun res!454293 () Bool)

(assert (=> d!95139 (=> (not res!454293) (not e!392618))))

(assert (=> d!95139 (= res!454293 ((_ is Cons!13111) lt!316217))))

(assert (=> d!95139 (= (contains!3658 lt!316217 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316268)))

(declare-fun b!689638 () Bool)

(declare-fun e!392619 () Bool)

(assert (=> b!689638 (= e!392618 e!392619)))

(declare-fun res!454292 () Bool)

(assert (=> b!689638 (=> res!454292 e!392619)))

(assert (=> b!689638 (= res!454292 (= (h!14156 lt!316217) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689639 () Bool)

(assert (=> b!689639 (= e!392619 (contains!3658 (t!19387 lt!316217) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95139 res!454293) b!689638))

(assert (= (and b!689638 (not res!454292)) b!689639))

(declare-fun m!653337 () Bool)

(assert (=> d!95139 m!653337))

(declare-fun m!653339 () Bool)

(assert (=> d!95139 m!653339))

(declare-fun m!653341 () Bool)

(assert (=> b!689639 m!653341))

(assert (=> b!689497 d!95139))

(declare-fun d!95141 () Bool)

(declare-fun res!454300 () Bool)

(declare-fun e!392626 () Bool)

(assert (=> d!95141 (=> res!454300 e!392626)))

(assert (=> d!95141 (= res!454300 ((_ is Nil!13112) acc!681))))

(assert (=> d!95141 (= (noDuplicate!905 acc!681) e!392626)))

(declare-fun b!689646 () Bool)

(declare-fun e!392627 () Bool)

(assert (=> b!689646 (= e!392626 e!392627)))

(declare-fun res!454301 () Bool)

(assert (=> b!689646 (=> (not res!454301) (not e!392627))))

(assert (=> b!689646 (= res!454301 (not (contains!3658 (t!19387 acc!681) (h!14156 acc!681))))))

(declare-fun b!689647 () Bool)

(assert (=> b!689647 (= e!392627 (noDuplicate!905 (t!19387 acc!681)))))

(assert (= (and d!95141 (not res!454300)) b!689646))

(assert (= (and b!689646 res!454301) b!689647))

(declare-fun m!653351 () Bool)

(assert (=> b!689646 m!653351))

(declare-fun m!653353 () Bool)

(assert (=> b!689647 m!653353))

(assert (=> b!689506 d!95141))

(declare-fun d!95147 () Bool)

(declare-fun lt!316273 () Bool)

(assert (=> d!95147 (= lt!316273 (select (content!304 lt!316217) k0!2843))))

(declare-fun e!392628 () Bool)

(assert (=> d!95147 (= lt!316273 e!392628)))

(declare-fun res!454303 () Bool)

(assert (=> d!95147 (=> (not res!454303) (not e!392628))))

(assert (=> d!95147 (= res!454303 ((_ is Cons!13111) lt!316217))))

(assert (=> d!95147 (= (contains!3658 lt!316217 k0!2843) lt!316273)))

(declare-fun b!689648 () Bool)

(declare-fun e!392629 () Bool)

(assert (=> b!689648 (= e!392628 e!392629)))

(declare-fun res!454302 () Bool)

(assert (=> b!689648 (=> res!454302 e!392629)))

(assert (=> b!689648 (= res!454302 (= (h!14156 lt!316217) k0!2843))))

(declare-fun b!689649 () Bool)

(assert (=> b!689649 (= e!392629 (contains!3658 (t!19387 lt!316217) k0!2843))))

(assert (= (and d!95147 res!454303) b!689648))

(assert (= (and b!689648 (not res!454302)) b!689649))

(assert (=> d!95147 m!653337))

(declare-fun m!653355 () Bool)

(assert (=> d!95147 m!653355))

(declare-fun m!653357 () Bool)

(assert (=> b!689649 m!653357))

(assert (=> b!689517 d!95147))

(declare-fun d!95149 () Bool)

(declare-fun lt!316274 () Bool)

(assert (=> d!95149 (= lt!316274 (select (content!304 acc!681) k0!2843))))

(declare-fun e!392630 () Bool)

(assert (=> d!95149 (= lt!316274 e!392630)))

(declare-fun res!454305 () Bool)

(assert (=> d!95149 (=> (not res!454305) (not e!392630))))

(assert (=> d!95149 (= res!454305 ((_ is Cons!13111) acc!681))))

(assert (=> d!95149 (= (contains!3658 acc!681 k0!2843) lt!316274)))

(declare-fun b!689650 () Bool)

(declare-fun e!392631 () Bool)

(assert (=> b!689650 (= e!392630 e!392631)))

(declare-fun res!454304 () Bool)

(assert (=> b!689650 (=> res!454304 e!392631)))

(assert (=> b!689650 (= res!454304 (= (h!14156 acc!681) k0!2843))))

(declare-fun b!689651 () Bool)

(assert (=> b!689651 (= e!392631 (contains!3658 (t!19387 acc!681) k0!2843))))

(assert (= (and d!95149 res!454305) b!689650))

(assert (= (and b!689650 (not res!454304)) b!689651))

(assert (=> d!95149 m!653301))

(declare-fun m!653359 () Bool)

(assert (=> d!95149 m!653359))

(declare-fun m!653361 () Bool)

(assert (=> b!689651 m!653361))

(assert (=> b!689515 d!95149))

(declare-fun d!95151 () Bool)

(assert (=> d!95151 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!689505 d!95151))

(declare-fun d!95153 () Bool)

(declare-fun lt!316275 () Bool)

(assert (=> d!95153 (= lt!316275 (select (content!304 lt!316217) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!392632 () Bool)

(assert (=> d!95153 (= lt!316275 e!392632)))

(declare-fun res!454307 () Bool)

(assert (=> d!95153 (=> (not res!454307) (not e!392632))))

(assert (=> d!95153 (= res!454307 ((_ is Cons!13111) lt!316217))))

(assert (=> d!95153 (= (contains!3658 lt!316217 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316275)))

(declare-fun b!689652 () Bool)

(declare-fun e!392633 () Bool)

(assert (=> b!689652 (= e!392632 e!392633)))

(declare-fun res!454306 () Bool)

(assert (=> b!689652 (=> res!454306 e!392633)))

(assert (=> b!689652 (= res!454306 (= (h!14156 lt!316217) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689653 () Bool)

(assert (=> b!689653 (= e!392633 (contains!3658 (t!19387 lt!316217) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95153 res!454307) b!689652))

(assert (= (and b!689652 (not res!454306)) b!689653))

(assert (=> d!95153 m!653337))

(declare-fun m!653363 () Bool)

(assert (=> d!95153 m!653363))

(declare-fun m!653365 () Bool)

(assert (=> b!689653 m!653365))

(assert (=> b!689514 d!95153))

(declare-fun d!95155 () Bool)

(declare-fun res!454320 () Bool)

(declare-fun e!392648 () Bool)

(assert (=> d!95155 (=> res!454320 e!392648)))

(assert (=> d!95155 (= res!454320 (= (select (arr!19021 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!95155 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!392648)))

(declare-fun b!689668 () Bool)

(declare-fun e!392649 () Bool)

(assert (=> b!689668 (= e!392648 e!392649)))

(declare-fun res!454321 () Bool)

(assert (=> b!689668 (=> (not res!454321) (not e!392649))))

(assert (=> b!689668 (= res!454321 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19402 a!3626)))))

(declare-fun b!689669 () Bool)

(assert (=> b!689669 (= e!392649 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!95155 (not res!454320)) b!689668))

(assert (= (and b!689668 res!454321) b!689669))

(declare-fun m!653367 () Bool)

(assert (=> d!95155 m!653367))

(declare-fun m!653369 () Bool)

(assert (=> b!689669 m!653369))

(assert (=> b!689503 d!95155))

(declare-fun d!95159 () Bool)

(declare-fun res!454324 () Bool)

(declare-fun e!392652 () Bool)

(assert (=> d!95159 (=> res!454324 e!392652)))

(assert (=> d!95159 (= res!454324 ((_ is Nil!13112) lt!316217))))

(assert (=> d!95159 (= (noDuplicate!905 lt!316217) e!392652)))

(declare-fun b!689674 () Bool)

(declare-fun e!392653 () Bool)

(assert (=> b!689674 (= e!392652 e!392653)))

(declare-fun res!454325 () Bool)

(assert (=> b!689674 (=> (not res!454325) (not e!392653))))

(assert (=> b!689674 (= res!454325 (not (contains!3658 (t!19387 lt!316217) (h!14156 lt!316217))))))

(declare-fun b!689675 () Bool)

(assert (=> b!689675 (= e!392653 (noDuplicate!905 (t!19387 lt!316217)))))

(assert (= (and d!95159 (not res!454324)) b!689674))

(assert (= (and b!689674 res!454325) b!689675))

(declare-fun m!653371 () Bool)

(assert (=> b!689674 m!653371))

(declare-fun m!653373 () Bool)

(assert (=> b!689675 m!653373))

(assert (=> b!689502 d!95159))

(declare-fun b!689719 () Bool)

(declare-fun e!392691 () List!13115)

(declare-fun call!34192 () List!13115)

(assert (=> b!689719 (= e!392691 call!34192)))

(declare-fun b!689720 () Bool)

(declare-fun e!392690 () List!13115)

(assert (=> b!689720 (= e!392690 Nil!13112)))

(declare-fun b!689721 () Bool)

(assert (=> b!689721 (= e!392691 (Cons!13111 (h!14156 lt!316217) call!34192))))

(declare-fun d!95161 () Bool)

(declare-fun e!392689 () Bool)

(assert (=> d!95161 e!392689))

(declare-fun res!454351 () Bool)

(assert (=> d!95161 (=> (not res!454351) (not e!392689))))

(declare-fun lt!316281 () List!13115)

(declare-fun size!19404 (List!13115) Int)

(assert (=> d!95161 (= res!454351 (<= (size!19404 lt!316281) (size!19404 lt!316217)))))

(assert (=> d!95161 (= lt!316281 e!392690)))

(declare-fun c!78052 () Bool)

(assert (=> d!95161 (= c!78052 ((_ is Cons!13111) lt!316217))))

(assert (=> d!95161 (= (-!208 lt!316217 k0!2843) lt!316281)))

(declare-fun bm!34189 () Bool)

(assert (=> bm!34189 (= call!34192 (-!208 (t!19387 lt!316217) k0!2843))))

(declare-fun b!689722 () Bool)

(assert (=> b!689722 (= e!392689 (= (content!304 lt!316281) ((_ map and) (content!304 lt!316217) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2843 true)))))))

(declare-fun b!689723 () Bool)

(assert (=> b!689723 (= e!392690 e!392691)))

(declare-fun c!78051 () Bool)

(assert (=> b!689723 (= c!78051 (= k0!2843 (h!14156 lt!316217)))))

(assert (= (and d!95161 c!78052) b!689723))

(assert (= (and d!95161 (not c!78052)) b!689720))

(assert (= (and b!689723 c!78051) b!689719))

(assert (= (and b!689723 (not c!78051)) b!689721))

(assert (= (or b!689719 b!689721) bm!34189))

(assert (= (and d!95161 res!454351) b!689722))

(declare-fun m!653405 () Bool)

(assert (=> d!95161 m!653405))

(declare-fun m!653407 () Bool)

(assert (=> d!95161 m!653407))

(declare-fun m!653409 () Bool)

(assert (=> bm!34189 m!653409))

(declare-fun m!653411 () Bool)

(assert (=> b!689722 m!653411))

(assert (=> b!689722 m!653337))

(declare-fun m!653413 () Bool)

(assert (=> b!689722 m!653413))

(assert (=> b!689511 d!95161))

(declare-fun b!689745 () Bool)

(declare-fun e!392713 () Bool)

(declare-fun e!392712 () Bool)

(assert (=> b!689745 (= e!392713 e!392712)))

(declare-fun res!454370 () Bool)

(assert (=> b!689745 (=> res!454370 e!392712)))

(declare-fun e!392711 () Bool)

(assert (=> b!689745 (= res!454370 e!392711)))

(declare-fun res!454373 () Bool)

(assert (=> b!689745 (=> (not res!454373) (not e!392711))))

(assert (=> b!689745 (= res!454373 (= (h!14156 acc!681) (h!14156 acc!681)))))

(declare-fun b!689746 () Bool)

(assert (=> b!689746 (= e!392711 (subseq!243 (t!19387 acc!681) (t!19387 acc!681)))))

(declare-fun d!95173 () Bool)

(declare-fun res!454372 () Bool)

(declare-fun e!392714 () Bool)

(assert (=> d!95173 (=> res!454372 e!392714)))

(assert (=> d!95173 (= res!454372 ((_ is Nil!13112) acc!681))))

(assert (=> d!95173 (= (subseq!243 acc!681 acc!681) e!392714)))

(declare-fun b!689747 () Bool)

(assert (=> b!689747 (= e!392712 (subseq!243 acc!681 (t!19387 acc!681)))))

(declare-fun b!689744 () Bool)

(assert (=> b!689744 (= e!392714 e!392713)))

(declare-fun res!454371 () Bool)

(assert (=> b!689744 (=> (not res!454371) (not e!392713))))

(assert (=> b!689744 (= res!454371 ((_ is Cons!13111) acc!681))))

(assert (= (and d!95173 (not res!454372)) b!689744))

(assert (= (and b!689744 res!454371) b!689745))

(assert (= (and b!689745 res!454373) b!689746))

(assert (= (and b!689745 (not res!454370)) b!689747))

(declare-fun m!653433 () Bool)

(assert (=> b!689746 m!653433))

(declare-fun m!653435 () Bool)

(assert (=> b!689747 m!653435))

(assert (=> b!689511 d!95173))

(declare-fun d!95187 () Bool)

(declare-fun res!454376 () Bool)

(declare-fun e!392717 () Bool)

(assert (=> d!95187 (=> res!454376 e!392717)))

(assert (=> d!95187 (= res!454376 (= (select (arr!19021 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k0!2843))))

(assert (=> d!95187 (= (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!392717)))

(declare-fun b!689750 () Bool)

(declare-fun e!392718 () Bool)

(assert (=> b!689750 (= e!392717 e!392718)))

(declare-fun res!454377 () Bool)

(assert (=> b!689750 (=> (not res!454377) (not e!392718))))

(assert (=> b!689750 (= res!454377 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19402 a!3626)))))

(declare-fun b!689751 () Bool)

(assert (=> b!689751 (= e!392718 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95187 (not res!454376)) b!689750))

(assert (= (and b!689750 res!454377) b!689751))

(declare-fun m!653441 () Bool)

(assert (=> d!95187 m!653441))

(declare-fun m!653443 () Bool)

(assert (=> b!689751 m!653443))

(assert (=> b!689511 d!95187))

(declare-fun d!95191 () Bool)

(assert (=> d!95191 (= (-!208 ($colon$colon!407 acc!681 k0!2843) k0!2843) acc!681)))

(declare-fun lt!316291 () Unit!24342)

(declare-fun choose!16 ((_ BitVec 64) List!13115) Unit!24342)

(assert (=> d!95191 (= lt!316291 (choose!16 k0!2843 acc!681))))

(assert (=> d!95191 (not (contains!3658 acc!681 k0!2843))))

(assert (=> d!95191 (= (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681) lt!316291)))

(declare-fun bs!20202 () Bool)

(assert (= bs!20202 d!95191))

(assert (=> bs!20202 m!653183))

(assert (=> bs!20202 m!653183))

(declare-fun m!653457 () Bool)

(assert (=> bs!20202 m!653457))

(declare-fun m!653459 () Bool)

(assert (=> bs!20202 m!653459))

(assert (=> bs!20202 m!653209))

(assert (=> b!689511 d!95191))

(declare-fun d!95199 () Bool)

(assert (=> d!95199 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316217)))

(declare-fun lt!316297 () Unit!24342)

(declare-fun choose!66 (array!39707 (_ BitVec 64) (_ BitVec 32) List!13115 List!13115) Unit!24342)

(assert (=> d!95199 (= lt!316297 (choose!66 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!316217))))

(assert (=> d!95199 (bvslt (size!19402 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!95199 (= (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!316217) lt!316297)))

(declare-fun bs!20203 () Bool)

(assert (= bs!20203 d!95199))

(assert (=> bs!20203 m!653193))

(declare-fun m!653469 () Bool)

(assert (=> bs!20203 m!653469))

(assert (=> b!689511 d!95199))

(declare-fun bm!34192 () Bool)

(declare-fun call!34195 () Bool)

(declare-fun c!78055 () Bool)

(assert (=> bm!34192 (= call!34195 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!78055 (Cons!13111 (select (arr!19021 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) lt!316217) lt!316217)))))

(declare-fun b!689777 () Bool)

(declare-fun e!392746 () Bool)

(assert (=> b!689777 (= e!392746 call!34195)))

(declare-fun b!689778 () Bool)

(declare-fun e!392744 () Bool)

(assert (=> b!689778 (= e!392744 (contains!3658 lt!316217 (select (arr!19021 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!689779 () Bool)

(declare-fun e!392743 () Bool)

(declare-fun e!392745 () Bool)

(assert (=> b!689779 (= e!392743 e!392745)))

(declare-fun res!454403 () Bool)

(assert (=> b!689779 (=> (not res!454403) (not e!392745))))

(assert (=> b!689779 (= res!454403 (not e!392744))))

(declare-fun res!454402 () Bool)

(assert (=> b!689779 (=> (not res!454402) (not e!392744))))

(assert (=> b!689779 (= res!454402 (validKeyInArray!0 (select (arr!19021 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!689780 () Bool)

(assert (=> b!689780 (= e!392746 call!34195)))

(declare-fun d!95207 () Bool)

(declare-fun res!454401 () Bool)

(assert (=> d!95207 (=> res!454401 e!392743)))

(assert (=> d!95207 (= res!454401 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19402 a!3626)))))

(assert (=> d!95207 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316217) e!392743)))

(declare-fun b!689781 () Bool)

(assert (=> b!689781 (= e!392745 e!392746)))

(assert (=> b!689781 (= c!78055 (validKeyInArray!0 (select (arr!19021 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!95207 (not res!454401)) b!689779))

(assert (= (and b!689779 res!454402) b!689778))

(assert (= (and b!689779 res!454403) b!689781))

(assert (= (and b!689781 c!78055) b!689780))

(assert (= (and b!689781 (not c!78055)) b!689777))

(assert (= (or b!689780 b!689777) bm!34192))

(assert (=> bm!34192 m!653441))

(declare-fun m!653475 () Bool)

(assert (=> bm!34192 m!653475))

(assert (=> b!689778 m!653441))

(assert (=> b!689778 m!653441))

(declare-fun m!653477 () Bool)

(assert (=> b!689778 m!653477))

(assert (=> b!689779 m!653441))

(assert (=> b!689779 m!653441))

(declare-fun m!653479 () Bool)

(assert (=> b!689779 m!653479))

(assert (=> b!689781 m!653441))

(assert (=> b!689781 m!653441))

(assert (=> b!689781 m!653479))

(assert (=> b!689511 d!95207))

(declare-fun d!95213 () Bool)

(declare-fun res!454406 () Bool)

(declare-fun e!392749 () Bool)

(assert (=> d!95213 (=> res!454406 e!392749)))

(assert (=> d!95213 (= res!454406 (= (select (arr!19021 lt!316220) from!3004) k0!2843))))

(assert (=> d!95213 (= (arrayContainsKey!0 lt!316220 k0!2843 from!3004) e!392749)))

(declare-fun b!689784 () Bool)

(declare-fun e!392750 () Bool)

(assert (=> b!689784 (= e!392749 e!392750)))

(declare-fun res!454407 () Bool)

(assert (=> b!689784 (=> (not res!454407) (not e!392750))))

(assert (=> b!689784 (= res!454407 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19402 lt!316220)))))

(declare-fun b!689785 () Bool)

(assert (=> b!689785 (= e!392750 (arrayContainsKey!0 lt!316220 k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95213 (not res!454406)) b!689784))

(assert (= (and b!689784 res!454407) b!689785))

(assert (=> d!95213 m!653307))

(declare-fun m!653481 () Bool)

(assert (=> b!689785 m!653481))

(assert (=> b!689511 d!95213))

(declare-fun d!95217 () Bool)

(assert (=> d!95217 (subseq!243 acc!681 acc!681)))

(declare-fun lt!316304 () Unit!24342)

(declare-fun choose!36 (List!13115) Unit!24342)

(assert (=> d!95217 (= lt!316304 (choose!36 acc!681))))

(assert (=> d!95217 (= (lemmaListSubSeqRefl!0 acc!681) lt!316304)))

(declare-fun bs!20206 () Bool)

(assert (= bs!20206 d!95217))

(assert (=> bs!20206 m!653191))

(declare-fun m!653491 () Bool)

(assert (=> bs!20206 m!653491))

(assert (=> b!689511 d!95217))

(declare-fun d!95221 () Bool)

(assert (=> d!95221 (= (validKeyInArray!0 (select (arr!19021 a!3626) from!3004)) (and (not (= (select (arr!19021 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19021 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!689511 d!95221))

(declare-fun d!95225 () Bool)

(assert (=> d!95225 (= ($colon$colon!407 acc!681 k0!2843) (Cons!13111 k0!2843 acc!681))))

(assert (=> b!689511 d!95225))

(declare-fun bm!34194 () Bool)

(declare-fun call!34197 () Bool)

(declare-fun c!78057 () Bool)

(assert (=> bm!34194 (= call!34197 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!78057 (Cons!13111 (select (arr!19021 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!689793 () Bool)

(declare-fun e!392760 () Bool)

(assert (=> b!689793 (= e!392760 call!34197)))

(declare-fun e!392758 () Bool)

(declare-fun b!689794 () Bool)

(assert (=> b!689794 (= e!392758 (contains!3658 acc!681 (select (arr!19021 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!689795 () Bool)

(declare-fun e!392757 () Bool)

(declare-fun e!392759 () Bool)

(assert (=> b!689795 (= e!392757 e!392759)))

(declare-fun res!454415 () Bool)

(assert (=> b!689795 (=> (not res!454415) (not e!392759))))

(assert (=> b!689795 (= res!454415 (not e!392758))))

(declare-fun res!454414 () Bool)

(assert (=> b!689795 (=> (not res!454414) (not e!392758))))

(assert (=> b!689795 (= res!454414 (validKeyInArray!0 (select (arr!19021 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!689796 () Bool)

(assert (=> b!689796 (= e!392760 call!34197)))

(declare-fun d!95227 () Bool)

(declare-fun res!454413 () Bool)

(assert (=> d!95227 (=> res!454413 e!392757)))

(assert (=> d!95227 (= res!454413 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19402 a!3626)))))

(assert (=> d!95227 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!392757)))

(declare-fun b!689797 () Bool)

(assert (=> b!689797 (= e!392759 e!392760)))

(assert (=> b!689797 (= c!78057 (validKeyInArray!0 (select (arr!19021 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!95227 (not res!454413)) b!689795))

(assert (= (and b!689795 res!454414) b!689794))

(assert (= (and b!689795 res!454415) b!689797))

(assert (= (and b!689797 c!78057) b!689796))

(assert (= (and b!689797 (not c!78057)) b!689793))

(assert (= (or b!689796 b!689793) bm!34194))

(assert (=> bm!34194 m!653441))

(declare-fun m!653495 () Bool)

(assert (=> bm!34194 m!653495))

(assert (=> b!689794 m!653441))

(assert (=> b!689794 m!653441))

(declare-fun m!653497 () Bool)

(assert (=> b!689794 m!653497))

(assert (=> b!689795 m!653441))

(assert (=> b!689795 m!653441))

(assert (=> b!689795 m!653479))

(assert (=> b!689797 m!653441))

(assert (=> b!689797 m!653441))

(assert (=> b!689797 m!653479))

(assert (=> b!689511 d!95227))

(assert (=> b!689512 d!95147))

(assert (=> b!689510 d!95149))

(declare-fun d!95231 () Bool)

(assert (=> d!95231 (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))

(declare-fun lt!316307 () Unit!24342)

(declare-fun choose!13 (array!39707 (_ BitVec 64) (_ BitVec 32)) Unit!24342)

(assert (=> d!95231 (= lt!316307 (choose!13 a!3626 k0!2843 from!3004))))

(assert (=> d!95231 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!95231 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004) lt!316307)))

(declare-fun bs!20207 () Bool)

(assert (= bs!20207 d!95231))

(assert (=> bs!20207 m!653201))

(declare-fun m!653507 () Bool)

(assert (=> bs!20207 m!653507))

(assert (=> b!689499 d!95231))

(declare-fun bm!34195 () Bool)

(declare-fun call!34198 () Bool)

(declare-fun c!78058 () Bool)

(assert (=> bm!34195 (= call!34198 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78058 (Cons!13111 (select (arr!19021 a!3626) #b00000000000000000000000000000000) Nil!13112) Nil!13112)))))

(declare-fun b!689816 () Bool)

(declare-fun e!392782 () Bool)

(assert (=> b!689816 (= e!392782 call!34198)))

(declare-fun b!689817 () Bool)

(declare-fun e!392780 () Bool)

(assert (=> b!689817 (= e!392780 (contains!3658 Nil!13112 (select (arr!19021 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!689818 () Bool)

(declare-fun e!392779 () Bool)

(declare-fun e!392781 () Bool)

(assert (=> b!689818 (= e!392779 e!392781)))

(declare-fun res!454436 () Bool)

(assert (=> b!689818 (=> (not res!454436) (not e!392781))))

(assert (=> b!689818 (= res!454436 (not e!392780))))

(declare-fun res!454435 () Bool)

(assert (=> b!689818 (=> (not res!454435) (not e!392780))))

(assert (=> b!689818 (= res!454435 (validKeyInArray!0 (select (arr!19021 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!689819 () Bool)

(assert (=> b!689819 (= e!392782 call!34198)))

(declare-fun d!95237 () Bool)

(declare-fun res!454434 () Bool)

(assert (=> d!95237 (=> res!454434 e!392779)))

(assert (=> d!95237 (= res!454434 (bvsge #b00000000000000000000000000000000 (size!19402 a!3626)))))

(assert (=> d!95237 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13112) e!392779)))

(declare-fun b!689820 () Bool)

(assert (=> b!689820 (= e!392781 e!392782)))

(assert (=> b!689820 (= c!78058 (validKeyInArray!0 (select (arr!19021 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!95237 (not res!454434)) b!689818))

(assert (= (and b!689818 res!454435) b!689817))

(assert (= (and b!689818 res!454436) b!689820))

(assert (= (and b!689820 c!78058) b!689819))

(assert (= (and b!689820 (not c!78058)) b!689816))

(assert (= (or b!689819 b!689816) bm!34195))

(assert (=> bm!34195 m!653367))

(declare-fun m!653511 () Bool)

(assert (=> bm!34195 m!653511))

(assert (=> b!689817 m!653367))

(assert (=> b!689817 m!653367))

(declare-fun m!653513 () Bool)

(assert (=> b!689817 m!653513))

(assert (=> b!689818 m!653367))

(assert (=> b!689818 m!653367))

(declare-fun m!653515 () Bool)

(assert (=> b!689818 m!653515))

(assert (=> b!689820 m!653367))

(assert (=> b!689820 m!653367))

(assert (=> b!689820 m!653515))

(assert (=> b!689500 d!95237))

(declare-fun bm!34197 () Bool)

(declare-fun c!78060 () Bool)

(declare-fun call!34200 () Bool)

(assert (=> bm!34197 (= call!34200 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78060 (Cons!13111 (select (arr!19021 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!689826 () Bool)

(declare-fun e!392790 () Bool)

(assert (=> b!689826 (= e!392790 call!34200)))

(declare-fun b!689827 () Bool)

(declare-fun e!392788 () Bool)

(assert (=> b!689827 (= e!392788 (contains!3658 acc!681 (select (arr!19021 a!3626) from!3004)))))

(declare-fun b!689828 () Bool)

(declare-fun e!392787 () Bool)

(declare-fun e!392789 () Bool)

(assert (=> b!689828 (= e!392787 e!392789)))

(declare-fun res!454442 () Bool)

(assert (=> b!689828 (=> (not res!454442) (not e!392789))))

(assert (=> b!689828 (= res!454442 (not e!392788))))

(declare-fun res!454441 () Bool)

(assert (=> b!689828 (=> (not res!454441) (not e!392788))))

(assert (=> b!689828 (= res!454441 (validKeyInArray!0 (select (arr!19021 a!3626) from!3004)))))

(declare-fun b!689829 () Bool)

(assert (=> b!689829 (= e!392790 call!34200)))

(declare-fun d!95241 () Bool)

(declare-fun res!454440 () Bool)

(assert (=> d!95241 (=> res!454440 e!392787)))

(assert (=> d!95241 (= res!454440 (bvsge from!3004 (size!19402 a!3626)))))

(assert (=> d!95241 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!392787)))

(declare-fun b!689830 () Bool)

(assert (=> b!689830 (= e!392789 e!392790)))

(assert (=> b!689830 (= c!78060 (validKeyInArray!0 (select (arr!19021 a!3626) from!3004)))))

(assert (= (and d!95241 (not res!454440)) b!689828))

(assert (= (and b!689828 res!454441) b!689827))

(assert (= (and b!689828 res!454442) b!689830))

(assert (= (and b!689830 c!78060) b!689829))

(assert (= (and b!689830 (not c!78060)) b!689826))

(assert (= (or b!689829 b!689826) bm!34197))

(assert (=> bm!34197 m!653187))

(declare-fun m!653521 () Bool)

(assert (=> bm!34197 m!653521))

(assert (=> b!689827 m!653187))

(assert (=> b!689827 m!653187))

(declare-fun m!653523 () Bool)

(assert (=> b!689827 m!653523))

(assert (=> b!689828 m!653187))

(assert (=> b!689828 m!653187))

(assert (=> b!689828 m!653189))

(assert (=> b!689830 m!653187))

(assert (=> b!689830 m!653187))

(assert (=> b!689830 m!653189))

(assert (=> b!689521 d!95241))

(declare-fun d!95245 () Bool)

(declare-fun lt!316311 () Bool)

(assert (=> d!95245 (= lt!316311 (select (content!304 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!392791 () Bool)

(assert (=> d!95245 (= lt!316311 e!392791)))

(declare-fun res!454444 () Bool)

(assert (=> d!95245 (=> (not res!454444) (not e!392791))))

(assert (=> d!95245 (= res!454444 ((_ is Cons!13111) acc!681))))

(assert (=> d!95245 (= (contains!3658 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316311)))

(declare-fun b!689831 () Bool)

(declare-fun e!392792 () Bool)

(assert (=> b!689831 (= e!392791 e!392792)))

(declare-fun res!454443 () Bool)

(assert (=> b!689831 (=> res!454443 e!392792)))

(assert (=> b!689831 (= res!454443 (= (h!14156 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689832 () Bool)

(assert (=> b!689832 (= e!392792 (contains!3658 (t!19387 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95245 res!454444) b!689831))

(assert (= (and b!689831 (not res!454443)) b!689832))

(assert (=> d!95245 m!653301))

(declare-fun m!653527 () Bool)

(assert (=> d!95245 m!653527))

(declare-fun m!653529 () Bool)

(assert (=> b!689832 m!653529))

(assert (=> b!689498 d!95245))

(declare-fun d!95249 () Bool)

(assert (=> d!95249 (= (array_inv!14795 a!3626) (bvsge (size!19402 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61610 d!95249))

(declare-fun d!95251 () Bool)

(assert (=> d!95251 (= ($colon$colon!407 acc!681 (select (arr!19021 a!3626) from!3004)) (Cons!13111 (select (arr!19021 a!3626) from!3004) acc!681))))

(assert (=> b!689519 d!95251))

(assert (=> b!689519 d!95173))

(declare-fun d!95253 () Bool)

(assert (=> d!95253 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!316320 () Unit!24342)

(declare-fun choose!80 (array!39707 List!13115 List!13115 (_ BitVec 32)) Unit!24342)

(assert (=> d!95253 (= lt!316320 (choose!80 a!3626 ($colon$colon!407 acc!681 (select (arr!19021 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!95253 (bvslt (size!19402 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!95253 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!407 acc!681 (select (arr!19021 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!316320)))

(declare-fun bs!20211 () Bool)

(assert (= bs!20211 d!95253))

(assert (=> bs!20211 m!653173))

(assert (=> bs!20211 m!653225))

(declare-fun m!653547 () Bool)

(assert (=> bs!20211 m!653547))

(assert (=> b!689519 d!95253))

(assert (=> b!689519 d!95217))

(assert (=> b!689519 d!95227))

(check-sat (not d!95191) (not d!95217) (not bm!34194) (not d!95147) (not d!95149) (not d!95231) (not d!95161) (not b!689626) (not b!689827) (not bm!34178) (not bm!34189) (not b!689674) (not b!689647) (not b!689618) (not d!95245) (not d!95199) (not d!95125) (not b!689832) (not b!689779) (not bm!34179) (not bm!34192) (not b!689746) (not b!689606) (not bm!34195) (not b!689795) (not b!689669) (not b!689675) (not b!689624) (not b!689781) (not b!689818) (not b!689646) (not d!95153) (not bm!34197) (not b!689722) (not b!689778) (not b!689651) (not b!689653) (not b!689635) (not b!689828) (not b!689649) (not d!95253) (not b!689747) (not d!95131) (not b!689794) (not b!689820) (not b!689621) (not d!95139) (not b!689619) (not b!689830) (not b!689785) (not b!689639) (not b!689623) (not b!689751) (not b!689817) (not b!689797))
(check-sat)
