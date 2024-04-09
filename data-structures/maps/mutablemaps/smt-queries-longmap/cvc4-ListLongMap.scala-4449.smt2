; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61816 () Bool)

(assert start!61816)

(declare-fun b!691819 () Bool)

(declare-fun res!456295 () Bool)

(declare-fun e!393604 () Bool)

(assert (=> b!691819 (=> (not res!456295) (not e!393604))))

(declare-datatypes ((List!13155 0))(
  ( (Nil!13152) (Cons!13151 (h!14196 (_ BitVec 64)) (t!19430 List!13155)) )
))
(declare-fun acc!681 () List!13155)

(declare-fun noDuplicate!945 (List!13155) Bool)

(assert (=> b!691819 (= res!456295 (noDuplicate!945 acc!681))))

(declare-fun b!691820 () Bool)

(declare-fun res!456290 () Bool)

(assert (=> b!691820 (=> (not res!456290) (not e!393604))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39793 0))(
  ( (array!39794 (arr!19061 (Array (_ BitVec 32) (_ BitVec 64))) (size!19444 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39793)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!691820 (= res!456290 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19444 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691821 () Bool)

(declare-fun e!393602 () Bool)

(declare-fun e!393605 () Bool)

(assert (=> b!691821 (= e!393602 e!393605)))

(declare-fun res!456289 () Bool)

(assert (=> b!691821 (=> (not res!456289) (not e!393605))))

(assert (=> b!691821 (= res!456289 (bvsle from!3004 i!1382))))

(declare-fun res!456296 () Bool)

(assert (=> start!61816 (=> (not res!456296) (not e!393604))))

(assert (=> start!61816 (= res!456296 (and (bvslt (size!19444 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19444 a!3626))))))

(assert (=> start!61816 e!393604))

(assert (=> start!61816 true))

(declare-fun array_inv!14835 (array!39793) Bool)

(assert (=> start!61816 (array_inv!14835 a!3626)))

(declare-fun b!691822 () Bool)

(declare-fun res!456294 () Bool)

(assert (=> b!691822 (=> (not res!456294) (not e!393604))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691822 (= res!456294 (validKeyInArray!0 (select (arr!19061 a!3626) from!3004)))))

(declare-fun b!691823 () Bool)

(declare-fun res!456297 () Bool)

(assert (=> b!691823 (=> (not res!456297) (not e!393604))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39793 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691823 (= res!456297 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691824 () Bool)

(assert (=> b!691824 (= e!393604 false)))

(declare-datatypes ((Unit!24414 0))(
  ( (Unit!24415) )
))
(declare-fun lt!316476 () Unit!24414)

(declare-fun e!393603 () Unit!24414)

(assert (=> b!691824 (= lt!316476 e!393603)))

(declare-fun c!78134 () Bool)

(assert (=> b!691824 (= c!78134 (= (select (arr!19061 a!3626) from!3004) k!2843))))

(declare-fun b!691825 () Bool)

(declare-fun res!456293 () Bool)

(assert (=> b!691825 (=> (not res!456293) (not e!393604))))

(assert (=> b!691825 (= res!456293 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19444 a!3626))))))

(declare-fun b!691826 () Bool)

(declare-fun res!456291 () Bool)

(assert (=> b!691826 (=> (not res!456291) (not e!393604))))

(assert (=> b!691826 (= res!456291 (validKeyInArray!0 k!2843))))

(declare-fun b!691827 () Bool)

(declare-fun res!456286 () Bool)

(assert (=> b!691827 (=> (not res!456286) (not e!393604))))

(declare-fun arrayNoDuplicates!0 (array!39793 (_ BitVec 32) List!13155) Bool)

(assert (=> b!691827 (= res!456286 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13152))))

(declare-fun b!691828 () Bool)

(declare-fun Unit!24416 () Unit!24414)

(assert (=> b!691828 (= e!393603 Unit!24416)))

(assert (=> b!691828 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316475 () Unit!24414)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39793 (_ BitVec 64) (_ BitVec 32)) Unit!24414)

(assert (=> b!691828 (= lt!316475 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!691828 false))

(declare-fun b!691829 () Bool)

(declare-fun res!456287 () Bool)

(assert (=> b!691829 (=> (not res!456287) (not e!393604))))

(declare-fun contains!3698 (List!13155 (_ BitVec 64)) Bool)

(assert (=> b!691829 (= res!456287 (not (contains!3698 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691830 () Bool)

(declare-fun res!456299 () Bool)

(assert (=> b!691830 (=> (not res!456299) (not e!393604))))

(assert (=> b!691830 (= res!456299 (not (contains!3698 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691831 () Bool)

(declare-fun Unit!24417 () Unit!24414)

(assert (=> b!691831 (= e!393603 Unit!24417)))

(declare-fun b!691832 () Bool)

(declare-fun res!456285 () Bool)

(assert (=> b!691832 (=> (not res!456285) (not e!393604))))

(assert (=> b!691832 (= res!456285 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!691833 () Bool)

(assert (=> b!691833 (= e!393605 (not (contains!3698 acc!681 k!2843)))))

(declare-fun b!691834 () Bool)

(declare-fun res!456292 () Bool)

(assert (=> b!691834 (=> (not res!456292) (not e!393604))))

(assert (=> b!691834 (= res!456292 e!393602)))

(declare-fun res!456298 () Bool)

(assert (=> b!691834 (=> res!456298 e!393602)))

(declare-fun e!393606 () Bool)

(assert (=> b!691834 (= res!456298 e!393606)))

(declare-fun res!456288 () Bool)

(assert (=> b!691834 (=> (not res!456288) (not e!393606))))

(assert (=> b!691834 (= res!456288 (bvsgt from!3004 i!1382))))

(declare-fun b!691835 () Bool)

(assert (=> b!691835 (= e!393606 (contains!3698 acc!681 k!2843))))

(assert (= (and start!61816 res!456296) b!691819))

(assert (= (and b!691819 res!456295) b!691830))

(assert (= (and b!691830 res!456299) b!691829))

(assert (= (and b!691829 res!456287) b!691834))

(assert (= (and b!691834 res!456288) b!691835))

(assert (= (and b!691834 (not res!456298)) b!691821))

(assert (= (and b!691821 res!456289) b!691833))

(assert (= (and b!691834 res!456292) b!691827))

(assert (= (and b!691827 res!456286) b!691832))

(assert (= (and b!691832 res!456285) b!691825))

(assert (= (and b!691825 res!456293) b!691826))

(assert (= (and b!691826 res!456291) b!691823))

(assert (= (and b!691823 res!456297) b!691820))

(assert (= (and b!691820 res!456290) b!691822))

(assert (= (and b!691822 res!456294) b!691824))

(assert (= (and b!691824 c!78134) b!691828))

(assert (= (and b!691824 (not c!78134)) b!691831))

(declare-fun m!654625 () Bool)

(assert (=> b!691828 m!654625))

(declare-fun m!654627 () Bool)

(assert (=> b!691828 m!654627))

(declare-fun m!654629 () Bool)

(assert (=> b!691832 m!654629))

(declare-fun m!654631 () Bool)

(assert (=> b!691835 m!654631))

(assert (=> b!691833 m!654631))

(declare-fun m!654633 () Bool)

(assert (=> start!61816 m!654633))

(declare-fun m!654635 () Bool)

(assert (=> b!691827 m!654635))

(declare-fun m!654637 () Bool)

(assert (=> b!691826 m!654637))

(declare-fun m!654639 () Bool)

(assert (=> b!691819 m!654639))

(declare-fun m!654641 () Bool)

(assert (=> b!691823 m!654641))

(declare-fun m!654643 () Bool)

(assert (=> b!691830 m!654643))

(declare-fun m!654645 () Bool)

(assert (=> b!691822 m!654645))

(assert (=> b!691822 m!654645))

(declare-fun m!654647 () Bool)

(assert (=> b!691822 m!654647))

(assert (=> b!691824 m!654645))

(declare-fun m!654649 () Bool)

(assert (=> b!691829 m!654649))

(push 1)

(assert (not b!691822))

(assert (not b!691830))

(assert (not b!691826))

(assert (not b!691823))

(assert (not b!691829))

(assert (not start!61816))

(assert (not b!691832))

(assert (not b!691827))

(assert (not b!691819))

(assert (not b!691828))

(assert (not b!691833))

(assert (not b!691835))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

