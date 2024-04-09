; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36864 () Bool)

(assert start!36864)

(declare-fun b_free!7983 () Bool)

(declare-fun b_next!7983 () Bool)

(assert (=> start!36864 (= b_free!7983 (not b_next!7983))))

(declare-fun tp!28665 () Bool)

(declare-fun b_and!15243 () Bool)

(assert (=> start!36864 (= tp!28665 b_and!15243)))

(declare-fun b!368513 () Bool)

(declare-fun res!206645 () Bool)

(declare-fun e!225350 () Bool)

(assert (=> b!368513 (=> (not res!206645) (not e!225350))))

(declare-datatypes ((array!21187 0))(
  ( (array!21188 (arr!10059 (Array (_ BitVec 32) (_ BitVec 64))) (size!10411 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21187)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21187 (_ BitVec 32)) Bool)

(assert (=> b!368513 (= res!206645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!368514 () Bool)

(declare-fun e!225352 () Bool)

(assert (=> b!368514 (= e!225352 (bvsgt #b00000000000000000000000000000000 (size!10411 _keys!658)))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12613 0))(
  ( (V!12614 (val!4360 Int)) )
))
(declare-datatypes ((ValueCell!3972 0))(
  ( (ValueCellFull!3972 (v!6553 V!12613)) (EmptyCell!3972) )
))
(declare-datatypes ((array!21189 0))(
  ( (array!21190 (arr!10060 (Array (_ BitVec 32) ValueCell!3972)) (size!10412 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21189)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5772 0))(
  ( (tuple2!5773 (_1!2896 (_ BitVec 64)) (_2!2896 V!12613)) )
))
(declare-datatypes ((List!5632 0))(
  ( (Nil!5629) (Cons!5628 (h!6484 tuple2!5772) (t!10790 List!5632)) )
))
(declare-datatypes ((ListLongMap!4699 0))(
  ( (ListLongMap!4700 (toList!2365 List!5632)) )
))
(declare-fun lt!169534 () ListLongMap!4699)

(declare-fun zeroValue!472 () V!12613)

(declare-fun minValue!472 () V!12613)

(declare-fun getCurrentListMapNoExtraKeys!633 (array!21187 array!21189 (_ BitVec 32) (_ BitVec 32) V!12613 V!12613 (_ BitVec 32) Int) ListLongMap!4699)

(assert (=> b!368514 (= lt!169534 (getCurrentListMapNoExtraKeys!633 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368515 () Bool)

(declare-fun res!206647 () Bool)

(assert (=> b!368515 (=> (not res!206647) (not e!225352))))

(declare-fun lt!169533 () array!21187)

(declare-datatypes ((List!5633 0))(
  ( (Nil!5630) (Cons!5629 (h!6485 (_ BitVec 64)) (t!10791 List!5633)) )
))
(declare-fun arrayNoDuplicates!0 (array!21187 (_ BitVec 32) List!5633) Bool)

(assert (=> b!368515 (= res!206647 (arrayNoDuplicates!0 lt!169533 #b00000000000000000000000000000000 Nil!5630))))

(declare-fun b!368516 () Bool)

(declare-fun e!225354 () Bool)

(declare-fun e!225353 () Bool)

(declare-fun mapRes!14511 () Bool)

(assert (=> b!368516 (= e!225354 (and e!225353 mapRes!14511))))

(declare-fun condMapEmpty!14511 () Bool)

(declare-fun mapDefault!14511 () ValueCell!3972)

(assert (=> b!368516 (= condMapEmpty!14511 (= (arr!10060 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3972)) mapDefault!14511)))))

(declare-fun mapIsEmpty!14511 () Bool)

(assert (=> mapIsEmpty!14511 mapRes!14511))

(declare-fun b!368517 () Bool)

(assert (=> b!368517 (= e!225350 e!225352)))

(declare-fun res!206649 () Bool)

(assert (=> b!368517 (=> (not res!206649) (not e!225352))))

(assert (=> b!368517 (= res!206649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169533 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!368517 (= lt!169533 (array!21188 (store (arr!10059 _keys!658) i!548 k0!778) (size!10411 _keys!658)))))

(declare-fun b!368519 () Bool)

(declare-fun res!206648 () Bool)

(assert (=> b!368519 (=> (not res!206648) (not e!225350))))

(assert (=> b!368519 (= res!206648 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5630))))

(declare-fun b!368520 () Bool)

(declare-fun res!206646 () Bool)

(assert (=> b!368520 (=> (not res!206646) (not e!225350))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368520 (= res!206646 (validKeyInArray!0 k0!778))))

(declare-fun b!368521 () Bool)

(declare-fun res!206654 () Bool)

(assert (=> b!368521 (=> (not res!206654) (not e!225350))))

(assert (=> b!368521 (= res!206654 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10411 _keys!658))))))

(declare-fun b!368522 () Bool)

(declare-fun res!206652 () Bool)

(assert (=> b!368522 (=> (not res!206652) (not e!225350))))

(declare-fun arrayContainsKey!0 (array!21187 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368522 (= res!206652 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!368523 () Bool)

(declare-fun tp_is_empty!8631 () Bool)

(assert (=> b!368523 (= e!225353 tp_is_empty!8631)))

(declare-fun b!368524 () Bool)

(declare-fun e!225351 () Bool)

(assert (=> b!368524 (= e!225351 tp_is_empty!8631)))

(declare-fun res!206651 () Bool)

(assert (=> start!36864 (=> (not res!206651) (not e!225350))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36864 (= res!206651 (validMask!0 mask!970))))

(assert (=> start!36864 e!225350))

(assert (=> start!36864 true))

(declare-fun array_inv!7430 (array!21189) Bool)

(assert (=> start!36864 (and (array_inv!7430 _values!506) e!225354)))

(assert (=> start!36864 tp!28665))

(assert (=> start!36864 tp_is_empty!8631))

(declare-fun array_inv!7431 (array!21187) Bool)

(assert (=> start!36864 (array_inv!7431 _keys!658)))

(declare-fun b!368518 () Bool)

(declare-fun res!206650 () Bool)

(assert (=> b!368518 (=> (not res!206650) (not e!225350))))

(assert (=> b!368518 (= res!206650 (or (= (select (arr!10059 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10059 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14511 () Bool)

(declare-fun tp!28664 () Bool)

(assert (=> mapNonEmpty!14511 (= mapRes!14511 (and tp!28664 e!225351))))

(declare-fun mapRest!14511 () (Array (_ BitVec 32) ValueCell!3972))

(declare-fun mapKey!14511 () (_ BitVec 32))

(declare-fun mapValue!14511 () ValueCell!3972)

(assert (=> mapNonEmpty!14511 (= (arr!10060 _values!506) (store mapRest!14511 mapKey!14511 mapValue!14511))))

(declare-fun b!368525 () Bool)

(declare-fun res!206653 () Bool)

(assert (=> b!368525 (=> (not res!206653) (not e!225350))))

(assert (=> b!368525 (= res!206653 (and (= (size!10412 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10411 _keys!658) (size!10412 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(assert (= (and start!36864 res!206651) b!368525))

(assert (= (and b!368525 res!206653) b!368513))

(assert (= (and b!368513 res!206645) b!368519))

(assert (= (and b!368519 res!206648) b!368521))

(assert (= (and b!368521 res!206654) b!368520))

(assert (= (and b!368520 res!206646) b!368518))

(assert (= (and b!368518 res!206650) b!368522))

(assert (= (and b!368522 res!206652) b!368517))

(assert (= (and b!368517 res!206649) b!368515))

(assert (= (and b!368515 res!206647) b!368514))

(assert (= (and b!368516 condMapEmpty!14511) mapIsEmpty!14511))

(assert (= (and b!368516 (not condMapEmpty!14511)) mapNonEmpty!14511))

(get-info :version)

(assert (= (and mapNonEmpty!14511 ((_ is ValueCellFull!3972) mapValue!14511)) b!368524))

(assert (= (and b!368516 ((_ is ValueCellFull!3972) mapDefault!14511)) b!368523))

(assert (= start!36864 b!368516))

(declare-fun m!365107 () Bool)

(assert (=> b!368518 m!365107))

(declare-fun m!365109 () Bool)

(assert (=> b!368520 m!365109))

(declare-fun m!365111 () Bool)

(assert (=> b!368515 m!365111))

(declare-fun m!365113 () Bool)

(assert (=> b!368513 m!365113))

(declare-fun m!365115 () Bool)

(assert (=> b!368522 m!365115))

(declare-fun m!365117 () Bool)

(assert (=> b!368514 m!365117))

(declare-fun m!365119 () Bool)

(assert (=> mapNonEmpty!14511 m!365119))

(declare-fun m!365121 () Bool)

(assert (=> b!368517 m!365121))

(declare-fun m!365123 () Bool)

(assert (=> b!368517 m!365123))

(declare-fun m!365125 () Bool)

(assert (=> b!368519 m!365125))

(declare-fun m!365127 () Bool)

(assert (=> start!36864 m!365127))

(declare-fun m!365129 () Bool)

(assert (=> start!36864 m!365129))

(declare-fun m!365131 () Bool)

(assert (=> start!36864 m!365131))

(check-sat (not b_next!7983) (not b!368520) (not b!368522) (not b!368513) b_and!15243 tp_is_empty!8631 (not start!36864) (not b!368514) (not mapNonEmpty!14511) (not b!368519) (not b!368515) (not b!368517))
(check-sat b_and!15243 (not b_next!7983))
