; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102878 () Bool)

(assert start!102878)

(declare-fun b!1236020 () Bool)

(declare-datatypes ((Unit!40940 0))(
  ( (Unit!40941) )
))
(declare-fun e!700707 () Unit!40940)

(declare-fun Unit!40942 () Unit!40940)

(assert (=> b!1236020 (= e!700707 Unit!40942)))

(declare-fun b!1236021 () Bool)

(declare-fun res!824149 () Bool)

(declare-fun e!700705 () Bool)

(assert (=> b!1236021 (=> (not res!824149) (not e!700705))))

(declare-datatypes ((List!27387 0))(
  ( (Nil!27384) (Cons!27383 (h!28592 (_ BitVec 64)) (t!40857 List!27387)) )
))
(declare-fun acc!846 () List!27387)

(declare-fun contains!7302 (List!27387 (_ BitVec 64)) Bool)

(assert (=> b!1236021 (= res!824149 (not (contains!7302 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236022 () Bool)

(declare-fun res!824145 () Bool)

(assert (=> b!1236022 (=> (not res!824145) (not e!700705))))

(declare-fun noDuplicate!1909 (List!27387) Bool)

(assert (=> b!1236022 (= res!824145 (noDuplicate!1909 acc!846))))

(declare-fun b!1236023 () Bool)

(declare-fun res!824147 () Bool)

(assert (=> b!1236023 (=> (not res!824147) (not e!700705))))

(assert (=> b!1236023 (= res!824147 (not (contains!7302 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236024 () Bool)

(declare-fun res!824153 () Bool)

(declare-fun e!700706 () Bool)

(assert (=> b!1236024 (=> (not res!824153) (not e!700706))))

(declare-datatypes ((array!79664 0))(
  ( (array!79665 (arr!38436 (Array (_ BitVec 32) (_ BitVec 64))) (size!38973 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79664)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79664 (_ BitVec 32) List!27387) Bool)

(assert (=> b!1236024 (= res!824153 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1236025 () Bool)

(declare-fun lt!560612 () Unit!40940)

(assert (=> b!1236025 (= e!700707 lt!560612)))

(declare-fun lt!560613 () List!27387)

(assert (=> b!1236025 (= lt!560613 (Cons!27383 (select (arr!38436 a!3835) from!3213) acc!846))))

(declare-fun lt!560616 () Unit!40940)

(declare-fun lemmaListSubSeqRefl!0 (List!27387) Unit!40940)

(assert (=> b!1236025 (= lt!560616 (lemmaListSubSeqRefl!0 lt!560613))))

(declare-fun subseq!557 (List!27387 List!27387) Bool)

(assert (=> b!1236025 (subseq!557 lt!560613 lt!560613)))

(declare-fun lt!560615 () Unit!40940)

(declare-fun subseqTail!50 (List!27387 List!27387) Unit!40940)

(assert (=> b!1236025 (= lt!560615 (subseqTail!50 lt!560613 lt!560613))))

(assert (=> b!1236025 (subseq!557 acc!846 lt!560613)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79664 List!27387 List!27387 (_ BitVec 32)) Unit!40940)

(assert (=> b!1236025 (= lt!560612 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560613 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1236025 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1236026 () Bool)

(declare-fun res!824150 () Bool)

(assert (=> b!1236026 (=> (not res!824150) (not e!700705))))

(assert (=> b!1236026 (= res!824150 (not (= from!3213 (bvsub (size!38973 a!3835) #b00000000000000000000000000000001))))))

(declare-fun res!824151 () Bool)

(assert (=> start!102878 (=> (not res!824151) (not e!700705))))

(assert (=> start!102878 (= res!824151 (and (bvslt (size!38973 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38973 a!3835))))))

(assert (=> start!102878 e!700705))

(declare-fun array_inv!29212 (array!79664) Bool)

(assert (=> start!102878 (array_inv!29212 a!3835)))

(assert (=> start!102878 true))

(declare-fun b!1236027 () Bool)

(assert (=> b!1236027 (= e!700705 e!700706)))

(declare-fun res!824152 () Bool)

(assert (=> b!1236027 (=> (not res!824152) (not e!700706))))

(assert (=> b!1236027 (= res!824152 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38973 a!3835))))))

(declare-fun lt!560617 () Unit!40940)

(assert (=> b!1236027 (= lt!560617 e!700707)))

(declare-fun c!120800 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236027 (= c!120800 (validKeyInArray!0 (select (arr!38436 a!3835) from!3213)))))

(declare-fun b!1236028 () Bool)

(assert (=> b!1236028 (= e!700706 (not true))))

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79664 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1236028 (not (arrayContainsKey!0 a!3835 k!2925 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun lt!560614 () Unit!40940)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79664 (_ BitVec 32) (_ BitVec 64) List!27387) Unit!40940)

(assert (=> b!1236028 (= lt!560614 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) k!2925 acc!846))))

(declare-fun b!1236029 () Bool)

(declare-fun res!824146 () Bool)

(assert (=> b!1236029 (=> (not res!824146) (not e!700705))))

(assert (=> b!1236029 (= res!824146 (contains!7302 acc!846 k!2925))))

(declare-fun b!1236030 () Bool)

(declare-fun res!824148 () Bool)

(assert (=> b!1236030 (=> (not res!824148) (not e!700705))))

(assert (=> b!1236030 (= res!824148 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(assert (= (and start!102878 res!824151) b!1236022))

(assert (= (and b!1236022 res!824145) b!1236021))

(assert (= (and b!1236021 res!824149) b!1236023))

(assert (= (and b!1236023 res!824147) b!1236030))

(assert (= (and b!1236030 res!824148) b!1236029))

(assert (= (and b!1236029 res!824146) b!1236026))

(assert (= (and b!1236026 res!824150) b!1236027))

(assert (= (and b!1236027 c!120800) b!1236025))

(assert (= (and b!1236027 (not c!120800)) b!1236020))

(assert (= (and b!1236027 res!824152) b!1236024))

(assert (= (and b!1236024 res!824153) b!1236028))

(declare-fun m!1139915 () Bool)

(assert (=> b!1236028 m!1139915))

(declare-fun m!1139917 () Bool)

(assert (=> b!1236028 m!1139917))

(declare-fun m!1139919 () Bool)

(assert (=> b!1236030 m!1139919))

(declare-fun m!1139921 () Bool)

(assert (=> b!1236022 m!1139921))

(declare-fun m!1139923 () Bool)

(assert (=> start!102878 m!1139923))

(declare-fun m!1139925 () Bool)

(assert (=> b!1236021 m!1139925))

(declare-fun m!1139927 () Bool)

(assert (=> b!1236025 m!1139927))

(declare-fun m!1139929 () Bool)

(assert (=> b!1236025 m!1139929))

(declare-fun m!1139931 () Bool)

(assert (=> b!1236025 m!1139931))

(declare-fun m!1139933 () Bool)

(assert (=> b!1236025 m!1139933))

(declare-fun m!1139935 () Bool)

(assert (=> b!1236025 m!1139935))

(declare-fun m!1139937 () Bool)

(assert (=> b!1236025 m!1139937))

(declare-fun m!1139939 () Bool)

(assert (=> b!1236025 m!1139939))

(declare-fun m!1139941 () Bool)

(assert (=> b!1236029 m!1139941))

(assert (=> b!1236024 m!1139935))

(declare-fun m!1139943 () Bool)

(assert (=> b!1236023 m!1139943))

(assert (=> b!1236027 m!1139939))

(assert (=> b!1236027 m!1139939))

(declare-fun m!1139945 () Bool)

(assert (=> b!1236027 m!1139945))

(push 1)

