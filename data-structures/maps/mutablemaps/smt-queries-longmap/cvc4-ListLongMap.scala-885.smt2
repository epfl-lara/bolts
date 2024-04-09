; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20422 () Bool)

(assert start!20422)

(declare-fun b_free!5069 () Bool)

(declare-fun b_next!5069 () Bool)

(assert (=> start!20422 (= b_free!5069 (not b_next!5069))))

(declare-fun tp!18239 () Bool)

(declare-fun b_and!11833 () Bool)

(assert (=> start!20422 (= tp!18239 b_and!11833)))

(declare-fun b!201826 () Bool)

(declare-fun res!96577 () Bool)

(declare-fun e!132257 () Bool)

(assert (=> b!201826 (=> (not res!96577) (not e!132257))))

(declare-datatypes ((array!9078 0))(
  ( (array!9079 (arr!4289 (Array (_ BitVec 32) (_ BitVec 64))) (size!4614 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9078)

(declare-datatypes ((List!2730 0))(
  ( (Nil!2727) (Cons!2726 (h!3368 (_ BitVec 64)) (t!7669 List!2730)) )
))
(declare-fun arrayNoDuplicates!0 (array!9078 (_ BitVec 32) List!2730) Bool)

(assert (=> b!201826 (= res!96577 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2727))))

(declare-fun mapNonEmpty!8456 () Bool)

(declare-fun mapRes!8456 () Bool)

(declare-fun tp!18238 () Bool)

(declare-fun e!132256 () Bool)

(assert (=> mapNonEmpty!8456 (= mapRes!8456 (and tp!18238 e!132256))))

(declare-datatypes ((V!6213 0))(
  ( (V!6214 (val!2507 Int)) )
))
(declare-datatypes ((ValueCell!2119 0))(
  ( (ValueCellFull!2119 (v!4473 V!6213)) (EmptyCell!2119) )
))
(declare-datatypes ((array!9080 0))(
  ( (array!9081 (arr!4290 (Array (_ BitVec 32) ValueCell!2119)) (size!4615 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9080)

(declare-fun mapRest!8456 () (Array (_ BitVec 32) ValueCell!2119))

(declare-fun mapValue!8456 () ValueCell!2119)

(declare-fun mapKey!8456 () (_ BitVec 32))

(assert (=> mapNonEmpty!8456 (= (arr!4290 _values!649) (store mapRest!8456 mapKey!8456 mapValue!8456))))

(declare-fun b!201827 () Bool)

(declare-fun res!96576 () Bool)

(assert (=> b!201827 (=> (not res!96576) (not e!132257))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201827 (= res!96576 (validKeyInArray!0 k!843))))

(declare-fun b!201828 () Bool)

(declare-fun tp_is_empty!4925 () Bool)

(assert (=> b!201828 (= e!132256 tp_is_empty!4925)))

(declare-fun res!96575 () Bool)

(assert (=> start!20422 (=> (not res!96575) (not e!132257))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20422 (= res!96575 (validMask!0 mask!1149))))

(assert (=> start!20422 e!132257))

(declare-fun e!132259 () Bool)

(declare-fun array_inv!2821 (array!9080) Bool)

(assert (=> start!20422 (and (array_inv!2821 _values!649) e!132259)))

(assert (=> start!20422 true))

(assert (=> start!20422 tp_is_empty!4925))

(declare-fun array_inv!2822 (array!9078) Bool)

(assert (=> start!20422 (array_inv!2822 _keys!825)))

(assert (=> start!20422 tp!18239))

(declare-fun b!201829 () Bool)

(declare-fun e!132255 () Bool)

(assert (=> b!201829 (= e!132259 (and e!132255 mapRes!8456))))

(declare-fun condMapEmpty!8456 () Bool)

(declare-fun mapDefault!8456 () ValueCell!2119)

