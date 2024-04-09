; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71046 () Bool)

(assert start!71046)

(declare-fun b_free!13225 () Bool)

(declare-fun b_next!13225 () Bool)

(assert (=> start!71046 (= b_free!13225 (not b_next!13225))))

(declare-fun tp!46429 () Bool)

(declare-fun b_and!22147 () Bool)

(assert (=> start!71046 (= tp!46429 b_and!22147)))

(declare-fun b!824581 () Bool)

(declare-fun res!562281 () Bool)

(declare-fun e!458857 () Bool)

(assert (=> b!824581 (=> (not res!562281) (not e!458857))))

(declare-datatypes ((array!46016 0))(
  ( (array!46017 (arr!22051 (Array (_ BitVec 32) (_ BitVec 64))) (size!22472 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46016)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24915 0))(
  ( (V!24916 (val!7515 Int)) )
))
(declare-datatypes ((ValueCell!7052 0))(
  ( (ValueCellFull!7052 (v!9944 V!24915)) (EmptyCell!7052) )
))
(declare-datatypes ((array!46018 0))(
  ( (array!46019 (arr!22052 (Array (_ BitVec 32) ValueCell!7052)) (size!22473 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46018)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!824581 (= res!562281 (and (= (size!22473 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22472 _keys!976) (size!22473 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!824582 () Bool)

(declare-fun e!458855 () Bool)

(declare-fun tp_is_empty!14935 () Bool)

(assert (=> b!824582 (= e!458855 tp_is_empty!14935)))

(declare-fun b!824583 () Bool)

(declare-fun e!458854 () Bool)

(assert (=> b!824583 (= e!458854 tp_is_empty!14935)))

(declare-fun b!824584 () Bool)

(declare-fun res!562280 () Bool)

(assert (=> b!824584 (=> (not res!562280) (not e!458857))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46016 (_ BitVec 32)) Bool)

(assert (=> b!824584 (= res!562280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!824585 () Bool)

(declare-fun e!458852 () Bool)

(assert (=> b!824585 (= e!458857 (not e!458852))))

(declare-fun res!562283 () Bool)

(assert (=> b!824585 (=> res!562283 e!458852)))

(assert (=> b!824585 (= res!562283 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9938 0))(
  ( (tuple2!9939 (_1!4979 (_ BitVec 64)) (_2!4979 V!24915)) )
))
(declare-datatypes ((List!15789 0))(
  ( (Nil!15786) (Cons!15785 (h!16914 tuple2!9938) (t!22140 List!15789)) )
))
(declare-datatypes ((ListLongMap!8775 0))(
  ( (ListLongMap!8776 (toList!4403 List!15789)) )
))
(declare-fun lt!371921 () ListLongMap!8775)

(declare-fun lt!371923 () ListLongMap!8775)

(assert (=> b!824585 (= lt!371921 lt!371923)))

(declare-fun zeroValueBefore!34 () V!24915)

(declare-fun zeroValueAfter!34 () V!24915)

(declare-fun minValue!754 () V!24915)

(declare-datatypes ((Unit!28248 0))(
  ( (Unit!28249) )
))
(declare-fun lt!371920 () Unit!28248)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!539 (array!46016 array!46018 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24915 V!24915 V!24915 V!24915 (_ BitVec 32) Int) Unit!28248)

(assert (=> b!824585 (= lt!371920 (lemmaNoChangeToArrayThenSameMapNoExtras!539 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2423 (array!46016 array!46018 (_ BitVec 32) (_ BitVec 32) V!24915 V!24915 (_ BitVec 32) Int) ListLongMap!8775)

(assert (=> b!824585 (= lt!371923 (getCurrentListMapNoExtraKeys!2423 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824585 (= lt!371921 (getCurrentListMapNoExtraKeys!2423 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24022 () Bool)

(declare-fun mapRes!24022 () Bool)

(assert (=> mapIsEmpty!24022 mapRes!24022))

(declare-fun b!824586 () Bool)

(declare-fun e!458856 () Bool)

(assert (=> b!824586 (= e!458856 (and e!458855 mapRes!24022))))

(declare-fun condMapEmpty!24022 () Bool)

(declare-fun mapDefault!24022 () ValueCell!7052)

