; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83386 () Bool)

(assert start!83386)

(declare-fun b_free!19351 () Bool)

(declare-fun b_next!19351 () Bool)

(assert (=> start!83386 (= b_free!19351 (not b_next!19351))))

(declare-fun tp!67332 () Bool)

(declare-fun b_and!30941 () Bool)

(assert (=> start!83386 (= tp!67332 b_and!30941)))

(declare-fun mapIsEmpty!35383 () Bool)

(declare-fun mapRes!35383 () Bool)

(assert (=> mapIsEmpty!35383 mapRes!35383))

(declare-fun b!973131 () Bool)

(declare-fun e!548544 () Bool)

(declare-fun e!548547 () Bool)

(assert (=> b!973131 (= e!548544 e!548547)))

(declare-fun res!651503 () Bool)

(assert (=> b!973131 (=> (not res!651503) (not e!548547))))

(declare-fun lt!432352 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973131 (= res!651503 (validKeyInArray!0 lt!432352))))

(declare-datatypes ((array!60523 0))(
  ( (array!60524 (arr!29121 (Array (_ BitVec 32) (_ BitVec 64))) (size!29601 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60523)

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!973131 (= lt!432352 (select (arr!29121 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34649 0))(
  ( (V!34650 (val!11175 Int)) )
))
(declare-datatypes ((ValueCell!10643 0))(
  ( (ValueCellFull!10643 (v!13734 V!34649)) (EmptyCell!10643) )
))
(declare-datatypes ((array!60525 0))(
  ( (array!60526 (arr!29122 (Array (_ BitVec 32) ValueCell!10643)) (size!29602 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60525)

(declare-fun zeroValue!1367 () V!34649)

(declare-datatypes ((tuple2!14444 0))(
  ( (tuple2!14445 (_1!7232 (_ BitVec 64)) (_2!7232 V!34649)) )
))
(declare-datatypes ((List!20327 0))(
  ( (Nil!20324) (Cons!20323 (h!21485 tuple2!14444) (t!28784 List!20327)) )
))
(declare-datatypes ((ListLongMap!13155 0))(
  ( (ListLongMap!13156 (toList!6593 List!20327)) )
))
(declare-fun lt!432353 () ListLongMap!13155)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34649)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3778 (array!60523 array!60525 (_ BitVec 32) (_ BitVec 32) V!34649 V!34649 (_ BitVec 32) Int) ListLongMap!13155)

(assert (=> b!973131 (= lt!432353 (getCurrentListMap!3778 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun res!651502 () Bool)

(declare-fun e!548550 () Bool)

(assert (=> start!83386 (=> (not res!651502) (not e!548550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83386 (= res!651502 (validMask!0 mask!2147))))

(assert (=> start!83386 e!548550))

(assert (=> start!83386 true))

(declare-fun e!548548 () Bool)

(declare-fun array_inv!22425 (array!60525) Bool)

(assert (=> start!83386 (and (array_inv!22425 _values!1425) e!548548)))

(declare-fun tp_is_empty!22249 () Bool)

(assert (=> start!83386 tp_is_empty!22249))

(assert (=> start!83386 tp!67332))

(declare-fun array_inv!22426 (array!60523) Bool)

(assert (=> start!83386 (array_inv!22426 _keys!1717)))

(declare-fun b!973132 () Bool)

(declare-fun e!548549 () Bool)

(assert (=> b!973132 (= e!548548 (and e!548549 mapRes!35383))))

(declare-fun condMapEmpty!35383 () Bool)

(declare-fun mapDefault!35383 () ValueCell!10643)

