; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103944 () Bool)

(assert start!103944)

(declare-fun b!1243649 () Bool)

(declare-fun res!829554 () Bool)

(declare-fun e!704991 () Bool)

(assert (=> b!1243649 (=> (not res!829554) (not e!704991))))

(declare-datatypes ((array!79982 0))(
  ( (array!79983 (arr!38580 (Array (_ BitVec 32) (_ BitVec 64))) (size!39117 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79982)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243649 (= res!829554 (validKeyInArray!0 (select (arr!38580 a!3892) from!3270)))))

(declare-fun res!829561 () Bool)

(assert (=> start!103944 (=> (not res!829561) (not e!704991))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!103944 (= res!829561 (and (bvslt (size!39117 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39117 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39117 a!3892))))))

(assert (=> start!103944 e!704991))

(declare-fun array_inv!29356 (array!79982) Bool)

(assert (=> start!103944 (array_inv!29356 a!3892)))

(assert (=> start!103944 true))

(declare-fun b!1243650 () Bool)

(declare-fun res!829552 () Bool)

(declare-fun e!704992 () Bool)

(assert (=> b!1243650 (=> (not res!829552) (not e!704992))))

(declare-datatypes ((List!27561 0))(
  ( (Nil!27558) (Cons!27557 (h!28766 (_ BitVec 64)) (t!41037 List!27561)) )
))
(declare-fun contains!7433 (List!27561 (_ BitVec 64)) Bool)

(assert (=> b!1243650 (= res!829552 (not (contains!7433 Nil!27558 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243651 () Bool)

(declare-fun res!829553 () Bool)

(assert (=> b!1243651 (=> (not res!829553) (not e!704992))))

(declare-fun lt!562409 () List!27561)

(declare-fun noDuplicate!2023 (List!27561) Bool)

(assert (=> b!1243651 (= res!829553 (noDuplicate!2023 lt!562409))))

(declare-fun b!1243652 () Bool)

(declare-fun res!829559 () Bool)

(assert (=> b!1243652 (=> (not res!829559) (not e!704992))))

(assert (=> b!1243652 (= res!829559 (not (contains!7433 Nil!27558 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243653 () Bool)

(declare-fun res!829556 () Bool)

(assert (=> b!1243653 (=> (not res!829556) (not e!704992))))

(declare-fun subseq!644 (List!27561 List!27561) Bool)

(assert (=> b!1243653 (= res!829556 (subseq!644 Nil!27558 lt!562409))))

(declare-fun b!1243654 () Bool)

(declare-fun res!829551 () Bool)

(assert (=> b!1243654 (=> (not res!829551) (not e!704992))))

(assert (=> b!1243654 (= res!829551 (not (contains!7433 lt!562409 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243655 () Bool)

(assert (=> b!1243655 (= e!704992 false)))

(declare-fun lt!562410 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79982 (_ BitVec 32) List!27561) Bool)

(assert (=> b!1243655 (= lt!562410 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562409))))

(declare-datatypes ((Unit!41239 0))(
  ( (Unit!41240) )
))
(declare-fun lt!562411 () Unit!41239)

(declare-fun noDuplicateSubseq!98 (List!27561 List!27561) Unit!41239)

(assert (=> b!1243655 (= lt!562411 (noDuplicateSubseq!98 Nil!27558 lt!562409))))

(declare-fun b!1243656 () Bool)

(assert (=> b!1243656 (= e!704991 e!704992)))

(declare-fun res!829555 () Bool)

(assert (=> b!1243656 (=> (not res!829555) (not e!704992))))

(assert (=> b!1243656 (= res!829555 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243656 (= lt!562409 (Cons!27557 (select (arr!38580 a!3892) from!3270) Nil!27558))))

(declare-fun b!1243657 () Bool)

(declare-fun res!829558 () Bool)

(assert (=> b!1243657 (=> (not res!829558) (not e!704992))))

(assert (=> b!1243657 (= res!829558 (not (contains!7433 lt!562409 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243658 () Bool)

(declare-fun res!829560 () Bool)

(assert (=> b!1243658 (=> (not res!829560) (not e!704991))))

(assert (=> b!1243658 (= res!829560 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27558))))

(declare-fun b!1243659 () Bool)

(declare-fun res!829557 () Bool)

(assert (=> b!1243659 (=> (not res!829557) (not e!704991))))

(assert (=> b!1243659 (= res!829557 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39117 a!3892)) (not (= newFrom!287 (size!39117 a!3892)))))))

(assert (= (and start!103944 res!829561) b!1243658))

(assert (= (and b!1243658 res!829560) b!1243659))

(assert (= (and b!1243659 res!829557) b!1243649))

(assert (= (and b!1243649 res!829554) b!1243656))

(assert (= (and b!1243656 res!829555) b!1243651))

(assert (= (and b!1243651 res!829553) b!1243654))

(assert (= (and b!1243654 res!829551) b!1243657))

(assert (= (and b!1243657 res!829558) b!1243652))

(assert (= (and b!1243652 res!829559) b!1243650))

(assert (= (and b!1243650 res!829552) b!1243653))

(assert (= (and b!1243653 res!829556) b!1243655))

(declare-fun m!1146153 () Bool)

(assert (=> b!1243654 m!1146153))

(declare-fun m!1146155 () Bool)

(assert (=> b!1243649 m!1146155))

(assert (=> b!1243649 m!1146155))

(declare-fun m!1146157 () Bool)

(assert (=> b!1243649 m!1146157))

(declare-fun m!1146159 () Bool)

(assert (=> b!1243653 m!1146159))

(declare-fun m!1146161 () Bool)

(assert (=> b!1243652 m!1146161))

(declare-fun m!1146163 () Bool)

(assert (=> start!103944 m!1146163))

(declare-fun m!1146165 () Bool)

(assert (=> b!1243651 m!1146165))

(declare-fun m!1146167 () Bool)

(assert (=> b!1243658 m!1146167))

(declare-fun m!1146169 () Bool)

(assert (=> b!1243655 m!1146169))

(declare-fun m!1146171 () Bool)

(assert (=> b!1243655 m!1146171))

(declare-fun m!1146173 () Bool)

(assert (=> b!1243650 m!1146173))

(assert (=> b!1243656 m!1146155))

(declare-fun m!1146175 () Bool)

(assert (=> b!1243657 m!1146175))

(push 1)

