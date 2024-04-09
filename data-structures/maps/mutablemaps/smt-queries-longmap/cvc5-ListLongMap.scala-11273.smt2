; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131512 () Bool)

(assert start!131512)

(declare-fun b!1540926 () Bool)

(declare-fun res!1057613 () Bool)

(declare-fun e!857012 () Bool)

(assert (=> b!1540926 (=> (not res!1057613) (not e!857012))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-datatypes ((array!102342 0))(
  ( (array!102343 (arr!49375 (Array (_ BitVec 32) (_ BitVec 64))) (size!49926 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102342)

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun mask!4052 () (_ BitVec 32))

(assert (=> b!1540926 (= res!1057613 (and (= (size!49926 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49926 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49926 a!3920))))))

(declare-fun b!1540927 () Bool)

(declare-fun res!1057614 () Bool)

(assert (=> b!1540927 (=> (not res!1057614) (not e!857012))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102342 (_ BitVec 32)) Bool)

(assert (=> b!1540927 (= res!1057614 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540928 () Bool)

(declare-fun res!1057612 () Bool)

(assert (=> b!1540928 (=> (not res!1057612) (not e!857012))))

(assert (=> b!1540928 (= res!1057612 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49926 a!3920))))))

(declare-fun b!1540929 () Bool)

(assert (=> b!1540929 (= e!857012 (not (bvsge newFrom!293 #b00000000000000000000000000000000)))))

(assert (=> b!1540929 (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))

(declare-datatypes ((Unit!51410 0))(
  ( (Unit!51411) )
))
(declare-fun lt!665494 () Unit!51410)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!102342 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51410)

(assert (=> b!1540929 (= lt!665494 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3920 mask!4052 (bvadd #b00000000000000000000000000000001 from!3298) newFrom!293))))

(declare-fun b!1540930 () Bool)

(declare-fun res!1057610 () Bool)

(assert (=> b!1540930 (=> (not res!1057610) (not e!857012))))

(assert (=> b!1540930 (= res!1057610 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun res!1057611 () Bool)

(assert (=> start!131512 (=> (not res!1057611) (not e!857012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131512 (= res!1057611 (validMask!0 mask!4052))))

(assert (=> start!131512 e!857012))

(assert (=> start!131512 true))

(declare-fun array_inv!38320 (array!102342) Bool)

(assert (=> start!131512 (array_inv!38320 a!3920)))

(assert (= (and start!131512 res!1057611) b!1540926))

(assert (= (and b!1540926 res!1057613) b!1540930))

(assert (= (and b!1540930 res!1057610) b!1540928))

(assert (= (and b!1540928 res!1057612) b!1540927))

(assert (= (and b!1540927 res!1057614) b!1540929))

(declare-fun m!1423005 () Bool)

(assert (=> b!1540927 m!1423005))

(declare-fun m!1423007 () Bool)

(assert (=> b!1540929 m!1423007))

(declare-fun m!1423009 () Bool)

(assert (=> b!1540929 m!1423009))

(declare-fun m!1423011 () Bool)

(assert (=> b!1540930 m!1423011))

(declare-fun m!1423013 () Bool)

(assert (=> start!131512 m!1423013))

(declare-fun m!1423015 () Bool)

(assert (=> start!131512 m!1423015))

(push 1)

(assert (not b!1540930))

(assert (not b!1540929))

(assert (not start!131512))

(assert (not b!1540927))

(check-sat)

(pop 1)

