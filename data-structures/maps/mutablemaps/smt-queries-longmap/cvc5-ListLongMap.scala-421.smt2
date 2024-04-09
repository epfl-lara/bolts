; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7864 () Bool)

(assert start!7864)

(declare-fun res!28722 () Bool)

(declare-fun e!31968 () Bool)

(assert (=> start!7864 (=> (not res!28722) (not e!31968))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7864 (= res!28722 (validMask!0 mask!2234))))

(assert (=> start!7864 e!31968))

(assert (=> start!7864 true))

(declare-datatypes ((array!3210 0))(
  ( (array!3211 (arr!1538 (Array (_ BitVec 32) (_ BitVec 64))) (size!1760 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3210)

(declare-fun array_inv!889 (array!3210) Bool)

(assert (=> start!7864 (array_inv!889 _keys!1794)))

(declare-fun b!49700 () Bool)

(declare-fun res!28721 () Bool)

(assert (=> b!49700 (=> (not res!28721) (not e!31968))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49700 (= res!28721 (and (= (size!1760 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3211 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1760 _keys!1794)) (bvslt i!836 (size!1760 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(declare-fun b!49701 () Bool)

(assert (=> b!49701 (= e!31968 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3210 (_ BitVec 32)) Bool)

(assert (=> b!49701 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-datatypes ((Unit!1400 0))(
  ( (Unit!1401) )
))
(declare-fun lt!20862 () Unit!1400)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!3210 (_ BitVec 32) (_ BitVec 32)) Unit!1400)

(assert (=> b!49701 (= lt!20862 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (= (and start!7864 res!28722) b!49700))

(assert (= (and b!49700 res!28721) b!49701))

(declare-fun m!43077 () Bool)

(assert (=> start!7864 m!43077))

(declare-fun m!43079 () Bool)

(assert (=> start!7864 m!43079))

(declare-fun m!43081 () Bool)

(assert (=> b!49701 m!43081))

(declare-fun m!43083 () Bool)

(assert (=> b!49701 m!43083))

(push 1)

(assert (not start!7864))

(assert (not b!49701))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

