; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103020 () Bool)

(assert start!103020)

(declare-fun res!825154 () Bool)

(declare-fun e!701227 () Bool)

(assert (=> start!103020 (=> (not res!825154) (not e!701227))))

(declare-datatypes ((array!79745 0))(
  ( (array!79746 (arr!38475 (Array (_ BitVec 32) (_ BitVec 64))) (size!39012 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79745)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!103020 (= res!825154 (and (bvslt (size!39012 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39012 a!3835))))))

(assert (=> start!103020 e!701227))

(declare-fun array_inv!29251 (array!79745) Bool)

(assert (=> start!103020 (array_inv!29251 a!3835)))

(assert (=> start!103020 true))

(declare-fun b!1237157 () Bool)

(declare-fun res!825152 () Bool)

(assert (=> b!1237157 (=> (not res!825152) (not e!701227))))

(declare-datatypes ((List!27426 0))(
  ( (Nil!27423) (Cons!27422 (h!28631 (_ BitVec 64)) (t!40896 List!27426)) )
))
(declare-fun acc!846 () List!27426)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7341 (List!27426 (_ BitVec 64)) Bool)

(assert (=> b!1237157 (= res!825152 (contains!7341 acc!846 k!2925))))

(declare-fun b!1237158 () Bool)

(declare-fun res!825155 () Bool)

(assert (=> b!1237158 (=> (not res!825155) (not e!701227))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237158 (= res!825155 (validKeyInArray!0 (select (arr!38475 a!3835) from!3213)))))

(declare-fun b!1237159 () Bool)

(declare-fun res!825151 () Bool)

(assert (=> b!1237159 (=> (not res!825151) (not e!701227))))

(declare-fun arrayNoDuplicates!0 (array!79745 (_ BitVec 32) List!27426) Bool)

(assert (=> b!1237159 (= res!825151 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237160 () Bool)

(declare-fun res!825150 () Bool)

(assert (=> b!1237160 (=> (not res!825150) (not e!701227))))

(assert (=> b!1237160 (= res!825150 (not (contains!7341 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237161 () Bool)

(declare-fun res!825153 () Bool)

(assert (=> b!1237161 (=> (not res!825153) (not e!701227))))

(assert (=> b!1237161 (= res!825153 (not (contains!7341 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237162 () Bool)

(declare-fun res!825156 () Bool)

(assert (=> b!1237162 (=> (not res!825156) (not e!701227))))

(declare-fun noDuplicate!1948 (List!27426) Bool)

(assert (=> b!1237162 (= res!825156 (noDuplicate!1948 acc!846))))

(declare-fun b!1237163 () Bool)

(declare-fun res!825157 () Bool)

(assert (=> b!1237163 (=> (not res!825157) (not e!701227))))

(assert (=> b!1237163 (= res!825157 (not (= from!3213 (bvsub (size!39012 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1237164 () Bool)

(assert (=> b!1237164 (= e!701227 (not true))))

(declare-fun lt!560922 () List!27426)

(declare-fun subseq!578 (List!27426 List!27426) Bool)

(assert (=> b!1237164 (subseq!578 acc!846 lt!560922)))

(declare-datatypes ((Unit!40996 0))(
  ( (Unit!40997) )
))
(declare-fun lt!560923 () Unit!40996)

(declare-fun subseqTail!65 (List!27426 List!27426) Unit!40996)

(assert (=> b!1237164 (= lt!560923 (subseqTail!65 lt!560922 lt!560922))))

(assert (=> b!1237164 (subseq!578 lt!560922 lt!560922)))

(declare-fun lt!560921 () Unit!40996)

(declare-fun lemmaListSubSeqRefl!0 (List!27426) Unit!40996)

(assert (=> b!1237164 (= lt!560921 (lemmaListSubSeqRefl!0 lt!560922))))

(assert (=> b!1237164 (= lt!560922 (Cons!27422 (select (arr!38475 a!3835) from!3213) acc!846))))

(assert (= (and start!103020 res!825154) b!1237162))

(assert (= (and b!1237162 res!825156) b!1237161))

(assert (= (and b!1237161 res!825153) b!1237160))

(assert (= (and b!1237160 res!825150) b!1237159))

(assert (= (and b!1237159 res!825151) b!1237157))

(assert (= (and b!1237157 res!825152) b!1237163))

(assert (= (and b!1237163 res!825157) b!1237158))

(assert (= (and b!1237158 res!825155) b!1237164))

(declare-fun m!1140911 () Bool)

(assert (=> b!1237162 m!1140911))

(declare-fun m!1140913 () Bool)

(assert (=> b!1237164 m!1140913))

(declare-fun m!1140915 () Bool)

(assert (=> b!1237164 m!1140915))

(declare-fun m!1140917 () Bool)

(assert (=> b!1237164 m!1140917))

(declare-fun m!1140919 () Bool)

(assert (=> b!1237164 m!1140919))

(declare-fun m!1140921 () Bool)

(assert (=> b!1237164 m!1140921))

(declare-fun m!1140923 () Bool)

(assert (=> b!1237157 m!1140923))

(declare-fun m!1140925 () Bool)

(assert (=> b!1237161 m!1140925))

(declare-fun m!1140927 () Bool)

(assert (=> b!1237159 m!1140927))

(declare-fun m!1140929 () Bool)

(assert (=> b!1237160 m!1140929))

(declare-fun m!1140931 () Bool)

(assert (=> start!103020 m!1140931))

(assert (=> b!1237158 m!1140921))

(assert (=> b!1237158 m!1140921))

(declare-fun m!1140933 () Bool)

(assert (=> b!1237158 m!1140933))

(push 1)

(assert (not start!103020))

(assert (not b!1237162))

(assert (not b!1237158))

(assert (not b!1237159))

(assert (not b!1237157))

(assert (not b!1237161))

(assert (not b!1237164))

(assert (not b!1237160))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

