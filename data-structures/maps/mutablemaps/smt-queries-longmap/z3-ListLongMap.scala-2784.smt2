; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40602 () Bool)

(assert start!40602)

(declare-fun b_free!10605 () Bool)

(declare-fun b_next!10605 () Bool)

(assert (=> start!40602 (= b_free!10605 (not b_next!10605))))

(declare-fun tp!37634 () Bool)

(declare-fun b_and!18631 () Bool)

(assert (=> start!40602 (= tp!37634 b_and!18631)))

(declare-fun b!447587 () Bool)

(declare-fun res!265974 () Bool)

(declare-fun e!262760 () Bool)

(assert (=> b!447587 (=> (not res!265974) (not e!262760))))

(declare-datatypes ((array!27653 0))(
  ( (array!27654 (arr!13269 (Array (_ BitVec 32) (_ BitVec 64))) (size!13621 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27653)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!447587 (= res!265974 (or (= (select (arr!13269 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13269 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!447588 () Bool)

(declare-fun e!262759 () Bool)

(declare-fun tp_is_empty!11943 () Bool)

(assert (=> b!447588 (= e!262759 tp_is_empty!11943)))

(declare-fun b!447589 () Bool)

(declare-fun res!265973 () Bool)

(declare-fun e!262758 () Bool)

(assert (=> b!447589 (=> (not res!265973) (not e!262758))))

(declare-fun lt!203996 () array!27653)

(declare-datatypes ((List!7928 0))(
  ( (Nil!7925) (Cons!7924 (h!8780 (_ BitVec 64)) (t!13698 List!7928)) )
))
(declare-fun arrayNoDuplicates!0 (array!27653 (_ BitVec 32) List!7928) Bool)

(assert (=> b!447589 (= res!265973 (arrayNoDuplicates!0 lt!203996 #b00000000000000000000000000000000 Nil!7925))))

(declare-fun b!447590 () Bool)

(assert (=> b!447590 (= e!262760 e!262758)))

(declare-fun res!265967 () Bool)

(assert (=> b!447590 (=> (not res!265967) (not e!262758))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27653 (_ BitVec 32)) Bool)

(assert (=> b!447590 (= res!265967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203996 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!447590 (= lt!203996 (array!27654 (store (arr!13269 _keys!709) i!563 k0!794) (size!13621 _keys!709)))))

(declare-fun b!447591 () Bool)

(declare-fun res!265970 () Bool)

(assert (=> b!447591 (=> (not res!265970) (not e!262760))))

(assert (=> b!447591 (= res!265970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!19548 () Bool)

(declare-fun mapRes!19548 () Bool)

(declare-fun tp!37635 () Bool)

(declare-fun e!262756 () Bool)

(assert (=> mapNonEmpty!19548 (= mapRes!19548 (and tp!37635 e!262756))))

(declare-datatypes ((V!17029 0))(
  ( (V!17030 (val!6016 Int)) )
))
(declare-datatypes ((ValueCell!5628 0))(
  ( (ValueCellFull!5628 (v!8267 V!17029)) (EmptyCell!5628) )
))
(declare-fun mapRest!19548 () (Array (_ BitVec 32) ValueCell!5628))

(declare-datatypes ((array!27655 0))(
  ( (array!27656 (arr!13270 (Array (_ BitVec 32) ValueCell!5628)) (size!13622 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27655)

(declare-fun mapValue!19548 () ValueCell!5628)

(declare-fun mapKey!19548 () (_ BitVec 32))

(assert (=> mapNonEmpty!19548 (= (arr!13270 _values!549) (store mapRest!19548 mapKey!19548 mapValue!19548))))

(declare-fun b!447592 () Bool)

(declare-fun res!265966 () Bool)

(assert (=> b!447592 (=> (not res!265966) (not e!262760))))

(declare-fun arrayContainsKey!0 (array!27653 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447592 (= res!265966 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!447593 () Bool)

(declare-fun res!265968 () Bool)

(assert (=> b!447593 (=> (not res!265968) (not e!262760))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!447593 (= res!265968 (validMask!0 mask!1025))))

(declare-fun b!447594 () Bool)

(assert (=> b!447594 (= e!262756 tp_is_empty!11943)))

(declare-fun res!265972 () Bool)

(assert (=> start!40602 (=> (not res!265972) (not e!262760))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40602 (= res!265972 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13621 _keys!709))))))

(assert (=> start!40602 e!262760))

(assert (=> start!40602 tp_is_empty!11943))

(assert (=> start!40602 tp!37634))

(assert (=> start!40602 true))

(declare-fun e!262761 () Bool)

(declare-fun array_inv!9610 (array!27655) Bool)

(assert (=> start!40602 (and (array_inv!9610 _values!549) e!262761)))

(declare-fun array_inv!9611 (array!27653) Bool)

(assert (=> start!40602 (array_inv!9611 _keys!709)))

(declare-fun mapIsEmpty!19548 () Bool)

(assert (=> mapIsEmpty!19548 mapRes!19548))

(declare-fun b!447595 () Bool)

(declare-fun res!265964 () Bool)

(assert (=> b!447595 (=> (not res!265964) (not e!262760))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!447595 (= res!265964 (validKeyInArray!0 k0!794))))

(declare-fun b!447596 () Bool)

(declare-fun res!265963 () Bool)

(assert (=> b!447596 (=> (not res!265963) (not e!262760))))

(assert (=> b!447596 (= res!265963 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7925))))

(declare-fun b!447597 () Bool)

(declare-fun res!265965 () Bool)

(assert (=> b!447597 (=> (not res!265965) (not e!262760))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!447597 (= res!265965 (and (= (size!13622 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13621 _keys!709) (size!13622 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447598 () Bool)

(assert (=> b!447598 (= e!262758 false)))

(declare-fun minValue!515 () V!17029)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17029)

(declare-datatypes ((tuple2!7818 0))(
  ( (tuple2!7819 (_1!3919 (_ BitVec 64)) (_2!3919 V!17029)) )
))
(declare-datatypes ((List!7929 0))(
  ( (Nil!7926) (Cons!7925 (h!8781 tuple2!7818) (t!13699 List!7929)) )
))
(declare-datatypes ((ListLongMap!6745 0))(
  ( (ListLongMap!6746 (toList!3388 List!7929)) )
))
(declare-fun lt!203997 () ListLongMap!6745)

(declare-fun v!412 () V!17029)

(declare-fun getCurrentListMapNoExtraKeys!1568 (array!27653 array!27655 (_ BitVec 32) (_ BitVec 32) V!17029 V!17029 (_ BitVec 32) Int) ListLongMap!6745)

(assert (=> b!447598 (= lt!203997 (getCurrentListMapNoExtraKeys!1568 lt!203996 (array!27656 (store (arr!13270 _values!549) i!563 (ValueCellFull!5628 v!412)) (size!13622 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!203998 () ListLongMap!6745)

(assert (=> b!447598 (= lt!203998 (getCurrentListMapNoExtraKeys!1568 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447599 () Bool)

(declare-fun res!265971 () Bool)

(assert (=> b!447599 (=> (not res!265971) (not e!262760))))

(assert (=> b!447599 (= res!265971 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13621 _keys!709))))))

(declare-fun b!447600 () Bool)

(assert (=> b!447600 (= e!262761 (and e!262759 mapRes!19548))))

(declare-fun condMapEmpty!19548 () Bool)

(declare-fun mapDefault!19548 () ValueCell!5628)

(assert (=> b!447600 (= condMapEmpty!19548 (= (arr!13270 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5628)) mapDefault!19548)))))

(declare-fun b!447601 () Bool)

(declare-fun res!265969 () Bool)

(assert (=> b!447601 (=> (not res!265969) (not e!262758))))

(assert (=> b!447601 (= res!265969 (bvsle from!863 i!563))))

(assert (= (and start!40602 res!265972) b!447593))

(assert (= (and b!447593 res!265968) b!447597))

(assert (= (and b!447597 res!265965) b!447591))

(assert (= (and b!447591 res!265970) b!447596))

(assert (= (and b!447596 res!265963) b!447599))

(assert (= (and b!447599 res!265971) b!447595))

(assert (= (and b!447595 res!265964) b!447587))

(assert (= (and b!447587 res!265974) b!447592))

(assert (= (and b!447592 res!265966) b!447590))

(assert (= (and b!447590 res!265967) b!447589))

(assert (= (and b!447589 res!265973) b!447601))

(assert (= (and b!447601 res!265969) b!447598))

(assert (= (and b!447600 condMapEmpty!19548) mapIsEmpty!19548))

(assert (= (and b!447600 (not condMapEmpty!19548)) mapNonEmpty!19548))

(get-info :version)

(assert (= (and mapNonEmpty!19548 ((_ is ValueCellFull!5628) mapValue!19548)) b!447594))

(assert (= (and b!447600 ((_ is ValueCellFull!5628) mapDefault!19548)) b!447588))

(assert (= start!40602 b!447600))

(declare-fun m!432395 () Bool)

(assert (=> b!447589 m!432395))

(declare-fun m!432397 () Bool)

(assert (=> start!40602 m!432397))

(declare-fun m!432399 () Bool)

(assert (=> start!40602 m!432399))

(declare-fun m!432401 () Bool)

(assert (=> b!447590 m!432401))

(declare-fun m!432403 () Bool)

(assert (=> b!447590 m!432403))

(declare-fun m!432405 () Bool)

(assert (=> b!447591 m!432405))

(declare-fun m!432407 () Bool)

(assert (=> mapNonEmpty!19548 m!432407))

(declare-fun m!432409 () Bool)

(assert (=> b!447596 m!432409))

(declare-fun m!432411 () Bool)

(assert (=> b!447587 m!432411))

(declare-fun m!432413 () Bool)

(assert (=> b!447595 m!432413))

(declare-fun m!432415 () Bool)

(assert (=> b!447592 m!432415))

(declare-fun m!432417 () Bool)

(assert (=> b!447593 m!432417))

(declare-fun m!432419 () Bool)

(assert (=> b!447598 m!432419))

(declare-fun m!432421 () Bool)

(assert (=> b!447598 m!432421))

(declare-fun m!432423 () Bool)

(assert (=> b!447598 m!432423))

(check-sat (not b!447591) (not b!447595) (not b!447596) (not b!447598) (not b_next!10605) b_and!18631 (not b!447590) tp_is_empty!11943 (not start!40602) (not b!447592) (not b!447593) (not mapNonEmpty!19548) (not b!447589))
(check-sat b_and!18631 (not b_next!10605))
