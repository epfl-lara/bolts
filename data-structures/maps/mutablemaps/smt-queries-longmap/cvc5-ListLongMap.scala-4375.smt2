; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60294 () Bool)

(assert start!60294)

(declare-fun b!675955 () Bool)

(declare-fun res!442561 () Bool)

(declare-fun e!385564 () Bool)

(assert (=> b!675955 (=> (not res!442561) (not e!385564))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675955 (= res!442561 (validKeyInArray!0 k!2843))))

(declare-fun b!675956 () Bool)

(declare-fun res!442572 () Bool)

(assert (=> b!675956 (=> (not res!442572) (not e!385564))))

(declare-datatypes ((array!39297 0))(
  ( (array!39298 (arr!18837 (Array (_ BitVec 32) (_ BitVec 64))) (size!19201 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39297)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!675956 (= res!442572 (not (validKeyInArray!0 (select (arr!18837 a!3626) from!3004))))))

(declare-fun b!675957 () Bool)

(declare-fun res!442557 () Bool)

(assert (=> b!675957 (=> (not res!442557) (not e!385564))))

(declare-datatypes ((List!12931 0))(
  ( (Nil!12928) (Cons!12927 (h!13972 (_ BitVec 64)) (t!19167 List!12931)) )
))
(declare-fun acc!681 () List!12931)

(declare-fun noDuplicate!721 (List!12931) Bool)

(assert (=> b!675957 (= res!442557 (noDuplicate!721 acc!681))))

(declare-fun b!675958 () Bool)

(declare-fun e!385566 () Bool)

(declare-fun contains!3474 (List!12931 (_ BitVec 64)) Bool)

(assert (=> b!675958 (= e!385566 (contains!3474 acc!681 k!2843))))

(declare-fun b!675959 () Bool)

(declare-fun res!442568 () Bool)

(assert (=> b!675959 (=> (not res!442568) (not e!385564))))

(declare-fun arrayContainsKey!0 (array!39297 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!675959 (= res!442568 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!675960 () Bool)

(declare-fun res!442562 () Bool)

(assert (=> b!675960 (=> (not res!442562) (not e!385564))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!675960 (= res!442562 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19201 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!675961 () Bool)

(declare-fun res!442571 () Bool)

(assert (=> b!675961 (=> (not res!442571) (not e!385564))))

(declare-fun arrayNoDuplicates!0 (array!39297 (_ BitVec 32) List!12931) Bool)

(assert (=> b!675961 (= res!442571 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!675962 () Bool)

(declare-fun res!442566 () Bool)

(assert (=> b!675962 (=> (not res!442566) (not e!385564))))

(assert (=> b!675962 (= res!442566 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!675964 () Bool)

(declare-fun res!442567 () Bool)

(assert (=> b!675964 (=> (not res!442567) (not e!385564))))

(declare-fun e!385563 () Bool)

(assert (=> b!675964 (= res!442567 e!385563)))

(declare-fun res!442555 () Bool)

(assert (=> b!675964 (=> res!442555 e!385563)))

(assert (=> b!675964 (= res!442555 e!385566)))

(declare-fun res!442560 () Bool)

(assert (=> b!675964 (=> (not res!442560) (not e!385566))))

(assert (=> b!675964 (= res!442560 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675965 () Bool)

(declare-fun res!442558 () Bool)

(assert (=> b!675965 (=> (not res!442558) (not e!385564))))

(assert (=> b!675965 (= res!442558 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19201 a!3626))))))

(declare-fun b!675966 () Bool)

(declare-fun res!442559 () Bool)

(assert (=> b!675966 (=> (not res!442559) (not e!385564))))

(assert (=> b!675966 (= res!442559 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12928))))

(declare-fun b!675967 () Bool)

(declare-fun e!385567 () Bool)

(assert (=> b!675967 (= e!385567 (not (contains!3474 acc!681 k!2843)))))

(declare-fun b!675968 () Bool)

(declare-fun e!385560 () Bool)

(assert (=> b!675968 (= e!385563 e!385560)))

(declare-fun res!442574 () Bool)

(assert (=> b!675968 (=> (not res!442574) (not e!385560))))

(assert (=> b!675968 (= res!442574 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675969 () Bool)

(declare-fun res!442570 () Bool)

(assert (=> b!675969 (=> (not res!442570) (not e!385564))))

(declare-fun e!385562 () Bool)

(assert (=> b!675969 (= res!442570 e!385562)))

(declare-fun res!442565 () Bool)

(assert (=> b!675969 (=> res!442565 e!385562)))

(declare-fun e!385565 () Bool)

(assert (=> b!675969 (= res!442565 e!385565)))

(declare-fun res!442573 () Bool)

(assert (=> b!675969 (=> (not res!442573) (not e!385565))))

(assert (=> b!675969 (= res!442573 (bvsgt from!3004 i!1382))))

(declare-fun b!675970 () Bool)

(declare-fun res!442563 () Bool)

(assert (=> b!675970 (=> (not res!442563) (not e!385564))))

(assert (=> b!675970 (= res!442563 (not (contains!3474 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675971 () Bool)

(assert (=> b!675971 (= e!385562 e!385567)))

(declare-fun res!442564 () Bool)

(assert (=> b!675971 (=> (not res!442564) (not e!385567))))

(assert (=> b!675971 (= res!442564 (bvsle from!3004 i!1382))))

(declare-fun b!675972 () Bool)

(declare-fun res!442569 () Bool)

(assert (=> b!675972 (=> (not res!442569) (not e!385564))))

(assert (=> b!675972 (= res!442569 (not (contains!3474 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675963 () Bool)

(assert (=> b!675963 (= e!385565 (contains!3474 acc!681 k!2843))))

(declare-fun res!442556 () Bool)

(assert (=> start!60294 (=> (not res!442556) (not e!385564))))

(assert (=> start!60294 (= res!442556 (and (bvslt (size!19201 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19201 a!3626))))))

(assert (=> start!60294 e!385564))

(assert (=> start!60294 true))

(declare-fun array_inv!14611 (array!39297) Bool)

(assert (=> start!60294 (array_inv!14611 a!3626)))

(declare-fun b!675973 () Bool)

(assert (=> b!675973 (= e!385560 (not (contains!3474 acc!681 k!2843)))))

(declare-fun b!675974 () Bool)

(assert (=> b!675974 (= e!385564 false)))

(declare-fun lt!312702 () Bool)

(assert (=> b!675974 (= lt!312702 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(assert (= (and start!60294 res!442556) b!675957))

(assert (= (and b!675957 res!442557) b!675972))

(assert (= (and b!675972 res!442569) b!675970))

(assert (= (and b!675970 res!442563) b!675969))

(assert (= (and b!675969 res!442573) b!675963))

(assert (= (and b!675969 (not res!442565)) b!675971))

(assert (= (and b!675971 res!442564) b!675967))

(assert (= (and b!675969 res!442570) b!675966))

(assert (= (and b!675966 res!442559) b!675961))

(assert (= (and b!675961 res!442571) b!675965))

(assert (= (and b!675965 res!442558) b!675955))

(assert (= (and b!675955 res!442561) b!675959))

(assert (= (and b!675959 res!442568) b!675960))

(assert (= (and b!675960 res!442562) b!675956))

(assert (= (and b!675956 res!442572) b!675962))

(assert (= (and b!675962 res!442566) b!675964))

(assert (= (and b!675964 res!442560) b!675958))

(assert (= (and b!675964 (not res!442555)) b!675968))

(assert (= (and b!675968 res!442574) b!675973))

(assert (= (and b!675964 res!442567) b!675974))

(declare-fun m!643041 () Bool)

(assert (=> b!675957 m!643041))

(declare-fun m!643043 () Bool)

(assert (=> b!675966 m!643043))

(declare-fun m!643045 () Bool)

(assert (=> start!60294 m!643045))

(declare-fun m!643047 () Bool)

(assert (=> b!675972 m!643047))

(declare-fun m!643049 () Bool)

(assert (=> b!675955 m!643049))

(declare-fun m!643051 () Bool)

(assert (=> b!675959 m!643051))

(declare-fun m!643053 () Bool)

(assert (=> b!675963 m!643053))

(assert (=> b!675967 m!643053))

(declare-fun m!643055 () Bool)

(assert (=> b!675961 m!643055))

(assert (=> b!675973 m!643053))

(declare-fun m!643057 () Bool)

(assert (=> b!675970 m!643057))

(assert (=> b!675958 m!643053))

(declare-fun m!643059 () Bool)

(assert (=> b!675956 m!643059))

(assert (=> b!675956 m!643059))

(declare-fun m!643061 () Bool)

(assert (=> b!675956 m!643061))

(declare-fun m!643063 () Bool)

(assert (=> b!675974 m!643063))

(push 1)

(assert (not start!60294))

(assert (not b!675974))

(assert (not b!675956))

(assert (not b!675970))

(assert (not b!675972))

(assert (not b!675957))

(assert (not b!675959))

(assert (not b!675958))

(assert (not b!675966))

(assert (not b!675961))

(assert (not b!675973))

(assert (not b!675967))

(assert (not b!675963))

(assert (not b!675955))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

