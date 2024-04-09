; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93274 () Bool)

(assert start!93274)

(declare-fun b!1057077 () Bool)

(declare-fun e!601145 () Bool)

(declare-fun e!601142 () Bool)

(assert (=> b!1057077 (= e!601145 e!601142)))

(declare-fun res!705889 () Bool)

(assert (=> b!1057077 (=> (not res!705889) (not e!601142))))

(declare-datatypes ((array!66660 0))(
  ( (array!66661 (arr!32049 (Array (_ BitVec 32) (_ BitVec 64))) (size!32586 (_ BitVec 32))) )
))
(declare-fun lt!466285 () array!66660)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66660 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057077 (= res!705889 (arrayContainsKey!0 lt!466285 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66660)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057077 (= lt!466285 (array!66661 (store (arr!32049 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32586 a!3488)))))

(declare-fun b!1057078 () Bool)

(declare-fun res!705893 () Bool)

(assert (=> b!1057078 (=> (not res!705893) (not e!601145))))

(assert (=> b!1057078 (= res!705893 (= (select (arr!32049 a!3488) i!1381) k!2747))))

(declare-fun b!1057079 () Bool)

(declare-fun res!705892 () Bool)

(assert (=> b!1057079 (=> (not res!705892) (not e!601145))))

(declare-datatypes ((List!22492 0))(
  ( (Nil!22489) (Cons!22488 (h!23697 (_ BitVec 64)) (t!31806 List!22492)) )
))
(declare-fun arrayNoDuplicates!0 (array!66660 (_ BitVec 32) List!22492) Bool)

(assert (=> b!1057079 (= res!705892 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22489))))

(declare-fun b!1057080 () Bool)

(declare-fun e!601143 () Bool)

(declare-fun e!601147 () Bool)

(assert (=> b!1057080 (= e!601143 (not e!601147))))

(declare-fun res!705888 () Bool)

(assert (=> b!1057080 (=> res!705888 e!601147)))

(declare-fun lt!466284 () (_ BitVec 32))

(assert (=> b!1057080 (= res!705888 (or (bvsgt lt!466284 i!1381) (bvsle i!1381 lt!466284)))))

(declare-fun e!601146 () Bool)

(assert (=> b!1057080 e!601146))

(declare-fun res!705890 () Bool)

(assert (=> b!1057080 (=> (not res!705890) (not e!601146))))

(assert (=> b!1057080 (= res!705890 (= (select (store (arr!32049 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466284) k!2747))))

(declare-fun b!1057081 () Bool)

(declare-fun e!601148 () Bool)

(assert (=> b!1057081 (= e!601146 e!601148)))

(declare-fun res!705894 () Bool)

(assert (=> b!1057081 (=> res!705894 e!601148)))

(assert (=> b!1057081 (= res!705894 (or (bvsgt lt!466284 i!1381) (bvsle i!1381 lt!466284)))))

(declare-fun b!1057082 () Bool)

(assert (=> b!1057082 (= e!601142 e!601143)))

(declare-fun res!705886 () Bool)

(assert (=> b!1057082 (=> (not res!705886) (not e!601143))))

(assert (=> b!1057082 (= res!705886 (not (= lt!466284 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66660 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057082 (= lt!466284 (arrayScanForKey!0 lt!466285 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!705887 () Bool)

(assert (=> start!93274 (=> (not res!705887) (not e!601145))))

(assert (=> start!93274 (= res!705887 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32586 a!3488)) (bvslt (size!32586 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93274 e!601145))

(assert (=> start!93274 true))

(declare-fun array_inv!24671 (array!66660) Bool)

(assert (=> start!93274 (array_inv!24671 a!3488)))

(declare-fun b!1057083 () Bool)

(declare-fun res!705891 () Bool)

(assert (=> b!1057083 (=> (not res!705891) (not e!601145))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057083 (= res!705891 (validKeyInArray!0 k!2747))))

(declare-fun b!1057084 () Bool)

(assert (=> b!1057084 (= e!601147 true)))

(assert (=> b!1057084 (arrayNoDuplicates!0 a!3488 lt!466284 Nil!22489)))

(declare-datatypes ((Unit!34629 0))(
  ( (Unit!34630) )
))
(declare-fun lt!466283 () Unit!34629)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66660 (_ BitVec 32) (_ BitVec 32)) Unit!34629)

(assert (=> b!1057084 (= lt!466283 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466284))))

(declare-fun b!1057085 () Bool)

(assert (=> b!1057085 (= e!601148 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(assert (= (and start!93274 res!705887) b!1057079))

(assert (= (and b!1057079 res!705892) b!1057083))

(assert (= (and b!1057083 res!705891) b!1057078))

(assert (= (and b!1057078 res!705893) b!1057077))

(assert (= (and b!1057077 res!705889) b!1057082))

(assert (= (and b!1057082 res!705886) b!1057080))

(assert (= (and b!1057080 res!705890) b!1057081))

(assert (= (and b!1057081 (not res!705894)) b!1057085))

(assert (= (and b!1057080 (not res!705888)) b!1057084))

(declare-fun m!976931 () Bool)

(assert (=> b!1057084 m!976931))

(declare-fun m!976933 () Bool)

(assert (=> b!1057084 m!976933))

(declare-fun m!976935 () Bool)

(assert (=> b!1057079 m!976935))

(declare-fun m!976937 () Bool)

(assert (=> b!1057080 m!976937))

(declare-fun m!976939 () Bool)

(assert (=> b!1057080 m!976939))

(declare-fun m!976941 () Bool)

(assert (=> b!1057083 m!976941))

(declare-fun m!976943 () Bool)

(assert (=> b!1057077 m!976943))

(assert (=> b!1057077 m!976937))

(declare-fun m!976945 () Bool)

(assert (=> b!1057082 m!976945))

(declare-fun m!976947 () Bool)

(assert (=> b!1057085 m!976947))

(declare-fun m!976949 () Bool)

(assert (=> start!93274 m!976949))

(declare-fun m!976951 () Bool)

(assert (=> b!1057078 m!976951))

(push 1)

(assert (not start!93274))

