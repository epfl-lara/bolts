; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103034 () Bool)

(assert start!103034)

(declare-fun b!1237325 () Bool)

(declare-fun res!825320 () Bool)

(declare-fun e!701269 () Bool)

(assert (=> b!1237325 (=> (not res!825320) (not e!701269))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79759 0))(
  ( (array!79760 (arr!38482 (Array (_ BitVec 32) (_ BitVec 64))) (size!39019 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79759)

(assert (=> b!1237325 (= res!825320 (not (= from!3213 (bvsub (size!39019 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1237326 () Bool)

(declare-fun res!825322 () Bool)

(assert (=> b!1237326 (=> (not res!825322) (not e!701269))))

(declare-datatypes ((List!27433 0))(
  ( (Nil!27430) (Cons!27429 (h!28638 (_ BitVec 64)) (t!40903 List!27433)) )
))
(declare-fun acc!846 () List!27433)

(declare-fun contains!7348 (List!27433 (_ BitVec 64)) Bool)

(assert (=> b!1237326 (= res!825322 (not (contains!7348 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237327 () Bool)

(declare-fun res!825324 () Bool)

(assert (=> b!1237327 (=> (not res!825324) (not e!701269))))

(declare-fun arrayNoDuplicates!0 (array!79759 (_ BitVec 32) List!27433) Bool)

(assert (=> b!1237327 (= res!825324 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237328 () Bool)

(declare-fun res!825321 () Bool)

(assert (=> b!1237328 (=> (not res!825321) (not e!701269))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1237328 (= res!825321 (contains!7348 acc!846 k0!2925))))

(declare-fun b!1237329 () Bool)

(declare-fun res!825323 () Bool)

(assert (=> b!1237329 (=> (not res!825323) (not e!701269))))

(assert (=> b!1237329 (= res!825323 (not (contains!7348 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237330 () Bool)

(assert (=> b!1237330 (= e!701269 (not true))))

(declare-fun lt!560985 () List!27433)

(declare-fun subseq!585 (List!27433 List!27433) Bool)

(assert (=> b!1237330 (subseq!585 acc!846 lt!560985)))

(declare-datatypes ((Unit!41010 0))(
  ( (Unit!41011) )
))
(declare-fun lt!560984 () Unit!41010)

(declare-fun subseqTail!72 (List!27433 List!27433) Unit!41010)

(assert (=> b!1237330 (= lt!560984 (subseqTail!72 lt!560985 lt!560985))))

(assert (=> b!1237330 (subseq!585 lt!560985 lt!560985)))

(declare-fun lt!560986 () Unit!41010)

(declare-fun lemmaListSubSeqRefl!0 (List!27433) Unit!41010)

(assert (=> b!1237330 (= lt!560986 (lemmaListSubSeqRefl!0 lt!560985))))

(assert (=> b!1237330 (= lt!560985 (Cons!27429 (select (arr!38482 a!3835) from!3213) acc!846))))

(declare-fun b!1237331 () Bool)

(declare-fun res!825319 () Bool)

(assert (=> b!1237331 (=> (not res!825319) (not e!701269))))

(declare-fun noDuplicate!1955 (List!27433) Bool)

(assert (=> b!1237331 (= res!825319 (noDuplicate!1955 acc!846))))

(declare-fun res!825318 () Bool)

(assert (=> start!103034 (=> (not res!825318) (not e!701269))))

(assert (=> start!103034 (= res!825318 (and (bvslt (size!39019 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39019 a!3835))))))

(assert (=> start!103034 e!701269))

(declare-fun array_inv!29258 (array!79759) Bool)

(assert (=> start!103034 (array_inv!29258 a!3835)))

(assert (=> start!103034 true))

(declare-fun b!1237332 () Bool)

(declare-fun res!825325 () Bool)

(assert (=> b!1237332 (=> (not res!825325) (not e!701269))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237332 (= res!825325 (validKeyInArray!0 (select (arr!38482 a!3835) from!3213)))))

(assert (= (and start!103034 res!825318) b!1237331))

(assert (= (and b!1237331 res!825319) b!1237329))

(assert (= (and b!1237329 res!825323) b!1237326))

(assert (= (and b!1237326 res!825322) b!1237327))

(assert (= (and b!1237327 res!825324) b!1237328))

(assert (= (and b!1237328 res!825321) b!1237325))

(assert (= (and b!1237325 res!825320) b!1237332))

(assert (= (and b!1237332 res!825325) b!1237330))

(declare-fun m!1141079 () Bool)

(assert (=> start!103034 m!1141079))

(declare-fun m!1141081 () Bool)

(assert (=> b!1237326 m!1141081))

(declare-fun m!1141083 () Bool)

(assert (=> b!1237328 m!1141083))

(declare-fun m!1141085 () Bool)

(assert (=> b!1237327 m!1141085))

(declare-fun m!1141087 () Bool)

(assert (=> b!1237332 m!1141087))

(assert (=> b!1237332 m!1141087))

(declare-fun m!1141089 () Bool)

(assert (=> b!1237332 m!1141089))

(declare-fun m!1141091 () Bool)

(assert (=> b!1237330 m!1141091))

(declare-fun m!1141093 () Bool)

(assert (=> b!1237330 m!1141093))

(assert (=> b!1237330 m!1141087))

(declare-fun m!1141095 () Bool)

(assert (=> b!1237330 m!1141095))

(declare-fun m!1141097 () Bool)

(assert (=> b!1237330 m!1141097))

(declare-fun m!1141099 () Bool)

(assert (=> b!1237331 m!1141099))

(declare-fun m!1141101 () Bool)

(assert (=> b!1237329 m!1141101))

(check-sat (not b!1237331) (not b!1237329) (not b!1237327) (not start!103034) (not b!1237330) (not b!1237326) (not b!1237328) (not b!1237332))
