; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7890 () Bool)

(assert start!7890)

(declare-fun res!28752 () Bool)

(declare-fun e!32016 () Bool)

(assert (=> start!7890 (=> (not res!28752) (not e!32016))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7890 (= res!28752 (validMask!0 mask!2234))))

(assert (=> start!7890 e!32016))

(assert (=> start!7890 true))

(declare-datatypes ((array!3228 0))(
  ( (array!3229 (arr!1546 (Array (_ BitVec 32) (_ BitVec 64))) (size!1768 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3228)

(declare-fun array_inv!897 (array!3228) Bool)

(assert (=> start!7890 (array_inv!897 _keys!1794)))

(declare-fun b!49731 () Bool)

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49731 (= e!32016 (and (= (size!1768 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3229 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1768 _keys!1794)) (bvslt i!836 (size!1768 _keys!1794)) (bvslt (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(assert (= (and start!7890 res!28752) b!49731))

(declare-fun m!43121 () Bool)

(assert (=> start!7890 m!43121))

(declare-fun m!43123 () Bool)

(assert (=> start!7890 m!43123))

(push 1)

(assert (not start!7890))

(check-sat)

(pop 1)

(push 1)

(check-sat)

