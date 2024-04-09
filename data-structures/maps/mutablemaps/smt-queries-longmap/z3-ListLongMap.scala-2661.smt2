; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39794 () Bool)

(assert start!39794)

(declare-fun b_free!10053 () Bool)

(declare-fun b_next!10053 () Bool)

(assert (=> start!39794 (= b_free!10053 (not b_next!10053))))

(declare-fun tp!35688 () Bool)

(declare-fun b_and!17783 () Bool)

(assert (=> start!39794 (= tp!35688 b_and!17783)))

(declare-fun b!428707 () Bool)

(declare-datatypes ((Unit!12547 0))(
  ( (Unit!12548) )
))
(declare-fun e!254005 () Unit!12547)

(declare-fun Unit!12549 () Unit!12547)

(assert (=> b!428707 (= e!254005 Unit!12549)))

(declare-fun b!428708 () Bool)

(declare-fun res!251778 () Bool)

(declare-fun e!254006 () Bool)

(assert (=> b!428708 (=> (not res!251778) (not e!254006))))

(declare-datatypes ((array!26227 0))(
  ( (array!26228 (arr!12560 (Array (_ BitVec 32) (_ BitVec 64))) (size!12912 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26227)

(declare-datatypes ((List!7419 0))(
  ( (Nil!7416) (Cons!7415 (h!8271 (_ BitVec 64)) (t!12929 List!7419)) )
))
(declare-fun arrayNoDuplicates!0 (array!26227 (_ BitVec 32) List!7419) Bool)

(assert (=> b!428708 (= res!251778 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7416))))

(declare-fun mapNonEmpty!18429 () Bool)

(declare-fun mapRes!18429 () Bool)

(declare-fun tp!35687 () Bool)

(declare-fun e!254007 () Bool)

(assert (=> mapNonEmpty!18429 (= mapRes!18429 (and tp!35687 e!254007))))

(declare-datatypes ((V!16045 0))(
  ( (V!16046 (val!5647 Int)) )
))
(declare-datatypes ((ValueCell!5259 0))(
  ( (ValueCellFull!5259 (v!7890 V!16045)) (EmptyCell!5259) )
))
(declare-datatypes ((array!26229 0))(
  ( (array!26230 (arr!12561 (Array (_ BitVec 32) ValueCell!5259)) (size!12913 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26229)

(declare-fun mapRest!18429 () (Array (_ BitVec 32) ValueCell!5259))

(declare-fun mapKey!18429 () (_ BitVec 32))

(declare-fun mapValue!18429 () ValueCell!5259)

(assert (=> mapNonEmpty!18429 (= (arr!12561 _values!549) (store mapRest!18429 mapKey!18429 mapValue!18429))))

(declare-fun b!428709 () Bool)

(declare-fun res!251779 () Bool)

(assert (=> b!428709 (=> (not res!251779) (not e!254006))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!428709 (= res!251779 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!428710 () Bool)

(declare-fun res!251780 () Bool)

(assert (=> b!428710 (=> (not res!251780) (not e!254006))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!428710 (= res!251780 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12912 _keys!709))))))

(declare-fun mapIsEmpty!18429 () Bool)

(assert (=> mapIsEmpty!18429 mapRes!18429))

(declare-fun b!428712 () Bool)

(declare-fun res!251786 () Bool)

(assert (=> b!428712 (=> (not res!251786) (not e!254006))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26227 (_ BitVec 32)) Bool)

(assert (=> b!428712 (= res!251786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!428713 () Bool)

(declare-fun Unit!12550 () Unit!12547)

(assert (=> b!428713 (= e!254005 Unit!12550)))

(declare-fun lt!195957 () Unit!12547)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26227 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12547)

(assert (=> b!428713 (= lt!195957 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!428713 false))

(declare-fun b!428714 () Bool)

(declare-fun res!251785 () Bool)

(assert (=> b!428714 (=> (not res!251785) (not e!254006))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!428714 (= res!251785 (and (= (size!12913 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12912 _keys!709) (size!12913 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!428715 () Bool)

(declare-fun res!251783 () Bool)

(assert (=> b!428715 (=> (not res!251783) (not e!254006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!428715 (= res!251783 (validMask!0 mask!1025))))

(declare-fun b!428716 () Bool)

(declare-fun res!251787 () Bool)

(declare-fun e!254003 () Bool)

(assert (=> b!428716 (=> (not res!251787) (not e!254003))))

(declare-fun lt!195950 () array!26227)

(assert (=> b!428716 (= res!251787 (arrayNoDuplicates!0 lt!195950 #b00000000000000000000000000000000 Nil!7416))))

(declare-fun b!428717 () Bool)

(declare-fun e!254011 () Bool)

(assert (=> b!428717 (= e!254003 e!254011)))

(declare-fun res!251774 () Bool)

(assert (=> b!428717 (=> (not res!251774) (not e!254011))))

(assert (=> b!428717 (= res!251774 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((tuple2!7370 0))(
  ( (tuple2!7371 (_1!3695 (_ BitVec 64)) (_2!3695 V!16045)) )
))
(declare-datatypes ((List!7420 0))(
  ( (Nil!7417) (Cons!7416 (h!8272 tuple2!7370) (t!12930 List!7420)) )
))
(declare-datatypes ((ListLongMap!6297 0))(
  ( (ListLongMap!6298 (toList!3164 List!7420)) )
))
(declare-fun lt!195953 () ListLongMap!6297)

(declare-fun minValue!515 () V!16045)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!195954 () array!26229)

(declare-fun zeroValue!515 () V!16045)

(declare-fun getCurrentListMapNoExtraKeys!1363 (array!26227 array!26229 (_ BitVec 32) (_ BitVec 32) V!16045 V!16045 (_ BitVec 32) Int) ListLongMap!6297)

(assert (=> b!428717 (= lt!195953 (getCurrentListMapNoExtraKeys!1363 lt!195950 lt!195954 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16045)

(assert (=> b!428717 (= lt!195954 (array!26230 (store (arr!12561 _values!549) i!563 (ValueCellFull!5259 v!412)) (size!12913 _values!549)))))

(declare-fun lt!195956 () ListLongMap!6297)

(assert (=> b!428717 (= lt!195956 (getCurrentListMapNoExtraKeys!1363 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!428718 () Bool)

(declare-fun res!251775 () Bool)

(assert (=> b!428718 (=> (not res!251775) (not e!254006))))

(assert (=> b!428718 (= res!251775 (or (= (select (arr!12560 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12560 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!428719 () Bool)

(declare-fun tp_is_empty!11205 () Bool)

(assert (=> b!428719 (= e!254007 tp_is_empty!11205)))

(declare-fun b!428720 () Bool)

(declare-fun e!254010 () Bool)

(assert (=> b!428720 (= e!254011 (not e!254010))))

(declare-fun res!251784 () Bool)

(assert (=> b!428720 (=> res!251784 e!254010)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!428720 (= res!251784 (not (validKeyInArray!0 (select (arr!12560 _keys!709) from!863))))))

(declare-fun lt!195955 () ListLongMap!6297)

(declare-fun lt!195948 () ListLongMap!6297)

(assert (=> b!428720 (= lt!195955 lt!195948)))

(declare-fun lt!195951 () ListLongMap!6297)

(declare-fun +!1314 (ListLongMap!6297 tuple2!7370) ListLongMap!6297)

(assert (=> b!428720 (= lt!195948 (+!1314 lt!195951 (tuple2!7371 k0!794 v!412)))))

(assert (=> b!428720 (= lt!195955 (getCurrentListMapNoExtraKeys!1363 lt!195950 lt!195954 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!428720 (= lt!195951 (getCurrentListMapNoExtraKeys!1363 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!195949 () Unit!12547)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!514 (array!26227 array!26229 (_ BitVec 32) (_ BitVec 32) V!16045 V!16045 (_ BitVec 32) (_ BitVec 64) V!16045 (_ BitVec 32) Int) Unit!12547)

(assert (=> b!428720 (= lt!195949 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!514 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!428721 () Bool)

(declare-fun e!254004 () Bool)

(declare-fun e!254008 () Bool)

(assert (=> b!428721 (= e!254004 (and e!254008 mapRes!18429))))

(declare-fun condMapEmpty!18429 () Bool)

(declare-fun mapDefault!18429 () ValueCell!5259)

(assert (=> b!428721 (= condMapEmpty!18429 (= (arr!12561 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5259)) mapDefault!18429)))))

(declare-fun b!428722 () Bool)

(assert (=> b!428722 (= e!254008 tp_is_empty!11205)))

(declare-fun b!428723 () Bool)

(declare-fun res!251777 () Bool)

(assert (=> b!428723 (=> (not res!251777) (not e!254006))))

(assert (=> b!428723 (= res!251777 (validKeyInArray!0 k0!794))))

(declare-fun b!428724 () Bool)

(assert (=> b!428724 (= e!254010 true)))

(assert (=> b!428724 (not (= (select (arr!12560 _keys!709) from!863) k0!794))))

(declare-fun lt!195952 () Unit!12547)

(assert (=> b!428724 (= lt!195952 e!254005)))

(declare-fun c!55340 () Bool)

(assert (=> b!428724 (= c!55340 (= (select (arr!12560 _keys!709) from!863) k0!794))))

(declare-fun get!6232 (ValueCell!5259 V!16045) V!16045)

(declare-fun dynLambda!761 (Int (_ BitVec 64)) V!16045)

(assert (=> b!428724 (= lt!195953 (+!1314 lt!195948 (tuple2!7371 (select (arr!12560 _keys!709) from!863) (get!6232 (select (arr!12561 _values!549) from!863) (dynLambda!761 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!428725 () Bool)

(declare-fun res!251782 () Bool)

(assert (=> b!428725 (=> (not res!251782) (not e!254003))))

(assert (=> b!428725 (= res!251782 (bvsle from!863 i!563))))

(declare-fun b!428711 () Bool)

(assert (=> b!428711 (= e!254006 e!254003)))

(declare-fun res!251781 () Bool)

(assert (=> b!428711 (=> (not res!251781) (not e!254003))))

(assert (=> b!428711 (= res!251781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195950 mask!1025))))

(assert (=> b!428711 (= lt!195950 (array!26228 (store (arr!12560 _keys!709) i!563 k0!794) (size!12912 _keys!709)))))

(declare-fun res!251776 () Bool)

(assert (=> start!39794 (=> (not res!251776) (not e!254006))))

(assert (=> start!39794 (= res!251776 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12912 _keys!709))))))

(assert (=> start!39794 e!254006))

(assert (=> start!39794 tp_is_empty!11205))

(assert (=> start!39794 tp!35688))

(assert (=> start!39794 true))

(declare-fun array_inv!9138 (array!26229) Bool)

(assert (=> start!39794 (and (array_inv!9138 _values!549) e!254004)))

(declare-fun array_inv!9139 (array!26227) Bool)

(assert (=> start!39794 (array_inv!9139 _keys!709)))

(assert (= (and start!39794 res!251776) b!428715))

(assert (= (and b!428715 res!251783) b!428714))

(assert (= (and b!428714 res!251785) b!428712))

(assert (= (and b!428712 res!251786) b!428708))

(assert (= (and b!428708 res!251778) b!428710))

(assert (= (and b!428710 res!251780) b!428723))

(assert (= (and b!428723 res!251777) b!428718))

(assert (= (and b!428718 res!251775) b!428709))

(assert (= (and b!428709 res!251779) b!428711))

(assert (= (and b!428711 res!251781) b!428716))

(assert (= (and b!428716 res!251787) b!428725))

(assert (= (and b!428725 res!251782) b!428717))

(assert (= (and b!428717 res!251774) b!428720))

(assert (= (and b!428720 (not res!251784)) b!428724))

(assert (= (and b!428724 c!55340) b!428713))

(assert (= (and b!428724 (not c!55340)) b!428707))

(assert (= (and b!428721 condMapEmpty!18429) mapIsEmpty!18429))

(assert (= (and b!428721 (not condMapEmpty!18429)) mapNonEmpty!18429))

(get-info :version)

(assert (= (and mapNonEmpty!18429 ((_ is ValueCellFull!5259) mapValue!18429)) b!428719))

(assert (= (and b!428721 ((_ is ValueCellFull!5259) mapDefault!18429)) b!428722))

(assert (= start!39794 b!428721))

(declare-fun b_lambda!9171 () Bool)

(assert (=> (not b_lambda!9171) (not b!428724)))

(declare-fun t!12928 () Bool)

(declare-fun tb!3467 () Bool)

(assert (=> (and start!39794 (= defaultEntry!557 defaultEntry!557) t!12928) tb!3467))

(declare-fun result!6453 () Bool)

(assert (=> tb!3467 (= result!6453 tp_is_empty!11205)))

(assert (=> b!428724 t!12928))

(declare-fun b_and!17785 () Bool)

(assert (= b_and!17783 (and (=> t!12928 result!6453) b_and!17785)))

(declare-fun m!417119 () Bool)

(assert (=> b!428717 m!417119))

(declare-fun m!417121 () Bool)

(assert (=> b!428717 m!417121))

(declare-fun m!417123 () Bool)

(assert (=> b!428717 m!417123))

(declare-fun m!417125 () Bool)

(assert (=> b!428713 m!417125))

(declare-fun m!417127 () Bool)

(assert (=> b!428718 m!417127))

(declare-fun m!417129 () Bool)

(assert (=> mapNonEmpty!18429 m!417129))

(declare-fun m!417131 () Bool)

(assert (=> b!428712 m!417131))

(declare-fun m!417133 () Bool)

(assert (=> b!428716 m!417133))

(declare-fun m!417135 () Bool)

(assert (=> b!428708 m!417135))

(declare-fun m!417137 () Bool)

(assert (=> b!428720 m!417137))

(declare-fun m!417139 () Bool)

(assert (=> b!428720 m!417139))

(declare-fun m!417141 () Bool)

(assert (=> b!428720 m!417141))

(declare-fun m!417143 () Bool)

(assert (=> b!428720 m!417143))

(assert (=> b!428720 m!417137))

(declare-fun m!417145 () Bool)

(assert (=> b!428720 m!417145))

(declare-fun m!417147 () Bool)

(assert (=> b!428720 m!417147))

(assert (=> b!428724 m!417137))

(declare-fun m!417149 () Bool)

(assert (=> b!428724 m!417149))

(declare-fun m!417151 () Bool)

(assert (=> b!428724 m!417151))

(declare-fun m!417153 () Bool)

(assert (=> b!428724 m!417153))

(assert (=> b!428724 m!417153))

(assert (=> b!428724 m!417149))

(declare-fun m!417155 () Bool)

(assert (=> b!428724 m!417155))

(declare-fun m!417157 () Bool)

(assert (=> start!39794 m!417157))

(declare-fun m!417159 () Bool)

(assert (=> start!39794 m!417159))

(declare-fun m!417161 () Bool)

(assert (=> b!428715 m!417161))

(declare-fun m!417163 () Bool)

(assert (=> b!428711 m!417163))

(declare-fun m!417165 () Bool)

(assert (=> b!428711 m!417165))

(declare-fun m!417167 () Bool)

(assert (=> b!428723 m!417167))

(declare-fun m!417169 () Bool)

(assert (=> b!428709 m!417169))

(check-sat (not b_next!10053) (not b!428709) (not b_lambda!9171) (not b!428717) (not b!428711) (not b!428712) b_and!17785 (not b!428724) (not mapNonEmpty!18429) (not b!428723) (not b!428715) (not b!428708) (not start!39794) tp_is_empty!11205 (not b!428720) (not b!428713) (not b!428716))
(check-sat b_and!17785 (not b_next!10053))
