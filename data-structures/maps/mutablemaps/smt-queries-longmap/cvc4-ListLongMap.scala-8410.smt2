; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102320 () Bool)

(assert start!102320)

(declare-fun b!1231049 () Bool)

(declare-fun res!819621 () Bool)

(declare-fun e!698368 () Bool)

(assert (=> b!1231049 (=> (not res!819621) (not e!698368))))

(declare-datatypes ((List!27266 0))(
  ( (Nil!27263) (Cons!27262 (h!28471 (_ BitVec 64)) (t!40736 List!27266)) )
))
(declare-fun acc!823 () List!27266)

(declare-fun contains!7181 (List!27266 (_ BitVec 64)) Bool)

(assert (=> b!1231049 (= res!819621 (not (contains!7181 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231050 () Bool)

(declare-fun res!819625 () Bool)

(assert (=> b!1231050 (=> (not res!819625) (not e!698368))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79401 0))(
  ( (array!79402 (arr!38315 (Array (_ BitVec 32) (_ BitVec 64))) (size!38852 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79401)

(assert (=> b!1231050 (= res!819625 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38852 a!3806)) (bvslt from!3184 (size!38852 a!3806))))))

(declare-fun b!1231051 () Bool)

(declare-fun e!698371 () Bool)

(declare-fun e!698370 () Bool)

(assert (=> b!1231051 (= e!698371 e!698370)))

(declare-fun res!819619 () Bool)

(assert (=> b!1231051 (=> (not res!819619) (not e!698370))))

(assert (=> b!1231051 (= res!819619 (not (contains!7181 Nil!27263 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231052 () Bool)

(declare-fun res!819617 () Bool)

(assert (=> b!1231052 (=> (not res!819617) (not e!698368))))

(declare-fun noDuplicate!1788 (List!27266) Bool)

(assert (=> b!1231052 (= res!819617 (noDuplicate!1788 acc!823))))

(declare-fun b!1231053 () Bool)

(declare-fun res!819626 () Bool)

(assert (=> b!1231053 (=> (not res!819626) (not e!698368))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1231053 (= res!819626 (validKeyInArray!0 k!2913))))

(declare-fun b!1231054 () Bool)

(assert (=> b!1231054 (= e!698368 (not e!698371))))

(declare-fun res!819624 () Bool)

(assert (=> b!1231054 (=> res!819624 e!698371)))

(assert (=> b!1231054 (= res!819624 (bvsgt from!3184 (size!38852 a!3806)))))

(declare-fun arrayNoDuplicates!0 (array!79401 (_ BitVec 32) List!27266) Bool)

(assert (=> b!1231054 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27262 (select (arr!38315 a!3806) from!3184) acc!823))))

(declare-fun b!1231055 () Bool)

(declare-fun res!819620 () Bool)

(assert (=> b!1231055 (=> (not res!819620) (not e!698368))))

(assert (=> b!1231055 (= res!819620 (validKeyInArray!0 (select (arr!38315 a!3806) from!3184)))))

(declare-fun b!1231056 () Bool)

(declare-fun res!819616 () Bool)

(assert (=> b!1231056 (=> (not res!819616) (not e!698368))))

(assert (=> b!1231056 (= res!819616 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1231058 () Bool)

(declare-fun res!819623 () Bool)

(assert (=> b!1231058 (=> (not res!819623) (not e!698368))))

(assert (=> b!1231058 (= res!819623 (not (contains!7181 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231059 () Bool)

(assert (=> b!1231059 (= e!698370 (not (contains!7181 Nil!27263 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!819618 () Bool)

(assert (=> start!102320 (=> (not res!819618) (not e!698368))))

(assert (=> start!102320 (= res!819618 (bvslt (size!38852 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102320 e!698368))

(declare-fun array_inv!29091 (array!79401) Bool)

(assert (=> start!102320 (array_inv!29091 a!3806)))

(assert (=> start!102320 true))

(declare-fun b!1231057 () Bool)

(declare-fun res!819622 () Bool)

(assert (=> b!1231057 (=> (not res!819622) (not e!698368))))

(declare-fun arrayContainsKey!0 (array!79401 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1231057 (= res!819622 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(assert (= (and start!102320 res!819618) b!1231053))

(assert (= (and b!1231053 res!819626) b!1231050))

(assert (= (and b!1231050 res!819625) b!1231052))

(assert (= (and b!1231052 res!819617) b!1231049))

(assert (= (and b!1231049 res!819621) b!1231058))

(assert (= (and b!1231058 res!819623) b!1231057))

(assert (= (and b!1231057 res!819622) b!1231056))

(assert (= (and b!1231056 res!819616) b!1231055))

(assert (= (and b!1231055 res!819620) b!1231054))

(assert (= (and b!1231054 (not res!819624)) b!1231051))

(assert (= (and b!1231051 res!819619) b!1231059))

(declare-fun m!1135349 () Bool)

(assert (=> b!1231053 m!1135349))

(declare-fun m!1135351 () Bool)

(assert (=> b!1231055 m!1135351))

(assert (=> b!1231055 m!1135351))

(declare-fun m!1135353 () Bool)

(assert (=> b!1231055 m!1135353))

(declare-fun m!1135355 () Bool)

(assert (=> b!1231059 m!1135355))

(declare-fun m!1135357 () Bool)

(assert (=> b!1231057 m!1135357))

(declare-fun m!1135359 () Bool)

(assert (=> start!102320 m!1135359))

(declare-fun m!1135361 () Bool)

(assert (=> b!1231056 m!1135361))

(declare-fun m!1135363 () Bool)

(assert (=> b!1231052 m!1135363))

(declare-fun m!1135365 () Bool)

(assert (=> b!1231051 m!1135365))

(assert (=> b!1231054 m!1135351))

(declare-fun m!1135367 () Bool)

(assert (=> b!1231054 m!1135367))

(declare-fun m!1135369 () Bool)

(assert (=> b!1231049 m!1135369))

(declare-fun m!1135371 () Bool)

(assert (=> b!1231058 m!1135371))

(push 1)

(assert (not b!1231052))

(assert (not b!1231059))

(assert (not start!102320))

(assert (not b!1231057))

(assert (not b!1231049))

(assert (not b!1231056))

(assert (not b!1231053))

(assert (not b!1231058))

(assert (not b!1231055))

(assert (not b!1231051))

(assert (not b!1231054))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134601 () Bool)

(declare-fun res!819643 () Bool)

(declare-fun e!698390 () Bool)

(assert (=> d!134601 (=> res!819643 e!698390)))

(assert (=> d!134601 (= res!819643 (= (select (arr!38315 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k!2913))))

(assert (=> d!134601 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!698390)))

(declare-fun b!1231080 () Bool)

(declare-fun e!698391 () Bool)

(assert (=> b!1231080 (= e!698390 e!698391)))

(declare-fun res!819644 () Bool)

(assert (=> b!1231080 (=> (not res!819644) (not e!698391))))

(assert (=> b!1231080 (= res!819644 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38852 a!3806)))))

(declare-fun b!1231081 () Bool)

(assert (=> b!1231081 (= e!698391 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134601 (not res!819643)) b!1231080))

(assert (= (and b!1231080 res!819644) b!1231081))

(declare-fun m!1135379 () Bool)

(assert (=> d!134601 m!1135379))

(declare-fun m!1135381 () Bool)

(assert (=> b!1231081 m!1135381))

(assert (=> b!1231057 d!134601))

(declare-fun d!134607 () Bool)

(declare-fun res!819655 () Bool)

(declare-fun e!698402 () Bool)

(assert (=> d!134607 (=> res!819655 e!698402)))

(assert (=> d!134607 (= res!819655 (is-Nil!27263 acc!823))))

(assert (=> d!134607 (= (noDuplicate!1788 acc!823) e!698402)))

(declare-fun b!1231092 () Bool)

(declare-fun e!698403 () Bool)

(assert (=> b!1231092 (= e!698402 e!698403)))

(declare-fun res!819656 () Bool)

(assert (=> b!1231092 (=> (not res!819656) (not e!698403))))

(assert (=> b!1231092 (= res!819656 (not (contains!7181 (t!40736 acc!823) (h!28471 acc!823))))))

(declare-fun b!1231093 () Bool)

(assert (=> b!1231093 (= e!698403 (noDuplicate!1788 (t!40736 acc!823)))))

(assert (= (and d!134607 (not res!819655)) b!1231092))

(assert (= (and b!1231092 res!819656) b!1231093))

(declare-fun m!1135386 () Bool)

(assert (=> b!1231092 m!1135386))

(declare-fun m!1135389 () Bool)

(assert (=> b!1231093 m!1135389))

(assert (=> b!1231052 d!134607))

(declare-fun d!134611 () Bool)

(assert (=> d!134611 (= (validKeyInArray!0 k!2913) (and (not (= k!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1231053 d!134611))

(declare-fun d!134617 () Bool)

(declare-fun lt!559337 () Bool)

(declare-fun content!568 (List!27266) (Set (_ BitVec 64)))

(assert (=> d!134617 (= lt!559337 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!568 acc!823)))))

(declare-fun e!698430 () Bool)

(assert (=> d!134617 (= lt!559337 e!698430)))

(declare-fun res!819680 () Bool)

(assert (=> d!134617 (=> (not res!819680) (not e!698430))))

(assert (=> d!134617 (= res!819680 (is-Cons!27262 acc!823))))

(assert (=> d!134617 (= (contains!7181 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559337)))

(declare-fun b!1231124 () Bool)

(declare-fun e!698431 () Bool)

(assert (=> b!1231124 (= e!698430 e!698431)))

(declare-fun res!819679 () Bool)

(assert (=> b!1231124 (=> res!819679 e!698431)))

(assert (=> b!1231124 (= res!819679 (= (h!28471 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231125 () Bool)

(assert (=> b!1231125 (= e!698431 (contains!7181 (t!40736 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134617 res!819680) b!1231124))

(assert (= (and b!1231124 (not res!819679)) b!1231125))

(declare-fun m!1135409 () Bool)

(assert (=> d!134617 m!1135409))

(declare-fun m!1135411 () Bool)

(assert (=> d!134617 m!1135411))

(declare-fun m!1135413 () Bool)

(assert (=> b!1231125 m!1135413))

(assert (=> b!1231058 d!134617))

(declare-fun d!134621 () Bool)

(declare-fun lt!559338 () Bool)

(assert (=> d!134621 (= lt!559338 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!568 Nil!27263)))))

(declare-fun e!698432 () Bool)

(assert (=> d!134621 (= lt!559338 e!698432)))

(declare-fun res!819682 () Bool)

(assert (=> d!134621 (=> (not res!819682) (not e!698432))))

(assert (=> d!134621 (= res!819682 (is-Cons!27262 Nil!27263))))

(assert (=> d!134621 (= (contains!7181 Nil!27263 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559338)))

(declare-fun b!1231126 () Bool)

(declare-fun e!698433 () Bool)

(assert (=> b!1231126 (= e!698432 e!698433)))

(declare-fun res!819681 () Bool)

(assert (=> b!1231126 (=> res!819681 e!698433)))

(assert (=> b!1231126 (= res!819681 (= (h!28471 Nil!27263) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231127 () Bool)

(assert (=> b!1231127 (= e!698433 (contains!7181 (t!40736 Nil!27263) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134621 res!819682) b!1231126))

(assert (= (and b!1231126 (not res!819681)) b!1231127))

(declare-fun m!1135415 () Bool)

(assert (=> d!134621 m!1135415))

(declare-fun m!1135417 () Bool)

(assert (=> d!134621 m!1135417))

(declare-fun m!1135419 () Bool)

(assert (=> b!1231127 m!1135419))

(assert (=> b!1231059 d!134621))

(declare-fun d!134623 () Bool)

(declare-fun lt!559339 () Bool)

(assert (=> d!134623 (= lt!559339 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!568 acc!823)))))

(declare-fun e!698434 () Bool)

(assert (=> d!134623 (= lt!559339 e!698434)))

(declare-fun res!819684 () Bool)

(assert (=> d!134623 (=> (not res!819684) (not e!698434))))

(assert (=> d!134623 (= res!819684 (is-Cons!27262 acc!823))))

(assert (=> d!134623 (= (contains!7181 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559339)))

(declare-fun b!1231128 () Bool)

(declare-fun e!698435 () Bool)

(assert (=> b!1231128 (= e!698434 e!698435)))

(declare-fun res!819683 () Bool)

(assert (=> b!1231128 (=> res!819683 e!698435)))

(assert (=> b!1231128 (= res!819683 (= (h!28471 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231129 () Bool)

(assert (=> b!1231129 (= e!698435 (contains!7181 (t!40736 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134623 res!819684) b!1231128))

(assert (= (and b!1231128 (not res!819683)) b!1231129))

(assert (=> d!134623 m!1135409))

(declare-fun m!1135421 () Bool)

(assert (=> d!134623 m!1135421))

(declare-fun m!1135423 () Bool)

(assert (=> b!1231129 m!1135423))

(assert (=> b!1231049 d!134623))

(declare-fun b!1231174 () Bool)

(declare-fun e!698479 () Bool)

(assert (=> b!1231174 (= e!698479 (contains!7181 (Cons!27262 (select (arr!38315 a!3806) from!3184) acc!823) (select (arr!38315 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun d!134625 () Bool)

(declare-fun res!819723 () Bool)

(declare-fun e!698477 () Bool)

(assert (=> d!134625 (=> res!819723 e!698477)))

(assert (=> d!134625 (= res!819723 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38852 a!3806)))))

(assert (=> d!134625 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27262 (select (arr!38315 a!3806) from!3184) acc!823)) e!698477)))

(declare-fun b!1231175 () Bool)

(declare-fun e!698478 () Bool)

(declare-fun call!60877 () Bool)

(assert (=> b!1231175 (= e!698478 call!60877)))

(declare-fun bm!60874 () Bool)

(declare-fun c!120589 () Bool)

(assert (=> bm!60874 (= call!60877 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120589 (Cons!27262 (select (arr!38315 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27262 (select (arr!38315 a!3806) from!3184) acc!823)) (Cons!27262 (select (arr!38315 a!3806) from!3184) acc!823))))))

(declare-fun b!1231176 () Bool)

(declare-fun e!698476 () Bool)

(assert (=> b!1231176 (= e!698477 e!698476)))

(declare-fun res!819722 () Bool)

(assert (=> b!1231176 (=> (not res!819722) (not e!698476))))

(assert (=> b!1231176 (= res!819722 (not e!698479))))

(declare-fun res!819721 () Bool)

(assert (=> b!1231176 (=> (not res!819721) (not e!698479))))

(assert (=> b!1231176 (= res!819721 (validKeyInArray!0 (select (arr!38315 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1231177 () Bool)

(assert (=> b!1231177 (= e!698478 call!60877)))

(declare-fun b!1231178 () Bool)

(assert (=> b!1231178 (= e!698476 e!698478)))

(assert (=> b!1231178 (= c!120589 (validKeyInArray!0 (select (arr!38315 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134625 (not res!819723)) b!1231176))

(assert (= (and b!1231176 res!819721) b!1231174))

(assert (= (and b!1231176 res!819722) b!1231178))

(assert (= (and b!1231178 c!120589) b!1231177))

(assert (= (and b!1231178 (not c!120589)) b!1231175))

(assert (= (or b!1231177 b!1231175) bm!60874))

(assert (=> b!1231174 m!1135379))

(assert (=> b!1231174 m!1135379))

(declare-fun m!1135467 () Bool)

(assert (=> b!1231174 m!1135467))

(assert (=> bm!60874 m!1135379))

(declare-fun m!1135471 () Bool)

(assert (=> bm!60874 m!1135471))

(assert (=> b!1231176 m!1135379))

