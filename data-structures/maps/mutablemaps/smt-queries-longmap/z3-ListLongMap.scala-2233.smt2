; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36870 () Bool)

(assert start!36870)

(declare-fun b_free!7989 () Bool)

(declare-fun b_next!7989 () Bool)

(assert (=> start!36870 (= b_free!7989 (not b_next!7989))))

(declare-fun tp!28683 () Bool)

(declare-fun b_and!15249 () Bool)

(assert (=> start!36870 (= tp!28683 b_and!15249)))

(declare-fun b!368630 () Bool)

(declare-fun res!206744 () Bool)

(declare-fun e!225406 () Bool)

(assert (=> b!368630 (=> (not res!206744) (not e!225406))))

(declare-datatypes ((array!21197 0))(
  ( (array!21198 (arr!10064 (Array (_ BitVec 32) (_ BitVec 64))) (size!10416 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21197)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368630 (= res!206744 (or (= (select (arr!10064 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10064 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14520 () Bool)

(declare-fun mapRes!14520 () Bool)

(assert (=> mapIsEmpty!14520 mapRes!14520))

(declare-fun mapNonEmpty!14520 () Bool)

(declare-fun tp!28682 () Bool)

(declare-fun e!225408 () Bool)

(assert (=> mapNonEmpty!14520 (= mapRes!14520 (and tp!28682 e!225408))))

(declare-datatypes ((V!12621 0))(
  ( (V!12622 (val!4363 Int)) )
))
(declare-datatypes ((ValueCell!3975 0))(
  ( (ValueCellFull!3975 (v!6556 V!12621)) (EmptyCell!3975) )
))
(declare-fun mapRest!14520 () (Array (_ BitVec 32) ValueCell!3975))

(declare-datatypes ((array!21199 0))(
  ( (array!21200 (arr!10065 (Array (_ BitVec 32) ValueCell!3975)) (size!10417 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21199)

(declare-fun mapKey!14520 () (_ BitVec 32))

(declare-fun mapValue!14520 () ValueCell!3975)

(assert (=> mapNonEmpty!14520 (= (arr!10065 _values!506) (store mapRest!14520 mapKey!14520 mapValue!14520))))

(declare-fun b!368632 () Bool)

(declare-fun res!206743 () Bool)

(assert (=> b!368632 (=> (not res!206743) (not e!225406))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368632 (= res!206743 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!368633 () Bool)

(declare-fun tp_is_empty!8637 () Bool)

(assert (=> b!368633 (= e!225408 tp_is_empty!8637)))

(declare-fun b!368634 () Bool)

(declare-fun e!225405 () Bool)

(assert (=> b!368634 (= e!225405 false)))

(declare-datatypes ((tuple2!5776 0))(
  ( (tuple2!5777 (_1!2898 (_ BitVec 64)) (_2!2898 V!12621)) )
))
(declare-datatypes ((List!5636 0))(
  ( (Nil!5633) (Cons!5632 (h!6488 tuple2!5776) (t!10794 List!5636)) )
))
(declare-datatypes ((ListLongMap!4703 0))(
  ( (ListLongMap!4704 (toList!2367 List!5636)) )
))
(declare-fun lt!169557 () ListLongMap!4703)

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!169556 () array!21197)

(declare-fun zeroValue!472 () V!12621)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12621)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12621)

(declare-fun getCurrentListMapNoExtraKeys!635 (array!21197 array!21199 (_ BitVec 32) (_ BitVec 32) V!12621 V!12621 (_ BitVec 32) Int) ListLongMap!4703)

(assert (=> b!368634 (= lt!169557 (getCurrentListMapNoExtraKeys!635 lt!169556 (array!21200 (store (arr!10065 _values!506) i!548 (ValueCellFull!3975 v!373)) (size!10417 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169558 () ListLongMap!4703)

(assert (=> b!368634 (= lt!169558 (getCurrentListMapNoExtraKeys!635 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368635 () Bool)

(declare-fun res!206740 () Bool)

(assert (=> b!368635 (=> (not res!206740) (not e!225406))))

(declare-datatypes ((List!5637 0))(
  ( (Nil!5634) (Cons!5633 (h!6489 (_ BitVec 64)) (t!10795 List!5637)) )
))
(declare-fun arrayNoDuplicates!0 (array!21197 (_ BitVec 32) List!5637) Bool)

(assert (=> b!368635 (= res!206740 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5634))))

(declare-fun b!368636 () Bool)

(declare-fun res!206741 () Bool)

(assert (=> b!368636 (=> (not res!206741) (not e!225406))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368636 (= res!206741 (validKeyInArray!0 k0!778))))

(declare-fun b!368637 () Bool)

(assert (=> b!368637 (= e!225406 e!225405)))

(declare-fun res!206737 () Bool)

(assert (=> b!368637 (=> (not res!206737) (not e!225405))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21197 (_ BitVec 32)) Bool)

(assert (=> b!368637 (= res!206737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169556 mask!970))))

(assert (=> b!368637 (= lt!169556 (array!21198 (store (arr!10064 _keys!658) i!548 k0!778) (size!10416 _keys!658)))))

(declare-fun b!368638 () Bool)

(declare-fun e!225403 () Bool)

(assert (=> b!368638 (= e!225403 tp_is_empty!8637)))

(declare-fun b!368631 () Bool)

(declare-fun res!206736 () Bool)

(assert (=> b!368631 (=> (not res!206736) (not e!225405))))

(assert (=> b!368631 (= res!206736 (arrayNoDuplicates!0 lt!169556 #b00000000000000000000000000000000 Nil!5634))))

(declare-fun res!206738 () Bool)

(assert (=> start!36870 (=> (not res!206738) (not e!225406))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36870 (= res!206738 (validMask!0 mask!970))))

(assert (=> start!36870 e!225406))

(declare-fun e!225404 () Bool)

(declare-fun array_inv!7434 (array!21199) Bool)

(assert (=> start!36870 (and (array_inv!7434 _values!506) e!225404)))

(assert (=> start!36870 tp!28683))

(assert (=> start!36870 true))

(assert (=> start!36870 tp_is_empty!8637))

(declare-fun array_inv!7435 (array!21197) Bool)

(assert (=> start!36870 (array_inv!7435 _keys!658)))

(declare-fun b!368639 () Bool)

(declare-fun res!206735 () Bool)

(assert (=> b!368639 (=> (not res!206735) (not e!225406))))

(assert (=> b!368639 (= res!206735 (and (= (size!10417 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10416 _keys!658) (size!10417 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!368640 () Bool)

(assert (=> b!368640 (= e!225404 (and e!225403 mapRes!14520))))

(declare-fun condMapEmpty!14520 () Bool)

(declare-fun mapDefault!14520 () ValueCell!3975)

(assert (=> b!368640 (= condMapEmpty!14520 (= (arr!10065 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3975)) mapDefault!14520)))))

(declare-fun b!368641 () Bool)

(declare-fun res!206742 () Bool)

(assert (=> b!368641 (=> (not res!206742) (not e!225406))))

(assert (=> b!368641 (= res!206742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!368642 () Bool)

(declare-fun res!206739 () Bool)

(assert (=> b!368642 (=> (not res!206739) (not e!225406))))

(assert (=> b!368642 (= res!206739 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10416 _keys!658))))))

(assert (= (and start!36870 res!206738) b!368639))

(assert (= (and b!368639 res!206735) b!368641))

(assert (= (and b!368641 res!206742) b!368635))

(assert (= (and b!368635 res!206740) b!368642))

(assert (= (and b!368642 res!206739) b!368636))

(assert (= (and b!368636 res!206741) b!368630))

(assert (= (and b!368630 res!206744) b!368632))

(assert (= (and b!368632 res!206743) b!368637))

(assert (= (and b!368637 res!206737) b!368631))

(assert (= (and b!368631 res!206736) b!368634))

(assert (= (and b!368640 condMapEmpty!14520) mapIsEmpty!14520))

(assert (= (and b!368640 (not condMapEmpty!14520)) mapNonEmpty!14520))

(get-info :version)

(assert (= (and mapNonEmpty!14520 ((_ is ValueCellFull!3975) mapValue!14520)) b!368633))

(assert (= (and b!368640 ((_ is ValueCellFull!3975) mapDefault!14520)) b!368638))

(assert (= start!36870 b!368640))

(declare-fun m!365189 () Bool)

(assert (=> b!368630 m!365189))

(declare-fun m!365191 () Bool)

(assert (=> b!368634 m!365191))

(declare-fun m!365193 () Bool)

(assert (=> b!368634 m!365193))

(declare-fun m!365195 () Bool)

(assert (=> b!368634 m!365195))

(declare-fun m!365197 () Bool)

(assert (=> b!368631 m!365197))

(declare-fun m!365199 () Bool)

(assert (=> b!368636 m!365199))

(declare-fun m!365201 () Bool)

(assert (=> mapNonEmpty!14520 m!365201))

(declare-fun m!365203 () Bool)

(assert (=> b!368641 m!365203))

(declare-fun m!365205 () Bool)

(assert (=> b!368635 m!365205))

(declare-fun m!365207 () Bool)

(assert (=> start!36870 m!365207))

(declare-fun m!365209 () Bool)

(assert (=> start!36870 m!365209))

(declare-fun m!365211 () Bool)

(assert (=> start!36870 m!365211))

(declare-fun m!365213 () Bool)

(assert (=> b!368637 m!365213))

(declare-fun m!365215 () Bool)

(assert (=> b!368637 m!365215))

(declare-fun m!365217 () Bool)

(assert (=> b!368632 m!365217))

(check-sat (not b!368636) (not b!368632) (not b!368631) b_and!15249 (not start!36870) (not b!368641) (not b!368635) (not b!368634) (not b_next!7989) tp_is_empty!8637 (not mapNonEmpty!14520) (not b!368637))
(check-sat b_and!15249 (not b_next!7989))
