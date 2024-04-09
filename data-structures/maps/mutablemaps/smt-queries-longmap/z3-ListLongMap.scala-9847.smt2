; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116812 () Bool)

(assert start!116812)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun b!1376148 () Bool)

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93399 0))(
  ( (array!93400 (arr!45098 (Array (_ BitVec 32) (_ BitVec 64))) (size!45649 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93399)

(declare-fun e!779624 () Bool)

(assert (=> b!1376148 (= e!779624 (and (= to!206 (size!45649 a!4032)) (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(declare-fun b!1376149 () Bool)

(declare-fun res!919145 () Bool)

(assert (=> b!1376149 (=> (not res!919145) (not e!779624))))

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93399 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376149 (= res!919145 (= (arrayCountValidKeys!0 (array!93400 (store (arr!45098 a!4032) i!1445 k0!2947) (size!45649 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun res!919149 () Bool)

(assert (=> start!116812 (=> (not res!919149) (not e!779624))))

(assert (=> start!116812 (= res!919149 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45649 a!4032))))))

(assert (=> start!116812 e!779624))

(assert (=> start!116812 true))

(declare-fun array_inv!34043 (array!93399) Bool)

(assert (=> start!116812 (array_inv!34043 a!4032)))

(declare-fun b!1376150 () Bool)

(declare-fun res!919148 () Bool)

(assert (=> b!1376150 (=> (not res!919148) (not e!779624))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376150 (= res!919148 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1376151 () Bool)

(declare-fun res!919146 () Bool)

(assert (=> b!1376151 (=> (not res!919146) (not e!779624))))

(assert (=> b!1376151 (= res!919146 (and (bvslt (size!45649 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45649 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376152 () Bool)

(declare-fun res!919147 () Bool)

(assert (=> b!1376152 (=> (not res!919147) (not e!779624))))

(assert (=> b!1376152 (= res!919147 (validKeyInArray!0 (select (arr!45098 a!4032) i!1445)))))

(assert (= (and start!116812 res!919149) b!1376152))

(assert (= (and b!1376152 res!919147) b!1376150))

(assert (= (and b!1376150 res!919148) b!1376151))

(assert (= (and b!1376151 res!919146) b!1376149))

(assert (= (and b!1376149 res!919145) b!1376148))

(declare-fun m!1260265 () Bool)

(assert (=> b!1376149 m!1260265))

(declare-fun m!1260267 () Bool)

(assert (=> b!1376149 m!1260267))

(declare-fun m!1260269 () Bool)

(assert (=> b!1376149 m!1260269))

(declare-fun m!1260271 () Bool)

(assert (=> start!116812 m!1260271))

(declare-fun m!1260273 () Bool)

(assert (=> b!1376150 m!1260273))

(declare-fun m!1260275 () Bool)

(assert (=> b!1376152 m!1260275))

(assert (=> b!1376152 m!1260275))

(declare-fun m!1260277 () Bool)

(assert (=> b!1376152 m!1260277))

(check-sat (not b!1376149) (not b!1376150) (not b!1376152) (not start!116812))
(check-sat)
