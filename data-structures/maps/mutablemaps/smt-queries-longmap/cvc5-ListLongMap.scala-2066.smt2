; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35572 () Bool)

(assert start!35572)

(declare-fun b!356290 () Bool)

(declare-fun res!197778 () Bool)

(declare-fun e!218313 () Bool)

(assert (=> b!356290 (=> (not res!197778) (not e!218313))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19573 0))(
  ( (array!19574 (arr!9277 (Array (_ BitVec 32) (_ BitVec 64))) (size!9629 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19573)

(declare-datatypes ((V!11667 0))(
  ( (V!11668 (val!4053 Int)) )
))
(declare-datatypes ((ValueCell!3665 0))(
  ( (ValueCellFull!3665 (v!6243 V!11667)) (EmptyCell!3665) )
))
(declare-datatypes ((array!19575 0))(
  ( (array!19576 (arr!9278 (Array (_ BitVec 32) ValueCell!3665)) (size!9630 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19575)

(assert (=> b!356290 (= res!197778 (and (= (size!9630 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9629 _keys!1456) (size!9630 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!356291 () Bool)

(declare-fun res!197779 () Bool)

(assert (=> b!356291 (=> (not res!197779) (not e!218313))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356291 (= res!197779 (validKeyInArray!0 k!1077))))

(declare-fun b!356292 () Bool)

(declare-fun res!197780 () Bool)

(assert (=> b!356292 (=> (not res!197780) (not e!218313))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19573 (_ BitVec 32)) Bool)

(assert (=> b!356292 (= res!197780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13533 () Bool)

(declare-fun mapRes!13533 () Bool)

(assert (=> mapIsEmpty!13533 mapRes!13533))

(declare-fun b!356293 () Bool)

(declare-fun res!197777 () Bool)

(assert (=> b!356293 (=> (not res!197777) (not e!218313))))

(declare-datatypes ((List!5390 0))(
  ( (Nil!5387) (Cons!5386 (h!6242 (_ BitVec 64)) (t!10548 List!5390)) )
))
(declare-fun arrayNoDuplicates!0 (array!19573 (_ BitVec 32) List!5390) Bool)

(assert (=> b!356293 (= res!197777 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5387))))

(declare-fun b!356294 () Bool)

(declare-fun res!197776 () Bool)

(assert (=> b!356294 (=> (not res!197776) (not e!218313))))

(declare-fun from!1805 () (_ BitVec 32))

(assert (=> b!356294 (= res!197776 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9629 _keys!1456))))))

(declare-fun b!356295 () Bool)

(declare-fun e!218314 () Bool)

(declare-fun tp_is_empty!8017 () Bool)

(assert (=> b!356295 (= e!218314 tp_is_empty!8017)))

(declare-fun b!356296 () Bool)

(assert (=> b!356296 (= e!218313 (not true))))

(declare-fun arrayContainsKey!0 (array!19573 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356296 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!11667)

(declare-datatypes ((Unit!10971 0))(
  ( (Unit!10972) )
))
(declare-fun lt!165901 () Unit!10971)

(declare-fun zeroValue!1150 () V!11667)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!6 (array!19573 array!19575 (_ BitVec 32) (_ BitVec 32) V!11667 V!11667 (_ BitVec 64) (_ BitVec 32)) Unit!10971)

(assert (=> b!356296 (= lt!165901 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!6 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!356297 () Bool)

(declare-fun e!218311 () Bool)

(assert (=> b!356297 (= e!218311 tp_is_empty!8017)))

(declare-fun res!197781 () Bool)

(assert (=> start!35572 (=> (not res!197781) (not e!218313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35572 (= res!197781 (validMask!0 mask!1842))))

(assert (=> start!35572 e!218313))

(assert (=> start!35572 tp_is_empty!8017))

(assert (=> start!35572 true))

(declare-fun array_inv!6828 (array!19573) Bool)

(assert (=> start!35572 (array_inv!6828 _keys!1456)))

(declare-fun e!218315 () Bool)

(declare-fun array_inv!6829 (array!19575) Bool)

(assert (=> start!35572 (and (array_inv!6829 _values!1208) e!218315)))

(declare-fun b!356298 () Bool)

(declare-fun res!197782 () Bool)

(assert (=> b!356298 (=> (not res!197782) (not e!218313))))

(assert (=> b!356298 (= res!197782 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!356299 () Bool)

(declare-fun res!197775 () Bool)

(assert (=> b!356299 (=> (not res!197775) (not e!218313))))

(assert (=> b!356299 (= res!197775 (not (= (select (arr!9277 _keys!1456) from!1805) k!1077)))))

(declare-fun b!356300 () Bool)

(assert (=> b!356300 (= e!218315 (and e!218314 mapRes!13533))))

(declare-fun condMapEmpty!13533 () Bool)

(declare-fun mapDefault!13533 () ValueCell!3665)

