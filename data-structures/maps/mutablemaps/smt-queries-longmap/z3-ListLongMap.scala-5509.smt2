; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72868 () Bool)

(assert start!72868)

(declare-fun b_free!13755 () Bool)

(declare-fun b_next!13755 () Bool)

(assert (=> start!72868 (= b_free!13755 (not b_next!13755))))

(declare-fun tp!48770 () Bool)

(declare-fun b_and!22859 () Bool)

(assert (=> start!72868 (= tp!48770 b_and!22859)))

(declare-fun res!574286 () Bool)

(declare-fun e!471868 () Bool)

(assert (=> start!72868 (=> (not res!574286) (not e!471868))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47986 0))(
  ( (array!47987 (arr!23020 (Array (_ BitVec 32) (_ BitVec 64))) (size!23461 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47986)

(assert (=> start!72868 (= res!574286 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23461 _keys!868))))))

(assert (=> start!72868 e!471868))

(assert (=> start!72868 true))

(assert (=> start!72868 tp!48770))

(declare-fun array_inv!18276 (array!47986) Bool)

(assert (=> start!72868 (array_inv!18276 _keys!868)))

(declare-datatypes ((V!26235 0))(
  ( (V!26236 (val!7993 Int)) )
))
(declare-datatypes ((ValueCell!7506 0))(
  ( (ValueCellFull!7506 (v!10414 V!26235)) (EmptyCell!7506) )
))
(declare-datatypes ((array!47988 0))(
  ( (array!47989 (arr!23021 (Array (_ BitVec 32) ValueCell!7506)) (size!23462 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47988)

(declare-fun e!471870 () Bool)

(declare-fun array_inv!18277 (array!47988) Bool)

(assert (=> start!72868 (and (array_inv!18277 _values!688) e!471870)))

(declare-fun tp_is_empty!15891 () Bool)

(assert (=> start!72868 tp_is_empty!15891))

(declare-fun b!845191 () Bool)

(declare-fun res!574288 () Bool)

(assert (=> b!845191 (=> (not res!574288) (not e!471868))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47986 (_ BitVec 32)) Bool)

(assert (=> b!845191 (= res!574288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25436 () Bool)

(declare-fun mapRes!25436 () Bool)

(declare-fun tp!48769 () Bool)

(declare-fun e!471866 () Bool)

(assert (=> mapNonEmpty!25436 (= mapRes!25436 (and tp!48769 e!471866))))

(declare-fun mapValue!25436 () ValueCell!7506)

(declare-fun mapKey!25436 () (_ BitVec 32))

(declare-fun mapRest!25436 () (Array (_ BitVec 32) ValueCell!7506))

(assert (=> mapNonEmpty!25436 (= (arr!23021 _values!688) (store mapRest!25436 mapKey!25436 mapValue!25436))))

(declare-fun b!845192 () Bool)

(declare-fun res!574284 () Bool)

(assert (=> b!845192 (=> (not res!574284) (not e!471868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845192 (= res!574284 (validMask!0 mask!1196))))

(declare-fun b!845193 () Bool)

(declare-fun res!574285 () Bool)

(assert (=> b!845193 (=> (not res!574285) (not e!471868))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!845193 (= res!574285 (and (= (select (arr!23020 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!845194 () Bool)

(declare-fun res!574290 () Bool)

(assert (=> b!845194 (=> (not res!574290) (not e!471868))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845194 (= res!574290 (validKeyInArray!0 k0!854))))

(declare-fun b!845195 () Bool)

(assert (=> b!845195 (= e!471866 tp_is_empty!15891)))

(declare-fun b!845196 () Bool)

(declare-fun res!574283 () Bool)

(assert (=> b!845196 (=> (not res!574283) (not e!471868))))

(assert (=> b!845196 (= res!574283 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23461 _keys!868))))))

(declare-fun b!845197 () Bool)

(declare-fun res!574287 () Bool)

(assert (=> b!845197 (=> (not res!574287) (not e!471868))))

(declare-datatypes ((List!16367 0))(
  ( (Nil!16364) (Cons!16363 (h!17494 (_ BitVec 64)) (t!22746 List!16367)) )
))
(declare-fun arrayNoDuplicates!0 (array!47986 (_ BitVec 32) List!16367) Bool)

(assert (=> b!845197 (= res!574287 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16364))))

(declare-fun b!845198 () Bool)

(declare-fun e!471869 () Bool)

(assert (=> b!845198 (= e!471870 (and e!471869 mapRes!25436))))

(declare-fun condMapEmpty!25436 () Bool)

(declare-fun mapDefault!25436 () ValueCell!7506)

(assert (=> b!845198 (= condMapEmpty!25436 (= (arr!23021 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7506)) mapDefault!25436)))))

(declare-fun b!845199 () Bool)

(declare-fun res!574289 () Bool)

(assert (=> b!845199 (=> (not res!574289) (not e!471868))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!845199 (= res!574289 (and (= (size!23462 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23461 _keys!868) (size!23462 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25436 () Bool)

(assert (=> mapIsEmpty!25436 mapRes!25436))

(declare-fun b!845200 () Bool)

(assert (=> b!845200 (= e!471869 tp_is_empty!15891)))

(declare-fun b!845201 () Bool)

(assert (=> b!845201 (= e!471868 false)))

(declare-datatypes ((tuple2!10454 0))(
  ( (tuple2!10455 (_1!5237 (_ BitVec 64)) (_2!5237 V!26235)) )
))
(declare-datatypes ((List!16368 0))(
  ( (Nil!16365) (Cons!16364 (h!17495 tuple2!10454) (t!22747 List!16368)) )
))
(declare-datatypes ((ListLongMap!9237 0))(
  ( (ListLongMap!9238 (toList!4634 List!16368)) )
))
(declare-fun lt!381348 () ListLongMap!9237)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26235)

(declare-fun zeroValue!654 () V!26235)

(declare-fun getCurrentListMapNoExtraKeys!2623 (array!47986 array!47988 (_ BitVec 32) (_ BitVec 32) V!26235 V!26235 (_ BitVec 32) Int) ListLongMap!9237)

(assert (=> b!845201 (= lt!381348 (getCurrentListMapNoExtraKeys!2623 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!72868 res!574286) b!845192))

(assert (= (and b!845192 res!574284) b!845199))

(assert (= (and b!845199 res!574289) b!845191))

(assert (= (and b!845191 res!574288) b!845197))

(assert (= (and b!845197 res!574287) b!845196))

(assert (= (and b!845196 res!574283) b!845194))

(assert (= (and b!845194 res!574290) b!845193))

(assert (= (and b!845193 res!574285) b!845201))

(assert (= (and b!845198 condMapEmpty!25436) mapIsEmpty!25436))

(assert (= (and b!845198 (not condMapEmpty!25436)) mapNonEmpty!25436))

(get-info :version)

(assert (= (and mapNonEmpty!25436 ((_ is ValueCellFull!7506) mapValue!25436)) b!845195))

(assert (= (and b!845198 ((_ is ValueCellFull!7506) mapDefault!25436)) b!845200))

(assert (= start!72868 b!845198))

(declare-fun m!787157 () Bool)

(assert (=> mapNonEmpty!25436 m!787157))

(declare-fun m!787159 () Bool)

(assert (=> b!845197 m!787159))

(declare-fun m!787161 () Bool)

(assert (=> b!845193 m!787161))

(declare-fun m!787163 () Bool)

(assert (=> start!72868 m!787163))

(declare-fun m!787165 () Bool)

(assert (=> start!72868 m!787165))

(declare-fun m!787167 () Bool)

(assert (=> b!845201 m!787167))

(declare-fun m!787169 () Bool)

(assert (=> b!845194 m!787169))

(declare-fun m!787171 () Bool)

(assert (=> b!845192 m!787171))

(declare-fun m!787173 () Bool)

(assert (=> b!845191 m!787173))

(check-sat (not b!845197) (not b!845192) (not b!845201) (not b!845191) (not b!845194) (not b_next!13755) b_and!22859 tp_is_empty!15891 (not mapNonEmpty!25436) (not start!72868))
(check-sat b_and!22859 (not b_next!13755))
