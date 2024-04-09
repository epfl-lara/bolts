; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82224 () Bool)

(assert start!82224)

(declare-fun b_free!18469 () Bool)

(declare-fun b_next!18469 () Bool)

(assert (=> start!82224 (= b_free!18469 (not b_next!18469))))

(declare-fun tp!64369 () Bool)

(declare-fun b_and!29975 () Bool)

(assert (=> start!82224 (= tp!64369 b_and!29975)))

(declare-fun b!957860 () Bool)

(declare-fun res!641272 () Bool)

(declare-fun e!540035 () Bool)

(assert (=> b!957860 (=> (not res!641272) (not e!540035))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58467 0))(
  ( (array!58468 (arr!28103 (Array (_ BitVec 32) (_ BitVec 64))) (size!28583 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58467)

(declare-datatypes ((V!33217 0))(
  ( (V!33218 (val!10638 Int)) )
))
(declare-datatypes ((ValueCell!10106 0))(
  ( (ValueCellFull!10106 (v!13195 V!33217)) (EmptyCell!10106) )
))
(declare-datatypes ((array!58469 0))(
  ( (array!58470 (arr!28104 (Array (_ BitVec 32) ValueCell!10106)) (size!28584 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58469)

(assert (=> b!957860 (= res!641272 (and (= (size!28584 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28583 _keys!1668) (size!28584 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957861 () Bool)

(declare-fun e!540038 () Bool)

(declare-fun e!540037 () Bool)

(declare-fun mapRes!33742 () Bool)

(assert (=> b!957861 (= e!540038 (and e!540037 mapRes!33742))))

(declare-fun condMapEmpty!33742 () Bool)

(declare-fun mapDefault!33742 () ValueCell!10106)

