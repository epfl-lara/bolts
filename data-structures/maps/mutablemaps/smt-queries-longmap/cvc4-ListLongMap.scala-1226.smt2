; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25904 () Bool)

(assert start!25904)

(declare-fun b!267589 () Bool)

(declare-fun res!131925 () Bool)

(declare-fun e!172983 () Bool)

(assert (=> b!267589 (=> (not res!131925) (not e!172983))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267589 (= res!131925 (validKeyInArray!0 k!2581))))

(declare-fun b!267591 () Bool)

(declare-datatypes ((array!13011 0))(
  ( (array!13012 (arr!6156 (Array (_ BitVec 32) (_ BitVec 64))) (size!6508 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13011)

(assert (=> b!267591 (= e!172983 (and (bvslt #b00000000000000000000000000000000 (size!6508 a!3325)) (bvsge (size!6508 a!3325) #b01111111111111111111111111111111)))))

(declare-fun b!267590 () Bool)

(declare-fun res!131923 () Bool)

(assert (=> b!267590 (=> (not res!131923) (not e!172983))))

(declare-datatypes ((List!3985 0))(
  ( (Nil!3982) (Cons!3981 (h!4648 (_ BitVec 64)) (t!9075 List!3985)) )
))
(declare-fun arrayNoDuplicates!0 (array!13011 (_ BitVec 32) List!3985) Bool)

(assert (=> b!267590 (= res!131923 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3982))))

(declare-fun res!131922 () Bool)

(assert (=> start!25904 (=> (not res!131922) (not e!172983))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25904 (= res!131922 (validMask!0 mask!3868))))

(assert (=> start!25904 e!172983))

(declare-fun array_inv!4110 (array!13011) Bool)

(assert (=> start!25904 (array_inv!4110 a!3325)))

(assert (=> start!25904 true))

(declare-fun b!267588 () Bool)

(declare-fun res!131924 () Bool)

(assert (=> b!267588 (=> (not res!131924) (not e!172983))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267588 (= res!131924 (and (= (size!6508 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6508 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6508 a!3325))))))

(assert (= (and start!25904 res!131922) b!267588))

(assert (= (and b!267588 res!131924) b!267589))

(assert (= (and b!267589 res!131925) b!267590))

(assert (= (and b!267590 res!131923) b!267591))

(declare-fun m!283955 () Bool)

(assert (=> b!267589 m!283955))

(declare-fun m!283957 () Bool)

(assert (=> b!267590 m!283957))

(declare-fun m!283959 () Bool)

(assert (=> start!25904 m!283959))

(declare-fun m!283961 () Bool)

(assert (=> start!25904 m!283961))

(push 1)

(assert (not b!267590))

(assert (not b!267589))

(assert (not start!25904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!267617 () Bool)

(declare-fun e!173005 () Bool)

(declare-fun call!25343 () Bool)

(assert (=> b!267617 (= e!173005 call!25343)))

(declare-fun bm!25340 () Bool)

(declare-fun c!45389 () Bool)

(assert (=> bm!25340 (= call!25343 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!45389 (Cons!3981 (select (arr!6156 a!3325) #b00000000000000000000000000000000) Nil!3982) Nil!3982)))))

(declare-fun b!267618 () Bool)

(assert (=> b!267618 (= e!173005 call!25343)))

(declare-fun b!267619 () Bool)

(declare-fun e!173006 () Bool)

(assert (=> b!267619 (= e!173006 e!173005)))

(assert (=> b!267619 (= c!45389 (validKeyInArray!0 (select (arr!6156 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!64309 () Bool)

(declare-fun res!131942 () Bool)

(declare-fun e!173008 () Bool)

(assert (=> d!64309 (=> res!131942 e!173008)))

(assert (=> d!64309 (= res!131942 (bvsge #b00000000000000000000000000000000 (size!6508 a!3325)))))

(assert (=> d!64309 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3982) e!173008)))

(declare-fun b!267620 () Bool)

(assert (=> b!267620 (= e!173008 e!173006)))

(declare-fun res!131941 () Bool)

(assert (=> b!267620 (=> (not res!131941) (not e!173006))))

(declare-fun e!173007 () Bool)

(assert (=> b!267620 (= res!131941 (not e!173007))))

(declare-fun res!131943 () Bool)

