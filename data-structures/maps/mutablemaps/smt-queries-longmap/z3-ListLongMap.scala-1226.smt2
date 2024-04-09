; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25902 () Bool)

(assert start!25902)

(declare-fun b!267578 () Bool)

(declare-fun res!131913 () Bool)

(declare-fun e!172978 () Bool)

(assert (=> b!267578 (=> (not res!131913) (not e!172978))))

(declare-datatypes ((array!13009 0))(
  ( (array!13010 (arr!6155 (Array (_ BitVec 32) (_ BitVec 64))) (size!6507 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13009)

(declare-datatypes ((List!3984 0))(
  ( (Nil!3981) (Cons!3980 (h!4647 (_ BitVec 64)) (t!9074 List!3984)) )
))
(declare-fun arrayNoDuplicates!0 (array!13009 (_ BitVec 32) List!3984) Bool)

(assert (=> b!267578 (= res!131913 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3981))))

(declare-fun b!267577 () Bool)

(declare-fun res!131910 () Bool)

(assert (=> b!267577 (=> (not res!131910) (not e!172978))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267577 (= res!131910 (validKeyInArray!0 k0!2581))))

(declare-fun b!267579 () Bool)

(assert (=> b!267579 (= e!172978 (and (bvslt #b00000000000000000000000000000000 (size!6507 a!3325)) (bvsge (size!6507 a!3325) #b01111111111111111111111111111111)))))

(declare-fun res!131911 () Bool)

(assert (=> start!25902 (=> (not res!131911) (not e!172978))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25902 (= res!131911 (validMask!0 mask!3868))))

(assert (=> start!25902 e!172978))

(declare-fun array_inv!4109 (array!13009) Bool)

(assert (=> start!25902 (array_inv!4109 a!3325)))

(assert (=> start!25902 true))

(declare-fun b!267576 () Bool)

(declare-fun res!131912 () Bool)

(assert (=> b!267576 (=> (not res!131912) (not e!172978))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267576 (= res!131912 (and (= (size!6507 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6507 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6507 a!3325))))))

(assert (= (and start!25902 res!131911) b!267576))

(assert (= (and b!267576 res!131912) b!267577))

(assert (= (and b!267577 res!131910) b!267578))

(assert (= (and b!267578 res!131913) b!267579))

(declare-fun m!283947 () Bool)

(assert (=> b!267578 m!283947))

(declare-fun m!283949 () Bool)

(assert (=> b!267577 m!283949))

(declare-fun m!283951 () Bool)

(assert (=> start!25902 m!283951))

(declare-fun m!283953 () Bool)

(assert (=> start!25902 m!283953))

(check-sat (not b!267577) (not start!25902) (not b!267578))
(check-sat)
(get-model)

(declare-fun d!64303 () Bool)

(assert (=> d!64303 (= (validKeyInArray!0 k0!2581) (and (not (= k0!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!267577 d!64303))

(declare-fun d!64305 () Bool)

(assert (=> d!64305 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!25902 d!64305))

(declare-fun d!64311 () Bool)

(assert (=> d!64311 (= (array_inv!4109 a!3325) (bvsge (size!6507 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!25902 d!64311))

(declare-fun b!267632 () Bool)

(declare-fun e!173019 () Bool)

(declare-fun e!173018 () Bool)

(assert (=> b!267632 (= e!173019 e!173018)))

(declare-fun res!131950 () Bool)

(assert (=> b!267632 (=> (not res!131950) (not e!173018))))

(declare-fun e!173020 () Bool)

(assert (=> b!267632 (= res!131950 (not e!173020))))

(declare-fun res!131952 () Bool)

(assert (=> b!267632 (=> (not res!131952) (not e!173020))))

(assert (=> b!267632 (= res!131952 (validKeyInArray!0 (select (arr!6155 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!267633 () Bool)

(declare-fun contains!1925 (List!3984 (_ BitVec 64)) Bool)

(assert (=> b!267633 (= e!173020 (contains!1925 Nil!3981 (select (arr!6155 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!64313 () Bool)

(declare-fun res!131951 () Bool)

(assert (=> d!64313 (=> res!131951 e!173019)))

(assert (=> d!64313 (= res!131951 (bvsge #b00000000000000000000000000000000 (size!6507 a!3325)))))

(assert (=> d!64313 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3981) e!173019)))

(declare-fun b!267634 () Bool)

(declare-fun e!173017 () Bool)

(assert (=> b!267634 (= e!173018 e!173017)))

(declare-fun c!45392 () Bool)

(assert (=> b!267634 (= c!45392 (validKeyInArray!0 (select (arr!6155 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!267635 () Bool)

(declare-fun call!25346 () Bool)

(assert (=> b!267635 (= e!173017 call!25346)))

(declare-fun b!267636 () Bool)

(assert (=> b!267636 (= e!173017 call!25346)))

(declare-fun bm!25343 () Bool)

(assert (=> bm!25343 (= call!25346 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!45392 (Cons!3980 (select (arr!6155 a!3325) #b00000000000000000000000000000000) Nil!3981) Nil!3981)))))

(assert (= (and d!64313 (not res!131951)) b!267632))

(assert (= (and b!267632 res!131952) b!267633))

(assert (= (and b!267632 res!131950) b!267634))

(assert (= (and b!267634 c!45392) b!267636))

(assert (= (and b!267634 (not c!45392)) b!267635))

(assert (= (or b!267636 b!267635) bm!25343))

(declare-fun m!283979 () Bool)

(assert (=> b!267632 m!283979))

(assert (=> b!267632 m!283979))

(declare-fun m!283981 () Bool)

(assert (=> b!267632 m!283981))

(assert (=> b!267633 m!283979))

(assert (=> b!267633 m!283979))

(declare-fun m!283983 () Bool)

(assert (=> b!267633 m!283983))

(assert (=> b!267634 m!283979))

(assert (=> b!267634 m!283979))

(assert (=> b!267634 m!283981))

(assert (=> bm!25343 m!283979))

(declare-fun m!283985 () Bool)

(assert (=> bm!25343 m!283985))

(assert (=> b!267578 d!64313))

(check-sat (not bm!25343) (not b!267632) (not b!267633) (not b!267634))
(check-sat)
