; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83534 () Bool)

(assert start!83534)

(declare-fun b_free!19493 () Bool)

(declare-fun b_next!19493 () Bool)

(assert (=> start!83534 (= b_free!19493 (not b_next!19493))))

(declare-fun tp!67767 () Bool)

(declare-fun b_and!31113 () Bool)

(assert (=> start!83534 (= tp!67767 b_and!31113)))

(declare-fun b!975397 () Bool)

(declare-fun res!653071 () Bool)

(declare-fun e!549753 () Bool)

(assert (=> b!975397 (=> (not res!653071) (not e!549753))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34845 0))(
  ( (V!34846 (val!11249 Int)) )
))
(declare-datatypes ((ValueCell!10717 0))(
  ( (ValueCellFull!10717 (v!13808 V!34845)) (EmptyCell!10717) )
))
(declare-datatypes ((array!60809 0))(
  ( (array!60810 (arr!29264 (Array (_ BitVec 32) ValueCell!10717)) (size!29744 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60809)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60811 0))(
  ( (array!60812 (arr!29265 (Array (_ BitVec 32) (_ BitVec 64))) (size!29745 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60811)

(assert (=> b!975397 (= res!653071 (and (= (size!29744 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29745 _keys!1717) (size!29744 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975398 () Bool)

(declare-fun e!549750 () Bool)

(declare-fun tp_is_empty!22397 () Bool)

(assert (=> b!975398 (= e!549750 tp_is_empty!22397)))

(declare-fun b!975399 () Bool)

(declare-fun res!653073 () Bool)

(assert (=> b!975399 (=> (not res!653073) (not e!549753))))

(declare-fun zeroValue!1367 () V!34845)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34845)

(declare-fun i!822 () (_ BitVec 32))

(declare-datatypes ((tuple2!14568 0))(
  ( (tuple2!14569 (_1!7294 (_ BitVec 64)) (_2!7294 V!34845)) )
))
(declare-datatypes ((List!20440 0))(
  ( (Nil!20437) (Cons!20436 (h!21598 tuple2!14568) (t!28925 List!20440)) )
))
(declare-datatypes ((ListLongMap!13279 0))(
  ( (ListLongMap!13280 (toList!6655 List!20440)) )
))
(declare-fun contains!5687 (ListLongMap!13279 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3840 (array!60811 array!60809 (_ BitVec 32) (_ BitVec 32) V!34845 V!34845 (_ BitVec 32) Int) ListLongMap!13279)

(assert (=> b!975399 (= res!653073 (contains!5687 (getCurrentListMap!3840 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29265 _keys!1717) i!822)))))

(declare-fun b!975400 () Bool)

(declare-fun res!653072 () Bool)

(assert (=> b!975400 (=> (not res!653072) (not e!549753))))

(assert (=> b!975400 (= res!653072 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29745 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29745 _keys!1717))))))

(declare-fun mapNonEmpty!35605 () Bool)

(declare-fun mapRes!35605 () Bool)

(declare-fun tp!67768 () Bool)

(assert (=> mapNonEmpty!35605 (= mapRes!35605 (and tp!67768 e!549750))))

(declare-fun mapValue!35605 () ValueCell!10717)

(declare-fun mapKey!35605 () (_ BitVec 32))

(declare-fun mapRest!35605 () (Array (_ BitVec 32) ValueCell!10717))

(assert (=> mapNonEmpty!35605 (= (arr!29264 _values!1425) (store mapRest!35605 mapKey!35605 mapValue!35605))))

(declare-fun b!975401 () Bool)

(declare-fun e!549752 () Bool)

(assert (=> b!975401 (= e!549752 tp_is_empty!22397)))

(declare-fun b!975402 () Bool)

(assert (=> b!975402 (= e!549753 false)))

(declare-fun lt!432820 () ListLongMap!13279)

(assert (=> b!975402 (= lt!432820 (getCurrentListMap!3840 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975403 () Bool)

(declare-fun res!653068 () Bool)

(assert (=> b!975403 (=> (not res!653068) (not e!549753))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975403 (= res!653068 (validKeyInArray!0 (select (arr!29265 _keys!1717) i!822)))))

(declare-fun b!975405 () Bool)

(declare-fun res!653074 () Bool)

(assert (=> b!975405 (=> (not res!653074) (not e!549753))))

(declare-datatypes ((List!20441 0))(
  ( (Nil!20438) (Cons!20437 (h!21599 (_ BitVec 64)) (t!28926 List!20441)) )
))
(declare-fun arrayNoDuplicates!0 (array!60811 (_ BitVec 32) List!20441) Bool)

(assert (=> b!975405 (= res!653074 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20438))))

(declare-fun b!975406 () Bool)

(declare-fun e!549751 () Bool)

(assert (=> b!975406 (= e!549751 (and e!549752 mapRes!35605))))

(declare-fun condMapEmpty!35605 () Bool)

(declare-fun mapDefault!35605 () ValueCell!10717)

