; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35852 () Bool)

(assert start!35852)

(declare-fun b!360046 () Bool)

(declare-fun e!220494 () Bool)

(assert (=> b!360046 (= e!220494 (not true))))

(declare-datatypes ((array!20115 0))(
  ( (array!20116 (arr!9548 (Array (_ BitVec 32) (_ BitVec 64))) (size!9900 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20115)

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!20115 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360046 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!12039 0))(
  ( (V!12040 (val!4193 Int)) )
))
(declare-fun minValue!1150 () V!12039)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!12039)

(declare-datatypes ((Unit!11069 0))(
  ( (Unit!11070) )
))
(declare-fun lt!166393 () Unit!11069)

(declare-datatypes ((ValueCell!3805 0))(
  ( (ValueCellFull!3805 (v!6383 V!12039)) (EmptyCell!3805) )
))
(declare-datatypes ((array!20117 0))(
  ( (array!20118 (arr!9549 (Array (_ BitVec 32) ValueCell!3805)) (size!9901 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20117)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!51 (array!20115 array!20117 (_ BitVec 32) (_ BitVec 32) V!12039 V!12039 (_ BitVec 64) (_ BitVec 32)) Unit!11069)

(assert (=> b!360046 (= lt!166393 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!51 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!360047 () Bool)

(declare-fun e!220495 () Bool)

(declare-fun tp_is_empty!8297 () Bool)

(assert (=> b!360047 (= e!220495 tp_is_empty!8297)))

(declare-fun b!360048 () Bool)

(declare-fun res!200274 () Bool)

(assert (=> b!360048 (=> (not res!200274) (not e!220494))))

(assert (=> b!360048 (= res!200274 (not (= (select (arr!9548 _keys!1456) from!1805) k!1077)))))

(declare-fun res!200277 () Bool)

(assert (=> start!35852 (=> (not res!200277) (not e!220494))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35852 (= res!200277 (validMask!0 mask!1842))))

(assert (=> start!35852 e!220494))

(assert (=> start!35852 tp_is_empty!8297))

(assert (=> start!35852 true))

(declare-fun array_inv!7024 (array!20115) Bool)

(assert (=> start!35852 (array_inv!7024 _keys!1456)))

(declare-fun e!220492 () Bool)

(declare-fun array_inv!7025 (array!20117) Bool)

(assert (=> start!35852 (and (array_inv!7025 _values!1208) e!220492)))

(declare-fun b!360049 () Bool)

(declare-fun res!200276 () Bool)

(assert (=> b!360049 (=> (not res!200276) (not e!220494))))

(assert (=> b!360049 (= res!200276 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!360050 () Bool)

(declare-fun res!200271 () Bool)

(assert (=> b!360050 (=> (not res!200271) (not e!220494))))

(declare-datatypes ((List!5512 0))(
  ( (Nil!5509) (Cons!5508 (h!6364 (_ BitVec 64)) (t!10670 List!5512)) )
))
(declare-fun arrayNoDuplicates!0 (array!20115 (_ BitVec 32) List!5512) Bool)

(assert (=> b!360050 (= res!200271 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5509))))

(declare-fun b!360051 () Bool)

(declare-fun res!200278 () Bool)

(assert (=> b!360051 (=> (not res!200278) (not e!220494))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360051 (= res!200278 (validKeyInArray!0 k!1077))))

(declare-fun b!360052 () Bool)

(declare-fun res!200272 () Bool)

(assert (=> b!360052 (=> (not res!200272) (not e!220494))))

(assert (=> b!360052 (= res!200272 (and (= (size!9901 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9900 _keys!1456) (size!9901 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13953 () Bool)

(declare-fun mapRes!13953 () Bool)

(declare-fun tp!28020 () Bool)

(assert (=> mapNonEmpty!13953 (= mapRes!13953 (and tp!28020 e!220495))))

(declare-fun mapKey!13953 () (_ BitVec 32))

(declare-fun mapValue!13953 () ValueCell!3805)

(declare-fun mapRest!13953 () (Array (_ BitVec 32) ValueCell!3805))

(assert (=> mapNonEmpty!13953 (= (arr!9549 _values!1208) (store mapRest!13953 mapKey!13953 mapValue!13953))))

(declare-fun b!360053 () Bool)

(declare-fun e!220493 () Bool)

(assert (=> b!360053 (= e!220492 (and e!220493 mapRes!13953))))

(declare-fun condMapEmpty!13953 () Bool)

(declare-fun mapDefault!13953 () ValueCell!3805)

