; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7886 () Bool)

(assert start!7886)

(declare-fun res!28746 () Bool)

(declare-fun e!32004 () Bool)

(assert (=> start!7886 (=> (not res!28746) (not e!32004))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7886 (= res!28746 (validMask!0 mask!2234))))

(assert (=> start!7886 e!32004))

(assert (=> start!7886 true))

(declare-datatypes ((array!3224 0))(
  ( (array!3225 (arr!1544 (Array (_ BitVec 32) (_ BitVec 64))) (size!1766 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3224)

(declare-fun array_inv!895 (array!3224) Bool)

(assert (=> start!7886 (array_inv!895 _keys!1794)))

(declare-fun b!49725 () Bool)

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49725 (= e!32004 (and (= (size!1766 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3225 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1766 _keys!1794)) (bvslt i!836 (size!1766 _keys!1794)) (bvslt (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(assert (= (and start!7886 res!28746) b!49725))

(declare-fun m!43113 () Bool)

(assert (=> start!7886 m!43113))

(declare-fun m!43115 () Bool)

(assert (=> start!7886 m!43115))

(push 1)

(assert (not start!7886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

