; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20492 () Bool)

(assert start!20492)

(declare-fun b_free!5139 () Bool)

(declare-fun b_next!5139 () Bool)

(assert (=> start!20492 (= b_free!5139 (not b_next!5139))))

(declare-fun tp!18448 () Bool)

(declare-fun b_and!11903 () Bool)

(assert (=> start!20492 (= tp!18448 b_and!11903)))

(declare-fun b!203095 () Bool)

(declare-fun res!97525 () Bool)

(declare-fun e!132994 () Bool)

(assert (=> b!203095 (=> (not res!97525) (not e!132994))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!203095 (= res!97525 (validKeyInArray!0 k0!843))))

(declare-fun b!203096 () Bool)

(declare-fun e!132990 () Bool)

(declare-fun tp_is_empty!4995 () Bool)

(assert (=> b!203096 (= e!132990 tp_is_empty!4995)))

(declare-fun b!203097 () Bool)

(declare-fun e!132993 () Bool)

(declare-fun e!132991 () Bool)

(declare-fun mapRes!8561 () Bool)

(assert (=> b!203097 (= e!132993 (and e!132991 mapRes!8561))))

(declare-fun condMapEmpty!8561 () Bool)

(declare-datatypes ((V!6307 0))(
  ( (V!6308 (val!2542 Int)) )
))
(declare-datatypes ((ValueCell!2154 0))(
  ( (ValueCellFull!2154 (v!4508 V!6307)) (EmptyCell!2154) )
))
(declare-datatypes ((array!9214 0))(
  ( (array!9215 (arr!4357 (Array (_ BitVec 32) ValueCell!2154)) (size!4682 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9214)

(declare-fun mapDefault!8561 () ValueCell!2154)

(assert (=> b!203097 (= condMapEmpty!8561 (= (arr!4357 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2154)) mapDefault!8561)))))

(declare-fun b!203098 () Bool)

(declare-fun res!97526 () Bool)

(assert (=> b!203098 (=> (not res!97526) (not e!132994))))

(declare-datatypes ((array!9216 0))(
  ( (array!9217 (arr!4358 (Array (_ BitVec 32) (_ BitVec 64))) (size!4683 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9216)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!203098 (= res!97526 (and (= (size!4682 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4683 _keys!825) (size!4682 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!203099 () Bool)

(declare-fun res!97531 () Bool)

(assert (=> b!203099 (=> (not res!97531) (not e!132994))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!203099 (= res!97531 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4683 _keys!825))))))

(declare-fun b!203100 () Bool)

(declare-fun res!97523 () Bool)

(assert (=> b!203100 (=> (not res!97523) (not e!132994))))

(assert (=> b!203100 (= res!97523 (= (select (arr!4358 _keys!825) i!601) k0!843))))

(declare-fun b!203101 () Bool)

(assert (=> b!203101 (= e!132991 tp_is_empty!4995)))

(declare-fun b!203102 () Bool)

(declare-fun e!132992 () Bool)

(declare-fun e!132988 () Bool)

(assert (=> b!203102 (= e!132992 e!132988)))

(declare-fun res!97529 () Bool)

(assert (=> b!203102 (=> res!97529 e!132988)))

(assert (=> b!203102 (= res!97529 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3852 0))(
  ( (tuple2!3853 (_1!1936 (_ BitVec 64)) (_2!1936 V!6307)) )
))
(declare-datatypes ((List!2780 0))(
  ( (Nil!2777) (Cons!2776 (h!3418 tuple2!3852) (t!7719 List!2780)) )
))
(declare-datatypes ((ListLongMap!2779 0))(
  ( (ListLongMap!2780 (toList!1405 List!2780)) )
))
(declare-fun lt!102348 () ListLongMap!2779)

(declare-fun lt!102349 () ListLongMap!2779)

(assert (=> b!203102 (= lt!102348 lt!102349)))

(declare-fun lt!102338 () ListLongMap!2779)

(declare-fun lt!102344 () tuple2!3852)

(declare-fun +!422 (ListLongMap!2779 tuple2!3852) ListLongMap!2779)

(assert (=> b!203102 (= lt!102349 (+!422 lt!102338 lt!102344))))

(declare-fun lt!102342 () ListLongMap!2779)

(declare-fun lt!102345 () ListLongMap!2779)

(assert (=> b!203102 (= lt!102342 lt!102345)))

(declare-fun lt!102341 () ListLongMap!2779)

(assert (=> b!203102 (= lt!102345 (+!422 lt!102341 lt!102344))))

(declare-fun lt!102347 () ListLongMap!2779)

(assert (=> b!203102 (= lt!102348 (+!422 lt!102347 lt!102344))))

(declare-fun zeroValue!615 () V!6307)

(assert (=> b!203102 (= lt!102344 (tuple2!3853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203103 () Bool)

(assert (=> b!203103 (= e!132988 true)))

(declare-fun lt!102339 () tuple2!3852)

(assert (=> b!203103 (= lt!102349 (+!422 lt!102345 lt!102339))))

(declare-fun v!520 () V!6307)

(declare-datatypes ((Unit!6145 0))(
  ( (Unit!6146) )
))
(declare-fun lt!102346 () Unit!6145)

(declare-fun addCommutativeForDiffKeys!137 (ListLongMap!2779 (_ BitVec 64) V!6307 (_ BitVec 64) V!6307) Unit!6145)

(assert (=> b!203103 (= lt!102346 (addCommutativeForDiffKeys!137 lt!102341 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203104 () Bool)

(declare-fun res!97528 () Bool)

(assert (=> b!203104 (=> (not res!97528) (not e!132994))))

(declare-datatypes ((List!2781 0))(
  ( (Nil!2778) (Cons!2777 (h!3419 (_ BitVec 64)) (t!7720 List!2781)) )
))
(declare-fun arrayNoDuplicates!0 (array!9216 (_ BitVec 32) List!2781) Bool)

(assert (=> b!203104 (= res!97528 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2778))))

(declare-fun b!203105 () Bool)

(declare-fun res!97530 () Bool)

(assert (=> b!203105 (=> (not res!97530) (not e!132994))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9216 (_ BitVec 32)) Bool)

(assert (=> b!203105 (= res!97530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun res!97524 () Bool)

(assert (=> start!20492 (=> (not res!97524) (not e!132994))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20492 (= res!97524 (validMask!0 mask!1149))))

(assert (=> start!20492 e!132994))

(declare-fun array_inv!2871 (array!9214) Bool)

(assert (=> start!20492 (and (array_inv!2871 _values!649) e!132993)))

(assert (=> start!20492 true))

(assert (=> start!20492 tp_is_empty!4995))

(declare-fun array_inv!2872 (array!9216) Bool)

(assert (=> start!20492 (array_inv!2872 _keys!825)))

(assert (=> start!20492 tp!18448))

(declare-fun mapNonEmpty!8561 () Bool)

(declare-fun tp!18449 () Bool)

(assert (=> mapNonEmpty!8561 (= mapRes!8561 (and tp!18449 e!132990))))

(declare-fun mapValue!8561 () ValueCell!2154)

(declare-fun mapKey!8561 () (_ BitVec 32))

(declare-fun mapRest!8561 () (Array (_ BitVec 32) ValueCell!2154))

(assert (=> mapNonEmpty!8561 (= (arr!4357 _values!649) (store mapRest!8561 mapKey!8561 mapValue!8561))))

(declare-fun mapIsEmpty!8561 () Bool)

(assert (=> mapIsEmpty!8561 mapRes!8561))

(declare-fun b!203106 () Bool)

(assert (=> b!203106 (= e!132994 (not e!132992))))

(declare-fun res!97527 () Bool)

(assert (=> b!203106 (=> res!97527 e!132992)))

(assert (=> b!203106 (= res!97527 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6307)

(declare-fun getCurrentListMap!977 (array!9216 array!9214 (_ BitVec 32) (_ BitVec 32) V!6307 V!6307 (_ BitVec 32) Int) ListLongMap!2779)

(assert (=> b!203106 (= lt!102342 (getCurrentListMap!977 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102343 () array!9214)

(assert (=> b!203106 (= lt!102348 (getCurrentListMap!977 _keys!825 lt!102343 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203106 (and (= lt!102347 lt!102338) (= lt!102338 lt!102347))))

(assert (=> b!203106 (= lt!102338 (+!422 lt!102341 lt!102339))))

(assert (=> b!203106 (= lt!102339 (tuple2!3853 k0!843 v!520))))

(declare-fun lt!102340 () Unit!6145)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!90 (array!9216 array!9214 (_ BitVec 32) (_ BitVec 32) V!6307 V!6307 (_ BitVec 32) (_ BitVec 64) V!6307 (_ BitVec 32) Int) Unit!6145)

(assert (=> b!203106 (= lt!102340 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!90 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!348 (array!9216 array!9214 (_ BitVec 32) (_ BitVec 32) V!6307 V!6307 (_ BitVec 32) Int) ListLongMap!2779)

(assert (=> b!203106 (= lt!102347 (getCurrentListMapNoExtraKeys!348 _keys!825 lt!102343 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203106 (= lt!102343 (array!9215 (store (arr!4357 _values!649) i!601 (ValueCellFull!2154 v!520)) (size!4682 _values!649)))))

(assert (=> b!203106 (= lt!102341 (getCurrentListMapNoExtraKeys!348 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and start!20492 res!97524) b!203098))

(assert (= (and b!203098 res!97526) b!203105))

(assert (= (and b!203105 res!97530) b!203104))

(assert (= (and b!203104 res!97528) b!203099))

(assert (= (and b!203099 res!97531) b!203095))

(assert (= (and b!203095 res!97525) b!203100))

(assert (= (and b!203100 res!97523) b!203106))

(assert (= (and b!203106 (not res!97527)) b!203102))

(assert (= (and b!203102 (not res!97529)) b!203103))

(assert (= (and b!203097 condMapEmpty!8561) mapIsEmpty!8561))

(assert (= (and b!203097 (not condMapEmpty!8561)) mapNonEmpty!8561))

(get-info :version)

(assert (= (and mapNonEmpty!8561 ((_ is ValueCellFull!2154) mapValue!8561)) b!203096))

(assert (= (and b!203097 ((_ is ValueCellFull!2154) mapDefault!8561)) b!203101))

(assert (= start!20492 b!203097))

(declare-fun m!230509 () Bool)

(assert (=> b!203102 m!230509))

(declare-fun m!230511 () Bool)

(assert (=> b!203102 m!230511))

(declare-fun m!230513 () Bool)

(assert (=> b!203102 m!230513))

(declare-fun m!230515 () Bool)

(assert (=> b!203095 m!230515))

(declare-fun m!230517 () Bool)

(assert (=> mapNonEmpty!8561 m!230517))

(declare-fun m!230519 () Bool)

(assert (=> b!203105 m!230519))

(declare-fun m!230521 () Bool)

(assert (=> b!203103 m!230521))

(declare-fun m!230523 () Bool)

(assert (=> b!203103 m!230523))

(declare-fun m!230525 () Bool)

(assert (=> b!203104 m!230525))

(declare-fun m!230527 () Bool)

(assert (=> b!203100 m!230527))

(declare-fun m!230529 () Bool)

(assert (=> b!203106 m!230529))

(declare-fun m!230531 () Bool)

(assert (=> b!203106 m!230531))

(declare-fun m!230533 () Bool)

(assert (=> b!203106 m!230533))

(declare-fun m!230535 () Bool)

(assert (=> b!203106 m!230535))

(declare-fun m!230537 () Bool)

(assert (=> b!203106 m!230537))

(declare-fun m!230539 () Bool)

(assert (=> b!203106 m!230539))

(declare-fun m!230541 () Bool)

(assert (=> b!203106 m!230541))

(declare-fun m!230543 () Bool)

(assert (=> start!20492 m!230543))

(declare-fun m!230545 () Bool)

(assert (=> start!20492 m!230545))

(declare-fun m!230547 () Bool)

(assert (=> start!20492 m!230547))

(check-sat tp_is_empty!4995 b_and!11903 (not b!203104) (not b!203105) (not b!203095) (not b_next!5139) (not start!20492) (not b!203106) (not b!203103) (not b!203102) (not mapNonEmpty!8561))
(check-sat b_and!11903 (not b_next!5139))
