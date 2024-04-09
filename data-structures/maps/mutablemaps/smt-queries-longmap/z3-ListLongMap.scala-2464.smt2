; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38612 () Bool)

(assert start!38612)

(declare-fun b_free!9141 () Bool)

(declare-fun b_next!9141 () Bool)

(assert (=> start!38612 (= b_free!9141 (not b_next!9141))))

(declare-fun tp!32546 () Bool)

(declare-fun b_and!16545 () Bool)

(assert (=> start!38612 (= tp!32546 b_and!16545)))

(declare-fun b!399859 () Bool)

(declare-fun res!230070 () Bool)

(declare-fun e!241379 () Bool)

(assert (=> b!399859 (=> (not res!230070) (not e!241379))))

(declare-datatypes ((array!23925 0))(
  ( (array!23926 (arr!11409 (Array (_ BitVec 32) (_ BitVec 64))) (size!11761 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23925)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!399859 (= res!230070 (or (= (select (arr!11409 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11409 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((V!14469 0))(
  ( (V!14470 (val!5056 Int)) )
))
(declare-datatypes ((tuple2!6634 0))(
  ( (tuple2!6635 (_1!3327 (_ BitVec 64)) (_2!3327 V!14469)) )
))
(declare-datatypes ((List!6588 0))(
  ( (Nil!6585) (Cons!6584 (h!7440 tuple2!6634) (t!11770 List!6588)) )
))
(declare-datatypes ((ListLongMap!5561 0))(
  ( (ListLongMap!5562 (toList!2796 List!6588)) )
))
(declare-fun call!28084 () ListLongMap!5561)

(declare-fun bm!28081 () Bool)

(declare-fun minValue!515 () V!14469)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4668 0))(
  ( (ValueCellFull!4668 (v!7299 V!14469)) (EmptyCell!4668) )
))
(declare-datatypes ((array!23927 0))(
  ( (array!23928 (arr!11410 (Array (_ BitVec 32) ValueCell!4668)) (size!11762 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23927)

(declare-fun zeroValue!515 () V!14469)

(declare-fun lt!187611 () array!23925)

(declare-fun c!54593 () Bool)

(declare-fun v!412 () V!14469)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1012 (array!23925 array!23927 (_ BitVec 32) (_ BitVec 32) V!14469 V!14469 (_ BitVec 32) Int) ListLongMap!5561)

(assert (=> bm!28081 (= call!28084 (getCurrentListMapNoExtraKeys!1012 (ite c!54593 _keys!709 lt!187611) (ite c!54593 _values!549 (array!23928 (store (arr!11410 _values!549) i!563 (ValueCellFull!4668 v!412)) (size!11762 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399860 () Bool)

(declare-fun e!241377 () Bool)

(assert (=> b!399860 (= e!241377 (not true))))

(declare-fun e!241375 () Bool)

(assert (=> b!399860 e!241375))

(assert (=> b!399860 (= c!54593 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12073 0))(
  ( (Unit!12074) )
))
(declare-fun lt!187610 () Unit!12073)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!299 (array!23925 array!23927 (_ BitVec 32) (_ BitVec 32) V!14469 V!14469 (_ BitVec 32) (_ BitVec 64) V!14469 (_ BitVec 32) Int) Unit!12073)

(assert (=> b!399860 (= lt!187610 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!299 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399861 () Bool)

(declare-fun res!230069 () Bool)

(assert (=> b!399861 (=> (not res!230069) (not e!241377))))

(declare-datatypes ((List!6589 0))(
  ( (Nil!6586) (Cons!6585 (h!7441 (_ BitVec 64)) (t!11771 List!6589)) )
))
(declare-fun arrayNoDuplicates!0 (array!23925 (_ BitVec 32) List!6589) Bool)

(assert (=> b!399861 (= res!230069 (arrayNoDuplicates!0 lt!187611 #b00000000000000000000000000000000 Nil!6586))))

(declare-fun b!399862 () Bool)

(declare-fun res!230073 () Bool)

(assert (=> b!399862 (=> (not res!230073) (not e!241379))))

(assert (=> b!399862 (= res!230073 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6586))))

(declare-fun b!399864 () Bool)

(declare-fun call!28085 () ListLongMap!5561)

(declare-fun +!1086 (ListLongMap!5561 tuple2!6634) ListLongMap!5561)

(assert (=> b!399864 (= e!241375 (= call!28085 (+!1086 call!28084 (tuple2!6635 k0!794 v!412))))))

(declare-fun b!399865 () Bool)

(declare-fun res!230067 () Bool)

(assert (=> b!399865 (=> (not res!230067) (not e!241379))))

(declare-fun arrayContainsKey!0 (array!23925 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!399865 (= res!230067 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!399866 () Bool)

(declare-fun res!230076 () Bool)

(assert (=> b!399866 (=> (not res!230076) (not e!241379))))

(assert (=> b!399866 (= res!230076 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11761 _keys!709))))))

(declare-fun b!399867 () Bool)

(declare-fun res!230066 () Bool)

(assert (=> b!399867 (=> (not res!230066) (not e!241379))))

(assert (=> b!399867 (= res!230066 (and (= (size!11762 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11761 _keys!709) (size!11762 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!399868 () Bool)

(declare-fun res!230072 () Bool)

(assert (=> b!399868 (=> (not res!230072) (not e!241379))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!399868 (= res!230072 (validKeyInArray!0 k0!794))))

(declare-fun b!399869 () Bool)

(declare-fun res!230065 () Bool)

(assert (=> b!399869 (=> (not res!230065) (not e!241379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23925 (_ BitVec 32)) Bool)

(assert (=> b!399869 (= res!230065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!399870 () Bool)

(assert (=> b!399870 (= e!241375 (= call!28084 call!28085))))

(declare-fun b!399871 () Bool)

(declare-fun e!241376 () Bool)

(declare-fun tp_is_empty!10023 () Bool)

(assert (=> b!399871 (= e!241376 tp_is_empty!10023)))

(declare-fun res!230074 () Bool)

(assert (=> start!38612 (=> (not res!230074) (not e!241379))))

(assert (=> start!38612 (= res!230074 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11761 _keys!709))))))

(assert (=> start!38612 e!241379))

(assert (=> start!38612 tp_is_empty!10023))

(assert (=> start!38612 tp!32546))

(assert (=> start!38612 true))

(declare-fun e!241380 () Bool)

(declare-fun array_inv!8350 (array!23927) Bool)

(assert (=> start!38612 (and (array_inv!8350 _values!549) e!241380)))

(declare-fun array_inv!8351 (array!23925) Bool)

(assert (=> start!38612 (array_inv!8351 _keys!709)))

(declare-fun b!399863 () Bool)

(declare-fun res!230071 () Bool)

(assert (=> b!399863 (=> (not res!230071) (not e!241379))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!399863 (= res!230071 (validMask!0 mask!1025))))

(declare-fun b!399872 () Bool)

(assert (=> b!399872 (= e!241379 e!241377)))

(declare-fun res!230075 () Bool)

(assert (=> b!399872 (=> (not res!230075) (not e!241377))))

(assert (=> b!399872 (= res!230075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187611 mask!1025))))

(assert (=> b!399872 (= lt!187611 (array!23926 (store (arr!11409 _keys!709) i!563 k0!794) (size!11761 _keys!709)))))

(declare-fun b!399873 () Bool)

(declare-fun res!230068 () Bool)

(assert (=> b!399873 (=> (not res!230068) (not e!241377))))

(assert (=> b!399873 (= res!230068 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11761 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16656 () Bool)

(declare-fun mapRes!16656 () Bool)

(assert (=> mapIsEmpty!16656 mapRes!16656))

(declare-fun mapNonEmpty!16656 () Bool)

(declare-fun tp!32547 () Bool)

(declare-fun e!241381 () Bool)

(assert (=> mapNonEmpty!16656 (= mapRes!16656 (and tp!32547 e!241381))))

(declare-fun mapRest!16656 () (Array (_ BitVec 32) ValueCell!4668))

(declare-fun mapKey!16656 () (_ BitVec 32))

(declare-fun mapValue!16656 () ValueCell!4668)

(assert (=> mapNonEmpty!16656 (= (arr!11410 _values!549) (store mapRest!16656 mapKey!16656 mapValue!16656))))

(declare-fun b!399874 () Bool)

(assert (=> b!399874 (= e!241381 tp_is_empty!10023)))

(declare-fun b!399875 () Bool)

(assert (=> b!399875 (= e!241380 (and e!241376 mapRes!16656))))

(declare-fun condMapEmpty!16656 () Bool)

(declare-fun mapDefault!16656 () ValueCell!4668)

(assert (=> b!399875 (= condMapEmpty!16656 (= (arr!11410 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4668)) mapDefault!16656)))))

(declare-fun bm!28082 () Bool)

(assert (=> bm!28082 (= call!28085 (getCurrentListMapNoExtraKeys!1012 (ite c!54593 lt!187611 _keys!709) (ite c!54593 (array!23928 (store (arr!11410 _values!549) i!563 (ValueCellFull!4668 v!412)) (size!11762 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!38612 res!230074) b!399863))

(assert (= (and b!399863 res!230071) b!399867))

(assert (= (and b!399867 res!230066) b!399869))

(assert (= (and b!399869 res!230065) b!399862))

(assert (= (and b!399862 res!230073) b!399866))

(assert (= (and b!399866 res!230076) b!399868))

(assert (= (and b!399868 res!230072) b!399859))

(assert (= (and b!399859 res!230070) b!399865))

(assert (= (and b!399865 res!230067) b!399872))

(assert (= (and b!399872 res!230075) b!399861))

(assert (= (and b!399861 res!230069) b!399873))

(assert (= (and b!399873 res!230068) b!399860))

(assert (= (and b!399860 c!54593) b!399864))

(assert (= (and b!399860 (not c!54593)) b!399870))

(assert (= (or b!399864 b!399870) bm!28082))

(assert (= (or b!399864 b!399870) bm!28081))

(assert (= (and b!399875 condMapEmpty!16656) mapIsEmpty!16656))

(assert (= (and b!399875 (not condMapEmpty!16656)) mapNonEmpty!16656))

(get-info :version)

(assert (= (and mapNonEmpty!16656 ((_ is ValueCellFull!4668) mapValue!16656)) b!399874))

(assert (= (and b!399875 ((_ is ValueCellFull!4668) mapDefault!16656)) b!399871))

(assert (= start!38612 b!399875))

(declare-fun m!394219 () Bool)

(assert (=> b!399859 m!394219))

(declare-fun m!394221 () Bool)

(assert (=> start!38612 m!394221))

(declare-fun m!394223 () Bool)

(assert (=> start!38612 m!394223))

(declare-fun m!394225 () Bool)

(assert (=> b!399860 m!394225))

(declare-fun m!394227 () Bool)

(assert (=> b!399872 m!394227))

(declare-fun m!394229 () Bool)

(assert (=> b!399872 m!394229))

(declare-fun m!394231 () Bool)

(assert (=> b!399863 m!394231))

(declare-fun m!394233 () Bool)

(assert (=> b!399865 m!394233))

(declare-fun m!394235 () Bool)

(assert (=> mapNonEmpty!16656 m!394235))

(declare-fun m!394237 () Bool)

(assert (=> b!399862 m!394237))

(declare-fun m!394239 () Bool)

(assert (=> b!399868 m!394239))

(declare-fun m!394241 () Bool)

(assert (=> b!399864 m!394241))

(declare-fun m!394243 () Bool)

(assert (=> b!399861 m!394243))

(declare-fun m!394245 () Bool)

(assert (=> bm!28081 m!394245))

(declare-fun m!394247 () Bool)

(assert (=> bm!28081 m!394247))

(assert (=> bm!28082 m!394245))

(declare-fun m!394249 () Bool)

(assert (=> bm!28082 m!394249))

(declare-fun m!394251 () Bool)

(assert (=> b!399869 m!394251))

(check-sat (not b!399862) (not b!399860) b_and!16545 tp_is_empty!10023 (not b!399864) (not b!399865) (not b!399869) (not bm!28082) (not start!38612) (not b!399863) (not b_next!9141) (not b!399868) (not b!399872) (not b!399861) (not mapNonEmpty!16656) (not bm!28081))
(check-sat b_and!16545 (not b_next!9141))
