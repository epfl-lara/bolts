; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70728 () Bool)

(assert start!70728)

(declare-fun b_free!12977 () Bool)

(declare-fun b_next!12977 () Bool)

(assert (=> start!70728 (= b_free!12977 (not b_next!12977))))

(declare-fun tp!45672 () Bool)

(declare-fun b_and!21857 () Bool)

(assert (=> start!70728 (= tp!45672 b_and!21857)))

(declare-fun mapIsEmpty!23638 () Bool)

(declare-fun mapRes!23638 () Bool)

(assert (=> mapIsEmpty!23638 mapRes!23638))

(declare-fun res!560248 () Bool)

(declare-fun e!456320 () Bool)

(assert (=> start!70728 (=> (not res!560248) (not e!456320))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70728 (= res!560248 (validMask!0 mask!1312))))

(assert (=> start!70728 e!456320))

(declare-fun tp_is_empty!14687 () Bool)

(assert (=> start!70728 tp_is_empty!14687))

(declare-datatypes ((array!45532 0))(
  ( (array!45533 (arr!21813 (Array (_ BitVec 32) (_ BitVec 64))) (size!22234 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45532)

(declare-fun array_inv!17401 (array!45532) Bool)

(assert (=> start!70728 (array_inv!17401 _keys!976)))

(assert (=> start!70728 true))

(declare-datatypes ((V!24583 0))(
  ( (V!24584 (val!7391 Int)) )
))
(declare-datatypes ((ValueCell!6928 0))(
  ( (ValueCellFull!6928 (v!9818 V!24583)) (EmptyCell!6928) )
))
(declare-datatypes ((array!45534 0))(
  ( (array!45535 (arr!21814 (Array (_ BitVec 32) ValueCell!6928)) (size!22235 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45534)

(declare-fun e!456318 () Bool)

(declare-fun array_inv!17402 (array!45534) Bool)

(assert (=> start!70728 (and (array_inv!17402 _values!788) e!456318)))

(assert (=> start!70728 tp!45672))

(declare-fun b!821082 () Bool)

(declare-fun e!456319 () Bool)

(assert (=> b!821082 (= e!456319 true)))

(declare-fun zeroValueBefore!34 () V!24583)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24583)

(declare-datatypes ((tuple2!9742 0))(
  ( (tuple2!9743 (_1!4881 (_ BitVec 64)) (_2!4881 V!24583)) )
))
(declare-datatypes ((List!15603 0))(
  ( (Nil!15600) (Cons!15599 (h!16728 tuple2!9742) (t!21946 List!15603)) )
))
(declare-datatypes ((ListLongMap!8579 0))(
  ( (ListLongMap!8580 (toList!4305 List!15603)) )
))
(declare-fun lt!369069 () ListLongMap!8579)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2440 (array!45532 array!45534 (_ BitVec 32) (_ BitVec 32) V!24583 V!24583 (_ BitVec 32) Int) ListLongMap!8579)

(assert (=> b!821082 (= lt!369069 (getCurrentListMap!2440 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821083 () Bool)

(declare-fun res!560244 () Bool)

(assert (=> b!821083 (=> (not res!560244) (not e!456320))))

(declare-datatypes ((List!15604 0))(
  ( (Nil!15601) (Cons!15600 (h!16729 (_ BitVec 64)) (t!21947 List!15604)) )
))
(declare-fun arrayNoDuplicates!0 (array!45532 (_ BitVec 32) List!15604) Bool)

(assert (=> b!821083 (= res!560244 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15601))))

(declare-fun b!821084 () Bool)

(declare-fun e!456322 () Bool)

(assert (=> b!821084 (= e!456318 (and e!456322 mapRes!23638))))

(declare-fun condMapEmpty!23638 () Bool)

(declare-fun mapDefault!23638 () ValueCell!6928)

