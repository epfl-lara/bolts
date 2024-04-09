; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81696 () Bool)

(assert start!81696)

(declare-fun res!638509 () Bool)

(declare-fun e!536928 () Bool)

(assert (=> start!81696 (=> (not res!638509) (not e!536928))))

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81696 (= res!638509 (validMask!0 mask!4034))))

(assert (=> start!81696 e!536928))

(assert (=> start!81696 true))

(declare-datatypes ((array!57730 0))(
  ( (array!57731 (arr!27747 (Array (_ BitVec 32) (_ BitVec 64))) (size!28227 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57730)

(declare-fun array_inv!21480 (array!57730) Bool)

(assert (=> start!81696 (array_inv!21480 a!3460)))

(declare-fun b!953180 () Bool)

(declare-fun res!638510 () Bool)

(assert (=> b!953180 (=> (not res!638510) (not e!536928))))

(assert (=> b!953180 (= res!638510 (= (size!28227 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953181 () Bool)

(assert (=> b!953181 (= e!536928 false)))

(declare-fun lt!429627 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57730 (_ BitVec 32)) Bool)

(assert (=> b!953181 (= lt!429627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(assert (= (and start!81696 res!638509) b!953180))

(assert (= (and b!953180 res!638510) b!953181))

(declare-fun m!885359 () Bool)

(assert (=> start!81696 m!885359))

(declare-fun m!885361 () Bool)

(assert (=> start!81696 m!885361))

(declare-fun m!885363 () Bool)

(assert (=> b!953181 m!885363))

(check-sat (not b!953181) (not start!81696))
(check-sat)
