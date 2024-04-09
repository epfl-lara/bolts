; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20744 () Bool)

(assert start!20744)

(declare-fun b_free!5391 () Bool)

(declare-fun b_next!5391 () Bool)

(assert (=> start!20744 (= b_free!5391 (not b_next!5391))))

(declare-fun tp!19205 () Bool)

(declare-fun b_and!12155 () Bool)

(assert (=> start!20744 (= tp!19205 b_and!12155)))

(declare-fun b!207432 () Bool)

(declare-fun res!100726 () Bool)

(declare-fun e!135430 () Bool)

(assert (=> b!207432 (=> (not res!100726) (not e!135430))))

(declare-datatypes ((array!9700 0))(
  ( (array!9701 (arr!4600 (Array (_ BitVec 32) (_ BitVec 64))) (size!4925 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9700)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!207432 (= res!100726 (= (select (arr!4600 _keys!825) i!601) k0!843))))

(declare-fun b!207433 () Bool)

(declare-fun res!100729 () Bool)

(assert (=> b!207433 (=> (not res!100729) (not e!135430))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9700 (_ BitVec 32)) Bool)

(assert (=> b!207433 (= res!100729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8939 () Bool)

(declare-fun mapRes!8939 () Bool)

(declare-fun tp!19204 () Bool)

(declare-fun e!135428 () Bool)

(assert (=> mapNonEmpty!8939 (= mapRes!8939 (and tp!19204 e!135428))))

(declare-datatypes ((V!6643 0))(
  ( (V!6644 (val!2668 Int)) )
))
(declare-datatypes ((ValueCell!2280 0))(
  ( (ValueCellFull!2280 (v!4634 V!6643)) (EmptyCell!2280) )
))
(declare-fun mapRest!8939 () (Array (_ BitVec 32) ValueCell!2280))

(declare-fun mapValue!8939 () ValueCell!2280)

(declare-fun mapKey!8939 () (_ BitVec 32))

(declare-datatypes ((array!9702 0))(
  ( (array!9703 (arr!4601 (Array (_ BitVec 32) ValueCell!2280)) (size!4926 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9702)

(assert (=> mapNonEmpty!8939 (= (arr!4601 _values!649) (store mapRest!8939 mapKey!8939 mapValue!8939))))

(declare-fun b!207434 () Bool)

(assert (=> b!207434 (= e!135430 (not true))))

(declare-datatypes ((tuple2!4046 0))(
  ( (tuple2!4047 (_1!2033 (_ BitVec 64)) (_2!2033 V!6643)) )
))
(declare-datatypes ((List!2961 0))(
  ( (Nil!2958) (Cons!2957 (h!3599 tuple2!4046) (t!7900 List!2961)) )
))
(declare-datatypes ((ListLongMap!2973 0))(
  ( (ListLongMap!2974 (toList!1502 List!2961)) )
))
(declare-fun lt!106327 () ListLongMap!2973)

(declare-fun zeroValue!615 () V!6643)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6643)

(declare-fun getCurrentListMap!1064 (array!9700 array!9702 (_ BitVec 32) (_ BitVec 32) V!6643 V!6643 (_ BitVec 32) Int) ListLongMap!2973)

(assert (=> b!207434 (= lt!106327 (getCurrentListMap!1064 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106333 () ListLongMap!2973)

(declare-fun lt!106332 () array!9702)

(assert (=> b!207434 (= lt!106333 (getCurrentListMap!1064 _keys!825 lt!106332 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106328 () ListLongMap!2973)

(declare-fun lt!106329 () ListLongMap!2973)

(assert (=> b!207434 (and (= lt!106328 lt!106329) (= lt!106329 lt!106328))))

(declare-fun lt!106331 () ListLongMap!2973)

(declare-fun v!520 () V!6643)

(declare-fun +!519 (ListLongMap!2973 tuple2!4046) ListLongMap!2973)

(assert (=> b!207434 (= lt!106329 (+!519 lt!106331 (tuple2!4047 k0!843 v!520)))))

(declare-datatypes ((Unit!6333 0))(
  ( (Unit!6334) )
))
(declare-fun lt!106330 () Unit!6333)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!177 (array!9700 array!9702 (_ BitVec 32) (_ BitVec 32) V!6643 V!6643 (_ BitVec 32) (_ BitVec 64) V!6643 (_ BitVec 32) Int) Unit!6333)

(assert (=> b!207434 (= lt!106330 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!177 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!435 (array!9700 array!9702 (_ BitVec 32) (_ BitVec 32) V!6643 V!6643 (_ BitVec 32) Int) ListLongMap!2973)

(assert (=> b!207434 (= lt!106328 (getCurrentListMapNoExtraKeys!435 _keys!825 lt!106332 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207434 (= lt!106332 (array!9703 (store (arr!4601 _values!649) i!601 (ValueCellFull!2280 v!520)) (size!4926 _values!649)))))

(assert (=> b!207434 (= lt!106331 (getCurrentListMapNoExtraKeys!435 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207435 () Bool)

(declare-fun res!100732 () Bool)

(assert (=> b!207435 (=> (not res!100732) (not e!135430))))

(declare-datatypes ((List!2962 0))(
  ( (Nil!2959) (Cons!2958 (h!3600 (_ BitVec 64)) (t!7901 List!2962)) )
))
(declare-fun arrayNoDuplicates!0 (array!9700 (_ BitVec 32) List!2962) Bool)

(assert (=> b!207435 (= res!100732 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2959))))

(declare-fun b!207436 () Bool)

(declare-fun res!100730 () Bool)

(assert (=> b!207436 (=> (not res!100730) (not e!135430))))

(assert (=> b!207436 (= res!100730 (and (= (size!4926 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4925 _keys!825) (size!4926 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!207437 () Bool)

(declare-fun e!135426 () Bool)

(declare-fun tp_is_empty!5247 () Bool)

(assert (=> b!207437 (= e!135426 tp_is_empty!5247)))

(declare-fun b!207438 () Bool)

(declare-fun res!100727 () Bool)

(assert (=> b!207438 (=> (not res!100727) (not e!135430))))

(assert (=> b!207438 (= res!100727 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4925 _keys!825))))))

(declare-fun b!207439 () Bool)

(declare-fun res!100731 () Bool)

(assert (=> b!207439 (=> (not res!100731) (not e!135430))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207439 (= res!100731 (validKeyInArray!0 k0!843))))

(declare-fun b!207440 () Bool)

(assert (=> b!207440 (= e!135428 tp_is_empty!5247)))

(declare-fun mapIsEmpty!8939 () Bool)

(assert (=> mapIsEmpty!8939 mapRes!8939))

(declare-fun b!207441 () Bool)

(declare-fun e!135427 () Bool)

(assert (=> b!207441 (= e!135427 (and e!135426 mapRes!8939))))

(declare-fun condMapEmpty!8939 () Bool)

(declare-fun mapDefault!8939 () ValueCell!2280)

(assert (=> b!207441 (= condMapEmpty!8939 (= (arr!4601 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2280)) mapDefault!8939)))))

(declare-fun res!100728 () Bool)

(assert (=> start!20744 (=> (not res!100728) (not e!135430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20744 (= res!100728 (validMask!0 mask!1149))))

(assert (=> start!20744 e!135430))

(declare-fun array_inv!3037 (array!9702) Bool)

(assert (=> start!20744 (and (array_inv!3037 _values!649) e!135427)))

(assert (=> start!20744 true))

(assert (=> start!20744 tp_is_empty!5247))

(declare-fun array_inv!3038 (array!9700) Bool)

(assert (=> start!20744 (array_inv!3038 _keys!825)))

(assert (=> start!20744 tp!19205))

(assert (= (and start!20744 res!100728) b!207436))

(assert (= (and b!207436 res!100730) b!207433))

(assert (= (and b!207433 res!100729) b!207435))

(assert (= (and b!207435 res!100732) b!207438))

(assert (= (and b!207438 res!100727) b!207439))

(assert (= (and b!207439 res!100731) b!207432))

(assert (= (and b!207432 res!100726) b!207434))

(assert (= (and b!207441 condMapEmpty!8939) mapIsEmpty!8939))

(assert (= (and b!207441 (not condMapEmpty!8939)) mapNonEmpty!8939))

(get-info :version)

(assert (= (and mapNonEmpty!8939 ((_ is ValueCellFull!2280) mapValue!8939)) b!207440))

(assert (= (and b!207441 ((_ is ValueCellFull!2280) mapDefault!8939)) b!207437))

(assert (= start!20744 b!207441))

(declare-fun m!235197 () Bool)

(assert (=> b!207432 m!235197))

(declare-fun m!235199 () Bool)

(assert (=> b!207434 m!235199))

(declare-fun m!235201 () Bool)

(assert (=> b!207434 m!235201))

(declare-fun m!235203 () Bool)

(assert (=> b!207434 m!235203))

(declare-fun m!235205 () Bool)

(assert (=> b!207434 m!235205))

(declare-fun m!235207 () Bool)

(assert (=> b!207434 m!235207))

(declare-fun m!235209 () Bool)

(assert (=> b!207434 m!235209))

(declare-fun m!235211 () Bool)

(assert (=> b!207434 m!235211))

(declare-fun m!235213 () Bool)

(assert (=> b!207439 m!235213))

(declare-fun m!235215 () Bool)

(assert (=> mapNonEmpty!8939 m!235215))

(declare-fun m!235217 () Bool)

(assert (=> b!207433 m!235217))

(declare-fun m!235219 () Bool)

(assert (=> b!207435 m!235219))

(declare-fun m!235221 () Bool)

(assert (=> start!20744 m!235221))

(declare-fun m!235223 () Bool)

(assert (=> start!20744 m!235223))

(declare-fun m!235225 () Bool)

(assert (=> start!20744 m!235225))

(check-sat (not mapNonEmpty!8939) (not b!207435) b_and!12155 (not b!207439) tp_is_empty!5247 (not start!20744) (not b_next!5391) (not b!207434) (not b!207433))
(check-sat b_and!12155 (not b_next!5391))
