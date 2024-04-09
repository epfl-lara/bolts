; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102866 () Bool)

(assert start!102866)

(declare-fun b!1235829 () Bool)

(declare-fun res!823995 () Bool)

(declare-fun e!700635 () Bool)

(assert (=> b!1235829 (=> (not res!823995) (not e!700635))))

(declare-datatypes ((List!27381 0))(
  ( (Nil!27378) (Cons!27377 (h!28586 (_ BitVec 64)) (t!40851 List!27381)) )
))
(declare-fun acc!846 () List!27381)

(declare-fun contains!7296 (List!27381 (_ BitVec 64)) Bool)

(assert (=> b!1235829 (= res!823995 (not (contains!7296 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235830 () Bool)

(declare-datatypes ((Unit!40922 0))(
  ( (Unit!40923) )
))
(declare-fun e!700634 () Unit!40922)

(declare-fun lt!560507 () Unit!40922)

(assert (=> b!1235830 (= e!700634 lt!560507)))

(declare-datatypes ((array!79652 0))(
  ( (array!79653 (arr!38430 (Array (_ BitVec 32) (_ BitVec 64))) (size!38967 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79652)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun lt!560506 () List!27381)

(assert (=> b!1235830 (= lt!560506 (Cons!27377 (select (arr!38430 a!3835) from!3213) acc!846))))

(declare-fun lt!560508 () Unit!40922)

(declare-fun lemmaListSubSeqRefl!0 (List!27381) Unit!40922)

(assert (=> b!1235830 (= lt!560508 (lemmaListSubSeqRefl!0 lt!560506))))

(declare-fun subseq!551 (List!27381 List!27381) Bool)

(assert (=> b!1235830 (subseq!551 lt!560506 lt!560506)))

(declare-fun lt!560509 () Unit!40922)

(declare-fun subseqTail!44 (List!27381 List!27381) Unit!40922)

(assert (=> b!1235830 (= lt!560509 (subseqTail!44 lt!560506 lt!560506))))

(assert (=> b!1235830 (subseq!551 acc!846 lt!560506)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79652 List!27381 List!27381 (_ BitVec 32)) Unit!40922)

(assert (=> b!1235830 (= lt!560507 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560506 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79652 (_ BitVec 32) List!27381) Bool)

(assert (=> b!1235830 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1235831 () Bool)

(declare-fun res!823991 () Bool)

(assert (=> b!1235831 (=> (not res!823991) (not e!700635))))

(assert (=> b!1235831 (= res!823991 (not (contains!7296 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235832 () Bool)

(declare-fun res!823996 () Bool)

(assert (=> b!1235832 (=> (not res!823996) (not e!700635))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235832 (= res!823996 (contains!7296 acc!846 k!2925))))

(declare-fun b!1235833 () Bool)

(declare-fun e!700636 () Bool)

(assert (=> b!1235833 (= e!700636 false)))

(declare-fun lt!560504 () Bool)

(assert (=> b!1235833 (= lt!560504 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235834 () Bool)

(declare-fun res!823990 () Bool)

(assert (=> b!1235834 (=> (not res!823990) (not e!700635))))

(assert (=> b!1235834 (= res!823990 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235835 () Bool)

(assert (=> b!1235835 (= e!700635 e!700636)))

(declare-fun res!823993 () Bool)

(assert (=> b!1235835 (=> (not res!823993) (not e!700636))))

(assert (=> b!1235835 (= res!823993 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38967 a!3835))))))

(declare-fun lt!560505 () Unit!40922)

(assert (=> b!1235835 (= lt!560505 e!700634)))

(declare-fun c!120782 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235835 (= c!120782 (validKeyInArray!0 (select (arr!38430 a!3835) from!3213)))))

(declare-fun b!1235836 () Bool)

(declare-fun res!823992 () Bool)

(assert (=> b!1235836 (=> (not res!823992) (not e!700635))))

(assert (=> b!1235836 (= res!823992 (not (= from!3213 (bvsub (size!38967 a!3835) #b00000000000000000000000000000001))))))

(declare-fun res!823997 () Bool)

(assert (=> start!102866 (=> (not res!823997) (not e!700635))))

(assert (=> start!102866 (= res!823997 (and (bvslt (size!38967 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38967 a!3835))))))

(assert (=> start!102866 e!700635))

(declare-fun array_inv!29206 (array!79652) Bool)

(assert (=> start!102866 (array_inv!29206 a!3835)))

(assert (=> start!102866 true))

(declare-fun b!1235837 () Bool)

(declare-fun Unit!40924 () Unit!40922)

(assert (=> b!1235837 (= e!700634 Unit!40924)))

(declare-fun b!1235838 () Bool)

(declare-fun res!823994 () Bool)

(assert (=> b!1235838 (=> (not res!823994) (not e!700635))))

(declare-fun noDuplicate!1903 (List!27381) Bool)

(assert (=> b!1235838 (= res!823994 (noDuplicate!1903 acc!846))))

(assert (= (and start!102866 res!823997) b!1235838))

(assert (= (and b!1235838 res!823994) b!1235831))

(assert (= (and b!1235831 res!823991) b!1235829))

(assert (= (and b!1235829 res!823995) b!1235834))

(assert (= (and b!1235834 res!823990) b!1235832))

(assert (= (and b!1235832 res!823996) b!1235836))

(assert (= (and b!1235836 res!823992) b!1235835))

(assert (= (and b!1235835 c!120782) b!1235830))

(assert (= (and b!1235835 (not c!120782)) b!1235837))

(assert (= (and b!1235835 res!823993) b!1235833))

(declare-fun m!1139735 () Bool)

(assert (=> b!1235838 m!1139735))

(declare-fun m!1139737 () Bool)

(assert (=> start!102866 m!1139737))

(declare-fun m!1139739 () Bool)

(assert (=> b!1235835 m!1139739))

(assert (=> b!1235835 m!1139739))

(declare-fun m!1139741 () Bool)

(assert (=> b!1235835 m!1139741))

(declare-fun m!1139743 () Bool)

(assert (=> b!1235833 m!1139743))

(declare-fun m!1139745 () Bool)

(assert (=> b!1235830 m!1139745))

(declare-fun m!1139747 () Bool)

(assert (=> b!1235830 m!1139747))

(declare-fun m!1139749 () Bool)

(assert (=> b!1235830 m!1139749))

(declare-fun m!1139751 () Bool)

(assert (=> b!1235830 m!1139751))

(declare-fun m!1139753 () Bool)

(assert (=> b!1235830 m!1139753))

(assert (=> b!1235830 m!1139743))

(assert (=> b!1235830 m!1139739))

(declare-fun m!1139755 () Bool)

(assert (=> b!1235832 m!1139755))

(declare-fun m!1139757 () Bool)

(assert (=> b!1235831 m!1139757))

(declare-fun m!1139759 () Bool)

(assert (=> b!1235834 m!1139759))

(declare-fun m!1139761 () Bool)

(assert (=> b!1235829 m!1139761))

(push 1)

