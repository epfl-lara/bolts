; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102938 () Bool)

(assert start!102938)

(declare-fun b!1236635 () Bool)

(declare-fun res!824730 () Bool)

(declare-fun e!700917 () Bool)

(assert (=> b!1236635 (=> (not res!824730) (not e!700917))))

(declare-datatypes ((List!27417 0))(
  ( (Nil!27414) (Cons!27413 (h!28622 (_ BitVec 64)) (t!40887 List!27417)) )
))
(declare-fun acc!846 () List!27417)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7332 (List!27417 (_ BitVec 64)) Bool)

(assert (=> b!1236635 (= res!824730 (contains!7332 acc!846 k!2925))))

(declare-fun b!1236636 () Bool)

(declare-fun res!824734 () Bool)

(assert (=> b!1236636 (=> (not res!824734) (not e!700917))))

(declare-datatypes ((array!79724 0))(
  ( (array!79725 (arr!38466 (Array (_ BitVec 32) (_ BitVec 64))) (size!39003 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79724)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236636 (= res!824734 (validKeyInArray!0 (select (arr!38466 a!3835) from!3213)))))

(declare-fun b!1236637 () Bool)

(declare-fun res!824729 () Bool)

(assert (=> b!1236637 (=> (not res!824729) (not e!700917))))

(declare-fun noDuplicate!1939 (List!27417) Bool)

(assert (=> b!1236637 (= res!824729 (noDuplicate!1939 acc!846))))

(declare-fun res!824732 () Bool)

(assert (=> start!102938 (=> (not res!824732) (not e!700917))))

(assert (=> start!102938 (= res!824732 (and (bvslt (size!39003 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39003 a!3835))))))

(assert (=> start!102938 e!700917))

(declare-fun array_inv!29242 (array!79724) Bool)

(assert (=> start!102938 (array_inv!29242 a!3835)))

(assert (=> start!102938 true))

(declare-fun b!1236638 () Bool)

(declare-fun res!824735 () Bool)

(assert (=> b!1236638 (=> (not res!824735) (not e!700917))))

(assert (=> b!1236638 (= res!824735 (not (contains!7332 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236639 () Bool)

(declare-fun res!824733 () Bool)

(assert (=> b!1236639 (=> (not res!824733) (not e!700917))))

(declare-fun arrayNoDuplicates!0 (array!79724 (_ BitVec 32) List!27417) Bool)

(assert (=> b!1236639 (= res!824733 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236640 () Bool)

(assert (=> b!1236640 (= e!700917 (not true))))

(declare-datatypes ((Unit!40970 0))(
  ( (Unit!40971) )
))
(declare-fun lt!560797 () Unit!40970)

(declare-fun lt!560795 () List!27417)

(declare-fun subseqTail!56 (List!27417 List!27417) Unit!40970)

(assert (=> b!1236640 (= lt!560797 (subseqTail!56 lt!560795 lt!560795))))

(declare-fun subseq!569 (List!27417 List!27417) Bool)

(assert (=> b!1236640 (subseq!569 lt!560795 lt!560795)))

(declare-fun lt!560796 () Unit!40970)

(declare-fun lemmaListSubSeqRefl!0 (List!27417) Unit!40970)

(assert (=> b!1236640 (= lt!560796 (lemmaListSubSeqRefl!0 lt!560795))))

(assert (=> b!1236640 (= lt!560795 (Cons!27413 (select (arr!38466 a!3835) from!3213) acc!846))))

(declare-fun b!1236641 () Bool)

(declare-fun res!824731 () Bool)

(assert (=> b!1236641 (=> (not res!824731) (not e!700917))))

(assert (=> b!1236641 (= res!824731 (not (contains!7332 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236642 () Bool)

(declare-fun res!824728 () Bool)

(assert (=> b!1236642 (=> (not res!824728) (not e!700917))))

(assert (=> b!1236642 (= res!824728 (not (= from!3213 (bvsub (size!39003 a!3835) #b00000000000000000000000000000001))))))

(assert (= (and start!102938 res!824732) b!1236637))

(assert (= (and b!1236637 res!824729) b!1236638))

(assert (= (and b!1236638 res!824735) b!1236641))

(assert (= (and b!1236641 res!824731) b!1236639))

(assert (= (and b!1236639 res!824733) b!1236635))

(assert (= (and b!1236635 res!824730) b!1236642))

(assert (= (and b!1236642 res!824728) b!1236636))

(assert (= (and b!1236636 res!824734) b!1236640))

(declare-fun m!1140443 () Bool)

(assert (=> b!1236638 m!1140443))

(declare-fun m!1140445 () Bool)

(assert (=> b!1236636 m!1140445))

(assert (=> b!1236636 m!1140445))

(declare-fun m!1140447 () Bool)

(assert (=> b!1236636 m!1140447))

(declare-fun m!1140449 () Bool)

(assert (=> start!102938 m!1140449))

(declare-fun m!1140451 () Bool)

(assert (=> b!1236637 m!1140451))

(declare-fun m!1140453 () Bool)

(assert (=> b!1236635 m!1140453))

(declare-fun m!1140455 () Bool)

(assert (=> b!1236641 m!1140455))

(declare-fun m!1140457 () Bool)

(assert (=> b!1236639 m!1140457))

(declare-fun m!1140459 () Bool)

(assert (=> b!1236640 m!1140459))

(declare-fun m!1140461 () Bool)

(assert (=> b!1236640 m!1140461))

(declare-fun m!1140463 () Bool)

(assert (=> b!1236640 m!1140463))

(assert (=> b!1236640 m!1140445))

(push 1)

(assert (not b!1236637))

(assert (not b!1236635))

(assert (not b!1236636))

(assert (not b!1236639))

(assert (not b!1236641))

(assert (not start!102938))

(assert (not b!1236640))

(assert (not b!1236638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

