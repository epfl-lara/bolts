; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60284 () Bool)

(assert start!60284)

(declare-fun b!675655 () Bool)

(declare-fun e!385443 () Bool)

(declare-fun e!385440 () Bool)

(assert (=> b!675655 (= e!385443 e!385440)))

(declare-fun res!442255 () Bool)

(assert (=> b!675655 (=> (not res!442255) (not e!385440))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!675655 (= res!442255 (bvsle from!3004 i!1382))))

(declare-fun b!675656 () Bool)

(declare-fun res!442258 () Bool)

(declare-fun e!385442 () Bool)

(assert (=> b!675656 (=> (not res!442258) (not e!385442))))

(declare-datatypes ((List!12926 0))(
  ( (Nil!12923) (Cons!12922 (h!13967 (_ BitVec 64)) (t!19162 List!12926)) )
))
(declare-fun acc!681 () List!12926)

(declare-fun contains!3469 (List!12926 (_ BitVec 64)) Bool)

(assert (=> b!675656 (= res!442258 (not (contains!3469 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675657 () Bool)

(declare-fun e!385447 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!675657 (= e!385447 (not (contains!3469 acc!681 k0!2843)))))

(declare-fun b!675658 () Bool)

(assert (=> b!675658 (= e!385440 (not (contains!3469 acc!681 k0!2843)))))

(declare-fun b!675659 () Bool)

(declare-fun res!442271 () Bool)

(assert (=> b!675659 (=> (not res!442271) (not e!385442))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675659 (= res!442271 (validKeyInArray!0 k0!2843))))

(declare-fun b!675660 () Bool)

(declare-fun res!442269 () Bool)

(assert (=> b!675660 (=> (not res!442269) (not e!385442))))

(declare-fun noDuplicate!716 (List!12926) Bool)

(assert (=> b!675660 (= res!442269 (noDuplicate!716 acc!681))))

(declare-fun b!675661 () Bool)

(declare-fun res!442272 () Bool)

(assert (=> b!675661 (=> (not res!442272) (not e!385442))))

(declare-datatypes ((array!39287 0))(
  ( (array!39288 (arr!18832 (Array (_ BitVec 32) (_ BitVec 64))) (size!19196 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39287)

(declare-fun arrayNoDuplicates!0 (array!39287 (_ BitVec 32) List!12926) Bool)

(assert (=> b!675661 (= res!442272 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12923))))

(declare-fun b!675662 () Bool)

(declare-fun res!442268 () Bool)

(assert (=> b!675662 (=> (not res!442268) (not e!385442))))

(assert (=> b!675662 (= res!442268 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!675663 () Bool)

(declare-fun res!442257 () Bool)

(assert (=> b!675663 (=> (not res!442257) (not e!385442))))

(assert (=> b!675663 (= res!442257 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19196 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!675664 () Bool)

(declare-fun res!442263 () Bool)

(assert (=> b!675664 (=> (not res!442263) (not e!385442))))

(assert (=> b!675664 (= res!442263 (not (validKeyInArray!0 (select (arr!18832 a!3626) from!3004))))))

(declare-fun b!675665 () Bool)

(declare-fun e!385444 () Bool)

(assert (=> b!675665 (= e!385444 (contains!3469 acc!681 k0!2843))))

(declare-fun res!442264 () Bool)

(assert (=> start!60284 (=> (not res!442264) (not e!385442))))

(assert (=> start!60284 (= res!442264 (and (bvslt (size!19196 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19196 a!3626))))))

(assert (=> start!60284 e!385442))

(assert (=> start!60284 true))

(declare-fun array_inv!14606 (array!39287) Bool)

(assert (=> start!60284 (array_inv!14606 a!3626)))

(declare-fun b!675666 () Bool)

(declare-fun res!442262 () Bool)

(assert (=> b!675666 (=> (not res!442262) (not e!385442))))

(assert (=> b!675666 (= res!442262 (not (contains!3469 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675667 () Bool)

(declare-fun res!442261 () Bool)

(assert (=> b!675667 (=> (not res!442261) (not e!385442))))

(assert (=> b!675667 (= res!442261 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!675668 () Bool)

(declare-fun e!385441 () Bool)

(assert (=> b!675668 (= e!385441 e!385447)))

(declare-fun res!442266 () Bool)

(assert (=> b!675668 (=> (not res!442266) (not e!385447))))

(assert (=> b!675668 (= res!442266 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675669 () Bool)

(assert (=> b!675669 (= e!385442 false)))

(declare-fun lt!312687 () Bool)

(assert (=> b!675669 (= lt!312687 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!675670 () Bool)

(declare-fun e!385445 () Bool)

(assert (=> b!675670 (= e!385445 (contains!3469 acc!681 k0!2843))))

(declare-fun b!675671 () Bool)

(declare-fun res!442259 () Bool)

(assert (=> b!675671 (=> (not res!442259) (not e!385442))))

(declare-fun arrayContainsKey!0 (array!39287 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!675671 (= res!442259 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!675672 () Bool)

(declare-fun res!442273 () Bool)

(assert (=> b!675672 (=> (not res!442273) (not e!385442))))

(assert (=> b!675672 (= res!442273 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19196 a!3626))))))

(declare-fun b!675673 () Bool)

(declare-fun res!442256 () Bool)

(assert (=> b!675673 (=> (not res!442256) (not e!385442))))

(assert (=> b!675673 (= res!442256 e!385443)))

(declare-fun res!442270 () Bool)

(assert (=> b!675673 (=> res!442270 e!385443)))

(assert (=> b!675673 (= res!442270 e!385445)))

(declare-fun res!442265 () Bool)

(assert (=> b!675673 (=> (not res!442265) (not e!385445))))

(assert (=> b!675673 (= res!442265 (bvsgt from!3004 i!1382))))

(declare-fun b!675674 () Bool)

(declare-fun res!442274 () Bool)

(assert (=> b!675674 (=> (not res!442274) (not e!385442))))

(assert (=> b!675674 (= res!442274 e!385441)))

(declare-fun res!442260 () Bool)

(assert (=> b!675674 (=> res!442260 e!385441)))

(assert (=> b!675674 (= res!442260 e!385444)))

(declare-fun res!442267 () Bool)

(assert (=> b!675674 (=> (not res!442267) (not e!385444))))

(assert (=> b!675674 (= res!442267 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(assert (= (and start!60284 res!442264) b!675660))

(assert (= (and b!675660 res!442269) b!675666))

(assert (= (and b!675666 res!442262) b!675656))

(assert (= (and b!675656 res!442258) b!675673))

(assert (= (and b!675673 res!442265) b!675670))

(assert (= (and b!675673 (not res!442270)) b!675655))

(assert (= (and b!675655 res!442255) b!675658))

(assert (= (and b!675673 res!442256) b!675661))

(assert (= (and b!675661 res!442272) b!675667))

(assert (= (and b!675667 res!442261) b!675672))

(assert (= (and b!675672 res!442273) b!675659))

(assert (= (and b!675659 res!442271) b!675671))

(assert (= (and b!675671 res!442259) b!675663))

(assert (= (and b!675663 res!442257) b!675664))

(assert (= (and b!675664 res!442263) b!675662))

(assert (= (and b!675662 res!442268) b!675674))

(assert (= (and b!675674 res!442267) b!675665))

(assert (= (and b!675674 (not res!442260)) b!675668))

(assert (= (and b!675668 res!442266) b!675657))

(assert (= (and b!675674 res!442274) b!675669))

(declare-fun m!642921 () Bool)

(assert (=> b!675665 m!642921))

(declare-fun m!642923 () Bool)

(assert (=> b!675671 m!642923))

(assert (=> b!675657 m!642921))

(assert (=> b!675670 m!642921))

(declare-fun m!642925 () Bool)

(assert (=> b!675666 m!642925))

(declare-fun m!642927 () Bool)

(assert (=> b!675669 m!642927))

(declare-fun m!642929 () Bool)

(assert (=> b!675660 m!642929))

(declare-fun m!642931 () Bool)

(assert (=> b!675661 m!642931))

(declare-fun m!642933 () Bool)

(assert (=> b!675656 m!642933))

(declare-fun m!642935 () Bool)

(assert (=> b!675659 m!642935))

(assert (=> b!675658 m!642921))

(declare-fun m!642937 () Bool)

(assert (=> b!675667 m!642937))

(declare-fun m!642939 () Bool)

(assert (=> start!60284 m!642939))

(declare-fun m!642941 () Bool)

(assert (=> b!675664 m!642941))

(assert (=> b!675664 m!642941))

(declare-fun m!642943 () Bool)

(assert (=> b!675664 m!642943))

(check-sat (not b!675670) (not b!675658) (not b!675660) (not b!675659) (not b!675656) (not b!675657) (not b!675669) (not b!675671) (not b!675665) (not b!675661) (not start!60284) (not b!675664) (not b!675666) (not b!675667))
