; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101902 () Bool)

(assert start!101902)

(declare-fun b!1226742 () Bool)

(declare-fun res!815513 () Bool)

(declare-fun e!696663 () Bool)

(assert (=> b!1226742 (=> (not res!815513) (not e!696663))))

(declare-datatypes ((array!79184 0))(
  ( (array!79185 (arr!38214 (Array (_ BitVec 32) (_ BitVec 64))) (size!38751 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79184)

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79184 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1226742 (= res!815513 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1226743 () Bool)

(assert (=> b!1226743 (= e!696663 false)))

(declare-fun lt!558797 () Bool)

(declare-datatypes ((List!27165 0))(
  ( (Nil!27162) (Cons!27161 (h!28370 (_ BitVec 64)) (t!40635 List!27165)) )
))
(declare-fun acc!823 () List!27165)

(declare-fun arrayNoDuplicates!0 (array!79184 (_ BitVec 32) List!27165) Bool)

(assert (=> b!1226743 (= lt!558797 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1226744 () Bool)

(declare-fun res!815508 () Bool)

(assert (=> b!1226744 (=> (not res!815508) (not e!696663))))

(declare-fun contains!7080 (List!27165 (_ BitVec 64)) Bool)

(assert (=> b!1226744 (= res!815508 (not (contains!7080 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226745 () Bool)

(declare-fun res!815510 () Bool)

(assert (=> b!1226745 (=> (not res!815510) (not e!696663))))

(assert (=> b!1226745 (= res!815510 (not (contains!7080 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226746 () Bool)

(declare-fun res!815512 () Bool)

(assert (=> b!1226746 (=> (not res!815512) (not e!696663))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226746 (= res!815512 (validKeyInArray!0 k!2913))))

(declare-fun res!815507 () Bool)

(assert (=> start!101902 (=> (not res!815507) (not e!696663))))

(assert (=> start!101902 (= res!815507 (bvslt (size!38751 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101902 e!696663))

(declare-fun array_inv!28990 (array!79184) Bool)

(assert (=> start!101902 (array_inv!28990 a!3806)))

(assert (=> start!101902 true))

(declare-fun b!1226747 () Bool)

(declare-fun res!815511 () Bool)

(assert (=> b!1226747 (=> (not res!815511) (not e!696663))))

(assert (=> b!1226747 (= res!815511 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38751 a!3806)) (bvslt from!3184 (size!38751 a!3806))))))

(declare-fun b!1226748 () Bool)

(declare-fun res!815509 () Bool)

(assert (=> b!1226748 (=> (not res!815509) (not e!696663))))

(declare-fun noDuplicate!1687 (List!27165) Bool)

(assert (=> b!1226748 (= res!815509 (noDuplicate!1687 acc!823))))

(assert (= (and start!101902 res!815507) b!1226746))

(assert (= (and b!1226746 res!815512) b!1226747))

(assert (= (and b!1226747 res!815511) b!1226748))

(assert (= (and b!1226748 res!815509) b!1226745))

(assert (= (and b!1226745 res!815510) b!1226744))

(assert (= (and b!1226744 res!815508) b!1226742))

(assert (= (and b!1226742 res!815513) b!1226743))

(declare-fun m!1131749 () Bool)

(assert (=> b!1226746 m!1131749))

(declare-fun m!1131751 () Bool)

(assert (=> b!1226748 m!1131751))

(declare-fun m!1131753 () Bool)

(assert (=> b!1226742 m!1131753))

(declare-fun m!1131755 () Bool)

(assert (=> b!1226744 m!1131755))

(declare-fun m!1131757 () Bool)

(assert (=> b!1226745 m!1131757))

(declare-fun m!1131759 () Bool)

(assert (=> b!1226743 m!1131759))

(declare-fun m!1131761 () Bool)

(assert (=> start!101902 m!1131761))

(push 1)

(assert (not b!1226745))

(assert (not b!1226748))

(assert (not b!1226743))

(assert (not start!101902))

(assert (not b!1226744))

(assert (not b!1226742))

(assert (not b!1226746))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

