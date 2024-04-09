; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71286 () Bool)

(assert start!71286)

(declare-fun b_free!13409 () Bool)

(declare-fun b_next!13409 () Bool)

(assert (=> start!71286 (= b_free!13409 (not b_next!13409))))

(declare-fun tp!46990 () Bool)

(declare-fun b_and!22365 () Bool)

(assert (=> start!71286 (= tp!46990 b_and!22365)))

(declare-fun mapNonEmpty!24307 () Bool)

(declare-fun mapRes!24307 () Bool)

(declare-fun tp!46989 () Bool)

(declare-fun e!461098 () Bool)

(assert (=> mapNonEmpty!24307 (= mapRes!24307 (and tp!46989 e!461098))))

(declare-fun mapKey!24307 () (_ BitVec 32))

(declare-datatypes ((V!25159 0))(
  ( (V!25160 (val!7607 Int)) )
))
(declare-datatypes ((ValueCell!7144 0))(
  ( (ValueCellFull!7144 (v!10038 V!25159)) (EmptyCell!7144) )
))
(declare-datatypes ((array!46372 0))(
  ( (array!46373 (arr!22226 (Array (_ BitVec 32) ValueCell!7144)) (size!22647 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46372)

(declare-fun mapValue!24307 () ValueCell!7144)

(declare-fun mapRest!24307 () (Array (_ BitVec 32) ValueCell!7144))

(assert (=> mapNonEmpty!24307 (= (arr!22226 _values!788) (store mapRest!24307 mapKey!24307 mapValue!24307))))

(declare-fun res!564160 () Bool)

(declare-fun e!461101 () Bool)

(assert (=> start!71286 (=> (not res!564160) (not e!461101))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71286 (= res!564160 (validMask!0 mask!1312))))

(assert (=> start!71286 e!461101))

(declare-fun tp_is_empty!15119 () Bool)

(assert (=> start!71286 tp_is_empty!15119))

(declare-datatypes ((array!46374 0))(
  ( (array!46375 (arr!22227 (Array (_ BitVec 32) (_ BitVec 64))) (size!22648 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46374)

(declare-fun array_inv!17693 (array!46374) Bool)

(assert (=> start!71286 (array_inv!17693 _keys!976)))

(assert (=> start!71286 true))

(declare-fun e!461100 () Bool)

(declare-fun array_inv!17694 (array!46372) Bool)

(assert (=> start!71286 (and (array_inv!17694 _values!788) e!461100)))

(assert (=> start!71286 tp!46990))

(declare-fun b!827584 () Bool)

(declare-fun res!564161 () Bool)

(assert (=> b!827584 (=> (not res!564161) (not e!461101))))

(declare-datatypes ((List!15935 0))(
  ( (Nil!15932) (Cons!15931 (h!17060 (_ BitVec 64)) (t!22292 List!15935)) )
))
(declare-fun arrayNoDuplicates!0 (array!46374 (_ BitVec 32) List!15935) Bool)

(assert (=> b!827584 (= res!564161 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15932))))

(declare-fun b!827585 () Bool)

(assert (=> b!827585 (= e!461101 false)))

(declare-datatypes ((tuple2!10098 0))(
  ( (tuple2!10099 (_1!5059 (_ BitVec 64)) (_2!5059 V!25159)) )
))
(declare-datatypes ((List!15936 0))(
  ( (Nil!15933) (Cons!15932 (h!17061 tuple2!10098) (t!22293 List!15936)) )
))
(declare-datatypes ((ListLongMap!8935 0))(
  ( (ListLongMap!8936 (toList!4483 List!15936)) )
))
(declare-fun lt!374938 () ListLongMap!8935)

(declare-fun zeroValueAfter!34 () V!25159)

(declare-fun minValue!754 () V!25159)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2490 (array!46374 array!46372 (_ BitVec 32) (_ BitVec 32) V!25159 V!25159 (_ BitVec 32) Int) ListLongMap!8935)

(assert (=> b!827585 (= lt!374938 (getCurrentListMapNoExtraKeys!2490 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25159)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!374937 () ListLongMap!8935)

(assert (=> b!827585 (= lt!374937 (getCurrentListMapNoExtraKeys!2490 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24307 () Bool)

(assert (=> mapIsEmpty!24307 mapRes!24307))

(declare-fun b!827586 () Bool)

(assert (=> b!827586 (= e!461098 tp_is_empty!15119)))

(declare-fun b!827587 () Bool)

(declare-fun res!564162 () Bool)

(assert (=> b!827587 (=> (not res!564162) (not e!461101))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46374 (_ BitVec 32)) Bool)

(assert (=> b!827587 (= res!564162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827588 () Bool)

(declare-fun res!564163 () Bool)

(assert (=> b!827588 (=> (not res!564163) (not e!461101))))

(assert (=> b!827588 (= res!564163 (and (= (size!22647 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22648 _keys!976) (size!22647 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827589 () Bool)

(declare-fun e!461097 () Bool)

(assert (=> b!827589 (= e!461100 (and e!461097 mapRes!24307))))

(declare-fun condMapEmpty!24307 () Bool)

(declare-fun mapDefault!24307 () ValueCell!7144)

