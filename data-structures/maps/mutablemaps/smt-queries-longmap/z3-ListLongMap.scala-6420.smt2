; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82346 () Bool)

(assert start!82346)

(declare-fun b_free!18585 () Bool)

(declare-fun b_next!18585 () Bool)

(assert (=> start!82346 (= b_free!18585 (not b_next!18585))))

(declare-fun tp!64725 () Bool)

(declare-fun b_and!30091 () Bool)

(assert (=> start!82346 (= tp!64725 b_and!30091)))

(declare-fun b!959570 () Bool)

(declare-fun e!540952 () Bool)

(declare-fun tp_is_empty!21297 () Bool)

(assert (=> b!959570 (= e!540952 tp_is_empty!21297)))

(declare-fun mapNonEmpty!33925 () Bool)

(declare-fun mapRes!33925 () Bool)

(declare-fun tp!64726 () Bool)

(declare-fun e!540953 () Bool)

(assert (=> mapNonEmpty!33925 (= mapRes!33925 (and tp!64726 e!540953))))

(declare-datatypes ((V!33379 0))(
  ( (V!33380 (val!10699 Int)) )
))
(declare-datatypes ((ValueCell!10167 0))(
  ( (ValueCellFull!10167 (v!13256 V!33379)) (EmptyCell!10167) )
))
(declare-fun mapRest!33925 () (Array (_ BitVec 32) ValueCell!10167))

(declare-fun mapKey!33925 () (_ BitVec 32))

(declare-datatypes ((array!58701 0))(
  ( (array!58702 (arr!28220 (Array (_ BitVec 32) ValueCell!10167)) (size!28700 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58701)

(declare-fun mapValue!33925 () ValueCell!10167)

(assert (=> mapNonEmpty!33925 (= (arr!28220 _values!1386) (store mapRest!33925 mapKey!33925 mapValue!33925))))

(declare-fun b!959571 () Bool)

(declare-fun res!642437 () Bool)

(declare-fun e!540949 () Bool)

(assert (=> b!959571 (=> (not res!642437) (not e!540949))))

(declare-datatypes ((array!58703 0))(
  ( (array!58704 (arr!28221 (Array (_ BitVec 32) (_ BitVec 64))) (size!28701 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58703)

(declare-datatypes ((List!19750 0))(
  ( (Nil!19747) (Cons!19746 (h!20908 (_ BitVec 64)) (t!28121 List!19750)) )
))
(declare-fun arrayNoDuplicates!0 (array!58703 (_ BitVec 32) List!19750) Bool)

(assert (=> b!959571 (= res!642437 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19747))))

(declare-fun b!959572 () Bool)

(declare-fun res!642433 () Bool)

(assert (=> b!959572 (=> (not res!642433) (not e!540949))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58703 (_ BitVec 32)) Bool)

(assert (=> b!959572 (= res!642433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959573 () Bool)

(assert (=> b!959573 (= e!540953 tp_is_empty!21297)))

(declare-fun b!959574 () Bool)

(declare-fun i!793 () (_ BitVec 32))

(assert (=> b!959574 (= e!540949 (bvslt i!793 #b00000000000000000000000000000000))))

(declare-fun minValue!1328 () V!33379)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((tuple2!13884 0))(
  ( (tuple2!13885 (_1!6952 (_ BitVec 64)) (_2!6952 V!33379)) )
))
(declare-datatypes ((List!19751 0))(
  ( (Nil!19748) (Cons!19747 (h!20909 tuple2!13884) (t!28122 List!19751)) )
))
(declare-datatypes ((ListLongMap!12595 0))(
  ( (ListLongMap!12596 (toList!6313 List!19751)) )
))
(declare-fun lt!430514 () ListLongMap!12595)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33379)

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun getCurrentListMap!3498 (array!58703 array!58701 (_ BitVec 32) (_ BitVec 32) V!33379 V!33379 (_ BitVec 32) Int) ListLongMap!12595)

(assert (=> b!959574 (= lt!430514 (getCurrentListMap!3498 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389))))

(declare-fun mapIsEmpty!33925 () Bool)

(assert (=> mapIsEmpty!33925 mapRes!33925))

(declare-fun b!959575 () Bool)

(declare-fun res!642435 () Bool)

(assert (=> b!959575 (=> (not res!642435) (not e!540949))))

(assert (=> b!959575 (= res!642435 (and (= (size!28700 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28701 _keys!1668) (size!28700 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959577 () Bool)

(declare-fun e!540951 () Bool)

(assert (=> b!959577 (= e!540951 (and e!540952 mapRes!33925))))

(declare-fun condMapEmpty!33925 () Bool)

(declare-fun mapDefault!33925 () ValueCell!10167)

(assert (=> b!959577 (= condMapEmpty!33925 (= (arr!28220 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10167)) mapDefault!33925)))))

(declare-fun b!959578 () Bool)

(declare-fun res!642434 () Bool)

(assert (=> b!959578 (=> (not res!642434) (not e!540949))))

(assert (=> b!959578 (= res!642434 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28701 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28701 _keys!1668))))))

(declare-fun b!959576 () Bool)

(declare-fun res!642436 () Bool)

(assert (=> b!959576 (=> (not res!642436) (not e!540949))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959576 (= res!642436 (validKeyInArray!0 (select (arr!28221 _keys!1668) i!793)))))

(declare-fun res!642438 () Bool)

(assert (=> start!82346 (=> (not res!642438) (not e!540949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82346 (= res!642438 (validMask!0 mask!2088))))

(assert (=> start!82346 e!540949))

(assert (=> start!82346 true))

(assert (=> start!82346 tp_is_empty!21297))

(declare-fun array_inv!21823 (array!58703) Bool)

(assert (=> start!82346 (array_inv!21823 _keys!1668)))

(declare-fun array_inv!21824 (array!58701) Bool)

(assert (=> start!82346 (and (array_inv!21824 _values!1386) e!540951)))

(assert (=> start!82346 tp!64725))

(assert (= (and start!82346 res!642438) b!959575))

(assert (= (and b!959575 res!642435) b!959572))

(assert (= (and b!959572 res!642433) b!959571))

(assert (= (and b!959571 res!642437) b!959578))

(assert (= (and b!959578 res!642434) b!959576))

(assert (= (and b!959576 res!642436) b!959574))

(assert (= (and b!959577 condMapEmpty!33925) mapIsEmpty!33925))

(assert (= (and b!959577 (not condMapEmpty!33925)) mapNonEmpty!33925))

(get-info :version)

(assert (= (and mapNonEmpty!33925 ((_ is ValueCellFull!10167) mapValue!33925)) b!959573))

(assert (= (and b!959577 ((_ is ValueCellFull!10167) mapDefault!33925)) b!959570))

(assert (= start!82346 b!959577))

(declare-fun m!890109 () Bool)

(assert (=> b!959571 m!890109))

(declare-fun m!890111 () Bool)

(assert (=> b!959574 m!890111))

(declare-fun m!890113 () Bool)

(assert (=> b!959572 m!890113))

(declare-fun m!890115 () Bool)

(assert (=> b!959576 m!890115))

(assert (=> b!959576 m!890115))

(declare-fun m!890117 () Bool)

(assert (=> b!959576 m!890117))

(declare-fun m!890119 () Bool)

(assert (=> mapNonEmpty!33925 m!890119))

(declare-fun m!890121 () Bool)

(assert (=> start!82346 m!890121))

(declare-fun m!890123 () Bool)

(assert (=> start!82346 m!890123))

(declare-fun m!890125 () Bool)

(assert (=> start!82346 m!890125))

(check-sat (not b!959572) (not start!82346) (not b!959571) (not b_next!18585) (not b!959574) tp_is_empty!21297 b_and!30091 (not mapNonEmpty!33925) (not b!959576))
(check-sat b_and!30091 (not b_next!18585))
