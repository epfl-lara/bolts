; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7866 () Bool)

(assert start!7866)

(declare-fun res!28728 () Bool)

(declare-fun e!31975 () Bool)

(assert (=> start!7866 (=> (not res!28728) (not e!31975))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7866 (= res!28728 (validMask!0 mask!2234))))

(assert (=> start!7866 e!31975))

(assert (=> start!7866 true))

(declare-datatypes ((array!3212 0))(
  ( (array!3213 (arr!1539 (Array (_ BitVec 32) (_ BitVec 64))) (size!1761 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3212)

(declare-fun array_inv!890 (array!3212) Bool)

(assert (=> start!7866 (array_inv!890 _keys!1794)))

(declare-fun b!49706 () Bool)

(declare-fun res!28727 () Bool)

(assert (=> b!49706 (=> (not res!28727) (not e!31975))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49706 (= res!28727 (and (= (size!1761 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3213 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1761 _keys!1794)) (bvslt i!836 (size!1761 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(declare-fun b!49707 () Bool)

(assert (=> b!49707 (= e!31975 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3212 (_ BitVec 32)) Bool)

(assert (=> b!49707 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-datatypes ((Unit!1402 0))(
  ( (Unit!1403) )
))
(declare-fun lt!20865 () Unit!1402)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!3212 (_ BitVec 32) (_ BitVec 32)) Unit!1402)

(assert (=> b!49707 (= lt!20865 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (= (and start!7866 res!28728) b!49706))

(assert (= (and b!49706 res!28727) b!49707))

(declare-fun m!43085 () Bool)

(assert (=> start!7866 m!43085))

(declare-fun m!43087 () Bool)

(assert (=> start!7866 m!43087))

(declare-fun m!43089 () Bool)

(assert (=> b!49707 m!43089))

(declare-fun m!43091 () Bool)

(assert (=> b!49707 m!43091))

(check-sat (not start!7866) (not b!49707))
