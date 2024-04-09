; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71160 () Bool)

(assert start!71160)

(declare-fun b_free!13303 () Bool)

(declare-fun b_next!13303 () Bool)

(assert (=> start!71160 (= b_free!13303 (not b_next!13303))))

(declare-fun tp!46668 () Bool)

(declare-fun b_and!22247 () Bool)

(assert (=> start!71160 (= tp!46668 b_and!22247)))

(declare-fun b!826055 () Bool)

(declare-fun e!459967 () Bool)

(declare-fun tp_is_empty!15013 () Bool)

(assert (=> b!826055 (= e!459967 tp_is_empty!15013)))

(declare-fun b!826056 () Bool)

(declare-fun res!563214 () Bool)

(declare-fun e!459968 () Bool)

(assert (=> b!826056 (=> (not res!563214) (not e!459968))))

(declare-datatypes ((array!46168 0))(
  ( (array!46169 (arr!22125 (Array (_ BitVec 32) (_ BitVec 64))) (size!22546 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46168)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46168 (_ BitVec 32)) Bool)

(assert (=> b!826056 (= res!563214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!826057 () Bool)

(declare-fun e!459963 () Bool)

(assert (=> b!826057 (= e!459963 tp_is_empty!15013)))

(declare-fun b!826058 () Bool)

(declare-fun e!459962 () Bool)

(assert (=> b!826058 (= e!459968 (not e!459962))))

(declare-fun res!563216 () Bool)

(assert (=> b!826058 (=> res!563216 e!459962)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!826058 (= res!563216 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!25019 0))(
  ( (V!25020 (val!7554 Int)) )
))
(declare-datatypes ((tuple2!10010 0))(
  ( (tuple2!10011 (_1!5015 (_ BitVec 64)) (_2!5015 V!25019)) )
))
(declare-datatypes ((List!15851 0))(
  ( (Nil!15848) (Cons!15847 (h!16976 tuple2!10010) (t!22206 List!15851)) )
))
(declare-datatypes ((ListLongMap!8847 0))(
  ( (ListLongMap!8848 (toList!4439 List!15851)) )
))
(declare-fun lt!373603 () ListLongMap!8847)

(declare-fun lt!373592 () ListLongMap!8847)

(assert (=> b!826058 (= lt!373603 lt!373592)))

(declare-fun zeroValueBefore!34 () V!25019)

(declare-datatypes ((Unit!28317 0))(
  ( (Unit!28318) )
))
(declare-fun lt!373595 () Unit!28317)

(declare-fun zeroValueAfter!34 () V!25019)

(declare-fun minValue!754 () V!25019)

(declare-datatypes ((ValueCell!7091 0))(
  ( (ValueCellFull!7091 (v!9984 V!25019)) (EmptyCell!7091) )
))
(declare-datatypes ((array!46170 0))(
  ( (array!46171 (arr!22126 (Array (_ BitVec 32) ValueCell!7091)) (size!22547 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46170)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!568 (array!46168 array!46170 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25019 V!25019 V!25019 V!25019 (_ BitVec 32) Int) Unit!28317)

(assert (=> b!826058 (= lt!373595 (lemmaNoChangeToArrayThenSameMapNoExtras!568 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2452 (array!46168 array!46170 (_ BitVec 32) (_ BitVec 32) V!25019 V!25019 (_ BitVec 32) Int) ListLongMap!8847)

(assert (=> b!826058 (= lt!373592 (getCurrentListMapNoExtraKeys!2452 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826058 (= lt!373603 (getCurrentListMapNoExtraKeys!2452 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!373602 () tuple2!10010)

(declare-fun lt!373604 () ListLongMap!8847)

(declare-fun lt!373605 () tuple2!10010)

(declare-fun e!459966 () Bool)

(declare-fun b!826059 () Bool)

(declare-fun +!1900 (ListLongMap!8847 tuple2!10010) ListLongMap!8847)

(assert (=> b!826059 (= e!459966 (= lt!373604 (+!1900 (+!1900 lt!373592 lt!373602) lt!373605)))))

(declare-fun b!826060 () Bool)

(declare-fun res!563211 () Bool)

(assert (=> b!826060 (=> (not res!563211) (not e!459968))))

(declare-datatypes ((List!15852 0))(
  ( (Nil!15849) (Cons!15848 (h!16977 (_ BitVec 64)) (t!22207 List!15852)) )
))
(declare-fun arrayNoDuplicates!0 (array!46168 (_ BitVec 32) List!15852) Bool)

(assert (=> b!826060 (= res!563211 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15849))))

(declare-fun b!826061 () Bool)

(declare-fun e!459964 () Bool)

(declare-fun mapRes!24145 () Bool)

(assert (=> b!826061 (= e!459964 (and e!459967 mapRes!24145))))

(declare-fun condMapEmpty!24145 () Bool)

(declare-fun mapDefault!24145 () ValueCell!7091)

