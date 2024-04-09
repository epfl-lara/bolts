; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42340 () Bool)

(assert start!42340)

(declare-fun b_free!11823 () Bool)

(declare-fun b_next!11823 () Bool)

(assert (=> start!42340 (= b_free!11823 (not b_next!11823))))

(declare-fun tp!41500 () Bool)

(declare-fun b_and!20287 () Bool)

(assert (=> start!42340 (= tp!41500 b_and!20287)))

(declare-fun mapNonEmpty!21586 () Bool)

(declare-fun mapRes!21586 () Bool)

(declare-fun tp!41499 () Bool)

(declare-fun e!276811 () Bool)

(assert (=> mapNonEmpty!21586 (= mapRes!21586 (and tp!41499 e!276811))))

(declare-datatypes ((V!18773 0))(
  ( (V!18774 (val!6670 Int)) )
))
(declare-datatypes ((ValueCell!6282 0))(
  ( (ValueCellFull!6282 (v!8957 V!18773)) (EmptyCell!6282) )
))
(declare-datatypes ((array!30227 0))(
  ( (array!30228 (arr!14531 (Array (_ BitVec 32) ValueCell!6282)) (size!14883 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30227)

(declare-fun mapRest!21586 () (Array (_ BitVec 32) ValueCell!6282))

(declare-fun mapValue!21586 () ValueCell!6282)

(declare-fun mapKey!21586 () (_ BitVec 32))

(assert (=> mapNonEmpty!21586 (= (arr!14531 _values!833) (store mapRest!21586 mapKey!21586 mapValue!21586))))

(declare-fun res!282075 () Bool)

(declare-fun e!276808 () Bool)

(assert (=> start!42340 (=> (not res!282075) (not e!276808))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42340 (= res!282075 (validMask!0 mask!1365))))

(assert (=> start!42340 e!276808))

(declare-fun tp_is_empty!13251 () Bool)

(assert (=> start!42340 tp_is_empty!13251))

(assert (=> start!42340 tp!41500))

(assert (=> start!42340 true))

(declare-datatypes ((array!30229 0))(
  ( (array!30230 (arr!14532 (Array (_ BitVec 32) (_ BitVec 64))) (size!14884 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30229)

(declare-fun array_inv!10482 (array!30229) Bool)

(assert (=> start!42340 (array_inv!10482 _keys!1025)))

(declare-fun e!276810 () Bool)

(declare-fun array_inv!10483 (array!30227) Bool)

(assert (=> start!42340 (and (array_inv!10483 _values!833) e!276810)))

(declare-fun b!472105 () Bool)

(assert (=> b!472105 (= e!276811 tp_is_empty!13251)))

(declare-fun b!472106 () Bool)

(declare-fun res!282076 () Bool)

(assert (=> b!472106 (=> (not res!282076) (not e!276808))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30229 (_ BitVec 32)) Bool)

(assert (=> b!472106 (= res!282076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21586 () Bool)

(assert (=> mapIsEmpty!21586 mapRes!21586))

(declare-fun b!472107 () Bool)

(declare-fun e!276809 () Bool)

(assert (=> b!472107 (= e!276809 true)))

(declare-fun minValueBefore!38 () V!18773)

(declare-fun zeroValue!794 () V!18773)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((tuple2!8772 0))(
  ( (tuple2!8773 (_1!4396 (_ BitVec 64)) (_2!4396 V!18773)) )
))
(declare-datatypes ((List!8887 0))(
  ( (Nil!8884) (Cons!8883 (h!9739 tuple2!8772) (t!14863 List!8887)) )
))
(declare-datatypes ((ListLongMap!7699 0))(
  ( (ListLongMap!7700 (toList!3865 List!8887)) )
))
(declare-fun lt!214238 () ListLongMap!7699)

(declare-fun getCurrentListMap!2213 (array!30229 array!30227 (_ BitVec 32) (_ BitVec 32) V!18773 V!18773 (_ BitVec 32) Int) ListLongMap!7699)

(assert (=> b!472107 (= lt!214238 (getCurrentListMap!2213 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472108 () Bool)

(declare-fun e!276812 () Bool)

(assert (=> b!472108 (= e!276812 tp_is_empty!13251)))

(declare-fun b!472109 () Bool)

(assert (=> b!472109 (= e!276808 (not e!276809))))

(declare-fun res!282077 () Bool)

(assert (=> b!472109 (=> res!282077 e!276809)))

(assert (=> b!472109 (= res!282077 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!214237 () ListLongMap!7699)

(declare-fun lt!214239 () ListLongMap!7699)

(assert (=> b!472109 (= lt!214237 lt!214239)))

(declare-datatypes ((Unit!13854 0))(
  ( (Unit!13855) )
))
(declare-fun lt!214240 () Unit!13854)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18773)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!221 (array!30229 array!30227 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18773 V!18773 V!18773 V!18773 (_ BitVec 32) Int) Unit!13854)

(assert (=> b!472109 (= lt!214240 (lemmaNoChangeToArrayThenSameMapNoExtras!221 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2026 (array!30229 array!30227 (_ BitVec 32) (_ BitVec 32) V!18773 V!18773 (_ BitVec 32) Int) ListLongMap!7699)

(assert (=> b!472109 (= lt!214239 (getCurrentListMapNoExtraKeys!2026 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472109 (= lt!214237 (getCurrentListMapNoExtraKeys!2026 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472110 () Bool)

(declare-fun res!282078 () Bool)

(assert (=> b!472110 (=> (not res!282078) (not e!276808))))

(declare-datatypes ((List!8888 0))(
  ( (Nil!8885) (Cons!8884 (h!9740 (_ BitVec 64)) (t!14864 List!8888)) )
))
(declare-fun arrayNoDuplicates!0 (array!30229 (_ BitVec 32) List!8888) Bool)

(assert (=> b!472110 (= res!282078 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8885))))

(declare-fun b!472111 () Bool)

(declare-fun res!282074 () Bool)

(assert (=> b!472111 (=> (not res!282074) (not e!276808))))

(assert (=> b!472111 (= res!282074 (and (= (size!14883 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14884 _keys!1025) (size!14883 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!472112 () Bool)

(assert (=> b!472112 (= e!276810 (and e!276812 mapRes!21586))))

(declare-fun condMapEmpty!21586 () Bool)

(declare-fun mapDefault!21586 () ValueCell!6282)

(assert (=> b!472112 (= condMapEmpty!21586 (= (arr!14531 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6282)) mapDefault!21586)))))

(assert (= (and start!42340 res!282075) b!472111))

(assert (= (and b!472111 res!282074) b!472106))

(assert (= (and b!472106 res!282076) b!472110))

(assert (= (and b!472110 res!282078) b!472109))

(assert (= (and b!472109 (not res!282077)) b!472107))

(assert (= (and b!472112 condMapEmpty!21586) mapIsEmpty!21586))

(assert (= (and b!472112 (not condMapEmpty!21586)) mapNonEmpty!21586))

(get-info :version)

(assert (= (and mapNonEmpty!21586 ((_ is ValueCellFull!6282) mapValue!21586)) b!472105))

(assert (= (and b!472112 ((_ is ValueCellFull!6282) mapDefault!21586)) b!472108))

(assert (= start!42340 b!472112))

(declare-fun m!454137 () Bool)

(assert (=> b!472106 m!454137))

(declare-fun m!454139 () Bool)

(assert (=> start!42340 m!454139))

(declare-fun m!454141 () Bool)

(assert (=> start!42340 m!454141))

(declare-fun m!454143 () Bool)

(assert (=> start!42340 m!454143))

(declare-fun m!454145 () Bool)

(assert (=> b!472109 m!454145))

(declare-fun m!454147 () Bool)

(assert (=> b!472109 m!454147))

(declare-fun m!454149 () Bool)

(assert (=> b!472109 m!454149))

(declare-fun m!454151 () Bool)

(assert (=> b!472107 m!454151))

(declare-fun m!454153 () Bool)

(assert (=> mapNonEmpty!21586 m!454153))

(declare-fun m!454155 () Bool)

(assert (=> b!472110 m!454155))

(check-sat (not b!472106) (not b!472109) (not b!472110) b_and!20287 (not b_next!11823) (not start!42340) tp_is_empty!13251 (not mapNonEmpty!21586) (not b!472107))
(check-sat b_and!20287 (not b_next!11823))
