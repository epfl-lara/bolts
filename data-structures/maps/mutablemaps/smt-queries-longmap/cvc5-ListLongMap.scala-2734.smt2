; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40230 () Bool)

(assert start!40230)

(declare-fun b_free!10489 () Bool)

(declare-fun b_next!10489 () Bool)

(assert (=> start!40230 (= b_free!10489 (not b_next!10489))))

(declare-fun tp!36996 () Bool)

(declare-fun b_and!18475 () Bool)

(assert (=> start!40230 (= tp!36996 b_and!18475)))

(declare-fun b!440897 () Bool)

(declare-fun res!260985 () Bool)

(declare-fun e!259669 () Bool)

(assert (=> b!440897 (=> (not res!260985) (not e!259669))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!440897 (= res!260985 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!19083 () Bool)

(declare-fun mapRes!19083 () Bool)

(assert (=> mapIsEmpty!19083 mapRes!19083))

(declare-fun b!440898 () Bool)

(declare-fun res!260984 () Bool)

(declare-fun e!259672 () Bool)

(assert (=> b!440898 (=> (not res!260984) (not e!259672))))

(declare-datatypes ((array!27069 0))(
  ( (array!27070 (arr!12981 (Array (_ BitVec 32) (_ BitVec 64))) (size!13333 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27069)

(declare-datatypes ((List!7764 0))(
  ( (Nil!7761) (Cons!7760 (h!8616 (_ BitVec 64)) (t!13528 List!7764)) )
))
(declare-fun arrayNoDuplicates!0 (array!27069 (_ BitVec 32) List!7764) Bool)

(assert (=> b!440898 (= res!260984 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7761))))

(declare-fun b!440899 () Bool)

(declare-fun e!259674 () Bool)

(declare-fun tp_is_empty!11641 () Bool)

(assert (=> b!440899 (= e!259674 tp_is_empty!11641)))

(declare-fun b!440900 () Bool)

(declare-fun e!259670 () Bool)

(assert (=> b!440900 (= e!259669 e!259670)))

(declare-fun res!260982 () Bool)

(assert (=> b!440900 (=> (not res!260982) (not e!259670))))

(assert (=> b!440900 (= res!260982 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16627 0))(
  ( (V!16628 (val!5865 Int)) )
))
(declare-fun minValue!515 () V!16627)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5477 0))(
  ( (ValueCellFull!5477 (v!8108 V!16627)) (EmptyCell!5477) )
))
(declare-datatypes ((array!27071 0))(
  ( (array!27072 (arr!12982 (Array (_ BitVec 32) ValueCell!5477)) (size!13334 (_ BitVec 32))) )
))
(declare-fun lt!202751 () array!27071)

(declare-fun zeroValue!515 () V!16627)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7722 0))(
  ( (tuple2!7723 (_1!3871 (_ BitVec 64)) (_2!3871 V!16627)) )
))
(declare-datatypes ((List!7765 0))(
  ( (Nil!7762) (Cons!7761 (h!8617 tuple2!7722) (t!13529 List!7765)) )
))
(declare-datatypes ((ListLongMap!6649 0))(
  ( (ListLongMap!6650 (toList!3340 List!7765)) )
))
(declare-fun lt!202748 () ListLongMap!6649)

(declare-fun lt!202749 () array!27069)

(declare-fun getCurrentListMapNoExtraKeys!1522 (array!27069 array!27071 (_ BitVec 32) (_ BitVec 32) V!16627 V!16627 (_ BitVec 32) Int) ListLongMap!6649)

(assert (=> b!440900 (= lt!202748 (getCurrentListMapNoExtraKeys!1522 lt!202749 lt!202751 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!27071)

(declare-fun v!412 () V!16627)

(assert (=> b!440900 (= lt!202751 (array!27072 (store (arr!12982 _values!549) i!563 (ValueCellFull!5477 v!412)) (size!13334 _values!549)))))

(declare-fun lt!202752 () ListLongMap!6649)

(assert (=> b!440900 (= lt!202752 (getCurrentListMapNoExtraKeys!1522 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!440901 () Bool)

(declare-fun res!260994 () Bool)

(assert (=> b!440901 (=> (not res!260994) (not e!259672))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!440901 (= res!260994 (validMask!0 mask!1025))))

(declare-fun res!260986 () Bool)

(assert (=> start!40230 (=> (not res!260986) (not e!259672))))

(assert (=> start!40230 (= res!260986 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13333 _keys!709))))))

(assert (=> start!40230 e!259672))

(assert (=> start!40230 tp_is_empty!11641))

(assert (=> start!40230 tp!36996))

(assert (=> start!40230 true))

(declare-fun e!259675 () Bool)

(declare-fun array_inv!9412 (array!27071) Bool)

(assert (=> start!40230 (and (array_inv!9412 _values!549) e!259675)))

(declare-fun array_inv!9413 (array!27069) Bool)

(assert (=> start!40230 (array_inv!9413 _keys!709)))

(declare-fun b!440902 () Bool)

(declare-fun e!259673 () Bool)

(assert (=> b!440902 (= e!259675 (and e!259673 mapRes!19083))))

(declare-fun condMapEmpty!19083 () Bool)

(declare-fun mapDefault!19083 () ValueCell!5477)

