; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92398 () Bool)

(assert start!92398)

(declare-fun b!1049988 () Bool)

(declare-fun e!595827 () Bool)

(declare-fun e!595830 () Bool)

(assert (=> b!1049988 (= e!595827 e!595830)))

(declare-fun res!699226 () Bool)

(assert (=> b!1049988 (=> res!699226 e!595830)))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66147 0))(
  ( (array!66148 (arr!31809 (Array (_ BitVec 32) (_ BitVec 64))) (size!32346 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66147)

(assert (=> b!1049988 (= res!699226 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32346 a!3488)))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66147 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049988 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!463744 () (_ BitVec 32))

(declare-datatypes ((Unit!34347 0))(
  ( (Unit!34348) )
))
(declare-fun lt!463741 () Unit!34347)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66147 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34347)

(assert (=> b!1049988 (= lt!463741 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463744 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22252 0))(
  ( (Nil!22249) (Cons!22248 (h!23457 (_ BitVec 64)) (t!31566 List!22252)) )
))
(declare-fun arrayNoDuplicates!0 (array!66147 (_ BitVec 32) List!22252) Bool)

(assert (=> b!1049988 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22249)))

(declare-fun lt!463742 () Unit!34347)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66147 (_ BitVec 32) (_ BitVec 32)) Unit!34347)

(assert (=> b!1049988 (= lt!463742 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049989 () Bool)

(assert (=> b!1049989 (= e!595830 true)))

(declare-fun lt!463740 () Bool)

(declare-fun contains!6144 (List!22252 (_ BitVec 64)) Bool)

(assert (=> b!1049989 (= lt!463740 (contains!6144 Nil!22249 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049990 () Bool)

(declare-fun e!595831 () Bool)

(declare-fun e!595826 () Bool)

(assert (=> b!1049990 (= e!595831 e!595826)))

(declare-fun res!699228 () Bool)

(assert (=> b!1049990 (=> res!699228 e!595826)))

(assert (=> b!1049990 (= res!699228 (bvsle lt!463744 i!1381))))

(declare-fun b!1049991 () Bool)

(declare-fun e!595832 () Bool)

(declare-fun e!595825 () Bool)

(assert (=> b!1049991 (= e!595832 e!595825)))

(declare-fun res!699234 () Bool)

(assert (=> b!1049991 (=> (not res!699234) (not e!595825))))

(assert (=> b!1049991 (= res!699234 (not (= lt!463744 i!1381)))))

(declare-fun lt!463743 () array!66147)

(declare-fun arrayScanForKey!0 (array!66147 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049991 (= lt!463744 (arrayScanForKey!0 lt!463743 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049992 () Bool)

(declare-fun res!699231 () Bool)

(assert (=> b!1049992 (=> res!699231 e!595830)))

(assert (=> b!1049992 (= res!699231 (contains!6144 Nil!22249 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049993 () Bool)

(declare-fun res!699225 () Bool)

(declare-fun e!595829 () Bool)

(assert (=> b!1049993 (=> (not res!699225) (not e!595829))))

(assert (=> b!1049993 (= res!699225 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22249))))

(declare-fun b!1049994 () Bool)

(declare-fun res!699230 () Bool)

(assert (=> b!1049994 (=> (not res!699230) (not e!595829))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049994 (= res!699230 (validKeyInArray!0 k!2747))))

(declare-fun b!1049996 () Bool)

(declare-fun res!699233 () Bool)

(assert (=> b!1049996 (=> res!699233 e!595830)))

(declare-fun noDuplicate!1529 (List!22252) Bool)

(assert (=> b!1049996 (= res!699233 (not (noDuplicate!1529 Nil!22249)))))

(declare-fun b!1049997 () Bool)

(declare-fun res!699223 () Bool)

(assert (=> b!1049997 (=> (not res!699223) (not e!595829))))

(assert (=> b!1049997 (= res!699223 (= (select (arr!31809 a!3488) i!1381) k!2747))))

(declare-fun b!1049998 () Bool)

(assert (=> b!1049998 (= e!595829 e!595832)))

(declare-fun res!699224 () Bool)

(assert (=> b!1049998 (=> (not res!699224) (not e!595832))))

(assert (=> b!1049998 (= res!699224 (arrayContainsKey!0 lt!463743 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049998 (= lt!463743 (array!66148 (store (arr!31809 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32346 a!3488)))))

(declare-fun b!1049999 () Bool)

(assert (=> b!1049999 (= e!595826 (arrayContainsKey!0 a!3488 k!2747 lt!463744))))

(declare-fun b!1049995 () Bool)

(assert (=> b!1049995 (= e!595825 (not e!595827))))

(declare-fun res!699227 () Bool)

(assert (=> b!1049995 (=> res!699227 e!595827)))

(assert (=> b!1049995 (= res!699227 (bvsle lt!463744 i!1381))))

(assert (=> b!1049995 e!595831))

(declare-fun res!699232 () Bool)

(assert (=> b!1049995 (=> (not res!699232) (not e!595831))))

(assert (=> b!1049995 (= res!699232 (= (select (store (arr!31809 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463744) k!2747))))

(declare-fun res!699229 () Bool)

(assert (=> start!92398 (=> (not res!699229) (not e!595829))))

(assert (=> start!92398 (= res!699229 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32346 a!3488)) (bvslt (size!32346 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92398 e!595829))

(assert (=> start!92398 true))

(declare-fun array_inv!24431 (array!66147) Bool)

(assert (=> start!92398 (array_inv!24431 a!3488)))

(assert (= (and start!92398 res!699229) b!1049993))

(assert (= (and b!1049993 res!699225) b!1049994))

(assert (= (and b!1049994 res!699230) b!1049997))

(assert (= (and b!1049997 res!699223) b!1049998))

(assert (= (and b!1049998 res!699224) b!1049991))

(assert (= (and b!1049991 res!699234) b!1049995))

(assert (= (and b!1049995 res!699232) b!1049990))

(assert (= (and b!1049990 (not res!699228)) b!1049999))

(assert (= (and b!1049995 (not res!699227)) b!1049988))

(assert (= (and b!1049988 (not res!699226)) b!1049996))

(assert (= (and b!1049996 (not res!699233)) b!1049992))

(assert (= (and b!1049992 (not res!699231)) b!1049989))

(declare-fun m!970825 () Bool)

(assert (=> b!1049993 m!970825))

(declare-fun m!970827 () Bool)

(assert (=> b!1049997 m!970827))

(declare-fun m!970829 () Bool)

(assert (=> b!1049991 m!970829))

(declare-fun m!970831 () Bool)

(assert (=> b!1049988 m!970831))

(declare-fun m!970833 () Bool)

(assert (=> b!1049988 m!970833))

(declare-fun m!970835 () Bool)

(assert (=> b!1049988 m!970835))

(declare-fun m!970837 () Bool)

(assert (=> b!1049988 m!970837))

(declare-fun m!970839 () Bool)

(assert (=> b!1049994 m!970839))

(declare-fun m!970841 () Bool)

(assert (=> b!1049995 m!970841))

(declare-fun m!970843 () Bool)

(assert (=> b!1049995 m!970843))

(declare-fun m!970845 () Bool)

(assert (=> b!1049992 m!970845))

(declare-fun m!970847 () Bool)

(assert (=> b!1049989 m!970847))

(declare-fun m!970849 () Bool)

(assert (=> start!92398 m!970849))

(declare-fun m!970851 () Bool)

(assert (=> b!1049998 m!970851))

(assert (=> b!1049998 m!970841))

(declare-fun m!970853 () Bool)

(assert (=> b!1049999 m!970853))

(declare-fun m!970855 () Bool)

(assert (=> b!1049996 m!970855))

(push 1)

(assert (not b!1049994))

(assert (not b!1049998))

(assert (not b!1049988))

(assert (not b!1049991))

(assert (not b!1049993))

(assert (not b!1049992))

