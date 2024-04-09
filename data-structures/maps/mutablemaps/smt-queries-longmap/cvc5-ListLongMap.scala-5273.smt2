; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70812 () Bool)

(assert start!70812)

(declare-fun b_free!13045 () Bool)

(declare-fun b_next!13045 () Bool)

(assert (=> start!70812 (= b_free!13045 (not b_next!13045))))

(declare-fun tp!45880 () Bool)

(declare-fun b_and!21935 () Bool)

(assert (=> start!70812 (= tp!45880 b_and!21935)))

(declare-fun b!822056 () Bool)

(declare-fun res!560823 () Bool)

(declare-fun e!457032 () Bool)

(assert (=> b!822056 (=> (not res!560823) (not e!457032))))

(declare-datatypes ((array!45662 0))(
  ( (array!45663 (arr!21877 (Array (_ BitVec 32) (_ BitVec 64))) (size!22298 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45662)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24675 0))(
  ( (V!24676 (val!7425 Int)) )
))
(declare-datatypes ((ValueCell!6962 0))(
  ( (ValueCellFull!6962 (v!9852 V!24675)) (EmptyCell!6962) )
))
(declare-datatypes ((array!45664 0))(
  ( (array!45665 (arr!21878 (Array (_ BitVec 32) ValueCell!6962)) (size!22299 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45664)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!822056 (= res!560823 (and (= (size!22299 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22298 _keys!976) (size!22299 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822057 () Bool)

(declare-fun e!457035 () Bool)

(declare-fun tp_is_empty!14755 () Bool)

(assert (=> b!822057 (= e!457035 tp_is_empty!14755)))

(declare-fun b!822058 () Bool)

(declare-fun e!457034 () Bool)

(assert (=> b!822058 (= e!457034 true)))

(declare-datatypes ((tuple2!9796 0))(
  ( (tuple2!9797 (_1!4908 (_ BitVec 64)) (_2!4908 V!24675)) )
))
(declare-datatypes ((List!15655 0))(
  ( (Nil!15652) (Cons!15651 (h!16780 tuple2!9796) (t!22000 List!15655)) )
))
(declare-datatypes ((ListLongMap!8633 0))(
  ( (ListLongMap!8634 (toList!4332 List!15655)) )
))
(declare-fun lt!369774 () ListLongMap!8633)

(declare-fun lt!369773 () ListLongMap!8633)

(declare-fun lt!369775 () tuple2!9796)

(declare-fun +!1836 (ListLongMap!8633 tuple2!9796) ListLongMap!8633)

(assert (=> b!822058 (= lt!369774 (+!1836 lt!369773 lt!369775))))

(declare-fun lt!369778 () ListLongMap!8633)

(declare-fun zeroValueAfter!34 () V!24675)

(declare-fun minValue!754 () V!24675)

(declare-datatypes ((Unit!28106 0))(
  ( (Unit!28107) )
))
(declare-fun lt!369777 () Unit!28106)

(declare-fun addCommutativeForDiffKeys!431 (ListLongMap!8633 (_ BitVec 64) V!24675 (_ BitVec 64) V!24675) Unit!28106)

(assert (=> b!822058 (= lt!369777 (addCommutativeForDiffKeys!431 lt!369778 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!369776 () ListLongMap!8633)

(assert (=> b!822058 (= lt!369776 lt!369774)))

(declare-fun lt!369781 () tuple2!9796)

(assert (=> b!822058 (= lt!369774 (+!1836 (+!1836 lt!369778 lt!369775) lt!369781))))

(assert (=> b!822058 (= lt!369775 (tuple2!9797 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!369782 () ListLongMap!8633)

(assert (=> b!822058 (= lt!369782 lt!369773)))

(assert (=> b!822058 (= lt!369773 (+!1836 lt!369778 lt!369781))))

(assert (=> b!822058 (= lt!369781 (tuple2!9797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2466 (array!45662 array!45664 (_ BitVec 32) (_ BitVec 32) V!24675 V!24675 (_ BitVec 32) Int) ListLongMap!8633)

(assert (=> b!822058 (= lt!369776 (getCurrentListMap!2466 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24675)

(assert (=> b!822058 (= lt!369782 (getCurrentListMap!2466 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23743 () Bool)

(declare-fun mapRes!23743 () Bool)

(declare-fun tp!45879 () Bool)

(declare-fun e!457033 () Bool)

(assert (=> mapNonEmpty!23743 (= mapRes!23743 (and tp!45879 e!457033))))

(declare-fun mapKey!23743 () (_ BitVec 32))

(declare-fun mapRest!23743 () (Array (_ BitVec 32) ValueCell!6962))

(declare-fun mapValue!23743 () ValueCell!6962)

(assert (=> mapNonEmpty!23743 (= (arr!21878 _values!788) (store mapRest!23743 mapKey!23743 mapValue!23743))))

(declare-fun b!822059 () Bool)

(declare-fun res!560822 () Bool)

(assert (=> b!822059 (=> (not res!560822) (not e!457032))))

(declare-datatypes ((List!15656 0))(
  ( (Nil!15653) (Cons!15652 (h!16781 (_ BitVec 64)) (t!22001 List!15656)) )
))
(declare-fun arrayNoDuplicates!0 (array!45662 (_ BitVec 32) List!15656) Bool)

(assert (=> b!822059 (= res!560822 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15653))))

(declare-fun b!822060 () Bool)

(declare-fun e!457036 () Bool)

(assert (=> b!822060 (= e!457036 (and e!457035 mapRes!23743))))

(declare-fun condMapEmpty!23743 () Bool)

(declare-fun mapDefault!23743 () ValueCell!6962)

