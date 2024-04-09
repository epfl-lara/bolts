; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40618 () Bool)

(assert start!40618)

(declare-fun b_free!10621 () Bool)

(declare-fun b_next!10621 () Bool)

(assert (=> start!40618 (= b_free!10621 (not b_next!10621))))

(declare-fun tp!37683 () Bool)

(declare-fun b_and!18647 () Bool)

(assert (=> start!40618 (= tp!37683 b_and!18647)))

(declare-fun b!447947 () Bool)

(declare-fun res!266257 () Bool)

(declare-fun e!262903 () Bool)

(assert (=> b!447947 (=> (not res!266257) (not e!262903))))

(declare-datatypes ((array!27685 0))(
  ( (array!27686 (arr!13285 (Array (_ BitVec 32) (_ BitVec 64))) (size!13637 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27685)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17051 0))(
  ( (V!17052 (val!6024 Int)) )
))
(declare-datatypes ((ValueCell!5636 0))(
  ( (ValueCellFull!5636 (v!8275 V!17051)) (EmptyCell!5636) )
))
(declare-datatypes ((array!27687 0))(
  ( (array!27688 (arr!13286 (Array (_ BitVec 32) ValueCell!5636)) (size!13638 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27687)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!447947 (= res!266257 (and (= (size!13638 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13637 _keys!709) (size!13638 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447948 () Bool)

(declare-fun res!266255 () Bool)

(assert (=> b!447948 (=> (not res!266255) (not e!262903))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27685 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447948 (= res!266255 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!447949 () Bool)

(declare-fun e!262905 () Bool)

(assert (=> b!447949 (= e!262903 e!262905)))

(declare-fun res!266252 () Bool)

(assert (=> b!447949 (=> (not res!266252) (not e!262905))))

(declare-fun lt!204068 () array!27685)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27685 (_ BitVec 32)) Bool)

(assert (=> b!447949 (= res!266252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204068 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!447949 (= lt!204068 (array!27686 (store (arr!13285 _keys!709) i!563 k!794) (size!13637 _keys!709)))))

(declare-fun b!447950 () Bool)

(declare-fun res!266254 () Bool)

(assert (=> b!447950 (=> (not res!266254) (not e!262903))))

(declare-datatypes ((List!7942 0))(
  ( (Nil!7939) (Cons!7938 (h!8794 (_ BitVec 64)) (t!13712 List!7942)) )
))
(declare-fun arrayNoDuplicates!0 (array!27685 (_ BitVec 32) List!7942) Bool)

(assert (=> b!447950 (= res!266254 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7939))))

(declare-fun b!447951 () Bool)

(declare-fun res!266262 () Bool)

(assert (=> b!447951 (=> (not res!266262) (not e!262903))))

(assert (=> b!447951 (= res!266262 (or (= (select (arr!13285 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13285 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!447952 () Bool)

(assert (=> b!447952 (= e!262905 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7832 0))(
  ( (tuple2!7833 (_1!3926 (_ BitVec 64)) (_2!3926 V!17051)) )
))
(declare-datatypes ((List!7943 0))(
  ( (Nil!7940) (Cons!7939 (h!8795 tuple2!7832) (t!13713 List!7943)) )
))
(declare-datatypes ((ListLongMap!6759 0))(
  ( (ListLongMap!6760 (toList!3395 List!7943)) )
))
(declare-fun lt!204070 () ListLongMap!6759)

(declare-fun minValue!515 () V!17051)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17051)

(declare-fun v!412 () V!17051)

(declare-fun getCurrentListMapNoExtraKeys!1575 (array!27685 array!27687 (_ BitVec 32) (_ BitVec 32) V!17051 V!17051 (_ BitVec 32) Int) ListLongMap!6759)

(assert (=> b!447952 (= lt!204070 (getCurrentListMapNoExtraKeys!1575 lt!204068 (array!27688 (store (arr!13286 _values!549) i!563 (ValueCellFull!5636 v!412)) (size!13638 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204069 () ListLongMap!6759)

(assert (=> b!447952 (= lt!204069 (getCurrentListMapNoExtraKeys!1575 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447953 () Bool)

(declare-fun e!262902 () Bool)

(declare-fun tp_is_empty!11959 () Bool)

(assert (=> b!447953 (= e!262902 tp_is_empty!11959)))

(declare-fun b!447954 () Bool)

(declare-fun e!262904 () Bool)

(assert (=> b!447954 (= e!262904 tp_is_empty!11959)))

(declare-fun b!447955 () Bool)

(declare-fun res!266256 () Bool)

(assert (=> b!447955 (=> (not res!266256) (not e!262903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!447955 (= res!266256 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!19572 () Bool)

(declare-fun mapRes!19572 () Bool)

(declare-fun tp!37682 () Bool)

(assert (=> mapNonEmpty!19572 (= mapRes!19572 (and tp!37682 e!262902))))

(declare-fun mapValue!19572 () ValueCell!5636)

(declare-fun mapKey!19572 () (_ BitVec 32))

(declare-fun mapRest!19572 () (Array (_ BitVec 32) ValueCell!5636))

(assert (=> mapNonEmpty!19572 (= (arr!13286 _values!549) (store mapRest!19572 mapKey!19572 mapValue!19572))))

(declare-fun b!447956 () Bool)

(declare-fun res!266259 () Bool)

(assert (=> b!447956 (=> (not res!266259) (not e!262903))))

(assert (=> b!447956 (= res!266259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!447957 () Bool)

(declare-fun res!266261 () Bool)

(assert (=> b!447957 (=> (not res!266261) (not e!262905))))

(assert (=> b!447957 (= res!266261 (bvsle from!863 i!563))))

(declare-fun res!266251 () Bool)

(assert (=> start!40618 (=> (not res!266251) (not e!262903))))

(assert (=> start!40618 (= res!266251 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13637 _keys!709))))))

(assert (=> start!40618 e!262903))

(assert (=> start!40618 tp_is_empty!11959))

(assert (=> start!40618 tp!37683))

(assert (=> start!40618 true))

(declare-fun e!262901 () Bool)

(declare-fun array_inv!9622 (array!27687) Bool)

(assert (=> start!40618 (and (array_inv!9622 _values!549) e!262901)))

(declare-fun array_inv!9623 (array!27685) Bool)

(assert (=> start!40618 (array_inv!9623 _keys!709)))

(declare-fun b!447958 () Bool)

(declare-fun res!266253 () Bool)

(assert (=> b!447958 (=> (not res!266253) (not e!262903))))

(assert (=> b!447958 (= res!266253 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13637 _keys!709))))))

(declare-fun mapIsEmpty!19572 () Bool)

(assert (=> mapIsEmpty!19572 mapRes!19572))

(declare-fun b!447959 () Bool)

(declare-fun res!266260 () Bool)

(assert (=> b!447959 (=> (not res!266260) (not e!262905))))

(assert (=> b!447959 (= res!266260 (arrayNoDuplicates!0 lt!204068 #b00000000000000000000000000000000 Nil!7939))))

(declare-fun b!447960 () Bool)

(declare-fun res!266258 () Bool)

(assert (=> b!447960 (=> (not res!266258) (not e!262903))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!447960 (= res!266258 (validKeyInArray!0 k!794))))

(declare-fun b!447961 () Bool)

(assert (=> b!447961 (= e!262901 (and e!262904 mapRes!19572))))

(declare-fun condMapEmpty!19572 () Bool)

(declare-fun mapDefault!19572 () ValueCell!5636)

