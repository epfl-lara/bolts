; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39776 () Bool)

(assert start!39776)

(declare-fun b_free!10035 () Bool)

(declare-fun b_next!10035 () Bool)

(assert (=> start!39776 (= b_free!10035 (not b_next!10035))))

(declare-fun tp!35634 () Bool)

(declare-fun b_and!17747 () Bool)

(assert (=> start!39776 (= tp!35634 b_and!17747)))

(declare-fun b!428176 () Bool)

(declare-fun e!253761 () Bool)

(declare-fun e!253765 () Bool)

(assert (=> b!428176 (= e!253761 e!253765)))

(declare-fun res!251407 () Bool)

(assert (=> b!428176 (=> (not res!251407) (not e!253765))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!428176 (= res!251407 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16021 0))(
  ( (V!16022 (val!5638 Int)) )
))
(declare-datatypes ((ValueCell!5250 0))(
  ( (ValueCellFull!5250 (v!7881 V!16021)) (EmptyCell!5250) )
))
(declare-datatypes ((array!26191 0))(
  ( (array!26192 (arr!12542 (Array (_ BitVec 32) ValueCell!5250)) (size!12894 (_ BitVec 32))) )
))
(declare-fun lt!195686 () array!26191)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun minValue!515 () V!16021)

(declare-datatypes ((tuple2!7356 0))(
  ( (tuple2!7357 (_1!3688 (_ BitVec 64)) (_2!3688 V!16021)) )
))
(declare-datatypes ((List!7405 0))(
  ( (Nil!7402) (Cons!7401 (h!8257 tuple2!7356) (t!12897 List!7405)) )
))
(declare-datatypes ((ListLongMap!6283 0))(
  ( (ListLongMap!6284 (toList!3157 List!7405)) )
))
(declare-fun lt!195684 () ListLongMap!6283)

(declare-fun zeroValue!515 () V!16021)

(declare-datatypes ((array!26193 0))(
  ( (array!26194 (arr!12543 (Array (_ BitVec 32) (_ BitVec 64))) (size!12895 (_ BitVec 32))) )
))
(declare-fun lt!195682 () array!26193)

(declare-fun getCurrentListMapNoExtraKeys!1356 (array!26193 array!26191 (_ BitVec 32) (_ BitVec 32) V!16021 V!16021 (_ BitVec 32) Int) ListLongMap!6283)

(assert (=> b!428176 (= lt!195684 (getCurrentListMapNoExtraKeys!1356 lt!195682 lt!195686 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26191)

(declare-fun v!412 () V!16021)

(assert (=> b!428176 (= lt!195686 (array!26192 (store (arr!12542 _values!549) i!563 (ValueCellFull!5250 v!412)) (size!12894 _values!549)))))

(declare-fun _keys!709 () array!26193)

(declare-fun lt!195679 () ListLongMap!6283)

(assert (=> b!428176 (= lt!195679 (getCurrentListMapNoExtraKeys!1356 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!428177 () Bool)

(declare-fun e!253764 () Bool)

(declare-fun tp_is_empty!11187 () Bool)

(assert (=> b!428177 (= e!253764 tp_is_empty!11187)))

(declare-fun b!428178 () Bool)

(declare-datatypes ((Unit!12521 0))(
  ( (Unit!12522) )
))
(declare-fun e!253767 () Unit!12521)

(declare-fun Unit!12523 () Unit!12521)

(assert (=> b!428178 (= e!253767 Unit!12523)))

(declare-fun b!428179 () Bool)

(declare-fun e!253760 () Bool)

(assert (=> b!428179 (= e!253760 true)))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!428179 (not (= (select (arr!12543 _keys!709) from!863) k0!794))))

(declare-fun lt!195681 () Unit!12521)

(assert (=> b!428179 (= lt!195681 e!253767)))

(declare-fun c!55313 () Bool)

(assert (=> b!428179 (= c!55313 (= (select (arr!12543 _keys!709) from!863) k0!794))))

(declare-fun lt!195683 () ListLongMap!6283)

(declare-fun +!1310 (ListLongMap!6283 tuple2!7356) ListLongMap!6283)

(declare-fun get!6222 (ValueCell!5250 V!16021) V!16021)

(declare-fun dynLambda!757 (Int (_ BitVec 64)) V!16021)

(assert (=> b!428179 (= lt!195684 (+!1310 lt!195683 (tuple2!7357 (select (arr!12543 _keys!709) from!863) (get!6222 (select (arr!12542 _values!549) from!863) (dynLambda!757 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!428180 () Bool)

(assert (=> b!428180 (= e!253765 (not e!253760))))

(declare-fun res!251400 () Bool)

(assert (=> b!428180 (=> res!251400 e!253760)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!428180 (= res!251400 (not (validKeyInArray!0 (select (arr!12543 _keys!709) from!863))))))

(declare-fun lt!195685 () ListLongMap!6283)

(assert (=> b!428180 (= lt!195685 lt!195683)))

(declare-fun lt!195678 () ListLongMap!6283)

(assert (=> b!428180 (= lt!195683 (+!1310 lt!195678 (tuple2!7357 k0!794 v!412)))))

(assert (=> b!428180 (= lt!195685 (getCurrentListMapNoExtraKeys!1356 lt!195682 lt!195686 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!428180 (= lt!195678 (getCurrentListMapNoExtraKeys!1356 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!195680 () Unit!12521)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!510 (array!26193 array!26191 (_ BitVec 32) (_ BitVec 32) V!16021 V!16021 (_ BitVec 32) (_ BitVec 64) V!16021 (_ BitVec 32) Int) Unit!12521)

(assert (=> b!428180 (= lt!195680 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!510 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!428181 () Bool)

(declare-fun res!251402 () Bool)

(declare-fun e!253768 () Bool)

(assert (=> b!428181 (=> (not res!251402) (not e!253768))))

(declare-fun arrayContainsKey!0 (array!26193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!428181 (= res!251402 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!428182 () Bool)

(declare-fun e!253762 () Bool)

(declare-fun e!253763 () Bool)

(declare-fun mapRes!18402 () Bool)

(assert (=> b!428182 (= e!253762 (and e!253763 mapRes!18402))))

(declare-fun condMapEmpty!18402 () Bool)

(declare-fun mapDefault!18402 () ValueCell!5250)

(assert (=> b!428182 (= condMapEmpty!18402 (= (arr!12542 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5250)) mapDefault!18402)))))

(declare-fun res!251408 () Bool)

(assert (=> start!39776 (=> (not res!251408) (not e!253768))))

(assert (=> start!39776 (= res!251408 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12895 _keys!709))))))

(assert (=> start!39776 e!253768))

(assert (=> start!39776 tp_is_empty!11187))

(assert (=> start!39776 tp!35634))

(assert (=> start!39776 true))

(declare-fun array_inv!9128 (array!26191) Bool)

(assert (=> start!39776 (and (array_inv!9128 _values!549) e!253762)))

(declare-fun array_inv!9129 (array!26193) Bool)

(assert (=> start!39776 (array_inv!9129 _keys!709)))

(declare-fun b!428183 () Bool)

(declare-fun res!251396 () Bool)

(assert (=> b!428183 (=> (not res!251396) (not e!253768))))

(assert (=> b!428183 (= res!251396 (and (= (size!12894 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12895 _keys!709) (size!12894 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!428184 () Bool)

(declare-fun res!251409 () Bool)

(assert (=> b!428184 (=> (not res!251409) (not e!253768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26193 (_ BitVec 32)) Bool)

(assert (=> b!428184 (= res!251409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!428185 () Bool)

(declare-fun res!251406 () Bool)

(assert (=> b!428185 (=> (not res!251406) (not e!253768))))

(assert (=> b!428185 (= res!251406 (validKeyInArray!0 k0!794))))

(declare-fun b!428186 () Bool)

(declare-fun Unit!12524 () Unit!12521)

(assert (=> b!428186 (= e!253767 Unit!12524)))

(declare-fun lt!195687 () Unit!12521)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26193 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12521)

(assert (=> b!428186 (= lt!195687 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!428186 false))

(declare-fun b!428187 () Bool)

(declare-fun res!251401 () Bool)

(assert (=> b!428187 (=> (not res!251401) (not e!253768))))

(assert (=> b!428187 (= res!251401 (or (= (select (arr!12543 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12543 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!428188 () Bool)

(declare-fun res!251404 () Bool)

(assert (=> b!428188 (=> (not res!251404) (not e!253768))))

(declare-datatypes ((List!7406 0))(
  ( (Nil!7403) (Cons!7402 (h!8258 (_ BitVec 64)) (t!12898 List!7406)) )
))
(declare-fun arrayNoDuplicates!0 (array!26193 (_ BitVec 32) List!7406) Bool)

(assert (=> b!428188 (= res!251404 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7403))))

(declare-fun b!428189 () Bool)

(declare-fun res!251399 () Bool)

(assert (=> b!428189 (=> (not res!251399) (not e!253768))))

(assert (=> b!428189 (= res!251399 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12895 _keys!709))))))

(declare-fun b!428190 () Bool)

(declare-fun res!251397 () Bool)

(assert (=> b!428190 (=> (not res!251397) (not e!253761))))

(assert (=> b!428190 (= res!251397 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18402 () Bool)

(declare-fun tp!35633 () Bool)

(assert (=> mapNonEmpty!18402 (= mapRes!18402 (and tp!35633 e!253764))))

(declare-fun mapRest!18402 () (Array (_ BitVec 32) ValueCell!5250))

(declare-fun mapKey!18402 () (_ BitVec 32))

(declare-fun mapValue!18402 () ValueCell!5250)

(assert (=> mapNonEmpty!18402 (= (arr!12542 _values!549) (store mapRest!18402 mapKey!18402 mapValue!18402))))

(declare-fun b!428191 () Bool)

(assert (=> b!428191 (= e!253763 tp_is_empty!11187)))

(declare-fun b!428192 () Bool)

(declare-fun res!251405 () Bool)

(assert (=> b!428192 (=> (not res!251405) (not e!253761))))

(assert (=> b!428192 (= res!251405 (arrayNoDuplicates!0 lt!195682 #b00000000000000000000000000000000 Nil!7403))))

(declare-fun b!428193 () Bool)

(assert (=> b!428193 (= e!253768 e!253761)))

(declare-fun res!251403 () Bool)

(assert (=> b!428193 (=> (not res!251403) (not e!253761))))

(assert (=> b!428193 (= res!251403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195682 mask!1025))))

(assert (=> b!428193 (= lt!195682 (array!26194 (store (arr!12543 _keys!709) i!563 k0!794) (size!12895 _keys!709)))))

(declare-fun mapIsEmpty!18402 () Bool)

(assert (=> mapIsEmpty!18402 mapRes!18402))

(declare-fun b!428194 () Bool)

(declare-fun res!251398 () Bool)

(assert (=> b!428194 (=> (not res!251398) (not e!253768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!428194 (= res!251398 (validMask!0 mask!1025))))

(assert (= (and start!39776 res!251408) b!428194))

(assert (= (and b!428194 res!251398) b!428183))

(assert (= (and b!428183 res!251396) b!428184))

(assert (= (and b!428184 res!251409) b!428188))

(assert (= (and b!428188 res!251404) b!428189))

(assert (= (and b!428189 res!251399) b!428185))

(assert (= (and b!428185 res!251406) b!428187))

(assert (= (and b!428187 res!251401) b!428181))

(assert (= (and b!428181 res!251402) b!428193))

(assert (= (and b!428193 res!251403) b!428192))

(assert (= (and b!428192 res!251405) b!428190))

(assert (= (and b!428190 res!251397) b!428176))

(assert (= (and b!428176 res!251407) b!428180))

(assert (= (and b!428180 (not res!251400)) b!428179))

(assert (= (and b!428179 c!55313) b!428186))

(assert (= (and b!428179 (not c!55313)) b!428178))

(assert (= (and b!428182 condMapEmpty!18402) mapIsEmpty!18402))

(assert (= (and b!428182 (not condMapEmpty!18402)) mapNonEmpty!18402))

(get-info :version)

(assert (= (and mapNonEmpty!18402 ((_ is ValueCellFull!5250) mapValue!18402)) b!428177))

(assert (= (and b!428182 ((_ is ValueCellFull!5250) mapDefault!18402)) b!428191))

(assert (= start!39776 b!428182))

(declare-fun b_lambda!9153 () Bool)

(assert (=> (not b_lambda!9153) (not b!428179)))

(declare-fun t!12896 () Bool)

(declare-fun tb!3449 () Bool)

(assert (=> (and start!39776 (= defaultEntry!557 defaultEntry!557) t!12896) tb!3449))

(declare-fun result!6417 () Bool)

(assert (=> tb!3449 (= result!6417 tp_is_empty!11187)))

(assert (=> b!428179 t!12896))

(declare-fun b_and!17749 () Bool)

(assert (= b_and!17747 (and (=> t!12896 result!6417) b_and!17749)))

(declare-fun m!416651 () Bool)

(assert (=> b!428176 m!416651))

(declare-fun m!416653 () Bool)

(assert (=> b!428176 m!416653))

(declare-fun m!416655 () Bool)

(assert (=> b!428176 m!416655))

(declare-fun m!416657 () Bool)

(assert (=> b!428188 m!416657))

(declare-fun m!416659 () Bool)

(assert (=> b!428187 m!416659))

(declare-fun m!416661 () Bool)

(assert (=> b!428181 m!416661))

(declare-fun m!416663 () Bool)

(assert (=> start!39776 m!416663))

(declare-fun m!416665 () Bool)

(assert (=> start!39776 m!416665))

(declare-fun m!416667 () Bool)

(assert (=> b!428194 m!416667))

(declare-fun m!416669 () Bool)

(assert (=> b!428193 m!416669))

(declare-fun m!416671 () Bool)

(assert (=> b!428193 m!416671))

(declare-fun m!416673 () Bool)

(assert (=> b!428186 m!416673))

(declare-fun m!416675 () Bool)

(assert (=> b!428185 m!416675))

(declare-fun m!416677 () Bool)

(assert (=> b!428179 m!416677))

(declare-fun m!416679 () Bool)

(assert (=> b!428179 m!416679))

(declare-fun m!416681 () Bool)

(assert (=> b!428179 m!416681))

(declare-fun m!416683 () Bool)

(assert (=> b!428179 m!416683))

(assert (=> b!428179 m!416681))

(assert (=> b!428179 m!416679))

(declare-fun m!416685 () Bool)

(assert (=> b!428179 m!416685))

(assert (=> b!428180 m!416677))

(declare-fun m!416687 () Bool)

(assert (=> b!428180 m!416687))

(declare-fun m!416689 () Bool)

(assert (=> b!428180 m!416689))

(declare-fun m!416691 () Bool)

(assert (=> b!428180 m!416691))

(assert (=> b!428180 m!416677))

(declare-fun m!416693 () Bool)

(assert (=> b!428180 m!416693))

(declare-fun m!416695 () Bool)

(assert (=> b!428180 m!416695))

(declare-fun m!416697 () Bool)

(assert (=> mapNonEmpty!18402 m!416697))

(declare-fun m!416699 () Bool)

(assert (=> b!428192 m!416699))

(declare-fun m!416701 () Bool)

(assert (=> b!428184 m!416701))

(check-sat (not b!428180) tp_is_empty!11187 (not b!428194) b_and!17749 (not b!428176) (not b!428179) (not b!428193) (not b_lambda!9153) (not b!428185) (not start!39776) (not b!428188) (not b!428184) (not b!428181) (not b!428186) (not b!428192) (not b_next!10035) (not mapNonEmpty!18402))
(check-sat b_and!17749 (not b_next!10035))
