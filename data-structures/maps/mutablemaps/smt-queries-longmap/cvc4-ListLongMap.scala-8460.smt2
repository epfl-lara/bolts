; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102936 () Bool)

(assert start!102936)

(declare-fun b!1236611 () Bool)

(declare-fun e!700912 () Bool)

(assert (=> b!1236611 (= e!700912 (not true))))

(declare-datatypes ((List!27416 0))(
  ( (Nil!27413) (Cons!27412 (h!28621 (_ BitVec 64)) (t!40886 List!27416)) )
))
(declare-fun lt!560788 () List!27416)

(declare-fun subseq!568 (List!27416 List!27416) Bool)

(assert (=> b!1236611 (subseq!568 lt!560788 lt!560788)))

(declare-datatypes ((Unit!40968 0))(
  ( (Unit!40969) )
))
(declare-fun lt!560787 () Unit!40968)

(declare-fun lemmaListSubSeqRefl!0 (List!27416) Unit!40968)

(assert (=> b!1236611 (= lt!560787 (lemmaListSubSeqRefl!0 lt!560788))))

(declare-datatypes ((array!79722 0))(
  ( (array!79723 (arr!38465 (Array (_ BitVec 32) (_ BitVec 64))) (size!39002 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79722)

(declare-fun acc!846 () List!27416)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1236611 (= lt!560788 (Cons!27412 (select (arr!38465 a!3835) from!3213) acc!846))))

(declare-fun b!1236612 () Bool)

(declare-fun res!824707 () Bool)

(assert (=> b!1236612 (=> (not res!824707) (not e!700912))))

(declare-fun arrayNoDuplicates!0 (array!79722 (_ BitVec 32) List!27416) Bool)

(assert (=> b!1236612 (= res!824707 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236613 () Bool)

(declare-fun res!824711 () Bool)

(assert (=> b!1236613 (=> (not res!824711) (not e!700912))))

(assert (=> b!1236613 (= res!824711 (not (= from!3213 (bvsub (size!39002 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1236614 () Bool)

(declare-fun res!824710 () Bool)

(assert (=> b!1236614 (=> (not res!824710) (not e!700912))))

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7331 (List!27416 (_ BitVec 64)) Bool)

(assert (=> b!1236614 (= res!824710 (contains!7331 acc!846 k!2925))))

(declare-fun res!824709 () Bool)

(assert (=> start!102936 (=> (not res!824709) (not e!700912))))

(assert (=> start!102936 (= res!824709 (and (bvslt (size!39002 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39002 a!3835))))))

(assert (=> start!102936 e!700912))

(declare-fun array_inv!29241 (array!79722) Bool)

(assert (=> start!102936 (array_inv!29241 a!3835)))

(assert (=> start!102936 true))

(declare-fun b!1236615 () Bool)

(declare-fun res!824704 () Bool)

(assert (=> b!1236615 (=> (not res!824704) (not e!700912))))

(assert (=> b!1236615 (= res!824704 (not (contains!7331 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236616 () Bool)

(declare-fun res!824708 () Bool)

(assert (=> b!1236616 (=> (not res!824708) (not e!700912))))

(declare-fun noDuplicate!1938 (List!27416) Bool)

(assert (=> b!1236616 (= res!824708 (noDuplicate!1938 acc!846))))

(declare-fun b!1236617 () Bool)

(declare-fun res!824705 () Bool)

(assert (=> b!1236617 (=> (not res!824705) (not e!700912))))

(assert (=> b!1236617 (= res!824705 (not (contains!7331 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236618 () Bool)

(declare-fun res!824706 () Bool)

(assert (=> b!1236618 (=> (not res!824706) (not e!700912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236618 (= res!824706 (validKeyInArray!0 (select (arr!38465 a!3835) from!3213)))))

(assert (= (and start!102936 res!824709) b!1236616))

(assert (= (and b!1236616 res!824708) b!1236617))

(assert (= (and b!1236617 res!824705) b!1236615))

(assert (= (and b!1236615 res!824704) b!1236612))

(assert (= (and b!1236612 res!824707) b!1236614))

(assert (= (and b!1236614 res!824710) b!1236613))

(assert (= (and b!1236613 res!824711) b!1236618))

(assert (= (and b!1236618 res!824706) b!1236611))

(declare-fun m!1140423 () Bool)

(assert (=> b!1236615 m!1140423))

(declare-fun m!1140425 () Bool)

(assert (=> b!1236616 m!1140425))

(declare-fun m!1140427 () Bool)

(assert (=> b!1236611 m!1140427))

(declare-fun m!1140429 () Bool)

(assert (=> b!1236611 m!1140429))

(declare-fun m!1140431 () Bool)

(assert (=> b!1236611 m!1140431))

(declare-fun m!1140433 () Bool)

(assert (=> b!1236617 m!1140433))

(declare-fun m!1140435 () Bool)

(assert (=> start!102936 m!1140435))

(declare-fun m!1140437 () Bool)

(assert (=> b!1236614 m!1140437))

(assert (=> b!1236618 m!1140431))

(assert (=> b!1236618 m!1140431))

(declare-fun m!1140439 () Bool)

(assert (=> b!1236618 m!1140439))

(declare-fun m!1140441 () Bool)

(assert (=> b!1236612 m!1140441))

(push 1)

(assert (not b!1236616))

(assert (not b!1236612))

(assert (not b!1236611))

(assert (not b!1236617))

(assert (not start!102936))

(assert (not b!1236615))

