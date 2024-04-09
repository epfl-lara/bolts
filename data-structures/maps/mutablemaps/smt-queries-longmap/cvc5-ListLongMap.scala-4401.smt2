; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60522 () Bool)

(assert start!60522)

(declare-fun b!679969 () Bool)

(declare-fun res!446441 () Bool)

(declare-fun e!387317 () Bool)

(assert (=> b!679969 (=> (not res!446441) (not e!387317))))

(declare-datatypes ((array!39459 0))(
  ( (array!39460 (arr!18915 (Array (_ BitVec 32) (_ BitVec 64))) (size!19279 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39459)

(declare-datatypes ((List!13009 0))(
  ( (Nil!13006) (Cons!13005 (h!14050 (_ BitVec 64)) (t!19245 List!13009)) )
))
(declare-fun arrayNoDuplicates!0 (array!39459 (_ BitVec 32) List!13009) Bool)

(assert (=> b!679969 (= res!446441 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13006))))

(declare-fun b!679970 () Bool)

(declare-fun res!446434 () Bool)

(assert (=> b!679970 (=> (not res!446434) (not e!387317))))

(declare-fun acc!681 () List!13009)

(declare-fun contains!3552 (List!13009 (_ BitVec 64)) Bool)

(assert (=> b!679970 (= res!446434 (not (contains!3552 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679971 () Bool)

(declare-fun e!387313 () Bool)

(declare-fun e!387318 () Bool)

(assert (=> b!679971 (= e!387313 e!387318)))

(declare-fun res!446427 () Bool)

(assert (=> b!679971 (=> (not res!446427) (not e!387318))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!679971 (= res!446427 (bvsle from!3004 i!1382))))

(declare-fun b!679972 () Bool)

(declare-fun res!446433 () Bool)

(assert (=> b!679972 (=> (not res!446433) (not e!387317))))

(assert (=> b!679972 (= res!446433 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!679973 () Bool)

(declare-fun res!446429 () Bool)

(assert (=> b!679973 (=> (not res!446429) (not e!387317))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39459 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679973 (= res!446429 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!446430 () Bool)

(assert (=> start!60522 (=> (not res!446430) (not e!387317))))

(assert (=> start!60522 (= res!446430 (and (bvslt (size!19279 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19279 a!3626))))))

(assert (=> start!60522 e!387317))

(assert (=> start!60522 true))

(declare-fun array_inv!14689 (array!39459) Bool)

(assert (=> start!60522 (array_inv!14689 a!3626)))

(declare-fun b!679974 () Bool)

(declare-fun e!387315 () Bool)

(assert (=> b!679974 (= e!387315 (contains!3552 acc!681 k!2843))))

(declare-fun b!679975 () Bool)

(declare-datatypes ((Unit!23830 0))(
  ( (Unit!23831) )
))
(declare-fun e!387319 () Unit!23830)

(declare-fun Unit!23832 () Unit!23830)

(assert (=> b!679975 (= e!387319 Unit!23832)))

(declare-fun b!679976 () Bool)

(declare-fun res!446437 () Bool)

(assert (=> b!679976 (=> (not res!446437) (not e!387317))))

(declare-fun noDuplicate!799 (List!13009) Bool)

(assert (=> b!679976 (= res!446437 (noDuplicate!799 acc!681))))

(declare-fun b!679977 () Bool)

(declare-fun res!446432 () Bool)

(assert (=> b!679977 (=> (not res!446432) (not e!387317))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679977 (= res!446432 (validKeyInArray!0 k!2843))))

(declare-fun b!679978 () Bool)

(declare-fun e!387314 () Bool)

(assert (=> b!679978 (= e!387314 true)))

(declare-fun subseq!137 (List!13009 List!13009) Bool)

(assert (=> b!679978 (subseq!137 acc!681 acc!681)))

(declare-fun lt!312980 () Unit!23830)

(declare-fun lemmaListSubSeqRefl!0 (List!13009) Unit!23830)

(assert (=> b!679978 (= lt!312980 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!679979 () Bool)

(declare-fun res!446428 () Bool)

(assert (=> b!679979 (=> (not res!446428) (not e!387317))))

(assert (=> b!679979 (= res!446428 e!387313)))

(declare-fun res!446435 () Bool)

(assert (=> b!679979 (=> res!446435 e!387313)))

(assert (=> b!679979 (= res!446435 e!387315)))

(declare-fun res!446440 () Bool)

(assert (=> b!679979 (=> (not res!446440) (not e!387315))))

(assert (=> b!679979 (= res!446440 (bvsgt from!3004 i!1382))))

(declare-fun b!679980 () Bool)

(assert (=> b!679980 (= e!387317 (not e!387314))))

(declare-fun res!446439 () Bool)

(assert (=> b!679980 (=> res!446439 e!387314)))

(assert (=> b!679980 (= res!446439 (not (validKeyInArray!0 (select (arr!18915 a!3626) from!3004))))))

(declare-fun lt!312981 () Unit!23830)

(assert (=> b!679980 (= lt!312981 e!387319)))

(declare-fun c!77138 () Bool)

(assert (=> b!679980 (= c!77138 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!679980 (arrayContainsKey!0 (array!39460 (store (arr!18915 a!3626) i!1382 k!2843) (size!19279 a!3626)) k!2843 from!3004)))

(declare-fun b!679981 () Bool)

(declare-fun res!446438 () Bool)

(assert (=> b!679981 (=> (not res!446438) (not e!387317))))

(assert (=> b!679981 (= res!446438 (not (contains!3552 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679982 () Bool)

(declare-fun res!446431 () Bool)

(assert (=> b!679982 (=> (not res!446431) (not e!387317))))

(assert (=> b!679982 (= res!446431 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19279 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679983 () Bool)

(declare-fun Unit!23833 () Unit!23830)

(assert (=> b!679983 (= e!387319 Unit!23833)))

(declare-fun lt!312979 () Unit!23830)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39459 (_ BitVec 64) (_ BitVec 32)) Unit!23830)

(assert (=> b!679983 (= lt!312979 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!679983 false))

(declare-fun b!679984 () Bool)

(assert (=> b!679984 (= e!387318 (not (contains!3552 acc!681 k!2843)))))

(declare-fun b!679985 () Bool)

(declare-fun res!446436 () Bool)

(assert (=> b!679985 (=> (not res!446436) (not e!387317))))

(assert (=> b!679985 (= res!446436 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19279 a!3626))))))

(assert (= (and start!60522 res!446430) b!679976))

(assert (= (and b!679976 res!446437) b!679970))

(assert (= (and b!679970 res!446434) b!679981))

(assert (= (and b!679981 res!446438) b!679979))

(assert (= (and b!679979 res!446440) b!679974))

(assert (= (and b!679979 (not res!446435)) b!679971))

(assert (= (and b!679971 res!446427) b!679984))

(assert (= (and b!679979 res!446428) b!679969))

(assert (= (and b!679969 res!446441) b!679972))

(assert (= (and b!679972 res!446433) b!679985))

(assert (= (and b!679985 res!446436) b!679977))

(assert (= (and b!679977 res!446432) b!679973))

(assert (= (and b!679973 res!446429) b!679982))

(assert (= (and b!679982 res!446431) b!679980))

(assert (= (and b!679980 c!77138) b!679983))

(assert (= (and b!679980 (not c!77138)) b!679975))

(assert (= (and b!679980 (not res!446439)) b!679978))

(declare-fun m!645177 () Bool)

(assert (=> b!679977 m!645177))

(declare-fun m!645179 () Bool)

(assert (=> b!679970 m!645179))

(declare-fun m!645181 () Bool)

(assert (=> b!679973 m!645181))

(declare-fun m!645183 () Bool)

(assert (=> b!679981 m!645183))

(declare-fun m!645185 () Bool)

(assert (=> b!679984 m!645185))

(declare-fun m!645187 () Bool)

(assert (=> b!679972 m!645187))

(declare-fun m!645189 () Bool)

(assert (=> b!679980 m!645189))

(declare-fun m!645191 () Bool)

(assert (=> b!679980 m!645191))

(declare-fun m!645193 () Bool)

(assert (=> b!679980 m!645193))

(assert (=> b!679980 m!645189))

(declare-fun m!645195 () Bool)

(assert (=> b!679980 m!645195))

(declare-fun m!645197 () Bool)

(assert (=> b!679980 m!645197))

(declare-fun m!645199 () Bool)

(assert (=> b!679983 m!645199))

(declare-fun m!645201 () Bool)

(assert (=> start!60522 m!645201))

(assert (=> b!679974 m!645185))

(declare-fun m!645203 () Bool)

(assert (=> b!679976 m!645203))

(declare-fun m!645205 () Bool)

(assert (=> b!679978 m!645205))

(declare-fun m!645207 () Bool)

(assert (=> b!679978 m!645207))

(declare-fun m!645209 () Bool)

(assert (=> b!679969 m!645209))

(push 1)

(assert (not b!679981))

(assert (not b!679972))

(assert (not b!679977))

(assert (not b!679973))

(assert (not b!679984))

(assert (not b!679983))

(assert (not b!679970))

(assert (not b!679974))

(assert (not b!679976))

(assert (not b!679969))

(assert (not b!679978))

(assert (not b!679980))

(assert (not start!60522))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

