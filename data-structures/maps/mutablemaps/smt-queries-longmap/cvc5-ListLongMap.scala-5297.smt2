; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71010 () Bool)

(assert start!71010)

(declare-fun b_free!13189 () Bool)

(declare-fun b_next!13189 () Bool)

(assert (=> start!71010 (= b_free!13189 (not b_next!13189))))

(declare-fun tp!46321 () Bool)

(declare-fun b_and!22111 () Bool)

(assert (=> start!71010 (= tp!46321 b_and!22111)))

(declare-fun b!824149 () Bool)

(declare-fun e!458529 () Bool)

(declare-fun tp_is_empty!14899 () Bool)

(assert (=> b!824149 (= e!458529 tp_is_empty!14899)))

(declare-fun b!824150 () Bool)

(declare-fun res!562010 () Bool)

(declare-fun e!458528 () Bool)

(assert (=> b!824150 (=> (not res!562010) (not e!458528))))

(declare-datatypes ((array!45946 0))(
  ( (array!45947 (arr!22016 (Array (_ BitVec 32) (_ BitVec 64))) (size!22437 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45946)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45946 (_ BitVec 32)) Bool)

(assert (=> b!824150 (= res!562010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23968 () Bool)

(declare-fun mapRes!23968 () Bool)

(declare-fun tp!46320 () Bool)

(declare-fun e!458532 () Bool)

(assert (=> mapNonEmpty!23968 (= mapRes!23968 (and tp!46320 e!458532))))

(declare-fun mapKey!23968 () (_ BitVec 32))

(declare-datatypes ((V!24867 0))(
  ( (V!24868 (val!7497 Int)) )
))
(declare-datatypes ((ValueCell!7034 0))(
  ( (ValueCellFull!7034 (v!9926 V!24867)) (EmptyCell!7034) )
))
(declare-fun mapRest!23968 () (Array (_ BitVec 32) ValueCell!7034))

(declare-datatypes ((array!45948 0))(
  ( (array!45949 (arr!22017 (Array (_ BitVec 32) ValueCell!7034)) (size!22438 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45948)

(declare-fun mapValue!23968 () ValueCell!7034)

(assert (=> mapNonEmpty!23968 (= (arr!22017 _values!788) (store mapRest!23968 mapKey!23968 mapValue!23968))))

(declare-fun b!824151 () Bool)

(declare-fun e!458531 () Bool)

(assert (=> b!824151 (= e!458528 (not e!458531))))

(declare-fun res!562009 () Bool)

(assert (=> b!824151 (=> res!562009 e!458531)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!824151 (= res!562009 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9908 0))(
  ( (tuple2!9909 (_1!4964 (_ BitVec 64)) (_2!4964 V!24867)) )
))
(declare-datatypes ((List!15765 0))(
  ( (Nil!15762) (Cons!15761 (h!16890 tuple2!9908) (t!22116 List!15765)) )
))
(declare-datatypes ((ListLongMap!8745 0))(
  ( (ListLongMap!8746 (toList!4388 List!15765)) )
))
(declare-fun lt!371705 () ListLongMap!8745)

(declare-fun lt!371707 () ListLongMap!8745)

(assert (=> b!824151 (= lt!371705 lt!371707)))

(declare-fun zeroValueBefore!34 () V!24867)

(declare-fun zeroValueAfter!34 () V!24867)

(declare-fun minValue!754 () V!24867)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28222 0))(
  ( (Unit!28223) )
))
(declare-fun lt!371704 () Unit!28222)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!526 (array!45946 array!45948 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24867 V!24867 V!24867 V!24867 (_ BitVec 32) Int) Unit!28222)

(assert (=> b!824151 (= lt!371704 (lemmaNoChangeToArrayThenSameMapNoExtras!526 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2410 (array!45946 array!45948 (_ BitVec 32) (_ BitVec 32) V!24867 V!24867 (_ BitVec 32) Int) ListLongMap!8745)

(assert (=> b!824151 (= lt!371707 (getCurrentListMapNoExtraKeys!2410 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824151 (= lt!371705 (getCurrentListMapNoExtraKeys!2410 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824152 () Bool)

(assert (=> b!824152 (= e!458531 true)))

(declare-fun lt!371706 () ListLongMap!8745)

(declare-fun getCurrentListMap!2502 (array!45946 array!45948 (_ BitVec 32) (_ BitVec 32) V!24867 V!24867 (_ BitVec 32) Int) ListLongMap!8745)

(assert (=> b!824152 (= lt!371706 (getCurrentListMap!2502 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!562012 () Bool)

(assert (=> start!71010 (=> (not res!562012) (not e!458528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71010 (= res!562012 (validMask!0 mask!1312))))

(assert (=> start!71010 e!458528))

(assert (=> start!71010 tp_is_empty!14899))

(declare-fun array_inv!17545 (array!45946) Bool)

(assert (=> start!71010 (array_inv!17545 _keys!976)))

(assert (=> start!71010 true))

(declare-fun e!458530 () Bool)

(declare-fun array_inv!17546 (array!45948) Bool)

(assert (=> start!71010 (and (array_inv!17546 _values!788) e!458530)))

(assert (=> start!71010 tp!46321))

(declare-fun b!824153 () Bool)

(assert (=> b!824153 (= e!458532 tp_is_empty!14899)))

(declare-fun b!824154 () Bool)

(assert (=> b!824154 (= e!458530 (and e!458529 mapRes!23968))))

(declare-fun condMapEmpty!23968 () Bool)

(declare-fun mapDefault!23968 () ValueCell!7034)

