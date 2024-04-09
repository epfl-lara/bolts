; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70294 () Bool)

(assert start!70294)

(declare-fun b_free!12645 () Bool)

(declare-fun b_next!12645 () Bool)

(assert (=> start!70294 (= b_free!12645 (not b_next!12645))))

(declare-fun tp!44659 () Bool)

(declare-fun b_and!21463 () Bool)

(assert (=> start!70294 (= tp!44659 b_and!21463)))

(declare-fun b!816208 () Bool)

(declare-fun e!452771 () Bool)

(declare-fun tp_is_empty!14355 () Bool)

(assert (=> b!816208 (= e!452771 tp_is_empty!14355)))

(declare-fun res!557372 () Bool)

(declare-fun e!452772 () Bool)

(assert (=> start!70294 (=> (not res!557372) (not e!452772))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70294 (= res!557372 (validMask!0 mask!1312))))

(assert (=> start!70294 e!452772))

(assert (=> start!70294 tp_is_empty!14355))

(declare-datatypes ((array!44892 0))(
  ( (array!44893 (arr!21499 (Array (_ BitVec 32) (_ BitVec 64))) (size!21920 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44892)

(declare-fun array_inv!17181 (array!44892) Bool)

(assert (=> start!70294 (array_inv!17181 _keys!976)))

(assert (=> start!70294 true))

(declare-datatypes ((V!24141 0))(
  ( (V!24142 (val!7225 Int)) )
))
(declare-datatypes ((ValueCell!6762 0))(
  ( (ValueCellFull!6762 (v!9649 V!24141)) (EmptyCell!6762) )
))
(declare-datatypes ((array!44894 0))(
  ( (array!44895 (arr!21500 (Array (_ BitVec 32) ValueCell!6762)) (size!21921 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44894)

(declare-fun e!452768 () Bool)

(declare-fun array_inv!17182 (array!44894) Bool)

(assert (=> start!70294 (and (array_inv!17182 _values!788) e!452768)))

(assert (=> start!70294 tp!44659))

(declare-fun b!816209 () Bool)

(declare-fun res!557371 () Bool)

(assert (=> b!816209 (=> (not res!557371) (not e!452772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44892 (_ BitVec 32)) Bool)

(assert (=> b!816209 (= res!557371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!816210 () Bool)

(declare-fun res!557368 () Bool)

(assert (=> b!816210 (=> (not res!557368) (not e!452772))))

(declare-datatypes ((List!15364 0))(
  ( (Nil!15361) (Cons!15360 (h!16489 (_ BitVec 64)) (t!21695 List!15364)) )
))
(declare-fun arrayNoDuplicates!0 (array!44892 (_ BitVec 32) List!15364) Bool)

(assert (=> b!816210 (= res!557368 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15361))))

(declare-fun b!816211 () Bool)

(declare-fun e!452767 () Bool)

(assert (=> b!816211 (= e!452772 (not e!452767))))

(declare-fun res!557370 () Bool)

(assert (=> b!816211 (=> res!557370 e!452767)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!816211 (= res!557370 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9496 0))(
  ( (tuple2!9497 (_1!4758 (_ BitVec 64)) (_2!4758 V!24141)) )
))
(declare-datatypes ((List!15365 0))(
  ( (Nil!15362) (Cons!15361 (h!16490 tuple2!9496) (t!21696 List!15365)) )
))
(declare-datatypes ((ListLongMap!8333 0))(
  ( (ListLongMap!8334 (toList!4182 List!15365)) )
))
(declare-fun lt!365575 () ListLongMap!8333)

(declare-fun lt!365577 () ListLongMap!8333)

(assert (=> b!816211 (= lt!365575 lt!365577)))

(declare-fun zeroValueBefore!34 () V!24141)

(declare-fun minValue!754 () V!24141)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24141)

(declare-datatypes ((Unit!27822 0))(
  ( (Unit!27823) )
))
(declare-fun lt!365573 () Unit!27822)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!347 (array!44892 array!44894 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24141 V!24141 V!24141 V!24141 (_ BitVec 32) Int) Unit!27822)

(assert (=> b!816211 (= lt!365573 (lemmaNoChangeToArrayThenSameMapNoExtras!347 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2231 (array!44892 array!44894 (_ BitVec 32) (_ BitVec 32) V!24141 V!24141 (_ BitVec 32) Int) ListLongMap!8333)

(assert (=> b!816211 (= lt!365577 (getCurrentListMapNoExtraKeys!2231 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!816211 (= lt!365575 (getCurrentListMapNoExtraKeys!2231 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!816212 () Bool)

(declare-fun e!452769 () Bool)

(assert (=> b!816212 (= e!452769 tp_is_empty!14355)))

(declare-fun mapIsEmpty!23122 () Bool)

(declare-fun mapRes!23122 () Bool)

(assert (=> mapIsEmpty!23122 mapRes!23122))

(declare-fun b!816213 () Bool)

(declare-fun res!557369 () Bool)

(assert (=> b!816213 (=> (not res!557369) (not e!452772))))

(assert (=> b!816213 (= res!557369 (and (= (size!21921 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21920 _keys!976) (size!21921 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23122 () Bool)

(declare-fun tp!44658 () Bool)

(assert (=> mapNonEmpty!23122 (= mapRes!23122 (and tp!44658 e!452769))))

(declare-fun mapRest!23122 () (Array (_ BitVec 32) ValueCell!6762))

(declare-fun mapKey!23122 () (_ BitVec 32))

(declare-fun mapValue!23122 () ValueCell!6762)

(assert (=> mapNonEmpty!23122 (= (arr!21500 _values!788) (store mapRest!23122 mapKey!23122 mapValue!23122))))

(declare-fun b!816214 () Bool)

(assert (=> b!816214 (= e!452767 true)))

(declare-fun lt!365574 () ListLongMap!8333)

(declare-fun getCurrentListMap!2369 (array!44892 array!44894 (_ BitVec 32) (_ BitVec 32) V!24141 V!24141 (_ BitVec 32) Int) ListLongMap!8333)

(assert (=> b!816214 (= lt!365574 (getCurrentListMap!2369 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365576 () ListLongMap!8333)

(declare-fun +!1768 (ListLongMap!8333 tuple2!9496) ListLongMap!8333)

(assert (=> b!816214 (= lt!365576 (+!1768 (getCurrentListMap!2369 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9497 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!816215 () Bool)

(assert (=> b!816215 (= e!452768 (and e!452771 mapRes!23122))))

(declare-fun condMapEmpty!23122 () Bool)

(declare-fun mapDefault!23122 () ValueCell!6762)

(assert (=> b!816215 (= condMapEmpty!23122 (= (arr!21500 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6762)) mapDefault!23122)))))

(assert (= (and start!70294 res!557372) b!816213))

(assert (= (and b!816213 res!557369) b!816209))

(assert (= (and b!816209 res!557371) b!816210))

(assert (= (and b!816210 res!557368) b!816211))

(assert (= (and b!816211 (not res!557370)) b!816214))

(assert (= (and b!816215 condMapEmpty!23122) mapIsEmpty!23122))

(assert (= (and b!816215 (not condMapEmpty!23122)) mapNonEmpty!23122))

(get-info :version)

(assert (= (and mapNonEmpty!23122 ((_ is ValueCellFull!6762) mapValue!23122)) b!816212))

(assert (= (and b!816215 ((_ is ValueCellFull!6762) mapDefault!23122)) b!816208))

(assert (= start!70294 b!816215))

(declare-fun m!757933 () Bool)

(assert (=> start!70294 m!757933))

(declare-fun m!757935 () Bool)

(assert (=> start!70294 m!757935))

(declare-fun m!757937 () Bool)

(assert (=> start!70294 m!757937))

(declare-fun m!757939 () Bool)

(assert (=> b!816214 m!757939))

(declare-fun m!757941 () Bool)

(assert (=> b!816214 m!757941))

(assert (=> b!816214 m!757941))

(declare-fun m!757943 () Bool)

(assert (=> b!816214 m!757943))

(declare-fun m!757945 () Bool)

(assert (=> b!816211 m!757945))

(declare-fun m!757947 () Bool)

(assert (=> b!816211 m!757947))

(declare-fun m!757949 () Bool)

(assert (=> b!816211 m!757949))

(declare-fun m!757951 () Bool)

(assert (=> b!816209 m!757951))

(declare-fun m!757953 () Bool)

(assert (=> b!816210 m!757953))

(declare-fun m!757955 () Bool)

(assert (=> mapNonEmpty!23122 m!757955))

(check-sat (not b!816210) (not b!816214) tp_is_empty!14355 b_and!21463 (not b_next!12645) (not mapNonEmpty!23122) (not b!816209) (not b!816211) (not start!70294))
(check-sat b_and!21463 (not b_next!12645))
