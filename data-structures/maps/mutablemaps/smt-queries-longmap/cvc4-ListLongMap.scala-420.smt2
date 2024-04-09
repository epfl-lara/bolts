; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7862 () Bool)

(assert start!7862)

(declare-fun res!28715 () Bool)

(declare-fun e!31962 () Bool)

(assert (=> start!7862 (=> (not res!28715) (not e!31962))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7862 (= res!28715 (validMask!0 mask!2234))))

(assert (=> start!7862 e!31962))

(assert (=> start!7862 true))

(declare-datatypes ((array!3208 0))(
  ( (array!3209 (arr!1537 (Array (_ BitVec 32) (_ BitVec 64))) (size!1759 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3208)

(declare-fun array_inv!888 (array!3208) Bool)

(assert (=> start!7862 (array_inv!888 _keys!1794)))

(declare-fun b!49694 () Bool)

(declare-fun res!28716 () Bool)

(assert (=> b!49694 (=> (not res!28716) (not e!31962))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49694 (= res!28716 (and (= (size!1759 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3209 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1759 _keys!1794)) (bvslt i!836 (size!1759 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(declare-fun b!49695 () Bool)

(assert (=> b!49695 (= e!31962 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3208 (_ BitVec 32)) Bool)

(assert (=> b!49695 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-datatypes ((Unit!1398 0))(
  ( (Unit!1399) )
))
(declare-fun lt!20859 () Unit!1398)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!3208 (_ BitVec 32) (_ BitVec 32)) Unit!1398)

(assert (=> b!49695 (= lt!20859 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (= (and start!7862 res!28715) b!49694))

(assert (= (and b!49694 res!28716) b!49695))

(declare-fun m!43069 () Bool)

(assert (=> start!7862 m!43069))

(declare-fun m!43071 () Bool)

(assert (=> start!7862 m!43071))

(declare-fun m!43073 () Bool)

(assert (=> b!49695 m!43073))

(declare-fun m!43075 () Bool)

(assert (=> b!49695 m!43075))

(push 1)

(assert (not b!49695))

(assert (not start!7862))

(check-sat)

