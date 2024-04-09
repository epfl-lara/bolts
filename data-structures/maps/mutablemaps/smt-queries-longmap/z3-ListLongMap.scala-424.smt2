; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7894 () Bool)

(assert start!7894)

(declare-fun res!28758 () Bool)

(declare-fun e!32028 () Bool)

(assert (=> start!7894 (=> (not res!28758) (not e!32028))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7894 (= res!28758 (validMask!0 mask!2234))))

(assert (=> start!7894 e!32028))

(assert (=> start!7894 true))

(declare-datatypes ((array!3232 0))(
  ( (array!3233 (arr!1548 (Array (_ BitVec 32) (_ BitVec 64))) (size!1770 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3232)

(declare-fun array_inv!899 (array!3232) Bool)

(assert (=> start!7894 (array_inv!899 _keys!1794)))

(declare-fun b!49737 () Bool)

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49737 (= e!32028 (and (= (size!1770 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3233 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1770 _keys!1794)) (bvslt i!836 (size!1770 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000) (bvsge (bvsub (size!1770 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) (bvsub (size!1770 _keys!1794) i!836))))))

(assert (= (and start!7894 res!28758) b!49737))

(declare-fun m!43129 () Bool)

(assert (=> start!7894 m!43129))

(declare-fun m!43131 () Bool)

(assert (=> start!7894 m!43131))

(check-sat (not start!7894))
(check-sat)
