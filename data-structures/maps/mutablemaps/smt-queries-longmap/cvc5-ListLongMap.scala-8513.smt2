; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103890 () Bool)

(assert start!103890)

(declare-fun res!828971 () Bool)

(declare-fun e!704789 () Bool)

(assert (=> start!103890 (=> (not res!828971) (not e!704789))))

(declare-datatypes ((array!79943 0))(
  ( (array!79944 (arr!38562 (Array (_ BitVec 32) (_ BitVec 64))) (size!39099 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79943)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!103890 (= res!828971 (and (bvslt (size!39099 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39099 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39099 a!3892))))))

(assert (=> start!103890 e!704789))

(declare-fun array_inv!29338 (array!79943) Bool)

(assert (=> start!103890 (array_inv!29338 a!3892)))

(assert (=> start!103890 true))

(declare-fun b!1243069 () Bool)

(declare-fun res!828972 () Bool)

(assert (=> b!1243069 (=> (not res!828972) (not e!704789))))

(declare-datatypes ((List!27543 0))(
  ( (Nil!27540) (Cons!27539 (h!28748 (_ BitVec 64)) (t!41019 List!27543)) )
))
(declare-fun noDuplicate!2005 (List!27543) Bool)

(assert (=> b!1243069 (= res!828972 (noDuplicate!2005 Nil!27540))))

(declare-fun b!1243070 () Bool)

(declare-fun e!704788 () Bool)

(assert (=> b!1243070 (= e!704789 e!704788)))

(declare-fun res!828973 () Bool)

(assert (=> b!1243070 (=> res!828973 e!704788)))

(declare-fun contains!7415 (List!27543 (_ BitVec 64)) Bool)

(assert (=> b!1243070 (= res!828973 (contains!7415 Nil!27540 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1243071 () Bool)

(assert (=> b!1243071 (= e!704788 (contains!7415 Nil!27540 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!103890 res!828971) b!1243069))

(assert (= (and b!1243069 res!828972) b!1243070))

(assert (= (and b!1243070 (not res!828973)) b!1243071))

(declare-fun m!1145727 () Bool)

(assert (=> start!103890 m!1145727))

(declare-fun m!1145729 () Bool)

(assert (=> b!1243069 m!1145729))

(declare-fun m!1145731 () Bool)

(assert (=> b!1243070 m!1145731))

(declare-fun m!1145733 () Bool)

(assert (=> b!1243071 m!1145733))

(push 1)

(assert (not b!1243070))

(assert (not b!1243069))

(assert (not b!1243071))

(assert (not start!103890))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136979 () Bool)

(declare-fun lt!562262 () Bool)

(declare-fun content!615 (List!27543) (Set (_ BitVec 64)))

(assert (=> d!136979 (= lt!562262 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!615 Nil!27540)))))

(declare-fun e!704831 () Bool)

(assert (=> d!136979 (= lt!562262 e!704831)))

(declare-fun res!829015 () Bool)

(assert (=> d!136979 (=> (not res!829015) (not e!704831))))

(assert (=> d!136979 (= res!829015 (is-Cons!27539 Nil!27540))))

(assert (=> d!136979 (= (contains!7415 Nil!27540 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562262)))

(declare-fun b!1243112 () Bool)

(declare-fun e!704830 () Bool)

(assert (=> b!1243112 (= e!704831 e!704830)))

(declare-fun res!829014 () Bool)

(assert (=> b!1243112 (=> res!829014 e!704830)))

(assert (=> b!1243112 (= res!829014 (= (h!28748 Nil!27540) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1243113 () Bool)

(assert (=> b!1243113 (= e!704830 (contains!7415 (t!41019 Nil!27540) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!136979 res!829015) b!1243112))

(assert (= (and b!1243112 (not res!829014)) b!1243113))

(declare-fun m!1145765 () Bool)

(assert (=> d!136979 m!1145765))

(declare-fun m!1145767 () Bool)

(assert (=> d!136979 m!1145767))

(declare-fun m!1145769 () Bool)

(assert (=> b!1243113 m!1145769))

(assert (=> b!1243070 d!136979))

(declare-fun d!136987 () Bool)

(declare-fun res!829022 () Bool)

(declare-fun e!704838 () Bool)

(assert (=> d!136987 (=> res!829022 e!704838)))

(assert (=> d!136987 (= res!829022 (is-Nil!27540 Nil!27540))))

(assert (=> d!136987 (= (noDuplicate!2005 Nil!27540) e!704838)))

(declare-fun b!1243120 () Bool)

(declare-fun e!704839 () Bool)

(assert (=> b!1243120 (= e!704838 e!704839)))

(declare-fun res!829023 () Bool)

(assert (=> b!1243120 (=> (not res!829023) (not e!704839))))

(assert (=> b!1243120 (= res!829023 (not (contains!7415 (t!41019 Nil!27540) (h!28748 Nil!27540))))))

(declare-fun b!1243121 () Bool)

(assert (=> b!1243121 (= e!704839 (noDuplicate!2005 (t!41019 Nil!27540)))))

(assert (= (and d!136987 (not res!829022)) b!1243120))

(assert (= (and b!1243120 res!829023) b!1243121))

(declare-fun m!1145775 () Bool)

(assert (=> b!1243120 m!1145775))

(declare-fun m!1145777 () Bool)

(assert (=> b!1243121 m!1145777))

(assert (=> b!1243069 d!136987))

(declare-fun d!136993 () Bool)

(declare-fun lt!562263 () Bool)

