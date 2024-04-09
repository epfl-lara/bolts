; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82342 () Bool)

(assert start!82342)

(declare-fun b!959518 () Bool)

(declare-fun res!642400 () Bool)

(declare-fun e!540922 () Bool)

(assert (=> b!959518 (=> (not res!642400) (not e!540922))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58693 0))(
  ( (array!58694 (arr!28216 (Array (_ BitVec 32) (_ BitVec 64))) (size!28696 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58693)

(declare-datatypes ((V!33373 0))(
  ( (V!33374 (val!10697 Int)) )
))
(declare-datatypes ((ValueCell!10165 0))(
  ( (ValueCellFull!10165 (v!13254 V!33373)) (EmptyCell!10165) )
))
(declare-datatypes ((array!58695 0))(
  ( (array!58696 (arr!28217 (Array (_ BitVec 32) ValueCell!10165)) (size!28697 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58695)

(assert (=> b!959518 (= res!642400 (and (= (size!28697 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28696 _keys!1668) (size!28697 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959519 () Bool)

(declare-fun res!642399 () Bool)

(assert (=> b!959519 (=> (not res!642399) (not e!540922))))

(declare-datatypes ((List!19747 0))(
  ( (Nil!19744) (Cons!19743 (h!20905 (_ BitVec 64)) (t!28118 List!19747)) )
))
(declare-fun arrayNoDuplicates!0 (array!58693 (_ BitVec 32) List!19747) Bool)

(assert (=> b!959519 (= res!642399 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19744))))

(declare-fun b!959520 () Bool)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959520 (= e!540922 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28696 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28696 _keys!1668)) (bvslt i!793 #b00000000000000000000000000000000)))))

(declare-fun b!959521 () Bool)

(declare-fun res!642402 () Bool)

(assert (=> b!959521 (=> (not res!642402) (not e!540922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58693 (_ BitVec 32)) Bool)

(assert (=> b!959521 (= res!642402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun res!642401 () Bool)

(assert (=> start!82342 (=> (not res!642401) (not e!540922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82342 (= res!642401 (validMask!0 mask!2088))))

(assert (=> start!82342 e!540922))

(assert (=> start!82342 true))

(declare-fun array_inv!21819 (array!58693) Bool)

(assert (=> start!82342 (array_inv!21819 _keys!1668)))

(declare-fun e!540921 () Bool)

(declare-fun array_inv!21820 (array!58695) Bool)

(assert (=> start!82342 (and (array_inv!21820 _values!1386) e!540921)))

(declare-fun mapIsEmpty!33919 () Bool)

(declare-fun mapRes!33919 () Bool)

(assert (=> mapIsEmpty!33919 mapRes!33919))

(declare-fun mapNonEmpty!33919 () Bool)

(declare-fun tp!64714 () Bool)

(declare-fun e!540919 () Bool)

(assert (=> mapNonEmpty!33919 (= mapRes!33919 (and tp!64714 e!540919))))

(declare-fun mapRest!33919 () (Array (_ BitVec 32) ValueCell!10165))

(declare-fun mapValue!33919 () ValueCell!10165)

(declare-fun mapKey!33919 () (_ BitVec 32))

(assert (=> mapNonEmpty!33919 (= (arr!28217 _values!1386) (store mapRest!33919 mapKey!33919 mapValue!33919))))

(declare-fun b!959522 () Bool)

(declare-fun tp_is_empty!21293 () Bool)

(assert (=> b!959522 (= e!540919 tp_is_empty!21293)))

(declare-fun b!959523 () Bool)

(declare-fun e!540920 () Bool)

(assert (=> b!959523 (= e!540921 (and e!540920 mapRes!33919))))

(declare-fun condMapEmpty!33919 () Bool)

(declare-fun mapDefault!33919 () ValueCell!10165)

