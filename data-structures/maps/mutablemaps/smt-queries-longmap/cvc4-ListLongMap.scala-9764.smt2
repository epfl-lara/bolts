; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115746 () Bool)

(assert start!115746)

(declare-fun b!1368145 () Bool)

(declare-fun res!911780 () Bool)

(declare-fun e!775254 () Bool)

(assert (=> b!1368145 (=> (not res!911780) (not e!775254))))

(declare-datatypes ((List!32098 0))(
  ( (Nil!32095) (Cons!32094 (h!33303 (_ BitVec 64)) (t!46799 List!32098)) )
))
(declare-fun acc!866 () List!32098)

(declare-fun contains!9636 (List!32098 (_ BitVec 64)) Bool)

(assert (=> b!1368145 (= res!911780 (not (contains!9636 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368146 () Bool)

(declare-fun res!911779 () Bool)

(declare-fun e!775253 () Bool)

(assert (=> b!1368146 (=> (not res!911779) (not e!775253))))

(declare-datatypes ((array!92861 0))(
  ( (array!92862 (arr!44850 (Array (_ BitVec 32) (_ BitVec 64))) (size!45401 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92861)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368146 (= res!911779 (not (validKeyInArray!0 (select (arr!44850 a!3861) from!3239))))))

(declare-fun b!1368147 () Bool)

(declare-fun res!911784 () Bool)

(assert (=> b!1368147 (=> (not res!911784) (not e!775254))))

(declare-fun newAcc!98 () List!32098)

(declare-fun subseq!1027 (List!32098 List!32098) Bool)

(assert (=> b!1368147 (= res!911784 (subseq!1027 newAcc!98 acc!866))))

(declare-fun b!1368148 () Bool)

(declare-fun res!911778 () Bool)

(assert (=> b!1368148 (=> (not res!911778) (not e!775254))))

(assert (=> b!1368148 (= res!911778 (not (contains!9636 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368149 () Bool)

(assert (=> b!1368149 (= e!775253 false)))

(declare-fun lt!601964 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92861 (_ BitVec 32) List!32098) Bool)

(assert (=> b!1368149 (= lt!601964 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368150 () Bool)

(declare-fun res!911783 () Bool)

(assert (=> b!1368150 (=> (not res!911783) (not e!775254))))

(declare-fun noDuplicate!2515 (List!32098) Bool)

(assert (=> b!1368150 (= res!911783 (noDuplicate!2515 acc!866))))

(declare-fun b!1368151 () Bool)

(declare-fun res!911776 () Bool)

(assert (=> b!1368151 (=> (not res!911776) (not e!775254))))

(assert (=> b!1368151 (= res!911776 (not (contains!9636 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368152 () Bool)

(declare-fun res!911781 () Bool)

(assert (=> b!1368152 (=> (not res!911781) (not e!775254))))

(assert (=> b!1368152 (= res!911781 (not (contains!9636 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368153 () Bool)

(declare-fun res!911782 () Bool)

(assert (=> b!1368153 (=> (not res!911782) (not e!775253))))

(assert (=> b!1368153 (= res!911782 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368154 () Bool)

(assert (=> b!1368154 (= e!775254 e!775253)))

(declare-fun res!911775 () Bool)

(assert (=> b!1368154 (=> (not res!911775) (not e!775253))))

(assert (=> b!1368154 (= res!911775 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45135 0))(
  ( (Unit!45136) )
))
(declare-fun lt!601963 () Unit!45135)

(declare-fun noDuplicateSubseq!214 (List!32098 List!32098) Unit!45135)

(assert (=> b!1368154 (= lt!601963 (noDuplicateSubseq!214 newAcc!98 acc!866))))

(declare-fun b!1368155 () Bool)

(declare-fun res!911774 () Bool)

(assert (=> b!1368155 (=> (not res!911774) (not e!775253))))

(assert (=> b!1368155 (= res!911774 (bvslt from!3239 (size!45401 a!3861)))))

(declare-fun res!911777 () Bool)

(assert (=> start!115746 (=> (not res!911777) (not e!775254))))

(assert (=> start!115746 (= res!911777 (and (bvslt (size!45401 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45401 a!3861))))))

(assert (=> start!115746 e!775254))

(declare-fun array_inv!33795 (array!92861) Bool)

(assert (=> start!115746 (array_inv!33795 a!3861)))

(assert (=> start!115746 true))

(assert (= (and start!115746 res!911777) b!1368150))

(assert (= (and b!1368150 res!911783) b!1368145))

(assert (= (and b!1368145 res!911780) b!1368148))

(assert (= (and b!1368148 res!911778) b!1368151))

(assert (= (and b!1368151 res!911776) b!1368152))

(assert (= (and b!1368152 res!911781) b!1368147))

(assert (= (and b!1368147 res!911784) b!1368154))

(assert (= (and b!1368154 res!911775) b!1368155))

(assert (= (and b!1368155 res!911774) b!1368146))

(assert (= (and b!1368146 res!911779) b!1368153))

(assert (= (and b!1368153 res!911782) b!1368149))

(declare-fun m!1252207 () Bool)

(assert (=> b!1368151 m!1252207))

(declare-fun m!1252209 () Bool)

(assert (=> b!1368149 m!1252209))

(declare-fun m!1252211 () Bool)

(assert (=> b!1368150 m!1252211))

(declare-fun m!1252213 () Bool)

(assert (=> start!115746 m!1252213))

(declare-fun m!1252215 () Bool)

(assert (=> b!1368146 m!1252215))

(assert (=> b!1368146 m!1252215))

(declare-fun m!1252217 () Bool)

(assert (=> b!1368146 m!1252217))

(declare-fun m!1252219 () Bool)

(assert (=> b!1368148 m!1252219))

(declare-fun m!1252221 () Bool)

(assert (=> b!1368145 m!1252221))

(declare-fun m!1252223 () Bool)

(assert (=> b!1368154 m!1252223))

(declare-fun m!1252225 () Bool)

(assert (=> b!1368154 m!1252225))

(declare-fun m!1252227 () Bool)

(assert (=> b!1368147 m!1252227))

(declare-fun m!1252229 () Bool)

(assert (=> b!1368152 m!1252229))

(push 1)

(assert (not b!1368145))

(assert (not b!1368146))

