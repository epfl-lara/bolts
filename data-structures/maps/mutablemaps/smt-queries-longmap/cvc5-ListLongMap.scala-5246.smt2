; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70600 () Bool)

(assert start!70600)

(declare-fun b_free!12883 () Bool)

(declare-fun b_next!12883 () Bool)

(assert (=> start!70600 (= b_free!12883 (not b_next!12883))))

(declare-fun tp!45384 () Bool)

(declare-fun b_and!21743 () Bool)

(assert (=> start!70600 (= tp!45384 b_and!21743)))

(declare-fun b!819713 () Bool)

(declare-fun e!455333 () Bool)

(declare-fun e!455331 () Bool)

(assert (=> b!819713 (= e!455333 (not e!455331))))

(declare-fun res!559458 () Bool)

(assert (=> b!819713 (=> res!559458 e!455331)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819713 (= res!559458 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24459 0))(
  ( (V!24460 (val!7344 Int)) )
))
(declare-datatypes ((tuple2!9678 0))(
  ( (tuple2!9679 (_1!4849 (_ BitVec 64)) (_2!4849 V!24459)) )
))
(declare-datatypes ((List!15536 0))(
  ( (Nil!15533) (Cons!15532 (h!16661 tuple2!9678) (t!21875 List!15536)) )
))
(declare-datatypes ((ListLongMap!8515 0))(
  ( (ListLongMap!8516 (toList!4273 List!15536)) )
))
(declare-fun lt!368141 () ListLongMap!8515)

(declare-fun lt!368138 () ListLongMap!8515)

(assert (=> b!819713 (= lt!368141 lt!368138)))

(declare-fun zeroValueBefore!34 () V!24459)

(declare-datatypes ((array!45350 0))(
  ( (array!45351 (arr!21724 (Array (_ BitVec 32) (_ BitVec 64))) (size!22145 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45350)

(declare-fun zeroValueAfter!34 () V!24459)

(declare-fun minValue!754 () V!24459)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((ValueCell!6881 0))(
  ( (ValueCellFull!6881 (v!9770 V!24459)) (EmptyCell!6881) )
))
(declare-datatypes ((array!45352 0))(
  ( (array!45353 (arr!21725 (Array (_ BitVec 32) ValueCell!6881)) (size!22146 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45352)

(declare-datatypes ((Unit!27997 0))(
  ( (Unit!27998) )
))
(declare-fun lt!368137 () Unit!27997)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!426 (array!45350 array!45352 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24459 V!24459 V!24459 V!24459 (_ BitVec 32) Int) Unit!27997)

(assert (=> b!819713 (= lt!368137 (lemmaNoChangeToArrayThenSameMapNoExtras!426 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2310 (array!45350 array!45352 (_ BitVec 32) (_ BitVec 32) V!24459 V!24459 (_ BitVec 32) Int) ListLongMap!8515)

(assert (=> b!819713 (= lt!368138 (getCurrentListMapNoExtraKeys!2310 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819713 (= lt!368141 (getCurrentListMapNoExtraKeys!2310 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819714 () Bool)

(declare-fun res!559455 () Bool)

(assert (=> b!819714 (=> (not res!559455) (not e!455333))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45350 (_ BitVec 32)) Bool)

(assert (=> b!819714 (= res!559455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23491 () Bool)

(declare-fun mapRes!23491 () Bool)

(assert (=> mapIsEmpty!23491 mapRes!23491))

(declare-fun lt!368139 () ListLongMap!8515)

(declare-fun e!455335 () Bool)

(declare-fun b!819715 () Bool)

(declare-fun +!1816 (ListLongMap!8515 tuple2!9678) ListLongMap!8515)

(assert (=> b!819715 (= e!455335 (= lt!368139 (+!1816 lt!368138 (tuple2!9679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!819716 () Bool)

(declare-fun e!455330 () Bool)

(declare-fun tp_is_empty!14593 () Bool)

(assert (=> b!819716 (= e!455330 tp_is_empty!14593)))

(declare-fun b!819717 () Bool)

(declare-fun res!559457 () Bool)

(assert (=> b!819717 (=> (not res!559457) (not e!455333))))

(declare-datatypes ((List!15537 0))(
  ( (Nil!15534) (Cons!15533 (h!16662 (_ BitVec 64)) (t!21876 List!15537)) )
))
(declare-fun arrayNoDuplicates!0 (array!45350 (_ BitVec 32) List!15537) Bool)

(assert (=> b!819717 (= res!559457 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15534))))

(declare-fun b!819718 () Bool)

(declare-fun e!455334 () Bool)

(declare-fun e!455336 () Bool)

(assert (=> b!819718 (= e!455334 (and e!455336 mapRes!23491))))

(declare-fun condMapEmpty!23491 () Bool)

(declare-fun mapDefault!23491 () ValueCell!6881)

