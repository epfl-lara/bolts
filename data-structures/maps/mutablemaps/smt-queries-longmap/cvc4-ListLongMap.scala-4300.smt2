; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59848 () Bool)

(assert start!59848)

(declare-fun b!660997 () Bool)

(declare-fun res!429235 () Bool)

(declare-fun e!379743 () Bool)

(assert (=> b!660997 (=> (not res!429235) (not e!379743))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!660997 (= res!429235 (validKeyInArray!0 k!2843))))

(declare-fun b!660998 () Bool)

(declare-fun e!379744 () Bool)

(declare-datatypes ((List!12708 0))(
  ( (Nil!12705) (Cons!12704 (h!13749 (_ BitVec 64)) (t!18944 List!12708)) )
))
(declare-fun acc!681 () List!12708)

(declare-fun contains!3251 (List!12708 (_ BitVec 64)) Bool)

(assert (=> b!660998 (= e!379744 (not (contains!3251 acc!681 k!2843)))))

(declare-fun b!660999 () Bool)

(declare-fun res!429247 () Bool)

(assert (=> b!660999 (=> (not res!429247) (not e!379743))))

(assert (=> b!660999 (= res!429247 (not (contains!3251 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661000 () Bool)

(declare-fun res!429242 () Bool)

(assert (=> b!661000 (=> (not res!429242) (not e!379743))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!38851 0))(
  ( (array!38852 (arr!18614 (Array (_ BitVec 32) (_ BitVec 64))) (size!18978 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38851)

(assert (=> b!661000 (= res!429242 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18978 a!3626))))))

(declare-fun b!661001 () Bool)

(declare-fun res!429246 () Bool)

(assert (=> b!661001 (=> (not res!429246) (not e!379743))))

(declare-fun arrayNoDuplicates!0 (array!38851 (_ BitVec 32) List!12708) Bool)

(assert (=> b!661001 (= res!429246 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12705))))

(declare-fun b!661002 () Bool)

(declare-fun e!379747 () Bool)

(assert (=> b!661002 (= e!379747 e!379744)))

(declare-fun res!429248 () Bool)

(assert (=> b!661002 (=> (not res!429248) (not e!379744))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!661002 (= res!429248 (bvsle from!3004 i!1382))))

(declare-fun b!661003 () Bool)

(declare-fun e!379745 () Bool)

(assert (=> b!661003 (= e!379745 (contains!3251 acc!681 k!2843))))

(declare-fun b!661004 () Bool)

(assert (=> b!661004 (= e!379743 (not true))))

(declare-fun arrayContainsKey!0 (array!38851 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661004 (arrayContainsKey!0 (array!38852 (store (arr!18614 a!3626) i!1382 k!2843) (size!18978 a!3626)) k!2843 from!3004)))

(declare-fun b!661005 () Bool)

(declare-fun res!429244 () Bool)

(assert (=> b!661005 (=> (not res!429244) (not e!379743))))

(assert (=> b!661005 (= res!429244 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661006 () Bool)

(declare-fun res!429237 () Bool)

(assert (=> b!661006 (=> (not res!429237) (not e!379743))))

(assert (=> b!661006 (= res!429237 (not (contains!3251 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661007 () Bool)

(declare-fun res!429245 () Bool)

(assert (=> b!661007 (=> (not res!429245) (not e!379743))))

(assert (=> b!661007 (= res!429245 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18978 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!661008 () Bool)

(declare-fun res!429239 () Bool)

(assert (=> b!661008 (=> (not res!429239) (not e!379743))))

(assert (=> b!661008 (= res!429239 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!661009 () Bool)

(declare-fun res!429243 () Bool)

(assert (=> b!661009 (=> (not res!429243) (not e!379743))))

(assert (=> b!661009 (= res!429243 e!379747)))

(declare-fun res!429241 () Bool)

(assert (=> b!661009 (=> res!429241 e!379747)))

(assert (=> b!661009 (= res!429241 e!379745)))

(declare-fun res!429238 () Bool)

(assert (=> b!661009 (=> (not res!429238) (not e!379745))))

(assert (=> b!661009 (= res!429238 (bvsgt from!3004 i!1382))))

(declare-fun res!429236 () Bool)

(assert (=> start!59848 (=> (not res!429236) (not e!379743))))

(assert (=> start!59848 (= res!429236 (and (bvslt (size!18978 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18978 a!3626))))))

(assert (=> start!59848 e!379743))

(assert (=> start!59848 true))

(declare-fun array_inv!14388 (array!38851) Bool)

(assert (=> start!59848 (array_inv!14388 a!3626)))

(declare-fun b!661010 () Bool)

(declare-fun res!429240 () Bool)

(assert (=> b!661010 (=> (not res!429240) (not e!379743))))

(declare-fun noDuplicate!498 (List!12708) Bool)

(assert (=> b!661010 (= res!429240 (noDuplicate!498 acc!681))))

(assert (= (and start!59848 res!429236) b!661010))

(assert (= (and b!661010 res!429240) b!661006))

(assert (= (and b!661006 res!429237) b!660999))

(assert (= (and b!660999 res!429247) b!661009))

(assert (= (and b!661009 res!429238) b!661003))

(assert (= (and b!661009 (not res!429241)) b!661002))

(assert (= (and b!661002 res!429248) b!660998))

(assert (= (and b!661009 res!429243) b!661001))

(assert (= (and b!661001 res!429246) b!661008))

(assert (= (and b!661008 res!429239) b!661000))

(assert (= (and b!661000 res!429242) b!660997))

(assert (= (and b!660997 res!429235) b!661005))

(assert (= (and b!661005 res!429244) b!661007))

(assert (= (and b!661007 res!429245) b!661004))

(declare-fun m!633365 () Bool)

(assert (=> b!660998 m!633365))

(declare-fun m!633367 () Bool)

(assert (=> b!660997 m!633367))

(declare-fun m!633369 () Bool)

(assert (=> b!661004 m!633369))

(declare-fun m!633371 () Bool)

(assert (=> b!661004 m!633371))

(assert (=> b!661003 m!633365))

(declare-fun m!633373 () Bool)

(assert (=> b!661010 m!633373))

(declare-fun m!633375 () Bool)

(assert (=> start!59848 m!633375))

(declare-fun m!633377 () Bool)

(assert (=> b!660999 m!633377))

(declare-fun m!633379 () Bool)

(assert (=> b!661001 m!633379))

(declare-fun m!633381 () Bool)

(assert (=> b!661008 m!633381))

(declare-fun m!633383 () Bool)

(assert (=> b!661005 m!633383))

(declare-fun m!633385 () Bool)

(assert (=> b!661006 m!633385))

(push 1)

(assert (not b!661004))

(assert (not start!59848))

(assert (not b!660997))

(assert (not b!661005))

(assert (not b!661008))

(assert (not b!660998))

(assert (not b!661001))

(assert (not b!661010))

(assert (not b!661006))

(assert (not b!661003))

(assert (not b!660999))

(check-sat)

(pop 1)

(push 1)

