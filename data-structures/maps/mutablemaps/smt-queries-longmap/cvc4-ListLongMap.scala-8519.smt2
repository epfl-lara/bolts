; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103948 () Bool)

(assert start!103948)

(declare-fun b!1243715 () Bool)

(declare-fun res!829622 () Bool)

(declare-fun e!705010 () Bool)

(assert (=> b!1243715 (=> (not res!829622) (not e!705010))))

(declare-datatypes ((List!27563 0))(
  ( (Nil!27560) (Cons!27559 (h!28768 (_ BitVec 64)) (t!41039 List!27563)) )
))
(declare-fun lt!562427 () List!27563)

(declare-fun subseq!646 (List!27563 List!27563) Bool)

(assert (=> b!1243715 (= res!829622 (subseq!646 Nil!27560 lt!562427))))

(declare-fun b!1243716 () Bool)

(assert (=> b!1243716 (= e!705010 false)))

(declare-datatypes ((array!79986 0))(
  ( (array!79987 (arr!38582 (Array (_ BitVec 32) (_ BitVec 64))) (size!39119 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79986)

(declare-fun lt!562428 () Bool)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79986 (_ BitVec 32) List!27563) Bool)

(assert (=> b!1243716 (= lt!562428 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562427))))

(declare-datatypes ((Unit!41243 0))(
  ( (Unit!41244) )
))
(declare-fun lt!562429 () Unit!41243)

(declare-fun noDuplicateSubseq!100 (List!27563 List!27563) Unit!41243)

(assert (=> b!1243716 (= lt!562429 (noDuplicateSubseq!100 Nil!27560 lt!562427))))

(declare-fun b!1243717 () Bool)

(declare-fun res!829624 () Bool)

(declare-fun e!705011 () Bool)

(assert (=> b!1243717 (=> (not res!829624) (not e!705011))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243717 (= res!829624 (validKeyInArray!0 (select (arr!38582 a!3892) from!3270)))))

(declare-fun b!1243718 () Bool)

(declare-fun res!829620 () Bool)

(assert (=> b!1243718 (=> (not res!829620) (not e!705010))))

(declare-fun contains!7435 (List!27563 (_ BitVec 64)) Bool)

(assert (=> b!1243718 (= res!829620 (not (contains!7435 Nil!27560 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243719 () Bool)

(assert (=> b!1243719 (= e!705011 e!705010)))

(declare-fun res!829626 () Bool)

(assert (=> b!1243719 (=> (not res!829626) (not e!705010))))

(assert (=> b!1243719 (= res!829626 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243719 (= lt!562427 (Cons!27559 (select (arr!38582 a!3892) from!3270) Nil!27560))))

(declare-fun b!1243720 () Bool)

(declare-fun res!829621 () Bool)

(assert (=> b!1243720 (=> (not res!829621) (not e!705010))))

(assert (=> b!1243720 (= res!829621 (not (contains!7435 lt!562427 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!829617 () Bool)

(assert (=> start!103948 (=> (not res!829617) (not e!705011))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!103948 (= res!829617 (and (bvslt (size!39119 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39119 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39119 a!3892))))))

(assert (=> start!103948 e!705011))

(declare-fun array_inv!29358 (array!79986) Bool)

(assert (=> start!103948 (array_inv!29358 a!3892)))

(assert (=> start!103948 true))

(declare-fun b!1243721 () Bool)

(declare-fun res!829623 () Bool)

(assert (=> b!1243721 (=> (not res!829623) (not e!705010))))

(assert (=> b!1243721 (= res!829623 (not (contains!7435 lt!562427 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243722 () Bool)

(declare-fun res!829627 () Bool)

(assert (=> b!1243722 (=> (not res!829627) (not e!705011))))

(assert (=> b!1243722 (= res!829627 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27560))))

(declare-fun b!1243723 () Bool)

(declare-fun res!829625 () Bool)

(assert (=> b!1243723 (=> (not res!829625) (not e!705011))))

(assert (=> b!1243723 (= res!829625 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39119 a!3892)) (not (= newFrom!287 (size!39119 a!3892)))))))

(declare-fun b!1243724 () Bool)

(declare-fun res!829619 () Bool)

(assert (=> b!1243724 (=> (not res!829619) (not e!705010))))

(assert (=> b!1243724 (= res!829619 (not (contains!7435 Nil!27560 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243725 () Bool)

(declare-fun res!829618 () Bool)

(assert (=> b!1243725 (=> (not res!829618) (not e!705010))))

(declare-fun noDuplicate!2025 (List!27563) Bool)

(assert (=> b!1243725 (= res!829618 (noDuplicate!2025 lt!562427))))

(assert (= (and start!103948 res!829617) b!1243722))

(assert (= (and b!1243722 res!829627) b!1243723))

(assert (= (and b!1243723 res!829625) b!1243717))

(assert (= (and b!1243717 res!829624) b!1243719))

(assert (= (and b!1243719 res!829626) b!1243725))

(assert (= (and b!1243725 res!829618) b!1243720))

(assert (= (and b!1243720 res!829621) b!1243721))

(assert (= (and b!1243721 res!829623) b!1243718))

(assert (= (and b!1243718 res!829620) b!1243724))

(assert (= (and b!1243724 res!829619) b!1243715))

(assert (= (and b!1243715 res!829622) b!1243716))

(declare-fun m!1146201 () Bool)

(assert (=> b!1243721 m!1146201))

(declare-fun m!1146203 () Bool)

(assert (=> b!1243722 m!1146203))

(declare-fun m!1146205 () Bool)

(assert (=> b!1243716 m!1146205))

(declare-fun m!1146207 () Bool)

(assert (=> b!1243716 m!1146207))

(declare-fun m!1146209 () Bool)

(assert (=> start!103948 m!1146209))

(declare-fun m!1146211 () Bool)

(assert (=> b!1243718 m!1146211))

(declare-fun m!1146213 () Bool)

(assert (=> b!1243715 m!1146213))

(declare-fun m!1146215 () Bool)

(assert (=> b!1243720 m!1146215))

(declare-fun m!1146217 () Bool)

(assert (=> b!1243725 m!1146217))

(declare-fun m!1146219 () Bool)

(assert (=> b!1243719 m!1146219))

(declare-fun m!1146221 () Bool)

(assert (=> b!1243724 m!1146221))

(assert (=> b!1243717 m!1146219))

(assert (=> b!1243717 m!1146219))

(declare-fun m!1146223 () Bool)

(assert (=> b!1243717 m!1146223))

(push 1)

