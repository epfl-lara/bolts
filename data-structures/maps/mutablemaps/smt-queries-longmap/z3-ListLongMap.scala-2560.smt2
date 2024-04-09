; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39188 () Bool)

(assert start!39188)

(declare-fun b_free!9447 () Bool)

(declare-fun b_next!9447 () Bool)

(assert (=> start!39188 (= b_free!9447 (not b_next!9447))))

(declare-fun tp!33870 () Bool)

(declare-fun b_and!16851 () Bool)

(assert (=> start!39188 (= tp!33870 b_and!16851)))

(declare-fun b!412467 () Bool)

(declare-fun res!239625 () Bool)

(declare-fun e!246788 () Bool)

(assert (=> b!412467 (=> (not res!239625) (not e!246788))))

(declare-datatypes ((array!25037 0))(
  ( (array!25038 (arr!11965 (Array (_ BitVec 32) (_ BitVec 64))) (size!12317 (_ BitVec 32))) )
))
(declare-fun lt!189488 () array!25037)

(declare-datatypes ((List!6919 0))(
  ( (Nil!6916) (Cons!6915 (h!7771 (_ BitVec 64)) (t!12101 List!6919)) )
))
(declare-fun arrayNoDuplicates!0 (array!25037 (_ BitVec 32) List!6919) Bool)

(assert (=> b!412467 (= res!239625 (arrayNoDuplicates!0 lt!189488 #b00000000000000000000000000000000 Nil!6916))))

(declare-fun b!412468 () Bool)

(declare-fun res!239624 () Bool)

(declare-fun e!246790 () Bool)

(assert (=> b!412468 (=> (not res!239624) (not e!246790))))

(declare-fun _keys!709 () array!25037)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!412468 (= res!239624 (or (= (select (arr!11965 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11965 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!412469 () Bool)

(assert (=> b!412469 (= e!246790 e!246788)))

(declare-fun res!239628 () Bool)

(assert (=> b!412469 (=> (not res!239628) (not e!246788))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25037 (_ BitVec 32)) Bool)

(assert (=> b!412469 (= res!239628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189488 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!412469 (= lt!189488 (array!25038 (store (arr!11965 _keys!709) i!563 k0!794) (size!12317 _keys!709)))))

(declare-fun b!412470 () Bool)

(declare-fun res!239623 () Bool)

(assert (=> b!412470 (=> (not res!239623) (not e!246790))))

(assert (=> b!412470 (= res!239623 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6916))))

(declare-fun mapNonEmpty!17520 () Bool)

(declare-fun mapRes!17520 () Bool)

(declare-fun tp!33869 () Bool)

(declare-fun e!246789 () Bool)

(assert (=> mapNonEmpty!17520 (= mapRes!17520 (and tp!33869 e!246789))))

(declare-datatypes ((V!15237 0))(
  ( (V!15238 (val!5344 Int)) )
))
(declare-datatypes ((ValueCell!4956 0))(
  ( (ValueCellFull!4956 (v!7587 V!15237)) (EmptyCell!4956) )
))
(declare-fun mapValue!17520 () ValueCell!4956)

(declare-datatypes ((array!25039 0))(
  ( (array!25040 (arr!11966 (Array (_ BitVec 32) ValueCell!4956)) (size!12318 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25039)

(declare-fun mapRest!17520 () (Array (_ BitVec 32) ValueCell!4956))

(declare-fun mapKey!17520 () (_ BitVec 32))

(assert (=> mapNonEmpty!17520 (= (arr!11966 _values!549) (store mapRest!17520 mapKey!17520 mapValue!17520))))

(declare-fun b!412471 () Bool)

(declare-fun e!246792 () Bool)

(declare-fun e!246793 () Bool)

(assert (=> b!412471 (= e!246792 (and e!246793 mapRes!17520))))

(declare-fun condMapEmpty!17520 () Bool)

(declare-fun mapDefault!17520 () ValueCell!4956)

(assert (=> b!412471 (= condMapEmpty!17520 (= (arr!11966 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4956)) mapDefault!17520)))))

(declare-fun b!412472 () Bool)

(declare-fun res!239632 () Bool)

(assert (=> b!412472 (=> (not res!239632) (not e!246790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!412472 (= res!239632 (validKeyInArray!0 k0!794))))

(declare-fun res!239627 () Bool)

(assert (=> start!39188 (=> (not res!239627) (not e!246790))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39188 (= res!239627 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12317 _keys!709))))))

(assert (=> start!39188 e!246790))

(declare-fun tp_is_empty!10599 () Bool)

(assert (=> start!39188 tp_is_empty!10599))

(assert (=> start!39188 tp!33870))

(assert (=> start!39188 true))

(declare-fun array_inv!8724 (array!25039) Bool)

(assert (=> start!39188 (and (array_inv!8724 _values!549) e!246792)))

(declare-fun array_inv!8725 (array!25037) Bool)

(assert (=> start!39188 (array_inv!8725 _keys!709)))

(declare-fun b!412473 () Bool)

(assert (=> b!412473 (= e!246789 tp_is_empty!10599)))

(declare-fun b!412474 () Bool)

(declare-fun res!239630 () Bool)

(assert (=> b!412474 (=> (not res!239630) (not e!246790))))

(declare-fun arrayContainsKey!0 (array!25037 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!412474 (= res!239630 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!412475 () Bool)

(assert (=> b!412475 (= e!246788 false)))

(declare-datatypes ((tuple2!6858 0))(
  ( (tuple2!6859 (_1!3439 (_ BitVec 64)) (_2!3439 V!15237)) )
))
(declare-datatypes ((List!6920 0))(
  ( (Nil!6917) (Cons!6916 (h!7772 tuple2!6858) (t!12102 List!6920)) )
))
(declare-datatypes ((ListLongMap!5785 0))(
  ( (ListLongMap!5786 (toList!2908 List!6920)) )
))
(declare-fun lt!189487 () ListLongMap!5785)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15237)

(declare-fun v!412 () V!15237)

(declare-fun minValue!515 () V!15237)

(declare-fun getCurrentListMapNoExtraKeys!1118 (array!25037 array!25039 (_ BitVec 32) (_ BitVec 32) V!15237 V!15237 (_ BitVec 32) Int) ListLongMap!5785)

(assert (=> b!412475 (= lt!189487 (getCurrentListMapNoExtraKeys!1118 lt!189488 (array!25040 (store (arr!11966 _values!549) i!563 (ValueCellFull!4956 v!412)) (size!12318 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189489 () ListLongMap!5785)

(assert (=> b!412475 (= lt!189489 (getCurrentListMapNoExtraKeys!1118 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!412476 () Bool)

(declare-fun res!239631 () Bool)

(assert (=> b!412476 (=> (not res!239631) (not e!246790))))

(assert (=> b!412476 (= res!239631 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12317 _keys!709))))))

(declare-fun b!412477 () Bool)

(assert (=> b!412477 (= e!246793 tp_is_empty!10599)))

(declare-fun b!412478 () Bool)

(declare-fun res!239634 () Bool)

(assert (=> b!412478 (=> (not res!239634) (not e!246790))))

(assert (=> b!412478 (= res!239634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!412479 () Bool)

(declare-fun res!239633 () Bool)

(assert (=> b!412479 (=> (not res!239633) (not e!246790))))

(assert (=> b!412479 (= res!239633 (and (= (size!12318 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12317 _keys!709) (size!12318 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17520 () Bool)

(assert (=> mapIsEmpty!17520 mapRes!17520))

(declare-fun b!412480 () Bool)

(declare-fun res!239629 () Bool)

(assert (=> b!412480 (=> (not res!239629) (not e!246788))))

(assert (=> b!412480 (= res!239629 (bvsle from!863 i!563))))

(declare-fun b!412481 () Bool)

(declare-fun res!239626 () Bool)

(assert (=> b!412481 (=> (not res!239626) (not e!246790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!412481 (= res!239626 (validMask!0 mask!1025))))

(assert (= (and start!39188 res!239627) b!412481))

(assert (= (and b!412481 res!239626) b!412479))

(assert (= (and b!412479 res!239633) b!412478))

(assert (= (and b!412478 res!239634) b!412470))

(assert (= (and b!412470 res!239623) b!412476))

(assert (= (and b!412476 res!239631) b!412472))

(assert (= (and b!412472 res!239632) b!412468))

(assert (= (and b!412468 res!239624) b!412474))

(assert (= (and b!412474 res!239630) b!412469))

(assert (= (and b!412469 res!239628) b!412467))

(assert (= (and b!412467 res!239625) b!412480))

(assert (= (and b!412480 res!239629) b!412475))

(assert (= (and b!412471 condMapEmpty!17520) mapIsEmpty!17520))

(assert (= (and b!412471 (not condMapEmpty!17520)) mapNonEmpty!17520))

(get-info :version)

(assert (= (and mapNonEmpty!17520 ((_ is ValueCellFull!4956) mapValue!17520)) b!412473))

(assert (= (and b!412471 ((_ is ValueCellFull!4956) mapDefault!17520)) b!412477))

(assert (= start!39188 b!412471))

(declare-fun m!402249 () Bool)

(assert (=> start!39188 m!402249))

(declare-fun m!402251 () Bool)

(assert (=> start!39188 m!402251))

(declare-fun m!402253 () Bool)

(assert (=> b!412475 m!402253))

(declare-fun m!402255 () Bool)

(assert (=> b!412475 m!402255))

(declare-fun m!402257 () Bool)

(assert (=> b!412475 m!402257))

(declare-fun m!402259 () Bool)

(assert (=> b!412478 m!402259))

(declare-fun m!402261 () Bool)

(assert (=> b!412472 m!402261))

(declare-fun m!402263 () Bool)

(assert (=> mapNonEmpty!17520 m!402263))

(declare-fun m!402265 () Bool)

(assert (=> b!412474 m!402265))

(declare-fun m!402267 () Bool)

(assert (=> b!412481 m!402267))

(declare-fun m!402269 () Bool)

(assert (=> b!412470 m!402269))

(declare-fun m!402271 () Bool)

(assert (=> b!412469 m!402271))

(declare-fun m!402273 () Bool)

(assert (=> b!412469 m!402273))

(declare-fun m!402275 () Bool)

(assert (=> b!412468 m!402275))

(declare-fun m!402277 () Bool)

(assert (=> b!412467 m!402277))

(check-sat (not b!412481) tp_is_empty!10599 (not b!412470) (not b!412472) (not b_next!9447) (not mapNonEmpty!17520) (not b!412467) (not b!412474) (not start!39188) (not b!412478) (not b!412475) (not b!412469) b_and!16851)
(check-sat b_and!16851 (not b_next!9447))
