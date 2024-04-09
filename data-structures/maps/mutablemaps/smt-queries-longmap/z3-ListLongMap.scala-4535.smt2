; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62922 () Bool)

(assert start!62922)

(declare-fun b!709079 () Bool)

(declare-fun e!399063 () Bool)

(declare-datatypes ((List!13412 0))(
  ( (Nil!13409) (Cons!13408 (h!14453 (_ BitVec 64)) (t!19714 List!13412)) )
))
(declare-fun lt!318149 () List!13412)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun contains!3955 (List!13412 (_ BitVec 64)) Bool)

(assert (=> b!709079 (= e!399063 (contains!3955 lt!318149 k0!2824))))

(declare-fun b!709080 () Bool)

(declare-fun res!472797 () Bool)

(declare-fun e!399061 () Bool)

(assert (=> b!709080 (=> (not res!472797) (not e!399061))))

(declare-fun acc!652 () List!13412)

(assert (=> b!709080 (= res!472797 (not (contains!3955 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709081 () Bool)

(declare-fun res!472809 () Bool)

(assert (=> b!709081 (=> (not res!472809) (not e!399061))))

(declare-datatypes ((array!40343 0))(
  ( (array!40344 (arr!19318 (Array (_ BitVec 32) (_ BitVec 64))) (size!19711 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40343)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!709081 (= res!472809 (validKeyInArray!0 (select (arr!19318 a!3591) from!2969)))))

(declare-fun b!709082 () Bool)

(declare-fun res!472802 () Bool)

(assert (=> b!709082 (=> (not res!472802) (not e!399061))))

(declare-fun noDuplicate!1202 (List!13412) Bool)

(assert (=> b!709082 (= res!472802 (noDuplicate!1202 acc!652))))

(declare-fun b!709084 () Bool)

(declare-fun res!472808 () Bool)

(assert (=> b!709084 (=> (not res!472808) (not e!399063))))

(declare-fun arrayContainsKey!0 (array!40343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!709084 (= res!472808 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!709085 () Bool)

(declare-fun res!472798 () Bool)

(assert (=> b!709085 (=> (not res!472798) (not e!399063))))

(assert (=> b!709085 (= res!472798 (not (contains!3955 lt!318149 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709086 () Bool)

(declare-fun res!472807 () Bool)

(assert (=> b!709086 (=> (not res!472807) (not e!399061))))

(assert (=> b!709086 (= res!472807 (validKeyInArray!0 k0!2824))))

(declare-fun b!709087 () Bool)

(declare-fun res!472804 () Bool)

(assert (=> b!709087 (=> (not res!472804) (not e!399061))))

(assert (=> b!709087 (= res!472804 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19711 a!3591)))))

(declare-fun b!709088 () Bool)

(declare-fun res!472803 () Bool)

(assert (=> b!709088 (=> (not res!472803) (not e!399061))))

(declare-fun newAcc!49 () List!13412)

(assert (=> b!709088 (= res!472803 (not (contains!3955 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709089 () Bool)

(declare-fun res!472810 () Bool)

(assert (=> b!709089 (=> (not res!472810) (not e!399063))))

(assert (=> b!709089 (= res!472810 (not (contains!3955 lt!318149 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709090 () Bool)

(declare-fun res!472812 () Bool)

(assert (=> b!709090 (=> (not res!472812) (not e!399061))))

(assert (=> b!709090 (= res!472812 (contains!3955 newAcc!49 k0!2824))))

(declare-fun b!709091 () Bool)

(declare-fun res!472794 () Bool)

(assert (=> b!709091 (=> (not res!472794) (not e!399061))))

(declare-fun subseq!399 (List!13412 List!13412) Bool)

(assert (=> b!709091 (= res!472794 (subseq!399 acc!652 newAcc!49))))

(declare-fun b!709092 () Bool)

(assert (=> b!709092 (= e!399061 e!399063)))

(declare-fun res!472806 () Bool)

(assert (=> b!709092 (=> (not res!472806) (not e!399063))))

(assert (=> b!709092 (= res!472806 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!509 (List!13412 (_ BitVec 64)) List!13412)

(assert (=> b!709092 (= lt!318149 ($colon$colon!509 acc!652 (select (arr!19318 a!3591) from!2969)))))

(declare-fun b!709093 () Bool)

(declare-fun res!472811 () Bool)

(assert (=> b!709093 (=> (not res!472811) (not e!399061))))

(declare-fun -!364 (List!13412 (_ BitVec 64)) List!13412)

(assert (=> b!709093 (= res!472811 (= (-!364 newAcc!49 k0!2824) acc!652))))

(declare-fun b!709094 () Bool)

(declare-fun res!472805 () Bool)

(assert (=> b!709094 (=> (not res!472805) (not e!399061))))

(assert (=> b!709094 (= res!472805 (not (contains!3955 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709095 () Bool)

(declare-fun res!472795 () Bool)

(assert (=> b!709095 (=> (not res!472795) (not e!399061))))

(declare-fun arrayNoDuplicates!0 (array!40343 (_ BitVec 32) List!13412) Bool)

(assert (=> b!709095 (= res!472795 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!709096 () Bool)

(declare-fun res!472796 () Bool)

(assert (=> b!709096 (=> (not res!472796) (not e!399063))))

(assert (=> b!709096 (= res!472796 (noDuplicate!1202 ($colon$colon!509 newAcc!49 (select (arr!19318 a!3591) from!2969))))))

(declare-fun b!709083 () Bool)

(declare-fun res!472792 () Bool)

(assert (=> b!709083 (=> (not res!472792) (not e!399063))))

(assert (=> b!709083 (= res!472792 (noDuplicate!1202 lt!318149))))

(declare-fun res!472793 () Bool)

(assert (=> start!62922 (=> (not res!472793) (not e!399061))))

(assert (=> start!62922 (= res!472793 (and (bvslt (size!19711 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19711 a!3591))))))

(assert (=> start!62922 e!399061))

(assert (=> start!62922 true))

(declare-fun array_inv!15092 (array!40343) Bool)

(assert (=> start!62922 (array_inv!15092 a!3591)))

(declare-fun b!709097 () Bool)

(declare-fun res!472791 () Bool)

(assert (=> b!709097 (=> (not res!472791) (not e!399061))))

(assert (=> b!709097 (= res!472791 (noDuplicate!1202 newAcc!49))))

(declare-fun b!709098 () Bool)

(declare-fun res!472801 () Bool)

(assert (=> b!709098 (=> (not res!472801) (not e!399061))))

(assert (=> b!709098 (= res!472801 (not (contains!3955 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709099 () Bool)

(declare-fun res!472799 () Bool)

(assert (=> b!709099 (=> (not res!472799) (not e!399061))))

(assert (=> b!709099 (= res!472799 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!709100 () Bool)

(declare-fun res!472800 () Bool)

(assert (=> b!709100 (=> (not res!472800) (not e!399061))))

(assert (=> b!709100 (= res!472800 (not (contains!3955 acc!652 k0!2824)))))

(assert (= (and start!62922 res!472793) b!709082))

(assert (= (and b!709082 res!472802) b!709097))

(assert (= (and b!709097 res!472791) b!709080))

(assert (= (and b!709080 res!472797) b!709094))

(assert (= (and b!709094 res!472805) b!709099))

(assert (= (and b!709099 res!472799) b!709100))

(assert (= (and b!709100 res!472800) b!709086))

(assert (= (and b!709086 res!472807) b!709095))

(assert (= (and b!709095 res!472795) b!709091))

(assert (= (and b!709091 res!472794) b!709090))

(assert (= (and b!709090 res!472812) b!709093))

(assert (= (and b!709093 res!472811) b!709098))

(assert (= (and b!709098 res!472801) b!709088))

(assert (= (and b!709088 res!472803) b!709087))

(assert (= (and b!709087 res!472804) b!709081))

(assert (= (and b!709081 res!472809) b!709092))

(assert (= (and b!709092 res!472806) b!709083))

(assert (= (and b!709083 res!472792) b!709096))

(assert (= (and b!709096 res!472796) b!709089))

(assert (= (and b!709089 res!472810) b!709085))

(assert (= (and b!709085 res!472798) b!709084))

(assert (= (and b!709084 res!472808) b!709079))

(declare-fun m!666483 () Bool)

(assert (=> b!709085 m!666483))

(declare-fun m!666485 () Bool)

(assert (=> b!709079 m!666485))

(declare-fun m!666487 () Bool)

(assert (=> b!709100 m!666487))

(declare-fun m!666489 () Bool)

(assert (=> b!709082 m!666489))

(declare-fun m!666491 () Bool)

(assert (=> b!709083 m!666491))

(declare-fun m!666493 () Bool)

(assert (=> b!709095 m!666493))

(declare-fun m!666495 () Bool)

(assert (=> b!709089 m!666495))

(declare-fun m!666497 () Bool)

(assert (=> b!709099 m!666497))

(declare-fun m!666499 () Bool)

(assert (=> b!709090 m!666499))

(declare-fun m!666501 () Bool)

(assert (=> b!709097 m!666501))

(declare-fun m!666503 () Bool)

(assert (=> b!709081 m!666503))

(assert (=> b!709081 m!666503))

(declare-fun m!666505 () Bool)

(assert (=> b!709081 m!666505))

(declare-fun m!666507 () Bool)

(assert (=> b!709086 m!666507))

(declare-fun m!666509 () Bool)

(assert (=> b!709080 m!666509))

(declare-fun m!666511 () Bool)

(assert (=> b!709094 m!666511))

(assert (=> b!709092 m!666503))

(assert (=> b!709092 m!666503))

(declare-fun m!666513 () Bool)

(assert (=> b!709092 m!666513))

(declare-fun m!666515 () Bool)

(assert (=> b!709098 m!666515))

(assert (=> b!709096 m!666503))

(assert (=> b!709096 m!666503))

(declare-fun m!666517 () Bool)

(assert (=> b!709096 m!666517))

(assert (=> b!709096 m!666517))

(declare-fun m!666519 () Bool)

(assert (=> b!709096 m!666519))

(declare-fun m!666521 () Bool)

(assert (=> b!709091 m!666521))

(declare-fun m!666523 () Bool)

(assert (=> start!62922 m!666523))

(declare-fun m!666525 () Bool)

(assert (=> b!709093 m!666525))

(declare-fun m!666527 () Bool)

(assert (=> b!709084 m!666527))

(declare-fun m!666529 () Bool)

(assert (=> b!709088 m!666529))

(check-sat (not b!709094) (not b!709089) (not b!709085) (not b!709092) (not b!709079) (not b!709083) (not b!709088) (not start!62922) (not b!709093) (not b!709086) (not b!709081) (not b!709080) (not b!709099) (not b!709091) (not b!709100) (not b!709097) (not b!709090) (not b!709082) (not b!709098) (not b!709096) (not b!709084) (not b!709095))
(check-sat)
(get-model)

(declare-fun d!96975 () Bool)

(assert (=> d!96975 (= (validKeyInArray!0 k0!2824) (and (not (= k0!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!709086 d!96975))

(declare-fun d!96977 () Bool)

(declare-fun res!472883 () Bool)

(declare-fun e!399077 () Bool)

(assert (=> d!96977 (=> res!472883 e!399077)))

(get-info :version)

(assert (=> d!96977 (= res!472883 ((_ is Nil!13409) newAcc!49))))

(assert (=> d!96977 (= (noDuplicate!1202 newAcc!49) e!399077)))

(declare-fun b!709171 () Bool)

(declare-fun e!399078 () Bool)

(assert (=> b!709171 (= e!399077 e!399078)))

(declare-fun res!472884 () Bool)

(assert (=> b!709171 (=> (not res!472884) (not e!399078))))

(assert (=> b!709171 (= res!472884 (not (contains!3955 (t!19714 newAcc!49) (h!14453 newAcc!49))))))

(declare-fun b!709172 () Bool)

(assert (=> b!709172 (= e!399078 (noDuplicate!1202 (t!19714 newAcc!49)))))

(assert (= (and d!96977 (not res!472883)) b!709171))

(assert (= (and b!709171 res!472884) b!709172))

(declare-fun m!666579 () Bool)

(assert (=> b!709171 m!666579))

(declare-fun m!666581 () Bool)

(assert (=> b!709172 m!666581))

(assert (=> b!709097 d!96977))

(declare-fun d!96979 () Bool)

(declare-fun lt!318155 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!346 (List!13412) (InoxSet (_ BitVec 64)))

(assert (=> d!96979 (= lt!318155 (select (content!346 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399083 () Bool)

(assert (=> d!96979 (= lt!318155 e!399083)))

(declare-fun res!472889 () Bool)

(assert (=> d!96979 (=> (not res!472889) (not e!399083))))

(assert (=> d!96979 (= res!472889 ((_ is Cons!13408) newAcc!49))))

(assert (=> d!96979 (= (contains!3955 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318155)))

(declare-fun b!709177 () Bool)

(declare-fun e!399084 () Bool)

(assert (=> b!709177 (= e!399083 e!399084)))

(declare-fun res!472890 () Bool)

(assert (=> b!709177 (=> res!472890 e!399084)))

(assert (=> b!709177 (= res!472890 (= (h!14453 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709178 () Bool)

(assert (=> b!709178 (= e!399084 (contains!3955 (t!19714 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96979 res!472889) b!709177))

(assert (= (and b!709177 (not res!472890)) b!709178))

(declare-fun m!666583 () Bool)

(assert (=> d!96979 m!666583))

(declare-fun m!666585 () Bool)

(assert (=> d!96979 m!666585))

(declare-fun m!666587 () Bool)

(assert (=> b!709178 m!666587))

(assert (=> b!709098 d!96979))

(declare-fun d!96981 () Bool)

(declare-fun lt!318156 () Bool)

(assert (=> d!96981 (= lt!318156 (select (content!346 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399085 () Bool)

(assert (=> d!96981 (= lt!318156 e!399085)))

(declare-fun res!472891 () Bool)

(assert (=> d!96981 (=> (not res!472891) (not e!399085))))

(assert (=> d!96981 (= res!472891 ((_ is Cons!13408) newAcc!49))))

(assert (=> d!96981 (= (contains!3955 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318156)))

(declare-fun b!709179 () Bool)

(declare-fun e!399086 () Bool)

(assert (=> b!709179 (= e!399085 e!399086)))

(declare-fun res!472892 () Bool)

(assert (=> b!709179 (=> res!472892 e!399086)))

(assert (=> b!709179 (= res!472892 (= (h!14453 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709180 () Bool)

(assert (=> b!709180 (= e!399086 (contains!3955 (t!19714 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96981 res!472891) b!709179))

(assert (= (and b!709179 (not res!472892)) b!709180))

(assert (=> d!96981 m!666583))

(declare-fun m!666589 () Bool)

(assert (=> d!96981 m!666589))

(declare-fun m!666591 () Bool)

(assert (=> b!709180 m!666591))

(assert (=> b!709088 d!96981))

(declare-fun d!96983 () Bool)

(declare-fun res!472897 () Bool)

(declare-fun e!399091 () Bool)

(assert (=> d!96983 (=> res!472897 e!399091)))

(assert (=> d!96983 (= res!472897 (= (select (arr!19318 a!3591) from!2969) k0!2824))))

(assert (=> d!96983 (= (arrayContainsKey!0 a!3591 k0!2824 from!2969) e!399091)))

(declare-fun b!709185 () Bool)

(declare-fun e!399092 () Bool)

(assert (=> b!709185 (= e!399091 e!399092)))

(declare-fun res!472898 () Bool)

(assert (=> b!709185 (=> (not res!472898) (not e!399092))))

(assert (=> b!709185 (= res!472898 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19711 a!3591)))))

(declare-fun b!709186 () Bool)

(assert (=> b!709186 (= e!399092 (arrayContainsKey!0 a!3591 k0!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!96983 (not res!472897)) b!709185))

(assert (= (and b!709185 res!472898) b!709186))

(assert (=> d!96983 m!666503))

(declare-fun m!666593 () Bool)

(assert (=> b!709186 m!666593))

(assert (=> b!709099 d!96983))

(declare-fun d!96985 () Bool)

(declare-fun lt!318157 () Bool)

(assert (=> d!96985 (= lt!318157 (select (content!346 lt!318149) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399093 () Bool)

(assert (=> d!96985 (= lt!318157 e!399093)))

(declare-fun res!472899 () Bool)

(assert (=> d!96985 (=> (not res!472899) (not e!399093))))

(assert (=> d!96985 (= res!472899 ((_ is Cons!13408) lt!318149))))

(assert (=> d!96985 (= (contains!3955 lt!318149 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318157)))

(declare-fun b!709187 () Bool)

(declare-fun e!399094 () Bool)

(assert (=> b!709187 (= e!399093 e!399094)))

(declare-fun res!472900 () Bool)

(assert (=> b!709187 (=> res!472900 e!399094)))

(assert (=> b!709187 (= res!472900 (= (h!14453 lt!318149) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709188 () Bool)

(assert (=> b!709188 (= e!399094 (contains!3955 (t!19714 lt!318149) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96985 res!472899) b!709187))

(assert (= (and b!709187 (not res!472900)) b!709188))

(declare-fun m!666595 () Bool)

(assert (=> d!96985 m!666595))

(declare-fun m!666597 () Bool)

(assert (=> d!96985 m!666597))

(declare-fun m!666599 () Bool)

(assert (=> b!709188 m!666599))

(assert (=> b!709089 d!96985))

(declare-fun d!96987 () Bool)

(declare-fun lt!318158 () Bool)

(assert (=> d!96987 (= lt!318158 (select (content!346 acc!652) k0!2824))))

(declare-fun e!399095 () Bool)

(assert (=> d!96987 (= lt!318158 e!399095)))

(declare-fun res!472901 () Bool)

(assert (=> d!96987 (=> (not res!472901) (not e!399095))))

(assert (=> d!96987 (= res!472901 ((_ is Cons!13408) acc!652))))

(assert (=> d!96987 (= (contains!3955 acc!652 k0!2824) lt!318158)))

(declare-fun b!709189 () Bool)

(declare-fun e!399096 () Bool)

(assert (=> b!709189 (= e!399095 e!399096)))

(declare-fun res!472902 () Bool)

(assert (=> b!709189 (=> res!472902 e!399096)))

(assert (=> b!709189 (= res!472902 (= (h!14453 acc!652) k0!2824))))

(declare-fun b!709190 () Bool)

(assert (=> b!709190 (= e!399096 (contains!3955 (t!19714 acc!652) k0!2824))))

(assert (= (and d!96987 res!472901) b!709189))

(assert (= (and b!709189 (not res!472902)) b!709190))

(declare-fun m!666601 () Bool)

(assert (=> d!96987 m!666601))

(declare-fun m!666603 () Bool)

(assert (=> d!96987 m!666603))

(declare-fun m!666605 () Bool)

(assert (=> b!709190 m!666605))

(assert (=> b!709100 d!96987))

(declare-fun d!96989 () Bool)

(declare-fun lt!318159 () Bool)

(assert (=> d!96989 (= lt!318159 (select (content!346 lt!318149) k0!2824))))

(declare-fun e!399097 () Bool)

(assert (=> d!96989 (= lt!318159 e!399097)))

(declare-fun res!472903 () Bool)

(assert (=> d!96989 (=> (not res!472903) (not e!399097))))

(assert (=> d!96989 (= res!472903 ((_ is Cons!13408) lt!318149))))

(assert (=> d!96989 (= (contains!3955 lt!318149 k0!2824) lt!318159)))

(declare-fun b!709191 () Bool)

(declare-fun e!399098 () Bool)

(assert (=> b!709191 (= e!399097 e!399098)))

(declare-fun res!472904 () Bool)

(assert (=> b!709191 (=> res!472904 e!399098)))

(assert (=> b!709191 (= res!472904 (= (h!14453 lt!318149) k0!2824))))

(declare-fun b!709192 () Bool)

(assert (=> b!709192 (= e!399098 (contains!3955 (t!19714 lt!318149) k0!2824))))

(assert (= (and d!96989 res!472903) b!709191))

(assert (= (and b!709191 (not res!472904)) b!709192))

(assert (=> d!96989 m!666595))

(declare-fun m!666607 () Bool)

(assert (=> d!96989 m!666607))

(declare-fun m!666609 () Bool)

(assert (=> b!709192 m!666609))

(assert (=> b!709079 d!96989))

(declare-fun d!96991 () Bool)

(declare-fun lt!318160 () Bool)

(assert (=> d!96991 (= lt!318160 (select (content!346 newAcc!49) k0!2824))))

(declare-fun e!399099 () Bool)

(assert (=> d!96991 (= lt!318160 e!399099)))

(declare-fun res!472905 () Bool)

(assert (=> d!96991 (=> (not res!472905) (not e!399099))))

(assert (=> d!96991 (= res!472905 ((_ is Cons!13408) newAcc!49))))

(assert (=> d!96991 (= (contains!3955 newAcc!49 k0!2824) lt!318160)))

(declare-fun b!709193 () Bool)

(declare-fun e!399100 () Bool)

(assert (=> b!709193 (= e!399099 e!399100)))

(declare-fun res!472906 () Bool)

(assert (=> b!709193 (=> res!472906 e!399100)))

(assert (=> b!709193 (= res!472906 (= (h!14453 newAcc!49) k0!2824))))

(declare-fun b!709194 () Bool)

(assert (=> b!709194 (= e!399100 (contains!3955 (t!19714 newAcc!49) k0!2824))))

(assert (= (and d!96991 res!472905) b!709193))

(assert (= (and b!709193 (not res!472906)) b!709194))

(assert (=> d!96991 m!666583))

(declare-fun m!666611 () Bool)

(assert (=> d!96991 m!666611))

(declare-fun m!666613 () Bool)

(assert (=> b!709194 m!666613))

(assert (=> b!709090 d!96991))

(declare-fun d!96995 () Bool)

(declare-fun lt!318161 () Bool)

(assert (=> d!96995 (= lt!318161 (select (content!346 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399101 () Bool)

(assert (=> d!96995 (= lt!318161 e!399101)))

(declare-fun res!472907 () Bool)

(assert (=> d!96995 (=> (not res!472907) (not e!399101))))

(assert (=> d!96995 (= res!472907 ((_ is Cons!13408) acc!652))))

(assert (=> d!96995 (= (contains!3955 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318161)))

(declare-fun b!709195 () Bool)

(declare-fun e!399102 () Bool)

(assert (=> b!709195 (= e!399101 e!399102)))

(declare-fun res!472908 () Bool)

(assert (=> b!709195 (=> res!472908 e!399102)))

(assert (=> b!709195 (= res!472908 (= (h!14453 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709196 () Bool)

(assert (=> b!709196 (= e!399102 (contains!3955 (t!19714 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96995 res!472907) b!709195))

(assert (= (and b!709195 (not res!472908)) b!709196))

(assert (=> d!96995 m!666601))

(declare-fun m!666615 () Bool)

(assert (=> d!96995 m!666615))

(declare-fun m!666617 () Bool)

(assert (=> b!709196 m!666617))

(assert (=> b!709080 d!96995))

(declare-fun b!709215 () Bool)

(declare-fun e!399117 () Bool)

(assert (=> b!709215 (= e!399117 (subseq!399 (t!19714 acc!652) (t!19714 newAcc!49)))))

(declare-fun b!709216 () Bool)

(declare-fun e!399116 () Bool)

(assert (=> b!709216 (= e!399116 (subseq!399 acc!652 (t!19714 newAcc!49)))))

(declare-fun b!709214 () Bool)

(declare-fun e!399119 () Bool)

(assert (=> b!709214 (= e!399119 e!399116)))

(declare-fun res!472917 () Bool)

(assert (=> b!709214 (=> res!472917 e!399116)))

(assert (=> b!709214 (= res!472917 e!399117)))

(declare-fun res!472919 () Bool)

(assert (=> b!709214 (=> (not res!472919) (not e!399117))))

(assert (=> b!709214 (= res!472919 (= (h!14453 acc!652) (h!14453 newAcc!49)))))

(declare-fun b!709213 () Bool)

(declare-fun e!399118 () Bool)

(assert (=> b!709213 (= e!399118 e!399119)))

(declare-fun res!472918 () Bool)

(assert (=> b!709213 (=> (not res!472918) (not e!399119))))

(assert (=> b!709213 (= res!472918 ((_ is Cons!13408) newAcc!49))))

(declare-fun d!96997 () Bool)

(declare-fun res!472920 () Bool)

(assert (=> d!96997 (=> res!472920 e!399118)))

(assert (=> d!96997 (= res!472920 ((_ is Nil!13409) acc!652))))

(assert (=> d!96997 (= (subseq!399 acc!652 newAcc!49) e!399118)))

(assert (= (and d!96997 (not res!472920)) b!709213))

(assert (= (and b!709213 res!472918) b!709214))

(assert (= (and b!709214 res!472919) b!709215))

(assert (= (and b!709214 (not res!472917)) b!709216))

(declare-fun m!666619 () Bool)

(assert (=> b!709215 m!666619))

(declare-fun m!666621 () Bool)

(assert (=> b!709216 m!666621))

(assert (=> b!709091 d!96997))

(declare-fun d!97001 () Bool)

(assert (=> d!97001 (= (validKeyInArray!0 (select (arr!19318 a!3591) from!2969)) (and (not (= (select (arr!19318 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19318 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!709081 d!97001))

(declare-fun d!97003 () Bool)

(assert (=> d!97003 (= ($colon$colon!509 acc!652 (select (arr!19318 a!3591) from!2969)) (Cons!13408 (select (arr!19318 a!3591) from!2969) acc!652))))

(assert (=> b!709092 d!97003))

(declare-fun d!97005 () Bool)

(declare-fun res!472931 () Bool)

(declare-fun e!399130 () Bool)

(assert (=> d!97005 (=> res!472931 e!399130)))

(assert (=> d!97005 (= res!472931 ((_ is Nil!13409) acc!652))))

(assert (=> d!97005 (= (noDuplicate!1202 acc!652) e!399130)))

(declare-fun b!709227 () Bool)

(declare-fun e!399131 () Bool)

(assert (=> b!709227 (= e!399130 e!399131)))

(declare-fun res!472932 () Bool)

(assert (=> b!709227 (=> (not res!472932) (not e!399131))))

(assert (=> b!709227 (= res!472932 (not (contains!3955 (t!19714 acc!652) (h!14453 acc!652))))))

(declare-fun b!709228 () Bool)

(assert (=> b!709228 (= e!399131 (noDuplicate!1202 (t!19714 acc!652)))))

(assert (= (and d!97005 (not res!472931)) b!709227))

(assert (= (and b!709227 res!472932) b!709228))

(declare-fun m!666623 () Bool)

(assert (=> b!709227 m!666623))

(declare-fun m!666625 () Bool)

(assert (=> b!709228 m!666625))

(assert (=> b!709082 d!97005))

(declare-fun b!709266 () Bool)

(declare-fun e!399166 () List!13412)

(declare-fun call!34437 () List!13412)

(assert (=> b!709266 (= e!399166 (Cons!13408 (h!14453 newAcc!49) call!34437))))

(declare-fun b!709267 () Bool)

(assert (=> b!709267 (= e!399166 call!34437)))

(declare-fun e!399165 () Bool)

(declare-fun b!709268 () Bool)

(declare-fun lt!318173 () List!13412)

(assert (=> b!709268 (= e!399165 (= (content!346 lt!318173) ((_ map and) (content!346 newAcc!49) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun b!709269 () Bool)

(declare-fun e!399164 () List!13412)

(assert (=> b!709269 (= e!399164 Nil!13409)))

(declare-fun d!97007 () Bool)

(assert (=> d!97007 e!399165))

(declare-fun res!472958 () Bool)

(assert (=> d!97007 (=> (not res!472958) (not e!399165))))

(declare-fun size!19715 (List!13412) Int)

(assert (=> d!97007 (= res!472958 (<= (size!19715 lt!318173) (size!19715 newAcc!49)))))

(assert (=> d!97007 (= lt!318173 e!399164)))

(declare-fun c!78521 () Bool)

(assert (=> d!97007 (= c!78521 ((_ is Cons!13408) newAcc!49))))

(assert (=> d!97007 (= (-!364 newAcc!49 k0!2824) lt!318173)))

(declare-fun bm!34434 () Bool)

(assert (=> bm!34434 (= call!34437 (-!364 (t!19714 newAcc!49) k0!2824))))

(declare-fun b!709270 () Bool)

(assert (=> b!709270 (= e!399164 e!399166)))

(declare-fun c!78522 () Bool)

(assert (=> b!709270 (= c!78522 (= k0!2824 (h!14453 newAcc!49)))))

(assert (= (and d!97007 c!78521) b!709270))

(assert (= (and d!97007 (not c!78521)) b!709269))

(assert (= (and b!709270 c!78522) b!709267))

(assert (= (and b!709270 (not c!78522)) b!709266))

(assert (= (or b!709267 b!709266) bm!34434))

(assert (= (and d!97007 res!472958) b!709268))

(declare-fun m!666659 () Bool)

(assert (=> b!709268 m!666659))

(assert (=> b!709268 m!666583))

(declare-fun m!666661 () Bool)

(assert (=> b!709268 m!666661))

(declare-fun m!666663 () Bool)

(assert (=> d!97007 m!666663))

(declare-fun m!666665 () Bool)

(assert (=> d!97007 m!666665))

(declare-fun m!666667 () Bool)

(assert (=> bm!34434 m!666667))

(assert (=> b!709093 d!97007))

(declare-fun d!97019 () Bool)

(declare-fun res!472965 () Bool)

(declare-fun e!399173 () Bool)

(assert (=> d!97019 (=> res!472965 e!399173)))

(assert (=> d!97019 (= res!472965 ((_ is Nil!13409) lt!318149))))

(assert (=> d!97019 (= (noDuplicate!1202 lt!318149) e!399173)))

(declare-fun b!709277 () Bool)

(declare-fun e!399174 () Bool)

(assert (=> b!709277 (= e!399173 e!399174)))

(declare-fun res!472966 () Bool)

(assert (=> b!709277 (=> (not res!472966) (not e!399174))))

(assert (=> b!709277 (= res!472966 (not (contains!3955 (t!19714 lt!318149) (h!14453 lt!318149))))))

(declare-fun b!709278 () Bool)

(assert (=> b!709278 (= e!399174 (noDuplicate!1202 (t!19714 lt!318149)))))

(assert (= (and d!97019 (not res!472965)) b!709277))

(assert (= (and b!709277 res!472966) b!709278))

(declare-fun m!666675 () Bool)

(assert (=> b!709277 m!666675))

(declare-fun m!666677 () Bool)

(assert (=> b!709278 m!666677))

(assert (=> b!709083 d!97019))

(declare-fun d!97023 () Bool)

(declare-fun lt!318175 () Bool)

(assert (=> d!97023 (= lt!318175 (select (content!346 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399175 () Bool)

(assert (=> d!97023 (= lt!318175 e!399175)))

(declare-fun res!472967 () Bool)

(assert (=> d!97023 (=> (not res!472967) (not e!399175))))

(assert (=> d!97023 (= res!472967 ((_ is Cons!13408) acc!652))))

(assert (=> d!97023 (= (contains!3955 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318175)))

(declare-fun b!709279 () Bool)

(declare-fun e!399176 () Bool)

(assert (=> b!709279 (= e!399175 e!399176)))

(declare-fun res!472968 () Bool)

(assert (=> b!709279 (=> res!472968 e!399176)))

(assert (=> b!709279 (= res!472968 (= (h!14453 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709280 () Bool)

(assert (=> b!709280 (= e!399176 (contains!3955 (t!19714 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97023 res!472967) b!709279))

(assert (= (and b!709279 (not res!472968)) b!709280))

(assert (=> d!97023 m!666601))

(declare-fun m!666679 () Bool)

(assert (=> d!97023 m!666679))

(declare-fun m!666681 () Bool)

(assert (=> b!709280 m!666681))

(assert (=> b!709094 d!97023))

(declare-fun d!97025 () Bool)

(declare-fun res!472971 () Bool)

(declare-fun e!399179 () Bool)

(assert (=> d!97025 (=> res!472971 e!399179)))

(assert (=> d!97025 (= res!472971 (= (select (arr!19318 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k0!2824))))

(assert (=> d!97025 (= (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!399179)))

(declare-fun b!709283 () Bool)

(declare-fun e!399180 () Bool)

(assert (=> b!709283 (= e!399179 e!399180)))

(declare-fun res!472972 () Bool)

(assert (=> b!709283 (=> (not res!472972) (not e!399180))))

(assert (=> b!709283 (= res!472972 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19711 a!3591)))))

(declare-fun b!709284 () Bool)

(assert (=> b!709284 (= e!399180 (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97025 (not res!472971)) b!709283))

(assert (= (and b!709283 res!472972) b!709284))

(declare-fun m!666685 () Bool)

(assert (=> d!97025 m!666685))

(declare-fun m!666687 () Bool)

(assert (=> b!709284 m!666687))

(assert (=> b!709084 d!97025))

(declare-fun d!97029 () Bool)

(assert (=> d!97029 (= (array_inv!15092 a!3591) (bvsge (size!19711 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!62922 d!97029))

(declare-fun d!97031 () Bool)

(declare-fun res!472998 () Bool)

(declare-fun e!399213 () Bool)

(assert (=> d!97031 (=> res!472998 e!399213)))

(assert (=> d!97031 (= res!472998 (bvsge from!2969 (size!19711 a!3591)))))

(assert (=> d!97031 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!399213)))

(declare-fun b!709324 () Bool)

(declare-fun e!399215 () Bool)

(assert (=> b!709324 (= e!399213 e!399215)))

(declare-fun res!472996 () Bool)

(assert (=> b!709324 (=> (not res!472996) (not e!399215))))

(declare-fun e!399216 () Bool)

(assert (=> b!709324 (= res!472996 (not e!399216))))

(declare-fun res!472997 () Bool)

(assert (=> b!709324 (=> (not res!472997) (not e!399216))))

(assert (=> b!709324 (= res!472997 (validKeyInArray!0 (select (arr!19318 a!3591) from!2969)))))

(declare-fun b!709325 () Bool)

(declare-fun e!399214 () Bool)

(assert (=> b!709325 (= e!399215 e!399214)))

(declare-fun c!78531 () Bool)

(assert (=> b!709325 (= c!78531 (validKeyInArray!0 (select (arr!19318 a!3591) from!2969)))))

(declare-fun b!709326 () Bool)

(assert (=> b!709326 (= e!399216 (contains!3955 acc!652 (select (arr!19318 a!3591) from!2969)))))

(declare-fun b!709327 () Bool)

(declare-fun call!34443 () Bool)

(assert (=> b!709327 (= e!399214 call!34443)))

(declare-fun b!709328 () Bool)

(assert (=> b!709328 (= e!399214 call!34443)))

(declare-fun bm!34440 () Bool)

(assert (=> bm!34440 (= call!34443 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78531 (Cons!13408 (select (arr!19318 a!3591) from!2969) acc!652) acc!652)))))

(assert (= (and d!97031 (not res!472998)) b!709324))

(assert (= (and b!709324 res!472997) b!709326))

(assert (= (and b!709324 res!472996) b!709325))

(assert (= (and b!709325 c!78531) b!709327))

(assert (= (and b!709325 (not c!78531)) b!709328))

(assert (= (or b!709327 b!709328) bm!34440))

(assert (=> b!709324 m!666503))

(assert (=> b!709324 m!666503))

(assert (=> b!709324 m!666505))

(assert (=> b!709325 m!666503))

(assert (=> b!709325 m!666503))

(assert (=> b!709325 m!666505))

(assert (=> b!709326 m!666503))

(assert (=> b!709326 m!666503))

(declare-fun m!666721 () Bool)

(assert (=> b!709326 m!666721))

(assert (=> bm!34440 m!666503))

(declare-fun m!666723 () Bool)

(assert (=> bm!34440 m!666723))

(assert (=> b!709095 d!97031))

(declare-fun d!97055 () Bool)

(declare-fun lt!318183 () Bool)

(assert (=> d!97055 (= lt!318183 (select (content!346 lt!318149) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399219 () Bool)

(assert (=> d!97055 (= lt!318183 e!399219)))

(declare-fun res!473001 () Bool)

(assert (=> d!97055 (=> (not res!473001) (not e!399219))))

(assert (=> d!97055 (= res!473001 ((_ is Cons!13408) lt!318149))))

(assert (=> d!97055 (= (contains!3955 lt!318149 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318183)))

(declare-fun b!709331 () Bool)

(declare-fun e!399220 () Bool)

(assert (=> b!709331 (= e!399219 e!399220)))

(declare-fun res!473002 () Bool)

(assert (=> b!709331 (=> res!473002 e!399220)))

(assert (=> b!709331 (= res!473002 (= (h!14453 lt!318149) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709332 () Bool)

(assert (=> b!709332 (= e!399220 (contains!3955 (t!19714 lt!318149) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97055 res!473001) b!709331))

(assert (= (and b!709331 (not res!473002)) b!709332))

(assert (=> d!97055 m!666595))

(declare-fun m!666729 () Bool)

(assert (=> d!97055 m!666729))

(declare-fun m!666731 () Bool)

(assert (=> b!709332 m!666731))

(assert (=> b!709085 d!97055))

(declare-fun d!97059 () Bool)

(declare-fun res!473005 () Bool)

(declare-fun e!399223 () Bool)

(assert (=> d!97059 (=> res!473005 e!399223)))

(assert (=> d!97059 (= res!473005 ((_ is Nil!13409) ($colon$colon!509 newAcc!49 (select (arr!19318 a!3591) from!2969))))))

(assert (=> d!97059 (= (noDuplicate!1202 ($colon$colon!509 newAcc!49 (select (arr!19318 a!3591) from!2969))) e!399223)))

(declare-fun b!709335 () Bool)

(declare-fun e!399224 () Bool)

(assert (=> b!709335 (= e!399223 e!399224)))

(declare-fun res!473006 () Bool)

(assert (=> b!709335 (=> (not res!473006) (not e!399224))))

(assert (=> b!709335 (= res!473006 (not (contains!3955 (t!19714 ($colon$colon!509 newAcc!49 (select (arr!19318 a!3591) from!2969))) (h!14453 ($colon$colon!509 newAcc!49 (select (arr!19318 a!3591) from!2969))))))))

(declare-fun b!709336 () Bool)

(assert (=> b!709336 (= e!399224 (noDuplicate!1202 (t!19714 ($colon$colon!509 newAcc!49 (select (arr!19318 a!3591) from!2969)))))))

(assert (= (and d!97059 (not res!473005)) b!709335))

(assert (= (and b!709335 res!473006) b!709336))

(declare-fun m!666741 () Bool)

(assert (=> b!709335 m!666741))

(declare-fun m!666745 () Bool)

(assert (=> b!709336 m!666745))

(assert (=> b!709096 d!97059))

(declare-fun d!97065 () Bool)

(assert (=> d!97065 (= ($colon$colon!509 newAcc!49 (select (arr!19318 a!3591) from!2969)) (Cons!13408 (select (arr!19318 a!3591) from!2969) newAcc!49))))

(assert (=> b!709096 d!97065))

(check-sat (not b!709216) (not d!96995) (not b!709227) (not b!709336) (not bm!34434) (not d!96987) (not b!709186) (not d!96989) (not d!96981) (not bm!34440) (not b!709335) (not b!709284) (not b!709172) (not d!96979) (not b!709194) (not b!709277) (not b!709192) (not b!709228) (not b!709188) (not b!709324) (not b!709215) (not b!709196) (not b!709332) (not b!709326) (not b!709171) (not b!709178) (not d!97007) (not d!97055) (not d!96985) (not b!709180) (not d!96991) (not b!709268) (not d!97023) (not b!709280) (not b!709190) (not b!709278) (not b!709325))
(check-sat)
