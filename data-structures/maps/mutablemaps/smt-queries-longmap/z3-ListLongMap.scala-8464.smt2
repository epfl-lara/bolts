; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103022 () Bool)

(assert start!103022)

(declare-fun res!825178 () Bool)

(declare-fun e!701234 () Bool)

(assert (=> start!103022 (=> (not res!825178) (not e!701234))))

(declare-datatypes ((array!79747 0))(
  ( (array!79748 (arr!38476 (Array (_ BitVec 32) (_ BitVec 64))) (size!39013 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79747)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!103022 (= res!825178 (and (bvslt (size!39013 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39013 a!3835))))))

(assert (=> start!103022 e!701234))

(declare-fun array_inv!29252 (array!79747) Bool)

(assert (=> start!103022 (array_inv!29252 a!3835)))

(assert (=> start!103022 true))

(declare-fun b!1237181 () Bool)

(declare-fun res!825176 () Bool)

(assert (=> b!1237181 (=> (not res!825176) (not e!701234))))

(assert (=> b!1237181 (= res!825176 (not (= from!3213 (bvsub (size!39013 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1237182 () Bool)

(assert (=> b!1237182 (= e!701234 (not true))))

(declare-datatypes ((List!27427 0))(
  ( (Nil!27424) (Cons!27423 (h!28632 (_ BitVec 64)) (t!40897 List!27427)) )
))
(declare-fun acc!846 () List!27427)

(declare-fun lt!560931 () List!27427)

(declare-fun subseq!579 (List!27427 List!27427) Bool)

(assert (=> b!1237182 (subseq!579 acc!846 lt!560931)))

(declare-datatypes ((Unit!40998 0))(
  ( (Unit!40999) )
))
(declare-fun lt!560932 () Unit!40998)

(declare-fun subseqTail!66 (List!27427 List!27427) Unit!40998)

(assert (=> b!1237182 (= lt!560932 (subseqTail!66 lt!560931 lt!560931))))

(assert (=> b!1237182 (subseq!579 lt!560931 lt!560931)))

(declare-fun lt!560930 () Unit!40998)

(declare-fun lemmaListSubSeqRefl!0 (List!27427) Unit!40998)

(assert (=> b!1237182 (= lt!560930 (lemmaListSubSeqRefl!0 lt!560931))))

(assert (=> b!1237182 (= lt!560931 (Cons!27423 (select (arr!38476 a!3835) from!3213) acc!846))))

(declare-fun b!1237183 () Bool)

(declare-fun res!825177 () Bool)

(assert (=> b!1237183 (=> (not res!825177) (not e!701234))))

(declare-fun noDuplicate!1949 (List!27427) Bool)

(assert (=> b!1237183 (= res!825177 (noDuplicate!1949 acc!846))))

(declare-fun b!1237184 () Bool)

(declare-fun res!825179 () Bool)

(assert (=> b!1237184 (=> (not res!825179) (not e!701234))))

(declare-fun arrayNoDuplicates!0 (array!79747 (_ BitVec 32) List!27427) Bool)

(assert (=> b!1237184 (= res!825179 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237185 () Bool)

(declare-fun res!825180 () Bool)

(assert (=> b!1237185 (=> (not res!825180) (not e!701234))))

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun contains!7342 (List!27427 (_ BitVec 64)) Bool)

(assert (=> b!1237185 (= res!825180 (contains!7342 acc!846 k0!2925))))

(declare-fun b!1237186 () Bool)

(declare-fun res!825174 () Bool)

(assert (=> b!1237186 (=> (not res!825174) (not e!701234))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237186 (= res!825174 (validKeyInArray!0 (select (arr!38476 a!3835) from!3213)))))

(declare-fun b!1237187 () Bool)

(declare-fun res!825181 () Bool)

(assert (=> b!1237187 (=> (not res!825181) (not e!701234))))

(assert (=> b!1237187 (= res!825181 (not (contains!7342 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237188 () Bool)

(declare-fun res!825175 () Bool)

(assert (=> b!1237188 (=> (not res!825175) (not e!701234))))

(assert (=> b!1237188 (= res!825175 (not (contains!7342 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103022 res!825178) b!1237183))

(assert (= (and b!1237183 res!825177) b!1237187))

(assert (= (and b!1237187 res!825181) b!1237188))

(assert (= (and b!1237188 res!825175) b!1237184))

(assert (= (and b!1237184 res!825179) b!1237185))

(assert (= (and b!1237185 res!825180) b!1237181))

(assert (= (and b!1237181 res!825176) b!1237186))

(assert (= (and b!1237186 res!825174) b!1237182))

(declare-fun m!1140935 () Bool)

(assert (=> b!1237183 m!1140935))

(declare-fun m!1140937 () Bool)

(assert (=> b!1237182 m!1140937))

(declare-fun m!1140939 () Bool)

(assert (=> b!1237182 m!1140939))

(declare-fun m!1140941 () Bool)

(assert (=> b!1237182 m!1140941))

(declare-fun m!1140943 () Bool)

(assert (=> b!1237182 m!1140943))

(declare-fun m!1140945 () Bool)

(assert (=> b!1237182 m!1140945))

(declare-fun m!1140947 () Bool)

(assert (=> b!1237187 m!1140947))

(declare-fun m!1140949 () Bool)

(assert (=> b!1237185 m!1140949))

(declare-fun m!1140951 () Bool)

(assert (=> b!1237188 m!1140951))

(declare-fun m!1140953 () Bool)

(assert (=> start!103022 m!1140953))

(declare-fun m!1140955 () Bool)

(assert (=> b!1237184 m!1140955))

(assert (=> b!1237186 m!1140945))

(assert (=> b!1237186 m!1140945))

(declare-fun m!1140957 () Bool)

(assert (=> b!1237186 m!1140957))

(check-sat (not b!1237188) (not b!1237186) (not b!1237185) (not start!103022) (not b!1237184) (not b!1237187) (not b!1237182) (not b!1237183))
(check-sat)
