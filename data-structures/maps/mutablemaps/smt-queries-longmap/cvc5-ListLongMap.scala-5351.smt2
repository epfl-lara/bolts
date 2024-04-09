; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71704 () Bool)

(assert start!71704)

(declare-fun b_free!13513 () Bool)

(declare-fun b_next!13513 () Bool)

(assert (=> start!71704 (= b_free!13513 (not b_next!13513))))

(declare-fun tp!47335 () Bool)

(declare-fun b_and!22617 () Bool)

(assert (=> start!71704 (= tp!47335 b_and!22617)))

(declare-fun b!833426 () Bool)

(declare-fun e!464944 () Bool)

(declare-fun tp_is_empty!15223 () Bool)

(assert (=> b!833426 (= e!464944 tp_is_empty!15223)))

(declare-fun res!566825 () Bool)

(declare-fun e!464950 () Bool)

(assert (=> start!71704 (=> (not res!566825) (not e!464950))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71704 (= res!566825 (validMask!0 mask!1312))))

(assert (=> start!71704 e!464950))

(assert (=> start!71704 tp_is_empty!15223))

(declare-datatypes ((array!46592 0))(
  ( (array!46593 (arr!22326 (Array (_ BitVec 32) (_ BitVec 64))) (size!22747 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46592)

(declare-fun array_inv!17755 (array!46592) Bool)

(assert (=> start!71704 (array_inv!17755 _keys!976)))

(assert (=> start!71704 true))

(declare-datatypes ((V!25299 0))(
  ( (V!25300 (val!7659 Int)) )
))
(declare-datatypes ((ValueCell!7196 0))(
  ( (ValueCellFull!7196 (v!10103 V!25299)) (EmptyCell!7196) )
))
(declare-datatypes ((array!46594 0))(
  ( (array!46595 (arr!22327 (Array (_ BitVec 32) ValueCell!7196)) (size!22748 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46594)

(declare-fun e!464947 () Bool)

(declare-fun array_inv!17756 (array!46594) Bool)

(assert (=> start!71704 (and (array_inv!17756 _values!788) e!464947)))

(assert (=> start!71704 tp!47335))

(declare-fun b!833427 () Bool)

(declare-fun res!566824 () Bool)

(assert (=> b!833427 (=> (not res!566824) (not e!464950))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46592 (_ BitVec 32)) Bool)

(assert (=> b!833427 (= res!566824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!833428 () Bool)

(declare-fun e!464949 () Bool)

(assert (=> b!833428 (= e!464950 (not e!464949))))

(declare-fun res!566828 () Bool)

(assert (=> b!833428 (=> res!566828 e!464949)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!833428 (= res!566828 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!10188 0))(
  ( (tuple2!10189 (_1!5104 (_ BitVec 64)) (_2!5104 V!25299)) )
))
(declare-datatypes ((List!16016 0))(
  ( (Nil!16013) (Cons!16012 (h!17143 tuple2!10188) (t!22395 List!16016)) )
))
(declare-datatypes ((ListLongMap!9025 0))(
  ( (ListLongMap!9026 (toList!4528 List!16016)) )
))
(declare-fun lt!378252 () ListLongMap!9025)

(declare-fun lt!378254 () ListLongMap!9025)

(assert (=> b!833428 (= lt!378252 lt!378254)))

(declare-fun zeroValueBefore!34 () V!25299)

(declare-fun zeroValueAfter!34 () V!25299)

(declare-fun minValue!754 () V!25299)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28565 0))(
  ( (Unit!28566) )
))
(declare-fun lt!378259 () Unit!28565)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!617 (array!46592 array!46594 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25299 V!25299 V!25299 V!25299 (_ BitVec 32) Int) Unit!28565)

(assert (=> b!833428 (= lt!378259 (lemmaNoChangeToArrayThenSameMapNoExtras!617 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2527 (array!46592 array!46594 (_ BitVec 32) (_ BitVec 32) V!25299 V!25299 (_ BitVec 32) Int) ListLongMap!9025)

(assert (=> b!833428 (= lt!378254 (getCurrentListMapNoExtraKeys!2527 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!833428 (= lt!378252 (getCurrentListMapNoExtraKeys!2527 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!833429 () Bool)

(declare-fun res!566830 () Bool)

(assert (=> b!833429 (=> (not res!566830) (not e!464950))))

(assert (=> b!833429 (= res!566830 (and (= (size!22748 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22747 _keys!976) (size!22748 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!24497 () Bool)

(declare-fun mapRes!24497 () Bool)

(assert (=> mapIsEmpty!24497 mapRes!24497))

(declare-fun e!464951 () Bool)

(declare-fun lt!378262 () ListLongMap!9025)

(declare-fun b!833430 () Bool)

(declare-fun lt!378260 () tuple2!10188)

(declare-fun lt!378256 () tuple2!10188)

(declare-fun +!1956 (ListLongMap!9025 tuple2!10188) ListLongMap!9025)

(assert (=> b!833430 (= e!464951 (= lt!378262 (+!1956 (+!1956 lt!378254 lt!378260) lt!378256)))))

(declare-fun e!464948 () Bool)

(declare-fun b!833431 () Bool)

(assert (=> b!833431 (= e!464948 (= lt!378262 (+!1956 (+!1956 lt!378254 (tuple2!10189 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!378260)))))

(declare-fun mapNonEmpty!24497 () Bool)

(declare-fun tp!47336 () Bool)

(declare-fun e!464946 () Bool)

(assert (=> mapNonEmpty!24497 (= mapRes!24497 (and tp!47336 e!464946))))

(declare-fun mapValue!24497 () ValueCell!7196)

(declare-fun mapKey!24497 () (_ BitVec 32))

(declare-fun mapRest!24497 () (Array (_ BitVec 32) ValueCell!7196))

(assert (=> mapNonEmpty!24497 (= (arr!22327 _values!788) (store mapRest!24497 mapKey!24497 mapValue!24497))))

(declare-fun b!833432 () Bool)

(assert (=> b!833432 (= e!464946 tp_is_empty!15223)))

(declare-fun b!833433 () Bool)

(declare-fun res!566827 () Bool)

(assert (=> b!833433 (=> (not res!566827) (not e!464950))))

(declare-datatypes ((List!16017 0))(
  ( (Nil!16014) (Cons!16013 (h!17144 (_ BitVec 64)) (t!22396 List!16017)) )
))
(declare-fun arrayNoDuplicates!0 (array!46592 (_ BitVec 32) List!16017) Bool)

(assert (=> b!833433 (= res!566827 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!16014))))

(declare-fun b!833434 () Bool)

(declare-fun lt!378253 () ListLongMap!9025)

(assert (=> b!833434 (= e!464949 (= lt!378262 lt!378253))))

(declare-fun lt!378264 () ListLongMap!9025)

(assert (=> b!833434 (and (= lt!378253 lt!378264) (= lt!378262 lt!378264))))

(declare-fun lt!378257 () ListLongMap!9025)

(assert (=> b!833434 (= lt!378264 (+!1956 lt!378257 lt!378256))))

(declare-fun lt!378255 () ListLongMap!9025)

(assert (=> b!833434 (= lt!378253 (+!1956 lt!378255 lt!378256))))

(declare-fun lt!378258 () Unit!28565)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!250 (ListLongMap!9025 (_ BitVec 64) V!25299 V!25299) Unit!28565)

(assert (=> b!833434 (= lt!378258 (addSameAsAddTwiceSameKeyDiffValues!250 lt!378255 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!833434 e!464951))

(declare-fun res!566829 () Bool)

(assert (=> b!833434 (=> (not res!566829) (not e!464951))))

(declare-fun lt!378263 () ListLongMap!9025)

(assert (=> b!833434 (= res!566829 (= lt!378263 lt!378257))))

(declare-fun lt!378261 () tuple2!10188)

(assert (=> b!833434 (= lt!378257 (+!1956 lt!378255 lt!378261))))

(assert (=> b!833434 (= lt!378255 (+!1956 lt!378252 lt!378260))))

(assert (=> b!833434 (= lt!378256 (tuple2!10189 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!833434 e!464948))

(declare-fun res!566826 () Bool)

(assert (=> b!833434 (=> (not res!566826) (not e!464948))))

(assert (=> b!833434 (= res!566826 (= lt!378263 (+!1956 (+!1956 lt!378252 lt!378261) lt!378260)))))

(assert (=> b!833434 (= lt!378260 (tuple2!10189 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!833434 (= lt!378261 (tuple2!10189 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2597 (array!46592 array!46594 (_ BitVec 32) (_ BitVec 32) V!25299 V!25299 (_ BitVec 32) Int) ListLongMap!9025)

(assert (=> b!833434 (= lt!378262 (getCurrentListMap!2597 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!833434 (= lt!378263 (getCurrentListMap!2597 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!833435 () Bool)

(assert (=> b!833435 (= e!464947 (and e!464944 mapRes!24497))))

(declare-fun condMapEmpty!24497 () Bool)

(declare-fun mapDefault!24497 () ValueCell!7196)

