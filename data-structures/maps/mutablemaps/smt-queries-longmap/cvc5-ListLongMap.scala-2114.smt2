; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35860 () Bool)

(assert start!35860)

(declare-fun b!360178 () Bool)

(declare-fun res!200371 () Bool)

(declare-fun e!220554 () Bool)

(assert (=> b!360178 (=> (not res!200371) (not e!220554))))

(declare-datatypes ((array!20131 0))(
  ( (array!20132 (arr!9556 (Array (_ BitVec 32) (_ BitVec 64))) (size!9908 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20131)

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun from!1805 () (_ BitVec 32))

(assert (=> b!360178 (= res!200371 (not (= (select (arr!9556 _keys!1456) from!1805) k!1077)))))

(declare-fun b!360179 () Bool)

(assert (=> b!360179 (= e!220554 (not true))))

(declare-fun arrayContainsKey!0 (array!20131 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360179 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!12051 0))(
  ( (V!12052 (val!4197 Int)) )
))
(declare-fun minValue!1150 () V!12051)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((ValueCell!3809 0))(
  ( (ValueCellFull!3809 (v!6387 V!12051)) (EmptyCell!3809) )
))
(declare-datatypes ((array!20133 0))(
  ( (array!20134 (arr!9557 (Array (_ BitVec 32) ValueCell!3809)) (size!9909 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20133)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!12051)

(declare-datatypes ((Unit!11077 0))(
  ( (Unit!11078) )
))
(declare-fun lt!166405 () Unit!11077)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!55 (array!20131 array!20133 (_ BitVec 32) (_ BitVec 32) V!12051 V!12051 (_ BitVec 64) (_ BitVec 32)) Unit!11077)

(assert (=> b!360179 (= lt!166405 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!55 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!360180 () Bool)

(declare-fun e!220553 () Bool)

(declare-fun tp_is_empty!8305 () Bool)

(assert (=> b!360180 (= e!220553 tp_is_empty!8305)))

(declare-fun b!360181 () Bool)

(declare-fun res!200374 () Bool)

(assert (=> b!360181 (=> (not res!200374) (not e!220554))))

(assert (=> b!360181 (= res!200374 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!360182 () Bool)

(declare-fun res!200369 () Bool)

(assert (=> b!360182 (=> (not res!200369) (not e!220554))))

(assert (=> b!360182 (= res!200369 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9908 _keys!1456))))))

(declare-fun b!360183 () Bool)

(declare-fun res!200370 () Bool)

(assert (=> b!360183 (=> (not res!200370) (not e!220554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20131 (_ BitVec 32)) Bool)

(assert (=> b!360183 (= res!200370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!360184 () Bool)

(declare-fun res!200368 () Bool)

(assert (=> b!360184 (=> (not res!200368) (not e!220554))))

(assert (=> b!360184 (= res!200368 (and (= (size!9909 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9908 _keys!1456) (size!9909 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13965 () Bool)

(declare-fun mapRes!13965 () Bool)

(declare-fun tp!28032 () Bool)

(assert (=> mapNonEmpty!13965 (= mapRes!13965 (and tp!28032 e!220553))))

(declare-fun mapKey!13965 () (_ BitVec 32))

(declare-fun mapRest!13965 () (Array (_ BitVec 32) ValueCell!3809))

(declare-fun mapValue!13965 () ValueCell!3809)

(assert (=> mapNonEmpty!13965 (= (arr!9557 _values!1208) (store mapRest!13965 mapKey!13965 mapValue!13965))))

(declare-fun b!360185 () Bool)

(declare-fun res!200372 () Bool)

(assert (=> b!360185 (=> (not res!200372) (not e!220554))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360185 (= res!200372 (validKeyInArray!0 k!1077))))

(declare-fun mapIsEmpty!13965 () Bool)

(assert (=> mapIsEmpty!13965 mapRes!13965))

(declare-fun b!360187 () Bool)

(declare-fun e!220552 () Bool)

(assert (=> b!360187 (= e!220552 tp_is_empty!8305)))

(declare-fun b!360188 () Bool)

(declare-fun e!220556 () Bool)

(assert (=> b!360188 (= e!220556 (and e!220552 mapRes!13965))))

(declare-fun condMapEmpty!13965 () Bool)

(declare-fun mapDefault!13965 () ValueCell!3809)

