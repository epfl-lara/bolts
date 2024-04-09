; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40580 () Bool)

(assert start!40580)

(declare-fun b_free!10583 () Bool)

(declare-fun b_next!10583 () Bool)

(assert (=> start!40580 (= b_free!10583 (not b_next!10583))))

(declare-fun tp!37569 () Bool)

(declare-fun b_and!18609 () Bool)

(assert (=> start!40580 (= tp!37569 b_and!18609)))

(declare-fun b!447092 () Bool)

(declare-fun e!262560 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((V!16999 0))(
  ( (V!17000 (val!6005 Int)) )
))
(declare-datatypes ((ValueCell!5617 0))(
  ( (ValueCellFull!5617 (v!8256 V!16999)) (EmptyCell!5617) )
))
(declare-datatypes ((array!27611 0))(
  ( (array!27612 (arr!13248 (Array (_ BitVec 32) ValueCell!5617)) (size!13600 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27611)

(assert (=> b!447092 (= e!262560 (bvsge i!563 (size!13600 _values!549)))))

(declare-fun minValue!515 () V!16999)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!27613 0))(
  ( (array!27614 (arr!13249 (Array (_ BitVec 32) (_ BitVec 64))) (size!13601 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27613)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7800 0))(
  ( (tuple2!7801 (_1!3910 (_ BitVec 64)) (_2!3910 V!16999)) )
))
(declare-datatypes ((List!7912 0))(
  ( (Nil!7909) (Cons!7908 (h!8764 tuple2!7800) (t!13682 List!7912)) )
))
(declare-datatypes ((ListLongMap!6727 0))(
  ( (ListLongMap!6728 (toList!3379 List!7912)) )
))
(declare-fun lt!203898 () ListLongMap!6727)

(declare-fun zeroValue!515 () V!16999)

(declare-fun getCurrentListMapNoExtraKeys!1559 (array!27613 array!27611 (_ BitVec 32) (_ BitVec 32) V!16999 V!16999 (_ BitVec 32) Int) ListLongMap!6727)

(assert (=> b!447092 (= lt!203898 (getCurrentListMapNoExtraKeys!1559 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447093 () Bool)

(declare-fun res!265568 () Bool)

(declare-fun e!262558 () Bool)

(assert (=> b!447093 (=> (not res!265568) (not e!262558))))

(assert (=> b!447093 (= res!265568 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13601 _keys!709))))))

(declare-fun b!447094 () Bool)

(declare-fun res!265570 () Bool)

(assert (=> b!447094 (=> (not res!265570) (not e!262560))))

(assert (=> b!447094 (= res!265570 (bvsle from!863 i!563))))

(declare-fun res!265572 () Bool)

(assert (=> start!40580 (=> (not res!265572) (not e!262558))))

(assert (=> start!40580 (= res!265572 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13601 _keys!709))))))

(assert (=> start!40580 e!262558))

(declare-fun tp_is_empty!11921 () Bool)

(assert (=> start!40580 tp_is_empty!11921))

(assert (=> start!40580 tp!37569))

(assert (=> start!40580 true))

(declare-fun e!262562 () Bool)

(declare-fun array_inv!9596 (array!27611) Bool)

(assert (=> start!40580 (and (array_inv!9596 _values!549) e!262562)))

(declare-fun array_inv!9597 (array!27613) Bool)

(assert (=> start!40580 (array_inv!9597 _keys!709)))

(declare-fun b!447095 () Bool)

(declare-fun res!265569 () Bool)

(assert (=> b!447095 (=> (not res!265569) (not e!262558))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!447095 (= res!265569 (validMask!0 mask!1025))))

(declare-fun b!447096 () Bool)

(assert (=> b!447096 (= e!262558 e!262560)))

(declare-fun res!265575 () Bool)

(assert (=> b!447096 (=> (not res!265575) (not e!262560))))

(declare-fun lt!203899 () array!27613)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27613 (_ BitVec 32)) Bool)

(assert (=> b!447096 (= res!265575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203899 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!447096 (= lt!203899 (array!27614 (store (arr!13249 _keys!709) i!563 k!794) (size!13601 _keys!709)))))

(declare-fun b!447097 () Bool)

(declare-fun res!265567 () Bool)

(assert (=> b!447097 (=> (not res!265567) (not e!262558))))

(assert (=> b!447097 (= res!265567 (or (= (select (arr!13249 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13249 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!447098 () Bool)

(declare-fun e!262563 () Bool)

(assert (=> b!447098 (= e!262563 tp_is_empty!11921)))

(declare-fun b!447099 () Bool)

(declare-fun res!265577 () Bool)

(assert (=> b!447099 (=> (not res!265577) (not e!262558))))

(assert (=> b!447099 (= res!265577 (and (= (size!13600 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13601 _keys!709) (size!13600 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447100 () Bool)

(declare-fun res!265571 () Bool)

(assert (=> b!447100 (=> (not res!265571) (not e!262560))))

(declare-datatypes ((List!7913 0))(
  ( (Nil!7910) (Cons!7909 (h!8765 (_ BitVec 64)) (t!13683 List!7913)) )
))
(declare-fun arrayNoDuplicates!0 (array!27613 (_ BitVec 32) List!7913) Bool)

(assert (=> b!447100 (= res!265571 (arrayNoDuplicates!0 lt!203899 #b00000000000000000000000000000000 Nil!7910))))

(declare-fun b!447101 () Bool)

(declare-fun res!265576 () Bool)

(assert (=> b!447101 (=> (not res!265576) (not e!262558))))

(declare-fun arrayContainsKey!0 (array!27613 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447101 (= res!265576 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19515 () Bool)

(declare-fun mapRes!19515 () Bool)

(declare-fun tp!37568 () Bool)

(assert (=> mapNonEmpty!19515 (= mapRes!19515 (and tp!37568 e!262563))))

(declare-fun mapKey!19515 () (_ BitVec 32))

(declare-fun mapRest!19515 () (Array (_ BitVec 32) ValueCell!5617))

(declare-fun mapValue!19515 () ValueCell!5617)

(assert (=> mapNonEmpty!19515 (= (arr!13248 _values!549) (store mapRest!19515 mapKey!19515 mapValue!19515))))

(declare-fun mapIsEmpty!19515 () Bool)

(assert (=> mapIsEmpty!19515 mapRes!19515))

(declare-fun b!447102 () Bool)

(declare-fun e!262561 () Bool)

(assert (=> b!447102 (= e!262562 (and e!262561 mapRes!19515))))

(declare-fun condMapEmpty!19515 () Bool)

(declare-fun mapDefault!19515 () ValueCell!5617)

