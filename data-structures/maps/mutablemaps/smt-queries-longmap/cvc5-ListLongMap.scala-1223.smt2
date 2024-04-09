; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25852 () Bool)

(assert start!25852)

(declare-fun b!267409 () Bool)

(declare-fun e!172868 () Bool)

(declare-datatypes ((List!3974 0))(
  ( (Nil!3971) (Cons!3970 (h!4637 (_ BitVec 64)) (t!9064 List!3974)) )
))
(declare-fun contains!1922 (List!3974 (_ BitVec 64)) Bool)

(assert (=> b!267409 (= e!172868 (contains!1922 Nil!3971 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!267410 () Bool)

(declare-fun res!131743 () Bool)

(declare-fun e!172870 () Bool)

(assert (=> b!267410 (=> (not res!131743) (not e!172870))))

(declare-datatypes ((array!12986 0))(
  ( (array!12987 (arr!6145 (Array (_ BitVec 32) (_ BitVec 64))) (size!6497 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!12986)

(assert (=> b!267410 (= res!131743 (and (bvsle #b00000000000000000000000000000000 (size!6497 a!3325)) (bvslt (size!6497 a!3325) #b01111111111111111111111111111111)))))

(declare-fun b!267411 () Bool)

(declare-fun res!131748 () Bool)

(assert (=> b!267411 (=> (not res!131748) (not e!172870))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267411 (= res!131748 (validKeyInArray!0 k!2581))))

(declare-fun b!267412 () Bool)

(declare-fun res!131745 () Bool)

(assert (=> b!267412 (=> (not res!131745) (not e!172870))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!267412 (= res!131745 (and (= (size!6497 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6497 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6497 a!3325))))))

(declare-fun res!131746 () Bool)

(assert (=> start!25852 (=> (not res!131746) (not e!172870))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25852 (= res!131746 (validMask!0 mask!3868))))

(assert (=> start!25852 e!172870))

(declare-fun array_inv!4099 (array!12986) Bool)

(assert (=> start!25852 (array_inv!4099 a!3325)))

(assert (=> start!25852 true))

(declare-fun b!267413 () Bool)

(declare-fun res!131744 () Bool)

(assert (=> b!267413 (=> (not res!131744) (not e!172870))))

(declare-fun noDuplicate!113 (List!3974) Bool)

(assert (=> b!267413 (= res!131744 (noDuplicate!113 Nil!3971))))

(declare-fun b!267414 () Bool)

(assert (=> b!267414 (= e!172870 e!172868)))

(declare-fun res!131747 () Bool)

(assert (=> b!267414 (=> res!131747 e!172868)))

(assert (=> b!267414 (= res!131747 (contains!1922 Nil!3971 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!25852 res!131746) b!267412))

(assert (= (and b!267412 res!131745) b!267411))

(assert (= (and b!267411 res!131748) b!267410))

(assert (= (and b!267410 res!131743) b!267413))

(assert (= (and b!267413 res!131744) b!267414))

(assert (= (and b!267414 (not res!131747)) b!267409))

(declare-fun m!283813 () Bool)

(assert (=> b!267413 m!283813))

(declare-fun m!283815 () Bool)

(assert (=> b!267409 m!283815))

(declare-fun m!283817 () Bool)

(assert (=> b!267411 m!283817))

(declare-fun m!283819 () Bool)

(assert (=> start!25852 m!283819))

(declare-fun m!283821 () Bool)

(assert (=> start!25852 m!283821))

(declare-fun m!283823 () Bool)

(assert (=> b!267414 m!283823))

(push 1)

(assert (not b!267413))

(assert (not start!25852))

(assert (not b!267411))

(assert (not b!267409))

(assert (not b!267414))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!64265 () Bool)

(assert (=> d!64265 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!25852 d!64265))

(declare-fun d!64273 () Bool)

(assert (=> d!64273 (= (array_inv!4099 a!3325) (bvsge (size!6497 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!25852 d!64273))

(declare-fun d!64275 () Bool)

(assert (=> d!64275 (= (validKeyInArray!0 k!2581) (and (not (= k!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!267411 d!64275))

(declare-fun d!64277 () Bool)

(declare-fun lt!134720 () Bool)

(declare-fun content!181 (List!3974) (Set (_ BitVec 64)))

(assert (=> d!64277 (= lt!134720 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!181 Nil!3971)))))

(declare-fun e!172912 () Bool)

(assert (=> d!64277 (= lt!134720 e!172912)))

(declare-fun res!131807 () Bool)

(assert (=> d!64277 (=> (not res!131807) (not e!172912))))

(assert (=> d!64277 (= res!131807 (is-Cons!3970 Nil!3971))))

(assert (=> d!64277 (= (contains!1922 Nil!3971 #b0000000000000000000000000000000000000000000000000000000000000000) lt!134720)))

(declare-fun b!267473 () Bool)

(declare-fun e!172911 () Bool)

(assert (=> b!267473 (= e!172912 e!172911)))

(declare-fun res!131808 () Bool)

(assert (=> b!267473 (=> res!131808 e!172911)))

(assert (=> b!267473 (= res!131808 (= (h!4637 Nil!3971) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!267474 () Bool)

(assert (=> b!267474 (= e!172911 (contains!1922 (t!9064 Nil!3971) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!64277 res!131807) b!267473))

(assert (= (and b!267473 (not res!131808)) b!267474))

(declare-fun m!283865 () Bool)

(assert (=> d!64277 m!283865))

(declare-fun m!283867 () Bool)

(assert (=> d!64277 m!283867))

(declare-fun m!283869 () Bool)

(assert (=> b!267474 m!283869))

(assert (=> b!267414 d!64277))

(declare-fun d!64281 () Bool)

(declare-fun lt!134721 () Bool)

(assert (=> d!64281 (= lt!134721 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!181 Nil!3971)))))

(declare-fun e!172914 () Bool)

(assert (=> d!64281 (= lt!134721 e!172914)))

(declare-fun res!131809 () Bool)

(assert (=> d!64281 (=> (not res!131809) (not e!172914))))

(assert (=> d!64281 (= res!131809 (is-Cons!3970 Nil!3971))))

(assert (=> d!64281 (= (contains!1922 Nil!3971 #b1000000000000000000000000000000000000000000000000000000000000000) lt!134721)))

(declare-fun b!267475 () Bool)

(declare-fun e!172913 () Bool)

(assert (=> b!267475 (= e!172914 e!172913)))

(declare-fun res!131810 () Bool)

(assert (=> b!267475 (=> res!131810 e!172913)))

(assert (=> b!267475 (= res!131810 (= (h!4637 Nil!3971) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!267476 () Bool)

(assert (=> b!267476 (= e!172913 (contains!1922 (t!9064 Nil!3971) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!64281 res!131809) b!267475))

(assert (= (and b!267475 (not res!131810)) b!267476))

(assert (=> d!64281 m!283865))

(declare-fun m!283871 () Bool)

(assert (=> d!64281 m!283871))

(declare-fun m!283873 () Bool)

(assert (=> b!267476 m!283873))

(assert (=> b!267409 d!64281))

(declare-fun d!64283 () Bool)

(declare-fun res!131817 () Bool)

(declare-fun e!172921 () Bool)

(assert (=> d!64283 (=> res!131817 e!172921)))

(assert (=> d!64283 (= res!131817 (is-Nil!3971 Nil!3971))))

(assert (=> d!64283 (= (noDuplicate!113 Nil!3971) e!172921)))

(declare-fun b!267483 () Bool)

(declare-fun e!172922 () Bool)

(assert (=> b!267483 (= e!172921 e!172922)))

(declare-fun res!131818 () Bool)

(assert (=> b!267483 (=> (not res!131818) (not e!172922))))

(assert (=> b!267483 (= res!131818 (not (contains!1922 (t!9064 Nil!3971) (h!4637 Nil!3971))))))

(declare-fun b!267484 () Bool)

(assert (=> b!267484 (= e!172922 (noDuplicate!113 (t!9064 Nil!3971)))))

(assert (= (and d!64283 (not res!131817)) b!267483))

(assert (= (and b!267483 res!131818) b!267484))

(declare-fun m!283879 () Bool)

(assert (=> b!267483 m!283879))

(declare-fun m!283881 () Bool)

(assert (=> b!267484 m!283881))

(assert (=> b!267413 d!64283))

(push 1)

