; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40272 () Bool)

(assert start!40272)

(declare-fun b_free!10525 () Bool)

(declare-fun b_next!10525 () Bool)

(assert (=> start!40272 (= b_free!10525 (not b_next!10525))))

(declare-fun tp!37112 () Bool)

(declare-fun b_and!18511 () Bool)

(assert (=> start!40272 (= tp!37112 b_and!18511)))

(declare-fun b!441882 () Bool)

(declare-fun e!260106 () Bool)

(declare-fun tp_is_empty!11683 () Bool)

(assert (=> b!441882 (= e!260106 tp_is_empty!11683)))

(declare-fun mapNonEmpty!19146 () Bool)

(declare-fun mapRes!19146 () Bool)

(declare-fun tp!37113 () Bool)

(assert (=> mapNonEmpty!19146 (= mapRes!19146 (and tp!37113 e!260106))))

(declare-fun mapKey!19146 () (_ BitVec 32))

(declare-datatypes ((V!16683 0))(
  ( (V!16684 (val!5886 Int)) )
))
(declare-datatypes ((ValueCell!5498 0))(
  ( (ValueCellFull!5498 (v!8129 V!16683)) (EmptyCell!5498) )
))
(declare-fun mapValue!19146 () ValueCell!5498)

(declare-datatypes ((array!27153 0))(
  ( (array!27154 (arr!13023 (Array (_ BitVec 32) ValueCell!5498)) (size!13375 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27153)

(declare-fun mapRest!19146 () (Array (_ BitVec 32) ValueCell!5498))

(assert (=> mapNonEmpty!19146 (= (arr!13023 _values!549) (store mapRest!19146 mapKey!19146 mapValue!19146))))

(declare-fun b!441883 () Bool)

(declare-fun e!260110 () Bool)

(assert (=> b!441883 (= e!260110 tp_is_empty!11683)))

(declare-fun b!441885 () Bool)

(declare-fun e!260109 () Bool)

(declare-fun e!260104 () Bool)

(assert (=> b!441885 (= e!260109 e!260104)))

(declare-fun res!261779 () Bool)

(assert (=> b!441885 (=> (not res!261779) (not e!260104))))

(declare-datatypes ((array!27155 0))(
  ( (array!27156 (arr!13024 (Array (_ BitVec 32) (_ BitVec 64))) (size!13376 (_ BitVec 32))) )
))
(declare-fun lt!203039 () array!27155)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27155 (_ BitVec 32)) Bool)

(assert (=> b!441885 (= res!261779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203039 mask!1025))))

(declare-fun _keys!709 () array!27155)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!441885 (= lt!203039 (array!27156 (store (arr!13024 _keys!709) i!563 k!794) (size!13376 _keys!709)))))

(declare-fun mapIsEmpty!19146 () Bool)

(assert (=> mapIsEmpty!19146 mapRes!19146))

(declare-fun b!441886 () Bool)

(declare-fun res!261786 () Bool)

(assert (=> b!441886 (=> (not res!261786) (not e!260109))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!441886 (= res!261786 (and (= (size!13375 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13376 _keys!709) (size!13375 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!441887 () Bool)

(declare-datatypes ((tuple2!7754 0))(
  ( (tuple2!7755 (_1!3887 (_ BitVec 64)) (_2!3887 V!16683)) )
))
(declare-datatypes ((List!7797 0))(
  ( (Nil!7794) (Cons!7793 (h!8649 tuple2!7754) (t!13561 List!7797)) )
))
(declare-datatypes ((ListLongMap!6681 0))(
  ( (ListLongMap!6682 (toList!3356 List!7797)) )
))
(declare-fun call!29518 () ListLongMap!6681)

(declare-fun call!29519 () ListLongMap!6681)

(declare-fun e!260103 () Bool)

(declare-fun v!412 () V!16683)

(declare-fun +!1489 (ListLongMap!6681 tuple2!7754) ListLongMap!6681)

(assert (=> b!441887 (= e!260103 (= call!29518 (+!1489 call!29519 (tuple2!7755 k!794 v!412))))))

(declare-fun b!441888 () Bool)

(declare-fun res!261774 () Bool)

(assert (=> b!441888 (=> (not res!261774) (not e!260109))))

(assert (=> b!441888 (= res!261774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun minValue!515 () V!16683)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16683)

(declare-fun c!55724 () Bool)

(declare-fun bm!29515 () Bool)

(declare-fun lt!203038 () array!27153)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1538 (array!27155 array!27153 (_ BitVec 32) (_ BitVec 32) V!16683 V!16683 (_ BitVec 32) Int) ListLongMap!6681)

(assert (=> bm!29515 (= call!29519 (getCurrentListMapNoExtraKeys!1538 (ite c!55724 _keys!709 lt!203039) (ite c!55724 _values!549 lt!203038) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29516 () Bool)

(assert (=> bm!29516 (= call!29518 (getCurrentListMapNoExtraKeys!1538 (ite c!55724 lt!203039 _keys!709) (ite c!55724 lt!203038 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!441889 () Bool)

(declare-fun res!261775 () Bool)

(assert (=> b!441889 (=> (not res!261775) (not e!260109))))

(assert (=> b!441889 (= res!261775 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13376 _keys!709))))))

(declare-fun b!441890 () Bool)

(declare-fun res!261777 () Bool)

(assert (=> b!441890 (=> (not res!261777) (not e!260109))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441890 (= res!261777 (validKeyInArray!0 k!794))))

(declare-fun b!441891 () Bool)

(declare-fun res!261781 () Bool)

(assert (=> b!441891 (=> (not res!261781) (not e!260109))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!441891 (= res!261781 (validMask!0 mask!1025))))

(declare-fun b!441884 () Bool)

(declare-fun e!260107 () Bool)

(assert (=> b!441884 (= e!260104 e!260107)))

(declare-fun res!261782 () Bool)

(assert (=> b!441884 (=> (not res!261782) (not e!260107))))

(assert (=> b!441884 (= res!261782 (= from!863 i!563))))

(declare-fun lt!203037 () ListLongMap!6681)

(assert (=> b!441884 (= lt!203037 (getCurrentListMapNoExtraKeys!1538 lt!203039 lt!203038 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!441884 (= lt!203038 (array!27154 (store (arr!13023 _values!549) i!563 (ValueCellFull!5498 v!412)) (size!13375 _values!549)))))

(declare-fun lt!203036 () ListLongMap!6681)

(assert (=> b!441884 (= lt!203036 (getCurrentListMapNoExtraKeys!1538 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!261780 () Bool)

(assert (=> start!40272 (=> (not res!261780) (not e!260109))))

(assert (=> start!40272 (= res!261780 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13376 _keys!709))))))

(assert (=> start!40272 e!260109))

(assert (=> start!40272 tp_is_empty!11683))

(assert (=> start!40272 tp!37112))

(assert (=> start!40272 true))

(declare-fun e!260108 () Bool)

(declare-fun array_inv!9442 (array!27153) Bool)

(assert (=> start!40272 (and (array_inv!9442 _values!549) e!260108)))

(declare-fun array_inv!9443 (array!27155) Bool)

(assert (=> start!40272 (array_inv!9443 _keys!709)))

(declare-fun b!441892 () Bool)

(assert (=> b!441892 (= e!260108 (and e!260110 mapRes!19146))))

(declare-fun condMapEmpty!19146 () Bool)

(declare-fun mapDefault!19146 () ValueCell!5498)

