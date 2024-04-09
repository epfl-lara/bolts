; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39542 () Bool)

(assert start!39542)

(declare-fun b_free!9801 () Bool)

(declare-fun b_next!9801 () Bool)

(assert (=> start!39542 (= b_free!9801 (not b_next!9801))))

(declare-fun tp!34932 () Bool)

(declare-fun b_and!17475 () Bool)

(assert (=> start!39542 (= tp!34932 b_and!17475)))

(declare-fun b!422574 () Bool)

(declare-fun e!251363 () Bool)

(declare-fun tp_is_empty!10953 () Bool)

(assert (=> b!422574 (= e!251363 tp_is_empty!10953)))

(declare-fun b!422575 () Bool)

(declare-fun e!251365 () Bool)

(declare-fun e!251360 () Bool)

(assert (=> b!422575 (= e!251365 e!251360)))

(declare-fun res!246896 () Bool)

(assert (=> b!422575 (=> (not res!246896) (not e!251360))))

(declare-datatypes ((array!25733 0))(
  ( (array!25734 (arr!12313 (Array (_ BitVec 32) (_ BitVec 64))) (size!12665 (_ BitVec 32))) )
))
(declare-fun lt!193996 () array!25733)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25733 (_ BitVec 32)) Bool)

(assert (=> b!422575 (= res!246896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193996 mask!1025))))

(declare-fun _keys!709 () array!25733)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!422575 (= lt!193996 (array!25734 (store (arr!12313 _keys!709) i!563 k0!794) (size!12665 _keys!709)))))

(declare-fun b!422576 () Bool)

(declare-fun res!246897 () Bool)

(assert (=> b!422576 (=> (not res!246897) (not e!251365))))

(assert (=> b!422576 (= res!246897 (or (= (select (arr!12313 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12313 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!246904 () Bool)

(assert (=> start!39542 (=> (not res!246904) (not e!251365))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39542 (= res!246904 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12665 _keys!709))))))

(assert (=> start!39542 e!251365))

(assert (=> start!39542 tp_is_empty!10953))

(assert (=> start!39542 tp!34932))

(assert (=> start!39542 true))

(declare-datatypes ((V!15709 0))(
  ( (V!15710 (val!5521 Int)) )
))
(declare-datatypes ((ValueCell!5133 0))(
  ( (ValueCellFull!5133 (v!7764 V!15709)) (EmptyCell!5133) )
))
(declare-datatypes ((array!25735 0))(
  ( (array!25736 (arr!12314 (Array (_ BitVec 32) ValueCell!5133)) (size!12666 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25735)

(declare-fun e!251364 () Bool)

(declare-fun array_inv!8970 (array!25735) Bool)

(assert (=> start!39542 (and (array_inv!8970 _values!549) e!251364)))

(declare-fun array_inv!8971 (array!25733) Bool)

(assert (=> start!39542 (array_inv!8971 _keys!709)))

(declare-fun b!422577 () Bool)

(declare-fun res!246905 () Bool)

(assert (=> b!422577 (=> (not res!246905) (not e!251360))))

(assert (=> b!422577 (= res!246905 (bvsle from!863 i!563))))

(declare-fun b!422578 () Bool)

(declare-fun res!246901 () Bool)

(assert (=> b!422578 (=> (not res!246901) (not e!251365))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422578 (= res!246901 (validMask!0 mask!1025))))

(declare-fun b!422579 () Bool)

(declare-fun res!246895 () Bool)

(assert (=> b!422579 (=> (not res!246895) (not e!251365))))

(declare-fun arrayContainsKey!0 (array!25733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422579 (= res!246895 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!422580 () Bool)

(declare-fun res!246902 () Bool)

(assert (=> b!422580 (=> (not res!246902) (not e!251365))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422580 (= res!246902 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!18051 () Bool)

(declare-fun mapRes!18051 () Bool)

(assert (=> mapIsEmpty!18051 mapRes!18051))

(declare-fun b!422581 () Bool)

(declare-fun res!246900 () Bool)

(assert (=> b!422581 (=> (not res!246900) (not e!251365))))

(assert (=> b!422581 (= res!246900 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12665 _keys!709))))))

(declare-fun b!422582 () Bool)

(assert (=> b!422582 (= e!251360 false)))

(declare-fun minValue!515 () V!15709)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15709)

(declare-datatypes ((tuple2!7176 0))(
  ( (tuple2!7177 (_1!3598 (_ BitVec 64)) (_2!3598 V!15709)) )
))
(declare-datatypes ((List!7220 0))(
  ( (Nil!7217) (Cons!7216 (h!8072 tuple2!7176) (t!12672 List!7220)) )
))
(declare-datatypes ((ListLongMap!6103 0))(
  ( (ListLongMap!6104 (toList!3067 List!7220)) )
))
(declare-fun lt!193997 () ListLongMap!6103)

(declare-fun v!412 () V!15709)

(declare-fun getCurrentListMapNoExtraKeys!1268 (array!25733 array!25735 (_ BitVec 32) (_ BitVec 32) V!15709 V!15709 (_ BitVec 32) Int) ListLongMap!6103)

(assert (=> b!422582 (= lt!193997 (getCurrentListMapNoExtraKeys!1268 lt!193996 (array!25736 (store (arr!12314 _values!549) i!563 (ValueCellFull!5133 v!412)) (size!12666 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!193998 () ListLongMap!6103)

(assert (=> b!422582 (= lt!193998 (getCurrentListMapNoExtraKeys!1268 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!422583 () Bool)

(declare-fun res!246906 () Bool)

(assert (=> b!422583 (=> (not res!246906) (not e!251365))))

(assert (=> b!422583 (= res!246906 (and (= (size!12666 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12665 _keys!709) (size!12666 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!422584 () Bool)

(declare-fun res!246903 () Bool)

(assert (=> b!422584 (=> (not res!246903) (not e!251365))))

(declare-datatypes ((List!7221 0))(
  ( (Nil!7218) (Cons!7217 (h!8073 (_ BitVec 64)) (t!12673 List!7221)) )
))
(declare-fun arrayNoDuplicates!0 (array!25733 (_ BitVec 32) List!7221) Bool)

(assert (=> b!422584 (= res!246903 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7218))))

(declare-fun b!422585 () Bool)

(declare-fun e!251361 () Bool)

(assert (=> b!422585 (= e!251361 tp_is_empty!10953)))

(declare-fun mapNonEmpty!18051 () Bool)

(declare-fun tp!34931 () Bool)

(assert (=> mapNonEmpty!18051 (= mapRes!18051 (and tp!34931 e!251363))))

(declare-fun mapKey!18051 () (_ BitVec 32))

(declare-fun mapRest!18051 () (Array (_ BitVec 32) ValueCell!5133))

(declare-fun mapValue!18051 () ValueCell!5133)

(assert (=> mapNonEmpty!18051 (= (arr!12314 _values!549) (store mapRest!18051 mapKey!18051 mapValue!18051))))

(declare-fun b!422586 () Bool)

(declare-fun res!246898 () Bool)

(assert (=> b!422586 (=> (not res!246898) (not e!251365))))

(assert (=> b!422586 (= res!246898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!422587 () Bool)

(assert (=> b!422587 (= e!251364 (and e!251361 mapRes!18051))))

(declare-fun condMapEmpty!18051 () Bool)

(declare-fun mapDefault!18051 () ValueCell!5133)

(assert (=> b!422587 (= condMapEmpty!18051 (= (arr!12314 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5133)) mapDefault!18051)))))

(declare-fun b!422588 () Bool)

(declare-fun res!246899 () Bool)

(assert (=> b!422588 (=> (not res!246899) (not e!251360))))

(assert (=> b!422588 (= res!246899 (arrayNoDuplicates!0 lt!193996 #b00000000000000000000000000000000 Nil!7218))))

(assert (= (and start!39542 res!246904) b!422578))

(assert (= (and b!422578 res!246901) b!422583))

(assert (= (and b!422583 res!246906) b!422586))

(assert (= (and b!422586 res!246898) b!422584))

(assert (= (and b!422584 res!246903) b!422581))

(assert (= (and b!422581 res!246900) b!422580))

(assert (= (and b!422580 res!246902) b!422576))

(assert (= (and b!422576 res!246897) b!422579))

(assert (= (and b!422579 res!246895) b!422575))

(assert (= (and b!422575 res!246896) b!422588))

(assert (= (and b!422588 res!246899) b!422577))

(assert (= (and b!422577 res!246905) b!422582))

(assert (= (and b!422587 condMapEmpty!18051) mapIsEmpty!18051))

(assert (= (and b!422587 (not condMapEmpty!18051)) mapNonEmpty!18051))

(get-info :version)

(assert (= (and mapNonEmpty!18051 ((_ is ValueCellFull!5133) mapValue!18051)) b!422574))

(assert (= (and b!422587 ((_ is ValueCellFull!5133) mapDefault!18051)) b!422585))

(assert (= start!39542 b!422587))

(declare-fun m!412315 () Bool)

(assert (=> b!422579 m!412315))

(declare-fun m!412317 () Bool)

(assert (=> b!422582 m!412317))

(declare-fun m!412319 () Bool)

(assert (=> b!422582 m!412319))

(declare-fun m!412321 () Bool)

(assert (=> b!422582 m!412321))

(declare-fun m!412323 () Bool)

(assert (=> b!422575 m!412323))

(declare-fun m!412325 () Bool)

(assert (=> b!422575 m!412325))

(declare-fun m!412327 () Bool)

(assert (=> b!422586 m!412327))

(declare-fun m!412329 () Bool)

(assert (=> b!422578 m!412329))

(declare-fun m!412331 () Bool)

(assert (=> b!422588 m!412331))

(declare-fun m!412333 () Bool)

(assert (=> start!39542 m!412333))

(declare-fun m!412335 () Bool)

(assert (=> start!39542 m!412335))

(declare-fun m!412337 () Bool)

(assert (=> mapNonEmpty!18051 m!412337))

(declare-fun m!412339 () Bool)

(assert (=> b!422576 m!412339))

(declare-fun m!412341 () Bool)

(assert (=> b!422584 m!412341))

(declare-fun m!412343 () Bool)

(assert (=> b!422580 m!412343))

(check-sat (not b!422584) (not b!422578) tp_is_empty!10953 (not mapNonEmpty!18051) (not b!422586) (not b!422580) (not b!422582) (not b!422588) b_and!17475 (not b!422579) (not b_next!9801) (not start!39542) (not b!422575))
(check-sat b_and!17475 (not b_next!9801))
