; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37638 () Bool)

(assert start!37638)

(declare-fun b_free!8757 () Bool)

(declare-fun b_next!8757 () Bool)

(assert (=> start!37638 (= b_free!8757 (not b_next!8757))))

(declare-fun tp!30987 () Bool)

(declare-fun b_and!16017 () Bool)

(assert (=> start!37638 (= tp!30987 b_and!16017)))

(declare-fun b!384988 () Bool)

(declare-fun res!219641 () Bool)

(declare-fun e!233675 () Bool)

(assert (=> b!384988 (=> (not res!219641) (not e!233675))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384988 (= res!219641 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!15672 () Bool)

(declare-fun mapRes!15672 () Bool)

(declare-fun tp!30986 () Bool)

(declare-fun e!233672 () Bool)

(assert (=> mapNonEmpty!15672 (= mapRes!15672 (and tp!30986 e!233672))))

(declare-datatypes ((V!13645 0))(
  ( (V!13646 (val!4747 Int)) )
))
(declare-datatypes ((ValueCell!4359 0))(
  ( (ValueCellFull!4359 (v!6940 V!13645)) (EmptyCell!4359) )
))
(declare-fun mapRest!15672 () (Array (_ BitVec 32) ValueCell!4359))

(declare-datatypes ((array!22695 0))(
  ( (array!22696 (arr!10813 (Array (_ BitVec 32) ValueCell!4359)) (size!11165 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22695)

(declare-fun mapKey!15672 () (_ BitVec 32))

(declare-fun mapValue!15672 () ValueCell!4359)

(assert (=> mapNonEmpty!15672 (= (arr!10813 _values!506) (store mapRest!15672 mapKey!15672 mapValue!15672))))

(declare-fun b!384989 () Bool)

(declare-fun res!219646 () Bool)

(assert (=> b!384989 (=> (not res!219646) (not e!233675))))

(declare-datatypes ((array!22697 0))(
  ( (array!22698 (arr!10814 (Array (_ BitVec 32) (_ BitVec 64))) (size!11166 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22697)

(declare-fun arrayContainsKey!0 (array!22697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!384989 (= res!219646 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!384990 () Bool)

(declare-fun e!233674 () Bool)

(declare-fun e!233673 () Bool)

(assert (=> b!384990 (= e!233674 (and e!233673 mapRes!15672))))

(declare-fun condMapEmpty!15672 () Bool)

(declare-fun mapDefault!15672 () ValueCell!4359)

(assert (=> b!384990 (= condMapEmpty!15672 (= (arr!10813 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4359)) mapDefault!15672)))))

(declare-fun b!384991 () Bool)

(declare-fun res!219647 () Bool)

(assert (=> b!384991 (=> (not res!219647) (not e!233675))))

(declare-datatypes ((List!6213 0))(
  ( (Nil!6210) (Cons!6209 (h!7065 (_ BitVec 64)) (t!11371 List!6213)) )
))
(declare-fun arrayNoDuplicates!0 (array!22697 (_ BitVec 32) List!6213) Bool)

(assert (=> b!384991 (= res!219647 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6210))))

(declare-fun res!219644 () Bool)

(assert (=> start!37638 (=> (not res!219644) (not e!233675))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37638 (= res!219644 (validMask!0 mask!970))))

(assert (=> start!37638 e!233675))

(declare-fun array_inv!7942 (array!22695) Bool)

(assert (=> start!37638 (and (array_inv!7942 _values!506) e!233674)))

(assert (=> start!37638 tp!30987))

(assert (=> start!37638 true))

(declare-fun tp_is_empty!9405 () Bool)

(assert (=> start!37638 tp_is_empty!9405))

(declare-fun array_inv!7943 (array!22697) Bool)

(assert (=> start!37638 (array_inv!7943 _keys!658)))

(declare-fun b!384992 () Bool)

(declare-fun e!233670 () Bool)

(assert (=> b!384992 (= e!233670 true)))

(declare-datatypes ((tuple2!6346 0))(
  ( (tuple2!6347 (_1!3183 (_ BitVec 64)) (_2!3183 V!13645)) )
))
(declare-datatypes ((List!6214 0))(
  ( (Nil!6211) (Cons!6210 (h!7066 tuple2!6346) (t!11372 List!6214)) )
))
(declare-datatypes ((ListLongMap!5273 0))(
  ( (ListLongMap!5274 (toList!2652 List!6214)) )
))
(declare-fun lt!181431 () ListLongMap!5273)

(declare-fun lt!181438 () ListLongMap!5273)

(declare-fun lt!181433 () tuple2!6346)

(declare-fun +!988 (ListLongMap!5273 tuple2!6346) ListLongMap!5273)

(assert (=> b!384992 (= lt!181431 (+!988 lt!181438 lt!181433))))

(declare-fun lt!181437 () ListLongMap!5273)

(declare-fun lt!181441 () ListLongMap!5273)

(assert (=> b!384992 (= lt!181437 lt!181441)))

(declare-fun mapIsEmpty!15672 () Bool)

(assert (=> mapIsEmpty!15672 mapRes!15672))

(declare-fun b!384993 () Bool)

(declare-fun e!233676 () Bool)

(assert (=> b!384993 (= e!233675 e!233676)))

(declare-fun res!219643 () Bool)

(assert (=> b!384993 (=> (not res!219643) (not e!233676))))

(declare-fun lt!181439 () array!22697)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22697 (_ BitVec 32)) Bool)

(assert (=> b!384993 (= res!219643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181439 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!384993 (= lt!181439 (array!22698 (store (arr!10814 _keys!658) i!548 k0!778) (size!11166 _keys!658)))))

(declare-fun b!384994 () Bool)

(assert (=> b!384994 (= e!233676 (not e!233670))))

(declare-fun res!219638 () Bool)

(assert (=> b!384994 (=> res!219638 e!233670)))

(declare-fun lt!181440 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!384994 (= res!219638 (or (and (not lt!181440) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!181440) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!181440)))))

(assert (=> b!384994 (= lt!181440 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun zeroValue!472 () V!13645)

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13645)

(declare-fun getCurrentListMap!2068 (array!22697 array!22695 (_ BitVec 32) (_ BitVec 32) V!13645 V!13645 (_ BitVec 32) Int) ListLongMap!5273)

(assert (=> b!384994 (= lt!181438 (getCurrentListMap!2068 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181434 () array!22695)

(assert (=> b!384994 (= lt!181437 (getCurrentListMap!2068 lt!181439 lt!181434 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181432 () ListLongMap!5273)

(assert (=> b!384994 (and (= lt!181441 lt!181432) (= lt!181432 lt!181441))))

(declare-fun lt!181436 () ListLongMap!5273)

(assert (=> b!384994 (= lt!181432 (+!988 lt!181436 lt!181433))))

(declare-fun v!373 () V!13645)

(assert (=> b!384994 (= lt!181433 (tuple2!6347 k0!778 v!373))))

(declare-datatypes ((Unit!11865 0))(
  ( (Unit!11866) )
))
(declare-fun lt!181435 () Unit!11865)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!219 (array!22697 array!22695 (_ BitVec 32) (_ BitVec 32) V!13645 V!13645 (_ BitVec 32) (_ BitVec 64) V!13645 (_ BitVec 32) Int) Unit!11865)

(assert (=> b!384994 (= lt!181435 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!219 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!886 (array!22697 array!22695 (_ BitVec 32) (_ BitVec 32) V!13645 V!13645 (_ BitVec 32) Int) ListLongMap!5273)

(assert (=> b!384994 (= lt!181441 (getCurrentListMapNoExtraKeys!886 lt!181439 lt!181434 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384994 (= lt!181434 (array!22696 (store (arr!10813 _values!506) i!548 (ValueCellFull!4359 v!373)) (size!11165 _values!506)))))

(assert (=> b!384994 (= lt!181436 (getCurrentListMapNoExtraKeys!886 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!384995 () Bool)

(declare-fun res!219637 () Bool)

(assert (=> b!384995 (=> (not res!219637) (not e!233675))))

(assert (=> b!384995 (= res!219637 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11166 _keys!658))))))

(declare-fun b!384996 () Bool)

(assert (=> b!384996 (= e!233673 tp_is_empty!9405)))

(declare-fun b!384997 () Bool)

(assert (=> b!384997 (= e!233672 tp_is_empty!9405)))

(declare-fun b!384998 () Bool)

(declare-fun res!219639 () Bool)

(assert (=> b!384998 (=> (not res!219639) (not e!233675))))

(assert (=> b!384998 (= res!219639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!384999 () Bool)

(declare-fun res!219640 () Bool)

(assert (=> b!384999 (=> (not res!219640) (not e!233675))))

(assert (=> b!384999 (= res!219640 (or (= (select (arr!10814 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10814 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!385000 () Bool)

(declare-fun res!219642 () Bool)

(assert (=> b!385000 (=> (not res!219642) (not e!233675))))

(assert (=> b!385000 (= res!219642 (and (= (size!11165 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11166 _keys!658) (size!11165 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!385001 () Bool)

(declare-fun res!219645 () Bool)

(assert (=> b!385001 (=> (not res!219645) (not e!233676))))

(assert (=> b!385001 (= res!219645 (arrayNoDuplicates!0 lt!181439 #b00000000000000000000000000000000 Nil!6210))))

(assert (= (and start!37638 res!219644) b!385000))

(assert (= (and b!385000 res!219642) b!384998))

(assert (= (and b!384998 res!219639) b!384991))

(assert (= (and b!384991 res!219647) b!384995))

(assert (= (and b!384995 res!219637) b!384988))

(assert (= (and b!384988 res!219641) b!384999))

(assert (= (and b!384999 res!219640) b!384989))

(assert (= (and b!384989 res!219646) b!384993))

(assert (= (and b!384993 res!219643) b!385001))

(assert (= (and b!385001 res!219645) b!384994))

(assert (= (and b!384994 (not res!219638)) b!384992))

(assert (= (and b!384990 condMapEmpty!15672) mapIsEmpty!15672))

(assert (= (and b!384990 (not condMapEmpty!15672)) mapNonEmpty!15672))

(get-info :version)

(assert (= (and mapNonEmpty!15672 ((_ is ValueCellFull!4359) mapValue!15672)) b!384997))

(assert (= (and b!384990 ((_ is ValueCellFull!4359) mapDefault!15672)) b!384996))

(assert (= start!37638 b!384990))

(declare-fun m!381681 () Bool)

(assert (=> b!384993 m!381681))

(declare-fun m!381683 () Bool)

(assert (=> b!384993 m!381683))

(declare-fun m!381685 () Bool)

(assert (=> b!384991 m!381685))

(declare-fun m!381687 () Bool)

(assert (=> b!384999 m!381687))

(declare-fun m!381689 () Bool)

(assert (=> b!384998 m!381689))

(declare-fun m!381691 () Bool)

(assert (=> b!385001 m!381691))

(declare-fun m!381693 () Bool)

(assert (=> start!37638 m!381693))

(declare-fun m!381695 () Bool)

(assert (=> start!37638 m!381695))

(declare-fun m!381697 () Bool)

(assert (=> start!37638 m!381697))

(declare-fun m!381699 () Bool)

(assert (=> mapNonEmpty!15672 m!381699))

(declare-fun m!381701 () Bool)

(assert (=> b!384992 m!381701))

(declare-fun m!381703 () Bool)

(assert (=> b!384989 m!381703))

(declare-fun m!381705 () Bool)

(assert (=> b!384994 m!381705))

(declare-fun m!381707 () Bool)

(assert (=> b!384994 m!381707))

(declare-fun m!381709 () Bool)

(assert (=> b!384994 m!381709))

(declare-fun m!381711 () Bool)

(assert (=> b!384994 m!381711))

(declare-fun m!381713 () Bool)

(assert (=> b!384994 m!381713))

(declare-fun m!381715 () Bool)

(assert (=> b!384994 m!381715))

(declare-fun m!381717 () Bool)

(assert (=> b!384994 m!381717))

(declare-fun m!381719 () Bool)

(assert (=> b!384988 m!381719))

(check-sat (not b!384994) (not b!385001) tp_is_empty!9405 (not start!37638) (not b!384988) b_and!16017 (not b!384992) (not b!384991) (not b!384998) (not b!384993) (not b_next!8757) (not b!384989) (not mapNonEmpty!15672))
(check-sat b_and!16017 (not b_next!8757))
