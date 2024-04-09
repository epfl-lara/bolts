; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71402 () Bool)

(assert start!71402)

(declare-fun b_free!13459 () Bool)

(declare-fun b_next!13459 () Bool)

(assert (=> start!71402 (= b_free!13459 (not b_next!13459))))

(declare-fun tp!47151 () Bool)

(declare-fun b_and!22459 () Bool)

(assert (=> start!71402 (= tp!47151 b_and!22459)))

(declare-fun b!828822 () Bool)

(declare-fun res!564814 () Bool)

(declare-fun e!461964 () Bool)

(assert (=> b!828822 (=> (not res!564814) (not e!461964))))

(declare-datatypes ((array!46478 0))(
  ( (array!46479 (arr!22275 (Array (_ BitVec 32) (_ BitVec 64))) (size!22696 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46478)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25227 0))(
  ( (V!25228 (val!7632 Int)) )
))
(declare-datatypes ((ValueCell!7169 0))(
  ( (ValueCellFull!7169 (v!10066 V!25227)) (EmptyCell!7169) )
))
(declare-datatypes ((array!46480 0))(
  ( (array!46481 (arr!22276 (Array (_ BitVec 32) ValueCell!7169)) (size!22697 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46480)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!828822 (= res!564814 (and (= (size!22697 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22696 _keys!976) (size!22697 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!828823 () Bool)

(declare-fun res!564817 () Bool)

(assert (=> b!828823 (=> (not res!564817) (not e!461964))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46478 (_ BitVec 32)) Bool)

(assert (=> b!828823 (= res!564817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!564813 () Bool)

(assert (=> start!71402 (=> (not res!564813) (not e!461964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71402 (= res!564813 (validMask!0 mask!1312))))

(assert (=> start!71402 e!461964))

(declare-fun tp_is_empty!15169 () Bool)

(assert (=> start!71402 tp_is_empty!15169))

(declare-fun array_inv!17723 (array!46478) Bool)

(assert (=> start!71402 (array_inv!17723 _keys!976)))

(assert (=> start!71402 true))

(declare-fun e!461962 () Bool)

(declare-fun array_inv!17724 (array!46480) Bool)

(assert (=> start!71402 (and (array_inv!17724 _values!788) e!461962)))

(assert (=> start!71402 tp!47151))

(declare-fun b!828824 () Bool)

(declare-fun e!461963 () Bool)

(assert (=> b!828824 (= e!461964 (not e!461963))))

(declare-fun res!564816 () Bool)

(assert (=> b!828824 (=> res!564816 e!461963)))

(assert (=> b!828824 (= res!564816 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!10144 0))(
  ( (tuple2!10145 (_1!5082 (_ BitVec 64)) (_2!5082 V!25227)) )
))
(declare-datatypes ((List!15978 0))(
  ( (Nil!15975) (Cons!15974 (h!17103 tuple2!10144) (t!22343 List!15978)) )
))
(declare-datatypes ((ListLongMap!8981 0))(
  ( (ListLongMap!8982 (toList!4506 List!15978)) )
))
(declare-fun lt!375741 () ListLongMap!8981)

(declare-fun lt!375744 () ListLongMap!8981)

(assert (=> b!828824 (= lt!375741 lt!375744)))

(declare-fun zeroValueBefore!34 () V!25227)

(declare-fun zeroValueAfter!34 () V!25227)

(declare-fun minValue!754 () V!25227)

(declare-datatypes ((Unit!28401 0))(
  ( (Unit!28402) )
))
(declare-fun lt!375742 () Unit!28401)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!598 (array!46478 array!46480 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25227 V!25227 V!25227 V!25227 (_ BitVec 32) Int) Unit!28401)

(assert (=> b!828824 (= lt!375742 (lemmaNoChangeToArrayThenSameMapNoExtras!598 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2508 (array!46478 array!46480 (_ BitVec 32) (_ BitVec 32) V!25227 V!25227 (_ BitVec 32) Int) ListLongMap!8981)

(assert (=> b!828824 (= lt!375744 (getCurrentListMapNoExtraKeys!2508 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!828824 (= lt!375741 (getCurrentListMapNoExtraKeys!2508 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828825 () Bool)

(declare-fun e!461960 () Bool)

(declare-fun mapRes!24394 () Bool)

(assert (=> b!828825 (= e!461962 (and e!461960 mapRes!24394))))

(declare-fun condMapEmpty!24394 () Bool)

(declare-fun mapDefault!24394 () ValueCell!7169)

