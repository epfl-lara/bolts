; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37626 () Bool)

(assert start!37626)

(declare-fun b_free!8745 () Bool)

(declare-fun b_next!8745 () Bool)

(assert (=> start!37626 (= b_free!8745 (not b_next!8745))))

(declare-fun tp!30950 () Bool)

(declare-fun b_and!16005 () Bool)

(assert (=> start!37626 (= tp!30950 b_and!16005)))

(declare-fun b!384736 () Bool)

(declare-fun e!233550 () Bool)

(declare-fun e!233545 () Bool)

(assert (=> b!384736 (= e!233550 (not e!233545))))

(declare-fun res!219446 () Bool)

(assert (=> b!384736 (=> res!219446 e!233545)))

(declare-fun lt!181234 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!384736 (= res!219446 (or (and (not lt!181234) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!181234) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!181234)))))

(assert (=> b!384736 (= lt!181234 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!13629 0))(
  ( (V!13630 (val!4741 Int)) )
))
(declare-datatypes ((ValueCell!4353 0))(
  ( (ValueCellFull!4353 (v!6934 V!13629)) (EmptyCell!4353) )
))
(declare-datatypes ((array!22671 0))(
  ( (array!22672 (arr!10801 (Array (_ BitVec 32) ValueCell!4353)) (size!11153 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22671)

(declare-datatypes ((tuple2!6336 0))(
  ( (tuple2!6337 (_1!3178 (_ BitVec 64)) (_2!3178 V!13629)) )
))
(declare-datatypes ((List!6202 0))(
  ( (Nil!6199) (Cons!6198 (h!7054 tuple2!6336) (t!11360 List!6202)) )
))
(declare-datatypes ((ListLongMap!5263 0))(
  ( (ListLongMap!5264 (toList!2647 List!6202)) )
))
(declare-fun lt!181239 () ListLongMap!5263)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13629)

(declare-datatypes ((array!22673 0))(
  ( (array!22674 (arr!10802 (Array (_ BitVec 32) (_ BitVec 64))) (size!11154 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22673)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13629)

(declare-fun getCurrentListMap!2063 (array!22673 array!22671 (_ BitVec 32) (_ BitVec 32) V!13629 V!13629 (_ BitVec 32) Int) ListLongMap!5263)

(assert (=> b!384736 (= lt!181239 (getCurrentListMap!2063 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181235 () ListLongMap!5263)

(declare-fun lt!181237 () array!22673)

(declare-fun lt!181238 () array!22671)

(assert (=> b!384736 (= lt!181235 (getCurrentListMap!2063 lt!181237 lt!181238 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181236 () ListLongMap!5263)

(declare-fun lt!181243 () ListLongMap!5263)

(assert (=> b!384736 (and (= lt!181236 lt!181243) (= lt!181243 lt!181236))))

(declare-fun lt!181241 () ListLongMap!5263)

(declare-fun lt!181242 () tuple2!6336)

(declare-fun +!983 (ListLongMap!5263 tuple2!6336) ListLongMap!5263)

(assert (=> b!384736 (= lt!181243 (+!983 lt!181241 lt!181242))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun v!373 () V!13629)

(assert (=> b!384736 (= lt!181242 (tuple2!6337 k0!778 v!373))))

(declare-datatypes ((Unit!11855 0))(
  ( (Unit!11856) )
))
(declare-fun lt!181240 () Unit!11855)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!214 (array!22673 array!22671 (_ BitVec 32) (_ BitVec 32) V!13629 V!13629 (_ BitVec 32) (_ BitVec 64) V!13629 (_ BitVec 32) Int) Unit!11855)

(assert (=> b!384736 (= lt!181240 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!214 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!881 (array!22673 array!22671 (_ BitVec 32) (_ BitVec 32) V!13629 V!13629 (_ BitVec 32) Int) ListLongMap!5263)

(assert (=> b!384736 (= lt!181236 (getCurrentListMapNoExtraKeys!881 lt!181237 lt!181238 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384736 (= lt!181238 (array!22672 (store (arr!10801 _values!506) i!548 (ValueCellFull!4353 v!373)) (size!11153 _values!506)))))

(assert (=> b!384736 (= lt!181241 (getCurrentListMapNoExtraKeys!881 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!384737 () Bool)

(declare-fun res!219448 () Bool)

(declare-fun e!233548 () Bool)

(assert (=> b!384737 (=> (not res!219448) (not e!233548))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384737 (= res!219448 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!15654 () Bool)

(declare-fun mapRes!15654 () Bool)

(declare-fun tp!30951 () Bool)

(declare-fun e!233547 () Bool)

(assert (=> mapNonEmpty!15654 (= mapRes!15654 (and tp!30951 e!233547))))

(declare-fun mapRest!15654 () (Array (_ BitVec 32) ValueCell!4353))

(declare-fun mapValue!15654 () ValueCell!4353)

(declare-fun mapKey!15654 () (_ BitVec 32))

(assert (=> mapNonEmpty!15654 (= (arr!10801 _values!506) (store mapRest!15654 mapKey!15654 mapValue!15654))))

(declare-fun res!219439 () Bool)

(assert (=> start!37626 (=> (not res!219439) (not e!233548))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37626 (= res!219439 (validMask!0 mask!970))))

(assert (=> start!37626 e!233548))

(declare-fun e!233549 () Bool)

(declare-fun array_inv!7932 (array!22671) Bool)

(assert (=> start!37626 (and (array_inv!7932 _values!506) e!233549)))

(assert (=> start!37626 tp!30950))

(assert (=> start!37626 true))

(declare-fun tp_is_empty!9393 () Bool)

(assert (=> start!37626 tp_is_empty!9393))

(declare-fun array_inv!7933 (array!22673) Bool)

(assert (=> start!37626 (array_inv!7933 _keys!658)))

(declare-fun b!384738 () Bool)

(declare-fun res!219449 () Bool)

(assert (=> b!384738 (=> (not res!219449) (not e!233548))))

(assert (=> b!384738 (= res!219449 (or (= (select (arr!10802 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10802 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!384739 () Bool)

(declare-fun res!219441 () Bool)

(assert (=> b!384739 (=> (not res!219441) (not e!233548))))

(declare-datatypes ((List!6203 0))(
  ( (Nil!6200) (Cons!6199 (h!7055 (_ BitVec 64)) (t!11361 List!6203)) )
))
(declare-fun arrayNoDuplicates!0 (array!22673 (_ BitVec 32) List!6203) Bool)

(assert (=> b!384739 (= res!219441 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6200))))

(declare-fun b!384740 () Bool)

(declare-fun res!219444 () Bool)

(assert (=> b!384740 (=> (not res!219444) (not e!233548))))

(assert (=> b!384740 (= res!219444 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11154 _keys!658))))))

(declare-fun b!384741 () Bool)

(declare-fun res!219445 () Bool)

(assert (=> b!384741 (=> (not res!219445) (not e!233550))))

(assert (=> b!384741 (= res!219445 (arrayNoDuplicates!0 lt!181237 #b00000000000000000000000000000000 Nil!6200))))

(declare-fun b!384742 () Bool)

(declare-fun e!233544 () Bool)

(assert (=> b!384742 (= e!233549 (and e!233544 mapRes!15654))))

(declare-fun condMapEmpty!15654 () Bool)

(declare-fun mapDefault!15654 () ValueCell!4353)

(assert (=> b!384742 (= condMapEmpty!15654 (= (arr!10801 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4353)) mapDefault!15654)))))

(declare-fun b!384743 () Bool)

(assert (=> b!384743 (= e!233547 tp_is_empty!9393)))

(declare-fun b!384744 () Bool)

(declare-fun res!219443 () Bool)

(assert (=> b!384744 (=> (not res!219443) (not e!233548))))

(assert (=> b!384744 (= res!219443 (and (= (size!11153 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11154 _keys!658) (size!11153 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!384745 () Bool)

(declare-fun res!219442 () Bool)

(assert (=> b!384745 (=> (not res!219442) (not e!233548))))

(declare-fun arrayContainsKey!0 (array!22673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!384745 (= res!219442 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!384746 () Bool)

(assert (=> b!384746 (= e!233544 tp_is_empty!9393)))

(declare-fun b!384747 () Bool)

(assert (=> b!384747 (= e!233545 true)))

(declare-fun lt!181233 () ListLongMap!5263)

(assert (=> b!384747 (= lt!181233 (+!983 lt!181239 lt!181242))))

(assert (=> b!384747 (= lt!181235 lt!181236)))

(declare-fun b!384748 () Bool)

(declare-fun res!219440 () Bool)

(assert (=> b!384748 (=> (not res!219440) (not e!233548))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22673 (_ BitVec 32)) Bool)

(assert (=> b!384748 (= res!219440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!15654 () Bool)

(assert (=> mapIsEmpty!15654 mapRes!15654))

(declare-fun b!384749 () Bool)

(assert (=> b!384749 (= e!233548 e!233550)))

(declare-fun res!219447 () Bool)

(assert (=> b!384749 (=> (not res!219447) (not e!233550))))

(assert (=> b!384749 (= res!219447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181237 mask!970))))

(assert (=> b!384749 (= lt!181237 (array!22674 (store (arr!10802 _keys!658) i!548 k0!778) (size!11154 _keys!658)))))

(assert (= (and start!37626 res!219439) b!384744))

(assert (= (and b!384744 res!219443) b!384748))

(assert (= (and b!384748 res!219440) b!384739))

(assert (= (and b!384739 res!219441) b!384740))

(assert (= (and b!384740 res!219444) b!384737))

(assert (= (and b!384737 res!219448) b!384738))

(assert (= (and b!384738 res!219449) b!384745))

(assert (= (and b!384745 res!219442) b!384749))

(assert (= (and b!384749 res!219447) b!384741))

(assert (= (and b!384741 res!219445) b!384736))

(assert (= (and b!384736 (not res!219446)) b!384747))

(assert (= (and b!384742 condMapEmpty!15654) mapIsEmpty!15654))

(assert (= (and b!384742 (not condMapEmpty!15654)) mapNonEmpty!15654))

(get-info :version)

(assert (= (and mapNonEmpty!15654 ((_ is ValueCellFull!4353) mapValue!15654)) b!384743))

(assert (= (and b!384742 ((_ is ValueCellFull!4353) mapDefault!15654)) b!384746))

(assert (= start!37626 b!384742))

(declare-fun m!381441 () Bool)

(assert (=> b!384748 m!381441))

(declare-fun m!381443 () Bool)

(assert (=> b!384747 m!381443))

(declare-fun m!381445 () Bool)

(assert (=> mapNonEmpty!15654 m!381445))

(declare-fun m!381447 () Bool)

(assert (=> b!384741 m!381447))

(declare-fun m!381449 () Bool)

(assert (=> b!384749 m!381449))

(declare-fun m!381451 () Bool)

(assert (=> b!384749 m!381451))

(declare-fun m!381453 () Bool)

(assert (=> b!384738 m!381453))

(declare-fun m!381455 () Bool)

(assert (=> b!384736 m!381455))

(declare-fun m!381457 () Bool)

(assert (=> b!384736 m!381457))

(declare-fun m!381459 () Bool)

(assert (=> b!384736 m!381459))

(declare-fun m!381461 () Bool)

(assert (=> b!384736 m!381461))

(declare-fun m!381463 () Bool)

(assert (=> b!384736 m!381463))

(declare-fun m!381465 () Bool)

(assert (=> b!384736 m!381465))

(declare-fun m!381467 () Bool)

(assert (=> b!384736 m!381467))

(declare-fun m!381469 () Bool)

(assert (=> b!384737 m!381469))

(declare-fun m!381471 () Bool)

(assert (=> start!37626 m!381471))

(declare-fun m!381473 () Bool)

(assert (=> start!37626 m!381473))

(declare-fun m!381475 () Bool)

(assert (=> start!37626 m!381475))

(declare-fun m!381477 () Bool)

(assert (=> b!384739 m!381477))

(declare-fun m!381479 () Bool)

(assert (=> b!384745 m!381479))

(check-sat (not b!384741) (not b_next!8745) (not mapNonEmpty!15654) (not b!384749) (not start!37626) b_and!16005 tp_is_empty!9393 (not b!384745) (not b!384747) (not b!384748) (not b!384739) (not b!384736) (not b!384737))
(check-sat b_and!16005 (not b_next!8745))
