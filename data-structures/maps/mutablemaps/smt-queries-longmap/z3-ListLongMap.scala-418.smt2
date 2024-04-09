; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7848 () Bool)

(assert start!7848)

(declare-fun res!28674 () Bool)

(declare-fun e!31921 () Bool)

(assert (=> start!7848 (=> (not res!28674) (not e!31921))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7848 (= res!28674 (validMask!0 mask!2234))))

(assert (=> start!7848 e!31921))

(assert (=> start!7848 true))

(declare-datatypes ((array!3194 0))(
  ( (array!3195 (arr!1530 (Array (_ BitVec 32) (_ BitVec 64))) (size!1752 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3194)

(declare-fun array_inv!881 (array!3194) Bool)

(assert (=> start!7848 (array_inv!881 _keys!1794)))

(declare-fun b!49652 () Bool)

(declare-fun res!28673 () Bool)

(assert (=> b!49652 (=> (not res!28673) (not e!31921))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49652 (= res!28673 (and (= (size!1752 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3195 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1752 _keys!1794)) (bvslt i!836 (size!1752 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(declare-fun b!49653 () Bool)

(assert (=> b!49653 (= e!31921 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3194 (_ BitVec 32)) Bool)

(assert (=> b!49653 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-datatypes ((Unit!1384 0))(
  ( (Unit!1385) )
))
(declare-fun lt!20838 () Unit!1384)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!3194 (_ BitVec 32) (_ BitVec 32)) Unit!1384)

(assert (=> b!49653 (= lt!20838 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (= (and start!7848 res!28674) b!49652))

(assert (= (and b!49652 res!28673) b!49653))

(declare-fun m!43013 () Bool)

(assert (=> start!7848 m!43013))

(declare-fun m!43015 () Bool)

(assert (=> start!7848 m!43015))

(declare-fun m!43017 () Bool)

(assert (=> b!49653 m!43017))

(declare-fun m!43019 () Bool)

(assert (=> b!49653 m!43019))

(check-sat (not b!49653) (not start!7848))
