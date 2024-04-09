; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35584 () Bool)

(assert start!35584)

(declare-fun mapIsEmpty!13551 () Bool)

(declare-fun mapRes!13551 () Bool)

(assert (=> mapIsEmpty!13551 mapRes!13551))

(declare-fun b!356488 () Bool)

(declare-fun e!218403 () Bool)

(declare-fun tp_is_empty!8029 () Bool)

(assert (=> b!356488 (= e!218403 tp_is_empty!8029)))

(declare-fun b!356489 () Bool)

(declare-fun res!197919 () Bool)

(declare-fun e!218401 () Bool)

(assert (=> b!356489 (=> (not res!197919) (not e!218401))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19595 0))(
  ( (array!19596 (arr!9288 (Array (_ BitVec 32) (_ BitVec 64))) (size!9640 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19595)

(assert (=> b!356489 (= res!197919 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9640 _keys!1456))))))

(declare-fun res!197921 () Bool)

(assert (=> start!35584 (=> (not res!197921) (not e!218401))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35584 (= res!197921 (validMask!0 mask!1842))))

(assert (=> start!35584 e!218401))

(assert (=> start!35584 tp_is_empty!8029))

(assert (=> start!35584 true))

(declare-fun array_inv!6838 (array!19595) Bool)

(assert (=> start!35584 (array_inv!6838 _keys!1456)))

(declare-datatypes ((V!11683 0))(
  ( (V!11684 (val!4059 Int)) )
))
(declare-datatypes ((ValueCell!3671 0))(
  ( (ValueCellFull!3671 (v!6249 V!11683)) (EmptyCell!3671) )
))
(declare-datatypes ((array!19597 0))(
  ( (array!19598 (arr!9289 (Array (_ BitVec 32) ValueCell!3671)) (size!9641 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19597)

(declare-fun e!218402 () Bool)

(declare-fun array_inv!6839 (array!19597) Bool)

(assert (=> start!35584 (and (array_inv!6839 _values!1208) e!218402)))

(declare-fun b!356490 () Bool)

(declare-fun res!197926 () Bool)

(assert (=> b!356490 (=> (not res!197926) (not e!218401))))

(declare-datatypes ((List!5395 0))(
  ( (Nil!5392) (Cons!5391 (h!6247 (_ BitVec 64)) (t!10553 List!5395)) )
))
(declare-fun arrayNoDuplicates!0 (array!19595 (_ BitVec 32) List!5395) Bool)

(assert (=> b!356490 (= res!197926 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5392))))

(declare-fun mapNonEmpty!13551 () Bool)

(declare-fun tp!27528 () Bool)

(assert (=> mapNonEmpty!13551 (= mapRes!13551 (and tp!27528 e!218403))))

(declare-fun mapValue!13551 () ValueCell!3671)

(declare-fun mapKey!13551 () (_ BitVec 32))

(declare-fun mapRest!13551 () (Array (_ BitVec 32) ValueCell!3671))

(assert (=> mapNonEmpty!13551 (= (arr!9289 _values!1208) (store mapRest!13551 mapKey!13551 mapValue!13551))))

(declare-fun b!356491 () Bool)

(declare-fun res!197925 () Bool)

(assert (=> b!356491 (=> (not res!197925) (not e!218401))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356491 (= res!197925 (validKeyInArray!0 k!1077))))

(declare-fun b!356492 () Bool)

(declare-fun res!197923 () Bool)

(assert (=> b!356492 (=> (not res!197923) (not e!218401))))

(declare-fun arrayContainsKey!0 (array!19595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356492 (= res!197923 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!356493 () Bool)

(assert (=> b!356493 (= e!218401 (not true))))

(assert (=> b!356493 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11683)

(declare-fun minValue!1150 () V!11683)

(declare-datatypes ((Unit!10979 0))(
  ( (Unit!10980) )
))
(declare-fun lt!165919 () Unit!10979)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!10 (array!19595 array!19597 (_ BitVec 32) (_ BitVec 32) V!11683 V!11683 (_ BitVec 64) (_ BitVec 32)) Unit!10979)

(assert (=> b!356493 (= lt!165919 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!10 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!356494 () Bool)

(declare-fun res!197922 () Bool)

(assert (=> b!356494 (=> (not res!197922) (not e!218401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19595 (_ BitVec 32)) Bool)

(assert (=> b!356494 (= res!197922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!356495 () Bool)

(declare-fun res!197920 () Bool)

(assert (=> b!356495 (=> (not res!197920) (not e!218401))))

(assert (=> b!356495 (= res!197920 (and (= (size!9641 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9640 _keys!1456) (size!9641 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!356496 () Bool)

(declare-fun e!218405 () Bool)

(assert (=> b!356496 (= e!218402 (and e!218405 mapRes!13551))))

(declare-fun condMapEmpty!13551 () Bool)

(declare-fun mapDefault!13551 () ValueCell!3671)

