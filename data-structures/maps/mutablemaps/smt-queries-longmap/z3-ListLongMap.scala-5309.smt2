; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71100 () Bool)

(assert start!71100)

(declare-fun b_free!13263 () Bool)

(declare-fun b_next!13263 () Bool)

(assert (=> start!71100 (= b_free!13263 (not b_next!13263))))

(declare-fun tp!46546 () Bool)

(declare-fun b_and!22195 () Bool)

(assert (=> start!71100 (= tp!46546 b_and!22195)))

(declare-fun b!825249 () Bool)

(declare-fun e!459359 () Bool)

(declare-fun tp_is_empty!14973 () Bool)

(assert (=> b!825249 (= e!459359 tp_is_empty!14973)))

(declare-fun mapNonEmpty!24082 () Bool)

(declare-fun mapRes!24082 () Bool)

(declare-fun tp!46545 () Bool)

(assert (=> mapNonEmpty!24082 (= mapRes!24082 (and tp!46545 e!459359))))

(declare-fun mapKey!24082 () (_ BitVec 32))

(declare-datatypes ((V!24965 0))(
  ( (V!24966 (val!7534 Int)) )
))
(declare-datatypes ((ValueCell!7071 0))(
  ( (ValueCellFull!7071 (v!9963 V!24965)) (EmptyCell!7071) )
))
(declare-datatypes ((array!46090 0))(
  ( (array!46091 (arr!22087 (Array (_ BitVec 32) ValueCell!7071)) (size!22508 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46090)

(declare-fun mapValue!24082 () ValueCell!7071)

(declare-fun mapRest!24082 () (Array (_ BitVec 32) ValueCell!7071))

(assert (=> mapNonEmpty!24082 (= (arr!22087 _values!788) (store mapRest!24082 mapKey!24082 mapValue!24082))))

(declare-fun mapIsEmpty!24082 () Bool)

(assert (=> mapIsEmpty!24082 mapRes!24082))

(declare-fun b!825250 () Bool)

(declare-fun e!459356 () Bool)

(declare-fun e!459352 () Bool)

(assert (=> b!825250 (= e!459356 (not e!459352))))

(declare-fun res!562686 () Bool)

(assert (=> b!825250 (=> res!562686 e!459352)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!825250 (= res!562686 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9972 0))(
  ( (tuple2!9973 (_1!4996 (_ BitVec 64)) (_2!4996 V!24965)) )
))
(declare-datatypes ((List!15817 0))(
  ( (Nil!15814) (Cons!15813 (h!16942 tuple2!9972) (t!22170 List!15817)) )
))
(declare-datatypes ((ListLongMap!8809 0))(
  ( (ListLongMap!8810 (toList!4420 List!15817)) )
))
(declare-fun lt!372580 () ListLongMap!8809)

(declare-fun lt!372576 () ListLongMap!8809)

(assert (=> b!825250 (= lt!372580 lt!372576)))

(declare-fun zeroValueBefore!34 () V!24965)

(declare-datatypes ((array!46092 0))(
  ( (array!46093 (arr!22088 (Array (_ BitVec 32) (_ BitVec 64))) (size!22509 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46092)

(declare-fun zeroValueAfter!34 () V!24965)

(declare-fun minValue!754 () V!24965)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28281 0))(
  ( (Unit!28282) )
))
(declare-fun lt!372581 () Unit!28281)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!552 (array!46092 array!46090 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24965 V!24965 V!24965 V!24965 (_ BitVec 32) Int) Unit!28281)

(assert (=> b!825250 (= lt!372581 (lemmaNoChangeToArrayThenSameMapNoExtras!552 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2436 (array!46092 array!46090 (_ BitVec 32) (_ BitVec 32) V!24965 V!24965 (_ BitVec 32) Int) ListLongMap!8809)

(assert (=> b!825250 (= lt!372576 (getCurrentListMapNoExtraKeys!2436 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825250 (= lt!372580 (getCurrentListMapNoExtraKeys!2436 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!372579 () tuple2!9972)

(declare-fun b!825252 () Bool)

(declare-fun e!459355 () Bool)

(declare-fun lt!372577 () ListLongMap!8809)

(declare-fun lt!372583 () tuple2!9972)

(declare-fun +!1882 (ListLongMap!8809 tuple2!9972) ListLongMap!8809)

(assert (=> b!825252 (= e!459355 (= lt!372577 (+!1882 (+!1882 lt!372576 lt!372583) lt!372579)))))

(declare-fun b!825253 () Bool)

(assert (=> b!825253 (= e!459352 true)))

(declare-fun lt!372585 () ListLongMap!8809)

(assert (=> b!825253 (= lt!372585 (+!1882 (+!1882 lt!372580 lt!372579) lt!372583))))

(declare-fun lt!372574 () ListLongMap!8809)

(declare-fun lt!372578 () ListLongMap!8809)

(assert (=> b!825253 (and (= lt!372574 lt!372578) (= lt!372577 lt!372578) (= lt!372577 lt!372574))))

(declare-fun lt!372587 () ListLongMap!8809)

(assert (=> b!825253 (= lt!372578 (+!1882 lt!372587 lt!372579))))

(declare-fun lt!372582 () ListLongMap!8809)

(assert (=> b!825253 (= lt!372574 (+!1882 lt!372582 lt!372579))))

(declare-fun lt!372575 () Unit!28281)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!210 (ListLongMap!8809 (_ BitVec 64) V!24965 V!24965) Unit!28281)

(assert (=> b!825253 (= lt!372575 (addSameAsAddTwiceSameKeyDiffValues!210 lt!372582 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!825253 e!459355))

(declare-fun res!562688 () Bool)

(assert (=> b!825253 (=> (not res!562688) (not e!459355))))

(declare-fun lt!372586 () ListLongMap!8809)

(assert (=> b!825253 (= res!562688 (= lt!372586 lt!372587))))

(declare-fun lt!372584 () tuple2!9972)

(assert (=> b!825253 (= lt!372587 (+!1882 lt!372582 lt!372584))))

(assert (=> b!825253 (= lt!372582 (+!1882 lt!372580 lt!372583))))

(assert (=> b!825253 (= lt!372579 (tuple2!9973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459358 () Bool)

(assert (=> b!825253 e!459358))

(declare-fun res!562690 () Bool)

(assert (=> b!825253 (=> (not res!562690) (not e!459358))))

(assert (=> b!825253 (= res!562690 (= lt!372586 (+!1882 (+!1882 lt!372580 lt!372584) lt!372583)))))

(assert (=> b!825253 (= lt!372583 (tuple2!9973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825253 (= lt!372584 (tuple2!9973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2532 (array!46092 array!46090 (_ BitVec 32) (_ BitVec 32) V!24965 V!24965 (_ BitVec 32) Int) ListLongMap!8809)

(assert (=> b!825253 (= lt!372577 (getCurrentListMap!2532 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825253 (= lt!372586 (getCurrentListMap!2532 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825254 () Bool)

(assert (=> b!825254 (= e!459358 (= lt!372577 (+!1882 (+!1882 lt!372576 (tuple2!9973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!372583)))))

(declare-fun b!825255 () Bool)

(declare-fun e!459353 () Bool)

(assert (=> b!825255 (= e!459353 tp_is_empty!14973)))

(declare-fun b!825256 () Bool)

(declare-fun res!562691 () Bool)

(assert (=> b!825256 (=> (not res!562691) (not e!459356))))

(assert (=> b!825256 (= res!562691 (and (= (size!22508 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22509 _keys!976) (size!22508 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!825257 () Bool)

(declare-fun res!562692 () Bool)

(assert (=> b!825257 (=> (not res!562692) (not e!459356))))

(declare-datatypes ((List!15818 0))(
  ( (Nil!15815) (Cons!15814 (h!16943 (_ BitVec 64)) (t!22171 List!15818)) )
))
(declare-fun arrayNoDuplicates!0 (array!46092 (_ BitVec 32) List!15818) Bool)

(assert (=> b!825257 (= res!562692 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15815))))

(declare-fun b!825258 () Bool)

(declare-fun e!459354 () Bool)

(assert (=> b!825258 (= e!459354 (and e!459353 mapRes!24082))))

(declare-fun condMapEmpty!24082 () Bool)

(declare-fun mapDefault!24082 () ValueCell!7071)

(assert (=> b!825258 (= condMapEmpty!24082 (= (arr!22087 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7071)) mapDefault!24082)))))

(declare-fun b!825251 () Bool)

(declare-fun res!562687 () Bool)

(assert (=> b!825251 (=> (not res!562687) (not e!459356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46092 (_ BitVec 32)) Bool)

(assert (=> b!825251 (= res!562687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!562689 () Bool)

(assert (=> start!71100 (=> (not res!562689) (not e!459356))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71100 (= res!562689 (validMask!0 mask!1312))))

(assert (=> start!71100 e!459356))

(assert (=> start!71100 tp_is_empty!14973))

(declare-fun array_inv!17597 (array!46092) Bool)

(assert (=> start!71100 (array_inv!17597 _keys!976)))

(assert (=> start!71100 true))

(declare-fun array_inv!17598 (array!46090) Bool)

(assert (=> start!71100 (and (array_inv!17598 _values!788) e!459354)))

(assert (=> start!71100 tp!46546))

(assert (= (and start!71100 res!562689) b!825256))

(assert (= (and b!825256 res!562691) b!825251))

(assert (= (and b!825251 res!562687) b!825257))

(assert (= (and b!825257 res!562692) b!825250))

(assert (= (and b!825250 (not res!562686)) b!825253))

(assert (= (and b!825253 res!562690) b!825254))

(assert (= (and b!825253 res!562688) b!825252))

(assert (= (and b!825258 condMapEmpty!24082) mapIsEmpty!24082))

(assert (= (and b!825258 (not condMapEmpty!24082)) mapNonEmpty!24082))

(get-info :version)

(assert (= (and mapNonEmpty!24082 ((_ is ValueCellFull!7071) mapValue!24082)) b!825249))

(assert (= (and b!825258 ((_ is ValueCellFull!7071) mapDefault!24082)) b!825255))

(assert (= start!71100 b!825258))

(declare-fun m!767483 () Bool)

(assert (=> mapNonEmpty!24082 m!767483))

(declare-fun m!767485 () Bool)

(assert (=> b!825252 m!767485))

(assert (=> b!825252 m!767485))

(declare-fun m!767487 () Bool)

(assert (=> b!825252 m!767487))

(declare-fun m!767489 () Bool)

(assert (=> b!825254 m!767489))

(assert (=> b!825254 m!767489))

(declare-fun m!767491 () Bool)

(assert (=> b!825254 m!767491))

(declare-fun m!767493 () Bool)

(assert (=> start!71100 m!767493))

(declare-fun m!767495 () Bool)

(assert (=> start!71100 m!767495))

(declare-fun m!767497 () Bool)

(assert (=> start!71100 m!767497))

(declare-fun m!767499 () Bool)

(assert (=> b!825250 m!767499))

(declare-fun m!767501 () Bool)

(assert (=> b!825250 m!767501))

(declare-fun m!767503 () Bool)

(assert (=> b!825250 m!767503))

(declare-fun m!767505 () Bool)

(assert (=> b!825251 m!767505))

(declare-fun m!767507 () Bool)

(assert (=> b!825257 m!767507))

(declare-fun m!767509 () Bool)

(assert (=> b!825253 m!767509))

(declare-fun m!767511 () Bool)

(assert (=> b!825253 m!767511))

(declare-fun m!767513 () Bool)

(assert (=> b!825253 m!767513))

(declare-fun m!767515 () Bool)

(assert (=> b!825253 m!767515))

(declare-fun m!767517 () Bool)

(assert (=> b!825253 m!767517))

(declare-fun m!767519 () Bool)

(assert (=> b!825253 m!767519))

(declare-fun m!767521 () Bool)

(assert (=> b!825253 m!767521))

(assert (=> b!825253 m!767509))

(declare-fun m!767523 () Bool)

(assert (=> b!825253 m!767523))

(declare-fun m!767525 () Bool)

(assert (=> b!825253 m!767525))

(assert (=> b!825253 m!767525))

(declare-fun m!767527 () Bool)

(assert (=> b!825253 m!767527))

(declare-fun m!767529 () Bool)

(assert (=> b!825253 m!767529))

(check-sat (not b!825253) (not b!825251) (not b_next!13263) b_and!22195 (not b!825250) (not b!825257) (not b!825254) (not b!825252) tp_is_empty!14973 (not mapNonEmpty!24082) (not start!71100))
(check-sat b_and!22195 (not b_next!13263))
