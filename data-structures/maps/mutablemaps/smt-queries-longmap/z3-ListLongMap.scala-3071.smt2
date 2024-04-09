; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43288 () Bool)

(assert start!43288)

(declare-fun b_free!12147 () Bool)

(declare-fun b_next!12147 () Bool)

(assert (=> start!43288 (= b_free!12147 (not b_next!12147))))

(declare-fun tp!42712 () Bool)

(declare-fun b_and!20917 () Bool)

(assert (=> start!43288 (= tp!42712 b_and!20917)))

(declare-fun b!479315 () Bool)

(declare-fun res!285985 () Bool)

(declare-fun e!282012 () Bool)

(assert (=> b!479315 (=> (not res!285985) (not e!282012))))

(declare-datatypes ((array!30955 0))(
  ( (array!30956 (arr!14881 (Array (_ BitVec 32) (_ BitVec 64))) (size!15239 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30955)

(declare-datatypes ((List!9132 0))(
  ( (Nil!9129) (Cons!9128 (h!9984 (_ BitVec 64)) (t!15346 List!9132)) )
))
(declare-fun arrayNoDuplicates!0 (array!30955 (_ BitVec 32) List!9132) Bool)

(assert (=> b!479315 (= res!285985 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9129))))

(declare-fun b!479316 () Bool)

(declare-fun res!285984 () Bool)

(assert (=> b!479316 (=> (not res!285984) (not e!282012))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30955 (_ BitVec 32)) Bool)

(assert (=> b!479316 (= res!285984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479317 () Bool)

(declare-fun res!285987 () Bool)

(assert (=> b!479317 (=> (not res!285987) (not e!282012))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19283 0))(
  ( (V!19284 (val!6877 Int)) )
))
(declare-datatypes ((ValueCell!6468 0))(
  ( (ValueCellFull!6468 (v!9162 V!19283)) (EmptyCell!6468) )
))
(declare-datatypes ((array!30957 0))(
  ( (array!30958 (arr!14882 (Array (_ BitVec 32) ValueCell!6468)) (size!15240 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30957)

(assert (=> b!479317 (= res!285987 (and (= (size!15240 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15239 _keys!1874) (size!15240 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!22186 () Bool)

(declare-fun mapRes!22186 () Bool)

(assert (=> mapIsEmpty!22186 mapRes!22186))

(declare-fun b!479318 () Bool)

(declare-fun e!282009 () Bool)

(declare-fun tp_is_empty!13659 () Bool)

(assert (=> b!479318 (= e!282009 tp_is_empty!13659)))

(declare-fun b!479319 () Bool)

(declare-fun e!282011 () Bool)

(assert (=> b!479319 (= e!282011 (and e!282009 mapRes!22186))))

(declare-fun condMapEmpty!22186 () Bool)

(declare-fun mapDefault!22186 () ValueCell!6468)

(assert (=> b!479319 (= condMapEmpty!22186 (= (arr!14882 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6468)) mapDefault!22186)))))

(declare-fun b!479320 () Bool)

(assert (=> b!479320 (= e!282012 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun minValue!1458 () V!19283)

(declare-fun lt!217835 () Bool)

(declare-fun zeroValue!1458 () V!19283)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9020 0))(
  ( (tuple2!9021 (_1!4520 (_ BitVec 64)) (_2!4520 V!19283)) )
))
(declare-datatypes ((List!9133 0))(
  ( (Nil!9130) (Cons!9129 (h!9985 tuple2!9020) (t!15347 List!9133)) )
))
(declare-datatypes ((ListLongMap!7947 0))(
  ( (ListLongMap!7948 (toList!3989 List!9133)) )
))
(declare-fun contains!2596 (ListLongMap!7947 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2281 (array!30955 array!30957 (_ BitVec 32) (_ BitVec 32) V!19283 V!19283 (_ BitVec 32) Int) ListLongMap!7947)

(assert (=> b!479320 (= lt!217835 (contains!2596 (getCurrentListMap!2281 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun mapNonEmpty!22186 () Bool)

(declare-fun tp!42711 () Bool)

(declare-fun e!282013 () Bool)

(assert (=> mapNonEmpty!22186 (= mapRes!22186 (and tp!42711 e!282013))))

(declare-fun mapKey!22186 () (_ BitVec 32))

(declare-fun mapRest!22186 () (Array (_ BitVec 32) ValueCell!6468))

(declare-fun mapValue!22186 () ValueCell!6468)

(assert (=> mapNonEmpty!22186 (= (arr!14882 _values!1516) (store mapRest!22186 mapKey!22186 mapValue!22186))))

(declare-fun res!285986 () Bool)

(assert (=> start!43288 (=> (not res!285986) (not e!282012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43288 (= res!285986 (validMask!0 mask!2352))))

(assert (=> start!43288 e!282012))

(assert (=> start!43288 true))

(assert (=> start!43288 tp_is_empty!13659))

(declare-fun array_inv!10718 (array!30957) Bool)

(assert (=> start!43288 (and (array_inv!10718 _values!1516) e!282011)))

(assert (=> start!43288 tp!42712))

(declare-fun array_inv!10719 (array!30955) Bool)

(assert (=> start!43288 (array_inv!10719 _keys!1874)))

(declare-fun b!479321 () Bool)

(assert (=> b!479321 (= e!282013 tp_is_empty!13659)))

(assert (= (and start!43288 res!285986) b!479317))

(assert (= (and b!479317 res!285987) b!479316))

(assert (= (and b!479316 res!285984) b!479315))

(assert (= (and b!479315 res!285985) b!479320))

(assert (= (and b!479319 condMapEmpty!22186) mapIsEmpty!22186))

(assert (= (and b!479319 (not condMapEmpty!22186)) mapNonEmpty!22186))

(get-info :version)

(assert (= (and mapNonEmpty!22186 ((_ is ValueCellFull!6468) mapValue!22186)) b!479321))

(assert (= (and b!479319 ((_ is ValueCellFull!6468) mapDefault!22186)) b!479318))

(assert (= start!43288 b!479319))

(declare-fun m!461279 () Bool)

(assert (=> b!479320 m!461279))

(assert (=> b!479320 m!461279))

(declare-fun m!461281 () Bool)

(assert (=> b!479320 m!461281))

(declare-fun m!461283 () Bool)

(assert (=> b!479316 m!461283))

(declare-fun m!461285 () Bool)

(assert (=> b!479315 m!461285))

(declare-fun m!461287 () Bool)

(assert (=> start!43288 m!461287))

(declare-fun m!461289 () Bool)

(assert (=> start!43288 m!461289))

(declare-fun m!461291 () Bool)

(assert (=> start!43288 m!461291))

(declare-fun m!461293 () Bool)

(assert (=> mapNonEmpty!22186 m!461293))

(check-sat (not b_next!12147) (not b!479320) b_and!20917 (not mapNonEmpty!22186) (not b!479315) (not b!479316) tp_is_empty!13659 (not start!43288))
(check-sat b_and!20917 (not b_next!12147))
