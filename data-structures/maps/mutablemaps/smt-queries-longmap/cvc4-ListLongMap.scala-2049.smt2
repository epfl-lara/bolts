; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35474 () Bool)

(assert start!35474)

(declare-fun b_free!7853 () Bool)

(declare-fun b_next!7853 () Bool)

(assert (=> start!35474 (= b_free!7853 (not b_next!7853))))

(declare-fun tp!27344 () Bool)

(declare-fun b_and!15113 () Bool)

(assert (=> start!35474 (= tp!27344 b_and!15113)))

(declare-fun b!355150 () Bool)

(declare-fun res!197080 () Bool)

(declare-fun e!217580 () Bool)

(assert (=> b!355150 (=> (not res!197080) (not e!217580))))

(declare-datatypes ((array!19385 0))(
  ( (array!19386 (arr!9183 (Array (_ BitVec 32) (_ BitVec 64))) (size!9535 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19385)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!355150 (= res!197080 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!355151 () Bool)

(declare-fun res!197076 () Bool)

(assert (=> b!355151 (=> (not res!197076) (not e!217580))))

(assert (=> b!355151 (= res!197076 (= (select (arr!9183 _keys!1456) from!1805) k!1077))))

(declare-fun b!355152 () Bool)

(assert (=> b!355152 (= e!217580 (not true))))

(declare-datatypes ((V!11535 0))(
  ( (V!11536 (val!4004 Int)) )
))
(declare-fun minValue!1150 () V!11535)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun defaultEntry!1216 () Int)

(declare-datatypes ((ValueCell!3616 0))(
  ( (ValueCellFull!3616 (v!6194 V!11535)) (EmptyCell!3616) )
))
(declare-datatypes ((array!19387 0))(
  ( (array!19388 (arr!9184 (Array (_ BitVec 32) ValueCell!3616)) (size!9536 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19387)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11535)

(declare-datatypes ((tuple2!5686 0))(
  ( (tuple2!5687 (_1!2853 (_ BitVec 64)) (_2!2853 V!11535)) )
))
(declare-datatypes ((List!5350 0))(
  ( (Nil!5347) (Cons!5346 (h!6202 tuple2!5686) (t!10508 List!5350)) )
))
(declare-datatypes ((ListLongMap!4613 0))(
  ( (ListLongMap!4614 (toList!2322 List!5350)) )
))
(declare-fun contains!2398 (ListLongMap!4613 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1839 (array!19385 array!19387 (_ BitVec 32) (_ BitVec 32) V!11535 V!11535 (_ BitVec 32) Int) ListLongMap!4613)

(assert (=> b!355152 (contains!2398 (getCurrentListMap!1839 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9183 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10953 0))(
  ( (Unit!10954) )
))
(declare-fun lt!165754 () Unit!10953)

(declare-fun lemmaValidKeyInArrayIsInListMap!189 (array!19385 array!19387 (_ BitVec 32) (_ BitVec 32) V!11535 V!11535 (_ BitVec 32) Int) Unit!10953)

(assert (=> b!355152 (= lt!165754 (lemmaValidKeyInArrayIsInListMap!189 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun b!355153 () Bool)

(declare-fun e!217578 () Bool)

(declare-fun e!217576 () Bool)

(declare-fun mapRes!13386 () Bool)

(assert (=> b!355153 (= e!217578 (and e!217576 mapRes!13386))))

(declare-fun condMapEmpty!13386 () Bool)

(declare-fun mapDefault!13386 () ValueCell!3616)

