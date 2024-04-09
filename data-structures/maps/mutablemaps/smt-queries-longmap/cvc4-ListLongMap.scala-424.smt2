; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7896 () Bool)

(assert start!7896)

(declare-fun res!28761 () Bool)

(declare-fun e!32034 () Bool)

(assert (=> start!7896 (=> (not res!28761) (not e!32034))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7896 (= res!28761 (validMask!0 mask!2234))))

(assert (=> start!7896 e!32034))

(assert (=> start!7896 true))

(declare-datatypes ((array!3234 0))(
  ( (array!3235 (arr!1549 (Array (_ BitVec 32) (_ BitVec 64))) (size!1771 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3234)

(declare-fun array_inv!900 (array!3234) Bool)

(assert (=> start!7896 (array_inv!900 _keys!1794)))

(declare-fun i!836 () (_ BitVec 32))

(declare-fun b!49740 () Bool)

(assert (=> b!49740 (= e!32034 (and (= (size!1771 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3235 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1771 _keys!1794)) (bvslt i!836 (size!1771 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000) (bvsge (bvsub (size!1771 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) (bvsub (size!1771 _keys!1794) i!836))))))

(assert (= (and start!7896 res!28761) b!49740))

(declare-fun m!43133 () Bool)

(assert (=> start!7896 m!43133))

(declare-fun m!43135 () Bool)

(assert (=> start!7896 m!43135))

(push 1)

(assert (not start!7896))

(check-sat)

(pop 1)

(push 1)

(check-sat)

