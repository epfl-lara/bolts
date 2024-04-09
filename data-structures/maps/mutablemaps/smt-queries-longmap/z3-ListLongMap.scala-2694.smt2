; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39992 () Bool)

(assert start!39992)

(declare-fun b_free!10251 () Bool)

(declare-fun b_next!10251 () Bool)

(assert (=> start!39992 (= b_free!10251 (not b_next!10251))))

(declare-fun tp!36281 () Bool)

(declare-fun b_and!18179 () Bool)

(assert (=> start!39992 (= tp!36281 b_and!18179)))

(declare-fun b!434787 () Bool)

(declare-fun res!256173 () Bool)

(declare-fun e!256919 () Bool)

(assert (=> b!434787 (=> (not res!256173) (not e!256919))))

(declare-datatypes ((array!26611 0))(
  ( (array!26612 (arr!12752 (Array (_ BitVec 32) (_ BitVec 64))) (size!13104 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26611)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16309 0))(
  ( (V!16310 (val!5746 Int)) )
))
(declare-datatypes ((ValueCell!5358 0))(
  ( (ValueCellFull!5358 (v!7989 V!16309)) (EmptyCell!5358) )
))
(declare-datatypes ((array!26613 0))(
  ( (array!26614 (arr!12753 (Array (_ BitVec 32) ValueCell!5358)) (size!13105 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26613)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!434787 (= res!256173 (and (= (size!13105 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13104 _keys!709) (size!13105 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!434788 () Bool)

(declare-fun res!256178 () Bool)

(assert (=> b!434788 (=> (not res!256178) (not e!256919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!434788 (= res!256178 (validMask!0 mask!1025))))

(declare-fun b!434789 () Bool)

(declare-fun e!256920 () Bool)

(assert (=> b!434789 (= e!256919 e!256920)))

(declare-fun res!256184 () Bool)

(assert (=> b!434789 (=> (not res!256184) (not e!256920))))

(declare-fun lt!200119 () array!26611)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26611 (_ BitVec 32)) Bool)

(assert (=> b!434789 (= res!256184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!200119 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!434789 (= lt!200119 (array!26612 (store (arr!12752 _keys!709) i!563 k0!794) (size!13104 _keys!709)))))

(declare-fun mapIsEmpty!18726 () Bool)

(declare-fun mapRes!18726 () Bool)

(assert (=> mapIsEmpty!18726 mapRes!18726))

(declare-fun b!434790 () Bool)

(declare-fun res!256179 () Bool)

(assert (=> b!434790 (=> (not res!256179) (not e!256919))))

(assert (=> b!434790 (= res!256179 (or (= (select (arr!12752 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12752 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434791 () Bool)

(declare-fun e!256924 () Bool)

(declare-fun e!256916 () Bool)

(assert (=> b!434791 (= e!256924 (not e!256916))))

(declare-fun res!256171 () Bool)

(assert (=> b!434791 (=> res!256171 e!256916)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!434791 (= res!256171 (not (validKeyInArray!0 (select (arr!12752 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7536 0))(
  ( (tuple2!7537 (_1!3778 (_ BitVec 64)) (_2!3778 V!16309)) )
))
(declare-datatypes ((List!7583 0))(
  ( (Nil!7580) (Cons!7579 (h!8435 tuple2!7536) (t!13291 List!7583)) )
))
(declare-datatypes ((ListLongMap!6463 0))(
  ( (ListLongMap!6464 (toList!3247 List!7583)) )
))
(declare-fun lt!200115 () ListLongMap!6463)

(declare-fun lt!200127 () ListLongMap!6463)

(assert (=> b!434791 (= lt!200115 lt!200127)))

(declare-fun lt!200122 () ListLongMap!6463)

(declare-fun lt!200114 () tuple2!7536)

(declare-fun +!1392 (ListLongMap!6463 tuple2!7536) ListLongMap!6463)

(assert (=> b!434791 (= lt!200127 (+!1392 lt!200122 lt!200114))))

(declare-fun minValue!515 () V!16309)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!200113 () array!26613)

(declare-fun zeroValue!515 () V!16309)

(declare-fun getCurrentListMapNoExtraKeys!1431 (array!26611 array!26613 (_ BitVec 32) (_ BitVec 32) V!16309 V!16309 (_ BitVec 32) Int) ListLongMap!6463)

(assert (=> b!434791 (= lt!200115 (getCurrentListMapNoExtraKeys!1431 lt!200119 lt!200113 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16309)

(assert (=> b!434791 (= lt!200114 (tuple2!7537 k0!794 v!412))))

(assert (=> b!434791 (= lt!200122 (getCurrentListMapNoExtraKeys!1431 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12858 0))(
  ( (Unit!12859) )
))
(declare-fun lt!200126 () Unit!12858)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!573 (array!26611 array!26613 (_ BitVec 32) (_ BitVec 32) V!16309 V!16309 (_ BitVec 32) (_ BitVec 64) V!16309 (_ BitVec 32) Int) Unit!12858)

(assert (=> b!434791 (= lt!200126 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!573 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!434792 () Bool)

(declare-fun res!256183 () Bool)

(assert (=> b!434792 (=> (not res!256183) (not e!256919))))

(declare-fun arrayContainsKey!0 (array!26611 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!434792 (= res!256183 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!434793 () Bool)

(declare-fun e!256923 () Bool)

(declare-fun e!256915 () Bool)

(assert (=> b!434793 (= e!256923 (and e!256915 mapRes!18726))))

(declare-fun condMapEmpty!18726 () Bool)

(declare-fun mapDefault!18726 () ValueCell!5358)

(assert (=> b!434793 (= condMapEmpty!18726 (= (arr!12753 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5358)) mapDefault!18726)))))

(declare-fun b!434794 () Bool)

(declare-fun res!256175 () Bool)

(assert (=> b!434794 (=> (not res!256175) (not e!256920))))

(assert (=> b!434794 (= res!256175 (bvsle from!863 i!563))))

(declare-fun b!434795 () Bool)

(declare-fun res!256174 () Bool)

(assert (=> b!434795 (=> (not res!256174) (not e!256919))))

(assert (=> b!434795 (= res!256174 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13104 _keys!709))))))

(declare-fun b!434796 () Bool)

(declare-fun res!256176 () Bool)

(assert (=> b!434796 (=> (not res!256176) (not e!256919))))

(assert (=> b!434796 (= res!256176 (validKeyInArray!0 k0!794))))

(declare-fun b!434797 () Bool)

(declare-fun res!256180 () Bool)

(assert (=> b!434797 (=> (not res!256180) (not e!256920))))

(declare-datatypes ((List!7584 0))(
  ( (Nil!7581) (Cons!7580 (h!8436 (_ BitVec 64)) (t!13292 List!7584)) )
))
(declare-fun arrayNoDuplicates!0 (array!26611 (_ BitVec 32) List!7584) Bool)

(assert (=> b!434797 (= res!256180 (arrayNoDuplicates!0 lt!200119 #b00000000000000000000000000000000 Nil!7581))))

(declare-fun b!434798 () Bool)

(assert (=> b!434798 (= e!256920 e!256924)))

(declare-fun res!256177 () Bool)

(assert (=> b!434798 (=> (not res!256177) (not e!256924))))

(assert (=> b!434798 (= res!256177 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!200116 () ListLongMap!6463)

(assert (=> b!434798 (= lt!200116 (getCurrentListMapNoExtraKeys!1431 lt!200119 lt!200113 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!434798 (= lt!200113 (array!26614 (store (arr!12753 _values!549) i!563 (ValueCellFull!5358 v!412)) (size!13105 _values!549)))))

(declare-fun lt!200118 () ListLongMap!6463)

(assert (=> b!434798 (= lt!200118 (getCurrentListMapNoExtraKeys!1431 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!256182 () Bool)

(assert (=> start!39992 (=> (not res!256182) (not e!256919))))

(assert (=> start!39992 (= res!256182 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13104 _keys!709))))))

(assert (=> start!39992 e!256919))

(declare-fun tp_is_empty!11403 () Bool)

(assert (=> start!39992 tp_is_empty!11403))

(assert (=> start!39992 tp!36281))

(assert (=> start!39992 true))

(declare-fun array_inv!9268 (array!26613) Bool)

(assert (=> start!39992 (and (array_inv!9268 _values!549) e!256923)))

(declare-fun array_inv!9269 (array!26611) Bool)

(assert (=> start!39992 (array_inv!9269 _keys!709)))

(declare-fun b!434799 () Bool)

(declare-fun res!256185 () Bool)

(assert (=> b!434799 (=> (not res!256185) (not e!256919))))

(assert (=> b!434799 (= res!256185 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7581))))

(declare-fun b!434800 () Bool)

(declare-fun e!256921 () Bool)

(assert (=> b!434800 (= e!256921 tp_is_empty!11403)))

(declare-fun b!434801 () Bool)

(declare-fun e!256917 () Bool)

(assert (=> b!434801 (= e!256916 e!256917)))

(declare-fun res!256172 () Bool)

(assert (=> b!434801 (=> res!256172 e!256917)))

(assert (=> b!434801 (= res!256172 (= k0!794 (select (arr!12752 _keys!709) from!863)))))

(assert (=> b!434801 (not (= (select (arr!12752 _keys!709) from!863) k0!794))))

(declare-fun lt!200124 () Unit!12858)

(declare-fun e!256922 () Unit!12858)

(assert (=> b!434801 (= lt!200124 e!256922)))

(declare-fun c!55637 () Bool)

(assert (=> b!434801 (= c!55637 (= (select (arr!12752 _keys!709) from!863) k0!794))))

(declare-fun lt!200125 () ListLongMap!6463)

(assert (=> b!434801 (= lt!200116 lt!200125)))

(declare-fun lt!200117 () tuple2!7536)

(assert (=> b!434801 (= lt!200125 (+!1392 lt!200127 lt!200117))))

(declare-fun lt!200123 () V!16309)

(assert (=> b!434801 (= lt!200117 (tuple2!7537 (select (arr!12752 _keys!709) from!863) lt!200123))))

(declare-fun get!6359 (ValueCell!5358 V!16309) V!16309)

(declare-fun dynLambda!822 (Int (_ BitVec 64)) V!16309)

(assert (=> b!434801 (= lt!200123 (get!6359 (select (arr!12753 _values!549) from!863) (dynLambda!822 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434802 () Bool)

(assert (=> b!434802 (= e!256917 true)))

(assert (=> b!434802 (= lt!200125 (+!1392 (+!1392 lt!200122 lt!200117) lt!200114))))

(declare-fun lt!200121 () Unit!12858)

(declare-fun addCommutativeForDiffKeys!398 (ListLongMap!6463 (_ BitVec 64) V!16309 (_ BitVec 64) V!16309) Unit!12858)

(assert (=> b!434802 (= lt!200121 (addCommutativeForDiffKeys!398 lt!200122 k0!794 v!412 (select (arr!12752 _keys!709) from!863) lt!200123))))

(declare-fun b!434803 () Bool)

(declare-fun Unit!12860 () Unit!12858)

(assert (=> b!434803 (= e!256922 Unit!12860)))

(declare-fun lt!200120 () Unit!12858)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26611 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12858)

(assert (=> b!434803 (= lt!200120 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!434803 false))

(declare-fun mapNonEmpty!18726 () Bool)

(declare-fun tp!36282 () Bool)

(assert (=> mapNonEmpty!18726 (= mapRes!18726 (and tp!36282 e!256921))))

(declare-fun mapRest!18726 () (Array (_ BitVec 32) ValueCell!5358))

(declare-fun mapKey!18726 () (_ BitVec 32))

(declare-fun mapValue!18726 () ValueCell!5358)

(assert (=> mapNonEmpty!18726 (= (arr!12753 _values!549) (store mapRest!18726 mapKey!18726 mapValue!18726))))

(declare-fun b!434804 () Bool)

(declare-fun Unit!12861 () Unit!12858)

(assert (=> b!434804 (= e!256922 Unit!12861)))

(declare-fun b!434805 () Bool)

(declare-fun res!256181 () Bool)

(assert (=> b!434805 (=> (not res!256181) (not e!256919))))

(assert (=> b!434805 (= res!256181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!434806 () Bool)

(assert (=> b!434806 (= e!256915 tp_is_empty!11403)))

(assert (= (and start!39992 res!256182) b!434788))

(assert (= (and b!434788 res!256178) b!434787))

(assert (= (and b!434787 res!256173) b!434805))

(assert (= (and b!434805 res!256181) b!434799))

(assert (= (and b!434799 res!256185) b!434795))

(assert (= (and b!434795 res!256174) b!434796))

(assert (= (and b!434796 res!256176) b!434790))

(assert (= (and b!434790 res!256179) b!434792))

(assert (= (and b!434792 res!256183) b!434789))

(assert (= (and b!434789 res!256184) b!434797))

(assert (= (and b!434797 res!256180) b!434794))

(assert (= (and b!434794 res!256175) b!434798))

(assert (= (and b!434798 res!256177) b!434791))

(assert (= (and b!434791 (not res!256171)) b!434801))

(assert (= (and b!434801 c!55637) b!434803))

(assert (= (and b!434801 (not c!55637)) b!434804))

(assert (= (and b!434801 (not res!256172)) b!434802))

(assert (= (and b!434793 condMapEmpty!18726) mapIsEmpty!18726))

(assert (= (and b!434793 (not condMapEmpty!18726)) mapNonEmpty!18726))

(get-info :version)

(assert (= (and mapNonEmpty!18726 ((_ is ValueCellFull!5358) mapValue!18726)) b!434800))

(assert (= (and b!434793 ((_ is ValueCellFull!5358) mapDefault!18726)) b!434806))

(assert (= start!39992 b!434793))

(declare-fun b_lambda!9369 () Bool)

(assert (=> (not b_lambda!9369) (not b!434801)))

(declare-fun t!13290 () Bool)

(declare-fun tb!3665 () Bool)

(assert (=> (and start!39992 (= defaultEntry!557 defaultEntry!557) t!13290) tb!3665))

(declare-fun result!6849 () Bool)

(assert (=> tb!3665 (= result!6849 tp_is_empty!11403)))

(assert (=> b!434801 t!13290))

(declare-fun b_and!18181 () Bool)

(assert (= b_and!18179 (and (=> t!13290 result!6849) b_and!18181)))

(declare-fun m!422741 () Bool)

(assert (=> b!434799 m!422741))

(declare-fun m!422743 () Bool)

(assert (=> b!434796 m!422743))

(declare-fun m!422745 () Bool)

(assert (=> b!434798 m!422745))

(declare-fun m!422747 () Bool)

(assert (=> b!434798 m!422747))

(declare-fun m!422749 () Bool)

(assert (=> b!434798 m!422749))

(declare-fun m!422751 () Bool)

(assert (=> mapNonEmpty!18726 m!422751))

(declare-fun m!422753 () Bool)

(assert (=> b!434797 m!422753))

(declare-fun m!422755 () Bool)

(assert (=> b!434803 m!422755))

(declare-fun m!422757 () Bool)

(assert (=> start!39992 m!422757))

(declare-fun m!422759 () Bool)

(assert (=> start!39992 m!422759))

(declare-fun m!422761 () Bool)

(assert (=> b!434789 m!422761))

(declare-fun m!422763 () Bool)

(assert (=> b!434789 m!422763))

(declare-fun m!422765 () Bool)

(assert (=> b!434801 m!422765))

(declare-fun m!422767 () Bool)

(assert (=> b!434801 m!422767))

(declare-fun m!422769 () Bool)

(assert (=> b!434801 m!422769))

(assert (=> b!434801 m!422769))

(assert (=> b!434801 m!422767))

(declare-fun m!422771 () Bool)

(assert (=> b!434801 m!422771))

(declare-fun m!422773 () Bool)

(assert (=> b!434801 m!422773))

(assert (=> b!434791 m!422765))

(declare-fun m!422775 () Bool)

(assert (=> b!434791 m!422775))

(declare-fun m!422777 () Bool)

(assert (=> b!434791 m!422777))

(declare-fun m!422779 () Bool)

(assert (=> b!434791 m!422779))

(assert (=> b!434791 m!422765))

(declare-fun m!422781 () Bool)

(assert (=> b!434791 m!422781))

(declare-fun m!422783 () Bool)

(assert (=> b!434791 m!422783))

(declare-fun m!422785 () Bool)

(assert (=> b!434802 m!422785))

(assert (=> b!434802 m!422785))

(declare-fun m!422787 () Bool)

(assert (=> b!434802 m!422787))

(assert (=> b!434802 m!422765))

(assert (=> b!434802 m!422765))

(declare-fun m!422789 () Bool)

(assert (=> b!434802 m!422789))

(declare-fun m!422791 () Bool)

(assert (=> b!434788 m!422791))

(declare-fun m!422793 () Bool)

(assert (=> b!434790 m!422793))

(declare-fun m!422795 () Bool)

(assert (=> b!434805 m!422795))

(declare-fun m!422797 () Bool)

(assert (=> b!434792 m!422797))

(check-sat (not b!434805) (not b!434797) (not b!434792) (not b!434801) (not start!39992) (not b!434791) (not mapNonEmpty!18726) b_and!18181 (not b!434799) (not b_lambda!9369) (not b!434788) (not b!434789) tp_is_empty!11403 (not b!434796) (not b!434802) (not b_next!10251) (not b!434798) (not b!434803))
(check-sat b_and!18181 (not b_next!10251))
