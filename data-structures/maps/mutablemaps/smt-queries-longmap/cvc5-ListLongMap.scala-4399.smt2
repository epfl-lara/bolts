; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60510 () Bool)

(assert start!60510)

(declare-fun b!679663 () Bool)

(declare-fun res!446170 () Bool)

(declare-fun e!387191 () Bool)

(assert (=> b!679663 (=> (not res!446170) (not e!387191))))

(declare-datatypes ((array!39447 0))(
  ( (array!39448 (arr!18909 (Array (_ BitVec 32) (_ BitVec 64))) (size!19273 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39447)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39447 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679663 (= res!446170 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!679664 () Bool)

(declare-fun res!446168 () Bool)

(assert (=> b!679664 (=> (not res!446168) (not e!387191))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!679664 (= res!446168 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19273 a!3626))))))

(declare-fun b!679665 () Bool)

(declare-fun res!446161 () Bool)

(assert (=> b!679665 (=> (not res!446161) (not e!387191))))

(declare-datatypes ((List!13003 0))(
  ( (Nil!13000) (Cons!12999 (h!14044 (_ BitVec 64)) (t!19239 List!13003)) )
))
(declare-fun acc!681 () List!13003)

(declare-fun contains!3546 (List!13003 (_ BitVec 64)) Bool)

(assert (=> b!679665 (= res!446161 (not (contains!3546 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679666 () Bool)

(declare-fun e!387189 () Bool)

(assert (=> b!679666 (= e!387191 (not e!387189))))

(declare-fun res!446164 () Bool)

(assert (=> b!679666 (=> res!446164 e!387189)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679666 (= res!446164 (not (validKeyInArray!0 (select (arr!18909 a!3626) from!3004))))))

(declare-datatypes ((Unit!23806 0))(
  ( (Unit!23807) )
))
(declare-fun lt!312927 () Unit!23806)

(declare-fun e!387192 () Unit!23806)

(assert (=> b!679666 (= lt!312927 e!387192)))

(declare-fun c!77120 () Bool)

(assert (=> b!679666 (= c!77120 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!679666 (arrayContainsKey!0 (array!39448 (store (arr!18909 a!3626) i!1382 k!2843) (size!19273 a!3626)) k!2843 from!3004)))

(declare-fun res!446163 () Bool)

(assert (=> start!60510 (=> (not res!446163) (not e!387191))))

(assert (=> start!60510 (= res!446163 (and (bvslt (size!19273 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19273 a!3626))))))

(assert (=> start!60510 e!387191))

(assert (=> start!60510 true))

(declare-fun array_inv!14683 (array!39447) Bool)

(assert (=> start!60510 (array_inv!14683 a!3626)))

(declare-fun b!679667 () Bool)

(declare-fun e!387190 () Bool)

(assert (=> b!679667 (= e!387190 (not (contains!3546 acc!681 k!2843)))))

(declare-fun b!679668 () Bool)

(declare-fun res!446169 () Bool)

(assert (=> b!679668 (=> (not res!446169) (not e!387191))))

(declare-fun arrayNoDuplicates!0 (array!39447 (_ BitVec 32) List!13003) Bool)

(assert (=> b!679668 (= res!446169 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13000))))

(declare-fun b!679669 () Bool)

(declare-fun res!446167 () Bool)

(assert (=> b!679669 (=> (not res!446167) (not e!387191))))

(assert (=> b!679669 (= res!446167 (not (contains!3546 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679670 () Bool)

(declare-fun e!387187 () Bool)

(assert (=> b!679670 (= e!387187 (contains!3546 acc!681 k!2843))))

(declare-fun b!679671 () Bool)

(declare-fun Unit!23808 () Unit!23806)

(assert (=> b!679671 (= e!387192 Unit!23808)))

(declare-fun lt!312925 () Unit!23806)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39447 (_ BitVec 64) (_ BitVec 32)) Unit!23806)

(assert (=> b!679671 (= lt!312925 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!679671 false))

(declare-fun b!679672 () Bool)

(declare-fun res!446166 () Bool)

(assert (=> b!679672 (=> (not res!446166) (not e!387191))))

(declare-fun noDuplicate!793 (List!13003) Bool)

(assert (=> b!679672 (= res!446166 (noDuplicate!793 acc!681))))

(declare-fun b!679673 () Bool)

(declare-fun res!446158 () Bool)

(assert (=> b!679673 (=> (not res!446158) (not e!387191))))

(assert (=> b!679673 (= res!446158 (validKeyInArray!0 k!2843))))

(declare-fun b!679674 () Bool)

(declare-fun Unit!23809 () Unit!23806)

(assert (=> b!679674 (= e!387192 Unit!23809)))

(declare-fun b!679675 () Bool)

(declare-fun e!387193 () Bool)

(assert (=> b!679675 (= e!387193 e!387190)))

(declare-fun res!446171 () Bool)

(assert (=> b!679675 (=> (not res!446171) (not e!387190))))

(assert (=> b!679675 (= res!446171 (bvsle from!3004 i!1382))))

(declare-fun b!679676 () Bool)

(declare-fun res!446160 () Bool)

(assert (=> b!679676 (=> (not res!446160) (not e!387191))))

(assert (=> b!679676 (= res!446160 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19273 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679677 () Bool)

(declare-fun res!446159 () Bool)

(assert (=> b!679677 (=> (not res!446159) (not e!387191))))

(assert (=> b!679677 (= res!446159 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!679678 () Bool)

(assert (=> b!679678 (= e!387189 true)))

(declare-fun subseq!131 (List!13003 List!13003) Bool)

(assert (=> b!679678 (subseq!131 acc!681 acc!681)))

(declare-fun lt!312926 () Unit!23806)

(declare-fun lemmaListSubSeqRefl!0 (List!13003) Unit!23806)

(assert (=> b!679678 (= lt!312926 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!679679 () Bool)

(declare-fun res!446157 () Bool)

(assert (=> b!679679 (=> (not res!446157) (not e!387191))))

(assert (=> b!679679 (= res!446157 e!387193)))

(declare-fun res!446162 () Bool)

(assert (=> b!679679 (=> res!446162 e!387193)))

(assert (=> b!679679 (= res!446162 e!387187)))

(declare-fun res!446165 () Bool)

(assert (=> b!679679 (=> (not res!446165) (not e!387187))))

(assert (=> b!679679 (= res!446165 (bvsgt from!3004 i!1382))))

(assert (= (and start!60510 res!446163) b!679672))

(assert (= (and b!679672 res!446166) b!679669))

(assert (= (and b!679669 res!446167) b!679665))

(assert (= (and b!679665 res!446161) b!679679))

(assert (= (and b!679679 res!446165) b!679670))

(assert (= (and b!679679 (not res!446162)) b!679675))

(assert (= (and b!679675 res!446171) b!679667))

(assert (= (and b!679679 res!446157) b!679668))

(assert (= (and b!679668 res!446169) b!679677))

(assert (= (and b!679677 res!446159) b!679664))

(assert (= (and b!679664 res!446168) b!679673))

(assert (= (and b!679673 res!446158) b!679663))

(assert (= (and b!679663 res!446170) b!679676))

(assert (= (and b!679676 res!446160) b!679666))

(assert (= (and b!679666 c!77120) b!679671))

(assert (= (and b!679666 (not c!77120)) b!679674))

(assert (= (and b!679666 (not res!446164)) b!679678))

(declare-fun m!644973 () Bool)

(assert (=> b!679678 m!644973))

(declare-fun m!644975 () Bool)

(assert (=> b!679678 m!644975))

(declare-fun m!644977 () Bool)

(assert (=> b!679669 m!644977))

(declare-fun m!644979 () Bool)

(assert (=> b!679663 m!644979))

(declare-fun m!644981 () Bool)

(assert (=> b!679672 m!644981))

(declare-fun m!644983 () Bool)

(assert (=> b!679665 m!644983))

(declare-fun m!644985 () Bool)

(assert (=> b!679677 m!644985))

(declare-fun m!644987 () Bool)

(assert (=> b!679673 m!644987))

(declare-fun m!644989 () Bool)

(assert (=> start!60510 m!644989))

(declare-fun m!644991 () Bool)

(assert (=> b!679670 m!644991))

(declare-fun m!644993 () Bool)

(assert (=> b!679671 m!644993))

(declare-fun m!644995 () Bool)

(assert (=> b!679668 m!644995))

(declare-fun m!644997 () Bool)

(assert (=> b!679666 m!644997))

(declare-fun m!644999 () Bool)

(assert (=> b!679666 m!644999))

(declare-fun m!645001 () Bool)

(assert (=> b!679666 m!645001))

(assert (=> b!679666 m!644997))

(declare-fun m!645003 () Bool)

(assert (=> b!679666 m!645003))

(declare-fun m!645005 () Bool)

(assert (=> b!679666 m!645005))

(assert (=> b!679667 m!644991))

(push 1)

(assert (not b!679678))

(assert (not b!679666))

(assert (not b!679665))

(assert (not b!679673))

(assert (not b!679672))

(assert (not b!679663))

(assert (not b!679671))

(assert (not b!679668))

(assert (not b!679677))

(assert (not b!679670))

(assert (not b!679667))

(assert (not start!60510))

(assert (not b!679669))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

