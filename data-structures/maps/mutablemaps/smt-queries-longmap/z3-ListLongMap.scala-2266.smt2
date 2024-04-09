; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37068 () Bool)

(assert start!37068)

(declare-fun b_free!8187 () Bool)

(declare-fun b_next!8187 () Bool)

(assert (=> start!37068 (= b_free!8187 (not b_next!8187))))

(declare-fun tp!29276 () Bool)

(declare-fun b_and!15447 () Bool)

(assert (=> start!37068 (= tp!29276 b_and!15447)))

(declare-fun b!372492 () Bool)

(declare-fun res!209705 () Bool)

(declare-fun e!227185 () Bool)

(assert (=> b!372492 (=> (not res!209705) (not e!227185))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!372492 (= res!209705 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!14817 () Bool)

(declare-fun mapRes!14817 () Bool)

(assert (=> mapIsEmpty!14817 mapRes!14817))

(declare-fun b!372493 () Bool)

(declare-fun res!209707 () Bool)

(assert (=> b!372493 (=> (not res!209707) (not e!227185))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12885 0))(
  ( (V!12886 (val!4462 Int)) )
))
(declare-datatypes ((ValueCell!4074 0))(
  ( (ValueCellFull!4074 (v!6655 V!12885)) (EmptyCell!4074) )
))
(declare-datatypes ((array!21579 0))(
  ( (array!21580 (arr!10255 (Array (_ BitVec 32) ValueCell!4074)) (size!10607 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21579)

(declare-datatypes ((array!21581 0))(
  ( (array!21582 (arr!10256 (Array (_ BitVec 32) (_ BitVec 64))) (size!10608 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21581)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!372493 (= res!209707 (and (= (size!10607 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10608 _keys!658) (size!10607 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!372494 () Bool)

(declare-fun e!227187 () Bool)

(assert (=> b!372494 (= e!227187 (not true))))

(declare-fun lt!170849 () array!21579)

(declare-fun zeroValue!472 () V!12885)

(declare-datatypes ((tuple2!5896 0))(
  ( (tuple2!5897 (_1!2958 (_ BitVec 64)) (_2!2958 V!12885)) )
))
(declare-datatypes ((List!5771 0))(
  ( (Nil!5768) (Cons!5767 (h!6623 tuple2!5896) (t!10929 List!5771)) )
))
(declare-datatypes ((ListLongMap!4823 0))(
  ( (ListLongMap!4824 (toList!2427 List!5771)) )
))
(declare-fun lt!170847 () ListLongMap!4823)

(declare-fun lt!170845 () array!21581)

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!12885)

(declare-fun getCurrentListMap!1877 (array!21581 array!21579 (_ BitVec 32) (_ BitVec 32) V!12885 V!12885 (_ BitVec 32) Int) ListLongMap!4823)

(assert (=> b!372494 (= lt!170847 (getCurrentListMap!1877 lt!170845 lt!170849 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170846 () ListLongMap!4823)

(declare-fun lt!170848 () ListLongMap!4823)

(assert (=> b!372494 (and (= lt!170846 lt!170848) (= lt!170848 lt!170846))))

(declare-fun lt!170851 () ListLongMap!4823)

(declare-fun v!373 () V!12885)

(declare-fun +!768 (ListLongMap!4823 tuple2!5896) ListLongMap!4823)

(assert (=> b!372494 (= lt!170848 (+!768 lt!170851 (tuple2!5897 k0!778 v!373)))))

(declare-datatypes ((Unit!11441 0))(
  ( (Unit!11442) )
))
(declare-fun lt!170850 () Unit!11441)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!28 (array!21581 array!21579 (_ BitVec 32) (_ BitVec 32) V!12885 V!12885 (_ BitVec 32) (_ BitVec 64) V!12885 (_ BitVec 32) Int) Unit!11441)

(assert (=> b!372494 (= lt!170850 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!28 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!695 (array!21581 array!21579 (_ BitVec 32) (_ BitVec 32) V!12885 V!12885 (_ BitVec 32) Int) ListLongMap!4823)

(assert (=> b!372494 (= lt!170846 (getCurrentListMapNoExtraKeys!695 lt!170845 lt!170849 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372494 (= lt!170849 (array!21580 (store (arr!10255 _values!506) i!548 (ValueCellFull!4074 v!373)) (size!10607 _values!506)))))

(assert (=> b!372494 (= lt!170851 (getCurrentListMapNoExtraKeys!695 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!372495 () Bool)

(declare-fun e!227190 () Bool)

(declare-fun tp_is_empty!8835 () Bool)

(assert (=> b!372495 (= e!227190 tp_is_empty!8835)))

(declare-fun b!372496 () Bool)

(declare-fun res!209709 () Bool)

(assert (=> b!372496 (=> (not res!209709) (not e!227185))))

(assert (=> b!372496 (= res!209709 (or (= (select (arr!10256 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10256 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14817 () Bool)

(declare-fun tp!29277 () Bool)

(assert (=> mapNonEmpty!14817 (= mapRes!14817 (and tp!29277 e!227190))))

(declare-fun mapKey!14817 () (_ BitVec 32))

(declare-fun mapValue!14817 () ValueCell!4074)

(declare-fun mapRest!14817 () (Array (_ BitVec 32) ValueCell!4074))

(assert (=> mapNonEmpty!14817 (= (arr!10255 _values!506) (store mapRest!14817 mapKey!14817 mapValue!14817))))

(declare-fun b!372497 () Bool)

(assert (=> b!372497 (= e!227185 e!227187)))

(declare-fun res!209713 () Bool)

(assert (=> b!372497 (=> (not res!209713) (not e!227187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21581 (_ BitVec 32)) Bool)

(assert (=> b!372497 (= res!209713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170845 mask!970))))

(assert (=> b!372497 (= lt!170845 (array!21582 (store (arr!10256 _keys!658) i!548 k0!778) (size!10608 _keys!658)))))

(declare-fun b!372498 () Bool)

(declare-fun res!209706 () Bool)

(assert (=> b!372498 (=> (not res!209706) (not e!227185))))

(assert (=> b!372498 (= res!209706 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10608 _keys!658))))))

(declare-fun res!209711 () Bool)

(assert (=> start!37068 (=> (not res!209711) (not e!227185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37068 (= res!209711 (validMask!0 mask!970))))

(assert (=> start!37068 e!227185))

(declare-fun e!227188 () Bool)

(declare-fun array_inv!7574 (array!21579) Bool)

(assert (=> start!37068 (and (array_inv!7574 _values!506) e!227188)))

(assert (=> start!37068 tp!29276))

(assert (=> start!37068 true))

(assert (=> start!37068 tp_is_empty!8835))

(declare-fun array_inv!7575 (array!21581) Bool)

(assert (=> start!37068 (array_inv!7575 _keys!658)))

(declare-fun b!372491 () Bool)

(declare-fun res!209712 () Bool)

(assert (=> b!372491 (=> (not res!209712) (not e!227187))))

(declare-datatypes ((List!5772 0))(
  ( (Nil!5769) (Cons!5768 (h!6624 (_ BitVec 64)) (t!10930 List!5772)) )
))
(declare-fun arrayNoDuplicates!0 (array!21581 (_ BitVec 32) List!5772) Bool)

(assert (=> b!372491 (= res!209712 (arrayNoDuplicates!0 lt!170845 #b00000000000000000000000000000000 Nil!5769))))

(declare-fun b!372499 () Bool)

(declare-fun res!209714 () Bool)

(assert (=> b!372499 (=> (not res!209714) (not e!227185))))

(assert (=> b!372499 (= res!209714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!372500 () Bool)

(declare-fun res!209708 () Bool)

(assert (=> b!372500 (=> (not res!209708) (not e!227185))))

(declare-fun arrayContainsKey!0 (array!21581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!372500 (= res!209708 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!372501 () Bool)

(declare-fun res!209710 () Bool)

(assert (=> b!372501 (=> (not res!209710) (not e!227185))))

(assert (=> b!372501 (= res!209710 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5769))))

(declare-fun b!372502 () Bool)

(declare-fun e!227189 () Bool)

(assert (=> b!372502 (= e!227189 tp_is_empty!8835)))

(declare-fun b!372503 () Bool)

(assert (=> b!372503 (= e!227188 (and e!227189 mapRes!14817))))

(declare-fun condMapEmpty!14817 () Bool)

(declare-fun mapDefault!14817 () ValueCell!4074)

(assert (=> b!372503 (= condMapEmpty!14817 (= (arr!10255 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4074)) mapDefault!14817)))))

(assert (= (and start!37068 res!209711) b!372493))

(assert (= (and b!372493 res!209707) b!372499))

(assert (= (and b!372499 res!209714) b!372501))

(assert (= (and b!372501 res!209710) b!372498))

(assert (= (and b!372498 res!209706) b!372492))

(assert (= (and b!372492 res!209705) b!372496))

(assert (= (and b!372496 res!209709) b!372500))

(assert (= (and b!372500 res!209708) b!372497))

(assert (= (and b!372497 res!209713) b!372491))

(assert (= (and b!372491 res!209712) b!372494))

(assert (= (and b!372503 condMapEmpty!14817) mapIsEmpty!14817))

(assert (= (and b!372503 (not condMapEmpty!14817)) mapNonEmpty!14817))

(get-info :version)

(assert (= (and mapNonEmpty!14817 ((_ is ValueCellFull!4074) mapValue!14817)) b!372495))

(assert (= (and b!372503 ((_ is ValueCellFull!4074) mapDefault!14817)) b!372502))

(assert (= start!37068 b!372503))

(declare-fun m!368381 () Bool)

(assert (=> b!372492 m!368381))

(declare-fun m!368383 () Bool)

(assert (=> start!37068 m!368383))

(declare-fun m!368385 () Bool)

(assert (=> start!37068 m!368385))

(declare-fun m!368387 () Bool)

(assert (=> start!37068 m!368387))

(declare-fun m!368389 () Bool)

(assert (=> b!372499 m!368389))

(declare-fun m!368391 () Bool)

(assert (=> b!372491 m!368391))

(declare-fun m!368393 () Bool)

(assert (=> mapNonEmpty!14817 m!368393))

(declare-fun m!368395 () Bool)

(assert (=> b!372497 m!368395))

(declare-fun m!368397 () Bool)

(assert (=> b!372497 m!368397))

(declare-fun m!368399 () Bool)

(assert (=> b!372501 m!368399))

(declare-fun m!368401 () Bool)

(assert (=> b!372500 m!368401))

(declare-fun m!368403 () Bool)

(assert (=> b!372496 m!368403))

(declare-fun m!368405 () Bool)

(assert (=> b!372494 m!368405))

(declare-fun m!368407 () Bool)

(assert (=> b!372494 m!368407))

(declare-fun m!368409 () Bool)

(assert (=> b!372494 m!368409))

(declare-fun m!368411 () Bool)

(assert (=> b!372494 m!368411))

(declare-fun m!368413 () Bool)

(assert (=> b!372494 m!368413))

(declare-fun m!368415 () Bool)

(assert (=> b!372494 m!368415))

(check-sat (not b!372494) (not b!372497) (not b_next!8187) (not b!372501) (not b!372492) (not b!372499) (not mapNonEmpty!14817) (not b!372491) (not start!37068) b_and!15447 tp_is_empty!8835 (not b!372500))
(check-sat b_and!15447 (not b_next!8187))
