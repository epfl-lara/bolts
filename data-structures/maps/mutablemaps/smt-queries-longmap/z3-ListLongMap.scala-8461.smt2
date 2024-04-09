; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102940 () Bool)

(assert start!102940)

(declare-fun b!1236659 () Bool)

(declare-fun res!824758 () Bool)

(declare-fun e!700924 () Bool)

(assert (=> b!1236659 (=> (not res!824758) (not e!700924))))

(declare-datatypes ((array!79726 0))(
  ( (array!79727 (arr!38467 (Array (_ BitVec 32) (_ BitVec 64))) (size!39004 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79726)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236659 (= res!824758 (validKeyInArray!0 (select (arr!38467 a!3835) from!3213)))))

(declare-fun res!824757 () Bool)

(assert (=> start!102940 (=> (not res!824757) (not e!700924))))

(assert (=> start!102940 (= res!824757 (and (bvslt (size!39004 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39004 a!3835))))))

(assert (=> start!102940 e!700924))

(declare-fun array_inv!29243 (array!79726) Bool)

(assert (=> start!102940 (array_inv!29243 a!3835)))

(assert (=> start!102940 true))

(declare-fun b!1236660 () Bool)

(assert (=> b!1236660 (= e!700924 (not true))))

(declare-datatypes ((Unit!40972 0))(
  ( (Unit!40973) )
))
(declare-fun lt!560804 () Unit!40972)

(declare-datatypes ((List!27418 0))(
  ( (Nil!27415) (Cons!27414 (h!28623 (_ BitVec 64)) (t!40888 List!27418)) )
))
(declare-fun lt!560806 () List!27418)

(declare-fun subseqTail!57 (List!27418 List!27418) Unit!40972)

(assert (=> b!1236660 (= lt!560804 (subseqTail!57 lt!560806 lt!560806))))

(declare-fun subseq!570 (List!27418 List!27418) Bool)

(assert (=> b!1236660 (subseq!570 lt!560806 lt!560806)))

(declare-fun lt!560805 () Unit!40972)

(declare-fun lemmaListSubSeqRefl!0 (List!27418) Unit!40972)

(assert (=> b!1236660 (= lt!560805 (lemmaListSubSeqRefl!0 lt!560806))))

(declare-fun acc!846 () List!27418)

(assert (=> b!1236660 (= lt!560806 (Cons!27414 (select (arr!38467 a!3835) from!3213) acc!846))))

(declare-fun b!1236661 () Bool)

(declare-fun res!824752 () Bool)

(assert (=> b!1236661 (=> (not res!824752) (not e!700924))))

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun contains!7333 (List!27418 (_ BitVec 64)) Bool)

(assert (=> b!1236661 (= res!824752 (contains!7333 acc!846 k0!2925))))

(declare-fun b!1236662 () Bool)

(declare-fun res!824756 () Bool)

(assert (=> b!1236662 (=> (not res!824756) (not e!700924))))

(assert (=> b!1236662 (= res!824756 (not (= from!3213 (bvsub (size!39004 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1236663 () Bool)

(declare-fun res!824755 () Bool)

(assert (=> b!1236663 (=> (not res!824755) (not e!700924))))

(assert (=> b!1236663 (= res!824755 (not (contains!7333 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236664 () Bool)

(declare-fun res!824753 () Bool)

(assert (=> b!1236664 (=> (not res!824753) (not e!700924))))

(declare-fun arrayNoDuplicates!0 (array!79726 (_ BitVec 32) List!27418) Bool)

(assert (=> b!1236664 (= res!824753 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236665 () Bool)

(declare-fun res!824759 () Bool)

(assert (=> b!1236665 (=> (not res!824759) (not e!700924))))

(assert (=> b!1236665 (= res!824759 (not (contains!7333 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236666 () Bool)

(declare-fun res!824754 () Bool)

(assert (=> b!1236666 (=> (not res!824754) (not e!700924))))

(declare-fun noDuplicate!1940 (List!27418) Bool)

(assert (=> b!1236666 (= res!824754 (noDuplicate!1940 acc!846))))

(assert (= (and start!102940 res!824757) b!1236666))

(assert (= (and b!1236666 res!824754) b!1236663))

(assert (= (and b!1236663 res!824755) b!1236665))

(assert (= (and b!1236665 res!824759) b!1236664))

(assert (= (and b!1236664 res!824753) b!1236661))

(assert (= (and b!1236661 res!824752) b!1236662))

(assert (= (and b!1236662 res!824756) b!1236659))

(assert (= (and b!1236659 res!824758) b!1236660))

(declare-fun m!1140465 () Bool)

(assert (=> b!1236663 m!1140465))

(declare-fun m!1140467 () Bool)

(assert (=> b!1236666 m!1140467))

(declare-fun m!1140469 () Bool)

(assert (=> b!1236665 m!1140469))

(declare-fun m!1140471 () Bool)

(assert (=> b!1236660 m!1140471))

(declare-fun m!1140473 () Bool)

(assert (=> b!1236660 m!1140473))

(declare-fun m!1140475 () Bool)

(assert (=> b!1236660 m!1140475))

(declare-fun m!1140477 () Bool)

(assert (=> b!1236660 m!1140477))

(assert (=> b!1236659 m!1140477))

(assert (=> b!1236659 m!1140477))

(declare-fun m!1140479 () Bool)

(assert (=> b!1236659 m!1140479))

(declare-fun m!1140481 () Bool)

(assert (=> b!1236664 m!1140481))

(declare-fun m!1140483 () Bool)

(assert (=> start!102940 m!1140483))

(declare-fun m!1140485 () Bool)

(assert (=> b!1236661 m!1140485))

(check-sat (not b!1236660) (not b!1236664) (not b!1236666) (not b!1236663) (not b!1236659) (not b!1236661) (not b!1236665) (not start!102940))
