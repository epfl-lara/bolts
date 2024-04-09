; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40586 () Bool)

(assert start!40586)

(declare-fun b_free!10589 () Bool)

(declare-fun b_next!10589 () Bool)

(assert (=> start!40586 (= b_free!10589 (not b_next!10589))))

(declare-fun tp!37587 () Bool)

(declare-fun b_and!18615 () Bool)

(assert (=> start!40586 (= tp!37587 b_and!18615)))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun e!262614 () Bool)

(declare-fun b!447227 () Bool)

(declare-datatypes ((array!27623 0))(
  ( (array!27624 (arr!13254 (Array (_ BitVec 32) (_ BitVec 64))) (size!13606 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27623)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!447227 (= e!262614 (and (= from!863 i!563) (or (bvslt (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!863) (size!13606 _keys!709)))))))

(declare-datatypes ((V!17007 0))(
  ( (V!17008 (val!6008 Int)) )
))
(declare-fun minValue!515 () V!17007)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7804 0))(
  ( (tuple2!7805 (_1!3912 (_ BitVec 64)) (_2!3912 V!17007)) )
))
(declare-datatypes ((List!7916 0))(
  ( (Nil!7913) (Cons!7912 (h!8768 tuple2!7804) (t!13686 List!7916)) )
))
(declare-datatypes ((ListLongMap!6731 0))(
  ( (ListLongMap!6732 (toList!3381 List!7916)) )
))
(declare-fun lt!203924 () ListLongMap!6731)

(declare-datatypes ((ValueCell!5620 0))(
  ( (ValueCellFull!5620 (v!8259 V!17007)) (EmptyCell!5620) )
))
(declare-datatypes ((array!27625 0))(
  ( (array!27626 (arr!13255 (Array (_ BitVec 32) ValueCell!5620)) (size!13607 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27625)

(declare-fun zeroValue!515 () V!17007)

(declare-fun v!412 () V!17007)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!203926 () array!27623)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1561 (array!27623 array!27625 (_ BitVec 32) (_ BitVec 32) V!17007 V!17007 (_ BitVec 32) Int) ListLongMap!6731)

(assert (=> b!447227 (= lt!203924 (getCurrentListMapNoExtraKeys!1561 lt!203926 (array!27626 (store (arr!13255 _values!549) i!563 (ValueCellFull!5620 v!412)) (size!13607 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!203925 () ListLongMap!6731)

(assert (=> b!447227 (= lt!203925 (getCurrentListMapNoExtraKeys!1561 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447228 () Bool)

(declare-fun e!262613 () Bool)

(declare-fun tp_is_empty!11927 () Bool)

(assert (=> b!447228 (= e!262613 tp_is_empty!11927)))

(declare-fun b!447229 () Bool)

(declare-fun e!262615 () Bool)

(declare-fun e!262616 () Bool)

(declare-fun mapRes!19524 () Bool)

(assert (=> b!447229 (= e!262615 (and e!262616 mapRes!19524))))

(declare-fun condMapEmpty!19524 () Bool)

(declare-fun mapDefault!19524 () ValueCell!5620)

