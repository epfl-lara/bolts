; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70520 () Bool)

(assert start!70520)

(declare-fun b_free!12823 () Bool)

(declare-fun b_next!12823 () Bool)

(assert (=> start!70520 (= b_free!12823 (not b_next!12823))))

(declare-fun tp!45201 () Bool)

(declare-fun b_and!21671 () Bool)

(assert (=> start!70520 (= tp!45201 b_and!21671)))

(declare-fun mapNonEmpty!23398 () Bool)

(declare-fun mapRes!23398 () Bool)

(declare-fun tp!45202 () Bool)

(declare-fun e!454578 () Bool)

(assert (=> mapNonEmpty!23398 (= mapRes!23398 (and tp!45202 e!454578))))

(declare-datatypes ((V!24379 0))(
  ( (V!24380 (val!7314 Int)) )
))
(declare-datatypes ((ValueCell!6851 0))(
  ( (ValueCellFull!6851 (v!9739 V!24379)) (EmptyCell!6851) )
))
(declare-fun mapValue!23398 () ValueCell!6851)

(declare-fun mapRest!23398 () (Array (_ BitVec 32) ValueCell!6851))

(declare-datatypes ((array!45238 0))(
  ( (array!45239 (arr!21669 (Array (_ BitVec 32) ValueCell!6851)) (size!22090 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45238)

(declare-fun mapKey!23398 () (_ BitVec 32))

(assert (=> mapNonEmpty!23398 (= (arr!21669 _values!788) (store mapRest!23398 mapKey!23398 mapValue!23398))))

(declare-fun b!818709 () Bool)

(declare-fun e!454581 () Bool)

(declare-fun tp_is_empty!14533 () Bool)

(assert (=> b!818709 (= e!454581 tp_is_empty!14533)))

(declare-fun b!818710 () Bool)

(declare-fun res!558823 () Bool)

(declare-fun e!454577 () Bool)

(assert (=> b!818710 (=> (not res!558823) (not e!454577))))

(declare-datatypes ((array!45240 0))(
  ( (array!45241 (arr!21670 (Array (_ BitVec 32) (_ BitVec 64))) (size!22091 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45240)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!818710 (= res!558823 (and (= (size!22090 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22091 _keys!976) (size!22090 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!818711 () Bool)

(declare-fun res!558826 () Bool)

(assert (=> b!818711 (=> (not res!558826) (not e!454577))))

(declare-datatypes ((List!15492 0))(
  ( (Nil!15489) (Cons!15488 (h!16617 (_ BitVec 64)) (t!21829 List!15492)) )
))
(declare-fun arrayNoDuplicates!0 (array!45240 (_ BitVec 32) List!15492) Bool)

(assert (=> b!818711 (= res!558826 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15489))))

(declare-fun b!818712 () Bool)

(assert (=> b!818712 (= e!454578 tp_is_empty!14533)))

(declare-fun res!558824 () Bool)

(assert (=> start!70520 (=> (not res!558824) (not e!454577))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70520 (= res!558824 (validMask!0 mask!1312))))

(assert (=> start!70520 e!454577))

(assert (=> start!70520 tp_is_empty!14533))

(declare-fun array_inv!17293 (array!45240) Bool)

(assert (=> start!70520 (array_inv!17293 _keys!976)))

(assert (=> start!70520 true))

(declare-fun e!454576 () Bool)

(declare-fun array_inv!17294 (array!45238) Bool)

(assert (=> start!70520 (and (array_inv!17294 _values!788) e!454576)))

(assert (=> start!70520 tp!45201))

(declare-fun b!818713 () Bool)

(declare-fun e!454582 () Bool)

(assert (=> b!818713 (= e!454582 true)))

(declare-datatypes ((tuple2!9630 0))(
  ( (tuple2!9631 (_1!4825 (_ BitVec 64)) (_2!4825 V!24379)) )
))
(declare-datatypes ((List!15493 0))(
  ( (Nil!15490) (Cons!15489 (h!16618 tuple2!9630) (t!21830 List!15493)) )
))
(declare-datatypes ((ListLongMap!8467 0))(
  ( (ListLongMap!8468 (toList!4249 List!15493)) )
))
(declare-fun lt!367083 () ListLongMap!8467)

(declare-fun lt!367082 () tuple2!9630)

(declare-fun lt!367080 () tuple2!9630)

(declare-fun lt!367081 () ListLongMap!8467)

(declare-fun +!1793 (ListLongMap!8467 tuple2!9630) ListLongMap!8467)

(assert (=> b!818713 (= lt!367081 (+!1793 (+!1793 lt!367083 lt!367080) lt!367082))))

(declare-fun lt!367084 () ListLongMap!8467)

(declare-fun lt!367079 () ListLongMap!8467)

(assert (=> b!818713 (= (+!1793 lt!367084 lt!367082) (+!1793 lt!367079 lt!367082))))

(declare-fun zeroValueBefore!34 () V!24379)

(declare-fun zeroValueAfter!34 () V!24379)

(declare-datatypes ((Unit!27947 0))(
  ( (Unit!27948) )
))
(declare-fun lt!367078 () Unit!27947)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!172 (ListLongMap!8467 (_ BitVec 64) V!24379 V!24379) Unit!27947)

(assert (=> b!818713 (= lt!367078 (addSameAsAddTwiceSameKeyDiffValues!172 lt!367084 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!818713 (= lt!367082 (tuple2!9631 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!454579 () Bool)

(assert (=> b!818713 e!454579))

(declare-fun res!558825 () Bool)

(assert (=> b!818713 (=> (not res!558825) (not e!454579))))

(declare-fun lt!367087 () ListLongMap!8467)

(assert (=> b!818713 (= res!558825 (= lt!367087 lt!367079))))

(assert (=> b!818713 (= lt!367079 (+!1793 lt!367084 lt!367080))))

(assert (=> b!818713 (= lt!367080 (tuple2!9631 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun minValue!754 () V!24379)

(declare-fun defaultEntry!796 () Int)

(declare-fun lt!367086 () ListLongMap!8467)

(declare-fun getCurrentListMap!2407 (array!45240 array!45238 (_ BitVec 32) (_ BitVec 32) V!24379 V!24379 (_ BitVec 32) Int) ListLongMap!8467)

(assert (=> b!818713 (= lt!367086 (getCurrentListMap!2407 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818713 (= lt!367087 (getCurrentListMap!2407 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818714 () Bool)

(assert (=> b!818714 (= e!454576 (and e!454581 mapRes!23398))))

(declare-fun condMapEmpty!23398 () Bool)

(declare-fun mapDefault!23398 () ValueCell!6851)

