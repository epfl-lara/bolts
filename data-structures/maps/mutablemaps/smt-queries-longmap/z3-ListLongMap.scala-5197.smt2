; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70222 () Bool)

(assert start!70222)

(declare-fun b_free!12591 () Bool)

(declare-fun b_next!12591 () Bool)

(assert (=> start!70222 (= b_free!12591 (not b_next!12591))))

(declare-fun tp!44494 () Bool)

(declare-fun b_and!21397 () Bool)

(assert (=> start!70222 (= tp!44494 b_and!21397)))

(declare-fun b!815376 () Bool)

(declare-fun e!452172 () Bool)

(declare-fun tp_is_empty!14301 () Bool)

(assert (=> b!815376 (= e!452172 tp_is_empty!14301)))

(declare-fun b!815377 () Bool)

(declare-fun res!556881 () Bool)

(declare-fun e!452174 () Bool)

(assert (=> b!815377 (=> (not res!556881) (not e!452174))))

(declare-datatypes ((array!44790 0))(
  ( (array!44791 (arr!21449 (Array (_ BitVec 32) (_ BitVec 64))) (size!21870 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44790)

(declare-datatypes ((V!24069 0))(
  ( (V!24070 (val!7198 Int)) )
))
(declare-datatypes ((ValueCell!6735 0))(
  ( (ValueCellFull!6735 (v!9621 V!24069)) (EmptyCell!6735) )
))
(declare-datatypes ((array!44792 0))(
  ( (array!44793 (arr!21450 (Array (_ BitVec 32) ValueCell!6735)) (size!21871 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44792)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!815377 (= res!556881 (and (= (size!21871 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21870 _keys!976) (size!21871 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815378 () Bool)

(declare-fun e!452171 () Bool)

(assert (=> b!815378 (= e!452174 (not e!452171))))

(declare-fun res!556883 () Bool)

(assert (=> b!815378 (=> res!556883 e!452171)))

(assert (=> b!815378 (= res!556883 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9454 0))(
  ( (tuple2!9455 (_1!4737 (_ BitVec 64)) (_2!4737 V!24069)) )
))
(declare-datatypes ((List!15325 0))(
  ( (Nil!15322) (Cons!15321 (h!16450 tuple2!9454) (t!21654 List!15325)) )
))
(declare-datatypes ((ListLongMap!8291 0))(
  ( (ListLongMap!8292 (toList!4161 List!15325)) )
))
(declare-fun lt!365050 () ListLongMap!8291)

(declare-fun lt!365049 () ListLongMap!8291)

(assert (=> b!815378 (= lt!365050 lt!365049)))

(declare-fun zeroValueBefore!34 () V!24069)

(declare-fun minValue!754 () V!24069)

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueAfter!34 () V!24069)

(declare-datatypes ((Unit!27778 0))(
  ( (Unit!27779) )
))
(declare-fun lt!365047 () Unit!27778)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!326 (array!44790 array!44792 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24069 V!24069 V!24069 V!24069 (_ BitVec 32) Int) Unit!27778)

(assert (=> b!815378 (= lt!365047 (lemmaNoChangeToArrayThenSameMapNoExtras!326 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2210 (array!44790 array!44792 (_ BitVec 32) (_ BitVec 32) V!24069 V!24069 (_ BitVec 32) Int) ListLongMap!8291)

(assert (=> b!815378 (= lt!365049 (getCurrentListMapNoExtraKeys!2210 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815378 (= lt!365050 (getCurrentListMapNoExtraKeys!2210 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815379 () Bool)

(assert (=> b!815379 (= e!452171 true)))

(declare-fun lt!365046 () ListLongMap!8291)

(declare-fun getCurrentListMap!2354 (array!44790 array!44792 (_ BitVec 32) (_ BitVec 32) V!24069 V!24069 (_ BitVec 32) Int) ListLongMap!8291)

(assert (=> b!815379 (= lt!365046 (getCurrentListMap!2354 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365048 () ListLongMap!8291)

(declare-fun +!1753 (ListLongMap!8291 tuple2!9454) ListLongMap!8291)

(assert (=> b!815379 (= lt!365048 (+!1753 (getCurrentListMap!2354 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9455 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!815380 () Bool)

(declare-fun res!556885 () Bool)

(assert (=> b!815380 (=> (not res!556885) (not e!452174))))

(declare-datatypes ((List!15326 0))(
  ( (Nil!15323) (Cons!15322 (h!16451 (_ BitVec 64)) (t!21655 List!15326)) )
))
(declare-fun arrayNoDuplicates!0 (array!44790 (_ BitVec 32) List!15326) Bool)

(assert (=> b!815380 (= res!556885 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15323))))

(declare-fun mapIsEmpty!23038 () Bool)

(declare-fun mapRes!23038 () Bool)

(assert (=> mapIsEmpty!23038 mapRes!23038))

(declare-fun b!815382 () Bool)

(declare-fun e!452175 () Bool)

(declare-fun e!452173 () Bool)

(assert (=> b!815382 (= e!452175 (and e!452173 mapRes!23038))))

(declare-fun condMapEmpty!23038 () Bool)

(declare-fun mapDefault!23038 () ValueCell!6735)

(assert (=> b!815382 (= condMapEmpty!23038 (= (arr!21450 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6735)) mapDefault!23038)))))

(declare-fun b!815383 () Bool)

(assert (=> b!815383 (= e!452173 tp_is_empty!14301)))

(declare-fun mapNonEmpty!23038 () Bool)

(declare-fun tp!44493 () Bool)

(assert (=> mapNonEmpty!23038 (= mapRes!23038 (and tp!44493 e!452172))))

(declare-fun mapKey!23038 () (_ BitVec 32))

(declare-fun mapRest!23038 () (Array (_ BitVec 32) ValueCell!6735))

(declare-fun mapValue!23038 () ValueCell!6735)

(assert (=> mapNonEmpty!23038 (= (arr!21450 _values!788) (store mapRest!23038 mapKey!23038 mapValue!23038))))

(declare-fun b!815381 () Bool)

(declare-fun res!556882 () Bool)

(assert (=> b!815381 (=> (not res!556882) (not e!452174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44790 (_ BitVec 32)) Bool)

(assert (=> b!815381 (= res!556882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!556884 () Bool)

(assert (=> start!70222 (=> (not res!556884) (not e!452174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70222 (= res!556884 (validMask!0 mask!1312))))

(assert (=> start!70222 e!452174))

(assert (=> start!70222 tp_is_empty!14301))

(declare-fun array_inv!17141 (array!44790) Bool)

(assert (=> start!70222 (array_inv!17141 _keys!976)))

(assert (=> start!70222 true))

(declare-fun array_inv!17142 (array!44792) Bool)

(assert (=> start!70222 (and (array_inv!17142 _values!788) e!452175)))

(assert (=> start!70222 tp!44494))

(assert (= (and start!70222 res!556884) b!815377))

(assert (= (and b!815377 res!556881) b!815381))

(assert (= (and b!815381 res!556882) b!815380))

(assert (= (and b!815380 res!556885) b!815378))

(assert (= (and b!815378 (not res!556883)) b!815379))

(assert (= (and b!815382 condMapEmpty!23038) mapIsEmpty!23038))

(assert (= (and b!815382 (not condMapEmpty!23038)) mapNonEmpty!23038))

(get-info :version)

(assert (= (and mapNonEmpty!23038 ((_ is ValueCellFull!6735) mapValue!23038)) b!815376))

(assert (= (and b!815382 ((_ is ValueCellFull!6735) mapDefault!23038)) b!815383))

(assert (= start!70222 b!815382))

(declare-fun m!757115 () Bool)

(assert (=> b!815378 m!757115))

(declare-fun m!757117 () Bool)

(assert (=> b!815378 m!757117))

(declare-fun m!757119 () Bool)

(assert (=> b!815378 m!757119))

(declare-fun m!757121 () Bool)

(assert (=> mapNonEmpty!23038 m!757121))

(declare-fun m!757123 () Bool)

(assert (=> start!70222 m!757123))

(declare-fun m!757125 () Bool)

(assert (=> start!70222 m!757125))

(declare-fun m!757127 () Bool)

(assert (=> start!70222 m!757127))

(declare-fun m!757129 () Bool)

(assert (=> b!815380 m!757129))

(declare-fun m!757131 () Bool)

(assert (=> b!815381 m!757131))

(declare-fun m!757133 () Bool)

(assert (=> b!815379 m!757133))

(declare-fun m!757135 () Bool)

(assert (=> b!815379 m!757135))

(assert (=> b!815379 m!757135))

(declare-fun m!757137 () Bool)

(assert (=> b!815379 m!757137))

(check-sat (not start!70222) (not b!815379) tp_is_empty!14301 (not mapNonEmpty!23038) (not b_next!12591) (not b!815378) (not b!815380) b_and!21397 (not b!815381))
(check-sat b_and!21397 (not b_next!12591))
