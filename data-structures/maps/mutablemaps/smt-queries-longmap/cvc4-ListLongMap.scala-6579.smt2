; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83390 () Bool)

(assert start!83390)

(declare-fun b_free!19355 () Bool)

(declare-fun b_next!19355 () Bool)

(assert (=> start!83390 (= b_free!19355 (not b_next!19355))))

(declare-fun tp!67344 () Bool)

(declare-fun b_and!30949 () Bool)

(assert (=> start!83390 (= tp!67344 b_and!30949)))

(declare-fun b!973201 () Bool)

(declare-fun e!548586 () Bool)

(declare-fun e!548587 () Bool)

(assert (=> b!973201 (= e!548586 e!548587)))

(declare-fun res!651551 () Bool)

(assert (=> b!973201 (=> (not res!651551) (not e!548587))))

(declare-fun lt!432395 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973201 (= res!651551 (validKeyInArray!0 lt!432395))))

(declare-datatypes ((array!60531 0))(
  ( (array!60532 (arr!29125 (Array (_ BitVec 32) (_ BitVec 64))) (size!29605 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60531)

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!973201 (= lt!432395 (select (arr!29125 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34653 0))(
  ( (V!34654 (val!11177 Int)) )
))
(declare-datatypes ((ValueCell!10645 0))(
  ( (ValueCellFull!10645 (v!13736 V!34653)) (EmptyCell!10645) )
))
(declare-datatypes ((array!60533 0))(
  ( (array!60534 (arr!29126 (Array (_ BitVec 32) ValueCell!10645)) (size!29606 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60533)

(declare-fun zeroValue!1367 () V!34653)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34653)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14448 0))(
  ( (tuple2!14449 (_1!7234 (_ BitVec 64)) (_2!7234 V!34653)) )
))
(declare-datatypes ((List!20330 0))(
  ( (Nil!20327) (Cons!20326 (h!21488 tuple2!14448) (t!28791 List!20330)) )
))
(declare-datatypes ((ListLongMap!13159 0))(
  ( (ListLongMap!13160 (toList!6595 List!20330)) )
))
(declare-fun lt!432394 () ListLongMap!13159)

(declare-fun getCurrentListMap!3780 (array!60531 array!60533 (_ BitVec 32) (_ BitVec 32) V!34653 V!34653 (_ BitVec 32) Int) ListLongMap!13159)

(assert (=> b!973201 (= lt!432394 (getCurrentListMap!3780 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapIsEmpty!35389 () Bool)

(declare-fun mapRes!35389 () Bool)

(assert (=> mapIsEmpty!35389 mapRes!35389))

(declare-fun b!973203 () Bool)

(declare-fun res!651549 () Bool)

(declare-fun e!548588 () Bool)

(assert (=> b!973203 (=> (not res!651549) (not e!548588))))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!973203 (= res!651549 (validKeyInArray!0 (select (arr!29125 _keys!1717) i!822)))))

(declare-fun b!973204 () Bool)

(declare-fun e!548592 () Bool)

(declare-fun e!548591 () Bool)

(assert (=> b!973204 (= e!548592 (and e!548591 mapRes!35389))))

(declare-fun condMapEmpty!35389 () Bool)

(declare-fun mapDefault!35389 () ValueCell!10645)

