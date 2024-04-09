; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116328 () Bool)

(assert start!116328)

(declare-fun b!1372799 () Bool)

(declare-fun res!916193 () Bool)

(declare-fun e!777697 () Bool)

(assert (=> b!1372799 (=> (not res!916193) (not e!777697))))

(declare-datatypes ((List!32188 0))(
  ( (Nil!32185) (Cons!32184 (h!33393 (_ BitVec 64)) (t!46889 List!32188)) )
))
(declare-fun newAcc!98 () List!32188)

(declare-fun contains!9726 (List!32188 (_ BitVec 64)) Bool)

(assert (=> b!1372799 (= res!916193 (not (contains!9726 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!916194 () Bool)

(assert (=> start!116328 (=> (not res!916194) (not e!777697))))

(declare-datatypes ((array!93068 0))(
  ( (array!93069 (arr!44940 (Array (_ BitVec 32) (_ BitVec 64))) (size!45491 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93068)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!116328 (= res!916194 (and (bvslt (size!45491 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45491 a!3861))))))

(assert (=> start!116328 e!777697))

(declare-fun array_inv!33885 (array!93068) Bool)

(assert (=> start!116328 (array_inv!33885 a!3861)))

(assert (=> start!116328 true))

(declare-fun b!1372800 () Bool)

(declare-fun res!916191 () Bool)

(assert (=> b!1372800 (=> (not res!916191) (not e!777697))))

(declare-fun acc!866 () List!32188)

(assert (=> b!1372800 (= res!916191 (not (contains!9726 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372801 () Bool)

(declare-fun res!916188 () Bool)

(assert (=> b!1372801 (=> (not res!916188) (not e!777697))))

(declare-fun noDuplicate!2605 (List!32188) Bool)

(assert (=> b!1372801 (= res!916188 (noDuplicate!2605 acc!866))))

(declare-fun b!1372802 () Bool)

(assert (=> b!1372802 (= e!777697 false)))

(declare-fun lt!602903 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93068 (_ BitVec 32) List!32188) Bool)

(assert (=> b!1372802 (= lt!602903 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45315 0))(
  ( (Unit!45316) )
))
(declare-fun lt!602902 () Unit!45315)

(declare-fun noDuplicateSubseq!304 (List!32188 List!32188) Unit!45315)

(assert (=> b!1372802 (= lt!602902 (noDuplicateSubseq!304 newAcc!98 acc!866))))

(declare-fun b!1372803 () Bool)

(declare-fun res!916189 () Bool)

(assert (=> b!1372803 (=> (not res!916189) (not e!777697))))

(assert (=> b!1372803 (= res!916189 (not (contains!9726 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372804 () Bool)

(declare-fun res!916192 () Bool)

(assert (=> b!1372804 (=> (not res!916192) (not e!777697))))

(assert (=> b!1372804 (= res!916192 (not (contains!9726 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372805 () Bool)

(declare-fun res!916190 () Bool)

(assert (=> b!1372805 (=> (not res!916190) (not e!777697))))

(declare-fun subseq!1117 (List!32188 List!32188) Bool)

(assert (=> b!1372805 (= res!916190 (subseq!1117 newAcc!98 acc!866))))

(assert (= (and start!116328 res!916194) b!1372801))

(assert (= (and b!1372801 res!916188) b!1372800))

(assert (= (and b!1372800 res!916191) b!1372803))

(assert (= (and b!1372803 res!916189) b!1372804))

(assert (= (and b!1372804 res!916192) b!1372799))

(assert (= (and b!1372799 res!916193) b!1372805))

(assert (= (and b!1372805 res!916190) b!1372802))

(declare-fun m!1256209 () Bool)

(assert (=> b!1372805 m!1256209))

(declare-fun m!1256211 () Bool)

(assert (=> b!1372801 m!1256211))

(declare-fun m!1256213 () Bool)

(assert (=> start!116328 m!1256213))

(declare-fun m!1256215 () Bool)

(assert (=> b!1372803 m!1256215))

(declare-fun m!1256217 () Bool)

(assert (=> b!1372802 m!1256217))

(declare-fun m!1256219 () Bool)

(assert (=> b!1372802 m!1256219))

(declare-fun m!1256221 () Bool)

(assert (=> b!1372799 m!1256221))

(declare-fun m!1256223 () Bool)

(assert (=> b!1372800 m!1256223))

(declare-fun m!1256225 () Bool)

(assert (=> b!1372804 m!1256225))

(push 1)

(assert (not b!1372804))

(assert (not b!1372802))

(assert (not start!116328))

(assert (not b!1372803))

(assert (not b!1372799))

(assert (not b!1372805))

(assert (not b!1372801))

(assert (not b!1372800))

(check-sat)

