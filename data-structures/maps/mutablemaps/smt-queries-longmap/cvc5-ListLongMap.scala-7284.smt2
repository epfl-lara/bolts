; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93102 () Bool)

(assert start!93102)

(declare-fun b!1055838 () Bool)

(declare-fun e!600190 () Bool)

(declare-fun e!600194 () Bool)

(assert (=> b!1055838 (= e!600190 (not e!600194))))

(declare-fun res!704767 () Bool)

(assert (=> b!1055838 (=> res!704767 e!600194)))

(declare-fun lt!465948 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055838 (= res!704767 (bvsle lt!465948 i!1381))))

(declare-fun e!600191 () Bool)

(assert (=> b!1055838 e!600191))

(declare-fun res!704763 () Bool)

(assert (=> b!1055838 (=> (not res!704763) (not e!600191))))

(declare-datatypes ((array!66575 0))(
  ( (array!66576 (arr!32011 (Array (_ BitVec 32) (_ BitVec 64))) (size!32548 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66575)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1055838 (= res!704763 (= (select (store (arr!32011 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465948) k!2747))))

(declare-fun b!1055839 () Bool)

(declare-fun res!704769 () Bool)

(declare-fun e!600188 () Bool)

(assert (=> b!1055839 (=> (not res!704769) (not e!600188))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055839 (= res!704769 (validKeyInArray!0 k!2747))))

(declare-fun b!1055840 () Bool)

(declare-fun e!600193 () Bool)

(assert (=> b!1055840 (= e!600188 e!600193)))

(declare-fun res!704764 () Bool)

(assert (=> b!1055840 (=> (not res!704764) (not e!600193))))

(declare-fun lt!465949 () array!66575)

(declare-fun arrayContainsKey!0 (array!66575 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055840 (= res!704764 (arrayContainsKey!0 lt!465949 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055840 (= lt!465949 (array!66576 (store (arr!32011 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32548 a!3488)))))

(declare-fun b!1055841 () Bool)

(assert (=> b!1055841 (= e!600194 true)))

(assert (=> b!1055841 false))

(declare-datatypes ((Unit!34589 0))(
  ( (Unit!34590) )
))
(declare-fun lt!465947 () Unit!34589)

(declare-datatypes ((List!22454 0))(
  ( (Nil!22451) (Cons!22450 (h!23659 (_ BitVec 64)) (t!31768 List!22454)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66575 (_ BitVec 64) (_ BitVec 32) List!22454) Unit!34589)

(assert (=> b!1055841 (= lt!465947 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 i!1381 Nil!22451))))

(assert (=> b!1055841 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465945 () Unit!34589)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66575 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34589)

(assert (=> b!1055841 (= lt!465945 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465948 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66575 (_ BitVec 32) List!22454) Bool)

(assert (=> b!1055841 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22451)))

(declare-fun lt!465946 () Unit!34589)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66575 (_ BitVec 32) (_ BitVec 32)) Unit!34589)

(assert (=> b!1055841 (= lt!465946 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1055842 () Bool)

(declare-fun res!704765 () Bool)

(assert (=> b!1055842 (=> (not res!704765) (not e!600188))))

(assert (=> b!1055842 (= res!704765 (= (select (arr!32011 a!3488) i!1381) k!2747))))

(declare-fun res!704761 () Bool)

(assert (=> start!93102 (=> (not res!704761) (not e!600188))))

(assert (=> start!93102 (= res!704761 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32548 a!3488)) (bvslt (size!32548 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93102 e!600188))

(assert (=> start!93102 true))

(declare-fun array_inv!24633 (array!66575) Bool)

(assert (=> start!93102 (array_inv!24633 a!3488)))

(declare-fun b!1055843 () Bool)

(declare-fun res!704762 () Bool)

(assert (=> b!1055843 (=> (not res!704762) (not e!600188))))

(assert (=> b!1055843 (= res!704762 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22451))))

(declare-fun e!600192 () Bool)

(declare-fun b!1055844 () Bool)

(assert (=> b!1055844 (= e!600192 (arrayContainsKey!0 a!3488 k!2747 lt!465948))))

(declare-fun b!1055845 () Bool)

(assert (=> b!1055845 (= e!600193 e!600190)))

(declare-fun res!704766 () Bool)

(assert (=> b!1055845 (=> (not res!704766) (not e!600190))))

(assert (=> b!1055845 (= res!704766 (not (= lt!465948 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66575 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055845 (= lt!465948 (arrayScanForKey!0 lt!465949 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055846 () Bool)

(assert (=> b!1055846 (= e!600191 e!600192)))

(declare-fun res!704768 () Bool)

(assert (=> b!1055846 (=> res!704768 e!600192)))

(assert (=> b!1055846 (= res!704768 (bvsle lt!465948 i!1381))))

(assert (= (and start!93102 res!704761) b!1055843))

(assert (= (and b!1055843 res!704762) b!1055839))

(assert (= (and b!1055839 res!704769) b!1055842))

(assert (= (and b!1055842 res!704765) b!1055840))

(assert (= (and b!1055840 res!704764) b!1055845))

(assert (= (and b!1055845 res!704766) b!1055838))

(assert (= (and b!1055838 res!704763) b!1055846))

(assert (= (and b!1055846 (not res!704768)) b!1055844))

(assert (= (and b!1055838 (not res!704767)) b!1055841))

(declare-fun m!975957 () Bool)

(assert (=> b!1055840 m!975957))

(declare-fun m!975959 () Bool)

(assert (=> b!1055840 m!975959))

(declare-fun m!975961 () Bool)

(assert (=> b!1055843 m!975961))

(assert (=> b!1055838 m!975959))

(declare-fun m!975963 () Bool)

(assert (=> b!1055838 m!975963))

(declare-fun m!975965 () Bool)

(assert (=> b!1055839 m!975965))

(declare-fun m!975967 () Bool)

(assert (=> start!93102 m!975967))

(declare-fun m!975969 () Bool)

(assert (=> b!1055841 m!975969))

(declare-fun m!975971 () Bool)

(assert (=> b!1055841 m!975971))

(declare-fun m!975973 () Bool)

(assert (=> b!1055841 m!975973))

(declare-fun m!975975 () Bool)

(assert (=> b!1055841 m!975975))

(declare-fun m!975977 () Bool)

(assert (=> b!1055841 m!975977))

(declare-fun m!975979 () Bool)

(assert (=> b!1055844 m!975979))

(declare-fun m!975981 () Bool)

(assert (=> b!1055845 m!975981))

(declare-fun m!975983 () Bool)

(assert (=> b!1055842 m!975983))

(push 1)

