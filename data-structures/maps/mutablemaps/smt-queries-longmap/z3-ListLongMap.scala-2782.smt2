; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40590 () Bool)

(assert start!40590)

(declare-fun b_free!10593 () Bool)

(declare-fun b_next!10593 () Bool)

(assert (=> start!40590 (= b_free!10593 (not b_next!10593))))

(declare-fun tp!37598 () Bool)

(declare-fun b_and!18619 () Bool)

(assert (=> start!40590 (= tp!37598 b_and!18619)))

(declare-fun b!447317 () Bool)

(declare-fun res!265752 () Bool)

(declare-fun e!262649 () Bool)

(assert (=> b!447317 (=> (not res!265752) (not e!262649))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!447317 (= res!265752 (validKeyInArray!0 k0!794))))

(declare-fun b!447318 () Bool)

(declare-fun e!262650 () Bool)

(assert (=> b!447318 (= e!262649 e!262650)))

(declare-fun res!265754 () Bool)

(assert (=> b!447318 (=> (not res!265754) (not e!262650))))

(declare-datatypes ((array!27631 0))(
  ( (array!27632 (arr!13258 (Array (_ BitVec 32) (_ BitVec 64))) (size!13610 (_ BitVec 32))) )
))
(declare-fun lt!203944 () array!27631)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27631 (_ BitVec 32)) Bool)

(assert (=> b!447318 (= res!265754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203944 mask!1025))))

(declare-fun _keys!709 () array!27631)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!447318 (= lt!203944 (array!27632 (store (arr!13258 _keys!709) i!563 k0!794) (size!13610 _keys!709)))))

(declare-fun b!447319 () Bool)

(declare-fun res!265758 () Bool)

(assert (=> b!447319 (=> (not res!265758) (not e!262649))))

(declare-fun arrayContainsKey!0 (array!27631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447319 (= res!265758 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!447320 () Bool)

(declare-fun res!265748 () Bool)

(assert (=> b!447320 (=> (not res!265748) (not e!262649))))

(declare-datatypes ((List!7919 0))(
  ( (Nil!7916) (Cons!7915 (h!8771 (_ BitVec 64)) (t!13689 List!7919)) )
))
(declare-fun arrayNoDuplicates!0 (array!27631 (_ BitVec 32) List!7919) Bool)

(assert (=> b!447320 (= res!265748 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7916))))

(declare-fun b!447321 () Bool)

(declare-fun res!265756 () Bool)

(assert (=> b!447321 (=> (not res!265756) (not e!262650))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!447321 (= res!265756 (bvsle from!863 i!563))))

(declare-fun b!447322 () Bool)

(declare-fun res!265749 () Bool)

(assert (=> b!447322 (=> (not res!265749) (not e!262650))))

(assert (=> b!447322 (= res!265749 (arrayNoDuplicates!0 lt!203944 #b00000000000000000000000000000000 Nil!7916))))

(declare-fun mapNonEmpty!19530 () Bool)

(declare-fun mapRes!19530 () Bool)

(declare-fun tp!37599 () Bool)

(declare-fun e!262648 () Bool)

(assert (=> mapNonEmpty!19530 (= mapRes!19530 (and tp!37599 e!262648))))

(declare-datatypes ((V!17013 0))(
  ( (V!17014 (val!6010 Int)) )
))
(declare-datatypes ((ValueCell!5622 0))(
  ( (ValueCellFull!5622 (v!8261 V!17013)) (EmptyCell!5622) )
))
(declare-fun mapValue!19530 () ValueCell!5622)

(declare-datatypes ((array!27633 0))(
  ( (array!27634 (arr!13259 (Array (_ BitVec 32) ValueCell!5622)) (size!13611 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27633)

(declare-fun mapKey!19530 () (_ BitVec 32))

(declare-fun mapRest!19530 () (Array (_ BitVec 32) ValueCell!5622))

(assert (=> mapNonEmpty!19530 (= (arr!13259 _values!549) (store mapRest!19530 mapKey!19530 mapValue!19530))))

(declare-fun mapIsEmpty!19530 () Bool)

(assert (=> mapIsEmpty!19530 mapRes!19530))

(declare-fun b!447323 () Bool)

(declare-fun res!265755 () Bool)

(assert (=> b!447323 (=> (not res!265755) (not e!262649))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!447323 (= res!265755 (and (= (size!13611 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13610 _keys!709) (size!13611 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!265757 () Bool)

(assert (=> start!40590 (=> (not res!265757) (not e!262649))))

(assert (=> start!40590 (= res!265757 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13610 _keys!709))))))

(assert (=> start!40590 e!262649))

(declare-fun tp_is_empty!11931 () Bool)

(assert (=> start!40590 tp_is_empty!11931))

(assert (=> start!40590 tp!37598))

(assert (=> start!40590 true))

(declare-fun e!262653 () Bool)

(declare-fun array_inv!9600 (array!27633) Bool)

(assert (=> start!40590 (and (array_inv!9600 _values!549) e!262653)))

(declare-fun array_inv!9601 (array!27631) Bool)

(assert (=> start!40590 (array_inv!9601 _keys!709)))

(declare-fun b!447324 () Bool)

(declare-fun res!265750 () Bool)

(assert (=> b!447324 (=> (not res!265750) (not e!262649))))

(assert (=> b!447324 (= res!265750 (or (= (select (arr!13258 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13258 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!447325 () Bool)

(assert (=> b!447325 (= e!262648 tp_is_empty!11931)))

(declare-fun b!447326 () Bool)

(declare-fun res!265753 () Bool)

(assert (=> b!447326 (=> (not res!265753) (not e!262649))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!447326 (= res!265753 (validMask!0 mask!1025))))

(declare-fun b!447327 () Bool)

(declare-fun res!265747 () Bool)

(assert (=> b!447327 (=> (not res!265747) (not e!262649))))

(assert (=> b!447327 (= res!265747 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13610 _keys!709))))))

(declare-fun b!447328 () Bool)

(declare-fun e!262651 () Bool)

(assert (=> b!447328 (= e!262653 (and e!262651 mapRes!19530))))

(declare-fun condMapEmpty!19530 () Bool)

(declare-fun mapDefault!19530 () ValueCell!5622)

(assert (=> b!447328 (= condMapEmpty!19530 (= (arr!13259 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5622)) mapDefault!19530)))))

(declare-fun b!447329 () Bool)

(assert (=> b!447329 (= e!262650 false)))

(declare-fun minValue!515 () V!17013)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17013)

(declare-fun v!412 () V!17013)

(declare-datatypes ((tuple2!7808 0))(
  ( (tuple2!7809 (_1!3914 (_ BitVec 64)) (_2!3914 V!17013)) )
))
(declare-datatypes ((List!7920 0))(
  ( (Nil!7917) (Cons!7916 (h!8772 tuple2!7808) (t!13690 List!7920)) )
))
(declare-datatypes ((ListLongMap!6735 0))(
  ( (ListLongMap!6736 (toList!3383 List!7920)) )
))
(declare-fun lt!203943 () ListLongMap!6735)

(declare-fun getCurrentListMapNoExtraKeys!1563 (array!27631 array!27633 (_ BitVec 32) (_ BitVec 32) V!17013 V!17013 (_ BitVec 32) Int) ListLongMap!6735)

(assert (=> b!447329 (= lt!203943 (getCurrentListMapNoExtraKeys!1563 lt!203944 (array!27634 (store (arr!13259 _values!549) i!563 (ValueCellFull!5622 v!412)) (size!13611 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!203942 () ListLongMap!6735)

(assert (=> b!447329 (= lt!203942 (getCurrentListMapNoExtraKeys!1563 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447330 () Bool)

(declare-fun res!265751 () Bool)

(assert (=> b!447330 (=> (not res!265751) (not e!262649))))

(assert (=> b!447330 (= res!265751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!447331 () Bool)

(assert (=> b!447331 (= e!262651 tp_is_empty!11931)))

(assert (= (and start!40590 res!265757) b!447326))

(assert (= (and b!447326 res!265753) b!447323))

(assert (= (and b!447323 res!265755) b!447330))

(assert (= (and b!447330 res!265751) b!447320))

(assert (= (and b!447320 res!265748) b!447327))

(assert (= (and b!447327 res!265747) b!447317))

(assert (= (and b!447317 res!265752) b!447324))

(assert (= (and b!447324 res!265750) b!447319))

(assert (= (and b!447319 res!265758) b!447318))

(assert (= (and b!447318 res!265754) b!447322))

(assert (= (and b!447322 res!265749) b!447321))

(assert (= (and b!447321 res!265756) b!447329))

(assert (= (and b!447328 condMapEmpty!19530) mapIsEmpty!19530))

(assert (= (and b!447328 (not condMapEmpty!19530)) mapNonEmpty!19530))

(get-info :version)

(assert (= (and mapNonEmpty!19530 ((_ is ValueCellFull!5622) mapValue!19530)) b!447325))

(assert (= (and b!447328 ((_ is ValueCellFull!5622) mapDefault!19530)) b!447331))

(assert (= start!40590 b!447328))

(declare-fun m!432215 () Bool)

(assert (=> b!447324 m!432215))

(declare-fun m!432217 () Bool)

(assert (=> mapNonEmpty!19530 m!432217))

(declare-fun m!432219 () Bool)

(assert (=> b!447320 m!432219))

(declare-fun m!432221 () Bool)

(assert (=> b!447329 m!432221))

(declare-fun m!432223 () Bool)

(assert (=> b!447329 m!432223))

(declare-fun m!432225 () Bool)

(assert (=> b!447329 m!432225))

(declare-fun m!432227 () Bool)

(assert (=> b!447322 m!432227))

(declare-fun m!432229 () Bool)

(assert (=> b!447319 m!432229))

(declare-fun m!432231 () Bool)

(assert (=> b!447326 m!432231))

(declare-fun m!432233 () Bool)

(assert (=> b!447317 m!432233))

(declare-fun m!432235 () Bool)

(assert (=> b!447318 m!432235))

(declare-fun m!432237 () Bool)

(assert (=> b!447318 m!432237))

(declare-fun m!432239 () Bool)

(assert (=> b!447330 m!432239))

(declare-fun m!432241 () Bool)

(assert (=> start!40590 m!432241))

(declare-fun m!432243 () Bool)

(assert (=> start!40590 m!432243))

(check-sat (not b!447322) (not mapNonEmpty!19530) (not b!447329) (not b!447317) (not b!447319) b_and!18619 (not b!447330) (not b!447326) (not start!40590) tp_is_empty!11931 (not b_next!10593) (not b!447318) (not b!447320))
(check-sat b_and!18619 (not b_next!10593))
