; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38582 () Bool)

(assert start!38582)

(declare-fun b_free!9111 () Bool)

(declare-fun b_next!9111 () Bool)

(assert (=> start!38582 (= b_free!9111 (not b_next!9111))))

(declare-fun tp!32457 () Bool)

(declare-fun b_and!16515 () Bool)

(assert (=> start!38582 (= tp!32457 b_and!16515)))

(declare-fun b!399094 () Bool)

(declare-fun e!241065 () Bool)

(declare-fun e!241066 () Bool)

(declare-fun mapRes!16611 () Bool)

(assert (=> b!399094 (= e!241065 (and e!241066 mapRes!16611))))

(declare-fun condMapEmpty!16611 () Bool)

(declare-datatypes ((V!14429 0))(
  ( (V!14430 (val!5041 Int)) )
))
(declare-datatypes ((ValueCell!4653 0))(
  ( (ValueCellFull!4653 (v!7284 V!14429)) (EmptyCell!4653) )
))
(declare-datatypes ((array!23865 0))(
  ( (array!23866 (arr!11379 (Array (_ BitVec 32) ValueCell!4653)) (size!11731 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23865)

(declare-fun mapDefault!16611 () ValueCell!4653)

(assert (=> b!399094 (= condMapEmpty!16611 (= (arr!11379 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4653)) mapDefault!16611)))))

(declare-fun minValue!515 () V!14429)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!6606 0))(
  ( (tuple2!6607 (_1!3313 (_ BitVec 64)) (_2!3313 V!14429)) )
))
(declare-datatypes ((List!6561 0))(
  ( (Nil!6558) (Cons!6557 (h!7413 tuple2!6606) (t!11743 List!6561)) )
))
(declare-datatypes ((ListLongMap!5533 0))(
  ( (ListLongMap!5534 (toList!2782 List!6561)) )
))
(declare-fun call!27994 () ListLongMap!5533)

(declare-fun zeroValue!515 () V!14429)

(declare-fun c!54548 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!23867 0))(
  ( (array!23868 (arr!11380 (Array (_ BitVec 32) (_ BitVec 64))) (size!11732 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23867)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lt!187520 () array!23867)

(declare-fun bm!27991 () Bool)

(declare-fun v!412 () V!14429)

(declare-fun getCurrentListMapNoExtraKeys!999 (array!23867 array!23865 (_ BitVec 32) (_ BitVec 32) V!14429 V!14429 (_ BitVec 32) Int) ListLongMap!5533)

(assert (=> bm!27991 (= call!27994 (getCurrentListMapNoExtraKeys!999 (ite c!54548 _keys!709 lt!187520) (ite c!54548 _values!549 (array!23866 (store (arr!11379 _values!549) i!563 (ValueCellFull!4653 v!412)) (size!11731 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399095 () Bool)

(declare-fun res!229532 () Bool)

(declare-fun e!241061 () Bool)

(assert (=> b!399095 (=> (not res!229532) (not e!241061))))

(assert (=> b!399095 (= res!229532 (and (= (size!11731 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11732 _keys!709) (size!11731 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!399096 () Bool)

(declare-fun res!229533 () Bool)

(assert (=> b!399096 (=> (not res!229533) (not e!241061))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!399096 (= res!229533 (validKeyInArray!0 k0!794))))

(declare-fun b!399097 () Bool)

(declare-fun res!229530 () Bool)

(assert (=> b!399097 (=> (not res!229530) (not e!241061))))

(declare-datatypes ((List!6562 0))(
  ( (Nil!6559) (Cons!6558 (h!7414 (_ BitVec 64)) (t!11744 List!6562)) )
))
(declare-fun arrayNoDuplicates!0 (array!23867 (_ BitVec 32) List!6562) Bool)

(assert (=> b!399097 (= res!229530 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6559))))

(declare-fun b!399098 () Bool)

(declare-fun res!229528 () Bool)

(assert (=> b!399098 (=> (not res!229528) (not e!241061))))

(assert (=> b!399098 (= res!229528 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11732 _keys!709))))))

(declare-fun b!399099 () Bool)

(declare-fun e!241063 () Bool)

(assert (=> b!399099 (= e!241061 e!241063)))

(declare-fun res!229529 () Bool)

(assert (=> b!399099 (=> (not res!229529) (not e!241063))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23867 (_ BitVec 32)) Bool)

(assert (=> b!399099 (= res!229529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187520 mask!1025))))

(assert (=> b!399099 (= lt!187520 (array!23868 (store (arr!11380 _keys!709) i!563 k0!794) (size!11732 _keys!709)))))

(declare-fun res!229534 () Bool)

(assert (=> start!38582 (=> (not res!229534) (not e!241061))))

(assert (=> start!38582 (= res!229534 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11732 _keys!709))))))

(assert (=> start!38582 e!241061))

(declare-fun tp_is_empty!9993 () Bool)

(assert (=> start!38582 tp_is_empty!9993))

(assert (=> start!38582 tp!32457))

(assert (=> start!38582 true))

(declare-fun array_inv!8328 (array!23865) Bool)

(assert (=> start!38582 (and (array_inv!8328 _values!549) e!241065)))

(declare-fun array_inv!8329 (array!23867) Bool)

(assert (=> start!38582 (array_inv!8329 _keys!709)))

(declare-fun b!399100 () Bool)

(declare-fun res!229525 () Bool)

(assert (=> b!399100 (=> (not res!229525) (not e!241061))))

(assert (=> b!399100 (= res!229525 (or (= (select (arr!11380 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11380 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!399101 () Bool)

(declare-fun e!241060 () Bool)

(assert (=> b!399101 (= e!241060 tp_is_empty!9993)))

(declare-fun b!399102 () Bool)

(assert (=> b!399102 (= e!241066 tp_is_empty!9993)))

(declare-fun mapNonEmpty!16611 () Bool)

(declare-fun tp!32456 () Bool)

(assert (=> mapNonEmpty!16611 (= mapRes!16611 (and tp!32456 e!241060))))

(declare-fun mapValue!16611 () ValueCell!4653)

(declare-fun mapKey!16611 () (_ BitVec 32))

(declare-fun mapRest!16611 () (Array (_ BitVec 32) ValueCell!4653))

(assert (=> mapNonEmpty!16611 (= (arr!11379 _values!549) (store mapRest!16611 mapKey!16611 mapValue!16611))))

(declare-fun b!399103 () Bool)

(declare-fun res!229526 () Bool)

(assert (=> b!399103 (=> (not res!229526) (not e!241061))))

(assert (=> b!399103 (= res!229526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!399104 () Bool)

(declare-fun res!229536 () Bool)

(assert (=> b!399104 (=> (not res!229536) (not e!241063))))

(assert (=> b!399104 (= res!229536 (arrayNoDuplicates!0 lt!187520 #b00000000000000000000000000000000 Nil!6559))))

(declare-fun b!399105 () Bool)

(assert (=> b!399105 (= e!241063 (not true))))

(declare-fun e!241062 () Bool)

(assert (=> b!399105 e!241062))

(assert (=> b!399105 (= c!54548 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12053 0))(
  ( (Unit!12054) )
))
(declare-fun lt!187521 () Unit!12053)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!289 (array!23867 array!23865 (_ BitVec 32) (_ BitVec 32) V!14429 V!14429 (_ BitVec 32) (_ BitVec 64) V!14429 (_ BitVec 32) Int) Unit!12053)

(assert (=> b!399105 (= lt!187521 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!289 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399106 () Bool)

(declare-fun call!27995 () ListLongMap!5533)

(assert (=> b!399106 (= e!241062 (= call!27994 call!27995))))

(declare-fun b!399107 () Bool)

(declare-fun res!229531 () Bool)

(assert (=> b!399107 (=> (not res!229531) (not e!241063))))

(assert (=> b!399107 (= res!229531 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11732 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16611 () Bool)

(assert (=> mapIsEmpty!16611 mapRes!16611))

(declare-fun b!399108 () Bool)

(declare-fun +!1075 (ListLongMap!5533 tuple2!6606) ListLongMap!5533)

(assert (=> b!399108 (= e!241062 (= call!27995 (+!1075 call!27994 (tuple2!6607 k0!794 v!412))))))

(declare-fun bm!27992 () Bool)

(assert (=> bm!27992 (= call!27995 (getCurrentListMapNoExtraKeys!999 (ite c!54548 lt!187520 _keys!709) (ite c!54548 (array!23866 (store (arr!11379 _values!549) i!563 (ValueCellFull!4653 v!412)) (size!11731 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399109 () Bool)

(declare-fun res!229527 () Bool)

(assert (=> b!399109 (=> (not res!229527) (not e!241061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!399109 (= res!229527 (validMask!0 mask!1025))))

(declare-fun b!399110 () Bool)

(declare-fun res!229535 () Bool)

(assert (=> b!399110 (=> (not res!229535) (not e!241061))))

(declare-fun arrayContainsKey!0 (array!23867 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!399110 (= res!229535 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!38582 res!229534) b!399109))

(assert (= (and b!399109 res!229527) b!399095))

(assert (= (and b!399095 res!229532) b!399103))

(assert (= (and b!399103 res!229526) b!399097))

(assert (= (and b!399097 res!229530) b!399098))

(assert (= (and b!399098 res!229528) b!399096))

(assert (= (and b!399096 res!229533) b!399100))

(assert (= (and b!399100 res!229525) b!399110))

(assert (= (and b!399110 res!229535) b!399099))

(assert (= (and b!399099 res!229529) b!399104))

(assert (= (and b!399104 res!229536) b!399107))

(assert (= (and b!399107 res!229531) b!399105))

(assert (= (and b!399105 c!54548) b!399108))

(assert (= (and b!399105 (not c!54548)) b!399106))

(assert (= (or b!399108 b!399106) bm!27992))

(assert (= (or b!399108 b!399106) bm!27991))

(assert (= (and b!399094 condMapEmpty!16611) mapIsEmpty!16611))

(assert (= (and b!399094 (not condMapEmpty!16611)) mapNonEmpty!16611))

(get-info :version)

(assert (= (and mapNonEmpty!16611 ((_ is ValueCellFull!4653) mapValue!16611)) b!399101))

(assert (= (and b!399094 ((_ is ValueCellFull!4653) mapDefault!16611)) b!399102))

(assert (= start!38582 b!399094))

(declare-fun m!393709 () Bool)

(assert (=> b!399096 m!393709))

(declare-fun m!393711 () Bool)

(assert (=> mapNonEmpty!16611 m!393711))

(declare-fun m!393713 () Bool)

(assert (=> b!399110 m!393713))

(declare-fun m!393715 () Bool)

(assert (=> bm!27992 m!393715))

(declare-fun m!393717 () Bool)

(assert (=> bm!27992 m!393717))

(declare-fun m!393719 () Bool)

(assert (=> b!399097 m!393719))

(declare-fun m!393721 () Bool)

(assert (=> start!38582 m!393721))

(declare-fun m!393723 () Bool)

(assert (=> start!38582 m!393723))

(assert (=> bm!27991 m!393715))

(declare-fun m!393725 () Bool)

(assert (=> bm!27991 m!393725))

(declare-fun m!393727 () Bool)

(assert (=> b!399109 m!393727))

(declare-fun m!393729 () Bool)

(assert (=> b!399104 m!393729))

(declare-fun m!393731 () Bool)

(assert (=> b!399099 m!393731))

(declare-fun m!393733 () Bool)

(assert (=> b!399099 m!393733))

(declare-fun m!393735 () Bool)

(assert (=> b!399105 m!393735))

(declare-fun m!393737 () Bool)

(assert (=> b!399103 m!393737))

(declare-fun m!393739 () Bool)

(assert (=> b!399108 m!393739))

(declare-fun m!393741 () Bool)

(assert (=> b!399100 m!393741))

(check-sat (not b!399099) (not b!399105) (not b!399096) (not b!399103) (not bm!27991) b_and!16515 (not b!399097) (not b!399104) (not start!38582) tp_is_empty!9993 (not mapNonEmpty!16611) (not b!399110) (not b_next!9111) (not b!399108) (not bm!27992) (not b!399109))
(check-sat b_and!16515 (not b_next!9111))
