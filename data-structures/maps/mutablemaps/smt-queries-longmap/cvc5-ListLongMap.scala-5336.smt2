; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71312 () Bool)

(assert start!71312)

(declare-fun b_free!13423 () Bool)

(declare-fun b_next!13423 () Bool)

(assert (=> start!71312 (= b_free!13423 (not b_next!13423))))

(declare-fun tp!47035 () Bool)

(declare-fun b_and!22387 () Bool)

(assert (=> start!71312 (= tp!47035 b_and!22387)))

(declare-fun res!564280 () Bool)

(declare-fun e!461264 () Bool)

(assert (=> start!71312 (=> (not res!564280) (not e!461264))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71312 (= res!564280 (validMask!0 mask!1312))))

(assert (=> start!71312 e!461264))

(declare-fun tp_is_empty!15133 () Bool)

(assert (=> start!71312 tp_is_empty!15133))

(declare-datatypes ((array!46402 0))(
  ( (array!46403 (arr!22240 (Array (_ BitVec 32) (_ BitVec 64))) (size!22661 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46402)

(declare-fun array_inv!17703 (array!46402) Bool)

(assert (=> start!71312 (array_inv!17703 _keys!976)))

(assert (=> start!71312 true))

(declare-datatypes ((V!25179 0))(
  ( (V!25180 (val!7614 Int)) )
))
(declare-datatypes ((ValueCell!7151 0))(
  ( (ValueCellFull!7151 (v!10045 V!25179)) (EmptyCell!7151) )
))
(declare-datatypes ((array!46404 0))(
  ( (array!46405 (arr!22241 (Array (_ BitVec 32) ValueCell!7151)) (size!22662 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46404)

(declare-fun e!461261 () Bool)

(declare-fun array_inv!17704 (array!46404) Bool)

(assert (=> start!71312 (and (array_inv!17704 _values!788) e!461261)))

(assert (=> start!71312 tp!47035))

(declare-fun b!827818 () Bool)

(declare-fun e!461259 () Bool)

(assert (=> b!827818 (= e!461259 tp_is_empty!15133)))

(declare-fun b!827819 () Bool)

(declare-fun res!564281 () Bool)

(assert (=> b!827819 (=> (not res!564281) (not e!461264))))

(declare-datatypes ((List!15947 0))(
  ( (Nil!15944) (Cons!15943 (h!17072 (_ BitVec 64)) (t!22306 List!15947)) )
))
(declare-fun arrayNoDuplicates!0 (array!46402 (_ BitVec 32) List!15947) Bool)

(assert (=> b!827819 (= res!564281 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15944))))

(declare-fun zeroValueBefore!34 () V!25179)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!25179)

(declare-fun minValue!754 () V!25179)

(declare-fun e!461260 () Bool)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun b!827820 () Bool)

(declare-datatypes ((tuple2!10110 0))(
  ( (tuple2!10111 (_1!5065 (_ BitVec 64)) (_2!5065 V!25179)) )
))
(declare-datatypes ((List!15948 0))(
  ( (Nil!15945) (Cons!15944 (h!17073 tuple2!10110) (t!22307 List!15948)) )
))
(declare-datatypes ((ListLongMap!8947 0))(
  ( (ListLongMap!8948 (toList!4489 List!15948)) )
))
(declare-fun +!1922 (ListLongMap!8947 tuple2!10110) ListLongMap!8947)

(declare-fun getCurrentListMap!2564 (array!46402 array!46404 (_ BitVec 32) (_ BitVec 32) V!25179 V!25179 (_ BitVec 32) Int) ListLongMap!8947)

(assert (=> b!827820 (= e!461260 (= (+!1922 (getCurrentListMap!2564 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!10111 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (getCurrentListMap!2564 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796)))))

(declare-fun b!827821 () Bool)

(declare-fun res!564278 () Bool)

(assert (=> b!827821 (=> (not res!564278) (not e!461264))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46402 (_ BitVec 32)) Bool)

(assert (=> b!827821 (= res!564278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827822 () Bool)

(assert (=> b!827822 (= e!461264 (not e!461260))))

(declare-fun res!564277 () Bool)

(assert (=> b!827822 (=> res!564277 e!461260)))

(assert (=> b!827822 (= res!564277 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!375018 () ListLongMap!8947)

(declare-fun lt!375020 () ListLongMap!8947)

(assert (=> b!827822 (= lt!375018 lt!375020)))

(declare-datatypes ((Unit!28365 0))(
  ( (Unit!28366) )
))
(declare-fun lt!375019 () Unit!28365)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!586 (array!46402 array!46404 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25179 V!25179 V!25179 V!25179 (_ BitVec 32) Int) Unit!28365)

(assert (=> b!827822 (= lt!375019 (lemmaNoChangeToArrayThenSameMapNoExtras!586 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2496 (array!46402 array!46404 (_ BitVec 32) (_ BitVec 32) V!25179 V!25179 (_ BitVec 32) Int) ListLongMap!8947)

(assert (=> b!827822 (= lt!375020 (getCurrentListMapNoExtraKeys!2496 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!827822 (= lt!375018 (getCurrentListMapNoExtraKeys!2496 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827823 () Bool)

(declare-fun res!564279 () Bool)

(assert (=> b!827823 (=> (not res!564279) (not e!461264))))

(assert (=> b!827823 (= res!564279 (and (= (size!22662 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22661 _keys!976) (size!22662 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827824 () Bool)

(declare-fun e!461262 () Bool)

(assert (=> b!827824 (= e!461262 tp_is_empty!15133)))

(declare-fun mapIsEmpty!24331 () Bool)

(declare-fun mapRes!24331 () Bool)

(assert (=> mapIsEmpty!24331 mapRes!24331))

(declare-fun mapNonEmpty!24331 () Bool)

(declare-fun tp!47034 () Bool)

(assert (=> mapNonEmpty!24331 (= mapRes!24331 (and tp!47034 e!461262))))

(declare-fun mapKey!24331 () (_ BitVec 32))

(declare-fun mapRest!24331 () (Array (_ BitVec 32) ValueCell!7151))

(declare-fun mapValue!24331 () ValueCell!7151)

(assert (=> mapNonEmpty!24331 (= (arr!22241 _values!788) (store mapRest!24331 mapKey!24331 mapValue!24331))))

(declare-fun b!827825 () Bool)

(assert (=> b!827825 (= e!461261 (and e!461259 mapRes!24331))))

(declare-fun condMapEmpty!24331 () Bool)

(declare-fun mapDefault!24331 () ValueCell!7151)

