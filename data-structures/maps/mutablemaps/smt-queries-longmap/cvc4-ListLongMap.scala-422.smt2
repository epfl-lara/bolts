; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7874 () Bool)

(assert start!7874)

(declare-fun res!28743 () Bool)

(declare-fun e!31998 () Bool)

(assert (=> start!7874 (=> (not res!28743) (not e!31998))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7874 (= res!28743 (validMask!0 mask!2234))))

(assert (=> start!7874 e!31998))

(assert (=> start!7874 true))

(declare-datatypes ((array!3220 0))(
  ( (array!3221 (arr!1543 (Array (_ BitVec 32) (_ BitVec 64))) (size!1765 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3220)

(declare-fun array_inv!894 (array!3220) Bool)

(assert (=> start!7874 (array_inv!894 _keys!1794)))

(declare-fun b!49722 () Bool)

(assert (=> b!49722 (= e!31998 (and (= (size!1765 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (bvslt (bvadd #b00000000000000000000000000000001 mask!2234) #b00000000000000000000000000000000)))))

(assert (= (and start!7874 res!28743) b!49722))

(declare-fun m!43109 () Bool)

(assert (=> start!7874 m!43109))

(declare-fun m!43111 () Bool)

(assert (=> start!7874 m!43111))

(push 1)

(assert (not start!7874))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

