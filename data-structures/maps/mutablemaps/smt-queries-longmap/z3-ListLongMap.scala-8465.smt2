; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103028 () Bool)

(assert start!103028)

(declare-fun b!1237253 () Bool)

(declare-fun res!825250 () Bool)

(declare-fun e!701252 () Bool)

(assert (=> b!1237253 (=> (not res!825250) (not e!701252))))

(declare-datatypes ((List!27430 0))(
  ( (Nil!27427) (Cons!27426 (h!28635 (_ BitVec 64)) (t!40900 List!27430)) )
))
(declare-fun acc!846 () List!27430)

(declare-fun contains!7345 (List!27430 (_ BitVec 64)) Bool)

(assert (=> b!1237253 (= res!825250 (not (contains!7345 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237254 () Bool)

(declare-fun res!825251 () Bool)

(assert (=> b!1237254 (=> (not res!825251) (not e!701252))))

(declare-fun noDuplicate!1952 (List!27430) Bool)

(assert (=> b!1237254 (= res!825251 (noDuplicate!1952 acc!846))))

(declare-fun b!1237255 () Bool)

(declare-fun res!825248 () Bool)

(assert (=> b!1237255 (=> (not res!825248) (not e!701252))))

(declare-datatypes ((array!79753 0))(
  ( (array!79754 (arr!38479 (Array (_ BitVec 32) (_ BitVec 64))) (size!39016 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79753)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237255 (= res!825248 (validKeyInArray!0 (select (arr!38479 a!3835) from!3213)))))

(declare-fun b!1237256 () Bool)

(assert (=> b!1237256 (= e!701252 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000)))))

(declare-fun lt!560959 () List!27430)

(declare-fun subseq!582 (List!27430 List!27430) Bool)

(assert (=> b!1237256 (subseq!582 acc!846 lt!560959)))

(declare-datatypes ((Unit!41004 0))(
  ( (Unit!41005) )
))
(declare-fun lt!560957 () Unit!41004)

(declare-fun subseqTail!69 (List!27430 List!27430) Unit!41004)

(assert (=> b!1237256 (= lt!560957 (subseqTail!69 lt!560959 lt!560959))))

(assert (=> b!1237256 (subseq!582 lt!560959 lt!560959)))

(declare-fun lt!560958 () Unit!41004)

(declare-fun lemmaListSubSeqRefl!0 (List!27430) Unit!41004)

(assert (=> b!1237256 (= lt!560958 (lemmaListSubSeqRefl!0 lt!560959))))

(assert (=> b!1237256 (= lt!560959 (Cons!27426 (select (arr!38479 a!3835) from!3213) acc!846))))

(declare-fun b!1237257 () Bool)

(declare-fun res!825252 () Bool)

(assert (=> b!1237257 (=> (not res!825252) (not e!701252))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1237257 (= res!825252 (contains!7345 acc!846 k0!2925))))

(declare-fun b!1237258 () Bool)

(declare-fun res!825247 () Bool)

(assert (=> b!1237258 (=> (not res!825247) (not e!701252))))

(assert (=> b!1237258 (= res!825247 (not (= from!3213 (bvsub (size!39016 a!3835) #b00000000000000000000000000000001))))))

(declare-fun res!825253 () Bool)

(assert (=> start!103028 (=> (not res!825253) (not e!701252))))

(assert (=> start!103028 (= res!825253 (and (bvslt (size!39016 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39016 a!3835))))))

(assert (=> start!103028 e!701252))

(declare-fun array_inv!29255 (array!79753) Bool)

(assert (=> start!103028 (array_inv!29255 a!3835)))

(assert (=> start!103028 true))

(declare-fun b!1237259 () Bool)

(declare-fun res!825249 () Bool)

(assert (=> b!1237259 (=> (not res!825249) (not e!701252))))

(declare-fun arrayNoDuplicates!0 (array!79753 (_ BitVec 32) List!27430) Bool)

(assert (=> b!1237259 (= res!825249 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237260 () Bool)

(declare-fun res!825246 () Bool)

(assert (=> b!1237260 (=> (not res!825246) (not e!701252))))

(assert (=> b!1237260 (= res!825246 (not (contains!7345 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103028 res!825253) b!1237254))

(assert (= (and b!1237254 res!825251) b!1237260))

(assert (= (and b!1237260 res!825246) b!1237253))

(assert (= (and b!1237253 res!825250) b!1237259))

(assert (= (and b!1237259 res!825249) b!1237257))

(assert (= (and b!1237257 res!825252) b!1237258))

(assert (= (and b!1237258 res!825247) b!1237255))

(assert (= (and b!1237255 res!825248) b!1237256))

(declare-fun m!1141007 () Bool)

(assert (=> b!1237259 m!1141007))

(declare-fun m!1141009 () Bool)

(assert (=> b!1237255 m!1141009))

(assert (=> b!1237255 m!1141009))

(declare-fun m!1141011 () Bool)

(assert (=> b!1237255 m!1141011))

(declare-fun m!1141013 () Bool)

(assert (=> start!103028 m!1141013))

(declare-fun m!1141015 () Bool)

(assert (=> b!1237256 m!1141015))

(declare-fun m!1141017 () Bool)

(assert (=> b!1237256 m!1141017))

(declare-fun m!1141019 () Bool)

(assert (=> b!1237256 m!1141019))

(declare-fun m!1141021 () Bool)

(assert (=> b!1237256 m!1141021))

(assert (=> b!1237256 m!1141009))

(declare-fun m!1141023 () Bool)

(assert (=> b!1237257 m!1141023))

(declare-fun m!1141025 () Bool)

(assert (=> b!1237253 m!1141025))

(declare-fun m!1141027 () Bool)

(assert (=> b!1237254 m!1141027))

(declare-fun m!1141029 () Bool)

(assert (=> b!1237260 m!1141029))

(check-sat (not b!1237260) (not b!1237257) (not b!1237259) (not b!1237255) (not start!103028) (not b!1237256) (not b!1237253) (not b!1237254))
(check-sat)
