; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102028 () Bool)

(assert start!102028)

(declare-fun b!1227951 () Bool)

(declare-fun res!816690 () Bool)

(declare-fun e!697116 () Bool)

(assert (=> b!1227951 (=> (not res!816690) (not e!697116))))

(declare-datatypes ((List!27192 0))(
  ( (Nil!27189) (Cons!27188 (h!28397 (_ BitVec 64)) (t!40662 List!27192)) )
))
(declare-fun acc!823 () List!27192)

(declare-fun noDuplicate!1714 (List!27192) Bool)

(assert (=> b!1227951 (= res!816690 (noDuplicate!1714 acc!823))))

(declare-fun b!1227952 () Bool)

(declare-fun res!816683 () Bool)

(declare-fun e!697115 () Bool)

(assert (=> b!1227952 (=> res!816683 e!697115)))

(declare-fun contains!7107 (List!27192 (_ BitVec 64)) Bool)

(assert (=> b!1227952 (= res!816683 (contains!7107 Nil!27189 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227953 () Bool)

(declare-fun res!816688 () Bool)

(assert (=> b!1227953 (=> (not res!816688) (not e!697116))))

(declare-datatypes ((array!79244 0))(
  ( (array!79245 (arr!38241 (Array (_ BitVec 32) (_ BitVec 64))) (size!38778 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79244)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227953 (= res!816688 (validKeyInArray!0 (select (arr!38241 a!3806) from!3184)))))

(declare-fun b!1227954 () Bool)

(assert (=> b!1227954 (= e!697116 (not e!697115))))

(declare-fun res!816687 () Bool)

(assert (=> b!1227954 (=> res!816687 e!697115)))

(assert (=> b!1227954 (= res!816687 (bvsgt from!3184 (size!38778 a!3806)))))

(declare-fun arrayNoDuplicates!0 (array!79244 (_ BitVec 32) List!27192) Bool)

(assert (=> b!1227954 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27188 (select (arr!38241 a!3806) from!3184) acc!823))))

(declare-fun b!1227955 () Bool)

(declare-fun res!816689 () Bool)

(assert (=> b!1227955 (=> res!816689 e!697115)))

(assert (=> b!1227955 (= res!816689 (contains!7107 Nil!27189 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227956 () Bool)

(assert (=> b!1227956 (= e!697115 true)))

(declare-datatypes ((Unit!40622 0))(
  ( (Unit!40623) )
))
(declare-fun lt!558899 () Unit!40622)

(declare-fun noDuplicateSubseq!47 (List!27192 List!27192) Unit!40622)

(assert (=> b!1227956 (= lt!558899 (noDuplicateSubseq!47 Nil!27189 acc!823))))

(declare-fun b!1227957 () Bool)

(declare-fun res!816685 () Bool)

(assert (=> b!1227957 (=> (not res!816685) (not e!697116))))

(assert (=> b!1227957 (= res!816685 (not (contains!7107 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227958 () Bool)

(declare-fun res!816692 () Bool)

(assert (=> b!1227958 (=> (not res!816692) (not e!697116))))

(assert (=> b!1227958 (= res!816692 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38778 a!3806)) (bvslt from!3184 (size!38778 a!3806))))))

(declare-fun res!816684 () Bool)

(assert (=> start!102028 (=> (not res!816684) (not e!697116))))

(assert (=> start!102028 (= res!816684 (bvslt (size!38778 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102028 e!697116))

(declare-fun array_inv!29017 (array!79244) Bool)

(assert (=> start!102028 (array_inv!29017 a!3806)))

(assert (=> start!102028 true))

(declare-fun b!1227959 () Bool)

(declare-fun res!816682 () Bool)

(assert (=> b!1227959 (=> (not res!816682) (not e!697116))))

(assert (=> b!1227959 (= res!816682 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227960 () Bool)

(declare-fun res!816681 () Bool)

(assert (=> b!1227960 (=> (not res!816681) (not e!697116))))

(declare-fun k!2913 () (_ BitVec 64))

(assert (=> b!1227960 (= res!816681 (validKeyInArray!0 k!2913))))

(declare-fun b!1227961 () Bool)

(declare-fun res!816680 () Bool)

(assert (=> b!1227961 (=> (not res!816680) (not e!697116))))

(assert (=> b!1227961 (= res!816680 (not (contains!7107 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227962 () Bool)

(declare-fun res!816691 () Bool)

(assert (=> b!1227962 (=> (not res!816691) (not e!697116))))

(declare-fun arrayContainsKey!0 (array!79244 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227962 (= res!816691 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227963 () Bool)

(declare-fun res!816686 () Bool)

(assert (=> b!1227963 (=> res!816686 e!697115)))

(declare-fun subseq!494 (List!27192 List!27192) Bool)

(assert (=> b!1227963 (= res!816686 (not (subseq!494 Nil!27189 acc!823)))))

(assert (= (and start!102028 res!816684) b!1227960))

(assert (= (and b!1227960 res!816681) b!1227958))

(assert (= (and b!1227958 res!816692) b!1227951))

(assert (= (and b!1227951 res!816690) b!1227961))

(assert (= (and b!1227961 res!816680) b!1227957))

(assert (= (and b!1227957 res!816685) b!1227962))

(assert (= (and b!1227962 res!816691) b!1227959))

(assert (= (and b!1227959 res!816682) b!1227953))

(assert (= (and b!1227953 res!816688) b!1227954))

(assert (= (and b!1227954 (not res!816687)) b!1227952))

(assert (= (and b!1227952 (not res!816683)) b!1227955))

(assert (= (and b!1227955 (not res!816689)) b!1227963))

(assert (= (and b!1227963 (not res!816686)) b!1227956))

(declare-fun m!1132613 () Bool)

(assert (=> b!1227955 m!1132613))

(declare-fun m!1132615 () Bool)

(assert (=> b!1227962 m!1132615))

(declare-fun m!1132617 () Bool)

(assert (=> start!102028 m!1132617))

(declare-fun m!1132619 () Bool)

(assert (=> b!1227959 m!1132619))

(declare-fun m!1132621 () Bool)

(assert (=> b!1227963 m!1132621))

(declare-fun m!1132623 () Bool)

(assert (=> b!1227952 m!1132623))

(declare-fun m!1132625 () Bool)

(assert (=> b!1227953 m!1132625))

(assert (=> b!1227953 m!1132625))

(declare-fun m!1132627 () Bool)

(assert (=> b!1227953 m!1132627))

(assert (=> b!1227954 m!1132625))

(declare-fun m!1132629 () Bool)

(assert (=> b!1227954 m!1132629))

(declare-fun m!1132631 () Bool)

(assert (=> b!1227951 m!1132631))

(declare-fun m!1132633 () Bool)

(assert (=> b!1227957 m!1132633))

(declare-fun m!1132635 () Bool)

(assert (=> b!1227960 m!1132635))

(declare-fun m!1132637 () Bool)

(assert (=> b!1227961 m!1132637))

(declare-fun m!1132639 () Bool)

(assert (=> b!1227956 m!1132639))

(push 1)

(assert (not b!1227951))

(assert (not b!1227954))

(assert (not start!102028))

(assert (not b!1227959))

(assert (not b!1227961))

(assert (not b!1227957))

(assert (not b!1227952))

(assert (not b!1227962))

(assert (not b!1227956))

(assert (not b!1227953))

(assert (not b!1227963))

(assert (not b!1227960))

(assert (not b!1227955))

(check-sat)

