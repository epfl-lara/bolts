; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61720 () Bool)

(assert start!61720)

(declare-fun b!690203 () Bool)

(declare-fun res!454783 () Bool)

(declare-fun e!392992 () Bool)

(assert (=> b!690203 (=> (not res!454783) (not e!392992))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39730 0))(
  ( (array!39731 (arr!19031 (Array (_ BitVec 32) (_ BitVec 64))) (size!19414 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39730)

(assert (=> b!690203 (= res!454783 (= (select (arr!19031 a!3626) from!3004) k!2843))))

(declare-fun b!690204 () Bool)

(declare-fun res!454788 () Bool)

(assert (=> b!690204 (=> (not res!454788) (not e!392992))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!690204 (= res!454788 (validKeyInArray!0 k!2843))))

(declare-fun b!690205 () Bool)

(declare-fun e!392991 () Bool)

(declare-datatypes ((List!13125 0))(
  ( (Nil!13122) (Cons!13121 (h!14166 (_ BitVec 64)) (t!19400 List!13125)) )
))
(declare-fun acc!681 () List!13125)

(declare-fun contains!3668 (List!13125 (_ BitVec 64)) Bool)

(assert (=> b!690205 (= e!392991 (contains!3668 acc!681 k!2843))))

(declare-fun b!690206 () Bool)

(declare-fun res!454784 () Bool)

(assert (=> b!690206 (=> (not res!454784) (not e!392992))))

(declare-fun noDuplicate!915 (List!13125) Bool)

(assert (=> b!690206 (= res!454784 (noDuplicate!915 acc!681))))

(declare-fun b!690207 () Bool)

(declare-fun res!454795 () Bool)

(assert (=> b!690207 (=> (not res!454795) (not e!392992))))

(declare-fun e!392988 () Bool)

(assert (=> b!690207 (= res!454795 e!392988)))

(declare-fun res!454794 () Bool)

(assert (=> b!690207 (=> res!454794 e!392988)))

(assert (=> b!690207 (= res!454794 e!392991)))

(declare-fun res!454792 () Bool)

(assert (=> b!690207 (=> (not res!454792) (not e!392991))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!690207 (= res!454792 (bvsgt from!3004 i!1382))))

(declare-fun b!690208 () Bool)

(declare-fun e!392989 () Bool)

(assert (=> b!690208 (= e!392989 (not (contains!3668 acc!681 k!2843)))))

(declare-fun b!690209 () Bool)

(declare-fun res!454786 () Bool)

(assert (=> b!690209 (=> (not res!454786) (not e!392992))))

(declare-fun arrayNoDuplicates!0 (array!39730 (_ BitVec 32) List!13125) Bool)

(assert (=> b!690209 (= res!454786 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!454787 () Bool)

(assert (=> start!61720 (=> (not res!454787) (not e!392992))))

(assert (=> start!61720 (= res!454787 (and (bvslt (size!19414 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19414 a!3626))))))

(assert (=> start!61720 e!392992))

(assert (=> start!61720 true))

(declare-fun array_inv!14805 (array!39730) Bool)

(assert (=> start!61720 (array_inv!14805 a!3626)))

(declare-fun b!690210 () Bool)

(assert (=> b!690210 (= e!392988 e!392989)))

(declare-fun res!454790 () Bool)

(assert (=> b!690210 (=> (not res!454790) (not e!392989))))

(assert (=> b!690210 (= res!454790 (bvsle from!3004 i!1382))))

(declare-fun b!690211 () Bool)

(declare-fun arrayContainsKey!0 (array!39730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!690211 (= e!392992 (not (arrayContainsKey!0 a!3626 k!2843 from!3004)))))

(declare-fun b!690212 () Bool)

(declare-fun res!454791 () Bool)

(assert (=> b!690212 (=> (not res!454791) (not e!392992))))

(assert (=> b!690212 (= res!454791 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!690213 () Bool)

(declare-fun res!454781 () Bool)

(assert (=> b!690213 (=> (not res!454781) (not e!392992))))

(assert (=> b!690213 (= res!454781 (validKeyInArray!0 (select (arr!19031 a!3626) from!3004)))))

(declare-fun b!690214 () Bool)

(declare-fun res!454796 () Bool)

(assert (=> b!690214 (=> (not res!454796) (not e!392992))))

(assert (=> b!690214 (= res!454796 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13122))))

(declare-fun b!690215 () Bool)

(declare-fun res!454789 () Bool)

(assert (=> b!690215 (=> (not res!454789) (not e!392992))))

(assert (=> b!690215 (= res!454789 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19414 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!690216 () Bool)

(declare-fun res!454785 () Bool)

(assert (=> b!690216 (=> (not res!454785) (not e!392992))))

(assert (=> b!690216 (= res!454785 (not (contains!3668 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690217 () Bool)

(declare-fun res!454793 () Bool)

(assert (=> b!690217 (=> (not res!454793) (not e!392992))))

(assert (=> b!690217 (= res!454793 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19414 a!3626))))))

(declare-fun b!690218 () Bool)

(declare-fun res!454782 () Bool)

(assert (=> b!690218 (=> (not res!454782) (not e!392992))))

(assert (=> b!690218 (= res!454782 (not (contains!3668 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!61720 res!454787) b!690206))

(assert (= (and b!690206 res!454784) b!690218))

(assert (= (and b!690218 res!454782) b!690216))

(assert (= (and b!690216 res!454785) b!690207))

(assert (= (and b!690207 res!454792) b!690205))

(assert (= (and b!690207 (not res!454794)) b!690210))

(assert (= (and b!690210 res!454790) b!690208))

(assert (= (and b!690207 res!454795) b!690214))

(assert (= (and b!690214 res!454796) b!690209))

(assert (= (and b!690209 res!454786) b!690217))

(assert (= (and b!690217 res!454793) b!690204))

(assert (= (and b!690204 res!454788) b!690212))

(assert (= (and b!690212 res!454791) b!690215))

(assert (= (and b!690215 res!454789) b!690213))

(assert (= (and b!690213 res!454781) b!690203))

(assert (= (and b!690203 res!454783) b!690211))

(declare-fun m!653769 () Bool)

(assert (=> b!690205 m!653769))

(declare-fun m!653771 () Bool)

(assert (=> b!690204 m!653771))

(declare-fun m!653773 () Bool)

(assert (=> b!690214 m!653773))

(declare-fun m!653775 () Bool)

(assert (=> b!690213 m!653775))

(assert (=> b!690213 m!653775))

(declare-fun m!653777 () Bool)

(assert (=> b!690213 m!653777))

(declare-fun m!653779 () Bool)

(assert (=> b!690211 m!653779))

(assert (=> b!690208 m!653769))

(declare-fun m!653781 () Bool)

(assert (=> b!690218 m!653781))

(declare-fun m!653783 () Bool)

(assert (=> start!61720 m!653783))

(declare-fun m!653785 () Bool)

(assert (=> b!690206 m!653785))

(declare-fun m!653787 () Bool)

(assert (=> b!690209 m!653787))

(declare-fun m!653789 () Bool)

(assert (=> b!690212 m!653789))

(declare-fun m!653791 () Bool)

(assert (=> b!690216 m!653791))

(assert (=> b!690203 m!653775))

(push 1)

(assert (not b!690205))

(assert (not b!690218))

(assert (not b!690211))

(assert (not b!690214))

(assert (not b!690208))

(assert (not b!690206))

(assert (not b!690209))

(assert (not b!690213))

(assert (not start!61720))

(assert (not b!690204))

(assert (not b!690212))

(assert (not b!690216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!95329 () Bool)

(declare-fun res!454842 () Bool)

(declare-fun e!393041 () Bool)

(assert (=> d!95329 (=> res!454842 e!393041)))

(assert (=> d!95329 (= res!454842 (= (select (arr!19031 a!3626) from!3004) k!2843))))

(assert (=> d!95329 (= (arrayContainsKey!0 a!3626 k!2843 from!3004) e!393041)))

(declare-fun b!690270 () Bool)

(declare-fun e!393042 () Bool)

(assert (=> b!690270 (= e!393041 e!393042)))

(declare-fun res!454843 () Bool)

(assert (=> b!690270 (=> (not res!454843) (not e!393042))))

(assert (=> b!690270 (= res!454843 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19414 a!3626)))))

(declare-fun b!690271 () Bool)

(assert (=> b!690271 (= e!393042 (arrayContainsKey!0 a!3626 k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95329 (not res!454842)) b!690270))

(assert (= (and b!690270 res!454843) b!690271))

(assert (=> d!95329 m!653775))

(declare-fun m!653829 () Bool)

(assert (=> b!690271 m!653829))

(assert (=> b!690211 d!95329))

(declare-fun d!95339 () Bool)

(declare-fun lt!316374 () Bool)

(declare-fun content!309 (List!13125) (Set (_ BitVec 64)))

(assert (=> d!95339 (= lt!316374 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!309 acc!681)))))

(declare-fun e!393067 () Bool)

(assert (=> d!95339 (= lt!316374 e!393067)))

(declare-fun res!454865 () Bool)

(assert (=> d!95339 (=> (not res!454865) (not e!393067))))

(assert (=> d!95339 (= res!454865 (is-Cons!13121 acc!681))))

(assert (=> d!95339 (= (contains!3668 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316374)))

(declare-fun b!690299 () Bool)

(declare-fun e!393068 () Bool)

(assert (=> b!690299 (= e!393067 e!393068)))

(declare-fun res!454866 () Bool)

(assert (=> b!690299 (=> res!454866 e!393068)))

(assert (=> b!690299 (= res!454866 (= (h!14166 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!690300 () Bool)

(assert (=> b!690300 (= e!393068 (contains!3668 (t!19400 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95339 res!454865) b!690299))

(assert (= (and b!690299 (not res!454866)) b!690300))

(declare-fun m!653843 () Bool)

(assert (=> d!95339 m!653843))

(declare-fun m!653845 () Bool)

(assert (=> d!95339 m!653845))

(declare-fun m!653847 () Bool)

(assert (=> b!690300 m!653847))

(assert (=> b!690218 d!95339))

(declare-fun b!690329 () Bool)

(declare-fun e!393093 () Bool)

(declare-fun call!34222 () Bool)

(assert (=> b!690329 (= e!393093 call!34222)))

(declare-fun d!95347 () Bool)

(declare-fun res!454889 () Bool)

(declare-fun e!393096 () Bool)

(assert (=> d!95347 (=> res!454889 e!393096)))

(assert (=> d!95347 (= res!454889 (bvsge from!3004 (size!19414 a!3626)))))

(assert (=> d!95347 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!393096)))

(declare-fun b!690330 () Bool)

(declare-fun e!393095 () Bool)

(assert (=> b!690330 (= e!393095 e!393093)))

(declare-fun c!78088 () Bool)

(assert (=> b!690330 (= c!78088 (validKeyInArray!0 (select (arr!19031 a!3626) from!3004)))))

(declare-fun bm!34219 () Bool)

(assert (=> bm!34219 (= call!34222 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78088 (Cons!13121 (select (arr!19031 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!690331 () Bool)

(assert (=> b!690331 (= e!393093 call!34222)))

(declare-fun b!690332 () Bool)

(declare-fun e!393094 () Bool)

(assert (=> b!690332 (= e!393094 (contains!3668 acc!681 (select (arr!19031 a!3626) from!3004)))))

(declare-fun b!690333 () Bool)

(assert (=> b!690333 (= e!393096 e!393095)))

(declare-fun res!454887 () Bool)

(assert (=> b!690333 (=> (not res!454887) (not e!393095))))

(assert (=> b!690333 (= res!454887 (not e!393094))))

(declare-fun res!454888 () Bool)

(assert (=> b!690333 (=> (not res!454888) (not e!393094))))

(assert (=> b!690333 (= res!454888 (validKeyInArray!0 (select (arr!19031 a!3626) from!3004)))))

(assert (= (and d!95347 (not res!454889)) b!690333))

(assert (= (and b!690333 res!454888) b!690332))

(assert (= (and b!690333 res!454887) b!690330))

(assert (= (and b!690330 c!78088) b!690329))

(assert (= (and b!690330 (not c!78088)) b!690331))

(assert (= (or b!690329 b!690331) bm!34219))

(assert (=> b!690330 m!653775))

(assert (=> b!690330 m!653775))

(assert (=> b!690330 m!653777))

(assert (=> bm!34219 m!653775))

(declare-fun m!653869 () Bool)

(assert (=> bm!34219 m!653869))

(assert (=> b!690332 m!653775))

(assert (=> b!690332 m!653775))

(declare-fun m!653871 () Bool)

(assert (=> b!690332 m!653871))

(assert (=> b!690333 m!653775))

(assert (=> b!690333 m!653775))

(assert (=> b!690333 m!653777))

(assert (=> b!690209 d!95347))

(declare-fun d!95361 () Bool)

(declare-fun lt!316376 () Bool)

(assert (=> d!95361 (= lt!316376 (member k!2843 (content!309 acc!681)))))

(declare-fun e!393097 () Bool)

(assert (=> d!95361 (= lt!316376 e!393097)))

(declare-fun res!454890 () Bool)

(assert (=> d!95361 (=> (not res!454890) (not e!393097))))

(assert (=> d!95361 (= res!454890 (is-Cons!13121 acc!681))))

(assert (=> d!95361 (= (contains!3668 acc!681 k!2843) lt!316376)))

(declare-fun b!690334 () Bool)

(declare-fun e!393098 () Bool)

(assert (=> b!690334 (= e!393097 e!393098)))

(declare-fun res!454891 () Bool)

