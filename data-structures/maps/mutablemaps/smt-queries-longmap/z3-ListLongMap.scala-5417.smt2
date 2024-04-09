; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72316 () Bool)

(assert start!72316)

(declare-fun res!569622 () Bool)

(declare-fun e!467405 () Bool)

(assert (=> start!72316 (=> (not res!569622) (not e!467405))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!46938 0))(
  ( (array!46939 (arr!22496 (Array (_ BitVec 32) (_ BitVec 64))) (size!22937 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46938)

(assert (=> start!72316 (= res!569622 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22937 _keys!868))))))

(assert (=> start!72316 e!467405))

(assert (=> start!72316 true))

(declare-fun array_inv!17906 (array!46938) Bool)

(assert (=> start!72316 (array_inv!17906 _keys!868)))

(declare-datatypes ((V!25499 0))(
  ( (V!25500 (val!7717 Int)) )
))
(declare-datatypes ((ValueCell!7230 0))(
  ( (ValueCellFull!7230 (v!10138 V!25499)) (EmptyCell!7230) )
))
(declare-datatypes ((array!46940 0))(
  ( (array!46941 (arr!22497 (Array (_ BitVec 32) ValueCell!7230)) (size!22938 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46940)

(declare-fun e!467404 () Bool)

(declare-fun array_inv!17907 (array!46940) Bool)

(assert (=> start!72316 (and (array_inv!17907 _values!688) e!467404)))

(declare-fun b!837395 () Bool)

(declare-fun res!569620 () Bool)

(assert (=> b!837395 (=> (not res!569620) (not e!467405))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!837395 (= res!569620 (and (= (size!22938 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22937 _keys!868) (size!22938 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837396 () Bool)

(declare-fun e!467403 () Bool)

(declare-fun tp_is_empty!15339 () Bool)

(assert (=> b!837396 (= e!467403 tp_is_empty!15339)))

(declare-fun mapNonEmpty!24608 () Bool)

(declare-fun mapRes!24608 () Bool)

(declare-fun tp!47603 () Bool)

(assert (=> mapNonEmpty!24608 (= mapRes!24608 (and tp!47603 e!467403))))

(declare-fun mapValue!24608 () ValueCell!7230)

(declare-fun mapKey!24608 () (_ BitVec 32))

(declare-fun mapRest!24608 () (Array (_ BitVec 32) ValueCell!7230))

(assert (=> mapNonEmpty!24608 (= (arr!22497 _values!688) (store mapRest!24608 mapKey!24608 mapValue!24608))))

(declare-fun b!837397 () Bool)

(assert (=> b!837397 (= e!467405 false)))

(declare-fun lt!380520 () Bool)

(declare-datatypes ((List!16083 0))(
  ( (Nil!16080) (Cons!16079 (h!17210 (_ BitVec 64)) (t!22462 List!16083)) )
))
(declare-fun arrayNoDuplicates!0 (array!46938 (_ BitVec 32) List!16083) Bool)

(assert (=> b!837397 (= lt!380520 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16080))))

(declare-fun b!837398 () Bool)

(declare-fun e!467406 () Bool)

(assert (=> b!837398 (= e!467404 (and e!467406 mapRes!24608))))

(declare-fun condMapEmpty!24608 () Bool)

(declare-fun mapDefault!24608 () ValueCell!7230)

(assert (=> b!837398 (= condMapEmpty!24608 (= (arr!22497 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7230)) mapDefault!24608)))))

(declare-fun b!837399 () Bool)

(declare-fun res!569619 () Bool)

(assert (=> b!837399 (=> (not res!569619) (not e!467405))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837399 (= res!569619 (validMask!0 mask!1196))))

(declare-fun b!837400 () Bool)

(assert (=> b!837400 (= e!467406 tp_is_empty!15339)))

(declare-fun b!837401 () Bool)

(declare-fun res!569621 () Bool)

(assert (=> b!837401 (=> (not res!569621) (not e!467405))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46938 (_ BitVec 32)) Bool)

(assert (=> b!837401 (= res!569621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!24608 () Bool)

(assert (=> mapIsEmpty!24608 mapRes!24608))

(assert (= (and start!72316 res!569622) b!837399))

(assert (= (and b!837399 res!569619) b!837395))

(assert (= (and b!837395 res!569620) b!837401))

(assert (= (and b!837401 res!569621) b!837397))

(assert (= (and b!837398 condMapEmpty!24608) mapIsEmpty!24608))

(assert (= (and b!837398 (not condMapEmpty!24608)) mapNonEmpty!24608))

(get-info :version)

(assert (= (and mapNonEmpty!24608 ((_ is ValueCellFull!7230) mapValue!24608)) b!837396))

(assert (= (and b!837398 ((_ is ValueCellFull!7230) mapDefault!24608)) b!837400))

(assert (= start!72316 b!837398))

(declare-fun m!782309 () Bool)

(assert (=> start!72316 m!782309))

(declare-fun m!782311 () Bool)

(assert (=> start!72316 m!782311))

(declare-fun m!782313 () Bool)

(assert (=> mapNonEmpty!24608 m!782313))

(declare-fun m!782315 () Bool)

(assert (=> b!837397 m!782315))

(declare-fun m!782317 () Bool)

(assert (=> b!837401 m!782317))

(declare-fun m!782319 () Bool)

(assert (=> b!837399 m!782319))

(check-sat (not b!837401) (not b!837397) (not b!837399) (not start!72316) (not mapNonEmpty!24608) tp_is_empty!15339)
(check-sat)
