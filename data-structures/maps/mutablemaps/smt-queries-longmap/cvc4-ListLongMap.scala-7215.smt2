; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92392 () Bool)

(assert start!92392)

(declare-fun e!595754 () Bool)

(declare-datatypes ((array!66141 0))(
  ( (array!66142 (arr!31806 (Array (_ BitVec 32) (_ BitVec 64))) (size!32343 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66141)

(declare-fun lt!463699 () (_ BitVec 32))

(declare-fun b!1049880 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66141 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049880 (= e!595754 (arrayContainsKey!0 a!3488 k!2747 lt!463699))))

(declare-fun b!1049881 () Bool)

(declare-fun e!595755 () Bool)

(assert (=> b!1049881 (= e!595755 e!595754)))

(declare-fun res!699120 () Bool)

(assert (=> b!1049881 (=> res!699120 e!595754)))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049881 (= res!699120 (bvsle lt!463699 i!1381))))

(declare-fun res!699122 () Bool)

(declare-fun e!595760 () Bool)

(assert (=> start!92392 (=> (not res!699122) (not e!595760))))

(assert (=> start!92392 (= res!699122 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32343 a!3488)) (bvslt (size!32343 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92392 e!595760))

(assert (=> start!92392 true))

(declare-fun array_inv!24428 (array!66141) Bool)

(assert (=> start!92392 (array_inv!24428 a!3488)))

(declare-fun b!1049882 () Bool)

(declare-fun e!595759 () Bool)

(assert (=> b!1049882 (= e!595759 true)))

(declare-fun lt!463697 () Bool)

(declare-datatypes ((List!22249 0))(
  ( (Nil!22246) (Cons!22245 (h!23454 (_ BitVec 64)) (t!31563 List!22249)) )
))
(declare-fun contains!6141 (List!22249 (_ BitVec 64)) Bool)

(assert (=> b!1049882 (= lt!463697 (contains!6141 Nil!22246 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049883 () Bool)

(declare-fun res!699119 () Bool)

(assert (=> b!1049883 (=> (not res!699119) (not e!595760))))

(assert (=> b!1049883 (= res!699119 (= (select (arr!31806 a!3488) i!1381) k!2747))))

(declare-fun b!1049884 () Bool)

(declare-fun e!595758 () Bool)

(assert (=> b!1049884 (= e!595760 e!595758)))

(declare-fun res!699116 () Bool)

(assert (=> b!1049884 (=> (not res!699116) (not e!595758))))

(declare-fun lt!463695 () array!66141)

(assert (=> b!1049884 (= res!699116 (arrayContainsKey!0 lt!463695 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049884 (= lt!463695 (array!66142 (store (arr!31806 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32343 a!3488)))))

(declare-fun b!1049885 () Bool)

(declare-fun e!595756 () Bool)

(assert (=> b!1049885 (= e!595758 e!595756)))

(declare-fun res!699126 () Bool)

(assert (=> b!1049885 (=> (not res!699126) (not e!595756))))

(assert (=> b!1049885 (= res!699126 (not (= lt!463699 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66141 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049885 (= lt!463699 (arrayScanForKey!0 lt!463695 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049886 () Bool)

(declare-fun e!595757 () Bool)

(assert (=> b!1049886 (= e!595756 (not e!595757))))

(declare-fun res!699123 () Bool)

(assert (=> b!1049886 (=> res!699123 e!595757)))

(assert (=> b!1049886 (= res!699123 (bvsle lt!463699 i!1381))))

(assert (=> b!1049886 e!595755))

(declare-fun res!699121 () Bool)

(assert (=> b!1049886 (=> (not res!699121) (not e!595755))))

(assert (=> b!1049886 (= res!699121 (= (select (store (arr!31806 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463699) k!2747))))

(declare-fun b!1049887 () Bool)

(assert (=> b!1049887 (= e!595757 e!595759)))

(declare-fun res!699124 () Bool)

(assert (=> b!1049887 (=> res!699124 e!595759)))

(assert (=> b!1049887 (= res!699124 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32343 a!3488)))))

(assert (=> b!1049887 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34341 0))(
  ( (Unit!34342) )
))
(declare-fun lt!463696 () Unit!34341)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66141 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34341)

(assert (=> b!1049887 (= lt!463696 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463699 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66141 (_ BitVec 32) List!22249) Bool)

(assert (=> b!1049887 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22246)))

(declare-fun lt!463698 () Unit!34341)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66141 (_ BitVec 32) (_ BitVec 32)) Unit!34341)

(assert (=> b!1049887 (= lt!463698 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049888 () Bool)

(declare-fun res!699118 () Bool)

(assert (=> b!1049888 (=> res!699118 e!595759)))

(assert (=> b!1049888 (= res!699118 (contains!6141 Nil!22246 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049889 () Bool)

(declare-fun res!699115 () Bool)

(assert (=> b!1049889 (=> (not res!699115) (not e!595760))))

(assert (=> b!1049889 (= res!699115 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22246))))

(declare-fun b!1049890 () Bool)

(declare-fun res!699125 () Bool)

(assert (=> b!1049890 (=> res!699125 e!595759)))

(declare-fun noDuplicate!1526 (List!22249) Bool)

(assert (=> b!1049890 (= res!699125 (not (noDuplicate!1526 Nil!22246)))))

(declare-fun b!1049891 () Bool)

(declare-fun res!699117 () Bool)

(assert (=> b!1049891 (=> (not res!699117) (not e!595760))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049891 (= res!699117 (validKeyInArray!0 k!2747))))

(assert (= (and start!92392 res!699122) b!1049889))

(assert (= (and b!1049889 res!699115) b!1049891))

(assert (= (and b!1049891 res!699117) b!1049883))

(assert (= (and b!1049883 res!699119) b!1049884))

(assert (= (and b!1049884 res!699116) b!1049885))

(assert (= (and b!1049885 res!699126) b!1049886))

(assert (= (and b!1049886 res!699121) b!1049881))

(assert (= (and b!1049881 (not res!699120)) b!1049880))

(assert (= (and b!1049886 (not res!699123)) b!1049887))

(assert (= (and b!1049887 (not res!699124)) b!1049890))

(assert (= (and b!1049890 (not res!699125)) b!1049888))

(assert (= (and b!1049888 (not res!699118)) b!1049882))

(declare-fun m!970729 () Bool)

(assert (=> b!1049883 m!970729))

(declare-fun m!970731 () Bool)

(assert (=> b!1049887 m!970731))

(declare-fun m!970733 () Bool)

(assert (=> b!1049887 m!970733))

(declare-fun m!970735 () Bool)

(assert (=> b!1049887 m!970735))

(declare-fun m!970737 () Bool)

(assert (=> b!1049887 m!970737))

(declare-fun m!970739 () Bool)

(assert (=> b!1049884 m!970739))

(declare-fun m!970741 () Bool)

(assert (=> b!1049884 m!970741))

(declare-fun m!970743 () Bool)

(assert (=> b!1049889 m!970743))

(declare-fun m!970745 () Bool)

(assert (=> b!1049880 m!970745))

(assert (=> b!1049886 m!970741))

(declare-fun m!970747 () Bool)

(assert (=> b!1049886 m!970747))

(declare-fun m!970749 () Bool)

(assert (=> b!1049890 m!970749))

(declare-fun m!970751 () Bool)

(assert (=> b!1049888 m!970751))

(declare-fun m!970753 () Bool)

(assert (=> start!92392 m!970753))

(declare-fun m!970755 () Bool)

(assert (=> b!1049882 m!970755))

(declare-fun m!970757 () Bool)

(assert (=> b!1049885 m!970757))

(declare-fun m!970759 () Bool)

(assert (=> b!1049891 m!970759))

(push 1)

