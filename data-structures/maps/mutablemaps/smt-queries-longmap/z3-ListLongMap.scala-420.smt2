; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7860 () Bool)

(assert start!7860)

(declare-fun res!28710 () Bool)

(declare-fun e!31956 () Bool)

(assert (=> start!7860 (=> (not res!28710) (not e!31956))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7860 (= res!28710 (validMask!0 mask!2234))))

(assert (=> start!7860 e!31956))

(assert (=> start!7860 true))

(declare-datatypes ((array!3206 0))(
  ( (array!3207 (arr!1536 (Array (_ BitVec 32) (_ BitVec 64))) (size!1758 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3206)

(declare-fun array_inv!887 (array!3206) Bool)

(assert (=> start!7860 (array_inv!887 _keys!1794)))

(declare-fun b!49688 () Bool)

(declare-fun res!28709 () Bool)

(assert (=> b!49688 (=> (not res!28709) (not e!31956))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49688 (= res!28709 (and (= (size!1758 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3207 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1758 _keys!1794)) (bvslt i!836 (size!1758 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(declare-fun b!49689 () Bool)

(assert (=> b!49689 (= e!31956 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3206 (_ BitVec 32)) Bool)

(assert (=> b!49689 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-datatypes ((Unit!1396 0))(
  ( (Unit!1397) )
))
(declare-fun lt!20856 () Unit!1396)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!3206 (_ BitVec 32) (_ BitVec 32)) Unit!1396)

(assert (=> b!49689 (= lt!20856 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (= (and start!7860 res!28710) b!49688))

(assert (= (and b!49688 res!28709) b!49689))

(declare-fun m!43061 () Bool)

(assert (=> start!7860 m!43061))

(declare-fun m!43063 () Bool)

(assert (=> start!7860 m!43063))

(declare-fun m!43065 () Bool)

(assert (=> b!49689 m!43065))

(declare-fun m!43067 () Bool)

(assert (=> b!49689 m!43067))

(check-sat (not b!49689) (not start!7860))
