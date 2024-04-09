; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62242 () Bool)

(assert start!62242)

(declare-fun b!697147 () Bool)

(declare-fun e!396297 () Bool)

(assert (=> b!697147 (= e!396297 (not true))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13227 0))(
  ( (Nil!13224) (Cons!13223 (h!14268 (_ BitVec 64)) (t!19517 List!13227)) )
))
(declare-fun acc!681 () List!13227)

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39955 0))(
  ( (array!39956 (arr!19133 (Array (_ BitVec 32) (_ BitVec 64))) (size!19516 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39955)

(declare-fun arrayNoDuplicates!0 (array!39955 (_ BitVec 32) List!13227) Bool)

(assert (=> b!697147 (arrayNoDuplicates!0 (array!39956 (store (arr!19133 a!3626) i!1382 k!2843) (size!19516 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-datatypes ((Unit!24554 0))(
  ( (Unit!24555) )
))
(declare-fun lt!317085 () Unit!24554)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39955 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13227) Unit!24554)

(assert (=> b!697147 (= lt!317085 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!697148 () Bool)

(declare-fun res!461246 () Bool)

(assert (=> b!697148 (=> (not res!461246) (not e!396297))))

(assert (=> b!697148 (= res!461246 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!697149 () Bool)

(declare-fun e!396301 () Bool)

(declare-fun contains!3770 (List!13227 (_ BitVec 64)) Bool)

(assert (=> b!697149 (= e!396301 (contains!3770 acc!681 k!2843))))

(declare-fun b!697150 () Bool)

(declare-fun res!461248 () Bool)

(assert (=> b!697150 (=> (not res!461248) (not e!396297))))

(assert (=> b!697150 (= res!461248 (not (contains!3770 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697151 () Bool)

(declare-fun e!396303 () Bool)

(assert (=> b!697151 (= e!396303 (contains!3770 acc!681 k!2843))))

(declare-fun b!697152 () Bool)

(declare-fun res!461250 () Bool)

(assert (=> b!697152 (=> (not res!461250) (not e!396297))))

(declare-fun arrayContainsKey!0 (array!39955 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!697152 (= res!461250 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!697153 () Bool)

(declare-fun res!461253 () Bool)

(assert (=> b!697153 (=> (not res!461253) (not e!396297))))

(assert (=> b!697153 (= res!461253 (not (contains!3770 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697154 () Bool)

(declare-fun res!461243 () Bool)

(assert (=> b!697154 (=> (not res!461243) (not e!396297))))

(declare-fun e!396299 () Bool)

(assert (=> b!697154 (= res!461243 e!396299)))

(declare-fun res!461256 () Bool)

(assert (=> b!697154 (=> res!461256 e!396299)))

(assert (=> b!697154 (= res!461256 e!396301)))

(declare-fun res!461242 () Bool)

(assert (=> b!697154 (=> (not res!461242) (not e!396301))))

(assert (=> b!697154 (= res!461242 (bvsgt from!3004 i!1382))))

(declare-fun b!697155 () Bool)

(declare-fun e!396298 () Bool)

(assert (=> b!697155 (= e!396299 e!396298)))

(declare-fun res!461244 () Bool)

(assert (=> b!697155 (=> (not res!461244) (not e!396298))))

(assert (=> b!697155 (= res!461244 (bvsle from!3004 i!1382))))

(declare-fun b!697156 () Bool)

(declare-fun res!461258 () Bool)

(assert (=> b!697156 (=> (not res!461258) (not e!396297))))

(assert (=> b!697156 (= res!461258 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13224))))

(declare-fun b!697157 () Bool)

(declare-fun res!461249 () Bool)

(assert (=> b!697157 (=> (not res!461249) (not e!396297))))

(assert (=> b!697157 (= res!461249 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!697158 () Bool)

(assert (=> b!697158 (= e!396298 (not (contains!3770 acc!681 k!2843)))))

(declare-fun res!461255 () Bool)

(assert (=> start!62242 (=> (not res!461255) (not e!396297))))

(assert (=> start!62242 (= res!461255 (and (bvslt (size!19516 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19516 a!3626))))))

(assert (=> start!62242 e!396297))

(assert (=> start!62242 true))

(declare-fun array_inv!14907 (array!39955) Bool)

(assert (=> start!62242 (array_inv!14907 a!3626)))

(declare-fun b!697146 () Bool)

(declare-fun res!461252 () Bool)

(assert (=> b!697146 (=> (not res!461252) (not e!396297))))

(assert (=> b!697146 (= res!461252 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!697159 () Bool)

(declare-fun e!396302 () Bool)

(declare-fun e!396304 () Bool)

(assert (=> b!697159 (= e!396302 e!396304)))

(declare-fun res!461254 () Bool)

(assert (=> b!697159 (=> (not res!461254) (not e!396304))))

(assert (=> b!697159 (= res!461254 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!697160 () Bool)

(declare-fun res!461240 () Bool)

(assert (=> b!697160 (=> (not res!461240) (not e!396297))))

(assert (=> b!697160 (= res!461240 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19516 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!697161 () Bool)

(declare-fun res!461239 () Bool)

(assert (=> b!697161 (=> (not res!461239) (not e!396297))))

(declare-fun noDuplicate!1017 (List!13227) Bool)

(assert (=> b!697161 (= res!461239 (noDuplicate!1017 acc!681))))

(declare-fun b!697162 () Bool)

(declare-fun res!461238 () Bool)

(assert (=> b!697162 (=> (not res!461238) (not e!396297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!697162 (= res!461238 (not (validKeyInArray!0 (select (arr!19133 a!3626) from!3004))))))

(declare-fun b!697163 () Bool)

(declare-fun res!461251 () Bool)

(assert (=> b!697163 (=> (not res!461251) (not e!396297))))

(assert (=> b!697163 (= res!461251 (validKeyInArray!0 k!2843))))

(declare-fun b!697164 () Bool)

(declare-fun res!461257 () Bool)

(assert (=> b!697164 (=> (not res!461257) (not e!396297))))

(assert (=> b!697164 (= res!461257 e!396302)))

(declare-fun res!461245 () Bool)

(assert (=> b!697164 (=> res!461245 e!396302)))

(assert (=> b!697164 (= res!461245 e!396303)))

(declare-fun res!461241 () Bool)

(assert (=> b!697164 (=> (not res!461241) (not e!396303))))

(assert (=> b!697164 (= res!461241 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!697165 () Bool)

(assert (=> b!697165 (= e!396304 (not (contains!3770 acc!681 k!2843)))))

(declare-fun b!697166 () Bool)

(declare-fun res!461247 () Bool)

(assert (=> b!697166 (=> (not res!461247) (not e!396297))))

(assert (=> b!697166 (= res!461247 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19516 a!3626))))))

(assert (= (and start!62242 res!461255) b!697161))

(assert (= (and b!697161 res!461239) b!697150))

(assert (= (and b!697150 res!461248) b!697153))

(assert (= (and b!697153 res!461253) b!697154))

(assert (= (and b!697154 res!461242) b!697149))

(assert (= (and b!697154 (not res!461256)) b!697155))

(assert (= (and b!697155 res!461244) b!697158))

(assert (= (and b!697154 res!461243) b!697156))

(assert (= (and b!697156 res!461258) b!697157))

(assert (= (and b!697157 res!461249) b!697166))

(assert (= (and b!697166 res!461247) b!697163))

(assert (= (and b!697163 res!461251) b!697152))

(assert (= (and b!697152 res!461250) b!697160))

(assert (= (and b!697160 res!461240) b!697162))

(assert (= (and b!697162 res!461238) b!697148))

(assert (= (and b!697148 res!461246) b!697164))

(assert (= (and b!697164 res!461241) b!697151))

(assert (= (and b!697164 (not res!461245)) b!697159))

(assert (= (and b!697159 res!461254) b!697165))

(assert (= (and b!697164 res!461257) b!697146))

(assert (= (and b!697146 res!461252) b!697147))

(declare-fun m!657669 () Bool)

(assert (=> b!697146 m!657669))

(declare-fun m!657671 () Bool)

(assert (=> b!697150 m!657671))

(declare-fun m!657673 () Bool)

(assert (=> b!697153 m!657673))

(declare-fun m!657675 () Bool)

(assert (=> b!697165 m!657675))

(declare-fun m!657677 () Bool)

(assert (=> b!697147 m!657677))

(declare-fun m!657679 () Bool)

(assert (=> b!697147 m!657679))

(declare-fun m!657681 () Bool)

(assert (=> b!697147 m!657681))

(declare-fun m!657683 () Bool)

(assert (=> b!697152 m!657683))

(assert (=> b!697151 m!657675))

(declare-fun m!657685 () Bool)

(assert (=> b!697163 m!657685))

(declare-fun m!657687 () Bool)

(assert (=> b!697157 m!657687))

(declare-fun m!657689 () Bool)

(assert (=> b!697162 m!657689))

(assert (=> b!697162 m!657689))

(declare-fun m!657691 () Bool)

(assert (=> b!697162 m!657691))

(declare-fun m!657693 () Bool)

(assert (=> start!62242 m!657693))

(assert (=> b!697149 m!657675))

(declare-fun m!657695 () Bool)

(assert (=> b!697161 m!657695))

(assert (=> b!697158 m!657675))

(declare-fun m!657697 () Bool)

(assert (=> b!697156 m!657697))

(push 1)

(assert (not b!697162))

(assert (not b!697161))

(assert (not b!697150))

(assert (not b!697158))

(assert (not start!62242))

(assert (not b!697156))

(assert (not b!697165))

(assert (not b!697157))

(assert (not b!697163))

(assert (not b!697152))

(assert (not b!697153))

(assert (not b!697147))

(assert (not b!697151))

(assert (not b!697149))

(assert (not b!697146))

(check-sat)

