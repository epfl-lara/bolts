; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40610 () Bool)

(assert start!40610)

(declare-fun b_free!10613 () Bool)

(declare-fun b_next!10613 () Bool)

(assert (=> start!40610 (= b_free!10613 (not b_next!10613))))

(declare-fun tp!37659 () Bool)

(declare-fun b_and!18639 () Bool)

(assert (=> start!40610 (= tp!37659 b_and!18639)))

(declare-fun mapIsEmpty!19560 () Bool)

(declare-fun mapRes!19560 () Bool)

(assert (=> mapIsEmpty!19560 mapRes!19560))

(declare-fun b!447767 () Bool)

(declare-fun e!262832 () Bool)

(assert (=> b!447767 (= e!262832 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17039 0))(
  ( (V!17040 (val!6020 Int)) )
))
(declare-fun minValue!515 () V!17039)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((array!27669 0))(
  ( (array!27670 (arr!13277 (Array (_ BitVec 32) (_ BitVec 64))) (size!13629 (_ BitVec 32))) )
))
(declare-fun lt!204033 () array!27669)

(declare-datatypes ((tuple2!7824 0))(
  ( (tuple2!7825 (_1!3922 (_ BitVec 64)) (_2!3922 V!17039)) )
))
(declare-datatypes ((List!7935 0))(
  ( (Nil!7932) (Cons!7931 (h!8787 tuple2!7824) (t!13705 List!7935)) )
))
(declare-datatypes ((ListLongMap!6751 0))(
  ( (ListLongMap!6752 (toList!3391 List!7935)) )
))
(declare-fun lt!204034 () ListLongMap!6751)

(declare-datatypes ((ValueCell!5632 0))(
  ( (ValueCellFull!5632 (v!8271 V!17039)) (EmptyCell!5632) )
))
(declare-datatypes ((array!27671 0))(
  ( (array!27672 (arr!13278 (Array (_ BitVec 32) ValueCell!5632)) (size!13630 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27671)

(declare-fun zeroValue!515 () V!17039)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!17039)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1571 (array!27669 array!27671 (_ BitVec 32) (_ BitVec 32) V!17039 V!17039 (_ BitVec 32) Int) ListLongMap!6751)

(assert (=> b!447767 (= lt!204034 (getCurrentListMapNoExtraKeys!1571 lt!204033 (array!27672 (store (arr!13278 _values!549) i!563 (ValueCellFull!5632 v!412)) (size!13630 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204032 () ListLongMap!6751)

(declare-fun _keys!709 () array!27669)

(assert (=> b!447767 (= lt!204032 (getCurrentListMapNoExtraKeys!1571 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447768 () Bool)

(declare-fun res!266117 () Bool)

(declare-fun e!262831 () Bool)

(assert (=> b!447768 (=> (not res!266117) (not e!262831))))

(assert (=> b!447768 (= res!266117 (or (= (select (arr!13277 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13277 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!447770 () Bool)

(declare-fun res!266111 () Bool)

(assert (=> b!447770 (=> (not res!266111) (not e!262831))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!447770 (= res!266111 (validKeyInArray!0 k!794))))

(declare-fun b!447771 () Bool)

(declare-fun res!266110 () Bool)

(assert (=> b!447771 (=> (not res!266110) (not e!262831))))

(declare-fun arrayContainsKey!0 (array!27669 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447771 (= res!266110 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!447772 () Bool)

(assert (=> b!447772 (= e!262831 e!262832)))

(declare-fun res!266107 () Bool)

(assert (=> b!447772 (=> (not res!266107) (not e!262832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27669 (_ BitVec 32)) Bool)

(assert (=> b!447772 (= res!266107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204033 mask!1025))))

(assert (=> b!447772 (= lt!204033 (array!27670 (store (arr!13277 _keys!709) i!563 k!794) (size!13629 _keys!709)))))

(declare-fun b!447773 () Bool)

(declare-fun res!266109 () Bool)

(assert (=> b!447773 (=> (not res!266109) (not e!262831))))

(assert (=> b!447773 (= res!266109 (and (= (size!13630 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13629 _keys!709) (size!13630 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447774 () Bool)

(declare-fun res!266113 () Bool)

(assert (=> b!447774 (=> (not res!266113) (not e!262832))))

(assert (=> b!447774 (= res!266113 (bvsle from!863 i!563))))

(declare-fun b!447775 () Bool)

(declare-fun res!266116 () Bool)

(assert (=> b!447775 (=> (not res!266116) (not e!262832))))

(declare-datatypes ((List!7936 0))(
  ( (Nil!7933) (Cons!7932 (h!8788 (_ BitVec 64)) (t!13706 List!7936)) )
))
(declare-fun arrayNoDuplicates!0 (array!27669 (_ BitVec 32) List!7936) Bool)

(assert (=> b!447775 (= res!266116 (arrayNoDuplicates!0 lt!204033 #b00000000000000000000000000000000 Nil!7933))))

(declare-fun b!447776 () Bool)

(declare-fun e!262830 () Bool)

(declare-fun tp_is_empty!11951 () Bool)

(assert (=> b!447776 (= e!262830 tp_is_empty!11951)))

(declare-fun b!447769 () Bool)

(declare-fun e!262829 () Bool)

(assert (=> b!447769 (= e!262829 (and e!262830 mapRes!19560))))

(declare-fun condMapEmpty!19560 () Bool)

(declare-fun mapDefault!19560 () ValueCell!5632)

