; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103036 () Bool)

(assert start!103036)

(declare-fun b!1237349 () Bool)

(declare-fun res!825343 () Bool)

(declare-fun e!701276 () Bool)

(assert (=> b!1237349 (=> (not res!825343) (not e!701276))))

(declare-datatypes ((List!27434 0))(
  ( (Nil!27431) (Cons!27430 (h!28639 (_ BitVec 64)) (t!40904 List!27434)) )
))
(declare-fun acc!846 () List!27434)

(declare-fun contains!7349 (List!27434 (_ BitVec 64)) Bool)

(assert (=> b!1237349 (= res!825343 (not (contains!7349 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237350 () Bool)

(declare-fun res!825345 () Bool)

(assert (=> b!1237350 (=> (not res!825345) (not e!701276))))

(assert (=> b!1237350 (= res!825345 (not (contains!7349 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237351 () Bool)

(declare-fun res!825347 () Bool)

(assert (=> b!1237351 (=> (not res!825347) (not e!701276))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79761 0))(
  ( (array!79762 (arr!38483 (Array (_ BitVec 32) (_ BitVec 64))) (size!39020 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79761)

(assert (=> b!1237351 (= res!825347 (not (= from!3213 (bvsub (size!39020 a!3835) #b00000000000000000000000000000001))))))

(declare-fun res!825349 () Bool)

(assert (=> start!103036 (=> (not res!825349) (not e!701276))))

(assert (=> start!103036 (= res!825349 (and (bvslt (size!39020 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39020 a!3835))))))

(assert (=> start!103036 e!701276))

(declare-fun array_inv!29259 (array!79761) Bool)

(assert (=> start!103036 (array_inv!29259 a!3835)))

(assert (=> start!103036 true))

(declare-fun b!1237352 () Bool)

(declare-fun res!825348 () Bool)

(assert (=> b!1237352 (=> (not res!825348) (not e!701276))))

(declare-fun noDuplicate!1956 (List!27434) Bool)

(assert (=> b!1237352 (= res!825348 (noDuplicate!1956 acc!846))))

(declare-fun b!1237353 () Bool)

(declare-fun res!825342 () Bool)

(assert (=> b!1237353 (=> (not res!825342) (not e!701276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237353 (= res!825342 (validKeyInArray!0 (select (arr!38483 a!3835) from!3213)))))

(declare-fun b!1237354 () Bool)

(declare-fun res!825344 () Bool)

(assert (=> b!1237354 (=> (not res!825344) (not e!701276))))

(declare-fun arrayNoDuplicates!0 (array!79761 (_ BitVec 32) List!27434) Bool)

(assert (=> b!1237354 (= res!825344 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237355 () Bool)

(assert (=> b!1237355 (= e!701276 (not true))))

(declare-fun lt!560993 () List!27434)

(declare-fun subseq!586 (List!27434 List!27434) Bool)

(assert (=> b!1237355 (subseq!586 acc!846 lt!560993)))

(declare-datatypes ((Unit!41012 0))(
  ( (Unit!41013) )
))
(declare-fun lt!560994 () Unit!41012)

(declare-fun subseqTail!73 (List!27434 List!27434) Unit!41012)

(assert (=> b!1237355 (= lt!560994 (subseqTail!73 lt!560993 lt!560993))))

(assert (=> b!1237355 (subseq!586 lt!560993 lt!560993)))

(declare-fun lt!560995 () Unit!41012)

(declare-fun lemmaListSubSeqRefl!0 (List!27434) Unit!41012)

(assert (=> b!1237355 (= lt!560995 (lemmaListSubSeqRefl!0 lt!560993))))

(assert (=> b!1237355 (= lt!560993 (Cons!27430 (select (arr!38483 a!3835) from!3213) acc!846))))

(declare-fun b!1237356 () Bool)

(declare-fun res!825346 () Bool)

(assert (=> b!1237356 (=> (not res!825346) (not e!701276))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1237356 (= res!825346 (contains!7349 acc!846 k!2925))))

(assert (= (and start!103036 res!825349) b!1237352))

(assert (= (and b!1237352 res!825348) b!1237350))

(assert (= (and b!1237350 res!825345) b!1237349))

(assert (= (and b!1237349 res!825343) b!1237354))

(assert (= (and b!1237354 res!825344) b!1237356))

(assert (= (and b!1237356 res!825346) b!1237351))

(assert (= (and b!1237351 res!825347) b!1237353))

(assert (= (and b!1237353 res!825342) b!1237355))

(declare-fun m!1141103 () Bool)

(assert (=> start!103036 m!1141103))

(declare-fun m!1141105 () Bool)

(assert (=> b!1237352 m!1141105))

(declare-fun m!1141107 () Bool)

(assert (=> b!1237356 m!1141107))

(declare-fun m!1141109 () Bool)

(assert (=> b!1237349 m!1141109))

(declare-fun m!1141111 () Bool)

(assert (=> b!1237353 m!1141111))

(assert (=> b!1237353 m!1141111))

(declare-fun m!1141113 () Bool)

(assert (=> b!1237353 m!1141113))

(declare-fun m!1141115 () Bool)

(assert (=> b!1237350 m!1141115))

(declare-fun m!1141117 () Bool)

(assert (=> b!1237354 m!1141117))

(declare-fun m!1141119 () Bool)

(assert (=> b!1237355 m!1141119))

(declare-fun m!1141121 () Bool)

(assert (=> b!1237355 m!1141121))

(declare-fun m!1141123 () Bool)

(assert (=> b!1237355 m!1141123))

(assert (=> b!1237355 m!1141111))

(declare-fun m!1141125 () Bool)

(assert (=> b!1237355 m!1141125))

(push 1)

(assert (not b!1237354))

(assert (not b!1237350))

(assert (not b!1237352))

(assert (not b!1237353))

(assert (not b!1237349))

(assert (not b!1237355))

(assert (not b!1237356))

