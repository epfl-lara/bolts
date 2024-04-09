; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40112 () Bool)

(assert start!40112)

(declare-fun b_free!10371 () Bool)

(declare-fun b_next!10371 () Bool)

(assert (=> start!40112 (= b_free!10371 (not b_next!10371))))

(declare-fun tp!36641 () Bool)

(declare-fun b_and!18357 () Bool)

(assert (=> start!40112 (= tp!36641 b_and!18357)))

(declare-fun b!438065 () Bool)

(declare-fun e!258434 () Bool)

(declare-fun tp_is_empty!11523 () Bool)

(assert (=> b!438065 (= e!258434 tp_is_empty!11523)))

(declare-fun b!438066 () Bool)

(declare-fun e!258436 () Bool)

(assert (=> b!438066 (= e!258436 (not true))))

(declare-datatypes ((V!16469 0))(
  ( (V!16470 (val!5806 Int)) )
))
(declare-fun minValue!515 () V!16469)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5418 0))(
  ( (ValueCellFull!5418 (v!8049 V!16469)) (EmptyCell!5418) )
))
(declare-datatypes ((array!26843 0))(
  ( (array!26844 (arr!12868 (Array (_ BitVec 32) ValueCell!5418)) (size!13220 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26843)

(declare-fun zeroValue!515 () V!16469)

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((array!26845 0))(
  ( (array!26846 (arr!12869 (Array (_ BitVec 32) (_ BitVec 64))) (size!13221 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26845)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!201866 () array!26845)

(declare-fun v!412 () V!16469)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!201863 () array!26843)

(declare-datatypes ((tuple2!7630 0))(
  ( (tuple2!7631 (_1!3825 (_ BitVec 64)) (_2!3825 V!16469)) )
))
(declare-datatypes ((List!7673 0))(
  ( (Nil!7670) (Cons!7669 (h!8525 tuple2!7630) (t!13437 List!7673)) )
))
(declare-datatypes ((ListLongMap!6557 0))(
  ( (ListLongMap!6558 (toList!3294 List!7673)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1476 (array!26845 array!26843 (_ BitVec 32) (_ BitVec 32) V!16469 V!16469 (_ BitVec 32) Int) ListLongMap!6557)

(declare-fun +!1437 (ListLongMap!6557 tuple2!7630) ListLongMap!6557)

(assert (=> b!438066 (= (getCurrentListMapNoExtraKeys!1476 lt!201866 lt!201863 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1437 (getCurrentListMapNoExtraKeys!1476 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7631 k0!794 v!412)))))

(declare-datatypes ((Unit!12989 0))(
  ( (Unit!12990) )
))
(declare-fun lt!201867 () Unit!12989)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!615 (array!26845 array!26843 (_ BitVec 32) (_ BitVec 32) V!16469 V!16469 (_ BitVec 32) (_ BitVec 64) V!16469 (_ BitVec 32) Int) Unit!12989)

(assert (=> b!438066 (= lt!201867 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!615 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!258685 () Bool)

(declare-fun e!258435 () Bool)

(assert (=> start!40112 (=> (not res!258685) (not e!258435))))

(assert (=> start!40112 (= res!258685 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13221 _keys!709))))))

(assert (=> start!40112 e!258435))

(assert (=> start!40112 tp_is_empty!11523))

(assert (=> start!40112 tp!36641))

(assert (=> start!40112 true))

(declare-fun e!258432 () Bool)

(declare-fun array_inv!9342 (array!26843) Bool)

(assert (=> start!40112 (and (array_inv!9342 _values!549) e!258432)))

(declare-fun array_inv!9343 (array!26845) Bool)

(assert (=> start!40112 (array_inv!9343 _keys!709)))

(declare-fun b!438067 () Bool)

(declare-fun res!258692 () Bool)

(declare-fun e!258433 () Bool)

(assert (=> b!438067 (=> (not res!258692) (not e!258433))))

(assert (=> b!438067 (= res!258692 (bvsle from!863 i!563))))

(declare-fun b!438068 () Bool)

(assert (=> b!438068 (= e!258433 e!258436)))

(declare-fun res!258691 () Bool)

(assert (=> b!438068 (=> (not res!258691) (not e!258436))))

(assert (=> b!438068 (= res!258691 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!201864 () ListLongMap!6557)

(assert (=> b!438068 (= lt!201864 (getCurrentListMapNoExtraKeys!1476 lt!201866 lt!201863 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!438068 (= lt!201863 (array!26844 (store (arr!12868 _values!549) i!563 (ValueCellFull!5418 v!412)) (size!13220 _values!549)))))

(declare-fun lt!201865 () ListLongMap!6557)

(assert (=> b!438068 (= lt!201865 (getCurrentListMapNoExtraKeys!1476 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!438069 () Bool)

(declare-fun mapRes!18906 () Bool)

(assert (=> b!438069 (= e!258432 (and e!258434 mapRes!18906))))

(declare-fun condMapEmpty!18906 () Bool)

(declare-fun mapDefault!18906 () ValueCell!5418)

(assert (=> b!438069 (= condMapEmpty!18906 (= (arr!12868 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5418)) mapDefault!18906)))))

(declare-fun b!438070 () Bool)

(declare-fun res!258682 () Bool)

(assert (=> b!438070 (=> (not res!258682) (not e!258435))))

(declare-datatypes ((List!7674 0))(
  ( (Nil!7671) (Cons!7670 (h!8526 (_ BitVec 64)) (t!13438 List!7674)) )
))
(declare-fun arrayNoDuplicates!0 (array!26845 (_ BitVec 32) List!7674) Bool)

(assert (=> b!438070 (= res!258682 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7671))))

(declare-fun mapNonEmpty!18906 () Bool)

(declare-fun tp!36642 () Bool)

(declare-fun e!258430 () Bool)

(assert (=> mapNonEmpty!18906 (= mapRes!18906 (and tp!36642 e!258430))))

(declare-fun mapKey!18906 () (_ BitVec 32))

(declare-fun mapValue!18906 () ValueCell!5418)

(declare-fun mapRest!18906 () (Array (_ BitVec 32) ValueCell!5418))

(assert (=> mapNonEmpty!18906 (= (arr!12868 _values!549) (store mapRest!18906 mapKey!18906 mapValue!18906))))

(declare-fun mapIsEmpty!18906 () Bool)

(assert (=> mapIsEmpty!18906 mapRes!18906))

(declare-fun b!438071 () Bool)

(declare-fun res!258688 () Bool)

(assert (=> b!438071 (=> (not res!258688) (not e!258435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!438071 (= res!258688 (validMask!0 mask!1025))))

(declare-fun b!438072 () Bool)

(declare-fun res!258690 () Bool)

(assert (=> b!438072 (=> (not res!258690) (not e!258435))))

(assert (=> b!438072 (= res!258690 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13221 _keys!709))))))

(declare-fun b!438073 () Bool)

(declare-fun res!258683 () Bool)

(assert (=> b!438073 (=> (not res!258683) (not e!258435))))

(declare-fun arrayContainsKey!0 (array!26845 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!438073 (= res!258683 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!438074 () Bool)

(assert (=> b!438074 (= e!258435 e!258433)))

(declare-fun res!258686 () Bool)

(assert (=> b!438074 (=> (not res!258686) (not e!258433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26845 (_ BitVec 32)) Bool)

(assert (=> b!438074 (= res!258686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201866 mask!1025))))

(assert (=> b!438074 (= lt!201866 (array!26846 (store (arr!12869 _keys!709) i!563 k0!794) (size!13221 _keys!709)))))

(declare-fun b!438075 () Bool)

(declare-fun res!258689 () Bool)

(assert (=> b!438075 (=> (not res!258689) (not e!258433))))

(assert (=> b!438075 (= res!258689 (arrayNoDuplicates!0 lt!201866 #b00000000000000000000000000000000 Nil!7671))))

(declare-fun b!438076 () Bool)

(declare-fun res!258693 () Bool)

(assert (=> b!438076 (=> (not res!258693) (not e!258435))))

(assert (=> b!438076 (= res!258693 (and (= (size!13220 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13221 _keys!709) (size!13220 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!438077 () Bool)

(assert (=> b!438077 (= e!258430 tp_is_empty!11523)))

(declare-fun b!438078 () Bool)

(declare-fun res!258684 () Bool)

(assert (=> b!438078 (=> (not res!258684) (not e!258435))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!438078 (= res!258684 (validKeyInArray!0 k0!794))))

(declare-fun b!438079 () Bool)

(declare-fun res!258687 () Bool)

(assert (=> b!438079 (=> (not res!258687) (not e!258435))))

(assert (=> b!438079 (= res!258687 (or (= (select (arr!12869 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12869 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!438080 () Bool)

(declare-fun res!258681 () Bool)

(assert (=> b!438080 (=> (not res!258681) (not e!258435))))

(assert (=> b!438080 (= res!258681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!40112 res!258685) b!438071))

(assert (= (and b!438071 res!258688) b!438076))

(assert (= (and b!438076 res!258693) b!438080))

(assert (= (and b!438080 res!258681) b!438070))

(assert (= (and b!438070 res!258682) b!438072))

(assert (= (and b!438072 res!258690) b!438078))

(assert (= (and b!438078 res!258684) b!438079))

(assert (= (and b!438079 res!258687) b!438073))

(assert (= (and b!438073 res!258683) b!438074))

(assert (= (and b!438074 res!258686) b!438075))

(assert (= (and b!438075 res!258689) b!438067))

(assert (= (and b!438067 res!258692) b!438068))

(assert (= (and b!438068 res!258691) b!438066))

(assert (= (and b!438069 condMapEmpty!18906) mapIsEmpty!18906))

(assert (= (and b!438069 (not condMapEmpty!18906)) mapNonEmpty!18906))

(get-info :version)

(assert (= (and mapNonEmpty!18906 ((_ is ValueCellFull!5418) mapValue!18906)) b!438077))

(assert (= (and b!438069 ((_ is ValueCellFull!5418) mapDefault!18906)) b!438065))

(assert (= start!40112 b!438069))

(declare-fun m!425601 () Bool)

(assert (=> b!438070 m!425601))

(declare-fun m!425603 () Bool)

(assert (=> mapNonEmpty!18906 m!425603))

(declare-fun m!425605 () Bool)

(assert (=> b!438075 m!425605))

(declare-fun m!425607 () Bool)

(assert (=> b!438073 m!425607))

(declare-fun m!425609 () Bool)

(assert (=> b!438078 m!425609))

(declare-fun m!425611 () Bool)

(assert (=> start!40112 m!425611))

(declare-fun m!425613 () Bool)

(assert (=> start!40112 m!425613))

(declare-fun m!425615 () Bool)

(assert (=> b!438074 m!425615))

(declare-fun m!425617 () Bool)

(assert (=> b!438074 m!425617))

(declare-fun m!425619 () Bool)

(assert (=> b!438066 m!425619))

(declare-fun m!425621 () Bool)

(assert (=> b!438066 m!425621))

(assert (=> b!438066 m!425621))

(declare-fun m!425623 () Bool)

(assert (=> b!438066 m!425623))

(declare-fun m!425625 () Bool)

(assert (=> b!438066 m!425625))

(declare-fun m!425627 () Bool)

(assert (=> b!438068 m!425627))

(declare-fun m!425629 () Bool)

(assert (=> b!438068 m!425629))

(declare-fun m!425631 () Bool)

(assert (=> b!438068 m!425631))

(declare-fun m!425633 () Bool)

(assert (=> b!438071 m!425633))

(declare-fun m!425635 () Bool)

(assert (=> b!438080 m!425635))

(declare-fun m!425637 () Bool)

(assert (=> b!438079 m!425637))

(check-sat (not b!438080) tp_is_empty!11523 (not b!438074) (not b_next!10371) b_and!18357 (not b!438078) (not start!40112) (not b!438070) (not b!438068) (not b!438066) (not mapNonEmpty!18906) (not b!438075) (not b!438071) (not b!438073))
(check-sat b_and!18357 (not b_next!10371))
