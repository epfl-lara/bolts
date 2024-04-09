; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25824 () Bool)

(assert start!25824)

(declare-fun res!131698 () Bool)

(declare-fun e!172837 () Bool)

(assert (=> start!25824 (=> (not res!131698) (not e!172837))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25824 (= res!131698 (validMask!0 mask!3868))))

(assert (=> start!25824 e!172837))

(declare-datatypes ((array!12979 0))(
  ( (array!12980 (arr!6143 (Array (_ BitVec 32) (_ BitVec 64))) (size!6495 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!12979)

(declare-fun array_inv!4097 (array!12979) Bool)

(assert (=> start!25824 (array_inv!4097 a!3325)))

(assert (=> start!25824 true))

(declare-fun b!267363 () Bool)

(declare-fun res!131699 () Bool)

(assert (=> b!267363 (=> (not res!131699) (not e!172837))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267363 (= res!131699 (and (= (size!6495 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6495 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6495 a!3325))))))

(declare-fun b!267366 () Bool)

(declare-datatypes ((List!3972 0))(
  ( (Nil!3969) (Cons!3968 (h!4635 (_ BitVec 64)) (t!9062 List!3972)) )
))
(declare-fun noDuplicate!111 (List!3972) Bool)

(assert (=> b!267366 (= e!172837 (not (noDuplicate!111 Nil!3969)))))

(declare-fun b!267365 () Bool)

(declare-fun res!131700 () Bool)

(assert (=> b!267365 (=> (not res!131700) (not e!172837))))

(assert (=> b!267365 (= res!131700 (and (bvsle #b00000000000000000000000000000000 (size!6495 a!3325)) (bvslt (size!6495 a!3325) #b01111111111111111111111111111111)))))

(declare-fun b!267364 () Bool)

(declare-fun res!131697 () Bool)

(assert (=> b!267364 (=> (not res!131697) (not e!172837))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267364 (= res!131697 (validKeyInArray!0 k0!2581))))

(assert (= (and start!25824 res!131698) b!267363))

(assert (= (and b!267363 res!131699) b!267364))

(assert (= (and b!267364 res!131697) b!267365))

(assert (= (and b!267365 res!131700) b!267366))

(declare-fun m!283789 () Bool)

(assert (=> start!25824 m!283789))

(declare-fun m!283791 () Bool)

(assert (=> start!25824 m!283791))

(declare-fun m!283793 () Bool)

(assert (=> b!267366 m!283793))

(declare-fun m!283795 () Bool)

(assert (=> b!267364 m!283795))

(check-sat (not start!25824) (not b!267366) (not b!267364))
(check-sat)
(get-model)

(declare-fun d!64235 () Bool)

(assert (=> d!64235 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!25824 d!64235))

(declare-fun d!64245 () Bool)

(assert (=> d!64245 (= (array_inv!4097 a!3325) (bvsge (size!6495 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!25824 d!64245))

(declare-fun d!64249 () Bool)

(declare-fun res!131723 () Bool)

(declare-fun e!172854 () Bool)

(assert (=> d!64249 (=> res!131723 e!172854)))

(get-info :version)

(assert (=> d!64249 (= res!131723 ((_ is Nil!3969) Nil!3969))))

(assert (=> d!64249 (= (noDuplicate!111 Nil!3969) e!172854)))

(declare-fun b!267389 () Bool)

(declare-fun e!172855 () Bool)

(assert (=> b!267389 (= e!172854 e!172855)))

(declare-fun res!131724 () Bool)

(assert (=> b!267389 (=> (not res!131724) (not e!172855))))

(declare-fun contains!1921 (List!3972 (_ BitVec 64)) Bool)

(assert (=> b!267389 (= res!131724 (not (contains!1921 (t!9062 Nil!3969) (h!4635 Nil!3969))))))

(declare-fun b!267390 () Bool)

(assert (=> b!267390 (= e!172855 (noDuplicate!111 (t!9062 Nil!3969)))))

(assert (= (and d!64249 (not res!131723)) b!267389))

(assert (= (and b!267389 res!131724) b!267390))

(declare-fun m!283809 () Bool)

(assert (=> b!267389 m!283809))

(declare-fun m!283811 () Bool)

(assert (=> b!267390 m!283811))

(assert (=> b!267366 d!64249))

(declare-fun d!64251 () Bool)

(assert (=> d!64251 (= (validKeyInArray!0 k0!2581) (and (not (= k0!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!267364 d!64251))

(check-sat (not b!267390) (not b!267389))
(check-sat)
