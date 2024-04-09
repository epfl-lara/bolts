; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102304 () Bool)

(assert start!102304)

(declare-fun b!1230817 () Bool)

(declare-fun res!819388 () Bool)

(declare-fun e!698305 () Bool)

(assert (=> b!1230817 (=> (not res!819388) (not e!698305))))

(declare-datatypes ((List!27258 0))(
  ( (Nil!27255) (Cons!27254 (h!28463 (_ BitVec 64)) (t!40728 List!27258)) )
))
(declare-fun acc!823 () List!27258)

(declare-fun contains!7173 (List!27258 (_ BitVec 64)) Bool)

(assert (=> b!1230817 (= res!819388 (not (contains!7173 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230818 () Bool)

(declare-fun res!819392 () Bool)

(assert (=> b!1230818 (=> (not res!819392) (not e!698305))))

(declare-datatypes ((array!79385 0))(
  ( (array!79386 (arr!38307 (Array (_ BitVec 32) (_ BitVec 64))) (size!38844 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79385)

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230818 (= res!819392 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun res!819386 () Bool)

(assert (=> start!102304 (=> (not res!819386) (not e!698305))))

(assert (=> start!102304 (= res!819386 (bvslt (size!38844 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102304 e!698305))

(declare-fun array_inv!29083 (array!79385) Bool)

(assert (=> start!102304 (array_inv!29083 a!3806)))

(assert (=> start!102304 true))

(declare-fun b!1230819 () Bool)

(assert (=> b!1230819 (= e!698305 (not true))))

(declare-fun arrayNoDuplicates!0 (array!79385 (_ BitVec 32) List!27258) Bool)

(assert (=> b!1230819 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27254 (select (arr!38307 a!3806) from!3184) acc!823))))

(declare-fun b!1230820 () Bool)

(declare-fun res!819389 () Bool)

(assert (=> b!1230820 (=> (not res!819389) (not e!698305))))

(assert (=> b!1230820 (= res!819389 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230821 () Bool)

(declare-fun res!819385 () Bool)

(assert (=> b!1230821 (=> (not res!819385) (not e!698305))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230821 (= res!819385 (validKeyInArray!0 (select (arr!38307 a!3806) from!3184)))))

(declare-fun b!1230822 () Bool)

(declare-fun res!819391 () Bool)

(assert (=> b!1230822 (=> (not res!819391) (not e!698305))))

(declare-fun noDuplicate!1780 (List!27258) Bool)

(assert (=> b!1230822 (= res!819391 (noDuplicate!1780 acc!823))))

(declare-fun b!1230823 () Bool)

(declare-fun res!819387 () Bool)

(assert (=> b!1230823 (=> (not res!819387) (not e!698305))))

(assert (=> b!1230823 (= res!819387 (validKeyInArray!0 k!2913))))

(declare-fun b!1230824 () Bool)

(declare-fun res!819390 () Bool)

(assert (=> b!1230824 (=> (not res!819390) (not e!698305))))

(assert (=> b!1230824 (= res!819390 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38844 a!3806)) (bvslt from!3184 (size!38844 a!3806))))))

(declare-fun b!1230825 () Bool)

(declare-fun res!819384 () Bool)

(assert (=> b!1230825 (=> (not res!819384) (not e!698305))))

(assert (=> b!1230825 (= res!819384 (not (contains!7173 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102304 res!819386) b!1230823))

(assert (= (and b!1230823 res!819387) b!1230824))

(assert (= (and b!1230824 res!819390) b!1230822))

(assert (= (and b!1230822 res!819391) b!1230817))

(assert (= (and b!1230817 res!819388) b!1230825))

(assert (= (and b!1230825 res!819384) b!1230818))

(assert (= (and b!1230818 res!819392) b!1230820))

(assert (= (and b!1230820 res!819389) b!1230821))

(assert (= (and b!1230821 res!819385) b!1230819))

(declare-fun m!1135181 () Bool)

(assert (=> start!102304 m!1135181))

(declare-fun m!1135183 () Bool)

(assert (=> b!1230819 m!1135183))

(declare-fun m!1135185 () Bool)

(assert (=> b!1230819 m!1135185))

(declare-fun m!1135187 () Bool)

(assert (=> b!1230817 m!1135187))

(assert (=> b!1230821 m!1135183))

(assert (=> b!1230821 m!1135183))

(declare-fun m!1135189 () Bool)

(assert (=> b!1230821 m!1135189))

(declare-fun m!1135191 () Bool)

(assert (=> b!1230818 m!1135191))

(declare-fun m!1135193 () Bool)

(assert (=> b!1230822 m!1135193))

(declare-fun m!1135195 () Bool)

(assert (=> b!1230825 m!1135195))

(declare-fun m!1135197 () Bool)

(assert (=> b!1230823 m!1135197))

(declare-fun m!1135199 () Bool)

(assert (=> b!1230820 m!1135199))

(push 1)

(assert (not b!1230819))

(assert (not b!1230817))

(assert (not b!1230822))

(assert (not b!1230823))

(assert (not b!1230820))

(assert (not b!1230825))

(assert (not b!1230821))

(assert (not b!1230818))

(assert (not start!102304))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

