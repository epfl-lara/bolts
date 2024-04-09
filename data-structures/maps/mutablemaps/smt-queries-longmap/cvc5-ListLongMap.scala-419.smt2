; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7852 () Bool)

(assert start!7852)

(declare-fun res!28686 () Bool)

(declare-fun e!31933 () Bool)

(assert (=> start!7852 (=> (not res!28686) (not e!31933))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7852 (= res!28686 (validMask!0 mask!2234))))

(assert (=> start!7852 e!31933))

(assert (=> start!7852 true))

(declare-datatypes ((array!3198 0))(
  ( (array!3199 (arr!1532 (Array (_ BitVec 32) (_ BitVec 64))) (size!1754 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3198)

(declare-fun array_inv!883 (array!3198) Bool)

(assert (=> start!7852 (array_inv!883 _keys!1794)))

(declare-fun b!49664 () Bool)

(declare-fun res!28685 () Bool)

(assert (=> b!49664 (=> (not res!28685) (not e!31933))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49664 (= res!28685 (and (= (size!1754 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3199 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1754 _keys!1794)) (bvslt i!836 (size!1754 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(declare-fun b!49665 () Bool)

(assert (=> b!49665 (= e!31933 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3198 (_ BitVec 32)) Bool)

(assert (=> b!49665 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-datatypes ((Unit!1388 0))(
  ( (Unit!1389) )
))
(declare-fun lt!20844 () Unit!1388)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!3198 (_ BitVec 32) (_ BitVec 32)) Unit!1388)

(assert (=> b!49665 (= lt!20844 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (= (and start!7852 res!28686) b!49664))

(assert (= (and b!49664 res!28685) b!49665))

(declare-fun m!43029 () Bool)

(assert (=> start!7852 m!43029))

(declare-fun m!43031 () Bool)

(assert (=> start!7852 m!43031))

(declare-fun m!43033 () Bool)

(assert (=> b!49665 m!43033))

(declare-fun m!43035 () Bool)

(assert (=> b!49665 m!43035))

(push 1)

(assert (not start!7852))

(assert (not b!49665))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

