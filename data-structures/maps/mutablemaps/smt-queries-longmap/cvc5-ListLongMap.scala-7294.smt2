; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93258 () Bool)

(assert start!93258)

(declare-fun b!1056861 () Bool)

(declare-fun e!600974 () Bool)

(declare-fun e!600978 () Bool)

(assert (=> b!1056861 (= e!600974 e!600978)))

(declare-fun res!705677 () Bool)

(assert (=> b!1056861 (=> (not res!705677) (not e!600978))))

(declare-fun lt!466213 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056861 (= res!705677 (not (= lt!466213 i!1381)))))

(declare-datatypes ((array!66644 0))(
  ( (array!66645 (arr!32041 (Array (_ BitVec 32) (_ BitVec 64))) (size!32578 (_ BitVec 32))) )
))
(declare-fun lt!466212 () array!66644)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66644 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056861 (= lt!466213 (arrayScanForKey!0 lt!466212 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!705670 () Bool)

(declare-fun e!600980 () Bool)

(assert (=> start!93258 (=> (not res!705670) (not e!600980))))

(declare-fun a!3488 () array!66644)

(assert (=> start!93258 (= res!705670 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32578 a!3488)) (bvslt (size!32578 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93258 e!600980))

(assert (=> start!93258 true))

(declare-fun array_inv!24663 (array!66644) Bool)

(assert (=> start!93258 (array_inv!24663 a!3488)))

(declare-fun b!1056862 () Bool)

(declare-fun res!705673 () Bool)

(assert (=> b!1056862 (=> (not res!705673) (not e!600980))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056862 (= res!705673 (validKeyInArray!0 k!2747))))

(declare-fun b!1056863 () Bool)

(declare-fun e!600976 () Bool)

(assert (=> b!1056863 (= e!600978 (not e!600976))))

(declare-fun res!705678 () Bool)

(assert (=> b!1056863 (=> res!705678 e!600976)))

(assert (=> b!1056863 (= res!705678 (or (bvsgt lt!466213 i!1381) (bvsle i!1381 lt!466213)))))

(declare-fun e!600977 () Bool)

(assert (=> b!1056863 e!600977))

(declare-fun res!705671 () Bool)

(assert (=> b!1056863 (=> (not res!705671) (not e!600977))))

(assert (=> b!1056863 (= res!705671 (= (select (store (arr!32041 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466213) k!2747))))

(declare-fun b!1056864 () Bool)

(assert (=> b!1056864 (= e!600980 e!600974)))

(declare-fun res!705675 () Bool)

(assert (=> b!1056864 (=> (not res!705675) (not e!600974))))

(declare-fun arrayContainsKey!0 (array!66644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056864 (= res!705675 (arrayContainsKey!0 lt!466212 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056864 (= lt!466212 (array!66645 (store (arr!32041 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32578 a!3488)))))

(declare-fun b!1056865 () Bool)

(declare-fun e!600975 () Bool)

(assert (=> b!1056865 (= e!600977 e!600975)))

(declare-fun res!705672 () Bool)

(assert (=> b!1056865 (=> res!705672 e!600975)))

(assert (=> b!1056865 (= res!705672 (or (bvsgt lt!466213 i!1381) (bvsle i!1381 lt!466213)))))

(declare-fun b!1056866 () Bool)

(assert (=> b!1056866 (= e!600975 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056867 () Bool)

(declare-fun res!705676 () Bool)

(assert (=> b!1056867 (=> (not res!705676) (not e!600980))))

(assert (=> b!1056867 (= res!705676 (= (select (arr!32041 a!3488) i!1381) k!2747))))

(declare-fun b!1056868 () Bool)

(declare-fun res!705674 () Bool)

(assert (=> b!1056868 (=> (not res!705674) (not e!600980))))

(declare-datatypes ((List!22484 0))(
  ( (Nil!22481) (Cons!22480 (h!23689 (_ BitVec 64)) (t!31798 List!22484)) )
))
(declare-fun arrayNoDuplicates!0 (array!66644 (_ BitVec 32) List!22484) Bool)

(assert (=> b!1056868 (= res!705674 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22481))))

(declare-fun b!1056869 () Bool)

(assert (=> b!1056869 (= e!600976 true)))

(assert (=> b!1056869 (arrayNoDuplicates!0 a!3488 lt!466213 Nil!22481)))

(declare-datatypes ((Unit!34613 0))(
  ( (Unit!34614) )
))
(declare-fun lt!466211 () Unit!34613)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66644 (_ BitVec 32) (_ BitVec 32)) Unit!34613)

(assert (=> b!1056869 (= lt!466211 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466213))))

(assert (= (and start!93258 res!705670) b!1056868))

(assert (= (and b!1056868 res!705674) b!1056862))

(assert (= (and b!1056862 res!705673) b!1056867))

(assert (= (and b!1056867 res!705676) b!1056864))

(assert (= (and b!1056864 res!705675) b!1056861))

(assert (= (and b!1056861 res!705677) b!1056863))

(assert (= (and b!1056863 res!705671) b!1056865))

(assert (= (and b!1056865 (not res!705672)) b!1056866))

(assert (= (and b!1056863 (not res!705678)) b!1056869))

(declare-fun m!976755 () Bool)

(assert (=> b!1056864 m!976755))

(declare-fun m!976757 () Bool)

(assert (=> b!1056864 m!976757))

(declare-fun m!976759 () Bool)

(assert (=> b!1056868 m!976759))

(declare-fun m!976761 () Bool)

(assert (=> b!1056861 m!976761))

(declare-fun m!976763 () Bool)

(assert (=> b!1056862 m!976763))

(declare-fun m!976765 () Bool)

(assert (=> b!1056866 m!976765))

(assert (=> b!1056863 m!976757))

(declare-fun m!976767 () Bool)

(assert (=> b!1056863 m!976767))

(declare-fun m!976769 () Bool)

(assert (=> b!1056869 m!976769))

(declare-fun m!976771 () Bool)

(assert (=> b!1056869 m!976771))

(declare-fun m!976773 () Bool)

(assert (=> start!93258 m!976773))

(declare-fun m!976775 () Bool)

(assert (=> b!1056867 m!976775))

(push 1)

