; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71284 () Bool)

(assert start!71284)

(declare-fun b_free!13407 () Bool)

(declare-fun b_next!13407 () Bool)

(assert (=> start!71284 (= b_free!13407 (not b_next!13407))))

(declare-fun tp!46983 () Bool)

(declare-fun b_and!22363 () Bool)

(assert (=> start!71284 (= tp!46983 b_and!22363)))

(declare-fun b!827563 () Bool)

(declare-fun e!461084 () Bool)

(declare-fun tp_is_empty!15117 () Bool)

(assert (=> b!827563 (= e!461084 tp_is_empty!15117)))

(declare-fun mapNonEmpty!24304 () Bool)

(declare-fun mapRes!24304 () Bool)

(declare-fun tp!46984 () Bool)

(declare-fun e!461083 () Bool)

(assert (=> mapNonEmpty!24304 (= mapRes!24304 (and tp!46984 e!461083))))

(declare-fun mapKey!24304 () (_ BitVec 32))

(declare-datatypes ((V!25157 0))(
  ( (V!25158 (val!7606 Int)) )
))
(declare-datatypes ((ValueCell!7143 0))(
  ( (ValueCellFull!7143 (v!10037 V!25157)) (EmptyCell!7143) )
))
(declare-fun mapRest!24304 () (Array (_ BitVec 32) ValueCell!7143))

(declare-fun mapValue!24304 () ValueCell!7143)

(declare-datatypes ((array!46368 0))(
  ( (array!46369 (arr!22224 (Array (_ BitVec 32) ValueCell!7143)) (size!22645 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46368)

(assert (=> mapNonEmpty!24304 (= (arr!22224 _values!788) (store mapRest!24304 mapKey!24304 mapValue!24304))))

(declare-fun b!827564 () Bool)

(declare-fun e!461085 () Bool)

(assert (=> b!827564 (= e!461085 (and e!461084 mapRes!24304))))

(declare-fun condMapEmpty!24304 () Bool)

(declare-fun mapDefault!24304 () ValueCell!7143)

(assert (=> b!827564 (= condMapEmpty!24304 (= (arr!22224 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7143)) mapDefault!24304)))))

(declare-fun b!827565 () Bool)

(declare-fun res!564148 () Bool)

(declare-fun e!461082 () Bool)

(assert (=> b!827565 (=> (not res!564148) (not e!461082))))

(declare-datatypes ((array!46370 0))(
  ( (array!46371 (arr!22225 (Array (_ BitVec 32) (_ BitVec 64))) (size!22646 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46370)

(declare-datatypes ((List!15933 0))(
  ( (Nil!15930) (Cons!15929 (h!17058 (_ BitVec 64)) (t!22290 List!15933)) )
))
(declare-fun arrayNoDuplicates!0 (array!46370 (_ BitVec 32) List!15933) Bool)

(assert (=> b!827565 (= res!564148 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15930))))

(declare-fun b!827566 () Bool)

(declare-fun res!564151 () Bool)

(assert (=> b!827566 (=> (not res!564151) (not e!461082))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46370 (_ BitVec 32)) Bool)

(assert (=> b!827566 (= res!564151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827567 () Bool)

(declare-fun res!564149 () Bool)

(assert (=> b!827567 (=> (not res!564149) (not e!461082))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!827567 (= res!564149 (and (= (size!22645 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22646 _keys!976) (size!22645 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!564150 () Bool)

(assert (=> start!71284 (=> (not res!564150) (not e!461082))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71284 (= res!564150 (validMask!0 mask!1312))))

(assert (=> start!71284 e!461082))

(assert (=> start!71284 tp_is_empty!15117))

(declare-fun array_inv!17691 (array!46370) Bool)

(assert (=> start!71284 (array_inv!17691 _keys!976)))

(assert (=> start!71284 true))

(declare-fun array_inv!17692 (array!46368) Bool)

(assert (=> start!71284 (and (array_inv!17692 _values!788) e!461085)))

(assert (=> start!71284 tp!46983))

(declare-fun b!827568 () Bool)

(assert (=> b!827568 (= e!461082 false)))

(declare-fun zeroValueAfter!34 () V!25157)

(declare-fun minValue!754 () V!25157)

(declare-datatypes ((tuple2!10096 0))(
  ( (tuple2!10097 (_1!5058 (_ BitVec 64)) (_2!5058 V!25157)) )
))
(declare-datatypes ((List!15934 0))(
  ( (Nil!15931) (Cons!15930 (h!17059 tuple2!10096) (t!22291 List!15934)) )
))
(declare-datatypes ((ListLongMap!8933 0))(
  ( (ListLongMap!8934 (toList!4482 List!15934)) )
))
(declare-fun lt!374932 () ListLongMap!8933)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2489 (array!46370 array!46368 (_ BitVec 32) (_ BitVec 32) V!25157 V!25157 (_ BitVec 32) Int) ListLongMap!8933)

(assert (=> b!827568 (= lt!374932 (getCurrentListMapNoExtraKeys!2489 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25157)

(declare-fun lt!374931 () ListLongMap!8933)

(assert (=> b!827568 (= lt!374931 (getCurrentListMapNoExtraKeys!2489 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24304 () Bool)

(assert (=> mapIsEmpty!24304 mapRes!24304))

(declare-fun b!827569 () Bool)

(assert (=> b!827569 (= e!461083 tp_is_empty!15117)))

(assert (= (and start!71284 res!564150) b!827567))

(assert (= (and b!827567 res!564149) b!827566))

(assert (= (and b!827566 res!564151) b!827565))

(assert (= (and b!827565 res!564148) b!827568))

(assert (= (and b!827564 condMapEmpty!24304) mapIsEmpty!24304))

(assert (= (and b!827564 (not condMapEmpty!24304)) mapNonEmpty!24304))

(get-info :version)

(assert (= (and mapNonEmpty!24304 ((_ is ValueCellFull!7143) mapValue!24304)) b!827569))

(assert (= (and b!827564 ((_ is ValueCellFull!7143) mapDefault!24304)) b!827563))

(assert (= start!71284 b!827564))

(declare-fun m!770669 () Bool)

(assert (=> start!71284 m!770669))

(declare-fun m!770671 () Bool)

(assert (=> start!71284 m!770671))

(declare-fun m!770673 () Bool)

(assert (=> start!71284 m!770673))

(declare-fun m!770675 () Bool)

(assert (=> b!827568 m!770675))

(declare-fun m!770677 () Bool)

(assert (=> b!827568 m!770677))

(declare-fun m!770679 () Bool)

(assert (=> b!827566 m!770679))

(declare-fun m!770681 () Bool)

(assert (=> mapNonEmpty!24304 m!770681))

(declare-fun m!770683 () Bool)

(assert (=> b!827565 m!770683))

(check-sat b_and!22363 (not start!71284) (not mapNonEmpty!24304) (not b!827568) (not b_next!13407) (not b!827566) (not b!827565) tp_is_empty!15117)
(check-sat b_and!22363 (not b_next!13407))
