; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7888 () Bool)

(assert start!7888)

(declare-fun res!28749 () Bool)

(declare-fun e!32010 () Bool)

(assert (=> start!7888 (=> (not res!28749) (not e!32010))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7888 (= res!28749 (validMask!0 mask!2234))))

(assert (=> start!7888 e!32010))

(assert (=> start!7888 true))

(declare-datatypes ((array!3226 0))(
  ( (array!3227 (arr!1545 (Array (_ BitVec 32) (_ BitVec 64))) (size!1767 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3226)

(declare-fun array_inv!896 (array!3226) Bool)

(assert (=> start!7888 (array_inv!896 _keys!1794)))

(declare-fun i!836 () (_ BitVec 32))

(declare-fun b!49728 () Bool)

(assert (=> b!49728 (= e!32010 (and (= (size!1767 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3227 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1767 _keys!1794)) (bvslt i!836 (size!1767 _keys!1794)) (bvslt (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(assert (= (and start!7888 res!28749) b!49728))

(declare-fun m!43117 () Bool)

(assert (=> start!7888 m!43117))

(declare-fun m!43119 () Bool)

(assert (=> start!7888 m!43119))

(check-sat (not start!7888))
(check-sat)
