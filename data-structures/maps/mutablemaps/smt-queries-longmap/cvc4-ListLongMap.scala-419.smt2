; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7856 () Bool)

(assert start!7856)

(declare-fun res!28698 () Bool)

(declare-fun e!31945 () Bool)

(assert (=> start!7856 (=> (not res!28698) (not e!31945))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7856 (= res!28698 (validMask!0 mask!2234))))

(assert (=> start!7856 e!31945))

(assert (=> start!7856 true))

(declare-datatypes ((array!3202 0))(
  ( (array!3203 (arr!1534 (Array (_ BitVec 32) (_ BitVec 64))) (size!1756 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3202)

(declare-fun array_inv!885 (array!3202) Bool)

(assert (=> start!7856 (array_inv!885 _keys!1794)))

(declare-fun b!49676 () Bool)

(declare-fun res!28697 () Bool)

(assert (=> b!49676 (=> (not res!28697) (not e!31945))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49676 (= res!28697 (and (= (size!1756 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3203 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1756 _keys!1794)) (bvslt i!836 (size!1756 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(declare-fun b!49677 () Bool)

(assert (=> b!49677 (= e!31945 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3202 (_ BitVec 32)) Bool)

(assert (=> b!49677 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-datatypes ((Unit!1392 0))(
  ( (Unit!1393) )
))
(declare-fun lt!20850 () Unit!1392)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!3202 (_ BitVec 32) (_ BitVec 32)) Unit!1392)

(assert (=> b!49677 (= lt!20850 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (= (and start!7856 res!28698) b!49676))

(assert (= (and b!49676 res!28697) b!49677))

(declare-fun m!43045 () Bool)

(assert (=> start!7856 m!43045))

(declare-fun m!43047 () Bool)

(assert (=> start!7856 m!43047))

(declare-fun m!43049 () Bool)

(assert (=> b!49677 m!43049))

(declare-fun m!43051 () Bool)

(assert (=> b!49677 m!43051))

(push 1)

(assert (not start!7856))

(assert (not b!49677))

(check-sat)

(pop 1)

