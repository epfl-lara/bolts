; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70698 () Bool)

(assert start!70698)

(declare-fun b_free!12961 () Bool)

(declare-fun b_next!12961 () Bool)

(assert (=> start!70698 (= b_free!12961 (not b_next!12961))))

(declare-fun tp!45621 () Bool)

(declare-fun b_and!21833 () Bool)

(assert (=> start!70698 (= tp!45621 b_and!21833)))

(declare-fun b!820812 () Bool)

(declare-fun e!456127 () Bool)

(declare-fun tp_is_empty!14671 () Bool)

(assert (=> b!820812 (= e!456127 tp_is_empty!14671)))

(declare-fun b!820813 () Bool)

(declare-fun e!456128 () Bool)

(assert (=> b!820813 (= e!456128 tp_is_empty!14671)))

(declare-fun res!560103 () Bool)

(declare-fun e!456125 () Bool)

(assert (=> start!70698 (=> (not res!560103) (not e!456125))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70698 (= res!560103 (validMask!0 mask!1312))))

(assert (=> start!70698 e!456125))

(assert (=> start!70698 tp_is_empty!14671))

(declare-datatypes ((array!45502 0))(
  ( (array!45503 (arr!21799 (Array (_ BitVec 32) (_ BitVec 64))) (size!22220 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45502)

(declare-fun array_inv!17389 (array!45502) Bool)

(assert (=> start!70698 (array_inv!17389 _keys!976)))

(assert (=> start!70698 true))

(declare-datatypes ((V!24563 0))(
  ( (V!24564 (val!7383 Int)) )
))
(declare-datatypes ((ValueCell!6920 0))(
  ( (ValueCellFull!6920 (v!9810 V!24563)) (EmptyCell!6920) )
))
(declare-datatypes ((array!45504 0))(
  ( (array!45505 (arr!21800 (Array (_ BitVec 32) ValueCell!6920)) (size!22221 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45504)

(declare-fun e!456129 () Bool)

(declare-fun array_inv!17390 (array!45504) Bool)

(assert (=> start!70698 (and (array_inv!17390 _values!788) e!456129)))

(assert (=> start!70698 tp!45621))

(declare-fun b!820814 () Bool)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!820814 (= e!456125 (not (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!22220 _keys!976)))))))

(declare-datatypes ((tuple2!9732 0))(
  ( (tuple2!9733 (_1!4876 (_ BitVec 64)) (_2!4876 V!24563)) )
))
(declare-datatypes ((List!15592 0))(
  ( (Nil!15589) (Cons!15588 (h!16717 tuple2!9732) (t!21933 List!15592)) )
))
(declare-datatypes ((ListLongMap!8569 0))(
  ( (ListLongMap!8570 (toList!4300 List!15592)) )
))
(declare-fun lt!368939 () ListLongMap!8569)

(declare-fun lt!368940 () ListLongMap!8569)

(assert (=> b!820814 (= lt!368939 lt!368940)))

(declare-fun zeroValueBefore!34 () V!24563)

(declare-datatypes ((Unit!28053 0))(
  ( (Unit!28054) )
))
(declare-fun lt!368938 () Unit!28053)

(declare-fun zeroValueAfter!34 () V!24563)

(declare-fun minValue!754 () V!24563)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!450 (array!45502 array!45504 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24563 V!24563 V!24563 V!24563 (_ BitVec 32) Int) Unit!28053)

(assert (=> b!820814 (= lt!368938 (lemmaNoChangeToArrayThenSameMapNoExtras!450 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2334 (array!45502 array!45504 (_ BitVec 32) (_ BitVec 32) V!24563 V!24563 (_ BitVec 32) Int) ListLongMap!8569)

(assert (=> b!820814 (= lt!368940 (getCurrentListMapNoExtraKeys!2334 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820814 (= lt!368939 (getCurrentListMapNoExtraKeys!2334 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820815 () Bool)

(declare-fun res!560101 () Bool)

(assert (=> b!820815 (=> (not res!560101) (not e!456125))))

(declare-datatypes ((List!15593 0))(
  ( (Nil!15590) (Cons!15589 (h!16718 (_ BitVec 64)) (t!21934 List!15593)) )
))
(declare-fun arrayNoDuplicates!0 (array!45502 (_ BitVec 32) List!15593) Bool)

(assert (=> b!820815 (= res!560101 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15590))))

(declare-fun b!820816 () Bool)

(declare-fun mapRes!23611 () Bool)

(assert (=> b!820816 (= e!456129 (and e!456128 mapRes!23611))))

(declare-fun condMapEmpty!23611 () Bool)

(declare-fun mapDefault!23611 () ValueCell!6920)

