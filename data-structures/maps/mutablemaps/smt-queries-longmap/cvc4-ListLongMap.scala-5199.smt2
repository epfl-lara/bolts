; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70236 () Bool)

(assert start!70236)

(declare-fun b_free!12605 () Bool)

(declare-fun b_next!12605 () Bool)

(assert (=> start!70236 (= b_free!12605 (not b_next!12605))))

(declare-fun tp!44536 () Bool)

(declare-fun b_and!21411 () Bool)

(assert (=> start!70236 (= tp!44536 b_and!21411)))

(declare-fun res!556990 () Bool)

(declare-fun e!452301 () Bool)

(assert (=> start!70236 (=> (not res!556990) (not e!452301))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70236 (= res!556990 (validMask!0 mask!1312))))

(assert (=> start!70236 e!452301))

(declare-fun tp_is_empty!14315 () Bool)

(assert (=> start!70236 tp_is_empty!14315))

(declare-datatypes ((array!44818 0))(
  ( (array!44819 (arr!21463 (Array (_ BitVec 32) (_ BitVec 64))) (size!21884 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44818)

(declare-fun array_inv!17153 (array!44818) Bool)

(assert (=> start!70236 (array_inv!17153 _keys!976)))

(assert (=> start!70236 true))

(declare-datatypes ((V!24087 0))(
  ( (V!24088 (val!7205 Int)) )
))
(declare-datatypes ((ValueCell!6742 0))(
  ( (ValueCellFull!6742 (v!9628 V!24087)) (EmptyCell!6742) )
))
(declare-datatypes ((array!44820 0))(
  ( (array!44821 (arr!21464 (Array (_ BitVec 32) ValueCell!6742)) (size!21885 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44820)

(declare-fun e!452298 () Bool)

(declare-fun array_inv!17154 (array!44820) Bool)

(assert (=> start!70236 (and (array_inv!17154 _values!788) e!452298)))

(assert (=> start!70236 tp!44536))

(declare-fun b!815544 () Bool)

(declare-fun res!556988 () Bool)

(assert (=> b!815544 (=> (not res!556988) (not e!452301))))

(declare-datatypes ((List!15337 0))(
  ( (Nil!15334) (Cons!15333 (h!16462 (_ BitVec 64)) (t!21666 List!15337)) )
))
(declare-fun arrayNoDuplicates!0 (array!44818 (_ BitVec 32) List!15337) Bool)

(assert (=> b!815544 (= res!556988 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15334))))

(declare-fun b!815545 () Bool)

(declare-fun e!452300 () Bool)

(assert (=> b!815545 (= e!452301 (not e!452300))))

(declare-fun res!556987 () Bool)

(assert (=> b!815545 (=> res!556987 e!452300)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!815545 (= res!556987 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9466 0))(
  ( (tuple2!9467 (_1!4743 (_ BitVec 64)) (_2!4743 V!24087)) )
))
(declare-datatypes ((List!15338 0))(
  ( (Nil!15335) (Cons!15334 (h!16463 tuple2!9466) (t!21667 List!15338)) )
))
(declare-datatypes ((ListLongMap!8303 0))(
  ( (ListLongMap!8304 (toList!4167 List!15338)) )
))
(declare-fun lt!365151 () ListLongMap!8303)

(declare-fun lt!365154 () ListLongMap!8303)

(assert (=> b!815545 (= lt!365151 lt!365154)))

(declare-fun zeroValueBefore!34 () V!24087)

(declare-fun zeroValueAfter!34 () V!24087)

(declare-fun minValue!754 () V!24087)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27790 0))(
  ( (Unit!27791) )
))
(declare-fun lt!365152 () Unit!27790)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!332 (array!44818 array!44820 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24087 V!24087 V!24087 V!24087 (_ BitVec 32) Int) Unit!27790)

(assert (=> b!815545 (= lt!365152 (lemmaNoChangeToArrayThenSameMapNoExtras!332 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2216 (array!44818 array!44820 (_ BitVec 32) (_ BitVec 32) V!24087 V!24087 (_ BitVec 32) Int) ListLongMap!8303)

(assert (=> b!815545 (= lt!365154 (getCurrentListMapNoExtraKeys!2216 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815545 (= lt!365151 (getCurrentListMapNoExtraKeys!2216 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815546 () Bool)

(declare-fun e!452297 () Bool)

(assert (=> b!815546 (= e!452297 tp_is_empty!14315)))

(declare-fun b!815547 () Bool)

(declare-fun e!452299 () Bool)

(declare-fun mapRes!23059 () Bool)

(assert (=> b!815547 (= e!452298 (and e!452299 mapRes!23059))))

(declare-fun condMapEmpty!23059 () Bool)

(declare-fun mapDefault!23059 () ValueCell!6742)

