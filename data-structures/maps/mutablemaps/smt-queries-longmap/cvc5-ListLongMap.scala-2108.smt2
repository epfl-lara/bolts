; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35824 () Bool)

(assert start!35824)

(declare-fun b!359584 () Bool)

(declare-fun res!199942 () Bool)

(declare-fun e!220285 () Bool)

(assert (=> b!359584 (=> (not res!199942) (not e!220285))))

(declare-datatypes ((array!20059 0))(
  ( (array!20060 (arr!9520 (Array (_ BitVec 32) (_ BitVec 64))) (size!9872 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20059)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20059 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!359584 (= res!199942 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun res!199938 () Bool)

(assert (=> start!35824 (=> (not res!199938) (not e!220285))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35824 (= res!199938 (validMask!0 mask!1842))))

(assert (=> start!35824 e!220285))

(declare-fun tp_is_empty!8269 () Bool)

(assert (=> start!35824 tp_is_empty!8269))

(assert (=> start!35824 true))

(declare-fun array_inv!7010 (array!20059) Bool)

(assert (=> start!35824 (array_inv!7010 _keys!1456)))

(declare-datatypes ((V!12003 0))(
  ( (V!12004 (val!4179 Int)) )
))
(declare-datatypes ((ValueCell!3791 0))(
  ( (ValueCellFull!3791 (v!6369 V!12003)) (EmptyCell!3791) )
))
(declare-datatypes ((array!20061 0))(
  ( (array!20062 (arr!9521 (Array (_ BitVec 32) ValueCell!3791)) (size!9873 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20061)

(declare-fun e!220283 () Bool)

(declare-fun array_inv!7011 (array!20061) Bool)

(assert (=> start!35824 (and (array_inv!7011 _values!1208) e!220283)))

(declare-fun b!359585 () Bool)

(declare-fun res!199936 () Bool)

(assert (=> b!359585 (=> (not res!199936) (not e!220285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20059 (_ BitVec 32)) Bool)

(assert (=> b!359585 (= res!199936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359586 () Bool)

(declare-fun res!199937 () Bool)

(assert (=> b!359586 (=> (not res!199937) (not e!220285))))

(declare-datatypes ((List!5502 0))(
  ( (Nil!5499) (Cons!5498 (h!6354 (_ BitVec 64)) (t!10660 List!5502)) )
))
(declare-fun arrayNoDuplicates!0 (array!20059 (_ BitVec 32) List!5502) Bool)

(assert (=> b!359586 (= res!199937 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5499))))

(declare-fun b!359587 () Bool)

(assert (=> b!359587 (= e!220285 (not true))))

(assert (=> b!359587 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!12003)

(declare-datatypes ((Unit!11053 0))(
  ( (Unit!11054) )
))
(declare-fun lt!166351 () Unit!11053)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!12003)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!43 (array!20059 array!20061 (_ BitVec 32) (_ BitVec 32) V!12003 V!12003 (_ BitVec 64) (_ BitVec 32)) Unit!11053)

(assert (=> b!359587 (= lt!166351 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!43 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!359588 () Bool)

(declare-fun e!220284 () Bool)

(assert (=> b!359588 (= e!220284 tp_is_empty!8269)))

(declare-fun mapIsEmpty!13911 () Bool)

(declare-fun mapRes!13911 () Bool)

(assert (=> mapIsEmpty!13911 mapRes!13911))

(declare-fun b!359589 () Bool)

(declare-fun e!220286 () Bool)

(assert (=> b!359589 (= e!220286 tp_is_empty!8269)))

(declare-fun mapNonEmpty!13911 () Bool)

(declare-fun tp!27978 () Bool)

(assert (=> mapNonEmpty!13911 (= mapRes!13911 (and tp!27978 e!220286))))

(declare-fun mapRest!13911 () (Array (_ BitVec 32) ValueCell!3791))

(declare-fun mapValue!13911 () ValueCell!3791)

(declare-fun mapKey!13911 () (_ BitVec 32))

(assert (=> mapNonEmpty!13911 (= (arr!9521 _values!1208) (store mapRest!13911 mapKey!13911 mapValue!13911))))

(declare-fun b!359590 () Bool)

(declare-fun res!199935 () Bool)

(assert (=> b!359590 (=> (not res!199935) (not e!220285))))

(assert (=> b!359590 (= res!199935 (not (= (select (arr!9520 _keys!1456) from!1805) k!1077)))))

(declare-fun b!359591 () Bool)

(declare-fun res!199940 () Bool)

(assert (=> b!359591 (=> (not res!199940) (not e!220285))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!359591 (= res!199940 (validKeyInArray!0 k!1077))))

(declare-fun b!359592 () Bool)

(declare-fun res!199941 () Bool)

(assert (=> b!359592 (=> (not res!199941) (not e!220285))))

(assert (=> b!359592 (= res!199941 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9872 _keys!1456))))))

(declare-fun b!359593 () Bool)

(declare-fun res!199939 () Bool)

(assert (=> b!359593 (=> (not res!199939) (not e!220285))))

(assert (=> b!359593 (= res!199939 (and (= (size!9873 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9872 _keys!1456) (size!9873 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359594 () Bool)

(assert (=> b!359594 (= e!220283 (and e!220284 mapRes!13911))))

(declare-fun condMapEmpty!13911 () Bool)

(declare-fun mapDefault!13911 () ValueCell!3791)

