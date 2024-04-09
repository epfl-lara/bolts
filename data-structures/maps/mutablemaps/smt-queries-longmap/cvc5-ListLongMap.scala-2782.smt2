; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40588 () Bool)

(assert start!40588)

(declare-fun b_free!10591 () Bool)

(declare-fun b_next!10591 () Bool)

(assert (=> start!40588 (= b_free!10591 (not b_next!10591))))

(declare-fun tp!37592 () Bool)

(declare-fun b_and!18617 () Bool)

(assert (=> start!40588 (= tp!37592 b_and!18617)))

(declare-fun b!447272 () Bool)

(declare-fun res!265713 () Bool)

(declare-fun e!262635 () Bool)

(assert (=> b!447272 (=> (not res!265713) (not e!262635))))

(declare-datatypes ((array!27627 0))(
  ( (array!27628 (arr!13256 (Array (_ BitVec 32) (_ BitVec 64))) (size!13608 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27627)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!447272 (= res!265713 (or (= (select (arr!13256 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13256 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!447273 () Bool)

(declare-fun e!262634 () Bool)

(assert (=> b!447273 (= e!262634 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17011 0))(
  ( (V!17012 (val!6009 Int)) )
))
(declare-datatypes ((ValueCell!5621 0))(
  ( (ValueCellFull!5621 (v!8260 V!17011)) (EmptyCell!5621) )
))
(declare-datatypes ((array!27629 0))(
  ( (array!27630 (arr!13257 (Array (_ BitVec 32) ValueCell!5621)) (size!13609 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27629)

(declare-fun v!412 () V!17011)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun minValue!515 () V!17011)

(declare-fun lt!203934 () array!27627)

(declare-fun zeroValue!515 () V!17011)

(declare-datatypes ((tuple2!7806 0))(
  ( (tuple2!7807 (_1!3913 (_ BitVec 64)) (_2!3913 V!17011)) )
))
(declare-datatypes ((List!7917 0))(
  ( (Nil!7914) (Cons!7913 (h!8769 tuple2!7806) (t!13687 List!7917)) )
))
(declare-datatypes ((ListLongMap!6733 0))(
  ( (ListLongMap!6734 (toList!3382 List!7917)) )
))
(declare-fun lt!203935 () ListLongMap!6733)

(declare-fun getCurrentListMapNoExtraKeys!1562 (array!27627 array!27629 (_ BitVec 32) (_ BitVec 32) V!17011 V!17011 (_ BitVec 32) Int) ListLongMap!6733)

(assert (=> b!447273 (= lt!203935 (getCurrentListMapNoExtraKeys!1562 lt!203934 (array!27630 (store (arr!13257 _values!549) i!563 (ValueCellFull!5621 v!412)) (size!13609 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!203933 () ListLongMap!6733)

(assert (=> b!447273 (= lt!203933 (getCurrentListMapNoExtraKeys!1562 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447274 () Bool)

(declare-fun res!265719 () Bool)

(assert (=> b!447274 (=> (not res!265719) (not e!262634))))

(assert (=> b!447274 (= res!265719 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!19527 () Bool)

(declare-fun mapRes!19527 () Bool)

(declare-fun tp!37593 () Bool)

(declare-fun e!262633 () Bool)

(assert (=> mapNonEmpty!19527 (= mapRes!19527 (and tp!37593 e!262633))))

(declare-fun mapValue!19527 () ValueCell!5621)

(declare-fun mapKey!19527 () (_ BitVec 32))

(declare-fun mapRest!19527 () (Array (_ BitVec 32) ValueCell!5621))

(assert (=> mapNonEmpty!19527 (= (arr!13257 _values!549) (store mapRest!19527 mapKey!19527 mapValue!19527))))

(declare-fun b!447275 () Bool)

(assert (=> b!447275 (= e!262635 e!262634)))

(declare-fun res!265714 () Bool)

(assert (=> b!447275 (=> (not res!265714) (not e!262634))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27627 (_ BitVec 32)) Bool)

(assert (=> b!447275 (= res!265714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203934 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!447275 (= lt!203934 (array!27628 (store (arr!13256 _keys!709) i!563 k!794) (size!13608 _keys!709)))))

(declare-fun b!447276 () Bool)

(declare-fun tp_is_empty!11929 () Bool)

(assert (=> b!447276 (= e!262633 tp_is_empty!11929)))

(declare-fun b!447277 () Bool)

(declare-fun res!265721 () Bool)

(assert (=> b!447277 (=> (not res!265721) (not e!262635))))

(declare-datatypes ((List!7918 0))(
  ( (Nil!7915) (Cons!7914 (h!8770 (_ BitVec 64)) (t!13688 List!7918)) )
))
(declare-fun arrayNoDuplicates!0 (array!27627 (_ BitVec 32) List!7918) Bool)

(assert (=> b!447277 (= res!265721 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7915))))

(declare-fun b!447278 () Bool)

(declare-fun res!265722 () Bool)

(assert (=> b!447278 (=> (not res!265722) (not e!262635))))

(assert (=> b!447278 (= res!265722 (and (= (size!13609 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13608 _keys!709) (size!13609 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447279 () Bool)

(declare-fun res!265711 () Bool)

(assert (=> b!447279 (=> (not res!265711) (not e!262635))))

(declare-fun arrayContainsKey!0 (array!27627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447279 (= res!265711 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!447280 () Bool)

(declare-fun res!265717 () Bool)

(assert (=> b!447280 (=> (not res!265717) (not e!262634))))

(assert (=> b!447280 (= res!265717 (arrayNoDuplicates!0 lt!203934 #b00000000000000000000000000000000 Nil!7915))))

(declare-fun b!447281 () Bool)

(declare-fun res!265715 () Bool)

(assert (=> b!447281 (=> (not res!265715) (not e!262635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!447281 (= res!265715 (validMask!0 mask!1025))))

(declare-fun b!447282 () Bool)

(declare-fun e!262632 () Bool)

(declare-fun e!262631 () Bool)

(assert (=> b!447282 (= e!262632 (and e!262631 mapRes!19527))))

(declare-fun condMapEmpty!19527 () Bool)

(declare-fun mapDefault!19527 () ValueCell!5621)

