; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60334 () Bool)

(assert start!60334)

(declare-fun b!677172 () Bool)

(declare-fun res!443785 () Bool)

(declare-fun e!386046 () Bool)

(assert (=> b!677172 (=> (not res!443785) (not e!386046))))

(declare-fun e!386043 () Bool)

(assert (=> b!677172 (= res!443785 e!386043)))

(declare-fun res!443778 () Bool)

(assert (=> b!677172 (=> res!443778 e!386043)))

(declare-fun e!386041 () Bool)

(assert (=> b!677172 (= res!443778 e!386041)))

(declare-fun res!443788 () Bool)

(assert (=> b!677172 (=> (not res!443788) (not e!386041))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677172 (= res!443788 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677173 () Bool)

(declare-fun e!386047 () Bool)

(declare-datatypes ((List!12951 0))(
  ( (Nil!12948) (Cons!12947 (h!13992 (_ BitVec 64)) (t!19187 List!12951)) )
))
(declare-fun acc!681 () List!12951)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3494 (List!12951 (_ BitVec 64)) Bool)

(assert (=> b!677173 (= e!386047 (not (contains!3494 acc!681 k!2843)))))

(declare-fun b!677174 () Bool)

(declare-fun res!443789 () Bool)

(assert (=> b!677174 (=> (not res!443789) (not e!386046))))

(assert (=> b!677174 (= res!443789 (not (contains!3494 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677175 () Bool)

(declare-fun e!386042 () Bool)

(assert (=> b!677175 (= e!386042 (not (contains!3494 acc!681 k!2843)))))

(declare-fun b!677176 () Bool)

(assert (=> b!677176 (= e!386043 e!386042)))

(declare-fun res!443784 () Bool)

(assert (=> b!677176 (=> (not res!443784) (not e!386042))))

(assert (=> b!677176 (= res!443784 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677177 () Bool)

(declare-fun e!386044 () Bool)

(assert (=> b!677177 (= e!386044 (contains!3494 acc!681 k!2843))))

(declare-fun b!677178 () Bool)

(declare-fun res!443775 () Bool)

(assert (=> b!677178 (=> (not res!443775) (not e!386046))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!677178 (= res!443775 (validKeyInArray!0 k!2843))))

(declare-fun b!677179 () Bool)

(declare-fun res!443783 () Bool)

(assert (=> b!677179 (=> (not res!443783) (not e!386046))))

(declare-datatypes ((array!39337 0))(
  ( (array!39338 (arr!18857 (Array (_ BitVec 32) (_ BitVec 64))) (size!19221 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39337)

(declare-fun arrayNoDuplicates!0 (array!39337 (_ BitVec 32) List!12951) Bool)

(assert (=> b!677179 (= res!443783 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12948))))

(declare-fun res!443786 () Bool)

(assert (=> start!60334 (=> (not res!443786) (not e!386046))))

(assert (=> start!60334 (= res!443786 (and (bvslt (size!19221 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19221 a!3626))))))

(assert (=> start!60334 e!386046))

(assert (=> start!60334 true))

(declare-fun array_inv!14631 (array!39337) Bool)

(assert (=> start!60334 (array_inv!14631 a!3626)))

(declare-fun b!677180 () Bool)

(assert (=> b!677180 (= e!386046 (not true))))

(assert (=> b!677180 (arrayNoDuplicates!0 (array!39338 (store (arr!18857 a!3626) i!1382 k!2843) (size!19221 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-datatypes ((Unit!23750 0))(
  ( (Unit!23751) )
))
(declare-fun lt!312762 () Unit!23750)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39337 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12951) Unit!23750)

(assert (=> b!677180 (= lt!312762 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677181 () Bool)

(declare-fun res!443773 () Bool)

(assert (=> b!677181 (=> (not res!443773) (not e!386046))))

(assert (=> b!677181 (= res!443773 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19221 a!3626))))))

(declare-fun b!677182 () Bool)

(declare-fun res!443779 () Bool)

(assert (=> b!677182 (=> (not res!443779) (not e!386046))))

(declare-fun noDuplicate!741 (List!12951) Bool)

(assert (=> b!677182 (= res!443779 (noDuplicate!741 acc!681))))

(declare-fun b!677183 () Bool)

(assert (=> b!677183 (= e!386041 (contains!3494 acc!681 k!2843))))

(declare-fun b!677184 () Bool)

(declare-fun res!443781 () Bool)

(assert (=> b!677184 (=> (not res!443781) (not e!386046))))

(assert (=> b!677184 (= res!443781 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19221 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!677185 () Bool)

(declare-fun res!443777 () Bool)

(assert (=> b!677185 (=> (not res!443777) (not e!386046))))

(assert (=> b!677185 (= res!443777 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677186 () Bool)

(declare-fun res!443780 () Bool)

(assert (=> b!677186 (=> (not res!443780) (not e!386046))))

(assert (=> b!677186 (= res!443780 (not (validKeyInArray!0 (select (arr!18857 a!3626) from!3004))))))

(declare-fun b!677187 () Bool)

(declare-fun e!386040 () Bool)

(assert (=> b!677187 (= e!386040 e!386047)))

(declare-fun res!443774 () Bool)

(assert (=> b!677187 (=> (not res!443774) (not e!386047))))

(assert (=> b!677187 (= res!443774 (bvsle from!3004 i!1382))))

(declare-fun b!677188 () Bool)

(declare-fun res!443792 () Bool)

(assert (=> b!677188 (=> (not res!443792) (not e!386046))))

(assert (=> b!677188 (= res!443792 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677189 () Bool)

(declare-fun res!443772 () Bool)

(assert (=> b!677189 (=> (not res!443772) (not e!386046))))

(assert (=> b!677189 (= res!443772 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!677190 () Bool)

(declare-fun res!443791 () Bool)

(assert (=> b!677190 (=> (not res!443791) (not e!386046))))

(assert (=> b!677190 (= res!443791 e!386040)))

(declare-fun res!443782 () Bool)

(assert (=> b!677190 (=> res!443782 e!386040)))

(assert (=> b!677190 (= res!443782 e!386044)))

(declare-fun res!443790 () Bool)

(assert (=> b!677190 (=> (not res!443790) (not e!386044))))

(assert (=> b!677190 (= res!443790 (bvsgt from!3004 i!1382))))

(declare-fun b!677191 () Bool)

(declare-fun res!443787 () Bool)

(assert (=> b!677191 (=> (not res!443787) (not e!386046))))

(declare-fun arrayContainsKey!0 (array!39337 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!677191 (= res!443787 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!677192 () Bool)

(declare-fun res!443776 () Bool)

(assert (=> b!677192 (=> (not res!443776) (not e!386046))))

(assert (=> b!677192 (= res!443776 (not (contains!3494 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60334 res!443786) b!677182))

(assert (= (and b!677182 res!443779) b!677174))

(assert (= (and b!677174 res!443789) b!677192))

(assert (= (and b!677192 res!443776) b!677190))

(assert (= (and b!677190 res!443790) b!677177))

(assert (= (and b!677190 (not res!443782)) b!677187))

(assert (= (and b!677187 res!443774) b!677173))

(assert (= (and b!677190 res!443791) b!677179))

(assert (= (and b!677179 res!443783) b!677185))

(assert (= (and b!677185 res!443777) b!677181))

(assert (= (and b!677181 res!443773) b!677178))

(assert (= (and b!677178 res!443775) b!677191))

(assert (= (and b!677191 res!443787) b!677184))

(assert (= (and b!677184 res!443781) b!677186))

(assert (= (and b!677186 res!443780) b!677189))

(assert (= (and b!677189 res!443772) b!677172))

(assert (= (and b!677172 res!443788) b!677183))

(assert (= (and b!677172 (not res!443778)) b!677176))

(assert (= (and b!677176 res!443784) b!677175))

(assert (= (and b!677172 res!443785) b!677188))

(assert (= (and b!677188 res!443792) b!677180))

(declare-fun m!643551 () Bool)

(assert (=> b!677180 m!643551))

(declare-fun m!643553 () Bool)

(assert (=> b!677180 m!643553))

(declare-fun m!643555 () Bool)

(assert (=> b!677180 m!643555))

(declare-fun m!643557 () Bool)

(assert (=> b!677178 m!643557))

(declare-fun m!643559 () Bool)

(assert (=> b!677191 m!643559))

(declare-fun m!643561 () Bool)

(assert (=> b!677182 m!643561))

(declare-fun m!643563 () Bool)

(assert (=> b!677174 m!643563))

(declare-fun m!643565 () Bool)

(assert (=> b!677173 m!643565))

(declare-fun m!643567 () Bool)

(assert (=> b!677188 m!643567))

(assert (=> b!677175 m!643565))

(declare-fun m!643569 () Bool)

(assert (=> b!677186 m!643569))

(assert (=> b!677186 m!643569))

(declare-fun m!643571 () Bool)

(assert (=> b!677186 m!643571))

(declare-fun m!643573 () Bool)

(assert (=> start!60334 m!643573))

(declare-fun m!643575 () Bool)

(assert (=> b!677185 m!643575))

(declare-fun m!643577 () Bool)

(assert (=> b!677179 m!643577))

(assert (=> b!677177 m!643565))

(declare-fun m!643579 () Bool)

(assert (=> b!677192 m!643579))

(assert (=> b!677183 m!643565))

(push 1)

(assert (not b!677177))

(assert (not b!677183))

(assert (not b!677185))

(assert (not b!677191))

(assert (not b!677175))

(assert (not b!677179))

(assert (not b!677188))

(assert (not b!677180))

(assert (not b!677174))

(assert (not start!60334))

(assert (not b!677182))

(assert (not b!677178))

(assert (not b!677186))

(assert (not b!677173))

