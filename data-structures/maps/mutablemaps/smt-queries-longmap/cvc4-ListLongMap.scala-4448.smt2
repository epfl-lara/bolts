; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61810 () Bool)

(assert start!61810)

(declare-fun b!691666 () Bool)

(declare-fun res!456155 () Bool)

(declare-fun e!393549 () Bool)

(assert (=> b!691666 (=> (not res!456155) (not e!393549))))

(declare-datatypes ((List!13152 0))(
  ( (Nil!13149) (Cons!13148 (h!14193 (_ BitVec 64)) (t!19427 List!13152)) )
))
(declare-fun acc!681 () List!13152)

(declare-fun noDuplicate!942 (List!13152) Bool)

(assert (=> b!691666 (= res!456155 (noDuplicate!942 acc!681))))

(declare-fun b!691667 () Bool)

(declare-fun res!456162 () Bool)

(assert (=> b!691667 (=> (not res!456162) (not e!393549))))

(declare-fun e!393548 () Bool)

(assert (=> b!691667 (= res!456162 e!393548)))

(declare-fun res!456164 () Bool)

(assert (=> b!691667 (=> res!456164 e!393548)))

(declare-fun e!393550 () Bool)

(assert (=> b!691667 (= res!456164 e!393550)))

(declare-fun res!456159 () Bool)

(assert (=> b!691667 (=> (not res!456159) (not e!393550))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!691667 (= res!456159 (bvsgt from!3004 i!1382))))

(declare-fun b!691668 () Bool)

(declare-fun res!456153 () Bool)

(assert (=> b!691668 (=> (not res!456153) (not e!393549))))

(declare-datatypes ((array!39787 0))(
  ( (array!39788 (arr!19058 (Array (_ BitVec 32) (_ BitVec 64))) (size!19441 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39787)

(declare-fun arrayNoDuplicates!0 (array!39787 (_ BitVec 32) List!13152) Bool)

(assert (=> b!691668 (= res!456153 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13149))))

(declare-fun b!691669 () Bool)

(declare-fun res!456161 () Bool)

(assert (=> b!691669 (=> (not res!456161) (not e!393549))))

(declare-fun contains!3695 (List!13152 (_ BitVec 64)) Bool)

(assert (=> b!691669 (= res!456161 (not (contains!3695 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691670 () Bool)

(declare-datatypes ((Unit!24402 0))(
  ( (Unit!24403) )
))
(declare-fun e!393552 () Unit!24402)

(declare-fun Unit!24404 () Unit!24402)

(assert (=> b!691670 (= e!393552 Unit!24404)))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39787 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691670 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316457 () Unit!24402)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39787 (_ BitVec 64) (_ BitVec 32)) Unit!24402)

(assert (=> b!691670 (= lt!316457 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!691670 false))

(declare-fun res!456150 () Bool)

(assert (=> start!61810 (=> (not res!456150) (not e!393549))))

(assert (=> start!61810 (= res!456150 (and (bvslt (size!19441 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19441 a!3626))))))

(assert (=> start!61810 e!393549))

(assert (=> start!61810 true))

(declare-fun array_inv!14832 (array!39787) Bool)

(assert (=> start!61810 (array_inv!14832 a!3626)))

(declare-fun b!691671 () Bool)

(declare-fun e!393551 () Bool)

(assert (=> b!691671 (= e!393548 e!393551)))

(declare-fun res!456151 () Bool)

(assert (=> b!691671 (=> (not res!456151) (not e!393551))))

(assert (=> b!691671 (= res!456151 (bvsle from!3004 i!1382))))

(declare-fun b!691672 () Bool)

(declare-fun res!456152 () Bool)

(assert (=> b!691672 (=> (not res!456152) (not e!393549))))

(assert (=> b!691672 (= res!456152 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19441 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691673 () Bool)

(declare-fun Unit!24405 () Unit!24402)

(assert (=> b!691673 (= e!393552 Unit!24405)))

(declare-fun b!691674 () Bool)

(declare-fun res!456154 () Bool)

(assert (=> b!691674 (=> (not res!456154) (not e!393549))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691674 (= res!456154 (validKeyInArray!0 (select (arr!19058 a!3626) from!3004)))))

(declare-fun b!691675 () Bool)

(declare-fun res!456156 () Bool)

(assert (=> b!691675 (=> (not res!456156) (not e!393549))))

(assert (=> b!691675 (= res!456156 (validKeyInArray!0 k!2843))))

(declare-fun b!691676 () Bool)

(declare-fun res!456158 () Bool)

(assert (=> b!691676 (=> (not res!456158) (not e!393549))))

(assert (=> b!691676 (= res!456158 (not (contains!3695 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691677 () Bool)

(assert (=> b!691677 (= e!393549 (and (not (= (select (arr!19058 a!3626) from!3004) k!2843)) (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(declare-fun lt!316458 () Unit!24402)

(assert (=> b!691677 (= lt!316458 e!393552)))

(declare-fun c!78125 () Bool)

(assert (=> b!691677 (= c!78125 (= (select (arr!19058 a!3626) from!3004) k!2843))))

(declare-fun b!691678 () Bool)

(assert (=> b!691678 (= e!393551 (not (contains!3695 acc!681 k!2843)))))

(declare-fun b!691679 () Bool)

(declare-fun res!456160 () Bool)

(assert (=> b!691679 (=> (not res!456160) (not e!393549))))

(assert (=> b!691679 (= res!456160 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691680 () Bool)

(declare-fun res!456163 () Bool)

(assert (=> b!691680 (=> (not res!456163) (not e!393549))))

(assert (=> b!691680 (= res!456163 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19441 a!3626))))))

(declare-fun b!691681 () Bool)

(declare-fun res!456157 () Bool)

(assert (=> b!691681 (=> (not res!456157) (not e!393549))))

(assert (=> b!691681 (= res!456157 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!691682 () Bool)

(assert (=> b!691682 (= e!393550 (contains!3695 acc!681 k!2843))))

(assert (= (and start!61810 res!456150) b!691666))

(assert (= (and b!691666 res!456155) b!691676))

(assert (= (and b!691676 res!456158) b!691669))

(assert (= (and b!691669 res!456161) b!691667))

(assert (= (and b!691667 res!456159) b!691682))

(assert (= (and b!691667 (not res!456164)) b!691671))

(assert (= (and b!691671 res!456151) b!691678))

(assert (= (and b!691667 res!456162) b!691668))

(assert (= (and b!691668 res!456153) b!691681))

(assert (= (and b!691681 res!456157) b!691680))

(assert (= (and b!691680 res!456163) b!691675))

(assert (= (and b!691675 res!456156) b!691679))

(assert (= (and b!691679 res!456160) b!691672))

(assert (= (and b!691672 res!456152) b!691674))

(assert (= (and b!691674 res!456154) b!691677))

(assert (= (and b!691677 c!78125) b!691670))

(assert (= (and b!691677 (not c!78125)) b!691673))

(declare-fun m!654547 () Bool)

(assert (=> b!691666 m!654547))

(declare-fun m!654549 () Bool)

(assert (=> b!691679 m!654549))

(declare-fun m!654551 () Bool)

(assert (=> start!61810 m!654551))

(declare-fun m!654553 () Bool)

(assert (=> b!691681 m!654553))

(declare-fun m!654555 () Bool)

(assert (=> b!691669 m!654555))

(declare-fun m!654557 () Bool)

(assert (=> b!691677 m!654557))

(declare-fun m!654559 () Bool)

(assert (=> b!691682 m!654559))

(declare-fun m!654561 () Bool)

(assert (=> b!691670 m!654561))

(declare-fun m!654563 () Bool)

(assert (=> b!691670 m!654563))

(declare-fun m!654565 () Bool)

(assert (=> b!691675 m!654565))

(assert (=> b!691678 m!654559))

(declare-fun m!654567 () Bool)

(assert (=> b!691676 m!654567))

(declare-fun m!654569 () Bool)

(assert (=> b!691668 m!654569))

(assert (=> b!691674 m!654557))

(assert (=> b!691674 m!654557))

(declare-fun m!654571 () Bool)

(assert (=> b!691674 m!654571))

(push 1)

(assert (not b!691675))

(assert (not b!691678))

(assert (not b!691676))

(assert (not b!691666))

