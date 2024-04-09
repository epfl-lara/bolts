; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103024 () Bool)

(assert start!103024)

(declare-fun b!1237205 () Bool)

(declare-fun e!701240 () Bool)

(assert (=> b!1237205 (= e!701240 (not true))))

(declare-datatypes ((List!27428 0))(
  ( (Nil!27425) (Cons!27424 (h!28633 (_ BitVec 64)) (t!40898 List!27428)) )
))
(declare-fun acc!846 () List!27428)

(declare-fun lt!560941 () List!27428)

(declare-fun subseq!580 (List!27428 List!27428) Bool)

(assert (=> b!1237205 (subseq!580 acc!846 lt!560941)))

(declare-datatypes ((Unit!41000 0))(
  ( (Unit!41001) )
))
(declare-fun lt!560939 () Unit!41000)

(declare-fun subseqTail!67 (List!27428 List!27428) Unit!41000)

(assert (=> b!1237205 (= lt!560939 (subseqTail!67 lt!560941 lt!560941))))

(assert (=> b!1237205 (subseq!580 lt!560941 lt!560941)))

(declare-fun lt!560940 () Unit!41000)

(declare-fun lemmaListSubSeqRefl!0 (List!27428) Unit!41000)

(assert (=> b!1237205 (= lt!560940 (lemmaListSubSeqRefl!0 lt!560941))))

(declare-datatypes ((array!79749 0))(
  ( (array!79750 (arr!38477 (Array (_ BitVec 32) (_ BitVec 64))) (size!39014 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79749)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1237205 (= lt!560941 (Cons!27424 (select (arr!38477 a!3835) from!3213) acc!846))))

(declare-fun b!1237206 () Bool)

(declare-fun res!825198 () Bool)

(assert (=> b!1237206 (=> (not res!825198) (not e!701240))))

(declare-fun noDuplicate!1950 (List!27428) Bool)

(assert (=> b!1237206 (= res!825198 (noDuplicate!1950 acc!846))))

(declare-fun b!1237207 () Bool)

(declare-fun res!825201 () Bool)

(assert (=> b!1237207 (=> (not res!825201) (not e!701240))))

(declare-fun arrayNoDuplicates!0 (array!79749 (_ BitVec 32) List!27428) Bool)

(assert (=> b!1237207 (= res!825201 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237208 () Bool)

(declare-fun res!825205 () Bool)

(assert (=> b!1237208 (=> (not res!825205) (not e!701240))))

(declare-fun contains!7343 (List!27428 (_ BitVec 64)) Bool)

(assert (=> b!1237208 (= res!825205 (not (contains!7343 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!825199 () Bool)

(assert (=> start!103024 (=> (not res!825199) (not e!701240))))

(assert (=> start!103024 (= res!825199 (and (bvslt (size!39014 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39014 a!3835))))))

(assert (=> start!103024 e!701240))

(declare-fun array_inv!29253 (array!79749) Bool)

(assert (=> start!103024 (array_inv!29253 a!3835)))

(assert (=> start!103024 true))

(declare-fun b!1237209 () Bool)

(declare-fun res!825204 () Bool)

(assert (=> b!1237209 (=> (not res!825204) (not e!701240))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1237209 (= res!825204 (contains!7343 acc!846 k!2925))))

(declare-fun b!1237210 () Bool)

(declare-fun res!825202 () Bool)

(assert (=> b!1237210 (=> (not res!825202) (not e!701240))))

(assert (=> b!1237210 (= res!825202 (not (= from!3213 (bvsub (size!39014 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1237211 () Bool)

(declare-fun res!825203 () Bool)

(assert (=> b!1237211 (=> (not res!825203) (not e!701240))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237211 (= res!825203 (validKeyInArray!0 (select (arr!38477 a!3835) from!3213)))))

(declare-fun b!1237212 () Bool)

(declare-fun res!825200 () Bool)

(assert (=> b!1237212 (=> (not res!825200) (not e!701240))))

(assert (=> b!1237212 (= res!825200 (not (contains!7343 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103024 res!825199) b!1237206))

(assert (= (and b!1237206 res!825198) b!1237208))

(assert (= (and b!1237208 res!825205) b!1237212))

(assert (= (and b!1237212 res!825200) b!1237207))

(assert (= (and b!1237207 res!825201) b!1237209))

(assert (= (and b!1237209 res!825204) b!1237210))

(assert (= (and b!1237210 res!825202) b!1237211))

(assert (= (and b!1237211 res!825203) b!1237205))

(declare-fun m!1140959 () Bool)

(assert (=> b!1237207 m!1140959))

(declare-fun m!1140961 () Bool)

(assert (=> b!1237212 m!1140961))

(declare-fun m!1140963 () Bool)

(assert (=> b!1237211 m!1140963))

(assert (=> b!1237211 m!1140963))

(declare-fun m!1140965 () Bool)

(assert (=> b!1237211 m!1140965))

(declare-fun m!1140967 () Bool)

(assert (=> b!1237209 m!1140967))

(declare-fun m!1140969 () Bool)

(assert (=> start!103024 m!1140969))

(declare-fun m!1140971 () Bool)

(assert (=> b!1237206 m!1140971))

(declare-fun m!1140973 () Bool)

(assert (=> b!1237208 m!1140973))

(declare-fun m!1140975 () Bool)

(assert (=> b!1237205 m!1140975))

(declare-fun m!1140977 () Bool)

(assert (=> b!1237205 m!1140977))

(declare-fun m!1140979 () Bool)

(assert (=> b!1237205 m!1140979))

(declare-fun m!1140981 () Bool)

(assert (=> b!1237205 m!1140981))

(assert (=> b!1237205 m!1140963))

(push 1)

(assert (not b!1237205))

(assert (not b!1237207))

(assert (not start!103024))

(assert (not b!1237206))

(assert (not b!1237212))

(assert (not b!1237209))

(assert (not b!1237211))

(assert (not b!1237208))

(check-sat)

