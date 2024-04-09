; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39140 () Bool)

(assert start!39140)

(declare-fun b_free!9399 () Bool)

(declare-fun b_next!9399 () Bool)

(assert (=> start!39140 (= b_free!9399 (not b_next!9399))))

(declare-fun tp!33726 () Bool)

(declare-fun b_and!16803 () Bool)

(assert (=> start!39140 (= tp!33726 b_and!16803)))

(declare-fun b!411387 () Bool)

(declare-fun e!246358 () Bool)

(declare-fun tp_is_empty!10551 () Bool)

(assert (=> b!411387 (= e!246358 tp_is_empty!10551)))

(declare-fun res!238770 () Bool)

(declare-fun e!246357 () Bool)

(assert (=> start!39140 (=> (not res!238770) (not e!246357))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24947 0))(
  ( (array!24948 (arr!11920 (Array (_ BitVec 32) (_ BitVec 64))) (size!12272 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24947)

(assert (=> start!39140 (= res!238770 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12272 _keys!709))))))

(assert (=> start!39140 e!246357))

(assert (=> start!39140 tp_is_empty!10551))

(assert (=> start!39140 tp!33726))

(assert (=> start!39140 true))

(declare-datatypes ((V!15173 0))(
  ( (V!15174 (val!5320 Int)) )
))
(declare-datatypes ((ValueCell!4932 0))(
  ( (ValueCellFull!4932 (v!7563 V!15173)) (EmptyCell!4932) )
))
(declare-datatypes ((array!24949 0))(
  ( (array!24950 (arr!11921 (Array (_ BitVec 32) ValueCell!4932)) (size!12273 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24949)

(declare-fun e!246361 () Bool)

(declare-fun array_inv!8698 (array!24949) Bool)

(assert (=> start!39140 (and (array_inv!8698 _values!549) e!246361)))

(declare-fun array_inv!8699 (array!24947) Bool)

(assert (=> start!39140 (array_inv!8699 _keys!709)))

(declare-fun b!411388 () Bool)

(declare-fun res!238760 () Bool)

(assert (=> b!411388 (=> (not res!238760) (not e!246357))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!411388 (= res!238760 (validKeyInArray!0 k0!794))))

(declare-fun b!411389 () Bool)

(declare-fun mapRes!17448 () Bool)

(assert (=> b!411389 (= e!246361 (and e!246358 mapRes!17448))))

(declare-fun condMapEmpty!17448 () Bool)

(declare-fun mapDefault!17448 () ValueCell!4932)

(assert (=> b!411389 (= condMapEmpty!17448 (= (arr!11921 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4932)) mapDefault!17448)))))

(declare-fun b!411390 () Bool)

(declare-fun res!238764 () Bool)

(assert (=> b!411390 (=> (not res!238764) (not e!246357))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!411390 (= res!238764 (validMask!0 mask!1025))))

(declare-fun b!411391 () Bool)

(declare-fun e!246356 () Bool)

(assert (=> b!411391 (= e!246356 false)))

(declare-fun minValue!515 () V!15173)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!6832 0))(
  ( (tuple2!6833 (_1!3426 (_ BitVec 64)) (_2!3426 V!15173)) )
))
(declare-datatypes ((List!6889 0))(
  ( (Nil!6886) (Cons!6885 (h!7741 tuple2!6832) (t!12071 List!6889)) )
))
(declare-datatypes ((ListLongMap!5759 0))(
  ( (ListLongMap!5760 (toList!2895 List!6889)) )
))
(declare-fun lt!189273 () ListLongMap!5759)

(declare-fun zeroValue!515 () V!15173)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lt!189271 () array!24947)

(declare-fun v!412 () V!15173)

(declare-fun getCurrentListMapNoExtraKeys!1105 (array!24947 array!24949 (_ BitVec 32) (_ BitVec 32) V!15173 V!15173 (_ BitVec 32) Int) ListLongMap!5759)

(assert (=> b!411391 (= lt!189273 (getCurrentListMapNoExtraKeys!1105 lt!189271 (array!24950 (store (arr!11921 _values!549) i!563 (ValueCellFull!4932 v!412)) (size!12273 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189272 () ListLongMap!5759)

(assert (=> b!411391 (= lt!189272 (getCurrentListMapNoExtraKeys!1105 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!411392 () Bool)

(declare-fun e!246360 () Bool)

(assert (=> b!411392 (= e!246360 tp_is_empty!10551)))

(declare-fun b!411393 () Bool)

(declare-fun res!238766 () Bool)

(assert (=> b!411393 (=> (not res!238766) (not e!246357))))

(declare-fun arrayContainsKey!0 (array!24947 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!411393 (= res!238766 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!411394 () Bool)

(declare-fun res!238762 () Bool)

(assert (=> b!411394 (=> (not res!238762) (not e!246357))))

(assert (=> b!411394 (= res!238762 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12272 _keys!709))))))

(declare-fun b!411395 () Bool)

(assert (=> b!411395 (= e!246357 e!246356)))

(declare-fun res!238768 () Bool)

(assert (=> b!411395 (=> (not res!238768) (not e!246356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24947 (_ BitVec 32)) Bool)

(assert (=> b!411395 (= res!238768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189271 mask!1025))))

(assert (=> b!411395 (= lt!189271 (array!24948 (store (arr!11920 _keys!709) i!563 k0!794) (size!12272 _keys!709)))))

(declare-fun mapNonEmpty!17448 () Bool)

(declare-fun tp!33725 () Bool)

(assert (=> mapNonEmpty!17448 (= mapRes!17448 (and tp!33725 e!246360))))

(declare-fun mapValue!17448 () ValueCell!4932)

(declare-fun mapRest!17448 () (Array (_ BitVec 32) ValueCell!4932))

(declare-fun mapKey!17448 () (_ BitVec 32))

(assert (=> mapNonEmpty!17448 (= (arr!11921 _values!549) (store mapRest!17448 mapKey!17448 mapValue!17448))))

(declare-fun b!411396 () Bool)

(declare-fun res!238769 () Bool)

(assert (=> b!411396 (=> (not res!238769) (not e!246357))))

(assert (=> b!411396 (= res!238769 (or (= (select (arr!11920 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11920 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!411397 () Bool)

(declare-fun res!238767 () Bool)

(assert (=> b!411397 (=> (not res!238767) (not e!246357))))

(assert (=> b!411397 (= res!238767 (and (= (size!12273 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12272 _keys!709) (size!12273 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!411398 () Bool)

(declare-fun res!238759 () Bool)

(assert (=> b!411398 (=> (not res!238759) (not e!246357))))

(declare-datatypes ((List!6890 0))(
  ( (Nil!6887) (Cons!6886 (h!7742 (_ BitVec 64)) (t!12072 List!6890)) )
))
(declare-fun arrayNoDuplicates!0 (array!24947 (_ BitVec 32) List!6890) Bool)

(assert (=> b!411398 (= res!238759 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6887))))

(declare-fun b!411399 () Bool)

(declare-fun res!238765 () Bool)

(assert (=> b!411399 (=> (not res!238765) (not e!246356))))

(assert (=> b!411399 (= res!238765 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!17448 () Bool)

(assert (=> mapIsEmpty!17448 mapRes!17448))

(declare-fun b!411400 () Bool)

(declare-fun res!238761 () Bool)

(assert (=> b!411400 (=> (not res!238761) (not e!246357))))

(assert (=> b!411400 (= res!238761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!411401 () Bool)

(declare-fun res!238763 () Bool)

(assert (=> b!411401 (=> (not res!238763) (not e!246356))))

(assert (=> b!411401 (= res!238763 (arrayNoDuplicates!0 lt!189271 #b00000000000000000000000000000000 Nil!6887))))

(assert (= (and start!39140 res!238770) b!411390))

(assert (= (and b!411390 res!238764) b!411397))

(assert (= (and b!411397 res!238767) b!411400))

(assert (= (and b!411400 res!238761) b!411398))

(assert (= (and b!411398 res!238759) b!411394))

(assert (= (and b!411394 res!238762) b!411388))

(assert (= (and b!411388 res!238760) b!411396))

(assert (= (and b!411396 res!238769) b!411393))

(assert (= (and b!411393 res!238766) b!411395))

(assert (= (and b!411395 res!238768) b!411401))

(assert (= (and b!411401 res!238763) b!411399))

(assert (= (and b!411399 res!238765) b!411391))

(assert (= (and b!411389 condMapEmpty!17448) mapIsEmpty!17448))

(assert (= (and b!411389 (not condMapEmpty!17448)) mapNonEmpty!17448))

(get-info :version)

(assert (= (and mapNonEmpty!17448 ((_ is ValueCellFull!4932) mapValue!17448)) b!411392))

(assert (= (and b!411389 ((_ is ValueCellFull!4932) mapDefault!17448)) b!411387))

(assert (= start!39140 b!411389))

(declare-fun m!401529 () Bool)

(assert (=> b!411400 m!401529))

(declare-fun m!401531 () Bool)

(assert (=> b!411395 m!401531))

(declare-fun m!401533 () Bool)

(assert (=> b!411395 m!401533))

(declare-fun m!401535 () Bool)

(assert (=> b!411396 m!401535))

(declare-fun m!401537 () Bool)

(assert (=> b!411393 m!401537))

(declare-fun m!401539 () Bool)

(assert (=> start!39140 m!401539))

(declare-fun m!401541 () Bool)

(assert (=> start!39140 m!401541))

(declare-fun m!401543 () Bool)

(assert (=> b!411388 m!401543))

(declare-fun m!401545 () Bool)

(assert (=> b!411390 m!401545))

(declare-fun m!401547 () Bool)

(assert (=> b!411398 m!401547))

(declare-fun m!401549 () Bool)

(assert (=> mapNonEmpty!17448 m!401549))

(declare-fun m!401551 () Bool)

(assert (=> b!411391 m!401551))

(declare-fun m!401553 () Bool)

(assert (=> b!411391 m!401553))

(declare-fun m!401555 () Bool)

(assert (=> b!411391 m!401555))

(declare-fun m!401557 () Bool)

(assert (=> b!411401 m!401557))

(check-sat tp_is_empty!10551 (not b!411388) (not mapNonEmpty!17448) (not b!411395) (not start!39140) (not b_next!9399) (not b!411391) (not b!411401) (not b!411393) b_and!16803 (not b!411400) (not b!411390) (not b!411398))
(check-sat b_and!16803 (not b_next!9399))
