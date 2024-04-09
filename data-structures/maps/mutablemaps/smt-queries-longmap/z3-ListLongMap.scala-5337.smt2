; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71338 () Bool)

(assert start!71338)

(declare-fun b_free!13431 () Bool)

(declare-fun b_next!13431 () Bool)

(assert (=> start!71338 (= b_free!13431 (not b_next!13431))))

(declare-fun tp!47061 () Bool)

(declare-fun b_and!22407 () Bool)

(assert (=> start!71338 (= tp!47061 b_and!22407)))

(declare-fun b!828089 () Bool)

(declare-fun e!461446 () Bool)

(declare-fun e!461443 () Bool)

(declare-fun mapRes!24346 () Bool)

(assert (=> b!828089 (= e!461446 (and e!461443 mapRes!24346))))

(declare-fun condMapEmpty!24346 () Bool)

(declare-datatypes ((V!25189 0))(
  ( (V!25190 (val!7618 Int)) )
))
(declare-datatypes ((ValueCell!7155 0))(
  ( (ValueCellFull!7155 (v!10050 V!25189)) (EmptyCell!7155) )
))
(declare-datatypes ((array!46420 0))(
  ( (array!46421 (arr!22248 (Array (_ BitVec 32) ValueCell!7155)) (size!22669 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46420)

(declare-fun mapDefault!24346 () ValueCell!7155)

(assert (=> b!828089 (= condMapEmpty!24346 (= (arr!22248 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7155)) mapDefault!24346)))))

(declare-fun res!564413 () Bool)

(declare-fun e!461442 () Bool)

(assert (=> start!71338 (=> (not res!564413) (not e!461442))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71338 (= res!564413 (validMask!0 mask!1312))))

(assert (=> start!71338 e!461442))

(declare-fun tp_is_empty!15141 () Bool)

(assert (=> start!71338 tp_is_empty!15141))

(declare-datatypes ((array!46422 0))(
  ( (array!46423 (arr!22249 (Array (_ BitVec 32) (_ BitVec 64))) (size!22670 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46422)

(declare-fun array_inv!17709 (array!46422) Bool)

(assert (=> start!71338 (array_inv!17709 _keys!976)))

(assert (=> start!71338 true))

(declare-fun array_inv!17710 (array!46420) Bool)

(assert (=> start!71338 (and (array_inv!17710 _values!788) e!461446)))

(assert (=> start!71338 tp!47061))

(declare-fun b!828090 () Bool)

(declare-fun res!564414 () Bool)

(assert (=> b!828090 (=> (not res!564414) (not e!461442))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46422 (_ BitVec 32)) Bool)

(assert (=> b!828090 (= res!564414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!828091 () Bool)

(declare-fun e!461444 () Bool)

(assert (=> b!828091 (= e!461444 tp_is_empty!15141)))

(declare-fun b!828092 () Bool)

(declare-fun e!461445 () Bool)

(assert (=> b!828092 (= e!461442 (not e!461445))))

(declare-fun res!564410 () Bool)

(assert (=> b!828092 (=> res!564410 e!461445)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!828092 (= res!564410 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!10118 0))(
  ( (tuple2!10119 (_1!5069 (_ BitVec 64)) (_2!5069 V!25189)) )
))
(declare-datatypes ((List!15955 0))(
  ( (Nil!15952) (Cons!15951 (h!17080 tuple2!10118) (t!22316 List!15955)) )
))
(declare-datatypes ((ListLongMap!8955 0))(
  ( (ListLongMap!8956 (toList!4493 List!15955)) )
))
(declare-fun lt!375207 () ListLongMap!8955)

(declare-fun lt!375205 () ListLongMap!8955)

(assert (=> b!828092 (= lt!375207 lt!375205)))

(declare-fun zeroValueBefore!34 () V!25189)

(declare-fun zeroValueAfter!34 () V!25189)

(declare-fun minValue!754 () V!25189)

(declare-datatypes ((Unit!28373 0))(
  ( (Unit!28374) )
))
(declare-fun lt!375204 () Unit!28373)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!589 (array!46422 array!46420 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25189 V!25189 V!25189 V!25189 (_ BitVec 32) Int) Unit!28373)

(assert (=> b!828092 (= lt!375204 (lemmaNoChangeToArrayThenSameMapNoExtras!589 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2499 (array!46422 array!46420 (_ BitVec 32) (_ BitVec 32) V!25189 V!25189 (_ BitVec 32) Int) ListLongMap!8955)

(assert (=> b!828092 (= lt!375205 (getCurrentListMapNoExtraKeys!2499 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!828092 (= lt!375207 (getCurrentListMapNoExtraKeys!2499 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828093 () Bool)

(declare-fun res!564411 () Bool)

(assert (=> b!828093 (=> (not res!564411) (not e!461442))))

(declare-datatypes ((List!15956 0))(
  ( (Nil!15953) (Cons!15952 (h!17081 (_ BitVec 64)) (t!22317 List!15956)) )
))
(declare-fun arrayNoDuplicates!0 (array!46422 (_ BitVec 32) List!15956) Bool)

(assert (=> b!828093 (= res!564411 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15953))))

(declare-fun mapIsEmpty!24346 () Bool)

(assert (=> mapIsEmpty!24346 mapRes!24346))

(declare-fun b!828094 () Bool)

(declare-fun res!564412 () Bool)

(assert (=> b!828094 (=> (not res!564412) (not e!461442))))

(assert (=> b!828094 (= res!564412 (and (= (size!22669 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22670 _keys!976) (size!22669 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!24346 () Bool)

(declare-fun tp!47062 () Bool)

(assert (=> mapNonEmpty!24346 (= mapRes!24346 (and tp!47062 e!461444))))

(declare-fun mapKey!24346 () (_ BitVec 32))

(declare-fun mapValue!24346 () ValueCell!7155)

(declare-fun mapRest!24346 () (Array (_ BitVec 32) ValueCell!7155))

(assert (=> mapNonEmpty!24346 (= (arr!22248 _values!788) (store mapRest!24346 mapKey!24346 mapValue!24346))))

(declare-fun b!828095 () Bool)

(assert (=> b!828095 (= e!461443 tp_is_empty!15141)))

(declare-fun b!828096 () Bool)

(assert (=> b!828096 (= e!461445 true)))

(declare-fun lt!375208 () ListLongMap!8955)

(declare-fun getCurrentListMap!2568 (array!46422 array!46420 (_ BitVec 32) (_ BitVec 32) V!25189 V!25189 (_ BitVec 32) Int) ListLongMap!8955)

(assert (=> b!828096 (= lt!375208 (getCurrentListMap!2568 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375206 () ListLongMap!8955)

(declare-fun +!1926 (ListLongMap!8955 tuple2!10118) ListLongMap!8955)

(assert (=> b!828096 (= lt!375206 (+!1926 (getCurrentListMap!2568 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!10119 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and start!71338 res!564413) b!828094))

(assert (= (and b!828094 res!564412) b!828090))

(assert (= (and b!828090 res!564414) b!828093))

(assert (= (and b!828093 res!564411) b!828092))

(assert (= (and b!828092 (not res!564410)) b!828096))

(assert (= (and b!828089 condMapEmpty!24346) mapIsEmpty!24346))

(assert (= (and b!828089 (not condMapEmpty!24346)) mapNonEmpty!24346))

(get-info :version)

(assert (= (and mapNonEmpty!24346 ((_ is ValueCellFull!7155) mapValue!24346)) b!828091))

(assert (= (and b!828089 ((_ is ValueCellFull!7155) mapDefault!24346)) b!828095))

(assert (= start!71338 b!828089))

(declare-fun m!771127 () Bool)

(assert (=> b!828090 m!771127))

(declare-fun m!771129 () Bool)

(assert (=> b!828096 m!771129))

(declare-fun m!771131 () Bool)

(assert (=> b!828096 m!771131))

(assert (=> b!828096 m!771131))

(declare-fun m!771133 () Bool)

(assert (=> b!828096 m!771133))

(declare-fun m!771135 () Bool)

(assert (=> mapNonEmpty!24346 m!771135))

(declare-fun m!771137 () Bool)

(assert (=> start!71338 m!771137))

(declare-fun m!771139 () Bool)

(assert (=> start!71338 m!771139))

(declare-fun m!771141 () Bool)

(assert (=> start!71338 m!771141))

(declare-fun m!771143 () Bool)

(assert (=> b!828093 m!771143))

(declare-fun m!771145 () Bool)

(assert (=> b!828092 m!771145))

(declare-fun m!771147 () Bool)

(assert (=> b!828092 m!771147))

(declare-fun m!771149 () Bool)

(assert (=> b!828092 m!771149))

(check-sat (not b!828092) b_and!22407 (not b!828096) (not mapNonEmpty!24346) (not start!71338) (not b!828090) (not b_next!13431) tp_is_empty!15141 (not b!828093))
(check-sat b_and!22407 (not b_next!13431))
