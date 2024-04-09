; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36906 () Bool)

(assert start!36906)

(declare-fun b_free!8025 () Bool)

(declare-fun b_next!8025 () Bool)

(assert (=> start!36906 (= b_free!8025 (not b_next!8025))))

(declare-fun tp!28791 () Bool)

(declare-fun b_and!15285 () Bool)

(assert (=> start!36906 (= tp!28791 b_and!15285)))

(declare-fun b!369332 () Bool)

(declare-fun e!225730 () Bool)

(declare-fun tp_is_empty!8673 () Bool)

(assert (=> b!369332 (= e!225730 tp_is_empty!8673)))

(declare-fun b!369333 () Bool)

(declare-fun res!207275 () Bool)

(declare-fun e!225727 () Bool)

(assert (=> b!369333 (=> (not res!207275) (not e!225727))))

(declare-datatypes ((array!21269 0))(
  ( (array!21270 (arr!10100 (Array (_ BitVec 32) (_ BitVec 64))) (size!10452 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21269)

(declare-datatypes ((List!5664 0))(
  ( (Nil!5661) (Cons!5660 (h!6516 (_ BitVec 64)) (t!10822 List!5664)) )
))
(declare-fun arrayNoDuplicates!0 (array!21269 (_ BitVec 32) List!5664) Bool)

(assert (=> b!369333 (= res!207275 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5661))))

(declare-fun b!369334 () Bool)

(declare-fun res!207276 () Bool)

(assert (=> b!369334 (=> (not res!207276) (not e!225727))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21269 (_ BitVec 32)) Bool)

(assert (=> b!369334 (= res!207276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!14574 () Bool)

(declare-fun mapRes!14574 () Bool)

(declare-fun tp!28790 () Bool)

(declare-fun e!225729 () Bool)

(assert (=> mapNonEmpty!14574 (= mapRes!14574 (and tp!28790 e!225729))))

(declare-datatypes ((V!12669 0))(
  ( (V!12670 (val!4381 Int)) )
))
(declare-datatypes ((ValueCell!3993 0))(
  ( (ValueCellFull!3993 (v!6574 V!12669)) (EmptyCell!3993) )
))
(declare-fun mapRest!14574 () (Array (_ BitVec 32) ValueCell!3993))

(declare-fun mapValue!14574 () ValueCell!3993)

(declare-fun mapKey!14574 () (_ BitVec 32))

(declare-datatypes ((array!21271 0))(
  ( (array!21272 (arr!10101 (Array (_ BitVec 32) ValueCell!3993)) (size!10453 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21271)

(assert (=> mapNonEmpty!14574 (= (arr!10101 _values!506) (store mapRest!14574 mapKey!14574 mapValue!14574))))

(declare-fun b!369335 () Bool)

(declare-fun res!207284 () Bool)

(assert (=> b!369335 (=> (not res!207284) (not e!225727))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!369335 (= res!207284 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10452 _keys!658))))))

(declare-fun res!207282 () Bool)

(assert (=> start!36906 (=> (not res!207282) (not e!225727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36906 (= res!207282 (validMask!0 mask!970))))

(assert (=> start!36906 e!225727))

(declare-fun e!225732 () Bool)

(declare-fun array_inv!7464 (array!21271) Bool)

(assert (=> start!36906 (and (array_inv!7464 _values!506) e!225732)))

(assert (=> start!36906 tp!28791))

(assert (=> start!36906 true))

(assert (=> start!36906 tp_is_empty!8673))

(declare-fun array_inv!7465 (array!21269) Bool)

(assert (=> start!36906 (array_inv!7465 _keys!658)))

(declare-fun b!369336 () Bool)

(declare-fun e!225731 () Bool)

(assert (=> b!369336 (= e!225727 e!225731)))

(declare-fun res!207280 () Bool)

(assert (=> b!369336 (=> (not res!207280) (not e!225731))))

(declare-fun lt!169718 () array!21269)

(assert (=> b!369336 (= res!207280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169718 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!369336 (= lt!169718 (array!21270 (store (arr!10100 _keys!658) i!548 k0!778) (size!10452 _keys!658)))))

(declare-fun b!369337 () Bool)

(assert (=> b!369337 (= e!225732 (and e!225730 mapRes!14574))))

(declare-fun condMapEmpty!14574 () Bool)

(declare-fun mapDefault!14574 () ValueCell!3993)

(assert (=> b!369337 (= condMapEmpty!14574 (= (arr!10101 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3993)) mapDefault!14574)))))

(declare-fun b!369338 () Bool)

(declare-fun res!207283 () Bool)

(assert (=> b!369338 (=> (not res!207283) (not e!225727))))

(declare-fun arrayContainsKey!0 (array!21269 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!369338 (= res!207283 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!369339 () Bool)

(declare-fun res!207281 () Bool)

(assert (=> b!369339 (=> (not res!207281) (not e!225727))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!369339 (= res!207281 (and (= (size!10453 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10452 _keys!658) (size!10453 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!369340 () Bool)

(declare-fun res!207278 () Bool)

(assert (=> b!369340 (=> (not res!207278) (not e!225731))))

(assert (=> b!369340 (= res!207278 (arrayNoDuplicates!0 lt!169718 #b00000000000000000000000000000000 Nil!5661))))

(declare-fun b!369341 () Bool)

(declare-fun res!207277 () Bool)

(assert (=> b!369341 (=> (not res!207277) (not e!225727))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369341 (= res!207277 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!14574 () Bool)

(assert (=> mapIsEmpty!14574 mapRes!14574))

(declare-fun b!369342 () Bool)

(assert (=> b!369342 (= e!225731 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5804 0))(
  ( (tuple2!5805 (_1!2912 (_ BitVec 64)) (_2!2912 V!12669)) )
))
(declare-datatypes ((List!5665 0))(
  ( (Nil!5662) (Cons!5661 (h!6517 tuple2!5804) (t!10823 List!5665)) )
))
(declare-datatypes ((ListLongMap!4731 0))(
  ( (ListLongMap!4732 (toList!2381 List!5665)) )
))
(declare-fun lt!169720 () ListLongMap!4731)

(declare-fun zeroValue!472 () V!12669)

(declare-fun v!373 () V!12669)

(declare-fun minValue!472 () V!12669)

(declare-fun getCurrentListMapNoExtraKeys!649 (array!21269 array!21271 (_ BitVec 32) (_ BitVec 32) V!12669 V!12669 (_ BitVec 32) Int) ListLongMap!4731)

(assert (=> b!369342 (= lt!169720 (getCurrentListMapNoExtraKeys!649 lt!169718 (array!21272 (store (arr!10101 _values!506) i!548 (ValueCellFull!3993 v!373)) (size!10453 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169719 () ListLongMap!4731)

(assert (=> b!369342 (= lt!169719 (getCurrentListMapNoExtraKeys!649 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!369343 () Bool)

(assert (=> b!369343 (= e!225729 tp_is_empty!8673)))

(declare-fun b!369344 () Bool)

(declare-fun res!207279 () Bool)

(assert (=> b!369344 (=> (not res!207279) (not e!225727))))

(assert (=> b!369344 (= res!207279 (or (= (select (arr!10100 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10100 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!36906 res!207282) b!369339))

(assert (= (and b!369339 res!207281) b!369334))

(assert (= (and b!369334 res!207276) b!369333))

(assert (= (and b!369333 res!207275) b!369335))

(assert (= (and b!369335 res!207284) b!369341))

(assert (= (and b!369341 res!207277) b!369344))

(assert (= (and b!369344 res!207279) b!369338))

(assert (= (and b!369338 res!207283) b!369336))

(assert (= (and b!369336 res!207280) b!369340))

(assert (= (and b!369340 res!207278) b!369342))

(assert (= (and b!369337 condMapEmpty!14574) mapIsEmpty!14574))

(assert (= (and b!369337 (not condMapEmpty!14574)) mapNonEmpty!14574))

(get-info :version)

(assert (= (and mapNonEmpty!14574 ((_ is ValueCellFull!3993) mapValue!14574)) b!369343))

(assert (= (and b!369337 ((_ is ValueCellFull!3993) mapDefault!14574)) b!369332))

(assert (= start!36906 b!369337))

(declare-fun m!365729 () Bool)

(assert (=> b!369333 m!365729))

(declare-fun m!365731 () Bool)

(assert (=> b!369336 m!365731))

(declare-fun m!365733 () Bool)

(assert (=> b!369336 m!365733))

(declare-fun m!365735 () Bool)

(assert (=> b!369338 m!365735))

(declare-fun m!365737 () Bool)

(assert (=> b!369342 m!365737))

(declare-fun m!365739 () Bool)

(assert (=> b!369342 m!365739))

(declare-fun m!365741 () Bool)

(assert (=> b!369342 m!365741))

(declare-fun m!365743 () Bool)

(assert (=> start!36906 m!365743))

(declare-fun m!365745 () Bool)

(assert (=> start!36906 m!365745))

(declare-fun m!365747 () Bool)

(assert (=> start!36906 m!365747))

(declare-fun m!365749 () Bool)

(assert (=> mapNonEmpty!14574 m!365749))

(declare-fun m!365751 () Bool)

(assert (=> b!369334 m!365751))

(declare-fun m!365753 () Bool)

(assert (=> b!369341 m!365753))

(declare-fun m!365755 () Bool)

(assert (=> b!369340 m!365755))

(declare-fun m!365757 () Bool)

(assert (=> b!369344 m!365757))

(check-sat (not b!369334) (not b!369333) (not b!369341) tp_is_empty!8673 (not b!369340) (not b_next!8025) (not b!369336) (not b!369342) (not mapNonEmpty!14574) (not b!369338) (not start!36906) b_and!15285)
(check-sat b_and!15285 (not b_next!8025))
