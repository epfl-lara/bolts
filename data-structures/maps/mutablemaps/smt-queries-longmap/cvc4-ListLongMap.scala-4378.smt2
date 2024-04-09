; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60316 () Bool)

(assert start!60316)

(declare-fun b!676615 () Bool)

(declare-fun res!443219 () Bool)

(declare-fun e!385826 () Bool)

(assert (=> b!676615 (=> (not res!443219) (not e!385826))))

(declare-datatypes ((array!39319 0))(
  ( (array!39320 (arr!18848 (Array (_ BitVec 32) (_ BitVec 64))) (size!19212 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39319)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!676615 (= res!443219 (not (validKeyInArray!0 (select (arr!18848 a!3626) from!3004))))))

(declare-fun b!676616 () Bool)

(declare-fun res!443227 () Bool)

(assert (=> b!676616 (=> (not res!443227) (not e!385826))))

(declare-fun e!385829 () Bool)

(assert (=> b!676616 (= res!443227 e!385829)))

(declare-fun res!443232 () Bool)

(assert (=> b!676616 (=> res!443232 e!385829)))

(declare-fun e!385827 () Bool)

(assert (=> b!676616 (= res!443232 e!385827)))

(declare-fun res!443226 () Bool)

(assert (=> b!676616 (=> (not res!443226) (not e!385827))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!676616 (= res!443226 (bvsgt from!3004 i!1382))))

(declare-fun b!676617 () Bool)

(declare-fun res!443228 () Bool)

(assert (=> b!676617 (=> (not res!443228) (not e!385826))))

(declare-fun e!385825 () Bool)

(assert (=> b!676617 (= res!443228 e!385825)))

(declare-fun res!443217 () Bool)

(assert (=> b!676617 (=> res!443217 e!385825)))

(declare-fun e!385831 () Bool)

(assert (=> b!676617 (= res!443217 e!385831)))

(declare-fun res!443234 () Bool)

(assert (=> b!676617 (=> (not res!443234) (not e!385831))))

(assert (=> b!676617 (= res!443234 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676618 () Bool)

(declare-fun res!443215 () Bool)

(assert (=> b!676618 (=> (not res!443215) (not e!385826))))

(declare-datatypes ((List!12942 0))(
  ( (Nil!12939) (Cons!12938 (h!13983 (_ BitVec 64)) (t!19178 List!12942)) )
))
(declare-fun acc!681 () List!12942)

(declare-fun arrayNoDuplicates!0 (array!39319 (_ BitVec 32) List!12942) Bool)

(assert (=> b!676618 (= res!443215 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!676619 () Bool)

(declare-fun res!443220 () Bool)

(assert (=> b!676619 (=> (not res!443220) (not e!385826))))

(assert (=> b!676619 (= res!443220 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19212 a!3626))))))

(declare-fun res!443225 () Bool)

(assert (=> start!60316 (=> (not res!443225) (not e!385826))))

(assert (=> start!60316 (= res!443225 (and (bvslt (size!19212 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19212 a!3626))))))

(assert (=> start!60316 e!385826))

(assert (=> start!60316 true))

(declare-fun array_inv!14622 (array!39319) Bool)

(assert (=> start!60316 (array_inv!14622 a!3626)))

(declare-fun b!676620 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3485 (List!12942 (_ BitVec 64)) Bool)

(assert (=> b!676620 (= e!385827 (contains!3485 acc!681 k!2843))))

(declare-fun b!676621 () Bool)

(declare-fun e!385824 () Bool)

(assert (=> b!676621 (= e!385829 e!385824)))

(declare-fun res!443224 () Bool)

(assert (=> b!676621 (=> (not res!443224) (not e!385824))))

(assert (=> b!676621 (= res!443224 (bvsle from!3004 i!1382))))

(declare-fun b!676622 () Bool)

(declare-fun res!443233 () Bool)

(assert (=> b!676622 (=> (not res!443233) (not e!385826))))

(assert (=> b!676622 (= res!443233 (validKeyInArray!0 k!2843))))

(declare-fun b!676623 () Bool)

(declare-fun res!443230 () Bool)

(assert (=> b!676623 (=> (not res!443230) (not e!385826))))

(assert (=> b!676623 (= res!443230 (not (contains!3485 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676624 () Bool)

(declare-fun res!443231 () Bool)

(assert (=> b!676624 (=> (not res!443231) (not e!385826))))

(assert (=> b!676624 (= res!443231 (not (contains!3485 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676625 () Bool)

(declare-fun res!443223 () Bool)

(assert (=> b!676625 (=> (not res!443223) (not e!385826))))

(assert (=> b!676625 (= res!443223 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!676626 () Bool)

(declare-fun res!443229 () Bool)

(assert (=> b!676626 (=> (not res!443229) (not e!385826))))

(assert (=> b!676626 (= res!443229 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12939))))

(declare-fun b!676627 () Bool)

(declare-fun e!385828 () Bool)

(assert (=> b!676627 (= e!385825 e!385828)))

(declare-fun res!443221 () Bool)

(assert (=> b!676627 (=> (not res!443221) (not e!385828))))

(assert (=> b!676627 (= res!443221 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676628 () Bool)

(assert (=> b!676628 (= e!385828 (not (contains!3485 acc!681 k!2843)))))

(declare-fun b!676629 () Bool)

(declare-fun res!443222 () Bool)

(assert (=> b!676629 (=> (not res!443222) (not e!385826))))

(declare-fun arrayContainsKey!0 (array!39319 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!676629 (= res!443222 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!676630 () Bool)

(assert (=> b!676630 (= e!385824 (not (contains!3485 acc!681 k!2843)))))

(declare-fun b!676631 () Bool)

(declare-fun res!443216 () Bool)

(assert (=> b!676631 (=> (not res!443216) (not e!385826))))

(assert (=> b!676631 (= res!443216 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19212 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!676632 () Bool)

(assert (=> b!676632 (= e!385826 false)))

(declare-fun lt!312735 () Bool)

(assert (=> b!676632 (= lt!312735 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676633 () Bool)

(assert (=> b!676633 (= e!385831 (contains!3485 acc!681 k!2843))))

(declare-fun b!676634 () Bool)

(declare-fun res!443218 () Bool)

(assert (=> b!676634 (=> (not res!443218) (not e!385826))))

(declare-fun noDuplicate!732 (List!12942) Bool)

(assert (=> b!676634 (= res!443218 (noDuplicate!732 acc!681))))

(assert (= (and start!60316 res!443225) b!676634))

(assert (= (and b!676634 res!443218) b!676623))

(assert (= (and b!676623 res!443230) b!676624))

(assert (= (and b!676624 res!443231) b!676616))

(assert (= (and b!676616 res!443226) b!676620))

(assert (= (and b!676616 (not res!443232)) b!676621))

(assert (= (and b!676621 res!443224) b!676630))

(assert (= (and b!676616 res!443227) b!676626))

(assert (= (and b!676626 res!443229) b!676618))

(assert (= (and b!676618 res!443215) b!676619))

(assert (= (and b!676619 res!443220) b!676622))

(assert (= (and b!676622 res!443233) b!676629))

(assert (= (and b!676629 res!443222) b!676631))

(assert (= (and b!676631 res!443216) b!676615))

(assert (= (and b!676615 res!443219) b!676625))

(assert (= (and b!676625 res!443223) b!676617))

(assert (= (and b!676617 res!443234) b!676633))

(assert (= (and b!676617 (not res!443217)) b!676627))

(assert (= (and b!676627 res!443221) b!676628))

(assert (= (and b!676617 res!443228) b!676632))

(declare-fun m!643305 () Bool)

(assert (=> b!676626 m!643305))

(declare-fun m!643307 () Bool)

(assert (=> b!676634 m!643307))

(declare-fun m!643309 () Bool)

(assert (=> b!676630 m!643309))

(declare-fun m!643311 () Bool)

(assert (=> start!60316 m!643311))

(declare-fun m!643313 () Bool)

(assert (=> b!676632 m!643313))

(declare-fun m!643315 () Bool)

(assert (=> b!676622 m!643315))

(assert (=> b!676628 m!643309))

(declare-fun m!643317 () Bool)

(assert (=> b!676624 m!643317))

(declare-fun m!643319 () Bool)

(assert (=> b!676618 m!643319))

(declare-fun m!643321 () Bool)

(assert (=> b!676629 m!643321))

(declare-fun m!643323 () Bool)

(assert (=> b!676623 m!643323))

(declare-fun m!643325 () Bool)

(assert (=> b!676615 m!643325))

(assert (=> b!676615 m!643325))

(declare-fun m!643327 () Bool)

(assert (=> b!676615 m!643327))

(assert (=> b!676633 m!643309))

(assert (=> b!676620 m!643309))

(push 1)

(assert (not b!676632))

(assert (not b!676633))

(assert (not b!676629))

(assert (not b!676634))

(assert (not b!676628))

(assert (not b!676626))

(assert (not b!676622))

(assert (not start!60316))

(assert (not b!676623))

(assert (not b!676620))

(assert (not b!676630))

(assert (not b!676618))

(assert (not b!676615))

