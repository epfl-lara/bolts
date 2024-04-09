; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70754 () Bool)

(assert start!70754)

(declare-fun b_free!13003 () Bool)

(declare-fun b_next!13003 () Bool)

(assert (=> start!70754 (= b_free!13003 (not b_next!13003))))

(declare-fun tp!45750 () Bool)

(declare-fun b_and!21883 () Bool)

(assert (=> start!70754 (= tp!45750 b_and!21883)))

(declare-fun res!560439 () Bool)

(declare-fun e!456551 () Bool)

(assert (=> start!70754 (=> (not res!560439) (not e!456551))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70754 (= res!560439 (validMask!0 mask!1312))))

(assert (=> start!70754 e!456551))

(declare-fun tp_is_empty!14713 () Bool)

(assert (=> start!70754 tp_is_empty!14713))

(declare-datatypes ((array!45582 0))(
  ( (array!45583 (arr!21838 (Array (_ BitVec 32) (_ BitVec 64))) (size!22259 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45582)

(declare-fun array_inv!17419 (array!45582) Bool)

(assert (=> start!70754 (array_inv!17419 _keys!976)))

(assert (=> start!70754 true))

(declare-datatypes ((V!24619 0))(
  ( (V!24620 (val!7404 Int)) )
))
(declare-datatypes ((ValueCell!6941 0))(
  ( (ValueCellFull!6941 (v!9831 V!24619)) (EmptyCell!6941) )
))
(declare-datatypes ((array!45584 0))(
  ( (array!45585 (arr!21839 (Array (_ BitVec 32) ValueCell!6941)) (size!22260 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45584)

(declare-fun e!456553 () Bool)

(declare-fun array_inv!17420 (array!45584) Bool)

(assert (=> start!70754 (and (array_inv!17420 _values!788) e!456553)))

(assert (=> start!70754 tp!45750))

(declare-fun b!821394 () Bool)

(declare-fun res!560441 () Bool)

(assert (=> b!821394 (=> (not res!560441) (not e!456551))))

(declare-datatypes ((List!15624 0))(
  ( (Nil!15621) (Cons!15620 (h!16749 (_ BitVec 64)) (t!21967 List!15624)) )
))
(declare-fun arrayNoDuplicates!0 (array!45582 (_ BitVec 32) List!15624) Bool)

(assert (=> b!821394 (= res!560441 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15621))))

(declare-fun mapIsEmpty!23677 () Bool)

(declare-fun mapRes!23677 () Bool)

(assert (=> mapIsEmpty!23677 mapRes!23677))

(declare-fun b!821395 () Bool)

(declare-fun res!560443 () Bool)

(assert (=> b!821395 (=> (not res!560443) (not e!456551))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!821395 (= res!560443 (and (= (size!22260 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22259 _keys!976) (size!22260 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!821396 () Bool)

(declare-fun e!456555 () Bool)

(assert (=> b!821396 (= e!456551 (not e!456555))))

(declare-fun res!560440 () Bool)

(assert (=> b!821396 (=> res!560440 e!456555)))

(assert (=> b!821396 (= res!560440 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9764 0))(
  ( (tuple2!9765 (_1!4892 (_ BitVec 64)) (_2!4892 V!24619)) )
))
(declare-datatypes ((List!15625 0))(
  ( (Nil!15622) (Cons!15621 (h!16750 tuple2!9764) (t!21968 List!15625)) )
))
(declare-datatypes ((ListLongMap!8601 0))(
  ( (ListLongMap!8602 (toList!4316 List!15625)) )
))
(declare-fun lt!369226 () ListLongMap!8601)

(declare-fun lt!369225 () ListLongMap!8601)

(assert (=> b!821396 (= lt!369226 lt!369225)))

(declare-fun zeroValueBefore!34 () V!24619)

(declare-fun zeroValueAfter!34 () V!24619)

(declare-fun minValue!754 () V!24619)

(declare-datatypes ((Unit!28079 0))(
  ( (Unit!28080) )
))
(declare-fun lt!369223 () Unit!28079)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!463 (array!45582 array!45584 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24619 V!24619 V!24619 V!24619 (_ BitVec 32) Int) Unit!28079)

(assert (=> b!821396 (= lt!369223 (lemmaNoChangeToArrayThenSameMapNoExtras!463 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2347 (array!45582 array!45584 (_ BitVec 32) (_ BitVec 32) V!24619 V!24619 (_ BitVec 32) Int) ListLongMap!8601)

(assert (=> b!821396 (= lt!369225 (getCurrentListMapNoExtraKeys!2347 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821396 (= lt!369226 (getCurrentListMapNoExtraKeys!2347 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821397 () Bool)

(assert (=> b!821397 (= e!456555 true)))

(declare-fun lt!369224 () ListLongMap!8601)

(declare-fun getCurrentListMap!2451 (array!45582 array!45584 (_ BitVec 32) (_ BitVec 32) V!24619 V!24619 (_ BitVec 32) Int) ListLongMap!8601)

(assert (=> b!821397 (= lt!369224 (getCurrentListMap!2451 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821398 () Bool)

(declare-fun e!456554 () Bool)

(assert (=> b!821398 (= e!456554 tp_is_empty!14713)))

(declare-fun b!821399 () Bool)

(declare-fun res!560442 () Bool)

(assert (=> b!821399 (=> (not res!560442) (not e!456551))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45582 (_ BitVec 32)) Bool)

(assert (=> b!821399 (= res!560442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!821400 () Bool)

(assert (=> b!821400 (= e!456553 (and e!456554 mapRes!23677))))

(declare-fun condMapEmpty!23677 () Bool)

(declare-fun mapDefault!23677 () ValueCell!6941)

