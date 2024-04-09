; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71178 () Bool)

(assert start!71178)

(declare-fun b_free!13321 () Bool)

(declare-fun b_next!13321 () Bool)

(assert (=> start!71178 (= b_free!13321 (not b_next!13321))))

(declare-fun tp!46723 () Bool)

(declare-fun b_and!22265 () Bool)

(assert (=> start!71178 (= tp!46723 b_and!22265)))

(declare-fun b!826325 () Bool)

(declare-fun e!460182 () Bool)

(assert (=> b!826325 (= e!460182 true)))

(declare-datatypes ((V!25043 0))(
  ( (V!25044 (val!7563 Int)) )
))
(declare-datatypes ((tuple2!10028 0))(
  ( (tuple2!10029 (_1!5024 (_ BitVec 64)) (_2!5024 V!25043)) )
))
(declare-datatypes ((List!15867 0))(
  ( (Nil!15864) (Cons!15863 (h!16992 tuple2!10028) (t!22222 List!15867)) )
))
(declare-datatypes ((ListLongMap!8865 0))(
  ( (ListLongMap!8866 (toList!4448 List!15867)) )
))
(declare-fun lt!373982 () ListLongMap!8865)

(declare-fun lt!373978 () tuple2!10028)

(declare-fun lt!373975 () tuple2!10028)

(declare-fun lt!373973 () ListLongMap!8865)

(declare-fun +!1909 (ListLongMap!8865 tuple2!10028) ListLongMap!8865)

(assert (=> b!826325 (= lt!373982 (+!1909 (+!1909 lt!373973 lt!373975) lt!373978))))

(declare-fun lt!373971 () ListLongMap!8865)

(declare-fun lt!373977 () ListLongMap!8865)

(declare-fun lt!373976 () ListLongMap!8865)

(assert (=> b!826325 (and (= lt!373971 lt!373977) (= lt!373976 lt!373977) (= lt!373976 lt!373971))))

(declare-fun lt!373970 () ListLongMap!8865)

(assert (=> b!826325 (= lt!373977 (+!1909 lt!373970 lt!373975))))

(declare-fun lt!373979 () ListLongMap!8865)

(assert (=> b!826325 (= lt!373971 (+!1909 lt!373979 lt!373975))))

(declare-fun zeroValueBefore!34 () V!25043)

(declare-datatypes ((Unit!28331 0))(
  ( (Unit!28332) )
))
(declare-fun lt!373981 () Unit!28331)

(declare-fun zeroValueAfter!34 () V!25043)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!231 (ListLongMap!8865 (_ BitVec 64) V!25043 V!25043) Unit!28331)

(assert (=> b!826325 (= lt!373981 (addSameAsAddTwiceSameKeyDiffValues!231 lt!373979 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!460185 () Bool)

(assert (=> b!826325 e!460185))

(declare-fun res!563400 () Bool)

(assert (=> b!826325 (=> (not res!563400) (not e!460185))))

(declare-fun lt!373983 () ListLongMap!8865)

(assert (=> b!826325 (= res!563400 (= lt!373983 lt!373970))))

(declare-fun lt!373974 () tuple2!10028)

(assert (=> b!826325 (= lt!373970 (+!1909 lt!373979 lt!373974))))

(assert (=> b!826325 (= lt!373979 (+!1909 lt!373973 lt!373978))))

(assert (=> b!826325 (= lt!373975 (tuple2!10029 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!460184 () Bool)

(assert (=> b!826325 e!460184))

(declare-fun res!563401 () Bool)

(assert (=> b!826325 (=> (not res!563401) (not e!460184))))

(assert (=> b!826325 (= res!563401 (= lt!373983 (+!1909 (+!1909 lt!373973 lt!373974) lt!373978)))))

(declare-fun minValue!754 () V!25043)

(assert (=> b!826325 (= lt!373978 (tuple2!10029 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826325 (= lt!373974 (tuple2!10029 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!46202 0))(
  ( (array!46203 (arr!22142 (Array (_ BitVec 32) (_ BitVec 64))) (size!22563 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46202)

(declare-datatypes ((ValueCell!7100 0))(
  ( (ValueCellFull!7100 (v!9993 V!25043)) (EmptyCell!7100) )
))
(declare-datatypes ((array!46204 0))(
  ( (array!46205 (arr!22143 (Array (_ BitVec 32) ValueCell!7100)) (size!22564 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46204)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2553 (array!46202 array!46204 (_ BitVec 32) (_ BitVec 32) V!25043 V!25043 (_ BitVec 32) Int) ListLongMap!8865)

(assert (=> b!826325 (= lt!373976 (getCurrentListMap!2553 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!826325 (= lt!373983 (getCurrentListMap!2553 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826326 () Bool)

(declare-fun lt!373980 () ListLongMap!8865)

(assert (=> b!826326 (= e!460185 (= lt!373976 (+!1909 (+!1909 lt!373980 lt!373978) lt!373975)))))

(declare-fun b!826327 () Bool)

(declare-fun res!563399 () Bool)

(declare-fun e!460180 () Bool)

(assert (=> b!826327 (=> (not res!563399) (not e!460180))))

(assert (=> b!826327 (= res!563399 (and (= (size!22564 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22563 _keys!976) (size!22564 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!563403 () Bool)

(assert (=> start!71178 (=> (not res!563403) (not e!460180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71178 (= res!563403 (validMask!0 mask!1312))))

(assert (=> start!71178 e!460180))

(declare-fun tp_is_empty!15031 () Bool)

(assert (=> start!71178 tp_is_empty!15031))

(declare-fun array_inv!17633 (array!46202) Bool)

(assert (=> start!71178 (array_inv!17633 _keys!976)))

(assert (=> start!71178 true))

(declare-fun e!460179 () Bool)

(declare-fun array_inv!17634 (array!46204) Bool)

(assert (=> start!71178 (and (array_inv!17634 _values!788) e!460179)))

(assert (=> start!71178 tp!46723))

(declare-fun mapIsEmpty!24172 () Bool)

(declare-fun mapRes!24172 () Bool)

(assert (=> mapIsEmpty!24172 mapRes!24172))

(declare-fun b!826328 () Bool)

(declare-fun e!460183 () Bool)

(assert (=> b!826328 (= e!460179 (and e!460183 mapRes!24172))))

(declare-fun condMapEmpty!24172 () Bool)

(declare-fun mapDefault!24172 () ValueCell!7100)

