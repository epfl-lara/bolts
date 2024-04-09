; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35642 () Bool)

(assert start!35642)

(declare-fun b_free!7889 () Bool)

(declare-fun b_next!7889 () Bool)

(assert (=> start!35642 (= b_free!7889 (not b_next!7889))))

(declare-fun tp!27650 () Bool)

(declare-fun b_and!15149 () Bool)

(assert (=> start!35642 (= tp!27650 b_and!15149)))

(declare-fun res!198653 () Bool)

(declare-fun e!218872 () Bool)

(assert (=> start!35642 (=> (not res!198653) (not e!218872))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35642 (= res!198653 (validMask!0 mask!1842))))

(assert (=> start!35642 e!218872))

(declare-fun tp_is_empty!8087 () Bool)

(assert (=> start!35642 tp_is_empty!8087))

(assert (=> start!35642 true))

(assert (=> start!35642 tp!27650))

(declare-datatypes ((array!19707 0))(
  ( (array!19708 (arr!9344 (Array (_ BitVec 32) (_ BitVec 64))) (size!9696 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19707)

(declare-fun array_inv!6872 (array!19707) Bool)

(assert (=> start!35642 (array_inv!6872 _keys!1456)))

(declare-datatypes ((V!11759 0))(
  ( (V!11760 (val!4088 Int)) )
))
(declare-datatypes ((ValueCell!3700 0))(
  ( (ValueCellFull!3700 (v!6278 V!11759)) (EmptyCell!3700) )
))
(declare-datatypes ((array!19709 0))(
  ( (array!19710 (arr!9345 (Array (_ BitVec 32) ValueCell!3700)) (size!9697 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19709)

(declare-fun e!218871 () Bool)

(declare-fun array_inv!6873 (array!19709) Bool)

(assert (=> start!35642 (and (array_inv!6873 _values!1208) e!218871)))

(declare-fun b!357480 () Bool)

(declare-fun e!218873 () Bool)

(assert (=> b!357480 (= e!218873 true)))

(declare-fun minValue!1150 () V!11759)

(declare-fun defaultEntry!1216 () Int)

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11759)

(declare-datatypes ((tuple2!5706 0))(
  ( (tuple2!5707 (_1!2863 (_ BitVec 64)) (_2!2863 V!11759)) )
))
(declare-datatypes ((List!5422 0))(
  ( (Nil!5419) (Cons!5418 (h!6274 tuple2!5706) (t!10580 List!5422)) )
))
(declare-datatypes ((ListLongMap!4633 0))(
  ( (ListLongMap!4634 (toList!2332 List!5422)) )
))
(declare-fun contains!2408 (ListLongMap!4633 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1849 (array!19707 array!19709 (_ BitVec 32) (_ BitVec 32) V!11759 V!11759 (_ BitVec 32) Int) ListLongMap!4633)

(assert (=> b!357480 (contains!2408 (getCurrentListMap!1849 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k!1077)))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((Unit!11021 0))(
  ( (Unit!11022) )
))
(declare-fun lt!166041 () Unit!11021)

(declare-fun lemmaArrayContainsKeyThenInListMap!342 (array!19707 array!19709 (_ BitVec 32) (_ BitVec 32) V!11759 V!11759 (_ BitVec 64) (_ BitVec 32) Int) Unit!11021)

(assert (=> b!357480 (= lt!166041 (lemmaArrayContainsKeyThenInListMap!342 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun b!357481 () Bool)

(assert (=> b!357481 (= e!218872 (not e!218873))))

(declare-fun res!198651 () Bool)

(assert (=> b!357481 (=> res!198651 e!218873)))

(assert (=> b!357481 (= res!198651 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9696 _keys!1456))))))

(declare-fun arrayContainsKey!0 (array!19707 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357481 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun lt!166042 () Unit!11021)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!30 (array!19707 array!19709 (_ BitVec 32) (_ BitVec 32) V!11759 V!11759 (_ BitVec 64) (_ BitVec 32)) Unit!11021)

(assert (=> b!357481 (= lt!166042 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!30 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!357482 () Bool)

(declare-fun res!198656 () Bool)

(assert (=> b!357482 (=> (not res!198656) (not e!218872))))

(assert (=> b!357482 (= res!198656 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9696 _keys!1456))))))

(declare-fun b!357483 () Bool)

(declare-fun res!198657 () Bool)

(assert (=> b!357483 (=> (not res!198657) (not e!218872))))

(assert (=> b!357483 (= res!198657 (not (= (select (arr!9344 _keys!1456) from!1805) k!1077)))))

(declare-fun b!357484 () Bool)

(declare-fun e!218876 () Bool)

(declare-fun mapRes!13638 () Bool)

(assert (=> b!357484 (= e!218871 (and e!218876 mapRes!13638))))

(declare-fun condMapEmpty!13638 () Bool)

(declare-fun mapDefault!13638 () ValueCell!3700)

