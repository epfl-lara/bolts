; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41164 () Bool)

(assert start!41164)

(declare-fun b_free!11025 () Bool)

(declare-fun b_next!11025 () Bool)

(assert (=> start!41164 (= b_free!11025 (not b_next!11025))))

(declare-fun tp!38911 () Bool)

(declare-fun b_and!19307 () Bool)

(assert (=> start!41164 (= tp!38911 b_and!19307)))

(declare-fun b!459383 () Bool)

(declare-fun e!268111 () Bool)

(declare-fun e!268112 () Bool)

(assert (=> b!459383 (= e!268111 (not e!268112))))

(declare-fun res!274623 () Bool)

(assert (=> b!459383 (=> res!274623 e!268112)))

(declare-datatypes ((array!28491 0))(
  ( (array!28492 (arr!13683 (Array (_ BitVec 32) (_ BitVec 64))) (size!14035 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28491)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!459383 (= res!274623 (not (validKeyInArray!0 (select (arr!13683 _keys!709) from!863))))))

(declare-datatypes ((V!17589 0))(
  ( (V!17590 (val!6226 Int)) )
))
(declare-datatypes ((tuple2!8172 0))(
  ( (tuple2!8173 (_1!4096 (_ BitVec 64)) (_2!4096 V!17589)) )
))
(declare-datatypes ((List!8276 0))(
  ( (Nil!8273) (Cons!8272 (h!9128 tuple2!8172) (t!14188 List!8276)) )
))
(declare-datatypes ((ListLongMap!7099 0))(
  ( (ListLongMap!7100 (toList!3565 List!8276)) )
))
(declare-fun lt!207900 () ListLongMap!7099)

(declare-fun lt!207897 () ListLongMap!7099)

(assert (=> b!459383 (= lt!207900 lt!207897)))

(declare-fun lt!207902 () ListLongMap!7099)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!17589)

(declare-fun +!1585 (ListLongMap!7099 tuple2!8172) ListLongMap!7099)

(assert (=> b!459383 (= lt!207897 (+!1585 lt!207902 (tuple2!8173 k0!794 v!412)))))

(declare-fun minValue!515 () V!17589)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!207903 () array!28491)

(declare-fun zeroValue!515 () V!17589)

(declare-datatypes ((ValueCell!5838 0))(
  ( (ValueCellFull!5838 (v!8500 V!17589)) (EmptyCell!5838) )
))
(declare-datatypes ((array!28493 0))(
  ( (array!28494 (arr!13684 (Array (_ BitVec 32) ValueCell!5838)) (size!14036 (_ BitVec 32))) )
))
(declare-fun lt!207895 () array!28493)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1735 (array!28491 array!28493 (_ BitVec 32) (_ BitVec 32) V!17589 V!17589 (_ BitVec 32) Int) ListLongMap!7099)

(assert (=> b!459383 (= lt!207900 (getCurrentListMapNoExtraKeys!1735 lt!207903 lt!207895 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun _values!549 () array!28493)

(assert (=> b!459383 (= lt!207902 (getCurrentListMapNoExtraKeys!1735 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!13300 0))(
  ( (Unit!13301) )
))
(declare-fun lt!207898 () Unit!13300)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!739 (array!28491 array!28493 (_ BitVec 32) (_ BitVec 32) V!17589 V!17589 (_ BitVec 32) (_ BitVec 64) V!17589 (_ BitVec 32) Int) Unit!13300)

(assert (=> b!459383 (= lt!207898 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!739 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!459384 () Bool)

(declare-fun res!274624 () Bool)

(declare-fun e!268109 () Bool)

(assert (=> b!459384 (=> (not res!274624) (not e!268109))))

(declare-datatypes ((List!8277 0))(
  ( (Nil!8274) (Cons!8273 (h!9129 (_ BitVec 64)) (t!14189 List!8277)) )
))
(declare-fun arrayNoDuplicates!0 (array!28491 (_ BitVec 32) List!8277) Bool)

(assert (=> b!459384 (= res!274624 (arrayNoDuplicates!0 lt!207903 #b00000000000000000000000000000000 Nil!8274))))

(declare-fun mapIsEmpty!20194 () Bool)

(declare-fun mapRes!20194 () Bool)

(assert (=> mapIsEmpty!20194 mapRes!20194))

(declare-fun b!459385 () Bool)

(declare-fun e!268106 () Bool)

(declare-fun e!268114 () Bool)

(assert (=> b!459385 (= e!268106 (and e!268114 mapRes!20194))))

(declare-fun condMapEmpty!20194 () Bool)

(declare-fun mapDefault!20194 () ValueCell!5838)

(assert (=> b!459385 (= condMapEmpty!20194 (= (arr!13684 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5838)) mapDefault!20194)))))

(declare-fun b!459386 () Bool)

(declare-fun res!274622 () Bool)

(declare-fun e!268107 () Bool)

(assert (=> b!459386 (=> (not res!274622) (not e!268107))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!459386 (= res!274622 (validMask!0 mask!1025))))

(declare-fun b!459387 () Bool)

(declare-fun res!274632 () Bool)

(assert (=> b!459387 (=> (not res!274632) (not e!268107))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28491 (_ BitVec 32)) Bool)

(assert (=> b!459387 (= res!274632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!459388 () Bool)

(declare-fun tp_is_empty!12363 () Bool)

(assert (=> b!459388 (= e!268114 tp_is_empty!12363)))

(declare-fun b!459389 () Bool)

(assert (=> b!459389 (= e!268107 e!268109)))

(declare-fun res!274621 () Bool)

(assert (=> b!459389 (=> (not res!274621) (not e!268109))))

(assert (=> b!459389 (= res!274621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207903 mask!1025))))

(assert (=> b!459389 (= lt!207903 (array!28492 (store (arr!13683 _keys!709) i!563 k0!794) (size!14035 _keys!709)))))

(declare-fun b!459390 () Bool)

(declare-fun res!274626 () Bool)

(assert (=> b!459390 (=> (not res!274626) (not e!268107))))

(assert (=> b!459390 (= res!274626 (or (= (select (arr!13683 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13683 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!459391 () Bool)

(declare-fun res!274631 () Bool)

(assert (=> b!459391 (=> (not res!274631) (not e!268107))))

(assert (=> b!459391 (= res!274631 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14035 _keys!709))))))

(declare-fun b!459392 () Bool)

(declare-fun e!268108 () Bool)

(assert (=> b!459392 (= e!268108 tp_is_empty!12363)))

(declare-fun b!459393 () Bool)

(declare-fun res!274627 () Bool)

(assert (=> b!459393 (=> (not res!274627) (not e!268107))))

(assert (=> b!459393 (= res!274627 (validKeyInArray!0 k0!794))))

(declare-fun b!459394 () Bool)

(declare-fun res!274629 () Bool)

(assert (=> b!459394 (=> (not res!274629) (not e!268109))))

(assert (=> b!459394 (= res!274629 (bvsle from!863 i!563))))

(declare-fun b!459395 () Bool)

(declare-fun res!274630 () Bool)

(assert (=> b!459395 (=> (not res!274630) (not e!268107))))

(assert (=> b!459395 (= res!274630 (and (= (size!14036 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14035 _keys!709) (size!14036 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!459396 () Bool)

(declare-fun e!268110 () Unit!13300)

(declare-fun Unit!13302 () Unit!13300)

(assert (=> b!459396 (= e!268110 Unit!13302)))

(declare-fun lt!207894 () Unit!13300)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28491 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13300)

(assert (=> b!459396 (= lt!207894 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!459396 false))

(declare-fun res!274620 () Bool)

(assert (=> start!41164 (=> (not res!274620) (not e!268107))))

(assert (=> start!41164 (= res!274620 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14035 _keys!709))))))

(assert (=> start!41164 e!268107))

(assert (=> start!41164 tp_is_empty!12363))

(assert (=> start!41164 tp!38911))

(assert (=> start!41164 true))

(declare-fun array_inv!9894 (array!28493) Bool)

(assert (=> start!41164 (and (array_inv!9894 _values!549) e!268106)))

(declare-fun array_inv!9895 (array!28491) Bool)

(assert (=> start!41164 (array_inv!9895 _keys!709)))

(declare-fun b!459397 () Bool)

(declare-fun res!274633 () Bool)

(assert (=> b!459397 (=> (not res!274633) (not e!268107))))

(assert (=> b!459397 (= res!274633 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8274))))

(declare-fun b!459398 () Bool)

(declare-fun res!274628 () Bool)

(assert (=> b!459398 (=> (not res!274628) (not e!268107))))

(declare-fun arrayContainsKey!0 (array!28491 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!459398 (= res!274628 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!459399 () Bool)

(assert (=> b!459399 (= e!268109 e!268111)))

(declare-fun res!274625 () Bool)

(assert (=> b!459399 (=> (not res!274625) (not e!268111))))

(assert (=> b!459399 (= res!274625 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!207899 () ListLongMap!7099)

(assert (=> b!459399 (= lt!207899 (getCurrentListMapNoExtraKeys!1735 lt!207903 lt!207895 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!459399 (= lt!207895 (array!28494 (store (arr!13684 _values!549) i!563 (ValueCellFull!5838 v!412)) (size!14036 _values!549)))))

(declare-fun lt!207901 () ListLongMap!7099)

(assert (=> b!459399 (= lt!207901 (getCurrentListMapNoExtraKeys!1735 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!459400 () Bool)

(assert (=> b!459400 (= e!268112 (bvslt from!863 (size!14036 _values!549)))))

(assert (=> b!459400 (not (= (select (arr!13683 _keys!709) from!863) k0!794))))

(declare-fun lt!207896 () Unit!13300)

(assert (=> b!459400 (= lt!207896 e!268110)))

(declare-fun c!56411 () Bool)

(assert (=> b!459400 (= c!56411 (= (select (arr!13683 _keys!709) from!863) k0!794))))

(declare-fun get!6763 (ValueCell!5838 V!17589) V!17589)

(declare-fun dynLambda!895 (Int (_ BitVec 64)) V!17589)

(assert (=> b!459400 (= lt!207899 (+!1585 lt!207897 (tuple2!8173 (select (arr!13683 _keys!709) from!863) (get!6763 (select (arr!13684 _values!549) from!863) (dynLambda!895 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!459401 () Bool)

(declare-fun Unit!13303 () Unit!13300)

(assert (=> b!459401 (= e!268110 Unit!13303)))

(declare-fun mapNonEmpty!20194 () Bool)

(declare-fun tp!38910 () Bool)

(assert (=> mapNonEmpty!20194 (= mapRes!20194 (and tp!38910 e!268108))))

(declare-fun mapValue!20194 () ValueCell!5838)

(declare-fun mapRest!20194 () (Array (_ BitVec 32) ValueCell!5838))

(declare-fun mapKey!20194 () (_ BitVec 32))

(assert (=> mapNonEmpty!20194 (= (arr!13684 _values!549) (store mapRest!20194 mapKey!20194 mapValue!20194))))

(assert (= (and start!41164 res!274620) b!459386))

(assert (= (and b!459386 res!274622) b!459395))

(assert (= (and b!459395 res!274630) b!459387))

(assert (= (and b!459387 res!274632) b!459397))

(assert (= (and b!459397 res!274633) b!459391))

(assert (= (and b!459391 res!274631) b!459393))

(assert (= (and b!459393 res!274627) b!459390))

(assert (= (and b!459390 res!274626) b!459398))

(assert (= (and b!459398 res!274628) b!459389))

(assert (= (and b!459389 res!274621) b!459384))

(assert (= (and b!459384 res!274624) b!459394))

(assert (= (and b!459394 res!274629) b!459399))

(assert (= (and b!459399 res!274625) b!459383))

(assert (= (and b!459383 (not res!274623)) b!459400))

(assert (= (and b!459400 c!56411) b!459396))

(assert (= (and b!459400 (not c!56411)) b!459401))

(assert (= (and b!459385 condMapEmpty!20194) mapIsEmpty!20194))

(assert (= (and b!459385 (not condMapEmpty!20194)) mapNonEmpty!20194))

(get-info :version)

(assert (= (and mapNonEmpty!20194 ((_ is ValueCellFull!5838) mapValue!20194)) b!459392))

(assert (= (and b!459385 ((_ is ValueCellFull!5838) mapDefault!20194)) b!459388))

(assert (= start!41164 b!459385))

(declare-fun b_lambda!9889 () Bool)

(assert (=> (not b_lambda!9889) (not b!459400)))

(declare-fun t!14187 () Bool)

(declare-fun tb!3869 () Bool)

(assert (=> (and start!41164 (= defaultEntry!557 defaultEntry!557) t!14187) tb!3869))

(declare-fun result!7275 () Bool)

(assert (=> tb!3869 (= result!7275 tp_is_empty!12363)))

(assert (=> b!459400 t!14187))

(declare-fun b_and!19309 () Bool)

(assert (= b_and!19307 (and (=> t!14187 result!7275) b_and!19309)))

(declare-fun m!442683 () Bool)

(assert (=> b!459386 m!442683))

(declare-fun m!442685 () Bool)

(assert (=> b!459387 m!442685))

(declare-fun m!442687 () Bool)

(assert (=> b!459390 m!442687))

(declare-fun m!442689 () Bool)

(assert (=> b!459400 m!442689))

(declare-fun m!442691 () Bool)

(assert (=> b!459400 m!442691))

(declare-fun m!442693 () Bool)

(assert (=> b!459400 m!442693))

(declare-fun m!442695 () Bool)

(assert (=> b!459400 m!442695))

(assert (=> b!459400 m!442695))

(assert (=> b!459400 m!442693))

(declare-fun m!442697 () Bool)

(assert (=> b!459400 m!442697))

(declare-fun m!442699 () Bool)

(assert (=> b!459399 m!442699))

(declare-fun m!442701 () Bool)

(assert (=> b!459399 m!442701))

(declare-fun m!442703 () Bool)

(assert (=> b!459399 m!442703))

(declare-fun m!442705 () Bool)

(assert (=> b!459398 m!442705))

(declare-fun m!442707 () Bool)

(assert (=> b!459393 m!442707))

(assert (=> b!459383 m!442689))

(declare-fun m!442709 () Bool)

(assert (=> b!459383 m!442709))

(declare-fun m!442711 () Bool)

(assert (=> b!459383 m!442711))

(declare-fun m!442713 () Bool)

(assert (=> b!459383 m!442713))

(assert (=> b!459383 m!442689))

(declare-fun m!442715 () Bool)

(assert (=> b!459383 m!442715))

(declare-fun m!442717 () Bool)

(assert (=> b!459383 m!442717))

(declare-fun m!442719 () Bool)

(assert (=> start!41164 m!442719))

(declare-fun m!442721 () Bool)

(assert (=> start!41164 m!442721))

(declare-fun m!442723 () Bool)

(assert (=> b!459384 m!442723))

(declare-fun m!442725 () Bool)

(assert (=> mapNonEmpty!20194 m!442725))

(declare-fun m!442727 () Bool)

(assert (=> b!459397 m!442727))

(declare-fun m!442729 () Bool)

(assert (=> b!459389 m!442729))

(declare-fun m!442731 () Bool)

(assert (=> b!459389 m!442731))

(declare-fun m!442733 () Bool)

(assert (=> b!459396 m!442733))

(check-sat (not b!459393) (not mapNonEmpty!20194) (not b!459386) (not b!459384) (not b!459383) (not b_lambda!9889) (not b!459398) (not b!459397) (not b!459389) tp_is_empty!12363 (not b_next!11025) (not b!459400) b_and!19309 (not b!459396) (not start!41164) (not b!459399) (not b!459387))
(check-sat b_and!19309 (not b_next!11025))
