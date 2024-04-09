; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71390 () Bool)

(assert start!71390)

(declare-fun b_free!13447 () Bool)

(declare-fun b_next!13447 () Bool)

(assert (=> start!71390 (= b_free!13447 (not b_next!13447))))

(declare-fun tp!47115 () Bool)

(declare-fun b_and!22447 () Bool)

(assert (=> start!71390 (= tp!47115 b_and!22447)))

(declare-fun res!564699 () Bool)

(declare-fun e!461830 () Bool)

(assert (=> start!71390 (=> (not res!564699) (not e!461830))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71390 (= res!564699 (validMask!0 mask!1312))))

(assert (=> start!71390 e!461830))

(declare-fun tp_is_empty!15157 () Bool)

(assert (=> start!71390 tp_is_empty!15157))

(declare-datatypes ((array!46454 0))(
  ( (array!46455 (arr!22263 (Array (_ BitVec 32) (_ BitVec 64))) (size!22684 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46454)

(declare-fun array_inv!17717 (array!46454) Bool)

(assert (=> start!71390 (array_inv!17717 _keys!976)))

(assert (=> start!71390 true))

(declare-datatypes ((V!25211 0))(
  ( (V!25212 (val!7626 Int)) )
))
(declare-datatypes ((ValueCell!7163 0))(
  ( (ValueCellFull!7163 (v!10060 V!25211)) (EmptyCell!7163) )
))
(declare-datatypes ((array!46456 0))(
  ( (array!46457 (arr!22264 (Array (_ BitVec 32) ValueCell!7163)) (size!22685 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46456)

(declare-fun e!461827 () Bool)

(declare-fun array_inv!17718 (array!46456) Bool)

(assert (=> start!71390 (and (array_inv!17718 _values!788) e!461827)))

(assert (=> start!71390 tp!47115))

(declare-fun mapNonEmpty!24376 () Bool)

(declare-fun mapRes!24376 () Bool)

(declare-fun tp!47116 () Bool)

(declare-fun e!461832 () Bool)

(assert (=> mapNonEmpty!24376 (= mapRes!24376 (and tp!47116 e!461832))))

(declare-fun mapValue!24376 () ValueCell!7163)

(declare-fun mapRest!24376 () (Array (_ BitVec 32) ValueCell!7163))

(declare-fun mapKey!24376 () (_ BitVec 32))

(assert (=> mapNonEmpty!24376 (= (arr!22264 _values!788) (store mapRest!24376 mapKey!24376 mapValue!24376))))

(declare-fun e!461831 () Bool)

(declare-datatypes ((tuple2!10132 0))(
  ( (tuple2!10133 (_1!5076 (_ BitVec 64)) (_2!5076 V!25211)) )
))
(declare-datatypes ((List!15968 0))(
  ( (Nil!15965) (Cons!15964 (h!17093 tuple2!10132) (t!22333 List!15968)) )
))
(declare-datatypes ((ListLongMap!8969 0))(
  ( (ListLongMap!8970 (toList!4500 List!15968)) )
))
(declare-fun lt!375595 () ListLongMap!8969)

(declare-fun zeroValueAfter!34 () V!25211)

(declare-fun b!828653 () Bool)

(declare-fun lt!375590 () ListLongMap!8969)

(declare-fun +!1933 (ListLongMap!8969 tuple2!10132) ListLongMap!8969)

(assert (=> b!828653 (= e!461831 (= lt!375590 (+!1933 lt!375595 (tuple2!10133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!828654 () Bool)

(declare-fun res!564702 () Bool)

(assert (=> b!828654 (=> (not res!564702) (not e!461830))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!828654 (= res!564702 (and (= (size!22685 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22684 _keys!976) (size!22685 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!828655 () Bool)

(assert (=> b!828655 (= e!461832 tp_is_empty!15157)))

(declare-fun e!461828 () Bool)

(declare-fun b!828656 () Bool)

(declare-fun lt!375594 () tuple2!10132)

(declare-fun lt!375589 () tuple2!10132)

(assert (=> b!828656 (= e!461828 (= lt!375590 (+!1933 (+!1933 lt!375595 lt!375589) lt!375594)))))

(declare-fun lt!375591 () ListLongMap!8969)

(declare-fun lt!375597 () ListLongMap!8969)

(assert (=> b!828656 (= (+!1933 lt!375591 lt!375594) (+!1933 lt!375597 lt!375594))))

(declare-fun zeroValueBefore!34 () V!25211)

(declare-datatypes ((Unit!28389 0))(
  ( (Unit!28390) )
))
(declare-fun lt!375596 () Unit!28389)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!242 (ListLongMap!8969 (_ BitVec 64) V!25211 V!25211) Unit!28389)

(assert (=> b!828656 (= lt!375596 (addSameAsAddTwiceSameKeyDiffValues!242 lt!375591 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!828656 (= lt!375594 (tuple2!10133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!828656 e!461831))

(declare-fun res!564698 () Bool)

(assert (=> b!828656 (=> (not res!564698) (not e!461831))))

(declare-fun lt!375592 () ListLongMap!8969)

(assert (=> b!828656 (= res!564698 (= lt!375592 lt!375597))))

(assert (=> b!828656 (= lt!375597 (+!1933 lt!375591 lt!375589))))

(assert (=> b!828656 (= lt!375589 (tuple2!10133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun minValue!754 () V!25211)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2575 (array!46454 array!46456 (_ BitVec 32) (_ BitVec 32) V!25211 V!25211 (_ BitVec 32) Int) ListLongMap!8969)

(assert (=> b!828656 (= lt!375590 (getCurrentListMap!2575 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!828656 (= lt!375592 (getCurrentListMap!2575 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828657 () Bool)

(declare-fun e!461829 () Bool)

(assert (=> b!828657 (= e!461829 tp_is_empty!15157)))

(declare-fun mapIsEmpty!24376 () Bool)

(assert (=> mapIsEmpty!24376 mapRes!24376))

(declare-fun b!828658 () Bool)

(assert (=> b!828658 (= e!461827 (and e!461829 mapRes!24376))))

(declare-fun condMapEmpty!24376 () Bool)

(declare-fun mapDefault!24376 () ValueCell!7163)

