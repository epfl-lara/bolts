; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71176 () Bool)

(assert start!71176)

(declare-fun b_free!13319 () Bool)

(declare-fun b_next!13319 () Bool)

(assert (=> start!71176 (= b_free!13319 (not b_next!13319))))

(declare-fun tp!46717 () Bool)

(declare-fun b_and!22263 () Bool)

(assert (=> start!71176 (= tp!46717 b_and!22263)))

(declare-fun b!826295 () Bool)

(declare-fun res!563381 () Bool)

(declare-fun e!460157 () Bool)

(assert (=> b!826295 (=> (not res!563381) (not e!460157))))

(declare-datatypes ((array!46198 0))(
  ( (array!46199 (arr!22140 (Array (_ BitVec 32) (_ BitVec 64))) (size!22561 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46198)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25039 0))(
  ( (V!25040 (val!7562 Int)) )
))
(declare-datatypes ((ValueCell!7099 0))(
  ( (ValueCellFull!7099 (v!9992 V!25039)) (EmptyCell!7099) )
))
(declare-datatypes ((array!46200 0))(
  ( (array!46201 (arr!22141 (Array (_ BitVec 32) ValueCell!7099)) (size!22562 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46200)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!826295 (= res!563381 (and (= (size!22562 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22561 _keys!976) (size!22562 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!826296 () Bool)

(declare-fun e!460158 () Bool)

(assert (=> b!826296 (= e!460157 (not e!460158))))

(declare-fun res!563379 () Bool)

(assert (=> b!826296 (=> res!563379 e!460158)))

(assert (=> b!826296 (= res!563379 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!10026 0))(
  ( (tuple2!10027 (_1!5023 (_ BitVec 64)) (_2!5023 V!25039)) )
))
(declare-datatypes ((List!15865 0))(
  ( (Nil!15862) (Cons!15861 (h!16990 tuple2!10026) (t!22220 List!15865)) )
))
(declare-datatypes ((ListLongMap!8863 0))(
  ( (ListLongMap!8864 (toList!4447 List!15865)) )
))
(declare-fun lt!373931 () ListLongMap!8863)

(declare-fun lt!373940 () ListLongMap!8863)

(assert (=> b!826296 (= lt!373931 lt!373940)))

(declare-datatypes ((Unit!28329 0))(
  ( (Unit!28330) )
))
(declare-fun lt!373929 () Unit!28329)

(declare-fun zeroValueBefore!34 () V!25039)

(declare-fun zeroValueAfter!34 () V!25039)

(declare-fun minValue!754 () V!25039)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!573 (array!46198 array!46200 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25039 V!25039 V!25039 V!25039 (_ BitVec 32) Int) Unit!28329)

(assert (=> b!826296 (= lt!373929 (lemmaNoChangeToArrayThenSameMapNoExtras!573 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2457 (array!46198 array!46200 (_ BitVec 32) (_ BitVec 32) V!25039 V!25039 (_ BitVec 32) Int) ListLongMap!8863)

(assert (=> b!826296 (= lt!373940 (getCurrentListMapNoExtraKeys!2457 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826296 (= lt!373931 (getCurrentListMapNoExtraKeys!2457 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24169 () Bool)

(declare-fun mapRes!24169 () Bool)

(assert (=> mapIsEmpty!24169 mapRes!24169))

(declare-fun b!826297 () Bool)

(declare-fun lt!373939 () ListLongMap!8863)

(declare-fun lt!373936 () tuple2!10026)

(declare-fun e!460159 () Bool)

(declare-fun +!1908 (ListLongMap!8863 tuple2!10026) ListLongMap!8863)

(assert (=> b!826297 (= e!460159 (= lt!373939 (+!1908 (+!1908 lt!373940 (tuple2!10027 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!373936)))))

(declare-fun b!826298 () Bool)

(declare-fun res!563382 () Bool)

(assert (=> b!826298 (=> (not res!563382) (not e!460157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46198 (_ BitVec 32)) Bool)

(assert (=> b!826298 (= res!563382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!24169 () Bool)

(declare-fun tp!46716 () Bool)

(declare-fun e!460155 () Bool)

(assert (=> mapNonEmpty!24169 (= mapRes!24169 (and tp!46716 e!460155))))

(declare-fun mapKey!24169 () (_ BitVec 32))

(declare-fun mapValue!24169 () ValueCell!7099)

(declare-fun mapRest!24169 () (Array (_ BitVec 32) ValueCell!7099))

(assert (=> mapNonEmpty!24169 (= (arr!22141 _values!788) (store mapRest!24169 mapKey!24169 mapValue!24169))))

(declare-fun b!826299 () Bool)

(declare-fun tp_is_empty!15029 () Bool)

(assert (=> b!826299 (= e!460155 tp_is_empty!15029)))

(declare-fun b!826301 () Bool)

(declare-fun res!563378 () Bool)

(assert (=> b!826301 (=> (not res!563378) (not e!460157))))

(declare-datatypes ((List!15866 0))(
  ( (Nil!15863) (Cons!15862 (h!16991 (_ BitVec 64)) (t!22221 List!15866)) )
))
(declare-fun arrayNoDuplicates!0 (array!46198 (_ BitVec 32) List!15866) Bool)

(assert (=> b!826301 (= res!563378 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15863))))

(declare-fun b!826302 () Bool)

(declare-fun e!460161 () Bool)

(declare-fun e!460154 () Bool)

(assert (=> b!826302 (= e!460161 (and e!460154 mapRes!24169))))

(declare-fun condMapEmpty!24169 () Bool)

(declare-fun mapDefault!24169 () ValueCell!7099)

