; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7892 () Bool)

(assert start!7892)

(declare-fun res!28755 () Bool)

(declare-fun e!32022 () Bool)

(assert (=> start!7892 (=> (not res!28755) (not e!32022))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7892 (= res!28755 (validMask!0 mask!2234))))

(assert (=> start!7892 e!32022))

(assert (=> start!7892 true))

(declare-datatypes ((array!3230 0))(
  ( (array!3231 (arr!1547 (Array (_ BitVec 32) (_ BitVec 64))) (size!1769 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3230)

(declare-fun array_inv!898 (array!3230) Bool)

(assert (=> start!7892 (array_inv!898 _keys!1794)))

(declare-fun b!49734 () Bool)

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49734 (= e!32022 (and (= (size!1769 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3231 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1769 _keys!1794)) (bvslt i!836 (size!1769 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000) (bvsge (bvsub (size!1769 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) (bvsub (size!1769 _keys!1794) i!836))))))

(assert (= (and start!7892 res!28755) b!49734))

(declare-fun m!43125 () Bool)

(assert (=> start!7892 m!43125))

(declare-fun m!43127 () Bool)

(assert (=> start!7892 m!43127))

(push 1)

(assert (not start!7892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

