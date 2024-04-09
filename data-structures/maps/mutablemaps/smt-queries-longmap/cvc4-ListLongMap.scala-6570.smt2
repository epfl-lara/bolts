; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83336 () Bool)

(assert start!83336)

(declare-fun b_free!19301 () Bool)

(declare-fun b_next!19301 () Bool)

(assert (=> start!83336 (= b_free!19301 (not b_next!19301))))

(declare-fun tp!67183 () Bool)

(declare-fun b_and!30841 () Bool)

(assert (=> start!83336 (= tp!67183 b_and!30841)))

(declare-fun b!972256 () Bool)

(declare-fun e!548061 () Bool)

(declare-fun tp_is_empty!22199 () Bool)

(assert (=> b!972256 (= e!548061 tp_is_empty!22199)))

(declare-fun b!972257 () Bool)

(declare-fun res!650900 () Bool)

(declare-fun e!548057 () Bool)

(assert (=> b!972257 (=> (not res!650900) (not e!548057))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34581 0))(
  ( (V!34582 (val!11150 Int)) )
))
(declare-datatypes ((ValueCell!10618 0))(
  ( (ValueCellFull!10618 (v!13709 V!34581)) (EmptyCell!10618) )
))
(declare-datatypes ((array!60427 0))(
  ( (array!60428 (arr!29073 (Array (_ BitVec 32) ValueCell!10618)) (size!29553 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60427)

(declare-fun zeroValue!1367 () V!34581)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34581)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60429 0))(
  ( (array!60430 (arr!29074 (Array (_ BitVec 32) (_ BitVec 64))) (size!29554 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60429)

(declare-datatypes ((tuple2!14402 0))(
  ( (tuple2!14403 (_1!7211 (_ BitVec 64)) (_2!7211 V!34581)) )
))
(declare-datatypes ((List!20292 0))(
  ( (Nil!20289) (Cons!20288 (h!21450 tuple2!14402) (t!28699 List!20292)) )
))
(declare-datatypes ((ListLongMap!13113 0))(
  ( (ListLongMap!13114 (toList!6572 List!20292)) )
))
(declare-fun contains!5620 (ListLongMap!13113 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3757 (array!60429 array!60427 (_ BitVec 32) (_ BitVec 32) V!34581 V!34581 (_ BitVec 32) Int) ListLongMap!13113)

(assert (=> b!972257 (= res!650900 (contains!5620 (getCurrentListMap!3757 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29074 _keys!1717) i!822)))))

(declare-fun b!972258 () Bool)

(declare-fun e!548058 () Bool)

(assert (=> b!972258 (= e!548058 (not true))))

(declare-fun lt!431972 () ListLongMap!13113)

(declare-fun lt!431973 () (_ BitVec 64))

(declare-fun +!2848 (ListLongMap!13113 tuple2!14402) ListLongMap!13113)

(declare-fun get!15083 (ValueCell!10618 V!34581) V!34581)

(declare-fun dynLambda!1687 (Int (_ BitVec 64)) V!34581)

(assert (=> b!972258 (= lt!431972 (+!2848 (getCurrentListMap!3757 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14403 lt!431973 (get!15083 (select (arr!29073 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1687 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32357 0))(
  ( (Unit!32358) )
))
(declare-fun lt!431974 () Unit!32357)

(declare-fun lemmaListMapRecursiveValidKeyArray!259 (array!60429 array!60427 (_ BitVec 32) (_ BitVec 32) V!34581 V!34581 (_ BitVec 32) Int) Unit!32357)

(assert (=> b!972258 (= lt!431974 (lemmaListMapRecursiveValidKeyArray!259 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapNonEmpty!35308 () Bool)

(declare-fun mapRes!35308 () Bool)

(declare-fun tp!67182 () Bool)

(declare-fun e!548059 () Bool)

(assert (=> mapNonEmpty!35308 (= mapRes!35308 (and tp!67182 e!548059))))

(declare-fun mapRest!35308 () (Array (_ BitVec 32) ValueCell!10618))

(declare-fun mapValue!35308 () ValueCell!10618)

(declare-fun mapKey!35308 () (_ BitVec 32))

(assert (=> mapNonEmpty!35308 (= (arr!29073 _values!1425) (store mapRest!35308 mapKey!35308 mapValue!35308))))

(declare-fun b!972259 () Bool)

(declare-fun res!650899 () Bool)

(assert (=> b!972259 (=> (not res!650899) (not e!548057))))

(assert (=> b!972259 (= res!650899 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29554 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29554 _keys!1717))))))

(declare-fun b!972260 () Bool)

(declare-fun res!650904 () Bool)

(assert (=> b!972260 (=> (not res!650904) (not e!548057))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972260 (= res!650904 (validKeyInArray!0 (select (arr!29074 _keys!1717) i!822)))))

(declare-fun b!972261 () Bool)

(declare-fun e!548056 () Bool)

(assert (=> b!972261 (= e!548056 (and e!548061 mapRes!35308))))

(declare-fun condMapEmpty!35308 () Bool)

(declare-fun mapDefault!35308 () ValueCell!10618)

