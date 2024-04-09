; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60376 () Bool)

(assert start!60376)

(declare-fun b!678067 () Bool)

(declare-fun e!386424 () Bool)

(declare-datatypes ((List!12972 0))(
  ( (Nil!12969) (Cons!12968 (h!14013 (_ BitVec 64)) (t!19208 List!12972)) )
))
(declare-fun acc!681 () List!12972)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3515 (List!12972 (_ BitVec 64)) Bool)

(assert (=> b!678067 (= e!386424 (not (contains!3515 acc!681 k!2843)))))

(declare-fun b!678068 () Bool)

(declare-datatypes ((Unit!23772 0))(
  ( (Unit!23773) )
))
(declare-fun e!386423 () Unit!23772)

(declare-fun Unit!23774 () Unit!23772)

(assert (=> b!678068 (= e!386423 Unit!23774)))

(declare-fun b!678069 () Bool)

(declare-fun res!444652 () Bool)

(declare-fun e!386420 () Bool)

(assert (=> b!678069 (=> (not res!444652) (not e!386420))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678069 (= res!444652 (validKeyInArray!0 k!2843))))

(declare-fun b!678070 () Bool)

(declare-fun res!444663 () Bool)

(assert (=> b!678070 (=> (not res!444663) (not e!386420))))

(assert (=> b!678070 (= res!444663 (not (contains!3515 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678071 () Bool)

(declare-fun res!444656 () Bool)

(assert (=> b!678071 (=> (not res!444656) (not e!386420))))

(assert (=> b!678071 (= res!444656 (not (contains!3515 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678073 () Bool)

(declare-fun res!444665 () Bool)

(assert (=> b!678073 (=> (not res!444665) (not e!386420))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39379 0))(
  ( (array!39380 (arr!18878 (Array (_ BitVec 32) (_ BitVec 64))) (size!19242 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39379)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!678073 (= res!444665 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19242 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!678074 () Bool)

(declare-fun res!444657 () Bool)

(assert (=> b!678074 (=> (not res!444657) (not e!386420))))

(declare-fun arrayNoDuplicates!0 (array!39379 (_ BitVec 32) List!12972) Bool)

(assert (=> b!678074 (= res!444657 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678075 () Bool)

(declare-fun e!386421 () Bool)

(assert (=> b!678075 (= e!386421 (contains!3515 acc!681 k!2843))))

(declare-fun b!678076 () Bool)

(declare-fun e!386422 () Bool)

(assert (=> b!678076 (= e!386422 e!386424)))

(declare-fun res!444654 () Bool)

(assert (=> b!678076 (=> (not res!444654) (not e!386424))))

(assert (=> b!678076 (= res!444654 (bvsle from!3004 i!1382))))

(declare-fun b!678077 () Bool)

(declare-fun Unit!23775 () Unit!23772)

(assert (=> b!678077 (= e!386423 Unit!23775)))

(declare-fun arrayContainsKey!0 (array!39379 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678077 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312825 () Unit!23772)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39379 (_ BitVec 64) (_ BitVec 32)) Unit!23772)

(assert (=> b!678077 (= lt!312825 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!678077 false))

(declare-fun b!678078 () Bool)

(declare-fun res!444659 () Bool)

(assert (=> b!678078 (=> (not res!444659) (not e!386420))))

(assert (=> b!678078 (= res!444659 (validKeyInArray!0 (select (arr!18878 a!3626) from!3004)))))

(declare-fun b!678079 () Bool)

(assert (=> b!678079 (= e!386420 (= (select (arr!18878 a!3626) from!3004) k!2843))))

(declare-fun lt!312824 () Unit!23772)

(assert (=> b!678079 (= lt!312824 e!386423)))

(declare-fun c!77075 () Bool)

(assert (=> b!678079 (= c!77075 (= (select (arr!18878 a!3626) from!3004) k!2843))))

(declare-fun b!678080 () Bool)

(declare-fun res!444661 () Bool)

(assert (=> b!678080 (=> (not res!444661) (not e!386420))))

(assert (=> b!678080 (= res!444661 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!678081 () Bool)

(declare-fun res!444660 () Bool)

(assert (=> b!678081 (=> (not res!444660) (not e!386420))))

(assert (=> b!678081 (= res!444660 e!386422)))

(declare-fun res!444655 () Bool)

(assert (=> b!678081 (=> res!444655 e!386422)))

(assert (=> b!678081 (= res!444655 e!386421)))

(declare-fun res!444653 () Bool)

(assert (=> b!678081 (=> (not res!444653) (not e!386421))))

(assert (=> b!678081 (= res!444653 (bvsgt from!3004 i!1382))))

(declare-fun res!444664 () Bool)

(assert (=> start!60376 (=> (not res!444664) (not e!386420))))

(assert (=> start!60376 (= res!444664 (and (bvslt (size!19242 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19242 a!3626))))))

(assert (=> start!60376 e!386420))

(assert (=> start!60376 true))

(declare-fun array_inv!14652 (array!39379) Bool)

(assert (=> start!60376 (array_inv!14652 a!3626)))

(declare-fun b!678072 () Bool)

(declare-fun res!444662 () Bool)

(assert (=> b!678072 (=> (not res!444662) (not e!386420))))

(assert (=> b!678072 (= res!444662 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12969))))

(declare-fun b!678082 () Bool)

(declare-fun res!444651 () Bool)

(assert (=> b!678082 (=> (not res!444651) (not e!386420))))

(assert (=> b!678082 (= res!444651 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19242 a!3626))))))

(declare-fun b!678083 () Bool)

(declare-fun res!444658 () Bool)

(assert (=> b!678083 (=> (not res!444658) (not e!386420))))

(declare-fun noDuplicate!762 (List!12972) Bool)

(assert (=> b!678083 (= res!444658 (noDuplicate!762 acc!681))))

(assert (= (and start!60376 res!444664) b!678083))

(assert (= (and b!678083 res!444658) b!678070))

(assert (= (and b!678070 res!444663) b!678071))

(assert (= (and b!678071 res!444656) b!678081))

(assert (= (and b!678081 res!444653) b!678075))

(assert (= (and b!678081 (not res!444655)) b!678076))

(assert (= (and b!678076 res!444654) b!678067))

(assert (= (and b!678081 res!444660) b!678072))

(assert (= (and b!678072 res!444662) b!678074))

(assert (= (and b!678074 res!444657) b!678082))

(assert (= (and b!678082 res!444651) b!678069))

(assert (= (and b!678069 res!444652) b!678080))

(assert (= (and b!678080 res!444661) b!678073))

(assert (= (and b!678073 res!444665) b!678078))

(assert (= (and b!678078 res!444659) b!678079))

(assert (= (and b!678079 c!77075) b!678077))

(assert (= (and b!678079 (not c!77075)) b!678068))

(declare-fun m!643993 () Bool)

(assert (=> b!678080 m!643993))

(declare-fun m!643995 () Bool)

(assert (=> b!678074 m!643995))

(declare-fun m!643997 () Bool)

(assert (=> b!678077 m!643997))

(declare-fun m!643999 () Bool)

(assert (=> b!678077 m!643999))

(declare-fun m!644001 () Bool)

(assert (=> b!678078 m!644001))

(assert (=> b!678078 m!644001))

(declare-fun m!644003 () Bool)

(assert (=> b!678078 m!644003))

(declare-fun m!644005 () Bool)

(assert (=> b!678072 m!644005))

(declare-fun m!644007 () Bool)

(assert (=> b!678083 m!644007))

(declare-fun m!644009 () Bool)

(assert (=> b!678071 m!644009))

(assert (=> b!678079 m!644001))

(declare-fun m!644011 () Bool)

(assert (=> b!678069 m!644011))

(declare-fun m!644013 () Bool)

(assert (=> start!60376 m!644013))

(declare-fun m!644015 () Bool)

(assert (=> b!678070 m!644015))

(declare-fun m!644017 () Bool)

(assert (=> b!678067 m!644017))

(assert (=> b!678075 m!644017))

(push 1)

(assert (not b!678067))

(assert (not b!678080))

(assert (not b!678070))

(assert (not b!678074))

(assert (not b!678075))

(assert (not start!60376))

(assert (not b!678071))

(assert (not b!678072))

(assert (not b!678077))

(assert (not b!678069))

(assert (not b!678078))

(assert (not b!678083))

(check-sat)

(pop 1)

(push 1)

(check-sat)

