; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35576 () Bool)

(assert start!35576)

(declare-fun mapIsEmpty!13539 () Bool)

(declare-fun mapRes!13539 () Bool)

(assert (=> mapIsEmpty!13539 mapRes!13539))

(declare-fun b!356356 () Bool)

(declare-fun res!197827 () Bool)

(declare-fun e!218345 () Bool)

(assert (=> b!356356 (=> (not res!197827) (not e!218345))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356356 (= res!197827 (validKeyInArray!0 k!1077))))

(declare-fun b!356357 () Bool)

(declare-fun e!218344 () Bool)

(declare-fun tp_is_empty!8021 () Bool)

(assert (=> b!356357 (= e!218344 tp_is_empty!8021)))

(declare-fun b!356358 () Bool)

(assert (=> b!356358 (= e!218345 (not true))))

(declare-datatypes ((array!19581 0))(
  ( (array!19582 (arr!9281 (Array (_ BitVec 32) (_ BitVec 64))) (size!9633 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19581)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!19581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356358 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!11671 0))(
  ( (V!11672 (val!4055 Int)) )
))
(declare-fun minValue!1150 () V!11671)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((Unit!10975 0))(
  ( (Unit!10976) )
))
(declare-fun lt!165907 () Unit!10975)

(declare-datatypes ((ValueCell!3667 0))(
  ( (ValueCellFull!3667 (v!6245 V!11671)) (EmptyCell!3667) )
))
(declare-datatypes ((array!19583 0))(
  ( (array!19584 (arr!9282 (Array (_ BitVec 32) ValueCell!3667)) (size!9634 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19583)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11671)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!8 (array!19581 array!19583 (_ BitVec 32) (_ BitVec 32) V!11671 V!11671 (_ BitVec 64) (_ BitVec 32)) Unit!10975)

(assert (=> b!356358 (= lt!165907 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!8 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!356359 () Bool)

(declare-fun res!197826 () Bool)

(assert (=> b!356359 (=> (not res!197826) (not e!218345))))

(declare-datatypes ((List!5392 0))(
  ( (Nil!5389) (Cons!5388 (h!6244 (_ BitVec 64)) (t!10550 List!5392)) )
))
(declare-fun arrayNoDuplicates!0 (array!19581 (_ BitVec 32) List!5392) Bool)

(assert (=> b!356359 (= res!197826 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5389))))

(declare-fun b!356360 () Bool)

(declare-fun res!197830 () Bool)

(assert (=> b!356360 (=> (not res!197830) (not e!218345))))

(assert (=> b!356360 (= res!197830 (and (= (size!9634 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9633 _keys!1456) (size!9634 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!356361 () Bool)

(declare-fun res!197823 () Bool)

(assert (=> b!356361 (=> (not res!197823) (not e!218345))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19581 (_ BitVec 32)) Bool)

(assert (=> b!356361 (= res!197823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapNonEmpty!13539 () Bool)

(declare-fun tp!27516 () Bool)

(assert (=> mapNonEmpty!13539 (= mapRes!13539 (and tp!27516 e!218344))))

(declare-fun mapKey!13539 () (_ BitVec 32))

(declare-fun mapValue!13539 () ValueCell!3667)

(declare-fun mapRest!13539 () (Array (_ BitVec 32) ValueCell!3667))

(assert (=> mapNonEmpty!13539 (= (arr!9282 _values!1208) (store mapRest!13539 mapKey!13539 mapValue!13539))))

(declare-fun b!356362 () Bool)

(declare-fun res!197828 () Bool)

(assert (=> b!356362 (=> (not res!197828) (not e!218345))))

(assert (=> b!356362 (= res!197828 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9633 _keys!1456))))))

(declare-fun b!356363 () Bool)

(declare-fun res!197829 () Bool)

(assert (=> b!356363 (=> (not res!197829) (not e!218345))))

(assert (=> b!356363 (= res!197829 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun res!197825 () Bool)

(assert (=> start!35576 (=> (not res!197825) (not e!218345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35576 (= res!197825 (validMask!0 mask!1842))))

(assert (=> start!35576 e!218345))

(assert (=> start!35576 tp_is_empty!8021))

(assert (=> start!35576 true))

(declare-fun array_inv!6832 (array!19581) Bool)

(assert (=> start!35576 (array_inv!6832 _keys!1456)))

(declare-fun e!218343 () Bool)

(declare-fun array_inv!6833 (array!19583) Bool)

(assert (=> start!35576 (and (array_inv!6833 _values!1208) e!218343)))

(declare-fun b!356364 () Bool)

(declare-fun e!218341 () Bool)

(assert (=> b!356364 (= e!218343 (and e!218341 mapRes!13539))))

(declare-fun condMapEmpty!13539 () Bool)

(declare-fun mapDefault!13539 () ValueCell!3667)

