; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35620 () Bool)

(assert start!35620)

(declare-fun b_free!7867 () Bool)

(declare-fun b_next!7867 () Bool)

(assert (=> start!35620 (= b_free!7867 (not b_next!7867))))

(declare-fun tp!27584 () Bool)

(declare-fun b_and!15127 () Bool)

(assert (=> start!35620 (= tp!27584 b_and!15127)))

(declare-fun b!357084 () Bool)

(declare-fun res!198358 () Bool)

(declare-fun e!218678 () Bool)

(assert (=> b!357084 (=> (not res!198358) (not e!218678))))

(declare-datatypes ((array!19665 0))(
  ( (array!19666 (arr!9323 (Array (_ BitVec 32) (_ BitVec 64))) (size!9675 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19665)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19665 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357084 (= res!198358 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!357085 () Bool)

(declare-fun e!218676 () Bool)

(declare-fun tp_is_empty!8065 () Bool)

(assert (=> b!357085 (= e!218676 tp_is_empty!8065)))

(declare-fun b!357086 () Bool)

(declare-fun res!198361 () Bool)

(assert (=> b!357086 (=> (not res!198361) (not e!218678))))

(assert (=> b!357086 (= res!198361 (not (= (select (arr!9323 _keys!1456) from!1805) k!1077)))))

(declare-fun b!357087 () Bool)

(declare-fun e!218675 () Bool)

(assert (=> b!357087 (= e!218678 (not e!218675))))

(declare-fun res!198354 () Bool)

(assert (=> b!357087 (=> res!198354 e!218675)))

(assert (=> b!357087 (= res!198354 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9675 _keys!1456))))))

(assert (=> b!357087 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!11731 0))(
  ( (V!11732 (val!4077 Int)) )
))
(declare-fun minValue!1150 () V!11731)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((ValueCell!3689 0))(
  ( (ValueCellFull!3689 (v!6267 V!11731)) (EmptyCell!3689) )
))
(declare-datatypes ((array!19667 0))(
  ( (array!19668 (arr!9324 (Array (_ BitVec 32) ValueCell!3689)) (size!9676 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19667)

(declare-datatypes ((Unit!11003 0))(
  ( (Unit!11004) )
))
(declare-fun lt!165976 () Unit!11003)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11731)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!22 (array!19665 array!19667 (_ BitVec 32) (_ BitVec 32) V!11731 V!11731 (_ BitVec 64) (_ BitVec 32)) Unit!11003)

(assert (=> b!357087 (= lt!165976 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!22 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!357088 () Bool)

(declare-fun e!218674 () Bool)

(assert (=> b!357088 (= e!218674 tp_is_empty!8065)))

(declare-fun b!357089 () Bool)

(declare-fun res!198356 () Bool)

(assert (=> b!357089 (=> (not res!198356) (not e!218678))))

(assert (=> b!357089 (= res!198356 (and (= (size!9676 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9675 _keys!1456) (size!9676 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!357090 () Bool)

(declare-fun res!198357 () Bool)

(assert (=> b!357090 (=> (not res!198357) (not e!218678))))

(declare-datatypes ((List!5409 0))(
  ( (Nil!5406) (Cons!5405 (h!6261 (_ BitVec 64)) (t!10567 List!5409)) )
))
(declare-fun arrayNoDuplicates!0 (array!19665 (_ BitVec 32) List!5409) Bool)

(assert (=> b!357090 (= res!198357 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5406))))

(declare-fun mapIsEmpty!13605 () Bool)

(declare-fun mapRes!13605 () Bool)

(assert (=> mapIsEmpty!13605 mapRes!13605))

(declare-fun b!357091 () Bool)

(declare-fun e!218677 () Bool)

(assert (=> b!357091 (= e!218677 (and e!218674 mapRes!13605))))

(declare-fun condMapEmpty!13605 () Bool)

(declare-fun mapDefault!13605 () ValueCell!3689)

