; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40024 () Bool)

(assert start!40024)

(declare-fun b_free!10283 () Bool)

(declare-fun b_next!10283 () Bool)

(assert (=> start!40024 (= b_free!10283 (not b_next!10283))))

(declare-fun tp!36378 () Bool)

(declare-fun b_and!18243 () Bool)

(assert (=> start!40024 (= tp!36378 b_and!18243)))

(declare-fun b!435779 () Bool)

(declare-fun e!257399 () Bool)

(declare-fun e!257395 () Bool)

(assert (=> b!435779 (= e!257399 (not e!257395))))

(declare-fun res!256897 () Bool)

(assert (=> b!435779 (=> res!256897 e!257395)))

(declare-datatypes ((array!26673 0))(
  ( (array!26674 (arr!12783 (Array (_ BitVec 32) (_ BitVec 64))) (size!13135 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26673)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!435779 (= res!256897 (not (validKeyInArray!0 (select (arr!12783 _keys!709) from!863))))))

(declare-datatypes ((V!16351 0))(
  ( (V!16352 (val!5762 Int)) )
))
(declare-datatypes ((tuple2!7566 0))(
  ( (tuple2!7567 (_1!3793 (_ BitVec 64)) (_2!3793 V!16351)) )
))
(declare-datatypes ((List!7609 0))(
  ( (Nil!7606) (Cons!7605 (h!8461 tuple2!7566) (t!13349 List!7609)) )
))
(declare-datatypes ((ListLongMap!6493 0))(
  ( (ListLongMap!6494 (toList!3262 List!7609)) )
))
(declare-fun lt!200835 () ListLongMap!6493)

(declare-fun lt!200839 () ListLongMap!6493)

(assert (=> b!435779 (= lt!200835 lt!200839)))

(declare-fun lt!200842 () ListLongMap!6493)

(declare-fun lt!200838 () tuple2!7566)

(declare-fun +!1406 (ListLongMap!6493 tuple2!7566) ListLongMap!6493)

(assert (=> b!435779 (= lt!200839 (+!1406 lt!200842 lt!200838))))

(declare-fun minValue!515 () V!16351)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16351)

(declare-fun lt!200844 () array!26673)

(declare-datatypes ((ValueCell!5374 0))(
  ( (ValueCellFull!5374 (v!8005 V!16351)) (EmptyCell!5374) )
))
(declare-datatypes ((array!26675 0))(
  ( (array!26676 (arr!12784 (Array (_ BitVec 32) ValueCell!5374)) (size!13136 (_ BitVec 32))) )
))
(declare-fun lt!200840 () array!26675)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1445 (array!26673 array!26675 (_ BitVec 32) (_ BitVec 32) V!16351 V!16351 (_ BitVec 32) Int) ListLongMap!6493)

(assert (=> b!435779 (= lt!200835 (getCurrentListMapNoExtraKeys!1445 lt!200844 lt!200840 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!16351)

(assert (=> b!435779 (= lt!200838 (tuple2!7567 k!794 v!412))))

(declare-fun _values!549 () array!26675)

(assert (=> b!435779 (= lt!200842 (getCurrentListMapNoExtraKeys!1445 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!12907 0))(
  ( (Unit!12908) )
))
(declare-fun lt!200836 () Unit!12907)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!585 (array!26673 array!26675 (_ BitVec 32) (_ BitVec 32) V!16351 V!16351 (_ BitVec 32) (_ BitVec 64) V!16351 (_ BitVec 32) Int) Unit!12907)

(assert (=> b!435779 (= lt!200836 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!585 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!18774 () Bool)

(declare-fun mapRes!18774 () Bool)

(assert (=> mapIsEmpty!18774 mapRes!18774))

(declare-fun res!256895 () Bool)

(declare-fun e!257396 () Bool)

(assert (=> start!40024 (=> (not res!256895) (not e!257396))))

(assert (=> start!40024 (= res!256895 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13135 _keys!709))))))

(assert (=> start!40024 e!257396))

(declare-fun tp_is_empty!11435 () Bool)

(assert (=> start!40024 tp_is_empty!11435))

(assert (=> start!40024 tp!36378))

(assert (=> start!40024 true))

(declare-fun e!257398 () Bool)

(declare-fun array_inv!9284 (array!26675) Bool)

(assert (=> start!40024 (and (array_inv!9284 _values!549) e!257398)))

(declare-fun array_inv!9285 (array!26673) Bool)

(assert (=> start!40024 (array_inv!9285 _keys!709)))

(declare-fun b!435780 () Bool)

(declare-fun e!257401 () Bool)

(assert (=> b!435780 (= e!257395 e!257401)))

(declare-fun res!256898 () Bool)

(assert (=> b!435780 (=> res!256898 e!257401)))

(assert (=> b!435780 (= res!256898 (= k!794 (select (arr!12783 _keys!709) from!863)))))

(assert (=> b!435780 (not (= (select (arr!12783 _keys!709) from!863) k!794))))

(declare-fun lt!200847 () Unit!12907)

(declare-fun e!257403 () Unit!12907)

(assert (=> b!435780 (= lt!200847 e!257403)))

(declare-fun c!55685 () Bool)

(assert (=> b!435780 (= c!55685 (= (select (arr!12783 _keys!709) from!863) k!794))))

(declare-fun lt!200833 () ListLongMap!6493)

(declare-fun lt!200834 () ListLongMap!6493)

(assert (=> b!435780 (= lt!200833 lt!200834)))

(declare-fun lt!200837 () tuple2!7566)

(assert (=> b!435780 (= lt!200834 (+!1406 lt!200839 lt!200837))))

(declare-fun lt!200845 () V!16351)

(assert (=> b!435780 (= lt!200837 (tuple2!7567 (select (arr!12783 _keys!709) from!863) lt!200845))))

(declare-fun get!6380 (ValueCell!5374 V!16351) V!16351)

(declare-fun dynLambda!833 (Int (_ BitVec 64)) V!16351)

(assert (=> b!435780 (= lt!200845 (get!6380 (select (arr!12784 _values!549) from!863) (dynLambda!833 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!435781 () Bool)

(declare-fun e!257402 () Bool)

(assert (=> b!435781 (= e!257402 tp_is_empty!11435)))

(declare-fun b!435782 () Bool)

(declare-fun res!256900 () Bool)

(assert (=> b!435782 (=> (not res!256900) (not e!257396))))

(assert (=> b!435782 (= res!256900 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13135 _keys!709))))))

(declare-fun b!435783 () Bool)

(declare-fun res!256899 () Bool)

(declare-fun e!257404 () Bool)

(assert (=> b!435783 (=> (not res!256899) (not e!257404))))

(declare-datatypes ((List!7610 0))(
  ( (Nil!7607) (Cons!7606 (h!8462 (_ BitVec 64)) (t!13350 List!7610)) )
))
(declare-fun arrayNoDuplicates!0 (array!26673 (_ BitVec 32) List!7610) Bool)

(assert (=> b!435783 (= res!256899 (arrayNoDuplicates!0 lt!200844 #b00000000000000000000000000000000 Nil!7607))))

(declare-fun b!435784 () Bool)

(declare-fun res!256896 () Bool)

(assert (=> b!435784 (=> (not res!256896) (not e!257396))))

(assert (=> b!435784 (= res!256896 (validKeyInArray!0 k!794))))

(declare-fun b!435785 () Bool)

(assert (=> b!435785 (= e!257401 true)))

(assert (=> b!435785 (= lt!200834 (+!1406 (+!1406 lt!200842 lt!200837) lt!200838))))

(declare-fun lt!200841 () Unit!12907)

(declare-fun addCommutativeForDiffKeys!409 (ListLongMap!6493 (_ BitVec 64) V!16351 (_ BitVec 64) V!16351) Unit!12907)

(assert (=> b!435785 (= lt!200841 (addCommutativeForDiffKeys!409 lt!200842 k!794 v!412 (select (arr!12783 _keys!709) from!863) lt!200845))))

(declare-fun b!435786 () Bool)

(declare-fun Unit!12909 () Unit!12907)

(assert (=> b!435786 (= e!257403 Unit!12909)))

(declare-fun lt!200843 () Unit!12907)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26673 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12907)

(assert (=> b!435786 (= lt!200843 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!435786 false))

(declare-fun b!435787 () Bool)

(declare-fun e!257400 () Bool)

(assert (=> b!435787 (= e!257400 tp_is_empty!11435)))

(declare-fun mapNonEmpty!18774 () Bool)

(declare-fun tp!36377 () Bool)

(assert (=> mapNonEmpty!18774 (= mapRes!18774 (and tp!36377 e!257402))))

(declare-fun mapRest!18774 () (Array (_ BitVec 32) ValueCell!5374))

(declare-fun mapValue!18774 () ValueCell!5374)

(declare-fun mapKey!18774 () (_ BitVec 32))

(assert (=> mapNonEmpty!18774 (= (arr!12784 _values!549) (store mapRest!18774 mapKey!18774 mapValue!18774))))

(declare-fun b!435788 () Bool)

(declare-fun res!256901 () Bool)

(assert (=> b!435788 (=> (not res!256901) (not e!257396))))

(assert (=> b!435788 (= res!256901 (or (= (select (arr!12783 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12783 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!435789 () Bool)

(declare-fun res!256905 () Bool)

(assert (=> b!435789 (=> (not res!256905) (not e!257396))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26673 (_ BitVec 32)) Bool)

(assert (=> b!435789 (= res!256905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!435790 () Bool)

(declare-fun res!256904 () Bool)

(assert (=> b!435790 (=> (not res!256904) (not e!257404))))

(assert (=> b!435790 (= res!256904 (bvsle from!863 i!563))))

(declare-fun b!435791 () Bool)

(declare-fun res!256892 () Bool)

(assert (=> b!435791 (=> (not res!256892) (not e!257396))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!435791 (= res!256892 (validMask!0 mask!1025))))

(declare-fun b!435792 () Bool)

(declare-fun res!256893 () Bool)

(assert (=> b!435792 (=> (not res!256893) (not e!257396))))

(declare-fun arrayContainsKey!0 (array!26673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!435792 (= res!256893 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!435793 () Bool)

(assert (=> b!435793 (= e!257404 e!257399)))

(declare-fun res!256891 () Bool)

(assert (=> b!435793 (=> (not res!256891) (not e!257399))))

(assert (=> b!435793 (= res!256891 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!435793 (= lt!200833 (getCurrentListMapNoExtraKeys!1445 lt!200844 lt!200840 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!435793 (= lt!200840 (array!26676 (store (arr!12784 _values!549) i!563 (ValueCellFull!5374 v!412)) (size!13136 _values!549)))))

(declare-fun lt!200846 () ListLongMap!6493)

(assert (=> b!435793 (= lt!200846 (getCurrentListMapNoExtraKeys!1445 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!435794 () Bool)

(declare-fun res!256903 () Bool)

(assert (=> b!435794 (=> (not res!256903) (not e!257396))))

(assert (=> b!435794 (= res!256903 (and (= (size!13136 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13135 _keys!709) (size!13136 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!435795 () Bool)

(assert (=> b!435795 (= e!257396 e!257404)))

(declare-fun res!256894 () Bool)

(assert (=> b!435795 (=> (not res!256894) (not e!257404))))

(assert (=> b!435795 (= res!256894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!200844 mask!1025))))

(assert (=> b!435795 (= lt!200844 (array!26674 (store (arr!12783 _keys!709) i!563 k!794) (size!13135 _keys!709)))))

(declare-fun b!435796 () Bool)

(declare-fun res!256902 () Bool)

(assert (=> b!435796 (=> (not res!256902) (not e!257396))))

(assert (=> b!435796 (= res!256902 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7607))))

(declare-fun b!435797 () Bool)

(declare-fun Unit!12910 () Unit!12907)

(assert (=> b!435797 (= e!257403 Unit!12910)))

(declare-fun b!435798 () Bool)

(assert (=> b!435798 (= e!257398 (and e!257400 mapRes!18774))))

(declare-fun condMapEmpty!18774 () Bool)

(declare-fun mapDefault!18774 () ValueCell!5374)

