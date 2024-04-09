; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59800 () Bool)

(assert start!59800)

(declare-fun b!660192 () Bool)

(declare-fun res!428433 () Bool)

(declare-fun e!379383 () Bool)

(assert (=> b!660192 (=> (not res!428433) (not e!379383))))

(declare-datatypes ((List!12684 0))(
  ( (Nil!12681) (Cons!12680 (h!13725 (_ BitVec 64)) (t!18920 List!12684)) )
))
(declare-fun acc!681 () List!12684)

(declare-fun contains!3227 (List!12684 (_ BitVec 64)) Bool)

(assert (=> b!660192 (= res!428433 (not (contains!3227 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660193 () Bool)

(declare-fun res!428435 () Bool)

(assert (=> b!660193 (=> (not res!428435) (not e!379383))))

(declare-fun noDuplicate!474 (List!12684) Bool)

(assert (=> b!660193 (= res!428435 (noDuplicate!474 acc!681))))

(declare-fun res!428431 () Bool)

(assert (=> start!59800 (=> (not res!428431) (not e!379383))))

(declare-datatypes ((array!38803 0))(
  ( (array!38804 (arr!18590 (Array (_ BitVec 32) (_ BitVec 64))) (size!18954 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38803)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59800 (= res!428431 (and (bvslt (size!18954 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18954 a!3626))))))

(assert (=> start!59800 e!379383))

(assert (=> start!59800 true))

(declare-fun array_inv!14364 (array!38803) Bool)

(assert (=> start!59800 (array_inv!14364 a!3626)))

(declare-fun b!660194 () Bool)

(declare-fun e!379384 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!660194 (= e!379384 (not (contains!3227 acc!681 k!2843)))))

(declare-fun b!660195 () Bool)

(declare-fun res!428438 () Bool)

(assert (=> b!660195 (=> (not res!428438) (not e!379383))))

(declare-fun e!379387 () Bool)

(assert (=> b!660195 (= res!428438 e!379387)))

(declare-fun res!428434 () Bool)

(assert (=> b!660195 (=> res!428434 e!379387)))

(declare-fun e!379385 () Bool)

(assert (=> b!660195 (= res!428434 e!379385)))

(declare-fun res!428432 () Bool)

(assert (=> b!660195 (=> (not res!428432) (not e!379385))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660195 (= res!428432 (bvsgt from!3004 i!1382))))

(declare-fun b!660196 () Bool)

(declare-fun res!428436 () Bool)

(assert (=> b!660196 (=> (not res!428436) (not e!379383))))

(declare-fun arrayNoDuplicates!0 (array!38803 (_ BitVec 32) List!12684) Bool)

(assert (=> b!660196 (= res!428436 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12681))))

(declare-fun b!660197 () Bool)

(assert (=> b!660197 (= e!379387 e!379384)))

(declare-fun res!428430 () Bool)

(assert (=> b!660197 (=> (not res!428430) (not e!379384))))

(assert (=> b!660197 (= res!428430 (bvsle from!3004 i!1382))))

(declare-fun b!660198 () Bool)

(declare-fun res!428437 () Bool)

(assert (=> b!660198 (=> (not res!428437) (not e!379383))))

(assert (=> b!660198 (= res!428437 (not (contains!3227 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660199 () Bool)

(assert (=> b!660199 (= e!379385 (contains!3227 acc!681 k!2843))))

(declare-fun b!660200 () Bool)

(assert (=> b!660200 (= e!379383 false)))

(declare-fun lt!308721 () Bool)

(assert (=> b!660200 (= lt!308721 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!59800 res!428431) b!660193))

(assert (= (and b!660193 res!428435) b!660192))

(assert (= (and b!660192 res!428433) b!660198))

(assert (= (and b!660198 res!428437) b!660195))

(assert (= (and b!660195 res!428432) b!660199))

(assert (= (and b!660195 (not res!428434)) b!660197))

(assert (= (and b!660197 res!428430) b!660194))

(assert (= (and b!660195 res!428438) b!660196))

(assert (= (and b!660196 res!428436) b!660200))

(declare-fun m!632959 () Bool)

(assert (=> b!660193 m!632959))

(declare-fun m!632961 () Bool)

(assert (=> b!660196 m!632961))

(declare-fun m!632963 () Bool)

(assert (=> b!660192 m!632963))

(declare-fun m!632965 () Bool)

(assert (=> b!660200 m!632965))

(declare-fun m!632967 () Bool)

(assert (=> start!59800 m!632967))

(declare-fun m!632969 () Bool)

(assert (=> b!660194 m!632969))

(assert (=> b!660199 m!632969))

(declare-fun m!632971 () Bool)

(assert (=> b!660198 m!632971))

(push 1)

(assert (not b!660193))

(assert (not b!660196))

(assert (not start!59800))

(assert (not b!660200))

(assert (not b!660192))

(assert (not b!660198))

(assert (not b!660194))

(assert (not b!660199))

