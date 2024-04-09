; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71030 () Bool)

(assert start!71030)

(declare-fun b_free!13209 () Bool)

(declare-fun b_next!13209 () Bool)

(assert (=> start!71030 (= b_free!13209 (not b_next!13209))))

(declare-fun tp!46381 () Bool)

(declare-fun b_and!22131 () Bool)

(assert (=> start!71030 (= tp!46381 b_and!22131)))

(declare-fun b!824389 () Bool)

(declare-fun res!562159 () Bool)

(declare-fun e!458709 () Bool)

(assert (=> b!824389 (=> (not res!562159) (not e!458709))))

(declare-datatypes ((array!45984 0))(
  ( (array!45985 (arr!22035 (Array (_ BitVec 32) (_ BitVec 64))) (size!22456 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45984)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45984 (_ BitVec 32)) Bool)

(assert (=> b!824389 (= res!562159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!824390 () Bool)

(declare-fun e!458711 () Bool)

(declare-fun tp_is_empty!14919 () Bool)

(assert (=> b!824390 (= e!458711 tp_is_empty!14919)))

(declare-fun b!824391 () Bool)

(declare-fun res!562163 () Bool)

(assert (=> b!824391 (=> (not res!562163) (not e!458709))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24893 0))(
  ( (V!24894 (val!7507 Int)) )
))
(declare-datatypes ((ValueCell!7044 0))(
  ( (ValueCellFull!7044 (v!9936 V!24893)) (EmptyCell!7044) )
))
(declare-datatypes ((array!45986 0))(
  ( (array!45987 (arr!22036 (Array (_ BitVec 32) ValueCell!7044)) (size!22457 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45986)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!824391 (= res!562163 (and (= (size!22457 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22456 _keys!976) (size!22457 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23998 () Bool)

(declare-fun mapRes!23998 () Bool)

(declare-fun tp!46380 () Bool)

(assert (=> mapNonEmpty!23998 (= mapRes!23998 (and tp!46380 e!458711))))

(declare-fun mapKey!23998 () (_ BitVec 32))

(declare-fun mapValue!23998 () ValueCell!7044)

(declare-fun mapRest!23998 () (Array (_ BitVec 32) ValueCell!7044))

(assert (=> mapNonEmpty!23998 (= (arr!22036 _values!788) (store mapRest!23998 mapKey!23998 mapValue!23998))))

(declare-fun b!824392 () Bool)

(declare-fun res!562161 () Bool)

(assert (=> b!824392 (=> (not res!562161) (not e!458709))))

(declare-datatypes ((List!15776 0))(
  ( (Nil!15773) (Cons!15772 (h!16901 (_ BitVec 64)) (t!22127 List!15776)) )
))
(declare-fun arrayNoDuplicates!0 (array!45984 (_ BitVec 32) List!15776) Bool)

(assert (=> b!824392 (= res!562161 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15773))))

(declare-fun mapIsEmpty!23998 () Bool)

(assert (=> mapIsEmpty!23998 mapRes!23998))

(declare-fun b!824393 () Bool)

(declare-fun e!458710 () Bool)

(declare-fun e!458712 () Bool)

(assert (=> b!824393 (= e!458710 (and e!458712 mapRes!23998))))

(declare-fun condMapEmpty!23998 () Bool)

(declare-fun mapDefault!23998 () ValueCell!7044)

(assert (=> b!824393 (= condMapEmpty!23998 (= (arr!22036 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7044)) mapDefault!23998)))))

(declare-fun b!824394 () Bool)

(declare-fun e!458713 () Bool)

(assert (=> b!824394 (= e!458713 true)))

(declare-fun zeroValueBefore!34 () V!24893)

(declare-fun minValue!754 () V!24893)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9922 0))(
  ( (tuple2!9923 (_1!4971 (_ BitVec 64)) (_2!4971 V!24893)) )
))
(declare-datatypes ((List!15777 0))(
  ( (Nil!15774) (Cons!15773 (h!16902 tuple2!9922) (t!22128 List!15777)) )
))
(declare-datatypes ((ListLongMap!8759 0))(
  ( (ListLongMap!8760 (toList!4395 List!15777)) )
))
(declare-fun lt!371826 () ListLongMap!8759)

(declare-fun getCurrentListMap!2508 (array!45984 array!45986 (_ BitVec 32) (_ BitVec 32) V!24893 V!24893 (_ BitVec 32) Int) ListLongMap!8759)

(assert (=> b!824394 (= lt!371826 (getCurrentListMap!2508 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824396 () Bool)

(assert (=> b!824396 (= e!458709 (not e!458713))))

(declare-fun res!562162 () Bool)

(assert (=> b!824396 (=> res!562162 e!458713)))

(assert (=> b!824396 (= res!562162 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!371827 () ListLongMap!8759)

(declare-fun lt!371825 () ListLongMap!8759)

(assert (=> b!824396 (= lt!371827 lt!371825)))

(declare-fun zeroValueAfter!34 () V!24893)

(declare-datatypes ((Unit!28236 0))(
  ( (Unit!28237) )
))
(declare-fun lt!371824 () Unit!28236)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!533 (array!45984 array!45986 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24893 V!24893 V!24893 V!24893 (_ BitVec 32) Int) Unit!28236)

(assert (=> b!824396 (= lt!371824 (lemmaNoChangeToArrayThenSameMapNoExtras!533 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2417 (array!45984 array!45986 (_ BitVec 32) (_ BitVec 32) V!24893 V!24893 (_ BitVec 32) Int) ListLongMap!8759)

(assert (=> b!824396 (= lt!371825 (getCurrentListMapNoExtraKeys!2417 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824396 (= lt!371827 (getCurrentListMapNoExtraKeys!2417 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!562160 () Bool)

(assert (=> start!71030 (=> (not res!562160) (not e!458709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71030 (= res!562160 (validMask!0 mask!1312))))

(assert (=> start!71030 e!458709))

(assert (=> start!71030 tp_is_empty!14919))

(declare-fun array_inv!17559 (array!45984) Bool)

(assert (=> start!71030 (array_inv!17559 _keys!976)))

(assert (=> start!71030 true))

(declare-fun array_inv!17560 (array!45986) Bool)

(assert (=> start!71030 (and (array_inv!17560 _values!788) e!458710)))

(assert (=> start!71030 tp!46381))

(declare-fun b!824395 () Bool)

(assert (=> b!824395 (= e!458712 tp_is_empty!14919)))

(assert (= (and start!71030 res!562160) b!824391))

(assert (= (and b!824391 res!562163) b!824389))

(assert (= (and b!824389 res!562159) b!824392))

(assert (= (and b!824392 res!562161) b!824396))

(assert (= (and b!824396 (not res!562162)) b!824394))

(assert (= (and b!824393 condMapEmpty!23998) mapIsEmpty!23998))

(assert (= (and b!824393 (not condMapEmpty!23998)) mapNonEmpty!23998))

(get-info :version)

(assert (= (and mapNonEmpty!23998 ((_ is ValueCellFull!7044) mapValue!23998)) b!824390))

(assert (= (and b!824393 ((_ is ValueCellFull!7044) mapDefault!23998)) b!824395))

(assert (= start!71030 b!824393))

(declare-fun m!766551 () Bool)

(assert (=> b!824389 m!766551))

(declare-fun m!766553 () Bool)

(assert (=> b!824392 m!766553))

(declare-fun m!766555 () Bool)

(assert (=> mapNonEmpty!23998 m!766555))

(declare-fun m!766557 () Bool)

(assert (=> b!824396 m!766557))

(declare-fun m!766559 () Bool)

(assert (=> b!824396 m!766559))

(declare-fun m!766561 () Bool)

(assert (=> b!824396 m!766561))

(declare-fun m!766563 () Bool)

(assert (=> b!824394 m!766563))

(declare-fun m!766565 () Bool)

(assert (=> start!71030 m!766565))

(declare-fun m!766567 () Bool)

(assert (=> start!71030 m!766567))

(declare-fun m!766569 () Bool)

(assert (=> start!71030 m!766569))

(check-sat (not b!824394) b_and!22131 (not b!824392) (not start!71030) tp_is_empty!14919 (not mapNonEmpty!23998) (not b_next!13209) (not b!824389) (not b!824396))
(check-sat b_and!22131 (not b_next!13209))
