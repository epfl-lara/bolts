; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102928 () Bool)

(assert start!102928)

(declare-fun b!1236515 () Bool)

(declare-fun res!824608 () Bool)

(declare-fun e!700887 () Bool)

(assert (=> b!1236515 (=> (not res!824608) (not e!700887))))

(declare-datatypes ((array!79714 0))(
  ( (array!79715 (arr!38461 (Array (_ BitVec 32) (_ BitVec 64))) (size!38998 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79714)

(declare-datatypes ((List!27412 0))(
  ( (Nil!27409) (Cons!27408 (h!28617 (_ BitVec 64)) (t!40882 List!27412)) )
))
(declare-fun acc!846 () List!27412)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79714 (_ BitVec 32) List!27412) Bool)

(assert (=> b!1236515 (= res!824608 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236516 () Bool)

(declare-fun res!824613 () Bool)

(assert (=> b!1236516 (=> (not res!824613) (not e!700887))))

(declare-fun noDuplicate!1934 (List!27412) Bool)

(assert (=> b!1236516 (= res!824613 (noDuplicate!1934 acc!846))))

(declare-fun b!1236517 () Bool)

(assert (=> b!1236517 (= e!700887 (not true))))

(declare-fun lt!560763 () List!27412)

(declare-fun subseq!564 (List!27412 List!27412) Bool)

(assert (=> b!1236517 (subseq!564 lt!560763 lt!560763)))

(declare-datatypes ((Unit!40960 0))(
  ( (Unit!40961) )
))
(declare-fun lt!560764 () Unit!40960)

(declare-fun lemmaListSubSeqRefl!0 (List!27412) Unit!40960)

(assert (=> b!1236517 (= lt!560764 (lemmaListSubSeqRefl!0 lt!560763))))

(assert (=> b!1236517 (= lt!560763 (Cons!27408 (select (arr!38461 a!3835) from!3213) acc!846))))

(declare-fun b!1236518 () Bool)

(declare-fun res!824610 () Bool)

(assert (=> b!1236518 (=> (not res!824610) (not e!700887))))

(declare-fun contains!7327 (List!27412 (_ BitVec 64)) Bool)

(assert (=> b!1236518 (= res!824610 (not (contains!7327 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236519 () Bool)

(declare-fun res!824612 () Bool)

(assert (=> b!1236519 (=> (not res!824612) (not e!700887))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236519 (= res!824612 (validKeyInArray!0 (select (arr!38461 a!3835) from!3213)))))

(declare-fun b!1236520 () Bool)

(declare-fun res!824609 () Bool)

(assert (=> b!1236520 (=> (not res!824609) (not e!700887))))

(assert (=> b!1236520 (= res!824609 (not (= from!3213 (bvsub (size!38998 a!3835) #b00000000000000000000000000000001))))))

(declare-fun res!824615 () Bool)

(assert (=> start!102928 (=> (not res!824615) (not e!700887))))

(assert (=> start!102928 (= res!824615 (and (bvslt (size!38998 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38998 a!3835))))))

(assert (=> start!102928 e!700887))

(declare-fun array_inv!29237 (array!79714) Bool)

(assert (=> start!102928 (array_inv!29237 a!3835)))

(assert (=> start!102928 true))

(declare-fun b!1236521 () Bool)

(declare-fun res!824611 () Bool)

(assert (=> b!1236521 (=> (not res!824611) (not e!700887))))

(assert (=> b!1236521 (= res!824611 (not (contains!7327 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236522 () Bool)

(declare-fun res!824614 () Bool)

(assert (=> b!1236522 (=> (not res!824614) (not e!700887))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1236522 (= res!824614 (contains!7327 acc!846 k0!2925))))

(assert (= (and start!102928 res!824615) b!1236516))

(assert (= (and b!1236516 res!824613) b!1236521))

(assert (= (and b!1236521 res!824611) b!1236518))

(assert (= (and b!1236518 res!824610) b!1236515))

(assert (= (and b!1236515 res!824608) b!1236522))

(assert (= (and b!1236522 res!824614) b!1236520))

(assert (= (and b!1236520 res!824609) b!1236519))

(assert (= (and b!1236519 res!824612) b!1236517))

(declare-fun m!1140343 () Bool)

(assert (=> b!1236519 m!1140343))

(assert (=> b!1236519 m!1140343))

(declare-fun m!1140345 () Bool)

(assert (=> b!1236519 m!1140345))

(declare-fun m!1140347 () Bool)

(assert (=> b!1236521 m!1140347))

(declare-fun m!1140349 () Bool)

(assert (=> b!1236522 m!1140349))

(declare-fun m!1140351 () Bool)

(assert (=> b!1236518 m!1140351))

(declare-fun m!1140353 () Bool)

(assert (=> start!102928 m!1140353))

(declare-fun m!1140355 () Bool)

(assert (=> b!1236516 m!1140355))

(declare-fun m!1140357 () Bool)

(assert (=> b!1236515 m!1140357))

(declare-fun m!1140359 () Bool)

(assert (=> b!1236517 m!1140359))

(declare-fun m!1140361 () Bool)

(assert (=> b!1236517 m!1140361))

(assert (=> b!1236517 m!1140343))

(check-sat (not b!1236515) (not start!102928) (not b!1236516) (not b!1236519) (not b!1236522) (not b!1236517) (not b!1236521) (not b!1236518))
(check-sat)
