; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70238 () Bool)

(assert start!70238)

(declare-fun b_free!12607 () Bool)

(declare-fun b_next!12607 () Bool)

(assert (=> start!70238 (= b_free!12607 (not b_next!12607))))

(declare-fun tp!44541 () Bool)

(declare-fun b_and!21413 () Bool)

(assert (=> start!70238 (= tp!44541 b_and!21413)))

(declare-fun res!557003 () Bool)

(declare-fun e!452320 () Bool)

(assert (=> start!70238 (=> (not res!557003) (not e!452320))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70238 (= res!557003 (validMask!0 mask!1312))))

(assert (=> start!70238 e!452320))

(declare-fun tp_is_empty!14317 () Bool)

(assert (=> start!70238 tp_is_empty!14317))

(declare-datatypes ((array!44822 0))(
  ( (array!44823 (arr!21465 (Array (_ BitVec 32) (_ BitVec 64))) (size!21886 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44822)

(declare-fun array_inv!17155 (array!44822) Bool)

(assert (=> start!70238 (array_inv!17155 _keys!976)))

(assert (=> start!70238 true))

(declare-datatypes ((V!24091 0))(
  ( (V!24092 (val!7206 Int)) )
))
(declare-datatypes ((ValueCell!6743 0))(
  ( (ValueCellFull!6743 (v!9629 V!24091)) (EmptyCell!6743) )
))
(declare-datatypes ((array!44824 0))(
  ( (array!44825 (arr!21466 (Array (_ BitVec 32) ValueCell!6743)) (size!21887 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44824)

(declare-fun e!452317 () Bool)

(declare-fun array_inv!17156 (array!44824) Bool)

(assert (=> start!70238 (and (array_inv!17156 _values!788) e!452317)))

(assert (=> start!70238 tp!44541))

(declare-fun b!815568 () Bool)

(declare-fun e!452316 () Bool)

(assert (=> b!815568 (= e!452316 tp_is_empty!14317)))

(declare-fun b!815569 () Bool)

(declare-fun e!452318 () Bool)

(assert (=> b!815569 (= e!452318 tp_is_empty!14317)))

(declare-fun b!815570 () Bool)

(declare-fun res!557005 () Bool)

(assert (=> b!815570 (=> (not res!557005) (not e!452320))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!815570 (= res!557005 (and (= (size!21887 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21886 _keys!976) (size!21887 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815571 () Bool)

(declare-fun res!557002 () Bool)

(assert (=> b!815571 (=> (not res!557002) (not e!452320))))

(declare-datatypes ((List!15339 0))(
  ( (Nil!15336) (Cons!15335 (h!16464 (_ BitVec 64)) (t!21668 List!15339)) )
))
(declare-fun arrayNoDuplicates!0 (array!44822 (_ BitVec 32) List!15339) Bool)

(assert (=> b!815571 (= res!557002 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15336))))

(declare-fun b!815572 () Bool)

(declare-fun e!452319 () Bool)

(assert (=> b!815572 (= e!452320 (not e!452319))))

(declare-fun res!557004 () Bool)

(assert (=> b!815572 (=> res!557004 e!452319)))

(assert (=> b!815572 (= res!557004 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9468 0))(
  ( (tuple2!9469 (_1!4744 (_ BitVec 64)) (_2!4744 V!24091)) )
))
(declare-datatypes ((List!15340 0))(
  ( (Nil!15337) (Cons!15336 (h!16465 tuple2!9468) (t!21669 List!15340)) )
))
(declare-datatypes ((ListLongMap!8305 0))(
  ( (ListLongMap!8306 (toList!4168 List!15340)) )
))
(declare-fun lt!365170 () ListLongMap!8305)

(declare-fun lt!365169 () ListLongMap!8305)

(assert (=> b!815572 (= lt!365170 lt!365169)))

(declare-fun zeroValueBefore!34 () V!24091)

(declare-fun zeroValueAfter!34 () V!24091)

(declare-fun minValue!754 () V!24091)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27792 0))(
  ( (Unit!27793) )
))
(declare-fun lt!365166 () Unit!27792)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!333 (array!44822 array!44824 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24091 V!24091 V!24091 V!24091 (_ BitVec 32) Int) Unit!27792)

(assert (=> b!815572 (= lt!365166 (lemmaNoChangeToArrayThenSameMapNoExtras!333 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2217 (array!44822 array!44824 (_ BitVec 32) (_ BitVec 32) V!24091 V!24091 (_ BitVec 32) Int) ListLongMap!8305)

(assert (=> b!815572 (= lt!365169 (getCurrentListMapNoExtraKeys!2217 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815572 (= lt!365170 (getCurrentListMapNoExtraKeys!2217 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815573 () Bool)

(declare-fun res!557001 () Bool)

(assert (=> b!815573 (=> (not res!557001) (not e!452320))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44822 (_ BitVec 32)) Bool)

(assert (=> b!815573 (= res!557001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!815574 () Bool)

(declare-fun mapRes!23062 () Bool)

(assert (=> b!815574 (= e!452317 (and e!452318 mapRes!23062))))

(declare-fun condMapEmpty!23062 () Bool)

(declare-fun mapDefault!23062 () ValueCell!6743)

