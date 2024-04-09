; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60150 () Bool)

(assert start!60150)

(declare-fun b!670889 () Bool)

(declare-fun e!383502 () Bool)

(declare-datatypes ((List!12859 0))(
  ( (Nil!12856) (Cons!12855 (h!13900 (_ BitVec 64)) (t!19095 List!12859)) )
))
(declare-fun acc!681 () List!12859)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3402 (List!12859 (_ BitVec 64)) Bool)

(assert (=> b!670889 (= e!383502 (not (contains!3402 acc!681 k!2843)))))

(declare-fun b!670890 () Bool)

(declare-fun res!437759 () Bool)

(declare-fun e!383505 () Bool)

(assert (=> b!670890 (=> (not res!437759) (not e!383505))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!670890 (= res!437759 (validKeyInArray!0 k!2843))))

(declare-fun b!670891 () Bool)

(assert (=> b!670891 (= e!383505 (not true))))

(declare-datatypes ((array!39153 0))(
  ( (array!39154 (arr!18765 (Array (_ BitVec 32) (_ BitVec 64))) (size!19129 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39153)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!39153 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!670891 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun b!670892 () Bool)

(declare-fun res!437764 () Bool)

(assert (=> b!670892 (=> (not res!437764) (not e!383505))))

(declare-fun arrayNoDuplicates!0 (array!39153 (_ BitVec 32) List!12859) Bool)

(assert (=> b!670892 (= res!437764 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12856))))

(declare-fun b!670893 () Bool)

(declare-fun res!437763 () Bool)

(assert (=> b!670893 (=> (not res!437763) (not e!383505))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!670893 (= res!437763 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19129 a!3626))))))

(declare-fun b!670894 () Bool)

(declare-fun res!437761 () Bool)

(assert (=> b!670894 (=> (not res!437761) (not e!383505))))

(assert (=> b!670894 (= res!437761 (validKeyInArray!0 (select (arr!18765 a!3626) from!3004)))))

(declare-fun b!670895 () Bool)

(declare-fun res!437773 () Bool)

(assert (=> b!670895 (=> (not res!437773) (not e!383505))))

(assert (=> b!670895 (= res!437773 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!670896 () Bool)

(declare-fun res!437768 () Bool)

(assert (=> b!670896 (=> (not res!437768) (not e!383505))))

(assert (=> b!670896 (= res!437768 (= (select (arr!18765 a!3626) from!3004) k!2843))))

(declare-fun b!670897 () Bool)

(declare-fun res!437767 () Bool)

(assert (=> b!670897 (=> (not res!437767) (not e!383505))))

(assert (=> b!670897 (= res!437767 (not (contains!3402 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670898 () Bool)

(declare-fun res!437765 () Bool)

(assert (=> b!670898 (=> (not res!437765) (not e!383505))))

(declare-fun e!383504 () Bool)

(assert (=> b!670898 (= res!437765 e!383504)))

(declare-fun res!437771 () Bool)

(assert (=> b!670898 (=> res!437771 e!383504)))

(declare-fun e!383503 () Bool)

(assert (=> b!670898 (= res!437771 e!383503)))

(declare-fun res!437766 () Bool)

(assert (=> b!670898 (=> (not res!437766) (not e!383503))))

(assert (=> b!670898 (= res!437766 (bvsgt from!3004 i!1382))))

(declare-fun b!670899 () Bool)

(declare-fun res!437760 () Bool)

(assert (=> b!670899 (=> (not res!437760) (not e!383505))))

(assert (=> b!670899 (= res!437760 (not (contains!3402 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670900 () Bool)

(declare-fun res!437774 () Bool)

(assert (=> b!670900 (=> (not res!437774) (not e!383505))))

(assert (=> b!670900 (= res!437774 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670901 () Bool)

(assert (=> b!670901 (= e!383504 e!383502)))

(declare-fun res!437770 () Bool)

(assert (=> b!670901 (=> (not res!437770) (not e!383502))))

(assert (=> b!670901 (= res!437770 (bvsle from!3004 i!1382))))

(declare-fun b!670902 () Bool)

(declare-fun res!437762 () Bool)

(assert (=> b!670902 (=> (not res!437762) (not e!383505))))

(declare-fun noDuplicate!649 (List!12859) Bool)

(assert (=> b!670902 (= res!437762 (noDuplicate!649 acc!681))))

(declare-fun b!670903 () Bool)

(assert (=> b!670903 (= e!383503 (contains!3402 acc!681 k!2843))))

(declare-fun res!437769 () Bool)

(assert (=> start!60150 (=> (not res!437769) (not e!383505))))

(assert (=> start!60150 (= res!437769 (and (bvslt (size!19129 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19129 a!3626))))))

(assert (=> start!60150 e!383505))

(assert (=> start!60150 true))

(declare-fun array_inv!14539 (array!39153) Bool)

(assert (=> start!60150 (array_inv!14539 a!3626)))

(declare-fun b!670904 () Bool)

(declare-fun res!437772 () Bool)

(assert (=> b!670904 (=> (not res!437772) (not e!383505))))

(assert (=> b!670904 (= res!437772 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19129 a!3626)) (not (= from!3004 i!1382))))))

(assert (= (and start!60150 res!437769) b!670902))

(assert (= (and b!670902 res!437762) b!670897))

(assert (= (and b!670897 res!437767) b!670899))

(assert (= (and b!670899 res!437760) b!670898))

(assert (= (and b!670898 res!437766) b!670903))

(assert (= (and b!670898 (not res!437771)) b!670901))

(assert (= (and b!670901 res!437770) b!670889))

(assert (= (and b!670898 res!437765) b!670892))

(assert (= (and b!670892 res!437764) b!670900))

(assert (= (and b!670900 res!437774) b!670893))

(assert (= (and b!670893 res!437763) b!670890))

(assert (= (and b!670890 res!437759) b!670895))

(assert (= (and b!670895 res!437773) b!670904))

(assert (= (and b!670904 res!437772) b!670894))

(assert (= (and b!670894 res!437761) b!670896))

(assert (= (and b!670896 res!437768) b!670891))

(declare-fun m!640611 () Bool)

(assert (=> b!670889 m!640611))

(assert (=> b!670903 m!640611))

(declare-fun m!640613 () Bool)

(assert (=> b!670899 m!640613))

(declare-fun m!640615 () Bool)

(assert (=> b!670890 m!640615))

(declare-fun m!640617 () Bool)

(assert (=> b!670894 m!640617))

(assert (=> b!670894 m!640617))

(declare-fun m!640619 () Bool)

(assert (=> b!670894 m!640619))

(declare-fun m!640621 () Bool)

(assert (=> b!670895 m!640621))

(declare-fun m!640623 () Bool)

(assert (=> start!60150 m!640623))

(declare-fun m!640625 () Bool)

(assert (=> b!670902 m!640625))

(assert (=> b!670896 m!640617))

(declare-fun m!640627 () Bool)

(assert (=> b!670897 m!640627))

(declare-fun m!640629 () Bool)

(assert (=> b!670891 m!640629))

(declare-fun m!640631 () Bool)

(assert (=> b!670892 m!640631))

(declare-fun m!640633 () Bool)

(assert (=> b!670900 m!640633))

(push 1)

(assert (not b!670902))

(assert (not b!670891))

(assert (not b!670892))

(assert (not b!670894))

(assert (not b!670890))

(assert (not b!670889))

(assert (not b!670903))

(assert (not b!670900))

(assert (not b!670897))

(assert (not b!670895))

(assert (not start!60150))

(assert (not b!670899))

(check-sat)

