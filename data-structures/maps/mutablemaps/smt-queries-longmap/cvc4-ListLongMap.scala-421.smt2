; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7868 () Bool)

(assert start!7868)

(declare-fun res!28733 () Bool)

(declare-fun e!31980 () Bool)

(assert (=> start!7868 (=> (not res!28733) (not e!31980))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7868 (= res!28733 (validMask!0 mask!2234))))

(assert (=> start!7868 e!31980))

(assert (=> start!7868 true))

(declare-datatypes ((array!3214 0))(
  ( (array!3215 (arr!1540 (Array (_ BitVec 32) (_ BitVec 64))) (size!1762 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3214)

(declare-fun array_inv!891 (array!3214) Bool)

(assert (=> start!7868 (array_inv!891 _keys!1794)))

(declare-fun b!49712 () Bool)

(declare-fun res!28734 () Bool)

(assert (=> b!49712 (=> (not res!28734) (not e!31980))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49712 (= res!28734 (and (= (size!1762 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3215 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1762 _keys!1794)) (bvslt i!836 (size!1762 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(declare-fun b!49713 () Bool)

(assert (=> b!49713 (= e!31980 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3214 (_ BitVec 32)) Bool)

(assert (=> b!49713 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-datatypes ((Unit!1404 0))(
  ( (Unit!1405) )
))
(declare-fun lt!20868 () Unit!1404)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!3214 (_ BitVec 32) (_ BitVec 32)) Unit!1404)

(assert (=> b!49713 (= lt!20868 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (= (and start!7868 res!28733) b!49712))

(assert (= (and b!49712 res!28734) b!49713))

(declare-fun m!43093 () Bool)

(assert (=> start!7868 m!43093))

(declare-fun m!43095 () Bool)

(assert (=> start!7868 m!43095))

(declare-fun m!43097 () Bool)

(assert (=> b!49713 m!43097))

(declare-fun m!43099 () Bool)

(assert (=> b!49713 m!43099))

(push 1)

(assert (not start!7868))

(assert (not b!49713))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

