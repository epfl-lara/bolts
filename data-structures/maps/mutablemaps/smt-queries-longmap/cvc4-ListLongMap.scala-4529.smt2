; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62662 () Bool)

(assert start!62662)

(declare-fun b!707066 () Bool)

(declare-fun res!471054 () Bool)

(declare-fun e!397966 () Bool)

(assert (=> b!707066 (=> (not res!471054) (not e!397966))))

(declare-datatypes ((List!13395 0))(
  ( (Nil!13392) (Cons!13391 (h!14436 (_ BitVec 64)) (t!19685 List!13395)) )
))
(declare-fun acc!652 () List!13395)

(declare-fun newAcc!49 () List!13395)

(declare-fun subseq!382 (List!13395 List!13395) Bool)

(assert (=> b!707066 (= res!471054 (subseq!382 acc!652 newAcc!49))))

(declare-fun b!707067 () Bool)

(declare-fun res!471056 () Bool)

(assert (=> b!707067 (=> (not res!471056) (not e!397966))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40297 0))(
  ( (array!40298 (arr!19301 (Array (_ BitVec 32) (_ BitVec 64))) (size!19684 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40297)

(assert (=> b!707067 (= res!471056 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19684 a!3591)))))

(declare-fun b!707068 () Bool)

(assert (=> b!707068 (= e!397966 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!707069 () Bool)

(declare-fun res!471057 () Bool)

(assert (=> b!707069 (=> (not res!471057) (not e!397966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!707069 (= res!471057 (validKeyInArray!0 (select (arr!19301 a!3591) from!2969)))))

(declare-fun b!707070 () Bool)

(declare-fun res!471052 () Bool)

(assert (=> b!707070 (=> (not res!471052) (not e!397966))))

(declare-fun contains!3938 (List!13395 (_ BitVec 64)) Bool)

(assert (=> b!707070 (= res!471052 (not (contains!3938 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707071 () Bool)

(declare-fun res!471058 () Bool)

(assert (=> b!707071 (=> (not res!471058) (not e!397966))))

(assert (=> b!707071 (= res!471058 (not (contains!3938 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707072 () Bool)

(declare-fun res!471055 () Bool)

(assert (=> b!707072 (=> (not res!471055) (not e!397966))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun -!347 (List!13395 (_ BitVec 64)) List!13395)

(assert (=> b!707072 (= res!471055 (= (-!347 newAcc!49 k!2824) acc!652))))

(declare-fun b!707073 () Bool)

(declare-fun res!471060 () Bool)

(assert (=> b!707073 (=> (not res!471060) (not e!397966))))

(assert (=> b!707073 (= res!471060 (validKeyInArray!0 k!2824))))

(declare-fun b!707074 () Bool)

(declare-fun res!471050 () Bool)

(assert (=> b!707074 (=> (not res!471050) (not e!397966))))

(declare-fun noDuplicate!1185 (List!13395) Bool)

(assert (=> b!707074 (= res!471050 (noDuplicate!1185 newAcc!49))))

(declare-fun b!707075 () Bool)

(declare-fun res!471051 () Bool)

(assert (=> b!707075 (=> (not res!471051) (not e!397966))))

(assert (=> b!707075 (= res!471051 (not (contains!3938 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707076 () Bool)

(declare-fun res!471065 () Bool)

(assert (=> b!707076 (=> (not res!471065) (not e!397966))))

(declare-fun arrayContainsKey!0 (array!40297 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!707076 (= res!471065 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!707077 () Bool)

(declare-fun res!471053 () Bool)

(assert (=> b!707077 (=> (not res!471053) (not e!397966))))

(assert (=> b!707077 (= res!471053 (noDuplicate!1185 acc!652))))

(declare-fun res!471061 () Bool)

(assert (=> start!62662 (=> (not res!471061) (not e!397966))))

(assert (=> start!62662 (= res!471061 (and (bvslt (size!19684 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19684 a!3591))))))

(assert (=> start!62662 e!397966))

(assert (=> start!62662 true))

(declare-fun array_inv!15075 (array!40297) Bool)

(assert (=> start!62662 (array_inv!15075 a!3591)))

(declare-fun b!707078 () Bool)

(declare-fun res!471062 () Bool)

(assert (=> b!707078 (=> (not res!471062) (not e!397966))))

(assert (=> b!707078 (= res!471062 (contains!3938 newAcc!49 k!2824))))

(declare-fun b!707079 () Bool)

(declare-fun res!471064 () Bool)

(assert (=> b!707079 (=> (not res!471064) (not e!397966))))

(assert (=> b!707079 (= res!471064 (not (contains!3938 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707080 () Bool)

(declare-fun res!471059 () Bool)

(assert (=> b!707080 (=> (not res!471059) (not e!397966))))

(assert (=> b!707080 (= res!471059 (not (contains!3938 acc!652 k!2824)))))

(declare-fun b!707081 () Bool)

(declare-fun res!471063 () Bool)

(assert (=> b!707081 (=> (not res!471063) (not e!397966))))

(declare-fun arrayNoDuplicates!0 (array!40297 (_ BitVec 32) List!13395) Bool)

(assert (=> b!707081 (= res!471063 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(assert (= (and start!62662 res!471061) b!707077))

(assert (= (and b!707077 res!471053) b!707074))

(assert (= (and b!707074 res!471050) b!707071))

(assert (= (and b!707071 res!471058) b!707075))

(assert (= (and b!707075 res!471051) b!707076))

(assert (= (and b!707076 res!471065) b!707080))

(assert (= (and b!707080 res!471059) b!707073))

(assert (= (and b!707073 res!471060) b!707081))

(assert (= (and b!707081 res!471063) b!707066))

(assert (= (and b!707066 res!471054) b!707078))

(assert (= (and b!707078 res!471062) b!707072))

(assert (= (and b!707072 res!471055) b!707070))

(assert (= (and b!707070 res!471052) b!707079))

(assert (= (and b!707079 res!471064) b!707067))

(assert (= (and b!707067 res!471056) b!707069))

(assert (= (and b!707069 res!471057) b!707068))

(declare-fun m!664771 () Bool)

(assert (=> b!707073 m!664771))

(declare-fun m!664773 () Bool)

(assert (=> b!707066 m!664773))

(declare-fun m!664775 () Bool)

(assert (=> b!707079 m!664775))

(declare-fun m!664777 () Bool)

(assert (=> b!707070 m!664777))

(declare-fun m!664779 () Bool)

(assert (=> b!707081 m!664779))

(declare-fun m!664781 () Bool)

(assert (=> start!62662 m!664781))

(declare-fun m!664783 () Bool)

(assert (=> b!707071 m!664783))

(declare-fun m!664785 () Bool)

(assert (=> b!707076 m!664785))

(declare-fun m!664787 () Bool)

(assert (=> b!707077 m!664787))

(declare-fun m!664789 () Bool)

(assert (=> b!707074 m!664789))

(declare-fun m!664791 () Bool)

(assert (=> b!707080 m!664791))

(declare-fun m!664793 () Bool)

(assert (=> b!707069 m!664793))

(assert (=> b!707069 m!664793))

(declare-fun m!664795 () Bool)

(assert (=> b!707069 m!664795))

(declare-fun m!664797 () Bool)

(assert (=> b!707078 m!664797))

(declare-fun m!664799 () Bool)

(assert (=> b!707075 m!664799))

(declare-fun m!664801 () Bool)

(assert (=> b!707072 m!664801))

(push 1)

