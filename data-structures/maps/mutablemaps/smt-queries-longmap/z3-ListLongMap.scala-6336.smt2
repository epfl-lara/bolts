; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81702 () Bool)

(assert start!81702)

(declare-fun res!638528 () Bool)

(declare-fun e!536947 () Bool)

(assert (=> start!81702 (=> (not res!638528) (not e!536947))))

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81702 (= res!638528 (validMask!0 mask!4034))))

(assert (=> start!81702 e!536947))

(assert (=> start!81702 true))

(declare-datatypes ((array!57736 0))(
  ( (array!57737 (arr!27750 (Array (_ BitVec 32) (_ BitVec 64))) (size!28230 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57736)

(declare-fun array_inv!21483 (array!57736) Bool)

(assert (=> start!81702 (array_inv!21483 a!3460)))

(declare-fun b!953198 () Bool)

(declare-fun res!638527 () Bool)

(assert (=> b!953198 (=> (not res!638527) (not e!536947))))

(assert (=> b!953198 (= res!638527 (= (size!28230 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953199 () Bool)

(assert (=> b!953199 (= e!536947 false)))

(declare-fun lt!429636 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57736 (_ BitVec 32)) Bool)

(assert (=> b!953199 (= lt!429636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(assert (= (and start!81702 res!638528) b!953198))

(assert (= (and b!953198 res!638527) b!953199))

(declare-fun m!885377 () Bool)

(assert (=> start!81702 m!885377))

(declare-fun m!885379 () Bool)

(assert (=> start!81702 m!885379))

(declare-fun m!885381 () Bool)

(assert (=> b!953199 m!885381))

(check-sat (not b!953199) (not start!81702))
(check-sat)
