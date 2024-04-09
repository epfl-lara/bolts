; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70672 () Bool)

(assert start!70672)

(declare-fun b_free!12935 () Bool)

(declare-fun b_next!12935 () Bool)

(assert (=> start!70672 (= b_free!12935 (not b_next!12935))))

(declare-fun tp!45544 () Bool)

(declare-fun b_and!21807 () Bool)

(assert (=> start!70672 (= tp!45544 b_and!21807)))

(declare-fun b!820539 () Bool)

(declare-fun res!559944 () Bool)

(declare-fun e!455933 () Bool)

(assert (=> b!820539 (=> (not res!559944) (not e!455933))))

(declare-datatypes ((array!45452 0))(
  ( (array!45453 (arr!21774 (Array (_ BitVec 32) (_ BitVec 64))) (size!22195 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45452)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24527 0))(
  ( (V!24528 (val!7370 Int)) )
))
(declare-datatypes ((ValueCell!6907 0))(
  ( (ValueCellFull!6907 (v!9797 V!24527)) (EmptyCell!6907) )
))
(declare-datatypes ((array!45454 0))(
  ( (array!45455 (arr!21775 (Array (_ BitVec 32) ValueCell!6907)) (size!22196 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45454)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!820539 (= res!559944 (and (= (size!22196 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22195 _keys!976) (size!22196 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!820541 () Bool)

(declare-fun e!455932 () Bool)

(declare-fun tp_is_empty!14645 () Bool)

(assert (=> b!820541 (= e!455932 tp_is_empty!14645)))

(declare-fun b!820542 () Bool)

(assert (=> b!820542 (= e!455933 (not true))))

(declare-datatypes ((tuple2!9716 0))(
  ( (tuple2!9717 (_1!4868 (_ BitVec 64)) (_2!4868 V!24527)) )
))
(declare-datatypes ((List!15576 0))(
  ( (Nil!15573) (Cons!15572 (h!16701 tuple2!9716) (t!21917 List!15576)) )
))
(declare-datatypes ((ListLongMap!8553 0))(
  ( (ListLongMap!8554 (toList!4292 List!15576)) )
))
(declare-fun lt!368821 () ListLongMap!8553)

(declare-fun lt!368823 () ListLongMap!8553)

(assert (=> b!820542 (= lt!368821 lt!368823)))

(declare-fun zeroValueAfter!34 () V!24527)

(declare-fun minValue!754 () V!24527)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28037 0))(
  ( (Unit!28038) )
))
(declare-fun lt!368822 () Unit!28037)

(declare-fun zeroValueBefore!34 () V!24527)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!442 (array!45452 array!45454 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24527 V!24527 V!24527 V!24527 (_ BitVec 32) Int) Unit!28037)

(assert (=> b!820542 (= lt!368822 (lemmaNoChangeToArrayThenSameMapNoExtras!442 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2326 (array!45452 array!45454 (_ BitVec 32) (_ BitVec 32) V!24527 V!24527 (_ BitVec 32) Int) ListLongMap!8553)

(assert (=> b!820542 (= lt!368823 (getCurrentListMapNoExtraKeys!2326 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820542 (= lt!368821 (getCurrentListMapNoExtraKeys!2326 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23572 () Bool)

(declare-fun mapRes!23572 () Bool)

(assert (=> mapIsEmpty!23572 mapRes!23572))

(declare-fun b!820543 () Bool)

(declare-fun e!455930 () Bool)

(declare-fun e!455931 () Bool)

(assert (=> b!820543 (= e!455930 (and e!455931 mapRes!23572))))

(declare-fun condMapEmpty!23572 () Bool)

(declare-fun mapDefault!23572 () ValueCell!6907)

