; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39296 () Bool)

(assert start!39296)

(declare-fun b_free!9555 () Bool)

(declare-fun b_next!9555 () Bool)

(assert (=> start!39296 (= b_free!9555 (not b_next!9555))))

(declare-fun tp!34193 () Bool)

(declare-fun b_and!17003 () Bool)

(assert (=> start!39296 (= tp!34193 b_and!17003)))

(declare-fun b!415465 () Bool)

(declare-fun e!248139 () Bool)

(declare-fun e!248135 () Bool)

(assert (=> b!415465 (= e!248139 (not e!248135))))

(declare-fun res!241794 () Bool)

(assert (=> b!415465 (=> res!241794 e!248135)))

(declare-datatypes ((array!25251 0))(
  ( (array!25252 (arr!12072 (Array (_ BitVec 32) (_ BitVec 64))) (size!12424 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25251)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!415465 (= res!241794 (validKeyInArray!0 (select (arr!12072 _keys!709) from!863)))))

(declare-fun e!248142 () Bool)

(assert (=> b!415465 e!248142))

(declare-fun c!54971 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!415465 (= c!54971 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!15381 0))(
  ( (V!15382 (val!5398 Int)) )
))
(declare-fun minValue!515 () V!15381)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5010 0))(
  ( (ValueCellFull!5010 (v!7641 V!15381)) (EmptyCell!5010) )
))
(declare-datatypes ((array!25253 0))(
  ( (array!25254 (arr!12073 (Array (_ BitVec 32) ValueCell!5010)) (size!12425 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25253)

(declare-fun zeroValue!515 () V!15381)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun v!412 () V!15381)

(declare-datatypes ((Unit!12241 0))(
  ( (Unit!12242) )
))
(declare-fun lt!190274 () Unit!12241)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!383 (array!25251 array!25253 (_ BitVec 32) (_ BitVec 32) V!15381 V!15381 (_ BitVec 32) (_ BitVec 64) V!15381 (_ BitVec 32) Int) Unit!12241)

(assert (=> b!415465 (= lt!190274 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!383 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415466 () Bool)

(declare-fun res!241804 () Bool)

(declare-fun e!248137 () Bool)

(assert (=> b!415466 (=> (not res!241804) (not e!248137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!415466 (= res!241804 (validMask!0 mask!1025))))

(declare-fun b!415467 () Bool)

(declare-fun res!241800 () Bool)

(declare-fun e!248136 () Bool)

(assert (=> b!415467 (=> (not res!241800) (not e!248136))))

(declare-fun lt!190275 () array!25251)

(declare-datatypes ((List!7013 0))(
  ( (Nil!7010) (Cons!7009 (h!7865 (_ BitVec 64)) (t!12241 List!7013)) )
))
(declare-fun arrayNoDuplicates!0 (array!25251 (_ BitVec 32) List!7013) Bool)

(assert (=> b!415467 (= res!241800 (arrayNoDuplicates!0 lt!190275 #b00000000000000000000000000000000 Nil!7010))))

(declare-fun b!415468 () Bool)

(declare-fun res!241806 () Bool)

(assert (=> b!415468 (=> (not res!241806) (not e!248137))))

(assert (=> b!415468 (= res!241806 (and (= (size!12425 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12424 _keys!709) (size!12425 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!415470 () Bool)

(assert (=> b!415470 (= e!248135 true)))

(declare-fun lt!190271 () array!25253)

(declare-datatypes ((tuple2!6958 0))(
  ( (tuple2!6959 (_1!3489 (_ BitVec 64)) (_2!3489 V!15381)) )
))
(declare-datatypes ((List!7014 0))(
  ( (Nil!7011) (Cons!7010 (h!7866 tuple2!6958) (t!12242 List!7014)) )
))
(declare-datatypes ((ListLongMap!5885 0))(
  ( (ListLongMap!5886 (toList!2958 List!7014)) )
))
(declare-fun lt!190272 () ListLongMap!5885)

(declare-fun +!1171 (ListLongMap!5885 tuple2!6958) ListLongMap!5885)

(declare-fun getCurrentListMapNoExtraKeys!1162 (array!25251 array!25253 (_ BitVec 32) (_ BitVec 32) V!15381 V!15381 (_ BitVec 32) Int) ListLongMap!5885)

(declare-fun get!5964 (ValueCell!5010 V!15381) V!15381)

(declare-fun dynLambda!659 (Int (_ BitVec 64)) V!15381)

(assert (=> b!415470 (= lt!190272 (+!1171 (getCurrentListMapNoExtraKeys!1162 lt!190275 lt!190271 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!6959 (select (arr!12072 lt!190275) from!863) (get!5964 (select (arr!12073 lt!190271) from!863) (dynLambda!659 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!415471 () Bool)

(declare-fun res!241802 () Bool)

(assert (=> b!415471 (=> (not res!241802) (not e!248137))))

(assert (=> b!415471 (= res!241802 (or (= (select (arr!12072 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12072 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!415472 () Bool)

(declare-fun call!28840 () ListLongMap!5885)

(declare-fun call!28841 () ListLongMap!5885)

(assert (=> b!415472 (= e!248142 (= call!28840 call!28841))))

(declare-fun b!415473 () Bool)

(assert (=> b!415473 (= e!248142 (= call!28841 (+!1171 call!28840 (tuple2!6959 k0!794 v!412))))))

(declare-fun b!415474 () Bool)

(declare-fun res!241798 () Bool)

(assert (=> b!415474 (=> (not res!241798) (not e!248137))))

(declare-fun arrayContainsKey!0 (array!25251 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!415474 (= res!241798 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!415475 () Bool)

(declare-fun res!241795 () Bool)

(assert (=> b!415475 (=> (not res!241795) (not e!248137))))

(assert (=> b!415475 (= res!241795 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12424 _keys!709))))))

(declare-fun b!415476 () Bool)

(assert (=> b!415476 (= e!248136 e!248139)))

(declare-fun res!241793 () Bool)

(assert (=> b!415476 (=> (not res!241793) (not e!248139))))

(assert (=> b!415476 (= res!241793 (= from!863 i!563))))

(assert (=> b!415476 (= lt!190272 (getCurrentListMapNoExtraKeys!1162 lt!190275 lt!190271 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!415476 (= lt!190271 (array!25254 (store (arr!12073 _values!549) i!563 (ValueCellFull!5010 v!412)) (size!12425 _values!549)))))

(declare-fun lt!190273 () ListLongMap!5885)

(assert (=> b!415476 (= lt!190273 (getCurrentListMapNoExtraKeys!1162 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!415477 () Bool)

(declare-fun res!241796 () Bool)

(assert (=> b!415477 (=> (not res!241796) (not e!248137))))

(assert (=> b!415477 (= res!241796 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7010))))

(declare-fun bm!28837 () Bool)

(assert (=> bm!28837 (= call!28840 (getCurrentListMapNoExtraKeys!1162 (ite c!54971 _keys!709 lt!190275) (ite c!54971 _values!549 lt!190271) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415478 () Bool)

(declare-fun res!241801 () Bool)

(assert (=> b!415478 (=> (not res!241801) (not e!248136))))

(assert (=> b!415478 (= res!241801 (bvsle from!863 i!563))))

(declare-fun b!415479 () Bool)

(assert (=> b!415479 (= e!248137 e!248136)))

(declare-fun res!241799 () Bool)

(assert (=> b!415479 (=> (not res!241799) (not e!248136))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25251 (_ BitVec 32)) Bool)

(assert (=> b!415479 (= res!241799 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190275 mask!1025))))

(assert (=> b!415479 (= lt!190275 (array!25252 (store (arr!12072 _keys!709) i!563 k0!794) (size!12424 _keys!709)))))

(declare-fun mapNonEmpty!17682 () Bool)

(declare-fun mapRes!17682 () Bool)

(declare-fun tp!34194 () Bool)

(declare-fun e!248140 () Bool)

(assert (=> mapNonEmpty!17682 (= mapRes!17682 (and tp!34194 e!248140))))

(declare-fun mapKey!17682 () (_ BitVec 32))

(declare-fun mapRest!17682 () (Array (_ BitVec 32) ValueCell!5010))

(declare-fun mapValue!17682 () ValueCell!5010)

(assert (=> mapNonEmpty!17682 (= (arr!12073 _values!549) (store mapRest!17682 mapKey!17682 mapValue!17682))))

(declare-fun b!415469 () Bool)

(declare-fun e!248143 () Bool)

(declare-fun tp_is_empty!10707 () Bool)

(assert (=> b!415469 (= e!248143 tp_is_empty!10707)))

(declare-fun res!241797 () Bool)

(assert (=> start!39296 (=> (not res!241797) (not e!248137))))

(assert (=> start!39296 (= res!241797 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12424 _keys!709))))))

(assert (=> start!39296 e!248137))

(assert (=> start!39296 tp_is_empty!10707))

(assert (=> start!39296 tp!34193))

(assert (=> start!39296 true))

(declare-fun e!248138 () Bool)

(declare-fun array_inv!8806 (array!25253) Bool)

(assert (=> start!39296 (and (array_inv!8806 _values!549) e!248138)))

(declare-fun array_inv!8807 (array!25251) Bool)

(assert (=> start!39296 (array_inv!8807 _keys!709)))

(declare-fun b!415480 () Bool)

(assert (=> b!415480 (= e!248140 tp_is_empty!10707)))

(declare-fun bm!28838 () Bool)

(assert (=> bm!28838 (= call!28841 (getCurrentListMapNoExtraKeys!1162 (ite c!54971 lt!190275 _keys!709) (ite c!54971 lt!190271 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415481 () Bool)

(assert (=> b!415481 (= e!248138 (and e!248143 mapRes!17682))))

(declare-fun condMapEmpty!17682 () Bool)

(declare-fun mapDefault!17682 () ValueCell!5010)

(assert (=> b!415481 (= condMapEmpty!17682 (= (arr!12073 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5010)) mapDefault!17682)))))

(declare-fun mapIsEmpty!17682 () Bool)

(assert (=> mapIsEmpty!17682 mapRes!17682))

(declare-fun b!415482 () Bool)

(declare-fun res!241805 () Bool)

(assert (=> b!415482 (=> (not res!241805) (not e!248137))))

(assert (=> b!415482 (= res!241805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!415483 () Bool)

(declare-fun res!241803 () Bool)

(assert (=> b!415483 (=> (not res!241803) (not e!248137))))

(assert (=> b!415483 (= res!241803 (validKeyInArray!0 k0!794))))

(assert (= (and start!39296 res!241797) b!415466))

(assert (= (and b!415466 res!241804) b!415468))

(assert (= (and b!415468 res!241806) b!415482))

(assert (= (and b!415482 res!241805) b!415477))

(assert (= (and b!415477 res!241796) b!415475))

(assert (= (and b!415475 res!241795) b!415483))

(assert (= (and b!415483 res!241803) b!415471))

(assert (= (and b!415471 res!241802) b!415474))

(assert (= (and b!415474 res!241798) b!415479))

(assert (= (and b!415479 res!241799) b!415467))

(assert (= (and b!415467 res!241800) b!415478))

(assert (= (and b!415478 res!241801) b!415476))

(assert (= (and b!415476 res!241793) b!415465))

(assert (= (and b!415465 c!54971) b!415473))

(assert (= (and b!415465 (not c!54971)) b!415472))

(assert (= (or b!415473 b!415472) bm!28838))

(assert (= (or b!415473 b!415472) bm!28837))

(assert (= (and b!415465 (not res!241794)) b!415470))

(assert (= (and b!415481 condMapEmpty!17682) mapIsEmpty!17682))

(assert (= (and b!415481 (not condMapEmpty!17682)) mapNonEmpty!17682))

(get-info :version)

(assert (= (and mapNonEmpty!17682 ((_ is ValueCellFull!5010) mapValue!17682)) b!415480))

(assert (= (and b!415481 ((_ is ValueCellFull!5010) mapDefault!17682)) b!415469))

(assert (= start!39296 b!415481))

(declare-fun b_lambda!8889 () Bool)

(assert (=> (not b_lambda!8889) (not b!415470)))

(declare-fun t!12240 () Bool)

(declare-fun tb!3185 () Bool)

(assert (=> (and start!39296 (= defaultEntry!557 defaultEntry!557) t!12240) tb!3185))

(declare-fun result!5889 () Bool)

(assert (=> tb!3185 (= result!5889 tp_is_empty!10707)))

(assert (=> b!415470 t!12240))

(declare-fun b_and!17005 () Bool)

(assert (= b_and!17003 (and (=> t!12240 result!5889) b_and!17005)))

(declare-fun m!404625 () Bool)

(assert (=> b!415483 m!404625))

(declare-fun m!404627 () Bool)

(assert (=> bm!28838 m!404627))

(declare-fun m!404629 () Bool)

(assert (=> b!415465 m!404629))

(assert (=> b!415465 m!404629))

(declare-fun m!404631 () Bool)

(assert (=> b!415465 m!404631))

(declare-fun m!404633 () Bool)

(assert (=> b!415465 m!404633))

(declare-fun m!404635 () Bool)

(assert (=> b!415482 m!404635))

(declare-fun m!404637 () Bool)

(assert (=> start!39296 m!404637))

(declare-fun m!404639 () Bool)

(assert (=> start!39296 m!404639))

(declare-fun m!404641 () Bool)

(assert (=> b!415470 m!404641))

(declare-fun m!404643 () Bool)

(assert (=> b!415470 m!404643))

(assert (=> b!415470 m!404641))

(declare-fun m!404645 () Bool)

(assert (=> b!415470 m!404645))

(declare-fun m!404647 () Bool)

(assert (=> b!415470 m!404647))

(declare-fun m!404649 () Bool)

(assert (=> b!415470 m!404649))

(assert (=> b!415470 m!404645))

(assert (=> b!415470 m!404649))

(declare-fun m!404651 () Bool)

(assert (=> b!415470 m!404651))

(declare-fun m!404653 () Bool)

(assert (=> bm!28837 m!404653))

(declare-fun m!404655 () Bool)

(assert (=> b!415474 m!404655))

(declare-fun m!404657 () Bool)

(assert (=> b!415473 m!404657))

(declare-fun m!404659 () Bool)

(assert (=> b!415479 m!404659))

(declare-fun m!404661 () Bool)

(assert (=> b!415479 m!404661))

(declare-fun m!404663 () Bool)

(assert (=> b!415477 m!404663))

(declare-fun m!404665 () Bool)

(assert (=> b!415476 m!404665))

(declare-fun m!404667 () Bool)

(assert (=> b!415476 m!404667))

(declare-fun m!404669 () Bool)

(assert (=> b!415476 m!404669))

(declare-fun m!404671 () Bool)

(assert (=> b!415466 m!404671))

(declare-fun m!404673 () Bool)

(assert (=> mapNonEmpty!17682 m!404673))

(declare-fun m!404675 () Bool)

(assert (=> b!415467 m!404675))

(declare-fun m!404677 () Bool)

(assert (=> b!415471 m!404677))

(check-sat (not bm!28838) (not b!415474) b_and!17005 (not b!415466) (not b!415477) (not b!415482) (not bm!28837) (not start!39296) (not b_lambda!8889) (not mapNonEmpty!17682) (not b!415479) (not b!415483) (not b!415476) (not b!415465) (not b!415473) tp_is_empty!10707 (not b_next!9555) (not b!415470) (not b!415467))
(check-sat b_and!17005 (not b_next!9555))
