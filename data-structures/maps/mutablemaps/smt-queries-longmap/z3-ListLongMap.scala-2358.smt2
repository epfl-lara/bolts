; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37620 () Bool)

(assert start!37620)

(declare-fun b_free!8739 () Bool)

(declare-fun b_next!8739 () Bool)

(assert (=> start!37620 (= b_free!8739 (not b_next!8739))))

(declare-fun tp!30933 () Bool)

(declare-fun b_and!15999 () Bool)

(assert (=> start!37620 (= tp!30933 b_and!15999)))

(declare-fun b!384610 () Bool)

(declare-fun e!233484 () Bool)

(assert (=> b!384610 (= e!233484 true)))

(declare-datatypes ((V!13621 0))(
  ( (V!13622 (val!4738 Int)) )
))
(declare-datatypes ((tuple2!6334 0))(
  ( (tuple2!6335 (_1!3177 (_ BitVec 64)) (_2!3177 V!13621)) )
))
(declare-datatypes ((List!6200 0))(
  ( (Nil!6197) (Cons!6196 (h!7052 tuple2!6334) (t!11358 List!6200)) )
))
(declare-datatypes ((ListLongMap!5261 0))(
  ( (ListLongMap!5262 (toList!2646 List!6200)) )
))
(declare-fun lt!181141 () ListLongMap!5261)

(declare-fun lt!181142 () ListLongMap!5261)

(declare-fun lt!181138 () tuple2!6334)

(declare-fun +!982 (ListLongMap!5261 tuple2!6334) ListLongMap!5261)

(assert (=> b!384610 (= lt!181141 (+!982 lt!181142 lt!181138))))

(declare-fun lt!181143 () ListLongMap!5261)

(declare-fun lt!181140 () ListLongMap!5261)

(assert (=> b!384610 (= lt!181143 lt!181140)))

(declare-fun b!384611 () Bool)

(declare-fun res!219341 () Bool)

(declare-fun e!233485 () Bool)

(assert (=> b!384611 (=> (not res!219341) (not e!233485))))

(declare-datatypes ((array!22659 0))(
  ( (array!22660 (arr!10795 (Array (_ BitVec 32) (_ BitVec 64))) (size!11147 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22659)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!384611 (= res!219341 (or (= (select (arr!10795 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10795 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!384612 () Bool)

(declare-fun e!233483 () Bool)

(declare-fun tp_is_empty!9387 () Bool)

(assert (=> b!384612 (= e!233483 tp_is_empty!9387)))

(declare-fun b!384613 () Bool)

(declare-fun res!219346 () Bool)

(assert (=> b!384613 (=> (not res!219346) (not e!233485))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22659 (_ BitVec 32)) Bool)

(assert (=> b!384613 (= res!219346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!384614 () Bool)

(declare-fun e!233481 () Bool)

(assert (=> b!384614 (= e!233485 e!233481)))

(declare-fun res!219350 () Bool)

(assert (=> b!384614 (=> (not res!219350) (not e!233481))))

(declare-fun lt!181134 () array!22659)

(assert (=> b!384614 (= res!219350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181134 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!384614 (= lt!181134 (array!22660 (store (arr!10795 _keys!658) i!548 k0!778) (size!11147 _keys!658)))))

(declare-fun b!384615 () Bool)

(declare-fun res!219348 () Bool)

(assert (=> b!384615 (=> (not res!219348) (not e!233481))))

(declare-datatypes ((List!6201 0))(
  ( (Nil!6198) (Cons!6197 (h!7053 (_ BitVec 64)) (t!11359 List!6201)) )
))
(declare-fun arrayNoDuplicates!0 (array!22659 (_ BitVec 32) List!6201) Bool)

(assert (=> b!384615 (= res!219348 (arrayNoDuplicates!0 lt!181134 #b00000000000000000000000000000000 Nil!6198))))

(declare-fun b!384616 () Bool)

(declare-fun res!219343 () Bool)

(assert (=> b!384616 (=> (not res!219343) (not e!233485))))

(declare-fun arrayContainsKey!0 (array!22659 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!384616 (= res!219343 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!384618 () Bool)

(declare-fun e!233487 () Bool)

(declare-fun e!233482 () Bool)

(declare-fun mapRes!15645 () Bool)

(assert (=> b!384618 (= e!233487 (and e!233482 mapRes!15645))))

(declare-fun condMapEmpty!15645 () Bool)

(declare-datatypes ((ValueCell!4350 0))(
  ( (ValueCellFull!4350 (v!6931 V!13621)) (EmptyCell!4350) )
))
(declare-datatypes ((array!22661 0))(
  ( (array!22662 (arr!10796 (Array (_ BitVec 32) ValueCell!4350)) (size!11148 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22661)

(declare-fun mapDefault!15645 () ValueCell!4350)

(assert (=> b!384618 (= condMapEmpty!15645 (= (arr!10796 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4350)) mapDefault!15645)))))

(declare-fun b!384619 () Bool)

(declare-fun res!219349 () Bool)

(assert (=> b!384619 (=> (not res!219349) (not e!233485))))

(assert (=> b!384619 (= res!219349 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6198))))

(declare-fun b!384620 () Bool)

(declare-fun res!219347 () Bool)

(assert (=> b!384620 (=> (not res!219347) (not e!233485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384620 (= res!219347 (validKeyInArray!0 k0!778))))

(declare-fun b!384621 () Bool)

(declare-fun res!219344 () Bool)

(assert (=> b!384621 (=> (not res!219344) (not e!233485))))

(assert (=> b!384621 (= res!219344 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11147 _keys!658))))))

(declare-fun b!384622 () Bool)

(assert (=> b!384622 (= e!233481 (not e!233484))))

(declare-fun res!219340 () Bool)

(assert (=> b!384622 (=> res!219340 e!233484)))

(declare-fun lt!181144 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!384622 (= res!219340 (or (and (not lt!181144) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!181144) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!181144)))))

(assert (=> b!384622 (= lt!181144 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13621)

(declare-fun minValue!472 () V!13621)

(declare-fun getCurrentListMap!2062 (array!22659 array!22661 (_ BitVec 32) (_ BitVec 32) V!13621 V!13621 (_ BitVec 32) Int) ListLongMap!5261)

(assert (=> b!384622 (= lt!181142 (getCurrentListMap!2062 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181137 () array!22661)

(assert (=> b!384622 (= lt!181143 (getCurrentListMap!2062 lt!181134 lt!181137 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181139 () ListLongMap!5261)

(assert (=> b!384622 (and (= lt!181140 lt!181139) (= lt!181139 lt!181140))))

(declare-fun lt!181135 () ListLongMap!5261)

(assert (=> b!384622 (= lt!181139 (+!982 lt!181135 lt!181138))))

(declare-fun v!373 () V!13621)

(assert (=> b!384622 (= lt!181138 (tuple2!6335 k0!778 v!373))))

(declare-datatypes ((Unit!11853 0))(
  ( (Unit!11854) )
))
(declare-fun lt!181136 () Unit!11853)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!213 (array!22659 array!22661 (_ BitVec 32) (_ BitVec 32) V!13621 V!13621 (_ BitVec 32) (_ BitVec 64) V!13621 (_ BitVec 32) Int) Unit!11853)

(assert (=> b!384622 (= lt!181136 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!213 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!880 (array!22659 array!22661 (_ BitVec 32) (_ BitVec 32) V!13621 V!13621 (_ BitVec 32) Int) ListLongMap!5261)

(assert (=> b!384622 (= lt!181140 (getCurrentListMapNoExtraKeys!880 lt!181134 lt!181137 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384622 (= lt!181137 (array!22662 (store (arr!10796 _values!506) i!548 (ValueCellFull!4350 v!373)) (size!11148 _values!506)))))

(assert (=> b!384622 (= lt!181135 (getCurrentListMapNoExtraKeys!880 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15645 () Bool)

(assert (=> mapIsEmpty!15645 mapRes!15645))

(declare-fun b!384617 () Bool)

(assert (=> b!384617 (= e!233482 tp_is_empty!9387)))

(declare-fun res!219345 () Bool)

(assert (=> start!37620 (=> (not res!219345) (not e!233485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37620 (= res!219345 (validMask!0 mask!970))))

(assert (=> start!37620 e!233485))

(declare-fun array_inv!7930 (array!22661) Bool)

(assert (=> start!37620 (and (array_inv!7930 _values!506) e!233487)))

(assert (=> start!37620 tp!30933))

(assert (=> start!37620 true))

(assert (=> start!37620 tp_is_empty!9387))

(declare-fun array_inv!7931 (array!22659) Bool)

(assert (=> start!37620 (array_inv!7931 _keys!658)))

(declare-fun mapNonEmpty!15645 () Bool)

(declare-fun tp!30932 () Bool)

(assert (=> mapNonEmpty!15645 (= mapRes!15645 (and tp!30932 e!233483))))

(declare-fun mapRest!15645 () (Array (_ BitVec 32) ValueCell!4350))

(declare-fun mapValue!15645 () ValueCell!4350)

(declare-fun mapKey!15645 () (_ BitVec 32))

(assert (=> mapNonEmpty!15645 (= (arr!10796 _values!506) (store mapRest!15645 mapKey!15645 mapValue!15645))))

(declare-fun b!384623 () Bool)

(declare-fun res!219342 () Bool)

(assert (=> b!384623 (=> (not res!219342) (not e!233485))))

(assert (=> b!384623 (= res!219342 (and (= (size!11148 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11147 _keys!658) (size!11148 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(assert (= (and start!37620 res!219345) b!384623))

(assert (= (and b!384623 res!219342) b!384613))

(assert (= (and b!384613 res!219346) b!384619))

(assert (= (and b!384619 res!219349) b!384621))

(assert (= (and b!384621 res!219344) b!384620))

(assert (= (and b!384620 res!219347) b!384611))

(assert (= (and b!384611 res!219341) b!384616))

(assert (= (and b!384616 res!219343) b!384614))

(assert (= (and b!384614 res!219350) b!384615))

(assert (= (and b!384615 res!219348) b!384622))

(assert (= (and b!384622 (not res!219340)) b!384610))

(assert (= (and b!384618 condMapEmpty!15645) mapIsEmpty!15645))

(assert (= (and b!384618 (not condMapEmpty!15645)) mapNonEmpty!15645))

(get-info :version)

(assert (= (and mapNonEmpty!15645 ((_ is ValueCellFull!4350) mapValue!15645)) b!384612))

(assert (= (and b!384618 ((_ is ValueCellFull!4350) mapDefault!15645)) b!384617))

(assert (= start!37620 b!384618))

(declare-fun m!381321 () Bool)

(assert (=> b!384613 m!381321))

(declare-fun m!381323 () Bool)

(assert (=> b!384615 m!381323))

(declare-fun m!381325 () Bool)

(assert (=> b!384610 m!381325))

(declare-fun m!381327 () Bool)

(assert (=> b!384620 m!381327))

(declare-fun m!381329 () Bool)

(assert (=> b!384611 m!381329))

(declare-fun m!381331 () Bool)

(assert (=> b!384619 m!381331))

(declare-fun m!381333 () Bool)

(assert (=> b!384614 m!381333))

(declare-fun m!381335 () Bool)

(assert (=> b!384614 m!381335))

(declare-fun m!381337 () Bool)

(assert (=> start!37620 m!381337))

(declare-fun m!381339 () Bool)

(assert (=> start!37620 m!381339))

(declare-fun m!381341 () Bool)

(assert (=> start!37620 m!381341))

(declare-fun m!381343 () Bool)

(assert (=> b!384622 m!381343))

(declare-fun m!381345 () Bool)

(assert (=> b!384622 m!381345))

(declare-fun m!381347 () Bool)

(assert (=> b!384622 m!381347))

(declare-fun m!381349 () Bool)

(assert (=> b!384622 m!381349))

(declare-fun m!381351 () Bool)

(assert (=> b!384622 m!381351))

(declare-fun m!381353 () Bool)

(assert (=> b!384622 m!381353))

(declare-fun m!381355 () Bool)

(assert (=> b!384622 m!381355))

(declare-fun m!381357 () Bool)

(assert (=> b!384616 m!381357))

(declare-fun m!381359 () Bool)

(assert (=> mapNonEmpty!15645 m!381359))

(check-sat (not b!384610) (not b!384616) (not b!384615) (not start!37620) (not b!384613) (not b!384620) b_and!15999 (not mapNonEmpty!15645) (not b_next!8739) (not b!384619) (not b!384622) (not b!384614) tp_is_empty!9387)
(check-sat b_and!15999 (not b_next!8739))
