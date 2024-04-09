; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70020 () Bool)

(assert start!70020)

(declare-fun b_free!12417 () Bool)

(declare-fun b_next!12417 () Bool)

(assert (=> start!70020 (= b_free!12417 (not b_next!12417))))

(declare-fun tp!43965 () Bool)

(declare-fun b_and!21207 () Bool)

(assert (=> start!70020 (= tp!43965 b_and!21207)))

(declare-fun b!813374 () Bool)

(declare-fun res!555771 () Bool)

(declare-fun e!450754 () Bool)

(assert (=> b!813374 (=> (not res!555771) (not e!450754))))

(declare-datatypes ((array!44444 0))(
  ( (array!44445 (arr!21278 (Array (_ BitVec 32) (_ BitVec 64))) (size!21699 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44444)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23837 0))(
  ( (V!23838 (val!7111 Int)) )
))
(declare-datatypes ((ValueCell!6648 0))(
  ( (ValueCellFull!6648 (v!9534 V!23837)) (EmptyCell!6648) )
))
(declare-datatypes ((array!44446 0))(
  ( (array!44447 (arr!21279 (Array (_ BitVec 32) ValueCell!6648)) (size!21700 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44446)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813374 (= res!555771 (and (= (size!21700 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21699 _keys!976) (size!21700 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!22771 () Bool)

(declare-fun mapRes!22771 () Bool)

(declare-fun tp!43966 () Bool)

(declare-fun e!450751 () Bool)

(assert (=> mapNonEmpty!22771 (= mapRes!22771 (and tp!43966 e!450751))))

(declare-fun mapValue!22771 () ValueCell!6648)

(declare-fun mapKey!22771 () (_ BitVec 32))

(declare-fun mapRest!22771 () (Array (_ BitVec 32) ValueCell!6648))

(assert (=> mapNonEmpty!22771 (= (arr!21279 _values!788) (store mapRest!22771 mapKey!22771 mapValue!22771))))

(declare-fun mapIsEmpty!22771 () Bool)

(assert (=> mapIsEmpty!22771 mapRes!22771))

(declare-fun b!813375 () Bool)

(assert (=> b!813375 (= e!450754 false)))

(declare-fun zeroValueAfter!34 () V!23837)

(declare-fun minValue!754 () V!23837)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9318 0))(
  ( (tuple2!9319 (_1!4669 (_ BitVec 64)) (_2!4669 V!23837)) )
))
(declare-datatypes ((List!15191 0))(
  ( (Nil!15188) (Cons!15187 (h!16316 tuple2!9318) (t!21516 List!15191)) )
))
(declare-datatypes ((ListLongMap!8155 0))(
  ( (ListLongMap!8156 (toList!4093 List!15191)) )
))
(declare-fun lt!364268 () ListLongMap!8155)

(declare-fun getCurrentListMapNoExtraKeys!2142 (array!44444 array!44446 (_ BitVec 32) (_ BitVec 32) V!23837 V!23837 (_ BitVec 32) Int) ListLongMap!8155)

(assert (=> b!813375 (= lt!364268 (getCurrentListMapNoExtraKeys!2142 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!364267 () ListLongMap!8155)

(declare-fun zeroValueBefore!34 () V!23837)

(assert (=> b!813375 (= lt!364267 (getCurrentListMapNoExtraKeys!2142 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813376 () Bool)

(declare-fun res!555772 () Bool)

(assert (=> b!813376 (=> (not res!555772) (not e!450754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44444 (_ BitVec 32)) Bool)

(assert (=> b!813376 (= res!555772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!813377 () Bool)

(declare-fun e!450755 () Bool)

(declare-fun tp_is_empty!14127 () Bool)

(assert (=> b!813377 (= e!450755 tp_is_empty!14127)))

(declare-fun b!813378 () Bool)

(declare-fun res!555770 () Bool)

(assert (=> b!813378 (=> (not res!555770) (not e!450754))))

(declare-datatypes ((List!15192 0))(
  ( (Nil!15189) (Cons!15188 (h!16317 (_ BitVec 64)) (t!21517 List!15192)) )
))
(declare-fun arrayNoDuplicates!0 (array!44444 (_ BitVec 32) List!15192) Bool)

(assert (=> b!813378 (= res!555770 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15189))))

(declare-fun res!555773 () Bool)

(assert (=> start!70020 (=> (not res!555773) (not e!450754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70020 (= res!555773 (validMask!0 mask!1312))))

(assert (=> start!70020 e!450754))

(assert (=> start!70020 tp_is_empty!14127))

(declare-fun array_inv!17019 (array!44444) Bool)

(assert (=> start!70020 (array_inv!17019 _keys!976)))

(assert (=> start!70020 true))

(declare-fun e!450752 () Bool)

(declare-fun array_inv!17020 (array!44446) Bool)

(assert (=> start!70020 (and (array_inv!17020 _values!788) e!450752)))

(assert (=> start!70020 tp!43965))

(declare-fun b!813379 () Bool)

(assert (=> b!813379 (= e!450752 (and e!450755 mapRes!22771))))

(declare-fun condMapEmpty!22771 () Bool)

(declare-fun mapDefault!22771 () ValueCell!6648)

(assert (=> b!813379 (= condMapEmpty!22771 (= (arr!21279 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6648)) mapDefault!22771)))))

(declare-fun b!813380 () Bool)

(assert (=> b!813380 (= e!450751 tp_is_empty!14127)))

(assert (= (and start!70020 res!555773) b!813374))

(assert (= (and b!813374 res!555771) b!813376))

(assert (= (and b!813376 res!555772) b!813378))

(assert (= (and b!813378 res!555770) b!813375))

(assert (= (and b!813379 condMapEmpty!22771) mapIsEmpty!22771))

(assert (= (and b!813379 (not condMapEmpty!22771)) mapNonEmpty!22771))

(get-info :version)

(assert (= (and mapNonEmpty!22771 ((_ is ValueCellFull!6648) mapValue!22771)) b!813380))

(assert (= (and b!813379 ((_ is ValueCellFull!6648) mapDefault!22771)) b!813377))

(assert (= start!70020 b!813379))

(declare-fun m!755475 () Bool)

(assert (=> mapNonEmpty!22771 m!755475))

(declare-fun m!755477 () Bool)

(assert (=> b!813376 m!755477))

(declare-fun m!755479 () Bool)

(assert (=> b!813378 m!755479))

(declare-fun m!755481 () Bool)

(assert (=> b!813375 m!755481))

(declare-fun m!755483 () Bool)

(assert (=> b!813375 m!755483))

(declare-fun m!755485 () Bool)

(assert (=> start!70020 m!755485))

(declare-fun m!755487 () Bool)

(assert (=> start!70020 m!755487))

(declare-fun m!755489 () Bool)

(assert (=> start!70020 m!755489))

(check-sat tp_is_empty!14127 (not mapNonEmpty!22771) (not b!813376) (not b!813378) (not b!813375) (not b_next!12417) b_and!21207 (not start!70020))
(check-sat b_and!21207 (not b_next!12417))
