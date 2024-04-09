; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82276 () Bool)

(assert start!82276)

(declare-fun b_free!18521 () Bool)

(declare-fun b_next!18521 () Bool)

(assert (=> start!82276 (= b_free!18521 (not b_next!18521))))

(declare-fun tp!64525 () Bool)

(declare-fun b_and!30027 () Bool)

(assert (=> start!82276 (= tp!64525 b_and!30027)))

(declare-fun b!958562 () Bool)

(declare-fun e!540426 () Bool)

(declare-fun tp_is_empty!21227 () Bool)

(assert (=> b!958562 (= e!540426 tp_is_empty!21227)))

(declare-fun b!958563 () Bool)

(declare-fun res!641743 () Bool)

(declare-fun e!540427 () Bool)

(assert (=> b!958563 (=> (not res!641743) (not e!540427))))

(declare-datatypes ((array!58569 0))(
  ( (array!58570 (arr!28154 (Array (_ BitVec 32) (_ BitVec 64))) (size!28634 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58569)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!958563 (= res!641743 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28634 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28634 _keys!1668))))))

(declare-fun b!958564 () Bool)

(declare-fun e!540424 () Bool)

(declare-fun mapRes!33820 () Bool)

(assert (=> b!958564 (= e!540424 (and e!540426 mapRes!33820))))

(declare-fun condMapEmpty!33820 () Bool)

(declare-datatypes ((V!33285 0))(
  ( (V!33286 (val!10664 Int)) )
))
(declare-datatypes ((ValueCell!10132 0))(
  ( (ValueCellFull!10132 (v!13221 V!33285)) (EmptyCell!10132) )
))
(declare-datatypes ((array!58571 0))(
  ( (array!58572 (arr!28155 (Array (_ BitVec 32) ValueCell!10132)) (size!28635 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58571)

(declare-fun mapDefault!33820 () ValueCell!10132)

