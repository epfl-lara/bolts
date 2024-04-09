; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72760 () Bool)

(assert start!72760)

(declare-fun res!573582 () Bool)

(declare-fun e!471058 () Bool)

(assert (=> start!72760 (=> (not res!573582) (not e!471058))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47786 0))(
  ( (array!47787 (arr!22920 (Array (_ BitVec 32) (_ BitVec 64))) (size!23361 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47786)

(assert (=> start!72760 (= res!573582 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23361 _keys!868))))))

(assert (=> start!72760 e!471058))

(assert (=> start!72760 true))

(declare-fun array_inv!18208 (array!47786) Bool)

(assert (=> start!72760 (array_inv!18208 _keys!868)))

(declare-datatypes ((V!26091 0))(
  ( (V!26092 (val!7939 Int)) )
))
(declare-datatypes ((ValueCell!7452 0))(
  ( (ValueCellFull!7452 (v!10360 V!26091)) (EmptyCell!7452) )
))
(declare-datatypes ((array!47788 0))(
  ( (array!47789 (arr!22921 (Array (_ BitVec 32) ValueCell!7452)) (size!23362 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47788)

(declare-fun e!471059 () Bool)

(declare-fun array_inv!18209 (array!47788) Bool)

(assert (=> start!72760 (and (array_inv!18209 _values!688) e!471059)))

(declare-fun mapIsEmpty!25274 () Bool)

(declare-fun mapRes!25274 () Bool)

(assert (=> mapIsEmpty!25274 mapRes!25274))

(declare-fun b!844001 () Bool)

(declare-fun res!573581 () Bool)

(assert (=> b!844001 (=> (not res!573581) (not e!471058))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47786 (_ BitVec 32)) Bool)

(assert (=> b!844001 (= res!573581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844002 () Bool)

(declare-fun res!573579 () Bool)

(assert (=> b!844002 (=> (not res!573579) (not e!471058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844002 (= res!573579 (validMask!0 mask!1196))))

(declare-fun b!844003 () Bool)

(assert (=> b!844003 (= e!471058 false)))

(declare-fun lt!381186 () Bool)

(declare-datatypes ((List!16331 0))(
  ( (Nil!16328) (Cons!16327 (h!17458 (_ BitVec 64)) (t!22710 List!16331)) )
))
(declare-fun arrayNoDuplicates!0 (array!47786 (_ BitVec 32) List!16331) Bool)

(assert (=> b!844003 (= lt!381186 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16328))))

(declare-fun b!844004 () Bool)

(declare-fun e!471056 () Bool)

(declare-fun tp_is_empty!15783 () Bool)

(assert (=> b!844004 (= e!471056 tp_is_empty!15783)))

(declare-fun mapNonEmpty!25274 () Bool)

(declare-fun tp!48593 () Bool)

(assert (=> mapNonEmpty!25274 (= mapRes!25274 (and tp!48593 e!471056))))

(declare-fun mapRest!25274 () (Array (_ BitVec 32) ValueCell!7452))

(declare-fun mapValue!25274 () ValueCell!7452)

(declare-fun mapKey!25274 () (_ BitVec 32))

(assert (=> mapNonEmpty!25274 (= (arr!22921 _values!688) (store mapRest!25274 mapKey!25274 mapValue!25274))))

(declare-fun b!844005 () Bool)

(declare-fun res!573580 () Bool)

(assert (=> b!844005 (=> (not res!573580) (not e!471058))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844005 (= res!573580 (and (= (size!23362 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23361 _keys!868) (size!23362 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844006 () Bool)

(declare-fun e!471060 () Bool)

(assert (=> b!844006 (= e!471059 (and e!471060 mapRes!25274))))

(declare-fun condMapEmpty!25274 () Bool)

(declare-fun mapDefault!25274 () ValueCell!7452)

(assert (=> b!844006 (= condMapEmpty!25274 (= (arr!22921 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7452)) mapDefault!25274)))))

(declare-fun b!844007 () Bool)

(assert (=> b!844007 (= e!471060 tp_is_empty!15783)))

(assert (= (and start!72760 res!573582) b!844002))

(assert (= (and b!844002 res!573579) b!844005))

(assert (= (and b!844005 res!573580) b!844001))

(assert (= (and b!844001 res!573581) b!844003))

(assert (= (and b!844006 condMapEmpty!25274) mapIsEmpty!25274))

(assert (= (and b!844006 (not condMapEmpty!25274)) mapNonEmpty!25274))

(get-info :version)

(assert (= (and mapNonEmpty!25274 ((_ is ValueCellFull!7452) mapValue!25274)) b!844004))

(assert (= (and b!844006 ((_ is ValueCellFull!7452) mapDefault!25274)) b!844007))

(assert (= start!72760 b!844006))

(declare-fun m!786485 () Bool)

(assert (=> b!844003 m!786485))

(declare-fun m!786487 () Bool)

(assert (=> start!72760 m!786487))

(declare-fun m!786489 () Bool)

(assert (=> start!72760 m!786489))

(declare-fun m!786491 () Bool)

(assert (=> mapNonEmpty!25274 m!786491))

(declare-fun m!786493 () Bool)

(assert (=> b!844002 m!786493))

(declare-fun m!786495 () Bool)

(assert (=> b!844001 m!786495))

(check-sat (not start!72760) (not b!844001) tp_is_empty!15783 (not b!844002) (not b!844003) (not mapNonEmpty!25274))
(check-sat)
