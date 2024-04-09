; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7858 () Bool)

(assert start!7858)

(declare-fun res!28703 () Bool)

(declare-fun e!31950 () Bool)

(assert (=> start!7858 (=> (not res!28703) (not e!31950))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7858 (= res!28703 (validMask!0 mask!2234))))

(assert (=> start!7858 e!31950))

(assert (=> start!7858 true))

(declare-datatypes ((array!3204 0))(
  ( (array!3205 (arr!1535 (Array (_ BitVec 32) (_ BitVec 64))) (size!1757 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3204)

(declare-fun array_inv!886 (array!3204) Bool)

(assert (=> start!7858 (array_inv!886 _keys!1794)))

(declare-fun b!49682 () Bool)

(declare-fun res!28704 () Bool)

(assert (=> b!49682 (=> (not res!28704) (not e!31950))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49682 (= res!28704 (and (= (size!1757 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3205 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1757 _keys!1794)) (bvslt i!836 (size!1757 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(declare-fun b!49683 () Bool)

(assert (=> b!49683 (= e!31950 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3204 (_ BitVec 32)) Bool)

(assert (=> b!49683 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-datatypes ((Unit!1394 0))(
  ( (Unit!1395) )
))
(declare-fun lt!20853 () Unit!1394)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!3204 (_ BitVec 32) (_ BitVec 32)) Unit!1394)

(assert (=> b!49683 (= lt!20853 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (= (and start!7858 res!28703) b!49682))

(assert (= (and b!49682 res!28704) b!49683))

(declare-fun m!43053 () Bool)

(assert (=> start!7858 m!43053))

(declare-fun m!43055 () Bool)

(assert (=> start!7858 m!43055))

(declare-fun m!43057 () Bool)

(assert (=> b!49683 m!43057))

(declare-fun m!43059 () Bool)

(assert (=> b!49683 m!43059))

(push 1)

(assert (not b!49683))

(assert (not start!7858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

