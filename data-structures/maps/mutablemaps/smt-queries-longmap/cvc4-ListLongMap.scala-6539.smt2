; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83150 () Bool)

(assert start!83150)

(declare-fun b_free!19115 () Bool)

(declare-fun b_next!19115 () Bool)

(assert (=> start!83150 (= b_free!19115 (not b_next!19115))))

(declare-fun tp!66625 () Bool)

(declare-fun b_and!30621 () Bool)

(assert (=> start!83150 (= tp!66625 b_and!30621)))

(declare-fun b!969497 () Bool)

(declare-fun res!649012 () Bool)

(declare-fun e!546609 () Bool)

(assert (=> b!969497 (=> (not res!649012) (not e!546609))))

(declare-datatypes ((array!60073 0))(
  ( (array!60074 (arr!28896 (Array (_ BitVec 32) (_ BitVec 64))) (size!29376 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60073)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!969497 (= res!649012 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29376 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29376 _keys!1717))))))

(declare-fun b!969498 () Bool)

(declare-fun res!649011 () Bool)

(assert (=> b!969498 (=> (not res!649011) (not e!546609))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969498 (= res!649011 (validKeyInArray!0 (select (arr!28896 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35029 () Bool)

(declare-fun mapRes!35029 () Bool)

(declare-fun tp!66624 () Bool)

(declare-fun e!546612 () Bool)

(assert (=> mapNonEmpty!35029 (= mapRes!35029 (and tp!66624 e!546612))))

(declare-datatypes ((V!34333 0))(
  ( (V!34334 (val!11057 Int)) )
))
(declare-datatypes ((ValueCell!10525 0))(
  ( (ValueCellFull!10525 (v!13616 V!34333)) (EmptyCell!10525) )
))
(declare-datatypes ((array!60075 0))(
  ( (array!60076 (arr!28897 (Array (_ BitVec 32) ValueCell!10525)) (size!29377 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60075)

(declare-fun mapKey!35029 () (_ BitVec 32))

(declare-fun mapValue!35029 () ValueCell!10525)

(declare-fun mapRest!35029 () (Array (_ BitVec 32) ValueCell!10525))

(assert (=> mapNonEmpty!35029 (= (arr!28897 _values!1425) (store mapRest!35029 mapKey!35029 mapValue!35029))))

(declare-fun b!969499 () Bool)

(assert (=> b!969499 (= e!546609 false)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun zeroValue!1367 () V!34333)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34333)

(declare-fun lt!431605 () Bool)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14264 0))(
  ( (tuple2!14265 (_1!7142 (_ BitVec 64)) (_2!7142 V!34333)) )
))
(declare-datatypes ((List!20156 0))(
  ( (Nil!20153) (Cons!20152 (h!21314 tuple2!14264) (t!28527 List!20156)) )
))
(declare-datatypes ((ListLongMap!12975 0))(
  ( (ListLongMap!12976 (toList!6503 List!20156)) )
))
(declare-fun contains!5558 (ListLongMap!12975 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3688 (array!60073 array!60075 (_ BitVec 32) (_ BitVec 32) V!34333 V!34333 (_ BitVec 32) Int) ListLongMap!12975)

(assert (=> b!969499 (= lt!431605 (contains!5558 (getCurrentListMap!3688 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28896 _keys!1717) i!822)))))

(declare-fun b!969501 () Bool)

(declare-fun res!649014 () Bool)

(assert (=> b!969501 (=> (not res!649014) (not e!546609))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60073 (_ BitVec 32)) Bool)

(assert (=> b!969501 (= res!649014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969502 () Bool)

(declare-fun e!546611 () Bool)

(declare-fun e!546610 () Bool)

(assert (=> b!969502 (= e!546611 (and e!546610 mapRes!35029))))

(declare-fun condMapEmpty!35029 () Bool)

(declare-fun mapDefault!35029 () ValueCell!10525)

