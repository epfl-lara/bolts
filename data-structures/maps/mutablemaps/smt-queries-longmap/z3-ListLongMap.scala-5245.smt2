; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70596 () Bool)

(assert start!70596)

(declare-fun b_free!12879 () Bool)

(declare-fun b_next!12879 () Bool)

(assert (=> start!70596 (= b_free!12879 (not b_next!12879))))

(declare-fun tp!45373 () Bool)

(declare-fun b_and!21739 () Bool)

(assert (=> start!70596 (= tp!45373 b_and!21739)))

(declare-fun res!559420 () Bool)

(declare-fun e!455292 () Bool)

(assert (=> start!70596 (=> (not res!559420) (not e!455292))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70596 (= res!559420 (validMask!0 mask!1312))))

(assert (=> start!70596 e!455292))

(declare-fun tp_is_empty!14589 () Bool)

(assert (=> start!70596 tp_is_empty!14589))

(declare-datatypes ((array!45342 0))(
  ( (array!45343 (arr!21720 (Array (_ BitVec 32) (_ BitVec 64))) (size!22141 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45342)

(declare-fun array_inv!17333 (array!45342) Bool)

(assert (=> start!70596 (array_inv!17333 _keys!976)))

(assert (=> start!70596 true))

(declare-datatypes ((V!24453 0))(
  ( (V!24454 (val!7342 Int)) )
))
(declare-datatypes ((ValueCell!6879 0))(
  ( (ValueCellFull!6879 (v!9768 V!24453)) (EmptyCell!6879) )
))
(declare-datatypes ((array!45344 0))(
  ( (array!45345 (arr!21721 (Array (_ BitVec 32) ValueCell!6879)) (size!22142 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45344)

(declare-fun e!455293 () Bool)

(declare-fun array_inv!17334 (array!45344) Bool)

(assert (=> start!70596 (and (array_inv!17334 _values!788) e!455293)))

(assert (=> start!70596 tp!45373))

(declare-fun b!819659 () Bool)

(declare-fun e!455290 () Bool)

(assert (=> b!819659 (= e!455290 tp_is_empty!14589)))

(declare-fun mapNonEmpty!23485 () Bool)

(declare-fun mapRes!23485 () Bool)

(declare-fun tp!45372 () Bool)

(declare-fun e!455294 () Bool)

(assert (=> mapNonEmpty!23485 (= mapRes!23485 (and tp!45372 e!455294))))

(declare-fun mapValue!23485 () ValueCell!6879)

(declare-fun mapRest!23485 () (Array (_ BitVec 32) ValueCell!6879))

(declare-fun mapKey!23485 () (_ BitVec 32))

(assert (=> mapNonEmpty!23485 (= (arr!21721 _values!788) (store mapRest!23485 mapKey!23485 mapValue!23485))))

(declare-fun b!819660 () Bool)

(declare-fun res!559418 () Bool)

(assert (=> b!819660 (=> (not res!559418) (not e!455292))))

(declare-datatypes ((List!15532 0))(
  ( (Nil!15529) (Cons!15528 (h!16657 (_ BitVec 64)) (t!21871 List!15532)) )
))
(declare-fun arrayNoDuplicates!0 (array!45342 (_ BitVec 32) List!15532) Bool)

(assert (=> b!819660 (= res!559418 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15529))))

(declare-fun zeroValueAfter!34 () V!24453)

(declare-datatypes ((tuple2!9674 0))(
  ( (tuple2!9675 (_1!4847 (_ BitVec 64)) (_2!4847 V!24453)) )
))
(declare-datatypes ((List!15533 0))(
  ( (Nil!15530) (Cons!15529 (h!16658 tuple2!9674) (t!21872 List!15533)) )
))
(declare-datatypes ((ListLongMap!8511 0))(
  ( (ListLongMap!8512 (toList!4271 List!15533)) )
))
(declare-fun lt!368074 () ListLongMap!8511)

(declare-fun b!819661 () Bool)

(declare-fun e!455289 () Bool)

(declare-fun lt!368081 () ListLongMap!8511)

(declare-fun +!1814 (ListLongMap!8511 tuple2!9674) ListLongMap!8511)

(assert (=> b!819661 (= e!455289 (= lt!368074 (+!1814 lt!368081 (tuple2!9675 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!819662 () Bool)

(declare-fun e!455288 () Bool)

(assert (=> b!819662 (= e!455288 true)))

(declare-fun lt!368072 () ListLongMap!8511)

(declare-fun lt!368080 () tuple2!9674)

(declare-fun lt!368078 () tuple2!9674)

(assert (=> b!819662 (= lt!368072 (+!1814 (+!1814 lt!368081 lt!368078) lt!368080))))

(declare-fun lt!368077 () ListLongMap!8511)

(declare-fun lt!368079 () ListLongMap!8511)

(assert (=> b!819662 (= (+!1814 lt!368077 lt!368080) (+!1814 lt!368079 lt!368080))))

(declare-fun zeroValueBefore!34 () V!24453)

(declare-datatypes ((Unit!27993 0))(
  ( (Unit!27994) )
))
(declare-fun lt!368076 () Unit!27993)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!191 (ListLongMap!8511 (_ BitVec 64) V!24453 V!24453) Unit!27993)

(assert (=> b!819662 (= lt!368076 (addSameAsAddTwiceSameKeyDiffValues!191 lt!368077 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819662 (= lt!368080 (tuple2!9675 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!819662 e!455289))

(declare-fun res!559422 () Bool)

(assert (=> b!819662 (=> (not res!559422) (not e!455289))))

(declare-fun lt!368075 () ListLongMap!8511)

(assert (=> b!819662 (= res!559422 (= lt!368075 lt!368079))))

(assert (=> b!819662 (= lt!368079 (+!1814 lt!368077 lt!368078))))

(assert (=> b!819662 (= lt!368078 (tuple2!9675 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun minValue!754 () V!24453)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2426 (array!45342 array!45344 (_ BitVec 32) (_ BitVec 32) V!24453 V!24453 (_ BitVec 32) Int) ListLongMap!8511)

(assert (=> b!819662 (= lt!368074 (getCurrentListMap!2426 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819662 (= lt!368075 (getCurrentListMap!2426 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819663 () Bool)

(assert (=> b!819663 (= e!455294 tp_is_empty!14589)))

(declare-fun b!819664 () Bool)

(declare-fun res!559421 () Bool)

(assert (=> b!819664 (=> (not res!559421) (not e!455292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45342 (_ BitVec 32)) Bool)

(assert (=> b!819664 (= res!559421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!819665 () Bool)

(assert (=> b!819665 (= e!455292 (not e!455288))))

(declare-fun res!559423 () Bool)

(assert (=> b!819665 (=> res!559423 e!455288)))

(assert (=> b!819665 (= res!559423 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!819665 (= lt!368077 lt!368081)))

(declare-fun lt!368073 () Unit!27993)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!424 (array!45342 array!45344 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24453 V!24453 V!24453 V!24453 (_ BitVec 32) Int) Unit!27993)

(assert (=> b!819665 (= lt!368073 (lemmaNoChangeToArrayThenSameMapNoExtras!424 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2308 (array!45342 array!45344 (_ BitVec 32) (_ BitVec 32) V!24453 V!24453 (_ BitVec 32) Int) ListLongMap!8511)

(assert (=> b!819665 (= lt!368081 (getCurrentListMapNoExtraKeys!2308 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819665 (= lt!368077 (getCurrentListMapNoExtraKeys!2308 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819666 () Bool)

(declare-fun res!559419 () Bool)

(assert (=> b!819666 (=> (not res!559419) (not e!455292))))

(assert (=> b!819666 (= res!559419 (and (= (size!22142 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22141 _keys!976) (size!22142 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!819667 () Bool)

(assert (=> b!819667 (= e!455293 (and e!455290 mapRes!23485))))

(declare-fun condMapEmpty!23485 () Bool)

(declare-fun mapDefault!23485 () ValueCell!6879)

(assert (=> b!819667 (= condMapEmpty!23485 (= (arr!21721 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6879)) mapDefault!23485)))))

(declare-fun mapIsEmpty!23485 () Bool)

(assert (=> mapIsEmpty!23485 mapRes!23485))

(assert (= (and start!70596 res!559420) b!819666))

(assert (= (and b!819666 res!559419) b!819664))

(assert (= (and b!819664 res!559421) b!819660))

(assert (= (and b!819660 res!559418) b!819665))

(assert (= (and b!819665 (not res!559423)) b!819662))

(assert (= (and b!819662 res!559422) b!819661))

(assert (= (and b!819667 condMapEmpty!23485) mapIsEmpty!23485))

(assert (= (and b!819667 (not condMapEmpty!23485)) mapNonEmpty!23485))

(get-info :version)

(assert (= (and mapNonEmpty!23485 ((_ is ValueCellFull!6879) mapValue!23485)) b!819663))

(assert (= (and b!819667 ((_ is ValueCellFull!6879) mapDefault!23485)) b!819659))

(assert (= start!70596 b!819667))

(declare-fun m!761501 () Bool)

(assert (=> b!819665 m!761501))

(declare-fun m!761503 () Bool)

(assert (=> b!819665 m!761503))

(declare-fun m!761505 () Bool)

(assert (=> b!819665 m!761505))

(declare-fun m!761507 () Bool)

(assert (=> b!819664 m!761507))

(declare-fun m!761509 () Bool)

(assert (=> b!819660 m!761509))

(declare-fun m!761511 () Bool)

(assert (=> start!70596 m!761511))

(declare-fun m!761513 () Bool)

(assert (=> start!70596 m!761513))

(declare-fun m!761515 () Bool)

(assert (=> start!70596 m!761515))

(declare-fun m!761517 () Bool)

(assert (=> mapNonEmpty!23485 m!761517))

(declare-fun m!761519 () Bool)

(assert (=> b!819662 m!761519))

(declare-fun m!761521 () Bool)

(assert (=> b!819662 m!761521))

(declare-fun m!761523 () Bool)

(assert (=> b!819662 m!761523))

(assert (=> b!819662 m!761519))

(declare-fun m!761525 () Bool)

(assert (=> b!819662 m!761525))

(declare-fun m!761527 () Bool)

(assert (=> b!819662 m!761527))

(declare-fun m!761529 () Bool)

(assert (=> b!819662 m!761529))

(declare-fun m!761531 () Bool)

(assert (=> b!819662 m!761531))

(declare-fun m!761533 () Bool)

(assert (=> b!819662 m!761533))

(declare-fun m!761535 () Bool)

(assert (=> b!819661 m!761535))

(check-sat b_and!21739 (not b!819660) tp_is_empty!14589 (not b!819661) (not mapNonEmpty!23485) (not start!70596) (not b!819664) (not b!819662) (not b!819665) (not b_next!12879))
(check-sat b_and!21739 (not b_next!12879))
