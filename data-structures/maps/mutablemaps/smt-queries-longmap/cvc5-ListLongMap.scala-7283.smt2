; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93096 () Bool)

(assert start!93096)

(declare-fun e!600130 () Bool)

(declare-datatypes ((array!66569 0))(
  ( (array!66570 (arr!32008 (Array (_ BitVec 32) (_ BitVec 64))) (size!32545 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66569)

(declare-fun lt!465904 () (_ BitVec 32))

(declare-fun b!1055757 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055757 (= e!600130 (arrayContainsKey!0 a!3488 k!2747 lt!465904))))

(declare-fun b!1055758 () Bool)

(declare-fun res!704685 () Bool)

(declare-fun e!600126 () Bool)

(assert (=> b!1055758 (=> (not res!704685) (not e!600126))))

(declare-datatypes ((List!22451 0))(
  ( (Nil!22448) (Cons!22447 (h!23656 (_ BitVec 64)) (t!31765 List!22451)) )
))
(declare-fun arrayNoDuplicates!0 (array!66569 (_ BitVec 32) List!22451) Bool)

(assert (=> b!1055758 (= res!704685 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22448))))

(declare-fun b!1055759 () Bool)

(declare-fun e!600131 () Bool)

(declare-fun e!600128 () Bool)

(assert (=> b!1055759 (= e!600131 e!600128)))

(declare-fun res!704680 () Bool)

(assert (=> b!1055759 (=> (not res!704680) (not e!600128))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055759 (= res!704680 (not (= lt!465904 i!1381)))))

(declare-fun lt!465902 () array!66569)

(declare-fun arrayScanForKey!0 (array!66569 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055759 (= lt!465904 (arrayScanForKey!0 lt!465902 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055760 () Bool)

(declare-fun res!704682 () Bool)

(assert (=> b!1055760 (=> (not res!704682) (not e!600126))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055760 (= res!704682 (validKeyInArray!0 k!2747))))

(declare-fun b!1055761 () Bool)

(assert (=> b!1055761 (= e!600126 e!600131)))

(declare-fun res!704683 () Bool)

(assert (=> b!1055761 (=> (not res!704683) (not e!600131))))

(assert (=> b!1055761 (= res!704683 (arrayContainsKey!0 lt!465902 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055761 (= lt!465902 (array!66570 (store (arr!32008 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32545 a!3488)))))

(declare-fun b!1055762 () Bool)

(declare-fun e!600127 () Bool)

(assert (=> b!1055762 (= e!600128 (not e!600127))))

(declare-fun res!704684 () Bool)

(assert (=> b!1055762 (=> res!704684 e!600127)))

(assert (=> b!1055762 (= res!704684 (bvsle lt!465904 i!1381))))

(declare-fun e!600125 () Bool)

(assert (=> b!1055762 e!600125))

(declare-fun res!704681 () Bool)

(assert (=> b!1055762 (=> (not res!704681) (not e!600125))))

(assert (=> b!1055762 (= res!704681 (= (select (store (arr!32008 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465904) k!2747))))

(declare-fun b!1055764 () Bool)

(assert (=> b!1055764 (= e!600127 true)))

(assert (=> b!1055764 false))

(declare-datatypes ((Unit!34583 0))(
  ( (Unit!34584) )
))
(declare-fun lt!465903 () Unit!34583)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66569 (_ BitVec 64) (_ BitVec 32) List!22451) Unit!34583)

(assert (=> b!1055764 (= lt!465903 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 i!1381 Nil!22448))))

(assert (=> b!1055764 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465900 () Unit!34583)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66569 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34583)

(assert (=> b!1055764 (= lt!465900 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465904 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1055764 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22448)))

(declare-fun lt!465901 () Unit!34583)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66569 (_ BitVec 32) (_ BitVec 32)) Unit!34583)

(assert (=> b!1055764 (= lt!465901 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1055765 () Bool)

(declare-fun res!704687 () Bool)

(assert (=> b!1055765 (=> (not res!704687) (not e!600126))))

(assert (=> b!1055765 (= res!704687 (= (select (arr!32008 a!3488) i!1381) k!2747))))

(declare-fun res!704688 () Bool)

(assert (=> start!93096 (=> (not res!704688) (not e!600126))))

(assert (=> start!93096 (= res!704688 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32545 a!3488)) (bvslt (size!32545 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93096 e!600126))

(assert (=> start!93096 true))

(declare-fun array_inv!24630 (array!66569) Bool)

(assert (=> start!93096 (array_inv!24630 a!3488)))

(declare-fun b!1055763 () Bool)

(assert (=> b!1055763 (= e!600125 e!600130)))

(declare-fun res!704686 () Bool)

(assert (=> b!1055763 (=> res!704686 e!600130)))

(assert (=> b!1055763 (= res!704686 (bvsle lt!465904 i!1381))))

(assert (= (and start!93096 res!704688) b!1055758))

(assert (= (and b!1055758 res!704685) b!1055760))

(assert (= (and b!1055760 res!704682) b!1055765))

(assert (= (and b!1055765 res!704687) b!1055761))

(assert (= (and b!1055761 res!704683) b!1055759))

(assert (= (and b!1055759 res!704680) b!1055762))

(assert (= (and b!1055762 res!704681) b!1055763))

(assert (= (and b!1055763 (not res!704686)) b!1055757))

(assert (= (and b!1055762 (not res!704684)) b!1055764))

(declare-fun m!975873 () Bool)

(assert (=> b!1055760 m!975873))

(declare-fun m!975875 () Bool)

(assert (=> b!1055764 m!975875))

(declare-fun m!975877 () Bool)

(assert (=> b!1055764 m!975877))

(declare-fun m!975879 () Bool)

(assert (=> b!1055764 m!975879))

(declare-fun m!975881 () Bool)

(assert (=> b!1055764 m!975881))

(declare-fun m!975883 () Bool)

(assert (=> b!1055764 m!975883))

(declare-fun m!975885 () Bool)

(assert (=> b!1055757 m!975885))

(declare-fun m!975887 () Bool)

(assert (=> b!1055765 m!975887))

(declare-fun m!975889 () Bool)

(assert (=> b!1055761 m!975889))

(declare-fun m!975891 () Bool)

(assert (=> b!1055761 m!975891))

(declare-fun m!975893 () Bool)

(assert (=> start!93096 m!975893))

(declare-fun m!975895 () Bool)

(assert (=> b!1055758 m!975895))

(assert (=> b!1055762 m!975891))

(declare-fun m!975897 () Bool)

(assert (=> b!1055762 m!975897))

(declare-fun m!975899 () Bool)

(assert (=> b!1055759 m!975899))

(push 1)

