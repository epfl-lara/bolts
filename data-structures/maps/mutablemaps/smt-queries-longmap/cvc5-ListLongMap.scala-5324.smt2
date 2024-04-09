; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71228 () Bool)

(assert start!71228)

(declare-fun b_free!13351 () Bool)

(declare-fun b_next!13351 () Bool)

(assert (=> start!71228 (= b_free!13351 (not b_next!13351))))

(declare-fun tp!46815 () Bool)

(declare-fun b_and!22307 () Bool)

(assert (=> start!71228 (= tp!46815 b_and!22307)))

(declare-fun mapIsEmpty!24220 () Bool)

(declare-fun mapRes!24220 () Bool)

(assert (=> mapIsEmpty!24220 mapRes!24220))

(declare-fun b!826975 () Bool)

(declare-fun e!460664 () Bool)

(assert (=> b!826975 (= e!460664 (not true))))

(declare-datatypes ((V!25083 0))(
  ( (V!25084 (val!7578 Int)) )
))
(declare-datatypes ((tuple2!10052 0))(
  ( (tuple2!10053 (_1!5036 (_ BitVec 64)) (_2!5036 V!25083)) )
))
(declare-datatypes ((List!15889 0))(
  ( (Nil!15886) (Cons!15885 (h!17014 tuple2!10052) (t!22246 List!15889)) )
))
(declare-datatypes ((ListLongMap!8889 0))(
  ( (ListLongMap!8890 (toList!4460 List!15889)) )
))
(declare-fun lt!374756 () ListLongMap!8889)

(declare-fun lt!374757 () ListLongMap!8889)

(assert (=> b!826975 (= lt!374756 lt!374757)))

(declare-fun zeroValueBefore!34 () V!25083)

(declare-datatypes ((array!46260 0))(
  ( (array!46261 (arr!22170 (Array (_ BitVec 32) (_ BitVec 64))) (size!22591 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46260)

(declare-datatypes ((Unit!28357 0))(
  ( (Unit!28358) )
))
(declare-fun lt!374758 () Unit!28357)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!25083)

(declare-fun minValue!754 () V!25083)

(declare-datatypes ((ValueCell!7115 0))(
  ( (ValueCellFull!7115 (v!10009 V!25083)) (EmptyCell!7115) )
))
(declare-datatypes ((array!46262 0))(
  ( (array!46263 (arr!22171 (Array (_ BitVec 32) ValueCell!7115)) (size!22592 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46262)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!583 (array!46260 array!46262 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25083 V!25083 V!25083 V!25083 (_ BitVec 32) Int) Unit!28357)

(assert (=> b!826975 (= lt!374758 (lemmaNoChangeToArrayThenSameMapNoExtras!583 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2467 (array!46260 array!46262 (_ BitVec 32) (_ BitVec 32) V!25083 V!25083 (_ BitVec 32) Int) ListLongMap!8889)

(assert (=> b!826975 (= lt!374757 (getCurrentListMapNoExtraKeys!2467 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826975 (= lt!374756 (getCurrentListMapNoExtraKeys!2467 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826976 () Bool)

(declare-fun res!563815 () Bool)

(assert (=> b!826976 (=> (not res!563815) (not e!460664))))

(assert (=> b!826976 (= res!563815 (and (= (size!22592 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22591 _keys!976) (size!22592 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!563814 () Bool)

(assert (=> start!71228 (=> (not res!563814) (not e!460664))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71228 (= res!563814 (validMask!0 mask!1312))))

(assert (=> start!71228 e!460664))

(declare-fun tp_is_empty!15061 () Bool)

(assert (=> start!71228 tp_is_empty!15061))

(declare-fun array_inv!17653 (array!46260) Bool)

(assert (=> start!71228 (array_inv!17653 _keys!976)))

(assert (=> start!71228 true))

(declare-fun e!460665 () Bool)

(declare-fun array_inv!17654 (array!46262) Bool)

(assert (=> start!71228 (and (array_inv!17654 _values!788) e!460665)))

(assert (=> start!71228 tp!46815))

(declare-fun b!826977 () Bool)

(declare-fun res!563812 () Bool)

(assert (=> b!826977 (=> (not res!563812) (not e!460664))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46260 (_ BitVec 32)) Bool)

(assert (=> b!826977 (= res!563812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!826978 () Bool)

(declare-fun e!460663 () Bool)

(assert (=> b!826978 (= e!460665 (and e!460663 mapRes!24220))))

(declare-fun condMapEmpty!24220 () Bool)

(declare-fun mapDefault!24220 () ValueCell!7115)

