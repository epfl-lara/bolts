; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104868 () Bool)

(assert start!104868)

(declare-fun b_free!26637 () Bool)

(declare-fun b_next!26637 () Bool)

(assert (=> start!104868 (= b_free!26637 (not b_next!26637))))

(declare-fun tp!93402 () Bool)

(declare-fun b_and!44415 () Bool)

(assert (=> start!104868 (= tp!93402 b_and!44415)))

(declare-fun b!1249480 () Bool)

(declare-fun res!833568 () Bool)

(declare-fun e!709208 () Bool)

(assert (=> b!1249480 (=> (not res!833568) (not e!709208))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80735 0))(
  ( (array!80736 (arr!38930 (Array (_ BitVec 32) (_ BitVec 64))) (size!39467 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80735)

(declare-datatypes ((V!47417 0))(
  ( (V!47418 (val!15832 Int)) )
))
(declare-datatypes ((ValueCell!15006 0))(
  ( (ValueCellFull!15006 (v!18528 V!47417)) (EmptyCell!15006) )
))
(declare-datatypes ((array!80737 0))(
  ( (array!80738 (arr!38931 (Array (_ BitVec 32) ValueCell!15006)) (size!39468 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80737)

(assert (=> b!1249480 (= res!833568 (and (= (size!39468 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39467 _keys!1118) (size!39468 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49069 () Bool)

(declare-fun mapRes!49069 () Bool)

(declare-fun tp!93401 () Bool)

(declare-fun e!709210 () Bool)

(assert (=> mapNonEmpty!49069 (= mapRes!49069 (and tp!93401 e!709210))))

(declare-fun mapValue!49069 () ValueCell!15006)

(declare-fun mapRest!49069 () (Array (_ BitVec 32) ValueCell!15006))

(declare-fun mapKey!49069 () (_ BitVec 32))

(assert (=> mapNonEmpty!49069 (= (arr!38931 _values!914) (store mapRest!49069 mapKey!49069 mapValue!49069))))

(declare-fun b!1249481 () Bool)

(declare-fun res!833567 () Bool)

(assert (=> b!1249481 (=> (not res!833567) (not e!709208))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80735 (_ BitVec 32)) Bool)

(assert (=> b!1249481 (= res!833567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49069 () Bool)

(assert (=> mapIsEmpty!49069 mapRes!49069))

(declare-fun res!833565 () Bool)

(assert (=> start!104868 (=> (not res!833565) (not e!709208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104868 (= res!833565 (validMask!0 mask!1466))))

(assert (=> start!104868 e!709208))

(assert (=> start!104868 true))

(assert (=> start!104868 tp!93402))

(declare-fun tp_is_empty!31539 () Bool)

(assert (=> start!104868 tp_is_empty!31539))

(declare-fun array_inv!29635 (array!80735) Bool)

(assert (=> start!104868 (array_inv!29635 _keys!1118)))

(declare-fun e!709212 () Bool)

(declare-fun array_inv!29636 (array!80737) Bool)

(assert (=> start!104868 (and (array_inv!29636 _values!914) e!709212)))

(declare-fun b!1249482 () Bool)

(declare-fun e!709209 () Bool)

(assert (=> b!1249482 (= e!709209 tp_is_empty!31539)))

(declare-fun b!1249483 () Bool)

(assert (=> b!1249483 (= e!709210 tp_is_empty!31539)))

(declare-fun b!1249484 () Bool)

(declare-fun res!833566 () Bool)

(assert (=> b!1249484 (=> (not res!833566) (not e!709208))))

(declare-datatypes ((List!27801 0))(
  ( (Nil!27798) (Cons!27797 (h!29006 (_ BitVec 64)) (t!41279 List!27801)) )
))
(declare-fun arrayNoDuplicates!0 (array!80735 (_ BitVec 32) List!27801) Bool)

(assert (=> b!1249484 (= res!833566 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27798))))

(declare-fun b!1249485 () Bool)

(assert (=> b!1249485 (= e!709208 (not true))))

(declare-datatypes ((tuple2!20538 0))(
  ( (tuple2!20539 (_1!10279 (_ BitVec 64)) (_2!10279 V!47417)) )
))
(declare-datatypes ((List!27802 0))(
  ( (Nil!27799) (Cons!27798 (h!29007 tuple2!20538) (t!41280 List!27802)) )
))
(declare-datatypes ((ListLongMap!18423 0))(
  ( (ListLongMap!18424 (toList!9227 List!27802)) )
))
(declare-fun lt!563725 () ListLongMap!18423)

(declare-fun lt!563727 () ListLongMap!18423)

(assert (=> b!1249485 (= lt!563725 lt!563727)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47417)

(declare-fun zeroValue!871 () V!47417)

(declare-fun minValueBefore!43 () V!47417)

(declare-datatypes ((Unit!41437 0))(
  ( (Unit!41438) )
))
(declare-fun lt!563726 () Unit!41437)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!928 (array!80735 array!80737 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47417 V!47417 V!47417 V!47417 (_ BitVec 32) Int) Unit!41437)

(assert (=> b!1249485 (= lt!563726 (lemmaNoChangeToArrayThenSameMapNoExtras!928 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5610 (array!80735 array!80737 (_ BitVec 32) (_ BitVec 32) V!47417 V!47417 (_ BitVec 32) Int) ListLongMap!18423)

(assert (=> b!1249485 (= lt!563727 (getCurrentListMapNoExtraKeys!5610 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249485 (= lt!563725 (getCurrentListMapNoExtraKeys!5610 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249486 () Bool)

(assert (=> b!1249486 (= e!709212 (and e!709209 mapRes!49069))))

(declare-fun condMapEmpty!49069 () Bool)

(declare-fun mapDefault!49069 () ValueCell!15006)

(assert (=> b!1249486 (= condMapEmpty!49069 (= (arr!38931 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15006)) mapDefault!49069)))))

(assert (= (and start!104868 res!833565) b!1249480))

(assert (= (and b!1249480 res!833568) b!1249481))

(assert (= (and b!1249481 res!833567) b!1249484))

(assert (= (and b!1249484 res!833566) b!1249485))

(assert (= (and b!1249486 condMapEmpty!49069) mapIsEmpty!49069))

(assert (= (and b!1249486 (not condMapEmpty!49069)) mapNonEmpty!49069))

(get-info :version)

(assert (= (and mapNonEmpty!49069 ((_ is ValueCellFull!15006) mapValue!49069)) b!1249483))

(assert (= (and b!1249486 ((_ is ValueCellFull!15006) mapDefault!49069)) b!1249482))

(assert (= start!104868 b!1249486))

(declare-fun m!1150433 () Bool)

(assert (=> start!104868 m!1150433))

(declare-fun m!1150435 () Bool)

(assert (=> start!104868 m!1150435))

(declare-fun m!1150437 () Bool)

(assert (=> start!104868 m!1150437))

(declare-fun m!1150439 () Bool)

(assert (=> b!1249481 m!1150439))

(declare-fun m!1150441 () Bool)

(assert (=> mapNonEmpty!49069 m!1150441))

(declare-fun m!1150443 () Bool)

(assert (=> b!1249484 m!1150443))

(declare-fun m!1150445 () Bool)

(assert (=> b!1249485 m!1150445))

(declare-fun m!1150447 () Bool)

(assert (=> b!1249485 m!1150447))

(declare-fun m!1150449 () Bool)

(assert (=> b!1249485 m!1150449))

(check-sat (not b!1249481) (not mapNonEmpty!49069) tp_is_empty!31539 b_and!44415 (not b!1249484) (not start!104868) (not b!1249485) (not b_next!26637))
(check-sat b_and!44415 (not b_next!26637))
