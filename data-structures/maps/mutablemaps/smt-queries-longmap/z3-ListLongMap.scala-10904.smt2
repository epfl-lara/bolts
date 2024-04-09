; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127734 () Bool)

(assert start!127734)

(declare-fun b!1500250 () Bool)

(declare-fun e!839560 () Bool)

(assert (=> b!1500250 (= e!839560 false)))

(declare-datatypes ((SeekEntryResult!12498 0))(
  ( (MissingZero!12498 (index!52383 (_ BitVec 32))) (Found!12498 (index!52384 (_ BitVec 32))) (Intermediate!12498 (undefined!13310 Bool) (index!52385 (_ BitVec 32)) (x!134073 (_ BitVec 32))) (Undefined!12498) (MissingVacant!12498 (index!52386 (_ BitVec 32))) )
))
(declare-fun lt!652869 () SeekEntryResult!12498)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100028 0))(
  ( (array!100029 (arr!48269 (Array (_ BitVec 32) (_ BitVec 64))) (size!48820 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100028)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!652870 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100028 (_ BitVec 32)) SeekEntryResult!12498)

(assert (=> b!1500250 (= lt!652869 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652870 vacantBefore!10 (select (arr!48269 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500252 () Bool)

(declare-fun res!1021400 () Bool)

(declare-fun e!839559 () Bool)

(assert (=> b!1500252 (=> (not res!1021400) (not e!839559))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500252 (= res!1021400 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48820 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48820 a!2850)) (= (select (arr!48269 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48269 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48820 a!2850))))))

(declare-fun b!1500253 () Bool)

(declare-fun res!1021403 () Bool)

(assert (=> b!1500253 (=> (not res!1021403) (not e!839559))))

(assert (=> b!1500253 (= res!1021403 (not (= (select (arr!48269 a!2850) index!625) (select (arr!48269 a!2850) j!87))))))

(declare-fun b!1500254 () Bool)

(declare-fun res!1021398 () Bool)

(assert (=> b!1500254 (=> (not res!1021398) (not e!839559))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500254 (= res!1021398 (validKeyInArray!0 (select (arr!48269 a!2850) i!996)))))

(declare-fun b!1500255 () Bool)

(declare-fun res!1021404 () Bool)

(assert (=> b!1500255 (=> (not res!1021404) (not e!839559))))

(assert (=> b!1500255 (= res!1021404 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48269 a!2850) j!87) a!2850 mask!2661) (Found!12498 j!87)))))

(declare-fun b!1500256 () Bool)

(assert (=> b!1500256 (= e!839559 e!839560)))

(declare-fun res!1021401 () Bool)

(assert (=> b!1500256 (=> (not res!1021401) (not e!839560))))

(assert (=> b!1500256 (= res!1021401 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652870 #b00000000000000000000000000000000) (bvslt lt!652870 (size!48820 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500256 (= lt!652870 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500257 () Bool)

(declare-fun res!1021405 () Bool)

(assert (=> b!1500257 (=> (not res!1021405) (not e!839559))))

(assert (=> b!1500257 (= res!1021405 (validKeyInArray!0 (select (arr!48269 a!2850) j!87)))))

(declare-fun b!1500258 () Bool)

(declare-fun res!1021407 () Bool)

(assert (=> b!1500258 (=> (not res!1021407) (not e!839559))))

(declare-datatypes ((List!34941 0))(
  ( (Nil!34938) (Cons!34937 (h!36335 (_ BitVec 64)) (t!49642 List!34941)) )
))
(declare-fun arrayNoDuplicates!0 (array!100028 (_ BitVec 32) List!34941) Bool)

(assert (=> b!1500258 (= res!1021407 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34938))))

(declare-fun b!1500259 () Bool)

(declare-fun res!1021399 () Bool)

(assert (=> b!1500259 (=> (not res!1021399) (not e!839559))))

(assert (=> b!1500259 (= res!1021399 (and (= (size!48820 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48820 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48820 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500251 () Bool)

(declare-fun res!1021402 () Bool)

(assert (=> b!1500251 (=> (not res!1021402) (not e!839559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100028 (_ BitVec 32)) Bool)

(assert (=> b!1500251 (= res!1021402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1021406 () Bool)

(assert (=> start!127734 (=> (not res!1021406) (not e!839559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127734 (= res!1021406 (validMask!0 mask!2661))))

(assert (=> start!127734 e!839559))

(assert (=> start!127734 true))

(declare-fun array_inv!37214 (array!100028) Bool)

(assert (=> start!127734 (array_inv!37214 a!2850)))

(assert (= (and start!127734 res!1021406) b!1500259))

(assert (= (and b!1500259 res!1021399) b!1500254))

(assert (= (and b!1500254 res!1021398) b!1500257))

(assert (= (and b!1500257 res!1021405) b!1500251))

(assert (= (and b!1500251 res!1021402) b!1500258))

(assert (= (and b!1500258 res!1021407) b!1500252))

(assert (= (and b!1500252 res!1021400) b!1500255))

(assert (= (and b!1500255 res!1021404) b!1500253))

(assert (= (and b!1500253 res!1021403) b!1500256))

(assert (= (and b!1500256 res!1021401) b!1500250))

(declare-fun m!1383501 () Bool)

(assert (=> b!1500254 m!1383501))

(assert (=> b!1500254 m!1383501))

(declare-fun m!1383503 () Bool)

(assert (=> b!1500254 m!1383503))

(declare-fun m!1383505 () Bool)

(assert (=> b!1500258 m!1383505))

(declare-fun m!1383507 () Bool)

(assert (=> b!1500257 m!1383507))

(assert (=> b!1500257 m!1383507))

(declare-fun m!1383509 () Bool)

(assert (=> b!1500257 m!1383509))

(declare-fun m!1383511 () Bool)

(assert (=> b!1500251 m!1383511))

(assert (=> b!1500250 m!1383507))

(assert (=> b!1500250 m!1383507))

(declare-fun m!1383513 () Bool)

(assert (=> b!1500250 m!1383513))

(declare-fun m!1383515 () Bool)

(assert (=> b!1500256 m!1383515))

(declare-fun m!1383517 () Bool)

(assert (=> b!1500253 m!1383517))

(assert (=> b!1500253 m!1383507))

(declare-fun m!1383519 () Bool)

(assert (=> start!127734 m!1383519))

(declare-fun m!1383521 () Bool)

(assert (=> start!127734 m!1383521))

(declare-fun m!1383523 () Bool)

(assert (=> b!1500252 m!1383523))

(declare-fun m!1383525 () Bool)

(assert (=> b!1500252 m!1383525))

(declare-fun m!1383527 () Bool)

(assert (=> b!1500252 m!1383527))

(assert (=> b!1500255 m!1383507))

(assert (=> b!1500255 m!1383507))

(declare-fun m!1383529 () Bool)

(assert (=> b!1500255 m!1383529))

(check-sat (not b!1500250) (not b!1500256) (not b!1500257) (not b!1500258) (not start!127734) (not b!1500254) (not b!1500255) (not b!1500251))
(check-sat)
