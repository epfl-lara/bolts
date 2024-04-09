; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83216 () Bool)

(assert start!83216)

(declare-fun b_free!19181 () Bool)

(declare-fun b_next!19181 () Bool)

(assert (=> start!83216 (= b_free!19181 (not b_next!19181))))

(declare-fun tp!66823 () Bool)

(declare-fun b_and!30687 () Bool)

(assert (=> start!83216 (= tp!66823 b_and!30687)))

(declare-fun res!649618 () Bool)

(declare-fun e!547105 () Bool)

(assert (=> start!83216 (=> (not res!649618) (not e!547105))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83216 (= res!649618 (validMask!0 mask!2147))))

(assert (=> start!83216 e!547105))

(assert (=> start!83216 true))

(declare-datatypes ((V!34421 0))(
  ( (V!34422 (val!11090 Int)) )
))
(declare-datatypes ((ValueCell!10558 0))(
  ( (ValueCellFull!10558 (v!13649 V!34421)) (EmptyCell!10558) )
))
(declare-datatypes ((array!60197 0))(
  ( (array!60198 (arr!28958 (Array (_ BitVec 32) ValueCell!10558)) (size!29438 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60197)

(declare-fun e!547106 () Bool)

(declare-fun array_inv!22303 (array!60197) Bool)

(assert (=> start!83216 (and (array_inv!22303 _values!1425) e!547106)))

(declare-fun tp_is_empty!22079 () Bool)

(assert (=> start!83216 tp_is_empty!22079))

(assert (=> start!83216 tp!66823))

(declare-datatypes ((array!60199 0))(
  ( (array!60200 (arr!28959 (Array (_ BitVec 32) (_ BitVec 64))) (size!29439 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60199)

(declare-fun array_inv!22304 (array!60199) Bool)

(assert (=> start!83216 (array_inv!22304 _keys!1717)))

(declare-fun b!970397 () Bool)

(declare-fun res!649613 () Bool)

(assert (=> b!970397 (=> (not res!649613) (not e!547105))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!970397 (= res!649613 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29439 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29439 _keys!1717))))))

(declare-fun b!970398 () Bool)

(declare-fun e!547107 () Bool)

(assert (=> b!970398 (= e!547107 tp_is_empty!22079)))

(declare-fun mapIsEmpty!35128 () Bool)

(declare-fun mapRes!35128 () Bool)

(assert (=> mapIsEmpty!35128 mapRes!35128))

(declare-fun mapNonEmpty!35128 () Bool)

(declare-fun tp!66822 () Bool)

(assert (=> mapNonEmpty!35128 (= mapRes!35128 (and tp!66822 e!547107))))

(declare-fun mapKey!35128 () (_ BitVec 32))

(declare-fun mapValue!35128 () ValueCell!10558)

(declare-fun mapRest!35128 () (Array (_ BitVec 32) ValueCell!10558))

(assert (=> mapNonEmpty!35128 (= (arr!28958 _values!1425) (store mapRest!35128 mapKey!35128 mapValue!35128))))

(declare-fun b!970399 () Bool)

(assert (=> b!970399 (= e!547105 false)))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34421)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun lt!431695 () Bool)

(declare-fun zeroValue!1367 () V!34421)

(declare-datatypes ((tuple2!14310 0))(
  ( (tuple2!14311 (_1!7165 (_ BitVec 64)) (_2!7165 V!34421)) )
))
(declare-datatypes ((List!20201 0))(
  ( (Nil!20198) (Cons!20197 (h!21359 tuple2!14310) (t!28572 List!20201)) )
))
(declare-datatypes ((ListLongMap!13021 0))(
  ( (ListLongMap!13022 (toList!6526 List!20201)) )
))
(declare-fun contains!5581 (ListLongMap!13021 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3711 (array!60199 array!60197 (_ BitVec 32) (_ BitVec 32) V!34421 V!34421 (_ BitVec 32) Int) ListLongMap!13021)

(assert (=> b!970399 (= lt!431695 (contains!5581 (getCurrentListMap!3711 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28959 _keys!1717) i!822)))))

(declare-fun b!970400 () Bool)

(declare-fun res!649617 () Bool)

(assert (=> b!970400 (=> (not res!649617) (not e!547105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970400 (= res!649617 (validKeyInArray!0 (select (arr!28959 _keys!1717) i!822)))))

(declare-fun b!970401 () Bool)

(declare-fun e!547103 () Bool)

(assert (=> b!970401 (= e!547106 (and e!547103 mapRes!35128))))

(declare-fun condMapEmpty!35128 () Bool)

(declare-fun mapDefault!35128 () ValueCell!10558)

