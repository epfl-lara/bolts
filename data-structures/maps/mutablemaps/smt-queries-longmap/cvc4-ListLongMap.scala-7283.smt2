; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93100 () Bool)

(assert start!93100)

(declare-fun b!1055811 () Bool)

(declare-fun e!600172 () Bool)

(assert (=> b!1055811 (= e!600172 true)))

(assert (=> b!1055811 false))

(declare-datatypes ((array!66573 0))(
  ( (array!66574 (arr!32010 (Array (_ BitVec 32) (_ BitVec 64))) (size!32547 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66573)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((Unit!34587 0))(
  ( (Unit!34588) )
))
(declare-fun lt!465933 () Unit!34587)

(declare-datatypes ((List!22453 0))(
  ( (Nil!22450) (Cons!22449 (h!23658 (_ BitVec 64)) (t!31767 List!22453)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66573 (_ BitVec 64) (_ BitVec 32) List!22453) Unit!34587)

(assert (=> b!1055811 (= lt!465933 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 i!1381 Nil!22450))))

(declare-fun arrayContainsKey!0 (array!66573 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055811 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465931 () Unit!34587)

(declare-fun lt!465934 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66573 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34587)

(assert (=> b!1055811 (= lt!465931 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465934 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66573 (_ BitVec 32) List!22453) Bool)

(assert (=> b!1055811 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22450)))

(declare-fun lt!465932 () Unit!34587)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66573 (_ BitVec 32) (_ BitVec 32)) Unit!34587)

(assert (=> b!1055811 (= lt!465932 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1055812 () Bool)

(declare-fun e!600173 () Bool)

(assert (=> b!1055812 (= e!600173 (arrayContainsKey!0 a!3488 k!2747 lt!465934))))

(declare-fun b!1055813 () Bool)

(declare-fun e!600167 () Bool)

(declare-fun e!600171 () Bool)

(assert (=> b!1055813 (= e!600167 e!600171)))

(declare-fun res!704739 () Bool)

(assert (=> b!1055813 (=> (not res!704739) (not e!600171))))

(declare-fun lt!465930 () array!66573)

(assert (=> b!1055813 (= res!704739 (arrayContainsKey!0 lt!465930 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055813 (= lt!465930 (array!66574 (store (arr!32010 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32547 a!3488)))))

(declare-fun b!1055814 () Bool)

(declare-fun e!600168 () Bool)

(assert (=> b!1055814 (= e!600168 (not e!600172))))

(declare-fun res!704735 () Bool)

(assert (=> b!1055814 (=> res!704735 e!600172)))

(assert (=> b!1055814 (= res!704735 (bvsle lt!465934 i!1381))))

(declare-fun e!600170 () Bool)

(assert (=> b!1055814 e!600170))

(declare-fun res!704734 () Bool)

(assert (=> b!1055814 (=> (not res!704734) (not e!600170))))

(assert (=> b!1055814 (= res!704734 (= (select (store (arr!32010 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465934) k!2747))))

(declare-fun b!1055815 () Bool)

(assert (=> b!1055815 (= e!600170 e!600173)))

(declare-fun res!704741 () Bool)

(assert (=> b!1055815 (=> res!704741 e!600173)))

(assert (=> b!1055815 (= res!704741 (bvsle lt!465934 i!1381))))

(declare-fun b!1055816 () Bool)

(declare-fun res!704742 () Bool)

(assert (=> b!1055816 (=> (not res!704742) (not e!600167))))

(assert (=> b!1055816 (= res!704742 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22450))))

(declare-fun res!704740 () Bool)

(assert (=> start!93100 (=> (not res!704740) (not e!600167))))

(assert (=> start!93100 (= res!704740 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32547 a!3488)) (bvslt (size!32547 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93100 e!600167))

(assert (=> start!93100 true))

(declare-fun array_inv!24632 (array!66573) Bool)

(assert (=> start!93100 (array_inv!24632 a!3488)))

(declare-fun b!1055817 () Bool)

(declare-fun res!704737 () Bool)

(assert (=> b!1055817 (=> (not res!704737) (not e!600167))))

(assert (=> b!1055817 (= res!704737 (= (select (arr!32010 a!3488) i!1381) k!2747))))

(declare-fun b!1055818 () Bool)

(assert (=> b!1055818 (= e!600171 e!600168)))

(declare-fun res!704736 () Bool)

(assert (=> b!1055818 (=> (not res!704736) (not e!600168))))

(assert (=> b!1055818 (= res!704736 (not (= lt!465934 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66573 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055818 (= lt!465934 (arrayScanForKey!0 lt!465930 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055819 () Bool)

(declare-fun res!704738 () Bool)

(assert (=> b!1055819 (=> (not res!704738) (not e!600167))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055819 (= res!704738 (validKeyInArray!0 k!2747))))

(assert (= (and start!93100 res!704740) b!1055816))

(assert (= (and b!1055816 res!704742) b!1055819))

(assert (= (and b!1055819 res!704738) b!1055817))

(assert (= (and b!1055817 res!704737) b!1055813))

(assert (= (and b!1055813 res!704739) b!1055818))

(assert (= (and b!1055818 res!704736) b!1055814))

(assert (= (and b!1055814 res!704734) b!1055815))

(assert (= (and b!1055815 (not res!704741)) b!1055812))

(assert (= (and b!1055814 (not res!704735)) b!1055811))

(declare-fun m!975929 () Bool)

(assert (=> b!1055817 m!975929))

(declare-fun m!975931 () Bool)

(assert (=> b!1055816 m!975931))

(declare-fun m!975933 () Bool)

(assert (=> b!1055818 m!975933))

(declare-fun m!975935 () Bool)

(assert (=> b!1055819 m!975935))

(declare-fun m!975937 () Bool)

(assert (=> b!1055812 m!975937))

(declare-fun m!975939 () Bool)

(assert (=> b!1055811 m!975939))

(declare-fun m!975941 () Bool)

(assert (=> b!1055811 m!975941))

(declare-fun m!975943 () Bool)

(assert (=> b!1055811 m!975943))

(declare-fun m!975945 () Bool)

(assert (=> b!1055811 m!975945))

(declare-fun m!975947 () Bool)

(assert (=> b!1055811 m!975947))

(declare-fun m!975949 () Bool)

(assert (=> b!1055814 m!975949))

(declare-fun m!975951 () Bool)

(assert (=> b!1055814 m!975951))

(declare-fun m!975953 () Bool)

(assert (=> start!93100 m!975953))

(declare-fun m!975955 () Bool)

(assert (=> b!1055813 m!975955))

(assert (=> b!1055813 m!975949))

(push 1)

(assert (not b!1055816))

