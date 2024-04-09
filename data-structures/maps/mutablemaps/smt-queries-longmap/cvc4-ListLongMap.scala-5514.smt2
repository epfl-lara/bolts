; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72900 () Bool)

(assert start!72900)

(declare-fun b_free!13787 () Bool)

(declare-fun b_next!13787 () Bool)

(assert (=> start!72900 (= b_free!13787 (not b_next!13787))))

(declare-fun tp!48865 () Bool)

(declare-fun b_and!22891 () Bool)

(assert (=> start!72900 (= tp!48865 b_and!22891)))

(declare-fun b!845719 () Bool)

(declare-fun e!472107 () Bool)

(declare-fun tp_is_empty!15923 () Bool)

(assert (=> b!845719 (= e!472107 tp_is_empty!15923)))

(declare-fun b!845720 () Bool)

(declare-fun res!574672 () Bool)

(declare-fun e!472108 () Bool)

(assert (=> b!845720 (=> (not res!574672) (not e!472108))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48046 0))(
  ( (array!48047 (arr!23050 (Array (_ BitVec 32) (_ BitVec 64))) (size!23491 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48046)

(assert (=> b!845720 (= res!574672 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23491 _keys!868))))))

(declare-fun mapNonEmpty!25484 () Bool)

(declare-fun mapRes!25484 () Bool)

(declare-fun tp!48866 () Bool)

(assert (=> mapNonEmpty!25484 (= mapRes!25484 (and tp!48866 e!472107))))

(declare-fun mapKey!25484 () (_ BitVec 32))

(declare-datatypes ((V!26277 0))(
  ( (V!26278 (val!8009 Int)) )
))
(declare-datatypes ((ValueCell!7522 0))(
  ( (ValueCellFull!7522 (v!10430 V!26277)) (EmptyCell!7522) )
))
(declare-fun mapValue!25484 () ValueCell!7522)

(declare-datatypes ((array!48048 0))(
  ( (array!48049 (arr!23051 (Array (_ BitVec 32) ValueCell!7522)) (size!23492 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48048)

(declare-fun mapRest!25484 () (Array (_ BitVec 32) ValueCell!7522))

(assert (=> mapNonEmpty!25484 (= (arr!23051 _values!688) (store mapRest!25484 mapKey!25484 mapValue!25484))))

(declare-fun res!574667 () Bool)

(assert (=> start!72900 (=> (not res!574667) (not e!472108))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72900 (= res!574667 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23491 _keys!868))))))

(assert (=> start!72900 e!472108))

(assert (=> start!72900 true))

(assert (=> start!72900 tp!48865))

(declare-fun array_inv!18296 (array!48046) Bool)

(assert (=> start!72900 (array_inv!18296 _keys!868)))

(declare-fun e!472110 () Bool)

(declare-fun array_inv!18297 (array!48048) Bool)

(assert (=> start!72900 (and (array_inv!18297 _values!688) e!472110)))

(assert (=> start!72900 tp_is_empty!15923))

(declare-fun b!845721 () Bool)

(declare-fun res!574670 () Bool)

(assert (=> b!845721 (=> (not res!574670) (not e!472108))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845721 (= res!574670 (validKeyInArray!0 k!854))))

(declare-fun b!845722 () Bool)

(assert (=> b!845722 (= e!472108 false)))

(declare-datatypes ((tuple2!10478 0))(
  ( (tuple2!10479 (_1!5249 (_ BitVec 64)) (_2!5249 V!26277)) )
))
(declare-datatypes ((List!16389 0))(
  ( (Nil!16386) (Cons!16385 (h!17516 tuple2!10478) (t!22768 List!16389)) )
))
(declare-datatypes ((ListLongMap!9261 0))(
  ( (ListLongMap!9262 (toList!4646 List!16389)) )
))
(declare-fun lt!381396 () ListLongMap!9261)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26277)

(declare-fun zeroValue!654 () V!26277)

(declare-fun getCurrentListMapNoExtraKeys!2635 (array!48046 array!48048 (_ BitVec 32) (_ BitVec 32) V!26277 V!26277 (_ BitVec 32) Int) ListLongMap!9261)

(assert (=> b!845722 (= lt!381396 (getCurrentListMapNoExtraKeys!2635 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!25484 () Bool)

(assert (=> mapIsEmpty!25484 mapRes!25484))

(declare-fun b!845723 () Bool)

(declare-fun res!574671 () Bool)

(assert (=> b!845723 (=> (not res!574671) (not e!472108))))

(assert (=> b!845723 (= res!574671 (and (= (select (arr!23050 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!845724 () Bool)

(declare-fun res!574674 () Bool)

(assert (=> b!845724 (=> (not res!574674) (not e!472108))))

(assert (=> b!845724 (= res!574674 (and (= (size!23492 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23491 _keys!868) (size!23492 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!845725 () Bool)

(declare-fun res!574668 () Bool)

(assert (=> b!845725 (=> (not res!574668) (not e!472108))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48046 (_ BitVec 32)) Bool)

(assert (=> b!845725 (= res!574668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!845726 () Bool)

(declare-fun res!574669 () Bool)

(assert (=> b!845726 (=> (not res!574669) (not e!472108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845726 (= res!574669 (validMask!0 mask!1196))))

(declare-fun b!845727 () Bool)

(declare-fun res!574673 () Bool)

(assert (=> b!845727 (=> (not res!574673) (not e!472108))))

(declare-datatypes ((List!16390 0))(
  ( (Nil!16387) (Cons!16386 (h!17517 (_ BitVec 64)) (t!22769 List!16390)) )
))
(declare-fun arrayNoDuplicates!0 (array!48046 (_ BitVec 32) List!16390) Bool)

(assert (=> b!845727 (= res!574673 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16387))))

(declare-fun b!845728 () Bool)

(declare-fun e!472109 () Bool)

(assert (=> b!845728 (= e!472109 tp_is_empty!15923)))

(declare-fun b!845729 () Bool)

(assert (=> b!845729 (= e!472110 (and e!472109 mapRes!25484))))

(declare-fun condMapEmpty!25484 () Bool)

(declare-fun mapDefault!25484 () ValueCell!7522)

