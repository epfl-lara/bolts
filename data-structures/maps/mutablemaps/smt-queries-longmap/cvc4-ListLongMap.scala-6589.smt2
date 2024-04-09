; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83450 () Bool)

(assert start!83450)

(declare-fun b_free!19415 () Bool)

(declare-fun b_next!19415 () Bool)

(assert (=> start!83450 (= b_free!19415 (not b_next!19415))))

(declare-fun tp!67525 () Bool)

(declare-fun b_and!31035 () Bool)

(assert (=> start!83450 (= tp!67525 b_and!31035)))

(declare-fun b!974164 () Bool)

(declare-fun e!549111 () Bool)

(declare-fun tp_is_empty!22313 () Bool)

(assert (=> b!974164 (= e!549111 tp_is_empty!22313)))

(declare-fun b!974165 () Bool)

(declare-fun res!652214 () Bool)

(declare-fun e!549113 () Bool)

(assert (=> b!974165 (=> (not res!652214) (not e!549113))))

(declare-datatypes ((array!60647 0))(
  ( (array!60648 (arr!29183 (Array (_ BitVec 32) (_ BitVec 64))) (size!29663 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60647)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60647 (_ BitVec 32)) Bool)

(assert (=> b!974165 (= res!652214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapNonEmpty!35479 () Bool)

(declare-fun mapRes!35479 () Bool)

(declare-fun tp!67524 () Bool)

(assert (=> mapNonEmpty!35479 (= mapRes!35479 (and tp!67524 e!549111))))

(declare-datatypes ((V!34733 0))(
  ( (V!34734 (val!11207 Int)) )
))
(declare-datatypes ((ValueCell!10675 0))(
  ( (ValueCellFull!10675 (v!13766 V!34733)) (EmptyCell!10675) )
))
(declare-datatypes ((array!60649 0))(
  ( (array!60650 (arr!29184 (Array (_ BitVec 32) ValueCell!10675)) (size!29664 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60649)

(declare-fun mapValue!35479 () ValueCell!10675)

(declare-fun mapRest!35479 () (Array (_ BitVec 32) ValueCell!10675))

(declare-fun mapKey!35479 () (_ BitVec 32))

(assert (=> mapNonEmpty!35479 (= (arr!29184 _values!1425) (store mapRest!35479 mapKey!35479 mapValue!35479))))

(declare-fun b!974167 () Bool)

(assert (=> b!974167 (= e!549113 false)))

(declare-datatypes ((tuple2!14498 0))(
  ( (tuple2!14499 (_1!7259 (_ BitVec 64)) (_2!7259 V!34733)) )
))
(declare-datatypes ((List!20376 0))(
  ( (Nil!20373) (Cons!20372 (h!21534 tuple2!14498) (t!28861 List!20376)) )
))
(declare-datatypes ((ListLongMap!13209 0))(
  ( (ListLongMap!13210 (toList!6620 List!20376)) )
))
(declare-fun lt!432703 () ListLongMap!13209)

(declare-fun zeroValue!1367 () V!34733)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34733)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3805 (array!60647 array!60649 (_ BitVec 32) (_ BitVec 32) V!34733 V!34733 (_ BitVec 32) Int) ListLongMap!13209)

(assert (=> b!974167 (= lt!432703 (getCurrentListMap!3805 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapIsEmpty!35479 () Bool)

(assert (=> mapIsEmpty!35479 mapRes!35479))

(declare-fun b!974168 () Bool)

(declare-fun res!652218 () Bool)

(assert (=> b!974168 (=> (not res!652218) (not e!549113))))

(assert (=> b!974168 (= res!652218 (and (= (size!29664 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29663 _keys!1717) (size!29664 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!974169 () Bool)

(declare-fun e!549112 () Bool)

(declare-fun e!549110 () Bool)

(assert (=> b!974169 (= e!549112 (and e!549110 mapRes!35479))))

(declare-fun condMapEmpty!35479 () Bool)

(declare-fun mapDefault!35479 () ValueCell!10675)

