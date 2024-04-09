; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93098 () Bool)

(assert start!93098)

(declare-fun b!1055784 () Bool)

(declare-fun e!600151 () Bool)

(declare-fun e!600150 () Bool)

(assert (=> b!1055784 (= e!600151 e!600150)))

(declare-fun res!704713 () Bool)

(assert (=> b!1055784 (=> res!704713 e!600150)))

(declare-fun lt!465919 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055784 (= res!704713 (bvsle lt!465919 i!1381))))

(declare-fun b!1055785 () Bool)

(declare-fun res!704707 () Bool)

(declare-fun e!600146 () Bool)

(assert (=> b!1055785 (=> (not res!704707) (not e!600146))))

(declare-datatypes ((array!66571 0))(
  ( (array!66572 (arr!32009 (Array (_ BitVec 32) (_ BitVec 64))) (size!32546 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66571)

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1055785 (= res!704707 (= (select (arr!32009 a!3488) i!1381) k0!2747))))

(declare-fun b!1055786 () Bool)

(declare-fun e!600152 () Bool)

(declare-fun e!600148 () Bool)

(assert (=> b!1055786 (= e!600152 (not e!600148))))

(declare-fun res!704708 () Bool)

(assert (=> b!1055786 (=> res!704708 e!600148)))

(assert (=> b!1055786 (= res!704708 (bvsle lt!465919 i!1381))))

(assert (=> b!1055786 e!600151))

(declare-fun res!704712 () Bool)

(assert (=> b!1055786 (=> (not res!704712) (not e!600151))))

(assert (=> b!1055786 (= res!704712 (= (select (store (arr!32009 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465919) k0!2747))))

(declare-fun b!1055787 () Bool)

(assert (=> b!1055787 (= e!600148 true)))

(assert (=> b!1055787 false))

(declare-datatypes ((Unit!34585 0))(
  ( (Unit!34586) )
))
(declare-fun lt!465915 () Unit!34585)

(declare-datatypes ((List!22452 0))(
  ( (Nil!22449) (Cons!22448 (h!23657 (_ BitVec 64)) (t!31766 List!22452)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66571 (_ BitVec 64) (_ BitVec 32) List!22452) Unit!34585)

(assert (=> b!1055787 (= lt!465915 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k0!2747 i!1381 Nil!22449))))

(declare-fun arrayContainsKey!0 (array!66571 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055787 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465917 () Unit!34585)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66571 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34585)

(assert (=> b!1055787 (= lt!465917 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!465919 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66571 (_ BitVec 32) List!22452) Bool)

(assert (=> b!1055787 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22449)))

(declare-fun lt!465918 () Unit!34585)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66571 (_ BitVec 32) (_ BitVec 32)) Unit!34585)

(assert (=> b!1055787 (= lt!465918 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1055788 () Bool)

(declare-fun e!600147 () Bool)

(assert (=> b!1055788 (= e!600147 e!600152)))

(declare-fun res!704715 () Bool)

(assert (=> b!1055788 (=> (not res!704715) (not e!600152))))

(assert (=> b!1055788 (= res!704715 (not (= lt!465919 i!1381)))))

(declare-fun lt!465916 () array!66571)

(declare-fun arrayScanForKey!0 (array!66571 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055788 (= lt!465919 (arrayScanForKey!0 lt!465916 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055789 () Bool)

(assert (=> b!1055789 (= e!600146 e!600147)))

(declare-fun res!704714 () Bool)

(assert (=> b!1055789 (=> (not res!704714) (not e!600147))))

(assert (=> b!1055789 (= res!704714 (arrayContainsKey!0 lt!465916 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055789 (= lt!465916 (array!66572 (store (arr!32009 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32546 a!3488)))))

(declare-fun b!1055791 () Bool)

(declare-fun res!704710 () Bool)

(assert (=> b!1055791 (=> (not res!704710) (not e!600146))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055791 (= res!704710 (validKeyInArray!0 k0!2747))))

(declare-fun b!1055792 () Bool)

(assert (=> b!1055792 (= e!600150 (arrayContainsKey!0 a!3488 k0!2747 lt!465919))))

(declare-fun res!704709 () Bool)

(assert (=> start!93098 (=> (not res!704709) (not e!600146))))

(assert (=> start!93098 (= res!704709 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32546 a!3488)) (bvslt (size!32546 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93098 e!600146))

(assert (=> start!93098 true))

(declare-fun array_inv!24631 (array!66571) Bool)

(assert (=> start!93098 (array_inv!24631 a!3488)))

(declare-fun b!1055790 () Bool)

(declare-fun res!704711 () Bool)

(assert (=> b!1055790 (=> (not res!704711) (not e!600146))))

(assert (=> b!1055790 (= res!704711 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22449))))

(assert (= (and start!93098 res!704709) b!1055790))

(assert (= (and b!1055790 res!704711) b!1055791))

(assert (= (and b!1055791 res!704710) b!1055785))

(assert (= (and b!1055785 res!704707) b!1055789))

(assert (= (and b!1055789 res!704714) b!1055788))

(assert (= (and b!1055788 res!704715) b!1055786))

(assert (= (and b!1055786 res!704712) b!1055784))

(assert (= (and b!1055784 (not res!704713)) b!1055792))

(assert (= (and b!1055786 (not res!704708)) b!1055787))

(declare-fun m!975901 () Bool)

(assert (=> b!1055785 m!975901))

(declare-fun m!975903 () Bool)

(assert (=> start!93098 m!975903))

(declare-fun m!975905 () Bool)

(assert (=> b!1055789 m!975905))

(declare-fun m!975907 () Bool)

(assert (=> b!1055789 m!975907))

(declare-fun m!975909 () Bool)

(assert (=> b!1055787 m!975909))

(declare-fun m!975911 () Bool)

(assert (=> b!1055787 m!975911))

(declare-fun m!975913 () Bool)

(assert (=> b!1055787 m!975913))

(declare-fun m!975915 () Bool)

(assert (=> b!1055787 m!975915))

(declare-fun m!975917 () Bool)

(assert (=> b!1055787 m!975917))

(assert (=> b!1055786 m!975907))

(declare-fun m!975919 () Bool)

(assert (=> b!1055786 m!975919))

(declare-fun m!975921 () Bool)

(assert (=> b!1055790 m!975921))

(declare-fun m!975923 () Bool)

(assert (=> b!1055791 m!975923))

(declare-fun m!975925 () Bool)

(assert (=> b!1055788 m!975925))

(declare-fun m!975927 () Bool)

(assert (=> b!1055792 m!975927))

(check-sat (not b!1055792) (not b!1055788) (not b!1055790) (not start!93098) (not b!1055789) (not b!1055787) (not b!1055791))
(check-sat)
