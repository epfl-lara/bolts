; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71714 () Bool)

(assert start!71714)

(declare-fun b_free!13523 () Bool)

(declare-fun b_next!13523 () Bool)

(assert (=> start!71714 (= b_free!13523 (not b_next!13523))))

(declare-fun tp!47366 () Bool)

(declare-fun b_and!22627 () Bool)

(assert (=> start!71714 (= tp!47366 b_and!22627)))

(declare-datatypes ((V!25311 0))(
  ( (V!25312 (val!7664 Int)) )
))
(declare-datatypes ((tuple2!10196 0))(
  ( (tuple2!10197 (_1!5108 (_ BitVec 64)) (_2!5108 V!25311)) )
))
(declare-fun lt!378455 () tuple2!10196)

(declare-datatypes ((List!16023 0))(
  ( (Nil!16020) (Cons!16019 (h!17150 tuple2!10196) (t!22402 List!16023)) )
))
(declare-datatypes ((ListLongMap!9033 0))(
  ( (ListLongMap!9034 (toList!4532 List!16023)) )
))
(declare-fun lt!378458 () ListLongMap!9033)

(declare-fun zeroValueAfter!34 () V!25311)

(declare-fun b!833576 () Bool)

(declare-fun e!465069 () Bool)

(declare-fun lt!378452 () ListLongMap!9033)

(declare-fun +!1960 (ListLongMap!9033 tuple2!10196) ListLongMap!9033)

(assert (=> b!833576 (= e!465069 (= lt!378452 (+!1960 (+!1960 lt!378458 (tuple2!10197 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!378455)))))

(declare-fun b!833577 () Bool)

(declare-fun res!566935 () Bool)

(declare-fun e!465071 () Bool)

(assert (=> b!833577 (=> (not res!566935) (not e!465071))))

(declare-datatypes ((array!46610 0))(
  ( (array!46611 (arr!22335 (Array (_ BitVec 32) (_ BitVec 64))) (size!22756 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46610)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46610 (_ BitVec 32)) Bool)

(assert (=> b!833577 (= res!566935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!833578 () Bool)

(declare-fun e!465068 () Bool)

(declare-fun tp_is_empty!15233 () Bool)

(assert (=> b!833578 (= e!465068 tp_is_empty!15233)))

(declare-fun mapIsEmpty!24512 () Bool)

(declare-fun mapRes!24512 () Bool)

(assert (=> mapIsEmpty!24512 mapRes!24512))

(declare-fun b!833579 () Bool)

(declare-fun e!465067 () Bool)

(assert (=> b!833579 (= e!465071 (not e!465067))))

(declare-fun res!566932 () Bool)

(assert (=> b!833579 (=> res!566932 e!465067)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!833579 (= res!566932 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!378449 () ListLongMap!9033)

(assert (=> b!833579 (= lt!378449 lt!378458)))

(declare-fun zeroValueBefore!34 () V!25311)

(declare-fun minValue!754 () V!25311)

(declare-datatypes ((ValueCell!7201 0))(
  ( (ValueCellFull!7201 (v!10108 V!25311)) (EmptyCell!7201) )
))
(declare-datatypes ((array!46612 0))(
  ( (array!46613 (arr!22336 (Array (_ BitVec 32) ValueCell!7201)) (size!22757 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46612)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28571 0))(
  ( (Unit!28572) )
))
(declare-fun lt!378457 () Unit!28571)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!620 (array!46610 array!46612 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25311 V!25311 V!25311 V!25311 (_ BitVec 32) Int) Unit!28571)

(assert (=> b!833579 (= lt!378457 (lemmaNoChangeToArrayThenSameMapNoExtras!620 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2530 (array!46610 array!46612 (_ BitVec 32) (_ BitVec 32) V!25311 V!25311 (_ BitVec 32) Int) ListLongMap!9033)

(assert (=> b!833579 (= lt!378458 (getCurrentListMapNoExtraKeys!2530 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!833579 (= lt!378449 (getCurrentListMapNoExtraKeys!2530 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!833581 () Bool)

(declare-fun e!465065 () Bool)

(declare-fun lt!378451 () tuple2!10196)

(assert (=> b!833581 (= e!465065 (= lt!378452 (+!1960 (+!1960 lt!378458 lt!378455) lt!378451)))))

(declare-fun b!833582 () Bool)

(declare-fun e!465066 () Bool)

(declare-fun e!465064 () Bool)

(assert (=> b!833582 (= e!465066 (and e!465064 mapRes!24512))))

(declare-fun condMapEmpty!24512 () Bool)

(declare-fun mapDefault!24512 () ValueCell!7201)

