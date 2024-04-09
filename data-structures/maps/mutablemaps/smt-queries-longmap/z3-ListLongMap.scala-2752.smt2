; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40374 () Bool)

(assert start!40374)

(declare-fun b!443288 () Bool)

(declare-fun res!262759 () Bool)

(declare-fun e!260827 () Bool)

(assert (=> b!443288 (=> (not res!262759) (not e!260827))))

(declare-datatypes ((array!27281 0))(
  ( (array!27282 (arr!13085 (Array (_ BitVec 32) (_ BitVec 64))) (size!13437 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27281)

(declare-datatypes ((V!16773 0))(
  ( (V!16774 (val!5920 Int)) )
))
(declare-datatypes ((ValueCell!5532 0))(
  ( (ValueCellFull!5532 (v!8167 V!16773)) (EmptyCell!5532) )
))
(declare-datatypes ((array!27283 0))(
  ( (array!27284 (arr!13086 (Array (_ BitVec 32) ValueCell!5532)) (size!13438 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27283)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!443288 (= res!262759 (and (= (size!13438 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13437 _keys!709) (size!13438 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!443289 () Bool)

(declare-fun res!262756 () Bool)

(assert (=> b!443289 (=> (not res!262756) (not e!260827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443289 (= res!262756 (validMask!0 mask!1025))))

(declare-fun b!443290 () Bool)

(declare-fun e!260828 () Bool)

(assert (=> b!443290 (= e!260828 false)))

(declare-fun lt!203307 () Bool)

(declare-fun lt!203306 () array!27281)

(declare-datatypes ((List!7821 0))(
  ( (Nil!7818) (Cons!7817 (h!8673 (_ BitVec 64)) (t!13587 List!7821)) )
))
(declare-fun arrayNoDuplicates!0 (array!27281 (_ BitVec 32) List!7821) Bool)

(assert (=> b!443290 (= lt!203307 (arrayNoDuplicates!0 lt!203306 #b00000000000000000000000000000000 Nil!7818))))

(declare-fun b!443291 () Bool)

(declare-fun res!262765 () Bool)

(assert (=> b!443291 (=> (not res!262765) (not e!260827))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!443291 (= res!262765 (or (= (select (arr!13085 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13085 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!443292 () Bool)

(declare-fun e!260825 () Bool)

(declare-fun e!260829 () Bool)

(declare-fun mapRes!19254 () Bool)

(assert (=> b!443292 (= e!260825 (and e!260829 mapRes!19254))))

(declare-fun condMapEmpty!19254 () Bool)

(declare-fun mapDefault!19254 () ValueCell!5532)

(assert (=> b!443292 (= condMapEmpty!19254 (= (arr!13086 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5532)) mapDefault!19254)))))

(declare-fun b!443293 () Bool)

(declare-fun res!262763 () Bool)

(assert (=> b!443293 (=> (not res!262763) (not e!260827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27281 (_ BitVec 32)) Bool)

(assert (=> b!443293 (= res!262763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!443294 () Bool)

(declare-fun res!262762 () Bool)

(assert (=> b!443294 (=> (not res!262762) (not e!260827))))

(assert (=> b!443294 (= res!262762 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13437 _keys!709))))))

(declare-fun mapIsEmpty!19254 () Bool)

(assert (=> mapIsEmpty!19254 mapRes!19254))

(declare-fun b!443296 () Bool)

(declare-fun res!262760 () Bool)

(assert (=> b!443296 (=> (not res!262760) (not e!260827))))

(assert (=> b!443296 (= res!262760 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7818))))

(declare-fun b!443297 () Bool)

(declare-fun e!260824 () Bool)

(declare-fun tp_is_empty!11751 () Bool)

(assert (=> b!443297 (= e!260824 tp_is_empty!11751)))

(declare-fun b!443298 () Bool)

(assert (=> b!443298 (= e!260829 tp_is_empty!11751)))

(declare-fun mapNonEmpty!19254 () Bool)

(declare-fun tp!37236 () Bool)

(assert (=> mapNonEmpty!19254 (= mapRes!19254 (and tp!37236 e!260824))))

(declare-fun mapKey!19254 () (_ BitVec 32))

(declare-fun mapValue!19254 () ValueCell!5532)

(declare-fun mapRest!19254 () (Array (_ BitVec 32) ValueCell!5532))

(assert (=> mapNonEmpty!19254 (= (arr!13086 _values!549) (store mapRest!19254 mapKey!19254 mapValue!19254))))

(declare-fun b!443295 () Bool)

(declare-fun res!262761 () Bool)

(assert (=> b!443295 (=> (not res!262761) (not e!260827))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!443295 (= res!262761 (validKeyInArray!0 k0!794))))

(declare-fun res!262758 () Bool)

(assert (=> start!40374 (=> (not res!262758) (not e!260827))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40374 (= res!262758 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13437 _keys!709))))))

(assert (=> start!40374 e!260827))

(assert (=> start!40374 true))

(declare-fun array_inv!9486 (array!27283) Bool)

(assert (=> start!40374 (and (array_inv!9486 _values!549) e!260825)))

(declare-fun array_inv!9487 (array!27281) Bool)

(assert (=> start!40374 (array_inv!9487 _keys!709)))

(declare-fun b!443299 () Bool)

(declare-fun res!262757 () Bool)

(assert (=> b!443299 (=> (not res!262757) (not e!260827))))

(declare-fun arrayContainsKey!0 (array!27281 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!443299 (= res!262757 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!443300 () Bool)

(assert (=> b!443300 (= e!260827 e!260828)))

(declare-fun res!262764 () Bool)

(assert (=> b!443300 (=> (not res!262764) (not e!260828))))

(assert (=> b!443300 (= res!262764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203306 mask!1025))))

(assert (=> b!443300 (= lt!203306 (array!27282 (store (arr!13085 _keys!709) i!563 k0!794) (size!13437 _keys!709)))))

(assert (= (and start!40374 res!262758) b!443289))

(assert (= (and b!443289 res!262756) b!443288))

(assert (= (and b!443288 res!262759) b!443293))

(assert (= (and b!443293 res!262763) b!443296))

(assert (= (and b!443296 res!262760) b!443294))

(assert (= (and b!443294 res!262762) b!443295))

(assert (= (and b!443295 res!262761) b!443291))

(assert (= (and b!443291 res!262765) b!443299))

(assert (= (and b!443299 res!262757) b!443300))

(assert (= (and b!443300 res!262764) b!443290))

(assert (= (and b!443292 condMapEmpty!19254) mapIsEmpty!19254))

(assert (= (and b!443292 (not condMapEmpty!19254)) mapNonEmpty!19254))

(get-info :version)

(assert (= (and mapNonEmpty!19254 ((_ is ValueCellFull!5532) mapValue!19254)) b!443297))

(assert (= (and b!443292 ((_ is ValueCellFull!5532) mapDefault!19254)) b!443298))

(assert (= start!40374 b!443292))

(declare-fun m!429575 () Bool)

(assert (=> mapNonEmpty!19254 m!429575))

(declare-fun m!429577 () Bool)

(assert (=> b!443291 m!429577))

(declare-fun m!429579 () Bool)

(assert (=> start!40374 m!429579))

(declare-fun m!429581 () Bool)

(assert (=> start!40374 m!429581))

(declare-fun m!429583 () Bool)

(assert (=> b!443289 m!429583))

(declare-fun m!429585 () Bool)

(assert (=> b!443299 m!429585))

(declare-fun m!429587 () Bool)

(assert (=> b!443295 m!429587))

(declare-fun m!429589 () Bool)

(assert (=> b!443290 m!429589))

(declare-fun m!429591 () Bool)

(assert (=> b!443293 m!429591))

(declare-fun m!429593 () Bool)

(assert (=> b!443300 m!429593))

(declare-fun m!429595 () Bool)

(assert (=> b!443300 m!429595))

(declare-fun m!429597 () Bool)

(assert (=> b!443296 m!429597))

(check-sat (not b!443295) (not b!443300) tp_is_empty!11751 (not b!443289) (not b!443293) (not start!40374) (not b!443290) (not b!443296) (not mapNonEmpty!19254) (not b!443299))
(check-sat)
