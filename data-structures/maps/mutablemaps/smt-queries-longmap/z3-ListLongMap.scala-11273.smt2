; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131514 () Bool)

(assert start!131514)

(declare-fun b!1540942 () Bool)

(declare-fun e!857018 () Bool)

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1540942 (= e!857018 (not (bvsge newFrom!293 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!102344 0))(
  ( (array!102345 (arr!49376 (Array (_ BitVec 32) (_ BitVec 64))) (size!49927 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102344)

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102344 (_ BitVec 32)) Bool)

(assert (=> b!1540942 (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))

(declare-fun from!3298 () (_ BitVec 32))

(declare-datatypes ((Unit!51412 0))(
  ( (Unit!51413) )
))
(declare-fun lt!665497 () Unit!51412)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!102344 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51412)

(assert (=> b!1540942 (= lt!665497 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3920 mask!4052 (bvadd #b00000000000000000000000000000001 from!3298) newFrom!293))))

(declare-fun b!1540943 () Bool)

(declare-fun res!1057627 () Bool)

(assert (=> b!1540943 (=> (not res!1057627) (not e!857018))))

(assert (=> b!1540943 (= res!1057627 (and (= (size!49927 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49927 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49927 a!3920))))))

(declare-fun res!1057628 () Bool)

(assert (=> start!131514 (=> (not res!1057628) (not e!857018))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131514 (= res!1057628 (validMask!0 mask!4052))))

(assert (=> start!131514 e!857018))

(assert (=> start!131514 true))

(declare-fun array_inv!38321 (array!102344) Bool)

(assert (=> start!131514 (array_inv!38321 a!3920)))

(declare-fun b!1540941 () Bool)

(declare-fun res!1057629 () Bool)

(assert (=> b!1540941 (=> (not res!1057629) (not e!857018))))

(assert (=> b!1540941 (= res!1057629 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540944 () Bool)

(declare-fun res!1057626 () Bool)

(assert (=> b!1540944 (=> (not res!1057626) (not e!857018))))

(assert (=> b!1540944 (= res!1057626 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1540945 () Bool)

(declare-fun res!1057625 () Bool)

(assert (=> b!1540945 (=> (not res!1057625) (not e!857018))))

(assert (=> b!1540945 (= res!1057625 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49927 a!3920))))))

(assert (= (and start!131514 res!1057628) b!1540943))

(assert (= (and b!1540943 res!1057627) b!1540944))

(assert (= (and b!1540944 res!1057626) b!1540945))

(assert (= (and b!1540945 res!1057625) b!1540941))

(assert (= (and b!1540941 res!1057629) b!1540942))

(declare-fun m!1423017 () Bool)

(assert (=> b!1540942 m!1423017))

(declare-fun m!1423019 () Bool)

(assert (=> b!1540942 m!1423019))

(declare-fun m!1423021 () Bool)

(assert (=> start!131514 m!1423021))

(declare-fun m!1423023 () Bool)

(assert (=> start!131514 m!1423023))

(declare-fun m!1423025 () Bool)

(assert (=> b!1540941 m!1423025))

(declare-fun m!1423027 () Bool)

(assert (=> b!1540944 m!1423027))

(check-sat (not b!1540944) (not start!131514) (not b!1540942) (not b!1540941))
(check-sat)
