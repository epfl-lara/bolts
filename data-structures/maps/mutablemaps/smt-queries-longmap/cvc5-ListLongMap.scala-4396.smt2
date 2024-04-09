; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60492 () Bool)

(assert start!60492)

(declare-fun b!679227 () Bool)

(declare-fun res!445771 () Bool)

(declare-fun e!387019 () Bool)

(assert (=> b!679227 (=> (not res!445771) (not e!387019))))

(declare-datatypes ((List!12994 0))(
  ( (Nil!12991) (Cons!12990 (h!14035 (_ BitVec 64)) (t!19230 List!12994)) )
))
(declare-fun acc!681 () List!12994)

(declare-fun noDuplicate!784 (List!12994) Bool)

(assert (=> b!679227 (= res!445771 (noDuplicate!784 acc!681))))

(declare-fun b!679228 () Bool)

(declare-fun res!445762 () Bool)

(assert (=> b!679228 (=> (not res!445762) (not e!387019))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679228 (= res!445762 (validKeyInArray!0 k!2843))))

(declare-fun b!679229 () Bool)

(declare-fun res!445774 () Bool)

(assert (=> b!679229 (=> (not res!445774) (not e!387019))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39429 0))(
  ( (array!39430 (arr!18900 (Array (_ BitVec 32) (_ BitVec 64))) (size!19264 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39429)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!679229 (= res!445774 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19264 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679230 () Bool)

(declare-fun e!387018 () Bool)

(assert (=> b!679230 (= e!387018 true)))

(assert (=> b!679230 false))

(declare-datatypes ((Unit!23776 0))(
  ( (Unit!23777) )
))
(declare-fun lt!312867 () Unit!23776)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39429 (_ BitVec 64) (_ BitVec 32)) Unit!23776)

(assert (=> b!679230 (= lt!312867 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(declare-fun b!679231 () Bool)

(declare-fun res!445769 () Bool)

(assert (=> b!679231 (=> (not res!445769) (not e!387019))))

(declare-fun e!387016 () Bool)

(assert (=> b!679231 (= res!445769 e!387016)))

(declare-fun res!445765 () Bool)

(assert (=> b!679231 (=> res!445765 e!387016)))

(declare-fun e!387017 () Bool)

(assert (=> b!679231 (= res!445765 e!387017)))

(declare-fun res!445775 () Bool)

(assert (=> b!679231 (=> (not res!445775) (not e!387017))))

(assert (=> b!679231 (= res!445775 (bvsgt from!3004 i!1382))))

(declare-fun b!679232 () Bool)

(declare-fun contains!3537 (List!12994 (_ BitVec 64)) Bool)

(assert (=> b!679232 (= e!387017 (contains!3537 acc!681 k!2843))))

(declare-fun b!679233 () Bool)

(declare-fun res!445761 () Bool)

(assert (=> b!679233 (=> (not res!445761) (not e!387019))))

(assert (=> b!679233 (= res!445761 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19264 a!3626))))))

(declare-fun b!679234 () Bool)

(assert (=> b!679234 (= e!387019 (not e!387018))))

(declare-fun res!445767 () Bool)

(assert (=> b!679234 (=> res!445767 e!387018)))

(declare-fun arrayContainsKey!0 (array!39429 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679234 (= res!445767 (not (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (=> b!679234 (arrayContainsKey!0 (array!39430 (store (arr!18900 a!3626) i!1382 k!2843) (size!19264 a!3626)) k!2843 from!3004)))

(declare-fun b!679235 () Bool)

(declare-fun res!445764 () Bool)

(assert (=> b!679235 (=> (not res!445764) (not e!387019))))

(declare-fun arrayNoDuplicates!0 (array!39429 (_ BitVec 32) List!12994) Bool)

(assert (=> b!679235 (= res!445764 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12991))))

(declare-fun b!679236 () Bool)

(declare-fun e!387015 () Bool)

(assert (=> b!679236 (= e!387015 (not (contains!3537 acc!681 k!2843)))))

(declare-fun b!679237 () Bool)

(assert (=> b!679237 (= e!387016 e!387015)))

(declare-fun res!445766 () Bool)

(assert (=> b!679237 (=> (not res!445766) (not e!387015))))

(assert (=> b!679237 (= res!445766 (bvsle from!3004 i!1382))))

(declare-fun b!679238 () Bool)

(declare-fun res!445770 () Bool)

(assert (=> b!679238 (=> (not res!445770) (not e!387019))))

(assert (=> b!679238 (= res!445770 (not (contains!3537 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679239 () Bool)

(declare-fun res!445768 () Bool)

(assert (=> b!679239 (=> (not res!445768) (not e!387019))))

(assert (=> b!679239 (= res!445768 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!445773 () Bool)

(assert (=> start!60492 (=> (not res!445773) (not e!387019))))

(assert (=> start!60492 (= res!445773 (and (bvslt (size!19264 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19264 a!3626))))))

(assert (=> start!60492 e!387019))

(assert (=> start!60492 true))

(declare-fun array_inv!14674 (array!39429) Bool)

(assert (=> start!60492 (array_inv!14674 a!3626)))

(declare-fun b!679240 () Bool)

(declare-fun res!445763 () Bool)

(assert (=> b!679240 (=> (not res!445763) (not e!387019))))

(assert (=> b!679240 (= res!445763 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!679241 () Bool)

(declare-fun res!445772 () Bool)

(assert (=> b!679241 (=> (not res!445772) (not e!387019))))

(assert (=> b!679241 (= res!445772 (not (contains!3537 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60492 res!445773) b!679227))

(assert (= (and b!679227 res!445771) b!679238))

(assert (= (and b!679238 res!445770) b!679241))

(assert (= (and b!679241 res!445772) b!679231))

(assert (= (and b!679231 res!445775) b!679232))

(assert (= (and b!679231 (not res!445765)) b!679237))

(assert (= (and b!679237 res!445766) b!679236))

(assert (= (and b!679231 res!445769) b!679235))

(assert (= (and b!679235 res!445764) b!679240))

(assert (= (and b!679240 res!445763) b!679233))

(assert (= (and b!679233 res!445761) b!679228))

(assert (= (and b!679228 res!445762) b!679239))

(assert (= (and b!679239 res!445768) b!679229))

(assert (= (and b!679229 res!445774) b!679234))

(assert (= (and b!679234 (not res!445767)) b!679230))

(declare-fun m!644715 () Bool)

(assert (=> b!679239 m!644715))

(declare-fun m!644717 () Bool)

(assert (=> b!679232 m!644717))

(declare-fun m!644719 () Bool)

(assert (=> b!679228 m!644719))

(declare-fun m!644721 () Bool)

(assert (=> b!679227 m!644721))

(declare-fun m!644723 () Bool)

(assert (=> start!60492 m!644723))

(declare-fun m!644725 () Bool)

(assert (=> b!679235 m!644725))

(declare-fun m!644727 () Bool)

(assert (=> b!679238 m!644727))

(assert (=> b!679236 m!644717))

(declare-fun m!644729 () Bool)

(assert (=> b!679241 m!644729))

(declare-fun m!644731 () Bool)

(assert (=> b!679240 m!644731))

(declare-fun m!644733 () Bool)

(assert (=> b!679230 m!644733))

(declare-fun m!644735 () Bool)

(assert (=> b!679234 m!644735))

(declare-fun m!644737 () Bool)

(assert (=> b!679234 m!644737))

(declare-fun m!644739 () Bool)

(assert (=> b!679234 m!644739))

(push 1)

(assert (not b!679240))

(assert (not b!679239))

(assert (not b!679228))

(assert (not b!679241))

(assert (not b!679230))

(assert (not b!679232))

(assert (not b!679238))

(assert (not b!679227))

(assert (not b!679235))

(assert (not start!60492))

(assert (not b!679234))

(assert (not b!679236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

