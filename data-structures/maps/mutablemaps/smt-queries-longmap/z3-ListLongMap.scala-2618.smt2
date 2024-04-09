; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39536 () Bool)

(assert start!39536)

(declare-fun b_free!9795 () Bool)

(declare-fun b_next!9795 () Bool)

(assert (=> start!39536 (= b_free!9795 (not b_next!9795))))

(declare-fun tp!34914 () Bool)

(declare-fun b_and!17469 () Bool)

(assert (=> start!39536 (= tp!34914 b_and!17469)))

(declare-fun b!422439 () Bool)

(declare-fun res!246789 () Bool)

(declare-fun e!251309 () Bool)

(assert (=> b!422439 (=> (not res!246789) (not e!251309))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!422439 (= res!246789 (bvsle from!863 i!563))))

(declare-fun b!422440 () Bool)

(declare-fun e!251310 () Bool)

(declare-fun tp_is_empty!10947 () Bool)

(assert (=> b!422440 (= e!251310 tp_is_empty!10947)))

(declare-fun res!246787 () Bool)

(declare-fun e!251307 () Bool)

(assert (=> start!39536 (=> (not res!246787) (not e!251307))))

(declare-datatypes ((array!25721 0))(
  ( (array!25722 (arr!12307 (Array (_ BitVec 32) (_ BitVec 64))) (size!12659 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25721)

(assert (=> start!39536 (= res!246787 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12659 _keys!709))))))

(assert (=> start!39536 e!251307))

(assert (=> start!39536 tp_is_empty!10947))

(assert (=> start!39536 tp!34914))

(assert (=> start!39536 true))

(declare-datatypes ((V!15701 0))(
  ( (V!15702 (val!5518 Int)) )
))
(declare-datatypes ((ValueCell!5130 0))(
  ( (ValueCellFull!5130 (v!7761 V!15701)) (EmptyCell!5130) )
))
(declare-datatypes ((array!25723 0))(
  ( (array!25724 (arr!12308 (Array (_ BitVec 32) ValueCell!5130)) (size!12660 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25723)

(declare-fun e!251308 () Bool)

(declare-fun array_inv!8966 (array!25723) Bool)

(assert (=> start!39536 (and (array_inv!8966 _values!549) e!251308)))

(declare-fun array_inv!8967 (array!25721) Bool)

(assert (=> start!39536 (array_inv!8967 _keys!709)))

(declare-fun b!422441 () Bool)

(declare-fun res!246794 () Bool)

(assert (=> b!422441 (=> (not res!246794) (not e!251307))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422441 (= res!246794 (validKeyInArray!0 k0!794))))

(declare-fun b!422442 () Bool)

(declare-fun res!246798 () Bool)

(assert (=> b!422442 (=> (not res!246798) (not e!251307))))

(declare-datatypes ((List!7216 0))(
  ( (Nil!7213) (Cons!7212 (h!8068 (_ BitVec 64)) (t!12668 List!7216)) )
))
(declare-fun arrayNoDuplicates!0 (array!25721 (_ BitVec 32) List!7216) Bool)

(assert (=> b!422442 (= res!246798 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7213))))

(declare-fun b!422443 () Bool)

(declare-fun e!251306 () Bool)

(assert (=> b!422443 (= e!251306 tp_is_empty!10947)))

(declare-fun b!422444 () Bool)

(assert (=> b!422444 (= e!251309 false)))

(declare-fun lt!193969 () array!25721)

(declare-fun minValue!515 () V!15701)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7172 0))(
  ( (tuple2!7173 (_1!3596 (_ BitVec 64)) (_2!3596 V!15701)) )
))
(declare-datatypes ((List!7217 0))(
  ( (Nil!7214) (Cons!7213 (h!8069 tuple2!7172) (t!12669 List!7217)) )
))
(declare-datatypes ((ListLongMap!6099 0))(
  ( (ListLongMap!6100 (toList!3065 List!7217)) )
))
(declare-fun lt!193971 () ListLongMap!6099)

(declare-fun zeroValue!515 () V!15701)

(declare-fun v!412 () V!15701)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1266 (array!25721 array!25723 (_ BitVec 32) (_ BitVec 32) V!15701 V!15701 (_ BitVec 32) Int) ListLongMap!6099)

(assert (=> b!422444 (= lt!193971 (getCurrentListMapNoExtraKeys!1266 lt!193969 (array!25724 (store (arr!12308 _values!549) i!563 (ValueCellFull!5130 v!412)) (size!12660 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!193970 () ListLongMap!6099)

(assert (=> b!422444 (= lt!193970 (getCurrentListMapNoExtraKeys!1266 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!422445 () Bool)

(declare-fun res!246797 () Bool)

(assert (=> b!422445 (=> (not res!246797) (not e!251309))))

(assert (=> b!422445 (= res!246797 (arrayNoDuplicates!0 lt!193969 #b00000000000000000000000000000000 Nil!7213))))

(declare-fun b!422446 () Bool)

(declare-fun res!246791 () Bool)

(assert (=> b!422446 (=> (not res!246791) (not e!251307))))

(declare-fun arrayContainsKey!0 (array!25721 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422446 (= res!246791 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!422447 () Bool)

(declare-fun res!246788 () Bool)

(assert (=> b!422447 (=> (not res!246788) (not e!251307))))

(assert (=> b!422447 (= res!246788 (or (= (select (arr!12307 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12307 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!422448 () Bool)

(assert (=> b!422448 (= e!251307 e!251309)))

(declare-fun res!246793 () Bool)

(assert (=> b!422448 (=> (not res!246793) (not e!251309))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25721 (_ BitVec 32)) Bool)

(assert (=> b!422448 (= res!246793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193969 mask!1025))))

(assert (=> b!422448 (= lt!193969 (array!25722 (store (arr!12307 _keys!709) i!563 k0!794) (size!12659 _keys!709)))))

(declare-fun b!422449 () Bool)

(declare-fun mapRes!18042 () Bool)

(assert (=> b!422449 (= e!251308 (and e!251310 mapRes!18042))))

(declare-fun condMapEmpty!18042 () Bool)

(declare-fun mapDefault!18042 () ValueCell!5130)

(assert (=> b!422449 (= condMapEmpty!18042 (= (arr!12308 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5130)) mapDefault!18042)))))

(declare-fun b!422450 () Bool)

(declare-fun res!246796 () Bool)

(assert (=> b!422450 (=> (not res!246796) (not e!251307))))

(assert (=> b!422450 (= res!246796 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12659 _keys!709))))))

(declare-fun mapNonEmpty!18042 () Bool)

(declare-fun tp!34913 () Bool)

(assert (=> mapNonEmpty!18042 (= mapRes!18042 (and tp!34913 e!251306))))

(declare-fun mapKey!18042 () (_ BitVec 32))

(declare-fun mapValue!18042 () ValueCell!5130)

(declare-fun mapRest!18042 () (Array (_ BitVec 32) ValueCell!5130))

(assert (=> mapNonEmpty!18042 (= (arr!12308 _values!549) (store mapRest!18042 mapKey!18042 mapValue!18042))))

(declare-fun b!422451 () Bool)

(declare-fun res!246795 () Bool)

(assert (=> b!422451 (=> (not res!246795) (not e!251307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422451 (= res!246795 (validMask!0 mask!1025))))

(declare-fun b!422452 () Bool)

(declare-fun res!246792 () Bool)

(assert (=> b!422452 (=> (not res!246792) (not e!251307))))

(assert (=> b!422452 (= res!246792 (and (= (size!12660 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12659 _keys!709) (size!12660 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!422453 () Bool)

(declare-fun res!246790 () Bool)

(assert (=> b!422453 (=> (not res!246790) (not e!251307))))

(assert (=> b!422453 (= res!246790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!18042 () Bool)

(assert (=> mapIsEmpty!18042 mapRes!18042))

(assert (= (and start!39536 res!246787) b!422451))

(assert (= (and b!422451 res!246795) b!422452))

(assert (= (and b!422452 res!246792) b!422453))

(assert (= (and b!422453 res!246790) b!422442))

(assert (= (and b!422442 res!246798) b!422450))

(assert (= (and b!422450 res!246796) b!422441))

(assert (= (and b!422441 res!246794) b!422447))

(assert (= (and b!422447 res!246788) b!422446))

(assert (= (and b!422446 res!246791) b!422448))

(assert (= (and b!422448 res!246793) b!422445))

(assert (= (and b!422445 res!246797) b!422439))

(assert (= (and b!422439 res!246789) b!422444))

(assert (= (and b!422449 condMapEmpty!18042) mapIsEmpty!18042))

(assert (= (and b!422449 (not condMapEmpty!18042)) mapNonEmpty!18042))

(get-info :version)

(assert (= (and mapNonEmpty!18042 ((_ is ValueCellFull!5130) mapValue!18042)) b!422443))

(assert (= (and b!422449 ((_ is ValueCellFull!5130) mapDefault!18042)) b!422440))

(assert (= start!39536 b!422449))

(declare-fun m!412225 () Bool)

(assert (=> start!39536 m!412225))

(declare-fun m!412227 () Bool)

(assert (=> start!39536 m!412227))

(declare-fun m!412229 () Bool)

(assert (=> mapNonEmpty!18042 m!412229))

(declare-fun m!412231 () Bool)

(assert (=> b!422446 m!412231))

(declare-fun m!412233 () Bool)

(assert (=> b!422448 m!412233))

(declare-fun m!412235 () Bool)

(assert (=> b!422448 m!412235))

(declare-fun m!412237 () Bool)

(assert (=> b!422445 m!412237))

(declare-fun m!412239 () Bool)

(assert (=> b!422441 m!412239))

(declare-fun m!412241 () Bool)

(assert (=> b!422451 m!412241))

(declare-fun m!412243 () Bool)

(assert (=> b!422453 m!412243))

(declare-fun m!412245 () Bool)

(assert (=> b!422442 m!412245))

(declare-fun m!412247 () Bool)

(assert (=> b!422444 m!412247))

(declare-fun m!412249 () Bool)

(assert (=> b!422444 m!412249))

(declare-fun m!412251 () Bool)

(assert (=> b!422444 m!412251))

(declare-fun m!412253 () Bool)

(assert (=> b!422447 m!412253))

(check-sat (not b_next!9795) (not b!422442) b_and!17469 (not b!422444) (not b!422441) (not mapNonEmpty!18042) tp_is_empty!10947 (not start!39536) (not b!422453) (not b!422446) (not b!422448) (not b!422451) (not b!422445))
(check-sat b_and!17469 (not b_next!9795))
