; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70028 () Bool)

(assert start!70028)

(declare-fun b_free!12425 () Bool)

(declare-fun b_next!12425 () Bool)

(assert (=> start!70028 (= b_free!12425 (not b_next!12425))))

(declare-fun tp!43990 () Bool)

(declare-fun b_and!21215 () Bool)

(assert (=> start!70028 (= tp!43990 b_and!21215)))

(declare-fun b!813458 () Bool)

(declare-fun res!555818 () Bool)

(declare-fun e!450812 () Bool)

(assert (=> b!813458 (=> (not res!555818) (not e!450812))))

(declare-datatypes ((array!44460 0))(
  ( (array!44461 (arr!21286 (Array (_ BitVec 32) (_ BitVec 64))) (size!21707 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44460)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23847 0))(
  ( (V!23848 (val!7115 Int)) )
))
(declare-datatypes ((ValueCell!6652 0))(
  ( (ValueCellFull!6652 (v!9538 V!23847)) (EmptyCell!6652) )
))
(declare-datatypes ((array!44462 0))(
  ( (array!44463 (arr!21287 (Array (_ BitVec 32) ValueCell!6652)) (size!21708 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44462)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813458 (= res!555818 (and (= (size!21708 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21707 _keys!976) (size!21708 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!22783 () Bool)

(declare-fun mapRes!22783 () Bool)

(assert (=> mapIsEmpty!22783 mapRes!22783))

(declare-fun b!813459 () Bool)

(assert (=> b!813459 (= e!450812 false)))

(declare-fun minValue!754 () V!23847)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9322 0))(
  ( (tuple2!9323 (_1!4671 (_ BitVec 64)) (_2!4671 V!23847)) )
))
(declare-datatypes ((List!15197 0))(
  ( (Nil!15194) (Cons!15193 (h!16322 tuple2!9322) (t!21522 List!15197)) )
))
(declare-datatypes ((ListLongMap!8159 0))(
  ( (ListLongMap!8160 (toList!4095 List!15197)) )
))
(declare-fun lt!364291 () ListLongMap!8159)

(declare-fun zeroValueAfter!34 () V!23847)

(declare-fun getCurrentListMapNoExtraKeys!2144 (array!44460 array!44462 (_ BitVec 32) (_ BitVec 32) V!23847 V!23847 (_ BitVec 32) Int) ListLongMap!8159)

(assert (=> b!813459 (= lt!364291 (getCurrentListMapNoExtraKeys!2144 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23847)

(declare-fun lt!364292 () ListLongMap!8159)

(assert (=> b!813459 (= lt!364292 (getCurrentListMapNoExtraKeys!2144 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813460 () Bool)

(declare-fun res!555820 () Bool)

(assert (=> b!813460 (=> (not res!555820) (not e!450812))))

(declare-datatypes ((List!15198 0))(
  ( (Nil!15195) (Cons!15194 (h!16323 (_ BitVec 64)) (t!21523 List!15198)) )
))
(declare-fun arrayNoDuplicates!0 (array!44460 (_ BitVec 32) List!15198) Bool)

(assert (=> b!813460 (= res!555820 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15195))))

(declare-fun res!555821 () Bool)

(assert (=> start!70028 (=> (not res!555821) (not e!450812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70028 (= res!555821 (validMask!0 mask!1312))))

(assert (=> start!70028 e!450812))

(declare-fun tp_is_empty!14135 () Bool)

(assert (=> start!70028 tp_is_empty!14135))

(declare-fun array_inv!17027 (array!44460) Bool)

(assert (=> start!70028 (array_inv!17027 _keys!976)))

(assert (=> start!70028 true))

(declare-fun e!450814 () Bool)

(declare-fun array_inv!17028 (array!44462) Bool)

(assert (=> start!70028 (and (array_inv!17028 _values!788) e!450814)))

(assert (=> start!70028 tp!43990))

(declare-fun b!813461 () Bool)

(declare-fun e!450813 () Bool)

(assert (=> b!813461 (= e!450813 tp_is_empty!14135)))

(declare-fun b!813462 () Bool)

(declare-fun res!555819 () Bool)

(assert (=> b!813462 (=> (not res!555819) (not e!450812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44460 (_ BitVec 32)) Bool)

(assert (=> b!813462 (= res!555819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!813463 () Bool)

(declare-fun e!450815 () Bool)

(assert (=> b!813463 (= e!450814 (and e!450815 mapRes!22783))))

(declare-fun condMapEmpty!22783 () Bool)

(declare-fun mapDefault!22783 () ValueCell!6652)

