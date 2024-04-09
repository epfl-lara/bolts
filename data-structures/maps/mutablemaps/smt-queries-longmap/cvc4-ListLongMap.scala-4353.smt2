; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60166 () Bool)

(assert start!60166)

(declare-fun b!671273 () Bool)

(declare-fun e!383622 () Bool)

(declare-fun e!383626 () Bool)

(assert (=> b!671273 (= e!383622 e!383626)))

(declare-fun res!438143 () Bool)

(assert (=> b!671273 (=> (not res!438143) (not e!383626))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!671273 (= res!438143 (bvsle from!3004 i!1382))))

(declare-fun b!671274 () Bool)

(declare-fun res!438158 () Bool)

(declare-fun e!383623 () Bool)

(assert (=> b!671274 (=> (not res!438158) (not e!383623))))

(declare-datatypes ((array!39169 0))(
  ( (array!39170 (arr!18773 (Array (_ BitVec 32) (_ BitVec 64))) (size!19137 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39169)

(declare-datatypes ((List!12867 0))(
  ( (Nil!12864) (Cons!12863 (h!13908 (_ BitVec 64)) (t!19103 List!12867)) )
))
(declare-fun acc!681 () List!12867)

(declare-fun arrayNoDuplicates!0 (array!39169 (_ BitVec 32) List!12867) Bool)

(assert (=> b!671274 (= res!438158 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!671275 () Bool)

(declare-fun res!438150 () Bool)

(assert (=> b!671275 (=> (not res!438150) (not e!383623))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!671275 (= res!438150 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!438145 () Bool)

(assert (=> start!60166 (=> (not res!438145) (not e!383623))))

(assert (=> start!60166 (= res!438145 (and (bvslt (size!19137 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19137 a!3626))))))

(assert (=> start!60166 e!383623))

(assert (=> start!60166 true))

(declare-fun array_inv!14547 (array!39169) Bool)

(assert (=> start!60166 (array_inv!14547 a!3626)))

(declare-fun b!671276 () Bool)

(declare-fun res!438153 () Bool)

(assert (=> b!671276 (=> (not res!438153) (not e!383623))))

(assert (=> b!671276 (= res!438153 (= (select (arr!18773 a!3626) from!3004) k!2843))))

(declare-fun b!671277 () Bool)

(declare-fun contains!3410 (List!12867 (_ BitVec 64)) Bool)

(assert (=> b!671277 (= e!383626 (not (contains!3410 acc!681 k!2843)))))

(declare-fun b!671278 () Bool)

(declare-fun res!438149 () Bool)

(assert (=> b!671278 (=> (not res!438149) (not e!383623))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!671278 (= res!438149 (validKeyInArray!0 k!2843))))

(declare-fun b!671279 () Bool)

(declare-fun e!383624 () Bool)

(assert (=> b!671279 (= e!383624 (contains!3410 acc!681 k!2843))))

(declare-fun b!671280 () Bool)

(assert (=> b!671280 (= e!383623 (not true))))

(assert (=> b!671280 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun b!671281 () Bool)

(declare-fun res!438146 () Bool)

(assert (=> b!671281 (=> (not res!438146) (not e!383623))))

(assert (=> b!671281 (= res!438146 (not (contains!3410 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671282 () Bool)

(declare-fun res!438148 () Bool)

(assert (=> b!671282 (=> (not res!438148) (not e!383623))))

(assert (=> b!671282 (= res!438148 (validKeyInArray!0 (select (arr!18773 a!3626) from!3004)))))

(declare-fun b!671283 () Bool)

(declare-fun res!438154 () Bool)

(assert (=> b!671283 (=> (not res!438154) (not e!383623))))

(assert (=> b!671283 (= res!438154 (not (contains!3410 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671284 () Bool)

(declare-fun res!438144 () Bool)

(assert (=> b!671284 (=> (not res!438144) (not e!383623))))

(assert (=> b!671284 (= res!438144 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19137 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!671285 () Bool)

(declare-fun res!438157 () Bool)

(assert (=> b!671285 (=> (not res!438157) (not e!383623))))

(assert (=> b!671285 (= res!438157 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19137 a!3626))))))

(declare-fun b!671286 () Bool)

(declare-fun res!438151 () Bool)

(assert (=> b!671286 (=> (not res!438151) (not e!383623))))

(assert (=> b!671286 (= res!438151 e!383622)))

(declare-fun res!438156 () Bool)

(assert (=> b!671286 (=> res!438156 e!383622)))

(assert (=> b!671286 (= res!438156 e!383624)))

(declare-fun res!438147 () Bool)

(assert (=> b!671286 (=> (not res!438147) (not e!383624))))

(assert (=> b!671286 (= res!438147 (bvsgt from!3004 i!1382))))

(declare-fun b!671287 () Bool)

(declare-fun res!438152 () Bool)

(assert (=> b!671287 (=> (not res!438152) (not e!383623))))

(declare-fun noDuplicate!657 (List!12867) Bool)

(assert (=> b!671287 (= res!438152 (noDuplicate!657 acc!681))))

(declare-fun b!671288 () Bool)

(declare-fun res!438155 () Bool)

(assert (=> b!671288 (=> (not res!438155) (not e!383623))))

(assert (=> b!671288 (= res!438155 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12864))))

(assert (= (and start!60166 res!438145) b!671287))

(assert (= (and b!671287 res!438152) b!671281))

(assert (= (and b!671281 res!438146) b!671283))

(assert (= (and b!671283 res!438154) b!671286))

(assert (= (and b!671286 res!438147) b!671279))

(assert (= (and b!671286 (not res!438156)) b!671273))

(assert (= (and b!671273 res!438143) b!671277))

(assert (= (and b!671286 res!438151) b!671288))

(assert (= (and b!671288 res!438155) b!671274))

(assert (= (and b!671274 res!438158) b!671285))

(assert (= (and b!671285 res!438157) b!671278))

(assert (= (and b!671278 res!438149) b!671275))

(assert (= (and b!671275 res!438150) b!671284))

(assert (= (and b!671284 res!438144) b!671282))

(assert (= (and b!671282 res!438148) b!671276))

(assert (= (and b!671276 res!438153) b!671280))

(declare-fun m!640803 () Bool)

(assert (=> b!671275 m!640803))

(declare-fun m!640805 () Bool)

(assert (=> b!671278 m!640805))

(declare-fun m!640807 () Bool)

(assert (=> b!671287 m!640807))

(declare-fun m!640809 () Bool)

(assert (=> b!671277 m!640809))

(declare-fun m!640811 () Bool)

(assert (=> b!671274 m!640811))

(declare-fun m!640813 () Bool)

(assert (=> b!671283 m!640813))

(assert (=> b!671279 m!640809))

(declare-fun m!640815 () Bool)

(assert (=> b!671276 m!640815))

(declare-fun m!640817 () Bool)

(assert (=> b!671281 m!640817))

(declare-fun m!640819 () Bool)

(assert (=> b!671280 m!640819))

(declare-fun m!640821 () Bool)

(assert (=> b!671288 m!640821))

(assert (=> b!671282 m!640815))

(assert (=> b!671282 m!640815))

(declare-fun m!640823 () Bool)

(assert (=> b!671282 m!640823))

(declare-fun m!640825 () Bool)

(assert (=> start!60166 m!640825))

(push 1)

(assert (not b!671279))

(assert (not b!671288))

(assert (not b!671281))

(assert (not b!671282))

(assert (not b!671280))

(assert (not b!671274))

(assert (not b!671287))

(assert (not start!60166))

