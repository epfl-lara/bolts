; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71270 () Bool)

(assert start!71270)

(declare-fun b_free!13393 () Bool)

(declare-fun b_next!13393 () Bool)

(assert (=> start!71270 (= b_free!13393 (not b_next!13393))))

(declare-fun tp!46941 () Bool)

(declare-fun b_and!22349 () Bool)

(assert (=> start!71270 (= tp!46941 b_and!22349)))

(declare-fun b!827416 () Bool)

(declare-fun e!460978 () Bool)

(declare-fun tp_is_empty!15103 () Bool)

(assert (=> b!827416 (= e!460978 tp_is_empty!15103)))

(declare-fun b!827417 () Bool)

(declare-fun res!564064 () Bool)

(declare-fun e!460981 () Bool)

(assert (=> b!827417 (=> (not res!564064) (not e!460981))))

(declare-datatypes ((array!46340 0))(
  ( (array!46341 (arr!22210 (Array (_ BitVec 32) (_ BitVec 64))) (size!22631 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46340)

(declare-datatypes ((List!15920 0))(
  ( (Nil!15917) (Cons!15916 (h!17045 (_ BitVec 64)) (t!22277 List!15920)) )
))
(declare-fun arrayNoDuplicates!0 (array!46340 (_ BitVec 32) List!15920) Bool)

(assert (=> b!827417 (= res!564064 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15917))))

(declare-fun b!827418 () Bool)

(assert (=> b!827418 (= e!460981 false)))

(declare-datatypes ((V!25139 0))(
  ( (V!25140 (val!7599 Int)) )
))
(declare-fun zeroValueAfter!34 () V!25139)

(declare-fun minValue!754 () V!25139)

(declare-datatypes ((ValueCell!7136 0))(
  ( (ValueCellFull!7136 (v!10030 V!25139)) (EmptyCell!7136) )
))
(declare-datatypes ((array!46342 0))(
  ( (array!46343 (arr!22211 (Array (_ BitVec 32) ValueCell!7136)) (size!22632 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46342)

(declare-datatypes ((tuple2!10082 0))(
  ( (tuple2!10083 (_1!5051 (_ BitVec 64)) (_2!5051 V!25139)) )
))
(declare-datatypes ((List!15921 0))(
  ( (Nil!15918) (Cons!15917 (h!17046 tuple2!10082) (t!22278 List!15921)) )
))
(declare-datatypes ((ListLongMap!8919 0))(
  ( (ListLongMap!8920 (toList!4475 List!15921)) )
))
(declare-fun lt!374890 () ListLongMap!8919)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2482 (array!46340 array!46342 (_ BitVec 32) (_ BitVec 32) V!25139 V!25139 (_ BitVec 32) Int) ListLongMap!8919)

(assert (=> b!827418 (= lt!374890 (getCurrentListMapNoExtraKeys!2482 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25139)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!374889 () ListLongMap!8919)

(assert (=> b!827418 (= lt!374889 (getCurrentListMapNoExtraKeys!2482 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827419 () Bool)

(declare-fun e!460977 () Bool)

(assert (=> b!827419 (= e!460977 tp_is_empty!15103)))

(declare-fun b!827420 () Bool)

(declare-fun res!564066 () Bool)

(assert (=> b!827420 (=> (not res!564066) (not e!460981))))

(assert (=> b!827420 (= res!564066 (and (= (size!22632 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22631 _keys!976) (size!22632 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!564065 () Bool)

(assert (=> start!71270 (=> (not res!564065) (not e!460981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71270 (= res!564065 (validMask!0 mask!1312))))

(assert (=> start!71270 e!460981))

(assert (=> start!71270 tp_is_empty!15103))

(declare-fun array_inv!17681 (array!46340) Bool)

(assert (=> start!71270 (array_inv!17681 _keys!976)))

(assert (=> start!71270 true))

(declare-fun e!460979 () Bool)

(declare-fun array_inv!17682 (array!46342) Bool)

(assert (=> start!71270 (and (array_inv!17682 _values!788) e!460979)))

(assert (=> start!71270 tp!46941))

(declare-fun mapNonEmpty!24283 () Bool)

(declare-fun mapRes!24283 () Bool)

(declare-fun tp!46942 () Bool)

(assert (=> mapNonEmpty!24283 (= mapRes!24283 (and tp!46942 e!460977))))

(declare-fun mapValue!24283 () ValueCell!7136)

(declare-fun mapRest!24283 () (Array (_ BitVec 32) ValueCell!7136))

(declare-fun mapKey!24283 () (_ BitVec 32))

(assert (=> mapNonEmpty!24283 (= (arr!22211 _values!788) (store mapRest!24283 mapKey!24283 mapValue!24283))))

(declare-fun mapIsEmpty!24283 () Bool)

(assert (=> mapIsEmpty!24283 mapRes!24283))

(declare-fun b!827421 () Bool)

(declare-fun res!564067 () Bool)

(assert (=> b!827421 (=> (not res!564067) (not e!460981))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46340 (_ BitVec 32)) Bool)

(assert (=> b!827421 (= res!564067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827422 () Bool)

(assert (=> b!827422 (= e!460979 (and e!460978 mapRes!24283))))

(declare-fun condMapEmpty!24283 () Bool)

(declare-fun mapDefault!24283 () ValueCell!7136)

