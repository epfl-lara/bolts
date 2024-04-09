; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34824 () Bool)

(assert start!34824)

(declare-fun b_free!7601 () Bool)

(declare-fun b_next!7601 () Bool)

(assert (=> start!34824 (= b_free!7601 (not b_next!7601))))

(declare-fun tp!26369 () Bool)

(declare-fun b_and!14841 () Bool)

(assert (=> start!34824 (= tp!26369 b_and!14841)))

(declare-fun b!348274 () Bool)

(declare-fun res!193003 () Bool)

(declare-fun e!213392 () Bool)

(assert (=> b!348274 (=> (not res!193003) (not e!213392))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!18659 0))(
  ( (array!18660 (arr!8836 (Array (_ BitVec 32) (_ BitVec 64))) (size!9188 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18659)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((V!11047 0))(
  ( (V!11048 (val!3821 Int)) )
))
(declare-datatypes ((ValueCell!3433 0))(
  ( (ValueCellFull!3433 (v!6000 V!11047)) (EmptyCell!3433) )
))
(declare-datatypes ((array!18661 0))(
  ( (array!18662 (arr!8837 (Array (_ BitVec 32) ValueCell!3433)) (size!9189 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18661)

(assert (=> b!348274 (= res!193003 (and (= (size!9189 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9188 _keys!1895) (size!9189 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!348275 () Bool)

(declare-fun res!192998 () Bool)

(declare-fun e!213395 () Bool)

(assert (=> b!348275 (=> (not res!192998) (not e!213395))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18659 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348275 (= res!192998 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348276 () Bool)

(assert (=> b!348276 (= e!213395 false)))

(declare-fun lt!163845 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18659 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348276 (= lt!163845 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348277 () Bool)

(declare-fun res!193001 () Bool)

(assert (=> b!348277 (=> (not res!193001) (not e!213392))))

(declare-fun zeroValue!1467 () V!11047)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11047)

(declare-datatypes ((tuple2!5516 0))(
  ( (tuple2!5517 (_1!2768 (_ BitVec 64)) (_2!2768 V!11047)) )
))
(declare-datatypes ((List!5159 0))(
  ( (Nil!5156) (Cons!5155 (h!6011 tuple2!5516) (t!10297 List!5159)) )
))
(declare-datatypes ((ListLongMap!4443 0))(
  ( (ListLongMap!4444 (toList!2237 List!5159)) )
))
(declare-fun contains!2298 (ListLongMap!4443 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1754 (array!18659 array!18661 (_ BitVec 32) (_ BitVec 32) V!11047 V!11047 (_ BitVec 32) Int) ListLongMap!4443)

(assert (=> b!348277 (= res!193001 (not (contains!2298 (getCurrentListMap!1754 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!348278 () Bool)

(declare-fun e!213390 () Bool)

(declare-fun e!213393 () Bool)

(declare-fun mapRes!12789 () Bool)

(assert (=> b!348278 (= e!213390 (and e!213393 mapRes!12789))))

(declare-fun condMapEmpty!12789 () Bool)

(declare-fun mapDefault!12789 () ValueCell!3433)

