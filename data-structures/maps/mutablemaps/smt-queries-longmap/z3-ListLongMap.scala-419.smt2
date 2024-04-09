; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7854 () Bool)

(assert start!7854)

(declare-fun res!28692 () Bool)

(declare-fun e!31939 () Bool)

(assert (=> start!7854 (=> (not res!28692) (not e!31939))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7854 (= res!28692 (validMask!0 mask!2234))))

(assert (=> start!7854 e!31939))

(assert (=> start!7854 true))

(declare-datatypes ((array!3200 0))(
  ( (array!3201 (arr!1533 (Array (_ BitVec 32) (_ BitVec 64))) (size!1755 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3200)

(declare-fun array_inv!884 (array!3200) Bool)

(assert (=> start!7854 (array_inv!884 _keys!1794)))

(declare-fun b!49670 () Bool)

(declare-fun res!28691 () Bool)

(assert (=> b!49670 (=> (not res!28691) (not e!31939))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49670 (= res!28691 (and (= (size!1755 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3201 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1755 _keys!1794)) (bvslt i!836 (size!1755 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(declare-fun b!49671 () Bool)

(assert (=> b!49671 (= e!31939 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3200 (_ BitVec 32)) Bool)

(assert (=> b!49671 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-datatypes ((Unit!1390 0))(
  ( (Unit!1391) )
))
(declare-fun lt!20847 () Unit!1390)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!3200 (_ BitVec 32) (_ BitVec 32)) Unit!1390)

(assert (=> b!49671 (= lt!20847 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (= (and start!7854 res!28692) b!49670))

(assert (= (and b!49670 res!28691) b!49671))

(declare-fun m!43037 () Bool)

(assert (=> start!7854 m!43037))

(declare-fun m!43039 () Bool)

(assert (=> start!7854 m!43039))

(declare-fun m!43041 () Bool)

(assert (=> b!49671 m!43041))

(declare-fun m!43043 () Bool)

(assert (=> b!49671 m!43043))

(check-sat (not start!7854) (not b!49671))
