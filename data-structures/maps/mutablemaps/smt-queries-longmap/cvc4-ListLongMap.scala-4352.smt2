; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60160 () Bool)

(assert start!60160)

(declare-fun b!671129 () Bool)

(declare-fun res!438003 () Bool)

(declare-fun e!383581 () Bool)

(assert (=> b!671129 (=> (not res!438003) (not e!383581))))

(declare-datatypes ((array!39163 0))(
  ( (array!39164 (arr!18770 (Array (_ BitVec 32) (_ BitVec 64))) (size!19134 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39163)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!671129 (= res!438003 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!671130 () Bool)

(declare-fun res!438012 () Bool)

(assert (=> b!671130 (=> (not res!438012) (not e!383581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!671130 (= res!438012 (validKeyInArray!0 k!2843))))

(declare-fun b!671131 () Bool)

(declare-fun res!438007 () Bool)

(assert (=> b!671131 (=> (not res!438007) (not e!383581))))

(declare-datatypes ((List!12864 0))(
  ( (Nil!12861) (Cons!12860 (h!13905 (_ BitVec 64)) (t!19100 List!12864)) )
))
(declare-fun acc!681 () List!12864)

(declare-fun contains!3407 (List!12864 (_ BitVec 64)) Bool)

(assert (=> b!671131 (= res!438007 (not (contains!3407 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671132 () Bool)

(declare-fun res!438001 () Bool)

(assert (=> b!671132 (=> (not res!438001) (not e!383581))))

(assert (=> b!671132 (= res!438001 (not (contains!3407 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!438010 () Bool)

(assert (=> start!60160 (=> (not res!438010) (not e!383581))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60160 (= res!438010 (and (bvslt (size!19134 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19134 a!3626))))))

(assert (=> start!60160 e!383581))

(assert (=> start!60160 true))

(declare-fun array_inv!14544 (array!39163) Bool)

(assert (=> start!60160 (array_inv!14544 a!3626)))

(declare-fun b!671133 () Bool)

(assert (=> b!671133 (= e!383581 (not true))))

(assert (=> b!671133 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun b!671134 () Bool)

(declare-fun e!383577 () Bool)

(assert (=> b!671134 (= e!383577 (contains!3407 acc!681 k!2843))))

(declare-fun b!671135 () Bool)

(declare-fun res!438000 () Bool)

(assert (=> b!671135 (=> (not res!438000) (not e!383581))))

(declare-fun e!383579 () Bool)

(assert (=> b!671135 (= res!438000 e!383579)))

(declare-fun res!438009 () Bool)

(assert (=> b!671135 (=> res!438009 e!383579)))

(assert (=> b!671135 (= res!438009 e!383577)))

(declare-fun res!438006 () Bool)

(assert (=> b!671135 (=> (not res!438006) (not e!383577))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!671135 (= res!438006 (bvsgt from!3004 i!1382))))

(declare-fun b!671136 () Bool)

(declare-fun res!438008 () Bool)

(assert (=> b!671136 (=> (not res!438008) (not e!383581))))

(assert (=> b!671136 (= res!438008 (= (select (arr!18770 a!3626) from!3004) k!2843))))

(declare-fun b!671137 () Bool)

(declare-fun res!438004 () Bool)

(assert (=> b!671137 (=> (not res!438004) (not e!383581))))

(assert (=> b!671137 (= res!438004 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19134 a!3626))))))

(declare-fun b!671138 () Bool)

(declare-fun res!438011 () Bool)

(assert (=> b!671138 (=> (not res!438011) (not e!383581))))

(assert (=> b!671138 (= res!438011 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19134 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!671139 () Bool)

(declare-fun res!438013 () Bool)

(assert (=> b!671139 (=> (not res!438013) (not e!383581))))

(assert (=> b!671139 (= res!438013 (validKeyInArray!0 (select (arr!18770 a!3626) from!3004)))))

(declare-fun b!671140 () Bool)

(declare-fun res!438005 () Bool)

(assert (=> b!671140 (=> (not res!438005) (not e!383581))))

(declare-fun arrayNoDuplicates!0 (array!39163 (_ BitVec 32) List!12864) Bool)

(assert (=> b!671140 (= res!438005 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!671141 () Bool)

(declare-fun res!438002 () Bool)

(assert (=> b!671141 (=> (not res!438002) (not e!383581))))

(assert (=> b!671141 (= res!438002 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12861))))

(declare-fun b!671142 () Bool)

(declare-fun res!437999 () Bool)

(assert (=> b!671142 (=> (not res!437999) (not e!383581))))

(declare-fun noDuplicate!654 (List!12864) Bool)

(assert (=> b!671142 (= res!437999 (noDuplicate!654 acc!681))))

(declare-fun b!671143 () Bool)

(declare-fun e!383578 () Bool)

(assert (=> b!671143 (= e!383578 (not (contains!3407 acc!681 k!2843)))))

(declare-fun b!671144 () Bool)

(assert (=> b!671144 (= e!383579 e!383578)))

(declare-fun res!438014 () Bool)

(assert (=> b!671144 (=> (not res!438014) (not e!383578))))

(assert (=> b!671144 (= res!438014 (bvsle from!3004 i!1382))))

(assert (= (and start!60160 res!438010) b!671142))

(assert (= (and b!671142 res!437999) b!671131))

(assert (= (and b!671131 res!438007) b!671132))

(assert (= (and b!671132 res!438001) b!671135))

(assert (= (and b!671135 res!438006) b!671134))

(assert (= (and b!671135 (not res!438009)) b!671144))

(assert (= (and b!671144 res!438014) b!671143))

(assert (= (and b!671135 res!438000) b!671141))

(assert (= (and b!671141 res!438002) b!671140))

(assert (= (and b!671140 res!438005) b!671137))

(assert (= (and b!671137 res!438004) b!671130))

(assert (= (and b!671130 res!438012) b!671129))

(assert (= (and b!671129 res!438003) b!671138))

(assert (= (and b!671138 res!438011) b!671139))

(assert (= (and b!671139 res!438013) b!671136))

(assert (= (and b!671136 res!438008) b!671133))

(declare-fun m!640731 () Bool)

(assert (=> b!671130 m!640731))

(declare-fun m!640733 () Bool)

(assert (=> b!671141 m!640733))

(declare-fun m!640735 () Bool)

(assert (=> b!671136 m!640735))

(declare-fun m!640737 () Bool)

(assert (=> b!671134 m!640737))

(declare-fun m!640739 () Bool)

(assert (=> b!671129 m!640739))

(assert (=> b!671139 m!640735))

(assert (=> b!671139 m!640735))

(declare-fun m!640741 () Bool)

(assert (=> b!671139 m!640741))

(assert (=> b!671143 m!640737))

(declare-fun m!640743 () Bool)

(assert (=> b!671131 m!640743))

(declare-fun m!640745 () Bool)

(assert (=> b!671132 m!640745))

(declare-fun m!640747 () Bool)

(assert (=> start!60160 m!640747))

(declare-fun m!640749 () Bool)

(assert (=> b!671142 m!640749))

(declare-fun m!640751 () Bool)

(assert (=> b!671133 m!640751))

(declare-fun m!640753 () Bool)

(assert (=> b!671140 m!640753))

(push 1)

(assert (not b!671133))

(assert (not b!671140))

(assert (not b!671132))

(assert (not b!671129))

(assert (not b!671134))

(assert (not b!671130))

(assert (not b!671131))

(assert (not b!671141))

(assert (not b!671143))

(assert (not b!671142))

(assert (not b!671139))

(assert (not start!60160))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

