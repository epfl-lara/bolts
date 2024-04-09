; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81660 () Bool)

(assert start!81660)

(declare-fun res!638438 () Bool)

(declare-fun e!536865 () Bool)

(assert (=> start!81660 (=> (not res!638438) (not e!536865))))

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81660 (= res!638438 (validMask!0 mask!4034))))

(assert (=> start!81660 e!536865))

(assert (=> start!81660 true))

(declare-datatypes ((array!57715 0))(
  ( (array!57716 (arr!27741 (Array (_ BitVec 32) (_ BitVec 64))) (size!28221 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57715)

(declare-fun array_inv!21474 (array!57715) Bool)

(assert (=> start!81660 (array_inv!21474 a!3460)))

(declare-fun b!953090 () Bool)

(declare-fun res!638437 () Bool)

(assert (=> b!953090 (=> (not res!638437) (not e!536865))))

(assert (=> b!953090 (= res!638437 (= (size!28221 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953091 () Bool)

(assert (=> b!953091 (= e!536865 false)))

(declare-fun lt!429591 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57715 (_ BitVec 32)) Bool)

(assert (=> b!953091 (= lt!429591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(assert (= (and start!81660 res!638438) b!953090))

(assert (= (and b!953090 res!638437) b!953091))

(declare-fun m!885281 () Bool)

(assert (=> start!81660 m!885281))

(declare-fun m!885283 () Bool)

(assert (=> start!81660 m!885283))

(declare-fun m!885285 () Bool)

(assert (=> b!953091 m!885285))

(check-sat (not b!953091) (not start!81660))
(check-sat)
