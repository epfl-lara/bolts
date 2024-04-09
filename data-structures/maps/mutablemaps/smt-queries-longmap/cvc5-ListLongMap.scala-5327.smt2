; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71246 () Bool)

(assert start!71246)

(declare-fun b_free!13369 () Bool)

(declare-fun b_next!13369 () Bool)

(assert (=> start!71246 (= b_free!13369 (not b_next!13369))))

(declare-fun tp!46869 () Bool)

(declare-fun b_and!22325 () Bool)

(assert (=> start!71246 (= tp!46869 b_and!22325)))

(declare-fun b!827164 () Bool)

(declare-fun e!460797 () Bool)

(declare-fun tp_is_empty!15079 () Bool)

(assert (=> b!827164 (= e!460797 tp_is_empty!15079)))

(declare-fun b!827165 () Bool)

(declare-fun e!460800 () Bool)

(assert (=> b!827165 (= e!460800 false)))

(declare-datatypes ((V!25107 0))(
  ( (V!25108 (val!7587 Int)) )
))
(declare-datatypes ((tuple2!10064 0))(
  ( (tuple2!10065 (_1!5042 (_ BitVec 64)) (_2!5042 V!25107)) )
))
(declare-datatypes ((List!15900 0))(
  ( (Nil!15897) (Cons!15896 (h!17025 tuple2!10064) (t!22257 List!15900)) )
))
(declare-datatypes ((ListLongMap!8901 0))(
  ( (ListLongMap!8902 (toList!4466 List!15900)) )
))
(declare-fun lt!374817 () ListLongMap!8901)

(declare-datatypes ((array!46292 0))(
  ( (array!46293 (arr!22186 (Array (_ BitVec 32) (_ BitVec 64))) (size!22607 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46292)

(declare-fun zeroValueAfter!34 () V!25107)

(declare-fun minValue!754 () V!25107)

(declare-datatypes ((ValueCell!7124 0))(
  ( (ValueCellFull!7124 (v!10018 V!25107)) (EmptyCell!7124) )
))
(declare-datatypes ((array!46294 0))(
  ( (array!46295 (arr!22187 (Array (_ BitVec 32) ValueCell!7124)) (size!22608 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46294)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2473 (array!46292 array!46294 (_ BitVec 32) (_ BitVec 32) V!25107 V!25107 (_ BitVec 32) Int) ListLongMap!8901)

(assert (=> b!827165 (= lt!374817 (getCurrentListMapNoExtraKeys!2473 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25107)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!374818 () ListLongMap!8901)

(assert (=> b!827165 (= lt!374818 (getCurrentListMapNoExtraKeys!2473 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!563920 () Bool)

(assert (=> start!71246 (=> (not res!563920) (not e!460800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71246 (= res!563920 (validMask!0 mask!1312))))

(assert (=> start!71246 e!460800))

(assert (=> start!71246 tp_is_empty!15079))

(declare-fun array_inv!17665 (array!46292) Bool)

(assert (=> start!71246 (array_inv!17665 _keys!976)))

(assert (=> start!71246 true))

(declare-fun e!460799 () Bool)

(declare-fun array_inv!17666 (array!46294) Bool)

(assert (=> start!71246 (and (array_inv!17666 _values!788) e!460799)))

(assert (=> start!71246 tp!46869))

(declare-fun b!827166 () Bool)

(declare-fun res!563922 () Bool)

(assert (=> b!827166 (=> (not res!563922) (not e!460800))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46292 (_ BitVec 32)) Bool)

(assert (=> b!827166 (= res!563922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827167 () Bool)

(declare-fun res!563921 () Bool)

(assert (=> b!827167 (=> (not res!563921) (not e!460800))))

(declare-datatypes ((List!15901 0))(
  ( (Nil!15898) (Cons!15897 (h!17026 (_ BitVec 64)) (t!22258 List!15901)) )
))
(declare-fun arrayNoDuplicates!0 (array!46292 (_ BitVec 32) List!15901) Bool)

(assert (=> b!827167 (= res!563921 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15898))))

(declare-fun b!827168 () Bool)

(declare-fun e!460801 () Bool)

(declare-fun mapRes!24247 () Bool)

(assert (=> b!827168 (= e!460799 (and e!460801 mapRes!24247))))

(declare-fun condMapEmpty!24247 () Bool)

(declare-fun mapDefault!24247 () ValueCell!7124)

