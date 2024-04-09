; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103942 () Bool)

(assert start!103942)

(declare-fun b!1243616 () Bool)

(declare-fun res!829523 () Bool)

(declare-fun e!704983 () Bool)

(assert (=> b!1243616 (=> (not res!829523) (not e!704983))))

(declare-datatypes ((List!27560 0))(
  ( (Nil!27557) (Cons!27556 (h!28765 (_ BitVec 64)) (t!41036 List!27560)) )
))
(declare-fun lt!562401 () List!27560)

(declare-fun subseq!643 (List!27560 List!27560) Bool)

(assert (=> b!1243616 (= res!829523 (subseq!643 Nil!27557 lt!562401))))

(declare-fun b!1243617 () Bool)

(declare-fun res!829528 () Bool)

(declare-fun e!704982 () Bool)

(assert (=> b!1243617 (=> (not res!829528) (not e!704982))))

(declare-datatypes ((array!79980 0))(
  ( (array!79981 (arr!38579 (Array (_ BitVec 32) (_ BitVec 64))) (size!39116 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79980)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243617 (= res!829528 (validKeyInArray!0 (select (arr!38579 a!3892) from!3270)))))

(declare-fun res!829525 () Bool)

(assert (=> start!103942 (=> (not res!829525) (not e!704982))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!103942 (= res!829525 (and (bvslt (size!39116 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39116 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39116 a!3892))))))

(assert (=> start!103942 e!704982))

(declare-fun array_inv!29355 (array!79980) Bool)

(assert (=> start!103942 (array_inv!29355 a!3892)))

(assert (=> start!103942 true))

(declare-fun b!1243618 () Bool)

(declare-fun res!829519 () Bool)

(assert (=> b!1243618 (=> (not res!829519) (not e!704983))))

(declare-fun contains!7432 (List!27560 (_ BitVec 64)) Bool)

(assert (=> b!1243618 (= res!829519 (not (contains!7432 Nil!27557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243619 () Bool)

(assert (=> b!1243619 (= e!704983 false)))

(declare-fun lt!562400 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79980 (_ BitVec 32) List!27560) Bool)

(assert (=> b!1243619 (= lt!562400 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562401))))

(declare-datatypes ((Unit!41237 0))(
  ( (Unit!41238) )
))
(declare-fun lt!562402 () Unit!41237)

(declare-fun noDuplicateSubseq!97 (List!27560 List!27560) Unit!41237)

(assert (=> b!1243619 (= lt!562402 (noDuplicateSubseq!97 Nil!27557 lt!562401))))

(declare-fun b!1243620 () Bool)

(declare-fun res!829524 () Bool)

(assert (=> b!1243620 (=> (not res!829524) (not e!704982))))

(assert (=> b!1243620 (= res!829524 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39116 a!3892)) (not (= newFrom!287 (size!39116 a!3892)))))))

(declare-fun b!1243621 () Bool)

(declare-fun res!829522 () Bool)

(assert (=> b!1243621 (=> (not res!829522) (not e!704983))))

(assert (=> b!1243621 (= res!829522 (not (contains!7432 lt!562401 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243622 () Bool)

(declare-fun res!829527 () Bool)

(assert (=> b!1243622 (=> (not res!829527) (not e!704982))))

(assert (=> b!1243622 (= res!829527 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27557))))

(declare-fun b!1243623 () Bool)

(declare-fun res!829520 () Bool)

(assert (=> b!1243623 (=> (not res!829520) (not e!704983))))

(declare-fun noDuplicate!2022 (List!27560) Bool)

(assert (=> b!1243623 (= res!829520 (noDuplicate!2022 lt!562401))))

(declare-fun b!1243624 () Bool)

(declare-fun res!829518 () Bool)

(assert (=> b!1243624 (=> (not res!829518) (not e!704983))))

(assert (=> b!1243624 (= res!829518 (not (contains!7432 Nil!27557 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243625 () Bool)

(assert (=> b!1243625 (= e!704982 e!704983)))

(declare-fun res!829521 () Bool)

(assert (=> b!1243625 (=> (not res!829521) (not e!704983))))

(assert (=> b!1243625 (= res!829521 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243625 (= lt!562401 (Cons!27556 (select (arr!38579 a!3892) from!3270) Nil!27557))))

(declare-fun b!1243626 () Bool)

(declare-fun res!829526 () Bool)

(assert (=> b!1243626 (=> (not res!829526) (not e!704983))))

(assert (=> b!1243626 (= res!829526 (not (contains!7432 lt!562401 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103942 res!829525) b!1243622))

(assert (= (and b!1243622 res!829527) b!1243620))

(assert (= (and b!1243620 res!829524) b!1243617))

(assert (= (and b!1243617 res!829528) b!1243625))

(assert (= (and b!1243625 res!829521) b!1243623))

(assert (= (and b!1243623 res!829520) b!1243626))

(assert (= (and b!1243626 res!829526) b!1243621))

(assert (= (and b!1243621 res!829522) b!1243618))

(assert (= (and b!1243618 res!829519) b!1243624))

(assert (= (and b!1243624 res!829518) b!1243616))

(assert (= (and b!1243616 res!829523) b!1243619))

(declare-fun m!1146129 () Bool)

(assert (=> b!1243618 m!1146129))

(declare-fun m!1146131 () Bool)

(assert (=> b!1243616 m!1146131))

(declare-fun m!1146133 () Bool)

(assert (=> b!1243617 m!1146133))

(assert (=> b!1243617 m!1146133))

(declare-fun m!1146135 () Bool)

(assert (=> b!1243617 m!1146135))

(declare-fun m!1146137 () Bool)

(assert (=> b!1243621 m!1146137))

(assert (=> b!1243625 m!1146133))

(declare-fun m!1146139 () Bool)

(assert (=> start!103942 m!1146139))

(declare-fun m!1146141 () Bool)

(assert (=> b!1243626 m!1146141))

(declare-fun m!1146143 () Bool)

(assert (=> b!1243624 m!1146143))

(declare-fun m!1146145 () Bool)

(assert (=> b!1243623 m!1146145))

(declare-fun m!1146147 () Bool)

(assert (=> b!1243619 m!1146147))

(declare-fun m!1146149 () Bool)

(assert (=> b!1243619 m!1146149))

(declare-fun m!1146151 () Bool)

(assert (=> b!1243622 m!1146151))

(push 1)

