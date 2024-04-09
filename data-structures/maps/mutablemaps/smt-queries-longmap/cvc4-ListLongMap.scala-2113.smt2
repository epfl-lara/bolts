; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35858 () Bool)

(assert start!35858)

(declare-fun b!360145 () Bool)

(declare-fun e!220540 () Bool)

(declare-fun tp_is_empty!8303 () Bool)

(assert (=> b!360145 (= e!220540 tp_is_empty!8303)))

(declare-fun b!360146 () Bool)

(declare-fun res!200343 () Bool)

(declare-fun e!220541 () Bool)

(assert (=> b!360146 (=> (not res!200343) (not e!220541))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360146 (= res!200343 (validKeyInArray!0 k!1077))))

(declare-fun b!360147 () Bool)

(declare-fun res!200349 () Bool)

(assert (=> b!360147 (=> (not res!200349) (not e!220541))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!20127 0))(
  ( (array!20128 (arr!9554 (Array (_ BitVec 32) (_ BitVec 64))) (size!9906 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20127)

(declare-datatypes ((V!12047 0))(
  ( (V!12048 (val!4196 Int)) )
))
(declare-datatypes ((ValueCell!3808 0))(
  ( (ValueCellFull!3808 (v!6386 V!12047)) (EmptyCell!3808) )
))
(declare-datatypes ((array!20129 0))(
  ( (array!20130 (arr!9555 (Array (_ BitVec 32) ValueCell!3808)) (size!9907 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20129)

(assert (=> b!360147 (= res!200349 (and (= (size!9907 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9906 _keys!1456) (size!9907 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!360148 () Bool)

(declare-fun res!200344 () Bool)

(assert (=> b!360148 (=> (not res!200344) (not e!220541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20127 (_ BitVec 32)) Bool)

(assert (=> b!360148 (= res!200344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!360149 () Bool)

(declare-fun res!200350 () Bool)

(assert (=> b!360149 (=> (not res!200350) (not e!220541))))

(declare-datatypes ((List!5515 0))(
  ( (Nil!5512) (Cons!5511 (h!6367 (_ BitVec 64)) (t!10673 List!5515)) )
))
(declare-fun arrayNoDuplicates!0 (array!20127 (_ BitVec 32) List!5515) Bool)

(assert (=> b!360149 (= res!200350 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5512))))

(declare-fun mapIsEmpty!13962 () Bool)

(declare-fun mapRes!13962 () Bool)

(assert (=> mapIsEmpty!13962 mapRes!13962))

(declare-fun b!360150 () Bool)

(declare-fun res!200347 () Bool)

(assert (=> b!360150 (=> (not res!200347) (not e!220541))))

(declare-fun from!1805 () (_ BitVec 32))

(assert (=> b!360150 (= res!200347 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9906 _keys!1456))))))

(declare-fun mapNonEmpty!13962 () Bool)

(declare-fun tp!28029 () Bool)

(assert (=> mapNonEmpty!13962 (= mapRes!13962 (and tp!28029 e!220540))))

(declare-fun mapValue!13962 () ValueCell!3808)

(declare-fun mapRest!13962 () (Array (_ BitVec 32) ValueCell!3808))

(declare-fun mapKey!13962 () (_ BitVec 32))

(assert (=> mapNonEmpty!13962 (= (arr!9555 _values!1208) (store mapRest!13962 mapKey!13962 mapValue!13962))))

(declare-fun b!360152 () Bool)

(declare-fun res!200346 () Bool)

(assert (=> b!360152 (=> (not res!200346) (not e!220541))))

(assert (=> b!360152 (= res!200346 (not (= (select (arr!9554 _keys!1456) from!1805) k!1077)))))

(declare-fun b!360153 () Bool)

(assert (=> b!360153 (= e!220541 (not true))))

(declare-fun arrayContainsKey!0 (array!20127 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360153 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!12047)

(declare-datatypes ((Unit!11075 0))(
  ( (Unit!11076) )
))
(declare-fun lt!166402 () Unit!11075)

(declare-fun zeroValue!1150 () V!12047)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!54 (array!20127 array!20129 (_ BitVec 32) (_ BitVec 32) V!12047 V!12047 (_ BitVec 64) (_ BitVec 32)) Unit!11075)

(assert (=> b!360153 (= lt!166402 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!54 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!360154 () Bool)

(declare-fun e!220538 () Bool)

(assert (=> b!360154 (= e!220538 tp_is_empty!8303)))

(declare-fun b!360155 () Bool)

(declare-fun e!220539 () Bool)

(assert (=> b!360155 (= e!220539 (and e!220538 mapRes!13962))))

(declare-fun condMapEmpty!13962 () Bool)

(declare-fun mapDefault!13962 () ValueCell!3808)

