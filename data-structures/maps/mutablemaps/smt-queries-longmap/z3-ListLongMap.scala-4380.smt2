; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60326 () Bool)

(assert start!60326)

(declare-fun b!676920 () Bool)

(declare-fun res!443538 () Bool)

(declare-fun e!385951 () Bool)

(assert (=> b!676920 (=> (not res!443538) (not e!385951))))

(declare-datatypes ((List!12947 0))(
  ( (Nil!12944) (Cons!12943 (h!13988 (_ BitVec 64)) (t!19183 List!12947)) )
))
(declare-fun acc!681 () List!12947)

(declare-fun contains!3490 (List!12947 (_ BitVec 64)) Bool)

(assert (=> b!676920 (= res!443538 (not (contains!3490 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676921 () Bool)

(declare-fun res!443524 () Bool)

(assert (=> b!676921 (=> (not res!443524) (not e!385951))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!676921 (= res!443524 (validKeyInArray!0 k0!2843))))

(declare-fun b!676922 () Bool)

(declare-fun res!443534 () Bool)

(assert (=> b!676922 (=> (not res!443534) (not e!385951))))

(declare-fun noDuplicate!737 (List!12947) Bool)

(assert (=> b!676922 (= res!443534 (noDuplicate!737 acc!681))))

(declare-fun b!676923 () Bool)

(declare-fun res!443528 () Bool)

(assert (=> b!676923 (=> (not res!443528) (not e!385951))))

(declare-fun e!385949 () Bool)

(assert (=> b!676923 (= res!443528 e!385949)))

(declare-fun res!443533 () Bool)

(assert (=> b!676923 (=> res!443533 e!385949)))

(declare-fun e!385944 () Bool)

(assert (=> b!676923 (= res!443533 e!385944)))

(declare-fun res!443523 () Bool)

(assert (=> b!676923 (=> (not res!443523) (not e!385944))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!676923 (= res!443523 (bvsgt from!3004 i!1382))))

(declare-fun b!676924 () Bool)

(declare-fun e!385945 () Bool)

(assert (=> b!676924 (= e!385945 (contains!3490 acc!681 k0!2843))))

(declare-fun b!676925 () Bool)

(declare-fun res!443527 () Bool)

(assert (=> b!676925 (=> (not res!443527) (not e!385951))))

(declare-datatypes ((array!39329 0))(
  ( (array!39330 (arr!18853 (Array (_ BitVec 32) (_ BitVec 64))) (size!19217 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39329)

(declare-fun arrayContainsKey!0 (array!39329 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!676925 (= res!443527 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!676926 () Bool)

(assert (=> b!676926 (= e!385944 (contains!3490 acc!681 k0!2843))))

(declare-fun b!676928 () Bool)

(declare-fun res!443532 () Bool)

(assert (=> b!676928 (=> (not res!443532) (not e!385951))))

(declare-fun arrayNoDuplicates!0 (array!39329 (_ BitVec 32) List!12947) Bool)

(assert (=> b!676928 (= res!443532 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!676929 () Bool)

(declare-fun e!385947 () Bool)

(assert (=> b!676929 (= e!385947 (not (contains!3490 acc!681 k0!2843)))))

(declare-fun b!676930 () Bool)

(declare-fun res!443521 () Bool)

(assert (=> b!676930 (=> (not res!443521) (not e!385951))))

(declare-fun e!385950 () Bool)

(assert (=> b!676930 (= res!443521 e!385950)))

(declare-fun res!443531 () Bool)

(assert (=> b!676930 (=> res!443531 e!385950)))

(assert (=> b!676930 (= res!443531 e!385945)))

(declare-fun res!443537 () Bool)

(assert (=> b!676930 (=> (not res!443537) (not e!385945))))

(assert (=> b!676930 (= res!443537 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676931 () Bool)

(declare-fun res!443522 () Bool)

(assert (=> b!676931 (=> (not res!443522) (not e!385951))))

(assert (=> b!676931 (= res!443522 (not (validKeyInArray!0 (select (arr!18853 a!3626) from!3004))))))

(declare-fun b!676932 () Bool)

(declare-fun res!443530 () Bool)

(assert (=> b!676932 (=> (not res!443530) (not e!385951))))

(assert (=> b!676932 (= res!443530 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19217 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!676933 () Bool)

(declare-fun res!443540 () Bool)

(assert (=> b!676933 (=> (not res!443540) (not e!385951))))

(assert (=> b!676933 (= res!443540 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676934 () Bool)

(declare-fun res!443525 () Bool)

(assert (=> b!676934 (=> (not res!443525) (not e!385951))))

(assert (=> b!676934 (= res!443525 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!676935 () Bool)

(declare-fun e!385948 () Bool)

(assert (=> b!676935 (= e!385950 e!385948)))

(declare-fun res!443526 () Bool)

(assert (=> b!676935 (=> (not res!443526) (not e!385948))))

(assert (=> b!676935 (= res!443526 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676936 () Bool)

(assert (=> b!676936 (= e!385949 e!385947)))

(declare-fun res!443536 () Bool)

(assert (=> b!676936 (=> (not res!443536) (not e!385947))))

(assert (=> b!676936 (= res!443536 (bvsle from!3004 i!1382))))

(declare-fun b!676927 () Bool)

(declare-fun res!443539 () Bool)

(assert (=> b!676927 (=> (not res!443539) (not e!385951))))

(assert (=> b!676927 (= res!443539 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12944))))

(declare-fun res!443535 () Bool)

(assert (=> start!60326 (=> (not res!443535) (not e!385951))))

(assert (=> start!60326 (= res!443535 (and (bvslt (size!19217 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19217 a!3626))))))

(assert (=> start!60326 e!385951))

(assert (=> start!60326 true))

(declare-fun array_inv!14627 (array!39329) Bool)

(assert (=> start!60326 (array_inv!14627 a!3626)))

(declare-fun b!676937 () Bool)

(assert (=> b!676937 (= e!385951 (not (bvsle from!3004 (size!19217 a!3626))))))

(assert (=> b!676937 (arrayNoDuplicates!0 (array!39330 (store (arr!18853 a!3626) i!1382 k0!2843) (size!19217 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-datatypes ((Unit!23742 0))(
  ( (Unit!23743) )
))
(declare-fun lt!312750 () Unit!23742)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39329 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12947) Unit!23742)

(assert (=> b!676937 (= lt!312750 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676938 () Bool)

(assert (=> b!676938 (= e!385948 (not (contains!3490 acc!681 k0!2843)))))

(declare-fun b!676939 () Bool)

(declare-fun res!443529 () Bool)

(assert (=> b!676939 (=> (not res!443529) (not e!385951))))

(assert (=> b!676939 (= res!443529 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19217 a!3626))))))

(declare-fun b!676940 () Bool)

(declare-fun res!443520 () Bool)

(assert (=> b!676940 (=> (not res!443520) (not e!385951))))

(assert (=> b!676940 (= res!443520 (not (contains!3490 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60326 res!443535) b!676922))

(assert (= (and b!676922 res!443534) b!676920))

(assert (= (and b!676920 res!443538) b!676940))

(assert (= (and b!676940 res!443520) b!676923))

(assert (= (and b!676923 res!443523) b!676926))

(assert (= (and b!676923 (not res!443533)) b!676936))

(assert (= (and b!676936 res!443536) b!676929))

(assert (= (and b!676923 res!443528) b!676927))

(assert (= (and b!676927 res!443539) b!676928))

(assert (= (and b!676928 res!443532) b!676939))

(assert (= (and b!676939 res!443529) b!676921))

(assert (= (and b!676921 res!443524) b!676925))

(assert (= (and b!676925 res!443527) b!676932))

(assert (= (and b!676932 res!443530) b!676931))

(assert (= (and b!676931 res!443522) b!676934))

(assert (= (and b!676934 res!443525) b!676930))

(assert (= (and b!676930 res!443537) b!676924))

(assert (= (and b!676930 (not res!443531)) b!676935))

(assert (= (and b!676935 res!443526) b!676938))

(assert (= (and b!676930 res!443521) b!676933))

(assert (= (and b!676933 res!443540) b!676937))

(declare-fun m!643431 () Bool)

(assert (=> b!676920 m!643431))

(declare-fun m!643433 () Bool)

(assert (=> b!676931 m!643433))

(assert (=> b!676931 m!643433))

(declare-fun m!643435 () Bool)

(assert (=> b!676931 m!643435))

(declare-fun m!643437 () Bool)

(assert (=> b!676940 m!643437))

(declare-fun m!643439 () Bool)

(assert (=> b!676922 m!643439))

(declare-fun m!643441 () Bool)

(assert (=> start!60326 m!643441))

(declare-fun m!643443 () Bool)

(assert (=> b!676929 m!643443))

(assert (=> b!676924 m!643443))

(assert (=> b!676926 m!643443))

(declare-fun m!643445 () Bool)

(assert (=> b!676933 m!643445))

(declare-fun m!643447 () Bool)

(assert (=> b!676925 m!643447))

(assert (=> b!676938 m!643443))

(declare-fun m!643449 () Bool)

(assert (=> b!676927 m!643449))

(declare-fun m!643451 () Bool)

(assert (=> b!676928 m!643451))

(declare-fun m!643453 () Bool)

(assert (=> b!676921 m!643453))

(declare-fun m!643455 () Bool)

(assert (=> b!676937 m!643455))

(declare-fun m!643457 () Bool)

(assert (=> b!676937 m!643457))

(declare-fun m!643459 () Bool)

(assert (=> b!676937 m!643459))

(check-sat (not b!676922) (not b!676926) (not b!676931) (not start!60326) (not b!676933) (not b!676921) (not b!676928) (not b!676937) (not b!676927) (not b!676929) (not b!676924) (not b!676920) (not b!676925) (not b!676940) (not b!676938))
(check-sat)
