; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38194 () Bool)

(assert start!38194)

(declare-fun b_free!9045 () Bool)

(declare-fun b_next!9045 () Bool)

(assert (=> start!38194 (= b_free!9045 (not b_next!9045))))

(declare-fun tp!31920 () Bool)

(declare-fun b_and!16437 () Bool)

(assert (=> start!38194 (= tp!31920 b_and!16437)))

(declare-fun b!393505 () Bool)

(declare-fun e!238256 () Bool)

(declare-fun tp_is_empty!9717 () Bool)

(assert (=> b!393505 (= e!238256 tp_is_empty!9717)))

(declare-fun b!393506 () Bool)

(declare-fun res!225527 () Bool)

(declare-fun e!238253 () Bool)

(assert (=> b!393506 (=> (not res!225527) (not e!238253))))

(declare-datatypes ((array!23317 0))(
  ( (array!23318 (arr!11113 (Array (_ BitVec 32) (_ BitVec 64))) (size!11465 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23317)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23317 (_ BitVec 32)) Bool)

(assert (=> b!393506 (= res!225527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!393507 () Bool)

(declare-fun e!238255 () Bool)

(assert (=> b!393507 (= e!238253 e!238255)))

(declare-fun res!225520 () Bool)

(assert (=> b!393507 (=> (not res!225520) (not e!238255))))

(declare-fun lt!186349 () array!23317)

(assert (=> b!393507 (= res!225520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186349 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!393507 (= lt!186349 (array!23318 (store (arr!11113 _keys!658) i!548 k0!778) (size!11465 _keys!658)))))

(declare-fun b!393508 () Bool)

(declare-fun e!238257 () Bool)

(assert (=> b!393508 (= e!238255 (not e!238257))))

(declare-fun res!225519 () Bool)

(assert (=> b!393508 (=> res!225519 e!238257)))

(declare-fun lt!186353 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!393508 (= res!225519 (or (and (not lt!186353) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!186353) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!186353)))))

(assert (=> b!393508 (= lt!186353 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!14061 0))(
  ( (V!14062 (val!4903 Int)) )
))
(declare-datatypes ((ValueCell!4515 0))(
  ( (ValueCellFull!4515 (v!7140 V!14061)) (EmptyCell!4515) )
))
(declare-datatypes ((array!23319 0))(
  ( (array!23320 (arr!11114 (Array (_ BitVec 32) ValueCell!4515)) (size!11466 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23319)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6552 0))(
  ( (tuple2!6553 (_1!3286 (_ BitVec 64)) (_2!3286 V!14061)) )
))
(declare-datatypes ((List!6434 0))(
  ( (Nil!6431) (Cons!6430 (h!7286 tuple2!6552) (t!11614 List!6434)) )
))
(declare-datatypes ((ListLongMap!5479 0))(
  ( (ListLongMap!5480 (toList!2755 List!6434)) )
))
(declare-fun lt!186352 () ListLongMap!5479)

(declare-fun zeroValue!472 () V!14061)

(declare-fun minValue!472 () V!14061)

(declare-fun getCurrentListMap!2115 (array!23317 array!23319 (_ BitVec 32) (_ BitVec 32) V!14061 V!14061 (_ BitVec 32) Int) ListLongMap!5479)

(assert (=> b!393508 (= lt!186352 (getCurrentListMap!2115 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186351 () ListLongMap!5479)

(declare-fun lt!186355 () array!23319)

(assert (=> b!393508 (= lt!186351 (getCurrentListMap!2115 lt!186349 lt!186355 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186347 () ListLongMap!5479)

(declare-fun lt!186348 () ListLongMap!5479)

(assert (=> b!393508 (and (= lt!186347 lt!186348) (= lt!186348 lt!186347))))

(declare-fun v!373 () V!14061)

(declare-fun lt!186354 () ListLongMap!5479)

(declare-fun +!1053 (ListLongMap!5479 tuple2!6552) ListLongMap!5479)

(assert (=> b!393508 (= lt!186348 (+!1053 lt!186354 (tuple2!6553 k0!778 v!373)))))

(declare-datatypes ((Unit!12003 0))(
  ( (Unit!12004) )
))
(declare-fun lt!186350 () Unit!12003)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!272 (array!23317 array!23319 (_ BitVec 32) (_ BitVec 32) V!14061 V!14061 (_ BitVec 32) (_ BitVec 64) V!14061 (_ BitVec 32) Int) Unit!12003)

(assert (=> b!393508 (= lt!186350 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!272 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!977 (array!23317 array!23319 (_ BitVec 32) (_ BitVec 32) V!14061 V!14061 (_ BitVec 32) Int) ListLongMap!5479)

(assert (=> b!393508 (= lt!186347 (getCurrentListMapNoExtraKeys!977 lt!186349 lt!186355 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!393508 (= lt!186355 (array!23320 (store (arr!11114 _values!506) i!548 (ValueCellFull!4515 v!373)) (size!11466 _values!506)))))

(assert (=> b!393508 (= lt!186354 (getCurrentListMapNoExtraKeys!977 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapNonEmpty!16173 () Bool)

(declare-fun mapRes!16173 () Bool)

(declare-fun tp!31919 () Bool)

(assert (=> mapNonEmpty!16173 (= mapRes!16173 (and tp!31919 e!238256))))

(declare-fun mapValue!16173 () ValueCell!4515)

(declare-fun mapRest!16173 () (Array (_ BitVec 32) ValueCell!4515))

(declare-fun mapKey!16173 () (_ BitVec 32))

(assert (=> mapNonEmpty!16173 (= (arr!11114 _values!506) (store mapRest!16173 mapKey!16173 mapValue!16173))))

(declare-fun b!393509 () Bool)

(declare-fun e!238258 () Bool)

(declare-fun e!238254 () Bool)

(assert (=> b!393509 (= e!238258 (and e!238254 mapRes!16173))))

(declare-fun condMapEmpty!16173 () Bool)

(declare-fun mapDefault!16173 () ValueCell!4515)

(assert (=> b!393509 (= condMapEmpty!16173 (= (arr!11114 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4515)) mapDefault!16173)))))

(declare-fun b!393510 () Bool)

(declare-fun res!225521 () Bool)

(assert (=> b!393510 (=> (not res!225521) (not e!238253))))

(declare-fun arrayContainsKey!0 (array!23317 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!393510 (= res!225521 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!393511 () Bool)

(declare-fun res!225523 () Bool)

(assert (=> b!393511 (=> (not res!225523) (not e!238253))))

(assert (=> b!393511 (= res!225523 (and (= (size!11466 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11465 _keys!658) (size!11466 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!393512 () Bool)

(declare-fun res!225528 () Bool)

(assert (=> b!393512 (=> (not res!225528) (not e!238255))))

(declare-datatypes ((List!6435 0))(
  ( (Nil!6432) (Cons!6431 (h!7287 (_ BitVec 64)) (t!11615 List!6435)) )
))
(declare-fun arrayNoDuplicates!0 (array!23317 (_ BitVec 32) List!6435) Bool)

(assert (=> b!393512 (= res!225528 (arrayNoDuplicates!0 lt!186349 #b00000000000000000000000000000000 Nil!6432))))

(declare-fun b!393513 () Bool)

(declare-fun res!225525 () Bool)

(assert (=> b!393513 (=> (not res!225525) (not e!238253))))

(assert (=> b!393513 (= res!225525 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6432))))

(declare-fun res!225524 () Bool)

(assert (=> start!38194 (=> (not res!225524) (not e!238253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38194 (= res!225524 (validMask!0 mask!970))))

(assert (=> start!38194 e!238253))

(declare-fun array_inv!8146 (array!23319) Bool)

(assert (=> start!38194 (and (array_inv!8146 _values!506) e!238258)))

(assert (=> start!38194 tp!31920))

(assert (=> start!38194 true))

(assert (=> start!38194 tp_is_empty!9717))

(declare-fun array_inv!8147 (array!23317) Bool)

(assert (=> start!38194 (array_inv!8147 _keys!658)))

(declare-fun b!393514 () Bool)

(declare-fun res!225522 () Bool)

(assert (=> b!393514 (=> (not res!225522) (not e!238253))))

(assert (=> b!393514 (= res!225522 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11465 _keys!658))))))

(declare-fun b!393515 () Bool)

(declare-fun res!225526 () Bool)

(assert (=> b!393515 (=> (not res!225526) (not e!238253))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!393515 (= res!225526 (validKeyInArray!0 k0!778))))

(declare-fun b!393516 () Bool)

(declare-fun res!225518 () Bool)

(assert (=> b!393516 (=> (not res!225518) (not e!238253))))

(assert (=> b!393516 (= res!225518 (or (= (select (arr!11113 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11113 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!393517 () Bool)

(assert (=> b!393517 (= e!238254 tp_is_empty!9717)))

(declare-fun mapIsEmpty!16173 () Bool)

(assert (=> mapIsEmpty!16173 mapRes!16173))

(declare-fun b!393518 () Bool)

(assert (=> b!393518 (= e!238257 true)))

(assert (=> b!393518 (= lt!186351 lt!186347)))

(assert (= (and start!38194 res!225524) b!393511))

(assert (= (and b!393511 res!225523) b!393506))

(assert (= (and b!393506 res!225527) b!393513))

(assert (= (and b!393513 res!225525) b!393514))

(assert (= (and b!393514 res!225522) b!393515))

(assert (= (and b!393515 res!225526) b!393516))

(assert (= (and b!393516 res!225518) b!393510))

(assert (= (and b!393510 res!225521) b!393507))

(assert (= (and b!393507 res!225520) b!393512))

(assert (= (and b!393512 res!225528) b!393508))

(assert (= (and b!393508 (not res!225519)) b!393518))

(assert (= (and b!393509 condMapEmpty!16173) mapIsEmpty!16173))

(assert (= (and b!393509 (not condMapEmpty!16173)) mapNonEmpty!16173))

(get-info :version)

(assert (= (and mapNonEmpty!16173 ((_ is ValueCellFull!4515) mapValue!16173)) b!393505))

(assert (= (and b!393509 ((_ is ValueCellFull!4515) mapDefault!16173)) b!393517))

(assert (= start!38194 b!393509))

(declare-fun m!390007 () Bool)

(assert (=> b!393516 m!390007))

(declare-fun m!390009 () Bool)

(assert (=> b!393512 m!390009))

(declare-fun m!390011 () Bool)

(assert (=> b!393506 m!390011))

(declare-fun m!390013 () Bool)

(assert (=> mapNonEmpty!16173 m!390013))

(declare-fun m!390015 () Bool)

(assert (=> start!38194 m!390015))

(declare-fun m!390017 () Bool)

(assert (=> start!38194 m!390017))

(declare-fun m!390019 () Bool)

(assert (=> start!38194 m!390019))

(declare-fun m!390021 () Bool)

(assert (=> b!393507 m!390021))

(declare-fun m!390023 () Bool)

(assert (=> b!393507 m!390023))

(declare-fun m!390025 () Bool)

(assert (=> b!393508 m!390025))

(declare-fun m!390027 () Bool)

(assert (=> b!393508 m!390027))

(declare-fun m!390029 () Bool)

(assert (=> b!393508 m!390029))

(declare-fun m!390031 () Bool)

(assert (=> b!393508 m!390031))

(declare-fun m!390033 () Bool)

(assert (=> b!393508 m!390033))

(declare-fun m!390035 () Bool)

(assert (=> b!393508 m!390035))

(declare-fun m!390037 () Bool)

(assert (=> b!393508 m!390037))

(declare-fun m!390039 () Bool)

(assert (=> b!393515 m!390039))

(declare-fun m!390041 () Bool)

(assert (=> b!393510 m!390041))

(declare-fun m!390043 () Bool)

(assert (=> b!393513 m!390043))

(check-sat tp_is_empty!9717 (not b!393508) (not b!393507) (not b_next!9045) (not b!393513) (not b!393512) b_and!16437 (not b!393510) (not start!38194) (not mapNonEmpty!16173) (not b!393506) (not b!393515))
(check-sat b_and!16437 (not b_next!9045))
