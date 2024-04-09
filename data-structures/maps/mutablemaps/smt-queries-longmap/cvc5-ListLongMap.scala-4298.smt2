; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59832 () Bool)

(assert start!59832)

(declare-fun b!660661 () Bool)

(declare-fun res!428899 () Bool)

(declare-fun e!379627 () Bool)

(assert (=> b!660661 (=> (not res!428899) (not e!379627))))

(declare-datatypes ((array!38835 0))(
  ( (array!38836 (arr!18606 (Array (_ BitVec 32) (_ BitVec 64))) (size!18970 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38835)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38835 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!660661 (= res!428899 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!660663 () Bool)

(declare-fun res!428912 () Bool)

(assert (=> b!660663 (=> (not res!428912) (not e!379627))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12700 0))(
  ( (Nil!12697) (Cons!12696 (h!13741 (_ BitVec 64)) (t!18936 List!12700)) )
))
(declare-fun acc!681 () List!12700)

(declare-fun arrayNoDuplicates!0 (array!38835 (_ BitVec 32) List!12700) Bool)

(assert (=> b!660663 (= res!428912 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660664 () Bool)

(declare-fun e!379626 () Bool)

(declare-fun e!379625 () Bool)

(assert (=> b!660664 (= e!379626 e!379625)))

(declare-fun res!428908 () Bool)

(assert (=> b!660664 (=> (not res!428908) (not e!379625))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660664 (= res!428908 (bvsle from!3004 i!1382))))

(declare-fun b!660665 () Bool)

(assert (=> b!660665 (= e!379627 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(assert (=> b!660665 (arrayContainsKey!0 (array!38836 (store (arr!18606 a!3626) i!1382 k!2843) (size!18970 a!3626)) k!2843 from!3004)))

(declare-fun b!660666 () Bool)

(declare-fun res!428906 () Bool)

(assert (=> b!660666 (=> (not res!428906) (not e!379627))))

(assert (=> b!660666 (= res!428906 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12697))))

(declare-fun b!660667 () Bool)

(declare-fun e!379623 () Bool)

(declare-fun contains!3243 (List!12700 (_ BitVec 64)) Bool)

(assert (=> b!660667 (= e!379623 (contains!3243 acc!681 k!2843))))

(declare-fun b!660668 () Bool)

(declare-fun res!428910 () Bool)

(assert (=> b!660668 (=> (not res!428910) (not e!379627))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!660668 (= res!428910 (validKeyInArray!0 k!2843))))

(declare-fun b!660669 () Bool)

(declare-fun res!428907 () Bool)

(assert (=> b!660669 (=> (not res!428907) (not e!379627))))

(assert (=> b!660669 (= res!428907 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18970 a!3626))))))

(declare-fun b!660670 () Bool)

(declare-fun res!428904 () Bool)

(assert (=> b!660670 (=> (not res!428904) (not e!379627))))

(assert (=> b!660670 (= res!428904 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18970 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!660671 () Bool)

(declare-fun res!428905 () Bool)

(assert (=> b!660671 (=> (not res!428905) (not e!379627))))

(assert (=> b!660671 (= res!428905 (not (contains!3243 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660672 () Bool)

(declare-fun res!428903 () Bool)

(assert (=> b!660672 (=> (not res!428903) (not e!379627))))

(assert (=> b!660672 (= res!428903 (not (contains!3243 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!428911 () Bool)

(assert (=> start!59832 (=> (not res!428911) (not e!379627))))

(assert (=> start!59832 (= res!428911 (and (bvslt (size!18970 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18970 a!3626))))))

(assert (=> start!59832 e!379627))

(assert (=> start!59832 true))

(declare-fun array_inv!14380 (array!38835) Bool)

(assert (=> start!59832 (array_inv!14380 a!3626)))

(declare-fun b!660662 () Bool)

(declare-fun res!428902 () Bool)

(assert (=> b!660662 (=> (not res!428902) (not e!379627))))

(assert (=> b!660662 (= res!428902 e!379626)))

(declare-fun res!428909 () Bool)

(assert (=> b!660662 (=> res!428909 e!379626)))

(assert (=> b!660662 (= res!428909 e!379623)))

(declare-fun res!428900 () Bool)

(assert (=> b!660662 (=> (not res!428900) (not e!379623))))

(assert (=> b!660662 (= res!428900 (bvsgt from!3004 i!1382))))

(declare-fun b!660673 () Bool)

(declare-fun res!428901 () Bool)

(assert (=> b!660673 (=> (not res!428901) (not e!379627))))

(declare-fun noDuplicate!490 (List!12700) Bool)

(assert (=> b!660673 (= res!428901 (noDuplicate!490 acc!681))))

(declare-fun b!660674 () Bool)

(assert (=> b!660674 (= e!379625 (not (contains!3243 acc!681 k!2843)))))

(assert (= (and start!59832 res!428911) b!660673))

(assert (= (and b!660673 res!428901) b!660672))

(assert (= (and b!660672 res!428903) b!660671))

(assert (= (and b!660671 res!428905) b!660662))

(assert (= (and b!660662 res!428900) b!660667))

(assert (= (and b!660662 (not res!428909)) b!660664))

(assert (= (and b!660664 res!428908) b!660674))

(assert (= (and b!660662 res!428902) b!660666))

(assert (= (and b!660666 res!428906) b!660663))

(assert (= (and b!660663 res!428912) b!660669))

(assert (= (and b!660669 res!428907) b!660668))

(assert (= (and b!660668 res!428910) b!660661))

(assert (= (and b!660661 res!428899) b!660670))

(assert (= (and b!660670 res!428904) b!660665))

(declare-fun m!633189 () Bool)

(assert (=> b!660671 m!633189))

(declare-fun m!633191 () Bool)

(assert (=> b!660672 m!633191))

(declare-fun m!633193 () Bool)

(assert (=> b!660666 m!633193))

(declare-fun m!633195 () Bool)

(assert (=> b!660668 m!633195))

(declare-fun m!633197 () Bool)

(assert (=> start!59832 m!633197))

(declare-fun m!633199 () Bool)

(assert (=> b!660661 m!633199))

(declare-fun m!633201 () Bool)

(assert (=> b!660674 m!633201))

(declare-fun m!633203 () Bool)

(assert (=> b!660665 m!633203))

(declare-fun m!633205 () Bool)

(assert (=> b!660665 m!633205))

(assert (=> b!660667 m!633201))

(declare-fun m!633207 () Bool)

(assert (=> b!660663 m!633207))

(declare-fun m!633209 () Bool)

(assert (=> b!660673 m!633209))

(push 1)

