; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7850 () Bool)

(assert start!7850)

(declare-fun res!28680 () Bool)

(declare-fun e!31926 () Bool)

(assert (=> start!7850 (=> (not res!28680) (not e!31926))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7850 (= res!28680 (validMask!0 mask!2234))))

(assert (=> start!7850 e!31926))

(assert (=> start!7850 true))

(declare-datatypes ((array!3196 0))(
  ( (array!3197 (arr!1531 (Array (_ BitVec 32) (_ BitVec 64))) (size!1753 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3196)

(declare-fun array_inv!882 (array!3196) Bool)

(assert (=> start!7850 (array_inv!882 _keys!1794)))

(declare-fun b!49658 () Bool)

(declare-fun res!28679 () Bool)

(assert (=> b!49658 (=> (not res!28679) (not e!31926))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49658 (= res!28679 (and (= (size!1753 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3197 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1753 _keys!1794)) (bvslt i!836 (size!1753 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(declare-fun b!49659 () Bool)

(assert (=> b!49659 (= e!31926 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3196 (_ BitVec 32)) Bool)

(assert (=> b!49659 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-datatypes ((Unit!1386 0))(
  ( (Unit!1387) )
))
(declare-fun lt!20841 () Unit!1386)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!3196 (_ BitVec 32) (_ BitVec 32)) Unit!1386)

(assert (=> b!49659 (= lt!20841 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (= (and start!7850 res!28680) b!49658))

(assert (= (and b!49658 res!28679) b!49659))

(declare-fun m!43021 () Bool)

(assert (=> start!7850 m!43021))

(declare-fun m!43023 () Bool)

(assert (=> start!7850 m!43023))

(declare-fun m!43025 () Bool)

(assert (=> b!49659 m!43025))

(declare-fun m!43027 () Bool)

(assert (=> b!49659 m!43027))

(push 1)

(assert (not b!49659))

(assert (not start!7850))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

