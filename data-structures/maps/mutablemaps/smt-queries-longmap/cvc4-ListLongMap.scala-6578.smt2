; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83384 () Bool)

(assert start!83384)

(declare-fun b_free!19349 () Bool)

(declare-fun b_next!19349 () Bool)

(assert (=> start!83384 (= b_free!19349 (not b_next!19349))))

(declare-fun tp!67326 () Bool)

(declare-fun b_and!30937 () Bool)

(assert (=> start!83384 (= tp!67326 b_and!30937)))

(declare-fun b!973096 () Bool)

(declare-fun res!651480 () Bool)

(declare-fun e!548527 () Bool)

(assert (=> b!973096 (=> (not res!651480) (not e!548527))))

(declare-datatypes ((array!60519 0))(
  ( (array!60520 (arr!29119 (Array (_ BitVec 32) (_ BitVec 64))) (size!29599 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60519)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!973096 (= res!651480 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29599 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29599 _keys!1717))))))

(declare-fun res!651477 () Bool)

(assert (=> start!83384 (=> (not res!651477) (not e!548527))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83384 (= res!651477 (validMask!0 mask!2147))))

(assert (=> start!83384 e!548527))

(assert (=> start!83384 true))

(declare-datatypes ((V!34645 0))(
  ( (V!34646 (val!11174 Int)) )
))
(declare-datatypes ((ValueCell!10642 0))(
  ( (ValueCellFull!10642 (v!13733 V!34645)) (EmptyCell!10642) )
))
(declare-datatypes ((array!60521 0))(
  ( (array!60522 (arr!29120 (Array (_ BitVec 32) ValueCell!10642)) (size!29600 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60521)

(declare-fun e!548524 () Bool)

(declare-fun array_inv!22423 (array!60521) Bool)

(assert (=> start!83384 (and (array_inv!22423 _values!1425) e!548524)))

(declare-fun tp_is_empty!22247 () Bool)

(assert (=> start!83384 tp_is_empty!22247))

(assert (=> start!83384 tp!67326))

(declare-fun array_inv!22424 (array!60519) Bool)

(assert (=> start!83384 (array_inv!22424 _keys!1717)))

(declare-fun b!973097 () Bool)

(declare-fun e!548525 () Bool)

(assert (=> b!973097 (= e!548525 tp_is_empty!22247)))

(declare-fun b!973098 () Bool)

(declare-fun e!548528 () Bool)

(assert (=> b!973098 (= e!548527 e!548528)))

(declare-fun res!651479 () Bool)

(assert (=> b!973098 (=> (not res!651479) (not e!548528))))

(declare-datatypes ((tuple2!14442 0))(
  ( (tuple2!14443 (_1!7231 (_ BitVec 64)) (_2!7231 V!34645)) )
))
(declare-datatypes ((List!20326 0))(
  ( (Nil!20323) (Cons!20322 (h!21484 tuple2!14442) (t!28781 List!20326)) )
))
(declare-datatypes ((ListLongMap!13153 0))(
  ( (ListLongMap!13154 (toList!6592 List!20326)) )
))
(declare-fun lt!432328 () ListLongMap!13153)

(declare-fun contains!5638 (ListLongMap!13153 (_ BitVec 64)) Bool)

(assert (=> b!973098 (= res!651479 (contains!5638 lt!432328 (select (arr!29119 _keys!1717) i!822)))))

(declare-fun zeroValue!1367 () V!34645)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34645)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3777 (array!60519 array!60521 (_ BitVec 32) (_ BitVec 32) V!34645 V!34645 (_ BitVec 32) Int) ListLongMap!13153)

(assert (=> b!973098 (= lt!432328 (getCurrentListMap!3777 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!973099 () Bool)

(declare-fun res!651474 () Bool)

(assert (=> b!973099 (=> (not res!651474) (not e!548527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60519 (_ BitVec 32)) Bool)

(assert (=> b!973099 (= res!651474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!973100 () Bool)

(declare-fun res!651476 () Bool)

(assert (=> b!973100 (=> (not res!651476) (not e!548527))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973100 (= res!651476 (validKeyInArray!0 (select (arr!29119 _keys!1717) i!822)))))

(declare-fun b!973101 () Bool)

(declare-fun e!548529 () Bool)

(assert (=> b!973101 (= e!548528 e!548529)))

(declare-fun res!651475 () Bool)

(assert (=> b!973101 (=> (not res!651475) (not e!548529))))

(declare-fun lt!432334 () (_ BitVec 64))

(assert (=> b!973101 (= res!651475 (validKeyInArray!0 lt!432334))))

(assert (=> b!973101 (= lt!432334 (select (arr!29119 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun lt!432329 () ListLongMap!13153)

(assert (=> b!973101 (= lt!432329 (getCurrentListMap!3777 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973102 () Bool)

(declare-fun res!651481 () Bool)

(assert (=> b!973102 (=> (not res!651481) (not e!548527))))

(assert (=> b!973102 (= res!651481 (and (= (size!29600 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29599 _keys!1717) (size!29600 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!973103 () Bool)

(declare-fun e!548526 () Bool)

(declare-fun mapRes!35380 () Bool)

(assert (=> b!973103 (= e!548524 (and e!548526 mapRes!35380))))

(declare-fun condMapEmpty!35380 () Bool)

(declare-fun mapDefault!35380 () ValueCell!10642)

