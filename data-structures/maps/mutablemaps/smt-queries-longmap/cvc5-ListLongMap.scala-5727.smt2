; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74186 () Bool)

(assert start!74186)

(declare-fun b!872212 () Bool)

(declare-fun res!592923 () Bool)

(declare-fun e!485730 () Bool)

(assert (=> b!872212 (=> (not res!592923) (not e!485730))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50518 0))(
  ( (array!50519 (arr!24285 (Array (_ BitVec 32) (_ BitVec 64))) (size!24726 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50518)

(declare-datatypes ((V!27977 0))(
  ( (V!27978 (val!8646 Int)) )
))
(declare-datatypes ((ValueCell!8159 0))(
  ( (ValueCellFull!8159 (v!11067 V!27977)) (EmptyCell!8159) )
))
(declare-datatypes ((array!50520 0))(
  ( (array!50521 (arr!24286 (Array (_ BitVec 32) ValueCell!8159)) (size!24727 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50520)

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!872212 (= res!592923 (and (= (size!24727 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24726 _keys!868) (size!24727 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872213 () Bool)

(assert (=> b!872213 (= e!485730 false)))

(declare-fun lt!395556 () Bool)

(declare-datatypes ((List!17324 0))(
  ( (Nil!17321) (Cons!17320 (h!18451 (_ BitVec 64)) (t!24369 List!17324)) )
))
(declare-fun arrayNoDuplicates!0 (array!50518 (_ BitVec 32) List!17324) Bool)

(assert (=> b!872213 (= lt!395556 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17321))))

(declare-fun mapIsEmpty!27398 () Bool)

(declare-fun mapRes!27398 () Bool)

(assert (=> mapIsEmpty!27398 mapRes!27398))

(declare-fun b!872214 () Bool)

(declare-fun res!592926 () Bool)

(assert (=> b!872214 (=> (not res!592926) (not e!485730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872214 (= res!592926 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!27398 () Bool)

(declare-fun tp!52598 () Bool)

(declare-fun e!485733 () Bool)

(assert (=> mapNonEmpty!27398 (= mapRes!27398 (and tp!52598 e!485733))))

(declare-fun mapKey!27398 () (_ BitVec 32))

(declare-fun mapValue!27398 () ValueCell!8159)

(declare-fun mapRest!27398 () (Array (_ BitVec 32) ValueCell!8159))

(assert (=> mapNonEmpty!27398 (= (arr!24286 _values!688) (store mapRest!27398 mapKey!27398 mapValue!27398))))

(declare-fun b!872215 () Bool)

(declare-fun e!485729 () Bool)

(declare-fun tp_is_empty!17197 () Bool)

(assert (=> b!872215 (= e!485729 tp_is_empty!17197)))

(declare-fun b!872216 () Bool)

(declare-fun res!592924 () Bool)

(assert (=> b!872216 (=> (not res!592924) (not e!485730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50518 (_ BitVec 32)) Bool)

(assert (=> b!872216 (= res!592924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!872217 () Bool)

(declare-fun e!485731 () Bool)

(assert (=> b!872217 (= e!485731 (and e!485729 mapRes!27398))))

(declare-fun condMapEmpty!27398 () Bool)

(declare-fun mapDefault!27398 () ValueCell!8159)

