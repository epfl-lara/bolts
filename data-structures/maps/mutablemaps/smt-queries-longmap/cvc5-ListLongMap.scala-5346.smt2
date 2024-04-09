; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71462 () Bool)

(assert start!71462)

(declare-fun b_free!13483 () Bool)

(declare-fun b_next!13483 () Bool)

(assert (=> start!71462 (= b_free!13483 (not b_next!13483))))

(declare-fun tp!47229 () Bool)

(declare-fun b_and!22507 () Bool)

(assert (=> start!71462 (= tp!47229 b_and!22507)))

(declare-fun res!565171 () Bool)

(declare-fun e!462428 () Bool)

(assert (=> start!71462 (=> (not res!565171) (not e!462428))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71462 (= res!565171 (validMask!0 mask!1312))))

(assert (=> start!71462 e!462428))

(declare-fun tp_is_empty!15193 () Bool)

(assert (=> start!71462 tp_is_empty!15193))

(declare-datatypes ((array!46528 0))(
  ( (array!46529 (arr!22298 (Array (_ BitVec 32) (_ BitVec 64))) (size!22719 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46528)

(declare-fun array_inv!17737 (array!46528) Bool)

(assert (=> start!71462 (array_inv!17737 _keys!976)))

(assert (=> start!71462 true))

(declare-datatypes ((V!25259 0))(
  ( (V!25260 (val!7644 Int)) )
))
(declare-datatypes ((ValueCell!7181 0))(
  ( (ValueCellFull!7181 (v!10080 V!25259)) (EmptyCell!7181) )
))
(declare-datatypes ((array!46530 0))(
  ( (array!46531 (arr!22299 (Array (_ BitVec 32) ValueCell!7181)) (size!22720 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46530)

(declare-fun e!462424 () Bool)

(declare-fun array_inv!17738 (array!46530) Bool)

(assert (=> start!71462 (and (array_inv!17738 _values!788) e!462424)))

(assert (=> start!71462 tp!47229))

(declare-fun mapNonEmpty!24436 () Bool)

(declare-fun mapRes!24436 () Bool)

(declare-fun tp!47230 () Bool)

(declare-fun e!462426 () Bool)

(assert (=> mapNonEmpty!24436 (= mapRes!24436 (and tp!47230 e!462426))))

(declare-fun mapKey!24436 () (_ BitVec 32))

(declare-fun mapRest!24436 () (Array (_ BitVec 32) ValueCell!7181))

(declare-fun mapValue!24436 () ValueCell!7181)

(assert (=> mapNonEmpty!24436 (= (arr!22299 _values!788) (store mapRest!24436 mapKey!24436 mapValue!24436))))

(declare-fun mapIsEmpty!24436 () Bool)

(assert (=> mapIsEmpty!24436 mapRes!24436))

(declare-fun b!829491 () Bool)

(declare-fun res!565174 () Bool)

(assert (=> b!829491 (=> (not res!565174) (not e!462428))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46528 (_ BitVec 32)) Bool)

(assert (=> b!829491 (= res!565174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!829492 () Bool)

(declare-fun e!462425 () Bool)

(assert (=> b!829492 (= e!462428 (not e!462425))))

(declare-fun res!565170 () Bool)

(assert (=> b!829492 (=> res!565170 e!462425)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!829492 (= res!565170 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!10162 0))(
  ( (tuple2!10163 (_1!5091 (_ BitVec 64)) (_2!5091 V!25259)) )
))
(declare-datatypes ((List!15994 0))(
  ( (Nil!15991) (Cons!15990 (h!17119 tuple2!10162) (t!22363 List!15994)) )
))
(declare-datatypes ((ListLongMap!8999 0))(
  ( (ListLongMap!9000 (toList!4515 List!15994)) )
))
(declare-fun lt!376237 () ListLongMap!8999)

(declare-fun lt!376239 () ListLongMap!8999)

(assert (=> b!829492 (= lt!376237 lt!376239)))

(declare-fun zeroValueBefore!34 () V!25259)

(declare-datatypes ((Unit!28419 0))(
  ( (Unit!28420) )
))
(declare-fun lt!376238 () Unit!28419)

(declare-fun zeroValueAfter!34 () V!25259)

(declare-fun minValue!754 () V!25259)

(declare-fun defaultEntry!796 () Int)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!605 (array!46528 array!46530 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25259 V!25259 V!25259 V!25259 (_ BitVec 32) Int) Unit!28419)

(assert (=> b!829492 (= lt!376238 (lemmaNoChangeToArrayThenSameMapNoExtras!605 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2515 (array!46528 array!46530 (_ BitVec 32) (_ BitVec 32) V!25259 V!25259 (_ BitVec 32) Int) ListLongMap!8999)

(assert (=> b!829492 (= lt!376239 (getCurrentListMapNoExtraKeys!2515 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!829492 (= lt!376237 (getCurrentListMapNoExtraKeys!2515 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!829493 () Bool)

(declare-fun e!462427 () Bool)

(assert (=> b!829493 (= e!462427 tp_is_empty!15193)))

(declare-fun b!829494 () Bool)

(assert (=> b!829494 (= e!462424 (and e!462427 mapRes!24436))))

(declare-fun condMapEmpty!24436 () Bool)

(declare-fun mapDefault!24436 () ValueCell!7181)

