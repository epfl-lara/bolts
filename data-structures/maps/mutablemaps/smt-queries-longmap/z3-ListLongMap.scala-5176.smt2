; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70068 () Bool)

(assert start!70068)

(declare-fun b_free!12465 () Bool)

(declare-fun b_next!12465 () Bool)

(assert (=> start!70068 (= b_free!12465 (not b_next!12465))))

(declare-fun tp!44110 () Bool)

(declare-fun b_and!21255 () Bool)

(assert (=> start!70068 (= tp!44110 b_and!21255)))

(declare-fun b!813878 () Bool)

(declare-fun res!556060 () Bool)

(declare-fun e!451114 () Bool)

(assert (=> b!813878 (=> (not res!556060) (not e!451114))))

(declare-datatypes ((array!44538 0))(
  ( (array!44539 (arr!21325 (Array (_ BitVec 32) (_ BitVec 64))) (size!21746 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44538)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44538 (_ BitVec 32)) Bool)

(assert (=> b!813878 (= res!556060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22843 () Bool)

(declare-fun mapRes!22843 () Bool)

(declare-fun tp!44109 () Bool)

(declare-fun e!451115 () Bool)

(assert (=> mapNonEmpty!22843 (= mapRes!22843 (and tp!44109 e!451115))))

(declare-fun mapKey!22843 () (_ BitVec 32))

(declare-datatypes ((V!23901 0))(
  ( (V!23902 (val!7135 Int)) )
))
(declare-datatypes ((ValueCell!6672 0))(
  ( (ValueCellFull!6672 (v!9558 V!23901)) (EmptyCell!6672) )
))
(declare-datatypes ((array!44540 0))(
  ( (array!44541 (arr!21326 (Array (_ BitVec 32) ValueCell!6672)) (size!21747 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44540)

(declare-fun mapRest!22843 () (Array (_ BitVec 32) ValueCell!6672))

(declare-fun mapValue!22843 () ValueCell!6672)

(assert (=> mapNonEmpty!22843 (= (arr!21326 _values!788) (store mapRest!22843 mapKey!22843 mapValue!22843))))

(declare-fun b!813879 () Bool)

(declare-fun e!451112 () Bool)

(declare-fun tp_is_empty!14175 () Bool)

(assert (=> b!813879 (= e!451112 tp_is_empty!14175)))

(declare-fun res!556059 () Bool)

(assert (=> start!70068 (=> (not res!556059) (not e!451114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70068 (= res!556059 (validMask!0 mask!1312))))

(assert (=> start!70068 e!451114))

(assert (=> start!70068 tp_is_empty!14175))

(declare-fun array_inv!17053 (array!44538) Bool)

(assert (=> start!70068 (array_inv!17053 _keys!976)))

(assert (=> start!70068 true))

(declare-fun e!451113 () Bool)

(declare-fun array_inv!17054 (array!44540) Bool)

(assert (=> start!70068 (and (array_inv!17054 _values!788) e!451113)))

(assert (=> start!70068 tp!44110))

(declare-fun b!813880 () Bool)

(assert (=> b!813880 (= e!451114 false)))

(declare-fun zeroValueAfter!34 () V!23901)

(declare-fun minValue!754 () V!23901)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((tuple2!9354 0))(
  ( (tuple2!9355 (_1!4687 (_ BitVec 64)) (_2!4687 V!23901)) )
))
(declare-datatypes ((List!15230 0))(
  ( (Nil!15227) (Cons!15226 (h!16355 tuple2!9354) (t!21555 List!15230)) )
))
(declare-datatypes ((ListLongMap!8191 0))(
  ( (ListLongMap!8192 (toList!4111 List!15230)) )
))
(declare-fun lt!364412 () ListLongMap!8191)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2160 (array!44538 array!44540 (_ BitVec 32) (_ BitVec 32) V!23901 V!23901 (_ BitVec 32) Int) ListLongMap!8191)

(assert (=> b!813880 (= lt!364412 (getCurrentListMapNoExtraKeys!2160 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23901)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!364411 () ListLongMap!8191)

(assert (=> b!813880 (= lt!364411 (getCurrentListMapNoExtraKeys!2160 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813881 () Bool)

(declare-fun res!556061 () Bool)

(assert (=> b!813881 (=> (not res!556061) (not e!451114))))

(assert (=> b!813881 (= res!556061 (and (= (size!21747 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21746 _keys!976) (size!21747 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!22843 () Bool)

(assert (=> mapIsEmpty!22843 mapRes!22843))

(declare-fun b!813882 () Bool)

(assert (=> b!813882 (= e!451115 tp_is_empty!14175)))

(declare-fun b!813883 () Bool)

(declare-fun res!556058 () Bool)

(assert (=> b!813883 (=> (not res!556058) (not e!451114))))

(declare-datatypes ((List!15231 0))(
  ( (Nil!15228) (Cons!15227 (h!16356 (_ BitVec 64)) (t!21556 List!15231)) )
))
(declare-fun arrayNoDuplicates!0 (array!44538 (_ BitVec 32) List!15231) Bool)

(assert (=> b!813883 (= res!556058 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15228))))

(declare-fun b!813884 () Bool)

(assert (=> b!813884 (= e!451113 (and e!451112 mapRes!22843))))

(declare-fun condMapEmpty!22843 () Bool)

(declare-fun mapDefault!22843 () ValueCell!6672)

(assert (=> b!813884 (= condMapEmpty!22843 (= (arr!21326 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6672)) mapDefault!22843)))))

(assert (= (and start!70068 res!556059) b!813881))

(assert (= (and b!813881 res!556061) b!813878))

(assert (= (and b!813878 res!556060) b!813883))

(assert (= (and b!813883 res!556058) b!813880))

(assert (= (and b!813884 condMapEmpty!22843) mapIsEmpty!22843))

(assert (= (and b!813884 (not condMapEmpty!22843)) mapNonEmpty!22843))

(get-info :version)

(assert (= (and mapNonEmpty!22843 ((_ is ValueCellFull!6672) mapValue!22843)) b!813882))

(assert (= (and b!813884 ((_ is ValueCellFull!6672) mapDefault!22843)) b!813879))

(assert (= start!70068 b!813884))

(declare-fun m!755859 () Bool)

(assert (=> mapNonEmpty!22843 m!755859))

(declare-fun m!755861 () Bool)

(assert (=> b!813878 m!755861))

(declare-fun m!755863 () Bool)

(assert (=> b!813880 m!755863))

(declare-fun m!755865 () Bool)

(assert (=> b!813880 m!755865))

(declare-fun m!755867 () Bool)

(assert (=> b!813883 m!755867))

(declare-fun m!755869 () Bool)

(assert (=> start!70068 m!755869))

(declare-fun m!755871 () Bool)

(assert (=> start!70068 m!755871))

(declare-fun m!755873 () Bool)

(assert (=> start!70068 m!755873))

(check-sat (not b!813878) b_and!21255 (not start!70068) (not b_next!12465) tp_is_empty!14175 (not b!813880) (not b!813883) (not mapNonEmpty!22843))
(check-sat b_and!21255 (not b_next!12465))
